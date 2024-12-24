.segment "BANK_02"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x008010-0x00C00F



.export ofs_028_0x008010_18
.export ofs_028_0x008013_0E
.export ofs_028_0x008016_10
.export ofs_028_0x008019_2D
.export ofs_028_0x00801C_2E
.export ofs_028_0x00801F_2F



ofs_028_0x008010_18:
; bzk optimize
- - - - - - 0x008010 02:8000: 4C 6B AA  JMP loc_AA6B



ofs_028_0x008013_0E:
; bzk optimize
C - - J - - 0x008013 02:8003: 4C 8B B0  JMP loc_B08B



ofs_028_0x008016_10:
; bzk optimize
C - - J - - 0x008016 02:8006: 4C 29 B4  JMP loc_B429



ofs_028_0x008019_2D:
; bzk optimize
C - - J - - 0x008019 02:8009: 4C 3D B5  JMP loc_B53D



ofs_028_0x00801C_2E:
; bzk optimize
C - - J - - 0x00801C 02:800C: 4C CE B6  JMP loc_B6CE



ofs_028_0x00801F_2F:
; bzk optimize
C - - J - - 0x00801F 02:800F: 4C 5D BB  JMP loc_BB5D


; bzk garbage
- - - - - - 0x008022 02:8012: 24        .byte $24   ; 
- - - - - - 0x008023 02:8013: 80        .byte $80   ; 



; не перемещать 8014-8022
- D 0 - - - 0x008024 02:8014: 24 80     .word off_8024_00
- - - - - - 0x008026 02:8016: 34 80     .word off_8034_01
- - - - - - 0x008028 02:8018: 34 80     .word off_8034_02
- - - - - - 0x00802A 02:801A: 34 80     .word off_8034_03

- D 0 - - - 0x00802C 02:801C: 44 80     .word off_8044_00
- - - - - - 0x00802E 02:801E: 54 80     .word off_8054_01
- - - - - - 0x008030 02:8020: 54 80     .word off_8054_02
- - - - - - 0x008032 02:8022: 54 80     .word off_8054_03



off_8024_00:
- D 0 - I - 0x008034 02:8024: 64 80     .word off_8064_00
- D 0 - I - 0x008036 02:8026: A0 80     .word off_80A0_01
- D 0 - I - 0x008038 02:8028: DC 80     .word off_80DC_02
- D 0 - I - 0x00803A 02:802A: 18 81     .word off_8118_03
- D 0 - I - 0x00803C 02:802C: 54 81     .word off_8154_04
- D 0 - I - 0x00803E 02:802E: 90 81     .word off_8190_05
- D 0 - I - 0x008040 02:8030: CC 81     .word off_81CC_06
- D 0 - I - 0x008042 02:8032: 08 82     .word off_8208_07
off_8034_01:
off_8034_02:
off_8034_03:
- D 0 - I - 0x008044 02:8034: 44 82     .word off_8244_00
- D 0 - I - 0x008046 02:8036: 80 82     .word off_8280_01
- D 0 - I - 0x008048 02:8038: BC 82     .word off_82BC_02
- D 0 - I - 0x00804A 02:803A: F8 82     .word off_82F8_03
- D 0 - I - 0x00804C 02:803C: 34 83     .word off_8334_04
- D 0 - I - 0x00804E 02:803E: 70 83     .word off_8370_05
- D 0 - I - 0x008050 02:8040: AC 83     .word off_83AC_06
- D 0 - I - 0x008052 02:8042: E8 83     .word off_83E8_07
off_8044_00:
- D 0 - I - 0x008054 02:8044: 80 8B     .word off_8B80_00
- D 0 - I - 0x008056 02:8046: 3F 86     .word off_863F_01
- D 0 - I - 0x008058 02:8048: E5 8C     .word off_8CE5_02
- D 0 - I - 0x00805A 02:804A: 47 90     .word off_9047_03
- D 0 - I - 0x00805C 02:804C: F2 91     .word off_91F2_04
- D 0 - I - 0x00805E 02:804E: 9D 93     .word off_939D_05
- D 0 - I - 0x008060 02:8050: E1 A3     .word off_A3E1_06
- D 0 - I - 0x008062 02:8052: 86 92     .word off_9286_07
off_8054_01:
off_8054_02:
off_8054_03:
- D 0 - I - 0x008064 02:8054: 1D 92     .word off_921D_00
- D 0 - I - 0x008066 02:8056: E8 99     .word off_99E8_01
- D 0 - I - 0x008068 02:8058: 12 A0     .word off_A012_02
- D 0 - I - 0x00806A 02:805A: 23 A1     .word off_A123_03
- D 0 - I - 0x00806C 02:805C: 42 A3     .word off_A342_04
- D 0 - I - 0x00806E 02:805E: D3 A4     .word off_A4D3_05
- D 0 - I - 0x008070 02:8060: 97 A8     .word off_A897_06
- D 0 - I - 0x008072 02:8062: D1 A9     .word off_A9D1_07
off_8064_00:
- D 0 - I - 0x008074 02:8064: 24 84     .word off_8424_00
- D 0 - I - 0x008076 02:8066: 24 84     .word off_8424_01
- D 0 - I - 0x008078 02:8068: 44 84     .word off_8444_02
- D 0 - I - 0x00807A 02:806A: 53 8D     .word off_8D53_03
- D 0 - I - 0x00807C 02:806C: A8 8B     .word off_8BA8_04
- D 0 - I - 0x00807E 02:806E: 70 9A     .word off_9A70_05
- D 0 - I - 0x008080 02:8070: 64 87     .word off_8764_06
- D 0 - I - 0x008082 02:8072: 66 96     .word off_9666_07
- D 0 - I - 0x008084 02:8074: F7 86     .word off_86F7_08
- D 0 - I - 0x008086 02:8076: 69 97     .word off_9769_09
- D 0 - I - 0x008088 02:8078: 8D 90     .word off_908D_0A
- D 0 - I - 0x00808A 02:807A: A1 88     .word off_88A1_0B
- D 0 - I - 0x00808C 02:807C: C8 96     .word off_96C8_0C
- D 0 - I - 0x00808E 02:807E: 64 84     .word off_8464_0D
- D 0 - I - 0x008090 02:8080: A3 84     .word off_84A3_0E
- D 0 - I - 0x008092 02:8082: FE 8D     .word off_8DFE_0F
- D 0 - I - 0x008094 02:8084: F0 8F     .word off_8FF0_10
- D 0 - I - 0x008096 02:8086: 01 85     .word off_8501_11
- D 0 - I - 0x008098 02:8088: 77 A8     .word off_A877_12
- D 0 - I - 0x00809A 02:808A: 8E 95     .word off_958E_13
- D 0 - I - 0x00809C 02:808C: 8A 9F     .word off_9F8A_14
- D 0 - I - 0x00809E 02:808E: 3F 85     .word off_853F_15
- D 0 - I - 0x0080A0 02:8090: 5F 85     .word off_855F_16
- D 0 - I - 0x0080A2 02:8092: E2 A7     .word off_A7E2_17
- D 0 - I - 0x0080A4 02:8094: 1C 97     .word off_971C_18
- D 0 - I - 0x0080A6 02:8096: 7F 85     .word off_857F_19
- D 0 - I - 0x0080A8 02:8098: 9F 85     .word off_859F_1A
- D 0 - I - 0x0080AA 02:809A: 91 A9     .word off_A991_1B
- D 0 - I - 0x0080AC 02:809C: 8F 8C     .word off_8C8F_1C
- D 0 - I - 0x0080AE 02:809E: 9C 8D     .word off_8D9C_1D
off_80A0_01:
- D 0 - I - 0x0080B0 02:80A0: 24 84     .word off_8424_00
- D 0 - I - 0x0080B2 02:80A2: 24 84     .word off_8424_01
- D 0 - I - 0x0080B4 02:80A4: 44 84     .word off_8444_02
- D 0 - I - 0x0080B6 02:80A6: 65 8D     .word off_8D65_03
- D 0 - I - 0x0080B8 02:80A8: BC 93     .word off_93BC_04
- D 0 - I - 0x0080BA 02:80AA: C3 86     .word off_86C3_05
- D 0 - I - 0x0080BC 02:80AC: 91 86     .word off_8691_06
- D 0 - I - 0x0080BE 02:80AE: C4 86     .word off_86C4_07
- D 0 - I - 0x0080C0 02:80B0: 6C 8E     .word off_8E6C_08
- D 0 - I - 0x0080C2 02:80B2: 9C 8F     .word off_8F9C_09
- D 0 - I - 0x0080C4 02:80B4: A1 87     .word off_87A1_0A
- D 0 - I - 0x0080C6 02:80B6: 8C 89     .word off_898C_0B
- D 0 - I - 0x0080C8 02:80B8: C7 89     .word off_89C7_0C
- D 0 - I - 0x0080CA 02:80BA: FA A6     .word off_A6FA_0D
- D 0 - I - 0x0080CC 02:80BC: 32 89     .word off_8932_0E
- D 0 - I - 0x0080CE 02:80BE: 05 8A     .word off_8A05_0F
- D 0 - I - 0x0080D0 02:80C0: DB 9D     .word off_9DDB_10
- D 0 - I - 0x0080D2 02:80C2: BF 85     .word off_85BF_11
- D 0 - I - 0x0080D4 02:80C4: DF 85     .word off_85DF_12
- D 0 - I - 0x0080D6 02:80C6: 91 A7     .word off_A791_13
- D 0 - I - 0x0080D8 02:80C8: DB 8A     .word off_8ADB_14
- D 0 - I - 0x0080DA 02:80CA: FF 85     .word off_85FF_15
- D 0 - I - 0x0080DC 02:80CC: 1F 86     .word off_861F_16
- D 0 - I - 0x0080DE 02:80CE: 59 9E     .word off_9E59_17
- D 0 - I - 0x0080E0 02:80D0: 60 9B     .word off_9B60_18
- D 0 - I - 0x0080E2 02:80D2: 4E 8B     .word off_8B4E_19
- D 0 - I - 0x0080E4 02:80D4: 35 96     .word off_9635_1A
- D 0 - I - 0x0080E6 02:80D6: 5A 95     .word off_955A_1B
- D 0 - I - 0x0080E8 02:80D8: D5 A5     .word off_A5D5_1C
- D 0 - I - 0x0080EA 02:80DA: 18 8B     .word off_8B18_1D
off_80DC_02:
- D 0 - I - 0x0080EC 02:80DC: 24 84     .word off_8424_00
- D 0 - I - 0x0080EE 02:80DE: 24 84     .word off_8424_01
- D 0 - I - 0x0080F0 02:80E0: 44 84     .word off_8444_02
- D 0 - I - 0x0080F2 02:80E2: 39 8D     .word off_8D39_03
- D 0 - I - 0x0080F4 02:80E4: B4 8B     .word off_8BB4_04
- D 0 - I - 0x0080F6 02:80E6: 89 9C     .word off_9C89_05
- D 0 - I - 0x0080F8 02:80E8: 7F 86     .word off_867F_06
- D 0 - I - 0x0080FA 02:80EA: B1 86     .word off_86B1_07
- D 0 - I - 0x0080FC 02:80EC: E4 86     .word off_86E4_08
- D 0 - I - 0x0080FE 02:80EE: 17 87     .word off_8717_09
- D 0 - I - 0x008100 02:80F0: 84 87     .word off_8784_0A
- D 0 - I - 0x008102 02:80F2: C1 87     .word off_87C1_0B
- D 0 - I - 0x008104 02:80F4: FE 87     .word off_87FE_0C
- D 0 - I - 0x008106 02:80F6: DF 88     .word off_88DF_0D
- D 0 - I - 0x008108 02:80F8: 17 89     .word off_8917_0E
- D 0 - I - 0x00810A 02:80FA: 70 89     .word off_8970_0F
- D 0 - I - 0x00810C 02:80FC: AC 89     .word off_89AC_10
- D 0 - I - 0x00810E 02:80FE: 1F 85     .word off_851F_11
- D 0 - I - 0x008110 02:8100: 4F 98     .word off_984F_12
- D 0 - I - 0x008112 02:8102: E7 89     .word off_89E7_13
- D 0 - I - 0x008114 02:8104: 25 8A     .word off_8A25_14
- D 0 - I - 0x008116 02:8106: 5F 8A     .word off_8A5F_15
- D 0 - I - 0x008118 02:8108: 9D 8A     .word off_8A9D_16
- D 0 - I - 0x00811A 02:810A: BD 8A     .word off_8ABD_17
- D 0 - I - 0x00811C 02:810C: FB 8A     .word off_8AFB_18
- D 0 - I - 0x00811E 02:810E: 38 8B     .word off_8B38_19
- D 0 - I - 0x008120 02:8110: 6E 8B     .word off_8B6E_1A
- D 0 - I - 0x008122 02:8112: D4 8B     .word off_8BD4_1B
- D 0 - I - 0x008124 02:8114: 79 8C     .word off_8C79_1C
- D 0 - I - 0x008126 02:8116: AF 8C     .word off_8CAF_1D
off_8118_03:
- D 0 - I - 0x008128 02:8118: 24 84     .word off_8424_00
- D 0 - I - 0x00812A 02:811A: 24 84     .word off_8424_01
- D 0 - I - 0x00812C 02:811C: 44 84     .word off_8444_02
- D 0 - I - 0x00812E 02:811E: 25 8D     .word off_8D25_03
- D 0 - I - 0x008130 02:8120: 31 87     .word off_8731_04
- D 0 - I - 0x008132 02:8122: 9B 9C     .word off_9C9B_05
- D 0 - I - 0x008134 02:8124: 56 87     .word off_8756_06
- D 0 - I - 0x008136 02:8126: 59 9F     .word off_9F59_07
- D 0 - I - 0x008138 02:8128: 85 8D     .word off_8D85_08
- D 0 - I - 0x00813A 02:812A: 1E 8E     .word off_8E1E_09
- D 0 - I - 0x00813C 02:812C: AB 90     .word off_90AB_0A
- D 0 - I - 0x00813E 02:812E: 31 94     .word off_9431_0B
- D 0 - I - 0x008140 02:8130: E7 96     .word off_96E7_0C
- D 0 - I - 0x008142 02:8132: A6 97     .word off_97A6_0D
- D 0 - I - 0x008144 02:8134: 83 84     .word off_8483_0E
- D 0 - I - 0x008146 02:8136: 0A 8C     .word off_8C0A_0F
- D 0 - I - 0x008148 02:8138: FB 93     .word off_93FB_10
- D 0 - I - 0x00814A 02:813A: 18 A7     .word off_A718_11
- D 0 - I - 0x00814C 02:813C: AD 94     .word off_94AD_12
- D 0 - I - 0x00814E 02:813E: 59 8E     .word off_8E59_13
- D 0 - I - 0x008150 02:8140: 8C 8E     .word off_8E8C_14
- D 0 - I - 0x008152 02:8142: C1 8E     .word off_8EC1_15
- D 0 - I - 0x008154 02:8144: E1 8E     .word off_8EE1_16
- D 0 - I - 0x008156 02:8146: 01 8F     .word off_8F01_17
- D 0 - I - 0x008158 02:8148: 3D 8F     .word off_8F3D_18
- D 0 - I - 0x00815A 02:814A: 76 8F     .word off_8F76_19
- D 0 - I - 0x00815C 02:814C: BC 8F     .word off_8FBC_1A
- D 0 - I - 0x00815E 02:814E: DC 8F     .word off_8FDC_1B
- D 0 - I - 0x008160 02:8150: 10 90     .word off_9010_1C
- D 0 - I - 0x008162 02:8152: B9 8D     .word off_8DB9_1D
off_8154_04:
- D 0 - I - 0x008164 02:8154: 5E 9D     .word off_9D5E_00
- D 0 - I - 0x008166 02:8156: FE 95     .word off_95FE_01
- D 0 - I - 0x008168 02:8158: 11 98     .word off_9811_02
- D 0 - I - 0x00816A 02:815A: EB 8B     .word off_8BEB_03
- D 0 - I - 0x00816C 02:815C: 5C A9     .word off_A95C_04
- D 0 - I - 0x00816E 02:815E: 14 94     .word off_9414_05
- D 0 - I - 0x008170 02:8160: DA 90     .word off_90DA_06
- D 0 - I - 0x008172 02:8162: F0 A8     .word off_A8F0_07
- D 0 - I - 0x008174 02:8164: 17 91     .word off_9117_08
- D 0 - I - 0x008176 02:8166: 35 88     .word off_8835_09
- D 0 - I - 0x008178 02:8168: C5 8C     .word off_8CC5_0A
- D 0 - I - 0x00817A 02:816A: 27 90     .word off_9027_0B
- D 0 - I - 0x00817C 02:816C: 56 91     .word off_9156_0C
- D 0 - I - 0x00817E 02:816E: 76 91     .word off_9176_0D
- D 0 - I - 0x008180 02:8170: B2 91     .word off_91B2_0E
- D 0 - I - 0x008182 02:8172: BA 90     .word off_90BA_0F
- - - - - - 0x008184 02:8174: D2 91     .word off_91D2_10
- - - - - - 0x008186 02:8176: D2 91     .word off_91D2_11
- - - - - - 0x008188 02:8178: D2 91     .word off_91D2_12
- - - - - - 0x00818A 02:817A: D2 91     .word off_91D2_13
- - - - - - 0x00818C 02:817C: D2 91     .word off_91D2_14
- - - - - - 0x00818E 02:817E: D2 91     .word off_91D2_15
- - - - - - 0x008190 02:8180: D2 91     .word off_91D2_16
- - - - - - 0x008192 02:8182: D2 91     .word off_91D2_17
- - - - - - 0x008194 02:8184: D2 91     .word off_91D2_18
- - - - - - 0x008196 02:8186: D2 91     .word off_91D2_19
- - - - - - 0x008198 02:8188: D2 91     .word off_91D2_1A
- - - - - - 0x00819A 02:818A: D2 91     .word off_91D2_1B
- - - - - - 0x00819C 02:818C: D2 91     .word off_91D2_1C
- - - - - - 0x00819E 02:818E: D2 91     .word off_91D2_1D
off_8190_05:
- D 0 - I - 0x0081A0 02:8190: 2B A5     .word off_A52B_00
- D 0 - I - 0x0081A2 02:8192: DB 9B     .word off_9BDB_01
- D 0 - I - 0x0081A4 02:8194: 69 92     .word off_9269_02
- D 0 - I - 0x0081A6 02:8196: CF 9C     .word off_9CCF_03
- D 0 - I - 0x0081A8 02:8198: 4D A6     .word off_A64D_04
- D 0 - I - 0x0081AA 02:819A: 9F 9B     .word off_9B9F_05
- D 0 - I - 0x0081AC 02:819C: F7 90     .word off_90F7_06
- D 0 - I - 0x0081AE 02:819E: 6E 94     .word off_946E_07
- D 0 - I - 0x0081B0 02:81A0: 3D A2     .word off_A23D_08
- D 0 - I - 0x0081B2 02:81A2: 24 95     .word off_9524_09
- D 0 - I - 0x0081B4 02:81A4: A1 8E     .word off_8EA1_0A
- D 0 - I - 0x0081B6 02:81A6: 23 9F     .word off_9F23_0B
- D 0 - I - 0x0081B8 02:81A8: E1 84     .word off_84E1_0C
- D 0 - I - 0x0081BA 02:81AA: 6B A4     .word off_A46B_0D
- D 0 - I - 0x0081BC 02:81AC: C6 92     .word off_92C6_0E
- D 0 - I - 0x0081BE 02:81AE: 7D 8A     .word off_8A7D_0F
- - - - - - 0x0081C0 02:81B0: D2 91     .word off_91D2_10
- - - - - - 0x0081C2 02:81B2: D2 91     .word off_91D2_11
- - - - - - 0x0081C4 02:81B4: D2 91     .word off_91D2_12
- - - - - - 0x0081C6 02:81B6: D2 91     .word off_91D2_13
- - - - - - 0x0081C8 02:81B8: D2 91     .word off_91D2_14
- - - - - - 0x0081CA 02:81BA: D2 91     .word off_91D2_15
- - - - - - 0x0081CC 02:81BC: D2 91     .word off_91D2_16
- - - - - - 0x0081CE 02:81BE: D2 91     .word off_91D2_17
- - - - - - 0x0081D0 02:81C0: D2 91     .word off_91D2_18
- - - - - - 0x0081D2 02:81C2: D2 91     .word off_91D2_19
- - - - - - 0x0081D4 02:81C4: D2 91     .word off_91D2_1A
- - - - - - 0x0081D6 02:81C6: D2 91     .word off_91D2_1B
- - - - - - 0x0081D8 02:81C8: D2 91     .word off_91D2_1C
- - - - - - 0x0081DA 02:81CA: D2 91     .word off_91D2_1D
off_81CC_06:
- D 0 - I - 0x0081DC 02:81CC: E6 92     .word off_92E6_00
- D 0 - I - 0x0081DE 02:81CE: 06 93     .word off_9306_01
- D 0 - I - 0x0081E0 02:81D0: 26 93     .word off_9326_02
- D 0 - I - 0x0081E2 02:81D2: 46 93     .word off_9346_03
- D 0 - I - 0x0081E4 02:81D4: 7E 93     .word off_937E_04
- D 0 - I - 0x0081E6 02:81D6: DC 93     .word off_93DC_05
- D 0 - I - 0x0081E8 02:81D8: 51 94     .word off_9451_06
- D 0 - I - 0x0081EA 02:81DA: 8E 94     .word off_948E_07
- D 0 - I - 0x0081EC 02:81DC: CD 94     .word off_94CD_08
- D 0 - I - 0x0081EE 02:81DE: 05 95     .word off_9505_09
- D 0 - I - 0x0081F0 02:81E0: 44 95     .word off_9544_0A
- D 0 - I - 0x0081F2 02:81E2: 7A 95     .word off_957A_0B
- D 0 - I - 0x0081F4 02:81E4: AE 95     .word off_95AE_0C
- D 0 - I - 0x0081F6 02:81E6: 73 A4     .word off_A473_0D
- D 0 - I - 0x0081F8 02:81E8: FB 97     .word off_97FB_0E
- D 0 - I - 0x0081FA 02:81EA: CC 9E     .word off_9ECC_0F
- - - - - - 0x0081FC 02:81EC: D2 91     .word off_91D2_10
- - - - - - 0x0081FE 02:81EE: D2 91     .word off_91D2_11
- - - - - - 0x008200 02:81F0: D2 91     .word off_91D2_12
- - - - - - 0x008202 02:81F2: D2 91     .word off_91D2_13
- - - - - - 0x008204 02:81F4: D2 91     .word off_91D2_14
- - - - - - 0x008206 02:81F6: D2 91     .word off_91D2_15
- - - - - - 0x008208 02:81F8: D2 91     .word off_91D2_16
- - - - - - 0x00820A 02:81FA: D2 91     .word off_91D2_17
- - - - - - 0x00820C 02:81FC: D2 91     .word off_91D2_18
- - - - - - 0x00820E 02:81FE: D2 91     .word off_91D2_19
- - - - - - 0x008210 02:8200: D2 91     .word off_91D2_1A
- - - - - - 0x008212 02:8202: D2 91     .word off_91D2_1B
- - - - - - 0x008214 02:8204: D2 91     .word off_91D2_1C
- - - - - - 0x008216 02:8206: D2 91     .word off_91D2_1D
off_8208_07:
- D 0 - I - 0x008218 02:8208: CE 95     .word off_95CE_00
- D 0 - I - 0x00821A 02:820A: EE 95     .word off_95EE_01
- D 0 - I - 0x00821C 02:820C: 1E 96     .word off_961E_02
- D 0 - I - 0x00821E 02:820E: 76 9F     .word off_9F76_03
- D 0 - I - 0x008220 02:8210: 55 96     .word off_9655_04
- D 0 - I - 0x008222 02:8212: EA 8D     .word off_8DEA_05
- D 0 - I - 0x008224 02:8214: C2 84     .word off_84C2_06
- D 0 - I - 0x008226 02:8216: 0C 9D     .word off_9D0C_07
- D 0 - I - 0x008228 02:8218: 49 9D     .word off_9D49_08
- D 0 - I - 0x00822A 02:821A: 53 88     .word off_8853_09
- D 0 - I - 0x00822C 02:821C: 86 96     .word off_9686_0A
- D 0 - I - 0x00822E 02:821E: 07 97     .word off_9707_0B
- D 0 - I - 0x008230 02:8220: 3C 97     .word off_973C_0C
- D 0 - I - 0x008232 02:8222: 92 91     .word off_9192_0D
- D 0 - I - 0x008234 02:8224: 5C 97     .word off_975C_0E
- D 0 - I - 0x008236 02:8226: D7 84     .word off_84D7_0F
- - - - - - 0x008238 02:8228: D2 91     .word off_91D2_10
- - - - - - 0x00823A 02:822A: D2 91     .word off_91D2_11
- - - - - - 0x00823C 02:822C: D2 91     .word off_91D2_12
- - - - - - 0x00823E 02:822E: D2 91     .word off_91D2_13
- - - - - - 0x008240 02:8230: D2 91     .word off_91D2_14
- - - - - - 0x008242 02:8232: D2 91     .word off_91D2_15
- - - - - - 0x008244 02:8234: D2 91     .word off_91D2_16
- - - - - - 0x008246 02:8236: D2 91     .word off_91D2_17
- - - - - - 0x008248 02:8238: D2 91     .word off_91D2_18
- - - - - - 0x00824A 02:823A: D2 91     .word off_91D2_19
- - - - - - 0x00824C 02:823C: D2 91     .word off_91D2_1A
- - - - - - 0x00824E 02:823E: D2 91     .word off_91D2_1B
- - - - - - 0x008250 02:8240: D2 91     .word off_91D2_1C
- - - - - - 0x008252 02:8242: D2 91     .word off_91D2_1D
off_8244_00:
- - - - - - 0x008254 02:8244: 24 84     .word off_8424_00
- - - - - - 0x008256 02:8246: 24 84     .word off_8424_01
- - - - - - 0x008258 02:8248: 44 84     .word off_8444_02
- - - - - - 0x00825A 02:824A: 53 8D     .word off_8D53_03
- D 0 - I - 0x00825C 02:824C: BC 93     .word off_93BC_04
- D 0 - I - 0x00825E 02:824E: C3 86     .word off_86C3_05
- D 0 - I - 0x008260 02:8250: 40 87     .word off_8740_06
- D 0 - I - 0x008262 02:8252: BF A5     .word off_A5BF_07
- D 0 - I - 0x008264 02:8254: 9A 96     .word off_969A_08
- D 0 - I - 0x008266 02:8256: 0F A8     .word off_A80F_09
- D 0 - I - 0x008268 02:8258: 4B 92     .word off_924B_0A
- D 0 - I - 0x00826A 02:825A: B4 9C     .word off_9CB4_0B
- D 0 - I - 0x00826C 02:825C: 6B 88     .word off_886B_0C
- D 0 - I - 0x00826E 02:825E: 89 97     .word off_9789_0D
- D 0 - I - 0x008270 02:8260: C6 97     .word off_97C6_0E
- D 0 - I - 0x008272 02:8262: E3 A0     .word off_A0E3_0F
- D 0 - I - 0x008274 02:8264: 5E 93     .word off_935E_10
- D 0 - I - 0x008276 02:8266: 31 98     .word off_9831_11
- D 0 - I - 0x008278 02:8268: E5 9A     .word off_9AE5_12
- D 0 - I - 0x00827A 02:826A: B3 A2     .word off_A2B3_13
- D 0 - I - 0x00827C 02:826C: 8A 9F     .word off_9F8A_14
- D 0 - I - 0x00827E 02:826E: 3F 85     .word off_853F_15
- D 0 - I - 0x008280 02:8270: 5F 85     .word off_855F_16
- D 0 - I - 0x008282 02:8272: E2 A7     .word off_A7E2_17
- D 0 - I - 0x008284 02:8274: 1C 97     .word off_971C_18
- D 0 - I - 0x008286 02:8276: 7F 85     .word off_857F_19
- D 0 - I - 0x008288 02:8278: 9F 85     .word off_859F_1A
- D 0 - I - 0x00828A 02:827A: 91 A9     .word off_A991_1B
- D 0 - I - 0x00828C 02:827C: 8F 8C     .word off_8C8F_1C
- D 0 - I - 0x00828E 02:827E: 9C 8D     .word off_8D9C_1D
off_8280_01:
- D 0 - I - 0x008290 02:8280: 24 84     .word off_8424_00
- D 0 - I - 0x008292 02:8282: 24 84     .word off_8424_01
- D 0 - I - 0x008294 02:8284: 44 84     .word off_8444_02
- D 0 - I - 0x008296 02:8286: 65 8D     .word off_8D65_03
- D 0 - I - 0x008298 02:8288: 7F 90     .word off_907F_04
- D 0 - I - 0x00829A 02:828A: 64 9A     .word off_9A64_05
- D 0 - I - 0x00829C 02:828C: 36 9A     .word off_9A36_06
- D 0 - I - 0x00829E 02:828E: F2 9F     .word off_9FF2_07
- D 0 - I - 0x0082A0 02:8290: AB 9A     .word off_9AAB_08
- D 0 - I - 0x0082A2 02:8292: 88 98     .word off_9888_09
- D 0 - I - 0x0082A4 02:8294: 24 9B     .word off_9B24_0A
- D 0 - I - 0x0082A6 02:8296: A8 98     .word off_98A8_0B
- D 0 - I - 0x0082A8 02:8298: 11 A6     .word off_A611_0C
- D 0 - I - 0x0082AA 02:829A: C3 A6     .word off_A6C3_0D
- D 0 - I - 0x0082AC 02:829C: 0B A9     .word off_A90B_0E
- D 0 - I - 0x0082AE 02:829E: 9C 9D     .word off_9D9C_0F
- D 0 - I - 0x0082B0 02:82A0: C8 98     .word off_98C8_10
- D 0 - I - 0x0082B2 02:82A2: E8 98     .word off_98E8_11
- D 0 - I - 0x0082B4 02:82A4: F7 88     .word off_88F7_12
- D 0 - I - 0x0082B6 02:82A6: 08 99     .word off_9908_13
- D 0 - I - 0x0082B8 02:82A8: 28 99     .word off_9928_14
- D 0 - I - 0x0082BA 02:82AA: 48 99     .word off_9948_15
- D 0 - I - 0x0082BC 02:82AC: 68 99     .word off_9968_16
- D 0 - I - 0x0082BE 02:82AE: 59 8C     .word off_8C59_17
- D 0 - I - 0x0082C0 02:82B0: 56 8F     .word off_8F56_18
- D 0 - I - 0x0082C2 02:82B2: 88 99     .word off_9988_19
- D 0 - I - 0x0082C4 02:82B4: A8 99     .word off_99A8_1A
- D 0 - I - 0x0082C6 02:82B6: 1D 8F     .word off_8F1D_1B
- D 0 - I - 0x0082C8 02:82B8: 6E A0     .word off_A06E_1C
- D 0 - I - 0x0082CA 02:82BA: C8 99     .word off_99C8_1D
off_82BC_02:
- D 0 - I - 0x0082CC 02:82BC: 24 84     .word off_8424_00
- D 0 - I - 0x0082CE 02:82BE: 24 84     .word off_8424_01
- D 0 - I - 0x0082D0 02:82C0: 44 84     .word off_8444_02
- D 0 - I - 0x0082D2 02:82C2: 39 8D     .word off_8D39_03
- D 0 - I - 0x0082D4 02:82C4: 71 90     .word off_9071_04
- D 0 - I - 0x0082D6 02:82C6: D8 9F     .word off_9FD8_05
- D 0 - I - 0x0082D8 02:82C8: 28 9A     .word off_9A28_06
- D 0 - I - 0x0082DA 02:82CA: 56 9A     .word off_9A56_07
- D 0 - I - 0x0082DC 02:82CC: 90 9A     .word off_9A90_08
- D 0 - I - 0x0082DE 02:82CE: CB 9A     .word off_9ACB_09
- D 0 - I - 0x0082E0 02:82D0: 05 9B     .word off_9B05_0A
- D 0 - I - 0x0082E2 02:82D2: 44 9B     .word off_9B44_0B
- D 0 - I - 0x0082E4 02:82D4: 80 9B     .word off_9B80_0C
- D 0 - I - 0x0082E6 02:82D6: BF 9B     .word off_9BBF_0D
- D 0 - I - 0x0082E8 02:82D8: FB 9B     .word off_9BFB_0E
- D 0 - I - 0x0082EA 02:82DA: 3A 9C     .word off_9C3A_0F
- D 0 - I - 0x0082EC 02:82DC: 79 9C     .word off_9C79_10
- D 0 - I - 0x0082EE 02:82DE: EF 9C     .word off_9CEF_11
- D 0 - I - 0x0082F0 02:82E0: 2C 9D     .word off_9D2C_12
- D 0 - I - 0x0082F2 02:82E2: 7E 9D     .word off_9D7E_13
- D 0 - I - 0x0082F4 02:82E4: BC 9D     .word off_9DBC_14
- D 0 - I - 0x0082F6 02:82E6: FB 9D     .word off_9DFB_15
- D 0 - I - 0x0082F8 02:82E8: 1B 9E     .word off_9E1B_16
- D 0 - I - 0x0082FA 02:82EA: 3B 9E     .word off_9E3B_17
- D 0 - I - 0x0082FC 02:82EC: 79 9E     .word off_9E79_18
- D 0 - I - 0x0082FE 02:82EE: B4 9E     .word off_9EB4_19
- D 0 - I - 0x008300 02:82F0: EC 9E     .word off_9EEC_1A
- D 0 - I - 0x008302 02:82F2: 0C 9F     .word off_9F0C_1B
- D 0 - I - 0x008304 02:82F4: 43 9F     .word off_9F43_1C
- D 0 - I - 0x008306 02:82F6: AA 9F     .word off_9FAA_1D
off_82F8_03:
- - - - - - 0x008308 02:82F8: 24 84     .word off_8424_00
- - - - - - 0x00830A 02:82FA: 24 84     .word off_8424_01
- - - - - - 0x00830C 02:82FC: 44 84     .word off_8444_02
- - - - - - 0x00830E 02:82FE: 25 8D     .word off_8D25_03
- D 0 - I - 0x008310 02:8300: 31 87     .word off_8731_04
- D 0 - I - 0x008312 02:8302: 9B 9C     .word off_9C9B_05
- D 0 - I - 0x008314 02:8304: 56 87     .word off_8756_06
- D 0 - I - 0x008316 02:8306: 59 9F     .word off_9F59_07
- D 0 - I - 0x008318 02:8308: 52 A0     .word off_A052_08
- D 0 - I - 0x00831A 02:830A: 8E A0     .word off_A08E_09
- D 0 - I - 0x00831C 02:830C: 64 A8     .word off_A864_0A
- D 0 - I - 0x00831E 02:830E: 1C 88     .word off_881C_0B
- D 0 - I - 0x008320 02:8310: 8A 88     .word off_888A_0C
- D 0 - I - 0x008322 02:8312: 36 91     .word off_9136_0D
- D 0 - I - 0x008324 02:8314: 1A 9C     .word off_9C1A_0E
- D 0 - I - 0x008326 02:8316: 59 9C     .word off_9C59_0F
- D 0 - I - 0x008328 02:8318: A2 A1     .word off_A1A2_10
- D 0 - I - 0x00832A 02:831A: 50 89     .word off_8950_11
- D 0 - I - 0x00832C 02:831C: AE A0     .word off_A0AE_12
- D 0 - I - 0x00832E 02:831E: 41 8C     .word off_8C41_13
- D 0 - I - 0x008330 02:8320: CE A0     .word off_A0CE_14
- D 0 - I - 0x008332 02:8322: 03 A1     .word off_A103_15
- D 0 - I - 0x008334 02:8324: E1 8E     .word off_8EE1_16
- D 0 - I - 0x008336 02:8326: 01 8F     .word off_8F01_17
- D 0 - I - 0x008338 02:8328: 3D 8F     .word off_8F3D_18
- D 0 - I - 0x00833A 02:832A: 76 8F     .word off_8F76_19
- D 0 - I - 0x00833C 02:832C: BC 8F     .word off_8FBC_1A
- D 0 - I - 0x00833E 02:832E: DC 8F     .word off_8FDC_1B
- D 0 - I - 0x008340 02:8330: 10 90     .word off_9010_1C
- D 0 - I - 0x008342 02:8332: B9 8D     .word off_8DB9_1D
off_8334_04:
- D 0 - I - 0x008344 02:8334: 5E 9D     .word off_9D5E_00
- D 0 - I - 0x008346 02:8336: 63 A1     .word off_A163_01
- D 0 - I - 0x008348 02:8338: 45 A8     .word off_A845_02
- D 0 - I - 0x00834A 02:833A: 83 A1     .word off_A183_03
- D 0 - I - 0x00834C 02:833C: CB 8D     .word off_8DCB_04
- D 0 - I - 0x00834E 02:833E: C2 A1     .word off_A1C2_05
- D 0 - I - 0x008350 02:8340: E2 A1     .word off_A1E2_06
- D 0 - I - 0x008352 02:8342: 1F A2     .word off_A21F_07
- D 0 - I - 0x008354 02:8344: 5D A2     .word off_A25D_08
- D 0 - I - 0x008356 02:8346: 23 8C     .word off_8C23_09
- D 0 - I - 0x008358 02:8348: C0 9F     .word off_9FC0_0A
- D 0 - I - 0x00835A 02:834A: 9B A2     .word off_A29B_0B
- D 0 - I - 0x00835C 02:834C: D3 A2     .word off_A2D3_0C
- D 0 - I - 0x00835E 02:834E: F3 A2     .word off_A2F3_0D
- D 0 - I - 0x008360 02:8350: 22 A3     .word off_A322_0E
- D 0 - I - 0x008362 02:8352: BA 90     .word off_90BA_0F
- - - - - - 0x008364 02:8354: D2 91     .word off_91D2_10
- - - - - - 0x008366 02:8356: D2 91     .word off_91D2_11
- - - - - - 0x008368 02:8358: D2 91     .word off_91D2_12
- - - - - - 0x00836A 02:835A: D2 91     .word off_91D2_13
- - - - - - 0x00836C 02:835C: D2 91     .word off_91D2_14
- - - - - - 0x00836E 02:835E: D2 91     .word off_91D2_15
- - - - - - 0x008370 02:8360: D2 91     .word off_91D2_16
- - - - - - 0x008372 02:8362: D2 91     .word off_91D2_17
- - - - - - 0x008374 02:8364: D2 91     .word off_91D2_18
- - - - - - 0x008376 02:8366: D2 91     .word off_91D2_19
- - - - - - 0x008378 02:8368: D2 91     .word off_91D2_1A
- - - - - - 0x00837A 02:836A: D2 91     .word off_91D2_1B
- - - - - - 0x00837C 02:836C: D2 91     .word off_91D2_1C
- - - - - - 0x00837E 02:836E: D2 91     .word off_91D2_1D
off_8370_05:
- D 0 - I - 0x008380 02:8370: 82 A3     .word off_A382_00
- D 0 - I - 0x008382 02:8372: A2 A3     .word off_A3A2_01
- D 0 - I - 0x008384 02:8374: C2 A3     .word off_A3C2_02
- D 0 - I - 0x008386 02:8376: BF 88     .word off_88BF_03
- D 0 - I - 0x008388 02:8378: 3F 8A     .word off_8A3F_04
- D 0 - I - 0x00838A 02:837A: DE 87     .word off_87DE_05
- D 0 - I - 0x00838C 02:837C: FF A1     .word off_A1FF_06
- D 0 - I - 0x00838E 02:837E: 88 A6     .word off_A688_07
- D 0 - I - 0x008390 02:8380: 68 98     .word off_9868_08
- D 0 - I - 0x008392 02:8382: 54 A7     .word off_A754_09
- D 0 - I - 0x008394 02:8384: 21 A4     .word off_A421_0A
- D 0 - I - 0x008396 02:8386: 41 A4     .word off_A441_0B
- D 0 - I - 0x008398 02:8388: E5 94     .word off_94E5_0C
- D 0 - I - 0x00839A 02:838A: 61 A4     .word off_A461_0D
- D 0 - I - 0x00839C 02:838C: 93 A4     .word off_A493_0E
- D 0 - I - 0x00839E 02:838E: B3 A4     .word off_A4B3_0F
- D 0 - I - 0x0083A0 02:8390: D2 91     .word off_91D2_10
- D 0 - I - 0x0083A2 02:8392: D2 91     .word off_91D2_11
- D 0 - I - 0x0083A4 02:8394: D2 91     .word off_91D2_12
- D 0 - I - 0x0083A6 02:8396: D2 91     .word off_91D2_13
- D 0 - I - 0x0083A8 02:8398: D2 91     .word off_91D2_14
- D 0 - I - 0x0083AA 02:839A: D2 91     .word off_91D2_15
- D 0 - I - 0x0083AC 02:839C: D2 91     .word off_91D2_16
- D 0 - I - 0x0083AE 02:839E: D2 91     .word off_91D2_17
- - - - - - 0x0083B0 02:83A0: D2 91     .word off_91D2_18
- - - - - - 0x0083B2 02:83A2: D2 91     .word off_91D2_19
- - - - - - 0x0083B4 02:83A4: D2 91     .word off_91D2_1A
- - - - - - 0x0083B6 02:83A6: D2 91     .word off_91D2_1B
- - - - - - 0x0083B8 02:83A8: D2 91     .word off_91D2_1C
- - - - - - 0x0083BA 02:83AA: D2 91     .word off_91D2_1D
off_83AC_06:
- D 0 - I - 0x0083BC 02:83AC: 13 A5     .word off_A513_00
- D 0 - I - 0x0083BE 02:83AE: 4B A5     .word off_A54B_01
- D 0 - I - 0x0083C0 02:83B0: 6B A5     .word off_A56B_02
- D 0 - I - 0x0083C2 02:83B2: 8B A5     .word off_A58B_03
- D 0 - I - 0x0083C4 02:83B4: F5 A5     .word off_A5F5_04
- D 0 - I - 0x0083C6 02:83B6: 31 A6     .word off_A631_05
- D 0 - I - 0x0083C8 02:83B8: 6D A6     .word off_A66D_06
- D 0 - I - 0x0083CA 02:83BA: A8 A6     .word off_A6A8_07
- D 0 - I - 0x0083CC 02:83BC: E3 A6     .word off_A6E3_08
- D 0 - I - 0x0083CE 02:83BE: 38 A7     .word off_A738_09
- D 0 - I - 0x0083D0 02:83C0: 74 A7     .word off_A774_0A
- D 0 - I - 0x0083D2 02:83C2: B1 A7     .word off_A7B1_0B
- D 0 - I - 0x0083D4 02:83C4: 02 A8     .word off_A802_0C
- D 0 - I - 0x0083D6 02:83C6: 61 A4     .word off_A461_0D
- D 0 - I - 0x0083D8 02:83C8: 2F A8     .word off_A82F_0E
- D 0 - I - 0x0083DA 02:83CA: 39 8E     .word off_8E39_0F
- - - - - - 0x0083DC 02:83CC: D2 91     .word off_91D2_10
- - - - - - 0x0083DE 02:83CE: D2 91     .word off_91D2_11
- - - - - - 0x0083E0 02:83D0: D2 91     .word off_91D2_12
- - - - - - 0x0083E2 02:83D2: D2 91     .word off_91D2_13
- - - - - - 0x0083E4 02:83D4: D2 91     .word off_91D2_14
- - - - - - 0x0083E6 02:83D6: D2 91     .word off_91D2_15
- - - - - - 0x0083E8 02:83D8: D2 91     .word off_91D2_16
- - - - - - 0x0083EA 02:83DA: D2 91     .word off_91D2_17
- - - - - - 0x0083EC 02:83DC: D2 91     .word off_91D2_18
- - - - - - 0x0083EE 02:83DE: D2 91     .word off_91D2_19
- - - - - - 0x0083F0 02:83E0: D2 91     .word off_91D2_1A
- - - - - - 0x0083F2 02:83E2: D2 91     .word off_91D2_1B
- - - - - - 0x0083F4 02:83E4: D2 91     .word off_91D2_1C
- - - - - - 0x0083F6 02:83E6: D2 91     .word off_91D2_1D
off_83E8_07:
- D 0 - I - 0x0083F8 02:83E8: CE 95     .word off_95CE_00
- D 0 - I - 0x0083FA 02:83EA: EE 95     .word off_95EE_01
- D 0 - I - 0x0083FC 02:83EC: D7 A8     .word off_A8D7_02
- D 0 - I - 0x0083FE 02:83EE: CE A7     .word off_A7CE_03
- D 0 - I - 0x008400 02:83F0: B7 96     .word off_96B7_04
- D 0 - I - 0x008402 02:83F2: A8 A5     .word off_A5A8_05
- D 0 - I - 0x008404 02:83F4: 2B A9     .word off_A92B_06
- D 0 - I - 0x008406 02:83F6: 7B A2     .word off_A27B_07
- D 0 - I - 0x008408 02:83F8: E5 97     .word off_97E5_08
- D 0 - I - 0x00840A 02:83FA: 4B A9     .word off_A94B_09
- D 0 - I - 0x00840C 02:83FC: 94 9E     .word off_9E94_0A
- D 0 - I - 0x00840E 02:83FE: 7C A9     .word off_A97C_0B
- D 0 - I - 0x008410 02:8400: B1 A9     .word off_A9B1_0C
- D 0 - I - 0x008412 02:8402: 02 A3     .word off_A302_0D
- D 0 - I - 0x008414 02:8404: 8D 8F     .word off_8F8D_0E
- D 0 - I - 0x008416 02:8406: D7 84     .word off_84D7_0F
- - - - - - 0x008418 02:8408: D2 91     .word off_91D2_10
- - - - - - 0x00841A 02:840A: D2 91     .word off_91D2_11
- - - - - - 0x00841C 02:840C: D2 91     .word off_91D2_12
- - - - - - 0x00841E 02:840E: D2 91     .word off_91D2_13
- - - - - - 0x008420 02:8410: D2 91     .word off_91D2_14
- - - - - - 0x008422 02:8412: D2 91     .word off_91D2_15
- - - - - - 0x008424 02:8414: D2 91     .word off_91D2_16
- - - - - - 0x008426 02:8416: D2 91     .word off_91D2_17
- - - - - - 0x008428 02:8418: D2 91     .word off_91D2_18
- - - - - - 0x00842A 02:841A: D2 91     .word off_91D2_19
- - - - - - 0x00842C 02:841C: D2 91     .word off_91D2_1A
- - - - - - 0x00842E 02:841E: D2 91     .word off_91D2_1B
- - - - - - 0x008430 02:8420: D2 91     .word off_91D2_1C
- - - - - - 0x008432 02:8422: D2 91     .word off_91D2_1D
off_8424_00:
off_8424_01:
- D 0 - I - 0x008434 02:8424: 01        .byte $01   ; 
- D 0 - I - 0x008435 02:8425: 01        .byte $01   ; 
- D 0 - I - 0x008436 02:8426: 01        .byte $01   ; 
- D 0 - I - 0x008437 02:8427: 01        .byte $01   ; 
- D 0 - I - 0x008438 02:8428: 01        .byte $01   ; 
- D 0 - I - 0x008439 02:8429: 01        .byte $01   ; 
- D 0 - I - 0x00843A 02:842A: 01        .byte $01   ; 
- D 0 - I - 0x00843B 02:842B: 01        .byte $01   ; 
- D 0 - I - 0x00843C 02:842C: 01        .byte $01   ; 
- D 0 - I - 0x00843D 02:842D: 01        .byte $01   ; 
- D 0 - I - 0x00843E 02:842E: 01        .byte $01   ; 
- D 0 - I - 0x00843F 02:842F: 01        .byte $01   ; 
- D 0 - I - 0x008440 02:8430: 01        .byte $01   ; 
- D 0 - I - 0x008441 02:8431: 01        .byte $01   ; 
- D 0 - I - 0x008442 02:8432: 01        .byte $01   ; 
- D 0 - I - 0x008443 02:8433: 01        .byte $01   ; 
- D 0 - I - 0x008444 02:8434: 01        .byte $01   ; 
- D 0 - I - 0x008445 02:8435: 01        .byte $01   ; 
- D 0 - I - 0x008446 02:8436: 01        .byte $01   ; 
- D 0 - I - 0x008447 02:8437: 01        .byte $01   ; 
- D 0 - I - 0x008448 02:8438: 01        .byte $01   ; 
- D 0 - I - 0x008449 02:8439: 01        .byte $01   ; 
- D 0 - I - 0x00844A 02:843A: 01        .byte $01   ; 
- D 0 - I - 0x00844B 02:843B: 01        .byte $01   ; 
- D 0 - I - 0x00844C 02:843C: 01        .byte $01   ; 
- D 0 - I - 0x00844D 02:843D: 01        .byte $01   ; 
- D 0 - I - 0x00844E 02:843E: 01        .byte $01   ; 
- D 0 - I - 0x00844F 02:843F: 01        .byte $01   ; 
- D 0 - I - 0x008450 02:8440: 01        .byte $01   ; 
- D 0 - I - 0x008451 02:8441: 01        .byte $01   ; 
- D 0 - I - 0x008452 02:8442: 01        .byte $01   ; 
- D 0 - I - 0x008453 02:8443: 01        .byte $01   ; 
off_8444_02:
- D 0 - I - 0x008454 02:8444: 05        .byte $05   ; 
- D 0 - I - 0x008455 02:8445: 05        .byte $05   ; 
- D 0 - I - 0x008456 02:8446: 05        .byte $05   ; 
- D 0 - I - 0x008457 02:8447: 05        .byte $05   ; 
- D 0 - I - 0x008458 02:8448: 05        .byte $05   ; 
- D 0 - I - 0x008459 02:8449: 05        .byte $05   ; 
- D 0 - I - 0x00845A 02:844A: 05        .byte $05   ; 
- D 0 - I - 0x00845B 02:844B: 05        .byte $05   ; 
- D 0 - I - 0x00845C 02:844C: 05        .byte $05   ; 
- D 0 - I - 0x00845D 02:844D: 05        .byte $05   ; 
- D 0 - I - 0x00845E 02:844E: 05        .byte $05   ; 
- D 0 - I - 0x00845F 02:844F: 05        .byte $05   ; 
- D 0 - I - 0x008460 02:8450: 05        .byte $05   ; 
- D 0 - I - 0x008461 02:8451: 05        .byte $05   ; 
- D 0 - I - 0x008462 02:8452: 05        .byte $05   ; 
- D 0 - I - 0x008463 02:8453: 05        .byte $05   ; 
- D 0 - I - 0x008464 02:8454: 05        .byte $05   ; 
- D 0 - I - 0x008465 02:8455: 05        .byte $05   ; 
- D 0 - I - 0x008466 02:8456: 05        .byte $05   ; 
- D 0 - I - 0x008467 02:8457: 05        .byte $05   ; 
- D 0 - I - 0x008468 02:8458: 05        .byte $05   ; 
- D 0 - I - 0x008469 02:8459: 05        .byte $05   ; 
- D 0 - I - 0x00846A 02:845A: 05        .byte $05   ; 
- D 0 - I - 0x00846B 02:845B: 05        .byte $05   ; 
- D 0 - I - 0x00846C 02:845C: 05        .byte $05   ; 
- D 0 - I - 0x00846D 02:845D: 05        .byte $05   ; 
- D 0 - I - 0x00846E 02:845E: 05        .byte $05   ; 
- D 0 - I - 0x00846F 02:845F: 05        .byte $05   ; 
- D 0 - I - 0x008470 02:8460: 05        .byte $05   ; 
- D 0 - I - 0x008471 02:8461: 05        .byte $05   ; 
- D 0 - I - 0x008472 02:8462: 05        .byte $05   ; 
- D 0 - I - 0x008473 02:8463: 05        .byte $05   ; 
off_8464_0D:
- - - - - - 0x008474 02:8464: 00        .byte $00   ; 
- - - - - - 0x008475 02:8465: 00        .byte $00   ; 
- - - - - - 0x008476 02:8466: 00        .byte $00   ; 
- - - - - - 0x008477 02:8467: 00        .byte $00   ; 
- - - - - - 0x008478 02:8468: 00        .byte $00   ; 
- - - - - - 0x008479 02:8469: 00        .byte $00   ; 
- - - - - - 0x00847A 02:846A: 00        .byte $00   ; 
- - - - - - 0x00847B 02:846B: 14        .byte $14   ; 
- - - - - - 0x00847C 02:846C: 00        .byte $00   ; 
- D 0 - I - 0x00847D 02:846D: 00        .byte $00   ; 
- D 0 - I - 0x00847E 02:846E: 00        .byte $00   ; 
- D 0 - I - 0x00847F 02:846F: 00        .byte $00   ; 
- D 0 - I - 0x008480 02:8470: 00        .byte $00   ; 
- D 0 - I - 0x008481 02:8471: 00        .byte $00   ; 
- D 0 - I - 0x008482 02:8472: A1        .byte $A1   ; 
- D 0 - I - 0x008483 02:8473: A2        .byte $A2   ; 
- D 0 - I - 0x008484 02:8474: A3        .byte $A3   ; 
- D 0 - I - 0x008485 02:8475: A4        .byte $A4   ; 
- D 0 - I - 0x008486 02:8476: 25        .byte $25   ; 
- D 0 - I - 0x008487 02:8477: 00        .byte $00   ; 
- D 0 - I - 0x008488 02:8478: 00        .byte $00   ; 
- D 0 - I - 0x008489 02:8479: 00        .byte $00   ; 
- D 0 - I - 0x00848A 02:847A: 00        .byte $00   ; 
- D 0 - I - 0x00848B 02:847B: 48        .byte $48   ; 
- D 0 - I - 0x00848C 02:847C: 60        .byte $60   ; 
- D 0 - I - 0x00848D 02:847D: 78        .byte $78   ; 
- D 0 - I - 0x00848E 02:847E: 5A        .byte $5A   ; 
- D 0 - I - 0x00848F 02:847F: 5A        .byte $5A   ; 
- D 0 - I - 0x008490 02:8480: 7A        .byte $7A   ; 
- D 0 - I - 0x008491 02:8481: 6E        .byte $6E   ; 
- D 0 - I - 0x008492 02:8482: EF        .byte $EF   ; 
off_8483_0E:
- D 0 - I - 0x008493 02:8483: 6C        .byte $6C   ; 
- D 0 - I - 0x008494 02:8484: F0        .byte $F0   ; 
- D 0 - I - 0x008495 02:8485: 6C        .byte $6C   ; 
- D 0 - I - 0x008496 02:8486: 6C        .byte $6C   ; 
- D 0 - I - 0x008497 02:8487: 6C        .byte $6C   ; 
- D 0 - I - 0x008498 02:8488: 6C        .byte $6C   ; 
- D 0 - I - 0x008499 02:8489: 6C        .byte $6C   ; 
- D 0 - I - 0x00849A 02:848A: 7C        .byte $7C   ; 
- D 0 - I - 0x00849B 02:848B: 54        .byte $54   ; 
- D 0 - I - 0x00849C 02:848C: 42        .byte $42   ; 
- D 0 - I - 0x00849D 02:848D: 00        .byte $00   ; 
- D 0 - I - 0x00849E 02:848E: 00        .byte $00   ; 
- D 0 - I - 0x00849F 02:848F: 00        .byte $00   ; 
- D 0 - I - 0x0084A0 02:8490: 23        .byte $23   ; 
- D 0 - I - 0x0084A1 02:8491: B0        .byte $B0   ; 
- D 0 - I - 0x0084A2 02:8492: B1        .byte $B1   ; 
- D 0 - I - 0x0084A3 02:8493: B2        .byte $B2   ; 
- D 0 - I - 0x0084A4 02:8494: B3        .byte $B3   ; 
- D 0 - I - 0x0084A5 02:8495: B4        .byte $B4   ; 
- D 0 - I - 0x0084A6 02:8496: 00        .byte $00   ; 
- D 0 - I - 0x0084A7 02:8497: 00        .byte $00   ; 
- D 0 - I - 0x0084A8 02:8498: 00        .byte $00   ; 
- D 0 - I - 0x0084A9 02:8499: 00        .byte $00   ; 
- D 0 - I - 0x0084AA 02:849A: 00        .byte $00   ; 
- - - - - - 0x0084AB 02:849B: 00        .byte $00   ; 
- - - - - - 0x0084AC 02:849C: 00        .byte $00   ; 
- - - - - - 0x0084AD 02:849D: 15        .byte $15   ; 
- - - - - - 0x0084AE 02:849E: 00        .byte $00   ; 
- - - - - - 0x0084AF 02:849F: 15        .byte $15   ; 
- - - - - - 0x0084B0 02:84A0: 00        .byte $00   ; 
- - - - - - 0x0084B1 02:84A1: 00        .byte $00   ; 
- - - - - - 0x0084B2 02:84A2: 00        .byte $00   ; 
off_84A3_0E:
- - - - - - 0x0084B3 02:84A3: 00        .byte $00   ; 
- - - - - - 0x0084B4 02:84A4: 00        .byte $00   ; 
- - - - - - 0x0084B5 02:84A5: 00        .byte $00   ; 
- - - - - - 0x0084B6 02:84A6: 00        .byte $00   ; 
- - - - - - 0x0084B7 02:84A7: 00        .byte $00   ; 
- - - - - - 0x0084B8 02:84A8: 00        .byte $00   ; 
- - - - - - 0x0084B9 02:84A9: 00        .byte $00   ; 
- - - - - - 0x0084BA 02:84AA: 00        .byte $00   ; 
- - - - - - 0x0084BB 02:84AB: 00        .byte $00   ; 
- D 0 - I - 0x0084BC 02:84AC: 14        .byte $14   ; 
- D 0 - I - 0x0084BD 02:84AD: 00        .byte $00   ; 
- D 0 - I - 0x0084BE 02:84AE: 00        .byte $00   ; 
- D 0 - I - 0x0084BF 02:84AF: 00        .byte $00   ; 
- D 0 - I - 0x0084C0 02:84B0: B0        .byte $B0   ; 
- D 0 - I - 0x0084C1 02:84B1: B1        .byte $B1   ; 
- D 0 - I - 0x0084C2 02:84B2: B2        .byte $B2   ; 
- D 0 - I - 0x0084C3 02:84B3: B3        .byte $B3   ; 
- D 0 - I - 0x0084C4 02:84B4: B4        .byte $B4   ; 
- D 0 - I - 0x0084C5 02:84B5: 24        .byte $24   ; 
- D 0 - I - 0x0084C6 02:84B6: 00        .byte $00   ; 
- D 0 - I - 0x0084C7 02:84B7: 40        .byte $40   ; 
- D 0 - I - 0x0084C8 02:84B8: 54        .byte $54   ; 
- D 0 - I - 0x0084C9 02:84B9: 54        .byte $54   ; 
- D 0 - I - 0x0084CA 02:84BA: 54        .byte $54   ; 
- D 0 - I - 0x0084CB 02:84BB: 7E        .byte $7E   ; 
- D 0 - I - 0x0084CC 02:84BC: 66        .byte $66   ; 
- D 0 - I - 0x0084CD 02:84BD: 4E        .byte $4E   ; 
- D 0 - I - 0x0084CE 02:84BE: 4C        .byte $4C   ; 
- D 0 - I - 0x0084CF 02:84BF: 60        .byte $60   ; 
- D 0 - I - 0x0084D0 02:84C0: 6C        .byte $6C   ; 
- D 0 - I - 0x0084D1 02:84C1: EE        .byte $EE   ; 
off_84C2_06:
- D 0 - I - 0x0084D2 02:84C2: 6C        .byte $6C   ; 
- D 0 - I - 0x0084D3 02:84C3: 7C        .byte $7C   ; 
- D 0 - I - 0x0084D4 02:84C4: 54        .byte $54   ; 
- D 0 - I - 0x0084D5 02:84C5: 42        .byte $42   ; 
- D 0 - I - 0x0084D6 02:84C6: 94        .byte $94   ; 
- D 0 - I - 0x0084D7 02:84C7: 12        .byte $12   ; 
- D 0 - I - 0x0084D8 02:84C8: 63        .byte $63   ; 
- D 0 - I - 0x0084D9 02:84C9: 77        .byte $77   ; 
- D 0 - I - 0x0084DA 02:84CA: 77        .byte $77   ; 
- D 0 - I - 0x0084DB 02:84CB: 77        .byte $77   ; 
- D 0 - I - 0x0084DC 02:84CC: 77        .byte $77   ; 
- D 0 - I - 0x0084DD 02:84CD: 77        .byte $77   ; 
- D 0 - I - 0x0084DE 02:84CE: 77        .byte $77   ; 
- D 0 - I - 0x0084DF 02:84CF: E8        .byte $E8   ; 
- D 0 - I - 0x0084E0 02:84D0: 12        .byte $12   ; 
- D 0 - I - 0x0084E1 02:84D1: 12        .byte $12   ; 
- D 0 - I - 0x0084E2 02:84D2: 21        .byte $21   ; 
- D 0 - I - 0x0084E3 02:84D3: 00        .byte $00   ; 
- D 0 - I - 0x0084E4 02:84D4: 00        .byte $00   ; 
- D 0 - I - 0x0084E5 02:84D5: 00        .byte $00   ; 
- D 0 - I - 0x0084E6 02:84D6: 00        .byte $00   ; 
off_84D7_0F:
- D 0 - I - 0x0084E7 02:84D7: 00        .byte $00   ; 
- D 0 - I - 0x0084E8 02:84D8: 00        .byte $00   ; 
- D 0 - I - 0x0084E9 02:84D9: 00        .byte $00   ; 
- D 0 - I - 0x0084EA 02:84DA: 14        .byte $14   ; 
- D 0 - I - 0x0084EB 02:84DB: 00        .byte $00   ; 
- D 0 - I - 0x0084EC 02:84DC: 00        .byte $00   ; 
- D 0 - I - 0x0084ED 02:84DD: 00        .byte $00   ; 
- D 0 - I - 0x0084EE 02:84DE: 00        .byte $00   ; 
- D 0 - I - 0x0084EF 02:84DF: 15        .byte $15   ; 
- D 0 - I - 0x0084F0 02:84E0: 00        .byte $00   ; 
off_84E1_0C:
- D 0 - I - 0x0084F1 02:84E1: 00        .byte $00   ; 
- D 0 - I - 0x0084F2 02:84E2: 00        .byte $00   ; 
- D 0 - I - 0x0084F3 02:84E3: 00        .byte $00   ; 
- D 0 - I - 0x0084F4 02:84E4: 00        .byte $00   ; 
- D 0 - I - 0x0084F5 02:84E5: 00        .byte $00   ; 
- D 0 - I - 0x0084F6 02:84E6: 00        .byte $00   ; 
- D 0 - I - 0x0084F7 02:84E7: 00        .byte $00   ; 
- D 0 - I - 0x0084F8 02:84E8: 00        .byte $00   ; 
- D 0 - I - 0x0084F9 02:84E9: 00        .byte $00   ; 
- D 0 - I - 0x0084FA 02:84EA: 00        .byte $00   ; 
- D 0 - I - 0x0084FB 02:84EB: 00        .byte $00   ; 
- D 0 - I - 0x0084FC 02:84EC: 00        .byte $00   ; 
- D 0 - I - 0x0084FD 02:84ED: 00        .byte $00   ; 
- D 0 - I - 0x0084FE 02:84EE: 00        .byte $00   ; 
- D 0 - I - 0x0084FF 02:84EF: 00        .byte $00   ; 
- D 0 - I - 0x008500 02:84F0: 00        .byte $00   ; 
- D 0 - I - 0x008501 02:84F1: 00        .byte $00   ; 
- D 0 - I - 0x008502 02:84F2: 00        .byte $00   ; 
- D 0 - I - 0x008503 02:84F3: 00        .byte $00   ; 
- D 0 - I - 0x008504 02:84F4: 00        .byte $00   ; 
- D 0 - I - 0x008505 02:84F5: 00        .byte $00   ; 
- D 0 - I - 0x008506 02:84F6: 00        .byte $00   ; 
- D 0 - I - 0x008507 02:84F7: 60        .byte $60   ; 
- D 0 - I - 0x008508 02:84F8: 6C        .byte $6C   ; 
- D 0 - I - 0x008509 02:84F9: 6C        .byte $6C   ; 
- D 0 - I - 0x00850A 02:84FA: 6C        .byte $6C   ; 
- D 0 - I - 0x00850B 02:84FB: 6C        .byte $6C   ; 
- D 0 - I - 0x00850C 02:84FC: 66        .byte $66   ; 
- D 0 - I - 0x00850D 02:84FD: 00        .byte $00   ; 
- D 0 - I - 0x00850E 02:84FE: 00        .byte $00   ; 
- D 0 - I - 0x00850F 02:84FF: 00        .byte $00   ; 
- D 0 - I - 0x008510 02:8500: 1B        .byte $1B   ; 
off_8501_11:
- - - - - - 0x008511 02:8501: 00        .byte $00   ; 
- - - - - - 0x008512 02:8502: 00        .byte $00   ; 
- - - - - - 0x008513 02:8503: 00        .byte $00   ; 
- - - - - - 0x008514 02:8504: 00        .byte $00   ; 
- - - - - - 0x008515 02:8505: 00        .byte $00   ; 
- - - - - - 0x008516 02:8506: 00        .byte $00   ; 
- - - - - - 0x008517 02:8507: 00        .byte $00   ; 
- - - - - - 0x008518 02:8508: 00        .byte $00   ; 
- - - - - - 0x008519 02:8509: 00        .byte $00   ; 
- D 0 - I - 0x00851A 02:850A: 00        .byte $00   ; 
- D 0 - I - 0x00851B 02:850B: 00        .byte $00   ; 
- D 0 - I - 0x00851C 02:850C: 00        .byte $00   ; 
- D 0 - I - 0x00851D 02:850D: 00        .byte $00   ; 
- D 0 - I - 0x00851E 02:850E: 95        .byte $95   ; 
- D 0 - I - 0x00851F 02:850F: 96        .byte $96   ; 
- D 0 - I - 0x008520 02:8510: 97        .byte $97   ; 
- D 0 - I - 0x008521 02:8511: 98        .byte $98   ; 
- D 0 - I - 0x008522 02:8512: B4        .byte $B4   ; 
- D 0 - I - 0x008523 02:8513: 21        .byte $21   ; 
- D 0 - I - 0x008524 02:8514: 00        .byte $00   ; 
- D 0 - I - 0x008525 02:8515: 00        .byte $00   ; 
- D 0 - I - 0x008526 02:8516: 00        .byte $00   ; 
- D 0 - I - 0x008527 02:8517: 00        .byte $00   ; 
- D 0 - I - 0x008528 02:8518: 00        .byte $00   ; 
- D 0 - I - 0x008529 02:8519: 00        .byte $00   ; 
- D 0 - I - 0x00852A 02:851A: 00        .byte $00   ; 
- D 0 - I - 0x00852B 02:851B: 00        .byte $00   ; 
- D 0 - I - 0x00852C 02:851C: 00        .byte $00   ; 
- D 0 - I - 0x00852D 02:851D: 00        .byte $00   ; 
- D 0 - I - 0x00852E 02:851E: 27        .byte $27   ; 
off_851F_11:
- D 0 - I - 0x00852F 02:851F: 1C        .byte $1C   ; 
- D 0 - I - 0x008530 02:8520: 00        .byte $00   ; 
- D 0 - I - 0x008531 02:8521: 00        .byte $00   ; 
- D 0 - I - 0x008532 02:8522: 00        .byte $00   ; 
- D 0 - I - 0x008533 02:8523: 44        .byte $44   ; 
- D 0 - I - 0x008534 02:8524: 5A        .byte $5A   ; 
- D 0 - I - 0x008535 02:8525: 5A        .byte $5A   ; 
- D 0 - I - 0x008536 02:8526: 5A        .byte $5A   ; 
- D 0 - I - 0x008537 02:8527: 5A        .byte $5A   ; 
- D 0 - I - 0x008538 02:8528: 5A        .byte $5A   ; 
- D 0 - I - 0x008539 02:8529: 7A        .byte $7A   ; 
- D 0 - I - 0x00853A 02:852A: 6C        .byte $6C   ; 
- D 0 - I - 0x00853B 02:852B: 6E        .byte $6E   ; 
- D 0 - I - 0x00853C 02:852C: 6C        .byte $6C   ; 
- D 0 - I - 0x00853D 02:852D: 6C        .byte $6C   ; 
- D 0 - I - 0x00853E 02:852E: 68        .byte $68   ; 
- D 0 - I - 0x00853F 02:852F: 00        .byte $00   ; 
- D 0 - I - 0x008540 02:8530: 00        .byte $00   ; 
- D 0 - I - 0x008541 02:8531: 00        .byte $00   ; 
- D 0 - I - 0x008542 02:8532: 14        .byte $14   ; 
- D 0 - I - 0x008543 02:8533: 00        .byte $00   ; 
- D 0 - I - 0x008544 02:8534: 00        .byte $00   ; 
- D 0 - I - 0x008545 02:8535: 00        .byte $00   ; 
- D 0 - I - 0x008546 02:8536: 48        .byte $48   ; 
- D 0 - I - 0x008547 02:8537: 60        .byte $60   ; 
- D 0 - I - 0x008548 02:8538: 6C        .byte $6C   ; 
- D 0 - I - 0x008549 02:8539: 6C        .byte $6C   ; 
- D 0 - I - 0x00854A 02:853A: 6C        .byte $6C   ; 
- D 0 - I - 0x00854B 02:853B: 6C        .byte $6C   ; 
- D 0 - I - 0x00854C 02:853C: 6C        .byte $6C   ; 
- D 0 - I - 0x00854D 02:853D: 6C        .byte $6C   ; 
- D 0 - I - 0x00854E 02:853E: 6E        .byte $6E   ; 
off_853F_15:
- - - - - - 0x00854F 02:853F: 00        .byte $00   ; 
- - - - - - 0x008550 02:8540: 00        .byte $00   ; 
- - - - - - 0x008551 02:8541: 00        .byte $00   ; 
- - - - - - 0x008552 02:8542: 00        .byte $00   ; 
- - - - - - 0x008553 02:8543: 00        .byte $00   ; 
- - - - - - 0x008554 02:8544: 00        .byte $00   ; 
- - - - - - 0x008555 02:8545: 00        .byte $00   ; 
- - - - - - 0x008556 02:8546: 00        .byte $00   ; 
- - - - - - 0x008557 02:8547: 00        .byte $00   ; 
- D 0 - I - 0x008558 02:8548: 00        .byte $00   ; 
- D 0 - I - 0x008559 02:8549: 00        .byte $00   ; 
- D 0 - I - 0x00855A 02:854A: 00        .byte $00   ; 
- D 0 - I - 0x00855B 02:854B: B0        .byte $B0   ; 
- D 0 - I - 0x00855C 02:854C: D5        .byte $D5   ; 
- D 0 - I - 0x00855D 02:854D: D6        .byte $D6   ; 
- D 0 - I - 0x00855E 02:854E: D6        .byte $D6   ; 
- D 0 - I - 0x00855F 02:854F: D7        .byte $D7   ; 
- D 0 - I - 0x008560 02:8550: 25        .byte $25   ; 
- D 0 - I - 0x008561 02:8551: 00        .byte $00   ; 
- D 0 - I - 0x008562 02:8552: 00        .byte $00   ; 
- D 0 - I - 0x008563 02:8553: 14        .byte $14   ; 
- D 0 - I - 0x008564 02:8554: 00        .byte $00   ; 
- D 0 - I - 0x008565 02:8555: 27        .byte $27   ; 
- D 0 - I - 0x008566 02:8556: 1C        .byte $1C   ; 
- D 0 - I - 0x008567 02:8557: 00        .byte $00   ; 
- D 0 - I - 0x008568 02:8558: 00        .byte $00   ; 
- D 0 - I - 0x008569 02:8559: 00        .byte $00   ; 
- D 0 - I - 0x00856A 02:855A: 00        .byte $00   ; 
- D 0 - I - 0x00856B 02:855B: 00        .byte $00   ; 
- D 0 - I - 0x00856C 02:855C: 24        .byte $24   ; 
- D 0 - I - 0x00856D 02:855D: 1D        .byte $1D   ; 
- D 0 - I - 0x00856E 02:855E: 1E        .byte $1E   ; 
off_855F_16:
- - - - - - 0x00856F 02:855F: 00        .byte $00   ; 
- - - - - - 0x008570 02:8560: 00        .byte $00   ; 
- - - - - - 0x008571 02:8561: 00        .byte $00   ; 
- - - - - - 0x008572 02:8562: 00        .byte $00   ; 
- - - - - - 0x008573 02:8563: 00        .byte $00   ; 
- - - - - - 0x008574 02:8564: 00        .byte $00   ; 
- - - - - - 0x008575 02:8565: 00        .byte $00   ; 
- - - - - - 0x008576 02:8566: 00        .byte $00   ; 
- - - - - - 0x008577 02:8567: 00        .byte $00   ; 
- D 0 - I - 0x008578 02:8568: 00        .byte $00   ; 
- D 0 - I - 0x008579 02:8569: 00        .byte $00   ; 
- D 0 - I - 0x00857A 02:856A: 00        .byte $00   ; 
- D 0 - I - 0x00857B 02:856B: 99        .byte $99   ; 
- D 0 - I - 0x00857C 02:856C: 9A        .byte $9A   ; 
- D 0 - I - 0x00857D 02:856D: D6        .byte $D6   ; 
- D 0 - I - 0x00857E 02:856E: D6        .byte $D6   ; 
- D 0 - I - 0x00857F 02:856F: D7        .byte $D7   ; 
- D 0 - I - 0x008580 02:8570: 24        .byte $24   ; 
- D 0 - I - 0x008581 02:8571: 00        .byte $00   ; 
- D 0 - I - 0x008582 02:8572: 00        .byte $00   ; 
- D 0 - I - 0x008583 02:8573: 00        .byte $00   ; 
- D 0 - I - 0x008584 02:8574: 00        .byte $00   ; 
- D 0 - I - 0x008585 02:8575: 1B        .byte $1B   ; 
- D 0 - I - 0x008586 02:8576: 20        .byte $20   ; 
- D 0 - I - 0x008587 02:8577: 00        .byte $00   ; 
- D 0 - I - 0x008588 02:8578: 14        .byte $14   ; 
- D 0 - I - 0x008589 02:8579: 00        .byte $00   ; 
- D 0 - I - 0x00858A 02:857A: 00        .byte $00   ; 
- D 0 - I - 0x00858B 02:857B: 00        .byte $00   ; 
- D 0 - I - 0x00858C 02:857C: 23        .byte $23   ; 
- D 0 - I - 0x00858D 02:857D: 00        .byte $00   ; 
- D 0 - I - 0x00858E 02:857E: 0F        .byte $0F   ; 
off_857F_19:
- - - - - - 0x00858F 02:857F: 00        .byte $00   ; 
- - - - - - 0x008590 02:8580: 00        .byte $00   ; 
- - - - - - 0x008591 02:8581: 00        .byte $00   ; 
- - - - - - 0x008592 02:8582: 14        .byte $14   ; 
- - - - - - 0x008593 02:8583: 00        .byte $00   ; 
- - - - - - 0x008594 02:8584: 00        .byte $00   ; 
- - - - - - 0x008595 02:8585: 00        .byte $00   ; 
- - - - - - 0x008596 02:8586: 00        .byte $00   ; 
- - - - - - 0x008597 02:8587: 14        .byte $14   ; 
- D 0 - I - 0x008598 02:8588: 00        .byte $00   ; 
- D 0 - I - 0x008599 02:8589: 00        .byte $00   ; 
- D 0 - I - 0x00859A 02:858A: 00        .byte $00   ; 
- D 0 - I - 0x00859B 02:858B: B9        .byte $B9   ; 
- D 0 - I - 0x00859C 02:858C: D6        .byte $D6   ; 
- D 0 - I - 0x00859D 02:858D: D6        .byte $D6   ; 
- D 0 - I - 0x00859E 02:858E: D6        .byte $D6   ; 
- D 0 - I - 0x00859F 02:858F: D7        .byte $D7   ; 
- D 0 - I - 0x0085A0 02:8590: 21        .byte $21   ; 
- D 0 - I - 0x0085A1 02:8591: 00        .byte $00   ; 
- D 0 - I - 0x0085A2 02:8592: 00        .byte $00   ; 
- D 0 - I - 0x0085A3 02:8593: 00        .byte $00   ; 
- D 0 - I - 0x0085A4 02:8594: 00        .byte $00   ; 
- D 0 - I - 0x0085A5 02:8595: 24        .byte $24   ; 
- D 0 - I - 0x0085A6 02:8596: 00        .byte $00   ; 
- D 0 - I - 0x0085A7 02:8597: 00        .byte $00   ; 
- D 0 - I - 0x0085A8 02:8598: 00        .byte $00   ; 
- D 0 - I - 0x0085A9 02:8599: 00        .byte $00   ; 
- D 0 - I - 0x0085AA 02:859A: 00        .byte $00   ; 
- D 0 - I - 0x0085AB 02:859B: 27        .byte $27   ; 
- D 0 - I - 0x0085AC 02:859C: 1C        .byte $1C   ; 
- D 0 - I - 0x0085AD 02:859D: 00        .byte $00   ; 
- D 0 - I - 0x0085AE 02:859E: 3F        .byte $3F   ; 
off_859F_1A:
- - - - - - 0x0085AF 02:859F: 00        .byte $00   ; 
- - - - - - 0x0085B0 02:85A0: 00        .byte $00   ; 
- - - - - - 0x0085B1 02:85A1: 00        .byte $00   ; 
- - - - - - 0x0085B2 02:85A2: 00        .byte $00   ; 
- - - - - - 0x0085B3 02:85A3: 00        .byte $00   ; 
- - - - - - 0x0085B4 02:85A4: 00        .byte $00   ; 
- - - - - - 0x0085B5 02:85A5: 00        .byte $00   ; 
- - - - - - 0x0085B6 02:85A6: 00        .byte $00   ; 
- - - - - - 0x0085B7 02:85A7: 00        .byte $00   ; 
- D 0 - I - 0x0085B8 02:85A8: 00        .byte $00   ; 
- D 0 - I - 0x0085B9 02:85A9: 00        .byte $00   ; 
- D 0 - I - 0x0085BA 02:85AA: 00        .byte $00   ; 
- D 0 - I - 0x0085BB 02:85AB: C9        .byte $C9   ; 
- D 0 - I - 0x0085BC 02:85AC: D6        .byte $D6   ; 
- D 0 - I - 0x0085BD 02:85AD: D6        .byte $D6   ; 
- D 0 - I - 0x0085BE 02:85AE: D6        .byte $D6   ; 
- D 0 - I - 0x0085BF 02:85AF: BA        .byte $BA   ; 
- D 0 - I - 0x0085C0 02:85B0: 1C        .byte $1C   ; 
- D 0 - I - 0x0085C1 02:85B1: 00        .byte $00   ; 
- D 0 - I - 0x0085C2 02:85B2: 00        .byte $00   ; 
- D 0 - I - 0x0085C3 02:85B3: 00        .byte $00   ; 
- D 0 - I - 0x0085C4 02:85B4: 00        .byte $00   ; 
- D 0 - I - 0x0085C5 02:85B5: 23        .byte $23   ; 
- D 0 - I - 0x0085C6 02:85B6: 00        .byte $00   ; 
- D 0 - I - 0x0085C7 02:85B7: 00        .byte $00   ; 
- D 0 - I - 0x0085C8 02:85B8: 00        .byte $00   ; 
- D 0 - I - 0x0085C9 02:85B9: 00        .byte $00   ; 
- D 0 - I - 0x0085CA 02:85BA: 15        .byte $15   ; 
- D 0 - I - 0x0085CB 02:85BB: 1B        .byte $1B   ; 
- D 0 - I - 0x0085CC 02:85BC: 20        .byte $20   ; 
- D 0 - I - 0x0085CD 02:85BD: 2D        .byte $2D   ; 
- D 0 - I - 0x0085CE 02:85BE: 2E        .byte $2E   ; 
off_85BF_11:
- D 0 - I - 0x0085CF 02:85BF: 00        .byte $00   ; 
- D 0 - I - 0x0085D0 02:85C0: 00        .byte $00   ; 
- D 0 - I - 0x0085D1 02:85C1: 44        .byte $44   ; 
- D 0 - I - 0x0085D2 02:85C2: 5A        .byte $5A   ; 
- D 0 - I - 0x0085D3 02:85C3: 7A        .byte $7A   ; 
- D 0 - I - 0x0085D4 02:85C4: 6C        .byte $6C   ; 
- D 0 - I - 0x0085D5 02:85C5: 6C        .byte $6C   ; 
- D 0 - I - 0x0085D6 02:85C6: 78        .byte $78   ; 
- D 0 - I - 0x0085D7 02:85C7: 5C        .byte $5C   ; 
- D 0 - I - 0x0085D8 02:85C8: 46        .byte $46   ; 
- D 0 - I - 0x0085D9 02:85C9: 00        .byte $00   ; 
- D 0 - I - 0x0085DA 02:85CA: 00        .byte $00   ; 
- D 0 - I - 0x0085DB 02:85CB: 00        .byte $00   ; 
- D 0 - I - 0x0085DC 02:85CC: 00        .byte $00   ; 
- D 0 - I - 0x0085DD 02:85CD: 60        .byte $60   ; 
- D 0 - I - 0x0085DE 02:85CE: 6C        .byte $6C   ; 
- D 0 - I - 0x0085DF 02:85CF: 6E        .byte $6E   ; 
- D 0 - I - 0x0085E0 02:85D0: 6C        .byte $6C   ; 
- D 0 - I - 0x0085E1 02:85D1: 6C        .byte $6C   ; 
- D 0 - I - 0x0085E2 02:85D2: 66        .byte $66   ; 
- D 0 - I - 0x0085E3 02:85D3: 4A        .byte $4A   ; 
- D 0 - I - 0x0085E4 02:85D4: 00        .byte $00   ; 
- D 0 - I - 0x0085E5 02:85D5: 00        .byte $00   ; 
- D 0 - I - 0x0085E6 02:85D6: 00        .byte $00   ; 
- D 0 - I - 0x0085E7 02:85D7: 00        .byte $00   ; 
- D 0 - I - 0x0085E8 02:85D8: 14        .byte $14   ; 
- D 0 - I - 0x0085E9 02:85D9: 00        .byte $00   ; 
- D 0 - I - 0x0085EA 02:85DA: 00        .byte $00   ; 
- D 0 - I - 0x0085EB 02:85DB: 00        .byte $00   ; 
- D 0 - I - 0x0085EC 02:85DC: 00        .byte $00   ; 
- D 0 - I - 0x0085ED 02:85DD: 00        .byte $00   ; 
- D 0 - I - 0x0085EE 02:85DE: 1B        .byte $1B   ; 
off_85DF_12:
- D 0 - I - 0x0085EF 02:85DF: 00        .byte $00   ; 
- D 0 - I - 0x0085F0 02:85E0: 00        .byte $00   ; 
- D 0 - I - 0x0085F1 02:85E1: 00        .byte $00   ; 
- D 0 - I - 0x0085F2 02:85E2: 4C        .byte $4C   ; 
- D 0 - I - 0x0085F3 02:85E3: 60        .byte $60   ; 
- D 0 - I - 0x0085F4 02:85E4: 6C        .byte $6C   ; 
- D 0 - I - 0x0085F5 02:85E5: 6C        .byte $6C   ; 
- D 0 - I - 0x0085F6 02:85E6: 66        .byte $66   ; 
- D 0 - I - 0x0085F7 02:85E7: 4E        .byte $4E   ; 
- D 0 - I - 0x0085F8 02:85E8: 00        .byte $00   ; 
- D 0 - I - 0x0085F9 02:85E9: 00        .byte $00   ; 
- D 0 - I - 0x0085FA 02:85EA: 00        .byte $00   ; 
- D 0 - I - 0x0085FB 02:85EB: 14        .byte $14   ; 
- D 0 - I - 0x0085FC 02:85EC: 00        .byte $00   ; 
- D 0 - I - 0x0085FD 02:85ED: 60        .byte $60   ; 
- D 0 - I - 0x0085FE 02:85EE: 6C        .byte $6C   ; 
- D 0 - I - 0x0085FF 02:85EF: 6C        .byte $6C   ; 
- D 0 - I - 0x008600 02:85F0: 6C        .byte $6C   ; 
- D 0 - I - 0x008601 02:85F1: 6C        .byte $6C   ; 
- D 0 - I - 0x008602 02:85F2: 7C        .byte $7C   ; 
- D 0 - I - 0x008603 02:85F3: 54        .byte $54   ; 
- D 0 - I - 0x008604 02:85F4: 42        .byte $42   ; 
- D 0 - I - 0x008605 02:85F5: 00        .byte $00   ; 
- D 0 - I - 0x008606 02:85F6: 00        .byte $00   ; 
- D 0 - I - 0x008607 02:85F7: 00        .byte $00   ; 
- D 0 - I - 0x008608 02:85F8: 00        .byte $00   ; 
- D 0 - I - 0x008609 02:85F9: 00        .byte $00   ; 
- D 0 - I - 0x00860A 02:85FA: 00        .byte $00   ; 
- D 0 - I - 0x00860B 02:85FB: 00        .byte $00   ; 
- D 0 - I - 0x00860C 02:85FC: 00        .byte $00   ; 
- D 0 - I - 0x00860D 02:85FD: 00        .byte $00   ; 
- D 0 - I - 0x00860E 02:85FE: 1B        .byte $1B   ; 
off_85FF_15:
- D 0 - I - 0x00860F 02:85FF: 00        .byte $00   ; 
- D 0 - I - 0x008610 02:8600: 00        .byte $00   ; 
- D 0 - I - 0x008611 02:8601: 60        .byte $60   ; 
- D 0 - I - 0x008612 02:8602: 6C        .byte $6C   ; 
- D 0 - I - 0x008613 02:8603: 6C        .byte $6C   ; 
- D 0 - I - 0x008614 02:8604: 78        .byte $78   ; 
- D 0 - I - 0x008615 02:8605: 5C        .byte $5C   ; 
- D 0 - I - 0x008616 02:8606: 46        .byte $46   ; 
- D 0 - I - 0x008617 02:8607: 00        .byte $00   ; 
- D 0 - I - 0x008618 02:8608: 00        .byte $00   ; 
- D 0 - I - 0x008619 02:8609: 00        .byte $00   ; 
- D 0 - I - 0x00861A 02:860A: 00        .byte $00   ; 
- D 0 - I - 0x00861B 02:860B: 00        .byte $00   ; 
- D 0 - I - 0x00861C 02:860C: 00        .byte $00   ; 
- D 0 - I - 0x00861D 02:860D: 44        .byte $44   ; 
- D 0 - I - 0x00861E 02:860E: 5A        .byte $5A   ; 
- D 0 - I - 0x00861F 02:860F: 7A        .byte $7A   ; 
- D 0 - I - 0x008620 02:8610: 6C        .byte $6C   ; 
- D 0 - I - 0x008621 02:8611: 6C        .byte $6C   ; 
- D 0 - I - 0x008622 02:8612: 6C        .byte $6C   ; 
- D 0 - I - 0x008623 02:8613: 6C        .byte $6C   ; 
- D 0 - I - 0x008624 02:8614: 66        .byte $66   ; 
- D 0 - I - 0x008625 02:8615: 4A        .byte $4A   ; 
- D 0 - I - 0x008626 02:8616: 00        .byte $00   ; 
- D 0 - I - 0x008627 02:8617: 00        .byte $00   ; 
- D 0 - I - 0x008628 02:8618: 00        .byte $00   ; 
- D 0 - I - 0x008629 02:8619: 00        .byte $00   ; 
- D 0 - I - 0x00862A 02:861A: 00        .byte $00   ; 
- D 0 - I - 0x00862B 02:861B: 19        .byte $19   ; 
- D 0 - I - 0x00862C 02:861C: 1A        .byte $1A   ; 
- D 0 - I - 0x00862D 02:861D: 00        .byte $00   ; 
- D 0 - I - 0x00862E 02:861E: 1B        .byte $1B   ; 
off_861F_16:
- D 0 - I - 0x00862F 02:861F: 00        .byte $00   ; 
- D 0 - I - 0x008630 02:8620: 00        .byte $00   ; 
- D 0 - I - 0x008631 02:8621: 60        .byte $60   ; 
- D 0 - I - 0x008632 02:8622: 6C        .byte $6C   ; 
- D 0 - I - 0x008633 02:8623: 6C        .byte $6C   ; 
- D 0 - I - 0x008634 02:8624: 66        .byte $66   ; 
- D 0 - I - 0x008635 02:8625: 4E        .byte $4E   ; 
- D 0 - I - 0x008636 02:8626: 00        .byte $00   ; 
- D 0 - I - 0x008637 02:8627: 00        .byte $00   ; 
- D 0 - I - 0x008638 02:8628: 00        .byte $00   ; 
- D 0 - I - 0x008639 02:8629: 00        .byte $00   ; 
- D 0 - I - 0x00863A 02:862A: 00        .byte $00   ; 
- D 0 - I - 0x00863B 02:862B: 00        .byte $00   ; 
- D 0 - I - 0x00863C 02:862C: 00        .byte $00   ; 
- D 0 - I - 0x00863D 02:862D: 00        .byte $00   ; 
- D 0 - I - 0x00863E 02:862E: 4C        .byte $4C   ; 
- D 0 - I - 0x00863F 02:862F: 60        .byte $60   ; 
- D 0 - I - 0x008640 02:8630: 6E        .byte $6E   ; 
- D 0 - I - 0x008641 02:8631: 6C        .byte $6C   ; 
- D 0 - I - 0x008642 02:8632: 6C        .byte $6C   ; 
- D 0 - I - 0x008643 02:8633: 6C        .byte $6C   ; 
- D 0 - I - 0x008644 02:8634: 7C        .byte $7C   ; 
- D 0 - I - 0x008645 02:8635: 54        .byte $54   ; 
- D 0 - I - 0x008646 02:8636: 54        .byte $54   ; 
- D 0 - I - 0x008647 02:8637: 54        .byte $54   ; 
- D 0 - I - 0x008648 02:8638: 42        .byte $42   ; 
- D 0 - I - 0x008649 02:8639: 00        .byte $00   ; 
- D 0 - I - 0x00864A 02:863A: 00        .byte $00   ; 
- D 0 - I - 0x00864B 02:863B: 08        .byte $08   ; 
- D 0 - I - 0x00864C 02:863C: 00        .byte $00   ; 
- D 0 - I - 0x00864D 02:863D: 00        .byte $00   ; 
- D 0 - I - 0x00864E 02:863E: 1B        .byte $1B   ; 
off_863F_01:
- - - - - - 0x00864F 02:863F: 00        .byte $00   ; 
- - - - - - 0x008650 02:8640: 00        .byte $00   ; 
- - - - - - 0x008651 02:8641: 00        .byte $00   ; 
- - - - - - 0x008652 02:8642: 00        .byte $00   ; 
- D 0 - I - 0x008653 02:8643: 00        .byte $00   ; 
- D 0 - I - 0x008654 02:8644: 00        .byte $00   ; 
- D 0 - I - 0x008655 02:8645: 00        .byte $00   ; 
- D 0 - I - 0x008656 02:8646: 00        .byte $00   ; 
- D 0 - I - 0x008657 02:8647: 00        .byte $00   ; 
- D 0 - I - 0x008658 02:8648: 00        .byte $00   ; 
- D 0 - I - 0x008659 02:8649: 00        .byte $00   ; 
- D 0 - I - 0x00865A 02:864A: 00        .byte $00   ; 
- D 0 - I - 0x00865B 02:864B: 00        .byte $00   ; 
- D 0 - I - 0x00865C 02:864C: 00        .byte $00   ; 
- D 0 - I - 0x00865D 02:864D: 00        .byte $00   ; 
- D 0 - I - 0x00865E 02:864E: 00        .byte $00   ; 
- D 0 - I - 0x00865F 02:864F: 50        .byte $50   ; 
- D 0 - I - 0x008660 02:8650: 50        .byte $50   ; 
- D 0 - I - 0x008661 02:8651: 00        .byte $00   ; 
- D 0 - I - 0x008662 02:8652: 00        .byte $00   ; 
- D 0 - I - 0x008663 02:8653: 00        .byte $00   ; 
- D 0 - I - 0x008664 02:8654: 55        .byte $55   ; 
- D 0 - I - 0x008665 02:8655: 55        .byte $55   ; 
- D 0 - I - 0x008666 02:8656: 55        .byte $55   ; 
- D 0 - I - 0x008667 02:8657: 55        .byte $55   ; 
- D 0 - I - 0x008668 02:8658: 55        .byte $55   ; 
- D 0 - I - 0x008669 02:8659: 11        .byte $11   ; 
- D 0 - I - 0x00866A 02:865A: 00        .byte $00   ; 
- D 0 - I - 0x00866B 02:865B: 00        .byte $00   ; 
- D 0 - I - 0x00866C 02:865C: 04        .byte $04   ; 
- D 0 - I - 0x00866D 02:865D: 45        .byte $45   ; 
- D 0 - I - 0x00866E 02:865E: 55        .byte $55   ; 
- D 0 - I - 0x00866F 02:865F: 45        .byte $45   ; 
- D 0 - I - 0x008670 02:8660: 55        .byte $55   ; 
- D 0 - I - 0x008671 02:8661: 11        .byte $11   ; 
- D 0 - I - 0x008672 02:8662: 44        .byte $44   ; 
- D 0 - I - 0x008673 02:8663: 55        .byte $55   ; 
- D 0 - I - 0x008674 02:8664: 11        .byte $11   ; 
- D 0 - I - 0x008675 02:8665: 00        .byte $00   ; 
- D 0 - I - 0x008676 02:8666: 00        .byte $00   ; 
- D 0 - I - 0x008677 02:8667: 44        .byte $44   ; 
- D 0 - I - 0x008678 02:8668: 55        .byte $55   ; 
- D 0 - I - 0x008679 02:8669: 00        .byte $00   ; 
- D 0 - I - 0x00867A 02:866A: 44        .byte $44   ; 
- D 0 - I - 0x00867B 02:866B: 55        .byte $55   ; 
- D 0 - I - 0x00867C 02:866C: 55        .byte $55   ; 
- D 0 - I - 0x00867D 02:866D: 10        .byte $10   ; 
- D 0 - I - 0x00867E 02:866E: 00        .byte $00   ; 
- D 0 - I - 0x00867F 02:866F: 04        .byte $04   ; 
- D 0 - I - 0x008680 02:8670: 01        .byte $01   ; 
- D 0 - I - 0x008681 02:8671: 00        .byte $00   ; 
- D 0 - I - 0x008682 02:8672: 54        .byte $54   ; 
- D 0 - I - 0x008683 02:8673: 55        .byte $55   ; 
- D 0 - I - 0x008684 02:8674: 55        .byte $55   ; 
- D 0 - I - 0x008685 02:8675: 11        .byte $11   ; 
- D 0 - I - 0x008686 02:8676: 00        .byte $00   ; 
- D 0 - I - 0x008687 02:8677: 00        .byte $00   ; 
- D 0 - I - 0x008688 02:8678: 00        .byte $00   ; 
- D 0 - I - 0x008689 02:8679: 00        .byte $00   ; 
- D 0 - I - 0x00868A 02:867A: 05        .byte $05   ; 
- D 0 - I - 0x00868B 02:867B: 05        .byte $05   ; 
- D 0 - I - 0x00868C 02:867C: 05        .byte $05   ; 
- D 0 - I - 0x00868D 02:867D: 00        .byte $00   ; 
- D 0 - I - 0x00868E 02:867E: 00        .byte $00   ; 
off_867F_06:
- D 0 - I - 0x00868F 02:867F: 07        .byte $07   ; 
- D 0 - I - 0x008690 02:8680: 10        .byte $10   ; 
- D 0 - I - 0x008691 02:8681: 10        .byte $10   ; 
- D 0 - I - 0x008692 02:8682: 10        .byte $10   ; 
- D 0 - I - 0x008693 02:8683: 10        .byte $10   ; 
- D 0 - I - 0x008694 02:8684: 10        .byte $10   ; 
- D 0 - I - 0x008695 02:8685: 10        .byte $10   ; 
- D 0 - I - 0x008696 02:8686: 10        .byte $10   ; 
- D 0 - I - 0x008697 02:8687: 10        .byte $10   ; 
- D 0 - I - 0x008698 02:8688: 10        .byte $10   ; 
- D 0 - I - 0x008699 02:8689: 10        .byte $10   ; 
- D 0 - I - 0x00869A 02:868A: 10        .byte $10   ; 
- D 0 - I - 0x00869B 02:868B: 62        .byte $62   ; 
- D 0 - I - 0x00869C 02:868C: 76        .byte $76   ; 
- D 0 - I - 0x00869D 02:868D: 76        .byte $76   ; 
- D 0 - I - 0x00869E 02:868E: 76        .byte $76   ; 
- D 0 - I - 0x00869F 02:868F: 76        .byte $76   ; 
- D 0 - I - 0x0086A0 02:8690: 64        .byte $64   ; 
off_8691_06:
- D 0 - I - 0x0086A1 02:8691: 10        .byte $10   ; 
- D 0 - I - 0x0086A2 02:8692: 10        .byte $10   ; 
- D 0 - I - 0x0086A3 02:8693: 10        .byte $10   ; 
- D 0 - I - 0x0086A4 02:8694: 10        .byte $10   ; 
- D 0 - I - 0x0086A5 02:8695: 10        .byte $10   ; 
- D 0 - I - 0x0086A6 02:8696: 10        .byte $10   ; 
- D 0 - I - 0x0086A7 02:8697: 10        .byte $10   ; 
- D 0 - I - 0x0086A8 02:8698: 10        .byte $10   ; 
- D 0 - I - 0x0086A9 02:8699: 10        .byte $10   ; 
- D 0 - I - 0x0086AA 02:869A: 10        .byte $10   ; 
- D 0 - I - 0x0086AB 02:869B: 10        .byte $10   ; 
- D 0 - I - 0x0086AC 02:869C: 10        .byte $10   ; 
- D 0 - I - 0x0086AD 02:869D: 10        .byte $10   ; 
- D 0 - I - 0x0086AE 02:869E: 10        .byte $10   ; 
- D 0 - I - 0x0086AF 02:869F: 10        .byte $10   ; 
- D 0 - I - 0x0086B0 02:86A0: 10        .byte $10   ; 
- D 0 - I - 0x0086B1 02:86A1: 10        .byte $10   ; 
- D 0 - I - 0x0086B2 02:86A2: 10        .byte $10   ; 
- D 0 - I - 0x0086B3 02:86A3: 10        .byte $10   ; 
- D 0 - I - 0x0086B4 02:86A4: 10        .byte $10   ; 
- D 0 - I - 0x0086B5 02:86A5: 10        .byte $10   ; 
- D 0 - I - 0x0086B6 02:86A6: 10        .byte $10   ; 
- D 0 - I - 0x0086B7 02:86A7: 10        .byte $10   ; 
- D 0 - I - 0x0086B8 02:86A8: 10        .byte $10   ; 
- D 0 - I - 0x0086B9 02:86A9: 10        .byte $10   ; 
- D 0 - I - 0x0086BA 02:86AA: 10        .byte $10   ; 
- D 0 - I - 0x0086BB 02:86AB: 10        .byte $10   ; 
- D 0 - I - 0x0086BC 02:86AC: 10        .byte $10   ; 
- D 0 - I - 0x0086BD 02:86AD: 10        .byte $10   ; 
- D 0 - I - 0x0086BE 02:86AE: 10        .byte $10   ; 
- D 0 - I - 0x0086BF 02:86AF: 10        .byte $10   ; 
- D 0 - I - 0x0086C0 02:86B0: 06        .byte $06   ; 
off_86B1_07:
- D 0 - I - 0x0086C1 02:86B1: 2C        .byte $2C   ; 
- D 0 - I - 0x0086C2 02:86B2: 04        .byte $04   ; 
- D 0 - I - 0x0086C3 02:86B3: 04        .byte $04   ; 
- D 0 - I - 0x0086C4 02:86B4: 04        .byte $04   ; 
- D 0 - I - 0x0086C5 02:86B5: 04        .byte $04   ; 
- D 0 - I - 0x0086C6 02:86B6: 04        .byte $04   ; 
- D 0 - I - 0x0086C7 02:86B7: 04        .byte $04   ; 
- D 0 - I - 0x0086C8 02:86B8: 04        .byte $04   ; 
- D 0 - I - 0x0086C9 02:86B9: 04        .byte $04   ; 
- D 0 - I - 0x0086CA 02:86BA: 04        .byte $04   ; 
- D 0 - I - 0x0086CB 02:86BB: 04        .byte $04   ; 
- D 0 - I - 0x0086CC 02:86BC: 04        .byte $04   ; 
- D 0 - I - 0x0086CD 02:86BD: 61        .byte $61   ; 
- D 0 - I - 0x0086CE 02:86BE: 6D        .byte $6D   ; 
- D 0 - I - 0x0086CF 02:86BF: 6D        .byte $6D   ; 
- D 0 - I - 0x0086D0 02:86C0: 71        .byte $71   ; 
- D 0 - I - 0x0086D1 02:86C1: 6D        .byte $6D   ; 
- D 0 - I - 0x0086D2 02:86C2: 67        .byte $67   ; 
off_86C3_05:
- D 0 - I - 0x0086D3 02:86C3: 04        .byte $04   ; 
off_86C4_07:
- D 0 - I - 0x0086D4 02:86C4: 04        .byte $04   ; 
- D 0 - I - 0x0086D5 02:86C5: 04        .byte $04   ; 
- D 0 - I - 0x0086D6 02:86C6: 04        .byte $04   ; 
- D 0 - I - 0x0086D7 02:86C7: 04        .byte $04   ; 
- D 0 - I - 0x0086D8 02:86C8: 04        .byte $04   ; 
- D 0 - I - 0x0086D9 02:86C9: 04        .byte $04   ; 
- D 0 - I - 0x0086DA 02:86CA: 04        .byte $04   ; 
- D 0 - I - 0x0086DB 02:86CB: 04        .byte $04   ; 
- D 0 - I - 0x0086DC 02:86CC: 04        .byte $04   ; 
- D 0 - I - 0x0086DD 02:86CD: 04        .byte $04   ; 
- D 0 - I - 0x0086DE 02:86CE: 04        .byte $04   ; 
- D 0 - I - 0x0086DF 02:86CF: 04        .byte $04   ; 
- D 0 - I - 0x0086E0 02:86D0: 04        .byte $04   ; 
- D 0 - I - 0x0086E1 02:86D1: 04        .byte $04   ; 
- D 0 - I - 0x0086E2 02:86D2: 04        .byte $04   ; 
- D 0 - I - 0x0086E3 02:86D3: 04        .byte $04   ; 
- D 0 - I - 0x0086E4 02:86D4: 04        .byte $04   ; 
- D 0 - I - 0x0086E5 02:86D5: 04        .byte $04   ; 
- D 0 - I - 0x0086E6 02:86D6: 04        .byte $04   ; 
- D 0 - I - 0x0086E7 02:86D7: 04        .byte $04   ; 
- D 0 - I - 0x0086E8 02:86D8: 04        .byte $04   ; 
- D 0 - I - 0x0086E9 02:86D9: 04        .byte $04   ; 
- D 0 - I - 0x0086EA 02:86DA: 04        .byte $04   ; 
- D 0 - I - 0x0086EB 02:86DB: 04        .byte $04   ; 
- D 0 - I - 0x0086EC 02:86DC: 04        .byte $04   ; 
- D 0 - I - 0x0086ED 02:86DD: 04        .byte $04   ; 
- D 0 - I - 0x0086EE 02:86DE: 04        .byte $04   ; 
- D 0 - I - 0x0086EF 02:86DF: 04        .byte $04   ; 
- D 0 - I - 0x0086F0 02:86E0: 04        .byte $04   ; 
- D 0 - I - 0x0086F1 02:86E1: 04        .byte $04   ; 
- D 0 - I - 0x0086F2 02:86E2: 04        .byte $04   ; 
- D 0 - I - 0x0086F3 02:86E3: 2B        .byte $2B   ; 
off_86E4_08:
- D 0 - I - 0x0086F4 02:86E4: 53        .byte $53   ; 
- D 0 - I - 0x0086F5 02:86E5: 43        .byte $43   ; 
- D 0 - I - 0x0086F6 02:86E6: 04        .byte $04   ; 
- D 0 - I - 0x0086F7 02:86E7: 04        .byte $04   ; 
- D 0 - I - 0x0086F8 02:86E8: 04        .byte $04   ; 
- D 0 - I - 0x0086F9 02:86E9: 04        .byte $04   ; 
- D 0 - I - 0x0086FA 02:86EA: 04        .byte $04   ; 
- D 0 - I - 0x0086FB 02:86EB: 04        .byte $04   ; 
- D 0 - I - 0x0086FC 02:86EC: 04        .byte $04   ; 
- D 0 - I - 0x0086FD 02:86ED: 04        .byte $04   ; 
- D 0 - I - 0x0086FE 02:86EE: 04        .byte $04   ; 
- D 0 - I - 0x0086FF 02:86EF: 04        .byte $04   ; 
- D 0 - I - 0x008700 02:86F0: 61        .byte $61   ; 
- D 0 - I - 0x008701 02:86F1: 6D        .byte $6D   ; 
- D 0 - I - 0x008702 02:86F2: 6D        .byte $6D   ; 
- D 0 - I - 0x008703 02:86F3: 6D        .byte $6D   ; 
- D 0 - I - 0x008704 02:86F4: 6D        .byte $6D   ; 
- D 0 - I - 0x008705 02:86F5: 67        .byte $67   ; 
- D 0 - I - 0x008706 02:86F6: 04        .byte $04   ; 
off_86F7_08:
- D 0 - I - 0x008707 02:86F7: 04        .byte $04   ; 
- D 0 - I - 0x008708 02:86F8: 04        .byte $04   ; 
- D 0 - I - 0x008709 02:86F9: 04        .byte $04   ; 
- D 0 - I - 0x00870A 02:86FA: 04        .byte $04   ; 
- D 0 - I - 0x00870B 02:86FB: 04        .byte $04   ; 
- D 0 - I - 0x00870C 02:86FC: 04        .byte $04   ; 
- D 0 - I - 0x00870D 02:86FD: 04        .byte $04   ; 
- D 0 - I - 0x00870E 02:86FE: 16        .byte $16   ; 
- D 0 - I - 0x00870F 02:86FF: 04        .byte $04   ; 
- D 0 - I - 0x008710 02:8700: 04        .byte $04   ; 
- D 0 - I - 0x008711 02:8701: 04        .byte $04   ; 
- D 0 - I - 0x008712 02:8702: 04        .byte $04   ; 
- D 0 - I - 0x008713 02:8703: 04        .byte $04   ; 
- D 0 - I - 0x008714 02:8704: 16        .byte $16   ; 
- D 0 - I - 0x008715 02:8705: 04        .byte $04   ; 
- D 0 - I - 0x008716 02:8706: 04        .byte $04   ; 
- D 0 - I - 0x008717 02:8707: 17        .byte $17   ; 
- D 0 - I - 0x008718 02:8708: 04        .byte $04   ; 
- D 0 - I - 0x008719 02:8709: 04        .byte $04   ; 
- D 0 - I - 0x00871A 02:870A: 82        .byte $82   ; 
- D 0 - I - 0x00871B 02:870B: 83        .byte $83   ; 
- D 0 - I - 0x00871C 02:870C: 84        .byte $84   ; 
- D 0 - I - 0x00871D 02:870D: 04        .byte $04   ; 
- D 0 - I - 0x00871E 02:870E: 04        .byte $04   ; 
- D 0 - I - 0x00871F 02:870F: 04        .byte $04   ; 
- D 0 - I - 0x008720 02:8710: 4D        .byte $4D   ; 
- D 0 - I - 0x008721 02:8711: 61        .byte $61   ; 
- D 0 - I - 0x008722 02:8712: 6D        .byte $6D   ; 
- D 0 - I - 0x008723 02:8713: 6D        .byte $6D   ; 
- D 0 - I - 0x008724 02:8714: 67        .byte $67   ; 
- D 0 - I - 0x008725 02:8715: 04        .byte $04   ; 
- D 0 - I - 0x008726 02:8716: 04        .byte $04   ; 
off_8717_09:
- D 0 - I - 0x008727 02:8717: 73        .byte $73   ; 
- D 0 - I - 0x008728 02:8718: 66        .byte $66   ; 
- D 0 - I - 0x008729 02:8719: 4A        .byte $4A   ; 
- D 0 - I - 0x00872A 02:871A: 14        .byte $14   ; 
- D 0 - I - 0x00872B 02:871B: 00        .byte $00   ; 
- D 0 - I - 0x00872C 02:871C: 00        .byte $00   ; 
- D 0 - I - 0x00872D 02:871D: 00        .byte $00   ; 
- D 0 - I - 0x00872E 02:871E: 00        .byte $00   ; 
- D 0 - I - 0x00872F 02:871F: 00        .byte $00   ; 
- D 0 - I - 0x008730 02:8720: 14        .byte $14   ; 
- D 0 - I - 0x008731 02:8721: 00        .byte $00   ; 
- D 0 - I - 0x008732 02:8722: 48        .byte $48   ; 
- D 0 - I - 0x008733 02:8723: 60        .byte $60   ; 
- D 0 - I - 0x008734 02:8724: 6C        .byte $6C   ; 
- D 0 - I - 0x008735 02:8725: 6E        .byte $6E   ; 
- D 0 - I - 0x008736 02:8726: 6C        .byte $6C   ; 
- D 0 - I - 0x008737 02:8727: 6C        .byte $6C   ; 
- D 0 - I - 0x008738 02:8728: 66        .byte $66   ; 
- D 0 - I - 0x008739 02:8729: 4A        .byte $4A   ; 
- D 0 - I - 0x00873A 02:872A: 00        .byte $00   ; 
- D 0 - I - 0x00873B 02:872B: 00        .byte $00   ; 
- D 0 - I - 0x00873C 02:872C: 00        .byte $00   ; 
- D 0 - I - 0x00873D 02:872D: 00        .byte $00   ; 
- D 0 - I - 0x00873E 02:872E: 00        .byte $00   ; 
- D 0 - I - 0x00873F 02:872F: 15        .byte $15   ; 
- D 0 - I - 0x008740 02:8730: 00        .byte $00   ; 
off_8731_04:
- D 0 - I - 0x008741 02:8731: 00        .byte $00   ; 
- D 0 - I - 0x008742 02:8732: 00        .byte $00   ; 
- D 0 - I - 0x008743 02:8733: 00        .byte $00   ; 
- D 0 - I - 0x008744 02:8734: 00        .byte $00   ; 
- D 0 - I - 0x008745 02:8735: 00        .byte $00   ; 
- D 0 - I - 0x008746 02:8736: 14        .byte $14   ; 
- D 0 - I - 0x008747 02:8737: 00        .byte $00   ; 
- D 0 - I - 0x008748 02:8738: 00        .byte $00   ; 
- D 0 - I - 0x008749 02:8739: 00        .byte $00   ; 
- D 0 - I - 0x00874A 02:873A: 00        .byte $00   ; 
- D 0 - I - 0x00874B 02:873B: 00        .byte $00   ; 
- D 0 - I - 0x00874C 02:873C: 00        .byte $00   ; 
- D 0 - I - 0x00874D 02:873D: 00        .byte $00   ; 
- D 0 - I - 0x00874E 02:873E: 00        .byte $00   ; 
- D 0 - I - 0x00874F 02:873F: 00        .byte $00   ; 
off_8740_06:
- D 0 - I - 0x008750 02:8740: 00        .byte $00   ; 
- D 0 - I - 0x008751 02:8741: 00        .byte $00   ; 
- D 0 - I - 0x008752 02:8742: 00        .byte $00   ; 
- D 0 - I - 0x008753 02:8743: 14        .byte $14   ; 
- D 0 - I - 0x008754 02:8744: 00        .byte $00   ; 
- D 0 - I - 0x008755 02:8745: 00        .byte $00   ; 
- D 0 - I - 0x008756 02:8746: 00        .byte $00   ; 
- D 0 - I - 0x008757 02:8747: 00        .byte $00   ; 
- D 0 - I - 0x008758 02:8748: 00        .byte $00   ; 
- D 0 - I - 0x008759 02:8749: 00        .byte $00   ; 
- D 0 - I - 0x00875A 02:874A: 00        .byte $00   ; 
- D 0 - I - 0x00875B 02:874B: 00        .byte $00   ; 
- D 0 - I - 0x00875C 02:874C: 00        .byte $00   ; 
- D 0 - I - 0x00875D 02:874D: 00        .byte $00   ; 
- D 0 - I - 0x00875E 02:874E: 00        .byte $00   ; 
- D 0 - I - 0x00875F 02:874F: 00        .byte $00   ; 
- D 0 - I - 0x008760 02:8750: 00        .byte $00   ; 
- D 0 - I - 0x008761 02:8751: 00        .byte $00   ; 
- D 0 - I - 0x008762 02:8752: 00        .byte $00   ; 
- D 0 - I - 0x008763 02:8753: 80        .byte $80   ; 
- D 0 - I - 0x008764 02:8754: 10        .byte $10   ; 
- D 0 - I - 0x008765 02:8755: 81        .byte $81   ; 
off_8756_06:
- D 0 - I - 0x008766 02:8756: 10        .byte $10   ; 
- D 0 - I - 0x008767 02:8757: 10        .byte $10   ; 
- D 0 - I - 0x008768 02:8758: 10        .byte $10   ; 
- D 0 - I - 0x008769 02:8759: 10        .byte $10   ; 
- D 0 - I - 0x00876A 02:875A: 10        .byte $10   ; 
- D 0 - I - 0x00876B 02:875B: 10        .byte $10   ; 
- D 0 - I - 0x00876C 02:875C: 10        .byte $10   ; 
- D 0 - I - 0x00876D 02:875D: 10        .byte $10   ; 
- D 0 - I - 0x00876E 02:875E: 10        .byte $10   ; 
- D 0 - I - 0x00876F 02:875F: 10        .byte $10   ; 
- D 0 - I - 0x008770 02:8760: 80        .byte $80   ; 
- D 0 - I - 0x008771 02:8761: 10        .byte $10   ; 
- D 0 - I - 0x008772 02:8762: 81        .byte $81   ; 
- D 0 - I - 0x008773 02:8763: 00        .byte $00   ; 
off_8764_06:
- D 0 - I - 0x008774 02:8764: 00        .byte $00   ; 
- D 0 - I - 0x008775 02:8765: 00        .byte $00   ; 
- D 0 - I - 0x008776 02:8766: 00        .byte $00   ; 
- D 0 - I - 0x008777 02:8767: 14        .byte $14   ; 
- D 0 - I - 0x008778 02:8768: 00        .byte $00   ; 
- D 0 - I - 0x008779 02:8769: 00        .byte $00   ; 
- D 0 - I - 0x00877A 02:876A: 00        .byte $00   ; 
- D 0 - I - 0x00877B 02:876B: 00        .byte $00   ; 
- D 0 - I - 0x00877C 02:876C: 00        .byte $00   ; 
- D 0 - I - 0x00877D 02:876D: 00        .byte $00   ; 
- D 0 - I - 0x00877E 02:876E: 00        .byte $00   ; 
- D 0 - I - 0x00877F 02:876F: 00        .byte $00   ; 
- D 0 - I - 0x008780 02:8770: 00        .byte $00   ; 
- D 0 - I - 0x008781 02:8771: 00        .byte $00   ; 
- D 0 - I - 0x008782 02:8772: 00        .byte $00   ; 
- D 0 - I - 0x008783 02:8773: 00        .byte $00   ; 
- D 0 - I - 0x008784 02:8774: 00        .byte $00   ; 
- D 0 - I - 0x008785 02:8775: 00        .byte $00   ; 
- D 0 - I - 0x008786 02:8776: 00        .byte $00   ; 
- D 0 - I - 0x008787 02:8777: 80        .byte $80   ; 
- D 0 - I - 0x008788 02:8778: 10        .byte $10   ; 
- D 0 - I - 0x008789 02:8779: 81        .byte $81   ; 
- D 0 - I - 0x00878A 02:877A: 10        .byte $10   ; 
- D 0 - I - 0x00878B 02:877B: 10        .byte $10   ; 
- D 0 - I - 0x00878C 02:877C: 62        .byte $62   ; 
- D 0 - I - 0x00878D 02:877D: 76        .byte $76   ; 
- D 0 - I - 0x00878E 02:877E: 76        .byte $76   ; 
- D 0 - I - 0x00878F 02:877F: 76        .byte $76   ; 
- D 0 - I - 0x008790 02:8780: 76        .byte $76   ; 
- D 0 - I - 0x008791 02:8781: 64        .byte $64   ; 
- D 0 - I - 0x008792 02:8782: 10        .byte $10   ; 
- D 0 - I - 0x008793 02:8783: 10        .byte $10   ; 
off_8784_0A:
- D 0 - I - 0x008794 02:8784: 73        .byte $73   ; 
- D 0 - I - 0x008795 02:8785: 7C        .byte $7C   ; 
- D 0 - I - 0x008796 02:8786: 54        .byte $54   ; 
- D 0 - I - 0x008797 02:8787: 42        .byte $42   ; 
- D 0 - I - 0x008798 02:8788: 00        .byte $00   ; 
- D 0 - I - 0x008799 02:8789: 00        .byte $00   ; 
- D 0 - I - 0x00879A 02:878A: 40        .byte $40   ; 
- D 0 - I - 0x00879B 02:878B: 54        .byte $54   ; 
- D 0 - I - 0x00879C 02:878C: 54        .byte $54   ; 
- D 0 - I - 0x00879D 02:878D: 54        .byte $54   ; 
- D 0 - I - 0x00879E 02:878E: 54        .byte $54   ; 
- D 0 - I - 0x00879F 02:878F: 54        .byte $54   ; 
- D 0 - I - 0x0087A0 02:8790: 7E        .byte $7E   ; 
- D 0 - I - 0x0087A1 02:8791: 6C        .byte $6C   ; 
- D 0 - I - 0x0087A2 02:8792: 6C        .byte $6C   ; 
- D 0 - I - 0x0087A3 02:8793: 6C        .byte $6C   ; 
- D 0 - I - 0x0087A4 02:8794: 6C        .byte $6C   ; 
- D 0 - I - 0x0087A5 02:8795: 7C        .byte $7C   ; 
- D 0 - I - 0x0087A6 02:8796: 54        .byte $54   ; 
- D 0 - I - 0x0087A7 02:8797: 42        .byte $42   ; 
- D 0 - I - 0x0087A8 02:8798: 00        .byte $00   ; 
- D 0 - I - 0x0087A9 02:8799: 00        .byte $00   ; 
- D 0 - I - 0x0087AA 02:879A: 00        .byte $00   ; 
- D 0 - I - 0x0087AB 02:879B: 00        .byte $00   ; 
- D 0 - I - 0x0087AC 02:879C: 00        .byte $00   ; 
- D 0 - I - 0x0087AD 02:879D: 00        .byte $00   ; 
- D 0 - I - 0x0087AE 02:879E: 00        .byte $00   ; 
- D 0 - I - 0x0087AF 02:879F: 00        .byte $00   ; 
- D 0 - I - 0x0087B0 02:87A0: 40        .byte $40   ; 
off_87A1_0A:
- D 0 - I - 0x0087B1 02:87A1: 54        .byte $54   ; 
- D 0 - I - 0x0087B2 02:87A2: 54        .byte $54   ; 
- D 0 - I - 0x0087B3 02:87A3: 54        .byte $54   ; 
- D 0 - I - 0x0087B4 02:87A4: 54        .byte $54   ; 
- D 0 - I - 0x0087B5 02:87A5: 54        .byte $54   ; 
- D 0 - I - 0x0087B6 02:87A6: 42        .byte $42   ; 
- D 0 - I - 0x0087B7 02:87A7: 00        .byte $00   ; 
- D 0 - I - 0x0087B8 02:87A8: 00        .byte $00   ; 
- D 0 - I - 0x0087B9 02:87A9: 00        .byte $00   ; 
- D 0 - I - 0x0087BA 02:87AA: 00        .byte $00   ; 
- D 0 - I - 0x0087BB 02:87AB: 00        .byte $00   ; 
- D 0 - I - 0x0087BC 02:87AC: 00        .byte $00   ; 
- D 0 - I - 0x0087BD 02:87AD: 00        .byte $00   ; 
- D 0 - I - 0x0087BE 02:87AE: 00        .byte $00   ; 
- D 0 - I - 0x0087BF 02:87AF: 14        .byte $14   ; 
- D 0 - I - 0x0087C0 02:87B0: 00        .byte $00   ; 
- D 0 - I - 0x0087C1 02:87B1: 00        .byte $00   ; 
- D 0 - I - 0x0087C2 02:87B2: 00        .byte $00   ; 
- D 0 - I - 0x0087C3 02:87B3: 00        .byte $00   ; 
- D 0 - I - 0x0087C4 02:87B4: 00        .byte $00   ; 
- D 0 - I - 0x0087C5 02:87B5: 60        .byte $60   ; 
- D 0 - I - 0x0087C6 02:87B6: 6E        .byte $6E   ; 
- D 0 - I - 0x0087C7 02:87B7: 6C        .byte $6C   ; 
- D 0 - I - 0x0087C8 02:87B8: 6C        .byte $6C   ; 
- D 0 - I - 0x0087C9 02:87B9: 6C        .byte $6C   ; 
- D 0 - I - 0x0087CA 02:87BA: 7C        .byte $7C   ; 
- D 0 - I - 0x0087CB 02:87BB: 54        .byte $54   ; 
- D 0 - I - 0x0087CC 02:87BC: 54        .byte $54   ; 
- D 0 - I - 0x0087CD 02:87BD: 54        .byte $54   ; 
- D 0 - I - 0x0087CE 02:87BE: 54        .byte $54   ; 
- D 0 - I - 0x0087CF 02:87BF: 7E        .byte $7E   ; 
- D 0 - I - 0x0087D0 02:87C0: 72        .byte $72   ; 
off_87C1_0B:
- D 0 - I - 0x0087D1 02:87C1: 75        .byte $75   ; 
- D 0 - I - 0x0087D2 02:87C2: 71        .byte $71   ; 
- D 0 - I - 0x0087D3 02:87C3: 6D        .byte $6D   ; 
- D 0 - I - 0x0087D4 02:87C4: 67        .byte $67   ; 
- D 0 - I - 0x0087D5 02:87C5: 4B        .byte $4B   ; 
- D 0 - I - 0x0087D6 02:87C6: 49        .byte $49   ; 
- D 0 - I - 0x0087D7 02:87C7: 61        .byte $61   ; 
- D 0 - I - 0x0087D8 02:87C8: 6D        .byte $6D   ; 
- D 0 - I - 0x0087D9 02:87C9: 70        .byte $70   ; 
- D 0 - I - 0x0087DA 02:87CA: 6D        .byte $6D   ; 
- D 0 - I - 0x0087DB 02:87CB: 6D        .byte $6D   ; 
- D 0 - I - 0x0087DC 02:87CC: 6D        .byte $6D   ; 
- D 0 - I - 0x0087DD 02:87CD: 6D        .byte $6D   ; 
- D 0 - I - 0x0087DE 02:87CE: 6D        .byte $6D   ; 
- D 0 - I - 0x0087DF 02:87CF: 6D        .byte $6D   ; 
- D 0 - I - 0x0087E0 02:87D0: 6D        .byte $6D   ; 
- D 0 - I - 0x0087E1 02:87D1: 6D        .byte $6D   ; 
- D 0 - I - 0x0087E2 02:87D2: 6D        .byte $6D   ; 
- D 0 - I - 0x0087E3 02:87D3: 6D        .byte $6D   ; 
- D 0 - I - 0x0087E4 02:87D4: 6A        .byte $6A   ; 
- D 0 - I - 0x0087E5 02:87D5: 04        .byte $04   ; 
- D 0 - I - 0x0087E6 02:87D6: 04        .byte $04   ; 
- D 0 - I - 0x0087E7 02:87D7: 04        .byte $04   ; 
- D 0 - I - 0x0087E8 02:87D8: 04        .byte $04   ; 
- D 0 - I - 0x0087E9 02:87D9: 04        .byte $04   ; 
- D 0 - I - 0x0087EA 02:87DA: 04        .byte $04   ; 
- D 0 - I - 0x0087EB 02:87DB: 04        .byte $04   ; 
- D 0 - I - 0x0087EC 02:87DC: 49        .byte $49   ; 
- D 0 - I - 0x0087ED 02:87DD: 61        .byte $61   ; 
off_87DE_05:
- D 0 - I - 0x0087EE 02:87DE: 6D        .byte $6D   ; 
- D 0 - I - 0x0087EF 02:87DF: 6D        .byte $6D   ; 
- D 0 - I - 0x0087F0 02:87E0: 6D        .byte $6D   ; 
- D 0 - I - 0x0087F1 02:87E1: 67        .byte $67   ; 
- D 0 - I - 0x0087F2 02:87E2: 4B        .byte $4B   ; 
- D 0 - I - 0x0087F3 02:87E3: 04        .byte $04   ; 
- D 0 - I - 0x0087F4 02:87E4: 04        .byte $04   ; 
- D 0 - I - 0x0087F5 02:87E5: 04        .byte $04   ; 
- D 0 - I - 0x0087F6 02:87E6: 04        .byte $04   ; 
- D 0 - I - 0x0087F7 02:87E7: 04        .byte $04   ; 
- D 0 - I - 0x0087F8 02:87E8: 04        .byte $04   ; 
- D 0 - I - 0x0087F9 02:87E9: 04        .byte $04   ; 
- D 0 - I - 0x0087FA 02:87EA: 61        .byte $61   ; 
- D 0 - I - 0x0087FB 02:87EB: 70        .byte $70   ; 
- D 0 - I - 0x0087FC 02:87EC: 6D        .byte $6D   ; 
- D 0 - I - 0x0087FD 02:87ED: 79        .byte $79   ; 
- D 0 - I - 0x0087FE 02:87EE: 5B        .byte $5B   ; 
- D 0 - I - 0x0087FF 02:87EF: 5E        .byte $5E   ; 
- D 0 - I - 0x008800 02:87F0: 5F        .byte $5F   ; 
- D 0 - I - 0x008801 02:87F1: 47        .byte $47   ; 
- D 0 - I - 0x008802 02:87F2: 04        .byte $04   ; 
- D 0 - I - 0x008803 02:87F3: 04        .byte $04   ; 
- D 0 - I - 0x008804 02:87F4: 04        .byte $04   ; 
- D 0 - I - 0x008805 02:87F5: 49        .byte $49   ; 
- D 0 - I - 0x008806 02:87F6: 61        .byte $61   ; 
- D 0 - I - 0x008807 02:87F7: 6D        .byte $6D   ; 
- D 0 - I - 0x008808 02:87F8: 6D        .byte $6D   ; 
- D 0 - I - 0x008809 02:87F9: 70        .byte $70   ; 
- D 0 - I - 0x00880A 02:87FA: 6D        .byte $6D   ; 
- D 0 - I - 0x00880B 02:87FB: 6D        .byte $6D   ; 
- D 0 - I - 0x00880C 02:87FC: 6D        .byte $6D   ; 
- D 0 - I - 0x00880D 02:87FD: 74        .byte $74   ; 
off_87FE_0C:
- D 0 - I - 0x00880E 02:87FE: 75        .byte $75   ; 
- D 0 - I - 0x00880F 02:87FF: 6D        .byte $6D   ; 
- D 0 - I - 0x008810 02:8800: 6D        .byte $6D   ; 
- D 0 - I - 0x008811 02:8801: 7D        .byte $7D   ; 
- D 0 - I - 0x008812 02:8802: 55        .byte $55   ; 
- D 0 - I - 0x008813 02:8803: 55        .byte $55   ; 
- D 0 - I - 0x008814 02:8804: 7F        .byte $7F   ; 
- D 0 - I - 0x008815 02:8805: 6D        .byte $6D   ; 
- D 0 - I - 0x008816 02:8806: 6D        .byte $6D   ; 
- D 0 - I - 0x008817 02:8807: 6D        .byte $6D   ; 
- D 0 - I - 0x008818 02:8808: 6D        .byte $6D   ; 
- D 0 - I - 0x008819 02:8809: 6D        .byte $6D   ; 
- D 0 - I - 0x00881A 02:880A: 6D        .byte $6D   ; 
- D 0 - I - 0x00881B 02:880B: 6D        .byte $6D   ; 
- D 0 - I - 0x00881C 02:880C: 70        .byte $70   ; 
- D 0 - I - 0x00881D 02:880D: 6D        .byte $6D   ; 
- D 0 - I - 0x00881E 02:880E: 6D        .byte $6D   ; 
- D 0 - I - 0x00881F 02:880F: 6D        .byte $6D   ; 
- D 0 - I - 0x008820 02:8810: 70        .byte $70   ; 
- D 0 - I - 0x008821 02:8811: 6B        .byte $6B   ; 
- D 0 - I - 0x008822 02:8812: 04        .byte $04   ; 
- D 0 - I - 0x008823 02:8813: 04        .byte $04   ; 
- D 0 - I - 0x008824 02:8814: 04        .byte $04   ; 
- D 0 - I - 0x008825 02:8815: 04        .byte $04   ; 
- D 0 - I - 0x008826 02:8816: 16        .byte $16   ; 
- D 0 - I - 0x008827 02:8817: 04        .byte $04   ; 
- D 0 - I - 0x008828 02:8818: 41        .byte $41   ; 
- D 0 - I - 0x008829 02:8819: 55        .byte $55   ; 
- D 0 - I - 0x00882A 02:881A: 7F        .byte $7F   ; 
- D 0 - I - 0x00882B 02:881B: 71        .byte $71   ; 
off_881C_0B:
- D 0 - I - 0x00882C 02:881C: 6D        .byte $6D   ; 
- D 0 - I - 0x00882D 02:881D: 6D        .byte $6D   ; 
- D 0 - I - 0x00882E 02:881E: 67        .byte $67   ; 
- D 0 - I - 0x00882F 02:881F: 16        .byte $16   ; 
- D 0 - I - 0x008830 02:8820: 04        .byte $04   ; 
- D 0 - I - 0x008831 02:8821: 04        .byte $04   ; 
- D 0 - I - 0x008832 02:8822: 17        .byte $17   ; 
- D 0 - I - 0x008833 02:8823: 4D        .byte $4D   ; 
- D 0 - I - 0x008834 02:8824: 61        .byte $61   ; 
- D 0 - I - 0x008835 02:8825: 6D        .byte $6D   ; 
- D 0 - I - 0x008836 02:8826: 6D        .byte $6D   ; 
- D 0 - I - 0x008837 02:8827: 67        .byte $67   ; 
- D 0 - I - 0x008838 02:8828: 37        .byte $37   ; 
- D 0 - I - 0x008839 02:8829: 2C        .byte $2C   ; 
- D 0 - I - 0x00883A 02:882A: 04        .byte $04   ; 
- D 0 - I - 0x00883B 02:882B: 04        .byte $04   ; 
- D 0 - I - 0x00883C 02:882C: 16        .byte $16   ; 
- D 0 - I - 0x00883D 02:882D: 04        .byte $04   ; 
- D 0 - I - 0x00883E 02:882E: 04        .byte $04   ; 
- D 0 - I - 0x00883F 02:882F: 04        .byte $04   ; 
- D 0 - I - 0x008840 02:8830: 17        .byte $17   ; 
- D 0 - I - 0x008841 02:8831: 04        .byte $04   ; 
- D 0 - I - 0x008842 02:8832: 04        .byte $04   ; 
- D 0 - I - 0x008843 02:8833: 04        .byte $04   ; 
- - - - - - 0x008844 02:8834: 04        .byte $04   ; 
off_8835_09:
- - - - - - 0x008845 02:8835: 04        .byte $04   ; 
- - - - - - 0x008846 02:8836: 04        .byte $04   ; 
- - - - - - 0x008847 02:8837: 04        .byte $04   ; 
- - - - - - 0x008848 02:8838: 04        .byte $04   ; 
- - - - - - 0x008849 02:8839: 16        .byte $16   ; 
- - - - - - 0x00884A 02:883A: 04        .byte $04   ; 
- - - - - - 0x00884B 02:883B: 04        .byte $04   ; 
- - - - - - 0x00884C 02:883C: 17        .byte $17   ; 
- - - - - - 0x00884D 02:883D: 04        .byte $04   ; 
- D 0 - I - 0x00884E 02:883E: 04        .byte $04   ; 
- D 0 - I - 0x00884F 02:883F: 04        .byte $04   ; 
- D 0 - I - 0x008850 02:8840: 04        .byte $04   ; 
- D 0 - I - 0x008851 02:8841: 04        .byte $04   ; 
- D 0 - I - 0x008852 02:8842: 04        .byte $04   ; 
- D 0 - I - 0x008853 02:8843: 04        .byte $04   ; 
- D 0 - I - 0x008854 02:8844: 33        .byte $33   ; 
- D 0 - I - 0x008855 02:8845: 04        .byte $04   ; 
- D 0 - I - 0x008856 02:8846: 04        .byte $04   ; 
- D 0 - I - 0x008857 02:8847: 04        .byte $04   ; 
- D 0 - I - 0x008858 02:8848: 04        .byte $04   ; 
- D 0 - I - 0x008859 02:8849: 04        .byte $04   ; 
- D 0 - I - 0x00885A 02:884A: 04        .byte $04   ; 
- D 0 - I - 0x00885B 02:884B: 04        .byte $04   ; 
- D 0 - I - 0x00885C 02:884C: 04        .byte $04   ; 
- D 0 - I - 0x00885D 02:884D: 17        .byte $17   ; 
- D 0 - I - 0x00885E 02:884E: 49        .byte $49   ; 
- D 0 - I - 0x00885F 02:884F: 61        .byte $61   ; 
- D 0 - I - 0x008860 02:8850: 6D        .byte $6D   ; 
- D 0 - I - 0x008861 02:8851: 6D        .byte $6D   ; 
- D 0 - I - 0x008862 02:8852: 79        .byte $79   ; 
off_8853_09:
- D 0 - I - 0x008863 02:8853: 5B        .byte $5B   ; 
- D 0 - I - 0x008864 02:8854: 5B        .byte $5B   ; 
- D 0 - I - 0x008865 02:8855: 7B        .byte $7B   ; 
- D 0 - I - 0x008866 02:8856: 71        .byte $71   ; 
- D 0 - I - 0x008867 02:8857: 6D        .byte $6D   ; 
- D 0 - I - 0x008868 02:8858: 6D        .byte $6D   ; 
- D 0 - I - 0x008869 02:8859: 6D        .byte $6D   ; 
- D 0 - I - 0x00886A 02:885A: 70        .byte $70   ; 
- D 0 - I - 0x00886B 02:885B: 6D        .byte $6D   ; 
- D 0 - I - 0x00886C 02:885C: 6D        .byte $6D   ; 
- D 0 - I - 0x00886D 02:885D: 6D        .byte $6D   ; 
- D 0 - I - 0x00886E 02:885E: 6B        .byte $6B   ; 
- D 0 - I - 0x00886F 02:885F: 16        .byte $16   ; 
- D 0 - I - 0x008870 02:8860: 04        .byte $04   ; 
- D 0 - I - 0x008871 02:8861: 04        .byte $04   ; 
- D 0 - I - 0x008872 02:8862: 04        .byte $04   ; 
- D 0 - I - 0x008873 02:8863: 34        .byte $34   ; 
- D 0 - I - 0x008874 02:8864: 04        .byte $04   ; 
- D 0 - I - 0x008875 02:8865: 04        .byte $04   ; 
- D 0 - I - 0x008876 02:8866: 04        .byte $04   ; 
- D 0 - I - 0x008877 02:8867: 04        .byte $04   ; 
- D 0 - I - 0x008878 02:8868: 04        .byte $04   ; 
- D 0 - I - 0x008879 02:8869: 04        .byte $04   ; 
- D 0 - I - 0x00887A 02:886A: 16        .byte $16   ; 
off_886B_0C:
- - - - - - 0x00887B 02:886B: 04        .byte $04   ; 
- - - - - - 0x00887C 02:886C: 04        .byte $04   ; 
- - - - - - 0x00887D 02:886D: 04        .byte $04   ; 
- - - - - - 0x00887E 02:886E: 04        .byte $04   ; 
- - - - - - 0x00887F 02:886F: 04        .byte $04   ; 
- - - - - - 0x008880 02:8870: 04        .byte $04   ; 
- - - - - - 0x008881 02:8871: 04        .byte $04   ; 
- - - - - - 0x008882 02:8872: 04        .byte $04   ; 
- - - - - - 0x008883 02:8873: 04        .byte $04   ; 
- D 0 - I - 0x008884 02:8874: 04        .byte $04   ; 
- D 0 - I - 0x008885 02:8875: 04        .byte $04   ; 
- D 0 - I - 0x008886 02:8876: 04        .byte $04   ; 
- D 0 - I - 0x008887 02:8877: 04        .byte $04   ; 
- D 0 - I - 0x008888 02:8878: 04        .byte $04   ; 
- D 0 - I - 0x008889 02:8879: 04        .byte $04   ; 
- D 0 - I - 0x00888A 02:887A: 04        .byte $04   ; 
- D 0 - I - 0x00888B 02:887B: 04        .byte $04   ; 
- D 0 - I - 0x00888C 02:887C: 04        .byte $04   ; 
- D 0 - I - 0x00888D 02:887D: 36        .byte $36   ; 
- D 0 - I - 0x00888E 02:887E: 11        .byte $11   ; 
- D 0 - I - 0x00888F 02:887F: 11        .byte $11   ; 
- D 0 - I - 0x008890 02:8880: 11        .byte $11   ; 
- D 0 - I - 0x008891 02:8881: E5        .byte $E5   ; 
- D 0 - I - 0x008892 02:8882: E8        .byte $E8   ; 
- D 0 - I - 0x008893 02:8883: E8        .byte $E8   ; 
- D 0 - I - 0x008894 02:8884: E8        .byte $E8   ; 
- D 0 - I - 0x008895 02:8885: E8        .byte $E8   ; 
- D 0 - I - 0x008896 02:8886: E8        .byte $E8   ; 
- D 0 - I - 0x008897 02:8887: E8        .byte $E8   ; 
- D 0 - I - 0x008898 02:8888: E8        .byte $E8   ; 
- D 0 - I - 0x008899 02:8889: E9        .byte $E9   ; 
off_888A_0C:
- D 0 - I - 0x00889A 02:888A: 6D        .byte $6D   ; 
- D 0 - I - 0x00889B 02:888B: EA        .byte $EA   ; 
- D 0 - I - 0x00889C 02:888C: E7        .byte $E7   ; 
- D 0 - I - 0x00889D 02:888D: 11        .byte $11   ; 
- D 0 - I - 0x00889E 02:888E: 11        .byte $11   ; 
- D 0 - I - 0x00889F 02:888F: 11        .byte $11   ; 
- D 0 - I - 0x0088A0 02:8890: 11        .byte $11   ; 
- D 0 - I - 0x0088A1 02:8891: 11        .byte $11   ; 
- D 0 - I - 0x0088A2 02:8892: E5        .byte $E5   ; 
- D 0 - I - 0x0088A3 02:8893: E9        .byte $E9   ; 
- D 0 - I - 0x0088A4 02:8894: E9        .byte $E9   ; 
- D 0 - I - 0x0088A5 02:8895: E7        .byte $E7   ; 
- D 0 - I - 0x0088A6 02:8896: 11        .byte $11   ; 
- D 0 - I - 0x0088A7 02:8897: 31        .byte $31   ; 
- D 0 - I - 0x0088A8 02:8898: 04        .byte $04   ; 
- D 0 - I - 0x0088A9 02:8899: 04        .byte $04   ; 
- D 0 - I - 0x0088AA 02:889A: 04        .byte $04   ; 
- D 0 - I - 0x0088AB 02:889B: 04        .byte $04   ; 
- D 0 - I - 0x0088AC 02:889C: 04        .byte $04   ; 
- D 0 - I - 0x0088AD 02:889D: 04        .byte $04   ; 
- D 0 - I - 0x0088AE 02:889E: 04        .byte $04   ; 
- D 0 - I - 0x0088AF 02:889F: 04        .byte $04   ; 
- D 0 - I - 0x0088B0 02:88A0: 04        .byte $04   ; 
off_88A1_0B:
- D 0 - I - 0x0088B1 02:88A1: 04        .byte $04   ; 
- - - - - - 0x0088B2 02:88A2: 04        .byte $04   ; 
- - - - - - 0x0088B3 02:88A3: 16        .byte $16   ; 
- - - - - - 0x0088B4 02:88A4: 04        .byte $04   ; 
- - - - - - 0x0088B5 02:88A5: 04        .byte $04   ; 
- - - - - - 0x0088B6 02:88A6: 04        .byte $04   ; 
- - - - - - 0x0088B7 02:88A7: 04        .byte $04   ; 
- - - - - - 0x0088B8 02:88A8: 04        .byte $04   ; 
- - - - - - 0x0088B9 02:88A9: 04        .byte $04   ; 
- D 0 - I - 0x0088BA 02:88AA: 17        .byte $17   ; 
- D 0 - I - 0x0088BB 02:88AB: 04        .byte $04   ; 
- D 0 - I - 0x0088BC 02:88AC: 16        .byte $16   ; 
- D 0 - I - 0x0088BD 02:88AD: 04        .byte $04   ; 
- D 0 - I - 0x0088BE 02:88AE: 04        .byte $04   ; 
- D 0 - I - 0x0088BF 02:88AF: 04        .byte $04   ; 
- D 0 - I - 0x0088C0 02:88B0: 04        .byte $04   ; 
- D 0 - I - 0x0088C1 02:88B1: 04        .byte $04   ; 
- D 0 - I - 0x0088C2 02:88B2: 04        .byte $04   ; 
- D 0 - I - 0x0088C3 02:88B3: 2B        .byte $2B   ; 
- D 0 - I - 0x0088C4 02:88B4: 30        .byte $30   ; 
- D 0 - I - 0x0088C5 02:88B5: 04        .byte $04   ; 
- D 0 - I - 0x0088C6 02:88B6: 04        .byte $04   ; 
- D 0 - I - 0x0088C7 02:88B7: 04        .byte $04   ; 
- D 0 - I - 0x0088C8 02:88B8: 17        .byte $17   ; 
- D 0 - I - 0x0088C9 02:88B9: 61        .byte $61   ; 
- D 0 - I - 0x0088CA 02:88BA: 6D        .byte $6D   ; 
- D 0 - I - 0x0088CB 02:88BB: 70        .byte $70   ; 
- D 0 - I - 0x0088CC 02:88BC: 6D        .byte $6D   ; 
- D 0 - I - 0x0088CD 02:88BD: 6D        .byte $6D   ; 
- D 0 - I - 0x0088CE 02:88BE: 6D        .byte $6D   ; 
off_88BF_03:
- D 0 - I - 0x0088CF 02:88BF: 6D        .byte $6D   ; 
- D 0 - I - 0x0088D0 02:88C0: 70        .byte $70   ; 
- D 0 - I - 0x0088D1 02:88C1: 6D        .byte $6D   ; 
- D 0 - I - 0x0088D2 02:88C2: 79        .byte $79   ; 
- D 0 - I - 0x0088D3 02:88C3: 5E        .byte $5E   ; 
- D 0 - I - 0x0088D4 02:88C4: 47        .byte $47   ; 
- D 0 - I - 0x0088D5 02:88C5: 04        .byte $04   ; 
- D 0 - I - 0x0088D6 02:88C6: 04        .byte $04   ; 
- D 0 - I - 0x0088D7 02:88C7: 04        .byte $04   ; 
- D 0 - I - 0x0088D8 02:88C8: 04        .byte $04   ; 
- D 0 - I - 0x0088D9 02:88C9: 04        .byte $04   ; 
- D 0 - I - 0x0088DA 02:88CA: 04        .byte $04   ; 
- D 0 - I - 0x0088DB 02:88CB: 04        .byte $04   ; 
- D 0 - I - 0x0088DC 02:88CC: 49        .byte $49   ; 
- D 0 - I - 0x0088DD 02:88CD: 61        .byte $61   ; 
- D 0 - I - 0x0088DE 02:88CE: 6D        .byte $6D   ; 
- D 0 - I - 0x0088DF 02:88CF: 6D        .byte $6D   ; 
- D 0 - I - 0x0088E0 02:88D0: 6D        .byte $6D   ; 
- D 0 - I - 0x0088E1 02:88D1: 6D        .byte $6D   ; 
- D 0 - I - 0x0088E2 02:88D2: 79        .byte $79   ; 
- D 0 - I - 0x0088E3 02:88D3: 5E        .byte $5E   ; 
- D 0 - I - 0x0088E4 02:88D4: 47        .byte $47   ; 
- D 0 - I - 0x0088E5 02:88D5: 04        .byte $04   ; 
- D 0 - I - 0x0088E6 02:88D6: 04        .byte $04   ; 
- D 0 - I - 0x0088E7 02:88D7: 04        .byte $04   ; 
- D 0 - I - 0x0088E8 02:88D8: 04        .byte $04   ; 
- D 0 - I - 0x0088E9 02:88D9: 04        .byte $04   ; 
- D 0 - I - 0x0088EA 02:88DA: 49        .byte $49   ; 
- D 0 - I - 0x0088EB 02:88DB: 61        .byte $61   ; 
- D 0 - I - 0x0088EC 02:88DC: 6D        .byte $6D   ; 
- D 0 - I - 0x0088ED 02:88DD: 6D        .byte $6D   ; 
- D 0 - I - 0x0088EE 02:88DE: 74        .byte $74   ; 
off_88DF_0D:
- D 0 - I - 0x0088EF 02:88DF: 73        .byte $73   ; 
- D 0 - I - 0x0088F0 02:88E0: 6C        .byte $6C   ; 
- D 0 - I - 0x0088F1 02:88E1: 6E        .byte $6E   ; 
- D 0 - I - 0x0088F2 02:88E2: 6C        .byte $6C   ; 
- D 0 - I - 0x0088F3 02:88E3: 6C        .byte $6C   ; 
- D 0 - I - 0x0088F4 02:88E4: 6C        .byte $6C   ; 
- D 0 - I - 0x0088F5 02:88E5: 6C        .byte $6C   ; 
- D 0 - I - 0x0088F6 02:88E6: 6C        .byte $6C   ; 
- D 0 - I - 0x0088F7 02:88E7: 6C        .byte $6C   ; 
- D 0 - I - 0x0088F8 02:88E8: 6C        .byte $6C   ; 
- D 0 - I - 0x0088F9 02:88E9: 6C        .byte $6C   ; 
- D 0 - I - 0x0088FA 02:88EA: 6C        .byte $6C   ; 
- D 0 - I - 0x0088FB 02:88EB: 6C        .byte $6C   ; 
- D 0 - I - 0x0088FC 02:88EC: 6C        .byte $6C   ; 
- D 0 - I - 0x0088FD 02:88ED: 6C        .byte $6C   ; 
- D 0 - I - 0x0088FE 02:88EE: 78        .byte $78   ; 
- D 0 - I - 0x0088FF 02:88EF: 5A        .byte $5A   ; 
- D 0 - I - 0x008900 02:88F0: 5C        .byte $5C   ; 
- D 0 - I - 0x008901 02:88F1: 5D        .byte $5D   ; 
- D 0 - I - 0x008902 02:88F2: 46        .byte $46   ; 
- D 0 - I - 0x008903 02:88F3: 00        .byte $00   ; 
- D 0 - I - 0x008904 02:88F4: 00        .byte $00   ; 
- D 0 - I - 0x008905 02:88F5: 00        .byte $00   ; 
- D 0 - I - 0x008906 02:88F6: 00        .byte $00   ; 
off_88F7_12:
- D 0 - I - 0x008907 02:88F7: 00        .byte $00   ; 
- D 0 - I - 0x008908 02:88F8: 00        .byte $00   ; 
- D 0 - I - 0x008909 02:88F9: 60        .byte $60   ; 
- D 0 - I - 0x00890A 02:88FA: 6C        .byte $6C   ; 
- D 0 - I - 0x00890B 02:88FB: 6C        .byte $6C   ; 
- D 0 - I - 0x00890C 02:88FC: 6C        .byte $6C   ; 
- D 0 - I - 0x00890D 02:88FD: 6C        .byte $6C   ; 
- D 0 - I - 0x00890E 02:88FE: 6C        .byte $6C   ; 
- D 0 - I - 0x00890F 02:88FF: 6C        .byte $6C   ; 
- D 0 - I - 0x008910 02:8900: 69        .byte $69   ; 
- D 0 - I - 0x008911 02:8901: 00        .byte $00   ; 
- D 0 - I - 0x008912 02:8902: 00        .byte $00   ; 
- D 0 - I - 0x008913 02:8903: 14        .byte $14   ; 
- D 0 - I - 0x008914 02:8904: 00        .byte $00   ; 
- D 0 - I - 0x008915 02:8905: 00        .byte $00   ; 
- D 0 - I - 0x008916 02:8906: 00        .byte $00   ; 
- D 0 - I - 0x008917 02:8907: 00        .byte $00   ; 
- D 0 - I - 0x008918 02:8908: 4C        .byte $4C   ; 
- D 0 - I - 0x008919 02:8909: 60        .byte $60   ; 
- D 0 - I - 0x00891A 02:890A: 6C        .byte $6C   ; 
- D 0 - I - 0x00891B 02:890B: 6C        .byte $6C   ; 
- D 0 - I - 0x00891C 02:890C: 6E        .byte $6E   ; 
- D 0 - I - 0x00891D 02:890D: 6C        .byte $6C   ; 
- D 0 - I - 0x00891E 02:890E: 6C        .byte $6C   ; 
- D 0 - I - 0x00891F 02:890F: 6C        .byte $6C   ; 
- D 0 - I - 0x008920 02:8910: 66        .byte $66   ; 
- D 0 - I - 0x008921 02:8911: 4E        .byte $4E   ; 
- D 0 - I - 0x008922 02:8912: 00        .byte $00   ; 
- D 0 - I - 0x008923 02:8913: 00        .byte $00   ; 
- D 0 - I - 0x008924 02:8914: 00        .byte $00   ; 
- D 0 - I - 0x008925 02:8915: 00        .byte $00   ; 
- D 0 - I - 0x008926 02:8916: 1B        .byte $1B   ; 
off_8917_0E:
- D 0 - I - 0x008927 02:8917: 73        .byte $73   ; 
- D 0 - I - 0x008928 02:8918: 6C        .byte $6C   ; 
- D 0 - I - 0x008929 02:8919: 6C        .byte $6C   ; 
- D 0 - I - 0x00892A 02:891A: 6C        .byte $6C   ; 
- D 0 - I - 0x00892B 02:891B: 6C        .byte $6C   ; 
- D 0 - I - 0x00892C 02:891C: 6C        .byte $6C   ; 
- D 0 - I - 0x00892D 02:891D: 6C        .byte $6C   ; 
- D 0 - I - 0x00892E 02:891E: 6C        .byte $6C   ; 
- D 0 - I - 0x00892F 02:891F: 6C        .byte $6C   ; 
- D 0 - I - 0x008930 02:8920: 6C        .byte $6C   ; 
- D 0 - I - 0x008931 02:8921: 6C        .byte $6C   ; 
- D 0 - I - 0x008932 02:8922: 6F        .byte $6F   ; 
- D 0 - I - 0x008933 02:8923: 6C        .byte $6C   ; 
- D 0 - I - 0x008934 02:8924: 6C        .byte $6C   ; 
- D 0 - I - 0x008935 02:8925: 6C        .byte $6C   ; 
- D 0 - I - 0x008936 02:8926: 66        .byte $66   ; 
- D 0 - I - 0x008937 02:8927: 4E        .byte $4E   ; 
- D 0 - I - 0x008938 02:8928: 14        .byte $14   ; 
- D 0 - I - 0x008939 02:8929: 00        .byte $00   ; 
- D 0 - I - 0x00893A 02:892A: 00        .byte $00   ; 
- D 0 - I - 0x00893B 02:892B: 00        .byte $00   ; 
- D 0 - I - 0x00893C 02:892C: 14        .byte $14   ; 
- D 0 - I - 0x00893D 02:892D: 00        .byte $00   ; 
- D 0 - I - 0x00893E 02:892E: 00        .byte $00   ; 
- D 0 - I - 0x00893F 02:892F: 00        .byte $00   ; 
- D 0 - I - 0x008940 02:8930: 00        .byte $00   ; 
- D 0 - I - 0x008941 02:8931: 60        .byte $60   ; 
off_8932_0E:
- D 0 - I - 0x008942 02:8932: 6E        .byte $6E   ; 
- D 0 - I - 0x008943 02:8933: 6C        .byte $6C   ; 
- D 0 - I - 0x008944 02:8934: 6C        .byte $6C   ; 
- D 0 - I - 0x008945 02:8935: 6C        .byte $6C   ; 
- D 0 - I - 0x008946 02:8936: 6C        .byte $6C   ; 
- D 0 - I - 0x008947 02:8937: 6F        .byte $6F   ; 
- D 0 - I - 0x008948 02:8938: 6C        .byte $6C   ; 
- D 0 - I - 0x008949 02:8939: 6C        .byte $6C   ; 
- D 0 - I - 0x00894A 02:893A: 6C        .byte $6C   ; 
- D 0 - I - 0x00894B 02:893B: 66        .byte $66   ; 
- D 0 - I - 0x00894C 02:893C: 00        .byte $00   ; 
- D 0 - I - 0x00894D 02:893D: 00        .byte $00   ; 
- D 0 - I - 0x00894E 02:893E: 00        .byte $00   ; 
- D 0 - I - 0x00894F 02:893F: 00        .byte $00   ; 
- D 0 - I - 0x008950 02:8940: 00        .byte $00   ; 
- D 0 - I - 0x008951 02:8941: 00        .byte $00   ; 
- D 0 - I - 0x008952 02:8942: 00        .byte $00   ; 
- D 0 - I - 0x008953 02:8943: 00        .byte $00   ; 
- D 0 - I - 0x008954 02:8944: 00        .byte $00   ; 
- D 0 - I - 0x008955 02:8945: 00        .byte $00   ; 
- D 0 - I - 0x008956 02:8946: 00        .byte $00   ; 
- D 0 - I - 0x008957 02:8947: 00        .byte $00   ; 
- D 0 - I - 0x008958 02:8948: 00        .byte $00   ; 
- D 0 - I - 0x008959 02:8949: 00        .byte $00   ; 
- D 0 - I - 0x00895A 02:894A: 00        .byte $00   ; 
- D 0 - I - 0x00895B 02:894B: 00        .byte $00   ; 
- D 0 - I - 0x00895C 02:894C: 00        .byte $00   ; 
- D 0 - I - 0x00895D 02:894D: 4C        .byte $4C   ; 
- D 0 - I - 0x00895E 02:894E: 60        .byte $60   ; 
- D 0 - I - 0x00895F 02:894F: 6F        .byte $6F   ; 
off_8950_11:
- D 0 - I - 0x008960 02:8950: 6C        .byte $6C   ; 
- D 0 - I - 0x008961 02:8951: 72        .byte $72   ; 
- D 0 - I - 0x008962 02:8952: EC        .byte $EC   ; 
- D 0 - I - 0x008963 02:8953: 6C        .byte $6C   ; 
- D 0 - I - 0x008964 02:8954: 7C        .byte $7C   ; 
- D 0 - I - 0x008965 02:8955: 54        .byte $54   ; 
- D 0 - I - 0x008966 02:8956: 54        .byte $54   ; 
- D 0 - I - 0x008967 02:8957: 42        .byte $42   ; 
- D 0 - I - 0x008968 02:8958: 00        .byte $00   ; 
- D 0 - I - 0x008969 02:8959: 00        .byte $00   ; 
- D 0 - I - 0x00896A 02:895A: 00        .byte $00   ; 
- D 0 - I - 0x00896B 02:895B: 00        .byte $00   ; 
- D 0 - I - 0x00896C 02:895C: 00        .byte $00   ; 
- D 0 - I - 0x00896D 02:895D: 26        .byte $26   ; 
- D 0 - I - 0x00896E 02:895E: B0        .byte $B0   ; 
- D 0 - I - 0x00896F 02:895F: 95        .byte $95   ; 
- D 0 - I - 0x008970 02:8960: 96        .byte $96   ; 
- D 0 - I - 0x008971 02:8961: 96        .byte $96   ; 
- D 0 - I - 0x008972 02:8962: 97        .byte $97   ; 
- D 0 - I - 0x008973 02:8963: 00        .byte $00   ; 
- D 0 - I - 0x008974 02:8964: 00        .byte $00   ; 
- D 0 - I - 0x008975 02:8965: 00        .byte $00   ; 
- D 0 - I - 0x008976 02:8966: 00        .byte $00   ; 
- D 0 - I - 0x008977 02:8967: 00        .byte $00   ; 
- - - - - - 0x008978 02:8968: 00        .byte $00   ; 
- - - - - - 0x008979 02:8969: 00        .byte $00   ; 
- - - - - - 0x00897A 02:896A: 00        .byte $00   ; 
- - - - - - 0x00897B 02:896B: 15        .byte $15   ; 
- - - - - - 0x00897C 02:896C: 00        .byte $00   ; 
- - - - - - 0x00897D 02:896D: 00        .byte $00   ; 
- - - - - - 0x00897E 02:896E: 00        .byte $00   ; 
- - - - - - 0x00897F 02:896F: 00        .byte $00   ; 
off_8970_0F:
- D 0 - I - 0x008980 02:8970: 59        .byte $59   ; 
- D 0 - I - 0x008981 02:8971: 5B        .byte $5B   ; 
- D 0 - I - 0x008982 02:8972: 5B        .byte $5B   ; 
- D 0 - I - 0x008983 02:8973: 5B        .byte $5B   ; 
- D 0 - I - 0x008984 02:8974: 7B        .byte $7B   ; 
- D 0 - I - 0x008985 02:8975: 6D        .byte $6D   ; 
- D 0 - I - 0x008986 02:8976: 70        .byte $70   ; 
- D 0 - I - 0x008987 02:8977: 6D        .byte $6D   ; 
- D 0 - I - 0x008988 02:8978: 6D        .byte $6D   ; 
- D 0 - I - 0x008989 02:8979: 6D        .byte $6D   ; 
- D 0 - I - 0x00898A 02:897A: 6D        .byte $6D   ; 
- D 0 - I - 0x00898B 02:897B: 6D        .byte $6D   ; 
- D 0 - I - 0x00898C 02:897C: 6D        .byte $6D   ; 
- D 0 - I - 0x00898D 02:897D: 6D        .byte $6D   ; 
- D 0 - I - 0x00898E 02:897E: 6D        .byte $6D   ; 
- D 0 - I - 0x00898F 02:897F: 67        .byte $67   ; 
- D 0 - I - 0x008990 02:8980: 04        .byte $04   ; 
- D 0 - I - 0x008991 02:8981: 04        .byte $04   ; 
- D 0 - I - 0x008992 02:8982: 04        .byte $04   ; 
- D 0 - I - 0x008993 02:8983: 04        .byte $04   ; 
- D 0 - I - 0x008994 02:8984: 04        .byte $04   ; 
- D 0 - I - 0x008995 02:8985: 04        .byte $04   ; 
- D 0 - I - 0x008996 02:8986: 04        .byte $04   ; 
- D 0 - I - 0x008997 02:8987: 04        .byte $04   ; 
- D 0 - I - 0x008998 02:8988: 04        .byte $04   ; 
- D 0 - I - 0x008999 02:8989: 49        .byte $49   ; 
- D 0 - I - 0x00899A 02:898A: 61        .byte $61   ; 
- D 0 - I - 0x00899B 02:898B: 6D        .byte $6D   ; 
off_898C_0B:
- D 0 - I - 0x00899C 02:898C: 6D        .byte $6D   ; 
- D 0 - I - 0x00899D 02:898D: 6D        .byte $6D   ; 
- D 0 - I - 0x00899E 02:898E: 70        .byte $70   ; 
- D 0 - I - 0x00899F 02:898F: 6D        .byte $6D   ; 
- D 0 - I - 0x0089A0 02:8990: 6D        .byte $6D   ; 
- D 0 - I - 0x0089A1 02:8991: 67        .byte $67   ; 
- D 0 - I - 0x0089A2 02:8992: 4B        .byte $4B   ; 
- D 0 - I - 0x0089A3 02:8993: 04        .byte $04   ; 
- D 0 - I - 0x0089A4 02:8994: 04        .byte $04   ; 
- D 0 - I - 0x0089A5 02:8995: 04        .byte $04   ; 
- D 0 - I - 0x0089A6 02:8996: 04        .byte $04   ; 
- D 0 - I - 0x0089A7 02:8997: 04        .byte $04   ; 
- D 0 - I - 0x0089A8 02:8998: 04        .byte $04   ; 
- D 0 - I - 0x0089A9 02:8999: 04        .byte $04   ; 
- D 0 - I - 0x0089AA 02:899A: 04        .byte $04   ; 
- D 0 - I - 0x0089AB 02:899B: 04        .byte $04   ; 
- D 0 - I - 0x0089AC 02:899C: 04        .byte $04   ; 
- D 0 - I - 0x0089AD 02:899D: 04        .byte $04   ; 
- D 0 - I - 0x0089AE 02:899E: 04        .byte $04   ; 
- D 0 - I - 0x0089AF 02:899F: 04        .byte $04   ; 
- D 0 - I - 0x0089B0 02:89A0: 45        .byte $45   ; 
- D 0 - I - 0x0089B1 02:89A1: 5B        .byte $5B   ; 
- D 0 - I - 0x0089B2 02:89A2: 5B        .byte $5B   ; 
- D 0 - I - 0x0089B3 02:89A3: 5B        .byte $5B   ; 
- D 0 - I - 0x0089B4 02:89A4: 7B        .byte $7B   ; 
- D 0 - I - 0x0089B5 02:89A5: 70        .byte $70   ; 
- D 0 - I - 0x0089B6 02:89A6: 6D        .byte $6D   ; 
- D 0 - I - 0x0089B7 02:89A7: 6D        .byte $6D   ; 
- D 0 - I - 0x0089B8 02:89A8: 6D        .byte $6D   ; 
- D 0 - I - 0x0089B9 02:89A9: 6D        .byte $6D   ; 
- D 0 - I - 0x0089BA 02:89AA: 70        .byte $70   ; 
- D 0 - I - 0x0089BB 02:89AB: 74        .byte $74   ; 
off_89AC_10:
- D 0 - I - 0x0089BC 02:89AC: 2C        .byte $2C   ; 
- D 0 - I - 0x0089BD 02:89AD: 04        .byte $04   ; 
- D 0 - I - 0x0089BE 02:89AE: 16        .byte $16   ; 
- D 0 - I - 0x0089BF 02:89AF: 4D        .byte $4D   ; 
- D 0 - I - 0x0089C0 02:89B0: 61        .byte $61   ; 
- D 0 - I - 0x0089C1 02:89B1: 6D        .byte $6D   ; 
- D 0 - I - 0x0089C2 02:89B2: 6D        .byte $6D   ; 
- D 0 - I - 0x0089C3 02:89B3: 6D        .byte $6D   ; 
- D 0 - I - 0x0089C4 02:89B4: 6D        .byte $6D   ; 
- D 0 - I - 0x0089C5 02:89B5: 6D        .byte $6D   ; 
- D 0 - I - 0x0089C6 02:89B6: 6D        .byte $6D   ; 
- D 0 - I - 0x0089C7 02:89B7: 6D        .byte $6D   ; 
- D 0 - I - 0x0089C8 02:89B8: 6D        .byte $6D   ; 
- D 0 - I - 0x0089C9 02:89B9: 6D        .byte $6D   ; 
- D 0 - I - 0x0089CA 02:89BA: 6D        .byte $6D   ; 
- D 0 - I - 0x0089CB 02:89BB: 67        .byte $67   ; 
- D 0 - I - 0x0089CC 02:89BC: 04        .byte $04   ; 
- D 0 - I - 0x0089CD 02:89BD: 04        .byte $04   ; 
- D 0 - I - 0x0089CE 02:89BE: 04        .byte $04   ; 
- D 0 - I - 0x0089CF 02:89BF: 04        .byte $04   ; 
- D 0 - I - 0x0089D0 02:89C0: 04        .byte $04   ; 
- D 0 - I - 0x0089D1 02:89C1: 04        .byte $04   ; 
- D 0 - I - 0x0089D2 02:89C2: 04        .byte $04   ; 
- D 0 - I - 0x0089D3 02:89C3: 04        .byte $04   ; 
- D 0 - I - 0x0089D4 02:89C4: 41        .byte $41   ; 
- D 0 - I - 0x0089D5 02:89C5: 55        .byte $55   ; 
- D 0 - I - 0x0089D6 02:89C6: 7F        .byte $7F   ; 
off_89C7_0C:
- D 0 - I - 0x0089D7 02:89C7: 6D        .byte $6D   ; 
- D 0 - I - 0x0089D8 02:89C8: 6D        .byte $6D   ; 
- D 0 - I - 0x0089D9 02:89C9: 6D        .byte $6D   ; 
- D 0 - I - 0x0089DA 02:89CA: 6D        .byte $6D   ; 
- D 0 - I - 0x0089DB 02:89CB: 6D        .byte $6D   ; 
- D 0 - I - 0x0089DC 02:89CC: 7D        .byte $7D   ; 
- D 0 - I - 0x0089DD 02:89CD: 55        .byte $55   ; 
- D 0 - I - 0x0089DE 02:89CE: 55        .byte $55   ; 
- D 0 - I - 0x0089DF 02:89CF: 55        .byte $55   ; 
- D 0 - I - 0x0089E0 02:89D0: 43        .byte $43   ; 
- D 0 - I - 0x0089E1 02:89D1: 04        .byte $04   ; 
- D 0 - I - 0x0089E2 02:89D2: 04        .byte $04   ; 
- D 0 - I - 0x0089E3 02:89D3: 04        .byte $04   ; 
- D 0 - I - 0x0089E4 02:89D4: 04        .byte $04   ; 
- D 0 - I - 0x0089E5 02:89D5: 04        .byte $04   ; 
- D 0 - I - 0x0089E6 02:89D6: 04        .byte $04   ; 
- D 0 - I - 0x0089E7 02:89D7: 04        .byte $04   ; 
- D 0 - I - 0x0089E8 02:89D8: 04        .byte $04   ; 
- D 0 - I - 0x0089E9 02:89D9: 04        .byte $04   ; 
- D 0 - I - 0x0089EA 02:89DA: 04        .byte $04   ; 
- D 0 - I - 0x0089EB 02:89DB: 04        .byte $04   ; 
- D 0 - I - 0x0089EC 02:89DC: 04        .byte $04   ; 
- D 0 - I - 0x0089ED 02:89DD: 04        .byte $04   ; 
- D 0 - I - 0x0089EE 02:89DE: 4D        .byte $4D   ; 
- D 0 - I - 0x0089EF 02:89DF: 61        .byte $61   ; 
- D 0 - I - 0x0089F0 02:89E0: 6D        .byte $6D   ; 
- D 0 - I - 0x0089F1 02:89E1: 6D        .byte $6D   ; 
- D 0 - I - 0x0089F2 02:89E2: 6D        .byte $6D   ; 
- D 0 - I - 0x0089F3 02:89E3: 6D        .byte $6D   ; 
- D 0 - I - 0x0089F4 02:89E4: 6D        .byte $6D   ; 
- D 0 - I - 0x0089F5 02:89E5: 6D        .byte $6D   ; 
- D 0 - I - 0x0089F6 02:89E6: 74        .byte $74   ; 
off_89E7_13:
- D 0 - I - 0x0089F7 02:89E7: 2C        .byte $2C   ; 
- D 0 - I - 0x0089F8 02:89E8: 04        .byte $04   ; 
- D 0 - I - 0x0089F9 02:89E9: 04        .byte $04   ; 
- D 0 - I - 0x0089FA 02:89EA: 04        .byte $04   ; 
- D 0 - I - 0x0089FB 02:89EB: 04        .byte $04   ; 
- D 0 - I - 0x0089FC 02:89EC: 04        .byte $04   ; 
- D 0 - I - 0x0089FD 02:89ED: 04        .byte $04   ; 
- D 0 - I - 0x0089FE 02:89EE: 04        .byte $04   ; 
- D 0 - I - 0x0089FF 02:89EF: 04        .byte $04   ; 
- D 0 - I - 0x008A00 02:89F0: 04        .byte $04   ; 
- D 0 - I - 0x008A01 02:89F1: 45        .byte $45   ; 
- D 0 - I - 0x008A02 02:89F2: 5B        .byte $5B   ; 
- D 0 - I - 0x008A03 02:89F3: 5E        .byte $5E   ; 
- D 0 - I - 0x008A04 02:89F4: 5F        .byte $5F   ; 
- D 0 - I - 0x008A05 02:89F5: 5F        .byte $5F   ; 
- D 0 - I - 0x008A06 02:89F6: 47        .byte $47   ; 
- D 0 - I - 0x008A07 02:89F7: 04        .byte $04   ; 
- D 0 - I - 0x008A08 02:89F8: 04        .byte $04   ; 
- D 0 - I - 0x008A09 02:89F9: 04        .byte $04   ; 
- D 0 - I - 0x008A0A 02:89FA: 17        .byte $17   ; 
- D 0 - I - 0x008A0B 02:89FB: 04        .byte $04   ; 
- D 0 - I - 0x008A0C 02:89FC: 16        .byte $16   ; 
- D 0 - I - 0x008A0D 02:89FD: 61        .byte $61   ; 
- D 0 - I - 0x008A0E 02:89FE: 6D        .byte $6D   ; 
- D 0 - I - 0x008A0F 02:89FF: 71        .byte $71   ; 
- D 0 - I - 0x008A10 02:8A00: 6D        .byte $6D   ; 
- D 0 - I - 0x008A11 02:8A01: 6D        .byte $6D   ; 
- D 0 - I - 0x008A12 02:8A02: 6D        .byte $6D   ; 
- D 0 - I - 0x008A13 02:8A03: 6D        .byte $6D   ; 
- D 0 - I - 0x008A14 02:8A04: 79        .byte $79   ; 
off_8A05_0F:
- D 0 - I - 0x008A15 02:8A05: 5B        .byte $5B   ; 
- D 0 - I - 0x008A16 02:8A06: 5B        .byte $5B   ; 
- D 0 - I - 0x008A17 02:8A07: 7B        .byte $7B   ; 
- D 0 - I - 0x008A18 02:8A08: 6D        .byte $6D   ; 
- D 0 - I - 0x008A19 02:8A09: 6D        .byte $6D   ; 
- D 0 - I - 0x008A1A 02:8A0A: 6D        .byte $6D   ; 
- D 0 - I - 0x008A1B 02:8A0B: 6D        .byte $6D   ; 
- D 0 - I - 0x008A1C 02:8A0C: 6D        .byte $6D   ; 
- D 0 - I - 0x008A1D 02:8A0D: 6D        .byte $6D   ; 
- D 0 - I - 0x008A1E 02:8A0E: 6A        .byte $6A   ; 
- D 0 - I - 0x008A1F 02:8A0F: 04        .byte $04   ; 
- D 0 - I - 0x008A20 02:8A10: 04        .byte $04   ; 
- D 0 - I - 0x008A21 02:8A11: 04        .byte $04   ; 
- D 0 - I - 0x008A22 02:8A12: 04        .byte $04   ; 
- D 0 - I - 0x008A23 02:8A13: 04        .byte $04   ; 
- D 0 - I - 0x008A24 02:8A14: 04        .byte $04   ; 
- D 0 - I - 0x008A25 02:8A15: 04        .byte $04   ; 
- D 0 - I - 0x008A26 02:8A16: 04        .byte $04   ; 
- D 0 - I - 0x008A27 02:8A17: 04        .byte $04   ; 
- D 0 - I - 0x008A28 02:8A18: 04        .byte $04   ; 
- D 0 - I - 0x008A29 02:8A19: 04        .byte $04   ; 
- D 0 - I - 0x008A2A 02:8A1A: 04        .byte $04   ; 
- D 0 - I - 0x008A2B 02:8A1B: 04        .byte $04   ; 
- D 0 - I - 0x008A2C 02:8A1C: 04        .byte $04   ; 
- D 0 - I - 0x008A2D 02:8A1D: 04        .byte $04   ; 
- D 0 - I - 0x008A2E 02:8A1E: 17        .byte $17   ; 
- D 0 - I - 0x008A2F 02:8A1F: 04        .byte $04   ; 
- D 0 - I - 0x008A30 02:8A20: 04        .byte $04   ; 
- D 0 - I - 0x008A31 02:8A21: 45        .byte $45   ; 
- D 0 - I - 0x008A32 02:8A22: 5B        .byte $5B   ; 
- D 0 - I - 0x008A33 02:8A23: 5B        .byte $5B   ; 
- D 0 - I - 0x008A34 02:8A24: 58        .byte $58   ; 
off_8A25_14:
- D 0 - I - 0x008A35 02:8A25: 0C        .byte $0C   ; 
- D 0 - I - 0x008A36 02:8A26: 0D        .byte $0D   ; 
- D 0 - I - 0x008A37 02:8A27: 0E        .byte $0E   ; 
- D 0 - I - 0x008A38 02:8A28: 04        .byte $04   ; 
- D 0 - I - 0x008A39 02:8A29: 04        .byte $04   ; 
- D 0 - I - 0x008A3A 02:8A2A: 04        .byte $04   ; 
- D 0 - I - 0x008A3B 02:8A2B: 04        .byte $04   ; 
- D 0 - I - 0x008A3C 02:8A2C: 04        .byte $04   ; 
- D 0 - I - 0x008A3D 02:8A2D: 16        .byte $16   ; 
- D 0 - I - 0x008A3E 02:8A2E: 04        .byte $04   ; 
- D 0 - I - 0x008A3F 02:8A2F: 04        .byte $04   ; 
- D 0 - I - 0x008A40 02:8A30: 04        .byte $04   ; 
- D 0 - I - 0x008A41 02:8A31: 04        .byte $04   ; 
- D 0 - I - 0x008A42 02:8A32: 04        .byte $04   ; 
- D 0 - I - 0x008A43 02:8A33: 04        .byte $04   ; 
- D 0 - I - 0x008A44 02:8A34: 04        .byte $04   ; 
- D 0 - I - 0x008A45 02:8A35: 04        .byte $04   ; 
- D 0 - I - 0x008A46 02:8A36: 04        .byte $04   ; 
- D 0 - I - 0x008A47 02:8A37: 04        .byte $04   ; 
- D 0 - I - 0x008A48 02:8A38: 04        .byte $04   ; 
- D 0 - I - 0x008A49 02:8A39: 04        .byte $04   ; 
- D 0 - I - 0x008A4A 02:8A3A: 04        .byte $04   ; 
- D 0 - I - 0x008A4B 02:8A3B: 61        .byte $61   ; 
- D 0 - I - 0x008A4C 02:8A3C: 6D        .byte $6D   ; 
- D 0 - I - 0x008A4D 02:8A3D: 6D        .byte $6D   ; 
- D 0 - I - 0x008A4E 02:8A3E: 6D        .byte $6D   ; 
off_8A3F_04:
- D 0 - I - 0x008A4F 02:8A3F: 6D        .byte $6D   ; 
- D 0 - I - 0x008A50 02:8A40: 6D        .byte $6D   ; 
- D 0 - I - 0x008A51 02:8A41: 6D        .byte $6D   ; 
- D 0 - I - 0x008A52 02:8A42: 67        .byte $67   ; 
- D 0 - I - 0x008A53 02:8A43: 4F        .byte $4F   ; 
- D 0 - I - 0x008A54 02:8A44: 04        .byte $04   ; 
- D 0 - I - 0x008A55 02:8A45: 04        .byte $04   ; 
- D 0 - I - 0x008A56 02:8A46: 04        .byte $04   ; 
- D 0 - I - 0x008A57 02:8A47: 04        .byte $04   ; 
- D 0 - I - 0x008A58 02:8A48: 04        .byte $04   ; 
- D 0 - I - 0x008A59 02:8A49: 16        .byte $16   ; 
- D 0 - I - 0x008A5A 02:8A4A: 04        .byte $04   ; 
- D 0 - I - 0x008A5B 02:8A4B: 41        .byte $41   ; 
- D 0 - I - 0x008A5C 02:8A4C: 55        .byte $55   ; 
- D 0 - I - 0x008A5D 02:8A4D: 7F        .byte $7F   ; 
- D 0 - I - 0x008A5E 02:8A4E: 6D        .byte $6D   ; 
- D 0 - I - 0x008A5F 02:8A4F: 6D        .byte $6D   ; 
- D 0 - I - 0x008A60 02:8A50: 6D        .byte $6D   ; 
- D 0 - I - 0x008A61 02:8A51: 6D        .byte $6D   ; 
- D 0 - I - 0x008A62 02:8A52: 6A        .byte $6A   ; 
- D 0 - I - 0x008A63 02:8A53: 4F        .byte $4F   ; 
- D 0 - I - 0x008A64 02:8A54: 04        .byte $04   ; 
- D 0 - I - 0x008A65 02:8A55: 04        .byte $04   ; 
- D 0 - I - 0x008A66 02:8A56: 04        .byte $04   ; 
- D 0 - I - 0x008A67 02:8A57: 41        .byte $41   ; 
- D 0 - I - 0x008A68 02:8A58: 55        .byte $55   ; 
- D 0 - I - 0x008A69 02:8A59: 55        .byte $55   ; 
- D 0 - I - 0x008A6A 02:8A5A: 55        .byte $55   ; 
- D 0 - I - 0x008A6B 02:8A5B: 7F        .byte $7F   ; 
- D 0 - I - 0x008A6C 02:8A5C: 6D        .byte $6D   ; 
- D 0 - I - 0x008A6D 02:8A5D: 71        .byte $71   ; 
- D 0 - I - 0x008A6E 02:8A5E: 74        .byte $74   ; 
off_8A5F_15:
- D 0 - I - 0x008A6F 02:8A5F: 1C        .byte $1C   ; 
- D 0 - I - 0x008A70 02:8A60: 00        .byte $00   ; 
- D 0 - I - 0x008A71 02:8A61: 1D        .byte $1D   ; 
- D 0 - I - 0x008A72 02:8A62: 1E        .byte $1E   ; 
- D 0 - I - 0x008A73 02:8A63: 00        .byte $00   ; 
- D 0 - I - 0x008A74 02:8A64: 00        .byte $00   ; 
- D 0 - I - 0x008A75 02:8A65: 00        .byte $00   ; 
- D 0 - I - 0x008A76 02:8A66: 00        .byte $00   ; 
- D 0 - I - 0x008A77 02:8A67: 00        .byte $00   ; 
- D 0 - I - 0x008A78 02:8A68: 00        .byte $00   ; 
- D 0 - I - 0x008A79 02:8A69: 00        .byte $00   ; 
- D 0 - I - 0x008A7A 02:8A6A: 14        .byte $14   ; 
- D 0 - I - 0x008A7B 02:8A6B: 00        .byte $00   ; 
- D 0 - I - 0x008A7C 02:8A6C: 00        .byte $00   ; 
- D 0 - I - 0x008A7D 02:8A6D: 00        .byte $00   ; 
- D 0 - I - 0x008A7E 02:8A6E: 00        .byte $00   ; 
- D 0 - I - 0x008A7F 02:8A6F: 00        .byte $00   ; 
- D 0 - I - 0x008A80 02:8A70: 00        .byte $00   ; 
- D 0 - I - 0x008A81 02:8A71: 14        .byte $14   ; 
- D 0 - I - 0x008A82 02:8A72: 00        .byte $00   ; 
- D 0 - I - 0x008A83 02:8A73: 00        .byte $00   ; 
- D 0 - I - 0x008A84 02:8A74: 00        .byte $00   ; 
- D 0 - I - 0x008A85 02:8A75: 44        .byte $44   ; 
- D 0 - I - 0x008A86 02:8A76: 5A        .byte $5A   ; 
- D 0 - I - 0x008A87 02:8A77: 7A        .byte $7A   ; 
- D 0 - I - 0x008A88 02:8A78: 6C        .byte $6C   ; 
- D 0 - I - 0x008A89 02:8A79: 6C        .byte $6C   ; 
- D 0 - I - 0x008A8A 02:8A7A: 6E        .byte $6E   ; 
- D 0 - I - 0x008A8B 02:8A7B: 6C        .byte $6C   ; 
- D 0 - I - 0x008A8C 02:8A7C: 68        .byte $68   ; 
off_8A7D_0F:
- D 0 - I - 0x008A8D 02:8A7D: 00        .byte $00   ; 
- D 0 - I - 0x008A8E 02:8A7E: 14        .byte $14   ; 
- D 0 - I - 0x008A8F 02:8A7F: 00        .byte $00   ; 
- D 0 - I - 0x008A90 02:8A80: 00        .byte $00   ; 
- D 0 - I - 0x008A91 02:8A81: 00        .byte $00   ; 
- D 0 - I - 0x008A92 02:8A82: 00        .byte $00   ; 
- D 0 - I - 0x008A93 02:8A83: 00        .byte $00   ; 
- D 0 - I - 0x008A94 02:8A84: 00        .byte $00   ; 
- D 0 - I - 0x008A95 02:8A85: 00        .byte $00   ; 
- D 0 - I - 0x008A96 02:8A86: 00        .byte $00   ; 
- D 0 - I - 0x008A97 02:8A87: 00        .byte $00   ; 
- D 0 - I - 0x008A98 02:8A88: 00        .byte $00   ; 
- D 0 - I - 0x008A99 02:8A89: 00        .byte $00   ; 
- D 0 - I - 0x008A9A 02:8A8A: 00        .byte $00   ; 
- D 0 - I - 0x008A9B 02:8A8B: 00        .byte $00   ; 
- D 0 - I - 0x008A9C 02:8A8C: 00        .byte $00   ; 
- D 0 - I - 0x008A9D 02:8A8D: 00        .byte $00   ; 
- D 0 - I - 0x008A9E 02:8A8E: 00        .byte $00   ; 
- D 0 - I - 0x008A9F 02:8A8F: 00        .byte $00   ; 
- D 0 - I - 0x008AA0 02:8A90: 00        .byte $00   ; 
- D 0 - I - 0x008AA1 02:8A91: 00        .byte $00   ; 
- D 0 - I - 0x008AA2 02:8A92: 00        .byte $00   ; 
- D 0 - I - 0x008AA3 02:8A93: 60        .byte $60   ; 
- D 0 - I - 0x008AA4 02:8A94: 6C        .byte $6C   ; 
- D 0 - I - 0x008AA5 02:8A95: 6C        .byte $6C   ; 
- D 0 - I - 0x008AA6 02:8A96: 6C        .byte $6C   ; 
- D 0 - I - 0x008AA7 02:8A97: 6C        .byte $6C   ; 
- D 0 - I - 0x008AA8 02:8A98: 66        .byte $66   ; 
- D 0 - I - 0x008AA9 02:8A99: 00        .byte $00   ; 
- D 0 - I - 0x008AAA 02:8A9A: 00        .byte $00   ; 
- D 0 - I - 0x008AAB 02:8A9B: 00        .byte $00   ; 
- D 0 - I - 0x008AAC 02:8A9C: 00        .byte $00   ; 
off_8A9D_16:
- D 0 - I - 0x008AAD 02:8A9D: 1C        .byte $1C   ; 
- D 0 - I - 0x008AAE 02:8A9E: 00        .byte $00   ; 
- D 0 - I - 0x008AAF 02:8A9F: 00        .byte $00   ; 
- D 0 - I - 0x008AB0 02:8AA0: 0F        .byte $0F   ; 
- D 0 - I - 0x008AB1 02:8AA1: 00        .byte $00   ; 
- D 0 - I - 0x008AB2 02:8AA2: 00        .byte $00   ; 
- D 0 - I - 0x008AB3 02:8AA3: 14        .byte $14   ; 
- D 0 - I - 0x008AB4 02:8AA4: 00        .byte $00   ; 
- D 0 - I - 0x008AB5 02:8AA5: 00        .byte $00   ; 
- D 0 - I - 0x008AB6 02:8AA6: 00        .byte $00   ; 
- D 0 - I - 0x008AB7 02:8AA7: 00        .byte $00   ; 
- D 0 - I - 0x008AB8 02:8AA8: 00        .byte $00   ; 
- D 0 - I - 0x008AB9 02:8AA9: 00        .byte $00   ; 
- D 0 - I - 0x008ABA 02:8AAA: 00        .byte $00   ; 
- D 0 - I - 0x008ABB 02:8AAB: 00        .byte $00   ; 
- D 0 - I - 0x008ABC 02:8AAC: 00        .byte $00   ; 
- D 0 - I - 0x008ABD 02:8AAD: 00        .byte $00   ; 
- D 0 - I - 0x008ABE 02:8AAE: 00        .byte $00   ; 
- D 0 - I - 0x008ABF 02:8AAF: 00        .byte $00   ; 
- D 0 - I - 0x008AC0 02:8AB0: 00        .byte $00   ; 
- D 0 - I - 0x008AC1 02:8AB1: 14        .byte $14   ; 
- D 0 - I - 0x008AC2 02:8AB2: 00        .byte $00   ; 
- D 0 - I - 0x008AC3 02:8AB3: 00        .byte $00   ; 
- D 0 - I - 0x008AC4 02:8AB4: 4C        .byte $4C   ; 
- D 0 - I - 0x008AC5 02:8AB5: 60        .byte $60   ; 
- D 0 - I - 0x008AC6 02:8AB6: 6C        .byte $6C   ; 
- D 0 - I - 0x008AC7 02:8AB7: 6C        .byte $6C   ; 
- D 0 - I - 0x008AC8 02:8AB8: 6C        .byte $6C   ; 
- D 0 - I - 0x008AC9 02:8AB9: 6C        .byte $6C   ; 
- D 0 - I - 0x008ACA 02:8ABA: 69        .byte $69   ; 
- D 0 - I - 0x008ACB 02:8ABB: 00        .byte $00   ; 
- D 0 - I - 0x008ACC 02:8ABC: 00        .byte $00   ; 
off_8ABD_17:
- D 0 - I - 0x008ACD 02:8ABD: 2C        .byte $2C   ; 
- D 0 - I - 0x008ACE 02:8ABE: 04        .byte $04   ; 
- D 0 - I - 0x008ACF 02:8ABF: 04        .byte $04   ; 
- D 0 - I - 0x008AD0 02:8AC0: 1F        .byte $1F   ; 
- D 0 - I - 0x008AD1 02:8AC1: 04        .byte $04   ; 
- D 0 - I - 0x008AD2 02:8AC2: 04        .byte $04   ; 
- D 0 - I - 0x008AD3 02:8AC3: 04        .byte $04   ; 
- D 0 - I - 0x008AD4 02:8AC4: 04        .byte $04   ; 
- D 0 - I - 0x008AD5 02:8AC5: 04        .byte $04   ; 
- D 0 - I - 0x008AD6 02:8AC6: 04        .byte $04   ; 
- D 0 - I - 0x008AD7 02:8AC7: 17        .byte $17   ; 
- D 0 - I - 0x008AD8 02:8AC8: 04        .byte $04   ; 
- D 0 - I - 0x008AD9 02:8AC9: 04        .byte $04   ; 
- D 0 - I - 0x008ADA 02:8ACA: 16        .byte $16   ; 
- D 0 - I - 0x008ADB 02:8ACB: 04        .byte $04   ; 
- D 0 - I - 0x008ADC 02:8ACC: 04        .byte $04   ; 
- D 0 - I - 0x008ADD 02:8ACD: 04        .byte $04   ; 
- D 0 - I - 0x008ADE 02:8ACE: 17        .byte $17   ; 
- D 0 - I - 0x008ADF 02:8ACF: 04        .byte $04   ; 
- D 0 - I - 0x008AE0 02:8AD0: 04        .byte $04   ; 
- D 0 - I - 0x008AE1 02:8AD1: 04        .byte $04   ; 
- D 0 - I - 0x008AE2 02:8AD2: 04        .byte $04   ; 
- D 0 - I - 0x008AE3 02:8AD3: 04        .byte $04   ; 
- D 0 - I - 0x008AE4 02:8AD4: 04        .byte $04   ; 
- D 0 - I - 0x008AE5 02:8AD5: 61        .byte $61   ; 
- D 0 - I - 0x008AE6 02:8AD6: 6D        .byte $6D   ; 
- D 0 - I - 0x008AE7 02:8AD7: 71        .byte $71   ; 
- D 0 - I - 0x008AE8 02:8AD8: 79        .byte $79   ; 
- D 0 - I - 0x008AE9 02:8AD9: 5E        .byte $5E   ; 
- D 0 - I - 0x008AEA 02:8ADA: 47        .byte $47   ; 
off_8ADB_14:
- D 0 - I - 0x008AEB 02:8ADB: 04        .byte $04   ; 
- D 0 - I - 0x008AEC 02:8ADC: 04        .byte $04   ; 
- D 0 - I - 0x008AED 02:8ADD: 41        .byte $41   ; 
- D 0 - I - 0x008AEE 02:8ADE: 55        .byte $55   ; 
- D 0 - I - 0x008AEF 02:8ADF: 7F        .byte $7F   ; 
- D 0 - I - 0x008AF0 02:8AE0: 70        .byte $70   ; 
- D 0 - I - 0x008AF1 02:8AE1: 6D        .byte $6D   ; 
- D 0 - I - 0x008AF2 02:8AE2: 6B        .byte $6B   ; 
- D 0 - I - 0x008AF3 02:8AE3: 17        .byte $17   ; 
- D 0 - I - 0x008AF4 02:8AE4: 04        .byte $04   ; 
- D 0 - I - 0x008AF5 02:8AE5: 04        .byte $04   ; 
- D 0 - I - 0x008AF6 02:8AE6: 04        .byte $04   ; 
- D 0 - I - 0x008AF7 02:8AE7: 04        .byte $04   ; 
- D 0 - I - 0x008AF8 02:8AE8: 04        .byte $04   ; 
- D 0 - I - 0x008AF9 02:8AE9: 61        .byte $61   ; 
- D 0 - I - 0x008AFA 02:8AEA: 6D        .byte $6D   ; 
- D 0 - I - 0x008AFB 02:8AEB: 6D        .byte $6D   ; 
- D 0 - I - 0x008AFC 02:8AEC: 6D        .byte $6D   ; 
- D 0 - I - 0x008AFD 02:8AED: 6D        .byte $6D   ; 
- D 0 - I - 0x008AFE 02:8AEE: 70        .byte $70   ; 
- D 0 - I - 0x008AFF 02:8AEF: 6D        .byte $6D   ; 
- D 0 - I - 0x008B00 02:8AF0: 67        .byte $67   ; 
- D 0 - I - 0x008B01 02:8AF1: 04        .byte $04   ; 
- D 0 - I - 0x008B02 02:8AF2: 04        .byte $04   ; 
- D 0 - I - 0x008B03 02:8AF3: 04        .byte $04   ; 
- D 0 - I - 0x008B04 02:8AF4: 04        .byte $04   ; 
- D 0 - I - 0x008B05 02:8AF5: 04        .byte $04   ; 
- D 0 - I - 0x008B06 02:8AF6: 04        .byte $04   ; 
- D 0 - I - 0x008B07 02:8AF7: 04        .byte $04   ; 
- D 0 - I - 0x008B08 02:8AF8: 09        .byte $09   ; 
- D 0 - I - 0x008B09 02:8AF9: 0A        .byte $0A   ; 
- D 0 - I - 0x008B0A 02:8AFA: 0B        .byte $0B   ; 
off_8AFB_18:
- D 0 - I - 0x008B0B 02:8AFB: 2C        .byte $2C   ; 
- D 0 - I - 0x008B0C 02:8AFC: 04        .byte $04   ; 
- D 0 - I - 0x008B0D 02:8AFD: 04        .byte $04   ; 
- D 0 - I - 0x008B0E 02:8AFE: 2F        .byte $2F   ; 
- D 0 - I - 0x008B0F 02:8AFF: 04        .byte $04   ; 
- D 0 - I - 0x008B10 02:8B00: 04        .byte $04   ; 
- D 0 - I - 0x008B11 02:8B01: 04        .byte $04   ; 
- D 0 - I - 0x008B12 02:8B02: 04        .byte $04   ; 
- D 0 - I - 0x008B13 02:8B03: 41        .byte $41   ; 
- D 0 - I - 0x008B14 02:8B04: 55        .byte $55   ; 
- D 0 - I - 0x008B15 02:8B05: 55        .byte $55   ; 
- D 0 - I - 0x008B16 02:8B06: 43        .byte $43   ; 
- D 0 - I - 0x008B17 02:8B07: 04        .byte $04   ; 
- D 0 - I - 0x008B18 02:8B08: 04        .byte $04   ; 
- D 0 - I - 0x008B19 02:8B09: 04        .byte $04   ; 
- D 0 - I - 0x008B1A 02:8B0A: 04        .byte $04   ; 
- D 0 - I - 0x008B1B 02:8B0B: 04        .byte $04   ; 
- D 0 - I - 0x008B1C 02:8B0C: 04        .byte $04   ; 
- D 0 - I - 0x008B1D 02:8B0D: 04        .byte $04   ; 
- D 0 - I - 0x008B1E 02:8B0E: 04        .byte $04   ; 
- D 0 - I - 0x008B1F 02:8B0F: 04        .byte $04   ; 
- D 0 - I - 0x008B20 02:8B10: 04        .byte $04   ; 
- D 0 - I - 0x008B21 02:8B11: 04        .byte $04   ; 
- D 0 - I - 0x008B22 02:8B12: 04        .byte $04   ; 
- D 0 - I - 0x008B23 02:8B13: 61        .byte $61   ; 
- D 0 - I - 0x008B24 02:8B14: 70        .byte $70   ; 
- D 0 - I - 0x008B25 02:8B15: 6D        .byte $6D   ; 
- D 0 - I - 0x008B26 02:8B16: 6A        .byte $6A   ; 
- D 0 - I - 0x008B27 02:8B17: 4F        .byte $4F   ; 
off_8B18_1D:
- D 0 - I - 0x008B28 02:8B18: 16        .byte $16   ; 
- D 0 - I - 0x008B29 02:8B19: 04        .byte $04   ; 
- D 0 - I - 0x008B2A 02:8B1A: 04        .byte $04   ; 
- D 0 - I - 0x008B2B 02:8B1B: 04        .byte $04   ; 
- D 0 - I - 0x008B2C 02:8B1C: 04        .byte $04   ; 
- D 0 - I - 0x008B2D 02:8B1D: 16        .byte $16   ; 
- D 0 - I - 0x008B2E 02:8B1E: 04        .byte $04   ; 
- D 0 - I - 0x008B2F 02:8B1F: 04        .byte $04   ; 
- D 0 - I - 0x008B30 02:8B20: 04        .byte $04   ; 
- D 0 - I - 0x008B31 02:8B21: 04        .byte $04   ; 
- D 0 - I - 0x008B32 02:8B22: 16        .byte $16   ; 
- D 0 - I - 0x008B33 02:8B23: 04        .byte $04   ; 
- D 0 - I - 0x008B34 02:8B24: 61        .byte $61   ; 
- D 0 - I - 0x008B35 02:8B25: 6D        .byte $6D   ; 
- D 0 - I - 0x008B36 02:8B26: 70        .byte $70   ; 
- D 0 - I - 0x008B37 02:8B27: 6D        .byte $6D   ; 
- D 0 - I - 0x008B38 02:8B28: 6D        .byte $6D   ; 
- D 0 - I - 0x008B39 02:8B29: 6D        .byte $6D   ; 
- D 0 - I - 0x008B3A 02:8B2A: 6D        .byte $6D   ; 
- D 0 - I - 0x008B3B 02:8B2B: 70        .byte $70   ; 
- D 0 - I - 0x008B3C 02:8B2C: 6D        .byte $6D   ; 
- D 0 - I - 0x008B3D 02:8B2D: 67        .byte $67   ; 
- D 0 - I - 0x008B3E 02:8B2E: 04        .byte $04   ; 
- D 0 - I - 0x008B3F 02:8B2F: 04        .byte $04   ; 
- D 0 - I - 0x008B40 02:8B30: 04        .byte $04   ; 
- D 0 - I - 0x008B41 02:8B31: 04        .byte $04   ; 
- D 0 - I - 0x008B42 02:8B32: 04        .byte $04   ; 
- D 0 - I - 0x008B43 02:8B33: 04        .byte $04   ; 
- D 0 - I - 0x008B44 02:8B34: 04        .byte $04   ; 
- D 0 - I - 0x008B45 02:8B35: 04        .byte $04   ; 
- D 0 - I - 0x008B46 02:8B36: 04        .byte $04   ; 
- D 0 - I - 0x008B47 02:8B37: 2B        .byte $2B   ; 
off_8B38_19:
- D 0 - I - 0x008B48 02:8B38: 1C        .byte $1C   ; 
- D 0 - I - 0x008B49 02:8B39: 00        .byte $00   ; 
- D 0 - I - 0x008B4A 02:8B3A: 00        .byte $00   ; 
- D 0 - I - 0x008B4B 02:8B3B: 3F        .byte $3F   ; 
- D 0 - I - 0x008B4C 02:8B3C: 00        .byte $00   ; 
- D 0 - I - 0x008B4D 02:8B3D: 00        .byte $00   ; 
- D 0 - I - 0x008B4E 02:8B3E: 00        .byte $00   ; 
- D 0 - I - 0x008B4F 02:8B3F: 00        .byte $00   ; 
- D 0 - I - 0x008B50 02:8B40: 60        .byte $60   ; 
- D 0 - I - 0x008B51 02:8B41: 6E        .byte $6E   ; 
- D 0 - I - 0x008B52 02:8B42: 6C        .byte $6C   ; 
- D 0 - I - 0x008B53 02:8B43: 66        .byte $66   ; 
- D 0 - I - 0x008B54 02:8B44: 4A        .byte $4A   ; 
- D 0 - I - 0x008B55 02:8B45: 00        .byte $00   ; 
- D 0 - I - 0x008B56 02:8B46: 00        .byte $00   ; 
- D 0 - I - 0x008B57 02:8B47: 00        .byte $00   ; 
- D 0 - I - 0x008B58 02:8B48: 00        .byte $00   ; 
- D 0 - I - 0x008B59 02:8B49: 00        .byte $00   ; 
- D 0 - I - 0x008B5A 02:8B4A: 00        .byte $00   ; 
- D 0 - I - 0x008B5B 02:8B4B: 00        .byte $00   ; 
- D 0 - I - 0x008B5C 02:8B4C: 00        .byte $00   ; 
- D 0 - I - 0x008B5D 02:8B4D: 00        .byte $00   ; 
off_8B4E_19:
- D 0 - I - 0x008B5E 02:8B4E: 00        .byte $00   ; 
- D 0 - I - 0x008B5F 02:8B4F: 00        .byte $00   ; 
- D 0 - I - 0x008B60 02:8B50: 44        .byte $44   ; 
- D 0 - I - 0x008B61 02:8B51: 5C        .byte $5C   ; 
- D 0 - I - 0x008B62 02:8B52: 5D        .byte $5D   ; 
- D 0 - I - 0x008B63 02:8B53: 46        .byte $46   ; 
- D 0 - I - 0x008B64 02:8B54: 00        .byte $00   ; 
- D 0 - I - 0x008B65 02:8B55: 00        .byte $00   ; 
- D 0 - I - 0x008B66 02:8B56: 00        .byte $00   ; 
- D 0 - I - 0x008B67 02:8B57: 00        .byte $00   ; 
- D 0 - I - 0x008B68 02:8B58: 00        .byte $00   ; 
- D 0 - I - 0x008B69 02:8B59: 00        .byte $00   ; 
- D 0 - I - 0x008B6A 02:8B5A: 00        .byte $00   ; 
- D 0 - I - 0x008B6B 02:8B5B: 00        .byte $00   ; 
- D 0 - I - 0x008B6C 02:8B5C: 00        .byte $00   ; 
- D 0 - I - 0x008B6D 02:8B5D: 48        .byte $48   ; 
- D 0 - I - 0x008B6E 02:8B5E: 60        .byte $60   ; 
- D 0 - I - 0x008B6F 02:8B5F: 6C        .byte $6C   ; 
- D 0 - I - 0x008B70 02:8B60: 6C        .byte $6C   ; 
- D 0 - I - 0x008B71 02:8B61: 6C        .byte $6C   ; 
- D 0 - I - 0x008B72 02:8B62: 6C        .byte $6C   ; 
- D 0 - I - 0x008B73 02:8B63: 6C        .byte $6C   ; 
- D 0 - I - 0x008B74 02:8B64: 6C        .byte $6C   ; 
- D 0 - I - 0x008B75 02:8B65: 78        .byte $78   ; 
- D 0 - I - 0x008B76 02:8B66: 5C        .byte $5C   ; 
- D 0 - I - 0x008B77 02:8B67: 46        .byte $46   ; 
- D 0 - I - 0x008B78 02:8B68: 00        .byte $00   ; 
- D 0 - I - 0x008B79 02:8B69: 00        .byte $00   ; 
- D 0 - I - 0x008B7A 02:8B6A: 38        .byte $38   ; 
- D 0 - I - 0x008B7B 02:8B6B: 00        .byte $00   ; 
- D 0 - I - 0x008B7C 02:8B6C: 00        .byte $00   ; 
- D 0 - I - 0x008B7D 02:8B6D: 1B        .byte $1B   ; 
off_8B6E_1A:
- D 0 - I - 0x008B7E 02:8B6E: 1C        .byte $1C   ; 
- D 0 - I - 0x008B7F 02:8B6F: 00        .byte $00   ; 
- D 0 - I - 0x008B80 02:8B70: 2D        .byte $2D   ; 
- D 0 - I - 0x008B81 02:8B71: 2E        .byte $2E   ; 
- D 0 - I - 0x008B82 02:8B72: 00        .byte $00   ; 
- D 0 - I - 0x008B83 02:8B73: 00        .byte $00   ; 
- D 0 - I - 0x008B84 02:8B74: 00        .byte $00   ; 
- D 0 - I - 0x008B85 02:8B75: 00        .byte $00   ; 
- D 0 - I - 0x008B86 02:8B76: 60        .byte $60   ; 
- D 0 - I - 0x008B87 02:8B77: 6C        .byte $6C   ; 
- D 0 - I - 0x008B88 02:8B78: 6C        .byte $6C   ; 
- D 0 - I - 0x008B89 02:8B79: 7C        .byte $7C   ; 
- D 0 - I - 0x008B8A 02:8B7A: 54        .byte $54   ; 
- D 0 - I - 0x008B8B 02:8B7B: 54        .byte $54   ; 
- D 0 - I - 0x008B8C 02:8B7C: 54        .byte $54   ; 
- D 0 - I - 0x008B8D 02:8B7D: 54        .byte $54   ; 
- D 0 - I - 0x008B8E 02:8B7E: 54        .byte $54   ; 
- D 0 - I - 0x008B8F 02:8B7F: 42        .byte $42   ; 
off_8B80_00:
- D 0 - I - 0x008B90 02:8B80: 00        .byte $00   ; 
- D 0 - I - 0x008B91 02:8B81: 00        .byte $00   ; 
- D 0 - I - 0x008B92 02:8B82: 00        .byte $00   ; 
- D 0 - I - 0x008B93 02:8B83: 00        .byte $00   ; 
- D 0 - I - 0x008B94 02:8B84: 00        .byte $00   ; 
- D 0 - I - 0x008B95 02:8B85: 00        .byte $00   ; 
- D 0 - I - 0x008B96 02:8B86: 00        .byte $00   ; 
- D 0 - I - 0x008B97 02:8B87: 00        .byte $00   ; 
- D 0 - I - 0x008B98 02:8B88: 00        .byte $00   ; 
- D 0 - I - 0x008B99 02:8B89: 00        .byte $00   ; 
- D 0 - I - 0x008B9A 02:8B8A: 00        .byte $00   ; 
- D 0 - I - 0x008B9B 02:8B8B: 00        .byte $00   ; 
- D 0 - I - 0x008B9C 02:8B8C: 00        .byte $00   ; 
- D 0 - I - 0x008B9D 02:8B8D: 00        .byte $00   ; 
- D 0 - I - 0x008B9E 02:8B8E: 55        .byte $55   ; 
- D 0 - I - 0x008B9F 02:8B8F: 11        .byte $11   ; 
- - - - - - 0x008BA0 02:8B90: 00        .byte $00   ; 
- - - - - - 0x008BA1 02:8B91: 00        .byte $00   ; 
- D 0 - I - 0x008BA2 02:8B92: 00        .byte $00   ; 
- D 0 - I - 0x008BA3 02:8B93: 00        .byte $00   ; 
- D 0 - I - 0x008BA4 02:8B94: 00        .byte $00   ; 
- D 0 - I - 0x008BA5 02:8B95: 00        .byte $00   ; 
- D 0 - I - 0x008BA6 02:8B96: 55        .byte $55   ; 
- D 0 - I - 0x008BA7 02:8B97: 55        .byte $55   ; 
- - - - - - 0x008BA8 02:8B98: 00        .byte $00   ; 
- - - - - - 0x008BA9 02:8B99: 00        .byte $00   ; 
- D 0 - I - 0x008BAA 02:8B9A: 00        .byte $00   ; 
- D 0 - I - 0x008BAB 02:8B9B: 00        .byte $00   ; 
- D 0 - I - 0x008BAC 02:8B9C: 00        .byte $00   ; 
- D 0 - I - 0x008BAD 02:8B9D: 54        .byte $54   ; 
- D 0 - I - 0x008BAE 02:8B9E: 55        .byte $55   ; 
- D 0 - I - 0x008BAF 02:8B9F: 55        .byte $55   ; 
- - - - - - 0x008BB0 02:8BA0: 00        .byte $00   ; 
- - - - - - 0x008BB1 02:8BA1: 00        .byte $00   ; 
- D 0 - I - 0x008BB2 02:8BA2: 00        .byte $00   ; 
- D 0 - I - 0x008BB3 02:8BA3: 00        .byte $00   ; 
- D 0 - I - 0x008BB4 02:8BA4: 00        .byte $00   ; 
- D 0 - I - 0x008BB5 02:8BA5: 05        .byte $05   ; 
- D 0 - I - 0x008BB6 02:8BA6: 01        .byte $01   ; 
- D 0 - I - 0x008BB7 02:8BA7: 00        .byte $00   ; 
off_8BA8_04:
- - - - - - 0x008BB8 02:8BA8: 00        .byte $00   ; 
- - - - - - 0x008BB9 02:8BA9: 00        .byte $00   ; 
- D 0 - I - 0x008BBA 02:8BAA: 00        .byte $00   ; 
- D 0 - I - 0x008BBB 02:8BAB: 00        .byte $00   ; 
- D 0 - I - 0x008BBC 02:8BAC: 00        .byte $00   ; 
- D 0 - I - 0x008BBD 02:8BAD: 00        .byte $00   ; 
- D 0 - I - 0x008BBE 02:8BAE: 00        .byte $00   ; 
- D 0 - I - 0x008BBF 02:8BAF: 00        .byte $00   ; 
- - - - - - 0x008BC0 02:8BB0: 00        .byte $00   ; 
- D 0 - I - 0x008BC1 02:8BB1: 00        .byte $00   ; 
- D 0 - I - 0x008BC2 02:8BB2: 00        .byte $00   ; 
- D 0 - I - 0x008BC3 02:8BB3: 00        .byte $00   ; 
off_8BB4_04:
- D 0 - I - 0x008BC4 02:8BB4: 00        .byte $00   ; 
- D 0 - I - 0x008BC5 02:8BB5: 00        .byte $00   ; 
- D 0 - I - 0x008BC6 02:8BB6: 00        .byte $00   ; 
- D 0 - I - 0x008BC7 02:8BB7: 00        .byte $00   ; 
- D 0 - I - 0x008BC8 02:8BB8: 00        .byte $00   ; 
- D 0 - I - 0x008BC9 02:8BB9: 00        .byte $00   ; 
- D 0 - I - 0x008BCA 02:8BBA: 00        .byte $00   ; 
- D 0 - I - 0x008BCB 02:8BBB: 00        .byte $00   ; 
- D 0 - I - 0x008BCC 02:8BBC: 00        .byte $00   ; 
- D 0 - I - 0x008BCD 02:8BBD: 00        .byte $00   ; 
- D 0 - I - 0x008BCE 02:8BBE: 00        .byte $00   ; 
- D 0 - I - 0x008BCF 02:8BBF: 00        .byte $00   ; 
- D 0 - I - 0x008BD0 02:8BC0: 40        .byte $40   ; 
- D 0 - I - 0x008BD1 02:8BC1: 54        .byte $54   ; 
- D 0 - I - 0x008BD2 02:8BC2: 54        .byte $54   ; 
- D 0 - I - 0x008BD3 02:8BC3: 54        .byte $54   ; 
- D 0 - I - 0x008BD4 02:8BC4: 54        .byte $54   ; 
- D 0 - I - 0x008BD5 02:8BC5: 42        .byte $42   ; 
- D 0 - I - 0x008BD6 02:8BC6: 00        .byte $00   ; 
- D 0 - I - 0x008BD7 02:8BC7: 00        .byte $00   ; 
- D 0 - I - 0x008BD8 02:8BC8: 00        .byte $00   ; 
- D 0 - I - 0x008BD9 02:8BC9: 00        .byte $00   ; 
- D 0 - I - 0x008BDA 02:8BCA: 00        .byte $00   ; 
- D 0 - I - 0x008BDB 02:8BCB: 00        .byte $00   ; 
- D 0 - I - 0x008BDC 02:8BCC: 00        .byte $00   ; 
- D 0 - I - 0x008BDD 02:8BCD: 00        .byte $00   ; 
- D 0 - I - 0x008BDE 02:8BCE: 00        .byte $00   ; 
- D 0 - I - 0x008BDF 02:8BCF: 00        .byte $00   ; 
- D 0 - I - 0x008BE0 02:8BD0: 00        .byte $00   ; 
- D 0 - I - 0x008BE1 02:8BD1: 00        .byte $00   ; 
- D 0 - I - 0x008BE2 02:8BD2: 00        .byte $00   ; 
- D 0 - I - 0x008BE3 02:8BD3: 00        .byte $00   ; 
off_8BD4_1B:
- D 0 - I - 0x008BE4 02:8BD4: 3C        .byte $3C   ; 
- D 0 - I - 0x008BE5 02:8BD5: 3D        .byte $3D   ; 
- D 0 - I - 0x008BE6 02:8BD6: 3E        .byte $3E   ; 
- D 0 - I - 0x008BE7 02:8BD7: 04        .byte $04   ; 
- D 0 - I - 0x008BE8 02:8BD8: 04        .byte $04   ; 
- D 0 - I - 0x008BE9 02:8BD9: 04        .byte $04   ; 
- D 0 - I - 0x008BEA 02:8BDA: 04        .byte $04   ; 
- D 0 - I - 0x008BEB 02:8BDB: 04        .byte $04   ; 
- D 0 - I - 0x008BEC 02:8BDC: 45        .byte $45   ; 
- D 0 - I - 0x008BED 02:8BDD: 5B        .byte $5B   ; 
- D 0 - I - 0x008BEE 02:8BDE: 7B        .byte $7B   ; 
- D 0 - I - 0x008BEF 02:8BDF: 71        .byte $71   ; 
- D 0 - I - 0x008BF0 02:8BE0: 6D        .byte $6D   ; 
- D 0 - I - 0x008BF1 02:8BE1: 6D        .byte $6D   ; 
- D 0 - I - 0x008BF2 02:8BE2: 6D        .byte $6D   ; 
- D 0 - I - 0x008BF3 02:8BE3: 6D        .byte $6D   ; 
- D 0 - I - 0x008BF4 02:8BE4: 6D        .byte $6D   ; 
- D 0 - I - 0x008BF5 02:8BE5: 67        .byte $67   ; 
- D 0 - I - 0x008BF6 02:8BE6: 4B        .byte $4B   ; 
- D 0 - I - 0x008BF7 02:8BE7: 04        .byte $04   ; 
- D 0 - I - 0x008BF8 02:8BE8: 04        .byte $04   ; 
- D 0 - I - 0x008BF9 02:8BE9: 04        .byte $04   ; 
- D 0 - I - 0x008BFA 02:8BEA: 17        .byte $17   ; 
off_8BEB_03:
- D 0 - I - 0x008BFB 02:8BEB: 04        .byte $04   ; 
- D 0 - I - 0x008BFC 02:8BEC: 04        .byte $04   ; 
- D 0 - I - 0x008BFD 02:8BED: 04        .byte $04   ; 
- D 0 - I - 0x008BFE 02:8BEE: 04        .byte $04   ; 
- D 0 - I - 0x008BFF 02:8BEF: 04        .byte $04   ; 
- D 0 - I - 0x008C00 02:8BF0: 04        .byte $04   ; 
- D 0 - I - 0x008C01 02:8BF1: 04        .byte $04   ; 
- D 0 - I - 0x008C02 02:8BF2: 04        .byte $04   ; 
- D 0 - I - 0x008C03 02:8BF3: 04        .byte $04   ; 
- D 0 - I - 0x008C04 02:8BF4: 04        .byte $04   ; 
- D 0 - I - 0x008C05 02:8BF5: 04        .byte $04   ; 
- D 0 - I - 0x008C06 02:8BF6: 04        .byte $04   ; 
- D 0 - I - 0x008C07 02:8BF7: 16        .byte $16   ; 
- D 0 - I - 0x008C08 02:8BF8: 04        .byte $04   ; 
- D 0 - I - 0x008C09 02:8BF9: 04        .byte $04   ; 
- D 0 - I - 0x008C0A 02:8BFA: 04        .byte $04   ; 
- D 0 - I - 0x008C0B 02:8BFB: 31        .byte $31   ; 
- D 0 - I - 0x008C0C 02:8BFC: 04        .byte $04   ; 
- D 0 - I - 0x008C0D 02:8BFD: 04        .byte $04   ; 
- D 0 - I - 0x008C0E 02:8BFE: 04        .byte $04   ; 
- D 0 - I - 0x008C0F 02:8BFF: 61        .byte $61   ; 
- D 0 - I - 0x008C10 02:8C00: 71        .byte $71   ; 
- D 0 - I - 0x008C11 02:8C01: 6D        .byte $6D   ; 
- D 0 - I - 0x008C12 02:8C02: 6D        .byte $6D   ; 
- D 0 - I - 0x008C13 02:8C03: 6D        .byte $6D   ; 
- D 0 - I - 0x008C14 02:8C04: 67        .byte $67   ; 
- D 0 - I - 0x008C15 02:8C05: 4B        .byte $4B   ; 
- D 0 - I - 0x008C16 02:8C06: 37        .byte $37   ; 
- D 0 - I - 0x008C17 02:8C07: 2C        .byte $2C   ; 
- D 0 - I - 0x008C18 02:8C08: 49        .byte $49   ; 
- D 0 - I - 0x008C19 02:8C09: 61        .byte $61   ; 
off_8C0A_0F:
- D 0 - I - 0x008C1A 02:8C0A: 6D        .byte $6D   ; 
- D 0 - I - 0x008C1B 02:8C0B: F7        .byte $F7   ; 
- D 0 - I - 0x008C1C 02:8C0C: 71        .byte $71   ; 
- D 0 - I - 0x008C1D 02:8C0D: 6D        .byte $6D   ; 
- D 0 - I - 0x008C1E 02:8C0E: 6D        .byte $6D   ; 
- D 0 - I - 0x008C1F 02:8C0F: 6D        .byte $6D   ; 
- D 0 - I - 0x008C20 02:8C10: 70        .byte $70   ; 
- D 0 - I - 0x008C21 02:8C11: 6D        .byte $6D   ; 
- D 0 - I - 0x008C22 02:8C12: 6D        .byte $6D   ; 
- D 0 - I - 0x008C23 02:8C13: 6A        .byte $6A   ; 
- D 0 - I - 0x008C24 02:8C14: 04        .byte $04   ; 
- D 0 - I - 0x008C25 02:8C15: 04        .byte $04   ; 
- D 0 - I - 0x008C26 02:8C16: 04        .byte $04   ; 
- D 0 - I - 0x008C27 02:8C17: 34        .byte $34   ; 
- D 0 - I - 0x008C28 02:8C18: C0        .byte $C0   ; 
- D 0 - I - 0x008C29 02:8C19: C1        .byte $C1   ; 
- D 0 - I - 0x008C2A 02:8C1A: C2        .byte $C2   ; 
- D 0 - I - 0x008C2B 02:8C1B: C3        .byte $C3   ; 
- D 0 - I - 0x008C2C 02:8C1C: C4        .byte $C4   ; 
- D 0 - I - 0x008C2D 02:8C1D: 04        .byte $04   ; 
- D 0 - I - 0x008C2E 02:8C1E: 04        .byte $04   ; 
- D 0 - I - 0x008C2F 02:8C1F: 04        .byte $04   ; 
- D 0 - I - 0x008C30 02:8C20: 17        .byte $17   ; 
- D 0 - I - 0x008C31 02:8C21: 04        .byte $04   ; 
- - - - - - 0x008C32 02:8C22: 04        .byte $04   ; 
off_8C23_09:
- - - - - - 0x008C33 02:8C23: 04        .byte $04   ; 
- - - - - - 0x008C34 02:8C24: 04        .byte $04   ; 
- - - - - - 0x008C35 02:8C25: 04        .byte $04   ; 
- - - - - - 0x008C36 02:8C26: 04        .byte $04   ; 
- - - - - - 0x008C37 02:8C27: 16        .byte $16   ; 
- - - - - - 0x008C38 02:8C28: 04        .byte $04   ; 
- - - - - - 0x008C39 02:8C29: 04        .byte $04   ; 
- - - - - - 0x008C3A 02:8C2A: 17        .byte $17   ; 
- - - - - - 0x008C3B 02:8C2B: 04        .byte $04   ; 
- D 0 - I - 0x008C3C 02:8C2C: 04        .byte $04   ; 
- D 0 - I - 0x008C3D 02:8C2D: 04        .byte $04   ; 
- D 0 - I - 0x008C3E 02:8C2E: 04        .byte $04   ; 
- D 0 - I - 0x008C3F 02:8C2F: 04        .byte $04   ; 
- D 0 - I - 0x008C40 02:8C30: 04        .byte $04   ; 
- D 0 - I - 0x008C41 02:8C31: 04        .byte $04   ; 
- D 0 - I - 0x008C42 02:8C32: 33        .byte $33   ; 
- D 0 - I - 0x008C43 02:8C33: 04        .byte $04   ; 
- D 0 - I - 0x008C44 02:8C34: 04        .byte $04   ; 
- D 0 - I - 0x008C45 02:8C35: 45        .byte $45   ; 
- D 0 - I - 0x008C46 02:8C36: 5B        .byte $5B   ; 
- D 0 - I - 0x008C47 02:8C37: 7B        .byte $7B   ; 
- D 0 - I - 0x008C48 02:8C38: 6D        .byte $6D   ; 
- D 0 - I - 0x008C49 02:8C39: 71        .byte $71   ; 
- D 0 - I - 0x008C4A 02:8C3A: 6A        .byte $6A   ; 
- D 0 - I - 0x008C4B 02:8C3B: 17        .byte $17   ; 
- D 0 - I - 0x008C4C 02:8C3C: 04        .byte $04   ; 
- D 0 - I - 0x008C4D 02:8C3D: 04        .byte $04   ; 
- D 0 - I - 0x008C4E 02:8C3E: 04        .byte $04   ; 
- D 0 - I - 0x008C4F 02:8C3F: 45        .byte $45   ; 
- D 0 - I - 0x008C50 02:8C40: 5B        .byte $5B   ; 
off_8C41_13:
- D 0 - I - 0x008C51 02:8C41: 5B        .byte $5B   ; 
- D 0 - I - 0x008C52 02:8C42: 5B        .byte $5B   ; 
- D 0 - I - 0x008C53 02:8C43: E4        .byte $E4   ; 
- D 0 - I - 0x008C54 02:8C44: 5B        .byte $5B   ; 
- D 0 - I - 0x008C55 02:8C45: 7B        .byte $7B   ; 
- D 0 - I - 0x008C56 02:8C46: 6D        .byte $6D   ; 
- D 0 - I - 0x008C57 02:8C47: 6D        .byte $6D   ; 
- D 0 - I - 0x008C58 02:8C48: 6A        .byte $6A   ; 
- D 0 - I - 0x008C59 02:8C49: 35        .byte $35   ; 
- D 0 - I - 0x008C5A 02:8C4A: 04        .byte $04   ; 
- D 0 - I - 0x008C5B 02:8C4B: 04        .byte $04   ; 
- D 0 - I - 0x008C5C 02:8C4C: 04        .byte $04   ; 
- D 0 - I - 0x008C5D 02:8C4D: 04        .byte $04   ; 
- D 0 - I - 0x008C5E 02:8C4E: 37        .byte $37   ; 
- D 0 - I - 0x008C5F 02:8C4F: B5        .byte $B5   ; 
- D 0 - I - 0x008C60 02:8C50: B6        .byte $B6   ; 
- D 0 - I - 0x008C61 02:8C51: B7        .byte $B7   ; 
- D 0 - I - 0x008C62 02:8C52: B7        .byte $B7   ; 
- D 0 - I - 0x008C63 02:8C53: B8        .byte $B8   ; 
- D 0 - I - 0x008C64 02:8C54: 04        .byte $04   ; 
- D 0 - I - 0x008C65 02:8C55: 04        .byte $04   ; 
- D 0 - I - 0x008C66 02:8C56: 04        .byte $04   ; 
- D 0 - I - 0x008C67 02:8C57: 04        .byte $04   ; 
- D 0 - I - 0x008C68 02:8C58: 04        .byte $04   ; 
off_8C59_17:
- D 0 - I - 0x008C69 02:8C59: 04        .byte $04   ; 
- D 0 - I - 0x008C6A 02:8C5A: 04        .byte $04   ; 
- D 0 - I - 0x008C6B 02:8C5B: 04        .byte $04   ; 
- D 0 - I - 0x008C6C 02:8C5C: 04        .byte $04   ; 
- D 0 - I - 0x008C6D 02:8C5D: 04        .byte $04   ; 
- D 0 - I - 0x008C6E 02:8C5E: 17        .byte $17   ; 
- D 0 - I - 0x008C6F 02:8C5F: 04        .byte $04   ; 
- D 0 - I - 0x008C70 02:8C60: 04        .byte $04   ; 
- D 0 - I - 0x008C71 02:8C61: 04        .byte $04   ; 
- D 0 - I - 0x008C72 02:8C62: 16        .byte $16   ; 
- D 0 - I - 0x008C73 02:8C63: 04        .byte $04   ; 
- D 0 - I - 0x008C74 02:8C64: 49        .byte $49   ; 
- D 0 - I - 0x008C75 02:8C65: 61        .byte $61   ; 
- D 0 - I - 0x008C76 02:8C66: 6D        .byte $6D   ; 
- D 0 - I - 0x008C77 02:8C67: 70        .byte $70   ; 
- D 0 - I - 0x008C78 02:8C68: 6D        .byte $6D   ; 
- D 0 - I - 0x008C79 02:8C69: 6D        .byte $6D   ; 
- D 0 - I - 0x008C7A 02:8C6A: 67        .byte $67   ; 
- D 0 - I - 0x008C7B 02:8C6B: 4B        .byte $4B   ; 
- D 0 - I - 0x008C7C 02:8C6C: 04        .byte $04   ; 
- D 0 - I - 0x008C7D 02:8C6D: 04        .byte $04   ; 
- D 0 - I - 0x008C7E 02:8C6E: 16        .byte $16   ; 
- D 0 - I - 0x008C7F 02:8C6F: 45        .byte $45   ; 
- D 0 - I - 0x008C80 02:8C70: 5E        .byte $5E   ; 
- D 0 - I - 0x008C81 02:8C71: 5F        .byte $5F   ; 
- D 0 - I - 0x008C82 02:8C72: 47        .byte $47   ; 
- D 0 - I - 0x008C83 02:8C73: 04        .byte $04   ; 
- D 0 - I - 0x008C84 02:8C74: 04        .byte $04   ; 
- D 0 - I - 0x008C85 02:8C75: 18        .byte $18   ; 
- D 0 - I - 0x008C86 02:8C76: 04        .byte $04   ; 
- D 0 - I - 0x008C87 02:8C77: 04        .byte $04   ; 
- D 0 - I - 0x008C88 02:8C78: 2B        .byte $2B   ; 
off_8C79_1C:
- D 0 - I - 0x008C89 02:8C79: 2C        .byte $2C   ; 
- D 0 - I - 0x008C8A 02:8C7A: 04        .byte $04   ; 
- D 0 - I - 0x008C8B 02:8C7B: 04        .byte $04   ; 
- D 0 - I - 0x008C8C 02:8C7C: 04        .byte $04   ; 
- D 0 - I - 0x008C8D 02:8C7D: 04        .byte $04   ; 
- D 0 - I - 0x008C8E 02:8C7E: 04        .byte $04   ; 
- D 0 - I - 0x008C8F 02:8C7F: 04        .byte $04   ; 
- D 0 - I - 0x008C90 02:8C80: 04        .byte $04   ; 
- D 0 - I - 0x008C91 02:8C81: 04        .byte $04   ; 
- D 0 - I - 0x008C92 02:8C82: 4D        .byte $4D   ; 
- D 0 - I - 0x008C93 02:8C83: 61        .byte $61   ; 
- D 0 - I - 0x008C94 02:8C84: 6D        .byte $6D   ; 
- D 0 - I - 0x008C95 02:8C85: 6D        .byte $6D   ; 
- D 0 - I - 0x008C96 02:8C86: 70        .byte $70   ; 
- D 0 - I - 0x008C97 02:8C87: 6D        .byte $6D   ; 
- D 0 - I - 0x008C98 02:8C88: 6D        .byte $6D   ; 
- D 0 - I - 0x008C99 02:8C89: 6D        .byte $6D   ; 
- D 0 - I - 0x008C9A 02:8C8A: 7D        .byte $7D   ; 
- D 0 - I - 0x008C9B 02:8C8B: 55        .byte $55   ; 
- D 0 - I - 0x008C9C 02:8C8C: 55        .byte $55   ; 
- D 0 - I - 0x008C9D 02:8C8D: 55        .byte $55   ; 
- D 0 - I - 0x008C9E 02:8C8E: 43        .byte $43   ; 
off_8C8F_1C:
- D 0 - I - 0x008C9F 02:8C8F: 04        .byte $04   ; 
- D 0 - I - 0x008CA0 02:8C90: 04        .byte $04   ; 
- D 0 - I - 0x008CA1 02:8C91: 04        .byte $04   ; 
- D 0 - I - 0x008CA2 02:8C92: 04        .byte $04   ; 
- D 0 - I - 0x008CA3 02:8C93: 04        .byte $04   ; 
- D 0 - I - 0x008CA4 02:8C94: 04        .byte $04   ; 
- D 0 - I - 0x008CA5 02:8C95: 04        .byte $04   ; 
- D 0 - I - 0x008CA6 02:8C96: 04        .byte $04   ; 
- D 0 - I - 0x008CA7 02:8C97: 04        .byte $04   ; 
- D 0 - I - 0x008CA8 02:8C98: 04        .byte $04   ; 
- D 0 - I - 0x008CA9 02:8C99: 04        .byte $04   ; 
- D 0 - I - 0x008CAA 02:8C9A: 04        .byte $04   ; 
- D 0 - I - 0x008CAB 02:8C9B: 9B        .byte $9B   ; 
- D 0 - I - 0x008CAC 02:8C9C: 9C        .byte $9C   ; 
- D 0 - I - 0x008CAD 02:8C9D: 9C        .byte $9C   ; 
- D 0 - I - 0x008CAE 02:8C9E: 9C        .byte $9C   ; 
- D 0 - I - 0x008CAF 02:8C9F: DA        .byte $DA   ; 
- D 0 - I - 0x008CB0 02:8CA0: 04        .byte $04   ; 
- D 0 - I - 0x008CB1 02:8CA1: 16        .byte $16   ; 
- D 0 - I - 0x008CB2 02:8CA2: 04        .byte $04   ; 
- D 0 - I - 0x008CB3 02:8CA3: 04        .byte $04   ; 
- D 0 - I - 0x008CB4 02:8CA4: 04        .byte $04   ; 
- D 0 - I - 0x008CB5 02:8CA5: 31        .byte $31   ; 
- D 0 - I - 0x008CB6 02:8CA6: 04        .byte $04   ; 
- D 0 - I - 0x008CB7 02:8CA7: 16        .byte $16   ; 
- D 0 - I - 0x008CB8 02:8CA8: 04        .byte $04   ; 
- D 0 - I - 0x008CB9 02:8CA9: 04        .byte $04   ; 
- D 0 - I - 0x008CBA 02:8CAA: 04        .byte $04   ; 
- D 0 - I - 0x008CBB 02:8CAB: 35        .byte $35   ; 
- D 0 - I - 0x008CBC 02:8CAC: 17        .byte $17   ; 
- D 0 - I - 0x008CBD 02:8CAD: 04        .byte $04   ; 
- D 0 - I - 0x008CBE 02:8CAE: 04        .byte $04   ; 
off_8CAF_1D:
- D 0 - I - 0x008CBF 02:8CAF: 2C        .byte $2C   ; 
- D 0 - I - 0x008CC0 02:8CB0: 04        .byte $04   ; 
- D 0 - I - 0x008CC1 02:8CB1: 16        .byte $16   ; 
- D 0 - I - 0x008CC2 02:8CB2: 04        .byte $04   ; 
- D 0 - I - 0x008CC3 02:8CB3: 04        .byte $04   ; 
- D 0 - I - 0x008CC4 02:8CB4: 04        .byte $04   ; 
- D 0 - I - 0x008CC5 02:8CB5: 17        .byte $17   ; 
- D 0 - I - 0x008CC6 02:8CB6: 04        .byte $04   ; 
- D 0 - I - 0x008CC7 02:8CB7: 16        .byte $16   ; 
- D 0 - I - 0x008CC8 02:8CB8: 04        .byte $04   ; 
- D 0 - I - 0x008CC9 02:8CB9: 61        .byte $61   ; 
- D 0 - I - 0x008CCA 02:8CBA: 6D        .byte $6D   ; 
- D 0 - I - 0x008CCB 02:8CBB: 6D        .byte $6D   ; 
- D 0 - I - 0x008CCC 02:8CBC: 6D        .byte $6D   ; 
- D 0 - I - 0x008CCD 02:8CBD: 6D        .byte $6D   ; 
- D 0 - I - 0x008CCE 02:8CBE: 6D        .byte $6D   ; 
- D 0 - I - 0x008CCF 02:8CBF: 70        .byte $70   ; 
- D 0 - I - 0x008CD0 02:8CC0: 6D        .byte $6D   ; 
- D 0 - I - 0x008CD1 02:8CC1: 6D        .byte $6D   ; 
- D 0 - I - 0x008CD2 02:8CC2: 6D        .byte $6D   ; 
- D 0 - I - 0x008CD3 02:8CC3: 6D        .byte $6D   ; 
- D 0 - I - 0x008CD4 02:8CC4: 67        .byte $67   ; 
off_8CC5_0A:
- D 0 - I - 0x008CD5 02:8CC5: 04        .byte $04   ; 
- D 0 - I - 0x008CD6 02:8CC6: 04        .byte $04   ; 
- D 0 - I - 0x008CD7 02:8CC7: 04        .byte $04   ; 
- D 0 - I - 0x008CD8 02:8CC8: 04        .byte $04   ; 
- D 0 - I - 0x008CD9 02:8CC9: 04        .byte $04   ; 
- D 0 - I - 0x008CDA 02:8CCA: 16        .byte $16   ; 
- D 0 - I - 0x008CDB 02:8CCB: 04        .byte $04   ; 
- D 0 - I - 0x008CDC 02:8CCC: 04        .byte $04   ; 
- D 0 - I - 0x008CDD 02:8CCD: 04        .byte $04   ; 
- D 0 - I - 0x008CDE 02:8CCE: 16        .byte $16   ; 
- D 0 - I - 0x008CDF 02:8CCF: 04        .byte $04   ; 
- D 0 - I - 0x008CE0 02:8CD0: 04        .byte $04   ; 
- D 0 - I - 0x008CE1 02:8CD1: 04        .byte $04   ; 
- D 0 - I - 0x008CE2 02:8CD2: 16        .byte $16   ; 
- D 0 - I - 0x008CE3 02:8CD3: 04        .byte $04   ; 
- D 0 - I - 0x008CE4 02:8CD4: 89        .byte $89   ; 
- D 0 - I - 0x008CE5 02:8CD5: 90        .byte $90   ; 
- D 0 - I - 0x008CE6 02:8CD6: 91        .byte $91   ; 
- D 0 - I - 0x008CE7 02:8CD7: 04        .byte $04   ; 
- D 0 - I - 0x008CE8 02:8CD8: 04        .byte $04   ; 
- D 0 - I - 0x008CE9 02:8CD9: 04        .byte $04   ; 
- D 0 - I - 0x008CEA 02:8CDA: 04        .byte $04   ; 
- D 0 - I - 0x008CEB 02:8CDB: 04        .byte $04   ; 
- D 0 - I - 0x008CEC 02:8CDC: 04        .byte $04   ; 
- D 0 - I - 0x008CED 02:8CDD: 41        .byte $41   ; 
- D 0 - I - 0x008CEE 02:8CDE: 55        .byte $55   ; 
- D 0 - I - 0x008CEF 02:8CDF: 7F        .byte $7F   ; 
- D 0 - I - 0x008CF0 02:8CE0: 6D        .byte $6D   ; 
- D 0 - I - 0x008CF1 02:8CE1: 6D        .byte $6D   ; 
- D 0 - I - 0x008CF2 02:8CE2: 6A        .byte $6A   ; 
- D 0 - I - 0x008CF3 02:8CE3: 4F        .byte $4F   ; 
- D 0 - I - 0x008CF4 02:8CE4: 04        .byte $04   ; 
off_8CE5_02:
- D 0 - I - 0x008CF5 02:8CE5: 00        .byte $00   ; 
- D 0 - I - 0x008CF6 02:8CE6: 00        .byte $00   ; 
- D 0 - I - 0x008CF7 02:8CE7: 00        .byte $00   ; 
- D 0 - I - 0x008CF8 02:8CE8: 00        .byte $00   ; 
- - - - - - 0x008CF9 02:8CE9: 00        .byte $00   ; 
- - - - - - 0x008CFA 02:8CEA: 00        .byte $00   ; 
- - - - - - 0x008CFB 02:8CEB: 00        .byte $00   ; 
- - - - - - 0x008CFC 02:8CEC: 00        .byte $00   ; 
- D 0 - I - 0x008CFD 02:8CED: 00        .byte $00   ; 
- D 0 - I - 0x008CFE 02:8CEE: 00        .byte $00   ; 
- D 0 - I - 0x008CFF 02:8CEF: 00        .byte $00   ; 
- D 0 - I - 0x008D00 02:8CF0: 55        .byte $55   ; 
- D 0 - I - 0x008D01 02:8CF1: 11        .byte $11   ; 
- D 0 - I - 0x008D02 02:8CF2: 00        .byte $00   ; 
- D 0 - I - 0x008D03 02:8CF3: 00        .byte $00   ; 
- D 0 - I - 0x008D04 02:8CF4: 00        .byte $00   ; 
- D 0 - I - 0x008D05 02:8CF5: 55        .byte $55   ; 
- D 0 - I - 0x008D06 02:8CF6: 50        .byte $50   ; 
- D 0 - I - 0x008D07 02:8CF7: 54        .byte $54   ; 
- D 0 - I - 0x008D08 02:8CF8: 55        .byte $55   ; 
- D 0 - I - 0x008D09 02:8CF9: 55        .byte $55   ; 
- D 0 - I - 0x008D0A 02:8CFA: 00        .byte $00   ; 
- D 0 - I - 0x008D0B 02:8CFB: 40        .byte $40   ; 
- D 0 - I - 0x008D0C 02:8CFC: 50        .byte $50   ; 
- D 0 - I - 0x008D0D 02:8CFD: 55        .byte $55   ; 
- D 0 - I - 0x008D0E 02:8CFE: 55        .byte $55   ; 
- D 0 - I - 0x008D0F 02:8CFF: 55        .byte $55   ; 
- D 0 - I - 0x008D10 02:8D00: 55        .byte $55   ; 
- D 0 - I - 0x008D11 02:8D01: 15        .byte $15   ; 
- D 0 - I - 0x008D12 02:8D02: 00        .byte $00   ; 
- D 0 - I - 0x008D13 02:8D03: 54        .byte $54   ; 
- D 0 - I - 0x008D14 02:8D04: 55        .byte $55   ; 
- D 0 - I - 0x008D15 02:8D05: 04        .byte $04   ; 
- D 0 - I - 0x008D16 02:8D06: 05        .byte $05   ; 
- D 0 - I - 0x008D17 02:8D07: 55        .byte $55   ; 
- D 0 - I - 0x008D18 02:8D08: 55        .byte $55   ; 
- D 0 - I - 0x008D19 02:8D09: 00        .byte $00   ; 
- D 0 - I - 0x008D1A 02:8D0A: 44        .byte $44   ; 
- D 0 - I - 0x008D1B 02:8D0B: 55        .byte $55   ; 
- D 0 - I - 0x008D1C 02:8D0C: 55        .byte $55   ; 
- D 0 - I - 0x008D1D 02:8D0D: 00        .byte $00   ; 
- D 0 - I - 0x008D1E 02:8D0E: 00        .byte $00   ; 
- D 0 - I - 0x008D1F 02:8D0F: 00        .byte $00   ; 
- D 0 - I - 0x008D20 02:8D10: 00        .byte $00   ; 
- D 0 - I - 0x008D21 02:8D11: 00        .byte $00   ; 
- D 0 - I - 0x008D22 02:8D12: 44        .byte $44   ; 
- D 0 - I - 0x008D23 02:8D13: 55        .byte $55   ; 
- D 0 - I - 0x008D24 02:8D14: 15        .byte $15   ; 
- D 0 - I - 0x008D25 02:8D15: 00        .byte $00   ; 
- D 0 - I - 0x008D26 02:8D16: 00        .byte $00   ; 
- D 0 - I - 0x008D27 02:8D17: 55        .byte $55   ; 
- D 0 - I - 0x008D28 02:8D18: 51        .byte $51   ; 
- D 0 - I - 0x008D29 02:8D19: 50        .byte $50   ; 
- D 0 - I - 0x008D2A 02:8D1A: 00        .byte $00   ; 
- D 0 - I - 0x008D2B 02:8D1B: 05        .byte $05   ; 
- D 0 - I - 0x008D2C 02:8D1C: 01        .byte $01   ; 
- D 0 - I - 0x008D2D 02:8D1D: 00        .byte $00   ; 
- D 0 - I - 0x008D2E 02:8D1E: 00        .byte $00   ; 
- D 0 - I - 0x008D2F 02:8D1F: 05        .byte $05   ; 
- D 0 - I - 0x008D30 02:8D20: 05        .byte $05   ; 
- D 0 - I - 0x008D31 02:8D21: 05        .byte $05   ; 
- D 0 - I - 0x008D32 02:8D22: 01        .byte $01   ; 
- D 0 - I - 0x008D33 02:8D23: 00        .byte $00   ; 
- D 0 - I - 0x008D34 02:8D24: 00        .byte $00   ; 
off_8D25_03:
- D 0 - I - 0x008D35 02:8D25: 16        .byte $16   ; 
- D 0 - I - 0x008D36 02:8D26: 16        .byte $16   ; 
- D 0 - I - 0x008D37 02:8D27: 16        .byte $16   ; 
- D 0 - I - 0x008D38 02:8D28: 04        .byte $04   ; 
- D 0 - I - 0x008D39 02:8D29: 16        .byte $16   ; 
- D 0 - I - 0x008D3A 02:8D2A: 04        .byte $04   ; 
- D 0 - I - 0x008D3B 02:8D2B: 16        .byte $16   ; 
- D 0 - I - 0x008D3C 02:8D2C: 16        .byte $16   ; 
- D 0 - I - 0x008D3D 02:8D2D: 04        .byte $04   ; 
- D 0 - I - 0x008D3E 02:8D2E: 16        .byte $16   ; 
- D 0 - I - 0x008D3F 02:8D2F: 16        .byte $16   ; 
- D 0 - I - 0x008D40 02:8D30: 16        .byte $16   ; 
- D 0 - I - 0x008D41 02:8D31: 16        .byte $16   ; 
- D 0 - I - 0x008D42 02:8D32: 04        .byte $04   ; 
- D 0 - I - 0x008D43 02:8D33: 16        .byte $16   ; 
- D 0 - I - 0x008D44 02:8D34: 04        .byte $04   ; 
- D 0 - I - 0x008D45 02:8D35: 16        .byte $16   ; 
- D 0 - I - 0x008D46 02:8D36: 16        .byte $16   ; 
- D 0 - I - 0x008D47 02:8D37: 04        .byte $04   ; 
- - - - - - 0x008D48 02:8D38: 16        .byte $16   ; 
off_8D39_03:
- D 0 - I - 0x008D49 02:8D39: 16        .byte $16   ; 
- D 0 - I - 0x008D4A 02:8D3A: 16        .byte $16   ; 
- D 0 - I - 0x008D4B 02:8D3B: 16        .byte $16   ; 
- D 0 - I - 0x008D4C 02:8D3C: 04        .byte $04   ; 
- D 0 - I - 0x008D4D 02:8D3D: 16        .byte $16   ; 
- D 0 - I - 0x008D4E 02:8D3E: 04        .byte $04   ; 
- D 0 - I - 0x008D4F 02:8D3F: 16        .byte $16   ; 
- D 0 - I - 0x008D50 02:8D40: 16        .byte $16   ; 
- D 0 - I - 0x008D51 02:8D41: 04        .byte $04   ; 
- D 0 - I - 0x008D52 02:8D42: 16        .byte $16   ; 
- D 0 - I - 0x008D53 02:8D43: 16        .byte $16   ; 
- D 0 - I - 0x008D54 02:8D44: 16        .byte $16   ; 
- D 0 - I - 0x008D55 02:8D45: 16        .byte $16   ; 
- D 0 - I - 0x008D56 02:8D46: 04        .byte $04   ; 
- D 0 - I - 0x008D57 02:8D47: 16        .byte $16   ; 
- D 0 - I - 0x008D58 02:8D48: 04        .byte $04   ; 
- - - - - - 0x008D59 02:8D49: 16        .byte $16   ; 
- - - - - - 0x008D5A 02:8D4A: 16        .byte $16   ; 
- - - - - - 0x008D5B 02:8D4B: 16        .byte $16   ; 
- D 0 - I - 0x008D5C 02:8D4C: 16        .byte $16   ; 
- D 0 - I - 0x008D5D 02:8D4D: 04        .byte $04   ; 
- D 0 - I - 0x008D5E 02:8D4E: 16        .byte $16   ; 
- D 0 - I - 0x008D5F 02:8D4F: 04        .byte $04   ; 
- D 0 - I - 0x008D60 02:8D50: 16        .byte $16   ; 
- D 0 - I - 0x008D61 02:8D51: 16        .byte $16   ; 
- D 0 - I - 0x008D62 02:8D52: 16        .byte $16   ; 
off_8D53_03:
- D 0 - I - 0x008D63 02:8D53: 16        .byte $16   ; 
- D 0 - I - 0x008D64 02:8D54: 04        .byte $04   ; 
- D 0 - I - 0x008D65 02:8D55: 16        .byte $16   ; 
- D 0 - I - 0x008D66 02:8D56: 04        .byte $04   ; 
- D 0 - I - 0x008D67 02:8D57: 16        .byte $16   ; 
- D 0 - I - 0x008D68 02:8D58: 04        .byte $04   ; 
- - - - - - 0x008D69 02:8D59: 16        .byte $16   ; 
- - - - - - 0x008D6A 02:8D5A: 04        .byte $04   ; 
- - - - - - 0x008D6B 02:8D5B: 16        .byte $16   ; 
- - - - - - 0x008D6C 02:8D5C: 16        .byte $16   ; 
- - - - - - 0x008D6D 02:8D5D: 04        .byte $04   ; 
- - - - - - 0x008D6E 02:8D5E: 16        .byte $16   ; 
- - - - - - 0x008D6F 02:8D5F: 04        .byte $04   ; 
- - - - - - 0x008D70 02:8D60: 16        .byte $16   ; 
- - - - - - 0x008D71 02:8D61: 04        .byte $04   ; 
- - - - - - 0x008D72 02:8D62: 16        .byte $16   ; 
- D 0 - I - 0x008D73 02:8D63: 16        .byte $16   ; 
- D 0 - I - 0x008D74 02:8D64: 04        .byte $04   ; 
off_8D65_03:
- D 0 - I - 0x008D75 02:8D65: 16        .byte $16   ; 
- D 0 - I - 0x008D76 02:8D66: 04        .byte $04   ; 
- D 0 - I - 0x008D77 02:8D67: 16        .byte $16   ; 
- D 0 - I - 0x008D78 02:8D68: 04        .byte $04   ; 
- D 0 - I - 0x008D79 02:8D69: 16        .byte $16   ; 
- D 0 - I - 0x008D7A 02:8D6A: 04        .byte $04   ; 
- D 0 - I - 0x008D7B 02:8D6B: 16        .byte $16   ; 
- D 0 - I - 0x008D7C 02:8D6C: 04        .byte $04   ; 
- D 0 - I - 0x008D7D 02:8D6D: 16        .byte $16   ; 
- D 0 - I - 0x008D7E 02:8D6E: 16        .byte $16   ; 
- D 0 - I - 0x008D7F 02:8D6F: 04        .byte $04   ; 
- D 0 - I - 0x008D80 02:8D70: 16        .byte $16   ; 
- D 0 - I - 0x008D81 02:8D71: 04        .byte $04   ; 
- D 0 - I - 0x008D82 02:8D72: 16        .byte $16   ; 
- D 0 - I - 0x008D83 02:8D73: 04        .byte $04   ; 
- D 0 - I - 0x008D84 02:8D74: 16        .byte $16   ; 
- D 0 - I - 0x008D85 02:8D75: 04        .byte $04   ; 
- D 0 - I - 0x008D86 02:8D76: 16        .byte $16   ; 
- D 0 - I - 0x008D87 02:8D77: 16        .byte $16   ; 
- D 0 - I - 0x008D88 02:8D78: 04        .byte $04   ; 
- D 0 - I - 0x008D89 02:8D79: 16        .byte $16   ; 
- D 0 - I - 0x008D8A 02:8D7A: 04        .byte $04   ; 
- D 0 - I - 0x008D8B 02:8D7B: 16        .byte $16   ; 
- D 0 - I - 0x008D8C 02:8D7C: 04        .byte $04   ; 
- D 0 - I - 0x008D8D 02:8D7D: 16        .byte $16   ; 
- D 0 - I - 0x008D8E 02:8D7E: 04        .byte $04   ; 
- D 0 - I - 0x008D8F 02:8D7F: 16        .byte $16   ; 
- D 0 - I - 0x008D90 02:8D80: 16        .byte $16   ; 
- D 0 - I - 0x008D91 02:8D81: 04        .byte $04   ; 
- D 0 - I - 0x008D92 02:8D82: 16        .byte $16   ; 
- D 0 - I - 0x008D93 02:8D83: 04        .byte $04   ; 
- D 0 - I - 0x008D94 02:8D84: 16        .byte $16   ; 
off_8D85_08:
- D 0 - I - 0x008D95 02:8D85: 04        .byte $04   ; 
- D 0 - I - 0x008D96 02:8D86: 04        .byte $04   ; 
- D 0 - I - 0x008D97 02:8D87: 17        .byte $17   ; 
- D 0 - I - 0x008D98 02:8D88: 04        .byte $04   ; 
- D 0 - I - 0x008D99 02:8D89: 41        .byte $41   ; 
- D 0 - I - 0x008D9A 02:8D8A: 55        .byte $55   ; 
- D 0 - I - 0x008D9B 02:8D8B: 55        .byte $55   ; 
- D 0 - I - 0x008D9C 02:8D8C: 43        .byte $43   ; 
- D 0 - I - 0x008D9D 02:8D8D: 04        .byte $04   ; 
- D 0 - I - 0x008D9E 02:8D8E: 04        .byte $04   ; 
- D 0 - I - 0x008D9F 02:8D8F: 91        .byte $91   ; 
- D 0 - I - 0x008DA0 02:8D90: 92        .byte $92   ; 
- D 0 - I - 0x008DA1 02:8D91: 93        .byte $93   ; 
- D 0 - I - 0x008DA2 02:8D92: 04        .byte $04   ; 
- D 0 - I - 0x008DA3 02:8D93: 04        .byte $04   ; 
- D 0 - I - 0x008DA4 02:8D94: 04        .byte $04   ; 
- D 0 - I - 0x008DA5 02:8D95: 04        .byte $04   ; 
- D 0 - I - 0x008DA6 02:8D96: 04        .byte $04   ; 
- D 0 - I - 0x008DA7 02:8D97: 16        .byte $16   ; 
- D 0 - I - 0x008DA8 02:8D98: 04        .byte $04   ; 
- D 0 - I - 0x008DA9 02:8D99: 04        .byte $04   ; 
- D 0 - I - 0x008DAA 02:8D9A: 04        .byte $04   ; 
- D 0 - I - 0x008DAB 02:8D9B: 16        .byte $16   ; 
off_8D9C_1D:
- D 0 - I - 0x008DAC 02:8D9C: 04        .byte $04   ; 
- - - - - - 0x008DAD 02:8D9D: 04        .byte $04   ; 
- - - - - - 0x008DAE 02:8D9E: 04        .byte $04   ; 
- - - - - - 0x008DAF 02:8D9F: 04        .byte $04   ; 
- - - - - - 0x008DB0 02:8DA0: 17        .byte $17   ; 
- - - - - - 0x008DB1 02:8DA1: 04        .byte $04   ; 
- - - - - - 0x008DB2 02:8DA2: 04        .byte $04   ; 
- - - - - - 0x008DB3 02:8DA3: 04        .byte $04   ; 
- - - - - - 0x008DB4 02:8DA4: 04        .byte $04   ; 
- D 0 - I - 0x008DB5 02:8DA5: 04        .byte $04   ; 
- D 0 - I - 0x008DB6 02:8DA6: 04        .byte $04   ; 
- D 0 - I - 0x008DB7 02:8DA7: 04        .byte $04   ; 
- D 0 - I - 0x008DB8 02:8DA8: 04        .byte $04   ; 
- D 0 - I - 0x008DB9 02:8DA9: 04        .byte $04   ; 
- D 0 - I - 0x008DBA 02:8DAA: 04        .byte $04   ; 
- D 0 - I - 0x008DBB 02:8DAB: 04        .byte $04   ; 
- D 0 - I - 0x008DBC 02:8DAC: 35        .byte $35   ; 
- D 0 - I - 0x008DBD 02:8DAD: 04        .byte $04   ; 
- D 0 - I - 0x008DBE 02:8DAE: 04        .byte $04   ; 
- D 0 - I - 0x008DBF 02:8DAF: 04        .byte $04   ; 
- D 0 - I - 0x008DC0 02:8DB0: 04        .byte $04   ; 
- D 0 - I - 0x008DC1 02:8DB1: 37        .byte $37   ; 
- D 0 - I - 0x008DC2 02:8DB2: 2C        .byte $2C   ; 
- D 0 - I - 0x008DC3 02:8DB3: 04        .byte $04   ; 
- D 0 - I - 0x008DC4 02:8DB4: 04        .byte $04   ; 
- D 0 - I - 0x008DC5 02:8DB5: 04        .byte $04   ; 
- D 0 - I - 0x008DC6 02:8DB6: 04        .byte $04   ; 
- D 0 - I - 0x008DC7 02:8DB7: 04        .byte $04   ; 
- D 0 - I - 0x008DC8 02:8DB8: 34        .byte $34   ; 
off_8DB9_1D:
- D 0 - I - 0x008DC9 02:8DB9: 04        .byte $04   ; 
- D 0 - I - 0x008DCA 02:8DBA: 04        .byte $04   ; 
- D 0 - I - 0x008DCB 02:8DBB: 04        .byte $04   ; 
- D 0 - I - 0x008DCC 02:8DBC: 33        .byte $33   ; 
- D 0 - I - 0x008DCD 02:8DBD: 04        .byte $04   ; 
- D 0 - I - 0x008DCE 02:8DBE: 04        .byte $04   ; 
- D 0 - I - 0x008DCF 02:8DBF: 04        .byte $04   ; 
- D 0 - I - 0x008DD0 02:8DC0: 16        .byte $16   ; 
- D 0 - I - 0x008DD1 02:8DC1: 04        .byte $04   ; 
- D 0 - I - 0x008DD2 02:8DC2: 2B        .byte $2B   ; 
- D 0 - I - 0x008DD3 02:8DC3: 30        .byte $30   ; 
- D 0 - I - 0x008DD4 02:8DC4: 04        .byte $04   ; 
- D 0 - I - 0x008DD5 02:8DC5: 04        .byte $04   ; 
- D 0 - I - 0x008DD6 02:8DC6: 04        .byte $04   ; 
- D 0 - I - 0x008DD7 02:8DC7: 04        .byte $04   ; 
- D 0 - I - 0x008DD8 02:8DC8: 32        .byte $32   ; 
- D 0 - I - 0x008DD9 02:8DC9: 04        .byte $04   ; 
- D 0 - I - 0x008DDA 02:8DCA: 04        .byte $04   ; 
off_8DCB_04:
- D 0 - I - 0x008DDB 02:8DCB: 04        .byte $04   ; 
- D 0 - I - 0x008DDC 02:8DCC: 04        .byte $04   ; 
- D 0 - I - 0x008DDD 02:8DCD: 04        .byte $04   ; 
- D 0 - I - 0x008DDE 02:8DCE: 04        .byte $04   ; 
- D 0 - I - 0x008DDF 02:8DCF: 04        .byte $04   ; 
- D 0 - I - 0x008DE0 02:8DD0: 04        .byte $04   ; 
- - - - - - 0x008DE1 02:8DD1: 16        .byte $16   ; 
- - - - - - 0x008DE2 02:8DD2: 04        .byte $04   ; 
- - - - - - 0x008DE3 02:8DD3: 04        .byte $04   ; 
- D 0 - I - 0x008DE4 02:8DD4: 04        .byte $04   ; 
- D 0 - I - 0x008DE5 02:8DD5: 04        .byte $04   ; 
- D 0 - I - 0x008DE6 02:8DD6: 04        .byte $04   ; 
- D 0 - I - 0x008DE7 02:8DD7: 04        .byte $04   ; 
- D 0 - I - 0x008DE8 02:8DD8: 04        .byte $04   ; 
- D 0 - I - 0x008DE9 02:8DD9: 04        .byte $04   ; 
- D 0 - I - 0x008DEA 02:8DDA: 37        .byte $37   ; 
- D 0 - I - 0x008DEB 02:8DDB: 2C        .byte $2C   ; 
- D 0 - I - 0x008DEC 02:8DDC: 04        .byte $04   ; 
- D 0 - I - 0x008DED 02:8DDD: 04        .byte $04   ; 
- D 0 - I - 0x008DEE 02:8DDE: 04        .byte $04   ; 
- D 0 - I - 0x008DEF 02:8DDF: 04        .byte $04   ; 
- D 0 - I - 0x008DF0 02:8DE0: 49        .byte $49   ; 
- D 0 - I - 0x008DF1 02:8DE1: 61        .byte $61   ; 
- D 0 - I - 0x008DF2 02:8DE2: 6D        .byte $6D   ; 
- D 0 - I - 0x008DF3 02:8DE3: 6D        .byte $6D   ; 
- D 0 - I - 0x008DF4 02:8DE4: 7D        .byte $7D   ; 
- D 0 - I - 0x008DF5 02:8DE5: 55        .byte $55   ; 
- D 0 - I - 0x008DF6 02:8DE6: E1        .byte $E1   ; 
- D 0 - I - 0x008DF7 02:8DE7: E2        .byte $E2   ; 
- D 0 - I - 0x008DF8 02:8DE8: 55        .byte $55   ; 
- D 0 - I - 0x008DF9 02:8DE9: 7F        .byte $7F   ; 
off_8DEA_05:
- D 0 - I - 0x008DFA 02:8DEA: 6D        .byte $6D   ; 
- D 0 - I - 0x008DFB 02:8DEB: 67        .byte $67   ; 
- D 0 - I - 0x008DFC 02:8DEC: 4B        .byte $4B   ; 
- D 0 - I - 0x008DFD 02:8DED: 04        .byte $04   ; 
- D 0 - I - 0x008DFE 02:8DEE: 31        .byte $31   ; 
- D 0 - I - 0x008DFF 02:8DEF: 04        .byte $04   ; 
- D 0 - I - 0x008E00 02:8DF0: 61        .byte $61   ; 
- D 0 - I - 0x008E01 02:8DF1: 6D        .byte $6D   ; 
- D 0 - I - 0x008E02 02:8DF2: 6D        .byte $6D   ; 
- D 0 - I - 0x008E03 02:8DF3: 6D        .byte $6D   ; 
- D 0 - I - 0x008E04 02:8DF4: 6D        .byte $6D   ; 
- D 0 - I - 0x008E05 02:8DF5: 6D        .byte $6D   ; 
- D 0 - I - 0x008E06 02:8DF6: 6D        .byte $6D   ; 
- D 0 - I - 0x008E07 02:8DF7: 6A        .byte $6A   ; 
- D 0 - I - 0x008E08 02:8DF8: 04        .byte $04   ; 
- D 0 - I - 0x008E09 02:8DF9: 37        .byte $37   ; 
- D 0 - I - 0x008E0A 02:8DFA: 2C        .byte $2C   ; 
- D 0 - I - 0x008E0B 02:8DFB: 04        .byte $04   ; 
- D 0 - I - 0x008E0C 02:8DFC: 04        .byte $04   ; 
- D 0 - I - 0x008E0D 02:8DFD: 17        .byte $17   ; 
off_8DFE_0F:
- D 0 - I - 0x008E0E 02:8DFE: 04        .byte $04   ; 
- D 0 - I - 0x008E0F 02:8DFF: 04        .byte $04   ; 
- D 0 - I - 0x008E10 02:8E00: 16        .byte $16   ; 
- D 0 - I - 0x008E11 02:8E01: 04        .byte $04   ; 
- - - - - - 0x008E12 02:8E02: 04        .byte $04   ; 
- - - - - - 0x008E13 02:8E03: 04        .byte $04   ; 
- - - - - - 0x008E14 02:8E04: 04        .byte $04   ; 
- - - - - - 0x008E15 02:8E05: 04        .byte $04   ; 
- - - - - - 0x008E16 02:8E06: 04        .byte $04   ; 
- D 0 - I - 0x008E17 02:8E07: 04        .byte $04   ; 
- D 0 - I - 0x008E18 02:8E08: 04        .byte $04   ; 
- D 0 - I - 0x008E19 02:8E09: 04        .byte $04   ; 
- D 0 - I - 0x008E1A 02:8E0A: 04        .byte $04   ; 
- D 0 - I - 0x008E1B 02:8E0B: C0        .byte $C0   ; 
- D 0 - I - 0x008E1C 02:8E0C: C1        .byte $C1   ; 
- D 0 - I - 0x008E1D 02:8E0D: C2        .byte $C2   ; 
- D 0 - I - 0x008E1E 02:8E0E: C3        .byte $C3   ; 
- D 0 - I - 0x008E1F 02:8E0F: C4        .byte $C4   ; 
- D 0 - I - 0x008E20 02:8E10: 33        .byte $33   ; 
- D 0 - I - 0x008E21 02:8E11: 04        .byte $04   ; 
- D 0 - I - 0x008E22 02:8E12: 61        .byte $61   ; 
- D 0 - I - 0x008E23 02:8E13: 71        .byte $71   ; 
- D 0 - I - 0x008E24 02:8E14: 6D        .byte $6D   ; 
- D 0 - I - 0x008E25 02:8E15: 6D        .byte $6D   ; 
- D 0 - I - 0x008E26 02:8E16: 6D        .byte $6D   ; 
- D 0 - I - 0x008E27 02:8E17: 6A        .byte $6A   ; 
- D 0 - I - 0x008E28 02:8E18: 04        .byte $04   ; 
- D 0 - I - 0x008E29 02:8E19: 04        .byte $04   ; 
- D 0 - I - 0x008E2A 02:8E1A: 45        .byte $45   ; 
- D 0 - I - 0x008E2B 02:8E1B: 5B        .byte $5B   ; 
- D 0 - I - 0x008E2C 02:8E1C: E3        .byte $E3   ; 
- D 0 - I - 0x008E2D 02:8E1D: 5B        .byte $5B   ; 
off_8E1E_09:
- D 0 - I - 0x008E2E 02:8E1E: 14        .byte $14   ; 
- D 0 - I - 0x008E2F 02:8E1F: 00        .byte $00   ; 
- D 0 - I - 0x008E30 02:8E20: 00        .byte $00   ; 
- D 0 - I - 0x008E31 02:8E21: 48        .byte $48   ; 
- D 0 - I - 0x008E32 02:8E22: 60        .byte $60   ; 
- D 0 - I - 0x008E33 02:8E23: 6C        .byte $6C   ; 
- D 0 - I - 0x008E34 02:8E24: 6E        .byte $6E   ; 
- D 0 - I - 0x008E35 02:8E25: 66        .byte $66   ; 
- D 0 - I - 0x008E36 02:8E26: 00        .byte $00   ; 
- D 0 - I - 0x008E37 02:8E27: 00        .byte $00   ; 
- D 0 - I - 0x008E38 02:8E28: 00        .byte $00   ; 
- D 0 - I - 0x008E39 02:8E29: 00        .byte $00   ; 
- D 0 - I - 0x008E3A 02:8E2A: 26        .byte $26   ; 
- D 0 - I - 0x008E3B 02:8E2B: 00        .byte $00   ; 
- D 0 - I - 0x008E3C 02:8E2C: 00        .byte $00   ; 
- D 0 - I - 0x008E3D 02:8E2D: 00        .byte $00   ; 
- D 0 - I - 0x008E3E 02:8E2E: 00        .byte $00   ; 
- D 0 - I - 0x008E3F 02:8E2F: 00        .byte $00   ; 
- D 0 - I - 0x008E40 02:8E30: 00        .byte $00   ; 
- D 0 - I - 0x008E41 02:8E31: 00        .byte $00   ; 
- D 0 - I - 0x008E42 02:8E32: 00        .byte $00   ; 
- D 0 - I - 0x008E43 02:8E33: 00        .byte $00   ; 
- D 0 - I - 0x008E44 02:8E34: 00        .byte $00   ; 
- D 0 - I - 0x008E45 02:8E35: 00        .byte $00   ; 
- - - - - - 0x008E46 02:8E36: 00        .byte $00   ; 
- - - - - - 0x008E47 02:8E37: 00        .byte $00   ; 
- - - - - - 0x008E48 02:8E38: 00        .byte $00   ; 
off_8E39_0F:
- D 0 - I - 0x008E49 02:8E39: 00        .byte $00   ; 
- D 0 - I - 0x008E4A 02:8E3A: 00        .byte $00   ; 
- D 0 - I - 0x008E4B 02:8E3B: 15        .byte $15   ; 
- D 0 - I - 0x008E4C 02:8E3C: 00        .byte $00   ; 
- D 0 - I - 0x008E4D 02:8E3D: 00        .byte $00   ; 
- D 0 - I - 0x008E4E 02:8E3E: 00        .byte $00   ; 
- D 0 - I - 0x008E4F 02:8E3F: 60        .byte $60   ; 
- D 0 - I - 0x008E50 02:8E40: 6C        .byte $6C   ; 
- D 0 - I - 0x008E51 02:8E41: 6C        .byte $6C   ; 
- D 0 - I - 0x008E52 02:8E42: 66        .byte $66   ; 
- D 0 - I - 0x008E53 02:8E43: 00        .byte $00   ; 
- D 0 - I - 0x008E54 02:8E44: 00        .byte $00   ; 
- D 0 - I - 0x008E55 02:8E45: 00        .byte $00   ; 
- D 0 - I - 0x008E56 02:8E46: 00        .byte $00   ; 
- D 0 - I - 0x008E57 02:8E47: 00        .byte $00   ; 
- D 0 - I - 0x008E58 02:8E48: 00        .byte $00   ; 
- D 0 - I - 0x008E59 02:8E49: 14        .byte $14   ; 
- D 0 - I - 0x008E5A 02:8E4A: 00        .byte $00   ; 
- D 0 - I - 0x008E5B 02:8E4B: 00        .byte $00   ; 
- D 0 - I - 0x008E5C 02:8E4C: 00        .byte $00   ; 
- D 0 - I - 0x008E5D 02:8E4D: 14        .byte $14   ; 
- D 0 - I - 0x008E5E 02:8E4E: 00        .byte $00   ; 
- D 0 - I - 0x008E5F 02:8E4F: 00        .byte $00   ; 
- D 0 - I - 0x008E60 02:8E50: 00        .byte $00   ; 
- D 0 - I - 0x008E61 02:8E51: 00        .byte $00   ; 
- D 0 - I - 0x008E62 02:8E52: 00        .byte $00   ; 
- D 0 - I - 0x008E63 02:8E53: 15        .byte $15   ; 
- D 0 - I - 0x008E64 02:8E54: 00        .byte $00   ; 
- D 0 - I - 0x008E65 02:8E55: 00        .byte $00   ; 
- D 0 - I - 0x008E66 02:8E56: 00        .byte $00   ; 
- D 0 - I - 0x008E67 02:8E57: 00        .byte $00   ; 
- D 0 - I - 0x008E68 02:8E58: 14        .byte $14   ; 
off_8E59_13:
- D 0 - I - 0x008E69 02:8E59: 5E        .byte $5E   ; 
- D 0 - I - 0x008E6A 02:8E5A: 5F        .byte $5F   ; 
- D 0 - I - 0x008E6B 02:8E5B: E3        .byte $E3   ; 
- D 0 - I - 0x008E6C 02:8E5C: 47        .byte $47   ; 
- D 0 - I - 0x008E6D 02:8E5D: 04        .byte $04   ; 
- D 0 - I - 0x008E6E 02:8E5E: 04        .byte $04   ; 
- D 0 - I - 0x008E6F 02:8E5F: 16        .byte $16   ; 
- D 0 - I - 0x008E70 02:8E60: 04        .byte $04   ; 
- D 0 - I - 0x008E71 02:8E61: 35        .byte $35   ; 
- D 0 - I - 0x008E72 02:8E62: 04        .byte $04   ; 
- D 0 - I - 0x008E73 02:8E63: 04        .byte $04   ; 
- D 0 - I - 0x008E74 02:8E64: 04        .byte $04   ; 
- D 0 - I - 0x008E75 02:8E65: 04        .byte $04   ; 
- D 0 - I - 0x008E76 02:8E66: 37        .byte $37   ; 
- D 0 - I - 0x008E77 02:8E67: B5        .byte $B5   ; 
- D 0 - I - 0x008E78 02:8E68: B6        .byte $B6   ; 
- D 0 - I - 0x008E79 02:8E69: B7        .byte $B7   ; 
- D 0 - I - 0x008E7A 02:8E6A: B7        .byte $B7   ; 
- D 0 - I - 0x008E7B 02:8E6B: B8        .byte $B8   ; 
off_8E6C_08:
- D 0 - I - 0x008E7C 02:8E6C: 04        .byte $04   ; 
- D 0 - I - 0x008E7D 02:8E6D: 04        .byte $04   ; 
- D 0 - I - 0x008E7E 02:8E6E: 04        .byte $04   ; 
- D 0 - I - 0x008E7F 02:8E6F: 04        .byte $04   ; 
- D 0 - I - 0x008E80 02:8E70: 04        .byte $04   ; 
- D 0 - I - 0x008E81 02:8E71: 04        .byte $04   ; 
- D 0 - I - 0x008E82 02:8E72: 04        .byte $04   ; 
- D 0 - I - 0x008E83 02:8E73: 04        .byte $04   ; 
- D 0 - I - 0x008E84 02:8E74: 04        .byte $04   ; 
- D 0 - I - 0x008E85 02:8E75: 04        .byte $04   ; 
- D 0 - I - 0x008E86 02:8E76: 17        .byte $17   ; 
- D 0 - I - 0x008E87 02:8E77: 04        .byte $04   ; 
- D 0 - I - 0x008E88 02:8E78: 04        .byte $04   ; 
- D 0 - I - 0x008E89 02:8E79: 04        .byte $04   ; 
- D 0 - I - 0x008E8A 02:8E7A: 04        .byte $04   ; 
- D 0 - I - 0x008E8B 02:8E7B: 04        .byte $04   ; 
- D 0 - I - 0x008E8C 02:8E7C: 04        .byte $04   ; 
- D 0 - I - 0x008E8D 02:8E7D: 04        .byte $04   ; 
- D 0 - I - 0x008E8E 02:8E7E: 04        .byte $04   ; 
- D 0 - I - 0x008E8F 02:8E7F: 04        .byte $04   ; 
- D 0 - I - 0x008E90 02:8E80: 41        .byte $41   ; 
- D 0 - I - 0x008E91 02:8E81: 55        .byte $55   ; 
- D 0 - I - 0x008E92 02:8E82: 55        .byte $55   ; 
- D 0 - I - 0x008E93 02:8E83: 55        .byte $55   ; 
- D 0 - I - 0x008E94 02:8E84: 55        .byte $55   ; 
- D 0 - I - 0x008E95 02:8E85: 43        .byte $43   ; 
- D 0 - I - 0x008E96 02:8E86: 04        .byte $04   ; 
- D 0 - I - 0x008E97 02:8E87: 04        .byte $04   ; 
- D 0 - I - 0x008E98 02:8E88: 04        .byte $04   ; 
- D 0 - I - 0x008E99 02:8E89: 04        .byte $04   ; 
- D 0 - I - 0x008E9A 02:8E8A: 41        .byte $41   ; 
- D 0 - I - 0x008E9B 02:8E8B: 52        .byte $52   ; 
off_8E8C_14:
- D 0 - I - 0x008E9C 02:8E8C: 04        .byte $04   ; 
- D 0 - I - 0x008E9D 02:8E8D: 09        .byte $09   ; 
- D 0 - I - 0x008E9E 02:8E8E: 8F        .byte $8F   ; 
- D 0 - I - 0x008E9F 02:8E8F: 04        .byte $04   ; 
- D 0 - I - 0x008EA0 02:8E90: 04        .byte $04   ; 
- D 0 - I - 0x008EA1 02:8E91: 04        .byte $04   ; 
- D 0 - I - 0x008EA2 02:8E92: 04        .byte $04   ; 
- D 0 - I - 0x008EA3 02:8E93: 04        .byte $04   ; 
- D 0 - I - 0x008EA4 02:8E94: 36        .byte $36   ; 
- D 0 - I - 0x008EA5 02:8E95: 04        .byte $04   ; 
- D 0 - I - 0x008EA6 02:8E96: 16        .byte $16   ; 
- D 0 - I - 0x008EA7 02:8E97: 04        .byte $04   ; 
- D 0 - I - 0x008EA8 02:8E98: 04        .byte $04   ; 
- D 0 - I - 0x008EA9 02:8E99: 04        .byte $04   ; 
- D 0 - I - 0x008EAA 02:8E9A: C5        .byte $C5   ; 
- D 0 - I - 0x008EAB 02:8E9B: C6        .byte $C6   ; 
- D 0 - I - 0x008EAC 02:8E9C: C7        .byte $C7   ; 
- D 0 - I - 0x008EAD 02:8E9D: C7        .byte $C7   ; 
- D 0 - I - 0x008EAE 02:8E9E: C8        .byte $C8   ; 
- D 0 - I - 0x008EAF 02:8E9F: 04        .byte $04   ; 
- D 0 - I - 0x008EB0 02:8EA0: 04        .byte $04   ; 
off_8EA1_0A:
- D 0 - I - 0x008EB1 02:8EA1: 04        .byte $04   ; 
- D 0 - I - 0x008EB2 02:8EA2: 04        .byte $04   ; 
- D 0 - I - 0x008EB3 02:8EA3: 16        .byte $16   ; 
- D 0 - I - 0x008EB4 02:8EA4: 04        .byte $04   ; 
- D 0 - I - 0x008EB5 02:8EA5: 04        .byte $04   ; 
- D 0 - I - 0x008EB6 02:8EA6: 04        .byte $04   ; 
- D 0 - I - 0x008EB7 02:8EA7: 04        .byte $04   ; 
- D 0 - I - 0x008EB8 02:8EA8: 04        .byte $04   ; 
- D 0 - I - 0x008EB9 02:8EA9: 04        .byte $04   ; 
- D 0 - I - 0x008EBA 02:8EAA: 04        .byte $04   ; 
- D 0 - I - 0x008EBB 02:8EAB: 04        .byte $04   ; 
- D 0 - I - 0x008EBC 02:8EAC: 04        .byte $04   ; 
- D 0 - I - 0x008EBD 02:8EAD: 04        .byte $04   ; 
- D 0 - I - 0x008EBE 02:8EAE: 04        .byte $04   ; 
- D 0 - I - 0x008EBF 02:8EAF: 04        .byte $04   ; 
- D 0 - I - 0x008EC0 02:8EB0: 04        .byte $04   ; 
- D 0 - I - 0x008EC1 02:8EB1: 04        .byte $04   ; 
- D 0 - I - 0x008EC2 02:8EB2: 04        .byte $04   ; 
- D 0 - I - 0x008EC3 02:8EB3: 04        .byte $04   ; 
- D 0 - I - 0x008EC4 02:8EB4: 04        .byte $04   ; 
- D 0 - I - 0x008EC5 02:8EB5: 04        .byte $04   ; 
- D 0 - I - 0x008EC6 02:8EB6: 04        .byte $04   ; 
- D 0 - I - 0x008EC7 02:8EB7: 61        .byte $61   ; 
- D 0 - I - 0x008EC8 02:8EB8: 6D        .byte $6D   ; 
- D 0 - I - 0x008EC9 02:8EB9: 6D        .byte $6D   ; 
- D 0 - I - 0x008ECA 02:8EBA: 6D        .byte $6D   ; 
- D 0 - I - 0x008ECB 02:8EBB: 6D        .byte $6D   ; 
- D 0 - I - 0x008ECC 02:8EBC: 67        .byte $67   ; 
- D 0 - I - 0x008ECD 02:8EBD: 4F        .byte $4F   ; 
- D 0 - I - 0x008ECE 02:8EBE: 04        .byte $04   ; 
- D 0 - I - 0x008ECF 02:8EBF: 04        .byte $04   ; 
- D 0 - I - 0x008ED0 02:8EC0: 2B        .byte $2B   ; 
off_8EC1_15:
- D 0 - I - 0x008ED1 02:8EC1: 19        .byte $19   ; 
- D 0 - I - 0x008ED2 02:8EC2: 1A        .byte $1A   ; 
- D 0 - I - 0x008ED3 02:8EC3: 23        .byte $23   ; 
- D 0 - I - 0x008ED4 02:8EC4: 00        .byte $00   ; 
- D 0 - I - 0x008ED5 02:8EC5: 00        .byte $00   ; 
- D 0 - I - 0x008ED6 02:8EC6: 00        .byte $00   ; 
- D 0 - I - 0x008ED7 02:8EC7: 14        .byte $14   ; 
- D 0 - I - 0x008ED8 02:8EC8: 00        .byte $00   ; 
- D 0 - I - 0x008ED9 02:8EC9: 1B        .byte $1B   ; 
- D 0 - I - 0x008EDA 02:8ECA: 20        .byte $20   ; 
- D 0 - I - 0x008EDB 02:8ECB: 00        .byte $00   ; 
- D 0 - I - 0x008EDC 02:8ECC: 00        .byte $00   ; 
- D 0 - I - 0x008EDD 02:8ECD: 00        .byte $00   ; 
- D 0 - I - 0x008EDE 02:8ECE: 14        .byte $14   ; 
- D 0 - I - 0x008EDF 02:8ECF: 22        .byte $22   ; 
- D 0 - I - 0x008EE0 02:8ED0: D5        .byte $D5   ; 
- D 0 - I - 0x008EE1 02:8ED1: D6        .byte $D6   ; 
- D 0 - I - 0x008EE2 02:8ED2: D6        .byte $D6   ; 
- D 0 - I - 0x008EE3 02:8ED3: D7        .byte $D7   ; 
- D 0 - I - 0x008EE4 02:8ED4: B4        .byte $B4   ; 
- D 0 - I - 0x008EE5 02:8ED5: 00        .byte $00   ; 
- D 0 - I - 0x008EE6 02:8ED6: 00        .byte $00   ; 
- D 0 - I - 0x008EE7 02:8ED7: 00        .byte $00   ; 
- D 0 - I - 0x008EE8 02:8ED8: 00        .byte $00   ; 
- - - - - - 0x008EE9 02:8ED9: 00        .byte $00   ; 
- - - - - - 0x008EEA 02:8EDA: 00        .byte $00   ; 
- - - - - - 0x008EEB 02:8EDB: 00        .byte $00   ; 
- - - - - - 0x008EEC 02:8EDC: 00        .byte $00   ; 
- - - - - - 0x008EED 02:8EDD: 00        .byte $00   ; 
- - - - - - 0x008EEE 02:8EDE: 00        .byte $00   ; 
- - - - - - 0x008EEF 02:8EDF: 00        .byte $00   ; 
- - - - - - 0x008EF0 02:8EE0: 00        .byte $00   ; 
off_8EE1_16:
- D 0 - I - 0x008EF1 02:8EE1: 08        .byte $08   ; 
- D 0 - I - 0x008EF2 02:8EE2: 00        .byte $00   ; 
- D 0 - I - 0x008EF3 02:8EE3: 24        .byte $24   ; 
- D 0 - I - 0x008EF4 02:8EE4: 00        .byte $00   ; 
- D 0 - I - 0x008EF5 02:8EE5: 00        .byte $00   ; 
- D 0 - I - 0x008EF6 02:8EE6: 00        .byte $00   ; 
- D 0 - I - 0x008EF7 02:8EE7: 00        .byte $00   ; 
- D 0 - I - 0x008EF8 02:8EE8: 00        .byte $00   ; 
- D 0 - I - 0x008EF9 02:8EE9: 27        .byte $27   ; 
- D 0 - I - 0x008EFA 02:8EEA: 1C        .byte $1C   ; 
- D 0 - I - 0x008EFB 02:8EEB: 00        .byte $00   ; 
- D 0 - I - 0x008EFC 02:8EEC: 00        .byte $00   ; 
- D 0 - I - 0x008EFD 02:8EED: 00        .byte $00   ; 
- D 0 - I - 0x008EFE 02:8EEE: 00        .byte $00   ; 
- D 0 - I - 0x008EFF 02:8EEF: 23        .byte $23   ; 
- D 0 - I - 0x008F00 02:8EF0: D5        .byte $D5   ; 
- D 0 - I - 0x008F01 02:8EF1: D6        .byte $D6   ; 
- D 0 - I - 0x008F02 02:8EF2: D6        .byte $D6   ; 
- D 0 - I - 0x008F03 02:8EF3: 98        .byte $98   ; 
- D 0 - I - 0x008F04 02:8EF4: 99        .byte $99   ; 
- D 0 - I - 0x008F05 02:8EF5: 00        .byte $00   ; 
- D 0 - I - 0x008F06 02:8EF6: 00        .byte $00   ; 
- D 0 - I - 0x008F07 02:8EF7: 00        .byte $00   ; 
- D 0 - I - 0x008F08 02:8EF8: 00        .byte $00   ; 
- - - - - - 0x008F09 02:8EF9: 00        .byte $00   ; 
- - - - - - 0x008F0A 02:8EFA: 00        .byte $00   ; 
- - - - - - 0x008F0B 02:8EFB: 00        .byte $00   ; 
- - - - - - 0x008F0C 02:8EFC: 00        .byte $00   ; 
- - - - - - 0x008F0D 02:8EFD: 00        .byte $00   ; 
- - - - - - 0x008F0E 02:8EFE: 00        .byte $00   ; 
- - - - - - 0x008F0F 02:8EFF: 00        .byte $00   ; 
- - - - - - 0x008F10 02:8F00: 00        .byte $00   ; 
off_8F01_17:
- D 0 - I - 0x008F11 02:8F01: 18        .byte $18   ; 
- D 0 - I - 0x008F12 02:8F02: 04        .byte $04   ; 
- D 0 - I - 0x008F13 02:8F03: 35        .byte $35   ; 
- D 0 - I - 0x008F14 02:8F04: 04        .byte $04   ; 
- D 0 - I - 0x008F15 02:8F05: 04        .byte $04   ; 
- D 0 - I - 0x008F16 02:8F06: 04        .byte $04   ; 
- D 0 - I - 0x008F17 02:8F07: 16        .byte $16   ; 
- D 0 - I - 0x008F18 02:8F08: 04        .byte $04   ; 
- D 0 - I - 0x008F19 02:8F09: 04        .byte $04   ; 
- D 0 - I - 0x008F1A 02:8F0A: 31        .byte $31   ; 
- D 0 - I - 0x008F1B 02:8F0B: 04        .byte $04   ; 
- D 0 - I - 0x008F1C 02:8F0C: 17        .byte $17   ; 
- D 0 - I - 0x008F1D 02:8F0D: 04        .byte $04   ; 
- D 0 - I - 0x008F1E 02:8F0E: 04        .byte $04   ; 
- D 0 - I - 0x008F1F 02:8F0F: 34        .byte $34   ; 
- D 0 - I - 0x008F20 02:8F10: A4        .byte $A4   ; 
- D 0 - I - 0x008F21 02:8F11: D6        .byte $D6   ; 
- D 0 - I - 0x008F22 02:8F12: D6        .byte $D6   ; 
- D 0 - I - 0x008F23 02:8F13: A9        .byte $A9   ; 
- D 0 - I - 0x008F24 02:8F14: D4        .byte $D4   ; 
- D 0 - I - 0x008F25 02:8F15: 04        .byte $04   ; 
- D 0 - I - 0x008F26 02:8F16: 04        .byte $04   ; 
- D 0 - I - 0x008F27 02:8F17: 04        .byte $04   ; 
- D 0 - I - 0x008F28 02:8F18: 04        .byte $04   ; 
- - - - - - 0x008F29 02:8F19: 04        .byte $04   ; 
- - - - - - 0x008F2A 02:8F1A: 04        .byte $04   ; 
- - - - - - 0x008F2B 02:8F1B: 04        .byte $04   ; 
- - - - - - 0x008F2C 02:8F1C: 17        .byte $17   ; 
off_8F1D_1B:
- D 0 - I - 0x008F2D 02:8F1D: 04        .byte $04   ; 
- D 0 - I - 0x008F2E 02:8F1E: 04        .byte $04   ; 
- D 0 - I - 0x008F2F 02:8F1F: 04        .byte $04   ; 
- D 0 - I - 0x008F30 02:8F20: 04        .byte $04   ; 
- D 0 - I - 0x008F31 02:8F21: 04        .byte $04   ; 
- D 0 - I - 0x008F32 02:8F22: 04        .byte $04   ; 
- D 0 - I - 0x008F33 02:8F23: 45        .byte $45   ; 
- D 0 - I - 0x008F34 02:8F24: 5B        .byte $5B   ; 
- D 0 - I - 0x008F35 02:8F25: 5B        .byte $5B   ; 
- D 0 - I - 0x008F36 02:8F26: 5B        .byte $5B   ; 
- D 0 - I - 0x008F37 02:8F27: 5B        .byte $5B   ; 
- D 0 - I - 0x008F38 02:8F28: 5B        .byte $5B   ; 
- D 0 - I - 0x008F39 02:8F29: 7B        .byte $7B   ; 
- D 0 - I - 0x008F3A 02:8F2A: 6D        .byte $6D   ; 
- D 0 - I - 0x008F3B 02:8F2B: 6D        .byte $6D   ; 
- D 0 - I - 0x008F3C 02:8F2C: 6D        .byte $6D   ; 
- D 0 - I - 0x008F3D 02:8F2D: 6D        .byte $6D   ; 
- D 0 - I - 0x008F3E 02:8F2E: 6D        .byte $6D   ; 
- D 0 - I - 0x008F3F 02:8F2F: 6D        .byte $6D   ; 
- D 0 - I - 0x008F40 02:8F30: 6D        .byte $6D   ; 
- D 0 - I - 0x008F41 02:8F31: 6D        .byte $6D   ; 
- D 0 - I - 0x008F42 02:8F32: 67        .byte $67   ; 
- D 0 - I - 0x008F43 02:8F33: 04        .byte $04   ; 
- D 0 - I - 0x008F44 02:8F34: 16        .byte $16   ; 
- D 0 - I - 0x008F45 02:8F35: 04        .byte $04   ; 
- D 0 - I - 0x008F46 02:8F36: 04        .byte $04   ; 
- D 0 - I - 0x008F47 02:8F37: 04        .byte $04   ; 
- D 0 - I - 0x008F48 02:8F38: 04        .byte $04   ; 
- D 0 - I - 0x008F49 02:8F39: 04        .byte $04   ; 
- D 0 - I - 0x008F4A 02:8F3A: 39        .byte $39   ; 
- D 0 - I - 0x008F4B 02:8F3B: 3A        .byte $3A   ; 
- D 0 - I - 0x008F4C 02:8F3C: 3B        .byte $3B   ; 
off_8F3D_18:
- D 0 - I - 0x008F4D 02:8F3D: 28        .byte $28   ; 
- D 0 - I - 0x008F4E 02:8F3E: 04        .byte $04   ; 
- D 0 - I - 0x008F4F 02:8F3F: 36        .byte $36   ; 
- D 0 - I - 0x008F50 02:8F40: 04        .byte $04   ; 
- D 0 - I - 0x008F51 02:8F41: 04        .byte $04   ; 
- D 0 - I - 0x008F52 02:8F42: 04        .byte $04   ; 
- D 0 - I - 0x008F53 02:8F43: 04        .byte $04   ; 
- D 0 - I - 0x008F54 02:8F44: 04        .byte $04   ; 
- D 0 - I - 0x008F55 02:8F45: 04        .byte $04   ; 
- D 0 - I - 0x008F56 02:8F46: 32        .byte $32   ; 
- D 0 - I - 0x008F57 02:8F47: 04        .byte $04   ; 
- D 0 - I - 0x008F58 02:8F48: 04        .byte $04   ; 
- D 0 - I - 0x008F59 02:8F49: 16        .byte $16   ; 
- D 0 - I - 0x008F5A 02:8F4A: 04        .byte $04   ; 
- D 0 - I - 0x008F5B 02:8F4B: 35        .byte $35   ; 
- D 0 - I - 0x008F5C 02:8F4C: A4        .byte $A4   ; 
- D 0 - I - 0x008F5D 02:8F4D: D6        .byte $D6   ; 
- D 0 - I - 0x008F5E 02:8F4E: D6        .byte $D6   ; 
- D 0 - I - 0x008F5F 02:8F4F: C9        .byte $C9   ; 
- D 0 - I - 0x008F60 02:8F50: CA        .byte $CA   ; 
- D 0 - I - 0x008F61 02:8F51: 04        .byte $04   ; 
- D 0 - I - 0x008F62 02:8F52: 04        .byte $04   ; 
- D 0 - I - 0x008F63 02:8F53: 04        .byte $04   ; 
- D 0 - I - 0x008F64 02:8F54: 04        .byte $04   ; 
- - - - - - 0x008F65 02:8F55: 04        .byte $04   ; 
off_8F56_18:
- D 0 - I - 0x008F66 02:8F56: 04        .byte $04   ; 
- D 0 - I - 0x008F67 02:8F57: 04        .byte $04   ; 
- D 0 - I - 0x008F68 02:8F58: 04        .byte $04   ; 
- D 0 - I - 0x008F69 02:8F59: 04        .byte $04   ; 
- D 0 - I - 0x008F6A 02:8F5A: 16        .byte $16   ; 
- D 0 - I - 0x008F6B 02:8F5B: 04        .byte $04   ; 
- D 0 - I - 0x008F6C 02:8F5C: 04        .byte $04   ; 
- D 0 - I - 0x008F6D 02:8F5D: 04        .byte $04   ; 
- D 0 - I - 0x008F6E 02:8F5E: 41        .byte $41   ; 
- D 0 - I - 0x008F6F 02:8F5F: 55        .byte $55   ; 
- D 0 - I - 0x008F70 02:8F60: 55        .byte $55   ; 
- D 0 - I - 0x008F71 02:8F61: 55        .byte $55   ; 
- D 0 - I - 0x008F72 02:8F62: 7F        .byte $7F   ; 
- D 0 - I - 0x008F73 02:8F63: 6D        .byte $6D   ; 
- D 0 - I - 0x008F74 02:8F64: 6D        .byte $6D   ; 
- D 0 - I - 0x008F75 02:8F65: 6D        .byte $6D   ; 
- D 0 - I - 0x008F76 02:8F66: 6D        .byte $6D   ; 
- D 0 - I - 0x008F77 02:8F67: 7D        .byte $7D   ; 
- D 0 - I - 0x008F78 02:8F68: 55        .byte $55   ; 
- D 0 - I - 0x008F79 02:8F69: 43        .byte $43   ; 
- D 0 - I - 0x008F7A 02:8F6A: 04        .byte $04   ; 
- D 0 - I - 0x008F7B 02:8F6B: 04        .byte $04   ; 
- D 0 - I - 0x008F7C 02:8F6C: 04        .byte $04   ; 
- D 0 - I - 0x008F7D 02:8F6D: 16        .byte $16   ; 
- D 0 - I - 0x008F7E 02:8F6E: 04        .byte $04   ; 
- D 0 - I - 0x008F7F 02:8F6F: 04        .byte $04   ; 
- D 0 - I - 0x008F80 02:8F70: 04        .byte $04   ; 
- D 0 - I - 0x008F81 02:8F71: 04        .byte $04   ; 
- D 0 - I - 0x008F82 02:8F72: 28        .byte $28   ; 
- D 0 - I - 0x008F83 02:8F73: 04        .byte $04   ; 
- D 0 - I - 0x008F84 02:8F74: 04        .byte $04   ; 
- D 0 - I - 0x008F85 02:8F75: 2B        .byte $2B   ; 
off_8F76_19:
- D 0 - I - 0x008F86 02:8F76: 38        .byte $38   ; 
- D 0 - I - 0x008F87 02:8F77: 00        .byte $00   ; 
- D 0 - I - 0x008F88 02:8F78: 1B        .byte $1B   ; 
- D 0 - I - 0x008F89 02:8F79: 20        .byte $20   ; 
- D 0 - I - 0x008F8A 02:8F7A: 00        .byte $00   ; 
- D 0 - I - 0x008F8B 02:8F7B: 00        .byte $00   ; 
- D 0 - I - 0x008F8C 02:8F7C: 00        .byte $00   ; 
- D 0 - I - 0x008F8D 02:8F7D: 00        .byte $00   ; 
- D 0 - I - 0x008F8E 02:8F7E: 00        .byte $00   ; 
- D 0 - I - 0x008F8F 02:8F7F: 23        .byte $23   ; 
- D 0 - I - 0x008F90 02:8F80: 14        .byte $14   ; 
- D 0 - I - 0x008F91 02:8F81: 00        .byte $00   ; 
- D 0 - I - 0x008F92 02:8F82: 00        .byte $00   ; 
- D 0 - I - 0x008F93 02:8F83: 00        .byte $00   ; 
- D 0 - I - 0x008F94 02:8F84: 26        .byte $26   ; 
- D 0 - I - 0x008F95 02:8F85: D5        .byte $D5   ; 
- D 0 - I - 0x008F96 02:8F86: D6        .byte $D6   ; 
- D 0 - I - 0x008F97 02:8F87: D6        .byte $D6   ; 
- D 0 - I - 0x008F98 02:8F88: D6        .byte $D6   ; 
- D 0 - I - 0x008F99 02:8F89: 9A        .byte $9A   ; 
- D 0 - I - 0x008F9A 02:8F8A: 00        .byte $00   ; 
- D 0 - I - 0x008F9B 02:8F8B: 00        .byte $00   ; 
- D 0 - I - 0x008F9C 02:8F8C: 14        .byte $14   ; 
off_8F8D_0E:
- D 0 - I - 0x008F9D 02:8F8D: 00        .byte $00   ; 
- D 0 - I - 0x008F9E 02:8F8E: 00        .byte $00   ; 
- D 0 - I - 0x008F9F 02:8F8F: 14        .byte $14   ; 
- D 0 - I - 0x008FA0 02:8F90: 00        .byte $00   ; 
- D 0 - I - 0x008FA1 02:8F91: 00        .byte $00   ; 
- D 0 - I - 0x008FA2 02:8F92: 00        .byte $00   ; 
- D 0 - I - 0x008FA3 02:8F93: 00        .byte $00   ; 
- D 0 - I - 0x008FA4 02:8F94: 00        .byte $00   ; 
- D 0 - I - 0x008FA5 02:8F95: 00        .byte $00   ; 
- D 0 - I - 0x008FA6 02:8F96: 00        .byte $00   ; 
- D 0 - I - 0x008FA7 02:8F97: 14        .byte $14   ; 
- D 0 - I - 0x008FA8 02:8F98: 00        .byte $00   ; 
- D 0 - I - 0x008FA9 02:8F99: 00        .byte $00   ; 
- D 0 - I - 0x008FAA 02:8F9A: 00        .byte $00   ; 
- D 0 - I - 0x008FAB 02:8F9B: 00        .byte $00   ; 
off_8F9C_09:
- D 0 - I - 0x008FAC 02:8F9C: 00        .byte $00   ; 
- D 0 - I - 0x008FAD 02:8F9D: 00        .byte $00   ; 
- D 0 - I - 0x008FAE 02:8F9E: 00        .byte $00   ; 
- D 0 - I - 0x008FAF 02:8F9F: 00        .byte $00   ; 
- D 0 - I - 0x008FB0 02:8FA0: 00        .byte $00   ; 
- D 0 - I - 0x008FB1 02:8FA1: 00        .byte $00   ; 
- D 0 - I - 0x008FB2 02:8FA2: 00        .byte $00   ; 
- D 0 - I - 0x008FB3 02:8FA3: 00        .byte $00   ; 
- D 0 - I - 0x008FB4 02:8FA4: 00        .byte $00   ; 
- D 0 - I - 0x008FB5 02:8FA5: 00        .byte $00   ; 
- D 0 - I - 0x008FB6 02:8FA6: 00        .byte $00   ; 
- D 0 - I - 0x008FB7 02:8FA7: 00        .byte $00   ; 
- D 0 - I - 0x008FB8 02:8FA8: 00        .byte $00   ; 
- D 0 - I - 0x008FB9 02:8FA9: 00        .byte $00   ; 
- D 0 - I - 0x008FBA 02:8FAA: 00        .byte $00   ; 
- D 0 - I - 0x008FBB 02:8FAB: 00        .byte $00   ; 
- D 0 - I - 0x008FBC 02:8FAC: 00        .byte $00   ; 
- D 0 - I - 0x008FBD 02:8FAD: 14        .byte $14   ; 
- D 0 - I - 0x008FBE 02:8FAE: 00        .byte $00   ; 
- D 0 - I - 0x008FBF 02:8FAF: 00        .byte $00   ; 
- D 0 - I - 0x008FC0 02:8FB0: 60        .byte $60   ; 
- D 0 - I - 0x008FC1 02:8FB1: 6C        .byte $6C   ; 
- D 0 - I - 0x008FC2 02:8FB2: 6F        .byte $6F   ; 
- D 0 - I - 0x008FC3 02:8FB3: 6C        .byte $6C   ; 
- D 0 - I - 0x008FC4 02:8FB4: 6C        .byte $6C   ; 
- D 0 - I - 0x008FC5 02:8FB5: 66        .byte $66   ; 
- D 0 - I - 0x008FC6 02:8FB6: 4A        .byte $4A   ; 
- D 0 - I - 0x008FC7 02:8FB7: 00        .byte $00   ; 
- D 0 - I - 0x008FC8 02:8FB8: 00        .byte $00   ; 
- D 0 - I - 0x008FC9 02:8FB9: 48        .byte $48   ; 
- D 0 - I - 0x008FCA 02:8FBA: 60        .byte $60   ; 
- D 0 - I - 0x008FCB 02:8FBB: 72        .byte $72   ; 
off_8FBC_1A:
- D 0 - I - 0x008FCC 02:8FBC: 29        .byte $29   ; 
- D 0 - I - 0x008FCD 02:8FBD: 2A        .byte $2A   ; 
- D 0 - I - 0x008FCE 02:8FBE: 27        .byte $27   ; 
- D 0 - I - 0x008FCF 02:8FBF: 1C        .byte $1C   ; 
- D 0 - I - 0x008FD0 02:8FC0: 00        .byte $00   ; 
- D 0 - I - 0x008FD1 02:8FC1: 00        .byte $00   ; 
- D 0 - I - 0x008FD2 02:8FC2: 00        .byte $00   ; 
- D 0 - I - 0x008FD3 02:8FC3: 00        .byte $00   ; 
- D 0 - I - 0x008FD4 02:8FC4: 00        .byte $00   ; 
- D 0 - I - 0x008FD5 02:8FC5: 24        .byte $24   ; 
- D 0 - I - 0x008FD6 02:8FC6: 00        .byte $00   ; 
- D 0 - I - 0x008FD7 02:8FC7: 00        .byte $00   ; 
- D 0 - I - 0x008FD8 02:8FC8: 00        .byte $00   ; 
- D 0 - I - 0x008FD9 02:8FC9: 15        .byte $15   ; 
- D 0 - I - 0x008FDA 02:8FCA: 1B        .byte $1B   ; 
- D 0 - I - 0x008FDB 02:8FCB: B9        .byte $B9   ; 
- D 0 - I - 0x008FDC 02:8FCC: D6        .byte $D6   ; 
- D 0 - I - 0x008FDD 02:8FCD: D6        .byte $D6   ; 
- D 0 - I - 0x008FDE 02:8FCE: D6        .byte $D6   ; 
- D 0 - I - 0x008FDF 02:8FCF: AA        .byte $AA   ; 
- D 0 - I - 0x008FE0 02:8FD0: 00        .byte $00   ; 
- D 0 - I - 0x008FE1 02:8FD1: 00        .byte $00   ; 
- D 0 - I - 0x008FE2 02:8FD2: 00        .byte $00   ; 
- D 0 - I - 0x008FE3 02:8FD3: 00        .byte $00   ; 
- - - - - - 0x008FE4 02:8FD4: 00        .byte $00   ; 
- - - - - - 0x008FE5 02:8FD5: 00        .byte $00   ; 
- - - - - - 0x008FE6 02:8FD6: 00        .byte $00   ; 
- - - - - - 0x008FE7 02:8FD7: 00        .byte $00   ; 
- - - - - - 0x008FE8 02:8FD8: 00        .byte $00   ; 
- - - - - - 0x008FE9 02:8FD9: 00        .byte $00   ; 
- - - - - - 0x008FEA 02:8FDA: 00        .byte $00   ; 
- - - - - - 0x008FEB 02:8FDB: 00        .byte $00   ; 
off_8FDC_1B:
- D 0 - I - 0x008FEC 02:8FDC: 04        .byte $04   ; 
- D 0 - I - 0x008FED 02:8FDD: 39        .byte $39   ; 
- D 0 - I - 0x008FEE 02:8FDE: 3A        .byte $3A   ; 
- D 0 - I - 0x008FEF 02:8FDF: 31        .byte $31   ; 
- D 0 - I - 0x008FF0 02:8FE0: 04        .byte $04   ; 
- D 0 - I - 0x008FF1 02:8FE1: 04        .byte $04   ; 
- D 0 - I - 0x008FF2 02:8FE2: 04        .byte $04   ; 
- D 0 - I - 0x008FF3 02:8FE3: 16        .byte $16   ; 
- D 0 - I - 0x008FF4 02:8FE4: 04        .byte $04   ; 
- D 0 - I - 0x008FF5 02:8FE5: 35        .byte $35   ; 
- D 0 - I - 0x008FF6 02:8FE6: 04        .byte $04   ; 
- D 0 - I - 0x008FF7 02:8FE7: 04        .byte $04   ; 
- D 0 - I - 0x008FF8 02:8FE8: 04        .byte $04   ; 
- D 0 - I - 0x008FF9 02:8FE9: 04        .byte $04   ; 
- D 0 - I - 0x008FFA 02:8FEA: 37        .byte $37   ; 
- D 0 - I - 0x008FFB 02:8FEB: 9B        .byte $9B   ; 
- D 0 - I - 0x008FFC 02:8FEC: D6        .byte $D6   ; 
- D 0 - I - 0x008FFD 02:8FED: D6        .byte $D6   ; 
- D 0 - I - 0x008FFE 02:8FEE: D6        .byte $D6   ; 
- D 0 - I - 0x008FFF 02:8FEF: BA        .byte $BA   ; 
off_8FF0_10:
- D 0 - I - 0x009000 02:8FF0: 04        .byte $04   ; 
- D 0 - I - 0x009001 02:8FF1: 04        .byte $04   ; 
- D 0 - I - 0x009002 02:8FF2: 04        .byte $04   ; 
- D 0 - I - 0x009003 02:8FF3: 04        .byte $04   ; 
- - - - - - 0x009004 02:8FF4: 04        .byte $04   ; 
- - - - - - 0x009005 02:8FF5: 04        .byte $04   ; 
- - - - - - 0x009006 02:8FF6: 04        .byte $04   ; 
- - - - - - 0x009007 02:8FF7: 04        .byte $04   ; 
- - - - - - 0x009008 02:8FF8: 04        .byte $04   ; 
- D 0 - I - 0x009009 02:8FF9: 04        .byte $04   ; 
- D 0 - I - 0x00900A 02:8FFA: 04        .byte $04   ; 
- D 0 - I - 0x00900B 02:8FFB: 04        .byte $04   ; 
- D 0 - I - 0x00900C 02:8FFC: 04        .byte $04   ; 
- D 0 - I - 0x00900D 02:8FFD: D0        .byte $D0   ; 
- D 0 - I - 0x00900E 02:8FFE: D1        .byte $D1   ; 
- D 0 - I - 0x00900F 02:8FFF: D2        .byte $D2   ; 
- D 0 - I - 0x009010 02:9000: D3        .byte $D3   ; 
- D 0 - I - 0x009011 02:9001: D4        .byte $D4   ; 
- D 0 - I - 0x009012 02:9002: 32        .byte $32   ; 
- D 0 - I - 0x009013 02:9003: 04        .byte $04   ; 
- D 0 - I - 0x009014 02:9004: 45        .byte $45   ; 
- D 0 - I - 0x009015 02:9005: 5B        .byte $5B   ; 
- D 0 - I - 0x009016 02:9006: 5B        .byte $5B   ; 
- D 0 - I - 0x009017 02:9007: 5E        .byte $5E   ; 
- D 0 - I - 0x009018 02:9008: 5F        .byte $5F   ; 
- D 0 - I - 0x009019 02:9009: 47        .byte $47   ; 
- D 0 - I - 0x00901A 02:900A: 04        .byte $04   ; 
- D 0 - I - 0x00901B 02:900B: 04        .byte $04   ; 
- D 0 - I - 0x00901C 02:900C: 04        .byte $04   ; 
- D 0 - I - 0x00901D 02:900D: 04        .byte $04   ; 
- D 0 - I - 0x00901E 02:900E: 31        .byte $31   ; 
- D 0 - I - 0x00901F 02:900F: 04        .byte $04   ; 
off_9010_1C:
- D 0 - I - 0x009020 02:9010: 04        .byte $04   ; 
- D 0 - I - 0x009021 02:9011: 04        .byte $04   ; 
- D 0 - I - 0x009022 02:9012: 17        .byte $17   ; 
- D 0 - I - 0x009023 02:9013: 32        .byte $32   ; 
- D 0 - I - 0x009024 02:9014: 04        .byte $04   ; 
- D 0 - I - 0x009025 02:9015: 04        .byte $04   ; 
- D 0 - I - 0x009026 02:9016: 04        .byte $04   ; 
- D 0 - I - 0x009027 02:9017: 04        .byte $04   ; 
- D 0 - I - 0x009028 02:9018: 04        .byte $04   ; 
- D 0 - I - 0x009029 02:9019: 36        .byte $36   ; 
- D 0 - I - 0x00902A 02:901A: 04        .byte $04   ; 
- D 0 - I - 0x00902B 02:901B: 04        .byte $04   ; 
- D 0 - I - 0x00902C 02:901C: 04        .byte $04   ; 
- D 0 - I - 0x00902D 02:901D: 04        .byte $04   ; 
- D 0 - I - 0x00902E 02:901E: 04        .byte $04   ; 
- D 0 - I - 0x00902F 02:901F: D8        .byte $D8   ; 
- D 0 - I - 0x009030 02:9020: D9        .byte $D9   ; 
- D 0 - I - 0x009031 02:9021: D9        .byte $D9   ; 
- D 0 - I - 0x009032 02:9022: D9        .byte $D9   ; 
- D 0 - I - 0x009033 02:9023: DA        .byte $DA   ; 
- D 0 - I - 0x009034 02:9024: 04        .byte $04   ; 
- D 0 - I - 0x009035 02:9025: 04        .byte $04   ; 
- D 0 - I - 0x009036 02:9026: 17        .byte $17   ; 
off_9027_0B:
- D 0 - I - 0x009037 02:9027: 04        .byte $04   ; 
- - - - - - 0x009038 02:9028: 04        .byte $04   ; 
- - - - - - 0x009039 02:9029: 04        .byte $04   ; 
- - - - - - 0x00903A 02:902A: 04        .byte $04   ; 
- - - - - - 0x00903B 02:902B: 04        .byte $04   ; 
- - - - - - 0x00903C 02:902C: 04        .byte $04   ; 
- - - - - - 0x00903D 02:902D: 04        .byte $04   ; 
- - - - - - 0x00903E 02:902E: 04        .byte $04   ; 
- - - - - - 0x00903F 02:902F: 04        .byte $04   ; 
- D 0 - I - 0x009040 02:9030: 04        .byte $04   ; 
- D 0 - I - 0x009041 02:9031: 04        .byte $04   ; 
- D 0 - I - 0x009042 02:9032: 04        .byte $04   ; 
- D 0 - I - 0x009043 02:9033: 04        .byte $04   ; 
- D 0 - I - 0x009044 02:9034: 04        .byte $04   ; 
- D 0 - I - 0x009045 02:9035: 04        .byte $04   ; 
- D 0 - I - 0x009046 02:9036: 31        .byte $31   ; 
- D 0 - I - 0x009047 02:9037: 04        .byte $04   ; 
- D 0 - I - 0x009048 02:9038: 92        .byte $92   ; 
- D 0 - I - 0x009049 02:9039: 04        .byte $04   ; 
- D 0 - I - 0x00904A 02:903A: 04        .byte $04   ; 
- D 0 - I - 0x00904B 02:903B: 04        .byte $04   ; 
- D 0 - I - 0x00904C 02:903C: 04        .byte $04   ; 
- D 0 - I - 0x00904D 02:903D: 04        .byte $04   ; 
- D 0 - I - 0x00904E 02:903E: 04        .byte $04   ; 
- D 0 - I - 0x00904F 02:903F: 61        .byte $61   ; 
- D 0 - I - 0x009050 02:9040: 70        .byte $70   ; 
- D 0 - I - 0x009051 02:9041: 6D        .byte $6D   ; 
- D 0 - I - 0x009052 02:9042: 79        .byte $79   ; 
- D 0 - I - 0x009053 02:9043: 5E        .byte $5E   ; 
- D 0 - I - 0x009054 02:9044: 47        .byte $47   ; 
- D 0 - I - 0x009055 02:9045: 04        .byte $04   ; 
- D 0 - I - 0x009056 02:9046: 04        .byte $04   ; 
off_9047_03:
- D 0 - I - 0x009057 02:9047: 00        .byte $00   ; 
- D 0 - I - 0x009058 02:9048: 00        .byte $00   ; 
- D 0 - I - 0x009059 02:9049: 00        .byte $00   ; 
- D 0 - I - 0x00905A 02:904A: 00        .byte $00   ; 
- - - - - - 0x00905B 02:904B: 00        .byte $00   ; 
- - - - - - 0x00905C 02:904C: 00        .byte $00   ; 
- - - - - - 0x00905D 02:904D: 00        .byte $00   ; 
- - - - - - 0x00905E 02:904E: 00        .byte $00   ; 
- D 0 - I - 0x00905F 02:904F: 00        .byte $00   ; 
- D 0 - I - 0x009060 02:9050: 00        .byte $00   ; 
- D 0 - I - 0x009061 02:9051: 00        .byte $00   ; 
- D 0 - I - 0x009062 02:9052: 00        .byte $00   ; 
- D 0 - I - 0x009063 02:9053: 00        .byte $00   ; 
- D 0 - I - 0x009064 02:9054: 00        .byte $00   ; 
- - - - - - 0x009065 02:9055: 00        .byte $00   ; 
- - - - - - 0x009066 02:9056: 00        .byte $00   ; 
- D 0 - I - 0x009067 02:9057: 54        .byte $54   ; 
- D 0 - I - 0x009068 02:9058: 55        .byte $55   ; 
- D 0 - I - 0x009069 02:9059: 00        .byte $00   ; 
- D 0 - I - 0x00906A 02:905A: 00        .byte $00   ; 
- D 0 - I - 0x00906B 02:905B: 00        .byte $00   ; 
- D 0 - I - 0x00906C 02:905C: 00        .byte $00   ; 
- - - - - - 0x00906D 02:905D: 00        .byte $00   ; 
- - - - - - 0x00906E 02:905E: 00        .byte $00   ; 
- D 0 - I - 0x00906F 02:905F: 55        .byte $55   ; 
- D 0 - I - 0x009070 02:9060: 55        .byte $55   ; 
- D 0 - I - 0x009071 02:9061: 11        .byte $11   ; 
- D 0 - I - 0x009072 02:9062: 00        .byte $00   ; 
- D 0 - I - 0x009073 02:9063: 00        .byte $00   ; 
- D 0 - I - 0x009074 02:9064: 00        .byte $00   ; 
- - - - - - 0x009075 02:9065: 00        .byte $00   ; 
- - - - - - 0x009076 02:9066: 00        .byte $00   ; 
- D 0 - I - 0x009077 02:9067: 55        .byte $55   ; 
- D 0 - I - 0x009078 02:9068: 05        .byte $05   ; 
- D 0 - I - 0x009079 02:9069: 01        .byte $01   ; 
- D 0 - I - 0x00907A 02:906A: 00        .byte $00   ; 
- D 0 - I - 0x00907B 02:906B: 00        .byte $00   ; 
- D 0 - I - 0x00907C 02:906C: 00        .byte $00   ; 
- - - - - - 0x00907D 02:906D: 00        .byte $00   ; 
- - - - - - 0x00907E 02:906E: 00        .byte $00   ; 
- D 0 - I - 0x00907F 02:906F: 00        .byte $00   ; 
- D 0 - I - 0x009080 02:9070: 00        .byte $00   ; 
off_9071_04:
- D 0 - I - 0x009081 02:9071: 00        .byte $00   ; 
- D 0 - I - 0x009082 02:9072: 00        .byte $00   ; 
- D 0 - I - 0x009083 02:9073: 00        .byte $00   ; 
- D 0 - I - 0x009084 02:9074: 00        .byte $00   ; 
- D 0 - I - 0x009085 02:9075: 00        .byte $00   ; 
- D 0 - I - 0x009086 02:9076: 00        .byte $00   ; 
- D 0 - I - 0x009087 02:9077: 00        .byte $00   ; 
- D 0 - I - 0x009088 02:9078: 00        .byte $00   ; 
- D 0 - I - 0x009089 02:9079: 00        .byte $00   ; 
- D 0 - I - 0x00908A 02:907A: 00        .byte $00   ; 
- D 0 - I - 0x00908B 02:907B: 00        .byte $00   ; 
- D 0 - I - 0x00908C 02:907C: 00        .byte $00   ; 
- D 0 - I - 0x00908D 02:907D: 00        .byte $00   ; 
- D 0 - I - 0x00908E 02:907E: 00        .byte $00   ; 
off_907F_04:
- D 0 - I - 0x00908F 02:907F: 00        .byte $00   ; 
- D 0 - I - 0x009090 02:9080: 00        .byte $00   ; 
- D 0 - I - 0x009091 02:9081: 00        .byte $00   ; 
- D 0 - I - 0x009092 02:9082: 00        .byte $00   ; 
- D 0 - I - 0x009093 02:9083: 00        .byte $00   ; 
- D 0 - I - 0x009094 02:9084: 00        .byte $00   ; 
- D 0 - I - 0x009095 02:9085: 00        .byte $00   ; 
- D 0 - I - 0x009096 02:9086: 00        .byte $00   ; 
- D 0 - I - 0x009097 02:9087: 40        .byte $40   ; 
- D 0 - I - 0x009098 02:9088: 54        .byte $54   ; 
- D 0 - I - 0x009099 02:9089: 54        .byte $54   ; 
- D 0 - I - 0x00909A 02:908A: 42        .byte $42   ; 
- D 0 - I - 0x00909B 02:908B: 00        .byte $00   ; 
- D 0 - I - 0x00909C 02:908C: 00        .byte $00   ; 
off_908D_0A:
- D 0 - I - 0x00909D 02:908D: 00        .byte $00   ; 
- D 0 - I - 0x00909E 02:908E: 00        .byte $00   ; 
- D 0 - I - 0x00909F 02:908F: 00        .byte $00   ; 
- D 0 - I - 0x0090A0 02:9090: 00        .byte $00   ; 
- D 0 - I - 0x0090A1 02:9091: 00        .byte $00   ; 
- D 0 - I - 0x0090A2 02:9092: 00        .byte $00   ; 
- D 0 - I - 0x0090A3 02:9093: 00        .byte $00   ; 
- D 0 - I - 0x0090A4 02:9094: 00        .byte $00   ; 
- D 0 - I - 0x0090A5 02:9095: 00        .byte $00   ; 
- D 0 - I - 0x0090A6 02:9096: 00        .byte $00   ; 
- D 0 - I - 0x0090A7 02:9097: 00        .byte $00   ; 
- D 0 - I - 0x0090A8 02:9098: 00        .byte $00   ; 
- D 0 - I - 0x0090A9 02:9099: 00        .byte $00   ; 
- D 0 - I - 0x0090AA 02:909A: 00        .byte $00   ; 
- D 0 - I - 0x0090AB 02:909B: 00        .byte $00   ; 
- D 0 - I - 0x0090AC 02:909C: 00        .byte $00   ; 
- D 0 - I - 0x0090AD 02:909D: 00        .byte $00   ; 
- D 0 - I - 0x0090AE 02:909E: 00        .byte $00   ; 
- D 0 - I - 0x0090AF 02:909F: 27        .byte $27   ; 
- D 0 - I - 0x0090B0 02:90A0: 1C        .byte $1C   ; 
- D 0 - I - 0x0090B1 02:90A1: 00        .byte $00   ; 
- D 0 - I - 0x0090B2 02:90A2: 00        .byte $00   ; 
- D 0 - I - 0x0090B3 02:90A3: 00        .byte $00   ; 
- D 0 - I - 0x0090B4 02:90A4: 00        .byte $00   ; 
- D 0 - I - 0x0090B5 02:90A5: 40        .byte $40   ; 
- D 0 - I - 0x0090B6 02:90A6: 54        .byte $54   ; 
- D 0 - I - 0x0090B7 02:90A7: 7E        .byte $7E   ; 
- D 0 - I - 0x0090B8 02:90A8: 6C        .byte $6C   ; 
- D 0 - I - 0x0090B9 02:90A9: 6C        .byte $6C   ; 
- D 0 - I - 0x0090BA 02:90AA: 7C        .byte $7C   ; 
off_90AB_0A:
- D 0 - I - 0x0090BB 02:90AB: 54        .byte $54   ; 
- D 0 - I - 0x0090BC 02:90AC: 54        .byte $54   ; 
- D 0 - I - 0x0090BD 02:90AD: 54        .byte $54   ; 
- D 0 - I - 0x0090BE 02:90AE: 54        .byte $54   ; 
- D 0 - I - 0x0090BF 02:90AF: 7E        .byte $7E   ; 
- D 0 - I - 0x0090C0 02:90B0: 6F        .byte $6F   ; 
- D 0 - I - 0x0090C1 02:90B1: 6C        .byte $6C   ; 
- D 0 - I - 0x0090C2 02:90B2: 66        .byte $66   ; 
- D 0 - I - 0x0090C3 02:90B3: 00        .byte $00   ; 
- D 0 - I - 0x0090C4 02:90B4: 00        .byte $00   ; 
- D 0 - I - 0x0090C5 02:90B5: 00        .byte $00   ; 
- D 0 - I - 0x0090C6 02:90B6: 00        .byte $00   ; 
- D 0 - I - 0x0090C7 02:90B7: 1B        .byte $1B   ; 
- D 0 - I - 0x0090C8 02:90B8: 20        .byte $20   ; 
- D 0 - I - 0x0090C9 02:90B9: 00        .byte $00   ; 
off_90BA_0F:
- D 0 - I - 0x0090CA 02:90BA: 00        .byte $00   ; 
- D 0 - I - 0x0090CB 02:90BB: 00        .byte $00   ; 
- D 0 - I - 0x0090CC 02:90BC: 00        .byte $00   ; 
- D 0 - I - 0x0090CD 02:90BD: 00        .byte $00   ; 
- D 0 - I - 0x0090CE 02:90BE: 00        .byte $00   ; 
- D 0 - I - 0x0090CF 02:90BF: 00        .byte $00   ; 
- D 0 - I - 0x0090D0 02:90C0: 00        .byte $00   ; 
- D 0 - I - 0x0090D1 02:90C1: 00        .byte $00   ; 
- D 0 - I - 0x0090D2 02:90C2: 00        .byte $00   ; 
- D 0 - I - 0x0090D3 02:90C3: 14        .byte $14   ; 
- D 0 - I - 0x0090D4 02:90C4: 00        .byte $00   ; 
- D 0 - I - 0x0090D5 02:90C5: 00        .byte $00   ; 
- D 0 - I - 0x0090D6 02:90C6: 00        .byte $00   ; 
- D 0 - I - 0x0090D7 02:90C7: 00        .byte $00   ; 
- D 0 - I - 0x0090D8 02:90C8: 00        .byte $00   ; 
- D 0 - I - 0x0090D9 02:90C9: 00        .byte $00   ; 
- D 0 - I - 0x0090DA 02:90CA: 00        .byte $00   ; 
- D 0 - I - 0x0090DB 02:90CB: 14        .byte $14   ; 
- D 0 - I - 0x0090DC 02:90CC: 00        .byte $00   ; 
- D 0 - I - 0x0090DD 02:90CD: 00        .byte $00   ; 
- D 0 - I - 0x0090DE 02:90CE: 00        .byte $00   ; 
- D 0 - I - 0x0090DF 02:90CF: 00        .byte $00   ; 
- D 0 - I - 0x0090E0 02:90D0: 00        .byte $00   ; 
- D 0 - I - 0x0090E1 02:90D1: 00        .byte $00   ; 
- D 0 - I - 0x0090E2 02:90D2: 00        .byte $00   ; 
- D 0 - I - 0x0090E3 02:90D3: 00        .byte $00   ; 
- D 0 - I - 0x0090E4 02:90D4: 00        .byte $00   ; 
- D 0 - I - 0x0090E5 02:90D5: 00        .byte $00   ; 
- D 0 - I - 0x0090E6 02:90D6: 00        .byte $00   ; 
- D 0 - I - 0x0090E7 02:90D7: 00        .byte $00   ; 
- D 0 - I - 0x0090E8 02:90D8: 00        .byte $00   ; 
- D 0 - I - 0x0090E9 02:90D9: 00        .byte $00   ; 
off_90DA_06:
- - - - - - 0x0090EA 02:90DA: 00        .byte $00   ; 
- - - - - - 0x0090EB 02:90DB: 00        .byte $00   ; 
- - - - - - 0x0090EC 02:90DC: 00        .byte $00   ; 
- - - - - - 0x0090ED 02:90DD: 00        .byte $00   ; 
- - - - - - 0x0090EE 02:90DE: 00        .byte $00   ; 
- - - - - - 0x0090EF 02:90DF: 00        .byte $00   ; 
- - - - - - 0x0090F0 02:90E0: 00        .byte $00   ; 
- - - - - - 0x0090F1 02:90E1: 00        .byte $00   ; 
- - - - - - 0x0090F2 02:90E2: 00        .byte $00   ; 
- D 0 - I - 0x0090F3 02:90E3: 00        .byte $00   ; 
- D 0 - I - 0x0090F4 02:90E4: 00        .byte $00   ; 
- D 0 - I - 0x0090F5 02:90E5: 00        .byte $00   ; 
- D 0 - I - 0x0090F6 02:90E6: 00        .byte $00   ; 
- D 0 - I - 0x0090F7 02:90E7: 00        .byte $00   ; 
- D 0 - I - 0x0090F8 02:90E8: 00        .byte $00   ; 
- D 0 - I - 0x0090F9 02:90E9: 26        .byte $26   ; 
- D 0 - I - 0x0090FA 02:90EA: 12        .byte $12   ; 
- D 0 - I - 0x0090FB 02:90EB: 12        .byte $12   ; 
- D 0 - I - 0x0090FC 02:90EC: 12        .byte $12   ; 
- D 0 - I - 0x0090FD 02:90ED: 12        .byte $12   ; 
- D 0 - I - 0x0090FE 02:90EE: 63        .byte $63   ; 
- D 0 - I - 0x0090FF 02:90EF: 77        .byte $77   ; 
- D 0 - I - 0x009100 02:90F0: 77        .byte $77   ; 
- D 0 - I - 0x009101 02:90F1: 77        .byte $77   ; 
- D 0 - I - 0x009102 02:90F2: 77        .byte $77   ; 
- D 0 - I - 0x009103 02:90F3: 77        .byte $77   ; 
- D 0 - I - 0x009104 02:90F4: 77        .byte $77   ; 
- D 0 - I - 0x009105 02:90F5: E7        .byte $E7   ; 
- D 0 - I - 0x009106 02:90F6: 6C        .byte $6C   ; 
off_90F7_06:
- D 0 - I - 0x009107 02:90F7: 6C        .byte $6C   ; 
- D 0 - I - 0x009108 02:90F8: 6C        .byte $6C   ; 
- D 0 - I - 0x009109 02:90F9: 6C        .byte $6C   ; 
- D 0 - I - 0x00910A 02:90FA: 66        .byte $66   ; 
- D 0 - I - 0x00910B 02:90FB: 4E        .byte $4E   ; 
- D 0 - I - 0x00910C 02:90FC: 00        .byte $00   ; 
- D 0 - I - 0x00910D 02:90FD: 00        .byte $00   ; 
- D 0 - I - 0x00910E 02:90FE: 00        .byte $00   ; 
- D 0 - I - 0x00910F 02:90FF: 00        .byte $00   ; 
- D 0 - I - 0x009110 02:9100: 00        .byte $00   ; 
- D 0 - I - 0x009111 02:9101: 00        .byte $00   ; 
- D 0 - I - 0x009112 02:9102: 00        .byte $00   ; 
- D 0 - I - 0x009113 02:9103: 00        .byte $00   ; 
- D 0 - I - 0x009114 02:9104: 00        .byte $00   ; 
- D 0 - I - 0x009115 02:9105: 00        .byte $00   ; 
- D 0 - I - 0x009116 02:9106: 14        .byte $14   ; 
- D 0 - I - 0x009117 02:9107: 00        .byte $00   ; 
- D 0 - I - 0x009118 02:9108: 00        .byte $00   ; 
- D 0 - I - 0x009119 02:9109: 00        .byte $00   ; 
- D 0 - I - 0x00911A 02:910A: 00        .byte $00   ; 
- D 0 - I - 0x00911B 02:910B: 00        .byte $00   ; 
- D 0 - I - 0x00911C 02:910C: 00        .byte $00   ; 
- D 0 - I - 0x00911D 02:910D: 15        .byte $15   ; 
- D 0 - I - 0x00911E 02:910E: 00        .byte $00   ; 
- D 0 - I - 0x00911F 02:910F: 40        .byte $40   ; 
- D 0 - I - 0x009120 02:9110: 54        .byte $54   ; 
- D 0 - I - 0x009121 02:9111: 54        .byte $54   ; 
- D 0 - I - 0x009122 02:9112: 54        .byte $54   ; 
- D 0 - I - 0x009123 02:9113: 7E        .byte $7E   ; 
- D 0 - I - 0x009124 02:9114: 6C        .byte $6C   ; 
- D 0 - I - 0x009125 02:9115: 6C        .byte $6C   ; 
- D 0 - I - 0x009126 02:9116: 72        .byte $72   ; 
off_9117_08:
- - - - - - 0x009127 02:9117: 00        .byte $00   ; 
- - - - - - 0x009128 02:9118: 00        .byte $00   ; 
- - - - - - 0x009129 02:9119: 00        .byte $00   ; 
- - - - - - 0x00912A 02:911A: 00        .byte $00   ; 
- - - - - - 0x00912B 02:911B: 00        .byte $00   ; 
- - - - - - 0x00912C 02:911C: 00        .byte $00   ; 
- - - - - - 0x00912D 02:911D: 00        .byte $00   ; 
- - - - - - 0x00912E 02:911E: 00        .byte $00   ; 
- - - - - - 0x00912F 02:911F: 00        .byte $00   ; 
- D 0 - I - 0x009130 02:9120: 00        .byte $00   ; 
- D 0 - I - 0x009131 02:9121: 00        .byte $00   ; 
- D 0 - I - 0x009132 02:9122: 00        .byte $00   ; 
- D 0 - I - 0x009133 02:9123: 00        .byte $00   ; 
- D 0 - I - 0x009134 02:9124: 00        .byte $00   ; 
- D 0 - I - 0x009135 02:9125: 00        .byte $00   ; 
- D 0 - I - 0x009136 02:9126: 24        .byte $24   ; 
- D 0 - I - 0x009137 02:9127: 00        .byte $00   ; 
- D 0 - I - 0x009138 02:9128: 00        .byte $00   ; 
- D 0 - I - 0x009139 02:9129: 00        .byte $00   ; 
- D 0 - I - 0x00913A 02:912A: 14        .byte $14   ; 
- D 0 - I - 0x00913B 02:912B: 00        .byte $00   ; 
- D 0 - I - 0x00913C 02:912C: 00        .byte $00   ; 
- D 0 - I - 0x00913D 02:912D: 00        .byte $00   ; 
- D 0 - I - 0x00913E 02:912E: 00        .byte $00   ; 
- D 0 - I - 0x00913F 02:912F: 00        .byte $00   ; 
- D 0 - I - 0x009140 02:9130: 4C        .byte $4C   ; 
- D 0 - I - 0x009141 02:9131: 60        .byte $60   ; 
- D 0 - I - 0x009142 02:9132: 6E        .byte $6E   ; 
- D 0 - I - 0x009143 02:9133: 6C        .byte $6C   ; 
- D 0 - I - 0x009144 02:9134: 6C        .byte $6C   ; 
- D 0 - I - 0x009145 02:9135: 6F        .byte $6F   ; 
off_9136_0D:
- D 0 - I - 0x009146 02:9136: 6C        .byte $6C   ; 
- D 0 - I - 0x009147 02:9137: EF        .byte $EF   ; 
- D 0 - I - 0x009148 02:9138: 66        .byte $66   ; 
- D 0 - I - 0x009149 02:9139: 4A        .byte $4A   ; 
- D 0 - I - 0x00914A 02:913A: 00        .byte $00   ; 
- D 0 - I - 0x00914B 02:913B: 00        .byte $00   ; 
- D 0 - I - 0x00914C 02:913C: 00        .byte $00   ; 
- D 0 - I - 0x00914D 02:913D: 00        .byte $00   ; 
- D 0 - I - 0x00914E 02:913E: 60        .byte $60   ; 
- D 0 - I - 0x00914F 02:913F: 6F        .byte $6F   ; 
- D 0 - I - 0x009150 02:9140: 6C        .byte $6C   ; 
- D 0 - I - 0x009151 02:9141: 68        .byte $68   ; 
- D 0 - I - 0x009152 02:9142: 00        .byte $00   ; 
- D 0 - I - 0x009153 02:9143: 22        .byte $22   ; 
- D 0 - I - 0x009154 02:9144: A0        .byte $A0   ; 
- D 0 - I - 0x009155 02:9145: A1        .byte $A1   ; 
- D 0 - I - 0x009156 02:9146: A2        .byte $A2   ; 
- D 0 - I - 0x009157 02:9147: A3        .byte $A3   ; 
- D 0 - I - 0x009158 02:9148: 00        .byte $00   ; 
- D 0 - I - 0x009159 02:9149: 00        .byte $00   ; 
- D 0 - I - 0x00915A 02:914A: 00        .byte $00   ; 
- D 0 - I - 0x00915B 02:914B: 00        .byte $00   ; 
- D 0 - I - 0x00915C 02:914C: 00        .byte $00   ; 
- D 0 - I - 0x00915D 02:914D: 00        .byte $00   ; 
- - - - - - 0x00915E 02:914E: 00        .byte $00   ; 
- - - - - - 0x00915F 02:914F: 00        .byte $00   ; 
- - - - - - 0x009160 02:9150: 00        .byte $00   ; 
- - - - - - 0x009161 02:9151: 00        .byte $00   ; 
- - - - - - 0x009162 02:9152: 00        .byte $00   ; 
- - - - - - 0x009163 02:9153: 00        .byte $00   ; 
- - - - - - 0x009164 02:9154: 00        .byte $00   ; 
- - - - - - 0x009165 02:9155: 00        .byte $00   ; 
off_9156_0C:
- - - - - - 0x009166 02:9156: 00        .byte $00   ; 
- - - - - - 0x009167 02:9157: 00        .byte $00   ; 
- - - - - - 0x009168 02:9158: 00        .byte $00   ; 
- - - - - - 0x009169 02:9159: 00        .byte $00   ; 
- - - - - - 0x00916A 02:915A: 00        .byte $00   ; 
- - - - - - 0x00916B 02:915B: 00        .byte $00   ; 
- - - - - - 0x00916C 02:915C: 00        .byte $00   ; 
- - - - - - 0x00916D 02:915D: 00        .byte $00   ; 
- - - - - - 0x00916E 02:915E: 00        .byte $00   ; 
- D 0 - I - 0x00916F 02:915F: 00        .byte $00   ; 
- D 0 - I - 0x009170 02:9160: 00        .byte $00   ; 
- D 0 - I - 0x009171 02:9161: 00        .byte $00   ; 
- D 0 - I - 0x009172 02:9162: 00        .byte $00   ; 
- D 0 - I - 0x009173 02:9163: 00        .byte $00   ; 
- D 0 - I - 0x009174 02:9164: 27        .byte $27   ; 
- D 0 - I - 0x009175 02:9165: 1C        .byte $1C   ; 
- D 0 - I - 0x009176 02:9166: 00        .byte $00   ; 
- D 0 - I - 0x009177 02:9167: 93        .byte $93   ; 
- D 0 - I - 0x009178 02:9168: 94        .byte $94   ; 
- D 0 - I - 0x009179 02:9169: 00        .byte $00   ; 
- D 0 - I - 0x00917A 02:916A: 00        .byte $00   ; 
- D 0 - I - 0x00917B 02:916B: 00        .byte $00   ; 
- D 0 - I - 0x00917C 02:916C: 00        .byte $00   ; 
- D 0 - I - 0x00917D 02:916D: 00        .byte $00   ; 
- D 0 - I - 0x00917E 02:916E: 60        .byte $60   ; 
- D 0 - I - 0x00917F 02:916F: 6C        .byte $6C   ; 
- D 0 - I - 0x009180 02:9170: 6C        .byte $6C   ; 
- D 0 - I - 0x009181 02:9171: 68        .byte $68   ; 
- D 0 - I - 0x009182 02:9172: 4E        .byte $4E   ; 
- D 0 - I - 0x009183 02:9173: 00        .byte $00   ; 
- D 0 - I - 0x009184 02:9174: 00        .byte $00   ; 
- D 0 - I - 0x009185 02:9175: 00        .byte $00   ; 
off_9176_0D:
- - - - - - 0x009186 02:9176: 00        .byte $00   ; 
- - - - - - 0x009187 02:9177: 00        .byte $00   ; 
- - - - - - 0x009188 02:9178: 00        .byte $00   ; 
- - - - - - 0x009189 02:9179: 00        .byte $00   ; 
- - - - - - 0x00918A 02:917A: 00        .byte $00   ; 
- - - - - - 0x00918B 02:917B: 00        .byte $00   ; 
- - - - - - 0x00918C 02:917C: 00        .byte $00   ; 
- - - - - - 0x00918D 02:917D: 00        .byte $00   ; 
- - - - - - 0x00918E 02:917E: 00        .byte $00   ; 
- D 0 - I - 0x00918F 02:917F: 14        .byte $14   ; 
- D 0 - I - 0x009190 02:9180: 00        .byte $00   ; 
- D 0 - I - 0x009191 02:9181: 00        .byte $00   ; 
- D 0 - I - 0x009192 02:9182: 14        .byte $14   ; 
- D 0 - I - 0x009193 02:9183: 00        .byte $00   ; 
- D 0 - I - 0x009194 02:9184: 8D        .byte $8D   ; 
- D 0 - I - 0x009195 02:9185: 12        .byte $12   ; 
- D 0 - I - 0x009196 02:9186: 12        .byte $12   ; 
- D 0 - I - 0x009197 02:9187: 12        .byte $12   ; 
- D 0 - I - 0x009198 02:9188: 12        .byte $12   ; 
- D 0 - I - 0x009199 02:9189: 12        .byte $12   ; 
- D 0 - I - 0x00919A 02:918A: 12        .byte $12   ; 
- D 0 - I - 0x00919B 02:918B: 12        .byte $12   ; 
- D 0 - I - 0x00919C 02:918C: 12        .byte $12   ; 
- D 0 - I - 0x00919D 02:918D: 12        .byte $12   ; 
- D 0 - I - 0x00919E 02:918E: 63        .byte $63   ; 
- D 0 - I - 0x00919F 02:918F: 77        .byte $77   ; 
- D 0 - I - 0x0091A0 02:9190: 77        .byte $77   ; 
- D 0 - I - 0x0091A1 02:9191: E6        .byte $E6   ; 
off_9192_0D:
- D 0 - I - 0x0091A2 02:9192: 12        .byte $12   ; 
- D 0 - I - 0x0091A3 02:9193: 12        .byte $12   ; 
- D 0 - I - 0x0091A4 02:9194: 12        .byte $12   ; 
- D 0 - I - 0x0091A5 02:9195: 12        .byte $12   ; 
- D 0 - I - 0x0091A6 02:9196: 63        .byte $63   ; 
- D 0 - I - 0x0091A7 02:9197: 77        .byte $77   ; 
- D 0 - I - 0x0091A8 02:9198: 77        .byte $77   ; 
- D 0 - I - 0x0091A9 02:9199: 77        .byte $77   ; 
- D 0 - I - 0x0091AA 02:919A: 77        .byte $77   ; 
- D 0 - I - 0x0091AB 02:919B: E8        .byte $E8   ; 
- D 0 - I - 0x0091AC 02:919C: 12        .byte $12   ; 
- D 0 - I - 0x0091AD 02:919D: 12        .byte $12   ; 
- D 0 - I - 0x0091AE 02:919E: 12        .byte $12   ; 
- D 0 - I - 0x0091AF 02:919F: 12        .byte $12   ; 
- D 0 - I - 0x0091B0 02:91A0: 12        .byte $12   ; 
- D 0 - I - 0x0091B1 02:91A1: 12        .byte $12   ; 
- D 0 - I - 0x0091B2 02:91A2: 12        .byte $12   ; 
- D 0 - I - 0x0091B3 02:91A3: 8B        .byte $8B   ; 
- D 0 - I - 0x0091B4 02:91A4: 00        .byte $00   ; 
- D 0 - I - 0x0091B5 02:91A5: 00        .byte $00   ; 
- D 0 - I - 0x0091B6 02:91A6: 00        .byte $00   ; 
- D 0 - I - 0x0091B7 02:91A7: 00        .byte $00   ; 
- D 0 - I - 0x0091B8 02:91A8: 00        .byte $00   ; 
- D 0 - I - 0x0091B9 02:91A9: 00        .byte $00   ; 
- - - - - - 0x0091BA 02:91AA: 00        .byte $00   ; 
- - - - - - 0x0091BB 02:91AB: 00        .byte $00   ; 
- - - - - - 0x0091BC 02:91AC: 00        .byte $00   ; 
- - - - - - 0x0091BD 02:91AD: 00        .byte $00   ; 
- - - - - - 0x0091BE 02:91AE: 00        .byte $00   ; 
- - - - - - 0x0091BF 02:91AF: 00        .byte $00   ; 
- - - - - - 0x0091C0 02:91B0: 00        .byte $00   ; 
- - - - - - 0x0091C1 02:91B1: 00        .byte $00   ; 
off_91B2_0E:
- - - - - - 0x0091C2 02:91B2: 00        .byte $00   ; 
- - - - - - 0x0091C3 02:91B3: 00        .byte $00   ; 
- - - - - - 0x0091C4 02:91B4: 00        .byte $00   ; 
- - - - - - 0x0091C5 02:91B5: 00        .byte $00   ; 
- - - - - - 0x0091C6 02:91B6: 00        .byte $00   ; 
- - - - - - 0x0091C7 02:91B7: 00        .byte $00   ; 
- - - - - - 0x0091C8 02:91B8: 00        .byte $00   ; 
- - - - - - 0x0091C9 02:91B9: 00        .byte $00   ; 
- - - - - - 0x0091CA 02:91BA: 00        .byte $00   ; 
- D 0 - I - 0x0091CB 02:91BB: 00        .byte $00   ; 
- D 0 - I - 0x0091CC 02:91BC: 00        .byte $00   ; 
- D 0 - I - 0x0091CD 02:91BD: 00        .byte $00   ; 
- D 0 - I - 0x0091CE 02:91BE: 00        .byte $00   ; 
- D 0 - I - 0x0091CF 02:91BF: 00        .byte $00   ; 
- D 0 - I - 0x0091D0 02:91C0: 00        .byte $00   ; 
- D 0 - I - 0x0091D1 02:91C1: 00        .byte $00   ; 
- D 0 - I - 0x0091D2 02:91C2: 00        .byte $00   ; 
- D 0 - I - 0x0091D3 02:91C3: 14        .byte $14   ; 
- D 0 - I - 0x0091D4 02:91C4: 00        .byte $00   ; 
- D 0 - I - 0x0091D5 02:91C5: 00        .byte $00   ; 
- D 0 - I - 0x0091D6 02:91C6: 00        .byte $00   ; 
- D 0 - I - 0x0091D7 02:91C7: 00        .byte $00   ; 
- D 0 - I - 0x0091D8 02:91C8: 00        .byte $00   ; 
- D 0 - I - 0x0091D9 02:91C9: 00        .byte $00   ; 
- D 0 - I - 0x0091DA 02:91CA: 44        .byte $44   ; 
- D 0 - I - 0x0091DB 02:91CB: 5C        .byte $5C   ; 
- D 0 - I - 0x0091DC 02:91CC: 5D        .byte $5D   ; 
- D 0 - I - 0x0091DD 02:91CD: 46        .byte $46   ; 
- D 0 - I - 0x0091DE 02:91CE: 00        .byte $00   ; 
- D 0 - I - 0x0091DF 02:91CF: 15        .byte $15   ; 
- D 0 - I - 0x0091E0 02:91D0: 00        .byte $00   ; 
- D 0 - I - 0x0091E1 02:91D1: 00        .byte $00   ; 
off_91D2_10:
off_91D2_11:
off_91D2_12:
off_91D2_13:
off_91D2_14:
off_91D2_15:
off_91D2_16:
off_91D2_17:
off_91D2_18:
off_91D2_19:
off_91D2_1A:
off_91D2_1B:
off_91D2_1C:
off_91D2_1D:
- - - - - - 0x0091E2 02:91D2: 02        .byte $02   ; 
- - - - - - 0x0091E3 02:91D3: 02        .byte $02   ; 
- - - - - - 0x0091E4 02:91D4: 02        .byte $02   ; 
- - - - - - 0x0091E5 02:91D5: 02        .byte $02   ; 
- D 0 - I - 0x0091E6 02:91D6: 02        .byte $02   ; 
- D 0 - I - 0x0091E7 02:91D7: 02        .byte $02   ; 
- - - - - - 0x0091E8 02:91D8: 02        .byte $02   ; 
- - - - - - 0x0091E9 02:91D9: 02        .byte $02   ; 
- - - - - - 0x0091EA 02:91DA: 02        .byte $02   ; 
- - - - - - 0x0091EB 02:91DB: 02        .byte $02   ; 
- - - - - - 0x0091EC 02:91DC: 02        .byte $02   ; 
- - - - - - 0x0091ED 02:91DD: 02        .byte $02   ; 
- - - - - - 0x0091EE 02:91DE: 02        .byte $02   ; 
- - - - - - 0x0091EF 02:91DF: 02        .byte $02   ; 
- - - - - - 0x0091F0 02:91E0: 02        .byte $02   ; 
- - - - - - 0x0091F1 02:91E1: 02        .byte $02   ; 
- - - - - - 0x0091F2 02:91E2: 02        .byte $02   ; 
- - - - - - 0x0091F3 02:91E3: 02        .byte $02   ; 
- - - - - - 0x0091F4 02:91E4: 02        .byte $02   ; 
- - - - - - 0x0091F5 02:91E5: 02        .byte $02   ; 
- - - - - - 0x0091F6 02:91E6: 02        .byte $02   ; 
- - - - - - 0x0091F7 02:91E7: 02        .byte $02   ; 
- - - - - - 0x0091F8 02:91E8: 02        .byte $02   ; 
- - - - - - 0x0091F9 02:91E9: 02        .byte $02   ; 
- - - - - - 0x0091FA 02:91EA: 02        .byte $02   ; 
- - - - - - 0x0091FB 02:91EB: 02        .byte $02   ; 
- - - - - - 0x0091FC 02:91EC: 02        .byte $02   ; 
- - - - - - 0x0091FD 02:91ED: 02        .byte $02   ; 
- - - - - - 0x0091FE 02:91EE: 02        .byte $02   ; 
- - - - - - 0x0091FF 02:91EF: 02        .byte $02   ; 
- - - - - - 0x009200 02:91F0: 02        .byte $02   ; 
- - - - - - 0x009201 02:91F1: 02        .byte $02   ; 
off_91F2_04:
- - - - - - 0x009202 02:91F2: 00        .byte $00   ; 
- - - - - - 0x009203 02:91F3: 00        .byte $00   ; 
- D 0 - I - 0x009204 02:91F4: 00        .byte $00   ; 
- D 0 - I - 0x009205 02:91F5: 00        .byte $00   ; 
- D 0 - I - 0x009206 02:91F6: 00        .byte $00   ; 
- D 0 - I - 0x009207 02:91F7: 50        .byte $50   ; 
- D 0 - I - 0x009208 02:91F8: 50        .byte $50   ; 
- D 0 - I - 0x009209 02:91F9: 50        .byte $50   ; 
- - - - - - 0x00920A 02:91FA: 00        .byte $00   ; 
- - - - - - 0x00920B 02:91FB: 00        .byte $00   ; 
- D 0 - I - 0x00920C 02:91FC: 00        .byte $00   ; 
- D 0 - I - 0x00920D 02:91FD: 00        .byte $00   ; 
- D 0 - I - 0x00920E 02:91FE: 00        .byte $00   ; 
- D 0 - I - 0x00920F 02:91FF: 55        .byte $55   ; 
- D 0 - I - 0x009210 02:9200: 55        .byte $55   ; 
- D 0 - I - 0x009211 02:9201: 55        .byte $55   ; 
- - - - - - 0x009212 02:9202: 00        .byte $00   ; 
- - - - - - 0x009213 02:9203: 00        .byte $00   ; 
- D 0 - I - 0x009214 02:9204: 00        .byte $00   ; 
- D 0 - I - 0x009215 02:9205: 00        .byte $00   ; 
- D 0 - I - 0x009216 02:9206: 00        .byte $00   ; 
- D 0 - I - 0x009217 02:9207: 00        .byte $00   ; 
- D 0 - I - 0x009218 02:9208: 55        .byte $55   ; 
- D 0 - I - 0x009219 02:9209: 55        .byte $55   ; 
- - - - - - 0x00921A 02:920A: 00        .byte $00   ; 
- - - - - - 0x00921B 02:920B: 00        .byte $00   ; 
- D 0 - I - 0x00921C 02:920C: 00        .byte $00   ; 
- D 0 - I - 0x00921D 02:920D: 00        .byte $00   ; 
- D 0 - I - 0x00921E 02:920E: 00        .byte $00   ; 
- D 0 - I - 0x00921F 02:920F: 00        .byte $00   ; 
- D 0 - I - 0x009220 02:9210: 55        .byte $55   ; 
- D 0 - I - 0x009221 02:9211: 01        .byte $01   ; 
- - - - - - 0x009222 02:9212: 00        .byte $00   ; 
- - - - - - 0x009223 02:9213: 00        .byte $00   ; 
- - - - - - 0x009224 02:9214: 00        .byte $00   ; 
- - - - - - 0x009225 02:9215: 00        .byte $00   ; 
- - - - - - 0x009226 02:9216: 00        .byte $00   ; 
- - - - - - 0x009227 02:9217: 00        .byte $00   ; 
- - - - - - 0x009228 02:9218: 00        .byte $00   ; 
- - - - - - 0x009229 02:9219: 00        .byte $00   ; 
- - - - - - 0x00922A 02:921A: 00        .byte $00   ; 
- - - - - - 0x00922B 02:921B: 00        .byte $00   ; 
- - - - - - 0x00922C 02:921C: 00        .byte $00   ; 
off_921D_00:
- - - - - - 0x00922D 02:921D: 00        .byte $00   ; 
- - - - - - 0x00922E 02:921E: 00        .byte $00   ; 
- - - - - - 0x00922F 02:921F: 00        .byte $00   ; 
- - - - - - 0x009230 02:9220: 00        .byte $00   ; 
- - - - - - 0x009231 02:9221: 00        .byte $00   ; 
- - - - - - 0x009232 02:9222: 00        .byte $00   ; 
- - - - - - 0x009233 02:9223: 00        .byte $00   ; 
- - - - - - 0x009234 02:9224: 00        .byte $00   ; 
- - - - - - 0x009235 02:9225: 00        .byte $00   ; 
- - - - - - 0x009236 02:9226: 00        .byte $00   ; 
- D 0 - I - 0x009237 02:9227: 00        .byte $00   ; 
- D 0 - I - 0x009238 02:9228: 00        .byte $00   ; 
- D 0 - I - 0x009239 02:9229: 00        .byte $00   ; 
- D 0 - I - 0x00923A 02:922A: 00        .byte $00   ; 
- D 0 - I - 0x00923B 02:922B: 00        .byte $00   ; 
- D 0 - I - 0x00923C 02:922C: 00        .byte $00   ; 
- - - - - - 0x00923D 02:922D: 00        .byte $00   ; 
- - - - - - 0x00923E 02:922E: 00        .byte $00   ; 
- D 0 - I - 0x00923F 02:922F: 00        .byte $00   ; 
- D 0 - I - 0x009240 02:9230: 00        .byte $00   ; 
- D 0 - I - 0x009241 02:9231: 00        .byte $00   ; 
- D 0 - I - 0x009242 02:9232: 44        .byte $44   ; 
- D 0 - I - 0x009243 02:9233: 55        .byte $55   ; 
- D 0 - I - 0x009244 02:9234: 55        .byte $55   ; 
- - - - - - 0x009245 02:9235: 00        .byte $00   ; 
- - - - - - 0x009246 02:9236: 00        .byte $00   ; 
- D 0 - I - 0x009247 02:9237: 00        .byte $00   ; 
- D 0 - I - 0x009248 02:9238: 00        .byte $00   ; 
- D 0 - I - 0x009249 02:9239: 00        .byte $00   ; 
- D 0 - I - 0x00924A 02:923A: 54        .byte $54   ; 
- D 0 - I - 0x00924B 02:923B: 55        .byte $55   ; 
- D 0 - I - 0x00924C 02:923C: 55        .byte $55   ; 
- - - - - - 0x00924D 02:923D: 00        .byte $00   ; 
- - - - - - 0x00924E 02:923E: 00        .byte $00   ; 
- D 0 - I - 0x00924F 02:923F: 00        .byte $00   ; 
- D 0 - I - 0x009250 02:9240: 00        .byte $00   ; 
- D 0 - I - 0x009251 02:9241: 00        .byte $00   ; 
- D 0 - I - 0x009252 02:9242: 55        .byte $55   ; 
- D 0 - I - 0x009253 02:9243: 55        .byte $55   ; 
- D 0 - I - 0x009254 02:9244: 01        .byte $01   ; 
- - - - - - 0x009255 02:9245: 00        .byte $00   ; 
- - - - - - 0x009256 02:9246: 00        .byte $00   ; 
- D 0 - I - 0x009257 02:9247: 00        .byte $00   ; 
- D 0 - I - 0x009258 02:9248: 00        .byte $00   ; 
- D 0 - I - 0x009259 02:9249: 00        .byte $00   ; 
- D 0 - I - 0x00925A 02:924A: 00        .byte $00   ; 
off_924B_0A:
- D 0 - I - 0x00925B 02:924B: 00        .byte $00   ; 
- D 0 - I - 0x00925C 02:924C: 00        .byte $00   ; 
- - - - - - 0x00925D 02:924D: 00        .byte $00   ; 
- - - - - - 0x00925E 02:924E: 00        .byte $00   ; 
- D 0 - I - 0x00925F 02:924F: 00        .byte $00   ; 
- D 0 - I - 0x009260 02:9250: 00        .byte $00   ; 
- D 0 - I - 0x009261 02:9251: 00        .byte $00   ; 
- D 0 - I - 0x009262 02:9252: 00        .byte $00   ; 
- D 0 - I - 0x009263 02:9253: 00        .byte $00   ; 
- D 0 - I - 0x009264 02:9254: 00        .byte $00   ; 
- D 0 - I - 0x009265 02:9255: 00        .byte $00   ; 
- D 0 - I - 0x009266 02:9256: 00        .byte $00   ; 
- D 0 - I - 0x009267 02:9257: 00        .byte $00   ; 
- D 0 - I - 0x009268 02:9258: 00        .byte $00   ; 
- D 0 - I - 0x009269 02:9259: 00        .byte $00   ; 
- D 0 - I - 0x00926A 02:925A: 00        .byte $00   ; 
- D 0 - I - 0x00926B 02:925B: 00        .byte $00   ; 
- D 0 - I - 0x00926C 02:925C: 00        .byte $00   ; 
- D 0 - I - 0x00926D 02:925D: 27        .byte $27   ; 
- D 0 - I - 0x00926E 02:925E: 1C        .byte $1C   ; 
- D 0 - I - 0x00926F 02:925F: 00        .byte $00   ; 
- D 0 - I - 0x009270 02:9260: 00        .byte $00   ; 
- D 0 - I - 0x009271 02:9261: 40        .byte $40   ; 
- D 0 - I - 0x009272 02:9262: 54        .byte $54   ; 
- D 0 - I - 0x009273 02:9263: 7E        .byte $7E   ; 
- D 0 - I - 0x009274 02:9264: 6C        .byte $6C   ; 
- D 0 - I - 0x009275 02:9265: 6C        .byte $6C   ; 
- D 0 - I - 0x009276 02:9266: 6F        .byte $6F   ; 
- D 0 - I - 0x009277 02:9267: 6C        .byte $6C   ; 
- D 0 - I - 0x009278 02:9268: 7C        .byte $7C   ; 
off_9269_02:
- D 0 - I - 0x009279 02:9269: 54        .byte $54   ; 
- D 0 - I - 0x00927A 02:926A: 54        .byte $54   ; 
- D 0 - I - 0x00927B 02:926B: 7E        .byte $7E   ; 
- D 0 - I - 0x00927C 02:926C: 6F        .byte $6F   ; 
- D 0 - I - 0x00927D 02:926D: 6C        .byte $6C   ; 
- D 0 - I - 0x00927E 02:926E: 66        .byte $66   ; 
- D 0 - I - 0x00927F 02:926F: 15        .byte $15   ; 
- D 0 - I - 0x009280 02:9270: 00        .byte $00   ; 
- D 0 - I - 0x009281 02:9271: 00        .byte $00   ; 
- D 0 - I - 0x009282 02:9272: 00        .byte $00   ; 
- D 0 - I - 0x009283 02:9273: 40        .byte $40   ; 
- D 0 - I - 0x009284 02:9274: 54        .byte $54   ; 
- D 0 - I - 0x009285 02:9275: 7E        .byte $7E   ; 
- D 0 - I - 0x009286 02:9276: 6C        .byte $6C   ; 
- D 0 - I - 0x009287 02:9277: 6C        .byte $6C   ; 
- D 0 - I - 0x009288 02:9278: 6C        .byte $6C   ; 
- D 0 - I - 0x009289 02:9279: 6C        .byte $6C   ; 
- D 0 - I - 0x00928A 02:927A: 68        .byte $68   ; 
- D 0 - I - 0x00928B 02:927B: 4E        .byte $4E   ; 
- D 0 - I - 0x00928C 02:927C: 14        .byte $14   ; 
- D 0 - I - 0x00928D 02:927D: 00        .byte $00   ; 
- D 0 - I - 0x00928E 02:927E: 00        .byte $00   ; 
- D 0 - I - 0x00928F 02:927F: 00        .byte $00   ; 
- D 0 - I - 0x009290 02:9280: 00        .byte $00   ; 
- D 0 - I - 0x009291 02:9281: 14        .byte $14   ; 
- D 0 - I - 0x009292 02:9282: 00        .byte $00   ; 
- D 0 - I - 0x009293 02:9283: 00        .byte $00   ; 
- D 0 - I - 0x009294 02:9284: 14        .byte $14   ; 
- D 0 - I - 0x009295 02:9285: 00        .byte $00   ; 
off_9286_07:
- D 0 - I - 0x009296 02:9286: 00        .byte $00   ; 
- D 0 - I - 0x009297 02:9287: 40        .byte $40   ; 
- D 0 - I - 0x009298 02:9288: 50        .byte $50   ; 
- D 0 - I - 0x009299 02:9289: 10        .byte $10   ; 
- D 0 - I - 0x00929A 02:928A: 00        .byte $00   ; 
- D 0 - I - 0x00929B 02:928B: 00        .byte $00   ; 
- - - - - - 0x00929C 02:928C: 00        .byte $00   ; 
- - - - - - 0x00929D 02:928D: 00        .byte $00   ; 
- D 0 - I - 0x00929E 02:928E: 55        .byte $55   ; 
- D 0 - I - 0x00929F 02:928F: 54        .byte $54   ; 
- D 0 - I - 0x0092A0 02:9290: 55        .byte $55   ; 
- D 0 - I - 0x0092A1 02:9291: 11        .byte $11   ; 
- D 0 - I - 0x0092A2 02:9292: 00        .byte $00   ; 
- D 0 - I - 0x0092A3 02:9293: 00        .byte $00   ; 
- - - - - - 0x0092A4 02:9294: 00        .byte $00   ; 
- - - - - - 0x0092A5 02:9295: 00        .byte $00   ; 
- D 0 - I - 0x0092A6 02:9296: 55        .byte $55   ; 
- D 0 - I - 0x0092A7 02:9297: 55        .byte $55   ; 
- D 0 - I - 0x0092A8 02:9298: 55        .byte $55   ; 
- D 0 - I - 0x0092A9 02:9299: 01        .byte $01   ; 
- D 0 - I - 0x0092AA 02:929A: 00        .byte $00   ; 
- D 0 - I - 0x0092AB 02:929B: 00        .byte $00   ; 
- - - - - - 0x0092AC 02:929C: 00        .byte $00   ; 
- - - - - - 0x0092AD 02:929D: 00        .byte $00   ; 
- D 0 - I - 0x0092AE 02:929E: 04        .byte $04   ; 
- D 0 - I - 0x0092AF 02:929F: 55        .byte $55   ; 
- D 0 - I - 0x0092B0 02:92A0: 11        .byte $11   ; 
- D 0 - I - 0x0092B1 02:92A1: 00        .byte $00   ; 
- D 0 - I - 0x0092B2 02:92A2: 00        .byte $00   ; 
- D 0 - I - 0x0092B3 02:92A3: 00        .byte $00   ; 
- - - - - - 0x0092B4 02:92A4: 00        .byte $00   ; 
- - - - - - 0x0092B5 02:92A5: 00        .byte $00   ; 
- - - - - - 0x0092B6 02:92A6: 00        .byte $00   ; 
- - - - - - 0x0092B7 02:92A7: 00        .byte $00   ; 
- - - - - - 0x0092B8 02:92A8: 00        .byte $00   ; 
- - - - - - 0x0092B9 02:92A9: 00        .byte $00   ; 
- - - - - - 0x0092BA 02:92AA: 00        .byte $00   ; 
- - - - - - 0x0092BB 02:92AB: 00        .byte $00   ; 
- - - - - - 0x0092BC 02:92AC: 00        .byte $00   ; 
- - - - - - 0x0092BD 02:92AD: 00        .byte $00   ; 
- - - - - - 0x0092BE 02:92AE: 00        .byte $00   ; 
- - - - - - 0x0092BF 02:92AF: 00        .byte $00   ; 
- - - - - - 0x0092C0 02:92B0: 00        .byte $00   ; 
- - - - - - 0x0092C1 02:92B1: 00        .byte $00   ; 
- - - - - - 0x0092C2 02:92B2: 00        .byte $00   ; 
- - - - - - 0x0092C3 02:92B3: 00        .byte $00   ; 
- - - - - - 0x0092C4 02:92B4: 00        .byte $00   ; 
- - - - - - 0x0092C5 02:92B5: 00        .byte $00   ; 
- - - - - - 0x0092C6 02:92B6: 00        .byte $00   ; 
- - - - - - 0x0092C7 02:92B7: 00        .byte $00   ; 
- - - - - - 0x0092C8 02:92B8: 00        .byte $00   ; 
- - - - - - 0x0092C9 02:92B9: 00        .byte $00   ; 
- - - - - - 0x0092CA 02:92BA: 00        .byte $00   ; 
- - - - - - 0x0092CB 02:92BB: 00        .byte $00   ; 
- - - - - - 0x0092CC 02:92BC: 00        .byte $00   ; 
- - - - - - 0x0092CD 02:92BD: 00        .byte $00   ; 
- - - - - - 0x0092CE 02:92BE: 00        .byte $00   ; 
- - - - - - 0x0092CF 02:92BF: 00        .byte $00   ; 
- - - - - - 0x0092D0 02:92C0: 00        .byte $00   ; 
- - - - - - 0x0092D1 02:92C1: 00        .byte $00   ; 
- - - - - - 0x0092D2 02:92C2: 00        .byte $00   ; 
- - - - - - 0x0092D3 02:92C3: 00        .byte $00   ; 
- - - - - - 0x0092D4 02:92C4: 00        .byte $00   ; 
- - - - - - 0x0092D5 02:92C5: 00        .byte $00   ; 
off_92C6_0E:
- D 0 - I - 0x0092D6 02:92C6: 00        .byte $00   ; 
- D 0 - I - 0x0092D7 02:92C7: 00        .byte $00   ; 
- D 0 - I - 0x0092D8 02:92C8: 00        .byte $00   ; 
- D 0 - I - 0x0092D9 02:92C9: 00        .byte $00   ; 
- D 0 - I - 0x0092DA 02:92CA: 00        .byte $00   ; 
- D 0 - I - 0x0092DB 02:92CB: 00        .byte $00   ; 
- D 0 - I - 0x0092DC 02:92CC: 00        .byte $00   ; 
- D 0 - I - 0x0092DD 02:92CD: 14        .byte $14   ; 
- D 0 - I - 0x0092DE 02:92CE: 00        .byte $00   ; 
- D 0 - I - 0x0092DF 02:92CF: 00        .byte $00   ; 
- D 0 - I - 0x0092E0 02:92D0: 00        .byte $00   ; 
- D 0 - I - 0x0092E1 02:92D1: 14        .byte $14   ; 
- D 0 - I - 0x0092E2 02:92D2: 00        .byte $00   ; 
- D 0 - I - 0x0092E3 02:92D3: 00        .byte $00   ; 
- D 0 - I - 0x0092E4 02:92D4: 00        .byte $00   ; 
- D 0 - I - 0x0092E5 02:92D5: 00        .byte $00   ; 
- D 0 - I - 0x0092E6 02:92D6: 15        .byte $15   ; 
- D 0 - I - 0x0092E7 02:92D7: 00        .byte $00   ; 
- D 0 - I - 0x0092E8 02:92D8: 00        .byte $00   ; 
- D 0 - I - 0x0092E9 02:92D9: 00        .byte $00   ; 
- D 0 - I - 0x0092EA 02:92DA: 00        .byte $00   ; 
- D 0 - I - 0x0092EB 02:92DB: 00        .byte $00   ; 
- D 0 - I - 0x0092EC 02:92DC: 60        .byte $60   ; 
- D 0 - I - 0x0092ED 02:92DD: 6C        .byte $6C   ; 
- D 0 - I - 0x0092EE 02:92DE: 6F        .byte $6F   ; 
- D 0 - I - 0x0092EF 02:92DF: 6C        .byte $6C   ; 
- D 0 - I - 0x0092F0 02:92E0: 6C        .byte $6C   ; 
- D 0 - I - 0x0092F1 02:92E1: 66        .byte $66   ; 
- D 0 - I - 0x0092F2 02:92E2: 00        .byte $00   ; 
- D 0 - I - 0x0092F3 02:92E3: 00        .byte $00   ; 
- D 0 - I - 0x0092F4 02:92E4: 00        .byte $00   ; 
- D 0 - I - 0x0092F5 02:92E5: 00        .byte $00   ; 
off_92E6_00:
- D 0 - I - 0x0092F6 02:92E6: 1C        .byte $1C   ; 
- D 0 - I - 0x0092F7 02:92E7: 00        .byte $00   ; 
- D 0 - I - 0x0092F8 02:92E8: 00        .byte $00   ; 
- D 0 - I - 0x0092F9 02:92E9: 00        .byte $00   ; 
- D 0 - I - 0x0092FA 02:92EA: 00        .byte $00   ; 
- D 0 - I - 0x0092FB 02:92EB: 00        .byte $00   ; 
- D 0 - I - 0x0092FC 02:92EC: 00        .byte $00   ; 
- D 0 - I - 0x0092FD 02:92ED: 00        .byte $00   ; 
- D 0 - I - 0x0092FE 02:92EE: 00        .byte $00   ; 
- D 0 - I - 0x0092FF 02:92EF: 00        .byte $00   ; 
- D 0 - I - 0x009300 02:92F0: 60        .byte $60   ; 
- D 0 - I - 0x009301 02:92F1: 6C        .byte $6C   ; 
- D 0 - I - 0x009302 02:92F2: 6C        .byte $6C   ; 
- D 0 - I - 0x009303 02:92F3: 6C        .byte $6C   ; 
- D 0 - I - 0x009304 02:92F4: 6C        .byte $6C   ; 
- D 0 - I - 0x009305 02:92F5: 6C        .byte $6C   ; 
- D 0 - I - 0x009306 02:92F6: 6C        .byte $6C   ; 
- D 0 - I - 0x009307 02:92F7: 6C        .byte $6C   ; 
- D 0 - I - 0x009308 02:92F8: 6C        .byte $6C   ; 
- D 0 - I - 0x009309 02:92F9: 6C        .byte $6C   ; 
- D 0 - I - 0x00930A 02:92FA: 6C        .byte $6C   ; 
- D 0 - I - 0x00930B 02:92FB: 66        .byte $66   ; 
- D 0 - I - 0x00930C 02:92FC: 00        .byte $00   ; 
- D 0 - I - 0x00930D 02:92FD: 00        .byte $00   ; 
- D 0 - I - 0x00930E 02:92FE: 00        .byte $00   ; 
- D 0 - I - 0x00930F 02:92FF: 00        .byte $00   ; 
- D 0 - I - 0x009310 02:9300: 00        .byte $00   ; 
- D 0 - I - 0x009311 02:9301: 00        .byte $00   ; 
- D 0 - I - 0x009312 02:9302: 00        .byte $00   ; 
- D 0 - I - 0x009313 02:9303: 00        .byte $00   ; 
- D 0 - I - 0x009314 02:9304: 00        .byte $00   ; 
- D 0 - I - 0x009315 02:9305: 00        .byte $00   ; 
off_9306_01:
- D 0 - I - 0x009316 02:9306: 1C        .byte $1C   ; 
- D 0 - I - 0x009317 02:9307: 00        .byte $00   ; 
- D 0 - I - 0x009318 02:9308: 00        .byte $00   ; 
- D 0 - I - 0x009319 02:9309: 00        .byte $00   ; 
- D 0 - I - 0x00931A 02:930A: 00        .byte $00   ; 
- D 0 - I - 0x00931B 02:930B: 00        .byte $00   ; 
- D 0 - I - 0x00931C 02:930C: 00        .byte $00   ; 
- D 0 - I - 0x00931D 02:930D: 00        .byte $00   ; 
- D 0 - I - 0x00931E 02:930E: 00        .byte $00   ; 
- D 0 - I - 0x00931F 02:930F: 00        .byte $00   ; 
- D 0 - I - 0x009320 02:9310: 44        .byte $44   ; 
- D 0 - I - 0x009321 02:9311: 5A        .byte $5A   ; 
- D 0 - I - 0x009322 02:9312: 5A        .byte $5A   ; 
- D 0 - I - 0x009323 02:9313: 5A        .byte $5A   ; 
- D 0 - I - 0x009324 02:9314: 7A        .byte $7A   ; 
- D 0 - I - 0x009325 02:9315: 6C        .byte $6C   ; 
- D 0 - I - 0x009326 02:9316: 6C        .byte $6C   ; 
- D 0 - I - 0x009327 02:9317: 6C        .byte $6C   ; 
- D 0 - I - 0x009328 02:9318: 6F        .byte $6F   ; 
- D 0 - I - 0x009329 02:9319: 6C        .byte $6C   ; 
- D 0 - I - 0x00932A 02:931A: 6C        .byte $6C   ; 
- D 0 - I - 0x00932B 02:931B: 66        .byte $66   ; 
- D 0 - I - 0x00932C 02:931C: 4A        .byte $4A   ; 
- D 0 - I - 0x00932D 02:931D: 00        .byte $00   ; 
- D 0 - I - 0x00932E 02:931E: 00        .byte $00   ; 
- D 0 - I - 0x00932F 02:931F: 00        .byte $00   ; 
- D 0 - I - 0x009330 02:9320: 00        .byte $00   ; 
- D 0 - I - 0x009331 02:9321: 00        .byte $00   ; 
- D 0 - I - 0x009332 02:9322: 00        .byte $00   ; 
- D 0 - I - 0x009333 02:9323: 00        .byte $00   ; 
- D 0 - I - 0x009334 02:9324: 00        .byte $00   ; 
- D 0 - I - 0x009335 02:9325: 00        .byte $00   ; 
off_9326_02:
- D 0 - I - 0x009336 02:9326: 51        .byte $51   ; 
- D 0 - I - 0x009337 02:9327: 42        .byte $42   ; 
- D 0 - I - 0x009338 02:9328: 14        .byte $14   ; 
- D 0 - I - 0x009339 02:9329: 00        .byte $00   ; 
- D 0 - I - 0x00933A 02:932A: 00        .byte $00   ; 
- D 0 - I - 0x00933B 02:932B: 00        .byte $00   ; 
- D 0 - I - 0x00933C 02:932C: 00        .byte $00   ; 
- D 0 - I - 0x00933D 02:932D: 00        .byte $00   ; 
- D 0 - I - 0x00933E 02:932E: 00        .byte $00   ; 
- D 0 - I - 0x00933F 02:932F: 00        .byte $00   ; 
- D 0 - I - 0x009340 02:9330: 00        .byte $00   ; 
- D 0 - I - 0x009341 02:9331: 00        .byte $00   ; 
- D 0 - I - 0x009342 02:9332: 00        .byte $00   ; 
- D 0 - I - 0x009343 02:9333: 4C        .byte $4C   ; 
- D 0 - I - 0x009344 02:9334: 60        .byte $60   ; 
- D 0 - I - 0x009345 02:9335: 6E        .byte $6E   ; 
- D 0 - I - 0x009346 02:9336: 6C        .byte $6C   ; 
- D 0 - I - 0x009347 02:9337: 6C        .byte $6C   ; 
- D 0 - I - 0x009348 02:9338: 6C        .byte $6C   ; 
- D 0 - I - 0x009349 02:9339: 6C        .byte $6C   ; 
- D 0 - I - 0x00934A 02:933A: 6C        .byte $6C   ; 
- D 0 - I - 0x00934B 02:933B: 7C        .byte $7C   ; 
- D 0 - I - 0x00934C 02:933C: 54        .byte $54   ; 
- D 0 - I - 0x00934D 02:933D: 42        .byte $42   ; 
- D 0 - I - 0x00934E 02:933E: 14        .byte $14   ; 
- D 0 - I - 0x00934F 02:933F: 00        .byte $00   ; 
- D 0 - I - 0x009350 02:9340: 00        .byte $00   ; 
- D 0 - I - 0x009351 02:9341: 00        .byte $00   ; 
- D 0 - I - 0x009352 02:9342: 00        .byte $00   ; 
- D 0 - I - 0x009353 02:9343: 00        .byte $00   ; 
- D 0 - I - 0x009354 02:9344: 15        .byte $15   ; 
- D 0 - I - 0x009355 02:9345: 00        .byte $00   ; 
off_9346_03:
- D 0 - I - 0x009356 02:9346: 75        .byte $75   ; 
- D 0 - I - 0x009357 02:9347: 67        .byte $67   ; 
- D 0 - I - 0x009358 02:9348: 4B        .byte $4B   ; 
- D 0 - I - 0x009359 02:9349: 04        .byte $04   ; 
- D 0 - I - 0x00935A 02:934A: 04        .byte $04   ; 
- D 0 - I - 0x00935B 02:934B: 04        .byte $04   ; 
- D 0 - I - 0x00935C 02:934C: 04        .byte $04   ; 
- D 0 - I - 0x00935D 02:934D: 04        .byte $04   ; 
- D 0 - I - 0x00935E 02:934E: 04        .byte $04   ; 
- D 0 - I - 0x00935F 02:934F: 04        .byte $04   ; 
- D 0 - I - 0x009360 02:9350: 04        .byte $04   ; 
- D 0 - I - 0x009361 02:9351: 04        .byte $04   ; 
- D 0 - I - 0x009362 02:9352: 04        .byte $04   ; 
- D 0 - I - 0x009363 02:9353: 04        .byte $04   ; 
- D 0 - I - 0x009364 02:9354: 45        .byte $45   ; 
- D 0 - I - 0x009365 02:9355: 5B        .byte $5B   ; 
- D 0 - I - 0x009366 02:9356: 5B        .byte $5B   ; 
- D 0 - I - 0x009367 02:9357: 5B        .byte $5B   ; 
- D 0 - I - 0x009368 02:9358: 7B        .byte $7B   ; 
- D 0 - I - 0x009369 02:9359: 6D        .byte $6D   ; 
- D 0 - I - 0x00936A 02:935A: 6D        .byte $6D   ; 
- D 0 - I - 0x00936B 02:935B: 70        .byte $70   ; 
- D 0 - I - 0x00936C 02:935C: 6D        .byte $6D   ; 
- D 0 - I - 0x00936D 02:935D: 67        .byte $67   ; 
off_935E_10:
- D 0 - I - 0x00936E 02:935E: 04        .byte $04   ; 
- D 0 - I - 0x00936F 02:935F: 04        .byte $04   ; 
- D 0 - I - 0x009370 02:9360: 04        .byte $04   ; 
- D 0 - I - 0x009371 02:9361: 04        .byte $04   ; 
- D 0 - I - 0x009372 02:9362: 04        .byte $04   ; 
- D 0 - I - 0x009373 02:9363: 04        .byte $04   ; 
- D 0 - I - 0x009374 02:9364: 04        .byte $04   ; 
- D 0 - I - 0x009375 02:9365: 04        .byte $04   ; 
- - - - - - 0x009376 02:9366: 04        .byte $04   ; 
- D 0 - I - 0x009377 02:9367: 04        .byte $04   ; 
- D 0 - I - 0x009378 02:9368: 04        .byte $04   ; 
- D 0 - I - 0x009379 02:9369: 04        .byte $04   ; 
- D 0 - I - 0x00937A 02:936A: 04        .byte $04   ; 
- D 0 - I - 0x00937B 02:936B: D0        .byte $D0   ; 
- D 0 - I - 0x00937C 02:936C: D1        .byte $D1   ; 
- D 0 - I - 0x00937D 02:936D: D2        .byte $D2   ; 
- D 0 - I - 0x00937E 02:936E: D3        .byte $D3   ; 
- D 0 - I - 0x00937F 02:936F: D4        .byte $D4   ; 
- D 0 - I - 0x009380 02:9370: 32        .byte $32   ; 
- D 0 - I - 0x009381 02:9371: 04        .byte $04   ; 
- D 0 - I - 0x009382 02:9372: 41        .byte $41   ; 
- D 0 - I - 0x009383 02:9373: 55        .byte $55   ; 
- D 0 - I - 0x009384 02:9374: 7F        .byte $7F   ; 
- D 0 - I - 0x009385 02:9375: 71        .byte $71   ; 
- D 0 - I - 0x009386 02:9376: 6D        .byte $6D   ; 
- D 0 - I - 0x009387 02:9377: 6D        .byte $6D   ; 
- D 0 - I - 0x009388 02:9378: 6D        .byte $6D   ; 
- D 0 - I - 0x009389 02:9379: 6A        .byte $6A   ; 
- D 0 - I - 0x00938A 02:937A: 4F        .byte $4F   ; 
- D 0 - I - 0x00938B 02:937B: 04        .byte $04   ; 
- D 0 - I - 0x00938C 02:937C: 31        .byte $31   ; 
- D 0 - I - 0x00938D 02:937D: 04        .byte $04   ; 
off_937E_04:
- D 0 - I - 0x00938E 02:937E: 75        .byte $75   ; 
- D 0 - I - 0x00938F 02:937F: 7D        .byte $7D   ; 
- D 0 - I - 0x009390 02:9380: 55        .byte $55   ; 
- D 0 - I - 0x009391 02:9381: 55        .byte $55   ; 
- D 0 - I - 0x009392 02:9382: 55        .byte $55   ; 
- D 0 - I - 0x009393 02:9383: 43        .byte $43   ; 
- D 0 - I - 0x009394 02:9384: 04        .byte $04   ; 
- D 0 - I - 0x009395 02:9385: 16        .byte $16   ; 
- D 0 - I - 0x009396 02:9386: 04        .byte $04   ; 
- D 0 - I - 0x009397 02:9387: 04        .byte $04   ; 
- D 0 - I - 0x009398 02:9388: 04        .byte $04   ; 
- D 0 - I - 0x009399 02:9389: 04        .byte $04   ; 
- D 0 - I - 0x00939A 02:938A: 04        .byte $04   ; 
- D 0 - I - 0x00939B 02:938B: 04        .byte $04   ; 
- D 0 - I - 0x00939C 02:938C: 04        .byte $04   ; 
- D 0 - I - 0x00939D 02:938D: 04        .byte $04   ; 
- D 0 - I - 0x00939E 02:938E: 04        .byte $04   ; 
- D 0 - I - 0x00939F 02:938F: 4D        .byte $4D   ; 
- D 0 - I - 0x0093A0 02:9390: 61        .byte $61   ; 
- D 0 - I - 0x0093A1 02:9391: 6D        .byte $6D   ; 
- D 0 - I - 0x0093A2 02:9392: 6D        .byte $6D   ; 
- D 0 - I - 0x0093A3 02:9393: 6D        .byte $6D   ; 
- D 0 - I - 0x0093A4 02:9394: 6D        .byte $6D   ; 
- D 0 - I - 0x0093A5 02:9395: 67        .byte $67   ; 
- D 0 - I - 0x0093A6 02:9396: 04        .byte $04   ; 
- D 0 - I - 0x0093A7 02:9397: 04        .byte $04   ; 
- D 0 - I - 0x0093A8 02:9398: 04        .byte $04   ; 
- D 0 - I - 0x0093A9 02:9399: 04        .byte $04   ; 
- D 0 - I - 0x0093AA 02:939A: 41        .byte $41   ; 
- D 0 - I - 0x0093AB 02:939B: 55        .byte $55   ; 
- D 0 - I - 0x0093AC 02:939C: 55        .byte $55   ; 
off_939D_05:
- D 0 - I - 0x0093AD 02:939D: 55        .byte $55   ; 
- D 0 - I - 0x0093AE 02:939E: 11        .byte $11   ; 
- D 0 - I - 0x0093AF 02:939F: 44        .byte $44   ; 
- D 0 - I - 0x0093B0 02:93A0: 55        .byte $55   ; 
- D 0 - I - 0x0093B1 02:93A1: 55        .byte $55   ; 
- D 0 - I - 0x0093B2 02:93A2: 01        .byte $01   ; 
- D 0 - I - 0x0093B3 02:93A3: 00        .byte $00   ; 
- D 0 - I - 0x0093B4 02:93A4: 50        .byte $50   ; 
- D 0 - I - 0x0093B5 02:93A5: 55        .byte $55   ; 
- D 0 - I - 0x0093B6 02:93A6: 11        .byte $11   ; 
- D 0 - I - 0x0093B7 02:93A7: 04        .byte $04   ; 
- D 0 - I - 0x0093B8 02:93A8: 05        .byte $05   ; 
- D 0 - I - 0x0093B9 02:93A9: 01        .byte $01   ; 
- D 0 - I - 0x0093BA 02:93AA: 40        .byte $40   ; 
- D 0 - I - 0x0093BB 02:93AB: 54        .byte $54   ; 
- D 0 - I - 0x0093BC 02:93AC: 55        .byte $55   ; 
- D 0 - I - 0x0093BD 02:93AD: 05        .byte $05   ; 
- D 0 - I - 0x0093BE 02:93AE: 00        .byte $00   ; 
- D 0 - I - 0x0093BF 02:93AF: 00        .byte $00   ; 
- D 0 - I - 0x0093C0 02:93B0: 00        .byte $00   ; 
- D 0 - I - 0x0093C1 02:93B1: 00        .byte $00   ; 
- D 0 - I - 0x0093C2 02:93B2: 44        .byte $44   ; 
- D 0 - I - 0x0093C3 02:93B3: 55        .byte $55   ; 
- D 0 - I - 0x0093C4 02:93B4: 15        .byte $15   ; 
- D 0 - I - 0x0093C5 02:93B5: 00        .byte $00   ; 
- D 0 - I - 0x0093C6 02:93B6: 00        .byte $00   ; 
- D 0 - I - 0x0093C7 02:93B7: 00        .byte $00   ; 
- D 0 - I - 0x0093C8 02:93B8: 00        .byte $00   ; 
- D 0 - I - 0x0093C9 02:93B9: 00        .byte $00   ; 
- D 0 - I - 0x0093CA 02:93BA: 44        .byte $44   ; 
- D 0 - I - 0x0093CB 02:93BB: 55        .byte $55   ; 
off_93BC_04:
- D 0 - I - 0x0093CC 02:93BC: 00        .byte $00   ; 
- D 0 - I - 0x0093CD 02:93BD: 00        .byte $00   ; 
- D 0 - I - 0x0093CE 02:93BE: 00        .byte $00   ; 
- D 0 - I - 0x0093CF 02:93BF: 00        .byte $00   ; 
- D 0 - I - 0x0093D0 02:93C0: 00        .byte $00   ; 
- D 0 - I - 0x0093D1 02:93C1: 00        .byte $00   ; 
- D 0 - I - 0x0093D2 02:93C2: 00        .byte $00   ; 
- D 0 - I - 0x0093D3 02:93C3: 00        .byte $00   ; 
- D 0 - I - 0x0093D4 02:93C4: 00        .byte $00   ; 
- D 0 - I - 0x0093D5 02:93C5: 00        .byte $00   ; 
- D 0 - I - 0x0093D6 02:93C6: 00        .byte $00   ; 
- D 0 - I - 0x0093D7 02:93C7: 00        .byte $00   ; 
- D 0 - I - 0x0093D8 02:93C8: 00        .byte $00   ; 
- D 0 - I - 0x0093D9 02:93C9: 00        .byte $00   ; 
- D 0 - I - 0x0093DA 02:93CA: 00        .byte $00   ; 
- D 0 - I - 0x0093DB 02:93CB: 00        .byte $00   ; 
- D 0 - I - 0x0093DC 02:93CC: 00        .byte $00   ; 
- D 0 - I - 0x0093DD 02:93CD: 00        .byte $00   ; 
- D 0 - I - 0x0093DE 02:93CE: 00        .byte $00   ; 
- D 0 - I - 0x0093DF 02:93CF: 00        .byte $00   ; 
- D 0 - I - 0x0093E0 02:93D0: 00        .byte $00   ; 
- D 0 - I - 0x0093E1 02:93D1: 00        .byte $00   ; 
- D 0 - I - 0x0093E2 02:93D2: 00        .byte $00   ; 
- D 0 - I - 0x0093E3 02:93D3: 00        .byte $00   ; 
- D 0 - I - 0x0093E4 02:93D4: 00        .byte $00   ; 
- D 0 - I - 0x0093E5 02:93D5: 00        .byte $00   ; 
- D 0 - I - 0x0093E6 02:93D6: 00        .byte $00   ; 
- D 0 - I - 0x0093E7 02:93D7: 00        .byte $00   ; 
- D 0 - I - 0x0093E8 02:93D8: 00        .byte $00   ; 
- D 0 - I - 0x0093E9 02:93D9: 00        .byte $00   ; 
- D 0 - I - 0x0093EA 02:93DA: 00        .byte $00   ; 
- D 0 - I - 0x0093EB 02:93DB: 00        .byte $00   ; 
off_93DC_05:
- D 0 - I - 0x0093EC 02:93DC: 75        .byte $75   ; 
- D 0 - I - 0x0093ED 02:93DD: 70        .byte $70   ; 
- D 0 - I - 0x0093EE 02:93DE: 6D        .byte $6D   ; 
- D 0 - I - 0x0093EF 02:93DF: 6D        .byte $6D   ; 
- D 0 - I - 0x0093F0 02:93E0: 6D        .byte $6D   ; 
- D 0 - I - 0x0093F1 02:93E1: 6A        .byte $6A   ; 
- D 0 - I - 0x0093F2 02:93E2: 04        .byte $04   ; 
- D 0 - I - 0x0093F3 02:93E3: 04        .byte $04   ; 
- D 0 - I - 0x0093F4 02:93E4: 04        .byte $04   ; 
- D 0 - I - 0x0093F5 02:93E5: 04        .byte $04   ; 
- D 0 - I - 0x0093F6 02:93E6: 04        .byte $04   ; 
- D 0 - I - 0x0093F7 02:93E7: 04        .byte $04   ; 
- D 0 - I - 0x0093F8 02:93E8: 04        .byte $04   ; 
- D 0 - I - 0x0093F9 02:93E9: 04        .byte $04   ; 
- D 0 - I - 0x0093FA 02:93EA: 04        .byte $04   ; 
- D 0 - I - 0x0093FB 02:93EB: 04        .byte $04   ; 
- D 0 - I - 0x0093FC 02:93EC: 04        .byte $04   ; 
- D 0 - I - 0x0093FD 02:93ED: 04        .byte $04   ; 
- D 0 - I - 0x0093FE 02:93EE: 61        .byte $61   ; 
- D 0 - I - 0x0093FF 02:93EF: 6D        .byte $6D   ; 
- D 0 - I - 0x009400 02:93F0: 6D        .byte $6D   ; 
- D 0 - I - 0x009401 02:93F1: 6D        .byte $6D   ; 
- D 0 - I - 0x009402 02:93F2: 6D        .byte $6D   ; 
- D 0 - I - 0x009403 02:93F3: 67        .byte $67   ; 
- D 0 - I - 0x009404 02:93F4: 04        .byte $04   ; 
- D 0 - I - 0x009405 02:93F5: 16        .byte $16   ; 
- D 0 - I - 0x009406 02:93F6: 04        .byte $04   ; 
- D 0 - I - 0x009407 02:93F7: 04        .byte $04   ; 
- D 0 - I - 0x009408 02:93F8: 61        .byte $61   ; 
- D 0 - I - 0x009409 02:93F9: 6D        .byte $6D   ; 
- D 0 - I - 0x00940A 02:93FA: 71        .byte $71   ; 
off_93FB_10:
- D 0 - I - 0x00940B 02:93FB: 6D        .byte $6D   ; 
- D 0 - I - 0x00940C 02:93FC: F8        .byte $F8   ; 
- D 0 - I - 0x00940D 02:93FD: 6D        .byte $6D   ; 
- D 0 - I - 0x00940E 02:93FE: 79        .byte $79   ; 
- D 0 - I - 0x00940F 02:93FF: 5B        .byte $5B   ; 
- D 0 - I - 0x009410 02:9400: 5B        .byte $5B   ; 
- D 0 - I - 0x009411 02:9401: 5E        .byte $5E   ; 
- D 0 - I - 0x009412 02:9402: 5F        .byte $5F   ; 
- D 0 - I - 0x009413 02:9403: 5F        .byte $5F   ; 
- D 0 - I - 0x009414 02:9404: 47        .byte $47   ; 
- D 0 - I - 0x009415 02:9405: 04        .byte $04   ; 
- D 0 - I - 0x009416 02:9406: 16        .byte $16   ; 
- D 0 - I - 0x009417 02:9407: 04        .byte $04   ; 
- D 0 - I - 0x009418 02:9408: 35        .byte $35   ; 
- D 0 - I - 0x009419 02:9409: D0        .byte $D0   ; 
- D 0 - I - 0x00941A 02:940A: D1        .byte $D1   ; 
- D 0 - I - 0x00941B 02:940B: D2        .byte $D2   ; 
- D 0 - I - 0x00941C 02:940C: D3        .byte $D3   ; 
- D 0 - I - 0x00941D 02:940D: D4        .byte $D4   ; 
- D 0 - I - 0x00941E 02:940E: 04        .byte $04   ; 
- D 0 - I - 0x00941F 02:940F: 04        .byte $04   ; 
- D 0 - I - 0x009420 02:9410: 04        .byte $04   ; 
- D 0 - I - 0x009421 02:9411: 04        .byte $04   ; 
- D 0 - I - 0x009422 02:9412: 04        .byte $04   ; 
- - - - - - 0x009423 02:9413: 16        .byte $16   ; 
off_9414_05:
- - - - - - 0x009424 02:9414: 04        .byte $04   ; 
- - - - - - 0x009425 02:9415: 04        .byte $04   ; 
- - - - - - 0x009426 02:9416: 04        .byte $04   ; 
- - - - - - 0x009427 02:9417: 04        .byte $04   ; 
- - - - - - 0x009428 02:9418: 04        .byte $04   ; 
- - - - - - 0x009429 02:9419: 04        .byte $04   ; 
- - - - - - 0x00942A 02:941A: 04        .byte $04   ; 
- - - - - - 0x00942B 02:941B: 17        .byte $17   ; 
- - - - - - 0x00942C 02:941C: 04        .byte $04   ; 
- D 0 - I - 0x00942D 02:941D: 16        .byte $16   ; 
- D 0 - I - 0x00942E 02:941E: 16        .byte $16   ; 
- D 0 - I - 0x00942F 02:941F: 04        .byte $04   ; 
- D 0 - I - 0x009430 02:9420: 04        .byte $04   ; 
- D 0 - I - 0x009431 02:9421: 04        .byte $04   ; 
- D 0 - I - 0x009432 02:9422: 04        .byte $04   ; 
- D 0 - I - 0x009433 02:9423: 2B        .byte $2B   ; 
- D 0 - I - 0x009434 02:9424: 30        .byte $30   ; 
- D 0 - I - 0x009435 02:9425: 04        .byte $04   ; 
- D 0 - I - 0x009436 02:9426: 04        .byte $04   ; 
- D 0 - I - 0x009437 02:9427: 04        .byte $04   ; 
- D 0 - I - 0x009438 02:9428: 61        .byte $61   ; 
- D 0 - I - 0x009439 02:9429: 6D        .byte $6D   ; 
- D 0 - I - 0x00943A 02:942A: 6D        .byte $6D   ; 
- D 0 - I - 0x00943B 02:942B: 6D        .byte $6D   ; 
- D 0 - I - 0x00943C 02:942C: 6D        .byte $6D   ; 
- D 0 - I - 0x00943D 02:942D: 6D        .byte $6D   ; 
- D 0 - I - 0x00943E 02:942E: 6D        .byte $6D   ; 
- D 0 - I - 0x00943F 02:942F: F8        .byte $F8   ; 
- D 0 - I - 0x009440 02:9430: 6D        .byte $6D   ; 
off_9431_0B:
- D 0 - I - 0x009441 02:9431: 70        .byte $70   ; 
- D 0 - I - 0x009442 02:9432: 6D        .byte $6D   ; 
- D 0 - I - 0x009443 02:9433: 6D        .byte $6D   ; 
- D 0 - I - 0x009444 02:9434: 6D        .byte $6D   ; 
- D 0 - I - 0x009445 02:9435: 6D        .byte $6D   ; 
- D 0 - I - 0x009446 02:9436: 6D        .byte $6D   ; 
- D 0 - I - 0x009447 02:9437: 6D        .byte $6D   ; 
- D 0 - I - 0x009448 02:9438: 67        .byte $67   ; 
- D 0 - I - 0x009449 02:9439: 04        .byte $04   ; 
- D 0 - I - 0x00944A 02:943A: 04        .byte $04   ; 
- D 0 - I - 0x00944B 02:943B: 04        .byte $04   ; 
- D 0 - I - 0x00944C 02:943C: 04        .byte $04   ; 
- D 0 - I - 0x00944D 02:943D: 37        .byte $37   ; 
- D 0 - I - 0x00944E 02:943E: 2C        .byte $2C   ; 
- D 0 - I - 0x00944F 02:943F: 04        .byte $04   ; 
- D 0 - I - 0x009450 02:9440: 04        .byte $04   ; 
- D 0 - I - 0x009451 02:9441: 16        .byte $16   ; 
- D 0 - I - 0x009452 02:9442: 04        .byte $04   ; 
- D 0 - I - 0x009453 02:9443: 04        .byte $04   ; 
- D 0 - I - 0x009454 02:9444: 04        .byte $04   ; 
- D 0 - I - 0x009455 02:9445: 17        .byte $17   ; 
- D 0 - I - 0x009456 02:9446: 04        .byte $04   ; 
- D 0 - I - 0x009457 02:9447: 04        .byte $04   ; 
- D 0 - I - 0x009458 02:9448: 04        .byte $04   ; 
- - - - - - 0x009459 02:9449: 04        .byte $04   ; 
- - - - - - 0x00945A 02:944A: 04        .byte $04   ; 
- - - - - - 0x00945B 02:944B: 04        .byte $04   ; 
- - - - - - 0x00945C 02:944C: 04        .byte $04   ; 
- - - - - - 0x00945D 02:944D: 04        .byte $04   ; 
- - - - - - 0x00945E 02:944E: 16        .byte $16   ; 
- - - - - - 0x00945F 02:944F: 04        .byte $04   ; 
- - - - - - 0x009460 02:9450: 04        .byte $04   ; 
off_9451_06:
- D 0 - I - 0x009461 02:9451: 73        .byte $73   ; 
- D 0 - I - 0x009462 02:9452: 6C        .byte $6C   ; 
- D 0 - I - 0x009463 02:9453: 6C        .byte $6C   ; 
- D 0 - I - 0x009464 02:9454: 6F        .byte $6F   ; 
- D 0 - I - 0x009465 02:9455: 6C        .byte $6C   ; 
- D 0 - I - 0x009466 02:9456: 69        .byte $69   ; 
- D 0 - I - 0x009467 02:9457: 00        .byte $00   ; 
- D 0 - I - 0x009468 02:9458: 00        .byte $00   ; 
- D 0 - I - 0x009469 02:9459: 00        .byte $00   ; 
- D 0 - I - 0x00946A 02:945A: 00        .byte $00   ; 
- D 0 - I - 0x00946B 02:945B: 00        .byte $00   ; 
- D 0 - I - 0x00946C 02:945C: 14        .byte $14   ; 
- D 0 - I - 0x00946D 02:945D: 00        .byte $00   ; 
- D 0 - I - 0x00946E 02:945E: 00        .byte $00   ; 
- D 0 - I - 0x00946F 02:945F: 14        .byte $14   ; 
- D 0 - I - 0x009470 02:9460: 00        .byte $00   ; 
- D 0 - I - 0x009471 02:9461: 00        .byte $00   ; 
- D 0 - I - 0x009472 02:9462: 00        .byte $00   ; 
- D 0 - I - 0x009473 02:9463: 60        .byte $60   ; 
- D 0 - I - 0x009474 02:9464: 6E        .byte $6E   ; 
- D 0 - I - 0x009475 02:9465: 6C        .byte $6C   ; 
- D 0 - I - 0x009476 02:9466: 6C        .byte $6C   ; 
- D 0 - I - 0x009477 02:9467: 6C        .byte $6C   ; 
- D 0 - I - 0x009478 02:9468: 68        .byte $68   ; 
- D 0 - I - 0x009479 02:9469: 00        .byte $00   ; 
- D 0 - I - 0x00947A 02:946A: 00        .byte $00   ; 
- D 0 - I - 0x00947B 02:946B: 00        .byte $00   ; 
- D 0 - I - 0x00947C 02:946C: 00        .byte $00   ; 
- D 0 - I - 0x00947D 02:946D: 60        .byte $60   ; 
off_946E_07:
- D 0 - I - 0x00947E 02:946E: 6C        .byte $6C   ; 
- D 0 - I - 0x00947F 02:946F: 6C        .byte $6C   ; 
- D 0 - I - 0x009480 02:9470: 6C        .byte $6C   ; 
- D 0 - I - 0x009481 02:9471: 68        .byte $68   ; 
- D 0 - I - 0x009482 02:9472: 15        .byte $15   ; 
- D 0 - I - 0x009483 02:9473: 00        .byte $00   ; 
- D 0 - I - 0x009484 02:9474: 00        .byte $00   ; 
- D 0 - I - 0x009485 02:9475: 00        .byte $00   ; 
- D 0 - I - 0x009486 02:9476: 00        .byte $00   ; 
- D 0 - I - 0x009487 02:9477: 00        .byte $00   ; 
- D 0 - I - 0x009488 02:9478: 00        .byte $00   ; 
- D 0 - I - 0x009489 02:9479: 00        .byte $00   ; 
- D 0 - I - 0x00948A 02:947A: 00        .byte $00   ; 
- D 0 - I - 0x00948B 02:947B: 00        .byte $00   ; 
- D 0 - I - 0x00948C 02:947C: 00        .byte $00   ; 
- D 0 - I - 0x00948D 02:947D: 00        .byte $00   ; 
- D 0 - I - 0x00948E 02:947E: 00        .byte $00   ; 
- D 0 - I - 0x00948F 02:947F: 00        .byte $00   ; 
- D 0 - I - 0x009490 02:9480: 00        .byte $00   ; 
- D 0 - I - 0x009491 02:9481: 00        .byte $00   ; 
- D 0 - I - 0x009492 02:9482: 00        .byte $00   ; 
- D 0 - I - 0x009493 02:9483: 00        .byte $00   ; 
- D 0 - I - 0x009494 02:9484: 00        .byte $00   ; 
- D 0 - I - 0x009495 02:9485: 48        .byte $48   ; 
- D 0 - I - 0x009496 02:9486: 60        .byte $60   ; 
- D 0 - I - 0x009497 02:9487: 6C        .byte $6C   ; 
- D 0 - I - 0x009498 02:9488: 6E        .byte $6E   ; 
- D 0 - I - 0x009499 02:9489: 6C        .byte $6C   ; 
- D 0 - I - 0x00949A 02:948A: 6C        .byte $6C   ; 
- D 0 - I - 0x00949B 02:948B: 6C        .byte $6C   ; 
- D 0 - I - 0x00949C 02:948C: 6C        .byte $6C   ; 
- D 0 - I - 0x00949D 02:948D: 72        .byte $72   ; 
off_948E_07:
- D 0 - I - 0x00949E 02:948E: 73        .byte $73   ; 
- D 0 - I - 0x00949F 02:948F: 6C        .byte $6C   ; 
- D 0 - I - 0x0094A0 02:9490: 6C        .byte $6C   ; 
- D 0 - I - 0x0094A1 02:9491: 78        .byte $78   ; 
- D 0 - I - 0x0094A2 02:9492: 5C        .byte $5C   ; 
- D 0 - I - 0x0094A3 02:9493: 46        .byte $46   ; 
- D 0 - I - 0x0094A4 02:9494: 00        .byte $00   ; 
- D 0 - I - 0x0094A5 02:9495: 00        .byte $00   ; 
- D 0 - I - 0x0094A6 02:9496: 00        .byte $00   ; 
- D 0 - I - 0x0094A7 02:9497: 00        .byte $00   ; 
- D 0 - I - 0x0094A8 02:9498: 00        .byte $00   ; 
- D 0 - I - 0x0094A9 02:9499: 00        .byte $00   ; 
- D 0 - I - 0x0094AA 02:949A: 00        .byte $00   ; 
- D 0 - I - 0x0094AB 02:949B: 00        .byte $00   ; 
- D 0 - I - 0x0094AC 02:949C: 00        .byte $00   ; 
- D 0 - I - 0x0094AD 02:949D: 00        .byte $00   ; 
- D 0 - I - 0x0094AE 02:949E: 00        .byte $00   ; 
- D 0 - I - 0x0094AF 02:949F: 48        .byte $48   ; 
- D 0 - I - 0x0094B0 02:94A0: 60        .byte $60   ; 
- D 0 - I - 0x0094B1 02:94A1: 6C        .byte $6C   ; 
- D 0 - I - 0x0094B2 02:94A2: 6C        .byte $6C   ; 
- D 0 - I - 0x0094B3 02:94A3: 6C        .byte $6C   ; 
- D 0 - I - 0x0094B4 02:94A4: 6E        .byte $6E   ; 
- D 0 - I - 0x0094B5 02:94A5: 69        .byte $69   ; 
- D 0 - I - 0x0094B6 02:94A6: 00        .byte $00   ; 
- D 0 - I - 0x0094B7 02:94A7: 00        .byte $00   ; 
- D 0 - I - 0x0094B8 02:94A8: 00        .byte $00   ; 
- D 0 - I - 0x0094B9 02:94A9: 00        .byte $00   ; 
- D 0 - I - 0x0094BA 02:94AA: 44        .byte $44   ; 
- D 0 - I - 0x0094BB 02:94AB: 5A        .byte $5A   ; 
- D 0 - I - 0x0094BC 02:94AC: 7A        .byte $7A   ; 
off_94AD_12:
- D 0 - I - 0x0094BD 02:94AD: 6E        .byte $6E   ; 
- D 0 - I - 0x0094BE 02:94AE: F3        .byte $F3   ; 
- D 0 - I - 0x0094BF 02:94AF: 73        .byte $73   ; 
- D 0 - I - 0x0094C0 02:94B0: 69        .byte $69   ; 
- D 0 - I - 0x0094C1 02:94B1: 00        .byte $00   ; 
- D 0 - I - 0x0094C2 02:94B2: 00        .byte $00   ; 
- D 0 - I - 0x0094C3 02:94B3: 00        .byte $00   ; 
- D 0 - I - 0x0094C4 02:94B4: 00        .byte $00   ; 
- D 0 - I - 0x0094C5 02:94B5: 84        .byte $84   ; 
- D 0 - I - 0x0094C6 02:94B6: 10        .byte $10   ; 
- D 0 - I - 0x0094C7 02:94B7: 10        .byte $10   ; 
- D 0 - I - 0x0094C8 02:94B8: 10        .byte $10   ; 
- D 0 - I - 0x0094C9 02:94B9: 10        .byte $10   ; 
- D 0 - I - 0x0094CA 02:94BA: 83        .byte $83   ; 
- D 0 - I - 0x0094CB 02:94BB: A5        .byte $A5   ; 
- D 0 - I - 0x0094CC 02:94BC: A6        .byte $A6   ; 
- D 0 - I - 0x0094CD 02:94BD: A7        .byte $A7   ; 
- D 0 - I - 0x0094CE 02:94BE: A7        .byte $A7   ; 
- D 0 - I - 0x0094CF 02:94BF: A8        .byte $A8   ; 
- D 0 - I - 0x0094D0 02:94C0: 00        .byte $00   ; 
- D 0 - I - 0x0094D1 02:94C1: 00        .byte $00   ; 
- D 0 - I - 0x0094D2 02:94C2: 00        .byte $00   ; 
- D 0 - I - 0x0094D3 02:94C3: 00        .byte $00   ; 
- D 0 - I - 0x0094D4 02:94C4: 00        .byte $00   ; 
- - - - - - 0x0094D5 02:94C5: 00        .byte $00   ; 
- - - - - - 0x0094D6 02:94C6: 00        .byte $00   ; 
- - - - - - 0x0094D7 02:94C7: 00        .byte $00   ; 
- - - - - - 0x0094D8 02:94C8: 00        .byte $00   ; 
- - - - - - 0x0094D9 02:94C9: 00        .byte $00   ; 
- - - - - - 0x0094DA 02:94CA: 00        .byte $00   ; 
- - - - - - 0x0094DB 02:94CB: 00        .byte $00   ; 
- - - - - - 0x0094DC 02:94CC: 00        .byte $00   ; 
off_94CD_08:
- D 0 - I - 0x0094DD 02:94CD: 73        .byte $73   ; 
- D 0 - I - 0x0094DE 02:94CE: 6E        .byte $6E   ; 
- D 0 - I - 0x0094DF 02:94CF: 6C        .byte $6C   ; 
- D 0 - I - 0x0094E0 02:94D0: 68        .byte $68   ; 
- D 0 - I - 0x0094E1 02:94D1: 4E        .byte $4E   ; 
- D 0 - I - 0x0094E2 02:94D2: 00        .byte $00   ; 
- D 0 - I - 0x0094E3 02:94D3: 00        .byte $00   ; 
- D 0 - I - 0x0094E4 02:94D4: 14        .byte $14   ; 
- D 0 - I - 0x0094E5 02:94D5: 00        .byte $00   ; 
- D 0 - I - 0x0094E6 02:94D6: 00        .byte $00   ; 
- D 0 - I - 0x0094E7 02:94D7: 00        .byte $00   ; 
- D 0 - I - 0x0094E8 02:94D8: 00        .byte $00   ; 
- D 0 - I - 0x0094E9 02:94D9: 00        .byte $00   ; 
- D 0 - I - 0x0094EA 02:94DA: 00        .byte $00   ; 
- D 0 - I - 0x0094EB 02:94DB: 00        .byte $00   ; 
- D 0 - I - 0x0094EC 02:94DC: 00        .byte $00   ; 
- D 0 - I - 0x0094ED 02:94DD: 40        .byte $40   ; 
- D 0 - I - 0x0094EE 02:94DE: 54        .byte $54   ; 
- D 0 - I - 0x0094EF 02:94DF: 7E        .byte $7E   ; 
- D 0 - I - 0x0094F0 02:94E0: 6C        .byte $6C   ; 
- D 0 - I - 0x0094F1 02:94E1: 6C        .byte $6C   ; 
- D 0 - I - 0x0094F2 02:94E2: 6F        .byte $6F   ; 
- D 0 - I - 0x0094F3 02:94E3: 6C        .byte $6C   ; 
- D 0 - I - 0x0094F4 02:94E4: 69        .byte $69   ; 
off_94E5_0C:
- D 0 - I - 0x0094F5 02:94E5: 00        .byte $00   ; 
- D 0 - I - 0x0094F6 02:94E6: 00        .byte $00   ; 
- D 0 - I - 0x0094F7 02:94E7: 00        .byte $00   ; 
- D 0 - I - 0x0094F8 02:94E8: 00        .byte $00   ; 
- D 0 - I - 0x0094F9 02:94E9: 00        .byte $00   ; 
- D 0 - I - 0x0094FA 02:94EA: 4C        .byte $4C   ; 
- D 0 - I - 0x0094FB 02:94EB: 60        .byte $60   ; 
- D 0 - I - 0x0094FC 02:94EC: 6C        .byte $6C   ; 
- D 0 - I - 0x0094FD 02:94ED: 6C        .byte $6C   ; 
- D 0 - I - 0x0094FE 02:94EE: 66        .byte $66   ; 
- D 0 - I - 0x0094FF 02:94EF: 00        .byte $00   ; 
- D 0 - I - 0x009500 02:94F0: 00        .byte $00   ; 
- D 0 - I - 0x009501 02:94F1: 00        .byte $00   ; 
- D 0 - I - 0x009502 02:94F2: 00        .byte $00   ; 
- D 0 - I - 0x009503 02:94F3: 00        .byte $00   ; 
- D 0 - I - 0x009504 02:94F4: 00        .byte $00   ; 
- D 0 - I - 0x009505 02:94F5: 00        .byte $00   ; 
- D 0 - I - 0x009506 02:94F6: 00        .byte $00   ; 
- D 0 - I - 0x009507 02:94F7: 00        .byte $00   ; 
- D 0 - I - 0x009508 02:94F8: 00        .byte $00   ; 
- D 0 - I - 0x009509 02:94F9: 00        .byte $00   ; 
- D 0 - I - 0x00950A 02:94FA: 00        .byte $00   ; 
- D 0 - I - 0x00950B 02:94FB: 00        .byte $00   ; 
- D 0 - I - 0x00950C 02:94FC: 00        .byte $00   ; 
- D 0 - I - 0x00950D 02:94FD: 00        .byte $00   ; 
- D 0 - I - 0x00950E 02:94FE: 00        .byte $00   ; 
- D 0 - I - 0x00950F 02:94FF: 00        .byte $00   ; 
- D 0 - I - 0x009510 02:9500: 00        .byte $00   ; 
- D 0 - I - 0x009511 02:9501: 00        .byte $00   ; 
- D 0 - I - 0x009512 02:9502: 00        .byte $00   ; 
- D 0 - I - 0x009513 02:9503: 00        .byte $00   ; 
- D 0 - I - 0x009514 02:9504: 1B        .byte $1B   ; 
off_9505_09:
- D 0 - I - 0x009515 02:9505: 59        .byte $59   ; 
- D 0 - I - 0x009516 02:9506: 5E        .byte $5E   ; 
- D 0 - I - 0x009517 02:9507: 5F        .byte $5F   ; 
- D 0 - I - 0x009518 02:9508: 47        .byte $47   ; 
- D 0 - I - 0x009519 02:9509: 04        .byte $04   ; 
- D 0 - I - 0x00951A 02:950A: 04        .byte $04   ; 
- D 0 - I - 0x00951B 02:950B: 04        .byte $04   ; 
- D 0 - I - 0x00951C 02:950C: 04        .byte $04   ; 
- D 0 - I - 0x00951D 02:950D: 04        .byte $04   ; 
- D 0 - I - 0x00951E 02:950E: 04        .byte $04   ; 
- D 0 - I - 0x00951F 02:950F: 04        .byte $04   ; 
- D 0 - I - 0x009520 02:9510: 16        .byte $16   ; 
- D 0 - I - 0x009521 02:9511: 04        .byte $04   ; 
- D 0 - I - 0x009522 02:9512: 04        .byte $04   ; 
- D 0 - I - 0x009523 02:9513: 04        .byte $04   ; 
- D 0 - I - 0x009524 02:9514: 49        .byte $49   ; 
- D 0 - I - 0x009525 02:9515: 61        .byte $61   ; 
- D 0 - I - 0x009526 02:9516: 6D        .byte $6D   ; 
- D 0 - I - 0x009527 02:9517: 6D        .byte $6D   ; 
- D 0 - I - 0x009528 02:9518: 79        .byte $79   ; 
- D 0 - I - 0x009529 02:9519: 5B        .byte $5B   ; 
- D 0 - I - 0x00952A 02:951A: 5E        .byte $5E   ; 
- D 0 - I - 0x00952B 02:951B: 5F        .byte $5F   ; 
- D 0 - I - 0x00952C 02:951C: 47        .byte $47   ; 
- D 0 - I - 0x00952D 02:951D: 04        .byte $04   ; 
- D 0 - I - 0x00952E 02:951E: 04        .byte $04   ; 
- D 0 - I - 0x00952F 02:951F: 16        .byte $16   ; 
- D 0 - I - 0x009530 02:9520: 04        .byte $04   ; 
- D 0 - I - 0x009531 02:9521: 04        .byte $04   ; 
- D 0 - I - 0x009532 02:9522: 04        .byte $04   ; 
- D 0 - I - 0x009533 02:9523: 45        .byte $45   ; 
off_9524_09:
- D 0 - I - 0x009534 02:9524: 5B        .byte $5B   ; 
- D 0 - I - 0x009535 02:9525: 5E        .byte $5E   ; 
- D 0 - I - 0x009536 02:9526: 5F        .byte $5F   ; 
- D 0 - I - 0x009537 02:9527: 47        .byte $47   ; 
- D 0 - I - 0x009538 02:9528: 04        .byte $04   ; 
- D 0 - I - 0x009539 02:9529: 04        .byte $04   ; 
- D 0 - I - 0x00953A 02:952A: 04        .byte $04   ; 
- D 0 - I - 0x00953B 02:952B: 04        .byte $04   ; 
- D 0 - I - 0x00953C 02:952C: 04        .byte $04   ; 
- D 0 - I - 0x00953D 02:952D: 04        .byte $04   ; 
- D 0 - I - 0x00953E 02:952E: 04        .byte $04   ; 
- D 0 - I - 0x00953F 02:952F: 04        .byte $04   ; 
- D 0 - I - 0x009540 02:9530: 04        .byte $04   ; 
- D 0 - I - 0x009541 02:9531: 04        .byte $04   ; 
- D 0 - I - 0x009542 02:9532: 04        .byte $04   ; 
- D 0 - I - 0x009543 02:9533: 04        .byte $04   ; 
- D 0 - I - 0x009544 02:9534: 04        .byte $04   ; 
- D 0 - I - 0x009545 02:9535: 04        .byte $04   ; 
- D 0 - I - 0x009546 02:9536: 04        .byte $04   ; 
- D 0 - I - 0x009547 02:9537: 16        .byte $16   ; 
- D 0 - I - 0x009548 02:9538: 04        .byte $04   ; 
- D 0 - I - 0x009549 02:9539: 04        .byte $04   ; 
- D 0 - I - 0x00954A 02:953A: 61        .byte $61   ; 
- D 0 - I - 0x00954B 02:953B: 70        .byte $70   ; 
- D 0 - I - 0x00954C 02:953C: 6D        .byte $6D   ; 
- D 0 - I - 0x00954D 02:953D: 6D        .byte $6D   ; 
- D 0 - I - 0x00954E 02:953E: 6D        .byte $6D   ; 
- D 0 - I - 0x00954F 02:953F: 79        .byte $79   ; 
- D 0 - I - 0x009550 02:9540: 5B        .byte $5B   ; 
- D 0 - I - 0x009551 02:9541: 5B        .byte $5B   ; 
- D 0 - I - 0x009552 02:9542: 5B        .byte $5B   ; 
- D 0 - I - 0x009553 02:9543: 58        .byte $58   ; 
off_9544_0A:
- D 0 - I - 0x009554 02:9544: 2C        .byte $2C   ; 
- D 0 - I - 0x009555 02:9545: 04        .byte $04   ; 
- D 0 - I - 0x009556 02:9546: 04        .byte $04   ; 
- D 0 - I - 0x009557 02:9547: 04        .byte $04   ; 
- D 0 - I - 0x009558 02:9548: 04        .byte $04   ; 
- D 0 - I - 0x009559 02:9549: 04        .byte $04   ; 
- D 0 - I - 0x00955A 02:954A: 04        .byte $04   ; 
- D 0 - I - 0x00955B 02:954B: 04        .byte $04   ; 
- D 0 - I - 0x00955C 02:954C: 04        .byte $04   ; 
- D 0 - I - 0x00955D 02:954D: 04        .byte $04   ; 
- D 0 - I - 0x00955E 02:954E: 04        .byte $04   ; 
- D 0 - I - 0x00955F 02:954F: 04        .byte $04   ; 
- D 0 - I - 0x009560 02:9550: 04        .byte $04   ; 
- D 0 - I - 0x009561 02:9551: 04        .byte $04   ; 
- D 0 - I - 0x009562 02:9552: 41        .byte $41   ; 
- D 0 - I - 0x009563 02:9553: 55        .byte $55   ; 
- D 0 - I - 0x009564 02:9554: 7F        .byte $7F   ; 
- D 0 - I - 0x009565 02:9555: 6D        .byte $6D   ; 
- D 0 - I - 0x009566 02:9556: 70        .byte $70   ; 
- D 0 - I - 0x009567 02:9557: 67        .byte $67   ; 
- D 0 - I - 0x009568 02:9558: 4F        .byte $4F   ; 
- D 0 - I - 0x009569 02:9559: 17        .byte $17   ; 
off_955A_1B:
- D 0 - I - 0x00956A 02:955A: 04        .byte $04   ; 
- D 0 - I - 0x00956B 02:955B: 04        .byte $04   ; 
- D 0 - I - 0x00956C 02:955C: 04        .byte $04   ; 
- D 0 - I - 0x00956D 02:955D: 04        .byte $04   ; 
- D 0 - I - 0x00956E 02:955E: 04        .byte $04   ; 
- D 0 - I - 0x00956F 02:955F: 04        .byte $04   ; 
- D 0 - I - 0x009570 02:9560: 04        .byte $04   ; 
- D 0 - I - 0x009571 02:9561: 04        .byte $04   ; 
- D 0 - I - 0x009572 02:9562: 04        .byte $04   ; 
- D 0 - I - 0x009573 02:9563: 04        .byte $04   ; 
- D 0 - I - 0x009574 02:9564: 04        .byte $04   ; 
- D 0 - I - 0x009575 02:9565: 04        .byte $04   ; 
- D 0 - I - 0x009576 02:9566: 04        .byte $04   ; 
- D 0 - I - 0x009577 02:9567: 49        .byte $49   ; 
- D 0 - I - 0x009578 02:9568: 61        .byte $61   ; 
- D 0 - I - 0x009579 02:9569: 6D        .byte $6D   ; 
- D 0 - I - 0x00957A 02:956A: 6D        .byte $6D   ; 
- D 0 - I - 0x00957B 02:956B: 70        .byte $70   ; 
- D 0 - I - 0x00957C 02:956C: 6D        .byte $6D   ; 
- D 0 - I - 0x00957D 02:956D: 6D        .byte $6D   ; 
- D 0 - I - 0x00957E 02:956E: 6D        .byte $6D   ; 
- D 0 - I - 0x00957F 02:956F: 79        .byte $79   ; 
- D 0 - I - 0x009580 02:9570: 5E        .byte $5E   ; 
- D 0 - I - 0x009581 02:9571: 47        .byte $47   ; 
- D 0 - I - 0x009582 02:9572: 04        .byte $04   ; 
- D 0 - I - 0x009583 02:9573: 04        .byte $04   ; 
- D 0 - I - 0x009584 02:9574: 04        .byte $04   ; 
- D 0 - I - 0x009585 02:9575: 04        .byte $04   ; 
- D 0 - I - 0x009586 02:9576: 04        .byte $04   ; 
- D 0 - I - 0x009587 02:9577: 39        .byte $39   ; 
- D 0 - I - 0x009588 02:9578: 3A        .byte $3A   ; 
- D 0 - I - 0x009589 02:9579: 3B        .byte $3B   ; 
off_957A_0B:
- D 0 - I - 0x00958A 02:957A: 2C        .byte $2C   ; 
- D 0 - I - 0x00958B 02:957B: 04        .byte $04   ; 
- D 0 - I - 0x00958C 02:957C: 04        .byte $04   ; 
- D 0 - I - 0x00958D 02:957D: 04        .byte $04   ; 
- D 0 - I - 0x00958E 02:957E: 16        .byte $16   ; 
- D 0 - I - 0x00958F 02:957F: 04        .byte $04   ; 
- D 0 - I - 0x009590 02:9580: 04        .byte $04   ; 
- D 0 - I - 0x009591 02:9581: 04        .byte $04   ; 
- D 0 - I - 0x009592 02:9582: 04        .byte $04   ; 
- D 0 - I - 0x009593 02:9583: 04        .byte $04   ; 
- D 0 - I - 0x009594 02:9584: 04        .byte $04   ; 
- D 0 - I - 0x009595 02:9585: 04        .byte $04   ; 
- D 0 - I - 0x009596 02:9586: 04        .byte $04   ; 
- D 0 - I - 0x009597 02:9587: 04        .byte $04   ; 
- D 0 - I - 0x009598 02:9588: 61        .byte $61   ; 
- D 0 - I - 0x009599 02:9589: 6D        .byte $6D   ; 
- D 0 - I - 0x00959A 02:958A: 6D        .byte $6D   ; 
- D 0 - I - 0x00959B 02:958B: 6D        .byte $6D   ; 
- D 0 - I - 0x00959C 02:958C: 6D        .byte $6D   ; 
- D 0 - I - 0x00959D 02:958D: 67        .byte $67   ; 
off_958E_13:
- D 0 - I - 0x00959E 02:958E: 04        .byte $04   ; 
- D 0 - I - 0x00959F 02:958F: 04        .byte $04   ; 
- D 0 - I - 0x0095A0 02:9590: 04        .byte $04   ; 
- D 0 - I - 0x0095A1 02:9591: 04        .byte $04   ; 
- D 0 - I - 0x0095A2 02:9592: 04        .byte $04   ; 
- D 0 - I - 0x0095A3 02:9593: 04        .byte $04   ; 
- D 0 - I - 0x0095A4 02:9594: 04        .byte $04   ; 
- D 0 - I - 0x0095A5 02:9595: 04        .byte $04   ; 
- D 0 - I - 0x0095A6 02:9596: 04        .byte $04   ; 
- D 0 - I - 0x0095A7 02:9597: 04        .byte $04   ; 
- D 0 - I - 0x0095A8 02:9598: 16        .byte $16   ; 
- D 0 - I - 0x0095A9 02:9599: 04        .byte $04   ; 
- D 0 - I - 0x0095AA 02:959A: 04        .byte $04   ; 
- D 0 - I - 0x0095AB 02:959B: B5        .byte $B5   ; 
- D 0 - I - 0x0095AC 02:959C: B6        .byte $B6   ; 
- D 0 - I - 0x0095AD 02:959D: B6        .byte $B6   ; 
- D 0 - I - 0x0095AE 02:959E: B7        .byte $B7   ; 
- D 0 - I - 0x0095AF 02:959F: B8        .byte $B8   ; 
- D 0 - I - 0x0095B0 02:95A0: 30        .byte $30   ; 
- D 0 - I - 0x0095B1 02:95A1: 04        .byte $04   ; 
- D 0 - I - 0x0095B2 02:95A2: 04        .byte $04   ; 
- D 0 - I - 0x0095B3 02:95A3: 04        .byte $04   ; 
- D 0 - I - 0x0095B4 02:95A4: 04        .byte $04   ; 
- D 0 - I - 0x0095B5 02:95A5: 32        .byte $32   ; 
- D 0 - I - 0x0095B6 02:95A6: 04        .byte $04   ; 
- D 0 - I - 0x0095B7 02:95A7: 16        .byte $16   ; 
- D 0 - I - 0x0095B8 02:95A8: 04        .byte $04   ; 
- D 0 - I - 0x0095B9 02:95A9: 04        .byte $04   ; 
- D 0 - I - 0x0095BA 02:95AA: 04        .byte $04   ; 
- D 0 - I - 0x0095BB 02:95AB: 36        .byte $36   ; 
- D 0 - I - 0x0095BC 02:95AC: 04        .byte $04   ; 
- D 0 - I - 0x0095BD 02:95AD: 04        .byte $04   ; 
off_95AE_0C:
- D 0 - I - 0x0095BE 02:95AE: 1C        .byte $1C   ; 
- D 0 - I - 0x0095BF 02:95AF: 00        .byte $00   ; 
- D 0 - I - 0x0095C0 02:95B0: 00        .byte $00   ; 
- D 0 - I - 0x0095C1 02:95B1: 00        .byte $00   ; 
- D 0 - I - 0x0095C2 02:95B2: 00        .byte $00   ; 
- D 0 - I - 0x0095C3 02:95B3: 00        .byte $00   ; 
- D 0 - I - 0x0095C4 02:95B4: 00        .byte $00   ; 
- D 0 - I - 0x0095C5 02:95B5: 00        .byte $00   ; 
- D 0 - I - 0x0095C6 02:95B6: 00        .byte $00   ; 
- D 0 - I - 0x0095C7 02:95B7: 00        .byte $00   ; 
- D 0 - I - 0x0095C8 02:95B8: 00        .byte $00   ; 
- D 0 - I - 0x0095C9 02:95B9: 00        .byte $00   ; 
- D 0 - I - 0x0095CA 02:95BA: 00        .byte $00   ; 
- D 0 - I - 0x0095CB 02:95BB: 00        .byte $00   ; 
- D 0 - I - 0x0095CC 02:95BC: 60        .byte $60   ; 
- D 0 - I - 0x0095CD 02:95BD: 6F        .byte $6F   ; 
- D 0 - I - 0x0095CE 02:95BE: 6C        .byte $6C   ; 
- D 0 - I - 0x0095CF 02:95BF: 6C        .byte $6C   ; 
- D 0 - I - 0x0095D0 02:95C0: 6C        .byte $6C   ; 
- D 0 - I - 0x0095D1 02:95C1: 66        .byte $66   ; 
- D 0 - I - 0x0095D2 02:95C2: 00        .byte $00   ; 
- D 0 - I - 0x0095D3 02:95C3: 00        .byte $00   ; 
- D 0 - I - 0x0095D4 02:95C4: 00        .byte $00   ; 
- D 0 - I - 0x0095D5 02:95C5: 00        .byte $00   ; 
- D 0 - I - 0x0095D6 02:95C6: 00        .byte $00   ; 
- D 0 - I - 0x0095D7 02:95C7: 00        .byte $00   ; 
- D 0 - I - 0x0095D8 02:95C8: 00        .byte $00   ; 
- D 0 - I - 0x0095D9 02:95C9: 00        .byte $00   ; 
- D 0 - I - 0x0095DA 02:95CA: 00        .byte $00   ; 
- D 0 - I - 0x0095DB 02:95CB: 00        .byte $00   ; 
- D 0 - I - 0x0095DC 02:95CC: 00        .byte $00   ; 
- D 0 - I - 0x0095DD 02:95CD: 00        .byte $00   ; 
off_95CE_00:
- D 0 - I - 0x0095DE 02:95CE: 00        .byte $00   ; 
- D 0 - I - 0x0095DF 02:95CF: 00        .byte $00   ; 
- D 0 - I - 0x0095E0 02:95D0: 00        .byte $00   ; 
- D 0 - I - 0x0095E1 02:95D1: 24        .byte $24   ; 
- D 0 - I - 0x0095E2 02:95D2: 00        .byte $00   ; 
- D 0 - I - 0x0095E3 02:95D3: 00        .byte $00   ; 
- D 0 - I - 0x0095E4 02:95D4: 00        .byte $00   ; 
- D 0 - I - 0x0095E5 02:95D5: 00        .byte $00   ; 
- D 0 - I - 0x0095E6 02:95D6: 00        .byte $00   ; 
- D 0 - I - 0x0095E7 02:95D7: 8D        .byte $8D   ; 
- D 0 - I - 0x0095E8 02:95D8: 12        .byte $12   ; 
- D 0 - I - 0x0095E9 02:95D9: 12        .byte $12   ; 
- D 0 - I - 0x0095EA 02:95DA: 12        .byte $12   ; 
- D 0 - I - 0x0095EB 02:95DB: 12        .byte $12   ; 
- D 0 - I - 0x0095EC 02:95DC: 12        .byte $12   ; 
- D 0 - I - 0x0095ED 02:95DD: 8C        .byte $8C   ; 
- D 0 - I - 0x0095EE 02:95DE: 00        .byte $00   ; 
- D 0 - I - 0x0095EF 02:95DF: 00        .byte $00   ; 
- D 0 - I - 0x0095F0 02:95E0: 14        .byte $14   ; 
- D 0 - I - 0x0095F1 02:95E1: 00        .byte $00   ; 
- D 0 - I - 0x0095F2 02:95E2: 00        .byte $00   ; 
- D 0 - I - 0x0095F3 02:95E3: 00        .byte $00   ; 
- D 0 - I - 0x0095F4 02:95E4: 00        .byte $00   ; 
- D 0 - I - 0x0095F5 02:95E5: 00        .byte $00   ; 
- - - - - - 0x0095F6 02:95E6: 00        .byte $00   ; 
- - - - - - 0x0095F7 02:95E7: 00        .byte $00   ; 
- - - - - - 0x0095F8 02:95E8: 00        .byte $00   ; 
- - - - - - 0x0095F9 02:95E9: 00        .byte $00   ; 
- - - - - - 0x0095FA 02:95EA: 00        .byte $00   ; 
- - - - - - 0x0095FB 02:95EB: 15        .byte $15   ; 
- - - - - - 0x0095FC 02:95EC: 00        .byte $00   ; 
- - - - - - 0x0095FD 02:95ED: 00        .byte $00   ; 
off_95EE_01:
- D 0 - I - 0x0095FE 02:95EE: 00        .byte $00   ; 
- D 0 - I - 0x0095FF 02:95EF: 00        .byte $00   ; 
- D 0 - I - 0x009600 02:95F0: 14        .byte $14   ; 
- D 0 - I - 0x009601 02:95F1: 25        .byte $25   ; 
- D 0 - I - 0x009602 02:95F2: 00        .byte $00   ; 
- D 0 - I - 0x009603 02:95F3: 00        .byte $00   ; 
- D 0 - I - 0x009604 02:95F4: 14        .byte $14   ; 
- D 0 - I - 0x009605 02:95F5: 00        .byte $00   ; 
- D 0 - I - 0x009606 02:95F6: 00        .byte $00   ; 
- D 0 - I - 0x009607 02:95F7: 00        .byte $00   ; 
- D 0 - I - 0x009608 02:95F8: 00        .byte $00   ; 
- D 0 - I - 0x009609 02:95F9: 00        .byte $00   ; 
- D 0 - I - 0x00960A 02:95FA: 00        .byte $00   ; 
- D 0 - I - 0x00960B 02:95FB: 00        .byte $00   ; 
- D 0 - I - 0x00960C 02:95FC: 00        .byte $00   ; 
- D 0 - I - 0x00960D 02:95FD: 24        .byte $24   ; 
off_95FE_01:
- D 0 - I - 0x00960E 02:95FE: 00        .byte $00   ; 
- D 0 - I - 0x00960F 02:95FF: 00        .byte $00   ; 
- D 0 - I - 0x009610 02:9600: 00        .byte $00   ; 
- D 0 - I - 0x009611 02:9601: 00        .byte $00   ; 
- D 0 - I - 0x009612 02:9602: 00        .byte $00   ; 
- D 0 - I - 0x009613 02:9603: 00        .byte $00   ; 
- D 0 - I - 0x009614 02:9604: 00        .byte $00   ; 
- D 0 - I - 0x009615 02:9605: 00        .byte $00   ; 
- - - - - - 0x009616 02:9606: 00        .byte $00   ; 
- D 0 - I - 0x009617 02:9607: 00        .byte $00   ; 
- D 0 - I - 0x009618 02:9608: 00        .byte $00   ; 
- D 0 - I - 0x009619 02:9609: 00        .byte $00   ; 
- D 0 - I - 0x00961A 02:960A: 00        .byte $00   ; 
- D 0 - I - 0x00961B 02:960B: 00        .byte $00   ; 
- D 0 - I - 0x00961C 02:960C: 14        .byte $14   ; 
- D 0 - I - 0x00961D 02:960D: 00        .byte $00   ; 
- D 0 - I - 0x00961E 02:960E: 23        .byte $23   ; 
- D 0 - I - 0x00961F 02:960F: 00        .byte $00   ; 
- D 0 - I - 0x009620 02:9610: 00        .byte $00   ; 
- D 0 - I - 0x009621 02:9611: 00        .byte $00   ; 
- D 0 - I - 0x009622 02:9612: 00        .byte $00   ; 
- D 0 - I - 0x009623 02:9613: 00        .byte $00   ; 
- D 0 - I - 0x009624 02:9614: 00        .byte $00   ; 
- D 0 - I - 0x009625 02:9615: 00        .byte $00   ; 
- D 0 - I - 0x009626 02:9616: 00        .byte $00   ; 
- D 0 - I - 0x009627 02:9617: 14        .byte $14   ; 
- D 0 - I - 0x009628 02:9618: 00        .byte $00   ; 
- D 0 - I - 0x009629 02:9619: 00        .byte $00   ; 
- D 0 - I - 0x00962A 02:961A: 22        .byte $22   ; 
- D 0 - I - 0x00962B 02:961B: 00        .byte $00   ; 
- D 0 - I - 0x00962C 02:961C: 00        .byte $00   ; 
- D 0 - I - 0x00962D 02:961D: 00        .byte $00   ; 
off_961E_02:
- D 0 - I - 0x00962E 02:961E: 00        .byte $00   ; 
- D 0 - I - 0x00962F 02:961F: 00        .byte $00   ; 
- D 0 - I - 0x009630 02:9620: 00        .byte $00   ; 
- D 0 - I - 0x009631 02:9621: 26        .byte $26   ; 
- D 0 - I - 0x009632 02:9622: 00        .byte $00   ; 
- D 0 - I - 0x009633 02:9623: 00        .byte $00   ; 
- D 0 - I - 0x009634 02:9624: 40        .byte $40   ; 
- D 0 - I - 0x009635 02:9625: 54        .byte $54   ; 
- D 0 - I - 0x009636 02:9626: 54        .byte $54   ; 
- D 0 - I - 0x009637 02:9627: 54        .byte $54   ; 
- D 0 - I - 0x009638 02:9628: 54        .byte $54   ; 
- D 0 - I - 0x009639 02:9629: 42        .byte $42   ; 
- D 0 - I - 0x00963A 02:962A: 15        .byte $15   ; 
- D 0 - I - 0x00963B 02:962B: 00        .byte $00   ; 
- D 0 - I - 0x00963C 02:962C: 00        .byte $00   ; 
- D 0 - I - 0x00963D 02:962D: 25        .byte $25   ; 
- D 0 - I - 0x00963E 02:962E: 00        .byte $00   ; 
- D 0 - I - 0x00963F 02:962F: 00        .byte $00   ; 
- D 0 - I - 0x009640 02:9630: 00        .byte $00   ; 
- D 0 - I - 0x009641 02:9631: 00        .byte $00   ; 
- D 0 - I - 0x009642 02:9632: 00        .byte $00   ; 
- D 0 - I - 0x009643 02:9633: 00        .byte $00   ; 
- D 0 - I - 0x009644 02:9634: 14        .byte $14   ; 
off_9635_1A:
- D 0 - I - 0x009645 02:9635: 00        .byte $00   ; 
- D 0 - I - 0x009646 02:9636: 00        .byte $00   ; 
- D 0 - I - 0x009647 02:9637: 00        .byte $00   ; 
- D 0 - I - 0x009648 02:9638: 14        .byte $14   ; 
- D 0 - I - 0x009649 02:9639: 00        .byte $00   ; 
- D 0 - I - 0x00964A 02:963A: 00        .byte $00   ; 
- D 0 - I - 0x00964B 02:963B: 00        .byte $00   ; 
- D 0 - I - 0x00964C 02:963C: 00        .byte $00   ; 
- D 0 - I - 0x00964D 02:963D: 00        .byte $00   ; 
- D 0 - I - 0x00964E 02:963E: 14        .byte $14   ; 
- D 0 - I - 0x00964F 02:963F: 00        .byte $00   ; 
- D 0 - I - 0x009650 02:9640: 00        .byte $00   ; 
- D 0 - I - 0x009651 02:9641: 00        .byte $00   ; 
- D 0 - I - 0x009652 02:9642: 00        .byte $00   ; 
- D 0 - I - 0x009653 02:9643: 40        .byte $40   ; 
- D 0 - I - 0x009654 02:9644: 54        .byte $54   ; 
- D 0 - I - 0x009655 02:9645: 7E        .byte $7E   ; 
- D 0 - I - 0x009656 02:9646: 6C        .byte $6C   ; 
- D 0 - I - 0x009657 02:9647: 6C        .byte $6C   ; 
- D 0 - I - 0x009658 02:9648: 6C        .byte $6C   ; 
- D 0 - I - 0x009659 02:9649: 6C        .byte $6C   ; 
- D 0 - I - 0x00965A 02:964A: 6C        .byte $6C   ; 
- D 0 - I - 0x00965B 02:964B: 6C        .byte $6C   ; 
- D 0 - I - 0x00965C 02:964C: 68        .byte $68   ; 
- D 0 - I - 0x00965D 02:964D: 4E        .byte $4E   ; 
- D 0 - I - 0x00965E 02:964E: 00        .byte $00   ; 
- D 0 - I - 0x00965F 02:964F: 00        .byte $00   ; 
- D 0 - I - 0x009660 02:9650: 00        .byte $00   ; 
- D 0 - I - 0x009661 02:9651: 29        .byte $29   ; 
- D 0 - I - 0x009662 02:9652: 2A        .byte $2A   ; 
- D 0 - I - 0x009663 02:9653: 00        .byte $00   ; 
- D 0 - I - 0x009664 02:9654: 1B        .byte $1B   ; 
off_9655_04:
- D 0 - I - 0x009665 02:9655: 55        .byte $55   ; 
- D 0 - I - 0x009666 02:9656: 43        .byte $43   ; 
- D 0 - I - 0x009667 02:9657: 04        .byte $04   ; 
- D 0 - I - 0x009668 02:9658: 37        .byte $37   ; 
- D 0 - I - 0x009669 02:9659: 2C        .byte $2C   ; 
- D 0 - I - 0x00966A 02:965A: 04        .byte $04   ; 
- D 0 - I - 0x00966B 02:965B: 61        .byte $61   ; 
- D 0 - I - 0x00966C 02:965C: 6D        .byte $6D   ; 
- D 0 - I - 0x00966D 02:965D: 6D        .byte $6D   ; 
- D 0 - I - 0x00966E 02:965E: 6D        .byte $6D   ; 
- D 0 - I - 0x00966F 02:965F: 70        .byte $70   ; 
- D 0 - I - 0x009670 02:9660: 7D        .byte $7D   ; 
- D 0 - I - 0x009671 02:9661: 55        .byte $55   ; 
- D 0 - I - 0x009672 02:9662: 43        .byte $43   ; 
- D 0 - I - 0x009673 02:9663: 04        .byte $04   ; 
- D 0 - I - 0x009674 02:9664: 2B        .byte $2B   ; 
- D 0 - I - 0x009675 02:9665: 30        .byte $30   ; 
off_9666_07:
- D 0 - I - 0x009676 02:9666: 04        .byte $04   ; 
- D 0 - I - 0x009677 02:9667: 04        .byte $04   ; 
- D 0 - I - 0x009678 02:9668: 04        .byte $04   ; 
- D 0 - I - 0x009679 02:9669: 04        .byte $04   ; 
- D 0 - I - 0x00967A 02:966A: 04        .byte $04   ; 
- D 0 - I - 0x00967B 02:966B: 04        .byte $04   ; 
- D 0 - I - 0x00967C 02:966C: 04        .byte $04   ; 
- - - - - - 0x00967D 02:966D: 04        .byte $04   ; 
- - - - - - 0x00967E 02:966E: 04        .byte $04   ; 
- D 0 - I - 0x00967F 02:966F: 04        .byte $04   ; 
- D 0 - I - 0x009680 02:9670: 04        .byte $04   ; 
- D 0 - I - 0x009681 02:9671: 04        .byte $04   ; 
- D 0 - I - 0x009682 02:9672: 04        .byte $04   ; 
- D 0 - I - 0x009683 02:9673: 04        .byte $04   ; 
- D 0 - I - 0x009684 02:9674: 04        .byte $04   ; 
- D 0 - I - 0x009685 02:9675: 04        .byte $04   ; 
- D 0 - I - 0x009686 02:9676: 04        .byte $04   ; 
- D 0 - I - 0x009687 02:9677: 04        .byte $04   ; 
- D 0 - I - 0x009688 02:9678: 04        .byte $04   ; 
- D 0 - I - 0x009689 02:9679: 33        .byte $33   ; 
- D 0 - I - 0x00968A 02:967A: 04        .byte $04   ; 
- D 0 - I - 0x00968B 02:967B: 85        .byte $85   ; 
- D 0 - I - 0x00968C 02:967C: 04        .byte $04   ; 
- D 0 - I - 0x00968D 02:967D: 04        .byte $04   ; 
- D 0 - I - 0x00968E 02:967E: 45        .byte $45   ; 
- D 0 - I - 0x00968F 02:967F: 5B        .byte $5B   ; 
- D 0 - I - 0x009690 02:9680: 7B        .byte $7B   ; 
- D 0 - I - 0x009691 02:9681: 6D        .byte $6D   ; 
- D 0 - I - 0x009692 02:9682: 6D        .byte $6D   ; 
- D 0 - I - 0x009693 02:9683: 67        .byte $67   ; 
- D 0 - I - 0x009694 02:9684: 04        .byte $04   ; 
- D 0 - I - 0x009695 02:9685: 04        .byte $04   ; 
off_9686_0A:
- D 0 - I - 0x009696 02:9686: 04        .byte $04   ; 
- D 0 - I - 0x009697 02:9687: 4D        .byte $4D   ; 
- D 0 - I - 0x009698 02:9688: 61        .byte $61   ; 
- D 0 - I - 0x009699 02:9689: 6D        .byte $6D   ; 
- D 0 - I - 0x00969A 02:968A: 6D        .byte $6D   ; 
- D 0 - I - 0x00969B 02:968B: 6D        .byte $6D   ; 
- D 0 - I - 0x00969C 02:968C: 6D        .byte $6D   ; 
- D 0 - I - 0x00969D 02:968D: 6D        .byte $6D   ; 
- D 0 - I - 0x00969E 02:968E: 6D        .byte $6D   ; 
- D 0 - I - 0x00969F 02:968F: 79        .byte $79   ; 
- D 0 - I - 0x0096A0 02:9690: 5E        .byte $5E   ; 
- D 0 - I - 0x0096A1 02:9691: 47        .byte $47   ; 
- D 0 - I - 0x0096A2 02:9692: 04        .byte $04   ; 
- D 0 - I - 0x0096A3 02:9693: 04        .byte $04   ; 
- D 0 - I - 0x0096A4 02:9694: 88        .byte $88   ; 
- D 0 - I - 0x0096A5 02:9695: 89        .byte $89   ; 
- D 0 - I - 0x0096A6 02:9696: 8A        .byte $8A   ; 
- D 0 - I - 0x0096A7 02:9697: 04        .byte $04   ; 
- D 0 - I - 0x0096A8 02:9698: 04        .byte $04   ; 
- D 0 - I - 0x0096A9 02:9699: 04        .byte $04   ; 
off_969A_08:
- D 0 - I - 0x0096AA 02:969A: 04        .byte $04   ; 
- D 0 - I - 0x0096AB 02:969B: 04        .byte $04   ; 
- D 0 - I - 0x0096AC 02:969C: 04        .byte $04   ; 
- D 0 - I - 0x0096AD 02:969D: 04        .byte $04   ; 
- - - - - - 0x0096AE 02:969E: 04        .byte $04   ; 
- - - - - - 0x0096AF 02:969F: 04        .byte $04   ; 
- - - - - - 0x0096B0 02:96A0: 04        .byte $04   ; 
- - - - - - 0x0096B1 02:96A1: 16        .byte $16   ; 
- - - - - - 0x0096B2 02:96A2: 04        .byte $04   ; 
- D 0 - I - 0x0096B3 02:96A3: 04        .byte $04   ; 
- D 0 - I - 0x0096B4 02:96A4: 04        .byte $04   ; 
- D 0 - I - 0x0096B5 02:96A5: 04        .byte $04   ; 
- D 0 - I - 0x0096B6 02:96A6: 04        .byte $04   ; 
- D 0 - I - 0x0096B7 02:96A7: 16        .byte $16   ; 
- D 0 - I - 0x0096B8 02:96A8: 04        .byte $04   ; 
- D 0 - I - 0x0096B9 02:96A9: 04        .byte $04   ; 
- D 0 - I - 0x0096BA 02:96AA: 17        .byte $17   ; 
- D 0 - I - 0x0096BB 02:96AB: 04        .byte $04   ; 
- D 0 - I - 0x0096BC 02:96AC: 04        .byte $04   ; 
- D 0 - I - 0x0096BD 02:96AD: 82        .byte $82   ; 
- D 0 - I - 0x0096BE 02:96AE: 83        .byte $83   ; 
- D 0 - I - 0x0096BF 02:96AF: 84        .byte $84   ; 
- D 0 - I - 0x0096C0 02:96B0: 04        .byte $04   ; 
- D 0 - I - 0x0096C1 02:96B1: 04        .byte $04   ; 
- D 0 - I - 0x0096C2 02:96B2: 41        .byte $41   ; 
- D 0 - I - 0x0096C3 02:96B3: 55        .byte $55   ; 
- D 0 - I - 0x0096C4 02:96B4: 55        .byte $55   ; 
- D 0 - I - 0x0096C5 02:96B5: 55        .byte $55   ; 
- D 0 - I - 0x0096C6 02:96B6: 55        .byte $55   ; 
off_96B7_04:
- D 0 - I - 0x0096C7 02:96B7: 43        .byte $43   ; 
- D 0 - I - 0x0096C8 02:96B8: 04        .byte $04   ; 
- D 0 - I - 0x0096C9 02:96B9: 04        .byte $04   ; 
- D 0 - I - 0x0096CA 02:96BA: 37        .byte $37   ; 
- D 0 - I - 0x0096CB 02:96BB: 2C        .byte $2C   ; 
- D 0 - I - 0x0096CC 02:96BC: 04        .byte $04   ; 
- D 0 - I - 0x0096CD 02:96BD: 41        .byte $41   ; 
- D 0 - I - 0x0096CE 02:96BE: 55        .byte $55   ; 
- D 0 - I - 0x0096CF 02:96BF: 7F        .byte $7F   ; 
- D 0 - I - 0x0096D0 02:96C0: 6D        .byte $6D   ; 
- D 0 - I - 0x0096D1 02:96C1: 71        .byte $71   ; 
- D 0 - I - 0x0096D2 02:96C2: 67        .byte $67   ; 
- D 0 - I - 0x0096D3 02:96C3: 4B        .byte $4B   ; 
- D 0 - I - 0x0096D4 02:96C4: 04        .byte $04   ; 
- D 0 - I - 0x0096D5 02:96C5: 04        .byte $04   ; 
- D 0 - I - 0x0096D6 02:96C6: 2B        .byte $2B   ; 
- D 0 - I - 0x0096D7 02:96C7: 30        .byte $30   ; 
off_96C8_0C:
- D 0 - I - 0x0096D8 02:96C8: 04        .byte $04   ; 
- D 0 - I - 0x0096D9 02:96C9: 04        .byte $04   ; 
- D 0 - I - 0x0096DA 02:96CA: 04        .byte $04   ; 
- D 0 - I - 0x0096DB 02:96CB: 04        .byte $04   ; 
- D 0 - I - 0x0096DC 02:96CC: 04        .byte $04   ; 
- D 0 - I - 0x0096DD 02:96CD: 04        .byte $04   ; 
- D 0 - I - 0x0096DE 02:96CE: 04        .byte $04   ; 
- - - - - - 0x0096DF 02:96CF: 04        .byte $04   ; 
- - - - - - 0x0096E0 02:96D0: 04        .byte $04   ; 
- D 0 - I - 0x0096E1 02:96D1: 04        .byte $04   ; 
- D 0 - I - 0x0096E2 02:96D2: 04        .byte $04   ; 
- D 0 - I - 0x0096E3 02:96D3: 04        .byte $04   ; 
- D 0 - I - 0x0096E4 02:96D4: 04        .byte $04   ; 
- D 0 - I - 0x0096E5 02:96D5: 04        .byte $04   ; 
- D 0 - I - 0x0096E6 02:96D6: 04        .byte $04   ; 
- D 0 - I - 0x0096E7 02:96D7: 04        .byte $04   ; 
- D 0 - I - 0x0096E8 02:96D8: 04        .byte $04   ; 
- D 0 - I - 0x0096E9 02:96D9: 04        .byte $04   ; 
- D 0 - I - 0x0096EA 02:96DA: 36        .byte $36   ; 
- D 0 - I - 0x0096EB 02:96DB: 11        .byte $11   ; 
- D 0 - I - 0x0096EC 02:96DC: 11        .byte $11   ; 
- D 0 - I - 0x0096ED 02:96DD: 11        .byte $11   ; 
- D 0 - I - 0x0096EE 02:96DE: 11        .byte $11   ; 
- D 0 - I - 0x0096EF 02:96DF: 11        .byte $11   ; 
- D 0 - I - 0x0096F0 02:96E0: E5        .byte $E5   ; 
- D 0 - I - 0x0096F1 02:96E1: E8        .byte $E8   ; 
- D 0 - I - 0x0096F2 02:96E2: E8        .byte $E8   ; 
- D 0 - I - 0x0096F3 02:96E3: E8        .byte $E8   ; 
- D 0 - I - 0x0096F4 02:96E4: E8        .byte $E8   ; 
- D 0 - I - 0x0096F5 02:96E5: E8        .byte $E8   ; 
- D 0 - I - 0x0096F6 02:96E6: E9        .byte $E9   ; 
off_96E7_0C:
- D 0 - I - 0x0096F7 02:96E7: 6D        .byte $6D   ; 
- D 0 - I - 0x0096F8 02:96E8: EA        .byte $EA   ; 
- D 0 - I - 0x0096F9 02:96E9: E9        .byte $E9   ; 
- D 0 - I - 0x0096FA 02:96EA: E9        .byte $E9   ; 
- D 0 - I - 0x0096FB 02:96EB: E9        .byte $E9   ; 
- D 0 - I - 0x0096FC 02:96EC: E9        .byte $E9   ; 
- D 0 - I - 0x0096FD 02:96ED: E9        .byte $E9   ; 
- D 0 - I - 0x0096FE 02:96EE: E7        .byte $E7   ; 
- D 0 - I - 0x0096FF 02:96EF: 11        .byte $11   ; 
- D 0 - I - 0x009700 02:96F0: 11        .byte $11   ; 
- D 0 - I - 0x009701 02:96F1: 11        .byte $11   ; 
- D 0 - I - 0x009702 02:96F2: 11        .byte $11   ; 
- D 0 - I - 0x009703 02:96F3: 11        .byte $11   ; 
- D 0 - I - 0x009704 02:96F4: 31        .byte $31   ; 
- D 0 - I - 0x009705 02:96F5: 04        .byte $04   ; 
- D 0 - I - 0x009706 02:96F6: 04        .byte $04   ; 
- D 0 - I - 0x009707 02:96F7: 04        .byte $04   ; 
- D 0 - I - 0x009708 02:96F8: 04        .byte $04   ; 
- D 0 - I - 0x009709 02:96F9: 04        .byte $04   ; 
- D 0 - I - 0x00970A 02:96FA: 04        .byte $04   ; 
- D 0 - I - 0x00970B 02:96FB: 04        .byte $04   ; 
- D 0 - I - 0x00970C 02:96FC: 04        .byte $04   ; 
- D 0 - I - 0x00970D 02:96FD: 04        .byte $04   ; 
- D 0 - I - 0x00970E 02:96FE: 04        .byte $04   ; 
- - - - - - 0x00970F 02:96FF: 04        .byte $04   ; 
- - - - - - 0x009710 02:9700: 16        .byte $16   ; 
- - - - - - 0x009711 02:9701: 04        .byte $04   ; 
- - - - - - 0x009712 02:9702: 04        .byte $04   ; 
- - - - - - 0x009713 02:9703: 04        .byte $04   ; 
- - - - - - 0x009714 02:9704: 04        .byte $04   ; 
- - - - - - 0x009715 02:9705: 04        .byte $04   ; 
- - - - - - 0x009716 02:9706: 04        .byte $04   ; 
off_9707_0B:
- D 0 - I - 0x009717 02:9707: 16        .byte $16   ; 
- D 0 - I - 0x009718 02:9708: 04        .byte $04   ; 
- D 0 - I - 0x009719 02:9709: 45        .byte $45   ; 
- D 0 - I - 0x00971A 02:970A: 5B        .byte $5B   ; 
- D 0 - I - 0x00971B 02:970B: 7B        .byte $7B   ; 
- D 0 - I - 0x00971C 02:970C: 6D        .byte $6D   ; 
- D 0 - I - 0x00971D 02:970D: 6D        .byte $6D   ; 
- D 0 - I - 0x00971E 02:970E: 6D        .byte $6D   ; 
- D 0 - I - 0x00971F 02:970F: 70        .byte $70   ; 
- D 0 - I - 0x009720 02:9710: 67        .byte $67   ; 
- D 0 - I - 0x009721 02:9711: 4F        .byte $4F   ; 
- D 0 - I - 0x009722 02:9712: 04        .byte $04   ; 
- D 0 - I - 0x009723 02:9713: 04        .byte $04   ; 
- D 0 - I - 0x009724 02:9714: 04        .byte $04   ; 
- D 0 - I - 0x009725 02:9715: 87        .byte $87   ; 
- D 0 - I - 0x009726 02:9716: 04        .byte $04   ; 
- D 0 - I - 0x009727 02:9717: 36        .byte $36   ; 
- D 0 - I - 0x009728 02:9718: 04        .byte $04   ; 
- D 0 - I - 0x009729 02:9719: 04        .byte $04   ; 
- D 0 - I - 0x00972A 02:971A: 04        .byte $04   ; 
- D 0 - I - 0x00972B 02:971B: 17        .byte $17   ; 
off_971C_18:
- D 0 - I - 0x00972C 02:971C: 04        .byte $04   ; 
- D 0 - I - 0x00972D 02:971D: 04        .byte $04   ; 
- D 0 - I - 0x00972E 02:971E: 04        .byte $04   ; 
- - - - - - 0x00972F 02:971F: 04        .byte $04   ; 
- - - - - - 0x009730 02:9720: 04        .byte $04   ; 
- - - - - - 0x009731 02:9721: 04        .byte $04   ; 
- - - - - - 0x009732 02:9722: 04        .byte $04   ; 
- - - - - - 0x009733 02:9723: 04        .byte $04   ; 
- - - - - - 0x009734 02:9724: 04        .byte $04   ; 
- D 0 - I - 0x009735 02:9725: 04        .byte $04   ; 
- D 0 - I - 0x009736 02:9726: 04        .byte $04   ; 
- D 0 - I - 0x009737 02:9727: 04        .byte $04   ; 
- D 0 - I - 0x009738 02:9728: A9        .byte $A9   ; 
- D 0 - I - 0x009739 02:9729: AA        .byte $AA   ; 
- D 0 - I - 0x00973A 02:972A: D6        .byte $D6   ; 
- D 0 - I - 0x00973B 02:972B: D6        .byte $D6   ; 
- D 0 - I - 0x00973C 02:972C: A0        .byte $A0   ; 
- D 0 - I - 0x00973D 02:972D: 32        .byte $32   ; 
- D 0 - I - 0x00973E 02:972E: 04        .byte $04   ; 
- D 0 - I - 0x00973F 02:972F: 04        .byte $04   ; 
- D 0 - I - 0x009740 02:9730: 04        .byte $04   ; 
- D 0 - I - 0x009741 02:9731: 17        .byte $17   ; 
- D 0 - I - 0x009742 02:9732: 35        .byte $35   ; 
- D 0 - I - 0x009743 02:9733: 04        .byte $04   ; 
- D 0 - I - 0x009744 02:9734: 04        .byte $04   ; 
- D 0 - I - 0x009745 02:9735: 04        .byte $04   ; 
- D 0 - I - 0x009746 02:9736: 04        .byte $04   ; 
- D 0 - I - 0x009747 02:9737: 04        .byte $04   ; 
- D 0 - I - 0x009748 02:9738: 04        .byte $04   ; 
- D 0 - I - 0x009749 02:9739: 31        .byte $31   ; 
- D 0 - I - 0x00974A 02:973A: 04        .byte $04   ; 
- D 0 - I - 0x00974B 02:973B: 2F        .byte $2F   ; 
off_973C_0C:
- D 0 - I - 0x00974C 02:973C: 00        .byte $00   ; 
- D 0 - I - 0x00974D 02:973D: 00        .byte $00   ; 
- D 0 - I - 0x00974E 02:973E: 00        .byte $00   ; 
- D 0 - I - 0x00974F 02:973F: 4C        .byte $4C   ; 
- D 0 - I - 0x009750 02:9740: 60        .byte $60   ; 
- D 0 - I - 0x009751 02:9741: 6E        .byte $6E   ; 
- D 0 - I - 0x009752 02:9742: 6C        .byte $6C   ; 
- D 0 - I - 0x009753 02:9743: 6C        .byte $6C   ; 
- D 0 - I - 0x009754 02:9744: 6C        .byte $6C   ; 
- D 0 - I - 0x009755 02:9745: 68        .byte $68   ; 
- D 0 - I - 0x009756 02:9746: 00        .byte $00   ; 
- D 0 - I - 0x009757 02:9747: 00        .byte $00   ; 
- D 0 - I - 0x009758 02:9748: 00        .byte $00   ; 
- D 0 - I - 0x009759 02:9749: 85        .byte $85   ; 
- D 0 - I - 0x00975A 02:974A: 86        .byte $86   ; 
- D 0 - I - 0x00975B 02:974B: 00        .byte $00   ; 
- D 0 - I - 0x00975C 02:974C: 1B        .byte $1B   ; 
- D 0 - I - 0x00975D 02:974D: 20        .byte $20   ; 
- D 0 - I - 0x00975E 02:974E: 00        .byte $00   ; 
- D 0 - I - 0x00975F 02:974F: 00        .byte $00   ; 
- D 0 - I - 0x009760 02:9750: 00        .byte $00   ; 
- D 0 - I - 0x009761 02:9751: 00        .byte $00   ; 
- D 0 - I - 0x009762 02:9752: 00        .byte $00   ; 
- D 0 - I - 0x009763 02:9753: 00        .byte $00   ; 
- - - - - - 0x009764 02:9754: 00        .byte $00   ; 
- - - - - - 0x009765 02:9755: 00        .byte $00   ; 
- - - - - - 0x009766 02:9756: 00        .byte $00   ; 
- - - - - - 0x009767 02:9757: 00        .byte $00   ; 
- - - - - - 0x009768 02:9758: 00        .byte $00   ; 
- - - - - - 0x009769 02:9759: 00        .byte $00   ; 
- - - - - - 0x00976A 02:975A: 00        .byte $00   ; 
- - - - - - 0x00976B 02:975B: 00        .byte $00   ; 
off_975C_0E:
- D 0 - I - 0x00976C 02:975C: 00        .byte $00   ; 
- D 0 - I - 0x00976D 02:975D: 00        .byte $00   ; 
- D 0 - I - 0x00976E 02:975E: 14        .byte $14   ; 
- D 0 - I - 0x00976F 02:975F: 00        .byte $00   ; 
- D 0 - I - 0x009770 02:9760: 44        .byte $44   ; 
- D 0 - I - 0x009771 02:9761: 5A        .byte $5A   ; 
- D 0 - I - 0x009772 02:9762: 5C        .byte $5C   ; 
- D 0 - I - 0x009773 02:9763: 5D        .byte $5D   ; 
- D 0 - I - 0x009774 02:9764: 5D        .byte $5D   ; 
- D 0 - I - 0x009775 02:9765: 46        .byte $46   ; 
- D 0 - I - 0x009776 02:9766: 14        .byte $14   ; 
- D 0 - I - 0x009777 02:9767: 00        .byte $00   ; 
- D 0 - I - 0x009778 02:9768: 00        .byte $00   ; 
off_9769_09:
- D 0 - I - 0x009779 02:9769: 00        .byte $00   ; 
- D 0 - I - 0x00977A 02:976A: 00        .byte $00   ; 
- D 0 - I - 0x00977B 02:976B: 00        .byte $00   ; 
- D 0 - I - 0x00977C 02:976C: 00        .byte $00   ; 
- D 0 - I - 0x00977D 02:976D: 00        .byte $00   ; 
- D 0 - I - 0x00977E 02:976E: 00        .byte $00   ; 
- D 0 - I - 0x00977F 02:976F: 00        .byte $00   ; 
- D 0 - I - 0x009780 02:9770: 00        .byte $00   ; 
- D 0 - I - 0x009781 02:9771: 00        .byte $00   ; 
- D 0 - I - 0x009782 02:9772: 00        .byte $00   ; 
- D 0 - I - 0x009783 02:9773: 00        .byte $00   ; 
- D 0 - I - 0x009784 02:9774: 00        .byte $00   ; 
- D 0 - I - 0x009785 02:9775: 00        .byte $00   ; 
- D 0 - I - 0x009786 02:9776: 00        .byte $00   ; 
- D 0 - I - 0x009787 02:9777: 00        .byte $00   ; 
- D 0 - I - 0x009788 02:9778: 00        .byte $00   ; 
- D 0 - I - 0x009789 02:9779: 00        .byte $00   ; 
- D 0 - I - 0x00978A 02:977A: 00        .byte $00   ; 
- D 0 - I - 0x00978B 02:977B: 00        .byte $00   ; 
- D 0 - I - 0x00978C 02:977C: 21        .byte $21   ; 
- D 0 - I - 0x00978D 02:977D: 00        .byte $00   ; 
- D 0 - I - 0x00978E 02:977E: 00        .byte $00   ; 
- D 0 - I - 0x00978F 02:977F: 00        .byte $00   ; 
- D 0 - I - 0x009790 02:9780: 00        .byte $00   ; 
- D 0 - I - 0x009791 02:9781: 00        .byte $00   ; 
- D 0 - I - 0x009792 02:9782: 48        .byte $48   ; 
- D 0 - I - 0x009793 02:9783: 60        .byte $60   ; 
- D 0 - I - 0x009794 02:9784: 6C        .byte $6C   ; 
- D 0 - I - 0x009795 02:9785: 6E        .byte $6E   ; 
- D 0 - I - 0x009796 02:9786: 66        .byte $66   ; 
- D 0 - I - 0x009797 02:9787: 4A        .byte $4A   ; 
- D 0 - I - 0x009798 02:9788: 00        .byte $00   ; 
off_9789_0D:
- - - - - - 0x009799 02:9789: 00        .byte $00   ; 
- - - - - - 0x00979A 02:978A: 00        .byte $00   ; 
- - - - - - 0x00979B 02:978B: 00        .byte $00   ; 
- - - - - - 0x00979C 02:978C: 00        .byte $00   ; 
- - - - - - 0x00979D 02:978D: 00        .byte $00   ; 
- - - - - - 0x00979E 02:978E: 00        .byte $00   ; 
- - - - - - 0x00979F 02:978F: 00        .byte $00   ; 
- - - - - - 0x0097A0 02:9790: 14        .byte $14   ; 
- - - - - - 0x0097A1 02:9791: 00        .byte $00   ; 
- D 0 - I - 0x0097A2 02:9792: 00        .byte $00   ; 
- D 0 - I - 0x0097A3 02:9793: 00        .byte $00   ; 
- D 0 - I - 0x0097A4 02:9794: 00        .byte $00   ; 
- D 0 - I - 0x0097A5 02:9795: 00        .byte $00   ; 
- D 0 - I - 0x0097A6 02:9796: 00        .byte $00   ; 
- D 0 - I - 0x0097A7 02:9797: A1        .byte $A1   ; 
- D 0 - I - 0x0097A8 02:9798: A2        .byte $A2   ; 
- D 0 - I - 0x0097A9 02:9799: A3        .byte $A3   ; 
- D 0 - I - 0x0097AA 02:979A: A4        .byte $A4   ; 
- D 0 - I - 0x0097AB 02:979B: 25        .byte $25   ; 
- D 0 - I - 0x0097AC 02:979C: 00        .byte $00   ; 
- D 0 - I - 0x0097AD 02:979D: 00        .byte $00   ; 
- D 0 - I - 0x0097AE 02:979E: 00        .byte $00   ; 
- D 0 - I - 0x0097AF 02:979F: 60        .byte $60   ; 
- D 0 - I - 0x0097B0 02:97A0: 6E        .byte $6E   ; 
- D 0 - I - 0x0097B1 02:97A1: 6C        .byte $6C   ; 
- D 0 - I - 0x0097B2 02:97A2: 6C        .byte $6C   ; 
- D 0 - I - 0x0097B3 02:97A3: 6C        .byte $6C   ; 
- D 0 - I - 0x0097B4 02:97A4: 6C        .byte $6C   ; 
- D 0 - I - 0x0097B5 02:97A5: 6E        .byte $6E   ; 
off_97A6_0D:
- D 0 - I - 0x0097B6 02:97A6: 6C        .byte $6C   ; 
- D 0 - I - 0x0097B7 02:97A7: EF        .byte $EF   ; 
- D 0 - I - 0x0097B8 02:97A8: 6C        .byte $6C   ; 
- D 0 - I - 0x0097B9 02:97A9: 6C        .byte $6C   ; 
- D 0 - I - 0x0097BA 02:97AA: 6E        .byte $6E   ; 
- D 0 - I - 0x0097BB 02:97AB: 6C        .byte $6C   ; 
- D 0 - I - 0x0097BC 02:97AC: 6C        .byte $6C   ; 
- D 0 - I - 0x0097BD 02:97AD: 66        .byte $66   ; 
- D 0 - I - 0x0097BE 02:97AE: 4A        .byte $4A   ; 
- D 0 - I - 0x0097BF 02:97AF: 00        .byte $00   ; 
- D 0 - I - 0x0097C0 02:97B0: 00        .byte $00   ; 
- D 0 - I - 0x0097C1 02:97B1: 00        .byte $00   ; 
- D 0 - I - 0x0097C2 02:97B2: 00        .byte $00   ; 
- D 0 - I - 0x0097C3 02:97B3: 22        .byte $22   ; 
- D 0 - I - 0x0097C4 02:97B4: A0        .byte $A0   ; 
- D 0 - I - 0x0097C5 02:97B5: A1        .byte $A1   ; 
- D 0 - I - 0x0097C6 02:97B6: A2        .byte $A2   ; 
- D 0 - I - 0x0097C7 02:97B7: A3        .byte $A3   ; 
- D 0 - I - 0x0097C8 02:97B8: 00        .byte $00   ; 
- D 0 - I - 0x0097C9 02:97B9: 00        .byte $00   ; 
- D 0 - I - 0x0097CA 02:97BA: 00        .byte $00   ; 
- D 0 - I - 0x0097CB 02:97BB: 00        .byte $00   ; 
- D 0 - I - 0x0097CC 02:97BC: 00        .byte $00   ; 
- D 0 - I - 0x0097CD 02:97BD: 00        .byte $00   ; 
- - - - - - 0x0097CE 02:97BE: 00        .byte $00   ; 
- - - - - - 0x0097CF 02:97BF: 00        .byte $00   ; 
- - - - - - 0x0097D0 02:97C0: 00        .byte $00   ; 
- - - - - - 0x0097D1 02:97C1: 00        .byte $00   ; 
- - - - - - 0x0097D2 02:97C2: 00        .byte $00   ; 
- - - - - - 0x0097D3 02:97C3: 00        .byte $00   ; 
- - - - - - 0x0097D4 02:97C4: 00        .byte $00   ; 
- - - - - - 0x0097D5 02:97C5: 00        .byte $00   ; 
off_97C6_0E:
- - - - - - 0x0097D6 02:97C6: 00        .byte $00   ; 
- - - - - - 0x0097D7 02:97C7: 00        .byte $00   ; 
- - - - - - 0x0097D8 02:97C8: 00        .byte $00   ; 
- - - - - - 0x0097D9 02:97C9: 00        .byte $00   ; 
- - - - - - 0x0097DA 02:97CA: 00        .byte $00   ; 
- - - - - - 0x0097DB 02:97CB: 00        .byte $00   ; 
- - - - - - 0x0097DC 02:97CC: 00        .byte $00   ; 
- - - - - - 0x0097DD 02:97CD: 00        .byte $00   ; 
- - - - - - 0x0097DE 02:97CE: 00        .byte $00   ; 
- D 0 - I - 0x0097DF 02:97CF: 14        .byte $14   ; 
- D 0 - I - 0x0097E0 02:97D0: 00        .byte $00   ; 
- D 0 - I - 0x0097E1 02:97D1: 00        .byte $00   ; 
- D 0 - I - 0x0097E2 02:97D2: 00        .byte $00   ; 
- D 0 - I - 0x0097E3 02:97D3: B0        .byte $B0   ; 
- D 0 - I - 0x0097E4 02:97D4: B1        .byte $B1   ; 
- D 0 - I - 0x0097E5 02:97D5: B2        .byte $B2   ; 
- D 0 - I - 0x0097E6 02:97D6: B3        .byte $B3   ; 
- D 0 - I - 0x0097E7 02:97D7: B4        .byte $B4   ; 
- D 0 - I - 0x0097E8 02:97D8: 24        .byte $24   ; 
- D 0 - I - 0x0097E9 02:97D9: 00        .byte $00   ; 
- D 0 - I - 0x0097EA 02:97DA: 00        .byte $00   ; 
- D 0 - I - 0x0097EB 02:97DB: 15        .byte $15   ; 
- D 0 - I - 0x0097EC 02:97DC: 60        .byte $60   ; 
- D 0 - I - 0x0097ED 02:97DD: 6C        .byte $6C   ; 
- D 0 - I - 0x0097EE 02:97DE: 6C        .byte $6C   ; 
- D 0 - I - 0x0097EF 02:97DF: 6C        .byte $6C   ; 
- D 0 - I - 0x0097F0 02:97E0: 6C        .byte $6C   ; 
- D 0 - I - 0x0097F1 02:97E1: 6C        .byte $6C   ; 
- D 0 - I - 0x0097F2 02:97E2: 6C        .byte $6C   ; 
- D 0 - I - 0x0097F3 02:97E3: 6C        .byte $6C   ; 
- D 0 - I - 0x0097F4 02:97E4: EE        .byte $EE   ; 
off_97E5_08:
- D 0 - I - 0x0097F5 02:97E5: 6E        .byte $6E   ; 
- D 0 - I - 0x0097F6 02:97E6: 6C        .byte $6C   ; 
- D 0 - I - 0x0097F7 02:97E7: 69        .byte $69   ; 
- D 0 - I - 0x0097F8 02:97E8: 00        .byte $00   ; 
- D 0 - I - 0x0097F9 02:97E9: 00        .byte $00   ; 
- D 0 - I - 0x0097FA 02:97EA: 00        .byte $00   ; 
- D 0 - I - 0x0097FB 02:97EB: 60        .byte $60   ; 
- D 0 - I - 0x0097FC 02:97EC: 6C        .byte $6C   ; 
- D 0 - I - 0x0097FD 02:97ED: 6C        .byte $6C   ; 
- D 0 - I - 0x0097FE 02:97EE: 6C        .byte $6C   ; 
- D 0 - I - 0x0097FF 02:97EF: 6C        .byte $6C   ; 
- D 0 - I - 0x009800 02:97F0: 6C        .byte $6C   ; 
- D 0 - I - 0x009801 02:97F1: 6C        .byte $6C   ; 
- D 0 - I - 0x009802 02:97F2: 6E        .byte $6E   ; 
- D 0 - I - 0x009803 02:97F3: 69        .byte $69   ; 
- D 0 - I - 0x009804 02:97F4: 00        .byte $00   ; 
- D 0 - I - 0x009805 02:97F5: 23        .byte $23   ; 
- D 0 - I - 0x009806 02:97F6: 00        .byte $00   ; 
- D 0 - I - 0x009807 02:97F7: 00        .byte $00   ; 
- D 0 - I - 0x009808 02:97F8: 00        .byte $00   ; 
- D 0 - I - 0x009809 02:97F9: 14        .byte $14   ; 
- D 0 - I - 0x00980A 02:97FA: 00        .byte $00   ; 
off_97FB_0E:
- D 0 - I - 0x00980B 02:97FB: 00        .byte $00   ; 
- D 0 - I - 0x00980C 02:97FC: 00        .byte $00   ; 
- D 0 - I - 0x00980D 02:97FD: 00        .byte $00   ; 
- D 0 - I - 0x00980E 02:97FE: 00        .byte $00   ; 
- D 0 - I - 0x00980F 02:97FF: 00        .byte $00   ; 
- D 0 - I - 0x009810 02:9800: 14        .byte $14   ; 
- D 0 - I - 0x009811 02:9801: 00        .byte $00   ; 
- D 0 - I - 0x009812 02:9802: 00        .byte $00   ; 
- D 0 - I - 0x009813 02:9803: 00        .byte $00   ; 
- D 0 - I - 0x009814 02:9804: 00        .byte $00   ; 
- D 0 - I - 0x009815 02:9805: 00        .byte $00   ; 
- D 0 - I - 0x009816 02:9806: 15        .byte $15   ; 
- D 0 - I - 0x009817 02:9807: 00        .byte $00   ; 
- D 0 - I - 0x009818 02:9808: 00        .byte $00   ; 
- D 0 - I - 0x009819 02:9809: 60        .byte $60   ; 
- D 0 - I - 0x00981A 02:980A: 6C        .byte $6C   ; 
- D 0 - I - 0x00981B 02:980B: 6C        .byte $6C   ; 
- D 0 - I - 0x00981C 02:980C: 6C        .byte $6C   ; 
- D 0 - I - 0x00981D 02:980D: 6C        .byte $6C   ; 
- D 0 - I - 0x00981E 02:980E: 66        .byte $66   ; 
- D 0 - I - 0x00981F 02:980F: 00        .byte $00   ; 
- D 0 - I - 0x009820 02:9810: 15        .byte $15   ; 
off_9811_02:
- D 0 - I - 0x009821 02:9811: 00        .byte $00   ; 
- D 0 - I - 0x009822 02:9812: 00        .byte $00   ; 
- D 0 - I - 0x009823 02:9813: 14        .byte $14   ; 
- D 0 - I - 0x009824 02:9814: 00        .byte $00   ; 
- D 0 - I - 0x009825 02:9815: 00        .byte $00   ; 
- D 0 - I - 0x009826 02:9816: 00        .byte $00   ; 
- D 0 - I - 0x009827 02:9817: 00        .byte $00   ; 
- D 0 - I - 0x009828 02:9818: 00        .byte $00   ; 
- D 0 - I - 0x009829 02:9819: 00        .byte $00   ; 
- D 0 - I - 0x00982A 02:981A: 00        .byte $00   ; 
- D 0 - I - 0x00982B 02:981B: 00        .byte $00   ; 
- D 0 - I - 0x00982C 02:981C: 00        .byte $00   ; 
- D 0 - I - 0x00982D 02:981D: 00        .byte $00   ; 
- D 0 - I - 0x00982E 02:981E: 00        .byte $00   ; 
- D 0 - I - 0x00982F 02:981F: 00        .byte $00   ; 
- D 0 - I - 0x009830 02:9820: 00        .byte $00   ; 
- D 0 - I - 0x009831 02:9821: 22        .byte $22   ; 
- D 0 - I - 0x009832 02:9822: 00        .byte $00   ; 
- D 0 - I - 0x009833 02:9823: 15        .byte $15   ; 
- D 0 - I - 0x009834 02:9824: 00        .byte $00   ; 
- D 0 - I - 0x009835 02:9825: 40        .byte $40   ; 
- D 0 - I - 0x009836 02:9826: 54        .byte $54   ; 
- D 0 - I - 0x009837 02:9827: 54        .byte $54   ; 
- D 0 - I - 0x009838 02:9828: 54        .byte $54   ; 
- D 0 - I - 0x009839 02:9829: 54        .byte $54   ; 
- D 0 - I - 0x00983A 02:982A: 42        .byte $42   ; 
- D 0 - I - 0x00983B 02:982B: 00        .byte $00   ; 
- D 0 - I - 0x00983C 02:982C: 00        .byte $00   ; 
- D 0 - I - 0x00983D 02:982D: 21        .byte $21   ; 
- D 0 - I - 0x00983E 02:982E: 00        .byte $00   ; 
- D 0 - I - 0x00983F 02:982F: 40        .byte $40   ; 
- D 0 - I - 0x009840 02:9830: 54        .byte $54   ; 
off_9831_11:
- - - - - - 0x009841 02:9831: 00        .byte $00   ; 
- - - - - - 0x009842 02:9832: 00        .byte $00   ; 
- - - - - - 0x009843 02:9833: 00        .byte $00   ; 
- - - - - - 0x009844 02:9834: 00        .byte $00   ; 
- - - - - - 0x009845 02:9835: 00        .byte $00   ; 
- - - - - - 0x009846 02:9836: 00        .byte $00   ; 
- - - - - - 0x009847 02:9837: 00        .byte $00   ; 
- - - - - - 0x009848 02:9838: 00        .byte $00   ; 
- - - - - - 0x009849 02:9839: 00        .byte $00   ; 
- D 0 - I - 0x00984A 02:983A: 00        .byte $00   ; 
- D 0 - I - 0x00984B 02:983B: 00        .byte $00   ; 
- D 0 - I - 0x00984C 02:983C: 00        .byte $00   ; 
- D 0 - I - 0x00984D 02:983D: 00        .byte $00   ; 
- D 0 - I - 0x00984E 02:983E: 95        .byte $95   ; 
- D 0 - I - 0x00984F 02:983F: 96        .byte $96   ; 
- D 0 - I - 0x009850 02:9840: 97        .byte $97   ; 
- D 0 - I - 0x009851 02:9841: 98        .byte $98   ; 
- D 0 - I - 0x009852 02:9842: B4        .byte $B4   ; 
- D 0 - I - 0x009853 02:9843: 21        .byte $21   ; 
- D 0 - I - 0x009854 02:9844: 00        .byte $00   ; 
- D 0 - I - 0x009855 02:9845: 60        .byte $60   ; 
- D 0 - I - 0x009856 02:9846: 6C        .byte $6C   ; 
- D 0 - I - 0x009857 02:9847: 6C        .byte $6C   ; 
- D 0 - I - 0x009858 02:9848: 6C        .byte $6C   ; 
- D 0 - I - 0x009859 02:9849: 6C        .byte $6C   ; 
- D 0 - I - 0x00985A 02:984A: 78        .byte $78   ; 
- D 0 - I - 0x00985B 02:984B: 5C        .byte $5C   ; 
- D 0 - I - 0x00985C 02:984C: 46        .byte $46   ; 
- D 0 - I - 0x00985D 02:984D: 00        .byte $00   ; 
- D 0 - I - 0x00985E 02:984E: 27        .byte $27   ; 
off_984F_12:
- D 0 - I - 0x00985F 02:984F: 1C        .byte $1C   ; 
- D 0 - I - 0x009860 02:9850: 00        .byte $00   ; 
- D 0 - I - 0x009861 02:9851: 00        .byte $00   ; 
- D 0 - I - 0x009862 02:9852: 00        .byte $00   ; 
- D 0 - I - 0x009863 02:9853: 00        .byte $00   ; 
- D 0 - I - 0x009864 02:9854: 14        .byte $14   ; 
- D 0 - I - 0x009865 02:9855: 00        .byte $00   ; 
- D 0 - I - 0x009866 02:9856: 00        .byte $00   ; 
- D 0 - I - 0x009867 02:9857: 00        .byte $00   ; 
- D 0 - I - 0x009868 02:9858: 4C        .byte $4C   ; 
- D 0 - I - 0x009869 02:9859: 60        .byte $60   ; 
- D 0 - I - 0x00986A 02:985A: 6C        .byte $6C   ; 
- D 0 - I - 0x00986B 02:985B: 6C        .byte $6C   ; 
- D 0 - I - 0x00986C 02:985C: 6C        .byte $6C   ; 
- D 0 - I - 0x00986D 02:985D: 6F        .byte $6F   ; 
- D 0 - I - 0x00986E 02:985E: 69        .byte $69   ; 
- D 0 - I - 0x00986F 02:985F: 00        .byte $00   ; 
- D 0 - I - 0x009870 02:9860: 00        .byte $00   ; 
- D 0 - I - 0x009871 02:9861: 00        .byte $00   ; 
- D 0 - I - 0x009872 02:9862: 00        .byte $00   ; 
- D 0 - I - 0x009873 02:9863: 00        .byte $00   ; 
- D 0 - I - 0x009874 02:9864: 00        .byte $00   ; 
- D 0 - I - 0x009875 02:9865: 40        .byte $40   ; 
- D 0 - I - 0x009876 02:9866: 54        .byte $54   ; 
- D 0 - I - 0x009877 02:9867: 7E        .byte $7E   ; 
off_9868_08:
- D 0 - I - 0x009878 02:9868: 6C        .byte $6C   ; 
- D 0 - I - 0x009879 02:9869: 6C        .byte $6C   ; 
- D 0 - I - 0x00987A 02:986A: 6E        .byte $6E   ; 
- D 0 - I - 0x00987B 02:986B: 6C        .byte $6C   ; 
- D 0 - I - 0x00987C 02:986C: 6C        .byte $6C   ; 
- D 0 - I - 0x00987D 02:986D: 6C        .byte $6C   ; 
- D 0 - I - 0x00987E 02:986E: 6C        .byte $6C   ; 
- D 0 - I - 0x00987F 02:986F: 66        .byte $66   ; 
- D 0 - I - 0x009880 02:9870: 00        .byte $00   ; 
- D 0 - I - 0x009881 02:9871: 00        .byte $00   ; 
- D 0 - I - 0x009882 02:9872: 00        .byte $00   ; 
- D 0 - I - 0x009883 02:9873: 15        .byte $15   ; 
- D 0 - I - 0x009884 02:9874: 00        .byte $00   ; 
- D 0 - I - 0x009885 02:9875: 00        .byte $00   ; 
- D 0 - I - 0x009886 02:9876: 00        .byte $00   ; 
- D 0 - I - 0x009887 02:9877: 00        .byte $00   ; 
- D 0 - I - 0x009888 02:9878: 00        .byte $00   ; 
- D 0 - I - 0x009889 02:9879: 00        .byte $00   ; 
- D 0 - I - 0x00988A 02:987A: 40        .byte $40   ; 
- D 0 - I - 0x00988B 02:987B: 54        .byte $54   ; 
- D 0 - I - 0x00988C 02:987C: 54        .byte $54   ; 
- D 0 - I - 0x00988D 02:987D: 54        .byte $54   ; 
- D 0 - I - 0x00988E 02:987E: 7E        .byte $7E   ; 
- D 0 - I - 0x00988F 02:987F: 6C        .byte $6C   ; 
- D 0 - I - 0x009890 02:9880: 6C        .byte $6C   ; 
- D 0 - I - 0x009891 02:9881: 68        .byte $68   ; 
- D 0 - I - 0x009892 02:9882: 4E        .byte $4E   ; 
- D 0 - I - 0x009893 02:9883: 4C        .byte $4C   ; 
- D 0 - I - 0x009894 02:9884: 60        .byte $60   ; 
- D 0 - I - 0x009895 02:9885: 6E        .byte $6E   ; 
- D 0 - I - 0x009896 02:9886: 6C        .byte $6C   ; 
- D 0 - I - 0x009897 02:9887: 72        .byte $72   ; 
off_9888_09:
- D 0 - I - 0x009898 02:9888: 00        .byte $00   ; 
- D 0 - I - 0x009899 02:9889: 00        .byte $00   ; 
- D 0 - I - 0x00989A 02:988A: 00        .byte $00   ; 
- D 0 - I - 0x00989B 02:988B: 00        .byte $00   ; 
- D 0 - I - 0x00989C 02:988C: 00        .byte $00   ; 
- D 0 - I - 0x00989D 02:988D: 00        .byte $00   ; 
- D 0 - I - 0x00989E 02:988E: 60        .byte $60   ; 
- D 0 - I - 0x00989F 02:988F: 6C        .byte $6C   ; 
- D 0 - I - 0x0098A0 02:9890: 6E        .byte $6E   ; 
- D 0 - I - 0x0098A1 02:9891: 6C        .byte $6C   ; 
- D 0 - I - 0x0098A2 02:9892: 6C        .byte $6C   ; 
- D 0 - I - 0x0098A3 02:9893: 66        .byte $66   ; 
- D 0 - I - 0x0098A4 02:9894: 00        .byte $00   ; 
- D 0 - I - 0x0098A5 02:9895: 00        .byte $00   ; 
- D 0 - I - 0x0098A6 02:9896: 00        .byte $00   ; 
- D 0 - I - 0x0098A7 02:9897: 00        .byte $00   ; 
- D 0 - I - 0x0098A8 02:9898: 00        .byte $00   ; 
- D 0 - I - 0x0098A9 02:9899: 14        .byte $14   ; 
- D 0 - I - 0x0098AA 02:989A: 00        .byte $00   ; 
- D 0 - I - 0x0098AB 02:989B: 00        .byte $00   ; 
- D 0 - I - 0x0098AC 02:989C: 15        .byte $15   ; 
- D 0 - I - 0x0098AD 02:989D: 00        .byte $00   ; 
- D 0 - I - 0x0098AE 02:989E: 00        .byte $00   ; 
- D 0 - I - 0x0098AF 02:989F: 00        .byte $00   ; 
- D 0 - I - 0x0098B0 02:98A0: 00        .byte $00   ; 
- D 0 - I - 0x0098B1 02:98A1: 00        .byte $00   ; 
- D 0 - I - 0x0098B2 02:98A2: 14        .byte $14   ; 
- D 0 - I - 0x0098B3 02:98A3: 00        .byte $00   ; 
- D 0 - I - 0x0098B4 02:98A4: 00        .byte $00   ; 
- D 0 - I - 0x0098B5 02:98A5: 48        .byte $48   ; 
- D 0 - I - 0x0098B6 02:98A6: 60        .byte $60   ; 
- D 0 - I - 0x0098B7 02:98A7: 72        .byte $72   ; 
off_98A8_0B:
- D 0 - I - 0x0098B8 02:98A8: 70        .byte $70   ; 
- D 0 - I - 0x0098B9 02:98A9: 67        .byte $67   ; 
- D 0 - I - 0x0098BA 02:98AA: 4B        .byte $4B   ; 
- D 0 - I - 0x0098BB 02:98AB: 04        .byte $04   ; 
- D 0 - I - 0x0098BC 02:98AC: 04        .byte $04   ; 
- D 0 - I - 0x0098BD 02:98AD: 49        .byte $49   ; 
- D 0 - I - 0x0098BE 02:98AE: 61        .byte $61   ; 
- D 0 - I - 0x0098BF 02:98AF: 6D        .byte $6D   ; 
- D 0 - I - 0x0098C0 02:98B0: 6D        .byte $6D   ; 
- D 0 - I - 0x0098C1 02:98B1: 6D        .byte $6D   ; 
- D 0 - I - 0x0098C2 02:98B2: 6D        .byte $6D   ; 
- D 0 - I - 0x0098C3 02:98B3: 6A        .byte $6A   ; 
- D 0 - I - 0x0098C4 02:98B4: 04        .byte $04   ; 
- D 0 - I - 0x0098C5 02:98B5: 04        .byte $04   ; 
- D 0 - I - 0x0098C6 02:98B6: 04        .byte $04   ; 
- D 0 - I - 0x0098C7 02:98B7: 04        .byte $04   ; 
- D 0 - I - 0x0098C8 02:98B8: 04        .byte $04   ; 
- D 0 - I - 0x0098C9 02:98B9: 49        .byte $49   ; 
- D 0 - I - 0x0098CA 02:98BA: 61        .byte $61   ; 
- D 0 - I - 0x0098CB 02:98BB: 6D        .byte $6D   ; 
- D 0 - I - 0x0098CC 02:98BC: 6D        .byte $6D   ; 
- D 0 - I - 0x0098CD 02:98BD: 67        .byte $67   ; 
- D 0 - I - 0x0098CE 02:98BE: 4B        .byte $4B   ; 
- D 0 - I - 0x0098CF 02:98BF: 04        .byte $04   ; 
- D 0 - I - 0x0098D0 02:98C0: 04        .byte $04   ; 
- D 0 - I - 0x0098D1 02:98C1: 04        .byte $04   ; 
- D 0 - I - 0x0098D2 02:98C2: 04        .byte $04   ; 
- D 0 - I - 0x0098D3 02:98C3: 49        .byte $49   ; 
- D 0 - I - 0x0098D4 02:98C4: 61        .byte $61   ; 
- D 0 - I - 0x0098D5 02:98C5: 6D        .byte $6D   ; 
- D 0 - I - 0x0098D6 02:98C6: 6D        .byte $6D   ; 
- D 0 - I - 0x0098D7 02:98C7: 74        .byte $74   ; 
off_98C8_10:
- D 0 - I - 0x0098D8 02:98C8: 04        .byte $04   ; 
- D 0 - I - 0x0098D9 02:98C9: 4D        .byte $4D   ; 
- D 0 - I - 0x0098DA 02:98CA: 61        .byte $61   ; 
- D 0 - I - 0x0098DB 02:98CB: 6D        .byte $6D   ; 
- D 0 - I - 0x0098DC 02:98CC: 6D        .byte $6D   ; 
- D 0 - I - 0x0098DD 02:98CD: 6D        .byte $6D   ; 
- D 0 - I - 0x0098DE 02:98CE: 6D        .byte $6D   ; 
- D 0 - I - 0x0098DF 02:98CF: 6D        .byte $6D   ; 
- D 0 - I - 0x0098E0 02:98D0: 6D        .byte $6D   ; 
- D 0 - I - 0x0098E1 02:98D1: 67        .byte $67   ; 
- D 0 - I - 0x0098E2 02:98D2: 04        .byte $04   ; 
- D 0 - I - 0x0098E3 02:98D3: 04        .byte $04   ; 
- D 0 - I - 0x0098E4 02:98D4: 04        .byte $04   ; 
- D 0 - I - 0x0098E5 02:98D5: 04        .byte $04   ; 
- D 0 - I - 0x0098E6 02:98D6: 61        .byte $61   ; 
- D 0 - I - 0x0098E7 02:98D7: 70        .byte $70   ; 
- D 0 - I - 0x0098E8 02:98D8: 6D        .byte $6D   ; 
- D 0 - I - 0x0098E9 02:98D9: 6D        .byte $6D   ; 
- D 0 - I - 0x0098EA 02:98DA: 6D        .byte $6D   ; 
- D 0 - I - 0x0098EB 02:98DB: 70        .byte $70   ; 
- D 0 - I - 0x0098EC 02:98DC: 6D        .byte $6D   ; 
- D 0 - I - 0x0098ED 02:98DD: 6D        .byte $6D   ; 
- D 0 - I - 0x0098EE 02:98DE: 6D        .byte $6D   ; 
- D 0 - I - 0x0098EF 02:98DF: 6D        .byte $6D   ; 
- D 0 - I - 0x0098F0 02:98E0: 6D        .byte $6D   ; 
- D 0 - I - 0x0098F1 02:98E1: 6D        .byte $6D   ; 
- D 0 - I - 0x0098F2 02:98E2: 6D        .byte $6D   ; 
- D 0 - I - 0x0098F3 02:98E3: 6A        .byte $6A   ; 
- D 0 - I - 0x0098F4 02:98E4: 4F        .byte $4F   ; 
- D 0 - I - 0x0098F5 02:98E5: 04        .byte $04   ; 
- D 0 - I - 0x0098F6 02:98E6: 04        .byte $04   ; 
- D 0 - I - 0x0098F7 02:98E7: 2B        .byte $2B   ; 
off_98E8_11:
- D 0 - I - 0x0098F8 02:98E8: 00        .byte $00   ; 
- D 0 - I - 0x0098F9 02:98E9: 00        .byte $00   ; 
- D 0 - I - 0x0098FA 02:98EA: 60        .byte $60   ; 
- D 0 - I - 0x0098FB 02:98EB: 6C        .byte $6C   ; 
- D 0 - I - 0x0098FC 02:98EC: 6E        .byte $6E   ; 
- D 0 - I - 0x0098FD 02:98ED: 6C        .byte $6C   ; 
- D 0 - I - 0x0098FE 02:98EE: 6C        .byte $6C   ; 
- D 0 - I - 0x0098FF 02:98EF: 6E        .byte $6E   ; 
- D 0 - I - 0x009900 02:98F0: 6C        .byte $6C   ; 
- D 0 - I - 0x009901 02:98F1: 68        .byte $68   ; 
- D 0 - I - 0x009902 02:98F2: 00        .byte $00   ; 
- D 0 - I - 0x009903 02:98F3: 00        .byte $00   ; 
- D 0 - I - 0x009904 02:98F4: 00        .byte $00   ; 
- D 0 - I - 0x009905 02:98F5: 00        .byte $00   ; 
- D 0 - I - 0x009906 02:98F6: 44        .byte $44   ; 
- D 0 - I - 0x009907 02:98F7: 5A        .byte $5A   ; 
- D 0 - I - 0x009908 02:98F8: 5A        .byte $5A   ; 
- D 0 - I - 0x009909 02:98F9: 5A        .byte $5A   ; 
- D 0 - I - 0x00990A 02:98FA: 7A        .byte $7A   ; 
- D 0 - I - 0x00990B 02:98FB: 6C        .byte $6C   ; 
- D 0 - I - 0x00990C 02:98FC: 6C        .byte $6C   ; 
- D 0 - I - 0x00990D 02:98FD: 6C        .byte $6C   ; 
- D 0 - I - 0x00990E 02:98FE: 6C        .byte $6C   ; 
- D 0 - I - 0x00990F 02:98FF: 6C        .byte $6C   ; 
- D 0 - I - 0x009910 02:9900: 6C        .byte $6C   ; 
- D 0 - I - 0x009911 02:9901: 78        .byte $78   ; 
- D 0 - I - 0x009912 02:9902: 5C        .byte $5C   ; 
- D 0 - I - 0x009913 02:9903: 46        .byte $46   ; 
- D 0 - I - 0x009914 02:9904: 00        .byte $00   ; 
- D 0 - I - 0x009915 02:9905: 00        .byte $00   ; 
- D 0 - I - 0x009916 02:9906: 00        .byte $00   ; 
- D 0 - I - 0x009917 02:9907: 1B        .byte $1B   ; 
off_9908_13:
- D 0 - I - 0x009918 02:9908: 04        .byte $04   ; 
- D 0 - I - 0x009919 02:9909: 49        .byte $49   ; 
- D 0 - I - 0x00991A 02:990A: 61        .byte $61   ; 
- D 0 - I - 0x00991B 02:990B: 6D        .byte $6D   ; 
- D 0 - I - 0x00991C 02:990C: 6D        .byte $6D   ; 
- D 0 - I - 0x00991D 02:990D: 79        .byte $79   ; 
- D 0 - I - 0x00991E 02:990E: 5B        .byte $5B   ; 
- D 0 - I - 0x00991F 02:990F: 5E        .byte $5E   ; 
- D 0 - I - 0x009920 02:9910: 5F        .byte $5F   ; 
- D 0 - I - 0x009921 02:9911: 47        .byte $47   ; 
- D 0 - I - 0x009922 02:9912: 04        .byte $04   ; 
- D 0 - I - 0x009923 02:9913: 04        .byte $04   ; 
- D 0 - I - 0x009924 02:9914: 04        .byte $04   ; 
- D 0 - I - 0x009925 02:9915: 04        .byte $04   ; 
- D 0 - I - 0x009926 02:9916: 04        .byte $04   ; 
- D 0 - I - 0x009927 02:9917: 04        .byte $04   ; 
- D 0 - I - 0x009928 02:9918: 04        .byte $04   ; 
- D 0 - I - 0x009929 02:9919: 04        .byte $04   ; 
- D 0 - I - 0x00992A 02:991A: 45        .byte $45   ; 
- D 0 - I - 0x00992B 02:991B: 5B        .byte $5B   ; 
- D 0 - I - 0x00992C 02:991C: 5B        .byte $5B   ; 
- D 0 - I - 0x00992D 02:991D: 5B        .byte $5B   ; 
- D 0 - I - 0x00992E 02:991E: 7B        .byte $7B   ; 
- D 0 - I - 0x00992F 02:991F: 6D        .byte $6D   ; 
- D 0 - I - 0x009930 02:9920: 71        .byte $71   ; 
- D 0 - I - 0x009931 02:9921: 67        .byte $67   ; 
- D 0 - I - 0x009932 02:9922: 04        .byte $04   ; 
- D 0 - I - 0x009933 02:9923: 04        .byte $04   ; 
- D 0 - I - 0x009934 02:9924: 04        .byte $04   ; 
- D 0 - I - 0x009935 02:9925: 04        .byte $04   ; 
- D 0 - I - 0x009936 02:9926: 04        .byte $04   ; 
- D 0 - I - 0x009937 02:9927: 2B        .byte $2B   ; 
off_9928_14:
- D 0 - I - 0x009938 02:9928: 41        .byte $41   ; 
- D 0 - I - 0x009939 02:9929: 55        .byte $55   ; 
- D 0 - I - 0x00993A 02:992A: 7F        .byte $7F   ; 
- D 0 - I - 0x00993B 02:992B: 6D        .byte $6D   ; 
- D 0 - I - 0x00993C 02:992C: 6D        .byte $6D   ; 
- D 0 - I - 0x00993D 02:992D: 6A        .byte $6A   ; 
- D 0 - I - 0x00993E 02:992E: 4F        .byte $4F   ; 
- D 0 - I - 0x00993F 02:992F: 04        .byte $04   ; 
- D 0 - I - 0x009940 02:9930: 17        .byte $17   ; 
- D 0 - I - 0x009941 02:9931: 04        .byte $04   ; 
- D 0 - I - 0x009942 02:9932: 04        .byte $04   ; 
- D 0 - I - 0x009943 02:9933: 04        .byte $04   ; 
- D 0 - I - 0x009944 02:9934: 04        .byte $04   ; 
- D 0 - I - 0x009945 02:9935: 04        .byte $04   ; 
- D 0 - I - 0x009946 02:9936: 04        .byte $04   ; 
- D 0 - I - 0x009947 02:9937: 04        .byte $04   ; 
- D 0 - I - 0x009948 02:9938: 04        .byte $04   ; 
- D 0 - I - 0x009949 02:9939: 04        .byte $04   ; 
- D 0 - I - 0x00994A 02:993A: 04        .byte $04   ; 
- D 0 - I - 0x00994B 02:993B: 04        .byte $04   ; 
- D 0 - I - 0x00994C 02:993C: 04        .byte $04   ; 
- D 0 - I - 0x00994D 02:993D: 4D        .byte $4D   ; 
- D 0 - I - 0x00994E 02:993E: 61        .byte $61   ; 
- D 0 - I - 0x00994F 02:993F: 6D        .byte $6D   ; 
- D 0 - I - 0x009950 02:9940: 6D        .byte $6D   ; 
- D 0 - I - 0x009951 02:9941: 67        .byte $67   ; 
- D 0 - I - 0x009952 02:9942: 04        .byte $04   ; 
- D 0 - I - 0x009953 02:9943: 04        .byte $04   ; 
- D 0 - I - 0x009954 02:9944: 04        .byte $04   ; 
- D 0 - I - 0x009955 02:9945: 09        .byte $09   ; 
- D 0 - I - 0x009956 02:9946: 0A        .byte $0A   ; 
- D 0 - I - 0x009957 02:9947: 0B        .byte $0B   ; 
off_9948_15:
- D 0 - I - 0x009958 02:9948: 60        .byte $60   ; 
- D 0 - I - 0x009959 02:9949: 6F        .byte $6F   ; 
- D 0 - I - 0x00995A 02:994A: 6C        .byte $6C   ; 
- D 0 - I - 0x00995B 02:994B: 6C        .byte $6C   ; 
- D 0 - I - 0x00995C 02:994C: 6E        .byte $6E   ; 
- D 0 - I - 0x00995D 02:994D: 69        .byte $69   ; 
- D 0 - I - 0x00995E 02:994E: 00        .byte $00   ; 
- D 0 - I - 0x00995F 02:994F: 00        .byte $00   ; 
- D 0 - I - 0x009960 02:9950: 00        .byte $00   ; 
- D 0 - I - 0x009961 02:9951: 00        .byte $00   ; 
- D 0 - I - 0x009962 02:9952: 00        .byte $00   ; 
- D 0 - I - 0x009963 02:9953: 00        .byte $00   ; 
- D 0 - I - 0x009964 02:9954: 00        .byte $00   ; 
- D 0 - I - 0x009965 02:9955: 00        .byte $00   ; 
- D 0 - I - 0x009966 02:9956: 00        .byte $00   ; 
- D 0 - I - 0x009967 02:9957: 00        .byte $00   ; 
- D 0 - I - 0x009968 02:9958: 00        .byte $00   ; 
- D 0 - I - 0x009969 02:9959: 00        .byte $00   ; 
- D 0 - I - 0x00996A 02:995A: 00        .byte $00   ; 
- D 0 - I - 0x00996B 02:995B: 00        .byte $00   ; 
- D 0 - I - 0x00996C 02:995C: 00        .byte $00   ; 
- D 0 - I - 0x00996D 02:995D: 00        .byte $00   ; 
- D 0 - I - 0x00996E 02:995E: 60        .byte $60   ; 
- D 0 - I - 0x00996F 02:995F: 6E        .byte $6E   ; 
- D 0 - I - 0x009970 02:9960: 6C        .byte $6C   ; 
- D 0 - I - 0x009971 02:9961: 68        .byte $68   ; 
- D 0 - I - 0x009972 02:9962: 00        .byte $00   ; 
- D 0 - I - 0x009973 02:9963: 00        .byte $00   ; 
- D 0 - I - 0x009974 02:9964: 19        .byte $19   ; 
- D 0 - I - 0x009975 02:9965: 1A        .byte $1A   ; 
- D 0 - I - 0x009976 02:9966: 00        .byte $00   ; 
- D 0 - I - 0x009977 02:9967: 1B        .byte $1B   ; 
off_9968_16:
- D 0 - I - 0x009978 02:9968: 44        .byte $44   ; 
- D 0 - I - 0x009979 02:9969: 5A        .byte $5A   ; 
- D 0 - I - 0x00997A 02:996A: 5A        .byte $5A   ; 
- D 0 - I - 0x00997B 02:996B: 5C        .byte $5C   ; 
- D 0 - I - 0x00997C 02:996C: 5D        .byte $5D   ; 
- D 0 - I - 0x00997D 02:996D: 46        .byte $46   ; 
- D 0 - I - 0x00997E 02:996E: 00        .byte $00   ; 
- D 0 - I - 0x00997F 02:996F: 00        .byte $00   ; 
- D 0 - I - 0x009980 02:9970: 00        .byte $00   ; 
- D 0 - I - 0x009981 02:9971: 00        .byte $00   ; 
- D 0 - I - 0x009982 02:9972: 00        .byte $00   ; 
- D 0 - I - 0x009983 02:9973: 00        .byte $00   ; 
- D 0 - I - 0x009984 02:9974: 40        .byte $40   ; 
- D 0 - I - 0x009985 02:9975: 54        .byte $54   ; 
- D 0 - I - 0x009986 02:9976: 54        .byte $54   ; 
- D 0 - I - 0x009987 02:9977: 54        .byte $54   ; 
- D 0 - I - 0x009988 02:9978: 54        .byte $54   ; 
- D 0 - I - 0x009989 02:9979: 42        .byte $42   ; 
- D 0 - I - 0x00998A 02:997A: 00        .byte $00   ; 
- D 0 - I - 0x00998B 02:997B: 00        .byte $00   ; 
- D 0 - I - 0x00998C 02:997C: 00        .byte $00   ; 
- D 0 - I - 0x00998D 02:997D: 00        .byte $00   ; 
- D 0 - I - 0x00998E 02:997E: 60        .byte $60   ; 
- D 0 - I - 0x00998F 02:997F: 6C        .byte $6C   ; 
- D 0 - I - 0x009990 02:9980: 6C        .byte $6C   ; 
- D 0 - I - 0x009991 02:9981: 69        .byte $69   ; 
- D 0 - I - 0x009992 02:9982: 00        .byte $00   ; 
- D 0 - I - 0x009993 02:9983: 00        .byte $00   ; 
- D 0 - I - 0x009994 02:9984: 08        .byte $08   ; 
- D 0 - I - 0x009995 02:9985: 00        .byte $00   ; 
- D 0 - I - 0x009996 02:9986: 00        .byte $00   ; 
- D 0 - I - 0x009997 02:9987: 1B        .byte $1B   ; 
off_9988_19:
- D 0 - I - 0x009998 02:9988: 00        .byte $00   ; 
- D 0 - I - 0x009999 02:9989: 00        .byte $00   ; 
- D 0 - I - 0x00999A 02:998A: 00        .byte $00   ; 
- D 0 - I - 0x00999B 02:998B: 00        .byte $00   ; 
- D 0 - I - 0x00999C 02:998C: 00        .byte $00   ; 
- D 0 - I - 0x00999D 02:998D: 00        .byte $00   ; 
- D 0 - I - 0x00999E 02:998E: 00        .byte $00   ; 
- D 0 - I - 0x00999F 02:998F: 48        .byte $48   ; 
- D 0 - I - 0x0099A0 02:9990: 60        .byte $60   ; 
- D 0 - I - 0x0099A1 02:9991: 6C        .byte $6C   ; 
- D 0 - I - 0x0099A2 02:9992: 6E        .byte $6E   ; 
- D 0 - I - 0x0099A3 02:9993: 6C        .byte $6C   ; 
- D 0 - I - 0x0099A4 02:9994: 6C        .byte $6C   ; 
- D 0 - I - 0x0099A5 02:9995: 6C        .byte $6C   ; 
- D 0 - I - 0x0099A6 02:9996: 6C        .byte $6C   ; 
- D 0 - I - 0x0099A7 02:9997: 6C        .byte $6C   ; 
- D 0 - I - 0x0099A8 02:9998: 6C        .byte $6C   ; 
- D 0 - I - 0x0099A9 02:9999: 6C        .byte $6C   ; 
- D 0 - I - 0x0099AA 02:999A: 6C        .byte $6C   ; 
- D 0 - I - 0x0099AB 02:999B: 66        .byte $66   ; 
- D 0 - I - 0x0099AC 02:999C: 4A        .byte $4A   ; 
- D 0 - I - 0x0099AD 02:999D: 00        .byte $00   ; 
- D 0 - I - 0x0099AE 02:999E: 00        .byte $00   ; 
- D 0 - I - 0x0099AF 02:999F: 00        .byte $00   ; 
- D 0 - I - 0x0099B0 02:99A0: 00        .byte $00   ; 
- D 0 - I - 0x0099B1 02:99A1: 00        .byte $00   ; 
- D 0 - I - 0x0099B2 02:99A2: 00        .byte $00   ; 
- D 0 - I - 0x0099B3 02:99A3: 00        .byte $00   ; 
- D 0 - I - 0x0099B4 02:99A4: 38        .byte $38   ; 
- D 0 - I - 0x0099B5 02:99A5: 00        .byte $00   ; 
- D 0 - I - 0x0099B6 02:99A6: 00        .byte $00   ; 
- D 0 - I - 0x0099B7 02:99A7: 1B        .byte $1B   ; 
off_99A8_1A:
- D 0 - I - 0x0099B8 02:99A8: 00        .byte $00   ; 
- D 0 - I - 0x0099B9 02:99A9: 00        .byte $00   ; 
- D 0 - I - 0x0099BA 02:99AA: 00        .byte $00   ; 
- D 0 - I - 0x0099BB 02:99AB: 14        .byte $14   ; 
- D 0 - I - 0x0099BC 02:99AC: 00        .byte $00   ; 
- D 0 - I - 0x0099BD 02:99AD: 00        .byte $00   ; 
- D 0 - I - 0x0099BE 02:99AE: 40        .byte $40   ; 
- D 0 - I - 0x0099BF 02:99AF: 54        .byte $54   ; 
- D 0 - I - 0x0099C0 02:99B0: 7E        .byte $7E   ; 
- D 0 - I - 0x0099C1 02:99B1: 6F        .byte $6F   ; 
- D 0 - I - 0x0099C2 02:99B2: 6C        .byte $6C   ; 
- D 0 - I - 0x0099C3 02:99B3: 6C        .byte $6C   ; 
- D 0 - I - 0x0099C4 02:99B4: 6C        .byte $6C   ; 
- D 0 - I - 0x0099C5 02:99B5: 6C        .byte $6C   ; 
- D 0 - I - 0x0099C6 02:99B6: 6E        .byte $6E   ; 
- D 0 - I - 0x0099C7 02:99B7: 6C        .byte $6C   ; 
- D 0 - I - 0x0099C8 02:99B8: 6C        .byte $6C   ; 
- D 0 - I - 0x0099C9 02:99B9: 6C        .byte $6C   ; 
- D 0 - I - 0x0099CA 02:99BA: 6E        .byte $6E   ; 
- D 0 - I - 0x0099CB 02:99BB: 7C        .byte $7C   ; 
- D 0 - I - 0x0099CC 02:99BC: 54        .byte $54   ; 
- D 0 - I - 0x0099CD 02:99BD: 42        .byte $42   ; 
- D 0 - I - 0x0099CE 02:99BE: 00        .byte $00   ; 
- D 0 - I - 0x0099CF 02:99BF: 00        .byte $00   ; 
- D 0 - I - 0x0099D0 02:99C0: 00        .byte $00   ; 
- D 0 - I - 0x0099D1 02:99C1: 00        .byte $00   ; 
- D 0 - I - 0x0099D2 02:99C2: 00        .byte $00   ; 
- D 0 - I - 0x0099D3 02:99C3: 00        .byte $00   ; 
- D 0 - I - 0x0099D4 02:99C4: 29        .byte $29   ; 
- D 0 - I - 0x0099D5 02:99C5: 2A        .byte $2A   ; 
- D 0 - I - 0x0099D6 02:99C6: 00        .byte $00   ; 
- D 0 - I - 0x0099D7 02:99C7: 1B        .byte $1B   ; 
off_99C8_1D:
- D 0 - I - 0x0099D8 02:99C8: 16        .byte $16   ; 
- D 0 - I - 0x0099D9 02:99C9: 04        .byte $04   ; 
- D 0 - I - 0x0099DA 02:99CA: 04        .byte $04   ; 
- D 0 - I - 0x0099DB 02:99CB: 04        .byte $04   ; 
- D 0 - I - 0x0099DC 02:99CC: 04        .byte $04   ; 
- D 0 - I - 0x0099DD 02:99CD: 16        .byte $16   ; 
- D 0 - I - 0x0099DE 02:99CE: 04        .byte $04   ; 
- D 0 - I - 0x0099DF 02:99CF: 04        .byte $04   ; 
- D 0 - I - 0x0099E0 02:99D0: 04        .byte $04   ; 
- D 0 - I - 0x0099E1 02:99D1: 04        .byte $04   ; 
- D 0 - I - 0x0099E2 02:99D2: 16        .byte $16   ; 
- D 0 - I - 0x0099E3 02:99D3: 04        .byte $04   ; 
- D 0 - I - 0x0099E4 02:99D4: 61        .byte $61   ; 
- D 0 - I - 0x0099E5 02:99D5: 6D        .byte $6D   ; 
- D 0 - I - 0x0099E6 02:99D6: 6D        .byte $6D   ; 
- D 0 - I - 0x0099E7 02:99D7: 6D        .byte $6D   ; 
- D 0 - I - 0x0099E8 02:99D8: 6D        .byte $6D   ; 
- D 0 - I - 0x0099E9 02:99D9: 6D        .byte $6D   ; 
- D 0 - I - 0x0099EA 02:99DA: 6D        .byte $6D   ; 
- D 0 - I - 0x0099EB 02:99DB: 71        .byte $71   ; 
- D 0 - I - 0x0099EC 02:99DC: 6D        .byte $6D   ; 
- D 0 - I - 0x0099ED 02:99DD: 67        .byte $67   ; 
- D 0 - I - 0x0099EE 02:99DE: 04        .byte $04   ; 
- D 0 - I - 0x0099EF 02:99DF: 04        .byte $04   ; 
- D 0 - I - 0x0099F0 02:99E0: 04        .byte $04   ; 
- D 0 - I - 0x0099F1 02:99E1: 04        .byte $04   ; 
- D 0 - I - 0x0099F2 02:99E2: 04        .byte $04   ; 
- D 0 - I - 0x0099F3 02:99E3: 04        .byte $04   ; 
- D 0 - I - 0x0099F4 02:99E4: 04        .byte $04   ; 
- D 0 - I - 0x0099F5 02:99E5: 04        .byte $04   ; 
- D 0 - I - 0x0099F6 02:99E6: 04        .byte $04   ; 
- D 0 - I - 0x0099F7 02:99E7: 2B        .byte $2B   ; 
off_99E8_01:
- D 0 - I - 0x0099F8 02:99E8: 00        .byte $00   ; 
- D 0 - I - 0x0099F9 02:99E9: 00        .byte $00   ; 
- D 0 - I - 0x0099FA 02:99EA: 00        .byte $00   ; 
- D 0 - I - 0x0099FB 02:99EB: 00        .byte $00   ; 
- D 0 - I - 0x0099FC 02:99EC: 00        .byte $00   ; 
- D 0 - I - 0x0099FD 02:99ED: 00        .byte $00   ; 
- D 0 - I - 0x0099FE 02:99EE: 00        .byte $00   ; 
- D 0 - I - 0x0099FF 02:99EF: 00        .byte $00   ; 
- D 0 - I - 0x009A00 02:99F0: 00        .byte $00   ; 
- D 0 - I - 0x009A01 02:99F1: 40        .byte $40   ; 
- D 0 - I - 0x009A02 02:99F2: 55        .byte $55   ; 
- D 0 - I - 0x009A03 02:99F3: 00        .byte $00   ; 
- D 0 - I - 0x009A04 02:99F4: 00        .byte $00   ; 
- D 0 - I - 0x009A05 02:99F5: 00        .byte $00   ; 
- D 0 - I - 0x009A06 02:99F6: 00        .byte $00   ; 
- D 0 - I - 0x009A07 02:99F7: 00        .byte $00   ; 
- D 0 - I - 0x009A08 02:99F8: 50        .byte $50   ; 
- D 0 - I - 0x009A09 02:99F9: 54        .byte $54   ; 
- D 0 - I - 0x009A0A 02:99FA: 55        .byte $55   ; 
- D 0 - I - 0x009A0B 02:99FB: 00        .byte $00   ; 
- D 0 - I - 0x009A0C 02:99FC: 50        .byte $50   ; 
- D 0 - I - 0x009A0D 02:99FD: 50        .byte $50   ; 
- D 0 - I - 0x009A0E 02:99FE: 40        .byte $40   ; 
- D 0 - I - 0x009A0F 02:99FF: 55        .byte $55   ; 
- D 0 - I - 0x009A10 02:9A00: 55        .byte $55   ; 
- D 0 - I - 0x009A11 02:9A01: 55        .byte $55   ; 
- D 0 - I - 0x009A12 02:9A02: 55        .byte $55   ; 
- D 0 - I - 0x009A13 02:9A03: 44        .byte $44   ; 
- D 0 - I - 0x009A14 02:9A04: 55        .byte $55   ; 
- D 0 - I - 0x009A15 02:9A05: 55        .byte $55   ; 
- D 0 - I - 0x009A16 02:9A06: 55        .byte $55   ; 
- D 0 - I - 0x009A17 02:9A07: 55        .byte $55   ; 
- D 0 - I - 0x009A18 02:9A08: 55        .byte $55   ; 
- D 0 - I - 0x009A19 02:9A09: 55        .byte $55   ; 
- D 0 - I - 0x009A1A 02:9A0A: 11        .byte $11   ; 
- D 0 - I - 0x009A1B 02:9A0B: 04        .byte $04   ; 
- D 0 - I - 0x009A1C 02:9A0C: 55        .byte $55   ; 
- D 0 - I - 0x009A1D 02:9A0D: 55        .byte $55   ; 
- D 0 - I - 0x009A1E 02:9A0E: 55        .byte $55   ; 
- D 0 - I - 0x009A1F 02:9A0F: 01        .byte $01   ; 
- D 0 - I - 0x009A20 02:9A10: 55        .byte $55   ; 
- D 0 - I - 0x009A21 02:9A11: 15        .byte $15   ; 
- D 0 - I - 0x009A22 02:9A12: 40        .byte $40   ; 
- D 0 - I - 0x009A23 02:9A13: 50        .byte $50   ; 
- D 0 - I - 0x009A24 02:9A14: 50        .byte $50   ; 
- D 0 - I - 0x009A25 02:9A15: 45        .byte $45   ; 
- D 0 - I - 0x009A26 02:9A16: 11        .byte $11   ; 
- D 0 - I - 0x009A27 02:9A17: 00        .byte $00   ; 
- D 0 - I - 0x009A28 02:9A18: 00        .byte $00   ; 
- D 0 - I - 0x009A29 02:9A19: 44        .byte $44   ; 
- D 0 - I - 0x009A2A 02:9A1A: 55        .byte $55   ; 
- D 0 - I - 0x009A2B 02:9A1B: 55        .byte $55   ; 
- D 0 - I - 0x009A2C 02:9A1C: 55        .byte $55   ; 
- D 0 - I - 0x009A2D 02:9A1D: 11        .byte $11   ; 
- D 0 - I - 0x009A2E 02:9A1E: 00        .byte $00   ; 
- D 0 - I - 0x009A2F 02:9A1F: 00        .byte $00   ; 
- D 0 - I - 0x009A30 02:9A20: 00        .byte $00   ; 
- D 0 - I - 0x009A31 02:9A21: 00        .byte $00   ; 
- D 0 - I - 0x009A32 02:9A22: 04        .byte $04   ; 
- D 0 - I - 0x009A33 02:9A23: 05        .byte $05   ; 
- D 0 - I - 0x009A34 02:9A24: 05        .byte $05   ; 
- D 0 - I - 0x009A35 02:9A25: 01        .byte $01   ; 
- D 0 - I - 0x009A36 02:9A26: 00        .byte $00   ; 
- D 0 - I - 0x009A37 02:9A27: 00        .byte $00   ; 
off_9A28_06:
- D 0 - I - 0x009A38 02:9A28: 07        .byte $07   ; 
- D 0 - I - 0x009A39 02:9A29: 10        .byte $10   ; 
- D 0 - I - 0x009A3A 02:9A2A: 10        .byte $10   ; 
- D 0 - I - 0x009A3B 02:9A2B: 10        .byte $10   ; 
- D 0 - I - 0x009A3C 02:9A2C: 10        .byte $10   ; 
- D 0 - I - 0x009A3D 02:9A2D: 10        .byte $10   ; 
- D 0 - I - 0x009A3E 02:9A2E: 10        .byte $10   ; 
- D 0 - I - 0x009A3F 02:9A2F: 10        .byte $10   ; 
- D 0 - I - 0x009A40 02:9A30: 10        .byte $10   ; 
- D 0 - I - 0x009A41 02:9A31: 10        .byte $10   ; 
- D 0 - I - 0x009A42 02:9A32: 10        .byte $10   ; 
- D 0 - I - 0x009A43 02:9A33: 10        .byte $10   ; 
- D 0 - I - 0x009A44 02:9A34: 10        .byte $10   ; 
- D 0 - I - 0x009A45 02:9A35: 10        .byte $10   ; 
off_9A36_06:
- D 0 - I - 0x009A46 02:9A36: 10        .byte $10   ; 
- D 0 - I - 0x009A47 02:9A37: 10        .byte $10   ; 
- D 0 - I - 0x009A48 02:9A38: 10        .byte $10   ; 
- D 0 - I - 0x009A49 02:9A39: 10        .byte $10   ; 
- D 0 - I - 0x009A4A 02:9A3A: 10        .byte $10   ; 
- D 0 - I - 0x009A4B 02:9A3B: 10        .byte $10   ; 
- D 0 - I - 0x009A4C 02:9A3C: 10        .byte $10   ; 
- D 0 - I - 0x009A4D 02:9A3D: 10        .byte $10   ; 
- D 0 - I - 0x009A4E 02:9A3E: 62        .byte $62   ; 
- D 0 - I - 0x009A4F 02:9A3F: 76        .byte $76   ; 
- D 0 - I - 0x009A50 02:9A40: 76        .byte $76   ; 
- D 0 - I - 0x009A51 02:9A41: 64        .byte $64   ; 
- D 0 - I - 0x009A52 02:9A42: 10        .byte $10   ; 
- D 0 - I - 0x009A53 02:9A43: 10        .byte $10   ; 
- D 0 - I - 0x009A54 02:9A44: 10        .byte $10   ; 
- D 0 - I - 0x009A55 02:9A45: 10        .byte $10   ; 
- D 0 - I - 0x009A56 02:9A46: 10        .byte $10   ; 
- D 0 - I - 0x009A57 02:9A47: 10        .byte $10   ; 
- D 0 - I - 0x009A58 02:9A48: 10        .byte $10   ; 
- D 0 - I - 0x009A59 02:9A49: 10        .byte $10   ; 
- D 0 - I - 0x009A5A 02:9A4A: 10        .byte $10   ; 
- D 0 - I - 0x009A5B 02:9A4B: 10        .byte $10   ; 
- D 0 - I - 0x009A5C 02:9A4C: 10        .byte $10   ; 
- D 0 - I - 0x009A5D 02:9A4D: 10        .byte $10   ; 
- D 0 - I - 0x009A5E 02:9A4E: 10        .byte $10   ; 
- D 0 - I - 0x009A5F 02:9A4F: 10        .byte $10   ; 
- D 0 - I - 0x009A60 02:9A50: 10        .byte $10   ; 
- D 0 - I - 0x009A61 02:9A51: 10        .byte $10   ; 
- D 0 - I - 0x009A62 02:9A52: 10        .byte $10   ; 
- D 0 - I - 0x009A63 02:9A53: 10        .byte $10   ; 
- D 0 - I - 0x009A64 02:9A54: 10        .byte $10   ; 
- D 0 - I - 0x009A65 02:9A55: 06        .byte $06   ; 
off_9A56_07:
- D 0 - I - 0x009A66 02:9A56: 2C        .byte $2C   ; 
- D 0 - I - 0x009A67 02:9A57: 04        .byte $04   ; 
- D 0 - I - 0x009A68 02:9A58: 04        .byte $04   ; 
- D 0 - I - 0x009A69 02:9A59: 04        .byte $04   ; 
- D 0 - I - 0x009A6A 02:9A5A: 04        .byte $04   ; 
- D 0 - I - 0x009A6B 02:9A5B: 04        .byte $04   ; 
- D 0 - I - 0x009A6C 02:9A5C: 04        .byte $04   ; 
- D 0 - I - 0x009A6D 02:9A5D: 04        .byte $04   ; 
- D 0 - I - 0x009A6E 02:9A5E: 04        .byte $04   ; 
- D 0 - I - 0x009A6F 02:9A5F: 04        .byte $04   ; 
- D 0 - I - 0x009A70 02:9A60: 04        .byte $04   ; 
- D 0 - I - 0x009A71 02:9A61: 04        .byte $04   ; 
- D 0 - I - 0x009A72 02:9A62: 04        .byte $04   ; 
- D 0 - I - 0x009A73 02:9A63: 04        .byte $04   ; 
off_9A64_05:
- D 0 - I - 0x009A74 02:9A64: 04        .byte $04   ; 
- D 0 - I - 0x009A75 02:9A65: 04        .byte $04   ; 
- D 0 - I - 0x009A76 02:9A66: 04        .byte $04   ; 
- D 0 - I - 0x009A77 02:9A67: 04        .byte $04   ; 
- D 0 - I - 0x009A78 02:9A68: 04        .byte $04   ; 
- D 0 - I - 0x009A79 02:9A69: 04        .byte $04   ; 
- D 0 - I - 0x009A7A 02:9A6A: 04        .byte $04   ; 
- D 0 - I - 0x009A7B 02:9A6B: 04        .byte $04   ; 
- D 0 - I - 0x009A7C 02:9A6C: 61        .byte $61   ; 
- D 0 - I - 0x009A7D 02:9A6D: 71        .byte $71   ; 
- D 0 - I - 0x009A7E 02:9A6E: 6D        .byte $6D   ; 
- D 0 - I - 0x009A7F 02:9A6F: 67        .byte $67   ; 
off_9A70_05:
- D 0 - I - 0x009A80 02:9A70: 04        .byte $04   ; 
- D 0 - I - 0x009A81 02:9A71: 04        .byte $04   ; 
- D 0 - I - 0x009A82 02:9A72: 04        .byte $04   ; 
- D 0 - I - 0x009A83 02:9A73: 04        .byte $04   ; 
- D 0 - I - 0x009A84 02:9A74: 04        .byte $04   ; 
- D 0 - I - 0x009A85 02:9A75: 04        .byte $04   ; 
- D 0 - I - 0x009A86 02:9A76: 04        .byte $04   ; 
- D 0 - I - 0x009A87 02:9A77: 04        .byte $04   ; 
- D 0 - I - 0x009A88 02:9A78: 04        .byte $04   ; 
- D 0 - I - 0x009A89 02:9A79: 04        .byte $04   ; 
- D 0 - I - 0x009A8A 02:9A7A: 04        .byte $04   ; 
- D 0 - I - 0x009A8B 02:9A7B: 04        .byte $04   ; 
- D 0 - I - 0x009A8C 02:9A7C: 04        .byte $04   ; 
- D 0 - I - 0x009A8D 02:9A7D: 04        .byte $04   ; 
- D 0 - I - 0x009A8E 02:9A7E: 04        .byte $04   ; 
- D 0 - I - 0x009A8F 02:9A7F: 04        .byte $04   ; 
- D 0 - I - 0x009A90 02:9A80: 04        .byte $04   ; 
- D 0 - I - 0x009A91 02:9A81: 04        .byte $04   ; 
- D 0 - I - 0x009A92 02:9A82: 04        .byte $04   ; 
- D 0 - I - 0x009A93 02:9A83: 04        .byte $04   ; 
- D 0 - I - 0x009A94 02:9A84: 04        .byte $04   ; 
- D 0 - I - 0x009A95 02:9A85: 04        .byte $04   ; 
- D 0 - I - 0x009A96 02:9A86: 04        .byte $04   ; 
- D 0 - I - 0x009A97 02:9A87: 04        .byte $04   ; 
- D 0 - I - 0x009A98 02:9A88: 61        .byte $61   ; 
- D 0 - I - 0x009A99 02:9A89: 6D        .byte $6D   ; 
- D 0 - I - 0x009A9A 02:9A8A: 71        .byte $71   ; 
- D 0 - I - 0x009A9B 02:9A8B: 6D        .byte $6D   ; 
- D 0 - I - 0x009A9C 02:9A8C: 6D        .byte $6D   ; 
- D 0 - I - 0x009A9D 02:9A8D: 67        .byte $67   ; 
- D 0 - I - 0x009A9E 02:9A8E: 04        .byte $04   ; 
- D 0 - I - 0x009A9F 02:9A8F: 04        .byte $04   ; 
off_9A90_08:
- D 0 - I - 0x009AA0 02:9A90: 53        .byte $53   ; 
- D 0 - I - 0x009AA1 02:9A91: 55        .byte $55   ; 
- D 0 - I - 0x009AA2 02:9A92: 55        .byte $55   ; 
- D 0 - I - 0x009AA3 02:9A93: 43        .byte $43   ; 
- D 0 - I - 0x009AA4 02:9A94: 04        .byte $04   ; 
- D 0 - I - 0x009AA5 02:9A95: 04        .byte $04   ; 
- D 0 - I - 0x009AA6 02:9A96: 04        .byte $04   ; 
- D 0 - I - 0x009AA7 02:9A97: 04        .byte $04   ; 
- D 0 - I - 0x009AA8 02:9A98: 04        .byte $04   ; 
- D 0 - I - 0x009AA9 02:9A99: 04        .byte $04   ; 
- D 0 - I - 0x009AAA 02:9A9A: 04        .byte $04   ; 
- D 0 - I - 0x009AAB 02:9A9B: 04        .byte $04   ; 
- D 0 - I - 0x009AAC 02:9A9C: 04        .byte $04   ; 
- D 0 - I - 0x009AAD 02:9A9D: 16        .byte $16   ; 
- D 0 - I - 0x009AAE 02:9A9E: 04        .byte $04   ; 
- D 0 - I - 0x009AAF 02:9A9F: 04        .byte $04   ; 
- D 0 - I - 0x009AB0 02:9AA0: 41        .byte $41   ; 
- D 0 - I - 0x009AB1 02:9AA1: 55        .byte $55   ; 
- D 0 - I - 0x009AB2 02:9AA2: 55        .byte $55   ; 
- D 0 - I - 0x009AB3 02:9AA3: 43        .byte $43   ; 
- D 0 - I - 0x009AB4 02:9AA4: 04        .byte $04   ; 
- D 0 - I - 0x009AB5 02:9AA5: 04        .byte $04   ; 
- D 0 - I - 0x009AB6 02:9AA6: 61        .byte $61   ; 
- D 0 - I - 0x009AB7 02:9AA7: 6D        .byte $6D   ; 
- D 0 - I - 0x009AB8 02:9AA8: 6D        .byte $6D   ; 
- D 0 - I - 0x009AB9 02:9AA9: 67        .byte $67   ; 
- D 0 - I - 0x009ABA 02:9AAA: 16        .byte $16   ; 
off_9AAB_08:
- D 0 - I - 0x009ABB 02:9AAB: 04        .byte $04   ; 
- D 0 - I - 0x009ABC 02:9AAC: 04        .byte $04   ; 
- D 0 - I - 0x009ABD 02:9AAD: 04        .byte $04   ; 
- D 0 - I - 0x009ABE 02:9AAE: 04        .byte $04   ; 
- D 0 - I - 0x009ABF 02:9AAF: 04        .byte $04   ; 
- D 0 - I - 0x009AC0 02:9AB0: 04        .byte $04   ; 
- D 0 - I - 0x009AC1 02:9AB1: 41        .byte $41   ; 
- D 0 - I - 0x009AC2 02:9AB2: 55        .byte $55   ; 
- D 0 - I - 0x009AC3 02:9AB3: 7F        .byte $7F   ; 
- D 0 - I - 0x009AC4 02:9AB4: 6D        .byte $6D   ; 
- D 0 - I - 0x009AC5 02:9AB5: 6D        .byte $6D   ; 
- D 0 - I - 0x009AC6 02:9AB6: 67        .byte $67   ; 
- D 0 - I - 0x009AC7 02:9AB7: 04        .byte $04   ; 
- D 0 - I - 0x009AC8 02:9AB8: 04        .byte $04   ; 
- D 0 - I - 0x009AC9 02:9AB9: 04        .byte $04   ; 
- D 0 - I - 0x009ACA 02:9ABA: 04        .byte $04   ; 
- D 0 - I - 0x009ACB 02:9ABB: 04        .byte $04   ; 
- D 0 - I - 0x009ACC 02:9ABC: 04        .byte $04   ; 
- D 0 - I - 0x009ACD 02:9ABD: 04        .byte $04   ; 
- D 0 - I - 0x009ACE 02:9ABE: 04        .byte $04   ; 
- D 0 - I - 0x009ACF 02:9ABF: 04        .byte $04   ; 
- D 0 - I - 0x009AD0 02:9AC0: 16        .byte $16   ; 
- D 0 - I - 0x009AD1 02:9AC1: 04        .byte $04   ; 
- D 0 - I - 0x009AD2 02:9AC2: 04        .byte $04   ; 
- D 0 - I - 0x009AD3 02:9AC3: 04        .byte $04   ; 
- D 0 - I - 0x009AD4 02:9AC4: 04        .byte $04   ; 
- D 0 - I - 0x009AD5 02:9AC5: 04        .byte $04   ; 
- D 0 - I - 0x009AD6 02:9AC6: 04        .byte $04   ; 
- D 0 - I - 0x009AD7 02:9AC7: 04        .byte $04   ; 
- D 0 - I - 0x009AD8 02:9AC8: 04        .byte $04   ; 
- D 0 - I - 0x009AD9 02:9AC9: 41        .byte $41   ; 
- D 0 - I - 0x009ADA 02:9ACA: 52        .byte $52   ; 
off_9ACB_09:
- D 0 - I - 0x009ADB 02:9ACB: 73        .byte $73   ; 
- D 0 - I - 0x009ADC 02:9ACC: 6E        .byte $6E   ; 
- D 0 - I - 0x009ADD 02:9ACD: 6C        .byte $6C   ; 
- D 0 - I - 0x009ADE 02:9ACE: 66        .byte $66   ; 
- D 0 - I - 0x009ADF 02:9ACF: 4A        .byte $4A   ; 
- D 0 - I - 0x009AE0 02:9AD0: 00        .byte $00   ; 
- D 0 - I - 0x009AE1 02:9AD1: 00        .byte $00   ; 
- D 0 - I - 0x009AE2 02:9AD2: 00        .byte $00   ; 
- D 0 - I - 0x009AE3 02:9AD3: 00        .byte $00   ; 
- D 0 - I - 0x009AE4 02:9AD4: 14        .byte $14   ; 
- D 0 - I - 0x009AE5 02:9AD5: 00        .byte $00   ; 
- D 0 - I - 0x009AE6 02:9AD6: 00        .byte $00   ; 
- D 0 - I - 0x009AE7 02:9AD7: 00        .byte $00   ; 
- D 0 - I - 0x009AE8 02:9AD8: 00        .byte $00   ; 
- D 0 - I - 0x009AE9 02:9AD9: 00        .byte $00   ; 
- D 0 - I - 0x009AEA 02:9ADA: 48        .byte $48   ; 
- D 0 - I - 0x009AEB 02:9ADB: 60        .byte $60   ; 
- D 0 - I - 0x009AEC 02:9ADC: 6C        .byte $6C   ; 
- D 0 - I - 0x009AED 02:9ADD: 6E        .byte $6E   ; 
- D 0 - I - 0x009AEE 02:9ADE: 66        .byte $66   ; 
- D 0 - I - 0x009AEF 02:9ADF: 4A        .byte $4A   ; 
- D 0 - I - 0x009AF0 02:9AE0: 48        .byte $48   ; 
- D 0 - I - 0x009AF1 02:9AE1: 60        .byte $60   ; 
- D 0 - I - 0x009AF2 02:9AE2: 6C        .byte $6C   ; 
- D 0 - I - 0x009AF3 02:9AE3: 6E        .byte $6E   ; 
- D 0 - I - 0x009AF4 02:9AE4: 66        .byte $66   ; 
off_9AE5_12:
- D 0 - I - 0x009AF5 02:9AE5: 00        .byte $00   ; 
- D 0 - I - 0x009AF6 02:9AE6: 00        .byte $00   ; 
- D 0 - I - 0x009AF7 02:9AE7: 00        .byte $00   ; 
- D 0 - I - 0x009AF8 02:9AE8: 00        .byte $00   ; 
- D 0 - I - 0x009AF9 02:9AE9: 00        .byte $00   ; 
- D 0 - I - 0x009AFA 02:9AEA: 14        .byte $14   ; 
- - - - - - 0x009AFB 02:9AEB: 00        .byte $00   ; 
- - - - - - 0x009AFC 02:9AEC: 00        .byte $00   ; 
- - - - - - 0x009AFD 02:9AED: 00        .byte $00   ; 
- D 0 - I - 0x009AFE 02:9AEE: 00        .byte $00   ; 
- D 0 - I - 0x009AFF 02:9AEF: 00        .byte $00   ; 
- D 0 - I - 0x009B00 02:9AF0: 00        .byte $00   ; 
- D 0 - I - 0x009B01 02:9AF1: 00        .byte $00   ; 
- D 0 - I - 0x009B02 02:9AF2: A5        .byte $A5   ; 
- D 0 - I - 0x009B03 02:9AF3: A6        .byte $A6   ; 
- D 0 - I - 0x009B04 02:9AF4: A6        .byte $A6   ; 
- D 0 - I - 0x009B05 02:9AF5: A7        .byte $A7   ; 
- D 0 - I - 0x009B06 02:9AF6: A8        .byte $A8   ; 
- D 0 - I - 0x009B07 02:9AF7: 87        .byte $87   ; 
- D 0 - I - 0x009B08 02:9AF8: 10        .byte $10   ; 
- D 0 - I - 0x009B09 02:9AF9: 62        .byte $62   ; 
- D 0 - I - 0x009B0A 02:9AFA: 76        .byte $76   ; 
- D 0 - I - 0x009B0B 02:9AFB: 76        .byte $76   ; 
- D 0 - I - 0x009B0C 02:9AFC: EA        .byte $EA   ; 
- D 0 - I - 0x009B0D 02:9AFD: 6C        .byte $6C   ; 
- D 0 - I - 0x009B0E 02:9AFE: 68        .byte $68   ; 
- D 0 - I - 0x009B0F 02:9AFF: 4E        .byte $4E   ; 
- D 0 - I - 0x009B10 02:9B00: 00        .byte $00   ; 
- D 0 - I - 0x009B11 02:9B01: 00        .byte $00   ; 
- D 0 - I - 0x009B12 02:9B02: 1B        .byte $1B   ; 
- D 0 - I - 0x009B13 02:9B03: 20        .byte $20   ; 
- D 0 - I - 0x009B14 02:9B04: 00        .byte $00   ; 
off_9B05_0A:
- D 0 - I - 0x009B15 02:9B05: 73        .byte $73   ; 
- D 0 - I - 0x009B16 02:9B06: 6C        .byte $6C   ; 
- D 0 - I - 0x009B17 02:9B07: 6C        .byte $6C   ; 
- D 0 - I - 0x009B18 02:9B08: 7C        .byte $7C   ; 
- D 0 - I - 0x009B19 02:9B09: 54        .byte $54   ; 
- D 0 - I - 0x009B1A 02:9B0A: 42        .byte $42   ; 
- D 0 - I - 0x009B1B 02:9B0B: 00        .byte $00   ; 
- D 0 - I - 0x009B1C 02:9B0C: 00        .byte $00   ; 
- D 0 - I - 0x009B1D 02:9B0D: 00        .byte $00   ; 
- D 0 - I - 0x009B1E 02:9B0E: 00        .byte $00   ; 
- D 0 - I - 0x009B1F 02:9B0F: 00        .byte $00   ; 
- D 0 - I - 0x009B20 02:9B10: 00        .byte $00   ; 
- D 0 - I - 0x009B21 02:9B11: 40        .byte $40   ; 
- D 0 - I - 0x009B22 02:9B12: 54        .byte $54   ; 
- D 0 - I - 0x009B23 02:9B13: 54        .byte $54   ; 
- D 0 - I - 0x009B24 02:9B14: 54        .byte $54   ; 
- D 0 - I - 0x009B25 02:9B15: 7E        .byte $7E   ; 
- D 0 - I - 0x009B26 02:9B16: 6C        .byte $6C   ; 
- D 0 - I - 0x009B27 02:9B17: 6C        .byte $6C   ; 
- D 0 - I - 0x009B28 02:9B18: 7C        .byte $7C   ; 
- D 0 - I - 0x009B29 02:9B19: 54        .byte $54   ; 
- D 0 - I - 0x009B2A 02:9B1A: 54        .byte $54   ; 
- D 0 - I - 0x009B2B 02:9B1B: 7E        .byte $7E   ; 
- D 0 - I - 0x009B2C 02:9B1C: 6C        .byte $6C   ; 
- D 0 - I - 0x009B2D 02:9B1D: 6C        .byte $6C   ; 
- D 0 - I - 0x009B2E 02:9B1E: 66        .byte $66   ; 
- D 0 - I - 0x009B2F 02:9B1F: 00        .byte $00   ; 
- D 0 - I - 0x009B30 02:9B20: 00        .byte $00   ; 
- D 0 - I - 0x009B31 02:9B21: 14        .byte $14   ; 
- D 0 - I - 0x009B32 02:9B22: 00        .byte $00   ; 
- D 0 - I - 0x009B33 02:9B23: 40        .byte $40   ; 
off_9B24_0A:
- D 0 - I - 0x009B34 02:9B24: 54        .byte $54   ; 
- D 0 - I - 0x009B35 02:9B25: 42        .byte $42   ; 
- D 0 - I - 0x009B36 02:9B26: 00        .byte $00   ; 
- D 0 - I - 0x009B37 02:9B27: 15        .byte $15   ; 
- D 0 - I - 0x009B38 02:9B28: 00        .byte $00   ; 
- D 0 - I - 0x009B39 02:9B29: 14        .byte $14   ; 
- D 0 - I - 0x009B3A 02:9B2A: 60        .byte $60   ; 
- D 0 - I - 0x009B3B 02:9B2B: 6C        .byte $6C   ; 
- D 0 - I - 0x009B3C 02:9B2C: 6C        .byte $6C   ; 
- D 0 - I - 0x009B3D 02:9B2D: 6C        .byte $6C   ; 
- D 0 - I - 0x009B3E 02:9B2E: 6C        .byte $6C   ; 
- D 0 - I - 0x009B3F 02:9B2F: 66        .byte $66   ; 
- D 0 - I - 0x009B40 02:9B30: 00        .byte $00   ; 
- D 0 - I - 0x009B41 02:9B31: 00        .byte $00   ; 
- D 0 - I - 0x009B42 02:9B32: 14        .byte $14   ; 
- D 0 - I - 0x009B43 02:9B33: 00        .byte $00   ; 
- D 0 - I - 0x009B44 02:9B34: 00        .byte $00   ; 
- D 0 - I - 0x009B45 02:9B35: 00        .byte $00   ; 
- D 0 - I - 0x009B46 02:9B36: 40        .byte $40   ; 
- D 0 - I - 0x009B47 02:9B37: 54        .byte $54   ; 
- D 0 - I - 0x009B48 02:9B38: 54        .byte $54   ; 
- D 0 - I - 0x009B49 02:9B39: 42        .byte $42   ; 
- D 0 - I - 0x009B4A 02:9B3A: 00        .byte $00   ; 
- D 0 - I - 0x009B4B 02:9B3B: 00        .byte $00   ; 
- D 0 - I - 0x009B4C 02:9B3C: 00        .byte $00   ; 
- D 0 - I - 0x009B4D 02:9B3D: 00        .byte $00   ; 
- D 0 - I - 0x009B4E 02:9B3E: 00        .byte $00   ; 
- D 0 - I - 0x009B4F 02:9B3F: 00        .byte $00   ; 
- D 0 - I - 0x009B50 02:9B40: 40        .byte $40   ; 
- D 0 - I - 0x009B51 02:9B41: 54        .byte $54   ; 
- D 0 - I - 0x009B52 02:9B42: 7E        .byte $7E   ; 
- D 0 - I - 0x009B53 02:9B43: 72        .byte $72   ; 
off_9B44_0B:
- D 0 - I - 0x009B54 02:9B44: 75        .byte $75   ; 
- D 0 - I - 0x009B55 02:9B45: 6D        .byte $6D   ; 
- D 0 - I - 0x009B56 02:9B46: 6D        .byte $6D   ; 
- D 0 - I - 0x009B57 02:9B47: 6D        .byte $6D   ; 
- D 0 - I - 0x009B58 02:9B48: 70        .byte $70   ; 
- D 0 - I - 0x009B59 02:9B49: 6A        .byte $6A   ; 
- D 0 - I - 0x009B5A 02:9B4A: 04        .byte $04   ; 
- D 0 - I - 0x009B5B 02:9B4B: 04        .byte $04   ; 
- D 0 - I - 0x009B5C 02:9B4C: 04        .byte $04   ; 
- D 0 - I - 0x009B5D 02:9B4D: 04        .byte $04   ; 
- D 0 - I - 0x009B5E 02:9B4E: 04        .byte $04   ; 
- D 0 - I - 0x009B5F 02:9B4F: 04        .byte $04   ; 
- D 0 - I - 0x009B60 02:9B50: 45        .byte $45   ; 
- D 0 - I - 0x009B61 02:9B51: 5B        .byte $5B   ; 
- D 0 - I - 0x009B62 02:9B52: 7B        .byte $7B   ; 
- D 0 - I - 0x009B63 02:9B53: 71        .byte $71   ; 
- D 0 - I - 0x009B64 02:9B54: 6D        .byte $6D   ; 
- D 0 - I - 0x009B65 02:9B55: 6D        .byte $6D   ; 
- D 0 - I - 0x009B66 02:9B56: 6D        .byte $6D   ; 
- D 0 - I - 0x009B67 02:9B57: 6D        .byte $6D   ; 
- D 0 - I - 0x009B68 02:9B58: 6D        .byte $6D   ; 
- D 0 - I - 0x009B69 02:9B59: 6D        .byte $6D   ; 
- D 0 - I - 0x009B6A 02:9B5A: 70        .byte $70   ; 
- D 0 - I - 0x009B6B 02:9B5B: 6D        .byte $6D   ; 
- D 0 - I - 0x009B6C 02:9B5C: 6D        .byte $6D   ; 
- D 0 - I - 0x009B6D 02:9B5D: 6A        .byte $6A   ; 
- D 0 - I - 0x009B6E 02:9B5E: 04        .byte $04   ; 
- D 0 - I - 0x009B6F 02:9B5F: 04        .byte $04   ; 
off_9B60_18:
- D 0 - I - 0x009B70 02:9B60: 04        .byte $04   ; 
- D 0 - I - 0x009B71 02:9B61: 04        .byte $04   ; 
- D 0 - I - 0x009B72 02:9B62: 61        .byte $61   ; 
- D 0 - I - 0x009B73 02:9B63: 6D        .byte $6D   ; 
- D 0 - I - 0x009B74 02:9B64: 70        .byte $70   ; 
- D 0 - I - 0x009B75 02:9B65: 6B        .byte $6B   ; 
- D 0 - I - 0x009B76 02:9B66: 04        .byte $04   ; 
- D 0 - I - 0x009B77 02:9B67: 04        .byte $04   ; 
- D 0 - I - 0x009B78 02:9B68: 04        .byte $04   ; 
- D 0 - I - 0x009B79 02:9B69: 04        .byte $04   ; 
- D 0 - I - 0x009B7A 02:9B6A: 04        .byte $04   ; 
- D 0 - I - 0x009B7B 02:9B6B: 04        .byte $04   ; 
- D 0 - I - 0x009B7C 02:9B6C: 04        .byte $04   ; 
- D 0 - I - 0x009B7D 02:9B6D: 04        .byte $04   ; 
- D 0 - I - 0x009B7E 02:9B6E: 04        .byte $04   ; 
- D 0 - I - 0x009B7F 02:9B6F: 04        .byte $04   ; 
- D 0 - I - 0x009B80 02:9B70: 61        .byte $61   ; 
- D 0 - I - 0x009B81 02:9B71: 6D        .byte $6D   ; 
- D 0 - I - 0x009B82 02:9B72: 6D        .byte $6D   ; 
- D 0 - I - 0x009B83 02:9B73: 70        .byte $70   ; 
- D 0 - I - 0x009B84 02:9B74: 6D        .byte $6D   ; 
- D 0 - I - 0x009B85 02:9B75: 6D        .byte $6D   ; 
- D 0 - I - 0x009B86 02:9B76: 6D        .byte $6D   ; 
- D 0 - I - 0x009B87 02:9B77: 6D        .byte $6D   ; 
- D 0 - I - 0x009B88 02:9B78: 71        .byte $71   ; 
- D 0 - I - 0x009B89 02:9B79: 6B        .byte $6B   ; 
- D 0 - I - 0x009B8A 02:9B7A: 04        .byte $04   ; 
- D 0 - I - 0x009B8B 02:9B7B: 04        .byte $04   ; 
- D 0 - I - 0x009B8C 02:9B7C: 28        .byte $28   ; 
- D 0 - I - 0x009B8D 02:9B7D: 04        .byte $04   ; 
- D 0 - I - 0x009B8E 02:9B7E: 04        .byte $04   ; 
- D 0 - I - 0x009B8F 02:9B7F: 2B        .byte $2B   ; 
off_9B80_0C:
- D 0 - I - 0x009B90 02:9B80: 75        .byte $75   ; 
- D 0 - I - 0x009B91 02:9B81: 6D        .byte $6D   ; 
- D 0 - I - 0x009B92 02:9B82: 71        .byte $71   ; 
- D 0 - I - 0x009B93 02:9B83: 6D        .byte $6D   ; 
- D 0 - I - 0x009B94 02:9B84: 6D        .byte $6D   ; 
- D 0 - I - 0x009B95 02:9B85: 6B        .byte $6B   ; 
- D 0 - I - 0x009B96 02:9B86: 16        .byte $16   ; 
- D 0 - I - 0x009B97 02:9B87: 04        .byte $04   ; 
- D 0 - I - 0x009B98 02:9B88: 04        .byte $04   ; 
- D 0 - I - 0x009B99 02:9B89: 04        .byte $04   ; 
- D 0 - I - 0x009B9A 02:9B8A: 16        .byte $16   ; 
- D 0 - I - 0x009B9B 02:9B8B: 04        .byte $04   ; 
- D 0 - I - 0x009B9C 02:9B8C: 04        .byte $04   ; 
- D 0 - I - 0x009B9D 02:9B8D: 4D        .byte $4D   ; 
- D 0 - I - 0x009B9E 02:9B8E: 61        .byte $61   ; 
- D 0 - I - 0x009B9F 02:9B8F: 6D        .byte $6D   ; 
- D 0 - I - 0x009BA0 02:9B90: 6D        .byte $6D   ; 
- D 0 - I - 0x009BA1 02:9B91: 6D        .byte $6D   ; 
- D 0 - I - 0x009BA2 02:9B92: 6D        .byte $6D   ; 
- D 0 - I - 0x009BA3 02:9B93: 6D        .byte $6D   ; 
- D 0 - I - 0x009BA4 02:9B94: 6D        .byte $6D   ; 
- D 0 - I - 0x009BA5 02:9B95: 6D        .byte $6D   ; 
- D 0 - I - 0x009BA6 02:9B96: 6D        .byte $6D   ; 
- D 0 - I - 0x009BA7 02:9B97: 6D        .byte $6D   ; 
- D 0 - I - 0x009BA8 02:9B98: 6D        .byte $6D   ; 
- D 0 - I - 0x009BA9 02:9B99: 6B        .byte $6B   ; 
- D 0 - I - 0x009BAA 02:9B9A: 04        .byte $04   ; 
- D 0 - I - 0x009BAB 02:9B9B: 04        .byte $04   ; 
- D 0 - I - 0x009BAC 02:9B9C: 04        .byte $04   ; 
- D 0 - I - 0x009BAD 02:9B9D: 04        .byte $04   ; 
- D 0 - I - 0x009BAE 02:9B9E: 61        .byte $61   ; 
off_9B9F_05:
- D 0 - I - 0x009BAF 02:9B9F: 70        .byte $70   ; 
- D 0 - I - 0x009BB0 02:9BA0: 6D        .byte $6D   ; 
- D 0 - I - 0x009BB1 02:9BA1: 6D        .byte $6D   ; 
- D 0 - I - 0x009BB2 02:9BA2: 79        .byte $79   ; 
- D 0 - I - 0x009BB3 02:9BA3: 5E        .byte $5E   ; 
- D 0 - I - 0x009BB4 02:9BA4: 47        .byte $47   ; 
- D 0 - I - 0x009BB5 02:9BA5: 04        .byte $04   ; 
- D 0 - I - 0x009BB6 02:9BA6: 04        .byte $04   ; 
- D 0 - I - 0x009BB7 02:9BA7: 04        .byte $04   ; 
- D 0 - I - 0x009BB8 02:9BA8: 04        .byte $04   ; 
- D 0 - I - 0x009BB9 02:9BA9: 45        .byte $45   ; 
- D 0 - I - 0x009BBA 02:9BAA: 5B        .byte $5B   ; 
- D 0 - I - 0x009BBB 02:9BAB: 5B        .byte $5B   ; 
- D 0 - I - 0x009BBC 02:9BAC: 5E        .byte $5E   ; 
- D 0 - I - 0x009BBD 02:9BAD: 5F        .byte $5F   ; 
- D 0 - I - 0x009BBE 02:9BAE: 47        .byte $47   ; 
- D 0 - I - 0x009BBF 02:9BAF: 04        .byte $04   ; 
- D 0 - I - 0x009BC0 02:9BB0: 04        .byte $04   ; 
- D 0 - I - 0x009BC1 02:9BB1: 04        .byte $04   ; 
- D 0 - I - 0x009BC2 02:9BB2: 04        .byte $04   ; 
- D 0 - I - 0x009BC3 02:9BB3: 04        .byte $04   ; 
- D 0 - I - 0x009BC4 02:9BB4: 04        .byte $04   ; 
- D 0 - I - 0x009BC5 02:9BB5: 04        .byte $04   ; 
- D 0 - I - 0x009BC6 02:9BB6: 04        .byte $04   ; 
- D 0 - I - 0x009BC7 02:9BB7: 04        .byte $04   ; 
- D 0 - I - 0x009BC8 02:9BB8: 16        .byte $16   ; 
- D 0 - I - 0x009BC9 02:9BB9: 04        .byte $04   ; 
- D 0 - I - 0x009BCA 02:9BBA: 49        .byte $49   ; 
- D 0 - I - 0x009BCB 02:9BBB: 61        .byte $61   ; 
- D 0 - I - 0x009BCC 02:9BBC: 6D        .byte $6D   ; 
- D 0 - I - 0x009BCD 02:9BBD: 70        .byte $70   ; 
- D 0 - I - 0x009BCE 02:9BBE: 74        .byte $74   ; 
off_9BBF_0D:
- D 0 - I - 0x009BCF 02:9BBF: 73        .byte $73   ; 
- D 0 - I - 0x009BD0 02:9BC0: 6C        .byte $6C   ; 
- D 0 - I - 0x009BD1 02:9BC1: 6C        .byte $6C   ; 
- D 0 - I - 0x009BD2 02:9BC2: 78        .byte $78   ; 
- D 0 - I - 0x009BD3 02:9BC3: 5C        .byte $5C   ; 
- D 0 - I - 0x009BD4 02:9BC4: 46        .byte $46   ; 
- D 0 - I - 0x009BD5 02:9BC5: 00        .byte $00   ; 
- D 0 - I - 0x009BD6 02:9BC6: 00        .byte $00   ; 
- D 0 - I - 0x009BD7 02:9BC7: 00        .byte $00   ; 
- D 0 - I - 0x009BD8 02:9BC8: 00        .byte $00   ; 
- D 0 - I - 0x009BD9 02:9BC9: 00        .byte $00   ; 
- D 0 - I - 0x009BDA 02:9BCA: 00        .byte $00   ; 
- D 0 - I - 0x009BDB 02:9BCB: 00        .byte $00   ; 
- D 0 - I - 0x009BDC 02:9BCC: 00        .byte $00   ; 
- D 0 - I - 0x009BDD 02:9BCD: 44        .byte $44   ; 
- D 0 - I - 0x009BDE 02:9BCE: 5A        .byte $5A   ; 
- D 0 - I - 0x009BDF 02:9BCF: 5A        .byte $5A   ; 
- D 0 - I - 0x009BE0 02:9BD0: 5A        .byte $5A   ; 
- D 0 - I - 0x009BE1 02:9BD1: 7A        .byte $7A   ; 
- D 0 - I - 0x009BE2 02:9BD2: 6E        .byte $6E   ; 
- D 0 - I - 0x009BE3 02:9BD3: 6C        .byte $6C   ; 
- D 0 - I - 0x009BE4 02:9BD4: 78        .byte $78   ; 
- D 0 - I - 0x009BE5 02:9BD5: 5A        .byte $5A   ; 
- D 0 - I - 0x009BE6 02:9BD6: 5C        .byte $5C   ; 
- D 0 - I - 0x009BE7 02:9BD7: 5D        .byte $5D   ; 
- D 0 - I - 0x009BE8 02:9BD8: 46        .byte $46   ; 
- D 0 - I - 0x009BE9 02:9BD9: 00        .byte $00   ; 
- D 0 - I - 0x009BEA 02:9BDA: 00        .byte $00   ; 
off_9BDB_01:
- D 0 - I - 0x009BEB 02:9BDB: 00        .byte $00   ; 
- D 0 - I - 0x009BEC 02:9BDC: 48        .byte $48   ; 
- D 0 - I - 0x009BED 02:9BDD: 60        .byte $60   ; 
- D 0 - I - 0x009BEE 02:9BDE: 6C        .byte $6C   ; 
- D 0 - I - 0x009BEF 02:9BDF: 6C        .byte $6C   ; 
- D 0 - I - 0x009BF0 02:9BE0: 66        .byte $66   ; 
- D 0 - I - 0x009BF1 02:9BE1: 00        .byte $00   ; 
- D 0 - I - 0x009BF2 02:9BE2: 00        .byte $00   ; 
- D 0 - I - 0x009BF3 02:9BE3: 00        .byte $00   ; 
- D 0 - I - 0x009BF4 02:9BE4: 00        .byte $00   ; 
- D 0 - I - 0x009BF5 02:9BE5: 00        .byte $00   ; 
- D 0 - I - 0x009BF6 02:9BE6: 48        .byte $48   ; 
- D 0 - I - 0x009BF7 02:9BE7: 60        .byte $60   ; 
- D 0 - I - 0x009BF8 02:9BE8: 6C        .byte $6C   ; 
- D 0 - I - 0x009BF9 02:9BE9: 6C        .byte $6C   ; 
- D 0 - I - 0x009BFA 02:9BEA: 6E        .byte $6E   ; 
- D 0 - I - 0x009BFB 02:9BEB: 6C        .byte $6C   ; 
- D 0 - I - 0x009BFC 02:9BEC: 78        .byte $78   ; 
- D 0 - I - 0x009BFD 02:9BED: 5A        .byte $5A   ; 
- D 0 - I - 0x009BFE 02:9BEE: 5C        .byte $5C   ; 
- D 0 - I - 0x009BFF 02:9BEF: 5D        .byte $5D   ; 
- D 0 - I - 0x009C00 02:9BF0: 46        .byte $46   ; 
- D 0 - I - 0x009C01 02:9BF1: 00        .byte $00   ; 
- D 0 - I - 0x009C02 02:9BF2: 00        .byte $00   ; 
- D 0 - I - 0x009C03 02:9BF3: 00        .byte $00   ; 
- D 0 - I - 0x009C04 02:9BF4: 00        .byte $00   ; 
- D 0 - I - 0x009C05 02:9BF5: 00        .byte $00   ; 
- D 0 - I - 0x009C06 02:9BF6: 00        .byte $00   ; 
- D 0 - I - 0x009C07 02:9BF7: 00        .byte $00   ; 
- D 0 - I - 0x009C08 02:9BF8: 00        .byte $00   ; 
- D 0 - I - 0x009C09 02:9BF9: 00        .byte $00   ; 
- D 0 - I - 0x009C0A 02:9BFA: 1B        .byte $1B   ; 
off_9BFB_0E:
- D 0 - I - 0x009C0B 02:9BFB: 73        .byte $73   ; 
- D 0 - I - 0x009C0C 02:9BFC: 6E        .byte $6E   ; 
- D 0 - I - 0x009C0D 02:9BFD: 6C        .byte $6C   ; 
- D 0 - I - 0x009C0E 02:9BFE: 68        .byte $68   ; 
- D 0 - I - 0x009C0F 02:9BFF: 4E        .byte $4E   ; 
- D 0 - I - 0x009C10 02:9C00: 00        .byte $00   ; 
- D 0 - I - 0x009C11 02:9C01: 00        .byte $00   ; 
- D 0 - I - 0x009C12 02:9C02: 00        .byte $00   ; 
- D 0 - I - 0x009C13 02:9C03: 00        .byte $00   ; 
- D 0 - I - 0x009C14 02:9C04: 00        .byte $00   ; 
- D 0 - I - 0x009C15 02:9C05: 00        .byte $00   ; 
- D 0 - I - 0x009C16 02:9C06: 00        .byte $00   ; 
- D 0 - I - 0x009C17 02:9C07: 00        .byte $00   ; 
- D 0 - I - 0x009C18 02:9C08: 00        .byte $00   ; 
- D 0 - I - 0x009C19 02:9C09: 00        .byte $00   ; 
- D 0 - I - 0x009C1A 02:9C0A: 00        .byte $00   ; 
- D 0 - I - 0x009C1B 02:9C0B: 00        .byte $00   ; 
- D 0 - I - 0x009C1C 02:9C0C: 4C        .byte $4C   ; 
- D 0 - I - 0x009C1D 02:9C0D: 60        .byte $60   ; 
- D 0 - I - 0x009C1E 02:9C0E: 6C        .byte $6C   ; 
- D 0 - I - 0x009C1F 02:9C0F: 6F        .byte $6F   ; 
- D 0 - I - 0x009C20 02:9C10: 68        .byte $68   ; 
- D 0 - I - 0x009C21 02:9C11: 4E        .byte $4E   ; 
- D 0 - I - 0x009C22 02:9C12: 00        .byte $00   ; 
- D 0 - I - 0x009C23 02:9C13: 00        .byte $00   ; 
- D 0 - I - 0x009C24 02:9C14: 00        .byte $00   ; 
- D 0 - I - 0x009C25 02:9C15: 00        .byte $00   ; 
- D 0 - I - 0x009C26 02:9C16: 00        .byte $00   ; 
- D 0 - I - 0x009C27 02:9C17: 40        .byte $40   ; 
- D 0 - I - 0x009C28 02:9C18: 54        .byte $54   ; 
- D 0 - I - 0x009C29 02:9C19: 7E        .byte $7E   ; 
off_9C1A_0E:
- D 0 - I - 0x009C2A 02:9C1A: 6C        .byte $6C   ; 
- D 0 - I - 0x009C2B 02:9C1B: F0        .byte $F0   ; 
- D 0 - I - 0x009C2C 02:9C1C: 7C        .byte $7C   ; 
- D 0 - I - 0x009C2D 02:9C1D: 54        .byte $54   ; 
- D 0 - I - 0x009C2E 02:9C1E: 42        .byte $42   ; 
- D 0 - I - 0x009C2F 02:9C1F: 00        .byte $00   ; 
- D 0 - I - 0x009C30 02:9C20: 00        .byte $00   ; 
- D 0 - I - 0x009C31 02:9C21: 00        .byte $00   ; 
- D 0 - I - 0x009C32 02:9C22: 60        .byte $60   ; 
- D 0 - I - 0x009C33 02:9C23: 6C        .byte $6C   ; 
- D 0 - I - 0x009C34 02:9C24: 6E        .byte $6E   ; 
- D 0 - I - 0x009C35 02:9C25: 69        .byte $69   ; 
- D 0 - I - 0x009C36 02:9C26: 00        .byte $00   ; 
- D 0 - I - 0x009C37 02:9C27: 23        .byte $23   ; 
- D 0 - I - 0x009C38 02:9C28: B0        .byte $B0   ; 
- D 0 - I - 0x009C39 02:9C29: B1        .byte $B1   ; 
- D 0 - I - 0x009C3A 02:9C2A: B2        .byte $B2   ; 
- D 0 - I - 0x009C3B 02:9C2B: B3        .byte $B3   ; 
- D 0 - I - 0x009C3C 02:9C2C: B4        .byte $B4   ; 
- D 0 - I - 0x009C3D 02:9C2D: 00        .byte $00   ; 
- D 0 - I - 0x009C3E 02:9C2E: 00        .byte $00   ; 
- D 0 - I - 0x009C3F 02:9C2F: 00        .byte $00   ; 
- D 0 - I - 0x009C40 02:9C30: 00        .byte $00   ; 
- D 0 - I - 0x009C41 02:9C31: 00        .byte $00   ; 
- - - - - - 0x009C42 02:9C32: 00        .byte $00   ; 
- - - - - - 0x009C43 02:9C33: 00        .byte $00   ; 
- - - - - - 0x009C44 02:9C34: 15        .byte $15   ; 
- - - - - - 0x009C45 02:9C35: 00        .byte $00   ; 
- - - - - - 0x009C46 02:9C36: 15        .byte $15   ; 
- - - - - - 0x009C47 02:9C37: 00        .byte $00   ; 
- - - - - - 0x009C48 02:9C38: 00        .byte $00   ; 
- - - - - - 0x009C49 02:9C39: 00        .byte $00   ; 
off_9C3A_0F:
- D 0 - I - 0x009C4A 02:9C3A: 59        .byte $59   ; 
- D 0 - I - 0x009C4B 02:9C3B: 5E        .byte $5E   ; 
- D 0 - I - 0x009C4C 02:9C3C: 5F        .byte $5F   ; 
- D 0 - I - 0x009C4D 02:9C3D: 47        .byte $47   ; 
- D 0 - I - 0x009C4E 02:9C3E: 04        .byte $04   ; 
- D 0 - I - 0x009C4F 02:9C3F: 04        .byte $04   ; 
- D 0 - I - 0x009C50 02:9C40: 04        .byte $04   ; 
- D 0 - I - 0x009C51 02:9C41: 16        .byte $16   ; 
- D 0 - I - 0x009C52 02:9C42: 04        .byte $04   ; 
- D 0 - I - 0x009C53 02:9C43: 04        .byte $04   ; 
- D 0 - I - 0x009C54 02:9C44: 04        .byte $04   ; 
- D 0 - I - 0x009C55 02:9C45: 16        .byte $16   ; 
- D 0 - I - 0x009C56 02:9C46: 04        .byte $04   ; 
- D 0 - I - 0x009C57 02:9C47: 04        .byte $04   ; 
- D 0 - I - 0x009C58 02:9C48: 04        .byte $04   ; 
- D 0 - I - 0x009C59 02:9C49: 17        .byte $17   ; 
- D 0 - I - 0x009C5A 02:9C4A: 04        .byte $04   ; 
- D 0 - I - 0x009C5B 02:9C4B: 04        .byte $04   ; 
- D 0 - I - 0x009C5C 02:9C4C: 45        .byte $45   ; 
- D 0 - I - 0x009C5D 02:9C4D: 5E        .byte $5E   ; 
- D 0 - I - 0x009C5E 02:9C4E: 5F        .byte $5F   ; 
- D 0 - I - 0x009C5F 02:9C4F: 47        .byte $47   ; 
- D 0 - I - 0x009C60 02:9C50: 04        .byte $04   ; 
- D 0 - I - 0x009C61 02:9C51: 04        .byte $04   ; 
- D 0 - I - 0x009C62 02:9C52: 04        .byte $04   ; 
- D 0 - I - 0x009C63 02:9C53: 04        .byte $04   ; 
- D 0 - I - 0x009C64 02:9C54: 04        .byte $04   ; 
- D 0 - I - 0x009C65 02:9C55: 16        .byte $16   ; 
- D 0 - I - 0x009C66 02:9C56: 61        .byte $61   ; 
- D 0 - I - 0x009C67 02:9C57: 6D        .byte $6D   ; 
- D 0 - I - 0x009C68 02:9C58: 71        .byte $71   ; 
off_9C59_0F:
- D 0 - I - 0x009C69 02:9C59: 6D        .byte $6D   ; 
- D 0 - I - 0x009C6A 02:9C5A: F7        .byte $F7   ; 
- D 0 - I - 0x009C6B 02:9C5B: 6D        .byte $6D   ; 
- D 0 - I - 0x009C6C 02:9C5C: 70        .byte $70   ; 
- D 0 - I - 0x009C6D 02:9C5D: 67        .byte $67   ; 
- D 0 - I - 0x009C6E 02:9C5E: 04        .byte $04   ; 
- D 0 - I - 0x009C6F 02:9C5F: 04        .byte $04   ; 
- D 0 - I - 0x009C70 02:9C60: 04        .byte $04   ; 
- D 0 - I - 0x009C71 02:9C61: 45        .byte $45   ; 
- D 0 - I - 0x009C72 02:9C62: 5E        .byte $5E   ; 
- D 0 - I - 0x009C73 02:9C63: 5F        .byte $5F   ; 
- D 0 - I - 0x009C74 02:9C64: 47        .byte $47   ; 
- D 0 - I - 0x009C75 02:9C65: 04        .byte $04   ; 
- D 0 - I - 0x009C76 02:9C66: 34        .byte $34   ; 
- D 0 - I - 0x009C77 02:9C67: C0        .byte $C0   ; 
- D 0 - I - 0x009C78 02:9C68: C1        .byte $C1   ; 
- D 0 - I - 0x009C79 02:9C69: C2        .byte $C2   ; 
- D 0 - I - 0x009C7A 02:9C6A: C3        .byte $C3   ; 
- D 0 - I - 0x009C7B 02:9C6B: C4        .byte $C4   ; 
- D 0 - I - 0x009C7C 02:9C6C: 04        .byte $04   ; 
- D 0 - I - 0x009C7D 02:9C6D: 04        .byte $04   ; 
- D 0 - I - 0x009C7E 02:9C6E: 04        .byte $04   ; 
- D 0 - I - 0x009C7F 02:9C6F: 17        .byte $17   ; 
- D 0 - I - 0x009C80 02:9C70: 04        .byte $04   ; 
- - - - - - 0x009C81 02:9C71: 04        .byte $04   ; 
- - - - - - 0x009C82 02:9C72: 04        .byte $04   ; 
- - - - - - 0x009C83 02:9C73: 04        .byte $04   ; 
- - - - - - 0x009C84 02:9C74: 04        .byte $04   ; 
- - - - - - 0x009C85 02:9C75: 04        .byte $04   ; 
- - - - - - 0x009C86 02:9C76: 16        .byte $16   ; 
- - - - - - 0x009C87 02:9C77: 04        .byte $04   ; 
- - - - - - 0x009C88 02:9C78: 04        .byte $04   ; 
off_9C79_10:
- D 0 - I - 0x009C89 02:9C79: 2C        .byte $2C   ; 
- D 0 - I - 0x009C8A 02:9C7A: 04        .byte $04   ; 
- D 0 - I - 0x009C8B 02:9C7B: 16        .byte $16   ; 
- D 0 - I - 0x009C8C 02:9C7C: 04        .byte $04   ; 
- D 0 - I - 0x009C8D 02:9C7D: 04        .byte $04   ; 
- D 0 - I - 0x009C8E 02:9C7E: 04        .byte $04   ; 
- D 0 - I - 0x009C8F 02:9C7F: 17        .byte $17   ; 
- D 0 - I - 0x009C90 02:9C80: 04        .byte $04   ; 
- D 0 - I - 0x009C91 02:9C81: 41        .byte $41   ; 
- D 0 - I - 0x009C92 02:9C82: 55        .byte $55   ; 
- D 0 - I - 0x009C93 02:9C83: 55        .byte $55   ; 
- D 0 - I - 0x009C94 02:9C84: 55        .byte $55   ; 
- D 0 - I - 0x009C95 02:9C85: 55        .byte $55   ; 
- D 0 - I - 0x009C96 02:9C86: 43        .byte $43   ; 
- D 0 - I - 0x009C97 02:9C87: 04        .byte $04   ; 
- D 0 - I - 0x009C98 02:9C88: 04        .byte $04   ; 
off_9C89_05:
- D 0 - I - 0x009C99 02:9C89: 04        .byte $04   ; 
- D 0 - I - 0x009C9A 02:9C8A: 04        .byte $04   ; 
- D 0 - I - 0x009C9B 02:9C8B: 04        .byte $04   ; 
- D 0 - I - 0x009C9C 02:9C8C: 04        .byte $04   ; 
- D 0 - I - 0x009C9D 02:9C8D: 04        .byte $04   ; 
- D 0 - I - 0x009C9E 02:9C8E: 04        .byte $04   ; 
- D 0 - I - 0x009C9F 02:9C8F: 04        .byte $04   ; 
- D 0 - I - 0x009CA0 02:9C90: 04        .byte $04   ; 
- D 0 - I - 0x009CA1 02:9C91: 04        .byte $04   ; 
- D 0 - I - 0x009CA2 02:9C92: 04        .byte $04   ; 
- D 0 - I - 0x009CA3 02:9C93: 04        .byte $04   ; 
- D 0 - I - 0x009CA4 02:9C94: 04        .byte $04   ; 
- D 0 - I - 0x009CA5 02:9C95: 61        .byte $61   ; 
- D 0 - I - 0x009CA6 02:9C96: 6D        .byte $6D   ; 
- D 0 - I - 0x009CA7 02:9C97: 6D        .byte $6D   ; 
- D 0 - I - 0x009CA8 02:9C98: 6D        .byte $6D   ; 
- D 0 - I - 0x009CA9 02:9C99: 6D        .byte $6D   ; 
- D 0 - I - 0x009CAA 02:9C9A: 67        .byte $67   ; 
off_9C9B_05:
- D 0 - I - 0x009CAB 02:9C9B: 04        .byte $04   ; 
- D 0 - I - 0x009CAC 02:9C9C: 04        .byte $04   ; 
- D 0 - I - 0x009CAD 02:9C9D: 04        .byte $04   ; 
- D 0 - I - 0x009CAE 02:9C9E: 04        .byte $04   ; 
- D 0 - I - 0x009CAF 02:9C9F: 04        .byte $04   ; 
- D 0 - I - 0x009CB0 02:9CA0: 04        .byte $04   ; 
- D 0 - I - 0x009CB1 02:9CA1: 04        .byte $04   ; 
- D 0 - I - 0x009CB2 02:9CA2: 04        .byte $04   ; 
- D 0 - I - 0x009CB3 02:9CA3: 04        .byte $04   ; 
- D 0 - I - 0x009CB4 02:9CA4: 04        .byte $04   ; 
- D 0 - I - 0x009CB5 02:9CA5: 04        .byte $04   ; 
- D 0 - I - 0x009CB6 02:9CA6: 04        .byte $04   ; 
- D 0 - I - 0x009CB7 02:9CA7: 04        .byte $04   ; 
- D 0 - I - 0x009CB8 02:9CA8: 04        .byte $04   ; 
- D 0 - I - 0x009CB9 02:9CA9: 04        .byte $04   ; 
- D 0 - I - 0x009CBA 02:9CAA: 04        .byte $04   ; 
- D 0 - I - 0x009CBB 02:9CAB: 04        .byte $04   ; 
- D 0 - I - 0x009CBC 02:9CAC: 04        .byte $04   ; 
- D 0 - I - 0x009CBD 02:9CAD: 04        .byte $04   ; 
- D 0 - I - 0x009CBE 02:9CAE: 04        .byte $04   ; 
- D 0 - I - 0x009CBF 02:9CAF: 04        .byte $04   ; 
- D 0 - I - 0x009CC0 02:9CB0: 04        .byte $04   ; 
- D 0 - I - 0x009CC1 02:9CB1: 04        .byte $04   ; 
- D 0 - I - 0x009CC2 02:9CB2: 16        .byte $16   ; 
- - - - - - 0x009CC3 02:9CB3: 04        .byte $04   ; 
off_9CB4_0B:
- - - - - - 0x009CC4 02:9CB4: 04        .byte $04   ; 
- - - - - - 0x009CC5 02:9CB5: 04        .byte $04   ; 
- - - - - - 0x009CC6 02:9CB6: 16        .byte $16   ; 
- - - - - - 0x009CC7 02:9CB7: 04        .byte $04   ; 
- - - - - - 0x009CC8 02:9CB8: 04        .byte $04   ; 
- - - - - - 0x009CC9 02:9CB9: 04        .byte $04   ; 
- - - - - - 0x009CCA 02:9CBA: 04        .byte $04   ; 
- - - - - - 0x009CCB 02:9CBB: 04        .byte $04   ; 
- - - - - - 0x009CCC 02:9CBC: 04        .byte $04   ; 
- D 0 - I - 0x009CCD 02:9CBD: 17        .byte $17   ; 
- D 0 - I - 0x009CCE 02:9CBE: 04        .byte $04   ; 
- D 0 - I - 0x009CCF 02:9CBF: 16        .byte $16   ; 
- D 0 - I - 0x009CD0 02:9CC0: 04        .byte $04   ; 
- D 0 - I - 0x009CD1 02:9CC1: 04        .byte $04   ; 
- D 0 - I - 0x009CD2 02:9CC2: 04        .byte $04   ; 
- D 0 - I - 0x009CD3 02:9CC3: 04        .byte $04   ; 
- D 0 - I - 0x009CD4 02:9CC4: 04        .byte $04   ; 
- D 0 - I - 0x009CD5 02:9CC5: 04        .byte $04   ; 
- D 0 - I - 0x009CD6 02:9CC6: 2B        .byte $2B   ; 
- D 0 - I - 0x009CD7 02:9CC7: 30        .byte $30   ; 
- D 0 - I - 0x009CD8 02:9CC8: 04        .byte $04   ; 
- D 0 - I - 0x009CD9 02:9CC9: 04        .byte $04   ; 
- D 0 - I - 0x009CDA 02:9CCA: 61        .byte $61   ; 
- D 0 - I - 0x009CDB 02:9CCB: 6D        .byte $6D   ; 
- D 0 - I - 0x009CDC 02:9CCC: 6D        .byte $6D   ; 
- D 0 - I - 0x009CDD 02:9CCD: 6D        .byte $6D   ; 
- D 0 - I - 0x009CDE 02:9CCE: 6D        .byte $6D   ; 
off_9CCF_03:
- D 0 - I - 0x009CDF 02:9CCF: 6D        .byte $6D   ; 
- D 0 - I - 0x009CE0 02:9CD0: 6D        .byte $6D   ; 
- D 0 - I - 0x009CE1 02:9CD1: 6D        .byte $6D   ; 
- D 0 - I - 0x009CE2 02:9CD2: 6D        .byte $6D   ; 
- D 0 - I - 0x009CE3 02:9CD3: 6D        .byte $6D   ; 
- D 0 - I - 0x009CE4 02:9CD4: 6A        .byte $6A   ; 
- D 0 - I - 0x009CE5 02:9CD5: 04        .byte $04   ; 
- D 0 - I - 0x009CE6 02:9CD6: 04        .byte $04   ; 
- D 0 - I - 0x009CE7 02:9CD7: 04        .byte $04   ; 
- D 0 - I - 0x009CE8 02:9CD8: 04        .byte $04   ; 
- D 0 - I - 0x009CE9 02:9CD9: 61        .byte $61   ; 
- D 0 - I - 0x009CEA 02:9CDA: 6D        .byte $6D   ; 
- D 0 - I - 0x009CEB 02:9CDB: 70        .byte $70   ; 
- D 0 - I - 0x009CEC 02:9CDC: 6D        .byte $6D   ; 
- D 0 - I - 0x009CED 02:9CDD: 6D        .byte $6D   ; 
- D 0 - I - 0x009CEE 02:9CDE: 79        .byte $79   ; 
- D 0 - I - 0x009CEF 02:9CDF: 5E        .byte $5E   ; 
- D 0 - I - 0x009CF0 02:9CE0: 47        .byte $47   ; 
- D 0 - I - 0x009CF1 02:9CE1: 04        .byte $04   ; 
- D 0 - I - 0x009CF2 02:9CE2: 04        .byte $04   ; 
- D 0 - I - 0x009CF3 02:9CE3: 04        .byte $04   ; 
- D 0 - I - 0x009CF4 02:9CE4: 04        .byte $04   ; 
- D 0 - I - 0x009CF5 02:9CE5: 04        .byte $04   ; 
- D 0 - I - 0x009CF6 02:9CE6: 04        .byte $04   ; 
- D 0 - I - 0x009CF7 02:9CE7: 04        .byte $04   ; 
- D 0 - I - 0x009CF8 02:9CE8: 04        .byte $04   ; 
- D 0 - I - 0x009CF9 02:9CE9: 04        .byte $04   ; 
- D 0 - I - 0x009CFA 02:9CEA: 04        .byte $04   ; 
- D 0 - I - 0x009CFB 02:9CEB: 04        .byte $04   ; 
- D 0 - I - 0x009CFC 02:9CEC: 49        .byte $49   ; 
- D 0 - I - 0x009CFD 02:9CED: 61        .byte $61   ; 
- D 0 - I - 0x009CFE 02:9CEE: 74        .byte $74   ; 
off_9CEF_11:
- D 0 - I - 0x009CFF 02:9CEF: 1C        .byte $1C   ; 
- D 0 - I - 0x009D00 02:9CF0: 00        .byte $00   ; 
- D 0 - I - 0x009D01 02:9CF1: 00        .byte $00   ; 
- D 0 - I - 0x009D02 02:9CF2: 00        .byte $00   ; 
- D 0 - I - 0x009D03 02:9CF3: 00        .byte $00   ; 
- D 0 - I - 0x009D04 02:9CF4: 00        .byte $00   ; 
- D 0 - I - 0x009D05 02:9CF5: 00        .byte $00   ; 
- D 0 - I - 0x009D06 02:9CF6: 48        .byte $48   ; 
- D 0 - I - 0x009D07 02:9CF7: 60        .byte $60   ; 
- D 0 - I - 0x009D08 02:9CF8: 6E        .byte $6E   ; 
- D 0 - I - 0x009D09 02:9CF9: 6C        .byte $6C   ; 
- D 0 - I - 0x009D0A 02:9CFA: 6C        .byte $6C   ; 
- D 0 - I - 0x009D0B 02:9CFB: 6C        .byte $6C   ; 
- D 0 - I - 0x009D0C 02:9CFC: 66        .byte $66   ; 
- D 0 - I - 0x009D0D 02:9CFD: 4A        .byte $4A   ; 
- D 0 - I - 0x009D0E 02:9CFE: 14        .byte $14   ; 
- D 0 - I - 0x009D0F 02:9CFF: 00        .byte $00   ; 
- D 0 - I - 0x009D10 02:9D00: 00        .byte $00   ; 
- D 0 - I - 0x009D11 02:9D01: 00        .byte $00   ; 
- D 0 - I - 0x009D12 02:9D02: 14        .byte $14   ; 
- D 0 - I - 0x009D13 02:9D03: 00        .byte $00   ; 
- D 0 - I - 0x009D14 02:9D04: 00        .byte $00   ; 
- D 0 - I - 0x009D15 02:9D05: 00        .byte $00   ; 
- D 0 - I - 0x009D16 02:9D06: 14        .byte $14   ; 
- D 0 - I - 0x009D17 02:9D07: 00        .byte $00   ; 
- D 0 - I - 0x009D18 02:9D08: 00        .byte $00   ; 
- D 0 - I - 0x009D19 02:9D09: 00        .byte $00   ; 
- D 0 - I - 0x009D1A 02:9D0A: 48        .byte $48   ; 
- D 0 - I - 0x009D1B 02:9D0B: 60        .byte $60   ; 
off_9D0C_07:
- D 0 - I - 0x009D1C 02:9D0C: 6C        .byte $6C   ; 
- D 0 - I - 0x009D1D 02:9D0D: 6C        .byte $6C   ; 
- D 0 - I - 0x009D1E 02:9D0E: 6E        .byte $6E   ; 
- D 0 - I - 0x009D1F 02:9D0F: 66        .byte $66   ; 
- D 0 - I - 0x009D20 02:9D10: 4A        .byte $4A   ; 
- D 0 - I - 0x009D21 02:9D11: 48        .byte $48   ; 
- D 0 - I - 0x009D22 02:9D12: 60        .byte $60   ; 
- D 0 - I - 0x009D23 02:9D13: 6C        .byte $6C   ; 
- D 0 - I - 0x009D24 02:9D14: 6C        .byte $6C   ; 
- D 0 - I - 0x009D25 02:9D15: 6F        .byte $6F   ; 
- D 0 - I - 0x009D26 02:9D16: 6C        .byte $6C   ; 
- D 0 - I - 0x009D27 02:9D17: 78        .byte $78   ; 
- D 0 - I - 0x009D28 02:9D18: 5C        .byte $5C   ; 
- D 0 - I - 0x009D29 02:9D19: 46        .byte $46   ; 
- D 0 - I - 0x009D2A 02:9D1A: 00        .byte $00   ; 
- D 0 - I - 0x009D2B 02:9D1B: 00        .byte $00   ; 
- D 0 - I - 0x009D2C 02:9D1C: 22        .byte $22   ; 
- D 0 - I - 0x009D2D 02:9D1D: 00        .byte $00   ; 
- D 0 - I - 0x009D2E 02:9D1E: 00        .byte $00   ; 
- D 0 - I - 0x009D2F 02:9D1F: 00        .byte $00   ; 
- D 0 - I - 0x009D30 02:9D20: 00        .byte $00   ; 
- D 0 - I - 0x009D31 02:9D21: 00        .byte $00   ; 
- D 0 - I - 0x009D32 02:9D22: 00        .byte $00   ; 
- D 0 - I - 0x009D33 02:9D23: 00        .byte $00   ; 
- - - - - - 0x009D34 02:9D24: 00        .byte $00   ; 
- - - - - - 0x009D35 02:9D25: 00        .byte $00   ; 
- - - - - - 0x009D36 02:9D26: 00        .byte $00   ; 
- - - - - - 0x009D37 02:9D27: 00        .byte $00   ; 
- - - - - - 0x009D38 02:9D28: 00        .byte $00   ; 
- - - - - - 0x009D39 02:9D29: 00        .byte $00   ; 
- - - - - - 0x009D3A 02:9D2A: 00        .byte $00   ; 
- - - - - - 0x009D3B 02:9D2B: 00        .byte $00   ; 
off_9D2C_12:
- D 0 - I - 0x009D3C 02:9D2C: 1C        .byte $1C   ; 
- D 0 - I - 0x009D3D 02:9D2D: 00        .byte $00   ; 
- D 0 - I - 0x009D3E 02:9D2E: 00        .byte $00   ; 
- D 0 - I - 0x009D3F 02:9D2F: 00        .byte $00   ; 
- D 0 - I - 0x009D40 02:9D30: 00        .byte $00   ; 
- D 0 - I - 0x009D41 02:9D31: 14        .byte $14   ; 
- D 0 - I - 0x009D42 02:9D32: 40        .byte $40   ; 
- D 0 - I - 0x009D43 02:9D33: 54        .byte $54   ; 
- D 0 - I - 0x009D44 02:9D34: 7E        .byte $7E   ; 
- D 0 - I - 0x009D45 02:9D35: 6C        .byte $6C   ; 
- D 0 - I - 0x009D46 02:9D36: 6C        .byte $6C   ; 
- D 0 - I - 0x009D47 02:9D37: 6C        .byte $6C   ; 
- D 0 - I - 0x009D48 02:9D38: 6C        .byte $6C   ; 
- D 0 - I - 0x009D49 02:9D39: 7C        .byte $7C   ; 
- D 0 - I - 0x009D4A 02:9D3A: 54        .byte $54   ; 
- D 0 - I - 0x009D4B 02:9D3B: 54        .byte $54   ; 
- D 0 - I - 0x009D4C 02:9D3C: 54        .byte $54   ; 
- D 0 - I - 0x009D4D 02:9D3D: 42        .byte $42   ; 
- D 0 - I - 0x009D4E 02:9D3E: 00        .byte $00   ; 
- D 0 - I - 0x009D4F 02:9D3F: 00        .byte $00   ; 
- D 0 - I - 0x009D50 02:9D40: 00        .byte $00   ; 
- D 0 - I - 0x009D51 02:9D41: 00        .byte $00   ; 
- D 0 - I - 0x009D52 02:9D42: 00        .byte $00   ; 
- D 0 - I - 0x009D53 02:9D43: 00        .byte $00   ; 
- D 0 - I - 0x009D54 02:9D44: 00        .byte $00   ; 
- D 0 - I - 0x009D55 02:9D45: 00        .byte $00   ; 
- D 0 - I - 0x009D56 02:9D46: 40        .byte $40   ; 
- D 0 - I - 0x009D57 02:9D47: 54        .byte $54   ; 
- D 0 - I - 0x009D58 02:9D48: 7E        .byte $7E   ; 
off_9D49_08:
- D 0 - I - 0x009D59 02:9D49: 6C        .byte $6C   ; 
- D 0 - I - 0x009D5A 02:9D4A: 6C        .byte $6C   ; 
- D 0 - I - 0x009D5B 02:9D4B: 6C        .byte $6C   ; 
- D 0 - I - 0x009D5C 02:9D4C: 7C        .byte $7C   ; 
- D 0 - I - 0x009D5D 02:9D4D: 54        .byte $54   ; 
- D 0 - I - 0x009D5E 02:9D4E: 54        .byte $54   ; 
- D 0 - I - 0x009D5F 02:9D4F: 7E        .byte $7E   ; 
- D 0 - I - 0x009D60 02:9D50: 6C        .byte $6C   ; 
- D 0 - I - 0x009D61 02:9D51: 6C        .byte $6C   ; 
- D 0 - I - 0x009D62 02:9D52: 6C        .byte $6C   ; 
- D 0 - I - 0x009D63 02:9D53: 6C        .byte $6C   ; 
- D 0 - I - 0x009D64 02:9D54: 68        .byte $68   ; 
- D 0 - I - 0x009D65 02:9D55: 4E        .byte $4E   ; 
- D 0 - I - 0x009D66 02:9D56: 00        .byte $00   ; 
- D 0 - I - 0x009D67 02:9D57: 00        .byte $00   ; 
- D 0 - I - 0x009D68 02:9D58: 00        .byte $00   ; 
- D 0 - I - 0x009D69 02:9D59: 23        .byte $23   ; 
- D 0 - I - 0x009D6A 02:9D5A: 00        .byte $00   ; 
- D 0 - I - 0x009D6B 02:9D5B: 00        .byte $00   ; 
- D 0 - I - 0x009D6C 02:9D5C: 00        .byte $00   ; 
- D 0 - I - 0x009D6D 02:9D5D: 14        .byte $14   ; 
off_9D5E_00:
- D 0 - I - 0x009D6E 02:9D5E: 00        .byte $00   ; 
- D 0 - I - 0x009D6F 02:9D5F: 00        .byte $00   ; 
- D 0 - I - 0x009D70 02:9D60: 00        .byte $00   ; 
- - - - - - 0x009D71 02:9D61: 00        .byte $00   ; 
- - - - - - 0x009D72 02:9D62: 00        .byte $00   ; 
- - - - - - 0x009D73 02:9D63: 00        .byte $00   ; 
- - - - - - 0x009D74 02:9D64: 14        .byte $14   ; 
- - - - - - 0x009D75 02:9D65: 00        .byte $00   ; 
- - - - - - 0x009D76 02:9D66: 00        .byte $00   ; 
- D 0 - I - 0x009D77 02:9D67: 00        .byte $00   ; 
- D 0 - I - 0x009D78 02:9D68: 00        .byte $00   ; 
- D 0 - I - 0x009D79 02:9D69: 14        .byte $14   ; 
- D 0 - I - 0x009D7A 02:9D6A: 00        .byte $00   ; 
- D 0 - I - 0x009D7B 02:9D6B: 00        .byte $00   ; 
- D 0 - I - 0x009D7C 02:9D6C: 00        .byte $00   ; 
- D 0 - I - 0x009D7D 02:9D6D: 00        .byte $00   ; 
- D 0 - I - 0x009D7E 02:9D6E: 88        .byte $88   ; 
- D 0 - I - 0x009D7F 02:9D6F: 12        .byte $12   ; 
- D 0 - I - 0x009D80 02:9D70: 12        .byte $12   ; 
- D 0 - I - 0x009D81 02:9D71: 12        .byte $12   ; 
- D 0 - I - 0x009D82 02:9D72: 12        .byte $12   ; 
- D 0 - I - 0x009D83 02:9D73: 12        .byte $12   ; 
- D 0 - I - 0x009D84 02:9D74: 8B        .byte $8B   ; 
- D 0 - I - 0x009D85 02:9D75: 00        .byte $00   ; 
- D 0 - I - 0x009D86 02:9D76: 00        .byte $00   ; 
- D 0 - I - 0x009D87 02:9D77: 00        .byte $00   ; 
- D 0 - I - 0x009D88 02:9D78: 00        .byte $00   ; 
- D 0 - I - 0x009D89 02:9D79: 00        .byte $00   ; 
- D 0 - I - 0x009D8A 02:9D7A: 23        .byte $23   ; 
- D 0 - I - 0x009D8B 02:9D7B: 00        .byte $00   ; 
- D 0 - I - 0x009D8C 02:9D7C: 00        .byte $00   ; 
- D 0 - I - 0x009D8D 02:9D7D: 00        .byte $00   ; 
off_9D7E_13:
- D 0 - I - 0x009D8E 02:9D7E: 2C        .byte $2C   ; 
- D 0 - I - 0x009D8F 02:9D7F: 04        .byte $04   ; 
- D 0 - I - 0x009D90 02:9D80: 04        .byte $04   ; 
- D 0 - I - 0x009D91 02:9D81: 04        .byte $04   ; 
- D 0 - I - 0x009D92 02:9D82: 04        .byte $04   ; 
- D 0 - I - 0x009D93 02:9D83: 04        .byte $04   ; 
- D 0 - I - 0x009D94 02:9D84: 61        .byte $61   ; 
- D 0 - I - 0x009D95 02:9D85: 6D        .byte $6D   ; 
- D 0 - I - 0x009D96 02:9D86: 6D        .byte $6D   ; 
- D 0 - I - 0x009D97 02:9D87: 6D        .byte $6D   ; 
- D 0 - I - 0x009D98 02:9D88: 6D        .byte $6D   ; 
- D 0 - I - 0x009D99 02:9D89: 71        .byte $71   ; 
- D 0 - I - 0x009D9A 02:9D8A: 6D        .byte $6D   ; 
- D 0 - I - 0x009D9B 02:9D8B: 6D        .byte $6D   ; 
- D 0 - I - 0x009D9C 02:9D8C: 6D        .byte $6D   ; 
- D 0 - I - 0x009D9D 02:9D8D: 6D        .byte $6D   ; 
- D 0 - I - 0x009D9E 02:9D8E: 6D        .byte $6D   ; 
- D 0 - I - 0x009D9F 02:9D8F: 67        .byte $67   ; 
- D 0 - I - 0x009DA0 02:9D90: 04        .byte $04   ; 
- D 0 - I - 0x009DA1 02:9D91: 17        .byte $17   ; 
- D 0 - I - 0x009DA2 02:9D92: 04        .byte $04   ; 
- D 0 - I - 0x009DA3 02:9D93: 16        .byte $16   ; 
- D 0 - I - 0x009DA4 02:9D94: 04        .byte $04   ; 
- D 0 - I - 0x009DA5 02:9D95: 04        .byte $04   ; 
- D 0 - I - 0x009DA6 02:9D96: 16        .byte $16   ; 
- D 0 - I - 0x009DA7 02:9D97: 49        .byte $49   ; 
- D 0 - I - 0x009DA8 02:9D98: 61        .byte $61   ; 
- D 0 - I - 0x009DA9 02:9D99: 70        .byte $70   ; 
- D 0 - I - 0x009DAA 02:9D9A: 6D        .byte $6D   ; 
- D 0 - I - 0x009DAB 02:9D9B: 79        .byte $79   ; 
off_9D9C_0F:
- D 0 - I - 0x009DAC 02:9D9C: 5B        .byte $5B   ; 
- D 0 - I - 0x009DAD 02:9D9D: 5B        .byte $5B   ; 
- D 0 - I - 0x009DAE 02:9D9E: 7B        .byte $7B   ; 
- D 0 - I - 0x009DAF 02:9D9F: 6D        .byte $6D   ; 
- D 0 - I - 0x009DB0 02:9DA0: 6D        .byte $6D   ; 
- D 0 - I - 0x009DB1 02:9DA1: 6D        .byte $6D   ; 
- D 0 - I - 0x009DB2 02:9DA2: 6D        .byte $6D   ; 
- D 0 - I - 0x009DB3 02:9DA3: 6D        .byte $6D   ; 
- D 0 - I - 0x009DB4 02:9DA4: 6D        .byte $6D   ; 
- D 0 - I - 0x009DB5 02:9DA5: 67        .byte $67   ; 
- D 0 - I - 0x009DB6 02:9DA6: 04        .byte $04   ; 
- D 0 - I - 0x009DB7 02:9DA7: 04        .byte $04   ; 
- D 0 - I - 0x009DB8 02:9DA8: 04        .byte $04   ; 
- D 0 - I - 0x009DB9 02:9DA9: 04        .byte $04   ; 
- D 0 - I - 0x009DBA 02:9DAA: 61        .byte $61   ; 
- D 0 - I - 0x009DBB 02:9DAB: 6D        .byte $6D   ; 
- D 0 - I - 0x009DBC 02:9DAC: 6D        .byte $6D   ; 
- D 0 - I - 0x009DBD 02:9DAD: 6D        .byte $6D   ; 
- D 0 - I - 0x009DBE 02:9DAE: 6D        .byte $6D   ; 
- D 0 - I - 0x009DBF 02:9DAF: 6D        .byte $6D   ; 
- D 0 - I - 0x009DC0 02:9DB0: 6D        .byte $6D   ; 
- D 0 - I - 0x009DC1 02:9DB1: 6D        .byte $6D   ; 
- D 0 - I - 0x009DC2 02:9DB2: 6D        .byte $6D   ; 
- D 0 - I - 0x009DC3 02:9DB3: 70        .byte $70   ; 
- D 0 - I - 0x009DC4 02:9DB4: 6D        .byte $6D   ; 
- D 0 - I - 0x009DC5 02:9DB5: 6D        .byte $6D   ; 
- D 0 - I - 0x009DC6 02:9DB6: 6D        .byte $6D   ; 
- D 0 - I - 0x009DC7 02:9DB7: 79        .byte $79   ; 
- D 0 - I - 0x009DC8 02:9DB8: 5B        .byte $5B   ; 
- D 0 - I - 0x009DC9 02:9DB9: 5B        .byte $5B   ; 
- D 0 - I - 0x009DCA 02:9DBA: 5B        .byte $5B   ; 
- D 0 - I - 0x009DCB 02:9DBB: 58        .byte $58   ; 
off_9DBC_14:
- D 0 - I - 0x009DCC 02:9DBC: 0C        .byte $0C   ; 
- D 0 - I - 0x009DCD 02:9DBD: 0D        .byte $0D   ; 
- D 0 - I - 0x009DCE 02:9DBE: 0E        .byte $0E   ; 
- D 0 - I - 0x009DCF 02:9DBF: 04        .byte $04   ; 
- D 0 - I - 0x009DD0 02:9DC0: 04        .byte $04   ; 
- D 0 - I - 0x009DD1 02:9DC1: 04        .byte $04   ; 
- D 0 - I - 0x009DD2 02:9DC2: 61        .byte $61   ; 
- D 0 - I - 0x009DD3 02:9DC3: 70        .byte $70   ; 
- D 0 - I - 0x009DD4 02:9DC4: 6D        .byte $6D   ; 
- D 0 - I - 0x009DD5 02:9DC5: 6D        .byte $6D   ; 
- D 0 - I - 0x009DD6 02:9DC6: 6D        .byte $6D   ; 
- D 0 - I - 0x009DD7 02:9DC7: 6D        .byte $6D   ; 
- D 0 - I - 0x009DD8 02:9DC8: 6D        .byte $6D   ; 
- D 0 - I - 0x009DD9 02:9DC9: 6D        .byte $6D   ; 
- D 0 - I - 0x009DDA 02:9DCA: 6D        .byte $6D   ; 
- D 0 - I - 0x009DDB 02:9DCB: 70        .byte $70   ; 
- D 0 - I - 0x009DDC 02:9DCC: 6D        .byte $6D   ; 
- D 0 - I - 0x009DDD 02:9DCD: 67        .byte $67   ; 
- D 0 - I - 0x009DDE 02:9DCE: 04        .byte $04   ; 
- D 0 - I - 0x009DDF 02:9DCF: 04        .byte $04   ; 
- D 0 - I - 0x009DE0 02:9DD0: 04        .byte $04   ; 
- D 0 - I - 0x009DE1 02:9DD1: 04        .byte $04   ; 
- D 0 - I - 0x009DE2 02:9DD2: 04        .byte $04   ; 
- D 0 - I - 0x009DE3 02:9DD3: 04        .byte $04   ; 
- D 0 - I - 0x009DE4 02:9DD4: 41        .byte $41   ; 
- D 0 - I - 0x009DE5 02:9DD5: 55        .byte $55   ; 
- D 0 - I - 0x009DE6 02:9DD6: 7F        .byte $7F   ; 
- D 0 - I - 0x009DE7 02:9DD7: 6D        .byte $6D   ; 
- D 0 - I - 0x009DE8 02:9DD8: 6D        .byte $6D   ; 
- D 0 - I - 0x009DE9 02:9DD9: 67        .byte $67   ; 
- D 0 - I - 0x009DEA 02:9DDA: 4F        .byte $4F   ; 
off_9DDB_10:
- D 0 - I - 0x009DEB 02:9DDB: 04        .byte $04   ; 
- D 0 - I - 0x009DEC 02:9DDC: 4D        .byte $4D   ; 
- D 0 - I - 0x009DED 02:9DDD: 61        .byte $61   ; 
- D 0 - I - 0x009DEE 02:9DDE: 6D        .byte $6D   ; 
- D 0 - I - 0x009DEF 02:9DDF: 6D        .byte $6D   ; 
- D 0 - I - 0x009DF0 02:9DE0: 6D        .byte $6D   ; 
- D 0 - I - 0x009DF1 02:9DE1: 6D        .byte $6D   ; 
- D 0 - I - 0x009DF2 02:9DE2: 70        .byte $70   ; 
- D 0 - I - 0x009DF3 02:9DE3: 6D        .byte $6D   ; 
- D 0 - I - 0x009DF4 02:9DE4: 6B        .byte $6B   ; 
- D 0 - I - 0x009DF5 02:9DE5: 04        .byte $04   ; 
- D 0 - I - 0x009DF6 02:9DE6: 04        .byte $04   ; 
- D 0 - I - 0x009DF7 02:9DE7: 04        .byte $04   ; 
- D 0 - I - 0x009DF8 02:9DE8: 04        .byte $04   ; 
- D 0 - I - 0x009DF9 02:9DE9: 41        .byte $41   ; 
- D 0 - I - 0x009DFA 02:9DEA: 55        .byte $55   ; 
- D 0 - I - 0x009DFB 02:9DEB: 55        .byte $55   ; 
- D 0 - I - 0x009DFC 02:9DEC: 55        .byte $55   ; 
- D 0 - I - 0x009DFD 02:9DED: 55        .byte $55   ; 
- D 0 - I - 0x009DFE 02:9DEE: 43        .byte $43   ; 
- D 0 - I - 0x009DFF 02:9DEF: 04        .byte $04   ; 
- D 0 - I - 0x009E00 02:9DF0: 16        .byte $16   ; 
- D 0 - I - 0x009E01 02:9DF1: 04        .byte $04   ; 
- D 0 - I - 0x009E02 02:9DF2: 04        .byte $04   ; 
- D 0 - I - 0x009E03 02:9DF3: 04        .byte $04   ; 
- D 0 - I - 0x009E04 02:9DF4: 04        .byte $04   ; 
- D 0 - I - 0x009E05 02:9DF5: 04        .byte $04   ; 
- D 0 - I - 0x009E06 02:9DF6: 04        .byte $04   ; 
- D 0 - I - 0x009E07 02:9DF7: 04        .byte $04   ; 
- D 0 - I - 0x009E08 02:9DF8: 04        .byte $04   ; 
- D 0 - I - 0x009E09 02:9DF9: 04        .byte $04   ; 
- D 0 - I - 0x009E0A 02:9DFA: 2B        .byte $2B   ; 
off_9DFB_15:
- D 0 - I - 0x009E0B 02:9DFB: 1C        .byte $1C   ; 
- D 0 - I - 0x009E0C 02:9DFC: 00        .byte $00   ; 
- D 0 - I - 0x009E0D 02:9DFD: 1D        .byte $1D   ; 
- D 0 - I - 0x009E0E 02:9DFE: 1E        .byte $1E   ; 
- D 0 - I - 0x009E0F 02:9DFF: 00        .byte $00   ; 
- D 0 - I - 0x009E10 02:9E00: 00        .byte $00   ; 
- D 0 - I - 0x009E11 02:9E01: 60        .byte $60   ; 
- D 0 - I - 0x009E12 02:9E02: 6C        .byte $6C   ; 
- D 0 - I - 0x009E13 02:9E03: 6C        .byte $6C   ; 
- D 0 - I - 0x009E14 02:9E04: 6C        .byte $6C   ; 
- D 0 - I - 0x009E15 02:9E05: 6C        .byte $6C   ; 
- D 0 - I - 0x009E16 02:9E06: 78        .byte $78   ; 
- D 0 - I - 0x009E17 02:9E07: 5A        .byte $5A   ; 
- D 0 - I - 0x009E18 02:9E08: 5A        .byte $5A   ; 
- D 0 - I - 0x009E19 02:9E09: 7A        .byte $7A   ; 
- D 0 - I - 0x009E1A 02:9E0A: 6C        .byte $6C   ; 
- D 0 - I - 0x009E1B 02:9E0B: 6C        .byte $6C   ; 
- D 0 - I - 0x009E1C 02:9E0C: 66        .byte $66   ; 
- D 0 - I - 0x009E1D 02:9E0D: 4A        .byte $4A   ; 
- D 0 - I - 0x009E1E 02:9E0E: 00        .byte $00   ; 
- D 0 - I - 0x009E1F 02:9E0F: 00        .byte $00   ; 
- D 0 - I - 0x009E20 02:9E10: 00        .byte $00   ; 
- D 0 - I - 0x009E21 02:9E11: 00        .byte $00   ; 
- D 0 - I - 0x009E22 02:9E12: 14        .byte $14   ; 
- D 0 - I - 0x009E23 02:9E13: 60        .byte $60   ; 
- D 0 - I - 0x009E24 02:9E14: 6F        .byte $6F   ; 
- D 0 - I - 0x009E25 02:9E15: 6C        .byte $6C   ; 
- D 0 - I - 0x009E26 02:9E16: 6C        .byte $6C   ; 
- D 0 - I - 0x009E27 02:9E17: 6C        .byte $6C   ; 
- D 0 - I - 0x009E28 02:9E18: 68        .byte $68   ; 
- D 0 - I - 0x009E29 02:9E19: 00        .byte $00   ; 
- D 0 - I - 0x009E2A 02:9E1A: 14        .byte $14   ; 
off_9E1B_16:
- D 0 - I - 0x009E2B 02:9E1B: 1C        .byte $1C   ; 
- D 0 - I - 0x009E2C 02:9E1C: 00        .byte $00   ; 
- D 0 - I - 0x009E2D 02:9E1D: 00        .byte $00   ; 
- D 0 - I - 0x009E2E 02:9E1E: 0F        .byte $0F   ; 
- D 0 - I - 0x009E2F 02:9E1F: 00        .byte $00   ; 
- D 0 - I - 0x009E30 02:9E20: 00        .byte $00   ; 
- D 0 - I - 0x009E31 02:9E21: 60        .byte $60   ; 
- D 0 - I - 0x009E32 02:9E22: 6C        .byte $6C   ; 
- D 0 - I - 0x009E33 02:9E23: 6C        .byte $6C   ; 
- D 0 - I - 0x009E34 02:9E24: 6E        .byte $6E   ; 
- D 0 - I - 0x009E35 02:9E25: 6C        .byte $6C   ; 
- D 0 - I - 0x009E36 02:9E26: 66        .byte $66   ; 
- D 0 - I - 0x009E37 02:9E27: 4E        .byte $4E   ; 
- D 0 - I - 0x009E38 02:9E28: 4C        .byte $4C   ; 
- D 0 - I - 0x009E39 02:9E29: 60        .byte $60   ; 
- D 0 - I - 0x009E3A 02:9E2A: 6C        .byte $6C   ; 
- D 0 - I - 0x009E3B 02:9E2B: 6C        .byte $6C   ; 
- D 0 - I - 0x009E3C 02:9E2C: 7C        .byte $7C   ; 
- D 0 - I - 0x009E3D 02:9E2D: 54        .byte $54   ; 
- D 0 - I - 0x009E3E 02:9E2E: 42        .byte $42   ; 
- D 0 - I - 0x009E3F 02:9E2F: 14        .byte $14   ; 
- D 0 - I - 0x009E40 02:9E30: 00        .byte $00   ; 
- D 0 - I - 0x009E41 02:9E31: 00        .byte $00   ; 
- D 0 - I - 0x009E42 02:9E32: 00        .byte $00   ; 
- D 0 - I - 0x009E43 02:9E33: 60        .byte $60   ; 
- D 0 - I - 0x009E44 02:9E34: 6C        .byte $6C   ; 
- D 0 - I - 0x009E45 02:9E35: 6C        .byte $6C   ; 
- D 0 - I - 0x009E46 02:9E36: 6C        .byte $6C   ; 
- D 0 - I - 0x009E47 02:9E37: 6E        .byte $6E   ; 
- D 0 - I - 0x009E48 02:9E38: 69        .byte $69   ; 
- D 0 - I - 0x009E49 02:9E39: 00        .byte $00   ; 
- D 0 - I - 0x009E4A 02:9E3A: 00        .byte $00   ; 
off_9E3B_17:
- D 0 - I - 0x009E4B 02:9E3B: 2C        .byte $2C   ; 
- D 0 - I - 0x009E4C 02:9E3C: 04        .byte $04   ; 
- D 0 - I - 0x009E4D 02:9E3D: 04        .byte $04   ; 
- D 0 - I - 0x009E4E 02:9E3E: 1F        .byte $1F   ; 
- D 0 - I - 0x009E4F 02:9E3F: 04        .byte $04   ; 
- D 0 - I - 0x009E50 02:9E40: 04        .byte $04   ; 
- D 0 - I - 0x009E51 02:9E41: 61        .byte $61   ; 
- D 0 - I - 0x009E52 02:9E42: 6D        .byte $6D   ; 
- D 0 - I - 0x009E53 02:9E43: 6D        .byte $6D   ; 
- D 0 - I - 0x009E54 02:9E44: 6D        .byte $6D   ; 
- D 0 - I - 0x009E55 02:9E45: 6D        .byte $6D   ; 
- D 0 - I - 0x009E56 02:9E46: 67        .byte $67   ; 
- D 0 - I - 0x009E57 02:9E47: 04        .byte $04   ; 
- D 0 - I - 0x009E58 02:9E48: 16        .byte $16   ; 
- D 0 - I - 0x009E59 02:9E49: 45        .byte $45   ; 
- D 0 - I - 0x009E5A 02:9E4A: 5B        .byte $5B   ; 
- D 0 - I - 0x009E5B 02:9E4B: 7B        .byte $7B   ; 
- D 0 - I - 0x009E5C 02:9E4C: 70        .byte $70   ; 
- D 0 - I - 0x009E5D 02:9E4D: 6D        .byte $6D   ; 
- D 0 - I - 0x009E5E 02:9E4E: 67        .byte $67   ; 
- D 0 - I - 0x009E5F 02:9E4F: 04        .byte $04   ; 
- D 0 - I - 0x009E60 02:9E50: 04        .byte $04   ; 
- D 0 - I - 0x009E61 02:9E51: 04        .byte $04   ; 
- D 0 - I - 0x009E62 02:9E52: 04        .byte $04   ; 
- D 0 - I - 0x009E63 02:9E53: 45        .byte $45   ; 
- D 0 - I - 0x009E64 02:9E54: 5B        .byte $5B   ; 
- D 0 - I - 0x009E65 02:9E55: 5E        .byte $5E   ; 
- D 0 - I - 0x009E66 02:9E56: 5F        .byte $5F   ; 
- D 0 - I - 0x009E67 02:9E57: 5F        .byte $5F   ; 
- D 0 - I - 0x009E68 02:9E58: 47        .byte $47   ; 
off_9E59_17:
- D 0 - I - 0x009E69 02:9E59: 04        .byte $04   ; 
- D 0 - I - 0x009E6A 02:9E5A: 04        .byte $04   ; 
- D 0 - I - 0x009E6B 02:9E5B: 61        .byte $61   ; 
- D 0 - I - 0x009E6C 02:9E5C: 71        .byte $71   ; 
- D 0 - I - 0x009E6D 02:9E5D: 6D        .byte $6D   ; 
- D 0 - I - 0x009E6E 02:9E5E: 6A        .byte $6A   ; 
- D 0 - I - 0x009E6F 02:9E5F: 04        .byte $04   ; 
- D 0 - I - 0x009E70 02:9E60: 04        .byte $04   ; 
- D 0 - I - 0x009E71 02:9E61: 04        .byte $04   ; 
- D 0 - I - 0x009E72 02:9E62: 16        .byte $16   ; 
- D 0 - I - 0x009E73 02:9E63: 04        .byte $04   ; 
- D 0 - I - 0x009E74 02:9E64: 04        .byte $04   ; 
- D 0 - I - 0x009E75 02:9E65: 04        .byte $04   ; 
- D 0 - I - 0x009E76 02:9E66: 16        .byte $16   ; 
- D 0 - I - 0x009E77 02:9E67: 04        .byte $04   ; 
- D 0 - I - 0x009E78 02:9E68: 04        .byte $04   ; 
- D 0 - I - 0x009E79 02:9E69: 61        .byte $61   ; 
- D 0 - I - 0x009E7A 02:9E6A: 6D        .byte $6D   ; 
- D 0 - I - 0x009E7B 02:9E6B: 6D        .byte $6D   ; 
- D 0 - I - 0x009E7C 02:9E6C: 6D        .byte $6D   ; 
- D 0 - I - 0x009E7D 02:9E6D: 6D        .byte $6D   ; 
- D 0 - I - 0x009E7E 02:9E6E: 6D        .byte $6D   ; 
- D 0 - I - 0x009E7F 02:9E6F: 70        .byte $70   ; 
- D 0 - I - 0x009E80 02:9E70: 6D        .byte $6D   ; 
- D 0 - I - 0x009E81 02:9E71: 6D        .byte $6D   ; 
- D 0 - I - 0x009E82 02:9E72: 6A        .byte $6A   ; 
- D 0 - I - 0x009E83 02:9E73: 04        .byte $04   ; 
- D 0 - I - 0x009E84 02:9E74: 04        .byte $04   ; 
- D 0 - I - 0x009E85 02:9E75: 18        .byte $18   ; 
- D 0 - I - 0x009E86 02:9E76: 04        .byte $04   ; 
- D 0 - I - 0x009E87 02:9E77: 04        .byte $04   ; 
- D 0 - I - 0x009E88 02:9E78: 2B        .byte $2B   ; 
off_9E79_18:
- D 0 - I - 0x009E89 02:9E79: 2C        .byte $2C   ; 
- D 0 - I - 0x009E8A 02:9E7A: 04        .byte $04   ; 
- D 0 - I - 0x009E8B 02:9E7B: 04        .byte $04   ; 
- D 0 - I - 0x009E8C 02:9E7C: 2F        .byte $2F   ; 
- D 0 - I - 0x009E8D 02:9E7D: 04        .byte $04   ; 
- D 0 - I - 0x009E8E 02:9E7E: 04        .byte $04   ; 
- D 0 - I - 0x009E8F 02:9E7F: 61        .byte $61   ; 
- D 0 - I - 0x009E90 02:9E80: 6D        .byte $6D   ; 
- D 0 - I - 0x009E91 02:9E81: 70        .byte $70   ; 
- D 0 - I - 0x009E92 02:9E82: 6D        .byte $6D   ; 
- D 0 - I - 0x009E93 02:9E83: 6D        .byte $6D   ; 
- D 0 - I - 0x009E94 02:9E84: 67        .byte $67   ; 
- D 0 - I - 0x009E95 02:9E85: 04        .byte $04   ; 
- D 0 - I - 0x009E96 02:9E86: 04        .byte $04   ; 
- D 0 - I - 0x009E97 02:9E87: 04        .byte $04   ; 
- D 0 - I - 0x009E98 02:9E88: 4D        .byte $4D   ; 
- D 0 - I - 0x009E99 02:9E89: 61        .byte $61   ; 
- D 0 - I - 0x009E9A 02:9E8A: 6D        .byte $6D   ; 
- D 0 - I - 0x009E9B 02:9E8B: 6D        .byte $6D   ; 
- D 0 - I - 0x009E9C 02:9E8C: 67        .byte $67   ; 
- D 0 - I - 0x009E9D 02:9E8D: 04        .byte $04   ; 
- D 0 - I - 0x009E9E 02:9E8E: 04        .byte $04   ; 
- D 0 - I - 0x009E9F 02:9E8F: 04        .byte $04   ; 
- D 0 - I - 0x009EA0 02:9E90: 04        .byte $04   ; 
- D 0 - I - 0x009EA1 02:9E91: 04        .byte $04   ; 
- D 0 - I - 0x009EA2 02:9E92: 04        .byte $04   ; 
- D 0 - I - 0x009EA3 02:9E93: 04        .byte $04   ; 
off_9E94_0A:
- D 0 - I - 0x009EA4 02:9E94: 04        .byte $04   ; 
- D 0 - I - 0x009EA5 02:9E95: 04        .byte $04   ; 
- D 0 - I - 0x009EA6 02:9E96: 16        .byte $16   ; 
- D 0 - I - 0x009EA7 02:9E97: 04        .byte $04   ; 
- D 0 - I - 0x009EA8 02:9E98: 04        .byte $04   ; 
- D 0 - I - 0x009EA9 02:9E99: 04        .byte $04   ; 
- D 0 - I - 0x009EAA 02:9E9A: 04        .byte $04   ; 
- D 0 - I - 0x009EAB 02:9E9B: 4D        .byte $4D   ; 
- D 0 - I - 0x009EAC 02:9E9C: 61        .byte $61   ; 
- D 0 - I - 0x009EAD 02:9E9D: 6D        .byte $6D   ; 
- D 0 - I - 0x009EAE 02:9E9E: 6D        .byte $6D   ; 
- D 0 - I - 0x009EAF 02:9E9F: 6A        .byte $6A   ; 
- D 0 - I - 0x009EB0 02:9EA0: 4F        .byte $4F   ; 
- D 0 - I - 0x009EB1 02:9EA1: 04        .byte $04   ; 
- D 0 - I - 0x009EB2 02:9EA2: 88        .byte $88   ; 
- D 0 - I - 0x009EB3 02:9EA3: 89        .byte $89   ; 
- D 0 - I - 0x009EB4 02:9EA4: 8A        .byte $8A   ; 
- D 0 - I - 0x009EB5 02:9EA5: 04        .byte $04   ; 
- D 0 - I - 0x009EB6 02:9EA6: 04        .byte $04   ; 
- D 0 - I - 0x009EB7 02:9EA7: 04        .byte $04   ; 
- D 0 - I - 0x009EB8 02:9EA8: 04        .byte $04   ; 
- D 0 - I - 0x009EB9 02:9EA9: 04        .byte $04   ; 
- D 0 - I - 0x009EBA 02:9EAA: 04        .byte $04   ; 
- D 0 - I - 0x009EBB 02:9EAB: 04        .byte $04   ; 
- - - - - - 0x009EBC 02:9EAC: 04        .byte $04   ; 
- - - - - - 0x009EBD 02:9EAD: 04        .byte $04   ; 
- - - - - - 0x009EBE 02:9EAE: 04        .byte $04   ; 
- - - - - - 0x009EBF 02:9EAF: 16        .byte $16   ; 
- - - - - - 0x009EC0 02:9EB0: 04        .byte $04   ; 
- - - - - - 0x009EC1 02:9EB1: 04        .byte $04   ; 
- - - - - - 0x009EC2 02:9EB2: 04        .byte $04   ; 
- - - - - - 0x009EC3 02:9EB3: 04        .byte $04   ; 
off_9EB4_19:
- D 0 - I - 0x009EC4 02:9EB4: 1C        .byte $1C   ; 
- D 0 - I - 0x009EC5 02:9EB5: 00        .byte $00   ; 
- D 0 - I - 0x009EC6 02:9EB6: 00        .byte $00   ; 
- D 0 - I - 0x009EC7 02:9EB7: 3F        .byte $3F   ; 
- D 0 - I - 0x009EC8 02:9EB8: 00        .byte $00   ; 
- D 0 - I - 0x009EC9 02:9EB9: 00        .byte $00   ; 
- D 0 - I - 0x009ECA 02:9EBA: 44        .byte $44   ; 
- D 0 - I - 0x009ECB 02:9EBB: 5A        .byte $5A   ; 
- D 0 - I - 0x009ECC 02:9EBC: 7A        .byte $7A   ; 
- D 0 - I - 0x009ECD 02:9EBD: 6C        .byte $6C   ; 
- D 0 - I - 0x009ECE 02:9EBE: 6C        .byte $6C   ; 
- D 0 - I - 0x009ECF 02:9EBF: 66        .byte $66   ; 
- D 0 - I - 0x009ED0 02:9EC0: 4A        .byte $4A   ; 
- D 0 - I - 0x009ED1 02:9EC1: 00        .byte $00   ; 
- D 0 - I - 0x009ED2 02:9EC2: 00        .byte $00   ; 
- D 0 - I - 0x009ED3 02:9EC3: 48        .byte $48   ; 
- D 0 - I - 0x009ED4 02:9EC4: 60        .byte $60   ; 
- D 0 - I - 0x009ED5 02:9EC5: 6C        .byte $6C   ; 
- D 0 - I - 0x009ED6 02:9EC6: 6F        .byte $6F   ; 
- D 0 - I - 0x009ED7 02:9EC7: 66        .byte $66   ; 
- D 0 - I - 0x009ED8 02:9EC8: 4A        .byte $4A   ; 
- D 0 - I - 0x009ED9 02:9EC9: 00        .byte $00   ; 
- D 0 - I - 0x009EDA 02:9ECA: 00        .byte $00   ; 
- D 0 - I - 0x009EDB 02:9ECB: 00        .byte $00   ; 
off_9ECC_0F:
- D 0 - I - 0x009EDC 02:9ECC: 00        .byte $00   ; 
- D 0 - I - 0x009EDD 02:9ECD: 00        .byte $00   ; 
- D 0 - I - 0x009EDE 02:9ECE: 15        .byte $15   ; 
- D 0 - I - 0x009EDF 02:9ECF: 00        .byte $00   ; 
- D 0 - I - 0x009EE0 02:9ED0: 00        .byte $00   ; 
- D 0 - I - 0x009EE1 02:9ED1: 00        .byte $00   ; 
- D 0 - I - 0x009EE2 02:9ED2: 00        .byte $00   ; 
- D 0 - I - 0x009EE3 02:9ED3: 00        .byte $00   ; 
- D 0 - I - 0x009EE4 02:9ED4: 14        .byte $14   ; 
- D 0 - I - 0x009EE5 02:9ED5: 00        .byte $00   ; 
- D 0 - I - 0x009EE6 02:9ED6: 00        .byte $00   ; 
- D 0 - I - 0x009EE7 02:9ED7: 00        .byte $00   ; 
- D 0 - I - 0x009EE8 02:9ED8: 00        .byte $00   ; 
- D 0 - I - 0x009EE9 02:9ED9: 00        .byte $00   ; 
- D 0 - I - 0x009EEA 02:9EDA: 60        .byte $60   ; 
- D 0 - I - 0x009EEB 02:9EDB: 6C        .byte $6C   ; 
- D 0 - I - 0x009EEC 02:9EDC: 6C        .byte $6C   ; 
- D 0 - I - 0x009EED 02:9EDD: 6E        .byte $6E   ; 
- D 0 - I - 0x009EEE 02:9EDE: 6C        .byte $6C   ; 
- D 0 - I - 0x009EEF 02:9EDF: 66        .byte $66   ; 
- D 0 - I - 0x009EF0 02:9EE0: 14        .byte $14   ; 
- D 0 - I - 0x009EF1 02:9EE1: 00        .byte $00   ; 
- D 0 - I - 0x009EF2 02:9EE2: 00        .byte $00   ; 
- D 0 - I - 0x009EF3 02:9EE3: 00        .byte $00   ; 
- D 0 - I - 0x009EF4 02:9EE4: 00        .byte $00   ; 
- D 0 - I - 0x009EF5 02:9EE5: 00        .byte $00   ; 
- D 0 - I - 0x009EF6 02:9EE6: 15        .byte $15   ; 
- D 0 - I - 0x009EF7 02:9EE7: 00        .byte $00   ; 
- D 0 - I - 0x009EF8 02:9EE8: 00        .byte $00   ; 
- D 0 - I - 0x009EF9 02:9EE9: 00        .byte $00   ; 
- D 0 - I - 0x009EFA 02:9EEA: 00        .byte $00   ; 
- D 0 - I - 0x009EFB 02:9EEB: 14        .byte $14   ; 
off_9EEC_1A:
- D 0 - I - 0x009EFC 02:9EEC: 1C        .byte $1C   ; 
- D 0 - I - 0x009EFD 02:9EED: 00        .byte $00   ; 
- D 0 - I - 0x009EFE 02:9EEE: 2D        .byte $2D   ; 
- D 0 - I - 0x009EFF 02:9EEF: 2E        .byte $2E   ; 
- D 0 - I - 0x009F00 02:9EF0: 00        .byte $00   ; 
- D 0 - I - 0x009F01 02:9EF1: 00        .byte $00   ; 
- D 0 - I - 0x009F02 02:9EF2: 00        .byte $00   ; 
- D 0 - I - 0x009F03 02:9EF3: 4C        .byte $4C   ; 
- D 0 - I - 0x009F04 02:9EF4: 60        .byte $60   ; 
- D 0 - I - 0x009F05 02:9EF5: 6C        .byte $6C   ; 
- D 0 - I - 0x009F06 02:9EF6: 6C        .byte $6C   ; 
- D 0 - I - 0x009F07 02:9EF7: 7C        .byte $7C   ; 
- D 0 - I - 0x009F08 02:9EF8: 54        .byte $54   ; 
- D 0 - I - 0x009F09 02:9EF9: 54        .byte $54   ; 
- D 0 - I - 0x009F0A 02:9EFA: 54        .byte $54   ; 
- D 0 - I - 0x009F0B 02:9EFB: 54        .byte $54   ; 
- D 0 - I - 0x009F0C 02:9EFC: 7E        .byte $7E   ; 
- D 0 - I - 0x009F0D 02:9EFD: 6C        .byte $6C   ; 
- D 0 - I - 0x009F0E 02:9EFE: 6C        .byte $6C   ; 
- D 0 - I - 0x009F0F 02:9EFF: 7C        .byte $7C   ; 
- D 0 - I - 0x009F10 02:9F00: 54        .byte $54   ; 
- D 0 - I - 0x009F11 02:9F01: 42        .byte $42   ; 
- D 0 - I - 0x009F12 02:9F02: 00        .byte $00   ; 
- D 0 - I - 0x009F13 02:9F03: 00        .byte $00   ; 
- D 0 - I - 0x009F14 02:9F04: 00        .byte $00   ; 
- D 0 - I - 0x009F15 02:9F05: 00        .byte $00   ; 
- D 0 - I - 0x009F16 02:9F06: 00        .byte $00   ; 
- D 0 - I - 0x009F17 02:9F07: 00        .byte $00   ; 
- D 0 - I - 0x009F18 02:9F08: 00        .byte $00   ; 
- D 0 - I - 0x009F19 02:9F09: 00        .byte $00   ; 
- D 0 - I - 0x009F1A 02:9F0A: 00        .byte $00   ; 
- D 0 - I - 0x009F1B 02:9F0B: 00        .byte $00   ; 
off_9F0C_1B:
- D 0 - I - 0x009F1C 02:9F0C: 3C        .byte $3C   ; 
- D 0 - I - 0x009F1D 02:9F0D: 3D        .byte $3D   ; 
- D 0 - I - 0x009F1E 02:9F0E: 3E        .byte $3E   ; 
- D 0 - I - 0x009F1F 02:9F0F: 04        .byte $04   ; 
- D 0 - I - 0x009F20 02:9F10: 04        .byte $04   ; 
- D 0 - I - 0x009F21 02:9F11: 04        .byte $04   ; 
- D 0 - I - 0x009F22 02:9F12: 04        .byte $04   ; 
- D 0 - I - 0x009F23 02:9F13: 04        .byte $04   ; 
- D 0 - I - 0x009F24 02:9F14: 45        .byte $45   ; 
- D 0 - I - 0x009F25 02:9F15: 5B        .byte $5B   ; 
- D 0 - I - 0x009F26 02:9F16: 7B        .byte $7B   ; 
- D 0 - I - 0x009F27 02:9F17: 70        .byte $70   ; 
- D 0 - I - 0x009F28 02:9F18: 6D        .byte $6D   ; 
- D 0 - I - 0x009F29 02:9F19: 6D        .byte $6D   ; 
- D 0 - I - 0x009F2A 02:9F1A: 6D        .byte $6D   ; 
- D 0 - I - 0x009F2B 02:9F1B: 6D        .byte $6D   ; 
- D 0 - I - 0x009F2C 02:9F1C: 6D        .byte $6D   ; 
- D 0 - I - 0x009F2D 02:9F1D: 6D        .byte $6D   ; 
- D 0 - I - 0x009F2E 02:9F1E: 6D        .byte $6D   ; 
- D 0 - I - 0x009F2F 02:9F1F: 6D        .byte $6D   ; 
- D 0 - I - 0x009F30 02:9F20: 6D        .byte $6D   ; 
- D 0 - I - 0x009F31 02:9F21: 67        .byte $67   ; 
- D 0 - I - 0x009F32 02:9F22: 17        .byte $17   ; 
off_9F23_0B:
- D 0 - I - 0x009F33 02:9F23: 04        .byte $04   ; 
- D 0 - I - 0x009F34 02:9F24: 04        .byte $04   ; 
- D 0 - I - 0x009F35 02:9F25: 04        .byte $04   ; 
- D 0 - I - 0x009F36 02:9F26: 04        .byte $04   ; 
- D 0 - I - 0x009F37 02:9F27: 04        .byte $04   ; 
- D 0 - I - 0x009F38 02:9F28: 04        .byte $04   ; 
- D 0 - I - 0x009F39 02:9F29: 04        .byte $04   ; 
- D 0 - I - 0x009F3A 02:9F2A: 04        .byte $04   ; 
- D 0 - I - 0x009F3B 02:9F2B: 04        .byte $04   ; 
- D 0 - I - 0x009F3C 02:9F2C: 04        .byte $04   ; 
- D 0 - I - 0x009F3D 02:9F2D: 04        .byte $04   ; 
- D 0 - I - 0x009F3E 02:9F2E: 04        .byte $04   ; 
- D 0 - I - 0x009F3F 02:9F2F: 04        .byte $04   ; 
- D 0 - I - 0x009F40 02:9F30: 04        .byte $04   ; 
- D 0 - I - 0x009F41 02:9F31: 04        .byte $04   ; 
- D 0 - I - 0x009F42 02:9F32: 04        .byte $04   ; 
- D 0 - I - 0x009F43 02:9F33: 04        .byte $04   ; 
- D 0 - I - 0x009F44 02:9F34: 04        .byte $04   ; 
- D 0 - I - 0x009F45 02:9F35: 04        .byte $04   ; 
- D 0 - I - 0x009F46 02:9F36: 04        .byte $04   ; 
- D 0 - I - 0x009F47 02:9F37: 04        .byte $04   ; 
- D 0 - I - 0x009F48 02:9F38: 04        .byte $04   ; 
- D 0 - I - 0x009F49 02:9F39: 61        .byte $61   ; 
- D 0 - I - 0x009F4A 02:9F3A: 6D        .byte $6D   ; 
- D 0 - I - 0x009F4B 02:9F3B: 6D        .byte $6D   ; 
- D 0 - I - 0x009F4C 02:9F3C: 6D        .byte $6D   ; 
- D 0 - I - 0x009F4D 02:9F3D: 70        .byte $70   ; 
- D 0 - I - 0x009F4E 02:9F3E: 67        .byte $67   ; 
- D 0 - I - 0x009F4F 02:9F3F: 04        .byte $04   ; 
- D 0 - I - 0x009F50 02:9F40: 04        .byte $04   ; 
- D 0 - I - 0x009F51 02:9F41: 04        .byte $04   ; 
- D 0 - I - 0x009F52 02:9F42: 2B        .byte $2B   ; 
off_9F43_1C:
- D 0 - I - 0x009F53 02:9F43: 2C        .byte $2C   ; 
- D 0 - I - 0x009F54 02:9F44: 04        .byte $04   ; 
- D 0 - I - 0x009F55 02:9F45: 04        .byte $04   ; 
- D 0 - I - 0x009F56 02:9F46: 04        .byte $04   ; 
- D 0 - I - 0x009F57 02:9F47: 04        .byte $04   ; 
- D 0 - I - 0x009F58 02:9F48: 04        .byte $04   ; 
- D 0 - I - 0x009F59 02:9F49: 04        .byte $04   ; 
- D 0 - I - 0x009F5A 02:9F4A: 04        .byte $04   ; 
- D 0 - I - 0x009F5B 02:9F4B: 04        .byte $04   ; 
- D 0 - I - 0x009F5C 02:9F4C: 4D        .byte $4D   ; 
- D 0 - I - 0x009F5D 02:9F4D: 61        .byte $61   ; 
- D 0 - I - 0x009F5E 02:9F4E: 6D        .byte $6D   ; 
- D 0 - I - 0x009F5F 02:9F4F: 6D        .byte $6D   ; 
- D 0 - I - 0x009F60 02:9F50: 6D        .byte $6D   ; 
- D 0 - I - 0x009F61 02:9F51: 6D        .byte $6D   ; 
- D 0 - I - 0x009F62 02:9F52: 6D        .byte $6D   ; 
- D 0 - I - 0x009F63 02:9F53: 70        .byte $70   ; 
- D 0 - I - 0x009F64 02:9F54: 6D        .byte $6D   ; 
- D 0 - I - 0x009F65 02:9F55: 6D        .byte $6D   ; 
- D 0 - I - 0x009F66 02:9F56: 70        .byte $70   ; 
- D 0 - I - 0x009F67 02:9F57: 6D        .byte $6D   ; 
- D 0 - I - 0x009F68 02:9F58: 67        .byte $67   ; 
off_9F59_07:
- D 0 - I - 0x009F69 02:9F59: 04        .byte $04   ; 
- D 0 - I - 0x009F6A 02:9F5A: 04        .byte $04   ; 
- D 0 - I - 0x009F6B 02:9F5B: 04        .byte $04   ; 
- D 0 - I - 0x009F6C 02:9F5C: 04        .byte $04   ; 
- D 0 - I - 0x009F6D 02:9F5D: 04        .byte $04   ; 
- D 0 - I - 0x009F6E 02:9F5E: 04        .byte $04   ; 
- D 0 - I - 0x009F6F 02:9F5F: 04        .byte $04   ; 
- D 0 - I - 0x009F70 02:9F60: 04        .byte $04   ; 
- D 0 - I - 0x009F71 02:9F61: 04        .byte $04   ; 
- D 0 - I - 0x009F72 02:9F62: 04        .byte $04   ; 
- D 0 - I - 0x009F73 02:9F63: 90        .byte $90   ; 
- D 0 - I - 0x009F74 02:9F64: 04        .byte $04   ; 
- D 0 - I - 0x009F75 02:9F65: 34        .byte $34   ; 
- D 0 - I - 0x009F76 02:9F66: 04        .byte $04   ; 
- D 0 - I - 0x009F77 02:9F67: 16        .byte $16   ; 
- D 0 - I - 0x009F78 02:9F68: 04        .byte $04   ; 
- D 0 - I - 0x009F79 02:9F69: 04        .byte $04   ; 
- D 0 - I - 0x009F7A 02:9F6A: 04        .byte $04   ; 
- D 0 - I - 0x009F7B 02:9F6B: 04        .byte $04   ; 
- D 0 - I - 0x009F7C 02:9F6C: 04        .byte $04   ; 
- D 0 - I - 0x009F7D 02:9F6D: 16        .byte $16   ; 
- D 0 - I - 0x009F7E 02:9F6E: 04        .byte $04   ; 
- D 0 - I - 0x009F7F 02:9F6F: 04        .byte $04   ; 
- D 0 - I - 0x009F80 02:9F70: 04        .byte $04   ; 
- - - - - - 0x009F81 02:9F71: 04        .byte $04   ; 
- - - - - - 0x009F82 02:9F72: 04        .byte $04   ; 
- - - - - - 0x009F83 02:9F73: 04        .byte $04   ; 
- - - - - - 0x009F84 02:9F74: 04        .byte $04   ; 
- - - - - - 0x009F85 02:9F75: 04        .byte $04   ; 
off_9F76_03:
- D 0 - I - 0x009F86 02:9F76: 04        .byte $04   ; 
- D 0 - I - 0x009F87 02:9F77: 16        .byte $16   ; 
- D 0 - I - 0x009F88 02:9F78: 04        .byte $04   ; 
- D 0 - I - 0x009F89 02:9F79: 2B        .byte $2B   ; 
- D 0 - I - 0x009F8A 02:9F7A: 30        .byte $30   ; 
- D 0 - I - 0x009F8B 02:9F7B: 04        .byte $04   ; 
- D 0 - I - 0x009F8C 02:9F7C: 61        .byte $61   ; 
- D 0 - I - 0x009F8D 02:9F7D: 70        .byte $70   ; 
- D 0 - I - 0x009F8E 02:9F7E: 6D        .byte $6D   ; 
- D 0 - I - 0x009F8F 02:9F7F: 6D        .byte $6D   ; 
- D 0 - I - 0x009F90 02:9F80: 6D        .byte $6D   ; 
- D 0 - I - 0x009F91 02:9F81: 67        .byte $67   ; 
- D 0 - I - 0x009F92 02:9F82: 4B        .byte $4B   ; 
- D 0 - I - 0x009F93 02:9F83: 04        .byte $04   ; 
- D 0 - I - 0x009F94 02:9F84: 04        .byte $04   ; 
- D 0 - I - 0x009F95 02:9F85: 36        .byte $36   ; 
- D 0 - I - 0x009F96 02:9F86: 04        .byte $04   ; 
- D 0 - I - 0x009F97 02:9F87: 16        .byte $16   ; 
- D 0 - I - 0x009F98 02:9F88: 04        .byte $04   ; 
- D 0 - I - 0x009F99 02:9F89: 16        .byte $16   ; 
off_9F8A_14:
- D 0 - I - 0x009F9A 02:9F8A: 04        .byte $04   ; 
- D 0 - I - 0x009F9B 02:9F8B: 04        .byte $04   ; 
- D 0 - I - 0x009F9C 02:9F8C: 04        .byte $04   ; 
- D 0 - I - 0x009F9D 02:9F8D: 04        .byte $04   ; 
- - - - - - 0x009F9E 02:9F8E: 04        .byte $04   ; 
- - - - - - 0x009F9F 02:9F8F: 04        .byte $04   ; 
- - - - - - 0x009FA0 02:9F90: 04        .byte $04   ; 
- - - - - - 0x009FA1 02:9F91: 04        .byte $04   ; 
- - - - - - 0x009FA2 02:9F92: 04        .byte $04   ; 
- D 0 - I - 0x009FA3 02:9F93: 04        .byte $04   ; 
- D 0 - I - 0x009FA4 02:9F94: 04        .byte $04   ; 
- D 0 - I - 0x009FA5 02:9F95: 04        .byte $04   ; 
- D 0 - I - 0x009FA6 02:9F96: 04        .byte $04   ; 
- D 0 - I - 0x009FA7 02:9F97: C5        .byte $C5   ; 
- D 0 - I - 0x009FA8 02:9F98: C6        .byte $C6   ; 
- D 0 - I - 0x009FA9 02:9F99: C6        .byte $C6   ; 
- D 0 - I - 0x009FAA 02:9F9A: C7        .byte $C7   ; 
- D 0 - I - 0x009FAB 02:9F9B: C8        .byte $C8   ; 
- D 0 - I - 0x009FAC 02:9F9C: 04        .byte $04   ; 
- D 0 - I - 0x009FAD 02:9F9D: 04        .byte $04   ; 
- D 0 - I - 0x009FAE 02:9F9E: 04        .byte $04   ; 
- D 0 - I - 0x009FAF 02:9F9F: 04        .byte $04   ; 
- D 0 - I - 0x009FB0 02:9FA0: 04        .byte $04   ; 
- D 0 - I - 0x009FB1 02:9FA1: 31        .byte $31   ; 
- D 0 - I - 0x009FB2 02:9FA2: 04        .byte $04   ; 
- D 0 - I - 0x009FB3 02:9FA3: 04        .byte $04   ; 
- D 0 - I - 0x009FB4 02:9FA4: 04        .byte $04   ; 
- D 0 - I - 0x009FB5 02:9FA5: 04        .byte $04   ; 
- D 0 - I - 0x009FB6 02:9FA6: 04        .byte $04   ; 
- D 0 - I - 0x009FB7 02:9FA7: 8E        .byte $8E   ; 
- D 0 - I - 0x009FB8 02:9FA8: 0E        .byte $0E   ; 
- D 0 - I - 0x009FB9 02:9FA9: 04        .byte $04   ; 
off_9FAA_1D:
- D 0 - I - 0x009FBA 02:9FAA: 2C        .byte $2C   ; 
- D 0 - I - 0x009FBB 02:9FAB: 04        .byte $04   ; 
- D 0 - I - 0x009FBC 02:9FAC: 16        .byte $16   ; 
- D 0 - I - 0x009FBD 02:9FAD: 04        .byte $04   ; 
- D 0 - I - 0x009FBE 02:9FAE: 04        .byte $04   ; 
- D 0 - I - 0x009FBF 02:9FAF: 04        .byte $04   ; 
- D 0 - I - 0x009FC0 02:9FB0: 17        .byte $17   ; 
- D 0 - I - 0x009FC1 02:9FB1: 04        .byte $04   ; 
- D 0 - I - 0x009FC2 02:9FB2: 16        .byte $16   ; 
- D 0 - I - 0x009FC3 02:9FB3: 04        .byte $04   ; 
- D 0 - I - 0x009FC4 02:9FB4: 61        .byte $61   ; 
- D 0 - I - 0x009FC5 02:9FB5: 6D        .byte $6D   ; 
- D 0 - I - 0x009FC6 02:9FB6: 6D        .byte $6D   ; 
- D 0 - I - 0x009FC7 02:9FB7: 71        .byte $71   ; 
- D 0 - I - 0x009FC8 02:9FB8: 6D        .byte $6D   ; 
- D 0 - I - 0x009FC9 02:9FB9: 6D        .byte $6D   ; 
- D 0 - I - 0x009FCA 02:9FBA: 6D        .byte $6D   ; 
- D 0 - I - 0x009FCB 02:9FBB: 6D        .byte $6D   ; 
- D 0 - I - 0x009FCC 02:9FBC: 6D        .byte $6D   ; 
- D 0 - I - 0x009FCD 02:9FBD: 6D        .byte $6D   ; 
- D 0 - I - 0x009FCE 02:9FBE: 6D        .byte $6D   ; 
- D 0 - I - 0x009FCF 02:9FBF: 67        .byte $67   ; 
off_9FC0_0A:
- D 0 - I - 0x009FD0 02:9FC0: 04        .byte $04   ; 
- D 0 - I - 0x009FD1 02:9FC1: 04        .byte $04   ; 
- D 0 - I - 0x009FD2 02:9FC2: 04        .byte $04   ; 
- D 0 - I - 0x009FD3 02:9FC3: 04        .byte $04   ; 
- D 0 - I - 0x009FD4 02:9FC4: 04        .byte $04   ; 
- D 0 - I - 0x009FD5 02:9FC5: 16        .byte $16   ; 
- D 0 - I - 0x009FD6 02:9FC6: 04        .byte $04   ; 
- D 0 - I - 0x009FD7 02:9FC7: 04        .byte $04   ; 
- D 0 - I - 0x009FD8 02:9FC8: 04        .byte $04   ; 
- D 0 - I - 0x009FD9 02:9FC9: 16        .byte $16   ; 
- D 0 - I - 0x009FDA 02:9FCA: 04        .byte $04   ; 
- D 0 - I - 0x009FDB 02:9FCB: 04        .byte $04   ; 
- D 0 - I - 0x009FDC 02:9FCC: 04        .byte $04   ; 
- D 0 - I - 0x009FDD 02:9FCD: 16        .byte $16   ; 
- D 0 - I - 0x009FDE 02:9FCE: 04        .byte $04   ; 
- D 0 - I - 0x009FDF 02:9FCF: 89        .byte $89   ; 
- D 0 - I - 0x009FE0 02:9FD0: 90        .byte $90   ; 
- D 0 - I - 0x009FE1 02:9FD1: 91        .byte $91   ; 
- D 0 - I - 0x009FE2 02:9FD2: 04        .byte $04   ; 
- D 0 - I - 0x009FE3 02:9FD3: 4D        .byte $4D   ; 
- D 0 - I - 0x009FE4 02:9FD4: 61        .byte $61   ; 
- D 0 - I - 0x009FE5 02:9FD5: 70        .byte $70   ; 
- D 0 - I - 0x009FE6 02:9FD6: 6D        .byte $6D   ; 
- D 0 - I - 0x009FE7 02:9FD7: 6B        .byte $6B   ; 
off_9FD8_05:
- D 0 - I - 0x009FE8 02:9FD8: 04        .byte $04   ; 
- D 0 - I - 0x009FE9 02:9FD9: 04        .byte $04   ; 
- D 0 - I - 0x009FEA 02:9FDA: 04        .byte $04   ; 
- D 0 - I - 0x009FEB 02:9FDB: 04        .byte $04   ; 
- D 0 - I - 0x009FEC 02:9FDC: 04        .byte $04   ; 
- D 0 - I - 0x009FED 02:9FDD: 04        .byte $04   ; 
- D 0 - I - 0x009FEE 02:9FDE: 04        .byte $04   ; 
- D 0 - I - 0x009FEF 02:9FDF: 04        .byte $04   ; 
- D 0 - I - 0x009FF0 02:9FE0: 04        .byte $04   ; 
- D 0 - I - 0x009FF1 02:9FE1: 04        .byte $04   ; 
- D 0 - I - 0x009FF2 02:9FE2: 04        .byte $04   ; 
- D 0 - I - 0x009FF3 02:9FE3: 04        .byte $04   ; 
- D 0 - I - 0x009FF4 02:9FE4: 04        .byte $04   ; 
- D 0 - I - 0x009FF5 02:9FE5: 04        .byte $04   ; 
- D 0 - I - 0x009FF6 02:9FE6: 04        .byte $04   ; 
- D 0 - I - 0x009FF7 02:9FE7: 04        .byte $04   ; 
- D 0 - I - 0x009FF8 02:9FE8: 04        .byte $04   ; 
- D 0 - I - 0x009FF9 02:9FE9: 04        .byte $04   ; 
- D 0 - I - 0x009FFA 02:9FEA: 04        .byte $04   ; 
- D 0 - I - 0x009FFB 02:9FEB: 04        .byte $04   ; 
- D 0 - I - 0x009FFC 02:9FEC: 04        .byte $04   ; 
- D 0 - I - 0x009FFD 02:9FED: 04        .byte $04   ; 
- D 0 - I - 0x009FFE 02:9FEE: 61        .byte $61   ; 
- D 0 - I - 0x009FFF 02:9FEF: 6D        .byte $6D   ; 
- D 0 - I - 0x00A000 02:9FF0: 6D        .byte $6D   ; 
- D 0 - I - 0x00A001 02:9FF1: 67        .byte $67   ; 
off_9FF2_07:
- D 0 - I - 0x00A002 02:9FF2: 04        .byte $04   ; 
- D 0 - I - 0x00A003 02:9FF3: 04        .byte $04   ; 
- D 0 - I - 0x00A004 02:9FF4: 04        .byte $04   ; 
- D 0 - I - 0x00A005 02:9FF5: 04        .byte $04   ; 
- D 0 - I - 0x00A006 02:9FF6: 04        .byte $04   ; 
- D 0 - I - 0x00A007 02:9FF7: 04        .byte $04   ; 
- D 0 - I - 0x00A008 02:9FF8: 04        .byte $04   ; 
- D 0 - I - 0x00A009 02:9FF9: 49        .byte $49   ; 
- D 0 - I - 0x00A00A 02:9FFA: 61        .byte $61   ; 
- D 0 - I - 0x00A00B 02:9FFB: 6D        .byte $6D   ; 
- D 0 - I - 0x00A00C 02:9FFC: 70        .byte $70   ; 
- D 0 - I - 0x00A00D 02:9FFD: 67        .byte $67   ; 
- D 0 - I - 0x00A00E 02:9FFE: 04        .byte $04   ; 
- D 0 - I - 0x00A00F 02:9FFF: 04        .byte $04   ; 
- - - - - - 0x00A010 02:A000: 04        .byte $04   ; 
- D 1 - I - 0x00A011 02:A001: 04        .byte $04   ; 
- D 1 - I - 0x00A012 02:A002: 04        .byte $04   ; 
- D 1 - I - 0x00A013 02:A003: 04        .byte $04   ; 
- D 1 - I - 0x00A014 02:A004: 04        .byte $04   ; 
- D 1 - I - 0x00A015 02:A005: 04        .byte $04   ; 
- D 1 - I - 0x00A016 02:A006: 04        .byte $04   ; 
- D 1 - I - 0x00A017 02:A007: 04        .byte $04   ; 
- D 1 - I - 0x00A018 02:A008: 04        .byte $04   ; 
- D 1 - I - 0x00A019 02:A009: 04        .byte $04   ; 
- D 1 - I - 0x00A01A 02:A00A: 04        .byte $04   ; 
- D 1 - I - 0x00A01B 02:A00B: 04        .byte $04   ; 
- D 1 - I - 0x00A01C 02:A00C: 04        .byte $04   ; 
- D 1 - I - 0x00A01D 02:A00D: 04        .byte $04   ; 
- D 1 - I - 0x00A01E 02:A00E: 04        .byte $04   ; 
- D 1 - I - 0x00A01F 02:A00F: 04        .byte $04   ; 
- D 1 - I - 0x00A020 02:A010: 04        .byte $04   ; 
- D 1 - I - 0x00A021 02:A011: 2B        .byte $2B   ; 
off_A012_02:
- D 1 - I - 0x00A022 02:A012: 00        .byte $00   ; 
- D 1 - I - 0x00A023 02:A013: 00        .byte $00   ; 
- D 1 - I - 0x00A024 02:A014: 00        .byte $00   ; 
- D 1 - I - 0x00A025 02:A015: 00        .byte $00   ; 
- D 1 - I - 0x00A026 02:A016: 00        .byte $00   ; 
- D 1 - I - 0x00A027 02:A017: 00        .byte $00   ; 
- D 1 - I - 0x00A028 02:A018: 00        .byte $00   ; 
- D 1 - I - 0x00A029 02:A019: 00        .byte $00   ; 
- D 1 - I - 0x00A02A 02:A01A: 00        .byte $00   ; 
- D 1 - I - 0x00A02B 02:A01B: 00        .byte $00   ; 
- D 1 - I - 0x00A02C 02:A01C: 00        .byte $00   ; 
- D 1 - I - 0x00A02D 02:A01D: 00        .byte $00   ; 
- D 1 - I - 0x00A02E 02:A01E: 00        .byte $00   ; 
- D 1 - I - 0x00A02F 02:A01F: 44        .byte $44   ; 
- D 1 - I - 0x00A030 02:A020: 11        .byte $11   ; 
- D 1 - I - 0x00A031 02:A021: 00        .byte $00   ; 
- D 1 - I - 0x00A032 02:A022: 55        .byte $55   ; 
- D 1 - I - 0x00A033 02:A023: 11        .byte $11   ; 
- D 1 - I - 0x00A034 02:A024: 00        .byte $00   ; 
- D 1 - I - 0x00A035 02:A025: 54        .byte $54   ; 
- D 1 - I - 0x00A036 02:A026: 55        .byte $55   ; 
- D 1 - I - 0x00A037 02:A027: 55        .byte $55   ; 
- D 1 - I - 0x00A038 02:A028: 11        .byte $11   ; 
- D 1 - I - 0x00A039 02:A029: 40        .byte $40   ; 
- D 1 - I - 0x00A03A 02:A02A: 55        .byte $55   ; 
- D 1 - I - 0x00A03B 02:A02B: 11        .byte $11   ; 
- D 1 - I - 0x00A03C 02:A02C: 00        .byte $00   ; 
- D 1 - I - 0x00A03D 02:A02D: 05        .byte $05   ; 
- D 1 - I - 0x00A03E 02:A02E: 55        .byte $55   ; 
- D 1 - I - 0x00A03F 02:A02F: 55        .byte $55   ; 
- D 1 - I - 0x00A040 02:A030: 01        .byte $01   ; 
- D 1 - I - 0x00A041 02:A031: 55        .byte $55   ; 
- D 1 - I - 0x00A042 02:A032: 00        .byte $00   ; 
- D 1 - I - 0x00A043 02:A033: 44        .byte $44   ; 
- D 1 - I - 0x00A044 02:A034: 55        .byte $55   ; 
- D 1 - I - 0x00A045 02:A035: 55        .byte $55   ; 
- D 1 - I - 0x00A046 02:A036: 10        .byte $10   ; 
- D 1 - I - 0x00A047 02:A037: 00        .byte $00   ; 
- D 1 - I - 0x00A048 02:A038: 54        .byte $54   ; 
- D 1 - I - 0x00A049 02:A039: 55        .byte $55   ; 
- D 1 - I - 0x00A04A 02:A03A: 00        .byte $00   ; 
- D 1 - I - 0x00A04B 02:A03B: 44        .byte $44   ; 
- D 1 - I - 0x00A04C 02:A03C: 55        .byte $55   ; 
- D 1 - I - 0x00A04D 02:A03D: 55        .byte $55   ; 
- D 1 - I - 0x00A04E 02:A03E: 55        .byte $55   ; 
- D 1 - I - 0x00A04F 02:A03F: 00        .byte $00   ; 
- D 1 - I - 0x00A050 02:A040: 55        .byte $55   ; 
- D 1 - I - 0x00A051 02:A041: 15        .byte $15   ; 
- D 1 - I - 0x00A052 02:A042: 00        .byte $00   ; 
- D 1 - I - 0x00A053 02:A043: 44        .byte $44   ; 
- D 1 - I - 0x00A054 02:A044: 55        .byte $55   ; 
- D 1 - I - 0x00A055 02:A045: 55        .byte $55   ; 
- D 1 - I - 0x00A056 02:A046: 55        .byte $55   ; 
- D 1 - I - 0x00A057 02:A047: 11        .byte $11   ; 
- D 1 - I - 0x00A058 02:A048: 00        .byte $00   ; 
- D 1 - I - 0x00A059 02:A049: 00        .byte $00   ; 
- D 1 - I - 0x00A05A 02:A04A: 00        .byte $00   ; 
- D 1 - I - 0x00A05B 02:A04B: 00        .byte $00   ; 
- D 1 - I - 0x00A05C 02:A04C: 05        .byte $05   ; 
- D 1 - I - 0x00A05D 02:A04D: 05        .byte $05   ; 
- D 1 - I - 0x00A05E 02:A04E: 05        .byte $05   ; 
- D 1 - I - 0x00A05F 02:A04F: 01        .byte $01   ; 
- D 1 - I - 0x00A060 02:A050: 00        .byte $00   ; 
- D 1 - I - 0x00A061 02:A051: 00        .byte $00   ; 
off_A052_08:
- D 1 - I - 0x00A062 02:A052: 04        .byte $04   ; 
- D 1 - I - 0x00A063 02:A053: 04        .byte $04   ; 
- D 1 - I - 0x00A064 02:A054: 17        .byte $17   ; 
- D 1 - I - 0x00A065 02:A055: 04        .byte $04   ; 
- D 1 - I - 0x00A066 02:A056: 04        .byte $04   ; 
- D 1 - I - 0x00A067 02:A057: 04        .byte $04   ; 
- D 1 - I - 0x00A068 02:A058: 41        .byte $41   ; 
- D 1 - I - 0x00A069 02:A059: 55        .byte $55   ; 
- D 1 - I - 0x00A06A 02:A05A: 55        .byte $55   ; 
- D 1 - I - 0x00A06B 02:A05B: 43        .byte $43   ; 
- D 1 - I - 0x00A06C 02:A05C: 91        .byte $91   ; 
- D 1 - I - 0x00A06D 02:A05D: 92        .byte $92   ; 
- D 1 - I - 0x00A06E 02:A05E: 93        .byte $93   ; 
- D 1 - I - 0x00A06F 02:A05F: 04        .byte $04   ; 
- D 1 - I - 0x00A070 02:A060: 04        .byte $04   ; 
- D 1 - I - 0x00A071 02:A061: 04        .byte $04   ; 
- D 1 - I - 0x00A072 02:A062: 04        .byte $04   ; 
- D 1 - I - 0x00A073 02:A063: 04        .byte $04   ; 
- D 1 - I - 0x00A074 02:A064: 16        .byte $16   ; 
- D 1 - I - 0x00A075 02:A065: 04        .byte $04   ; 
- D 1 - I - 0x00A076 02:A066: 04        .byte $04   ; 
- D 1 - I - 0x00A077 02:A067: 04        .byte $04   ; 
- D 1 - I - 0x00A078 02:A068: 16        .byte $16   ; 
- D 1 - I - 0x00A079 02:A069: 04        .byte $04   ; 
- - - - - - 0x00A07A 02:A06A: 04        .byte $04   ; 
- - - - - - 0x00A07B 02:A06B: 04        .byte $04   ; 
- - - - - - 0x00A07C 02:A06C: 04        .byte $04   ; 
- - - - - - 0x00A07D 02:A06D: 17        .byte $17   ; 
off_A06E_1C:
- D 1 - I - 0x00A07E 02:A06E: 04        .byte $04   ; 
- D 1 - I - 0x00A07F 02:A06F: 04        .byte $04   ; 
- D 1 - I - 0x00A080 02:A070: 04        .byte $04   ; 
- D 1 - I - 0x00A081 02:A071: 04        .byte $04   ; 
- D 1 - I - 0x00A082 02:A072: 04        .byte $04   ; 
- D 1 - I - 0x00A083 02:A073: 04        .byte $04   ; 
- D 1 - I - 0x00A084 02:A074: 04        .byte $04   ; 
- D 1 - I - 0x00A085 02:A075: 04        .byte $04   ; 
- D 1 - I - 0x00A086 02:A076: 04        .byte $04   ; 
- D 1 - I - 0x00A087 02:A077: 04        .byte $04   ; 
- D 1 - I - 0x00A088 02:A078: 04        .byte $04   ; 
- D 1 - I - 0x00A089 02:A079: 4D        .byte $4D   ; 
- D 1 - I - 0x00A08A 02:A07A: 61        .byte $61   ; 
- D 1 - I - 0x00A08B 02:A07B: 6D        .byte $6D   ; 
- D 1 - I - 0x00A08C 02:A07C: 6D        .byte $6D   ; 
- D 1 - I - 0x00A08D 02:A07D: 6D        .byte $6D   ; 
- D 1 - I - 0x00A08E 02:A07E: 70        .byte $70   ; 
- D 1 - I - 0x00A08F 02:A07F: 6D        .byte $6D   ; 
- D 1 - I - 0x00A090 02:A080: 6D        .byte $6D   ; 
- D 1 - I - 0x00A091 02:A081: 6D        .byte $6D   ; 
- D 1 - I - 0x00A092 02:A082: 6D        .byte $6D   ; 
- D 1 - I - 0x00A093 02:A083: 67        .byte $67   ; 
- D 1 - I - 0x00A094 02:A084: 04        .byte $04   ; 
- D 1 - I - 0x00A095 02:A085: 04        .byte $04   ; 
- D 1 - I - 0x00A096 02:A086: 04        .byte $04   ; 
- D 1 - I - 0x00A097 02:A087: 04        .byte $04   ; 
- D 1 - I - 0x00A098 02:A088: 04        .byte $04   ; 
- D 1 - I - 0x00A099 02:A089: 04        .byte $04   ; 
- D 1 - I - 0x00A09A 02:A08A: 04        .byte $04   ; 
- D 1 - I - 0x00A09B 02:A08B: 04        .byte $04   ; 
- D 1 - I - 0x00A09C 02:A08C: 04        .byte $04   ; 
- D 1 - I - 0x00A09D 02:A08D: 2B        .byte $2B   ; 
off_A08E_09:
- D 1 - I - 0x00A09E 02:A08E: 14        .byte $14   ; 
- D 1 - I - 0x00A09F 02:A08F: 00        .byte $00   ; 
- D 1 - I - 0x00A0A0 02:A090: 00        .byte $00   ; 
- D 1 - I - 0x00A0A1 02:A091: 00        .byte $00   ; 
- D 1 - I - 0x00A0A2 02:A092: 00        .byte $00   ; 
- D 1 - I - 0x00A0A3 02:A093: 00        .byte $00   ; 
- D 1 - I - 0x00A0A4 02:A094: 60        .byte $60   ; 
- D 1 - I - 0x00A0A5 02:A095: 6C        .byte $6C   ; 
- D 1 - I - 0x00A0A6 02:A096: 6E        .byte $6E   ; 
- D 1 - I - 0x00A0A7 02:A097: 66        .byte $66   ; 
- D 1 - I - 0x00A0A8 02:A098: 4A        .byte $4A   ; 
- D 1 - I - 0x00A0A9 02:A099: 00        .byte $00   ; 
- D 1 - I - 0x00A0AA 02:A09A: 26        .byte $26   ; 
- D 1 - I - 0x00A0AB 02:A09B: 00        .byte $00   ; 
- D 1 - I - 0x00A0AC 02:A09C: 00        .byte $00   ; 
- D 1 - I - 0x00A0AD 02:A09D: 00        .byte $00   ; 
- D 1 - I - 0x00A0AE 02:A09E: 00        .byte $00   ; 
- D 1 - I - 0x00A0AF 02:A09F: 00        .byte $00   ; 
- D 1 - I - 0x00A0B0 02:A0A0: 00        .byte $00   ; 
- D 1 - I - 0x00A0B1 02:A0A1: 00        .byte $00   ; 
- D 1 - I - 0x00A0B2 02:A0A2: 00        .byte $00   ; 
- D 1 - I - 0x00A0B3 02:A0A3: 00        .byte $00   ; 
- D 1 - I - 0x00A0B4 02:A0A4: 00        .byte $00   ; 
- D 1 - I - 0x00A0B5 02:A0A5: 00        .byte $00   ; 
- - - - - - 0x00A0B6 02:A0A6: 00        .byte $00   ; 
- - - - - - 0x00A0B7 02:A0A7: 00        .byte $00   ; 
- - - - - - 0x00A0B8 02:A0A8: 00        .byte $00   ; 
- - - - - - 0x00A0B9 02:A0A9: 00        .byte $00   ; 
- - - - - - 0x00A0BA 02:A0AA: 00        .byte $00   ; 
- - - - - - 0x00A0BB 02:A0AB: 15        .byte $15   ; 
- - - - - - 0x00A0BC 02:A0AC: 00        .byte $00   ; 
- - - - - - 0x00A0BD 02:A0AD: 00        .byte $00   ; 
off_A0AE_12:
- D 1 - I - 0x00A0BE 02:A0AE: 6C        .byte $6C   ; 
- D 1 - I - 0x00A0BF 02:A0AF: F3        .byte $F3   ; 
- D 1 - I - 0x00A0C0 02:A0B0: 73        .byte $73   ; 
- D 1 - I - 0x00A0C1 02:A0B1: 6C        .byte $6C   ; 
- D 1 - I - 0x00A0C2 02:A0B2: 6C        .byte $6C   ; 
- D 1 - I - 0x00A0C3 02:A0B3: 6F        .byte $6F   ; 
- D 1 - I - 0x00A0C4 02:A0B4: 6C        .byte $6C   ; 
- D 1 - I - 0x00A0C5 02:A0B5: 66        .byte $66   ; 
- D 1 - I - 0x00A0C6 02:A0B6: 84        .byte $84   ; 
- D 1 - I - 0x00A0C7 02:A0B7: 10        .byte $10   ; 
- D 1 - I - 0x00A0C8 02:A0B8: 10        .byte $10   ; 
- D 1 - I - 0x00A0C9 02:A0B9: 10        .byte $10   ; 
- D 1 - I - 0x00A0CA 02:A0BA: 10        .byte $10   ; 
- D 1 - I - 0x00A0CB 02:A0BB: 83        .byte $83   ; 
- D 1 - I - 0x00A0CC 02:A0BC: A5        .byte $A5   ; 
- D 1 - I - 0x00A0CD 02:A0BD: A6        .byte $A6   ; 
- D 1 - I - 0x00A0CE 02:A0BE: A7        .byte $A7   ; 
- D 1 - I - 0x00A0CF 02:A0BF: A7        .byte $A7   ; 
- D 1 - I - 0x00A0D0 02:A0C0: A8        .byte $A8   ; 
- D 1 - I - 0x00A0D1 02:A0C1: 00        .byte $00   ; 
- D 1 - I - 0x00A0D2 02:A0C2: 00        .byte $00   ; 
- D 1 - I - 0x00A0D3 02:A0C3: 00        .byte $00   ; 
- D 1 - I - 0x00A0D4 02:A0C4: 00        .byte $00   ; 
- D 1 - I - 0x00A0D5 02:A0C5: 00        .byte $00   ; 
- - - - - - 0x00A0D6 02:A0C6: 00        .byte $00   ; 
- - - - - - 0x00A0D7 02:A0C7: 00        .byte $00   ; 
- - - - - - 0x00A0D8 02:A0C8: 00        .byte $00   ; 
- - - - - - 0x00A0D9 02:A0C9: 00        .byte $00   ; 
- - - - - - 0x00A0DA 02:A0CA: 00        .byte $00   ; 
- - - - - - 0x00A0DB 02:A0CB: 00        .byte $00   ; 
- - - - - - 0x00A0DC 02:A0CC: 00        .byte $00   ; 
- - - - - - 0x00A0DD 02:A0CD: 00        .byte $00   ; 
off_A0CE_14:
- D 1 - I - 0x00A0DE 02:A0CE: 04        .byte $04   ; 
- D 1 - I - 0x00A0DF 02:A0CF: 09        .byte $09   ; 
- D 1 - I - 0x00A0E0 02:A0D0: 8F        .byte $8F   ; 
- D 1 - I - 0x00A0E1 02:A0D1: 4D        .byte $4D   ; 
- D 1 - I - 0x00A0E2 02:A0D2: 61        .byte $61   ; 
- D 1 - I - 0x00A0E3 02:A0D3: 6D        .byte $6D   ; 
- D 1 - I - 0x00A0E4 02:A0D4: 70        .byte $70   ; 
- D 1 - I - 0x00A0E5 02:A0D5: 6B        .byte $6B   ; 
- D 1 - I - 0x00A0E6 02:A0D6: 36        .byte $36   ; 
- D 1 - I - 0x00A0E7 02:A0D7: 04        .byte $04   ; 
- D 1 - I - 0x00A0E8 02:A0D8: 16        .byte $16   ; 
- D 1 - I - 0x00A0E9 02:A0D9: 04        .byte $04   ; 
- D 1 - I - 0x00A0EA 02:A0DA: 04        .byte $04   ; 
- D 1 - I - 0x00A0EB 02:A0DB: 04        .byte $04   ; 
- D 1 - I - 0x00A0EC 02:A0DC: C5        .byte $C5   ; 
- D 1 - I - 0x00A0ED 02:A0DD: C6        .byte $C6   ; 
- D 1 - I - 0x00A0EE 02:A0DE: C7        .byte $C7   ; 
- D 1 - I - 0x00A0EF 02:A0DF: C7        .byte $C7   ; 
- D 1 - I - 0x00A0F0 02:A0E0: C8        .byte $C8   ; 
- D 1 - I - 0x00A0F1 02:A0E1: 04        .byte $04   ; 
- D 1 - I - 0x00A0F2 02:A0E2: 04        .byte $04   ; 
off_A0E3_0F:
- D 1 - I - 0x00A0F3 02:A0E3: 04        .byte $04   ; 
- D 1 - I - 0x00A0F4 02:A0E4: 04        .byte $04   ; 
- D 1 - I - 0x00A0F5 02:A0E5: 16        .byte $16   ; 
- - - - - - 0x00A0F6 02:A0E6: 04        .byte $04   ; 
- - - - - - 0x00A0F7 02:A0E7: 04        .byte $04   ; 
- - - - - - 0x00A0F8 02:A0E8: 04        .byte $04   ; 
- - - - - - 0x00A0F9 02:A0E9: 04        .byte $04   ; 
- - - - - - 0x00A0FA 02:A0EA: 04        .byte $04   ; 
- - - - - - 0x00A0FB 02:A0EB: 04        .byte $04   ; 
- D 1 - I - 0x00A0FC 02:A0EC: 04        .byte $04   ; 
- D 1 - I - 0x00A0FD 02:A0ED: 04        .byte $04   ; 
- D 1 - I - 0x00A0FE 02:A0EE: 04        .byte $04   ; 
- D 1 - I - 0x00A0FF 02:A0EF: 04        .byte $04   ; 
- D 1 - I - 0x00A100 02:A0F0: C0        .byte $C0   ; 
- D 1 - I - 0x00A101 02:A0F1: C1        .byte $C1   ; 
- D 1 - I - 0x00A102 02:A0F2: C2        .byte $C2   ; 
- D 1 - I - 0x00A103 02:A0F3: C3        .byte $C3   ; 
- D 1 - I - 0x00A104 02:A0F4: C4        .byte $C4   ; 
- D 1 - I - 0x00A105 02:A0F5: 33        .byte $33   ; 
- D 1 - I - 0x00A106 02:A0F6: 04        .byte $04   ; 
- D 1 - I - 0x00A107 02:A0F7: 04        .byte $04   ; 
- D 1 - I - 0x00A108 02:A0F8: 49        .byte $49   ; 
- D 1 - I - 0x00A109 02:A0F9: 61        .byte $61   ; 
- D 1 - I - 0x00A10A 02:A0FA: 6D        .byte $6D   ; 
- D 1 - I - 0x00A10B 02:A0FB: 6D        .byte $6D   ; 
- D 1 - I - 0x00A10C 02:A0FC: 6D        .byte $6D   ; 
- D 1 - I - 0x00A10D 02:A0FD: 70        .byte $70   ; 
- D 1 - I - 0x00A10E 02:A0FE: 79        .byte $79   ; 
- D 1 - I - 0x00A10F 02:A0FF: 5B        .byte $5B   ; 
- D 1 - I - 0x00A110 02:A100: 5B        .byte $5B   ; 
- D 1 - I - 0x00A111 02:A101: E3        .byte $E3   ; 
- D 1 - I - 0x00A112 02:A102: 5B        .byte $5B   ; 
off_A103_15:
- D 1 - I - 0x00A113 02:A103: 19        .byte $19   ; 
- D 1 - I - 0x00A114 02:A104: 1A        .byte $1A   ; 
- D 1 - I - 0x00A115 02:A105: 23        .byte $23   ; 
- D 1 - I - 0x00A116 02:A106: 00        .byte $00   ; 
- D 1 - I - 0x00A117 02:A107: 44        .byte $44   ; 
- D 1 - I - 0x00A118 02:A108: 5C        .byte $5C   ; 
- D 1 - I - 0x00A119 02:A109: 5D        .byte $5D   ; 
- D 1 - I - 0x00A11A 02:A10A: 46        .byte $46   ; 
- D 1 - I - 0x00A11B 02:A10B: 1B        .byte $1B   ; 
- D 1 - I - 0x00A11C 02:A10C: 20        .byte $20   ; 
- D 1 - I - 0x00A11D 02:A10D: 00        .byte $00   ; 
- D 1 - I - 0x00A11E 02:A10E: 00        .byte $00   ; 
- D 1 - I - 0x00A11F 02:A10F: 00        .byte $00   ; 
- D 1 - I - 0x00A120 02:A110: 14        .byte $14   ; 
- D 1 - I - 0x00A121 02:A111: 22        .byte $22   ; 
- D 1 - I - 0x00A122 02:A112: D5        .byte $D5   ; 
- D 1 - I - 0x00A123 02:A113: D6        .byte $D6   ; 
- D 1 - I - 0x00A124 02:A114: D6        .byte $D6   ; 
- D 1 - I - 0x00A125 02:A115: D7        .byte $D7   ; 
- D 1 - I - 0x00A126 02:A116: B4        .byte $B4   ; 
- D 1 - I - 0x00A127 02:A117: 00        .byte $00   ; 
- D 1 - I - 0x00A128 02:A118: 00        .byte $00   ; 
- D 1 - I - 0x00A129 02:A119: 00        .byte $00   ; 
- D 1 - I - 0x00A12A 02:A11A: 00        .byte $00   ; 
- - - - - - 0x00A12B 02:A11B: 00        .byte $00   ; 
- - - - - - 0x00A12C 02:A11C: 00        .byte $00   ; 
- - - - - - 0x00A12D 02:A11D: 00        .byte $00   ; 
- - - - - - 0x00A12E 02:A11E: 00        .byte $00   ; 
- - - - - - 0x00A12F 02:A11F: 00        .byte $00   ; 
- - - - - - 0x00A130 02:A120: 00        .byte $00   ; 
- - - - - - 0x00A131 02:A121: 00        .byte $00   ; 
- - - - - - 0x00A132 02:A122: 00        .byte $00   ; 
off_A123_03:
- - - - - - 0x00A133 02:A123: 00        .byte $00   ; 
- - - - - - 0x00A134 02:A124: 00        .byte $00   ; 
- - - - - - 0x00A135 02:A125: 00        .byte $00   ; 
- - - - - - 0x00A136 02:A126: 00        .byte $00   ; 
- - - - - - 0x00A137 02:A127: 00        .byte $00   ; 
- - - - - - 0x00A138 02:A128: 00        .byte $00   ; 
- - - - - - 0x00A139 02:A129: 00        .byte $00   ; 
- - - - - - 0x00A13A 02:A12A: 00        .byte $00   ; 
- D 1 - I - 0x00A13B 02:A12B: 00        .byte $00   ; 
- D 1 - I - 0x00A13C 02:A12C: 00        .byte $00   ; 
- D 1 - I - 0x00A13D 02:A12D: 00        .byte $00   ; 
- D 1 - I - 0x00A13E 02:A12E: 00        .byte $00   ; 
- D 1 - I - 0x00A13F 02:A12F: 00        .byte $00   ; 
- D 1 - I - 0x00A140 02:A130: 00        .byte $00   ; 
- - - - - - 0x00A141 02:A131: 00        .byte $00   ; 
- - - - - - 0x00A142 02:A132: 00        .byte $00   ; 
- D 1 - I - 0x00A143 02:A133: 50        .byte $50   ; 
- D 1 - I - 0x00A144 02:A134: 44        .byte $44   ; 
- D 1 - I - 0x00A145 02:A135: 55        .byte $55   ; 
- D 1 - I - 0x00A146 02:A136: 00        .byte $00   ; 
- D 1 - I - 0x00A147 02:A137: 00        .byte $00   ; 
- D 1 - I - 0x00A148 02:A138: 00        .byte $00   ; 
- - - - - - 0x00A149 02:A139: 00        .byte $00   ; 
- - - - - - 0x00A14A 02:A13A: 00        .byte $00   ; 
- D 1 - I - 0x00A14B 02:A13B: 55        .byte $55   ; 
- D 1 - I - 0x00A14C 02:A13C: 10        .byte $10   ; 
- D 1 - I - 0x00A14D 02:A13D: 55        .byte $55   ; 
- D 1 - I - 0x00A14E 02:A13E: 00        .byte $00   ; 
- D 1 - I - 0x00A14F 02:A13F: 00        .byte $00   ; 
- D 1 - I - 0x00A150 02:A140: 00        .byte $00   ; 
- - - - - - 0x00A151 02:A141: 00        .byte $00   ; 
- - - - - - 0x00A152 02:A142: 00        .byte $00   ; 
- D 1 - I - 0x00A153 02:A143: 55        .byte $55   ; 
- D 1 - I - 0x00A154 02:A144: 55        .byte $55   ; 
- D 1 - I - 0x00A155 02:A145: 00        .byte $00   ; 
- D 1 - I - 0x00A156 02:A146: 00        .byte $00   ; 
- D 1 - I - 0x00A157 02:A147: 00        .byte $00   ; 
- D 1 - I - 0x00A158 02:A148: 00        .byte $00   ; 
- - - - - - 0x00A159 02:A149: 00        .byte $00   ; 
- - - - - - 0x00A15A 02:A14A: 00        .byte $00   ; 
- D 1 - I - 0x00A15B 02:A14B: 04        .byte $04   ; 
- D 1 - I - 0x00A15C 02:A14C: 05        .byte $05   ; 
- D 1 - I - 0x00A15D 02:A14D: 00        .byte $00   ; 
- D 1 - I - 0x00A15E 02:A14E: 00        .byte $00   ; 
- D 1 - I - 0x00A15F 02:A14F: 00        .byte $00   ; 
- D 1 - I - 0x00A160 02:A150: 00        .byte $00   ; 
- - - - - - 0x00A161 02:A151: 00        .byte $00   ; 
- - - - - - 0x00A162 02:A152: 00        .byte $00   ; 
- D 1 - I - 0x00A163 02:A153: 00        .byte $00   ; 
- D 1 - I - 0x00A164 02:A154: 00        .byte $00   ; 
- D 1 - I - 0x00A165 02:A155: 00        .byte $00   ; 
- D 1 - I - 0x00A166 02:A156: 00        .byte $00   ; 
- D 1 - I - 0x00A167 02:A157: 00        .byte $00   ; 
- D 1 - I - 0x00A168 02:A158: 00        .byte $00   ; 
- - - - - - 0x00A169 02:A159: 00        .byte $00   ; 
- - - - - - 0x00A16A 02:A15A: 00        .byte $00   ; 
- D 1 - I - 0x00A16B 02:A15B: 00        .byte $00   ; 
- D 1 - I - 0x00A16C 02:A15C: 00        .byte $00   ; 
- D 1 - I - 0x00A16D 02:A15D: 00        .byte $00   ; 
- D 1 - I - 0x00A16E 02:A15E: 00        .byte $00   ; 
- D 1 - I - 0x00A16F 02:A15F: 00        .byte $00   ; 
- D 1 - I - 0x00A170 02:A160: 00        .byte $00   ; 
- - - - - - 0x00A171 02:A161: 00        .byte $00   ; 
- - - - - - 0x00A172 02:A162: 00        .byte $00   ; 
off_A163_01:
- - - - - - 0x00A173 02:A163: 00        .byte $00   ; 
- - - - - - 0x00A174 02:A164: 00        .byte $00   ; 
- - - - - - 0x00A175 02:A165: 00        .byte $00   ; 
- - - - - - 0x00A176 02:A166: 00        .byte $00   ; 
- - - - - - 0x00A177 02:A167: 00        .byte $00   ; 
- - - - - - 0x00A178 02:A168: 00        .byte $00   ; 
- - - - - - 0x00A179 02:A169: 00        .byte $00   ; 
- - - - - - 0x00A17A 02:A16A: 00        .byte $00   ; 
- - - - - - 0x00A17B 02:A16B: 00        .byte $00   ; 
- D 1 - I - 0x00A17C 02:A16C: 00        .byte $00   ; 
- D 1 - I - 0x00A17D 02:A16D: 00        .byte $00   ; 
- D 1 - I - 0x00A17E 02:A16E: 00        .byte $00   ; 
- D 1 - I - 0x00A17F 02:A16F: 00        .byte $00   ; 
- D 1 - I - 0x00A180 02:A170: 00        .byte $00   ; 
- D 1 - I - 0x00A181 02:A171: 14        .byte $14   ; 
- D 1 - I - 0x00A182 02:A172: 00        .byte $00   ; 
- D 1 - I - 0x00A183 02:A173: 23        .byte $23   ; 
- D 1 - I - 0x00A184 02:A174: 00        .byte $00   ; 
- D 1 - I - 0x00A185 02:A175: 00        .byte $00   ; 
- D 1 - I - 0x00A186 02:A176: 00        .byte $00   ; 
- D 1 - I - 0x00A187 02:A177: 00        .byte $00   ; 
- D 1 - I - 0x00A188 02:A178: 00        .byte $00   ; 
- D 1 - I - 0x00A189 02:A179: 40        .byte $40   ; 
- D 1 - I - 0x00A18A 02:A17A: 54        .byte $54   ; 
- D 1 - I - 0x00A18B 02:A17B: 54        .byte $54   ; 
- D 1 - I - 0x00A18C 02:A17C: 42        .byte $42   ; 
- D 1 - I - 0x00A18D 02:A17D: 00        .byte $00   ; 
- D 1 - I - 0x00A18E 02:A17E: 00        .byte $00   ; 
- D 1 - I - 0x00A18F 02:A17F: 22        .byte $22   ; 
- D 1 - I - 0x00A190 02:A180: 00        .byte $00   ; 
- D 1 - I - 0x00A191 02:A181: 00        .byte $00   ; 
- D 1 - I - 0x00A192 02:A182: 00        .byte $00   ; 
off_A183_03:
- - - - - - 0x00A193 02:A183: 04        .byte $04   ; 
- - - - - - 0x00A194 02:A184: 04        .byte $04   ; 
- - - - - - 0x00A195 02:A185: 04        .byte $04   ; 
- - - - - - 0x00A196 02:A186: 04        .byte $04   ; 
- - - - - - 0x00A197 02:A187: 04        .byte $04   ; 
- - - - - - 0x00A198 02:A188: 04        .byte $04   ; 
- - - - - - 0x00A199 02:A189: 04        .byte $04   ; 
- - - - - - 0x00A19A 02:A18A: 04        .byte $04   ; 
- - - - - - 0x00A19B 02:A18B: 04        .byte $04   ; 
- D 1 - I - 0x00A19C 02:A18C: 04        .byte $04   ; 
- D 1 - I - 0x00A19D 02:A18D: 04        .byte $04   ; 
- D 1 - I - 0x00A19E 02:A18E: 04        .byte $04   ; 
- D 1 - I - 0x00A19F 02:A18F: 16        .byte $16   ; 
- D 1 - I - 0x00A1A0 02:A190: 04        .byte $04   ; 
- D 1 - I - 0x00A1A1 02:A191: 04        .byte $04   ; 
- D 1 - I - 0x00A1A2 02:A192: 04        .byte $04   ; 
- D 1 - I - 0x00A1A3 02:A193: 31        .byte $31   ; 
- D 1 - I - 0x00A1A4 02:A194: 04        .byte $04   ; 
- D 1 - I - 0x00A1A5 02:A195: 04        .byte $04   ; 
- D 1 - I - 0x00A1A6 02:A196: 04        .byte $04   ; 
- D 1 - I - 0x00A1A7 02:A197: 04        .byte $04   ; 
- D 1 - I - 0x00A1A8 02:A198: 04        .byte $04   ; 
- D 1 - I - 0x00A1A9 02:A199: 61        .byte $61   ; 
- D 1 - I - 0x00A1AA 02:A19A: 6D        .byte $6D   ; 
- D 1 - I - 0x00A1AB 02:A19B: 6D        .byte $6D   ; 
- D 1 - I - 0x00A1AC 02:A19C: 67        .byte $67   ; 
- D 1 - I - 0x00A1AD 02:A19D: 4B        .byte $4B   ; 
- D 1 - I - 0x00A1AE 02:A19E: 37        .byte $37   ; 
- D 1 - I - 0x00A1AF 02:A19F: 2C        .byte $2C   ; 
- D 1 - I - 0x00A1B0 02:A1A0: 49        .byte $49   ; 
- D 1 - I - 0x00A1B1 02:A1A1: 61        .byte $61   ; 
off_A1A2_10:
- D 1 - I - 0x00A1B2 02:A1A2: 6D        .byte $6D   ; 
- D 1 - I - 0x00A1B3 02:A1A3: F8        .byte $F8   ; 
- D 1 - I - 0x00A1B4 02:A1A4: 6D        .byte $6D   ; 
- D 1 - I - 0x00A1B5 02:A1A5: 6D        .byte $6D   ; 
- D 1 - I - 0x00A1B6 02:A1A6: 67        .byte $67   ; 
- D 1 - I - 0x00A1B7 02:A1A7: 4B        .byte $4B   ; 
- D 1 - I - 0x00A1B8 02:A1A8: 04        .byte $04   ; 
- D 1 - I - 0x00A1B9 02:A1A9: 04        .byte $04   ; 
- D 1 - I - 0x00A1BA 02:A1AA: 04        .byte $04   ; 
- D 1 - I - 0x00A1BB 02:A1AB: 04        .byte $04   ; 
- D 1 - I - 0x00A1BC 02:A1AC: 04        .byte $04   ; 
- D 1 - I - 0x00A1BD 02:A1AD: 16        .byte $16   ; 
- D 1 - I - 0x00A1BE 02:A1AE: 04        .byte $04   ; 
- D 1 - I - 0x00A1BF 02:A1AF: 35        .byte $35   ; 
- D 1 - I - 0x00A1C0 02:A1B0: D0        .byte $D0   ; 
- D 1 - I - 0x00A1C1 02:A1B1: D1        .byte $D1   ; 
- D 1 - I - 0x00A1C2 02:A1B2: D2        .byte $D2   ; 
- D 1 - I - 0x00A1C3 02:A1B3: D3        .byte $D3   ; 
- D 1 - I - 0x00A1C4 02:A1B4: D4        .byte $D4   ; 
- D 1 - I - 0x00A1C5 02:A1B5: 04        .byte $04   ; 
- D 1 - I - 0x00A1C6 02:A1B6: 04        .byte $04   ; 
- D 1 - I - 0x00A1C7 02:A1B7: 04        .byte $04   ; 
- D 1 - I - 0x00A1C8 02:A1B8: 04        .byte $04   ; 
- D 1 - I - 0x00A1C9 02:A1B9: 04        .byte $04   ; 
- - - - - - 0x00A1CA 02:A1BA: 16        .byte $16   ; 
- - - - - - 0x00A1CB 02:A1BB: 04        .byte $04   ; 
- - - - - - 0x00A1CC 02:A1BC: 04        .byte $04   ; 
- - - - - - 0x00A1CD 02:A1BD: 04        .byte $04   ; 
- - - - - - 0x00A1CE 02:A1BE: 04        .byte $04   ; 
- - - - - - 0x00A1CF 02:A1BF: 04        .byte $04   ; 
- - - - - - 0x00A1D0 02:A1C0: 04        .byte $04   ; 
- - - - - - 0x00A1D1 02:A1C1: 04        .byte $04   ; 
off_A1C2_05:
- - - - - - 0x00A1D2 02:A1C2: 04        .byte $04   ; 
- - - - - - 0x00A1D3 02:A1C3: 04        .byte $04   ; 
- - - - - - 0x00A1D4 02:A1C4: 04        .byte $04   ; 
- - - - - - 0x00A1D5 02:A1C5: 04        .byte $04   ; 
- - - - - - 0x00A1D6 02:A1C6: 04        .byte $04   ; 
- - - - - - 0x00A1D7 02:A1C7: 04        .byte $04   ; 
- - - - - - 0x00A1D8 02:A1C8: 04        .byte $04   ; 
- - - - - - 0x00A1D9 02:A1C9: 17        .byte $17   ; 
- - - - - - 0x00A1DA 02:A1CA: 04        .byte $04   ; 
- D 1 - I - 0x00A1DB 02:A1CB: 16        .byte $16   ; 
- D 1 - I - 0x00A1DC 02:A1CC: 16        .byte $16   ; 
- D 1 - I - 0x00A1DD 02:A1CD: 04        .byte $04   ; 
- D 1 - I - 0x00A1DE 02:A1CE: 04        .byte $04   ; 
- D 1 - I - 0x00A1DF 02:A1CF: 04        .byte $04   ; 
- D 1 - I - 0x00A1E0 02:A1D0: 04        .byte $04   ; 
- D 1 - I - 0x00A1E1 02:A1D1: 2B        .byte $2B   ; 
- D 1 - I - 0x00A1E2 02:A1D2: 30        .byte $30   ; 
- D 1 - I - 0x00A1E3 02:A1D3: 04        .byte $04   ; 
- D 1 - I - 0x00A1E4 02:A1D4: 41        .byte $41   ; 
- D 1 - I - 0x00A1E5 02:A1D5: 55        .byte $55   ; 
- D 1 - I - 0x00A1E6 02:A1D6: 55        .byte $55   ; 
- D 1 - I - 0x00A1E7 02:A1D7: 55        .byte $55   ; 
- D 1 - I - 0x00A1E8 02:A1D8: 7F        .byte $7F   ; 
- D 1 - I - 0x00A1E9 02:A1D9: 6D        .byte $6D   ; 
- D 1 - I - 0x00A1EA 02:A1DA: 70        .byte $70   ; 
- D 1 - I - 0x00A1EB 02:A1DB: 6D        .byte $6D   ; 
- D 1 - I - 0x00A1EC 02:A1DC: 6D        .byte $6D   ; 
- D 1 - I - 0x00A1ED 02:A1DD: F8        .byte $F8   ; 
- D 1 - I - 0x00A1EE 02:A1DE: 6D        .byte $6D   ; 
- D 1 - I - 0x00A1EF 02:A1DF: 71        .byte $71   ; 
- D 1 - I - 0x00A1F0 02:A1E0: 6D        .byte $6D   ; 
- D 1 - I - 0x00A1F1 02:A1E1: 6D        .byte $6D   ; 
off_A1E2_06:
- - - - - - 0x00A1F2 02:A1E2: 00        .byte $00   ; 
- - - - - - 0x00A1F3 02:A1E3: 00        .byte $00   ; 
- - - - - - 0x00A1F4 02:A1E4: 00        .byte $00   ; 
- - - - - - 0x00A1F5 02:A1E5: 00        .byte $00   ; 
- - - - - - 0x00A1F6 02:A1E6: 00        .byte $00   ; 
- - - - - - 0x00A1F7 02:A1E7: 00        .byte $00   ; 
- - - - - - 0x00A1F8 02:A1E8: 00        .byte $00   ; 
- - - - - - 0x00A1F9 02:A1E9: 00        .byte $00   ; 
- - - - - - 0x00A1FA 02:A1EA: 00        .byte $00   ; 
- D 1 - I - 0x00A1FB 02:A1EB: 00        .byte $00   ; 
- D 1 - I - 0x00A1FC 02:A1EC: 00        .byte $00   ; 
- D 1 - I - 0x00A1FD 02:A1ED: 00        .byte $00   ; 
- D 1 - I - 0x00A1FE 02:A1EE: 00        .byte $00   ; 
- D 1 - I - 0x00A1FF 02:A1EF: 00        .byte $00   ; 
- D 1 - I - 0x00A200 02:A1F0: 00        .byte $00   ; 
- D 1 - I - 0x00A201 02:A1F1: 26        .byte $26   ; 
- D 1 - I - 0x00A202 02:A1F2: 12        .byte $12   ; 
- D 1 - I - 0x00A203 02:A1F3: 12        .byte $12   ; 
- D 1 - I - 0x00A204 02:A1F4: 63        .byte $63   ; 
- D 1 - I - 0x00A205 02:A1F5: 77        .byte $77   ; 
- D 1 - I - 0x00A206 02:A1F6: 77        .byte $77   ; 
- D 1 - I - 0x00A207 02:A1F7: 77        .byte $77   ; 
- D 1 - I - 0x00A208 02:A1F8: 77        .byte $77   ; 
- D 1 - I - 0x00A209 02:A1F9: 77        .byte $77   ; 
- D 1 - I - 0x00A20A 02:A1FA: 77        .byte $77   ; 
- D 1 - I - 0x00A20B 02:A1FB: 77        .byte $77   ; 
- D 1 - I - 0x00A20C 02:A1FC: 77        .byte $77   ; 
- D 1 - I - 0x00A20D 02:A1FD: E7        .byte $E7   ; 
- D 1 - I - 0x00A20E 02:A1FE: 6C        .byte $6C   ; 
off_A1FF_06:
- D 1 - I - 0x00A20F 02:A1FF: 6C        .byte $6C   ; 
- D 1 - I - 0x00A210 02:A200: 6C        .byte $6C   ; 
- D 1 - I - 0x00A211 02:A201: 6C        .byte $6C   ; 
- D 1 - I - 0x00A212 02:A202: 7C        .byte $7C   ; 
- D 1 - I - 0x00A213 02:A203: 54        .byte $54   ; 
- D 1 - I - 0x00A214 02:A204: 54        .byte $54   ; 
- D 1 - I - 0x00A215 02:A205: 54        .byte $54   ; 
- D 1 - I - 0x00A216 02:A206: 42        .byte $42   ; 
- D 1 - I - 0x00A217 02:A207: 00        .byte $00   ; 
- D 1 - I - 0x00A218 02:A208: 00        .byte $00   ; 
- D 1 - I - 0x00A219 02:A209: 00        .byte $00   ; 
- D 1 - I - 0x00A21A 02:A20A: 00        .byte $00   ; 
- D 1 - I - 0x00A21B 02:A20B: 60        .byte $60   ; 
- D 1 - I - 0x00A21C 02:A20C: 6C        .byte $6C   ; 
- D 1 - I - 0x00A21D 02:A20D: 6E        .byte $6E   ; 
- D 1 - I - 0x00A21E 02:A20E: 68        .byte $68   ; 
- D 1 - I - 0x00A21F 02:A20F: 4E        .byte $4E   ; 
- D 1 - I - 0x00A220 02:A210: 00        .byte $00   ; 
- D 1 - I - 0x00A221 02:A211: 00        .byte $00   ; 
- D 1 - I - 0x00A222 02:A212: 00        .byte $00   ; 
- D 1 - I - 0x00A223 02:A213: 00        .byte $00   ; 
- D 1 - I - 0x00A224 02:A214: 00        .byte $00   ; 
- D 1 - I - 0x00A225 02:A215: 40        .byte $40   ; 
- D 1 - I - 0x00A226 02:A216: 54        .byte $54   ; 
- D 1 - I - 0x00A227 02:A217: 7E        .byte $7E   ; 
- D 1 - I - 0x00A228 02:A218: 6C        .byte $6C   ; 
- D 1 - I - 0x00A229 02:A219: 6C        .byte $6C   ; 
- D 1 - I - 0x00A22A 02:A21A: 6C        .byte $6C   ; 
- D 1 - I - 0x00A22B 02:A21B: 6C        .byte $6C   ; 
- D 1 - I - 0x00A22C 02:A21C: 6C        .byte $6C   ; 
- D 1 - I - 0x00A22D 02:A21D: 6C        .byte $6C   ; 
- D 1 - I - 0x00A22E 02:A21E: 72        .byte $72   ; 
off_A21F_07:
- - - - - - 0x00A22F 02:A21F: 00        .byte $00   ; 
- - - - - - 0x00A230 02:A220: 14        .byte $14   ; 
- - - - - - 0x00A231 02:A221: 00        .byte $00   ; 
- - - - - - 0x00A232 02:A222: 00        .byte $00   ; 
- - - - - - 0x00A233 02:A223: 00        .byte $00   ; 
- - - - - - 0x00A234 02:A224: 00        .byte $00   ; 
- - - - - - 0x00A235 02:A225: 00        .byte $00   ; 
- - - - - - 0x00A236 02:A226: 00        .byte $00   ; 
- - - - - - 0x00A237 02:A227: 00        .byte $00   ; 
- D 1 - I - 0x00A238 02:A228: 00        .byte $00   ; 
- D 1 - I - 0x00A239 02:A229: 00        .byte $00   ; 
- D 1 - I - 0x00A23A 02:A22A: 00        .byte $00   ; 
- D 1 - I - 0x00A23B 02:A22B: 00        .byte $00   ; 
- D 1 - I - 0x00A23C 02:A22C: 00        .byte $00   ; 
- D 1 - I - 0x00A23D 02:A22D: 00        .byte $00   ; 
- D 1 - I - 0x00A23E 02:A22E: 25        .byte $25   ; 
- D 1 - I - 0x00A23F 02:A22F: 00        .byte $00   ; 
- D 1 - I - 0x00A240 02:A230: 00        .byte $00   ; 
- D 1 - I - 0x00A241 02:A231: 60        .byte $60   ; 
- D 1 - I - 0x00A242 02:A232: 6C        .byte $6C   ; 
- D 1 - I - 0x00A243 02:A233: 6E        .byte $6E   ; 
- D 1 - I - 0x00A244 02:A234: 6C        .byte $6C   ; 
- D 1 - I - 0x00A245 02:A235: 6C        .byte $6C   ; 
- D 1 - I - 0x00A246 02:A236: 78        .byte $78   ; 
- D 1 - I - 0x00A247 02:A237: 5A        .byte $5A   ; 
- D 1 - I - 0x00A248 02:A238: 5A        .byte $5A   ; 
- D 1 - I - 0x00A249 02:A239: 5A        .byte $5A   ; 
- D 1 - I - 0x00A24A 02:A23A: 5A        .byte $5A   ; 
- D 1 - I - 0x00A24B 02:A23B: 7A        .byte $7A   ; 
- D 1 - I - 0x00A24C 02:A23C: 6C        .byte $6C   ; 
off_A23D_08:
- D 1 - I - 0x00A24D 02:A23D: 6C        .byte $6C   ; 
- D 1 - I - 0x00A24E 02:A23E: 6E        .byte $6E   ; 
- D 1 - I - 0x00A24F 02:A23F: 6C        .byte $6C   ; 
- D 1 - I - 0x00A250 02:A240: 69        .byte $69   ; 
- D 1 - I - 0x00A251 02:A241: 00        .byte $00   ; 
- D 1 - I - 0x00A252 02:A242: 14        .byte $14   ; 
- D 1 - I - 0x00A253 02:A243: 00        .byte $00   ; 
- D 1 - I - 0x00A254 02:A244: 00        .byte $00   ; 
- D 1 - I - 0x00A255 02:A245: 00        .byte $00   ; 
- D 1 - I - 0x00A256 02:A246: 00        .byte $00   ; 
- D 1 - I - 0x00A257 02:A247: 00        .byte $00   ; 
- D 1 - I - 0x00A258 02:A248: 15        .byte $15   ; 
- D 1 - I - 0x00A259 02:A249: 00        .byte $00   ; 
- D 1 - I - 0x00A25A 02:A24A: 00        .byte $00   ; 
- D 1 - I - 0x00A25B 02:A24B: 00        .byte $00   ; 
- D 1 - I - 0x00A25C 02:A24C: 00        .byte $00   ; 
- D 1 - I - 0x00A25D 02:A24D: 00        .byte $00   ; 
- D 1 - I - 0x00A25E 02:A24E: 00        .byte $00   ; 
- D 1 - I - 0x00A25F 02:A24F: 00        .byte $00   ; 
- D 1 - I - 0x00A260 02:A250: 00        .byte $00   ; 
- D 1 - I - 0x00A261 02:A251: 00        .byte $00   ; 
- D 1 - I - 0x00A262 02:A252: 00        .byte $00   ; 
- D 1 - I - 0x00A263 02:A253: 40        .byte $40   ; 
- D 1 - I - 0x00A264 02:A254: 54        .byte $54   ; 
- D 1 - I - 0x00A265 02:A255: 7E        .byte $7E   ; 
- D 1 - I - 0x00A266 02:A256: 6C        .byte $6C   ; 
- D 1 - I - 0x00A267 02:A257: 6C        .byte $6C   ; 
- D 1 - I - 0x00A268 02:A258: 6C        .byte $6C   ; 
- D 1 - I - 0x00A269 02:A259: 6C        .byte $6C   ; 
- D 1 - I - 0x00A26A 02:A25A: 6F        .byte $6F   ; 
- D 1 - I - 0x00A26B 02:A25B: 6C        .byte $6C   ; 
- D 1 - I - 0x00A26C 02:A25C: 72        .byte $72   ; 
off_A25D_08:
- - - - - - 0x00A26D 02:A25D: 00        .byte $00   ; 
- - - - - - 0x00A26E 02:A25E: 00        .byte $00   ; 
- - - - - - 0x00A26F 02:A25F: 00        .byte $00   ; 
- - - - - - 0x00A270 02:A260: 00        .byte $00   ; 
- - - - - - 0x00A271 02:A261: 00        .byte $00   ; 
- - - - - - 0x00A272 02:A262: 00        .byte $00   ; 
- - - - - - 0x00A273 02:A263: 00        .byte $00   ; 
- - - - - - 0x00A274 02:A264: 00        .byte $00   ; 
- - - - - - 0x00A275 02:A265: 00        .byte $00   ; 
- D 1 - I - 0x00A276 02:A266: 00        .byte $00   ; 
- D 1 - I - 0x00A277 02:A267: 00        .byte $00   ; 
- D 1 - I - 0x00A278 02:A268: 00        .byte $00   ; 
- D 1 - I - 0x00A279 02:A269: 00        .byte $00   ; 
- D 1 - I - 0x00A27A 02:A26A: 00        .byte $00   ; 
- D 1 - I - 0x00A27B 02:A26B: 00        .byte $00   ; 
- D 1 - I - 0x00A27C 02:A26C: 24        .byte $24   ; 
- D 1 - I - 0x00A27D 02:A26D: 00        .byte $00   ; 
- D 1 - I - 0x00A27E 02:A26E: 00        .byte $00   ; 
- D 1 - I - 0x00A27F 02:A26F: 60        .byte $60   ; 
- D 1 - I - 0x00A280 02:A270: 6C        .byte $6C   ; 
- D 1 - I - 0x00A281 02:A271: 6C        .byte $6C   ; 
- D 1 - I - 0x00A282 02:A272: 6C        .byte $6C   ; 
- D 1 - I - 0x00A283 02:A273: 6C        .byte $6C   ; 
- D 1 - I - 0x00A284 02:A274: 66        .byte $66   ; 
- D 1 - I - 0x00A285 02:A275: 4E        .byte $4E   ; 
- D 1 - I - 0x00A286 02:A276: 00        .byte $00   ; 
- D 1 - I - 0x00A287 02:A277: 00        .byte $00   ; 
- D 1 - I - 0x00A288 02:A278: 4C        .byte $4C   ; 
- D 1 - I - 0x00A289 02:A279: 60        .byte $60   ; 
- D 1 - I - 0x00A28A 02:A27A: 6E        .byte $6E   ; 
off_A27B_07:
- D 1 - I - 0x00A28B 02:A27B: 6C        .byte $6C   ; 
- D 1 - I - 0x00A28C 02:A27C: 6C        .byte $6C   ; 
- D 1 - I - 0x00A28D 02:A27D: 68        .byte $68   ; 
- D 1 - I - 0x00A28E 02:A27E: 00        .byte $00   ; 
- D 1 - I - 0x00A28F 02:A27F: 00        .byte $00   ; 
- D 1 - I - 0x00A290 02:A280: 14        .byte $14   ; 
- D 1 - I - 0x00A291 02:A281: 60        .byte $60   ; 
- D 1 - I - 0x00A292 02:A282: 6C        .byte $6C   ; 
- D 1 - I - 0x00A293 02:A283: 6E        .byte $6E   ; 
- D 1 - I - 0x00A294 02:A284: 6C        .byte $6C   ; 
- D 1 - I - 0x00A295 02:A285: 6C        .byte $6C   ; 
- D 1 - I - 0x00A296 02:A286: 6C        .byte $6C   ; 
- D 1 - I - 0x00A297 02:A287: 6C        .byte $6C   ; 
- D 1 - I - 0x00A298 02:A288: 6C        .byte $6C   ; 
- D 1 - I - 0x00A299 02:A289: 68        .byte $68   ; 
- D 1 - I - 0x00A29A 02:A28A: 00        .byte $00   ; 
- D 1 - I - 0x00A29B 02:A28B: 22        .byte $22   ; 
- D 1 - I - 0x00A29C 02:A28C: 00        .byte $00   ; 
- D 1 - I - 0x00A29D 02:A28D: 00        .byte $00   ; 
- D 1 - I - 0x00A29E 02:A28E: 00        .byte $00   ; 
- D 1 - I - 0x00A29F 02:A28F: 00        .byte $00   ; 
- D 1 - I - 0x00A2A0 02:A290: 00        .byte $00   ; 
- D 1 - I - 0x00A2A1 02:A291: 00        .byte $00   ; 
- D 1 - I - 0x00A2A2 02:A292: 00        .byte $00   ; 
- - - - - - 0x00A2A3 02:A293: 00        .byte $00   ; 
- - - - - - 0x00A2A4 02:A294: 00        .byte $00   ; 
- - - - - - 0x00A2A5 02:A295: 00        .byte $00   ; 
- - - - - - 0x00A2A6 02:A296: 00        .byte $00   ; 
- - - - - - 0x00A2A7 02:A297: 00        .byte $00   ; 
- - - - - - 0x00A2A8 02:A298: 00        .byte $00   ; 
- - - - - - 0x00A2A9 02:A299: 00        .byte $00   ; 
- - - - - - 0x00A2AA 02:A29A: 00        .byte $00   ; 
off_A29B_0B:
- - - - - - 0x00A2AB 02:A29B: 04        .byte $04   ; 
- - - - - - 0x00A2AC 02:A29C: 04        .byte $04   ; 
- - - - - - 0x00A2AD 02:A29D: 04        .byte $04   ; 
- - - - - - 0x00A2AE 02:A29E: 04        .byte $04   ; 
- - - - - - 0x00A2AF 02:A29F: 04        .byte $04   ; 
- - - - - - 0x00A2B0 02:A2A0: 04        .byte $04   ; 
- - - - - - 0x00A2B1 02:A2A1: 04        .byte $04   ; 
- - - - - - 0x00A2B2 02:A2A2: 04        .byte $04   ; 
- - - - - - 0x00A2B3 02:A2A3: 04        .byte $04   ; 
- D 1 - I - 0x00A2B4 02:A2A4: 04        .byte $04   ; 
- D 1 - I - 0x00A2B5 02:A2A5: 04        .byte $04   ; 
- D 1 - I - 0x00A2B6 02:A2A6: 04        .byte $04   ; 
- D 1 - I - 0x00A2B7 02:A2A7: 04        .byte $04   ; 
- D 1 - I - 0x00A2B8 02:A2A8: 04        .byte $04   ; 
- D 1 - I - 0x00A2B9 02:A2A9: 04        .byte $04   ; 
- D 1 - I - 0x00A2BA 02:A2AA: 31        .byte $31   ; 
- D 1 - I - 0x00A2BB 02:A2AB: 04        .byte $04   ; 
- D 1 - I - 0x00A2BC 02:A2AC: 92        .byte $92   ; 
- D 1 - I - 0x00A2BD 02:A2AD: 04        .byte $04   ; 
- D 1 - I - 0x00A2BE 02:A2AE: 04        .byte $04   ; 
- D 1 - I - 0x00A2BF 02:A2AF: 45        .byte $45   ; 
- D 1 - I - 0x00A2C0 02:A2B0: 5E        .byte $5E   ; 
- D 1 - I - 0x00A2C1 02:A2B1: 5F        .byte $5F   ; 
- D 1 - I - 0x00A2C2 02:A2B2: 47        .byte $47   ; 
off_A2B3_13:
- D 1 - I - 0x00A2C3 02:A2B3: 04        .byte $04   ; 
- D 1 - I - 0x00A2C4 02:A2B4: 04        .byte $04   ; 
- D 1 - I - 0x00A2C5 02:A2B5: 04        .byte $04   ; 
- D 1 - I - 0x00A2C6 02:A2B6: 04        .byte $04   ; 
- D 1 - I - 0x00A2C7 02:A2B7: 04        .byte $04   ; 
- D 1 - I - 0x00A2C8 02:A2B8: 04        .byte $04   ; 
- D 1 - I - 0x00A2C9 02:A2B9: 04        .byte $04   ; 
- D 1 - I - 0x00A2CA 02:A2BA: 04        .byte $04   ; 
- - - - - - 0x00A2CB 02:A2BB: 04        .byte $04   ; 
- D 1 - I - 0x00A2CC 02:A2BC: 04        .byte $04   ; 
- D 1 - I - 0x00A2CD 02:A2BD: 16        .byte $16   ; 
- D 1 - I - 0x00A2CE 02:A2BE: 04        .byte $04   ; 
- D 1 - I - 0x00A2CF 02:A2BF: 04        .byte $04   ; 
- D 1 - I - 0x00A2D0 02:A2C0: B5        .byte $B5   ; 
- D 1 - I - 0x00A2D1 02:A2C1: B6        .byte $B6   ; 
- D 1 - I - 0x00A2D2 02:A2C2: B6        .byte $B6   ; 
- D 1 - I - 0x00A2D3 02:A2C3: B7        .byte $B7   ; 
- D 1 - I - 0x00A2D4 02:A2C4: B8        .byte $B8   ; 
- D 1 - I - 0x00A2D5 02:A2C5: 30        .byte $30   ; 
- D 1 - I - 0x00A2D6 02:A2C6: 04        .byte $04   ; 
- D 1 - I - 0x00A2D7 02:A2C7: 45        .byte $45   ; 
- D 1 - I - 0x00A2D8 02:A2C8: 5B        .byte $5B   ; 
- D 1 - I - 0x00A2D9 02:A2C9: 5B        .byte $5B   ; 
- D 1 - I - 0x00A2DA 02:A2CA: E4        .byte $E4   ; 
- D 1 - I - 0x00A2DB 02:A2CB: 5F        .byte $5F   ; 
- D 1 - I - 0x00A2DC 02:A2CC: 47        .byte $47   ; 
- D 1 - I - 0x00A2DD 02:A2CD: 04        .byte $04   ; 
- D 1 - I - 0x00A2DE 02:A2CE: 04        .byte $04   ; 
- D 1 - I - 0x00A2DF 02:A2CF: 04        .byte $04   ; 
- D 1 - I - 0x00A2E0 02:A2D0: 36        .byte $36   ; 
- D 1 - I - 0x00A2E1 02:A2D1: 04        .byte $04   ; 
- D 1 - I - 0x00A2E2 02:A2D2: 04        .byte $04   ; 
off_A2D3_0C:
- - - - - - 0x00A2E3 02:A2D3: 00        .byte $00   ; 
- - - - - - 0x00A2E4 02:A2D4: 00        .byte $00   ; 
- - - - - - 0x00A2E5 02:A2D5: 00        .byte $00   ; 
- - - - - - 0x00A2E6 02:A2D6: 00        .byte $00   ; 
- - - - - - 0x00A2E7 02:A2D7: 00        .byte $00   ; 
- - - - - - 0x00A2E8 02:A2D8: 00        .byte $00   ; 
- - - - - - 0x00A2E9 02:A2D9: 00        .byte $00   ; 
- - - - - - 0x00A2EA 02:A2DA: 00        .byte $00   ; 
- - - - - - 0x00A2EB 02:A2DB: 00        .byte $00   ; 
- D 1 - I - 0x00A2EC 02:A2DC: 00        .byte $00   ; 
- D 1 - I - 0x00A2ED 02:A2DD: 00        .byte $00   ; 
- D 1 - I - 0x00A2EE 02:A2DE: 00        .byte $00   ; 
- D 1 - I - 0x00A2EF 02:A2DF: 00        .byte $00   ; 
- D 1 - I - 0x00A2F0 02:A2E0: 00        .byte $00   ; 
- D 1 - I - 0x00A2F1 02:A2E1: 27        .byte $27   ; 
- D 1 - I - 0x00A2F2 02:A2E2: 1C        .byte $1C   ; 
- D 1 - I - 0x00A2F3 02:A2E3: 00        .byte $00   ; 
- D 1 - I - 0x00A2F4 02:A2E4: 93        .byte $93   ; 
- D 1 - I - 0x00A2F5 02:A2E5: 94        .byte $94   ; 
- D 1 - I - 0x00A2F6 02:A2E6: 00        .byte $00   ; 
- D 1 - I - 0x00A2F7 02:A2E7: 00        .byte $00   ; 
- D 1 - I - 0x00A2F8 02:A2E8: 00        .byte $00   ; 
- D 1 - I - 0x00A2F9 02:A2E9: 00        .byte $00   ; 
- D 1 - I - 0x00A2FA 02:A2EA: 00        .byte $00   ; 
- D 1 - I - 0x00A2FB 02:A2EB: 00        .byte $00   ; 
- D 1 - I - 0x00A2FC 02:A2EC: 00        .byte $00   ; 
- D 1 - I - 0x00A2FD 02:A2ED: 00        .byte $00   ; 
- D 1 - I - 0x00A2FE 02:A2EE: 00        .byte $00   ; 
- D 1 - I - 0x00A2FF 02:A2EF: 00        .byte $00   ; 
- D 1 - I - 0x00A300 02:A2F0: 00        .byte $00   ; 
- D 1 - I - 0x00A301 02:A2F1: 00        .byte $00   ; 
- D 1 - I - 0x00A302 02:A2F2: 00        .byte $00   ; 
off_A2F3_0D:
- - - - - - 0x00A303 02:A2F3: 00        .byte $00   ; 
- - - - - - 0x00A304 02:A2F4: 00        .byte $00   ; 
- - - - - - 0x00A305 02:A2F5: 00        .byte $00   ; 
- - - - - - 0x00A306 02:A2F6: 00        .byte $00   ; 
- - - - - - 0x00A307 02:A2F7: 00        .byte $00   ; 
- - - - - - 0x00A308 02:A2F8: 00        .byte $00   ; 
- - - - - - 0x00A309 02:A2F9: 00        .byte $00   ; 
- - - - - - 0x00A30A 02:A2FA: 00        .byte $00   ; 
- - - - - - 0x00A30B 02:A2FB: 00        .byte $00   ; 
- D 1 - I - 0x00A30C 02:A2FC: 14        .byte $14   ; 
- D 1 - I - 0x00A30D 02:A2FD: 00        .byte $00   ; 
- D 1 - I - 0x00A30E 02:A2FE: 00        .byte $00   ; 
- D 1 - I - 0x00A30F 02:A2FF: 14        .byte $14   ; 
- D 1 - I - 0x00A310 02:A300: 00        .byte $00   ; 
- D 1 - I - 0x00A311 02:A301: 8D        .byte $8D   ; 
off_A302_0D:
- D 1 - I - 0x00A312 02:A302: 12        .byte $12   ; 
- D 1 - I - 0x00A313 02:A303: 12        .byte $12   ; 
- D 1 - I - 0x00A314 02:A304: 12        .byte $12   ; 
- D 1 - I - 0x00A315 02:A305: 12        .byte $12   ; 
- D 1 - I - 0x00A316 02:A306: 12        .byte $12   ; 
- D 1 - I - 0x00A317 02:A307: 12        .byte $12   ; 
- D 1 - I - 0x00A318 02:A308: 12        .byte $12   ; 
- D 1 - I - 0x00A319 02:A309: 12        .byte $12   ; 
- D 1 - I - 0x00A31A 02:A30A: 12        .byte $12   ; 
- D 1 - I - 0x00A31B 02:A30B: 12        .byte $12   ; 
- D 1 - I - 0x00A31C 02:A30C: 12        .byte $12   ; 
- D 1 - I - 0x00A31D 02:A30D: 12        .byte $12   ; 
- D 1 - I - 0x00A31E 02:A30E: 12        .byte $12   ; 
- D 1 - I - 0x00A31F 02:A30F: 12        .byte $12   ; 
- D 1 - I - 0x00A320 02:A310: 12        .byte $12   ; 
- D 1 - I - 0x00A321 02:A311: 12        .byte $12   ; 
- D 1 - I - 0x00A322 02:A312: 12        .byte $12   ; 
- D 1 - I - 0x00A323 02:A313: 8B        .byte $8B   ; 
- D 1 - I - 0x00A324 02:A314: 00        .byte $00   ; 
- D 1 - I - 0x00A325 02:A315: 00        .byte $00   ; 
- D 1 - I - 0x00A326 02:A316: 00        .byte $00   ; 
- D 1 - I - 0x00A327 02:A317: 00        .byte $00   ; 
- D 1 - I - 0x00A328 02:A318: 00        .byte $00   ; 
- D 1 - I - 0x00A329 02:A319: 00        .byte $00   ; 
- - - - - - 0x00A32A 02:A31A: 00        .byte $00   ; 
- - - - - - 0x00A32B 02:A31B: 00        .byte $00   ; 
- - - - - - 0x00A32C 02:A31C: 00        .byte $00   ; 
- - - - - - 0x00A32D 02:A31D: 00        .byte $00   ; 
- - - - - - 0x00A32E 02:A31E: 00        .byte $00   ; 
- - - - - - 0x00A32F 02:A31F: 00        .byte $00   ; 
- - - - - - 0x00A330 02:A320: 00        .byte $00   ; 
- - - - - - 0x00A331 02:A321: 00        .byte $00   ; 
off_A322_0E:
- - - - - - 0x00A332 02:A322: 00        .byte $00   ; 
- - - - - - 0x00A333 02:A323: 00        .byte $00   ; 
- - - - - - 0x00A334 02:A324: 00        .byte $00   ; 
- - - - - - 0x00A335 02:A325: 00        .byte $00   ; 
- - - - - - 0x00A336 02:A326: 00        .byte $00   ; 
- - - - - - 0x00A337 02:A327: 00        .byte $00   ; 
- - - - - - 0x00A338 02:A328: 00        .byte $00   ; 
- - - - - - 0x00A339 02:A329: 00        .byte $00   ; 
- - - - - - 0x00A33A 02:A32A: 00        .byte $00   ; 
- D 1 - I - 0x00A33B 02:A32B: 00        .byte $00   ; 
- D 1 - I - 0x00A33C 02:A32C: 00        .byte $00   ; 
- D 1 - I - 0x00A33D 02:A32D: 00        .byte $00   ; 
- D 1 - I - 0x00A33E 02:A32E: 00        .byte $00   ; 
- D 1 - I - 0x00A33F 02:A32F: 00        .byte $00   ; 
- D 1 - I - 0x00A340 02:A330: 00        .byte $00   ; 
- D 1 - I - 0x00A341 02:A331: 00        .byte $00   ; 
- D 1 - I - 0x00A342 02:A332: 00        .byte $00   ; 
- D 1 - I - 0x00A343 02:A333: 14        .byte $14   ; 
- D 1 - I - 0x00A344 02:A334: 00        .byte $00   ; 
- D 1 - I - 0x00A345 02:A335: 00        .byte $00   ; 
- D 1 - I - 0x00A346 02:A336: 00        .byte $00   ; 
- D 1 - I - 0x00A347 02:A337: 00        .byte $00   ; 
- D 1 - I - 0x00A348 02:A338: 00        .byte $00   ; 
- D 1 - I - 0x00A349 02:A339: 00        .byte $00   ; 
- D 1 - I - 0x00A34A 02:A33A: 14        .byte $14   ; 
- D 1 - I - 0x00A34B 02:A33B: 00        .byte $00   ; 
- D 1 - I - 0x00A34C 02:A33C: 00        .byte $00   ; 
- D 1 - I - 0x00A34D 02:A33D: 00        .byte $00   ; 
- D 1 - I - 0x00A34E 02:A33E: 00        .byte $00   ; 
- D 1 - I - 0x00A34F 02:A33F: 15        .byte $15   ; 
- D 1 - I - 0x00A350 02:A340: 00        .byte $00   ; 
- D 1 - I - 0x00A351 02:A341: 00        .byte $00   ; 
off_A342_04:
- - - - - - 0x00A352 02:A342: 00        .byte $00   ; 
- - - - - - 0x00A353 02:A343: 00        .byte $00   ; 
- D 1 - I - 0x00A354 02:A344: 00        .byte $00   ; 
- D 1 - I - 0x00A355 02:A345: 00        .byte $00   ; 
- D 1 - I - 0x00A356 02:A346: 00        .byte $00   ; 
- D 1 - I - 0x00A357 02:A347: 44        .byte $44   ; 
- D 1 - I - 0x00A358 02:A348: 51        .byte $51   ; 
- D 1 - I - 0x00A359 02:A349: 50        .byte $50   ; 
- - - - - - 0x00A35A 02:A34A: 00        .byte $00   ; 
- - - - - - 0x00A35B 02:A34B: 00        .byte $00   ; 
- D 1 - I - 0x00A35C 02:A34C: 00        .byte $00   ; 
- D 1 - I - 0x00A35D 02:A34D: 00        .byte $00   ; 
- D 1 - I - 0x00A35E 02:A34E: 44        .byte $44   ; 
- D 1 - I - 0x00A35F 02:A34F: 55        .byte $55   ; 
- D 1 - I - 0x00A360 02:A350: 55        .byte $55   ; 
- D 1 - I - 0x00A361 02:A351: 55        .byte $55   ; 
- - - - - - 0x00A362 02:A352: 00        .byte $00   ; 
- - - - - - 0x00A363 02:A353: 00        .byte $00   ; 
- D 1 - I - 0x00A364 02:A354: 00        .byte $00   ; 
- D 1 - I - 0x00A365 02:A355: 00        .byte $00   ; 
- D 1 - I - 0x00A366 02:A356: 44        .byte $44   ; 
- D 1 - I - 0x00A367 02:A357: 55        .byte $55   ; 
- D 1 - I - 0x00A368 02:A358: 05        .byte $05   ; 
- D 1 - I - 0x00A369 02:A359: 05        .byte $05   ; 
- - - - - - 0x00A36A 02:A35A: 00        .byte $00   ; 
- - - - - - 0x00A36B 02:A35B: 00        .byte $00   ; 
- D 1 - I - 0x00A36C 02:A35C: 00        .byte $00   ; 
- D 1 - I - 0x00A36D 02:A35D: 00        .byte $00   ; 
- D 1 - I - 0x00A36E 02:A35E: 00        .byte $00   ; 
- D 1 - I - 0x00A36F 02:A35F: 00        .byte $00   ; 
- D 1 - I - 0x00A370 02:A360: 00        .byte $00   ; 
- D 1 - I - 0x00A371 02:A361: 00        .byte $00   ; 
- - - - - - 0x00A372 02:A362: 00        .byte $00   ; 
- - - - - - 0x00A373 02:A363: 00        .byte $00   ; 
- - - - - - 0x00A374 02:A364: 00        .byte $00   ; 
- - - - - - 0x00A375 02:A365: 00        .byte $00   ; 
- - - - - - 0x00A376 02:A366: 00        .byte $00   ; 
- - - - - - 0x00A377 02:A367: 00        .byte $00   ; 
- - - - - - 0x00A378 02:A368: 00        .byte $00   ; 
- - - - - - 0x00A379 02:A369: 00        .byte $00   ; 
- - - - - - 0x00A37A 02:A36A: 00        .byte $00   ; 
- - - - - - 0x00A37B 02:A36B: 00        .byte $00   ; 
- - - - - - 0x00A37C 02:A36C: 00        .byte $00   ; 
- - - - - - 0x00A37D 02:A36D: 00        .byte $00   ; 
- - - - - - 0x00A37E 02:A36E: 00        .byte $00   ; 
- - - - - - 0x00A37F 02:A36F: 00        .byte $00   ; 
- - - - - - 0x00A380 02:A370: 00        .byte $00   ; 
- - - - - - 0x00A381 02:A371: 00        .byte $00   ; 
- - - - - - 0x00A382 02:A372: 00        .byte $00   ; 
- - - - - - 0x00A383 02:A373: 00        .byte $00   ; 
- - - - - - 0x00A384 02:A374: 00        .byte $00   ; 
- - - - - - 0x00A385 02:A375: 00        .byte $00   ; 
- - - - - - 0x00A386 02:A376: 00        .byte $00   ; 
- - - - - - 0x00A387 02:A377: 00        .byte $00   ; 
- - - - - - 0x00A388 02:A378: 00        .byte $00   ; 
- - - - - - 0x00A389 02:A379: 00        .byte $00   ; 
- - - - - - 0x00A38A 02:A37A: 00        .byte $00   ; 
- - - - - - 0x00A38B 02:A37B: 00        .byte $00   ; 
- - - - - - 0x00A38C 02:A37C: 00        .byte $00   ; 
- - - - - - 0x00A38D 02:A37D: 00        .byte $00   ; 
- - - - - - 0x00A38E 02:A37E: 00        .byte $00   ; 
- - - - - - 0x00A38F 02:A37F: 00        .byte $00   ; 
- - - - - - 0x00A390 02:A380: 00        .byte $00   ; 
- - - - - - 0x00A391 02:A381: 00        .byte $00   ; 
off_A382_00:
- D 1 - I - 0x00A392 02:A382: 00        .byte $00   ; 
- D 1 - I - 0x00A393 02:A383: 00        .byte $00   ; 
- D 1 - I - 0x00A394 02:A384: 40        .byte $40   ; 
- D 1 - I - 0x00A395 02:A385: 54        .byte $54   ; 
- D 1 - I - 0x00A396 02:A386: 54        .byte $54   ; 
- D 1 - I - 0x00A397 02:A387: 42        .byte $42   ; 
- D 1 - I - 0x00A398 02:A388: 00        .byte $00   ; 
- D 1 - I - 0x00A399 02:A389: 00        .byte $00   ; 
- D 1 - I - 0x00A39A 02:A38A: 00        .byte $00   ; 
- D 1 - I - 0x00A39B 02:A38B: 00        .byte $00   ; 
- D 1 - I - 0x00A39C 02:A38C: 00        .byte $00   ; 
- D 1 - I - 0x00A39D 02:A38D: 00        .byte $00   ; 
- D 1 - I - 0x00A39E 02:A38E: 60        .byte $60   ; 
- D 1 - I - 0x00A39F 02:A38F: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3A0 02:A390: 6E        .byte $6E   ; 
- D 1 - I - 0x00A3A1 02:A391: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3A2 02:A392: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3A3 02:A393: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3A4 02:A394: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3A5 02:A395: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3A6 02:A396: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3A7 02:A397: 66        .byte $66   ; 
- D 1 - I - 0x00A3A8 02:A398: 00        .byte $00   ; 
- D 1 - I - 0x00A3A9 02:A399: 00        .byte $00   ; 
- D 1 - I - 0x00A3AA 02:A39A: 00        .byte $00   ; 
- D 1 - I - 0x00A3AB 02:A39B: 00        .byte $00   ; 
- D 1 - I - 0x00A3AC 02:A39C: 00        .byte $00   ; 
- D 1 - I - 0x00A3AD 02:A39D: 00        .byte $00   ; 
- D 1 - I - 0x00A3AE 02:A39E: 14        .byte $14   ; 
- D 1 - I - 0x00A3AF 02:A39F: 00        .byte $00   ; 
- D 1 - I - 0x00A3B0 02:A3A0: 00        .byte $00   ; 
- D 1 - I - 0x00A3B1 02:A3A1: 1B        .byte $1B   ; 
off_A3A2_01:
- D 1 - I - 0x00A3B2 02:A3A2: 00        .byte $00   ; 
- D 1 - I - 0x00A3B3 02:A3A3: 48        .byte $48   ; 
- D 1 - I - 0x00A3B4 02:A3A4: 60        .byte $60   ; 
- D 1 - I - 0x00A3B5 02:A3A5: 6F        .byte $6F   ; 
- D 1 - I - 0x00A3B6 02:A3A6: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3B7 02:A3A7: 68        .byte $68   ; 
- D 1 - I - 0x00A3B8 02:A3A8: 00        .byte $00   ; 
- D 1 - I - 0x00A3B9 02:A3A9: 00        .byte $00   ; 
- D 1 - I - 0x00A3BA 02:A3AA: 00        .byte $00   ; 
- D 1 - I - 0x00A3BB 02:A3AB: 00        .byte $00   ; 
- D 1 - I - 0x00A3BC 02:A3AC: 00        .byte $00   ; 
- D 1 - I - 0x00A3BD 02:A3AD: 00        .byte $00   ; 
- D 1 - I - 0x00A3BE 02:A3AE: 44        .byte $44   ; 
- D 1 - I - 0x00A3BF 02:A3AF: 5A        .byte $5A   ; 
- D 1 - I - 0x00A3C0 02:A3B0: 7A        .byte $7A   ; 
- D 1 - I - 0x00A3C1 02:A3B1: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3C2 02:A3B2: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3C3 02:A3B3: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3C4 02:A3B4: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3C5 02:A3B5: 6E        .byte $6E   ; 
- D 1 - I - 0x00A3C6 02:A3B6: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3C7 02:A3B7: 68        .byte $68   ; 
- D 1 - I - 0x00A3C8 02:A3B8: 00        .byte $00   ; 
- D 1 - I - 0x00A3C9 02:A3B9: 00        .byte $00   ; 
- D 1 - I - 0x00A3CA 02:A3BA: 00        .byte $00   ; 
- D 1 - I - 0x00A3CB 02:A3BB: 00        .byte $00   ; 
- D 1 - I - 0x00A3CC 02:A3BC: 00        .byte $00   ; 
- D 1 - I - 0x00A3CD 02:A3BD: 00        .byte $00   ; 
- D 1 - I - 0x00A3CE 02:A3BE: 00        .byte $00   ; 
- D 1 - I - 0x00A3CF 02:A3BF: 00        .byte $00   ; 
- D 1 - I - 0x00A3D0 02:A3C0: 00        .byte $00   ; 
- D 1 - I - 0x00A3D1 02:A3C1: 1B        .byte $1B   ; 
off_A3C2_02:
- D 1 - I - 0x00A3D2 02:A3C2: 54        .byte $54   ; 
- D 1 - I - 0x00A3D3 02:A3C3: 54        .byte $54   ; 
- D 1 - I - 0x00A3D4 02:A3C4: 7E        .byte $7E   ; 
- D 1 - I - 0x00A3D5 02:A3C5: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3D6 02:A3C6: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3D7 02:A3C7: 69        .byte $69   ; 
- D 1 - I - 0x00A3D8 02:A3C8: 15        .byte $15   ; 
- D 1 - I - 0x00A3D9 02:A3C9: 00        .byte $00   ; 
- D 1 - I - 0x00A3DA 02:A3CA: 00        .byte $00   ; 
- D 1 - I - 0x00A3DB 02:A3CB: 00        .byte $00   ; 
- D 1 - I - 0x00A3DC 02:A3CC: 00        .byte $00   ; 
- D 1 - I - 0x00A3DD 02:A3CD: 00        .byte $00   ; 
- D 1 - I - 0x00A3DE 02:A3CE: 00        .byte $00   ; 
- D 1 - I - 0x00A3DF 02:A3CF: 4C        .byte $4C   ; 
- D 1 - I - 0x00A3E0 02:A3D0: 60        .byte $60   ; 
- D 1 - I - 0x00A3E1 02:A3D1: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3E2 02:A3D2: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3E3 02:A3D3: 6F        .byte $6F   ; 
- D 1 - I - 0x00A3E4 02:A3D4: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3E5 02:A3D5: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3E6 02:A3D6: 6C        .byte $6C   ; 
- D 1 - I - 0x00A3E7 02:A3D7: 69        .byte $69   ; 
- D 1 - I - 0x00A3E8 02:A3D8: 00        .byte $00   ; 
- D 1 - I - 0x00A3E9 02:A3D9: 00        .byte $00   ; 
- D 1 - I - 0x00A3EA 02:A3DA: 14        .byte $14   ; 
- D 1 - I - 0x00A3EB 02:A3DB: 00        .byte $00   ; 
- D 1 - I - 0x00A3EC 02:A3DC: 00        .byte $00   ; 
- D 1 - I - 0x00A3ED 02:A3DD: 14        .byte $14   ; 
- D 1 - I - 0x00A3EE 02:A3DE: 40        .byte $40   ; 
- D 1 - I - 0x00A3EF 02:A3DF: 54        .byte $54   ; 
- D 1 - I - 0x00A3F0 02:A3E0: 54        .byte $54   ; 
off_A3E1_06:
- D 1 - I - 0x00A3F1 02:A3E1: 50        .byte $50   ; 
- D 1 - I - 0x00A3F2 02:A3E2: 00        .byte $00   ; 
- D 1 - I - 0x00A3F3 02:A3E3: 04        .byte $04   ; 
- D 1 - I - 0x00A3F4 02:A3E4: 55        .byte $55   ; 
- D 1 - I - 0x00A3F5 02:A3E5: 55        .byte $55   ; 
- D 1 - I - 0x00A3F6 02:A3E6: 55        .byte $55   ; 
- D 1 - I - 0x00A3F7 02:A3E7: 00        .byte $00   ; 
- D 1 - I - 0x00A3F8 02:A3E8: 00        .byte $00   ; 
- D 1 - I - 0x00A3F9 02:A3E9: 55        .byte $55   ; 
- D 1 - I - 0x00A3FA 02:A3EA: 11        .byte $11   ; 
- D 1 - I - 0x00A3FB 02:A3EB: 00        .byte $00   ; 
- D 1 - I - 0x00A3FC 02:A3EC: 00        .byte $00   ; 
- D 1 - I - 0x00A3FD 02:A3ED: 55        .byte $55   ; 
- D 1 - I - 0x00A3FE 02:A3EE: 55        .byte $55   ; 
- D 1 - I - 0x00A3FF 02:A3EF: 00        .byte $00   ; 
- D 1 - I - 0x00A400 02:A3F0: 55        .byte $55   ; 
- D 1 - I - 0x00A401 02:A3F1: 05        .byte $05   ; 
- D 1 - I - 0x00A402 02:A3F2: 01        .byte $01   ; 
- D 1 - I - 0x00A403 02:A3F3: 00        .byte $00   ; 
- D 1 - I - 0x00A404 02:A3F4: 44        .byte $44   ; 
- D 1 - I - 0x00A405 02:A3F5: 55        .byte $55   ; 
- D 1 - I - 0x00A406 02:A3F6: 15        .byte $15   ; 
- D 1 - I - 0x00A407 02:A3F7: 00        .byte $00   ; 
- D 1 - I - 0x00A408 02:A3F8: 05        .byte $05   ; 
- D 1 - I - 0x00A409 02:A3F9: 00        .byte $00   ; 
- D 1 - I - 0x00A40A 02:A3FA: 00        .byte $00   ; 
- D 1 - I - 0x00A40B 02:A3FB: 00        .byte $00   ; 
- D 1 - I - 0x00A40C 02:A3FC: 44        .byte $44   ; 
- D 1 - I - 0x00A40D 02:A3FD: 55        .byte $55   ; 
- D 1 - I - 0x00A40E 02:A3FE: 00        .byte $00   ; 
- D 1 - I - 0x00A40F 02:A3FF: 00        .byte $00   ; 
- D 1 - I - 0x00A410 02:A400: 00        .byte $00   ; 
- - - - - - 0x00A411 02:A401: 00        .byte $00   ; 
- - - - - - 0x00A412 02:A402: 00        .byte $00   ; 
- - - - - - 0x00A413 02:A403: 00        .byte $00   ; 
- - - - - - 0x00A414 02:A404: 00        .byte $00   ; 
- - - - - - 0x00A415 02:A405: 00        .byte $00   ; 
- - - - - - 0x00A416 02:A406: 00        .byte $00   ; 
- - - - - - 0x00A417 02:A407: 00        .byte $00   ; 
- - - - - - 0x00A418 02:A408: 00        .byte $00   ; 
- - - - - - 0x00A419 02:A409: 00        .byte $00   ; 
- - - - - - 0x00A41A 02:A40A: 00        .byte $00   ; 
- - - - - - 0x00A41B 02:A40B: 00        .byte $00   ; 
- - - - - - 0x00A41C 02:A40C: 00        .byte $00   ; 
- - - - - - 0x00A41D 02:A40D: 00        .byte $00   ; 
- - - - - - 0x00A41E 02:A40E: 00        .byte $00   ; 
- - - - - - 0x00A41F 02:A40F: 00        .byte $00   ; 
- - - - - - 0x00A420 02:A410: 00        .byte $00   ; 
- - - - - - 0x00A421 02:A411: 00        .byte $00   ; 
- - - - - - 0x00A422 02:A412: 00        .byte $00   ; 
- - - - - - 0x00A423 02:A413: 00        .byte $00   ; 
- - - - - - 0x00A424 02:A414: 00        .byte $00   ; 
- - - - - - 0x00A425 02:A415: 00        .byte $00   ; 
- - - - - - 0x00A426 02:A416: 00        .byte $00   ; 
- - - - - - 0x00A427 02:A417: 00        .byte $00   ; 
- - - - - - 0x00A428 02:A418: 00        .byte $00   ; 
- - - - - - 0x00A429 02:A419: 00        .byte $00   ; 
- - - - - - 0x00A42A 02:A41A: 00        .byte $00   ; 
- - - - - - 0x00A42B 02:A41B: 00        .byte $00   ; 
- - - - - - 0x00A42C 02:A41C: 00        .byte $00   ; 
- - - - - - 0x00A42D 02:A41D: 00        .byte $00   ; 
- - - - - - 0x00A42E 02:A41E: 00        .byte $00   ; 
- - - - - - 0x00A42F 02:A41F: 00        .byte $00   ; 
- - - - - - 0x00A430 02:A420: 00        .byte $00   ; 
off_A421_0A:
- D 1 - I - 0x00A431 02:A421: 04        .byte $04   ; 
- D 1 - I - 0x00A432 02:A422: 04        .byte $04   ; 
- D 1 - I - 0x00A433 02:A423: 16        .byte $16   ; 
- D 1 - I - 0x00A434 02:A424: 4D        .byte $4D   ; 
- D 1 - I - 0x00A435 02:A425: 61        .byte $61   ; 
- D 1 - I - 0x00A436 02:A426: 6D        .byte $6D   ; 
- D 1 - I - 0x00A437 02:A427: 71        .byte $71   ; 
- D 1 - I - 0x00A438 02:A428: 7D        .byte $7D   ; 
- D 1 - I - 0x00A439 02:A429: 55        .byte $55   ; 
- D 1 - I - 0x00A43A 02:A42A: 43        .byte $43   ; 
- D 1 - I - 0x00A43B 02:A42B: 04        .byte $04   ; 
- D 1 - I - 0x00A43C 02:A42C: 04        .byte $04   ; 
- D 1 - I - 0x00A43D 02:A42D: 04        .byte $04   ; 
- D 1 - I - 0x00A43E 02:A42E: 04        .byte $04   ; 
- D 1 - I - 0x00A43F 02:A42F: 04        .byte $04   ; 
- D 1 - I - 0x00A440 02:A430: 04        .byte $04   ; 
- D 1 - I - 0x00A441 02:A431: 04        .byte $04   ; 
- D 1 - I - 0x00A442 02:A432: 04        .byte $04   ; 
- D 1 - I - 0x00A443 02:A433: 61        .byte $61   ; 
- D 1 - I - 0x00A444 02:A434: 70        .byte $70   ; 
- D 1 - I - 0x00A445 02:A435: 6D        .byte $6D   ; 
- D 1 - I - 0x00A446 02:A436: 6D        .byte $6D   ; 
- D 1 - I - 0x00A447 02:A437: 6D        .byte $6D   ; 
- D 1 - I - 0x00A448 02:A438: 6A        .byte $6A   ; 
- D 1 - I - 0x00A449 02:A439: 4F        .byte $4F   ; 
- D 1 - I - 0x00A44A 02:A43A: 16        .byte $16   ; 
- D 1 - I - 0x00A44B 02:A43B: 04        .byte $04   ; 
- D 1 - I - 0x00A44C 02:A43C: 04        .byte $04   ; 
- D 1 - I - 0x00A44D 02:A43D: 04        .byte $04   ; 
- D 1 - I - 0x00A44E 02:A43E: 04        .byte $04   ; 
- D 1 - I - 0x00A44F 02:A43F: 04        .byte $04   ; 
- D 1 - I - 0x00A450 02:A440: 2B        .byte $2B   ; 
off_A441_0B:
- D 1 - I - 0x00A451 02:A441: 04        .byte $04   ; 
- D 1 - I - 0x00A452 02:A442: 04        .byte $04   ; 
- D 1 - I - 0x00A453 02:A443: 04        .byte $04   ; 
- D 1 - I - 0x00A454 02:A444: 04        .byte $04   ; 
- D 1 - I - 0x00A455 02:A445: 45        .byte $45   ; 
- D 1 - I - 0x00A456 02:A446: 5B        .byte $5B   ; 
- D 1 - I - 0x00A457 02:A447: 7B        .byte $7B   ; 
- D 1 - I - 0x00A458 02:A448: 6D        .byte $6D   ; 
- D 1 - I - 0x00A459 02:A449: 6D        .byte $6D   ; 
- D 1 - I - 0x00A45A 02:A44A: 67        .byte $67   ; 
- D 1 - I - 0x00A45B 02:A44B: 04        .byte $04   ; 
- D 1 - I - 0x00A45C 02:A44C: 04        .byte $04   ; 
- D 1 - I - 0x00A45D 02:A44D: 04        .byte $04   ; 
- D 1 - I - 0x00A45E 02:A44E: 04        .byte $04   ; 
- D 1 - I - 0x00A45F 02:A44F: 04        .byte $04   ; 
- D 1 - I - 0x00A460 02:A450: 04        .byte $04   ; 
- D 1 - I - 0x00A461 02:A451: 04        .byte $04   ; 
- D 1 - I - 0x00A462 02:A452: 04        .byte $04   ; 
- D 1 - I - 0x00A463 02:A453: 45        .byte $45   ; 
- D 1 - I - 0x00A464 02:A454: 5B        .byte $5B   ; 
- D 1 - I - 0x00A465 02:A455: 5B        .byte $5B   ; 
- D 1 - I - 0x00A466 02:A456: 5E        .byte $5E   ; 
- D 1 - I - 0x00A467 02:A457: 5F        .byte $5F   ; 
- D 1 - I - 0x00A468 02:A458: 47        .byte $47   ; 
- D 1 - I - 0x00A469 02:A459: 04        .byte $04   ; 
- D 1 - I - 0x00A46A 02:A45A: 04        .byte $04   ; 
- D 1 - I - 0x00A46B 02:A45B: 04        .byte $04   ; 
- D 1 - I - 0x00A46C 02:A45C: 04        .byte $04   ; 
- D 1 - I - 0x00A46D 02:A45D: 04        .byte $04   ; 
- D 1 - I - 0x00A46E 02:A45E: 04        .byte $04   ; 
- D 1 - I - 0x00A46F 02:A45F: 04        .byte $04   ; 
- D 1 - I - 0x00A470 02:A460: 2B        .byte $2B   ; 
off_A461_0D:
- D 1 - I - 0x00A471 02:A461: 12        .byte $12   ; 
- D 1 - I - 0x00A472 02:A462: 12        .byte $12   ; 
- D 1 - I - 0x00A473 02:A463: 12        .byte $12   ; 
- D 1 - I - 0x00A474 02:A464: 12        .byte $12   ; 
- D 1 - I - 0x00A475 02:A465: 12        .byte $12   ; 
- D 1 - I - 0x00A476 02:A466: 12        .byte $12   ; 
- D 1 - I - 0x00A477 02:A467: 63        .byte $63   ; 
- D 1 - I - 0x00A478 02:A468: 77        .byte $77   ; 
- D 1 - I - 0x00A479 02:A469: 77        .byte $77   ; 
- D 1 - I - 0x00A47A 02:A46A: 65        .byte $65   ; 
off_A46B_0D:
- D 1 - I - 0x00A47B 02:A46B: 12        .byte $12   ; 
- D 1 - I - 0x00A47C 02:A46C: 12        .byte $12   ; 
- D 1 - I - 0x00A47D 02:A46D: 12        .byte $12   ; 
- D 1 - I - 0x00A47E 02:A46E: 12        .byte $12   ; 
- D 1 - I - 0x00A47F 02:A46F: 12        .byte $12   ; 
- D 1 - I - 0x00A480 02:A470: 12        .byte $12   ; 
- D 1 - I - 0x00A481 02:A471: 12        .byte $12   ; 
- D 1 - I - 0x00A482 02:A472: 12        .byte $12   ; 
off_A473_0D:
- D 1 - I - 0x00A483 02:A473: 12        .byte $12   ; 
- D 1 - I - 0x00A484 02:A474: 12        .byte $12   ; 
- D 1 - I - 0x00A485 02:A475: 12        .byte $12   ; 
- D 1 - I - 0x00A486 02:A476: 12        .byte $12   ; 
- D 1 - I - 0x00A487 02:A477: 12        .byte $12   ; 
- D 1 - I - 0x00A488 02:A478: 12        .byte $12   ; 
- D 1 - I - 0x00A489 02:A479: 12        .byte $12   ; 
- D 1 - I - 0x00A48A 02:A47A: 12        .byte $12   ; 
- D 1 - I - 0x00A48B 02:A47B: 12        .byte $12   ; 
- D 1 - I - 0x00A48C 02:A47C: 12        .byte $12   ; 
- D 1 - I - 0x00A48D 02:A47D: 12        .byte $12   ; 
- D 1 - I - 0x00A48E 02:A47E: 12        .byte $12   ; 
- D 1 - I - 0x00A48F 02:A47F: 12        .byte $12   ; 
- D 1 - I - 0x00A490 02:A480: 12        .byte $12   ; 
- D 1 - I - 0x00A491 02:A481: 63        .byte $63   ; 
- D 1 - I - 0x00A492 02:A482: 77        .byte $77   ; 
- D 1 - I - 0x00A493 02:A483: 77        .byte $77   ; 
- D 1 - I - 0x00A494 02:A484: 77        .byte $77   ; 
- D 1 - I - 0x00A495 02:A485: 77        .byte $77   ; 
- D 1 - I - 0x00A496 02:A486: 65        .byte $65   ; 
- D 1 - I - 0x00A497 02:A487: 12        .byte $12   ; 
- D 1 - I - 0x00A498 02:A488: 12        .byte $12   ; 
- D 1 - I - 0x00A499 02:A489: 12        .byte $12   ; 
- D 1 - I - 0x00A49A 02:A48A: 12        .byte $12   ; 
- D 1 - I - 0x00A49B 02:A48B: 12        .byte $12   ; 
- D 1 - I - 0x00A49C 02:A48C: 12        .byte $12   ; 
- D 1 - I - 0x00A49D 02:A48D: 12        .byte $12   ; 
- D 1 - I - 0x00A49E 02:A48E: 12        .byte $12   ; 
- D 1 - I - 0x00A49F 02:A48F: 12        .byte $12   ; 
- D 1 - I - 0x00A4A0 02:A490: 12        .byte $12   ; 
- D 1 - I - 0x00A4A1 02:A491: 12        .byte $12   ; 
- D 1 - I - 0x00A4A2 02:A492: 12        .byte $12   ; 
off_A493_0E:
- D 1 - I - 0x00A4A3 02:A493: 00        .byte $00   ; 
- D 1 - I - 0x00A4A4 02:A494: 00        .byte $00   ; 
- D 1 - I - 0x00A4A5 02:A495: 00        .byte $00   ; 
- D 1 - I - 0x00A4A6 02:A496: 00        .byte $00   ; 
- D 1 - I - 0x00A4A7 02:A497: 00        .byte $00   ; 
- D 1 - I - 0x00A4A8 02:A498: 00        .byte $00   ; 
- D 1 - I - 0x00A4A9 02:A499: 60        .byte $60   ; 
- D 1 - I - 0x00A4AA 02:A49A: 6C        .byte $6C   ; 
- D 1 - I - 0x00A4AB 02:A49B: 6E        .byte $6E   ; 
- D 1 - I - 0x00A4AC 02:A49C: 66        .byte $66   ; 
- D 1 - I - 0x00A4AD 02:A49D: 00        .byte $00   ; 
- D 1 - I - 0x00A4AE 02:A49E: 14        .byte $14   ; 
- D 1 - I - 0x00A4AF 02:A49F: 00        .byte $00   ; 
- D 1 - I - 0x00A4B0 02:A4A0: 00        .byte $00   ; 
- D 1 - I - 0x00A4B1 02:A4A1: 00        .byte $00   ; 
- D 1 - I - 0x00A4B2 02:A4A2: 00        .byte $00   ; 
- D 1 - I - 0x00A4B3 02:A4A3: 15        .byte $15   ; 
- D 1 - I - 0x00A4B4 02:A4A4: 00        .byte $00   ; 
- D 1 - I - 0x00A4B5 02:A4A5: 00        .byte $00   ; 
- D 1 - I - 0x00A4B6 02:A4A6: 00        .byte $00   ; 
- D 1 - I - 0x00A4B7 02:A4A7: 00        .byte $00   ; 
- D 1 - I - 0x00A4B8 02:A4A8: 00        .byte $00   ; 
- D 1 - I - 0x00A4B9 02:A4A9: 00        .byte $00   ; 
- D 1 - I - 0x00A4BA 02:A4AA: 00        .byte $00   ; 
- D 1 - I - 0x00A4BB 02:A4AB: 00        .byte $00   ; 
- D 1 - I - 0x00A4BC 02:A4AC: 00        .byte $00   ; 
- D 1 - I - 0x00A4BD 02:A4AD: 00        .byte $00   ; 
- D 1 - I - 0x00A4BE 02:A4AE: 00        .byte $00   ; 
- D 1 - I - 0x00A4BF 02:A4AF: 00        .byte $00   ; 
- D 1 - I - 0x00A4C0 02:A4B0: 00        .byte $00   ; 
- D 1 - I - 0x00A4C1 02:A4B1: 00        .byte $00   ; 
- D 1 - I - 0x00A4C2 02:A4B2: 00        .byte $00   ; 
off_A4B3_0F:
- D 1 - I - 0x00A4C3 02:A4B3: 00        .byte $00   ; 
- D 1 - I - 0x00A4C4 02:A4B4: 14        .byte $14   ; 
- D 1 - I - 0x00A4C5 02:A4B5: 00        .byte $00   ; 
- D 1 - I - 0x00A4C6 02:A4B6: 00        .byte $00   ; 
- D 1 - I - 0x00A4C7 02:A4B7: 00        .byte $00   ; 
- D 1 - I - 0x00A4C8 02:A4B8: 00        .byte $00   ; 
- D 1 - I - 0x00A4C9 02:A4B9: 60        .byte $60   ; 
- D 1 - I - 0x00A4CA 02:A4BA: 6C        .byte $6C   ; 
- D 1 - I - 0x00A4CB 02:A4BB: 6C        .byte $6C   ; 
- D 1 - I - 0x00A4CC 02:A4BC: 66        .byte $66   ; 
- D 1 - I - 0x00A4CD 02:A4BD: 00        .byte $00   ; 
- D 1 - I - 0x00A4CE 02:A4BE: 00        .byte $00   ; 
- D 1 - I - 0x00A4CF 02:A4BF: 00        .byte $00   ; 
- D 1 - I - 0x00A4D0 02:A4C0: 00        .byte $00   ; 
- D 1 - I - 0x00A4D1 02:A4C1: 00        .byte $00   ; 
- D 1 - I - 0x00A4D2 02:A4C2: 00        .byte $00   ; 
- D 1 - I - 0x00A4D3 02:A4C3: 00        .byte $00   ; 
- D 1 - I - 0x00A4D4 02:A4C4: 00        .byte $00   ; 
- D 1 - I - 0x00A4D5 02:A4C5: 00        .byte $00   ; 
- D 1 - I - 0x00A4D6 02:A4C6: 00        .byte $00   ; 
- D 1 - I - 0x00A4D7 02:A4C7: 00        .byte $00   ; 
- D 1 - I - 0x00A4D8 02:A4C8: 00        .byte $00   ; 
- D 1 - I - 0x00A4D9 02:A4C9: 00        .byte $00   ; 
- D 1 - I - 0x00A4DA 02:A4CA: 00        .byte $00   ; 
- D 1 - I - 0x00A4DB 02:A4CB: 00        .byte $00   ; 
- D 1 - I - 0x00A4DC 02:A4CC: 15        .byte $15   ; 
- D 1 - I - 0x00A4DD 02:A4CD: 00        .byte $00   ; 
- D 1 - I - 0x00A4DE 02:A4CE: 00        .byte $00   ; 
- D 1 - I - 0x00A4DF 02:A4CF: 00        .byte $00   ; 
- D 1 - I - 0x00A4E0 02:A4D0: 00        .byte $00   ; 
- D 1 - I - 0x00A4E1 02:A4D1: 00        .byte $00   ; 
- D 1 - I - 0x00A4E2 02:A4D2: 00        .byte $00   ; 
off_A4D3_05:
- D 1 - I - 0x00A4E3 02:A4D3: 55        .byte $55   ; 
- D 1 - I - 0x00A4E4 02:A4D4: 11        .byte $11   ; 
- D 1 - I - 0x00A4E5 02:A4D5: 00        .byte $00   ; 
- D 1 - I - 0x00A4E6 02:A4D6: 55        .byte $55   ; 
- D 1 - I - 0x00A4E7 02:A4D7: 55        .byte $55   ; 
- D 1 - I - 0x00A4E8 02:A4D8: 11        .byte $11   ; 
- D 1 - I - 0x00A4E9 02:A4D9: 40        .byte $40   ; 
- D 1 - I - 0x00A4EA 02:A4DA: 50        .byte $50   ; 
- D 1 - I - 0x00A4EB 02:A4DB: 55        .byte $55   ; 
- D 1 - I - 0x00A4EC 02:A4DC: 51        .byte $51   ; 
- D 1 - I - 0x00A4ED 02:A4DD: 00        .byte $00   ; 
- D 1 - I - 0x00A4EE 02:A4DE: 55        .byte $55   ; 
- D 1 - I - 0x00A4EF 02:A4DF: 15        .byte $15   ; 
- D 1 - I - 0x00A4F0 02:A4E0: 55        .byte $55   ; 
- D 1 - I - 0x00A4F1 02:A4E1: 55        .byte $55   ; 
- D 1 - I - 0x00A4F2 02:A4E2: 55        .byte $55   ; 
- D 1 - I - 0x00A4F3 02:A4E3: 45        .byte $45   ; 
- D 1 - I - 0x00A4F4 02:A4E4: 55        .byte $55   ; 
- D 1 - I - 0x00A4F5 02:A4E5: 11        .byte $11   ; 
- D 1 - I - 0x00A4F6 02:A4E6: 00        .byte $00   ; 
- D 1 - I - 0x00A4F7 02:A4E7: 44        .byte $44   ; 
- D 1 - I - 0x00A4F8 02:A4E8: 55        .byte $55   ; 
- D 1 - I - 0x00A4F9 02:A4E9: 15        .byte $15   ; 
- D 1 - I - 0x00A4FA 02:A4EA: 05        .byte $05   ; 
- D 1 - I - 0x00A4FB 02:A4EB: 00        .byte $00   ; 
- D 1 - I - 0x00A4FC 02:A4EC: 45        .byte $45   ; 
- D 1 - I - 0x00A4FD 02:A4ED: 11        .byte $11   ; 
- D 1 - I - 0x00A4FE 02:A4EE: 00        .byte $00   ; 
- D 1 - I - 0x00A4FF 02:A4EF: 00        .byte $00   ; 
- D 1 - I - 0x00A500 02:A4F0: 00        .byte $00   ; 
- D 1 - I - 0x00A501 02:A4F1: 00        .byte $00   ; 
- D 1 - I - 0x00A502 02:A4F2: 00        .byte $00   ; 
- - - - - - 0x00A503 02:A4F3: 00        .byte $00   ; 
- - - - - - 0x00A504 02:A4F4: 00        .byte $00   ; 
- - - - - - 0x00A505 02:A4F5: 00        .byte $00   ; 
- - - - - - 0x00A506 02:A4F6: 00        .byte $00   ; 
- - - - - - 0x00A507 02:A4F7: 00        .byte $00   ; 
- - - - - - 0x00A508 02:A4F8: 00        .byte $00   ; 
- - - - - - 0x00A509 02:A4F9: 00        .byte $00   ; 
- - - - - - 0x00A50A 02:A4FA: 00        .byte $00   ; 
- - - - - - 0x00A50B 02:A4FB: 00        .byte $00   ; 
- - - - - - 0x00A50C 02:A4FC: 00        .byte $00   ; 
- - - - - - 0x00A50D 02:A4FD: 00        .byte $00   ; 
- - - - - - 0x00A50E 02:A4FE: 00        .byte $00   ; 
- - - - - - 0x00A50F 02:A4FF: 00        .byte $00   ; 
- - - - - - 0x00A510 02:A500: 00        .byte $00   ; 
- - - - - - 0x00A511 02:A501: 00        .byte $00   ; 
- - - - - - 0x00A512 02:A502: 00        .byte $00   ; 
- - - - - - 0x00A513 02:A503: 00        .byte $00   ; 
- - - - - - 0x00A514 02:A504: 00        .byte $00   ; 
- - - - - - 0x00A515 02:A505: 00        .byte $00   ; 
- - - - - - 0x00A516 02:A506: 00        .byte $00   ; 
- - - - - - 0x00A517 02:A507: 00        .byte $00   ; 
- - - - - - 0x00A518 02:A508: 00        .byte $00   ; 
- - - - - - 0x00A519 02:A509: 00        .byte $00   ; 
- - - - - - 0x00A51A 02:A50A: 00        .byte $00   ; 
- - - - - - 0x00A51B 02:A50B: 00        .byte $00   ; 
- - - - - - 0x00A51C 02:A50C: 00        .byte $00   ; 
- - - - - - 0x00A51D 02:A50D: 00        .byte $00   ; 
- - - - - - 0x00A51E 02:A50E: 00        .byte $00   ; 
- - - - - - 0x00A51F 02:A50F: 00        .byte $00   ; 
- - - - - - 0x00A520 02:A510: 00        .byte $00   ; 
- - - - - - 0x00A521 02:A511: 00        .byte $00   ; 
- - - - - - 0x00A522 02:A512: 00        .byte $00   ; 
off_A513_00:
- D 1 - I - 0x00A523 02:A513: 1C        .byte $1C   ; 
- D 1 - I - 0x00A524 02:A514: 00        .byte $00   ; 
- D 1 - I - 0x00A525 02:A515: 00        .byte $00   ; 
- D 1 - I - 0x00A526 02:A516: 00        .byte $00   ; 
- D 1 - I - 0x00A527 02:A517: 00        .byte $00   ; 
- D 1 - I - 0x00A528 02:A518: 00        .byte $00   ; 
- D 1 - I - 0x00A529 02:A519: 00        .byte $00   ; 
- D 1 - I - 0x00A52A 02:A51A: 00        .byte $00   ; 
- D 1 - I - 0x00A52B 02:A51B: 00        .byte $00   ; 
- D 1 - I - 0x00A52C 02:A51C: 00        .byte $00   ; 
- D 1 - I - 0x00A52D 02:A51D: 60        .byte $60   ; 
- D 1 - I - 0x00A52E 02:A51E: 6C        .byte $6C   ; 
- D 1 - I - 0x00A52F 02:A51F: 6C        .byte $6C   ; 
- D 1 - I - 0x00A530 02:A520: 6C        .byte $6C   ; 
- D 1 - I - 0x00A531 02:A521: 6C        .byte $6C   ; 
- D 1 - I - 0x00A532 02:A522: 6C        .byte $6C   ; 
- D 1 - I - 0x00A533 02:A523: 6C        .byte $6C   ; 
- D 1 - I - 0x00A534 02:A524: 6C        .byte $6C   ; 
- D 1 - I - 0x00A535 02:A525: 6C        .byte $6C   ; 
- D 1 - I - 0x00A536 02:A526: 6C        .byte $6C   ; 
- D 1 - I - 0x00A537 02:A527: 6C        .byte $6C   ; 
- D 1 - I - 0x00A538 02:A528: 66        .byte $66   ; 
- D 1 - I - 0x00A539 02:A529: 00        .byte $00   ; 
- D 1 - I - 0x00A53A 02:A52A: 00        .byte $00   ; 
off_A52B_00:
- D 1 - I - 0x00A53B 02:A52B: 00        .byte $00   ; 
- D 1 - I - 0x00A53C 02:A52C: 00        .byte $00   ; 
- D 1 - I - 0x00A53D 02:A52D: 40        .byte $40   ; 
- D 1 - I - 0x00A53E 02:A52E: 54        .byte $54   ; 
- D 1 - I - 0x00A53F 02:A52F: 54        .byte $54   ; 
- D 1 - I - 0x00A540 02:A530: 42        .byte $42   ; 
- D 1 - I - 0x00A541 02:A531: 00        .byte $00   ; 
- D 1 - I - 0x00A542 02:A532: 00        .byte $00   ; 
- D 1 - I - 0x00A543 02:A533: 00        .byte $00   ; 
- D 1 - I - 0x00A544 02:A534: 00        .byte $00   ; 
- D 1 - I - 0x00A545 02:A535: 00        .byte $00   ; 
- D 1 - I - 0x00A546 02:A536: 00        .byte $00   ; 
- D 1 - I - 0x00A547 02:A537: 60        .byte $60   ; 
- D 1 - I - 0x00A548 02:A538: 6C        .byte $6C   ; 
- D 1 - I - 0x00A549 02:A539: 6C        .byte $6C   ; 
- D 1 - I - 0x00A54A 02:A53A: 6C        .byte $6C   ; 
- D 1 - I - 0x00A54B 02:A53B: 6C        .byte $6C   ; 
- D 1 - I - 0x00A54C 02:A53C: 6C        .byte $6C   ; 
- D 1 - I - 0x00A54D 02:A53D: 6C        .byte $6C   ; 
- D 1 - I - 0x00A54E 02:A53E: 6C        .byte $6C   ; 
- D 1 - I - 0x00A54F 02:A53F: 6C        .byte $6C   ; 
- D 1 - I - 0x00A550 02:A540: 68        .byte $68   ; 
- D 1 - I - 0x00A551 02:A541: 00        .byte $00   ; 
- D 1 - I - 0x00A552 02:A542: 00        .byte $00   ; 
- D 1 - I - 0x00A553 02:A543: 00        .byte $00   ; 
- D 1 - I - 0x00A554 02:A544: 00        .byte $00   ; 
- D 1 - I - 0x00A555 02:A545: 00        .byte $00   ; 
- D 1 - I - 0x00A556 02:A546: 00        .byte $00   ; 
- D 1 - I - 0x00A557 02:A547: 14        .byte $14   ; 
- D 1 - I - 0x00A558 02:A548: 00        .byte $00   ; 
- D 1 - I - 0x00A559 02:A549: 00        .byte $00   ; 
- D 1 - I - 0x00A55A 02:A54A: 1B        .byte $1B   ; 
off_A54B_01:
- D 1 - I - 0x00A55B 02:A54B: 1C        .byte $1C   ; 
- D 1 - I - 0x00A55C 02:A54C: 00        .byte $00   ; 
- D 1 - I - 0x00A55D 02:A54D: 00        .byte $00   ; 
- D 1 - I - 0x00A55E 02:A54E: 00        .byte $00   ; 
- D 1 - I - 0x00A55F 02:A54F: 00        .byte $00   ; 
- D 1 - I - 0x00A560 02:A550: 00        .byte $00   ; 
- D 1 - I - 0x00A561 02:A551: 00        .byte $00   ; 
- D 1 - I - 0x00A562 02:A552: 00        .byte $00   ; 
- D 1 - I - 0x00A563 02:A553: 00        .byte $00   ; 
- D 1 - I - 0x00A564 02:A554: 00        .byte $00   ; 
- D 1 - I - 0x00A565 02:A555: 44        .byte $44   ; 
- D 1 - I - 0x00A566 02:A556: 5A        .byte $5A   ; 
- D 1 - I - 0x00A567 02:A557: 5A        .byte $5A   ; 
- D 1 - I - 0x00A568 02:A558: 5A        .byte $5A   ; 
- D 1 - I - 0x00A569 02:A559: 7A        .byte $7A   ; 
- D 1 - I - 0x00A56A 02:A55A: 6C        .byte $6C   ; 
- D 1 - I - 0x00A56B 02:A55B: 6E        .byte $6E   ; 
- D 1 - I - 0x00A56C 02:A55C: 6C        .byte $6C   ; 
- D 1 - I - 0x00A56D 02:A55D: 6C        .byte $6C   ; 
- D 1 - I - 0x00A56E 02:A55E: 6E        .byte $6E   ; 
- D 1 - I - 0x00A56F 02:A55F: 6C        .byte $6C   ; 
- D 1 - I - 0x00A570 02:A560: 68        .byte $68   ; 
- D 1 - I - 0x00A571 02:A561: 00        .byte $00   ; 
- D 1 - I - 0x00A572 02:A562: 00        .byte $00   ; 
- D 1 - I - 0x00A573 02:A563: 00        .byte $00   ; 
- D 1 - I - 0x00A574 02:A564: 00        .byte $00   ; 
- D 1 - I - 0x00A575 02:A565: 60        .byte $60   ; 
- D 1 - I - 0x00A576 02:A566: 6E        .byte $6E   ; 
- D 1 - I - 0x00A577 02:A567: 6C        .byte $6C   ; 
- D 1 - I - 0x00A578 02:A568: 66        .byte $66   ; 
- D 1 - I - 0x00A579 02:A569: 00        .byte $00   ; 
- D 1 - I - 0x00A57A 02:A56A: 00        .byte $00   ; 
off_A56B_02:
- D 1 - I - 0x00A57B 02:A56B: 51        .byte $51   ; 
- D 1 - I - 0x00A57C 02:A56C: 42        .byte $42   ; 
- D 1 - I - 0x00A57D 02:A56D: 14        .byte $14   ; 
- D 1 - I - 0x00A57E 02:A56E: 00        .byte $00   ; 
- D 1 - I - 0x00A57F 02:A56F: 00        .byte $00   ; 
- D 1 - I - 0x00A580 02:A570: 00        .byte $00   ; 
- D 1 - I - 0x00A581 02:A571: 00        .byte $00   ; 
- D 1 - I - 0x00A582 02:A572: 00        .byte $00   ; 
- D 1 - I - 0x00A583 02:A573: 00        .byte $00   ; 
- D 1 - I - 0x00A584 02:A574: 00        .byte $00   ; 
- D 1 - I - 0x00A585 02:A575: 00        .byte $00   ; 
- D 1 - I - 0x00A586 02:A576: 00        .byte $00   ; 
- D 1 - I - 0x00A587 02:A577: 00        .byte $00   ; 
- D 1 - I - 0x00A588 02:A578: 4C        .byte $4C   ; 
- D 1 - I - 0x00A589 02:A579: 60        .byte $60   ; 
- D 1 - I - 0x00A58A 02:A57A: 6C        .byte $6C   ; 
- D 1 - I - 0x00A58B 02:A57B: 6C        .byte $6C   ; 
- D 1 - I - 0x00A58C 02:A57C: 6F        .byte $6F   ; 
- D 1 - I - 0x00A58D 02:A57D: 6C        .byte $6C   ; 
- D 1 - I - 0x00A58E 02:A57E: 6C        .byte $6C   ; 
- D 1 - I - 0x00A58F 02:A57F: 6C        .byte $6C   ; 
- D 1 - I - 0x00A590 02:A580: 69        .byte $69   ; 
- D 1 - I - 0x00A591 02:A581: 00        .byte $00   ; 
- D 1 - I - 0x00A592 02:A582: 00        .byte $00   ; 
- D 1 - I - 0x00A593 02:A583: 14        .byte $14   ; 
- D 1 - I - 0x00A594 02:A584: 00        .byte $00   ; 
- D 1 - I - 0x00A595 02:A585: 60        .byte $60   ; 
- D 1 - I - 0x00A596 02:A586: 6C        .byte $6C   ; 
- D 1 - I - 0x00A597 02:A587: 6C        .byte $6C   ; 
- D 1 - I - 0x00A598 02:A588: 66        .byte $66   ; 
- D 1 - I - 0x00A599 02:A589: 15        .byte $15   ; 
- D 1 - I - 0x00A59A 02:A58A: 00        .byte $00   ; 
off_A58B_03:
- D 1 - I - 0x00A59B 02:A58B: 75        .byte $75   ; 
- D 1 - I - 0x00A59C 02:A58C: 67        .byte $67   ; 
- D 1 - I - 0x00A59D 02:A58D: 4B        .byte $4B   ; 
- D 1 - I - 0x00A59E 02:A58E: 04        .byte $04   ; 
- D 1 - I - 0x00A59F 02:A58F: 04        .byte $04   ; 
- D 1 - I - 0x00A5A0 02:A590: 04        .byte $04   ; 
- D 1 - I - 0x00A5A1 02:A591: 04        .byte $04   ; 
- D 1 - I - 0x00A5A2 02:A592: 04        .byte $04   ; 
- D 1 - I - 0x00A5A3 02:A593: 04        .byte $04   ; 
- D 1 - I - 0x00A5A4 02:A594: 04        .byte $04   ; 
- D 1 - I - 0x00A5A5 02:A595: 04        .byte $04   ; 
- D 1 - I - 0x00A5A6 02:A596: 04        .byte $04   ; 
- D 1 - I - 0x00A5A7 02:A597: 04        .byte $04   ; 
- D 1 - I - 0x00A5A8 02:A598: 04        .byte $04   ; 
- D 1 - I - 0x00A5A9 02:A599: 45        .byte $45   ; 
- D 1 - I - 0x00A5AA 02:A59A: 5B        .byte $5B   ; 
- D 1 - I - 0x00A5AB 02:A59B: 5B        .byte $5B   ; 
- D 1 - I - 0x00A5AC 02:A59C: 5B        .byte $5B   ; 
- D 1 - I - 0x00A5AD 02:A59D: 5E        .byte $5E   ; 
- D 1 - I - 0x00A5AE 02:A59E: 5F        .byte $5F   ; 
- D 1 - I - 0x00A5AF 02:A59F: 5F        .byte $5F   ; 
- D 1 - I - 0x00A5B0 02:A5A0: 47        .byte $47   ; 
- D 1 - I - 0x00A5B1 02:A5A1: 04        .byte $04   ; 
- D 1 - I - 0x00A5B2 02:A5A2: 04        .byte $04   ; 
- D 1 - I - 0x00A5B3 02:A5A3: 04        .byte $04   ; 
- D 1 - I - 0x00A5B4 02:A5A4: 49        .byte $49   ; 
- D 1 - I - 0x00A5B5 02:A5A5: 61        .byte $61   ; 
- D 1 - I - 0x00A5B6 02:A5A6: 6D        .byte $6D   ; 
- D 1 - I - 0x00A5B7 02:A5A7: 71        .byte $71   ; 
off_A5A8_05:
- D 1 - I - 0x00A5B8 02:A5A8: 67        .byte $67   ; 
- D 1 - I - 0x00A5B9 02:A5A9: 4B        .byte $4B   ; 
- D 1 - I - 0x00A5BA 02:A5AA: 04        .byte $04   ; 
- D 1 - I - 0x00A5BB 02:A5AB: 04        .byte $04   ; 
- D 1 - I - 0x00A5BC 02:A5AC: 31        .byte $31   ; 
- D 1 - I - 0x00A5BD 02:A5AD: 04        .byte $04   ; 
- D 1 - I - 0x00A5BE 02:A5AE: 61        .byte $61   ; 
- D 1 - I - 0x00A5BF 02:A5AF: 6D        .byte $6D   ; 
- D 1 - I - 0x00A5C0 02:A5B0: 6D        .byte $6D   ; 
- D 1 - I - 0x00A5C1 02:A5B1: 6D        .byte $6D   ; 
- D 1 - I - 0x00A5C2 02:A5B2: 6D        .byte $6D   ; 
- D 1 - I - 0x00A5C3 02:A5B3: 7D        .byte $7D   ; 
- D 1 - I - 0x00A5C4 02:A5B4: 55        .byte $55   ; 
- D 1 - I - 0x00A5C5 02:A5B5: 55        .byte $55   ; 
- D 1 - I - 0x00A5C6 02:A5B6: 43        .byte $43   ; 
- D 1 - I - 0x00A5C7 02:A5B7: 37        .byte $37   ; 
- D 1 - I - 0x00A5C8 02:A5B8: 2C        .byte $2C   ; 
- D 1 - I - 0x00A5C9 02:A5B9: 04        .byte $04   ; 
- D 1 - I - 0x00A5CA 02:A5BA: 04        .byte $04   ; 
- D 1 - I - 0x00A5CB 02:A5BB: 17        .byte $17   ; 
- D 1 - I - 0x00A5CC 02:A5BC: 04        .byte $04   ; 
- D 1 - I - 0x00A5CD 02:A5BD: 04        .byte $04   ; 
- D 1 - I - 0x00A5CE 02:A5BE: 16        .byte $16   ; 
off_A5BF_07:
- D 1 - I - 0x00A5CF 02:A5BF: 04        .byte $04   ; 
- - - - - - 0x00A5D0 02:A5C0: 04        .byte $04   ; 
- - - - - - 0x00A5D1 02:A5C1: 04        .byte $04   ; 
- - - - - - 0x00A5D2 02:A5C2: 04        .byte $04   ; 
- - - - - - 0x00A5D3 02:A5C3: 04        .byte $04   ; 
- - - - - - 0x00A5D4 02:A5C4: 04        .byte $04   ; 
- - - - - - 0x00A5D5 02:A5C5: 04        .byte $04   ; 
- - - - - - 0x00A5D6 02:A5C6: 04        .byte $04   ; 
- - - - - - 0x00A5D7 02:A5C7: 04        .byte $04   ; 
- D 1 - I - 0x00A5D8 02:A5C8: 04        .byte $04   ; 
- D 1 - I - 0x00A5D9 02:A5C9: 04        .byte $04   ; 
- D 1 - I - 0x00A5DA 02:A5CA: 04        .byte $04   ; 
- D 1 - I - 0x00A5DB 02:A5CB: 04        .byte $04   ; 
- D 1 - I - 0x00A5DC 02:A5CC: 04        .byte $04   ; 
- D 1 - I - 0x00A5DD 02:A5CD: 04        .byte $04   ; 
- D 1 - I - 0x00A5DE 02:A5CE: 04        .byte $04   ; 
- D 1 - I - 0x00A5DF 02:A5CF: 04        .byte $04   ; 
- D 1 - I - 0x00A5E0 02:A5D0: 04        .byte $04   ; 
- D 1 - I - 0x00A5E1 02:A5D1: 04        .byte $04   ; 
- D 1 - I - 0x00A5E2 02:A5D2: 33        .byte $33   ; 
- D 1 - I - 0x00A5E3 02:A5D3: 04        .byte $04   ; 
- D 1 - I - 0x00A5E4 02:A5D4: 85        .byte $85   ; 
off_A5D5_1C:
- D 1 - I - 0x00A5E5 02:A5D5: 04        .byte $04   ; 
- D 1 - I - 0x00A5E6 02:A5D6: 04        .byte $04   ; 
- D 1 - I - 0x00A5E7 02:A5D7: 04        .byte $04   ; 
- D 1 - I - 0x00A5E8 02:A5D8: 04        .byte $04   ; 
- D 1 - I - 0x00A5E9 02:A5D9: 04        .byte $04   ; 
- D 1 - I - 0x00A5EA 02:A5DA: 04        .byte $04   ; 
- D 1 - I - 0x00A5EB 02:A5DB: 04        .byte $04   ; 
- D 1 - I - 0x00A5EC 02:A5DC: 04        .byte $04   ; 
- D 1 - I - 0x00A5ED 02:A5DD: 04        .byte $04   ; 
- D 1 - I - 0x00A5EE 02:A5DE: 04        .byte $04   ; 
- D 1 - I - 0x00A5EF 02:A5DF: 04        .byte $04   ; 
- D 1 - I - 0x00A5F0 02:A5E0: 04        .byte $04   ; 
- D 1 - I - 0x00A5F1 02:A5E1: 41        .byte $41   ; 
- D 1 - I - 0x00A5F2 02:A5E2: 55        .byte $55   ; 
- D 1 - I - 0x00A5F3 02:A5E3: 7F        .byte $7F   ; 
- D 1 - I - 0x00A5F4 02:A5E4: 6D        .byte $6D   ; 
- D 1 - I - 0x00A5F5 02:A5E5: 6D        .byte $6D   ; 
- D 1 - I - 0x00A5F6 02:A5E6: 6D        .byte $6D   ; 
- D 1 - I - 0x00A5F7 02:A5E7: 6D        .byte $6D   ; 
- D 1 - I - 0x00A5F8 02:A5E8: 6D        .byte $6D   ; 
- D 1 - I - 0x00A5F9 02:A5E9: 6D        .byte $6D   ; 
- D 1 - I - 0x00A5FA 02:A5EA: 67        .byte $67   ; 
- D 1 - I - 0x00A5FB 02:A5EB: 4F        .byte $4F   ; 
- D 1 - I - 0x00A5FC 02:A5EC: 04        .byte $04   ; 
- D 1 - I - 0x00A5FD 02:A5ED: 04        .byte $04   ; 
- D 1 - I - 0x00A5FE 02:A5EE: 04        .byte $04   ; 
- D 1 - I - 0x00A5FF 02:A5EF: 04        .byte $04   ; 
- D 1 - I - 0x00A600 02:A5F0: 04        .byte $04   ; 
- D 1 - I - 0x00A601 02:A5F1: 04        .byte $04   ; 
- D 1 - I - 0x00A602 02:A5F2: 04        .byte $04   ; 
- D 1 - I - 0x00A603 02:A5F3: 04        .byte $04   ; 
- D 1 - I - 0x00A604 02:A5F4: 2B        .byte $2B   ; 
off_A5F5_04:
- D 1 - I - 0x00A605 02:A5F5: 75        .byte $75   ; 
- D 1 - I - 0x00A606 02:A5F6: 7D        .byte $7D   ; 
- D 1 - I - 0x00A607 02:A5F7: 55        .byte $55   ; 
- D 1 - I - 0x00A608 02:A5F8: 55        .byte $55   ; 
- D 1 - I - 0x00A609 02:A5F9: 55        .byte $55   ; 
- D 1 - I - 0x00A60A 02:A5FA: 43        .byte $43   ; 
- D 1 - I - 0x00A60B 02:A5FB: 04        .byte $04   ; 
- D 1 - I - 0x00A60C 02:A5FC: 16        .byte $16   ; 
- D 1 - I - 0x00A60D 02:A5FD: 04        .byte $04   ; 
- D 1 - I - 0x00A60E 02:A5FE: 04        .byte $04   ; 
- D 1 - I - 0x00A60F 02:A5FF: 04        .byte $04   ; 
- D 1 - I - 0x00A610 02:A600: 04        .byte $04   ; 
- D 1 - I - 0x00A611 02:A601: 04        .byte $04   ; 
- D 1 - I - 0x00A612 02:A602: 04        .byte $04   ; 
- D 1 - I - 0x00A613 02:A603: 04        .byte $04   ; 
- D 1 - I - 0x00A614 02:A604: 04        .byte $04   ; 
- D 1 - I - 0x00A615 02:A605: 04        .byte $04   ; 
- D 1 - I - 0x00A616 02:A606: 04        .byte $04   ; 
- D 1 - I - 0x00A617 02:A607: 16        .byte $16   ; 
- D 1 - I - 0x00A618 02:A608: 04        .byte $04   ; 
- D 1 - I - 0x00A619 02:A609: 04        .byte $04   ; 
- D 1 - I - 0x00A61A 02:A60A: 04        .byte $04   ; 
- D 1 - I - 0x00A61B 02:A60B: 04        .byte $04   ; 
- D 1 - I - 0x00A61C 02:A60C: 04        .byte $04   ; 
- D 1 - I - 0x00A61D 02:A60D: 41        .byte $41   ; 
- D 1 - I - 0x00A61E 02:A60E: 55        .byte $55   ; 
- D 1 - I - 0x00A61F 02:A60F: 7F        .byte $7F   ; 
- D 1 - I - 0x00A620 02:A610: 6D        .byte $6D   ; 
off_A611_0C:
- D 1 - I - 0x00A621 02:A611: 6D        .byte $6D   ; 
- D 1 - I - 0x00A622 02:A612: 7D        .byte $7D   ; 
- D 1 - I - 0x00A623 02:A613: 55        .byte $55   ; 
- D 1 - I - 0x00A624 02:A614: 55        .byte $55   ; 
- D 1 - I - 0x00A625 02:A615: 55        .byte $55   ; 
- D 1 - I - 0x00A626 02:A616: 55        .byte $55   ; 
- D 1 - I - 0x00A627 02:A617: 7F        .byte $7F   ; 
- D 1 - I - 0x00A628 02:A618: 6D        .byte $6D   ; 
- D 1 - I - 0x00A629 02:A619: 70        .byte $70   ; 
- D 1 - I - 0x00A62A 02:A61A: 6D        .byte $6D   ; 
- D 1 - I - 0x00A62B 02:A61B: 6D        .byte $6D   ; 
- D 1 - I - 0x00A62C 02:A61C: 6B        .byte $6B   ; 
- D 1 - I - 0x00A62D 02:A61D: 04        .byte $04   ; 
- D 1 - I - 0x00A62E 02:A61E: 04        .byte $04   ; 
- D 1 - I - 0x00A62F 02:A61F: 04        .byte $04   ; 
- D 1 - I - 0x00A630 02:A620: 04        .byte $04   ; 
- D 1 - I - 0x00A631 02:A621: 41        .byte $41   ; 
- D 1 - I - 0x00A632 02:A622: 55        .byte $55   ; 
- D 1 - I - 0x00A633 02:A623: 7F        .byte $7F   ; 
- D 1 - I - 0x00A634 02:A624: 6D        .byte $6D   ; 
- D 1 - I - 0x00A635 02:A625: 71        .byte $71   ; 
- D 1 - I - 0x00A636 02:A626: 7D        .byte $7D   ; 
- D 1 - I - 0x00A637 02:A627: 55        .byte $55   ; 
- D 1 - I - 0x00A638 02:A628: 43        .byte $43   ; 
- D 1 - I - 0x00A639 02:A629: 04        .byte $04   ; 
- D 1 - I - 0x00A63A 02:A62A: 04        .byte $04   ; 
- D 1 - I - 0x00A63B 02:A62B: 41        .byte $41   ; 
- D 1 - I - 0x00A63C 02:A62C: 55        .byte $55   ; 
- D 1 - I - 0x00A63D 02:A62D: 7F        .byte $7F   ; 
- D 1 - I - 0x00A63E 02:A62E: 6D        .byte $6D   ; 
- D 1 - I - 0x00A63F 02:A62F: 71        .byte $71   ; 
- D 1 - I - 0x00A640 02:A630: 74        .byte $74   ; 
off_A631_05:
- D 1 - I - 0x00A641 02:A631: 75        .byte $75   ; 
- D 1 - I - 0x00A642 02:A632: 70        .byte $70   ; 
- D 1 - I - 0x00A643 02:A633: 6D        .byte $6D   ; 
- D 1 - I - 0x00A644 02:A634: 6D        .byte $6D   ; 
- D 1 - I - 0x00A645 02:A635: 6D        .byte $6D   ; 
- D 1 - I - 0x00A646 02:A636: 67        .byte $67   ; 
- D 1 - I - 0x00A647 02:A637: 4B        .byte $4B   ; 
- D 1 - I - 0x00A648 02:A638: 04        .byte $04   ; 
- D 1 - I - 0x00A649 02:A639: 04        .byte $04   ; 
- D 1 - I - 0x00A64A 02:A63A: 04        .byte $04   ; 
- D 1 - I - 0x00A64B 02:A63B: 04        .byte $04   ; 
- D 1 - I - 0x00A64C 02:A63C: 04        .byte $04   ; 
- D 1 - I - 0x00A64D 02:A63D: 04        .byte $04   ; 
- D 1 - I - 0x00A64E 02:A63E: 04        .byte $04   ; 
- D 1 - I - 0x00A64F 02:A63F: 04        .byte $04   ; 
- D 1 - I - 0x00A650 02:A640: 04        .byte $04   ; 
- D 1 - I - 0x00A651 02:A641: 04        .byte $04   ; 
- D 1 - I - 0x00A652 02:A642: 04        .byte $04   ; 
- D 1 - I - 0x00A653 02:A643: 04        .byte $04   ; 
- D 1 - I - 0x00A654 02:A644: 04        .byte $04   ; 
- D 1 - I - 0x00A655 02:A645: 04        .byte $04   ; 
- D 1 - I - 0x00A656 02:A646: 04        .byte $04   ; 
- D 1 - I - 0x00A657 02:A647: 04        .byte $04   ; 
- D 1 - I - 0x00A658 02:A648: 49        .byte $49   ; 
- D 1 - I - 0x00A659 02:A649: 61        .byte $61   ; 
- D 1 - I - 0x00A65A 02:A64A: 6D        .byte $6D   ; 
- D 1 - I - 0x00A65B 02:A64B: 70        .byte $70   ; 
- D 1 - I - 0x00A65C 02:A64C: 6D        .byte $6D   ; 
off_A64D_04:
- D 1 - I - 0x00A65D 02:A64D: 6D        .byte $6D   ; 
- D 1 - I - 0x00A65E 02:A64E: 6D        .byte $6D   ; 
- D 1 - I - 0x00A65F 02:A64F: 70        .byte $70   ; 
- D 1 - I - 0x00A660 02:A650: 6D        .byte $6D   ; 
- D 1 - I - 0x00A661 02:A651: 6D        .byte $6D   ; 
- D 1 - I - 0x00A662 02:A652: 6B        .byte $6B   ; 
- D 1 - I - 0x00A663 02:A653: 04        .byte $04   ; 
- D 1 - I - 0x00A664 02:A654: 04        .byte $04   ; 
- D 1 - I - 0x00A665 02:A655: 04        .byte $04   ; 
- D 1 - I - 0x00A666 02:A656: 04        .byte $04   ; 
- D 1 - I - 0x00A667 02:A657: 61        .byte $61   ; 
- D 1 - I - 0x00A668 02:A658: 6D        .byte $6D   ; 
- D 1 - I - 0x00A669 02:A659: 6D        .byte $6D   ; 
- D 1 - I - 0x00A66A 02:A65A: 6D        .byte $6D   ; 
- D 1 - I - 0x00A66B 02:A65B: 71        .byte $71   ; 
- D 1 - I - 0x00A66C 02:A65C: 6A        .byte $6A   ; 
- D 1 - I - 0x00A66D 02:A65D: 4F        .byte $4F   ; 
- D 1 - I - 0x00A66E 02:A65E: 04        .byte $04   ; 
- D 1 - I - 0x00A66F 02:A65F: 04        .byte $04   ; 
- D 1 - I - 0x00A670 02:A660: 16        .byte $16   ; 
- D 1 - I - 0x00A671 02:A661: 04        .byte $04   ; 
- D 1 - I - 0x00A672 02:A662: 04        .byte $04   ; 
- D 1 - I - 0x00A673 02:A663: 04        .byte $04   ; 
- D 1 - I - 0x00A674 02:A664: 04        .byte $04   ; 
- D 1 - I - 0x00A675 02:A665: 04        .byte $04   ; 
- D 1 - I - 0x00A676 02:A666: 04        .byte $04   ; 
- D 1 - I - 0x00A677 02:A667: 04        .byte $04   ; 
- D 1 - I - 0x00A678 02:A668: 04        .byte $04   ; 
- D 1 - I - 0x00A679 02:A669: 41        .byte $41   ; 
- D 1 - I - 0x00A67A 02:A66A: 55        .byte $55   ; 
- D 1 - I - 0x00A67B 02:A66B: 7F        .byte $7F   ; 
- D 1 - I - 0x00A67C 02:A66C: 74        .byte $74   ; 
off_A66D_06:
- D 1 - I - 0x00A67D 02:A66D: 73        .byte $73   ; 
- D 1 - I - 0x00A67E 02:A66E: 6C        .byte $6C   ; 
- D 1 - I - 0x00A67F 02:A66F: 6C        .byte $6C   ; 
- D 1 - I - 0x00A680 02:A670: 6C        .byte $6C   ; 
- D 1 - I - 0x00A681 02:A671: 6C        .byte $6C   ; 
- D 1 - I - 0x00A682 02:A672: 7C        .byte $7C   ; 
- D 1 - I - 0x00A683 02:A673: 54        .byte $54   ; 
- D 1 - I - 0x00A684 02:A674: 54        .byte $54   ; 
- D 1 - I - 0x00A685 02:A675: 54        .byte $54   ; 
- D 1 - I - 0x00A686 02:A676: 54        .byte $54   ; 
- D 1 - I - 0x00A687 02:A677: 54        .byte $54   ; 
- D 1 - I - 0x00A688 02:A678: 54        .byte $54   ; 
- D 1 - I - 0x00A689 02:A679: 54        .byte $54   ; 
- D 1 - I - 0x00A68A 02:A67A: 42        .byte $42   ; 
- D 1 - I - 0x00A68B 02:A67B: 14        .byte $14   ; 
- D 1 - I - 0x00A68C 02:A67C: 00        .byte $00   ; 
- D 1 - I - 0x00A68D 02:A67D: 00        .byte $00   ; 
- D 1 - I - 0x00A68E 02:A67E: 00        .byte $00   ; 
- D 1 - I - 0x00A68F 02:A67F: 00        .byte $00   ; 
- D 1 - I - 0x00A690 02:A680: 00        .byte $00   ; 
- D 1 - I - 0x00A691 02:A681: 00        .byte $00   ; 
- D 1 - I - 0x00A692 02:A682: 00        .byte $00   ; 
- D 1 - I - 0x00A693 02:A683: 40        .byte $40   ; 
- D 1 - I - 0x00A694 02:A684: 54        .byte $54   ; 
- D 1 - I - 0x00A695 02:A685: 7E        .byte $7E   ; 
- D 1 - I - 0x00A696 02:A686: 6C        .byte $6C   ; 
- D 1 - I - 0x00A697 02:A687: 6C        .byte $6C   ; 
off_A688_07:
- D 1 - I - 0x00A698 02:A688: 6C        .byte $6C   ; 
- D 1 - I - 0x00A699 02:A689: 6C        .byte $6C   ; 
- D 1 - I - 0x00A69A 02:A68A: 6C        .byte $6C   ; 
- D 1 - I - 0x00A69B 02:A68B: 6C        .byte $6C   ; 
- D 1 - I - 0x00A69C 02:A68C: 6C        .byte $6C   ; 
- D 1 - I - 0x00A69D 02:A68D: 6E        .byte $6E   ; 
- D 1 - I - 0x00A69E 02:A68E: 6C        .byte $6C   ; 
- D 1 - I - 0x00A69F 02:A68F: 66        .byte $66   ; 
- D 1 - I - 0x00A6A0 02:A690: 00        .byte $00   ; 
- D 1 - I - 0x00A6A1 02:A691: 00        .byte $00   ; 
- D 1 - I - 0x00A6A2 02:A692: 00        .byte $00   ; 
- D 1 - I - 0x00A6A3 02:A693: 00        .byte $00   ; 
- D 1 - I - 0x00A6A4 02:A694: 44        .byte $44   ; 
- D 1 - I - 0x00A6A5 02:A695: 5C        .byte $5C   ; 
- D 1 - I - 0x00A6A6 02:A696: 5D        .byte $5D   ; 
- D 1 - I - 0x00A6A7 02:A697: 46        .byte $46   ; 
- D 1 - I - 0x00A6A8 02:A698: 00        .byte $00   ; 
- D 1 - I - 0x00A6A9 02:A699: 00        .byte $00   ; 
- D 1 - I - 0x00A6AA 02:A69A: 00        .byte $00   ; 
- D 1 - I - 0x00A6AB 02:A69B: 00        .byte $00   ; 
- D 1 - I - 0x00A6AC 02:A69C: 00        .byte $00   ; 
- D 1 - I - 0x00A6AD 02:A69D: 48        .byte $48   ; 
- D 1 - I - 0x00A6AE 02:A69E: 60        .byte $60   ; 
- D 1 - I - 0x00A6AF 02:A69F: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6B0 02:A6A0: 6E        .byte $6E   ; 
- D 1 - I - 0x00A6B1 02:A6A1: 78        .byte $78   ; 
- D 1 - I - 0x00A6B2 02:A6A2: 5A        .byte $5A   ; 
- D 1 - I - 0x00A6B3 02:A6A3: 5A        .byte $5A   ; 
- D 1 - I - 0x00A6B4 02:A6A4: 7A        .byte $7A   ; 
- D 1 - I - 0x00A6B5 02:A6A5: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6B6 02:A6A6: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6B7 02:A6A7: 72        .byte $72   ; 
off_A6A8_07:
- D 1 - I - 0x00A6B8 02:A6A8: 73        .byte $73   ; 
- D 1 - I - 0x00A6B9 02:A6A9: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6BA 02:A6AA: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6BB 02:A6AB: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6BC 02:A6AC: 6E        .byte $6E   ; 
- D 1 - I - 0x00A6BD 02:A6AD: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6BE 02:A6AE: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6BF 02:A6AF: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6C0 02:A6B0: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6C1 02:A6B1: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6C2 02:A6B2: 6F        .byte $6F   ; 
- D 1 - I - 0x00A6C3 02:A6B3: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6C4 02:A6B4: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6C5 02:A6B5: 68        .byte $68   ; 
- D 1 - I - 0x00A6C6 02:A6B6: 00        .byte $00   ; 
- D 1 - I - 0x00A6C7 02:A6B7: 00        .byte $00   ; 
- D 1 - I - 0x00A6C8 02:A6B8: 00        .byte $00   ; 
- D 1 - I - 0x00A6C9 02:A6B9: 00        .byte $00   ; 
- D 1 - I - 0x00A6CA 02:A6BA: 00        .byte $00   ; 
- D 1 - I - 0x00A6CB 02:A6BB: 00        .byte $00   ; 
- D 1 - I - 0x00A6CC 02:A6BC: 00        .byte $00   ; 
- D 1 - I - 0x00A6CD 02:A6BD: 48        .byte $48   ; 
- D 1 - I - 0x00A6CE 02:A6BE: 60        .byte $60   ; 
- D 1 - I - 0x00A6CF 02:A6BF: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6D0 02:A6C0: 6E        .byte $6E   ; 
- D 1 - I - 0x00A6D1 02:A6C1: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6D2 02:A6C2: 6C        .byte $6C   ; 
off_A6C3_0D:
- D 1 - I - 0x00A6D3 02:A6C3: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6D4 02:A6C4: 6E        .byte $6E   ; 
- D 1 - I - 0x00A6D5 02:A6C5: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6D6 02:A6C6: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6D7 02:A6C7: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6D8 02:A6C8: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6D9 02:A6C9: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6DA 02:A6CA: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6DB 02:A6CB: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6DC 02:A6CC: 78        .byte $78   ; 
- D 1 - I - 0x00A6DD 02:A6CD: 5C        .byte $5C   ; 
- D 1 - I - 0x00A6DE 02:A6CE: 46        .byte $46   ; 
- D 1 - I - 0x00A6DF 02:A6CF: 00        .byte $00   ; 
- D 1 - I - 0x00A6E0 02:A6D0: 00        .byte $00   ; 
- D 1 - I - 0x00A6E1 02:A6D1: 00        .byte $00   ; 
- D 1 - I - 0x00A6E2 02:A6D2: 48        .byte $48   ; 
- D 1 - I - 0x00A6E3 02:A6D3: 60        .byte $60   ; 
- D 1 - I - 0x00A6E4 02:A6D4: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6E5 02:A6D5: 6E        .byte $6E   ; 
- D 1 - I - 0x00A6E6 02:A6D6: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6E7 02:A6D7: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6E8 02:A6D8: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6E9 02:A6D9: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6EA 02:A6DA: 66        .byte $66   ; 
- D 1 - I - 0x00A6EB 02:A6DB: 4A        .byte $4A   ; 
- D 1 - I - 0x00A6EC 02:A6DC: 48        .byte $48   ; 
- D 1 - I - 0x00A6ED 02:A6DD: 60        .byte $60   ; 
- D 1 - I - 0x00A6EE 02:A6DE: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6EF 02:A6DF: 6E        .byte $6E   ; 
- D 1 - I - 0x00A6F0 02:A6E0: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6F1 02:A6E1: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6F2 02:A6E2: 72        .byte $72   ; 
off_A6E3_08:
- D 1 - I - 0x00A6F3 02:A6E3: 73        .byte $73   ; 
- D 1 - I - 0x00A6F4 02:A6E4: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6F5 02:A6E5: 6F        .byte $6F   ; 
- D 1 - I - 0x00A6F6 02:A6E6: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6F7 02:A6E7: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6F8 02:A6E8: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6F9 02:A6E9: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6FA 02:A6EA: 6E        .byte $6E   ; 
- D 1 - I - 0x00A6FB 02:A6EB: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6FC 02:A6EC: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6FD 02:A6ED: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6FE 02:A6EE: 6C        .byte $6C   ; 
- D 1 - I - 0x00A6FF 02:A6EF: 6E        .byte $6E   ; 
- D 1 - I - 0x00A700 02:A6F0: 69        .byte $69   ; 
- D 1 - I - 0x00A701 02:A6F1: 00        .byte $00   ; 
- D 1 - I - 0x00A702 02:A6F2: 00        .byte $00   ; 
- D 1 - I - 0x00A703 02:A6F3: 14        .byte $14   ; 
- D 1 - I - 0x00A704 02:A6F4: 00        .byte $00   ; 
- D 1 - I - 0x00A705 02:A6F5: 40        .byte $40   ; 
- D 1 - I - 0x00A706 02:A6F6: 54        .byte $54   ; 
- D 1 - I - 0x00A707 02:A6F7: 54        .byte $54   ; 
- D 1 - I - 0x00A708 02:A6F8: 54        .byte $54   ; 
- D 1 - I - 0x00A709 02:A6F9: 7E        .byte $7E   ; 
off_A6FA_0D:
- D 1 - I - 0x00A70A 02:A6FA: 6C        .byte $6C   ; 
- D 1 - I - 0x00A70B 02:A6FB: 6C        .byte $6C   ; 
- D 1 - I - 0x00A70C 02:A6FC: 6C        .byte $6C   ; 
- D 1 - I - 0x00A70D 02:A6FD: 6C        .byte $6C   ; 
- D 1 - I - 0x00A70E 02:A6FE: 6C        .byte $6C   ; 
- D 1 - I - 0x00A70F 02:A6FF: 6C        .byte $6C   ; 
- D 1 - I - 0x00A710 02:A700: 6C        .byte $6C   ; 
- D 1 - I - 0x00A711 02:A701: 6C        .byte $6C   ; 
- D 1 - I - 0x00A712 02:A702: 6C        .byte $6C   ; 
- D 1 - I - 0x00A713 02:A703: 66        .byte $66   ; 
- D 1 - I - 0x00A714 02:A704: 00        .byte $00   ; 
- D 1 - I - 0x00A715 02:A705: 00        .byte $00   ; 
- D 1 - I - 0x00A716 02:A706: 00        .byte $00   ; 
- D 1 - I - 0x00A717 02:A707: 00        .byte $00   ; 
- D 1 - I - 0x00A718 02:A708: 00        .byte $00   ; 
- D 1 - I - 0x00A719 02:A709: 14        .byte $14   ; 
- D 1 - I - 0x00A71A 02:A70A: 00        .byte $00   ; 
- D 1 - I - 0x00A71B 02:A70B: 00        .byte $00   ; 
- D 1 - I - 0x00A71C 02:A70C: 00        .byte $00   ; 
- D 1 - I - 0x00A71D 02:A70D: 15        .byte $15   ; 
- D 1 - I - 0x00A71E 02:A70E: 00        .byte $00   ; 
- D 1 - I - 0x00A71F 02:A70F: 00        .byte $00   ; 
- D 1 - I - 0x00A720 02:A710: 00        .byte $00   ; 
- D 1 - I - 0x00A721 02:A711: 00        .byte $00   ; 
- D 1 - I - 0x00A722 02:A712: 44        .byte $44   ; 
- D 1 - I - 0x00A723 02:A713: 5A        .byte $5A   ; 
- D 1 - I - 0x00A724 02:A714: 5A        .byte $5A   ; 
- D 1 - I - 0x00A725 02:A715: 5A        .byte $5A   ; 
- D 1 - I - 0x00A726 02:A716: 7A        .byte $7A   ; 
- D 1 - I - 0x00A727 02:A717: 6C        .byte $6C   ; 
off_A718_11:
- D 1 - I - 0x00A728 02:A718: 6C        .byte $6C   ; 
- D 1 - I - 0x00A729 02:A719: 72        .byte $72   ; 
- D 1 - I - 0x00A72A 02:A71A: EC        .byte $EC   ; 
- D 1 - I - 0x00A72B 02:A71B: 68        .byte $68   ; 
- D 1 - I - 0x00A72C 02:A71C: 4E        .byte $4E   ; 
- D 1 - I - 0x00A72D 02:A71D: 00        .byte $00   ; 
- D 1 - I - 0x00A72E 02:A71E: 00        .byte $00   ; 
- D 1 - I - 0x00A72F 02:A71F: 00        .byte $00   ; 
- D 1 - I - 0x00A730 02:A720: 00        .byte $00   ; 
- D 1 - I - 0x00A731 02:A721: 00        .byte $00   ; 
- D 1 - I - 0x00A732 02:A722: 00        .byte $00   ; 
- D 1 - I - 0x00A733 02:A723: 00        .byte $00   ; 
- D 1 - I - 0x00A734 02:A724: 00        .byte $00   ; 
- D 1 - I - 0x00A735 02:A725: 26        .byte $26   ; 
- D 1 - I - 0x00A736 02:A726: B0        .byte $B0   ; 
- D 1 - I - 0x00A737 02:A727: 95        .byte $95   ; 
- D 1 - I - 0x00A738 02:A728: 96        .byte $96   ; 
- D 1 - I - 0x00A739 02:A729: 96        .byte $96   ; 
- D 1 - I - 0x00A73A 02:A72A: 97        .byte $97   ; 
- D 1 - I - 0x00A73B 02:A72B: 00        .byte $00   ; 
- D 1 - I - 0x00A73C 02:A72C: 00        .byte $00   ; 
- D 1 - I - 0x00A73D 02:A72D: 00        .byte $00   ; 
- D 1 - I - 0x00A73E 02:A72E: 00        .byte $00   ; 
- D 1 - I - 0x00A73F 02:A72F: 00        .byte $00   ; 
- - - - - - 0x00A740 02:A730: 00        .byte $00   ; 
- - - - - - 0x00A741 02:A731: 00        .byte $00   ; 
- - - - - - 0x00A742 02:A732: 00        .byte $00   ; 
- - - - - - 0x00A743 02:A733: 15        .byte $15   ; 
- - - - - - 0x00A744 02:A734: 00        .byte $00   ; 
- - - - - - 0x00A745 02:A735: 00        .byte $00   ; 
- - - - - - 0x00A746 02:A736: 00        .byte $00   ; 
- - - - - - 0x00A747 02:A737: 00        .byte $00   ; 
off_A738_09:
- D 1 - I - 0x00A748 02:A738: 59        .byte $59   ; 
- D 1 - I - 0x00A749 02:A739: 5B        .byte $5B   ; 
- D 1 - I - 0x00A74A 02:A73A: 7B        .byte $7B   ; 
- D 1 - I - 0x00A74B 02:A73B: 6D        .byte $6D   ; 
- D 1 - I - 0x00A74C 02:A73C: 6D        .byte $6D   ; 
- D 1 - I - 0x00A74D 02:A73D: 6D        .byte $6D   ; 
- D 1 - I - 0x00A74E 02:A73E: 6D        .byte $6D   ; 
- D 1 - I - 0x00A74F 02:A73F: 6D        .byte $6D   ; 
- D 1 - I - 0x00A750 02:A740: 6D        .byte $6D   ; 
- D 1 - I - 0x00A751 02:A741: 79        .byte $79   ; 
- D 1 - I - 0x00A752 02:A742: 5B        .byte $5B   ; 
- D 1 - I - 0x00A753 02:A743: 5E        .byte $5E   ; 
- D 1 - I - 0x00A754 02:A744: 5F        .byte $5F   ; 
- D 1 - I - 0x00A755 02:A745: 47        .byte $47   ; 
- D 1 - I - 0x00A756 02:A746: 04        .byte $04   ; 
- D 1 - I - 0x00A757 02:A747: 04        .byte $04   ; 
- D 1 - I - 0x00A758 02:A748: 04        .byte $04   ; 
- D 1 - I - 0x00A759 02:A749: 04        .byte $04   ; 
- D 1 - I - 0x00A75A 02:A74A: 61        .byte $61   ; 
- D 1 - I - 0x00A75B 02:A74B: 71        .byte $71   ; 
- D 1 - I - 0x00A75C 02:A74C: 6D        .byte $6D   ; 
- D 1 - I - 0x00A75D 02:A74D: 79        .byte $79   ; 
- D 1 - I - 0x00A75E 02:A74E: 5B        .byte $5B   ; 
- D 1 - I - 0x00A75F 02:A74F: 5B        .byte $5B   ; 
- D 1 - I - 0x00A760 02:A750: 7B        .byte $7B   ; 
- D 1 - I - 0x00A761 02:A751: 6D        .byte $6D   ; 
- D 1 - I - 0x00A762 02:A752: 6D        .byte $6D   ; 
- D 1 - I - 0x00A763 02:A753: 79        .byte $79   ; 
off_A754_09:
- D 1 - I - 0x00A764 02:A754: 5B        .byte $5B   ; 
- D 1 - I - 0x00A765 02:A755: 5B        .byte $5B   ; 
- D 1 - I - 0x00A766 02:A756: 5B        .byte $5B   ; 
- D 1 - I - 0x00A767 02:A757: 5B        .byte $5B   ; 
- D 1 - I - 0x00A768 02:A758: 7B        .byte $7B   ; 
- D 1 - I - 0x00A769 02:A759: 6D        .byte $6D   ; 
- D 1 - I - 0x00A76A 02:A75A: 6D        .byte $6D   ; 
- D 1 - I - 0x00A76B 02:A75B: 67        .byte $67   ; 
- D 1 - I - 0x00A76C 02:A75C: 4B        .byte $4B   ; 
- D 1 - I - 0x00A76D 02:A75D: 04        .byte $04   ; 
- D 1 - I - 0x00A76E 02:A75E: 04        .byte $04   ; 
- D 1 - I - 0x00A76F 02:A75F: 04        .byte $04   ; 
- D 1 - I - 0x00A770 02:A760: 04        .byte $04   ; 
- D 1 - I - 0x00A771 02:A761: 04        .byte $04   ; 
- D 1 - I - 0x00A772 02:A762: 04        .byte $04   ; 
- D 1 - I - 0x00A773 02:A763: 04        .byte $04   ; 
- D 1 - I - 0x00A774 02:A764: 04        .byte $04   ; 
- D 1 - I - 0x00A775 02:A765: 04        .byte $04   ; 
- D 1 - I - 0x00A776 02:A766: 61        .byte $61   ; 
- D 1 - I - 0x00A777 02:A767: 6D        .byte $6D   ; 
- D 1 - I - 0x00A778 02:A768: 6D        .byte $6D   ; 
- D 1 - I - 0x00A779 02:A769: 71        .byte $71   ; 
- D 1 - I - 0x00A77A 02:A76A: 6D        .byte $6D   ; 
- D 1 - I - 0x00A77B 02:A76B: 79        .byte $79   ; 
- D 1 - I - 0x00A77C 02:A76C: 5E        .byte $5E   ; 
- D 1 - I - 0x00A77D 02:A76D: 47        .byte $47   ; 
- D 1 - I - 0x00A77E 02:A76E: 04        .byte $04   ; 
- D 1 - I - 0x00A77F 02:A76F: 04        .byte $04   ; 
- D 1 - I - 0x00A780 02:A770: 45        .byte $45   ; 
- D 1 - I - 0x00A781 02:A771: 5B        .byte $5B   ; 
- D 1 - I - 0x00A782 02:A772: 5B        .byte $5B   ; 
- D 1 - I - 0x00A783 02:A773: 58        .byte $58   ; 
off_A774_0A:
- D 1 - I - 0x00A784 02:A774: 2C        .byte $2C   ; 
- D 1 - I - 0x00A785 02:A775: 4D        .byte $4D   ; 
- D 1 - I - 0x00A786 02:A776: 61        .byte $61   ; 
- D 1 - I - 0x00A787 02:A777: 6D        .byte $6D   ; 
- D 1 - I - 0x00A788 02:A778: 6D        .byte $6D   ; 
- D 1 - I - 0x00A789 02:A779: 6D        .byte $6D   ; 
- D 1 - I - 0x00A78A 02:A77A: 6D        .byte $6D   ; 
- D 1 - I - 0x00A78B 02:A77B: 6D        .byte $6D   ; 
- D 1 - I - 0x00A78C 02:A77C: 6D        .byte $6D   ; 
- D 1 - I - 0x00A78D 02:A77D: 67        .byte $67   ; 
- D 1 - I - 0x00A78E 02:A77E: 4F        .byte $4F   ; 
- D 1 - I - 0x00A78F 02:A77F: 04        .byte $04   ; 
- D 1 - I - 0x00A790 02:A780: 04        .byte $04   ; 
- D 1 - I - 0x00A791 02:A781: 04        .byte $04   ; 
- D 1 - I - 0x00A792 02:A782: 04        .byte $04   ; 
- D 1 - I - 0x00A793 02:A783: 04        .byte $04   ; 
- D 1 - I - 0x00A794 02:A784: 04        .byte $04   ; 
- D 1 - I - 0x00A795 02:A785: 04        .byte $04   ; 
- D 1 - I - 0x00A796 02:A786: 61        .byte $61   ; 
- D 1 - I - 0x00A797 02:A787: 6D        .byte $6D   ; 
- D 1 - I - 0x00A798 02:A788: 70        .byte $70   ; 
- D 1 - I - 0x00A799 02:A789: 6A        .byte $6A   ; 
- D 1 - I - 0x00A79A 02:A78A: 4F        .byte $4F   ; 
- D 1 - I - 0x00A79B 02:A78B: 4D        .byte $4D   ; 
- D 1 - I - 0x00A79C 02:A78C: 61        .byte $61   ; 
- D 1 - I - 0x00A79D 02:A78D: 71        .byte $71   ; 
- D 1 - I - 0x00A79E 02:A78E: 6D        .byte $6D   ; 
- D 1 - I - 0x00A79F 02:A78F: 6A        .byte $6A   ; 
- D 1 - I - 0x00A7A0 02:A790: 4F        .byte $4F   ; 
off_A791_13:
- D 1 - I - 0x00A7A1 02:A791: 04        .byte $04   ; 
- D 1 - I - 0x00A7A2 02:A792: 04        .byte $04   ; 
- D 1 - I - 0x00A7A3 02:A793: 04        .byte $04   ; 
- D 1 - I - 0x00A7A4 02:A794: 49        .byte $49   ; 
- D 1 - I - 0x00A7A5 02:A795: 61        .byte $61   ; 
- D 1 - I - 0x00A7A6 02:A796: 6D        .byte $6D   ; 
- D 1 - I - 0x00A7A7 02:A797: 6D        .byte $6D   ; 
- D 1 - I - 0x00A7A8 02:A798: 6A        .byte $6A   ; 
- D 1 - I - 0x00A7A9 02:A799: 04        .byte $04   ; 
- D 1 - I - 0x00A7AA 02:A79A: 04        .byte $04   ; 
- D 1 - I - 0x00A7AB 02:A79B: 04        .byte $04   ; 
- D 1 - I - 0x00A7AC 02:A79C: 04        .byte $04   ; 
- D 1 - I - 0x00A7AD 02:A79D: 04        .byte $04   ; 
- D 1 - I - 0x00A7AE 02:A79E: 04        .byte $04   ; 
- D 1 - I - 0x00A7AF 02:A79F: 61        .byte $61   ; 
- D 1 - I - 0x00A7B0 02:A7A0: 71        .byte $71   ; 
- D 1 - I - 0x00A7B1 02:A7A1: 6D        .byte $6D   ; 
- D 1 - I - 0x00A7B2 02:A7A2: 6D        .byte $6D   ; 
- D 1 - I - 0x00A7B3 02:A7A3: 6D        .byte $6D   ; 
- D 1 - I - 0x00A7B4 02:A7A4: 6D        .byte $6D   ; 
- D 1 - I - 0x00A7B5 02:A7A5: 6D        .byte $6D   ; 
- D 1 - I - 0x00A7B6 02:A7A6: 67        .byte $67   ; 
- D 1 - I - 0x00A7B7 02:A7A7: 04        .byte $04   ; 
- D 1 - I - 0x00A7B8 02:A7A8: 04        .byte $04   ; 
- D 1 - I - 0x00A7B9 02:A7A9: 04        .byte $04   ; 
- D 1 - I - 0x00A7BA 02:A7AA: 04        .byte $04   ; 
- D 1 - I - 0x00A7BB 02:A7AB: 04        .byte $04   ; 
- D 1 - I - 0x00A7BC 02:A7AC: 04        .byte $04   ; 
- D 1 - I - 0x00A7BD 02:A7AD: 04        .byte $04   ; 
- D 1 - I - 0x00A7BE 02:A7AE: 04        .byte $04   ; 
- D 1 - I - 0x00A7BF 02:A7AF: 04        .byte $04   ; 
- D 1 - I - 0x00A7C0 02:A7B0: 2B        .byte $2B   ; 
off_A7B1_0B:
- D 1 - I - 0x00A7C1 02:A7B1: 2C        .byte $2C   ; 
- D 1 - I - 0x00A7C2 02:A7B2: 04        .byte $04   ; 
- D 1 - I - 0x00A7C3 02:A7B3: 45        .byte $45   ; 
- D 1 - I - 0x00A7C4 02:A7B4: 5B        .byte $5B   ; 
- D 1 - I - 0x00A7C5 02:A7B5: 5B        .byte $5B   ; 
- D 1 - I - 0x00A7C6 02:A7B6: 5B        .byte $5B   ; 
- D 1 - I - 0x00A7C7 02:A7B7: 7B        .byte $7B   ; 
- D 1 - I - 0x00A7C8 02:A7B8: 70        .byte $70   ; 
- D 1 - I - 0x00A7C9 02:A7B9: 6D        .byte $6D   ; 
- D 1 - I - 0x00A7CA 02:A7BA: 67        .byte $67   ; 
- D 1 - I - 0x00A7CB 02:A7BB: 04        .byte $04   ; 
- D 1 - I - 0x00A7CC 02:A7BC: 04        .byte $04   ; 
- D 1 - I - 0x00A7CD 02:A7BD: 04        .byte $04   ; 
- D 1 - I - 0x00A7CE 02:A7BE: 04        .byte $04   ; 
- D 1 - I - 0x00A7CF 02:A7BF: 16        .byte $16   ; 
- D 1 - I - 0x00A7D0 02:A7C0: 04        .byte $04   ; 
- D 1 - I - 0x00A7D1 02:A7C1: 04        .byte $04   ; 
- D 1 - I - 0x00A7D2 02:A7C2: 04        .byte $04   ; 
- D 1 - I - 0x00A7D3 02:A7C3: 45        .byte $45   ; 
- D 1 - I - 0x00A7D4 02:A7C4: 5E        .byte $5E   ; 
- D 1 - I - 0x00A7D5 02:A7C5: 5F        .byte $5F   ; 
- D 1 - I - 0x00A7D6 02:A7C6: 47        .byte $47   ; 
- D 1 - I - 0x00A7D7 02:A7C7: 04        .byte $04   ; 
- D 1 - I - 0x00A7D8 02:A7C8: 04        .byte $04   ; 
- D 1 - I - 0x00A7D9 02:A7C9: 45        .byte $45   ; 
- D 1 - I - 0x00A7DA 02:A7CA: 5E        .byte $5E   ; 
- D 1 - I - 0x00A7DB 02:A7CB: 5F        .byte $5F   ; 
- D 1 - I - 0x00A7DC 02:A7CC: 47        .byte $47   ; 
- D 1 - I - 0x00A7DD 02:A7CD: 04        .byte $04   ; 
off_A7CE_03:
- D 1 - I - 0x00A7DE 02:A7CE: 04        .byte $04   ; 
- D 1 - I - 0x00A7DF 02:A7CF: 16        .byte $16   ; 
- D 1 - I - 0x00A7E0 02:A7D0: 04        .byte $04   ; 
- D 1 - I - 0x00A7E1 02:A7D1: 2B        .byte $2B   ; 
- D 1 - I - 0x00A7E2 02:A7D2: 30        .byte $30   ; 
- D 1 - I - 0x00A7E3 02:A7D3: 04        .byte $04   ; 
- D 1 - I - 0x00A7E4 02:A7D4: 04        .byte $04   ; 
- D 1 - I - 0x00A7E5 02:A7D5: 49        .byte $49   ; 
- D 1 - I - 0x00A7E6 02:A7D6: 61        .byte $61   ; 
- D 1 - I - 0x00A7E7 02:A7D7: 70        .byte $70   ; 
- D 1 - I - 0x00A7E8 02:A7D8: 6D        .byte $6D   ; 
- D 1 - I - 0x00A7E9 02:A7D9: 67        .byte $67   ; 
- D 1 - I - 0x00A7EA 02:A7DA: 04        .byte $04   ; 
- D 1 - I - 0x00A7EB 02:A7DB: 04        .byte $04   ; 
- D 1 - I - 0x00A7EC 02:A7DC: 04        .byte $04   ; 
- D 1 - I - 0x00A7ED 02:A7DD: 36        .byte $36   ; 
- D 1 - I - 0x00A7EE 02:A7DE: 04        .byte $04   ; 
- D 1 - I - 0x00A7EF 02:A7DF: 16        .byte $16   ; 
- D 1 - I - 0x00A7F0 02:A7E0: 04        .byte $04   ; 
- D 1 - I - 0x00A7F1 02:A7E1: 16        .byte $16   ; 
off_A7E2_17:
- D 1 - I - 0x00A7F2 02:A7E2: 04        .byte $04   ; 
- D 1 - I - 0x00A7F3 02:A7E3: 04        .byte $04   ; 
- D 1 - I - 0x00A7F4 02:A7E4: 04        .byte $04   ; 
- D 1 - I - 0x00A7F5 02:A7E5: 04        .byte $04   ; 
- - - - - - 0x00A7F6 02:A7E6: 04        .byte $04   ; 
- - - - - - 0x00A7F7 02:A7E7: 04        .byte $04   ; 
- - - - - - 0x00A7F8 02:A7E8: 04        .byte $04   ; 
- - - - - - 0x00A7F9 02:A7E9: 04        .byte $04   ; 
- - - - - - 0x00A7FA 02:A7EA: 04        .byte $04   ; 
- D 1 - I - 0x00A7FB 02:A7EB: 04        .byte $04   ; 
- D 1 - I - 0x00A7FC 02:A7EC: 04        .byte $04   ; 
- D 1 - I - 0x00A7FD 02:A7ED: 04        .byte $04   ; 
- D 1 - I - 0x00A7FE 02:A7EE: D0        .byte $D0   ; 
- D 1 - I - 0x00A7FF 02:A7EF: D8        .byte $D8   ; 
- D 1 - I - 0x00A800 02:A7F0: D6        .byte $D6   ; 
- D 1 - I - 0x00A801 02:A7F1: D6        .byte $D6   ; 
- D 1 - I - 0x00A802 02:A7F2: A0        .byte $A0   ; 
- D 1 - I - 0x00A803 02:A7F3: 33        .byte $33   ; 
- D 1 - I - 0x00A804 02:A7F4: 04        .byte $04   ; 
- D 1 - I - 0x00A805 02:A7F5: 04        .byte $04   ; 
- D 1 - I - 0x00A806 02:A7F6: 04        .byte $04   ; 
- D 1 - I - 0x00A807 02:A7F7: 04        .byte $04   ; 
- D 1 - I - 0x00A808 02:A7F8: 36        .byte $36   ; 
- D 1 - I - 0x00A809 02:A7F9: 04        .byte $04   ; 
- D 1 - I - 0x00A80A 02:A7FA: 04        .byte $04   ; 
- D 1 - I - 0x00A80B 02:A7FB: 04        .byte $04   ; 
- D 1 - I - 0x00A80C 02:A7FC: 04        .byte $04   ; 
- D 1 - I - 0x00A80D 02:A7FD: 04        .byte $04   ; 
- D 1 - I - 0x00A80E 02:A7FE: 04        .byte $04   ; 
- D 1 - I - 0x00A80F 02:A7FF: 32        .byte $32   ; 
- D 1 - I - 0x00A810 02:A800: 04        .byte $04   ; 
- D 1 - I - 0x00A811 02:A801: 1F        .byte $1F   ; 
off_A802_0C:
- D 1 - I - 0x00A812 02:A802: 1C        .byte $1C   ; 
- D 1 - I - 0x00A813 02:A803: 00        .byte $00   ; 
- D 1 - I - 0x00A814 02:A804: 00        .byte $00   ; 
- D 1 - I - 0x00A815 02:A805: 00        .byte $00   ; 
- D 1 - I - 0x00A816 02:A806: 00        .byte $00   ; 
- D 1 - I - 0x00A817 02:A807: 4C        .byte $4C   ; 
- D 1 - I - 0x00A818 02:A808: 60        .byte $60   ; 
- D 1 - I - 0x00A819 02:A809: 6C        .byte $6C   ; 
- D 1 - I - 0x00A81A 02:A80A: 6C        .byte $6C   ; 
- D 1 - I - 0x00A81B 02:A80B: 66        .byte $66   ; 
- D 1 - I - 0x00A81C 02:A80C: 00        .byte $00   ; 
- D 1 - I - 0x00A81D 02:A80D: 00        .byte $00   ; 
- D 1 - I - 0x00A81E 02:A80E: 00        .byte $00   ; 
off_A80F_09:
- D 1 - I - 0x00A81F 02:A80F: 00        .byte $00   ; 
- D 1 - I - 0x00A820 02:A810: 00        .byte $00   ; 
- D 1 - I - 0x00A821 02:A811: 00        .byte $00   ; 
- D 1 - I - 0x00A822 02:A812: 00        .byte $00   ; 
- D 1 - I - 0x00A823 02:A813: 00        .byte $00   ; 
- D 1 - I - 0x00A824 02:A814: 00        .byte $00   ; 
- D 1 - I - 0x00A825 02:A815: 00        .byte $00   ; 
- D 1 - I - 0x00A826 02:A816: 00        .byte $00   ; 
- D 1 - I - 0x00A827 02:A817: 00        .byte $00   ; 
- D 1 - I - 0x00A828 02:A818: 00        .byte $00   ; 
- D 1 - I - 0x00A829 02:A819: 00        .byte $00   ; 
- D 1 - I - 0x00A82A 02:A81A: 00        .byte $00   ; 
- D 1 - I - 0x00A82B 02:A81B: 00        .byte $00   ; 
- D 1 - I - 0x00A82C 02:A81C: 00        .byte $00   ; 
- D 1 - I - 0x00A82D 02:A81D: 00        .byte $00   ; 
- D 1 - I - 0x00A82E 02:A81E: 00        .byte $00   ; 
- D 1 - I - 0x00A82F 02:A81F: 00        .byte $00   ; 
- D 1 - I - 0x00A830 02:A820: 00        .byte $00   ; 
- D 1 - I - 0x00A831 02:A821: 00        .byte $00   ; 
- D 1 - I - 0x00A832 02:A822: 21        .byte $21   ; 
- D 1 - I - 0x00A833 02:A823: 00        .byte $00   ; 
- D 1 - I - 0x00A834 02:A824: 00        .byte $00   ; 
- D 1 - I - 0x00A835 02:A825: 00        .byte $00   ; 
- D 1 - I - 0x00A836 02:A826: 48        .byte $48   ; 
- D 1 - I - 0x00A837 02:A827: 60        .byte $60   ; 
- D 1 - I - 0x00A838 02:A828: 6E        .byte $6E   ; 
- D 1 - I - 0x00A839 02:A829: 6C        .byte $6C   ; 
- D 1 - I - 0x00A83A 02:A82A: 6C        .byte $6C   ; 
- D 1 - I - 0x00A83B 02:A82B: 6C        .byte $6C   ; 
- D 1 - I - 0x00A83C 02:A82C: 66        .byte $66   ; 
- D 1 - I - 0x00A83D 02:A82D: 4A        .byte $4A   ; 
- D 1 - I - 0x00A83E 02:A82E: 00        .byte $00   ; 
off_A82F_0E:
- D 1 - I - 0x00A83F 02:A82F: 00        .byte $00   ; 
- D 1 - I - 0x00A840 02:A830: 00        .byte $00   ; 
- D 1 - I - 0x00A841 02:A831: 00        .byte $00   ; 
- D 1 - I - 0x00A842 02:A832: 00        .byte $00   ; 
- D 1 - I - 0x00A843 02:A833: 00        .byte $00   ; 
- D 1 - I - 0x00A844 02:A834: 14        .byte $14   ; 
- D 1 - I - 0x00A845 02:A835: 60        .byte $60   ; 
- D 1 - I - 0x00A846 02:A836: 6C        .byte $6C   ; 
- D 1 - I - 0x00A847 02:A837: 6E        .byte $6E   ; 
- D 1 - I - 0x00A848 02:A838: 66        .byte $66   ; 
- D 1 - I - 0x00A849 02:A839: 00        .byte $00   ; 
- D 1 - I - 0x00A84A 02:A83A: 15        .byte $15   ; 
- D 1 - I - 0x00A84B 02:A83B: 00        .byte $00   ; 
- D 1 - I - 0x00A84C 02:A83C: 00        .byte $00   ; 
- D 1 - I - 0x00A84D 02:A83D: 00        .byte $00   ; 
- D 1 - I - 0x00A84E 02:A83E: 00        .byte $00   ; 
- D 1 - I - 0x00A84F 02:A83F: 00        .byte $00   ; 
- D 1 - I - 0x00A850 02:A840: 00        .byte $00   ; 
- D 1 - I - 0x00A851 02:A841: 00        .byte $00   ; 
- D 1 - I - 0x00A852 02:A842: 00        .byte $00   ; 
- D 1 - I - 0x00A853 02:A843: 00        .byte $00   ; 
- D 1 - I - 0x00A854 02:A844: 15        .byte $15   ; 
off_A845_02:
- D 1 - I - 0x00A855 02:A845: 00        .byte $00   ; 
- D 1 - I - 0x00A856 02:A846: 00        .byte $00   ; 
- D 1 - I - 0x00A857 02:A847: 14        .byte $14   ; 
- D 1 - I - 0x00A858 02:A848: 00        .byte $00   ; 
- D 1 - I - 0x00A859 02:A849: 00        .byte $00   ; 
- D 1 - I - 0x00A85A 02:A84A: 00        .byte $00   ; 
- D 1 - I - 0x00A85B 02:A84B: 00        .byte $00   ; 
- D 1 - I - 0x00A85C 02:A84C: 00        .byte $00   ; 
- D 1 - I - 0x00A85D 02:A84D: 00        .byte $00   ; 
- D 1 - I - 0x00A85E 02:A84E: 00        .byte $00   ; 
- D 1 - I - 0x00A85F 02:A84F: 00        .byte $00   ; 
- D 1 - I - 0x00A860 02:A850: 00        .byte $00   ; 
- D 1 - I - 0x00A861 02:A851: 00        .byte $00   ; 
- D 1 - I - 0x00A862 02:A852: 00        .byte $00   ; 
- D 1 - I - 0x00A863 02:A853: 00        .byte $00   ; 
- D 1 - I - 0x00A864 02:A854: 00        .byte $00   ; 
- D 1 - I - 0x00A865 02:A855: 22        .byte $22   ; 
- D 1 - I - 0x00A866 02:A856: 00        .byte $00   ; 
- D 1 - I - 0x00A867 02:A857: 15        .byte $15   ; 
- D 1 - I - 0x00A868 02:A858: 00        .byte $00   ; 
- D 1 - I - 0x00A869 02:A859: 00        .byte $00   ; 
- D 1 - I - 0x00A86A 02:A85A: 00        .byte $00   ; 
- D 1 - I - 0x00A86B 02:A85B: 60        .byte $60   ; 
- D 1 - I - 0x00A86C 02:A85C: 6E        .byte $6E   ; 
- D 1 - I - 0x00A86D 02:A85D: 6C        .byte $6C   ; 
- D 1 - I - 0x00A86E 02:A85E: 66        .byte $66   ; 
- D 1 - I - 0x00A86F 02:A85F: 00        .byte $00   ; 
- D 1 - I - 0x00A870 02:A860: 00        .byte $00   ; 
- D 1 - I - 0x00A871 02:A861: 21        .byte $21   ; 
- D 1 - I - 0x00A872 02:A862: 00        .byte $00   ; 
- D 1 - I - 0x00A873 02:A863: 40        .byte $40   ; 
off_A864_0A:
- D 1 - I - 0x00A874 02:A864: 54        .byte $54   ; 
- D 1 - I - 0x00A875 02:A865: 54        .byte $54   ; 
- D 1 - I - 0x00A876 02:A866: 42        .byte $42   ; 
- D 1 - I - 0x00A877 02:A867: 00        .byte $00   ; 
- D 1 - I - 0x00A878 02:A868: 00        .byte $00   ; 
- D 1 - I - 0x00A879 02:A869: 00        .byte $00   ; 
- D 1 - I - 0x00A87A 02:A86A: 44        .byte $44   ; 
- D 1 - I - 0x00A87B 02:A86B: 5A        .byte $5A   ; 
- D 1 - I - 0x00A87C 02:A86C: 7A        .byte $7A   ; 
- D 1 - I - 0x00A87D 02:A86D: 7C        .byte $7C   ; 
- D 1 - I - 0x00A87E 02:A86E: 54        .byte $54   ; 
- D 1 - I - 0x00A87F 02:A86F: 42        .byte $42   ; 
- D 1 - I - 0x00A880 02:A870: 1B        .byte $1B   ; 
- D 1 - I - 0x00A881 02:A871: 20        .byte $20   ; 
- D 1 - I - 0x00A882 02:A872: 00        .byte $00   ; 
- D 1 - I - 0x00A883 02:A873: 00        .byte $00   ; 
- D 1 - I - 0x00A884 02:A874: 00        .byte $00   ; 
- D 1 - I - 0x00A885 02:A875: 00        .byte $00   ; 
- D 1 - I - 0x00A886 02:A876: 00        .byte $00   ; 
off_A877_12:
- D 1 - I - 0x00A887 02:A877: 00        .byte $00   ; 
- D 1 - I - 0x00A888 02:A878: 00        .byte $00   ; 
- D 1 - I - 0x00A889 02:A879: 00        .byte $00   ; 
- D 1 - I - 0x00A88A 02:A87A: 00        .byte $00   ; 
- D 1 - I - 0x00A88B 02:A87B: 00        .byte $00   ; 
- - - - - - 0x00A88C 02:A87C: 14        .byte $14   ; 
- - - - - - 0x00A88D 02:A87D: 00        .byte $00   ; 
- - - - - - 0x00A88E 02:A87E: 00        .byte $00   ; 
- - - - - - 0x00A88F 02:A87F: 00        .byte $00   ; 
- D 1 - I - 0x00A890 02:A880: 00        .byte $00   ; 
- D 1 - I - 0x00A891 02:A881: 00        .byte $00   ; 
- D 1 - I - 0x00A892 02:A882: 00        .byte $00   ; 
- D 1 - I - 0x00A893 02:A883: 00        .byte $00   ; 
- D 1 - I - 0x00A894 02:A884: A5        .byte $A5   ; 
- D 1 - I - 0x00A895 02:A885: A6        .byte $A6   ; 
- D 1 - I - 0x00A896 02:A886: A6        .byte $A6   ; 
- D 1 - I - 0x00A897 02:A887: A7        .byte $A7   ; 
- D 1 - I - 0x00A898 02:A888: A8        .byte $A8   ; 
- D 1 - I - 0x00A899 02:A889: 87        .byte $87   ; 
- D 1 - I - 0x00A89A 02:A88A: 10        .byte $10   ; 
- D 1 - I - 0x00A89B 02:A88B: 10        .byte $10   ; 
- D 1 - I - 0x00A89C 02:A88C: 10        .byte $10   ; 
- D 1 - I - 0x00A89D 02:A88D: 10        .byte $10   ; 
- D 1 - I - 0x00A89E 02:A88E: 8A        .byte $8A   ; 
- D 1 - I - 0x00A89F 02:A88F: 00        .byte $00   ; 
- D 1 - I - 0x00A8A0 02:A890: 00        .byte $00   ; 
- D 1 - I - 0x00A8A1 02:A891: 00        .byte $00   ; 
- D 1 - I - 0x00A8A2 02:A892: 00        .byte $00   ; 
- D 1 - I - 0x00A8A3 02:A893: 00        .byte $00   ; 
- D 1 - I - 0x00A8A4 02:A894: 1B        .byte $1B   ; 
- D 1 - I - 0x00A8A5 02:A895: 20        .byte $20   ; 
- D 1 - I - 0x00A8A6 02:A896: 00        .byte $00   ; 
off_A897_06:
- D 1 - I - 0x00A8A7 02:A897: 50        .byte $50   ; 
- D 1 - I - 0x00A8A8 02:A898: 00        .byte $00   ; 
- D 1 - I - 0x00A8A9 02:A899: 04        .byte $04   ; 
- D 1 - I - 0x00A8AA 02:A89A: 55        .byte $55   ; 
- D 1 - I - 0x00A8AB 02:A89B: 55        .byte $55   ; 
- D 1 - I - 0x00A8AC 02:A89C: 11        .byte $11   ; 
- D 1 - I - 0x00A8AD 02:A89D: 54        .byte $54   ; 
- D 1 - I - 0x00A8AE 02:A89E: 51        .byte $51   ; 
- D 1 - I - 0x00A8AF 02:A89F: 55        .byte $55   ; 
- D 1 - I - 0x00A8B0 02:A8A0: 55        .byte $55   ; 
- D 1 - I - 0x00A8B1 02:A8A1: 50        .byte $50   ; 
- D 1 - I - 0x00A8B2 02:A8A2: 10        .byte $10   ; 
- D 1 - I - 0x00A8B3 02:A8A3: 00        .byte $00   ; 
- D 1 - I - 0x00A8B4 02:A8A4: 54        .byte $54   ; 
- D 1 - I - 0x00A8B5 02:A8A5: 55        .byte $55   ; 
- D 1 - I - 0x00A8B6 02:A8A6: 55        .byte $55   ; 
- D 1 - I - 0x00A8B7 02:A8A7: 55        .byte $55   ; 
- D 1 - I - 0x00A8B8 02:A8A8: 55        .byte $55   ; 
- D 1 - I - 0x00A8B9 02:A8A9: 55        .byte $55   ; 
- D 1 - I - 0x00A8BA 02:A8AA: 01        .byte $01   ; 
- D 1 - I - 0x00A8BB 02:A8AB: 44        .byte $44   ; 
- D 1 - I - 0x00A8BC 02:A8AC: 55        .byte $55   ; 
- D 1 - I - 0x00A8BD 02:A8AD: 55        .byte $55   ; 
- D 1 - I - 0x00A8BE 02:A8AE: 15        .byte $15   ; 
- D 1 - I - 0x00A8BF 02:A8AF: 00        .byte $00   ; 
- D 1 - I - 0x00A8C0 02:A8B0: 45        .byte $45   ; 
- D 1 - I - 0x00A8C1 02:A8B1: 11        .byte $11   ; 
- D 1 - I - 0x00A8C2 02:A8B2: 00        .byte $00   ; 
- D 1 - I - 0x00A8C3 02:A8B3: 00        .byte $00   ; 
- D 1 - I - 0x00A8C4 02:A8B4: 00        .byte $00   ; 
- D 1 - I - 0x00A8C5 02:A8B5: 00        .byte $00   ; 
- D 1 - I - 0x00A8C6 02:A8B6: 00        .byte $00   ; 
- - - - - - 0x00A8C7 02:A8B7: 00        .byte $00   ; 
- - - - - - 0x00A8C8 02:A8B8: 00        .byte $00   ; 
- - - - - - 0x00A8C9 02:A8B9: 00        .byte $00   ; 
- - - - - - 0x00A8CA 02:A8BA: 00        .byte $00   ; 
- - - - - - 0x00A8CB 02:A8BB: 00        .byte $00   ; 
- - - - - - 0x00A8CC 02:A8BC: 00        .byte $00   ; 
- - - - - - 0x00A8CD 02:A8BD: 00        .byte $00   ; 
- - - - - - 0x00A8CE 02:A8BE: 00        .byte $00   ; 
- - - - - - 0x00A8CF 02:A8BF: 00        .byte $00   ; 
- - - - - - 0x00A8D0 02:A8C0: 00        .byte $00   ; 
- - - - - - 0x00A8D1 02:A8C1: 00        .byte $00   ; 
- - - - - - 0x00A8D2 02:A8C2: 00        .byte $00   ; 
- - - - - - 0x00A8D3 02:A8C3: 00        .byte $00   ; 
- - - - - - 0x00A8D4 02:A8C4: 00        .byte $00   ; 
- - - - - - 0x00A8D5 02:A8C5: 00        .byte $00   ; 
- - - - - - 0x00A8D6 02:A8C6: 00        .byte $00   ; 
- - - - - - 0x00A8D7 02:A8C7: 00        .byte $00   ; 
- - - - - - 0x00A8D8 02:A8C8: 00        .byte $00   ; 
- - - - - - 0x00A8D9 02:A8C9: 00        .byte $00   ; 
- - - - - - 0x00A8DA 02:A8CA: 00        .byte $00   ; 
- - - - - - 0x00A8DB 02:A8CB: 00        .byte $00   ; 
- - - - - - 0x00A8DC 02:A8CC: 00        .byte $00   ; 
- - - - - - 0x00A8DD 02:A8CD: 00        .byte $00   ; 
- - - - - - 0x00A8DE 02:A8CE: 00        .byte $00   ; 
- - - - - - 0x00A8DF 02:A8CF: 00        .byte $00   ; 
- - - - - - 0x00A8E0 02:A8D0: 00        .byte $00   ; 
- - - - - - 0x00A8E1 02:A8D1: 00        .byte $00   ; 
- - - - - - 0x00A8E2 02:A8D2: 00        .byte $00   ; 
- - - - - - 0x00A8E3 02:A8D3: 00        .byte $00   ; 
- - - - - - 0x00A8E4 02:A8D4: 00        .byte $00   ; 
- - - - - - 0x00A8E5 02:A8D5: 00        .byte $00   ; 
- - - - - - 0x00A8E6 02:A8D6: 00        .byte $00   ; 
off_A8D7_02:
- D 1 - I - 0x00A8E7 02:A8D7: 00        .byte $00   ; 
- D 1 - I - 0x00A8E8 02:A8D8: 00        .byte $00   ; 
- D 1 - I - 0x00A8E9 02:A8D9: 00        .byte $00   ; 
- D 1 - I - 0x00A8EA 02:A8DA: 26        .byte $26   ; 
- D 1 - I - 0x00A8EB 02:A8DB: 00        .byte $00   ; 
- D 1 - I - 0x00A8EC 02:A8DC: 00        .byte $00   ; 
- D 1 - I - 0x00A8ED 02:A8DD: 00        .byte $00   ; 
- D 1 - I - 0x00A8EE 02:A8DE: 00        .byte $00   ; 
- D 1 - I - 0x00A8EF 02:A8DF: 40        .byte $40   ; 
- D 1 - I - 0x00A8F0 02:A8E0: 54        .byte $54   ; 
- D 1 - I - 0x00A8F1 02:A8E1: 54        .byte $54   ; 
- D 1 - I - 0x00A8F2 02:A8E2: 42        .byte $42   ; 
- D 1 - I - 0x00A8F3 02:A8E3: 15        .byte $15   ; 
- D 1 - I - 0x00A8F4 02:A8E4: 00        .byte $00   ; 
- D 1 - I - 0x00A8F5 02:A8E5: 00        .byte $00   ; 
- D 1 - I - 0x00A8F6 02:A8E6: 25        .byte $25   ; 
- D 1 - I - 0x00A8F7 02:A8E7: 00        .byte $00   ; 
- D 1 - I - 0x00A8F8 02:A8E8: 00        .byte $00   ; 
- D 1 - I - 0x00A8F9 02:A8E9: 00        .byte $00   ; 
- D 1 - I - 0x00A8FA 02:A8EA: 00        .byte $00   ; 
- D 1 - I - 0x00A8FB 02:A8EB: 00        .byte $00   ; 
- D 1 - I - 0x00A8FC 02:A8EC: 00        .byte $00   ; 
- D 1 - I - 0x00A8FD 02:A8ED: 14        .byte $14   ; 
- D 1 - I - 0x00A8FE 02:A8EE: 00        .byte $00   ; 
- - - - - - 0x00A8FF 02:A8EF: 00        .byte $00   ; 
off_A8F0_07:
- - - - - - 0x00A900 02:A8F0: 00        .byte $00   ; 
- - - - - - 0x00A901 02:A8F1: 14        .byte $14   ; 
- - - - - - 0x00A902 02:A8F2: 00        .byte $00   ; 
- - - - - - 0x00A903 02:A8F3: 00        .byte $00   ; 
- - - - - - 0x00A904 02:A8F4: 00        .byte $00   ; 
- - - - - - 0x00A905 02:A8F5: 00        .byte $00   ; 
- - - - - - 0x00A906 02:A8F6: 00        .byte $00   ; 
- - - - - - 0x00A907 02:A8F7: 00        .byte $00   ; 
- - - - - - 0x00A908 02:A8F8: 00        .byte $00   ; 
- D 1 - I - 0x00A909 02:A8F9: 00        .byte $00   ; 
- D 1 - I - 0x00A90A 02:A8FA: 00        .byte $00   ; 
- D 1 - I - 0x00A90B 02:A8FB: 00        .byte $00   ; 
- D 1 - I - 0x00A90C 02:A8FC: 00        .byte $00   ; 
- D 1 - I - 0x00A90D 02:A8FD: 00        .byte $00   ; 
- D 1 - I - 0x00A90E 02:A8FE: 00        .byte $00   ; 
- D 1 - I - 0x00A90F 02:A8FF: 25        .byte $25   ; 
- D 1 - I - 0x00A910 02:A900: 00        .byte $00   ; 
- D 1 - I - 0x00A911 02:A901: 00        .byte $00   ; 
- D 1 - I - 0x00A912 02:A902: 00        .byte $00   ; 
- D 1 - I - 0x00A913 02:A903: 00        .byte $00   ; 
- D 1 - I - 0x00A914 02:A904: 44        .byte $44   ; 
- D 1 - I - 0x00A915 02:A905: 5A        .byte $5A   ; 
- D 1 - I - 0x00A916 02:A906: 5A        .byte $5A   ; 
- D 1 - I - 0x00A917 02:A907: 5A        .byte $5A   ; 
- D 1 - I - 0x00A918 02:A908: 5A        .byte $5A   ; 
- D 1 - I - 0x00A919 02:A909: 5A        .byte $5A   ; 
- D 1 - I - 0x00A91A 02:A90A: 7A        .byte $7A   ; 
off_A90B_0E:
- D 1 - I - 0x00A91B 02:A90B: 6C        .byte $6C   ; 
- D 1 - I - 0x00A91C 02:A90C: 6C        .byte $6C   ; 
- D 1 - I - 0x00A91D 02:A90D: 6C        .byte $6C   ; 
- D 1 - I - 0x00A91E 02:A90E: 6C        .byte $6C   ; 
- D 1 - I - 0x00A91F 02:A90F: 6C        .byte $6C   ; 
- D 1 - I - 0x00A920 02:A910: 6F        .byte $6F   ; 
- D 1 - I - 0x00A921 02:A911: 6C        .byte $6C   ; 
- D 1 - I - 0x00A922 02:A912: 6C        .byte $6C   ; 
- D 1 - I - 0x00A923 02:A913: 6C        .byte $6C   ; 
- D 1 - I - 0x00A924 02:A914: 66        .byte $66   ; 
- D 1 - I - 0x00A925 02:A915: 4E        .byte $4E   ; 
- D 1 - I - 0x00A926 02:A916: 00        .byte $00   ; 
- D 1 - I - 0x00A927 02:A917: 00        .byte $00   ; 
- D 1 - I - 0x00A928 02:A918: 00        .byte $00   ; 
- D 1 - I - 0x00A929 02:A919: 40        .byte $40   ; 
- D 1 - I - 0x00A92A 02:A91A: 54        .byte $54   ; 
- D 1 - I - 0x00A92B 02:A91B: 7E        .byte $7E   ; 
- D 1 - I - 0x00A92C 02:A91C: 6C        .byte $6C   ; 
- D 1 - I - 0x00A92D 02:A91D: 6C        .byte $6C   ; 
- D 1 - I - 0x00A92E 02:A91E: 6C        .byte $6C   ; 
- D 1 - I - 0x00A92F 02:A91F: 6C        .byte $6C   ; 
- D 1 - I - 0x00A930 02:A920: 6C        .byte $6C   ; 
- D 1 - I - 0x00A931 02:A921: 6C        .byte $6C   ; 
- D 1 - I - 0x00A932 02:A922: 7C        .byte $7C   ; 
- D 1 - I - 0x00A933 02:A923: 54        .byte $54   ; 
- D 1 - I - 0x00A934 02:A924: 54        .byte $54   ; 
- D 1 - I - 0x00A935 02:A925: 7E        .byte $7E   ; 
- D 1 - I - 0x00A936 02:A926: 6C        .byte $6C   ; 
- D 1 - I - 0x00A937 02:A927: 6C        .byte $6C   ; 
- D 1 - I - 0x00A938 02:A928: 6C        .byte $6C   ; 
- D 1 - I - 0x00A939 02:A929: 6C        .byte $6C   ; 
- D 1 - I - 0x00A93A 02:A92A: 72        .byte $72   ; 
off_A92B_06:
- D 1 - I - 0x00A93B 02:A92B: 7C        .byte $7C   ; 
- D 1 - I - 0x00A93C 02:A92C: 54        .byte $54   ; 
- D 1 - I - 0x00A93D 02:A92D: 42        .byte $42   ; 
- D 1 - I - 0x00A93E 02:A92E: 00        .byte $00   ; 
- D 1 - I - 0x00A93F 02:A92F: 94        .byte $94   ; 
- D 1 - I - 0x00A940 02:A930: 12        .byte $12   ; 
- D 1 - I - 0x00A941 02:A931: 63        .byte $63   ; 
- D 1 - I - 0x00A942 02:A932: 77        .byte $77   ; 
- D 1 - I - 0x00A943 02:A933: 77        .byte $77   ; 
- D 1 - I - 0x00A944 02:A934: 77        .byte $77   ; 
- D 1 - I - 0x00A945 02:A935: 77        .byte $77   ; 
- D 1 - I - 0x00A946 02:A936: 77        .byte $77   ; 
- D 1 - I - 0x00A947 02:A937: 77        .byte $77   ; 
- D 1 - I - 0x00A948 02:A938: 77        .byte $77   ; 
- D 1 - I - 0x00A949 02:A939: 65        .byte $65   ; 
- D 1 - I - 0x00A94A 02:A93A: 12        .byte $12   ; 
- D 1 - I - 0x00A94B 02:A93B: 21        .byte $21   ; 
- D 1 - I - 0x00A94C 02:A93C: 00        .byte $00   ; 
- D 1 - I - 0x00A94D 02:A93D: 00        .byte $00   ; 
- D 1 - I - 0x00A94E 02:A93E: 00        .byte $00   ; 
- D 1 - I - 0x00A94F 02:A93F: 00        .byte $00   ; 
- D 1 - I - 0x00A950 02:A940: 00        .byte $00   ; 
- D 1 - I - 0x00A951 02:A941: 00        .byte $00   ; 
- D 1 - I - 0x00A952 02:A942: 00        .byte $00   ; 
- - - - - - 0x00A953 02:A943: 14        .byte $14   ; 
- - - - - - 0x00A954 02:A944: 00        .byte $00   ; 
- - - - - - 0x00A955 02:A945: 00        .byte $00   ; 
- - - - - - 0x00A956 02:A946: 00        .byte $00   ; 
- - - - - - 0x00A957 02:A947: 00        .byte $00   ; 
- - - - - - 0x00A958 02:A948: 15        .byte $15   ; 
- - - - - - 0x00A959 02:A949: 00        .byte $00   ; 
- - - - - - 0x00A95A 02:A94A: 00        .byte $00   ; 
off_A94B_09:
- D 1 - I - 0x00A95B 02:A94B: 5E        .byte $5E   ; 
- D 1 - I - 0x00A95C 02:A94C: 5F        .byte $5F   ; 
- D 1 - I - 0x00A95D 02:A94D: 47        .byte $47   ; 
- D 1 - I - 0x00A95E 02:A94E: 04        .byte $04   ; 
- D 1 - I - 0x00A95F 02:A94F: 04        .byte $04   ; 
- D 1 - I - 0x00A960 02:A950: 04        .byte $04   ; 
- D 1 - I - 0x00A961 02:A951: 45        .byte $45   ; 
- D 1 - I - 0x00A962 02:A952: 5B        .byte $5B   ; 
- D 1 - I - 0x00A963 02:A953: 7B        .byte $7B   ; 
- D 1 - I - 0x00A964 02:A954: 70        .byte $70   ; 
- D 1 - I - 0x00A965 02:A955: 6D        .byte $6D   ; 
- D 1 - I - 0x00A966 02:A956: 79        .byte $79   ; 
- D 1 - I - 0x00A967 02:A957: 5E        .byte $5E   ; 
- D 1 - I - 0x00A968 02:A958: 5F        .byte $5F   ; 
- D 1 - I - 0x00A969 02:A959: 47        .byte $47   ; 
- D 1 - I - 0x00A96A 02:A95A: 04        .byte $04   ; 
- D 1 - I - 0x00A96B 02:A95B: 34        .byte $34   ; 
off_A95C_04:
- D 1 - I - 0x00A96C 02:A95C: 04        .byte $04   ; 
- D 1 - I - 0x00A96D 02:A95D: 04        .byte $04   ; 
- D 1 - I - 0x00A96E 02:A95E: 04        .byte $04   ; 
- D 1 - I - 0x00A96F 02:A95F: 04        .byte $04   ; 
- D 1 - I - 0x00A970 02:A960: 04        .byte $04   ; 
- D 1 - I - 0x00A971 02:A961: 04        .byte $04   ; 
- D 1 - I - 0x00A972 02:A962: 16        .byte $16   ; 
- - - - - - 0x00A973 02:A963: 04        .byte $04   ; 
- - - - - - 0x00A974 02:A964: 04        .byte $04   ; 
- D 1 - I - 0x00A975 02:A965: 04        .byte $04   ; 
- D 1 - I - 0x00A976 02:A966: 04        .byte $04   ; 
- D 1 - I - 0x00A977 02:A967: 04        .byte $04   ; 
- D 1 - I - 0x00A978 02:A968: 04        .byte $04   ; 
- D 1 - I - 0x00A979 02:A969: 04        .byte $04   ; 
- D 1 - I - 0x00A97A 02:A96A: 04        .byte $04   ; 
- D 1 - I - 0x00A97B 02:A96B: 37        .byte $37   ; 
- D 1 - I - 0x00A97C 02:A96C: 2C        .byte $2C   ; 
- D 1 - I - 0x00A97D 02:A96D: 04        .byte $04   ; 
- D 1 - I - 0x00A97E 02:A96E: 04        .byte $04   ; 
- D 1 - I - 0x00A97F 02:A96F: 04        .byte $04   ; 
- D 1 - I - 0x00A980 02:A970: 61        .byte $61   ; 
- D 1 - I - 0x00A981 02:A971: 6D        .byte $6D   ; 
- D 1 - I - 0x00A982 02:A972: 6D        .byte $6D   ; 
- D 1 - I - 0x00A983 02:A973: 6D        .byte $6D   ; 
- D 1 - I - 0x00A984 02:A974: 70        .byte $70   ; 
- D 1 - I - 0x00A985 02:A975: 7D        .byte $7D   ; 
- D 1 - I - 0x00A986 02:A976: 55        .byte $55   ; 
- D 1 - I - 0x00A987 02:A977: E1        .byte $E1   ; 
- D 1 - I - 0x00A988 02:A978: E2        .byte $E2   ; 
- D 1 - I - 0x00A989 02:A979: 55        .byte $55   ; 
- D 1 - I - 0x00A98A 02:A97A: 7F        .byte $7F   ; 
- D 1 - I - 0x00A98B 02:A97B: 6D        .byte $6D   ; 
off_A97C_0B:
- D 1 - I - 0x00A98C 02:A97C: 16        .byte $16   ; 
- D 1 - I - 0x00A98D 02:A97D: 04        .byte $04   ; 
- D 1 - I - 0x00A98E 02:A97E: 04        .byte $04   ; 
- D 1 - I - 0x00A98F 02:A97F: 04        .byte $04   ; 
- D 1 - I - 0x00A990 02:A980: 16        .byte $16   ; 
- D 1 - I - 0x00A991 02:A981: 04        .byte $04   ; 
- D 1 - I - 0x00A992 02:A982: 04        .byte $04   ; 
- D 1 - I - 0x00A993 02:A983: 04        .byte $04   ; 
- D 1 - I - 0x00A994 02:A984: 45        .byte $45   ; 
- D 1 - I - 0x00A995 02:A985: 5E        .byte $5E   ; 
- D 1 - I - 0x00A996 02:A986: 5F        .byte $5F   ; 
- D 1 - I - 0x00A997 02:A987: 47        .byte $47   ; 
- D 1 - I - 0x00A998 02:A988: 04        .byte $04   ; 
- D 1 - I - 0x00A999 02:A989: 04        .byte $04   ; 
- D 1 - I - 0x00A99A 02:A98A: 87        .byte $87   ; 
- D 1 - I - 0x00A99B 02:A98B: 04        .byte $04   ; 
- D 1 - I - 0x00A99C 02:A98C: 36        .byte $36   ; 
- D 1 - I - 0x00A99D 02:A98D: 04        .byte $04   ; 
- D 1 - I - 0x00A99E 02:A98E: 04        .byte $04   ; 
- D 1 - I - 0x00A99F 02:A98F: 04        .byte $04   ; 
- D 1 - I - 0x00A9A0 02:A990: 17        .byte $17   ; 
off_A991_1B:
- D 1 - I - 0x00A9A1 02:A991: 04        .byte $04   ; 
- D 1 - I - 0x00A9A2 02:A992: 04        .byte $04   ; 
- D 1 - I - 0x00A9A3 02:A993: 04        .byte $04   ; 
- - - - - - 0x00A9A4 02:A994: 04        .byte $04   ; 
- - - - - - 0x00A9A5 02:A995: 04        .byte $04   ; 
- - - - - - 0x00A9A6 02:A996: 04        .byte $04   ; 
- - - - - - 0x00A9A7 02:A997: 04        .byte $04   ; 
- - - - - - 0x00A9A8 02:A998: 04        .byte $04   ; 
- - - - - - 0x00A9A9 02:A999: 04        .byte $04   ; 
- D 1 - I - 0x00A9AA 02:A99A: 04        .byte $04   ; 
- D 1 - I - 0x00A9AB 02:A99B: 04        .byte $04   ; 
- D 1 - I - 0x00A9AC 02:A99C: 04        .byte $04   ; 
- D 1 - I - 0x00A9AD 02:A99D: D9        .byte $D9   ; 
- D 1 - I - 0x00A9AE 02:A99E: D6        .byte $D6   ; 
- D 1 - I - 0x00A9AF 02:A99F: D6        .byte $D6   ; 
- D 1 - I - 0x00A9B0 02:A9A0: D6        .byte $D6   ; 
- D 1 - I - 0x00A9B1 02:A9A1: CA        .byte $CA   ; 
- D 1 - I - 0x00A9B2 02:A9A2: 30        .byte $30   ; 
- D 1 - I - 0x00A9B3 02:A9A3: 04        .byte $04   ; 
- D 1 - I - 0x00A9B4 02:A9A4: 04        .byte $04   ; 
- D 1 - I - 0x00A9B5 02:A9A5: 04        .byte $04   ; 
- D 1 - I - 0x00A9B6 02:A9A6: 04        .byte $04   ; 
- D 1 - I - 0x00A9B7 02:A9A7: 32        .byte $32   ; 
- D 1 - I - 0x00A9B8 02:A9A8: 04        .byte $04   ; 
- D 1 - I - 0x00A9B9 02:A9A9: 04        .byte $04   ; 
- D 1 - I - 0x00A9BA 02:A9AA: 04        .byte $04   ; 
- D 1 - I - 0x00A9BB 02:A9AB: 04        .byte $04   ; 
- D 1 - I - 0x00A9BC 02:A9AC: 04        .byte $04   ; 
- D 1 - I - 0x00A9BD 02:A9AD: 36        .byte $36   ; 
- D 1 - I - 0x00A9BE 02:A9AE: 3D        .byte $3D   ; 
- D 1 - I - 0x00A9BF 02:A9AF: 3E        .byte $3E   ; 
- D 1 - I - 0x00A9C0 02:A9B0: 04        .byte $04   ; 
off_A9B1_0C:
- D 1 - I - 0x00A9C1 02:A9B1: 00        .byte $00   ; 
- D 1 - I - 0x00A9C2 02:A9B2: 00        .byte $00   ; 
- D 1 - I - 0x00A9C3 02:A9B3: 00        .byte $00   ; 
- D 1 - I - 0x00A9C4 02:A9B4: 00        .byte $00   ; 
- D 1 - I - 0x00A9C5 02:A9B5: 00        .byte $00   ; 
- D 1 - I - 0x00A9C6 02:A9B6: 00        .byte $00   ; 
- D 1 - I - 0x00A9C7 02:A9B7: 00        .byte $00   ; 
- D 1 - I - 0x00A9C8 02:A9B8: 00        .byte $00   ; 
- D 1 - I - 0x00A9C9 02:A9B9: 00        .byte $00   ; 
- D 1 - I - 0x00A9CA 02:A9BA: 00        .byte $00   ; 
- D 1 - I - 0x00A9CB 02:A9BB: 00        .byte $00   ; 
- D 1 - I - 0x00A9CC 02:A9BC: 00        .byte $00   ; 
- D 1 - I - 0x00A9CD 02:A9BD: 00        .byte $00   ; 
- D 1 - I - 0x00A9CE 02:A9BE: 85        .byte $85   ; 
- D 1 - I - 0x00A9CF 02:A9BF: 86        .byte $86   ; 
- D 1 - I - 0x00A9D0 02:A9C0: 00        .byte $00   ; 
- D 1 - I - 0x00A9D1 02:A9C1: 1B        .byte $1B   ; 
- D 1 - I - 0x00A9D2 02:A9C2: 20        .byte $20   ; 
- D 1 - I - 0x00A9D3 02:A9C3: 00        .byte $00   ; 
- D 1 - I - 0x00A9D4 02:A9C4: 00        .byte $00   ; 
- D 1 - I - 0x00A9D5 02:A9C5: 00        .byte $00   ; 
- D 1 - I - 0x00A9D6 02:A9C6: 00        .byte $00   ; 
- D 1 - I - 0x00A9D7 02:A9C7: 00        .byte $00   ; 
- D 1 - I - 0x00A9D8 02:A9C8: 00        .byte $00   ; 
- - - - - - 0x00A9D9 02:A9C9: 00        .byte $00   ; 
- - - - - - 0x00A9DA 02:A9CA: 00        .byte $00   ; 
- - - - - - 0x00A9DB 02:A9CB: 00        .byte $00   ; 
- - - - - - 0x00A9DC 02:A9CC: 00        .byte $00   ; 
- - - - - - 0x00A9DD 02:A9CD: 00        .byte $00   ; 
- - - - - - 0x00A9DE 02:A9CE: 00        .byte $00   ; 
- - - - - - 0x00A9DF 02:A9CF: 00        .byte $00   ; 
- - - - - - 0x00A9E0 02:A9D0: 00        .byte $00   ; 
off_A9D1_07:
- D 1 - I - 0x00A9E1 02:A9D1: 00        .byte $00   ; 
- D 1 - I - 0x00A9E2 02:A9D2: 40        .byte $40   ; 
- D 1 - I - 0x00A9E3 02:A9D3: 50        .byte $50   ; 
- D 1 - I - 0x00A9E4 02:A9D4: 00        .byte $00   ; 
- D 1 - I - 0x00A9E5 02:A9D5: 00        .byte $00   ; 
- D 1 - I - 0x00A9E6 02:A9D6: 00        .byte $00   ; 
- - - - - - 0x00A9E7 02:A9D7: 00        .byte $00   ; 
- - - - - - 0x00A9E8 02:A9D8: 00        .byte $00   ; 
- D 1 - I - 0x00A9E9 02:A9D9: 51        .byte $51   ; 
- D 1 - I - 0x00A9EA 02:A9DA: 44        .byte $44   ; 
- D 1 - I - 0x00A9EB 02:A9DB: 55        .byte $55   ; 
- D 1 - I - 0x00A9EC 02:A9DC: 55        .byte $55   ; 
- D 1 - I - 0x00A9ED 02:A9DD: 00        .byte $00   ; 
- D 1 - I - 0x00A9EE 02:A9DE: 00        .byte $00   ; 
- - - - - - 0x00A9EF 02:A9DF: 00        .byte $00   ; 
- - - - - - 0x00A9F0 02:A9E0: 00        .byte $00   ; 
- D 1 - I - 0x00A9F1 02:A9E1: 05        .byte $05   ; 
- D 1 - I - 0x00A9F2 02:A9E2: 44        .byte $44   ; 
- D 1 - I - 0x00A9F3 02:A9E3: 55        .byte $55   ; 
- D 1 - I - 0x00A9F4 02:A9E4: 15        .byte $15   ; 
- D 1 - I - 0x00A9F5 02:A9E5: 00        .byte $00   ; 
- D 1 - I - 0x00A9F6 02:A9E6: 00        .byte $00   ; 
- - - - - - 0x00A9F7 02:A9E7: 00        .byte $00   ; 
- - - - - - 0x00A9F8 02:A9E8: 00        .byte $00   ; 
- D 1 - I - 0x00A9F9 02:A9E9: 00        .byte $00   ; 
- D 1 - I - 0x00A9FA 02:A9EA: 00        .byte $00   ; 
- D 1 - I - 0x00A9FB 02:A9EB: 00        .byte $00   ; 
- D 1 - I - 0x00A9FC 02:A9EC: 00        .byte $00   ; 
- D 1 - I - 0x00A9FD 02:A9ED: 00        .byte $00   ; 
- D 1 - I - 0x00A9FE 02:A9EE: 00        .byte $00   ; 
- - - - - - 0x00A9FF 02:A9EF: 00        .byte $00   ; 
- - - - - - 0x00AA00 02:A9F0: 00        .byte $00   ; 
- - - - - - 0x00AA01 02:A9F1: 00        .byte $00   ; 
- - - - - - 0x00AA02 02:A9F2: 00        .byte $00   ; 
- - - - - - 0x00AA03 02:A9F3: 00        .byte $00   ; 
- - - - - - 0x00AA04 02:A9F4: 00        .byte $00   ; 
- - - - - - 0x00AA05 02:A9F5: 00        .byte $00   ; 
- - - - - - 0x00AA06 02:A9F6: 00        .byte $00   ; 
- - - - - - 0x00AA07 02:A9F7: 00        .byte $00   ; 
- - - - - - 0x00AA08 02:A9F8: 00        .byte $00   ; 
- - - - - - 0x00AA09 02:A9F9: 00        .byte $00   ; 
- - - - - - 0x00AA0A 02:A9FA: 00        .byte $00   ; 
- - - - - - 0x00AA0B 02:A9FB: 00        .byte $00   ; 
- - - - - - 0x00AA0C 02:A9FC: 00        .byte $00   ; 
- - - - - - 0x00AA0D 02:A9FD: 00        .byte $00   ; 
- - - - - - 0x00AA0E 02:A9FE: 00        .byte $00   ; 
- - - - - - 0x00AA0F 02:A9FF: 00        .byte $00   ; 
- - - - - - 0x00AA10 02:AA00: 00        .byte $00   ; 
- - - - - - 0x00AA11 02:AA01: 00        .byte $00   ; 
- - - - - - 0x00AA12 02:AA02: 00        .byte $00   ; 
- - - - - - 0x00AA13 02:AA03: 00        .byte $00   ; 
- - - - - - 0x00AA14 02:AA04: 00        .byte $00   ; 
- - - - - - 0x00AA15 02:AA05: 00        .byte $00   ; 
- - - - - - 0x00AA16 02:AA06: 00        .byte $00   ; 
- - - - - - 0x00AA17 02:AA07: 00        .byte $00   ; 
- - - - - - 0x00AA18 02:AA08: 00        .byte $00   ; 
- - - - - - 0x00AA19 02:AA09: 00        .byte $00   ; 
- - - - - - 0x00AA1A 02:AA0A: 00        .byte $00   ; 
- - - - - - 0x00AA1B 02:AA0B: 00        .byte $00   ; 
- - - - - - 0x00AA1C 02:AA0C: 00        .byte $00   ; 
- - - - - - 0x00AA1D 02:AA0D: 00        .byte $00   ; 
- - - - - - 0x00AA1E 02:AA0E: 00        .byte $00   ; 
- - - - - - 0x00AA1F 02:AA0F: 00        .byte $00   ; 
- - - - - - 0x00AA20 02:AA10: 00        .byte $00   ; 



sub_AA11:
C - - - - - 0x00AA21 02:AA11: A9 1F     LDA #$1F
C - - - - - 0x00AA23 02:AA13: 4C 50 C0  JMP loc_0x01C060
sub_AA16:
C - - - - - 0x00AA26 02:AA16: A9 0F     LDA #$0F
C - - - - - 0x00AA28 02:AA18: 4C 50 C0  JMP loc_0x01C060
sub_AA1B:
C - - - - - 0x00AA2B 02:AA1B: A9 14     LDA #$14
C - - - - - 0x00AA2D 02:AA1D: 4C 50 C0  JMP loc_0x01C060
sub_AA20:
C - - - - - 0x00AA30 02:AA20: A9 17     LDA #$17
C - - - - - 0x00AA32 02:AA22: 4C 50 C0  JMP loc_0x01C060
sub_AA25:
C - - - - - 0x00AA35 02:AA25: A9 2B     LDA #$2B
C - - - - - 0x00AA37 02:AA27: 4C 50 C0  JMP loc_0x01C060
sub_AA2A:
C - - - - - 0x00AA3A 02:AA2A: A9 2C     LDA #$2C
C - - - - - 0x00AA3C 02:AA2C: 4C 50 C0  JMP loc_0x01C060
sub_AA2F:
C - - - - - 0x00AA3F 02:AA2F: A9 1C     LDA #$1C
C - - - - - 0x00AA41 02:AA31: 4C 50 C0  JMP loc_0x01C060
sub_AA34:
C - - - - - 0x00AA44 02:AA34: A9 06     LDA #$06
C - - - - - 0x00AA46 02:AA36: 4C 50 C0  JMP loc_0x01C060
sub_AA39:
C - - - - - 0x00AA49 02:AA39: A9 07     LDA #$07
C - - - - - 0x00AA4B 02:AA3B: 4C 50 C0  JMP loc_0x01C060
sub_AA3E:
C - - - - - 0x00AA4E 02:AA3E: A9 08     LDA #$08
C - - - - - 0x00AA50 02:AA40: 4C 50 C0  JMP loc_0x01C060
sub_AA43:
C - - - - - 0x00AA53 02:AA43: A9 09     LDA #$09
C - - - - - 0x00AA55 02:AA45: 4C 50 C0  JMP loc_0x01C060
sub_AA48:
C - - - - - 0x00AA58 02:AA48: A9 0A     LDA #$0A
C - - - - - 0x00AA5A 02:AA4A: 4C 50 C0  JMP loc_0x01C060
sub_AA4D:
C - - - - - 0x00AA5D 02:AA4D: A9 0B     LDA #$0B
C - - - - - 0x00AA5F 02:AA4F: 4C 50 C0  JMP loc_0x01C060
sub_AA52:
C - - - - - 0x00AA62 02:AA52: A9 26     LDA #$26
C - - - - - 0x00AA64 02:AA54: 4C 50 C0  JMP loc_0x01C060
sub_AA57:
C - - - - - 0x00AA67 02:AA57: A9 27     LDA #$27
C - - - - - 0x00AA69 02:AA59: 4C 50 C0  JMP loc_0x01C060
sub_AA5C:
C - - - - - 0x00AA6C 02:AA5C: A9 28     LDA #$28
C - - - - - 0x00AA6E 02:AA5E: 4C 50 C0  JMP loc_0x01C060
sub_AA61:
C - - - - - 0x00AA71 02:AA61: A9 30     LDA #$30
C - - - - - 0x00AA73 02:AA63: 4C 50 C0  JMP loc_0x01C060
sub_AA66:
C - - - - - 0x00AA76 02:AA66: A9 31     LDA #$31
C - - - - - 0x00AA78 02:AA68: 4C 50 C0  JMP loc_0x01C060



loc_AA6B:
C D 1 - - - 0x00AA7B 02:AA6B: A5 59     LDA ram_подтип_экрана
C - - - - - 0x00AA7D 02:AA6D: 20 53 C0  JSR sub_0x01C063
- D 1 - I - 0x00AA80 02:AA70: 88 AA     .word ofs_005_AA88_00
- D 1 - I - 0x00AA82 02:AA72: D9 AA     .word ofs_005_AAD9_01
- D 1 - I - 0x00AA84 02:AA74: 78 AB     .word ofs_005_AB78_02
- D 1 - I - 0x00AA86 02:AA76: DE AB     .word ofs_005_ABDE_03
- D 1 - I - 0x00AA88 02:AA78: FE AB     .word ofs_005_ABFE_04
- D 1 - I - 0x00AA8A 02:AA7A: 43 AC     .word ofs_005_AC43_05
- D 1 - I - 0x00AA8C 02:AA7C: A9 AC     .word ofs_005_ACA9_06
- D 1 - I - 0x00AA8E 02:AA7E: BD AC     .word ofs_005_ACBD_07
- D 1 - I - 0x00AA90 02:AA80: 43 AC     .word ofs_005_AC43_08
- D 1 - I - 0x00AA92 02:AA82: A9 AC     .word ofs_005_ACA9_09
- D 1 - I - 0x00AA94 02:AA84: BD AC     .word ofs_005_ACBD_0A
- D 1 - I - 0x00AA96 02:AA86: CE AB     .word ofs_005_ABCE_0B



ofs_005_AA88_00:
C - - J - - 0x00AA98 02:AA88: A9 80     LDA #$80
C - - - - - 0x00AA9A 02:AA8A: 85 4F     STA ram_nmi_flag
C - - - - - 0x00AA9C 02:AA8C: 20 49 AE  JSR sub_AE49
C - - - - - 0x00AA9F 02:AA8F: 20 3D AE  JSR sub_AE3D
C - - - - - 0x00AAA2 02:AA92: 20 3D AE  JSR sub_AE3D
ofs_013_AA95_08:
C - - - - - 0x00AAA5 02:AA95: A9 00     LDA #$00
C - - - - - 0x00AAA7 02:AA97: 20 68 C0  JSR sub_0x01C078
C - - - - - 0x00AAAA 02:AA9A: 20 62 C0  JSR sub_0x01C072
C - - - - - 0x00AAAD 02:AA9D: A9 08     LDA #$08
C - - - - - 0x00AAAF 02:AA9F: 8D 6D 00  STA a: ram_006D
C - - - - - 0x00AAB2 02:AAA2: E6 93     INC ram_таймер_кадра_анимации_мяча
C - - - - - 0x00AAB4 02:AAA4: C6 A0     DEC ram_номер_кадра_анимации_мяча
C - - - - - 0x00AAB6 02:AAA6: 20 01 AE  JSR sub_AE01
C - - - - - 0x00AAB9 02:AAA9: A9 90     LDA #$90
C - - - - - 0x00AABB 02:AAAB: 8D 20 03  STA ram_мяч_X_lo
C - - - - - 0x00AABE 02:AAAE: A9 56     LDA #$56
C - - - - - 0x00AAC0 02:AAB0: 8D 59 03  STA ram_мяч_Y_lo
C - - - - - 0x00AAC3 02:AAB3: A9 1D     LDA #$1D
C - - - - - 0x00AAC5 02:AAB5: 8D AE 05  STA ram_номер_палитры_спрайтов
C - - - - - 0x00AAC8 02:AAB8: A9 1F     LDA #$1F
C - - - - - 0x00AACA 02:AABA: 8D AF 05  STA ram_номер_палитры_спрайтов + $01
C - - - - - 0x00AACD 02:AABD: A9 21     LDA #$21
C - - - - - 0x00AACF 02:AABF: 8D B0 05  STA ram_номер_палитры_спрайтов + $02
C - - - - - 0x00AAD2 02:AAC2: A2 70     LDX #$70
C - - - - - 0x00AAD4 02:AAC4: 8E B8 05  STX ram_банк_спрайтов
C - - - - - 0x00AAD7 02:AAC7: E8        INX
C - - - - - 0x00AAD8 02:AAC8: 8E B9 05  STX ram_банк_спрайтов + $01
C - - - - - 0x00AADB 02:AACB: 20 0B C0  JSR sub_0x01C01B
C - - - - - 0x00AADE 02:AACE: 20 59 C0  JSR sub_0x01C069
C - - - - - 0x00AAE1 02:AAD1: A9 04     LDA #$04
C - - - - - 0x00AAE3 02:AAD3: 8D B3 05  STA ram_скорость_яркости
C - - - - - 0x00AAE6 02:AAD6: E6 59     INC ram_подтип_экрана
C - - - - - 0x00AAE8 02:AAD8: 60        RTS



ofs_013_AAD9_09:
ofs_005_AAD9_01:
C - - J - - 0x00AAE9 02:AAD9: 20 01 AE  JSR sub_AE01
C - - - - - 0x00AAEC 02:AADC: 2C B2 05  BIT ram_флаг_яркости
C - - - - - 0x00AAEF 02:AADF: 30 03     BMI bra_AAE4
C - - - - - 0x00AAF1 02:AAE1: 20 5C C0  JSR sub_0x01C06C
bra_AAE4:
C - - - - - 0x00AAF4 02:AAE4: A5 A0     LDA ram_номер_кадра_анимации_мяча
C - - - - - 0x00AAF6 02:AAE6: C9 02     CMP #$02
C - - - - - 0x00AAF8 02:AAE8: 90 55     BCC bra_AB3F_RTS
C - - - - - 0x00AAFA 02:AAEA: A5 96     LDA ram_номер_кадра_анимации + $02
C - - - - - 0x00AAFC 02:AAEC: C9 08     CMP #$08
C - - - - - 0x00AAFE 02:AAEE: B0 11     BCS bra_AB01
C - - - - - 0x00AB00 02:AAF0: E6 96     INC ram_номер_кадра_анимации + $02
C - - - - - 0x00AB02 02:AAF2: A8        TAY
C - - - - - 0x00AB03 02:AAF3: B9 40 AB  LDA tbl_AB40,Y
C - - - - - 0x00AB06 02:AAF6: 8D AC 05  STA ram_номер_палитры_фона
C - - - - - 0x00AB09 02:AAF9: 20 6E C0  JSR sub_0x01C07E
C - - - - - 0x00AB0C 02:AAFC: A9 3F     LDA #$3F
C - - - - - 0x00AB0E 02:AAFE: 8D D9 06  STA ram_байт_2006_hi_палитра
bra_AB01:
C - - - - - 0x00AB11 02:AB01: A5 95     LDA ram_номер_кадра_анимации + $01
C - - - - - 0x00AB13 02:AB03: E6 95     INC ram_номер_кадра_анимации + $01
C - - - - - 0x00AB15 02:AB05: C9 17     CMP #$17
C - - - - - 0x00AB17 02:AB07: B0 1F     BCS bra_AB28
C - - - - - 0x00AB19 02:AB09: 29 FE     AND #$FE
C - - - - - 0x00AB1B 02:AB0B: 0A        ASL
C - - - - - 0x00AB1C 02:AB0C: A8        TAY
C - - - - - 0x00AB1D 02:AB0D: A2 00     LDX #$00
bra_AB0F:
C - - - - - 0x00AB1F 02:AB0F: B9 48 AB  LDA tbl_AB48,Y
C - - - - - 0x00AB22 02:AB12: 9D 96 06  STA ram_буфер_атрибутов,X
C - - - - - 0x00AB25 02:AB15: C8        INY
C - - - - - 0x00AB26 02:AB16: E8        INX
C - - - - - 0x00AB27 02:AB17: E0 04     CPX #$04
C - - - - - 0x00AB29 02:AB19: 90 F4     BCC bra_AB0F
C - - - - - 0x00AB2B 02:AB1B: 8E 95 06  STX ram_счетчик_буфера_атрибутов
C - - - - - 0x00AB2E 02:AB1E: A9 DB     LDA #$DB
C - - - - - 0x00AB30 02:AB20: 8D 94 06  STA ram_байт_2006_lo_атрибуты
C - - - - - 0x00AB33 02:AB23: A9 23     LDA #$23
C - - - - - 0x00AB35 02:AB25: 8D 93 06  STA ram_байт_2006_hi_атрибуты
bra_AB28:
C - - - - - 0x00AB38 02:AB28: A5 A0     LDA ram_номер_кадра_анимации_мяча
C - - - - - 0x00AB3A 02:AB2A: C9 07     CMP #$07
C - - - - - 0x00AB3C 02:AB2C: D0 11     BNE bra_AB3F_RTS
C - - - - - 0x00AB3E 02:AB2E: A9 3C     LDA #$3C
C - - - - - 0x00AB40 02:AB30: 8D AC 05  STA ram_номер_палитры_фона
C - - - - - 0x00AB43 02:AB33: EE AE 05  INC ram_номер_палитры_спрайтов
C - - - - - 0x00AB46 02:AB36: EE AF 05  INC ram_номер_палитры_спрайтов + $01
C - - - - - 0x00AB49 02:AB39: EE B0 05  INC ram_номер_палитры_спрайтов + $02
C - - - - - 0x00AB4C 02:AB3C: 20 47 C0  JSR sub_0x01C057
bra_AB3F_RTS:
C - - - - - 0x00AB4F 02:AB3F: 60        RTS



tbl_AB40:
- D 1 - - - 0x00AB50 02:AB40: 45        .byte $45   ; 
- D 1 - - - 0x00AB51 02:AB41: 46        .byte $46   ; 
- D 1 - - - 0x00AB52 02:AB42: 47        .byte $47   ; 
- D 1 - - - 0x00AB53 02:AB43: 48        .byte $48   ; 
- D 1 - - - 0x00AB54 02:AB44: 47        .byte $47   ; 
- D 1 - - - 0x00AB55 02:AB45: 46        .byte $46   ; 
- D 1 - - - 0x00AB56 02:AB46: 45        .byte $45   ; 
- D 1 - - - 0x00AB57 02:AB47: 44        .byte $44   ; 



tbl_AB48:
- D 1 - - - 0x00AB58 02:AB48: 02        .byte $02   ; 
- D 1 - - - 0x00AB59 02:AB49: 00        .byte $00   ; 
- D 1 - - - 0x00AB5A 02:AB4A: 00        .byte $00   ; 
- D 1 - - - 0x00AB5B 02:AB4B: 00        .byte $00   ; 
- D 1 - - - 0x00AB5C 02:AB4C: 0B        .byte $0B   ; 
- D 1 - - - 0x00AB5D 02:AB4D: 00        .byte $00   ; 
- D 1 - - - 0x00AB5E 02:AB4E: 00        .byte $00   ; 
- D 1 - - - 0x00AB5F 02:AB4F: 00        .byte $00   ; 
- D 1 - - - 0x00AB60 02:AB50: 0F        .byte $0F   ; 
- D 1 - - - 0x00AB61 02:AB51: 02        .byte $02   ; 
- D 1 - - - 0x00AB62 02:AB52: 00        .byte $00   ; 
- D 1 - - - 0x00AB63 02:AB53: 00        .byte $00   ; 
- D 1 - - - 0x00AB64 02:AB54: 0E        .byte $0E   ; 
- D 1 - - - 0x00AB65 02:AB55: 0B        .byte $0B   ; 
- D 1 - - - 0x00AB66 02:AB56: 00        .byte $00   ; 
- D 1 - - - 0x00AB67 02:AB57: 00        .byte $00   ; 
- D 1 - - - 0x00AB68 02:AB58: 08        .byte $08   ; 
- D 1 - - - 0x00AB69 02:AB59: 0F        .byte $0F   ; 
- D 1 - - - 0x00AB6A 02:AB5A: 02        .byte $02   ; 
- D 1 - - - 0x00AB6B 02:AB5B: 00        .byte $00   ; 
- D 1 - - - 0x00AB6C 02:AB5C: 00        .byte $00   ; 
- D 1 - - - 0x00AB6D 02:AB5D: 0E        .byte $0E   ; 
- D 1 - - - 0x00AB6E 02:AB5E: 0B        .byte $0B   ; 
- D 1 - - - 0x00AB6F 02:AB5F: 00        .byte $00   ; 
- D 1 - - - 0x00AB70 02:AB60: 00        .byte $00   ; 
- D 1 - - - 0x00AB71 02:AB61: 08        .byte $08   ; 
- D 1 - - - 0x00AB72 02:AB62: 0F        .byte $0F   ; 
- D 1 - - - 0x00AB73 02:AB63: 02        .byte $02   ; 
- D 1 - - - 0x00AB74 02:AB64: 00        .byte $00   ; 
- D 1 - - - 0x00AB75 02:AB65: 00        .byte $00   ; 
- D 1 - - - 0x00AB76 02:AB66: 0E        .byte $0E   ; 
- D 1 - - - 0x00AB77 02:AB67: 0B        .byte $0B   ; 
- D 1 - - - 0x00AB78 02:AB68: 00        .byte $00   ; 
- D 1 - - - 0x00AB79 02:AB69: 00        .byte $00   ; 
- D 1 - - - 0x00AB7A 02:AB6A: 08        .byte $08   ; 
- D 1 - - - 0x00AB7B 02:AB6B: 0F        .byte $0F   ; 
- D 1 - - - 0x00AB7C 02:AB6C: 00        .byte $00   ; 
- D 1 - - - 0x00AB7D 02:AB6D: 00        .byte $00   ; 
- D 1 - - - 0x00AB7E 02:AB6E: 00        .byte $00   ; 
- D 1 - - - 0x00AB7F 02:AB6F: 0E        .byte $0E   ; 
- D 1 - - - 0x00AB80 02:AB70: 00        .byte $00   ; 
- D 1 - - - 0x00AB81 02:AB71: 00        .byte $00   ; 
- D 1 - - - 0x00AB82 02:AB72: 00        .byte $00   ; 
- D 1 - - - 0x00AB83 02:AB73: 08        .byte $08   ; 
- D 1 - - - 0x00AB84 02:AB74: 00        .byte $00   ; 
- D 1 - - - 0x00AB85 02:AB75: 00        .byte $00   ; 
- D 1 - - - 0x00AB86 02:AB76: 00        .byte $00   ; 
- D 1 - - - 0x00AB87 02:AB77: 00        .byte $00   ; 



ofs_005_AB78_02:
C - - J - - 0x00AB88 02:AB78: 20 3D AE  JSR sub_AE3D
C - - - - - 0x00AB8B 02:AB7B: 20 49 AE  JSR sub_AE49
C - - - - - 0x00AB8E 02:AB7E: A9 0E     LDA #$0E
C - - - - - 0x00AB90 02:AB80: 20 68 C0  JSR sub_0x01C078
C - - - - - 0x00AB93 02:AB83: A9 59     LDA #$59
C - - - - - 0x00AB95 02:AB85: 8D B8 05  STA ram_банк_спрайтов
C - - - - - 0x00AB98 02:AB88: 20 0B C0  JSR sub_0x01C01B
C - - - - - 0x00AB9B 02:AB8B: A9 09     LDA #$09
C - - - - - 0x00AB9D 02:AB8D: 8D 6D 00  STA a: ram_006D
C - - - - - 0x00ABA0 02:AB90: E6 93     INC ram_таймер_кадра_анимации_мяча
C - - - - - 0x00ABA2 02:AB92: C6 94     DEC ram_номер_кадра_анимации
C - - - - - 0x00ABA4 02:AB94: A9 C0     LDA #$C0
C - - - - - 0x00ABA6 02:AB96: 8D 20 03  STA ram_мяч_X_lo
C - - - - - 0x00ABA9 02:AB99: A9 CE     LDA #$CE
C - - - - - 0x00ABAB 02:AB9B: 8D 59 03  STA ram_мяч_Y_lo
C - - - - - 0x00ABAE 02:AB9E: A2 27     LDX #$27
C - - - - - 0x00ABB0 02:ABA0: 8E AE 05  STX ram_номер_палитры_спрайтов
C - - - - - 0x00ABB3 02:ABA3: E8        INX
C - - - - - 0x00ABB4 02:ABA4: 8E AF 05  STX ram_номер_палитры_спрайтов + $01
C - - - - - 0x00ABB7 02:ABA7: E8        INX
C - - - - - 0x00ABB8 02:ABA8: 8E B0 05  STX ram_номер_палитры_спрайтов + $02
C - - - - - 0x00ABBB 02:ABAB: E8        INX
C - - - - - 0x00ABBC 02:ABAC: 8E B1 05  STX ram_номер_палитры_спрайтов + $03
C - - - - - 0x00ABBF 02:ABAF: 20 33 B0  JSR sub_B033
C - - - - - 0x00ABC2 02:ABB2: A9 01     LDA #$01
C - - - - - 0x00ABC4 02:ABB4: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x00ABC7 02:ABB7: 20 59 C0  JSR sub_0x01C069
C - - - - - 0x00ABCA 02:ABBA: A9 04     LDA #$04
C - - - - - 0x00ABCC 02:ABBC: 8D B3 05  STA ram_скорость_яркости
C - - - - - 0x00ABCF 02:ABBF: A9 90     LDA #$90
C - - - - - 0x00ABD1 02:ABC1: 8D 89 05  STA ram_таймер_демо_lo
C - - - - - 0x00ABD4 02:ABC4: A9 06     LDA #$06
C - - - - - 0x00ABD6 02:ABC6: 8D 8A 05  STA ram_таймер_демо_hi
C - - - - - 0x00ABD9 02:ABC9: A9 0B     LDA #$0B
C - - - - - 0x00ABDB 02:ABCB: 85 59     STA ram_подтип_экрана
C - - - - - 0x00ABDD 02:ABCD: 60        RTS



ofs_005_ABCE_0B:
C - - J - - 0x00ABDE 02:ABCE: 20 33 B0  JSR sub_B033
C - - - - - 0x00ABE1 02:ABD1: 20 5C C0  JSR sub_0x01C06C
C - - - - - 0x00ABE4 02:ABD4: 2C B2 05  BIT ram_флаг_яркости
C - - - - - 0x00ABE7 02:ABD7: 10 04     BPL bra_ABDD_RTS
C - - - - - 0x00ABE9 02:ABD9: A9 03     LDA #$03
C - - - - - 0x00ABEB 02:ABDB: 85 59     STA ram_подтип_экрана
bra_ABDD_RTS:
C - - - - - 0x00ABED 02:ABDD: 60        RTS



ofs_005_ABDE_03:
C - - J - - 0x00ABEE 02:ABDE: 20 33 B0  JSR sub_B033
C - - - - - 0x00ABF1 02:ABE1: 20 7C AE  JSR sub_AE7C
C - - - - - 0x00ABF4 02:ABE4: 30 10     BMI bra_ABF6
C - - - - - 0x00ABF6 02:ABE6: 50 15     BVC bra_ABFD_RTS
C - - - - - 0x00ABF8 02:ABE8: 20 44 C0  JSR sub_0x01C054
C - - - - - 0x00ABFB 02:ABEB: A9 04     LDA #$04
C - - - - - 0x00ABFD 02:ABED: 8D B3 05  STA ram_скорость_яркости
C - - - - - 0x00AC00 02:ABF0: 20 4A C0  JSR sub_0x01C05A
C - - - - - 0x00AC03 02:ABF3: E6 59     INC ram_подтип_экрана
C - - - - - 0x00AC05 02:ABF5: 60        RTS
bra_ABF6:
C - - - - - 0x00AC06 02:ABF6: 20 65 AE  JSR sub_AE65
C - - - - - 0x00AC09 02:ABF9: A9 08     LDA #$08
C - - - - - 0x00AC0B 02:ABFB: 85 59     STA ram_подтип_экрана
bra_ABFD_RTS:
C - - - - - 0x00AC0D 02:ABFD: 60        RTS



ofs_005_ABFE_04:
C - - J - - 0x00AC0E 02:ABFE: A9 01     LDA #$01
C - - - - - 0x00AC10 02:AC00: 8D 57 00  STA a: ram_опция_режим_сложность
C - - - - - 0x00AC13 02:AC03: A9 00     LDA #$00
C - - - - - 0x00AC15 02:AC05: 85 58     STA ram_номер_экрана
C - - - - - 0x00AC17 02:AC07: 85 59     STA ram_подтип_экрана
C - - - - - 0x00AC19 02:AC09: 8D 89 05  STA ram_таймер_демо_lo
C - - - - - 0x00AC1C 02:AC0C: A9 03     LDA #$03
C - - - - - 0x00AC1E 02:AC0E: 8D 8A 05  STA ram_таймер_демо_hi
C - - - - - 0x00AC21 02:AC11: A9 80     LDA #$80
C - - - - - 0x00AC23 02:AC13: 8D 8B 05  STA ram_флаг_демо
C - - - - - 0x00AC26 02:AC16: 8D 2C 05  STA ram_номер_команды
C - - - - - 0x00AC29 02:AC19: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00AC2C 02:AC1C: 29 0F     AND #$0F
C - - - - - 0x00AC2E 02:AC1E: 09 81     ORA #$81
C - - - - - 0x00AC30 02:AC20: 8D 2D 05  STA ram_номер_команды + $01
C - - - - - 0x00AC33 02:AC23: A0 00     LDY #$00
C - - - - - 0x00AC35 02:AC25: A2 00     LDX #$00
bra_AC27:
C - - - - - 0x00AC37 02:AC27: 98        TYA
C - - - - - 0x00AC38 02:AC28: 9D 32 05  STA ram_номер_игрока,X
C - - - - - 0x00AC3B 02:AC2B: 9D 33 05  STA ram_номер_игрока + $01,X
C - - - - - 0x00AC3E 02:AC2E: C8        INY
C - - - - - 0x00AC3F 02:AC2F: E8        INX
C - - - - - 0x00AC40 02:AC30: E8        INX
C - - - - - 0x00AC41 02:AC31: E0 0C     CPX #$0C
C - - - - - 0x00AC43 02:AC33: 90 F2     BCC bra_AC27
C - - - - - 0x00AC45 02:AC35: 20 25 AA  JSR sub_AA25
C - - - - - 0x00AC48 02:AC38: 20 2A AA  JSR sub_AA2A
C - - - - - 0x00AC4B 02:AC3B: 20 11 AA  JSR sub_AA11
C - - - - - 0x00AC4E 02:AC3E: A9 C0     LDA #$C0
C - - - - - 0x00AC50 02:AC40: 85 4F     STA ram_nmi_flag
C - - - - - 0x00AC52 02:AC42: 60        RTS



ofs_005_AC43_05:
ofs_005_AC43_08:
C - - J - - 0x00AC53 02:AC43: 20 3D AE  JSR sub_AE3D
C - - - - - 0x00AC56 02:AC46: 20 49 AE  JSR sub_AE49
C - - - - - 0x00AC59 02:AC49: A9 00     LDA #$00
C - - - - - 0x00AC5B 02:AC4B: 8D 00 03  STA ram_frm_cnt
C - - - - - 0x00AC5E 02:AC4E: A9 02     LDA #$02
C - - - - - 0x00AC60 02:AC50: 8D 8A 05  STA ram_таймер_демо_hi
C - - - - - 0x00AC63 02:AC53: A0 40     LDY #$40
C - - - - - 0x00AC65 02:AC55: A5 59     LDA ram_подтип_экрана
C - - - - - 0x00AC67 02:AC57: C9 05     CMP #$05
C - - - - - 0x00AC69 02:AC59: F0 02     BEQ bra_AC5D
C - - - - - 0x00AC6B 02:AC5B: A0 80     LDY #$80
bra_AC5D:
C - - - - - 0x00AC6D 02:AC5D: 8C 8B 05  STY ram_флаг_демо
C - - - - - 0x00AC70 02:AC60: A9 01     LDA #$01
C - - - - - 0x00AC72 02:AC62: 20 68 C0  JSR sub_0x01C078
C - - - - - 0x00AC75 02:AC65: A2 08     LDX #$08
C - - - - - 0x00AC77 02:AC67: 8E B8 05  STX ram_банк_спрайтов
C - - - - - 0x00AC7A 02:AC6A: E8        INX
C - - - - - 0x00AC7B 02:AC6B: 8E BB 05  STX ram_банк_спрайтов + $03
C - - - - - 0x00AC7E 02:AC6E: A2 1F     LDX #$1F
C - - - - - 0x00AC80 02:AC70: 8E B9 05  STX ram_банк_спрайтов + $01
C - - - - - 0x00AC83 02:AC73: E8        INX
C - - - - - 0x00AC84 02:AC74: 8E BA 05  STX ram_банк_спрайтов + $02
C - - - - - 0x00AC87 02:AC77: 20 0B C0  JSR sub_0x01C01B
C - - - - - 0x00AC8A 02:AC7A: A9 01     LDA #$01
C - - - - - 0x00AC8C 02:AC7C: 8D AE 05  STA ram_номер_палитры_спрайтов
C - - - - - 0x00AC8F 02:AC7F: 8D AF 05  STA ram_номер_палитры_спрайтов + $01
C - - - - - 0x00AC92 02:AC82: A9 03     LDA #$03
C - - - - - 0x00AC94 02:AC84: 8D E6 05  STA ram_05E6
C - - - - - 0x00AC97 02:AC87: CE 69 05  DEC ram_номер_управляемого + $01
C - - - - - 0x00AC9A 02:AC8A: CE 6A 05  DEC ram_номер_управляемого + $02
C - - - - - 0x00AC9D 02:AC8D: CE 6B 05  DEC ram_номер_управляемого + $03
C - - - - - 0x00ACA0 02:AC90: CE 7A 06  DEC ram_направление_паса_команды
C - - - - - 0x00ACA3 02:AC93: A2 00     LDX #$00
C - - - - - 0x00ACA5 02:AC95: 20 A5 AD  JSR sub_ADA5
C - - - - - 0x00ACA8 02:AC98: A2 0C     LDX #$0C
C - - - - - 0x00ACAA 02:AC9A: 20 A5 AD  JSR sub_ADA5
C - - - - - 0x00ACAD 02:AC9D: 20 62 C0  JSR sub_0x01C072
C - - - - - 0x00ACB0 02:ACA0: 20 1B AA  JSR sub_AA1B
C - - - - - 0x00ACB3 02:ACA3: 20 59 C0  JSR sub_0x01C069
C - - - - - 0x00ACB6 02:ACA6: E6 59     INC ram_подтип_экрана
C - - - - - 0x00ACB8 02:ACA8: 60        RTS



ofs_005_ACA9_06:
ofs_005_ACA9_09:
C - - J - - 0x00ACB9 02:ACA9: 20 91 AD  JSR sub_AD91
C - - - - - 0x00ACBC 02:ACAC: 20 2F AA  JSR sub_AA2F
C - - - - - 0x00ACBF 02:ACAF: 20 1B AA  JSR sub_AA1B
C - - - - - 0x00ACC2 02:ACB2: 20 5C C0  JSR sub_0x01C06C
C - - - - - 0x00ACC5 02:ACB5: 2C B2 05  BIT ram_флаг_яркости
C - - - - - 0x00ACC8 02:ACB8: 10 02     BPL bra_ACBC_RTS
C - - - - - 0x00ACCA 02:ACBA: E6 59     INC ram_подтип_экрана
bra_ACBC_RTS:
C - - - - - 0x00ACCC 02:ACBC: 60        RTS



ofs_005_ACBD_07:
ofs_005_ACBD_0A:
C - - J - - 0x00ACCD 02:ACBD: 20 9B AE  JSR sub_AE9B
C - - - - - 0x00ACD0 02:ACC0: 20 F8 AC  JSR sub_ACF8
C - - - - - 0x00ACD3 02:ACC3: 20 20 AA  JSR sub_AA20
C - - - - - 0x00ACD6 02:ACC6: 20 2F AA  JSR sub_AA2F
C - - - - - 0x00ACD9 02:ACC9: 20 1B AA  JSR sub_AA1B
C - - - - - 0x00ACDC 02:ACCC: 20 7C AE  JSR sub_AE7C
C - - - - - 0x00ACDF 02:ACCF: 30 06     BMI bra_ACD7
C - - - - - 0x00ACE1 02:ACD1: 50 24     BVC bra_ACF7_RTS
C - - - - - 0x00ACE3 02:ACD3: A9 04     LDA #$04
C - - - - - 0x00ACE5 02:ACD5: D0 10     BNE bra_ACE7
bra_ACD7:
C - - - - - 0x00ACE7 02:ACD7: A9 00     LDA #$00
C - - - - - 0x00ACE9 02:ACD9: 8D 8B 05  STA ram_флаг_демо
C - - - - - 0x00ACEC 02:ACDC: A9 33     LDA #$33
C - - - - - 0x00ACEE 02:ACDE: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x00ACF1 02:ACE1: A9 02     LDA #$02
C - - - - - 0x00ACF3 02:ACE3: 85 58     STA ram_номер_экрана
C - - - - - 0x00ACF5 02:ACE5: A9 00     LDA #$00
bra_ACE7:
C - - - - - 0x00ACF7 02:ACE7: 85 59     STA ram_подтип_экрана
C - - - - - 0x00ACF9 02:ACE9: 20 44 C0  JSR sub_0x01C054
C - - - - - 0x00ACFC 02:ACEC: A9 04     LDA #$04
C - - - - - 0x00ACFE 02:ACEE: 8D B3 05  STA ram_скорость_яркости
C - - - - - 0x00AD01 02:ACF1: 20 4A C0  JSR sub_0x01C05A
C - - - - - 0x00AD04 02:ACF4: 20 3D AE  JSR sub_AE3D
bra_ACF7_RTS:
C - - - - - 0x00AD07 02:ACF7: 60        RTS



sub_ACF8:
C - - - - - 0x00AD08 02:ACF8: A5 59     LDA ram_подтип_экрана
C - - - - - 0x00AD0A 02:ACFA: C9 08     CMP #$08
C - - - - - 0x00AD0C 02:ACFC: B0 09     BCS bra_AD07
C - - - - - 0x00AD0E 02:ACFE: A5 08     LDA ram_btn_press
C - - - - - 0x00AD10 02:AD00: 29 30     AND #$30
C - - - - - 0x00AD12 02:AD02: 85 08     STA ram_btn_press
C - - - - - 0x00AD14 02:AD04: 4C F7 AE  JMP loc_AEF7_сценка_кунио
bra_AD07:
C - - - - - 0x00AD17 02:AD07: A9 80     LDA #$80
C - - - - - 0x00AD19 02:AD09: 8D 89 05  STA ram_таймер_демо_lo
C - - - - - 0x00AD1C 02:AD0C: A5 95     LDA ram_номер_кадра_анимации + $01
C - - - - - 0x00AD1E 02:AD0E: 20 53 C0  JSR sub_0x01C063
- D 1 - I - 0x00AD21 02:AD11: 17 AD     .word ofs_006_AD17_00
- D 1 - I - 0x00AD23 02:AD13: 28 AD     .word ofs_006_AD28_01
- D 1 - I - 0x00AD25 02:AD15: 3B AD     .word ofs_006_AD3B_02



ofs_006_AD17_00:
C - - J - - 0x00AD27 02:AD17: 20 91 AD  JSR sub_AD91
C - - - - - 0x00AD2A 02:AD1A: AD 27 03  LDA ram_игрок_X_hi
C - - - - - 0x00AD2D 02:AD1D: D0 1B     BNE bra_AD3A_RTS
C - - - - - 0x00AD2F 02:AD1F: AD 14 03  LDA ram_игрок_X_lo
C - - - - - 0x00AD32 02:AD22: C9 20     CMP #$20
C - - - - - 0x00AD34 02:AD24: 90 14     BCC bra_AD3A_RTS
C - - - - - 0x00AD36 02:AD26: B0 10     BCS bra_AD38



ofs_006_AD28_01:
C - - J - - 0x00AD38 02:AD28: A5 08     LDA ram_btn_press
C - - - - - 0x00AD3A 02:AD2A: D0 0C     BNE bra_AD38
C - - - - - 0x00AD3C 02:AD2C: AD 14 03  LDA ram_игрок_X_lo
C - - - - - 0x00AD3F 02:AD2F: C9 70     CMP #$70
C - - - - - 0x00AD41 02:AD31: 90 07     BCC bra_AD3A_RTS
C - - - - - 0x00AD43 02:AD33: A9 01     LDA #$01
C - - - - - 0x00AD45 02:AD35: 8D 59 04  STA ram_игрок_номер_движения
bra_AD38:
C - - - - - 0x00AD48 02:AD38: E6 95     INC ram_номер_кадра_анимации + $01
bra_AD3A_RTS:
C - - - - - 0x00AD4A 02:AD3A: 60        RTS



ofs_006_AD3B_02:
C - - J - - 0x00AD4B 02:AD3B: A0 E0     LDY #$E0
C - - - - - 0x00AD4D 02:AD3D: AD 14 03  LDA ram_игрок_X_lo
C - - - - - 0x00AD50 02:AD40: C9 E0     CMP #$E0
C - - - - - 0x00AD52 02:AD42: B0 06     BCS bra_AD4A
C - - - - - 0x00AD54 02:AD44: A0 20     LDY #$20
C - - - - - 0x00AD56 02:AD46: C9 20     CMP #$20
C - - - - - 0x00AD58 02:AD48: B0 11     BCS bra_AD5B
bra_AD4A:
C - - - - - 0x00AD5A 02:AD4A: 8C 14 03  STY ram_игрок_X_lo
C - - - - - 0x00AD5D 02:AD4D: AD 59 04  LDA ram_игрок_номер_движения
C - - - - - 0x00AD60 02:AD50: 29 7F     AND #$7F
C - - - - - 0x00AD62 02:AD52: C9 21     CMP #$21
C - - - - - 0x00AD64 02:AD54: D0 05     BNE bra_AD5B
C - - - - - 0x00AD66 02:AD56: A9 01     LDA #$01
C - - - - - 0x00AD68 02:AD58: 8D 59 04  STA ram_игрок_номер_движения
bra_AD5B:
C - - - - - 0x00AD6B 02:AD5B: AD 92 04  LDA ram_мяч_состояние
C - - - - - 0x00AD6E 02:AD5E: 29 40     AND #$40
C - - - - - 0x00AD70 02:AD60: D0 2E     BNE bra_AD90_RTS
C - - - - - 0x00AD72 02:AD62: A2 02     LDX #$02
C - - - - - 0x00AD74 02:AD64: AD 33 03  LDA ram_мяч_X_hi
C - - - - - 0x00AD77 02:AD67: D0 09     BNE bra_AD72
C - - - - - 0x00AD79 02:AD69: AD 20 03  LDA ram_мяч_X_lo
C - - - - - 0x00AD7C 02:AD6C: C9 08     CMP #$08
C - - - - - 0x00AD7E 02:AD6E: B0 20     BCS bra_AD90_RTS
C - - - - - 0x00AD80 02:AD70: 90 04     BCC bra_AD76
bra_AD72:
C - - - - - 0x00AD82 02:AD72: 30 02     BMI bra_AD76
C - - - - - 0x00AD84 02:AD74: A2 FE     LDX #$FE
bra_AD76:
C - - - - - 0x00AD86 02:AD76: A9 00     LDA #$00
C - - - - - 0x00AD88 02:AD78: 8D 56 04  STA ram_мяч_гравитация_hi
C - - - - - 0x00AD8B 02:AD7B: 8D F4 03  STA ram_мяч_spd_X_lo
C - - - - - 0x00AD8E 02:AD7E: 8E 02 04  STX ram_мяч_spd_X_hi
C - - - - - 0x00AD91 02:AD81: A9 02     LDA #$02
C - - - - - 0x00AD93 02:AD83: 8D 3A 04  STA ram_мяч_spd_Z_hi
C - - - - - 0x00AD96 02:AD86: A9 80     LDA #$80
C - - - - - 0x00AD98 02:AD88: 8D 48 04  STA ram_мяч_гравитация_lo
C - - - - - 0x00AD9B 02:AD8B: A9 06     LDA #$06
C - - - - - 0x00AD9D 02:AD8D: 8D 65 04  STA ram_мяч_номер_движения
bra_AD90_RTS:
C - - - - - 0x00ADA0 02:AD90: 60        RTS



sub_AD91:
C - - - - - 0x00ADA1 02:AD91: A5 08     LDA ram_btn_press
C - - - - - 0x00ADA3 02:AD93: 29 30     AND #$30
C - - - - - 0x00ADA5 02:AD95: 85 08     STA ram_btn_press
C - - - - - 0x00ADA7 02:AD97: 85 04     STA ram_btn_hold
C - - - - - 0x00ADA9 02:AD99: 60        RTS



sub_AD9A:
C - - - - - 0x00ADAA 02:AD9A: 85 1C     STA ram_001C
C - - - - - 0x00ADAC 02:AD9C: A5 08     LDA ram_btn_press
C - - - - - 0x00ADAE 02:AD9E: 05 1C     ORA ram_001C
C - - - - - 0x00ADB0 02:ADA0: 85 08     STA ram_btn_press
C - - - - - 0x00ADB2 02:ADA2: 85 04     STA ram_btn_hold
C - - - - - 0x00ADB4 02:ADA4: 60        RTS



sub_ADA5:
C - - - - - 0x00ADB5 02:ADA5: A9 FF     LDA #$FF
C - - - - - 0x00ADB7 02:ADA7: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00ADBA 02:ADAA: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00ADBD 02:ADAD: 9D 27 03  STA ram_игрок_X_hi,X
C - - - - - 0x00ADC0 02:ADB0: 8D 85 04  STA ram_мяч_тип_удара
C - - - - - 0x00ADC3 02:ADB3: 8D 0E 05  STA ram_флаг_прозрачного_мяча
C - - - - - 0x00ADC6 02:ADB6: A9 00     LDA #$00
C - - - - - 0x00ADC8 02:ADB8: 9D 86 04  STA ram_игрок_состояние,X
C - - - - - 0x00ADCB 02:ADBB: 8D D6 04  STA ram_игрок_с_мячом
C - - - - - 0x00ADCE 02:ADBE: 9D A3 04  STA ram_obj_direction,X
C - - - - - 0x00ADD1 02:ADC1: 9D 61 00  STA a: ram_0061,X
C - - - - - 0x00ADD4 02:ADC4: A9 A4     LDA #$A4
C - - - - - 0x00ADD6 02:ADC6: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x00ADD9 02:ADC9: A9 C0     LDA #$C0
C - - - - - 0x00ADDB 02:ADCB: 9D 14 03  STA ram_игрок_X_lo,X
C - - - - - 0x00ADDE 02:ADCE: E0 00     CPX #$00
C - - - - - 0x00ADE0 02:ADD0: D0 18     BNE bra_ADEA
C - - - - - 0x00ADE2 02:ADD2: A0 00     LDY #$00
C - - - - - 0x00ADE4 02:ADD4: A5 59     LDA ram_подтип_экрана
C - - - - - 0x00ADE6 02:ADD6: C9 08     CMP #$08
C - - - - - 0x00ADE8 02:ADD8: B0 08     BCS bra_ADE2
C - - - - - 0x00ADEA 02:ADDA: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00ADED 02:ADDD: 29 03     AND #$03
C - - - - - 0x00ADEF 02:ADDF: 85 9E     STA ram_сценка_кунио
C - - - - - 0x00ADF1 02:ADE1: A8        TAY
bra_ADE2:
C - - - - - 0x00ADF2 02:ADE2: B9 FD AD  LDA tbl_ADFD,Y
C - - - - - 0x00ADF5 02:ADE5: 9D 59 04  STA ram_игрок_номер_движения,X
C - - - - - 0x00ADF8 02:ADE8: D0 12     BNE bra_ADFC_RTS
bra_ADEA:
C - - - - - 0x00ADFA 02:ADEA: FE 61 00  INC a: ram_0061,X
C - - - - - 0x00ADFD 02:ADED: A9 01     LDA #$01
C - - - - - 0x00ADFF 02:ADEF: 9D 59 04  STA ram_игрок_номер_движения,X
C - - - - - 0x00AE02 02:ADF2: A5 9E     LDA ram_сценка_кунио
C - - - - - 0x00AE04 02:ADF4: FE 27 03  INC ram_игрок_X_hi,X
C - - - - - 0x00AE07 02:ADF7: A9 80     LDA #$80
C - - - - - 0x00AE09 02:ADF9: 9D 14 03  STA ram_игрок_X_lo,X
bra_ADFC_RTS:
C - - - - - 0x00AE0C 02:ADFC: 60        RTS



tbl_ADFD:
- D 1 - - - 0x00AE0D 02:ADFD: 21        .byte $21   ; 
- D 1 - - - 0x00AE0E 02:ADFE: 21        .byte $21   ; 
- D 1 - - - 0x00AE0F 02:ADFF: 21        .byte $21   ; 
- D 1 - - - 0x00AE10 02:AE00: 2A        .byte $2A   ; 



sub_AE01:
C - - - - - 0x00AE11 02:AE01: A2 0C     LDX #$0C
C - - - - - 0x00AE13 02:AE03: C6 93     DEC ram_таймер_кадра_анимации_мяча
C - - - - - 0x00AE15 02:AE05: D0 1B     BNE bra_AE22
C - - - - - 0x00AE17 02:AE07: E6 A0     INC ram_номер_кадра_анимации_мяча
C - - - - - 0x00AE19 02:AE09: A5 A0     LDA ram_номер_кадра_анимации_мяча
C - - - - - 0x00AE1B 02:AE0B: C9 09     CMP #$09
C - - - - - 0x00AE1D 02:AE0D: 90 06     BCC bra_AE15
C - - - - - 0x00AE1F 02:AE0F: 20 65 AE  JSR sub_AE65
C - - - - - 0x00AE22 02:AE12: 4C 22 AE  JMP loc_AE22
bra_AE15:
C - - - - - 0x00AE25 02:AE15: 0A        ASL
C - - - - - 0x00AE26 02:AE16: A8        TAY
C - - - - - 0x00AE27 02:AE17: B9 29 AE  LDA tbl_AE29,Y
C - - - - - 0x00AE2A 02:AE1A: 85 80     STA ram_номер_анимации_мяча
C - - - - - 0x00AE2C 02:AE1C: C8        INY
C - - - - - 0x00AE2D 02:AE1D: B9 29 AE  LDA tbl_AE29,Y
C - - - - - 0x00AE30 02:AE20: 85 93     STA ram_таймер_кадра_анимации_мяча
bra_AE22:
loc_AE22:
C D 1 - - - 0x00AE32 02:AE22: 20 65 C0  JSR sub_0x01C075
C - - - - - 0x00AE35 02:AE25: 20 1B AA  JSR sub_AA1B
C - - - - - 0x00AE38 02:AE28: 60        RTS



tbl_AE29:
- D 1 - - - 0x00AE39 02:AE29: 80        .byte $80   ; 
- D 1 - - - 0x00AE3A 02:AE2A: 0C        .byte $0C   ; 
- D 1 - - - 0x00AE3B 02:AE2B: 81        .byte $81   ; 
- D 1 - - - 0x00AE3C 02:AE2C: 06        .byte $06   ; 
- D 1 - - - 0x00AE3D 02:AE2D: 82        .byte $82   ; 
- D 1 - - - 0x00AE3E 02:AE2E: 06        .byte $06   ; 
- D 1 - - - 0x00AE3F 02:AE2F: 83        .byte $83   ; 
- D 1 - - - 0x00AE40 02:AE30: 06        .byte $06   ; 
- D 1 - - - 0x00AE41 02:AE31: 84        .byte $84   ; 
- D 1 - - - 0x00AE42 02:AE32: 06        .byte $06   ; 
- D 1 - - - 0x00AE43 02:AE33: 86        .byte $86   ; 
- D 1 - - - 0x00AE44 02:AE34: 06        .byte $06   ; 
- D 1 - - - 0x00AE45 02:AE35: 85        .byte $85   ; 
- D 1 - - - 0x00AE46 02:AE36: 01        .byte $01   ; 
- D 1 - - - 0x00AE47 02:AE37: 85        .byte $85   ; 
- D 1 - - - 0x00AE48 02:AE38: 01        .byte $01   ; 
- D 1 - - - 0x00AE49 02:AE39: 86        .byte $86   ; 
- D 1 - - - 0x00AE4A 02:AE3A: 60        .byte $60   ; 
- - - - - - 0x00AE4B 02:AE3B: 86        .byte $86   ; 
- - - - - - 0x00AE4C 02:AE3C: FF        .byte $FF   ; 



sub_AE3D:
C - - - - - 0x00AE4D 02:AE3D: A2 08     LDX #$08
bra_AE3F:
C - - - - - 0x00AE4F 02:AE3F: A5 51     LDA ram_fps_delay
bra_AE41:
C - - - - - 0x00AE51 02:AE41: C5 51     CMP ram_fps_delay
C - - - - - 0x00AE53 02:AE43: F0 FC     BEQ bra_AE41
C - - - - - 0x00AE55 02:AE45: CA        DEX
C - - - - - 0x00AE56 02:AE46: D0 F7     BNE bra_AE3F
C - - - - - 0x00AE58 02:AE48: 60        RTS



sub_AE49:
C - - - - - 0x00AE59 02:AE49: A2 61     LDX #$61
C - - - - - 0x00AE5B 02:AE4B: 20 77 C0  JSR sub_0x01C087
C - - - - - 0x00AE5E 02:AE4E: 85 5C     STA ram_game_script
C - - - - - 0x00AE60 02:AE50: A0 06     LDY #$06
C - - - - - 0x00AE62 02:AE52: 84 2D     STY ram_002D
C - - - - - 0x00AE64 02:AE54: 85 2C     STA ram_002C
C - - - - - 0x00AE66 02:AE56: A0 8E     LDY #$8E
C - - - - - 0x00AE68 02:AE58: A2 04     LDX #$04
bra_AE5A:
C - - - - - 0x00AE6A 02:AE5A: 91 2C     STA (ram_002C),Y
C - - - - - 0x00AE6C 02:AE5C: 88        DEY
C - - - - - 0x00AE6D 02:AE5D: D0 FB     BNE bra_AE5A
C - - - - - 0x00AE6F 02:AE5F: C6 2D     DEC ram_002D
C - - - - - 0x00AE71 02:AE61: CA        DEX
C - - - - - 0x00AE72 02:AE62: D0 F6     BNE bra_AE5A
C - - - - - 0x00AE74 02:AE64: 60        RTS



sub_AE65:
C - - - - - 0x00AE75 02:AE65: A5 58     LDA ram_номер_экрана
C - - - - - 0x00AE77 02:AE67: C9 03     CMP #$03
C - - - - - 0x00AE79 02:AE69: F0 0E     BEQ bra_AE79
C - - - - - 0x00AE7B 02:AE6B: 20 44 C0  JSR sub_0x01C054
C - - - - - 0x00AE7E 02:AE6E: A9 04     LDA #$04
C - - - - - 0x00AE80 02:AE70: 8D B3 05  STA ram_скорость_яркости
C - - - - - 0x00AE83 02:AE73: 20 4A C0  JSR sub_0x01C05A
C - - - - - 0x00AE86 02:AE76: 20 3D AE  JSR sub_AE3D
bra_AE79:
C - - - - - 0x00AE89 02:AE79: E6 59     INC ram_подтип_экрана
C - - - - - 0x00AE8B 02:AE7B: 60        RTS



sub_AE7C:
C - - - - - 0x00AE8C 02:AE7C: A9 00     LDA #$00
C - - - - - 0x00AE8E 02:AE7E: 85 1C     STA ram_001C
C - - - - - 0x00AE90 02:AE80: A5 08     LDA ram_btn_press
C - - - - - 0x00AE92 02:AE82: 29 30     AND #$30
C - - - - - 0x00AE94 02:AE84: D0 0E     BNE bra_AE94
C - - - - - 0x00AE96 02:AE86: CE 89 05  DEC ram_таймер_демо_lo
C - - - - - 0x00AE99 02:AE89: D0 0D     BNE bra_AE98
C - - - - - 0x00AE9B 02:AE8B: CE 8A 05  DEC ram_таймер_демо_hi
C - - - - - 0x00AE9E 02:AE8E: D0 08     BNE bra_AE98
C - - - - - 0x00AEA0 02:AE90: A9 40     LDA #$40
C - - - - - 0x00AEA2 02:AE92: D0 02     BNE bra_AE96
bra_AE94:
C - - - - - 0x00AEA4 02:AE94: A9 80     LDA #$80
bra_AE96:
C - - - - - 0x00AEA6 02:AE96: 85 1C     STA ram_001C
bra_AE98:
C - - - - - 0x00AEA8 02:AE98: 24 1C     BIT ram_001C
C - - - - - 0x00AEAA 02:AE9A: 60        RTS



sub_AE9B:
C - - - - - 0x00AEAB 02:AE9B: A9 DA     LDA #$DA
C - - - - - 0x00AEAD 02:AE9D: 85 1C     STA ram_001C
C - - - - - 0x00AEAF 02:AE9F: AD 00 03  LDA ram_frm_cnt
C - - - - - 0x00AEB2 02:AEA2: 29 04     AND #$04
C - - - - - 0x00AEB4 02:AEA4: F0 04     BEQ bra_AEAA
C - - - - - 0x00AEB6 02:AEA6: A9 00     LDA #$00
C - - - - - 0x00AEB8 02:AEA8: 85 1C     STA ram_001C
bra_AEAA:
C - - - - - 0x00AEBA 02:AEAA: A2 00     LDX #$00
C - - - - - 0x00AEBC 02:AEAC: A0 00     LDY #$00
bra_AEAE:
C - - - - - 0x00AEBE 02:AEAE: AD 00 03  LDA ram_frm_cnt
C - - - - - 0x00AEC1 02:AEB1: 29 04     AND #$04
C - - - - - 0x00AEC3 02:AEB3: F0 04     BEQ bra_AEB9
C - - - - - 0x00AEC5 02:AEB5: A9 00     LDA #$00
C - - - - - 0x00AEC7 02:AEB7: F0 03     BEQ bra_AEBC
bra_AEB9:
C - - - - - 0x00AEC9 02:AEB9: B9 E5 AE  LDA tbl_AEE5,Y
bra_AEBC:
C - - - - - 0x00AECC 02:AEBC: 9D 96 06  STA ram_буфер_атрибутов,X
C - - - - - 0x00AECF 02:AEBF: C8        INY
C - - - - - 0x00AED0 02:AEC0: E8        INX
C - - - - - 0x00AED1 02:AEC1: E0 12     CPX #$12
C - - - - - 0x00AED3 02:AEC3: 90 E9     BCC bra_AEAE
C - - - - - 0x00AED5 02:AEC5: A5 1C     LDA ram_001C
C - - - - - 0x00AED7 02:AEC7: 8D B9 06  STA ram_буфер_графики
C - - - - - 0x00AEDA 02:AECA: 8E 95 06  STX ram_счетчик_буфера_атрибутов
C - - - - - 0x00AEDD 02:AECD: A9 01     LDA #$01
C - - - - - 0x00AEDF 02:AECF: 8D B8 06  STA ram_счетчик_буфера_графики
C - - - - - 0x00AEE2 02:AED2: A9 C6     LDA #$C6
C - - - - - 0x00AEE4 02:AED4: 8D 94 06  STA ram_байт_2006_lo_атрибуты
C - - - - - 0x00AEE7 02:AED7: A9 AD     LDA #$AD
C - - - - - 0x00AEE9 02:AED9: 8D B7 06  STA ram_байт_2006_lo_графика
C - - - - - 0x00AEEC 02:AEDC: A9 22     LDA #$22
C - - - - - 0x00AEEE 02:AEDE: 8D B6 06  STA ram_байт_2006_hi_графика
C - - - - - 0x00AEF1 02:AEE1: 8D 93 06  STA ram_байт_2006_hi_атрибуты
C - - - - - 0x00AEF4 02:AEE4: 60        RTS



tbl_AEE5:
- D 1 - - - 0x00AEF5 02:AEE5: E3        .byte $E3   ; 
- D 1 - - - 0x00AEF6 02:AEE6: 00        .byte $00   ; 
- D 1 - - - 0x00AEF7 02:AEE7: AE        .byte $AE   ; 
- D 1 - - - 0x00AEF8 02:AEE8: B1        .byte $B1   ; 
- D 1 - - - 0x00AEF9 02:AEE9: D9        .byte $D9   ; 
- D 1 - - - 0x00AEFA 02:AEEA: B5        .byte $B5   ; 
- D 1 - - - 0x00AEFB 02:AEEB: 00        .byte $00   ; 
- D 1 - - - 0x00AEFC 02:AEEC: BF        .byte $BF   ; 
- D 1 - - - 0x00AEFD 02:AEED: B1        .byte $B1   ; 
- D 1 - - - 0x00AEFE 02:AEEE: CF        .byte $CF   ; 
- D 1 - - - 0x00AEFF 02:AEEF: CE        .byte $CE   ; 
- D 1 - - - 0x00AF00 02:AEF0: 00        .byte $00   ; 
- D 1 - - - 0x00AF01 02:AEF1: A6        .byte $A6   ; 
- D 1 - - - 0x00AF02 02:AEF2: AD        .byte $AD   ; 
- D 1 - - - 0x00AF03 02:AEF3: B4        .byte $B4   ; 
- D 1 - - - 0x00AF04 02:AEF4: B9        .byte $B9   ; 
- D 1 - - - 0x00AF05 02:AEF5: 00        .byte $00   ; 
- D 1 - - - 0x00AF06 02:AEF6: E3        .byte $E3   ; 



loc_AEF7_сценка_кунио:
C D 1 - - - 0x00AF07 02:AEF7: A5 9E     LDA ram_сценка_кунио
C - - - - - 0x00AF09 02:AEF9: 20 53 C0  JSR sub_0x01C063
- D 1 - I - 0x00AF0C 02:AEFC: 04 AF     .word ofs_007_AF04_00
- D 1 - I - 0x00AF0E 02:AEFE: 04 AF     .word ofs_007_AF04_01
- D 1 - I - 0x00AF10 02:AF00: 96 AF     .word ofs_007_AF96_02
- D 1 - I - 0x00AF12 02:AF02: F4 AF     .word ofs_007_AFF4_03



ofs_007_AF04_00:
ofs_007_AF04_01:
C - - J - - 0x00AF14 02:AF04: A5 95     LDA ram_номер_кадра_анимации + $01
C - - - - - 0x00AF16 02:AF06: 20 53 C0  JSR sub_0x01C063
- D 1 - I - 0x00AF19 02:AF09: 17 AF     .word ofs_008_AF17_00
- D 1 - I - 0x00AF1B 02:AF0B: 2B AF     .word ofs_008_AF2B_01
- D 1 - I - 0x00AF1D 02:AF0D: 32 AF     .word ofs_008_AF32_02
- D 1 - I - 0x00AF1F 02:AF0F: 6A AF     .word ofs_008_AF6A_03
- D 1 - I - 0x00AF21 02:AF11: 7B AF     .word ofs_008_AF7B_04
- D 1 - I - 0x00AF23 02:AF13: 8A AF     .word ofs_008_AF8A_05
- D 1 - I - 0x00AF25 02:AF15: 2A AF     .word ofs_008_AF2A_06_RTS



ofs_008_AF17_00:
C - - J - - 0x00AF27 02:AF17: AD 27 03  LDA ram_игрок_X_hi
C - - - - - 0x00AF2A 02:AF1A: D0 0E     BNE bra_AF2A_RTS
C - - - - - 0x00AF2C 02:AF1C: AD 14 03  LDA ram_игрок_X_lo
C - - - - - 0x00AF2F 02:AF1F: C9 82     CMP #$82
C - - - - - 0x00AF31 02:AF21: 90 07     BCC bra_AF2A_RTS
C - - - - - 0x00AF33 02:AF23: A9 01     LDA #$01
C - - - - - 0x00AF35 02:AF25: 8D 59 04  STA ram_игрок_номер_движения
; bzk стремно
bra_AF28:
loc_AF28:
C D 1 - - - 0x00AF38 02:AF28: E6 95     INC ram_номер_кадра_анимации + $01
bra_AF2A_RTS:
ofs_008_AF2A_06_RTS:
C - - - - - 0x00AF3A 02:AF2A: 60        RTS



ofs_008_AF2B_01:
C - - J - - 0x00AF3B 02:AF2B: A9 0E     LDA #$0E
C - - - - - 0x00AF3D 02:AF2D: 8D 59 04  STA ram_игрок_номер_движения
C - - - - - 0x00AF40 02:AF30: D0 F6     BNE bra_AF28



ofs_008_AF32_02:
C - - J - - 0x00AF42 02:AF32: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00AF45 02:AF35: AD 92 03  LDA ram_мяч_Z_lo
C - - - - - 0x00AF48 02:AF38: C9 40     CMP #$40
C - - - - - 0x00AF4A 02:AF3A: 90 EE     BCC bra_AF2A_RTS
C - - - - - 0x00AF4C 02:AF3C: A5 97     LDA ram_номер_кадра_анимации + $03
C - - - - - 0x00AF4E 02:AF3E: C9 08     CMP #$08
C - - - - - 0x00AF50 02:AF40: 90 02     BCC bra_AF44
C - - - - - 0x00AF52 02:AF42: E6 95     INC ram_номер_кадра_анимации + $01
bra_AF44:
C - - - - - 0x00AF54 02:AF44: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x00AF57 02:AF47: 29 03     AND #$03
C - - - - - 0x00AF59 02:AF49: 0A        ASL
C - - - - - 0x00AF5A 02:AF4A: A8        TAY
C - - - - - 0x00AF5B 02:AF4B: A5 97     LDA ram_номер_кадра_анимации + $03
C - - - - - 0x00AF5D 02:AF4D: D0 02     BNE bra_AF51
C - - - - - 0x00AF5F 02:AF4F: C8        INY
C - - - - - 0x00AF60 02:AF50: C8        INY
bra_AF51:
C - - - - - 0x00AF61 02:AF51: B9 60 AF  LDA tbl_AF60,Y
C - - - - - 0x00AF64 02:AF54: 85 96     STA ram_номер_кадра_анимации + $02
C - - - - - 0x00AF66 02:AF56: B9 61 AF  LDA tbl_AF60 + $01,Y
C - - - - - 0x00AF69 02:AF59: 8D A3 04  STA ram_obj_direction
C - - - - - 0x00AF6C 02:AF5C: E6 97     INC ram_номер_кадра_анимации + $03
C - - - - - 0x00AF6E 02:AF5E: D0 C8     BNE bra_AF28



tbl_AF60:
- D 1 - - - 0x00AF70 02:AF60: 40        .byte $40   ; 
- D 1 - - - 0x00AF71 02:AF61: 00        .byte $00   ; 
- D 1 - - - 0x00AF72 02:AF62: 18        .byte $18   ; 
- D 1 - - - 0x00AF73 02:AF63: 80        .byte $80   ; 
- D 1 - - - 0x00AF74 02:AF64: 18        .byte $18   ; 
- D 1 - - - 0x00AF75 02:AF65: 00        .byte $00   ; 
- D 1 - - - 0x00AF76 02:AF66: 18        .byte $18   ; 
- D 1 - - - 0x00AF77 02:AF67: 00        .byte $00   ; 
- D 1 - - - 0x00AF78 02:AF68: 18        .byte $18   ; 
- D 1 - - - 0x00AF79 02:AF69: 00        .byte $00   ; 



ofs_008_AF6A_03:
C - - J - - 0x00AF7A 02:AF6A: AD 92 03  LDA ram_мяч_Z_lo
C - - - - - 0x00AF7D 02:AF6D: C5 96     CMP ram_номер_кадра_анимации + $02
C - - - - - 0x00AF7F 02:AF6F: B0 09     BCS bra_AF7A_RTS
C - - - - - 0x00AF81 02:AF71: A9 80     LDA #$80
C - - - - - 0x00AF83 02:AF73: 20 9A AD  JSR sub_AD9A
C - - - - - 0x00AF86 02:AF76: A9 02     LDA #$02
C - - - - - 0x00AF88 02:AF78: 85 95     STA ram_номер_кадра_анимации + $01
bra_AF7A_RTS:
C - - - - - 0x00AF8A 02:AF7A: 60        RTS



ofs_008_AF7B_04:
C - - J - - 0x00AF8B 02:AF7B: AD 92 03  LDA ram_мяч_Z_lo
C - - - - - 0x00AF8E 02:AF7E: C5 96     CMP ram_номер_кадра_анимации + $02
C - - - - - 0x00AF90 02:AF80: B0 F8     BCS bra_AF7A_RTS
C - - - - - 0x00AF92 02:AF82: A9 40     LDA #$40
C - - - - - 0x00AF94 02:AF84: 20 9A AD  JSR sub_AD9A
C - - - - - 0x00AF97 02:AF87: 4C 28 AF  JMP loc_AF28



ofs_008_AF8A_05:
C - - J - - 0x00AF9A 02:AF8A: AD 33 03  LDA ram_мяч_X_hi
C - - - - - 0x00AF9D 02:AF8D: F0 9B     BEQ bra_AF2A_RTS
C - - - - - 0x00AF9F 02:AF8F: A9 21     LDA #$21
C - - - - - 0x00AFA1 02:AF91: 8D 59 04  STA ram_игрок_номер_движения
C - - - - - 0x00AFA4 02:AF94: D0 92     BNE bra_AF28



ofs_007_AF96_02:
C - - J - - 0x00AFA6 02:AF96: A5 95     LDA ram_номер_кадра_анимации + $01
C - - - - - 0x00AFA8 02:AF98: 20 53 C0  JSR sub_0x01C063
- D 1 - I - 0x00AFAB 02:AF9B: A5 AF     .word ofs_009_AFA5_00
- D 1 - I - 0x00AFAD 02:AF9D: B9 AF     .word ofs_009_AFB9_01
- D 1 - I - 0x00AFAF 02:AF9F: C7 AF     .word ofs_009_AFC7_02
- D 1 - I - 0x00AFB1 02:AFA1: E2 AF     .word ofs_009_AFE2_03
- D 1 - I - 0x00AFB3 02:AFA3: B8 AF     .word ofs_009_AFB8_04_RTS



ofs_009_AFA5_00:
C - - J - - 0x00AFB5 02:AFA5: AD 27 03  LDA ram_игрок_X_hi
C - - - - - 0x00AFB8 02:AFA8: D0 0E     BNE bra_AFB8_RTS
C - - - - - 0x00AFBA 02:AFAA: AD 14 03  LDA ram_игрок_X_lo
C - - - - - 0x00AFBD 02:AFAD: C9 50     CMP #$50
C - - - - - 0x00AFBF 02:AFAF: 90 07     BCC bra_AFB8_RTS
C - - - - - 0x00AFC1 02:AFB1: A9 C0     LDA #$C0
C - - - - - 0x00AFC3 02:AFB3: 20 9A AD  JSR sub_AD9A
; bzk стремно
bra_AFB6:
C - - - - - 0x00AFC6 02:AFB6: E6 95     INC ram_номер_кадра_анимации + $01
bra_AFB8_RTS:
ofs_009_AFB8_04_RTS:
C - - - - - 0x00AFC8 02:AFB8: 60        RTS



ofs_009_AFB9_01:
C - - J - - 0x00AFC9 02:AFB9: AD 59 04  LDA ram_игрок_номер_движения
C - - - - - 0x00AFCC 02:AFBC: C9 81     CMP #$81
C - - - - - 0x00AFCE 02:AFBE: D0 F8     BNE bra_AFB8_RTS
C - - - - - 0x00AFD0 02:AFC0: A9 21     LDA #$21
C - - - - - 0x00AFD2 02:AFC2: 8D 59 04  STA ram_игрок_номер_движения
C - - - - - 0x00AFD5 02:AFC5: D0 EF     BNE bra_AFB6



ofs_009_AFC7_02:
C - - J - - 0x00AFD7 02:AFC7: A5 97     LDA ram_номер_кадра_анимации + $03
C - - - - - 0x00AFD9 02:AFC9: C9 02     CMP #$02
C - - - - - 0x00AFDB 02:AFCB: B0 10     BCS bra_AFDD
C - - - - - 0x00AFDD 02:AFCD: AD 14 03  LDA ram_игрок_X_lo
C - - - - - 0x00AFE0 02:AFD0: C9 E0     CMP #$E0
C - - - - - 0x00AFE2 02:AFD2: 90 E4     BCC bra_AFB8_RTS
C - - - - - 0x00AFE4 02:AFD4: A9 80     LDA #$80
C - - - - - 0x00AFE6 02:AFD6: 8D A3 04  STA ram_obj_direction
C - - - - - 0x00AFE9 02:AFD9: E6 97     INC ram_номер_кадра_анимации + $03
C - - - - - 0x00AFEB 02:AFDB: D0 D9     BNE bra_AFB6
bra_AFDD:
C - - - - - 0x00AFED 02:AFDD: A9 04     LDA #$04
C - - - - - 0x00AFEF 02:AFDF: 85 95     STA ram_номер_кадра_анимации + $01
C - - - - - 0x00AFF1 02:AFE1: 60        RTS



ofs_009_AFE2_03:
C - - J - - 0x00AFF2 02:AFE2: AD 14 03  LDA ram_игрок_X_lo
C - - - - - 0x00AFF5 02:AFE5: C9 20     CMP #$20
C - - - - - 0x00AFF7 02:AFE7: B0 CF     BCS bra_AFB8_RTS
C - - - - - 0x00AFF9 02:AFE9: A9 00     LDA #$00
C - - - - - 0x00AFFB 02:AFEB: 8D A3 04  STA ram_obj_direction
C - - - - - 0x00AFFE 02:AFEE: A9 02     LDA #$02
C - - - - - 0x00B000 02:AFF0: 85 95     STA ram_номер_кадра_анимации + $01
C - - - - - 0x00B002 02:AFF2: D0 C4     BNE bra_AFB8_RTS



ofs_007_AFF4_03:
C - - J - - 0x00B004 02:AFF4: A5 95     LDA ram_номер_кадра_анимации + $01
C - - - - - 0x00B006 02:AFF6: 20 53 C0  JSR sub_0x01C063
- D 1 - I - 0x00B009 02:AFF9: FF AF     .word ofs_010_AFFF_00
- D 1 - I - 0x00B00B 02:AFFB: 17 B0     .word ofs_010_B017_01
- D 1 - I - 0x00B00D 02:AFFD: 2E B0     .word ofs_010_B02E_02



ofs_010_AFFF_00:
C - - J - - 0x00B00F 02:AFFF: A9 01     LDA #$01
C - - - - - 0x00B011 02:B001: 85 04     STA ram_btn_hold
C - - - - - 0x00B013 02:B003: AD 20 03  LDA ram_мяч_X_lo
C - - - - - 0x00B016 02:B006: C9 F0     CMP #$F0
C - - - - - 0x00B018 02:B008: 90 0C     BCC bra_B016_RTS
C - - - - - 0x00B01A 02:B00A: A9 02     LDA #$02
C - - - - - 0x00B01C 02:B00C: 8D 3A 04  STA ram_мяч_spd_Z_hi
C - - - - - 0x00B01F 02:B00F: A9 FE     LDA #$FE
C - - - - - 0x00B021 02:B011: 8D 02 04  STA ram_мяч_spd_X_hi
; bzk стремно, лучше скопировать
bra_B014:
C - - - - - 0x00B024 02:B014: E6 95     INC ram_номер_кадра_анимации + $01
bra_B016_RTS:
C - - - - - 0x00B026 02:B016: 60        RTS



ofs_010_B017_01:
C - - J - - 0x00B027 02:B017: A9 01     LDA #$01
C - - - - - 0x00B029 02:B019: 85 04     STA ram_btn_hold
C - - - - - 0x00B02B 02:B01B: AD 27 03  LDA ram_игрок_X_hi
C - - - - - 0x00B02E 02:B01E: F0 F6     BEQ bra_B016_RTS
C - - - - - 0x00B030 02:B020: AD 14 03  LDA ram_игрок_X_lo
C - - - - - 0x00B033 02:B023: C9 60     CMP #$60
C - - - - - 0x00B035 02:B025: 90 EF     BCC bra_B016_RTS
C - - - - - 0x00B037 02:B027: A9 80     LDA #$80
C - - - - - 0x00B039 02:B029: 8D A3 04  STA ram_obj_direction
C - - - - - 0x00B03C 02:B02C: D0 E6     BNE bra_B014



ofs_010_B02E_02:
C - - J - - 0x00B03E 02:B02E: A9 02     LDA #$02
C - - - - - 0x00B040 02:B030: 85 04     STA ram_btn_hold
C - - - - - 0x00B042 02:B032: 60        RTS



sub_B033:
C - - - - - 0x00B043 02:B033: A2 0C     LDX #$0C
C - - - - - 0x00B045 02:B035: D6 87     DEC ram_таймер_кадра_анимации,X
C - - - - - 0x00B047 02:B037: D0 2F     BNE bra_B068
C - - - - - 0x00B049 02:B039: 24 94     BIT ram_номер_кадра_анимации
C - - - - - 0x00B04B 02:B03B: 30 0C     BMI bra_B049
C - - - - - 0x00B04D 02:B03D: C6 94     DEC ram_номер_кадра_анимации
C - - - - - 0x00B04F 02:B03F: D0 18     BNE bra_B059
C - - - - - 0x00B051 02:B041: C6 94     DEC ram_номер_кадра_анимации
C - - - - - 0x00B053 02:B043: A0 02     LDY #$02
C - - - - - 0x00B055 02:B045: A9 80     LDA #$80
C - - - - - 0x00B057 02:B047: D0 16     BNE bra_B05F
bra_B049:
C - - - - - 0x00B059 02:B049: F6 94     INC ram_номер_кадра_анимации,X
C - - - - - 0x00B05B 02:B04B: B5 94     LDA ram_номер_кадра_анимации,X
C - - - - - 0x00B05D 02:B04D: 0A        ASL
C - - - - - 0x00B05E 02:B04E: A8        TAY
C - - - - - 0x00B05F 02:B04F: B9 6F B0  LDA tbl_B06F,Y
C - - - - - 0x00B062 02:B052: 10 0B     BPL bra_B05F
C - - - - - 0x00B064 02:B054: B9 70 B0  LDA tbl_B06F + $01,Y
C - - - - - 0x00B067 02:B057: 85 94     STA ram_номер_кадра_анимации
bra_B059:
C - - - - - 0x00B069 02:B059: A0 00     LDY #$00
C - - - - - 0x00B06B 02:B05B: B5 74     LDA ram_номер_анимации,X
C - - - - - 0x00B06D 02:B05D: 49 01     EOR #$01
bra_B05F:
C - - - - - 0x00B06F 02:B05F: 09 80     ORA #$80
C - - - - - 0x00B071 02:B061: 95 74     STA ram_номер_анимации,X
C - - - - - 0x00B073 02:B063: B9 70 B0  LDA tbl_B06F + $01,Y
C - - - - - 0x00B076 02:B066: 95 87     STA ram_таймер_кадра_анимации,X
bra_B068:
C - - - - - 0x00B078 02:B068: 20 65 C0  JSR sub_0x01C075
C - - - - - 0x00B07B 02:B06B: 20 1B AA  JSR sub_AA1B
C - - - - - 0x00B07E 02:B06E: 60        RTS



tbl_B06F:
- - - - - - 0x00B07F 02:B06F: 00        .byte $00   ; 
- D 1 - - - 0x00B080 02:B070: 06        .byte $06   ; 
- D 1 - - - 0x00B081 02:B071: 00        .byte $00   ; 
- D 1 - - - 0x00B082 02:B072: 30        .byte $30   ; 
- D 1 - - - 0x00B083 02:B073: 03        .byte $03   ; 
- D 1 - - - 0x00B084 02:B074: 18        .byte $18   ; 
- D 1 - - - 0x00B085 02:B075: 00        .byte $00   ; 
- D 1 - - - 0x00B086 02:B076: 30        .byte $30   ; 
- D 1 - - - 0x00B087 02:B077: FF        .byte $FF   ; 
- D 1 - - - 0x00B088 02:B078: 03        .byte $03   ; 
- D 1 - - - 0x00B089 02:B079: FF        .byte $FF   ; 
- D 1 - - - 0x00B08A 02:B07A: 10        .byte $10   ; 
- D 1 - - - 0x00B08B 02:B07B: FF        .byte $FF   ; 
- D 1 - - - 0x00B08C 02:B07C: 20        .byte $20   ; 
- D 1 - - - 0x00B08D 02:B07D: FF        .byte $FF   ; 
- D 1 - - - 0x00B08E 02:B07E: 20        .byte $20   ; 
- D 1 - - - 0x00B08F 02:B07F: FF        .byte $FF   ; 
- D 1 - - - 0x00B090 02:B080: 20        .byte $20   ; 
- D 1 - - - 0x00B091 02:B081: 00        .byte $00   ; 
- D 1 - - - 0x00B092 02:B082: 10        .byte $10   ; 
- D 1 - - - 0x00B093 02:B083: FF        .byte $FF   ; 
- D 1 - - - 0x00B094 02:B084: 04        .byte $04   ; 
- D 1 - - - 0x00B095 02:B085: FF        .byte $FF   ; 
- D 1 - - - 0x00B096 02:B086: 08        .byte $08   ; 
- D 1 - - - 0x00B097 02:B087: 00        .byte $00   ; 
- D 1 - - - 0x00B098 02:B088: 20        .byte $20   ; 
- D 1 - - - 0x00B099 02:B089: 02        .byte $02   ; 
- D 1 - - - 0x00B09A 02:B08A: FF        .byte $FF   ; 



loc_B08B:
sub_B08B:
C D 1 - - - 0x00B09B 02:B08B: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B09E 02:B08E: 0A        ASL
C - - - - - 0x00B09F 02:B08F: A8        TAY
C - - - - - 0x00B0A0 02:B090: B9 9D B0  LDA tbl_B09D,Y
C - - - - - 0x00B0A3 02:B093: 85 2C     STA ram_002C
C - - - - - 0x00B0A5 02:B095: B9 9E B0  LDA tbl_B09D + $01,Y
C - - - - - 0x00B0A8 02:B098: 85 2D     STA ram_002D
C - - - - - 0x00B0AA 02:B09A: 6C 2C 00  JMP (ram_002C)

tbl_B09D:
- - - - - - 0x00B0AD 02:B09D: BB B0     .word ofs_011_B0BB_00_RTS
- D 1 - - - 0x00B0AF 02:B09F: BC B0     .word ofs_011_B0BC_01
- D 1 - - - 0x00B0B1 02:B0A1: D9 B0     .word ofs_011_B0D9_02
- D 1 - - - 0x00B0B3 02:B0A3: 74 B1     .word ofs_011_B174_03
- D 1 - - - 0x00B0B5 02:B0A5: E9 B0     .word ofs_011_B0E9_04
- D 1 - - - 0x00B0B7 02:B0A7: E9 B0     .word ofs_011_B0E9_05
- D 1 - - - 0x00B0B9 02:B0A9: FC B0     .word ofs_011_B0FC_06
- D 1 - - - 0x00B0BB 02:B0AB: 1C B1     .word ofs_011_B11C_07
- D 1 - - - 0x00B0BD 02:B0AD: 8A B1     .word ofs_011_B18A_08
- D 1 - - - 0x00B0BF 02:B0AF: CE B1     .word ofs_011_B1CE_09
- D 1 - - - 0x00B0C1 02:B0B1: E6 B1     .word ofs_011_B1E6_0A
- D 1 - - - 0x00B0C3 02:B0B3: FB B1     .word ofs_011_B1FB_0B
- D 1 - - - 0x00B0C5 02:B0B5: BC B0     .word ofs_011_B0BC_0C
- D 1 - - - 0x00B0C7 02:B0B7: E9 B0     .word ofs_011_B0E9_0D
- D 1 - - - 0x00B0C9 02:B0B9: FB B1     .word ofs_011_B1FB_0E



ofs_011_B0BB_00_RTS:
- - - - - - 0x00B0CB 02:B0BB: 60        RTS



ofs_011_B0BC_01:
ofs_011_B0BC_0C:
C - - J - - 0x00B0CC 02:B0BC: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B0CF 02:B0BF: 30 06     BMI bra_B0C7
C - - - - - 0x00B0D1 02:B0C1: 20 82 B2  JSR sub_B282
C - - - - - 0x00B0D4 02:B0C4: 20 39 AA  JSR sub_AA39
bra_B0C7:
C - - - - - 0x00B0D7 02:B0C7: A9 04     LDA #$04
loc_B0C9:
C D 1 - - - 0x00B0D9 02:B0C9: 20 9A B2  JSR sub_B29A
C - - - - - 0x00B0DC 02:B0CC: 20 34 AA  JSR sub_AA34
C - - - - - 0x00B0DF 02:B0CF: 20 3F B3  JSR sub_B33F
C - - - - - 0x00B0E2 02:B0D2: 20 43 AA  JSR sub_AA43
C - - - - - 0x00B0E5 02:B0D5: 20 BC B2  JSR sub_B2BC
C - - - - - 0x00B0E8 02:B0D8: 60        RTS



ofs_011_B0D9_02:
C - - J - - 0x00B0E9 02:B0D9: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B0EC 02:B0DC: 30 06     BMI bra_B0E4
C - - - - - 0x00B0EE 02:B0DE: 20 82 B2  JSR sub_B282
C - - - - - 0x00B0F1 02:B0E1: 20 39 AA  JSR sub_AA39
bra_B0E4:
C - - - - - 0x00B0F4 02:B0E4: A9 03     LDA #$03
C - - - - - 0x00B0F6 02:B0E6: 4C C9 B0  JMP loc_B0C9



ofs_011_B0E9_04:
ofs_011_B0E9_05:
ofs_011_B0E9_0D:
C - - J - - 0x00B0F9 02:B0E9: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B0FC 02:B0EC: 30 09     BMI bra_B0F7
C - - - - - 0x00B0FE 02:B0EE: 20 82 B2  JSR sub_B282
C - - - - - 0x00B101 02:B0F1: 20 39 AA  JSR sub_AA39
C - - - - - 0x00B104 02:B0F4: 20 48 AA  JSR sub_AA48
bra_B0F7:
C - - - - - 0x00B107 02:B0F7: A9 03     LDA #$03
C - - - - - 0x00B109 02:B0F9: 4C C9 B0  JMP loc_B0C9



ofs_011_B0FC_06:
C - - J - - 0x00B10C 02:B0FC: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B10F 02:B0FF: 30 03     BMI bra_B104
C - - - - - 0x00B111 02:B101: 20 82 B2  JSR sub_B282
bra_B104:
C - - - - - 0x00B114 02:B104: 20 48 AA  JSR sub_AA48
C - - - - - 0x00B117 02:B107: 20 4D AA  JSR sub_AA4D
C - - - - - 0x00B11A 02:B10A: A9 03     LDA #$03
C - - - - - 0x00B11C 02:B10C: 20 93 B2  JSR sub_B293
loc_B10F:
C D 1 - - - 0x00B11F 02:B10F: 20 34 AA  JSR sub_AA34
C - - - - - 0x00B122 02:B112: 20 3F B3  JSR sub_B33F
C - - - - - 0x00B125 02:B115: 20 43 AA  JSR sub_AA43
C - - - - - 0x00B128 02:B118: 20 BC B2  JSR sub_B2BC
loc_B11B_RTS:
C D 1 - - - 0x00B12B 02:B11B: 60        RTS



ofs_011_B11C_07:
C - - J - - 0x00B12C 02:B11C: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B12F 02:B11F: 30 06     BMI bra_B127
C - - - - - 0x00B131 02:B121: 20 82 B2  JSR sub_B282
C - - - - - 0x00B134 02:B124: 20 48 AA  JSR sub_AA48
bra_B127:
C - - - - - 0x00B137 02:B127: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00B13A 02:B12A: C9 FF     CMP #$FF
C - - - - - 0x00B13C 02:B12C: D0 0B     BNE bra_B139
C - - - - - 0x00B13E 02:B12E: BD A3 04  LDA ram_obj_direction,X
C - - - - - 0x00B141 02:B131: 09 40     ORA #$40
C - - - - - 0x00B143 02:B133: 9D 96 04  STA ram_obj_current_angle,X
C - - - - - 0x00B146 02:B136: 4C 4C B1  JMP loc_B14C
bra_B139:
C - - - - - 0x00B149 02:B139: BD A3 04  LDA ram_obj_direction,X
C - - - - - 0x00B14C 02:B13C: 0A        ASL
C - - - - - 0x00B14D 02:B13D: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00B150 02:B140: 6A        ROR
C - - - - - 0x00B151 02:B141: 4A        LSR
C - - - - - 0x00B152 02:B142: 4A        LSR
C - - - - - 0x00B153 02:B143: 4A        LSR
C - - - - - 0x00B154 02:B144: 4A        LSR
C - - - - - 0x00B155 02:B145: A8        TAY
C - - - - - 0x00B156 02:B146: B9 64 B1  LDA tbl_B164,Y
C - - - - - 0x00B159 02:B149: 9D 96 04  STA ram_obj_current_angle,X
loc_B14C:
C D 1 - - - 0x00B15C 02:B14C: 5D A3 04  EOR ram_obj_direction,X
C - - - - - 0x00B15F 02:B14F: 10 08     BPL bra_B159
C - - - - - 0x00B161 02:B151: A9 03     LDA #$03
C - - - - - 0x00B163 02:B153: 9D 59 04  STA ram_игрок_номер_движения,X
C - - - - - 0x00B166 02:B156: 4C 1B B1  JMP loc_B11B_RTS
bra_B159:
C - - - - - 0x00B169 02:B159: A9 04     LDA #$04
C - - - - - 0x00B16B 02:B15B: 20 93 B2  JSR sub_B293
C - - - - - 0x00B16E 02:B15E: 20 48 AA  JSR sub_AA48
C - - - - - 0x00B171 02:B161: 4C 0F B1  JMP loc_B10F



tbl_B164:
- - - - - - 0x00B174 02:B164: 20        .byte $20   ; 
- D 1 - - - 0x00B175 02:B165: 20        .byte $20   ; 
- D 1 - - - 0x00B176 02:B166: 40        .byte $40   ; 
- - - - - - 0x00B177 02:B167: 60        .byte $60   ; 
- D 1 - - - 0x00B178 02:B168: 60        .byte $60   ; 
- - - - - - 0x00B179 02:B169: A0        .byte $A0   ; 
- D 1 - - - 0x00B17A 02:B16A: C0        .byte $C0   ; 
- - - - - - 0x00B17B 02:B16B: E0        .byte $E0   ; 
- D 1 - - - 0x00B17C 02:B16C: E0        .byte $E0   ; 
- - - - - - 0x00B17D 02:B16D: 20        .byte $20   ; 
- D 1 - - - 0x00B17E 02:B16E: 40        .byte $40   ; 
- - - - - - 0x00B17F 02:B16F: 60        .byte $60   ; 
- D 1 - - - 0x00B180 02:B170: A0        .byte $A0   ; 
- - - - - - 0x00B181 02:B171: A0        .byte $A0   ; 
- D 1 - - - 0x00B182 02:B172: C0        .byte $C0   ; 
- D 1 - - - 0x00B183 02:B173: E0        .byte $E0   ; 



ofs_011_B174_03:
C - - J - - 0x00B184 02:B174: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B187 02:B177: 30 06     BMI bra_B17F
C - - - - - 0x00B189 02:B179: 20 82 B2  JSR sub_B282
C - - - - - 0x00B18C 02:B17C: 20 39 AA  JSR sub_AA39
bra_B17F:
C - - - - - 0x00B18F 02:B17F: A9 02     LDA #$02
C - - - - - 0x00B191 02:B181: 20 9A B2  JSR sub_B29A
C - - - - - 0x00B194 02:B184: 20 A8 B2  JSR sub_B2A8
C - - - - - 0x00B197 02:B187: 4C 0F B1  JMP loc_B10F



ofs_011_B18A_08:
C - - J - - 0x00B19A 02:B18A: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B19D 02:B18D: 30 15     BMI bra_B1A4
C - - - - - 0x00B19F 02:B18F: 20 82 B2  JSR sub_B282
C - - - - - 0x00B1A2 02:B192: BD A3 04  LDA ram_obj_direction,X
C - - - - - 0x00B1A5 02:B195: 09 40     ORA #$40
C - - - - - 0x00B1A7 02:B197: 9D 96 04  STA ram_obj_current_angle,X
loc_B19A:
C D 1 - - - 0x00B1AA 02:B19A: A9 2B     LDA #$2B
C - - - - - 0x00B1AC 02:B19C: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x00B1AF 02:B19F: A9 0A     LDA #$0A
C - - - - - 0x00B1B1 02:B1A1: 20 A1 B2  JSR sub_B2A1
bra_B1A4:
loc_B1A4:
C D 1 - - - 0x00B1B4 02:B1A4: 20 34 AA  JSR sub_AA34
C - - - - - 0x00B1B7 02:B1A7: 20 3F B3  JSR sub_B33F
C - - - - - 0x00B1BA 02:B1AA: 20 43 AA  JSR sub_AA43
C - - - - - 0x00B1BD 02:B1AD: 20 BC B2  JSR sub_B2BC
C - - - - - 0x00B1C0 02:B1B0: BD 99 03  LDA ram_игрок_Z_hi,X
C - - - - - 0x00B1C3 02:B1B3: 30 05     BMI bra_B1BA
C - - - - - 0x00B1C5 02:B1B5: 1D 86 03  ORA ram_игрок_Z_lo,X
C - - - - - 0x00B1C8 02:B1B8: D0 13     BNE bra_B1CD_RTS
bra_B1BA:
C - - - - - 0x00B1CA 02:B1BA: A9 00     LDA #$00
C - - - - - 0x00B1CC 02:B1BC: 9D 73 03  STA ram_игрок_Z_sub,X
C - - - - - 0x00B1CF 02:B1BF: 9D 86 03  STA ram_игрок_Z_lo,X
C - - - - - 0x00B1D2 02:B1C2: 9D 99 03  STA ram_игрок_Z_hi,X
C - - - - - 0x00B1D5 02:B1C5: A9 2C     LDA #$2C
C - - - - - 0x00B1D7 02:B1C7: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x00B1DA 02:B1CA: 20 4A B2  JSR sub_B24A
bra_B1CD_RTS:
C - - - - - 0x00B1DD 02:B1CD: 60        RTS



ofs_011_B1CE_09:
C - - J - - 0x00B1DE 02:B1CE: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B1E1 02:B1D1: 30 D1     BMI bra_B1A4
C - - - - - 0x00B1E3 02:B1D3: 20 82 B2  JSR sub_B282
C - - - - - 0x00B1E6 02:B1D6: BD A3 04  LDA ram_obj_direction,X
C - - - - - 0x00B1E9 02:B1D9: 09 40     ORA #$40
C - - - - - 0x00B1EB 02:B1DB: 9D 96 04  STA ram_obj_current_angle,X
loc_B1DE:
C D 1 - - - 0x00B1EE 02:B1DE: A9 03     LDA #$03
C - - - - - 0x00B1F0 02:B1E0: 20 93 B2  JSR sub_B293
C - - - - - 0x00B1F3 02:B1E3: 4C 9A B1  JMP loc_B19A



ofs_011_B1E6_0A:
C - - J - - 0x00B1F6 02:B1E6: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B1F9 02:B1E9: 30 B9     BMI bra_B1A4
C - - - - - 0x00B1FB 02:B1EB: 20 82 B2  JSR sub_B282
C - - - - - 0x00B1FE 02:B1EE: BD A3 04  LDA ram_obj_direction,X
C - - - - - 0x00B201 02:B1F1: 09 40     ORA #$40
C - - - - - 0x00B203 02:B1F3: 49 80     EOR #$80
C - - - - - 0x00B205 02:B1F5: 9D 96 04  STA ram_obj_current_angle,X
C - - - - - 0x00B208 02:B1F8: 4C DE B1  JMP loc_B1DE



ofs_011_B1FB_0B:
ofs_011_B1FB_0E:
C - - J - - 0x00B20B 02:B1FB: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B20E 02:B1FE: 30 47     BMI bra_B247
C - - - - - 0x00B210 02:B200: 20 82 B2  JSR sub_B282
C - - - - - 0x00B213 02:B203: BD B0 04  LDA ram_obj_new_angle,X
C - - - - - 0x00B216 02:B206: C9 FF     CMP #$FF
C - - - - - 0x00B218 02:B208: F0 05     BEQ bra_B20F
C - - - - - 0x00B21A 02:B20A: 5D A3 04  EOR ram_obj_direction,X
C - - - - - 0x00B21D 02:B20D: 30 28     BMI bra_B237
bra_B20F:
C - - - - - 0x00B21F 02:B20F: 18        CLC
C - - - - - 0x00B220 02:B210: BD 20 04  LDA ram_игрок_spd_Z_lo,X
C - - - - - 0x00B223 02:B213: 49 FF     EOR #$FF
C - - - - - 0x00B225 02:B215: 69 01     ADC #$01
C - - - - - 0x00B227 02:B217: 9D 20 04  STA ram_игрок_spd_Z_lo,X
C - - - - - 0x00B22A 02:B21A: BD 2E 04  LDA ram_игрок_spd_Z_hi,X
C - - - - - 0x00B22D 02:B21D: 49 FF     EOR #$FF
C - - - - - 0x00B22F 02:B21F: 69 00     ADC #$00
C - - - - - 0x00B231 02:B221: 9D 2E 04  STA ram_игрок_spd_Z_hi,X
C - - - - - 0x00B234 02:B224: 38        SEC
C - - - - - 0x00B235 02:B225: BD 20 04  LDA ram_игрок_spd_Z_lo,X
C - - - - - 0x00B238 02:B228: E9 00     SBC #$00
C - - - - - 0x00B23A 02:B22A: 9D 20 04  STA ram_игрок_spd_Z_lo,X
C - - - - - 0x00B23D 02:B22D: BD 2E 04  LDA ram_игрок_spd_Z_hi,X
C - - - - - 0x00B240 02:B230: E9 04     SBC #$04
C - - - - - 0x00B242 02:B232: 9D 2E 04  STA ram_игрок_spd_Z_hi,X
C - - - - - 0x00B245 02:B235: B0 10     BCS bra_B247
bra_B237:
C - - - - - 0x00B247 02:B237: A9 00     LDA #$00
C - - - - - 0x00B249 02:B239: 9D 2E 04  STA ram_игрок_spd_Z_hi,X
C - - - - - 0x00B24C 02:B23C: 9D 20 04  STA ram_игрок_spd_Z_lo,X
C - - - - - 0x00B24F 02:B23F: A9 02     LDA #$02
C - - - - - 0x00B251 02:B241: 9D 59 04  STA ram_игрок_номер_движения,X
C - - - - - 0x00B254 02:B244: 4C 0F B1  JMP loc_B10F
bra_B247:
C - - - - - 0x00B257 02:B247: 4C A4 B1  JMP loc_B1A4



sub_B24A:
ofs_B24A:
C - - J - - 0x00B25A 02:B24A: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B25D 02:B24D: 29 7F     AND #$7F
C - - - - - 0x00B25F 02:B24F: A8        TAY
C - - - - - 0x00B260 02:B250: B9 72 B2  LDA tbl_B272,Y
C - - - - - 0x00B263 02:B253: 10 0E     BPL bra_B263
- - - - - - 0x00B265 02:B255: BD 86 04  LDA ram_игрок_состояние,X
- - - - - - 0x00B268 02:B258: 29 08     AND #$08
- - - - - - 0x00B26A 02:B25A: F0 05     BEQ bra_B261
- - - - - - 0x00B26C 02:B25C: A9 21     LDA #$21
- - - - - - 0x00B26E 02:B25E: 4C 63 B2  JMP loc_B263
bra_B261:
- - - - - - 0x00B271 02:B261: A9 20     LDA #$20
bra_B263:
loc_B263:
C - - - - - 0x00B273 02:B263: 9D 59 04  STA ram_игрок_номер_движения,X
C - - - - - 0x00B276 02:B266: A9 00     LDA #$00
C - - - - - 0x00B278 02:B268: 9D 94 00  STA a: ram_номер_кадра_анимации,X
C - - - - - 0x00B27B 02:B26B: 9D 87 00  STA a: ram_таймер_кадра_анимации,X
C - - - - - 0x00B27E 02:B26E: 9D 6C 04  STA ram_игрок_подтип_анимации,X
C - - - - - 0x00B281 02:B271: 60        RTS



tbl_B272:
- - - - - - 0x00B282 02:B272: 00        .byte $00   ; 
- - - - - - 0x00B283 02:B273: 01        .byte $01   ; 
- D 1 - - - 0x00B284 02:B274: 01        .byte $01   ; 
- D 1 - - - 0x00B285 02:B275: 01        .byte $01   ; 
- D 1 - - - 0x00B286 02:B276: 01        .byte $01   ; 
- D 1 - - - 0x00B287 02:B277: 01        .byte $01   ; 
- - - - - - 0x00B288 02:B278: 01        .byte $01   ; 
- - - - - - 0x00B289 02:B279: 01        .byte $01   ; 
- D 1 - - - 0x00B28A 02:B27A: 02        .byte $02   ; 
- D 1 - - - 0x00B28B 02:B27B: 0B        .byte $0B   ; 
- D 1 - - - 0x00B28C 02:B27C: 0E        .byte $0E   ; 
- D 1 - - - 0x00B28D 02:B27D: 0B        .byte $0B   ; 
- - - - - - 0x00B28E 02:B27E: FF        .byte $FF   ; 
- D 1 - - - 0x00B28F 02:B27F: 01        .byte $01   ; 
- D 1 - - - 0x00B290 02:B280: 0E        .byte $0E   ; 
- - - - - - 0x00B291 02:B281: 00        .byte $00   ; 



sub_B282:
C - - - - - 0x00B292 02:B282: 09 80     ORA #$80
C - - - - - 0x00B294 02:B284: 9D 59 04  STA ram_игрок_номер_движения,X
C - - - - - 0x00B297 02:B287: A9 00     LDA #$00
C - - - - - 0x00B299 02:B289: 9D 87 00  STA a: ram_таймер_кадра_анимации,X
C - - - - - 0x00B29C 02:B28C: 9D 94 00  STA a: ram_номер_кадра_анимации,X
C - - - - - 0x00B29F 02:B28F: 9D 6C 04  STA ram_игрок_подтип_анимации,X
C - - - - - 0x00B2A2 02:B292: 60        RTS



sub_B293:
C - - - - - 0x00B2A3 02:B293: 8D 93 04  STA ram_0493
C - - - - - 0x00B2A6 02:B296: 20 52 AA  JSR sub_AA52
C - - - - - 0x00B2A9 02:B299: 60        RTS



sub_B29A:
C - - - - - 0x00B2AA 02:B29A: 8D 93 04  STA ram_0493
C - - - - - 0x00B2AD 02:B29D: 20 57 AA  JSR sub_AA57
C - - - - - 0x00B2B0 02:B2A0: 60        RTS



sub_B2A1:
C - - - - - 0x00B2B1 02:B2A1: 8D 93 04  STA ram_0493
C - - - - - 0x00B2B4 02:B2A4: 20 5C AA  JSR sub_AA5C
C - - - - - 0x00B2B7 02:B2A7: 60        RTS



sub_B2A8:
C - - - - - 0x00B2B8 02:B2A8: BD F6 03  LDA ram_игрок_spd_X_hi,X
C - - - - - 0x00B2BB 02:B2AB: 1D E8 03  ORA ram_игрок_spd_X_lo,X
C - - - - - 0x00B2BE 02:B2AE: 1D 12 04  ORA ram_игрок_spd_Y_hi,X
C - - - - - 0x00B2C1 02:B2B1: 1D 04 04  ORA ram_игрок_spd_Y_lo,X
C - - - - - 0x00B2C4 02:B2B4: D0 05     BNE bra_B2BB_RTS
C - - - - - 0x00B2C6 02:B2B6: 20 4A B2  JSR sub_B24A
C - - - - - 0x00B2C9 02:B2B9: 68        PLA
C - - - - - 0x00B2CA 02:B2BA: 68        PLA
bra_B2BB_RTS:
C - - - - - 0x00B2CB 02:B2BB: 60        RTS



sub_B2BC:
C - - - - - 0x00B2CC 02:B2BC: A0 00     LDY #$00
C - - - - - 0x00B2CE 02:B2BE: A5 58     LDA ram_номер_экрана
C - - - - - 0x00B2D0 02:B2C0: C9 03     CMP #$03
C - - - - - 0x00B2D2 02:B2C2: D0 02     BNE bra_B2C6
C - - - - - 0x00B2D4 02:B2C4: A0 04     LDY #$04
bra_B2C6:
C - - - - - 0x00B2D6 02:B2C6: 84 1C     STY ram_001C
C - - - - - 0x00B2D8 02:B2C8: A0 00     LDY #$00
C - - - - - 0x00B2DA 02:B2CA: 38        SEC
C - - - - - 0x00B2DB 02:B2CB: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00B2DE 02:B2CE: ED 33 B3  SBC tbl_B333
C - - - - - 0x00B2E1 02:B2D1: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x00B2E4 02:B2D4: ED 34 B3  SBC tbl_B334
C - - - - - 0x00B2E7 02:B2D7: 30 11     BMI bra_B2EA
C - - - - - 0x00B2E9 02:B2D9: C8        INY
C - - - - - 0x00B2EA 02:B2DA: C8        INY
C - - - - - 0x00B2EB 02:B2DB: 38        SEC
C - - - - - 0x00B2EC 02:B2DC: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00B2EF 02:B2DF: ED 35 B3  SBC tbl_B335
C - - - - - 0x00B2F2 02:B2E2: BD 60 03  LDA ram_игрок_Y_hi,X
C - - - - - 0x00B2F5 02:B2E5: ED 36 B3  SBC tbl_B336
C - - - - - 0x00B2F8 02:B2E8: 30 0C     BMI bra_B2F6
bra_B2EA:
C - - - - - 0x00B2FA 02:B2EA: B9 33 B3  LDA tbl_B333,Y
C - - - - - 0x00B2FD 02:B2ED: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x00B300 02:B2F0: B9 34 B3  LDA tbl_B334,Y
C - - - - - 0x00B303 02:B2F3: 9D 60 03  STA ram_игрок_Y_hi,X
bra_B2F6:
C - - - - - 0x00B306 02:B2F6: A4 1C     LDY ram_001C
C - - - - - 0x00B308 02:B2F8: 38        SEC
C - - - - - 0x00B309 02:B2F9: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x00B30C 02:B2FC: F9 37 B3  SBC tbl_B337,Y
C - - - - - 0x00B30F 02:B2FF: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x00B312 02:B302: F9 38 B3  SBC tbl_B338,Y
C - - - - - 0x00B315 02:B305: 30 11     BMI bra_B318
C - - - - - 0x00B317 02:B307: C8        INY
C - - - - - 0x00B318 02:B308: C8        INY
C - - - - - 0x00B319 02:B309: 38        SEC
C - - - - - 0x00B31A 02:B30A: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x00B31D 02:B30D: F9 37 B3  SBC tbl_B337,Y
C - - - - - 0x00B320 02:B310: BD 27 03  LDA ram_игрок_X_hi,X
C - - - - - 0x00B323 02:B313: F9 38 B3  SBC tbl_B338,Y
C - - - - - 0x00B326 02:B316: 30 1A     BMI bra_B332_RTS
bra_B318:
C - - - - - 0x00B328 02:B318: B9 37 B3  LDA tbl_B337,Y
C - - - - - 0x00B32B 02:B31B: 9D 14 03  STA ram_игрок_X_lo,X
C - - - - - 0x00B32E 02:B31E: B9 38 B3  LDA tbl_B338,Y
C - - - - - 0x00B331 02:B321: 9D 27 03  STA ram_игрок_X_hi,X
C - - - - - 0x00B334 02:B324: A5 58     LDA ram_номер_экрана
C - - - - - 0x00B336 02:B326: C9 03     CMP #$03
C - - - - - 0x00B338 02:B328: D0 08     BNE bra_B332_RTS
C - - - - - 0x00B33A 02:B32A: BD 14 03  LDA ram_игрок_X_lo,X
C - - - - - 0x00B33D 02:B32D: 29 80     AND #$80
C - - - - - 0x00B33F 02:B32F: 9D A3 04  STA ram_obj_direction,X
bra_B332_RTS:
C - - - - - 0x00B342 02:B332: 60        RTS



tbl_B333:
- D 1 - - - 0x00B343 02:B333: C4        .byte $C4   ; 
tbl_B334:
- D 1 - - - 0x00B344 02:B334: 00        .byte $00   ; 
tbl_B335:
- D 1 - - - 0x00B345 02:B335: F0        .byte $F0   ; 
tbl_B336:
- D 1 - - - 0x00B346 02:B336: 00        .byte $00   ; 
tbl_B337:
- D 1 - - - 0x00B347 02:B337: 40        .byte $40   ; 
tbl_B338:
- D 1 - - - 0x00B348 02:B338: 00        .byte $00   ; 
- D 1 - - - 0x00B349 02:B339: C0        .byte $C0   ; 
- D 1 - - - 0x00B34A 02:B33A: 02        .byte $02   ; 
- D 1 - - - 0x00B34B 02:B33B: 40        .byte $40   ; 
- D 1 - - - 0x00B34C 02:B33C: 01        .byte $01   ; 
- D 1 - - - 0x00B34D 02:B33D: C0        .byte $C0   ; 
- D 1 - - - 0x00B34E 02:B33E: 01        .byte $01   ; 



sub_B33F:
C - - - - - 0x00B34F 02:B33F: A0 00     LDY #$00
C - - - - - 0x00B351 02:B341: A5 58     LDA ram_номер_экрана
C - - - - - 0x00B353 02:B343: C9 03     CMP #$03
C - - - - - 0x00B355 02:B345: D0 09     BNE bra_B350
C - - - - - 0x00B357 02:B347: AD 1F 06  LDA ram_061F
C - - - - - 0x00B35A 02:B34A: C9 02     CMP #$02
C - - - - - 0x00B35C 02:B34C: D0 02     BNE bra_B350
C - - - - - 0x00B35E 02:B34E: A0 02     LDY #$02
bra_B350:
C - - - - - 0x00B360 02:B350: B9 6B B3  LDA tbl_B36B,Y
C - - - - - 0x00B363 02:B353: 85 30     STA ram_0030
C - - - - - 0x00B365 02:B355: B9 6C B3  LDA tbl_B36B + $01,Y
C - - - - - 0x00B368 02:B358: 85 31     STA ram_0031
C - - - - - 0x00B36A 02:B35A: AD 6F B3  LDA tbl_B36F
C - - - - - 0x00B36D 02:B35D: 85 32     STA ram_0032
C - - - - - 0x00B36F 02:B35F: AD 70 B3  LDA tbl_B36F + $01
C - - - - - 0x00B372 02:B362: 85 33     STA ram_0033
C - - - - - 0x00B374 02:B364: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B377 02:B367: 20 56 C0  JSR sub_0x01C066
C - - - - - 0x00B37A 02:B36A: 60        RTS



tbl_B36B:
- D 1 - - - 0x00B37B 02:B36B: 71 B3     .word off_B371_00
- D 1 - - - 0x00B37D 02:B36D: 8F B3     .word off_B38F_01



tbl_B36F:
- D 1 - - - 0x00B37F 02:B36F: 4A B2     .word ofs_B24A



off_B371_00:
- - - - - - 0x00B381 02:B371: AD B3     .word off_B3AD_00
- D 1 - I - 0x00B383 02:B373: AE B3     .word off_B3AE_01
- D 1 - I - 0x00B385 02:B375: B3 B3     .word off_B3B3_02
- D 1 - I - 0x00B387 02:B377: B6 B3     .word off_B3B6_03
- D 1 - I - 0x00B389 02:B379: C7 B3     .word off_B3C7_04
- D 1 - I - 0x00B38B 02:B37B: D8 B3     .word off_B3D8_05
- D 1 - I - 0x00B38D 02:B37D: BE B3     .word off_B3BE_06
- D 1 - I - 0x00B38F 02:B37F: B9 B3     .word off_B3B9_07
- D 1 - I - 0x00B391 02:B381: EA B3     .word off_B3EA_08
- D 1 - I - 0x00B393 02:B383: EF B3     .word off_B3EF_09
- D 1 - I - 0x00B395 02:B385: F8 B3     .word off_B3F8_0A
- D 1 - I - 0x00B397 02:B387: 01 B4     .word off_B401_0B
- D 1 - I - 0x00B399 02:B389: 05 B4     .word off_B405_0C
- D 1 - I - 0x00B39B 02:B38B: E1 B3     .word off_B3E1_0D
- D 1 - I - 0x00B39D 02:B38D: 03 B4     .word off_B403_0E



off_B38F_01:
- - - - - - 0x00B39F 02:B38F: AD B3     .word off_B3AD_00
- - - - - - 0x00B3A1 02:B391: 0E B4     .word off_B40E_01
- - - - - - 0x00B3A3 02:B393: 13 B4     .word off_B413_02
- - - - - - 0x00B3A5 02:B395: 13 B4     .word off_B413_03
- - - - - - 0x00B3A7 02:B397: 16 B4     .word off_B416_04
- - - - - - 0x00B3A9 02:B399: 16 B4     .word off_B416_05
- - - - - - 0x00B3AB 02:B39B: 1F B4     .word off_B41F_06
- D 1 - I - 0x00B3AD 02:B39D: 1F B4     .word off_B41F_07
- - - - - - 0x00B3AF 02:B39F: 24 B4     .word off_B424_08
- D 1 - I - 0x00B3B1 02:B3A1: 24 B4     .word off_B424_09
- - - - - - 0x00B3B3 02:B3A3: 24 B4     .word off_B424_0A
- - - - - - 0x00B3B5 02:B3A5: 24 B4     .word off_B424_0B
- - - - - - 0x00B3B7 02:B3A7: 16 B4     .word off_B416_0C
- - - - - - 0x00B3B9 02:B3A9: 16 B4     .word off_B416_0D
- - - - - - 0x00B3BB 02:B3AB: 24 B4     .word off_B424_0E



off_B3AD_00:
- - - - - - 0x00B3BD 02:B3AD: FF        .byte $FF   ; 



off_B3AE_01:
- D 1 - I - 0x00B3BE 02:B3AE: 03        .byte $03   ; 
- D 1 - I - 0x00B3BF 02:B3AF: 03        .byte $03   ; 
- D 1 - I - 0x00B3C0 02:B3B0: 03        .byte $03   ; 
- D 1 - I - 0x00B3C1 02:B3B1: 04        .byte $04   ; 
- D 1 - I - 0x00B3C2 02:B3B2: FE        .byte $FE   ; 



off_B3B3_02:
- D 1 - I - 0x00B3C3 02:B3B3: 03        .byte $03   ; 
- D 1 - I - 0x00B3C4 02:B3B4: 03        .byte $03   ; 
- D 1 - I - 0x00B3C5 02:B3B5: FF        .byte $FF   ; 



off_B3B6_03:
- D 1 - I - 0x00B3C6 02:B3B6: 07        .byte $07   ; 
- D 1 - I - 0x00B3C7 02:B3B7: 0E        .byte $0E   ; 
- - - - - - 0x00B3C8 02:B3B8: FF        .byte $FF   ; 



off_B3B9_07:
- D 1 - I - 0x00B3C9 02:B3B9: 03        .byte $03   ; 
- D 1 - I - 0x00B3CA 02:B3BA: 01        .byte $01   ; 
- D 1 - I - 0x00B3CB 02:B3BB: 03        .byte $03   ; 
- D 1 - I - 0x00B3CC 02:B3BC: 02        .byte $02   ; 
- D 1 - I - 0x00B3CD 02:B3BD: FE        .byte $FE   ; 



off_B3BE_06:
- D 1 - I - 0x00B3CE 02:B3BE: 06        .byte $06   ; 
- D 1 - I - 0x00B3CF 02:B3BF: 19        .byte $19   ; 
- D 1 - I - 0x00B3D0 02:B3C0: 03        .byte $03   ; 
- D 1 - I - 0x00B3D1 02:B3C1: 1A        .byte $1A   ; 
- D 1 - I - 0x00B3D2 02:B3C2: 06        .byte $06   ; 
- D 1 - I - 0x00B3D3 02:B3C3: 1B        .byte $1B   ; 
- D 1 - I - 0x00B3D4 02:B3C4: 03        .byte $03   ; 
- D 1 - I - 0x00B3D5 02:B3C5: 1A        .byte $1A   ; 
- D 1 - I - 0x00B3D6 02:B3C6: FE        .byte $FE   ; 



off_B3C7_04:
- D 1 - I - 0x00B3D7 02:B3C7: 03        .byte $03   ; 
- D 1 - I - 0x00B3D8 02:B3C8: 82        .byte $82   ; 
- D 1 - I - 0x00B3D9 02:B3C9: 03        .byte $03   ; 
- D 1 - I - 0x00B3DA 02:B3CA: 80        .byte $80   ; 
- D 1 - I - 0x00B3DB 02:B3CB: 03        .byte $03   ; 
- D 1 - I - 0x00B3DC 02:B3CC: 02        .byte $02   ; 
- D 1 - I - 0x00B3DD 02:B3CD: 03        .byte $03   ; 
- D 1 - I - 0x00B3DE 02:B3CE: 00        .byte $00   ; 
- D 1 - I - 0x00B3DF 02:B3CF: 03        .byte $03   ; 
- D 1 - I - 0x00B3E0 02:B3D0: 82        .byte $82   ; 
- D 1 - I - 0x00B3E1 02:B3D1: 03        .byte $03   ; 
- D 1 - I - 0x00B3E2 02:B3D2: 80        .byte $80   ; 
- D 1 - I - 0x00B3E3 02:B3D3: 03        .byte $03   ; 
- D 1 - I - 0x00B3E4 02:B3D4: 02        .byte $02   ; 
- D 1 - I - 0x00B3E5 02:B3D5: 03        .byte $03   ; 
- D 1 - I - 0x00B3E6 02:B3D6: 00        .byte $00   ; 
- D 1 - I - 0x00B3E7 02:B3D7: FF        .byte $FF   ; 



off_B3D8_05:
- D 1 - I - 0x00B3E8 02:B3D8: 03        .byte $03   ; 
- D 1 - I - 0x00B3E9 02:B3D9: 08        .byte $08   ; 
- D 1 - I - 0x00B3EA 02:B3DA: 06        .byte $06   ; 
- D 1 - I - 0x00B3EB 02:B3DB: 09        .byte $09   ; 
- D 1 - I - 0x00B3EC 02:B3DC: 03        .byte $03   ; 
- D 1 - I - 0x00B3ED 02:B3DD: 88        .byte $88   ; 
- D 1 - I - 0x00B3EE 02:B3DE: 06        .byte $06   ; 
- D 1 - I - 0x00B3EF 02:B3DF: 89        .byte $89   ; 
- D 1 - I - 0x00B3F0 02:B3E0: FF        .byte $FF   ; 



off_B3E1_0D:
- D 1 - I - 0x00B3F1 02:B3E1: 03        .byte $03   ; 
- D 1 - I - 0x00B3F2 02:B3E2: 11        .byte $11   ; 
- D 1 - I - 0x00B3F3 02:B3E3: 03        .byte $03   ; 
- D 1 - I - 0x00B3F4 02:B3E4: 12        .byte $12   ; 
- D 1 - I - 0x00B3F5 02:B3E5: 03        .byte $03   ; 
- D 1 - I - 0x00B3F6 02:B3E6: 11        .byte $11   ; 
- D 1 - I - 0x00B3F7 02:B3E7: 03        .byte $03   ; 
- D 1 - I - 0x00B3F8 02:B3E8: 12        .byte $12   ; 
- D 1 - I - 0x00B3F9 02:B3E9: FF        .byte $FF   ; 



off_B3EA_08:
- D 1 - I - 0x00B3FA 02:B3EA: 03        .byte $03   ; 
- D 1 - I - 0x00B3FB 02:B3EB: 19        .byte $19   ; 
- D 1 - I - 0x00B3FC 02:B3EC: 03        .byte $03   ; 
- D 1 - I - 0x00B3FD 02:B3ED: 19        .byte $19   ; 
- D 1 - I - 0x00B3FE 02:B3EE: FE        .byte $FE   ; 



off_B3EF_09:
- D 1 - I - 0x00B3FF 02:B3EF: 03        .byte $03   ; 
- D 1 - I - 0x00B400 02:B3F0: 0A        .byte $0A   ; 
- D 1 - I - 0x00B401 02:B3F1: 03        .byte $03   ; 
- D 1 - I - 0x00B402 02:B3F2: 0B        .byte $0B   ; 
- D 1 - I - 0x00B403 02:B3F3: 03        .byte $03   ; 
- D 1 - I - 0x00B404 02:B3F4: 0C        .byte $0C   ; 
- D 1 - I - 0x00B405 02:B3F5: 03        .byte $03   ; 
- D 1 - I - 0x00B406 02:B3F6: 0D        .byte $0D   ; 
- D 1 - I - 0x00B407 02:B3F7: FE        .byte $FE   ; 



off_B3F8_0A:
- D 1 - I - 0x00B408 02:B3F8: 03        .byte $03   ; 
- D 1 - I - 0x00B409 02:B3F9: 0D        .byte $0D   ; 
- D 1 - I - 0x00B40A 02:B3FA: 03        .byte $03   ; 
- D 1 - I - 0x00B40B 02:B3FB: 0C        .byte $0C   ; 
- D 1 - I - 0x00B40C 02:B3FC: 03        .byte $03   ; 
- D 1 - I - 0x00B40D 02:B3FD: 0B        .byte $0B   ; 
- D 1 - I - 0x00B40E 02:B3FE: 03        .byte $03   ; 
- D 1 - I - 0x00B40F 02:B3FF: 0A        .byte $0A   ; 
- D 1 - I - 0x00B410 02:B400: FE        .byte $FE   ; 



off_B401_0B:
- D 1 - I - 0x00B411 02:B401: 00        .byte $00   ; 
- D 1 - I - 0x00B412 02:B402: 0E        .byte $0E   ; 
off_B403_0E:
- D 1 - I - 0x00B413 02:B403: 00        .byte $00   ; 
- D 1 - I - 0x00B414 02:B404: 1C        .byte $1C   ; 
off_B405_0C:
- D 1 - I - 0x00B415 02:B405: 03        .byte $03   ; 
- D 1 - I - 0x00B416 02:B406: 82        .byte $82   ; 
- D 1 - I - 0x00B417 02:B407: 03        .byte $03   ; 
- D 1 - I - 0x00B418 02:B408: 80        .byte $80   ; 
- D 1 - I - 0x00B419 02:B409: 03        .byte $03   ; 
- D 1 - I - 0x00B41A 02:B40A: 02        .byte $02   ; 
- D 1 - I - 0x00B41B 02:B40B: 03        .byte $03   ; 
- D 1 - I - 0x00B41C 02:B40C: 00        .byte $00   ; 
- D 1 - I - 0x00B41D 02:B40D: FE        .byte $FE   ; 



off_B40E_01:
- - - - - - 0x00B41E 02:B40E: 03        .byte $03   ; 
- - - - - - 0x00B41F 02:B40F: 1D        .byte $1D   ; 
- - - - - - 0x00B420 02:B410: 03        .byte $03   ; 
- - - - - - 0x00B421 02:B411: 1F        .byte $1F   ; 
- - - - - - 0x00B422 02:B412: FE        .byte $FE   ; 



off_B413_02:
off_B413_03:
- - - - - - 0x00B423 02:B413: 04        .byte $04   ; 
- - - - - - 0x00B424 02:B414: 1D        .byte $1D   ; 
- - - - - - 0x00B425 02:B415: FF        .byte $FF   ; 



off_B416_04:
off_B416_05:
off_B416_0C:
off_B416_0D:
- - - - - - 0x00B426 02:B416: 04        .byte $04   ; 
- - - - - - 0x00B427 02:B417: 20        .byte $20   ; 
- - - - - - 0x00B428 02:B418: 04        .byte $04   ; 
- - - - - - 0x00B429 02:B419: 21        .byte $21   ; 
- - - - - - 0x00B42A 02:B41A: 04        .byte $04   ; 
- - - - - - 0x00B42B 02:B41B: 20        .byte $20   ; 
- - - - - - 0x00B42C 02:B41C: 04        .byte $04   ; 
- - - - - - 0x00B42D 02:B41D: 21        .byte $21   ; 
- - - - - - 0x00B42E 02:B41E: FF        .byte $FF   ; 



off_B41F_06:
off_B41F_07:
- D 1 - I - 0x00B42F 02:B41F: 03        .byte $03   ; 
- D 1 - I - 0x00B430 02:B420: 1E        .byte $1E   ; 
- D 1 - I - 0x00B431 02:B421: 03        .byte $03   ; 
- D 1 - I - 0x00B432 02:B422: 1D        .byte $1D   ; 
- D 1 - I - 0x00B433 02:B423: FE        .byte $FE   ; 



off_B424_08:
off_B424_09:
off_B424_0A:
off_B424_0B:
off_B424_0E:
- D 1 - I - 0x00B434 02:B424: 03        .byte $03   ; 
- D 1 - I - 0x00B435 02:B425: 24        .byte $24   ; 
- D 1 - I - 0x00B436 02:B426: 03        .byte $03   ; 
- D 1 - I - 0x00B437 02:B427: 25        .byte $25   ; 
- D 1 - I - 0x00B438 02:B428: FE        .byte $FE   ; 



loc_B429:
C D 1 - - - 0x00B439 02:B429: A2 2C     LDX #$2C
C - - - - - 0x00B43B 02:B42B: 8E B8 05  STX ram_банк_спрайтов
C - - - - - 0x00B43E 02:B42E: E8        INX
C - - - - - 0x00B43F 02:B42F: 8E B9 05  STX ram_банк_спрайтов + $01
C - - - - - 0x00B442 02:B432: E8        INX
C - - - - - 0x00B443 02:B433: 8E BA 05  STX ram_банк_спрайтов + $02
C - - - - - 0x00B446 02:B436: E8        INX
C - - - - - 0x00B447 02:B437: 8E BB 05  STX ram_банк_спрайтов + $03
C - - - - - 0x00B44A 02:B43A: A2 12     LDX #$12
bra_B43C:
C - - - - - 0x00B44C 02:B43C: A9 7F     LDA #$7F
C - - - - - 0x00B44E 02:B43E: 9D 74 00  STA a: ram_номер_анимации,X
C - - - - - 0x00B451 02:B441: CA        DEX
C - - - - - 0x00B452 02:B442: 10 F8     BPL bra_B43C
C - - - - - 0x00B454 02:B444: A2 00     LDX #$00
C - - - - - 0x00B456 02:B446: BD 2A 05  LDA ram_флаг_владения_мячом_ком,X
C - - - - - 0x00B459 02:B449: 29 01     AND #$01
C - - - - - 0x00B45B 02:B44B: D0 01     BNE bra_B44E
C - - - - - 0x00B45D 02:B44D: E8        INX
bra_B44E:
C - - - - - 0x00B45E 02:B44E: A0 00     LDY #$00
C - - - - - 0x00B460 02:B450: BD 2C 05  LDA ram_номер_команды,X
C - - - - - 0x00B463 02:B453: 29 0F     AND #$0F
C - - - - - 0x00B465 02:B455: F0 01     BEQ bra_B458
C - - - - - 0x00B467 02:B457: C8        INY
bra_B458:
C - - - - - 0x00B468 02:B458: B9 FF B4  LDA tbl_B4FF,Y
C - - - - - 0x00B46B 02:B45B: 8D BA 05  STA ram_банк_спрайтов + $02
loc_B45E:
C D 1 - - - 0x00B46E 02:B45E: A9 FF     LDA #$FF
C - - - - - 0x00B470 02:B460: 9D B0 04  STA ram_obj_new_angle,X
C - - - - - 0x00B473 02:B463: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00B476 02:B466: BD 25 B5  LDA tbl_B525,X
C - - - - - 0x00B479 02:B469: 9D 61 00  STA a: ram_0061,X
C - - - - - 0x00B47C 02:B46C: BD 29 B5  LDA tbl_B529,X
C - - - - - 0x00B47F 02:B46F: 9D 59 04  STA ram_игрок_номер_движения,X
C - - - - - 0x00B482 02:B472: A5 58     LDA ram_номер_экрана
C - - - - - 0x00B484 02:B474: C9 03     CMP #$03
C - - - - - 0x00B486 02:B476: F0 0B     BEQ bra_B483
C - - - - - 0x00B488 02:B478: A5 59     LDA ram_подтип_экрана
C - - - - - 0x00B48A 02:B47A: C9 04     CMP #$04
C - - - - - 0x00B48C 02:B47C: F0 05     BEQ bra_B483
C - - - - - 0x00B48E 02:B47E: A9 0C     LDA #$0C
C - - - - - 0x00B490 02:B480: 9D 59 04  STA ram_игрок_номер_движения,X
bra_B483:
C - - - - - 0x00B493 02:B483: A9 00     LDA #$00
C - - - - - 0x00B495 02:B485: 9D 86 04  STA ram_игрок_состояние,X
C - - - - - 0x00B498 02:B488: 9D F6 03  STA ram_игрок_spd_X_hi,X
C - - - - - 0x00B49B 02:B48B: 9D E8 03  STA ram_игрок_spd_X_lo,X
C - - - - - 0x00B49E 02:B48E: 9D 12 04  STA ram_игрок_spd_Y_hi,X
C - - - - - 0x00B4A1 02:B491: 9D 04 04  STA ram_игрок_spd_Y_lo,X
C - - - - - 0x00B4A4 02:B494: 9D 2E 04  STA ram_игрок_spd_Z_hi,X
C - - - - - 0x00B4A7 02:B497: 9D 20 04  STA ram_игрок_spd_Z_lo,X
C - - - - - 0x00B4AA 02:B49A: 9D 4A 04  STA ram_игрок_гравитация_hi,X
C - - - - - 0x00B4AD 02:B49D: 9D 3C 04  STA ram_игрок_гравитация_lo,X
C - - - - - 0x00B4B0 02:B4A0: 9D 01 03  STA ram_игрок_X_sub,X
C - - - - - 0x00B4B3 02:B4A3: 9D 3A 03  STA ram_игрок_Y_sub,X
C - - - - - 0x00B4B6 02:B4A6: 9D 73 03  STA ram_игрок_Z_sub,X
C - - - - - 0x00B4B9 02:B4A9: 9D 86 03  STA ram_игрок_Z_lo,X
C - - - - - 0x00B4BC 02:B4AC: 9D 99 03  STA ram_игрок_Z_hi,X
C - - - - - 0x00B4BF 02:B4AF: 8A        TXA
C - - - - - 0x00B4C0 02:B4B0: 29 01     AND #$01
C - - - - - 0x00B4C2 02:B4B2: A8        TAY
C - - - - - 0x00B4C3 02:B4B3: B9 2C 05  LDA ram_номер_команды,Y
C - - - - - 0x00B4C6 02:B4B6: 29 0F     AND #$0F
C - - - - - 0x00B4C8 02:B4B8: D0 06     BNE bra_B4C0
C - - - - - 0x00B4CA 02:B4BA: 18        CLC
C - - - - - 0x00B4CB 02:B4BB: A9 10     LDA #$10
C - - - - - 0x00B4CD 02:B4BD: 7D 32 05  ADC ram_номер_игрока,X
bra_B4C0:
C - - - - - 0x00B4D0 02:B4C0: A8        TAY
C - - - - - 0x00B4D1 02:B4C1: B9 01 B5  LDA tbl_B501,Y
C - - - - - 0x00B4D4 02:B4C4: 9D 5C 05  STA ram_лицо_игрока,X
C - - - - - 0x00B4D7 02:B4C7: 8A        TXA
C - - - - - 0x00B4D8 02:B4C8: 6A        ROR
C - - - - - 0x00B4D9 02:B4C9: 6A        ROR
C - - - - - 0x00B4DA 02:B4CA: 29 80     AND #$80
C - - - - - 0x00B4DC 02:B4CC: 49 80     EOR #$80
C - - - - - 0x00B4DE 02:B4CE: 9D A3 04  STA ram_obj_direction,X
C - - - - - 0x00B4E1 02:B4D1: 09 40     ORA #$40
C - - - - - 0x00B4E3 02:B4D3: 9D 96 04  STA ram_obj_current_angle,X
C - - - - - 0x00B4E6 02:B4D6: 8A        TXA
C - - - - - 0x00B4E7 02:B4D7: 0A        ASL
C - - - - - 0x00B4E8 02:B4D8: 0A        ASL
C - - - - - 0x00B4E9 02:B4D9: A8        TAY
C - - - - - 0x00B4EA 02:B4DA: B9 2D B5  LDA tbl_B52D,Y
C - - - - - 0x00B4ED 02:B4DD: 9D 14 03  STA ram_игрок_X_lo,X
C - - - - - 0x00B4F0 02:B4E0: B9 2E B5  LDA tbl_B52E,Y
C - - - - - 0x00B4F3 02:B4E3: 9D 27 03  STA ram_игрок_X_hi,X
C - - - - - 0x00B4F6 02:B4E6: B9 2F B5  LDA tbl_B52F,Y
C - - - - - 0x00B4F9 02:B4E9: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x00B4FC 02:B4EC: B9 30 B5  LDA tbl_B530,Y
C - - - - - 0x00B4FF 02:B4EF: 9D 60 03  STA ram_игрок_Y_hi,X
C - - - - - 0x00B502 02:B4F2: E8        INX
C - - - - - 0x00B503 02:B4F3: E8        INX
C - - - - - 0x00B504 02:B4F4: E0 04     CPX #$04
C - - - - - 0x00B506 02:B4F6: B0 03     BCS bra_B4FB
C - - - - - 0x00B508 02:B4F8: 4C 5E B4  JMP loc_B45E
bra_B4FB:
C - - - - - 0x00B50B 02:B4FB: 20 0B C0  JSR sub_0x01C01B
C - - - - - 0x00B50E 02:B4FE: 60        RTS



tbl_B4FF:
- D 1 - - - 0x00B50F 02:B4FF: 2E        .byte $2E   ; 
- D 1 - - - 0x00B510 02:B500: 31        .byte $31   ; 



tbl_B501:
- - - - - - 0x00B511 02:B501: 00        .byte $00   ; 
- D 1 - - - 0x00B512 02:B502: 18        .byte $18   ; 
- D 1 - - - 0x00B513 02:B503: 19        .byte $19   ; 
- D 1 - - - 0x00B514 02:B504: 1A        .byte $1A   ; 
- - - - - - 0x00B515 02:B505: 00        .byte $00   ; 
- - - - - - 0x00B516 02:B506: 1B        .byte $1B   ; 
- D 1 - - - 0x00B517 02:B507: 1C        .byte $1C   ; 
- D 1 - - - 0x00B518 02:B508: 1D        .byte $1D   ; 
- - - - - - 0x00B519 02:B509: 00        .byte $00   ; 
- D 1 - - - 0x00B51A 02:B50A: 1E        .byte $1E   ; 
- - - - - - 0x00B51B 02:B50B: 1F        .byte $1F   ; 
- D 1 - - - 0x00B51C 02:B50C: 20        .byte $20   ; 
- - - - - - 0x00B51D 02:B50D: 00        .byte $00   ; 
- D 1 - - - 0x00B51E 02:B50E: 21        .byte $21   ; 
- D 1 - - - 0x00B51F 02:B50F: 22        .byte $22   ; 
- D 1 - - - 0x00B520 02:B510: 23        .byte $23   ; 



tbl_B511:
- D 1 - - - 0x00B521 02:B511: 00        .byte $00   ; 
- D 1 - - - 0x00B522 02:B512: 1D        .byte $1D   ; 
- D 1 - - - 0x00B523 02:B513: 21        .byte $21   ; 
- D 1 - - - 0x00B524 02:B514: 1A        .byte $1A   ; 
- D 1 - - - 0x00B525 02:B515: 19        .byte $19   ; 
- D 1 - - - 0x00B526 02:B516: 1B        .byte $1B   ; 
- D 1 - - - 0x00B527 02:B517: 1F        .byte $1F   ; 
- D 1 - - - 0x00B528 02:B518: 22        .byte $22   ; 
- D 1 - - - 0x00B529 02:B519: 1E        .byte $1E   ; 
- D 1 - - - 0x00B52A 02:B51A: 1C        .byte $1C   ; 
- D 1 - - - 0x00B52B 02:B51B: 20        .byte $20   ; 
- D 1 - - - 0x00B52C 02:B51C: 18        .byte $18   ; 
- - - - - - 0x00B52D 02:B51D: 00        .byte $00   ; 
- - - - - - 0x00B52E 02:B51E: 01        .byte $01   ; 
- - - - - - 0x00B52F 02:B51F: 02        .byte $02   ; 
- - - - - - 0x00B530 02:B520: 03        .byte $03   ; 
- - - - - - 0x00B531 02:B521: 04        .byte $04   ; 
- - - - - - 0x00B532 02:B522: 04        .byte $04   ; 
- - - - - - 0x00B533 02:B523: 04        .byte $04   ; 
- - - - - - 0x00B534 02:B524: 08        .byte $08   ; 



tbl_B525:
- D 1 - - - 0x00B535 02:B525: 04        .byte $04   ; 
- D 1 - - - 0x00B536 02:B526: 04        .byte $04   ; 
- D 1 - - - 0x00B537 02:B527: 04        .byte $04   ; 
- D 1 - - - 0x00B538 02:B528: 04        .byte $04   ; 



tbl_B529:
- D 1 - - - 0x00B539 02:B529: 07        .byte $07   ; 
- D 1 - - - 0x00B53A 02:B52A: 07        .byte $07   ; 
- D 1 - - - 0x00B53B 02:B52B: 07        .byte $07   ; 
- D 1 - - - 0x00B53C 02:B52C: 07        .byte $07   ; 



tbl_B52D:
- D 1 - - - 0x00B53D 02:B52D: A8        .byte $A8   ; 
tbl_B52E:
- D 1 - - - 0x00B53E 02:B52E: 01        .byte $01   ; 
tbl_B52F:
- D 1 - - - 0x00B53F 02:B52F: D8        .byte $D8   ; 
tbl_B530:
- D 1 - - - 0x00B540 02:B530: 00        .byte $00   ; 
- D 1 - - - 0x00B541 02:B531: 50        .byte $50   ; 
- D 1 - - - 0x00B542 02:B532: 01        .byte $01   ; 
- D 1 - - - 0x00B543 02:B533: D8        .byte $D8   ; 
- D 1 - - - 0x00B544 02:B534: 00        .byte $00   ; 
- D 1 - - - 0x00B545 02:B535: 88        .byte $88   ; 
- D 1 - - - 0x00B546 02:B536: 01        .byte $01   ; 
- D 1 - - - 0x00B547 02:B537: D8        .byte $D8   ; 
- D 1 - - - 0x00B548 02:B538: 00        .byte $00   ; 
- D 1 - - - 0x00B549 02:B539: 70        .byte $70   ; 
- D 1 - - - 0x00B54A 02:B53A: 01        .byte $01   ; 
- D 1 - - - 0x00B54B 02:B53B: D8        .byte $D8   ; 
- D 1 - - - 0x00B54C 02:B53C: 00        .byte $00   ; 



loc_B53D:
C D 1 - - - 0x00B54D 02:B53D: A2 12     LDX #$12
bra_B53F:
C - - - - - 0x00B54F 02:B53F: A9 7F     LDA #$7F
C - - - - - 0x00B551 02:B541: 9D 74 00  STA a: ram_номер_анимации,X
C - - - - - 0x00B554 02:B544: A9 00     LDA #$00
C - - - - - 0x00B556 02:B546: 9D 60 03  STA ram_игрок_Y_hi,X
C - - - - - 0x00B559 02:B549: 9D 99 03  STA ram_игрок_Z_hi,X
C - - - - - 0x00B55C 02:B54C: 9D 86 03  STA ram_игрок_Z_lo,X
C - - - - - 0x00B55F 02:B54F: 9D F6 03  STA ram_игрок_spd_X_hi,X
C - - - - - 0x00B562 02:B552: 9D 04 04  STA ram_игрок_spd_Y_lo,X
C - - - - - 0x00B565 02:B555: 9D 12 04  STA ram_игрок_spd_Y_hi,X
C - - - - - 0x00B568 02:B558: 9D 20 04  STA ram_игрок_spd_Z_lo,X
C - - - - - 0x00B56B 02:B55B: 9D 2E 04  STA ram_игрок_spd_Z_hi,X
C - - - - - 0x00B56E 02:B55E: 9D 20 04  STA ram_игрок_spd_Z_lo,X
C - - - - - 0x00B571 02:B561: 9D 59 04  STA ram_игрок_номер_движения,X
C - - - - - 0x00B574 02:B564: 9D A3 04  STA ram_obj_direction,X
C - - - - - 0x00B577 02:B567: A9 01     LDA #$01
C - - - - - 0x00B579 02:B569: 9D 27 03  STA ram_игрок_X_hi,X
C - - - - - 0x00B57C 02:B56C: A9 07     LDA #$07
C - - - - - 0x00B57E 02:B56E: 9D 61 00  STA a: ram_0061,X
C - - - - - 0x00B581 02:B571: CA        DEX
C - - - - - 0x00B582 02:B572: 10 CB     BPL bra_B53F
C - - - - - 0x00B584 02:B574: A9 00     LDA #$00
C - - - - - 0x00B586 02:B576: 8D EC 00  STA a: ram_camera_X_lo
C - - - - - 0x00B589 02:B579: 8D EE 00  STA a: ram_camera_Y_lo
C - - - - - 0x00B58C 02:B57C: 8D EF 00  STA a: ram_camera_Y_hi
C - - - - - 0x00B58F 02:B57F: 8D F0 00  STA a: ram_copy_camera_X_lo
C - - - - - 0x00B592 02:B582: 8D F2 00  STA a: ram_copy_camera_Y_lo
C - - - - - 0x00B595 02:B585: 8D F3 00  STA a: ram_copy_camera_Y_hi
C - - - - - 0x00B598 02:B588: A9 01     LDA #$01
C - - - - - 0x00B59A 02:B58A: 8D ED 00  STA a: ram_camera_X_hi
C - - - - - 0x00B59D 02:B58D: 8D F1 00  STA a: ram_copy_camera_X_hi
C - - - - - 0x00B5A0 02:B590: A2 01     LDX #$01
bra_B592:
C - - - - - 0x00B5A2 02:B592: BD 2A 05  LDA ram_флаг_владения_мячом_ком,X
C - - - - - 0x00B5A5 02:B595: 4A        LSR
C - - - - - 0x00B5A6 02:B596: B0 05     BCS bra_B59D
C - - - - - 0x00B5A8 02:B598: CA        DEX
C - - - - - 0x00B5A9 02:B599: 10 F7     BPL bra_B592
- - - - - - 0x00B5AB 02:B59B: A2 00     LDX #$00
bra_B59D:
C - - - - - 0x00B5AD 02:B59D: 8A        TXA
C - - - - - 0x00B5AE 02:B59E: D0 09     BNE bra_B5A9
C - - - - - 0x00B5B0 02:B5A0: AD AF 05  LDA ram_номер_палитры_спрайтов + $01
C - - - - - 0x00B5B3 02:B5A3: 8D B0 05  STA ram_номер_палитры_спрайтов + $02
C - - - - - 0x00B5B6 02:B5A6: 8D B1 05  STA ram_номер_палитры_спрайтов + $03
bra_B5A9:
C - - - - - 0x00B5B9 02:B5A9: 86 1F     STX ram_001F
C - - - - - 0x00B5BB 02:B5AB: BD 2C 05  LDA ram_номер_команды,X
C - - - - - 0x00B5BE 02:B5AE: 29 0F     AND #$0F
C - - - - - 0x00B5C0 02:B5B0: 85 1C     STA ram_001C
C - - - - - 0x00B5C2 02:B5B2: 4A        LSR
C - - - - - 0x00B5C3 02:B5B3: 4A        LSR
C - - - - - 0x00B5C4 02:B5B4: 85 1D     STA ram_001D
C - - - - - 0x00B5C6 02:B5B6: 38        SEC
C - - - - - 0x00B5C7 02:B5B7: A5 1C     LDA ram_001C
C - - - - - 0x00B5C9 02:B5B9: E5 1D     SBC ram_001D
C - - - - - 0x00B5CB 02:B5BB: 85 1E     STA ram_001E
C - - - - - 0x00B5CD 02:B5BD: 0A        ASL
C - - - - - 0x00B5CE 02:B5BE: 65 1E     ADC ram_001E
C - - - - - 0x00B5D0 02:B5C0: 0A        ASL
C - - - - - 0x00B5D1 02:B5C1: 0A        ASL
C - - - - - 0x00B5D2 02:B5C2: 38        SEC
C - - - - - 0x00B5D3 02:B5C3: E5 1E     SBC ram_001E
C - - - - - 0x00B5D5 02:B5C5: A8        TAY
C - - - - - 0x00B5D6 02:B5C6: B9 3F B6  LDA tbl_B63F,Y
C - - - - - 0x00B5D9 02:B5C9: 8D B8 05  STA ram_банк_спрайтов
C - - - - - 0x00B5DC 02:B5CC: B9 40 B6  LDA tbl_B640,Y
C - - - - - 0x00B5DF 02:B5CF: 30 03     BMI bra_B5D4
C - - - - - 0x00B5E1 02:B5D1: 8D B0 05  STA ram_номер_палитры_спрайтов + $02
bra_B5D4:
C - - - - - 0x00B5E4 02:B5D4: B9 41 B6  LDA tbl_B641,Y
C - - - - - 0x00B5E7 02:B5D7: 30 03     BMI bra_B5DC
C - - - - - 0x00B5E9 02:B5D9: 8D B1 05  STA ram_номер_палитры_спрайтов + $03
bra_B5DC:
C - - - - - 0x00B5EC 02:B5DC: A2 01     LDX #$01
bra_B5DE:
C - - - - - 0x00B5EE 02:B5DE: B9 42 B6  LDA tbl_B642,Y
C - - - - - 0x00B5F1 02:B5E1: 9D 5C 05  STA ram_лицо_игрока,X
C - - - - - 0x00B5F4 02:B5E4: B9 43 B6  LDA tbl_B643,Y
C - - - - - 0x00B5F7 02:B5E7: 29 7F     AND #$7F
C - - - - - 0x00B5F9 02:B5E9: 9D 59 04  STA ram_игрок_номер_движения,X
C - - - - - 0x00B5FC 02:B5EC: B9 43 B6  LDA tbl_B643,Y
C - - - - - 0x00B5FF 02:B5EF: 29 80     AND #$80
C - - - - - 0x00B601 02:B5F1: 9D A3 04  STA ram_obj_direction,X
C - - - - - 0x00B604 02:B5F4: B9 44 B6  LDA tbl_B644,Y
C - - - - - 0x00B607 02:B5F7: 9D 14 03  STA ram_игрок_X_lo,X
C - - - - - 0x00B60A 02:B5FA: B9 45 B6  LDA tbl_B645,Y
C - - - - - 0x00B60D 02:B5FD: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x00B610 02:B600: E8        INX
C - - - - - 0x00B611 02:B601: E8        INX
C - - - - - 0x00B612 02:B602: C8        INY
C - - - - - 0x00B613 02:B603: C8        INY
C - - - - - 0x00B614 02:B604: C8        INY
C - - - - - 0x00B615 02:B605: C8        INY
C - - - - - 0x00B616 02:B606: E0 04     CPX #$04
C - - - - - 0x00B618 02:B608: 90 D4     BCC bra_B5DE
C - - - - - 0x00B61A 02:B60A: AC B8 05  LDY ram_банк_спрайтов
C - - - - - 0x00B61D 02:B60D: C8        INY
C - - - - - 0x00B61E 02:B60E: 8C B9 05  STY ram_банк_спрайтов + $01
C - - - - - 0x00B621 02:B611: C8        INY
C - - - - - 0x00B622 02:B612: 8C BA 05  STY ram_банк_спрайтов + $02
C - - - - - 0x00B625 02:B615: C8        INY
C - - - - - 0x00B626 02:B616: 8C BB 05  STY ram_банк_спрайтов + $03
C - - - - - 0x00B629 02:B619: C0 37     CPY #$37
C - - - - - 0x00B62B 02:B61B: D0 05     BNE bra_B622
C - - - - - 0x00B62D 02:B61D: A9 2E     LDA #$2E
C - - - - - 0x00B62F 02:B61F: 8D BA 05  STA ram_банк_спрайтов + $02
bra_B622:
C - - - - - 0x00B632 02:B622: A5 1C     LDA ram_001C
C - - - - - 0x00B634 02:B624: D0 18     BNE bra_B63E_RTS
C - - - - - 0x00B636 02:B626: A6 1F     LDX ram_001F
C - - - - - 0x00B638 02:B628: BC 32 05  LDY ram_номер_игрока,X
C - - - - - 0x00B63B 02:B62B: B9 11 B5  LDA tbl_B511,Y
C - - - - - 0x00B63E 02:B62E: 8D 5D 05  STA ram_лицо_игрока + $01
C - - - - - 0x00B641 02:B631: 8A        TXA
C - - - - - 0x00B642 02:B632: 09 0A     ORA #$0A
C - - - - - 0x00B644 02:B634: AA        TAX
C - - - - - 0x00B645 02:B635: BC 32 05  LDY ram_номер_игрока,X
C - - - - - 0x00B648 02:B638: B9 11 B5  LDA tbl_B511,Y
C - - - - - 0x00B64B 02:B63B: 8D 5F 05  STA ram_лицо_игрока + $03
bra_B63E_RTS:
C - - - - - 0x00B64E 02:B63E: 60        RTS


; по 11 байтов
tbl_B63F:
- D 1 - - - 0x00B64F 02:B63F: 34        .byte $34   ; 
tbl_B640:
- D 1 - - - 0x00B650 02:B640: FF        .byte $FF   ; 
tbl_B641:
- D 1 - - - 0x00B651 02:B641: FF        .byte $FF   ; 
tbl_B642:
- D 1 - - - 0x00B652 02:B642: 00        .byte $00   ; 
tbl_B643:
- D 1 - - - 0x00B653 02:B643: 01        .byte $01   ; 
tbl_B644:
- D 1 - - - 0x00B654 02:B644: 68        .byte $68   ; 
tbl_B645:
- D 1 - - - 0x00B655 02:B645: D8        .byte $D8   ; 
- D 1 - - - 0x00B656 02:B646: 00        .byte $00   ; 
- D 1 - - - 0x00B657 02:B647: 81        .byte $81   ; 
- D 1 - - - 0x00B658 02:B648: 98        .byte $98   ; 
- D 1 - - - 0x00B659 02:B649: D8        .byte $D8   ; 
- D 1 - - - 0x00B65A 02:B64A: 38        .byte $38   ; 
- D 1 - - - 0x00B65B 02:B64B: FF        .byte $FF   ; 
- D 1 - - - 0x00B65C 02:B64C: FF        .byte $FF   ; 
- D 1 - - - 0x00B65D 02:B64D: 00        .byte $00   ; 
- D 1 - - - 0x00B65E 02:B64E: 0D        .byte $0D   ; 
- D 1 - - - 0x00B65F 02:B64F: 71        .byte $71   ; 
- D 1 - - - 0x00B660 02:B650: D8        .byte $D8   ; 
- D 1 - - - 0x00B661 02:B651: 00        .byte $00   ; 
- D 1 - - - 0x00B662 02:B652: 0A        .byte $0A   ; 
- D 1 - - - 0x00B663 02:B653: 80        .byte $80   ; 
- D 1 - - - 0x00B664 02:B654: D8        .byte $D8   ; 
- D 1 - - - 0x00B665 02:B655: 3C        .byte $3C   ; 
- D 1 - - - 0x00B666 02:B656: FF        .byte $FF   ; 
- D 1 - - - 0x00B667 02:B657: FF        .byte $FF   ; 
- D 1 - - - 0x00B668 02:B658: 00        .byte $00   ; 
- D 1 - - - 0x00B669 02:B659: 1A        .byte $1A   ; 
- D 1 - - - 0x00B66A 02:B65A: 80        .byte $80   ; 
- D 1 - - - 0x00B66B 02:B65B: C8        .byte $C8   ; 
- D 1 - - - 0x00B66C 02:B65C: 00        .byte $00   ; 
- D 1 - - - 0x00B66D 02:B65D: 1B        .byte $1B   ; 
- D 1 - - - 0x00B66E 02:B65E: 80        .byte $80   ; 
- D 1 - - - 0x00B66F 02:B65F: C8        .byte $C8   ; 
- D 1 - - - 0x00B670 02:B660: 38        .byte $38   ; 
- D 1 - - - 0x00B671 02:B661: FF        .byte $FF   ; 
- D 1 - - - 0x00B672 02:B662: FF        .byte $FF   ; 
- D 1 - - - 0x00B673 02:B663: 24        .byte $24   ; 
- D 1 - - - 0x00B674 02:B664: 1E        .byte $1E   ; 
- D 1 - - - 0x00B675 02:B665: 20        .byte $20   ; 
- D 1 - - - 0x00B676 02:B666: D8        .byte $D8   ; 
- D 1 - - - 0x00B677 02:B667: 28        .byte $28   ; 
- D 1 - - - 0x00B678 02:B668: 21        .byte $21   ; 
- D 1 - - - 0x00B679 02:B669: 60        .byte $60   ; 
- D 1 - - - 0x00B67A 02:B66A: D8        .byte $D8   ; 
- D 1 - - - 0x00B67B 02:B66B: 34        .byte $34   ; 
- D 1 - - - 0x00B67C 02:B66C: FF        .byte $FF   ; 
- D 1 - - - 0x00B67D 02:B66D: FF        .byte $FF   ; 
- D 1 - - - 0x00B67E 02:B66E: 00        .byte $00   ; 
- D 1 - - - 0x00B67F 02:B66F: 05        .byte $05   ; 
- D 1 - - - 0x00B680 02:B670: 80        .byte $80   ; 
- D 1 - - - 0x00B681 02:B671: D8        .byte $D8   ; 
- D 1 - - - 0x00B682 02:B672: 00        .byte $00   ; 
- D 1 - - - 0x00B683 02:B673: 00        .byte $00   ; 
- D 1 - - - 0x00B684 02:B674: 80        .byte $80   ; 
- D 1 - - - 0x00B685 02:B675: D8        .byte $D8   ; 
- D 1 - - - 0x00B686 02:B676: 34        .byte $34   ; 
- D 1 - - - 0x00B687 02:B677: FF        .byte $FF   ; 
- D 1 - - - 0x00B688 02:B678: FF        .byte $FF   ; 
- D 1 - - - 0x00B689 02:B679: 25        .byte $25   ; 
- D 1 - - - 0x00B68A 02:B67A: 06        .byte $06   ; 
- D 1 - - - 0x00B68B 02:B67B: 70        .byte $70   ; 
- D 1 - - - 0x00B68C 02:B67C: D8        .byte $D8   ; 
- D 1 - - - 0x00B68D 02:B67D: 27        .byte $27   ; 
- D 1 - - - 0x00B68E 02:B67E: 86        .byte $86   ; 
- D 1 - - - 0x00B68F 02:B67F: 90        .byte $90   ; 
- D 1 - - - 0x00B690 02:B680: D8        .byte $D8   ; 
- D 1 - - - 0x00B691 02:B681: 3C        .byte $3C   ; 
- D 1 - - - 0x00B692 02:B682: 07        .byte $07   ; 
- D 1 - - - 0x00B693 02:B683: FF        .byte $FF   ; 
- D 1 - - - 0x00B694 02:B684: 00        .byte $00   ; 
- D 1 - - - 0x00B695 02:B685: 1C        .byte $1C   ; 
- D 1 - - - 0x00B696 02:B686: 80        .byte $80   ; 
- D 1 - - - 0x00B697 02:B687: C8        .byte $C8   ; 
- D 1 - - - 0x00B698 02:B688: 00        .byte $00   ; 
- D 1 - - - 0x00B699 02:B689: 1D        .byte $1D   ; 
- D 1 - - - 0x00B69A 02:B68A: 80        .byte $80   ; 
- D 1 - - - 0x00B69B 02:B68B: C8        .byte $C8   ; 
- D 1 - - - 0x00B69C 02:B68C: 38        .byte $38   ; 
- D 1 - - - 0x00B69D 02:B68D: FF        .byte $FF   ; 
- D 1 - - - 0x00B69E 02:B68E: FF        .byte $FF   ; 
- D 1 - - - 0x00B69F 02:B68F: 26        .byte $26   ; 
- D 1 - - - 0x00B6A0 02:B690: 10        .byte $10   ; 
- D 1 - - - 0x00B6A1 02:B691: 68        .byte $68   ; 
- D 1 - - - 0x00B6A2 02:B692: D8        .byte $D8   ; 
- D 1 - - - 0x00B6A3 02:B693: 26        .byte $26   ; 
- D 1 - - - 0x00B6A4 02:B694: 11        .byte $11   ; 
- D 1 - - - 0x00B6A5 02:B695: 98        .byte $98   ; 
- D 1 - - - 0x00B6A6 02:B696: D8        .byte $D8   ; 
- D 1 - - - 0x00B6A7 02:B697: 38        .byte $38   ; 
- D 1 - - - 0x00B6A8 02:B698: FF        .byte $FF   ; 
- D 1 - - - 0x00B6A9 02:B699: FF        .byte $FF   ; 
- D 1 - - - 0x00B6AA 02:B69A: 00        .byte $00   ; 
- D 1 - - - 0x00B6AB 02:B69B: 13        .byte $13   ; 
- D 1 - - - 0x00B6AC 02:B69C: 68        .byte $68   ; 
- D 1 - - - 0x00B6AD 02:B69D: D8        .byte $D8   ; 
- D 1 - - - 0x00B6AE 02:B69E: 00        .byte $00   ; 
- D 1 - - - 0x00B6AF 02:B69F: 14        .byte $14   ; 
- D 1 - - - 0x00B6B0 02:B6A0: 98        .byte $98   ; 
- D 1 - - - 0x00B6B1 02:B6A1: D8        .byte $D8   ; 
- D 1 - - - 0x00B6B2 02:B6A2: 3C        .byte $3C   ; 
- D 1 - - - 0x00B6B3 02:B6A3: FF        .byte $FF   ; 
- D 1 - - - 0x00B6B4 02:B6A4: FF        .byte $FF   ; 
- D 1 - - - 0x00B6B5 02:B6A5: 00        .byte $00   ; 
- D 1 - - - 0x00B6B6 02:B6A6: 18        .byte $18   ; 
- D 1 - - - 0x00B6B7 02:B6A7: 94        .byte $94   ; 
- D 1 - - - 0x00B6B8 02:B6A8: D1        .byte $D1   ; 
- D 1 - - - 0x00B6B9 02:B6A9: 00        .byte $00   ; 
- D 1 - - - 0x00B6BA 02:B6AA: 19        .byte $19   ; 
- D 1 - - - 0x00B6BB 02:B6AB: 80        .byte $80   ; 
- D 1 - - - 0x00B6BC 02:B6AC: C8        .byte $C8   ; 
- D 1 - - - 0x00B6BD 02:B6AD: 3C        .byte $3C   ; 
- D 1 - - - 0x00B6BE 02:B6AE: 07        .byte $07   ; 
- D 1 - - - 0x00B6BF 02:B6AF: 26        .byte $26   ; 
- D 1 - - - 0x00B6C0 02:B6B0: 00        .byte $00   ; 
- D 1 - - - 0x00B6C1 02:B6B1: 17        .byte $17   ; 
- D 1 - - - 0x00B6C2 02:B6B2: 60        .byte $60   ; 
- D 1 - - - 0x00B6C3 02:B6B3: D8        .byte $D8   ; 
- D 1 - - - 0x00B6C4 02:B6B4: 00        .byte $00   ; 
- D 1 - - - 0x00B6C5 02:B6B5: 97        .byte $97   ; 
- D 1 - - - 0x00B6C6 02:B6B6: A0        .byte $A0   ; 
- D 1 - - - 0x00B6C7 02:B6B7: D8        .byte $D8   ; 
- D 1 - - - 0x00B6C8 02:B6B8: 38        .byte $38   ; 
- D 1 - - - 0x00B6C9 02:B6B9: FF        .byte $FF   ; 
- D 1 - - - 0x00B6CA 02:B6BA: FF        .byte $FF   ; 
- D 1 - - - 0x00B6CB 02:B6BB: 25        .byte $25   ; 
- D 1 - - - 0x00B6CC 02:B6BC: 12        .byte $12   ; 
- D 1 - - - 0x00B6CD 02:B6BD: 70        .byte $70   ; 
- D 1 - - - 0x00B6CE 02:B6BE: D8        .byte $D8   ; 
- D 1 - - - 0x00B6CF 02:B6BF: 27        .byte $27   ; 
- D 1 - - - 0x00B6D0 02:B6C0: 92        .byte $92   ; 
- D 1 - - - 0x00B6D1 02:B6C1: 90        .byte $90   ; 
- D 1 - - - 0x00B6D2 02:B6C2: D8        .byte $D8   ; 
- D 1 - - - 0x00B6D3 02:B6C3: 3C        .byte $3C   ; 
- D 1 - - - 0x00B6D4 02:B6C4: 07        .byte $07   ; 
- D 1 - - - 0x00B6D5 02:B6C5: 26        .byte $26   ; 
- D 1 - - - 0x00B6D6 02:B6C6: 00        .byte $00   ; 
- D 1 - - - 0x00B6D7 02:B6C7: 95        .byte $95   ; 
- D 1 - - - 0x00B6D8 02:B6C8: 70        .byte $70   ; 
- D 1 - - - 0x00B6D9 02:B6C9: D8        .byte $D8   ; 
- D 1 - - - 0x00B6DA 02:B6CA: 00        .byte $00   ; 
- D 1 - - - 0x00B6DB 02:B6CB: 96        .byte $96   ; 
- D 1 - - - 0x00B6DC 02:B6CC: 90        .byte $90   ; 
- D 1 - - - 0x00B6DD 02:B6CD: D8        .byte $D8   ; 



loc_B6CE:
C D 1 - - - 0x00B6DE 02:B6CE: A2 01     LDX #$01
bra_B6D0:
C - - - - - 0x00B6E0 02:B6D0: 20 DD B6  JSR sub_B6DD
C - - - - - 0x00B6E3 02:B6D3: 20 65 C0  JSR sub_0x01C075
C - - - - - 0x00B6E6 02:B6D6: E8        INX
C - - - - - 0x00B6E7 02:B6D7: E8        INX
C - - - - - 0x00B6E8 02:B6D8: E0 04     CPX #$04
C - - - - - 0x00B6EA 02:B6DA: 90 F4     BCC bra_B6D0
C - - - - - 0x00B6EC 02:B6DC: 60        RTS



sub_B6DD:
C - - - - - 0x00B6ED 02:B6DD: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B6F0 02:B6E0: 0A        ASL
C - - - - - 0x00B6F1 02:B6E1: A8        TAY
C - - - - - 0x00B6F2 02:B6E2: B9 EF B6  LDA tbl_B6EF,Y
C - - - - - 0x00B6F5 02:B6E5: 85 2C     STA ram_002C
C - - - - - 0x00B6F7 02:B6E7: B9 F0 B6  LDA tbl_B6EF + $01,Y
C - - - - - 0x00B6FA 02:B6EA: 85 2D     STA ram_002D
C - - - - - 0x00B6FC 02:B6EC: 6C 2C 00  JMP (ram_002C)

tbl_B6EF:
- D 1 - - - 0x00B6FF 02:B6EF: 45 B7     .word ofs_012_B745_00_RTS
- D 1 - - - 0x00B701 02:B6F1: 46 B7     .word ofs_012_B746_01
- D 1 - - - 0x00B703 02:B6F3: 46 B7     .word ofs_012_B746_02
- D 1 - - - 0x00B705 02:B6F5: 2C B8     .word ofs_012_B82C_03
- D 1 - - - 0x00B707 02:B6F7: 46 B7     .word ofs_012_B746_04
- D 1 - - - 0x00B709 02:B6F9: 46 B7     .word ofs_012_B746_05
- D 1 - - - 0x00B70B 02:B6FB: 46 B7     .word ofs_012_B746_06
- D 1 - - - 0x00B70D 02:B6FD: 46 B7     .word ofs_012_B746_07
- D 1 - - - 0x00B70F 02:B6FF: 2C B8     .word ofs_012_B82C_08
- D 1 - - - 0x00B711 02:B701: 46 B7     .word ofs_012_B746_09
- D 1 - - - 0x00B713 02:B703: 46 B7     .word ofs_012_B746_0A
- D 1 - - - 0x00B715 02:B705: 46 B7     .word ofs_012_B746_0B
- D 1 - - - 0x00B717 02:B707: 46 B7     .word ofs_012_B746_0C
- D 1 - - - 0x00B719 02:B709: 46 B7     .word ofs_012_B746_0D
- D 1 - - - 0x00B71B 02:B70B: 46 B7     .word ofs_012_B746_0E
- D 1 - - - 0x00B71D 02:B70D: 46 B7     .word ofs_012_B746_0F
- D 1 - - - 0x00B71F 02:B70F: 46 B7     .word ofs_012_B746_10
- D 1 - - - 0x00B721 02:B711: 46 B7     .word ofs_012_B746_11
- D 1 - - - 0x00B723 02:B713: 46 B7     .word ofs_012_B746_12
- D 1 - - - 0x00B725 02:B715: 46 B7     .word ofs_012_B746_13
- D 1 - - - 0x00B727 02:B717: 46 B7     .word ofs_012_B746_14
- D 1 - - - 0x00B729 02:B719: 46 B7     .word ofs_012_B746_15
- D 1 - - - 0x00B72B 02:B71B: 46 B7     .word ofs_012_B746_16
- D 1 - - - 0x00B72D 02:B71D: 46 B7     .word ofs_012_B746_17
- D 1 - - - 0x00B72F 02:B71F: BD B7     .word ofs_012_B7BD_18
- D 1 - - - 0x00B731 02:B721: D3 B7     .word ofs_012_B7D3_19
- D 1 - - - 0x00B733 02:B723: D3 B7     .word ofs_012_B7D3_1A
- D 1 - - - 0x00B735 02:B725: 58 B7     .word ofs_012_B758_1B
- D 1 - - - 0x00B737 02:B727: D3 B7     .word ofs_012_B7D3_1C
- D 1 - - - 0x00B739 02:B729: 58 B7     .word ofs_012_B758_1D
- D 1 - - - 0x00B73B 02:B72B: 9B B7     .word ofs_012_B79B_1E
- D 1 - - - 0x00B73D 02:B72D: F8 B7     .word ofs_012_B7F8_1F
- D 1 - - - 0x00B73F 02:B72F: 46 B7     .word ofs_012_B746_20
- D 1 - - - 0x00B741 02:B731: 46 B7     .word ofs_012_B746_21
- D 1 - - - 0x00B743 02:B733: 12 B8     .word ofs_012_B812_22
- D 1 - - - 0x00B745 02:B735: 46 B7     .word ofs_012_B746_23
- D 1 - - - 0x00B747 02:B737: 46 B7     .word ofs_012_B746_24
- D 1 - - - 0x00B749 02:B739: 46 B7     .word ofs_012_B746_25
- D 1 - - - 0x00B74B 02:B73B: 2C B8     .word ofs_012_B82C_26
- D 1 - - - 0x00B74D 02:B73D: D3 B7     .word ofs_012_B7D3_27
- D 1 - - - 0x00B74F 02:B73F: 74 B7     .word ofs_012_B774_28
- D 1 - - - 0x00B751 02:B741: 46 B7     .word ofs_012_B746_29
- D 1 - - - 0x00B753 02:B743: 74 B7     .word ofs_012_B774_2A



ofs_012_B745_00_RTS:
C - - J - - 0x00B755 02:B745: 60        RTS



ofs_012_B746_01:
ofs_012_B746_02:
ofs_012_B746_04:
ofs_012_B746_05:
ofs_012_B746_06:
ofs_012_B746_07:
ofs_012_B746_09:
ofs_012_B746_0A:
ofs_012_B746_0B:
ofs_012_B746_0C:
ofs_012_B746_0D:
ofs_012_B746_0E:
ofs_012_B746_0F:
ofs_012_B746_10:
ofs_012_B746_11:
ofs_012_B746_12:
ofs_012_B746_13:
ofs_012_B746_14:
ofs_012_B746_15:
ofs_012_B746_16:
ofs_012_B746_17:
ofs_012_B746_20:
ofs_012_B746_21:
ofs_012_B746_23:
ofs_012_B746_24:
ofs_012_B746_25:
ofs_012_B746_29:
C - - J - - 0x00B756 02:B746: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B759 02:B749: 30 06     BMI bra_B751
C - - - - - 0x00B75B 02:B74B: 20 82 B2  JSR sub_B282
C - - - - - 0x00B75E 02:B74E: 20 3E AA  JSR sub_AA3E
bra_B751:
C - - - - - 0x00B761 02:B751: 20 E5 B8  JSR sub_B8E5
C - - - - - 0x00B764 02:B754: 20 43 AA  JSR sub_AA43
C - - - - - 0x00B767 02:B757: 60        RTS



ofs_012_B758_1B:
ofs_012_B758_1D:
C - - J - - 0x00B768 02:B758: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B76B 02:B75B: 30 06     BMI bra_B763
C - - - - - 0x00B76D 02:B75D: 20 82 B2  JSR sub_B282
C - - - - - 0x00B770 02:B760: 20 3E AA  JSR sub_AA3E
bra_B763:
C - - - - - 0x00B773 02:B763: 8A        TXA
C - - - - - 0x00B774 02:B764: 49 02     EOR #$02
C - - - - - 0x00B776 02:B766: A8        TAY
C - - - - - 0x00B777 02:B767: 20 88 B7  JSR sub_B788
C - - - - - 0x00B77A 02:B76A: 18        CLC
C - - - - - 0x00B77B 02:B76B: B9 74 00  LDA a: ram_номер_анимации,Y
C - - - - - 0x00B77E 02:B76E: 69 02     ADC #$02
C - - - - - 0x00B780 02:B770: 9D 74 00  STA a: ram_номер_анимации,X
C - - - - - 0x00B783 02:B773: 60        RTS



ofs_012_B774_28:
ofs_012_B774_2A:
C - - J - - 0x00B784 02:B774: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B787 02:B777: 30 06     BMI bra_B77F
C - - - - - 0x00B789 02:B779: 20 82 B2  JSR sub_B282
C - - - - - 0x00B78C 02:B77C: 20 3E AA  JSR sub_AA3E
bra_B77F:
C - - - - - 0x00B78F 02:B77F: A0 01     LDY #$01
C - - - - - 0x00B791 02:B781: 20 88 B7  JSR sub_B788
C - - - - - 0x00B794 02:B784: 20 E5 B8  JSR sub_B8E5
C - - - - - 0x00B797 02:B787: 60        RTS



sub_B788:
C - - - - - 0x00B798 02:B788: B9 14 03  LDA ram_игрок_X_lo,Y
C - - - - - 0x00B79B 02:B78B: 9D 14 03  STA ram_игрок_X_lo,X
C - - - - - 0x00B79E 02:B78E: B9 4D 03  LDA ram_игрок_Y_lo,Y
C - - - - - 0x00B7A1 02:B791: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x00B7A4 02:B794: B9 86 03  LDA ram_игрок_Z_lo,Y
C - - - - - 0x00B7A7 02:B797: 9D 86 03  STA ram_игрок_Z_lo,X
C - - - - - 0x00B7AA 02:B79A: 60        RTS



ofs_012_B79B_1E:
C - - J - - 0x00B7AB 02:B79B: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B7AE 02:B79E: 30 0E     BMI bra_B7AE
bra_B7A0:
C - - - - - 0x00B7B0 02:B7A0: 20 82 B2  JSR sub_B282
C - - - - - 0x00B7B3 02:B7A3: 20 3E AA  JSR sub_AA3E
C - - - - - 0x00B7B6 02:B7A6: BD A3 04  LDA ram_obj_direction,X
C - - - - - 0x00B7B9 02:B7A9: 09 40     ORA #$40
C - - - - - 0x00B7BB 02:B7AB: 9D 96 04  STA ram_obj_current_angle,X
bra_B7AE:
C - - - - - 0x00B7BE 02:B7AE: A9 03     LDA #$03
C - - - - - 0x00B7C0 02:B7B0: 20 93 B2  JSR sub_B293
C - - - - - 0x00B7C3 02:B7B3: 20 34 AA  JSR sub_AA34
C - - - - - 0x00B7C6 02:B7B6: 20 E5 B8  JSR sub_B8E5
C - - - - - 0x00B7C9 02:B7B9: 20 43 AA  JSR sub_AA43
C - - - - - 0x00B7CC 02:B7BC: 60        RTS



ofs_012_B7BD_18:
C - - J - - 0x00B7CD 02:B7BD: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B7D0 02:B7C0: 30 16     BMI bra_B7D8
C - - - - - 0x00B7D2 02:B7C2: 20 82 B2  JSR sub_B282
C - - - - - 0x00B7D5 02:B7C5: 20 3E AA  JSR sub_AA3E
C - - - - - 0x00B7D8 02:B7C8: BD A3 04  LDA ram_obj_direction,X
C - - - - - 0x00B7DB 02:B7CB: 09 80     ORA #$80
C - - - - - 0x00B7DD 02:B7CD: 9D 96 04  STA ram_obj_current_angle,X
C - - - - - 0x00B7E0 02:B7D0: 4C E1 B7  JMP loc_B7E1



ofs_012_B7D3_19:
ofs_012_B7D3_1A:
ofs_012_B7D3_1C:
ofs_012_B7D3_27:
C - - J - - 0x00B7E3 02:B7D3: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B7E6 02:B7D6: 10 C8     BPL bra_B7A0
bra_B7D8:
C - - - - - 0x00B7E8 02:B7D8: 18        CLC
C - - - - - 0x00B7E9 02:B7D9: BD 96 04  LDA ram_obj_current_angle,X
C - - - - - 0x00B7EC 02:B7DC: 69 08     ADC #$08
C - - - - - 0x00B7EE 02:B7DE: 9D 96 04  STA ram_obj_current_angle,X
loc_B7E1:
C D 1 - - - 0x00B7F1 02:B7E1: A9 03     LDA #$03
C - - - - - 0x00B7F3 02:B7E3: 20 93 B2  JSR sub_B293
C - - - - - 0x00B7F6 02:B7E6: 20 34 AA  JSR sub_AA34
C - - - - - 0x00B7F9 02:B7E9: 20 E5 B8  JSR sub_B8E5
C - - - - - 0x00B7FC 02:B7EC: BD 96 04  LDA ram_obj_current_angle,X
C - - - - - 0x00B7FF 02:B7EF: 29 80     AND #$80
C - - - - - 0x00B801 02:B7F1: 1D 74 00  ORA a: ram_номер_анимации,X
C - - - - - 0x00B804 02:B7F4: 9D 74 00  STA a: ram_номер_анимации,X
C - - - - - 0x00B807 02:B7F7: 60        RTS



ofs_012_B7F8_1F:
C - - J - - 0x00B808 02:B7F8: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B80B 02:B7FB: 30 41     BMI bra_B83E
C - - - - - 0x00B80D 02:B7FD: 20 82 B2  JSR sub_B282
C - - - - - 0x00B810 02:B800: BD A3 04  LDA ram_obj_direction,X
C - - - - - 0x00B813 02:B803: 09 40     ORA #$40
C - - - - - 0x00B815 02:B805: 9D 96 04  STA ram_obj_current_angle,X
C - - - - - 0x00B818 02:B808: A9 04     LDA #$04
C - - - - - 0x00B81A 02:B80A: 20 93 B2  JSR sub_B293
C - - - - - 0x00B81D 02:B80D: A9 00     LDA #$00
C - - - - - 0x00B81F 02:B80F: 4C 3B B8  JMP loc_B83B



ofs_012_B812_22:
C - - J - - 0x00B822 02:B812: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B825 02:B815: 30 27     BMI bra_B83E
C - - - - - 0x00B827 02:B817: 20 82 B2  JSR sub_B282
C - - - - - 0x00B82A 02:B81A: BD A3 04  LDA ram_obj_direction,X
C - - - - - 0x00B82D 02:B81D: 09 40     ORA #$40
C - - - - - 0x00B82F 02:B81F: 9D 96 04  STA ram_obj_current_angle,X
C - - - - - 0x00B832 02:B822: A9 07     LDA #$07
C - - - - - 0x00B834 02:B824: 20 93 B2  JSR sub_B293
C - - - - - 0x00B837 02:B827: A9 0A     LDA #$0A
C - - - - - 0x00B839 02:B829: 4C 3B B8  JMP loc_B83B



ofs_012_B82C_03:
ofs_012_B82C_08:
ofs_012_B82C_26:
C - - J - - 0x00B83C 02:B82C: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B83F 02:B82F: 30 0D     BMI bra_B83E
C - - - - - 0x00B841 02:B831: 20 82 B2  JSR sub_B282
C - - - - - 0x00B844 02:B834: A9 2B     LDA #$2B
C - - - - - 0x00B846 02:B836: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x00B849 02:B839: A9 00     LDA #$00
loc_B83B:
C D 1 - - - 0x00B84B 02:B83B: 20 A1 B2  JSR sub_B2A1
bra_B83E:
C - - - - - 0x00B84E 02:B83E: 20 34 AA  JSR sub_AA34
C - - - - - 0x00B851 02:B841: 20 E5 B8  JSR sub_B8E5
C - - - - - 0x00B854 02:B844: 20 43 AA  JSR sub_AA43
C - - - - - 0x00B857 02:B847: BD 99 03  LDA ram_игрок_Z_hi,X
C - - - - - 0x00B85A 02:B84A: 30 05     BMI bra_B851
C - - - - - 0x00B85C 02:B84C: 1D 86 03  ORA ram_игрок_Z_lo,X
C - - - - - 0x00B85F 02:B84F: D0 19     BNE bra_B86A_RTS
bra_B851:
C - - - - - 0x00B861 02:B851: A9 00     LDA #$00
C - - - - - 0x00B863 02:B853: 9D 73 03  STA ram_игрок_Z_sub,X
C - - - - - 0x00B866 02:B856: 9D 86 03  STA ram_игрок_Z_lo,X
C - - - - - 0x00B869 02:B859: 9D 99 03  STA ram_игрок_Z_hi,X
C - - - - - 0x00B86C 02:B85C: 20 6B B8  JSR sub_B86B
C - - - - - 0x00B86F 02:B85F: A5 58     LDA ram_номер_экрана
C - - - - - 0x00B871 02:B861: C9 03     CMP #$03
C - - - - - 0x00B873 02:B863: F0 05     BEQ bra_B86A_RTS
C - - - - - 0x00B875 02:B865: A9 2C     LDA #$2C
C - - - - - 0x00B877 02:B867: 20 02 C0  JSR sub_0x01C012
bra_B86A_RTS:
C - - - - - 0x00B87A 02:B86A: 60        RTS



sub_B86B:
ofs_B86B:
C - - J - - 0x00B87B 02:B86B: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B87E 02:B86E: 29 7F     AND #$7F
C - - - - - 0x00B880 02:B870: A8        TAY
C - - - - - 0x00B881 02:B871: B9 B2 B8  LDA tbl_B8B2,Y
C - - - - - 0x00B884 02:B874: 10 2D     BPL bra_B8A3
C - - - - - 0x00B886 02:B876: 0A        ASL
C - - - - - 0x00B887 02:B877: 30 25     BMI bra_B89E
C - - - - - 0x00B889 02:B879: B9 B2 B8  LDA tbl_B8B2,Y
C - - - - - 0x00B88C 02:B87C: 29 3F     AND #$3F
C - - - - - 0x00B88E 02:B87E: 0A        ASL
C - - - - - 0x00B88F 02:B87F: A8        TAY
C - - - - - 0x00B890 02:B880: 86 1C     STX ram_001C
C - - - - - 0x00B892 02:B882: A5 58     LDA ram_номер_экрана
C - - - - - 0x00B894 02:B884: C9 03     CMP #$03
C - - - - - 0x00B896 02:B886: D0 04     BNE bra_B88C
C - - - - - 0x00B898 02:B888: A2 01     LDX #$01
C - - - - - 0x00B89A 02:B88A: D0 04     BNE bra_B890
bra_B88C:
C - - - - - 0x00B89C 02:B88C: 8A        TXA
C - - - - - 0x00B89D 02:B88D: 49 02     EOR #$02
C - - - - - 0x00B89F 02:B88F: AA        TAX
bra_B890:
C - - - - - 0x00B8A0 02:B890: B9 DE B8  LDA tbl_B8DE,Y
C - - - - - 0x00B8A3 02:B893: 20 A3 B8  JSR sub_B8A3
C - - - - - 0x00B8A6 02:B896: A6 1C     LDX ram_001C
C - - - - - 0x00B8A8 02:B898: B9 DD B8  LDA tbl_B8DD,Y
C - - - - - 0x00B8AB 02:B89B: 4C A3 B8  JMP loc_B8A3
bra_B89E:
- - - - - - 0x00B8AE 02:B89E: BD 59 04  LDA ram_игрок_номер_движения,X
- - - - - - 0x00B8B1 02:B8A1: 29 7F     AND #$7F
bra_B8A3:
sub_B8A3:
loc_B8A3:
C D 1 - - - 0x00B8B3 02:B8A3: 9D 59 04  STA ram_игрок_номер_движения,X
C - - - - - 0x00B8B6 02:B8A6: A9 00     LDA #$00
C - - - - - 0x00B8B8 02:B8A8: 9D 94 00  STA a: ram_номер_кадра_анимации,X
C - - - - - 0x00B8BB 02:B8AB: 9D 87 00  STA a: ram_таймер_кадра_анимации,X
C - - - - - 0x00B8BE 02:B8AE: 9D 6C 04  STA ram_игрок_подтип_анимации,X
C - - - - - 0x00B8C1 02:B8B1: 60        RTS



tbl_B8B2:
- - - - - - 0x00B8C2 02:B8B2: 00        .byte $00   ; 
- D 1 - - - 0x00B8C3 02:B8B3: 02        .byte $02   ; 
- D 1 - - - 0x00B8C4 02:B8B4: 03        .byte $03   ; 
- D 1 - - - 0x00B8C5 02:B8B5: 04        .byte $04   ; 
- D 1 - - - 0x00B8C6 02:B8B6: 01        .byte $01   ; 
- - - - - - 0x00B8C7 02:B8B7: FF        .byte $FF   ; 
- D 1 - - - 0x00B8C8 02:B8B8: 07        .byte $07   ; 
- D 1 - - - 0x00B8C9 02:B8B9: 08        .byte $08   ; 
- D 1 - - - 0x00B8CA 02:B8BA: 09        .byte $09   ; 
- - - - - - 0x00B8CB 02:B8BB: 09        .byte $09   ; 
- - - - - - 0x00B8CC 02:B8BC: FF        .byte $FF   ; 
- - - - - - 0x00B8CD 02:B8BD: FF        .byte $FF   ; 
- - - - - - 0x00B8CE 02:B8BE: FF        .byte $FF   ; 
- D 1 - - - 0x00B8CF 02:B8BF: 80        .byte $80   ; 
- D 1 - - - 0x00B8D0 02:B8C0: 81        .byte $81   ; 
- - - - - - 0x00B8D1 02:B8C1: FF        .byte $FF   ; 
- - - - - - 0x00B8D2 02:B8C2: FF        .byte $FF   ; 
- - - - - - 0x00B8D3 02:B8C3: FF        .byte $FF   ; 
- - - - - - 0x00B8D4 02:B8C4: FF        .byte $FF   ; 
- - - - - - 0x00B8D5 02:B8C5: FF        .byte $FF   ; 
- - - - - - 0x00B8D6 02:B8C6: FF        .byte $FF   ; 
- - - - - - 0x00B8D7 02:B8C7: FF        .byte $FF   ; 
- - - - - - 0x00B8D8 02:B8C8: FF        .byte $FF   ; 
- - - - - - 0x00B8D9 02:B8C9: FF        .byte $FF   ; 
- - - - - - 0x00B8DA 02:B8CA: FF        .byte $FF   ; 
- - - - - - 0x00B8DB 02:B8CB: FF        .byte $FF   ; 
- - - - - - 0x00B8DC 02:B8CC: FF        .byte $FF   ; 
- - - - - - 0x00B8DD 02:B8CD: FF        .byte $FF   ; 
- - - - - - 0x00B8DE 02:B8CE: FF        .byte $FF   ; 
- - - - - - 0x00B8DF 02:B8CF: FF        .byte $FF   ; 
- D 1 - - - 0x00B8E0 02:B8D0: 82        .byte $82   ; 
- D 1 - - - 0x00B8E1 02:B8D1: 20        .byte $20   ; 
- D 1 - - - 0x00B8E2 02:B8D2: 24        .byte $24   ; 
- - - - - - 0x00B8E3 02:B8D3: FF        .byte $FF   ; 
- D 1 - - - 0x00B8E4 02:B8D4: 23        .byte $23   ; 
- - - - - - 0x00B8E5 02:B8D5: FF        .byte $FF   ; 
- - - - - - 0x00B8E6 02:B8D6: FF        .byte $FF   ; 
- - - - - - 0x00B8E7 02:B8D7: FF        .byte $FF   ; 
- D 1 - - - 0x00B8E8 02:B8D8: 83        .byte $83   ; 
- - - - - - 0x00B8E9 02:B8D9: FF        .byte $FF   ; 
- - - - - - 0x00B8EA 02:B8DA: FF        .byte $FF   ; 
- - - - - - 0x00B8EB 02:B8DB: FF        .byte $FF   ; 
- - - - - - 0x00B8EC 02:B8DC: FF        .byte $FF   ; 



tbl_B8DD:
- D 1 - - - 0x00B8ED 02:B8DD: 0E        .byte $0E   ; 
tbl_B8DE:
- D 1 - - - 0x00B8EE 02:B8DE: 0B        .byte $0B   ; 
- D 1 - - - 0x00B8EF 02:B8DF: 0F        .byte $0F   ; 
- D 1 - - - 0x00B8F0 02:B8E0: 0C        .byte $0C   ; 
- D 1 - - - 0x00B8F1 02:B8E1: 1F        .byte $1F   ; 
- D 1 - - - 0x00B8F2 02:B8E2: 22        .byte $22   ; 
- D 1 - - - 0x00B8F3 02:B8E3: 26        .byte $26   ; 
- D 1 - - - 0x00B8F4 02:B8E4: 25        .byte $25   ; 



sub_B8E5:
C - - - - - 0x00B8F5 02:B8E5: AD 00 B9  LDA tbl_B900
C - - - - - 0x00B8F8 02:B8E8: 85 30     STA ram_0030
C - - - - - 0x00B8FA 02:B8EA: AD 01 B9  LDA tbl_B900 + $01
C - - - - - 0x00B8FD 02:B8ED: 85 31     STA ram_0031
C - - - - - 0x00B8FF 02:B8EF: AD 02 B9  LDA tbl_B902
C - - - - - 0x00B902 02:B8F2: 85 32     STA ram_0032
C - - - - - 0x00B904 02:B8F4: AD 03 B9  LDA tbl_B902 + $01
C - - - - - 0x00B907 02:B8F7: 85 33     STA ram_0033
C - - - - - 0x00B909 02:B8F9: BD 59 04  LDA ram_игрок_номер_движения,X
C - - - - - 0x00B90C 02:B8FC: 20 56 C0  JSR sub_0x01C066
C - - - - - 0x00B90F 02:B8FF: 60        RTS
tbl_B900:
- D 1 - - - 0x00B910 02:B900: 04 B9     .word off_B904
tbl_B902:
- D 1 - - - 0x00B912 02:B902: 6B B8     .word ofs_B86B



off_B904:
- - - - - - 0x00B914 02:B904: 5A B9     .word off_B95A_00
- D 1 - I - 0x00B916 02:B906: 5B B9     .word off_B95B_01
- D 1 - I - 0x00B918 02:B908: 68 B9     .word off_B968_02
- D 1 - I - 0x00B91A 02:B90A: 6B B9     .word off_B96B_03
- D 1 - I - 0x00B91C 02:B90C: 68 B9     .word off_B968_04
- D 1 - I - 0x00B91E 02:B90E: 6D B9     .word off_B96D_05
- D 1 - I - 0x00B920 02:B910: 72 B9     .word off_B972_06
- D 1 - I - 0x00B922 02:B912: 68 B9     .word off_B968_07
- D 1 - I - 0x00B924 02:B914: 6B B9     .word off_B96B_08
- D 1 - I - 0x00B926 02:B916: 83 B9     .word off_B983_09
- D 1 - I - 0x00B928 02:B918: 8B B9     .word off_B98B_0A
- D 1 - I - 0x00B92A 02:B91A: 90 B9     .word off_B990_0B
- D 1 - I - 0x00B92C 02:B91C: 9A B9     .word off_B99A_0C
- D 1 - I - 0x00B92E 02:B91E: A2 B9     .word off_B9A2_0D
- D 1 - I - 0x00B930 02:B920: A5 B9     .word off_B9A5_0E
- D 1 - I - 0x00B932 02:B922: AA B9     .word off_B9AA_0F
- D 1 - I - 0x00B934 02:B924: BA B9     .word off_B9BA_10
- D 1 - I - 0x00B936 02:B926: 8B B9     .word off_B98B_11
- D 1 - I - 0x00B938 02:B928: CF B9     .word off_B9CF_12
- D 1 - I - 0x00B93A 02:B92A: D8 B9     .word off_B9D8_13
- D 1 - I - 0x00B93C 02:B92C: DD B9     .word off_B9DD_14
- D 1 - I - 0x00B93E 02:B92E: E2 B9     .word off_B9E2_15
- D 1 - I - 0x00B940 02:B930: E7 B9     .word off_B9E7_16
- D 1 - I - 0x00B942 02:B932: EC B9     .word off_B9EC_17
- D 1 - I - 0x00B944 02:B934: F5 B9     .word off_B9F5_18
- D 1 - I - 0x00B946 02:B936: FA B9     .word off_B9FA_19
- D 1 - I - 0x00B948 02:B938: FF B9     .word off_B9FF_1A
- - - - - - 0x00B94A 02:B93A: FF B9     .word off_B9FF_1B
- D 1 - I - 0x00B94C 02:B93C: 20 BA     .word off_BA20_1C
- - - - - - 0x00B94E 02:B93E: 20 BA     .word off_BA20_1D
- D 1 - I - 0x00B950 02:B940: 25 BA     .word off_BA25_1E
- D 1 - I - 0x00B952 02:B942: 36 BA     .word off_BA36_1F
- D 1 - I - 0x00B954 02:B944: 38 BA     .word off_BA38_20
- D 1 - I - 0x00B956 02:B946: 48 BA     .word off_BA48_21
- D 1 - I - 0x00B958 02:B948: 4D BA     .word off_BA4D_22
- D 1 - I - 0x00B95A 02:B94A: 48 BA     .word off_BA48_23
- D 1 - I - 0x00B95C 02:B94C: 3B BA     .word off_BA3B_24
- D 1 - I - 0x00B95E 02:B94E: 58 BA     .word off_BA58_25
- D 1 - I - 0x00B960 02:B950: 4F BA     .word off_BA4F_26
- D 1 - I - 0x00B962 02:B952: 5C BA     .word off_BA5C_27
- D 1 - I - 0x00B964 02:B954: 51 BA     .word off_BA51_28
- D 1 - I - 0x00B966 02:B956: 61 BA     .word off_BA61_29
- D 1 - I - 0x00B968 02:B958: 53 BA     .word off_BA53_2A



off_B95A_00:
- - - - - - 0x00B96A 02:B95A: FF        .byte $FF   ; 



off_B95B_01:
- D 1 - I - 0x00B96B 02:B95B: 04        .byte $04   ; 
- D 1 - I - 0x00B96C 02:B95C: 08        .byte $08   ; 
- D 1 - I - 0x00B96D 02:B95D: 04        .byte $04   ; 
- D 1 - I - 0x00B96E 02:B95E: 09        .byte $09   ; 
- D 1 - I - 0x00B96F 02:B95F: 04        .byte $04   ; 
- D 1 - I - 0x00B970 02:B960: 08        .byte $08   ; 
- D 1 - I - 0x00B971 02:B961: 04        .byte $04   ; 
- D 1 - I - 0x00B972 02:B962: 09        .byte $09   ; 
- D 1 - I - 0x00B973 02:B963: 04        .byte $04   ; 
- D 1 - I - 0x00B974 02:B964: 08        .byte $08   ; 
- D 1 - I - 0x00B975 02:B965: 04        .byte $04   ; 
- D 1 - I - 0x00B976 02:B966: 09        .byte $09   ; 
- D 1 - I - 0x00B977 02:B967: FF        .byte $FF   ; 



off_B968_02:
off_B968_04:
off_B968_07:
- D 1 - I - 0x00B978 02:B968: 08        .byte $08   ; 
- D 1 - I - 0x00B979 02:B969: 02        .byte $02   ; 
- D 1 - I - 0x00B97A 02:B96A: FF        .byte $FF   ; 



off_B96B_03:
off_B96B_08:
- D 1 - I - 0x00B97B 02:B96B: 00        .byte $00   ; 
- D 1 - I - 0x00B97C 02:B96C: 03        .byte $03   ; 
off_B96D_05:
- D 1 - I - 0x00B97D 02:B96D: 04        .byte $04   ; 
- D 1 - I - 0x00B97E 02:B96E: 06        .byte $06   ; 
- D 1 - I - 0x00B97F 02:B96F: 04        .byte $04   ; 
- D 1 - I - 0x00B980 02:B970: 0B        .byte $0B   ; 
- D 1 - I - 0x00B981 02:B971: FE        .byte $FE   ; 



off_B972_06:
- D 1 - I - 0x00B982 02:B972: 02        .byte $02   ; 
- D 1 - I - 0x00B983 02:B973: 00        .byte $00   ; 
- D 1 - I - 0x00B984 02:B974: 02        .byte $02   ; 
- D 1 - I - 0x00B985 02:B975: 01        .byte $01   ; 
- D 1 - I - 0x00B986 02:B976: 02        .byte $02   ; 
- D 1 - I - 0x00B987 02:B977: 00        .byte $00   ; 
- D 1 - I - 0x00B988 02:B978: 02        .byte $02   ; 
- D 1 - I - 0x00B989 02:B979: 01        .byte $01   ; 
- D 1 - I - 0x00B98A 02:B97A: 02        .byte $02   ; 
- D 1 - I - 0x00B98B 02:B97B: 00        .byte $00   ; 
- D 1 - I - 0x00B98C 02:B97C: 02        .byte $02   ; 
- D 1 - I - 0x00B98D 02:B97D: 01        .byte $01   ; 
- D 1 - I - 0x00B98E 02:B97E: 02        .byte $02   ; 
- D 1 - I - 0x00B98F 02:B97F: 00        .byte $00   ; 
- D 1 - I - 0x00B990 02:B980: 02        .byte $02   ; 
- D 1 - I - 0x00B991 02:B981: 01        .byte $01   ; 
- D 1 - I - 0x00B992 02:B982: FF        .byte $FF   ; 



off_B983_09:
- D 1 - I - 0x00B993 02:B983: 08        .byte $08   ; 
- D 1 - I - 0x00B994 02:B984: 02        .byte $02   ; 
- D 1 - I - 0x00B995 02:B985: 04        .byte $04   ; 
- D 1 - I - 0x00B996 02:B986: 04        .byte $04   ; 
- D 1 - I - 0x00B997 02:B987: 04        .byte $04   ; 
- D 1 - I - 0x00B998 02:B988: 05        .byte $05   ; 
- D 1 - I - 0x00B999 02:B989: FC        .byte $FC   ; 
- D 1 - I - 0x00B99A 02:B98A: 01        .byte $01   ; 
off_B98B_0A:
off_B98B_11:
- D 1 - I - 0x00B99B 02:B98B: 04        .byte $04   ; 
- D 1 - I - 0x00B99C 02:B98C: 92        .byte $92   ; 
- D 1 - I - 0x00B99D 02:B98D: 04        .byte $04   ; 
- D 1 - I - 0x00B99E 02:B98E: 93        .byte $93   ; 
- D 1 - I - 0x00B99F 02:B98F: FE        .byte $FE   ; 



off_B990_0B:
- D 1 - I - 0x00B9A0 02:B990: 10        .byte $10   ; 
- D 1 - I - 0x00B9A1 02:B991: 94        .byte $94   ; 
- D 1 - I - 0x00B9A2 02:B992: 08        .byte $08   ; 
- D 1 - I - 0x00B9A3 02:B993: 95        .byte $95   ; 
- D 1 - I - 0x00B9A4 02:B994: 04        .byte $04   ; 
- D 1 - I - 0x00B9A5 02:B995: 91        .byte $91   ; 
- D 1 - I - 0x00B9A6 02:B996: 04        .byte $04   ; 
- D 1 - I - 0x00B9A7 02:B997: 90        .byte $90   ; 
- D 1 - I - 0x00B9A8 02:B998: FC        .byte $FC   ; 
- D 1 - I - 0x00B9A9 02:B999: 02        .byte $02   ; 
off_B99A_0C:
- D 1 - I - 0x00B9AA 02:B99A: 10        .byte $10   ; 
- D 1 - I - 0x00B9AB 02:B99B: 96        .byte $96   ; 
- D 1 - I - 0x00B9AC 02:B99C: 08        .byte $08   ; 
- D 1 - I - 0x00B9AD 02:B99D: 99        .byte $99   ; 
- D 1 - I - 0x00B9AE 02:B99E: 10        .byte $10   ; 
- D 1 - I - 0x00B9AF 02:B99F: 97        .byte $97   ; 
- D 1 - I - 0x00B9B0 02:B9A0: 00        .byte $00   ; 
- D 1 - I - 0x00B9B1 02:B9A1: 99        .byte $99   ; 
off_B9A2_0D:
- D 1 - I - 0x00B9B2 02:B9A2: 40        .byte $40   ; 
- D 1 - I - 0x00B9B3 02:B9A3: 9A        .byte $9A   ; 
- D 1 - I - 0x00B9B4 02:B9A4: FF        .byte $FF   ; 



off_B9A5_0E:
- D 1 - I - 0x00B9B5 02:B9A5: 0F        .byte $0F   ; 
- D 1 - I - 0x00B9B6 02:B9A6: 9A        .byte $9A   ; 
- D 1 - I - 0x00B9B7 02:B9A7: 40        .byte $40   ; 
- D 1 - I - 0x00B9B8 02:B9A8: 9B        .byte $9B   ; 
- D 1 - I - 0x00B9B9 02:B9A9: FF        .byte $FF   ; 



off_B9AA_0F:
- D 1 - I - 0x00B9BA 02:B9AA: 18        .byte $18   ; 
- D 1 - I - 0x00B9BB 02:B9AB: 9B        .byte $9B   ; 
- D 1 - I - 0x00B9BC 02:B9AC: 10        .byte $10   ; 
- D 1 - I - 0x00B9BD 02:B9AD: 9E        .byte $9E   ; 
- D 1 - I - 0x00B9BE 02:B9AE: 02        .byte $02   ; 
- D 1 - I - 0x00B9BF 02:B9AF: 9C        .byte $9C   ; 
- D 1 - I - 0x00B9C0 02:B9B0: 02        .byte $02   ; 
- D 1 - I - 0x00B9C1 02:B9B1: 9D        .byte $9D   ; 
- D 1 - I - 0x00B9C2 02:B9B2: 02        .byte $02   ; 
- D 1 - I - 0x00B9C3 02:B9B3: 9C        .byte $9C   ; 
- D 1 - I - 0x00B9C4 02:B9B4: 02        .byte $02   ; 
- D 1 - I - 0x00B9C5 02:B9B5: 9D        .byte $9D   ; 
- D 1 - I - 0x00B9C6 02:B9B6: 08        .byte $08   ; 
- D 1 - I - 0x00B9C7 02:B9B7: 9C        .byte $9C   ; 
- D 1 - I - 0x00B9C8 02:B9B8: FC        .byte $FC   ; 
- D 1 - I - 0x00B9C9 02:B9B9: 02        .byte $02   ; 
off_B9BA_10:
- D 1 - I - 0x00B9CA 02:B9BA: 08        .byte $08   ; 
- D 1 - I - 0x00B9CB 02:B9BB: 0C        .byte $0C   ; 
- D 1 - I - 0x00B9CC 02:B9BC: 10        .byte $10   ; 
- D 1 - I - 0x00B9CD 02:B9BD: 0D        .byte $0D   ; 
- D 1 - I - 0x00B9CE 02:B9BE: 06        .byte $06   ; 
- D 1 - I - 0x00B9CF 02:B9BF: 0E        .byte $0E   ; 
- D 1 - I - 0x00B9D0 02:B9C0: 04        .byte $04   ; 
- D 1 - I - 0x00B9D1 02:B9C1: 0F        .byte $0F   ; 
- D 1 - I - 0x00B9D2 02:B9C2: 04        .byte $04   ; 
- D 1 - I - 0x00B9D3 02:B9C3: 10        .byte $10   ; 
- D 1 - I - 0x00B9D4 02:B9C4: 04        .byte $04   ; 
- D 1 - I - 0x00B9D5 02:B9C5: 11        .byte $11   ; 
- D 1 - I - 0x00B9D6 02:B9C6: 04        .byte $04   ; 
- D 1 - I - 0x00B9D7 02:B9C7: 10        .byte $10   ; 
- D 1 - I - 0x00B9D8 02:B9C8: 04        .byte $04   ; 
- D 1 - I - 0x00B9D9 02:B9C9: 11        .byte $11   ; 
- D 1 - I - 0x00B9DA 02:B9CA: 04        .byte $04   ; 
- D 1 - I - 0x00B9DB 02:B9CB: 10        .byte $10   ; 
- D 1 - I - 0x00B9DC 02:B9CC: 04        .byte $04   ; 
- D 1 - I - 0x00B9DD 02:B9CD: 11        .byte $11   ; 
- D 1 - I - 0x00B9DE 02:B9CE: FE        .byte $FE   ; 



off_B9CF_12:
- D 1 - I - 0x00B9DF 02:B9CF: 02        .byte $02   ; 
- D 1 - I - 0x00B9E0 02:B9D0: 1F        .byte $1F   ; 
- D 1 - I - 0x00B9E1 02:B9D1: 02        .byte $02   ; 
- D 1 - I - 0x00B9E2 02:B9D2: 20        .byte $20   ; 
- D 1 - I - 0x00B9E3 02:B9D3: 02        .byte $02   ; 
- D 1 - I - 0x00B9E4 02:B9D4: 9F        .byte $9F   ; 
- D 1 - I - 0x00B9E5 02:B9D5: 02        .byte $02   ; 
- D 1 - I - 0x00B9E6 02:B9D6: A0        .byte $A0   ; 
- D 1 - I - 0x00B9E7 02:B9D7: FE        .byte $FE   ; 



off_B9D8_13:
- D 1 - I - 0x00B9E8 02:B9D8: 04        .byte $04   ; 
- D 1 - I - 0x00B9E9 02:B9D9: 27        .byte $27   ; 
- D 1 - I - 0x00B9EA 02:B9DA: 04        .byte $04   ; 
- D 1 - I - 0x00B9EB 02:B9DB: 28        .byte $28   ; 
- D 1 - I - 0x00B9EC 02:B9DC: FE        .byte $FE   ; 



off_B9DD_14:
- D 1 - I - 0x00B9ED 02:B9DD: 04        .byte $04   ; 
- D 1 - I - 0x00B9EE 02:B9DE: A5        .byte $A5   ; 
- D 1 - I - 0x00B9EF 02:B9DF: 04        .byte $04   ; 
- D 1 - I - 0x00B9F0 02:B9E0: A6        .byte $A6   ; 
- D 1 - I - 0x00B9F1 02:B9E1: FE        .byte $FE   ; 



off_B9E2_15:
- D 1 - I - 0x00B9F2 02:B9E2: 04        .byte $04   ; 
- D 1 - I - 0x00B9F3 02:B9E3: 2B        .byte $2B   ; 
- D 1 - I - 0x00B9F4 02:B9E4: 04        .byte $04   ; 
- D 1 - I - 0x00B9F5 02:B9E5: 2C        .byte $2C   ; 
- D 1 - I - 0x00B9F6 02:B9E6: FE        .byte $FE   ; 



off_B9E7_16:
- D 1 - I - 0x00B9F7 02:B9E7: 04        .byte $04   ; 
- D 1 - I - 0x00B9F8 02:B9E8: 29        .byte $29   ; 
- D 1 - I - 0x00B9F9 02:B9E9: 04        .byte $04   ; 
- D 1 - I - 0x00B9FA 02:B9EA: 2A        .byte $2A   ; 
- D 1 - I - 0x00B9FB 02:B9EB: FE        .byte $FE   ; 



off_B9EC_17:
- D 1 - I - 0x00B9FC 02:B9EC: 04        .byte $04   ; 
- D 1 - I - 0x00B9FD 02:B9ED: 34        .byte $34   ; 
- D 1 - I - 0x00B9FE 02:B9EE: 04        .byte $04   ; 
- D 1 - I - 0x00B9FF 02:B9EF: 36        .byte $36   ; 
- D 1 - I - 0x00BA00 02:B9F0: 04        .byte $04   ; 
- D 1 - I - 0x00BA01 02:B9F1: B6        .byte $B6   ; 
- D 1 - I - 0x00BA02 02:B9F2: 04        .byte $04   ; 
- D 1 - I - 0x00BA03 02:B9F3: B4        .byte $B4   ; 
- D 1 - I - 0x00BA04 02:B9F4: FE        .byte $FE   ; 



off_B9F5_18:
- D 1 - I - 0x00BA05 02:B9F5: 02        .byte $02   ; 
- D 1 - I - 0x00BA06 02:B9F6: 3F        .byte $3F   ; 
- D 1 - I - 0x00BA07 02:B9F7: 02        .byte $02   ; 
- D 1 - I - 0x00BA08 02:B9F8: 40        .byte $40   ; 
- D 1 - I - 0x00BA09 02:B9F9: FE        .byte $FE   ; 



off_B9FA_19:
- D 1 - I - 0x00BA0A 02:B9FA: 02        .byte $02   ; 
- D 1 - I - 0x00BA0B 02:B9FB: 2E        .byte $2E   ; 
- D 1 - I - 0x00BA0C 02:B9FC: 02        .byte $02   ; 
- D 1 - I - 0x00BA0D 02:B9FD: 2F        .byte $2F   ; 
- D 1 - I - 0x00BA0E 02:B9FE: FE        .byte $FE   ; 



off_B9FF_1A:
off_B9FF_1B:
- D 1 - I - 0x00BA0F 02:B9FF: 02        .byte $02   ; 
- D 1 - I - 0x00BA10 02:BA00: 37        .byte $37   ; 
- D 1 - I - 0x00BA11 02:BA01: 02        .byte $02   ; 
- D 1 - I - 0x00BA12 02:BA02: 38        .byte $38   ; 
- D 1 - I - 0x00BA13 02:BA03: 02        .byte $02   ; 
- D 1 - I - 0x00BA14 02:BA04: 37        .byte $37   ; 
- D 1 - I - 0x00BA15 02:BA05: 02        .byte $02   ; 
- D 1 - I - 0x00BA16 02:BA06: 38        .byte $38   ; 
- D 1 - I - 0x00BA17 02:BA07: 02        .byte $02   ; 
- D 1 - I - 0x00BA18 02:BA08: 3B        .byte $3B   ; 
- D 1 - I - 0x00BA19 02:BA09: 02        .byte $02   ; 
- D 1 - I - 0x00BA1A 02:BA0A: 3C        .byte $3C   ; 
- D 1 - I - 0x00BA1B 02:BA0B: 02        .byte $02   ; 
- D 1 - I - 0x00BA1C 02:BA0C: 3B        .byte $3B   ; 
- D 1 - I - 0x00BA1D 02:BA0D: 02        .byte $02   ; 
- D 1 - I - 0x00BA1E 02:BA0E: 3C        .byte $3C   ; 
- D 1 - I - 0x00BA1F 02:BA0F: 02        .byte $02   ; 
- D 1 - I - 0x00BA20 02:BA10: 3B        .byte $3B   ; 
- D 1 - I - 0x00BA21 02:BA11: 02        .byte $02   ; 
- D 1 - I - 0x00BA22 02:BA12: 3C        .byte $3C   ; 
- D 1 - I - 0x00BA23 02:BA13: 02        .byte $02   ; 
- D 1 - I - 0x00BA24 02:BA14: 3B        .byte $3B   ; 
- D 1 - I - 0x00BA25 02:BA15: 02        .byte $02   ; 
- D 1 - I - 0x00BA26 02:BA16: 3C        .byte $3C   ; 
- D 1 - I - 0x00BA27 02:BA17: 02        .byte $02   ; 
- D 1 - I - 0x00BA28 02:BA18: 37        .byte $37   ; 
- D 1 - I - 0x00BA29 02:BA19: 02        .byte $02   ; 
- D 1 - I - 0x00BA2A 02:BA1A: 38        .byte $38   ; 
- D 1 - I - 0x00BA2B 02:BA1B: 02        .byte $02   ; 
- D 1 - I - 0x00BA2C 02:BA1C: 37        .byte $37   ; 
- D 1 - I - 0x00BA2D 02:BA1D: 02        .byte $02   ; 
- D 1 - I - 0x00BA2E 02:BA1E: 38        .byte $38   ; 
- D 1 - I - 0x00BA2F 02:BA1F: FE        .byte $FE   ; 



off_BA20_1C:
off_BA20_1D:
- D 1 - I - 0x00BA30 02:BA20: 02        .byte $02   ; 
- D 1 - I - 0x00BA31 02:BA21: 30        .byte $30   ; 
- D 1 - I - 0x00BA32 02:BA22: 02        .byte $02   ; 
- D 1 - I - 0x00BA33 02:BA23: 31        .byte $31   ; 
- D 1 - I - 0x00BA34 02:BA24: FE        .byte $FE   ; 



off_BA25_1E:
- D 1 - I - 0x00BA35 02:BA25: 02        .byte $02   ; 
- D 1 - I - 0x00BA36 02:BA26: 41        .byte $41   ; 
- D 1 - I - 0x00BA37 02:BA27: 02        .byte $02   ; 
- D 1 - I - 0x00BA38 02:BA28: 42        .byte $42   ; 
- D 1 - I - 0x00BA39 02:BA29: 02        .byte $02   ; 
- D 1 - I - 0x00BA3A 02:BA2A: 41        .byte $41   ; 
- D 1 - I - 0x00BA3B 02:BA2B: 02        .byte $02   ; 
- D 1 - I - 0x00BA3C 02:BA2C: 42        .byte $42   ; 
- D 1 - I - 0x00BA3D 02:BA2D: 02        .byte $02   ; 
- D 1 - I - 0x00BA3E 02:BA2E: 41        .byte $41   ; 
- D 1 - I - 0x00BA3F 02:BA2F: 02        .byte $02   ; 
- D 1 - I - 0x00BA40 02:BA30: 42        .byte $42   ; 
- D 1 - I - 0x00BA41 02:BA31: 02        .byte $02   ; 
- D 1 - I - 0x00BA42 02:BA32: 41        .byte $41   ; 
- D 1 - I - 0x00BA43 02:BA33: 02        .byte $02   ; 
- D 1 - I - 0x00BA44 02:BA34: 42        .byte $42   ; 
- D 1 - I - 0x00BA45 02:BA35: FF        .byte $FF   ; 



off_BA36_1F:
- D 1 - I - 0x00BA46 02:BA36: 00        .byte $00   ; 
- D 1 - I - 0x00BA47 02:BA37: 21        .byte $21   ; 
off_BA38_20:
- D 1 - I - 0x00BA48 02:BA38: 08        .byte $08   ; 
- D 1 - I - 0x00BA49 02:BA39: 44        .byte $44   ; 
- D 1 - I - 0x00BA4A 02:BA3A: FF        .byte $FF   ; 



off_BA3B_24:
- D 1 - I - 0x00BA4B 02:BA3B: 04        .byte $04   ; 
- D 1 - I - 0x00BA4C 02:BA3C: 22        .byte $22   ; 
- D 1 - I - 0x00BA4D 02:BA3D: 08        .byte $08   ; 
- D 1 - I - 0x00BA4E 02:BA3E: 23        .byte $23   ; 
- D 1 - I - 0x00BA4F 02:BA3F: 04        .byte $04   ; 
- D 1 - I - 0x00BA50 02:BA40: 22        .byte $22   ; 
- D 1 - I - 0x00BA51 02:BA41: 04        .byte $04   ; 
- D 1 - I - 0x00BA52 02:BA42: A2        .byte $A2   ; 
- D 1 - I - 0x00BA53 02:BA43: 08        .byte $08   ; 
- D 1 - I - 0x00BA54 02:BA44: A3        .byte $A3   ; 
- D 1 - I - 0x00BA55 02:BA45: 04        .byte $04   ; 
- D 1 - I - 0x00BA56 02:BA46: A2        .byte $A2   ; 
- D 1 - I - 0x00BA57 02:BA47: FE        .byte $FE   ; 



off_BA48_21:
off_BA48_23:
- D 1 - I - 0x00BA58 02:BA48: 04        .byte $04   ; 
- D 1 - I - 0x00BA59 02:BA49: 41        .byte $41   ; 
- D 1 - I - 0x00BA5A 02:BA4A: 04        .byte $04   ; 
- D 1 - I - 0x00BA5B 02:BA4B: 43        .byte $43   ; 
- D 1 - I - 0x00BA5C 02:BA4C: FE        .byte $FE   ; 



off_BA4D_22:
- D 1 - I - 0x00BA5D 02:BA4D: 00        .byte $00   ; 
- D 1 - I - 0x00BA5E 02:BA4E: 24        .byte $24   ; 
off_BA4F_26:
- D 1 - I - 0x00BA5F 02:BA4F: 00        .byte $00   ; 
- D 1 - I - 0x00BA60 02:BA50: 07        .byte $07   ; 
off_BA51_28:
- D 1 - I - 0x00BA61 02:BA51: 00        .byte $00   ; 
- D 1 - I - 0x00BA62 02:BA52: 0F        .byte $0F   ; 
off_BA53_2A:
- D 1 - I - 0x00BA63 02:BA53: 04        .byte $04   ; 
- D 1 - I - 0x00BA64 02:BA54: 90        .byte $90   ; 
- D 1 - I - 0x00BA65 02:BA55: 04        .byte $04   ; 
- D 1 - I - 0x00BA66 02:BA56: A6        .byte $A6   ; 
- D 1 - I - 0x00BA67 02:BA57: FE        .byte $FE   ; 



off_BA58_25:
- D 1 - I - 0x00BA68 02:BA58: 03        .byte $03   ; 
- D 1 - I - 0x00BA69 02:BA59: 12        .byte $12   ; 
- D 1 - I - 0x00BA6A 02:BA5A: 00        .byte $00   ; 
- D 1 - I - 0x00BA6B 02:BA5B: 11        .byte $11   ; 
off_BA5C_27:
- D 1 - I - 0x00BA6C 02:BA5C: 02        .byte $02   ; 
- D 1 - I - 0x00BA6D 02:BA5D: 02        .byte $02   ; 
- D 1 - I - 0x00BA6E 02:BA5E: 02        .byte $02   ; 
- D 1 - I - 0x00BA6F 02:BA5F: 01        .byte $01   ; 
- D 1 - I - 0x00BA70 02:BA60: FE        .byte $FE   ; 



off_BA61_29:
- D 1 - I - 0x00BA71 02:BA61: 04        .byte $04   ; 
- D 1 - I - 0x00BA72 02:BA62: 22        .byte $22   ; 
- D 1 - I - 0x00BA73 02:BA63: 04        .byte $04   ; 
- D 1 - I - 0x00BA74 02:BA64: 23        .byte $23   ; 
- D 1 - I - 0x00BA75 02:BA65: FE        .byte $FE   ; 



sub_BA66:
C - - - - - 0x00BA76 02:BA66: A9 07     LDA #$07
C - - - - - 0x00BA78 02:BA68: 8D AE 05  STA ram_номер_палитры_спрайтов
C - - - - - 0x00BA7B 02:BA6B: A9 04     LDA #$04
C - - - - - 0x00BA7D 02:BA6D: 8D AF 05  STA ram_номер_палитры_спрайтов + $01
C - - - - - 0x00BA80 02:BA70: 8D B0 05  STA ram_номер_палитры_спрайтов + $02
C - - - - - 0x00BA83 02:BA73: 8D B1 05  STA ram_номер_палитры_спрайтов + $03
C - - - - - 0x00BA86 02:BA76: 8D 61 00  STA a: ram_0061
C - - - - - 0x00BA89 02:BA79: 8D 62 00  STA a: ram_0062
C - - - - - 0x00BA8C 02:BA7C: 8D 6D 00  STA a: ram_006D
C - - - - - 0x00BA8F 02:BA7F: A2 2C     LDX #$2C
C - - - - - 0x00BA91 02:BA81: 8E B8 05  STX ram_банк_спрайтов
C - - - - - 0x00BA94 02:BA84: E8        INX
C - - - - - 0x00BA95 02:BA85: 8E B9 05  STX ram_банк_спрайтов + $01
C - - - - - 0x00BA98 02:BA88: E8        INX
C - - - - - 0x00BA99 02:BA89: 8E BA 05  STX ram_банк_спрайтов + $02
C - - - - - 0x00BA9C 02:BA8C: E8        INX
C - - - - - 0x00BA9D 02:BA8D: 8E BB 05  STX ram_банк_спрайтов + $03
C - - - - - 0x00BAA0 02:BA90: 20 0B C0  JSR sub_0x01C01B
C - - - - - 0x00BAA3 02:BA93: A2 00     LDX #$00
C - - - - - 0x00BAA5 02:BA95: 8E 68 05  STX ram_номер_управляемого
C - - - - - 0x00BAA8 02:BA98: CA        DEX
C - - - - - 0x00BAA9 02:BA99: 8E 69 05  STX ram_номер_управляемого + $01
C - - - - - 0x00BAAC 02:BA9C: 8E 6A 05  STX ram_номер_управляемого + $02
C - - - - - 0x00BAAF 02:BA9F: 8E 6B 05  STX ram_номер_управляемого + $03
C - - - - - 0x00BAB2 02:BAA2: AE 32 05  LDX ram_номер_игрока
C - - - - - 0x00BAB5 02:BAA5: BD 11 B5  LDA tbl_B511,X
C - - - - - 0x00BAB8 02:BAA8: 8D 5C 05  STA ram_лицо_игрока
C - - - - - 0x00BABB 02:BAAB: AE 3C 05  LDX ram_номер_игрока + con_gk_id
C - - - - - 0x00BABE 02:BAAE: BD 11 B5  LDA tbl_B511,X
C - - - - - 0x00BAC1 02:BAB1: 8D 5D 05  STA ram_лицо_игрока + $01
C - - - - - 0x00BAC4 02:BAB4: A9 80     LDA #$80
C - - - - - 0x00BAC6 02:BAB6: 8D A3 04  STA ram_obj_direction
C - - - - - 0x00BAC9 02:BAB9: 8D A4 04  STA ram_obj_direction + $01
C - - - - - 0x00BACC 02:BABC: A9 00     LDA #$00
C - - - - - 0x00BACE 02:BABE: 8D AF 04  STA ram_obj_direction + con_ball_id
C - - - - - 0x00BAD1 02:BAC1: A9 02     LDA #$02
C - - - - - 0x00BAD3 02:BAC3: 85 1C     STA ram_001C
bra_BAC5:
C - - - - - 0x00BAD5 02:BAC5: A4 1C     LDY ram_001C
C - - - - - 0x00BAD7 02:BAC7: BE 1E BB  LDX tbl_BB1E,Y
C - - - - - 0x00BADA 02:BACA: A9 00     LDA #$00
C - - - - - 0x00BADC 02:BACC: 9D F6 03  STA ram_игрок_spd_X_hi,X
C - - - - - 0x00BADF 02:BACF: 9D E8 03  STA ram_игрок_spd_X_lo,X
C - - - - - 0x00BAE2 02:BAD2: 9D 12 04  STA ram_игрок_spd_Y_hi,X
C - - - - - 0x00BAE5 02:BAD5: 9D 04 04  STA ram_игрок_spd_Y_lo,X
C - - - - - 0x00BAE8 02:BAD8: 9D 2E 04  STA ram_игрок_spd_Z_hi,X
C - - - - - 0x00BAEB 02:BADB: 9D 20 04  STA ram_игрок_spd_Z_lo,X
C - - - - - 0x00BAEE 02:BADE: 9D 60 03  STA ram_игрок_Y_hi,X
C - - - - - 0x00BAF1 02:BAE1: 9D 86 03  STA ram_игрок_Z_lo,X
C - - - - - 0x00BAF4 02:BAE4: 9D 99 03  STA ram_игрок_Z_hi,X
C - - - - - 0x00BAF7 02:BAE7: 9D 4A 04  STA ram_игрок_гравитация_hi,X
C - - - - - 0x00BAFA 02:BAEA: 9D 3C 04  STA ram_игрок_гравитация_lo,X
C - - - - - 0x00BAFD 02:BAED: 9D 86 04  STA ram_игрок_состояние,X
C - - - - - 0x00BB00 02:BAF0: A9 FF     LDA #$FF
C - - - - - 0x00BB02 02:BAF2: 9D 79 04  STA ram_игрок_номер_действия,X
C - - - - - 0x00BB05 02:BAF5: AD 1F 06  LDA ram_061F
C - - - - - 0x00BB08 02:BAF8: 0A        ASL
C - - - - - 0x00BB09 02:BAF9: 6D 1F 06  ADC ram_061F
C - - - - - 0x00BB0C 02:BAFC: 65 1C     ADC ram_001C
C - - - - - 0x00BB0E 02:BAFE: A8        TAY
C - - - - - 0x00BB0F 02:BAFF: B9 21 BB  LDA tbl_BB21,Y
C - - - - - 0x00BB12 02:BB02: 9D 59 04  STA ram_игрок_номер_движения,X
C - - - - - 0x00BB15 02:BB05: 98        TYA
C - - - - - 0x00BB16 02:BB06: 0A        ASL
C - - - - - 0x00BB17 02:BB07: A8        TAY
C - - - - - 0x00BB18 02:BB08: B9 2A BB  LDA tbl_BB2A,Y
C - - - - - 0x00BB1B 02:BB0B: 9D 14 03  STA ram_игрок_X_lo,X
C - - - - - 0x00BB1E 02:BB0E: B9 2B BB  LDA tbl_BB2B,Y
C - - - - - 0x00BB21 02:BB11: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x00BB24 02:BB14: A9 01     LDA #$01
C - - - - - 0x00BB26 02:BB16: 9D 27 03  STA ram_игрок_X_hi,X
C - - - - - 0x00BB29 02:BB19: C6 1C     DEC ram_001C
C - - - - - 0x00BB2B 02:BB1B: 10 A8     BPL bra_BAC5
C - - - - - 0x00BB2D 02:BB1D: 60        RTS



tbl_BB1E:
- D 1 - - - 0x00BB2E 02:BB1E: 00        .byte $00   ; 
- D 1 - - - 0x00BB2F 02:BB1F: 01        .byte $01   ; 
- D 1 - - - 0x00BB30 02:BB20: 0C        .byte $0C   ; 



tbl_BB21:
- D 1 - - - 0x00BB31 02:BB21: 07        .byte $07   ; 
- D 1 - - - 0x00BB32 02:BB22: 25        .byte $25   ; 
- D 1 - - - 0x00BB33 02:BB23: 26        .byte $26   ; 
- D 1 - - - 0x00BB34 02:BB24: 07        .byte $07   ; 
- D 1 - - - 0x00BB35 02:BB25: 27        .byte $27   ; 
- D 1 - - - 0x00BB36 02:BB26: 28        .byte $28   ; 
- D 1 - - - 0x00BB37 02:BB27: 07        .byte $07   ; 
- D 1 - - - 0x00BB38 02:BB28: 29        .byte $29   ; 
- D 1 - - - 0x00BB39 02:BB29: 2A        .byte $2A   ; 



tbl_BB2A:
- D 1 - - - 0x00BB3A 02:BB2A: B0        .byte $B0   ; 
tbl_BB2B:
- D 1 - - - 0x00BB3B 02:BB2B: D4        .byte $D4   ; 
- D 1 - - - 0x00BB3C 02:BB2C: 81        .byte $81   ; 
- D 1 - - - 0x00BB3D 02:BB2D: CE        .byte $CE   ; 
- D 1 - - - 0x00BB3E 02:BB2E: 80        .byte $80   ; 
- D 1 - - - 0x00BB3F 02:BB2F: D1        .byte $D1   ; 
- D 1 - - - 0x00BB40 02:BB30: B0        .byte $B0   ; 
- D 1 - - - 0x00BB41 02:BB31: D4        .byte $D4   ; 
- D 1 - - - 0x00BB42 02:BB32: 90        .byte $90   ; 
- D 1 - - - 0x00BB43 02:BB33: CC        .byte $CC   ; 
- D 1 - - - 0x00BB44 02:BB34: 80        .byte $80   ; 
- D 1 - - - 0x00BB45 02:BB35: D0        .byte $D0   ; 
- D 1 - - - 0x00BB46 02:BB36: A0        .byte $A0   ; 
- D 1 - - - 0x00BB47 02:BB37: D4        .byte $D4   ; 
- D 1 - - - 0x00BB48 02:BB38: 98        .byte $98   ; 
- D 1 - - - 0x00BB49 02:BB39: CC        .byte $CC   ; 
- D 1 - - - 0x00BB4A 02:BB3A: 88        .byte $88   ; 
- D 1 - - - 0x00BB4B 02:BB3B: D0        .byte $D0   ; 



sub_BB3C:
C - - - - - 0x00BB4C 02:BB3C: A2 00     LDX #$00
C - - - - - 0x00BB4E 02:BB3E: 20 16 AA  JSR sub_AA16
C - - - - - 0x00BB51 02:BB41: 20 61 AA  JSR sub_AA61
C - - - - - 0x00BB54 02:BB44: 20 8B B0  JSR sub_B08B
C - - - - - 0x00BB57 02:BB47: 20 66 AA  JSR sub_AA66
C - - - - - 0x00BB5A 02:BB4A: 20 65 C0  JSR sub_0x01C075
C - - - - - 0x00BB5D 02:BB4D: E8        INX
C - - - - - 0x00BB5E 02:BB4E: 20 DD B6  JSR sub_B6DD
C - - - - - 0x00BB61 02:BB51: 20 65 C0  JSR sub_0x01C075
C - - - - - 0x00BB64 02:BB54: A2 0C     LDX #$0C
C - - - - - 0x00BB66 02:BB56: 20 DD B6  JSR sub_B6DD
C - - - - - 0x00BB69 02:BB59: 20 65 C0  JSR sub_0x01C075
C - - - - - 0x00BB6C 02:BB5C: 60        RTS



loc_BB5D:
C D 1 - - - 0x00BB6D 02:BB5D: A5 59     LDA ram_подтип_экрана
C - - - - - 0x00BB6F 02:BB5F: 20 53 C0  JSR sub_0x01C063
- D 1 - I - 0x00BB72 02:BB62: 78 BB     .word ofs_013_BB78_00
- D 1 - I - 0x00BB74 02:BB64: B1 BB     .word ofs_013_BBB1_01
- D 1 - I - 0x00BB76 02:BB66: CE BB     .word ofs_013_BBCE_02
- D 1 - I - 0x00BB78 02:BB68: 00 BD     .word ofs_013_BD00_03
- D 1 - I - 0x00BB7A 02:BB6A: C0 BD     .word ofs_013_BDC0_04
- D 1 - I - 0x00BB7C 02:BB6C: 42 BE     .word ofs_013_BE42_05
- D 1 - I - 0x00BB7E 02:BB6E: 59 BE     .word ofs_013_BE59_06
- D 1 - I - 0x00BB80 02:BB70: 76 BE     .word ofs_013_BE76_07
- D 1 - I - 0x00BB82 02:BB72: 95 AA     .word ofs_013_AA95_08
- D 1 - I - 0x00BB84 02:BB74: D9 AA     .word ofs_013_AAD9_09
- D 1 - I - 0x00BB86 02:BB76: 95 BE     .word ofs_013_BE95_0A



ofs_013_BB78_00:
C - - J - - 0x00BB88 02:BB78: 20 62 C0  JSR sub_0x01C072
C - - - - - 0x00BB8B 02:BB7B: A9 F0     LDA #$F0
C - - - - - 0x00BB8D 02:BB7D: 8D 56 00  STA a: ram_limit_spr_Y
C - - - - - 0x00BB90 02:BB80: A9 80     LDA #$80
C - - - - - 0x00BB92 02:BB82: 85 4F     STA ram_nmi_flag
C - - - - - 0x00BB94 02:BB84: A9 03     LDA #$03
C - - - - - 0x00BB96 02:BB86: 8D E6 05  STA ram_05E6
C - - - - - 0x00BB99 02:BB89: A9 00     LDA #$00
C - - - - - 0x00BB9B 02:BB8B: 85 EC     STA ram_camera_X_lo
C - - - - - 0x00BB9D 02:BB8D: 85 EE     STA ram_camera_Y_lo
C - - - - - 0x00BB9F 02:BB8F: 85 EF     STA ram_camera_Y_hi
C - - - - - 0x00BBA1 02:BB91: 85 F0     STA ram_copy_camera_X_lo
C - - - - - 0x00BBA3 02:BB93: 85 F2     STA ram_copy_camera_Y_lo
C - - - - - 0x00BBA5 02:BB95: 85 F3     STA ram_copy_camera_Y_hi
C - - - - - 0x00BBA7 02:BB97: A9 01     LDA #$01
C - - - - - 0x00BBA9 02:BB99: 85 ED     STA ram_camera_X_hi
C - - - - - 0x00BBAB 02:BB9B: 85 F1     STA ram_copy_camera_X_hi
C - - - - - 0x00BBAD 02:BB9D: 20 66 BA  JSR sub_BA66
C - - - - - 0x00BBB0 02:BBA0: 20 3C BB  JSR sub_BB3C
C - - - - - 0x00BBB3 02:BBA3: 20 1B AA  JSR sub_AA1B
C - - - - - 0x00BBB6 02:BBA6: 20 59 C0  JSR sub_0x01C069
C - - - - - 0x00BBB9 02:BBA9: A9 0B     LDA #$0B
C - - - - - 0x00BBBB 02:BBAB: 20 02 C0  JSR sub_0x01C012
loc_BBAE:
C D 1 - - - 0x00BBBE 02:BBAE: E6 59     INC ram_подтип_экрана
bra_BBB0_RTS:
C - - - - - 0x00BBC0 02:BBB0: 60        RTS



ofs_013_BBB1_01:
C - - J - - 0x00BBC1 02:BBB1: 20 5C C0  JSR sub_0x01C06C
C - - - - - 0x00BBC4 02:BBB4: 20 3C BB  JSR sub_BB3C
C - - - - - 0x00BBC7 02:BBB7: 20 1B AA  JSR sub_AA1B
C - - - - - 0x00BBCA 02:BBBA: AD E5 07  LDA ram_07E5
C - - - - - 0x00BBCD 02:BBBD: 29 02     AND #$02
C - - - - - 0x00BBCF 02:BBBF: D0 EF     BNE bra_BBB0_RTS
C - - - - - 0x00BBD1 02:BBC1: A9 44     LDA #$44
C - - - - - 0x00BBD3 02:BBC3: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x00BBD6 02:BBC6: A9 10     LDA #$10
C - - - - - 0x00BBD8 02:BBC8: 20 BF BE  JSR sub_BEBF
C - - - - - 0x00BBDB 02:BBCB: 4C AE BB  JMP loc_BBAE



ofs_013_BBCE_02:
C - - J - - 0x00BBDE 02:BBCE: 20 C8 BE  JSR sub_BEC8
C - - - - - 0x00BBE1 02:BBD1: 20 7C AE  JSR sub_AE7C
C - - - - - 0x00BBE4 02:BBD4: 50 DA     BVC bra_BBB0_RTS
C - - - - - 0x00BBE6 02:BBD6: 20 44 C0  JSR sub_0x01C054
C - - - - - 0x00BBE9 02:BBD9: 20 4A C0  JSR sub_0x01C05A
C - - - - - 0x00BBEC 02:BBDC: 20 3D AE  JSR sub_AE3D
C - - - - - 0x00BBEF 02:BBDF: A9 1C     LDA #$1C
C - - - - - 0x00BBF1 02:BBE1: 20 68 C0  JSR sub_0x01C078
C - - - - - 0x00BBF4 02:BBE4: AD 1F 06  LDA ram_061F
C - - - - - 0x00BBF7 02:BBE7: 0A        ASL
C - - - - - 0x00BBF8 02:BBE8: 0A        ASL
C - - - - - 0x00BBF9 02:BBE9: 0A        ASL
C - - - - - 0x00BBFA 02:BBEA: 0A        ASL
C - - - - - 0x00BBFB 02:BBEB: A8        TAY
C - - - - - 0x00BBFC 02:BBEC: A2 00     LDX #$00
bra_BBEE:
C - - - - - 0x00BBFE 02:BBEE: B9 D0 BC  LDA tbl_BCD0,Y
C - - - - - 0x00BC01 02:BBF1: 9D 96 06  STA ram_буфер_атрибутов,X
C - - - - - 0x00BC04 02:BBF4: C8        INY
C - - - - - 0x00BC05 02:BBF5: E8        INX
C - - - - - 0x00BC06 02:BBF6: E0 10     CPX #$10
C - - - - - 0x00BC08 02:BBF8: 90 F4     BCC bra_BBEE
C - - - - - 0x00BC0A 02:BBFA: 8E 95 06  STX ram_счетчик_буфера_атрибутов
C - - - - - 0x00BC0D 02:BBFD: A9 A9     LDA #$A9
C - - - - - 0x00BC0F 02:BBFF: 8D 94 06  STA ram_байт_2006_lo_атрибуты
C - - - - - 0x00BC12 02:BC02: A9 20     LDA #$20
C - - - - - 0x00BC14 02:BC04: 8D 93 06  STA ram_байт_2006_hi_атрибуты
C - - - - - 0x00BC17 02:BC07: AD 1F 06  LDA ram_061F
C - - - - - 0x00BC1A 02:BC0A: F0 1B     BEQ bra_BC27
C - - - - - 0x00BC1C 02:BC0C: A9 DA     LDA #$DA
C - - - - - 0x00BC1E 02:BC0E: 8D B9 06  STA ram_буфер_графики
C - - - - - 0x00BC21 02:BC11: A9 01     LDA #$01
C - - - - - 0x00BC23 02:BC13: 8D B8 06  STA ram_счетчик_буфера_графики
C - - - - - 0x00BC26 02:BC16: AD 1F 06  LDA ram_061F
C - - - - - 0x00BC29 02:BC19: 0A        ASL
C - - - - - 0x00BC2A 02:BC1A: 6D 1F 06  ADC ram_061F
C - - - - - 0x00BC2D 02:BC1D: 69 88     ADC #$88
C - - - - - 0x00BC2F 02:BC1F: 8D B7 06  STA ram_байт_2006_lo_графика
C - - - - - 0x00BC32 02:BC22: A9 20     LDA #$20
C - - - - - 0x00BC34 02:BC24: 8D B6 06  STA ram_байт_2006_hi_графика
bra_BC27:
C - - - - - 0x00BC37 02:BC27: A2 00     LDX #$00
C - - - - - 0x00BC39 02:BC29: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00BC3C 02:BC2C: 38        SEC
C - - - - - 0x00BC3D 02:BC2D: E9 38     SBC #$38
C - - - - - 0x00BC3F 02:BC2F: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x00BC42 02:BC32: E8        INX
C - - - - - 0x00BC43 02:BC33: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00BC46 02:BC36: 38        SEC
C - - - - - 0x00BC47 02:BC37: E9 38     SBC #$38
C - - - - - 0x00BC49 02:BC39: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x00BC4C 02:BC3C: A2 0C     LDX #$0C
C - - - - - 0x00BC4E 02:BC3E: BD 4D 03  LDA ram_игрок_Y_lo,X
C - - - - - 0x00BC51 02:BC41: 38        SEC
C - - - - - 0x00BC52 02:BC42: E9 38     SBC #$38
C - - - - - 0x00BC54 02:BC44: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x00BC57 02:BC47: A9 00     LDA #$00
C - - - - - 0x00BC59 02:BC49: 8D 27 03  STA ram_игрок_X_hi
C - - - - - 0x00BC5C 02:BC4C: 8D 28 03  STA ram_игрок_X_hi + $01
C - - - - - 0x00BC5F 02:BC4F: 8D 33 03  STA ram_мяч_X_hi
C - - - - - 0x00BC62 02:BC52: 8D F1 00  STA a: ram_copy_camera_X_hi
C - - - - - 0x00BC65 02:BC55: 8D ED 00  STA a: ram_camera_X_hi
C - - - - - 0x00BC68 02:BC58: A9 1D     LDA #$1D
C - - - - - 0x00BC6A 02:BC5A: 8D AE 05  STA ram_номер_палитры_спрайтов
C - - - - - 0x00BC6D 02:BC5D: A9 2B     LDA #$2B
C - - - - - 0x00BC6F 02:BC5F: 8D AF 05  STA ram_номер_палитры_спрайтов + $01
C - - - - - 0x00BC72 02:BC62: 8D B0 05  STA ram_номер_палитры_спрайтов + $02
C - - - - - 0x00BC75 02:BC65: 8D B1 05  STA ram_номер_палитры_спрайтов + $03
C - - - - - 0x00BC78 02:BC68: A5 74     LDA ram_номер_анимации
C - - - - - 0x00BC7A 02:BC6A: 85 7C     STA ram_007C
C - - - - - 0x00BC7C 02:BC6C: AD 14 03  LDA ram_игрок_X_lo
C - - - - - 0x00BC7F 02:BC6F: 8D 1C 03  STA ram_031C
C - - - - - 0x00BC82 02:BC72: AD 4D 03  LDA ram_игрок_Y_lo
C - - - - - 0x00BC85 02:BC75: 8D 55 03  STA ram_0355
C - - - - - 0x00BC88 02:BC78: AD 86 03  LDA ram_игрок_Z_lo
C - - - - - 0x00BC8B 02:BC7B: 8D 8E 03  STA ram_038E
C - - - - - 0x00BC8E 02:BC7E: AD 86 04  LDA ram_игрок_состояние
C - - - - - 0x00BC91 02:BC81: 8D 8E 04  STA ram_048E
C - - - - - 0x00BC94 02:BC84: A5 75     LDA ram_номер_анимации + $01
C - - - - - 0x00BC96 02:BC86: 85 7D     STA ram_007D
C - - - - - 0x00BC98 02:BC88: AD 15 03  LDA ram_игрок_X_lo + $01
C - - - - - 0x00BC9B 02:BC8B: 8D 1D 03  STA ram_031D
C - - - - - 0x00BC9E 02:BC8E: AD 4E 03  LDA ram_игрок_Y_lo + $01
C - - - - - 0x00BCA1 02:BC91: 8D 56 03  STA ram_0356
C - - - - - 0x00BCA4 02:BC94: AD 87 03  LDA ram_игрок_Z_lo + $01
C - - - - - 0x00BCA7 02:BC97: 8D 8F 03  STA ram_038F
C - - - - - 0x00BCAA 02:BC9A: A5 80     LDA ram_номер_анимации_мяча
C - - - - - 0x00BCAC 02:BC9C: 85 7E     STA ram_007E
C - - - - - 0x00BCAE 02:BC9E: AD 20 03  LDA ram_мяч_X_lo
C - - - - - 0x00BCB1 02:BCA1: 8D 1E 03  STA ram_игрок_X_lo + con_gk_id
C - - - - - 0x00BCB4 02:BCA4: AD 59 03  LDA ram_мяч_Y_lo
C - - - - - 0x00BCB7 02:BCA7: 8D 57 03  STA ram_0357
C - - - - - 0x00BCBA 02:BCAA: AD 92 03  LDA ram_мяч_Z_lo
C - - - - - 0x00BCBD 02:BCAD: 8D 90 03  STA ram_0390
C - - - - - 0x00BCC0 02:BCB0: A9 FF     LDA #$FF
C - - - - - 0x00BCC2 02:BCB2: 8D 8C 05  STA ram_058C
C - - - - - 0x00BCC5 02:BCB5: A9 2C     LDA #$2C
C - - - - - 0x00BCC7 02:BCB7: 20 BF BE  JSR sub_BEBF
C - - - - - 0x00BCCA 02:BCBA: EE 8A 05  INC ram_таймер_демо_hi
C - - - - - 0x00BCCD 02:BCBD: 20 D4 BE  JSR sub_BED4
C - - - - - 0x00BCD0 02:BCC0: 20 59 C0  JSR sub_0x01C069
C - - - - - 0x00BCD3 02:BCC3: A9 0E     LDA #$0E
C - - - - - 0x00BCD5 02:BCC5: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x00BCD8 02:BCC8: A9 80     LDA #$80
C - - - - - 0x00BCDA 02:BCCA: 8D 8B 05  STA ram_флаг_демо
bra_BCCD:
C - - - - - 0x00BCDD 02:BCCD: E6 59     INC ram_подтип_экрана
bra_BCCF_RTS:
C - - - - - 0x00BCDF 02:BCCF: 60        RTS



tbl_BCD0:
- D 1 - - - 0x00BCE0 02:BCD0: 02        .byte $02   ; 
- D 1 - - - 0x00BCE1 02:BCD1: 02        .byte $02   ; 
- D 1 - - - 0x00BCE2 02:BCD2: E3        .byte $E3   ; 
- D 1 - - - 0x00BCE3 02:BCD3: 02        .byte $02   ; 
- D 1 - - - 0x00BCE4 02:BCD4: C6        .byte $C6   ; 
- D 1 - - - 0x00BCE5 02:BCD5: A4        .byte $A4   ; 
- D 1 - - - 0x00BCE6 02:BCD6: AD        .byte $AD   ; 
- D 1 - - - 0x00BCE7 02:BCD7: D3        .byte $D3   ; 
- D 1 - - - 0x00BCE8 02:BCD8: A4        .byte $A4   ; 
- D 1 - - - 0x00BCE9 02:BCD9: 02        .byte $02   ; 
- D 1 - - - 0x00BCEA 02:BCDA: E3        .byte $E3   ; 
- D 1 - - - 0x00BCEB 02:BCDB: 02        .byte $02   ; 
- D 1 - - - 0x00BCEC 02:BCDC: 02        .byte $02   ; 
- D 1 - - - 0x00BCED 02:BCDD: 02        .byte $02   ; 
- D 1 - - - 0x00BCEE 02:BCDE: 02        .byte $02   ; 
- D 1 - - - 0x00BCEF 02:BCDF: 02        .byte $02   ; 
- D 1 - - - 0x00BCF0 02:BCE0: E3        .byte $E3   ; 
- D 1 - - - 0x00BCF1 02:BCE1: 02        .byte $02   ; 
- D 1 - - - 0x00BCF2 02:BCE2: AD        .byte $AD   ; 
- D 1 - - - 0x00BCF3 02:BCE3: D2        .byte $D2   ; 
- D 1 - - - 0x00BCF4 02:BCE4: CF        .byte $CF   ; 
- D 1 - - - 0x00BCF5 02:BCE5: 02        .byte $02   ; 
- D 1 - - - 0x00BCF6 02:BCE6: C6        .byte $C6   ; 
- D 1 - - - 0x00BCF7 02:BCE7: A4        .byte $A4   ; 
- D 1 - - - 0x00BCF8 02:BCE8: AD        .byte $AD   ; 
- D 1 - - - 0x00BCF9 02:BCE9: D3        .byte $D3   ; 
- D 1 - - - 0x00BCFA 02:BCEA: A4        .byte $A4   ; 
- D 1 - - - 0x00BCFB 02:BCEB: 02        .byte $02   ; 
- D 1 - - - 0x00BCFC 02:BCEC: E3        .byte $E3   ; 
- D 1 - - - 0x00BCFD 02:BCED: 02        .byte $02   ; 
- D 1 - - - 0x00BCFE 02:BCEE: 02        .byte $02   ; 
- D 1 - - - 0x00BCFF 02:BCEF: 02        .byte $02   ; 
- D 1 - - - 0x00BD00 02:BCF0: 02        .byte $02   ; 
- D 1 - - - 0x00BD01 02:BCF1: 02        .byte $02   ; 
- D 1 - - - 0x00BD02 02:BCF2: 02        .byte $02   ; 
- D 1 - - - 0x00BD03 02:BCF3: E3        .byte $E3   ; 
- D 1 - - - 0x00BD04 02:BCF4: 02        .byte $02   ; 
- D 1 - - - 0x00BD05 02:BCF5: BC        .byte $BC   ; 
- D 1 - - - 0x00BD06 02:BCF6: 02        .byte $02   ; 
- D 1 - - - 0x00BD07 02:BCF7: C9        .byte $C9   ; 
- D 1 - - - 0x00BD08 02:BCF8: 02        .byte $02   ; 
- D 1 - - - 0x00BD09 02:BCF9: E3        .byte $E3   ; 
- D 1 - - - 0x00BD0A 02:BCFA: 02        .byte $02   ; 
- D 1 - - - 0x00BD0B 02:BCFB: 02        .byte $02   ; 
- D 1 - - - 0x00BD0C 02:BCFC: 02        .byte $02   ; 
- D 1 - - - 0x00BD0D 02:BCFD: 02        .byte $02   ; 
- D 1 - - - 0x00BD0E 02:BCFE: 02        .byte $02   ; 
- D 1 - - - 0x00BD0F 02:BCFF: 02        .byte $02   ; 



ofs_013_BD00_03:
C - - J - - 0x00BD10 02:BD00: 20 D4 BE  JSR sub_BED4
C - - - - - 0x00BD13 02:BD03: 20 5C C0  JSR sub_0x01C06C
C - - - - - 0x00BD16 02:BD06: 20 7C AE  JSR sub_AE7C
C - - - - - 0x00BD19 02:BD09: 50 C4     BVC bra_BCCF_RTS
C - - - - - 0x00BD1B 02:BD0B: 20 44 C0  JSR sub_0x01C054
C - - - - - 0x00BD1E 02:BD0E: 20 4A C0  JSR sub_0x01C05A
C - - - - - 0x00BD21 02:BD11: 20 3D AE  JSR sub_AE3D
C - - - - - 0x00BD24 02:BD14: EE 8C 05  INC ram_058C
C - - - - - 0x00BD27 02:BD17: AD 8C 05  LDA ram_058C
C - - - - - 0x00BD2A 02:BD1A: C9 07     CMP #$07
C - - - - - 0x00BD2C 02:BD1C: B0 AF     BCS bra_BCCD
C - - - - - 0x00BD2E 02:BD1E: 69 1D     ADC #$1D
C - - - - - 0x00BD30 02:BD20: 20 68 C0  JSR sub_0x01C078
C - - - - - 0x00BD33 02:BD23: AD 8C 05  LDA ram_058C
C - - - - - 0x00BD36 02:BD26: 0A        ASL
C - - - - - 0x00BD37 02:BD27: A8        TAY
C - - - - - 0x00BD38 02:BD28: B9 EC BE  LDA tbl_BEEC,Y
C - - - - - 0x00BD3B 02:BD2B: 85 2C     STA ram_002C
C - - - - - 0x00BD3D 02:BD2D: B9 ED BE  LDA tbl_BEEC + $01,Y
C - - - - - 0x00BD40 02:BD30: 85 2D     STA ram_002D
C - - - - - 0x00BD42 02:BD32: A0 00     LDY #$00
C - - - - - 0x00BD44 02:BD34: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00BD46 02:BD36: 20 BF BE  JSR sub_BEBF
C - - - - - 0x00BD49 02:BD39: AD 89 05  LDA ram_таймер_демо_lo
C - - - - - 0x00BD4C 02:BD3C: C9 40     CMP #$40
C - - - - - 0x00BD4E 02:BD3E: B0 03     BCS bra_BD43
C - - - - - 0x00BD50 02:BD40: EE 8A 05  INC ram_таймер_демо_hi
bra_BD43:
C - - - - - 0x00BD53 02:BD43: A9 08     LDA #$08
C - - - - - 0x00BD55 02:BD45: 8D B8 05  STA ram_банк_спрайтов
C - - - - - 0x00BD58 02:BD48: C8        INY
C - - - - - 0x00BD59 02:BD49: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00BD5B 02:BD4B: 8D B9 05  STA ram_банк_спрайтов + $01
C - - - - - 0x00BD5E 02:BD4E: A9 20     LDA #$20
C - - - - - 0x00BD60 02:BD50: 8D BA 05  STA ram_банк_спрайтов + $02
C - - - - - 0x00BD63 02:BD53: C8        INY
C - - - - - 0x00BD64 02:BD54: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00BD66 02:BD56: 8D BB 05  STA ram_банк_спрайтов + $03
C - - - - - 0x00BD69 02:BD59: 20 0B C0  JSR sub_0x01C01B
C - - - - - 0x00BD6C 02:BD5C: C8        INY
C - - - - - 0x00BD6D 02:BD5D: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00BD6F 02:BD5F: 8D B0 05  STA ram_номер_палитры_спрайтов + $02
C - - - - - 0x00BD72 02:BD62: C8        INY
C - - - - - 0x00BD73 02:BD63: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00BD75 02:BD65: 8D B1 05  STA ram_номер_палитры_спрайтов + $03
C - - - - - 0x00BD78 02:BD68: A2 00     LDX #$00
bra_BD6A:
C - - - - - 0x00BD7A 02:BD6A: A9 FF     LDA #$FF
C - - - - - 0x00BD7C 02:BD6C: 9D 99 03  STA ram_игрок_Z_hi,X
C - - - - - 0x00BD7F 02:BD6F: A9 00     LDA #$00
C - - - - - 0x00BD81 02:BD71: 9D 86 04  STA ram_игрок_состояние,X
C - - - - - 0x00BD84 02:BD74: 95 61     STA ram_0061,X
C - - - - - 0x00BD86 02:BD76: 9D 27 03  STA ram_игрок_X_hi,X
C - - - - - 0x00BD89 02:BD79: 9D 60 03  STA ram_игрок_Y_hi,X
C - - - - - 0x00BD8C 02:BD7C: C8        INY
C - - - - - 0x00BD8D 02:BD7D: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00BD8F 02:BD7F: C9 FF     CMP #$FF
C - - - - - 0x00BD91 02:BD81: F0 26     BEQ bra_BDA9
C - - - - - 0x00BD93 02:BD83: 95 74     STA ram_номер_анимации,X
C - - - - - 0x00BD95 02:BD85: A9 00     LDA #$00
C - - - - - 0x00BD97 02:BD87: 9D 99 03  STA ram_игрок_Z_hi,X
C - - - - - 0x00BD9A 02:BD8A: C8        INY
C - - - - - 0x00BD9B 02:BD8B: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00BD9D 02:BD8D: 9D 14 03  STA ram_игрок_X_lo,X
C - - - - - 0x00BDA0 02:BD90: C8        INY
C - - - - - 0x00BDA1 02:BD91: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00BDA3 02:BD93: 9D 4D 03  STA ram_игрок_Y_lo,X
C - - - - - 0x00BDA6 02:BD96: C8        INY
C - - - - - 0x00BDA7 02:BD97: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00BDA9 02:BD99: 9D 86 03  STA ram_игрок_Z_lo,X
C - - - - - 0x00BDAC 02:BD9C: F0 05     BEQ bra_BDA3
C - - - - - 0x00BDAE 02:BD9E: A9 80     LDA #$80
C - - - - - 0x00BDB0 02:BDA0: 9D 86 04  STA ram_игрок_состояние,X
bra_BDA3:
C - - - - - 0x00BDB3 02:BDA3: C8        INY
C - - - - - 0x00BDB4 02:BDA4: B1 2C     LDA (ram_002C),Y
C - - - - - 0x00BDB6 02:BDA6: 9D 5C 05  STA ram_лицо_игрока,X
bra_BDA9:
C - - - - - 0x00BDB9 02:BDA9: E8        INX
C - - - - - 0x00BDBA 02:BDAA: E0 04     CPX #$04
C - - - - - 0x00BDBC 02:BDAC: 90 BC     BCC bra_BD6A
C - - - - - 0x00BDBE 02:BDAE: E0 0D     CPX #$0D
C - - - - - 0x00BDC0 02:BDB0: F0 04     BEQ bra_BDB6
C - - - - - 0x00BDC2 02:BDB2: A2 0C     LDX #$0C
C - - - - - 0x00BDC4 02:BDB4: D0 B4     BNE bra_BD6A
bra_BDB6:
C - - - - - 0x00BDC6 02:BDB6: EE 6D 00  INC a: ram_006D
C - - - - - 0x00BDC9 02:BDB9: 20 D4 BE  JSR sub_BED4
C - - - - - 0x00BDCC 02:BDBC: 20 59 C0  JSR sub_0x01C069
C - - - - - 0x00BDCF 02:BDBF: 60        RTS



ofs_013_BDC0_04:
C - - J - - 0x00BDD0 02:BDC0: 20 66 BA  JSR sub_BA66
C - - - - - 0x00BDD3 02:BDC3: A5 7C     LDA ram_007C
C - - - - - 0x00BDD5 02:BDC5: 85 74     STA ram_номер_анимации
C - - - - - 0x00BDD7 02:BDC7: AD 1C 03  LDA ram_031C
C - - - - - 0x00BDDA 02:BDCA: 8D 14 03  STA ram_игрок_X_lo
C - - - - - 0x00BDDD 02:BDCD: AD 55 03  LDA ram_0355
C - - - - - 0x00BDE0 02:BDD0: 8D 4D 03  STA ram_игрок_Y_lo
C - - - - - 0x00BDE3 02:BDD3: AD 8E 03  LDA ram_038E
C - - - - - 0x00BDE6 02:BDD6: 8D 86 03  STA ram_игрок_Z_lo
C - - - - - 0x00BDE9 02:BDD9: AD 8E 04  LDA ram_048E
C - - - - - 0x00BDEC 02:BDDC: 8D 86 04  STA ram_игрок_состояние
C - - - - - 0x00BDEF 02:BDDF: A5 7D     LDA ram_007D
C - - - - - 0x00BDF1 02:BDE1: 85 75     STA ram_номер_анимации + $01
C - - - - - 0x00BDF3 02:BDE3: AD 1D 03  LDA ram_031D
C - - - - - 0x00BDF6 02:BDE6: 8D 15 03  STA ram_игрок_X_lo + $01
C - - - - - 0x00BDF9 02:BDE9: AD 56 03  LDA ram_0356
C - - - - - 0x00BDFC 02:BDEC: 8D 4E 03  STA ram_игрок_Y_lo + $01
C - - - - - 0x00BDFF 02:BDEF: AD 8F 03  LDA ram_038F
C - - - - - 0x00BE02 02:BDF2: 8D 87 03  STA ram_игрок_Z_lo + $01
C - - - - - 0x00BE05 02:BDF5: A5 7E     LDA ram_007E
C - - - - - 0x00BE07 02:BDF7: 85 80     STA ram_номер_анимации_мяча
C - - - - - 0x00BE09 02:BDF9: AD 1E 03  LDA ram_игрок_X_lo + con_gk_id
C - - - - - 0x00BE0C 02:BDFC: 8D 20 03  STA ram_мяч_X_lo
C - - - - - 0x00BE0F 02:BDFF: AD 57 03  LDA ram_0357
C - - - - - 0x00BE12 02:BE02: 8D 59 03  STA ram_мяч_Y_lo
C - - - - - 0x00BE15 02:BE05: AD 90 03  LDA ram_0390
C - - - - - 0x00BE18 02:BE08: 8D 92 03  STA ram_мяч_Z_lo
C - - - - - 0x00BE1B 02:BE0B: A9 00     LDA #$00
C - - - - - 0x00BE1D 02:BE0D: 8D 27 03  STA ram_игрок_X_hi
C - - - - - 0x00BE20 02:BE10: 8D 28 03  STA ram_игрок_X_hi + $01
C - - - - - 0x00BE23 02:BE13: 8D 33 03  STA ram_мяч_X_hi
C - - - - - 0x00BE26 02:BE16: 8D A5 03  STA ram_мяч_Z_hi
C - - - - - 0x00BE29 02:BE19: A9 1D     LDA #$1D
C - - - - - 0x00BE2B 02:BE1B: 8D AE 05  STA ram_номер_палитры_спрайтов
C - - - - - 0x00BE2E 02:BE1E: A9 2B     LDA #$2B
C - - - - - 0x00BE30 02:BE20: 8D AF 05  STA ram_номер_палитры_спрайтов + $01
C - - - - - 0x00BE33 02:BE23: 8D B0 05  STA ram_номер_палитры_спрайтов + $02
C - - - - - 0x00BE36 02:BE26: 8D B1 05  STA ram_номер_палитры_спрайтов + $03
C - - - - - 0x00BE39 02:BE29: 20 C8 BE  JSR sub_BEC8
C - - - - - 0x00BE3C 02:BE2C: A9 24     LDA #$24
C - - - - - 0x00BE3E 02:BE2E: 20 68 C0  JSR sub_0x01C078
C - - - - - 0x00BE41 02:BE31: A9 00     LDA #$00
C - - - - - 0x00BE43 02:BE33: 20 BF BE  JSR sub_BEBF
C - - - - - 0x00BE46 02:BE36: EE 8A 05  INC ram_таймер_демо_hi
C - - - - - 0x00BE49 02:BE39: EE 8A 05  INC ram_таймер_демо_hi
C - - - - - 0x00BE4C 02:BE3C: 20 59 C0  JSR sub_0x01C069
bra_BE3F:
C - - - - - 0x00BE4F 02:BE3F: E6 59     INC ram_подтип_экрана
bra_BE41_RTS:
C - - - - - 0x00BE51 02:BE41: 60        RTS



ofs_013_BE42_05:
C - - J - - 0x00BE52 02:BE42: 20 C8 BE  JSR sub_BEC8
C - - - - - 0x00BE55 02:BE45: 20 5C C0  JSR sub_0x01C06C
C - - - - - 0x00BE58 02:BE48: 20 7C AE  JSR sub_AE7C
C - - - - - 0x00BE5B 02:BE4B: 50 F4     BVC bra_BE41_RTS
C - - - - - 0x00BE5D 02:BE4D: A9 01     LDA #$01
C - - - - - 0x00BE5F 02:BE4F: 20 BF BE  JSR sub_BEBF
C - - - - - 0x00BE62 02:BE52: A9 00     LDA #$00
C - - - - - 0x00BE64 02:BE54: 8D 8C 05  STA ram_058C
C - - - - - 0x00BE67 02:BE57: F0 E6     BEQ bra_BE3F



ofs_013_BE59_06:
C - - J - - 0x00BE69 02:BE59: 20 C8 BE  JSR sub_BEC8
C - - - - - 0x00BE6C 02:BE5C: 20 9B BE  JSR sub_BE9B
C - - - - - 0x00BE6F 02:BE5F: 90 E0     BCC bra_BE41_RTS
C - - - - - 0x00BE71 02:BE61: AD 1F 06  LDA ram_061F
C - - - - - 0x00BE74 02:BE64: 18        CLC
C - - - - - 0x00BE75 02:BE65: 69 36     ADC #$36
C - - - - - 0x00BE77 02:BE67: 8D 06 06  STA ram_0606
C - - - - - 0x00BE7A 02:BE6A: A9 80     LDA #$80
C - - - - - 0x00BE7C 02:BE6C: 8D 04 06  STA ram_0604
C - - - - - 0x00BE7F 02:BE6F: A9 02     LDA #$02
C - - - - - 0x00BE81 02:BE71: 8D E6 05  STA ram_05E6
C - - - - - 0x00BE84 02:BE74: D0 C9     BNE bra_BE3F



ofs_013_BE76_07:
C - - J - - 0x00BE86 02:BE76: 20 71 C0  JSR sub_0x01C081
C - - - - - 0x00BE89 02:BE79: 20 C8 BE  JSR sub_BEC8
C - - - - - 0x00BE8C 02:BE7C: AD 05 06  LDA ram_0605
C - - - - - 0x00BE8F 02:BE7F: 30 13     BMI bra_BE94_RTS
C - - - - - 0x00BE91 02:BE81: 20 44 C0  JSR sub_0x01C054
C - - - - - 0x00BE94 02:BE84: 20 4A C0  JSR sub_0x01C05A
C - - - - - 0x00BE97 02:BE87: 20 3D AE  JSR sub_AE3D
C - - - - - 0x00BE9A 02:BE8A: A9 00     LDA #$00
C - - - - - 0x00BE9C 02:BE8C: 8D E6 05  STA ram_05E6
C - - - - - 0x00BE9F 02:BE8F: 8D 92 03  STA ram_мяч_Z_lo
C - - - - - 0x00BEA2 02:BE92: E6 59     INC ram_подтип_экрана
bra_BE94_RTS:
C - - - - - 0x00BEA4 02:BE94: 60        RTS



ofs_013_BE95_0A:
C - - J - - 0x00BEA5 02:BE95: A2 0C     LDX #$0C
C - - - - - 0x00BEA7 02:BE97: 20 65 C0  JSR sub_0x01C075
C - - - - - 0x00BEAA 02:BE9A: 60        RTS



sub_BE9B:
C - - - - - 0x00BEAB 02:BE9B: 20 7C AE  JSR sub_AE7C
C - - - - - 0x00BEAE 02:BE9E: 18        CLC
C - - - - - 0x00BEAF 02:BE9F: 50 1D     BVC bra_BEBE_RTS
C - - - - - 0x00BEB1 02:BEA1: EE 8C 05  INC ram_058C
C - - - - - 0x00BEB4 02:BEA4: AD 8C 05  LDA ram_058C
C - - - - - 0x00BEB7 02:BEA7: C9 04     CMP #$04
C - - - - - 0x00BEB9 02:BEA9: B0 13     BCS bra_BEBE_RTS
C - - - - - 0x00BEBB 02:BEAB: A9 40     LDA #$40
C - - - - - 0x00BEBD 02:BEAD: 20 BF BE  JSR sub_BEBF
C - - - - - 0x00BEC0 02:BEB0: A9 4C     LDA #$4C
C - - - - - 0x00BEC2 02:BEB2: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x00BEC5 02:BEB5: 18        CLC
C - - - - - 0x00BEC6 02:BEB6: 90 06     BCC bra_BEBE_RTS
- - - - - - 0x00BEC8 02:BEB8: A9 4E     LDA #$4E
- - - - - - 0x00BECA 02:BEBA: 20 02 C0  JSR sub_0x01C012
- - - - - - 0x00BECD 02:BEBD: 38        SEC
bra_BEBE_RTS:
C - - - - - 0x00BECE 02:BEBE: 60        RTS



sub_BEBF:
C - - - - - 0x00BECF 02:BEBF: 8D 89 05  STA ram_таймер_демо_lo
C - - - - - 0x00BED2 02:BEC2: A9 01     LDA #$01
C - - - - - 0x00BED4 02:BEC4: 8D 8A 05  STA ram_таймер_демо_hi
C - - - - - 0x00BED7 02:BEC7: 60        RTS



sub_BEC8:
C - - - - - 0x00BED8 02:BEC8: A9 FF     LDA #$FF
C - - - - - 0x00BEDA 02:BECA: A2 02     LDX #$02
bra_BECC:
C - - - - - 0x00BEDC 02:BECC: 9D 99 03  STA ram_игрок_Z_hi,X
C - - - - - 0x00BEDF 02:BECF: E8        INX
C - - - - - 0x00BEE0 02:BED0: E0 0C     CPX #$0C
C - - - - - 0x00BEE2 02:BED2: 90 F8     BCC bra_BECC
sub_BED4:
C - - - - - 0x00BEE4 02:BED4: A9 FF     LDA #$FF
C - - - - - 0x00BEE6 02:BED6: 8D 0E 05  STA ram_флаг_прозрачного_мяча
C - - - - - 0x00BEE9 02:BED9: A2 00     LDX #$00
bra_BEDB:
C - - - - - 0x00BEEB 02:BEDB: BD 99 03  LDA ram_игрок_Z_hi,X
C - - - - - 0x00BEEE 02:BEDE: D0 03     BNE bra_BEE3
C - - - - - 0x00BEF0 02:BEE0: 20 65 C0  JSR sub_0x01C075
bra_BEE3:
C - - - - - 0x00BEF3 02:BEE3: E8        INX
C - - - - - 0x00BEF4 02:BEE4: E0 0D     CPX #$0D
C - - - - - 0x00BEF6 02:BEE6: 90 F3     BCC bra_BEDB
C - - - - - 0x00BEF8 02:BEE8: 20 1B AA  JSR sub_AA1B
C - - - - - 0x00BEFB 02:BEEB: 60        RTS



tbl_BEEC:
- D 1 - - - 0x00BEFC 02:BEEC: FA BE     .word off_BEFA_00
- D 1 - - - 0x00BEFE 02:BEEE: 0F BF     .word off_BF0F_01
- D 1 - - - 0x00BF00 02:BEF0: 28 BF     .word off_BF28_02
- D 1 - - - 0x00BF02 02:BEF2: 41 BF     .word off_BF41_03
- D 1 - - - 0x00BF04 02:BEF4: 5A BF     .word off_BF5A_04
- D 1 - - - 0x00BF06 02:BEF6: 77 BF     .word off_BF77_05
- D 1 - - - 0x00BF08 02:BEF8: 90 BF     .word off_BF90_06



off_BEFA_00:
- D 1 - I - 0x00BF0A 02:BEFA: C8        .byte $C8   ; 
- D 1 - I - 0x00BF0B 02:BEFB: 14        .byte $14   ; 
- D 1 - I - 0x00BF0C 02:BEFC: 09        .byte $09   ; 
- D 1 - I - 0x00BF0D 02:BEFD: 2C        .byte $2C   ; 
- D 1 - I - 0x00BF0E 02:BEFE: 2C        .byte $2C   ; 
- D 1 - I - 0x00BF0F 02:BEFF: 9B        .byte $9B   ; 
- D 1 - I - 0x00BF10 02:BF00: 50        .byte $50   ; 
- D 1 - I - 0x00BF11 02:BF01: 80        .byte $80   ; 
- D 1 - I - 0x00BF12 02:BF02: 18        .byte $18   ; 
- D 1 - I - 0x00BF13 02:BF03: 00        .byte $00   ; 
- D 1 - I - 0x00BF14 02:BF04: A9        .byte $A9   ; 
- D 1 - I - 0x00BF15 02:BF05: 90        .byte $90   ; 
- D 1 - I - 0x00BF16 02:BF06: 90        .byte $90   ; 
- D 1 - I - 0x00BF17 02:BF07: 18        .byte $18   ; 
- D 1 - I - 0x00BF18 02:BF08: 00        .byte $00   ; 
- D 1 - I - 0x00BF19 02:BF09: FF        .byte $FF   ; 
- D 1 - I - 0x00BF1A 02:BF0A: FF        .byte $FF   ; 
- D 1 - I - 0x00BF1B 02:BF0B: 00        .byte $00   ; 
- D 1 - I - 0x00BF1C 02:BF0C: 78        .byte $78   ; 
- D 1 - I - 0x00BF1D 02:BF0D: 88        .byte $88   ; 
- D 1 - I - 0x00BF1E 02:BF0E: 38        .byte $38   ; 



off_BF0F_01:
- D 1 - I - 0x00BF1F 02:BF0F: C6        .byte $C6   ; 
- D 1 - I - 0x00BF20 02:BF10: 19        .byte $19   ; 
- D 1 - I - 0x00BF21 02:BF11: 09        .byte $09   ; 
- D 1 - I - 0x00BF22 02:BF12: 2E        .byte $2E   ; 
- D 1 - I - 0x00BF23 02:BF13: 2F        .byte $2F   ; 
- D 1 - I - 0x00BF24 02:BF14: 15        .byte $15   ; 
- D 1 - I - 0x00BF25 02:BF15: 60        .byte $60   ; 
- D 1 - I - 0x00BF26 02:BF16: 9C        .byte $9C   ; 
- D 1 - I - 0x00BF27 02:BF17: 00        .byte $00   ; 
- D 1 - I - 0x00BF28 02:BF18: 00        .byte $00   ; 
- D 1 - I - 0x00BF29 02:BF19: B7        .byte $B7   ; 
- D 1 - I - 0x00BF2A 02:BF1A: A8        .byte $A8   ; 
- D 1 - I - 0x00BF2B 02:BF1B: 80        .byte $80   ; 
- D 1 - I - 0x00BF2C 02:BF1C: 00        .byte $00   ; 
- D 1 - I - 0x00BF2D 02:BF1D: 14        .byte $14   ; 
- D 1 - I - 0x00BF2E 02:BF1E: FF        .byte $FF   ; 
- D 1 - I - 0x00BF2F 02:BF1F: 80        .byte $80   ; 
- D 1 - I - 0x00BF30 02:BF20: A8        .byte $A8   ; 
- D 1 - I - 0x00BF31 02:BF21: 60        .byte $60   ; 
- D 1 - I - 0x00BF32 02:BF22: 00        .byte $00   ; 
- D 1 - I - 0x00BF33 02:BF23: 12        .byte $12   ; 
- D 1 - I - 0x00BF34 02:BF24: 00        .byte $00   ; 
- D 1 - I - 0x00BF35 02:BF25: 7C        .byte $7C   ; 
- D 1 - I - 0x00BF36 02:BF26: 78        .byte $78   ; 
- D 1 - I - 0x00BF37 02:BF27: 20        .byte $20   ; 



off_BF28_02:
- D 1 - I - 0x00BF38 02:BF28: F8        .byte $F8   ; 
- D 1 - I - 0x00BF39 02:BF29: 16        .byte $16   ; 
- D 1 - I - 0x00BF3A 02:BF2A: 09        .byte $09   ; 
- D 1 - I - 0x00BF3B 02:BF2B: 34        .byte $34   ; 
- D 1 - I - 0x00BF3C 02:BF2C: 2D        .byte $2D   ; 
- D 1 - I - 0x00BF3D 02:BF2D: 0F        .byte $0F   ; 
- D 1 - I - 0x00BF3E 02:BF2E: 60        .byte $60   ; 
- D 1 - I - 0x00BF3F 02:BF2F: 98        .byte $98   ; 
- D 1 - I - 0x00BF40 02:BF30: 08        .byte $08   ; 
- D 1 - I - 0x00BF41 02:BF31: 00        .byte $00   ; 
- D 1 - I - 0x00BF42 02:BF32: 98        .byte $98   ; 
- D 1 - I - 0x00BF43 02:BF33: 58        .byte $58   ; 
- D 1 - I - 0x00BF44 02:BF34: 68        .byte $68   ; 
- D 1 - I - 0x00BF45 02:BF35: 08        .byte $08   ; 
- D 1 - I - 0x00BF46 02:BF36: 12        .byte $12   ; 
- D 1 - I - 0x00BF47 02:BF37: FF        .byte $FF   ; 
- D 1 - I - 0x00BF48 02:BF38: 81        .byte $81   ; 
- D 1 - I - 0x00BF49 02:BF39: A8        .byte $A8   ; 
- D 1 - I - 0x00BF4A 02:BF3A: 78        .byte $78   ; 
- D 1 - I - 0x00BF4B 02:BF3B: 00        .byte $00   ; 
- D 1 - I - 0x00BF4C 02:BF3C: 14        .byte $14   ; 
- D 1 - I - 0x00BF4D 02:BF3D: 00        .byte $00   ; 
- D 1 - I - 0x00BF4E 02:BF3E: 80        .byte $80   ; 
- D 1 - I - 0x00BF4F 02:BF3F: 80        .byte $80   ; 
- D 1 - I - 0x00BF50 02:BF40: 10        .byte $10   ; 



off_BF41_03:
- D 1 - I - 0x00BF51 02:BF41: C8        .byte $C8   ; 
- D 1 - I - 0x00BF52 02:BF42: 1D        .byte $1D   ; 
- D 1 - I - 0x00BF53 02:BF43: 0C        .byte $0C   ; 
- D 1 - I - 0x00BF54 02:BF44: 30        .byte $30   ; 
- D 1 - I - 0x00BF55 02:BF45: 31        .byte $31   ; 
- D 1 - I - 0x00BF56 02:BF46: 12        .byte $12   ; 
- D 1 - I - 0x00BF57 02:BF47: 54        .byte $54   ; 
- D 1 - I - 0x00BF58 02:BF48: 94        .byte $94   ; 
- D 1 - I - 0x00BF59 02:BF49: 08        .byte $08   ; 
- D 1 - I - 0x00BF5A 02:BF4A: 00        .byte $00   ; 
- D 1 - I - 0x00BF5B 02:BF4B: 8B        .byte $8B   ; 
- D 1 - I - 0x00BF5C 02:BF4C: B0        .byte $B0   ; 
- D 1 - I - 0x00BF5D 02:BF4D: 74        .byte $74   ; 
- D 1 - I - 0x00BF5E 02:BF4E: 10        .byte $10   ; 
- D 1 - I - 0x00BF5F 02:BF4F: 12        .byte $12   ; 
- D 1 - I - 0x00BF60 02:BF50: FF        .byte $FF   ; 
- D 1 - I - 0x00BF61 02:BF51: 81        .byte $81   ; 
- D 1 - I - 0x00BF62 02:BF52: 98        .byte $98   ; 
- D 1 - I - 0x00BF63 02:BF53: 98        .byte $98   ; 
- D 1 - I - 0x00BF64 02:BF54: 00        .byte $00   ; 
- D 1 - I - 0x00BF65 02:BF55: 15        .byte $15   ; 
- D 1 - I - 0x00BF66 02:BF56: A0        .byte $A0   ; 
- D 1 - I - 0x00BF67 02:BF57: 80        .byte $80   ; 
- D 1 - I - 0x00BF68 02:BF58: 80        .byte $80   ; 
- D 1 - I - 0x00BF69 02:BF59: 20        .byte $20   ; 



off_BF5A_04:
- D 1 - I - 0x00BF6A 02:BF5A: 2C        .byte $2C   ; 
- D 1 - I - 0x00BF6B 02:BF5B: 1F        .byte $1F   ; 
- D 1 - I - 0x00BF6C 02:BF5C: 0A        .byte $0A   ; 
- D 1 - I - 0x00BF6D 02:BF5D: 2E        .byte $2E   ; 
- D 1 - I - 0x00BF6E 02:BF5E: 35        .byte $35   ; 
- D 1 - I - 0x00BF6F 02:BF5F: 88        .byte $88   ; 
- D 1 - I - 0x00BF70 02:BF60: A8        .byte $A8   ; 
- D 1 - I - 0x00BF71 02:BF61: 98        .byte $98   ; 
- D 1 - I - 0x00BF72 02:BF62: 00        .byte $00   ; 
- D 1 - I - 0x00BF73 02:BF63: 00        .byte $00   ; 
- D 1 - I - 0x00BF74 02:BF64: A4        .byte $A4   ; 
- D 1 - I - 0x00BF75 02:BF65: A4        .byte $A4   ; 
- D 1 - I - 0x00BF76 02:BF66: 70        .byte $70   ; 
- D 1 - I - 0x00BF77 02:BF67: 08        .byte $08   ; 
- D 1 - I - 0x00BF78 02:BF68: 12        .byte $12   ; 
- D 1 - I - 0x00BF79 02:BF69: 89        .byte $89   ; 
- D 1 - I - 0x00BF7A 02:BF6A: 68        .byte $68   ; 
- D 1 - I - 0x00BF7B 02:BF6B: 90        .byte $90   ; 
- D 1 - I - 0x00BF7C 02:BF6C: 00        .byte $00   ; 
- D 1 - I - 0x00BF7D 02:BF6D: 03        .byte $03   ; 
- D 1 - I - 0x00BF7E 02:BF6E: 0B        .byte $0B   ; 
- D 1 - I - 0x00BF7F 02:BF6F: 50        .byte $50   ; 
- D 1 - I - 0x00BF80 02:BF70: 88        .byte $88   ; 
- D 1 - I - 0x00BF81 02:BF71: 10        .byte $10   ; 
- D 1 - I - 0x00BF82 02:BF72: 14        .byte $14   ; 
- D 1 - I - 0x00BF83 02:BF73: 07        .byte $07   ; 
- D 1 - I - 0x00BF84 02:BF74: 8C        .byte $8C   ; 
- D 1 - I - 0x00BF85 02:BF75: 80        .byte $80   ; 
- D 1 - I - 0x00BF86 02:BF76: 10        .byte $10   ; 



off_BF77_05:
- D 1 - I - 0x00BF87 02:BF77: C8        .byte $C8   ; 
- D 1 - I - 0x00BF88 02:BF78: 1A        .byte $1A   ; 
- D 1 - I - 0x00BF89 02:BF79: 09        .byte $09   ; 
- D 1 - I - 0x00BF8A 02:BF7A: 32        .byte $32   ; 
- D 1 - I - 0x00BF8B 02:BF7B: 33        .byte $33   ; 
- D 1 - I - 0x00BF8C 02:BF7C: 22        .byte $22   ; 
- D 1 - I - 0x00BF8D 02:BF7D: 58        .byte $58   ; 
- D 1 - I - 0x00BF8E 02:BF7E: 90        .byte $90   ; 
- D 1 - I - 0x00BF8F 02:BF7F: 00        .byte $00   ; 
- D 1 - I - 0x00BF90 02:BF80: 00        .byte $00   ; 
- D 1 - I - 0x00BF91 02:BF81: 8E        .byte $8E   ; 
- D 1 - I - 0x00BF92 02:BF82: B0        .byte $B0   ; 
- D 1 - I - 0x00BF93 02:BF83: 74        .byte $74   ; 
- D 1 - I - 0x00BF94 02:BF84: 00        .byte $00   ; 
- D 1 - I - 0x00BF95 02:BF85: 16        .byte $16   ; 
- D 1 - I - 0x00BF96 02:BF86: 0F        .byte $0F   ; 
- D 1 - I - 0x00BF97 02:BF87: 80        .byte $80   ; 
- D 1 - I - 0x00BF98 02:BF88: 74        .byte $74   ; 
- D 1 - I - 0x00BF99 02:BF89: 10        .byte $10   ; 
- D 1 - I - 0x00BF9A 02:BF8A: 00        .byte $00   ; 
- D 1 - I - 0x00BF9B 02:BF8B: FF        .byte $FF   ; 
- D 1 - I - 0x00BF9C 02:BF8C: 00        .byte $00   ; 
- D 1 - I - 0x00BF9D 02:BF8D: 94        .byte $94   ; 
- D 1 - I - 0x00BF9E 02:BF8E: 84        .byte $84   ; 
- D 1 - I - 0x00BF9F 02:BF8F: 00        .byte $00   ; 



off_BF90_06:
- D 1 - I - 0x00BFA0 02:BF90: C8        .byte $C8   ; 
- D 1 - I - 0x00BFA1 02:BF91: 1C        .byte $1C   ; 
- D 1 - I - 0x00BFA2 02:BF92: 11        .byte $11   ; 
- D 1 - I - 0x00BFA3 02:BF93: 32        .byte $32   ; 
- D 1 - I - 0x00BFA4 02:BF94: 33        .byte $33   ; 
- D 1 - I - 0x00BFA5 02:BF95: C2        .byte $C2   ; 
- D 1 - I - 0x00BFA6 02:BF96: 8C        .byte $8C   ; 
- D 1 - I - 0x00BFA7 02:BF97: 6C        .byte $6C   ; 
- D 1 - I - 0x00BFA8 02:BF98: 00        .byte $00   ; 
- D 1 - I - 0x00BFA9 02:BF99: 00        .byte $00   ; 
- D 1 - I - 0x00BFAA 02:BF9A: 43        .byte $43   ; 
- D 1 - I - 0x00BFAB 02:BF9B: 58        .byte $58   ; 
- D 1 - I - 0x00BFAC 02:BF9C: 8C        .byte $8C   ; 
- D 1 - I - 0x00BFAD 02:BF9D: 00        .byte $00   ; 
- D 1 - I - 0x00BFAE 02:BF9E: 12        .byte $12   ; 
- D 1 - I - 0x00BFAF 02:BF9F: C1        .byte $C1   ; 
- D 1 - I - 0x00BFB0 02:BFA0: A8        .byte $A8   ; 
- D 1 - I - 0x00BFB1 02:BFA1: 94        .byte $94   ; 
- D 1 - I - 0x00BFB2 02:BFA2: 00        .byte $00   ; 
- D 1 - I - 0x00BFB3 02:BFA3: 01        .byte $01   ; 


; bzk garbage начинается где-то тут
- D 1 - I - 0x00BFB4 02:BFA4: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BFC0 02:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BFD0 02:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BFE0 02:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00BFF0 02:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x00C000 02:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 02: 0x%04X [%d]", ($BFFF - *), ($BFFF - *))



.segment "BANK_02_ID"
- D 1 - - - 0x00C00F 02:BFFF: 02        .byte con_prg_bank + $02   ; 



