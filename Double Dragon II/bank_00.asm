.segment "BANK_00"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x000010-0x00400F



.export _off027_0x000010_01
.export _off027_0x00004C_02
.export _off027_0x000088_03
.export _off027_0x0000C4_04
.export _off027_0x000100_05
.export _off027_0x00013C_06
.export _off027_0x000178_07
.export _off027_0x0001B4_08
.export _off027_0x0001F0_09
.export _off027_0x00022C_0A
.export _off027_0x000268_0B
.export _off027_0x0002A4_0C
.export _off027_0x0002E0_0D
.export _off027_0x00031C_0E
.export _off027_0x00031C_30
.export _off027_0x000358_0F
.export _off027_0x000394_10
.export _off027_0x0003D0_11
.export _off027_0x00040C_13
.export _off027_0x000448_14
.export _off027_0x000484_16
.export _off027_0x0004C0_2F
.export _off027_0x0004FC_2C
.export _off027_0x000538_2D
.export _off027_0x000574_2E
.export _off028_0x000717_0A
.export _off028_0x000717_2F
.export _off028_0x000975_01
.export _off028_0x000E77_03
.export _off028_0x000EB4_02
.export _off028_0x00171D_04
.export _off028_0x00175A_05
.export _off028_0x00179A_06
.export _off028_0x001E74_08
.export _off028_0x001FD1_07
.export _off028_0x00242D_09
.export _off028_0x0027EF_0B
.export _off028_0x0028AB_0C
.export _off028_0x002A30_0D
.export _off028_0x002A93_0E
.export _off028_0x002A93_30
.export _off028_0x002C0B_0F
.export _off028_0x002F07_10
.export _off028_0x0030A8_11
.export _off028_0x0031E2_13
.export _off028_0x0035C3_14
.export _off028_0x0039D5_16
.export _off028_0x003AB2_2D
.export _off028_0x003B72_2C
.export _off028_0x003F97_2E



_off027_0x000010_01:
- D 0 - - - 0x000010 00:8000: 4D 90     .word off_904D_00
- D 0 - I - 0x000012 00:8002: A0 85     .word off_85A0_01
- D 0 - I - 0x000014 00:8004: 67 86     .word off_8667_02
- D 0 - I - 0x000016 00:8006: 47 87     .word off_8747_03
- D 0 - I - 0x000018 00:8008: 67 87     .word off_8767_04
- D 0 - I - 0x00001A 00:800A: 87 87     .word off_8787_05
- D 0 - I - 0x00001C 00:800C: EE 8F     .word off_8FEE_06
- D 0 - I - 0x00001E 00:800E: 28 94     .word off_9428_07
- D 0 - I - 0x000020 00:8010: 88 A7     .word off_A788_08
- D 0 - I - 0x000022 00:8012: C1 86     .word off_86C1_09
- D 0 - I - 0x000024 00:8014: 72 BE     .word off_BE72_0A
- D 0 - I - 0x000026 00:8016: 94 AF     .word off_AF94_0B
- D 0 - I - 0x000028 00:8018: 6A B2     .word off_B26A_0C
- D 0 - I - 0x00002A 00:801A: A5 90     .word off_90A5_0D
- D 0 - I - 0x00002C 00:801C: 39 88     .word off_8839_0E
- D 0 - I - 0x00002E 00:801E: 59 88     .word off_8859_0F
- D 0 - I - 0x000030 00:8020: C3 8A     .word off_8AC3_10
- D 0 - I - 0x000032 00:8022: 9C 8C     .word off_8C9C_11
- D 0 - I - 0x000034 00:8024: 9C 8C     .word off_8C9C_12
- D 0 - I - 0x000036 00:8026: 9C 8C     .word off_8C9C_13
- D 0 - I - 0x000038 00:8028: 0F 8C     .word off_8C0F_14
- D 0 - I - 0x00003A 00:802A: 9C 8C     .word off_8C9C_15
- D 0 - I - 0x00003C 00:802C: 23 8D     .word off_8D23_16
- D 0 - I - 0x00003E 00:802E: 0B 94     .word off_940B_17
- - - - - - 0x000040 00:8030: 4D 90     .word off_904D_18
- - - - - - 0x000042 00:8032: 4D 90     .word off_904D_19
- - - - - - 0x000044 00:8034: 4D 90     .word off_904D_1A
- - - - - - 0x000046 00:8036: 4D 90     .word off_904D_1B
- - - - - - 0x000048 00:8038: 4D 90     .word off_904D_1C
- - - - - - 0x00004A 00:803A: 4D 90     .word off_904D_1D



_off027_0x00004C_02:
- D 0 - I - 0x00004C 00:803C: 4D 90     .word off_904D_00
- D 0 - I - 0x00004E 00:803E: 1B AB     .word off_AB1B_01
- D 0 - I - 0x000050 00:8040: C1 89     .word off_89C1_02
- D 0 - I - 0x000052 00:8042: 1B 8A     .word off_8A1B_03
- D 0 - I - 0x000054 00:8044: 5A 8A     .word off_8A5A_04
- D 0 - I - 0x000056 00:8046: 99 8A     .word off_8A99_05
- D 0 - I - 0x000058 00:8048: 0D 90     .word off_900D_06
- D 0 - I - 0x00005A 00:804A: 47 94     .word off_9447_07
- D 0 - I - 0x00005C 00:804C: A7 A7     .word off_A7A7_08
- D 0 - I - 0x00005E 00:804E: DD 90     .word off_90DD_09
- D 0 - I - 0x000060 00:8050: B9 8A     .word off_8AB9_0A
- D 0 - I - 0x000062 00:8052: C5 8B     .word off_8BC5_0B
- D 0 - I - 0x000064 00:8054: FD 8B     .word off_8BFD_0C
- D 0 - I - 0x000066 00:8056: FF 86     .word off_86FF_0D
- D 0 - I - 0x000068 00:8058: 78 8C     .word off_8C78_0E
- D 0 - I - 0x00006A 00:805A: 01 8D     .word off_8D01_0F
- D 0 - I - 0x00006C 00:805C: D3 AB     .word off_ABD3_10
- D 0 - I - 0x00006E 00:805E: 9C 8C     .word off_8C9C_11
- D 0 - I - 0x000070 00:8060: 9C 8C     .word off_8C9C_12
- D 0 - I - 0x000072 00:8062: 9C 8C     .word off_8C9C_13
- D 0 - I - 0x000074 00:8064: 9C 8C     .word off_8C9C_14
- D 0 - I - 0x000076 00:8066: 9C 8C     .word off_8C9C_15
- D 0 - I - 0x000078 00:8068: 2D 8D     .word off_8D2D_16
- D 0 - I - 0x00007A 00:806A: 8D 95     .word off_958D_17
- - - - - - 0x00007C 00:806C: 4D 90     .word off_904D_18
- - - - - - 0x00007E 00:806E: 4D 90     .word off_904D_19
- - - - - - 0x000080 00:8070: 4D 90     .word off_904D_1A
- - - - - - 0x000082 00:8072: 4D 90     .word off_904D_1B
- - - - - - 0x000084 00:8074: 4D 90     .word off_904D_1C
- - - - - - 0x000086 00:8076: 4D 90     .word off_904D_1D



_off027_0x000088_03:
- D 0 - I - 0x000088 00:8078: D3 99     .word off_99D3_00
- D 0 - I - 0x00008A 00:807A: 09 B8     .word off_B809_01
- D 0 - I - 0x00008C 00:807C: FA 97     .word off_97FA_02
- D 0 - I - 0x00008E 00:807E: 89 98     .word off_9889_03
- D 0 - I - 0x000090 00:8080: FA 87     .word off_87FA_04
- D 0 - I - 0x000092 00:8082: 2D 9A     .word off_9A2D_05
- D 0 - I - 0x000094 00:8084: 86 8B     .word off_8B86_06
- D 0 - I - 0x000096 00:8086: 5F 94     .word off_945F_07
- D 0 - I - 0x000098 00:8088: BF A7     .word off_A7BF_08
- D 0 - I - 0x00009A 00:808A: F5 90     .word off_90F5_09
- D 0 - I - 0x00009C 00:808C: 48 99     .word off_9948_0A
- D 0 - I - 0x00009E 00:808E: DD 8B     .word off_8BDD_0B
- D 0 - I - 0x0000A0 00:8090: DF AF     .word off_AFDF_0C
- D 0 - I - 0x0000A2 00:8092: 97 96     .word off_9697_0D
- D 0 - I - 0x0000A4 00:8094: 5D 95     .word off_955D_0E
- D 0 - I - 0x0000A6 00:8096: 9C 8C     .word off_8C9C_0F
- D 0 - I - 0x0000A8 00:8098: 98 8C     .word off_8C98_10
- D 0 - I - 0x0000AA 00:809A: A5 8B     .word off_8BA5_11
- D 0 - I - 0x0000AC 00:809C: 96 8C     .word off_8C96_12
- D 0 - I - 0x0000AE 00:809E: 95 8C     .word off_8C95_13
- D 0 - I - 0x0000B0 00:80A0: F3 96     .word off_96F3_14
- D 0 - I - 0x0000B2 00:80A2: 0C 9E     .word off_9E0C_15
- D 0 - I - 0x0000B4 00:80A4: 80 8C     .word off_8C80_16
- D 0 - I - 0x0000B6 00:80A6: 7F 8C     .word off_8C7F_17
- - - - - - 0x0000B8 00:80A8: 4D 90     .word off_904D_18
- - - - - - 0x0000BA 00:80AA: 4D 90     .word off_904D_19
- - - - - - 0x0000BC 00:80AC: 4D 90     .word off_904D_1A
- - - - - - 0x0000BE 00:80AE: 4D 90     .word off_904D_1B
- - - - - - 0x0000C0 00:80B0: 4D 90     .word off_904D_1C
- - - - - - 0x0000C2 00:80B2: 4D 90     .word off_904D_1D



_off027_0x0000C4_04:
- D 0 - I - 0x0000C4 00:80B4: E5 95     .word off_95E5_00
- D 0 - I - 0x0000C6 00:80B6: 15 91     .word off_9115_01
- D 0 - I - 0x0000C8 00:80B8: 12 99     .word off_9912_02
- D 0 - I - 0x0000CA 00:80BA: 12 99     .word off_9912_03
- D 0 - I - 0x0000CC 00:80BC: 12 99     .word off_9912_04
- D 0 - I - 0x0000CE 00:80BE: 2B 8B     .word off_8B2B_05
- D 0 - I - 0x0000D0 00:80C0: 7D 91     .word off_917D_06
- D 0 - I - 0x0000D2 00:80C2: 50 9D     .word off_9D50_07
- D 0 - I - 0x0000D4 00:80C4: 13 93     .word off_9313_08
- D 0 - I - 0x0000D6 00:80C6: 88 93     .word off_9388_09
- D 0 - I - 0x0000D8 00:80C8: 88 93     .word off_9388_0A
- D 0 - I - 0x0000DA 00:80CA: 88 93     .word off_9388_0B
- D 0 - I - 0x0000DC 00:80CC: 88 93     .word off_9388_0C
- D 0 - I - 0x0000DE 00:80CE: 7F 94     .word off_947F_0D
- D 0 - I - 0x0000E0 00:80D0: CB 8A     .word off_8ACB_0E
- D 0 - I - 0x0000E2 00:80D2: A4 8C     .word off_8CA4_0F
- D 0 - I - 0x0000E4 00:80D4: A3 8C     .word off_8CA3_10
- D 0 - I - 0x0000E6 00:80D6: 16 8C     .word off_8C16_11
- D 0 - I - 0x0000E8 00:80D8: A1 8C     .word off_8CA1_12
- D 0 - I - 0x0000EA 00:80DA: A0 8C     .word off_8CA0_13
- D 0 - I - 0x0000EC 00:80DC: 9F 8C     .word off_8C9F_14
- D 0 - I - 0x0000EE 00:80DE: 9E 8C     .word off_8C9E_15
- D 0 - I - 0x0000F0 00:80E0: 9D 8C     .word off_8C9D_16
- D 0 - I - 0x0000F2 00:80E2: E7 AB     .word off_ABE7_17
- - - - - - 0x0000F4 00:80E4: 4D 90     .word off_904D_18
- - - - - - 0x0000F6 00:80E6: 4D 90     .word off_904D_19
- - - - - - 0x0000F8 00:80E8: 4D 90     .word off_904D_1A
- - - - - - 0x0000FA 00:80EA: 4D 90     .word off_904D_1B
- - - - - - 0x0000FC 00:80EC: 4D 90     .word off_904D_1C
- - - - - - 0x0000FE 00:80EE: 4D 90     .word off_904D_1D



_off027_0x000100_05:
- - - - - - 0x000100 00:80F0: 4D 90     .word off_904D_00
- D 0 - I - 0x000102 00:80F2: EB 8D     .word off_8DEB_01
- D 0 - I - 0x000104 00:80F4: 33 BC     .word off_BC33_02
- D 0 - I - 0x000106 00:80F6: 54 BE     .word off_BE54_03
- D 0 - I - 0x000108 00:80F8: 83 B7     .word off_B783_04
- D 0 - I - 0x00010A 00:80FA: 9F 8D     .word off_8D9F_05
- D 0 - I - 0x00010C 00:80FC: E8 94     .word off_94E8_06
- D 0 - I - 0x00010E 00:80FE: B8 8F     .word off_8FB8_07
- D 0 - I - 0x000110 00:8100: 5D 92     .word off_925D_08
- D 0 - I - 0x000112 00:8102: BC 9C     .word off_9CBC_09
- D 0 - I - 0x000114 00:8104: C3 8C     .word off_8CC3_0A
- D 0 - I - 0x000116 00:8106: 20 A0     .word off_A020_0B
- D 0 - I - 0x000118 00:8108: 30 99     .word off_9930_0C
- D 0 - I - 0x00011A 00:810A: 48 95     .word off_9548_0D
- D 0 - I - 0x00011C 00:810C: DC 93     .word off_93DC_0E
- D 0 - I - 0x00011E 00:810E: 81 96     .word off_9681_0F
- D 0 - I - 0x000120 00:8110: 42 9C     .word off_9C42_10
- D 0 - I - 0x000122 00:8112: 27 B7     .word off_B727_11
- D 0 - I - 0x000124 00:8114: 1D A8     .word off_A81D_12
- D 0 - I - 0x000126 00:8116: A1 87     .word off_87A1_13
- D 0 - I - 0x000128 00:8118: 9C B7     .word off_B79C_14
- D 0 - I - 0x00012A 00:811A: 49 93     .word off_9349_15
- D 0 - I - 0x00012C 00:811C: C6 95     .word off_95C6_16
- D 0 - I - 0x00012E 00:811E: D8 8E     .word off_8ED8_17
- D 0 - I - 0x000130 00:8120: 24 96     .word off_9624_18
- D 0 - I - 0x000132 00:8122: B2 9D     .word off_9DB2_19
- D 0 - I - 0x000134 00:8124: D9 A8     .word off_A8D9_1A
- D 0 - I - 0x000136 00:8126: 58 8C     .word off_8C58_1B
- D 0 - I - 0x000138 00:8128: F8 8A     .word off_8AF8_1C
- D 0 - I - 0x00013A 00:812A: 63 96     .word off_9663_1D



_off027_0x00013C_06:
- - - - - - 0x00013C 00:812C: 4D 90     .word off_904D_00
- D 0 - I - 0x00013E 00:812E: A6 95     .word off_95A6_01
- D 0 - I - 0x000140 00:8130: 28 9E     .word off_9E28_02
- D 0 - I - 0x000142 00:8132: B7 96     .word off_96B7_03
- D 0 - I - 0x000144 00:8134: A1 89     .word off_89A1_04
- D 0 - I - 0x000146 00:8136: BD 8D     .word off_8DBD_05
- D 0 - I - 0x000148 00:8138: 06 95     .word off_9506_06
- D 0 - I - 0x00014A 00:813A: E1 8C     .word off_8CE1_07
- D 0 - I - 0x00014C 00:813C: 7B 92     .word off_927B_08
- D 0 - I - 0x00014E 00:813E: DA 9C     .word off_9CDA_09
- D 0 - I - 0x000150 00:8140: 3E A0     .word off_A03E_0A
- D 0 - I - 0x000152 00:8142: D6 8F     .word off_8FD6_0B
- D 0 - I - 0x000154 00:8144: 75 95     .word off_9575_0C
- D 0 - I - 0x000156 00:8146: 0A 8D     .word off_8D0A_0D
- D 0 - I - 0x000158 00:8148: F2 93     .word off_93F2_0E
- D 0 - I - 0x00015A 00:814A: E1 AB     .word off_ABE1_0F
- D 0 - I - 0x00015C 00:814C: 56 9C     .word off_9C56_10
- D 0 - I - 0x00015E 00:814E: 3B B7     .word off_B73B_11
- D 0 - I - 0x000160 00:8150: 10 8B     .word off_8B10_12
- D 0 - I - 0x000162 00:8152: 86 9A     .word off_9A86_13
- D 0 - I - 0x000164 00:8154: D7 96     .word off_96D7_14
- D 0 - I - 0x000166 00:8156: FE AA     .word off_AAFE_15
- D 0 - I - 0x000168 00:8158: 81 8D     .word off_8D81_16
- D 0 - I - 0x00016A 00:815A: B5 92     .word off_92B5_17
- D 0 - I - 0x00016C 00:815C: 34 9D     .word off_9D34_18
- D 0 - I - 0x00016E 00:815E: 78 AB     .word off_AB78_19
- D 0 - I - 0x000170 00:8160: 64 9C     .word off_9C64_1A
- D 0 - I - 0x000172 00:8162: 49 B7     .word off_B749_1B
- D 0 - I - 0x000174 00:8164: 2F A8     .word off_A82F_1C
- D 0 - I - 0x000176 00:8166: 33 8F     .word off_8F33_1D



_off027_0x000178_07:
- D 0 - I - 0x000178 00:8168: A3 99     .word off_99A3_00
- D 0 - I - 0x00017A 00:816A: D9 B7     .word off_B7D9_01
- D 0 - I - 0x00017C 00:816C: CA 97     .word off_97CA_02
- D 0 - I - 0x00017E 00:816E: 1A 98     .word off_981A_03
- D 0 - I - 0x000180 00:8170: 59 98     .word off_9859_04
- D 0 - I - 0x000182 00:8172: A9 98     .word off_98A9_05
- D 0 - I - 0x000184 00:8174: DD 98     .word off_98DD_06
- D 0 - I - 0x000186 00:8176: C0 87     .word off_87C0_07
- D 0 - I - 0x000188 00:8178: F7 8E     .word off_8EF7_08
- D 0 - I - 0x00018A 00:817A: 68 99     .word off_9968_09
- D 0 - I - 0x00018C 00:817C: F3 99     .word off_99F3_0A
- D 0 - I - 0x00018E 00:817E: 4D 9A     .word off_9A4D_0B
- D 0 - I - 0x000190 00:8180: E4 9A     .word off_9AE4_0C
- D 0 - I - 0x000192 00:8182: 76 9B     .word off_9B76_0D
- D 0 - I - 0x000194 00:8184: 06 9C     .word off_9C06_0E
- D 0 - I - 0x000196 00:8186: E8 91     .word off_91E8_0F
- D 0 - I - 0x000198 00:8188: 25 92     .word off_9225_10
- D 0 - I - 0x00019A 00:818A: 84 9C     .word off_9C84_11
- D 0 - I - 0x00019C 00:818C: FA 9C     .word off_9CFA_12
- D 0 - I - 0x00019E 00:818E: F1 9D     .word off_9DF1_13
- D 0 - I - 0x0001A0 00:8190: 48 9E     .word off_9E48_14
- D 0 - I - 0x0001A2 00:8192: A4 9E     .word off_9EA4_15
- D 0 - I - 0x0001A4 00:8194: C4 9E     .word off_9EC4_16
- D 0 - I - 0x0001A6 00:8196: 68 93     .word off_9368_17
- D 0 - I - 0x0001A8 00:8198: BB B7     .word off_B7BB_18
- D 0 - I - 0x0001AA 00:819A: 41 9F     .word off_9F41_19
- D 0 - I - 0x0001AC 00:819C: 61 9F     .word off_9F61_1A
- D 0 - I - 0x0001AE 00:819E: 61 9F     .word off_9F61_1B
- D 0 - I - 0x0001B0 00:81A0: 81 9F     .word off_9F81_1C
- D 0 - I - 0x0001B2 00:81A2: A1 9F     .word off_9FA1_1D



_off027_0x0001B4_08:
- D 0 - I - 0x0001B4 00:81A4: B7 99     .word off_99B7_00
- D 0 - I - 0x0001B6 00:81A6: ED B7     .word off_B7ED_01
- D 0 - I - 0x0001B8 00:81A8: DE 97     .word off_97DE_02
- D 0 - I - 0x0001BA 00:81AA: DE 97     .word off_97DE_03
- D 0 - I - 0x0001BC 00:81AC: 6D 98     .word off_986D_04
- D 0 - I - 0x0001BE 00:81AE: BD 98     .word off_98BD_05
- D 0 - I - 0x0001C0 00:81B0: DE 87     .word off_87DE_06
- D 0 - I - 0x0001C2 00:81B2: 15 8F     .word off_8F15_07
- D 0 - I - 0x0001C4 00:81B4: 86 99     .word off_9986_08
- D 0 - I - 0x0001C6 00:81B6: 11 9A     .word off_9A11_09
- D 0 - I - 0x0001C8 00:81B8: 6B 9A     .word off_9A6B_0A
- D 0 - I - 0x0001CA 00:81BA: 02 9B     .word off_9B02_0B
- D 0 - I - 0x0001CC 00:81BC: 94 9B     .word off_9B94_0C
- D 0 - I - 0x0001CE 00:81BE: 24 9C     .word off_9C24_0D
- D 0 - I - 0x0001D0 00:81C0: 06 92     .word off_9206_0E
- D 0 - I - 0x0001D2 00:81C2: 19 88     .word off_8819_0F
- D 0 - I - 0x0001D4 00:81C4: 64 B7     .word off_B764_10
- D 0 - I - 0x0001D6 00:81C6: 4A A8     .word off_A84A_11
- D 0 - I - 0x0001D8 00:81C8: CF 8A     .word off_8ACF_12
- D 0 - I - 0x0001DA 00:81CA: A8 8C     .word off_8CA8_13
- D 0 - I - 0x0001DC 00:81CC: A7 8C     .word off_8CA7_14
- D 0 - I - 0x0001DE 00:81CE: 57 A0     .word off_A057_15
- D 0 - I - 0x0001E0 00:81D0: 3E 92     .word off_923E_16
- D 0 - I - 0x0001E2 00:81D2: 9D 9C     .word off_9C9D_17
- D 0 - I - 0x0001E4 00:81D4: 01 A0     .word off_A001_18
- D 0 - I - 0x0001E6 00:81D6: 12 99     .word off_9912_19
- D 0 - I - 0x0001E8 00:81D8: 12 99     .word off_9912_1A
- D 0 - I - 0x0001EA 00:81DA: 12 99     .word off_9912_1B
- D 0 - I - 0x0001EC 00:81DC: C2 A0     .word off_A0C2_1C
- D 0 - I - 0x0001EE 00:81DE: E5 95     .word off_95E5_1D



_off027_0x0001F0_09:
- D 0 - I - 0x0001F0 00:81E0: 4D 90     .word off_904D_00
- D 0 - I - 0x0001F2 00:81E2: E4 8A     .word off_8AE4_01
- D 0 - I - 0x0001F4 00:81E4: 8C 9D     .word off_9D8C_02
- D 0 - I - 0x0001F6 00:81E6: E4 8A     .word off_8AE4_03
- D 0 - I - 0x0001F8 00:81E8: 47 8B     .word off_8B47_04
- D 0 - I - 0x0001FA 00:81EA: 32 8C     .word off_8C32_05
- D 0 - I - 0x0001FC 00:81EC: E4 8A     .word off_8AE4_06
- D 0 - I - 0x0001FE 00:81EE: 32 91     .word off_9132_07
- D 0 - I - 0x000200 00:81F0: 9A 91     .word off_919A_08
- D 0 - I - 0x000202 00:81F2: A5 93     .word off_93A5_09
- D 0 - I - 0x000204 00:81F4: 30 93     .word off_9330_0A
- D 0 - I - 0x000206 00:81F6: A5 93     .word off_93A5_0B
- D 0 - I - 0x000208 00:81F8: 9C 94     .word off_949C_0C
- D 0 - I - 0x00020A 00:81FA: 74 A0     .word off_A074_0D
- D 0 - I - 0x00020C 00:81FC: 6D 9D     .word off_9D6D_0E
- D 0 - I - 0x00020E 00:81FE: 01 A1     .word off_A101_0F
- D 0 - I - 0x000210 00:8200: 03 A3     .word off_A303_10
- D 0 - I - 0x000212 00:8202: 40 A1     .word off_A140_11
- D 0 - I - 0x000214 00:8204: 9E A1     .word off_A19E_12
- D 0 - I - 0x000216 00:8206: DD A1     .word off_A1DD_13
- D 0 - I - 0x000218 00:8208: 5A A2     .word off_A25A_14
- D 0 - I - 0x00021A 00:820A: 7A A2     .word off_A27A_15
- D 0 - I - 0x00021C 00:820C: D8 A2     .word off_A2D8_16
- D 0 - I - 0x00021E 00:820E: 23 A3     .word off_A323_17
- D 0 - I - 0x000220 00:8210: 09 B7     .word off_B709_18
- D 0 - I - 0x000222 00:8212: 7D A3     .word off_A37D_19
- D 0 - I - 0x000224 00:8214: 9D A3     .word off_A39D_1A
- D 0 - I - 0x000226 00:8216: BD A3     .word off_A3BD_1B
- D 0 - I - 0x000228 00:8218: DD A3     .word off_A3DD_1C
- D 0 - I - 0x00022A 00:821A: FD A3     .word off_A3FD_1D



_off027_0x00022C_0A:
- D 0 - I - 0x00022C 00:821C: 4D 90     .word off_904D_00
- D 0 - I - 0x00022E 00:821E: 5D 91     .word off_915D_01
- D 0 - I - 0x000230 00:8220: C9 91     .word off_91C9_02
- D 0 - I - 0x000232 00:8222: BE 93     .word off_93BE_03
- D 0 - I - 0x000234 00:8224: A7 A9     .word off_A9A7_04
- D 0 - I - 0x000236 00:8226: AE 88     .word off_88AE_05
- D 0 - I - 0x000238 00:8228: C7 88     .word off_88C7_06
- D 0 - I - 0x00023A 00:822A: E0 88     .word off_88E0_07
- D 0 - I - 0x00023C 00:822C: 4D 8F     .word off_8F4D_08
- D 0 - I - 0x00023E 00:822E: 4D 90     .word off_904D_09
- D 0 - I - 0x000240 00:8230: 4D 90     .word off_904D_0A
- D 0 - I - 0x000242 00:8232: 4D 90     .word off_904D_0B
- D 0 - I - 0x000244 00:8234: B8 94     .word off_94B8_0C
- D 0 - I - 0x000246 00:8236: 92 A0     .word off_A092_0D
- D 0 - I - 0x000248 00:8238: 05 BA     .word off_BA05_0E
- D 0 - I - 0x00024A 00:823A: E1 A0     .word off_A0E1_0F
- D 0 - I - 0x00024C 00:823C: 43 BA     .word off_BA43_10
- D 0 - I - 0x00024E 00:823E: 20 A1     .word off_A120_11
- D 0 - I - 0x000250 00:8240: 5F A1     .word off_A15F_12
- D 0 - I - 0x000252 00:8242: BD A1     .word off_A1BD_13
- D 0 - I - 0x000254 00:8244: FC A1     .word off_A1FC_14
- D 0 - I - 0x000256 00:8246: 99 A2     .word off_A299_15
- D 0 - I - 0x000258 00:8248: D7 BD     .word off_BDD7_16
- D 0 - I - 0x00025A 00:824A: 5D A3     .word off_A35D_17
- - - - - - 0x00025C 00:824C: 9C B4     .word off_B49C_18
- - - - - - 0x00025E 00:824E: 63 BA     .word off_BA63_19
- - - - - - 0x000260 00:8250: 50 A9     .word off_A950_1A
- - - - - - 0x000262 00:8252: 7E A1     .word off_A17E_1B
- - - - - - 0x000264 00:8254: 1B A2     .word off_A21B_1C
- - - - - - 0x000266 00:8256: 3A A2     .word off_A23A_1D



_off027_0x000268_0B:
- D 0 - I - 0x000268 00:8258: 43 96     .word off_9643_00
- D 0 - I - 0x00026A 00:825A: 5D A4     .word off_A45D_01
- D 0 - I - 0x00026C 00:825C: 7D A4     .word off_A47D_02
- D 0 - I - 0x00026E 00:825E: 9D A4     .word off_A49D_03
- D 0 - I - 0x000270 00:8260: BD A4     .word off_A4BD_04
- D 0 - I - 0x000272 00:8262: DD A4     .word off_A4DD_05
- D 0 - I - 0x000274 00:8264: FD A4     .word off_A4FD_06
- D 0 - I - 0x000276 00:8266: 1D A5     .word off_A51D_07
- D 0 - I - 0x000278 00:8268: 39 98     .word off_9839_08
- D 0 - I - 0x00027A 00:826A: 5D A5     .word off_A55D_09
- D 0 - I - 0x00027C 00:826C: 3D A5     .word off_A53D_0A
- D 0 - I - 0x00027E 00:826E: 5D A5     .word off_A55D_0B
- D 0 - I - 0x000280 00:8270: 7D A5     .word off_A57D_0C
- D 0 - I - 0x000282 00:8272: 9D A5     .word off_A59D_0D
- D 0 - I - 0x000284 00:8274: BD A5     .word off_A5BD_0E
- D 0 - I - 0x000286 00:8276: DD A5     .word off_A5DD_0F
- D 0 - I - 0x000288 00:8278: FD A5     .word off_A5FD_10
- D 0 - I - 0x00028A 00:827A: 1D A6     .word off_A61D_11
- D 0 - I - 0x00028C 00:827C: D1 9D     .word off_9DD1_12
- D 0 - I - 0x00028E 00:827E: 3D A6     .word off_A63D_13
- D 0 - I - 0x000290 00:8280: 5D A6     .word off_A65D_14
- D 0 - I - 0x000292 00:8282: D5 A6     .word off_A6D5_15
- D 0 - I - 0x000294 00:8284: 0F A7     .word off_A70F_16
- D 0 - I - 0x000296 00:8286: 6B A7     .word off_A76B_17
- - - - - - 0x000298 00:8288: 4D 90     .word off_904D_18
- - - - - - 0x00029A 00:828A: 4D 90     .word off_904D_19
- - - - - - 0x00029C 00:828C: 4D 90     .word off_904D_1A
- - - - - - 0x00029E 00:828E: 4D 90     .word off_904D_1B
- - - - - - 0x0002A0 00:8290: 4D 90     .word off_904D_1C
- - - - - - 0x0002A2 00:8292: 4D 90     .word off_904D_1D



_off027_0x0002A4_0C:
- D 0 - I - 0x0002A4 00:8294: 09 8E     .word off_8E09_00
- D 0 - I - 0x0002A6 00:8296: 56 9B     .word off_9B56_01
- D 0 - I - 0x0002A8 00:8298: 31 A9     .word off_A931_02
- D 0 - I - 0x0002AA 00:829A: 9B AE     .word off_AE9B_03
- D 0 - I - 0x0002AC 00:829C: 08 BF     .word off_BF08_04
- D 0 - I - 0x0002AE 00:829E: 04 96     .word off_9604_05
- D 0 - I - 0x0002B0 00:82A0: 51 BC     .word off_BC51_06
- D 0 - I - 0x0002B2 00:82A2: 78 B0     .word off_B078_07
- D 0 - I - 0x0002B4 00:82A4: 28 8E     .word off_8E28_08
- D 0 - I - 0x0002B6 00:82A6: 47 8E     .word off_8E47_09
- D 0 - I - 0x0002B8 00:82A8: D4 92     .word off_92D4_0A
- D 0 - I - 0x0002BA 00:82AA: F3 92     .word off_92F3_0B
- D 0 - I - 0x0002BC 00:82AC: 92 B1     .word off_B192_0C
- D 0 - I - 0x0002BE 00:82AE: DA B4     .word off_B4DA_0D
- D 0 - I - 0x0002C0 00:82B0: A5 9A     .word off_9AA5_0E
- D 0 - I - 0x0002C2 00:82B2: C4 9A     .word off_9AC4_0F
- D 0 - I - 0x0002C4 00:82B4: 96 A6     .word off_A696_10
- D 0 - I - 0x0002C6 00:82B6: 21 9F     .word off_9F21_11
- D 0 - I - 0x0002C8 00:82B8: 96 A6     .word off_A696_12
- D 0 - I - 0x0002CA 00:82BA: B5 A6     .word off_A6B5_13
- D 0 - I - 0x0002CC 00:82BC: 77 A6     .word off_A677_14
- D 0 - I - 0x0002CE 00:82BE: EF A6     .word off_A6EF_15
- D 0 - I - 0x0002D0 00:82C0: 2C A7     .word off_A72C_16
- D 0 - I - 0x0002D2 00:82C2: 4B A7     .word off_A74B_17
- - - - - - 0x0002D4 00:82C4: 4D 90     .word off_904D_18
- - - - - - 0x0002D6 00:82C6: 4D 90     .word off_904D_19
- - - - - - 0x0002D8 00:82C8: 4D 90     .word off_904D_1A
- - - - - - 0x0002DA 00:82CA: 4D 90     .word off_904D_1B
- - - - - - 0x0002DC 00:82CC: 4D 90     .word off_904D_1C
- - - - - - 0x0002DE 00:82CE: 4D 90     .word off_904D_1D



_off027_0x0002E0_0D:
- D 0 - I - 0x0002E0 00:82D0: 4D 90     .word off_904D_00
- D 0 - I - 0x0002E2 00:82D2: 4D 90     .word off_904D_01
- D 0 - I - 0x0002E4 00:82D4: F9 A8     .word off_A8F9_02
- D 0 - I - 0x0002E6 00:82D6: B1 91     .word off_91B1_03
- D 0 - I - 0x0002E8 00:82D8: F9 88     .word off_88F9_04
- D 0 - I - 0x0002EA 00:82DA: 12 89     .word off_8912_05
- D 0 - I - 0x0002EC 00:82DC: 2B 89     .word off_892B_06
- D 0 - I - 0x0002EE 00:82DE: 67 8F     .word off_8F67_07
- D 0 - I - 0x0002F0 00:82E0: CC 9B     .word off_9BCC_08
- D 0 - I - 0x0002F2 00:82E2: 1E 9B     .word off_9B1E_09
- D 0 - I - 0x0002F4 00:82E4: 8C A9     .word off_A98C_0A
- D 0 - I - 0x0002F6 00:82E6: 93 88     .word off_8893_0B
- D 0 - I - 0x0002F8 00:82E8: B1 9B     .word off_9BB1_0C
- D 0 - I - 0x0002FA 00:82EA: 81 B4     .word off_B481_0D
- D 0 - I - 0x0002FC 00:82EC: 70 A9     .word off_A970_0E
- D 0 - I - 0x0002FE 00:82EE: 77 88     .word off_8877_0F
- D 0 - I - 0x000300 00:82F0: E4 A9     .word off_A9E4_10
- D 0 - I - 0x000302 00:82F2: 31 B2     .word off_B231_11
- D 0 - I - 0x000304 00:82F4: CF B2     .word off_B2CF_12
- D 0 - I - 0x000306 00:82F6: 81 8F     .word off_8F81_13
- D 0 - I - 0x000308 00:82F8: C8 94     .word off_94C8_14
- D 0 - I - 0x00030A 00:82FA: A2 A0     .word off_A0A2_15
- D 0 - I - 0x00030C 00:82FC: F6 A2     .word off_A2F6_16
- D 0 - I - 0x00030E 00:82FE: 23 BA     .word off_BA23_17
- - - - - - 0x000310 00:8300: 4D 90     .word off_904D_18
- - - - - - 0x000312 00:8302: 4D 90     .word off_904D_19
- - - - - - 0x000314 00:8304: 4D 90     .word off_904D_1A
- - - - - - 0x000316 00:8306: 4D 90     .word off_904D_1B
- - - - - - 0x000318 00:8308: 4D 90     .word off_904D_1C
- - - - - - 0x00031A 00:830A: 4D 90     .word off_904D_1D



_off027_0x00031C_0E:
_off027_0x00031C_30:
- D 0 - I - 0x00031C 00:830C: 4D 90     .word off_904D_1E
- D 0 - I - 0x00031E 00:830E: 4D 90     .word off_904D_1F
- D 0 - I - 0x000320 00:8310: 4D 90     .word off_904D_20
- D 0 - I - 0x000322 00:8312: 4D 90     .word off_904D_21
- D 0 - I - 0x000324 00:8314: 4D 90     .word off_904D_22
- D 0 - I - 0x000326 00:8316: 4D 90     .word off_904D_23
- D 0 - I - 0x000328 00:8318: 4D 90     .word off_904D_24
- D 0 - I - 0x00032A 00:831A: 4D 90     .word off_904D_25
- D 0 - I - 0x00032C 00:831C: 4D 90     .word off_904D_26
- D 0 - I - 0x00032E 00:831E: 4D 90     .word off_904D_27
- D 0 - I - 0x000330 00:8320: 4D 90     .word off_904D_28
- D 0 - I - 0x000332 00:8322: 4D 90     .word off_904D_29
- D 0 - I - 0x000334 00:8324: 4D 90     .word off_904D_2A
- D 0 - I - 0x000336 00:8326: 4D 90     .word off_904D_2B
- D 0 - I - 0x000338 00:8328: 4D 90     .word off_904D_2C
- D 0 - I - 0x00033A 00:832A: 4D 90     .word off_904D_2D
- D 0 - I - 0x00033C 00:832C: 4D 90     .word off_904D_2E
- D 0 - I - 0x00033E 00:832E: 4D 90     .word off_904D_2F
- D 0 - I - 0x000340 00:8330: 4D 90     .word off_904D_30
- D 0 - I - 0x000342 00:8332: 4D 90     .word off_904D_31
- D 0 - I - 0x000344 00:8334: C8 94     .word off_94C8_32
- D 0 - I - 0x000346 00:8336: A2 A0     .word off_A0A2_33
- D 0 - I - 0x000348 00:8338: F6 A2     .word off_A2F6_34
- D 0 - I - 0x00034A 00:833A: 23 BA     .word off_BA23_35
- - - - - - 0x00034C 00:833C: 4D 90     .word off_904D_36
- - - - - - 0x00034E 00:833E: 4D 90     .word off_904D_37
- - - - - - 0x000350 00:8340: 4D 90     .word off_904D_38
- - - - - - 0x000352 00:8342: 4D 90     .word off_904D_39
- - - - - - 0x000354 00:8344: 4D 90     .word off_904D_3A
- - - - - - 0x000356 00:8346: 4D 90     .word off_904D_3B



_off027_0x000358_0F:
- D 0 - I - 0x000358 00:8348: 4D 90     .word off_904D_00
- D 0 - I - 0x00035A 00:834A: 84 AD     .word off_AD84_01
- D 0 - I - 0x00035C 00:834C: 0F 86     .word off_860F_02
- D 0 - I - 0x00035E 00:834E: 7D AE     .word off_AE7D_03
- D 0 - I - 0x000360 00:8350: EA BE     .word off_BEEA_04
- D 0 - I - 0x000362 00:8352: D5 85     .word off_85D5_05
- D 0 - I - 0x000364 00:8354: D9 8D     .word off_8DD9_06
- D 0 - I - 0x000366 00:8356: 21 BC     .word off_BC21_07
- D 0 - I - 0x000368 00:8358: C3 AA     .word off_AAC3_08
- D 0 - I - 0x00036A 00:835A: 3B AB     .word off_AB3B_09
- D 0 - I - 0x00036C 00:835C: B7 AB     .word off_ABB7_0A
- D 0 - I - 0x00036E 00:835E: 3B AC     .word off_AC3B_0B
- D 0 - I - 0x000370 00:8360: 77 AC     .word off_AC77_0C
- D 0 - I - 0x000372 00:8362: B6 AC     .word off_ACB6_0D
- D 0 - I - 0x000374 00:8364: D6 AC     .word off_ACD6_0E
- D 0 - I - 0x000376 00:8366: 06 AD     .word off_AD06_0F
- D 0 - I - 0x000378 00:8368: 41 8D     .word off_8D41_10
- D 0 - I - 0x00037A 00:836A: 3A AD     .word off_AD3A_11
- D 0 - I - 0x00037C 00:836C: B2 AF     .word off_AFB2_12
- D 0 - I - 0x00037E 00:836E: 3C AD     .word off_AD3C_13
- D 0 - I - 0x000380 00:8370: F9 B8     .word off_B8F9_14
- D 0 - I - 0x000382 00:8372: A4 AD     .word off_ADA4_15
- D 0 - I - 0x000384 00:8374: C4 AD     .word off_ADC4_16
- D 0 - I - 0x000386 00:8376: 03 AE     .word off_AE03_17
- - - - - - 0x000388 00:8378: 4D 90     .word off_904D_18
- - - - - - 0x00038A 00:837A: 4D 90     .word off_904D_19
- - - - - - 0x00038C 00:837C: 4D 90     .word off_904D_1A
- - - - - - 0x00038E 00:837E: 4D 90     .word off_904D_1B
- - - - - - 0x000390 00:8380: 4D 90     .word off_904D_1C
- - - - - - 0x000392 00:8382: 4D 90     .word off_904D_1D



_off027_0x000394_10:
- D 0 - I - 0x000394 00:8384: 4D 90     .word off_904D_00
- D 0 - I - 0x000396 00:8386: 6D AD     .word off_AD6D_01
- D 0 - I - 0x000398 00:8388: 2B 86     .word off_862B_02
- D 0 - I - 0x00039A 00:838A: 5F AE     .word off_AE5F_03
- D 0 - I - 0x00039C 00:838C: CC BE     .word off_BECC_04
- D 0 - I - 0x00039E 00:838E: F1 85     .word off_85F1_05
- D 0 - I - 0x0003A0 00:8390: BE 85     .word off_85BE_06
- D 0 - I - 0x0003A2 00:8392: 85 86     .word off_8685_07
- D 0 - I - 0x0003A4 00:8394: DF AA     .word off_AADF_08
- D 0 - I - 0x0003A6 00:8396: 59 AB     .word off_AB59_09
- D 0 - I - 0x0003A8 00:8398: 96 92     .word off_9296_0A
- D 0 - I - 0x0003AA 00:839A: 96 AC     .word off_AC96_0B
- D 0 - I - 0x0003AC 00:839C: 15 9D     .word off_9D15_0C
- D 0 - I - 0x0003AE 00:839E: 57 AC     .word off_AC57_0D
- D 0 - I - 0x0003B0 00:83A0: E6 AC     .word off_ACE6_0E
- D 0 - I - 0x0003B2 00:83A2: 1A AD     .word off_AD1A_0F
- D 0 - I - 0x0003B4 00:83A4: 62 8D     .word off_8D62_10
- D 0 - I - 0x0003B6 00:83A6: 31 B6     .word off_B631_11
- D 0 - I - 0x0003B8 00:83A8: C4 AF     .word off_AFC4_12
- D 0 - I - 0x0003BA 00:83AA: 4D AD     .word off_AD4D_13
- D 0 - I - 0x0003BC 00:83AC: F9 B8     .word off_B8F9_14
- D 0 - I - 0x0003BE 00:83AE: A4 AD     .word off_ADA4_15
- D 0 - I - 0x0003C0 00:83B0: C4 AD     .word off_ADC4_16
- D 0 - I - 0x0003C2 00:83B2: 03 AE     .word off_AE03_17
- D 0 - I - 0x0003C4 00:83B4: E0 86     .word off_86E0_18
- D 0 - I - 0x0003C6 00:83B6: E0 86     .word off_86E0_19
- D 0 - I - 0x0003C8 00:83B8: E0 86     .word off_86E0_1A
- D 0 - I - 0x0003CA 00:83BA: E0 86     .word off_86E0_1B
- D 0 - I - 0x0003CC 00:83BC: 03 AE     .word off_AE03_1C
- D 0 - I - 0x0003CE 00:83BE: 23 AE     .word off_AE23_1D



_off027_0x0003D0_11:
- D 0 - I - 0x0003D0 00:83C0: 4D 90     .word off_904D_00
- D 0 - I - 0x0003D2 00:83C2: 4D 90     .word off_904D_01
- D 0 - I - 0x0003D4 00:83C4: 67 B3     .word off_B367_02
- D 0 - I - 0x0003D6 00:83C6: 43 AE     .word off_AE43_03
- D 0 - I - 0x0003D8 00:83C8: BB AE     .word off_AEBB_04
- D 0 - I - 0x0003DA 00:83CA: B0 BE     .word off_BEB0_05
- D 0 - I - 0x0003DC 00:83CC: 47 BF     .word off_BF47_06
- D 0 - I - 0x0003DE 00:83CE: DB AE     .word off_AEDB_07
- D 0 - I - 0x0003E0 00:83D0: 37 AF     .word off_AF37_08
- D 0 - I - 0x0003E2 00:83D2: 5A B0     .word off_B05A_09
- D 0 - I - 0x0003E4 00:83D4: FB 89     .word off_89FB_0A
- D 0 - I - 0x0003E6 00:83D6: 5A B0     .word off_B05A_0B
- D 0 - I - 0x0003E8 00:83D8: 47 86     .word off_8647_0C
- D 0 - I - 0x0003EA 00:83DA: A4 86     .word off_86A4_0D
- D 0 - I - 0x0003EC 00:83DC: 57 AF     .word off_AF57_0E
- D 0 - I - 0x0003EE 00:83DE: 77 AF     .word off_AF77_0F
- D 0 - I - 0x0003F0 00:83E0: FF AF     .word off_AFFF_10
- D 0 - I - 0x0003F2 00:83E2: 9B 8F     .word off_8F9B_11
- D 0 - I - 0x0003F4 00:83E4: 45 89     .word off_8945_12
- D 0 - I - 0x0003F6 00:83E6: 13 A9     .word off_A913_13
- D 0 - I - 0x0003F8 00:83E8: E6 9B     .word off_9BE6_14
- D 0 - I - 0x0003FA 00:83EA: 38 9B     .word off_9B38_15
- D 0 - I - 0x0003FC 00:83EC: 00 AA     .word off_AA00_16
- D 0 - I - 0x0003FE 00:83EE: 4D B2     .word off_B24D_17
- D 0 - I - 0x000400 00:83F0: EB B2     .word off_B2EB_18
- D 0 - I - 0x000402 00:83F2: 87 90     .word off_9087_19
- D 0 - I - 0x000404 00:83F4: 1F B0     .word off_B01F_1A
- D 0 - I - 0x000406 00:83F6: C4 A9     .word off_A9C4_1B
- D 0 - I - 0x000408 00:83F8: E0 89     .word off_89E0_1C
- D 0 - I - 0x00040A 00:83FA: 3F B0     .word off_B03F_1D



_off027_0x00040C_13:
- D 0 - I - 0x00040C 00:83FC: 3A 8A     .word off_8A3A_00
- D 0 - I - 0x00040E 00:83FE: D8 B0     .word off_B0D8_01
- D 0 - I - 0x000410 00:8400: 79 8A     .word off_8A79_02
- D 0 - I - 0x000412 00:8402: F8 B0     .word off_B0F8_03
- D 0 - I - 0x000414 00:8404: 45 B8     .word off_B845_04
- D 0 - I - 0x000416 00:8406: B7 B8     .word off_B8B7_05
- D 0 - I - 0x000418 00:8408: 05 B9     .word off_B905_06
- D 0 - I - 0x00041A 00:840A: 28 95     .word off_9528_07
- D 0 - I - 0x00041C 00:840C: 28 95     .word off_9528_08
- D 0 - I - 0x00041E 00:840E: 69 A8     .word off_A869_09
- D 0 - I - 0x000420 00:8410: 2A B3     .word off_B32A_0A
- D 0 - I - 0x000422 00:8412: 38 B5     .word off_B538_0B
- D 0 - I - 0x000424 00:8414: 62 B4     .word off_B462_0C
- D 0 - I - 0x000426 00:8416: 74 B5     .word off_B574_0D
- D 0 - I - 0x000428 00:8418: 18 B1     .word off_B118_0E
- D 0 - I - 0x00042A 00:841A: E3 9E     .word off_9EE3_0F
- D 0 - I - 0x00042C 00:841C: B2 B1     .word off_B1B2_10
- D 0 - I - 0x00042E 00:841E: A6 B3     .word off_B3A6_11
- D 0 - I - 0x000430 00:8420: F9 B8     .word off_B8F9_12
- D 0 - I - 0x000432 00:8422: 9B B8     .word off_B89B_13
- D 0 - I - 0x000434 00:8424: B8 BD     .word off_BDB8_14
- D 0 - I - 0x000436 00:8426: 9B B8     .word off_B89B_15
- D 0 - I - 0x000438 00:8428: 9C 8C     .word off_8C9C_16
- D 0 - I - 0x00043A 00:842A: 9C 8C     .word off_8C9C_17
- - - - - - 0x00043C 00:842C: 4D 90     .word off_904D_18
- - - - - - 0x00043E 00:842E: 4D 90     .word off_904D_19
- - - - - - 0x000440 00:8430: 4D 90     .word off_904D_1A
- - - - - - 0x000442 00:8432: 4D 90     .word off_904D_1B
- - - - - - 0x000444 00:8434: 4D 90     .word off_904D_1C
- - - - - - 0x000446 00:8436: 4D 90     .word off_904D_1D



_off027_0x000448_14:
- D 0 - I - 0x000448 00:8438: 4D 90     .word off_904D_00
- D 0 - I - 0x00044A 00:843A: 12 B2     .word off_B212_01
- D 0 - I - 0x00044C 00:843C: B0 B2     .word off_B2B0_02
- D 0 - I - 0x00044E 00:843E: 0B B3     .word off_B30B_03
- D 0 - I - 0x000450 00:8440: 87 B3     .word off_B387_04
- D 0 - I - 0x000452 00:8442: E5 B3     .word off_B3E5_05
- D 0 - I - 0x000454 00:8444: F6 B8     .word off_B8F6_06
- D 0 - I - 0x000456 00:8446: 25 95     .word off_9525_07
- D 0 - I - 0x000458 00:8448: 25 95     .word off_9525_08
- D 0 - I - 0x00045A 00:844A: 24 B4     .word off_B424_09
- D 0 - I - 0x00045C 00:844C: 04 B4     .word off_B404_0A
- D 0 - I - 0x00045E 00:844E: 97 AB     .word off_AB97_0B
- D 0 - I - 0x000460 00:8450: 44 B4     .word off_B444_0C
- D 0 - I - 0x000462 00:8452: BC B4     .word off_B4BC_0D
- D 0 - I - 0x000464 00:8454: FA B4     .word off_B4FA_0E
- D 0 - I - 0x000466 00:8456: 1A B5     .word off_B51A_0F
- D 0 - I - 0x000468 00:8458: 55 B1     .word off_B155_10
- D 0 - I - 0x00046A 00:845A: 56 B5     .word off_B556_11
- D 0 - I - 0x00046C 00:845C: F9 B8     .word off_B8F9_12
- D 0 - I - 0x00046E 00:845E: 9B B8     .word off_B89B_13
- D 0 - I - 0x000470 00:8460: B8 BD     .word off_BDB8_14
- D 0 - I - 0x000472 00:8462: 9B B8     .word off_B89B_15
- D 0 - I - 0x000474 00:8464: 9C 8C     .word off_8C9C_16
- D 0 - I - 0x000476 00:8466: 9C 8C     .word off_8C9C_17
- - - - - - 0x000478 00:8468: 4D 90     .word off_904D_18
- - - - - - 0x00047A 00:846A: 4D 90     .word off_904D_19
- - - - - - 0x00047C 00:846C: 4D 90     .word off_904D_1A
- - - - - - 0x00047E 00:846E: 4D 90     .word off_904D_1B
- - - - - - 0x000480 00:8470: 4D 90     .word off_904D_1C
- - - - - - 0x000482 00:8472: 4D 90     .word off_904D_1D



_off027_0x000484_16:
- D 0 - I - 0x000484 00:8474: 4D 90     .word off_904D_00
- D 0 - I - 0x000486 00:8476: F3 B5     .word off_B5F3_01
- D 0 - I - 0x000488 00:8478: 51 B6     .word off_B651_02
- D 0 - I - 0x00048A 00:847A: AF B6     .word off_B6AF_03
- D 0 - I - 0x00048C 00:847C: 29 B8     .word off_B829_04
- D 0 - I - 0x00048E 00:847E: 65 B8     .word off_B865_05
- D 0 - I - 0x000490 00:8480: 85 B8     .word off_B885_06
- D 0 - I - 0x000492 00:8482: D7 B8     .word off_B8D7_07
- D 0 - I - 0x000494 00:8484: 25 B9     .word off_B925_08
- D 0 - I - 0x000496 00:8486: 7B A8     .word off_A87B_09
- D 0 - I - 0x000498 00:8488: 48 B3     .word off_B348_0A
- D 0 - I - 0x00049A 00:848A: 02 9F     .word off_9F02_0B
- D 0 - I - 0x00049C 00:848C: C5 B3     .word off_B3C5_0C
- D 0 - I - 0x00049E 00:848E: 93 B5     .word off_B593_0D
- D 0 - I - 0x0004A0 00:8490: 45 B9     .word off_B945_0E
- D 0 - I - 0x0004A2 00:8492: 65 B9     .word off_B965_0F
- D 0 - I - 0x0004A4 00:8494: 85 B9     .word off_B985_10
- D 0 - I - 0x0004A6 00:8496: A5 B9     .word off_B9A5_11
- D 0 - I - 0x0004A8 00:8498: F9 B8     .word off_B8F9_12
- D 0 - I - 0x0004AA 00:849A: 9B B8     .word off_B89B_13
- D 0 - I - 0x0004AC 00:849C: B8 BD     .word off_BDB8_14
- D 0 - I - 0x0004AE 00:849E: 9B B8     .word off_B89B_15
- D 0 - I - 0x0004B0 00:84A0: 9C 8C     .word off_8C9C_16
- D 0 - I - 0x0004B2 00:84A2: 9C 8C     .word off_8C9C_17
- - - - - - 0x0004B4 00:84A4: 4D 90     .word off_904D_18
- - - - - - 0x0004B6 00:84A6: 4D 90     .word off_904D_19
- - - - - - 0x0004B8 00:84A8: 4D 90     .word off_904D_1A
- - - - - - 0x0004BA 00:84AA: 4D 90     .word off_904D_1B
- - - - - - 0x0004BC 00:84AC: 4D 90     .word off_904D_1C
- - - - - - 0x0004BE 00:84AE: 4D 90     .word off_904D_1D



_off027_0x0004C0_2F:
- D 0 - I - 0x0004C0 00:84B0: 4D 90     .word off_904D_00
- D 0 - I - 0x0004C2 00:84B2: 4D 90     .word off_904D_01
- D 0 - I - 0x0004C4 00:84B4: 4D 90     .word off_904D_02
- D 0 - I - 0x0004C6 00:84B6: 4D 90     .word off_904D_03
- D 0 - I - 0x0004C8 00:84B8: 4D 90     .word off_904D_04
- D 0 - I - 0x0004CA 00:84BA: 4D 90     .word off_904D_05
- D 0 - I - 0x0004CC 00:84BC: 4D 90     .word off_904D_06
- D 0 - I - 0x0004CE 00:84BE: 4D 90     .word off_904D_07
- D 0 - I - 0x0004D0 00:84C0: 4D 90     .word off_904D_08
- D 0 - I - 0x0004D2 00:84C2: 4D 90     .word off_904D_09
- D 0 - I - 0x0004D4 00:84C4: 4D 90     .word off_904D_0A
- D 0 - I - 0x0004D6 00:84C6: 4D 90     .word off_904D_0B
- D 0 - I - 0x0004D8 00:84C8: B8 94     .word off_94B8_0C
- D 0 - I - 0x0004DA 00:84CA: 92 A0     .word off_A092_0D
- D 0 - I - 0x0004DC 00:84CC: 05 BA     .word off_BA05_0E
- D 0 - I - 0x0004DE 00:84CE: E1 A0     .word off_A0E1_0F
- D 0 - I - 0x0004E0 00:84D0: 43 BA     .word off_BA43_10
- D 0 - I - 0x0004E2 00:84D2: 20 A1     .word off_A120_11
- D 0 - I - 0x0004E4 00:84D4: 5F A1     .word off_A15F_12
- D 0 - I - 0x0004E6 00:84D6: BD A1     .word off_A1BD_13
- D 0 - I - 0x0004E8 00:84D8: FC A1     .word off_A1FC_14
- D 0 - I - 0x0004EA 00:84DA: 99 A2     .word off_A299_15
- D 0 - I - 0x0004EC 00:84DC: D7 BD     .word off_BDD7_16
- D 0 - I - 0x0004EE 00:84DE: 5D A3     .word off_A35D_17
- D 0 - I - 0x0004F0 00:84E0: 9C B4     .word off_B49C_18
- D 0 - I - 0x0004F2 00:84E2: 63 BA     .word off_BA63_19
- D 0 - I - 0x0004F4 00:84E4: 50 A9     .word off_A950_1A
- D 0 - I - 0x0004F6 00:84E6: 7E A1     .word off_A17E_1B
- D 0 - I - 0x0004F8 00:84E8: 1B A2     .word off_A21B_1C
- D 0 - I - 0x0004FA 00:84EA: 3A A2     .word off_A23A_1D



_off027_0x0004FC_2C:
- D 0 - I - 0x0004FC 00:84EC: 4D 90     .word off_904D_00
- D 0 - I - 0x0004FE 00:84EE: 12 B6     .word off_B612_01
- D 0 - I - 0x000500 00:84F0: 70 B6     .word off_B670_02
- D 0 - I - 0x000502 00:84F2: 70 B6     .word off_B670_03
- D 0 - I - 0x000504 00:84F4: 74 B1     .word off_B174_04
- D 0 - I - 0x000506 00:84F6: 4D 90     .word off_904D_05
- D 0 - I - 0x000508 00:84F8: CE B6     .word off_B6CE_06
- D 0 - I - 0x00050A 00:84FA: EB B6     .word off_B6EB_07
- D 0 - I - 0x00050C 00:84FC: 83 BA     .word off_BA83_08
- D 0 - I - 0x00050E 00:84FE: 8F B6     .word off_B68F_09
- D 0 - I - 0x000510 00:8500: E2 BA     .word off_BAE2_0A
- D 0 - I - 0x000512 00:8502: 02 BB     .word off_BB02_0B
- D 0 - I - 0x000514 00:8504: E2 BA     .word off_BAE2_0C
- D 0 - I - 0x000516 00:8506: 02 BB     .word off_BB02_0D
- D 0 - I - 0x000518 00:8508: 22 BB     .word off_BB22_0E
- D 0 - I - 0x00051A 00:850A: 36 B1     .word off_B136_0F
- D 0 - I - 0x00051C 00:850C: 42 BB     .word off_BB42_10
- D 0 - I - 0x00051E 00:850E: 63 AA     .word off_AA63_11
- D 0 - I - 0x000520 00:8510: 61 AA     .word off_AA61_12
- D 0 - I - 0x000522 00:8512: 5F AA     .word off_AA5F_13
- D 0 - I - 0x000524 00:8514: 63 AA     .word off_AA63_14
- D 0 - I - 0x000526 00:8516: 61 AA     .word off_AA61_15
- D 0 - I - 0x000528 00:8518: 5F AA     .word off_AA5F_16
- D 0 - I - 0x00052A 00:851A: 63 AA     .word off_AA63_17
- - - - - - 0x00052C 00:851C: 4D 90     .word off_904D_18
- - - - - - 0x00052E 00:851E: 4D 90     .word off_904D_19
- - - - - - 0x000530 00:8520: 4D 90     .word off_904D_1A
- - - - - - 0x000532 00:8522: 4D 90     .word off_904D_1B
- - - - - - 0x000534 00:8524: 4D 90     .word off_904D_1C
- - - - - - 0x000536 00:8526: 4D 90     .word off_904D_1D



_off027_0x000538_2D:
- D 0 - I - 0x000538 00:8528: 4D 90     .word off_904D_00
- D 0 - I - 0x00053A 00:852A: 4D 90     .word off_904D_01
- D 0 - I - 0x00053C 00:852C: 34 90     .word off_9034_02
- D 0 - I - 0x00053E 00:852E: 9E 9D     .word off_9D9E_03
- D 0 - I - 0x000540 00:8530: 59 8B     .word off_8B59_04
- D 0 - I - 0x000542 00:8532: 6E 8B     .word off_8B6E_05
- D 0 - I - 0x000544 00:8534: 44 8C     .word off_8C44_06
- D 0 - I - 0x000546 00:8536: 6B 90     .word off_906B_07
- D 0 - I - 0x000548 00:8538: 1E 90     .word off_901E_08
- D 0 - I - 0x00054A 00:853A: 46 91     .word off_9146_09
- D 0 - I - 0x00054C 00:853C: 46 90     .word off_9046_0A
- D 0 - I - 0x00054E 00:853E: 4F 90     .word off_904F_0B
- D 0 - I - 0x000550 00:8540: 4D 90     .word off_904D_0C
- D 0 - I - 0x000552 00:8542: 4D 90     .word off_904D_0D
- D 0 - I - 0x000554 00:8544: BF 90     .word off_90BF_0E
- D 0 - I - 0x000556 00:8546: A2 BB     .word off_BBA2_0F
- D 0 - I - 0x000558 00:8548: FA 98     .word off_98FA_10
- D 0 - I - 0x00055A 00:854A: 88 B2     .word off_B288_11
- D 0 - I - 0x00055C 00:854C: E3 AD     .word off_ADE3_12
- D 0 - I - 0x00055E 00:854E: 90 B2     .word off_B290_13
- D 0 - I - 0x000560 00:8550: C2 BB     .word off_BBC2_14
- D 0 - I - 0x000562 00:8552: E2 BB     .word off_BBE2_15
- D 0 - I - 0x000564 00:8554: 4E 8D     .word off_8D4E_16
- D 0 - I - 0x000566 00:8556: 4B A0     .word off_A04B_17
- - - - - - 0x000568 00:8558: 4D 90     .word off_904D_18
- - - - - - 0x00056A 00:855A: 4D 90     .word off_904D_19
- - - - - - 0x00056C 00:855C: 4D 90     .word off_904D_1A
- - - - - - 0x00056E 00:855E: 4D 90     .word off_904D_1B
- - - - - - 0x000570 00:8560: 4D 90     .word off_904D_1C
- - - - - - 0x000572 00:8562: 4D 90     .word off_904D_1D



_off027_0x000574_2E:
- D 0 - I - 0x000574 00:8564: 4D 90     .word off_904D_00
- D 0 - I - 0x000576 00:8566: 02 BC     .word off_BC02_01
- D 0 - I - 0x000578 00:8568: B8 A2     .word off_A2B8_02
- D 0 - I - 0x00057A 00:856A: 71 BC     .word off_BC71_03
- D 0 - I - 0x00057C 00:856C: CD BC     .word off_BCCD_04
- D 0 - I - 0x00057E 00:856E: EB BC     .word off_BCEB_05
- D 0 - I - 0x000580 00:8570: 81 BD     .word off_BD81_06
- D 0 - I - 0x000582 00:8572: 99 BD     .word off_BD99_07
- D 0 - I - 0x000584 00:8574: 69 BD     .word off_BD69_08
- D 0 - I - 0x000586 00:8576: 51 BD     .word off_BD51_09
- D 0 - I - 0x000588 00:8578: 39 BD     .word off_BD39_0A
- D 0 - I - 0x00058A 00:857A: 21 BD     .word off_BD21_0B
- D 0 - I - 0x00058C 00:857C: 09 BD     .word off_BD09_0C
- D 0 - I - 0x00058E 00:857E: AF BC     .word off_BCAF_0D
- D 0 - I - 0x000590 00:8580: 8F BC     .word off_BC8F_0E
- D 0 - I - 0x000592 00:8582: F7 BD     .word off_BDF7_0F
- D 0 - I - 0x000594 00:8584: 41 A3     .word off_A341_10
- D 0 - I - 0x000596 00:8586: 17 BE     .word off_BE17_11
- D 0 - I - 0x000598 00:8588: 37 BE     .word off_BE37_12
- D 0 - I - 0x00059A 00:858A: 92 BE     .word off_BE92_13
- D 0 - I - 0x00059C 00:858C: 28 BF     .word off_BF28_14
- D 0 - I - 0x00059E 00:858E: 67 BF     .word off_BF67_15
- D 0 - I - 0x0005A0 00:8590: 9C 8C     .word off_8C9C_16
- D 0 - I - 0x0005A2 00:8592: 9C 8C     .word off_8C9C_17
- - - - - - 0x0005A4 00:8594: 4D 90     .word off_904D_18
- - - - - - 0x0005A6 00:8596: 4D 90     .word off_904D_19
- - - - - - 0x0005A8 00:8598: 4D 90     .word off_904D_1A
- - - - - - 0x0005AA 00:859A: 4D 90     .word off_904D_1B
- - - - - - 0x0005AC 00:859C: 4D 90     .word off_904D_1C
- - - - - - 0x0005AE 00:859E: 4D 90     .word off_904D_1D



off_85A0_01:
- - - - - - 0x0005B0 00:85A0: 60        .byte $60, $61, $00, $80, $00, $60, $61, $00, $80, $00, $60, $61, $00, $80, $00, $60   ; 
- D 0 - I - 0x0005C0 00:85B0: 61        .byte $61, $00, $00, $00, $00, $20, $31, $32, $23, $14, $78, $CF, $CE, $35   ; 
off_85BE_06:
- D 0 - I - 0x0005CE 00:85BE: CE        .byte $CE, $CE, $CE, $CE, $5D, $4E, $5D, $0E, $5D, $3C, $4D, $6D, $39, $85, $85, $85   ; 
- D 0 - I - 0x0005DE 00:85CE: 00        .byte $00, $FF, $FF, $FF, $39, $5D, $85   ; 
off_85D5_05:
- D 0 - I - 0x0005E5 00:85D5: 85        .byte $85, $85, $85, $85, $85, $85, $85, $85, $85, $92, $5D, $5D, $4B, $4C, $5D, $4E   ; 
- D 0 - I - 0x0005F5 00:85E5: 63        .byte $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63, $63   ; 
off_85F1_05:
- D 0 - I - 0x000601 00:85F1: 63        .byte $63, $63, $63, $63, $5D, $5D, $5D, $1F, $4D, $6E, $6D, $5D, $39, $85, $85, $85   ; 
- D 0 - I - 0x000611 00:8601: 00        .byte $00, $FF, $FF, $FF, $39, $4D, $6E, $6E, $6E, $6D, $85, $85, $85, $85   ; 
off_860F_02:
- D 0 - I - 0x00061F 00:860F: 85        .byte $85, $85, $CA, $B0, $B1, $CB, $85, $85, $85, $92, $4E, $5D, $5D, $0E, $5D, $5D   ; 
- D 0 - I - 0x00062F 00:861F: 64        .byte $64, $64, $64, $64, $64, $64, $64, $64, $64, $64, $64, $64   ; 
off_862B_02:
- D 0 - I - 0x00063B 00:862B: 64        .byte $64, $64, $64, $64, $5D, $0E, $0D, $0E, $5D, $4B, $5D, $5D, $39, $85, $85, $85   ; 
- D 0 - I - 0x00064B 00:863B: 00        .byte $00, $FF, $FF, $FF, $39, $85, $85, $85, $85, $4D, $6E, $3E   ; 
off_8647_0C:
- D 0 - I - 0x000657 00:8647: 6E        .byte $6E, $6E, $6E, $3E, $6E, $6E, $6E, $7F, $CE, $CE, $CE, $CE, $00, $CE, $5D, $00   ; 
- D 0 - I - 0x000667 00:8657: 5D        .byte $5D, $00, $54, $00, $70, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71   ; 



off_8667_02:
- - - - - - 0x000677 00:8667: 60        .byte $60, $61, $62, $63, $00, $60, $61, $62, $63, $00, $60, $61, $62, $63, $00, $60   ; 
- D 0 - I - 0x000687 00:8677: 61        .byte $61, $62, $92, $93, $00, $40, $41, $42, $43, $33, $78, $CF, $46, $45   ; 
off_8685_07:
- D 0 - I - 0x000695 00:8685: CE        .byte $CE, $CE, $CE, $CE, $5D, $5D, $5D, $3B, $5D, $4C, $5D, $3C, $39, $85, $85, $85   ; 
- D 0 - I - 0x0006A5 00:8695: 00        .byte $00, $B9, $FF, $FF, $39, $4E, $85, $85, $85, $85, $85, $85, $85, $85, $4D   ; 
off_86A4_0D:
- D 0 - I - 0x0006B4 00:86A4: 6E        .byte $6E, $6E, $6E, $3E, $6E, $6E, $7F, $5D, $CE, $CE, $CE, $CE, $00, $CE, $5D, $00   ; 
- D 0 - I - 0x0006C4 00:86B4: 5D        .byte $5D, $54, $00, $54, $90, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
off_86C1_09:
- D 0 - I - 0x0006D1 00:86C1: FF        .byte $FF, $FF, $FF, $00, $67, $86, $76, $76, $76, $76, $76, $76, $67, $00, $FF, $16   ; 
- D 0 - I - 0x0006E1 00:86D1: 18        .byte $18, $19, $FF, $B0, $20, $21, $21, $22, $23, $20, $21, $22, $23, $20, $21   ; 
off_86E0_18:
off_86E0_19:
off_86E0_1A:
off_86E0_1B:
- D 0 - I - 0x0006F0 00:86E0: 21        .byte $21, $22, $21, $22, $21, $22, $21, $22, $21, $22, $21, $22, $21, $22, $21, $22   ; 
- D 0 - I - 0x000700 00:86F0: 21        .byte $21, $22, $21, $22, $21, $22, $21, $22, $21, $22, $21, $22, $21, $22, $21   ; 
off_86FF_0D:
- D 0 - I - 0x00070F 00:86FF: 22        .byte $22, $23, $14, $14, $05, $00, $8E, $AE   ; 
_off028_0x000717_0A:
_off028_0x000717_2F:
- D 0 - I - 0x000717 00:8707: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x00071F 00:870F: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x000727 00:8717: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x00072F 00:871F: 45        .byte $45, $FF, $FF, $12, $5A, $5A, $5A, $5A   ; 
- D 0 - I - 0x000737 00:8727: 44        .byte $44, $FF, $FF, $11, $59, $56, $55, $55   ; 
- D 0 - I - 0x00073F 00:872F: A4        .byte $A4, $EF, $3F, $01, $05, $05, $45, $55   ; 
- D 0 - I - 0x000747 00:8737: AA        .byte $AA, $EE, $FF, $55, $55, $44, $A5, $55   ; 
- D 0 - I - 0x00074F 00:873F: 0A        .byte $0A, $0E, $0F, $05, $05, $04, $0A, $05   ; 



off_8747_03:
- - - - - - 0x000757 00:8747: 70        .byte $70, $71, $72, $73, $87, $70, $71, $72, $73, $87, $70, $71, $72, $73, $87, $70   ; 
- D 0 - I - 0x000767 00:8757: 71        .byte $71, $72, $A2, $A3, $44, $50, $50, $03, $04, $30, $00, $CF, $1A, $1A, $CE, $45   ; 

off_8767_04:
- - - - - - 0x000777 00:8767: 80        .byte $80, $81, $82, $83, $83, $80, $81, $82, $83, $83, $80, $81, $82, $83, $83, $80   ; 
- D 0 - I - 0x000787 00:8777: 81        .byte $81, $82, $80, $81, $10, $11, $11, $13, $14, $14, $00, $CF, $28, $28, $28, $28   ; 

off_8787_05:
- - - - - - 0x000797 00:8787: 75        .byte $75, $75, $75, $75, $75, $75, $75, $75, $75, $75, $75, $75, $75, $75, $75, $75   ; 
- D 0 - I - 0x0007A7 00:8797: 75        .byte $75, $75, $75, $53, $20, $21, $22, $23, $14, $14   ; 
off_87A1_13:
- D 0 - I - 0x0007B1 00:87A1: 00        .byte $00, $00, $3A, $3A, $3A, $3A, $88, $CF, $00, $00, $00, $00, $0E, $0F, $6C, $6C   ; 
- D 0 - I - 0x0007C1 00:87B1: 5E        .byte $5E, $5F, $6C, $6C, $6C, $6C, $6C, $6C, $6B, $5B, $4B, $6C, $00, $00, $67   ; 
off_87C0_07:
- D 0 - I - 0x0007D0 00:87C0: 00        .byte $00, $C8, $6D, $6D, $6D, $8B, $00, $C8, $6D, $6D, $6C, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x0007E0 00:87D0: 66        .byte $66, $9E, $9E, $9E, $9E, $9E, $66, $9E, $9E, $9E, $9E, $9E, $66, $7D   ; 
off_87DE_06:
- D 0 - I - 0x0007EE 00:87DE: 7D        .byte $7D, $7D, $66, $9E, $9E, $9E, $97, $98, $98, $98, $98, $98, $98, $98, $98, $AA   ; 
- D 0 - I - 0x0007FE 00:87EE: 9E        .byte $9E, $6D, $5E, $5F, $C1, $CE, $C3, $00, $00, $00, $00, $6C   ; 
off_87FA_04:
- D 0 - I - 0x00080A 00:87FA: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $CF, $CF, $CF, $CF, $90, $FF, $FF, $66   ; 
- D 0 - I - 0x00081A 00:880A: 85        .byte $85, $84, $84, $84, $84, $84, $66, $FF, $5E, $5F, $FF, $B0, $0E, $0F, $6D   ; 

off_8819_0F:
- D 0 - I - 0x000829 00:8819: 7D        .byte $7D, $7D, $66, $7D, $7D, $7D, $A7, $BA, $A4, $CF, $CF, $A6, $A7, $FF, $FF, $BA   ; 
- D 0 - I - 0x000839 00:8829: 9E        .byte $9E, $6D, $5E, $5F, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $C1, $CE, $C3   ; 



off_8839_0E:
- - - - - - 0x000849 00:8839: 56        .byte $56, $74, $74, $00, $66, $85, $84, $84, $84, $84, $84, $84, $66, $00, $74, $74   ; 
- D 0 - I - 0x000859 00:8849: 56        .byte $56, $56, $74, $C0, $00, $20, $31, $31, $32, $23, $20, $31, $32, $23, $20, $31   ; 



off_8859_0F:
- - - - - - 0x000869 00:8859: 77        .byte $77, $77, $B3, $00, $66, $85, $84, $84, $84, $84, $84, $84, $66, $00, $B2, $77   ; 
- D 0 - I - 0x000879 00:8869: 77        .byte $77, $77, $77, $B3, $00, $40, $41, $42, $42, $43, $40, $41, $42, $43   ; 
off_8877_0F:
- D 0 - I - 0x000887 00:8877: 40        .byte $40, $41, $43, $44, $44, $21, $44, $44, $44, $21, $35, $36, $44, $44, $21, $44   ; 
- - - - - - 0x000897 00:8887: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_8893_0B:
- D 0 - I - 0x0008A3 00:8893: 00        .byte $00, $00, $00, $00, $26, $27, $12, $13, $CF, $11, $1B, $7B, $3D, $5D, $11, $CF   ; 
- - - - - - 0x0008B3 00:88A3: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_88AE_05:
- D 0 - I - 0x0008BE 00:88AE: 00        .byte $00, $00, $00, $00, $00, $81, $82, $83, $84, $84, $84, $84, $84, $85, $86, $7B   ; 
- D 0 - I - 0x0008CE 00:88BE: 84        .byte $84, $84, $87, $88, $00, $00, $00, $00, $00   ; 
off_88C7_06:
- D 0 - I - 0x0008D7 00:88C7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $92, $93, $94, $95, $1C, $95, $95, $95, $95   ; 
- D 0 - I - 0x0008E7 00:88D7: 1C        .byte $1C, $96, $97, $00, $00, $00, $00, $00, $00   ; 
off_88E0_07:
- D 0 - I - 0x0008F0 00:88E0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $A2, $A3, $A4, $00, $2C, $00, $00, $00, $00   ; 
- D 0 - I - 0x000900 00:88F0: 2C        .byte $2C, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_88F9_04:
- D 0 - I - 0x000909 00:88F9: 00        .byte $00, $00, $00, $00, $00, $00, $00, $90, $60, $A1, $A1, $A1, $A1, $95, $96, $00   ; 
- - - - - - 0x000919 00:8909: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_8912_05:
- D 0 - I - 0x000922 00:8912: 00        .byte $00, $00, $00, $00, $00, $00, $00, $A0, $70, $CF, $10, $22, $28, $A5, $A6, $A7   ; 
- - - - - - 0x000932 00:8922: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_892B_06:
- D 0 - I - 0x00093B 00:892B: 00        .byte $00, $00, $00, $00, $00, $00, $00, $B0, $71, $44, $44, $44, $44, $B5, $44, $44   ; 
- - - - - - 0x00094B 00:893B: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_8945_12:
- D 0 - I - 0x000955 00:8945: 00        .byte $00, $00, $00, $00, $00, $00, $5D, $5D, $00, $00, $00, $00, $4D, $6E, $6D, $00   ; 
- D 0 - I - 0x000965 00:8955: 5D        .byte $5D, $00, $54, $00, $70, $71, $CF, $00, $00, $00, $00, $00, $00, $CF, $71, $71   ; 



_off028_0x000975_01:
- D 0 - I - 0x000975 00:8965: AA        .byte $AA, $AA, $AA, $AA, $AA, $FF, $33, $00   ; 
- D 0 - I - 0x00097D 00:896D: AA        .byte $AA, $AA, $AA, $AA, $AA, $FF, $F3, $F0   ; 
- D 0 - I - 0x000985 00:8975: AA        .byte $AA, $AA, $AA, $AA, $AA, $FF, $FF, $FF   ; 
- D 0 - I - 0x00098D 00:897D: AA        .byte $AA, $AA, $AA, $AA, $AA, $FF, $FF, $FF   ; 
- D 0 - I - 0x000995 00:8985: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- D 0 - I - 0x00099D 00:898D: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- - - - - - 0x0009A5 00:8995: 00        .byte $00, $00, $00, $22, $00, $00, $00, $00   ; 
- - - - - - 0x0009AD 00:899D: 00        .byte $00, $00, $00, $02   ; 



off_89A1_04:
- D 0 - I - 0x0009B1 00:89A1: 00        .byte $00, $00, $00, $00, $FF, $FF, $FF, $B0, $CF, $CF, $CF, $CF, $91, $91, $91, $91   ; 
- D 0 - I - 0x0009C1 00:89B1: 91        .byte $91, $91, $91, $91, $91, $91, $91, $91, $91, $91, $91, $91, $91, $91, $91, $91   ; 



off_89C1_02:
- D 0 - I - 0x0009D1 00:89C1: 26        .byte $26, $FF, $FF, $1A, $CE, $CE, $CE, $CE, $46, $48, $45, $46, $00, $00, $78, $CE   ; 
- D 0 - I - 0x0009E1 00:89D1: CE        .byte $CE, $CE, $CE, $CE, $CE, $35, $CE, $CE, $26, $26, $27, $CF, $78, $00, $00   ; 
off_89E0_1C:
- D 0 - I - 0x0009F0 00:89E0: 3B        .byte $3B, $3C, $3B, $5D, $5D, $5D, $00, $00, $5D, $00, $00, $00, $00, $00, $4D, $6E   ; 
- D 0 - I - 0x000A00 00:89F0: 6D        .byte $6D, $00, $00, $00, $00, $CE, $CE, $CE, $CE, $CE, $CE   ; 
off_89FB_0A:
- D 0 - I - 0x000A0B 00:89FB: CE        .byte $CE, $CE, $CE, $CE, $00, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $00, $CE, $5D, $00   ; 
- D 0 - I - 0x000A1B 00:8A0B: 4E        .byte $4E, $00, $54, $00, $70, $71, $CF, $00, $00, $00, $00, $00, $00, $CF, $71, $71   ; 



off_8A1B_03:
- D 0 - I - 0x000A2B 00:8A1B: C7        .byte $C7, $78, $CF, $1A, $46, $48, $CE, $CE, $FF, $00, $00, $00, $FF, $00, $78, $27   ; 
- D 0 - I - 0x000A3B 00:8A2B: FF        .byte $FF, $CE, $29, $CE, $CE, $45, $CE, $CE, $1A, $79, $FF, $CF, $78, $00, $00   ; 
off_8A3A_00:
- D 0 - I - 0x000A4A 00:8A3A: 3B        .byte $3B, $3C, $4C, $5D, $5D, $5D, $00, $00, $5D, $00, $00, $00, $00, $00, $5D, $4B   ; 
- D 0 - I - 0x000A5A 00:8A4A: 4C        .byte $4C, $00, $00, $00, $80, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $82   ; 



off_8A5A_04:
- D 0 - I - 0x000A6A 00:8A5A: C7        .byte $C7, $78, $C7, $28, $1A, $FF, $49, $49, $00, $57, $57, $57, $57, $FF, $78, $28   ; 
- D 0 - I - 0x000A7A 00:8A6A: 28        .byte $28, $49, $00, $89, $46, $FF, $46, $36, $36, $CF, $88, $88, $88, $00, $00   ; 
off_8A79_02:
- D 0 - I - 0x000A89 00:8A79: 3B        .byte $3B, $3C, $3B, $5D, $5D, $5D, $3B, $3C, $5D, $4C, $4F, $CE, $5E, $5F, $5D, $3B   ; 
- D 0 - I - 0x000A99 00:8A89: 3C        .byte $3C, $00, $A9, $B3, $90, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $92   ; 



off_8A99_05:
- D 0 - I - 0x000AA9 00:8A99: 88        .byte $88, $3A, $3A, $3A, $3A, $3A, $3A, $3A, $00, $2A, $57, $57, $2A, $FF, $00, $88   ; 
- D 0 - I - 0x000AB9 00:8AA9: 3A        .byte $3A, $00, $57, $2A, $3A, $3A, $3A, $3A, $3A, $88, $00, $57, $2A, $2A, $00, $3B   ; 



off_8AB9_0A:
- D 0 - I - 0x000AC9 00:8AB9: 32        .byte $32, $23, $12, $33, $01, $14, $14, $00, $00, $8E   ; 
off_8AC3_10:
- D 0 - I - 0x000AD3 00:8AC3: 8F        .byte $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F   ; 
off_8ACB_0E:
- D 0 - I - 0x000ADB 00:8ACB: 8F        .byte $8F, $8F, $8F, $8F   ; 
off_8ACF_12:
- D 0 - I - 0x000ADF 00:8ACF: 8F        .byte $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F   ; 
- D 0 - I - 0x000AEF 00:8ADF: 8F        .byte $8F, $8F, $8F, $8F, $CD   ; 
off_8AE4_01:
off_8AE4_03:
off_8AE4_06:
- D 0 - I - 0x000AF4 00:8AE4: CF        .byte $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $38, $00, $00, $00, $00   ; 
- D 0 - I - 0x000B04 00:8AF4: 00        .byte $00, $00, $00, $00   ; 
off_8AF8_1C:
- D 0 - I - 0x000B08 00:8AF8: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x000B18 00:8B08: 00        .byte $00, $00, $80, $81, $00, $00, $00, $00   ; 
off_8B10_12:
- D 0 - I - 0x000B20 00:8B10: 00        .byte $00, $00, $00, $00, $00, $00, $80, $81, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x000B30 00:8B20: 00        .byte $00, $00, $80, $81, $00, $00, $00, $00, $97, $98, $98   ; 
off_8B2B_05:
- D 0 - I - 0x000B3B 00:8B2B: 98        .byte $98, $98, $98, $98, $98, $AA, $7D, $7D, $66, $66, $6D, $7D, $7D, $7D, $97, $98   ; 
- D 0 - I - 0x000B4B 00:8B3B: 98        .byte $98, $98, $98, $98, $98, $AA, $0E, $0F, $CF, $CF, $CF, $CF   ; 
off_8B47_04:
- D 0 - I - 0x000B57 00:8B47: CF        .byte $CF, $CF, $CF, $CF, $0E, $0F, $0F, $2E, $CF, $CF, $CF, $38, $00, $00, $00, $00   ; 
- D 0 - I - 0x000B67 00:8B57: 00        .byte $00, $00   ; 
off_8B59_04:
- D 0 - I - 0x000B69 00:8B59: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $88, $89   ; 
- D 0 - I - 0x000B79 00:8B69: 8A        .byte $8A, $8B, $8C, $00, $00   ; 
off_8B6E_05:
- D 0 - I - 0x000B7E 00:8B6E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $3C, $00, $00, $00, $00, $98, $99   ; 
- D 0 - I - 0x000B8E 00:8B7E: 9A        .byte $9A, $9B, $9C, $00, $00, $00, $00, $00   ; 
off_8B86_06:
- D 0 - I - 0x000B96 00:8B86: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $CF, $CF, $CF, $CF, $90, $FF, $FF, $66   ; 
- D 0 - I - 0x000BA6 00:8B96: 85        .byte $85, $84, $84, $84, $84, $84, $66, $FF, $5E, $5F, $FF, $B0, $0E, $0F, $A7   ; 
off_8BA5_11:
- D 0 - I - 0x000BB5 00:8BA5: FF        .byte $FF, $C4, $CE, $CE, $C6, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x000BC5 00:8BB5: AD        .byte $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $FF, $AD, $AD   ; 



off_8BC5_0B:
- D 0 - I - 0x000BD5 00:8BC5: 42        .byte $42, $43, $33, $14, $01, $14, $34, $00, $8E, $C2, $BF, $BF, $BF, $BF, $BF, $BF   ; 
- D 0 - I - 0x000BE5 00:8BD5: BF        .byte $BF, $BF, $BF, $BF, $BF, $BF, $BF, $BF   ; 
off_8BDD_0B:
- D 0 - I - 0x000BED 00:8BDD: BF        .byte $BF, $BF, $BF, $BF, $BF, $BF, $BF, $BF, $5C, $CD, $CF, $CF, $90, $FF, $FF, $66   ; 
- D 0 - I - 0x000BFD 00:8BED: 85        .byte $85, $84, $84, $84, $84, $84, $66, $FF, $5E, $5F, $FF, $B0, $0E, $0F, $A7, $BA   ; 



off_8BFD_0C:
- D 0 - I - 0x000C0D 00:8BFD: 11        .byte $11, $13, $14, $14, $01, $34, $00, $8E, $AE, $AD, $AD, $AD, $AD, $AD, $AD, $AD   ; 
- D 0 - I - 0x000C1D 00:8C0D: AD        .byte $AD, $AD   ; 
off_8C0F_14:
- D 0 - I - 0x000C1F 00:8C0F: AD        .byte $AD, $AD, $AD, $AD, $FF, $AD, $AD   ; 
off_8C16_11:
- D 0 - I - 0x000C26 00:8C16: AD        .byte $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $FF, $AD, $AD, $AD, $AD   ; 
- D 0 - I - 0x000C36 00:8C26: AD        .byte $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $FF, $AC, $CD   ; 
off_8C32_05:
- D 0 - I - 0x000C42 00:8C32: CF        .byte $CF, $CF, $CF, $CF, $1E, $1F, $1F, $3E, $CF, $CF, $CF, $38, $00, $00, $00, $00   ; 
- D 0 - I - 0x000C52 00:8C42: 00        .byte $00, $00   ; 
off_8C44_06:
- D 0 - I - 0x000C54 00:8C44: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $A8, $A9   ; 
- D 0 - I - 0x000C64 00:8C54: AA        .byte $AA, $AB, $AC, $00   ; 
off_8C58_1B:
- D 0 - I - 0x000C68 00:8C58: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x000C78 00:8C68: 4D        .byte $4D, $4E, $4E, $4F, $4E, $4E, $4E, $4E, $4F, $4E, $4E, $4E, $4E, $4E, $4F, $4E   ; 



off_8C78_0E:
- D 0 - I - 0x000C88 00:8C78: 32        .byte $32, $23, $14, $34, $00, $8E, $AE   ; 
off_8C7F_17:
- D 0 - I - 0x000C8F 00:8C7F: FF        .byte $FF   ; 
off_8C80_16:
- D 0 - I - 0x000C90 00:8C80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x000CA0 00:8C90: FF        .byte $FF, $FF, $FF, $FF, $FF   ; 
off_8C95_13:
- D 0 - I - 0x000CA5 00:8C95: FF        .byte $FF   ; 
off_8C96_12:
- D 0 - I - 0x000CA6 00:8C96: FF        .byte $FF, $FF   ; 
off_8C98_10:
- D 0 - I - 0x000CA8 00:8C98: C4        .byte $C4, $CE, $CE, $C6   ; 
off_8C9C_11:
off_8C9C_12:
off_8C9C_13:
off_8C9C_15:
off_8C9C_14:
off_8C9C_0F:
off_8C9C_16:
off_8C9C_17:
- D 0 - I - 0x000CAC 00:8C9C: FF        .byte $FF   ; 
off_8C9D_16:
- D 0 - I - 0x000CAD 00:8C9D: FF        .byte $FF   ; 
off_8C9E_15:
- D 0 - I - 0x000CAE 00:8C9E: FF        .byte $FF   ; 
off_8C9F_14:
- D 0 - I - 0x000CAF 00:8C9F: FF        .byte $FF   ; 
off_8CA0_13:
- D 0 - I - 0x000CB0 00:8CA0: FF        .byte $FF   ; 
off_8CA1_12:
- D 0 - I - 0x000CB1 00:8CA1: FF        .byte $FF, $FF   ; 
off_8CA3_10:
- D 0 - I - 0x000CB3 00:8CA3: FF        .byte $FF   ; 
off_8CA4_0F:
- D 0 - I - 0x000CB4 00:8CA4: FF        .byte $FF, $FF, $FF   ; 
off_8CA7_14:
- D 0 - I - 0x000CB7 00:8CA7: FF        .byte $FF   ; 
off_8CA8_13:
- D 0 - I - 0x000CB8 00:8CA8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x000CC8 00:8CB8: FF        .byte $FF, $FF, $FF, $FF, $AC, $CD, $CF, $CF, $CF, $CF, $CF   ; 
off_8CC3_0A:
- D 0 - I - 0x000CD3 00:8CC3: CF        .byte $CF, $CF, $CF, $CF, $CF, $FF, $1A, $CF, $78, $CF, $78, $C7, $20, $31, $31, $32   ; 
- D 0 - I - 0x000CE3 00:8CD3: 23        .byte $23, $20, $31, $32, $23, $00, $A0, $74, $74, $00, $66, $85, $84, $84   ; 
off_8CE1_07:
- D 0 - I - 0x000CF1 00:8CE1: 84        .byte $84, $84, $66, $00, $56, $74, $74, $C0, $CF, $CF, $CF, $CF, $B1, $B1, $B1, $B1   ; 
- D 0 - I - 0x000D01 00:8CF1: B1        .byte $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1   ; 



off_8D01_0F:
- D 0 - I - 0x000D11 00:8D01: 42        .byte $42, $43, $34, $00, $8E, $AE, $FF, $FF, $FF   ; 
off_8D0A_0D:
- D 0 - I - 0x000D1A 00:8D0A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x000D2A 00:8D1A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $8C, $8D   ; 
off_8D23_16:
- D 0 - I - 0x000D33 00:8D23: 8D        .byte $8D, $8D, $8D, $8D, $8D, $6E, $6F, $FF, $FF, $FF   ; 
off_8D2D_16:
- D 0 - I - 0x000D3D 00:8D2D: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $8C, $8D, $8D, $8D, $8D, $8D, $8D   ; 
- D 0 - I - 0x000D4D 00:8D3D: 8D        .byte $8D, $6E, $6F, $FF   ; 
off_8D41_10:
- D 0 - I - 0x000D51 00:8D41: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $32   ; 
off_8D4E_16:
- D 0 - I - 0x000D5E 00:8D4E: CF        .byte $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF   ; 
- D 0 - I - 0x000D6E 00:8D5E: CF        .byte $CF, $CF, $CF, $CF   ; 
off_8D62_10:
- D 0 - I - 0x000D72 00:8D62: CF        .byte $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $31, $FF, $FF, $FF   ; 
- D 0 - I - 0x000D82 00:8D72: FF        .byte $FF, $40, $30, $00, $39, $5D, $85, $A6, $86, $CE, $CE, $87, $A8, $85, $5D   ; 
off_8D81_16:
- D 0 - I - 0x000D91 00:8D81: 85        .byte $85, $84, $84, $84, $00, $66, $9E, $9E, $66, $00, $85, $84, $84, $84, $00, $66   ; 
- D 0 - I - 0x000DA1 00:8D91: 9E        .byte $9E, $9E, $9E, $9E, $9E, $9E, $9E, $9E, $A7, $CE, $FF, $CE, $FF, $CE   ; 
off_8D9F_05:
- D 0 - I - 0x000DAF 00:8D9F: FF        .byte $FF, $FF, $46, $46, $FF, $CE, $48, $45, $FF, $46, $FF, $46, $20, $21, $22, $23   ; 
- D 0 - I - 0x000DBF 00:8DAF: 20        .byte $20, $21, $21, $22, $23, $00, $90, $FF, $FF, $00, $67, $86, $76, $76   ; 
off_8DBD_05:
- D 0 - I - 0x000DCD 00:8DBD: 76        .byte $76, $76, $67, $00, $FF, $54, $55, $B0, $CF, $CF, $CF, $CF, $A1, $A1, $A1, $A1   ; 
- D 0 - I - 0x000DDD 00:8DCD: A1        .byte $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1   ; 
off_8DD9_06:
- D 0 - I - 0x000DE9 00:8DD9: A1        .byte $A1, $A1, $A1, $A1, $3A, $85, $85, $85, $85, $92, $5D, $5D, $3B, $3C, $5D, $5D   ; 
- D 0 - I - 0x000DF9 00:8DE9: CE        .byte $CE, $CE   ; 
off_8DEB_01:
- D 0 - I - 0x000DFB 00:8DEB: CE        .byte $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $20, $21   ; 
- D 0 - I - 0x000E0B 00:8DFB: 22        .byte $22, $23, $20, $21, $22, $23, $90, $FF, $06, $07, $08, $07, $08, $09   ; 
off_8E09_00:
- D 0 - I - 0x000E19 00:8E09: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $9D, $CF, $CF, $CF, $17, $00, $FF, $1B, $1B, $FF   ; 
- D 0 - I - 0x000E29 00:8E19: FF        .byte $FF, $FF, $1B, $FF, $29, $2A, $1B, $FF, $FF, $FF, $1B, $FF, $FF, $FF, $C7   ; 
off_8E28_08:
- D 0 - I - 0x000E38 00:8E28: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $00, $00, $98, $00, $00, $00, $FF, $1B, $1B, $FF   ; 
- D 0 - I - 0x000E48 00:8E38: FF        .byte $FF, $FF, $1B, $FF, $29, $2A, $1B, $FF, $FF, $FF, $1B, $FF, $FF, $FF, $C7   ; 
off_8E47_09:
- D 0 - I - 0x000E57 00:8E47: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $00, $00, $98, $00, $00, $00, $C6, $1B, $1B, $C6   ; 
- D 0 - I - 0x000E67 00:8E57: FF        .byte $FF, $C6, $1B, $C6, $39, $3A, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $C7, $C6   ; 



_off028_0x000E77_03:
- D 0 - I - 0x000E77 00:8E67: 55        .byte $55, $55, $55, $AA, $AA, $AA, $BB, $FF   ; 
- D 0 - I - 0x000E7F 00:8E6F: F5        .byte $F5, $F5, $55, $AA, $AA, $AA, $BB, $FF   ; 
- D 0 - I - 0x000E87 00:8E77: 5F        .byte $5F, $5F, $55, $AA, $AA, $AA, $BB, $FF   ; 
- D 0 - I - 0x000E8F 00:8E7F: 55        .byte $55, $55, $55, $5A, $50, $58, $5B, $5F   ; 
- D 0 - I - 0x000E97 00:8E87: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- D 0 - I - 0x000E9F 00:8E8F: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- - - - - - 0x000EA7 00:8E97: 00        .byte $00, $41, $50, $50, $50, $40, $51, $10   ; 
- - - - - - 0x000EAF 00:8E9F: 00        .byte $00, $00, $00, $05, $05   ; 



_off028_0x000EB4_02:
- D 0 - I - 0x000EB4 00:8EA4: 00        .byte $00, $00, $00, $32, $00, $00, $00, $44   ; 
- D 0 - I - 0x000EBC 00:8EAC: F0        .byte $F0, $F0, $FF, $F3, $F0, $F0, $F0, $F4   ; 
- D 0 - I - 0x000EC4 00:8EB4: FF        .byte $FF, $FF, $5F, $5F, $5F, $5F, $5F, $5F   ; 
- D 0 - I - 0x000ECC 00:8EBC: FF        .byte $FF, $57, $55, $55, $55, $55, $55, $55   ; 
- D 0 - I - 0x000ED4 00:8EC4: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- D 0 - I - 0x000EDC 00:8ECC: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- - - - - - 0x000EE4 00:8ED4: 00        .byte $00, $00, $00, $22   ; 



off_8ED8_17:
- - - - - - 0x000EE8 00:8ED8: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x000EF8 00:8EE8: 5E        .byte $5E, $5F, $6C, $6D, $7D, $7D, $7D, $7D, $9E, $9E, $9E, $7D, $9E, $9E, $66   ; 
off_8EF7_08:
- D 0 - I - 0x000F07 00:8EF7: 00        .byte $00, $C8, $6D, $6D, $6D, $8B, $00, $C8, $6D, $6D, $6C, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x000F17 00:8F07: 66        .byte $66, $9E, $9E, $9E, $9E, $9E, $66, $9E, $9E, $9E, $9E, $7D, $66, $7D   ; 
off_8F15_07:
- D 0 - I - 0x000F25 00:8F15: 7D        .byte $7D, $7D, $66, $9E, $9E, $7D, $A7, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $BA   ; 
- D 0 - I - 0x000F35 00:8F25: 9E        .byte $9E, $6D, $5E, $5F, $CF, $C1, $CE, $C3, $00, $00, $00, $6C, $6C, $6D   ; 
off_8F33_1D:
- D 0 - I - 0x000F43 00:8F33: 6C        .byte $6C, $6C, $67, $6C, $6C, $6C, $6C, $6C, $67, $6C, $00, $00, $6C, $6C, $67, $6C   ; 
- D 0 - I - 0x000F53 00:8F43: 6C        .byte $6C, $6C, $5E, $5F, $6C, $6D, $9E, $9E, $0E, $0F   ; 
off_8F4D_08:
- D 0 - I - 0x000F5D 00:8F4D: 00        .byte $00, $00, $00, $00, $00, $00, $90, $91, $91, $91, $91, $3C, $91, $91, $91, $91   ; 
- D 0 - I - 0x000F6D 00:8F5D: 3C        .byte $3C, $91, $91, $00, $00, $00, $00, $00, $00, $00   ; 
off_8F67_07:
- D 0 - I - 0x000F77 00:8F67: 00        .byte $00, $00, $00, $00, $00, $00, $84, $85, $B4, $01, $B4, $B4, $B4, $B4, $01, $B4   ; 
- - - - - - 0x000F87 00:8F77: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_8F81_13:
- D 0 - I - 0x000F91 00:8F81: 00        .byte $00, $00, $00, $00, $00, $00, $97, $98, $00, $00, $35, $36, $00, $00, $00, $00   ; 
- - - - - - 0x000FA1 00:8F91: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_8F9B_11:
- D 0 - I - 0x000FAB 00:8F9B: 00        .byte $00, $00, $00, $00, $00, $00, $5D, $5D, $00, $00, $00, $00, $00, $00, $5D, $00   ; 
- D 0 - I - 0x000FBB 00:8FAB: 5D        .byte $5D, $54, $00, $54, $90, $FF, $CF, $00, $00, $00, $00, $00, $00   ; 
off_8FB8_07:
- D 0 - I - 0x000FC8 00:8FB8: CF        .byte $CF, $FF, $FF, $1A, $1A, $46, $FF, $FF, $FF, $1A, $FF, $79, $40, $42, $42, $43   ; 
- D 0 - I - 0x000FD8 00:8FC8: 40        .byte $40, $41, $41, $42, $43, $00, $A0, $74, $74, $00, $66, $85, $84, $84   ; 
off_8FD6_0B:
- D 0 - I - 0x000FE6 00:8FD6: 84        .byte $84, $84, $66, $00, $B2, $77, $77, $B3, $7B, $7C, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x000FF6 00:8FE6: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
off_8FEE_06:
- D 0 - I - 0x000FFE 00:8FEE: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $54, $55, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x00100E 00:8FFE: FF        .byte $FF, $FF, $FF, $B0, $20, $31, $32, $23, $14, $52, $15, $03, $03, $03, $15   ; 
off_900D_06:
- D 0 - I - 0x00101D 00:900D: 03        .byte $03, $03, $03, $04, $00, $00, $00, $00, $00, $57, $2A, $2A, $57, $FF, $00, $00   ; 
- D 0 - I - 0x00102D 00:901D: 00        .byte $00   ; 
off_901E_08:
- D 0 - I - 0x00102E 00:901E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $C9   ; 
- D 0 - I - 0x00103E 00:902E: CA        .byte $CA, $CB, $00, $00, $00, $00   ; 
off_9034_02:
- D 0 - I - 0x001044 00:9034: 00        .byte $00, $00, $00, $00, $3C, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x001054 00:9044: 00        .byte $00, $00   ; 
off_9046_0A:
- D 0 - I - 0x001056 00:9046: 00        .byte $00, $00, $00, $00, $00, $00, $3C   ; 
off_904D_00:
off_904D_18:
off_904D_19:
off_904D_1A:
off_904D_1B:
off_904D_1C:
off_904D_1D:
off_904D_09:
off_904D_0A:
off_904D_0B:
off_904D_01:
off_904D_1E:
off_904D_1F:
off_904D_20:
off_904D_21:
off_904D_22:
off_904D_23:
off_904D_24:
off_904D_25:
off_904D_26:
off_904D_27:
off_904D_28:
off_904D_29:
off_904D_2A:
off_904D_2B:
off_904D_2C:
off_904D_2D:
off_904D_2E:
off_904D_2F:
off_904D_30:
off_904D_31:
off_904D_36:
off_904D_37:
off_904D_38:
off_904D_39:
off_904D_3A:
off_904D_3B:
off_904D_02:
off_904D_03:
off_904D_04:
off_904D_05:
off_904D_06:
off_904D_07:
off_904D_08:
off_904D_0C:
off_904D_0D:
- D 0 - I - 0x00105D 00:904D: 00        .byte $00, $00   ; 
off_904F_0B:
- D 0 - I - 0x00105F 00:904F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 0 - I - 0x00106F 00:905F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_906B_07:
- D 0 - I - 0x00107B 00:906B: 00        .byte $00, $00, $3C, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $B8, $B9   ; 
- D 0 - I - 0x00108B 00:907B: BA        .byte $BA, $BB, $BC, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_9087_19:
- D 0 - I - 0x001097 00:9087: 00        .byte $00, $00, $00, $00, $4E, $4E, $00, $00, $4D, $6E, $6E, $6E, $6D, $00, $00, $00   ; 
- D 0 - I - 0x0010A7 00:9097: 4E        .byte $4E, $00, $00, $54, $90, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $B0, $B1   ; 
off_90A5_0D:
- D 0 - I - 0x0010B5 00:90A5: FF        .byte $FF, $FF, $FF, $00, $66, $85, $84, $84, $84, $84, $84, $84, $66, $00, $FF, $FF   ; 
- D 0 - I - 0x0010C5 00:90B5: FF        .byte $FF, $FF, $FF, $B0, $00, $20, $21, $21, $22, $23   ; 
off_90BF_0E:
- D 0 - I - 0x0010CF 00:90BF: 20        .byte $20, $21, $22, $23, $20, $21, $22, $23, $20, $21, $22, $23, $20, $21, $22, $23   ; 
- D 0 - I - 0x0010DF 00:90CF: 20        .byte $20, $21, $22, $23, $20, $21, $22, $23, $20, $21, $22, $23, $20, $21   ; 
off_90DD_09:
- D 0 - I - 0x0010ED 00:90DD: 22        .byte $22, $23, $14, $12, $04, $14, $14, $00, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1   ; 
- D 0 - I - 0x0010FD 00:90ED: B1        .byte $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1   ; 
off_90F5_09:
- D 0 - I - 0x001105 00:90F5: B1        .byte $B1, $B1, $B1, $B1, $B1, $B1, $B1, $B1, $CF, $CF, $CF, $CF, $90, $FF, $FF, $66   ; 
- D 0 - I - 0x001115 00:9105: 85        .byte $85, $84, $84, $84, $84, $84, $66, $FF, $5E, $5F, $FF, $B0, $0E, $0F, $A7, $BA   ; 
off_9115_01:
- D 0 - I - 0x001125 00:9115: BC        .byte $BC, $BE, $7D, $7D, $BB, $BC, $BE, $7D, $66, $66, $6D, $7D, $BB, $BC, $BE, $7D   ; 
- D 0 - I - 0x001135 00:9125: 7D        .byte $7D, $BB, $BC, $BE, $7D, $7D, $0E, $0F, $CF, $CF, $CF, $CF, $CF   ; 
off_9132_07:
- D 0 - I - 0x001142 00:9132: CF        .byte $CF, $CF, $CF, $2B, $10, $10, $10, $10, $20, $CF, $CF, $38, $00, $00, $00, $00   ; 
- D 0 - I - 0x001152 00:9142: 00        .byte $00, $00, $00, $00   ; 
off_9146_09:
- D 0 - I - 0x001156 00:9146: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $BD, $BE, $BF, $00   ; 
- D 0 - I - 0x001166 00:9156: 00        .byte $00, $00, $6D, $6E, $6F, $00, $00   ; 
off_915D_01:
- D 0 - I - 0x00116D 00:915D: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $54, $00, $57, $CF, $40, $00, $53   ; 
- D 0 - I - 0x00117D 00:916D: 57        .byte $57, $68, $CF, $CF, $23, $65, $00, $D7, $D7, $D7, $D7, $00, $69, $CF, $CF, $59   ; 



off_917D_06:
- D 0 - I - 0x00118D 00:917D: 06        .byte $06, $07, $08, $09, $FF, $BA, $7D, $7D, $66, $66, $6D, $7D, $7D, $7D, $A7, $FF   ; 
- D 0 - I - 0x00119D 00:918D: 06        .byte $06, $07, $08, $09, $FF, $BA, $0E, $0F, $CF, $CF, $CF, $CF, $CF   ; 
off_919A_08:
- D 0 - I - 0x0011AA 00:919A: CF        .byte $CF, $CF, $CF, $3B, $A0, $B2, $B2, $A1, $45, $CF, $CF, $38, $00, $00, $00, $00   ; 
- D 0 - I - 0x0011BA 00:91AA: 00        .byte $00, $00, $00, $00, $00, $00, $00   ; 
off_91B1_03:
- D 0 - I - 0x0011C1 00:91B1: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $91, $92, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0011D1 00:91C1: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_91C9_02:
- D 0 - I - 0x0011D9 00:91C9: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $54, $56, $55, $57, $CF, $40, $00, $53   ; 
- D 0 - I - 0x0011E9 00:91D9: 57        .byte $57, $68, $51, $52, $23, $75, $00, $00, $00, $00, $00, $69, $CF, $CF, $59   ; 
off_91E8_0F:
- D 0 - I - 0x0011F8 00:91E8: 00        .byte $00, $C8, $6D, $6D, $6D, $8B, $00, $C8, $6D, $6D, $6C, $00, $0E, $0F, $A7, $BA   ; 
- D 0 - I - 0x001208 00:91F8: A4        .byte $A4, $CF, $CF, $A6, $A7, $FF, $FF, $BA, $9E, $9E, $9E, $9E, $66, $7D   ; 
off_9206_0E:
- D 0 - I - 0x001216 00:9206: 7D        .byte $7D, $7D, $66, $7D, $7D, $7D, $A7, $BA, $A4, $CF, $CF, $A6, $A7, $FF, $FF, $BA   ; 
- D 0 - I - 0x001226 00:9216: 9E        .byte $9E, $6D, $5E, $5F, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $C1, $CE, $C3   ; 
off_9225_10:
- D 0 - I - 0x001235 00:9225: 00        .byte $00, $C8, $6D, $6D, $6D, $8B, $00, $C8, $6D, $6D, $6C, $00, $0E, $0F, $A7, $BA   ; 
- D 0 - I - 0x001245 00:9235: A4        .byte $A4, $CF, $CF, $A6, $A7, $FF, $FF, $BA, $1D   ; 
off_923E_16:
- D 0 - I - 0x00124E 00:923E: 1E        .byte $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1E   ; 
- D 0 - I - 0x00125E 00:924E: 1E        .byte $1E, $1E, $1E, $1E, $1E, $1E, $1E, $1F, $CF, $CF, $CF, $CF, $CF, $CF, $CF   ; 
off_925D_08:
- D 0 - I - 0x00126D 00:925D: CF        .byte $CF, $FF, $1A, $FF, $FF, $FF, $1A, $CF, $7A, $7A, $7A, $CF, $10, $11, $11, $11   ; 
- D 0 - I - 0x00127D 00:926D: 13        .byte $13, $10, $11, $11, $13, $00, $90, $FF, $FF, $00, $66, $85, $84, $84   ; 
off_927B_08:
- D 0 - I - 0x00128B 00:927B: 84        .byte $84, $84, $66, $00, $FF, $FF, $FF, $B0, $CF, $CF, $CF, $7B, $8F, $8F, $8F, $8F   ; 
- D 0 - I - 0x00129B 00:928B: 8F        .byte $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F   ; 
off_9296_0A:
- D 0 - I - 0x0012A6 00:9296: 8F        .byte $8F, $8F, $8F, $8F, $8F, $7E, $3E, $6E, $6E, $6E, $6E, $3E, $39, $85, $85, $85   ; 
- D 0 - I - 0x0012B6 00:92A6: 00        .byte $00, $FF, $FF, $FF, $39, $5D, $85, $A6, $00, $00, $00, $00, $A8, $85, $5D   ; 
off_92B5_17:
- D 0 - I - 0x0012C5 00:92B5: 85        .byte $85, $84, $84, $84, $00, $66, $9E, $9E, $66, $00, $85, $84, $84, $84, $00, $66   ; 
- D 0 - I - 0x0012D5 00:92C5: 9E        .byte $9E, $9E, $9E, $9E, $9E, $9E, $9E, $9E, $A7, $CE, $FF, $CE, $FF, $CE, $CE   ; 
off_92D4_0A:
- D 0 - I - 0x0012E4 00:92D4: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $00, $00, $98, $00, $00, $44, $41, $42, $49, $4A   ; 
- D 0 - I - 0x0012F4 00:92E4: 42        .byte $42, $41, $42, $41, $42, $41, $42, $41, $42, $43, $2F, $FF, $FF, $FF, $C7   ; 
off_92F3_0B:
- D 0 - I - 0x001303 00:92F3: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $00, $00, $B6, $00, $00, $A6, $A7, $A8, $19, $1A   ; 
- D 0 - I - 0x001313 00:9303: A8        .byte $A8, $A7, $A8, $A7, $A8, $A7, $A8, $A7, $A8, $A5, $4E, $C6, $FF, $C6, $C7, $C6   ; 



off_9313_08:
- D 0 - I - 0x001323 00:9313: 94        .byte $94, $95, $95, $96, $A7, $BA, $7D, $7D, $66, $66, $6D, $7D, $7D, $7D, $A7, $BA   ; 
- D 0 - I - 0x001333 00:9323: 94        .byte $94, $95, $95, $96, $A7, $BA, $0E, $0F, $CF, $CF, $CF, $CF, $CF   ; 
off_9330_0A:
- D 0 - I - 0x001340 00:9330: CF        .byte $CF, $CF, $CF, $3B, $B0, $51, $52, $B1, $45, $CF, $CF, $38, $00, $00, $00, $00   ; 
- D 0 - I - 0x001350 00:9340: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_9349_15:
- D 0 - I - 0x001359 00:9349: 00        .byte $00, $00, $00, $00, $00, $00, $00, $38, $00, $00, $00, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x001369 00:9359: 5E        .byte $5E, $5F, $6C, $6D, $7D, $7D, $7D, $7D, $8B, $00, $C8, $9E, $9E, $9E, $66   ; 
off_9368_17:
- D 0 - I - 0x001378 00:9368: 00        .byte $00, $C8, $6D, $6D, $6D, $8B, $00, $00, $CF, $CF, $CF, $CB, $A8, $FF, $FF, $FF   ; 
- D 0 - I - 0x001388 00:9378: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $AC, $CD, $2D, $2E, $2E, $2E   ; 



off_9388_09:
off_9388_0A:
off_9388_0B:
off_9388_0C:
- D 0 - I - 0x001398 00:9388: A4        .byte $A4, $CF, $CF, $A6, $A7, $BA, $7D, $7D, $66, $66, $6D, $7D, $7D, $7D, $A7, $BA   ; 
- D 0 - I - 0x0013A8 00:9398: A4        .byte $A4, $CF, $CF, $A6, $A7, $BA, $0E, $0F, $CF, $CF, $CF, $CF, $CF   ; 
off_93A5_09:
off_93A5_0B:
- D 0 - I - 0x0013B5 00:93A5: CF        .byte $CF, $CF, $CF, $3B, $B0, $CF, $CF, $B1, $45, $CF, $CF, $38, $00, $00, $00, $00   ; 
- D 0 - I - 0x0013C5 00:93B5: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_93BE_03:
- D 0 - I - 0x0013CE 00:93BE: 00        .byte $00, $00, $00, $00, $00, $00, $00, $63, $64, $66, $00, $BD, $BE, $40, $00, $53   ; 
- D 0 - I - 0x0013DE 00:93CE: 57        .byte $57, $30, $31, $32, $33, $89, $89, $89, $89, $89, $8A, $8B, $CF, $59   ; 
off_93DC_0E:
- D 0 - I - 0x0013EC 00:93DC: 00        .byte $00, $00, $CF, $78, $CF, $CF, $79, $CF, $C7, $CF, $CF, $CF, $1B, $FF, $AD, $AD   ; 
- D 0 - I - 0x0013FC 00:93EC: AD        .byte $AD, $AD, $AD, $AD, $AD, $AD   ; 
off_93F2_0E:
- D 0 - I - 0x001402 00:93F2: AD        .byte $AD, $AD, $FF, $AD, $AD, $AD, $AD, $FF, $AD, $AD, $AD, $AD, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x001412 00:9402: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $9B, $9C, $9D   ; 
off_940B_17:
- D 0 - I - 0x00141B 00:940B: 9D        .byte $9D, $9D, $9D, $9D, $9D, $7E, $7F, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x00142B 00:941B: A8        .byte $A8, $FF, $9B, $9C, $9D, $9D, $9D, $9D, $9D, $9D, $9D, $7E, $7F   ; 
off_9428_07:
- D 0 - I - 0x001438 00:9428: FF        .byte $FF, $FF, $FF, $56, $74, $74, $74, $56, $56, $56, $56, $74, $56, $56, $FF, $FF   ; 
- D 0 - I - 0x001448 00:9438: FF        .byte $FF, $FF, $FF, $B0, $40, $41, $42, $43, $52, $02, $25, $50, $50, $02, $25   ; 
off_9447_07:
- D 0 - I - 0x001457 00:9447: 50        .byte $50, $50, $04, $14, $03, $03, $04, $00, $91, $91, $91, $91, $91, $91, $91, $91   ; 
- D 0 - I - 0x001467 00:9457: 91        .byte $91, $91, $91, $91, $91, $91, $91, $91   ; 
off_945F_07:
- D 0 - I - 0x00146F 00:945F: 91        .byte $91, $91, $91, $91, $91, $91, $91, $91, $CF, $CF, $CF, $CF, $A0, $74, $74, $66   ; 
- D 0 - I - 0x00147F 00:946F: 85        .byte $85, $84, $84, $84, $84, $84, $66, $56, $5E, $5F, $74, $C0, $0E, $0F, $A7, $B7   ; 
off_947F_0D:
- D 0 - I - 0x00148F 00:947F: B4        .byte $B4, $B5, $B5, $B6, $A7, $BA, $7D, $7D, $66, $66, $6D, $7D, $7D, $7D, $A7, $BA   ; 
- D 0 - I - 0x00149F 00:948F: B4        .byte $B4, $B5, $B5, $B6, $A7, $BA, $0E, $0F, $CF, $CF, $CF, $CF, $CF   ; 
off_949C_0C:
- D 0 - I - 0x0014AC 00:949C: CF        .byte $CF, $CF, $CF, $3B, $B0, $CF, $CF, $4C, $45, $CF, $CF, $38, $60, $60, $60, $60   ; 
- D 0 - I - 0x0014BC 00:94AC: 60        .byte $60, $60, $60, $60, $60, $60, $60, $60, $60, $60, $60, $00   ; 
off_94B8_0C:
- D 0 - I - 0x0014C8 00:94B8: 14        .byte $14, $14, $14, $14, $60, $60, $60, $60, $60, $60, $60, $00, $B9, $B9, $09, $0A   ; 
off_94C8_14:
off_94C8_32:
- D 0 - I - 0x0014D8 00:94C8: B9        .byte $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9   ; 
- D 0 - I - 0x0014E8 00:94D8: B9        .byte $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9, $B9   ; 



off_94E8_06:
- - - - - - 0x0014F8 00:94E8: 79        .byte $79, $FF, $FF, $1A, $1A, $CE, $FF, $FF, $1A, $1A, $FF, $FF, $20, $31, $32, $23   ; 
- D 0 - I - 0x001508 00:94F8: 20        .byte $20, $31, $31, $32, $23, $00, $90, $FF, $FF, $00, $66, $85, $84, $84   ; 
off_9506_06:
- D 0 - I - 0x001516 00:9506: 84        .byte $84, $84, $66, $00, $FF, $FF, $FF, $B0, $CF, $CF, $CF, $CF, $A1, $A1, $A1, $A1   ; 
- D 0 - I - 0x001526 00:9516: A1        .byte $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1   ; 
off_9525_07:
off_9525_08:
- D 0 - I - 0x001535 00:9525: A1        .byte $A1, $A9, $00   ; 
off_9528_07:
off_9528_08:
- D 0 - I - 0x001538 00:9528: A1        .byte $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1   ; 
- D 0 - I - 0x001548 00:9538: A1        .byte $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1   ; 



off_9548_0D:
- - - - - - 0x001558 00:9548: 3A        .byte $3A, $88, $CF, $78, $CF, $FF, $FF, $CF, $78, $CF, $C7, $CF, $1B, $FF, $FF, $FF   ; 
- D 0 - I - 0x001568 00:9558: FF        .byte $FF, $FF, $FF, $FF, $FF   ; 
off_955D_0E:
- D 0 - I - 0x00156D 00:955D: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $AC, $8F, $8F, $8F, $8F   ; 
- D 0 - I - 0x00157D 00:956D: 8F        .byte $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F   ; 
off_9575_0C:
- D 0 - I - 0x001585 00:9575: 8F        .byte $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $7C, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x001595 00:9585: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
off_958D_17:
- D 0 - I - 0x00159D 00:958D: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $9B, $9C, $9D, $9D, $9D, $9D, $9D, $9D   ; 
- D 0 - I - 0x0015AD 00:959D: 9D        .byte $9D, $7E, $7F, $FF, $FF, $FF, $FF, $FF, $A8   ; 
off_95A6_01:
- D 0 - I - 0x0015B6 00:95A6: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $B0, $CF, $CF, $CF, $CF, $57, $57, $CE, $58   ; 
- D 0 - I - 0x0015C6 00:95B6: CE        .byte $CE, $CE, $CE, $CE, $CE, $35, $CE, $CE, $CE, $CE, $CE, $00, $2A, $57, $57, $57   ; 



off_95C6_16:
- - - - - - 0x0015D6 00:95C6: A5        .byte $A5, $00, $A5, $00, $A5, $00, $00, $00, $00, $A5, $00, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x0015E6 00:95D6: 5E        .byte $5E, $5F, $6C, $6D, $7D, $7D, $7D, $7D, $BB, $BC, $BE, $7D, $9E, $9E, $66   ; 
off_95E5_00:
off_95E5_1D:
- D 0 - I - 0x0015F5 00:95E5: 00        .byte $00, $C8, $7D, $7D, $8B, $00, $C8, $7D, $66, $66, $6D, $7D, $8B, $00, $C8, $7D   ; 
- D 0 - I - 0x001605 00:95F5: 7D        .byte $7D, $8B, $00, $C8, $7D, $7D, $0E, $0F, $CF, $CF, $CF, $CF, $CF, $CF, $CF   ; 
off_9604_05:
- D 0 - I - 0x001614 00:9604: CF        .byte $CF, $51, $52, $26, $26, $6F, $04, $B3, $CF, $00, $00, $00, $C6, $1B, $1B, $C6   ; 
- D 0 - I - 0x001624 00:9614: FF        .byte $FF, $C6, $1B, $C6, $19, $1A, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $C7, $C6   ; 



off_9624_18:
- - - - - - 0x001634 00:9624: A5        .byte $A5, $00, $00, $00, $A5, $00, $00, $00, $00, $00, $00, $A5, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x001644 00:9634: 5E        .byte $5E, $5F, $6C, $6D, $7D, $7D, $7D, $7D, $9E, $9E, $9E, $9E, $9E, $9E, $66   ; 
off_9643_00:
- D 0 - I - 0x001653 00:9643: 00        .byte $00, $00, $19, $1A, $00, $00, $00, $00, $19, $1A, $13, $07, $06, $07, $06, $07   ; 
- D 0 - I - 0x001663 00:9653: 06        .byte $06, $16, $29, $2A, $CF, $CF, $CF, $00, $6F, $00, $27, $26, $29, $2A, $00, $27   ; 



off_9663_1D:
- - - - - - 0x001673 00:9663: 1C        .byte $1C, $1C, $1C, $1C, $1C, $1C, $1C, $1C, $1C, $1C, $1C, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x001683 00:9673: 67        .byte $67, $6C, $00, $00, $00, $6C, $67, $6C, $6C, $6C, $6C, $6C, $67, $6C   ; 
off_9681_0F:
- D 0 - I - 0x001691 00:9681: 00        .byte $00, $00, $CF, $C7, $CF, $CF, $CF, $CF, $3A, $3A, $3A, $3A, $1B, $FF, $FF, $FF   ; 
- D 0 - I - 0x0016A1 00:9691: A8        .byte $A8, $FF, $FF, $FF, $FF, $FF   ; 
off_9697_0D:
- D 0 - I - 0x0016A7 00:9697: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $AC, $CD, $B2, $77, $B3, $66   ; 
- D 0 - I - 0x0016B7 00:96A7: 00        .byte $00, $00, $00, $00, $00, $00, $66, $77, $5E, $5F, $77, $B3, $0E, $0F, $A7, $BA   ; 



off_96B7_03:
- D 0 - I - 0x0016C7 00:96B7: 56        .byte $56, $56, $74, $74, $FF, $FF, $FF, $B0, $CF, $CF, $CF, $CF, $2A, $57, $88, $38   ; 
- D 0 - I - 0x0016D7 00:96C7: 88        .byte $88, $88, $38, $47, $47, $59, $59, $47, $47, $47, $47, $00, $2A, $57, $57, $57   ; 



off_96D7_14:
- D 0 - I - 0x0016E7 00:96D7: 86        .byte $86, $76, $76, $76, $00, $66, $6D, $6D, $66, $00, $86, $76, $76, $76, $00, $66   ; 
- D 0 - I - 0x0016F7 00:96E7: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $A7, $CE, $FF, $CE   ; 
off_96F3_14:
- D 0 - I - 0x001703 00:96F3: FF        .byte $FF, $FF, $FF, $FF, $C4, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE   ; 
- D 0 - I - 0x001713 00:9703: CE        .byte $CE, $CE, $CE, $CE, $65, $CE, $CE, $CE, $CE, $C6   ; 



_off028_0x00171D_04:
- D 0 - I - 0x00171D 00:970D: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $55, $55   ; 
- D 0 - I - 0x001725 00:9715: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $55, $55   ; 
- D 0 - I - 0x00172D 00:971D: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $55, $55   ; 
- D 0 - I - 0x001735 00:9725: 5F        .byte $5F, $5F, $5F, $5F, $5F, $5F, $55, $55   ; 
- D 0 - I - 0x00173D 00:972D: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- D 0 - I - 0x001745 00:9735: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- - - - - - 0x00174D 00:973D: 00        .byte $00, $40, $50, $50, $50, $40, $50, $10   ; 
- - - - - - 0x001755 00:9745: 00        .byte $00, $00, $00, $05, $05   ; 



_off028_0x00175A_05:
- D 0 - I - 0x00175A 00:974A: 00        .byte $00, $00, $00, $CC, $FF, $BB, $AA, $AA   ; 
- D 0 - I - 0x001762 00:9752: 00        .byte $00, $00, $00, $FF, $FF, $BB, $AA, $AA   ; 
- D 0 - I - 0x00176A 00:975A: 00        .byte $00, $00, $00, $FF, $FF, $BB, $AA, $AA   ; 
- D 0 - I - 0x001772 00:9762: 00        .byte $00, $00, $00, $55, $55, $55, $55, $55   ; 
- D 0 - I - 0x00177A 00:976A: 00        .byte $00, $00, $F5, $FA, $D9, $FA, $FA, $6A   ; 
- D 0 - I - 0x001782 00:9772: F5        .byte $F5, $71, $FF, $FF, $DD, $FF, $FF, $77   ; 
- D 0 - I - 0x00178A 00:977A: FF        .byte $FF, $37, $7F, $FF, $AD, $AF, $AF, $A7   ; 
- - - - - - 0x001792 00:9782: 05        .byte $05, $05, $05, $0F, $07, $0F, $0F, $07   ; 



_off028_0x00179A_06:
- D 0 - I - 0x00179A 00:978A: AA        .byte $AA, $AA, $55, $33, $00, $00, $00, $FF   ; 
- D 0 - I - 0x0017A2 00:9792: AA        .byte $AA, $AA, $55, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0017AA 00:979A: AA        .byte $AA, $AA, $55, $55, $55, $55, $55, $55   ; 
- D 0 - I - 0x0017B2 00:97A2: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- D 0 - I - 0x0017BA 00:97AA: FA        .byte $FA, $9A, $DA, $7A, $BA, $FA, $FA, $FA   ; 
- D 0 - I - 0x0017C2 00:97B2: 55        .byte $55, $DD, $55, $55, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x0017CA 00:97BA: A5        .byte $A5, $AD, $A5, $A5, $6F, $FF, $FF, $FF   ; 
- D 0 - I - 0x0017D2 00:97C2: 0F        .byte $0F, $0F, $07, $0F, $07, $0F, $0F, $0F   ; 



off_97CA_02:
- - - - - - 0x0017DA 00:97CA: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x0017EA 00:97DA: 66        .byte $66, $9E, $8B, $00   ; 
off_97DE_02:
off_97DE_03:
- D 0 - I - 0x0017EE 00:97DE: C8        .byte $C8, $9E, $66, $9E, $8B, $00, $C8, $9E, $66, $9E, $8B, $00, $C8, $9E, $66, $9E   ; 
- D 0 - I - 0x0017FE 00:97EE: 9E        .byte $9E, $6D, $5E, $5F, $6C, $6D, $9E, $9E, $0E, $0F, $00, $6C   ; 
off_97FA_02:
- D 0 - I - 0x00180A 00:97FA: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $CF, $CF, $CF, $CF, $90, $FF, $FF, $56   ; 
- D 0 - I - 0x00181A 00:980A: 74        .byte $74, $74, $56, $56, $56, $56, $74, $FF, $5E, $5F, $FF, $B0, $0E, $0F, $6D, $7D   ; 



off_981A_03:
- - - - - - 0x00182A 00:981A: 6D        .byte $6D, $6D, $6D, $6D, $16, $17, $18, $19, $6D, $6D, $6C, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x00183A 00:982A: 66        .byte $66, $9E, $8B, $00, $C8, $9E, $66, $9E, $8B, $00, $C8, $9E, $66, $9E, $8B   ; 
off_9839_08:
- D 0 - I - 0x001849 00:9839: 00        .byte $00, $00, $19, $1A, $13, $07, $06, $16, $19, $1A, $13, $07, $06, $07, $06, $07   ; 
- D 0 - I - 0x001859 00:9849: 06        .byte $06, $16, $29, $2A, $00, $00, $B7, $00, $6F, $00, $27, $26, $29, $2A, $00, $27   ; 



off_9859_04:
- - - - - - 0x001869 00:9859: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x001879 00:9869: 66        .byte $66, $9E, $BB, $BC   ; 
off_986D_04:
- D 0 - I - 0x00187D 00:986D: BE        .byte $BE, $9E, $66, $9E, $BB, $BC, $BE, $9E, $66, $9E, $BB, $BC, $BE, $9E, $66, $9E   ; 
- D 0 - I - 0x00188D 00:987D: 9E        .byte $9E, $6D, $5E, $5F, $6C, $6D, $9E, $9E, $0E, $0F, $00, $6C   ; 
off_9889_03:
- D 0 - I - 0x001899 00:9889: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $CF, $CF, $CF, $CF, $90, $FF, $FF, $67   ; 
- D 0 - I - 0x0018A9 00:9899: 86        .byte $86, $76, $76, $76, $76, $76, $67, $FF, $5E, $5F, $FF, $B0, $0E, $0F, $6D, $7D   ; 



off_98A9_05:
- - - - - - 0x0018B9 00:98A9: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x0018C9 00:98B9: 66        .byte $66, $9E, $9E, $9E   ; 
off_98BD_05:
- D 0 - I - 0x0018CD 00:98BD: 9E        .byte $9E, $9E, $66, $9E, $9E, $9E, $9E, $9E, $66, $9E, $9E, $9E, $9E, $9E, $66, $9E   ; 
- D 0 - I - 0x0018DD 00:98CD: 9E        .byte $9E, $6D, $5E, $5F, $6C, $6D, $9E, $9E, $0E, $0F, $00, $6C, $6C, $6C, $6D, $6C   ; 



off_98DD_06:
- - - - - - 0x0018ED 00:98DD: 5B        .byte $5B, $4B, $6D, $6D, $6D, $6B, $5B, $4B, $6D, $6D, $6C, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x0018FD 00:98ED: 66        .byte $66, $9E, $9E, $9E, $9E, $9E, $66, $9E, $9E, $9E, $9E, $9E, $66   ; 
off_98FA_10:
- D 0 - I - 0x00190A 00:98FA: 7D        .byte $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D   ; 
- D 0 - I - 0x00191A 00:990A: 7D        .byte $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D   ; 
off_9912_02:
off_9912_03:
off_9912_04:
off_9912_19:
off_9912_1A:
off_9912_1B:
- D 0 - I - 0x001922 00:9912: 7D        .byte $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $66, $66, $6D, $7D, $7D, $7D, $7D, $7D   ; 
- D 0 - I - 0x001932 00:9922: 7D        .byte $7D, $7D, $7D, $7D, $7D, $7D, $0E, $0F, $CF, $CF, $CF, $CF, $CF, $CF   ; 
off_9930_0C:
- D 0 - I - 0x001940 00:9930: CF        .byte $CF, $CF, $78, $78, $CF, $1A, $FF, $CF, $78, $C7, $78, $CF, $0B, $8F, $8F, $8F   ; 
- D 0 - I - 0x001950 00:9940: 8F        .byte $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F   ; 
off_9948_0A:
- D 0 - I - 0x001958 00:9948: 8F        .byte $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $CD, $CF, $CF, $CF, $90, $FF, $FF, $66   ; 
- D 0 - I - 0x001968 00:9958: 85        .byte $85, $84, $84, $84, $84, $84, $66, $FF, $5E, $5F, $FF, $B0, $0E, $0F, $A7, $BA   ; 



off_9968_09:
- - - - - - 0x001978 00:9968: BC        .byte $BC, $BE, $6D, $6D, $6D, $BB, $BC, $BE, $6D, $6D, $6C, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x001988 00:9978: 66        .byte $66, $9E, $9E, $9E, $9E, $9E, $66, $9E, $9E, $9E, $9E, $7D, $66, $7D   ; 
off_9986_08:
- D 0 - I - 0x001996 00:9986: 7D        .byte $7D, $7D, $66, $9E, $9E, $7D, $A7, $FF, $06, $07, $08, $09, $16, $19, $FF, $BA   ; 
- D 0 - I - 0x0019A6 00:9996: 9E        .byte $9E, $6D, $5E, $5F, $CF, $CF, $C1, $CE, $C3, $00, $00, $00, $6C   ; 
off_99A3_00:
- D 0 - I - 0x0019B3 00:99A3: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x0019C3 00:99B3: 66        .byte $66, $6D, $6D, $6D   ; 
off_99B7_00:
- D 0 - I - 0x0019C7 00:99B7: 6D        .byte $6D, $6D, $66, $6D, $6D, $6D, $6D, $6D, $66, $6D, $6D, $6D, $6D, $6D, $66, $6D   ; 
- D 0 - I - 0x0019D7 00:99C7: 6D        .byte $6D, $6D, $5E, $5F, $6C, $6D, $9E, $9E, $0E, $0F, $00, $6C   ; 
off_99D3_00:
- D 0 - I - 0x0019E3 00:99D3: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $CF, $CF, $CF, $CF, $90, $FF, $FF, $FF   ; 
- D 0 - I - 0x0019F3 00:99E3: 16        .byte $16, $17, $18, $19, $FF, $54, $55, $FF, $5E, $5F, $FF, $B0, $0E, $0F, $6D, $8B   ; 



off_99F3_0A:
- - - - - - 0x001A03 00:99F3: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $0E, $0F, $97, $98   ; 
- D 0 - I - 0x001A13 00:9A03: 98        .byte $98, $98, $98, $98, $98, $98, $98, $AA, $9E, $9E, $9E, $9E, $66, $7D   ; 
off_9A11_09:
- D 0 - I - 0x001A21 00:9A11: 7D        .byte $7D, $7D, $66, $7D, $9E, $7D, $A7, $FF, $16, $17, $18, $19, $06, $09, $FF, $BA   ; 
- D 0 - I - 0x001A31 00:9A21: 9E        .byte $9E, $6D, $5E, $5F, $CF, $CF, $CF, $C1, $CE, $C3, $00, $00   ; 
off_9A2D_05:
- D 0 - I - 0x001A3D 00:9A2D: 6C        .byte $6C, $6C, $6C, $6C, $6C, $6C, $6C, $00, $CF, $CF, $CF, $CF, $90, $FF, $FF, $66   ; 
- D 0 - I - 0x001A4D 00:9A3D: 85        .byte $85, $84, $84, $84, $84, $84, $66, $FF, $5E, $5F, $FF, $B0, $0E, $0F, $97, $98   ; 



off_9A4D_0B:
- - - - - - 0x001A5D 00:9A4D: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $0E, $0F, $A7, $FF   ; 
- D 0 - I - 0x001A6D 00:9A5D: 16        .byte $16, $17, $17, $19, $FF, $FF, $FF, $BA, $9E, $9E, $9E, $9E, $66, $7D   ; 
off_9A6B_0A:
- D 0 - I - 0x001A7B 00:9A6B: 7D        .byte $7D, $7D, $66, $7D, $7D, $7D, $A7, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $BA   ; 
- D 0 - I - 0x001A8B 00:9A7B: 9E        .byte $9E, $6D, $5E, $5F, $CF, $CF, $CF, $CF, $C1, $CE, $C3   ; 
off_9A86_13:
- D 0 - I - 0x001A96 00:9A86: 00        .byte $00, $00, $00, $00, $00, $67, $00, $00, $67, $00, $00, $00, $00, $00, $00, $67   ; 
- D 0 - I - 0x001AA6 00:9A96: 6C        .byte $6C, $6C, $00, $00, $6C, $6C, $6C, $6C, $A7, $CE, $FF, $CE, $FF, $06, $09   ; 
off_9AA5_0E:
- D 0 - I - 0x001AB5 00:9AA5: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $00, $00, $B6, $00, $00, $00, $FF, $1B, $29, $2A   ; 
- D 0 - I - 0x001AC5 00:9AB5: 5C        .byte $5C, $FF, $1B, $FF, $FF, $FF, $1B, $FF, $00, $A9, $AA, $4F, $FF, $FF, $C7   ; 
off_9AC4_0F:
- D 0 - I - 0x001AD4 00:9AC4: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $00, $00, $B5, $00, $00, $00, $C6, $1B, $19, $1A   ; 
- D 0 - I - 0x001AE4 00:9AD4: 5C        .byte $5C, $C6, $1B, $C6, $FF, $C6, $1B, $C6, $4D, $5E, $5E, $5F, $FF, $C6, $C7, $C6   ; 
off_9AE4_0C:
- - - - - - 0x001AF4 00:9AE4: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $0E, $0F, $A7, $FF   ; 
- D 0 - I - 0x001B04 00:9AF4: 06        .byte $06, $07, $09, $FF, $FF, $FF, $FF, $BA, $9E, $9E, $9E, $9E, $66, $7D   ; 
off_9B02_0B:
- D 0 - I - 0x001B12 00:9B02: 7D        .byte $7D, $7D, $66, $7D, $7D, $7D, $A7, $B7, $B8, $B8, $B8, $B8, $B9, $FF, $FF, $BA   ; 
- D 0 - I - 0x001B22 00:9B12: 9E        .byte $9E, $6D, $5E, $5F, $CF, $CF, $CF, $CF, $CF, $C1, $CE, $C3   ; 
off_9B1E_09:
- D 0 - I - 0x001B2E 00:9B1E: 00        .byte $00, $00, $00, $00, $06, $07, $04, $05, $CF, $11, $1B, $1D, $1D, $5D, $11, $CF   ; 
- - - - - - 0x001B3E 00:9B2E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_9B38_15:
- D 0 - I - 0x001B48 00:9B38: 00        .byte $00, $00, $00, $00, $00, $00, $5D, $5D, $00, $00, $00, $00, $5D, $00, $00, $00   ; 
- D 0 - I - 0x001B58 00:9B48: 5D        .byte $5D, $54, $00, $54, $90, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $43, $44   ; 
off_9B56_01:
- D 0 - I - 0x001B66 00:9B56: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $CF, $CF, $CF, $CF, $CF, $00, $C6, $1B, $1B, $C6   ; 
- D 0 - I - 0x001B76 00:9B66: FF        .byte $FF, $C6, $1B, $C6, $19, $1A, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $C7, $C6   ; 



off_9B76_0D:
- - - - - - 0x001B86 00:9B76: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $0E, $0F, $A7, $B7   ; 
- D 0 - I - 0x001B96 00:9B86: B8        .byte $B8, $B8, $B8, $B8, $B9, $FF, $FF, $BA, $9E, $9E, $9E, $9E, $66, $7D   ; 
off_9B94_0C:
- D 0 - I - 0x001BA4 00:9B94: 7D        .byte $7D, $7D, $66, $7D, $7D, $7D, $A7, $BA, $94, $95, $95, $96, $A7, $FF, $FF, $BA   ; 
- D 0 - I - 0x001BB4 00:9BA4: 9E        .byte $9E, $6D, $5E, $5F, $CF, $CF, $CF, $CF, $CF, $CF, $C1, $CE, $C3   ; 
off_9BB1_0C:
- D 0 - I - 0x001BC1 00:9BB1: 00        .byte $00, $00, $00, $14, $15, $20, $15, $15, $CF, $11, $1B, $1D, $1D, $5D, $11, $CF   ; 
- - - - - - 0x001BD1 00:9BC1: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_9BCC_08:
- D 0 - I - 0x001BDC 00:9BCC: 00        .byte $00, $00, $00, $00, $00, $80, $81, $82, $CF, $11, $0B, $00, $00, $00, $11, $CF   ; 
- - - - - - 0x001BEC 00:9BDC: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_9BE6_14:
- D 0 - I - 0x001BF6 00:9BE6: 00        .byte $00, $00, $00, $00, $00, $00, $5D, $5D, $00, $00, $00, $00, $4E, $00, $00, $00   ; 
- D 0 - I - 0x001C06 00:9BF6: 5D        .byte $5D, $00, $54, $00, $70, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71   ; 



off_9C06_0E:
- - - - - - 0x001C16 00:9C06: 5B        .byte $5B, $4B, $6D, $6D, $6D, $6B, $5B, $4B, $6D, $6D, $6C, $00, $0E, $0F, $A7, $BA   ; 
- D 0 - I - 0x001C26 00:9C16: 94        .byte $94, $95, $95, $96, $A7, $FF, $FF, $BA, $9E, $9E, $9E, $9E, $66, $7D   ; 
off_9C24_0D:
- D 0 - I - 0x001C34 00:9C24: 7D        .byte $7D, $7D, $66, $7D, $7D, $7D, $A7, $BA, $A4, $CF, $CF, $A6, $A7, $FF, $FF, $BA   ; 
- D 0 - I - 0x001C44 00:9C34: 9E        .byte $9E, $6D, $5E, $5F, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $C1, $CE, $C3   ; 
off_9C42_10:
- D 0 - I - 0x001C52 00:9C42: 00        .byte $00, $00, $CF, $CF, $CF, $CF, $CF, $CF, $00, $00, $00, $00, $3D, $3E, $3E, $3E   ; 
- D 0 - I - 0x001C62 00:9C52: 5E        .byte $5E, $5F, $3E, $3E   ; 
off_9C56_10:
- D 0 - I - 0x001C66 00:9C56: 3F        .byte $3F, $3E, $3E, $3E, $3E, $3E, $3F, $3E, $3E, $3E, $3E, $3E, $3F, $3E   ; 
off_9C64_1A:
- D 0 - I - 0x001C74 00:9C64: 3E        .byte $3E, $3E, $3E, $3E, $3F, $3E, $3E, $3E, $3E, $3E, $3F, $3E, $3E, $3E, $3E, $3E   ; 
- D 0 - I - 0x001C84 00:9C74: 3F        .byte $3F, $3E, $5E, $5F, $6C, $6D, $9E, $9E, $0E, $0F, $2D, $2E, $2E, $2E, $2E, $2E   ; 



off_9C84_11:
- - - - - - 0x001C94 00:9C84: BC        .byte $BC, $BE, $6D, $6D, $6D, $BB, $BC, $BE, $6D, $6D, $6C, $00, $0E, $0F, $A7, $BA   ; 
- D 0 - I - 0x001CA4 00:9C94: A4        .byte $A4, $CF, $CF, $A6, $A7, $FF, $FF, $BA, $2D   ; 
off_9C9D_17:
- D 0 - I - 0x001CAD 00:9C9D: 2E        .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2E   ; 
- D 0 - I - 0x001CBD 00:9CAD: 2E        .byte $2E, $2E, $2E, $2E, $2E, $2E, $2E, $2F, $CF, $CF, $CF, $CF, $CF, $CF, $CF   ; 
off_9CBC_09:
- D 0 - I - 0x001CCC 00:9CBC: CF        .byte $CF, $7A, $7A, $7A, $FF, $1A, $1A, $CF, $CF, $CF, $CF, $CF, $20, $21, $21, $22   ; 
- D 0 - I - 0x001CDC 00:9CCC: 23        .byte $23, $20, $21, $22, $23, $00, $90, $FF, $FF, $00, $66, $85, $84, $84   ; 
off_9CDA_09:
- D 0 - I - 0x001CEA 00:9CDA: 84        .byte $84, $84, $66, $00, $FF, $FF, $FF, $B0, $CF, $CF, $7B, $7C, $BF, $BF, $BF, $BF   ; 
- D 0 - I - 0x001CFA 00:9CEA: BF        .byte $BF, $BF, $BF, $BF, $BF, $BF, $BF, $BF, $BF, $BF, $BF, $BF, $BF, $BF, $BF, $BF   ; 



off_9CFA_12:
- - - - - - 0x001D0A 00:9CFA: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $0E, $0F, $A7, $BA   ; 
- D 0 - I - 0x001D1A 00:9D0A: A4        .byte $A4, $CF, $CF, $A6, $A7, $FF, $FF, $BA, $AB, $8F, $8F   ; 
off_9D15_0C:
- D 0 - I - 0x001D25 00:9D15: 8F        .byte $8F, $8F, $8F, $8F, $8F, $8E, $1C, $7B, $7B, $7B, $7B, $1C, $39, $85, $85, $85   ; 
- D 0 - I - 0x001D35 00:9D25: 00        .byte $00, $FF, $FF, $FF, $39, $5D, $85, $A6, $86, $CE, $CE, $87, $A8, $85, $5D   ; 
off_9D34_18:
- D 0 - I - 0x001D44 00:9D34: 85        .byte $85, $84, $84, $84, $00, $66, $9E, $9E, $66, $00, $85, $84, $84, $84, $00, $66   ; 
- D 0 - I - 0x001D54 00:9D44: 9E        .byte $9E, $9E, $9E, $9E, $9E, $9E, $9E, $9E, $B8, $B8, $B8, $B8   ; 
off_9D50_07:
- D 0 - I - 0x001D60 00:9D50: B8        .byte $B8, $B8, $B8, $B8, $B9, $BA, $7D, $7D, $66, $66, $6D, $7D, $7D, $7D, $A7, $B7   ; 
- D 0 - I - 0x001D70 00:9D60: B8        .byte $B8, $B8, $B8, $B8, $B9, $BA, $0E, $0F, $CF, $CF, $CF, $CF, $CF   ; 
off_9D6D_0E:
- D 0 - I - 0x001D7D 00:9D6D: CF        .byte $CF, $CF, $CF, $3B, $B0, $CF, $CF, $B1, $45, $CF, $CF, $38, $80, $80, $80, $80   ; 
- D 0 - I - 0x001D8D 00:9D7D: 80        .byte $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $80, $00, $BB, $3B, $A0   ; 
off_9D8C_02:
- D 0 - I - 0x001D9C 00:9D8C: B2        .byte $B2, $B2, $B2, $B2, $B2, $B2, $B2, $B2, $B2, $B2, $B2, $38, $00, $00, $00, $00   ; 
- D 0 - I - 0x001DAC 00:9D9C: 00        .byte $00, $00   ; 
off_9D9E_03:
- D 0 - I - 0x001DAE 00:9D9E: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $78, $79   ; 
- D 0 - I - 0x001DBE 00:9DAE: 7A        .byte $7A, $7B, $7C, $00   ; 
off_9DB2_19:
- D 0 - I - 0x001DC2 00:9DB2: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $0E, $0F, $6D, $9E   ; 
- D 0 - I - 0x001DD2 00:9DC2: 5E        .byte $5E, $5F, $6C, $6D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $7D, $66   ; 
off_9DD1_12:
- D 0 - I - 0x001DE1 00:9DD1: 00        .byte $00, $00, $19, $1A, $00, $00, $00, $00, $19, $1A, $13, $07, $06, $07, $06, $07   ; 
- D 0 - I - 0x001DF1 00:9DE1: 06        .byte $06, $16, $00, $00, $00, $00, $00, $00, $6F, $00, $27, $26, $29, $2A, $00, $27   ; 



off_9DF1_13:
- - - - - - 0x001E01 00:9DF1: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6C, $6C, $6C, $6C, $6C, $00, $0E, $0F, $99, $9A   ; 
- D 0 - I - 0x001E11 00:9E01: B4        .byte $B4, $B5, $B5, $B6, $99, $A9, $A9, $9A, $CF, $CB, $FF   ; 
off_9E0C_15:
- D 0 - I - 0x001E1C 00:9E0C: FF        .byte $FF, $FF, $FF, $FF, $FF, $C4, $CE, $CE, $CE, $51, $CE, $CE, $CE, $CE, $CE, $CE   ; 
- D 0 - I - 0x001E2C 00:9E1C: CE        .byte $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $C6, $FF   ; 
off_9E28_02:
- D 0 - I - 0x001E38 00:9E28: FF        .byte $FF, $FF, $FF, $FF, $06, $07, $08, $B0, $CF, $CF, $CF, $CF, $2A, $57, $28, $C7   ; 
- D 0 - I - 0x001E48 00:9E38: 28        .byte $28, $26, $48, $CE, $CE, $45, $35, $CE, $CE, $CE, $CE, $00, $57, $57, $57, $57   ; 



off_9E48_14:
- - - - - - 0x001E58 00:9E48: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $AB, $8F, $8F, $8F, $8F, $8F, $8F, $8F   ; 
- D 0 - I - 0x001E68 00:9E58: 8F        .byte $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $CD, $CF, $CB, $FF   ; 



_off028_0x001E74_08:
- D 0 - I - 0x001E74 00:9E64: FF        .byte $FF, $FF, $FF, $FF, $77, $FF, $77, $55   ; 
- D 0 - I - 0x001E7C 00:9E6C: FF        .byte $FF, $7F, $5F, $5F, $77, $5F, $57, $55   ; 
- D 0 - I - 0x001E84 00:9E74: FF        .byte $FF, $77, $50, $56, $77, $55, $55, $55   ; 
- D 0 - I - 0x001E8C 00:9E7C: FF        .byte $FF, $77, $55, $55, $77, $55, $55, $55   ; 
- D 0 - I - 0x001E94 00:9E84: 5F        .byte $5F, $57, $55, $55, $57, $55, $55, $55   ; 
- D 0 - I - 0x001E9C 00:9E8C: A5        .byte $A5, $A5, $A5, $A5, $A5, $A5, $55, $55   ; 
- D 0 - I - 0x001EA4 00:9E94: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $55, $55   ; 
- D 0 - I - 0x001EAC 00:9E9C: 0F        .byte $0F, $0F, $0F, $0F, $0F, $0F, $05, $05   ; 



off_9EA4_15:
- - - - - - 0x001EB4 00:9EA4: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $CF, $CB, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x001EC4 00:9EB4: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $AC, $CD, $CF, $CB, $FF, $FF, $AD, $AD   ; 



off_9EC4_16:
- - - - - - 0x001ED4 00:9EC4: 5B        .byte $5B, $4B, $6D, $6D, $6D, $6B, $5B, $00, $CF, $CF, $CB, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x001EE4 00:9ED4: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $AC, $CD, $CF, $1D, $1E, $1E   ; 
off_9EE3_0F:
- D 0 - I - 0x001EF3 00:9EE3: 1E        .byte $1E, $5D, $5D, $5D, $6E, $3E, $6E, $6E, $6D, $1F, $1E, $5D, $1E, $4D, $6E, $3E   ; 
- D 0 - I - 0x001F03 00:9EF3: 6E        .byte $6E, $6E, $6D, $1F, $5D, $00, $FF, $A6, $86, $CE, $CE, $87, $A8, $FF, $5D   ; 
off_9F02_0B:
- D 0 - I - 0x001F12 00:9F02: 5D        .byte $5D, $1F, $5D, $5D, $5D, $1F, $1E, $1F, $1E, $5D, $1E, $1F, $1E, $1F, $1E, $1F   ; 
- D 0 - I - 0x001F22 00:9F12: 1E        .byte $1E, $1F, $1E, $1F, $1E, $1F, $5D, $00, $FF, $A6, $76, $88, $88, $77, $A8   ; 
off_9F21_11:
- D 0 - I - 0x001F31 00:9F21: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $00, $00, $00, $00, $00, $00, $C6, $1B, $19, $1A   ; 
- D 0 - I - 0x001F41 00:9F31: 5C        .byte $5C, $C6, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $C7, $C6   ; 



off_9F41_19:
- - - - - - 0x001F51 00:9F41: BC        .byte $BC, $BE, $6D, $6D, $6D, $BB, $BC, $00, $CF, $CF, $CF, $CF, $90, $FF, $FF, $FF   ; 
- D 0 - I - 0x001F61 00:9F51: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $5E, $5F, $FF, $B0, $0E, $0F, $6D, $7D   ; 



off_9F61_1A:
off_9F61_1B:
- - - - - - 0x001F71 00:9F61: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $CF, $CF, $CF, $CF, $90, $FF, $FF, $FF   ; 
- D 0 - I - 0x001F81 00:9F71: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $5E, $5F, $FF, $B0, $0E, $0F, $6D, $7D   ; 



off_9F81_1C:
- - - - - - 0x001F91 00:9F81: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $CF, $CF, $CF, $CF, $90, $FF, $FF, $FF   ; 
- D 0 - I - 0x001FA1 00:9F91: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $5E, $5F, $FF, $B0, $0E, $0F, $6D, $6B   ; 



off_9FA1_1D:
- - - - - - 0x001FB1 00:9FA1: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $CF, $CF, $CF, $CF, $90, $FF, $FF, $FF   ; 
- D 0 - I - 0x001FC1 00:9FB1: 06        .byte $06, $07, $08, $09, $FF, $FF, $FF, $FF, $5E, $5F, $FF, $B0, $0E, $0F, $6D, $8B   ; 



_off028_0x001FD1_07:
- - - - - - 0x001FD1 00:9FC1: 55        .byte $55, $55, $55, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x001FD9 00:9FC9: 55        .byte $55, $55, $55, $FF, $FF, $FF, $FF, $FF   ; 
- D 0 - I - 0x001FE1 00:9FD1: 55        .byte $55, $55, $55, $7F, $5F, $5F, $FF, $FF   ; 
- D 0 - I - 0x001FE9 00:9FD9: 55        .byte $55, $55, $55, $77, $05, $55, $FF, $FF   ; 
- D 0 - I - 0x001FF1 00:9FE1: 55        .byte $55, $55, $55, $77, $00, $55, $5F, $5F   ; 
- D 0 - I - 0x001FF9 00:9FE9: 55        .byte $55, $55, $55, $55, $55, $55, $55, $A5   ; 
- D 0 - I - 0x002001 00:9FF1: 55        .byte $55, $55, $55, $AA, $AA, $AA, $BB, $FF   ; 
- D 0 - I - 0x002009 00:9FF9: 05        .byte $05, $05, $05, $0A, $0A, $0A, $0B, $0F   ; 



off_A001_18:
- D 1 - I - 0x002011 00:A001: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $66, $66, $6D, $6D, $6D, $6D, $6D, $6D   ; 
- D 1 - I - 0x002021 00:A011: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $0E, $0F, $CF, $CF, $CF, $CF, $CF, $CF, $CF   ; 
off_A020_0B:
- D 1 - I - 0x002030 00:A020: CF        .byte $CF, $78, $C7, $78, $CF, $FF, $FF, $CF, $CF, $78, $78, $CF, $40, $42, $41, $41   ; 
- D 1 - I - 0x002040 00:A030: 43        .byte $43, $40, $42, $42, $43, $00, $B2, $77, $B3, $00, $66, $85, $84, $84   ; 
off_A03E_0A:
- D 1 - I - 0x00204E 00:A03E: 84        .byte $84, $84, $66, $00, $74, $56, $74, $C0, $CF, $7B, $7C, $FF, $FF   ; 
off_A04B_17:
- D 1 - I - 0x00205B 00:A04B: AD        .byte $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD   ; 
off_A057_15:
- D 1 - I - 0x002067 00:A057: AD        .byte $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD, $AD   ; 
- D 1 - I - 0x002077 00:A067: AD        .byte $AD, $AD, $AD, $AD, $FF, $FF, $AC, $CD, $CF, $CF, $CF, $CF, $CF   ; 
off_A074_0D:
- D 1 - I - 0x002084 00:A074: CF        .byte $CF, $CF, $CF, $3B, $B0, $CF, $CF, $B1, $45, $CF, $CF, $38, $70, $70, $70, $70   ; 
- D 1 - I - 0x002094 00:A084: 70        .byte $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $70, $00, $BA, $2B   ; 
off_A092_0D:
- D 1 - I - 0x0020A2 00:A092: 10        .byte $10, $10, $20, $24, $70, $70, $70, $70, $70, $70, $70, $00, $C9, $C9, $19, $1A   ; 
off_A0A2_15:
off_A0A2_33:
- D 1 - I - 0x0020B2 00:A0A2: C9        .byte $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9   ; 
- D 1 - I - 0x0020C2 00:A0B2: C9        .byte $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9, $C9   ; 



off_A0C2_1C:
- D 1 - I - 0x0020D2 00:A0C2: 5B        .byte $5B, $4B, $7D, $7D, $6B, $5B, $4B, $7D, $66, $66, $6D, $7D, $6B, $5B, $4B, $7D   ; 
- D 1 - I - 0x0020E2 00:A0D2: 7D        .byte $7D, $6B, $5B, $4B, $7D, $7D, $0E, $0F, $CF, $CF, $CF, $CF, $CF, $CF, $CF   ; 
off_A0E1_0F:
- D 1 - I - 0x0020F1 00:A0E1: CF        .byte $CF, $B1, $45, $24, $11, $12, $CE, $CE, $CE, $CE, $CE, $00, $C6, $1B, $19, $1A   ; 
- D 1 - I - 0x002101 00:A0F1: 5C        .byte $5C, $C6, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $C7, $C6   ; 



off_A101_0F:
- - - - - - 0x002111 00:A101: B2        .byte $B2, $B2, $B2, $3B, $C0, $C2, $C2, $C1, $45, $B2, $B2, $38, $02, $11, $01, $02   ; 
- D 1 - I - 0x002121 00:A111: 11        .byte $11, $12, $21, $CE, $CE, $CE, $21, $01, $02, $CE, $CE, $00, $BB, $3B, $B0   ; 
off_A120_11:
- D 1 - I - 0x002130 00:A120: CF        .byte $CF, $B1, $45, $24, $CF, $CF, $11, $12, $21, $CF, $CF, $00, $C6, $1B, $19, $1A   ; 
- D 1 - I - 0x002140 00:A130: 5C        .byte $5C, $C6, $1E, $1F, $1F, $3E, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $C7, $C6   ; 



off_A140_11:
- - - - - - 0x002150 00:A140: CD        .byte $CD, $8D, $09, $0A, $7D, $CD, $CD, $CD, $CD, $CD, $CD, $CD, $CD, $CD, $CD, $CD   ; 
- D 1 - I - 0x002160 00:A150: CD        .byte $CD, $8D, $09, $0A, $12, $6C, $CF, $08, $08, $CF, $22, $00, $BB, $3B, $B0   ; 
off_A15F_12:
- D 1 - I - 0x00216F 00:A15F: CF        .byte $CF, $4C, $45, $24, $6C, $6C, $9D, $CF, $21, $4B, $08, $00, $FF, $1B, $29, $2A   ; 
- D 1 - I - 0x00217F 00:A16F: 5C        .byte $5C, $FF, $1B, $FF, $FF, $FF, $1B, $FF, $FF, $FF, $1B, $FF, $FF, $FF, $C7   ; 
off_A17E_1B:
- D 1 - I - 0x00218E 00:A17E: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $6C, $CF, $CF, $4B, $08, $00, $C6, $1B, $1B, $C6   ; 
- D 1 - I - 0x00219E 00:A18E: FF        .byte $FF, $C6, $1B, $C6, $19, $1A, $C7, $C6, $00, $99, $9A, $4F, $FF, $C6, $C7, $C6   ; 



off_A19E_12:
- - - - - - 0x0021AE 00:A19E: 06        .byte $06, $16, $19, $1A, $13, $07, $06, $07, $06, $07, $06, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x0021BE 00:A1AE: 06        .byte $06, $16, $29, $2A, $22, $6C, $25, $4B, $08, $CF, $21, $00, $BB, $3B, $B0   ; 
off_A1BD_13:
- D 1 - I - 0x0021CD 00:A1BD: CF        .byte $CF, $B1, $45, $24, $2D, $7C, $6C, $9D, $CF, $CF, $17, $00, $C6, $1B, $19, $1A   ; 
- D 1 - I - 0x0021DD 00:A1CD: 5C        .byte $5C, $C6, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $C7, $C6   ; 



off_A1DD_13:
- - - - - - 0x0021ED 00:A1DD: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07, $06, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x0021FD 00:A1ED: 06        .byte $06, $16, $19, $1A, $7C, $6C, $25, $08, $08, $CF, $21, $00, $BB, $3B, $B0   ; 
off_A1FC_14:
- D 1 - I - 0x00220C 00:A1FC: CF        .byte $CF, $B1, $45, $24, $6C, $6C, $7C, $2D, $CF, $17, $4B, $00, $FF, $1B, $29, $2A   ; 
- D 1 - I - 0x00221C 00:A20C: 5C        .byte $5C, $FF, $1B, $FF, $FF, $FF, $1B, $FF, $FF, $FF, $1B, $FF, $FF, $FF, $C7   ; 
off_A21B_1C:
- D 1 - I - 0x00222B 00:A21B: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $6C, $CF, $CF, $08, $4B, $00, $FF, $1B, $1B, $FF   ; 
- D 1 - I - 0x00223B 00:A22B: FF        .byte $FF, $FF, $1B, $FF, $29, $2A, $1B, $FF, $00, $A9, $AA, $4F, $FF, $FF, $C7   ; 
off_A23A_1D:
- D 1 - I - 0x00224A 00:A23A: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $9C, $CF, $CF, $4B, $CF, $00, $C6, $1B, $1B, $C6   ; 
- D 1 - I - 0x00225A 00:A24A: FF        .byte $FF, $C6, $1B, $C6, $19, $1A, $1B, $C6, $4D, $5E, $5E, $5F, $FF, $C6, $C7, $C6   ; 



off_A25A_14:
- - - - - - 0x00226A 00:A25A: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07, $06, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00227A 00:A26A: 06        .byte $06, $16, $29, $2A, $9C, $9D, $CF, $08, $08, $17, $6C, $00, $BB, $3B, $B0, $CF   ; 



off_A27A_15:
- - - - - - 0x00228A 00:A27A: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07, $06, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00229A 00:A28A: 06        .byte $06, $16, $19, $1A, $9D, $7C, $25, $17, $08, $17, $CF, $00, $BB, $3B, $C0   ; 
off_A299_15:
- D 1 - I - 0x0022A9 00:A299: C2        .byte $C2, $C1, $45, $24, $9C, $3D, $6C, $6C, $CF, $CF, $4B, $00, $C6, $1B, $19, $1A   ; 
- D 1 - I - 0x0022B9 00:A2A9: 5C        .byte $5C, $C6, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $C7   ; 
off_A2B8_02:
- D 1 - I - 0x0022C8 00:A2B8: C6        .byte $C6, $C6, $90, $91, $92, $93, $C6, $C6, $40, $41, $42, $43, $00, $45, $44, $44   ; 
- D 1 - I - 0x0022D8 00:A2C8: 44        .byte $44, $44, $46, $00, $40, $41, $42, $43, $C6, $C6, $90, $91, $92, $93, $C6, $C6   ; 



off_A2D8_16:
- - - - - - 0x0022E8 00:A2D8: 06        .byte $06, $16, $19, $1A, $13, $07, $06, $07, $06, $07, $06, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x0022F8 00:A2E8: 06        .byte $06, $16, $29, $2A, $6C, $6C, $25, $00, $9E, $9F, $CC, $CC, $09, $0A   ; 
off_A2F6_16:
off_A2F6_34:
- D 1 - I - 0x002306 00:A2F6: CC        .byte $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC   ; 
off_A303_10:
- D 1 - I - 0x002313 00:A303: CC        .byte $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC   ; 
- D 1 - I - 0x002323 00:A313: CC        .byte $CC, $CC, $CC, $C3, $CE, $11, $CF, $CF, $CF, $CF, $11, $00, $BB, $3B, $B0, $51   ; 



off_A323_17:
- - - - - - 0x002333 00:A323: 42        .byte $42, $41, $49, $4A, $42, $41, $42, $43, $49, $4A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x002343 00:A333: 06        .byte $06, $16, $19, $1A, $9D, $6C, $CF, $00, $AE, $AF, $CD, $CD, $19, $1A   ; 
off_A341_10:
- D 1 - I - 0x002351 00:A341: CD        .byte $CD, $CD, $CD, $CD, $CD, $B5, $CD, $CD, $CD, $CD, $CD, $CD, $CD, $CD, $CD, $CD   ; 
- D 1 - I - 0x002361 00:A351: CD        .byte $CD, $CD, $CD, $CD, $CD, $CD, $CD, $CD, $CD, $CD, $B4, $CD   ; 
off_A35D_17:
- D 1 - I - 0x00236D 00:A35D: CD        .byte $CD, $CD, $CD, $CD, $8E, $8F, $3D, $7C, $CF, $17, $A6, $A8, $A7, $A8, $A7, $A7   ; 
- D 1 - I - 0x00237D 00:A36D: A8        .byte $A8, $A7, $A8, $A8, $19, $1A, $A8, $A7, $A8, $A5, $4E, $C6, $FF, $C6, $C7, $C6   ; 



off_A37D_19:
- - - - - - 0x00238D 00:A37D: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00239D 00:A38D: 06        .byte $06, $16, $19, $1A, $CF, $CF, $CF, $00, $6F, $00, $27, $26, $19, $1A, $00, $28   ; 



off_A39D_1A:
- - - - - - 0x0023AD 00:A39D: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x0023BD 00:A3AD: 06        .byte $06, $16, $29, $2A, $CF, $CF, $25, $00, $6F, $00, $27, $26, $29, $2A, $00, $27   ; 



off_A3BD_1B:
- - - - - - 0x0023CD 00:A3BD: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x0023DD 00:A3CD: 06        .byte $06, $16, $36, $37, $CF, $CF, $CF, $00, $6F, $00, $27, $26, $19, $1A, $00, $27   ; 



off_A3DD_1C:
- - - - - - 0x0023ED 00:A3DD: 06        .byte $06, $16, $19, $1A, $13, $07, $06, $16, $19, $1A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x0023FD 00:A3ED: 06        .byte $06, $16, $00, $00, $CF, $CF, $CF, $00, $6F, $00, $27, $26, $29, $2A, $00, $27   ; 



off_A3FD_1D:
- - - - - - 0x00240D 00:A3FD: 42        .byte $42, $41, $49, $4A, $42, $41, $42, $41, $49, $4A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00241D 00:A40D: 06        .byte $06, $16, $46, $47, $CF, $CF, $CF, $00, $6F, $00, $27, $26, $19, $1A, $00, $27   ; 



_off028_0x00242D_09:
- D 1 - I - 0x00242D 00:A41D: 55        .byte $55, $55, $55, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x002435 00:A425: 55        .byte $55, $5A, $55, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00243D 00:A42D: 55        .byte $55, $00, $55, $F0, $F0, $F0, $F0, $F0   ; 
- D 1 - I - 0x002445 00:A435: 55        .byte $55, $00, $55, $FF, $FF, $FF, $FF, $15   ; 
- D 1 - I - 0x00244D 00:A43D: AA        .byte $AA, $AA, $AA, $AA, $AA, $FF, $FF, $11   ; 
- D 1 - I - 0x002455 00:A445: AA        .byte $AA, $AA, $AA, $AA, $AA, $FF, $AF, $81   ; 
- D 1 - I - 0x00245D 00:A44D: AA        .byte $AA, $AA, $AA, $AA, $AA, $FF, $AA, $88   ; 
- - - - - - 0x002465 00:A455: 0A        .byte $0A, $0A, $0A, $0A, $0A, $0F, $0A, $08   ; 



off_A45D_01:
- - - - - - 0x00246D 00:A45D: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00247D 00:A46D: 06        .byte $06, $16, $19, $1A, $04, $B3, $CF, $00, $6F, $00, $27, $26, $19, $1A, $00, $27   ; 



off_A47D_02:
- - - - - - 0x00248D 00:A47D: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00249D 00:A48D: 06        .byte $06, $16, $29, $2A, $53, $FF, $B3, $00, $6F, $00, $27, $26, $29, $2A, $00, $27   ; 



off_A49D_03:
- - - - - - 0x0024AD 00:A49D: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x0024BD 00:A4AD: 06        .byte $06, $16, $19, $1A, $00, $00, $62, $00, $6F, $00, $27, $26, $19, $1A, $00, $27   ; 



off_A4BD_04:
- - - - - - 0x0024CD 00:A4BD: 06        .byte $06, $16, $19, $1A, $13, $07, $06, $16, $19, $1A, $13, $07, $06, $07, $06, $06   ; 
- D 1 - I - 0x0024DD 00:A4CD: 06        .byte $06, $16, $29, $2A, $00, $00, $62, $00, $6F, $00, $27, $26, $29, $2A, $00, $27   ; 



off_A4DD_05:
- - - - - - 0x0024ED 00:A4DD: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x0024FD 00:A4ED: 06        .byte $06, $16, $19, $1A, $00, $00, $98, $00, $6F, $00, $27, $26, $19, $1A, $00, $27   ; 



off_A4FD_06:
- - - - - - 0x00250D 00:A4FD: 06        .byte $06, $16, $19, $1A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00251D 00:A50D: 06        .byte $06, $16, $29, $2A, $00, $00, $62, $00, $6F, $00, $27, $26, $29, $2A, $00, $27   ; 



off_A51D_07:
- - - - - - 0x00252D 00:A51D: 42        .byte $42, $41, $49, $4A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00253D 00:A52D: 06        .byte $06, $16, $19, $1A, $00, $00, $B8, $00, $6F, $00, $27, $26, $19, $1A, $00, $27   ; 



off_A53D_0A:
- - - - - - 0x00254D 00:A53D: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00255D 00:A54D: 06        .byte $06, $16, $29, $2A, $00, $00, $B7, $00, $6F, $00, $27, $26, $29, $2A, $00, $27   ; 



off_A55D_09:
off_A55D_0B:
- - - - - - 0x00256D 00:A55D: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00257D 00:A56D: 06        .byte $06, $16, $19, $1A, $00, $00, $B7, $00, $6F, $00, $27, $26, $19, $1A, $00, $27   ; 



off_A57D_0C:
- - - - - - 0x00258D 00:A57D: 06        .byte $06, $16, $19, $1A, $13, $07, $06, $16, $19, $1A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00259D 00:A58D: 06        .byte $06, $16, $29, $2A, $00, $00, $B4, $00, $6F, $00, $27, $26, $29, $2A, $00, $27   ; 



off_A59D_0D:
- - - - - - 0x0025AD 00:A59D: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x0025BD 00:A5AD: 06        .byte $06, $16, $36, $37, $00, $00, $00, $00, $6F, $00, $27, $26, $19, $1A, $00, $27   ; 



off_A5BD_0E:
- - - - - - 0x0025CD 00:A5BD: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x0025DD 00:A5CD: 06        .byte $06, $16, $00, $00, $00, $00, $00, $00, $6F, $00, $27, $26, $29, $2A, $00, $27   ; 



off_A5DD_0F:
- - - - - - 0x0025ED 00:A5DD: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x0025FD 00:A5ED: 06        .byte $06, $16, $00, $00, $00, $00, $00, $00, $6F, $00, $27, $26, $19, $1A, $00, $27   ; 



off_A5FD_10:
- - - - - - 0x00260D 00:A5FD: 06        .byte $06, $16, $19, $1A, $13, $07, $06, $16, $19, $1A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00261D 00:A60D: 06        .byte $06, $16, $00, $00, $00, $00, $00, $00, $6F, $00, $27, $26, $29, $2A, $00, $27   ; 



off_A61D_11:
- - - - - - 0x00262D 00:A61D: 42        .byte $42, $41, $49, $4A, $42, $41, $42, $41, $49, $4A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00263D 00:A62D: 06        .byte $06, $16, $00, $00, $00, $00, $00, $00, $6F, $00, $27, $26, $19, $1A, $00, $27   ; 



off_A63D_13:
- - - - - - 0x00264D 00:A63D: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00265D 00:A64D: 06        .byte $06, $16, $00, $00, $00, $00, $00, $00, $6F, $00, $27, $26, $39, $3A, $00, $27   ; 



off_A65D_14:
- - - - - - 0x00266D 00:A65D: 06        .byte $06, $16, $19, $1A, $13, $07, $06, $16, $19, $1A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00267D 00:A66D: 06        .byte $06, $16, $00, $00, $00, $00, $00, $44, $42, $41   ; 
off_A677_14:
- D 1 - I - 0x002687 00:A677: 42        .byte $42, $41, $42, $41, $42, $41, $42, $43, $00, $00, $00, $44, $41, $42, $49, $4A   ; 
- D 1 - I - 0x002697 00:A687: 42        .byte $42, $41, $42, $41, $42, $41, $42, $43, $5D, $FF, $1B, $FF, $FF, $FF, $C7   ; 
off_A696_10:
off_A696_12:
- D 1 - I - 0x0026A6 00:A696: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $00, $00, $00, $00, $00, $00, $FF, $1B, $29, $2A   ; 
- D 1 - I - 0x0026B6 00:A6A6: 5C        .byte $5C, $FF, $1B, $FF, $FF, $FF, $1B, $FF, $FF, $FF, $1B, $FF, $FF, $FF, $C7   ; 
off_A6B5_13:
- D 1 - I - 0x0026C5 00:A6B5: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $00, $00, $00, $00, $00, $00, $C6, $1B, $39, $3A   ; 
- D 1 - I - 0x0026D5 00:A6C5: 5C        .byte $5C, $C6, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $C7, $C6   ; 



off_A6D5_15:
- - - - - - 0x0026E5 00:A6D5: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x0026F5 00:A6E5: 06        .byte $06, $16, $00, $00, $00, $00, $00, $A6, $A8, $A7   ; 
off_A6EF_15:
- D 1 - I - 0x0026FF 00:A6EF: A8        .byte $A8, $A7, $A8, $A7, $A8, $A7, $A8, $A5, $00, $00, $00, $A6, $A7, $A8, $A7, $A7   ; 
- D 1 - I - 0x00270F 00:A6FF: A8        .byte $A8, $A7, $A8, $A7, $A8, $A7, $A8, $A5, $7A, $C6, $1B, $C6, $FF, $C6, $C7, $C6   ; 



off_A70F_16:
- - - - - - 0x00271F 00:A70F: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00272F 00:A71F: 06        .byte $06, $16, $00, $00, $00, $00, $00, $00, $6F, $00, $26, $26, $28   ; 
off_A72C_16:
- D 1 - I - 0x00273C 00:A72C: 18        .byte $18, $18, $18, $26, $26, $6F, $00, $00, $00, $00, $00, $00, $AC, $AD, $AB, $AC   ; 
- D 1 - I - 0x00274C 00:A73C: AC        .byte $AC, $AC, $AD, $AC, $AC, $AC, $AD, $AC, $FF, $FF, $1B, $FF, $FF, $FF, $C7   ; 
off_A74B_17:
- D 1 - I - 0x00275B 00:A74B: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $00, $00, $00, $00, $00, $00, $C6, $1B, $5C, $C6   ; 
- D 1 - I - 0x00276B 00:A75B: FF        .byte $FF, $C6, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $C7, $C6   ; 



off_A76B_17:
- - - - - - 0x00277B 00:A76B: 06        .byte $06, $16, $29, $2A, $13, $07, $06, $16, $29, $2A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x00278B 00:A77B: 06        .byte $06, $16, $00, $00, $00, $00, $00, $00, $6F, $00, $26, $26, $27   ; 
off_A788_08:
- D 1 - I - 0x002798 00:A788: FF        .byte $FF, $FF, $FF, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $FF, $06   ; 
- D 1 - I - 0x0027A8 00:A798: 08        .byte $08, $09, $FF, $B0, $10, $11, $11, $11, $13, $10, $11, $11, $13, $10, $11   ; 
off_A7A7_08:
- D 1 - I - 0x0027B7 00:A7A7: 11        .byte $11, $13, $14, $14, $03, $04, $14, $00, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1   ; 
- D 1 - I - 0x0027C7 00:A7B7: A1        .byte $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1   ; 
off_A7BF_08:
- D 1 - I - 0x0027CF 00:A7BF: A1        .byte $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $CF, $CF, $CF, $CF, $90, $FF, $FF, $66   ; 
- D 1 - I - 0x0027DF 00:A7CF: 85        .byte $85, $84, $84, $84, $84, $84, $66, $FF, $5E, $5F, $FF, $B0, $0E, $0F, $A7, $BA   ; 



_off028_0x0027EF_0B:
- - - - - - 0x0027EF 00:A7DF: AA        .byte $AA, $AA, $AA, $AA, $AA, $FF, $AA, $88   ; 
- - - - - - 0x0027F7 00:A7E7: AA        .byte $AA, $AA, $AA, $AA, $AA, $FF, $AA, $88   ; 
- - - - - - 0x0027FF 00:A7EF: AA        .byte $AA, $AA, $AA, $AA, $AA, $FF, $AA, $88   ; 
- - - - - - 0x002807 00:A7F7: AA        .byte $AA, $AA, $AA, $AA, $2A, $0C, $AA, $88   ; 
- - - - - - 0x00280F 00:A7FF: AA        .byte $AA, $AA, $AA, $AA, $22, $00, $AA, $88   ; 
- - - - - - 0x002817 00:A807: AA        .byte $AA, $AA, $AA, $AA, $22, $00, $A0, $A0   ; 
- - - - - - 0x00281F 00:A80F: 44        .byte $44, $00, $00, $AA, $AA, $11, $00, $00   ; 
- - - - - - 0x002827 00:A817: 04        .byte $04, $00, $00, $0A, $0A, $01   ; 



off_A81D_12:
- - - - - - 0x00282D 00:A81D: 00        .byte $00, $00, $CF, $CF, $CF, $CF, $CF, $CF, $00, $A5, $00, $00, $0E, $0F, $00, $00   ; 
- D 1 - I - 0x00283D 00:A82D: 5E        .byte $5E, $5F   ; 
off_A82F_1C:
- D 1 - I - 0x00283F 00:A82F: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $80, $81, $00, $00, $00, $00   ; 
- D 1 - I - 0x00284F 00:A83F: 00        .byte $00, $00, $5E, $5F, $6C, $6D, $9E, $9E, $0E, $0F, $2D   ; 
off_A84A_11:
- D 1 - I - 0x00285A 00:A84A: 2E        .byte $2E, $2E, $2E, $2E, $2E, $2F, $99, $9A, $B4, $B5, $B5, $B6, $99, $A9, $A9, $9A   ; 
- D 1 - I - 0x00286A 00:A85A: 2D        .byte $2D, $2E, $5E, $5F, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF   ; 
off_A869_09:
- D 1 - I - 0x002879 00:A869: C1        .byte $C1, $C2, $C1, $C2, $C1, $C2, $C1, $C2, $C1, $C2, $C1, $C2, $C1, $C2, $C1, $C2   ; 
- D 1 - I - 0x002889 00:A879: C1        .byte $C1, $C2   ; 
off_A87B_09:
- D 1 - I - 0x00288B 00:A87B: C1        .byte $C1, $C2, $C1, $C2, $C1, $C2, $C1, $C2, $C1, $C2, $C1, $C2, $C1, $C2, $C2, $00   ; 
- D 1 - I - 0x00289B 00:A88B: 1E        .byte $1E, $1F, $1E, $00, $C1, $C2, $C1, $C2, $C1, $C2, $C1, $C2, $C1, $C2, $C1, $C2   ; 



_off028_0x0028AB_0C:
- D 1 - I - 0x0028AB 00:A89B: AA        .byte $AA, $EE, $FF, $55, $55, $44, $55, $55   ; 
- D 1 - I - 0x0028B3 00:A8A3: AA        .byte $AA, $EE, $33, $55, $55, $44, $55, $55   ; 
- D 1 - I - 0x0028BB 00:A8AB: AA        .byte $AA, $EE, $33, $05, $05, $04, $45, $55   ; 
- D 1 - I - 0x0028C3 00:A8B3: AA        .byte $AA, $22, $33, $11, $55, $55, $AA, $55   ; 
- D 1 - I - 0x0028CB 00:A8BB: AA        .byte $AA, $22, $00, $11, $55, $55, $55, $55   ; 
- D 1 - I - 0x0028D3 00:A8C3: A0        .byte $A0, $20, $00, $50, $50, $50, $55, $55   ; 
- - - - - - 0x0028DB 00:A8CB: 44        .byte $44, $00, $00, $AA, $AA, $11, $00, $00   ; 
- - - - - - 0x0028E3 00:A8D3: 04        .byte $04, $00, $00, $0A, $0A, $01   ; 



off_A8D9_1A:
- - - - - - 0x0028E9 00:A8D9: 00        .byte $00, $00, $A5, $00, $00, $00, $00, $00, $00, $A5, $00, $00, $0E, $0F, $6D, $9E   ; 
- D 1 - I - 0x0028F9 00:A8E9: 3D        .byte $3D, $3E, $3E, $3F, $3E, $3E, $3E, $3E, $3F, $3E, $3E, $3E, $3E, $3E, $3F, $3E   ; 



off_A8F9_02:
- D 1 - I - 0x002909 00:A8F9: 86        .byte $86, $86, $86, $86, $86, $86, $86, $86, $86, $72, $73, $86, $86, $86, $86, $86   ; 
- - - - - - 0x002919 00:A909: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_A913_13:
- D 1 - I - 0x002923 00:A913: 00        .byte $00, $00, $00, $00, $00, $00, $5D, $5D, $00, $00, $00, $00, $5D, $00, $00, $00   ; 
- D 1 - I - 0x002933 00:A923: 4E        .byte $4E, $54, $00, $54, $90, $FF, $CF, $00, $00, $00, $00, $00, $00, $CF   ; 
off_A931_02:
- D 1 - I - 0x002941 00:A931: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $CF, $CF, $25, $CF, $08, $00, $FF, $1B, $1B, $FF   ; 
- D 1 - I - 0x002951 00:A941: FF        .byte $FF, $FF, $1B, $FF, $29, $2A, $1B, $FF, $FF, $FF, $1B, $FF, $FF, $FF, $C7   ; 
off_A950_1A:
- D 1 - I - 0x002960 00:A950: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $9C, $CF, $CF, $08, $08, $00, $FF, $1B, $1B, $FF   ; 
- D 1 - I - 0x002970 00:A960: FF        .byte $FF, $FF, $1B, $FF, $29, $2A, $C7, $FF, $00, $00, $00, $3F, $FF, $FF, $C7, $FF   ; 



off_A970_0E:
- D 1 - I - 0x002980 00:A970: 30        .byte $30, $31, $33, $34, $CF, $11, $A3, $A4, $CF, $11, $1C, $1C, $1C, $1C, $11, $CF   ; 
- - - - - - 0x002990 00:A980: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



off_A98C_0A:
- D 1 - I - 0x00299C 00:A98C: 00        .byte $00, $00, $00, $00, $16, $17, $02, $03, $CF, $11, $1B, $1D, $1D, $5D, $11, $CF   ; 
- - - - - - 0x0029AC 00:A99C: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_A9A7_04:
- D 1 - I - 0x0029B7 00:A9A7: 00        .byte $00, $00, $00, $00, $00, $71, $72, $73, $74, $76, $74, $BF, $BF, $40, $00, $53   ; 
- D 1 - I - 0x0029C7 00:A9B7: BF        .byte $BF, $BF, $BF, $78, $79, $79, $79, $79, $79, $79, $79, $79, $9B   ; 
off_A9C4_1B:
- D 1 - I - 0x0029D4 00:A9C4: 00        .byte $00, $00, $00, $5D, $5D, $5D, $00, $00, $5D, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x0029E4 00:A9D4: 5D        .byte $5D, $00, $00, $00, $A0, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1   ; 



off_A9E4_10:
- D 1 - I - 0x0029F4 00:A9E4: 50        .byte $50, $51, $65, $53, $53, $53, $53, $53, $53, $54, $35, $36, $83, $83, $83, $83   ; 
- - - - - - 0x002A04 00:A9F4: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_AA00_16:
- D 1 - I - 0x002A10 00:AA00: 00        .byte $00, $00, $00, $00, $4D, $6E, $6D, $5D, $00, $00, $00, $00, $5D, $00, $00, $00   ; 
- D 1 - I - 0x002A20 00:AA10: 5D        .byte $5D, $00, $54, $00, $70, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71   ; 



_off028_0x002A30_0D:
- D 1 - I - 0x002A30 00:AA20: A0        .byte $A0, $A0, $A0, $A0, $55, $90, $50, $98   ; 
- D 1 - I - 0x002A38 00:AA28: FF        .byte $FF, $CF, $FF, $FF, $A5, $AA, $AA, $6A   ; 
- D 1 - I - 0x002A40 00:AA30: FB        .byte $FB, $AA, $BB, $EE, $A5, $AA, $AA, $6A   ; 
- D 1 - I - 0x002A48 00:AA38: FD        .byte $FD, $FF, $FB, $FE, $55, $A9, $A5, $A9   ; 
- D 1 - I - 0x002A50 00:AA40: 27        .byte $27, $B5, $DD, $55, $5A, $0A, $0A, $86   ; 
- D 1 - I - 0x002A58 00:AA48: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x002A60 00:AA50: 55        .byte $55, $90, $50, $98, $5A, $9A, $5A, $96   ; 
- - - - - - 0x002A68 00:AA58: 05        .byte $05, $0A, $0A, $0A, $05, $0A, $0A   ; 



off_AA5F_13:
off_AA5F_16:
- - - - - - 0x002A6F 00:AA5F: 0A        .byte $0A, $0B   ; 
off_AA61_12:
off_AA61_15:
- D 1 - I - 0x002A71 00:AA61: 59        .byte $59, $2B   ; 
off_AA63_11:
off_AA63_14:
off_AA63_17:
- D 1 - I - 0x002A73 00:AA63: 1A        .byte $1A, $1B, $0A, $0B, $59, $2B, $1A, $1B, $0A, $0B, $59, $2B, $1A, $1B, $0A, $0B   ; 
- D 1 - I - 0x002A83 00:AA73: 59        .byte $59, $2B, $1A, $1B, $0A, $0B, $59, $2B, $1A, $1B, $0A, $0B, $59, $2B, $1A, $1B   ; 



_off028_0x002A93_0E:
_off028_0x002A93_30:
- D 1 - I - 0x002A93 00:AA83: AA        .byte $AA, $AA, $AA, $AB, $AA, $EA, $AA, $AA   ; 
- D 1 - I - 0x002A9B 00:AA8B: AA        .byte $AA, $AA, $AA, $AB, $6A, $AE, $AA, $9A   ; 
- D 1 - I - 0x002AA3 00:AA93: AA        .byte $AA, $AA, $AA, $AA, $EA, $AA, $AA, $BA   ; 
- D 1 - I - 0x002AAB 00:AA9B: AA        .byte $AA, $AA, $AA, $AA, $AE, $AA, $AA, $AB   ; 
- D 1 - I - 0x002AB3 00:AAA3: AA        .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 
- D 1 - I - 0x002ABB 00:AAAB: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x002AC3 00:AAB3: 55        .byte $55, $55, $55, $55, $55, $55, $55, $99   ; 
- - - - - - 0x002ACB 00:AABB: 05        .byte $05, $05, $05, $05, $05, $05, $05, $09   ; 



off_AAC3_08:
- - - - - - 0x002AD3 00:AAC3: 86        .byte $86, $CE, $CE, $87, $39, $85, $85, $85, $85, $92, $5D, $5D, $4D, $6E, $6E, $6D   ; 
- D 1 - I - 0x002AE3 00:AAD3: 00        .byte $00, $24, $23, $24, $23, $24, $23, $24, $23, $24, $23, $24   ; 
off_AADF_08:
- D 1 - I - 0x002AEF 00:AADF: 23        .byte $23, $24, $23, $24, $5D, $5D, $5D, $4B, $5D, $3B, $4E, $4C, $39, $85, $85, $85   ; 
- D 1 - I - 0x002AFF 00:AAEF: 00        .byte $00, $FF, $B9, $FF, $39, $5D, $85, $85, $85, $0B, $0C, $85, $85, $85, $5D   ; 
off_AAFE_15:
- D 1 - I - 0x002B0E 00:AAFE: 85        .byte $85, $06, $09, $84, $00, $66, $9E, $9E, $66, $00, $85, $06, $09, $84, $00, $66   ; 
- D 1 - I - 0x002B1E 00:AB0E: 9E        .byte $9E, $9E, $9E, $9E, $9E, $9E, $9E, $9E, $A7, $CE, $CE, $CE, $FF   ; 
off_AB1B_01:
- D 1 - I - 0x002B2B 00:AB1B: CE        .byte $CE, $FF, $FF, $FF, $CE, $CE, $CE, $CE, $CE, $CE, $35, $CE, $00, $00, $78, $CE   ; 
- D 1 - I - 0x002B3B 00:AB2B: CE        .byte $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CF, $78, $00, $00, $3B   ; 



off_AB3B_09:
- - - - - - 0x002B4B 00:AB3B: 86        .byte $86, $CE, $85, $87, $39, $85, $85, $85, $85, $92, $6D, $5D, $5D, $4C, $5D, $00   ; 
- D 1 - I - 0x002B5B 00:AB4B: 00        .byte $00, $8C, $00, $8C, $00, $8C, $00, $8C, $00, $8C, $00, $8C, $00, $8C   ; 
off_AB59_09:
- D 1 - I - 0x002B69 00:AB59: 00        .byte $00, $8C, $00, $00, $5D, $5D, $5D, $1F, $5D, $4B, $5D, $1F, $39, $85, $85, $85   ; 
- D 1 - I - 0x002B79 00:AB69: 00        .byte $00, $FF, $FF, $B9, $39, $5D, $85, $85, $85, $85, $85, $85, $85, $85, $4E   ; 
off_AB78_19:
- D 1 - I - 0x002B88 00:AB78: 85        .byte $85, $84, $84, $84, $00, $66, $7D, $7D, $66, $00, $85, $84, $84, $84, $00, $66   ; 
- D 1 - I - 0x002B98 00:AB88: 7D        .byte $7D, $7D, $7D, $7D, $7D, $9E, $9E, $9E, $0A, $0D, $1D, $1E, $1E, $1E, $1E   ; 
off_AB97_0B:
- D 1 - I - 0x002BA7 00:AB97: 1E        .byte $1E, $5D, $5D, $1F, $66, $67, $1E, $1F, $66, $67, $5D, $1F, $1E, $1F, $1E, $4E   ; 
- D 1 - I - 0x002BB7 00:ABA7: 1E        .byte $1E, $1F, $66, $67, $1E, $1F, $5D, $5D, $5D, $1F, $1E, $1F, $5D, $5D, $66, $67   ; 



off_ABB7_0A:
- - - - - - 0x002BC7 00:ABB7: 86        .byte $86, $CE, $CE, $87, $39, $85, $85, $85, $85, $92, $3E, $6E, $6E, $6E, $6E, $3E   ; 
- D 1 - I - 0x002BD7 00:ABC7: 7E        .byte $7E, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $7E, $7E   ; 
off_ABD3_10:
- D 1 - I - 0x002BE3 00:ABD3: 8F        .byte $8F, $8F, $8F, $8F, $AE, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
off_ABE1_0F:
- D 1 - I - 0x002BF1 00:ABE1: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF   ; 
off_ABE7_17:
- D 1 - I - 0x002BF7 00:ABE7: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $A8, $FF, $FF, $FF   ; 
- D 1 - I - 0x002C07 00:ABF7: FF        .byte $FF, $FF, $FF, $FF   ; 
_off028_0x002C0B_0F:
- D 1 - I - 0x002C0B 00:ABFB: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x002C13 00:AC03: FF        .byte $FF, $FF, $FF, $FF, $5F, $5F, $5F, $5F   ; 
- D 1 - I - 0x002C1B 00:AC0B: FF        .byte $FF, $FF, $FF, $FF, $05, $05, $05, $05   ; 
- D 1 - I - 0x002C23 00:AC13: AF        .byte $AF, $AF, $AF, $AF, $A0, $A0, $A0, $A0   ; 
- D 1 - I - 0x002C2B 00:AC1B: AA        .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 
- D 1 - I - 0x002C33 00:AC23: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- - - - - - 0x002C3B 00:AC2B: AA        .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 
- - - - - - 0x002C43 00:AC33: 0A        .byte $0A, $0A, $0A, $0A, $0A, $0A, $0A, $0A   ; 



off_AC3B_0B:
- - - - - - 0x002C4B 00:AC3B: 86        .byte $86, $CE, $CE, $87, $39, $85, $85, $85, $85, $92, $1C, $7B, $7B, $7B, $7B, $1C   ; 
- D 1 - I - 0x002C5B 00:AC4B: 8E        .byte $8E, $8F, $8F, $8F, $8F, $8F, $8F, $0B, $0C, $8F, $8E, $8E   ; 
off_AC57_0D:
- D 1 - I - 0x002C67 00:AC57: 8F        .byte $8F, $8F, $8F, $8F, $8F, $8E, $1C, $7B, $7B, $7B, $7B, $1C, $49, $A1, $A1, $A1   ; 
- D 1 - I - 0x002C77 00:AC67: 00        .byte $00, $17, $FF, $FF, $39, $5D, $85, $A6, $86, $CE, $85, $87, $A8, $85, $5D, $85   ; 



off_AC77_0C:
- - - - - - 0x002C87 00:AC77: 86        .byte $86, $CE, $CE, $87, $39, $85, $85, $85, $85, $92, $1C, $7B, $7B, $7B, $7B, $1C   ; 
- D 1 - I - 0x002C97 00:AC87: 8E        .byte $8E, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8E, $8E, $8F, $8F, $8F   ; 
off_AC96_0B:
- D 1 - I - 0x002CA6 00:AC96: 8F        .byte $8F, $0B, $0C, $8F, $8F, $8E, $1C, $7B, $7B, $7B, $7B, $1C, $39, $85, $85, $85   ; 
- D 1 - I - 0x002CB6 00:ACA6: 00        .byte $00, $FF, $FF, $FF, $39, $5D, $85, $A6, $76, $88, $88, $77, $A8, $85, $5D, $85   ; 



off_ACB6_0D:
- - - - - - 0x002CC6 00:ACB6: 96        .byte $96, $98, $98, $97, $49, $A1, $A1, $A1, $A1, $A2, $1C, $7B, $7B, $7B, $7B, $1C   ; 
- D 1 - I - 0x002CD6 00:ACC6: 8E        .byte $8E, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8F, $8E, $8E, $8F, $8F, $8F, $8F   ; 



off_ACD6_0E:
- - - - - - 0x002CE6 00:ACD6: AE        .byte $AE, $AE, $AE, $AE, $AE, $AF, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05   ; 
off_ACE6_0E:
- D 1 - I - 0x002CF6 00:ACE6: 05        .byte $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05, $05   ; 
- D 1 - I - 0x002D06 00:ACF6: 20        .byte $20, $00, $17, $FF, $39, $5D, $85, $A6, $86, $CE, $CE, $87, $A8, $85, $5D, $85   ; 



off_AD06_0F:
- - - - - - 0x002D16 00:AD06: BE        .byte $BE, $BE, $BE, $BE, $BE, $BF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $4A, $FF   ; 
- D 1 - I - 0x002D26 00:AD16: 4A        .byte $4A, $FF, $4A, $FF   ; 
off_AD1A_0F:
- D 1 - I - 0x002D2A 00:AD1A: 4A        .byte $4A, $FF, $4A, $FF, $4A, $FF, $4A, $FF, $4A, $FF, $4A, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x002D3A 00:AD2A: 40        .byte $40, $30, $00, $17, $39, $5D, $85, $A6, $86, $CE, $CE, $87, $A8, $85, $5D, $85   ; 



off_AD3A_11:
- - - - - - 0x002D4A 00:AD3A: 2B        .byte $2B, $2B   ; 
off_AD3C_13:
- D 1 - I - 0x002D4C 00:AD3C: 2B        .byte $2B, $2B, $2B, $2B, $2B, $2B, $2B, $2B, $2B, $08, $19, $19, $19, $19, $19, $19   ; 
- D 1 - I - 0x002D5C 00:AD4C: 19        .byte $19   ; 
off_AD4D_13:
- D 1 - I - 0x002D5D 00:AD4D: 19        .byte $19, $19, $19, $19, $19, $19, $19, $19, $19, $19, $19, $19, $19, $19, $19, $07   ; 
- D 1 - I - 0x002D6D 00:AD5D: 2B        .byte $2B, $2B, $2B, $2B, $2B, $2B, $2B, $2B, $2B, $2B, $2B, $2B, $2B, $2B, $2B, $2B   ; 



off_AD6D_01:
- D 1 - I - 0x002D7D 00:AD6D: 53        .byte $53, $53, $53, $53, $5D, $1F, $1E, $1F, $5D, $3B, $5D, $5D, $39, $85, $85, $85   ; 
- D 1 - I - 0x002D8D 00:AD7D: 00        .byte $00, $FF, $FF, $FF, $39, $85, $85   ; 
off_AD84_01:
- D 1 - I - 0x002D94 00:AD84: 85        .byte $85, $85, $85, $85, $85, $85, $85, $85, $85, $92, $5D, $5D, $5D, $1F, $5D, $5D   ; 
- D 1 - I - 0x002DA4 00:AD94: 53        .byte $53, $53, $53, $53, $53, $53, $53, $53, $53, $53, $53, $53, $53, $53, $53, $53   ; 



off_ADA4_15:
- D 1 - I - 0x002DB4 00:ADA4: 1A        .byte $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A   ; 
- D 1 - I - 0x002DC4 00:ADB4: 1A        .byte $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A, $1A   ; 



off_ADC4_16:
- D 1 - I - 0x002DD4 00:ADC4: 01        .byte $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $02   ; 
- D 1 - I - 0x002DE4 00:ADD4: 01        .byte $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01, $02, $01   ; 
off_ADE3_12:
- D 1 - I - 0x002DF3 00:ADE3: 02        .byte $02, $03, $02, $03, $02, $03, $02, $03, $02, $03, $02, $03, $02, $03, $02, $03   ; 
- D 1 - I - 0x002E03 00:ADF3: 02        .byte $02, $03, $02, $03, $02, $03, $02, $03, $02, $03, $02, $03, $02, $03, $02, $03   ; 



off_AE03_17:
off_AE03_1C:
- D 1 - I - 0x002E13 00:AE03: 11        .byte $11, $12, $11, $12, $11, $12, $11, $12, $11, $12, $11, $12, $11, $12, $11, $12   ; 
- D 1 - I - 0x002E23 00:AE13: 11        .byte $11, $12, $11, $12, $11, $12, $11, $12, $11, $12, $11, $12, $11, $12, $11, $12   ; 



off_AE23_1D:
- D 1 - I - 0x002E33 00:AE23: 14        .byte $14, $15, $14, $15, $14, $15, $14, $15, $14, $15, $14, $15, $14, $15, $14, $15   ; 
- D 1 - I - 0x002E43 00:AE33: 14        .byte $14, $15, $14, $15, $14, $15, $14, $15, $14, $15, $14, $15, $14, $15, $14, $15   ; 



off_AE43_03:
- D 1 - I - 0x002E53 00:AE43: 99        .byte $99, $99, $00, $99, $99, $99, $99, $99, $99, $99, $99, $99, $00, $99, $00, $5D   ; 
- D 1 - I - 0x002E63 00:AE53: 00        .byte $00, $54, $5D, $54, $90, $FF, $73, $FF, $FF, $FF, $FF, $FF   ; 
off_AE5F_03:
- D 1 - I - 0x002E6F 00:AE5F: FF        .byte $FF, $FF, $FF, $FF, $5D, $4D, $3E, $6E, $5D, $6E, $6E, $3E, $39, $85, $85, $85   ; 
- D 1 - I - 0x002E7F 00:AE6F: 00        .byte $00, $FF, $FF, $FF, $39, $85, $85, $85, $85, $5D, $85, $85, $85, $85   ; 
off_AE7D_03:
- D 1 - I - 0x002E8D 00:AE7D: 85        .byte $85, $85, $CA, $43, $44, $CB, $85, $85, $85, $92, $6D, $5D, $5D, $1F, $5D, $4E   ; 
- D 1 - I - 0x002E9D 00:AE8D: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $50, $51, $52   ; 
off_AE9B_03:
- D 1 - I - 0x002EAB 00:AE9B: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $CF, $CF, $CF, $04, $04, $00, $C6, $1B, $1B, $C6   ; 
- D 1 - I - 0x002EBB 00:AEAB: FF        .byte $FF, $C6, $1B, $C6, $19, $1A, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $C7, $C6   ; 



off_AEBB_04:
- D 1 - I - 0x002ECB 00:AEBB: 89        .byte $89, $89, $00, $89, $89, $89, $89, $89, $89, $89, $89, $89, $00, $89, $00, $5D   ; 
- D 1 - I - 0x002EDB 00:AECB: 54        .byte $54, $00, $4E, $00, $70, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71   ; 



off_AEDB_07:
- D 1 - I - 0x002EEB 00:AEDB: CE        .byte $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $00, $CE, $5D, $00   ; 
- D 1 - I - 0x002EFB 00:AEEB: 4D        .byte $4D, $6E, $6D, $54, $90, $FF, $73, $FF, $FF, $FF, $FF, $FF   ; 
_off028_0x002F07_10:
- D 1 - I - 0x002F07 00:AEF7: FF        .byte $FF, $FF, $FF, $FF, $55, $55, $55, $55   ; 
- D 1 - I - 0x002F0F 00:AEFF: 5F        .byte $5F, $FF, $FF, $FF, $55, $55, $55, $55   ; 
- D 1 - I - 0x002F17 00:AF07: 05        .byte $05, $CF, $FF, $FF, $55, $55, $05, $55   ; 
- D 1 - I - 0x002F1F 00:AF0F: A0        .byte $A0, $AC, $AF, $AF, $65, $55, $00, $55   ; 
- D 1 - I - 0x002F27 00:AF17: AA        .byte $AA, $AA, $AA, $AA, $AA, $A5, $A0, $A5   ; 
- D 1 - I - 0x002F2F 00:AF1F: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- D 1 - I - 0x002F37 00:AF27: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- D 1 - I - 0x002F3F 00:AF2F: 05        .byte $05, $05, $05, $05, $05, $05, $05, $05   ; 



off_AF37_08:
- D 1 - I - 0x002F47 00:AF37: CE        .byte $CE, $CE, $CE, $CE, $C5, $00, $00, $00, $00, $00, $00, $00, $00, $00, $5D, $00   ; 
- D 1 - I - 0x002F57 00:AF47: 5D        .byte $5D, $00, $54, $00, $70, $71, $CF, $00, $00, $00, $00, $00, $00, $CF, $71, $71   ; 



off_AF57_0E:
- D 1 - I - 0x002F67 00:AF57: 89        .byte $89, $89, $89, $89, $00, $89, $5D, $5D, $89, $89, $89, $89, $00, $89, $4E, $00   ; 
- D 1 - I - 0x002F77 00:AF67: 5D        .byte $5D, $00, $54, $00, $70, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71   ; 



off_AF77_0F:
- D 1 - I - 0x002F87 00:AF77: 99        .byte $99, $99, $99, $99, $00, $99, $5D, $5D, $99, $99, $99, $99, $00, $99, $5D, $00   ; 
- D 1 - I - 0x002F97 00:AF87: 5D        .byte $5D, $54, $00, $54, $90, $FF, $73, $FF, $FF, $FF, $FF, $FF, $FF   ; 
off_AF94_0B:
- D 1 - I - 0x002FA4 00:AF94: FF        .byte $FF, $FF, $FF, $00, $66, $85, $84, $84, $84, $84, $84, $84, $66, $00, $FF, $FF   ; 
- D 1 - I - 0x002FB4 00:AFA4: FF        .byte $FF, $FF, $FF, $B0, $40, $41, $41, $42, $43, $40, $41, $42, $43, $40   ; 
off_AFB2_12:
- D 1 - I - 0x002FC2 00:AFB2: 42        .byte $42, $42, $42, $42, $42, $42, $42, $42, $42, $42, $36, $41, $41, $41, $41, $41   ; 
- D 1 - I - 0x002FD2 00:AFC2: 41        .byte $41, $41   ; 
off_AFC4_12:
- D 1 - I - 0x002FD4 00:AFC4: 41        .byte $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $41, $37, $42   ; 
- D 1 - I - 0x002FE4 00:AFD4: 42        .byte $42, $42, $42, $10, $AD, $AD, $AD, $AD, $AD, $AD, $AD   ; 
off_AFDF_0C:
- D 1 - I - 0x002FEF 00:AFDF: AD        .byte $AD, $AD, $AD, $AD, $AD, $FF, $FF, $FF, $FF, $AC, $CD, $CF, $A0, $56, $56, $66   ; 
- D 1 - I - 0x002FFF 00:AFEF: 00        .byte $00, $00, $00, $00, $00, $00, $66, $74, $5E, $5F, $74, $C0, $0E, $0F, $A7, $BA   ; 



off_AFFF_10:
- D 1 - I - 0x00300F 00:AFFF: 9A        .byte $9A, $9A, $9A, $9A, $00, $9A, $5D, $5D, $9A, $9A, $9A, $9A, $00, $9A, $5D, $00   ; 
- D 1 - I - 0x00301F 00:B00F: 5D        .byte $5D, $00, $54, $00, $70, $71, $CF, $00, $00, $00, $00, $00, $00, $CF, $71, $71   ; 



off_B01F_1A:
- D 1 - I - 0x00302F 00:B01F: 6E        .byte $6E, $6E, $6E, $7F, $5D, $5D, $00, $00, $5D, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x00303F 00:B02F: 5D        .byte $5D, $00, $00, $00, $70, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71   ; 



off_B03F_1D:
- D 1 - I - 0x00304F 00:B03F: 4B        .byte $4B, $4C, $4B, $5D, $5D, $5D, $00, $00, $5D, $00, $00, $00, $00, $00, $5D, $00   ; 
- D 1 - I - 0x00305F 00:B04F: 00        .byte $00, $00, $00, $00, $00, $CE, $CE, $CE, $CE, $CE, $CE   ; 
off_B05A_09:
off_B05A_0B:
- D 1 - I - 0x00306A 00:B05A: CE        .byte $CE, $CE, $CE, $CE, $00, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $00, $CE, $5D, $00   ; 
- D 1 - I - 0x00307A 00:B06A: 5D        .byte $5D, $54, $00, $54, $90, $FF, $CF, $00, $00, $00, $00, $00, $00, $CF   ; 
off_B078_07:
- D 1 - I - 0x003088 00:B078: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $00, $00, $62, $00, $00, $00, $C6, $1B, $1B, $C6   ; 
- D 1 - I - 0x003098 00:B088: FF        .byte $FF, $C6, $1B, $C6, $19, $1A, $1B, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $C7, $C6   ; 



_off028_0x0030A8_11:
- D 1 - I - 0x0030A8 00:B098: 55        .byte $55, $55, $55, $D5, $F5, $A5, $A5, $A5   ; 
- D 1 - I - 0x0030B0 00:B0A0: 55        .byte $55, $55, $55, $DD, $FF, $AA, $AA, $AA   ; 
- D 1 - I - 0x0030B8 00:B0A8: 55        .byte $55, $55, $55, $DD, $FF, $AA, $AA, $AA   ; 
- D 1 - I - 0x0030C0 00:B0B0: 5F        .byte $5F, $DF, $55, $DD, $FF, $AA, $AA, $AA   ; 
- D 1 - I - 0x0030C8 00:B0B8: A5        .byte $A5, $ED, $A5, $FD, $FF, $AA, $AA, $AA   ; 
- D 1 - I - 0x0030D0 00:B0C0: AA        .byte $AA, $FE, $AA, $BB, $FF, $AA, $AA, $AA   ; 
- D 1 - I - 0x0030D8 00:B0C8: 5A        .byte $5A, $5B, $95, $A9, $DF, $AA, $AA, $AA   ; 
- D 1 - I - 0x0030E0 00:B0D0: 05        .byte $05, $09, $09, $06, $09, $0A, $0A, $0A   ; 



off_B0D8_01:
- D 1 - I - 0x0030E8 00:B0D8: 4B        .byte $4B, $4C, $4B, $5D, $5D, $5D, $4B, $4C, $5D, $4C, $5E, $5F, $5F, $5F, $5D, $6E   ; 
- D 1 - I - 0x0030F8 00:B0E8: 6E        .byte $6E, $3F, $A9, $00, $90, $FF, $FF, $73, $FF, $85, $85, $85, $85, $FF, $FF, $92   ; 



off_B0F8_03:
- D 1 - I - 0x003108 00:B0F8: 4B        .byte $4B, $4C, $4B, $4E, $5D, $5D, $4D, $6E, $6D, $4C, $4F, $CE, $4F, $CE, $5D, $4B   ; 
- D 1 - I - 0x003118 00:B108: 4C        .byte $4C, $00, $A9, $B3, $90, $FF, $FF, $73, $FF, $C6, $C9, $C9, $C9, $B2, $FF, $92   ; 



off_B118_0E:
- D 1 - I - 0x003128 00:B118: 0D        .byte $0D, $4D, $6E, $5D, $6E, $3E, $6E, $6D, $5D, $0E, $0D, $4D, $6D, $0E, $0D, $0E   ; 
- D 1 - I - 0x003138 00:B128: 0D        .byte $0D, $0E, $5D, $0E, $5D, $00, $FF, $A6, $86, $CE, $CE, $87, $A8, $FF   ; 
off_B136_0F:
- D 1 - I - 0x003146 00:B136: 5D        .byte $5D, $5D, $5E, $5F, $5E, $5E, $5F, $5D, $5D, $5D, $5E, $5F, $5E, $5E, $5F, $5D   ; 
- D 1 - I - 0x003156 00:B146: 5D        .byte $5D, $5D, $5E, $5F, $5E, $5E, $5F, $5D, $5D, $5D, $5E, $5F, $5E, $5E, $5F   ; 
off_B155_10:
- D 1 - I - 0x003165 00:B155: 5D        .byte $5D, $0E, $0D, $0E, $0D, $0E, $0D, $0E, $0D, $0E, $5D, $5D, $0D, $0E, $0D, $0E   ; 
- D 1 - I - 0x003175 00:B165: 0D        .byte $0D, $0E, $0D, $0E, $0D, $4D, $6E, $6D, $5D, $0E, $0D, $4D, $6E, $5D, $0D   ; 
off_B174_04:
- D 1 - I - 0x003184 00:B174: 0E        .byte $0E, $0F, $0E, $0F, $0E, $0F, $0E, $0F, $0E, $0F, $0E, $0F, $0E, $0F, $0E, $0F   ; 
- D 1 - I - 0x003194 00:B184: 0E        .byte $0E, $0F, $0E, $0F, $0E, $0F, $0E, $0F, $0E, $0F, $0E, $0F, $0E, $0F   ; 
off_B192_0C:
- D 1 - I - 0x0031A2 00:B192: 0E        .byte $0E, $0F, $0F, $2E, $26, $6F, $00, $00, $B6, $00, $00, $00, $AC, $AD, $29, $2A   ; 
- D 1 - I - 0x0031B2 00:B1A2: AB        .byte $AB, $AC, $AD, $AC, $AC, $AC, $AD, $AC, $00, $00, $00, $3F, $FF, $FF, $C7, $FF   ; 



off_B1B2_10:
- D 1 - I - 0x0031C2 00:B1B2: 6E        .byte $6E, $6E, $6E, $6D, $5D, $5D, $0D, $0E, $0D, $4D, $6E, $6D, $0D, $5D, $0D, $0E   ; 
- D 1 - I - 0x0031D2 00:B1C2: 0D        .byte $0D, $0E, $0D, $0E, $4E, $00, $FF, $A6, $86, $CE, $CE, $87, $A8, $FF, $4E, $4E   ; 



_off028_0x0031E2_13:
- D 1 - I - 0x0031E2 00:B1D2: 55        .byte $55, $55, $11, $44, $11, $00, $00, $00   ; 
- D 1 - I - 0x0031EA 00:B1DA: 00        .byte $00, $01, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x0031F2 00:B1E2: F0        .byte $F0, $F0, $F0, $F0, $F0, $B0, $A0, $E0   ; 
- D 1 - I - 0x0031FA 00:B1EA: FF        .byte $FF, $FF, $FF, $FF, $FF, $BB, $AA, $EE   ; 
- D 1 - I - 0x003202 00:B1F2: 0F        .byte $0F, $0F, $0F, $0F, $0F, $0B, $0A, $0E   ; 
- D 1 - I - 0x00320A 00:B1FA: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003212 00:B202: A0        .byte $A0, $A0, $A0, $A0, $A9, $A0, $59, $90   ; 
- - - - - - 0x00321A 00:B20A: 00        .byte $00, $00, $00, $08, $0A, $02, $0A, $0A   ; 



off_B212_01:
- D 1 - I - 0x003222 00:B212: B3        .byte $B3, $A9, $00, $4D, $6E, $6E, $3E, $4D, $6E, $6E, $6E, $6D, $5D, $5D, $3B, $5D   ; 
- D 1 - I - 0x003232 00:B222: 4B        .byte $4B, $4C, $5D, $4C, $4B, $4C, $5D, $5D, $5D, $3C, $5E, $5E, $5E, $3C, $5D   ; 
off_B231_11:
- D 1 - I - 0x003241 00:B231: 00        .byte $00, $61, $75, $63, $63, $63, $63, $63, $63, $64, $35, $36, $53, $53, $53, $53   ; 
- - - - - - 0x003251 00:B241: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_B24D_17:
- D 1 - I - 0x00325D 00:B24D: 00        .byte $00, $00, $00, $00, $5D, $4D, $6E, $6D, $00, $00, $00, $00, $4E, $00, $00, $00   ; 
- D 1 - I - 0x00326D 00:B25D: 5D        .byte $5D, $54, $00, $54, $90, $FF, $73, $FF, $FF, $FF, $FF, $FF, $FF   ; 
off_B26A_0C:
- D 1 - I - 0x00327A 00:B26A: FF        .byte $FF, $FF, $FF, $00, $66, $85, $84, $84, $84, $84, $84, $84, $66, $00, $FF, $FF   ; 
- D 1 - I - 0x00328A 00:B27A: FF        .byte $FF, $FF, $FF, $B0, $00, $10, $11, $11, $11, $13, $10, $11, $11, $13   ; 
off_B288_11:
- D 1 - I - 0x003298 00:B288: 10        .byte $10, $11, $10, $11, $10, $11, $10, $11   ; 
off_B290_13:
- D 1 - I - 0x0032A0 00:B290: 12        .byte $12, $13, $12, $13, $12, $13, $12, $13, $12, $13, $12, $13, $12, $13, $12, $13   ; 
- D 1 - I - 0x0032B0 00:B2A0: 12        .byte $12, $13, $12, $13, $12, $13, $12, $13, $12, $13, $12, $13, $12, $13, $12, $13   ; 



off_B2B0_02:
- D 1 - I - 0x0032C0 00:B2B0: B3        .byte $B3, $A9, $00, $5D, $4B, $4C, $4B, $5D, $4D, $6E, $3E, $6E, $6E, $6E, $6E, $6D   ; 
- D 1 - I - 0x0032D0 00:B2C0: 3B        .byte $3B, $3C, $5D, $3C, $3B, $3C, $4E, $4E, $4E, $4C, $4B, $5E, $4B, $4C, $5D   ; 
off_B2CF_12:
- D 1 - I - 0x0032DF 00:B2CF: 00        .byte $00, $00, $7A, $7A, $00, $00, $87, $88, $00, $74, $35, $36, $63, $63, $63, $63   ; 
- - - - - - 0x0032EF 00:B2DF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_B2EB_18:
- D 1 - I - 0x0032FB 00:B2EB: 00        .byte $00, $00, $00, $00, $5D, $5D, $00, $00, $00, $00, $00, $00, $5D, $00, $00, $00   ; 
- D 1 - I - 0x00330B 00:B2FB: 5D        .byte $5D, $00, $54, $00, $70, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71   ; 



off_B30B_03:
- D 1 - I - 0x00331B 00:B30B: B3        .byte $B3, $A9, $00, $6D, $3B, $3C, $3B, $5D, $5D, $3C, $3B, $3C, $4E, $4E, $3B, $4D   ; 
- D 1 - I - 0x00332B 00:B31B: 6E        .byte $6E, $6E, $6D, $4C, $4B, $4C, $5D, $5D, $5D, $3C, $3B, $3C, $3B, $5E, $5D   ; 
off_B32A_0A:
- D 1 - I - 0x00333A 00:B32A: 00        .byte $00, $00, $3D, $3D, $3D, $3D, $00, $3D, $00, $00, $00, $00, $3D, $00, $00, $00   ; 
- D 1 - I - 0x00334A 00:B33A: 00        .byte $00, $3D, $3D, $00, $3D, $00, $9A, $00, $00, $00, $00, $00, $00, $9A   ; 
off_B348_0A:
- D 1 - I - 0x003358 00:B348: 3D        .byte $3D, $00, $3D, $3D, $3D, $00, $00, $00, $00, $3D, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x003368 00:B358: 0D        .byte $0D, $0E, $0D, $00, $00, $00, $3D, $00, $9A, $00, $00, $00, $00, $00, $00   ; 
off_B367_02:
- D 1 - I - 0x003377 00:B367: 9A        .byte $9A, $9A, $00, $9A, $9A, $9A, $9A, $9A, $9A, $9A, $9A, $9A, $00, $9A, $00, $3D   ; 
- D 1 - I - 0x003387 00:B377: 54        .byte $54, $00, $3D, $00, $70, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71   ; 



off_B387_04:
- D 1 - I - 0x003397 00:B387: B3        .byte $B3, $A9, $00, $6E, $6E, $3E, $6E, $6D, $5D, $4D, $6E, $6E, $6E, $5D, $6E, $5D   ; 
- D 1 - I - 0x0033A7 00:B397: 3E        .byte $3E, $6E, $6E, $6E, $6E, $3E, $5D, $5D, $5D, $3E, $6E, $6E, $6E, $3E, $5D   ; 
off_B3A6_11:
- D 1 - I - 0x0033B6 00:B3A6: 00        .byte $00, $5D, $5D, $5D, $5D, $5D, $1E, $1F, $1E, $5D, $1E, $1F, $1E, $5D, $1E, $1F   ; 
- D 1 - I - 0x0033C6 00:B3B6: 1E        .byte $1E, $1F, $1E, $1F, $5D, $00, $FF, $A6, $96, $98, $98, $97, $A8, $FF, $5D   ; 
off_B3C5_0C:
- D 1 - I - 0x0033D5 00:B3C5: 5D        .byte $5D, $0E, $5D, $5D, $4E, $0E, $0D, $0E, $0D, $5D, $0D, $0E, $0D, $0E, $0D, $0E   ; 
- D 1 - I - 0x0033E5 00:B3D5: 0D        .byte $0D, $0E, $0D, $0E, $0D, $0E, $4E, $00, $FF, $A6, $86, $CE, $CE, $87, $A8, $FF   ; 



off_B3E5_05:
- D 1 - I - 0x0033F5 00:B3E5: 6E        .byte $6E, $A9, $00, $6E, $6E, $6E, $6E, $6E, $5D, $5D, $4D, $6E, $6E, $6D, $6E, $5D   ; 
- D 1 - I - 0x003405 00:B3F5: 3E        .byte $3E, $6E, $6E, $6E, $6E, $3E, $5D, $5D, $5D, $3E, $6E, $6E, $6E, $3E, $5D   ; 
off_B404_0A:
- D 1 - I - 0x003414 00:B404: 00        .byte $00, $3D, $3D, $00, $56, $57, $00, $00, $56, $57, $3D, $00, $00, $00, $00, $3D   ; 
- D 1 - I - 0x003424 00:B414: 00        .byte $00, $00, $56, $57, $00, $00, $3D, $3D, $3D, $00, $00, $00, $3D, $3D, $56, $57   ; 



off_B424_09:
- D 1 - I - 0x003434 00:B424: B2        .byte $B2, $A4, $00, $C2, $9E, $9F, $C1, $C2, $9E, $9F, $C1, $C2, $C1, $C2, $C1, $C2   ; 
- D 1 - I - 0x003444 00:B434: C1        .byte $C1, $C2, $9E, $9F, $C1, $C2, $C1, $C2, $C1, $C2, $C1, $C2, $C1, $C2, $9E, $9F   ; 



off_B444_0C:
- D 1 - I - 0x003454 00:B444: 6E        .byte $6E, $6E, $6D, $0E, $0D, $0E, $0D, $0E, $0D, $0E, $5D, $0E, $83, $84, $0D, $5D   ; 
- D 1 - I - 0x003464 00:B454: 0D        .byte $0D, $0E, $0D, $0E, $0D, $0E, $5D, $5D, $5D, $0E, $83, $84, $5D, $5D   ; 
off_B462_0C:
- D 1 - I - 0x003472 00:B462: 0D        .byte $0D, $0E, $5D, $4E, $5D, $5D, $0D, $5D, $0D, $0E, $0D, $0E, $5D, $0E, $0D, $0E   ; 
- D 1 - I - 0x003482 00:B472: 0D        .byte $0D, $5D, $5D, $0E, $4E, $00, $FF, $A6, $86, $CE, $CE, $87, $A8, $FF, $4E   ; 
off_B481_0D:
- D 1 - I - 0x003491 00:B481: 4D        .byte $4D, $4E, $23, $24, $25, $11, $93, $94, $CF, $11, $1B, $3D, $3D, $5D, $11, $CF   ; 
- - - - - - 0x0034A1 00:B491: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
off_B49C_18:
- D 1 - I - 0x0034AC 00:B49C: 00        .byte $00, $00, $00, $00, $00, $6F, $3D, $6C, $CF, $CF, $CF, $00, $FF, $1B, $1B, $FF   ; 
- D 1 - I - 0x0034BC 00:B4AC: FF        .byte $FF, $FF, $1B, $FF, $29, $2A, $C7, $FF, $FF, $FF, $1B, $FF, $FF, $FF, $C7, $FF   ; 



off_B4BC_0D:
- D 1 - I - 0x0034CC 00:B4BC: 1E        .byte $1E, $5D, $1E, $1F, $1E, $1F, $1E, $1F, $1E, $1F, $4E, $1F, $93, $94, $1E, $5D   ; 
- D 1 - I - 0x0034DC 00:B4CC: 1E        .byte $1E, $1F, $1E, $1F, $1E, $1F, $5D, $4E, $5D, $1F, $93, $94, $5D, $5D   ; 
off_B4DA_0D:
- D 1 - I - 0x0034EA 00:B4DA: 1E        .byte $1E, $1F, $1F, $3E, $26, $6F, $00, $00, $B6, $00, $00, $00, $C6, $1B, $19, $1A   ; 
- D 1 - I - 0x0034FA 00:B4EA: 5C        .byte $5C, $C6, $1B, $C6, $FF, $C6, $1B, $C6, $00, $99, $9A, $4F, $FF, $C6, $C7, $C6   ; 



off_B4FA_0E:
- D 1 - I - 0x00350A 00:B4FA: 0D        .byte $0D, $4E, $0D, $0E, $0D, $0E, $0D, $0E, $0D, $0E, $5D, $0E, $0D, $0E, $0D, $5D   ; 
- D 1 - I - 0x00351A 00:B50A: 0D        .byte $0D, $0E, $0D, $0E, $0D, $0E, $5D, $5D, $5D, $0E, $0D, $0E, $5D, $4E, $0D, $0E   ; 



off_B51A_0F:
- D 1 - I - 0x00352A 00:B51A: 4D        .byte $4D, $6D, $1E, $1F, $1E, $1F, $1E, $1F, $1E, $1F, $5D, $4D, $6E, $3E, $6E, $6D   ; 
- D 1 - I - 0x00353A 00:B52A: 1E        .byte $1E, $1F, $1E, $1F, $1E, $1F, $5D, $5D, $5D, $6E, $3E, $6E, $6D, $5D   ; 
off_B538_0B:
- D 1 - I - 0x003548 00:B538: 1E        .byte $1E, $1F, $5D, $5D, $5D, $5D, $1E, $5D, $1E, $1F, $1E, $1F, $5D, $1F, $1E, $1F   ; 
- D 1 - I - 0x003558 00:B548: 1E        .byte $1E, $5D, $5D, $1F, $5D, $00, $FF, $A6, $76, $88, $88, $77, $A8, $FF   ; 
off_B556_11:
- D 1 - I - 0x003566 00:B556: 5D        .byte $5D, $1F, $1E, $1F, $1E, $1F, $1E, $1F, $1E, $1F, $5D, $5D, $1E, $1F, $1E, $1F   ; 
- D 1 - I - 0x003576 00:B566: 1E        .byte $1E, $1F, $1E, $1F, $4D, $5D, $5D, $5D, $5D, $6E, $6E, $6D, $6E, $5D   ; 
off_B574_0D:
- D 1 - I - 0x003584 00:B574: 1E        .byte $1E, $1F, $5D, $5D, $5D, $5D, $1E, $5D, $4D, $6E, $6E, $6E, $5D, $6E, $6E, $3E   ; 
- D 1 - I - 0x003594 00:B584: 6E        .byte $6E, $6D, $5D, $1F, $5D, $00, $FF, $A6, $86, $CE, $85, $87, $A8, $FF, $5D   ; 
off_B593_0D:
- D 1 - I - 0x0035A3 00:B593: 5D        .byte $5D, $1F, $5D, $5D, $5D, $4D, $6E, $6E, $6E, $6D, $1E, $1F, $1E, $1F, $1E, $1F   ; 
- D 1 - I - 0x0035B3 00:B5A3: 1E        .byte $1E, $1F, $1E, $1F, $1E, $1F, $5D, $00, $FF, $A6, $86, $CE, $85, $87, $A8, $FF   ; 



_off028_0x0035C3_14:
- D 1 - I - 0x0035C3 00:B5B3: 44        .byte $44, $55, $55, $55, $55, $55, $55, $55   ; 
- D 1 - I - 0x0035CB 00:B5BB: 04        .byte $04, $05, $05, $05, $05, $05, $05, $05   ; 
- D 1 - I - 0x0035D3 00:B5C3: F0        .byte $F0, $F0, $F0, $F0, $F0, $F0, $F0, $F0   ; 
- D 1 - I - 0x0035DB 00:B5CB: FF        .byte $FF, $FF, $FF, $FE, $FF, $FF, $FB, $FF   ; 
- D 1 - I - 0x0035E3 00:B5D3: 0F        .byte $0F, $0F, $0F, $0F, $0F, $0F, $0F, $0F   ; 
- D 1 - I - 0x0035EB 00:B5DB: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x0035F3 00:B5E3: 29        .byte $29, $5A, $55, $55, $55, $41, $66, $99   ; 
- - - - - - 0x0035FB 00:B5EB: 05        .byte $05, $05, $05, $05, $05, $09, $0A, $0A   ; 



off_B5F3_01:
- D 1 - I - 0x003603 00:B5F3: A9        .byte $A9, $00, $4B, $4C, $4D, $6E, $00, $4F, $CE, $CE, $CE, $CE, $CE, $00, $A9, $00   ; 
- D 1 - I - 0x003613 00:B603: 00        .byte $00, $00, $00, $00, $A9, $00, $4F, $CE, $4F, $00, $4B, $4C, $4B, $4C, $4B   ; 
off_B612_01:
- D 1 - I - 0x003622 00:B612: 00        .byte $00, $19, $00, $19, $00, $19, $00, $19, $00, $19, $00, $19, $00, $19, $00, $19   ; 
- D 1 - I - 0x003632 00:B622: 00        .byte $00, $19, $00, $19, $00, $19, $00, $19, $00, $19, $00, $19, $00, $19, $00   ; 
off_B631_11:
- D 1 - I - 0x003641 00:B631: 19        .byte $19, $19, $19, $19, $19, $19, $19, $19, $19, $19, $19, $19, $19, $07, $2B, $2B   ; 
- D 1 - I - 0x003651 00:B641: 2B        .byte $2B, $2B, $06, $30, $49, $4E, $A1, $A6, $96, $98, $98, $97, $A8, $A1, $4E, $A1   ; 



off_B651_02:
- D 1 - I - 0x003661 00:B651: A9        .byte $A9, $00, $3B, $3C, $5D, $5D, $00, $5E, $5F, $5F, $5F, $5F, $5F, $00, $A9, $00   ; 
- D 1 - I - 0x003671 00:B661: 0D        .byte $0D, $0E, $0D, $00, $A9, $00, $4F, $CE, $4F, $00, $3B, $3C, $3B, $3C, $3B   ; 
off_B670_02:
off_B670_03:
- D 1 - I - 0x003680 00:B670: 00        .byte $00, $2C, $00, $2C, $00, $2C, $00, $2C, $00, $2C, $00, $2C, $00, $2C, $00, $2C   ; 
- D 1 - I - 0x003690 00:B680: 00        .byte $00, $2C, $00, $2C, $00, $2C, $00, $2C, $00, $2C, $00, $2C, $00, $2C, $00   ; 
off_B68F_09:
- D 1 - I - 0x00369F 00:B68F: 2C        .byte $2C, $0C, $0D, $6A, $6B, $0C, $0D, $00, $2C, $0C, $0D, $6A, $6B, $0C, $0D, $00   ; 
- D 1 - I - 0x0036AF 00:B69F: 2C        .byte $2C, $0C, $0D, $6A, $6B, $0C, $0D, $00, $2C, $0C, $0D, $6A, $6B, $0C, $0D, $00   ; 



off_B6AF_03:
- D 1 - I - 0x0036BF 00:B6AF: A9        .byte $A9, $00, $4B, $4C, $5D, $5D, $00, $4F, $CE, $CE, $CE, $CE, $CE, $00, $A9, $00   ; 
- D 1 - I - 0x0036CF 00:B6BF: 1E        .byte $1E, $1F, $1E, $00, $A9, $00, $4F, $CE, $4F, $00, $4B, $4C, $4B, $4C, $4B   ; 
off_B6CE_06:
- D 1 - I - 0x0036DE 00:B6CE: 00        .byte $00, $00, $00, $1E, $1F, $00, $00, $00, $00, $00, $00, $1E, $1F, $00, $00, $00   ; 
- D 1 - I - 0x0036EE 00:B6DE: 00        .byte $00, $00, $00, $1E, $1F, $00, $00, $00, $00, $00, $00, $1E, $1F   ; 
off_B6EB_07:
- D 1 - I - 0x0036FB 00:B6EB: 00        .byte $00, $00, $00, $2E, $2F, $00, $00, $00, $00, $00, $00, $2E, $2F, $00, $00, $00   ; 
- D 1 - I - 0x00370B 00:B6FB: 00        .byte $00, $00, $00, $2E, $2F, $00, $00, $00, $00, $00, $00, $2E, $2F, $00   ; 
off_B709_18:
- D 1 - I - 0x003719 00:B709: 00        .byte $00, $00, $19, $1A, $00, $00, $00, $00, $19, $1A, $13, $07, $06, $07, $06, $07   ; 
- D 1 - I - 0x003729 00:B719: 06        .byte $06, $16, $29, $2A, $CF, $9D, $CF, $00, $6F, $00, $00, $00, $29, $2A   ; 
off_B727_11:
- D 1 - I - 0x003737 00:B727: 00        .byte $00, $00, $CF, $C7, $CF, $CF, $CF, $CF, $00, $00, $00, $00, $4D, $4E, $4E, $4E   ; 
- D 1 - I - 0x003747 00:B737: 5E        .byte $5E, $5F, $4E, $4E   ; 
off_B73B_11:
- D 1 - I - 0x00374B 00:B73B: 4F        .byte $4F, $4E, $4E, $4E, $4E, $4E, $4F, $4E, $4E, $4E, $4E, $4E, $4F, $4E   ; 
off_B749_1B:
- D 1 - I - 0x003759 00:B749: 4E        .byte $4E, $4E, $4E, $4E, $4F, $4E, $4E, $4E, $4E, $4E, $4F, $4E, $4E, $4E, $4E, $4E   ; 
- D 1 - I - 0x003769 00:B759: 4F        .byte $4F, $4E, $5E, $5F, $6C, $6D, $9E, $9E, $0E, $0F, $1D   ; 
off_B764_10:
- D 1 - I - 0x003774 00:B764: 1E        .byte $1E, $1E, $1E, $1E, $1E, $1F, $A7, $BA, $A4, $CF, $CF, $A6, $A7, $FF, $FF, $BA   ; 
- D 1 - I - 0x003784 00:B774: 1D        .byte $1D, $1E, $5E, $5F, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $CF, $C1   ; 
off_B783_04:
- D 1 - I - 0x003793 00:B783: CE        .byte $CE, $48, $CE, $CE, $CE, $CE, $CE, $35, $CE, $CE, $CE, $CE, $10, $11, $11, $13   ; 
- D 1 - I - 0x0037A3 00:B793: 10        .byte $10, $11, $11, $11, $13, $00, $90, $FF, $FF   ; 
off_B79C_14:
- D 1 - I - 0x0037AC 00:B79C: 00        .byte $00, $00, $00, $00, $00, $00, $00, $CF, $00, $A5, $00, $A5, $0E, $0F, $6D, $6D   ; 
- D 1 - I - 0x0037BC 00:B7AC: 5E        .byte $5E, $5F, $6C, $6D, $6D, $6D, $6D, $6D, $8B, $00, $C8, $6D, $6D, $6D, $66   ; 
off_B7BB_18:
- D 1 - I - 0x0037CB 00:B7BB: 00        .byte $00, $C8, $6D, $6D, $6D, $8B, $00, $00, $CF, $CF, $CF, $CF, $64, $75, $75, $75   ; 
- D 1 - I - 0x0037DB 00:B7CB: 75        .byte $75, $75, $75, $75, $75, $75, $75, $75, $5E, $5F, $75, $53, $0E, $0F   ; 
off_B7D9_01:
- D 1 - I - 0x0037E9 00:B7D9: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $0E, $0F, $6D, $9E   ; 
- D 1 - I - 0x0037F9 00:B7E9: 66        .byte $66, $9E, $6B, $5B   ; 
off_B7ED_01:
- D 1 - I - 0x0037FD 00:B7ED: 4B        .byte $4B, $9E, $66, $9E, $6B, $5B, $4B, $9E, $66, $9E, $6B, $5B, $4B, $9E, $66, $9E   ; 
- D 1 - I - 0x00380D 00:B7FD: 9E        .byte $9E, $6D, $5E, $5F, $6C, $6D, $9E, $9E, $0E, $0F, $00, $6C   ; 
off_B809_01:
- D 1 - I - 0x003819 00:B809: 6D        .byte $6D, $6D, $6D, $6D, $6D, $6D, $6C, $00, $CF, $CF, $CF, $CF, $90, $FF, $FF, $FF   ; 
- D 1 - I - 0x003829 00:B819: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $5E, $5F, $FF, $B0, $0E, $0F, $6D, $BB   ; 



off_B829_04:
- D 1 - I - 0x003839 00:B829: A9        .byte $A9, $00, $5E, $5F, $5F, $5F, $5F, $4F, $CE, $CE, $CE, $CE, $CE, $00, $A9, $00   ; 
- D 1 - I - 0x003849 00:B839: 0D        .byte $0D, $0E, $0D, $00, $A9, $00, $5E, $5F, $CE, $5F, $5F, $5F   ; 
off_B845_04:
- D 1 - I - 0x003855 00:B845: 5F        .byte $5F, $5F, $5F, $5F, $5D, $5D, $5E, $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F   ; 
- D 1 - I - 0x003865 00:B855: 5F        .byte $5F, $5F, $A9, $B3, $90, $FF, $FF, $FF, $FF, $75, $0B, $0C, $FF, $B2, $FF, $92   ; 



off_B865_05:
- D 1 - I - 0x003875 00:B865: A9        .byte $A9, $00, $4F, $CE, $5E, $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F, $00, $A9, $00   ; 
- D 1 - I - 0x003885 00:B875: 1E        .byte $1E, $1F, $1E, $00, $A9, $00, $4F, $CE, $5E, $5F, $5F, $5F, $5F, $5F, $5F, $5F   ; 



off_B885_06:
- D 1 - I - 0x003895 00:B885: A9        .byte $A9, $00, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $00, $A9, $00   ; 
- D 1 - I - 0x0038A5 00:B895: 0D        .byte $0D, $0E, $0D, $00, $A9, $00   ; 
off_B89B_13:
off_B89B_15:
- D 1 - I - 0x0038AB 00:B89B: 6E        .byte $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E   ; 
- D 1 - I - 0x0038BB 00:B8AB: 6E        .byte $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E   ; 
off_B8B7_05:
- D 1 - I - 0x0038C7 00:B8B7: 6E        .byte $6E, $6E, $6E, $6E, $4E, $4E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E, $6E   ; 
- D 1 - I - 0x0038D7 00:B8C7: 6E        .byte $6E, $6E, $A9, $00, $90, $FF, $FF, $73, $FF, $91, $C0, $C0, $C0, $B2, $FF, $92   ; 



off_B8D7_07:
- D 1 - I - 0x0038E7 00:B8D7: A9        .byte $A9, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $A9, $00   ; 
- D 1 - I - 0x0038F7 00:B8E7: 1E        .byte $1E, $1F, $1E, $00, $A9, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81   ; 
off_B8F6_06:
- D 1 - I - 0x003906 00:B8F6: 81        .byte $81, $A9, $00   ; 
off_B8F9_14:
off_B8F9_12:
- D 1 - I - 0x003909 00:B8F9: 81        .byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81   ; 
off_B905_06:
- D 1 - I - 0x003915 00:B905: 81        .byte $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81, $81   ; 
- D 1 - I - 0x003925 00:B915: 81        .byte $81, $81, $81, $81, $72, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $74   ; 



off_B925_08:
- D 1 - I - 0x003935 00:B925: A9        .byte $A9, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A9, $00   ; 
- D 1 - I - 0x003945 00:B935: 0D        .byte $0D, $0E, $0D, $00, $A9, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1, $A1   ; 



off_B945_0E:
- D 1 - I - 0x003955 00:B945: 5D        .byte $5D, $0E, $5D, $5D, $5D, $4E, $0D, $0E, $0D, $0E, $0D, $0E, $0D, $0E, $0D, $0E   ; 
- D 1 - I - 0x003965 00:B955: 0D        .byte $0D, $0E, $0D, $0E, $0D, $0E, $4E, $00, $FF, $A6, $86, $CE, $CE, $87, $A8, $FF   ; 



off_B965_0F:
- D 1 - I - 0x003975 00:B965: 5D        .byte $5D, $6E, $6E, $6E, $6D, $5D, $1E, $1F, $1E, $1F, $1E, $1F, $1E, $1F, $1E, $1F   ; 
- D 1 - I - 0x003985 00:B975: 1E        .byte $1E, $1F, $1E, $1F, $1E, $1F, $5D, $00, $FF, $A6, $86, $CE, $CE, $87, $A8, $FF   ; 



off_B985_10:
- D 1 - I - 0x003995 00:B985: 5D        .byte $5D, $0E, $5D, $5D, $0D, $5D, $4D, $6E, $6E, $6E, $3E, $6E, $6E, $6E, $6E, $6E   ; 
- D 1 - I - 0x0039A5 00:B995: 6E        .byte $6E, $6E, $3E, $6E, $6E, $6E, $6D, $00, $FF, $A6, $86, $CE, $CE, $87, $A8, $FF   ; 



off_B9A5_11:
- D 1 - I - 0x0039B5 00:B9A5: 5D        .byte $5D, $6E, $5D, $5D, $6E, $6D, $5D, $1F, $1E, $1F, $1E, $1F, $1E, $1F, $1E, $1F   ; 
- D 1 - I - 0x0039C5 00:B9B5: 1E        .byte $1E, $1F, $1E, $1F, $1E, $1F, $1E, $00, $FF, $A6, $96, $98, $98, $97, $A8, $FF   ; 



_off028_0x0039D5_16:
- D 1 - I - 0x0039D5 00:B9C5: 44        .byte $44, $11, $00, $00, $FA, $00, $44, $55   ; 
- D 1 - I - 0x0039DD 00:B9CD: 00        .byte $00, $00, $00, $00, $FF, $00, $00, $00   ; 
- D 1 - I - 0x0039E5 00:B9D5: F0        .byte $F0, $F0, $F0, $F0, $FF, $F0, $A0, $A0   ; 
- D 1 - I - 0x0039ED 00:B9DD: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $AA, $AA   ; 
- D 1 - I - 0x0039F5 00:B9E5: 0F        .byte $0F, $0F, $0F, $0F, $0F, $0F, $0A, $0A   ; 
- D 1 - I - 0x0039FD 00:B9ED: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003A05 00:B9F5: 66        .byte $66, $AA, $AA, $AA, $AA, $99, $AA, $AA   ; 
- - - - - - 0x003A0D 00:B9FD: 06        .byte $06, $0A, $0A, $0A, $0A, $09, $0A, $0A   ; 



off_BA05_0E:
- D 1 - I - 0x003A15 00:BA05: B2        .byte $B2, $A1, $45, $24, $80, $80, $80, $80, $80, $80, $80, $00, $CA, $CB, $29, $2A   ; 
- D 1 - I - 0x003A25 00:BA15: CA        .byte $CA, $CB, $CA, $CB, $CB, $CB, $CA, $CB, $CB, $CB, $CA, $CB, $CB, $CB   ; 
off_BA23_17:
off_BA23_35:
- D 1 - I - 0x003A33 00:BA23: CA        .byte $CA, $CB, $CA, $CB, $CA, $CB, $CA, $CB, $CA, $CB, $CA, $CB, $CA, $CB, $CA, $CB   ; 
- D 1 - I - 0x003A43 00:BA33: CA        .byte $CA, $CB, $CA, $CB, $CA, $CB, $CA, $CB, $CA, $CB, $CA, $CB, $CA, $CB, $CA, $CB   ; 



off_BA43_10:
- D 1 - I - 0x003A53 00:BA43: 52        .byte $52, $B1, $45, $24, $21, $22, $CE, $CE, $12, $11, $22, $00, $FF, $1B, $29, $2A   ; 
- D 1 - I - 0x003A63 00:BA53: 5C        .byte $5C, $FF, $0E, $0F, $0F, $2E, $1B, $FF, $FF, $FF, $1B, $FF, $FF, $FF, $C7, $FF   ; 



off_BA63_19:
- D 1 - I - 0x003A73 00:BA63: 18        .byte $18, $18, $18, $26, $26, $6F, $3D, $CF, $CF, $08, $08, $00, $C6, $1B, $1B, $C6   ; 
- D 1 - I - 0x003A83 00:BA73: FF        .byte $FF, $C6, $1B, $C6, $19, $1A, $C7, $C6, $FF, $C6, $1B, $C6, $FF, $C6, $C7, $C6   ; 



off_BA83_08:
- - - - - - 0x003A93 00:BA83: 19        .byte $19, $08, $09, $5A, $5B, $08, $09, $00, $19, $08, $09, $5A, $5B, $08, $09, $00   ; 
- D 1 - I - 0x003AA3 00:BA93: 19        .byte $19, $08, $09, $5A, $5B, $08, $09, $00, $19, $08, $09, $5A, $5B, $08, $09   ; 
_off028_0x003AB2_2D:
- D 1 - I - 0x003AB2 00:BAA2: 00        .byte $00, $20, $00, $00, $00, $00, $20, $00   ; 
- D 1 - I - 0x003ABA 00:BAAA: 80        .byte $80, $22, $02, $00, $00, $00, $00, $08   ; 
- D 1 - I - 0x003AC2 00:BAB2: 00        .byte $00, $82, $00, $00, $00, $00, $08, $80   ; 
- D 1 - I - 0x003ACA 00:BABA: 5F        .byte $5F, $5F, $5F, $5F, $5F, $5F, $5F, $5F   ; 
- D 1 - I - 0x003AD2 00:BAC2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x003ADA 00:BACA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x003AE2 00:BAD2: 37        .byte $37, $50, $50, $55, $55, $41, $50, $DC   ; 
- - - - - - 0x003AEA 00:BADA: 0F        .byte $0F, $0F, $0F, $05, $05, $0F, $0F, $0F   ; 



off_BAE2_0A:
off_BAE2_0C:
- - - - - - 0x003AF2 00:BAE2: 2C        .byte $2C, $1C, $1D, $1C, $1D, $1C, $1D, $00, $2C, $1C, $1D, $1C, $1D, $1C, $1D, $00   ; 
- D 1 - I - 0x003B02 00:BAF2: 2C        .byte $2C, $1C, $1D, $1C, $1D, $1C, $1D, $00, $2C, $1C, $1D, $1C, $1D, $1C, $1D, $00   ; 



off_BB02_0B:
off_BB02_0D:
- - - - - - 0x003B12 00:BB02: 2C        .byte $2C, $0C, $0D, $0C, $0D, $0C, $0D, $00, $2C, $0C, $0D, $0C, $0D, $0C, $0D, $00   ; 
- D 1 - I - 0x003B22 00:BB12: 2C        .byte $2C, $0C, $0D, $0C, $0D, $0C, $0D, $00, $2C, $0C, $0D, $0C, $0D, $0C, $0D, $00   ; 



off_BB22_0E:
- - - - - - 0x003B32 00:BB22: 3D        .byte $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D   ; 
- D 1 - I - 0x003B42 00:BB32: 3D        .byte $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D, $3D   ; 



off_BB42_10:
- - - - - - 0x003B52 00:BB42: 3A        .byte $3A, $3B, $2A, $2A, $39, $3A, $3A, $3B, $2A, $2A, $39, $3A, $3A, $3B, $2A, $2A   ; 
- D 1 - I - 0x003B62 00:BB52: 39        .byte $39, $3A, $3A, $3B, $2A, $2A, $39, $3A, $3A, $3B, $2A, $2A, $39, $3A, $3A, $3B   ; 



_off028_0x003B72_2C:
- D 1 - I - 0x003B72 00:BB62: AA        .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 
- D 1 - I - 0x003B7A 00:BB6A: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x003B82 00:BB72: AA        .byte $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA   ; 
- D 1 - I - 0x003B8A 00:BB7A: 5A        .byte $5A, $5A, $5A, $5A, $5A, $5A, $5A, $5A   ; 
- D 1 - I - 0x003B92 00:BB82: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- D 1 - I - 0x003B9A 00:BB8A: 55        .byte $55, $55, $55, $55, $55, $55, $55, $55   ; 
- - - - - - 0x003BA2 00:BB92: 37        .byte $37, $50, $50, $55, $55, $41, $50, $DC   ; 
- - - - - - 0x003BAA 00:BB9A: 0F        .byte $0F, $0F, $0F, $05, $05, $0F, $0F, $0F   ; 



off_BBA2_0F:
- D 1 - I - 0x003BB2 00:BBA2: 30        .byte $30, $31, $32, $33, $30, $31, $32, $33, $30, $31, $32, $33, $30, $31, $32, $33   ; 
- D 1 - I - 0x003BC2 00:BBB2: 30        .byte $30, $31, $32, $33, $30, $31, $32, $33, $30, $31, $32, $33, $30, $31, $32, $33   ; 



off_BBC2_14:
- D 1 - I - 0x003BD2 00:BBC2: 8D        .byte $8D, $8E, $8D, $8E, $8D, $8E, $8D, $8E, $8D, $8E, $8D, $8E, $8D, $8E, $8D, $8E   ; 
- D 1 - I - 0x003BE2 00:BBD2: 8D        .byte $8D, $8E, $8D, $8E, $8D, $8E, $8D, $8E, $8D, $8E, $8D, $8E, $8D, $8E, $8D, $8E   ; 



off_BBE2_15:
- D 1 - I - 0x003BF2 00:BBE2: 9D        .byte $9D, $9E, $9D, $9E, $9D, $9E, $9D, $9E, $9D, $9E, $9D, $9E, $9D, $9E, $9D, $9E   ; 
- D 1 - I - 0x003C02 00:BBF2: 9D        .byte $9D, $9E, $9D, $9E, $9D, $9E, $9D, $9E, $9D, $9E, $9D, $9E, $9D, $9E, $9D, $9E   ; 



off_BC02_01:
- D 1 - I - 0x003C12 00:BC02: 76        .byte $76, $76, $90, $91, $92, $93, $76, $76, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x003C22 00:BC12: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $76, $76, $90, $91, $92, $93, $76   ; 
off_BC21_07:
- D 1 - I - 0x003C31 00:BC21: 76        .byte $76, $88, $88, $77, $39, $85, $85, $85, $85, $92, $5D, $4E, $4B, $4C, $5D, $5D   ; 
- D 1 - I - 0x003C41 00:BC31: 69        .byte $69, $CE   ; 
off_BC33_02:
- D 1 - I - 0x003C43 00:BC33: CE        .byte $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $20, $31   ; 
- D 1 - I - 0x003C53 00:BC43: 32        .byte $32, $23, $20, $31, $32, $23, $90, $FF, $16, $17, $18, $17, $18, $19   ; 
off_BC51_06:
- D 1 - I - 0x003C61 00:BC51: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $00, $03, $B3, $00, $00, $00, $FF, $1B, $1B, $FF   ; 
- D 1 - I - 0x003C71 00:BC61: FF        .byte $FF, $FF, $1B, $FF, $29, $2A, $1B, $FF, $FF, $FF, $1B, $FF, $FF, $FF, $C7, $FF   ; 



off_BC71_03:
- D 1 - I - 0x003C81 00:BC71: B6        .byte $B6, $B7, $A0, $A1, $A2, $A3, $B6, $B7, $50, $51, $52, $53, $45, $54, $C7, $C7   ; 
- D 1 - I - 0x003C91 00:BC81: C7        .byte $C7, $C7, $57, $46, $50, $51, $52, $53, $B6, $B7, $A0, $A1, $A2, $A3   ; 
off_BC8F_0E:
- D 1 - I - 0x003C9F 00:BC8F: B6        .byte $B6, $B7, $B0, $B1, $B2, $B3, $B6, $B7, $87, $85, $86, $87, $87, $85, $86, $87   ; 
- D 1 - I - 0x003CAF 00:BC9F: 87        .byte $87, $85, $86, $87, $87, $85, $86, $87, $B6, $B7, $B0, $B1, $B2, $B3, $B6, $B7   ; 



off_BCAF_0D:
- D 1 - I - 0x003CBF 00:BCAF: A6        .byte $A6, $A7, $A0, $A1, $A2, $A3, $A6, $A7, $77, $76, $76, $77, $87, $85, $86, $87   ; 
- D 1 - I - 0x003CCF 00:BCBF: 87        .byte $87, $85, $86, $87, $77, $76, $76, $77, $A6, $A7, $A0, $A1, $A2, $A3   ; 
off_BCCD_04:
- D 1 - I - 0x003CDD 00:BCCD: A6        .byte $A6, $A7, $A0, $5A, $5B, $A3, $A6, $A7, $60, $61, $62, $63, $54, $54, $04, $94   ; 
- D 1 - I - 0x003CED 00:BCDD: 94        .byte $94, $07, $57, $57, $60, $61, $62, $63, $A6, $A7, $A0, $5A, $5B, $A3   ; 
off_BCEB_05:
- D 1 - I - 0x003CFB 00:BCEB: A6        .byte $A6, $A7, $90, $6A, $6B, $93, $A6, $A7, $70, $71, $72, $73, $54, $54, $04, $05   ; 
- D 1 - I - 0x003D0B 00:BCFB: 06        .byte $06, $07, $57, $57, $70, $71, $72, $73, $A6, $A7, $90, $6A, $6B, $93   ; 
off_BD09_0C:
- D 1 - I - 0x003D19 00:BD09: A6        .byte $A6, $A7, $90, $91, $92, $93, $A6, $A7, $4A, $4B, $4A, $4B, $77, $76, $76, $77   ; 
- D 1 - I - 0x003D29 00:BD19: 77        .byte $77, $76, $76, $77, $4A, $4B, $4A, $4B   ; 
off_BD21_0B:
- D 1 - I - 0x003D31 00:BD21: A6        .byte $A6, $A7, $90, $91, $92, $93, $A6, $A7, $4E, $3C, $3C, $4E, $54, $2D, $2D, $2D   ; 
- D 1 - I - 0x003D41 00:BD31: 2D        .byte $2D, $2D, $2D, $57, $4E, $3C, $3C, $4E   ; 
off_BD39_0A:
- D 1 - I - 0x003D49 00:BD39: A6        .byte $A6, $A7, $90, $91, $92, $93, $A6, $A7, $60, $61, $62, $63, $54, $55, $47, $47   ; 
- D 1 - I - 0x003D59 00:BD49: 47        .byte $47, $47, $56, $57, $60, $61, $62, $63   ; 
off_BD51_09:
- D 1 - I - 0x003D61 00:BD51: A6        .byte $A6, $A7, $90, $91, $92, $93, $A6, $A7, $80, $81, $82, $83, $54, $54, $FF, $74   ; 
- D 1 - I - 0x003D71 00:BD61: 7E        .byte $7E, $FF, $57, $57, $80, $81, $82, $83   ; 
off_BD69_08:
- D 1 - I - 0x003D79 00:BD69: A6        .byte $A6, $A7, $90, $91, $92, $93, $A6, $A7, $70, $71, $72, $73, $54, $54, $74, $75   ; 
- D 1 - I - 0x003D89 00:BD79: 58        .byte $58, $7E, $57, $57, $70, $71, $72, $73   ; 
off_BD81_06:
- D 1 - I - 0x003D91 00:BD81: A6        .byte $A6, $A7, $90, $91, $92, $93, $A6, $A7, $80, $81, $82, $83, $54, $54, $14, $15   ; 
- D 1 - I - 0x003DA1 00:BD91: 16        .byte $16, $17, $57, $57, $80, $81, $82, $83   ; 
off_BD99_07:
- D 1 - I - 0x003DA9 00:BD99: A6        .byte $A6, $A7, $90, $91, $92, $93, $A6, $A7, $60, $61, $62, $63, $54, $54, $24, $25   ; 
- D 1 - I - 0x003DB9 00:BDA9: 26        .byte $26, $27, $57, $57, $60, $61, $62, $63, $A6, $A7, $90, $91, $92, $93, $A6   ; 
off_BDB8_14:
- D 1 - I - 0x003DC8 00:BDB8: A7        .byte $A7, $CC, $A7, $CC, $A7, $CC, $A7, $CC, $A7, $CC, $A7, $CC, $A7, $CC, $A7, $CC   ; 
- D 1 - I - 0x003DD8 00:BDC8: A7        .byte $A7, $CC, $A7, $CC, $A7, $CC, $A7, $CC, $A7, $CC, $A7, $CC, $A7, $CC, $A7   ; 
off_BDD7_16:
- D 1 - I - 0x003DE7 00:BDD7: CC        .byte $CC, $CC, $CC, $CC, $7E, $7F, $6C, $2D, $CF, $17, $44, $42, $41, $42, $49, $4A   ; 
- D 1 - I - 0x003DF7 00:BDE7: 42        .byte $42, $41, $42, $42, $49, $4A, $42, $41, $42, $43, $2F, $FF, $FF, $FF, $C7, $FF   ; 



off_BDF7_0F:
- D 1 - I - 0x003E07 00:BDF7: 7F        .byte $7F, $7F, $C0, $C1, $C2, $C3, $7F, $7F, $97, $95, $96, $3E, $3F, $95, $95, $97   ; 
- D 1 - I - 0x003E17 00:BE07: 97        .byte $97, $95, $95, $3E, $3F, $95, $96, $97, $7F, $7F, $C0, $C1, $C2, $C3, $7F, $7F   ; 



off_BE17_11:
- D 1 - I - 0x003E27 00:BE17: C8        .byte $C8, $C8, $C8, $C8, $C5, $C8, $C8, $C8, $C8, $C8, $C8, $C8, $C8, $C8, $C8, $C8   ; 
- D 1 - I - 0x003E37 00:BE27: C8        .byte $C8, $C8, $C8, $C8, $C8, $C8, $C8, $C8, $C8, $C8, $C8, $C4, $C8, $C8, $C8, $C8   ; 



off_BE37_12:
- D 1 - I - 0x003E47 00:BE37: CE        .byte $CE, $CE, $CE, $49, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x003E57 00:BE47: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $48   ; 
off_BE54_03:
- D 1 - I - 0x003E64 00:BE54: CE        .byte $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $40, $41   ; 
- D 1 - I - 0x003E74 00:BE64: 42        .byte $42, $43, $40, $41, $42, $43, $90, $FF, $FF, $74, $74, $74, $74, $74   ; 
off_BE72_0A:
- D 1 - I - 0x003E82 00:BE72: 74        .byte $74, $74, $56, $00, $66, $85, $84, $84, $84, $84, $84, $84, $66, $00, $56, $74   ; 
- D 1 - I - 0x003E92 00:BE82: 74        .byte $74, $74, $56, $C0, $20, $31, $31, $32, $23, $20, $31, $32, $23, $20, $31, $31   ; 



off_BE92_13:
- D 1 - I - 0x003EA2 00:BE92: CE        .byte $CE, $CE, $49, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x003EB2 00:BEA2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $48   ; 
off_BEB0_05:
- D 1 - I - 0x003EC0 00:BEB0: CE        .byte $CE, $CE, $00, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $CE, $00, $CE, $4D, $6D   ; 
- D 1 - I - 0x003ED0 00:BEC0: 00        .byte $00, $54, $5D, $54, $90, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
off_BECC_04:
- D 1 - I - 0x003EDC 00:BECC: FF        .byte $FF, $FF, $FF, $FF, $5D, $5D, $4D, $6E, $6D, $3B, $5D, $5D, $39, $85, $85, $85   ; 
- D 1 - I - 0x003EEC 00:BEDC: 00        .byte $00, $FF, $FF, $FF, $39, $85, $85, $85, $85, $5D, $85, $85, $85, $85   ; 
off_BEEA_04:
- D 1 - I - 0x003EFA 00:BEEA: 85        .byte $85, $85, $0B, $0C, $85, $85, $85, $85, $85, $92, $4D, $6E, $6D, $3C, $5D, $5D   ; 
- D 1 - I - 0x003F0A 00:BEFA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $60, $61, $62   ; 
off_BF08_04:
- D 1 - I - 0x003F18 00:BF08: FF        .byte $FF, $FF, $FF, $26, $26, $6F, $CF, $CF, $CF, $00, $00, $00, $FF, $1B, $1B, $FF   ; 
- D 1 - I - 0x003F28 00:BF18: FF        .byte $FF, $FF, $1B, $FF, $29, $2A, $1B, $FF, $FF, $FF, $1B, $FF, $FF, $FF, $C7, $FF   ; 



off_BF28_14:
- D 1 - I - 0x003F38 00:BF28: CE        .byte $CE, $49, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x003F48 00:BF38: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $48   ; 
off_BF47_06:
- D 1 - I - 0x003F57 00:BF47: CE        .byte $CE, $CE, $C4, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $4E, $00   ; 
- D 1 - I - 0x003F67 00:BF57: 54        .byte $54, $00, $5D, $00, $70, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71, $71   ; 



off_BF67_15:
- D 1 - I - 0x003F77 00:BF67: 49        .byte $49, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- D 1 - I - 0x003F87 00:BF77: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $48   ; 



_off028_0x003F97_2E:
- D 1 - I - 0x003F97 00:BF87: AA        .byte $AA, $AA, $5A, $AF, $AA, $5F, $AA, $AA   ; 
- D 1 - I - 0x003F9F 00:BF8F: AA        .byte $AA, $AA, $55, $AA, $AA, $55, $AA, $AA   ; 
- D 1 - I - 0x003FA7 00:BF97: AA        .byte $AA, $AA, $55, $AA, $AA, $55, $AA, $AA   ; 
- D 1 - I - 0x003FAF 00:BF9F: AA        .byte $AA, $AA, $FF, $AA, $AA, $FF, $AA, $AA   ; 
- D 1 - I - 0x003FB7 00:BFA7: 05        .byte $05, $05, $05, $05, $05, $05, $05, $05   ; 
- D 1 - I - 0x003FBF 00:BFAF: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003FC7 00:BFB7: 77        .byte $77, $00, $00, $AA, $AA, $11, $00, $CC   ; 
- - - - - - 0x003FCF 00:BFBF: 07        .byte $07, $00, $00, $0A, $0A, $01, $00, $0C   ; 


; bzk garbage
- - - - - - 0x003FD7 00:BFC7: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003FE0 00:BFD0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x003FF0 00:BFE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x004000 00:BFF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



.out .sprintf("Free bytes in bank 00: 0x%04X [%d]", ($BFFF - *), ($BFFF - *))



.segment "BANK_00_ID"
- D 1 - - - 0x00400F 00:BFFF: 00        .byte con_prg_bank + $00   ; 



