.segment "BANK_01"
.include "copy_bank_ram.inc"
; 0x004010-0x00800F

.export loc_0x004010
loc_0x004010:
C D 0 J - - 0x004010 01:8000: 4C B9 B0  JMP loc_B0B9
.export loc_0x004013
loc_0x004013:
C - - J - - 0x004013 01:8003: 4C A1 B8  JMP loc_B8A1
.export loc_0x004016
loc_0x004016:
C - - J - - 0x004016 01:8006: 4C C0 B9  JMP loc_B9C0
.export loc_0x004019
loc_0x004019:
C - - J - - 0x004019 01:8009: 4C 12 BC  JMP loc_BC12
.export loc_0x00401C
loc_0x00401C:
C - - J - - 0x00401C 01:800C: 4C 88 BE  JMP loc_BE88
- - - - - - 0x00401F 01:800F: 4C 88 BE  JMP loc_BE88


; bzk мусор
- - - - - - 0x004022 01:8012: 24        .byte $24   ; 
- - - - - - 0x004023 01:8013: 80        .byte $80   ; 



; не перемещать 8014-8022
- D 0 - - - 0x004024 01:8014: 24 80     .word off_8024_00
- D 0 - - - 0x004026 01:8016: 34 80     .word off_8034_01
- - - - - - 0x004028 01:8018: 44 80     .word off_8044_02
- - - - - - 0x00402A 01:801A: 44 80     .word off_8044_03

- D 0 - - - 0x00402C 01:801C: 54 80     .word off_8054_00
- D 0 - - - 0x00402E 01:801E: 64 80     .word off_8064_01
- - - - - - 0x004030 01:8020: 74 80     .word off_8074_02
- - - - - - 0x004032 01:8022: 74 80     .word off_8074_03



off_8024_00:
- D 0 - I - 0x004034 01:8024: 74 81     .word off_8174_00
- D 0 - I - 0x004036 01:8026: B0 81     .word off_81B0_01
- D 0 - I - 0x004038 01:8028: EC 81     .word off_81EC_02
- D 0 - I - 0x00403A 01:802A: 28 82     .word off_8228_03
- D 0 - I - 0x00403C 01:802C: 64 82     .word off_8264_04
- D 0 - I - 0x00403E 01:802E: A0 82     .word off_82A0_05
- D 0 - I - 0x004040 01:8030: DC 82     .word off_82DC_06
- D 0 - I - 0x004042 01:8032: 18 83     .word off_8318_07
off_8034_01:
- D 0 - I - 0x004044 01:8034: 84 80     .word off_8084_00
- D 0 - I - 0x004046 01:8036: C0 80     .word off_80C0_01
- D 0 - I - 0x004048 01:8038: FC 80     .word off_80FC_02
- D 0 - I - 0x00404A 01:803A: 38 81     .word off_8138_03
- D 0 - I - 0x00404C 01:803C: 54 83     .word off_8354_04
- D 0 - I - 0x00404E 01:803E: 90 83     .word off_8390_05
- D 0 - I - 0x004050 01:8040: CC 83     .word off_83CC_06
- D 0 - I - 0x004052 01:8042: 08 84     .word off_8408_07
off_8044_02:
off_8044_03:
- D 0 - I - 0x004054 01:8044: 44 84     .word off_8444_00
- D 0 - I - 0x004056 01:8046: 80 84     .word off_8480_01
- D 0 - I - 0x004058 01:8048: BC 84     .word off_84BC_02
- D 0 - I - 0x00405A 01:804A: F8 84     .word off_84F8_03
- D 0 - I - 0x00405C 01:804C: 34 85     .word off_8534_04
- D 0 - I - 0x00405E 01:804E: 70 85     .word off_8570_05
- D 0 - I - 0x004060 01:8050: AC 85     .word off_85AC_06
- D 0 - I - 0x004062 01:8052: E8 85     .word off_85E8_07
off_8054_00:
- D 0 - I - 0x004064 01:8054: 93 AD     .word off_AD93_00
- D 0 - I - 0x004066 01:8056: 93 AD     .word off_AD93_01
- D 0 - I - 0x004068 01:8058: 93 AD     .word off_AD93_02
- D 0 - I - 0x00406A 01:805A: 93 AD     .word off_AD93_03
- D 0 - I - 0x00406C 01:805C: 93 AD     .word off_AD93_04
- D 0 - I - 0x00406E 01:805E: 93 AD     .word off_AD93_05
- D 0 - I - 0x004070 01:8060: 93 AD     .word off_AD93_06
- D 0 - I - 0x004072 01:8062: 93 AD     .word off_AD93_07
off_8064_01:
- D 0 - I - 0x004074 01:8064: 04 89     .word off_8904_00
- D 0 - I - 0x004076 01:8066: 24 8A     .word off_8A24_01
- D 0 - I - 0x004078 01:8068: 65 8F     .word off_8F65_02
- D 0 - I - 0x00407A 01:806A: 68 92     .word off_9268_03
- D 0 - I - 0x00407C 01:806C: CD 9E     .word off_9ECD_04
- D 0 - I - 0x00407E 01:806E: 6D 9F     .word off_9F6D_05
- D 0 - I - 0x004080 01:8070: 9B A2     .word off_A29B_06
- D 0 - I - 0x004082 01:8072: 97 A3     .word off_A397_07
off_8074_02:
off_8074_03:
- D 0 - I - 0x004084 01:8074: 04 A5     .word off_A504_00
- D 0 - I - 0x004086 01:8076: 25 A7     .word off_A725_01
- D 0 - I - 0x004088 01:8078: 54 AA     .word off_AA54_02
- D 0 - I - 0x00408A 01:807A: F4 AA     .word off_AAF4_03
- D 0 - I - 0x00408C 01:807C: E2 AC     .word off_ACE2_04
- D 0 - I - 0x00408E 01:807E: 82 AD     .word off_AD82_05
- D 0 - I - 0x004090 01:8080: 8E AF     .word off_AF8E_06
- D 0 - I - 0x004092 01:8082: 79 B0     .word off_B079_07
off_8084_00:
- - - - - - 0x004094 01:8084: 24 86     .word off_8624_00
- - - - - - 0x004096 01:8086: 24 86     .word off_8624_01
- - - - - - 0x004098 01:8088: 44 86     .word off_8644_02
- - - - - - 0x00409A 01:808A: D3 8F     .word off_8FD3_03
- D 0 - I - 0x00409C 01:808C: 99 B0     .word off_B099_04
- D 0 - I - 0x00409E 01:808E: 86 8A     .word off_8A86_05
- D 0 - I - 0x0040A0 01:8090: 79 96     .word off_9679_06
- D 0 - I - 0x0040A2 01:8092: 62 9A     .word off_9A62_07
- D 0 - I - 0x0040A4 01:8094: A6 9B     .word off_9BA6_08
- D 0 - I - 0x0040A6 01:8096: 64 86     .word off_8664_09
- D 0 - I - 0x0040A8 01:8098: A0 86     .word off_86A0_0A
- D 0 - I - 0x0040AA 01:809A: 80 97     .word off_9780_0B
- D 0 - I - 0x0040AC 01:809C: 5B 9D     .word off_9D5B_0C
- D 0 - I - 0x0040AE 01:809E: F9 93     .word off_93F9_0D
- D 0 - I - 0x0040B0 01:80A0: DC 86     .word off_86DC_0E
- D 0 - I - 0x0040B2 01:80A2: E6 A7     .word off_A7E6_0F
- D 0 - I - 0x0040B4 01:80A4: 1B 87     .word off_871B_10
- D 0 - I - 0x0040B6 01:80A6: 88 87     .word off_8788_11
- D 0 - I - 0x0040B8 01:80A8: E0 8D     .word off_8DE0_12
- D 0 - I - 0x0040BA 01:80AA: C4 87     .word off_87C4_13
- D 0 - I - 0x0040BC 01:80AC: E4 87     .word off_87E4_14
- D 0 - I - 0x0040BE 01:80AE: 04 88     .word off_8804_15
- D 0 - I - 0x0040C0 01:80B0: 24 88     .word off_8824_16
- D 0 - I - 0x0040C2 01:80B2: 44 88     .word off_8844_17
- D 0 - I - 0x0040C4 01:80B4: 64 88     .word off_8864_18
- D 0 - I - 0x0040C6 01:80B6: E1 92     .word off_92E1_19
- D 0 - I - 0x0040C8 01:80B8: 84 88     .word off_8884_1A
- D 0 - I - 0x0040CA 01:80BA: A4 88     .word off_88A4_1B
- D 0 - I - 0x0040CC 01:80BC: C4 88     .word off_88C4_1C
- D 0 - I - 0x0040CE 01:80BE: E4 88     .word off_88E4_1D
off_80C0_01:
- D 0 - I - 0x0040D0 01:80C0: 24 86     .word off_8624_00
- D 0 - I - 0x0040D2 01:80C2: 24 86     .word off_8624_01
- D 0 - I - 0x0040D4 01:80C4: 44 86     .word off_8644_02
- D 0 - I - 0x0040D6 01:80C6: E5 8F     .word off_8FE5_03
- D 0 - I - 0x0040D8 01:80C8: 99 B0     .word off_B099_04
- D 0 - I - 0x0040DA 01:80CA: 86 8A     .word off_8A86_05
- D 0 - I - 0x0040DC 01:80CC: 65 8A     .word off_8A65_06
- D 0 - I - 0x0040DE 01:80CE: 87 8A     .word off_8A87_07
- D 0 - I - 0x0040E0 01:80D0: B0 A0     .word off_A0B0_08
- D 0 - I - 0x0040E2 01:80D2: 18 94     .word off_9418_09
- D 0 - I - 0x0040E4 01:80D4: FB 86     .word off_86FB_0A
- D 0 - I - 0x0040E6 01:80D6: 33 9E     .word off_9E33_0B
- D 0 - I - 0x0040E8 01:80D8: 73 8B     .word off_8B73_0C
- D 0 - I - 0x0040EA 01:80DA: 41 A8     .word off_A841_0D
- D 0 - I - 0x0040EC 01:80DC: AD 9E     .word off_9EAD_0E
- D 0 - I - 0x0040EE 01:80DE: 8D 90     .word off_908D_0F
- D 0 - I - 0x0040F0 01:80E0: 44 89     .word off_8944_10
- D 0 - I - 0x0040F2 01:80E2: 64 89     .word off_8964_11
- D 0 - I - 0x0040F4 01:80E4: 3B B0     .word off_B03B_12
- D 0 - I - 0x0040F6 01:80E6: 7F 95     .word off_957F_13
- D 0 - I - 0x0040F8 01:80E8: A7 96     .word off_96A7_14
- D 0 - I - 0x0040FA 01:80EA: 84 89     .word off_8984_15
- D 0 - I - 0x0040FC 01:80EC: A4 89     .word off_89A4_16
- D 0 - I - 0x0040FE 01:80EE: C5 90     .word off_90C5_17
- D 0 - I - 0x004100 01:80F0: 30 8E     .word off_8E30_18
- D 0 - I - 0x004102 01:80F2: C4 89     .word off_89C4_19
- D 0 - I - 0x004104 01:80F4: 0A 9D     .word off_9D0A_1A
- D 0 - I - 0x004106 01:80F6: E4 89     .word off_89E4_1B
- D 0 - I - 0x004108 01:80F8: 04 8A     .word off_8A04_1C
- D 0 - I - 0x00410A 01:80FA: 77 A3     .word off_A377_1D
off_80FC_02:
- D 0 - I - 0x00410C 01:80FC: 24 86     .word off_8624_00
- D 0 - I - 0x00410E 01:80FE: 24 86     .word off_8624_01
- D 0 - I - 0x004110 01:8100: 44 86     .word off_8644_02
- D 0 - I - 0x004112 01:8102: B9 8F     .word off_8FB9_03
- D 0 - I - 0x004114 01:8104: 99 B0     .word off_B099_04
- D 0 - I - 0x004116 01:8106: 86 8A     .word off_8A86_05
- D 0 - I - 0x004118 01:8108: 64 8A     .word off_8A64_06
- D 0 - I - 0x00411A 01:810A: 85 8A     .word off_8A85_07
- D 0 - I - 0x00411C 01:810C: A7 8A     .word off_8AA7_08
- D 0 - I - 0x00411E 01:810E: E4 A4     .word off_A4E4_09
- D 0 - I - 0x004120 01:8110: DF 8A     .word off_8ADF_0A
- D 0 - I - 0x004122 01:8112: 1B 8B     .word off_8B1B_0B
- D 0 - I - 0x004124 01:8114: 58 8B     .word off_8B58_0C
- D 0 - I - 0x004126 01:8116: 93 8B     .word off_8B93_0D
- D 0 - I - 0x004128 01:8118: D0 8B     .word off_8BD0_0E
- D 0 - I - 0x00412A 01:811A: 0D 8C     .word off_8C0D_0F
- D 0 - I - 0x00412C 01:811C: 7A 8C     .word off_8C7A_10
- D 0 - I - 0x00412E 01:811E: A1 8C     .word off_8CA1_11
- D 0 - I - 0x004130 01:8120: DA 8C     .word off_8CDA_12
- D 0 - I - 0x004132 01:8122: 0F 8D     .word off_8D0F_13
- D 0 - I - 0x004134 01:8124: 2F 8D     .word off_8D2F_14
- D 0 - I - 0x004136 01:8126: 5A 8D     .word off_8D5A_15
- D 0 - I - 0x004138 01:8128: 9E 8D     .word off_8D9E_16
- D 0 - I - 0x00413A 01:812A: 1C 8E     .word off_8E1C_17
- D 0 - I - 0x00413C 01:812C: 50 8E     .word off_8E50_18
- D 0 - I - 0x00413E 01:812E: 9B 8E     .word off_8E9B_19
- D 0 - I - 0x004140 01:8130: CF 8E     .word off_8ECF_1A
- D 0 - I - 0x004142 01:8132: EF 8E     .word off_8EEF_1B
- D 0 - I - 0x004144 01:8134: 0F 8F     .word off_8F0F_1C
- D 0 - I - 0x004146 01:8136: 2F 8F     .word off_8F2F_1D
off_8138_03:
- - - - - - 0x004148 01:8138: 24 86     .word off_8624_00
- - - - - - 0x00414A 01:813A: 24 86     .word off_8624_01
- - - - - - 0x00414C 01:813C: 44 86     .word off_8644_02
- - - - - - 0x00414E 01:813E: A5 8F     .word off_8FA5_03
- D 0 - I - 0x004150 01:8140: CE 95     .word off_95CE_04
- D 0 - I - 0x004152 01:8142: 6E A5     .word off_A56E_05
- D 0 - I - 0x004154 01:8144: 05 90     .word off_9005_06
- D 0 - I - 0x004156 01:8146: 25 90     .word off_9025_07
- D 0 - I - 0x004158 01:8148: BF 8A     .word off_8ABF_08
- D 0 - I - 0x00415A 01:814A: 27 A4     .word off_A427_09
- D 0 - I - 0x00415C 01:814C: 84 A7     .word off_A784_0A
- D 0 - I - 0x00415E 01:814E: 7A 9D     .word off_9D7A_0B
- D 0 - I - 0x004160 01:8150: EF A0     .word off_A0EF_0C
- D 0 - I - 0x004162 01:8152: 00 9A     .word off_9A00_0D
- D 0 - I - 0x004164 01:8154: E8 AB     .word off_ABE8_0E
- D 0 - I - 0x004166 01:8156: 56 90     .word off_9056_0F
- D 0 - I - 0x004168 01:8158: 30 98     .word off_9830_10
- D 0 - I - 0x00416A 01:815A: FC 8D     .word off_8DFC_11
- D 0 - I - 0x00416C 01:815C: A4 87     .word off_87A4_12
- D 0 - I - 0x00416E 01:815E: AD 90     .word off_90AD_13
- D 0 - I - 0x004170 01:8160: E5 90     .word off_90E5_14
- D 0 - I - 0x004172 01:8162: 1A 91     .word off_911A_15
- D 0 - I - 0x004174 01:8164: 3A 91     .word off_913A_16
- D 0 - I - 0x004176 01:8166: 5A 91     .word off_915A_17
- D 0 - I - 0x004178 01:8168: 8F 91     .word off_918F_18
- D 0 - I - 0x00417A 01:816A: C8 91     .word off_91C8_19
- D 0 - I - 0x00417C 01:816C: E8 91     .word off_91E8_1A
- D 0 - I - 0x00417E 01:816E: 08 92     .word off_9208_1B
- D 0 - I - 0x004180 01:8170: 28 92     .word off_9228_1C
- D 0 - I - 0x004182 01:8172: 48 92     .word off_9248_1D
off_8174_00:
- - - - - - 0x004184 01:8174: 24 86     .word off_8624_00
- - - - - - 0x004186 01:8176: 24 86     .word off_8624_01
- - - - - - 0x004188 01:8178: 44 86     .word off_8644_02
- - - - - - 0x00418A 01:817A: D3 8F     .word off_8FD3_03
- D 0 - I - 0x00418C 01:817C: 99 B0     .word off_B099_04
- D 0 - I - 0x00418E 01:817E: 86 8A     .word off_8A86_05
- D 0 - I - 0x004190 01:8180: 79 96     .word off_9679_06
- D 0 - I - 0x004192 01:8182: 62 9A     .word off_9A62_07
- D 0 - I - 0x004194 01:8184: 57 95     .word off_9557_08
- D 0 - I - 0x004196 01:8186: A8 92     .word off_92A8_09
- D 0 - I - 0x004198 01:8188: C8 92     .word off_92C8_0A
- D 0 - I - 0x00419A 01:818A: A9 AB     .word off_ABA9_0B
- D 0 - I - 0x00419C 01:818C: EC A2     .word off_A2EC_0C
- D 0 - I - 0x00419E 01:818E: 85 98     .word off_9885_0D
- D 0 - I - 0x0041A0 01:8190: 01 93     .word off_9301_0E
- D 0 - I - 0x0041A2 01:8192: FA 90     .word off_90FA_0F
- D 0 - I - 0x0041A4 01:8194: 1B 87     .word off_871B_10
- D 0 - I - 0x0041A6 01:8196: 88 87     .word off_8788_11
- D 0 - I - 0x0041A8 01:8198: E0 8D     .word off_8DE0_12
- D 0 - I - 0x0041AA 01:819A: C4 87     .word off_87C4_13
- D 0 - I - 0x0041AC 01:819C: E4 87     .word off_87E4_14
- D 0 - I - 0x0041AE 01:819E: 04 88     .word off_8804_15
- D 0 - I - 0x0041B0 01:81A0: 24 88     .word off_8824_16
- D 0 - I - 0x0041B2 01:81A2: 44 88     .word off_8844_17
- D 0 - I - 0x0041B4 01:81A4: 64 88     .word off_8864_18
- D 0 - I - 0x0041B6 01:81A6: E1 92     .word off_92E1_19
- D 0 - I - 0x0041B8 01:81A8: 84 88     .word off_8884_1A
- D 0 - I - 0x0041BA 01:81AA: A4 88     .word off_88A4_1B
- D 0 - I - 0x0041BC 01:81AC: C4 88     .word off_88C4_1C
- D 0 - I - 0x0041BE 01:81AE: E4 88     .word off_88E4_1D
off_81B0_01:
- D 0 - I - 0x0041C0 01:81B0: 24 86     .word off_8624_00
- D 0 - I - 0x0041C2 01:81B2: 24 86     .word off_8624_01
- D 0 - I - 0x0041C4 01:81B4: 44 86     .word off_8644_02
- D 0 - I - 0x0041C6 01:81B6: E5 8F     .word off_8FE5_03
- D 0 - I - 0x0041C8 01:81B8: 93 AD     .word off_AD93_04
- D 0 - I - 0x0041CA 01:81BA: 86 8A     .word off_8A86_05
- D 0 - I - 0x0041CC 01:81BC: 65 8A     .word off_8A65_06
- D 0 - I - 0x0041CE 01:81BE: 87 8A     .word off_8A87_07
- D 0 - I - 0x0041D0 01:81C0: D1 9B     .word off_9BD1_08
- D 0 - I - 0x0041D2 01:81C2: 21 93     .word off_9321_09
- D 0 - I - 0x0041D4 01:81C4: 08 A0     .word off_A008_0A
- D 0 - I - 0x0041D6 01:81C6: 87 8A     .word off_8A87_0B
- D 0 - I - 0x0041D8 01:81C8: 87 8A     .word off_8A87_0C
- D 0 - I - 0x0041DA 01:81CA: 41 93     .word off_9341_0D
- D 0 - I - 0x0041DC 01:81CC: 73 9B     .word off_9B73_0E
- D 0 - I - 0x0041DE 01:81CE: 81 8C     .word off_8C81_0F
- D 0 - I - 0x0041E0 01:81D0: 7B 8E     .word off_8E7B_10
- D 0 - I - 0x0041E2 01:81D2: EF 8C     .word off_8CEF_11
- D 0 - I - 0x0041E4 01:81D4: C4 93     .word off_93C4_12
- D 0 - I - 0x0041E6 01:81D6: 87 8A     .word off_8A87_13
- D 0 - I - 0x0041E8 01:81D8: A7 96     .word off_96A7_14
- D 0 - I - 0x0041EA 01:81DA: 84 89     .word off_8984_15
- D 0 - I - 0x0041EC 01:81DC: A4 89     .word off_89A4_16
- D 0 - I - 0x0041EE 01:81DE: C5 90     .word off_90C5_17
- D 0 - I - 0x0041F0 01:81E0: 8A 93     .word off_938A_18
- D 0 - I - 0x0041F2 01:81E2: 61 93     .word off_9361_19
- D 0 - I - 0x0041F4 01:81E4: E5 AF     .word off_AFE5_1A
- D 0 - I - 0x0041F6 01:81E6: 74 AE     .word off_AE74_1B
- D 0 - I - 0x0041F8 01:81E8: 3A 8D     .word off_8D3A_1C
- D 0 - I - 0x0041FA 01:81EA: 82 94     .word off_9482_1D
off_81EC_02:
- D 0 - I - 0x0041FC 01:81EC: 24 86     .word off_8624_00
- D 0 - I - 0x0041FE 01:81EE: 24 86     .word off_8624_01
- D 0 - I - 0x004200 01:81F0: 44 86     .word off_8644_02
- D 0 - I - 0x004202 01:81F2: B9 8F     .word off_8FB9_03
- D 0 - I - 0x004204 01:81F4: 93 AD     .word off_AD93_04
- D 0 - I - 0x004206 01:81F6: 86 8A     .word off_8A86_05
- D 0 - I - 0x004208 01:81F8: 64 8A     .word off_8A64_06
- D 0 - I - 0x00420A 01:81FA: 85 8A     .word off_8A85_07
- D 0 - I - 0x00420C 01:81FC: 81 93     .word off_9381_08
- D 0 - I - 0x00420E 01:81FE: AA 93     .word off_93AA_09
- D 0 - I - 0x004210 01:8200: E4 93     .word off_93E4_0A
- D 0 - I - 0x004212 01:8202: 38 94     .word off_9438_0B
- D 0 - I - 0x004214 01:8204: A2 94     .word off_94A2_0C
- D 0 - I - 0x004216 01:8206: D0 94     .word off_94D0_0D
- D 0 - I - 0x004218 01:8208: F1 94     .word off_94F1_0E
- D 0 - I - 0x00421A 01:820A: 43 95     .word off_9543_0F
- D 0 - I - 0x00421C 01:820C: 77 95     .word off_9577_10
- D 0 - I - 0x00421E 01:820E: 9F 95     .word off_959F_11
- D 0 - I - 0x004220 01:8210: DA 8C     .word off_8CDA_12
- D 0 - I - 0x004222 01:8212: 0F 8D     .word off_8D0F_13
- D 0 - I - 0x004224 01:8214: 2F 8D     .word off_8D2F_14
- D 0 - I - 0x004226 01:8216: 5A 8D     .word off_8D5A_15
- D 0 - I - 0x004228 01:8218: BF 95     .word off_95BF_16
- D 0 - I - 0x00422A 01:821A: FE 95     .word off_95FE_17
- D 0 - I - 0x00422C 01:821C: 1E 96     .word off_961E_18
- D 0 - I - 0x00422E 01:821E: 42 96     .word off_9642_19
- D 0 - I - 0x004230 01:8220: 6C 96     .word off_966C_1A
- D 0 - I - 0x004232 01:8222: 99 96     .word off_9699_1B
- D 0 - I - 0x004234 01:8224: 85 8A     .word off_8A85_1C
- D 0 - I - 0x004236 01:8226: C7 96     .word off_96C7_1D
off_8228_03:
- D 0 - I - 0x004238 01:8228: 24 86     .word off_8624_00
- D 0 - I - 0x00423A 01:822A: 24 86     .word off_8624_01
- D 0 - I - 0x00423C 01:822C: 44 86     .word off_8644_02
- D 0 - I - 0x00423E 01:822E: A5 8F     .word off_8FA5_03
- D 0 - I - 0x004240 01:8230: CE 95     .word off_95CE_04
- D 0 - I - 0x004242 01:8232: 6E A5     .word off_A56E_05
- D 0 - I - 0x004244 01:8234: 05 90     .word off_9005_06
- D 0 - I - 0x004246 01:8236: 25 90     .word off_9025_07
- D 0 - I - 0x004248 01:8238: FD 96     .word off_96FD_08
- D 0 - I - 0x00424A 01:823A: 3F A0     .word off_A03F_09
- D 0 - I - 0x00424C 01:823C: 1B A0     .word off_A01B_0A
- D 0 - I - 0x00424E 01:823E: F6 97     .word off_97F6_0B
- D 0 - I - 0x004250 01:8240: 69 97     .word off_9769_0C
- D 0 - I - 0x004252 01:8242: 3C A3     .word off_A33C_0D
- D 0 - I - 0x004254 01:8244: BC 97     .word off_97BC_0E
- D 0 - I - 0x004256 01:8246: DC 97     .word off_97DC_0F
- D 0 - I - 0x004258 01:8248: 30 98     .word off_9830_10
- D 0 - I - 0x00425A 01:824A: FC 8D     .word off_8DFC_11
- D 0 - I - 0x00425C 01:824C: A4 87     .word off_87A4_12
- D 0 - I - 0x00425E 01:824E: AD 90     .word off_90AD_13
- D 0 - I - 0x004260 01:8250: E5 90     .word off_90E5_14
- D 0 - I - 0x004262 01:8252: 1A 91     .word off_911A_15
- D 0 - I - 0x004264 01:8254: 3A 91     .word off_913A_16
- D 0 - I - 0x004266 01:8256: 5A 91     .word off_915A_17
- D 0 - I - 0x004268 01:8258: 8F 91     .word off_918F_18
- D 0 - I - 0x00426A 01:825A: C8 91     .word off_91C8_19
- D 0 - I - 0x00426C 01:825C: E8 91     .word off_91E8_1A
- D 0 - I - 0x00426E 01:825E: 08 92     .word off_9208_1B
- D 0 - I - 0x004270 01:8260: 28 92     .word off_9228_1C
- D 0 - I - 0x004272 01:8262: 48 92     .word off_9248_1D
off_8264_04:
- D 0 - I - 0x004274 01:8264: 21 A3     .word off_A321_00
- D 0 - I - 0x004276 01:8266: D3 9C     .word off_9CD3_01
- D 0 - I - 0x004278 01:8268: DE 95     .word off_95DE_02
- D 0 - I - 0x00427A 01:826A: 4A 94     .word off_944A_03
- D 0 - I - 0x00427C 01:826C: 14 9C     .word off_9C14_04
- D 0 - I - 0x00427E 01:826E: 16 98     .word off_9816_05
- D 0 - I - 0x004280 01:8270: 50 98     .word off_9850_06
- D 0 - I - 0x004282 01:8272: C9 99     .word off_99C9_07
- D 0 - I - 0x004284 01:8274: 70 98     .word off_9870_08
- D 0 - I - 0x004286 01:8276: 69 8E     .word off_8E69_09
- D 0 - I - 0x004288 01:8278: 45 8F     .word off_8F45_0A
- D 0 - I - 0x00428A 01:827A: 62 AE     .word off_AE62_0B
- D 0 - I - 0x00428C 01:827C: A5 98     .word off_98A5_0C
- D 0 - I - 0x00428E 01:827E: C5 98     .word off_98C5_0D
- D 0 - I - 0x004290 01:8280: FA 98     .word off_98FA_0E
- D 0 - I - 0x004292 01:8282: 93 A7     .word off_A793_0F
- D 0 - I - 0x004294 01:8284: 35 99     .word off_9935_10
- D 0 - I - 0x004296 01:8286: 35 99     .word off_9935_11
- D 0 - I - 0x004298 01:8288: 35 99     .word off_9935_12
- - - - - - 0x00429A 01:828A: 35 99     .word off_9935_13
- - - - - - 0x00429C 01:828C: 35 99     .word off_9935_14
- - - - - - 0x00429E 01:828E: 35 99     .word off_9935_15
- - - - - - 0x0042A0 01:8290: 35 99     .word off_9935_16
- - - - - - 0x0042A2 01:8292: 35 99     .word off_9935_17
- - - - - - 0x0042A4 01:8294: 35 99     .word off_9935_18
- - - - - - 0x0042A6 01:8296: 35 99     .word off_9935_19
- - - - - - 0x0042A8 01:8298: 35 99     .word off_9935_1A
- - - - - - 0x0042AA 01:829A: 35 99     .word off_9935_1B
- - - - - - 0x0042AC 01:829C: 35 99     .word off_9935_1C
- - - - - - 0x0042AE 01:829E: 35 99     .word off_9935_1D
off_82A0_05:
- D 0 - I - 0x0042B0 01:82A0: 55 99     .word off_9955_00
- D 0 - I - 0x0042B2 01:82A2: D1 94     .word off_94D1_01
- D 0 - I - 0x0042B4 01:82A4: AF 8E     .word off_8EAF_02
- D 0 - I - 0x0042B6 01:82A6: 36 90     .word off_9036_03
- D 0 - I - 0x0042B8 01:82A8: B0 94     .word off_94B0_04
- D 0 - I - 0x0042BA 01:82AA: 22 96     .word off_9622_05
- D 0 - I - 0x0042BC 01:82AC: 75 99     .word off_9975_06
- D 0 - I - 0x0042BE 01:82AE: 7E 8D     .word off_8D7E_07
- D 0 - I - 0x0042C0 01:82B0: 33 9A     .word off_9A33_08
- D 0 - I - 0x0042C2 01:82B2: 95 99     .word off_9995_09
- D 0 - I - 0x0042C4 01:82B4: 92 9A     .word off_9A92_0A
- D 0 - I - 0x0042C6 01:82B6: 87 8A     .word off_8A87_0B
- D 0 - I - 0x0042C8 01:82B8: D1 94     .word off_94D1_0C
- D 0 - I - 0x0042CA 01:82BA: D4 98     .word off_98D4_0D
- D 0 - I - 0x0042CC 01:82BC: 72 8D     .word off_8D72_0E
- D 0 - I - 0x0042CE 01:82BE: E6 8C     .word off_8CE6_0F
- D 0 - I - 0x0042D0 01:82C0: 35 99     .word off_9935_10
- - - - - - 0x0042D2 01:82C2: 35 99     .word off_9935_11
- - - - - - 0x0042D4 01:82C4: 35 99     .word off_9935_12
- - - - - - 0x0042D6 01:82C6: 35 99     .word off_9935_13
- - - - - - 0x0042D8 01:82C8: 35 99     .word off_9935_14
- - - - - - 0x0042DA 01:82CA: 35 99     .word off_9935_15
- - - - - - 0x0042DC 01:82CC: 35 99     .word off_9935_16
- - - - - - 0x0042DE 01:82CE: 35 99     .word off_9935_17
- - - - - - 0x0042E0 01:82D0: 35 99     .word off_9935_18
- - - - - - 0x0042E2 01:82D2: 35 99     .word off_9935_19
- - - - - - 0x0042E4 01:82D4: 35 99     .word off_9935_1A
- - - - - - 0x0042E6 01:82D6: 35 99     .word off_9935_1B
- - - - - - 0x0042E8 01:82D8: 35 99     .word off_9935_1C
- - - - - - 0x0042EA 01:82DA: 35 99     .word off_9935_1D
off_82DC_06:
- D 0 - I - 0x0042EC 01:82DC: D0 94     .word off_94D0_00
- D 0 - I - 0x0042EE 01:82DE: B5 99     .word off_99B5_01
- D 0 - I - 0x0042F0 01:82E0: 20 9A     .word off_9A20_02
- D 0 - I - 0x0042F2 01:82E2: 53 9A     .word off_9A53_03
- D 0 - I - 0x0042F4 01:82E4: 82 9A     .word off_9A82_04
- D 0 - I - 0x0042F6 01:82E6: B2 9A     .word off_9AB2_05
- D 0 - I - 0x0042F8 01:82E8: EE 9A     .word off_9AEE_06
- D 0 - I - 0x0042FA 01:82EA: 0E 9B     .word off_9B0E_07
- D 0 - I - 0x0042FC 01:82EC: 5F 9B     .word off_9B5F_08
- D 0 - I - 0x0042FE 01:82EE: 93 9B     .word off_9B93_09
- D 0 - I - 0x004300 01:82F0: C6 9B     .word off_9BC6_0A
- D 0 - I - 0x004302 01:82F2: F1 9B     .word off_9BF1_0B
- D 0 - I - 0x004304 01:82F4: D0 94     .word off_94D0_0C
- D 0 - I - 0x004306 01:82F6: D4 98     .word off_98D4_0D
- D 0 - I - 0x004308 01:82F8: 34 9C     .word off_9C34_0E
- D 0 - I - 0x00430A 01:82FA: 15 99     .word off_9915_0F
- - - - - - 0x00430C 01:82FC: 35 99     .word off_9935_10
- - - - - - 0x00430E 01:82FE: 35 99     .word off_9935_11
- - - - - - 0x004310 01:8300: 35 99     .word off_9935_12
- - - - - - 0x004312 01:8302: 35 99     .word off_9935_13
- - - - - - 0x004314 01:8304: 35 99     .word off_9935_14
- - - - - - 0x004316 01:8306: 35 99     .word off_9935_15
- - - - - - 0x004318 01:8308: 35 99     .word off_9935_16
- - - - - - 0x00431A 01:830A: 35 99     .word off_9935_17
- - - - - - 0x00431C 01:830C: 35 99     .word off_9935_18
- - - - - - 0x00431E 01:830E: 35 99     .word off_9935_19
- - - - - - 0x004320 01:8310: 35 99     .word off_9935_1A
- - - - - - 0x004322 01:8312: 35 99     .word off_9935_1B
- - - - - - 0x004324 01:8314: 35 99     .word off_9935_1C
- - - - - - 0x004326 01:8316: 35 99     .word off_9935_1D
off_8318_07:
- D 0 - I - 0x004328 01:8318: 88 9C     .word off_9C88_00
- D 0 - I - 0x00432A 01:831A: C3 9C     .word off_9CC3_01
- D 0 - I - 0x00432C 01:831C: F3 9C     .word off_9CF3_02
- D 0 - I - 0x00432E 01:831E: 2A 9D     .word off_9D2A_03
- D 0 - I - 0x004330 01:8320: 4A 9D     .word off_9D4A_04
- D 0 - I - 0x004332 01:8322: 35 87     .word off_8735_05
- D 0 - I - 0x004334 01:8324: 9A 9D     .word off_9D9A_06
- D 0 - I - 0x004336 01:8326: BA 8C     .word off_8CBA_07
- D 0 - I - 0x004338 01:8328: 2B A0     .word off_A02B_08
- D 0 - I - 0x00433A 01:832A: 03 9C     .word off_9C03_09
- D 0 - I - 0x00433C 01:832C: 11 97     .word off_9711_0A
- D 0 - I - 0x00433E 01:832E: 85 A5     .word off_A585_0B
- D 0 - I - 0x004340 01:8330: BA 9D     .word off_9DBA_0C
- D 0 - I - 0x004342 01:8332: A2 AC     .word off_ACA2_0D
- D 0 - I - 0x004344 01:8334: DD 8C     .word off_8CDD_0E
- D 0 - I - 0x004346 01:8336: 7A 8D     .word off_8D7A_0F
- - - - - - 0x004348 01:8338: 35 99     .word off_9935_10
- - - - - - 0x00434A 01:833A: 35 99     .word off_9935_11
- - - - - - 0x00434C 01:833C: 35 99     .word off_9935_12
- - - - - - 0x00434E 01:833E: 35 99     .word off_9935_13
- - - - - - 0x004350 01:8340: 35 99     .word off_9935_14
- - - - - - 0x004352 01:8342: 35 99     .word off_9935_15
- - - - - - 0x004354 01:8344: 35 99     .word off_9935_16
- - - - - - 0x004356 01:8346: 35 99     .word off_9935_17
- - - - - - 0x004358 01:8348: 35 99     .word off_9935_18
- - - - - - 0x00435A 01:834A: 35 99     .word off_9935_19
- - - - - - 0x00435C 01:834C: 35 99     .word off_9935_1A
- - - - - - 0x00435E 01:834E: 35 99     .word off_9935_1B
- - - - - - 0x004360 01:8350: 35 99     .word off_9935_1C
- - - - - - 0x004362 01:8352: 35 99     .word off_9935_1D
off_8354_04:
- D 0 - I - 0x004364 01:8354: 21 A3     .word off_A321_00
- D 0 - I - 0x004366 01:8356: D3 9C     .word off_9CD3_01
- D 0 - I - 0x004368 01:8358: B0 8D     .word off_8DB0_02
- D 0 - I - 0x00436A 01:835A: DA 9D     .word off_9DDA_03
- D 0 - I - 0x00436C 01:835C: CB A8     .word off_A8CB_04
- D 0 - I - 0x00436E 01:835E: 17 9E     .word off_9E17_05
- D 0 - I - 0x004370 01:8360: 53 9E     .word off_9E53_06
- D 0 - I - 0x004372 01:8362: 22 9B     .word off_9B22_07
- D 0 - I - 0x004374 01:8364: 90 9E     .word off_9E90_08
- D 0 - I - 0x004376 01:8366: 6F 90     .word off_906F_09
- D 0 - I - 0x004378 01:8368: 45 8F     .word off_8F45_0A
- D 0 - I - 0x00437A 01:836A: 62 AE     .word off_AE62_0B
- D 0 - I - 0x00437C 01:836C: A5 98     .word off_98A5_0C
- D 0 - I - 0x00437E 01:836E: C5 98     .word off_98C5_0D
- D 0 - I - 0x004380 01:8370: FA 98     .word off_98FA_0E
- D 0 - I - 0x004382 01:8372: 93 A7     .word off_A793_0F
- - - - - - 0x004384 01:8374: 35 99     .word off_9935_10
- - - - - - 0x004386 01:8376: 35 99     .word off_9935_11
- - - - - - 0x004388 01:8378: 35 99     .word off_9935_12
- - - - - - 0x00438A 01:837A: 35 99     .word off_9935_13
- - - - - - 0x00438C 01:837C: 35 99     .word off_9935_14
- - - - - - 0x00438E 01:837E: 35 99     .word off_9935_15
- - - - - - 0x004390 01:8380: 35 99     .word off_9935_16
- - - - - - 0x004392 01:8382: 35 99     .word off_9935_17
- - - - - - 0x004394 01:8384: 35 99     .word off_9935_18
- - - - - - 0x004396 01:8386: 35 99     .word off_9935_19
- - - - - - 0x004398 01:8388: 35 99     .word off_9935_1A
- - - - - - 0x00439A 01:838A: 35 99     .word off_9935_1B
- - - - - - 0x00439C 01:838C: 35 99     .word off_9935_1C
- - - - - - 0x00439E 01:838E: 35 99     .word off_9935_1D
off_8390_05:
- D 0 - I - 0x0043A0 01:8390: 0D 9F     .word off_9F0D_00
- D 0 - I - 0x0043A2 01:8392: 2D 9F     .word off_9F2D_01
- D 0 - I - 0x0043A4 01:8394: 23 95     .word off_9523_02
- D 0 - I - 0x0043A6 01:8396: 49 97     .word off_9749_03
- D 0 - I - 0x0043A8 01:8398: 66 A4     .word off_A466_04
- D 0 - I - 0x0043AA 01:839A: B2 AE     .word off_AEB2_05
- D 0 - I - 0x0043AC 01:839C: B0 8B     .word off_8BB0_06
- D 0 - I - 0x0043AE 01:839E: 9F A1     .word off_A19F_07
- D 0 - I - 0x0043B0 01:83A0: 3F 9B     .word off_9B3F_08
- D 0 - I - 0x0043B2 01:83A2: DD A1     .word off_A1DD_09
- D 0 - I - 0x0043B4 01:83A4: 4D 9F     .word off_9F4D_0A
- D 0 - I - 0x0043B6 01:83A6: 61 A9     .word off_A961_0B
- D 0 - I - 0x0043B8 01:83A8: D1 94     .word off_94D1_0C
- D 0 - I - 0x0043BA 01:83AA: D4 98     .word off_98D4_0D
- D 0 - I - 0x0043BC 01:83AC: 72 8D     .word off_8D72_0E
- D 0 - I - 0x0043BE 01:83AE: E6 8C     .word off_8CE6_0F
- - - - - - 0x0043C0 01:83B0: 35 99     .word off_9935_10
- - - - - - 0x0043C2 01:83B2: 35 99     .word off_9935_11
- - - - - - 0x0043C4 01:83B4: 35 99     .word off_9935_12
- - - - - - 0x0043C6 01:83B6: 35 99     .word off_9935_13
- - - - - - 0x0043C8 01:83B8: 35 99     .word off_9935_14
- - - - - - 0x0043CA 01:83BA: 35 99     .word off_9935_15
- - - - - - 0x0043CC 01:83BC: 35 99     .word off_9935_16
- - - - - - 0x0043CE 01:83BE: 35 99     .word off_9935_17
- - - - - - 0x0043D0 01:83C0: 35 99     .word off_9935_18
- - - - - - 0x0043D2 01:83C2: 35 99     .word off_9935_19
- - - - - - 0x0043D4 01:83C4: 35 99     .word off_9935_1A
- - - - - - 0x0043D6 01:83C6: 35 99     .word off_9935_1B
- - - - - - 0x0043D8 01:83C8: 35 99     .word off_9935_1C
- - - - - - 0x0043DA 01:83CA: 35 99     .word off_9935_1D
off_83CC_06:
- D 0 - I - 0x0043DC 01:83CC: AD 9F     .word off_9FAD_00
- D 0 - I - 0x0043DE 01:83CE: CD 9F     .word off_9FCD_01
- D 0 - I - 0x0043E0 01:83D0: ED 9F     .word off_9FED_02
- D 0 - I - 0x0043E2 01:83D2: 5F A0     .word off_A05F_03
- D 0 - I - 0x0043E4 01:83D4: 91 A0     .word off_A091_04
- D 0 - I - 0x0043E6 01:83D6: D0 A0     .word off_A0D0_05
- D 0 - I - 0x0043E8 01:83D8: 24 A1     .word off_A124_06
- D 0 - I - 0x0043EA 01:83DA: 44 A1     .word off_A144_07
- D 0 - I - 0x0043EC 01:83DC: 81 A1     .word off_A181_08
- D 0 - I - 0x0043EE 01:83DE: BF A1     .word off_A1BF_09
- D 0 - I - 0x0043F0 01:83E0: FD A1     .word off_A1FD_0A
- D 0 - I - 0x0043F2 01:83E2: 1D A2     .word off_A21D_0B
- D 0 - I - 0x0043F4 01:83E4: 5B A2     .word off_A25B_0C
- D 0 - I - 0x0043F6 01:83E6: DA 98     .word off_98DA_0D
- D 0 - I - 0x0043F8 01:83E8: 7B A2     .word off_A27B_0E
- D 0 - I - 0x0043FA 01:83EA: A3 9C     .word off_9CA3_0F
- - - - - - 0x0043FC 01:83EC: 35 99     .word off_9935_10
- - - - - - 0x0043FE 01:83EE: 35 99     .word off_9935_11
- - - - - - 0x004400 01:83F0: 35 99     .word off_9935_12
- - - - - - 0x004402 01:83F2: 35 99     .word off_9935_13
- - - - - - 0x004404 01:83F4: 35 99     .word off_9935_14
- - - - - - 0x004406 01:83F6: 35 99     .word off_9935_15
- - - - - - 0x004408 01:83F8: 35 99     .word off_9935_16
- - - - - - 0x00440A 01:83FA: 35 99     .word off_9935_17
- - - - - - 0x00440C 01:83FC: 35 99     .word off_9935_18
- - - - - - 0x00440E 01:83FE: 35 99     .word off_9935_19
- - - - - - 0x004410 01:8400: 35 99     .word off_9935_1A
- - - - - - 0x004412 01:8402: 35 99     .word off_9935_1B
- - - - - - 0x004414 01:8404: 35 99     .word off_9935_1C
- - - - - - 0x004416 01:8406: 35 99     .word off_9935_1D
off_8408_07:
- D 0 - I - 0x004418 01:8408: 88 9C     .word off_9C88_00
- D 0 - I - 0x00441A 01:840A: C3 9C     .word off_9CC3_01
- D 0 - I - 0x00441C 01:840C: F3 9C     .word off_9CF3_02
- D 0 - I - 0x00441E 01:840E: 2A 9D     .word off_9D2A_03
- D 0 - I - 0x004420 01:8410: DB A2     .word off_A2DB_04
- D 0 - I - 0x004422 01:8412: D2 A7     .word off_A7D2_05
- D 0 - I - 0x004424 01:8414: 2E AF     .word off_AF2E_06
- D 0 - I - 0x004426 01:8416: 61 A1     .word off_A161_07
- D 0 - I - 0x004428 01:8418: 0C A3     .word off_A30C_08
- D 0 - I - 0x00442A 01:841A: BA A8     .word off_A8BA_09
- D 0 - I - 0x00442C 01:841C: 5C A3     .word off_A35C_0A
- D 0 - I - 0x00442E 01:841E: 3B A2     .word off_A23B_0B
- D 0 - I - 0x004430 01:8420: BA 9D     .word off_9DBA_0C
- D 0 - I - 0x004432 01:8422: A2 AC     .word off_ACA2_0D
- D 0 - I - 0x004434 01:8424: DD 8C     .word off_8CDD_0E
- D 0 - I - 0x004436 01:8426: 7A 8D     .word off_8D7A_0F
- - - - - - 0x004438 01:8428: 35 99     .word off_9935_10
- - - - - - 0x00443A 01:842A: 35 99     .word off_9935_11
- - - - - - 0x00443C 01:842C: 35 99     .word off_9935_12
- - - - - - 0x00443E 01:842E: 35 99     .word off_9935_13
- - - - - - 0x004440 01:8430: 35 99     .word off_9935_14
- - - - - - 0x004442 01:8432: 35 99     .word off_9935_15
- - - - - - 0x004444 01:8434: 35 99     .word off_9935_16
- - - - - - 0x004446 01:8436: 35 99     .word off_9935_17
- - - - - - 0x004448 01:8438: 35 99     .word off_9935_18
- - - - - - 0x00444A 01:843A: 35 99     .word off_9935_19
- - - - - - 0x00444C 01:843C: 35 99     .word off_9935_1A
- - - - - - 0x00444E 01:843E: 35 99     .word off_9935_1B
- - - - - - 0x004450 01:8440: 35 99     .word off_9935_1C
- - - - - - 0x004452 01:8442: 35 99     .word off_9935_1D
off_8444_00:
- - - - - - 0x004454 01:8444: 24 86     .word off_8624_00
- - - - - - 0x004456 01:8446: 24 86     .word off_8624_01
- - - - - - 0x004458 01:8448: 44 86     .word off_8644_02
- - - - - - 0x00445A 01:844A: D3 8F     .word off_8FD3_03
- D 0 - I - 0x00445C 01:844C: 93 AD     .word off_AD93_04
- D 0 - I - 0x00445E 01:844E: 86 8A     .word off_8A86_05
- D 0 - I - 0x004460 01:8450: 79 96     .word off_9679_06
- D 0 - I - 0x004462 01:8452: 62 9A     .word off_9A62_07
- D 0 - I - 0x004464 01:8454: A6 9B     .word off_9BA6_08
- D 0 - I - 0x004466 01:8456: D7 A3     .word off_A3D7_09
- D 0 - I - 0x004468 01:8458: 0B A4     .word off_A40B_0A
- D 0 - I - 0x00446A 01:845A: 2A 97     .word off_972A_0B
- D 0 - I - 0x00446C 01:845C: 47 A4     .word off_A447_0C
- D 0 - I - 0x00446E 01:845E: E1 99     .word off_99E1_0D
- D 0 - I - 0x004470 01:8460: 86 A4     .word off_A486_0E
- D 0 - I - 0x004472 01:8462: 49 87     .word off_8749_0F
- D 0 - I - 0x004474 01:8464: A6 A4     .word off_A4A6_10
- D 0 - I - 0x004476 01:8466: C6 A4     .word off_A4C6_11
- D 0 - I - 0x004478 01:8468: E0 8D     .word off_8DE0_12
- D 0 - I - 0x00447A 01:846A: C4 87     .word off_87C4_13
- D 0 - I - 0x00447C 01:846C: E4 87     .word off_87E4_14
- D 0 - I - 0x00447E 01:846E: 04 88     .word off_8804_15
- D 0 - I - 0x004480 01:8470: 24 88     .word off_8824_16
- D 0 - I - 0x004482 01:8472: 44 88     .word off_8844_17
- D 0 - I - 0x004484 01:8474: 64 88     .word off_8864_18
- D 0 - I - 0x004486 01:8476: E1 92     .word off_92E1_19
- D 0 - I - 0x004488 01:8478: 84 88     .word off_8884_1A
- D 0 - I - 0x00448A 01:847A: A4 88     .word off_88A4_1B
- D 0 - I - 0x00448C 01:847C: C4 88     .word off_88C4_1C
- D 0 - I - 0x00448E 01:847E: E4 88     .word off_88E4_1D
off_8480_01:
- D 0 - I - 0x004490 01:8480: 24 86     .word off_8624_00
- D 0 - I - 0x004492 01:8482: 24 86     .word off_8624_01
- D 0 - I - 0x004494 01:8484: 44 86     .word off_8644_02
- D 0 - I - 0x004496 01:8486: E5 8F     .word off_8FE5_03
- D 0 - I - 0x004498 01:8488: 44 A5     .word off_A544_04
- D 0 - I - 0x00449A 01:848A: 64 A5     .word off_A564_05
- D 0 - I - 0x00449C 01:848C: A5 A5     .word off_A5A5_06
- D 0 - I - 0x00449E 01:848E: C5 A5     .word off_A5C5_07
- D 0 - I - 0x0044A0 01:8490: E5 A5     .word off_A5E5_08
- D 0 - I - 0x0044A2 01:8492: 05 A6     .word off_A605_09
- D 0 - I - 0x0044A4 01:8494: FB 8A     .word off_8AFB_0A
- D 0 - I - 0x0044A6 01:8496: 5A 8C     .word off_8C5A_0B
- D 0 - I - 0x0044A8 01:8498: 9C 97     .word off_979C_0C
- D 0 - I - 0x0044AA 01:849A: 68 9C     .word off_9C68_0D
- D 0 - I - 0x0044AC 01:849C: 25 A6     .word off_A625_0E
- D 0 - I - 0x0044AE 01:849E: 71 A0     .word off_A071_0F
- D 0 - I - 0x0044B0 01:84A0: 6F 91     .word off_916F_10
- D 0 - I - 0x0044B2 01:84A2: 4C 96     .word off_964C_11
- D 0 - I - 0x0044B4 01:84A4: C4 93     .word off_93C4_12
- D 0 - I - 0x0044B6 01:84A6: 87 8A     .word off_8A87_13
- D 0 - I - 0x0044B8 01:84A8: 45 A6     .word off_A645_14
- D 0 - I - 0x0044BA 01:84AA: 65 A6     .word off_A665_15
- D 0 - I - 0x0044BC 01:84AC: EB A3     .word off_A3EB_16
- D 0 - I - 0x0044BE 01:84AE: 85 A6     .word off_A685_17
- D 0 - I - 0x0044C0 01:84B0: 04 A1     .word off_A104_18
- D 0 - I - 0x0044C2 01:84B2: A5 A6     .word off_A6A5_19
- D 0 - I - 0x0044C4 01:84B4: C5 A6     .word off_A6C5_1A
- D 0 - I - 0x0044C6 01:84B6: E5 A6     .word off_A6E5_1B
- D 0 - I - 0x0044C8 01:84B8: 05 A7     .word off_A705_1C
- D 0 - I - 0x0044CA 01:84BA: CE 9A     .word off_9ACE_1D
off_84BC_02:
- D 0 - I - 0x0044CC 01:84BC: 24 86     .word off_8624_00
- D 0 - I - 0x0044CE 01:84BE: 24 86     .word off_8624_01
- D 0 - I - 0x0044D0 01:84C0: 44 86     .word off_8644_02
- D 0 - I - 0x0044D2 01:84C2: B9 8F     .word off_8FB9_03
- D 0 - I - 0x0044D4 01:84C4: 93 AD     .word off_AD93_04
- D 0 - I - 0x0044D6 01:84C6: 86 8A     .word off_8A86_05
- D 0 - I - 0x0044D8 01:84C8: 64 8A     .word off_8A64_06
- D 0 - I - 0x0044DA 01:84CA: 85 8A     .word off_8A85_07
- D 0 - I - 0x0044DC 01:84CC: 81 93     .word off_9381_08
- D 0 - I - 0x0044DE 01:84CE: AA 93     .word off_93AA_09
- D 0 - I - 0x0044E0 01:84D0: 65 A7     .word off_A765_0A
- D 0 - I - 0x0044E2 01:84D2: B3 A7     .word off_A7B3_0B
- D 0 - I - 0x0044E4 01:84D4: 06 A8     .word off_A806_0C
- D 0 - I - 0x0044E6 01:84D6: 26 A8     .word off_A826_0D
- D 0 - I - 0x0044E8 01:84D8: 61 A8     .word off_A861_0E
- D 0 - I - 0x0044EA 01:84DA: 9C A8     .word off_A89C_0F
- D 0 - I - 0x0044EC 01:84DC: EB A8     .word off_A8EB_10
- D 0 - I - 0x0044EE 01:84DE: 0B A9     .word off_A90B_11
- D 0 - I - 0x0044F0 01:84E0: 2B A9     .word off_A92B_12
- D 0 - I - 0x0044F2 01:84E2: 4B A9     .word off_A94B_13
- D 0 - I - 0x0044F4 01:84E4: 2F 8D     .word off_8D2F_14
- D 0 - I - 0x0044F6 01:84E6: 5A 8D     .word off_8D5A_15
- D 0 - I - 0x0044F8 01:84E8: BF 95     .word off_95BF_16
- D 0 - I - 0x0044FA 01:84EA: FE 95     .word off_95FE_17
- D 0 - I - 0x0044FC 01:84EC: 81 A9     .word off_A981_18
- D 0 - I - 0x0044FE 01:84EE: BE A9     .word off_A9BE_19
- D 0 - I - 0x004500 01:84F0: DE A9     .word off_A9DE_1A
- D 0 - I - 0x004502 01:84F2: FE A9     .word off_A9FE_1B
- D 0 - I - 0x004504 01:84F4: 34 AA     .word off_AA34_1C
- D 0 - I - 0x004506 01:84F6: 2F 8F     .word off_8F2F_1D
off_84F8_03:
- - - - - - 0x004508 01:84F8: 24 86     .word off_8624_00
- - - - - - 0x00450A 01:84FA: 24 86     .word off_8624_01
- - - - - - 0x00450C 01:84FC: 44 86     .word off_8644_02
- - - - - - 0x00450E 01:84FE: A5 8F     .word off_8FA5_03
- D 0 - I - 0x004510 01:8500: CE 95     .word off_95CE_04
- D 0 - I - 0x004512 01:8502: 6E A5     .word off_A56E_05
- D 0 - I - 0x004514 01:8504: 05 90     .word off_9005_06
- D 0 - I - 0x004516 01:8506: 25 90     .word off_9025_07
- D 0 - I - 0x004518 01:8508: FD 96     .word off_96FD_08
- D 0 - I - 0x00451A 01:850A: 3F A0     .word off_A03F_09
- D 0 - I - 0x00451C 01:850C: CD 8D     .word off_8DCD_0A
- D 0 - I - 0x00451E 01:850E: 53 AB     .word off_AB53_0B
- D 0 - I - 0x004520 01:8510: 92 AB     .word off_AB92_0C
- D 0 - I - 0x004522 01:8512: 94 AA     .word off_AA94_0D
- D 0 - I - 0x004524 01:8514: B4 AA     .word off_AAB4_0E
- D 0 - I - 0x004526 01:8516: 68 87     .word off_8768_0F
- D 0 - I - 0x004528 01:8518: D4 AA     .word off_AAD4_10
- D 0 - I - 0x00452A 01:851A: 59 B0     .word off_B059_11
- D 0 - I - 0x00452C 01:851C: A4 87     .word off_87A4_12
- D 0 - I - 0x00452E 01:851E: AD 90     .word off_90AD_13
- D 0 - I - 0x004530 01:8520: E5 90     .word off_90E5_14
- D 0 - I - 0x004532 01:8522: 1A 91     .word off_911A_15
- D 0 - I - 0x004534 01:8524: 3A 91     .word off_913A_16
- D 0 - I - 0x004536 01:8526: 5A 91     .word off_915A_17
- D 0 - I - 0x004538 01:8528: 8F 91     .word off_918F_18
- D 0 - I - 0x00453A 01:852A: C8 91     .word off_91C8_19
- D 0 - I - 0x00453C 01:852C: E8 91     .word off_91E8_1A
- D 0 - I - 0x00453E 01:852E: 08 92     .word off_9208_1B
- D 0 - I - 0x004540 01:8530: 28 92     .word off_9228_1C
- D 0 - I - 0x004542 01:8532: 48 92     .word off_9248_1D
off_8534_04:
- D 0 - I - 0x004544 01:8534: 21 A3     .word off_A321_00
- D 0 - I - 0x004546 01:8536: D3 9C     .word off_9CD3_01
- D 0 - I - 0x004548 01:8538: 04 95     .word off_9504_02
- D 0 - I - 0x00454A 01:853A: 34 AB     .word off_AB34_03
- D 0 - I - 0x00454C 01:853C: 3B 8C     .word off_8C3B_04
- D 0 - I - 0x00454E 01:853E: 73 AB     .word off_AB73_05
- D 0 - I - 0x004550 01:8540: C9 AB     .word off_ABC9_06
- D 0 - I - 0x004552 01:8542: 4B 9C     .word off_9C4B_07
- D 0 - I - 0x004554 01:8544: 08 AC     .word off_AC08_08
- D 0 - I - 0x004556 01:8546: A8 91     .word off_91A8_09
- D 0 - I - 0x004558 01:8548: DD 96     .word off_96DD_0A
- D 0 - I - 0x00455A 01:854A: 46 AC     .word off_AC46_0B
- D 0 - I - 0x00455C 01:854C: 66 AC     .word off_AC66_0C
- D 0 - I - 0x00455E 01:854E: 86 AC     .word off_AC86_0D
- D 0 - I - 0x004560 01:8550: C2 AC     .word off_ACC2_0E
- D 0 - I - 0x004562 01:8552: 93 A7     .word off_A793_0F
- - - - - - 0x004564 01:8554: 35 99     .word off_9935_10
- - - - - - 0x004566 01:8556: 35 99     .word off_9935_11
- - - - - - 0x004568 01:8558: 35 99     .word off_9935_12
- - - - - - 0x00456A 01:855A: 35 99     .word off_9935_13
- - - - - - 0x00456C 01:855C: 35 99     .word off_9935_14
- - - - - - 0x00456E 01:855E: 35 99     .word off_9935_15
- - - - - - 0x004570 01:8560: 35 99     .word off_9935_16
- - - - - - 0x004572 01:8562: 35 99     .word off_9935_17
- - - - - - 0x004574 01:8564: 35 99     .word off_9935_18
- - - - - - 0x004576 01:8566: 35 99     .word off_9935_19
- - - - - - 0x004578 01:8568: 35 99     .word off_9935_1A
- - - - - - 0x00457A 01:856A: 35 99     .word off_9935_1B
- - - - - - 0x00457C 01:856C: 35 99     .word off_9935_1C
- - - - - - 0x00457E 01:856E: 35 99     .word off_9935_1D
off_8570_05:
- D 0 - I - 0x004580 01:8570: 22 AD     .word off_AD22_00
- D 0 - I - 0x004582 01:8572: 80 86     .word off_8680_01
- D 0 - I - 0x004584 01:8574: BC 86     .word off_86BC_02
- D 0 - I - 0x004586 01:8576: 42 AD     .word off_AD42_03
- D 0 - I - 0x004588 01:8578: 38 8B     .word off_8B38_04
- D 0 - I - 0x00458A 01:857A: 62 AD     .word off_AD62_05
- D 0 - I - 0x00458C 01:857C: ED 8B     .word off_8BED_06
- D 0 - I - 0x00458E 01:857E: EF AE     .word off_AEEF_07
- D 0 - I - 0x004590 01:8580: 70 9E     .word off_9E70_08
- D 0 - I - 0x004592 01:8582: 14 AA     .word off_AA14_09
- D 0 - I - 0x004594 01:8584: 92 9A     .word off_9A92_0A
- D 0 - I - 0x004596 01:8586: 87 8A     .word off_8A87_0B
- D 0 - I - 0x004598 01:8588: D1 94     .word off_94D1_0C
- D 0 - I - 0x00459A 01:858A: D4 98     .word off_98D4_0D
- D 0 - I - 0x00459C 01:858C: 72 8D     .word off_8D72_0E
- D 0 - I - 0x00459E 01:858E: E6 8C     .word off_8CE6_0F
- D 0 - I - 0x0045A0 01:8590: 35 99     .word off_9935_10
- D 0 - I - 0x0045A2 01:8592: 35 99     .word off_9935_11
- D 0 - I - 0x0045A4 01:8594: 35 99     .word off_9935_12
- D 0 - I - 0x0045A6 01:8596: 35 99     .word off_9935_13
- D 0 - I - 0x0045A8 01:8598: 35 99     .word off_9935_14
- D 0 - I - 0x0045AA 01:859A: 35 99     .word off_9935_15
- D 0 - I - 0x0045AC 01:859C: 35 99     .word off_9935_16
- D 0 - I - 0x0045AE 01:859E: 35 99     .word off_9935_17
- - - - - - 0x0045B0 01:85A0: 35 99     .word off_9935_18
- - - - - - 0x0045B2 01:85A2: 35 99     .word off_9935_19
- - - - - - 0x0045B4 01:85A4: 35 99     .word off_9935_1A
- - - - - - 0x0045B6 01:85A6: 35 99     .word off_9935_1B
- - - - - - 0x0045B8 01:85A8: 35 99     .word off_9935_1C
- - - - - - 0x0045BA 01:85AA: 35 99     .word off_9935_1D
off_85AC_06:
- D 0 - I - 0x0045BC 01:85AC: AD 9F     .word off_9FAD_00
- D 0 - I - 0x0045BE 01:85AE: D3 AD     .word off_ADD3_01
- D 0 - I - 0x0045C0 01:85B0: F3 AD     .word off_ADF3_02
- D 0 - I - 0x0045C2 01:85B2: 13 AE     .word off_AE13_03
- D 0 - I - 0x0045C4 01:85B4: 33 AE     .word off_AE33_04
- D 0 - I - 0x0045C6 01:85B6: 94 AE     .word off_AE94_05
- D 0 - I - 0x0045C8 01:85B8: D2 AE     .word off_AED2_06
- D 0 - I - 0x0045CA 01:85BA: 0F AF     .word off_AF0F_07
- D 0 - I - 0x0045CC 01:85BC: 4E AF     .word off_AF4E_08
- D 0 - I - 0x0045CE 01:85BE: 6E AF     .word off_AF6E_09
- D 0 - I - 0x0045D0 01:85C0: C6 9B     .word off_9BC6_0A
- D 0 - I - 0x0045D2 01:85C2: F1 9B     .word off_9BF1_0B
- D 0 - I - 0x0045D4 01:85C4: D0 94     .word off_94D0_0C
- D 0 - I - 0x0045D6 01:85C6: D4 98     .word off_98D4_0D
- D 0 - I - 0x0045D8 01:85C8: 34 9C     .word off_9C34_0E
- D 0 - I - 0x0045DA 01:85CA: 15 99     .word off_9915_0F
- D 0 - I - 0x0045DC 01:85CC: 35 99     .word off_9935_10
- D 0 - I - 0x0045DE 01:85CE: 35 99     .word off_9935_11
- - - - - - 0x0045E0 01:85D0: 35 99     .word off_9935_12
- - - - - - 0x0045E2 01:85D2: 35 99     .word off_9935_13
- - - - - - 0x0045E4 01:85D4: 35 99     .word off_9935_14
- - - - - - 0x0045E6 01:85D6: 35 99     .word off_9935_15
- - - - - - 0x0045E8 01:85D8: 35 99     .word off_9935_16
- - - - - - 0x0045EA 01:85DA: 35 99     .word off_9935_17
- - - - - - 0x0045EC 01:85DC: 35 99     .word off_9935_18
- - - - - - 0x0045EE 01:85DE: 35 99     .word off_9935_19
- - - - - - 0x0045F0 01:85E0: 35 99     .word off_9935_1A
- - - - - - 0x0045F2 01:85E2: 35 99     .word off_9935_1B
- - - - - - 0x0045F4 01:85E4: 35 99     .word off_9935_1C
- - - - - - 0x0045F6 01:85E6: 35 99     .word off_9935_1D
off_85E8_07:
- D 0 - I - 0x0045F8 01:85E8: 88 9C     .word off_9C88_00
- D 0 - I - 0x0045FA 01:85EA: C3 9C     .word off_9CC3_01
- D 0 - I - 0x0045FC 01:85EC: CE AF     .word off_AFCE_02
- D 0 - I - 0x0045FE 01:85EE: 05 B0     .word off_B005_03
- D 0 - I - 0x004600 01:85F0: 51 AE     .word off_AE51_04
- D 0 - I - 0x004602 01:85F2: F7 9D     .word off_9DF7_05
- D 0 - I - 0x004604 01:85F4: 26 AC     .word off_AC26_06
- D 0 - I - 0x004606 01:85F6: 7C A8     .word off_A87C_07
- D 0 - I - 0x004608 01:85F8: 25 B0     .word off_B025_08
- D 0 - I - 0x00460A 01:85FA: 2A 8C     .word off_8C2A_09
- D 0 - I - 0x00460C 01:85FC: 67 94     .word off_9467_0A
- D 0 - I - 0x00460E 01:85FE: 9E A9     .word off_A99E_0B
- D 0 - I - 0x004610 01:8600: BA 9D     .word off_9DBA_0C
- D 0 - I - 0x004612 01:8602: A2 AC     .word off_ACA2_0D
- D 0 - I - 0x004614 01:8604: DD 8C     .word off_8CDD_0E
- D 0 - I - 0x004616 01:8606: 7A 8D     .word off_8D7A_0F
- - - - - - 0x004618 01:8608: 35 99     .word off_9935_10
- - - - - - 0x00461A 01:860A: 35 99     .word off_9935_11
- - - - - - 0x00461C 01:860C: 35 99     .word off_9935_12
- - - - - - 0x00461E 01:860E: 35 99     .word off_9935_13
- - - - - - 0x004620 01:8610: 35 99     .word off_9935_14
- - - - - - 0x004622 01:8612: 35 99     .word off_9935_15
- - - - - - 0x004624 01:8614: 35 99     .word off_9935_16
- - - - - - 0x004626 01:8616: 35 99     .word off_9935_17
- - - - - - 0x004628 01:8618: 35 99     .word off_9935_18
- - - - - - 0x00462A 01:861A: 35 99     .word off_9935_19
- - - - - - 0x00462C 01:861C: 35 99     .word off_9935_1A
- - - - - - 0x00462E 01:861E: 35 99     .word off_9935_1B
- - - - - - 0x004630 01:8620: 35 99     .word off_9935_1C
- - - - - - 0x004632 01:8622: 35 99     .word off_9935_1D
off_8624_00:
off_8624_01:
- D 0 - I - 0x004634 01:8624: 01        .byte $01   ; 
- D 0 - I - 0x004635 01:8625: 01        .byte $01   ; 
- D 0 - I - 0x004636 01:8626: 01        .byte $01   ; 
- D 0 - I - 0x004637 01:8627: 01        .byte $01   ; 
- D 0 - I - 0x004638 01:8628: 01        .byte $01   ; 
- D 0 - I - 0x004639 01:8629: 01        .byte $01   ; 
- D 0 - I - 0x00463A 01:862A: 01        .byte $01   ; 
- D 0 - I - 0x00463B 01:862B: 01        .byte $01   ; 
- D 0 - I - 0x00463C 01:862C: 01        .byte $01   ; 
- D 0 - I - 0x00463D 01:862D: 01        .byte $01   ; 
- D 0 - I - 0x00463E 01:862E: 01        .byte $01   ; 
- D 0 - I - 0x00463F 01:862F: 01        .byte $01   ; 
- D 0 - I - 0x004640 01:8630: 01        .byte $01   ; 
- D 0 - I - 0x004641 01:8631: 01        .byte $01   ; 
- D 0 - I - 0x004642 01:8632: 01        .byte $01   ; 
- D 0 - I - 0x004643 01:8633: 01        .byte $01   ; 
- D 0 - I - 0x004644 01:8634: 01        .byte $01   ; 
- D 0 - I - 0x004645 01:8635: 01        .byte $01   ; 
- D 0 - I - 0x004646 01:8636: 01        .byte $01   ; 
- D 0 - I - 0x004647 01:8637: 01        .byte $01   ; 
- D 0 - I - 0x004648 01:8638: 01        .byte $01   ; 
- D 0 - I - 0x004649 01:8639: 01        .byte $01   ; 
- D 0 - I - 0x00464A 01:863A: 01        .byte $01   ; 
- D 0 - I - 0x00464B 01:863B: 01        .byte $01   ; 
- D 0 - I - 0x00464C 01:863C: 01        .byte $01   ; 
- D 0 - I - 0x00464D 01:863D: 01        .byte $01   ; 
- D 0 - I - 0x00464E 01:863E: 01        .byte $01   ; 
- D 0 - I - 0x00464F 01:863F: 01        .byte $01   ; 
- D 0 - I - 0x004650 01:8640: 01        .byte $01   ; 
- D 0 - I - 0x004651 01:8641: 01        .byte $01   ; 
- D 0 - I - 0x004652 01:8642: 01        .byte $01   ; 
- D 0 - I - 0x004653 01:8643: 01        .byte $01   ; 
off_8644_02:
- D 0 - I - 0x004654 01:8644: 05        .byte $05   ; 
- D 0 - I - 0x004655 01:8645: 05        .byte $05   ; 
- D 0 - I - 0x004656 01:8646: 05        .byte $05   ; 
- D 0 - I - 0x004657 01:8647: 05        .byte $05   ; 
- D 0 - I - 0x004658 01:8648: 05        .byte $05   ; 
- D 0 - I - 0x004659 01:8649: 05        .byte $05   ; 
- D 0 - I - 0x00465A 01:864A: 05        .byte $05   ; 
- D 0 - I - 0x00465B 01:864B: 05        .byte $05   ; 
- D 0 - I - 0x00465C 01:864C: 05        .byte $05   ; 
- D 0 - I - 0x00465D 01:864D: 05        .byte $05   ; 
- D 0 - I - 0x00465E 01:864E: 05        .byte $05   ; 
- D 0 - I - 0x00465F 01:864F: 05        .byte $05   ; 
- D 0 - I - 0x004660 01:8650: 05        .byte $05   ; 
- D 0 - I - 0x004661 01:8651: 05        .byte $05   ; 
- D 0 - I - 0x004662 01:8652: 05        .byte $05   ; 
- D 0 - I - 0x004663 01:8653: 05        .byte $05   ; 
- D 0 - I - 0x004664 01:8654: 05        .byte $05   ; 
- D 0 - I - 0x004665 01:8655: 05        .byte $05   ; 
- D 0 - I - 0x004666 01:8656: 05        .byte $05   ; 
- D 0 - I - 0x004667 01:8657: 05        .byte $05   ; 
- D 0 - I - 0x004668 01:8658: 05        .byte $05   ; 
- D 0 - I - 0x004669 01:8659: 05        .byte $05   ; 
- D 0 - I - 0x00466A 01:865A: 05        .byte $05   ; 
- D 0 - I - 0x00466B 01:865B: 05        .byte $05   ; 
- D 0 - I - 0x00466C 01:865C: 05        .byte $05   ; 
- D 0 - I - 0x00466D 01:865D: 05        .byte $05   ; 
- D 0 - I - 0x00466E 01:865E: 05        .byte $05   ; 
- D 0 - I - 0x00466F 01:865F: 05        .byte $05   ; 
- D 0 - I - 0x004670 01:8660: 05        .byte $05   ; 
- D 0 - I - 0x004671 01:8661: 05        .byte $05   ; 
- D 0 - I - 0x004672 01:8662: 05        .byte $05   ; 
- D 0 - I - 0x004673 01:8663: 05        .byte $05   ; 
off_8664_09:
- - - - - - 0x004674 01:8664: 00        .byte $00   ; 
- - - - - - 0x004675 01:8665: 00        .byte $00   ; 
- - - - - - 0x004676 01:8666: 00        .byte $00   ; 
- - - - - - 0x004677 01:8667: 00        .byte $00   ; 
- - - - - - 0x004678 01:8668: 00        .byte $00   ; 
- - - - - - 0x004679 01:8669: 00        .byte $00   ; 
- - - - - - 0x00467A 01:866A: 00        .byte $00   ; 
- - - - - - 0x00467B 01:866B: 00        .byte $00   ; 
- - - - - - 0x00467C 01:866C: 00        .byte $00   ; 
- D 0 - I - 0x00467D 01:866D: 00        .byte $00   ; 
- D 0 - I - 0x00467E 01:866E: 00        .byte $00   ; 
- D 0 - I - 0x00467F 01:866F: 00        .byte $00   ; 
- D 0 - I - 0x004680 01:8670: 00        .byte $00   ; 
- D 0 - I - 0x004681 01:8671: 00        .byte $00   ; 
- D 0 - I - 0x004682 01:8672: 00        .byte $00   ; 
- D 0 - I - 0x004683 01:8673: 00        .byte $00   ; 
- D 0 - I - 0x004684 01:8674: 00        .byte $00   ; 
- D 0 - I - 0x004685 01:8675: 00        .byte $00   ; 
- D 0 - I - 0x004686 01:8676: 00        .byte $00   ; 
- D 0 - I - 0x004687 01:8677: 21        .byte $21   ; 
- D 0 - I - 0x004688 01:8678: 00        .byte $00   ; 
- D 0 - I - 0x004689 01:8679: 00        .byte $00   ; 
- D 0 - I - 0x00468A 01:867A: 00        .byte $00   ; 
- D 0 - I - 0x00468B 01:867B: 00        .byte $00   ; 
- D 0 - I - 0x00468C 01:867C: 00        .byte $00   ; 
- D 0 - I - 0x00468D 01:867D: 00        .byte $00   ; 
- D 0 - I - 0x00468E 01:867E: 00        .byte $00   ; 
- D 0 - I - 0x00468F 01:867F: 00        .byte $00   ; 
off_8680_01:
- D 0 - I - 0x004690 01:8680: 00        .byte $00   ; 
- D 0 - I - 0x004691 01:8681: 48        .byte $48   ; 
- D 0 - I - 0x004692 01:8682: 60        .byte $60   ; 
- D 0 - I - 0x004693 01:8683: 6F        .byte $6F   ; 
- D 0 - I - 0x004694 01:8684: 6C        .byte $6C   ; 
- D 0 - I - 0x004695 01:8685: 66        .byte $66   ; 
- D 0 - I - 0x004696 01:8686: 00        .byte $00   ; 
- D 0 - I - 0x004697 01:8687: 00        .byte $00   ; 
- D 0 - I - 0x004698 01:8688: 00        .byte $00   ; 
- D 0 - I - 0x004699 01:8689: 00        .byte $00   ; 
- D 0 - I - 0x00469A 01:868A: 00        .byte $00   ; 
- D 0 - I - 0x00469B 01:868B: 00        .byte $00   ; 
- D 0 - I - 0x00469C 01:868C: 00        .byte $00   ; 
- D 0 - I - 0x00469D 01:868D: 48        .byte $48   ; 
- D 0 - I - 0x00469E 01:868E: 60        .byte $60   ; 
- D 0 - I - 0x00469F 01:868F: 6C        .byte $6C   ; 
- D 0 - I - 0x0046A0 01:8690: 6C        .byte $6C   ; 
- D 0 - I - 0x0046A1 01:8691: 6C        .byte $6C   ; 
- D 0 - I - 0x0046A2 01:8692: 6C        .byte $6C   ; 
- D 0 - I - 0x0046A3 01:8693: 6E        .byte $6E   ; 
- D 0 - I - 0x0046A4 01:8694: 6C        .byte $6C   ; 
- D 0 - I - 0x0046A5 01:8695: 68        .byte $68   ; 
- D 0 - I - 0x0046A6 01:8696: 00        .byte $00   ; 
- D 0 - I - 0x0046A7 01:8697: 00        .byte $00   ; 
- D 0 - I - 0x0046A8 01:8698: 00        .byte $00   ; 
- D 0 - I - 0x0046A9 01:8699: 00        .byte $00   ; 
- D 0 - I - 0x0046AA 01:869A: 00        .byte $00   ; 
- D 0 - I - 0x0046AB 01:869B: 00        .byte $00   ; 
- D 0 - I - 0x0046AC 01:869C: 00        .byte $00   ; 
- D 0 - I - 0x0046AD 01:869D: 00        .byte $00   ; 
- D 0 - I - 0x0046AE 01:869E: 00        .byte $00   ; 
- D 0 - I - 0x0046AF 01:869F: 1B        .byte $1B   ; 
off_86A0_0A:
- - - - - - 0x0046B0 01:86A0: 00        .byte $00   ; 
- - - - - - 0x0046B1 01:86A1: 00        .byte $00   ; 
- - - - - - 0x0046B2 01:86A2: 00        .byte $00   ; 
- - - - - - 0x0046B3 01:86A3: 00        .byte $00   ; 
- - - - - - 0x0046B4 01:86A4: 00        .byte $00   ; 
- - - - - - 0x0046B5 01:86A5: 00        .byte $00   ; 
- - - - - - 0x0046B6 01:86A6: 00        .byte $00   ; 
- - - - - - 0x0046B7 01:86A7: 00        .byte $00   ; 
- - - - - - 0x0046B8 01:86A8: 00        .byte $00   ; 
- D 0 - I - 0x0046B9 01:86A9: 00        .byte $00   ; 
- D 0 - I - 0x0046BA 01:86AA: 00        .byte $00   ; 
- D 0 - I - 0x0046BB 01:86AB: 00        .byte $00   ; 
- D 0 - I - 0x0046BC 01:86AC: 00        .byte $00   ; 
- D 0 - I - 0x0046BD 01:86AD: 00        .byte $00   ; 
- D 0 - I - 0x0046BE 01:86AE: 00        .byte $00   ; 
- D 0 - I - 0x0046BF 01:86AF: 00        .byte $00   ; 
- D 0 - I - 0x0046C0 01:86B0: 00        .byte $00   ; 
- D 0 - I - 0x0046C1 01:86B1: 00        .byte $00   ; 
- D 0 - I - 0x0046C2 01:86B2: 27        .byte $27   ; 
- D 0 - I - 0x0046C3 01:86B3: 1C        .byte $1C   ; 
- D 0 - I - 0x0046C4 01:86B4: 00        .byte $00   ; 
- D 0 - I - 0x0046C5 01:86B5: 00        .byte $00   ; 
- D 0 - I - 0x0046C6 01:86B6: 00        .byte $00   ; 
- D 0 - I - 0x0046C7 01:86B7: 00        .byte $00   ; 
- D 0 - I - 0x0046C8 01:86B8: 14        .byte $14   ; 
- D 0 - I - 0x0046C9 01:86B9: 00        .byte $00   ; 
- D 0 - I - 0x0046CA 01:86BA: 40        .byte $40   ; 
- D 0 - I - 0x0046CB 01:86BB: 54        .byte $54   ; 
off_86BC_02:
- D 0 - I - 0x0046CC 01:86BC: 54        .byte $54   ; 
- D 0 - I - 0x0046CD 01:86BD: 54        .byte $54   ; 
- D 0 - I - 0x0046CE 01:86BE: 7E        .byte $7E   ; 
- D 0 - I - 0x0046CF 01:86BF: 6C        .byte $6C   ; 
- D 0 - I - 0x0046D0 01:86C0: 6E        .byte $6E   ; 
- D 0 - I - 0x0046D1 01:86C1: 66        .byte $66   ; 
- D 0 - I - 0x0046D2 01:86C2: 15        .byte $15   ; 
- D 0 - I - 0x0046D3 01:86C3: 00        .byte $00   ; 
- D 0 - I - 0x0046D4 01:86C4: 00        .byte $00   ; 
- D 0 - I - 0x0046D5 01:86C5: 00        .byte $00   ; 
- D 0 - I - 0x0046D6 01:86C6: 00        .byte $00   ; 
- D 0 - I - 0x0046D7 01:86C7: 00        .byte $00   ; 
- D 0 - I - 0x0046D8 01:86C8: 40        .byte $40   ; 
- D 0 - I - 0x0046D9 01:86C9: 54        .byte $54   ; 
- D 0 - I - 0x0046DA 01:86CA: 7E        .byte $7E   ; 
- D 0 - I - 0x0046DB 01:86CB: 6C        .byte $6C   ; 
- D 0 - I - 0x0046DC 01:86CC: 6C        .byte $6C   ; 
- D 0 - I - 0x0046DD 01:86CD: 6C        .byte $6C   ; 
- D 0 - I - 0x0046DE 01:86CE: 6C        .byte $6C   ; 
- D 0 - I - 0x0046DF 01:86CF: 6C        .byte $6C   ; 
- D 0 - I - 0x0046E0 01:86D0: 6C        .byte $6C   ; 
- D 0 - I - 0x0046E1 01:86D1: 69        .byte $69   ; 
- D 0 - I - 0x0046E2 01:86D2: 00        .byte $00   ; 
- D 0 - I - 0x0046E3 01:86D3: 00        .byte $00   ; 
- D 0 - I - 0x0046E4 01:86D4: 14        .byte $14   ; 
- D 0 - I - 0x0046E5 01:86D5: 00        .byte $00   ; 
- D 0 - I - 0x0046E6 01:86D6: 00        .byte $00   ; 
- D 0 - I - 0x0046E7 01:86D7: 14        .byte $14   ; 
- D 0 - I - 0x0046E8 01:86D8: 00        .byte $00   ; 
- D 0 - I - 0x0046E9 01:86D9: 00        .byte $00   ; 
- D 0 - I - 0x0046EA 01:86DA: 00        .byte $00   ; 
- D 0 - I - 0x0046EB 01:86DB: 1B        .byte $1B   ; 
off_86DC_0E:
- - - - - - 0x0046EC 01:86DC: 00        .byte $00   ; 
- - - - - - 0x0046ED 01:86DD: 00        .byte $00   ; 
- - - - - - 0x0046EE 01:86DE: 00        .byte $00   ; 
- - - - - - 0x0046EF 01:86DF: 00        .byte $00   ; 
- - - - - - 0x0046F0 01:86E0: 00        .byte $00   ; 
- - - - - - 0x0046F1 01:86E1: 00        .byte $00   ; 
- - - - - - 0x0046F2 01:86E2: 00        .byte $00   ; 
- - - - - - 0x0046F3 01:86E3: 00        .byte $00   ; 
- - - - - - 0x0046F4 01:86E4: 00        .byte $00   ; 
- D 0 - I - 0x0046F5 01:86E5: 14        .byte $14   ; 
- D 0 - I - 0x0046F6 01:86E6: 00        .byte $00   ; 
- D 0 - I - 0x0046F7 01:86E7: 00        .byte $00   ; 
- D 0 - I - 0x0046F8 01:86E8: 00        .byte $00   ; 
- D 0 - I - 0x0046F9 01:86E9: B0        .byte $B0   ; 
- D 0 - I - 0x0046FA 01:86EA: B1        .byte $B1   ; 
- D 0 - I - 0x0046FB 01:86EB: B2        .byte $B2   ; 
- D 0 - I - 0x0046FC 01:86EC: B3        .byte $B3   ; 
- D 0 - I - 0x0046FD 01:86ED: B4        .byte $B4   ; 
- D 0 - I - 0x0046FE 01:86EE: 24        .byte $24   ; 
- D 0 - I - 0x0046FF 01:86EF: 00        .byte $00   ; 
- D 0 - I - 0x004700 01:86F0: 00        .byte $00   ; 
- D 0 - I - 0x004701 01:86F1: 15        .byte $15   ; 
- D 0 - I - 0x004702 01:86F2: 00        .byte $00   ; 
- D 0 - I - 0x004703 01:86F3: 00        .byte $00   ; 
- D 0 - I - 0x004704 01:86F4: 00        .byte $00   ; 
- D 0 - I - 0x004705 01:86F5: 00        .byte $00   ; 
- D 0 - I - 0x004706 01:86F6: 00        .byte $00   ; 
- D 0 - I - 0x004707 01:86F7: 4C        .byte $4C   ; 
- D 0 - I - 0x004708 01:86F8: 60        .byte $60   ; 
- D 0 - I - 0x004709 01:86F9: 6C        .byte $6C   ; 
- D 0 - I - 0x00470A 01:86FA: EE        .byte $EE   ; 
off_86FB_0A:
- D 0 - I - 0x00470B 01:86FB: 6E        .byte $6E   ; 
- D 0 - I - 0x00470C 01:86FC: 7C        .byte $7C   ; 
- D 0 - I - 0x00470D 01:86FD: 54        .byte $54   ; 
- D 0 - I - 0x00470E 01:86FE: 54        .byte $54   ; 
- D 0 - I - 0x00470F 01:86FF: 54        .byte $54   ; 
- D 0 - I - 0x004710 01:8700: 42        .byte $42   ; 
- D 0 - I - 0x004711 01:8701: 00        .byte $00   ; 
- D 0 - I - 0x004712 01:8702: 00        .byte $00   ; 
- D 0 - I - 0x004713 01:8703: 00        .byte $00   ; 
- D 0 - I - 0x004714 01:8704: 00        .byte $00   ; 
- D 0 - I - 0x004715 01:8705: 00        .byte $00   ; 
- D 0 - I - 0x004716 01:8706: 00        .byte $00   ; 
- D 0 - I - 0x004717 01:8707: 00        .byte $00   ; 
- D 0 - I - 0x004718 01:8708: 00        .byte $00   ; 
- D 0 - I - 0x004719 01:8709: 14        .byte $14   ; 
- D 0 - I - 0x00471A 01:870A: 00        .byte $00   ; 
- D 0 - I - 0x00471B 01:870B: 00        .byte $00   ; 
- D 0 - I - 0x00471C 01:870C: 00        .byte $00   ; 
- D 0 - I - 0x00471D 01:870D: 00        .byte $00   ; 
- D 0 - I - 0x00471E 01:870E: 00        .byte $00   ; 
- D 0 - I - 0x00471F 01:870F: 00        .byte $00   ; 
- D 0 - I - 0x004720 01:8710: 00        .byte $00   ; 
- D 0 - I - 0x004721 01:8711: 00        .byte $00   ; 
- D 0 - I - 0x004722 01:8712: 00        .byte $00   ; 
- D 0 - I - 0x004723 01:8713: 00        .byte $00   ; 
- D 0 - I - 0x004724 01:8714: 00        .byte $00   ; 
- D 0 - I - 0x004725 01:8715: 00        .byte $00   ; 
- D 0 - I - 0x004726 01:8716: 00        .byte $00   ; 
- D 0 - I - 0x004727 01:8717: 00        .byte $00   ; 
- D 0 - I - 0x004728 01:8718: 00        .byte $00   ; 
- D 0 - I - 0x004729 01:8719: 00        .byte $00   ; 
- D 0 - I - 0x00472A 01:871A: 1B        .byte $1B   ; 
off_871B_10:
- - - - - - 0x00472B 01:871B: 04        .byte $04   ; 
- - - - - - 0x00472C 01:871C: 04        .byte $04   ; 
- - - - - - 0x00472D 01:871D: 04        .byte $04   ; 
- - - - - - 0x00472E 01:871E: 04        .byte $04   ; 
- - - - - - 0x00472F 01:871F: 04        .byte $04   ; 
- - - - - - 0x004730 01:8720: 04        .byte $04   ; 
- - - - - - 0x004731 01:8721: 04        .byte $04   ; 
- - - - - - 0x004732 01:8722: 04        .byte $04   ; 
- - - - - - 0x004733 01:8723: 04        .byte $04   ; 
- D 0 - I - 0x004734 01:8724: 04        .byte $04   ; 
- D 0 - I - 0x004735 01:8725: 04        .byte $04   ; 
- D 0 - I - 0x004736 01:8726: 04        .byte $04   ; 
- D 0 - I - 0x004737 01:8727: 04        .byte $04   ; 
- D 0 - I - 0x004738 01:8728: D0        .byte $D0   ; 
- D 0 - I - 0x004739 01:8729: D1        .byte $D1   ; 
- D 0 - I - 0x00473A 01:872A: D2        .byte $D2   ; 
- D 0 - I - 0x00473B 01:872B: D3        .byte $D3   ; 
- D 0 - I - 0x00473C 01:872C: D4        .byte $D4   ; 
- D 0 - I - 0x00473D 01:872D: 32        .byte $32   ; 
- D 0 - I - 0x00473E 01:872E: 04        .byte $04   ; 
- D 0 - I - 0x00473F 01:872F: 04        .byte $04   ; 
- D 0 - I - 0x004740 01:8730: 04        .byte $04   ; 
- D 0 - I - 0x004741 01:8731: 04        .byte $04   ; 
- D 0 - I - 0x004742 01:8732: 04        .byte $04   ; 
- D 0 - I - 0x004743 01:8733: 16        .byte $16   ; 
- D 0 - I - 0x004744 01:8734: 04        .byte $04   ; 
off_8735_05:
- D 0 - I - 0x004745 01:8735: 04        .byte $04   ; 
- D 0 - I - 0x004746 01:8736: 04        .byte $04   ; 
- D 0 - I - 0x004747 01:8737: 04        .byte $04   ; 
- D 0 - I - 0x004748 01:8738: 04        .byte $04   ; 
- D 0 - I - 0x004749 01:8739: 31        .byte $31   ; 
- D 0 - I - 0x00474A 01:873A: 04        .byte $04   ; 
- D 0 - I - 0x00474B 01:873B: 04        .byte $04   ; 
- D 0 - I - 0x00474C 01:873C: 17        .byte $17   ; 
- D 0 - I - 0x00474D 01:873D: 04        .byte $04   ; 
- D 0 - I - 0x00474E 01:873E: 04        .byte $04   ; 
- D 0 - I - 0x00474F 01:873F: 04        .byte $04   ; 
- D 0 - I - 0x004750 01:8740: 16        .byte $16   ; 
- D 0 - I - 0x004751 01:8741: 04        .byte $04   ; 
- D 0 - I - 0x004752 01:8742: 04        .byte $04   ; 
- D 0 - I - 0x004753 01:8743: 04        .byte $04   ; 
- D 0 - I - 0x004754 01:8744: 37        .byte $37   ; 
- D 0 - I - 0x004755 01:8745: 2C        .byte $2C   ; 
- D 0 - I - 0x004756 01:8746: 04        .byte $04   ; 
- D 0 - I - 0x004757 01:8747: 04        .byte $04   ; 
- D 0 - I - 0x004758 01:8748: 17        .byte $17   ; 
off_8749_0F:
- D 0 - I - 0x004759 01:8749: 04        .byte $04   ; 
- D 0 - I - 0x00475A 01:874A: 04        .byte $04   ; 
- D 0 - I - 0x00475B 01:874B: 16        .byte $16   ; 
- D 0 - I - 0x00475C 01:874C: 04        .byte $04   ; 
- - - - - - 0x00475D 01:874D: 04        .byte $04   ; 
- - - - - - 0x00475E 01:874E: 04        .byte $04   ; 
- - - - - - 0x00475F 01:874F: 04        .byte $04   ; 
- - - - - - 0x004760 01:8750: 04        .byte $04   ; 
- - - - - - 0x004761 01:8751: 04        .byte $04   ; 
- D 0 - I - 0x004762 01:8752: 04        .byte $04   ; 
- D 0 - I - 0x004763 01:8753: 04        .byte $04   ; 
- D 0 - I - 0x004764 01:8754: 04        .byte $04   ; 
- D 0 - I - 0x004765 01:8755: 04        .byte $04   ; 
- D 0 - I - 0x004766 01:8756: C0        .byte $C0   ; 
- D 0 - I - 0x004767 01:8757: C1        .byte $C1   ; 
- D 0 - I - 0x004768 01:8758: C2        .byte $C2   ; 
- D 0 - I - 0x004769 01:8759: C3        .byte $C3   ; 
- D 0 - I - 0x00476A 01:875A: C4        .byte $C4   ; 
- D 0 - I - 0x00476B 01:875B: 33        .byte $33   ; 
- D 0 - I - 0x00476C 01:875C: 04        .byte $04   ; 
- D 0 - I - 0x00476D 01:875D: 04        .byte $04   ; 
- D 0 - I - 0x00476E 01:875E: 04        .byte $04   ; 
- D 0 - I - 0x00476F 01:875F: 04        .byte $04   ; 
- D 0 - I - 0x004770 01:8760: 04        .byte $04   ; 
- D 0 - I - 0x004771 01:8761: 61        .byte $61   ; 
- D 0 - I - 0x004772 01:8762: 71        .byte $71   ; 
- D 0 - I - 0x004773 01:8763: 6D        .byte $6D   ; 
- D 0 - I - 0x004774 01:8764: 6D        .byte $6D   ; 
- D 0 - I - 0x004775 01:8765: 79        .byte $79   ; 
- D 0 - I - 0x004776 01:8766: 5B        .byte $5B   ; 
- D 0 - I - 0x004777 01:8767: E3        .byte $E3   ; 
off_8768_0F:
- D 0 - I - 0x004778 01:8768: 5B        .byte $5B   ; 
- D 0 - I - 0x004779 01:8769: E2        .byte $E2   ; 
- D 0 - I - 0x00477A 01:876A: 5B        .byte $5B   ; 
- D 0 - I - 0x00477B 01:876B: 7B        .byte $7B   ; 
- D 0 - I - 0x00477C 01:876C: 71        .byte $71   ; 
- D 0 - I - 0x00477D 01:876D: 6D        .byte $6D   ; 
- D 0 - I - 0x00477E 01:876E: 6A        .byte $6A   ; 
- D 0 - I - 0x00477F 01:876F: 04        .byte $04   ; 
- D 0 - I - 0x004780 01:8770: 04        .byte $04   ; 
- D 0 - I - 0x004781 01:8771: 04        .byte $04   ; 
- D 0 - I - 0x004782 01:8772: 04        .byte $04   ; 
- D 0 - I - 0x004783 01:8773: 04        .byte $04   ; 
- D 0 - I - 0x004784 01:8774: 04        .byte $04   ; 
- D 0 - I - 0x004785 01:8775: 34        .byte $34   ; 
- D 0 - I - 0x004786 01:8776: C0        .byte $C0   ; 
- D 0 - I - 0x004787 01:8777: C1        .byte $C1   ; 
- D 0 - I - 0x004788 01:8778: C2        .byte $C2   ; 
- D 0 - I - 0x004789 01:8779: C3        .byte $C3   ; 
- D 0 - I - 0x00478A 01:877A: C4        .byte $C4   ; 
- D 0 - I - 0x00478B 01:877B: 04        .byte $04   ; 
- D 0 - I - 0x00478C 01:877C: 04        .byte $04   ; 
- D 0 - I - 0x00478D 01:877D: 04        .byte $04   ; 
- D 0 - I - 0x00478E 01:877E: 17        .byte $17   ; 
- D 0 - I - 0x00478F 01:877F: 04        .byte $04   ; 
- - - - - - 0x004790 01:8780: 04        .byte $04   ; 
- - - - - - 0x004791 01:8781: 04        .byte $04   ; 
- - - - - - 0x004792 01:8782: 04        .byte $04   ; 
- - - - - - 0x004793 01:8783: 04        .byte $04   ; 
- - - - - - 0x004794 01:8784: 04        .byte $04   ; 
- - - - - - 0x004795 01:8785: 16        .byte $16   ; 
- - - - - - 0x004796 01:8786: 04        .byte $04   ; 
- - - - - - 0x004797 01:8787: 04        .byte $04   ; 
off_8788_11:
- - - - - - 0x004798 01:8788: 00        .byte $00   ; 
- - - - - - 0x004799 01:8789: 00        .byte $00   ; 
- - - - - - 0x00479A 01:878A: 00        .byte $00   ; 
- - - - - - 0x00479B 01:878B: 00        .byte $00   ; 
- - - - - - 0x00479C 01:878C: 00        .byte $00   ; 
- - - - - - 0x00479D 01:878D: 00        .byte $00   ; 
- - - - - - 0x00479E 01:878E: 00        .byte $00   ; 
- - - - - - 0x00479F 01:878F: 00        .byte $00   ; 
- - - - - - 0x0047A0 01:8790: 00        .byte $00   ; 
- D 0 - I - 0x0047A1 01:8791: 00        .byte $00   ; 
- D 0 - I - 0x0047A2 01:8792: 00        .byte $00   ; 
- D 0 - I - 0x0047A3 01:8793: 00        .byte $00   ; 
- D 0 - I - 0x0047A4 01:8794: 00        .byte $00   ; 
- D 0 - I - 0x0047A5 01:8795: 95        .byte $95   ; 
- D 0 - I - 0x0047A6 01:8796: 96        .byte $96   ; 
- D 0 - I - 0x0047A7 01:8797: 97        .byte $97   ; 
- D 0 - I - 0x0047A8 01:8798: 98        .byte $98   ; 
- D 0 - I - 0x0047A9 01:8799: B4        .byte $B4   ; 
- D 0 - I - 0x0047AA 01:879A: 21        .byte $21   ; 
- D 0 - I - 0x0047AB 01:879B: 00        .byte $00   ; 
- D 0 - I - 0x0047AC 01:879C: 00        .byte $00   ; 
- D 0 - I - 0x0047AD 01:879D: 00        .byte $00   ; 
- D 0 - I - 0x0047AE 01:879E: 00        .byte $00   ; 
- D 0 - I - 0x0047AF 01:879F: 00        .byte $00   ; 
- D 0 - I - 0x0047B0 01:87A0: 00        .byte $00   ; 
- D 0 - I - 0x0047B1 01:87A1: 00        .byte $00   ; 
- D 0 - I - 0x0047B2 01:87A2: 00        .byte $00   ; 
- D 0 - I - 0x0047B3 01:87A3: 00        .byte $00   ; 
off_87A4_12:
- D 0 - I - 0x0047B4 01:87A4: 00        .byte $00   ; 
- D 0 - I - 0x0047B5 01:87A5: 27        .byte $27   ; 
- D 0 - I - 0x0047B6 01:87A6: 1C        .byte $1C   ; 
- D 0 - I - 0x0047B7 01:87A7: 00        .byte $00   ; 
- D 0 - I - 0x0047B8 01:87A8: 00        .byte $00   ; 
- D 0 - I - 0x0047B9 01:87A9: 00        .byte $00   ; 
- D 0 - I - 0x0047BA 01:87AA: 00        .byte $00   ; 
- D 0 - I - 0x0047BB 01:87AB: 00        .byte $00   ; 
- D 0 - I - 0x0047BC 01:87AC: 84        .byte $84   ; 
- D 0 - I - 0x0047BD 01:87AD: 10        .byte $10   ; 
- D 0 - I - 0x0047BE 01:87AE: 10        .byte $10   ; 
- D 0 - I - 0x0047BF 01:87AF: 10        .byte $10   ; 
- D 0 - I - 0x0047C0 01:87B0: 10        .byte $10   ; 
- D 0 - I - 0x0047C1 01:87B1: 83        .byte $83   ; 
- D 0 - I - 0x0047C2 01:87B2: A5        .byte $A5   ; 
- D 0 - I - 0x0047C3 01:87B3: A6        .byte $A6   ; 
- D 0 - I - 0x0047C4 01:87B4: A7        .byte $A7   ; 
- D 0 - I - 0x0047C5 01:87B5: A7        .byte $A7   ; 
- D 0 - I - 0x0047C6 01:87B6: A8        .byte $A8   ; 
- D 0 - I - 0x0047C7 01:87B7: 00        .byte $00   ; 
- D 0 - I - 0x0047C8 01:87B8: 00        .byte $00   ; 
- D 0 - I - 0x0047C9 01:87B9: 00        .byte $00   ; 
- D 0 - I - 0x0047CA 01:87BA: 00        .byte $00   ; 
- D 0 - I - 0x0047CB 01:87BB: 00        .byte $00   ; 
- - - - - - 0x0047CC 01:87BC: 00        .byte $00   ; 
- - - - - - 0x0047CD 01:87BD: 00        .byte $00   ; 
- - - - - - 0x0047CE 01:87BE: 00        .byte $00   ; 
- - - - - - 0x0047CF 01:87BF: 00        .byte $00   ; 
- - - - - - 0x0047D0 01:87C0: 00        .byte $00   ; 
- - - - - - 0x0047D1 01:87C1: 00        .byte $00   ; 
- - - - - - 0x0047D2 01:87C2: 00        .byte $00   ; 
- - - - - - 0x0047D3 01:87C3: 00        .byte $00   ; 
off_87C4_13:
- - - - - - 0x0047D4 01:87C4: 04        .byte $04   ; 
- - - - - - 0x0047D5 01:87C5: 04        .byte $04   ; 
- - - - - - 0x0047D6 01:87C6: 04        .byte $04   ; 
- - - - - - 0x0047D7 01:87C7: 04        .byte $04   ; 
- - - - - - 0x0047D8 01:87C8: 04        .byte $04   ; 
- - - - - - 0x0047D9 01:87C9: 04        .byte $04   ; 
- - - - - - 0x0047DA 01:87CA: 04        .byte $04   ; 
- - - - - - 0x0047DB 01:87CB: 04        .byte $04   ; 
- - - - - - 0x0047DC 01:87CC: 04        .byte $04   ; 
- D 0 - I - 0x0047DD 01:87CD: 04        .byte $04   ; 
- D 0 - I - 0x0047DE 01:87CE: 16        .byte $16   ; 
- D 0 - I - 0x0047DF 01:87CF: 04        .byte $04   ; 
- D 0 - I - 0x0047E0 01:87D0: 04        .byte $04   ; 
- D 0 - I - 0x0047E1 01:87D1: B5        .byte $B5   ; 
- D 0 - I - 0x0047E2 01:87D2: B6        .byte $B6   ; 
- D 0 - I - 0x0047E3 01:87D3: B6        .byte $B6   ; 
- D 0 - I - 0x0047E4 01:87D4: B7        .byte $B7   ; 
- D 0 - I - 0x0047E5 01:87D5: B8        .byte $B8   ; 
- D 0 - I - 0x0047E6 01:87D6: 30        .byte $30   ; 
- D 0 - I - 0x0047E7 01:87D7: 04        .byte $04   ; 
- D 0 - I - 0x0047E8 01:87D8: 04        .byte $04   ; 
- D 0 - I - 0x0047E9 01:87D9: 04        .byte $04   ; 
- D 0 - I - 0x0047EA 01:87DA: 04        .byte $04   ; 
- D 0 - I - 0x0047EB 01:87DB: 32        .byte $32   ; 
- D 0 - I - 0x0047EC 01:87DC: 04        .byte $04   ; 
- D 0 - I - 0x0047ED 01:87DD: 16        .byte $16   ; 
- D 0 - I - 0x0047EE 01:87DE: 04        .byte $04   ; 
- D 0 - I - 0x0047EF 01:87DF: 04        .byte $04   ; 
- D 0 - I - 0x0047F0 01:87E0: 04        .byte $04   ; 
- D 0 - I - 0x0047F1 01:87E1: 36        .byte $36   ; 
- D 0 - I - 0x0047F2 01:87E2: 04        .byte $04   ; 
- D 0 - I - 0x0047F3 01:87E3: 04        .byte $04   ; 
off_87E4_14:
- - - - - - 0x0047F4 01:87E4: 04        .byte $04   ; 
- - - - - - 0x0047F5 01:87E5: 04        .byte $04   ; 
- - - - - - 0x0047F6 01:87E6: 04        .byte $04   ; 
- - - - - - 0x0047F7 01:87E7: 04        .byte $04   ; 
- - - - - - 0x0047F8 01:87E8: 04        .byte $04   ; 
- - - - - - 0x0047F9 01:87E9: 04        .byte $04   ; 
- - - - - - 0x0047FA 01:87EA: 04        .byte $04   ; 
- - - - - - 0x0047FB 01:87EB: 04        .byte $04   ; 
- - - - - - 0x0047FC 01:87EC: 04        .byte $04   ; 
- D 0 - I - 0x0047FD 01:87ED: 04        .byte $04   ; 
- D 0 - I - 0x0047FE 01:87EE: 04        .byte $04   ; 
- D 0 - I - 0x0047FF 01:87EF: 04        .byte $04   ; 
- D 0 - I - 0x004800 01:87F0: 04        .byte $04   ; 
- D 0 - I - 0x004801 01:87F1: C5        .byte $C5   ; 
- D 0 - I - 0x004802 01:87F2: C6        .byte $C6   ; 
- D 0 - I - 0x004803 01:87F3: C6        .byte $C6   ; 
- D 0 - I - 0x004804 01:87F4: C7        .byte $C7   ; 
- D 0 - I - 0x004805 01:87F5: C8        .byte $C8   ; 
- D 0 - I - 0x004806 01:87F6: 04        .byte $04   ; 
- D 0 - I - 0x004807 01:87F7: 04        .byte $04   ; 
- D 0 - I - 0x004808 01:87F8: 04        .byte $04   ; 
- D 0 - I - 0x004809 01:87F9: 04        .byte $04   ; 
- D 0 - I - 0x00480A 01:87FA: 04        .byte $04   ; 
- D 0 - I - 0x00480B 01:87FB: 31        .byte $31   ; 
- D 0 - I - 0x00480C 01:87FC: 04        .byte $04   ; 
- D 0 - I - 0x00480D 01:87FD: 04        .byte $04   ; 
- D 0 - I - 0x00480E 01:87FE: 04        .byte $04   ; 
- D 0 - I - 0x00480F 01:87FF: 04        .byte $04   ; 
- D 0 - I - 0x004810 01:8800: 04        .byte $04   ; 
- D 0 - I - 0x004811 01:8801: 8E        .byte $8E   ; 
- D 0 - I - 0x004812 01:8802: 0E        .byte $0E   ; 
- D 0 - I - 0x004813 01:8803: 04        .byte $04   ; 
off_8804_15:
- - - - - - 0x004814 01:8804: 00        .byte $00   ; 
- - - - - - 0x004815 01:8805: 00        .byte $00   ; 
- - - - - - 0x004816 01:8806: 00        .byte $00   ; 
- - - - - - 0x004817 01:8807: 00        .byte $00   ; 
- - - - - - 0x004818 01:8808: 00        .byte $00   ; 
- - - - - - 0x004819 01:8809: 00        .byte $00   ; 
- - - - - - 0x00481A 01:880A: 00        .byte $00   ; 
- - - - - - 0x00481B 01:880B: 00        .byte $00   ; 
- - - - - - 0x00481C 01:880C: 00        .byte $00   ; 
- D 0 - I - 0x00481D 01:880D: 00        .byte $00   ; 
- D 0 - I - 0x00481E 01:880E: 00        .byte $00   ; 
- D 0 - I - 0x00481F 01:880F: 00        .byte $00   ; 
- D 0 - I - 0x004820 01:8810: B0        .byte $B0   ; 
- D 0 - I - 0x004821 01:8811: D5        .byte $D5   ; 
- D 0 - I - 0x004822 01:8812: D6        .byte $D6   ; 
- D 0 - I - 0x004823 01:8813: D6        .byte $D6   ; 
- D 0 - I - 0x004824 01:8814: D7        .byte $D7   ; 
- D 0 - I - 0x004825 01:8815: 25        .byte $25   ; 
- D 0 - I - 0x004826 01:8816: 00        .byte $00   ; 
- D 0 - I - 0x004827 01:8817: 00        .byte $00   ; 
- D 0 - I - 0x004828 01:8818: 14        .byte $14   ; 
- D 0 - I - 0x004829 01:8819: 00        .byte $00   ; 
- D 0 - I - 0x00482A 01:881A: 27        .byte $27   ; 
- D 0 - I - 0x00482B 01:881B: 1C        .byte $1C   ; 
- D 0 - I - 0x00482C 01:881C: 00        .byte $00   ; 
- D 0 - I - 0x00482D 01:881D: 00        .byte $00   ; 
- D 0 - I - 0x00482E 01:881E: 00        .byte $00   ; 
- D 0 - I - 0x00482F 01:881F: 00        .byte $00   ; 
- D 0 - I - 0x004830 01:8820: 00        .byte $00   ; 
- D 0 - I - 0x004831 01:8821: 24        .byte $24   ; 
- D 0 - I - 0x004832 01:8822: 1D        .byte $1D   ; 
- D 0 - I - 0x004833 01:8823: 1E        .byte $1E   ; 
off_8824_16:
- - - - - - 0x004834 01:8824: 00        .byte $00   ; 
- - - - - - 0x004835 01:8825: 00        .byte $00   ; 
- - - - - - 0x004836 01:8826: 00        .byte $00   ; 
- - - - - - 0x004837 01:8827: 00        .byte $00   ; 
- - - - - - 0x004838 01:8828: 00        .byte $00   ; 
- - - - - - 0x004839 01:8829: 00        .byte $00   ; 
- - - - - - 0x00483A 01:882A: 00        .byte $00   ; 
- - - - - - 0x00483B 01:882B: 00        .byte $00   ; 
- - - - - - 0x00483C 01:882C: 00        .byte $00   ; 
- D 0 - I - 0x00483D 01:882D: 00        .byte $00   ; 
- D 0 - I - 0x00483E 01:882E: 00        .byte $00   ; 
- D 0 - I - 0x00483F 01:882F: 00        .byte $00   ; 
- D 0 - I - 0x004840 01:8830: 99        .byte $99   ; 
- D 0 - I - 0x004841 01:8831: 9A        .byte $9A   ; 
- D 0 - I - 0x004842 01:8832: D6        .byte $D6   ; 
- D 0 - I - 0x004843 01:8833: D6        .byte $D6   ; 
- D 0 - I - 0x004844 01:8834: D7        .byte $D7   ; 
- D 0 - I - 0x004845 01:8835: 24        .byte $24   ; 
- D 0 - I - 0x004846 01:8836: 00        .byte $00   ; 
- D 0 - I - 0x004847 01:8837: 00        .byte $00   ; 
- D 0 - I - 0x004848 01:8838: 00        .byte $00   ; 
- D 0 - I - 0x004849 01:8839: 00        .byte $00   ; 
- D 0 - I - 0x00484A 01:883A: 1B        .byte $1B   ; 
- D 0 - I - 0x00484B 01:883B: 20        .byte $20   ; 
- D 0 - I - 0x00484C 01:883C: 00        .byte $00   ; 
- D 0 - I - 0x00484D 01:883D: 14        .byte $14   ; 
- D 0 - I - 0x00484E 01:883E: 00        .byte $00   ; 
- D 0 - I - 0x00484F 01:883F: 00        .byte $00   ; 
- D 0 - I - 0x004850 01:8840: 00        .byte $00   ; 
- D 0 - I - 0x004851 01:8841: 23        .byte $23   ; 
- D 0 - I - 0x004852 01:8842: 00        .byte $00   ; 
- D 0 - I - 0x004853 01:8843: 0F        .byte $0F   ; 
off_8844_17:
- - - - - - 0x004854 01:8844: 04        .byte $04   ; 
- - - - - - 0x004855 01:8845: 04        .byte $04   ; 
- - - - - - 0x004856 01:8846: 04        .byte $04   ; 
- - - - - - 0x004857 01:8847: 04        .byte $04   ; 
- - - - - - 0x004858 01:8848: 04        .byte $04   ; 
- - - - - - 0x004859 01:8849: 04        .byte $04   ; 
- - - - - - 0x00485A 01:884A: 04        .byte $04   ; 
- - - - - - 0x00485B 01:884B: 04        .byte $04   ; 
- - - - - - 0x00485C 01:884C: 04        .byte $04   ; 
- D 0 - I - 0x00485D 01:884D: 04        .byte $04   ; 
- D 0 - I - 0x00485E 01:884E: 04        .byte $04   ; 
- D 0 - I - 0x00485F 01:884F: 04        .byte $04   ; 
- D 0 - I - 0x004860 01:8850: D0        .byte $D0   ; 
- D 0 - I - 0x004861 01:8851: D8        .byte $D8   ; 
- D 0 - I - 0x004862 01:8852: D6        .byte $D6   ; 
- D 0 - I - 0x004863 01:8853: D6        .byte $D6   ; 
- D 0 - I - 0x004864 01:8854: A0        .byte $A0   ; 
- D 0 - I - 0x004865 01:8855: 33        .byte $33   ; 
- D 0 - I - 0x004866 01:8856: 04        .byte $04   ; 
- D 0 - I - 0x004867 01:8857: 04        .byte $04   ; 
- D 0 - I - 0x004868 01:8858: 04        .byte $04   ; 
- D 0 - I - 0x004869 01:8859: 04        .byte $04   ; 
- D 0 - I - 0x00486A 01:885A: 36        .byte $36   ; 
- D 0 - I - 0x00486B 01:885B: 04        .byte $04   ; 
- D 0 - I - 0x00486C 01:885C: 04        .byte $04   ; 
- D 0 - I - 0x00486D 01:885D: 04        .byte $04   ; 
- D 0 - I - 0x00486E 01:885E: 04        .byte $04   ; 
- D 0 - I - 0x00486F 01:885F: 04        .byte $04   ; 
- D 0 - I - 0x004870 01:8860: 04        .byte $04   ; 
- D 0 - I - 0x004871 01:8861: 32        .byte $32   ; 
- D 0 - I - 0x004872 01:8862: 04        .byte $04   ; 
- D 0 - I - 0x004873 01:8863: 1F        .byte $1F   ; 
off_8864_18:
- - - - - - 0x004874 01:8864: 04        .byte $04   ; 
- - - - - - 0x004875 01:8865: 04        .byte $04   ; 
- - - - - - 0x004876 01:8866: 04        .byte $04   ; 
- - - - - - 0x004877 01:8867: 04        .byte $04   ; 
- - - - - - 0x004878 01:8868: 04        .byte $04   ; 
- - - - - - 0x004879 01:8869: 04        .byte $04   ; 
- - - - - - 0x00487A 01:886A: 04        .byte $04   ; 
- - - - - - 0x00487B 01:886B: 04        .byte $04   ; 
- - - - - - 0x00487C 01:886C: 04        .byte $04   ; 
- D 0 - I - 0x00487D 01:886D: 04        .byte $04   ; 
- D 0 - I - 0x00487E 01:886E: 04        .byte $04   ; 
- D 0 - I - 0x00487F 01:886F: 04        .byte $04   ; 
- D 0 - I - 0x004880 01:8870: A9        .byte $A9   ; 
- D 0 - I - 0x004881 01:8871: AA        .byte $AA   ; 
- D 0 - I - 0x004882 01:8872: D6        .byte $D6   ; 
- D 0 - I - 0x004883 01:8873: D6        .byte $D6   ; 
- D 0 - I - 0x004884 01:8874: A0        .byte $A0   ; 
- D 0 - I - 0x004885 01:8875: 32        .byte $32   ; 
- D 0 - I - 0x004886 01:8876: 04        .byte $04   ; 
- D 0 - I - 0x004887 01:8877: 04        .byte $04   ; 
- D 0 - I - 0x004888 01:8878: 04        .byte $04   ; 
- D 0 - I - 0x004889 01:8879: 17        .byte $17   ; 
- D 0 - I - 0x00488A 01:887A: 35        .byte $35   ; 
- D 0 - I - 0x00488B 01:887B: 04        .byte $04   ; 
- D 0 - I - 0x00488C 01:887C: 04        .byte $04   ; 
- D 0 - I - 0x00488D 01:887D: 04        .byte $04   ; 
- D 0 - I - 0x00488E 01:887E: 04        .byte $04   ; 
- D 0 - I - 0x00488F 01:887F: 04        .byte $04   ; 
- D 0 - I - 0x004890 01:8880: 04        .byte $04   ; 
- D 0 - I - 0x004891 01:8881: 31        .byte $31   ; 
- D 0 - I - 0x004892 01:8882: 04        .byte $04   ; 
- D 0 - I - 0x004893 01:8883: 2F        .byte $2F   ; 
off_8884_1A:
- - - - - - 0x004894 01:8884: 00        .byte $00   ; 
- - - - - - 0x004895 01:8885: 00        .byte $00   ; 
- - - - - - 0x004896 01:8886: 00        .byte $00   ; 
- - - - - - 0x004897 01:8887: 00        .byte $00   ; 
- - - - - - 0x004898 01:8888: 00        .byte $00   ; 
- - - - - - 0x004899 01:8889: 00        .byte $00   ; 
- - - - - - 0x00489A 01:888A: 00        .byte $00   ; 
- - - - - - 0x00489B 01:888B: 00        .byte $00   ; 
- - - - - - 0x00489C 01:888C: 00        .byte $00   ; 
- D 0 - I - 0x00489D 01:888D: 00        .byte $00   ; 
- D 0 - I - 0x00489E 01:888E: 00        .byte $00   ; 
- D 0 - I - 0x00489F 01:888F: 00        .byte $00   ; 
- D 0 - I - 0x0048A0 01:8890: C9        .byte $C9   ; 
- D 0 - I - 0x0048A1 01:8891: D6        .byte $D6   ; 
- D 0 - I - 0x0048A2 01:8892: D6        .byte $D6   ; 
- D 0 - I - 0x0048A3 01:8893: D6        .byte $D6   ; 
- D 0 - I - 0x0048A4 01:8894: BA        .byte $BA   ; 
- D 0 - I - 0x0048A5 01:8895: 1C        .byte $1C   ; 
- D 0 - I - 0x0048A6 01:8896: 00        .byte $00   ; 
- D 0 - I - 0x0048A7 01:8897: 00        .byte $00   ; 
- D 0 - I - 0x0048A8 01:8898: 00        .byte $00   ; 
- D 0 - I - 0x0048A9 01:8899: 00        .byte $00   ; 
- D 0 - I - 0x0048AA 01:889A: 23        .byte $23   ; 
- D 0 - I - 0x0048AB 01:889B: 00        .byte $00   ; 
- D 0 - I - 0x0048AC 01:889C: 00        .byte $00   ; 
- D 0 - I - 0x0048AD 01:889D: 00        .byte $00   ; 
- D 0 - I - 0x0048AE 01:889E: 00        .byte $00   ; 
- D 0 - I - 0x0048AF 01:889F: 15        .byte $15   ; 
- D 0 - I - 0x0048B0 01:88A0: 1B        .byte $1B   ; 
- D 0 - I - 0x0048B1 01:88A1: 20        .byte $20   ; 
- D 0 - I - 0x0048B2 01:88A2: 2D        .byte $2D   ; 
- D 0 - I - 0x0048B3 01:88A3: 2E        .byte $2E   ; 
off_88A4_1B:
- - - - - - 0x0048B4 01:88A4: 04        .byte $04   ; 
- - - - - - 0x0048B5 01:88A5: 04        .byte $04   ; 
- - - - - - 0x0048B6 01:88A6: 04        .byte $04   ; 
- - - - - - 0x0048B7 01:88A7: 04        .byte $04   ; 
- - - - - - 0x0048B8 01:88A8: 04        .byte $04   ; 
- - - - - - 0x0048B9 01:88A9: 04        .byte $04   ; 
- - - - - - 0x0048BA 01:88AA: 04        .byte $04   ; 
- - - - - - 0x0048BB 01:88AB: 04        .byte $04   ; 
- - - - - - 0x0048BC 01:88AC: 04        .byte $04   ; 
- D 0 - I - 0x0048BD 01:88AD: 04        .byte $04   ; 
- D 0 - I - 0x0048BE 01:88AE: 04        .byte $04   ; 
- D 0 - I - 0x0048BF 01:88AF: 04        .byte $04   ; 
- D 0 - I - 0x0048C0 01:88B0: D9        .byte $D9   ; 
- D 0 - I - 0x0048C1 01:88B1: D6        .byte $D6   ; 
- D 0 - I - 0x0048C2 01:88B2: D6        .byte $D6   ; 
- D 0 - I - 0x0048C3 01:88B3: D6        .byte $D6   ; 
- D 0 - I - 0x0048C4 01:88B4: CA        .byte $CA   ; 
- D 0 - I - 0x0048C5 01:88B5: 30        .byte $30   ; 
- D 0 - I - 0x0048C6 01:88B6: 04        .byte $04   ; 
- D 0 - I - 0x0048C7 01:88B7: 04        .byte $04   ; 
- D 0 - I - 0x0048C8 01:88B8: 04        .byte $04   ; 
- D 0 - I - 0x0048C9 01:88B9: 04        .byte $04   ; 
- D 0 - I - 0x0048CA 01:88BA: 32        .byte $32   ; 
- D 0 - I - 0x0048CB 01:88BB: 04        .byte $04   ; 
- D 0 - I - 0x0048CC 01:88BC: 04        .byte $04   ; 
- D 0 - I - 0x0048CD 01:88BD: 04        .byte $04   ; 
- D 0 - I - 0x0048CE 01:88BE: 04        .byte $04   ; 
- D 0 - I - 0x0048CF 01:88BF: 04        .byte $04   ; 
- D 0 - I - 0x0048D0 01:88C0: 36        .byte $36   ; 
- D 0 - I - 0x0048D1 01:88C1: 3D        .byte $3D   ; 
- D 0 - I - 0x0048D2 01:88C2: 3E        .byte $3E   ; 
- D 0 - I - 0x0048D3 01:88C3: 04        .byte $04   ; 
off_88C4_1C:
- - - - - - 0x0048D4 01:88C4: 04        .byte $04   ; 
- - - - - - 0x0048D5 01:88C5: 04        .byte $04   ; 
- - - - - - 0x0048D6 01:88C6: 04        .byte $04   ; 
- - - - - - 0x0048D7 01:88C7: 04        .byte $04   ; 
- - - - - - 0x0048D8 01:88C8: 04        .byte $04   ; 
- - - - - - 0x0048D9 01:88C9: 04        .byte $04   ; 
- - - - - - 0x0048DA 01:88CA: 04        .byte $04   ; 
- - - - - - 0x0048DB 01:88CB: 04        .byte $04   ; 
- - - - - - 0x0048DC 01:88CC: 04        .byte $04   ; 
- D 0 - I - 0x0048DD 01:88CD: 04        .byte $04   ; 
- D 0 - I - 0x0048DE 01:88CE: 04        .byte $04   ; 
- D 0 - I - 0x0048DF 01:88CF: 04        .byte $04   ; 
- D 0 - I - 0x0048E0 01:88D0: 9B        .byte $9B   ; 
- D 0 - I - 0x0048E1 01:88D1: 9C        .byte $9C   ; 
- D 0 - I - 0x0048E2 01:88D2: 9C        .byte $9C   ; 
- D 0 - I - 0x0048E3 01:88D3: 9C        .byte $9C   ; 
- D 0 - I - 0x0048E4 01:88D4: DA        .byte $DA   ; 
- D 0 - I - 0x0048E5 01:88D5: 04        .byte $04   ; 
- D 0 - I - 0x0048E6 01:88D6: 16        .byte $16   ; 
- D 0 - I - 0x0048E7 01:88D7: 04        .byte $04   ; 
- D 0 - I - 0x0048E8 01:88D8: 04        .byte $04   ; 
- D 0 - I - 0x0048E9 01:88D9: 04        .byte $04   ; 
- D 0 - I - 0x0048EA 01:88DA: 31        .byte $31   ; 
- D 0 - I - 0x0048EB 01:88DB: 04        .byte $04   ; 
- D 0 - I - 0x0048EC 01:88DC: 16        .byte $16   ; 
- D 0 - I - 0x0048ED 01:88DD: 04        .byte $04   ; 
- D 0 - I - 0x0048EE 01:88DE: 04        .byte $04   ; 
- D 0 - I - 0x0048EF 01:88DF: 04        .byte $04   ; 
- D 0 - I - 0x0048F0 01:88E0: 35        .byte $35   ; 
- D 0 - I - 0x0048F1 01:88E1: 17        .byte $17   ; 
- D 0 - I - 0x0048F2 01:88E2: 04        .byte $04   ; 
- D 0 - I - 0x0048F3 01:88E3: 04        .byte $04   ; 
off_88E4_1D:
- - - - - - 0x0048F4 01:88E4: 04        .byte $04   ; 
- - - - - - 0x0048F5 01:88E5: 04        .byte $04   ; 
- - - - - - 0x0048F6 01:88E6: 04        .byte $04   ; 
- - - - - - 0x0048F7 01:88E7: 04        .byte $04   ; 
- - - - - - 0x0048F8 01:88E8: 17        .byte $17   ; 
- - - - - - 0x0048F9 01:88E9: 04        .byte $04   ; 
- - - - - - 0x0048FA 01:88EA: 04        .byte $04   ; 
- - - - - - 0x0048FB 01:88EB: 04        .byte $04   ; 
- - - - - - 0x0048FC 01:88EC: 04        .byte $04   ; 
- D 0 - I - 0x0048FD 01:88ED: 04        .byte $04   ; 
- D 0 - I - 0x0048FE 01:88EE: 04        .byte $04   ; 
- D 0 - I - 0x0048FF 01:88EF: 04        .byte $04   ; 
- D 0 - I - 0x004900 01:88F0: 04        .byte $04   ; 
- D 0 - I - 0x004901 01:88F1: 04        .byte $04   ; 
- D 0 - I - 0x004902 01:88F2: 04        .byte $04   ; 
- D 0 - I - 0x004903 01:88F3: 04        .byte $04   ; 
- D 0 - I - 0x004904 01:88F4: 35        .byte $35   ; 
- D 0 - I - 0x004905 01:88F5: 04        .byte $04   ; 
- D 0 - I - 0x004906 01:88F6: 04        .byte $04   ; 
- D 0 - I - 0x004907 01:88F7: 04        .byte $04   ; 
- D 0 - I - 0x004908 01:88F8: 04        .byte $04   ; 
- D 0 - I - 0x004909 01:88F9: 37        .byte $37   ; 
- D 0 - I - 0x00490A 01:88FA: 2C        .byte $2C   ; 
- D 0 - I - 0x00490B 01:88FB: 04        .byte $04   ; 
- D 0 - I - 0x00490C 01:88FC: 04        .byte $04   ; 
- D 0 - I - 0x00490D 01:88FD: 04        .byte $04   ; 
- D 0 - I - 0x00490E 01:88FE: 04        .byte $04   ; 
- D 0 - I - 0x00490F 01:88FF: 04        .byte $04   ; 
- D 0 - I - 0x004910 01:8900: 34        .byte $34   ; 
- D 0 - I - 0x004911 01:8901: 04        .byte $04   ; 
- D 0 - I - 0x004912 01:8902: 04        .byte $04   ; 
- D 0 - I - 0x004913 01:8903: 04        .byte $04   ; 
off_8904_00:
- - - - - - 0x004914 01:8904: 00        .byte $00   ; 
- - - - - - 0x004915 01:8905: 00        .byte $00   ; 
- - - - - - 0x004916 01:8906: 00        .byte $00   ; 
- - - - - - 0x004917 01:8907: 00        .byte $00   ; 
- - - - - - 0x004918 01:8908: 00        .byte $00   ; 
- - - - - - 0x004919 01:8909: 00        .byte $00   ; 
- - - - - - 0x00491A 01:890A: 00        .byte $00   ; 
- - - - - - 0x00491B 01:890B: 00        .byte $00   ; 
- - - - - - 0x00491C 01:890C: 00        .byte $00   ; 
- - - - - - 0x00491D 01:890D: 00        .byte $00   ; 
- D 0 - I - 0x00491E 01:890E: 00        .byte $00   ; 
- D 0 - I - 0x00491F 01:890F: 00        .byte $00   ; 
- D 0 - I - 0x004920 01:8910: 00        .byte $00   ; 
- D 0 - I - 0x004921 01:8911: 00        .byte $00   ; 
- D 0 - I - 0x004922 01:8912: 00        .byte $00   ; 
- D 0 - I - 0x004923 01:8913: 00        .byte $00   ; 
- - - - - - 0x004924 01:8914: 00        .byte $00   ; 
- - - - - - 0x004925 01:8915: 00        .byte $00   ; 
- D 0 - I - 0x004926 01:8916: 00        .byte $00   ; 
- D 0 - I - 0x004927 01:8917: 00        .byte $00   ; 
- D 0 - I - 0x004928 01:8918: 00        .byte $00   ; 
- D 0 - I - 0x004929 01:8919: 00        .byte $00   ; 
- D 0 - I - 0x00492A 01:891A: 40        .byte $40   ; 
- D 0 - I - 0x00492B 01:891B: 55        .byte $55   ; 
- - - - - - 0x00492C 01:891C: 00        .byte $00   ; 
- - - - - - 0x00492D 01:891D: 00        .byte $00   ; 
- D 0 - I - 0x00492E 01:891E: 00        .byte $00   ; 
- D 0 - I - 0x00492F 01:891F: 00        .byte $00   ; 
- D 0 - I - 0x004930 01:8920: 00        .byte $00   ; 
- D 0 - I - 0x004931 01:8921: 00        .byte $00   ; 
- D 0 - I - 0x004932 01:8922: 44        .byte $44   ; 
- D 0 - I - 0x004933 01:8923: 55        .byte $55   ; 
- - - - - - 0x004934 01:8924: 00        .byte $00   ; 
- - - - - - 0x004935 01:8925: 00        .byte $00   ; 
- D 0 - I - 0x004936 01:8926: 00        .byte $00   ; 
- D 0 - I - 0x004937 01:8927: 00        .byte $00   ; 
- D 0 - I - 0x004938 01:8928: 00        .byte $00   ; 
- D 0 - I - 0x004939 01:8929: 00        .byte $00   ; 
- D 0 - I - 0x00493A 01:892A: 00        .byte $00   ; 
- D 0 - I - 0x00493B 01:892B: 00        .byte $00   ; 
- - - - - - 0x00493C 01:892C: 00        .byte $00   ; 
- - - - - - 0x00493D 01:892D: 00        .byte $00   ; 
- D 0 - I - 0x00493E 01:892E: 00        .byte $00   ; 
- D 0 - I - 0x00493F 01:892F: 00        .byte $00   ; 
- D 0 - I - 0x004940 01:8930: 00        .byte $00   ; 
- D 0 - I - 0x004941 01:8931: 00        .byte $00   ; 
- D 0 - I - 0x004942 01:8932: 00        .byte $00   ; 
- D 0 - I - 0x004943 01:8933: 00        .byte $00   ; 
- - - - - - 0x004944 01:8934: 00        .byte $00   ; 
- - - - - - 0x004945 01:8935: 00        .byte $00   ; 
- D 0 - I - 0x004946 01:8936: 00        .byte $00   ; 
- D 0 - I - 0x004947 01:8937: 00        .byte $00   ; 
- D 0 - I - 0x004948 01:8938: 00        .byte $00   ; 
- D 0 - I - 0x004949 01:8939: 00        .byte $00   ; 
- D 0 - I - 0x00494A 01:893A: 00        .byte $00   ; 
- D 0 - I - 0x00494B 01:893B: 00        .byte $00   ; 
- - - - - - 0x00494C 01:893C: 00        .byte $00   ; 
- - - - - - 0x00494D 01:893D: 00        .byte $00   ; 
- D 0 - I - 0x00494E 01:893E: 00        .byte $00   ; 
- D 0 - I - 0x00494F 01:893F: 00        .byte $00   ; 
- D 0 - I - 0x004950 01:8940: 00        .byte $00   ; 
- D 0 - I - 0x004951 01:8941: 00        .byte $00   ; 
- D 0 - I - 0x004952 01:8942: 00        .byte $00   ; 
- D 0 - I - 0x004953 01:8943: 00        .byte $00   ; 
off_8944_10:
- D 0 - I - 0x004954 01:8944: 04        .byte $04   ; 
- D 0 - I - 0x004955 01:8945: 4D        .byte $4D   ; 
- D 0 - I - 0x004956 01:8946: 61        .byte $61   ; 
- D 0 - I - 0x004957 01:8947: 6D        .byte $6D   ; 
- D 0 - I - 0x004958 01:8948: 71        .byte $71   ; 
- D 0 - I - 0x004959 01:8949: 6D        .byte $6D   ; 
- D 0 - I - 0x00495A 01:894A: 6D        .byte $6D   ; 
- D 0 - I - 0x00495B 01:894B: 6B        .byte $6B   ; 
- D 0 - I - 0x00495C 01:894C: 04        .byte $04   ; 
- D 0 - I - 0x00495D 01:894D: 04        .byte $04   ; 
- D 0 - I - 0x00495E 01:894E: 04        .byte $04   ; 
- D 0 - I - 0x00495F 01:894F: 04        .byte $04   ; 
- D 0 - I - 0x004960 01:8950: 04        .byte $04   ; 
- D 0 - I - 0x004961 01:8951: 04        .byte $04   ; 
- D 0 - I - 0x004962 01:8952: 04        .byte $04   ; 
- D 0 - I - 0x004963 01:8953: 04        .byte $04   ; 
- D 0 - I - 0x004964 01:8954: 04        .byte $04   ; 
- D 0 - I - 0x004965 01:8955: 04        .byte $04   ; 
- D 0 - I - 0x004966 01:8956: 04        .byte $04   ; 
- D 0 - I - 0x004967 01:8957: 04        .byte $04   ; 
- D 0 - I - 0x004968 01:8958: 04        .byte $04   ; 
- D 0 - I - 0x004969 01:8959: 16        .byte $16   ; 
- D 0 - I - 0x00496A 01:895A: 04        .byte $04   ; 
- D 0 - I - 0x00496B 01:895B: 04        .byte $04   ; 
- D 0 - I - 0x00496C 01:895C: 61        .byte $61   ; 
- D 0 - I - 0x00496D 01:895D: 6D        .byte $6D   ; 
- D 0 - I - 0x00496E 01:895E: 6D        .byte $6D   ; 
- D 0 - I - 0x00496F 01:895F: 6D        .byte $6D   ; 
- D 0 - I - 0x004970 01:8960: 6D        .byte $6D   ; 
- D 0 - I - 0x004971 01:8961: 6D        .byte $6D   ; 
- D 0 - I - 0x004972 01:8962: 70        .byte $70   ; 
- D 0 - I - 0x004973 01:8963: 74        .byte $74   ; 
off_8964_11:
- D 0 - I - 0x004974 01:8964: 00        .byte $00   ; 
- D 0 - I - 0x004975 01:8965: 00        .byte $00   ; 
- D 0 - I - 0x004976 01:8966: 44        .byte $44   ; 
- D 0 - I - 0x004977 01:8967: 5A        .byte $5A   ; 
- D 0 - I - 0x004978 01:8968: 5A        .byte $5A   ; 
- D 0 - I - 0x004979 01:8969: 5C        .byte $5C   ; 
- D 0 - I - 0x00497A 01:896A: 5D        .byte $5D   ; 
- D 0 - I - 0x00497B 01:896B: 46        .byte $46   ; 
- D 0 - I - 0x00497C 01:896C: 00        .byte $00   ; 
- D 0 - I - 0x00497D 01:896D: 00        .byte $00   ; 
- D 0 - I - 0x00497E 01:896E: 00        .byte $00   ; 
- D 0 - I - 0x00497F 01:896F: 00        .byte $00   ; 
- D 0 - I - 0x004980 01:8970: 00        .byte $00   ; 
- D 0 - I - 0x004981 01:8971: 00        .byte $00   ; 
- D 0 - I - 0x004982 01:8972: 00        .byte $00   ; 
- D 0 - I - 0x004983 01:8973: 00        .byte $00   ; 
- D 0 - I - 0x004984 01:8974: 15        .byte $15   ; 
- D 0 - I - 0x004985 01:8975: 00        .byte $00   ; 
- D 0 - I - 0x004986 01:8976: 00        .byte $00   ; 
- D 0 - I - 0x004987 01:8977: 00        .byte $00   ; 
- D 0 - I - 0x004988 01:8978: 00        .byte $00   ; 
- D 0 - I - 0x004989 01:8979: 00        .byte $00   ; 
- D 0 - I - 0x00498A 01:897A: 00        .byte $00   ; 
- D 0 - I - 0x00498B 01:897B: 00        .byte $00   ; 
- D 0 - I - 0x00498C 01:897C: 60        .byte $60   ; 
- D 0 - I - 0x00498D 01:897D: 6F        .byte $6F   ; 
- D 0 - I - 0x00498E 01:897E: 6C        .byte $6C   ; 
- D 0 - I - 0x00498F 01:897F: 78        .byte $78   ; 
- D 0 - I - 0x004990 01:8980: 5A        .byte $5A   ; 
- D 0 - I - 0x004991 01:8981: 5A        .byte $5A   ; 
- D 0 - I - 0x004992 01:8982: 5A        .byte $5A   ; 
- D 0 - I - 0x004993 01:8983: 56        .byte $56   ; 
off_8984_15:
- D 0 - I - 0x004994 01:8984: 00        .byte $00   ; 
- D 0 - I - 0x004995 01:8985: 00        .byte $00   ; 
- D 0 - I - 0x004996 01:8986: 00        .byte $00   ; 
- D 0 - I - 0x004997 01:8987: 00        .byte $00   ; 
- D 0 - I - 0x004998 01:8988: 00        .byte $00   ; 
- D 0 - I - 0x004999 01:8989: 00        .byte $00   ; 
- D 0 - I - 0x00499A 01:898A: 00        .byte $00   ; 
- D 0 - I - 0x00499B 01:898B: 00        .byte $00   ; 
- D 0 - I - 0x00499C 01:898C: 00        .byte $00   ; 
- D 0 - I - 0x00499D 01:898D: 00        .byte $00   ; 
- D 0 - I - 0x00499E 01:898E: 00        .byte $00   ; 
- D 0 - I - 0x00499F 01:898F: 00        .byte $00   ; 
- D 0 - I - 0x0049A0 01:8990: 00        .byte $00   ; 
- D 0 - I - 0x0049A1 01:8991: 00        .byte $00   ; 
- D 0 - I - 0x0049A2 01:8992: 00        .byte $00   ; 
- D 0 - I - 0x0049A3 01:8993: 00        .byte $00   ; 
- D 0 - I - 0x0049A4 01:8994: 00        .byte $00   ; 
- D 0 - I - 0x0049A5 01:8995: 00        .byte $00   ; 
- D 0 - I - 0x0049A6 01:8996: 00        .byte $00   ; 
- D 0 - I - 0x0049A7 01:8997: 00        .byte $00   ; 
- D 0 - I - 0x0049A8 01:8998: 00        .byte $00   ; 
- D 0 - I - 0x0049A9 01:8999: 00        .byte $00   ; 
- D 0 - I - 0x0049AA 01:899A: 00        .byte $00   ; 
- D 0 - I - 0x0049AB 01:899B: 00        .byte $00   ; 
- D 0 - I - 0x0049AC 01:899C: 00        .byte $00   ; 
- D 0 - I - 0x0049AD 01:899D: 00        .byte $00   ; 
- D 0 - I - 0x0049AE 01:899E: 00        .byte $00   ; 
- D 0 - I - 0x0049AF 01:899F: 00        .byte $00   ; 
- D 0 - I - 0x0049B0 01:89A0: 19        .byte $19   ; 
- D 0 - I - 0x0049B1 01:89A1: 1A        .byte $1A   ; 
- D 0 - I - 0x0049B2 01:89A2: 00        .byte $00   ; 
- D 0 - I - 0x0049B3 01:89A3: 1B        .byte $1B   ; 
off_89A4_16:
- D 0 - I - 0x0049B4 01:89A4: 00        .byte $00   ; 
- D 0 - I - 0x0049B5 01:89A5: 00        .byte $00   ; 
- D 0 - I - 0x0049B6 01:89A6: 00        .byte $00   ; 
- D 0 - I - 0x0049B7 01:89A7: 00        .byte $00   ; 
- D 0 - I - 0x0049B8 01:89A8: 00        .byte $00   ; 
- D 0 - I - 0x0049B9 01:89A9: 00        .byte $00   ; 
- D 0 - I - 0x0049BA 01:89AA: 00        .byte $00   ; 
- D 0 - I - 0x0049BB 01:89AB: 00        .byte $00   ; 
- D 0 - I - 0x0049BC 01:89AC: 00        .byte $00   ; 
- D 0 - I - 0x0049BD 01:89AD: 00        .byte $00   ; 
- D 0 - I - 0x0049BE 01:89AE: 00        .byte $00   ; 
- D 0 - I - 0x0049BF 01:89AF: 00        .byte $00   ; 
- D 0 - I - 0x0049C0 01:89B0: 00        .byte $00   ; 
- D 0 - I - 0x0049C1 01:89B1: 00        .byte $00   ; 
- D 0 - I - 0x0049C2 01:89B2: 00        .byte $00   ; 
- D 0 - I - 0x0049C3 01:89B3: 00        .byte $00   ; 
- D 0 - I - 0x0049C4 01:89B4: 00        .byte $00   ; 
- D 0 - I - 0x0049C5 01:89B5: 00        .byte $00   ; 
- D 0 - I - 0x0049C6 01:89B6: 00        .byte $00   ; 
- D 0 - I - 0x0049C7 01:89B7: 00        .byte $00   ; 
- D 0 - I - 0x0049C8 01:89B8: 00        .byte $00   ; 
- D 0 - I - 0x0049C9 01:89B9: 00        .byte $00   ; 
- D 0 - I - 0x0049CA 01:89BA: 00        .byte $00   ; 
- D 0 - I - 0x0049CB 01:89BB: 00        .byte $00   ; 
- D 0 - I - 0x0049CC 01:89BC: 00        .byte $00   ; 
- D 0 - I - 0x0049CD 01:89BD: 00        .byte $00   ; 
- D 0 - I - 0x0049CE 01:89BE: 00        .byte $00   ; 
- D 0 - I - 0x0049CF 01:89BF: 00        .byte $00   ; 
- D 0 - I - 0x0049D0 01:89C0: 08        .byte $08   ; 
- D 0 - I - 0x0049D1 01:89C1: 00        .byte $00   ; 
- D 0 - I - 0x0049D2 01:89C2: 00        .byte $00   ; 
- D 0 - I - 0x0049D3 01:89C3: 1B        .byte $1B   ; 
off_89C4_19:
- D 0 - I - 0x0049D4 01:89C4: 00        .byte $00   ; 
- D 0 - I - 0x0049D5 01:89C5: 00        .byte $00   ; 
- D 0 - I - 0x0049D6 01:89C6: 00        .byte $00   ; 
- D 0 - I - 0x0049D7 01:89C7: 00        .byte $00   ; 
- D 0 - I - 0x0049D8 01:89C8: 00        .byte $00   ; 
- D 0 - I - 0x0049D9 01:89C9: 00        .byte $00   ; 
- D 0 - I - 0x0049DA 01:89CA: 00        .byte $00   ; 
- D 0 - I - 0x0049DB 01:89CB: 00        .byte $00   ; 
- D 0 - I - 0x0049DC 01:89CC: 00        .byte $00   ; 
- D 0 - I - 0x0049DD 01:89CD: 00        .byte $00   ; 
- D 0 - I - 0x0049DE 01:89CE: 00        .byte $00   ; 
- D 0 - I - 0x0049DF 01:89CF: 00        .byte $00   ; 
- D 0 - I - 0x0049E0 01:89D0: 60        .byte $60   ; 
- D 0 - I - 0x0049E1 01:89D1: 6C        .byte $6C   ; 
- D 0 - I - 0x0049E2 01:89D2: 6E        .byte $6E   ; 
- D 0 - I - 0x0049E3 01:89D3: 6C        .byte $6C   ; 
- D 0 - I - 0x0049E4 01:89D4: 6C        .byte $6C   ; 
- D 0 - I - 0x0049E5 01:89D5: 66        .byte $66   ; 
- D 0 - I - 0x0049E6 01:89D6: 4A        .byte $4A   ; 
- D 0 - I - 0x0049E7 01:89D7: 00        .byte $00   ; 
- D 0 - I - 0x0049E8 01:89D8: 00        .byte $00   ; 
- D 0 - I - 0x0049E9 01:89D9: 00        .byte $00   ; 
- D 0 - I - 0x0049EA 01:89DA: 00        .byte $00   ; 
- D 0 - I - 0x0049EB 01:89DB: 00        .byte $00   ; 
- D 0 - I - 0x0049EC 01:89DC: 00        .byte $00   ; 
- D 0 - I - 0x0049ED 01:89DD: 00        .byte $00   ; 
- D 0 - I - 0x0049EE 01:89DE: 00        .byte $00   ; 
- D 0 - I - 0x0049EF 01:89DF: 00        .byte $00   ; 
- D 0 - I - 0x0049F0 01:89E0: 38        .byte $38   ; 
- D 0 - I - 0x0049F1 01:89E1: 00        .byte $00   ; 
- D 0 - I - 0x0049F2 01:89E2: 00        .byte $00   ; 
- D 0 - I - 0x0049F3 01:89E3: 1B        .byte $1B   ; 
off_89E4_1B:
- D 0 - I - 0x0049F4 01:89E4: 04        .byte $04   ; 
- D 0 - I - 0x0049F5 01:89E5: 04        .byte $04   ; 
- D 0 - I - 0x0049F6 01:89E6: 04        .byte $04   ; 
- D 0 - I - 0x0049F7 01:89E7: 04        .byte $04   ; 
- D 0 - I - 0x0049F8 01:89E8: 04        .byte $04   ; 
- D 0 - I - 0x0049F9 01:89E9: 04        .byte $04   ; 
- D 0 - I - 0x0049FA 01:89EA: 04        .byte $04   ; 
- D 0 - I - 0x0049FB 01:89EB: 04        .byte $04   ; 
- D 0 - I - 0x0049FC 01:89EC: 04        .byte $04   ; 
- D 0 - I - 0x0049FD 01:89ED: 04        .byte $04   ; 
- D 0 - I - 0x0049FE 01:89EE: 04        .byte $04   ; 
- D 0 - I - 0x0049FF 01:89EF: 04        .byte $04   ; 
- D 0 - I - 0x004A00 01:89F0: 45        .byte $45   ; 
- D 0 - I - 0x004A01 01:89F1: 5B        .byte $5B   ; 
- D 0 - I - 0x004A02 01:89F2: 7B        .byte $7B   ; 
- D 0 - I - 0x004A03 01:89F3: 6D        .byte $6D   ; 
- D 0 - I - 0x004A04 01:89F4: 6D        .byte $6D   ; 
- D 0 - I - 0x004A05 01:89F5: 6D        .byte $6D   ; 
- D 0 - I - 0x004A06 01:89F6: 70        .byte $70   ; 
- D 0 - I - 0x004A07 01:89F7: 67        .byte $67   ; 
- D 0 - I - 0x004A08 01:89F8: 4B        .byte $4B   ; 
- D 0 - I - 0x004A09 01:89F9: 04        .byte $04   ; 
- D 0 - I - 0x004A0A 01:89FA: 04        .byte $04   ; 
- D 0 - I - 0x004A0B 01:89FB: 16        .byte $16   ; 
- D 0 - I - 0x004A0C 01:89FC: 04        .byte $04   ; 
- D 0 - I - 0x004A0D 01:89FD: 04        .byte $04   ; 
- D 0 - I - 0x004A0E 01:89FE: 04        .byte $04   ; 
- D 0 - I - 0x004A0F 01:89FF: 04        .byte $04   ; 
- D 0 - I - 0x004A10 01:8A00: 04        .byte $04   ; 
- D 0 - I - 0x004A11 01:8A01: 39        .byte $39   ; 
- D 0 - I - 0x004A12 01:8A02: 3A        .byte $3A   ; 
- D 0 - I - 0x004A13 01:8A03: 3B        .byte $3B   ; 
off_8A04_1C:
- D 0 - I - 0x004A14 01:8A04: 04        .byte $04   ; 
- D 0 - I - 0x004A15 01:8A05: 04        .byte $04   ; 
- D 0 - I - 0x004A16 01:8A06: 04        .byte $04   ; 
- D 0 - I - 0x004A17 01:8A07: 04        .byte $04   ; 
- D 0 - I - 0x004A18 01:8A08: 04        .byte $04   ; 
- D 0 - I - 0x004A19 01:8A09: 04        .byte $04   ; 
- D 0 - I - 0x004A1A 01:8A0A: 04        .byte $04   ; 
- D 0 - I - 0x004A1B 01:8A0B: 04        .byte $04   ; 
- D 0 - I - 0x004A1C 01:8A0C: 04        .byte $04   ; 
- D 0 - I - 0x004A1D 01:8A0D: 04        .byte $04   ; 
- D 0 - I - 0x004A1E 01:8A0E: 04        .byte $04   ; 
- D 0 - I - 0x004A1F 01:8A0F: 04        .byte $04   ; 
- D 0 - I - 0x004A20 01:8A10: 04        .byte $04   ; 
- D 0 - I - 0x004A21 01:8A11: 4D        .byte $4D   ; 
- D 0 - I - 0x004A22 01:8A12: 61        .byte $61   ; 
- D 0 - I - 0x004A23 01:8A13: 71        .byte $71   ; 
- D 0 - I - 0x004A24 01:8A14: 6D        .byte $6D   ; 
- D 0 - I - 0x004A25 01:8A15: 6D        .byte $6D   ; 
- D 0 - I - 0x004A26 01:8A16: 6D        .byte $6D   ; 
- D 0 - I - 0x004A27 01:8A17: 7D        .byte $7D   ; 
- D 0 - I - 0x004A28 01:8A18: 55        .byte $55   ; 
- D 0 - I - 0x004A29 01:8A19: 43        .byte $43   ; 
- D 0 - I - 0x004A2A 01:8A1A: 04        .byte $04   ; 
- D 0 - I - 0x004A2B 01:8A1B: 04        .byte $04   ; 
- D 0 - I - 0x004A2C 01:8A1C: 04        .byte $04   ; 
- D 0 - I - 0x004A2D 01:8A1D: 04        .byte $04   ; 
- D 0 - I - 0x004A2E 01:8A1E: 04        .byte $04   ; 
- D 0 - I - 0x004A2F 01:8A1F: 04        .byte $04   ; 
- D 0 - I - 0x004A30 01:8A20: 04        .byte $04   ; 
- D 0 - I - 0x004A31 01:8A21: 04        .byte $04   ; 
- D 0 - I - 0x004A32 01:8A22: 04        .byte $04   ; 
- D 0 - I - 0x004A33 01:8A23: 2B        .byte $2B   ; 
off_8A24_01:
- - - - - - 0x004A34 01:8A24: 00        .byte $00   ; 
- - - - - - 0x004A35 01:8A25: 00        .byte $00   ; 
- - - - - - 0x004A36 01:8A26: 00        .byte $00   ; 
- - - - - - 0x004A37 01:8A27: 00        .byte $00   ; 
- D 0 - I - 0x004A38 01:8A28: 00        .byte $00   ; 
- D 0 - I - 0x004A39 01:8A29: 00        .byte $00   ; 
- D 0 - I - 0x004A3A 01:8A2A: 00        .byte $00   ; 
- D 0 - I - 0x004A3B 01:8A2B: 00        .byte $00   ; 
- D 0 - I - 0x004A3C 01:8A2C: 00        .byte $00   ; 
- D 0 - I - 0x004A3D 01:8A2D: 00        .byte $00   ; 
- D 0 - I - 0x004A3E 01:8A2E: 00        .byte $00   ; 
- D 0 - I - 0x004A3F 01:8A2F: 00        .byte $00   ; 
- D 0 - I - 0x004A40 01:8A30: 00        .byte $00   ; 
- D 0 - I - 0x004A41 01:8A31: 00        .byte $00   ; 
- D 0 - I - 0x004A42 01:8A32: 00        .byte $00   ; 
- D 0 - I - 0x004A43 01:8A33: 00        .byte $00   ; 
- D 0 - I - 0x004A44 01:8A34: 55        .byte $55   ; 
- D 0 - I - 0x004A45 01:8A35: 10        .byte $10   ; 
- D 0 - I - 0x004A46 01:8A36: 00        .byte $00   ; 
- D 0 - I - 0x004A47 01:8A37: 00        .byte $00   ; 
- D 0 - I - 0x004A48 01:8A38: 00        .byte $00   ; 
- D 0 - I - 0x004A49 01:8A39: 00        .byte $00   ; 
- D 0 - I - 0x004A4A 01:8A3A: 00        .byte $00   ; 
- D 0 - I - 0x004A4B 01:8A3B: 00        .byte $00   ; 
- D 0 - I - 0x004A4C 01:8A3C: 55        .byte $55   ; 
- D 0 - I - 0x004A4D 01:8A3D: 55        .byte $55   ; 
- D 0 - I - 0x004A4E 01:8A3E: 00        .byte $00   ; 
- D 0 - I - 0x004A4F 01:8A3F: 00        .byte $00   ; 
- D 0 - I - 0x004A50 01:8A40: 00        .byte $00   ; 
- D 0 - I - 0x004A51 01:8A41: 00        .byte $00   ; 
- D 0 - I - 0x004A52 01:8A42: 54        .byte $54   ; 
- D 0 - I - 0x004A53 01:8A43: 55        .byte $55   ; 
- D 0 - I - 0x004A54 01:8A44: 05        .byte $05   ; 
- D 0 - I - 0x004A55 01:8A45: 05        .byte $05   ; 
- D 0 - I - 0x004A56 01:8A46: 00        .byte $00   ; 
- D 0 - I - 0x004A57 01:8A47: 00        .byte $00   ; 
- D 0 - I - 0x004A58 01:8A48: 00        .byte $00   ; 
- D 0 - I - 0x004A59 01:8A49: 00        .byte $00   ; 
- D 0 - I - 0x004A5A 01:8A4A: 55        .byte $55   ; 
- D 0 - I - 0x004A5B 01:8A4B: 15        .byte $15   ; 
- D 0 - I - 0x004A5C 01:8A4C: 00        .byte $00   ; 
- D 0 - I - 0x004A5D 01:8A4D: 00        .byte $00   ; 
- D 0 - I - 0x004A5E 01:8A4E: 00        .byte $00   ; 
- D 0 - I - 0x004A5F 01:8A4F: 00        .byte $00   ; 
- D 0 - I - 0x004A60 01:8A50: 00        .byte $00   ; 
- D 0 - I - 0x004A61 01:8A51: 00        .byte $00   ; 
- D 0 - I - 0x004A62 01:8A52: 00        .byte $00   ; 
- D 0 - I - 0x004A63 01:8A53: 00        .byte $00   ; 
- D 0 - I - 0x004A64 01:8A54: 00        .byte $00   ; 
- D 0 - I - 0x004A65 01:8A55: 00        .byte $00   ; 
- D 0 - I - 0x004A66 01:8A56: 00        .byte $00   ; 
- D 0 - I - 0x004A67 01:8A57: 55        .byte $55   ; 
- D 0 - I - 0x004A68 01:8A58: 55        .byte $55   ; 
- D 0 - I - 0x004A69 01:8A59: 10        .byte $10   ; 
- D 0 - I - 0x004A6A 01:8A5A: 00        .byte $00   ; 
- D 0 - I - 0x004A6B 01:8A5B: 00        .byte $00   ; 
- D 0 - I - 0x004A6C 01:8A5C: 00        .byte $00   ; 
- D 0 - I - 0x004A6D 01:8A5D: 00        .byte $00   ; 
- D 0 - I - 0x004A6E 01:8A5E: 00        .byte $00   ; 
- D 0 - I - 0x004A6F 01:8A5F: 05        .byte $05   ; 
- D 0 - I - 0x004A70 01:8A60: 05        .byte $05   ; 
- D 0 - I - 0x004A71 01:8A61: 01        .byte $01   ; 
- D 0 - I - 0x004A72 01:8A62: 00        .byte $00   ; 
- D 0 - I - 0x004A73 01:8A63: 00        .byte $00   ; 
off_8A64_06:
- D 0 - I - 0x004A74 01:8A64: 07        .byte $07   ; 
off_8A65_06:
- D 0 - I - 0x004A75 01:8A65: 10        .byte $10   ; 
- D 0 - I - 0x004A76 01:8A66: 10        .byte $10   ; 
- D 0 - I - 0x004A77 01:8A67: 10        .byte $10   ; 
- D 0 - I - 0x004A78 01:8A68: 10        .byte $10   ; 
- D 0 - I - 0x004A79 01:8A69: 10        .byte $10   ; 
- D 0 - I - 0x004A7A 01:8A6A: 10        .byte $10   ; 
- D 0 - I - 0x004A7B 01:8A6B: 10        .byte $10   ; 
- D 0 - I - 0x004A7C 01:8A6C: 10        .byte $10   ; 
- D 0 - I - 0x004A7D 01:8A6D: 10        .byte $10   ; 
- D 0 - I - 0x004A7E 01:8A6E: 10        .byte $10   ; 
- D 0 - I - 0x004A7F 01:8A6F: 10        .byte $10   ; 
- D 0 - I - 0x004A80 01:8A70: 10        .byte $10   ; 
- D 0 - I - 0x004A81 01:8A71: 10        .byte $10   ; 
- D 0 - I - 0x004A82 01:8A72: 10        .byte $10   ; 
- D 0 - I - 0x004A83 01:8A73: 10        .byte $10   ; 
- D 0 - I - 0x004A84 01:8A74: 10        .byte $10   ; 
- D 0 - I - 0x004A85 01:8A75: 10        .byte $10   ; 
- D 0 - I - 0x004A86 01:8A76: 10        .byte $10   ; 
- D 0 - I - 0x004A87 01:8A77: 10        .byte $10   ; 
- D 0 - I - 0x004A88 01:8A78: 10        .byte $10   ; 
- D 0 - I - 0x004A89 01:8A79: 10        .byte $10   ; 
- D 0 - I - 0x004A8A 01:8A7A: 10        .byte $10   ; 
- D 0 - I - 0x004A8B 01:8A7B: 10        .byte $10   ; 
- D 0 - I - 0x004A8C 01:8A7C: 10        .byte $10   ; 
- D 0 - I - 0x004A8D 01:8A7D: 10        .byte $10   ; 
- D 0 - I - 0x004A8E 01:8A7E: 10        .byte $10   ; 
- D 0 - I - 0x004A8F 01:8A7F: 10        .byte $10   ; 
- D 0 - I - 0x004A90 01:8A80: 10        .byte $10   ; 
- D 0 - I - 0x004A91 01:8A81: 10        .byte $10   ; 
- D 0 - I - 0x004A92 01:8A82: 10        .byte $10   ; 
- D 0 - I - 0x004A93 01:8A83: 10        .byte $10   ; 
- D 0 - I - 0x004A94 01:8A84: 06        .byte $06   ; 
off_8A85_07:
off_8A85_1C:
- D 0 - I - 0x004A95 01:8A85: 2C        .byte $2C   ; 
off_8A86_05:
- D 0 - I - 0x004A96 01:8A86: 04        .byte $04   ; 
off_8A87_07:
off_8A87_0B:
off_8A87_0C:
off_8A87_13:
- D 0 - I - 0x004A97 01:8A87: 04        .byte $04   ; 
- D 0 - I - 0x004A98 01:8A88: 04        .byte $04   ; 
- D 0 - I - 0x004A99 01:8A89: 04        .byte $04   ; 
- D 0 - I - 0x004A9A 01:8A8A: 04        .byte $04   ; 
- D 0 - I - 0x004A9B 01:8A8B: 04        .byte $04   ; 
- D 0 - I - 0x004A9C 01:8A8C: 04        .byte $04   ; 
- D 0 - I - 0x004A9D 01:8A8D: 04        .byte $04   ; 
- D 0 - I - 0x004A9E 01:8A8E: 04        .byte $04   ; 
- D 0 - I - 0x004A9F 01:8A8F: 04        .byte $04   ; 
- D 0 - I - 0x004AA0 01:8A90: 04        .byte $04   ; 
- D 0 - I - 0x004AA1 01:8A91: 04        .byte $04   ; 
- D 0 - I - 0x004AA2 01:8A92: 04        .byte $04   ; 
- D 0 - I - 0x004AA3 01:8A93: 04        .byte $04   ; 
- D 0 - I - 0x004AA4 01:8A94: 04        .byte $04   ; 
- D 0 - I - 0x004AA5 01:8A95: 04        .byte $04   ; 
- D 0 - I - 0x004AA6 01:8A96: 04        .byte $04   ; 
- D 0 - I - 0x004AA7 01:8A97: 04        .byte $04   ; 
- D 0 - I - 0x004AA8 01:8A98: 04        .byte $04   ; 
- D 0 - I - 0x004AA9 01:8A99: 04        .byte $04   ; 
- D 0 - I - 0x004AAA 01:8A9A: 04        .byte $04   ; 
- D 0 - I - 0x004AAB 01:8A9B: 04        .byte $04   ; 
- D 0 - I - 0x004AAC 01:8A9C: 04        .byte $04   ; 
- D 0 - I - 0x004AAD 01:8A9D: 04        .byte $04   ; 
- D 0 - I - 0x004AAE 01:8A9E: 04        .byte $04   ; 
- D 0 - I - 0x004AAF 01:8A9F: 04        .byte $04   ; 
- D 0 - I - 0x004AB0 01:8AA0: 04        .byte $04   ; 
- D 0 - I - 0x004AB1 01:8AA1: 04        .byte $04   ; 
- D 0 - I - 0x004AB2 01:8AA2: 04        .byte $04   ; 
- D 0 - I - 0x004AB3 01:8AA3: 04        .byte $04   ; 
- D 0 - I - 0x004AB4 01:8AA4: 04        .byte $04   ; 
- D 0 - I - 0x004AB5 01:8AA5: 04        .byte $04   ; 
- D 0 - I - 0x004AB6 01:8AA6: 2B        .byte $2B   ; 
off_8AA7_08:
- D 0 - I - 0x004AB7 01:8AA7: 2C        .byte $2C   ; 
- D 0 - I - 0x004AB8 01:8AA8: 04        .byte $04   ; 
- D 0 - I - 0x004AB9 01:8AA9: 04        .byte $04   ; 
- D 0 - I - 0x004ABA 01:8AAA: 04        .byte $04   ; 
- D 0 - I - 0x004ABB 01:8AAB: 41        .byte $41   ; 
- D 0 - I - 0x004ABC 01:8AAC: 55        .byte $55   ; 
- D 0 - I - 0x004ABD 01:8AAD: 55        .byte $55   ; 
- D 0 - I - 0x004ABE 01:8AAE: 43        .byte $43   ; 
- D 0 - I - 0x004ABF 01:8AAF: 04        .byte $04   ; 
- D 0 - I - 0x004AC0 01:8AB0: 04        .byte $04   ; 
- D 0 - I - 0x004AC1 01:8AB1: 04        .byte $04   ; 
- D 0 - I - 0x004AC2 01:8AB2: 04        .byte $04   ; 
- D 0 - I - 0x004AC3 01:8AB3: 04        .byte $04   ; 
- D 0 - I - 0x004AC4 01:8AB4: 16        .byte $16   ; 
- D 0 - I - 0x004AC5 01:8AB5: 04        .byte $04   ; 
- D 0 - I - 0x004AC6 01:8AB6: 04        .byte $04   ; 
- D 0 - I - 0x004AC7 01:8AB7: 04        .byte $04   ; 
- D 0 - I - 0x004AC8 01:8AB8: 04        .byte $04   ; 
- D 0 - I - 0x004AC9 01:8AB9: 04        .byte $04   ; 
- D 0 - I - 0x004ACA 01:8ABA: 04        .byte $04   ; 
- D 0 - I - 0x004ACB 01:8ABB: 04        .byte $04   ; 
- D 0 - I - 0x004ACC 01:8ABC: 04        .byte $04   ; 
- D 0 - I - 0x004ACD 01:8ABD: 04        .byte $04   ; 
- D 0 - I - 0x004ACE 01:8ABE: 04        .byte $04   ; 
off_8ABF_08:
- D 0 - I - 0x004ACF 01:8ABF: 04        .byte $04   ; 
- D 0 - I - 0x004AD0 01:8AC0: 04        .byte $04   ; 
- D 0 - I - 0x004AD1 01:8AC1: 41        .byte $41   ; 
- D 0 - I - 0x004AD2 01:8AC2: 55        .byte $55   ; 
- D 0 - I - 0x004AD3 01:8AC3: 55        .byte $55   ; 
- D 0 - I - 0x004AD4 01:8AC4: 43        .byte $43   ; 
- D 0 - I - 0x004AD5 01:8AC5: 04        .byte $04   ; 
- D 0 - I - 0x004AD6 01:8AC6: 04        .byte $04   ; 
- D 0 - I - 0x004AD7 01:8AC7: 04        .byte $04   ; 
- D 0 - I - 0x004AD8 01:8AC8: 04        .byte $04   ; 
- D 0 - I - 0x004AD9 01:8AC9: 91        .byte $91   ; 
- D 0 - I - 0x004ADA 01:8ACA: 92        .byte $92   ; 
- D 0 - I - 0x004ADB 01:8ACB: 93        .byte $93   ; 
- D 0 - I - 0x004ADC 01:8ACC: 04        .byte $04   ; 
- D 0 - I - 0x004ADD 01:8ACD: 04        .byte $04   ; 
- D 0 - I - 0x004ADE 01:8ACE: 04        .byte $04   ; 
- D 0 - I - 0x004ADF 01:8ACF: 04        .byte $04   ; 
- D 0 - I - 0x004AE0 01:8AD0: 04        .byte $04   ; 
- D 0 - I - 0x004AE1 01:8AD1: 16        .byte $16   ; 
- D 0 - I - 0x004AE2 01:8AD2: 04        .byte $04   ; 
- D 0 - I - 0x004AE3 01:8AD3: 04        .byte $04   ; 
- D 0 - I - 0x004AE4 01:8AD4: 04        .byte $04   ; 
- D 0 - I - 0x004AE5 01:8AD5: 16        .byte $16   ; 
- D 0 - I - 0x004AE6 01:8AD6: 04        .byte $04   ; 
- - - - - - 0x004AE7 01:8AD7: 04        .byte $04   ; 
- - - - - - 0x004AE8 01:8AD8: 04        .byte $04   ; 
- - - - - - 0x004AE9 01:8AD9: 04        .byte $04   ; 
- - - - - - 0x004AEA 01:8ADA: 17        .byte $17   ; 
- - - - - - 0x004AEB 01:8ADB: 04        .byte $04   ; 
- - - - - - 0x004AEC 01:8ADC: 04        .byte $04   ; 
- - - - - - 0x004AED 01:8ADD: 04        .byte $04   ; 
- - - - - - 0x004AEE 01:8ADE: 04        .byte $04   ; 
off_8ADF_0A:
- D 0 - I - 0x004AEF 01:8ADF: 1C        .byte $1C   ; 
- D 0 - I - 0x004AF0 01:8AE0: 00        .byte $00   ; 
- D 0 - I - 0x004AF1 01:8AE1: 00        .byte $00   ; 
- D 0 - I - 0x004AF2 01:8AE2: 00        .byte $00   ; 
- D 0 - I - 0x004AF3 01:8AE3: 60        .byte $60   ; 
- D 0 - I - 0x004AF4 01:8AE4: 6C        .byte $6C   ; 
- D 0 - I - 0x004AF5 01:8AE5: 6E        .byte $6E   ; 
- D 0 - I - 0x004AF6 01:8AE6: 66        .byte $66   ; 
- D 0 - I - 0x004AF7 01:8AE7: 00        .byte $00   ; 
- D 0 - I - 0x004AF8 01:8AE8: 00        .byte $00   ; 
- D 0 - I - 0x004AF9 01:8AE9: 00        .byte $00   ; 
- D 0 - I - 0x004AFA 01:8AEA: 00        .byte $00   ; 
- D 0 - I - 0x004AFB 01:8AEB: 00        .byte $00   ; 
- D 0 - I - 0x004AFC 01:8AEC: 00        .byte $00   ; 
- D 0 - I - 0x004AFD 01:8AED: 00        .byte $00   ; 
- D 0 - I - 0x004AFE 01:8AEE: 00        .byte $00   ; 
- D 0 - I - 0x004AFF 01:8AEF: 00        .byte $00   ; 
- D 0 - I - 0x004B00 01:8AF0: 00        .byte $00   ; 
- D 0 - I - 0x004B01 01:8AF1: 00        .byte $00   ; 
- D 0 - I - 0x004B02 01:8AF2: 14        .byte $14   ; 
- D 0 - I - 0x004B03 01:8AF3: 00        .byte $00   ; 
- D 0 - I - 0x004B04 01:8AF4: 00        .byte $00   ; 
- D 0 - I - 0x004B05 01:8AF5: 00        .byte $00   ; 
- D 0 - I - 0x004B06 01:8AF6: 00        .byte $00   ; 
- D 0 - I - 0x004B07 01:8AF7: 40        .byte $40   ; 
- D 0 - I - 0x004B08 01:8AF8: 54        .byte $54   ; 
- D 0 - I - 0x004B09 01:8AF9: 7E        .byte $7E   ; 
- D 0 - I - 0x004B0A 01:8AFA: 6C        .byte $6C   ; 
off_8AFB_0A:
- D 0 - I - 0x004B0B 01:8AFB: 6C        .byte $6C   ; 
- D 0 - I - 0x004B0C 01:8AFC: 7C        .byte $7C   ; 
- D 0 - I - 0x004B0D 01:8AFD: 54        .byte $54   ; 
- D 0 - I - 0x004B0E 01:8AFE: 54        .byte $54   ; 
- D 0 - I - 0x004B0F 01:8AFF: 54        .byte $54   ; 
- D 0 - I - 0x004B10 01:8B00: 54        .byte $54   ; 
- D 0 - I - 0x004B11 01:8B01: 7E        .byte $7E   ; 
- D 0 - I - 0x004B12 01:8B02: 6E        .byte $6E   ; 
- D 0 - I - 0x004B13 01:8B03: 6C        .byte $6C   ; 
- D 0 - I - 0x004B14 01:8B04: 69        .byte $69   ; 
- D 0 - I - 0x004B15 01:8B05: 00        .byte $00   ; 
- D 0 - I - 0x004B16 01:8B06: 00        .byte $00   ; 
- D 0 - I - 0x004B17 01:8B07: 00        .byte $00   ; 
- D 0 - I - 0x004B18 01:8B08: 00        .byte $00   ; 
- D 0 - I - 0x004B19 01:8B09: 14        .byte $14   ; 
- D 0 - I - 0x004B1A 01:8B0A: 00        .byte $00   ; 
- D 0 - I - 0x004B1B 01:8B0B: 00        .byte $00   ; 
- D 0 - I - 0x004B1C 01:8B0C: 00        .byte $00   ; 
- D 0 - I - 0x004B1D 01:8B0D: 00        .byte $00   ; 
- D 0 - I - 0x004B1E 01:8B0E: 00        .byte $00   ; 
- D 0 - I - 0x004B1F 01:8B0F: 00        .byte $00   ; 
- D 0 - I - 0x004B20 01:8B10: 00        .byte $00   ; 
- D 0 - I - 0x004B21 01:8B11: 00        .byte $00   ; 
- D 0 - I - 0x004B22 01:8B12: 00        .byte $00   ; 
- D 0 - I - 0x004B23 01:8B13: 00        .byte $00   ; 
- D 0 - I - 0x004B24 01:8B14: 00        .byte $00   ; 
- D 0 - I - 0x004B25 01:8B15: 00        .byte $00   ; 
- D 0 - I - 0x004B26 01:8B16: 00        .byte $00   ; 
- D 0 - I - 0x004B27 01:8B17: 00        .byte $00   ; 
- D 0 - I - 0x004B28 01:8B18: 00        .byte $00   ; 
- D 0 - I - 0x004B29 01:8B19: 00        .byte $00   ; 
- D 0 - I - 0x004B2A 01:8B1A: 1B        .byte $1B   ; 
off_8B1B_0B:
- D 0 - I - 0x004B2B 01:8B1B: 2C        .byte $2C   ; 
- D 0 - I - 0x004B2C 01:8B1C: 04        .byte $04   ; 
- D 0 - I - 0x004B2D 01:8B1D: 04        .byte $04   ; 
- D 0 - I - 0x004B2E 01:8B1E: 49        .byte $49   ; 
- D 0 - I - 0x004B2F 01:8B1F: 61        .byte $61   ; 
- D 0 - I - 0x004B30 01:8B20: 6D        .byte $6D   ; 
- D 0 - I - 0x004B31 01:8B21: 6D        .byte $6D   ; 
- D 0 - I - 0x004B32 01:8B22: 6A        .byte $6A   ; 
- D 0 - I - 0x004B33 01:8B23: 04        .byte $04   ; 
- D 0 - I - 0x004B34 01:8B24: 04        .byte $04   ; 
- D 0 - I - 0x004B35 01:8B25: 04        .byte $04   ; 
- D 0 - I - 0x004B36 01:8B26: 04        .byte $04   ; 
- D 0 - I - 0x004B37 01:8B27: 04        .byte $04   ; 
- D 0 - I - 0x004B38 01:8B28: 04        .byte $04   ; 
- D 0 - I - 0x004B39 01:8B29: 04        .byte $04   ; 
- D 0 - I - 0x004B3A 01:8B2A: 04        .byte $04   ; 
- D 0 - I - 0x004B3B 01:8B2B: 16        .byte $16   ; 
- D 0 - I - 0x004B3C 01:8B2C: 04        .byte $04   ; 
- D 0 - I - 0x004B3D 01:8B2D: 04        .byte $04   ; 
- D 0 - I - 0x004B3E 01:8B2E: 04        .byte $04   ; 
- D 0 - I - 0x004B3F 01:8B2F: 04        .byte $04   ; 
- D 0 - I - 0x004B40 01:8B30: 04        .byte $04   ; 
- D 0 - I - 0x004B41 01:8B31: 04        .byte $04   ; 
- D 0 - I - 0x004B42 01:8B32: 04        .byte $04   ; 
- D 0 - I - 0x004B43 01:8B33: 61        .byte $61   ; 
- D 0 - I - 0x004B44 01:8B34: 71        .byte $71   ; 
- D 0 - I - 0x004B45 01:8B35: 6D        .byte $6D   ; 
- D 0 - I - 0x004B46 01:8B36: 6D        .byte $6D   ; 
- D 0 - I - 0x004B47 01:8B37: 6D        .byte $6D   ; 
off_8B38_04:
- D 0 - I - 0x004B48 01:8B38: 6D        .byte $6D   ; 
- D 0 - I - 0x004B49 01:8B39: 70        .byte $70   ; 
- D 0 - I - 0x004B4A 01:8B3A: 6D        .byte $6D   ; 
- D 0 - I - 0x004B4B 01:8B3B: 6D        .byte $6D   ; 
- D 0 - I - 0x004B4C 01:8B3C: 6D        .byte $6D   ; 
- D 0 - I - 0x004B4D 01:8B3D: 6B        .byte $6B   ; 
- D 0 - I - 0x004B4E 01:8B3E: 04        .byte $04   ; 
- D 0 - I - 0x004B4F 01:8B3F: 04        .byte $04   ; 
- D 0 - I - 0x004B50 01:8B40: 04        .byte $04   ; 
- D 0 - I - 0x004B51 01:8B41: 04        .byte $04   ; 
- D 0 - I - 0x004B52 01:8B42: 16        .byte $16   ; 
- D 0 - I - 0x004B53 01:8B43: 04        .byte $04   ; 
- D 0 - I - 0x004B54 01:8B44: 61        .byte $61   ; 
- D 0 - I - 0x004B55 01:8B45: 6D        .byte $6D   ; 
- D 0 - I - 0x004B56 01:8B46: 6D        .byte $6D   ; 
- D 0 - I - 0x004B57 01:8B47: 6D        .byte $6D   ; 
- D 0 - I - 0x004B58 01:8B48: 71        .byte $71   ; 
- D 0 - I - 0x004B59 01:8B49: 6A        .byte $6A   ; 
- D 0 - I - 0x004B5A 01:8B4A: 4F        .byte $4F   ; 
- D 0 - I - 0x004B5B 01:8B4B: 16        .byte $16   ; 
- D 0 - I - 0x004B5C 01:8B4C: 04        .byte $04   ; 
- D 0 - I - 0x004B5D 01:8B4D: 04        .byte $04   ; 
- D 0 - I - 0x004B5E 01:8B4E: 04        .byte $04   ; 
- D 0 - I - 0x004B5F 01:8B4F: 04        .byte $04   ; 
- D 0 - I - 0x004B60 01:8B50: 04        .byte $04   ; 
- D 0 - I - 0x004B61 01:8B51: 04        .byte $04   ; 
- D 0 - I - 0x004B62 01:8B52: 04        .byte $04   ; 
- D 0 - I - 0x004B63 01:8B53: 04        .byte $04   ; 
- D 0 - I - 0x004B64 01:8B54: 04        .byte $04   ; 
- D 0 - I - 0x004B65 01:8B55: 04        .byte $04   ; 
- D 0 - I - 0x004B66 01:8B56: 04        .byte $04   ; 
- D 0 - I - 0x004B67 01:8B57: 2B        .byte $2B   ; 
off_8B58_0C:
- D 0 - I - 0x004B68 01:8B58: 53        .byte $53   ; 
- D 0 - I - 0x004B69 01:8B59: 55        .byte $55   ; 
- D 0 - I - 0x004B6A 01:8B5A: 55        .byte $55   ; 
- D 0 - I - 0x004B6B 01:8B5B: 55        .byte $55   ; 
- D 0 - I - 0x004B6C 01:8B5C: 7F        .byte $7F   ; 
- D 0 - I - 0x004B6D 01:8B5D: 6D        .byte $6D   ; 
- D 0 - I - 0x004B6E 01:8B5E: 6D        .byte $6D   ; 
- D 0 - I - 0x004B6F 01:8B5F: 6B        .byte $6B   ; 
- D 0 - I - 0x004B70 01:8B60: 04        .byte $04   ; 
- D 0 - I - 0x004B71 01:8B61: 04        .byte $04   ; 
- D 0 - I - 0x004B72 01:8B62: 16        .byte $16   ; 
- D 0 - I - 0x004B73 01:8B63: 04        .byte $04   ; 
- D 0 - I - 0x004B74 01:8B64: 04        .byte $04   ; 
- D 0 - I - 0x004B75 01:8B65: 16        .byte $16   ; 
- D 0 - I - 0x004B76 01:8B66: 04        .byte $04   ; 
- D 0 - I - 0x004B77 01:8B67: 04        .byte $04   ; 
- D 0 - I - 0x004B78 01:8B68: 04        .byte $04   ; 
- D 0 - I - 0x004B79 01:8B69: 04        .byte $04   ; 
- D 0 - I - 0x004B7A 01:8B6A: 04        .byte $04   ; 
- D 0 - I - 0x004B7B 01:8B6B: 04        .byte $04   ; 
- D 0 - I - 0x004B7C 01:8B6C: 04        .byte $04   ; 
- D 0 - I - 0x004B7D 01:8B6D: 04        .byte $04   ; 
- D 0 - I - 0x004B7E 01:8B6E: 04        .byte $04   ; 
- D 0 - I - 0x004B7F 01:8B6F: 04        .byte $04   ; 
- D 0 - I - 0x004B80 01:8B70: 61        .byte $61   ; 
- D 0 - I - 0x004B81 01:8B71: 6D        .byte $6D   ; 
- D 0 - I - 0x004B82 01:8B72: 6D        .byte $6D   ; 
off_8B73_0C:
- D 0 - I - 0x004B83 01:8B73: 6D        .byte $6D   ; 
- D 0 - I - 0x004B84 01:8B74: 6D        .byte $6D   ; 
- D 0 - I - 0x004B85 01:8B75: 6D        .byte $6D   ; 
- D 0 - I - 0x004B86 01:8B76: 6D        .byte $6D   ; 
- D 0 - I - 0x004B87 01:8B77: 6D        .byte $6D   ; 
- D 0 - I - 0x004B88 01:8B78: 67        .byte $67   ; 
- D 0 - I - 0x004B89 01:8B79: 04        .byte $04   ; 
- D 0 - I - 0x004B8A 01:8B7A: 04        .byte $04   ; 
- D 0 - I - 0x004B8B 01:8B7B: 04        .byte $04   ; 
- D 0 - I - 0x004B8C 01:8B7C: 04        .byte $04   ; 
- D 0 - I - 0x004B8D 01:8B7D: 04        .byte $04   ; 
- D 0 - I - 0x004B8E 01:8B7E: 04        .byte $04   ; 
- D 0 - I - 0x004B8F 01:8B7F: 04        .byte $04   ; 
- D 0 - I - 0x004B90 01:8B80: 04        .byte $04   ; 
- D 0 - I - 0x004B91 01:8B81: 04        .byte $04   ; 
- D 0 - I - 0x004B92 01:8B82: 04        .byte $04   ; 
- D 0 - I - 0x004B93 01:8B83: 04        .byte $04   ; 
- D 0 - I - 0x004B94 01:8B84: 04        .byte $04   ; 
- D 0 - I - 0x004B95 01:8B85: 04        .byte $04   ; 
- D 0 - I - 0x004B96 01:8B86: 04        .byte $04   ; 
- D 0 - I - 0x004B97 01:8B87: 04        .byte $04   ; 
- D 0 - I - 0x004B98 01:8B88: 04        .byte $04   ; 
- D 0 - I - 0x004B99 01:8B89: 04        .byte $04   ; 
- D 0 - I - 0x004B9A 01:8B8A: 04        .byte $04   ; 
- D 0 - I - 0x004B9B 01:8B8B: 04        .byte $04   ; 
- D 0 - I - 0x004B9C 01:8B8C: 04        .byte $04   ; 
- D 0 - I - 0x004B9D 01:8B8D: 04        .byte $04   ; 
- D 0 - I - 0x004B9E 01:8B8E: 04        .byte $04   ; 
- D 0 - I - 0x004B9F 01:8B8F: 41        .byte $41   ; 
- D 0 - I - 0x004BA0 01:8B90: 55        .byte $55   ; 
- D 0 - I - 0x004BA1 01:8B91: 55        .byte $55   ; 
- D 0 - I - 0x004BA2 01:8B92: 52        .byte $52   ; 
off_8B93_0D:
- D 0 - I - 0x004BA3 01:8B93: 73        .byte $73   ; 
- D 0 - I - 0x004BA4 01:8B94: 6C        .byte $6C   ; 
- D 0 - I - 0x004BA5 01:8B95: 6C        .byte $6C   ; 
- D 0 - I - 0x004BA6 01:8B96: 6E        .byte $6E   ; 
- D 0 - I - 0x004BA7 01:8B97: 6C        .byte $6C   ; 
- D 0 - I - 0x004BA8 01:8B98: 78        .byte $78   ; 
- D 0 - I - 0x004BA9 01:8B99: 5C        .byte $5C   ; 
- D 0 - I - 0x004BAA 01:8B9A: 46        .byte $46   ; 
- D 0 - I - 0x004BAB 01:8B9B: 00        .byte $00   ; 
- D 0 - I - 0x004BAC 01:8B9C: 00        .byte $00   ; 
- D 0 - I - 0x004BAD 01:8B9D: 00        .byte $00   ; 
- D 0 - I - 0x004BAE 01:8B9E: 00        .byte $00   ; 
- D 0 - I - 0x004BAF 01:8B9F: 00        .byte $00   ; 
- D 0 - I - 0x004BB0 01:8BA0: 00        .byte $00   ; 
- D 0 - I - 0x004BB1 01:8BA1: 00        .byte $00   ; 
- D 0 - I - 0x004BB2 01:8BA2: 00        .byte $00   ; 
- D 0 - I - 0x004BB3 01:8BA3: 00        .byte $00   ; 
- D 0 - I - 0x004BB4 01:8BA4: 00        .byte $00   ; 
- D 0 - I - 0x004BB5 01:8BA5: 00        .byte $00   ; 
- D 0 - I - 0x004BB6 01:8BA6: 00        .byte $00   ; 
- D 0 - I - 0x004BB7 01:8BA7: 00        .byte $00   ; 
- D 0 - I - 0x004BB8 01:8BA8: 00        .byte $00   ; 
- D 0 - I - 0x004BB9 01:8BA9: 00        .byte $00   ; 
- D 0 - I - 0x004BBA 01:8BAA: 00        .byte $00   ; 
- D 0 - I - 0x004BBB 01:8BAB: 44        .byte $44   ; 
- D 0 - I - 0x004BBC 01:8BAC: 5A        .byte $5A   ; 
- D 0 - I - 0x004BBD 01:8BAD: 5A        .byte $5A   ; 
- D 0 - I - 0x004BBE 01:8BAE: 5A        .byte $5A   ; 
- D 0 - I - 0x004BBF 01:8BAF: 7A        .byte $7A   ; 
off_8BB0_06:
- D 0 - I - 0x004BC0 01:8BB0: 6C        .byte $6C   ; 
- D 0 - I - 0x004BC1 01:8BB1: 6C        .byte $6C   ; 
- D 0 - I - 0x004BC2 01:8BB2: 6C        .byte $6C   ; 
- D 0 - I - 0x004BC3 01:8BB3: 7C        .byte $7C   ; 
- D 0 - I - 0x004BC4 01:8BB4: 54        .byte $54   ; 
- D 0 - I - 0x004BC5 01:8BB5: 42        .byte $42   ; 
- D 0 - I - 0x004BC6 01:8BB6: 00        .byte $00   ; 
- D 0 - I - 0x004BC7 01:8BB7: 00        .byte $00   ; 
- D 0 - I - 0x004BC8 01:8BB8: 00        .byte $00   ; 
- D 0 - I - 0x004BC9 01:8BB9: 00        .byte $00   ; 
- D 0 - I - 0x004BCA 01:8BBA: 00        .byte $00   ; 
- D 0 - I - 0x004BCB 01:8BBB: 00        .byte $00   ; 
- D 0 - I - 0x004BCC 01:8BBC: 00        .byte $00   ; 
- D 0 - I - 0x004BCD 01:8BBD: 00        .byte $00   ; 
- D 0 - I - 0x004BCE 01:8BBE: 00        .byte $00   ; 
- D 0 - I - 0x004BCF 01:8BBF: 14        .byte $14   ; 
- D 0 - I - 0x004BD0 01:8BC0: 00        .byte $00   ; 
- D 0 - I - 0x004BD1 01:8BC1: 00        .byte $00   ; 
- D 0 - I - 0x004BD2 01:8BC2: 00        .byte $00   ; 
- D 0 - I - 0x004BD3 01:8BC3: 00        .byte $00   ; 
- D 0 - I - 0x004BD4 01:8BC4: 00        .byte $00   ; 
- D 0 - I - 0x004BD5 01:8BC5: 00        .byte $00   ; 
- D 0 - I - 0x004BD6 01:8BC6: 15        .byte $15   ; 
- D 0 - I - 0x004BD7 01:8BC7: 00        .byte $00   ; 
- D 0 - I - 0x004BD8 01:8BC8: 00        .byte $00   ; 
- D 0 - I - 0x004BD9 01:8BC9: 00        .byte $00   ; 
- D 0 - I - 0x004BDA 01:8BCA: 00        .byte $00   ; 
- D 0 - I - 0x004BDB 01:8BCB: 00        .byte $00   ; 
- D 0 - I - 0x004BDC 01:8BCC: 00        .byte $00   ; 
- D 0 - I - 0x004BDD 01:8BCD: 00        .byte $00   ; 
- D 0 - I - 0x004BDE 01:8BCE: 00        .byte $00   ; 
- D 0 - I - 0x004BDF 01:8BCF: 1B        .byte $1B   ; 
off_8BD0_0E:
- D 0 - I - 0x004BE0 01:8BD0: 73        .byte $73   ; 
- D 0 - I - 0x004BE1 01:8BD1: 6C        .byte $6C   ; 
- D 0 - I - 0x004BE2 01:8BD2: 6C        .byte $6C   ; 
- D 0 - I - 0x004BE3 01:8BD3: 6C        .byte $6C   ; 
- D 0 - I - 0x004BE4 01:8BD4: 6C        .byte $6C   ; 
- D 0 - I - 0x004BE5 01:8BD5: 68        .byte $68   ; 
- D 0 - I - 0x004BE6 01:8BD6: 4E        .byte $4E   ; 
- D 0 - I - 0x004BE7 01:8BD7: 00        .byte $00   ; 
- D 0 - I - 0x004BE8 01:8BD8: 00        .byte $00   ; 
- D 0 - I - 0x004BE9 01:8BD9: 00        .byte $00   ; 
- D 0 - I - 0x004BEA 01:8BDA: 00        .byte $00   ; 
- D 0 - I - 0x004BEB 01:8BDB: 00        .byte $00   ; 
- D 0 - I - 0x004BEC 01:8BDC: 00        .byte $00   ; 
- D 0 - I - 0x004BED 01:8BDD: 00        .byte $00   ; 
- D 0 - I - 0x004BEE 01:8BDE: 00        .byte $00   ; 
- D 0 - I - 0x004BEF 01:8BDF: 00        .byte $00   ; 
- D 0 - I - 0x004BF0 01:8BE0: 00        .byte $00   ; 
- D 0 - I - 0x004BF1 01:8BE1: 14        .byte $14   ; 
- D 0 - I - 0x004BF2 01:8BE2: 00        .byte $00   ; 
- D 0 - I - 0x004BF3 01:8BE3: 00        .byte $00   ; 
- D 0 - I - 0x004BF4 01:8BE4: 00        .byte $00   ; 
- D 0 - I - 0x004BF5 01:8BE5: 14        .byte $14   ; 
- D 0 - I - 0x004BF6 01:8BE6: 00        .byte $00   ; 
- D 0 - I - 0x004BF7 01:8BE7: 00        .byte $00   ; 
- D 0 - I - 0x004BF8 01:8BE8: 00        .byte $00   ; 
- D 0 - I - 0x004BF9 01:8BE9: 00        .byte $00   ; 
- D 0 - I - 0x004BFA 01:8BEA: 00        .byte $00   ; 
- D 0 - I - 0x004BFB 01:8BEB: 4C        .byte $4C   ; 
- D 0 - I - 0x004BFC 01:8BEC: 60        .byte $60   ; 
off_8BED_06:
- D 0 - I - 0x004BFD 01:8BED: 6C        .byte $6C   ; 
- D 0 - I - 0x004BFE 01:8BEE: 6C        .byte $6C   ; 
- D 0 - I - 0x004BFF 01:8BEF: 6E        .byte $6E   ; 
- D 0 - I - 0x004C00 01:8BF0: 66        .byte $66   ; 
- D 0 - I - 0x004C01 01:8BF1: 4E        .byte $4E   ; 
- D 0 - I - 0x004C02 01:8BF2: 00        .byte $00   ; 
- D 0 - I - 0x004C03 01:8BF3: 00        .byte $00   ; 
- D 0 - I - 0x004C04 01:8BF4: 00        .byte $00   ; 
- D 0 - I - 0x004C05 01:8BF5: 00        .byte $00   ; 
- D 0 - I - 0x004C06 01:8BF6: 00        .byte $00   ; 
- D 0 - I - 0x004C07 01:8BF7: 00        .byte $00   ; 
- D 0 - I - 0x004C08 01:8BF8: 00        .byte $00   ; 
- D 0 - I - 0x004C09 01:8BF9: 00        .byte $00   ; 
- D 0 - I - 0x004C0A 01:8BFA: 00        .byte $00   ; 
- D 0 - I - 0x004C0B 01:8BFB: 00        .byte $00   ; 
- D 0 - I - 0x004C0C 01:8BFC: 14        .byte $14   ; 
- D 0 - I - 0x004C0D 01:8BFD: 00        .byte $00   ; 
- D 0 - I - 0x004C0E 01:8BFE: 00        .byte $00   ; 
- D 0 - I - 0x004C0F 01:8BFF: 00        .byte $00   ; 
- D 0 - I - 0x004C10 01:8C00: 00        .byte $00   ; 
- D 0 - I - 0x004C11 01:8C01: 00        .byte $00   ; 
- D 0 - I - 0x004C12 01:8C02: 00        .byte $00   ; 
- D 0 - I - 0x004C13 01:8C03: 15        .byte $15   ; 
- D 0 - I - 0x004C14 01:8C04: 00        .byte $00   ; 
- D 0 - I - 0x004C15 01:8C05: 00        .byte $00   ; 
- D 0 - I - 0x004C16 01:8C06: 00        .byte $00   ; 
- D 0 - I - 0x004C17 01:8C07: 00        .byte $00   ; 
- D 0 - I - 0x004C18 01:8C08: 00        .byte $00   ; 
- D 0 - I - 0x004C19 01:8C09: 00        .byte $00   ; 
- D 0 - I - 0x004C1A 01:8C0A: 00        .byte $00   ; 
- D 0 - I - 0x004C1B 01:8C0B: 00        .byte $00   ; 
- D 0 - I - 0x004C1C 01:8C0C: 1B        .byte $1B   ; 
off_8C0D_0F:
- D 0 - I - 0x004C1D 01:8C0D: 75        .byte $75   ; 
- D 0 - I - 0x004C1E 01:8C0E: 71        .byte $71   ; 
- D 0 - I - 0x004C1F 01:8C0F: 6D        .byte $6D   ; 
- D 0 - I - 0x004C20 01:8C10: 79        .byte $79   ; 
- D 0 - I - 0x004C21 01:8C11: 5E        .byte $5E   ; 
- D 0 - I - 0x004C22 01:8C12: 47        .byte $47   ; 
- D 0 - I - 0x004C23 01:8C13: 04        .byte $04   ; 
- D 0 - I - 0x004C24 01:8C14: 16        .byte $16   ; 
- D 0 - I - 0x004C25 01:8C15: 04        .byte $04   ; 
- D 0 - I - 0x004C26 01:8C16: 04        .byte $04   ; 
- D 0 - I - 0x004C27 01:8C17: 04        .byte $04   ; 
- D 0 - I - 0x004C28 01:8C18: 16        .byte $16   ; 
- D 0 - I - 0x004C29 01:8C19: 04        .byte $04   ; 
- D 0 - I - 0x004C2A 01:8C1A: 04        .byte $04   ; 
- D 0 - I - 0x004C2B 01:8C1B: 04        .byte $04   ; 
- D 0 - I - 0x004C2C 01:8C1C: 17        .byte $17   ; 
- D 0 - I - 0x004C2D 01:8C1D: 04        .byte $04   ; 
- D 0 - I - 0x004C2E 01:8C1E: 04        .byte $04   ; 
- D 0 - I - 0x004C2F 01:8C1F: 04        .byte $04   ; 
- D 0 - I - 0x004C30 01:8C20: 04        .byte $04   ; 
- D 0 - I - 0x004C31 01:8C21: 04        .byte $04   ; 
- D 0 - I - 0x004C32 01:8C22: 04        .byte $04   ; 
- D 0 - I - 0x004C33 01:8C23: 04        .byte $04   ; 
- D 0 - I - 0x004C34 01:8C24: 04        .byte $04   ; 
- D 0 - I - 0x004C35 01:8C25: 04        .byte $04   ; 
- D 0 - I - 0x004C36 01:8C26: 04        .byte $04   ; 
- D 0 - I - 0x004C37 01:8C27: 04        .byte $04   ; 
- D 0 - I - 0x004C38 01:8C28: 16        .byte $16   ; 
- D 0 - I - 0x004C39 01:8C29: 45        .byte $45   ; 
off_8C2A_09:
- D 0 - I - 0x004C3A 01:8C2A: 5B        .byte $5B   ; 
- D 0 - I - 0x004C3B 01:8C2B: 5B        .byte $5B   ; 
- D 0 - I - 0x004C3C 01:8C2C: 5B        .byte $5B   ; 
- D 0 - I - 0x004C3D 01:8C2D: 5B        .byte $5B   ; 
- D 0 - I - 0x004C3E 01:8C2E: 7B        .byte $7B   ; 
- D 0 - I - 0x004C3F 01:8C2F: 6D        .byte $6D   ; 
- D 0 - I - 0x004C40 01:8C30: 70        .byte $70   ; 
- D 0 - I - 0x004C41 01:8C31: 6A        .byte $6A   ; 
- D 0 - I - 0x004C42 01:8C32: 04        .byte $04   ; 
- D 0 - I - 0x004C43 01:8C33: 04        .byte $04   ; 
- D 0 - I - 0x004C44 01:8C34: 04        .byte $04   ; 
- D 0 - I - 0x004C45 01:8C35: 04        .byte $04   ; 
- D 0 - I - 0x004C46 01:8C36: 16        .byte $16   ; 
- D 0 - I - 0x004C47 01:8C37: 04        .byte $04   ; 
- D 0 - I - 0x004C48 01:8C38: 04        .byte $04   ; 
- D 0 - I - 0x004C49 01:8C39: 04        .byte $04   ; 
- D 0 - I - 0x004C4A 01:8C3A: 34        .byte $34   ; 
off_8C3B_04:
- D 0 - I - 0x004C4B 01:8C3B: 04        .byte $04   ; 
- D 0 - I - 0x004C4C 01:8C3C: 04        .byte $04   ; 
- D 0 - I - 0x004C4D 01:8C3D: 04        .byte $04   ; 
- D 0 - I - 0x004C4E 01:8C3E: 04        .byte $04   ; 
- D 0 - I - 0x004C4F 01:8C3F: 04        .byte $04   ; 
- D 0 - I - 0x004C50 01:8C40: 04        .byte $04   ; 
- D 0 - I - 0x004C51 01:8C41: 16        .byte $16   ; 
- - - - - - 0x004C52 01:8C42: 04        .byte $04   ; 
- - - - - - 0x004C53 01:8C43: 04        .byte $04   ; 
- D 0 - I - 0x004C54 01:8C44: 04        .byte $04   ; 
- D 0 - I - 0x004C55 01:8C45: 04        .byte $04   ; 
- D 0 - I - 0x004C56 01:8C46: 04        .byte $04   ; 
- D 0 - I - 0x004C57 01:8C47: 04        .byte $04   ; 
- D 0 - I - 0x004C58 01:8C48: 04        .byte $04   ; 
- D 0 - I - 0x004C59 01:8C49: 04        .byte $04   ; 
- D 0 - I - 0x004C5A 01:8C4A: 37        .byte $37   ; 
- D 0 - I - 0x004C5B 01:8C4B: 2C        .byte $2C   ; 
- D 0 - I - 0x004C5C 01:8C4C: 04        .byte $04   ; 
- D 0 - I - 0x004C5D 01:8C4D: 04        .byte $04   ; 
- D 0 - I - 0x004C5E 01:8C4E: 04        .byte $04   ; 
- D 0 - I - 0x004C5F 01:8C4F: 04        .byte $04   ; 
- D 0 - I - 0x004C60 01:8C50: 04        .byte $04   ; 
- D 0 - I - 0x004C61 01:8C51: 16        .byte $16   ; 
- D 0 - I - 0x004C62 01:8C52: 04        .byte $04   ; 
- D 0 - I - 0x004C63 01:8C53: 04        .byte $04   ; 
- D 0 - I - 0x004C64 01:8C54: 04        .byte $04   ; 
- D 0 - I - 0x004C65 01:8C55: 04        .byte $04   ; 
- D 0 - I - 0x004C66 01:8C56: 2B        .byte $2B   ; 
- D 0 - I - 0x004C67 01:8C57: 30        .byte $30   ; 
- D 0 - I - 0x004C68 01:8C58: 04        .byte $04   ; 
- D 0 - I - 0x004C69 01:8C59: 61        .byte $61   ; 
off_8C5A_0B:
- D 0 - I - 0x004C6A 01:8C5A: 71        .byte $71   ; 
- D 0 - I - 0x004C6B 01:8C5B: 6D        .byte $6D   ; 
- D 0 - I - 0x004C6C 01:8C5C: 6D        .byte $6D   ; 
- D 0 - I - 0x004C6D 01:8C5D: 6D        .byte $6D   ; 
- D 0 - I - 0x004C6E 01:8C5E: 6D        .byte $6D   ; 
- D 0 - I - 0x004C6F 01:8C5F: 79        .byte $79   ; 
- D 0 - I - 0x004C70 01:8C60: 5B        .byte $5B   ; 
- D 0 - I - 0x004C71 01:8C61: 5E        .byte $5E   ; 
- D 0 - I - 0x004C72 01:8C62: 5F        .byte $5F   ; 
- D 0 - I - 0x004C73 01:8C63: 47        .byte $47   ; 
- D 0 - I - 0x004C74 01:8C64: 04        .byte $04   ; 
- D 0 - I - 0x004C75 01:8C65: 04        .byte $04   ; 
- D 0 - I - 0x004C76 01:8C66: 04        .byte $04   ; 
- D 0 - I - 0x004C77 01:8C67: 04        .byte $04   ; 
- D 0 - I - 0x004C78 01:8C68: 04        .byte $04   ; 
- D 0 - I - 0x004C79 01:8C69: 04        .byte $04   ; 
- D 0 - I - 0x004C7A 01:8C6A: 04        .byte $04   ; 
- D 0 - I - 0x004C7B 01:8C6B: 04        .byte $04   ; 
- D 0 - I - 0x004C7C 01:8C6C: 04        .byte $04   ; 
- D 0 - I - 0x004C7D 01:8C6D: 04        .byte $04   ; 
- D 0 - I - 0x004C7E 01:8C6E: 04        .byte $04   ; 
- D 0 - I - 0x004C7F 01:8C6F: 04        .byte $04   ; 
- D 0 - I - 0x004C80 01:8C70: 04        .byte $04   ; 
- D 0 - I - 0x004C81 01:8C71: 04        .byte $04   ; 
- D 0 - I - 0x004C82 01:8C72: 04        .byte $04   ; 
- D 0 - I - 0x004C83 01:8C73: 04        .byte $04   ; 
- D 0 - I - 0x004C84 01:8C74: 04        .byte $04   ; 
- D 0 - I - 0x004C85 01:8C75: 04        .byte $04   ; 
- D 0 - I - 0x004C86 01:8C76: 04        .byte $04   ; 
- D 0 - I - 0x004C87 01:8C77: 04        .byte $04   ; 
- D 0 - I - 0x004C88 01:8C78: 04        .byte $04   ; 
- D 0 - I - 0x004C89 01:8C79: 2B        .byte $2B   ; 
off_8C7A_10:
- D 0 - I - 0x004C8A 01:8C7A: 75        .byte $75   ; 
- D 0 - I - 0x004C8B 01:8C7B: 6D        .byte $6D   ; 
- D 0 - I - 0x004C8C 01:8C7C: 6D        .byte $6D   ; 
- D 0 - I - 0x004C8D 01:8C7D: 6A        .byte $6A   ; 
- D 0 - I - 0x004C8E 01:8C7E: 4F        .byte $4F   ; 
- D 0 - I - 0x004C8F 01:8C7F: 04        .byte $04   ; 
- D 0 - I - 0x004C90 01:8C80: 17        .byte $17   ; 
off_8C81_0F:
- D 0 - I - 0x004C91 01:8C81: 04        .byte $04   ; 
- D 0 - I - 0x004C92 01:8C82: 04        .byte $04   ; 
- D 0 - I - 0x004C93 01:8C83: 04        .byte $04   ; 
- D 0 - I - 0x004C94 01:8C84: 04        .byte $04   ; 
- D 0 - I - 0x004C95 01:8C85: 04        .byte $04   ; 
- D 0 - I - 0x004C96 01:8C86: 04        .byte $04   ; 
- D 0 - I - 0x004C97 01:8C87: 04        .byte $04   ; 
- D 0 - I - 0x004C98 01:8C88: 04        .byte $04   ; 
- D 0 - I - 0x004C99 01:8C89: 04        .byte $04   ; 
- D 0 - I - 0x004C9A 01:8C8A: 04        .byte $04   ; 
- D 0 - I - 0x004C9B 01:8C8B: 04        .byte $04   ; 
- D 0 - I - 0x004C9C 01:8C8C: 04        .byte $04   ; 
- D 0 - I - 0x004C9D 01:8C8D: 04        .byte $04   ; 
- D 0 - I - 0x004C9E 01:8C8E: 04        .byte $04   ; 
- D 0 - I - 0x004C9F 01:8C8F: 04        .byte $04   ; 
- D 0 - I - 0x004CA0 01:8C90: 04        .byte $04   ; 
- D 0 - I - 0x004CA1 01:8C91: 04        .byte $04   ; 
- D 0 - I - 0x004CA2 01:8C92: 04        .byte $04   ; 
- D 0 - I - 0x004CA3 01:8C93: 04        .byte $04   ; 
- D 0 - I - 0x004CA4 01:8C94: 04        .byte $04   ; 
- D 0 - I - 0x004CA5 01:8C95: 04        .byte $04   ; 
- D 0 - I - 0x004CA6 01:8C96: 04        .byte $04   ; 
- D 0 - I - 0x004CA7 01:8C97: 04        .byte $04   ; 
- D 0 - I - 0x004CA8 01:8C98: 04        .byte $04   ; 
- D 0 - I - 0x004CA9 01:8C99: 04        .byte $04   ; 
- D 0 - I - 0x004CAA 01:8C9A: 17        .byte $17   ; 
- D 0 - I - 0x004CAB 01:8C9B: 04        .byte $04   ; 
- D 0 - I - 0x004CAC 01:8C9C: 04        .byte $04   ; 
- D 0 - I - 0x004CAD 01:8C9D: 04        .byte $04   ; 
- D 0 - I - 0x004CAE 01:8C9E: 04        .byte $04   ; 
- D 0 - I - 0x004CAF 01:8C9F: 04        .byte $04   ; 
- D 0 - I - 0x004CB0 01:8CA0: 2B        .byte $2B   ; 
off_8CA1_11:
- D 0 - I - 0x004CB1 01:8CA1: 57        .byte $57   ; 
- D 0 - I - 0x004CB2 01:8CA2: 5C        .byte $5C   ; 
- D 0 - I - 0x004CB3 01:8CA3: 5D        .byte $5D   ; 
- D 0 - I - 0x004CB4 01:8CA4: 46        .byte $46   ; 
- D 0 - I - 0x004CB5 01:8CA5: 00        .byte $00   ; 
- D 0 - I - 0x004CB6 01:8CA6: 00        .byte $00   ; 
- D 0 - I - 0x004CB7 01:8CA7: 00        .byte $00   ; 
- D 0 - I - 0x004CB8 01:8CA8: 00        .byte $00   ; 
- D 0 - I - 0x004CB9 01:8CA9: 00        .byte $00   ; 
- D 0 - I - 0x004CBA 01:8CAA: 14        .byte $14   ; 
- D 0 - I - 0x004CBB 01:8CAB: 00        .byte $00   ; 
- D 0 - I - 0x004CBC 01:8CAC: 00        .byte $00   ; 
- D 0 - I - 0x004CBD 01:8CAD: 00        .byte $00   ; 
- D 0 - I - 0x004CBE 01:8CAE: 00        .byte $00   ; 
- D 0 - I - 0x004CBF 01:8CAF: 00        .byte $00   ; 
- D 0 - I - 0x004CC0 01:8CB0: 14        .byte $14   ; 
- D 0 - I - 0x004CC1 01:8CB1: 00        .byte $00   ; 
- D 0 - I - 0x004CC2 01:8CB2: 00        .byte $00   ; 
- D 0 - I - 0x004CC3 01:8CB3: 00        .byte $00   ; 
- D 0 - I - 0x004CC4 01:8CB4: 14        .byte $14   ; 
- D 0 - I - 0x004CC5 01:8CB5: 00        .byte $00   ; 
- D 0 - I - 0x004CC6 01:8CB6: 00        .byte $00   ; 
- D 0 - I - 0x004CC7 01:8CB7: 00        .byte $00   ; 
- D 0 - I - 0x004CC8 01:8CB8: 14        .byte $14   ; 
- D 0 - I - 0x004CC9 01:8CB9: 00        .byte $00   ; 
off_8CBA_07:
- D 0 - I - 0x004CCA 01:8CBA: 00        .byte $00   ; 
- D 0 - I - 0x004CCB 01:8CBB: 00        .byte $00   ; 
- D 0 - I - 0x004CCC 01:8CBC: 15        .byte $15   ; 
- D 0 - I - 0x004CCD 01:8CBD: 00        .byte $00   ; 
- D 0 - I - 0x004CCE 01:8CBE: 00        .byte $00   ; 
- D 0 - I - 0x004CCF 01:8CBF: 14        .byte $14   ; 
- D 0 - I - 0x004CD0 01:8CC0: 00        .byte $00   ; 
- D 0 - I - 0x004CD1 01:8CC1: 00        .byte $00   ; 
- D 0 - I - 0x004CD2 01:8CC2: 00        .byte $00   ; 
- D 0 - I - 0x004CD3 01:8CC3: 14        .byte $14   ; 
- D 0 - I - 0x004CD4 01:8CC4: 00        .byte $00   ; 
- D 0 - I - 0x004CD5 01:8CC5: 00        .byte $00   ; 
- D 0 - I - 0x004CD6 01:8CC6: 00        .byte $00   ; 
- D 0 - I - 0x004CD7 01:8CC7: 00        .byte $00   ; 
- D 0 - I - 0x004CD8 01:8CC8: 00        .byte $00   ; 
- D 0 - I - 0x004CD9 01:8CC9: 00        .byte $00   ; 
- D 0 - I - 0x004CDA 01:8CCA: 22        .byte $22   ; 
- D 0 - I - 0x004CDB 01:8CCB: 00        .byte $00   ; 
- D 0 - I - 0x004CDC 01:8CCC: 00        .byte $00   ; 
- D 0 - I - 0x004CDD 01:8CCD: 00        .byte $00   ; 
- D 0 - I - 0x004CDE 01:8CCE: 00        .byte $00   ; 
- D 0 - I - 0x004CDF 01:8CCF: 00        .byte $00   ; 
- D 0 - I - 0x004CE0 01:8CD0: 00        .byte $00   ; 
- D 0 - I - 0x004CE1 01:8CD1: 00        .byte $00   ; 
- - - - - - 0x004CE2 01:8CD2: 00        .byte $00   ; 
- - - - - - 0x004CE3 01:8CD3: 00        .byte $00   ; 
- - - - - - 0x004CE4 01:8CD4: 00        .byte $00   ; 
- - - - - - 0x004CE5 01:8CD5: 00        .byte $00   ; 
- - - - - - 0x004CE6 01:8CD6: 00        .byte $00   ; 
- - - - - - 0x004CE7 01:8CD7: 00        .byte $00   ; 
- - - - - - 0x004CE8 01:8CD8: 00        .byte $00   ; 
- - - - - - 0x004CE9 01:8CD9: 00        .byte $00   ; 
off_8CDA_12:
- D 0 - I - 0x004CEA 01:8CDA: 1C        .byte $1C   ; 
- D 0 - I - 0x004CEB 01:8CDB: 00        .byte $00   ; 
- D 0 - I - 0x004CEC 01:8CDC: 00        .byte $00   ; 
off_8CDD_0E:
- D 0 - I - 0x004CED 01:8CDD: 00        .byte $00   ; 
- D 0 - I - 0x004CEE 01:8CDE: 00        .byte $00   ; 
- D 0 - I - 0x004CEF 01:8CDF: 14        .byte $14   ; 
- D 0 - I - 0x004CF0 01:8CE0: 00        .byte $00   ; 
- D 0 - I - 0x004CF1 01:8CE1: 00        .byte $00   ; 
- D 0 - I - 0x004CF2 01:8CE2: 00        .byte $00   ; 
- D 0 - I - 0x004CF3 01:8CE3: 00        .byte $00   ; 
- D 0 - I - 0x004CF4 01:8CE4: 00        .byte $00   ; 
- D 0 - I - 0x004CF5 01:8CE5: 00        .byte $00   ; 
off_8CE6_0F:
- D 0 - I - 0x004CF6 01:8CE6: 00        .byte $00   ; 
- D 0 - I - 0x004CF7 01:8CE7: 14        .byte $14   ; 
- D 0 - I - 0x004CF8 01:8CE8: 00        .byte $00   ; 
- D 0 - I - 0x004CF9 01:8CE9: 00        .byte $00   ; 
- D 0 - I - 0x004CFA 01:8CEA: 00        .byte $00   ; 
- D 0 - I - 0x004CFB 01:8CEB: 00        .byte $00   ; 
- D 0 - I - 0x004CFC 01:8CEC: 00        .byte $00   ; 
- D 0 - I - 0x004CFD 01:8CED: 00        .byte $00   ; 
- D 0 - I - 0x004CFE 01:8CEE: 00        .byte $00   ; 
off_8CEF_11:
- D 0 - I - 0x004CFF 01:8CEF: 00        .byte $00   ; 
- D 0 - I - 0x004D00 01:8CF0: 00        .byte $00   ; 
- D 0 - I - 0x004D01 01:8CF1: 00        .byte $00   ; 
- D 0 - I - 0x004D02 01:8CF2: 00        .byte $00   ; 
- D 0 - I - 0x004D03 01:8CF3: 00        .byte $00   ; 
- D 0 - I - 0x004D04 01:8CF4: 00        .byte $00   ; 
- D 0 - I - 0x004D05 01:8CF5: 00        .byte $00   ; 
- D 0 - I - 0x004D06 01:8CF6: 00        .byte $00   ; 
- D 0 - I - 0x004D07 01:8CF7: 00        .byte $00   ; 
- D 0 - I - 0x004D08 01:8CF8: 00        .byte $00   ; 
- D 0 - I - 0x004D09 01:8CF9: 00        .byte $00   ; 
- D 0 - I - 0x004D0A 01:8CFA: 00        .byte $00   ; 
- D 0 - I - 0x004D0B 01:8CFB: 00        .byte $00   ; 
- D 0 - I - 0x004D0C 01:8CFC: 00        .byte $00   ; 
- D 0 - I - 0x004D0D 01:8CFD: 00        .byte $00   ; 
- D 0 - I - 0x004D0E 01:8CFE: 00        .byte $00   ; 
- D 0 - I - 0x004D0F 01:8CFF: 15        .byte $15   ; 
- D 0 - I - 0x004D10 01:8D00: 00        .byte $00   ; 
- D 0 - I - 0x004D11 01:8D01: 00        .byte $00   ; 
- D 0 - I - 0x004D12 01:8D02: 00        .byte $00   ; 
- D 0 - I - 0x004D13 01:8D03: 00        .byte $00   ; 
- D 0 - I - 0x004D14 01:8D04: 00        .byte $00   ; 
- D 0 - I - 0x004D15 01:8D05: 00        .byte $00   ; 
- D 0 - I - 0x004D16 01:8D06: 00        .byte $00   ; 
- D 0 - I - 0x004D17 01:8D07: 00        .byte $00   ; 
- D 0 - I - 0x004D18 01:8D08: 14        .byte $14   ; 
- D 0 - I - 0x004D19 01:8D09: 00        .byte $00   ; 
- D 0 - I - 0x004D1A 01:8D0A: 00        .byte $00   ; 
- D 0 - I - 0x004D1B 01:8D0B: 00        .byte $00   ; 
- D 0 - I - 0x004D1C 01:8D0C: 00        .byte $00   ; 
- D 0 - I - 0x004D1D 01:8D0D: 00        .byte $00   ; 
- D 0 - I - 0x004D1E 01:8D0E: 1B        .byte $1B   ; 
off_8D0F_13:
- D 0 - I - 0x004D1F 01:8D0F: 2C        .byte $2C   ; 
- D 0 - I - 0x004D20 01:8D10: 04        .byte $04   ; 
- D 0 - I - 0x004D21 01:8D11: 04        .byte $04   ; 
- D 0 - I - 0x004D22 01:8D12: 04        .byte $04   ; 
- D 0 - I - 0x004D23 01:8D13: 04        .byte $04   ; 
- D 0 - I - 0x004D24 01:8D14: 04        .byte $04   ; 
- D 0 - I - 0x004D25 01:8D15: 04        .byte $04   ; 
- D 0 - I - 0x004D26 01:8D16: 04        .byte $04   ; 
- D 0 - I - 0x004D27 01:8D17: 04        .byte $04   ; 
- D 0 - I - 0x004D28 01:8D18: 04        .byte $04   ; 
- D 0 - I - 0x004D29 01:8D19: 04        .byte $04   ; 
- D 0 - I - 0x004D2A 01:8D1A: 04        .byte $04   ; 
- D 0 - I - 0x004D2B 01:8D1B: 04        .byte $04   ; 
- D 0 - I - 0x004D2C 01:8D1C: 04        .byte $04   ; 
- D 0 - I - 0x004D2D 01:8D1D: 04        .byte $04   ; 
- D 0 - I - 0x004D2E 01:8D1E: 04        .byte $04   ; 
- D 0 - I - 0x004D2F 01:8D1F: 04        .byte $04   ; 
- D 0 - I - 0x004D30 01:8D20: 04        .byte $04   ; 
- D 0 - I - 0x004D31 01:8D21: 04        .byte $04   ; 
- D 0 - I - 0x004D32 01:8D22: 17        .byte $17   ; 
- D 0 - I - 0x004D33 01:8D23: 04        .byte $04   ; 
- D 0 - I - 0x004D34 01:8D24: 16        .byte $16   ; 
- D 0 - I - 0x004D35 01:8D25: 04        .byte $04   ; 
- D 0 - I - 0x004D36 01:8D26: 04        .byte $04   ; 
- D 0 - I - 0x004D37 01:8D27: 16        .byte $16   ; 
- D 0 - I - 0x004D38 01:8D28: 04        .byte $04   ; 
- D 0 - I - 0x004D39 01:8D29: 04        .byte $04   ; 
- D 0 - I - 0x004D3A 01:8D2A: 04        .byte $04   ; 
- D 0 - I - 0x004D3B 01:8D2B: 04        .byte $04   ; 
- D 0 - I - 0x004D3C 01:8D2C: 04        .byte $04   ; 
- D 0 - I - 0x004D3D 01:8D2D: 04        .byte $04   ; 
- D 0 - I - 0x004D3E 01:8D2E: 04        .byte $04   ; 
off_8D2F_14:
- D 0 - I - 0x004D3F 01:8D2F: 0C        .byte $0C   ; 
- D 0 - I - 0x004D40 01:8D30: 0D        .byte $0D   ; 
- D 0 - I - 0x004D41 01:8D31: 0E        .byte $0E   ; 
- D 0 - I - 0x004D42 01:8D32: 04        .byte $04   ; 
- D 0 - I - 0x004D43 01:8D33: 04        .byte $04   ; 
- D 0 - I - 0x004D44 01:8D34: 04        .byte $04   ; 
- D 0 - I - 0x004D45 01:8D35: 04        .byte $04   ; 
- D 0 - I - 0x004D46 01:8D36: 04        .byte $04   ; 
- D 0 - I - 0x004D47 01:8D37: 16        .byte $16   ; 
- D 0 - I - 0x004D48 01:8D38: 04        .byte $04   ; 
- D 0 - I - 0x004D49 01:8D39: 04        .byte $04   ; 
off_8D3A_1C:
- D 0 - I - 0x004D4A 01:8D3A: 04        .byte $04   ; 
- D 0 - I - 0x004D4B 01:8D3B: 04        .byte $04   ; 
- D 0 - I - 0x004D4C 01:8D3C: 04        .byte $04   ; 
- D 0 - I - 0x004D4D 01:8D3D: 04        .byte $04   ; 
- D 0 - I - 0x004D4E 01:8D3E: 04        .byte $04   ; 
- D 0 - I - 0x004D4F 01:8D3F: 04        .byte $04   ; 
- D 0 - I - 0x004D50 01:8D40: 04        .byte $04   ; 
- D 0 - I - 0x004D51 01:8D41: 04        .byte $04   ; 
- D 0 - I - 0x004D52 01:8D42: 04        .byte $04   ; 
- D 0 - I - 0x004D53 01:8D43: 04        .byte $04   ; 
- D 0 - I - 0x004D54 01:8D44: 04        .byte $04   ; 
- D 0 - I - 0x004D55 01:8D45: 04        .byte $04   ; 
- D 0 - I - 0x004D56 01:8D46: 04        .byte $04   ; 
- D 0 - I - 0x004D57 01:8D47: 04        .byte $04   ; 
- D 0 - I - 0x004D58 01:8D48: 04        .byte $04   ; 
- D 0 - I - 0x004D59 01:8D49: 04        .byte $04   ; 
- D 0 - I - 0x004D5A 01:8D4A: 04        .byte $04   ; 
- D 0 - I - 0x004D5B 01:8D4B: 04        .byte $04   ; 
- D 0 - I - 0x004D5C 01:8D4C: 04        .byte $04   ; 
- D 0 - I - 0x004D5D 01:8D4D: 16        .byte $16   ; 
- D 0 - I - 0x004D5E 01:8D4E: 04        .byte $04   ; 
- D 0 - I - 0x004D5F 01:8D4F: 04        .byte $04   ; 
- D 0 - I - 0x004D60 01:8D50: 04        .byte $04   ; 
- D 0 - I - 0x004D61 01:8D51: 04        .byte $04   ; 
- D 0 - I - 0x004D62 01:8D52: 04        .byte $04   ; 
- D 0 - I - 0x004D63 01:8D53: 04        .byte $04   ; 
- D 0 - I - 0x004D64 01:8D54: 04        .byte $04   ; 
- D 0 - I - 0x004D65 01:8D55: 04        .byte $04   ; 
- D 0 - I - 0x004D66 01:8D56: 04        .byte $04   ; 
- D 0 - I - 0x004D67 01:8D57: 04        .byte $04   ; 
- D 0 - I - 0x004D68 01:8D58: 04        .byte $04   ; 
- D 0 - I - 0x004D69 01:8D59: 2B        .byte $2B   ; 
off_8D5A_15:
- D 0 - I - 0x004D6A 01:8D5A: 1C        .byte $1C   ; 
- D 0 - I - 0x004D6B 01:8D5B: 00        .byte $00   ; 
- D 0 - I - 0x004D6C 01:8D5C: 1D        .byte $1D   ; 
- D 0 - I - 0x004D6D 01:8D5D: 1E        .byte $1E   ; 
- D 0 - I - 0x004D6E 01:8D5E: 00        .byte $00   ; 
- D 0 - I - 0x004D6F 01:8D5F: 00        .byte $00   ; 
- D 0 - I - 0x004D70 01:8D60: 00        .byte $00   ; 
- D 0 - I - 0x004D71 01:8D61: 00        .byte $00   ; 
- D 0 - I - 0x004D72 01:8D62: 00        .byte $00   ; 
- D 0 - I - 0x004D73 01:8D63: 00        .byte $00   ; 
- D 0 - I - 0x004D74 01:8D64: 00        .byte $00   ; 
- D 0 - I - 0x004D75 01:8D65: 14        .byte $14   ; 
- D 0 - I - 0x004D76 01:8D66: 00        .byte $00   ; 
- D 0 - I - 0x004D77 01:8D67: 00        .byte $00   ; 
- D 0 - I - 0x004D78 01:8D68: 00        .byte $00   ; 
- D 0 - I - 0x004D79 01:8D69: 00        .byte $00   ; 
- D 0 - I - 0x004D7A 01:8D6A: 00        .byte $00   ; 
- D 0 - I - 0x004D7B 01:8D6B: 00        .byte $00   ; 
- D 0 - I - 0x004D7C 01:8D6C: 14        .byte $14   ; 
- D 0 - I - 0x004D7D 01:8D6D: 00        .byte $00   ; 
- D 0 - I - 0x004D7E 01:8D6E: 00        .byte $00   ; 
- D 0 - I - 0x004D7F 01:8D6F: 00        .byte $00   ; 
- D 0 - I - 0x004D80 01:8D70: 00        .byte $00   ; 
- D 0 - I - 0x004D81 01:8D71: 14        .byte $14   ; 
off_8D72_0E:
- D 0 - I - 0x004D82 01:8D72: 00        .byte $00   ; 
- D 0 - I - 0x004D83 01:8D73: 00        .byte $00   ; 
- D 0 - I - 0x004D84 01:8D74: 00        .byte $00   ; 
- D 0 - I - 0x004D85 01:8D75: 00        .byte $00   ; 
- D 0 - I - 0x004D86 01:8D76: 00        .byte $00   ; 
- D 0 - I - 0x004D87 01:8D77: 00        .byte $00   ; 
- D 0 - I - 0x004D88 01:8D78: 00        .byte $00   ; 
- D 0 - I - 0x004D89 01:8D79: 14        .byte $14   ; 
off_8D7A_0F:
- D 0 - I - 0x004D8A 01:8D7A: 00        .byte $00   ; 
- D 0 - I - 0x004D8B 01:8D7B: 00        .byte $00   ; 
- D 0 - I - 0x004D8C 01:8D7C: 00        .byte $00   ; 
- D 0 - I - 0x004D8D 01:8D7D: 14        .byte $14   ; 
off_8D7E_07:
- D 0 - I - 0x004D8E 01:8D7E: 00        .byte $00   ; 
- D 0 - I - 0x004D8F 01:8D7F: 00        .byte $00   ; 
- D 0 - I - 0x004D90 01:8D80: 00        .byte $00   ; 
- D 0 - I - 0x004D91 01:8D81: 00        .byte $00   ; 
- D 0 - I - 0x004D92 01:8D82: 15        .byte $15   ; 
- D 0 - I - 0x004D93 01:8D83: 00        .byte $00   ; 
- D 0 - I - 0x004D94 01:8D84: 00        .byte $00   ; 
- D 0 - I - 0x004D95 01:8D85: 00        .byte $00   ; 
- D 0 - I - 0x004D96 01:8D86: 00        .byte $00   ; 
- D 0 - I - 0x004D97 01:8D87: 00        .byte $00   ; 
- D 0 - I - 0x004D98 01:8D88: 00        .byte $00   ; 
- D 0 - I - 0x004D99 01:8D89: 00        .byte $00   ; 
- D 0 - I - 0x004D9A 01:8D8A: 00        .byte $00   ; 
- D 0 - I - 0x004D9B 01:8D8B: 00        .byte $00   ; 
- D 0 - I - 0x004D9C 01:8D8C: 00        .byte $00   ; 
- D 0 - I - 0x004D9D 01:8D8D: 00        .byte $00   ; 
- D 0 - I - 0x004D9E 01:8D8E: 00        .byte $00   ; 
- D 0 - I - 0x004D9F 01:8D8F: 00        .byte $00   ; 
- D 0 - I - 0x004DA0 01:8D90: 00        .byte $00   ; 
- D 0 - I - 0x004DA1 01:8D91: 00        .byte $00   ; 
- D 0 - I - 0x004DA2 01:8D92: 00        .byte $00   ; 
- D 0 - I - 0x004DA3 01:8D93: 00        .byte $00   ; 
- D 0 - I - 0x004DA4 01:8D94: 00        .byte $00   ; 
- D 0 - I - 0x004DA5 01:8D95: 00        .byte $00   ; 
- D 0 - I - 0x004DA6 01:8D96: 00        .byte $00   ; 
- D 0 - I - 0x004DA7 01:8D97: 00        .byte $00   ; 
- D 0 - I - 0x004DA8 01:8D98: 00        .byte $00   ; 
- D 0 - I - 0x004DA9 01:8D99: 00        .byte $00   ; 
- D 0 - I - 0x004DAA 01:8D9A: 14        .byte $14   ; 
- D 0 - I - 0x004DAB 01:8D9B: 00        .byte $00   ; 
- D 0 - I - 0x004DAC 01:8D9C: 00        .byte $00   ; 
- D 0 - I - 0x004DAD 01:8D9D: 1B        .byte $1B   ; 
off_8D9E_16:
- D 0 - I - 0x004DAE 01:8D9E: 1C        .byte $1C   ; 
- D 0 - I - 0x004DAF 01:8D9F: 00        .byte $00   ; 
- D 0 - I - 0x004DB0 01:8DA0: 00        .byte $00   ; 
- D 0 - I - 0x004DB1 01:8DA1: 0F        .byte $0F   ; 
- D 0 - I - 0x004DB2 01:8DA2: 00        .byte $00   ; 
- D 0 - I - 0x004DB3 01:8DA3: 00        .byte $00   ; 
- D 0 - I - 0x004DB4 01:8DA4: 14        .byte $14   ; 
- D 0 - I - 0x004DB5 01:8DA5: 00        .byte $00   ; 
- D 0 - I - 0x004DB6 01:8DA6: 00        .byte $00   ; 
- D 0 - I - 0x004DB7 01:8DA7: 00        .byte $00   ; 
- D 0 - I - 0x004DB8 01:8DA8: 40        .byte $40   ; 
- D 0 - I - 0x004DB9 01:8DA9: 54        .byte $54   ; 
- D 0 - I - 0x004DBA 01:8DAA: 54        .byte $54   ; 
- D 0 - I - 0x004DBB 01:8DAB: 54        .byte $54   ; 
- D 0 - I - 0x004DBC 01:8DAC: 54        .byte $54   ; 
- D 0 - I - 0x004DBD 01:8DAD: 54        .byte $54   ; 
- D 0 - I - 0x004DBE 01:8DAE: 54        .byte $54   ; 
- D 0 - I - 0x004DBF 01:8DAF: 42        .byte $42   ; 
off_8DB0_02:
- D 0 - I - 0x004DC0 01:8DB0: 00        .byte $00   ; 
- D 0 - I - 0x004DC1 01:8DB1: 00        .byte $00   ; 
- D 0 - I - 0x004DC2 01:8DB2: 14        .byte $14   ; 
- D 0 - I - 0x004DC3 01:8DB3: 00        .byte $00   ; 
- D 0 - I - 0x004DC4 01:8DB4: 00        .byte $00   ; 
- D 0 - I - 0x004DC5 01:8DB5: 00        .byte $00   ; 
- D 0 - I - 0x004DC6 01:8DB6: 00        .byte $00   ; 
- D 0 - I - 0x004DC7 01:8DB7: 00        .byte $00   ; 
- D 0 - I - 0x004DC8 01:8DB8: 00        .byte $00   ; 
- D 0 - I - 0x004DC9 01:8DB9: 00        .byte $00   ; 
- D 0 - I - 0x004DCA 01:8DBA: 00        .byte $00   ; 
- D 0 - I - 0x004DCB 01:8DBB: 00        .byte $00   ; 
- D 0 - I - 0x004DCC 01:8DBC: 00        .byte $00   ; 
- D 0 - I - 0x004DCD 01:8DBD: 00        .byte $00   ; 
- D 0 - I - 0x004DCE 01:8DBE: 00        .byte $00   ; 
- D 0 - I - 0x004DCF 01:8DBF: 00        .byte $00   ; 
- D 0 - I - 0x004DD0 01:8DC0: 22        .byte $22   ; 
- D 0 - I - 0x004DD1 01:8DC1: 00        .byte $00   ; 
- D 0 - I - 0x004DD2 01:8DC2: 15        .byte $15   ; 
- D 0 - I - 0x004DD3 01:8DC3: 00        .byte $00   ; 
- D 0 - I - 0x004DD4 01:8DC4: 00        .byte $00   ; 
- D 0 - I - 0x004DD5 01:8DC5: 00        .byte $00   ; 
- D 0 - I - 0x004DD6 01:8DC6: 00        .byte $00   ; 
- D 0 - I - 0x004DD7 01:8DC7: 00        .byte $00   ; 
- D 0 - I - 0x004DD8 01:8DC8: 00        .byte $00   ; 
- D 0 - I - 0x004DD9 01:8DC9: 00        .byte $00   ; 
- D 0 - I - 0x004DDA 01:8DCA: 40        .byte $40   ; 
- D 0 - I - 0x004DDB 01:8DCB: 54        .byte $54   ; 
- D 0 - I - 0x004DDC 01:8DCC: E0        .byte $E0   ; 
off_8DCD_0A:
- D 0 - I - 0x004DDD 01:8DCD: 54        .byte $54   ; 
- D 0 - I - 0x004DDE 01:8DCE: 54        .byte $54   ; 
- D 0 - I - 0x004DDF 01:8DCF: 54        .byte $54   ; 
- D 0 - I - 0x004DE0 01:8DD0: 42        .byte $42   ; 
- D 0 - I - 0x004DE1 01:8DD1: 00        .byte $00   ; 
- D 0 - I - 0x004DE2 01:8DD2: 00        .byte $00   ; 
- D 0 - I - 0x004DE3 01:8DD3: 00        .byte $00   ; 
- D 0 - I - 0x004DE4 01:8DD4: 00        .byte $00   ; 
- D 0 - I - 0x004DE5 01:8DD5: 00        .byte $00   ; 
- D 0 - I - 0x004DE6 01:8DD6: 00        .byte $00   ; 
- D 0 - I - 0x004DE7 01:8DD7: 00        .byte $00   ; 
- D 0 - I - 0x004DE8 01:8DD8: 00        .byte $00   ; 
- D 0 - I - 0x004DE9 01:8DD9: 1B        .byte $1B   ; 
- D 0 - I - 0x004DEA 01:8DDA: 20        .byte $20   ; 
- D 0 - I - 0x004DEB 01:8DDB: 00        .byte $00   ; 
- D 0 - I - 0x004DEC 01:8DDC: 00        .byte $00   ; 
- D 0 - I - 0x004DED 01:8DDD: 00        .byte $00   ; 
- D 0 - I - 0x004DEE 01:8DDE: 00        .byte $00   ; 
- D 0 - I - 0x004DEF 01:8DDF: 00        .byte $00   ; 
off_8DE0_12:
- D 0 - I - 0x004DF0 01:8DE0: 00        .byte $00   ; 
- D 0 - I - 0x004DF1 01:8DE1: 00        .byte $00   ; 
- D 0 - I - 0x004DF2 01:8DE2: 00        .byte $00   ; 
- D 0 - I - 0x004DF3 01:8DE3: 00        .byte $00   ; 
- D 0 - I - 0x004DF4 01:8DE4: 00        .byte $00   ; 
- - - - - - 0x004DF5 01:8DE5: 14        .byte $14   ; 
- - - - - - 0x004DF6 01:8DE6: 00        .byte $00   ; 
- - - - - - 0x004DF7 01:8DE7: 00        .byte $00   ; 
- - - - - - 0x004DF8 01:8DE8: 00        .byte $00   ; 
- D 0 - I - 0x004DF9 01:8DE9: 00        .byte $00   ; 
- D 0 - I - 0x004DFA 01:8DEA: 00        .byte $00   ; 
- D 0 - I - 0x004DFB 01:8DEB: 00        .byte $00   ; 
- D 0 - I - 0x004DFC 01:8DEC: 00        .byte $00   ; 
- D 0 - I - 0x004DFD 01:8DED: A5        .byte $A5   ; 
- D 0 - I - 0x004DFE 01:8DEE: A6        .byte $A6   ; 
- D 0 - I - 0x004DFF 01:8DEF: A6        .byte $A6   ; 
- D 0 - I - 0x004E00 01:8DF0: A7        .byte $A7   ; 
- D 0 - I - 0x004E01 01:8DF1: A8        .byte $A8   ; 
- D 0 - I - 0x004E02 01:8DF2: 87        .byte $87   ; 
- D 0 - I - 0x004E03 01:8DF3: 10        .byte $10   ; 
- D 0 - I - 0x004E04 01:8DF4: 10        .byte $10   ; 
- D 0 - I - 0x004E05 01:8DF5: 10        .byte $10   ; 
- D 0 - I - 0x004E06 01:8DF6: 10        .byte $10   ; 
- D 0 - I - 0x004E07 01:8DF7: 8A        .byte $8A   ; 
- D 0 - I - 0x004E08 01:8DF8: 00        .byte $00   ; 
- D 0 - I - 0x004E09 01:8DF9: 00        .byte $00   ; 
- D 0 - I - 0x004E0A 01:8DFA: 00        .byte $00   ; 
- D 0 - I - 0x004E0B 01:8DFB: 00        .byte $00   ; 
off_8DFC_11:
- D 0 - I - 0x004E0C 01:8DFC: 00        .byte $00   ; 
- D 0 - I - 0x004E0D 01:8DFD: 1B        .byte $1B   ; 
- D 0 - I - 0x004E0E 01:8DFE: 20        .byte $20   ; 
- D 0 - I - 0x004E0F 01:8DFF: 00        .byte $00   ; 
- D 0 - I - 0x004E10 01:8E00: 15        .byte $15   ; 
- D 0 - I - 0x004E11 01:8E01: 00        .byte $00   ; 
- D 0 - I - 0x004E12 01:8E02: 00        .byte $00   ; 
- D 0 - I - 0x004E13 01:8E03: 00        .byte $00   ; 
- D 0 - I - 0x004E14 01:8E04: 00        .byte $00   ; 
- D 0 - I - 0x004E15 01:8E05: 00        .byte $00   ; 
- D 0 - I - 0x004E16 01:8E06: 00        .byte $00   ; 
- D 0 - I - 0x004E17 01:8E07: 00        .byte $00   ; 
- D 0 - I - 0x004E18 01:8E08: 00        .byte $00   ; 
- D 0 - I - 0x004E19 01:8E09: 26        .byte $26   ; 
- D 0 - I - 0x004E1A 01:8E0A: B0        .byte $B0   ; 
- D 0 - I - 0x004E1B 01:8E0B: 95        .byte $95   ; 
- D 0 - I - 0x004E1C 01:8E0C: 96        .byte $96   ; 
- D 0 - I - 0x004E1D 01:8E0D: 96        .byte $96   ; 
- D 0 - I - 0x004E1E 01:8E0E: 97        .byte $97   ; 
- D 0 - I - 0x004E1F 01:8E0F: 00        .byte $00   ; 
- D 0 - I - 0x004E20 01:8E10: 00        .byte $00   ; 
- D 0 - I - 0x004E21 01:8E11: 00        .byte $00   ; 
- D 0 - I - 0x004E22 01:8E12: 00        .byte $00   ; 
- D 0 - I - 0x004E23 01:8E13: 00        .byte $00   ; 
- - - - - - 0x004E24 01:8E14: 00        .byte $00   ; 
- - - - - - 0x004E25 01:8E15: 00        .byte $00   ; 
- - - - - - 0x004E26 01:8E16: 00        .byte $00   ; 
- - - - - - 0x004E27 01:8E17: 15        .byte $15   ; 
- - - - - - 0x004E28 01:8E18: 00        .byte $00   ; 
- - - - - - 0x004E29 01:8E19: 00        .byte $00   ; 
- - - - - - 0x004E2A 01:8E1A: 00        .byte $00   ; 
- - - - - - 0x004E2B 01:8E1B: 00        .byte $00   ; 
off_8E1C_17:
- D 0 - I - 0x004E2C 01:8E1C: 2C        .byte $2C   ; 
- D 0 - I - 0x004E2D 01:8E1D: 04        .byte $04   ; 
- D 0 - I - 0x004E2E 01:8E1E: 04        .byte $04   ; 
- D 0 - I - 0x004E2F 01:8E1F: 1F        .byte $1F   ; 
- D 0 - I - 0x004E30 01:8E20: 04        .byte $04   ; 
- D 0 - I - 0x004E31 01:8E21: 04        .byte $04   ; 
- D 0 - I - 0x004E32 01:8E22: 04        .byte $04   ; 
- D 0 - I - 0x004E33 01:8E23: 04        .byte $04   ; 
- D 0 - I - 0x004E34 01:8E24: 04        .byte $04   ; 
- D 0 - I - 0x004E35 01:8E25: 04        .byte $04   ; 
- D 0 - I - 0x004E36 01:8E26: 61        .byte $61   ; 
- D 0 - I - 0x004E37 01:8E27: 6D        .byte $6D   ; 
- D 0 - I - 0x004E38 01:8E28: 71        .byte $71   ; 
- D 0 - I - 0x004E39 01:8E29: 6D        .byte $6D   ; 
- D 0 - I - 0x004E3A 01:8E2A: 6D        .byte $6D   ; 
- D 0 - I - 0x004E3B 01:8E2B: 6D        .byte $6D   ; 
- D 0 - I - 0x004E3C 01:8E2C: 6D        .byte $6D   ; 
- D 0 - I - 0x004E3D 01:8E2D: 67        .byte $67   ; 
- D 0 - I - 0x004E3E 01:8E2E: 4B        .byte $4B   ; 
- D 0 - I - 0x004E3F 01:8E2F: 04        .byte $04   ; 
off_8E30_18:
- D 0 - I - 0x004E40 01:8E30: 04        .byte $04   ; 
- D 0 - I - 0x004E41 01:8E31: 04        .byte $04   ; 
- D 0 - I - 0x004E42 01:8E32: 04        .byte $04   ; 
- D 0 - I - 0x004E43 01:8E33: 04        .byte $04   ; 
- D 0 - I - 0x004E44 01:8E34: 16        .byte $16   ; 
- D 0 - I - 0x004E45 01:8E35: 04        .byte $04   ; 
- D 0 - I - 0x004E46 01:8E36: 04        .byte $04   ; 
- D 0 - I - 0x004E47 01:8E37: 04        .byte $04   ; 
- D 0 - I - 0x004E48 01:8E38: 04        .byte $04   ; 
- D 0 - I - 0x004E49 01:8E39: 04        .byte $04   ; 
- D 0 - I - 0x004E4A 01:8E3A: 04        .byte $04   ; 
- D 0 - I - 0x004E4B 01:8E3B: 04        .byte $04   ; 
- D 0 - I - 0x004E4C 01:8E3C: 41        .byte $41   ; 
- D 0 - I - 0x004E4D 01:8E3D: 55        .byte $55   ; 
- D 0 - I - 0x004E4E 01:8E3E: 55        .byte $55   ; 
- D 0 - I - 0x004E4F 01:8E3F: 55        .byte $55   ; 
- D 0 - I - 0x004E50 01:8E40: 55        .byte $55   ; 
- D 0 - I - 0x004E51 01:8E41: 43        .byte $43   ; 
- D 0 - I - 0x004E52 01:8E42: 04        .byte $04   ; 
- D 0 - I - 0x004E53 01:8E43: 04        .byte $04   ; 
- D 0 - I - 0x004E54 01:8E44: 04        .byte $04   ; 
- D 0 - I - 0x004E55 01:8E45: 04        .byte $04   ; 
- D 0 - I - 0x004E56 01:8E46: 04        .byte $04   ; 
- D 0 - I - 0x004E57 01:8E47: 16        .byte $16   ; 
- D 0 - I - 0x004E58 01:8E48: 04        .byte $04   ; 
- D 0 - I - 0x004E59 01:8E49: 04        .byte $04   ; 
- D 0 - I - 0x004E5A 01:8E4A: 04        .byte $04   ; 
- D 0 - I - 0x004E5B 01:8E4B: 04        .byte $04   ; 
- D 0 - I - 0x004E5C 01:8E4C: 28        .byte $28   ; 
- D 0 - I - 0x004E5D 01:8E4D: 04        .byte $04   ; 
- D 0 - I - 0x004E5E 01:8E4E: 04        .byte $04   ; 
- D 0 - I - 0x004E5F 01:8E4F: 2B        .byte $2B   ; 
off_8E50_18:
- D 0 - I - 0x004E60 01:8E50: 2C        .byte $2C   ; 
- D 0 - I - 0x004E61 01:8E51: 04        .byte $04   ; 
- D 0 - I - 0x004E62 01:8E52: 04        .byte $04   ; 
- D 0 - I - 0x004E63 01:8E53: 2F        .byte $2F   ; 
- D 0 - I - 0x004E64 01:8E54: 04        .byte $04   ; 
- D 0 - I - 0x004E65 01:8E55: 04        .byte $04   ; 
- D 0 - I - 0x004E66 01:8E56: 04        .byte $04   ; 
- D 0 - I - 0x004E67 01:8E57: 04        .byte $04   ; 
- D 0 - I - 0x004E68 01:8E58: 04        .byte $04   ; 
- D 0 - I - 0x004E69 01:8E59: 04        .byte $04   ; 
- D 0 - I - 0x004E6A 01:8E5A: 61        .byte $61   ; 
- D 0 - I - 0x004E6B 01:8E5B: 6D        .byte $6D   ; 
- D 0 - I - 0x004E6C 01:8E5C: 6D        .byte $6D   ; 
- D 0 - I - 0x004E6D 01:8E5D: 6D        .byte $6D   ; 
- D 0 - I - 0x004E6E 01:8E5E: 6D        .byte $6D   ; 
- D 0 - I - 0x004E6F 01:8E5F: 6D        .byte $6D   ; 
- D 0 - I - 0x004E70 01:8E60: 6D        .byte $6D   ; 
- D 0 - I - 0x004E71 01:8E61: 7D        .byte $7D   ; 
- D 0 - I - 0x004E72 01:8E62: 55        .byte $55   ; 
- D 0 - I - 0x004E73 01:8E63: 43        .byte $43   ; 
- D 0 - I - 0x004E74 01:8E64: 04        .byte $04   ; 
- D 0 - I - 0x004E75 01:8E65: 04        .byte $04   ; 
- D 0 - I - 0x004E76 01:8E66: 04        .byte $04   ; 
- D 0 - I - 0x004E77 01:8E67: 04        .byte $04   ; 
- D 0 - I - 0x004E78 01:8E68: 04        .byte $04   ; 
off_8E69_09:
- D 0 - I - 0x004E79 01:8E69: 04        .byte $04   ; 
- D 0 - I - 0x004E7A 01:8E6A: 04        .byte $04   ; 
- D 0 - I - 0x004E7B 01:8E6B: 04        .byte $04   ; 
- D 0 - I - 0x004E7C 01:8E6C: 04        .byte $04   ; 
- D 0 - I - 0x004E7D 01:8E6D: 16        .byte $16   ; 
- D 0 - I - 0x004E7E 01:8E6E: 04        .byte $04   ; 
- D 0 - I - 0x004E7F 01:8E6F: 04        .byte $04   ; 
- - - - - - 0x004E80 01:8E70: 17        .byte $17   ; 
- - - - - - 0x004E81 01:8E71: 04        .byte $04   ; 
- D 0 - I - 0x004E82 01:8E72: 04        .byte $04   ; 
- D 0 - I - 0x004E83 01:8E73: 04        .byte $04   ; 
- D 0 - I - 0x004E84 01:8E74: 04        .byte $04   ; 
- D 0 - I - 0x004E85 01:8E75: 04        .byte $04   ; 
- D 0 - I - 0x004E86 01:8E76: 04        .byte $04   ; 
- D 0 - I - 0x004E87 01:8E77: 04        .byte $04   ; 
- D 0 - I - 0x004E88 01:8E78: 33        .byte $33   ; 
- D 0 - I - 0x004E89 01:8E79: 04        .byte $04   ; 
- D 0 - I - 0x004E8A 01:8E7A: 04        .byte $04   ; 
off_8E7B_10:
- D 0 - I - 0x004E8B 01:8E7B: 04        .byte $04   ; 
- D 0 - I - 0x004E8C 01:8E7C: 04        .byte $04   ; 
- D 0 - I - 0x004E8D 01:8E7D: 04        .byte $04   ; 
- D 0 - I - 0x004E8E 01:8E7E: 04        .byte $04   ; 
- D 0 - I - 0x004E8F 01:8E7F: 04        .byte $04   ; 
- D 0 - I - 0x004E90 01:8E80: 04        .byte $04   ; 
- D 0 - I - 0x004E91 01:8E81: 17        .byte $17   ; 
- D 0 - I - 0x004E92 01:8E82: 04        .byte $04   ; 
- D 0 - I - 0x004E93 01:8E83: 04        .byte $04   ; 
- D 0 - I - 0x004E94 01:8E84: 04        .byte $04   ; 
- D 0 - I - 0x004E95 01:8E85: 04        .byte $04   ; 
- D 0 - I - 0x004E96 01:8E86: 04        .byte $04   ; 
- D 0 - I - 0x004E97 01:8E87: 04        .byte $04   ; 
- D 0 - I - 0x004E98 01:8E88: 04        .byte $04   ; 
- D 0 - I - 0x004E99 01:8E89: 04        .byte $04   ; 
- D 0 - I - 0x004E9A 01:8E8A: 04        .byte $04   ; 
- D 0 - I - 0x004E9B 01:8E8B: 04        .byte $04   ; 
- D 0 - I - 0x004E9C 01:8E8C: 04        .byte $04   ; 
- D 0 - I - 0x004E9D 01:8E8D: 04        .byte $04   ; 
- D 0 - I - 0x004E9E 01:8E8E: 04        .byte $04   ; 
- D 0 - I - 0x004E9F 01:8E8F: 04        .byte $04   ; 
- D 0 - I - 0x004EA0 01:8E90: 16        .byte $16   ; 
- D 0 - I - 0x004EA1 01:8E91: 04        .byte $04   ; 
- D 0 - I - 0x004EA2 01:8E92: 04        .byte $04   ; 
- D 0 - I - 0x004EA3 01:8E93: 04        .byte $04   ; 
- D 0 - I - 0x004EA4 01:8E94: 04        .byte $04   ; 
- D 0 - I - 0x004EA5 01:8E95: 04        .byte $04   ; 
- D 0 - I - 0x004EA6 01:8E96: 04        .byte $04   ; 
- D 0 - I - 0x004EA7 01:8E97: 04        .byte $04   ; 
- D 0 - I - 0x004EA8 01:8E98: 04        .byte $04   ; 
- D 0 - I - 0x004EA9 01:8E99: 04        .byte $04   ; 
- D 0 - I - 0x004EAA 01:8E9A: 2B        .byte $2B   ; 
off_8E9B_19:
- D 0 - I - 0x004EAB 01:8E9B: 1C        .byte $1C   ; 
- D 0 - I - 0x004EAC 01:8E9C: 00        .byte $00   ; 
- D 0 - I - 0x004EAD 01:8E9D: 00        .byte $00   ; 
- D 0 - I - 0x004EAE 01:8E9E: 3F        .byte $3F   ; 
- D 0 - I - 0x004EAF 01:8E9F: 00        .byte $00   ; 
- D 0 - I - 0x004EB0 01:8EA0: 00        .byte $00   ; 
- D 0 - I - 0x004EB1 01:8EA1: 00        .byte $00   ; 
- D 0 - I - 0x004EB2 01:8EA2: 00        .byte $00   ; 
- D 0 - I - 0x004EB3 01:8EA3: 14        .byte $14   ; 
- D 0 - I - 0x004EB4 01:8EA4: 00        .byte $00   ; 
- D 0 - I - 0x004EB5 01:8EA5: 44        .byte $44   ; 
- D 0 - I - 0x004EB6 01:8EA6: 5A        .byte $5A   ; 
- D 0 - I - 0x004EB7 01:8EA7: 7A        .byte $7A   ; 
- D 0 - I - 0x004EB8 01:8EA8: 6C        .byte $6C   ; 
- D 0 - I - 0x004EB9 01:8EA9: 6C        .byte $6C   ; 
- D 0 - I - 0x004EBA 01:8EAA: 6C        .byte $6C   ; 
- D 0 - I - 0x004EBB 01:8EAB: 6E        .byte $6E   ; 
- D 0 - I - 0x004EBC 01:8EAC: 6C        .byte $6C   ; 
- D 0 - I - 0x004EBD 01:8EAD: 6C        .byte $6C   ; 
- D 0 - I - 0x004EBE 01:8EAE: 66        .byte $66   ; 
off_8EAF_02:
- D 0 - I - 0x004EBF 01:8EAF: 00        .byte $00   ; 
- D 0 - I - 0x004EC0 01:8EB0: 00        .byte $00   ; 
- D 0 - I - 0x004EC1 01:8EB1: 00        .byte $00   ; 
- D 0 - I - 0x004EC2 01:8EB2: 00        .byte $00   ; 
- D 0 - I - 0x004EC3 01:8EB3: 00        .byte $00   ; 
- D 0 - I - 0x004EC4 01:8EB4: 00        .byte $00   ; 
- D 0 - I - 0x004EC5 01:8EB5: 15        .byte $15   ; 
- D 0 - I - 0x004EC6 01:8EB6: 00        .byte $00   ; 
- D 0 - I - 0x004EC7 01:8EB7: 00        .byte $00   ; 
- D 0 - I - 0x004EC8 01:8EB8: 00        .byte $00   ; 
- D 0 - I - 0x004EC9 01:8EB9: 00        .byte $00   ; 
- D 0 - I - 0x004ECA 01:8EBA: 00        .byte $00   ; 
- D 0 - I - 0x004ECB 01:8EBB: 00        .byte $00   ; 
- D 0 - I - 0x004ECC 01:8EBC: 00        .byte $00   ; 
- D 0 - I - 0x004ECD 01:8EBD: 00        .byte $00   ; 
- D 0 - I - 0x004ECE 01:8EBE: 00        .byte $00   ; 
- D 0 - I - 0x004ECF 01:8EBF: 15        .byte $15   ; 
- D 0 - I - 0x004ED0 01:8EC0: 00        .byte $00   ; 
- D 0 - I - 0x004ED1 01:8EC1: 00        .byte $00   ; 
- D 0 - I - 0x004ED2 01:8EC2: 14        .byte $14   ; 
- D 0 - I - 0x004ED3 01:8EC3: 00        .byte $00   ; 
- D 0 - I - 0x004ED4 01:8EC4: 00        .byte $00   ; 
- D 0 - I - 0x004ED5 01:8EC5: 00        .byte $00   ; 
- D 0 - I - 0x004ED6 01:8EC6: 00        .byte $00   ; 
- D 0 - I - 0x004ED7 01:8EC7: 14        .byte $14   ; 
- D 0 - I - 0x004ED8 01:8EC8: 00        .byte $00   ; 
- D 0 - I - 0x004ED9 01:8EC9: 00        .byte $00   ; 
- D 0 - I - 0x004EDA 01:8ECA: 14        .byte $14   ; 
- D 0 - I - 0x004EDB 01:8ECB: 00        .byte $00   ; 
- D 0 - I - 0x004EDC 01:8ECC: 00        .byte $00   ; 
- D 0 - I - 0x004EDD 01:8ECD: 00        .byte $00   ; 
- D 0 - I - 0x004EDE 01:8ECE: 1B        .byte $1B   ; 
off_8ECF_1A:
- D 0 - I - 0x004EDF 01:8ECF: 1C        .byte $1C   ; 
- D 0 - I - 0x004EE0 01:8ED0: 00        .byte $00   ; 
- D 0 - I - 0x004EE1 01:8ED1: 2D        .byte $2D   ; 
- D 0 - I - 0x004EE2 01:8ED2: 2E        .byte $2E   ; 
- D 0 - I - 0x004EE3 01:8ED3: 00        .byte $00   ; 
- D 0 - I - 0x004EE4 01:8ED4: 00        .byte $00   ; 
- D 0 - I - 0x004EE5 01:8ED5: 00        .byte $00   ; 
- D 0 - I - 0x004EE6 01:8ED6: 00        .byte $00   ; 
- D 0 - I - 0x004EE7 01:8ED7: 00        .byte $00   ; 
- D 0 - I - 0x004EE8 01:8ED8: 00        .byte $00   ; 
- D 0 - I - 0x004EE9 01:8ED9: 00        .byte $00   ; 
- D 0 - I - 0x004EEA 01:8EDA: 4C        .byte $4C   ; 
- D 0 - I - 0x004EEB 01:8EDB: 60        .byte $60   ; 
- D 0 - I - 0x004EEC 01:8EDC: 6C        .byte $6C   ; 
- D 0 - I - 0x004EED 01:8EDD: 6C        .byte $6C   ; 
- D 0 - I - 0x004EEE 01:8EDE: 6C        .byte $6C   ; 
- D 0 - I - 0x004EEF 01:8EDF: 6C        .byte $6C   ; 
- D 0 - I - 0x004EF0 01:8EE0: 6C        .byte $6C   ; 
- D 0 - I - 0x004EF1 01:8EE1: 6F        .byte $6F   ; 
- D 0 - I - 0x004EF2 01:8EE2: 66        .byte $66   ; 
- D 0 - I - 0x004EF3 01:8EE3: 00        .byte $00   ; 
- D 0 - I - 0x004EF4 01:8EE4: 00        .byte $00   ; 
- D 0 - I - 0x004EF5 01:8EE5: 00        .byte $00   ; 
- D 0 - I - 0x004EF6 01:8EE6: 00        .byte $00   ; 
- D 0 - I - 0x004EF7 01:8EE7: 00        .byte $00   ; 
- D 0 - I - 0x004EF8 01:8EE8: 00        .byte $00   ; 
- D 0 - I - 0x004EF9 01:8EE9: 00        .byte $00   ; 
- D 0 - I - 0x004EFA 01:8EEA: 00        .byte $00   ; 
- D 0 - I - 0x004EFB 01:8EEB: 00        .byte $00   ; 
- D 0 - I - 0x004EFC 01:8EEC: 00        .byte $00   ; 
- D 0 - I - 0x004EFD 01:8EED: 00        .byte $00   ; 
- D 0 - I - 0x004EFE 01:8EEE: 00        .byte $00   ; 
off_8EEF_1B:
- D 0 - I - 0x004EFF 01:8EEF: 3C        .byte $3C   ; 
- D 0 - I - 0x004F00 01:8EF0: 3D        .byte $3D   ; 
- D 0 - I - 0x004F01 01:8EF1: 3E        .byte $3E   ; 
- D 0 - I - 0x004F02 01:8EF2: 04        .byte $04   ; 
- D 0 - I - 0x004F03 01:8EF3: 04        .byte $04   ; 
- D 0 - I - 0x004F04 01:8EF4: 04        .byte $04   ; 
- D 0 - I - 0x004F05 01:8EF5: 04        .byte $04   ; 
- D 0 - I - 0x004F06 01:8EF6: 04        .byte $04   ; 
- D 0 - I - 0x004F07 01:8EF7: 04        .byte $04   ; 
- D 0 - I - 0x004F08 01:8EF8: 04        .byte $04   ; 
- D 0 - I - 0x004F09 01:8EF9: 04        .byte $04   ; 
- D 0 - I - 0x004F0A 01:8EFA: 04        .byte $04   ; 
- D 0 - I - 0x004F0B 01:8EFB: 45        .byte $45   ; 
- D 0 - I - 0x004F0C 01:8EFC: 5B        .byte $5B   ; 
- D 0 - I - 0x004F0D 01:8EFD: 7B        .byte $7B   ; 
- D 0 - I - 0x004F0E 01:8EFE: 6D        .byte $6D   ; 
- D 0 - I - 0x004F0F 01:8EFF: 6D        .byte $6D   ; 
- D 0 - I - 0x004F10 01:8F00: 6D        .byte $6D   ; 
- D 0 - I - 0x004F11 01:8F01: 6D        .byte $6D   ; 
- D 0 - I - 0x004F12 01:8F02: 67        .byte $67   ; 
- D 0 - I - 0x004F13 01:8F03: 4B        .byte $4B   ; 
- D 0 - I - 0x004F14 01:8F04: 04        .byte $04   ; 
- D 0 - I - 0x004F15 01:8F05: 17        .byte $17   ; 
- D 0 - I - 0x004F16 01:8F06: 04        .byte $04   ; 
- D 0 - I - 0x004F17 01:8F07: 04        .byte $04   ; 
- D 0 - I - 0x004F18 01:8F08: 04        .byte $04   ; 
- D 0 - I - 0x004F19 01:8F09: 04        .byte $04   ; 
- D 0 - I - 0x004F1A 01:8F0A: 04        .byte $04   ; 
- D 0 - I - 0x004F1B 01:8F0B: 04        .byte $04   ; 
- D 0 - I - 0x004F1C 01:8F0C: 04        .byte $04   ; 
- D 0 - I - 0x004F1D 01:8F0D: 04        .byte $04   ; 
- D 0 - I - 0x004F1E 01:8F0E: 04        .byte $04   ; 
off_8F0F_1C:
- D 0 - I - 0x004F1F 01:8F0F: 2C        .byte $2C   ; 
- D 0 - I - 0x004F20 01:8F10: 04        .byte $04   ; 
- D 0 - I - 0x004F21 01:8F11: 04        .byte $04   ; 
- D 0 - I - 0x004F22 01:8F12: 04        .byte $04   ; 
- D 0 - I - 0x004F23 01:8F13: 04        .byte $04   ; 
- D 0 - I - 0x004F24 01:8F14: 04        .byte $04   ; 
- D 0 - I - 0x004F25 01:8F15: 04        .byte $04   ; 
- D 0 - I - 0x004F26 01:8F16: 04        .byte $04   ; 
- D 0 - I - 0x004F27 01:8F17: 04        .byte $04   ; 
- D 0 - I - 0x004F28 01:8F18: 04        .byte $04   ; 
- D 0 - I - 0x004F29 01:8F19: 04        .byte $04   ; 
- D 0 - I - 0x004F2A 01:8F1A: 04        .byte $04   ; 
- D 0 - I - 0x004F2B 01:8F1B: 04        .byte $04   ; 
- D 0 - I - 0x004F2C 01:8F1C: 4D        .byte $4D   ; 
- D 0 - I - 0x004F2D 01:8F1D: 61        .byte $61   ; 
- D 0 - I - 0x004F2E 01:8F1E: 6D        .byte $6D   ; 
- D 0 - I - 0x004F2F 01:8F1F: 70        .byte $70   ; 
- D 0 - I - 0x004F30 01:8F20: 6D        .byte $6D   ; 
- D 0 - I - 0x004F31 01:8F21: 6D        .byte $6D   ; 
- D 0 - I - 0x004F32 01:8F22: 7D        .byte $7D   ; 
- D 0 - I - 0x004F33 01:8F23: 55        .byte $55   ; 
- D 0 - I - 0x004F34 01:8F24: 43        .byte $43   ; 
- D 0 - I - 0x004F35 01:8F25: 04        .byte $04   ; 
- D 0 - I - 0x004F36 01:8F26: 04        .byte $04   ; 
- D 0 - I - 0x004F37 01:8F27: 04        .byte $04   ; 
- D 0 - I - 0x004F38 01:8F28: 04        .byte $04   ; 
- D 0 - I - 0x004F39 01:8F29: 04        .byte $04   ; 
- D 0 - I - 0x004F3A 01:8F2A: 04        .byte $04   ; 
- D 0 - I - 0x004F3B 01:8F2B: 04        .byte $04   ; 
- D 0 - I - 0x004F3C 01:8F2C: 04        .byte $04   ; 
- D 0 - I - 0x004F3D 01:8F2D: 04        .byte $04   ; 
- D 0 - I - 0x004F3E 01:8F2E: 04        .byte $04   ; 
off_8F2F_1D:
- D 0 - I - 0x004F3F 01:8F2F: 2C        .byte $2C   ; 
- D 0 - I - 0x004F40 01:8F30: 04        .byte $04   ; 
- D 0 - I - 0x004F41 01:8F31: 16        .byte $16   ; 
- D 0 - I - 0x004F42 01:8F32: 04        .byte $04   ; 
- D 0 - I - 0x004F43 01:8F33: 04        .byte $04   ; 
- D 0 - I - 0x004F44 01:8F34: 04        .byte $04   ; 
- D 0 - I - 0x004F45 01:8F35: 17        .byte $17   ; 
- D 0 - I - 0x004F46 01:8F36: 04        .byte $04   ; 
- D 0 - I - 0x004F47 01:8F37: 16        .byte $16   ; 
- D 0 - I - 0x004F48 01:8F38: 04        .byte $04   ; 
- D 0 - I - 0x004F49 01:8F39: 04        .byte $04   ; 
- D 0 - I - 0x004F4A 01:8F3A: 04        .byte $04   ; 
- D 0 - I - 0x004F4B 01:8F3B: 04        .byte $04   ; 
- D 0 - I - 0x004F4C 01:8F3C: 04        .byte $04   ; 
- D 0 - I - 0x004F4D 01:8F3D: 61        .byte $61   ; 
- D 0 - I - 0x004F4E 01:8F3E: 6D        .byte $6D   ; 
- D 0 - I - 0x004F4F 01:8F3F: 6D        .byte $6D   ; 
- D 0 - I - 0x004F50 01:8F40: 6D        .byte $6D   ; 
- D 0 - I - 0x004F51 01:8F41: 6D        .byte $6D   ; 
- D 0 - I - 0x004F52 01:8F42: 6D        .byte $6D   ; 
- D 0 - I - 0x004F53 01:8F43: 6D        .byte $6D   ; 
- D 0 - I - 0x004F54 01:8F44: 67        .byte $67   ; 
off_8F45_0A:
- D 0 - I - 0x004F55 01:8F45: 04        .byte $04   ; 
- D 0 - I - 0x004F56 01:8F46: 04        .byte $04   ; 
- D 0 - I - 0x004F57 01:8F47: 04        .byte $04   ; 
- D 0 - I - 0x004F58 01:8F48: 04        .byte $04   ; 
- D 0 - I - 0x004F59 01:8F49: 04        .byte $04   ; 
- D 0 - I - 0x004F5A 01:8F4A: 16        .byte $16   ; 
- D 0 - I - 0x004F5B 01:8F4B: 04        .byte $04   ; 
- D 0 - I - 0x004F5C 01:8F4C: 04        .byte $04   ; 
- D 0 - I - 0x004F5D 01:8F4D: 04        .byte $04   ; 
- D 0 - I - 0x004F5E 01:8F4E: 16        .byte $16   ; 
- D 0 - I - 0x004F5F 01:8F4F: 04        .byte $04   ; 
- D 0 - I - 0x004F60 01:8F50: 04        .byte $04   ; 
- D 0 - I - 0x004F61 01:8F51: 04        .byte $04   ; 
- D 0 - I - 0x004F62 01:8F52: 16        .byte $16   ; 
- D 0 - I - 0x004F63 01:8F53: 04        .byte $04   ; 
- D 0 - I - 0x004F64 01:8F54: 89        .byte $89   ; 
- D 0 - I - 0x004F65 01:8F55: 90        .byte $90   ; 
- D 0 - I - 0x004F66 01:8F56: 91        .byte $91   ; 
- D 0 - I - 0x004F67 01:8F57: 04        .byte $04   ; 
- D 0 - I - 0x004F68 01:8F58: 04        .byte $04   ; 
- D 0 - I - 0x004F69 01:8F59: 04        .byte $04   ; 
- D 0 - I - 0x004F6A 01:8F5A: 04        .byte $04   ; 
- D 0 - I - 0x004F6B 01:8F5B: 04        .byte $04   ; 
- D 0 - I - 0x004F6C 01:8F5C: 04        .byte $04   ; 
- D 0 - I - 0x004F6D 01:8F5D: 04        .byte $04   ; 
- D 0 - I - 0x004F6E 01:8F5E: 04        .byte $04   ; 
- D 0 - I - 0x004F6F 01:8F5F: 04        .byte $04   ; 
- D 0 - I - 0x004F70 01:8F60: 04        .byte $04   ; 
- D 0 - I - 0x004F71 01:8F61: 04        .byte $04   ; 
- D 0 - I - 0x004F72 01:8F62: 04        .byte $04   ; 
- D 0 - I - 0x004F73 01:8F63: 04        .byte $04   ; 
- D 0 - I - 0x004F74 01:8F64: 04        .byte $04   ; 
off_8F65_02:
- D 0 - I - 0x004F75 01:8F65: 00        .byte $00   ; 
- D 0 - I - 0x004F76 01:8F66: 00        .byte $00   ; 
- D 0 - I - 0x004F77 01:8F67: 00        .byte $00   ; 
- D 0 - I - 0x004F78 01:8F68: 00        .byte $00   ; 
- - - - - - 0x004F79 01:8F69: 00        .byte $00   ; 
- - - - - - 0x004F7A 01:8F6A: 00        .byte $00   ; 
- - - - - - 0x004F7B 01:8F6B: 00        .byte $00   ; 
- - - - - - 0x004F7C 01:8F6C: 00        .byte $00   ; 
- D 0 - I - 0x004F7D 01:8F6D: 00        .byte $00   ; 
- D 0 - I - 0x004F7E 01:8F6E: 00        .byte $00   ; 
- D 0 - I - 0x004F7F 01:8F6F: 00        .byte $00   ; 
- D 0 - I - 0x004F80 01:8F70: 00        .byte $00   ; 
- D 0 - I - 0x004F81 01:8F71: 00        .byte $00   ; 
- D 0 - I - 0x004F82 01:8F72: 00        .byte $00   ; 
- D 0 - I - 0x004F83 01:8F73: 00        .byte $00   ; 
- D 0 - I - 0x004F84 01:8F74: 00        .byte $00   ; 
- D 0 - I - 0x004F85 01:8F75: 40        .byte $40   ; 
- D 0 - I - 0x004F86 01:8F76: 55        .byte $55   ; 
- D 0 - I - 0x004F87 01:8F77: 00        .byte $00   ; 
- D 0 - I - 0x004F88 01:8F78: 00        .byte $00   ; 
- D 0 - I - 0x004F89 01:8F79: 00        .byte $00   ; 
- D 0 - I - 0x004F8A 01:8F7A: 00        .byte $00   ; 
- D 0 - I - 0x004F8B 01:8F7B: 55        .byte $55   ; 
- D 0 - I - 0x004F8C 01:8F7C: 55        .byte $55   ; 
- D 0 - I - 0x004F8D 01:8F7D: 55        .byte $55   ; 
- D 0 - I - 0x004F8E 01:8F7E: 55        .byte $55   ; 
- D 0 - I - 0x004F8F 01:8F7F: 00        .byte $00   ; 
- D 0 - I - 0x004F90 01:8F80: 00        .byte $00   ; 
- D 0 - I - 0x004F91 01:8F81: 00        .byte $00   ; 
- D 0 - I - 0x004F92 01:8F82: 00        .byte $00   ; 
- D 0 - I - 0x004F93 01:8F83: 45        .byte $45   ; 
- D 0 - I - 0x004F94 01:8F84: 55        .byte $55   ; 
- D 0 - I - 0x004F95 01:8F85: 05        .byte $05   ; 
- D 0 - I - 0x004F96 01:8F86: 01        .byte $01   ; 
- D 0 - I - 0x004F97 01:8F87: 00        .byte $00   ; 
- D 0 - I - 0x004F98 01:8F88: 00        .byte $00   ; 
- D 0 - I - 0x004F99 01:8F89: 00        .byte $00   ; 
- D 0 - I - 0x004F9A 01:8F8A: 00        .byte $00   ; 
- D 0 - I - 0x004F9B 01:8F8B: 00        .byte $00   ; 
- D 0 - I - 0x004F9C 01:8F8C: 00        .byte $00   ; 
- D 0 - I - 0x004F9D 01:8F8D: 00        .byte $00   ; 
- D 0 - I - 0x004F9E 01:8F8E: 00        .byte $00   ; 
- D 0 - I - 0x004F9F 01:8F8F: 40        .byte $40   ; 
- D 0 - I - 0x004FA0 01:8F90: 50        .byte $50   ; 
- D 0 - I - 0x004FA1 01:8F91: 50        .byte $50   ; 
- D 0 - I - 0x004FA2 01:8F92: 00        .byte $00   ; 
- D 0 - I - 0x004FA3 01:8F93: 00        .byte $00   ; 
- D 0 - I - 0x004FA4 01:8F94: 00        .byte $00   ; 
- D 0 - I - 0x004FA5 01:8F95: 00        .byte $00   ; 
- D 0 - I - 0x004FA6 01:8F96: 00        .byte $00   ; 
- D 0 - I - 0x004FA7 01:8F97: 44        .byte $44   ; 
- D 0 - I - 0x004FA8 01:8F98: 55        .byte $55   ; 
- D 0 - I - 0x004FA9 01:8F99: 55        .byte $55   ; 
- D 0 - I - 0x004FAA 01:8F9A: 10        .byte $10   ; 
- D 0 - I - 0x004FAB 01:8F9B: 00        .byte $00   ; 
- D 0 - I - 0x004FAC 01:8F9C: 00        .byte $00   ; 
- D 0 - I - 0x004FAD 01:8F9D: 00        .byte $00   ; 
- D 0 - I - 0x004FAE 01:8F9E: 00        .byte $00   ; 
- D 0 - I - 0x004FAF 01:8F9F: 00        .byte $00   ; 
- D 0 - I - 0x004FB0 01:8FA0: 05        .byte $05   ; 
- D 0 - I - 0x004FB1 01:8FA1: 05        .byte $05   ; 
- D 0 - I - 0x004FB2 01:8FA2: 01        .byte $01   ; 
- D 0 - I - 0x004FB3 01:8FA3: 00        .byte $00   ; 
- D 0 - I - 0x004FB4 01:8FA4: 00        .byte $00   ; 
off_8FA5_03:
- D 0 - I - 0x004FB5 01:8FA5: 16        .byte $16   ; 
- D 0 - I - 0x004FB6 01:8FA6: 16        .byte $16   ; 
- D 0 - I - 0x004FB7 01:8FA7: 16        .byte $16   ; 
- D 0 - I - 0x004FB8 01:8FA8: 04        .byte $04   ; 
- D 0 - I - 0x004FB9 01:8FA9: 16        .byte $16   ; 
- D 0 - I - 0x004FBA 01:8FAA: 04        .byte $04   ; 
- D 0 - I - 0x004FBB 01:8FAB: 16        .byte $16   ; 
- D 0 - I - 0x004FBC 01:8FAC: 16        .byte $16   ; 
- D 0 - I - 0x004FBD 01:8FAD: 04        .byte $04   ; 
- D 0 - I - 0x004FBE 01:8FAE: 16        .byte $16   ; 
- D 0 - I - 0x004FBF 01:8FAF: 16        .byte $16   ; 
- D 0 - I - 0x004FC0 01:8FB0: 16        .byte $16   ; 
- D 0 - I - 0x004FC1 01:8FB1: 16        .byte $16   ; 
- D 0 - I - 0x004FC2 01:8FB2: 04        .byte $04   ; 
- D 0 - I - 0x004FC3 01:8FB3: 16        .byte $16   ; 
- D 0 - I - 0x004FC4 01:8FB4: 04        .byte $04   ; 
- D 0 - I - 0x004FC5 01:8FB5: 16        .byte $16   ; 
- D 0 - I - 0x004FC6 01:8FB6: 16        .byte $16   ; 
- D 0 - I - 0x004FC7 01:8FB7: 04        .byte $04   ; 
- - - - - - 0x004FC8 01:8FB8: 16        .byte $16   ; 
off_8FB9_03:
- D 0 - I - 0x004FC9 01:8FB9: 16        .byte $16   ; 
- D 0 - I - 0x004FCA 01:8FBA: 16        .byte $16   ; 
- D 0 - I - 0x004FCB 01:8FBB: 16        .byte $16   ; 
- D 0 - I - 0x004FCC 01:8FBC: 04        .byte $04   ; 
- D 0 - I - 0x004FCD 01:8FBD: 16        .byte $16   ; 
- D 0 - I - 0x004FCE 01:8FBE: 04        .byte $04   ; 
- D 0 - I - 0x004FCF 01:8FBF: 16        .byte $16   ; 
- D 0 - I - 0x004FD0 01:8FC0: 16        .byte $16   ; 
- D 0 - I - 0x004FD1 01:8FC1: 04        .byte $04   ; 
- D 0 - I - 0x004FD2 01:8FC2: 16        .byte $16   ; 
- D 0 - I - 0x004FD3 01:8FC3: 16        .byte $16   ; 
- D 0 - I - 0x004FD4 01:8FC4: 16        .byte $16   ; 
- D 0 - I - 0x004FD5 01:8FC5: 16        .byte $16   ; 
- D 0 - I - 0x004FD6 01:8FC6: 04        .byte $04   ; 
- D 0 - I - 0x004FD7 01:8FC7: 16        .byte $16   ; 
- D 0 - I - 0x004FD8 01:8FC8: 04        .byte $04   ; 
- D 0 - I - 0x004FD9 01:8FC9: 16        .byte $16   ; 
- D 0 - I - 0x004FDA 01:8FCA: 16        .byte $16   ; 
- D 0 - I - 0x004FDB 01:8FCB: 16        .byte $16   ; 
- D 0 - I - 0x004FDC 01:8FCC: 16        .byte $16   ; 
- D 0 - I - 0x004FDD 01:8FCD: 04        .byte $04   ; 
- D 0 - I - 0x004FDE 01:8FCE: 16        .byte $16   ; 
- D 0 - I - 0x004FDF 01:8FCF: 04        .byte $04   ; 
- D 0 - I - 0x004FE0 01:8FD0: 16        .byte $16   ; 
- D 0 - I - 0x004FE1 01:8FD1: 16        .byte $16   ; 
- D 0 - I - 0x004FE2 01:8FD2: 16        .byte $16   ; 
off_8FD3_03:
- D 0 - I - 0x004FE3 01:8FD3: 16        .byte $16   ; 
- D 0 - I - 0x004FE4 01:8FD4: 04        .byte $04   ; 
- D 0 - I - 0x004FE5 01:8FD5: 16        .byte $16   ; 
- D 0 - I - 0x004FE6 01:8FD6: 04        .byte $04   ; 
- D 0 - I - 0x004FE7 01:8FD7: 16        .byte $16   ; 
- D 0 - I - 0x004FE8 01:8FD8: 04        .byte $04   ; 
- - - - - - 0x004FE9 01:8FD9: 16        .byte $16   ; 
- - - - - - 0x004FEA 01:8FDA: 04        .byte $04   ; 
- - - - - - 0x004FEB 01:8FDB: 16        .byte $16   ; 
- - - - - - 0x004FEC 01:8FDC: 16        .byte $16   ; 
- - - - - - 0x004FED 01:8FDD: 04        .byte $04   ; 
- - - - - - 0x004FEE 01:8FDE: 16        .byte $16   ; 
- - - - - - 0x004FEF 01:8FDF: 04        .byte $04   ; 
- - - - - - 0x004FF0 01:8FE0: 16        .byte $16   ; 
- - - - - - 0x004FF1 01:8FE1: 04        .byte $04   ; 
- - - - - - 0x004FF2 01:8FE2: 16        .byte $16   ; 
- - - - - - 0x004FF3 01:8FE3: 16        .byte $16   ; 
- - - - - - 0x004FF4 01:8FE4: 04        .byte $04   ; 
off_8FE5_03:
- - - - - - 0x004FF5 01:8FE5: 16        .byte $16   ; 
- - - - - - 0x004FF6 01:8FE6: 04        .byte $04   ; 
- - - - - - 0x004FF7 01:8FE7: 16        .byte $16   ; 
- - - - - - 0x004FF8 01:8FE8: 04        .byte $04   ; 
- - - - - - 0x004FF9 01:8FE9: 16        .byte $16   ; 
- - - - - - 0x004FFA 01:8FEA: 04        .byte $04   ; 
- - - - - - 0x004FFB 01:8FEB: 16        .byte $16   ; 
- - - - - - 0x004FFC 01:8FEC: 04        .byte $04   ; 
- - - - - - 0x004FFD 01:8FED: 16        .byte $16   ; 
- - - - - - 0x004FFE 01:8FEE: 16        .byte $16   ; 
- - - - - - 0x004FFF 01:8FEF: 04        .byte $04   ; 
- - - - - - 0x005000 01:8FF0: 16        .byte $16   ; 
- - - - - - 0x005001 01:8FF1: 04        .byte $04   ; 
- - - - - - 0x005002 01:8FF2: 16        .byte $16   ; 
- - - - - - 0x005003 01:8FF3: 04        .byte $04   ; 
- - - - - - 0x005004 01:8FF4: 16        .byte $16   ; 
- D 0 - I - 0x005005 01:8FF5: 04        .byte $04   ; 
- D 0 - I - 0x005006 01:8FF6: 16        .byte $16   ; 
- D 0 - I - 0x005007 01:8FF7: 16        .byte $16   ; 
- D 0 - I - 0x005008 01:8FF8: 04        .byte $04   ; 
- D 0 - I - 0x005009 01:8FF9: 16        .byte $16   ; 
- D 0 - I - 0x00500A 01:8FFA: 04        .byte $04   ; 
- D 0 - I - 0x00500B 01:8FFB: 16        .byte $16   ; 
- D 0 - I - 0x00500C 01:8FFC: 04        .byte $04   ; 
- D 0 - I - 0x00500D 01:8FFD: 16        .byte $16   ; 
- D 0 - I - 0x00500E 01:8FFE: 04        .byte $04   ; 
- D 0 - I - 0x00500F 01:8FFF: 16        .byte $16   ; 
- D 0 - I - 0x005010 01:9000: 16        .byte $16   ; 
- D 0 - I - 0x005011 01:9001: 04        .byte $04   ; 
- D 0 - I - 0x005012 01:9002: 16        .byte $16   ; 
- D 0 - I - 0x005013 01:9003: 04        .byte $04   ; 
- D 0 - I - 0x005014 01:9004: 16        .byte $16   ; 
off_9005_06:
- D 0 - I - 0x005015 01:9005: 10        .byte $10   ; 
- D 0 - I - 0x005016 01:9006: 10        .byte $10   ; 
- D 0 - I - 0x005017 01:9007: 10        .byte $10   ; 
- D 0 - I - 0x005018 01:9008: 10        .byte $10   ; 
- D 0 - I - 0x005019 01:9009: 10        .byte $10   ; 
- D 0 - I - 0x00501A 01:900A: 10        .byte $10   ; 
- D 0 - I - 0x00501B 01:900B: 10        .byte $10   ; 
- D 0 - I - 0x00501C 01:900C: 10        .byte $10   ; 
- D 0 - I - 0x00501D 01:900D: 10        .byte $10   ; 
- D 0 - I - 0x00501E 01:900E: 10        .byte $10   ; 
- D 0 - I - 0x00501F 01:900F: 80        .byte $80   ; 
- D 0 - I - 0x005020 01:9010: 10        .byte $10   ; 
- D 0 - I - 0x005021 01:9011: 81        .byte $81   ; 
- D 0 - I - 0x005022 01:9012: 00        .byte $00   ; 
- D 0 - I - 0x005023 01:9013: 00        .byte $00   ; 
- D 0 - I - 0x005024 01:9014: 00        .byte $00   ; 
- D 0 - I - 0x005025 01:9015: 00        .byte $00   ; 
- D 0 - I - 0x005026 01:9016: 14        .byte $14   ; 
- D 0 - I - 0x005027 01:9017: 00        .byte $00   ; 
- D 0 - I - 0x005028 01:9018: 00        .byte $00   ; 
- D 0 - I - 0x005029 01:9019: 00        .byte $00   ; 
- D 0 - I - 0x00502A 01:901A: 00        .byte $00   ; 
- D 0 - I - 0x00502B 01:901B: 00        .byte $00   ; 
- D 0 - I - 0x00502C 01:901C: 00        .byte $00   ; 
- - - - - - 0x00502D 01:901D: 00        .byte $00   ; 
- - - - - - 0x00502E 01:901E: 00        .byte $00   ; 
- - - - - - 0x00502F 01:901F: 00        .byte $00   ; 
- - - - - - 0x005030 01:9020: 00        .byte $00   ; 
- - - - - - 0x005031 01:9021: 00        .byte $00   ; 
- - - - - - 0x005032 01:9022: 00        .byte $00   ; 
- - - - - - 0x005033 01:9023: 00        .byte $00   ; 
- - - - - - 0x005034 01:9024: 00        .byte $00   ; 
off_9025_07:
- D 0 - I - 0x005035 01:9025: 04        .byte $04   ; 
- D 0 - I - 0x005036 01:9026: 04        .byte $04   ; 
- D 0 - I - 0x005037 01:9027: 04        .byte $04   ; 
- D 0 - I - 0x005038 01:9028: 04        .byte $04   ; 
- D 0 - I - 0x005039 01:9029: 04        .byte $04   ; 
- D 0 - I - 0x00503A 01:902A: 04        .byte $04   ; 
- D 0 - I - 0x00503B 01:902B: 04        .byte $04   ; 
- D 0 - I - 0x00503C 01:902C: 04        .byte $04   ; 
- D 0 - I - 0x00503D 01:902D: 04        .byte $04   ; 
- D 0 - I - 0x00503E 01:902E: 04        .byte $04   ; 
- D 0 - I - 0x00503F 01:902F: 90        .byte $90   ; 
- D 0 - I - 0x005040 01:9030: 04        .byte $04   ; 
- D 0 - I - 0x005041 01:9031: 34        .byte $34   ; 
- D 0 - I - 0x005042 01:9032: 04        .byte $04   ; 
- D 0 - I - 0x005043 01:9033: 16        .byte $16   ; 
- D 0 - I - 0x005044 01:9034: 04        .byte $04   ; 
- D 0 - I - 0x005045 01:9035: 04        .byte $04   ; 
off_9036_03:
- D 0 - I - 0x005046 01:9036: 04        .byte $04   ; 
- D 0 - I - 0x005047 01:9037: 04        .byte $04   ; 
- D 0 - I - 0x005048 01:9038: 04        .byte $04   ; 
- D 0 - I - 0x005049 01:9039: 16        .byte $16   ; 
- D 0 - I - 0x00504A 01:903A: 04        .byte $04   ; 
- D 0 - I - 0x00504B 01:903B: 04        .byte $04   ; 
- D 0 - I - 0x00504C 01:903C: 04        .byte $04   ; 
- D 0 - I - 0x00504D 01:903D: 04        .byte $04   ; 
- D 0 - I - 0x00504E 01:903E: 04        .byte $04   ; 
- D 0 - I - 0x00504F 01:903F: 04        .byte $04   ; 
- D 0 - I - 0x005050 01:9040: 04        .byte $04   ; 
- D 0 - I - 0x005051 01:9041: 04        .byte $04   ; 
- D 0 - I - 0x005052 01:9042: 04        .byte $04   ; 
- D 0 - I - 0x005053 01:9043: 16        .byte $16   ; 
- D 0 - I - 0x005054 01:9044: 04        .byte $04   ; 
- D 0 - I - 0x005055 01:9045: 04        .byte $04   ; 
- D 0 - I - 0x005056 01:9046: 04        .byte $04   ; 
- D 0 - I - 0x005057 01:9047: 04        .byte $04   ; 
- D 0 - I - 0x005058 01:9048: 04        .byte $04   ; 
- D 0 - I - 0x005059 01:9049: 04        .byte $04   ; 
- D 0 - I - 0x00505A 01:904A: 04        .byte $04   ; 
- D 0 - I - 0x00505B 01:904B: 04        .byte $04   ; 
- D 0 - I - 0x00505C 01:904C: 04        .byte $04   ; 
- D 0 - I - 0x00505D 01:904D: 04        .byte $04   ; 
- D 0 - I - 0x00505E 01:904E: 04        .byte $04   ; 
- D 0 - I - 0x00505F 01:904F: 04        .byte $04   ; 
- D 0 - I - 0x005060 01:9050: 04        .byte $04   ; 
- D 0 - I - 0x005061 01:9051: 04        .byte $04   ; 
- D 0 - I - 0x005062 01:9052: 04        .byte $04   ; 
- D 0 - I - 0x005063 01:9053: 04        .byte $04   ; 
- D 0 - I - 0x005064 01:9054: 04        .byte $04   ; 
- D 0 - I - 0x005065 01:9055: 2B        .byte $2B   ; 
off_9056_0F:
- D 0 - I - 0x005066 01:9056: 5E        .byte $5E   ; 
- D 0 - I - 0x005067 01:9057: E1        .byte $E1   ; 
- D 0 - I - 0x005068 01:9058: 5F        .byte $5F   ; 
- D 0 - I - 0x005069 01:9059: 47        .byte $47   ; 
- D 0 - I - 0x00506A 01:905A: 04        .byte $04   ; 
- D 0 - I - 0x00506B 01:905B: 04        .byte $04   ; 
- D 0 - I - 0x00506C 01:905C: 04        .byte $04   ; 
- D 0 - I - 0x00506D 01:905D: 04        .byte $04   ; 
- D 0 - I - 0x00506E 01:905E: 04        .byte $04   ; 
- D 0 - I - 0x00506F 01:905F: 04        .byte $04   ; 
- D 0 - I - 0x005070 01:9060: 04        .byte $04   ; 
- D 0 - I - 0x005071 01:9061: 04        .byte $04   ; 
- D 0 - I - 0x005072 01:9062: 04        .byte $04   ; 
- D 0 - I - 0x005073 01:9063: 34        .byte $34   ; 
- D 0 - I - 0x005074 01:9064: C0        .byte $C0   ; 
- D 0 - I - 0x005075 01:9065: C1        .byte $C1   ; 
- D 0 - I - 0x005076 01:9066: C2        .byte $C2   ; 
- D 0 - I - 0x005077 01:9067: C3        .byte $C3   ; 
- D 0 - I - 0x005078 01:9068: C4        .byte $C4   ; 
- D 0 - I - 0x005079 01:9069: 04        .byte $04   ; 
- D 0 - I - 0x00507A 01:906A: 04        .byte $04   ; 
- D 0 - I - 0x00507B 01:906B: 04        .byte $04   ; 
- D 0 - I - 0x00507C 01:906C: 17        .byte $17   ; 
- D 0 - I - 0x00507D 01:906D: 04        .byte $04   ; 
- - - - - - 0x00507E 01:906E: 04        .byte $04   ; 
off_906F_09:
- - - - - - 0x00507F 01:906F: 04        .byte $04   ; 
- - - - - - 0x005080 01:9070: 04        .byte $04   ; 
- - - - - - 0x005081 01:9071: 04        .byte $04   ; 
- - - - - - 0x005082 01:9072: 04        .byte $04   ; 
- - - - - - 0x005083 01:9073: 16        .byte $16   ; 
- - - - - - 0x005084 01:9074: 04        .byte $04   ; 
- - - - - - 0x005085 01:9075: 04        .byte $04   ; 
- - - - - - 0x005086 01:9076: 17        .byte $17   ; 
- - - - - - 0x005087 01:9077: 04        .byte $04   ; 
- D 0 - I - 0x005088 01:9078: 04        .byte $04   ; 
- D 0 - I - 0x005089 01:9079: 04        .byte $04   ; 
- D 0 - I - 0x00508A 01:907A: 04        .byte $04   ; 
- D 0 - I - 0x00508B 01:907B: 04        .byte $04   ; 
- D 0 - I - 0x00508C 01:907C: 04        .byte $04   ; 
- D 0 - I - 0x00508D 01:907D: 04        .byte $04   ; 
- D 0 - I - 0x00508E 01:907E: 33        .byte $33   ; 
- D 0 - I - 0x00508F 01:907F: 04        .byte $04   ; 
- D 0 - I - 0x005090 01:9080: 04        .byte $04   ; 
- D 0 - I - 0x005091 01:9081: 04        .byte $04   ; 
- D 0 - I - 0x005092 01:9082: 04        .byte $04   ; 
- D 0 - I - 0x005093 01:9083: 04        .byte $04   ; 
- D 0 - I - 0x005094 01:9084: 04        .byte $04   ; 
- D 0 - I - 0x005095 01:9085: 04        .byte $04   ; 
- D 0 - I - 0x005096 01:9086: 04        .byte $04   ; 
- D 0 - I - 0x005097 01:9087: 17        .byte $17   ; 
- D 0 - I - 0x005098 01:9088: 04        .byte $04   ; 
- D 0 - I - 0x005099 01:9089: 04        .byte $04   ; 
- D 0 - I - 0x00509A 01:908A: 04        .byte $04   ; 
- D 0 - I - 0x00509B 01:908B: 45        .byte $45   ; 
- D 0 - I - 0x00509C 01:908C: 5B        .byte $5B   ; 
off_908D_0F:
- D 0 - I - 0x00509D 01:908D: 5B        .byte $5B   ; 
- D 0 - I - 0x00509E 01:908E: 5B        .byte $5B   ; 
- D 0 - I - 0x00509F 01:908F: 7B        .byte $7B   ; 
- D 0 - I - 0x0050A0 01:9090: 6D        .byte $6D   ; 
- D 0 - I - 0x0050A1 01:9091: 6D        .byte $6D   ; 
- D 0 - I - 0x0050A2 01:9092: 6D        .byte $6D   ; 
- D 0 - I - 0x0050A3 01:9093: 70        .byte $70   ; 
- D 0 - I - 0x0050A4 01:9094: 6A        .byte $6A   ; 
- D 0 - I - 0x0050A5 01:9095: 04        .byte $04   ; 
- D 0 - I - 0x0050A6 01:9096: 04        .byte $04   ; 
- D 0 - I - 0x0050A7 01:9097: 04        .byte $04   ; 
- D 0 - I - 0x0050A8 01:9098: 04        .byte $04   ; 
- D 0 - I - 0x0050A9 01:9099: 04        .byte $04   ; 
- D 0 - I - 0x0050AA 01:909A: 04        .byte $04   ; 
- D 0 - I - 0x0050AB 01:909B: 04        .byte $04   ; 
- D 0 - I - 0x0050AC 01:909C: 04        .byte $04   ; 
- D 0 - I - 0x0050AD 01:909D: 04        .byte $04   ; 
- D 0 - I - 0x0050AE 01:909E: 04        .byte $04   ; 
- D 0 - I - 0x0050AF 01:909F: 04        .byte $04   ; 
- D 0 - I - 0x0050B0 01:90A0: 04        .byte $04   ; 
- D 0 - I - 0x0050B1 01:90A1: 04        .byte $04   ; 
- D 0 - I - 0x0050B2 01:90A2: 04        .byte $04   ; 
- D 0 - I - 0x0050B3 01:90A3: 04        .byte $04   ; 
- D 0 - I - 0x0050B4 01:90A4: 04        .byte $04   ; 
- D 0 - I - 0x0050B5 01:90A5: 61        .byte $61   ; 
- D 0 - I - 0x0050B6 01:90A6: 6D        .byte $6D   ; 
- D 0 - I - 0x0050B7 01:90A7: 6D        .byte $6D   ; 
- D 0 - I - 0x0050B8 01:90A8: 70        .byte $70   ; 
- D 0 - I - 0x0050B9 01:90A9: 6D        .byte $6D   ; 
- D 0 - I - 0x0050BA 01:90AA: 6D        .byte $6D   ; 
- D 0 - I - 0x0050BB 01:90AB: 6D        .byte $6D   ; 
- D 0 - I - 0x0050BC 01:90AC: 74        .byte $74   ; 
off_90AD_13:
- D 0 - I - 0x0050BD 01:90AD: 04        .byte $04   ; 
- D 0 - I - 0x0050BE 01:90AE: 04        .byte $04   ; 
- D 0 - I - 0x0050BF 01:90AF: 31        .byte $31   ; 
- D 0 - I - 0x0050C0 01:90B0: 04        .byte $04   ; 
- D 0 - I - 0x0050C1 01:90B1: 04        .byte $04   ; 
- D 0 - I - 0x0050C2 01:90B2: 04        .byte $04   ; 
- D 0 - I - 0x0050C3 01:90B3: 16        .byte $16   ; 
- D 0 - I - 0x0050C4 01:90B4: 04        .byte $04   ; 
- D 0 - I - 0x0050C5 01:90B5: 35        .byte $35   ; 
- D 0 - I - 0x0050C6 01:90B6: 04        .byte $04   ; 
- D 0 - I - 0x0050C7 01:90B7: 04        .byte $04   ; 
- D 0 - I - 0x0050C8 01:90B8: 04        .byte $04   ; 
- D 0 - I - 0x0050C9 01:90B9: 04        .byte $04   ; 
- D 0 - I - 0x0050CA 01:90BA: 37        .byte $37   ; 
- D 0 - I - 0x0050CB 01:90BB: B5        .byte $B5   ; 
- D 0 - I - 0x0050CC 01:90BC: B6        .byte $B6   ; 
- D 0 - I - 0x0050CD 01:90BD: B7        .byte $B7   ; 
- D 0 - I - 0x0050CE 01:90BE: B7        .byte $B7   ; 
- D 0 - I - 0x0050CF 01:90BF: B8        .byte $B8   ; 
- D 0 - I - 0x0050D0 01:90C0: 04        .byte $04   ; 
- D 0 - I - 0x0050D1 01:90C1: 04        .byte $04   ; 
- D 0 - I - 0x0050D2 01:90C2: 04        .byte $04   ; 
- D 0 - I - 0x0050D3 01:90C3: 04        .byte $04   ; 
- D 0 - I - 0x0050D4 01:90C4: 04        .byte $04   ; 
off_90C5_17:
- D 0 - I - 0x0050D5 01:90C5: 04        .byte $04   ; 
- D 0 - I - 0x0050D6 01:90C6: 04        .byte $04   ; 
- D 0 - I - 0x0050D7 01:90C7: 04        .byte $04   ; 
- D 0 - I - 0x0050D8 01:90C8: 04        .byte $04   ; 
- D 0 - I - 0x0050D9 01:90C9: 04        .byte $04   ; 
- D 0 - I - 0x0050DA 01:90CA: 17        .byte $17   ; 
- D 0 - I - 0x0050DB 01:90CB: 04        .byte $04   ; 
- D 0 - I - 0x0050DC 01:90CC: 04        .byte $04   ; 
- D 0 - I - 0x0050DD 01:90CD: 04        .byte $04   ; 
- D 0 - I - 0x0050DE 01:90CE: 16        .byte $16   ; 
- D 0 - I - 0x0050DF 01:90CF: 04        .byte $04   ; 
- D 0 - I - 0x0050E0 01:90D0: 04        .byte $04   ; 
- D 0 - I - 0x0050E1 01:90D1: 04        .byte $04   ; 
- D 0 - I - 0x0050E2 01:90D2: 16        .byte $16   ; 
- D 0 - I - 0x0050E3 01:90D3: 04        .byte $04   ; 
- D 0 - I - 0x0050E4 01:90D4: 04        .byte $04   ; 
- D 0 - I - 0x0050E5 01:90D5: 04        .byte $04   ; 
- D 0 - I - 0x0050E6 01:90D6: 04        .byte $04   ; 
- D 0 - I - 0x0050E7 01:90D7: 04        .byte $04   ; 
- D 0 - I - 0x0050E8 01:90D8: 04        .byte $04   ; 
- D 0 - I - 0x0050E9 01:90D9: 04        .byte $04   ; 
- D 0 - I - 0x0050EA 01:90DA: 16        .byte $16   ; 
- D 0 - I - 0x0050EB 01:90DB: 04        .byte $04   ; 
- D 0 - I - 0x0050EC 01:90DC: 04        .byte $04   ; 
- D 0 - I - 0x0050ED 01:90DD: 04        .byte $04   ; 
- D 0 - I - 0x0050EE 01:90DE: 17        .byte $17   ; 
- D 0 - I - 0x0050EF 01:90DF: 04        .byte $04   ; 
- D 0 - I - 0x0050F0 01:90E0: 04        .byte $04   ; 
- D 0 - I - 0x0050F1 01:90E1: 18        .byte $18   ; 
- D 0 - I - 0x0050F2 01:90E2: 04        .byte $04   ; 
- D 0 - I - 0x0050F3 01:90E3: 04        .byte $04   ; 
- D 0 - I - 0x0050F4 01:90E4: 2B        .byte $2B   ; 
off_90E5_14:
- D 0 - I - 0x0050F5 01:90E5: 04        .byte $04   ; 
- D 0 - I - 0x0050F6 01:90E6: 09        .byte $09   ; 
- D 0 - I - 0x0050F7 01:90E7: 8F        .byte $8F   ; 
- D 0 - I - 0x0050F8 01:90E8: 04        .byte $04   ; 
- D 0 - I - 0x0050F9 01:90E9: 04        .byte $04   ; 
- D 0 - I - 0x0050FA 01:90EA: 04        .byte $04   ; 
- D 0 - I - 0x0050FB 01:90EB: 04        .byte $04   ; 
- D 0 - I - 0x0050FC 01:90EC: 04        .byte $04   ; 
- D 0 - I - 0x0050FD 01:90ED: 36        .byte $36   ; 
- D 0 - I - 0x0050FE 01:90EE: 04        .byte $04   ; 
- D 0 - I - 0x0050FF 01:90EF: 16        .byte $16   ; 
- D 0 - I - 0x005100 01:90F0: 04        .byte $04   ; 
- D 0 - I - 0x005101 01:90F1: 04        .byte $04   ; 
- D 0 - I - 0x005102 01:90F2: 04        .byte $04   ; 
- D 0 - I - 0x005103 01:90F3: C5        .byte $C5   ; 
- D 0 - I - 0x005104 01:90F4: C6        .byte $C6   ; 
- D 0 - I - 0x005105 01:90F5: C7        .byte $C7   ; 
- D 0 - I - 0x005106 01:90F6: C7        .byte $C7   ; 
- D 0 - I - 0x005107 01:90F7: C8        .byte $C8   ; 
- D 0 - I - 0x005108 01:90F8: 04        .byte $04   ; 
- D 0 - I - 0x005109 01:90F9: 04        .byte $04   ; 
off_90FA_0F:
- D 0 - I - 0x00510A 01:90FA: 04        .byte $04   ; 
- D 0 - I - 0x00510B 01:90FB: 04        .byte $04   ; 
- D 0 - I - 0x00510C 01:90FC: 16        .byte $16   ; 
- - - - - - 0x00510D 01:90FD: 04        .byte $04   ; 
- - - - - - 0x00510E 01:90FE: 04        .byte $04   ; 
- - - - - - 0x00510F 01:90FF: 04        .byte $04   ; 
- - - - - - 0x005110 01:9100: 04        .byte $04   ; 
- - - - - - 0x005111 01:9101: 04        .byte $04   ; 
- - - - - - 0x005112 01:9102: 04        .byte $04   ; 
- D 0 - I - 0x005113 01:9103: 04        .byte $04   ; 
- D 0 - I - 0x005114 01:9104: 04        .byte $04   ; 
- D 0 - I - 0x005115 01:9105: 04        .byte $04   ; 
- D 0 - I - 0x005116 01:9106: 04        .byte $04   ; 
- D 0 - I - 0x005117 01:9107: C0        .byte $C0   ; 
- D 0 - I - 0x005118 01:9108: C1        .byte $C1   ; 
- D 0 - I - 0x005119 01:9109: C2        .byte $C2   ; 
- D 0 - I - 0x00511A 01:910A: C3        .byte $C3   ; 
- D 0 - I - 0x00511B 01:910B: C4        .byte $C4   ; 
- D 0 - I - 0x00511C 01:910C: 33        .byte $33   ; 
- D 0 - I - 0x00511D 01:910D: 04        .byte $04   ; 
- D 0 - I - 0x00511E 01:910E: 04        .byte $04   ; 
- D 0 - I - 0x00511F 01:910F: 04        .byte $04   ; 
- D 0 - I - 0x005120 01:9110: 04        .byte $04   ; 
- D 0 - I - 0x005121 01:9111: 04        .byte $04   ; 
- D 0 - I - 0x005122 01:9112: 04        .byte $04   ; 
- D 0 - I - 0x005123 01:9113: 04        .byte $04   ; 
- D 0 - I - 0x005124 01:9114: 04        .byte $04   ; 
- D 0 - I - 0x005125 01:9115: 04        .byte $04   ; 
- D 0 - I - 0x005126 01:9116: 04        .byte $04   ; 
- D 0 - I - 0x005127 01:9117: 04        .byte $04   ; 
- D 0 - I - 0x005128 01:9118: 32        .byte $32   ; 
- D 0 - I - 0x005129 01:9119: 04        .byte $04   ; 
off_911A_15:
- D 0 - I - 0x00512A 01:911A: 19        .byte $19   ; 
- D 0 - I - 0x00512B 01:911B: 1A        .byte $1A   ; 
- D 0 - I - 0x00512C 01:911C: 23        .byte $23   ; 
- D 0 - I - 0x00512D 01:911D: 00        .byte $00   ; 
- D 0 - I - 0x00512E 01:911E: 00        .byte $00   ; 
- D 0 - I - 0x00512F 01:911F: 00        .byte $00   ; 
- D 0 - I - 0x005130 01:9120: 14        .byte $14   ; 
- D 0 - I - 0x005131 01:9121: 00        .byte $00   ; 
- D 0 - I - 0x005132 01:9122: 1B        .byte $1B   ; 
- D 0 - I - 0x005133 01:9123: 20        .byte $20   ; 
- D 0 - I - 0x005134 01:9124: 00        .byte $00   ; 
- D 0 - I - 0x005135 01:9125: 00        .byte $00   ; 
- D 0 - I - 0x005136 01:9126: 00        .byte $00   ; 
- D 0 - I - 0x005137 01:9127: 14        .byte $14   ; 
- D 0 - I - 0x005138 01:9128: 22        .byte $22   ; 
- D 0 - I - 0x005139 01:9129: D5        .byte $D5   ; 
- D 0 - I - 0x00513A 01:912A: D6        .byte $D6   ; 
- D 0 - I - 0x00513B 01:912B: D6        .byte $D6   ; 
- D 0 - I - 0x00513C 01:912C: D7        .byte $D7   ; 
- D 0 - I - 0x00513D 01:912D: B4        .byte $B4   ; 
- D 0 - I - 0x00513E 01:912E: 00        .byte $00   ; 
- D 0 - I - 0x00513F 01:912F: 00        .byte $00   ; 
- D 0 - I - 0x005140 01:9130: 00        .byte $00   ; 
- D 0 - I - 0x005141 01:9131: 00        .byte $00   ; 
- - - - - - 0x005142 01:9132: 00        .byte $00   ; 
- - - - - - 0x005143 01:9133: 00        .byte $00   ; 
- - - - - - 0x005144 01:9134: 00        .byte $00   ; 
- - - - - - 0x005145 01:9135: 00        .byte $00   ; 
- - - - - - 0x005146 01:9136: 00        .byte $00   ; 
- - - - - - 0x005147 01:9137: 00        .byte $00   ; 
- - - - - - 0x005148 01:9138: 00        .byte $00   ; 
- - - - - - 0x005149 01:9139: 00        .byte $00   ; 
off_913A_16:
- D 0 - I - 0x00514A 01:913A: 08        .byte $08   ; 
- D 0 - I - 0x00514B 01:913B: 00        .byte $00   ; 
- D 0 - I - 0x00514C 01:913C: 24        .byte $24   ; 
- D 0 - I - 0x00514D 01:913D: 00        .byte $00   ; 
- D 0 - I - 0x00514E 01:913E: 00        .byte $00   ; 
- D 0 - I - 0x00514F 01:913F: 00        .byte $00   ; 
- D 0 - I - 0x005150 01:9140: 00        .byte $00   ; 
- D 0 - I - 0x005151 01:9141: 00        .byte $00   ; 
- D 0 - I - 0x005152 01:9142: 27        .byte $27   ; 
- D 0 - I - 0x005153 01:9143: 1C        .byte $1C   ; 
- D 0 - I - 0x005154 01:9144: 00        .byte $00   ; 
- D 0 - I - 0x005155 01:9145: 00        .byte $00   ; 
- D 0 - I - 0x005156 01:9146: 00        .byte $00   ; 
- D 0 - I - 0x005157 01:9147: 00        .byte $00   ; 
- D 0 - I - 0x005158 01:9148: 23        .byte $23   ; 
- D 0 - I - 0x005159 01:9149: D5        .byte $D5   ; 
- D 0 - I - 0x00515A 01:914A: D6        .byte $D6   ; 
- D 0 - I - 0x00515B 01:914B: D6        .byte $D6   ; 
- D 0 - I - 0x00515C 01:914C: 98        .byte $98   ; 
- D 0 - I - 0x00515D 01:914D: 99        .byte $99   ; 
- D 0 - I - 0x00515E 01:914E: 00        .byte $00   ; 
- D 0 - I - 0x00515F 01:914F: 00        .byte $00   ; 
- D 0 - I - 0x005160 01:9150: 00        .byte $00   ; 
- D 0 - I - 0x005161 01:9151: 00        .byte $00   ; 
- - - - - - 0x005162 01:9152: 00        .byte $00   ; 
- - - - - - 0x005163 01:9153: 00        .byte $00   ; 
- - - - - - 0x005164 01:9154: 00        .byte $00   ; 
- - - - - - 0x005165 01:9155: 00        .byte $00   ; 
- - - - - - 0x005166 01:9156: 00        .byte $00   ; 
- - - - - - 0x005167 01:9157: 00        .byte $00   ; 
- - - - - - 0x005168 01:9158: 00        .byte $00   ; 
- - - - - - 0x005169 01:9159: 00        .byte $00   ; 
off_915A_17:
- D 0 - I - 0x00516A 01:915A: 18        .byte $18   ; 
- D 0 - I - 0x00516B 01:915B: 04        .byte $04   ; 
- D 0 - I - 0x00516C 01:915C: 35        .byte $35   ; 
- D 0 - I - 0x00516D 01:915D: 04        .byte $04   ; 
- D 0 - I - 0x00516E 01:915E: 04        .byte $04   ; 
- D 0 - I - 0x00516F 01:915F: 04        .byte $04   ; 
- D 0 - I - 0x005170 01:9160: 16        .byte $16   ; 
- D 0 - I - 0x005171 01:9161: 04        .byte $04   ; 
- D 0 - I - 0x005172 01:9162: 04        .byte $04   ; 
- D 0 - I - 0x005173 01:9163: 31        .byte $31   ; 
- D 0 - I - 0x005174 01:9164: 04        .byte $04   ; 
- D 0 - I - 0x005175 01:9165: 17        .byte $17   ; 
- D 0 - I - 0x005176 01:9166: 04        .byte $04   ; 
- D 0 - I - 0x005177 01:9167: 04        .byte $04   ; 
- D 0 - I - 0x005178 01:9168: 34        .byte $34   ; 
- D 0 - I - 0x005179 01:9169: A4        .byte $A4   ; 
- D 0 - I - 0x00517A 01:916A: D6        .byte $D6   ; 
- D 0 - I - 0x00517B 01:916B: D6        .byte $D6   ; 
- D 0 - I - 0x00517C 01:916C: A9        .byte $A9   ; 
- D 0 - I - 0x00517D 01:916D: D4        .byte $D4   ; 
- D 0 - I - 0x00517E 01:916E: 04        .byte $04   ; 
off_916F_10:
- D 0 - I - 0x00517F 01:916F: 04        .byte $04   ; 
- D 0 - I - 0x005180 01:9170: 04        .byte $04   ; 
- D 0 - I - 0x005181 01:9171: 04        .byte $04   ; 
- D 0 - I - 0x005182 01:9172: 04        .byte $04   ; 
- D 0 - I - 0x005183 01:9173: 04        .byte $04   ; 
- D 0 - I - 0x005184 01:9174: 04        .byte $04   ; 
- D 0 - I - 0x005185 01:9175: 17        .byte $17   ; 
- D 0 - I - 0x005186 01:9176: 04        .byte $04   ; 
- D 0 - I - 0x005187 01:9177: 04        .byte $04   ; 
- D 0 - I - 0x005188 01:9178: 04        .byte $04   ; 
- D 0 - I - 0x005189 01:9179: 04        .byte $04   ; 
- D 0 - I - 0x00518A 01:917A: 04        .byte $04   ; 
- D 0 - I - 0x00518B 01:917B: 04        .byte $04   ; 
- D 0 - I - 0x00518C 01:917C: 04        .byte $04   ; 
- D 0 - I - 0x00518D 01:917D: 04        .byte $04   ; 
- D 0 - I - 0x00518E 01:917E: 04        .byte $04   ; 
- D 0 - I - 0x00518F 01:917F: 04        .byte $04   ; 
- D 0 - I - 0x005190 01:9180: 04        .byte $04   ; 
- D 0 - I - 0x005191 01:9181: 04        .byte $04   ; 
- D 0 - I - 0x005192 01:9182: 04        .byte $04   ; 
- D 0 - I - 0x005193 01:9183: 04        .byte $04   ; 
- D 0 - I - 0x005194 01:9184: 16        .byte $16   ; 
- D 0 - I - 0x005195 01:9185: 04        .byte $04   ; 
- D 0 - I - 0x005196 01:9186: 04        .byte $04   ; 
- D 0 - I - 0x005197 01:9187: 04        .byte $04   ; 
- D 0 - I - 0x005198 01:9188: 04        .byte $04   ; 
- D 0 - I - 0x005199 01:9189: 04        .byte $04   ; 
- D 0 - I - 0x00519A 01:918A: 04        .byte $04   ; 
- D 0 - I - 0x00519B 01:918B: 61        .byte $61   ; 
- D 0 - I - 0x00519C 01:918C: 6D        .byte $6D   ; 
- D 0 - I - 0x00519D 01:918D: 70        .byte $70   ; 
- D 0 - I - 0x00519E 01:918E: 74        .byte $74   ; 
off_918F_18:
- D 0 - I - 0x00519F 01:918F: 28        .byte $28   ; 
- D 0 - I - 0x0051A0 01:9190: 04        .byte $04   ; 
- D 0 - I - 0x0051A1 01:9191: 36        .byte $36   ; 
- D 0 - I - 0x0051A2 01:9192: 04        .byte $04   ; 
- D 0 - I - 0x0051A3 01:9193: 04        .byte $04   ; 
- D 0 - I - 0x0051A4 01:9194: 04        .byte $04   ; 
- D 0 - I - 0x0051A5 01:9195: 04        .byte $04   ; 
- D 0 - I - 0x0051A6 01:9196: 04        .byte $04   ; 
- D 0 - I - 0x0051A7 01:9197: 04        .byte $04   ; 
- D 0 - I - 0x0051A8 01:9198: 32        .byte $32   ; 
- D 0 - I - 0x0051A9 01:9199: 04        .byte $04   ; 
- D 0 - I - 0x0051AA 01:919A: 04        .byte $04   ; 
- D 0 - I - 0x0051AB 01:919B: 16        .byte $16   ; 
- D 0 - I - 0x0051AC 01:919C: 04        .byte $04   ; 
- D 0 - I - 0x0051AD 01:919D: 35        .byte $35   ; 
- D 0 - I - 0x0051AE 01:919E: A4        .byte $A4   ; 
- D 0 - I - 0x0051AF 01:919F: D6        .byte $D6   ; 
- D 0 - I - 0x0051B0 01:91A0: D6        .byte $D6   ; 
- D 0 - I - 0x0051B1 01:91A1: C9        .byte $C9   ; 
- D 0 - I - 0x0051B2 01:91A2: CA        .byte $CA   ; 
- D 0 - I - 0x0051B3 01:91A3: 04        .byte $04   ; 
- D 0 - I - 0x0051B4 01:91A4: 04        .byte $04   ; 
- D 0 - I - 0x0051B5 01:91A5: 04        .byte $04   ; 
- D 0 - I - 0x0051B6 01:91A6: 04        .byte $04   ; 
- - - - - - 0x0051B7 01:91A7: 04        .byte $04   ; 
off_91A8_09:
- - - - - - 0x0051B8 01:91A8: 04        .byte $04   ; 
- - - - - - 0x0051B9 01:91A9: 04        .byte $04   ; 
- - - - - - 0x0051BA 01:91AA: 04        .byte $04   ; 
- - - - - - 0x0051BB 01:91AB: 04        .byte $04   ; 
- - - - - - 0x0051BC 01:91AC: 16        .byte $16   ; 
- - - - - - 0x0051BD 01:91AD: 04        .byte $04   ; 
- - - - - - 0x0051BE 01:91AE: 04        .byte $04   ; 
- - - - - - 0x0051BF 01:91AF: 17        .byte $17   ; 
- - - - - - 0x0051C0 01:91B0: 04        .byte $04   ; 
- D 0 - I - 0x0051C1 01:91B1: 04        .byte $04   ; 
- D 0 - I - 0x0051C2 01:91B2: 04        .byte $04   ; 
- D 0 - I - 0x0051C3 01:91B3: 04        .byte $04   ; 
- D 0 - I - 0x0051C4 01:91B4: 04        .byte $04   ; 
- D 0 - I - 0x0051C5 01:91B5: 04        .byte $04   ; 
- D 0 - I - 0x0051C6 01:91B6: 04        .byte $04   ; 
- D 0 - I - 0x0051C7 01:91B7: 33        .byte $33   ; 
- D 0 - I - 0x0051C8 01:91B8: 04        .byte $04   ; 
- D 0 - I - 0x0051C9 01:91B9: 04        .byte $04   ; 
- D 0 - I - 0x0051CA 01:91BA: 04        .byte $04   ; 
- D 0 - I - 0x0051CB 01:91BB: 04        .byte $04   ; 
- D 0 - I - 0x0051CC 01:91BC: 04        .byte $04   ; 
- D 0 - I - 0x0051CD 01:91BD: 04        .byte $04   ; 
- D 0 - I - 0x0051CE 01:91BE: 04        .byte $04   ; 
- D 0 - I - 0x0051CF 01:91BF: 04        .byte $04   ; 
- D 0 - I - 0x0051D0 01:91C0: 61        .byte $61   ; 
- D 0 - I - 0x0051D1 01:91C1: 70        .byte $70   ; 
- D 0 - I - 0x0051D2 01:91C2: 6D        .byte $6D   ; 
- D 0 - I - 0x0051D3 01:91C3: 6D        .byte $6D   ; 
- D 0 - I - 0x0051D4 01:91C4: 6D        .byte $6D   ; 
- D 0 - I - 0x0051D5 01:91C5: 79        .byte $79   ; 
- D 0 - I - 0x0051D6 01:91C6: 5B        .byte $5B   ; 
- D 0 - I - 0x0051D7 01:91C7: 5B        .byte $5B   ; 
off_91C8_19:
- D 0 - I - 0x0051D8 01:91C8: 38        .byte $38   ; 
- D 0 - I - 0x0051D9 01:91C9: 00        .byte $00   ; 
- D 0 - I - 0x0051DA 01:91CA: 1B        .byte $1B   ; 
- D 0 - I - 0x0051DB 01:91CB: 20        .byte $20   ; 
- D 0 - I - 0x0051DC 01:91CC: 00        .byte $00   ; 
- D 0 - I - 0x0051DD 01:91CD: 00        .byte $00   ; 
- D 0 - I - 0x0051DE 01:91CE: 00        .byte $00   ; 
- D 0 - I - 0x0051DF 01:91CF: 00        .byte $00   ; 
- D 0 - I - 0x0051E0 01:91D0: 00        .byte $00   ; 
- D 0 - I - 0x0051E1 01:91D1: 23        .byte $23   ; 
- D 0 - I - 0x0051E2 01:91D2: 14        .byte $14   ; 
- D 0 - I - 0x0051E3 01:91D3: 00        .byte $00   ; 
- D 0 - I - 0x0051E4 01:91D4: 00        .byte $00   ; 
- D 0 - I - 0x0051E5 01:91D5: 00        .byte $00   ; 
- D 0 - I - 0x0051E6 01:91D6: 26        .byte $26   ; 
- D 0 - I - 0x0051E7 01:91D7: D5        .byte $D5   ; 
- D 0 - I - 0x0051E8 01:91D8: D6        .byte $D6   ; 
- D 0 - I - 0x0051E9 01:91D9: D6        .byte $D6   ; 
- D 0 - I - 0x0051EA 01:91DA: D6        .byte $D6   ; 
- D 0 - I - 0x0051EB 01:91DB: 9A        .byte $9A   ; 
- D 0 - I - 0x0051EC 01:91DC: 00        .byte $00   ; 
- D 0 - I - 0x0051ED 01:91DD: 00        .byte $00   ; 
- D 0 - I - 0x0051EE 01:91DE: 14        .byte $14   ; 
- D 0 - I - 0x0051EF 01:91DF: 00        .byte $00   ; 
- - - - - - 0x0051F0 01:91E0: 00        .byte $00   ; 
- - - - - - 0x0051F1 01:91E1: 14        .byte $14   ; 
- - - - - - 0x0051F2 01:91E2: 00        .byte $00   ; 
- - - - - - 0x0051F3 01:91E3: 00        .byte $00   ; 
- - - - - - 0x0051F4 01:91E4: 00        .byte $00   ; 
- - - - - - 0x0051F5 01:91E5: 00        .byte $00   ; 
- - - - - - 0x0051F6 01:91E6: 00        .byte $00   ; 
- - - - - - 0x0051F7 01:91E7: 00        .byte $00   ; 
off_91E8_1A:
- D 0 - I - 0x0051F8 01:91E8: 29        .byte $29   ; 
- D 0 - I - 0x0051F9 01:91E9: 2A        .byte $2A   ; 
- D 0 - I - 0x0051FA 01:91EA: 27        .byte $27   ; 
- D 0 - I - 0x0051FB 01:91EB: 1C        .byte $1C   ; 
- D 0 - I - 0x0051FC 01:91EC: 00        .byte $00   ; 
- D 0 - I - 0x0051FD 01:91ED: 00        .byte $00   ; 
- D 0 - I - 0x0051FE 01:91EE: 00        .byte $00   ; 
- D 0 - I - 0x0051FF 01:91EF: 00        .byte $00   ; 
- D 0 - I - 0x005200 01:91F0: 00        .byte $00   ; 
- D 0 - I - 0x005201 01:91F1: 24        .byte $24   ; 
- D 0 - I - 0x005202 01:91F2: 00        .byte $00   ; 
- D 0 - I - 0x005203 01:91F3: 00        .byte $00   ; 
- D 0 - I - 0x005204 01:91F4: 00        .byte $00   ; 
- D 0 - I - 0x005205 01:91F5: 15        .byte $15   ; 
- D 0 - I - 0x005206 01:91F6: 1B        .byte $1B   ; 
- D 0 - I - 0x005207 01:91F7: B9        .byte $B9   ; 
- D 0 - I - 0x005208 01:91F8: D6        .byte $D6   ; 
- D 0 - I - 0x005209 01:91F9: D6        .byte $D6   ; 
- D 0 - I - 0x00520A 01:91FA: D6        .byte $D6   ; 
- D 0 - I - 0x00520B 01:91FB: AA        .byte $AA   ; 
- D 0 - I - 0x00520C 01:91FC: 00        .byte $00   ; 
- D 0 - I - 0x00520D 01:91FD: 00        .byte $00   ; 
- D 0 - I - 0x00520E 01:91FE: 00        .byte $00   ; 
- D 0 - I - 0x00520F 01:91FF: 00        .byte $00   ; 
- - - - - - 0x005210 01:9200: 00        .byte $00   ; 
- - - - - - 0x005211 01:9201: 00        .byte $00   ; 
- - - - - - 0x005212 01:9202: 00        .byte $00   ; 
- - - - - - 0x005213 01:9203: 00        .byte $00   ; 
- - - - - - 0x005214 01:9204: 00        .byte $00   ; 
- - - - - - 0x005215 01:9205: 00        .byte $00   ; 
- - - - - - 0x005216 01:9206: 00        .byte $00   ; 
- - - - - - 0x005217 01:9207: 00        .byte $00   ; 
off_9208_1B:
- D 0 - I - 0x005218 01:9208: 04        .byte $04   ; 
- D 0 - I - 0x005219 01:9209: 39        .byte $39   ; 
- D 0 - I - 0x00521A 01:920A: 3A        .byte $3A   ; 
- D 0 - I - 0x00521B 01:920B: 31        .byte $31   ; 
- D 0 - I - 0x00521C 01:920C: 04        .byte $04   ; 
- D 0 - I - 0x00521D 01:920D: 04        .byte $04   ; 
- D 0 - I - 0x00521E 01:920E: 04        .byte $04   ; 
- D 0 - I - 0x00521F 01:920F: 16        .byte $16   ; 
- D 0 - I - 0x005220 01:9210: 04        .byte $04   ; 
- D 0 - I - 0x005221 01:9211: 35        .byte $35   ; 
- D 0 - I - 0x005222 01:9212: 04        .byte $04   ; 
- D 0 - I - 0x005223 01:9213: 04        .byte $04   ; 
- D 0 - I - 0x005224 01:9214: 04        .byte $04   ; 
- D 0 - I - 0x005225 01:9215: 04        .byte $04   ; 
- D 0 - I - 0x005226 01:9216: 37        .byte $37   ; 
- D 0 - I - 0x005227 01:9217: 9B        .byte $9B   ; 
- D 0 - I - 0x005228 01:9218: D6        .byte $D6   ; 
- D 0 - I - 0x005229 01:9219: D6        .byte $D6   ; 
- D 0 - I - 0x00522A 01:921A: D6        .byte $D6   ; 
- D 0 - I - 0x00522B 01:921B: BA        .byte $BA   ; 
- D 0 - I - 0x00522C 01:921C: 04        .byte $04   ; 
- D 0 - I - 0x00522D 01:921D: 04        .byte $04   ; 
- D 0 - I - 0x00522E 01:921E: 04        .byte $04   ; 
- D 0 - I - 0x00522F 01:921F: 04        .byte $04   ; 
- - - - - - 0x005230 01:9220: 04        .byte $04   ; 
- - - - - - 0x005231 01:9221: 04        .byte $04   ; 
- - - - - - 0x005232 01:9222: 04        .byte $04   ; 
- - - - - - 0x005233 01:9223: 04        .byte $04   ; 
- - - - - - 0x005234 01:9224: 04        .byte $04   ; 
- - - - - - 0x005235 01:9225: 04        .byte $04   ; 
- - - - - - 0x005236 01:9226: 04        .byte $04   ; 
- - - - - - 0x005237 01:9227: 04        .byte $04   ; 
off_9228_1C:
- D 0 - I - 0x005238 01:9228: 04        .byte $04   ; 
- D 0 - I - 0x005239 01:9229: 04        .byte $04   ; 
- D 0 - I - 0x00523A 01:922A: 17        .byte $17   ; 
- D 0 - I - 0x00523B 01:922B: 32        .byte $32   ; 
- D 0 - I - 0x00523C 01:922C: 04        .byte $04   ; 
- D 0 - I - 0x00523D 01:922D: 04        .byte $04   ; 
- D 0 - I - 0x00523E 01:922E: 04        .byte $04   ; 
- D 0 - I - 0x00523F 01:922F: 04        .byte $04   ; 
- D 0 - I - 0x005240 01:9230: 04        .byte $04   ; 
- D 0 - I - 0x005241 01:9231: 36        .byte $36   ; 
- D 0 - I - 0x005242 01:9232: 04        .byte $04   ; 
- D 0 - I - 0x005243 01:9233: 04        .byte $04   ; 
- D 0 - I - 0x005244 01:9234: 04        .byte $04   ; 
- D 0 - I - 0x005245 01:9235: 04        .byte $04   ; 
- D 0 - I - 0x005246 01:9236: 04        .byte $04   ; 
- D 0 - I - 0x005247 01:9237: D8        .byte $D8   ; 
- D 0 - I - 0x005248 01:9238: D9        .byte $D9   ; 
- D 0 - I - 0x005249 01:9239: D9        .byte $D9   ; 
- D 0 - I - 0x00524A 01:923A: D9        .byte $D9   ; 
- D 0 - I - 0x00524B 01:923B: DA        .byte $DA   ; 
- D 0 - I - 0x00524C 01:923C: 04        .byte $04   ; 
- D 0 - I - 0x00524D 01:923D: 04        .byte $04   ; 
- D 0 - I - 0x00524E 01:923E: 17        .byte $17   ; 
- D 0 - I - 0x00524F 01:923F: 04        .byte $04   ; 
- - - - - - 0x005250 01:9240: 04        .byte $04   ; 
- - - - - - 0x005251 01:9241: 04        .byte $04   ; 
- - - - - - 0x005252 01:9242: 04        .byte $04   ; 
- - - - - - 0x005253 01:9243: 04        .byte $04   ; 
- - - - - - 0x005254 01:9244: 04        .byte $04   ; 
- - - - - - 0x005255 01:9245: 04        .byte $04   ; 
- - - - - - 0x005256 01:9246: 04        .byte $04   ; 
- - - - - - 0x005257 01:9247: 04        .byte $04   ; 
off_9248_1D:
- D 0 - I - 0x005258 01:9248: 04        .byte $04   ; 
- D 0 - I - 0x005259 01:9249: 04        .byte $04   ; 
- D 0 - I - 0x00525A 01:924A: 04        .byte $04   ; 
- D 0 - I - 0x00525B 01:924B: 33        .byte $33   ; 
- D 0 - I - 0x00525C 01:924C: 04        .byte $04   ; 
- D 0 - I - 0x00525D 01:924D: 04        .byte $04   ; 
- D 0 - I - 0x00525E 01:924E: 04        .byte $04   ; 
- D 0 - I - 0x00525F 01:924F: 16        .byte $16   ; 
- D 0 - I - 0x005260 01:9250: 04        .byte $04   ; 
- D 0 - I - 0x005261 01:9251: 2B        .byte $2B   ; 
- D 0 - I - 0x005262 01:9252: 30        .byte $30   ; 
- D 0 - I - 0x005263 01:9253: 04        .byte $04   ; 
- D 0 - I - 0x005264 01:9254: 04        .byte $04   ; 
- D 0 - I - 0x005265 01:9255: 04        .byte $04   ; 
- D 0 - I - 0x005266 01:9256: 04        .byte $04   ; 
- D 0 - I - 0x005267 01:9257: 32        .byte $32   ; 
- D 0 - I - 0x005268 01:9258: 04        .byte $04   ; 
- D 0 - I - 0x005269 01:9259: 04        .byte $04   ; 
- D 0 - I - 0x00526A 01:925A: 04        .byte $04   ; 
- D 0 - I - 0x00526B 01:925B: 04        .byte $04   ; 
- D 0 - I - 0x00526C 01:925C: 04        .byte $04   ; 
- D 0 - I - 0x00526D 01:925D: 04        .byte $04   ; 
- D 0 - I - 0x00526E 01:925E: 04        .byte $04   ; 
- D 0 - I - 0x00526F 01:925F: 04        .byte $04   ; 
- - - - - - 0x005270 01:9260: 16        .byte $16   ; 
- - - - - - 0x005271 01:9261: 04        .byte $04   ; 
- - - - - - 0x005272 01:9262: 04        .byte $04   ; 
- - - - - - 0x005273 01:9263: 04        .byte $04   ; 
- - - - - - 0x005274 01:9264: 04        .byte $04   ; 
- - - - - - 0x005275 01:9265: 04        .byte $04   ; 
- - - - - - 0x005276 01:9266: 04        .byte $04   ; 
- - - - - - 0x005277 01:9267: 04        .byte $04   ; 
off_9268_03:
- - - - - - 0x005278 01:9268: 00        .byte $00   ; 
- - - - - - 0x005279 01:9269: 00        .byte $00   ; 
- - - - - - 0x00527A 01:926A: 00        .byte $00   ; 
- - - - - - 0x00527B 01:926B: 00        .byte $00   ; 
- - - - - - 0x00527C 01:926C: 00        .byte $00   ; 
- - - - - - 0x00527D 01:926D: 00        .byte $00   ; 
- - - - - - 0x00527E 01:926E: 00        .byte $00   ; 
- - - - - - 0x00527F 01:926F: 00        .byte $00   ; 
- D 0 - I - 0x005280 01:9270: 00        .byte $00   ; 
- D 0 - I - 0x005281 01:9271: 00        .byte $00   ; 
- D 0 - I - 0x005282 01:9272: 00        .byte $00   ; 
- D 0 - I - 0x005283 01:9273: 00        .byte $00   ; 
- D 0 - I - 0x005284 01:9274: 00        .byte $00   ; 
- D 0 - I - 0x005285 01:9275: 00        .byte $00   ; 
- - - - - - 0x005286 01:9276: 00        .byte $00   ; 
- - - - - - 0x005287 01:9277: 00        .byte $00   ; 
- D 0 - I - 0x005288 01:9278: 55        .byte $55   ; 
- D 0 - I - 0x005289 01:9279: 11        .byte $11   ; 
- D 0 - I - 0x00528A 01:927A: 00        .byte $00   ; 
- D 0 - I - 0x00528B 01:927B: 00        .byte $00   ; 
- D 0 - I - 0x00528C 01:927C: 00        .byte $00   ; 
- D 0 - I - 0x00528D 01:927D: 00        .byte $00   ; 
- - - - - - 0x00528E 01:927E: 00        .byte $00   ; 
- - - - - - 0x00528F 01:927F: 00        .byte $00   ; 
- D 0 - I - 0x005290 01:9280: 55        .byte $55   ; 
- D 0 - I - 0x005291 01:9281: 11        .byte $11   ; 
- D 0 - I - 0x005292 01:9282: 00        .byte $00   ; 
- D 0 - I - 0x005293 01:9283: 00        .byte $00   ; 
- D 0 - I - 0x005294 01:9284: 00        .byte $00   ; 
- D 0 - I - 0x005295 01:9285: 00        .byte $00   ; 
- - - - - - 0x005296 01:9286: 00        .byte $00   ; 
- - - - - - 0x005297 01:9287: 00        .byte $00   ; 
- D 0 - I - 0x005298 01:9288: 00        .byte $00   ; 
- D 0 - I - 0x005299 01:9289: 00        .byte $00   ; 
- D 0 - I - 0x00529A 01:928A: 00        .byte $00   ; 
- D 0 - I - 0x00529B 01:928B: 00        .byte $00   ; 
- D 0 - I - 0x00529C 01:928C: 00        .byte $00   ; 
- D 0 - I - 0x00529D 01:928D: 00        .byte $00   ; 
- - - - - - 0x00529E 01:928E: 00        .byte $00   ; 
- - - - - - 0x00529F 01:928F: 00        .byte $00   ; 
- D 0 - I - 0x0052A0 01:9290: 00        .byte $00   ; 
- D 0 - I - 0x0052A1 01:9291: 00        .byte $00   ; 
- D 0 - I - 0x0052A2 01:9292: 00        .byte $00   ; 
- D 0 - I - 0x0052A3 01:9293: 00        .byte $00   ; 
- D 0 - I - 0x0052A4 01:9294: 00        .byte $00   ; 
- D 0 - I - 0x0052A5 01:9295: 00        .byte $00   ; 
- - - - - - 0x0052A6 01:9296: 00        .byte $00   ; 
- - - - - - 0x0052A7 01:9297: 00        .byte $00   ; 
- D 0 - I - 0x0052A8 01:9298: 00        .byte $00   ; 
- D 0 - I - 0x0052A9 01:9299: 00        .byte $00   ; 
- D 0 - I - 0x0052AA 01:929A: 00        .byte $00   ; 
- D 0 - I - 0x0052AB 01:929B: 00        .byte $00   ; 
- D 0 - I - 0x0052AC 01:929C: 00        .byte $00   ; 
- D 0 - I - 0x0052AD 01:929D: 00        .byte $00   ; 
- - - - - - 0x0052AE 01:929E: 00        .byte $00   ; 
- - - - - - 0x0052AF 01:929F: 00        .byte $00   ; 
- D 0 - I - 0x0052B0 01:92A0: 00        .byte $00   ; 
- D 0 - I - 0x0052B1 01:92A1: 00        .byte $00   ; 
- D 0 - I - 0x0052B2 01:92A2: 00        .byte $00   ; 
- D 0 - I - 0x0052B3 01:92A3: 00        .byte $00   ; 
- D 0 - I - 0x0052B4 01:92A4: 00        .byte $00   ; 
- D 0 - I - 0x0052B5 01:92A5: 00        .byte $00   ; 
- - - - - - 0x0052B6 01:92A6: 00        .byte $00   ; 
- - - - - - 0x0052B7 01:92A7: 00        .byte $00   ; 
off_92A8_09:
- - - - - - 0x0052B8 01:92A8: 00        .byte $00   ; 
- - - - - - 0x0052B9 01:92A9: 00        .byte $00   ; 
- - - - - - 0x0052BA 01:92AA: 00        .byte $00   ; 
- - - - - - 0x0052BB 01:92AB: 00        .byte $00   ; 
- - - - - - 0x0052BC 01:92AC: 00        .byte $00   ; 
- - - - - - 0x0052BD 01:92AD: 00        .byte $00   ; 
- - - - - - 0x0052BE 01:92AE: 00        .byte $00   ; 
- - - - - - 0x0052BF 01:92AF: 00        .byte $00   ; 
- - - - - - 0x0052C0 01:92B0: 00        .byte $00   ; 
- D 0 - I - 0x0052C1 01:92B1: 00        .byte $00   ; 
- D 0 - I - 0x0052C2 01:92B2: 00        .byte $00   ; 
- D 0 - I - 0x0052C3 01:92B3: 00        .byte $00   ; 
- D 0 - I - 0x0052C4 01:92B4: 00        .byte $00   ; 
- D 0 - I - 0x0052C5 01:92B5: 00        .byte $00   ; 
- D 0 - I - 0x0052C6 01:92B6: 00        .byte $00   ; 
- D 0 - I - 0x0052C7 01:92B7: 00        .byte $00   ; 
- D 0 - I - 0x0052C8 01:92B8: 00        .byte $00   ; 
- D 0 - I - 0x0052C9 01:92B9: 00        .byte $00   ; 
- D 0 - I - 0x0052CA 01:92BA: 00        .byte $00   ; 
- D 0 - I - 0x0052CB 01:92BB: 21        .byte $21   ; 
- D 0 - I - 0x0052CC 01:92BC: 00        .byte $00   ; 
- D 0 - I - 0x0052CD 01:92BD: 00        .byte $00   ; 
- D 0 - I - 0x0052CE 01:92BE: 00        .byte $00   ; 
- D 0 - I - 0x0052CF 01:92BF: 00        .byte $00   ; 
- D 0 - I - 0x0052D0 01:92C0: 00        .byte $00   ; 
- D 0 - I - 0x0052D1 01:92C1: 00        .byte $00   ; 
- D 0 - I - 0x0052D2 01:92C2: 00        .byte $00   ; 
- D 0 - I - 0x0052D3 01:92C3: 00        .byte $00   ; 
- D 0 - I - 0x0052D4 01:92C4: 00        .byte $00   ; 
- D 0 - I - 0x0052D5 01:92C5: 00        .byte $00   ; 
- D 0 - I - 0x0052D6 01:92C6: 00        .byte $00   ; 
- D 0 - I - 0x0052D7 01:92C7: 00        .byte $00   ; 
off_92C8_0A:
- - - - - - 0x0052D8 01:92C8: 00        .byte $00   ; 
- - - - - - 0x0052D9 01:92C9: 00        .byte $00   ; 
- - - - - - 0x0052DA 01:92CA: 00        .byte $00   ; 
- - - - - - 0x0052DB 01:92CB: 00        .byte $00   ; 
- - - - - - 0x0052DC 01:92CC: 00        .byte $00   ; 
- - - - - - 0x0052DD 01:92CD: 00        .byte $00   ; 
- - - - - - 0x0052DE 01:92CE: 00        .byte $00   ; 
- - - - - - 0x0052DF 01:92CF: 00        .byte $00   ; 
- - - - - - 0x0052E0 01:92D0: 00        .byte $00   ; 
- D 0 - I - 0x0052E1 01:92D1: 00        .byte $00   ; 
- D 0 - I - 0x0052E2 01:92D2: 00        .byte $00   ; 
- D 0 - I - 0x0052E3 01:92D3: 00        .byte $00   ; 
- D 0 - I - 0x0052E4 01:92D4: 00        .byte $00   ; 
- D 0 - I - 0x0052E5 01:92D5: 00        .byte $00   ; 
- D 0 - I - 0x0052E6 01:92D6: 00        .byte $00   ; 
- D 0 - I - 0x0052E7 01:92D7: 00        .byte $00   ; 
- D 0 - I - 0x0052E8 01:92D8: 00        .byte $00   ; 
- D 0 - I - 0x0052E9 01:92D9: 00        .byte $00   ; 
- D 0 - I - 0x0052EA 01:92DA: 27        .byte $27   ; 
- D 0 - I - 0x0052EB 01:92DB: 1C        .byte $1C   ; 
- D 0 - I - 0x0052EC 01:92DC: 00        .byte $00   ; 
- D 0 - I - 0x0052ED 01:92DD: 00        .byte $00   ; 
- D 0 - I - 0x0052EE 01:92DE: 00        .byte $00   ; 
- D 0 - I - 0x0052EF 01:92DF: 00        .byte $00   ; 
- D 0 - I - 0x0052F0 01:92E0: 14        .byte $14   ; 
off_92E1_19:
- D 0 - I - 0x0052F1 01:92E1: 00        .byte $00   ; 
- D 0 - I - 0x0052F2 01:92E2: 00        .byte $00   ; 
- D 0 - I - 0x0052F3 01:92E3: 00        .byte $00   ; 
- D 0 - I - 0x0052F4 01:92E4: 14        .byte $14   ; 
- D 0 - I - 0x0052F5 01:92E5: 00        .byte $00   ; 
- D 0 - I - 0x0052F6 01:92E6: 00        .byte $00   ; 
- D 0 - I - 0x0052F7 01:92E7: 00        .byte $00   ; 
- - - - - - 0x0052F8 01:92E8: 00        .byte $00   ; 
- - - - - - 0x0052F9 01:92E9: 14        .byte $14   ; 
- D 0 - I - 0x0052FA 01:92EA: 00        .byte $00   ; 
- D 0 - I - 0x0052FB 01:92EB: 00        .byte $00   ; 
- D 0 - I - 0x0052FC 01:92EC: 00        .byte $00   ; 
- D 0 - I - 0x0052FD 01:92ED: B9        .byte $B9   ; 
- D 0 - I - 0x0052FE 01:92EE: D6        .byte $D6   ; 
- D 0 - I - 0x0052FF 01:92EF: D6        .byte $D6   ; 
- D 0 - I - 0x005300 01:92F0: D6        .byte $D6   ; 
- D 0 - I - 0x005301 01:92F1: D7        .byte $D7   ; 
- D 0 - I - 0x005302 01:92F2: 21        .byte $21   ; 
- D 0 - I - 0x005303 01:92F3: 00        .byte $00   ; 
- D 0 - I - 0x005304 01:92F4: 00        .byte $00   ; 
- D 0 - I - 0x005305 01:92F5: 00        .byte $00   ; 
- D 0 - I - 0x005306 01:92F6: 00        .byte $00   ; 
- D 0 - I - 0x005307 01:92F7: 24        .byte $24   ; 
- D 0 - I - 0x005308 01:92F8: 00        .byte $00   ; 
- D 0 - I - 0x005309 01:92F9: 00        .byte $00   ; 
- D 0 - I - 0x00530A 01:92FA: 00        .byte $00   ; 
- D 0 - I - 0x00530B 01:92FB: 00        .byte $00   ; 
- D 0 - I - 0x00530C 01:92FC: 00        .byte $00   ; 
- D 0 - I - 0x00530D 01:92FD: 27        .byte $27   ; 
- D 0 - I - 0x00530E 01:92FE: 1C        .byte $1C   ; 
- D 0 - I - 0x00530F 01:92FF: 00        .byte $00   ; 
- D 0 - I - 0x005310 01:9300: 3F        .byte $3F   ; 
off_9301_0E:
- - - - - - 0x005311 01:9301: 00        .byte $00   ; 
- - - - - - 0x005312 01:9302: 00        .byte $00   ; 
- - - - - - 0x005313 01:9303: 00        .byte $00   ; 
- - - - - - 0x005314 01:9304: 00        .byte $00   ; 
- - - - - - 0x005315 01:9305: 00        .byte $00   ; 
- - - - - - 0x005316 01:9306: 00        .byte $00   ; 
- - - - - - 0x005317 01:9307: 00        .byte $00   ; 
- - - - - - 0x005318 01:9308: 00        .byte $00   ; 
- - - - - - 0x005319 01:9309: 00        .byte $00   ; 
- D 0 - I - 0x00531A 01:930A: 14        .byte $14   ; 
- D 0 - I - 0x00531B 01:930B: 00        .byte $00   ; 
- D 0 - I - 0x00531C 01:930C: 00        .byte $00   ; 
- D 0 - I - 0x00531D 01:930D: 00        .byte $00   ; 
- D 0 - I - 0x00531E 01:930E: B0        .byte $B0   ; 
- D 0 - I - 0x00531F 01:930F: B1        .byte $B1   ; 
- D 0 - I - 0x005320 01:9310: B2        .byte $B2   ; 
- D 0 - I - 0x005321 01:9311: B3        .byte $B3   ; 
- D 0 - I - 0x005322 01:9312: B4        .byte $B4   ; 
- D 0 - I - 0x005323 01:9313: 24        .byte $24   ; 
- D 0 - I - 0x005324 01:9314: 00        .byte $00   ; 
- D 0 - I - 0x005325 01:9315: 00        .byte $00   ; 
- D 0 - I - 0x005326 01:9316: 15        .byte $15   ; 
- D 0 - I - 0x005327 01:9317: 00        .byte $00   ; 
- D 0 - I - 0x005328 01:9318: 00        .byte $00   ; 
- D 0 - I - 0x005329 01:9319: 00        .byte $00   ; 
- D 0 - I - 0x00532A 01:931A: 00        .byte $00   ; 
- D 0 - I - 0x00532B 01:931B: 00        .byte $00   ; 
- D 0 - I - 0x00532C 01:931C: 00        .byte $00   ; 
- D 0 - I - 0x00532D 01:931D: 00        .byte $00   ; 
- D 0 - I - 0x00532E 01:931E: 00        .byte $00   ; 
- D 0 - I - 0x00532F 01:931F: 23        .byte $23   ; 
- D 0 - I - 0x005330 01:9320: 00        .byte $00   ; 
off_9321_09:
- D 0 - I - 0x005331 01:9321: 00        .byte $00   ; 
- D 0 - I - 0x005332 01:9322: 00        .byte $00   ; 
- D 0 - I - 0x005333 01:9323: 00        .byte $00   ; 
- D 0 - I - 0x005334 01:9324: 00        .byte $00   ; 
- D 0 - I - 0x005335 01:9325: 00        .byte $00   ; 
- D 0 - I - 0x005336 01:9326: 00        .byte $00   ; 
- D 0 - I - 0x005337 01:9327: 00        .byte $00   ; 
- D 0 - I - 0x005338 01:9328: 00        .byte $00   ; 
- D 0 - I - 0x005339 01:9329: 00        .byte $00   ; 
- D 0 - I - 0x00533A 01:932A: 00        .byte $00   ; 
- D 0 - I - 0x00533B 01:932B: 00        .byte $00   ; 
- D 0 - I - 0x00533C 01:932C: 00        .byte $00   ; 
- D 0 - I - 0x00533D 01:932D: 00        .byte $00   ; 
- D 0 - I - 0x00533E 01:932E: 00        .byte $00   ; 
- D 0 - I - 0x00533F 01:932F: 00        .byte $00   ; 
- D 0 - I - 0x005340 01:9330: 00        .byte $00   ; 
- D 0 - I - 0x005341 01:9331: 00        .byte $00   ; 
- D 0 - I - 0x005342 01:9332: 14        .byte $14   ; 
- D 0 - I - 0x005343 01:9333: 00        .byte $00   ; 
- D 0 - I - 0x005344 01:9334: 00        .byte $00   ; 
- D 0 - I - 0x005345 01:9335: 15        .byte $15   ; 
- D 0 - I - 0x005346 01:9336: 00        .byte $00   ; 
- D 0 - I - 0x005347 01:9337: 00        .byte $00   ; 
- D 0 - I - 0x005348 01:9338: 00        .byte $00   ; 
- D 0 - I - 0x005349 01:9339: 00        .byte $00   ; 
- D 0 - I - 0x00534A 01:933A: 00        .byte $00   ; 
- D 0 - I - 0x00534B 01:933B: 14        .byte $14   ; 
- D 0 - I - 0x00534C 01:933C: 00        .byte $00   ; 
- D 0 - I - 0x00534D 01:933D: 00        .byte $00   ; 
- D 0 - I - 0x00534E 01:933E: 00        .byte $00   ; 
- D 0 - I - 0x00534F 01:933F: 00        .byte $00   ; 
- D 0 - I - 0x005350 01:9340: 1B        .byte $1B   ; 
off_9341_0D:
- D 0 - I - 0x005351 01:9341: 00        .byte $00   ; 
- D 0 - I - 0x005352 01:9342: 00        .byte $00   ; 
- D 0 - I - 0x005353 01:9343: 00        .byte $00   ; 
- D 0 - I - 0x005354 01:9344: 14        .byte $14   ; 
- D 0 - I - 0x005355 01:9345: 00        .byte $00   ; 
- D 0 - I - 0x005356 01:9346: 00        .byte $00   ; 
- D 0 - I - 0x005357 01:9347: 00        .byte $00   ; 
- D 0 - I - 0x005358 01:9348: 00        .byte $00   ; 
- D 0 - I - 0x005359 01:9349: 14        .byte $14   ; 
- D 0 - I - 0x00535A 01:934A: 00        .byte $00   ; 
- D 0 - I - 0x00535B 01:934B: 00        .byte $00   ; 
- D 0 - I - 0x00535C 01:934C: 00        .byte $00   ; 
- D 0 - I - 0x00535D 01:934D: 00        .byte $00   ; 
- D 0 - I - 0x00535E 01:934E: 00        .byte $00   ; 
- D 0 - I - 0x00535F 01:934F: 00        .byte $00   ; 
- D 0 - I - 0x005360 01:9350: 14        .byte $14   ; 
- D 0 - I - 0x005361 01:9351: 00        .byte $00   ; 
- D 0 - I - 0x005362 01:9352: 00        .byte $00   ; 
- D 0 - I - 0x005363 01:9353: 00        .byte $00   ; 
- D 0 - I - 0x005364 01:9354: 15        .byte $15   ; 
- D 0 - I - 0x005365 01:9355: 00        .byte $00   ; 
- D 0 - I - 0x005366 01:9356: 00        .byte $00   ; 
- D 0 - I - 0x005367 01:9357: 00        .byte $00   ; 
- D 0 - I - 0x005368 01:9358: 00        .byte $00   ; 
- D 0 - I - 0x005369 01:9359: 00        .byte $00   ; 
- D 0 - I - 0x00536A 01:935A: 00        .byte $00   ; 
- D 0 - I - 0x00536B 01:935B: 00        .byte $00   ; 
- D 0 - I - 0x00536C 01:935C: 00        .byte $00   ; 
- D 0 - I - 0x00536D 01:935D: 00        .byte $00   ; 
- D 0 - I - 0x00536E 01:935E: 14        .byte $14   ; 
- D 0 - I - 0x00536F 01:935F: 00        .byte $00   ; 
- D 0 - I - 0x005370 01:9360: 1B        .byte $1B   ; 
off_9361_19:
- D 0 - I - 0x005371 01:9361: 00        .byte $00   ; 
- D 0 - I - 0x005372 01:9362: 00        .byte $00   ; 
- D 0 - I - 0x005373 01:9363: 00        .byte $00   ; 
- D 0 - I - 0x005374 01:9364: 00        .byte $00   ; 
- D 0 - I - 0x005375 01:9365: 00        .byte $00   ; 
- D 0 - I - 0x005376 01:9366: 00        .byte $00   ; 
- D 0 - I - 0x005377 01:9367: 00        .byte $00   ; 
- D 0 - I - 0x005378 01:9368: 00        .byte $00   ; 
- D 0 - I - 0x005379 01:9369: 00        .byte $00   ; 
- D 0 - I - 0x00537A 01:936A: 00        .byte $00   ; 
- D 0 - I - 0x00537B 01:936B: 00        .byte $00   ; 
- D 0 - I - 0x00537C 01:936C: 00        .byte $00   ; 
- D 0 - I - 0x00537D 01:936D: 00        .byte $00   ; 
- D 0 - I - 0x00537E 01:936E: 00        .byte $00   ; 
- D 0 - I - 0x00537F 01:936F: 00        .byte $00   ; 
- D 0 - I - 0x005380 01:9370: 00        .byte $00   ; 
- D 0 - I - 0x005381 01:9371: 00        .byte $00   ; 
- D 0 - I - 0x005382 01:9372: 00        .byte $00   ; 
- D 0 - I - 0x005383 01:9373: 00        .byte $00   ; 
- D 0 - I - 0x005384 01:9374: 00        .byte $00   ; 
- D 0 - I - 0x005385 01:9375: 00        .byte $00   ; 
- D 0 - I - 0x005386 01:9376: 00        .byte $00   ; 
- D 0 - I - 0x005387 01:9377: 00        .byte $00   ; 
- D 0 - I - 0x005388 01:9378: 00        .byte $00   ; 
- D 0 - I - 0x005389 01:9379: 00        .byte $00   ; 
- D 0 - I - 0x00538A 01:937A: 00        .byte $00   ; 
- D 0 - I - 0x00538B 01:937B: 00        .byte $00   ; 
- D 0 - I - 0x00538C 01:937C: 00        .byte $00   ; 
- D 0 - I - 0x00538D 01:937D: 38        .byte $38   ; 
- D 0 - I - 0x00538E 01:937E: 00        .byte $00   ; 
- D 0 - I - 0x00538F 01:937F: 00        .byte $00   ; 
- D 0 - I - 0x005390 01:9380: 1B        .byte $1B   ; 
off_9381_08:
- D 0 - I - 0x005391 01:9381: 2C        .byte $2C   ; 
- D 0 - I - 0x005392 01:9382: 04        .byte $04   ; 
- D 0 - I - 0x005393 01:9383: 04        .byte $04   ; 
- D 0 - I - 0x005394 01:9384: 04        .byte $04   ; 
- D 0 - I - 0x005395 01:9385: 04        .byte $04   ; 
- D 0 - I - 0x005396 01:9386: 04        .byte $04   ; 
- D 0 - I - 0x005397 01:9387: 04        .byte $04   ; 
- D 0 - I - 0x005398 01:9388: 04        .byte $04   ; 
- D 0 - I - 0x005399 01:9389: 04        .byte $04   ; 
off_938A_18:
- D 0 - I - 0x00539A 01:938A: 04        .byte $04   ; 
- D 0 - I - 0x00539B 01:938B: 04        .byte $04   ; 
- D 0 - I - 0x00539C 01:938C: 04        .byte $04   ; 
- D 0 - I - 0x00539D 01:938D: 04        .byte $04   ; 
- D 0 - I - 0x00539E 01:938E: 16        .byte $16   ; 
- D 0 - I - 0x00539F 01:938F: 04        .byte $04   ; 
- D 0 - I - 0x0053A0 01:9390: 04        .byte $04   ; 
- D 0 - I - 0x0053A1 01:9391: 04        .byte $04   ; 
- D 0 - I - 0x0053A2 01:9392: 04        .byte $04   ; 
- D 0 - I - 0x0053A3 01:9393: 04        .byte $04   ; 
- D 0 - I - 0x0053A4 01:9394: 04        .byte $04   ; 
- D 0 - I - 0x0053A5 01:9395: 04        .byte $04   ; 
- D 0 - I - 0x0053A6 01:9396: 04        .byte $04   ; 
- D 0 - I - 0x0053A7 01:9397: 04        .byte $04   ; 
- D 0 - I - 0x0053A8 01:9398: 04        .byte $04   ; 
- D 0 - I - 0x0053A9 01:9399: 04        .byte $04   ; 
- D 0 - I - 0x0053AA 01:939A: 04        .byte $04   ; 
- D 0 - I - 0x0053AB 01:939B: 16        .byte $16   ; 
- D 0 - I - 0x0053AC 01:939C: 04        .byte $04   ; 
- D 0 - I - 0x0053AD 01:939D: 04        .byte $04   ; 
- D 0 - I - 0x0053AE 01:939E: 04        .byte $04   ; 
- D 0 - I - 0x0053AF 01:939F: 04        .byte $04   ; 
- D 0 - I - 0x0053B0 01:93A0: 04        .byte $04   ; 
- D 0 - I - 0x0053B1 01:93A1: 16        .byte $16   ; 
- D 0 - I - 0x0053B2 01:93A2: 04        .byte $04   ; 
- D 0 - I - 0x0053B3 01:93A3: 04        .byte $04   ; 
- D 0 - I - 0x0053B4 01:93A4: 04        .byte $04   ; 
- D 0 - I - 0x0053B5 01:93A5: 04        .byte $04   ; 
- D 0 - I - 0x0053B6 01:93A6: 28        .byte $28   ; 
- D 0 - I - 0x0053B7 01:93A7: 04        .byte $04   ; 
- D 0 - I - 0x0053B8 01:93A8: 04        .byte $04   ; 
- D 0 - I - 0x0053B9 01:93A9: 2B        .byte $2B   ; 
off_93AA_09:
- D 0 - I - 0x0053BA 01:93AA: 1C        .byte $1C   ; 
- D 0 - I - 0x0053BB 01:93AB: 00        .byte $00   ; 
- D 0 - I - 0x0053BC 01:93AC: 00        .byte $00   ; 
- D 0 - I - 0x0053BD 01:93AD: 14        .byte $14   ; 
- D 0 - I - 0x0053BE 01:93AE: 00        .byte $00   ; 
- D 0 - I - 0x0053BF 01:93AF: 00        .byte $00   ; 
- D 0 - I - 0x0053C0 01:93B0: 00        .byte $00   ; 
- D 0 - I - 0x0053C1 01:93B1: 00        .byte $00   ; 
- D 0 - I - 0x0053C2 01:93B2: 00        .byte $00   ; 
- D 0 - I - 0x0053C3 01:93B3: 14        .byte $14   ; 
- D 0 - I - 0x0053C4 01:93B4: 00        .byte $00   ; 
- D 0 - I - 0x0053C5 01:93B5: 00        .byte $00   ; 
- D 0 - I - 0x0053C6 01:93B6: 00        .byte $00   ; 
- D 0 - I - 0x0053C7 01:93B7: 00        .byte $00   ; 
- D 0 - I - 0x0053C8 01:93B8: 00        .byte $00   ; 
- D 0 - I - 0x0053C9 01:93B9: 00        .byte $00   ; 
- D 0 - I - 0x0053CA 01:93BA: 00        .byte $00   ; 
- D 0 - I - 0x0053CB 01:93BB: 15        .byte $15   ; 
- D 0 - I - 0x0053CC 01:93BC: 00        .byte $00   ; 
- D 0 - I - 0x0053CD 01:93BD: 00        .byte $00   ; 
- D 0 - I - 0x0053CE 01:93BE: 00        .byte $00   ; 
- D 0 - I - 0x0053CF 01:93BF: 00        .byte $00   ; 
- D 0 - I - 0x0053D0 01:93C0: 00        .byte $00   ; 
- D 0 - I - 0x0053D1 01:93C1: 00        .byte $00   ; 
- D 0 - I - 0x0053D2 01:93C2: 15        .byte $15   ; 
- D 0 - I - 0x0053D3 01:93C3: 00        .byte $00   ; 
off_93C4_12:
- D 0 - I - 0x0053D4 01:93C4: 00        .byte $00   ; 
- D 0 - I - 0x0053D5 01:93C5: 00        .byte $00   ; 
- D 0 - I - 0x0053D6 01:93C6: 00        .byte $00   ; 
- D 0 - I - 0x0053D7 01:93C7: 00        .byte $00   ; 
- D 0 - I - 0x0053D8 01:93C8: 00        .byte $00   ; 
- D 0 - I - 0x0053D9 01:93C9: 14        .byte $14   ; 
- D 0 - I - 0x0053DA 01:93CA: 00        .byte $00   ; 
- D 0 - I - 0x0053DB 01:93CB: 00        .byte $00   ; 
- D 0 - I - 0x0053DC 01:93CC: 00        .byte $00   ; 
- D 0 - I - 0x0053DD 01:93CD: 00        .byte $00   ; 
- D 0 - I - 0x0053DE 01:93CE: 00        .byte $00   ; 
- D 0 - I - 0x0053DF 01:93CF: 00        .byte $00   ; 
- D 0 - I - 0x0053E0 01:93D0: 14        .byte $14   ; 
- D 0 - I - 0x0053E1 01:93D1: 00        .byte $00   ; 
- D 0 - I - 0x0053E2 01:93D2: 00        .byte $00   ; 
- D 0 - I - 0x0053E3 01:93D3: 00        .byte $00   ; 
- D 0 - I - 0x0053E4 01:93D4: 00        .byte $00   ; 
- D 0 - I - 0x0053E5 01:93D5: 00        .byte $00   ; 
- D 0 - I - 0x0053E6 01:93D6: 00        .byte $00   ; 
- D 0 - I - 0x0053E7 01:93D7: 00        .byte $00   ; 
- D 0 - I - 0x0053E8 01:93D8: 00        .byte $00   ; 
- D 0 - I - 0x0053E9 01:93D9: 00        .byte $00   ; 
- D 0 - I - 0x0053EA 01:93DA: 00        .byte $00   ; 
- D 0 - I - 0x0053EB 01:93DB: 00        .byte $00   ; 
- D 0 - I - 0x0053EC 01:93DC: 00        .byte $00   ; 
- D 0 - I - 0x0053ED 01:93DD: 00        .byte $00   ; 
- D 0 - I - 0x0053EE 01:93DE: 00        .byte $00   ; 
- D 0 - I - 0x0053EF 01:93DF: 00        .byte $00   ; 
- D 0 - I - 0x0053F0 01:93E0: 00        .byte $00   ; 
- D 0 - I - 0x0053F1 01:93E1: 00        .byte $00   ; 
- D 0 - I - 0x0053F2 01:93E2: 00        .byte $00   ; 
- D 0 - I - 0x0053F3 01:93E3: 1B        .byte $1B   ; 
off_93E4_0A:
- D 0 - I - 0x0053F4 01:93E4: 1C        .byte $1C   ; 
- D 0 - I - 0x0053F5 01:93E5: 00        .byte $00   ; 
- D 0 - I - 0x0053F6 01:93E6: 00        .byte $00   ; 
- D 0 - I - 0x0053F7 01:93E7: 00        .byte $00   ; 
- D 0 - I - 0x0053F8 01:93E8: 00        .byte $00   ; 
- D 0 - I - 0x0053F9 01:93E9: 00        .byte $00   ; 
- D 0 - I - 0x0053FA 01:93EA: 00        .byte $00   ; 
- D 0 - I - 0x0053FB 01:93EB: 00        .byte $00   ; 
- D 0 - I - 0x0053FC 01:93EC: 00        .byte $00   ; 
- D 0 - I - 0x0053FD 01:93ED: 00        .byte $00   ; 
- D 0 - I - 0x0053FE 01:93EE: 00        .byte $00   ; 
- D 0 - I - 0x0053FF 01:93EF: 00        .byte $00   ; 
- D 0 - I - 0x005400 01:93F0: 00        .byte $00   ; 
- D 0 - I - 0x005401 01:93F1: 00        .byte $00   ; 
- D 0 - I - 0x005402 01:93F2: 00        .byte $00   ; 
- D 0 - I - 0x005403 01:93F3: 00        .byte $00   ; 
- D 0 - I - 0x005404 01:93F4: 00        .byte $00   ; 
- D 0 - I - 0x005405 01:93F5: 00        .byte $00   ; 
- D 0 - I - 0x005406 01:93F6: 00        .byte $00   ; 
- D 0 - I - 0x005407 01:93F7: 14        .byte $14   ; 
- D 0 - I - 0x005408 01:93F8: 00        .byte $00   ; 
off_93F9_0D:
- D 0 - I - 0x005409 01:93F9: 00        .byte $00   ; 
- D 0 - I - 0x00540A 01:93FA: 00        .byte $00   ; 
- D 0 - I - 0x00540B 01:93FB: 00        .byte $00   ; 
- D 0 - I - 0x00540C 01:93FC: 00        .byte $00   ; 
- D 0 - I - 0x00540D 01:93FD: 00        .byte $00   ; 
- D 0 - I - 0x00540E 01:93FE: 00        .byte $00   ; 
- D 0 - I - 0x00540F 01:93FF: 00        .byte $00   ; 
- D 0 - I - 0x005410 01:9400: 14        .byte $14   ; 
- D 0 - I - 0x005411 01:9401: 00        .byte $00   ; 
- D 0 - I - 0x005412 01:9402: 00        .byte $00   ; 
- D 0 - I - 0x005413 01:9403: 00        .byte $00   ; 
- D 0 - I - 0x005414 01:9404: 00        .byte $00   ; 
- D 0 - I - 0x005415 01:9405: 00        .byte $00   ; 
- D 0 - I - 0x005416 01:9406: 00        .byte $00   ; 
- D 0 - I - 0x005417 01:9407: A1        .byte $A1   ; 
- D 0 - I - 0x005418 01:9408: A2        .byte $A2   ; 
- D 0 - I - 0x005419 01:9409: A3        .byte $A3   ; 
- D 0 - I - 0x00541A 01:940A: A4        .byte $A4   ; 
- D 0 - I - 0x00541B 01:940B: 25        .byte $25   ; 
- D 0 - I - 0x00541C 01:940C: 00        .byte $00   ; 
- D 0 - I - 0x00541D 01:940D: 00        .byte $00   ; 
- D 0 - I - 0x00541E 01:940E: 00        .byte $00   ; 
- D 0 - I - 0x00541F 01:940F: 00        .byte $00   ; 
- D 0 - I - 0x005420 01:9410: 00        .byte $00   ; 
- D 0 - I - 0x005421 01:9411: 00        .byte $00   ; 
- D 0 - I - 0x005422 01:9412: 00        .byte $00   ; 
- D 0 - I - 0x005423 01:9413: 44        .byte $44   ; 
- D 0 - I - 0x005424 01:9414: 5A        .byte $5A   ; 
- D 0 - I - 0x005425 01:9415: 7A        .byte $7A   ; 
- D 0 - I - 0x005426 01:9416: 6E        .byte $6E   ; 
- D 0 - I - 0x005427 01:9417: EF        .byte $EF   ; 
off_9418_09:
- D 0 - I - 0x005428 01:9418: 6C        .byte $6C   ; 
- D 0 - I - 0x005429 01:9419: 66        .byte $66   ; 
- D 0 - I - 0x00542A 01:941A: 4A        .byte $4A   ; 
- D 0 - I - 0x00542B 01:941B: 00        .byte $00   ; 
- D 0 - I - 0x00542C 01:941C: 00        .byte $00   ; 
- D 0 - I - 0x00542D 01:941D: 00        .byte $00   ; 
- D 0 - I - 0x00542E 01:941E: 00        .byte $00   ; 
- D 0 - I - 0x00542F 01:941F: 00        .byte $00   ; 
- D 0 - I - 0x005430 01:9420: 00        .byte $00   ; 
- D 0 - I - 0x005431 01:9421: 00        .byte $00   ; 
- D 0 - I - 0x005432 01:9422: 00        .byte $00   ; 
- D 0 - I - 0x005433 01:9423: 00        .byte $00   ; 
- D 0 - I - 0x005434 01:9424: 00        .byte $00   ; 
- D 0 - I - 0x005435 01:9425: 00        .byte $00   ; 
- D 0 - I - 0x005436 01:9426: 00        .byte $00   ; 
- D 0 - I - 0x005437 01:9427: 00        .byte $00   ; 
- D 0 - I - 0x005438 01:9428: 00        .byte $00   ; 
- D 0 - I - 0x005439 01:9429: 14        .byte $14   ; 
- D 0 - I - 0x00543A 01:942A: 00        .byte $00   ; 
- D 0 - I - 0x00543B 01:942B: 00        .byte $00   ; 
- D 0 - I - 0x00543C 01:942C: 15        .byte $15   ; 
- D 0 - I - 0x00543D 01:942D: 00        .byte $00   ; 
- D 0 - I - 0x00543E 01:942E: 00        .byte $00   ; 
- D 0 - I - 0x00543F 01:942F: 00        .byte $00   ; 
- D 0 - I - 0x005440 01:9430: 00        .byte $00   ; 
- D 0 - I - 0x005441 01:9431: 00        .byte $00   ; 
- D 0 - I - 0x005442 01:9432: 14        .byte $14   ; 
- D 0 - I - 0x005443 01:9433: 00        .byte $00   ; 
- D 0 - I - 0x005444 01:9434: 00        .byte $00   ; 
- D 0 - I - 0x005445 01:9435: 00        .byte $00   ; 
- D 0 - I - 0x005446 01:9436: 00        .byte $00   ; 
- D 0 - I - 0x005447 01:9437: 1B        .byte $1B   ; 
off_9438_0B:
- D 0 - I - 0x005448 01:9438: 2C        .byte $2C   ; 
- D 0 - I - 0x005449 01:9439: 04        .byte $04   ; 
- D 0 - I - 0x00544A 01:943A: 04        .byte $04   ; 
- D 0 - I - 0x00544B 01:943B: 04        .byte $04   ; 
- D 0 - I - 0x00544C 01:943C: 04        .byte $04   ; 
- D 0 - I - 0x00544D 01:943D: 04        .byte $04   ; 
- D 0 - I - 0x00544E 01:943E: 04        .byte $04   ; 
- D 0 - I - 0x00544F 01:943F: 04        .byte $04   ; 
- D 0 - I - 0x005450 01:9440: 04        .byte $04   ; 
- D 0 - I - 0x005451 01:9441: 04        .byte $04   ; 
- D 0 - I - 0x005452 01:9442: 04        .byte $04   ; 
- D 0 - I - 0x005453 01:9443: 04        .byte $04   ; 
- D 0 - I - 0x005454 01:9444: 04        .byte $04   ; 
- D 0 - I - 0x005455 01:9445: 04        .byte $04   ; 
- D 0 - I - 0x005456 01:9446: 04        .byte $04   ; 
- D 0 - I - 0x005457 01:9447: 04        .byte $04   ; 
- D 0 - I - 0x005458 01:9448: 16        .byte $16   ; 
- D 0 - I - 0x005459 01:9449: 04        .byte $04   ; 
off_944A_03:
- D 0 - I - 0x00545A 01:944A: 04        .byte $04   ; 
- D 0 - I - 0x00545B 01:944B: 04        .byte $04   ; 
- D 0 - I - 0x00545C 01:944C: 04        .byte $04   ; 
- D 0 - I - 0x00545D 01:944D: 04        .byte $04   ; 
- D 0 - I - 0x00545E 01:944E: 04        .byte $04   ; 
- D 0 - I - 0x00545F 01:944F: 04        .byte $04   ; 
- D 0 - I - 0x005460 01:9450: 04        .byte $04   ; 
- D 0 - I - 0x005461 01:9451: 04        .byte $04   ; 
- D 0 - I - 0x005462 01:9452: 04        .byte $04   ; 
- D 0 - I - 0x005463 01:9453: 04        .byte $04   ; 
- D 0 - I - 0x005464 01:9454: 04        .byte $04   ; 
- D 0 - I - 0x005465 01:9455: 04        .byte $04   ; 
- D 0 - I - 0x005466 01:9456: 16        .byte $16   ; 
- D 0 - I - 0x005467 01:9457: 04        .byte $04   ; 
- D 0 - I - 0x005468 01:9458: 04        .byte $04   ; 
- D 0 - I - 0x005469 01:9459: 04        .byte $04   ; 
- D 0 - I - 0x00546A 01:945A: 31        .byte $31   ; 
- D 0 - I - 0x00546B 01:945B: 04        .byte $04   ; 
- D 0 - I - 0x00546C 01:945C: 04        .byte $04   ; 
- D 0 - I - 0x00546D 01:945D: 04        .byte $04   ; 
- D 0 - I - 0x00546E 01:945E: 04        .byte $04   ; 
- D 0 - I - 0x00546F 01:945F: 04        .byte $04   ; 
- D 0 - I - 0x005470 01:9460: 04        .byte $04   ; 
- D 0 - I - 0x005471 01:9461: 04        .byte $04   ; 
- D 0 - I - 0x005472 01:9462: 04        .byte $04   ; 
- D 0 - I - 0x005473 01:9463: 04        .byte $04   ; 
- D 0 - I - 0x005474 01:9464: 04        .byte $04   ; 
- D 0 - I - 0x005475 01:9465: 37        .byte $37   ; 
- D 0 - I - 0x005476 01:9466: 2C        .byte $2C   ; 
off_9467_0A:
- D 0 - I - 0x005477 01:9467: 04        .byte $04   ; 
- D 0 - I - 0x005478 01:9468: 04        .byte $04   ; 
- D 0 - I - 0x005479 01:9469: 16        .byte $16   ; 
- D 0 - I - 0x00547A 01:946A: 4D        .byte $4D   ; 
- D 0 - I - 0x00547B 01:946B: 61        .byte $61   ; 
- D 0 - I - 0x00547C 01:946C: 6D        .byte $6D   ; 
- D 0 - I - 0x00547D 01:946D: 6D        .byte $6D   ; 
- D 0 - I - 0x00547E 01:946E: 6B        .byte $6B   ; 
- D 0 - I - 0x00547F 01:946F: 04        .byte $04   ; 
- D 0 - I - 0x005480 01:9470: 04        .byte $04   ; 
- D 0 - I - 0x005481 01:9471: 04        .byte $04   ; 
- D 0 - I - 0x005482 01:9472: 04        .byte $04   ; 
- D 0 - I - 0x005483 01:9473: 04        .byte $04   ; 
- D 0 - I - 0x005484 01:9474: 04        .byte $04   ; 
- D 0 - I - 0x005485 01:9475: 88        .byte $88   ; 
- D 0 - I - 0x005486 01:9476: 89        .byte $89   ; 
- D 0 - I - 0x005487 01:9477: 8A        .byte $8A   ; 
- D 0 - I - 0x005488 01:9478: 04        .byte $04   ; 
- D 0 - I - 0x005489 01:9479: 04        .byte $04   ; 
- D 0 - I - 0x00548A 01:947A: 04        .byte $04   ; 
- D 0 - I - 0x00548B 01:947B: 04        .byte $04   ; 
- D 0 - I - 0x00548C 01:947C: 04        .byte $04   ; 
- D 0 - I - 0x00548D 01:947D: 04        .byte $04   ; 
- D 0 - I - 0x00548E 01:947E: 04        .byte $04   ; 
- - - - - - 0x00548F 01:947F: 04        .byte $04   ; 
- - - - - - 0x005490 01:9480: 04        .byte $04   ; 
- - - - - - 0x005491 01:9481: 04        .byte $04   ; 
off_9482_1D:
- D 0 - I - 0x005492 01:9482: 16        .byte $16   ; 
- D 0 - I - 0x005493 01:9483: 04        .byte $04   ; 
- D 0 - I - 0x005494 01:9484: 04        .byte $04   ; 
- D 0 - I - 0x005495 01:9485: 04        .byte $04   ; 
- D 0 - I - 0x005496 01:9486: 04        .byte $04   ; 
- D 0 - I - 0x005497 01:9487: 16        .byte $16   ; 
- D 0 - I - 0x005498 01:9488: 04        .byte $04   ; 
- D 0 - I - 0x005499 01:9489: 04        .byte $04   ; 
- D 0 - I - 0x00549A 01:948A: 04        .byte $04   ; 
- D 0 - I - 0x00549B 01:948B: 04        .byte $04   ; 
- D 0 - I - 0x00549C 01:948C: 16        .byte $16   ; 
- D 0 - I - 0x00549D 01:948D: 04        .byte $04   ; 
- D 0 - I - 0x00549E 01:948E: 04        .byte $04   ; 
- D 0 - I - 0x00549F 01:948F: 16        .byte $16   ; 
- D 0 - I - 0x0054A0 01:9490: 04        .byte $04   ; 
- D 0 - I - 0x0054A1 01:9491: 04        .byte $04   ; 
- D 0 - I - 0x0054A2 01:9492: 04        .byte $04   ; 
- D 0 - I - 0x0054A3 01:9493: 04        .byte $04   ; 
- D 0 - I - 0x0054A4 01:9494: 04        .byte $04   ; 
- D 0 - I - 0x0054A5 01:9495: 04        .byte $04   ; 
- D 0 - I - 0x0054A6 01:9496: 04        .byte $04   ; 
- D 0 - I - 0x0054A7 01:9497: 04        .byte $04   ; 
- D 0 - I - 0x0054A8 01:9498: 04        .byte $04   ; 
- D 0 - I - 0x0054A9 01:9499: 04        .byte $04   ; 
- D 0 - I - 0x0054AA 01:949A: 04        .byte $04   ; 
- D 0 - I - 0x0054AB 01:949B: 04        .byte $04   ; 
- D 0 - I - 0x0054AC 01:949C: 04        .byte $04   ; 
- D 0 - I - 0x0054AD 01:949D: 04        .byte $04   ; 
- D 0 - I - 0x0054AE 01:949E: 04        .byte $04   ; 
- D 0 - I - 0x0054AF 01:949F: 04        .byte $04   ; 
- D 0 - I - 0x0054B0 01:94A0: 04        .byte $04   ; 
- D 0 - I - 0x0054B1 01:94A1: 2B        .byte $2B   ; 
off_94A2_0C:
- D 0 - I - 0x0054B2 01:94A2: 2C        .byte $2C   ; 
- D 0 - I - 0x0054B3 01:94A3: 04        .byte $04   ; 
- D 0 - I - 0x0054B4 01:94A4: 17        .byte $17   ; 
- D 0 - I - 0x0054B5 01:94A5: 04        .byte $04   ; 
- D 0 - I - 0x0054B6 01:94A6: 04        .byte $04   ; 
- D 0 - I - 0x0054B7 01:94A7: 04        .byte $04   ; 
- D 0 - I - 0x0054B8 01:94A8: 16        .byte $16   ; 
- D 0 - I - 0x0054B9 01:94A9: 04        .byte $04   ; 
- D 0 - I - 0x0054BA 01:94AA: 04        .byte $04   ; 
- D 0 - I - 0x0054BB 01:94AB: 04        .byte $04   ; 
- D 0 - I - 0x0054BC 01:94AC: 16        .byte $16   ; 
- D 0 - I - 0x0054BD 01:94AD: 04        .byte $04   ; 
- D 0 - I - 0x0054BE 01:94AE: 04        .byte $04   ; 
- D 0 - I - 0x0054BF 01:94AF: 16        .byte $16   ; 
off_94B0_04:
- D 0 - I - 0x0054C0 01:94B0: 04        .byte $04   ; 
- D 0 - I - 0x0054C1 01:94B1: 04        .byte $04   ; 
- D 0 - I - 0x0054C2 01:94B2: 04        .byte $04   ; 
- D 0 - I - 0x0054C3 01:94B3: 04        .byte $04   ; 
- D 0 - I - 0x0054C4 01:94B4: 04        .byte $04   ; 
- D 0 - I - 0x0054C5 01:94B5: 04        .byte $04   ; 
- D 0 - I - 0x0054C6 01:94B6: 04        .byte $04   ; 
- D 0 - I - 0x0054C7 01:94B7: 04        .byte $04   ; 
- D 0 - I - 0x0054C8 01:94B8: 04        .byte $04   ; 
- D 0 - I - 0x0054C9 01:94B9: 04        .byte $04   ; 
- D 0 - I - 0x0054CA 01:94BA: 16        .byte $16   ; 
- D 0 - I - 0x0054CB 01:94BB: 04        .byte $04   ; 
- D 0 - I - 0x0054CC 01:94BC: 04        .byte $04   ; 
- D 0 - I - 0x0054CD 01:94BD: 04        .byte $04   ; 
- D 0 - I - 0x0054CE 01:94BE: 04        .byte $04   ; 
- D 0 - I - 0x0054CF 01:94BF: 04        .byte $04   ; 
- D 0 - I - 0x0054D0 01:94C0: 04        .byte $04   ; 
- D 0 - I - 0x0054D1 01:94C1: 04        .byte $04   ; 
- D 0 - I - 0x0054D2 01:94C2: 04        .byte $04   ; 
- D 0 - I - 0x0054D3 01:94C3: 16        .byte $16   ; 
- D 0 - I - 0x0054D4 01:94C4: 04        .byte $04   ; 
- D 0 - I - 0x0054D5 01:94C5: 04        .byte $04   ; 
- D 0 - I - 0x0054D6 01:94C6: 04        .byte $04   ; 
- D 0 - I - 0x0054D7 01:94C7: 04        .byte $04   ; 
- D 0 - I - 0x0054D8 01:94C8: 04        .byte $04   ; 
- D 0 - I - 0x0054D9 01:94C9: 04        .byte $04   ; 
- D 0 - I - 0x0054DA 01:94CA: 04        .byte $04   ; 
- D 0 - I - 0x0054DB 01:94CB: 04        .byte $04   ; 
- D 0 - I - 0x0054DC 01:94CC: 04        .byte $04   ; 
- D 0 - I - 0x0054DD 01:94CD: 04        .byte $04   ; 
- D 0 - I - 0x0054DE 01:94CE: 04        .byte $04   ; 
- D 0 - I - 0x0054DF 01:94CF: 2B        .byte $2B   ; 
off_94D0_0D:
off_94D0_00:
off_94D0_0C:
- D 0 - I - 0x0054E0 01:94D0: 1C        .byte $1C   ; 
off_94D1_01:
off_94D1_0C:
- D 0 - I - 0x0054E1 01:94D1: 00        .byte $00   ; 
- D 0 - I - 0x0054E2 01:94D2: 00        .byte $00   ; 
- D 0 - I - 0x0054E3 01:94D3: 00        .byte $00   ; 
- D 0 - I - 0x0054E4 01:94D4: 00        .byte $00   ; 
- D 0 - I - 0x0054E5 01:94D5: 00        .byte $00   ; 
- D 0 - I - 0x0054E6 01:94D6: 00        .byte $00   ; 
- D 0 - I - 0x0054E7 01:94D7: 00        .byte $00   ; 
- D 0 - I - 0x0054E8 01:94D8: 00        .byte $00   ; 
- D 0 - I - 0x0054E9 01:94D9: 00        .byte $00   ; 
- D 0 - I - 0x0054EA 01:94DA: 00        .byte $00   ; 
- D 0 - I - 0x0054EB 01:94DB: 00        .byte $00   ; 
- D 0 - I - 0x0054EC 01:94DC: 00        .byte $00   ; 
- D 0 - I - 0x0054ED 01:94DD: 00        .byte $00   ; 
- D 0 - I - 0x0054EE 01:94DE: 00        .byte $00   ; 
- D 0 - I - 0x0054EF 01:94DF: 00        .byte $00   ; 
- D 0 - I - 0x0054F0 01:94E0: 00        .byte $00   ; 
- D 0 - I - 0x0054F1 01:94E1: 00        .byte $00   ; 
- D 0 - I - 0x0054F2 01:94E2: 00        .byte $00   ; 
- D 0 - I - 0x0054F3 01:94E3: 00        .byte $00   ; 
- D 0 - I - 0x0054F4 01:94E4: 00        .byte $00   ; 
- D 0 - I - 0x0054F5 01:94E5: 00        .byte $00   ; 
- D 0 - I - 0x0054F6 01:94E6: 00        .byte $00   ; 
- D 0 - I - 0x0054F7 01:94E7: 00        .byte $00   ; 
- D 0 - I - 0x0054F8 01:94E8: 00        .byte $00   ; 
- D 0 - I - 0x0054F9 01:94E9: 00        .byte $00   ; 
- D 0 - I - 0x0054FA 01:94EA: 00        .byte $00   ; 
- D 0 - I - 0x0054FB 01:94EB: 00        .byte $00   ; 
- D 0 - I - 0x0054FC 01:94EC: 00        .byte $00   ; 
- D 0 - I - 0x0054FD 01:94ED: 00        .byte $00   ; 
- D 0 - I - 0x0054FE 01:94EE: 00        .byte $00   ; 
- D 0 - I - 0x0054FF 01:94EF: 00        .byte $00   ; 
- D 0 - I - 0x005500 01:94F0: 1B        .byte $1B   ; 
off_94F1_0E:
- D 0 - I - 0x005501 01:94F1: 1C        .byte $1C   ; 
- D 0 - I - 0x005502 01:94F2: 00        .byte $00   ; 
- D 0 - I - 0x005503 01:94F3: 00        .byte $00   ; 
- D 0 - I - 0x005504 01:94F4: 00        .byte $00   ; 
- D 0 - I - 0x005505 01:94F5: 00        .byte $00   ; 
- D 0 - I - 0x005506 01:94F6: 00        .byte $00   ; 
- D 0 - I - 0x005507 01:94F7: 00        .byte $00   ; 
- D 0 - I - 0x005508 01:94F8: 00        .byte $00   ; 
- D 0 - I - 0x005509 01:94F9: 00        .byte $00   ; 
- D 0 - I - 0x00550A 01:94FA: 00        .byte $00   ; 
- D 0 - I - 0x00550B 01:94FB: 00        .byte $00   ; 
- D 0 - I - 0x00550C 01:94FC: 00        .byte $00   ; 
- D 0 - I - 0x00550D 01:94FD: 00        .byte $00   ; 
- D 0 - I - 0x00550E 01:94FE: 00        .byte $00   ; 
- D 0 - I - 0x00550F 01:94FF: 00        .byte $00   ; 
- D 0 - I - 0x005510 01:9500: 00        .byte $00   ; 
- D 0 - I - 0x005511 01:9501: 00        .byte $00   ; 
- D 0 - I - 0x005512 01:9502: 14        .byte $14   ; 
- D 0 - I - 0x005513 01:9503: 00        .byte $00   ; 
off_9504_02:
- D 0 - I - 0x005514 01:9504: 00        .byte $00   ; 
- D 0 - I - 0x005515 01:9505: 00        .byte $00   ; 
- D 0 - I - 0x005516 01:9506: 14        .byte $14   ; 
- D 0 - I - 0x005517 01:9507: 00        .byte $00   ; 
- D 0 - I - 0x005518 01:9508: 00        .byte $00   ; 
- D 0 - I - 0x005519 01:9509: 00        .byte $00   ; 
- D 0 - I - 0x00551A 01:950A: 00        .byte $00   ; 
- D 0 - I - 0x00551B 01:950B: 00        .byte $00   ; 
- D 0 - I - 0x00551C 01:950C: 00        .byte $00   ; 
- D 0 - I - 0x00551D 01:950D: 00        .byte $00   ; 
- D 0 - I - 0x00551E 01:950E: 00        .byte $00   ; 
- D 0 - I - 0x00551F 01:950F: 00        .byte $00   ; 
- D 0 - I - 0x005520 01:9510: 00        .byte $00   ; 
- D 0 - I - 0x005521 01:9511: 00        .byte $00   ; 
- D 0 - I - 0x005522 01:9512: 00        .byte $00   ; 
- D 0 - I - 0x005523 01:9513: 00        .byte $00   ; 
- D 0 - I - 0x005524 01:9514: 22        .byte $22   ; 
- D 0 - I - 0x005525 01:9515: 00        .byte $00   ; 
- D 0 - I - 0x005526 01:9516: 15        .byte $15   ; 
- D 0 - I - 0x005527 01:9517: 00        .byte $00   ; 
- D 0 - I - 0x005528 01:9518: 00        .byte $00   ; 
- D 0 - I - 0x005529 01:9519: 00        .byte $00   ; 
- D 0 - I - 0x00552A 01:951A: 00        .byte $00   ; 
- D 0 - I - 0x00552B 01:951B: 00        .byte $00   ; 
- D 0 - I - 0x00552C 01:951C: 00        .byte $00   ; 
- D 0 - I - 0x00552D 01:951D: 00        .byte $00   ; 
- D 0 - I - 0x00552E 01:951E: 00        .byte $00   ; 
- D 0 - I - 0x00552F 01:951F: 00        .byte $00   ; 
- D 0 - I - 0x005530 01:9520: 21        .byte $21   ; 
- D 0 - I - 0x005531 01:9521: 00        .byte $00   ; 
- D 0 - I - 0x005532 01:9522: 40        .byte $40   ; 
off_9523_02:
- D 0 - I - 0x005533 01:9523: 54        .byte $54   ; 
- D 0 - I - 0x005534 01:9524: 42        .byte $42   ; 
- D 0 - I - 0x005535 01:9525: 00        .byte $00   ; 
- D 0 - I - 0x005536 01:9526: 00        .byte $00   ; 
- D 0 - I - 0x005537 01:9527: 00        .byte $00   ; 
- D 0 - I - 0x005538 01:9528: 00        .byte $00   ; 
- D 0 - I - 0x005539 01:9529: 15        .byte $15   ; 
- D 0 - I - 0x00553A 01:952A: 00        .byte $00   ; 
- D 0 - I - 0x00553B 01:952B: 00        .byte $00   ; 
- D 0 - I - 0x00553C 01:952C: 00        .byte $00   ; 
- D 0 - I - 0x00553D 01:952D: 00        .byte $00   ; 
- D 0 - I - 0x00553E 01:952E: 00        .byte $00   ; 
- D 0 - I - 0x00553F 01:952F: 00        .byte $00   ; 
- D 0 - I - 0x005540 01:9530: 00        .byte $00   ; 
- D 0 - I - 0x005541 01:9531: 00        .byte $00   ; 
- D 0 - I - 0x005542 01:9532: 4C        .byte $4C   ; 
- D 0 - I - 0x005543 01:9533: 60        .byte $60   ; 
- D 0 - I - 0x005544 01:9534: 6C        .byte $6C   ; 
- D 0 - I - 0x005545 01:9535: 6C        .byte $6C   ; 
- D 0 - I - 0x005546 01:9536: 6C        .byte $6C   ; 
- D 0 - I - 0x005547 01:9537: 6C        .byte $6C   ; 
- D 0 - I - 0x005548 01:9538: 7C        .byte $7C   ; 
- D 0 - I - 0x005549 01:9539: 54        .byte $54   ; 
- D 0 - I - 0x00554A 01:953A: 54        .byte $54   ; 
- D 0 - I - 0x00554B 01:953B: 54        .byte $54   ; 
- D 0 - I - 0x00554C 01:953C: 42        .byte $42   ; 
- D 0 - I - 0x00554D 01:953D: 00        .byte $00   ; 
- D 0 - I - 0x00554E 01:953E: 14        .byte $14   ; 
- D 0 - I - 0x00554F 01:953F: 00        .byte $00   ; 
- D 0 - I - 0x005550 01:9540: 00        .byte $00   ; 
- D 0 - I - 0x005551 01:9541: 00        .byte $00   ; 
- D 0 - I - 0x005552 01:9542: 1B        .byte $1B   ; 
off_9543_0F:
- D 0 - I - 0x005553 01:9543: 2C        .byte $2C   ; 
- D 0 - I - 0x005554 01:9544: 04        .byte $04   ; 
- D 0 - I - 0x005555 01:9545: 04        .byte $04   ; 
- D 0 - I - 0x005556 01:9546: 04        .byte $04   ; 
- D 0 - I - 0x005557 01:9547: 04        .byte $04   ; 
- D 0 - I - 0x005558 01:9548: 04        .byte $04   ; 
- D 0 - I - 0x005559 01:9549: 04        .byte $04   ; 
- D 0 - I - 0x00555A 01:954A: 16        .byte $16   ; 
- D 0 - I - 0x00555B 01:954B: 04        .byte $04   ; 
- D 0 - I - 0x00555C 01:954C: 04        .byte $04   ; 
- D 0 - I - 0x00555D 01:954D: 04        .byte $04   ; 
- D 0 - I - 0x00555E 01:954E: 16        .byte $16   ; 
- D 0 - I - 0x00555F 01:954F: 04        .byte $04   ; 
- D 0 - I - 0x005560 01:9550: 04        .byte $04   ; 
- D 0 - I - 0x005561 01:9551: 04        .byte $04   ; 
- D 0 - I - 0x005562 01:9552: 17        .byte $17   ; 
- D 0 - I - 0x005563 01:9553: 04        .byte $04   ; 
- D 0 - I - 0x005564 01:9554: 04        .byte $04   ; 
- D 0 - I - 0x005565 01:9555: 04        .byte $04   ; 
- D 0 - I - 0x005566 01:9556: 04        .byte $04   ; 
off_9557_08:
- D 0 - I - 0x005567 01:9557: 04        .byte $04   ; 
- D 0 - I - 0x005568 01:9558: 04        .byte $04   ; 
- D 0 - I - 0x005569 01:9559: 04        .byte $04   ; 
- D 0 - I - 0x00556A 01:955A: 04        .byte $04   ; 
- D 0 - I - 0x00556B 01:955B: 04        .byte $04   ; 
- D 0 - I - 0x00556C 01:955C: 04        .byte $04   ; 
- D 0 - I - 0x00556D 01:955D: 04        .byte $04   ; 
- D 0 - I - 0x00556E 01:955E: 16        .byte $16   ; 
- D 0 - I - 0x00556F 01:955F: 04        .byte $04   ; 
- D 0 - I - 0x005570 01:9560: 04        .byte $04   ; 
- D 0 - I - 0x005571 01:9561: 04        .byte $04   ; 
- D 0 - I - 0x005572 01:9562: 04        .byte $04   ; 
- D 0 - I - 0x005573 01:9563: 04        .byte $04   ; 
- D 0 - I - 0x005574 01:9564: 16        .byte $16   ; 
- D 0 - I - 0x005575 01:9565: 04        .byte $04   ; 
- D 0 - I - 0x005576 01:9566: 04        .byte $04   ; 
- D 0 - I - 0x005577 01:9567: 17        .byte $17   ; 
- D 0 - I - 0x005578 01:9568: 04        .byte $04   ; 
- D 0 - I - 0x005579 01:9569: 04        .byte $04   ; 
- D 0 - I - 0x00557A 01:956A: 82        .byte $82   ; 
- D 0 - I - 0x00557B 01:956B: 83        .byte $83   ; 
- D 0 - I - 0x00557C 01:956C: 84        .byte $84   ; 
- D 0 - I - 0x00557D 01:956D: 04        .byte $04   ; 
- D 0 - I - 0x00557E 01:956E: 04        .byte $04   ; 
- D 0 - I - 0x00557F 01:956F: 04        .byte $04   ; 
- D 0 - I - 0x005580 01:9570: 04        .byte $04   ; 
- D 0 - I - 0x005581 01:9571: 04        .byte $04   ; 
- D 0 - I - 0x005582 01:9572: 04        .byte $04   ; 
- D 0 - I - 0x005583 01:9573: 04        .byte $04   ; 
- D 0 - I - 0x005584 01:9574: 04        .byte $04   ; 
- D 0 - I - 0x005585 01:9575: 04        .byte $04   ; 
- D 0 - I - 0x005586 01:9576: 04        .byte $04   ; 
off_9577_10:
- D 0 - I - 0x005587 01:9577: 2C        .byte $2C   ; 
- D 0 - I - 0x005588 01:9578: 04        .byte $04   ; 
- D 0 - I - 0x005589 01:9579: 16        .byte $16   ; 
- D 0 - I - 0x00558A 01:957A: 04        .byte $04   ; 
- D 0 - I - 0x00558B 01:957B: 04        .byte $04   ; 
- D 0 - I - 0x00558C 01:957C: 04        .byte $04   ; 
- D 0 - I - 0x00558D 01:957D: 17        .byte $17   ; 
- D 0 - I - 0x00558E 01:957E: 04        .byte $04   ; 
off_957F_13:
- D 0 - I - 0x00558F 01:957F: 04        .byte $04   ; 
- D 0 - I - 0x005590 01:9580: 04        .byte $04   ; 
- D 0 - I - 0x005591 01:9581: 04        .byte $04   ; 
- D 0 - I - 0x005592 01:9582: 04        .byte $04   ; 
- D 0 - I - 0x005593 01:9583: 04        .byte $04   ; 
- D 0 - I - 0x005594 01:9584: 04        .byte $04   ; 
- D 0 - I - 0x005595 01:9585: 04        .byte $04   ; 
- D 0 - I - 0x005596 01:9586: 04        .byte $04   ; 
- D 0 - I - 0x005597 01:9587: 04        .byte $04   ; 
- D 0 - I - 0x005598 01:9588: 04        .byte $04   ; 
- D 0 - I - 0x005599 01:9589: 04        .byte $04   ; 
- D 0 - I - 0x00559A 01:958A: 04        .byte $04   ; 
- D 0 - I - 0x00559B 01:958B: 04        .byte $04   ; 
- D 0 - I - 0x00559C 01:958C: 04        .byte $04   ; 
- D 0 - I - 0x00559D 01:958D: 04        .byte $04   ; 
- D 0 - I - 0x00559E 01:958E: 04        .byte $04   ; 
- D 0 - I - 0x00559F 01:958F: 04        .byte $04   ; 
- D 0 - I - 0x0055A0 01:9590: 04        .byte $04   ; 
- D 0 - I - 0x0055A1 01:9591: 04        .byte $04   ; 
- D 0 - I - 0x0055A2 01:9592: 04        .byte $04   ; 
- D 0 - I - 0x0055A3 01:9593: 04        .byte $04   ; 
- D 0 - I - 0x0055A4 01:9594: 04        .byte $04   ; 
- D 0 - I - 0x0055A5 01:9595: 04        .byte $04   ; 
- D 0 - I - 0x0055A6 01:9596: 04        .byte $04   ; 
- D 0 - I - 0x0055A7 01:9597: 45        .byte $45   ; 
- D 0 - I - 0x0055A8 01:9598: 5E        .byte $5E   ; 
- D 0 - I - 0x0055A9 01:9599: 5F        .byte $5F   ; 
- D 0 - I - 0x0055AA 01:959A: 47        .byte $47   ; 
- D 0 - I - 0x0055AB 01:959B: 04        .byte $04   ; 
- D 0 - I - 0x0055AC 01:959C: 04        .byte $04   ; 
- D 0 - I - 0x0055AD 01:959D: 04        .byte $04   ; 
- D 0 - I - 0x0055AE 01:959E: 2B        .byte $2B   ; 
off_959F_11:
- D 0 - I - 0x0055AF 01:959F: 1C        .byte $1C   ; 
- D 0 - I - 0x0055B0 01:95A0: 00        .byte $00   ; 
- D 0 - I - 0x0055B1 01:95A1: 00        .byte $00   ; 
- D 0 - I - 0x0055B2 01:95A2: 00        .byte $00   ; 
- D 0 - I - 0x0055B3 01:95A3: 00        .byte $00   ; 
- D 0 - I - 0x0055B4 01:95A4: 00        .byte $00   ; 
- D 0 - I - 0x0055B5 01:95A5: 00        .byte $00   ; 
- D 0 - I - 0x0055B6 01:95A6: 00        .byte $00   ; 
- D 0 - I - 0x0055B7 01:95A7: 00        .byte $00   ; 
- D 0 - I - 0x0055B8 01:95A8: 14        .byte $14   ; 
- D 0 - I - 0x0055B9 01:95A9: 00        .byte $00   ; 
- D 0 - I - 0x0055BA 01:95AA: 00        .byte $00   ; 
- D 0 - I - 0x0055BB 01:95AB: 00        .byte $00   ; 
- D 0 - I - 0x0055BC 01:95AC: 00        .byte $00   ; 
- D 0 - I - 0x0055BD 01:95AD: 00        .byte $00   ; 
- D 0 - I - 0x0055BE 01:95AE: 14        .byte $14   ; 
- D 0 - I - 0x0055BF 01:95AF: 00        .byte $00   ; 
- D 0 - I - 0x0055C0 01:95B0: 00        .byte $00   ; 
- D 0 - I - 0x0055C1 01:95B1: 00        .byte $00   ; 
- D 0 - I - 0x0055C2 01:95B2: 14        .byte $14   ; 
- D 0 - I - 0x0055C3 01:95B3: 00        .byte $00   ; 
- D 0 - I - 0x0055C4 01:95B4: 00        .byte $00   ; 
- D 0 - I - 0x0055C5 01:95B5: 00        .byte $00   ; 
- D 0 - I - 0x0055C6 01:95B6: 14        .byte $14   ; 
- D 0 - I - 0x0055C7 01:95B7: 00        .byte $00   ; 
- D 0 - I - 0x0055C8 01:95B8: 00        .byte $00   ; 
- D 0 - I - 0x0055C9 01:95B9: 00        .byte $00   ; 
- D 0 - I - 0x0055CA 01:95BA: 15        .byte $15   ; 
- D 0 - I - 0x0055CB 01:95BB: 00        .byte $00   ; 
- D 0 - I - 0x0055CC 01:95BC: 00        .byte $00   ; 
- D 0 - I - 0x0055CD 01:95BD: 14        .byte $14   ; 
- D 0 - I - 0x0055CE 01:95BE: 00        .byte $00   ; 
off_95BF_16:
- D 0 - I - 0x0055CF 01:95BF: 1C        .byte $1C   ; 
- D 0 - I - 0x0055D0 01:95C0: 00        .byte $00   ; 
- D 0 - I - 0x0055D1 01:95C1: 00        .byte $00   ; 
- D 0 - I - 0x0055D2 01:95C2: 0F        .byte $0F   ; 
- D 0 - I - 0x0055D3 01:95C3: 00        .byte $00   ; 
- D 0 - I - 0x0055D4 01:95C4: 00        .byte $00   ; 
- D 0 - I - 0x0055D5 01:95C5: 14        .byte $14   ; 
- D 0 - I - 0x0055D6 01:95C6: 00        .byte $00   ; 
- D 0 - I - 0x0055D7 01:95C7: 00        .byte $00   ; 
- D 0 - I - 0x0055D8 01:95C8: 00        .byte $00   ; 
- D 0 - I - 0x0055D9 01:95C9: 00        .byte $00   ; 
- D 0 - I - 0x0055DA 01:95CA: 00        .byte $00   ; 
- D 0 - I - 0x0055DB 01:95CB: 00        .byte $00   ; 
- D 0 - I - 0x0055DC 01:95CC: 00        .byte $00   ; 
- D 0 - I - 0x0055DD 01:95CD: 00        .byte $00   ; 
off_95CE_04:
- D 0 - I - 0x0055DE 01:95CE: 00        .byte $00   ; 
- D 0 - I - 0x0055DF 01:95CF: 00        .byte $00   ; 
- D 0 - I - 0x0055E0 01:95D0: 00        .byte $00   ; 
- D 0 - I - 0x0055E1 01:95D1: 00        .byte $00   ; 
- D 0 - I - 0x0055E2 01:95D2: 00        .byte $00   ; 
- D 0 - I - 0x0055E3 01:95D3: 14        .byte $14   ; 
- D 0 - I - 0x0055E4 01:95D4: 00        .byte $00   ; 
- D 0 - I - 0x0055E5 01:95D5: 00        .byte $00   ; 
- D 0 - I - 0x0055E6 01:95D6: 00        .byte $00   ; 
- D 0 - I - 0x0055E7 01:95D7: 00        .byte $00   ; 
- D 0 - I - 0x0055E8 01:95D8: 00        .byte $00   ; 
- D 0 - I - 0x0055E9 01:95D9: 00        .byte $00   ; 
- D 0 - I - 0x0055EA 01:95DA: 00        .byte $00   ; 
- D 0 - I - 0x0055EB 01:95DB: 00        .byte $00   ; 
- D 0 - I - 0x0055EC 01:95DC: 00        .byte $00   ; 
- D 0 - I - 0x0055ED 01:95DD: 00        .byte $00   ; 
off_95DE_02:
- D 0 - I - 0x0055EE 01:95DE: 00        .byte $00   ; 
- D 0 - I - 0x0055EF 01:95DF: 00        .byte $00   ; 
- D 0 - I - 0x0055F0 01:95E0: 14        .byte $14   ; 
- D 0 - I - 0x0055F1 01:95E1: 00        .byte $00   ; 
- D 0 - I - 0x0055F2 01:95E2: 00        .byte $00   ; 
- D 0 - I - 0x0055F3 01:95E3: 00        .byte $00   ; 
- D 0 - I - 0x0055F4 01:95E4: 00        .byte $00   ; 
- D 0 - I - 0x0055F5 01:95E5: 00        .byte $00   ; 
- - - - - - 0x0055F6 01:95E6: 00        .byte $00   ; 
- D 0 - I - 0x0055F7 01:95E7: 00        .byte $00   ; 
- D 0 - I - 0x0055F8 01:95E8: 00        .byte $00   ; 
- D 0 - I - 0x0055F9 01:95E9: 00        .byte $00   ; 
- D 0 - I - 0x0055FA 01:95EA: 00        .byte $00   ; 
- D 0 - I - 0x0055FB 01:95EB: 00        .byte $00   ; 
- D 0 - I - 0x0055FC 01:95EC: 00        .byte $00   ; 
- D 0 - I - 0x0055FD 01:95ED: 00        .byte $00   ; 
- D 0 - I - 0x0055FE 01:95EE: 22        .byte $22   ; 
- D 0 - I - 0x0055FF 01:95EF: 00        .byte $00   ; 
- D 0 - I - 0x005600 01:95F0: 15        .byte $15   ; 
- D 0 - I - 0x005601 01:95F1: 00        .byte $00   ; 
- D 0 - I - 0x005602 01:95F2: 00        .byte $00   ; 
- D 0 - I - 0x005603 01:95F3: 00        .byte $00   ; 
- D 0 - I - 0x005604 01:95F4: 00        .byte $00   ; 
- D 0 - I - 0x005605 01:95F5: 00        .byte $00   ; 
- D 0 - I - 0x005606 01:95F6: 00        .byte $00   ; 
- D 0 - I - 0x005607 01:95F7: 00        .byte $00   ; 
- D 0 - I - 0x005608 01:95F8: 00        .byte $00   ; 
- D 0 - I - 0x005609 01:95F9: 00        .byte $00   ; 
- D 0 - I - 0x00560A 01:95FA: 21        .byte $21   ; 
- D 0 - I - 0x00560B 01:95FB: 00        .byte $00   ; 
- D 0 - I - 0x00560C 01:95FC: 00        .byte $00   ; 
- D 0 - I - 0x00560D 01:95FD: 00        .byte $00   ; 
off_95FE_17:
- D 0 - I - 0x00560E 01:95FE: 2C        .byte $2C   ; 
- D 0 - I - 0x00560F 01:95FF: 04        .byte $04   ; 
- D 0 - I - 0x005610 01:9600: 04        .byte $04   ; 
- D 0 - I - 0x005611 01:9601: 1F        .byte $1F   ; 
- D 0 - I - 0x005612 01:9602: 04        .byte $04   ; 
- D 0 - I - 0x005613 01:9603: 04        .byte $04   ; 
- D 0 - I - 0x005614 01:9604: 04        .byte $04   ; 
- D 0 - I - 0x005615 01:9605: 04        .byte $04   ; 
- D 0 - I - 0x005616 01:9606: 04        .byte $04   ; 
- D 0 - I - 0x005617 01:9607: 04        .byte $04   ; 
- D 0 - I - 0x005618 01:9608: 17        .byte $17   ; 
- D 0 - I - 0x005619 01:9609: 04        .byte $04   ; 
- D 0 - I - 0x00561A 01:960A: 04        .byte $04   ; 
- D 0 - I - 0x00561B 01:960B: 16        .byte $16   ; 
- D 0 - I - 0x00561C 01:960C: 04        .byte $04   ; 
- D 0 - I - 0x00561D 01:960D: 04        .byte $04   ; 
- D 0 - I - 0x00561E 01:960E: 04        .byte $04   ; 
- D 0 - I - 0x00561F 01:960F: 17        .byte $17   ; 
- D 0 - I - 0x005620 01:9610: 04        .byte $04   ; 
- D 0 - I - 0x005621 01:9611: 04        .byte $04   ; 
- D 0 - I - 0x005622 01:9612: 04        .byte $04   ; 
- D 0 - I - 0x005623 01:9613: 04        .byte $04   ; 
- D 0 - I - 0x005624 01:9614: 04        .byte $04   ; 
- D 0 - I - 0x005625 01:9615: 04        .byte $04   ; 
- D 0 - I - 0x005626 01:9616: 16        .byte $16   ; 
- D 0 - I - 0x005627 01:9617: 04        .byte $04   ; 
- D 0 - I - 0x005628 01:9618: 04        .byte $04   ; 
- D 0 - I - 0x005629 01:9619: 04        .byte $04   ; 
- D 0 - I - 0x00562A 01:961A: 04        .byte $04   ; 
- D 0 - I - 0x00562B 01:961B: 04        .byte $04   ; 
- D 0 - I - 0x00562C 01:961C: 04        .byte $04   ; 
- D 0 - I - 0x00562D 01:961D: 04        .byte $04   ; 
off_961E_18:
- D 0 - I - 0x00562E 01:961E: 2C        .byte $2C   ; 
- D 0 - I - 0x00562F 01:961F: 04        .byte $04   ; 
- D 0 - I - 0x005630 01:9620: 04        .byte $04   ; 
- D 0 - I - 0x005631 01:9621: 2F        .byte $2F   ; 
off_9622_05:
- D 0 - I - 0x005632 01:9622: 04        .byte $04   ; 
- D 0 - I - 0x005633 01:9623: 04        .byte $04   ; 
- D 0 - I - 0x005634 01:9624: 04        .byte $04   ; 
- D 0 - I - 0x005635 01:9625: 04        .byte $04   ; 
- D 0 - I - 0x005636 01:9626: 04        .byte $04   ; 
- D 0 - I - 0x005637 01:9627: 04        .byte $04   ; 
- D 0 - I - 0x005638 01:9628: 04        .byte $04   ; 
- D 0 - I - 0x005639 01:9629: 04        .byte $04   ; 
- D 0 - I - 0x00563A 01:962A: 04        .byte $04   ; 
- D 0 - I - 0x00563B 01:962B: 04        .byte $04   ; 
- D 0 - I - 0x00563C 01:962C: 04        .byte $04   ; 
- D 0 - I - 0x00563D 01:962D: 04        .byte $04   ; 
- D 0 - I - 0x00563E 01:962E: 04        .byte $04   ; 
- D 0 - I - 0x00563F 01:962F: 04        .byte $04   ; 
- D 0 - I - 0x005640 01:9630: 04        .byte $04   ; 
- D 0 - I - 0x005641 01:9631: 04        .byte $04   ; 
- D 0 - I - 0x005642 01:9632: 04        .byte $04   ; 
- D 0 - I - 0x005643 01:9633: 04        .byte $04   ; 
- D 0 - I - 0x005644 01:9634: 04        .byte $04   ; 
- D 0 - I - 0x005645 01:9635: 04        .byte $04   ; 
- D 0 - I - 0x005646 01:9636: 04        .byte $04   ; 
- D 0 - I - 0x005647 01:9637: 04        .byte $04   ; 
- D 0 - I - 0x005648 01:9638: 04        .byte $04   ; 
- D 0 - I - 0x005649 01:9639: 04        .byte $04   ; 
- D 0 - I - 0x00564A 01:963A: 04        .byte $04   ; 
- D 0 - I - 0x00564B 01:963B: 16        .byte $16   ; 
- D 0 - I - 0x00564C 01:963C: 04        .byte $04   ; 
- D 0 - I - 0x00564D 01:963D: 04        .byte $04   ; 
- D 0 - I - 0x00564E 01:963E: 04        .byte $04   ; 
- D 0 - I - 0x00564F 01:963F: 04        .byte $04   ; 
- D 0 - I - 0x005650 01:9640: 04        .byte $04   ; 
- D 0 - I - 0x005651 01:9641: 2B        .byte $2B   ; 
off_9642_19:
- D 0 - I - 0x005652 01:9642: 1C        .byte $1C   ; 
- D 0 - I - 0x005653 01:9643: 00        .byte $00   ; 
- D 0 - I - 0x005654 01:9644: 00        .byte $00   ; 
- D 0 - I - 0x005655 01:9645: 3F        .byte $3F   ; 
- D 0 - I - 0x005656 01:9646: 00        .byte $00   ; 
- D 0 - I - 0x005657 01:9647: 00        .byte $00   ; 
- D 0 - I - 0x005658 01:9648: 00        .byte $00   ; 
- D 0 - I - 0x005659 01:9649: 00        .byte $00   ; 
- D 0 - I - 0x00565A 01:964A: 14        .byte $14   ; 
- D 0 - I - 0x00565B 01:964B: 00        .byte $00   ; 
off_964C_11:
- D 0 - I - 0x00565C 01:964C: 00        .byte $00   ; 
- D 0 - I - 0x00565D 01:964D: 00        .byte $00   ; 
- D 0 - I - 0x00565E 01:964E: 00        .byte $00   ; 
- D 0 - I - 0x00565F 01:964F: 00        .byte $00   ; 
- D 0 - I - 0x005660 01:9650: 00        .byte $00   ; 
- D 0 - I - 0x005661 01:9651: 00        .byte $00   ; 
- D 0 - I - 0x005662 01:9652: 00        .byte $00   ; 
- D 0 - I - 0x005663 01:9653: 00        .byte $00   ; 
- D 0 - I - 0x005664 01:9654: 00        .byte $00   ; 
- D 0 - I - 0x005665 01:9655: 00        .byte $00   ; 
- D 0 - I - 0x005666 01:9656: 00        .byte $00   ; 
- D 0 - I - 0x005667 01:9657: 00        .byte $00   ; 
- D 0 - I - 0x005668 01:9658: 00        .byte $00   ; 
- D 0 - I - 0x005669 01:9659: 00        .byte $00   ; 
- D 0 - I - 0x00566A 01:965A: 00        .byte $00   ; 
- D 0 - I - 0x00566B 01:965B: 00        .byte $00   ; 
- D 0 - I - 0x00566C 01:965C: 15        .byte $15   ; 
- D 0 - I - 0x00566D 01:965D: 00        .byte $00   ; 
- D 0 - I - 0x00566E 01:965E: 00        .byte $00   ; 
- D 0 - I - 0x00566F 01:965F: 00        .byte $00   ; 
- D 0 - I - 0x005670 01:9660: 00        .byte $00   ; 
- D 0 - I - 0x005671 01:9661: 00        .byte $00   ; 
- D 0 - I - 0x005672 01:9662: 00        .byte $00   ; 
- D 0 - I - 0x005673 01:9663: 00        .byte $00   ; 
- D 0 - I - 0x005674 01:9664: 00        .byte $00   ; 
- D 0 - I - 0x005675 01:9665: 14        .byte $14   ; 
- D 0 - I - 0x005676 01:9666: 00        .byte $00   ; 
- D 0 - I - 0x005677 01:9667: 00        .byte $00   ; 
- D 0 - I - 0x005678 01:9668: 44        .byte $44   ; 
- D 0 - I - 0x005679 01:9669: 5A        .byte $5A   ; 
- D 0 - I - 0x00567A 01:966A: 5A        .byte $5A   ; 
- D 0 - I - 0x00567B 01:966B: 56        .byte $56   ; 
off_966C_1A:
- D 0 - I - 0x00567C 01:966C: 1C        .byte $1C   ; 
- D 0 - I - 0x00567D 01:966D: 00        .byte $00   ; 
- D 0 - I - 0x00567E 01:966E: 2D        .byte $2D   ; 
- D 0 - I - 0x00567F 01:966F: 2E        .byte $2E   ; 
- D 0 - I - 0x005680 01:9670: 00        .byte $00   ; 
- D 0 - I - 0x005681 01:9671: 00        .byte $00   ; 
- D 0 - I - 0x005682 01:9672: 00        .byte $00   ; 
- D 0 - I - 0x005683 01:9673: 00        .byte $00   ; 
- D 0 - I - 0x005684 01:9674: 00        .byte $00   ; 
- D 0 - I - 0x005685 01:9675: 00        .byte $00   ; 
- D 0 - I - 0x005686 01:9676: 00        .byte $00   ; 
- D 0 - I - 0x005687 01:9677: 00        .byte $00   ; 
- D 0 - I - 0x005688 01:9678: 00        .byte $00   ; 
off_9679_06:
- D 0 - I - 0x005689 01:9679: 00        .byte $00   ; 
- D 0 - I - 0x00568A 01:967A: 00        .byte $00   ; 
- D 0 - I - 0x00568B 01:967B: 00        .byte $00   ; 
- D 0 - I - 0x00568C 01:967C: 14        .byte $14   ; 
- D 0 - I - 0x00568D 01:967D: 00        .byte $00   ; 
- D 0 - I - 0x00568E 01:967E: 00        .byte $00   ; 
- D 0 - I - 0x00568F 01:967F: 00        .byte $00   ; 
- D 0 - I - 0x005690 01:9680: 00        .byte $00   ; 
- D 0 - I - 0x005691 01:9681: 00        .byte $00   ; 
- D 0 - I - 0x005692 01:9682: 00        .byte $00   ; 
- D 0 - I - 0x005693 01:9683: 00        .byte $00   ; 
- D 0 - I - 0x005694 01:9684: 00        .byte $00   ; 
- D 0 - I - 0x005695 01:9685: 00        .byte $00   ; 
- D 0 - I - 0x005696 01:9686: 00        .byte $00   ; 
- D 0 - I - 0x005697 01:9687: 00        .byte $00   ; 
- D 0 - I - 0x005698 01:9688: 00        .byte $00   ; 
- D 0 - I - 0x005699 01:9689: 00        .byte $00   ; 
- D 0 - I - 0x00569A 01:968A: 00        .byte $00   ; 
- D 0 - I - 0x00569B 01:968B: 00        .byte $00   ; 
- D 0 - I - 0x00569C 01:968C: 80        .byte $80   ; 
- D 0 - I - 0x00569D 01:968D: 10        .byte $10   ; 
- D 0 - I - 0x00569E 01:968E: 81        .byte $81   ; 
- D 0 - I - 0x00569F 01:968F: 10        .byte $10   ; 
- D 0 - I - 0x0056A0 01:9690: 10        .byte $10   ; 
- D 0 - I - 0x0056A1 01:9691: 10        .byte $10   ; 
- D 0 - I - 0x0056A2 01:9692: 10        .byte $10   ; 
- D 0 - I - 0x0056A3 01:9693: 10        .byte $10   ; 
- D 0 - I - 0x0056A4 01:9694: 10        .byte $10   ; 
- D 0 - I - 0x0056A5 01:9695: 10        .byte $10   ; 
- D 0 - I - 0x0056A6 01:9696: 10        .byte $10   ; 
- D 0 - I - 0x0056A7 01:9697: 10        .byte $10   ; 
- D 0 - I - 0x0056A8 01:9698: 10        .byte $10   ; 
off_9699_1B:
- D 0 - I - 0x0056A9 01:9699: 3C        .byte $3C   ; 
- D 0 - I - 0x0056AA 01:969A: 3D        .byte $3D   ; 
- D 0 - I - 0x0056AB 01:969B: 3E        .byte $3E   ; 
- D 0 - I - 0x0056AC 01:969C: 04        .byte $04   ; 
- D 0 - I - 0x0056AD 01:969D: 04        .byte $04   ; 
- D 0 - I - 0x0056AE 01:969E: 04        .byte $04   ; 
- D 0 - I - 0x0056AF 01:969F: 04        .byte $04   ; 
- D 0 - I - 0x0056B0 01:96A0: 04        .byte $04   ; 
- D 0 - I - 0x0056B1 01:96A1: 04        .byte $04   ; 
- D 0 - I - 0x0056B2 01:96A2: 04        .byte $04   ; 
- D 0 - I - 0x0056B3 01:96A3: 04        .byte $04   ; 
- D 0 - I - 0x0056B4 01:96A4: 04        .byte $04   ; 
- D 0 - I - 0x0056B5 01:96A5: 04        .byte $04   ; 
- D 0 - I - 0x0056B6 01:96A6: 04        .byte $04   ; 
off_96A7_14:
- D 0 - I - 0x0056B7 01:96A7: 04        .byte $04   ; 
- D 0 - I - 0x0056B8 01:96A8: 04        .byte $04   ; 
- D 0 - I - 0x0056B9 01:96A9: 04        .byte $04   ; 
- D 0 - I - 0x0056BA 01:96AA: 04        .byte $04   ; 
- D 0 - I - 0x0056BB 01:96AB: 04        .byte $04   ; 
- D 0 - I - 0x0056BC 01:96AC: 04        .byte $04   ; 
- D 0 - I - 0x0056BD 01:96AD: 04        .byte $04   ; 
- D 0 - I - 0x0056BE 01:96AE: 04        .byte $04   ; 
- D 0 - I - 0x0056BF 01:96AF: 17        .byte $17   ; 
- D 0 - I - 0x0056C0 01:96B0: 04        .byte $04   ; 
- D 0 - I - 0x0056C1 01:96B1: 04        .byte $04   ; 
- D 0 - I - 0x0056C2 01:96B2: 04        .byte $04   ; 
- D 0 - I - 0x0056C3 01:96B3: 04        .byte $04   ; 
- D 0 - I - 0x0056C4 01:96B4: 04        .byte $04   ; 
- D 0 - I - 0x0056C5 01:96B5: 04        .byte $04   ; 
- D 0 - I - 0x0056C6 01:96B6: 04        .byte $04   ; 
- D 0 - I - 0x0056C7 01:96B7: 04        .byte $04   ; 
- D 0 - I - 0x0056C8 01:96B8: 04        .byte $04   ; 
- D 0 - I - 0x0056C9 01:96B9: 04        .byte $04   ; 
- D 0 - I - 0x0056CA 01:96BA: 04        .byte $04   ; 
- D 0 - I - 0x0056CB 01:96BB: 04        .byte $04   ; 
- D 0 - I - 0x0056CC 01:96BC: 16        .byte $16   ; 
- D 0 - I - 0x0056CD 01:96BD: 04        .byte $04   ; 
- D 0 - I - 0x0056CE 01:96BE: 04        .byte $04   ; 
- D 0 - I - 0x0056CF 01:96BF: 04        .byte $04   ; 
- D 0 - I - 0x0056D0 01:96C0: 04        .byte $04   ; 
- D 0 - I - 0x0056D1 01:96C1: 04        .byte $04   ; 
- D 0 - I - 0x0056D2 01:96C2: 04        .byte $04   ; 
- D 0 - I - 0x0056D3 01:96C3: 04        .byte $04   ; 
- D 0 - I - 0x0056D4 01:96C4: 09        .byte $09   ; 
- D 0 - I - 0x0056D5 01:96C5: 0A        .byte $0A   ; 
- D 0 - I - 0x0056D6 01:96C6: 0B        .byte $0B   ; 
off_96C7_1D:
- D 0 - I - 0x0056D7 01:96C7: 2C        .byte $2C   ; 
- D 0 - I - 0x0056D8 01:96C8: 04        .byte $04   ; 
- D 0 - I - 0x0056D9 01:96C9: 16        .byte $16   ; 
- D 0 - I - 0x0056DA 01:96CA: 04        .byte $04   ; 
- D 0 - I - 0x0056DB 01:96CB: 04        .byte $04   ; 
- D 0 - I - 0x0056DC 01:96CC: 04        .byte $04   ; 
- D 0 - I - 0x0056DD 01:96CD: 17        .byte $17   ; 
- D 0 - I - 0x0056DE 01:96CE: 04        .byte $04   ; 
- D 0 - I - 0x0056DF 01:96CF: 16        .byte $16   ; 
- D 0 - I - 0x0056E0 01:96D0: 04        .byte $04   ; 
- D 0 - I - 0x0056E1 01:96D1: 04        .byte $04   ; 
- D 0 - I - 0x0056E2 01:96D2: 04        .byte $04   ; 
- D 0 - I - 0x0056E3 01:96D3: 04        .byte $04   ; 
- D 0 - I - 0x0056E4 01:96D4: 04        .byte $04   ; 
- D 0 - I - 0x0056E5 01:96D5: 04        .byte $04   ; 
- D 0 - I - 0x0056E6 01:96D6: 04        .byte $04   ; 
- D 0 - I - 0x0056E7 01:96D7: 04        .byte $04   ; 
- D 0 - I - 0x0056E8 01:96D8: 04        .byte $04   ; 
- D 0 - I - 0x0056E9 01:96D9: 04        .byte $04   ; 
- D 0 - I - 0x0056EA 01:96DA: 17        .byte $17   ; 
- D 0 - I - 0x0056EB 01:96DB: 04        .byte $04   ; 
- D 0 - I - 0x0056EC 01:96DC: 04        .byte $04   ; 
off_96DD_0A:
- D 0 - I - 0x0056ED 01:96DD: 04        .byte $04   ; 
- D 0 - I - 0x0056EE 01:96DE: 04        .byte $04   ; 
- D 0 - I - 0x0056EF 01:96DF: 04        .byte $04   ; 
- D 0 - I - 0x0056F0 01:96E0: 04        .byte $04   ; 
- D 0 - I - 0x0056F1 01:96E1: 04        .byte $04   ; 
- D 0 - I - 0x0056F2 01:96E2: 16        .byte $16   ; 
- D 0 - I - 0x0056F3 01:96E3: 04        .byte $04   ; 
- D 0 - I - 0x0056F4 01:96E4: 04        .byte $04   ; 
- D 0 - I - 0x0056F5 01:96E5: 04        .byte $04   ; 
- D 0 - I - 0x0056F6 01:96E6: 16        .byte $16   ; 
- D 0 - I - 0x0056F7 01:96E7: 04        .byte $04   ; 
- D 0 - I - 0x0056F8 01:96E8: 04        .byte $04   ; 
- D 0 - I - 0x0056F9 01:96E9: 04        .byte $04   ; 
- D 0 - I - 0x0056FA 01:96EA: 16        .byte $16   ; 
- D 0 - I - 0x0056FB 01:96EB: 04        .byte $04   ; 
- D 0 - I - 0x0056FC 01:96EC: 89        .byte $89   ; 
- D 0 - I - 0x0056FD 01:96ED: 90        .byte $90   ; 
- D 0 - I - 0x0056FE 01:96EE: 91        .byte $91   ; 
- D 0 - I - 0x0056FF 01:96EF: 04        .byte $04   ; 
- D 0 - I - 0x005700 01:96F0: 04        .byte $04   ; 
- D 0 - I - 0x005701 01:96F1: 04        .byte $04   ; 
- D 0 - I - 0x005702 01:96F2: 04        .byte $04   ; 
- D 0 - I - 0x005703 01:96F3: 04        .byte $04   ; 
- D 0 - I - 0x005704 01:96F4: 04        .byte $04   ; 
- D 0 - I - 0x005705 01:96F5: 61        .byte $61   ; 
- D 0 - I - 0x005706 01:96F6: 6D        .byte $6D   ; 
- D 0 - I - 0x005707 01:96F7: 6D        .byte $6D   ; 
- D 0 - I - 0x005708 01:96F8: 70        .byte $70   ; 
- D 0 - I - 0x005709 01:96F9: 6D        .byte $6D   ; 
- D 0 - I - 0x00570A 01:96FA: 6A        .byte $6A   ; 
- D 0 - I - 0x00570B 01:96FB: 4F        .byte $4F   ; 
- D 0 - I - 0x00570C 01:96FC: 04        .byte $04   ; 
off_96FD_08:
- D 0 - I - 0x00570D 01:96FD: 04        .byte $04   ; 
- D 0 - I - 0x00570E 01:96FE: 04        .byte $04   ; 
- D 0 - I - 0x00570F 01:96FF: 17        .byte $17   ; 
- D 0 - I - 0x005710 01:9700: 04        .byte $04   ; 
- D 0 - I - 0x005711 01:9701: 04        .byte $04   ; 
- D 0 - I - 0x005712 01:9702: 04        .byte $04   ; 
- D 0 - I - 0x005713 01:9703: 04        .byte $04   ; 
- D 0 - I - 0x005714 01:9704: 04        .byte $04   ; 
- D 0 - I - 0x005715 01:9705: 04        .byte $04   ; 
- D 0 - I - 0x005716 01:9706: 04        .byte $04   ; 
- D 0 - I - 0x005717 01:9707: 91        .byte $91   ; 
- D 0 - I - 0x005718 01:9708: 92        .byte $92   ; 
- D 0 - I - 0x005719 01:9709: 93        .byte $93   ; 
- D 0 - I - 0x00571A 01:970A: 04        .byte $04   ; 
- D 0 - I - 0x00571B 01:970B: 04        .byte $04   ; 
- D 0 - I - 0x00571C 01:970C: 04        .byte $04   ; 
- D 0 - I - 0x00571D 01:970D: 04        .byte $04   ; 
- D 0 - I - 0x00571E 01:970E: 04        .byte $04   ; 
- D 0 - I - 0x00571F 01:970F: 16        .byte $16   ; 
- D 0 - I - 0x005720 01:9710: 04        .byte $04   ; 
off_9711_0A:
- D 0 - I - 0x005721 01:9711: 04        .byte $04   ; 
- D 0 - I - 0x005722 01:9712: 04        .byte $04   ; 
- D 0 - I - 0x005723 01:9713: 16        .byte $16   ; 
- D 0 - I - 0x005724 01:9714: 04        .byte $04   ; 
- D 0 - I - 0x005725 01:9715: 04        .byte $04   ; 
- D 0 - I - 0x005726 01:9716: 04        .byte $04   ; 
- D 0 - I - 0x005727 01:9717: 04        .byte $04   ; 
- D 0 - I - 0x005728 01:9718: 17        .byte $17   ; 
- D 0 - I - 0x005729 01:9719: 04        .byte $04   ; 
- D 0 - I - 0x00572A 01:971A: 04        .byte $04   ; 
- D 0 - I - 0x00572B 01:971B: 04        .byte $04   ; 
- D 0 - I - 0x00572C 01:971C: 04        .byte $04   ; 
- D 0 - I - 0x00572D 01:971D: 04        .byte $04   ; 
- D 0 - I - 0x00572E 01:971E: 04        .byte $04   ; 
- D 0 - I - 0x00572F 01:971F: 88        .byte $88   ; 
- D 0 - I - 0x005730 01:9720: 89        .byte $89   ; 
- D 0 - I - 0x005731 01:9721: 8A        .byte $8A   ; 
- D 0 - I - 0x005732 01:9722: 04        .byte $04   ; 
- D 0 - I - 0x005733 01:9723: 04        .byte $04   ; 
- D 0 - I - 0x005734 01:9724: 04        .byte $04   ; 
- D 0 - I - 0x005735 01:9725: 04        .byte $04   ; 
- D 0 - I - 0x005736 01:9726: 04        .byte $04   ; 
- D 0 - I - 0x005737 01:9727: 04        .byte $04   ; 
- D 0 - I - 0x005738 01:9728: 04        .byte $04   ; 
- - - - - - 0x005739 01:9729: 04        .byte $04   ; 
off_972A_0B:
- - - - - - 0x00573A 01:972A: 04        .byte $04   ; 
- - - - - - 0x00573B 01:972B: 04        .byte $04   ; 
- - - - - - 0x00573C 01:972C: 16        .byte $16   ; 
- - - - - - 0x00573D 01:972D: 04        .byte $04   ; 
- - - - - - 0x00573E 01:972E: 04        .byte $04   ; 
- - - - - - 0x00573F 01:972F: 04        .byte $04   ; 
- - - - - - 0x005740 01:9730: 04        .byte $04   ; 
- - - - - - 0x005741 01:9731: 04        .byte $04   ; 
- - - - - - 0x005742 01:9732: 04        .byte $04   ; 
- D 0 - I - 0x005743 01:9733: 17        .byte $17   ; 
- D 0 - I - 0x005744 01:9734: 04        .byte $04   ; 
- D 0 - I - 0x005745 01:9735: 16        .byte $16   ; 
- D 0 - I - 0x005746 01:9736: 04        .byte $04   ; 
- D 0 - I - 0x005747 01:9737: 04        .byte $04   ; 
- D 0 - I - 0x005748 01:9738: 04        .byte $04   ; 
- D 0 - I - 0x005749 01:9739: 04        .byte $04   ; 
- D 0 - I - 0x00574A 01:973A: 04        .byte $04   ; 
- D 0 - I - 0x00574B 01:973B: 04        .byte $04   ; 
- D 0 - I - 0x00574C 01:973C: 2B        .byte $2B   ; 
- D 0 - I - 0x00574D 01:973D: 30        .byte $30   ; 
- D 0 - I - 0x00574E 01:973E: 04        .byte $04   ; 
- D 0 - I - 0x00574F 01:973F: 04        .byte $04   ; 
- D 0 - I - 0x005750 01:9740: 04        .byte $04   ; 
- D 0 - I - 0x005751 01:9741: 17        .byte $17   ; 
- D 0 - I - 0x005752 01:9742: 04        .byte $04   ; 
- D 0 - I - 0x005753 01:9743: 04        .byte $04   ; 
- D 0 - I - 0x005754 01:9744: 04        .byte $04   ; 
- D 0 - I - 0x005755 01:9745: 16        .byte $16   ; 
- D 0 - I - 0x005756 01:9746: 41        .byte $41   ; 
- D 0 - I - 0x005757 01:9747: 55        .byte $55   ; 
- D 0 - I - 0x005758 01:9748: 7F        .byte $7F   ; 
off_9749_03:
- D 0 - I - 0x005759 01:9749: 6D        .byte $6D   ; 
- D 0 - I - 0x00575A 01:974A: 67        .byte $67   ; 
- D 0 - I - 0x00575B 01:974B: 4B        .byte $4B   ; 
- D 0 - I - 0x00575C 01:974C: 04        .byte $04   ; 
- D 0 - I - 0x00575D 01:974D: 04        .byte $04   ; 
- D 0 - I - 0x00575E 01:974E: 04        .byte $04   ; 
- D 0 - I - 0x00575F 01:974F: 04        .byte $04   ; 
- D 0 - I - 0x005760 01:9750: 04        .byte $04   ; 
- D 0 - I - 0x005761 01:9751: 04        .byte $04   ; 
- D 0 - I - 0x005762 01:9752: 04        .byte $04   ; 
- D 0 - I - 0x005763 01:9753: 04        .byte $04   ; 
- D 0 - I - 0x005764 01:9754: 04        .byte $04   ; 
- D 0 - I - 0x005765 01:9755: 04        .byte $04   ; 
- D 0 - I - 0x005766 01:9756: 16        .byte $16   ; 
- D 0 - I - 0x005767 01:9757: 04        .byte $04   ; 
- D 0 - I - 0x005768 01:9758: 04        .byte $04   ; 
- D 0 - I - 0x005769 01:9759: 45        .byte $45   ; 
- D 0 - I - 0x00576A 01:975A: 5B        .byte $5B   ; 
- D 0 - I - 0x00576B 01:975B: 7B        .byte $7B   ; 
- D 0 - I - 0x00576C 01:975C: 70        .byte $70   ; 
- D 0 - I - 0x00576D 01:975D: 6D        .byte $6D   ; 
- D 0 - I - 0x00576E 01:975E: 6D        .byte $6D   ; 
- D 0 - I - 0x00576F 01:975F: 6D        .byte $6D   ; 
- D 0 - I - 0x005770 01:9760: 6D        .byte $6D   ; 
- D 0 - I - 0x005771 01:9761: 70        .byte $70   ; 
- D 0 - I - 0x005772 01:9762: 6A        .byte $6A   ; 
- D 0 - I - 0x005773 01:9763: 04        .byte $04   ; 
- D 0 - I - 0x005774 01:9764: 04        .byte $04   ; 
- D 0 - I - 0x005775 01:9765: 04        .byte $04   ; 
- D 0 - I - 0x005776 01:9766: 04        .byte $04   ; 
- D 0 - I - 0x005777 01:9767: 04        .byte $04   ; 
- D 0 - I - 0x005778 01:9768: 2B        .byte $2B   ; 
off_9769_0C:
- D 0 - I - 0x005779 01:9769: 16        .byte $16   ; 
- D 0 - I - 0x00577A 01:976A: 82        .byte $82   ; 
- D 0 - I - 0x00577B 01:976B: 11        .byte $11   ; 
- D 0 - I - 0x00577C 01:976C: 11        .byte $11   ; 
- D 0 - I - 0x00577D 01:976D: 11        .byte $11   ; 
- D 0 - I - 0x00577E 01:976E: 11        .byte $11   ; 
- D 0 - I - 0x00577F 01:976F: 11        .byte $11   ; 
- D 0 - I - 0x005780 01:9770: 11        .byte $11   ; 
- D 0 - I - 0x005781 01:9771: 11        .byte $11   ; 
- D 0 - I - 0x005782 01:9772: 11        .byte $11   ; 
- D 0 - I - 0x005783 01:9773: 11        .byte $11   ; 
- D 0 - I - 0x005784 01:9774: 11        .byte $11   ; 
- D 0 - I - 0x005785 01:9775: 11        .byte $11   ; 
- D 0 - I - 0x005786 01:9776: 31        .byte $31   ; 
- D 0 - I - 0x005787 01:9777: 04        .byte $04   ; 
- D 0 - I - 0x005788 01:9778: 04        .byte $04   ; 
- D 0 - I - 0x005789 01:9779: 04        .byte $04   ; 
- D 0 - I - 0x00578A 01:977A: 04        .byte $04   ; 
- D 0 - I - 0x00578B 01:977B: 04        .byte $04   ; 
- D 0 - I - 0x00578C 01:977C: 04        .byte $04   ; 
- D 0 - I - 0x00578D 01:977D: 04        .byte $04   ; 
- D 0 - I - 0x00578E 01:977E: 04        .byte $04   ; 
- D 0 - I - 0x00578F 01:977F: 04        .byte $04   ; 
off_9780_0B:
- D 0 - I - 0x005790 01:9780: 04        .byte $04   ; 
- - - - - - 0x005791 01:9781: 04        .byte $04   ; 
- - - - - - 0x005792 01:9782: 16        .byte $16   ; 
- - - - - - 0x005793 01:9783: 04        .byte $04   ; 
- - - - - - 0x005794 01:9784: 04        .byte $04   ; 
- - - - - - 0x005795 01:9785: 04        .byte $04   ; 
- - - - - - 0x005796 01:9786: 04        .byte $04   ; 
- - - - - - 0x005797 01:9787: 04        .byte $04   ; 
- - - - - - 0x005798 01:9788: 04        .byte $04   ; 
- D 0 - I - 0x005799 01:9789: 17        .byte $17   ; 
- D 0 - I - 0x00579A 01:978A: 04        .byte $04   ; 
- D 0 - I - 0x00579B 01:978B: 16        .byte $16   ; 
- D 0 - I - 0x00579C 01:978C: 04        .byte $04   ; 
- D 0 - I - 0x00579D 01:978D: 04        .byte $04   ; 
- D 0 - I - 0x00579E 01:978E: 04        .byte $04   ; 
- D 0 - I - 0x00579F 01:978F: 04        .byte $04   ; 
- D 0 - I - 0x0057A0 01:9790: 04        .byte $04   ; 
- D 0 - I - 0x0057A1 01:9791: 04        .byte $04   ; 
- D 0 - I - 0x0057A2 01:9792: 2B        .byte $2B   ; 
- D 0 - I - 0x0057A3 01:9793: 30        .byte $30   ; 
- D 0 - I - 0x0057A4 01:9794: 04        .byte $04   ; 
- D 0 - I - 0x0057A5 01:9795: 04        .byte $04   ; 
- D 0 - I - 0x0057A6 01:9796: 04        .byte $04   ; 
- D 0 - I - 0x0057A7 01:9797: 17        .byte $17   ; 
- D 0 - I - 0x0057A8 01:9798: 04        .byte $04   ; 
- D 0 - I - 0x0057A9 01:9799: 04        .byte $04   ; 
- D 0 - I - 0x0057AA 01:979A: 61        .byte $61   ; 
- D 0 - I - 0x0057AB 01:979B: 70        .byte $70   ; 
off_979C_0C:
- D 0 - I - 0x0057AC 01:979C: 6D        .byte $6D   ; 
- D 0 - I - 0x0057AD 01:979D: 6D        .byte $6D   ; 
- D 0 - I - 0x0057AE 01:979E: 70        .byte $70   ; 
- D 0 - I - 0x0057AF 01:979F: 6D        .byte $6D   ; 
- D 0 - I - 0x0057B0 01:97A0: 6D        .byte $6D   ; 
- D 0 - I - 0x0057B1 01:97A1: 6A        .byte $6A   ; 
- D 0 - I - 0x0057B2 01:97A2: 4F        .byte $4F   ; 
- D 0 - I - 0x0057B3 01:97A3: 04        .byte $04   ; 
- D 0 - I - 0x0057B4 01:97A4: 04        .byte $04   ; 
- D 0 - I - 0x0057B5 01:97A5: 04        .byte $04   ; 
- D 0 - I - 0x0057B6 01:97A6: 04        .byte $04   ; 
- D 0 - I - 0x0057B7 01:97A7: 04        .byte $04   ; 
- D 0 - I - 0x0057B8 01:97A8: 04        .byte $04   ; 
- D 0 - I - 0x0057B9 01:97A9: 04        .byte $04   ; 
- D 0 - I - 0x0057BA 01:97AA: 04        .byte $04   ; 
- D 0 - I - 0x0057BB 01:97AB: 04        .byte $04   ; 
- D 0 - I - 0x0057BC 01:97AC: 04        .byte $04   ; 
- D 0 - I - 0x0057BD 01:97AD: 04        .byte $04   ; 
- D 0 - I - 0x0057BE 01:97AE: 04        .byte $04   ; 
- D 0 - I - 0x0057BF 01:97AF: 04        .byte $04   ; 
- D 0 - I - 0x0057C0 01:97B0: 04        .byte $04   ; 
- D 0 - I - 0x0057C1 01:97B1: 04        .byte $04   ; 
- D 0 - I - 0x0057C2 01:97B2: 04        .byte $04   ; 
- D 0 - I - 0x0057C3 01:97B3: 04        .byte $04   ; 
- D 0 - I - 0x0057C4 01:97B4: 04        .byte $04   ; 
- D 0 - I - 0x0057C5 01:97B5: 04        .byte $04   ; 
- D 0 - I - 0x0057C6 01:97B6: 04        .byte $04   ; 
- D 0 - I - 0x0057C7 01:97B7: 04        .byte $04   ; 
- D 0 - I - 0x0057C8 01:97B8: 04        .byte $04   ; 
- D 0 - I - 0x0057C9 01:97B9: 04        .byte $04   ; 
- D 0 - I - 0x0057CA 01:97BA: 41        .byte $41   ; 
- D 0 - I - 0x0057CB 01:97BB: 52        .byte $52   ; 
off_97BC_0E:
- D 0 - I - 0x0057CC 01:97BC: 00        .byte $00   ; 
- D 0 - I - 0x0057CD 01:97BD: 24        .byte $24   ; 
- D 0 - I - 0x0057CE 01:97BE: 00        .byte $00   ; 
- D 0 - I - 0x0057CF 01:97BF: 14        .byte $14   ; 
- D 0 - I - 0x0057D0 01:97C0: 00        .byte $00   ; 
- D 0 - I - 0x0057D1 01:97C1: 00        .byte $00   ; 
- D 0 - I - 0x0057D2 01:97C2: 00        .byte $00   ; 
- D 0 - I - 0x0057D3 01:97C3: 00        .byte $00   ; 
- D 0 - I - 0x0057D4 01:97C4: 00        .byte $00   ; 
- D 0 - I - 0x0057D5 01:97C5: 15        .byte $15   ; 
- D 0 - I - 0x0057D6 01:97C6: 00        .byte $00   ; 
- D 0 - I - 0x0057D7 01:97C7: 00        .byte $00   ; 
- D 0 - I - 0x0057D8 01:97C8: 00        .byte $00   ; 
- D 0 - I - 0x0057D9 01:97C9: 23        .byte $23   ; 
- D 0 - I - 0x0057DA 01:97CA: B0        .byte $B0   ; 
- D 0 - I - 0x0057DB 01:97CB: B1        .byte $B1   ; 
- D 0 - I - 0x0057DC 01:97CC: B2        .byte $B2   ; 
- D 0 - I - 0x0057DD 01:97CD: B3        .byte $B3   ; 
- D 0 - I - 0x0057DE 01:97CE: B4        .byte $B4   ; 
- D 0 - I - 0x0057DF 01:97CF: 00        .byte $00   ; 
- D 0 - I - 0x0057E0 01:97D0: 00        .byte $00   ; 
- D 0 - I - 0x0057E1 01:97D1: 00        .byte $00   ; 
- D 0 - I - 0x0057E2 01:97D2: 00        .byte $00   ; 
- D 0 - I - 0x0057E3 01:97D3: 00        .byte $00   ; 
- - - - - - 0x0057E4 01:97D4: 00        .byte $00   ; 
- - - - - - 0x0057E5 01:97D5: 00        .byte $00   ; 
- - - - - - 0x0057E6 01:97D6: 15        .byte $15   ; 
- - - - - - 0x0057E7 01:97D7: 00        .byte $00   ; 
- - - - - - 0x0057E8 01:97D8: 15        .byte $15   ; 
- - - - - - 0x0057E9 01:97D9: 00        .byte $00   ; 
- - - - - - 0x0057EA 01:97DA: 00        .byte $00   ; 
- - - - - - 0x0057EB 01:97DB: 00        .byte $00   ; 
off_97DC_0F:
- D 0 - I - 0x0057EC 01:97DC: 04        .byte $04   ; 
- D 0 - I - 0x0057ED 01:97DD: 35        .byte $35   ; 
- D 0 - I - 0x0057EE 01:97DE: 04        .byte $04   ; 
- D 0 - I - 0x0057EF 01:97DF: 04        .byte $04   ; 
- D 0 - I - 0x0057F0 01:97E0: 04        .byte $04   ; 
- D 0 - I - 0x0057F1 01:97E1: 04        .byte $04   ; 
- D 0 - I - 0x0057F2 01:97E2: 04        .byte $04   ; 
- D 0 - I - 0x0057F3 01:97E3: 04        .byte $04   ; 
- D 0 - I - 0x0057F4 01:97E4: 04        .byte $04   ; 
- D 0 - I - 0x0057F5 01:97E5: 04        .byte $04   ; 
- D 0 - I - 0x0057F6 01:97E6: 04        .byte $04   ; 
- D 0 - I - 0x0057F7 01:97E7: 04        .byte $04   ; 
- D 0 - I - 0x0057F8 01:97E8: 04        .byte $04   ; 
- D 0 - I - 0x0057F9 01:97E9: 34        .byte $34   ; 
- D 0 - I - 0x0057FA 01:97EA: C0        .byte $C0   ; 
- D 0 - I - 0x0057FB 01:97EB: C1        .byte $C1   ; 
- D 0 - I - 0x0057FC 01:97EC: C2        .byte $C2   ; 
- D 0 - I - 0x0057FD 01:97ED: C3        .byte $C3   ; 
- D 0 - I - 0x0057FE 01:97EE: C4        .byte $C4   ; 
- D 0 - I - 0x0057FF 01:97EF: 04        .byte $04   ; 
- D 0 - I - 0x005800 01:97F0: 04        .byte $04   ; 
- D 0 - I - 0x005801 01:97F1: 04        .byte $04   ; 
- D 0 - I - 0x005802 01:97F2: 17        .byte $17   ; 
- D 0 - I - 0x005803 01:97F3: 04        .byte $04   ; 
- - - - - - 0x005804 01:97F4: 04        .byte $04   ; 
- - - - - - 0x005805 01:97F5: 04        .byte $04   ; 
off_97F6_0B:
- D 0 - I - 0x005806 01:97F6: 04        .byte $04   ; 
- D 0 - I - 0x005807 01:97F7: 04        .byte $04   ; 
- D 0 - I - 0x005808 01:97F8: 04        .byte $04   ; 
- D 0 - I - 0x005809 01:97F9: 16        .byte $16   ; 
- D 0 - I - 0x00580A 01:97FA: 04        .byte $04   ; 
- D 0 - I - 0x00580B 01:97FB: 04        .byte $04   ; 
- D 0 - I - 0x00580C 01:97FC: 17        .byte $17   ; 
- D 0 - I - 0x00580D 01:97FD: 04        .byte $04   ; 
- D 0 - I - 0x00580E 01:97FE: 04        .byte $04   ; 
- D 0 - I - 0x00580F 01:97FF: 04        .byte $04   ; 
- D 0 - I - 0x005810 01:9800: 04        .byte $04   ; 
- D 0 - I - 0x005811 01:9801: 04        .byte $04   ; 
- D 0 - I - 0x005812 01:9802: 37        .byte $37   ; 
- D 0 - I - 0x005813 01:9803: 2C        .byte $2C   ; 
- D 0 - I - 0x005814 01:9804: 04        .byte $04   ; 
- D 0 - I - 0x005815 01:9805: 04        .byte $04   ; 
- D 0 - I - 0x005816 01:9806: 16        .byte $16   ; 
- D 0 - I - 0x005817 01:9807: 04        .byte $04   ; 
- D 0 - I - 0x005818 01:9808: 04        .byte $04   ; 
- D 0 - I - 0x005819 01:9809: 04        .byte $04   ; 
- D 0 - I - 0x00581A 01:980A: 17        .byte $17   ; 
- D 0 - I - 0x00581B 01:980B: 04        .byte $04   ; 
- D 0 - I - 0x00581C 01:980C: 04        .byte $04   ; 
- D 0 - I - 0x00581D 01:980D: 04        .byte $04   ; 
- - - - - - 0x00581E 01:980E: 04        .byte $04   ; 
- - - - - - 0x00581F 01:980F: 04        .byte $04   ; 
- - - - - - 0x005820 01:9810: 04        .byte $04   ; 
- - - - - - 0x005821 01:9811: 04        .byte $04   ; 
- - - - - - 0x005822 01:9812: 04        .byte $04   ; 
- - - - - - 0x005823 01:9813: 16        .byte $16   ; 
- - - - - - 0x005824 01:9814: 04        .byte $04   ; 
- - - - - - 0x005825 01:9815: 04        .byte $04   ; 
off_9816_05:
- - - - - - 0x005826 01:9816: 04        .byte $04   ; 
- - - - - - 0x005827 01:9817: 04        .byte $04   ; 
- - - - - - 0x005828 01:9818: 04        .byte $04   ; 
- - - - - - 0x005829 01:9819: 04        .byte $04   ; 
- - - - - - 0x00582A 01:981A: 04        .byte $04   ; 
- - - - - - 0x00582B 01:981B: 04        .byte $04   ; 
- - - - - - 0x00582C 01:981C: 04        .byte $04   ; 
- - - - - - 0x00582D 01:981D: 17        .byte $17   ; 
- - - - - - 0x00582E 01:981E: 04        .byte $04   ; 
- D 0 - I - 0x00582F 01:981F: 16        .byte $16   ; 
- D 0 - I - 0x005830 01:9820: 16        .byte $16   ; 
- D 0 - I - 0x005831 01:9821: 04        .byte $04   ; 
- D 0 - I - 0x005832 01:9822: 04        .byte $04   ; 
- D 0 - I - 0x005833 01:9823: 04        .byte $04   ; 
- D 0 - I - 0x005834 01:9824: 04        .byte $04   ; 
- D 0 - I - 0x005835 01:9825: 2B        .byte $2B   ; 
- D 0 - I - 0x005836 01:9826: 30        .byte $30   ; 
- D 0 - I - 0x005837 01:9827: 04        .byte $04   ; 
- D 0 - I - 0x005838 01:9828: 04        .byte $04   ; 
- D 0 - I - 0x005839 01:9829: 04        .byte $04   ; 
- D 0 - I - 0x00583A 01:982A: 04        .byte $04   ; 
- D 0 - I - 0x00583B 01:982B: 04        .byte $04   ; 
- D 0 - I - 0x00583C 01:982C: 04        .byte $04   ; 
- D 0 - I - 0x00583D 01:982D: 16        .byte $16   ; 
- D 0 - I - 0x00583E 01:982E: 04        .byte $04   ; 
- D 0 - I - 0x00583F 01:982F: 04        .byte $04   ; 
off_9830_10:
- D 0 - I - 0x005840 01:9830: 04        .byte $04   ; 
- D 0 - I - 0x005841 01:9831: 36        .byte $36   ; 
- D 0 - I - 0x005842 01:9832: 04        .byte $04   ; 
- D 0 - I - 0x005843 01:9833: 04        .byte $04   ; 
- D 0 - I - 0x005844 01:9834: 04        .byte $04   ; 
- D 0 - I - 0x005845 01:9835: 04        .byte $04   ; 
- D 0 - I - 0x005846 01:9836: 04        .byte $04   ; 
- D 0 - I - 0x005847 01:9837: 04        .byte $04   ; 
- D 0 - I - 0x005848 01:9838: 04        .byte $04   ; 
- D 0 - I - 0x005849 01:9839: 04        .byte $04   ; 
- D 0 - I - 0x00584A 01:983A: 04        .byte $04   ; 
- D 0 - I - 0x00584B 01:983B: 16        .byte $16   ; 
- D 0 - I - 0x00584C 01:983C: 04        .byte $04   ; 
- D 0 - I - 0x00584D 01:983D: 35        .byte $35   ; 
- D 0 - I - 0x00584E 01:983E: D0        .byte $D0   ; 
- D 0 - I - 0x00584F 01:983F: D1        .byte $D1   ; 
- D 0 - I - 0x005850 01:9840: D2        .byte $D2   ; 
- D 0 - I - 0x005851 01:9841: D3        .byte $D3   ; 
- D 0 - I - 0x005852 01:9842: D4        .byte $D4   ; 
- D 0 - I - 0x005853 01:9843: 04        .byte $04   ; 
- D 0 - I - 0x005854 01:9844: 04        .byte $04   ; 
- D 0 - I - 0x005855 01:9845: 04        .byte $04   ; 
- D 0 - I - 0x005856 01:9846: 04        .byte $04   ; 
- D 0 - I - 0x005857 01:9847: 04        .byte $04   ; 
- - - - - - 0x005858 01:9848: 16        .byte $16   ; 
- - - - - - 0x005859 01:9849: 04        .byte $04   ; 
- - - - - - 0x00585A 01:984A: 04        .byte $04   ; 
- - - - - - 0x00585B 01:984B: 04        .byte $04   ; 
- - - - - - 0x00585C 01:984C: 04        .byte $04   ; 
- - - - - - 0x00585D 01:984D: 04        .byte $04   ; 
- - - - - - 0x00585E 01:984E: 04        .byte $04   ; 
- - - - - - 0x00585F 01:984F: 04        .byte $04   ; 
off_9850_06:
- - - - - - 0x005860 01:9850: 00        .byte $00   ; 
- - - - - - 0x005861 01:9851: 00        .byte $00   ; 
- - - - - - 0x005862 01:9852: 00        .byte $00   ; 
- - - - - - 0x005863 01:9853: 00        .byte $00   ; 
- - - - - - 0x005864 01:9854: 00        .byte $00   ; 
- - - - - - 0x005865 01:9855: 00        .byte $00   ; 
- - - - - - 0x005866 01:9856: 00        .byte $00   ; 
- - - - - - 0x005867 01:9857: 00        .byte $00   ; 
- - - - - - 0x005868 01:9858: 00        .byte $00   ; 
- D 0 - I - 0x005869 01:9859: 00        .byte $00   ; 
- D 0 - I - 0x00586A 01:985A: 00        .byte $00   ; 
- D 0 - I - 0x00586B 01:985B: 00        .byte $00   ; 
- D 0 - I - 0x00586C 01:985C: 00        .byte $00   ; 
- D 0 - I - 0x00586D 01:985D: 00        .byte $00   ; 
- D 0 - I - 0x00586E 01:985E: 00        .byte $00   ; 
- D 0 - I - 0x00586F 01:985F: 26        .byte $26   ; 
- D 0 - I - 0x005870 01:9860: 12        .byte $12   ; 
- D 0 - I - 0x005871 01:9861: 12        .byte $12   ; 
- D 0 - I - 0x005872 01:9862: 12        .byte $12   ; 
- D 0 - I - 0x005873 01:9863: 12        .byte $12   ; 
- D 0 - I - 0x005874 01:9864: 12        .byte $12   ; 
- D 0 - I - 0x005875 01:9865: 12        .byte $12   ; 
- D 0 - I - 0x005876 01:9866: 12        .byte $12   ; 
- D 0 - I - 0x005877 01:9867: 12        .byte $12   ; 
- D 0 - I - 0x005878 01:9868: 12        .byte $12   ; 
- D 0 - I - 0x005879 01:9869: 12        .byte $12   ; 
- D 0 - I - 0x00587A 01:986A: 12        .byte $12   ; 
- D 0 - I - 0x00587B 01:986B: 8C        .byte $8C   ; 
- D 0 - I - 0x00587C 01:986C: 00        .byte $00   ; 
- D 0 - I - 0x00587D 01:986D: 00        .byte $00   ; 
- D 0 - I - 0x00587E 01:986E: 00        .byte $00   ; 
- D 0 - I - 0x00587F 01:986F: 00        .byte $00   ; 
off_9870_08:
- - - - - - 0x005880 01:9870: 00        .byte $00   ; 
- - - - - - 0x005881 01:9871: 00        .byte $00   ; 
- - - - - - 0x005882 01:9872: 00        .byte $00   ; 
- - - - - - 0x005883 01:9873: 00        .byte $00   ; 
- - - - - - 0x005884 01:9874: 00        .byte $00   ; 
- - - - - - 0x005885 01:9875: 00        .byte $00   ; 
- - - - - - 0x005886 01:9876: 00        .byte $00   ; 
- - - - - - 0x005887 01:9877: 00        .byte $00   ; 
- - - - - - 0x005888 01:9878: 00        .byte $00   ; 
- D 0 - I - 0x005889 01:9879: 00        .byte $00   ; 
- D 0 - I - 0x00588A 01:987A: 00        .byte $00   ; 
- D 0 - I - 0x00588B 01:987B: 00        .byte $00   ; 
- D 0 - I - 0x00588C 01:987C: 00        .byte $00   ; 
- D 0 - I - 0x00588D 01:987D: 00        .byte $00   ; 
- D 0 - I - 0x00588E 01:987E: 00        .byte $00   ; 
- D 0 - I - 0x00588F 01:987F: 24        .byte $24   ; 
- D 0 - I - 0x005890 01:9880: 00        .byte $00   ; 
- D 0 - I - 0x005891 01:9881: 00        .byte $00   ; 
- D 0 - I - 0x005892 01:9882: 00        .byte $00   ; 
- D 0 - I - 0x005893 01:9883: 14        .byte $14   ; 
- D 0 - I - 0x005894 01:9884: 00        .byte $00   ; 
off_9885_0D:
- D 0 - I - 0x005895 01:9885: 00        .byte $00   ; 
- D 0 - I - 0x005896 01:9886: 00        .byte $00   ; 
- D 0 - I - 0x005897 01:9887: 00        .byte $00   ; 
- D 0 - I - 0x005898 01:9888: 00        .byte $00   ; 
- D 0 - I - 0x005899 01:9889: 00        .byte $00   ; 
- D 0 - I - 0x00589A 01:988A: 00        .byte $00   ; 
- D 0 - I - 0x00589B 01:988B: 00        .byte $00   ; 
- D 0 - I - 0x00589C 01:988C: 14        .byte $14   ; 
- D 0 - I - 0x00589D 01:988D: 00        .byte $00   ; 
- D 0 - I - 0x00589E 01:988E: 00        .byte $00   ; 
- D 0 - I - 0x00589F 01:988F: 00        .byte $00   ; 
- D 0 - I - 0x0058A0 01:9890: 00        .byte $00   ; 
- D 0 - I - 0x0058A1 01:9891: 00        .byte $00   ; 
- D 0 - I - 0x0058A2 01:9892: 00        .byte $00   ; 
- D 0 - I - 0x0058A3 01:9893: A1        .byte $A1   ; 
- D 0 - I - 0x0058A4 01:9894: A2        .byte $A2   ; 
- D 0 - I - 0x0058A5 01:9895: A3        .byte $A3   ; 
- D 0 - I - 0x0058A6 01:9896: A4        .byte $A4   ; 
- D 0 - I - 0x0058A7 01:9897: 25        .byte $25   ; 
- D 0 - I - 0x0058A8 01:9898: 00        .byte $00   ; 
- D 0 - I - 0x0058A9 01:9899: 00        .byte $00   ; 
- D 0 - I - 0x0058AA 01:989A: 00        .byte $00   ; 
- D 0 - I - 0x0058AB 01:989B: 00        .byte $00   ; 
- D 0 - I - 0x0058AC 01:989C: 00        .byte $00   ; 
- D 0 - I - 0x0058AD 01:989D: 00        .byte $00   ; 
- D 0 - I - 0x0058AE 01:989E: 00        .byte $00   ; 
- D 0 - I - 0x0058AF 01:989F: 00        .byte $00   ; 
- D 0 - I - 0x0058B0 01:98A0: 14        .byte $14   ; 
- D 0 - I - 0x0058B1 01:98A1: 00        .byte $00   ; 
- D 0 - I - 0x0058B2 01:98A2: 14        .byte $14   ; 
- D 0 - I - 0x0058B3 01:98A3: 24        .byte $24   ; 
- D 0 - I - 0x0058B4 01:98A4: 00        .byte $00   ; 
off_98A5_0C:
- - - - - - 0x0058B5 01:98A5: 00        .byte $00   ; 
- - - - - - 0x0058B6 01:98A6: 00        .byte $00   ; 
- - - - - - 0x0058B7 01:98A7: 00        .byte $00   ; 
- - - - - - 0x0058B8 01:98A8: 00        .byte $00   ; 
- - - - - - 0x0058B9 01:98A9: 00        .byte $00   ; 
- - - - - - 0x0058BA 01:98AA: 00        .byte $00   ; 
- - - - - - 0x0058BB 01:98AB: 00        .byte $00   ; 
- - - - - - 0x0058BC 01:98AC: 00        .byte $00   ; 
- - - - - - 0x0058BD 01:98AD: 00        .byte $00   ; 
- D 0 - I - 0x0058BE 01:98AE: 00        .byte $00   ; 
- D 0 - I - 0x0058BF 01:98AF: 00        .byte $00   ; 
- D 0 - I - 0x0058C0 01:98B0: 00        .byte $00   ; 
- D 0 - I - 0x0058C1 01:98B1: 00        .byte $00   ; 
- D 0 - I - 0x0058C2 01:98B2: 00        .byte $00   ; 
- D 0 - I - 0x0058C3 01:98B3: 27        .byte $27   ; 
- D 0 - I - 0x0058C4 01:98B4: 1C        .byte $1C   ; 
- D 0 - I - 0x0058C5 01:98B5: 00        .byte $00   ; 
- D 0 - I - 0x0058C6 01:98B6: 93        .byte $93   ; 
- D 0 - I - 0x0058C7 01:98B7: 94        .byte $94   ; 
- D 0 - I - 0x0058C8 01:98B8: 00        .byte $00   ; 
- D 0 - I - 0x0058C9 01:98B9: 00        .byte $00   ; 
- D 0 - I - 0x0058CA 01:98BA: 00        .byte $00   ; 
- D 0 - I - 0x0058CB 01:98BB: 00        .byte $00   ; 
- D 0 - I - 0x0058CC 01:98BC: 00        .byte $00   ; 
- D 0 - I - 0x0058CD 01:98BD: 00        .byte $00   ; 
- D 0 - I - 0x0058CE 01:98BE: 00        .byte $00   ; 
- D 0 - I - 0x0058CF 01:98BF: 00        .byte $00   ; 
- D 0 - I - 0x0058D0 01:98C0: 00        .byte $00   ; 
- D 0 - I - 0x0058D1 01:98C1: 00        .byte $00   ; 
- D 0 - I - 0x0058D2 01:98C2: 00        .byte $00   ; 
- D 0 - I - 0x0058D3 01:98C3: 00        .byte $00   ; 
- D 0 - I - 0x0058D4 01:98C4: 00        .byte $00   ; 
off_98C5_0D:
- - - - - - 0x0058D5 01:98C5: 00        .byte $00   ; 
- - - - - - 0x0058D6 01:98C6: 00        .byte $00   ; 
- - - - - - 0x0058D7 01:98C7: 00        .byte $00   ; 
- - - - - - 0x0058D8 01:98C8: 00        .byte $00   ; 
- - - - - - 0x0058D9 01:98C9: 00        .byte $00   ; 
- - - - - - 0x0058DA 01:98CA: 00        .byte $00   ; 
- - - - - - 0x0058DB 01:98CB: 00        .byte $00   ; 
- - - - - - 0x0058DC 01:98CC: 00        .byte $00   ; 
- - - - - - 0x0058DD 01:98CD: 00        .byte $00   ; 
- D 0 - I - 0x0058DE 01:98CE: 14        .byte $14   ; 
- D 0 - I - 0x0058DF 01:98CF: 00        .byte $00   ; 
- D 0 - I - 0x0058E0 01:98D0: 00        .byte $00   ; 
- D 0 - I - 0x0058E1 01:98D1: 14        .byte $14   ; 
- D 0 - I - 0x0058E2 01:98D2: 00        .byte $00   ; 
- D 0 - I - 0x0058E3 01:98D3: 8D        .byte $8D   ; 
off_98D4_0D:
- D 0 - I - 0x0058E4 01:98D4: 12        .byte $12   ; 
- D 0 - I - 0x0058E5 01:98D5: 12        .byte $12   ; 
- D 0 - I - 0x0058E6 01:98D6: 12        .byte $12   ; 
- D 0 - I - 0x0058E7 01:98D7: 12        .byte $12   ; 
- D 0 - I - 0x0058E8 01:98D8: 12        .byte $12   ; 
- D 0 - I - 0x0058E9 01:98D9: 12        .byte $12   ; 
off_98DA_0D:
- D 0 - I - 0x0058EA 01:98DA: 12        .byte $12   ; 
- D 0 - I - 0x0058EB 01:98DB: 12        .byte $12   ; 
- D 0 - I - 0x0058EC 01:98DC: 12        .byte $12   ; 
- D 0 - I - 0x0058ED 01:98DD: 12        .byte $12   ; 
- D 0 - I - 0x0058EE 01:98DE: 12        .byte $12   ; 
- D 0 - I - 0x0058EF 01:98DF: 12        .byte $12   ; 
- D 0 - I - 0x0058F0 01:98E0: 12        .byte $12   ; 
- D 0 - I - 0x0058F1 01:98E1: 12        .byte $12   ; 
- D 0 - I - 0x0058F2 01:98E2: 12        .byte $12   ; 
- D 0 - I - 0x0058F3 01:98E3: 12        .byte $12   ; 
- D 0 - I - 0x0058F4 01:98E4: 12        .byte $12   ; 
- D 0 - I - 0x0058F5 01:98E5: 12        .byte $12   ; 
- D 0 - I - 0x0058F6 01:98E6: 12        .byte $12   ; 
- D 0 - I - 0x0058F7 01:98E7: 12        .byte $12   ; 
- D 0 - I - 0x0058F8 01:98E8: 12        .byte $12   ; 
- D 0 - I - 0x0058F9 01:98E9: 12        .byte $12   ; 
- D 0 - I - 0x0058FA 01:98EA: 12        .byte $12   ; 
- D 0 - I - 0x0058FB 01:98EB: 12        .byte $12   ; 
- D 0 - I - 0x0058FC 01:98EC: 12        .byte $12   ; 
- D 0 - I - 0x0058FD 01:98ED: 12        .byte $12   ; 
- D 0 - I - 0x0058FE 01:98EE: 12        .byte $12   ; 
- D 0 - I - 0x0058FF 01:98EF: 12        .byte $12   ; 
- D 0 - I - 0x005900 01:98F0: 12        .byte $12   ; 
- D 0 - I - 0x005901 01:98F1: 12        .byte $12   ; 
- D 0 - I - 0x005902 01:98F2: 12        .byte $12   ; 
- D 0 - I - 0x005903 01:98F3: 12        .byte $12   ; 
- D 0 - I - 0x005904 01:98F4: 63        .byte $63   ; 
- D 0 - I - 0x005905 01:98F5: 77        .byte $77   ; 
- D 0 - I - 0x005906 01:98F6: 77        .byte $77   ; 
- D 0 - I - 0x005907 01:98F7: 65        .byte $65   ; 
- D 0 - I - 0x005908 01:98F8: 12        .byte $12   ; 
- D 0 - I - 0x005909 01:98F9: 12        .byte $12   ; 
off_98FA_0E:
- - - - - - 0x00590A 01:98FA: 00        .byte $00   ; 
- - - - - - 0x00590B 01:98FB: 00        .byte $00   ; 
- - - - - - 0x00590C 01:98FC: 00        .byte $00   ; 
- - - - - - 0x00590D 01:98FD: 00        .byte $00   ; 
- - - - - - 0x00590E 01:98FE: 00        .byte $00   ; 
- - - - - - 0x00590F 01:98FF: 00        .byte $00   ; 
- - - - - - 0x005910 01:9900: 00        .byte $00   ; 
- - - - - - 0x005911 01:9901: 00        .byte $00   ; 
- - - - - - 0x005912 01:9902: 00        .byte $00   ; 
- D 0 - I - 0x005913 01:9903: 00        .byte $00   ; 
- D 0 - I - 0x005914 01:9904: 00        .byte $00   ; 
- D 0 - I - 0x005915 01:9905: 00        .byte $00   ; 
- D 0 - I - 0x005916 01:9906: 00        .byte $00   ; 
- D 0 - I - 0x005917 01:9907: 00        .byte $00   ; 
- D 0 - I - 0x005918 01:9908: 00        .byte $00   ; 
- D 0 - I - 0x005919 01:9909: 00        .byte $00   ; 
- D 0 - I - 0x00591A 01:990A: 00        .byte $00   ; 
- D 0 - I - 0x00591B 01:990B: 14        .byte $14   ; 
- D 0 - I - 0x00591C 01:990C: 00        .byte $00   ; 
- D 0 - I - 0x00591D 01:990D: 00        .byte $00   ; 
- D 0 - I - 0x00591E 01:990E: 00        .byte $00   ; 
- D 0 - I - 0x00591F 01:990F: 00        .byte $00   ; 
- D 0 - I - 0x005920 01:9910: 00        .byte $00   ; 
- D 0 - I - 0x005921 01:9911: 00        .byte $00   ; 
- D 0 - I - 0x005922 01:9912: 14        .byte $14   ; 
- D 0 - I - 0x005923 01:9913: 00        .byte $00   ; 
- D 0 - I - 0x005924 01:9914: 00        .byte $00   ; 
off_9915_0F:
- D 0 - I - 0x005925 01:9915: 00        .byte $00   ; 
- D 0 - I - 0x005926 01:9916: 00        .byte $00   ; 
- D 0 - I - 0x005927 01:9917: 15        .byte $15   ; 
- D 0 - I - 0x005928 01:9918: 00        .byte $00   ; 
- D 0 - I - 0x005929 01:9919: 00        .byte $00   ; 
- D 0 - I - 0x00592A 01:991A: 00        .byte $00   ; 
- D 0 - I - 0x00592B 01:991B: 00        .byte $00   ; 
- D 0 - I - 0x00592C 01:991C: 00        .byte $00   ; 
- D 0 - I - 0x00592D 01:991D: 14        .byte $14   ; 
- D 0 - I - 0x00592E 01:991E: 00        .byte $00   ; 
- D 0 - I - 0x00592F 01:991F: 00        .byte $00   ; 
- D 0 - I - 0x005930 01:9920: 00        .byte $00   ; 
- D 0 - I - 0x005931 01:9921: 00        .byte $00   ; 
- D 0 - I - 0x005932 01:9922: 00        .byte $00   ; 
- D 0 - I - 0x005933 01:9923: 00        .byte $00   ; 
- D 0 - I - 0x005934 01:9924: 00        .byte $00   ; 
- D 0 - I - 0x005935 01:9925: 14        .byte $14   ; 
- D 0 - I - 0x005936 01:9926: 00        .byte $00   ; 
- D 0 - I - 0x005937 01:9927: 00        .byte $00   ; 
- D 0 - I - 0x005938 01:9928: 00        .byte $00   ; 
- D 0 - I - 0x005939 01:9929: 14        .byte $14   ; 
- D 0 - I - 0x00593A 01:992A: 00        .byte $00   ; 
- D 0 - I - 0x00593B 01:992B: 00        .byte $00   ; 
- D 0 - I - 0x00593C 01:992C: 00        .byte $00   ; 
- D 0 - I - 0x00593D 01:992D: 00        .byte $00   ; 
- D 0 - I - 0x00593E 01:992E: 00        .byte $00   ; 
- D 0 - I - 0x00593F 01:992F: 15        .byte $15   ; 
- D 0 - I - 0x005940 01:9930: 00        .byte $00   ; 
- D 0 - I - 0x005941 01:9931: 00        .byte $00   ; 
- D 0 - I - 0x005942 01:9932: 00        .byte $00   ; 
- D 0 - I - 0x005943 01:9933: 00        .byte $00   ; 
- D 0 - I - 0x005944 01:9934: 14        .byte $14   ; 
off_9935_10:
off_9935_11:
off_9935_12:
off_9935_13:
off_9935_14:
off_9935_15:
off_9935_16:
off_9935_17:
off_9935_18:
off_9935_19:
off_9935_1A:
off_9935_1B:
off_9935_1C:
off_9935_1D:
- - - - - - 0x005945 01:9935: 02        .byte $02   ; 
- - - - - - 0x005946 01:9936: 02        .byte $02   ; 
- - - - - - 0x005947 01:9937: 02        .byte $02   ; 
- D 0 - I - 0x005948 01:9938: 02        .byte $02   ; 
- - - - - - 0x005949 01:9939: 02        .byte $02   ; 
- - - - - - 0x00594A 01:993A: 02        .byte $02   ; 
- - - - - - 0x00594B 01:993B: 02        .byte $02   ; 
- - - - - - 0x00594C 01:993C: 02        .byte $02   ; 
- - - - - - 0x00594D 01:993D: 02        .byte $02   ; 
- - - - - - 0x00594E 01:993E: 02        .byte $02   ; 
- - - - - - 0x00594F 01:993F: 02        .byte $02   ; 
- D 0 - I - 0x005950 01:9940: 02        .byte $02   ; 
- D 0 - I - 0x005951 01:9941: 02        .byte $02   ; 
- D 0 - I - 0x005952 01:9942: 02        .byte $02   ; 
- D 0 - I - 0x005953 01:9943: 02        .byte $02   ; 
- D 0 - I - 0x005954 01:9944: 02        .byte $02   ; 
- D 0 - I - 0x005955 01:9945: 02        .byte $02   ; 
- D 0 - I - 0x005956 01:9946: 02        .byte $02   ; 
- D 0 - I - 0x005957 01:9947: 02        .byte $02   ; 
- D 0 - I - 0x005958 01:9948: 02        .byte $02   ; 
- D 0 - I - 0x005959 01:9949: 02        .byte $02   ; 
- D 0 - I - 0x00595A 01:994A: 02        .byte $02   ; 
- D 0 - I - 0x00595B 01:994B: 02        .byte $02   ; 
- D 0 - I - 0x00595C 01:994C: 02        .byte $02   ; 
- D 0 - I - 0x00595D 01:994D: 02        .byte $02   ; 
- D 0 - I - 0x00595E 01:994E: 02        .byte $02   ; 
- D 0 - I - 0x00595F 01:994F: 02        .byte $02   ; 
- D 0 - I - 0x005960 01:9950: 02        .byte $02   ; 
- D 0 - I - 0x005961 01:9951: 02        .byte $02   ; 
- D 0 - I - 0x005962 01:9952: 02        .byte $02   ; 
- D 0 - I - 0x005963 01:9953: 02        .byte $02   ; 
- - - - - - 0x005964 01:9954: 02        .byte $02   ; 
off_9955_00:
- D 0 - I - 0x005965 01:9955: 00        .byte $00   ; 
- D 0 - I - 0x005966 01:9956: 00        .byte $00   ; 
- D 0 - I - 0x005967 01:9957: 00        .byte $00   ; 
- D 0 - I - 0x005968 01:9958: 00        .byte $00   ; 
- D 0 - I - 0x005969 01:9959: 00        .byte $00   ; 
- D 0 - I - 0x00596A 01:995A: 00        .byte $00   ; 
- D 0 - I - 0x00596B 01:995B: 00        .byte $00   ; 
- D 0 - I - 0x00596C 01:995C: 00        .byte $00   ; 
- D 0 - I - 0x00596D 01:995D: 00        .byte $00   ; 
- D 0 - I - 0x00596E 01:995E: 00        .byte $00   ; 
- D 0 - I - 0x00596F 01:995F: 00        .byte $00   ; 
- D 0 - I - 0x005970 01:9960: 00        .byte $00   ; 
- D 0 - I - 0x005971 01:9961: 00        .byte $00   ; 
- D 0 - I - 0x005972 01:9962: 00        .byte $00   ; 
- D 0 - I - 0x005973 01:9963: 00        .byte $00   ; 
- D 0 - I - 0x005974 01:9964: 14        .byte $14   ; 
- D 0 - I - 0x005975 01:9965: 00        .byte $00   ; 
- D 0 - I - 0x005976 01:9966: 00        .byte $00   ; 
- D 0 - I - 0x005977 01:9967: 00        .byte $00   ; 
- D 0 - I - 0x005978 01:9968: 00        .byte $00   ; 
- D 0 - I - 0x005979 01:9969: 00        .byte $00   ; 
- D 0 - I - 0x00597A 01:996A: 14        .byte $14   ; 
- D 0 - I - 0x00597B 01:996B: 00        .byte $00   ; 
- D 0 - I - 0x00597C 01:996C: 00        .byte $00   ; 
- D 0 - I - 0x00597D 01:996D: 00        .byte $00   ; 
- D 0 - I - 0x00597E 01:996E: 00        .byte $00   ; 
- D 0 - I - 0x00597F 01:996F: 00        .byte $00   ; 
- D 0 - I - 0x005980 01:9970: 00        .byte $00   ; 
- D 0 - I - 0x005981 01:9971: 14        .byte $14   ; 
- D 0 - I - 0x005982 01:9972: 00        .byte $00   ; 
- D 0 - I - 0x005983 01:9973: 00        .byte $00   ; 
- D 0 - I - 0x005984 01:9974: 1B        .byte $1B   ; 
off_9975_06:
- D 0 - I - 0x005985 01:9975: 00        .byte $00   ; 
- D 0 - I - 0x005986 01:9976: 00        .byte $00   ; 
- D 0 - I - 0x005987 01:9977: 00        .byte $00   ; 
- D 0 - I - 0x005988 01:9978: 00        .byte $00   ; 
- D 0 - I - 0x005989 01:9979: 00        .byte $00   ; 
- D 0 - I - 0x00598A 01:997A: 00        .byte $00   ; 
- D 0 - I - 0x00598B 01:997B: 00        .byte $00   ; 
- D 0 - I - 0x00598C 01:997C: 00        .byte $00   ; 
- D 0 - I - 0x00598D 01:997D: 00        .byte $00   ; 
- D 0 - I - 0x00598E 01:997E: 00        .byte $00   ; 
- D 0 - I - 0x00598F 01:997F: 00        .byte $00   ; 
- D 0 - I - 0x005990 01:9980: 00        .byte $00   ; 
- D 0 - I - 0x005991 01:9981: 00        .byte $00   ; 
- D 0 - I - 0x005992 01:9982: 00        .byte $00   ; 
- D 0 - I - 0x005993 01:9983: 00        .byte $00   ; 
- D 0 - I - 0x005994 01:9984: 14        .byte $14   ; 
- D 0 - I - 0x005995 01:9985: 00        .byte $00   ; 
- D 0 - I - 0x005996 01:9986: 00        .byte $00   ; 
- D 0 - I - 0x005997 01:9987: 00        .byte $00   ; 
- D 0 - I - 0x005998 01:9988: 00        .byte $00   ; 
- D 0 - I - 0x005999 01:9989: 00        .byte $00   ; 
- D 0 - I - 0x00599A 01:998A: 00        .byte $00   ; 
- D 0 - I - 0x00599B 01:998B: 15        .byte $15   ; 
- D 0 - I - 0x00599C 01:998C: 00        .byte $00   ; 
- D 0 - I - 0x00599D 01:998D: 00        .byte $00   ; 
- D 0 - I - 0x00599E 01:998E: 00        .byte $00   ; 
- D 0 - I - 0x00599F 01:998F: 00        .byte $00   ; 
- D 0 - I - 0x0059A0 01:9990: 00        .byte $00   ; 
- D 0 - I - 0x0059A1 01:9991: 00        .byte $00   ; 
- D 0 - I - 0x0059A2 01:9992: 00        .byte $00   ; 
- D 0 - I - 0x0059A3 01:9993: 00        .byte $00   ; 
- D 0 - I - 0x0059A4 01:9994: 1B        .byte $1B   ; 
off_9995_09:
- D 0 - I - 0x0059A5 01:9995: 04        .byte $04   ; 
- D 0 - I - 0x0059A6 01:9996: 04        .byte $04   ; 
- D 0 - I - 0x0059A7 01:9997: 04        .byte $04   ; 
- D 0 - I - 0x0059A8 01:9998: 04        .byte $04   ; 
- D 0 - I - 0x0059A9 01:9999: 04        .byte $04   ; 
- D 0 - I - 0x0059AA 01:999A: 04        .byte $04   ; 
- D 0 - I - 0x0059AB 01:999B: 04        .byte $04   ; 
- D 0 - I - 0x0059AC 01:999C: 04        .byte $04   ; 
- D 0 - I - 0x0059AD 01:999D: 04        .byte $04   ; 
- D 0 - I - 0x0059AE 01:999E: 04        .byte $04   ; 
- D 0 - I - 0x0059AF 01:999F: 04        .byte $04   ; 
- D 0 - I - 0x0059B0 01:99A0: 04        .byte $04   ; 
- D 0 - I - 0x0059B1 01:99A1: 04        .byte $04   ; 
- D 0 - I - 0x0059B2 01:99A2: 04        .byte $04   ; 
- D 0 - I - 0x0059B3 01:99A3: 04        .byte $04   ; 
- D 0 - I - 0x0059B4 01:99A4: 04        .byte $04   ; 
- D 0 - I - 0x0059B5 01:99A5: 04        .byte $04   ; 
- D 0 - I - 0x0059B6 01:99A6: 04        .byte $04   ; 
- D 0 - I - 0x0059B7 01:99A7: 04        .byte $04   ; 
- D 0 - I - 0x0059B8 01:99A8: 16        .byte $16   ; 
- D 0 - I - 0x0059B9 01:99A9: 04        .byte $04   ; 
- D 0 - I - 0x0059BA 01:99AA: 04        .byte $04   ; 
- D 0 - I - 0x0059BB 01:99AB: 04        .byte $04   ; 
- D 0 - I - 0x0059BC 01:99AC: 04        .byte $04   ; 
- D 0 - I - 0x0059BD 01:99AD: 04        .byte $04   ; 
- D 0 - I - 0x0059BE 01:99AE: 04        .byte $04   ; 
- D 0 - I - 0x0059BF 01:99AF: 04        .byte $04   ; 
- D 0 - I - 0x0059C0 01:99B0: 04        .byte $04   ; 
- D 0 - I - 0x0059C1 01:99B1: 04        .byte $04   ; 
- D 0 - I - 0x0059C2 01:99B2: 17        .byte $17   ; 
- D 0 - I - 0x0059C3 01:99B3: 04        .byte $04   ; 
- D 0 - I - 0x0059C4 01:99B4: 2B        .byte $2B   ; 
off_99B5_01:
- D 0 - I - 0x0059C5 01:99B5: 1C        .byte $1C   ; 
- D 0 - I - 0x0059C6 01:99B6: 00        .byte $00   ; 
- D 0 - I - 0x0059C7 01:99B7: 00        .byte $00   ; 
- D 0 - I - 0x0059C8 01:99B8: 00        .byte $00   ; 
- D 0 - I - 0x0059C9 01:99B9: 00        .byte $00   ; 
- D 0 - I - 0x0059CA 01:99BA: 00        .byte $00   ; 
- D 0 - I - 0x0059CB 01:99BB: 00        .byte $00   ; 
- D 0 - I - 0x0059CC 01:99BC: 00        .byte $00   ; 
- D 0 - I - 0x0059CD 01:99BD: 00        .byte $00   ; 
- D 0 - I - 0x0059CE 01:99BE: 00        .byte $00   ; 
- D 0 - I - 0x0059CF 01:99BF: 00        .byte $00   ; 
- D 0 - I - 0x0059D0 01:99C0: 14        .byte $14   ; 
- D 0 - I - 0x0059D1 01:99C1: 00        .byte $00   ; 
- D 0 - I - 0x0059D2 01:99C2: 00        .byte $00   ; 
- D 0 - I - 0x0059D3 01:99C3: 00        .byte $00   ; 
- D 0 - I - 0x0059D4 01:99C4: 00        .byte $00   ; 
- D 0 - I - 0x0059D5 01:99C5: 14        .byte $14   ; 
- D 0 - I - 0x0059D6 01:99C6: 00        .byte $00   ; 
- D 0 - I - 0x0059D7 01:99C7: 00        .byte $00   ; 
- D 0 - I - 0x0059D8 01:99C8: 00        .byte $00   ; 
off_99C9_07:
- D 0 - I - 0x0059D9 01:99C9: 00        .byte $00   ; 
- D 0 - I - 0x0059DA 01:99CA: 14        .byte $14   ; 
- D 0 - I - 0x0059DB 01:99CB: 00        .byte $00   ; 
- D 0 - I - 0x0059DC 01:99CC: 00        .byte $00   ; 
- D 0 - I - 0x0059DD 01:99CD: 00        .byte $00   ; 
- D 0 - I - 0x0059DE 01:99CE: 00        .byte $00   ; 
- D 0 - I - 0x0059DF 01:99CF: 00        .byte $00   ; 
- D 0 - I - 0x0059E0 01:99D0: 00        .byte $00   ; 
- D 0 - I - 0x0059E1 01:99D1: 00        .byte $00   ; 
- D 0 - I - 0x0059E2 01:99D2: 00        .byte $00   ; 
- D 0 - I - 0x0059E3 01:99D3: 00        .byte $00   ; 
- D 0 - I - 0x0059E4 01:99D4: 00        .byte $00   ; 
- D 0 - I - 0x0059E5 01:99D5: 00        .byte $00   ; 
- D 0 - I - 0x0059E6 01:99D6: 00        .byte $00   ; 
- D 0 - I - 0x0059E7 01:99D7: 00        .byte $00   ; 
- D 0 - I - 0x0059E8 01:99D8: 25        .byte $25   ; 
- D 0 - I - 0x0059E9 01:99D9: 00        .byte $00   ; 
- D 0 - I - 0x0059EA 01:99DA: 00        .byte $00   ; 
- D 0 - I - 0x0059EB 01:99DB: 00        .byte $00   ; 
- D 0 - I - 0x0059EC 01:99DC: 00        .byte $00   ; 
- D 0 - I - 0x0059ED 01:99DD: 00        .byte $00   ; 
- D 0 - I - 0x0059EE 01:99DE: 00        .byte $00   ; 
- D 0 - I - 0x0059EF 01:99DF: 00        .byte $00   ; 
- D 0 - I - 0x0059F0 01:99E0: 14        .byte $14   ; 
off_99E1_0D:
- D 0 - I - 0x0059F1 01:99E1: 00        .byte $00   ; 
- D 0 - I - 0x0059F2 01:99E2: 00        .byte $00   ; 
- D 0 - I - 0x0059F3 01:99E3: 00        .byte $00   ; 
- D 0 - I - 0x0059F4 01:99E4: 00        .byte $00   ; 
- D 0 - I - 0x0059F5 01:99E5: 00        .byte $00   ; 
- D 0 - I - 0x0059F6 01:99E6: 00        .byte $00   ; 
- D 0 - I - 0x0059F7 01:99E7: 00        .byte $00   ; 
- D 0 - I - 0x0059F8 01:99E8: 14        .byte $14   ; 
- - - - - - 0x0059F9 01:99E9: 00        .byte $00   ; 
- D 0 - I - 0x0059FA 01:99EA: 00        .byte $00   ; 
- D 0 - I - 0x0059FB 01:99EB: 00        .byte $00   ; 
- D 0 - I - 0x0059FC 01:99EC: 00        .byte $00   ; 
- D 0 - I - 0x0059FD 01:99ED: 00        .byte $00   ; 
- D 0 - I - 0x0059FE 01:99EE: 00        .byte $00   ; 
- D 0 - I - 0x0059FF 01:99EF: A1        .byte $A1   ; 
- D 0 - I - 0x005A00 01:99F0: A2        .byte $A2   ; 
- D 0 - I - 0x005A01 01:99F1: A3        .byte $A3   ; 
- D 0 - I - 0x005A02 01:99F2: A4        .byte $A4   ; 
- D 0 - I - 0x005A03 01:99F3: 25        .byte $25   ; 
- D 0 - I - 0x005A04 01:99F4: 00        .byte $00   ; 
- D 0 - I - 0x005A05 01:99F5: 00        .byte $00   ; 
- D 0 - I - 0x005A06 01:99F6: 00        .byte $00   ; 
- D 0 - I - 0x005A07 01:99F7: 00        .byte $00   ; 
- D 0 - I - 0x005A08 01:99F8: 00        .byte $00   ; 
- D 0 - I - 0x005A09 01:99F9: 00        .byte $00   ; 
- D 0 - I - 0x005A0A 01:99FA: 00        .byte $00   ; 
- D 0 - I - 0x005A0B 01:99FB: 00        .byte $00   ; 
- D 0 - I - 0x005A0C 01:99FC: 48        .byte $48   ; 
- D 0 - I - 0x005A0D 01:99FD: 60        .byte $60   ; 
- D 0 - I - 0x005A0E 01:99FE: 6E        .byte $6E   ; 
- D 0 - I - 0x005A0F 01:99FF: EF        .byte $EF   ; 
off_9A00_0D:
- D 0 - I - 0x005A10 01:9A00: 6C        .byte $6C   ; 
- D 0 - I - 0x005A11 01:9A01: EF        .byte $EF   ; 
- D 0 - I - 0x005A12 01:9A02: 6E        .byte $6E   ; 
- D 0 - I - 0x005A13 01:9A03: 78        .byte $78   ; 
- D 0 - I - 0x005A14 01:9A04: 5C        .byte $5C   ; 
- D 0 - I - 0x005A15 01:9A05: 46        .byte $46   ; 
- D 0 - I - 0x005A16 01:9A06: 00        .byte $00   ; 
- D 0 - I - 0x005A17 01:9A07: 00        .byte $00   ; 
- D 0 - I - 0x005A18 01:9A08: 00        .byte $00   ; 
- D 0 - I - 0x005A19 01:9A09: 00        .byte $00   ; 
- D 0 - I - 0x005A1A 01:9A0A: 00        .byte $00   ; 
- D 0 - I - 0x005A1B 01:9A0B: 00        .byte $00   ; 
- D 0 - I - 0x005A1C 01:9A0C: 00        .byte $00   ; 
- D 0 - I - 0x005A1D 01:9A0D: 22        .byte $22   ; 
- D 0 - I - 0x005A1E 01:9A0E: A0        .byte $A0   ; 
- D 0 - I - 0x005A1F 01:9A0F: A1        .byte $A1   ; 
- D 0 - I - 0x005A20 01:9A10: A2        .byte $A2   ; 
- D 0 - I - 0x005A21 01:9A11: A3        .byte $A3   ; 
- D 0 - I - 0x005A22 01:9A12: 00        .byte $00   ; 
- D 0 - I - 0x005A23 01:9A13: 00        .byte $00   ; 
- D 0 - I - 0x005A24 01:9A14: 00        .byte $00   ; 
- D 0 - I - 0x005A25 01:9A15: 00        .byte $00   ; 
- D 0 - I - 0x005A26 01:9A16: 00        .byte $00   ; 
- D 0 - I - 0x005A27 01:9A17: 00        .byte $00   ; 
- - - - - - 0x005A28 01:9A18: 00        .byte $00   ; 
- - - - - - 0x005A29 01:9A19: 00        .byte $00   ; 
- - - - - - 0x005A2A 01:9A1A: 00        .byte $00   ; 
- - - - - - 0x005A2B 01:9A1B: 00        .byte $00   ; 
- - - - - - 0x005A2C 01:9A1C: 00        .byte $00   ; 
- - - - - - 0x005A2D 01:9A1D: 00        .byte $00   ; 
- - - - - - 0x005A2E 01:9A1E: 00        .byte $00   ; 
- - - - - - 0x005A2F 01:9A1F: 00        .byte $00   ; 
off_9A20_02:
- D 0 - I - 0x005A30 01:9A20: 1C        .byte $1C   ; 
- D 0 - I - 0x005A31 01:9A21: 00        .byte $00   ; 
- D 0 - I - 0x005A32 01:9A22: 14        .byte $14   ; 
- D 0 - I - 0x005A33 01:9A23: 00        .byte $00   ; 
- D 0 - I - 0x005A34 01:9A24: 00        .byte $00   ; 
- D 0 - I - 0x005A35 01:9A25: 00        .byte $00   ; 
- D 0 - I - 0x005A36 01:9A26: 00        .byte $00   ; 
- D 0 - I - 0x005A37 01:9A27: 00        .byte $00   ; 
- D 0 - I - 0x005A38 01:9A28: 00        .byte $00   ; 
- D 0 - I - 0x005A39 01:9A29: 00        .byte $00   ; 
- D 0 - I - 0x005A3A 01:9A2A: 00        .byte $00   ; 
- D 0 - I - 0x005A3B 01:9A2B: 00        .byte $00   ; 
- D 0 - I - 0x005A3C 01:9A2C: 00        .byte $00   ; 
- D 0 - I - 0x005A3D 01:9A2D: 00        .byte $00   ; 
- D 0 - I - 0x005A3E 01:9A2E: 00        .byte $00   ; 
- D 0 - I - 0x005A3F 01:9A2F: 00        .byte $00   ; 
- D 0 - I - 0x005A40 01:9A30: 00        .byte $00   ; 
- D 0 - I - 0x005A41 01:9A31: 00        .byte $00   ; 
- D 0 - I - 0x005A42 01:9A32: 00        .byte $00   ; 
off_9A33_08:
- D 0 - I - 0x005A43 01:9A33: 00        .byte $00   ; 
- D 0 - I - 0x005A44 01:9A34: 00        .byte $00   ; 
- D 0 - I - 0x005A45 01:9A35: 00        .byte $00   ; 
- D 0 - I - 0x005A46 01:9A36: 00        .byte $00   ; 
- D 0 - I - 0x005A47 01:9A37: 00        .byte $00   ; 
- D 0 - I - 0x005A48 01:9A38: 14        .byte $14   ; 
- D 0 - I - 0x005A49 01:9A39: 00        .byte $00   ; 
- D 0 - I - 0x005A4A 01:9A3A: 00        .byte $00   ; 
- D 0 - I - 0x005A4B 01:9A3B: 00        .byte $00   ; 
- D 0 - I - 0x005A4C 01:9A3C: 00        .byte $00   ; 
- D 0 - I - 0x005A4D 01:9A3D: 00        .byte $00   ; 
- D 0 - I - 0x005A4E 01:9A3E: 15        .byte $15   ; 
- D 0 - I - 0x005A4F 01:9A3F: 00        .byte $00   ; 
- D 0 - I - 0x005A50 01:9A40: 00        .byte $00   ; 
- D 0 - I - 0x005A51 01:9A41: 00        .byte $00   ; 
- D 0 - I - 0x005A52 01:9A42: 00        .byte $00   ; 
- D 0 - I - 0x005A53 01:9A43: 00        .byte $00   ; 
- D 0 - I - 0x005A54 01:9A44: 00        .byte $00   ; 
- D 0 - I - 0x005A55 01:9A45: 00        .byte $00   ; 
- D 0 - I - 0x005A56 01:9A46: 00        .byte $00   ; 
- D 0 - I - 0x005A57 01:9A47: 00        .byte $00   ; 
- D 0 - I - 0x005A58 01:9A48: 00        .byte $00   ; 
- D 0 - I - 0x005A59 01:9A49: 00        .byte $00   ; 
- D 0 - I - 0x005A5A 01:9A4A: 00        .byte $00   ; 
- D 0 - I - 0x005A5B 01:9A4B: 00        .byte $00   ; 
- D 0 - I - 0x005A5C 01:9A4C: 00        .byte $00   ; 
- D 0 - I - 0x005A5D 01:9A4D: 00        .byte $00   ; 
- D 0 - I - 0x005A5E 01:9A4E: 00        .byte $00   ; 
- D 0 - I - 0x005A5F 01:9A4F: 00        .byte $00   ; 
- D 0 - I - 0x005A60 01:9A50: 00        .byte $00   ; 
- D 0 - I - 0x005A61 01:9A51: 00        .byte $00   ; 
- D 0 - I - 0x005A62 01:9A52: 1B        .byte $1B   ; 
off_9A53_03:
- D 0 - I - 0x005A63 01:9A53: 2C        .byte $2C   ; 
- D 0 - I - 0x005A64 01:9A54: 04        .byte $04   ; 
- D 0 - I - 0x005A65 01:9A55: 04        .byte $04   ; 
- D 0 - I - 0x005A66 01:9A56: 04        .byte $04   ; 
- D 0 - I - 0x005A67 01:9A57: 04        .byte $04   ; 
- D 0 - I - 0x005A68 01:9A58: 04        .byte $04   ; 
- D 0 - I - 0x005A69 01:9A59: 04        .byte $04   ; 
- D 0 - I - 0x005A6A 01:9A5A: 04        .byte $04   ; 
- D 0 - I - 0x005A6B 01:9A5B: 04        .byte $04   ; 
- D 0 - I - 0x005A6C 01:9A5C: 04        .byte $04   ; 
- D 0 - I - 0x005A6D 01:9A5D: 04        .byte $04   ; 
- D 0 - I - 0x005A6E 01:9A5E: 04        .byte $04   ; 
- D 0 - I - 0x005A6F 01:9A5F: 04        .byte $04   ; 
- D 0 - I - 0x005A70 01:9A60: 04        .byte $04   ; 
- D 0 - I - 0x005A71 01:9A61: 17        .byte $17   ; 
off_9A62_07:
- D 0 - I - 0x005A72 01:9A62: 04        .byte $04   ; 
- D 0 - I - 0x005A73 01:9A63: 04        .byte $04   ; 
- D 0 - I - 0x005A74 01:9A64: 04        .byte $04   ; 
- D 0 - I - 0x005A75 01:9A65: 04        .byte $04   ; 
- D 0 - I - 0x005A76 01:9A66: 04        .byte $04   ; 
- D 0 - I - 0x005A77 01:9A67: 04        .byte $04   ; 
- D 0 - I - 0x005A78 01:9A68: 04        .byte $04   ; 
- D 0 - I - 0x005A79 01:9A69: 04        .byte $04   ; 
- D 0 - I - 0x005A7A 01:9A6A: 04        .byte $04   ; 
- D 0 - I - 0x005A7B 01:9A6B: 04        .byte $04   ; 
- D 0 - I - 0x005A7C 01:9A6C: 04        .byte $04   ; 
- D 0 - I - 0x005A7D 01:9A6D: 04        .byte $04   ; 
- D 0 - I - 0x005A7E 01:9A6E: 04        .byte $04   ; 
- D 0 - I - 0x005A7F 01:9A6F: 04        .byte $04   ; 
- D 0 - I - 0x005A80 01:9A70: 04        .byte $04   ; 
- D 0 - I - 0x005A81 01:9A71: 04        .byte $04   ; 
- D 0 - I - 0x005A82 01:9A72: 04        .byte $04   ; 
- D 0 - I - 0x005A83 01:9A73: 04        .byte $04   ; 
- D 0 - I - 0x005A84 01:9A74: 04        .byte $04   ; 
- D 0 - I - 0x005A85 01:9A75: 33        .byte $33   ; 
- D 0 - I - 0x005A86 01:9A76: 04        .byte $04   ; 
- D 0 - I - 0x005A87 01:9A77: 85        .byte $85   ; 
- D 0 - I - 0x005A88 01:9A78: 04        .byte $04   ; 
- D 0 - I - 0x005A89 01:9A79: 04        .byte $04   ; 
- D 0 - I - 0x005A8A 01:9A7A: 04        .byte $04   ; 
- D 0 - I - 0x005A8B 01:9A7B: 04        .byte $04   ; 
- D 0 - I - 0x005A8C 01:9A7C: 04        .byte $04   ; 
- D 0 - I - 0x005A8D 01:9A7D: 04        .byte $04   ; 
- D 0 - I - 0x005A8E 01:9A7E: 04        .byte $04   ; 
- D 0 - I - 0x005A8F 01:9A7F: 04        .byte $04   ; 
- D 0 - I - 0x005A90 01:9A80: 04        .byte $04   ; 
- D 0 - I - 0x005A91 01:9A81: 04        .byte $04   ; 
off_9A82_04:
- D 0 - I - 0x005A92 01:9A82: 2C        .byte $2C   ; 
- D 0 - I - 0x005A93 01:9A83: 04        .byte $04   ; 
- D 0 - I - 0x005A94 01:9A84: 04        .byte $04   ; 
- D 0 - I - 0x005A95 01:9A85: 04        .byte $04   ; 
- D 0 - I - 0x005A96 01:9A86: 04        .byte $04   ; 
- D 0 - I - 0x005A97 01:9A87: 04        .byte $04   ; 
- D 0 - I - 0x005A98 01:9A88: 04        .byte $04   ; 
- D 0 - I - 0x005A99 01:9A89: 16        .byte $16   ; 
- D 0 - I - 0x005A9A 01:9A8A: 04        .byte $04   ; 
- D 0 - I - 0x005A9B 01:9A8B: 04        .byte $04   ; 
- D 0 - I - 0x005A9C 01:9A8C: 04        .byte $04   ; 
- D 0 - I - 0x005A9D 01:9A8D: 04        .byte $04   ; 
- D 0 - I - 0x005A9E 01:9A8E: 04        .byte $04   ; 
- D 0 - I - 0x005A9F 01:9A8F: 04        .byte $04   ; 
- D 0 - I - 0x005AA0 01:9A90: 04        .byte $04   ; 
- D 0 - I - 0x005AA1 01:9A91: 04        .byte $04   ; 
off_9A92_0A:
- D 0 - I - 0x005AA2 01:9A92: 04        .byte $04   ; 
- D 0 - I - 0x005AA3 01:9A93: 04        .byte $04   ; 
- D 0 - I - 0x005AA4 01:9A94: 16        .byte $16   ; 
- D 0 - I - 0x005AA5 01:9A95: 04        .byte $04   ; 
- D 0 - I - 0x005AA6 01:9A96: 04        .byte $04   ; 
- D 0 - I - 0x005AA7 01:9A97: 04        .byte $04   ; 
- D 0 - I - 0x005AA8 01:9A98: 04        .byte $04   ; 
- D 0 - I - 0x005AA9 01:9A99: 04        .byte $04   ; 
- D 0 - I - 0x005AAA 01:9A9A: 04        .byte $04   ; 
- D 0 - I - 0x005AAB 01:9A9B: 04        .byte $04   ; 
- D 0 - I - 0x005AAC 01:9A9C: 04        .byte $04   ; 
- D 0 - I - 0x005AAD 01:9A9D: 04        .byte $04   ; 
- D 0 - I - 0x005AAE 01:9A9E: 04        .byte $04   ; 
- D 0 - I - 0x005AAF 01:9A9F: 04        .byte $04   ; 
- D 0 - I - 0x005AB0 01:9AA0: 04        .byte $04   ; 
- D 0 - I - 0x005AB1 01:9AA1: 04        .byte $04   ; 
- D 0 - I - 0x005AB2 01:9AA2: 04        .byte $04   ; 
- D 0 - I - 0x005AB3 01:9AA3: 04        .byte $04   ; 
- D 0 - I - 0x005AB4 01:9AA4: 04        .byte $04   ; 
- D 0 - I - 0x005AB5 01:9AA5: 04        .byte $04   ; 
- D 0 - I - 0x005AB6 01:9AA6: 04        .byte $04   ; 
- D 0 - I - 0x005AB7 01:9AA7: 04        .byte $04   ; 
- D 0 - I - 0x005AB8 01:9AA8: 04        .byte $04   ; 
- D 0 - I - 0x005AB9 01:9AA9: 04        .byte $04   ; 
- D 0 - I - 0x005ABA 01:9AAA: 04        .byte $04   ; 
- D 0 - I - 0x005ABB 01:9AAB: 16        .byte $16   ; 
- D 0 - I - 0x005ABC 01:9AAC: 04        .byte $04   ; 
- D 0 - I - 0x005ABD 01:9AAD: 04        .byte $04   ; 
- D 0 - I - 0x005ABE 01:9AAE: 04        .byte $04   ; 
- D 0 - I - 0x005ABF 01:9AAF: 04        .byte $04   ; 
- D 0 - I - 0x005AC0 01:9AB0: 04        .byte $04   ; 
- D 0 - I - 0x005AC1 01:9AB1: 2B        .byte $2B   ; 
off_9AB2_05:
- D 0 - I - 0x005AC2 01:9AB2: 2C        .byte $2C   ; 
- D 0 - I - 0x005AC3 01:9AB3: 04        .byte $04   ; 
- D 0 - I - 0x005AC4 01:9AB4: 16        .byte $16   ; 
- D 0 - I - 0x005AC5 01:9AB5: 04        .byte $04   ; 
- D 0 - I - 0x005AC6 01:9AB6: 04        .byte $04   ; 
- D 0 - I - 0x005AC7 01:9AB7: 04        .byte $04   ; 
- D 0 - I - 0x005AC8 01:9AB8: 04        .byte $04   ; 
- D 0 - I - 0x005AC9 01:9AB9: 04        .byte $04   ; 
- D 0 - I - 0x005ACA 01:9ABA: 04        .byte $04   ; 
- D 0 - I - 0x005ACB 01:9ABB: 04        .byte $04   ; 
- D 0 - I - 0x005ACC 01:9ABC: 04        .byte $04   ; 
- D 0 - I - 0x005ACD 01:9ABD: 04        .byte $04   ; 
- D 0 - I - 0x005ACE 01:9ABE: 04        .byte $04   ; 
- D 0 - I - 0x005ACF 01:9ABF: 04        .byte $04   ; 
- D 0 - I - 0x005AD0 01:9AC0: 04        .byte $04   ; 
- D 0 - I - 0x005AD1 01:9AC1: 04        .byte $04   ; 
- D 0 - I - 0x005AD2 01:9AC2: 04        .byte $04   ; 
- D 0 - I - 0x005AD3 01:9AC3: 04        .byte $04   ; 
- D 0 - I - 0x005AD4 01:9AC4: 04        .byte $04   ; 
- D 0 - I - 0x005AD5 01:9AC5: 04        .byte $04   ; 
- D 0 - I - 0x005AD6 01:9AC6: 04        .byte $04   ; 
- D 0 - I - 0x005AD7 01:9AC7: 04        .byte $04   ; 
- D 0 - I - 0x005AD8 01:9AC8: 04        .byte $04   ; 
- D 0 - I - 0x005AD9 01:9AC9: 04        .byte $04   ; 
- D 0 - I - 0x005ADA 01:9ACA: 04        .byte $04   ; 
- D 0 - I - 0x005ADB 01:9ACB: 16        .byte $16   ; 
- D 0 - I - 0x005ADC 01:9ACC: 04        .byte $04   ; 
- D 0 - I - 0x005ADD 01:9ACD: 04        .byte $04   ; 
off_9ACE_1D:
- D 0 - I - 0x005ADE 01:9ACE: 16        .byte $16   ; 
- D 0 - I - 0x005ADF 01:9ACF: 04        .byte $04   ; 
- D 0 - I - 0x005AE0 01:9AD0: 04        .byte $04   ; 
- D 0 - I - 0x005AE1 01:9AD1: 04        .byte $04   ; 
- D 0 - I - 0x005AE2 01:9AD2: 04        .byte $04   ; 
- D 0 - I - 0x005AE3 01:9AD3: 16        .byte $16   ; 
- D 0 - I - 0x005AE4 01:9AD4: 04        .byte $04   ; 
- D 0 - I - 0x005AE5 01:9AD5: 04        .byte $04   ; 
- D 0 - I - 0x005AE6 01:9AD6: 04        .byte $04   ; 
- D 0 - I - 0x005AE7 01:9AD7: 04        .byte $04   ; 
- D 0 - I - 0x005AE8 01:9AD8: 16        .byte $16   ; 
- D 0 - I - 0x005AE9 01:9AD9: 04        .byte $04   ; 
- D 0 - I - 0x005AEA 01:9ADA: 04        .byte $04   ; 
- D 0 - I - 0x005AEB 01:9ADB: 16        .byte $16   ; 
- D 0 - I - 0x005AEC 01:9ADC: 61        .byte $61   ; 
- D 0 - I - 0x005AED 01:9ADD: 6D        .byte $6D   ; 
- D 0 - I - 0x005AEE 01:9ADE: 6D        .byte $6D   ; 
- D 0 - I - 0x005AEF 01:9ADF: 6D        .byte $6D   ; 
- D 0 - I - 0x005AF0 01:9AE0: 6D        .byte $6D   ; 
- D 0 - I - 0x005AF1 01:9AE1: 71        .byte $71   ; 
- D 0 - I - 0x005AF2 01:9AE2: 6D        .byte $6D   ; 
- D 0 - I - 0x005AF3 01:9AE3: 67        .byte $67   ; 
- D 0 - I - 0x005AF4 01:9AE4: 04        .byte $04   ; 
- D 0 - I - 0x005AF5 01:9AE5: 04        .byte $04   ; 
- D 0 - I - 0x005AF6 01:9AE6: 04        .byte $04   ; 
- D 0 - I - 0x005AF7 01:9AE7: 04        .byte $04   ; 
- D 0 - I - 0x005AF8 01:9AE8: 04        .byte $04   ; 
- D 0 - I - 0x005AF9 01:9AE9: 04        .byte $04   ; 
- D 0 - I - 0x005AFA 01:9AEA: 04        .byte $04   ; 
- D 0 - I - 0x005AFB 01:9AEB: 04        .byte $04   ; 
- D 0 - I - 0x005AFC 01:9AEC: 04        .byte $04   ; 
- D 0 - I - 0x005AFD 01:9AED: 2B        .byte $2B   ; 
off_9AEE_06:
- D 0 - I - 0x005AFE 01:9AEE: 1C        .byte $1C   ; 
- D 0 - I - 0x005AFF 01:9AEF: 00        .byte $00   ; 
- D 0 - I - 0x005B00 01:9AF0: 00        .byte $00   ; 
- D 0 - I - 0x005B01 01:9AF1: 00        .byte $00   ; 
- D 0 - I - 0x005B02 01:9AF2: 00        .byte $00   ; 
- D 0 - I - 0x005B03 01:9AF3: 00        .byte $00   ; 
- D 0 - I - 0x005B04 01:9AF4: 00        .byte $00   ; 
- D 0 - I - 0x005B05 01:9AF5: 00        .byte $00   ; 
- D 0 - I - 0x005B06 01:9AF6: 00        .byte $00   ; 
- D 0 - I - 0x005B07 01:9AF7: 00        .byte $00   ; 
- D 0 - I - 0x005B08 01:9AF8: 00        .byte $00   ; 
- D 0 - I - 0x005B09 01:9AF9: 14        .byte $14   ; 
- D 0 - I - 0x005B0A 01:9AFA: 00        .byte $00   ; 
- D 0 - I - 0x005B0B 01:9AFB: 00        .byte $00   ; 
- D 0 - I - 0x005B0C 01:9AFC: 14        .byte $14   ; 
- D 0 - I - 0x005B0D 01:9AFD: 00        .byte $00   ; 
- D 0 - I - 0x005B0E 01:9AFE: 00        .byte $00   ; 
- D 0 - I - 0x005B0F 01:9AFF: 00        .byte $00   ; 
- D 0 - I - 0x005B10 01:9B00: 00        .byte $00   ; 
- D 0 - I - 0x005B11 01:9B01: 00        .byte $00   ; 
- D 0 - I - 0x005B12 01:9B02: 00        .byte $00   ; 
- D 0 - I - 0x005B13 01:9B03: 00        .byte $00   ; 
- D 0 - I - 0x005B14 01:9B04: 00        .byte $00   ; 
- D 0 - I - 0x005B15 01:9B05: 00        .byte $00   ; 
- D 0 - I - 0x005B16 01:9B06: 00        .byte $00   ; 
- D 0 - I - 0x005B17 01:9B07: 00        .byte $00   ; 
- D 0 - I - 0x005B18 01:9B08: 00        .byte $00   ; 
- D 0 - I - 0x005B19 01:9B09: 00        .byte $00   ; 
- D 0 - I - 0x005B1A 01:9B0A: 00        .byte $00   ; 
- D 0 - I - 0x005B1B 01:9B0B: 00        .byte $00   ; 
- D 0 - I - 0x005B1C 01:9B0C: 00        .byte $00   ; 
- D 0 - I - 0x005B1D 01:9B0D: 00        .byte $00   ; 
off_9B0E_07:
- D 0 - I - 0x005B1E 01:9B0E: 1C        .byte $1C   ; 
- D 0 - I - 0x005B1F 01:9B0F: 00        .byte $00   ; 
- D 0 - I - 0x005B20 01:9B10: 00        .byte $00   ; 
- D 0 - I - 0x005B21 01:9B11: 00        .byte $00   ; 
- D 0 - I - 0x005B22 01:9B12: 14        .byte $14   ; 
- D 0 - I - 0x005B23 01:9B13: 00        .byte $00   ; 
- D 0 - I - 0x005B24 01:9B14: 00        .byte $00   ; 
- D 0 - I - 0x005B25 01:9B15: 00        .byte $00   ; 
- D 0 - I - 0x005B26 01:9B16: 00        .byte $00   ; 
- D 0 - I - 0x005B27 01:9B17: 00        .byte $00   ; 
- D 0 - I - 0x005B28 01:9B18: 00        .byte $00   ; 
- D 0 - I - 0x005B29 01:9B19: 00        .byte $00   ; 
- D 0 - I - 0x005B2A 01:9B1A: 00        .byte $00   ; 
- D 0 - I - 0x005B2B 01:9B1B: 00        .byte $00   ; 
- D 0 - I - 0x005B2C 01:9B1C: 00        .byte $00   ; 
- D 0 - I - 0x005B2D 01:9B1D: 00        .byte $00   ; 
- D 0 - I - 0x005B2E 01:9B1E: 00        .byte $00   ; 
- D 0 - I - 0x005B2F 01:9B1F: 00        .byte $00   ; 
- D 0 - I - 0x005B30 01:9B20: 00        .byte $00   ; 
- D 0 - I - 0x005B31 01:9B21: 00        .byte $00   ; 
off_9B22_07:
- D 0 - I - 0x005B32 01:9B22: 00        .byte $00   ; 
- D 0 - I - 0x005B33 01:9B23: 14        .byte $14   ; 
- D 0 - I - 0x005B34 01:9B24: 00        .byte $00   ; 
- D 0 - I - 0x005B35 01:9B25: 00        .byte $00   ; 
- D 0 - I - 0x005B36 01:9B26: 00        .byte $00   ; 
- D 0 - I - 0x005B37 01:9B27: 00        .byte $00   ; 
- D 0 - I - 0x005B38 01:9B28: 00        .byte $00   ; 
- D 0 - I - 0x005B39 01:9B29: 00        .byte $00   ; 
- D 0 - I - 0x005B3A 01:9B2A: 00        .byte $00   ; 
- D 0 - I - 0x005B3B 01:9B2B: 00        .byte $00   ; 
- D 0 - I - 0x005B3C 01:9B2C: 00        .byte $00   ; 
- D 0 - I - 0x005B3D 01:9B2D: 00        .byte $00   ; 
- D 0 - I - 0x005B3E 01:9B2E: 00        .byte $00   ; 
- D 0 - I - 0x005B3F 01:9B2F: 00        .byte $00   ; 
- D 0 - I - 0x005B40 01:9B30: 00        .byte $00   ; 
- D 0 - I - 0x005B41 01:9B31: 25        .byte $25   ; 
- D 0 - I - 0x005B42 01:9B32: 00        .byte $00   ; 
- D 0 - I - 0x005B43 01:9B33: 00        .byte $00   ; 
- D 0 - I - 0x005B44 01:9B34: 00        .byte $00   ; 
- D 0 - I - 0x005B45 01:9B35: 00        .byte $00   ; 
- D 0 - I - 0x005B46 01:9B36: 00        .byte $00   ; 
- D 0 - I - 0x005B47 01:9B37: 00        .byte $00   ; 
- D 0 - I - 0x005B48 01:9B38: 00        .byte $00   ; 
- D 0 - I - 0x005B49 01:9B39: 14        .byte $14   ; 
- D 0 - I - 0x005B4A 01:9B3A: 44        .byte $44   ; 
- D 0 - I - 0x005B4B 01:9B3B: 5A        .byte $5A   ; 
- D 0 - I - 0x005B4C 01:9B3C: 5A        .byte $5A   ; 
- D 0 - I - 0x005B4D 01:9B3D: 5A        .byte $5A   ; 
- D 0 - I - 0x005B4E 01:9B3E: 7A        .byte $7A   ; 
off_9B3F_08:
- D 0 - I - 0x005B4F 01:9B3F: 6C        .byte $6C   ; 
- D 0 - I - 0x005B50 01:9B40: 6C        .byte $6C   ; 
- D 0 - I - 0x005B51 01:9B41: 6C        .byte $6C   ; 
- D 0 - I - 0x005B52 01:9B42: 6C        .byte $6C   ; 
- D 0 - I - 0x005B53 01:9B43: 6C        .byte $6C   ; 
- D 0 - I - 0x005B54 01:9B44: 66        .byte $66   ; 
- D 0 - I - 0x005B55 01:9B45: 00        .byte $00   ; 
- D 0 - I - 0x005B56 01:9B46: 00        .byte $00   ; 
- D 0 - I - 0x005B57 01:9B47: 00        .byte $00   ; 
- D 0 - I - 0x005B58 01:9B48: 00        .byte $00   ; 
- D 0 - I - 0x005B59 01:9B49: 00        .byte $00   ; 
- D 0 - I - 0x005B5A 01:9B4A: 15        .byte $15   ; 
- D 0 - I - 0x005B5B 01:9B4B: 00        .byte $00   ; 
- D 0 - I - 0x005B5C 01:9B4C: 00        .byte $00   ; 
- D 0 - I - 0x005B5D 01:9B4D: 00        .byte $00   ; 
- D 0 - I - 0x005B5E 01:9B4E: 00        .byte $00   ; 
- D 0 - I - 0x005B5F 01:9B4F: 00        .byte $00   ; 
- D 0 - I - 0x005B60 01:9B50: 00        .byte $00   ; 
- D 0 - I - 0x005B61 01:9B51: 00        .byte $00   ; 
- D 0 - I - 0x005B62 01:9B52: 00        .byte $00   ; 
- D 0 - I - 0x005B63 01:9B53: 00        .byte $00   ; 
- D 0 - I - 0x005B64 01:9B54: 00        .byte $00   ; 
- D 0 - I - 0x005B65 01:9B55: 00        .byte $00   ; 
- D 0 - I - 0x005B66 01:9B56: 00        .byte $00   ; 
- D 0 - I - 0x005B67 01:9B57: 00        .byte $00   ; 
- D 0 - I - 0x005B68 01:9B58: 00        .byte $00   ; 
- D 0 - I - 0x005B69 01:9B59: 00        .byte $00   ; 
- D 0 - I - 0x005B6A 01:9B5A: 00        .byte $00   ; 
- D 0 - I - 0x005B6B 01:9B5B: 00        .byte $00   ; 
- D 0 - I - 0x005B6C 01:9B5C: 00        .byte $00   ; 
- D 0 - I - 0x005B6D 01:9B5D: 00        .byte $00   ; 
- D 0 - I - 0x005B6E 01:9B5E: 1B        .byte $1B   ; 
off_9B5F_08:
- D 0 - I - 0x005B6F 01:9B5F: 1C        .byte $1C   ; 
- D 0 - I - 0x005B70 01:9B60: 00        .byte $00   ; 
- D 0 - I - 0x005B71 01:9B61: 00        .byte $00   ; 
- D 0 - I - 0x005B72 01:9B62: 00        .byte $00   ; 
- D 0 - I - 0x005B73 01:9B63: 00        .byte $00   ; 
- D 0 - I - 0x005B74 01:9B64: 00        .byte $00   ; 
- D 0 - I - 0x005B75 01:9B65: 00        .byte $00   ; 
- D 0 - I - 0x005B76 01:9B66: 14        .byte $14   ; 
- D 0 - I - 0x005B77 01:9B67: 00        .byte $00   ; 
- D 0 - I - 0x005B78 01:9B68: 00        .byte $00   ; 
- D 0 - I - 0x005B79 01:9B69: 00        .byte $00   ; 
- D 0 - I - 0x005B7A 01:9B6A: 00        .byte $00   ; 
- D 0 - I - 0x005B7B 01:9B6B: 00        .byte $00   ; 
- D 0 - I - 0x005B7C 01:9B6C: 00        .byte $00   ; 
- D 0 - I - 0x005B7D 01:9B6D: 00        .byte $00   ; 
- D 0 - I - 0x005B7E 01:9B6E: 00        .byte $00   ; 
- D 0 - I - 0x005B7F 01:9B6F: 14        .byte $14   ; 
- D 0 - I - 0x005B80 01:9B70: 00        .byte $00   ; 
- D 0 - I - 0x005B81 01:9B71: 00        .byte $00   ; 
- D 0 - I - 0x005B82 01:9B72: 00        .byte $00   ; 
off_9B73_0E:
- D 0 - I - 0x005B83 01:9B73: 00        .byte $00   ; 
- D 0 - I - 0x005B84 01:9B74: 00        .byte $00   ; 
- D 0 - I - 0x005B85 01:9B75: 00        .byte $00   ; 
- D 0 - I - 0x005B86 01:9B76: 00        .byte $00   ; 
- D 0 - I - 0x005B87 01:9B77: 00        .byte $00   ; 
- D 0 - I - 0x005B88 01:9B78: 00        .byte $00   ; 
- D 0 - I - 0x005B89 01:9B79: 00        .byte $00   ; 
- D 0 - I - 0x005B8A 01:9B7A: 00        .byte $00   ; 
- D 0 - I - 0x005B8B 01:9B7B: 00        .byte $00   ; 
- D 0 - I - 0x005B8C 01:9B7C: 15        .byte $15   ; 
- D 0 - I - 0x005B8D 01:9B7D: 00        .byte $00   ; 
- D 0 - I - 0x005B8E 01:9B7E: 00        .byte $00   ; 
- D 0 - I - 0x005B8F 01:9B7F: 00        .byte $00   ; 
- D 0 - I - 0x005B90 01:9B80: 00        .byte $00   ; 
- D 0 - I - 0x005B91 01:9B81: 00        .byte $00   ; 
- D 0 - I - 0x005B92 01:9B82: 00        .byte $00   ; 
- D 0 - I - 0x005B93 01:9B83: 00        .byte $00   ; 
- D 0 - I - 0x005B94 01:9B84: 00        .byte $00   ; 
- D 0 - I - 0x005B95 01:9B85: 00        .byte $00   ; 
- D 0 - I - 0x005B96 01:9B86: 00        .byte $00   ; 
- D 0 - I - 0x005B97 01:9B87: 00        .byte $00   ; 
- D 0 - I - 0x005B98 01:9B88: 00        .byte $00   ; 
- D 0 - I - 0x005B99 01:9B89: 00        .byte $00   ; 
- D 0 - I - 0x005B9A 01:9B8A: 00        .byte $00   ; 
- D 0 - I - 0x005B9B 01:9B8B: 00        .byte $00   ; 
- D 0 - I - 0x005B9C 01:9B8C: 00        .byte $00   ; 
- D 0 - I - 0x005B9D 01:9B8D: 00        .byte $00   ; 
- D 0 - I - 0x005B9E 01:9B8E: 00        .byte $00   ; 
- D 0 - I - 0x005B9F 01:9B8F: 00        .byte $00   ; 
- D 0 - I - 0x005BA0 01:9B90: 00        .byte $00   ; 
- D 0 - I - 0x005BA1 01:9B91: 00        .byte $00   ; 
- D 0 - I - 0x005BA2 01:9B92: 1B        .byte $1B   ; 
off_9B93_09:
- D 0 - I - 0x005BA3 01:9B93: 2C        .byte $2C   ; 
- D 0 - I - 0x005BA4 01:9B94: 04        .byte $04   ; 
- D 0 - I - 0x005BA5 01:9B95: 04        .byte $04   ; 
- D 0 - I - 0x005BA6 01:9B96: 04        .byte $04   ; 
- D 0 - I - 0x005BA7 01:9B97: 04        .byte $04   ; 
- D 0 - I - 0x005BA8 01:9B98: 04        .byte $04   ; 
- D 0 - I - 0x005BA9 01:9B99: 04        .byte $04   ; 
- D 0 - I - 0x005BAA 01:9B9A: 04        .byte $04   ; 
- D 0 - I - 0x005BAB 01:9B9B: 04        .byte $04   ; 
- D 0 - I - 0x005BAC 01:9B9C: 04        .byte $04   ; 
- D 0 - I - 0x005BAD 01:9B9D: 04        .byte $04   ; 
- D 0 - I - 0x005BAE 01:9B9E: 16        .byte $16   ; 
- D 0 - I - 0x005BAF 01:9B9F: 04        .byte $04   ; 
- D 0 - I - 0x005BB0 01:9BA0: 04        .byte $04   ; 
- D 0 - I - 0x005BB1 01:9BA1: 04        .byte $04   ; 
- D 0 - I - 0x005BB2 01:9BA2: 04        .byte $04   ; 
- D 0 - I - 0x005BB3 01:9BA3: 04        .byte $04   ; 
- D 0 - I - 0x005BB4 01:9BA4: 04        .byte $04   ; 
- D 0 - I - 0x005BB5 01:9BA5: 16        .byte $16   ; 
off_9BA6_08:
- D 0 - I - 0x005BB6 01:9BA6: 04        .byte $04   ; 
- D 0 - I - 0x005BB7 01:9BA7: 04        .byte $04   ; 
- D 0 - I - 0x005BB8 01:9BA8: 04        .byte $04   ; 
- D 0 - I - 0x005BB9 01:9BA9: 04        .byte $04   ; 
- D 0 - I - 0x005BBA 01:9BAA: 04        .byte $04   ; 
- D 0 - I - 0x005BBB 01:9BAB: 04        .byte $04   ; 
- D 0 - I - 0x005BBC 01:9BAC: 04        .byte $04   ; 
- D 0 - I - 0x005BBD 01:9BAD: 16        .byte $16   ; 
- D 0 - I - 0x005BBE 01:9BAE: 04        .byte $04   ; 
- D 0 - I - 0x005BBF 01:9BAF: 04        .byte $04   ; 
- D 0 - I - 0x005BC0 01:9BB0: 04        .byte $04   ; 
- D 0 - I - 0x005BC1 01:9BB1: 04        .byte $04   ; 
- D 0 - I - 0x005BC2 01:9BB2: 04        .byte $04   ; 
- D 0 - I - 0x005BC3 01:9BB3: 16        .byte $16   ; 
- D 0 - I - 0x005BC4 01:9BB4: 04        .byte $04   ; 
- D 0 - I - 0x005BC5 01:9BB5: 04        .byte $04   ; 
- D 0 - I - 0x005BC6 01:9BB6: 17        .byte $17   ; 
- D 0 - I - 0x005BC7 01:9BB7: 04        .byte $04   ; 
- D 0 - I - 0x005BC8 01:9BB8: 04        .byte $04   ; 
- D 0 - I - 0x005BC9 01:9BB9: 82        .byte $82   ; 
- D 0 - I - 0x005BCA 01:9BBA: 83        .byte $83   ; 
- D 0 - I - 0x005BCB 01:9BBB: 84        .byte $84   ; 
- D 0 - I - 0x005BCC 01:9BBC: 04        .byte $04   ; 
- D 0 - I - 0x005BCD 01:9BBD: 04        .byte $04   ; 
- D 0 - I - 0x005BCE 01:9BBE: 04        .byte $04   ; 
- D 0 - I - 0x005BCF 01:9BBF: 04        .byte $04   ; 
- D 0 - I - 0x005BD0 01:9BC0: 04        .byte $04   ; 
- D 0 - I - 0x005BD1 01:9BC1: 04        .byte $04   ; 
- D 0 - I - 0x005BD2 01:9BC2: 04        .byte $04   ; 
- D 0 - I - 0x005BD3 01:9BC3: 04        .byte $04   ; 
- D 0 - I - 0x005BD4 01:9BC4: 41        .byte $41   ; 
- D 0 - I - 0x005BD5 01:9BC5: 55        .byte $55   ; 
off_9BC6_0A:
- D 0 - I - 0x005BD6 01:9BC6: 2C        .byte $2C   ; 
- D 0 - I - 0x005BD7 01:9BC7: 04        .byte $04   ; 
- D 0 - I - 0x005BD8 01:9BC8: 04        .byte $04   ; 
- D 0 - I - 0x005BD9 01:9BC9: 04        .byte $04   ; 
- D 0 - I - 0x005BDA 01:9BCA: 04        .byte $04   ; 
- D 0 - I - 0x005BDB 01:9BCB: 04        .byte $04   ; 
- D 0 - I - 0x005BDC 01:9BCC: 04        .byte $04   ; 
- D 0 - I - 0x005BDD 01:9BCD: 04        .byte $04   ; 
- D 0 - I - 0x005BDE 01:9BCE: 04        .byte $04   ; 
- D 0 - I - 0x005BDF 01:9BCF: 04        .byte $04   ; 
- D 0 - I - 0x005BE0 01:9BD0: 04        .byte $04   ; 
off_9BD1_08:
- D 0 - I - 0x005BE1 01:9BD1: 04        .byte $04   ; 
- D 0 - I - 0x005BE2 01:9BD2: 04        .byte $04   ; 
- D 0 - I - 0x005BE3 01:9BD3: 04        .byte $04   ; 
- D 0 - I - 0x005BE4 01:9BD4: 04        .byte $04   ; 
- D 0 - I - 0x005BE5 01:9BD5: 04        .byte $04   ; 
- D 0 - I - 0x005BE6 01:9BD6: 04        .byte $04   ; 
- D 0 - I - 0x005BE7 01:9BD7: 04        .byte $04   ; 
- D 0 - I - 0x005BE8 01:9BD8: 04        .byte $04   ; 
- D 0 - I - 0x005BE9 01:9BD9: 04        .byte $04   ; 
- D 0 - I - 0x005BEA 01:9BDA: 04        .byte $04   ; 
- D 0 - I - 0x005BEB 01:9BDB: 17        .byte $17   ; 
- D 0 - I - 0x005BEC 01:9BDC: 04        .byte $04   ; 
- D 0 - I - 0x005BED 01:9BDD: 04        .byte $04   ; 
- D 0 - I - 0x005BEE 01:9BDE: 04        .byte $04   ; 
- D 0 - I - 0x005BEF 01:9BDF: 04        .byte $04   ; 
- D 0 - I - 0x005BF0 01:9BE0: 04        .byte $04   ; 
- D 0 - I - 0x005BF1 01:9BE1: 04        .byte $04   ; 
- D 0 - I - 0x005BF2 01:9BE2: 04        .byte $04   ; 
- D 0 - I - 0x005BF3 01:9BE3: 04        .byte $04   ; 
- D 0 - I - 0x005BF4 01:9BE4: 04        .byte $04   ; 
- D 0 - I - 0x005BF5 01:9BE5: 04        .byte $04   ; 
- D 0 - I - 0x005BF6 01:9BE6: 16        .byte $16   ; 
- D 0 - I - 0x005BF7 01:9BE7: 04        .byte $04   ; 
- D 0 - I - 0x005BF8 01:9BE8: 04        .byte $04   ; 
- D 0 - I - 0x005BF9 01:9BE9: 04        .byte $04   ; 
- D 0 - I - 0x005BFA 01:9BEA: 04        .byte $04   ; 
- D 0 - I - 0x005BFB 01:9BEB: 04        .byte $04   ; 
- D 0 - I - 0x005BFC 01:9BEC: 04        .byte $04   ; 
- D 0 - I - 0x005BFD 01:9BED: 04        .byte $04   ; 
- D 0 - I - 0x005BFE 01:9BEE: 04        .byte $04   ; 
- D 0 - I - 0x005BFF 01:9BEF: 04        .byte $04   ; 
- D 0 - I - 0x005C00 01:9BF0: 2B        .byte $2B   ; 
off_9BF1_0B:
- D 0 - I - 0x005C01 01:9BF1: 2C        .byte $2C   ; 
- D 0 - I - 0x005C02 01:9BF2: 04        .byte $04   ; 
- D 0 - I - 0x005C03 01:9BF3: 04        .byte $04   ; 
- D 0 - I - 0x005C04 01:9BF4: 04        .byte $04   ; 
- D 0 - I - 0x005C05 01:9BF5: 16        .byte $16   ; 
- D 0 - I - 0x005C06 01:9BF6: 04        .byte $04   ; 
- D 0 - I - 0x005C07 01:9BF7: 04        .byte $04   ; 
- D 0 - I - 0x005C08 01:9BF8: 04        .byte $04   ; 
- D 0 - I - 0x005C09 01:9BF9: 04        .byte $04   ; 
- D 0 - I - 0x005C0A 01:9BFA: 04        .byte $04   ; 
- D 0 - I - 0x005C0B 01:9BFB: 04        .byte $04   ; 
- D 0 - I - 0x005C0C 01:9BFC: 04        .byte $04   ; 
- D 0 - I - 0x005C0D 01:9BFD: 04        .byte $04   ; 
- D 0 - I - 0x005C0E 01:9BFE: 04        .byte $04   ; 
- D 0 - I - 0x005C0F 01:9BFF: 16        .byte $16   ; 
- D 0 - I - 0x005C10 01:9C00: 04        .byte $04   ; 
- D 0 - I - 0x005C11 01:9C01: 04        .byte $04   ; 
- D 0 - I - 0x005C12 01:9C02: 04        .byte $04   ; 
off_9C03_09:
- D 0 - I - 0x005C13 01:9C03: 04        .byte $04   ; 
- D 0 - I - 0x005C14 01:9C04: 04        .byte $04   ; 
- D 0 - I - 0x005C15 01:9C05: 04        .byte $04   ; 
- D 0 - I - 0x005C16 01:9C06: 04        .byte $04   ; 
- D 0 - I - 0x005C17 01:9C07: 04        .byte $04   ; 
- D 0 - I - 0x005C18 01:9C08: 04        .byte $04   ; 
- D 0 - I - 0x005C19 01:9C09: 04        .byte $04   ; 
- D 0 - I - 0x005C1A 01:9C0A: 04        .byte $04   ; 
- D 0 - I - 0x005C1B 01:9C0B: 04        .byte $04   ; 
- D 0 - I - 0x005C1C 01:9C0C: 04        .byte $04   ; 
- D 0 - I - 0x005C1D 01:9C0D: 04        .byte $04   ; 
- D 0 - I - 0x005C1E 01:9C0E: 04        .byte $04   ; 
- D 0 - I - 0x005C1F 01:9C0F: 16        .byte $16   ; 
- D 0 - I - 0x005C20 01:9C10: 04        .byte $04   ; 
- D 0 - I - 0x005C21 01:9C11: 04        .byte $04   ; 
- D 0 - I - 0x005C22 01:9C12: 04        .byte $04   ; 
- D 0 - I - 0x005C23 01:9C13: 34        .byte $34   ; 
off_9C14_04:
- D 0 - I - 0x005C24 01:9C14: 04        .byte $04   ; 
- D 0 - I - 0x005C25 01:9C15: 04        .byte $04   ; 
- D 0 - I - 0x005C26 01:9C16: 04        .byte $04   ; 
- D 0 - I - 0x005C27 01:9C17: 04        .byte $04   ; 
- D 0 - I - 0x005C28 01:9C18: 04        .byte $04   ; 
- D 0 - I - 0x005C29 01:9C19: 04        .byte $04   ; 
- D 0 - I - 0x005C2A 01:9C1A: 16        .byte $16   ; 
- - - - - - 0x005C2B 01:9C1B: 04        .byte $04   ; 
- - - - - - 0x005C2C 01:9C1C: 04        .byte $04   ; 
- D 0 - I - 0x005C2D 01:9C1D: 04        .byte $04   ; 
- D 0 - I - 0x005C2E 01:9C1E: 04        .byte $04   ; 
- D 0 - I - 0x005C2F 01:9C1F: 04        .byte $04   ; 
- D 0 - I - 0x005C30 01:9C20: 04        .byte $04   ; 
- D 0 - I - 0x005C31 01:9C21: 04        .byte $04   ; 
- D 0 - I - 0x005C32 01:9C22: 04        .byte $04   ; 
- D 0 - I - 0x005C33 01:9C23: 37        .byte $37   ; 
- D 0 - I - 0x005C34 01:9C24: 2C        .byte $2C   ; 
- D 0 - I - 0x005C35 01:9C25: 04        .byte $04   ; 
- D 0 - I - 0x005C36 01:9C26: 04        .byte $04   ; 
- D 0 - I - 0x005C37 01:9C27: 04        .byte $04   ; 
- D 0 - I - 0x005C38 01:9C28: 04        .byte $04   ; 
- D 0 - I - 0x005C39 01:9C29: 04        .byte $04   ; 
- D 0 - I - 0x005C3A 01:9C2A: 16        .byte $16   ; 
- D 0 - I - 0x005C3B 01:9C2B: 04        .byte $04   ; 
- D 0 - I - 0x005C3C 01:9C2C: 04        .byte $04   ; 
- D 0 - I - 0x005C3D 01:9C2D: 04        .byte $04   ; 
- D 0 - I - 0x005C3E 01:9C2E: 04        .byte $04   ; 
- D 0 - I - 0x005C3F 01:9C2F: 2B        .byte $2B   ; 
- D 0 - I - 0x005C40 01:9C30: 30        .byte $30   ; 
- D 0 - I - 0x005C41 01:9C31: 04        .byte $04   ; 
- D 0 - I - 0x005C42 01:9C32: 04        .byte $04   ; 
- D 0 - I - 0x005C43 01:9C33: 04        .byte $04   ; 
off_9C34_0E:
- D 0 - I - 0x005C44 01:9C34: 00        .byte $00   ; 
- D 0 - I - 0x005C45 01:9C35: 00        .byte $00   ; 
- D 0 - I - 0x005C46 01:9C36: 00        .byte $00   ; 
- D 0 - I - 0x005C47 01:9C37: 00        .byte $00   ; 
- D 0 - I - 0x005C48 01:9C38: 00        .byte $00   ; 
- D 0 - I - 0x005C49 01:9C39: 14        .byte $14   ; 
- D 0 - I - 0x005C4A 01:9C3A: 00        .byte $00   ; 
- D 0 - I - 0x005C4B 01:9C3B: 00        .byte $00   ; 
- D 0 - I - 0x005C4C 01:9C3C: 00        .byte $00   ; 
- D 0 - I - 0x005C4D 01:9C3D: 00        .byte $00   ; 
- D 0 - I - 0x005C4E 01:9C3E: 00        .byte $00   ; 
- D 0 - I - 0x005C4F 01:9C3F: 15        .byte $15   ; 
- D 0 - I - 0x005C50 01:9C40: 00        .byte $00   ; 
- D 0 - I - 0x005C51 01:9C41: 00        .byte $00   ; 
- D 0 - I - 0x005C52 01:9C42: 00        .byte $00   ; 
- D 0 - I - 0x005C53 01:9C43: 00        .byte $00   ; 
- D 0 - I - 0x005C54 01:9C44: 00        .byte $00   ; 
- D 0 - I - 0x005C55 01:9C45: 00        .byte $00   ; 
- D 0 - I - 0x005C56 01:9C46: 00        .byte $00   ; 
- D 0 - I - 0x005C57 01:9C47: 00        .byte $00   ; 
- D 0 - I - 0x005C58 01:9C48: 00        .byte $00   ; 
- D 0 - I - 0x005C59 01:9C49: 15        .byte $15   ; 
- D 0 - I - 0x005C5A 01:9C4A: 00        .byte $00   ; 
off_9C4B_07:
- D 0 - I - 0x005C5B 01:9C4B: 00        .byte $00   ; 
- D 0 - I - 0x005C5C 01:9C4C: 14        .byte $14   ; 
- D 0 - I - 0x005C5D 01:9C4D: 00        .byte $00   ; 
- D 0 - I - 0x005C5E 01:9C4E: 00        .byte $00   ; 
- D 0 - I - 0x005C5F 01:9C4F: 00        .byte $00   ; 
- D 0 - I - 0x005C60 01:9C50: 00        .byte $00   ; 
- D 0 - I - 0x005C61 01:9C51: 00        .byte $00   ; 
- D 0 - I - 0x005C62 01:9C52: 00        .byte $00   ; 
- D 0 - I - 0x005C63 01:9C53: 00        .byte $00   ; 
- D 0 - I - 0x005C64 01:9C54: 00        .byte $00   ; 
- D 0 - I - 0x005C65 01:9C55: 00        .byte $00   ; 
- D 0 - I - 0x005C66 01:9C56: 00        .byte $00   ; 
- D 0 - I - 0x005C67 01:9C57: 00        .byte $00   ; 
- D 0 - I - 0x005C68 01:9C58: 00        .byte $00   ; 
- D 0 - I - 0x005C69 01:9C59: 00        .byte $00   ; 
- D 0 - I - 0x005C6A 01:9C5A: 25        .byte $25   ; 
- D 0 - I - 0x005C6B 01:9C5B: 00        .byte $00   ; 
- D 0 - I - 0x005C6C 01:9C5C: 00        .byte $00   ; 
- D 0 - I - 0x005C6D 01:9C5D: 00        .byte $00   ; 
- D 0 - I - 0x005C6E 01:9C5E: 00        .byte $00   ; 
- D 0 - I - 0x005C6F 01:9C5F: 00        .byte $00   ; 
- D 0 - I - 0x005C70 01:9C60: 00        .byte $00   ; 
- D 0 - I - 0x005C71 01:9C61: 00        .byte $00   ; 
- D 0 - I - 0x005C72 01:9C62: 14        .byte $14   ; 
- D 0 - I - 0x005C73 01:9C63: 00        .byte $00   ; 
- D 0 - I - 0x005C74 01:9C64: 00        .byte $00   ; 
- D 0 - I - 0x005C75 01:9C65: 00        .byte $00   ; 
- D 0 - I - 0x005C76 01:9C66: 48        .byte $48   ; 
- D 0 - I - 0x005C77 01:9C67: 60        .byte $60   ; 
off_9C68_0D:
- D 0 - I - 0x005C78 01:9C68: 6C        .byte $6C   ; 
- D 0 - I - 0x005C79 01:9C69: 6C        .byte $6C   ; 
- D 0 - I - 0x005C7A 01:9C6A: 6C        .byte $6C   ; 
- D 0 - I - 0x005C7B 01:9C6B: 78        .byte $78   ; 
- D 0 - I - 0x005C7C 01:9C6C: 5C        .byte $5C   ; 
- D 0 - I - 0x005C7D 01:9C6D: 46        .byte $46   ; 
- D 0 - I - 0x005C7E 01:9C6E: 00        .byte $00   ; 
- D 0 - I - 0x005C7F 01:9C6F: 00        .byte $00   ; 
- D 0 - I - 0x005C80 01:9C70: 14        .byte $14   ; 
- D 0 - I - 0x005C81 01:9C71: 00        .byte $00   ; 
- D 0 - I - 0x005C82 01:9C72: 00        .byte $00   ; 
- D 0 - I - 0x005C83 01:9C73: 00        .byte $00   ; 
- D 0 - I - 0x005C84 01:9C74: 00        .byte $00   ; 
- D 0 - I - 0x005C85 01:9C75: 00        .byte $00   ; 
- D 0 - I - 0x005C86 01:9C76: 00        .byte $00   ; 
- D 0 - I - 0x005C87 01:9C77: 14        .byte $14   ; 
- D 0 - I - 0x005C88 01:9C78: 00        .byte $00   ; 
- D 0 - I - 0x005C89 01:9C79: 00        .byte $00   ; 
- D 0 - I - 0x005C8A 01:9C7A: 00        .byte $00   ; 
- D 0 - I - 0x005C8B 01:9C7B: 15        .byte $15   ; 
- D 0 - I - 0x005C8C 01:9C7C: 00        .byte $00   ; 
- D 0 - I - 0x005C8D 01:9C7D: 00        .byte $00   ; 
- D 0 - I - 0x005C8E 01:9C7E: 00        .byte $00   ; 
- D 0 - I - 0x005C8F 01:9C7F: 00        .byte $00   ; 
- D 0 - I - 0x005C90 01:9C80: 00        .byte $00   ; 
- D 0 - I - 0x005C91 01:9C81: 00        .byte $00   ; 
- D 0 - I - 0x005C92 01:9C82: 00        .byte $00   ; 
- D 0 - I - 0x005C93 01:9C83: 00        .byte $00   ; 
- D 0 - I - 0x005C94 01:9C84: 00        .byte $00   ; 
- D 0 - I - 0x005C95 01:9C85: 48        .byte $48   ; 
- D 0 - I - 0x005C96 01:9C86: 60        .byte $60   ; 
- D 0 - I - 0x005C97 01:9C87: 72        .byte $72   ; 
off_9C88_00:
- D 0 - I - 0x005C98 01:9C88: 00        .byte $00   ; 
- D 0 - I - 0x005C99 01:9C89: 00        .byte $00   ; 
- D 0 - I - 0x005C9A 01:9C8A: 00        .byte $00   ; 
- D 0 - I - 0x005C9B 01:9C8B: 24        .byte $24   ; 
- D 0 - I - 0x005C9C 01:9C8C: 00        .byte $00   ; 
- D 0 - I - 0x005C9D 01:9C8D: 00        .byte $00   ; 
- D 0 - I - 0x005C9E 01:9C8E: 00        .byte $00   ; 
- D 0 - I - 0x005C9F 01:9C8F: 00        .byte $00   ; 
- D 0 - I - 0x005CA0 01:9C90: 00        .byte $00   ; 
- D 0 - I - 0x005CA1 01:9C91: 8D        .byte $8D   ; 
- D 0 - I - 0x005CA2 01:9C92: 12        .byte $12   ; 
- D 0 - I - 0x005CA3 01:9C93: 12        .byte $12   ; 
- D 0 - I - 0x005CA4 01:9C94: 12        .byte $12   ; 
- D 0 - I - 0x005CA5 01:9C95: 12        .byte $12   ; 
- D 0 - I - 0x005CA6 01:9C96: 12        .byte $12   ; 
- D 0 - I - 0x005CA7 01:9C97: 8C        .byte $8C   ; 
- D 0 - I - 0x005CA8 01:9C98: 00        .byte $00   ; 
- D 0 - I - 0x005CA9 01:9C99: 00        .byte $00   ; 
- D 0 - I - 0x005CAA 01:9C9A: 14        .byte $14   ; 
- D 0 - I - 0x005CAB 01:9C9B: 00        .byte $00   ; 
- D 0 - I - 0x005CAC 01:9C9C: 00        .byte $00   ; 
- D 0 - I - 0x005CAD 01:9C9D: 00        .byte $00   ; 
- D 0 - I - 0x005CAE 01:9C9E: 00        .byte $00   ; 
- D 0 - I - 0x005CAF 01:9C9F: 00        .byte $00   ; 
- - - - - - 0x005CB0 01:9CA0: 00        .byte $00   ; 
- - - - - - 0x005CB1 01:9CA1: 00        .byte $00   ; 
- - - - - - 0x005CB2 01:9CA2: 00        .byte $00   ; 
off_9CA3_0F:
- D 0 - I - 0x005CB3 01:9CA3: 00        .byte $00   ; 
- D 0 - I - 0x005CB4 01:9CA4: 00        .byte $00   ; 
- D 0 - I - 0x005CB5 01:9CA5: 15        .byte $15   ; 
- D 0 - I - 0x005CB6 01:9CA6: 00        .byte $00   ; 
- D 0 - I - 0x005CB7 01:9CA7: 00        .byte $00   ; 
- D 0 - I - 0x005CB8 01:9CA8: 00        .byte $00   ; 
- D 0 - I - 0x005CB9 01:9CA9: 00        .byte $00   ; 
- D 0 - I - 0x005CBA 01:9CAA: 00        .byte $00   ; 
- D 0 - I - 0x005CBB 01:9CAB: 14        .byte $14   ; 
- D 0 - I - 0x005CBC 01:9CAC: 00        .byte $00   ; 
- D 0 - I - 0x005CBD 01:9CAD: 00        .byte $00   ; 
- D 0 - I - 0x005CBE 01:9CAE: 00        .byte $00   ; 
- D 0 - I - 0x005CBF 01:9CAF: 00        .byte $00   ; 
- D 0 - I - 0x005CC0 01:9CB0: 00        .byte $00   ; 
- D 0 - I - 0x005CC1 01:9CB1: 00        .byte $00   ; 
- D 0 - I - 0x005CC2 01:9CB2: 00        .byte $00   ; 
- D 0 - I - 0x005CC3 01:9CB3: 14        .byte $14   ; 
- D 0 - I - 0x005CC4 01:9CB4: 00        .byte $00   ; 
- D 0 - I - 0x005CC5 01:9CB5: 00        .byte $00   ; 
- D 0 - I - 0x005CC6 01:9CB6: 00        .byte $00   ; 
- D 0 - I - 0x005CC7 01:9CB7: 14        .byte $14   ; 
- D 0 - I - 0x005CC8 01:9CB8: 00        .byte $00   ; 
- D 0 - I - 0x005CC9 01:9CB9: 00        .byte $00   ; 
- D 0 - I - 0x005CCA 01:9CBA: 00        .byte $00   ; 
- D 0 - I - 0x005CCB 01:9CBB: 00        .byte $00   ; 
- D 0 - I - 0x005CCC 01:9CBC: 00        .byte $00   ; 
- D 0 - I - 0x005CCD 01:9CBD: 60        .byte $60   ; 
- D 0 - I - 0x005CCE 01:9CBE: 6C        .byte $6C   ; 
- D 0 - I - 0x005CCF 01:9CBF: 6C        .byte $6C   ; 
- D 0 - I - 0x005CD0 01:9CC0: 66        .byte $66   ; 
- D 0 - I - 0x005CD1 01:9CC1: 00        .byte $00   ; 
- D 0 - I - 0x005CD2 01:9CC2: 14        .byte $14   ; 
off_9CC3_01:
- D 0 - I - 0x005CD3 01:9CC3: 00        .byte $00   ; 
- D 0 - I - 0x005CD4 01:9CC4: 00        .byte $00   ; 
- D 0 - I - 0x005CD5 01:9CC5: 14        .byte $14   ; 
- D 0 - I - 0x005CD6 01:9CC6: 25        .byte $25   ; 
- D 0 - I - 0x005CD7 01:9CC7: 00        .byte $00   ; 
- D 0 - I - 0x005CD8 01:9CC8: 00        .byte $00   ; 
- D 0 - I - 0x005CD9 01:9CC9: 14        .byte $14   ; 
- D 0 - I - 0x005CDA 01:9CCA: 00        .byte $00   ; 
- D 0 - I - 0x005CDB 01:9CCB: 00        .byte $00   ; 
- D 0 - I - 0x005CDC 01:9CCC: 00        .byte $00   ; 
- D 0 - I - 0x005CDD 01:9CCD: 00        .byte $00   ; 
- D 0 - I - 0x005CDE 01:9CCE: 00        .byte $00   ; 
- D 0 - I - 0x005CDF 01:9CCF: 00        .byte $00   ; 
- D 0 - I - 0x005CE0 01:9CD0: 00        .byte $00   ; 
- D 0 - I - 0x005CE1 01:9CD1: 00        .byte $00   ; 
- D 0 - I - 0x005CE2 01:9CD2: 24        .byte $24   ; 
off_9CD3_01:
- D 0 - I - 0x005CE3 01:9CD3: 00        .byte $00   ; 
- D 0 - I - 0x005CE4 01:9CD4: 00        .byte $00   ; 
- D 0 - I - 0x005CE5 01:9CD5: 00        .byte $00   ; 
- D 0 - I - 0x005CE6 01:9CD6: 00        .byte $00   ; 
- D 0 - I - 0x005CE7 01:9CD7: 00        .byte $00   ; 
- D 0 - I - 0x005CE8 01:9CD8: 00        .byte $00   ; 
- D 0 - I - 0x005CE9 01:9CD9: 00        .byte $00   ; 
- D 0 - I - 0x005CEA 01:9CDA: 00        .byte $00   ; 
- - - - - - 0x005CEB 01:9CDB: 00        .byte $00   ; 
- D 0 - I - 0x005CEC 01:9CDC: 00        .byte $00   ; 
- D 0 - I - 0x005CED 01:9CDD: 00        .byte $00   ; 
- D 0 - I - 0x005CEE 01:9CDE: 00        .byte $00   ; 
- D 0 - I - 0x005CEF 01:9CDF: 00        .byte $00   ; 
- D 0 - I - 0x005CF0 01:9CE0: 00        .byte $00   ; 
- D 0 - I - 0x005CF1 01:9CE1: 14        .byte $14   ; 
- D 0 - I - 0x005CF2 01:9CE2: 00        .byte $00   ; 
- D 0 - I - 0x005CF3 01:9CE3: 23        .byte $23   ; 
- D 0 - I - 0x005CF4 01:9CE4: 00        .byte $00   ; 
- D 0 - I - 0x005CF5 01:9CE5: 00        .byte $00   ; 
- D 0 - I - 0x005CF6 01:9CE6: 00        .byte $00   ; 
- D 0 - I - 0x005CF7 01:9CE7: 00        .byte $00   ; 
- D 0 - I - 0x005CF8 01:9CE8: 00        .byte $00   ; 
- D 0 - I - 0x005CF9 01:9CE9: 00        .byte $00   ; 
- D 0 - I - 0x005CFA 01:9CEA: 00        .byte $00   ; 
- D 0 - I - 0x005CFB 01:9CEB: 00        .byte $00   ; 
- D 0 - I - 0x005CFC 01:9CEC: 14        .byte $14   ; 
- D 0 - I - 0x005CFD 01:9CED: 00        .byte $00   ; 
- D 0 - I - 0x005CFE 01:9CEE: 00        .byte $00   ; 
- D 0 - I - 0x005CFF 01:9CEF: 22        .byte $22   ; 
- D 0 - I - 0x005D00 01:9CF0: 00        .byte $00   ; 
- D 0 - I - 0x005D01 01:9CF1: 00        .byte $00   ; 
- D 0 - I - 0x005D02 01:9CF2: 00        .byte $00   ; 
off_9CF3_02:
- D 0 - I - 0x005D03 01:9CF3: 00        .byte $00   ; 
- D 0 - I - 0x005D04 01:9CF4: 00        .byte $00   ; 
- D 0 - I - 0x005D05 01:9CF5: 00        .byte $00   ; 
- D 0 - I - 0x005D06 01:9CF6: 26        .byte $26   ; 
- D 0 - I - 0x005D07 01:9CF7: 00        .byte $00   ; 
- D 0 - I - 0x005D08 01:9CF8: 00        .byte $00   ; 
- D 0 - I - 0x005D09 01:9CF9: 00        .byte $00   ; 
- D 0 - I - 0x005D0A 01:9CFA: 00        .byte $00   ; 
- D 0 - I - 0x005D0B 01:9CFB: 00        .byte $00   ; 
- D 0 - I - 0x005D0C 01:9CFC: 00        .byte $00   ; 
- D 0 - I - 0x005D0D 01:9CFD: 00        .byte $00   ; 
- D 0 - I - 0x005D0E 01:9CFE: 00        .byte $00   ; 
- D 0 - I - 0x005D0F 01:9CFF: 15        .byte $15   ; 
- D 0 - I - 0x005D10 01:9D00: 00        .byte $00   ; 
- D 0 - I - 0x005D11 01:9D01: 00        .byte $00   ; 
- D 0 - I - 0x005D12 01:9D02: 25        .byte $25   ; 
- D 0 - I - 0x005D13 01:9D03: 00        .byte $00   ; 
- D 0 - I - 0x005D14 01:9D04: 00        .byte $00   ; 
- D 0 - I - 0x005D15 01:9D05: 00        .byte $00   ; 
- D 0 - I - 0x005D16 01:9D06: 00        .byte $00   ; 
- D 0 - I - 0x005D17 01:9D07: 00        .byte $00   ; 
- D 0 - I - 0x005D18 01:9D08: 00        .byte $00   ; 
- D 0 - I - 0x005D19 01:9D09: 14        .byte $14   ; 
off_9D0A_1A:
- D 0 - I - 0x005D1A 01:9D0A: 00        .byte $00   ; 
- D 0 - I - 0x005D1B 01:9D0B: 00        .byte $00   ; 
- D 0 - I - 0x005D1C 01:9D0C: 00        .byte $00   ; 
- D 0 - I - 0x005D1D 01:9D0D: 14        .byte $14   ; 
- D 0 - I - 0x005D1E 01:9D0E: 00        .byte $00   ; 
- D 0 - I - 0x005D1F 01:9D0F: 00        .byte $00   ; 
- D 0 - I - 0x005D20 01:9D10: 00        .byte $00   ; 
- D 0 - I - 0x005D21 01:9D11: 00        .byte $00   ; 
- D 0 - I - 0x005D22 01:9D12: 00        .byte $00   ; 
- D 0 - I - 0x005D23 01:9D13: 14        .byte $14   ; 
- D 0 - I - 0x005D24 01:9D14: 00        .byte $00   ; 
- D 0 - I - 0x005D25 01:9D15: 00        .byte $00   ; 
- D 0 - I - 0x005D26 01:9D16: 60        .byte $60   ; 
- D 0 - I - 0x005D27 01:9D17: 6E        .byte $6E   ; 
- D 0 - I - 0x005D28 01:9D18: 6C        .byte $6C   ; 
- D 0 - I - 0x005D29 01:9D19: 6C        .byte $6C   ; 
- D 0 - I - 0x005D2A 01:9D1A: 6C        .byte $6C   ; 
- D 0 - I - 0x005D2B 01:9D1B: 7C        .byte $7C   ; 
- D 0 - I - 0x005D2C 01:9D1C: 54        .byte $54   ; 
- D 0 - I - 0x005D2D 01:9D1D: 42        .byte $42   ; 
- D 0 - I - 0x005D2E 01:9D1E: 00        .byte $00   ; 
- D 0 - I - 0x005D2F 01:9D1F: 00        .byte $00   ; 
- D 0 - I - 0x005D30 01:9D20: 00        .byte $00   ; 
- D 0 - I - 0x005D31 01:9D21: 00        .byte $00   ; 
- D 0 - I - 0x005D32 01:9D22: 00        .byte $00   ; 
- D 0 - I - 0x005D33 01:9D23: 00        .byte $00   ; 
- D 0 - I - 0x005D34 01:9D24: 00        .byte $00   ; 
- D 0 - I - 0x005D35 01:9D25: 00        .byte $00   ; 
- D 0 - I - 0x005D36 01:9D26: 29        .byte $29   ; 
- D 0 - I - 0x005D37 01:9D27: 2A        .byte $2A   ; 
- D 0 - I - 0x005D38 01:9D28: 00        .byte $00   ; 
- D 0 - I - 0x005D39 01:9D29: 1B        .byte $1B   ; 
off_9D2A_03:
- D 0 - I - 0x005D3A 01:9D2A: 04        .byte $04   ; 
- D 0 - I - 0x005D3B 01:9D2B: 16        .byte $16   ; 
- D 0 - I - 0x005D3C 01:9D2C: 04        .byte $04   ; 
- D 0 - I - 0x005D3D 01:9D2D: 2B        .byte $2B   ; 
- D 0 - I - 0x005D3E 01:9D2E: 30        .byte $30   ; 
- D 0 - I - 0x005D3F 01:9D2F: 04        .byte $04   ; 
- D 0 - I - 0x005D40 01:9D30: 04        .byte $04   ; 
- D 0 - I - 0x005D41 01:9D31: 04        .byte $04   ; 
- D 0 - I - 0x005D42 01:9D32: 04        .byte $04   ; 
- D 0 - I - 0x005D43 01:9D33: 04        .byte $04   ; 
- D 0 - I - 0x005D44 01:9D34: 04        .byte $04   ; 
- D 0 - I - 0x005D45 01:9D35: 04        .byte $04   ; 
- D 0 - I - 0x005D46 01:9D36: 04        .byte $04   ; 
- D 0 - I - 0x005D47 01:9D37: 04        .byte $04   ; 
- D 0 - I - 0x005D48 01:9D38: 04        .byte $04   ; 
- D 0 - I - 0x005D49 01:9D39: 36        .byte $36   ; 
- D 0 - I - 0x005D4A 01:9D3A: 04        .byte $04   ; 
- D 0 - I - 0x005D4B 01:9D3B: 16        .byte $16   ; 
- D 0 - I - 0x005D4C 01:9D3C: 04        .byte $04   ; 
- D 0 - I - 0x005D4D 01:9D3D: 16        .byte $16   ; 
- D 0 - I - 0x005D4E 01:9D3E: 04        .byte $04   ; 
- D 0 - I - 0x005D4F 01:9D3F: 04        .byte $04   ; 
- D 0 - I - 0x005D50 01:9D40: 04        .byte $04   ; 
- D 0 - I - 0x005D51 01:9D41: 04        .byte $04   ; 
- - - - - - 0x005D52 01:9D42: 04        .byte $04   ; 
- - - - - - 0x005D53 01:9D43: 04        .byte $04   ; 
- - - - - - 0x005D54 01:9D44: 04        .byte $04   ; 
- - - - - - 0x005D55 01:9D45: 04        .byte $04   ; 
- - - - - - 0x005D56 01:9D46: 04        .byte $04   ; 
- - - - - - 0x005D57 01:9D47: 04        .byte $04   ; 
- - - - - - 0x005D58 01:9D48: 04        .byte $04   ; 
- - - - - - 0x005D59 01:9D49: 04        .byte $04   ; 
off_9D4A_04:
- D 0 - I - 0x005D5A 01:9D4A: 04        .byte $04   ; 
- D 0 - I - 0x005D5B 01:9D4B: 04        .byte $04   ; 
- D 0 - I - 0x005D5C 01:9D4C: 04        .byte $04   ; 
- D 0 - I - 0x005D5D 01:9D4D: 37        .byte $37   ; 
- D 0 - I - 0x005D5E 01:9D4E: 2C        .byte $2C   ; 
- D 0 - I - 0x005D5F 01:9D4F: 04        .byte $04   ; 
- D 0 - I - 0x005D60 01:9D50: 04        .byte $04   ; 
- D 0 - I - 0x005D61 01:9D51: 04        .byte $04   ; 
- D 0 - I - 0x005D62 01:9D52: 04        .byte $04   ; 
- D 0 - I - 0x005D63 01:9D53: 04        .byte $04   ; 
- D 0 - I - 0x005D64 01:9D54: 04        .byte $04   ; 
- D 0 - I - 0x005D65 01:9D55: 04        .byte $04   ; 
- D 0 - I - 0x005D66 01:9D56: 04        .byte $04   ; 
- D 0 - I - 0x005D67 01:9D57: 04        .byte $04   ; 
- D 0 - I - 0x005D68 01:9D58: 04        .byte $04   ; 
- D 0 - I - 0x005D69 01:9D59: 2B        .byte $2B   ; 
- D 0 - I - 0x005D6A 01:9D5A: 30        .byte $30   ; 
off_9D5B_0C:
- D 0 - I - 0x005D6B 01:9D5B: 04        .byte $04   ; 
- D 0 - I - 0x005D6C 01:9D5C: 04        .byte $04   ; 
- D 0 - I - 0x005D6D 01:9D5D: 04        .byte $04   ; 
- D 0 - I - 0x005D6E 01:9D5E: 04        .byte $04   ; 
- D 0 - I - 0x005D6F 01:9D5F: 04        .byte $04   ; 
- D 0 - I - 0x005D70 01:9D60: 04        .byte $04   ; 
- D 0 - I - 0x005D71 01:9D61: 04        .byte $04   ; 
- - - - - - 0x005D72 01:9D62: 04        .byte $04   ; 
- - - - - - 0x005D73 01:9D63: 04        .byte $04   ; 
- D 0 - I - 0x005D74 01:9D64: 04        .byte $04   ; 
- D 0 - I - 0x005D75 01:9D65: 04        .byte $04   ; 
- D 0 - I - 0x005D76 01:9D66: 04        .byte $04   ; 
- D 0 - I - 0x005D77 01:9D67: 04        .byte $04   ; 
- D 0 - I - 0x005D78 01:9D68: 04        .byte $04   ; 
- D 0 - I - 0x005D79 01:9D69: 04        .byte $04   ; 
- D 0 - I - 0x005D7A 01:9D6A: 04        .byte $04   ; 
- D 0 - I - 0x005D7B 01:9D6B: 04        .byte $04   ; 
- D 0 - I - 0x005D7C 01:9D6C: 04        .byte $04   ; 
- D 0 - I - 0x005D7D 01:9D6D: 36        .byte $36   ; 
- D 0 - I - 0x005D7E 01:9D6E: 11        .byte $11   ; 
- D 0 - I - 0x005D7F 01:9D6F: 11        .byte $11   ; 
- D 0 - I - 0x005D80 01:9D70: 11        .byte $11   ; 
- D 0 - I - 0x005D81 01:9D71: 11        .byte $11   ; 
- D 0 - I - 0x005D82 01:9D72: 11        .byte $11   ; 
- D 0 - I - 0x005D83 01:9D73: 11        .byte $11   ; 
- D 0 - I - 0x005D84 01:9D74: 11        .byte $11   ; 
- D 0 - I - 0x005D85 01:9D75: E5        .byte $E5   ; 
- D 0 - I - 0x005D86 01:9D76: E8        .byte $E8   ; 
- D 0 - I - 0x005D87 01:9D77: E8        .byte $E8   ; 
- D 0 - I - 0x005D88 01:9D78: E8        .byte $E8   ; 
- D 0 - I - 0x005D89 01:9D79: E9        .byte $E9   ; 
off_9D7A_0B:
- D 0 - I - 0x005D8A 01:9D7A: 6D        .byte $6D   ; 
- D 0 - I - 0x005D8B 01:9D7B: 6D        .byte $6D   ; 
- D 0 - I - 0x005D8C 01:9D7C: 6D        .byte $6D   ; 
- D 0 - I - 0x005D8D 01:9D7D: 6D        .byte $6D   ; 
- D 0 - I - 0x005D8E 01:9D7E: 6D        .byte $6D   ; 
- D 0 - I - 0x005D8F 01:9D7F: 6A        .byte $6A   ; 
- D 0 - I - 0x005D90 01:9D80: 17        .byte $17   ; 
- D 0 - I - 0x005D91 01:9D81: 04        .byte $04   ; 
- D 0 - I - 0x005D92 01:9D82: 04        .byte $04   ; 
- D 0 - I - 0x005D93 01:9D83: 04        .byte $04   ; 
- D 0 - I - 0x005D94 01:9D84: 04        .byte $04   ; 
- D 0 - I - 0x005D95 01:9D85: 04        .byte $04   ; 
- D 0 - I - 0x005D96 01:9D86: 37        .byte $37   ; 
- D 0 - I - 0x005D97 01:9D87: 2C        .byte $2C   ; 
- D 0 - I - 0x005D98 01:9D88: 04        .byte $04   ; 
- D 0 - I - 0x005D99 01:9D89: 04        .byte $04   ; 
- D 0 - I - 0x005D9A 01:9D8A: 16        .byte $16   ; 
- D 0 - I - 0x005D9B 01:9D8B: 04        .byte $04   ; 
- D 0 - I - 0x005D9C 01:9D8C: 04        .byte $04   ; 
- D 0 - I - 0x005D9D 01:9D8D: 04        .byte $04   ; 
- D 0 - I - 0x005D9E 01:9D8E: 17        .byte $17   ; 
- D 0 - I - 0x005D9F 01:9D8F: 04        .byte $04   ; 
- D 0 - I - 0x005DA0 01:9D90: 04        .byte $04   ; 
- D 0 - I - 0x005DA1 01:9D91: 04        .byte $04   ; 
- - - - - - 0x005DA2 01:9D92: 04        .byte $04   ; 
- - - - - - 0x005DA3 01:9D93: 04        .byte $04   ; 
- - - - - - 0x005DA4 01:9D94: 04        .byte $04   ; 
- - - - - - 0x005DA5 01:9D95: 04        .byte $04   ; 
- - - - - - 0x005DA6 01:9D96: 04        .byte $04   ; 
- - - - - - 0x005DA7 01:9D97: 16        .byte $16   ; 
- - - - - - 0x005DA8 01:9D98: 04        .byte $04   ; 
- - - - - - 0x005DA9 01:9D99: 04        .byte $04   ; 
off_9D9A_06:
- D 0 - I - 0x005DAA 01:9D9A: 00        .byte $00   ; 
- D 0 - I - 0x005DAB 01:9D9B: 00        .byte $00   ; 
- D 0 - I - 0x005DAC 01:9D9C: 00        .byte $00   ; 
- D 0 - I - 0x005DAD 01:9D9D: 00        .byte $00   ; 
- D 0 - I - 0x005DAE 01:9D9E: 94        .byte $94   ; 
- D 0 - I - 0x005DAF 01:9D9F: 12        .byte $12   ; 
- D 0 - I - 0x005DB0 01:9DA0: 12        .byte $12   ; 
- D 0 - I - 0x005DB1 01:9DA1: 12        .byte $12   ; 
- D 0 - I - 0x005DB2 01:9DA2: 12        .byte $12   ; 
- D 0 - I - 0x005DB3 01:9DA3: 12        .byte $12   ; 
- D 0 - I - 0x005DB4 01:9DA4: 12        .byte $12   ; 
- D 0 - I - 0x005DB5 01:9DA5: 12        .byte $12   ; 
- D 0 - I - 0x005DB6 01:9DA6: 12        .byte $12   ; 
- D 0 - I - 0x005DB7 01:9DA7: 12        .byte $12   ; 
- D 0 - I - 0x005DB8 01:9DA8: 12        .byte $12   ; 
- D 0 - I - 0x005DB9 01:9DA9: 12        .byte $12   ; 
- D 0 - I - 0x005DBA 01:9DAA: 21        .byte $21   ; 
- D 0 - I - 0x005DBB 01:9DAB: 00        .byte $00   ; 
- D 0 - I - 0x005DBC 01:9DAC: 00        .byte $00   ; 
- D 0 - I - 0x005DBD 01:9DAD: 00        .byte $00   ; 
- D 0 - I - 0x005DBE 01:9DAE: 00        .byte $00   ; 
- D 0 - I - 0x005DBF 01:9DAF: 00        .byte $00   ; 
- D 0 - I - 0x005DC0 01:9DB0: 00        .byte $00   ; 
- D 0 - I - 0x005DC1 01:9DB1: 00        .byte $00   ; 
- - - - - - 0x005DC2 01:9DB2: 14        .byte $14   ; 
- - - - - - 0x005DC3 01:9DB3: 00        .byte $00   ; 
- - - - - - 0x005DC4 01:9DB4: 00        .byte $00   ; 
- - - - - - 0x005DC5 01:9DB5: 00        .byte $00   ; 
- - - - - - 0x005DC6 01:9DB6: 00        .byte $00   ; 
- - - - - - 0x005DC7 01:9DB7: 15        .byte $15   ; 
- - - - - - 0x005DC8 01:9DB8: 00        .byte $00   ; 
- - - - - - 0x005DC9 01:9DB9: 00        .byte $00   ; 
off_9DBA_0C:
- D 0 - I - 0x005DCA 01:9DBA: 00        .byte $00   ; 
- D 0 - I - 0x005DCB 01:9DBB: 00        .byte $00   ; 
- D 0 - I - 0x005DCC 01:9DBC: 00        .byte $00   ; 
- D 0 - I - 0x005DCD 01:9DBD: 00        .byte $00   ; 
- D 0 - I - 0x005DCE 01:9DBE: 00        .byte $00   ; 
- D 0 - I - 0x005DCF 01:9DBF: 00        .byte $00   ; 
- D 0 - I - 0x005DD0 01:9DC0: 00        .byte $00   ; 
- D 0 - I - 0x005DD1 01:9DC1: 00        .byte $00   ; 
- D 0 - I - 0x005DD2 01:9DC2: 00        .byte $00   ; 
- D 0 - I - 0x005DD3 01:9DC3: 00        .byte $00   ; 
- D 0 - I - 0x005DD4 01:9DC4: 00        .byte $00   ; 
- D 0 - I - 0x005DD5 01:9DC5: 00        .byte $00   ; 
- D 0 - I - 0x005DD6 01:9DC6: 00        .byte $00   ; 
- D 0 - I - 0x005DD7 01:9DC7: 85        .byte $85   ; 
- D 0 - I - 0x005DD8 01:9DC8: 86        .byte $86   ; 
- D 0 - I - 0x005DD9 01:9DC9: 00        .byte $00   ; 
- D 0 - I - 0x005DDA 01:9DCA: 1B        .byte $1B   ; 
- D 0 - I - 0x005DDB 01:9DCB: 20        .byte $20   ; 
- D 0 - I - 0x005DDC 01:9DCC: 00        .byte $00   ; 
- D 0 - I - 0x005DDD 01:9DCD: 00        .byte $00   ; 
- D 0 - I - 0x005DDE 01:9DCE: 00        .byte $00   ; 
- D 0 - I - 0x005DDF 01:9DCF: 00        .byte $00   ; 
- D 0 - I - 0x005DE0 01:9DD0: 00        .byte $00   ; 
- D 0 - I - 0x005DE1 01:9DD1: 00        .byte $00   ; 
- - - - - - 0x005DE2 01:9DD2: 00        .byte $00   ; 
- - - - - - 0x005DE3 01:9DD3: 00        .byte $00   ; 
- - - - - - 0x005DE4 01:9DD4: 00        .byte $00   ; 
- - - - - - 0x005DE5 01:9DD5: 00        .byte $00   ; 
- - - - - - 0x005DE6 01:9DD6: 00        .byte $00   ; 
- - - - - - 0x005DE7 01:9DD7: 00        .byte $00   ; 
- - - - - - 0x005DE8 01:9DD8: 00        .byte $00   ; 
- - - - - - 0x005DE9 01:9DD9: 00        .byte $00   ; 
off_9DDA_03:
- - - - - - 0x005DEA 01:9DDA: 04        .byte $04   ; 
- - - - - - 0x005DEB 01:9DDB: 04        .byte $04   ; 
- - - - - - 0x005DEC 01:9DDC: 04        .byte $04   ; 
- - - - - - 0x005DED 01:9DDD: 04        .byte $04   ; 
- - - - - - 0x005DEE 01:9DDE: 04        .byte $04   ; 
- - - - - - 0x005DEF 01:9DDF: 04        .byte $04   ; 
- - - - - - 0x005DF0 01:9DE0: 04        .byte $04   ; 
- - - - - - 0x005DF1 01:9DE1: 04        .byte $04   ; 
- - - - - - 0x005DF2 01:9DE2: 04        .byte $04   ; 
- D 0 - I - 0x005DF3 01:9DE3: 04        .byte $04   ; 
- D 0 - I - 0x005DF4 01:9DE4: 04        .byte $04   ; 
- D 0 - I - 0x005DF5 01:9DE5: 04        .byte $04   ; 
- D 0 - I - 0x005DF6 01:9DE6: 16        .byte $16   ; 
- D 0 - I - 0x005DF7 01:9DE7: 04        .byte $04   ; 
- D 0 - I - 0x005DF8 01:9DE8: 04        .byte $04   ; 
- D 0 - I - 0x005DF9 01:9DE9: 04        .byte $04   ; 
- D 0 - I - 0x005DFA 01:9DEA: 31        .byte $31   ; 
- D 0 - I - 0x005DFB 01:9DEB: 04        .byte $04   ; 
- D 0 - I - 0x005DFC 01:9DEC: 04        .byte $04   ; 
- D 0 - I - 0x005DFD 01:9DED: 04        .byte $04   ; 
- D 0 - I - 0x005DFE 01:9DEE: 04        .byte $04   ; 
- D 0 - I - 0x005DFF 01:9DEF: 04        .byte $04   ; 
- D 0 - I - 0x005E00 01:9DF0: 04        .byte $04   ; 
- D 0 - I - 0x005E01 01:9DF1: 04        .byte $04   ; 
- D 0 - I - 0x005E02 01:9DF2: 04        .byte $04   ; 
- D 0 - I - 0x005E03 01:9DF3: 49        .byte $49   ; 
- D 0 - I - 0x005E04 01:9DF4: 61        .byte $61   ; 
- D 0 - I - 0x005E05 01:9DF5: F9        .byte $F9   ; 
- D 0 - I - 0x005E06 01:9DF6: 75        .byte $75   ; 
off_9DF7_05:
- D 0 - I - 0x005E07 01:9DF7: 6D        .byte $6D   ; 
- D 0 - I - 0x005E08 01:9DF8: 70        .byte $70   ; 
- D 0 - I - 0x005E09 01:9DF9: 6D        .byte $6D   ; 
- D 0 - I - 0x005E0A 01:9DFA: 6D        .byte $6D   ; 
- D 0 - I - 0x005E0B 01:9DFB: F5        .byte $F5   ; 
- D 0 - I - 0x005E0C 01:9DFC: 67        .byte $67   ; 
- D 0 - I - 0x005E0D 01:9DFD: 4F        .byte $4F   ; 
- D 0 - I - 0x005E0E 01:9DFE: 17        .byte $17   ; 
- D 0 - I - 0x005E0F 01:9DFF: 04        .byte $04   ; 
- D 0 - I - 0x005E10 01:9E00: 04        .byte $04   ; 
- D 0 - I - 0x005E11 01:9E01: 04        .byte $04   ; 
- D 0 - I - 0x005E12 01:9E02: 16        .byte $16   ; 
- D 0 - I - 0x005E13 01:9E03: 04        .byte $04   ; 
- D 0 - I - 0x005E14 01:9E04: 04        .byte $04   ; 
- D 0 - I - 0x005E15 01:9E05: 04        .byte $04   ; 
- D 0 - I - 0x005E16 01:9E06: 37        .byte $37   ; 
- D 0 - I - 0x005E17 01:9E07: 2C        .byte $2C   ; 
- D 0 - I - 0x005E18 01:9E08: 04        .byte $04   ; 
- D 0 - I - 0x005E19 01:9E09: 04        .byte $04   ; 
- D 0 - I - 0x005E1A 01:9E0A: 17        .byte $17   ; 
- D 0 - I - 0x005E1B 01:9E0B: 04        .byte $04   ; 
- D 0 - I - 0x005E1C 01:9E0C: 04        .byte $04   ; 
- D 0 - I - 0x005E1D 01:9E0D: 16        .byte $16   ; 
- D 0 - I - 0x005E1E 01:9E0E: 04        .byte $04   ; 
- - - - - - 0x005E1F 01:9E0F: 04        .byte $04   ; 
- - - - - - 0x005E20 01:9E10: 04        .byte $04   ; 
- - - - - - 0x005E21 01:9E11: 04        .byte $04   ; 
- - - - - - 0x005E22 01:9E12: 04        .byte $04   ; 
- - - - - - 0x005E23 01:9E13: 04        .byte $04   ; 
- - - - - - 0x005E24 01:9E14: 04        .byte $04   ; 
- - - - - - 0x005E25 01:9E15: 04        .byte $04   ; 
- - - - - - 0x005E26 01:9E16: 04        .byte $04   ; 
off_9E17_05:
- - - - - - 0x005E27 01:9E17: 04        .byte $04   ; 
- - - - - - 0x005E28 01:9E18: 04        .byte $04   ; 
- - - - - - 0x005E29 01:9E19: 04        .byte $04   ; 
- - - - - - 0x005E2A 01:9E1A: 04        .byte $04   ; 
- - - - - - 0x005E2B 01:9E1B: 04        .byte $04   ; 
- - - - - - 0x005E2C 01:9E1C: 04        .byte $04   ; 
- - - - - - 0x005E2D 01:9E1D: 04        .byte $04   ; 
- - - - - - 0x005E2E 01:9E1E: 17        .byte $17   ; 
- - - - - - 0x005E2F 01:9E1F: 04        .byte $04   ; 
- D 0 - I - 0x005E30 01:9E20: 16        .byte $16   ; 
- D 0 - I - 0x005E31 01:9E21: 16        .byte $16   ; 
- D 0 - I - 0x005E32 01:9E22: 04        .byte $04   ; 
- D 0 - I - 0x005E33 01:9E23: 04        .byte $04   ; 
- D 0 - I - 0x005E34 01:9E24: 04        .byte $04   ; 
- D 0 - I - 0x005E35 01:9E25: 04        .byte $04   ; 
- D 0 - I - 0x005E36 01:9E26: 2B        .byte $2B   ; 
- D 0 - I - 0x005E37 01:9E27: 30        .byte $30   ; 
- D 0 - I - 0x005E38 01:9E28: 04        .byte $04   ; 
- D 0 - I - 0x005E39 01:9E29: 04        .byte $04   ; 
- D 0 - I - 0x005E3A 01:9E2A: 04        .byte $04   ; 
- D 0 - I - 0x005E3B 01:9E2B: 04        .byte $04   ; 
- D 0 - I - 0x005E3C 01:9E2C: 04        .byte $04   ; 
- D 0 - I - 0x005E3D 01:9E2D: 04        .byte $04   ; 
- D 0 - I - 0x005E3E 01:9E2E: 16        .byte $16   ; 
- D 0 - I - 0x005E3F 01:9E2F: 61        .byte $61   ; 
- D 0 - I - 0x005E40 01:9E30: 6D        .byte $6D   ; 
- D 0 - I - 0x005E41 01:9E31: 71        .byte $71   ; 
- D 0 - I - 0x005E42 01:9E32: F8        .byte $F8   ; 
off_9E33_0B:
- D 0 - I - 0x005E43 01:9E33: 6D        .byte $6D   ; 
- D 0 - I - 0x005E44 01:9E34: 6D        .byte $6D   ; 
- D 0 - I - 0x005E45 01:9E35: 6D        .byte $6D   ; 
- D 0 - I - 0x005E46 01:9E36: 6D        .byte $6D   ; 
- D 0 - I - 0x005E47 01:9E37: 70        .byte $70   ; 
- D 0 - I - 0x005E48 01:9E38: 67        .byte $67   ; 
- D 0 - I - 0x005E49 01:9E39: 04        .byte $04   ; 
- D 0 - I - 0x005E4A 01:9E3A: 04        .byte $04   ; 
- D 0 - I - 0x005E4B 01:9E3B: 04        .byte $04   ; 
- D 0 - I - 0x005E4C 01:9E3C: 04        .byte $04   ; 
- D 0 - I - 0x005E4D 01:9E3D: 04        .byte $04   ; 
- D 0 - I - 0x005E4E 01:9E3E: 04        .byte $04   ; 
- D 0 - I - 0x005E4F 01:9E3F: 04        .byte $04   ; 
- D 0 - I - 0x005E50 01:9E40: 04        .byte $04   ; 
- D 0 - I - 0x005E51 01:9E41: 04        .byte $04   ; 
- D 0 - I - 0x005E52 01:9E42: 04        .byte $04   ; 
- D 0 - I - 0x005E53 01:9E43: 04        .byte $04   ; 
- D 0 - I - 0x005E54 01:9E44: 04        .byte $04   ; 
- D 0 - I - 0x005E55 01:9E45: 04        .byte $04   ; 
- D 0 - I - 0x005E56 01:9E46: 04        .byte $04   ; 
- D 0 - I - 0x005E57 01:9E47: 04        .byte $04   ; 
- D 0 - I - 0x005E58 01:9E48: 04        .byte $04   ; 
- D 0 - I - 0x005E59 01:9E49: 04        .byte $04   ; 
- D 0 - I - 0x005E5A 01:9E4A: 04        .byte $04   ; 
- D 0 - I - 0x005E5B 01:9E4B: 04        .byte $04   ; 
- D 0 - I - 0x005E5C 01:9E4C: 04        .byte $04   ; 
- D 0 - I - 0x005E5D 01:9E4D: 04        .byte $04   ; 
- D 0 - I - 0x005E5E 01:9E4E: 04        .byte $04   ; 
- D 0 - I - 0x005E5F 01:9E4F: 04        .byte $04   ; 
- D 0 - I - 0x005E60 01:9E50: 04        .byte $04   ; 
- D 0 - I - 0x005E61 01:9E51: 04        .byte $04   ; 
- D 0 - I - 0x005E62 01:9E52: 2B        .byte $2B   ; 
off_9E53_06:
- - - - - - 0x005E63 01:9E53: 00        .byte $00   ; 
- - - - - - 0x005E64 01:9E54: 00        .byte $00   ; 
- - - - - - 0x005E65 01:9E55: 00        .byte $00   ; 
- - - - - - 0x005E66 01:9E56: 00        .byte $00   ; 
- - - - - - 0x005E67 01:9E57: 00        .byte $00   ; 
- - - - - - 0x005E68 01:9E58: 00        .byte $00   ; 
- - - - - - 0x005E69 01:9E59: 00        .byte $00   ; 
- - - - - - 0x005E6A 01:9E5A: 00        .byte $00   ; 
- - - - - - 0x005E6B 01:9E5B: 00        .byte $00   ; 
- D 0 - I - 0x005E6C 01:9E5C: 00        .byte $00   ; 
- D 0 - I - 0x005E6D 01:9E5D: 00        .byte $00   ; 
- D 0 - I - 0x005E6E 01:9E5E: 00        .byte $00   ; 
- D 0 - I - 0x005E6F 01:9E5F: 00        .byte $00   ; 
- D 0 - I - 0x005E70 01:9E60: 00        .byte $00   ; 
- D 0 - I - 0x005E71 01:9E61: 00        .byte $00   ; 
- D 0 - I - 0x005E72 01:9E62: 26        .byte $26   ; 
- D 0 - I - 0x005E73 01:9E63: 12        .byte $12   ; 
- D 0 - I - 0x005E74 01:9E64: 12        .byte $12   ; 
- D 0 - I - 0x005E75 01:9E65: 12        .byte $12   ; 
- D 0 - I - 0x005E76 01:9E66: 12        .byte $12   ; 
- D 0 - I - 0x005E77 01:9E67: 12        .byte $12   ; 
- D 0 - I - 0x005E78 01:9E68: 12        .byte $12   ; 
- D 0 - I - 0x005E79 01:9E69: 12        .byte $12   ; 
- D 0 - I - 0x005E7A 01:9E6A: 12        .byte $12   ; 
- D 0 - I - 0x005E7B 01:9E6B: 63        .byte $63   ; 
- D 0 - I - 0x005E7C 01:9E6C: 77        .byte $77   ; 
- D 0 - I - 0x005E7D 01:9E6D: 77        .byte $77   ; 
- D 0 - I - 0x005E7E 01:9E6E: E7        .byte $E7   ; 
- D 0 - I - 0x005E7F 01:9E6F: 6C        .byte $6C   ; 
off_9E70_08:
- D 0 - I - 0x005E80 01:9E70: 6E        .byte $6E   ; 
- D 0 - I - 0x005E81 01:9E71: 6C        .byte $6C   ; 
- D 0 - I - 0x005E82 01:9E72: 6C        .byte $6C   ; 
- D 0 - I - 0x005E83 01:9E73: 69        .byte $69   ; 
- D 0 - I - 0x005E84 01:9E74: 00        .byte $00   ; 
- D 0 - I - 0x005E85 01:9E75: 14        .byte $14   ; 
- D 0 - I - 0x005E86 01:9E76: 00        .byte $00   ; 
- D 0 - I - 0x005E87 01:9E77: 00        .byte $00   ; 
- D 0 - I - 0x005E88 01:9E78: 00        .byte $00   ; 
- D 0 - I - 0x005E89 01:9E79: 00        .byte $00   ; 
- D 0 - I - 0x005E8A 01:9E7A: 00        .byte $00   ; 
- D 0 - I - 0x005E8B 01:9E7B: 15        .byte $15   ; 
- D 0 - I - 0x005E8C 01:9E7C: 00        .byte $00   ; 
- D 0 - I - 0x005E8D 01:9E7D: 00        .byte $00   ; 
- D 0 - I - 0x005E8E 01:9E7E: 00        .byte $00   ; 
- D 0 - I - 0x005E8F 01:9E7F: 00        .byte $00   ; 
- D 0 - I - 0x005E90 01:9E80: 00        .byte $00   ; 
- D 0 - I - 0x005E91 01:9E81: 00        .byte $00   ; 
- D 0 - I - 0x005E92 01:9E82: 00        .byte $00   ; 
- D 0 - I - 0x005E93 01:9E83: 00        .byte $00   ; 
- D 0 - I - 0x005E94 01:9E84: 00        .byte $00   ; 
- D 0 - I - 0x005E95 01:9E85: 00        .byte $00   ; 
- D 0 - I - 0x005E96 01:9E86: 00        .byte $00   ; 
- D 0 - I - 0x005E97 01:9E87: 00        .byte $00   ; 
- D 0 - I - 0x005E98 01:9E88: 00        .byte $00   ; 
- D 0 - I - 0x005E99 01:9E89: 00        .byte $00   ; 
- D 0 - I - 0x005E9A 01:9E8A: 00        .byte $00   ; 
- D 0 - I - 0x005E9B 01:9E8B: 00        .byte $00   ; 
- D 0 - I - 0x005E9C 01:9E8C: 00        .byte $00   ; 
- D 0 - I - 0x005E9D 01:9E8D: 00        .byte $00   ; 
- D 0 - I - 0x005E9E 01:9E8E: 00        .byte $00   ; 
- D 0 - I - 0x005E9F 01:9E8F: 1B        .byte $1B   ; 
off_9E90_08:
- - - - - - 0x005EA0 01:9E90: 00        .byte $00   ; 
- - - - - - 0x005EA1 01:9E91: 00        .byte $00   ; 
- - - - - - 0x005EA2 01:9E92: 00        .byte $00   ; 
- - - - - - 0x005EA3 01:9E93: 00        .byte $00   ; 
- - - - - - 0x005EA4 01:9E94: 00        .byte $00   ; 
- - - - - - 0x005EA5 01:9E95: 00        .byte $00   ; 
- - - - - - 0x005EA6 01:9E96: 00        .byte $00   ; 
- - - - - - 0x005EA7 01:9E97: 00        .byte $00   ; 
- - - - - - 0x005EA8 01:9E98: 00        .byte $00   ; 
- D 0 - I - 0x005EA9 01:9E99: 00        .byte $00   ; 
- D 0 - I - 0x005EAA 01:9E9A: 00        .byte $00   ; 
- D 0 - I - 0x005EAB 01:9E9B: 00        .byte $00   ; 
- D 0 - I - 0x005EAC 01:9E9C: 00        .byte $00   ; 
- D 0 - I - 0x005EAD 01:9E9D: 00        .byte $00   ; 
- D 0 - I - 0x005EAE 01:9E9E: 00        .byte $00   ; 
- D 0 - I - 0x005EAF 01:9E9F: 24        .byte $24   ; 
- D 0 - I - 0x005EB0 01:9EA0: 00        .byte $00   ; 
- D 0 - I - 0x005EB1 01:9EA1: 00        .byte $00   ; 
- D 0 - I - 0x005EB2 01:9EA2: 00        .byte $00   ; 
- D 0 - I - 0x005EB3 01:9EA3: 14        .byte $14   ; 
- D 0 - I - 0x005EB4 01:9EA4: 00        .byte $00   ; 
- D 0 - I - 0x005EB5 01:9EA5: 00        .byte $00   ; 
- D 0 - I - 0x005EB6 01:9EA6: 00        .byte $00   ; 
- D 0 - I - 0x005EB7 01:9EA7: 00        .byte $00   ; 
- D 0 - I - 0x005EB8 01:9EA8: 00        .byte $00   ; 
- D 0 - I - 0x005EB9 01:9EA9: 00        .byte $00   ; 
- D 0 - I - 0x005EBA 01:9EAA: 00        .byte $00   ; 
- D 0 - I - 0x005EBB 01:9EAB: 4C        .byte $4C   ; 
- D 0 - I - 0x005EBC 01:9EAC: 60        .byte $60   ; 
off_9EAD_0E:
- D 0 - I - 0x005EBD 01:9EAD: 6C        .byte $6C   ; 
- D 0 - I - 0x005EBE 01:9EAE: 6E        .byte $6E   ; 
- D 0 - I - 0x005EBF 01:9EAF: 6C        .byte $6C   ; 
- D 0 - I - 0x005EC0 01:9EB0: 6E        .byte $6E   ; 
- D 0 - I - 0x005EC1 01:9EB1: 6C        .byte $6C   ; 
- D 0 - I - 0x005EC2 01:9EB2: 7C        .byte $7C   ; 
- D 0 - I - 0x005EC3 01:9EB3: 54        .byte $54   ; 
- D 0 - I - 0x005EC4 01:9EB4: 42        .byte $42   ; 
- D 0 - I - 0x005EC5 01:9EB5: 00        .byte $00   ; 
- D 0 - I - 0x005EC6 01:9EB6: 15        .byte $15   ; 
- D 0 - I - 0x005EC7 01:9EB7: 00        .byte $00   ; 
- D 0 - I - 0x005EC8 01:9EB8: 00        .byte $00   ; 
- D 0 - I - 0x005EC9 01:9EB9: 00        .byte $00   ; 
- D 0 - I - 0x005ECA 01:9EBA: 00        .byte $00   ; 
- D 0 - I - 0x005ECB 01:9EBB: 00        .byte $00   ; 
- D 0 - I - 0x005ECC 01:9EBC: 00        .byte $00   ; 
- D 0 - I - 0x005ECD 01:9EBD: 00        .byte $00   ; 
- D 0 - I - 0x005ECE 01:9EBE: 00        .byte $00   ; 
- D 0 - I - 0x005ECF 01:9EBF: 00        .byte $00   ; 
- D 0 - I - 0x005ED0 01:9EC0: 00        .byte $00   ; 
- D 0 - I - 0x005ED1 01:9EC1: 00        .byte $00   ; 
- D 0 - I - 0x005ED2 01:9EC2: 00        .byte $00   ; 
- D 0 - I - 0x005ED3 01:9EC3: 00        .byte $00   ; 
- D 0 - I - 0x005ED4 01:9EC4: 00        .byte $00   ; 
- D 0 - I - 0x005ED5 01:9EC5: 40        .byte $40   ; 
- D 0 - I - 0x005ED6 01:9EC6: 54        .byte $54   ; 
- D 0 - I - 0x005ED7 01:9EC7: 54        .byte $54   ; 
- D 0 - I - 0x005ED8 01:9EC8: 54        .byte $54   ; 
- D 0 - I - 0x005ED9 01:9EC9: 7E        .byte $7E   ; 
- D 0 - I - 0x005EDA 01:9ECA: 6C        .byte $6C   ; 
- D 0 - I - 0x005EDB 01:9ECB: 6C        .byte $6C   ; 
- D 0 - I - 0x005EDC 01:9ECC: 72        .byte $72   ; 
off_9ECD_04:
- - - - - - 0x005EDD 01:9ECD: 00        .byte $00   ; 
- - - - - - 0x005EDE 01:9ECE: 00        .byte $00   ; 
- D 0 - I - 0x005EDF 01:9ECF: 00        .byte $00   ; 
- D 0 - I - 0x005EE0 01:9ED0: 00        .byte $00   ; 
- D 0 - I - 0x005EE1 01:9ED1: 00        .byte $00   ; 
- D 0 - I - 0x005EE2 01:9ED2: 00        .byte $00   ; 
- D 0 - I - 0x005EE3 01:9ED3: 50        .byte $50   ; 
- D 0 - I - 0x005EE4 01:9ED4: 50        .byte $50   ; 
- - - - - - 0x005EE5 01:9ED5: 00        .byte $00   ; 
- - - - - - 0x005EE6 01:9ED6: 00        .byte $00   ; 
- D 0 - I - 0x005EE7 01:9ED7: 00        .byte $00   ; 
- D 0 - I - 0x005EE8 01:9ED8: 00        .byte $00   ; 
- D 0 - I - 0x005EE9 01:9ED9: 00        .byte $00   ; 
- D 0 - I - 0x005EEA 01:9EDA: 00        .byte $00   ; 
- D 0 - I - 0x005EEB 01:9EDB: 55        .byte $55   ; 
- D 0 - I - 0x005EEC 01:9EDC: 55        .byte $55   ; 
- - - - - - 0x005EED 01:9EDD: 00        .byte $00   ; 
- - - - - - 0x005EEE 01:9EDE: 00        .byte $00   ; 
- D 0 - I - 0x005EEF 01:9EDF: 00        .byte $00   ; 
- D 0 - I - 0x005EF0 01:9EE0: 00        .byte $00   ; 
- D 0 - I - 0x005EF1 01:9EE1: 00        .byte $00   ; 
- D 0 - I - 0x005EF2 01:9EE2: 00        .byte $00   ; 
- D 0 - I - 0x005EF3 01:9EE3: 04        .byte $04   ; 
- D 0 - I - 0x005EF4 01:9EE4: 05        .byte $05   ; 
- - - - - - 0x005EF5 01:9EE5: 00        .byte $00   ; 
- - - - - - 0x005EF6 01:9EE6: 00        .byte $00   ; 
- D 0 - I - 0x005EF7 01:9EE7: 00        .byte $00   ; 
- D 0 - I - 0x005EF8 01:9EE8: 00        .byte $00   ; 
- D 0 - I - 0x005EF9 01:9EE9: 00        .byte $00   ; 
- D 0 - I - 0x005EFA 01:9EEA: 00        .byte $00   ; 
- D 0 - I - 0x005EFB 01:9EEB: 00        .byte $00   ; 
- D 0 - I - 0x005EFC 01:9EEC: 00        .byte $00   ; 
- - - - - - 0x005EFD 01:9EED: 00        .byte $00   ; 
- - - - - - 0x005EFE 01:9EEE: 00        .byte $00   ; 
- - - - - - 0x005EFF 01:9EEF: 00        .byte $00   ; 
- - - - - - 0x005F00 01:9EF0: 00        .byte $00   ; 
- - - - - - 0x005F01 01:9EF1: 00        .byte $00   ; 
- - - - - - 0x005F02 01:9EF2: 00        .byte $00   ; 
- - - - - - 0x005F03 01:9EF3: 00        .byte $00   ; 
- - - - - - 0x005F04 01:9EF4: 00        .byte $00   ; 
- - - - - - 0x005F05 01:9EF5: 00        .byte $00   ; 
- - - - - - 0x005F06 01:9EF6: 00        .byte $00   ; 
- - - - - - 0x005F07 01:9EF7: 00        .byte $00   ; 
- - - - - - 0x005F08 01:9EF8: 00        .byte $00   ; 
- - - - - - 0x005F09 01:9EF9: 00        .byte $00   ; 
- - - - - - 0x005F0A 01:9EFA: 00        .byte $00   ; 
- - - - - - 0x005F0B 01:9EFB: 00        .byte $00   ; 
- - - - - - 0x005F0C 01:9EFC: 00        .byte $00   ; 
- - - - - - 0x005F0D 01:9EFD: 00        .byte $00   ; 
- - - - - - 0x005F0E 01:9EFE: 00        .byte $00   ; 
- - - - - - 0x005F0F 01:9EFF: 00        .byte $00   ; 
- - - - - - 0x005F10 01:9F00: 00        .byte $00   ; 
- - - - - - 0x005F11 01:9F01: 00        .byte $00   ; 
- - - - - - 0x005F12 01:9F02: 00        .byte $00   ; 
- - - - - - 0x005F13 01:9F03: 00        .byte $00   ; 
- - - - - - 0x005F14 01:9F04: 00        .byte $00   ; 
- - - - - - 0x005F15 01:9F05: 00        .byte $00   ; 
- - - - - - 0x005F16 01:9F06: 00        .byte $00   ; 
- - - - - - 0x005F17 01:9F07: 00        .byte $00   ; 
- - - - - - 0x005F18 01:9F08: 00        .byte $00   ; 
- - - - - - 0x005F19 01:9F09: 00        .byte $00   ; 
- - - - - - 0x005F1A 01:9F0A: 00        .byte $00   ; 
- - - - - - 0x005F1B 01:9F0B: 00        .byte $00   ; 
- - - - - - 0x005F1C 01:9F0C: 00        .byte $00   ; 
off_9F0D_00:
- D 0 - I - 0x005F1D 01:9F0D: 00        .byte $00   ; 
- D 0 - I - 0x005F1E 01:9F0E: 00        .byte $00   ; 
- D 0 - I - 0x005F1F 01:9F0F: 00        .byte $00   ; 
- D 0 - I - 0x005F20 01:9F10: 00        .byte $00   ; 
- D 0 - I - 0x005F21 01:9F11: 00        .byte $00   ; 
- D 0 - I - 0x005F22 01:9F12: 00        .byte $00   ; 
- D 0 - I - 0x005F23 01:9F13: 00        .byte $00   ; 
- D 0 - I - 0x005F24 01:9F14: 00        .byte $00   ; 
- D 0 - I - 0x005F25 01:9F15: 00        .byte $00   ; 
- D 0 - I - 0x005F26 01:9F16: 00        .byte $00   ; 
- D 0 - I - 0x005F27 01:9F17: 00        .byte $00   ; 
- D 0 - I - 0x005F28 01:9F18: 00        .byte $00   ; 
- D 0 - I - 0x005F29 01:9F19: 00        .byte $00   ; 
- D 0 - I - 0x005F2A 01:9F1A: 00        .byte $00   ; 
- D 0 - I - 0x005F2B 01:9F1B: 60        .byte $60   ; 
- D 0 - I - 0x005F2C 01:9F1C: 6C        .byte $6C   ; 
- D 0 - I - 0x005F2D 01:9F1D: 6C        .byte $6C   ; 
- D 0 - I - 0x005F2E 01:9F1E: 6C        .byte $6C   ; 
- D 0 - I - 0x005F2F 01:9F1F: 6C        .byte $6C   ; 
- D 0 - I - 0x005F30 01:9F20: 6C        .byte $6C   ; 
- D 0 - I - 0x005F31 01:9F21: 6E        .byte $6E   ; 
- D 0 - I - 0x005F32 01:9F22: 66        .byte $66   ; 
- D 0 - I - 0x005F33 01:9F23: 00        .byte $00   ; 
- D 0 - I - 0x005F34 01:9F24: 00        .byte $00   ; 
- D 0 - I - 0x005F35 01:9F25: 00        .byte $00   ; 
- D 0 - I - 0x005F36 01:9F26: 00        .byte $00   ; 
- D 0 - I - 0x005F37 01:9F27: 00        .byte $00   ; 
- D 0 - I - 0x005F38 01:9F28: 00        .byte $00   ; 
- D 0 - I - 0x005F39 01:9F29: 14        .byte $14   ; 
- D 0 - I - 0x005F3A 01:9F2A: 00        .byte $00   ; 
- D 0 - I - 0x005F3B 01:9F2B: 00        .byte $00   ; 
- D 0 - I - 0x005F3C 01:9F2C: 1B        .byte $1B   ; 
off_9F2D_01:
- D 0 - I - 0x005F3D 01:9F2D: 00        .byte $00   ; 
- D 0 - I - 0x005F3E 01:9F2E: 00        .byte $00   ; 
- D 0 - I - 0x005F3F 01:9F2F: 00        .byte $00   ; 
- D 0 - I - 0x005F40 01:9F30: 00        .byte $00   ; 
- D 0 - I - 0x005F41 01:9F31: 00        .byte $00   ; 
- D 0 - I - 0x005F42 01:9F32: 00        .byte $00   ; 
- D 0 - I - 0x005F43 01:9F33: 00        .byte $00   ; 
- D 0 - I - 0x005F44 01:9F34: 00        .byte $00   ; 
- D 0 - I - 0x005F45 01:9F35: 00        .byte $00   ; 
- D 0 - I - 0x005F46 01:9F36: 00        .byte $00   ; 
- D 0 - I - 0x005F47 01:9F37: 00        .byte $00   ; 
- D 0 - I - 0x005F48 01:9F38: 00        .byte $00   ; 
- D 0 - I - 0x005F49 01:9F39: 00        .byte $00   ; 
- D 0 - I - 0x005F4A 01:9F3A: 00        .byte $00   ; 
- D 0 - I - 0x005F4B 01:9F3B: 44        .byte $44   ; 
- D 0 - I - 0x005F4C 01:9F3C: 5A        .byte $5A   ; 
- D 0 - I - 0x005F4D 01:9F3D: 7A        .byte $7A   ; 
- D 0 - I - 0x005F4E 01:9F3E: 6E        .byte $6E   ; 
- D 0 - I - 0x005F4F 01:9F3F: 6C        .byte $6C   ; 
- D 0 - I - 0x005F50 01:9F40: 6C        .byte $6C   ; 
- D 0 - I - 0x005F51 01:9F41: 6C        .byte $6C   ; 
- D 0 - I - 0x005F52 01:9F42: 66        .byte $66   ; 
- D 0 - I - 0x005F53 01:9F43: 4A        .byte $4A   ; 
- D 0 - I - 0x005F54 01:9F44: 00        .byte $00   ; 
- D 0 - I - 0x005F55 01:9F45: 00        .byte $00   ; 
- D 0 - I - 0x005F56 01:9F46: 00        .byte $00   ; 
- D 0 - I - 0x005F57 01:9F47: 00        .byte $00   ; 
- D 0 - I - 0x005F58 01:9F48: 00        .byte $00   ; 
- D 0 - I - 0x005F59 01:9F49: 00        .byte $00   ; 
- D 0 - I - 0x005F5A 01:9F4A: 00        .byte $00   ; 
- D 0 - I - 0x005F5B 01:9F4B: 00        .byte $00   ; 
- D 0 - I - 0x005F5C 01:9F4C: 1B        .byte $1B   ; 
off_9F4D_0A:
- D 0 - I - 0x005F5D 01:9F4D: 04        .byte $04   ; 
- D 0 - I - 0x005F5E 01:9F4E: 4D        .byte $4D   ; 
- D 0 - I - 0x005F5F 01:9F4F: 61        .byte $61   ; 
- D 0 - I - 0x005F60 01:9F50: 70        .byte $70   ; 
- D 0 - I - 0x005F61 01:9F51: 6D        .byte $6D   ; 
- D 0 - I - 0x005F62 01:9F52: 6B        .byte $6B   ; 
- D 0 - I - 0x005F63 01:9F53: 04        .byte $04   ; 
- D 0 - I - 0x005F64 01:9F54: 04        .byte $04   ; 
- D 0 - I - 0x005F65 01:9F55: 04        .byte $04   ; 
- D 0 - I - 0x005F66 01:9F56: 04        .byte $04   ; 
- D 0 - I - 0x005F67 01:9F57: 04        .byte $04   ; 
- D 0 - I - 0x005F68 01:9F58: 04        .byte $04   ; 
- D 0 - I - 0x005F69 01:9F59: 04        .byte $04   ; 
- D 0 - I - 0x005F6A 01:9F5A: 04        .byte $04   ; 
- D 0 - I - 0x005F6B 01:9F5B: 04        .byte $04   ; 
- D 0 - I - 0x005F6C 01:9F5C: 04        .byte $04   ; 
- D 0 - I - 0x005F6D 01:9F5D: 04        .byte $04   ; 
- D 0 - I - 0x005F6E 01:9F5E: 04        .byte $04   ; 
- D 0 - I - 0x005F6F 01:9F5F: 04        .byte $04   ; 
- D 0 - I - 0x005F70 01:9F60: 04        .byte $04   ; 
- D 0 - I - 0x005F71 01:9F61: 04        .byte $04   ; 
- D 0 - I - 0x005F72 01:9F62: 04        .byte $04   ; 
- D 0 - I - 0x005F73 01:9F63: 04        .byte $04   ; 
- D 0 - I - 0x005F74 01:9F64: 04        .byte $04   ; 
- D 0 - I - 0x005F75 01:9F65: 04        .byte $04   ; 
- D 0 - I - 0x005F76 01:9F66: 16        .byte $16   ; 
- D 0 - I - 0x005F77 01:9F67: 04        .byte $04   ; 
- D 0 - I - 0x005F78 01:9F68: 04        .byte $04   ; 
- D 0 - I - 0x005F79 01:9F69: 04        .byte $04   ; 
- D 0 - I - 0x005F7A 01:9F6A: 04        .byte $04   ; 
- D 0 - I - 0x005F7B 01:9F6B: 04        .byte $04   ; 
- D 0 - I - 0x005F7C 01:9F6C: 2B        .byte $2B   ; 
off_9F6D_05:
- D 0 - I - 0x005F7D 01:9F6D: 50        .byte $50   ; 
- D 0 - I - 0x005F7E 01:9F6E: 00        .byte $00   ; 
- D 0 - I - 0x005F7F 01:9F6F: 00        .byte $00   ; 
- D 0 - I - 0x005F80 01:9F70: 44        .byte $44   ; 
- D 0 - I - 0x005F81 01:9F71: 55        .byte $55   ; 
- D 0 - I - 0x005F82 01:9F72: 55        .byte $55   ; 
- D 0 - I - 0x005F83 01:9F73: 10        .byte $10   ; 
- D 0 - I - 0x005F84 01:9F74: 00        .byte $00   ; 
- D 0 - I - 0x005F85 01:9F75: 55        .byte $55   ; 
- D 0 - I - 0x005F86 01:9F76: 11        .byte $11   ; 
- D 0 - I - 0x005F87 01:9F77: 00        .byte $00   ; 
- D 0 - I - 0x005F88 01:9F78: 00        .byte $00   ; 
- D 0 - I - 0x005F89 01:9F79: 05        .byte $05   ; 
- D 0 - I - 0x005F8A 01:9F7A: 05        .byte $05   ; 
- D 0 - I - 0x005F8B 01:9F7B: 01        .byte $01   ; 
- D 0 - I - 0x005F8C 01:9F7C: 00        .byte $00   ; 
- D 0 - I - 0x005F8D 01:9F7D: 55        .byte $55   ; 
- D 0 - I - 0x005F8E 01:9F7E: 11        .byte $11   ; 
- D 0 - I - 0x005F8F 01:9F7F: 00        .byte $00   ; 
- D 0 - I - 0x005F90 01:9F80: 00        .byte $00   ; 
- D 0 - I - 0x005F91 01:9F81: 00        .byte $00   ; 
- D 0 - I - 0x005F92 01:9F82: 00        .byte $00   ; 
- D 0 - I - 0x005F93 01:9F83: 00        .byte $00   ; 
- D 0 - I - 0x005F94 01:9F84: 00        .byte $00   ; 
- D 0 - I - 0x005F95 01:9F85: 00        .byte $00   ; 
- D 0 - I - 0x005F96 01:9F86: 00        .byte $00   ; 
- D 0 - I - 0x005F97 01:9F87: 00        .byte $00   ; 
- D 0 - I - 0x005F98 01:9F88: 00        .byte $00   ; 
- D 0 - I - 0x005F99 01:9F89: 00        .byte $00   ; 
- D 0 - I - 0x005F9A 01:9F8A: 00        .byte $00   ; 
- D 0 - I - 0x005F9B 01:9F8B: 00        .byte $00   ; 
- D 0 - I - 0x005F9C 01:9F8C: 00        .byte $00   ; 
- - - - - - 0x005F9D 01:9F8D: 00        .byte $00   ; 
- - - - - - 0x005F9E 01:9F8E: 00        .byte $00   ; 
- - - - - - 0x005F9F 01:9F8F: 00        .byte $00   ; 
- - - - - - 0x005FA0 01:9F90: 00        .byte $00   ; 
- - - - - - 0x005FA1 01:9F91: 00        .byte $00   ; 
- - - - - - 0x005FA2 01:9F92: 00        .byte $00   ; 
- - - - - - 0x005FA3 01:9F93: 00        .byte $00   ; 
- - - - - - 0x005FA4 01:9F94: 00        .byte $00   ; 
- - - - - - 0x005FA5 01:9F95: 00        .byte $00   ; 
- - - - - - 0x005FA6 01:9F96: 00        .byte $00   ; 
- - - - - - 0x005FA7 01:9F97: 00        .byte $00   ; 
- - - - - - 0x005FA8 01:9F98: 00        .byte $00   ; 
- - - - - - 0x005FA9 01:9F99: 00        .byte $00   ; 
- - - - - - 0x005FAA 01:9F9A: 00        .byte $00   ; 
- - - - - - 0x005FAB 01:9F9B: 00        .byte $00   ; 
- - - - - - 0x005FAC 01:9F9C: 00        .byte $00   ; 
- - - - - - 0x005FAD 01:9F9D: 00        .byte $00   ; 
- - - - - - 0x005FAE 01:9F9E: 00        .byte $00   ; 
- - - - - - 0x005FAF 01:9F9F: 00        .byte $00   ; 
- - - - - - 0x005FB0 01:9FA0: 00        .byte $00   ; 
- - - - - - 0x005FB1 01:9FA1: 00        .byte $00   ; 
- - - - - - 0x005FB2 01:9FA2: 00        .byte $00   ; 
- - - - - - 0x005FB3 01:9FA3: 00        .byte $00   ; 
- - - - - - 0x005FB4 01:9FA4: 00        .byte $00   ; 
- - - - - - 0x005FB5 01:9FA5: 00        .byte $00   ; 
- - - - - - 0x005FB6 01:9FA6: 00        .byte $00   ; 
- - - - - - 0x005FB7 01:9FA7: 00        .byte $00   ; 
- - - - - - 0x005FB8 01:9FA8: 00        .byte $00   ; 
- - - - - - 0x005FB9 01:9FA9: 00        .byte $00   ; 
- - - - - - 0x005FBA 01:9FAA: 00        .byte $00   ; 
- - - - - - 0x005FBB 01:9FAB: 00        .byte $00   ; 
- - - - - - 0x005FBC 01:9FAC: 00        .byte $00   ; 
off_9FAD_00:
- D 0 - I - 0x005FBD 01:9FAD: 1C        .byte $1C   ; 
- D 0 - I - 0x005FBE 01:9FAE: 00        .byte $00   ; 
- D 0 - I - 0x005FBF 01:9FAF: 00        .byte $00   ; 
- D 0 - I - 0x005FC0 01:9FB0: 00        .byte $00   ; 
- D 0 - I - 0x005FC1 01:9FB1: 00        .byte $00   ; 
- D 0 - I - 0x005FC2 01:9FB2: 00        .byte $00   ; 
- D 0 - I - 0x005FC3 01:9FB3: 00        .byte $00   ; 
- D 0 - I - 0x005FC4 01:9FB4: 00        .byte $00   ; 
- D 0 - I - 0x005FC5 01:9FB5: 00        .byte $00   ; 
- D 0 - I - 0x005FC6 01:9FB6: 00        .byte $00   ; 
- D 0 - I - 0x005FC7 01:9FB7: 00        .byte $00   ; 
- D 0 - I - 0x005FC8 01:9FB8: 00        .byte $00   ; 
- D 0 - I - 0x005FC9 01:9FB9: 00        .byte $00   ; 
- D 0 - I - 0x005FCA 01:9FBA: 00        .byte $00   ; 
- D 0 - I - 0x005FCB 01:9FBB: 60        .byte $60   ; 
- D 0 - I - 0x005FCC 01:9FBC: 6C        .byte $6C   ; 
- D 0 - I - 0x005FCD 01:9FBD: 6C        .byte $6C   ; 
- D 0 - I - 0x005FCE 01:9FBE: 6C        .byte $6C   ; 
- D 0 - I - 0x005FCF 01:9FBF: 6C        .byte $6C   ; 
- D 0 - I - 0x005FD0 01:9FC0: 6C        .byte $6C   ; 
- D 0 - I - 0x005FD1 01:9FC1: 6C        .byte $6C   ; 
- D 0 - I - 0x005FD2 01:9FC2: 66        .byte $66   ; 
- D 0 - I - 0x005FD3 01:9FC3: 00        .byte $00   ; 
- D 0 - I - 0x005FD4 01:9FC4: 00        .byte $00   ; 
- D 0 - I - 0x005FD5 01:9FC5: 00        .byte $00   ; 
- D 0 - I - 0x005FD6 01:9FC6: 00        .byte $00   ; 
- D 0 - I - 0x005FD7 01:9FC7: 00        .byte $00   ; 
- D 0 - I - 0x005FD8 01:9FC8: 00        .byte $00   ; 
- D 0 - I - 0x005FD9 01:9FC9: 00        .byte $00   ; 
- D 0 - I - 0x005FDA 01:9FCA: 00        .byte $00   ; 
- D 0 - I - 0x005FDB 01:9FCB: 00        .byte $00   ; 
- D 0 - I - 0x005FDC 01:9FCC: 00        .byte $00   ; 
off_9FCD_01:
- D 0 - I - 0x005FDD 01:9FCD: 1C        .byte $1C   ; 
- D 0 - I - 0x005FDE 01:9FCE: 00        .byte $00   ; 
- D 0 - I - 0x005FDF 01:9FCF: 00        .byte $00   ; 
- D 0 - I - 0x005FE0 01:9FD0: 00        .byte $00   ; 
- D 0 - I - 0x005FE1 01:9FD1: 00        .byte $00   ; 
- D 0 - I - 0x005FE2 01:9FD2: 00        .byte $00   ; 
- D 0 - I - 0x005FE3 01:9FD3: 00        .byte $00   ; 
- D 0 - I - 0x005FE4 01:9FD4: 00        .byte $00   ; 
- D 0 - I - 0x005FE5 01:9FD5: 00        .byte $00   ; 
- D 0 - I - 0x005FE6 01:9FD6: 00        .byte $00   ; 
- D 0 - I - 0x005FE7 01:9FD7: 00        .byte $00   ; 
- D 0 - I - 0x005FE8 01:9FD8: 14        .byte $14   ; 
- D 0 - I - 0x005FE9 01:9FD9: 00        .byte $00   ; 
- D 0 - I - 0x005FEA 01:9FDA: 48        .byte $48   ; 
- D 0 - I - 0x005FEB 01:9FDB: 60        .byte $60   ; 
- D 0 - I - 0x005FEC 01:9FDC: 6C        .byte $6C   ; 
- D 0 - I - 0x005FED 01:9FDD: 6C        .byte $6C   ; 
- D 0 - I - 0x005FEE 01:9FDE: 6C        .byte $6C   ; 
- D 0 - I - 0x005FEF 01:9FDF: 6C        .byte $6C   ; 
- D 0 - I - 0x005FF0 01:9FE0: 6F        .byte $6F   ; 
- D 0 - I - 0x005FF1 01:9FE1: 6C        .byte $6C   ; 
- D 0 - I - 0x005FF2 01:9FE2: 68        .byte $68   ; 
- D 0 - I - 0x005FF3 01:9FE3: 00        .byte $00   ; 
- D 0 - I - 0x005FF4 01:9FE4: 00        .byte $00   ; 
- D 0 - I - 0x005FF5 01:9FE5: 00        .byte $00   ; 
- D 0 - I - 0x005FF6 01:9FE6: 00        .byte $00   ; 
- D 0 - I - 0x005FF7 01:9FE7: 00        .byte $00   ; 
- D 0 - I - 0x005FF8 01:9FE8: 00        .byte $00   ; 
- D 0 - I - 0x005FF9 01:9FE9: 00        .byte $00   ; 
- D 0 - I - 0x005FFA 01:9FEA: 00        .byte $00   ; 
- D 0 - I - 0x005FFB 01:9FEB: 00        .byte $00   ; 
- D 0 - I - 0x005FFC 01:9FEC: 00        .byte $00   ; 
off_9FED_02:
- D 0 - I - 0x005FFD 01:9FED: 1C        .byte $1C   ; 
- D 0 - I - 0x005FFE 01:9FEE: 00        .byte $00   ; 
- D 0 - I - 0x005FFF 01:9FEF: 14        .byte $14   ; 
- D 0 - I - 0x006000 01:9FF0: 00        .byte $00   ; 
- D 0 - I - 0x006001 01:9FF1: 00        .byte $00   ; 
- D 0 - I - 0x006002 01:9FF2: 00        .byte $00   ; 
- D 0 - I - 0x006003 01:9FF3: 00        .byte $00   ; 
- D 0 - I - 0x006004 01:9FF4: 00        .byte $00   ; 
- D 0 - I - 0x006005 01:9FF5: 00        .byte $00   ; 
- D 0 - I - 0x006006 01:9FF6: 00        .byte $00   ; 
- D 0 - I - 0x006007 01:9FF7: 00        .byte $00   ; 
- D 0 - I - 0x006008 01:9FF8: 00        .byte $00   ; 
- D 0 - I - 0x006009 01:9FF9: 40        .byte $40   ; 
- D 0 - I - 0x00600A 01:9FFA: 54        .byte $54   ; 
- D 0 - I - 0x00600B 01:9FFB: 7E        .byte $7E   ; 
- D 0 - I - 0x00600C 01:9FFC: 6C        .byte $6C   ; 
- D 0 - I - 0x00600D 01:9FFD: 6E        .byte $6E   ; 
- D 0 - I - 0x00600E 01:9FFE: 6C        .byte $6C   ; 
- D 0 - I - 0x00600F 01:9FFF: 6C        .byte $6C   ; 
- D 1 - - - 0x006010 01:A000: 6C        .byte $6C   ; 
- D 1 - I - 0x006011 01:A001: 6C        .byte $6C   ; 
- D 1 - I - 0x006012 01:A002: 69        .byte $69   ; 
- D 1 - I - 0x006013 01:A003: 00        .byte $00   ; 
- D 1 - I - 0x006014 01:A004: 00        .byte $00   ; 
- D 1 - I - 0x006015 01:A005: 14        .byte $14   ; 
- D 1 - I - 0x006016 01:A006: 00        .byte $00   ; 
- D 1 - I - 0x006017 01:A007: 00        .byte $00   ; 
off_A008_0A:
- D 1 - I - 0x006018 01:A008: 00        .byte $00   ; 
- D 1 - I - 0x006019 01:A009: 00        .byte $00   ; 
- D 1 - I - 0x00601A 01:A00A: 00        .byte $00   ; 
- D 1 - I - 0x00601B 01:A00B: 15        .byte $15   ; 
- D 1 - I - 0x00601C 01:A00C: 00        .byte $00   ; 
- D 1 - I - 0x00601D 01:A00D: 14        .byte $14   ; 
- D 1 - I - 0x00601E 01:A00E: 00        .byte $00   ; 
- D 1 - I - 0x00601F 01:A00F: 00        .byte $00   ; 
- D 1 - I - 0x006020 01:A010: 00        .byte $00   ; 
- D 1 - I - 0x006021 01:A011: 00        .byte $00   ; 
- D 1 - I - 0x006022 01:A012: 00        .byte $00   ; 
- D 1 - I - 0x006023 01:A013: 00        .byte $00   ; 
- D 1 - I - 0x006024 01:A014: 00        .byte $00   ; 
- D 1 - I - 0x006025 01:A015: 00        .byte $00   ; 
- D 1 - I - 0x006026 01:A016: 14        .byte $14   ; 
- D 1 - I - 0x006027 01:A017: 00        .byte $00   ; 
- D 1 - I - 0x006028 01:A018: 00        .byte $00   ; 
- D 1 - I - 0x006029 01:A019: 00        .byte $00   ; 
- D 1 - I - 0x00602A 01:A01A: 00        .byte $00   ; 
off_A01B_0A:
- D 1 - I - 0x00602B 01:A01B: 00        .byte $00   ; 
- D 1 - I - 0x00602C 01:A01C: 00        .byte $00   ; 
- D 1 - I - 0x00602D 01:A01D: 00        .byte $00   ; 
- D 1 - I - 0x00602E 01:A01E: 00        .byte $00   ; 
- D 1 - I - 0x00602F 01:A01F: 00        .byte $00   ; 
- D 1 - I - 0x006030 01:A020: 00        .byte $00   ; 
- D 1 - I - 0x006031 01:A021: 00        .byte $00   ; 
- D 1 - I - 0x006032 01:A022: 00        .byte $00   ; 
- D 1 - I - 0x006033 01:A023: 00        .byte $00   ; 
- D 1 - I - 0x006034 01:A024: 00        .byte $00   ; 
- D 1 - I - 0x006035 01:A025: 00        .byte $00   ; 
- D 1 - I - 0x006036 01:A026: 00        .byte $00   ; 
- D 1 - I - 0x006037 01:A027: 1B        .byte $1B   ; 
- D 1 - I - 0x006038 01:A028: 20        .byte $20   ; 
- D 1 - I - 0x006039 01:A029: 00        .byte $00   ; 
- D 1 - I - 0x00603A 01:A02A: 00        .byte $00   ; 
off_A02B_08:
- D 1 - I - 0x00603B 01:A02B: 00        .byte $00   ; 
- D 1 - I - 0x00603C 01:A02C: 00        .byte $00   ; 
- D 1 - I - 0x00603D 01:A02D: 00        .byte $00   ; 
- D 1 - I - 0x00603E 01:A02E: 00        .byte $00   ; 
- D 1 - I - 0x00603F 01:A02F: 00        .byte $00   ; 
- D 1 - I - 0x006040 01:A030: 00        .byte $00   ; 
- D 1 - I - 0x006041 01:A031: 00        .byte $00   ; 
- D 1 - I - 0x006042 01:A032: 00        .byte $00   ; 
- D 1 - I - 0x006043 01:A033: 14        .byte $14   ; 
- D 1 - I - 0x006044 01:A034: 00        .byte $00   ; 
- D 1 - I - 0x006045 01:A035: 00        .byte $00   ; 
- D 1 - I - 0x006046 01:A036: 00        .byte $00   ; 
- D 1 - I - 0x006047 01:A037: 00        .byte $00   ; 
- D 1 - I - 0x006048 01:A038: 00        .byte $00   ; 
- D 1 - I - 0x006049 01:A039: 00        .byte $00   ; 
- D 1 - I - 0x00604A 01:A03A: 00        .byte $00   ; 
- D 1 - I - 0x00604B 01:A03B: 23        .byte $23   ; 
- D 1 - I - 0x00604C 01:A03C: 00        .byte $00   ; 
- D 1 - I - 0x00604D 01:A03D: 00        .byte $00   ; 
- D 1 - I - 0x00604E 01:A03E: 00        .byte $00   ; 
off_A03F_09:
- D 1 - I - 0x00604F 01:A03F: 14        .byte $14   ; 
- D 1 - I - 0x006050 01:A040: 00        .byte $00   ; 
- D 1 - I - 0x006051 01:A041: 00        .byte $00   ; 
- D 1 - I - 0x006052 01:A042: 00        .byte $00   ; 
- D 1 - I - 0x006053 01:A043: 00        .byte $00   ; 
- D 1 - I - 0x006054 01:A044: 00        .byte $00   ; 
- D 1 - I - 0x006055 01:A045: 00        .byte $00   ; 
- D 1 - I - 0x006056 01:A046: 14        .byte $14   ; 
- D 1 - I - 0x006057 01:A047: 00        .byte $00   ; 
- D 1 - I - 0x006058 01:A048: 00        .byte $00   ; 
- D 1 - I - 0x006059 01:A049: 00        .byte $00   ; 
- D 1 - I - 0x00605A 01:A04A: 00        .byte $00   ; 
- D 1 - I - 0x00605B 01:A04B: 26        .byte $26   ; 
- D 1 - I - 0x00605C 01:A04C: 00        .byte $00   ; 
- D 1 - I - 0x00605D 01:A04D: 00        .byte $00   ; 
- D 1 - I - 0x00605E 01:A04E: 00        .byte $00   ; 
- D 1 - I - 0x00605F 01:A04F: 00        .byte $00   ; 
- D 1 - I - 0x006060 01:A050: 00        .byte $00   ; 
- D 1 - I - 0x006061 01:A051: 00        .byte $00   ; 
- D 1 - I - 0x006062 01:A052: 00        .byte $00   ; 
- D 1 - I - 0x006063 01:A053: 00        .byte $00   ; 
- D 1 - I - 0x006064 01:A054: 00        .byte $00   ; 
- D 1 - I - 0x006065 01:A055: 00        .byte $00   ; 
- D 1 - I - 0x006066 01:A056: 00        .byte $00   ; 
- - - - - - 0x006067 01:A057: 00        .byte $00   ; 
- - - - - - 0x006068 01:A058: 00        .byte $00   ; 
- - - - - - 0x006069 01:A059: 00        .byte $00   ; 
- - - - - - 0x00606A 01:A05A: 00        .byte $00   ; 
- - - - - - 0x00606B 01:A05B: 00        .byte $00   ; 
- - - - - - 0x00606C 01:A05C: 15        .byte $15   ; 
- - - - - - 0x00606D 01:A05D: 00        .byte $00   ; 
- - - - - - 0x00606E 01:A05E: 00        .byte $00   ; 
off_A05F_03:
- D 1 - I - 0x00606F 01:A05F: 2C        .byte $2C   ; 
- D 1 - I - 0x006070 01:A060: 04        .byte $04   ; 
- D 1 - I - 0x006071 01:A061: 04        .byte $04   ; 
- D 1 - I - 0x006072 01:A062: 04        .byte $04   ; 
- D 1 - I - 0x006073 01:A063: 04        .byte $04   ; 
- D 1 - I - 0x006074 01:A064: 04        .byte $04   ; 
- D 1 - I - 0x006075 01:A065: 04        .byte $04   ; 
- D 1 - I - 0x006076 01:A066: 04        .byte $04   ; 
- D 1 - I - 0x006077 01:A067: 04        .byte $04   ; 
- D 1 - I - 0x006078 01:A068: 04        .byte $04   ; 
- D 1 - I - 0x006079 01:A069: 04        .byte $04   ; 
- D 1 - I - 0x00607A 01:A06A: 04        .byte $04   ; 
- D 1 - I - 0x00607B 01:A06B: 61        .byte $61   ; 
- D 1 - I - 0x00607C 01:A06C: 71        .byte $71   ; 
- D 1 - I - 0x00607D 01:A06D: 6D        .byte $6D   ; 
- D 1 - I - 0x00607E 01:A06E: 6D        .byte $6D   ; 
- D 1 - I - 0x00607F 01:A06F: 6D        .byte $6D   ; 
- D 1 - I - 0x006080 01:A070: 79        .byte $79   ; 
off_A071_0F:
- D 1 - I - 0x006081 01:A071: 5B        .byte $5B   ; 
- D 1 - I - 0x006082 01:A072: 5E        .byte $5E   ; 
- D 1 - I - 0x006083 01:A073: 5F        .byte $5F   ; 
- D 1 - I - 0x006084 01:A074: 47        .byte $47   ; 
- D 1 - I - 0x006085 01:A075: 04        .byte $04   ; 
- D 1 - I - 0x006086 01:A076: 04        .byte $04   ; 
- D 1 - I - 0x006087 01:A077: 04        .byte $04   ; 
- D 1 - I - 0x006088 01:A078: 04        .byte $04   ; 
- D 1 - I - 0x006089 01:A079: 04        .byte $04   ; 
- D 1 - I - 0x00608A 01:A07A: 04        .byte $04   ; 
- D 1 - I - 0x00608B 01:A07B: 04        .byte $04   ; 
- D 1 - I - 0x00608C 01:A07C: 04        .byte $04   ; 
- D 1 - I - 0x00608D 01:A07D: 04        .byte $04   ; 
- D 1 - I - 0x00608E 01:A07E: 04        .byte $04   ; 
- D 1 - I - 0x00608F 01:A07F: 04        .byte $04   ; 
- D 1 - I - 0x006090 01:A080: 04        .byte $04   ; 
- D 1 - I - 0x006091 01:A081: 04        .byte $04   ; 
- D 1 - I - 0x006092 01:A082: 04        .byte $04   ; 
- D 1 - I - 0x006093 01:A083: 04        .byte $04   ; 
- D 1 - I - 0x006094 01:A084: 04        .byte $04   ; 
- D 1 - I - 0x006095 01:A085: 04        .byte $04   ; 
- D 1 - I - 0x006096 01:A086: 04        .byte $04   ; 
- D 1 - I - 0x006097 01:A087: 04        .byte $04   ; 
- D 1 - I - 0x006098 01:A088: 04        .byte $04   ; 
- D 1 - I - 0x006099 01:A089: 04        .byte $04   ; 
- D 1 - I - 0x00609A 01:A08A: 17        .byte $17   ; 
- D 1 - I - 0x00609B 01:A08B: 04        .byte $04   ; 
- D 1 - I - 0x00609C 01:A08C: 04        .byte $04   ; 
- D 1 - I - 0x00609D 01:A08D: 61        .byte $61   ; 
- D 1 - I - 0x00609E 01:A08E: 71        .byte $71   ; 
- D 1 - I - 0x00609F 01:A08F: 6D        .byte $6D   ; 
- D 1 - I - 0x0060A0 01:A090: 74        .byte $74   ; 
off_A091_04:
- D 1 - I - 0x0060A1 01:A091: 2C        .byte $2C   ; 
- D 1 - I - 0x0060A2 01:A092: 04        .byte $04   ; 
- D 1 - I - 0x0060A3 01:A093: 04        .byte $04   ; 
- D 1 - I - 0x0060A4 01:A094: 04        .byte $04   ; 
- D 1 - I - 0x0060A5 01:A095: 04        .byte $04   ; 
- D 1 - I - 0x0060A6 01:A096: 04        .byte $04   ; 
- D 1 - I - 0x0060A7 01:A097: 04        .byte $04   ; 
- D 1 - I - 0x0060A8 01:A098: 16        .byte $16   ; 
- D 1 - I - 0x0060A9 01:A099: 04        .byte $04   ; 
- D 1 - I - 0x0060AA 01:A09A: 04        .byte $04   ; 
- D 1 - I - 0x0060AB 01:A09B: 04        .byte $04   ; 
- D 1 - I - 0x0060AC 01:A09C: 04        .byte $04   ; 
- D 1 - I - 0x0060AD 01:A09D: 61        .byte $61   ; 
- D 1 - I - 0x0060AE 01:A09E: 6D        .byte $6D   ; 
- D 1 - I - 0x0060AF 01:A09F: 70        .byte $70   ; 
- D 1 - I - 0x0060B0 01:A0A0: 6D        .byte $6D   ; 
- D 1 - I - 0x0060B1 01:A0A1: 6D        .byte $6D   ; 
- D 1 - I - 0x0060B2 01:A0A2: 6A        .byte $6A   ; 
- D 1 - I - 0x0060B3 01:A0A3: 4F        .byte $4F   ; 
- D 1 - I - 0x0060B4 01:A0A4: 04        .byte $04   ; 
- D 1 - I - 0x0060B5 01:A0A5: 04        .byte $04   ; 
- D 1 - I - 0x0060B6 01:A0A6: 04        .byte $04   ; 
- D 1 - I - 0x0060B7 01:A0A7: 04        .byte $04   ; 
- D 1 - I - 0x0060B8 01:A0A8: 04        .byte $04   ; 
- D 1 - I - 0x0060B9 01:A0A9: 04        .byte $04   ; 
- D 1 - I - 0x0060BA 01:A0AA: 04        .byte $04   ; 
- D 1 - I - 0x0060BB 01:A0AB: 04        .byte $04   ; 
- D 1 - I - 0x0060BC 01:A0AC: 04        .byte $04   ; 
- D 1 - I - 0x0060BD 01:A0AD: 04        .byte $04   ; 
- D 1 - I - 0x0060BE 01:A0AE: 04        .byte $04   ; 
- D 1 - I - 0x0060BF 01:A0AF: 41        .byte $41   ; 
off_A0B0_08:
- D 1 - I - 0x0060C0 01:A0B0: 55        .byte $55   ; 
- D 1 - I - 0x0060C1 01:A0B1: 43        .byte $43   ; 
- D 1 - I - 0x0060C2 01:A0B2: 04        .byte $04   ; 
- D 1 - I - 0x0060C3 01:A0B3: 04        .byte $04   ; 
- D 1 - I - 0x0060C4 01:A0B4: 04        .byte $04   ; 
- D 1 - I - 0x0060C5 01:A0B5: 04        .byte $04   ; 
- D 1 - I - 0x0060C6 01:A0B6: 04        .byte $04   ; 
- D 1 - I - 0x0060C7 01:A0B7: 04        .byte $04   ; 
- D 1 - I - 0x0060C8 01:A0B8: 04        .byte $04   ; 
- D 1 - I - 0x0060C9 01:A0B9: 04        .byte $04   ; 
- D 1 - I - 0x0060CA 01:A0BA: 17        .byte $17   ; 
- D 1 - I - 0x0060CB 01:A0BB: 04        .byte $04   ; 
- D 1 - I - 0x0060CC 01:A0BC: 04        .byte $04   ; 
- D 1 - I - 0x0060CD 01:A0BD: 04        .byte $04   ; 
- D 1 - I - 0x0060CE 01:A0BE: 04        .byte $04   ; 
- D 1 - I - 0x0060CF 01:A0BF: 04        .byte $04   ; 
- D 1 - I - 0x0060D0 01:A0C0: 04        .byte $04   ; 
- D 1 - I - 0x0060D1 01:A0C1: 04        .byte $04   ; 
- D 1 - I - 0x0060D2 01:A0C2: 04        .byte $04   ; 
- D 1 - I - 0x0060D3 01:A0C3: 04        .byte $04   ; 
- D 1 - I - 0x0060D4 01:A0C4: 04        .byte $04   ; 
- D 1 - I - 0x0060D5 01:A0C5: 16        .byte $16   ; 
- D 1 - I - 0x0060D6 01:A0C6: 04        .byte $04   ; 
- D 1 - I - 0x0060D7 01:A0C7: 04        .byte $04   ; 
- D 1 - I - 0x0060D8 01:A0C8: 04        .byte $04   ; 
- D 1 - I - 0x0060D9 01:A0C9: 04        .byte $04   ; 
- D 1 - I - 0x0060DA 01:A0CA: 04        .byte $04   ; 
- D 1 - I - 0x0060DB 01:A0CB: 04        .byte $04   ; 
- D 1 - I - 0x0060DC 01:A0CC: 04        .byte $04   ; 
- D 1 - I - 0x0060DD 01:A0CD: 04        .byte $04   ; 
- D 1 - I - 0x0060DE 01:A0CE: 04        .byte $04   ; 
- D 1 - I - 0x0060DF 01:A0CF: 2B        .byte $2B   ; 
off_A0D0_05:
- D 1 - I - 0x0060E0 01:A0D0: 2C        .byte $2C   ; 
- D 1 - I - 0x0060E1 01:A0D1: 04        .byte $04   ; 
- D 1 - I - 0x0060E2 01:A0D2: 16        .byte $16   ; 
- D 1 - I - 0x0060E3 01:A0D3: 04        .byte $04   ; 
- D 1 - I - 0x0060E4 01:A0D4: 04        .byte $04   ; 
- D 1 - I - 0x0060E5 01:A0D5: 04        .byte $04   ; 
- D 1 - I - 0x0060E6 01:A0D6: 04        .byte $04   ; 
- D 1 - I - 0x0060E7 01:A0D7: 04        .byte $04   ; 
- D 1 - I - 0x0060E8 01:A0D8: 04        .byte $04   ; 
- D 1 - I - 0x0060E9 01:A0D9: 04        .byte $04   ; 
- D 1 - I - 0x0060EA 01:A0DA: 04        .byte $04   ; 
- D 1 - I - 0x0060EB 01:A0DB: 04        .byte $04   ; 
- D 1 - I - 0x0060EC 01:A0DC: 45        .byte $45   ; 
- D 1 - I - 0x0060ED 01:A0DD: 5B        .byte $5B   ; 
- D 1 - I - 0x0060EE 01:A0DE: 5B        .byte $5B   ; 
- D 1 - I - 0x0060EF 01:A0DF: 5E        .byte $5E   ; 
- D 1 - I - 0x0060F0 01:A0E0: 5F        .byte $5F   ; 
- D 1 - I - 0x0060F1 01:A0E1: 47        .byte $47   ; 
- D 1 - I - 0x0060F2 01:A0E2: 04        .byte $04   ; 
- D 1 - I - 0x0060F3 01:A0E3: 04        .byte $04   ; 
- D 1 - I - 0x0060F4 01:A0E4: 04        .byte $04   ; 
- D 1 - I - 0x0060F5 01:A0E5: 04        .byte $04   ; 
- D 1 - I - 0x0060F6 01:A0E6: 04        .byte $04   ; 
- D 1 - I - 0x0060F7 01:A0E7: 04        .byte $04   ; 
- D 1 - I - 0x0060F8 01:A0E8: 04        .byte $04   ; 
- D 1 - I - 0x0060F9 01:A0E9: 16        .byte $16   ; 
- D 1 - I - 0x0060FA 01:A0EA: 04        .byte $04   ; 
- D 1 - I - 0x0060FB 01:A0EB: 04        .byte $04   ; 
- D 1 - I - 0x0060FC 01:A0EC: 16        .byte $16   ; 
- D 1 - I - 0x0060FD 01:A0ED: 49        .byte $49   ; 
- D 1 - I - 0x0060FE 01:A0EE: 61        .byte $61   ; 
off_A0EF_0C:
- D 1 - I - 0x0060FF 01:A0EF: 6D        .byte $6D   ; 
- D 1 - I - 0x006100 01:A0F0: EA        .byte $EA   ; 
- D 1 - I - 0x006101 01:A0F1: E9        .byte $E9   ; 
- D 1 - I - 0x006102 01:A0F2: E9        .byte $E9   ; 
- D 1 - I - 0x006103 01:A0F3: E9        .byte $E9   ; 
- D 1 - I - 0x006104 01:A0F4: E6        .byte $E6   ; 
- D 1 - I - 0x006105 01:A0F5: 11        .byte $11   ; 
- D 1 - I - 0x006106 01:A0F6: 11        .byte $11   ; 
- D 1 - I - 0x006107 01:A0F7: 11        .byte $11   ; 
- D 1 - I - 0x006108 01:A0F8: 11        .byte $11   ; 
- D 1 - I - 0x006109 01:A0F9: 11        .byte $11   ; 
- D 1 - I - 0x00610A 01:A0FA: 11        .byte $11   ; 
- D 1 - I - 0x00610B 01:A0FB: 11        .byte $11   ; 
- D 1 - I - 0x00610C 01:A0FC: 31        .byte $31   ; 
- D 1 - I - 0x00610D 01:A0FD: 04        .byte $04   ; 
- D 1 - I - 0x00610E 01:A0FE: 04        .byte $04   ; 
- D 1 - I - 0x00610F 01:A0FF: 04        .byte $04   ; 
- D 1 - I - 0x006110 01:A100: 04        .byte $04   ; 
- D 1 - I - 0x006111 01:A101: 04        .byte $04   ; 
- D 1 - I - 0x006112 01:A102: 04        .byte $04   ; 
- D 1 - I - 0x006113 01:A103: 04        .byte $04   ; 
off_A104_18:
- D 1 - I - 0x006114 01:A104: 04        .byte $04   ; 
- D 1 - I - 0x006115 01:A105: 04        .byte $04   ; 
- D 1 - I - 0x006116 01:A106: 04        .byte $04   ; 
- D 1 - I - 0x006117 01:A107: 04        .byte $04   ; 
- D 1 - I - 0x006118 01:A108: 16        .byte $16   ; 
- D 1 - I - 0x006119 01:A109: 04        .byte $04   ; 
- D 1 - I - 0x00611A 01:A10A: 04        .byte $04   ; 
- D 1 - I - 0x00611B 01:A10B: 04        .byte $04   ; 
- D 1 - I - 0x00611C 01:A10C: 04        .byte $04   ; 
- D 1 - I - 0x00611D 01:A10D: 04        .byte $04   ; 
- D 1 - I - 0x00611E 01:A10E: 04        .byte $04   ; 
- D 1 - I - 0x00611F 01:A10F: 4D        .byte $4D   ; 
- D 1 - I - 0x006120 01:A110: 61        .byte $61   ; 
- D 1 - I - 0x006121 01:A111: 6D        .byte $6D   ; 
- D 1 - I - 0x006122 01:A112: 6D        .byte $6D   ; 
- D 1 - I - 0x006123 01:A113: 6D        .byte $6D   ; 
- D 1 - I - 0x006124 01:A114: 6D        .byte $6D   ; 
- D 1 - I - 0x006125 01:A115: 7D        .byte $7D   ; 
- D 1 - I - 0x006126 01:A116: 55        .byte $55   ; 
- D 1 - I - 0x006127 01:A117: 43        .byte $43   ; 
- D 1 - I - 0x006128 01:A118: 04        .byte $04   ; 
- D 1 - I - 0x006129 01:A119: 04        .byte $04   ; 
- D 1 - I - 0x00612A 01:A11A: 04        .byte $04   ; 
- D 1 - I - 0x00612B 01:A11B: 16        .byte $16   ; 
- D 1 - I - 0x00612C 01:A11C: 04        .byte $04   ; 
- D 1 - I - 0x00612D 01:A11D: 04        .byte $04   ; 
- D 1 - I - 0x00612E 01:A11E: 04        .byte $04   ; 
- D 1 - I - 0x00612F 01:A11F: 04        .byte $04   ; 
- D 1 - I - 0x006130 01:A120: 28        .byte $28   ; 
- D 1 - I - 0x006131 01:A121: 04        .byte $04   ; 
- D 1 - I - 0x006132 01:A122: 04        .byte $04   ; 
- D 1 - I - 0x006133 01:A123: 2B        .byte $2B   ; 
off_A124_06:
- D 1 - I - 0x006134 01:A124: 1C        .byte $1C   ; 
- D 1 - I - 0x006135 01:A125: 00        .byte $00   ; 
- D 1 - I - 0x006136 01:A126: 00        .byte $00   ; 
- D 1 - I - 0x006137 01:A127: 00        .byte $00   ; 
- D 1 - I - 0x006138 01:A128: 00        .byte $00   ; 
- D 1 - I - 0x006139 01:A129: 00        .byte $00   ; 
- D 1 - I - 0x00613A 01:A12A: 00        .byte $00   ; 
- D 1 - I - 0x00613B 01:A12B: 00        .byte $00   ; 
- D 1 - I - 0x00613C 01:A12C: 00        .byte $00   ; 
- D 1 - I - 0x00613D 01:A12D: 00        .byte $00   ; 
- D 1 - I - 0x00613E 01:A12E: 00        .byte $00   ; 
- D 1 - I - 0x00613F 01:A12F: 14        .byte $14   ; 
- D 1 - I - 0x006140 01:A130: 00        .byte $00   ; 
- D 1 - I - 0x006141 01:A131: 00        .byte $00   ; 
- D 1 - I - 0x006142 01:A132: 14        .byte $14   ; 
- D 1 - I - 0x006143 01:A133: 00        .byte $00   ; 
- D 1 - I - 0x006144 01:A134: 00        .byte $00   ; 
- D 1 - I - 0x006145 01:A135: 00        .byte $00   ; 
- D 1 - I - 0x006146 01:A136: 00        .byte $00   ; 
- D 1 - I - 0x006147 01:A137: 00        .byte $00   ; 
- D 1 - I - 0x006148 01:A138: 00        .byte $00   ; 
- D 1 - I - 0x006149 01:A139: 00        .byte $00   ; 
- D 1 - I - 0x00614A 01:A13A: 00        .byte $00   ; 
- D 1 - I - 0x00614B 01:A13B: 00        .byte $00   ; 
- D 1 - I - 0x00614C 01:A13C: 00        .byte $00   ; 
- D 1 - I - 0x00614D 01:A13D: 00        .byte $00   ; 
- D 1 - I - 0x00614E 01:A13E: 00        .byte $00   ; 
- D 1 - I - 0x00614F 01:A13F: 00        .byte $00   ; 
- D 1 - I - 0x006150 01:A140: 40        .byte $40   ; 
- D 1 - I - 0x006151 01:A141: 54        .byte $54   ; 
- D 1 - I - 0x006152 01:A142: 7E        .byte $7E   ; 
- D 1 - I - 0x006153 01:A143: 6E        .byte $6E   ; 
off_A144_07:
- D 1 - I - 0x006154 01:A144: 1C        .byte $1C   ; 
- D 1 - I - 0x006155 01:A145: 00        .byte $00   ; 
- D 1 - I - 0x006156 01:A146: 00        .byte $00   ; 
- D 1 - I - 0x006157 01:A147: 00        .byte $00   ; 
- D 1 - I - 0x006158 01:A148: 14        .byte $14   ; 
- D 1 - I - 0x006159 01:A149: 00        .byte $00   ; 
- D 1 - I - 0x00615A 01:A14A: 00        .byte $00   ; 
- D 1 - I - 0x00615B 01:A14B: 00        .byte $00   ; 
- D 1 - I - 0x00615C 01:A14C: 00        .byte $00   ; 
- D 1 - I - 0x00615D 01:A14D: 00        .byte $00   ; 
- D 1 - I - 0x00615E 01:A14E: 00        .byte $00   ; 
- D 1 - I - 0x00615F 01:A14F: 00        .byte $00   ; 
- D 1 - I - 0x006160 01:A150: 00        .byte $00   ; 
- D 1 - I - 0x006161 01:A151: 00        .byte $00   ; 
- D 1 - I - 0x006162 01:A152: 00        .byte $00   ; 
- D 1 - I - 0x006163 01:A153: 00        .byte $00   ; 
- D 1 - I - 0x006164 01:A154: 00        .byte $00   ; 
- D 1 - I - 0x006165 01:A155: 00        .byte $00   ; 
- D 1 - I - 0x006166 01:A156: 00        .byte $00   ; 
- D 1 - I - 0x006167 01:A157: 00        .byte $00   ; 
- D 1 - I - 0x006168 01:A158: 00        .byte $00   ; 
- D 1 - I - 0x006169 01:A159: 14        .byte $14   ; 
- D 1 - I - 0x00616A 01:A15A: 00        .byte $00   ; 
- D 1 - I - 0x00616B 01:A15B: 00        .byte $00   ; 
- D 1 - I - 0x00616C 01:A15C: 00        .byte $00   ; 
- D 1 - I - 0x00616D 01:A15D: 00        .byte $00   ; 
- D 1 - I - 0x00616E 01:A15E: 00        .byte $00   ; 
- D 1 - I - 0x00616F 01:A15F: 48        .byte $48   ; 
- D 1 - I - 0x006170 01:A160: 60        .byte $60   ; 
off_A161_07:
- D 1 - I - 0x006171 01:A161: 6C        .byte $6C   ; 
- D 1 - I - 0x006172 01:A162: 6C        .byte $6C   ; 
- D 1 - I - 0x006173 01:A163: 6C        .byte $6C   ; 
- D 1 - I - 0x006174 01:A164: 66        .byte $66   ; 
- D 1 - I - 0x006175 01:A165: 4A        .byte $4A   ; 
- D 1 - I - 0x006176 01:A166: 14        .byte $14   ; 
- D 1 - I - 0x006177 01:A167: 00        .byte $00   ; 
- D 1 - I - 0x006178 01:A168: 00        .byte $00   ; 
- D 1 - I - 0x006179 01:A169: 00        .byte $00   ; 
- D 1 - I - 0x00617A 01:A16A: 14        .byte $14   ; 
- D 1 - I - 0x00617B 01:A16B: 00        .byte $00   ; 
- D 1 - I - 0x00617C 01:A16C: 00        .byte $00   ; 
- D 1 - I - 0x00617D 01:A16D: 00        .byte $00   ; 
- D 1 - I - 0x00617E 01:A16E: 00        .byte $00   ; 
- D 1 - I - 0x00617F 01:A16F: 00        .byte $00   ; 
- D 1 - I - 0x006180 01:A170: 00        .byte $00   ; 
- D 1 - I - 0x006181 01:A171: 22        .byte $22   ; 
- D 1 - I - 0x006182 01:A172: 00        .byte $00   ; 
- D 1 - I - 0x006183 01:A173: 00        .byte $00   ; 
- D 1 - I - 0x006184 01:A174: 00        .byte $00   ; 
- D 1 - I - 0x006185 01:A175: 00        .byte $00   ; 
- D 1 - I - 0x006186 01:A176: 00        .byte $00   ; 
- D 1 - I - 0x006187 01:A177: 00        .byte $00   ; 
- D 1 - I - 0x006188 01:A178: 00        .byte $00   ; 
- - - - - - 0x006189 01:A179: 00        .byte $00   ; 
- - - - - - 0x00618A 01:A17A: 00        .byte $00   ; 
- - - - - - 0x00618B 01:A17B: 00        .byte $00   ; 
- - - - - - 0x00618C 01:A17C: 00        .byte $00   ; 
- - - - - - 0x00618D 01:A17D: 00        .byte $00   ; 
- - - - - - 0x00618E 01:A17E: 00        .byte $00   ; 
- - - - - - 0x00618F 01:A17F: 00        .byte $00   ; 
- - - - - - 0x006190 01:A180: 00        .byte $00   ; 
off_A181_08:
- D 1 - I - 0x006191 01:A181: 1C        .byte $1C   ; 
- D 1 - I - 0x006192 01:A182: 00        .byte $00   ; 
- D 1 - I - 0x006193 01:A183: 00        .byte $00   ; 
- D 1 - I - 0x006194 01:A184: 00        .byte $00   ; 
- D 1 - I - 0x006195 01:A185: 00        .byte $00   ; 
- D 1 - I - 0x006196 01:A186: 00        .byte $00   ; 
- D 1 - I - 0x006197 01:A187: 00        .byte $00   ; 
- D 1 - I - 0x006198 01:A188: 14        .byte $14   ; 
- D 1 - I - 0x006199 01:A189: 00        .byte $00   ; 
- D 1 - I - 0x00619A 01:A18A: 00        .byte $00   ; 
- D 1 - I - 0x00619B 01:A18B: 00        .byte $00   ; 
- D 1 - I - 0x00619C 01:A18C: 00        .byte $00   ; 
- D 1 - I - 0x00619D 01:A18D: 00        .byte $00   ; 
- D 1 - I - 0x00619E 01:A18E: 00        .byte $00   ; 
- D 1 - I - 0x00619F 01:A18F: 00        .byte $00   ; 
- D 1 - I - 0x0061A0 01:A190: 00        .byte $00   ; 
- D 1 - I - 0x0061A1 01:A191: 14        .byte $14   ; 
- D 1 - I - 0x0061A2 01:A192: 00        .byte $00   ; 
- D 1 - I - 0x0061A3 01:A193: 00        .byte $00   ; 
- D 1 - I - 0x0061A4 01:A194: 00        .byte $00   ; 
- D 1 - I - 0x0061A5 01:A195: 00        .byte $00   ; 
- D 1 - I - 0x0061A6 01:A196: 00        .byte $00   ; 
- D 1 - I - 0x0061A7 01:A197: 00        .byte $00   ; 
- D 1 - I - 0x0061A8 01:A198: 00        .byte $00   ; 
- D 1 - I - 0x0061A9 01:A199: 00        .byte $00   ; 
- D 1 - I - 0x0061AA 01:A19A: 00        .byte $00   ; 
- D 1 - I - 0x0061AB 01:A19B: 40        .byte $40   ; 
- D 1 - I - 0x0061AC 01:A19C: 54        .byte $54   ; 
- D 1 - I - 0x0061AD 01:A19D: 7E        .byte $7E   ; 
- D 1 - I - 0x0061AE 01:A19E: 6F        .byte $6F   ; 
off_A19F_07:
- D 1 - I - 0x0061AF 01:A19F: 6C        .byte $6C   ; 
- D 1 - I - 0x0061B0 01:A1A0: 6C        .byte $6C   ; 
- D 1 - I - 0x0061B1 01:A1A1: 6F        .byte $6F   ; 
- D 1 - I - 0x0061B2 01:A1A2: 6C        .byte $6C   ; 
- D 1 - I - 0x0061B3 01:A1A3: 6C        .byte $6C   ; 
- D 1 - I - 0x0061B4 01:A1A4: 66        .byte $66   ; 
- D 1 - I - 0x0061B5 01:A1A5: 00        .byte $00   ; 
- D 1 - I - 0x0061B6 01:A1A6: 00        .byte $00   ; 
- D 1 - I - 0x0061B7 01:A1A7: 00        .byte $00   ; 
- D 1 - I - 0x0061B8 01:A1A8: 00        .byte $00   ; 
- D 1 - I - 0x0061B9 01:A1A9: 00        .byte $00   ; 
- D 1 - I - 0x0061BA 01:A1AA: 00        .byte $00   ; 
- D 1 - I - 0x0061BB 01:A1AB: 00        .byte $00   ; 
- D 1 - I - 0x0061BC 01:A1AC: 00        .byte $00   ; 
- D 1 - I - 0x0061BD 01:A1AD: 00        .byte $00   ; 
- D 1 - I - 0x0061BE 01:A1AE: 00        .byte $00   ; 
- D 1 - I - 0x0061BF 01:A1AF: 00        .byte $00   ; 
- D 1 - I - 0x0061C0 01:A1B0: 00        .byte $00   ; 
- D 1 - I - 0x0061C1 01:A1B1: 00        .byte $00   ; 
- D 1 - I - 0x0061C2 01:A1B2: 00        .byte $00   ; 
- D 1 - I - 0x0061C3 01:A1B3: 00        .byte $00   ; 
- D 1 - I - 0x0061C4 01:A1B4: 00        .byte $00   ; 
- D 1 - I - 0x0061C5 01:A1B5: 00        .byte $00   ; 
- D 1 - I - 0x0061C6 01:A1B6: 00        .byte $00   ; 
- D 1 - I - 0x0061C7 01:A1B7: 00        .byte $00   ; 
- D 1 - I - 0x0061C8 01:A1B8: 00        .byte $00   ; 
- D 1 - I - 0x0061C9 01:A1B9: 00        .byte $00   ; 
- D 1 - I - 0x0061CA 01:A1BA: 00        .byte $00   ; 
- D 1 - I - 0x0061CB 01:A1BB: 14        .byte $14   ; 
- D 1 - I - 0x0061CC 01:A1BC: 00        .byte $00   ; 
- D 1 - I - 0x0061CD 01:A1BD: 00        .byte $00   ; 
- D 1 - I - 0x0061CE 01:A1BE: 1B        .byte $1B   ; 
off_A1BF_09:
- D 1 - I - 0x0061CF 01:A1BF: 2C        .byte $2C   ; 
- D 1 - I - 0x0061D0 01:A1C0: 04        .byte $04   ; 
- D 1 - I - 0x0061D1 01:A1C1: 04        .byte $04   ; 
- D 1 - I - 0x0061D2 01:A1C2: 04        .byte $04   ; 
- D 1 - I - 0x0061D3 01:A1C3: 04        .byte $04   ; 
- D 1 - I - 0x0061D4 01:A1C4: 04        .byte $04   ; 
- D 1 - I - 0x0061D5 01:A1C5: 04        .byte $04   ; 
- D 1 - I - 0x0061D6 01:A1C6: 04        .byte $04   ; 
- D 1 - I - 0x0061D7 01:A1C7: 04        .byte $04   ; 
- D 1 - I - 0x0061D8 01:A1C8: 04        .byte $04   ; 
- D 1 - I - 0x0061D9 01:A1C9: 04        .byte $04   ; 
- D 1 - I - 0x0061DA 01:A1CA: 16        .byte $16   ; 
- D 1 - I - 0x0061DB 01:A1CB: 04        .byte $04   ; 
- D 1 - I - 0x0061DC 01:A1CC: 04        .byte $04   ; 
- D 1 - I - 0x0061DD 01:A1CD: 04        .byte $04   ; 
- D 1 - I - 0x0061DE 01:A1CE: 04        .byte $04   ; 
- D 1 - I - 0x0061DF 01:A1CF: 04        .byte $04   ; 
- D 1 - I - 0x0061E0 01:A1D0: 04        .byte $04   ; 
- D 1 - I - 0x0061E1 01:A1D1: 16        .byte $16   ; 
- D 1 - I - 0x0061E2 01:A1D2: 04        .byte $04   ; 
- D 1 - I - 0x0061E3 01:A1D3: 04        .byte $04   ; 
- D 1 - I - 0x0061E4 01:A1D4: 04        .byte $04   ; 
- D 1 - I - 0x0061E5 01:A1D5: 04        .byte $04   ; 
- D 1 - I - 0x0061E6 01:A1D6: 04        .byte $04   ; 
- D 1 - I - 0x0061E7 01:A1D7: 04        .byte $04   ; 
- D 1 - I - 0x0061E8 01:A1D8: 04        .byte $04   ; 
- D 1 - I - 0x0061E9 01:A1D9: 61        .byte $61   ; 
- D 1 - I - 0x0061EA 01:A1DA: 6D        .byte $6D   ; 
- D 1 - I - 0x0061EB 01:A1DB: 6D        .byte $6D   ; 
- D 1 - I - 0x0061EC 01:A1DC: 79        .byte $79   ; 
off_A1DD_09:
- D 1 - I - 0x0061ED 01:A1DD: 5B        .byte $5B   ; 
- D 1 - I - 0x0061EE 01:A1DE: 5B        .byte $5B   ; 
- D 1 - I - 0x0061EF 01:A1DF: 7B        .byte $7B   ; 
- D 1 - I - 0x0061F0 01:A1E0: 6D        .byte $6D   ; 
- D 1 - I - 0x0061F1 01:A1E1: 70        .byte $70   ; 
- D 1 - I - 0x0061F2 01:A1E2: 6A        .byte $6A   ; 
- D 1 - I - 0x0061F3 01:A1E3: 04        .byte $04   ; 
- D 1 - I - 0x0061F4 01:A1E4: 04        .byte $04   ; 
- D 1 - I - 0x0061F5 01:A1E5: 04        .byte $04   ; 
- D 1 - I - 0x0061F6 01:A1E6: 04        .byte $04   ; 
- D 1 - I - 0x0061F7 01:A1E7: 04        .byte $04   ; 
- D 1 - I - 0x0061F8 01:A1E8: 04        .byte $04   ; 
- D 1 - I - 0x0061F9 01:A1E9: 04        .byte $04   ; 
- D 1 - I - 0x0061FA 01:A1EA: 04        .byte $04   ; 
- D 1 - I - 0x0061FB 01:A1EB: 04        .byte $04   ; 
- D 1 - I - 0x0061FC 01:A1EC: 04        .byte $04   ; 
- D 1 - I - 0x0061FD 01:A1ED: 04        .byte $04   ; 
- D 1 - I - 0x0061FE 01:A1EE: 04        .byte $04   ; 
- D 1 - I - 0x0061FF 01:A1EF: 04        .byte $04   ; 
- D 1 - I - 0x006200 01:A1F0: 16        .byte $16   ; 
- D 1 - I - 0x006201 01:A1F1: 04        .byte $04   ; 
- D 1 - I - 0x006202 01:A1F2: 04        .byte $04   ; 
- D 1 - I - 0x006203 01:A1F3: 04        .byte $04   ; 
- D 1 - I - 0x006204 01:A1F4: 04        .byte $04   ; 
- D 1 - I - 0x006205 01:A1F5: 04        .byte $04   ; 
- D 1 - I - 0x006206 01:A1F6: 04        .byte $04   ; 
- D 1 - I - 0x006207 01:A1F7: 04        .byte $04   ; 
- D 1 - I - 0x006208 01:A1F8: 04        .byte $04   ; 
- D 1 - I - 0x006209 01:A1F9: 04        .byte $04   ; 
- D 1 - I - 0x00620A 01:A1FA: 17        .byte $17   ; 
- D 1 - I - 0x00620B 01:A1FB: 04        .byte $04   ; 
- D 1 - I - 0x00620C 01:A1FC: 2B        .byte $2B   ; 
off_A1FD_0A:
- D 1 - I - 0x00620D 01:A1FD: 2C        .byte $2C   ; 
- D 1 - I - 0x00620E 01:A1FE: 04        .byte $04   ; 
- D 1 - I - 0x00620F 01:A1FF: 04        .byte $04   ; 
- D 1 - I - 0x006210 01:A200: 04        .byte $04   ; 
- D 1 - I - 0x006211 01:A201: 04        .byte $04   ; 
- D 1 - I - 0x006212 01:A202: 04        .byte $04   ; 
- D 1 - I - 0x006213 01:A203: 04        .byte $04   ; 
- D 1 - I - 0x006214 01:A204: 04        .byte $04   ; 
- D 1 - I - 0x006215 01:A205: 04        .byte $04   ; 
- D 1 - I - 0x006216 01:A206: 04        .byte $04   ; 
- D 1 - I - 0x006217 01:A207: 04        .byte $04   ; 
- D 1 - I - 0x006218 01:A208: 04        .byte $04   ; 
- D 1 - I - 0x006219 01:A209: 04        .byte $04   ; 
- D 1 - I - 0x00621A 01:A20A: 04        .byte $04   ; 
- D 1 - I - 0x00621B 01:A20B: 04        .byte $04   ; 
- D 1 - I - 0x00621C 01:A20C: 04        .byte $04   ; 
- D 1 - I - 0x00621D 01:A20D: 04        .byte $04   ; 
- D 1 - I - 0x00621E 01:A20E: 04        .byte $04   ; 
- D 1 - I - 0x00621F 01:A20F: 04        .byte $04   ; 
- D 1 - I - 0x006220 01:A210: 04        .byte $04   ; 
- D 1 - I - 0x006221 01:A211: 04        .byte $04   ; 
- D 1 - I - 0x006222 01:A212: 17        .byte $17   ; 
- D 1 - I - 0x006223 01:A213: 04        .byte $04   ; 
- D 1 - I - 0x006224 01:A214: 04        .byte $04   ; 
- D 1 - I - 0x006225 01:A215: 04        .byte $04   ; 
- D 1 - I - 0x006226 01:A216: 04        .byte $04   ; 
- D 1 - I - 0x006227 01:A217: 61        .byte $61   ; 
- D 1 - I - 0x006228 01:A218: 6D        .byte $6D   ; 
- D 1 - I - 0x006229 01:A219: 6D        .byte $6D   ; 
- D 1 - I - 0x00622A 01:A21A: 67        .byte $67   ; 
- D 1 - I - 0x00622B 01:A21B: 4F        .byte $4F   ; 
- D 1 - I - 0x00622C 01:A21C: 04        .byte $04   ; 
off_A21D_0B:
- D 1 - I - 0x00622D 01:A21D: 2C        .byte $2C   ; 
- D 1 - I - 0x00622E 01:A21E: 04        .byte $04   ; 
- D 1 - I - 0x00622F 01:A21F: 04        .byte $04   ; 
- D 1 - I - 0x006230 01:A220: 04        .byte $04   ; 
- D 1 - I - 0x006231 01:A221: 16        .byte $16   ; 
- D 1 - I - 0x006232 01:A222: 04        .byte $04   ; 
- D 1 - I - 0x006233 01:A223: 04        .byte $04   ; 
- D 1 - I - 0x006234 01:A224: 04        .byte $04   ; 
- D 1 - I - 0x006235 01:A225: 04        .byte $04   ; 
- D 1 - I - 0x006236 01:A226: 04        .byte $04   ; 
- D 1 - I - 0x006237 01:A227: 04        .byte $04   ; 
- D 1 - I - 0x006238 01:A228: 04        .byte $04   ; 
- D 1 - I - 0x006239 01:A229: 04        .byte $04   ; 
- D 1 - I - 0x00623A 01:A22A: 04        .byte $04   ; 
- D 1 - I - 0x00623B 01:A22B: 16        .byte $16   ; 
- D 1 - I - 0x00623C 01:A22C: 04        .byte $04   ; 
- D 1 - I - 0x00623D 01:A22D: 04        .byte $04   ; 
- D 1 - I - 0x00623E 01:A22E: 04        .byte $04   ; 
- D 1 - I - 0x00623F 01:A22F: 04        .byte $04   ; 
- D 1 - I - 0x006240 01:A230: 04        .byte $04   ; 
- D 1 - I - 0x006241 01:A231: 04        .byte $04   ; 
- D 1 - I - 0x006242 01:A232: 04        .byte $04   ; 
- D 1 - I - 0x006243 01:A233: 04        .byte $04   ; 
- D 1 - I - 0x006244 01:A234: 04        .byte $04   ; 
- D 1 - I - 0x006245 01:A235: 04        .byte $04   ; 
- D 1 - I - 0x006246 01:A236: 04        .byte $04   ; 
- D 1 - I - 0x006247 01:A237: 61        .byte $61   ; 
- D 1 - I - 0x006248 01:A238: 70        .byte $70   ; 
- D 1 - I - 0x006249 01:A239: 6D        .byte $6D   ; 
- D 1 - I - 0x00624A 01:A23A: 67        .byte $67   ; 
off_A23B_0B:
- D 1 - I - 0x00624B 01:A23B: 16        .byte $16   ; 
- D 1 - I - 0x00624C 01:A23C: 04        .byte $04   ; 
- D 1 - I - 0x00624D 01:A23D: 45        .byte $45   ; 
- D 1 - I - 0x00624E 01:A23E: 5E        .byte $5E   ; 
- D 1 - I - 0x00624F 01:A23F: 5F        .byte $5F   ; 
- D 1 - I - 0x006250 01:A240: 47        .byte $47   ; 
- D 1 - I - 0x006251 01:A241: 04        .byte $04   ; 
- D 1 - I - 0x006252 01:A242: 04        .byte $04   ; 
- D 1 - I - 0x006253 01:A243: 04        .byte $04   ; 
- D 1 - I - 0x006254 01:A244: 16        .byte $16   ; 
- D 1 - I - 0x006255 01:A245: 04        .byte $04   ; 
- D 1 - I - 0x006256 01:A246: 04        .byte $04   ; 
- D 1 - I - 0x006257 01:A247: 04        .byte $04   ; 
- D 1 - I - 0x006258 01:A248: 04        .byte $04   ; 
- D 1 - I - 0x006259 01:A249: 87        .byte $87   ; 
- D 1 - I - 0x00625A 01:A24A: 04        .byte $04   ; 
- D 1 - I - 0x00625B 01:A24B: 36        .byte $36   ; 
- D 1 - I - 0x00625C 01:A24C: 04        .byte $04   ; 
- D 1 - I - 0x00625D 01:A24D: 04        .byte $04   ; 
- D 1 - I - 0x00625E 01:A24E: 04        .byte $04   ; 
- D 1 - I - 0x00625F 01:A24F: 17        .byte $17   ; 
- D 1 - I - 0x006260 01:A250: 04        .byte $04   ; 
- D 1 - I - 0x006261 01:A251: 04        .byte $04   ; 
- D 1 - I - 0x006262 01:A252: 04        .byte $04   ; 
- - - - - - 0x006263 01:A253: 04        .byte $04   ; 
- - - - - - 0x006264 01:A254: 04        .byte $04   ; 
- - - - - - 0x006265 01:A255: 04        .byte $04   ; 
- - - - - - 0x006266 01:A256: 04        .byte $04   ; 
- - - - - - 0x006267 01:A257: 04        .byte $04   ; 
- - - - - - 0x006268 01:A258: 04        .byte $04   ; 
- - - - - - 0x006269 01:A259: 04        .byte $04   ; 
- - - - - - 0x00626A 01:A25A: 04        .byte $04   ; 
off_A25B_0C:
- D 1 - I - 0x00626B 01:A25B: 1C        .byte $1C   ; 
- D 1 - I - 0x00626C 01:A25C: 00        .byte $00   ; 
- D 1 - I - 0x00626D 01:A25D: 00        .byte $00   ; 
- D 1 - I - 0x00626E 01:A25E: 00        .byte $00   ; 
- D 1 - I - 0x00626F 01:A25F: 00        .byte $00   ; 
- D 1 - I - 0x006270 01:A260: 00        .byte $00   ; 
- D 1 - I - 0x006271 01:A261: 00        .byte $00   ; 
- D 1 - I - 0x006272 01:A262: 00        .byte $00   ; 
- D 1 - I - 0x006273 01:A263: 00        .byte $00   ; 
- D 1 - I - 0x006274 01:A264: 00        .byte $00   ; 
- D 1 - I - 0x006275 01:A265: 00        .byte $00   ; 
- D 1 - I - 0x006276 01:A266: 00        .byte $00   ; 
- D 1 - I - 0x006277 01:A267: 00        .byte $00   ; 
- D 1 - I - 0x006278 01:A268: 00        .byte $00   ; 
- D 1 - I - 0x006279 01:A269: 00        .byte $00   ; 
- D 1 - I - 0x00627A 01:A26A: 00        .byte $00   ; 
- D 1 - I - 0x00627B 01:A26B: 00        .byte $00   ; 
- D 1 - I - 0x00627C 01:A26C: 00        .byte $00   ; 
- D 1 - I - 0x00627D 01:A26D: 00        .byte $00   ; 
- D 1 - I - 0x00627E 01:A26E: 00        .byte $00   ; 
- D 1 - I - 0x00627F 01:A26F: 00        .byte $00   ; 
- D 1 - I - 0x006280 01:A270: 00        .byte $00   ; 
- D 1 - I - 0x006281 01:A271: 00        .byte $00   ; 
- D 1 - I - 0x006282 01:A272: 00        .byte $00   ; 
- D 1 - I - 0x006283 01:A273: 00        .byte $00   ; 
- D 1 - I - 0x006284 01:A274: 00        .byte $00   ; 
- D 1 - I - 0x006285 01:A275: 60        .byte $60   ; 
- D 1 - I - 0x006286 01:A276: 6C        .byte $6C   ; 
- D 1 - I - 0x006287 01:A277: 6C        .byte $6C   ; 
- D 1 - I - 0x006288 01:A278: 66        .byte $66   ; 
- D 1 - I - 0x006289 01:A279: 00        .byte $00   ; 
- D 1 - I - 0x00628A 01:A27A: 00        .byte $00   ; 
off_A27B_0E:
- D 1 - I - 0x00628B 01:A27B: 00        .byte $00   ; 
- D 1 - I - 0x00628C 01:A27C: 00        .byte $00   ; 
- D 1 - I - 0x00628D 01:A27D: 00        .byte $00   ; 
- D 1 - I - 0x00628E 01:A27E: 00        .byte $00   ; 
- D 1 - I - 0x00628F 01:A27F: 00        .byte $00   ; 
- D 1 - I - 0x006290 01:A280: 14        .byte $14   ; 
- D 1 - I - 0x006291 01:A281: 00        .byte $00   ; 
- D 1 - I - 0x006292 01:A282: 00        .byte $00   ; 
- D 1 - I - 0x006293 01:A283: 00        .byte $00   ; 
- D 1 - I - 0x006294 01:A284: 00        .byte $00   ; 
- D 1 - I - 0x006295 01:A285: 00        .byte $00   ; 
- D 1 - I - 0x006296 01:A286: 15        .byte $15   ; 
- D 1 - I - 0x006297 01:A287: 00        .byte $00   ; 
- D 1 - I - 0x006298 01:A288: 00        .byte $00   ; 
- D 1 - I - 0x006299 01:A289: 00        .byte $00   ; 
- D 1 - I - 0x00629A 01:A28A: 00        .byte $00   ; 
- D 1 - I - 0x00629B 01:A28B: 00        .byte $00   ; 
- D 1 - I - 0x00629C 01:A28C: 00        .byte $00   ; 
- D 1 - I - 0x00629D 01:A28D: 00        .byte $00   ; 
- D 1 - I - 0x00629E 01:A28E: 00        .byte $00   ; 
- D 1 - I - 0x00629F 01:A28F: 00        .byte $00   ; 
- D 1 - I - 0x0062A0 01:A290: 15        .byte $15   ; 
- D 1 - I - 0x0062A1 01:A291: 00        .byte $00   ; 
- D 1 - I - 0x0062A2 01:A292: 00        .byte $00   ; 
- D 1 - I - 0x0062A3 01:A293: 14        .byte $14   ; 
- D 1 - I - 0x0062A4 01:A294: 00        .byte $00   ; 
- D 1 - I - 0x0062A5 01:A295: 60        .byte $60   ; 
- D 1 - I - 0x0062A6 01:A296: 6C        .byte $6C   ; 
- D 1 - I - 0x0062A7 01:A297: 6E        .byte $6E   ; 
- D 1 - I - 0x0062A8 01:A298: 66        .byte $66   ; 
- D 1 - I - 0x0062A9 01:A299: 00        .byte $00   ; 
- D 1 - I - 0x0062AA 01:A29A: 00        .byte $00   ; 
off_A29B_06:
- D 1 - I - 0x0062AB 01:A29B: 00        .byte $00   ; 
- D 1 - I - 0x0062AC 01:A29C: 00        .byte $00   ; 
- D 1 - I - 0x0062AD 01:A29D: 00        .byte $00   ; 
- D 1 - I - 0x0062AE 01:A29E: 55        .byte $55   ; 
- D 1 - I - 0x0062AF 01:A29F: 55        .byte $55   ; 
- D 1 - I - 0x0062B0 01:A2A0: 11        .byte $11   ; 
- D 1 - I - 0x0062B1 01:A2A1: 00        .byte $00   ; 
- D 1 - I - 0x0062B2 01:A2A2: 00        .byte $00   ; 
- D 1 - I - 0x0062B3 01:A2A3: 00        .byte $00   ; 
- D 1 - I - 0x0062B4 01:A2A4: 00        .byte $00   ; 
- D 1 - I - 0x0062B5 01:A2A5: 00        .byte $00   ; 
- D 1 - I - 0x0062B6 01:A2A6: 05        .byte $05   ; 
- D 1 - I - 0x0062B7 01:A2A7: 05        .byte $05   ; 
- D 1 - I - 0x0062B8 01:A2A8: 00        .byte $00   ; 
- D 1 - I - 0x0062B9 01:A2A9: 40        .byte $40   ; 
- D 1 - I - 0x0062BA 01:A2AA: 55        .byte $55   ; 
- D 1 - I - 0x0062BB 01:A2AB: 00        .byte $00   ; 
- D 1 - I - 0x0062BC 01:A2AC: 00        .byte $00   ; 
- D 1 - I - 0x0062BD 01:A2AD: 00        .byte $00   ; 
- D 1 - I - 0x0062BE 01:A2AE: 00        .byte $00   ; 
- D 1 - I - 0x0062BF 01:A2AF: 00        .byte $00   ; 
- D 1 - I - 0x0062C0 01:A2B0: 00        .byte $00   ; 
- D 1 - I - 0x0062C1 01:A2B1: 44        .byte $44   ; 
- D 1 - I - 0x0062C2 01:A2B2: 55        .byte $55   ; 
- D 1 - I - 0x0062C3 01:A2B3: 00        .byte $00   ; 
- D 1 - I - 0x0062C4 01:A2B4: 00        .byte $00   ; 
- D 1 - I - 0x0062C5 01:A2B5: 00        .byte $00   ; 
- D 1 - I - 0x0062C6 01:A2B6: 00        .byte $00   ; 
- D 1 - I - 0x0062C7 01:A2B7: 00        .byte $00   ; 
- D 1 - I - 0x0062C8 01:A2B8: 00        .byte $00   ; 
- D 1 - I - 0x0062C9 01:A2B9: 44        .byte $44   ; 
- D 1 - I - 0x0062CA 01:A2BA: 11        .byte $11   ; 
- - - - - - 0x0062CB 01:A2BB: 00        .byte $00   ; 
- - - - - - 0x0062CC 01:A2BC: 00        .byte $00   ; 
- - - - - - 0x0062CD 01:A2BD: 00        .byte $00   ; 
- - - - - - 0x0062CE 01:A2BE: 00        .byte $00   ; 
- - - - - - 0x0062CF 01:A2BF: 00        .byte $00   ; 
- - - - - - 0x0062D0 01:A2C0: 00        .byte $00   ; 
- - - - - - 0x0062D1 01:A2C1: 00        .byte $00   ; 
- - - - - - 0x0062D2 01:A2C2: 00        .byte $00   ; 
- - - - - - 0x0062D3 01:A2C3: 00        .byte $00   ; 
- - - - - - 0x0062D4 01:A2C4: 00        .byte $00   ; 
- - - - - - 0x0062D5 01:A2C5: 00        .byte $00   ; 
- - - - - - 0x0062D6 01:A2C6: 00        .byte $00   ; 
- - - - - - 0x0062D7 01:A2C7: 00        .byte $00   ; 
- - - - - - 0x0062D8 01:A2C8: 00        .byte $00   ; 
- - - - - - 0x0062D9 01:A2C9: 00        .byte $00   ; 
- - - - - - 0x0062DA 01:A2CA: 00        .byte $00   ; 
- - - - - - 0x0062DB 01:A2CB: 00        .byte $00   ; 
- - - - - - 0x0062DC 01:A2CC: 00        .byte $00   ; 
- - - - - - 0x0062DD 01:A2CD: 00        .byte $00   ; 
- - - - - - 0x0062DE 01:A2CE: 00        .byte $00   ; 
- - - - - - 0x0062DF 01:A2CF: 00        .byte $00   ; 
- - - - - - 0x0062E0 01:A2D0: 00        .byte $00   ; 
- - - - - - 0x0062E1 01:A2D1: 00        .byte $00   ; 
- - - - - - 0x0062E2 01:A2D2: 00        .byte $00   ; 
- - - - - - 0x0062E3 01:A2D3: 00        .byte $00   ; 
- - - - - - 0x0062E4 01:A2D4: 00        .byte $00   ; 
- - - - - - 0x0062E5 01:A2D5: 00        .byte $00   ; 
- - - - - - 0x0062E6 01:A2D6: 00        .byte $00   ; 
- - - - - - 0x0062E7 01:A2D7: 00        .byte $00   ; 
- - - - - - 0x0062E8 01:A2D8: 00        .byte $00   ; 
- - - - - - 0x0062E9 01:A2D9: 00        .byte $00   ; 
- - - - - - 0x0062EA 01:A2DA: 00        .byte $00   ; 
off_A2DB_04:
- D 1 - I - 0x0062EB 01:A2DB: 55        .byte $55   ; 
- D 1 - I - 0x0062EC 01:A2DC: 43        .byte $43   ; 
- D 1 - I - 0x0062ED 01:A2DD: 04        .byte $04   ; 
- D 1 - I - 0x0062EE 01:A2DE: 37        .byte $37   ; 
- D 1 - I - 0x0062EF 01:A2DF: 2C        .byte $2C   ; 
- D 1 - I - 0x0062F0 01:A2E0: 04        .byte $04   ; 
- D 1 - I - 0x0062F1 01:A2E1: 04        .byte $04   ; 
- D 1 - I - 0x0062F2 01:A2E2: 04        .byte $04   ; 
- D 1 - I - 0x0062F3 01:A2E3: 04        .byte $04   ; 
- D 1 - I - 0x0062F4 01:A2E4: 04        .byte $04   ; 
- D 1 - I - 0x0062F5 01:A2E5: 04        .byte $04   ; 
- D 1 - I - 0x0062F6 01:A2E6: 04        .byte $04   ; 
- D 1 - I - 0x0062F7 01:A2E7: 04        .byte $04   ; 
- D 1 - I - 0x0062F8 01:A2E8: 04        .byte $04   ; 
- D 1 - I - 0x0062F9 01:A2E9: 04        .byte $04   ; 
- D 1 - I - 0x0062FA 01:A2EA: 2B        .byte $2B   ; 
- D 1 - I - 0x0062FB 01:A2EB: 30        .byte $30   ; 
off_A2EC_0C:
- D 1 - I - 0x0062FC 01:A2EC: 04        .byte $04   ; 
- D 1 - I - 0x0062FD 01:A2ED: 04        .byte $04   ; 
- D 1 - I - 0x0062FE 01:A2EE: 04        .byte $04   ; 
- D 1 - I - 0x0062FF 01:A2EF: 04        .byte $04   ; 
- D 1 - I - 0x006300 01:A2F0: 04        .byte $04   ; 
- D 1 - I - 0x006301 01:A2F1: 04        .byte $04   ; 
- D 1 - I - 0x006302 01:A2F2: 04        .byte $04   ; 
- - - - - - 0x006303 01:A2F3: 04        .byte $04   ; 
- - - - - - 0x006304 01:A2F4: 04        .byte $04   ; 
- D 1 - I - 0x006305 01:A2F5: 04        .byte $04   ; 
- D 1 - I - 0x006306 01:A2F6: 04        .byte $04   ; 
- D 1 - I - 0x006307 01:A2F7: 04        .byte $04   ; 
- D 1 - I - 0x006308 01:A2F8: 04        .byte $04   ; 
- D 1 - I - 0x006309 01:A2F9: 04        .byte $04   ; 
- D 1 - I - 0x00630A 01:A2FA: 04        .byte $04   ; 
- D 1 - I - 0x00630B 01:A2FB: 04        .byte $04   ; 
- D 1 - I - 0x00630C 01:A2FC: 04        .byte $04   ; 
- D 1 - I - 0x00630D 01:A2FD: 04        .byte $04   ; 
- D 1 - I - 0x00630E 01:A2FE: 36        .byte $36   ; 
- D 1 - I - 0x00630F 01:A2FF: 11        .byte $11   ; 
- D 1 - I - 0x006310 01:A300: 11        .byte $11   ; 
- D 1 - I - 0x006311 01:A301: 11        .byte $11   ; 
- D 1 - I - 0x006312 01:A302: 11        .byte $11   ; 
- D 1 - I - 0x006313 01:A303: 11        .byte $11   ; 
- D 1 - I - 0x006314 01:A304: 11        .byte $11   ; 
- D 1 - I - 0x006315 01:A305: 11        .byte $11   ; 
- D 1 - I - 0x006316 01:A306: 11        .byte $11   ; 
- D 1 - I - 0x006317 01:A307: 11        .byte $11   ; 
- D 1 - I - 0x006318 01:A308: 11        .byte $11   ; 
- D 1 - I - 0x006319 01:A309: 11        .byte $11   ; 
- D 1 - I - 0x00631A 01:A30A: 86        .byte $86   ; 
- D 1 - I - 0x00631B 01:A30B: 04        .byte $04   ; 
off_A30C_08:
- D 1 - I - 0x00631C 01:A30C: 6C        .byte $6C   ; 
- D 1 - I - 0x00631D 01:A30D: 6E        .byte $6E   ; 
- D 1 - I - 0x00631E 01:A30E: 6C        .byte $6C   ; 
- D 1 - I - 0x00631F 01:A30F: 7C        .byte $7C   ; 
- D 1 - I - 0x006320 01:A310: 54        .byte $54   ; 
- D 1 - I - 0x006321 01:A311: 42        .byte $42   ; 
- D 1 - I - 0x006322 01:A312: 00        .byte $00   ; 
- D 1 - I - 0x006323 01:A313: 00        .byte $00   ; 
- D 1 - I - 0x006324 01:A314: 14        .byte $14   ; 
- D 1 - I - 0x006325 01:A315: 00        .byte $00   ; 
- D 1 - I - 0x006326 01:A316: 00        .byte $00   ; 
- D 1 - I - 0x006327 01:A317: 00        .byte $00   ; 
- D 1 - I - 0x006328 01:A318: 00        .byte $00   ; 
- D 1 - I - 0x006329 01:A319: 00        .byte $00   ; 
- D 1 - I - 0x00632A 01:A31A: 00        .byte $00   ; 
- D 1 - I - 0x00632B 01:A31B: 00        .byte $00   ; 
- D 1 - I - 0x00632C 01:A31C: 23        .byte $23   ; 
- D 1 - I - 0x00632D 01:A31D: 00        .byte $00   ; 
- D 1 - I - 0x00632E 01:A31E: 00        .byte $00   ; 
- D 1 - I - 0x00632F 01:A31F: 00        .byte $00   ; 
- D 1 - I - 0x006330 01:A320: 14        .byte $14   ; 
off_A321_00:
- D 1 - I - 0x006331 01:A321: 00        .byte $00   ; 
- D 1 - I - 0x006332 01:A322: 00        .byte $00   ; 
- D 1 - I - 0x006333 01:A323: 00        .byte $00   ; 
- - - - - - 0x006334 01:A324: 00        .byte $00   ; 
- - - - - - 0x006335 01:A325: 00        .byte $00   ; 
- - - - - - 0x006336 01:A326: 00        .byte $00   ; 
- - - - - - 0x006337 01:A327: 14        .byte $14   ; 
- - - - - - 0x006338 01:A328: 00        .byte $00   ; 
- - - - - - 0x006339 01:A329: 00        .byte $00   ; 
- D 1 - I - 0x00633A 01:A32A: 00        .byte $00   ; 
- D 1 - I - 0x00633B 01:A32B: 00        .byte $00   ; 
- D 1 - I - 0x00633C 01:A32C: 14        .byte $14   ; 
- D 1 - I - 0x00633D 01:A32D: 00        .byte $00   ; 
- D 1 - I - 0x00633E 01:A32E: 00        .byte $00   ; 
- D 1 - I - 0x00633F 01:A32F: 00        .byte $00   ; 
- D 1 - I - 0x006340 01:A330: 00        .byte $00   ; 
- D 1 - I - 0x006341 01:A331: 88        .byte $88   ; 
- D 1 - I - 0x006342 01:A332: 12        .byte $12   ; 
- D 1 - I - 0x006343 01:A333: 12        .byte $12   ; 
- D 1 - I - 0x006344 01:A334: 12        .byte $12   ; 
- D 1 - I - 0x006345 01:A335: 12        .byte $12   ; 
- D 1 - I - 0x006346 01:A336: 12        .byte $12   ; 
- D 1 - I - 0x006347 01:A337: 8B        .byte $8B   ; 
- D 1 - I - 0x006348 01:A338: 00        .byte $00   ; 
- D 1 - I - 0x006349 01:A339: 00        .byte $00   ; 
- D 1 - I - 0x00634A 01:A33A: 00        .byte $00   ; 
- D 1 - I - 0x00634B 01:A33B: 00        .byte $00   ; 
off_A33C_0D:
- D 1 - I - 0x00634C 01:A33C: 00        .byte $00   ; 
- D 1 - I - 0x00634D 01:A33D: 23        .byte $23   ; 
- D 1 - I - 0x00634E 01:A33E: 00        .byte $00   ; 
- D 1 - I - 0x00634F 01:A33F: 00        .byte $00   ; 
- D 1 - I - 0x006350 01:A340: 00        .byte $00   ; 
- D 1 - I - 0x006351 01:A341: 00        .byte $00   ; 
- D 1 - I - 0x006352 01:A342: 00        .byte $00   ; 
- D 1 - I - 0x006353 01:A343: 00        .byte $00   ; 
- D 1 - I - 0x006354 01:A344: 00        .byte $00   ; 
- D 1 - I - 0x006355 01:A345: 00        .byte $00   ; 
- D 1 - I - 0x006356 01:A346: 00        .byte $00   ; 
- D 1 - I - 0x006357 01:A347: 00        .byte $00   ; 
- D 1 - I - 0x006358 01:A348: 00        .byte $00   ; 
- D 1 - I - 0x006359 01:A349: 22        .byte $22   ; 
- D 1 - I - 0x00635A 01:A34A: A0        .byte $A0   ; 
- D 1 - I - 0x00635B 01:A34B: A1        .byte $A1   ; 
- D 1 - I - 0x00635C 01:A34C: A2        .byte $A2   ; 
- D 1 - I - 0x00635D 01:A34D: A3        .byte $A3   ; 
- D 1 - I - 0x00635E 01:A34E: 00        .byte $00   ; 
- D 1 - I - 0x00635F 01:A34F: 00        .byte $00   ; 
- D 1 - I - 0x006360 01:A350: 00        .byte $00   ; 
- D 1 - I - 0x006361 01:A351: 00        .byte $00   ; 
- D 1 - I - 0x006362 01:A352: 00        .byte $00   ; 
- D 1 - I - 0x006363 01:A353: 00        .byte $00   ; 
- - - - - - 0x006364 01:A354: 00        .byte $00   ; 
- - - - - - 0x006365 01:A355: 00        .byte $00   ; 
- - - - - - 0x006366 01:A356: 00        .byte $00   ; 
- - - - - - 0x006367 01:A357: 00        .byte $00   ; 
- - - - - - 0x006368 01:A358: 00        .byte $00   ; 
- - - - - - 0x006369 01:A359: 00        .byte $00   ; 
- - - - - - 0x00636A 01:A35A: 00        .byte $00   ; 
- - - - - - 0x00636B 01:A35B: 00        .byte $00   ; 
off_A35C_0A:
- D 1 - I - 0x00636C 01:A35C: 04        .byte $04   ; 
- D 1 - I - 0x00636D 01:A35D: 4D        .byte $4D   ; 
- D 1 - I - 0x00636E 01:A35E: 61        .byte $61   ; 
- D 1 - I - 0x00636F 01:A35F: 6D        .byte $6D   ; 
- D 1 - I - 0x006370 01:A360: 6D        .byte $6D   ; 
- D 1 - I - 0x006371 01:A361: 6B        .byte $6B   ; 
- D 1 - I - 0x006372 01:A362: 04        .byte $04   ; 
- D 1 - I - 0x006373 01:A363: 17        .byte $17   ; 
- D 1 - I - 0x006374 01:A364: 04        .byte $04   ; 
- D 1 - I - 0x006375 01:A365: 04        .byte $04   ; 
- D 1 - I - 0x006376 01:A366: 04        .byte $04   ; 
- D 1 - I - 0x006377 01:A367: 04        .byte $04   ; 
- D 1 - I - 0x006378 01:A368: 04        .byte $04   ; 
- D 1 - I - 0x006379 01:A369: 04        .byte $04   ; 
- D 1 - I - 0x00637A 01:A36A: 88        .byte $88   ; 
- D 1 - I - 0x00637B 01:A36B: 89        .byte $89   ; 
- D 1 - I - 0x00637C 01:A36C: 8A        .byte $8A   ; 
- D 1 - I - 0x00637D 01:A36D: 04        .byte $04   ; 
- D 1 - I - 0x00637E 01:A36E: 04        .byte $04   ; 
- D 1 - I - 0x00637F 01:A36F: 04        .byte $04   ; 
- D 1 - I - 0x006380 01:A370: 04        .byte $04   ; 
- D 1 - I - 0x006381 01:A371: 04        .byte $04   ; 
- D 1 - I - 0x006382 01:A372: 04        .byte $04   ; 
- D 1 - I - 0x006383 01:A373: 04        .byte $04   ; 
- - - - - - 0x006384 01:A374: 04        .byte $04   ; 
- - - - - - 0x006385 01:A375: 04        .byte $04   ; 
- - - - - - 0x006386 01:A376: 04        .byte $04   ; 
off_A377_1D:
- D 1 - I - 0x006387 01:A377: 16        .byte $16   ; 
- D 1 - I - 0x006388 01:A378: 04        .byte $04   ; 
- D 1 - I - 0x006389 01:A379: 04        .byte $04   ; 
- D 1 - I - 0x00638A 01:A37A: 04        .byte $04   ; 
- D 1 - I - 0x00638B 01:A37B: 04        .byte $04   ; 
- D 1 - I - 0x00638C 01:A37C: 16        .byte $16   ; 
- D 1 - I - 0x00638D 01:A37D: 04        .byte $04   ; 
- D 1 - I - 0x00638E 01:A37E: 04        .byte $04   ; 
- D 1 - I - 0x00638F 01:A37F: 04        .byte $04   ; 
- D 1 - I - 0x006390 01:A380: 04        .byte $04   ; 
- D 1 - I - 0x006391 01:A381: 16        .byte $16   ; 
- D 1 - I - 0x006392 01:A382: 04        .byte $04   ; 
- D 1 - I - 0x006393 01:A383: 04        .byte $04   ; 
- D 1 - I - 0x006394 01:A384: 16        .byte $16   ; 
- D 1 - I - 0x006395 01:A385: 61        .byte $61   ; 
- D 1 - I - 0x006396 01:A386: 6D        .byte $6D   ; 
- D 1 - I - 0x006397 01:A387: 6D        .byte $6D   ; 
- D 1 - I - 0x006398 01:A388: 6D        .byte $6D   ; 
- D 1 - I - 0x006399 01:A389: 6D        .byte $6D   ; 
- D 1 - I - 0x00639A 01:A38A: 6D        .byte $6D   ; 
- D 1 - I - 0x00639B 01:A38B: 6D        .byte $6D   ; 
- D 1 - I - 0x00639C 01:A38C: 67        .byte $67   ; 
- D 1 - I - 0x00639D 01:A38D: 04        .byte $04   ; 
- D 1 - I - 0x00639E 01:A38E: 04        .byte $04   ; 
- D 1 - I - 0x00639F 01:A38F: 04        .byte $04   ; 
- D 1 - I - 0x0063A0 01:A390: 04        .byte $04   ; 
- D 1 - I - 0x0063A1 01:A391: 04        .byte $04   ; 
- D 1 - I - 0x0063A2 01:A392: 04        .byte $04   ; 
- D 1 - I - 0x0063A3 01:A393: 04        .byte $04   ; 
- D 1 - I - 0x0063A4 01:A394: 04        .byte $04   ; 
- D 1 - I - 0x0063A5 01:A395: 04        .byte $04   ; 
- D 1 - I - 0x0063A6 01:A396: 2B        .byte $2B   ; 
off_A397_07:
- D 1 - I - 0x0063A7 01:A397: 00        .byte $00   ; 
- D 1 - I - 0x0063A8 01:A398: 00        .byte $00   ; 
- D 1 - I - 0x0063A9 01:A399: 00        .byte $00   ; 
- D 1 - I - 0x0063AA 01:A39A: 00        .byte $00   ; 
- D 1 - I - 0x0063AB 01:A39B: 00        .byte $00   ; 
- D 1 - I - 0x0063AC 01:A39C: 00        .byte $00   ; 
- - - - - - 0x0063AD 01:A39D: 00        .byte $00   ; 
- - - - - - 0x0063AE 01:A39E: 00        .byte $00   ; 
- D 1 - I - 0x0063AF 01:A39F: 55        .byte $55   ; 
- D 1 - I - 0x0063B0 01:A3A0: 10        .byte $10   ; 
- D 1 - I - 0x0063B1 01:A3A1: 00        .byte $00   ; 
- D 1 - I - 0x0063B2 01:A3A2: 00        .byte $00   ; 
- D 1 - I - 0x0063B3 01:A3A3: 00        .byte $00   ; 
- D 1 - I - 0x0063B4 01:A3A4: 00        .byte $00   ; 
- - - - - - 0x0063B5 01:A3A5: 00        .byte $00   ; 
- - - - - - 0x0063B6 01:A3A6: 00        .byte $00   ; 
- D 1 - I - 0x0063B7 01:A3A7: 55        .byte $55   ; 
- D 1 - I - 0x0063B8 01:A3A8: 11        .byte $11   ; 
- D 1 - I - 0x0063B9 01:A3A9: 00        .byte $00   ; 
- D 1 - I - 0x0063BA 01:A3AA: 00        .byte $00   ; 
- D 1 - I - 0x0063BB 01:A3AB: 00        .byte $00   ; 
- D 1 - I - 0x0063BC 01:A3AC: 00        .byte $00   ; 
- - - - - - 0x0063BD 01:A3AD: 00        .byte $00   ; 
- - - - - - 0x0063BE 01:A3AE: 00        .byte $00   ; 
- D 1 - I - 0x0063BF 01:A3AF: 00        .byte $00   ; 
- D 1 - I - 0x0063C0 01:A3B0: 00        .byte $00   ; 
- D 1 - I - 0x0063C1 01:A3B1: 00        .byte $00   ; 
- D 1 - I - 0x0063C2 01:A3B2: 00        .byte $00   ; 
- D 1 - I - 0x0063C3 01:A3B3: 00        .byte $00   ; 
- D 1 - I - 0x0063C4 01:A3B4: 00        .byte $00   ; 
- - - - - - 0x0063C5 01:A3B5: 00        .byte $00   ; 
- - - - - - 0x0063C6 01:A3B6: 00        .byte $00   ; 
- - - - - - 0x0063C7 01:A3B7: 00        .byte $00   ; 
- - - - - - 0x0063C8 01:A3B8: 00        .byte $00   ; 
- - - - - - 0x0063C9 01:A3B9: 00        .byte $00   ; 
- - - - - - 0x0063CA 01:A3BA: 00        .byte $00   ; 
- - - - - - 0x0063CB 01:A3BB: 00        .byte $00   ; 
- - - - - - 0x0063CC 01:A3BC: 00        .byte $00   ; 
- - - - - - 0x0063CD 01:A3BD: 00        .byte $00   ; 
- - - - - - 0x0063CE 01:A3BE: 00        .byte $00   ; 
- - - - - - 0x0063CF 01:A3BF: 00        .byte $00   ; 
- - - - - - 0x0063D0 01:A3C0: 00        .byte $00   ; 
- - - - - - 0x0063D1 01:A3C1: 00        .byte $00   ; 
- - - - - - 0x0063D2 01:A3C2: 00        .byte $00   ; 
- - - - - - 0x0063D3 01:A3C3: 00        .byte $00   ; 
- - - - - - 0x0063D4 01:A3C4: 00        .byte $00   ; 
- - - - - - 0x0063D5 01:A3C5: 00        .byte $00   ; 
- - - - - - 0x0063D6 01:A3C6: 00        .byte $00   ; 
- - - - - - 0x0063D7 01:A3C7: 00        .byte $00   ; 
- - - - - - 0x0063D8 01:A3C8: 00        .byte $00   ; 
- - - - - - 0x0063D9 01:A3C9: 00        .byte $00   ; 
- - - - - - 0x0063DA 01:A3CA: 00        .byte $00   ; 
- - - - - - 0x0063DB 01:A3CB: 00        .byte $00   ; 
- - - - - - 0x0063DC 01:A3CC: 00        .byte $00   ; 
- - - - - - 0x0063DD 01:A3CD: 00        .byte $00   ; 
- - - - - - 0x0063DE 01:A3CE: 00        .byte $00   ; 
- - - - - - 0x0063DF 01:A3CF: 00        .byte $00   ; 
- - - - - - 0x0063E0 01:A3D0: 00        .byte $00   ; 
- - - - - - 0x0063E1 01:A3D1: 00        .byte $00   ; 
- - - - - - 0x0063E2 01:A3D2: 00        .byte $00   ; 
- - - - - - 0x0063E3 01:A3D3: 00        .byte $00   ; 
- - - - - - 0x0063E4 01:A3D4: 00        .byte $00   ; 
- - - - - - 0x0063E5 01:A3D5: 00        .byte $00   ; 
- - - - - - 0x0063E6 01:A3D6: 00        .byte $00   ; 
off_A3D7_09:
- - - - - - 0x0063E7 01:A3D7: 00        .byte $00   ; 
- - - - - - 0x0063E8 01:A3D8: 00        .byte $00   ; 
- - - - - - 0x0063E9 01:A3D9: 00        .byte $00   ; 
- - - - - - 0x0063EA 01:A3DA: 00        .byte $00   ; 
- - - - - - 0x0063EB 01:A3DB: 00        .byte $00   ; 
- - - - - - 0x0063EC 01:A3DC: 00        .byte $00   ; 
- - - - - - 0x0063ED 01:A3DD: 00        .byte $00   ; 
- - - - - - 0x0063EE 01:A3DE: 00        .byte $00   ; 
- - - - - - 0x0063EF 01:A3DF: 00        .byte $00   ; 
- D 1 - I - 0x0063F0 01:A3E0: 00        .byte $00   ; 
- D 1 - I - 0x0063F1 01:A3E1: 00        .byte $00   ; 
- D 1 - I - 0x0063F2 01:A3E2: 00        .byte $00   ; 
- D 1 - I - 0x0063F3 01:A3E3: 00        .byte $00   ; 
- D 1 - I - 0x0063F4 01:A3E4: 00        .byte $00   ; 
- D 1 - I - 0x0063F5 01:A3E5: 00        .byte $00   ; 
- D 1 - I - 0x0063F6 01:A3E6: 00        .byte $00   ; 
- D 1 - I - 0x0063F7 01:A3E7: 00        .byte $00   ; 
- D 1 - I - 0x0063F8 01:A3E8: 00        .byte $00   ; 
- D 1 - I - 0x0063F9 01:A3E9: 00        .byte $00   ; 
- D 1 - I - 0x0063FA 01:A3EA: 21        .byte $21   ; 
off_A3EB_16:
- D 1 - I - 0x0063FB 01:A3EB: 00        .byte $00   ; 
- D 1 - I - 0x0063FC 01:A3EC: 00        .byte $00   ; 
- D 1 - I - 0x0063FD 01:A3ED: 00        .byte $00   ; 
- D 1 - I - 0x0063FE 01:A3EE: 00        .byte $00   ; 
- D 1 - I - 0x0063FF 01:A3EF: 00        .byte $00   ; 
- D 1 - I - 0x006400 01:A3F0: 00        .byte $00   ; 
- D 1 - I - 0x006401 01:A3F1: 00        .byte $00   ; 
- D 1 - I - 0x006402 01:A3F2: 00        .byte $00   ; 
- D 1 - I - 0x006403 01:A3F3: 00        .byte $00   ; 
- D 1 - I - 0x006404 01:A3F4: 00        .byte $00   ; 
- D 1 - I - 0x006405 01:A3F5: 60        .byte $60   ; 
- D 1 - I - 0x006406 01:A3F6: 6E        .byte $6E   ; 
- D 1 - I - 0x006407 01:A3F7: 6C        .byte $6C   ; 
- D 1 - I - 0x006408 01:A3F8: 6C        .byte $6C   ; 
- D 1 - I - 0x006409 01:A3F9: 6C        .byte $6C   ; 
- D 1 - I - 0x00640A 01:A3FA: 7C        .byte $7C   ; 
- D 1 - I - 0x00640B 01:A3FB: 54        .byte $54   ; 
- D 1 - I - 0x00640C 01:A3FC: 42        .byte $42   ; 
- D 1 - I - 0x00640D 01:A3FD: 00        .byte $00   ; 
- D 1 - I - 0x00640E 01:A3FE: 00        .byte $00   ; 
- D 1 - I - 0x00640F 01:A3FF: 00        .byte $00   ; 
- D 1 - I - 0x006410 01:A400: 00        .byte $00   ; 
- D 1 - I - 0x006411 01:A401: 00        .byte $00   ; 
- D 1 - I - 0x006412 01:A402: 00        .byte $00   ; 
- D 1 - I - 0x006413 01:A403: 00        .byte $00   ; 
- D 1 - I - 0x006414 01:A404: 00        .byte $00   ; 
- D 1 - I - 0x006415 01:A405: 00        .byte $00   ; 
- D 1 - I - 0x006416 01:A406: 00        .byte $00   ; 
- D 1 - I - 0x006417 01:A407: 08        .byte $08   ; 
- D 1 - I - 0x006418 01:A408: 00        .byte $00   ; 
- D 1 - I - 0x006419 01:A409: 00        .byte $00   ; 
- D 1 - I - 0x00641A 01:A40A: 1B        .byte $1B   ; 
off_A40B_0A:
- - - - - - 0x00641B 01:A40B: 00        .byte $00   ; 
- - - - - - 0x00641C 01:A40C: 00        .byte $00   ; 
- - - - - - 0x00641D 01:A40D: 00        .byte $00   ; 
- - - - - - 0x00641E 01:A40E: 00        .byte $00   ; 
- - - - - - 0x00641F 01:A40F: 00        .byte $00   ; 
- - - - - - 0x006420 01:A410: 00        .byte $00   ; 
- - - - - - 0x006421 01:A411: 00        .byte $00   ; 
- - - - - - 0x006422 01:A412: 00        .byte $00   ; 
- - - - - - 0x006423 01:A413: 00        .byte $00   ; 
- D 1 - I - 0x006424 01:A414: 00        .byte $00   ; 
- D 1 - I - 0x006425 01:A415: 00        .byte $00   ; 
- D 1 - I - 0x006426 01:A416: 00        .byte $00   ; 
- D 1 - I - 0x006427 01:A417: 00        .byte $00   ; 
- D 1 - I - 0x006428 01:A418: 00        .byte $00   ; 
- D 1 - I - 0x006429 01:A419: 00        .byte $00   ; 
- D 1 - I - 0x00642A 01:A41A: 00        .byte $00   ; 
- D 1 - I - 0x00642B 01:A41B: 00        .byte $00   ; 
- D 1 - I - 0x00642C 01:A41C: 00        .byte $00   ; 
- D 1 - I - 0x00642D 01:A41D: 27        .byte $27   ; 
- D 1 - I - 0x00642E 01:A41E: 1C        .byte $1C   ; 
- D 1 - I - 0x00642F 01:A41F: 00        .byte $00   ; 
- D 1 - I - 0x006430 01:A420: 00        .byte $00   ; 
- D 1 - I - 0x006431 01:A421: 00        .byte $00   ; 
- D 1 - I - 0x006432 01:A422: 00        .byte $00   ; 
- D 1 - I - 0x006433 01:A423: 14        .byte $14   ; 
- D 1 - I - 0x006434 01:A424: 00        .byte $00   ; 
- D 1 - I - 0x006435 01:A425: 00        .byte $00   ; 
- D 1 - I - 0x006436 01:A426: 00        .byte $00   ; 
off_A427_09:
- D 1 - I - 0x006437 01:A427: 14        .byte $14   ; 
- D 1 - I - 0x006438 01:A428: 48        .byte $48   ; 
- D 1 - I - 0x006439 01:A429: 60        .byte $60   ; 
- D 1 - I - 0x00643A 01:A42A: 6C        .byte $6C   ; 
- D 1 - I - 0x00643B 01:A42B: 6E        .byte $6E   ; 
- D 1 - I - 0x00643C 01:A42C: 66        .byte $66   ; 
- D 1 - I - 0x00643D 01:A42D: 00        .byte $00   ; 
- D 1 - I - 0x00643E 01:A42E: 14        .byte $14   ; 
- D 1 - I - 0x00643F 01:A42F: 00        .byte $00   ; 
- D 1 - I - 0x006440 01:A430: 00        .byte $00   ; 
- D 1 - I - 0x006441 01:A431: 00        .byte $00   ; 
- D 1 - I - 0x006442 01:A432: 00        .byte $00   ; 
- D 1 - I - 0x006443 01:A433: 26        .byte $26   ; 
- D 1 - I - 0x006444 01:A434: 00        .byte $00   ; 
- D 1 - I - 0x006445 01:A435: 00        .byte $00   ; 
- D 1 - I - 0x006446 01:A436: 00        .byte $00   ; 
- D 1 - I - 0x006447 01:A437: 00        .byte $00   ; 
- D 1 - I - 0x006448 01:A438: 00        .byte $00   ; 
- D 1 - I - 0x006449 01:A439: 00        .byte $00   ; 
- D 1 - I - 0x00644A 01:A43A: 00        .byte $00   ; 
- D 1 - I - 0x00644B 01:A43B: 00        .byte $00   ; 
- D 1 - I - 0x00644C 01:A43C: 00        .byte $00   ; 
- D 1 - I - 0x00644D 01:A43D: 00        .byte $00   ; 
- D 1 - I - 0x00644E 01:A43E: 00        .byte $00   ; 
- - - - - - 0x00644F 01:A43F: 00        .byte $00   ; 
- - - - - - 0x006450 01:A440: 00        .byte $00   ; 
- - - - - - 0x006451 01:A441: 00        .byte $00   ; 
- - - - - - 0x006452 01:A442: 00        .byte $00   ; 
- - - - - - 0x006453 01:A443: 00        .byte $00   ; 
- - - - - - 0x006454 01:A444: 15        .byte $15   ; 
- - - - - - 0x006455 01:A445: 00        .byte $00   ; 
- - - - - - 0x006456 01:A446: 00        .byte $00   ; 
off_A447_0C:
- - - - - - 0x006457 01:A447: 04        .byte $04   ; 
- - - - - - 0x006458 01:A448: 04        .byte $04   ; 
- - - - - - 0x006459 01:A449: 04        .byte $04   ; 
- - - - - - 0x00645A 01:A44A: 04        .byte $04   ; 
- - - - - - 0x00645B 01:A44B: 04        .byte $04   ; 
- - - - - - 0x00645C 01:A44C: 04        .byte $04   ; 
- - - - - - 0x00645D 01:A44D: 04        .byte $04   ; 
- - - - - - 0x00645E 01:A44E: 04        .byte $04   ; 
- - - - - - 0x00645F 01:A44F: 04        .byte $04   ; 
- D 1 - I - 0x006460 01:A450: 04        .byte $04   ; 
- D 1 - I - 0x006461 01:A451: 04        .byte $04   ; 
- D 1 - I - 0x006462 01:A452: 04        .byte $04   ; 
- D 1 - I - 0x006463 01:A453: 04        .byte $04   ; 
- D 1 - I - 0x006464 01:A454: 04        .byte $04   ; 
- D 1 - I - 0x006465 01:A455: 04        .byte $04   ; 
- D 1 - I - 0x006466 01:A456: 04        .byte $04   ; 
- D 1 - I - 0x006467 01:A457: 04        .byte $04   ; 
- D 1 - I - 0x006468 01:A458: 04        .byte $04   ; 
- D 1 - I - 0x006469 01:A459: 36        .byte $36   ; 
- D 1 - I - 0x00646A 01:A45A: 11        .byte $11   ; 
- D 1 - I - 0x00646B 01:A45B: 11        .byte $11   ; 
- D 1 - I - 0x00646C 01:A45C: 11        .byte $11   ; 
- D 1 - I - 0x00646D 01:A45D: 11        .byte $11   ; 
- D 1 - I - 0x00646E 01:A45E: 11        .byte $11   ; 
- D 1 - I - 0x00646F 01:A45F: 11        .byte $11   ; 
- D 1 - I - 0x006470 01:A460: 11        .byte $11   ; 
- D 1 - I - 0x006471 01:A461: 11        .byte $11   ; 
- D 1 - I - 0x006472 01:A462: 11        .byte $11   ; 
- D 1 - I - 0x006473 01:A463: E5        .byte $E5   ; 
- D 1 - I - 0x006474 01:A464: E8        .byte $E8   ; 
- D 1 - I - 0x006475 01:A465: E9        .byte $E9   ; 
off_A466_04:
- D 1 - I - 0x006476 01:A466: 6D        .byte $6D   ; 
- D 1 - I - 0x006477 01:A467: 7D        .byte $7D   ; 
- D 1 - I - 0x006478 01:A468: 55        .byte $55   ; 
- D 1 - I - 0x006479 01:A469: 43        .byte $43   ; 
- D 1 - I - 0x00647A 01:A46A: 04        .byte $04   ; 
- D 1 - I - 0x00647B 01:A46B: 04        .byte $04   ; 
- D 1 - I - 0x00647C 01:A46C: 04        .byte $04   ; 
- D 1 - I - 0x00647D 01:A46D: 04        .byte $04   ; 
- D 1 - I - 0x00647E 01:A46E: 04        .byte $04   ; 
- D 1 - I - 0x00647F 01:A46F: 04        .byte $04   ; 
- D 1 - I - 0x006480 01:A470: 16        .byte $16   ; 
- D 1 - I - 0x006481 01:A471: 04        .byte $04   ; 
- D 1 - I - 0x006482 01:A472: 04        .byte $04   ; 
- D 1 - I - 0x006483 01:A473: 04        .byte $04   ; 
- D 1 - I - 0x006484 01:A474: 04        .byte $04   ; 
- D 1 - I - 0x006485 01:A475: 04        .byte $04   ; 
- D 1 - I - 0x006486 01:A476: 04        .byte $04   ; 
- D 1 - I - 0x006487 01:A477: 4D        .byte $4D   ; 
- D 1 - I - 0x006488 01:A478: 61        .byte $61   ; 
- D 1 - I - 0x006489 01:A479: 6D        .byte $6D   ; 
- D 1 - I - 0x00648A 01:A47A: 6D        .byte $6D   ; 
- D 1 - I - 0x00648B 01:A47B: 6D        .byte $6D   ; 
- D 1 - I - 0x00648C 01:A47C: 71        .byte $71   ; 
- D 1 - I - 0x00648D 01:A47D: 6D        .byte $6D   ; 
- D 1 - I - 0x00648E 01:A47E: 6D        .byte $6D   ; 
- D 1 - I - 0x00648F 01:A47F: 6B        .byte $6B   ; 
- D 1 - I - 0x006490 01:A480: 04        .byte $04   ; 
- D 1 - I - 0x006491 01:A481: 04        .byte $04   ; 
- D 1 - I - 0x006492 01:A482: 04        .byte $04   ; 
- D 1 - I - 0x006493 01:A483: 04        .byte $04   ; 
- D 1 - I - 0x006494 01:A484: 04        .byte $04   ; 
- D 1 - I - 0x006495 01:A485: 2B        .byte $2B   ; 
off_A486_0E:
- - - - - - 0x006496 01:A486: 00        .byte $00   ; 
- - - - - - 0x006497 01:A487: 00        .byte $00   ; 
- - - - - - 0x006498 01:A488: 00        .byte $00   ; 
- - - - - - 0x006499 01:A489: 00        .byte $00   ; 
- - - - - - 0x00649A 01:A48A: 00        .byte $00   ; 
- - - - - - 0x00649B 01:A48B: 00        .byte $00   ; 
- - - - - - 0x00649C 01:A48C: 00        .byte $00   ; 
- - - - - - 0x00649D 01:A48D: 00        .byte $00   ; 
- - - - - - 0x00649E 01:A48E: 00        .byte $00   ; 
- D 1 - I - 0x00649F 01:A48F: 14        .byte $14   ; 
- D 1 - I - 0x0064A0 01:A490: 00        .byte $00   ; 
- D 1 - I - 0x0064A1 01:A491: 00        .byte $00   ; 
- D 1 - I - 0x0064A2 01:A492: 00        .byte $00   ; 
- D 1 - I - 0x0064A3 01:A493: B0        .byte $B0   ; 
- D 1 - I - 0x0064A4 01:A494: B1        .byte $B1   ; 
- D 1 - I - 0x0064A5 01:A495: B2        .byte $B2   ; 
- D 1 - I - 0x0064A6 01:A496: B3        .byte $B3   ; 
- D 1 - I - 0x0064A7 01:A497: B4        .byte $B4   ; 
- D 1 - I - 0x0064A8 01:A498: 24        .byte $24   ; 
- D 1 - I - 0x0064A9 01:A499: 00        .byte $00   ; 
- D 1 - I - 0x0064AA 01:A49A: 00        .byte $00   ; 
- D 1 - I - 0x0064AB 01:A49B: 15        .byte $15   ; 
- D 1 - I - 0x0064AC 01:A49C: 00        .byte $00   ; 
- D 1 - I - 0x0064AD 01:A49D: 00        .byte $00   ; 
- D 1 - I - 0x0064AE 01:A49E: 40        .byte $40   ; 
- D 1 - I - 0x0064AF 01:A49F: 54        .byte $54   ; 
- D 1 - I - 0x0064B0 01:A4A0: 54        .byte $54   ; 
- D 1 - I - 0x0064B1 01:A4A1: 54        .byte $54   ; 
- D 1 - I - 0x0064B2 01:A4A2: 7E        .byte $7E   ; 
- D 1 - I - 0x0064B3 01:A4A3: 6C        .byte $6C   ; 
- D 1 - I - 0x0064B4 01:A4A4: EE        .byte $EE   ; 
- D 1 - I - 0x0064B5 01:A4A5: 6E        .byte $6E   ; 
off_A4A6_10:
- - - - - - 0x0064B6 01:A4A6: 04        .byte $04   ; 
- - - - - - 0x0064B7 01:A4A7: 04        .byte $04   ; 
- - - - - - 0x0064B8 01:A4A8: 04        .byte $04   ; 
- - - - - - 0x0064B9 01:A4A9: 04        .byte $04   ; 
- - - - - - 0x0064BA 01:A4AA: 04        .byte $04   ; 
- - - - - - 0x0064BB 01:A4AB: 04        .byte $04   ; 
- - - - - - 0x0064BC 01:A4AC: 04        .byte $04   ; 
- - - - - - 0x0064BD 01:A4AD: 04        .byte $04   ; 
- - - - - - 0x0064BE 01:A4AE: 04        .byte $04   ; 
- D 1 - I - 0x0064BF 01:A4AF: 04        .byte $04   ; 
- D 1 - I - 0x0064C0 01:A4B0: 04        .byte $04   ; 
- D 1 - I - 0x0064C1 01:A4B1: 04        .byte $04   ; 
- D 1 - I - 0x0064C2 01:A4B2: 04        .byte $04   ; 
- D 1 - I - 0x0064C3 01:A4B3: D0        .byte $D0   ; 
- D 1 - I - 0x0064C4 01:A4B4: D1        .byte $D1   ; 
- D 1 - I - 0x0064C5 01:A4B5: D2        .byte $D2   ; 
- D 1 - I - 0x0064C6 01:A4B6: D3        .byte $D3   ; 
- D 1 - I - 0x0064C7 01:A4B7: D4        .byte $D4   ; 
- D 1 - I - 0x0064C8 01:A4B8: 32        .byte $32   ; 
- D 1 - I - 0x0064C9 01:A4B9: 04        .byte $04   ; 
- D 1 - I - 0x0064CA 01:A4BA: 04        .byte $04   ; 
- D 1 - I - 0x0064CB 01:A4BB: 04        .byte $04   ; 
- D 1 - I - 0x0064CC 01:A4BC: 04        .byte $04   ; 
- D 1 - I - 0x0064CD 01:A4BD: 04        .byte $04   ; 
- D 1 - I - 0x0064CE 01:A4BE: 61        .byte $61   ; 
- D 1 - I - 0x0064CF 01:A4BF: 6D        .byte $6D   ; 
- D 1 - I - 0x0064D0 01:A4C0: 6D        .byte $6D   ; 
- D 1 - I - 0x0064D1 01:A4C1: 70        .byte $70   ; 
- D 1 - I - 0x0064D2 01:A4C2: 6A        .byte $6A   ; 
- D 1 - I - 0x0064D3 01:A4C3: 4F        .byte $4F   ; 
- D 1 - I - 0x0064D4 01:A4C4: 31        .byte $31   ; 
- D 1 - I - 0x0064D5 01:A4C5: 04        .byte $04   ; 
off_A4C6_11:
- - - - - - 0x0064D6 01:A4C6: 00        .byte $00   ; 
- - - - - - 0x0064D7 01:A4C7: 00        .byte $00   ; 
- - - - - - 0x0064D8 01:A4C8: 00        .byte $00   ; 
- - - - - - 0x0064D9 01:A4C9: 00        .byte $00   ; 
- - - - - - 0x0064DA 01:A4CA: 00        .byte $00   ; 
- - - - - - 0x0064DB 01:A4CB: 00        .byte $00   ; 
- - - - - - 0x0064DC 01:A4CC: 00        .byte $00   ; 
- - - - - - 0x0064DD 01:A4CD: 00        .byte $00   ; 
- - - - - - 0x0064DE 01:A4CE: 00        .byte $00   ; 
- D 1 - I - 0x0064DF 01:A4CF: 00        .byte $00   ; 
- D 1 - I - 0x0064E0 01:A4D0: 00        .byte $00   ; 
- D 1 - I - 0x0064E1 01:A4D1: 00        .byte $00   ; 
- D 1 - I - 0x0064E2 01:A4D2: 00        .byte $00   ; 
- D 1 - I - 0x0064E3 01:A4D3: 95        .byte $95   ; 
- D 1 - I - 0x0064E4 01:A4D4: 96        .byte $96   ; 
- D 1 - I - 0x0064E5 01:A4D5: 97        .byte $97   ; 
- D 1 - I - 0x0064E6 01:A4D6: 98        .byte $98   ; 
- D 1 - I - 0x0064E7 01:A4D7: B4        .byte $B4   ; 
- D 1 - I - 0x0064E8 01:A4D8: 21        .byte $21   ; 
- D 1 - I - 0x0064E9 01:A4D9: 00        .byte $00   ; 
- D 1 - I - 0x0064EA 01:A4DA: 00        .byte $00   ; 
- D 1 - I - 0x0064EB 01:A4DB: 00        .byte $00   ; 
- D 1 - I - 0x0064EC 01:A4DC: 00        .byte $00   ; 
- D 1 - I - 0x0064ED 01:A4DD: 00        .byte $00   ; 
- D 1 - I - 0x0064EE 01:A4DE: 44        .byte $44   ; 
- D 1 - I - 0x0064EF 01:A4DF: 5A        .byte $5A   ; 
- D 1 - I - 0x0064F0 01:A4E0: 5C        .byte $5C   ; 
- D 1 - I - 0x0064F1 01:A4E1: 5D        .byte $5D   ; 
- D 1 - I - 0x0064F2 01:A4E2: 46        .byte $46   ; 
- D 1 - I - 0x0064F3 01:A4E3: 27        .byte $27   ; 
off_A4E4_09:
- D 1 - I - 0x0064F4 01:A4E4: 1C        .byte $1C   ; 
- D 1 - I - 0x0064F5 01:A4E5: 00        .byte $00   ; 
- D 1 - I - 0x0064F6 01:A4E6: 00        .byte $00   ; 
- D 1 - I - 0x0064F7 01:A4E7: 14        .byte $14   ; 
- D 1 - I - 0x0064F8 01:A4E8: 60        .byte $60   ; 
- D 1 - I - 0x0064F9 01:A4E9: 6F        .byte $6F   ; 
- D 1 - I - 0x0064FA 01:A4EA: 6C        .byte $6C   ; 
- D 1 - I - 0x0064FB 01:A4EB: 66        .byte $66   ; 
- D 1 - I - 0x0064FC 01:A4EC: 00        .byte $00   ; 
- D 1 - I - 0x0064FD 01:A4ED: 14        .byte $14   ; 
- D 1 - I - 0x0064FE 01:A4EE: 00        .byte $00   ; 
- D 1 - I - 0x0064FF 01:A4EF: 00        .byte $00   ; 
- D 1 - I - 0x006500 01:A4F0: 00        .byte $00   ; 
- D 1 - I - 0x006501 01:A4F1: 00        .byte $00   ; 
- D 1 - I - 0x006502 01:A4F2: 00        .byte $00   ; 
- D 1 - I - 0x006503 01:A4F3: 00        .byte $00   ; 
- D 1 - I - 0x006504 01:A4F4: 00        .byte $00   ; 
- D 1 - I - 0x006505 01:A4F5: 15        .byte $15   ; 
- D 1 - I - 0x006506 01:A4F6: 00        .byte $00   ; 
- D 1 - I - 0x006507 01:A4F7: 00        .byte $00   ; 
- D 1 - I - 0x006508 01:A4F8: 00        .byte $00   ; 
- D 1 - I - 0x006509 01:A4F9: 00        .byte $00   ; 
- D 1 - I - 0x00650A 01:A4FA: 00        .byte $00   ; 
- D 1 - I - 0x00650B 01:A4FB: 00        .byte $00   ; 
- D 1 - I - 0x00650C 01:A4FC: 15        .byte $15   ; 
- D 1 - I - 0x00650D 01:A4FD: 48        .byte $48   ; 
- D 1 - I - 0x00650E 01:A4FE: 60        .byte $60   ; 
- D 1 - I - 0x00650F 01:A4FF: 6E        .byte $6E   ; 
- D 1 - I - 0x006510 01:A500: 6C        .byte $6C   ; 
- D 1 - I - 0x006511 01:A501: 66        .byte $66   ; 
- D 1 - I - 0x006512 01:A502: 4A        .byte $4A   ; 
- D 1 - I - 0x006513 01:A503: 14        .byte $14   ; 
off_A504_00:
- - - - - - 0x006514 01:A504: 00        .byte $00   ; 
- - - - - - 0x006515 01:A505: 00        .byte $00   ; 
- - - - - - 0x006516 01:A506: 00        .byte $00   ; 
- - - - - - 0x006517 01:A507: 00        .byte $00   ; 
- - - - - - 0x006518 01:A508: 00        .byte $00   ; 
- - - - - - 0x006519 01:A509: 00        .byte $00   ; 
- - - - - - 0x00651A 01:A50A: 00        .byte $00   ; 
- - - - - - 0x00651B 01:A50B: 00        .byte $00   ; 
- - - - - - 0x00651C 01:A50C: 00        .byte $00   ; 
- - - - - - 0x00651D 01:A50D: 00        .byte $00   ; 
- D 1 - I - 0x00651E 01:A50E: 00        .byte $00   ; 
- D 1 - I - 0x00651F 01:A50F: 00        .byte $00   ; 
- D 1 - I - 0x006520 01:A510: 00        .byte $00   ; 
- D 1 - I - 0x006521 01:A511: 00        .byte $00   ; 
- D 1 - I - 0x006522 01:A512: 00        .byte $00   ; 
- D 1 - I - 0x006523 01:A513: 00        .byte $00   ; 
- - - - - - 0x006524 01:A514: 00        .byte $00   ; 
- - - - - - 0x006525 01:A515: 00        .byte $00   ; 
- D 1 - I - 0x006526 01:A516: 00        .byte $00   ; 
- D 1 - I - 0x006527 01:A517: 00        .byte $00   ; 
- D 1 - I - 0x006528 01:A518: 00        .byte $00   ; 
- D 1 - I - 0x006529 01:A519: 00        .byte $00   ; 
- D 1 - I - 0x00652A 01:A51A: 00        .byte $00   ; 
- D 1 - I - 0x00652B 01:A51B: 54        .byte $54   ; 
- - - - - - 0x00652C 01:A51C: 00        .byte $00   ; 
- - - - - - 0x00652D 01:A51D: 00        .byte $00   ; 
- D 1 - I - 0x00652E 01:A51E: 00        .byte $00   ; 
- D 1 - I - 0x00652F 01:A51F: 00        .byte $00   ; 
- D 1 - I - 0x006530 01:A520: 00        .byte $00   ; 
- D 1 - I - 0x006531 01:A521: 00        .byte $00   ; 
- D 1 - I - 0x006532 01:A522: 54        .byte $54   ; 
- D 1 - I - 0x006533 01:A523: 55        .byte $55   ; 
- - - - - - 0x006534 01:A524: 00        .byte $00   ; 
- - - - - - 0x006535 01:A525: 00        .byte $00   ; 
- D 1 - I - 0x006536 01:A526: 00        .byte $00   ; 
- D 1 - I - 0x006537 01:A527: 00        .byte $00   ; 
- D 1 - I - 0x006538 01:A528: 00        .byte $00   ; 
- D 1 - I - 0x006539 01:A529: 00        .byte $00   ; 
- D 1 - I - 0x00653A 01:A52A: 05        .byte $05   ; 
- D 1 - I - 0x00653B 01:A52B: 01        .byte $01   ; 
- - - - - - 0x00653C 01:A52C: 00        .byte $00   ; 
- - - - - - 0x00653D 01:A52D: 00        .byte $00   ; 
- D 1 - I - 0x00653E 01:A52E: 00        .byte $00   ; 
- D 1 - I - 0x00653F 01:A52F: 00        .byte $00   ; 
- D 1 - I - 0x006540 01:A530: 00        .byte $00   ; 
- D 1 - I - 0x006541 01:A531: 00        .byte $00   ; 
- D 1 - I - 0x006542 01:A532: 00        .byte $00   ; 
- D 1 - I - 0x006543 01:A533: 00        .byte $00   ; 
- - - - - - 0x006544 01:A534: 00        .byte $00   ; 
- - - - - - 0x006545 01:A535: 00        .byte $00   ; 
- D 1 - I - 0x006546 01:A536: 00        .byte $00   ; 
- D 1 - I - 0x006547 01:A537: 00        .byte $00   ; 
- D 1 - I - 0x006548 01:A538: 00        .byte $00   ; 
- D 1 - I - 0x006549 01:A539: 00        .byte $00   ; 
- D 1 - I - 0x00654A 01:A53A: 00        .byte $00   ; 
- D 1 - I - 0x00654B 01:A53B: 00        .byte $00   ; 
- - - - - - 0x00654C 01:A53C: 00        .byte $00   ; 
- - - - - - 0x00654D 01:A53D: 00        .byte $00   ; 
- D 1 - I - 0x00654E 01:A53E: 00        .byte $00   ; 
- D 1 - I - 0x00654F 01:A53F: 00        .byte $00   ; 
- D 1 - I - 0x006550 01:A540: 00        .byte $00   ; 
- D 1 - I - 0x006551 01:A541: 00        .byte $00   ; 
- D 1 - I - 0x006552 01:A542: 00        .byte $00   ; 
- D 1 - I - 0x006553 01:A543: 00        .byte $00   ; 
off_A544_04:
- D 1 - I - 0x006554 01:A544: 00        .byte $00   ; 
- D 1 - I - 0x006555 01:A545: 00        .byte $00   ; 
- D 1 - I - 0x006556 01:A546: 00        .byte $00   ; 
- D 1 - I - 0x006557 01:A547: 00        .byte $00   ; 
- D 1 - I - 0x006558 01:A548: 40        .byte $40   ; 
- D 1 - I - 0x006559 01:A549: 54        .byte $54   ; 
- D 1 - I - 0x00655A 01:A54A: 54        .byte $54   ; 
- D 1 - I - 0x00655B 01:A54B: 54        .byte $54   ; 
- D 1 - I - 0x00655C 01:A54C: 54        .byte $54   ; 
- D 1 - I - 0x00655D 01:A54D: 42        .byte $42   ; 
- D 1 - I - 0x00655E 01:A54E: 00        .byte $00   ; 
- D 1 - I - 0x00655F 01:A54F: 00        .byte $00   ; 
- D 1 - I - 0x006560 01:A550: 00        .byte $00   ; 
- D 1 - I - 0x006561 01:A551: 00        .byte $00   ; 
- D 1 - I - 0x006562 01:A552: 00        .byte $00   ; 
- D 1 - I - 0x006563 01:A553: 00        .byte $00   ; 
- D 1 - I - 0x006564 01:A554: 00        .byte $00   ; 
- D 1 - I - 0x006565 01:A555: 00        .byte $00   ; 
- D 1 - I - 0x006566 01:A556: 00        .byte $00   ; 
- D 1 - I - 0x006567 01:A557: 00        .byte $00   ; 
- D 1 - I - 0x006568 01:A558: 00        .byte $00   ; 
- D 1 - I - 0x006569 01:A559: 00        .byte $00   ; 
- D 1 - I - 0x00656A 01:A55A: 00        .byte $00   ; 
- D 1 - I - 0x00656B 01:A55B: 00        .byte $00   ; 
- D 1 - I - 0x00656C 01:A55C: 00        .byte $00   ; 
- D 1 - I - 0x00656D 01:A55D: 00        .byte $00   ; 
- D 1 - I - 0x00656E 01:A55E: 00        .byte $00   ; 
- D 1 - I - 0x00656F 01:A55F: 00        .byte $00   ; 
- D 1 - I - 0x006570 01:A560: 00        .byte $00   ; 
- D 1 - I - 0x006571 01:A561: 00        .byte $00   ; 
- D 1 - I - 0x006572 01:A562: 00        .byte $00   ; 
- D 1 - I - 0x006573 01:A563: 00        .byte $00   ; 
off_A564_05:
- D 1 - I - 0x006574 01:A564: 04        .byte $04   ; 
- D 1 - I - 0x006575 01:A565: 04        .byte $04   ; 
- D 1 - I - 0x006576 01:A566: 04        .byte $04   ; 
- D 1 - I - 0x006577 01:A567: 04        .byte $04   ; 
- D 1 - I - 0x006578 01:A568: 61        .byte $61   ; 
- D 1 - I - 0x006579 01:A569: 70        .byte $70   ; 
- D 1 - I - 0x00657A 01:A56A: 6D        .byte $6D   ; 
- D 1 - I - 0x00657B 01:A56B: 6D        .byte $6D   ; 
- D 1 - I - 0x00657C 01:A56C: 6D        .byte $6D   ; 
- D 1 - I - 0x00657D 01:A56D: 67        .byte $67   ; 
off_A56E_05:
- D 1 - I - 0x00657E 01:A56E: 04        .byte $04   ; 
- D 1 - I - 0x00657F 01:A56F: 04        .byte $04   ; 
- D 1 - I - 0x006580 01:A570: 04        .byte $04   ; 
- D 1 - I - 0x006581 01:A571: 04        .byte $04   ; 
- D 1 - I - 0x006582 01:A572: 04        .byte $04   ; 
- D 1 - I - 0x006583 01:A573: 04        .byte $04   ; 
- D 1 - I - 0x006584 01:A574: 04        .byte $04   ; 
- D 1 - I - 0x006585 01:A575: 04        .byte $04   ; 
- D 1 - I - 0x006586 01:A576: 04        .byte $04   ; 
- D 1 - I - 0x006587 01:A577: 04        .byte $04   ; 
- D 1 - I - 0x006588 01:A578: 04        .byte $04   ; 
- D 1 - I - 0x006589 01:A579: 04        .byte $04   ; 
- D 1 - I - 0x00658A 01:A57A: 04        .byte $04   ; 
- D 1 - I - 0x00658B 01:A57B: 04        .byte $04   ; 
- D 1 - I - 0x00658C 01:A57C: 04        .byte $04   ; 
- D 1 - I - 0x00658D 01:A57D: 04        .byte $04   ; 
- D 1 - I - 0x00658E 01:A57E: 04        .byte $04   ; 
- D 1 - I - 0x00658F 01:A57F: 04        .byte $04   ; 
- D 1 - I - 0x006590 01:A580: 04        .byte $04   ; 
- D 1 - I - 0x006591 01:A581: 04        .byte $04   ; 
- D 1 - I - 0x006592 01:A582: 04        .byte $04   ; 
- D 1 - I - 0x006593 01:A583: 04        .byte $04   ; 
- D 1 - I - 0x006594 01:A584: 04        .byte $04   ; 
off_A585_0B:
- D 1 - I - 0x006595 01:A585: 16        .byte $16   ; 
- D 1 - I - 0x006596 01:A586: 04        .byte $04   ; 
- D 1 - I - 0x006597 01:A587: 04        .byte $04   ; 
- D 1 - I - 0x006598 01:A588: 04        .byte $04   ; 
- D 1 - I - 0x006599 01:A589: 16        .byte $16   ; 
- D 1 - I - 0x00659A 01:A58A: 04        .byte $04   ; 
- D 1 - I - 0x00659B 01:A58B: 04        .byte $04   ; 
- D 1 - I - 0x00659C 01:A58C: 04        .byte $04   ; 
- D 1 - I - 0x00659D 01:A58D: 04        .byte $04   ; 
- D 1 - I - 0x00659E 01:A58E: 16        .byte $16   ; 
- D 1 - I - 0x00659F 01:A58F: 04        .byte $04   ; 
- D 1 - I - 0x0065A0 01:A590: 04        .byte $04   ; 
- D 1 - I - 0x0065A1 01:A591: 04        .byte $04   ; 
- D 1 - I - 0x0065A2 01:A592: 04        .byte $04   ; 
- D 1 - I - 0x0065A3 01:A593: 87        .byte $87   ; 
- D 1 - I - 0x0065A4 01:A594: 04        .byte $04   ; 
- D 1 - I - 0x0065A5 01:A595: 36        .byte $36   ; 
- D 1 - I - 0x0065A6 01:A596: 04        .byte $04   ; 
- D 1 - I - 0x0065A7 01:A597: 04        .byte $04   ; 
- D 1 - I - 0x0065A8 01:A598: 04        .byte $04   ; 
- D 1 - I - 0x0065A9 01:A599: 17        .byte $17   ; 
- D 1 - I - 0x0065AA 01:A59A: 04        .byte $04   ; 
- D 1 - I - 0x0065AB 01:A59B: 04        .byte $04   ; 
- D 1 - I - 0x0065AC 01:A59C: 04        .byte $04   ; 
- - - - - - 0x0065AD 01:A59D: 04        .byte $04   ; 
- - - - - - 0x0065AE 01:A59E: 04        .byte $04   ; 
- - - - - - 0x0065AF 01:A59F: 04        .byte $04   ; 
- - - - - - 0x0065B0 01:A5A0: 04        .byte $04   ; 
- - - - - - 0x0065B1 01:A5A1: 04        .byte $04   ; 
- - - - - - 0x0065B2 01:A5A2: 04        .byte $04   ; 
- - - - - - 0x0065B3 01:A5A3: 04        .byte $04   ; 
- - - - - - 0x0065B4 01:A5A4: 04        .byte $04   ; 
off_A5A5_06:
- D 1 - I - 0x0065B5 01:A5A5: 10        .byte $10   ; 
- D 1 - I - 0x0065B6 01:A5A6: 10        .byte $10   ; 
- D 1 - I - 0x0065B7 01:A5A7: 10        .byte $10   ; 
- D 1 - I - 0x0065B8 01:A5A8: 10        .byte $10   ; 
- D 1 - I - 0x0065B9 01:A5A9: 62        .byte $62   ; 
- D 1 - I - 0x0065BA 01:A5AA: 76        .byte $76   ; 
- D 1 - I - 0x0065BB 01:A5AB: 76        .byte $76   ; 
- D 1 - I - 0x0065BC 01:A5AC: 76        .byte $76   ; 
- D 1 - I - 0x0065BD 01:A5AD: 76        .byte $76   ; 
- D 1 - I - 0x0065BE 01:A5AE: 64        .byte $64   ; 
- D 1 - I - 0x0065BF 01:A5AF: 10        .byte $10   ; 
- D 1 - I - 0x0065C0 01:A5B0: 10        .byte $10   ; 
- D 1 - I - 0x0065C1 01:A5B1: 10        .byte $10   ; 
- D 1 - I - 0x0065C2 01:A5B2: 10        .byte $10   ; 
- D 1 - I - 0x0065C3 01:A5B3: 10        .byte $10   ; 
- D 1 - I - 0x0065C4 01:A5B4: 10        .byte $10   ; 
- D 1 - I - 0x0065C5 01:A5B5: 10        .byte $10   ; 
- D 1 - I - 0x0065C6 01:A5B6: 10        .byte $10   ; 
- D 1 - I - 0x0065C7 01:A5B7: 10        .byte $10   ; 
- D 1 - I - 0x0065C8 01:A5B8: 10        .byte $10   ; 
- D 1 - I - 0x0065C9 01:A5B9: 10        .byte $10   ; 
- D 1 - I - 0x0065CA 01:A5BA: 10        .byte $10   ; 
- D 1 - I - 0x0065CB 01:A5BB: 10        .byte $10   ; 
- D 1 - I - 0x0065CC 01:A5BC: 10        .byte $10   ; 
- D 1 - I - 0x0065CD 01:A5BD: 10        .byte $10   ; 
- D 1 - I - 0x0065CE 01:A5BE: 10        .byte $10   ; 
- D 1 - I - 0x0065CF 01:A5BF: 10        .byte $10   ; 
- D 1 - I - 0x0065D0 01:A5C0: 10        .byte $10   ; 
- D 1 - I - 0x0065D1 01:A5C1: 10        .byte $10   ; 
- D 1 - I - 0x0065D2 01:A5C2: 10        .byte $10   ; 
- D 1 - I - 0x0065D3 01:A5C3: 10        .byte $10   ; 
- D 1 - I - 0x0065D4 01:A5C4: 06        .byte $06   ; 
off_A5C5_07:
- D 1 - I - 0x0065D5 01:A5C5: 04        .byte $04   ; 
- D 1 - I - 0x0065D6 01:A5C6: 04        .byte $04   ; 
- D 1 - I - 0x0065D7 01:A5C7: 04        .byte $04   ; 
- D 1 - I - 0x0065D8 01:A5C8: 04        .byte $04   ; 
- D 1 - I - 0x0065D9 01:A5C9: 45        .byte $45   ; 
- D 1 - I - 0x0065DA 01:A5CA: 5B        .byte $5B   ; 
- D 1 - I - 0x0065DB 01:A5CB: 7B        .byte $7B   ; 
- D 1 - I - 0x0065DC 01:A5CC: 6D        .byte $6D   ; 
- D 1 - I - 0x0065DD 01:A5CD: 71        .byte $71   ; 
- D 1 - I - 0x0065DE 01:A5CE: 67        .byte $67   ; 
- D 1 - I - 0x0065DF 01:A5CF: 04        .byte $04   ; 
- D 1 - I - 0x0065E0 01:A5D0: 04        .byte $04   ; 
- D 1 - I - 0x0065E1 01:A5D1: 04        .byte $04   ; 
- D 1 - I - 0x0065E2 01:A5D2: 04        .byte $04   ; 
- D 1 - I - 0x0065E3 01:A5D3: 04        .byte $04   ; 
- D 1 - I - 0x0065E4 01:A5D4: 04        .byte $04   ; 
- D 1 - I - 0x0065E5 01:A5D5: 04        .byte $04   ; 
- D 1 - I - 0x0065E6 01:A5D6: 04        .byte $04   ; 
- D 1 - I - 0x0065E7 01:A5D7: 04        .byte $04   ; 
- D 1 - I - 0x0065E8 01:A5D8: 04        .byte $04   ; 
- D 1 - I - 0x0065E9 01:A5D9: 04        .byte $04   ; 
- D 1 - I - 0x0065EA 01:A5DA: 04        .byte $04   ; 
- D 1 - I - 0x0065EB 01:A5DB: 04        .byte $04   ; 
- D 1 - I - 0x0065EC 01:A5DC: 04        .byte $04   ; 
- D 1 - I - 0x0065ED 01:A5DD: 04        .byte $04   ; 
- D 1 - I - 0x0065EE 01:A5DE: 04        .byte $04   ; 
- D 1 - I - 0x0065EF 01:A5DF: 04        .byte $04   ; 
- D 1 - I - 0x0065F0 01:A5E0: 04        .byte $04   ; 
- D 1 - I - 0x0065F1 01:A5E1: 04        .byte $04   ; 
- D 1 - I - 0x0065F2 01:A5E2: 04        .byte $04   ; 
- D 1 - I - 0x0065F3 01:A5E3: 04        .byte $04   ; 
- D 1 - I - 0x0065F4 01:A5E4: 2B        .byte $2B   ; 
off_A5E5_08:
- D 1 - I - 0x0065F5 01:A5E5: 55        .byte $55   ; 
- D 1 - I - 0x0065F6 01:A5E6: 43        .byte $43   ; 
- D 1 - I - 0x0065F7 01:A5E7: 04        .byte $04   ; 
- D 1 - I - 0x0065F8 01:A5E8: 04        .byte $04   ; 
- D 1 - I - 0x0065F9 01:A5E9: 04        .byte $04   ; 
- D 1 - I - 0x0065FA 01:A5EA: 4D        .byte $4D   ; 
- D 1 - I - 0x0065FB 01:A5EB: 61        .byte $61   ; 
- D 1 - I - 0x0065FC 01:A5EC: 6D        .byte $6D   ; 
- D 1 - I - 0x0065FD 01:A5ED: 6D        .byte $6D   ; 
- D 1 - I - 0x0065FE 01:A5EE: 67        .byte $67   ; 
- D 1 - I - 0x0065FF 01:A5EF: 17        .byte $17   ; 
- D 1 - I - 0x006600 01:A5F0: 04        .byte $04   ; 
- D 1 - I - 0x006601 01:A5F1: 04        .byte $04   ; 
- D 1 - I - 0x006602 01:A5F2: 04        .byte $04   ; 
- D 1 - I - 0x006603 01:A5F3: 04        .byte $04   ; 
- D 1 - I - 0x006604 01:A5F4: 04        .byte $04   ; 
- D 1 - I - 0x006605 01:A5F5: 04        .byte $04   ; 
- D 1 - I - 0x006606 01:A5F6: 04        .byte $04   ; 
- D 1 - I - 0x006607 01:A5F7: 04        .byte $04   ; 
- D 1 - I - 0x006608 01:A5F8: 04        .byte $04   ; 
- D 1 - I - 0x006609 01:A5F9: 04        .byte $04   ; 
- D 1 - I - 0x00660A 01:A5FA: 16        .byte $16   ; 
- D 1 - I - 0x00660B 01:A5FB: 04        .byte $04   ; 
- D 1 - I - 0x00660C 01:A5FC: 04        .byte $04   ; 
- D 1 - I - 0x00660D 01:A5FD: 04        .byte $04   ; 
- D 1 - I - 0x00660E 01:A5FE: 04        .byte $04   ; 
- D 1 - I - 0x00660F 01:A5FF: 04        .byte $04   ; 
- D 1 - I - 0x006610 01:A600: 04        .byte $04   ; 
- D 1 - I - 0x006611 01:A601: 04        .byte $04   ; 
- D 1 - I - 0x006612 01:A602: 04        .byte $04   ; 
- D 1 - I - 0x006613 01:A603: 04        .byte $04   ; 
- D 1 - I - 0x006614 01:A604: 2B        .byte $2B   ; 
off_A605_09:
- D 1 - I - 0x006615 01:A605: 6C        .byte $6C   ; 
- D 1 - I - 0x006616 01:A606: 66        .byte $66   ; 
- D 1 - I - 0x006617 01:A607: 4A        .byte $4A   ; 
- D 1 - I - 0x006618 01:A608: 00        .byte $00   ; 
- D 1 - I - 0x006619 01:A609: 00        .byte $00   ; 
- D 1 - I - 0x00661A 01:A60A: 48        .byte $48   ; 
- D 1 - I - 0x00661B 01:A60B: 60        .byte $60   ; 
- D 1 - I - 0x00661C 01:A60C: 6C        .byte $6C   ; 
- D 1 - I - 0x00661D 01:A60D: 6C        .byte $6C   ; 
- D 1 - I - 0x00661E 01:A60E: 68        .byte $68   ; 
- D 1 - I - 0x00661F 01:A60F: 00        .byte $00   ; 
- D 1 - I - 0x006620 01:A610: 00        .byte $00   ; 
- D 1 - I - 0x006621 01:A611: 00        .byte $00   ; 
- D 1 - I - 0x006622 01:A612: 00        .byte $00   ; 
- D 1 - I - 0x006623 01:A613: 00        .byte $00   ; 
- D 1 - I - 0x006624 01:A614: 00        .byte $00   ; 
- D 1 - I - 0x006625 01:A615: 00        .byte $00   ; 
- D 1 - I - 0x006626 01:A616: 14        .byte $14   ; 
- D 1 - I - 0x006627 01:A617: 00        .byte $00   ; 
- D 1 - I - 0x006628 01:A618: 00        .byte $00   ; 
- D 1 - I - 0x006629 01:A619: 15        .byte $15   ; 
- D 1 - I - 0x00662A 01:A61A: 00        .byte $00   ; 
- D 1 - I - 0x00662B 01:A61B: 00        .byte $00   ; 
- D 1 - I - 0x00662C 01:A61C: 00        .byte $00   ; 
- D 1 - I - 0x00662D 01:A61D: 00        .byte $00   ; 
- D 1 - I - 0x00662E 01:A61E: 00        .byte $00   ; 
- D 1 - I - 0x00662F 01:A61F: 14        .byte $14   ; 
- D 1 - I - 0x006630 01:A620: 00        .byte $00   ; 
- D 1 - I - 0x006631 01:A621: 00        .byte $00   ; 
- D 1 - I - 0x006632 01:A622: 00        .byte $00   ; 
- D 1 - I - 0x006633 01:A623: 00        .byte $00   ; 
- D 1 - I - 0x006634 01:A624: 1B        .byte $1B   ; 
off_A625_0E:
- D 1 - I - 0x006635 01:A625: 6C        .byte $6C   ; 
- D 1 - I - 0x006636 01:A626: 6E        .byte $6E   ; 
- D 1 - I - 0x006637 01:A627: 6C        .byte $6C   ; 
- D 1 - I - 0x006638 01:A628: 68        .byte $68   ; 
- D 1 - I - 0x006639 01:A629: 4E        .byte $4E   ; 
- D 1 - I - 0x00663A 01:A62A: 00        .byte $00   ; 
- D 1 - I - 0x00663B 01:A62B: 00        .byte $00   ; 
- D 1 - I - 0x00663C 01:A62C: 00        .byte $00   ; 
- D 1 - I - 0x00663D 01:A62D: 00        .byte $00   ; 
- D 1 - I - 0x00663E 01:A62E: 15        .byte $15   ; 
- D 1 - I - 0x00663F 01:A62F: 00        .byte $00   ; 
- D 1 - I - 0x006640 01:A630: 00        .byte $00   ; 
- D 1 - I - 0x006641 01:A631: 00        .byte $00   ; 
- D 1 - I - 0x006642 01:A632: 00        .byte $00   ; 
- D 1 - I - 0x006643 01:A633: 00        .byte $00   ; 
- D 1 - I - 0x006644 01:A634: 00        .byte $00   ; 
- D 1 - I - 0x006645 01:A635: 00        .byte $00   ; 
- D 1 - I - 0x006646 01:A636: 00        .byte $00   ; 
- D 1 - I - 0x006647 01:A637: 00        .byte $00   ; 
- D 1 - I - 0x006648 01:A638: 00        .byte $00   ; 
- D 1 - I - 0x006649 01:A639: 00        .byte $00   ; 
- D 1 - I - 0x00664A 01:A63A: 00        .byte $00   ; 
- D 1 - I - 0x00664B 01:A63B: 00        .byte $00   ; 
- D 1 - I - 0x00664C 01:A63C: 00        .byte $00   ; 
- D 1 - I - 0x00664D 01:A63D: 00        .byte $00   ; 
- D 1 - I - 0x00664E 01:A63E: 00        .byte $00   ; 
- D 1 - I - 0x00664F 01:A63F: 00        .byte $00   ; 
- D 1 - I - 0x006650 01:A640: 00        .byte $00   ; 
- D 1 - I - 0x006651 01:A641: 40        .byte $40   ; 
- D 1 - I - 0x006652 01:A642: 54        .byte $54   ; 
- D 1 - I - 0x006653 01:A643: 7E        .byte $7E   ; 
- D 1 - I - 0x006654 01:A644: 72        .byte $72   ; 
off_A645_14:
- D 1 - I - 0x006655 01:A645: 04        .byte $04   ; 
- D 1 - I - 0x006656 01:A646: 04        .byte $04   ; 
- D 1 - I - 0x006657 01:A647: 04        .byte $04   ; 
- D 1 - I - 0x006658 01:A648: 04        .byte $04   ; 
- D 1 - I - 0x006659 01:A649: 04        .byte $04   ; 
- D 1 - I - 0x00665A 01:A64A: 04        .byte $04   ; 
- D 1 - I - 0x00665B 01:A64B: 04        .byte $04   ; 
- D 1 - I - 0x00665C 01:A64C: 04        .byte $04   ; 
- D 1 - I - 0x00665D 01:A64D: 17        .byte $17   ; 
- D 1 - I - 0x00665E 01:A64E: 04        .byte $04   ; 
- D 1 - I - 0x00665F 01:A64F: 41        .byte $41   ; 
- D 1 - I - 0x006660 01:A650: 55        .byte $55   ; 
- D 1 - I - 0x006661 01:A651: 55        .byte $55   ; 
- D 1 - I - 0x006662 01:A652: 55        .byte $55   ; 
- D 1 - I - 0x006663 01:A653: 55        .byte $55   ; 
- D 1 - I - 0x006664 01:A654: 43        .byte $43   ; 
- D 1 - I - 0x006665 01:A655: 04        .byte $04   ; 
- D 1 - I - 0x006666 01:A656: 04        .byte $04   ; 
- D 1 - I - 0x006667 01:A657: 04        .byte $04   ; 
- D 1 - I - 0x006668 01:A658: 04        .byte $04   ; 
- D 1 - I - 0x006669 01:A659: 04        .byte $04   ; 
- D 1 - I - 0x00666A 01:A65A: 16        .byte $16   ; 
- D 1 - I - 0x00666B 01:A65B: 04        .byte $04   ; 
- D 1 - I - 0x00666C 01:A65C: 04        .byte $04   ; 
- D 1 - I - 0x00666D 01:A65D: 04        .byte $04   ; 
- D 1 - I - 0x00666E 01:A65E: 04        .byte $04   ; 
- D 1 - I - 0x00666F 01:A65F: 04        .byte $04   ; 
- D 1 - I - 0x006670 01:A660: 04        .byte $04   ; 
- D 1 - I - 0x006671 01:A661: 04        .byte $04   ; 
- D 1 - I - 0x006672 01:A662: 09        .byte $09   ; 
- D 1 - I - 0x006673 01:A663: 0A        .byte $0A   ; 
- D 1 - I - 0x006674 01:A664: 0B        .byte $0B   ; 
off_A665_15:
- D 1 - I - 0x006675 01:A665: 00        .byte $00   ; 
- D 1 - I - 0x006676 01:A666: 00        .byte $00   ; 
- D 1 - I - 0x006677 01:A667: 00        .byte $00   ; 
- D 1 - I - 0x006678 01:A668: 00        .byte $00   ; 
- D 1 - I - 0x006679 01:A669: 00        .byte $00   ; 
- D 1 - I - 0x00667A 01:A66A: 00        .byte $00   ; 
- D 1 - I - 0x00667B 01:A66B: 00        .byte $00   ; 
- D 1 - I - 0x00667C 01:A66C: 00        .byte $00   ; 
- D 1 - I - 0x00667D 01:A66D: 00        .byte $00   ; 
- D 1 - I - 0x00667E 01:A66E: 00        .byte $00   ; 
- D 1 - I - 0x00667F 01:A66F: 60        .byte $60   ; 
- D 1 - I - 0x006680 01:A670: 6C        .byte $6C   ; 
- D 1 - I - 0x006681 01:A671: 6C        .byte $6C   ; 
- D 1 - I - 0x006682 01:A672: 6E        .byte $6E   ; 
- D 1 - I - 0x006683 01:A673: 6C        .byte $6C   ; 
- D 1 - I - 0x006684 01:A674: 66        .byte $66   ; 
- D 1 - I - 0x006685 01:A675: 4A        .byte $4A   ; 
- D 1 - I - 0x006686 01:A676: 00        .byte $00   ; 
- D 1 - I - 0x006687 01:A677: 00        .byte $00   ; 
- D 1 - I - 0x006688 01:A678: 00        .byte $00   ; 
- D 1 - I - 0x006689 01:A679: 00        .byte $00   ; 
- D 1 - I - 0x00668A 01:A67A: 00        .byte $00   ; 
- D 1 - I - 0x00668B 01:A67B: 00        .byte $00   ; 
- D 1 - I - 0x00668C 01:A67C: 00        .byte $00   ; 
- D 1 - I - 0x00668D 01:A67D: 00        .byte $00   ; 
- D 1 - I - 0x00668E 01:A67E: 00        .byte $00   ; 
- D 1 - I - 0x00668F 01:A67F: 00        .byte $00   ; 
- D 1 - I - 0x006690 01:A680: 00        .byte $00   ; 
- D 1 - I - 0x006691 01:A681: 19        .byte $19   ; 
- D 1 - I - 0x006692 01:A682: 1A        .byte $1A   ; 
- D 1 - I - 0x006693 01:A683: 00        .byte $00   ; 
- D 1 - I - 0x006694 01:A684: 1B        .byte $1B   ; 
off_A685_17:
- D 1 - I - 0x006695 01:A685: 04        .byte $04   ; 
- D 1 - I - 0x006696 01:A686: 04        .byte $04   ; 
- D 1 - I - 0x006697 01:A687: 04        .byte $04   ; 
- D 1 - I - 0x006698 01:A688: 04        .byte $04   ; 
- D 1 - I - 0x006699 01:A689: 04        .byte $04   ; 
- D 1 - I - 0x00669A 01:A68A: 17        .byte $17   ; 
- D 1 - I - 0x00669B 01:A68B: 04        .byte $04   ; 
- D 1 - I - 0x00669C 01:A68C: 04        .byte $04   ; 
- D 1 - I - 0x00669D 01:A68D: 04        .byte $04   ; 
- D 1 - I - 0x00669E 01:A68E: 16        .byte $16   ; 
- D 1 - I - 0x00669F 01:A68F: 45        .byte $45   ; 
- D 1 - I - 0x0066A0 01:A690: 5B        .byte $5B   ; 
- D 1 - I - 0x0066A1 01:A691: 7B        .byte $7B   ; 
- D 1 - I - 0x0066A2 01:A692: 6D        .byte $6D   ; 
- D 1 - I - 0x0066A3 01:A693: 71        .byte $71   ; 
- D 1 - I - 0x0066A4 01:A694: 6D        .byte $6D   ; 
- D 1 - I - 0x0066A5 01:A695: 6D        .byte $6D   ; 
- D 1 - I - 0x0066A6 01:A696: 67        .byte $67   ; 
- D 1 - I - 0x0066A7 01:A697: 4B        .byte $4B   ; 
- D 1 - I - 0x0066A8 01:A698: 04        .byte $04   ; 
- D 1 - I - 0x0066A9 01:A699: 04        .byte $04   ; 
- D 1 - I - 0x0066AA 01:A69A: 16        .byte $16   ; 
- D 1 - I - 0x0066AB 01:A69B: 04        .byte $04   ; 
- D 1 - I - 0x0066AC 01:A69C: 04        .byte $04   ; 
- D 1 - I - 0x0066AD 01:A69D: 04        .byte $04   ; 
- D 1 - I - 0x0066AE 01:A69E: 17        .byte $17   ; 
- D 1 - I - 0x0066AF 01:A69F: 04        .byte $04   ; 
- D 1 - I - 0x0066B0 01:A6A0: 04        .byte $04   ; 
- D 1 - I - 0x0066B1 01:A6A1: 18        .byte $18   ; 
- D 1 - I - 0x0066B2 01:A6A2: 04        .byte $04   ; 
- D 1 - I - 0x0066B3 01:A6A3: 04        .byte $04   ; 
- D 1 - I - 0x0066B4 01:A6A4: 2B        .byte $2B   ; 
off_A6A5_19:
- D 1 - I - 0x0066B5 01:A6A5: 00        .byte $00   ; 
- D 1 - I - 0x0066B6 01:A6A6: 00        .byte $00   ; 
- D 1 - I - 0x0066B7 01:A6A7: 00        .byte $00   ; 
- D 1 - I - 0x0066B8 01:A6A8: 00        .byte $00   ; 
- D 1 - I - 0x0066B9 01:A6A9: 00        .byte $00   ; 
- D 1 - I - 0x0066BA 01:A6AA: 00        .byte $00   ; 
- D 1 - I - 0x0066BB 01:A6AB: 00        .byte $00   ; 
- D 1 - I - 0x0066BC 01:A6AC: 00        .byte $00   ; 
- D 1 - I - 0x0066BD 01:A6AD: 00        .byte $00   ; 
- D 1 - I - 0x0066BE 01:A6AE: 00        .byte $00   ; 
- D 1 - I - 0x0066BF 01:A6AF: 00        .byte $00   ; 
- D 1 - I - 0x0066C0 01:A6B0: 00        .byte $00   ; 
- D 1 - I - 0x0066C1 01:A6B1: 44        .byte $44   ; 
- D 1 - I - 0x0066C2 01:A6B2: 5A        .byte $5A   ; 
- D 1 - I - 0x0066C3 01:A6B3: 7A        .byte $7A   ; 
- D 1 - I - 0x0066C4 01:A6B4: 6C        .byte $6C   ; 
- D 1 - I - 0x0066C5 01:A6B5: 6E        .byte $6E   ; 
- D 1 - I - 0x0066C6 01:A6B6: 6C        .byte $6C   ; 
- D 1 - I - 0x0066C7 01:A6B7: 6C        .byte $6C   ; 
- D 1 - I - 0x0066C8 01:A6B8: 66        .byte $66   ; 
- D 1 - I - 0x0066C9 01:A6B9: 00        .byte $00   ; 
- D 1 - I - 0x0066CA 01:A6BA: 00        .byte $00   ; 
- D 1 - I - 0x0066CB 01:A6BB: 00        .byte $00   ; 
- D 1 - I - 0x0066CC 01:A6BC: 00        .byte $00   ; 
- D 1 - I - 0x0066CD 01:A6BD: 00        .byte $00   ; 
- D 1 - I - 0x0066CE 01:A6BE: 00        .byte $00   ; 
- D 1 - I - 0x0066CF 01:A6BF: 00        .byte $00   ; 
- D 1 - I - 0x0066D0 01:A6C0: 00        .byte $00   ; 
- D 1 - I - 0x0066D1 01:A6C1: 38        .byte $38   ; 
- D 1 - I - 0x0066D2 01:A6C2: 00        .byte $00   ; 
- D 1 - I - 0x0066D3 01:A6C3: 00        .byte $00   ; 
- D 1 - I - 0x0066D4 01:A6C4: 1B        .byte $1B   ; 
off_A6C5_1A:
- D 1 - I - 0x0066D5 01:A6C5: 00        .byte $00   ; 
- D 1 - I - 0x0066D6 01:A6C6: 00        .byte $00   ; 
- D 1 - I - 0x0066D7 01:A6C7: 00        .byte $00   ; 
- D 1 - I - 0x0066D8 01:A6C8: 14        .byte $14   ; 
- D 1 - I - 0x0066D9 01:A6C9: 00        .byte $00   ; 
- D 1 - I - 0x0066DA 01:A6CA: 00        .byte $00   ; 
- D 1 - I - 0x0066DB 01:A6CB: 00        .byte $00   ; 
- D 1 - I - 0x0066DC 01:A6CC: 00        .byte $00   ; 
- D 1 - I - 0x0066DD 01:A6CD: 00        .byte $00   ; 
- D 1 - I - 0x0066DE 01:A6CE: 14        .byte $14   ; 
- D 1 - I - 0x0066DF 01:A6CF: 00        .byte $00   ; 
- D 1 - I - 0x0066E0 01:A6D0: 00        .byte $00   ; 
- D 1 - I - 0x0066E1 01:A6D1: 00        .byte $00   ; 
- D 1 - I - 0x0066E2 01:A6D2: 4C        .byte $4C   ; 
- D 1 - I - 0x0066E3 01:A6D3: 60        .byte $60   ; 
- D 1 - I - 0x0066E4 01:A6D4: 6C        .byte $6C   ; 
- D 1 - I - 0x0066E5 01:A6D5: 6C        .byte $6C   ; 
- D 1 - I - 0x0066E6 01:A6D6: 6C        .byte $6C   ; 
- D 1 - I - 0x0066E7 01:A6D7: 6C        .byte $6C   ; 
- D 1 - I - 0x0066E8 01:A6D8: 66        .byte $66   ; 
- D 1 - I - 0x0066E9 01:A6D9: 00        .byte $00   ; 
- D 1 - I - 0x0066EA 01:A6DA: 00        .byte $00   ; 
- D 1 - I - 0x0066EB 01:A6DB: 00        .byte $00   ; 
- D 1 - I - 0x0066EC 01:A6DC: 00        .byte $00   ; 
- D 1 - I - 0x0066ED 01:A6DD: 00        .byte $00   ; 
- D 1 - I - 0x0066EE 01:A6DE: 00        .byte $00   ; 
- D 1 - I - 0x0066EF 01:A6DF: 00        .byte $00   ; 
- D 1 - I - 0x0066F0 01:A6E0: 00        .byte $00   ; 
- D 1 - I - 0x0066F1 01:A6E1: 29        .byte $29   ; 
- D 1 - I - 0x0066F2 01:A6E2: 2A        .byte $2A   ; 
- D 1 - I - 0x0066F3 01:A6E3: 00        .byte $00   ; 
- D 1 - I - 0x0066F4 01:A6E4: 1B        .byte $1B   ; 
off_A6E5_1B:
- D 1 - I - 0x0066F5 01:A6E5: 04        .byte $04   ; 
- D 1 - I - 0x0066F6 01:A6E6: 04        .byte $04   ; 
- D 1 - I - 0x0066F7 01:A6E7: 04        .byte $04   ; 
- D 1 - I - 0x0066F8 01:A6E8: 04        .byte $04   ; 
- D 1 - I - 0x0066F9 01:A6E9: 04        .byte $04   ; 
- D 1 - I - 0x0066FA 01:A6EA: 04        .byte $04   ; 
- D 1 - I - 0x0066FB 01:A6EB: 04        .byte $04   ; 
- D 1 - I - 0x0066FC 01:A6EC: 04        .byte $04   ; 
- D 1 - I - 0x0066FD 01:A6ED: 04        .byte $04   ; 
- D 1 - I - 0x0066FE 01:A6EE: 04        .byte $04   ; 
- D 1 - I - 0x0066FF 01:A6EF: 04        .byte $04   ; 
- D 1 - I - 0x006700 01:A6F0: 04        .byte $04   ; 
- D 1 - I - 0x006701 01:A6F1: 04        .byte $04   ; 
- D 1 - I - 0x006702 01:A6F2: 04        .byte $04   ; 
- D 1 - I - 0x006703 01:A6F3: 61        .byte $61   ; 
- D 1 - I - 0x006704 01:A6F4: 6D        .byte $6D   ; 
- D 1 - I - 0x006705 01:A6F5: 6D        .byte $6D   ; 
- D 1 - I - 0x006706 01:A6F6: 6D        .byte $6D   ; 
- D 1 - I - 0x006707 01:A6F7: 6D        .byte $6D   ; 
- D 1 - I - 0x006708 01:A6F8: 67        .byte $67   ; 
- D 1 - I - 0x006709 01:A6F9: 4B        .byte $4B   ; 
- D 1 - I - 0x00670A 01:A6FA: 04        .byte $04   ; 
- D 1 - I - 0x00670B 01:A6FB: 04        .byte $04   ; 
- D 1 - I - 0x00670C 01:A6FC: 16        .byte $16   ; 
- D 1 - I - 0x00670D 01:A6FD: 04        .byte $04   ; 
- D 1 - I - 0x00670E 01:A6FE: 04        .byte $04   ; 
- D 1 - I - 0x00670F 01:A6FF: 04        .byte $04   ; 
- D 1 - I - 0x006710 01:A700: 04        .byte $04   ; 
- D 1 - I - 0x006711 01:A701: 04        .byte $04   ; 
- D 1 - I - 0x006712 01:A702: 39        .byte $39   ; 
- D 1 - I - 0x006713 01:A703: 3A        .byte $3A   ; 
- D 1 - I - 0x006714 01:A704: 3B        .byte $3B   ; 
off_A705_1C:
- D 1 - I - 0x006715 01:A705: 04        .byte $04   ; 
- D 1 - I - 0x006716 01:A706: 04        .byte $04   ; 
- D 1 - I - 0x006717 01:A707: 04        .byte $04   ; 
- D 1 - I - 0x006718 01:A708: 04        .byte $04   ; 
- D 1 - I - 0x006719 01:A709: 04        .byte $04   ; 
- D 1 - I - 0x00671A 01:A70A: 04        .byte $04   ; 
- D 1 - I - 0x00671B 01:A70B: 04        .byte $04   ; 
- D 1 - I - 0x00671C 01:A70C: 04        .byte $04   ; 
- D 1 - I - 0x00671D 01:A70D: 04        .byte $04   ; 
- D 1 - I - 0x00671E 01:A70E: 04        .byte $04   ; 
- D 1 - I - 0x00671F 01:A70F: 04        .byte $04   ; 
- D 1 - I - 0x006720 01:A710: 04        .byte $04   ; 
- D 1 - I - 0x006721 01:A711: 04        .byte $04   ; 
- D 1 - I - 0x006722 01:A712: 04        .byte $04   ; 
- D 1 - I - 0x006723 01:A713: 61        .byte $61   ; 
- D 1 - I - 0x006724 01:A714: 6D        .byte $6D   ; 
- D 1 - I - 0x006725 01:A715: 70        .byte $70   ; 
- D 1 - I - 0x006726 01:A716: 6D        .byte $6D   ; 
- D 1 - I - 0x006727 01:A717: 6D        .byte $6D   ; 
- D 1 - I - 0x006728 01:A718: 7D        .byte $7D   ; 
- D 1 - I - 0x006729 01:A719: 55        .byte $55   ; 
- D 1 - I - 0x00672A 01:A71A: 43        .byte $43   ; 
- D 1 - I - 0x00672B 01:A71B: 04        .byte $04   ; 
- D 1 - I - 0x00672C 01:A71C: 04        .byte $04   ; 
- D 1 - I - 0x00672D 01:A71D: 04        .byte $04   ; 
- D 1 - I - 0x00672E 01:A71E: 04        .byte $04   ; 
- D 1 - I - 0x00672F 01:A71F: 04        .byte $04   ; 
- D 1 - I - 0x006730 01:A720: 04        .byte $04   ; 
- D 1 - I - 0x006731 01:A721: 04        .byte $04   ; 
- D 1 - I - 0x006732 01:A722: 04        .byte $04   ; 
- D 1 - I - 0x006733 01:A723: 04        .byte $04   ; 
- D 1 - I - 0x006734 01:A724: 2B        .byte $2B   ; 
off_A725_01:
- - - - - - 0x006735 01:A725: 00        .byte $00   ; 
- - - - - - 0x006736 01:A726: 00        .byte $00   ; 
- - - - - - 0x006737 01:A727: 00        .byte $00   ; 
- - - - - - 0x006738 01:A728: 00        .byte $00   ; 
- D 1 - I - 0x006739 01:A729: 00        .byte $00   ; 
- D 1 - I - 0x00673A 01:A72A: 00        .byte $00   ; 
- D 1 - I - 0x00673B 01:A72B: 00        .byte $00   ; 
- D 1 - I - 0x00673C 01:A72C: 00        .byte $00   ; 
- D 1 - I - 0x00673D 01:A72D: 00        .byte $00   ; 
- D 1 - I - 0x00673E 01:A72E: 55        .byte $55   ; 
- D 1 - I - 0x00673F 01:A72F: 11        .byte $11   ; 
- D 1 - I - 0x006740 01:A730: 00        .byte $00   ; 
- D 1 - I - 0x006741 01:A731: 00        .byte $00   ; 
- D 1 - I - 0x006742 01:A732: 00        .byte $00   ; 
- D 1 - I - 0x006743 01:A733: 00        .byte $00   ; 
- D 1 - I - 0x006744 01:A734: 00        .byte $00   ; 
- D 1 - I - 0x006745 01:A735: 55        .byte $55   ; 
- D 1 - I - 0x006746 01:A736: 55        .byte $55   ; 
- D 1 - I - 0x006747 01:A737: 11        .byte $11   ; 
- D 1 - I - 0x006748 01:A738: 00        .byte $00   ; 
- D 1 - I - 0x006749 01:A739: 00        .byte $00   ; 
- D 1 - I - 0x00674A 01:A73A: 00        .byte $00   ; 
- D 1 - I - 0x00674B 01:A73B: 00        .byte $00   ; 
- D 1 - I - 0x00674C 01:A73C: 00        .byte $00   ; 
- D 1 - I - 0x00674D 01:A73D: 55        .byte $55   ; 
- D 1 - I - 0x00674E 01:A73E: 15        .byte $15   ; 
- D 1 - I - 0x00674F 01:A73F: 00        .byte $00   ; 
- D 1 - I - 0x006750 01:A740: 00        .byte $00   ; 
- D 1 - I - 0x006751 01:A741: 00        .byte $00   ; 
- D 1 - I - 0x006752 01:A742: 00        .byte $00   ; 
- D 1 - I - 0x006753 01:A743: 00        .byte $00   ; 
- D 1 - I - 0x006754 01:A744: 55        .byte $55   ; 
- D 1 - I - 0x006755 01:A745: 00        .byte $00   ; 
- D 1 - I - 0x006756 01:A746: 00        .byte $00   ; 
- D 1 - I - 0x006757 01:A747: 00        .byte $00   ; 
- D 1 - I - 0x006758 01:A748: 00        .byte $00   ; 
- D 1 - I - 0x006759 01:A749: 00        .byte $00   ; 
- D 1 - I - 0x00675A 01:A74A: 00        .byte $00   ; 
- D 1 - I - 0x00675B 01:A74B: 00        .byte $00   ; 
- D 1 - I - 0x00675C 01:A74C: 05        .byte $05   ; 
- D 1 - I - 0x00675D 01:A74D: 00        .byte $00   ; 
- D 1 - I - 0x00675E 01:A74E: 00        .byte $00   ; 
- D 1 - I - 0x00675F 01:A74F: 44        .byte $44   ; 
- D 1 - I - 0x006760 01:A750: 55        .byte $55   ; 
- D 1 - I - 0x006761 01:A751: 51        .byte $51   ; 
- D 1 - I - 0x006762 01:A752: 00        .byte $00   ; 
- D 1 - I - 0x006763 01:A753: 00        .byte $00   ; 
- D 1 - I - 0x006764 01:A754: 00        .byte $00   ; 
- D 1 - I - 0x006765 01:A755: 00        .byte $00   ; 
- D 1 - I - 0x006766 01:A756: 00        .byte $00   ; 
- D 1 - I - 0x006767 01:A757: 04        .byte $04   ; 
- D 1 - I - 0x006768 01:A758: 55        .byte $55   ; 
- D 1 - I - 0x006769 01:A759: 55        .byte $55   ; 
- D 1 - I - 0x00676A 01:A75A: 10        .byte $10   ; 
- D 1 - I - 0x00676B 01:A75B: 00        .byte $00   ; 
- D 1 - I - 0x00676C 01:A75C: 00        .byte $00   ; 
- D 1 - I - 0x00676D 01:A75D: 00        .byte $00   ; 
- D 1 - I - 0x00676E 01:A75E: 00        .byte $00   ; 
- D 1 - I - 0x00676F 01:A75F: 00        .byte $00   ; 
- D 1 - I - 0x006770 01:A760: 04        .byte $04   ; 
- D 1 - I - 0x006771 01:A761: 05        .byte $05   ; 
- D 1 - I - 0x006772 01:A762: 01        .byte $01   ; 
- D 1 - I - 0x006773 01:A763: 00        .byte $00   ; 
- D 1 - I - 0x006774 01:A764: 00        .byte $00   ; 
off_A765_0A:
- D 1 - I - 0x006775 01:A765: 1C        .byte $1C   ; 
- D 1 - I - 0x006776 01:A766: 00        .byte $00   ; 
- D 1 - I - 0x006777 01:A767: 00        .byte $00   ; 
- D 1 - I - 0x006778 01:A768: 00        .byte $00   ; 
- D 1 - I - 0x006779 01:A769: 00        .byte $00   ; 
- D 1 - I - 0x00677A 01:A76A: 00        .byte $00   ; 
- D 1 - I - 0x00677B 01:A76B: 00        .byte $00   ; 
- D 1 - I - 0x00677C 01:A76C: 00        .byte $00   ; 
- D 1 - I - 0x00677D 01:A76D: 00        .byte $00   ; 
- D 1 - I - 0x00677E 01:A76E: 00        .byte $00   ; 
- D 1 - I - 0x00677F 01:A76F: 00        .byte $00   ; 
- D 1 - I - 0x006780 01:A770: 00        .byte $00   ; 
- D 1 - I - 0x006781 01:A771: 00        .byte $00   ; 
- D 1 - I - 0x006782 01:A772: 00        .byte $00   ; 
- D 1 - I - 0x006783 01:A773: 00        .byte $00   ; 
- D 1 - I - 0x006784 01:A774: 00        .byte $00   ; 
- D 1 - I - 0x006785 01:A775: 00        .byte $00   ; 
- D 1 - I - 0x006786 01:A776: 00        .byte $00   ; 
- D 1 - I - 0x006787 01:A777: 00        .byte $00   ; 
- D 1 - I - 0x006788 01:A778: 14        .byte $14   ; 
- D 1 - I - 0x006789 01:A779: 00        .byte $00   ; 
- D 1 - I - 0x00678A 01:A77A: 00        .byte $00   ; 
- D 1 - I - 0x00678B 01:A77B: 40        .byte $40   ; 
- D 1 - I - 0x00678C 01:A77C: 54        .byte $54   ; 
- D 1 - I - 0x00678D 01:A77D: 54        .byte $54   ; 
- D 1 - I - 0x00678E 01:A77E: 42        .byte $42   ; 
- D 1 - I - 0x00678F 01:A77F: 00        .byte $00   ; 
- D 1 - I - 0x006790 01:A780: 00        .byte $00   ; 
- D 1 - I - 0x006791 01:A781: 14        .byte $14   ; 
- D 1 - I - 0x006792 01:A782: 00        .byte $00   ; 
- D 1 - I - 0x006793 01:A783: 40        .byte $40   ; 
off_A784_0A:
- D 1 - I - 0x006794 01:A784: 54        .byte $54   ; 
- D 1 - I - 0x006795 01:A785: 54        .byte $54   ; 
- D 1 - I - 0x006796 01:A786: 7E        .byte $7E   ; 
- D 1 - I - 0x006797 01:A787: 6F        .byte $6F   ; 
- D 1 - I - 0x006798 01:A788: 6C        .byte $6C   ; 
- D 1 - I - 0x006799 01:A789: 66        .byte $66   ; 
- D 1 - I - 0x00679A 01:A78A: 00        .byte $00   ; 
- D 1 - I - 0x00679B 01:A78B: 00        .byte $00   ; 
- D 1 - I - 0x00679C 01:A78C: 00        .byte $00   ; 
- D 1 - I - 0x00679D 01:A78D: 00        .byte $00   ; 
- D 1 - I - 0x00679E 01:A78E: 00        .byte $00   ; 
- D 1 - I - 0x00679F 01:A78F: 00        .byte $00   ; 
- D 1 - I - 0x0067A0 01:A790: 1B        .byte $1B   ; 
- D 1 - I - 0x0067A1 01:A791: 20        .byte $20   ; 
- D 1 - I - 0x0067A2 01:A792: 00        .byte $00   ; 
off_A793_0F:
- D 1 - I - 0x0067A3 01:A793: 00        .byte $00   ; 
- D 1 - I - 0x0067A4 01:A794: 00        .byte $00   ; 
- D 1 - I - 0x0067A5 01:A795: 00        .byte $00   ; 
- D 1 - I - 0x0067A6 01:A796: 00        .byte $00   ; 
- D 1 - I - 0x0067A7 01:A797: 00        .byte $00   ; 
- D 1 - I - 0x0067A8 01:A798: 00        .byte $00   ; 
- D 1 - I - 0x0067A9 01:A799: 00        .byte $00   ; 
- D 1 - I - 0x0067AA 01:A79A: 00        .byte $00   ; 
- D 1 - I - 0x0067AB 01:A79B: 00        .byte $00   ; 
- D 1 - I - 0x0067AC 01:A79C: 14        .byte $14   ; 
- D 1 - I - 0x0067AD 01:A79D: 00        .byte $00   ; 
- D 1 - I - 0x0067AE 01:A79E: 00        .byte $00   ; 
- D 1 - I - 0x0067AF 01:A79F: 00        .byte $00   ; 
- D 1 - I - 0x0067B0 01:A7A0: 00        .byte $00   ; 
- D 1 - I - 0x0067B1 01:A7A1: 00        .byte $00   ; 
- D 1 - I - 0x0067B2 01:A7A2: 00        .byte $00   ; 
- D 1 - I - 0x0067B3 01:A7A3: 00        .byte $00   ; 
- D 1 - I - 0x0067B4 01:A7A4: 14        .byte $14   ; 
- D 1 - I - 0x0067B5 01:A7A5: 00        .byte $00   ; 
- D 1 - I - 0x0067B6 01:A7A6: 00        .byte $00   ; 
- D 1 - I - 0x0067B7 01:A7A7: 00        .byte $00   ; 
- D 1 - I - 0x0067B8 01:A7A8: 00        .byte $00   ; 
- D 1 - I - 0x0067B9 01:A7A9: 00        .byte $00   ; 
- D 1 - I - 0x0067BA 01:A7AA: 00        .byte $00   ; 
- D 1 - I - 0x0067BB 01:A7AB: 00        .byte $00   ; 
- D 1 - I - 0x0067BC 01:A7AC: 00        .byte $00   ; 
- D 1 - I - 0x0067BD 01:A7AD: 00        .byte $00   ; 
- D 1 - I - 0x0067BE 01:A7AE: 00        .byte $00   ; 
- D 1 - I - 0x0067BF 01:A7AF: 00        .byte $00   ; 
- D 1 - I - 0x0067C0 01:A7B0: 00        .byte $00   ; 
- D 1 - I - 0x0067C1 01:A7B1: 00        .byte $00   ; 
- D 1 - I - 0x0067C2 01:A7B2: 00        .byte $00   ; 
off_A7B3_0B:
- D 1 - I - 0x0067C3 01:A7B3: 2C        .byte $2C   ; 
- D 1 - I - 0x0067C4 01:A7B4: 04        .byte $04   ; 
- D 1 - I - 0x0067C5 01:A7B5: 04        .byte $04   ; 
- D 1 - I - 0x0067C6 01:A7B6: 04        .byte $04   ; 
- D 1 - I - 0x0067C7 01:A7B7: 04        .byte $04   ; 
- D 1 - I - 0x0067C8 01:A7B8: 04        .byte $04   ; 
- D 1 - I - 0x0067C9 01:A7B9: 04        .byte $04   ; 
- D 1 - I - 0x0067CA 01:A7BA: 04        .byte $04   ; 
- D 1 - I - 0x0067CB 01:A7BB: 04        .byte $04   ; 
- D 1 - I - 0x0067CC 01:A7BC: 04        .byte $04   ; 
- D 1 - I - 0x0067CD 01:A7BD: 04        .byte $04   ; 
- D 1 - I - 0x0067CE 01:A7BE: 04        .byte $04   ; 
- D 1 - I - 0x0067CF 01:A7BF: 04        .byte $04   ; 
- D 1 - I - 0x0067D0 01:A7C0: 04        .byte $04   ; 
- D 1 - I - 0x0067D1 01:A7C1: 04        .byte $04   ; 
- D 1 - I - 0x0067D2 01:A7C2: 04        .byte $04   ; 
- D 1 - I - 0x0067D3 01:A7C3: 16        .byte $16   ; 
- D 1 - I - 0x0067D4 01:A7C4: 04        .byte $04   ; 
- D 1 - I - 0x0067D5 01:A7C5: 04        .byte $04   ; 
- D 1 - I - 0x0067D6 01:A7C6: 04        .byte $04   ; 
- D 1 - I - 0x0067D7 01:A7C7: 04        .byte $04   ; 
- D 1 - I - 0x0067D8 01:A7C8: 04        .byte $04   ; 
- D 1 - I - 0x0067D9 01:A7C9: 61        .byte $61   ; 
- D 1 - I - 0x0067DA 01:A7CA: 70        .byte $70   ; 
- D 1 - I - 0x0067DB 01:A7CB: 6D        .byte $6D   ; 
- D 1 - I - 0x0067DC 01:A7CC: 67        .byte $67   ; 
- D 1 - I - 0x0067DD 01:A7CD: 4B        .byte $4B   ; 
- D 1 - I - 0x0067DE 01:A7CE: 04        .byte $04   ; 
- D 1 - I - 0x0067DF 01:A7CF: 04        .byte $04   ; 
- D 1 - I - 0x0067E0 01:A7D0: 49        .byte $49   ; 
- D 1 - I - 0x0067E1 01:A7D1: 61        .byte $61   ; 
off_A7D2_05:
- D 1 - I - 0x0067E2 01:A7D2: 6D        .byte $6D   ; 
- D 1 - I - 0x0067E3 01:A7D3: 67        .byte $67   ; 
- D 1 - I - 0x0067E4 01:A7D4: 4B        .byte $4B   ; 
- D 1 - I - 0x0067E5 01:A7D5: 04        .byte $04   ; 
- D 1 - I - 0x0067E6 01:A7D6: 31        .byte $31   ; 
- D 1 - I - 0x0067E7 01:A7D7: 04        .byte $04   ; 
- D 1 - I - 0x0067E8 01:A7D8: 04        .byte $04   ; 
- D 1 - I - 0x0067E9 01:A7D9: 17        .byte $17   ; 
- D 1 - I - 0x0067EA 01:A7DA: 04        .byte $04   ; 
- D 1 - I - 0x0067EB 01:A7DB: 04        .byte $04   ; 
- D 1 - I - 0x0067EC 01:A7DC: 04        .byte $04   ; 
- D 1 - I - 0x0067ED 01:A7DD: 16        .byte $16   ; 
- D 1 - I - 0x0067EE 01:A7DE: 04        .byte $04   ; 
- D 1 - I - 0x0067EF 01:A7DF: 04        .byte $04   ; 
- D 1 - I - 0x0067F0 01:A7E0: 04        .byte $04   ; 
- D 1 - I - 0x0067F1 01:A7E1: 37        .byte $37   ; 
- D 1 - I - 0x0067F2 01:A7E2: 2C        .byte $2C   ; 
- D 1 - I - 0x0067F3 01:A7E3: 04        .byte $04   ; 
- D 1 - I - 0x0067F4 01:A7E4: 04        .byte $04   ; 
- D 1 - I - 0x0067F5 01:A7E5: 17        .byte $17   ; 
off_A7E6_0F:
- D 1 - I - 0x0067F6 01:A7E6: 04        .byte $04   ; 
- D 1 - I - 0x0067F7 01:A7E7: 04        .byte $04   ; 
- D 1 - I - 0x0067F8 01:A7E8: 16        .byte $16   ; 
- D 1 - I - 0x0067F9 01:A7E9: 04        .byte $04   ; 
- - - - - - 0x0067FA 01:A7EA: 04        .byte $04   ; 
- - - - - - 0x0067FB 01:A7EB: 04        .byte $04   ; 
- - - - - - 0x0067FC 01:A7EC: 04        .byte $04   ; 
- - - - - - 0x0067FD 01:A7ED: 04        .byte $04   ; 
- - - - - - 0x0067FE 01:A7EE: 04        .byte $04   ; 
- D 1 - I - 0x0067FF 01:A7EF: 04        .byte $04   ; 
- D 1 - I - 0x006800 01:A7F0: 04        .byte $04   ; 
- D 1 - I - 0x006801 01:A7F1: 04        .byte $04   ; 
- D 1 - I - 0x006802 01:A7F2: 04        .byte $04   ; 
- D 1 - I - 0x006803 01:A7F3: C0        .byte $C0   ; 
- D 1 - I - 0x006804 01:A7F4: C1        .byte $C1   ; 
- D 1 - I - 0x006805 01:A7F5: C2        .byte $C2   ; 
- D 1 - I - 0x006806 01:A7F6: C3        .byte $C3   ; 
- D 1 - I - 0x006807 01:A7F7: C4        .byte $C4   ; 
- D 1 - I - 0x006808 01:A7F8: 33        .byte $33   ; 
- D 1 - I - 0x006809 01:A7F9: 04        .byte $04   ; 
- D 1 - I - 0x00680A 01:A7FA: 04        .byte $04   ; 
- D 1 - I - 0x00680B 01:A7FB: 04        .byte $04   ; 
- D 1 - I - 0x00680C 01:A7FC: 04        .byte $04   ; 
- D 1 - I - 0x00680D 01:A7FD: 04        .byte $04   ; 
- D 1 - I - 0x00680E 01:A7FE: 04        .byte $04   ; 
- D 1 - I - 0x00680F 01:A7FF: 04        .byte $04   ; 
- D 1 - I - 0x006810 01:A800: 04        .byte $04   ; 
- D 1 - I - 0x006811 01:A801: 04        .byte $04   ; 
- D 1 - I - 0x006812 01:A802: 45        .byte $45   ; 
- D 1 - I - 0x006813 01:A803: 5B        .byte $5B   ; 
- D 1 - I - 0x006814 01:A804: E3        .byte $E3   ; 
- D 1 - I - 0x006815 01:A805: 5B        .byte $5B   ; 
off_A806_0C:
- D 1 - I - 0x006816 01:A806: 53        .byte $53   ; 
- D 1 - I - 0x006817 01:A807: 43        .byte $43   ; 
- D 1 - I - 0x006818 01:A808: 17        .byte $17   ; 
- D 1 - I - 0x006819 01:A809: 04        .byte $04   ; 
- D 1 - I - 0x00681A 01:A80A: 04        .byte $04   ; 
- D 1 - I - 0x00681B 01:A80B: 04        .byte $04   ; 
- D 1 - I - 0x00681C 01:A80C: 16        .byte $16   ; 
- D 1 - I - 0x00681D 01:A80D: 04        .byte $04   ; 
- D 1 - I - 0x00681E 01:A80E: 04        .byte $04   ; 
- D 1 - I - 0x00681F 01:A80F: 04        .byte $04   ; 
- D 1 - I - 0x006820 01:A810: 16        .byte $16   ; 
- D 1 - I - 0x006821 01:A811: 04        .byte $04   ; 
- D 1 - I - 0x006822 01:A812: 04        .byte $04   ; 
- D 1 - I - 0x006823 01:A813: 16        .byte $16   ; 
- D 1 - I - 0x006824 01:A814: 04        .byte $04   ; 
- D 1 - I - 0x006825 01:A815: 04        .byte $04   ; 
- D 1 - I - 0x006826 01:A816: 04        .byte $04   ; 
- D 1 - I - 0x006827 01:A817: 04        .byte $04   ; 
- D 1 - I - 0x006828 01:A818: 04        .byte $04   ; 
- D 1 - I - 0x006829 01:A819: 04        .byte $04   ; 
- D 1 - I - 0x00682A 01:A81A: 04        .byte $04   ; 
- D 1 - I - 0x00682B 01:A81B: 04        .byte $04   ; 
- D 1 - I - 0x00682C 01:A81C: 61        .byte $61   ; 
- D 1 - I - 0x00682D 01:A81D: 6D        .byte $6D   ; 
- D 1 - I - 0x00682E 01:A81E: 6D        .byte $6D   ; 
- D 1 - I - 0x00682F 01:A81F: 7D        .byte $7D   ; 
- D 1 - I - 0x006830 01:A820: 55        .byte $55   ; 
- D 1 - I - 0x006831 01:A821: 55        .byte $55   ; 
- D 1 - I - 0x006832 01:A822: 55        .byte $55   ; 
- D 1 - I - 0x006833 01:A823: 55        .byte $55   ; 
- D 1 - I - 0x006834 01:A824: 7F        .byte $7F   ; 
- D 1 - I - 0x006835 01:A825: 70        .byte $70   ; 
off_A826_0D:
- D 1 - I - 0x006836 01:A826: 73        .byte $73   ; 
- D 1 - I - 0x006837 01:A827: 66        .byte $66   ; 
- D 1 - I - 0x006838 01:A828: 4A        .byte $4A   ; 
- D 1 - I - 0x006839 01:A829: 00        .byte $00   ; 
- D 1 - I - 0x00683A 01:A82A: 00        .byte $00   ; 
- D 1 - I - 0x00683B 01:A82B: 00        .byte $00   ; 
- D 1 - I - 0x00683C 01:A82C: 00        .byte $00   ; 
- D 1 - I - 0x00683D 01:A82D: 00        .byte $00   ; 
- D 1 - I - 0x00683E 01:A82E: 00        .byte $00   ; 
- D 1 - I - 0x00683F 01:A82F: 00        .byte $00   ; 
- D 1 - I - 0x006840 01:A830: 00        .byte $00   ; 
- D 1 - I - 0x006841 01:A831: 00        .byte $00   ; 
- D 1 - I - 0x006842 01:A832: 00        .byte $00   ; 
- D 1 - I - 0x006843 01:A833: 00        .byte $00   ; 
- D 1 - I - 0x006844 01:A834: 00        .byte $00   ; 
- D 1 - I - 0x006845 01:A835: 00        .byte $00   ; 
- D 1 - I - 0x006846 01:A836: 00        .byte $00   ; 
- D 1 - I - 0x006847 01:A837: 00        .byte $00   ; 
- D 1 - I - 0x006848 01:A838: 00        .byte $00   ; 
- D 1 - I - 0x006849 01:A839: 00        .byte $00   ; 
- D 1 - I - 0x00684A 01:A83A: 00        .byte $00   ; 
- D 1 - I - 0x00684B 01:A83B: 00        .byte $00   ; 
- D 1 - I - 0x00684C 01:A83C: 60        .byte $60   ; 
- D 1 - I - 0x00684D 01:A83D: 6C        .byte $6C   ; 
- D 1 - I - 0x00684E 01:A83E: 6F        .byte $6F   ; 
- D 1 - I - 0x00684F 01:A83F: 6C        .byte $6C   ; 
- D 1 - I - 0x006850 01:A840: 6C        .byte $6C   ; 
off_A841_0D:
- D 1 - I - 0x006851 01:A841: 6C        .byte $6C   ; 
- D 1 - I - 0x006852 01:A842: 6C        .byte $6C   ; 
- D 1 - I - 0x006853 01:A843: 6C        .byte $6C   ; 
- D 1 - I - 0x006854 01:A844: 6C        .byte $6C   ; 
- D 1 - I - 0x006855 01:A845: 6C        .byte $6C   ; 
- D 1 - I - 0x006856 01:A846: 66        .byte $66   ; 
- D 1 - I - 0x006857 01:A847: 4A        .byte $4A   ; 
- D 1 - I - 0x006858 01:A848: 00        .byte $00   ; 
- D 1 - I - 0x006859 01:A849: 14        .byte $14   ; 
- D 1 - I - 0x00685A 01:A84A: 00        .byte $00   ; 
- D 1 - I - 0x00685B 01:A84B: 00        .byte $00   ; 
- D 1 - I - 0x00685C 01:A84C: 00        .byte $00   ; 
- D 1 - I - 0x00685D 01:A84D: 00        .byte $00   ; 
- D 1 - I - 0x00685E 01:A84E: 00        .byte $00   ; 
- D 1 - I - 0x00685F 01:A84F: 00        .byte $00   ; 
- D 1 - I - 0x006860 01:A850: 14        .byte $14   ; 
- D 1 - I - 0x006861 01:A851: 00        .byte $00   ; 
- D 1 - I - 0x006862 01:A852: 00        .byte $00   ; 
- D 1 - I - 0x006863 01:A853: 00        .byte $00   ; 
- D 1 - I - 0x006864 01:A854: 15        .byte $15   ; 
- D 1 - I - 0x006865 01:A855: 00        .byte $00   ; 
- D 1 - I - 0x006866 01:A856: 00        .byte $00   ; 
- D 1 - I - 0x006867 01:A857: 00        .byte $00   ; 
- D 1 - I - 0x006868 01:A858: 00        .byte $00   ; 
- D 1 - I - 0x006869 01:A859: 00        .byte $00   ; 
- D 1 - I - 0x00686A 01:A85A: 00        .byte $00   ; 
- D 1 - I - 0x00686B 01:A85B: 00        .byte $00   ; 
- D 1 - I - 0x00686C 01:A85C: 48        .byte $48   ; 
- D 1 - I - 0x00686D 01:A85D: 60        .byte $60   ; 
- D 1 - I - 0x00686E 01:A85E: 6F        .byte $6F   ; 
- D 1 - I - 0x00686F 01:A85F: 6C        .byte $6C   ; 
- D 1 - I - 0x006870 01:A860: 72        .byte $72   ; 
off_A861_0E:
- D 1 - I - 0x006871 01:A861: 73        .byte $73   ; 
- D 1 - I - 0x006872 01:A862: 7C        .byte $7C   ; 
- D 1 - I - 0x006873 01:A863: 54        .byte $54   ; 
- D 1 - I - 0x006874 01:A864: 54        .byte $54   ; 
- D 1 - I - 0x006875 01:A865: 54        .byte $54   ; 
- D 1 - I - 0x006876 01:A866: 42        .byte $42   ; 
- D 1 - I - 0x006877 01:A867: 00        .byte $00   ; 
- D 1 - I - 0x006878 01:A868: 00        .byte $00   ; 
- D 1 - I - 0x006879 01:A869: 00        .byte $00   ; 
- D 1 - I - 0x00687A 01:A86A: 00        .byte $00   ; 
- D 1 - I - 0x00687B 01:A86B: 00        .byte $00   ; 
- D 1 - I - 0x00687C 01:A86C: 00        .byte $00   ; 
- D 1 - I - 0x00687D 01:A86D: 00        .byte $00   ; 
- D 1 - I - 0x00687E 01:A86E: 00        .byte $00   ; 
- D 1 - I - 0x00687F 01:A86F: 00        .byte $00   ; 
- D 1 - I - 0x006880 01:A870: 00        .byte $00   ; 
- D 1 - I - 0x006881 01:A871: 00        .byte $00   ; 
- D 1 - I - 0x006882 01:A872: 14        .byte $14   ; 
- D 1 - I - 0x006883 01:A873: 00        .byte $00   ; 
- D 1 - I - 0x006884 01:A874: 00        .byte $00   ; 
- D 1 - I - 0x006885 01:A875: 00        .byte $00   ; 
- D 1 - I - 0x006886 01:A876: 14        .byte $14   ; 
- D 1 - I - 0x006887 01:A877: 60        .byte $60   ; 
- D 1 - I - 0x006888 01:A878: 6C        .byte $6C   ; 
- D 1 - I - 0x006889 01:A879: 6C        .byte $6C   ; 
- D 1 - I - 0x00688A 01:A87A: 6C        .byte $6C   ; 
- D 1 - I - 0x00688B 01:A87B: 6C        .byte $6C   ; 
off_A87C_07:
- D 1 - I - 0x00688C 01:A87C: 6C        .byte $6C   ; 
- D 1 - I - 0x00688D 01:A87D: 6C        .byte $6C   ; 
- D 1 - I - 0x00688E 01:A87E: 6E        .byte $6E   ; 
- D 1 - I - 0x00688F 01:A87F: 6C        .byte $6C   ; 
- D 1 - I - 0x006890 01:A880: 6C        .byte $6C   ; 
- D 1 - I - 0x006891 01:A881: 66        .byte $66   ; 
- D 1 - I - 0x006892 01:A882: 4A        .byte $4A   ; 
- D 1 - I - 0x006893 01:A883: 00        .byte $00   ; 
- D 1 - I - 0x006894 01:A884: 00        .byte $00   ; 
- D 1 - I - 0x006895 01:A885: 14        .byte $14   ; 
- D 1 - I - 0x006896 01:A886: 00        .byte $00   ; 
- D 1 - I - 0x006897 01:A887: 00        .byte $00   ; 
- D 1 - I - 0x006898 01:A888: 00        .byte $00   ; 
- D 1 - I - 0x006899 01:A889: 00        .byte $00   ; 
- D 1 - I - 0x00689A 01:A88A: 00        .byte $00   ; 
- D 1 - I - 0x00689B 01:A88B: 00        .byte $00   ; 
- D 1 - I - 0x00689C 01:A88C: 22        .byte $22   ; 
- D 1 - I - 0x00689D 01:A88D: 00        .byte $00   ; 
- D 1 - I - 0x00689E 01:A88E: 00        .byte $00   ; 
- D 1 - I - 0x00689F 01:A88F: 00        .byte $00   ; 
- D 1 - I - 0x0068A0 01:A890: 00        .byte $00   ; 
- D 1 - I - 0x0068A1 01:A891: 00        .byte $00   ; 
- D 1 - I - 0x0068A2 01:A892: 00        .byte $00   ; 
- D 1 - I - 0x0068A3 01:A893: 00        .byte $00   ; 
- - - - - - 0x0068A4 01:A894: 00        .byte $00   ; 
- - - - - - 0x0068A5 01:A895: 00        .byte $00   ; 
- - - - - - 0x0068A6 01:A896: 00        .byte $00   ; 
- - - - - - 0x0068A7 01:A897: 00        .byte $00   ; 
- - - - - - 0x0068A8 01:A898: 00        .byte $00   ; 
- - - - - - 0x0068A9 01:A899: 00        .byte $00   ; 
- - - - - - 0x0068AA 01:A89A: 00        .byte $00   ; 
- - - - - - 0x0068AB 01:A89B: 00        .byte $00   ; 
off_A89C_0F:
- D 1 - I - 0x0068AC 01:A89C: 75        .byte $75   ; 
- D 1 - I - 0x0068AD 01:A89D: 70        .byte $70   ; 
- D 1 - I - 0x0068AE 01:A89E: 6D        .byte $6D   ; 
- D 1 - I - 0x0068AF 01:A89F: 6D        .byte $6D   ; 
- D 1 - I - 0x0068B0 01:A8A0: 6D        .byte $6D   ; 
- D 1 - I - 0x0068B1 01:A8A1: 67        .byte $67   ; 
- D 1 - I - 0x0068B2 01:A8A2: 4B        .byte $4B   ; 
- D 1 - I - 0x0068B3 01:A8A3: 16        .byte $16   ; 
- D 1 - I - 0x0068B4 01:A8A4: 04        .byte $04   ; 
- D 1 - I - 0x0068B5 01:A8A5: 04        .byte $04   ; 
- D 1 - I - 0x0068B6 01:A8A6: 04        .byte $04   ; 
- D 1 - I - 0x0068B7 01:A8A7: 16        .byte $16   ; 
- D 1 - I - 0x0068B8 01:A8A8: 04        .byte $04   ; 
- D 1 - I - 0x0068B9 01:A8A9: 04        .byte $04   ; 
- D 1 - I - 0x0068BA 01:A8AA: 04        .byte $04   ; 
- D 1 - I - 0x0068BB 01:A8AB: 17        .byte $17   ; 
- D 1 - I - 0x0068BC 01:A8AC: 04        .byte $04   ; 
- D 1 - I - 0x0068BD 01:A8AD: 04        .byte $04   ; 
- D 1 - I - 0x0068BE 01:A8AE: 04        .byte $04   ; 
- D 1 - I - 0x0068BF 01:A8AF: 04        .byte $04   ; 
- D 1 - I - 0x0068C0 01:A8B0: 04        .byte $04   ; 
- D 1 - I - 0x0068C1 01:A8B1: 04        .byte $04   ; 
- D 1 - I - 0x0068C2 01:A8B2: 45        .byte $45   ; 
- D 1 - I - 0x0068C3 01:A8B3: 5B        .byte $5B   ; 
- D 1 - I - 0x0068C4 01:A8B4: 7B        .byte $7B   ; 
- D 1 - I - 0x0068C5 01:A8B5: 6D        .byte $6D   ; 
- D 1 - I - 0x0068C6 01:A8B6: 6D        .byte $6D   ; 
- D 1 - I - 0x0068C7 01:A8B7: 6D        .byte $6D   ; 
- D 1 - I - 0x0068C8 01:A8B8: 6D        .byte $6D   ; 
- D 1 - I - 0x0068C9 01:A8B9: 79        .byte $79   ; 
off_A8BA_09:
- D 1 - I - 0x0068CA 01:A8BA: 5B        .byte $5B   ; 
- D 1 - I - 0x0068CB 01:A8BB: 5B        .byte $5B   ; 
- D 1 - I - 0x0068CC 01:A8BC: 7B        .byte $7B   ; 
- D 1 - I - 0x0068CD 01:A8BD: 6D        .byte $6D   ; 
- D 1 - I - 0x0068CE 01:A8BE: 71        .byte $71   ; 
- D 1 - I - 0x0068CF 01:A8BF: 6A        .byte $6A   ; 
- D 1 - I - 0x0068D0 01:A8C0: 04        .byte $04   ; 
- D 1 - I - 0x0068D1 01:A8C1: 04        .byte $04   ; 
- D 1 - I - 0x0068D2 01:A8C2: 04        .byte $04   ; 
- D 1 - I - 0x0068D3 01:A8C3: 04        .byte $04   ; 
- D 1 - I - 0x0068D4 01:A8C4: 04        .byte $04   ; 
- D 1 - I - 0x0068D5 01:A8C5: 04        .byte $04   ; 
- D 1 - I - 0x0068D6 01:A8C6: 16        .byte $16   ; 
- D 1 - I - 0x0068D7 01:A8C7: 04        .byte $04   ; 
- D 1 - I - 0x0068D8 01:A8C8: 04        .byte $04   ; 
- D 1 - I - 0x0068D9 01:A8C9: 04        .byte $04   ; 
- D 1 - I - 0x0068DA 01:A8CA: 34        .byte $34   ; 
off_A8CB_04:
- D 1 - I - 0x0068DB 01:A8CB: 04        .byte $04   ; 
- D 1 - I - 0x0068DC 01:A8CC: 04        .byte $04   ; 
- D 1 - I - 0x0068DD 01:A8CD: 04        .byte $04   ; 
- D 1 - I - 0x0068DE 01:A8CE: 04        .byte $04   ; 
- D 1 - I - 0x0068DF 01:A8CF: 04        .byte $04   ; 
- D 1 - I - 0x0068E0 01:A8D0: 04        .byte $04   ; 
- D 1 - I - 0x0068E1 01:A8D1: 16        .byte $16   ; 
- - - - - - 0x0068E2 01:A8D2: 04        .byte $04   ; 
- - - - - - 0x0068E3 01:A8D3: 04        .byte $04   ; 
- D 1 - I - 0x0068E4 01:A8D4: 04        .byte $04   ; 
- D 1 - I - 0x0068E5 01:A8D5: 04        .byte $04   ; 
- D 1 - I - 0x0068E6 01:A8D6: 04        .byte $04   ; 
- D 1 - I - 0x0068E7 01:A8D7: 04        .byte $04   ; 
- D 1 - I - 0x0068E8 01:A8D8: 04        .byte $04   ; 
- D 1 - I - 0x0068E9 01:A8D9: 04        .byte $04   ; 
- D 1 - I - 0x0068EA 01:A8DA: 37        .byte $37   ; 
- D 1 - I - 0x0068EB 01:A8DB: 2C        .byte $2C   ; 
- D 1 - I - 0x0068EC 01:A8DC: 04        .byte $04   ; 
- D 1 - I - 0x0068ED 01:A8DD: 04        .byte $04   ; 
- D 1 - I - 0x0068EE 01:A8DE: 04        .byte $04   ; 
- D 1 - I - 0x0068EF 01:A8DF: 04        .byte $04   ; 
- D 1 - I - 0x0068F0 01:A8E0: 04        .byte $04   ; 
- D 1 - I - 0x0068F1 01:A8E1: 16        .byte $16   ; 
- D 1 - I - 0x0068F2 01:A8E2: 04        .byte $04   ; 
- D 1 - I - 0x0068F3 01:A8E3: 41        .byte $41   ; 
- D 1 - I - 0x0068F4 01:A8E4: 55        .byte $55   ; 
- D 1 - I - 0x0068F5 01:A8E5: 7F        .byte $7F   ; 
- D 1 - I - 0x0068F6 01:A8E6: 74        .byte $74   ; 
- D 1 - I - 0x0068F7 01:A8E7: F3        .byte $F3   ; 
- D 1 - I - 0x0068F8 01:A8E8: 6D        .byte $6D   ; 
- D 1 - I - 0x0068F9 01:A8E9: 6D        .byte $6D   ; 
- D 1 - I - 0x0068FA 01:A8EA: 6D        .byte $6D   ; 
off_A8EB_10:
- D 1 - I - 0x0068FB 01:A8EB: 75        .byte $75   ; 
- D 1 - I - 0x0068FC 01:A8EC: 6D        .byte $6D   ; 
- D 1 - I - 0x0068FD 01:A8ED: 6D        .byte $6D   ; 
- D 1 - I - 0x0068FE 01:A8EE: 70        .byte $70   ; 
- D 1 - I - 0x0068FF 01:A8EF: 6D        .byte $6D   ; 
- D 1 - I - 0x006900 01:A8F0: 7D        .byte $7D   ; 
- D 1 - I - 0x006901 01:A8F1: 55        .byte $55   ; 
- D 1 - I - 0x006902 01:A8F2: 43        .byte $43   ; 
- D 1 - I - 0x006903 01:A8F3: 04        .byte $04   ; 
- D 1 - I - 0x006904 01:A8F4: 04        .byte $04   ; 
- D 1 - I - 0x006905 01:A8F5: 04        .byte $04   ; 
- D 1 - I - 0x006906 01:A8F6: 04        .byte $04   ; 
- D 1 - I - 0x006907 01:A8F7: 04        .byte $04   ; 
- D 1 - I - 0x006908 01:A8F8: 04        .byte $04   ; 
- D 1 - I - 0x006909 01:A8F9: 04        .byte $04   ; 
- D 1 - I - 0x00690A 01:A8FA: 04        .byte $04   ; 
- D 1 - I - 0x00690B 01:A8FB: 04        .byte $04   ; 
- D 1 - I - 0x00690C 01:A8FC: 04        .byte $04   ; 
- D 1 - I - 0x00690D 01:A8FD: 04        .byte $04   ; 
- D 1 - I - 0x00690E 01:A8FE: 04        .byte $04   ; 
- D 1 - I - 0x00690F 01:A8FF: 04        .byte $04   ; 
- D 1 - I - 0x006910 01:A900: 04        .byte $04   ; 
- D 1 - I - 0x006911 01:A901: 04        .byte $04   ; 
- D 1 - I - 0x006912 01:A902: 4D        .byte $4D   ; 
- D 1 - I - 0x006913 01:A903: 61        .byte $61   ; 
- D 1 - I - 0x006914 01:A904: 6D        .byte $6D   ; 
- D 1 - I - 0x006915 01:A905: 6D        .byte $6D   ; 
- D 1 - I - 0x006916 01:A906: 70        .byte $70   ; 
- D 1 - I - 0x006917 01:A907: 6D        .byte $6D   ; 
- D 1 - I - 0x006918 01:A908: 6A        .byte $6A   ; 
- D 1 - I - 0x006919 01:A909: 4F        .byte $4F   ; 
- D 1 - I - 0x00691A 01:A90A: 04        .byte $04   ; 
off_A90B_11:
- D 1 - I - 0x00691B 01:A90B: 57        .byte $57   ; 
- D 1 - I - 0x00691C 01:A90C: 5A        .byte $5A   ; 
- D 1 - I - 0x00691D 01:A90D: 5A        .byte $5A   ; 
- D 1 - I - 0x00691E 01:A90E: 5A        .byte $5A   ; 
- D 1 - I - 0x00691F 01:A90F: 7A        .byte $7A   ; 
- D 1 - I - 0x006920 01:A910: 6C        .byte $6C   ; 
- D 1 - I - 0x006921 01:A911: 6E        .byte $6E   ; 
- D 1 - I - 0x006922 01:A912: 68        .byte $68   ; 
- D 1 - I - 0x006923 01:A913: 00        .byte $00   ; 
- D 1 - I - 0x006924 01:A914: 14        .byte $14   ; 
- D 1 - I - 0x006925 01:A915: 00        .byte $00   ; 
- D 1 - I - 0x006926 01:A916: 00        .byte $00   ; 
- D 1 - I - 0x006927 01:A917: 00        .byte $00   ; 
- D 1 - I - 0x006928 01:A918: 00        .byte $00   ; 
- D 1 - I - 0x006929 01:A919: 00        .byte $00   ; 
- D 1 - I - 0x00692A 01:A91A: 14        .byte $14   ; 
- D 1 - I - 0x00692B 01:A91B: 00        .byte $00   ; 
- D 1 - I - 0x00692C 01:A91C: 00        .byte $00   ; 
- D 1 - I - 0x00692D 01:A91D: 00        .byte $00   ; 
- D 1 - I - 0x00692E 01:A91E: 14        .byte $14   ; 
- D 1 - I - 0x00692F 01:A91F: 00        .byte $00   ; 
- D 1 - I - 0x006930 01:A920: 00        .byte $00   ; 
- D 1 - I - 0x006931 01:A921: 00        .byte $00   ; 
- D 1 - I - 0x006932 01:A922: 14        .byte $14   ; 
- D 1 - I - 0x006933 01:A923: 60        .byte $60   ; 
- D 1 - I - 0x006934 01:A924: 6E        .byte $6E   ; 
- D 1 - I - 0x006935 01:A925: 6C        .byte $6C   ; 
- D 1 - I - 0x006936 01:A926: 78        .byte $78   ; 
- D 1 - I - 0x006937 01:A927: 5C        .byte $5C   ; 
- D 1 - I - 0x006938 01:A928: 46        .byte $46   ; 
- D 1 - I - 0x006939 01:A929: 14        .byte $14   ; 
- D 1 - I - 0x00693A 01:A92A: 00        .byte $00   ; 
off_A92B_12:
- D 1 - I - 0x00693B 01:A92B: 1C        .byte $1C   ; 
- D 1 - I - 0x00693C 01:A92C: 00        .byte $00   ; 
- D 1 - I - 0x00693D 01:A92D: 00        .byte $00   ; 
- D 1 - I - 0x00693E 01:A92E: 4C        .byte $4C   ; 
- D 1 - I - 0x00693F 01:A92F: 60        .byte $60   ; 
- D 1 - I - 0x006940 01:A930: 6F        .byte $6F   ; 
- D 1 - I - 0x006941 01:A931: 6C        .byte $6C   ; 
- D 1 - I - 0x006942 01:A932: 69        .byte $69   ; 
- D 1 - I - 0x006943 01:A933: 00        .byte $00   ; 
- D 1 - I - 0x006944 01:A934: 00        .byte $00   ; 
- D 1 - I - 0x006945 01:A935: 00        .byte $00   ; 
- D 1 - I - 0x006946 01:A936: 00        .byte $00   ; 
- D 1 - I - 0x006947 01:A937: 00        .byte $00   ; 
- D 1 - I - 0x006948 01:A938: 14        .byte $14   ; 
- D 1 - I - 0x006949 01:A939: 00        .byte $00   ; 
- D 1 - I - 0x00694A 01:A93A: 00        .byte $00   ; 
- D 1 - I - 0x00694B 01:A93B: 00        .byte $00   ; 
- D 1 - I - 0x00694C 01:A93C: 00        .byte $00   ; 
- D 1 - I - 0x00694D 01:A93D: 00        .byte $00   ; 
- D 1 - I - 0x00694E 01:A93E: 00        .byte $00   ; 
- D 1 - I - 0x00694F 01:A93F: 00        .byte $00   ; 
- D 1 - I - 0x006950 01:A940: 00        .byte $00   ; 
- D 1 - I - 0x006951 01:A941: 00        .byte $00   ; 
- D 1 - I - 0x006952 01:A942: 00        .byte $00   ; 
- D 1 - I - 0x006953 01:A943: 60        .byte $60   ; 
- D 1 - I - 0x006954 01:A944: 6C        .byte $6C   ; 
- D 1 - I - 0x006955 01:A945: 6C        .byte $6C   ; 
- D 1 - I - 0x006956 01:A946: 68        .byte $68   ; 
- D 1 - I - 0x006957 01:A947: 4E        .byte $4E   ; 
- D 1 - I - 0x006958 01:A948: 00        .byte $00   ; 
- D 1 - I - 0x006959 01:A949: 00        .byte $00   ; 
- D 1 - I - 0x00695A 01:A94A: 00        .byte $00   ; 
off_A94B_13:
- D 1 - I - 0x00695B 01:A94B: 2C        .byte $2C   ; 
- D 1 - I - 0x00695C 01:A94C: 04        .byte $04   ; 
- D 1 - I - 0x00695D 01:A94D: 04        .byte $04   ; 
- D 1 - I - 0x00695E 01:A94E: 04        .byte $04   ; 
- D 1 - I - 0x00695F 01:A94F: 45        .byte $45   ; 
- D 1 - I - 0x006960 01:A950: 5E        .byte $5E   ; 
- D 1 - I - 0x006961 01:A951: 5F        .byte $5F   ; 
- D 1 - I - 0x006962 01:A952: 47        .byte $47   ; 
- D 1 - I - 0x006963 01:A953: 04        .byte $04   ; 
- D 1 - I - 0x006964 01:A954: 04        .byte $04   ; 
- D 1 - I - 0x006965 01:A955: 04        .byte $04   ; 
- D 1 - I - 0x006966 01:A956: 04        .byte $04   ; 
- D 1 - I - 0x006967 01:A957: 04        .byte $04   ; 
- D 1 - I - 0x006968 01:A958: 04        .byte $04   ; 
- D 1 - I - 0x006969 01:A959: 04        .byte $04   ; 
- D 1 - I - 0x00696A 01:A95A: 04        .byte $04   ; 
- D 1 - I - 0x00696B 01:A95B: 04        .byte $04   ; 
- D 1 - I - 0x00696C 01:A95C: 04        .byte $04   ; 
- D 1 - I - 0x00696D 01:A95D: 04        .byte $04   ; 
- D 1 - I - 0x00696E 01:A95E: 17        .byte $17   ; 
- D 1 - I - 0x00696F 01:A95F: 04        .byte $04   ; 
- D 1 - I - 0x006970 01:A960: 16        .byte $16   ; 
off_A961_0B:
- D 1 - I - 0x006971 01:A961: 04        .byte $04   ; 
- D 1 - I - 0x006972 01:A962: 04        .byte $04   ; 
- D 1 - I - 0x006973 01:A963: 45        .byte $45   ; 
- D 1 - I - 0x006974 01:A964: 5E        .byte $5E   ; 
- D 1 - I - 0x006975 01:A965: 5F        .byte $5F   ; 
- D 1 - I - 0x006976 01:A966: 47        .byte $47   ; 
- D 1 - I - 0x006977 01:A967: 04        .byte $04   ; 
- D 1 - I - 0x006978 01:A968: 04        .byte $04   ; 
- D 1 - I - 0x006979 01:A969: 04        .byte $04   ; 
- D 1 - I - 0x00697A 01:A96A: 04        .byte $04   ; 
- D 1 - I - 0x00697B 01:A96B: 04        .byte $04   ; 
- D 1 - I - 0x00697C 01:A96C: 04        .byte $04   ; 
- D 1 - I - 0x00697D 01:A96D: 04        .byte $04   ; 
- D 1 - I - 0x00697E 01:A96E: 04        .byte $04   ; 
- D 1 - I - 0x00697F 01:A96F: 04        .byte $04   ; 
- D 1 - I - 0x006980 01:A970: 04        .byte $04   ; 
- D 1 - I - 0x006981 01:A971: 04        .byte $04   ; 
- D 1 - I - 0x006982 01:A972: 04        .byte $04   ; 
- D 1 - I - 0x006983 01:A973: 04        .byte $04   ; 
- D 1 - I - 0x006984 01:A974: 04        .byte $04   ; 
- D 1 - I - 0x006985 01:A975: 04        .byte $04   ; 
- D 1 - I - 0x006986 01:A976: 04        .byte $04   ; 
- D 1 - I - 0x006987 01:A977: 04        .byte $04   ; 
- D 1 - I - 0x006988 01:A978: 04        .byte $04   ; 
- D 1 - I - 0x006989 01:A979: 04        .byte $04   ; 
- D 1 - I - 0x00698A 01:A97A: 04        .byte $04   ; 
- D 1 - I - 0x00698B 01:A97B: 04        .byte $04   ; 
- D 1 - I - 0x00698C 01:A97C: 04        .byte $04   ; 
- D 1 - I - 0x00698D 01:A97D: 04        .byte $04   ; 
- D 1 - I - 0x00698E 01:A97E: 04        .byte $04   ; 
- D 1 - I - 0x00698F 01:A97F: 04        .byte $04   ; 
- D 1 - I - 0x006990 01:A980: 2B        .byte $2B   ; 
off_A981_18:
- D 1 - I - 0x006991 01:A981: 2C        .byte $2C   ; 
- D 1 - I - 0x006992 01:A982: 04        .byte $04   ; 
- D 1 - I - 0x006993 01:A983: 04        .byte $04   ; 
- D 1 - I - 0x006994 01:A984: 2F        .byte $2F   ; 
- D 1 - I - 0x006995 01:A985: 04        .byte $04   ; 
- D 1 - I - 0x006996 01:A986: 04        .byte $04   ; 
- D 1 - I - 0x006997 01:A987: 04        .byte $04   ; 
- D 1 - I - 0x006998 01:A988: 04        .byte $04   ; 
- D 1 - I - 0x006999 01:A989: 04        .byte $04   ; 
- D 1 - I - 0x00699A 01:A98A: 04        .byte $04   ; 
- D 1 - I - 0x00699B 01:A98B: 04        .byte $04   ; 
- D 1 - I - 0x00699C 01:A98C: 04        .byte $04   ; 
- D 1 - I - 0x00699D 01:A98D: 04        .byte $04   ; 
- D 1 - I - 0x00699E 01:A98E: 04        .byte $04   ; 
- D 1 - I - 0x00699F 01:A98F: 04        .byte $04   ; 
- D 1 - I - 0x0069A0 01:A990: 04        .byte $04   ; 
- D 1 - I - 0x0069A1 01:A991: 04        .byte $04   ; 
- D 1 - I - 0x0069A2 01:A992: 04        .byte $04   ; 
- D 1 - I - 0x0069A3 01:A993: 41        .byte $41   ; 
- D 1 - I - 0x0069A4 01:A994: 55        .byte $55   ; 
- D 1 - I - 0x0069A5 01:A995: 55        .byte $55   ; 
- D 1 - I - 0x0069A6 01:A996: 55        .byte $55   ; 
- D 1 - I - 0x0069A7 01:A997: 55        .byte $55   ; 
- D 1 - I - 0x0069A8 01:A998: 55        .byte $55   ; 
- D 1 - I - 0x0069A9 01:A999: 55        .byte $55   ; 
- D 1 - I - 0x0069AA 01:A99A: 43        .byte $43   ; 
- D 1 - I - 0x0069AB 01:A99B: 04        .byte $04   ; 
- D 1 - I - 0x0069AC 01:A99C: 04        .byte $04   ; 
- D 1 - I - 0x0069AD 01:A99D: 04        .byte $04   ; 
off_A99E_0B:
- D 1 - I - 0x0069AE 01:A99E: 16        .byte $16   ; 
- D 1 - I - 0x0069AF 01:A99F: 04        .byte $04   ; 
- D 1 - I - 0x0069B0 01:A9A0: 04        .byte $04   ; 
- D 1 - I - 0x0069B1 01:A9A1: 04        .byte $04   ; 
- D 1 - I - 0x0069B2 01:A9A2: 45        .byte $45   ; 
- D 1 - I - 0x0069B3 01:A9A3: 5E        .byte $5E   ; 
- D 1 - I - 0x0069B4 01:A9A4: 5F        .byte $5F   ; 
- D 1 - I - 0x0069B5 01:A9A5: 47        .byte $47   ; 
- D 1 - I - 0x0069B6 01:A9A6: 04        .byte $04   ; 
- D 1 - I - 0x0069B7 01:A9A7: 16        .byte $16   ; 
- D 1 - I - 0x0069B8 01:A9A8: 04        .byte $04   ; 
- D 1 - I - 0x0069B9 01:A9A9: 04        .byte $04   ; 
- D 1 - I - 0x0069BA 01:A9AA: 04        .byte $04   ; 
- D 1 - I - 0x0069BB 01:A9AB: 04        .byte $04   ; 
- D 1 - I - 0x0069BC 01:A9AC: 87        .byte $87   ; 
- D 1 - I - 0x0069BD 01:A9AD: 04        .byte $04   ; 
- D 1 - I - 0x0069BE 01:A9AE: 36        .byte $36   ; 
- D 1 - I - 0x0069BF 01:A9AF: 04        .byte $04   ; 
- D 1 - I - 0x0069C0 01:A9B0: 04        .byte $04   ; 
- D 1 - I - 0x0069C1 01:A9B1: 04        .byte $04   ; 
- D 1 - I - 0x0069C2 01:A9B2: 17        .byte $17   ; 
- D 1 - I - 0x0069C3 01:A9B3: 04        .byte $04   ; 
- D 1 - I - 0x0069C4 01:A9B4: 04        .byte $04   ; 
- D 1 - I - 0x0069C5 01:A9B5: 04        .byte $04   ; 
- - - - - - 0x0069C6 01:A9B6: 04        .byte $04   ; 
- - - - - - 0x0069C7 01:A9B7: 04        .byte $04   ; 
- - - - - - 0x0069C8 01:A9B8: 04        .byte $04   ; 
- - - - - - 0x0069C9 01:A9B9: 04        .byte $04   ; 
- - - - - - 0x0069CA 01:A9BA: 04        .byte $04   ; 
- - - - - - 0x0069CB 01:A9BB: 04        .byte $04   ; 
- - - - - - 0x0069CC 01:A9BC: 04        .byte $04   ; 
- - - - - - 0x0069CD 01:A9BD: 04        .byte $04   ; 
off_A9BE_19:
- D 1 - I - 0x0069CE 01:A9BE: 1C        .byte $1C   ; 
- D 1 - I - 0x0069CF 01:A9BF: 00        .byte $00   ; 
- D 1 - I - 0x0069D0 01:A9C0: 00        .byte $00   ; 
- D 1 - I - 0x0069D1 01:A9C1: 3F        .byte $3F   ; 
- D 1 - I - 0x0069D2 01:A9C2: 00        .byte $00   ; 
- D 1 - I - 0x0069D3 01:A9C3: 00        .byte $00   ; 
- D 1 - I - 0x0069D4 01:A9C4: 00        .byte $00   ; 
- D 1 - I - 0x0069D5 01:A9C5: 00        .byte $00   ; 
- D 1 - I - 0x0069D6 01:A9C6: 14        .byte $14   ; 
- D 1 - I - 0x0069D7 01:A9C7: 00        .byte $00   ; 
- D 1 - I - 0x0069D8 01:A9C8: 00        .byte $00   ; 
- D 1 - I - 0x0069D9 01:A9C9: 00        .byte $00   ; 
- D 1 - I - 0x0069DA 01:A9CA: 00        .byte $00   ; 
- D 1 - I - 0x0069DB 01:A9CB: 00        .byte $00   ; 
- D 1 - I - 0x0069DC 01:A9CC: 00        .byte $00   ; 
- D 1 - I - 0x0069DD 01:A9CD: 00        .byte $00   ; 
- D 1 - I - 0x0069DE 01:A9CE: 00        .byte $00   ; 
- D 1 - I - 0x0069DF 01:A9CF: 48        .byte $48   ; 
- D 1 - I - 0x0069E0 01:A9D0: 60        .byte $60   ; 
- D 1 - I - 0x0069E1 01:A9D1: 6C        .byte $6C   ; 
- D 1 - I - 0x0069E2 01:A9D2: 6C        .byte $6C   ; 
- D 1 - I - 0x0069E3 01:A9D3: 6C        .byte $6C   ; 
- D 1 - I - 0x0069E4 01:A9D4: 6C        .byte $6C   ; 
- D 1 - I - 0x0069E5 01:A9D5: 6E        .byte $6E   ; 
- D 1 - I - 0x0069E6 01:A9D6: 6C        .byte $6C   ; 
- D 1 - I - 0x0069E7 01:A9D7: 68        .byte $68   ; 
- D 1 - I - 0x0069E8 01:A9D8: 15        .byte $15   ; 
- D 1 - I - 0x0069E9 01:A9D9: 00        .byte $00   ; 
- D 1 - I - 0x0069EA 01:A9DA: 00        .byte $00   ; 
- D 1 - I - 0x0069EB 01:A9DB: 00        .byte $00   ; 
- D 1 - I - 0x0069EC 01:A9DC: 00        .byte $00   ; 
- D 1 - I - 0x0069ED 01:A9DD: 00        .byte $00   ; 
off_A9DE_1A:
- D 1 - I - 0x0069EE 01:A9DE: 1C        .byte $1C   ; 
- D 1 - I - 0x0069EF 01:A9DF: 00        .byte $00   ; 
- D 1 - I - 0x0069F0 01:A9E0: 2D        .byte $2D   ; 
- D 1 - I - 0x0069F1 01:A9E1: 2E        .byte $2E   ; 
- D 1 - I - 0x0069F2 01:A9E2: 00        .byte $00   ; 
- D 1 - I - 0x0069F3 01:A9E3: 00        .byte $00   ; 
- D 1 - I - 0x0069F4 01:A9E4: 00        .byte $00   ; 
- D 1 - I - 0x0069F5 01:A9E5: 00        .byte $00   ; 
- D 1 - I - 0x0069F6 01:A9E6: 00        .byte $00   ; 
- D 1 - I - 0x0069F7 01:A9E7: 00        .byte $00   ; 
- D 1 - I - 0x0069F8 01:A9E8: 00        .byte $00   ; 
- D 1 - I - 0x0069F9 01:A9E9: 00        .byte $00   ; 
- D 1 - I - 0x0069FA 01:A9EA: 00        .byte $00   ; 
- D 1 - I - 0x0069FB 01:A9EB: 00        .byte $00   ; 
- D 1 - I - 0x0069FC 01:A9EC: 00        .byte $00   ; 
- D 1 - I - 0x0069FD 01:A9ED: 00        .byte $00   ; 
- D 1 - I - 0x0069FE 01:A9EE: 40        .byte $40   ; 
- D 1 - I - 0x0069FF 01:A9EF: 54        .byte $54   ; 
- D 1 - I - 0x006A00 01:A9F0: 7E        .byte $7E   ; 
- D 1 - I - 0x006A01 01:A9F1: 6C        .byte $6C   ; 
- D 1 - I - 0x006A02 01:A9F2: 6C        .byte $6C   ; 
- D 1 - I - 0x006A03 01:A9F3: 6F        .byte $6F   ; 
- D 1 - I - 0x006A04 01:A9F4: 6C        .byte $6C   ; 
- D 1 - I - 0x006A05 01:A9F5: 6C        .byte $6C   ; 
- D 1 - I - 0x006A06 01:A9F6: 6C        .byte $6C   ; 
- D 1 - I - 0x006A07 01:A9F7: 69        .byte $69   ; 
- D 1 - I - 0x006A08 01:A9F8: 00        .byte $00   ; 
- D 1 - I - 0x006A09 01:A9F9: 00        .byte $00   ; 
- D 1 - I - 0x006A0A 01:A9FA: 00        .byte $00   ; 
- D 1 - I - 0x006A0B 01:A9FB: 00        .byte $00   ; 
- D 1 - I - 0x006A0C 01:A9FC: 00        .byte $00   ; 
- D 1 - I - 0x006A0D 01:A9FD: 00        .byte $00   ; 
off_A9FE_1B:
- D 1 - I - 0x006A0E 01:A9FE: 3C        .byte $3C   ; 
- D 1 - I - 0x006A0F 01:A9FF: 3D        .byte $3D   ; 
- D 1 - I - 0x006A10 01:AA00: 3E        .byte $3E   ; 
- D 1 - I - 0x006A11 01:AA01: 04        .byte $04   ; 
- D 1 - I - 0x006A12 01:AA02: 04        .byte $04   ; 
- D 1 - I - 0x006A13 01:AA03: 04        .byte $04   ; 
- D 1 - I - 0x006A14 01:AA04: 04        .byte $04   ; 
- D 1 - I - 0x006A15 01:AA05: 04        .byte $04   ; 
- D 1 - I - 0x006A16 01:AA06: 04        .byte $04   ; 
- D 1 - I - 0x006A17 01:AA07: 04        .byte $04   ; 
- D 1 - I - 0x006A18 01:AA08: 04        .byte $04   ; 
- D 1 - I - 0x006A19 01:AA09: 04        .byte $04   ; 
- D 1 - I - 0x006A1A 01:AA0A: 04        .byte $04   ; 
- D 1 - I - 0x006A1B 01:AA0B: 04        .byte $04   ; 
- D 1 - I - 0x006A1C 01:AA0C: 04        .byte $04   ; 
- D 1 - I - 0x006A1D 01:AA0D: 49        .byte $49   ; 
- D 1 - I - 0x006A1E 01:AA0E: 61        .byte $61   ; 
- D 1 - I - 0x006A1F 01:AA0F: 6D        .byte $6D   ; 
- D 1 - I - 0x006A20 01:AA10: 6D        .byte $6D   ; 
- D 1 - I - 0x006A21 01:AA11: 6D        .byte $6D   ; 
- D 1 - I - 0x006A22 01:AA12: 6D        .byte $6D   ; 
- D 1 - I - 0x006A23 01:AA13: 79        .byte $79   ; 
off_AA14_09:
- D 1 - I - 0x006A24 01:AA14: 5B        .byte $5B   ; 
- D 1 - I - 0x006A25 01:AA15: 5E        .byte $5E   ; 
- D 1 - I - 0x006A26 01:AA16: 5F        .byte $5F   ; 
- D 1 - I - 0x006A27 01:AA17: 47        .byte $47   ; 
- D 1 - I - 0x006A28 01:AA18: 04        .byte $04   ; 
- D 1 - I - 0x006A29 01:AA19: 04        .byte $04   ; 
- D 1 - I - 0x006A2A 01:AA1A: 04        .byte $04   ; 
- D 1 - I - 0x006A2B 01:AA1B: 04        .byte $04   ; 
- D 1 - I - 0x006A2C 01:AA1C: 04        .byte $04   ; 
- D 1 - I - 0x006A2D 01:AA1D: 04        .byte $04   ; 
- D 1 - I - 0x006A2E 01:AA1E: 04        .byte $04   ; 
- D 1 - I - 0x006A2F 01:AA1F: 04        .byte $04   ; 
- D 1 - I - 0x006A30 01:AA20: 04        .byte $04   ; 
- D 1 - I - 0x006A31 01:AA21: 04        .byte $04   ; 
- D 1 - I - 0x006A32 01:AA22: 04        .byte $04   ; 
- D 1 - I - 0x006A33 01:AA23: 04        .byte $04   ; 
- D 1 - I - 0x006A34 01:AA24: 04        .byte $04   ; 
- D 1 - I - 0x006A35 01:AA25: 04        .byte $04   ; 
- D 1 - I - 0x006A36 01:AA26: 04        .byte $04   ; 
- D 1 - I - 0x006A37 01:AA27: 16        .byte $16   ; 
- D 1 - I - 0x006A38 01:AA28: 04        .byte $04   ; 
- D 1 - I - 0x006A39 01:AA29: 04        .byte $04   ; 
- D 1 - I - 0x006A3A 01:AA2A: 04        .byte $04   ; 
- D 1 - I - 0x006A3B 01:AA2B: 04        .byte $04   ; 
- D 1 - I - 0x006A3C 01:AA2C: 04        .byte $04   ; 
- D 1 - I - 0x006A3D 01:AA2D: 04        .byte $04   ; 
- D 1 - I - 0x006A3E 01:AA2E: 04        .byte $04   ; 
- D 1 - I - 0x006A3F 01:AA2F: 04        .byte $04   ; 
- D 1 - I - 0x006A40 01:AA30: 04        .byte $04   ; 
- D 1 - I - 0x006A41 01:AA31: 17        .byte $17   ; 
- D 1 - I - 0x006A42 01:AA32: 04        .byte $04   ; 
- D 1 - I - 0x006A43 01:AA33: 2B        .byte $2B   ; 
off_AA34_1C:
- D 1 - I - 0x006A44 01:AA34: 2C        .byte $2C   ; 
- D 1 - I - 0x006A45 01:AA35: 04        .byte $04   ; 
- D 1 - I - 0x006A46 01:AA36: 04        .byte $04   ; 
- D 1 - I - 0x006A47 01:AA37: 04        .byte $04   ; 
- D 1 - I - 0x006A48 01:AA38: 04        .byte $04   ; 
- D 1 - I - 0x006A49 01:AA39: 04        .byte $04   ; 
- D 1 - I - 0x006A4A 01:AA3A: 04        .byte $04   ; 
- D 1 - I - 0x006A4B 01:AA3B: 04        .byte $04   ; 
- D 1 - I - 0x006A4C 01:AA3C: 04        .byte $04   ; 
- D 1 - I - 0x006A4D 01:AA3D: 04        .byte $04   ; 
- D 1 - I - 0x006A4E 01:AA3E: 04        .byte $04   ; 
- D 1 - I - 0x006A4F 01:AA3F: 04        .byte $04   ; 
- D 1 - I - 0x006A50 01:AA40: 04        .byte $04   ; 
- D 1 - I - 0x006A51 01:AA41: 04        .byte $04   ; 
- D 1 - I - 0x006A52 01:AA42: 41        .byte $41   ; 
- D 1 - I - 0x006A53 01:AA43: 55        .byte $55   ; 
- D 1 - I - 0x006A54 01:AA44: 7F        .byte $7F   ; 
- D 1 - I - 0x006A55 01:AA45: 71        .byte $71   ; 
- D 1 - I - 0x006A56 01:AA46: 6D        .byte $6D   ; 
- D 1 - I - 0x006A57 01:AA47: 6D        .byte $6D   ; 
- D 1 - I - 0x006A58 01:AA48: 6D        .byte $6D   ; 
- D 1 - I - 0x006A59 01:AA49: 67        .byte $67   ; 
- D 1 - I - 0x006A5A 01:AA4A: 4F        .byte $4F   ; 
- D 1 - I - 0x006A5B 01:AA4B: 04        .byte $04   ; 
- D 1 - I - 0x006A5C 01:AA4C: 04        .byte $04   ; 
- D 1 - I - 0x006A5D 01:AA4D: 04        .byte $04   ; 
- D 1 - I - 0x006A5E 01:AA4E: 04        .byte $04   ; 
- D 1 - I - 0x006A5F 01:AA4F: 04        .byte $04   ; 
- D 1 - I - 0x006A60 01:AA50: 04        .byte $04   ; 
- D 1 - I - 0x006A61 01:AA51: 04        .byte $04   ; 
- D 1 - I - 0x006A62 01:AA52: 04        .byte $04   ; 
- D 1 - I - 0x006A63 01:AA53: 04        .byte $04   ; 
off_AA54_02:
- D 1 - I - 0x006A64 01:AA54: 00        .byte $00   ; 
- D 1 - I - 0x006A65 01:AA55: 00        .byte $00   ; 
- D 1 - I - 0x006A66 01:AA56: 00        .byte $00   ; 
- D 1 - I - 0x006A67 01:AA57: 00        .byte $00   ; 
- - - - - - 0x006A68 01:AA58: 00        .byte $00   ; 
- - - - - - 0x006A69 01:AA59: 00        .byte $00   ; 
- - - - - - 0x006A6A 01:AA5A: 00        .byte $00   ; 
- - - - - - 0x006A6B 01:AA5B: 00        .byte $00   ; 
- D 1 - I - 0x006A6C 01:AA5C: 00        .byte $00   ; 
- D 1 - I - 0x006A6D 01:AA5D: 00        .byte $00   ; 
- D 1 - I - 0x006A6E 01:AA5E: 00        .byte $00   ; 
- D 1 - I - 0x006A6F 01:AA5F: 00        .byte $00   ; 
- D 1 - I - 0x006A70 01:AA60: 00        .byte $00   ; 
- D 1 - I - 0x006A71 01:AA61: 00        .byte $00   ; 
- D 1 - I - 0x006A72 01:AA62: 00        .byte $00   ; 
- D 1 - I - 0x006A73 01:AA63: 00        .byte $00   ; 
- D 1 - I - 0x006A74 01:AA64: 00        .byte $00   ; 
- D 1 - I - 0x006A75 01:AA65: 00        .byte $00   ; 
- D 1 - I - 0x006A76 01:AA66: 00        .byte $00   ; 
- D 1 - I - 0x006A77 01:AA67: 00        .byte $00   ; 
- D 1 - I - 0x006A78 01:AA68: 00        .byte $00   ; 
- D 1 - I - 0x006A79 01:AA69: 40        .byte $40   ; 
- D 1 - I - 0x006A7A 01:AA6A: 50        .byte $50   ; 
- D 1 - I - 0x006A7B 01:AA6B: 50        .byte $50   ; 
- D 1 - I - 0x006A7C 01:AA6C: 55        .byte $55   ; 
- D 1 - I - 0x006A7D 01:AA6D: 50        .byte $50   ; 
- D 1 - I - 0x006A7E 01:AA6E: 00        .byte $00   ; 
- D 1 - I - 0x006A7F 01:AA6F: 00        .byte $00   ; 
- D 1 - I - 0x006A80 01:AA70: 00        .byte $00   ; 
- D 1 - I - 0x006A81 01:AA71: 44        .byte $44   ; 
- D 1 - I - 0x006A82 01:AA72: 55        .byte $55   ; 
- D 1 - I - 0x006A83 01:AA73: 55        .byte $55   ; 
- D 1 - I - 0x006A84 01:AA74: 45        .byte $45   ; 
- D 1 - I - 0x006A85 01:AA75: 55        .byte $55   ; 
- D 1 - I - 0x006A86 01:AA76: 00        .byte $00   ; 
- D 1 - I - 0x006A87 01:AA77: 00        .byte $00   ; 
- D 1 - I - 0x006A88 01:AA78: 00        .byte $00   ; 
- D 1 - I - 0x006A89 01:AA79: 04        .byte $04   ; 
- D 1 - I - 0x006A8A 01:AA7A: 55        .byte $55   ; 
- D 1 - I - 0x006A8B 01:AA7B: 15        .byte $15   ; 
- D 1 - I - 0x006A8C 01:AA7C: 00        .byte $00   ; 
- D 1 - I - 0x006A8D 01:AA7D: 00        .byte $00   ; 
- D 1 - I - 0x006A8E 01:AA7E: 00        .byte $00   ; 
- D 1 - I - 0x006A8F 01:AA7F: 00        .byte $00   ; 
- D 1 - I - 0x006A90 01:AA80: 00        .byte $00   ; 
- D 1 - I - 0x006A91 01:AA81: 00        .byte $00   ; 
- D 1 - I - 0x006A92 01:AA82: 00        .byte $00   ; 
- D 1 - I - 0x006A93 01:AA83: 00        .byte $00   ; 
- D 1 - I - 0x006A94 01:AA84: 00        .byte $00   ; 
- D 1 - I - 0x006A95 01:AA85: 00        .byte $00   ; 
- D 1 - I - 0x006A96 01:AA86: 00        .byte $00   ; 
- D 1 - I - 0x006A97 01:AA87: 40        .byte $40   ; 
- D 1 - I - 0x006A98 01:AA88: 55        .byte $55   ; 
- D 1 - I - 0x006A99 01:AA89: 55        .byte $55   ; 
- D 1 - I - 0x006A9A 01:AA8A: 11        .byte $11   ; 
- D 1 - I - 0x006A9B 01:AA8B: 00        .byte $00   ; 
- D 1 - I - 0x006A9C 01:AA8C: 00        .byte $00   ; 
- D 1 - I - 0x006A9D 01:AA8D: 00        .byte $00   ; 
- D 1 - I - 0x006A9E 01:AA8E: 00        .byte $00   ; 
- D 1 - I - 0x006A9F 01:AA8F: 04        .byte $04   ; 
- D 1 - I - 0x006AA0 01:AA90: 05        .byte $05   ; 
- D 1 - I - 0x006AA1 01:AA91: 05        .byte $05   ; 
- D 1 - I - 0x006AA2 01:AA92: 00        .byte $00   ; 
- D 1 - I - 0x006AA3 01:AA93: 00        .byte $00   ; 
off_AA94_0D:
- D 1 - I - 0x006AA4 01:AA94: 6C        .byte $6C   ; 
- D 1 - I - 0x006AA5 01:AA95: EF        .byte $EF   ; 
- D 1 - I - 0x006AA6 01:AA96: 6E        .byte $6E   ; 
- D 1 - I - 0x006AA7 01:AA97: 66        .byte $66   ; 
- D 1 - I - 0x006AA8 01:AA98: 4A        .byte $4A   ; 
- D 1 - I - 0x006AA9 01:AA99: 00        .byte $00   ; 
- D 1 - I - 0x006AAA 01:AA9A: 00        .byte $00   ; 
- D 1 - I - 0x006AAB 01:AA9B: 00        .byte $00   ; 
- D 1 - I - 0x006AAC 01:AA9C: 00        .byte $00   ; 
- D 1 - I - 0x006AAD 01:AA9D: 00        .byte $00   ; 
- D 1 - I - 0x006AAE 01:AA9E: 00        .byte $00   ; 
- D 1 - I - 0x006AAF 01:AA9F: 00        .byte $00   ; 
- D 1 - I - 0x006AB0 01:AAA0: 00        .byte $00   ; 
- D 1 - I - 0x006AB1 01:AAA1: 22        .byte $22   ; 
- D 1 - I - 0x006AB2 01:AAA2: A0        .byte $A0   ; 
- D 1 - I - 0x006AB3 01:AAA3: A1        .byte $A1   ; 
- D 1 - I - 0x006AB4 01:AAA4: A2        .byte $A2   ; 
- D 1 - I - 0x006AB5 01:AAA5: A3        .byte $A3   ; 
- D 1 - I - 0x006AB6 01:AAA6: 00        .byte $00   ; 
- D 1 - I - 0x006AB7 01:AAA7: 00        .byte $00   ; 
- D 1 - I - 0x006AB8 01:AAA8: 00        .byte $00   ; 
- D 1 - I - 0x006AB9 01:AAA9: 00        .byte $00   ; 
- D 1 - I - 0x006ABA 01:AAAA: 00        .byte $00   ; 
- D 1 - I - 0x006ABB 01:AAAB: 00        .byte $00   ; 
- - - - - - 0x006ABC 01:AAAC: 00        .byte $00   ; 
- - - - - - 0x006ABD 01:AAAD: 00        .byte $00   ; 
- - - - - - 0x006ABE 01:AAAE: 00        .byte $00   ; 
- - - - - - 0x006ABF 01:AAAF: 00        .byte $00   ; 
- - - - - - 0x006AC0 01:AAB0: 00        .byte $00   ; 
- - - - - - 0x006AC1 01:AAB1: 00        .byte $00   ; 
- - - - - - 0x006AC2 01:AAB2: 00        .byte $00   ; 
- - - - - - 0x006AC3 01:AAB3: 00        .byte $00   ; 
off_AAB4_0E:
- D 1 - I - 0x006AC4 01:AAB4: 6C        .byte $6C   ; 
- D 1 - I - 0x006AC5 01:AAB5: F0        .byte $F0   ; 
- D 1 - I - 0x006AC6 01:AAB6: 6C        .byte $6C   ; 
- D 1 - I - 0x006AC7 01:AAB7: 7C        .byte $7C   ; 
- D 1 - I - 0x006AC8 01:AAB8: 54        .byte $54   ; 
- D 1 - I - 0x006AC9 01:AAB9: 54        .byte $54   ; 
- D 1 - I - 0x006ACA 01:AABA: 42        .byte $42   ; 
- D 1 - I - 0x006ACB 01:AABB: 00        .byte $00   ; 
- D 1 - I - 0x006ACC 01:AABC: 00        .byte $00   ; 
- D 1 - I - 0x006ACD 01:AABD: 15        .byte $15   ; 
- D 1 - I - 0x006ACE 01:AABE: 00        .byte $00   ; 
- D 1 - I - 0x006ACF 01:AABF: 00        .byte $00   ; 
- D 1 - I - 0x006AD0 01:AAC0: 00        .byte $00   ; 
- D 1 - I - 0x006AD1 01:AAC1: 23        .byte $23   ; 
- D 1 - I - 0x006AD2 01:AAC2: B0        .byte $B0   ; 
- D 1 - I - 0x006AD3 01:AAC3: B1        .byte $B1   ; 
- D 1 - I - 0x006AD4 01:AAC4: B2        .byte $B2   ; 
- D 1 - I - 0x006AD5 01:AAC5: B3        .byte $B3   ; 
- D 1 - I - 0x006AD6 01:AAC6: B4        .byte $B4   ; 
- D 1 - I - 0x006AD7 01:AAC7: 00        .byte $00   ; 
- D 1 - I - 0x006AD8 01:AAC8: 00        .byte $00   ; 
- D 1 - I - 0x006AD9 01:AAC9: 00        .byte $00   ; 
- D 1 - I - 0x006ADA 01:AACA: 00        .byte $00   ; 
- D 1 - I - 0x006ADB 01:AACB: 00        .byte $00   ; 
- - - - - - 0x006ADC 01:AACC: 00        .byte $00   ; 
- - - - - - 0x006ADD 01:AACD: 00        .byte $00   ; 
- - - - - - 0x006ADE 01:AACE: 15        .byte $15   ; 
- - - - - - 0x006ADF 01:AACF: 00        .byte $00   ; 
- - - - - - 0x006AE0 01:AAD0: 15        .byte $15   ; 
- - - - - - 0x006AE1 01:AAD1: 00        .byte $00   ; 
- - - - - - 0x006AE2 01:AAD2: 00        .byte $00   ; 
- - - - - - 0x006AE3 01:AAD3: 00        .byte $00   ; 
off_AAD4_10:
- D 1 - I - 0x006AE4 01:AAD4: 04        .byte $04   ; 
- D 1 - I - 0x006AE5 01:AAD5: 36        .byte $36   ; 
- D 1 - I - 0x006AE6 01:AAD6: 4D        .byte $4D   ; 
- D 1 - I - 0x006AE7 01:AAD7: 61        .byte $61   ; 
- D 1 - I - 0x006AE8 01:AAD8: 6D        .byte $6D   ; 
- D 1 - I - 0x006AE9 01:AAD9: 70        .byte $70   ; 
- D 1 - I - 0x006AEA 01:AADA: 6B        .byte $6B   ; 
- D 1 - I - 0x006AEB 01:AADB: 04        .byte $04   ; 
- D 1 - I - 0x006AEC 01:AADC: 04        .byte $04   ; 
- D 1 - I - 0x006AED 01:AADD: 04        .byte $04   ; 
- D 1 - I - 0x006AEE 01:AADE: 04        .byte $04   ; 
- D 1 - I - 0x006AEF 01:AADF: 16        .byte $16   ; 
- D 1 - I - 0x006AF0 01:AAE0: 04        .byte $04   ; 
- D 1 - I - 0x006AF1 01:AAE1: 35        .byte $35   ; 
- D 1 - I - 0x006AF2 01:AAE2: D0        .byte $D0   ; 
- D 1 - I - 0x006AF3 01:AAE3: D1        .byte $D1   ; 
- D 1 - I - 0x006AF4 01:AAE4: D2        .byte $D2   ; 
- D 1 - I - 0x006AF5 01:AAE5: D3        .byte $D3   ; 
- D 1 - I - 0x006AF6 01:AAE6: D4        .byte $D4   ; 
- D 1 - I - 0x006AF7 01:AAE7: 04        .byte $04   ; 
- D 1 - I - 0x006AF8 01:AAE8: 04        .byte $04   ; 
- D 1 - I - 0x006AF9 01:AAE9: 04        .byte $04   ; 
- D 1 - I - 0x006AFA 01:AAEA: 04        .byte $04   ; 
- D 1 - I - 0x006AFB 01:AAEB: 04        .byte $04   ; 
- - - - - - 0x006AFC 01:AAEC: 16        .byte $16   ; 
- - - - - - 0x006AFD 01:AAED: 04        .byte $04   ; 
- - - - - - 0x006AFE 01:AAEE: 04        .byte $04   ; 
- - - - - - 0x006AFF 01:AAEF: 04        .byte $04   ; 
- - - - - - 0x006B00 01:AAF0: 04        .byte $04   ; 
- - - - - - 0x006B01 01:AAF1: 04        .byte $04   ; 
- - - - - - 0x006B02 01:AAF2: 04        .byte $04   ; 
- - - - - - 0x006B03 01:AAF3: 04        .byte $04   ; 
off_AAF4_03:
- - - - - - 0x006B04 01:AAF4: 00        .byte $00   ; 
- - - - - - 0x006B05 01:AAF5: 00        .byte $00   ; 
- - - - - - 0x006B06 01:AAF6: 00        .byte $00   ; 
- - - - - - 0x006B07 01:AAF7: 00        .byte $00   ; 
- - - - - - 0x006B08 01:AAF8: 00        .byte $00   ; 
- - - - - - 0x006B09 01:AAF9: 00        .byte $00   ; 
- - - - - - 0x006B0A 01:AAFA: 00        .byte $00   ; 
- - - - - - 0x006B0B 01:AAFB: 00        .byte $00   ; 
- D 1 - I - 0x006B0C 01:AAFC: 00        .byte $00   ; 
- D 1 - I - 0x006B0D 01:AAFD: 00        .byte $00   ; 
- D 1 - I - 0x006B0E 01:AAFE: 00        .byte $00   ; 
- D 1 - I - 0x006B0F 01:AAFF: 00        .byte $00   ; 
- D 1 - I - 0x006B10 01:AB00: 00        .byte $00   ; 
- D 1 - I - 0x006B11 01:AB01: 00        .byte $00   ; 
- - - - - - 0x006B12 01:AB02: 00        .byte $00   ; 
- - - - - - 0x006B13 01:AB03: 00        .byte $00   ; 
- D 1 - I - 0x006B14 01:AB04: 50        .byte $50   ; 
- D 1 - I - 0x006B15 01:AB05: 00        .byte $00   ; 
- D 1 - I - 0x006B16 01:AB06: 00        .byte $00   ; 
- D 1 - I - 0x006B17 01:AB07: 00        .byte $00   ; 
- D 1 - I - 0x006B18 01:AB08: 00        .byte $00   ; 
- D 1 - I - 0x006B19 01:AB09: 00        .byte $00   ; 
- - - - - - 0x006B1A 01:AB0A: 00        .byte $00   ; 
- - - - - - 0x006B1B 01:AB0B: 00        .byte $00   ; 
- D 1 - I - 0x006B1C 01:AB0C: 55        .byte $55   ; 
- D 1 - I - 0x006B1D 01:AB0D: 51        .byte $51   ; 
- D 1 - I - 0x006B1E 01:AB0E: 00        .byte $00   ; 
- D 1 - I - 0x006B1F 01:AB0F: 00        .byte $00   ; 
- D 1 - I - 0x006B20 01:AB10: 00        .byte $00   ; 
- D 1 - I - 0x006B21 01:AB11: 00        .byte $00   ; 
- - - - - - 0x006B22 01:AB12: 00        .byte $00   ; 
- - - - - - 0x006B23 01:AB13: 00        .byte $00   ; 
- D 1 - I - 0x006B24 01:AB14: 04        .byte $04   ; 
- D 1 - I - 0x006B25 01:AB15: 05        .byte $05   ; 
- D 1 - I - 0x006B26 01:AB16: 00        .byte $00   ; 
- D 1 - I - 0x006B27 01:AB17: 00        .byte $00   ; 
- D 1 - I - 0x006B28 01:AB18: 00        .byte $00   ; 
- D 1 - I - 0x006B29 01:AB19: 00        .byte $00   ; 
- - - - - - 0x006B2A 01:AB1A: 00        .byte $00   ; 
- - - - - - 0x006B2B 01:AB1B: 00        .byte $00   ; 
- D 1 - I - 0x006B2C 01:AB1C: 00        .byte $00   ; 
- D 1 - I - 0x006B2D 01:AB1D: 00        .byte $00   ; 
- D 1 - I - 0x006B2E 01:AB1E: 00        .byte $00   ; 
- D 1 - I - 0x006B2F 01:AB1F: 00        .byte $00   ; 
- D 1 - I - 0x006B30 01:AB20: 00        .byte $00   ; 
- D 1 - I - 0x006B31 01:AB21: 00        .byte $00   ; 
- - - - - - 0x006B32 01:AB22: 00        .byte $00   ; 
- - - - - - 0x006B33 01:AB23: 00        .byte $00   ; 
- D 1 - I - 0x006B34 01:AB24: 00        .byte $00   ; 
- D 1 - I - 0x006B35 01:AB25: 00        .byte $00   ; 
- D 1 - I - 0x006B36 01:AB26: 00        .byte $00   ; 
- D 1 - I - 0x006B37 01:AB27: 00        .byte $00   ; 
- D 1 - I - 0x006B38 01:AB28: 00        .byte $00   ; 
- D 1 - I - 0x006B39 01:AB29: 00        .byte $00   ; 
- - - - - - 0x006B3A 01:AB2A: 00        .byte $00   ; 
- - - - - - 0x006B3B 01:AB2B: 00        .byte $00   ; 
- D 1 - I - 0x006B3C 01:AB2C: 00        .byte $00   ; 
- D 1 - I - 0x006B3D 01:AB2D: 00        .byte $00   ; 
- D 1 - I - 0x006B3E 01:AB2E: 00        .byte $00   ; 
- D 1 - I - 0x006B3F 01:AB2F: 00        .byte $00   ; 
- D 1 - I - 0x006B40 01:AB30: 00        .byte $00   ; 
- D 1 - I - 0x006B41 01:AB31: 00        .byte $00   ; 
- - - - - - 0x006B42 01:AB32: 00        .byte $00   ; 
- - - - - - 0x006B43 01:AB33: 00        .byte $00   ; 
off_AB34_03:
- - - - - - 0x006B44 01:AB34: 04        .byte $04   ; 
- - - - - - 0x006B45 01:AB35: 04        .byte $04   ; 
- - - - - - 0x006B46 01:AB36: 04        .byte $04   ; 
- - - - - - 0x006B47 01:AB37: 04        .byte $04   ; 
- - - - - - 0x006B48 01:AB38: 04        .byte $04   ; 
- - - - - - 0x006B49 01:AB39: 04        .byte $04   ; 
- - - - - - 0x006B4A 01:AB3A: 04        .byte $04   ; 
- - - - - - 0x006B4B 01:AB3B: 04        .byte $04   ; 
- - - - - - 0x006B4C 01:AB3C: 04        .byte $04   ; 
- D 1 - I - 0x006B4D 01:AB3D: 04        .byte $04   ; 
- D 1 - I - 0x006B4E 01:AB3E: 04        .byte $04   ; 
- D 1 - I - 0x006B4F 01:AB3F: 04        .byte $04   ; 
- D 1 - I - 0x006B50 01:AB40: 16        .byte $16   ; 
- D 1 - I - 0x006B51 01:AB41: 04        .byte $04   ; 
- D 1 - I - 0x006B52 01:AB42: 04        .byte $04   ; 
- D 1 - I - 0x006B53 01:AB43: 04        .byte $04   ; 
- D 1 - I - 0x006B54 01:AB44: 31        .byte $31   ; 
- D 1 - I - 0x006B55 01:AB45: 04        .byte $04   ; 
- D 1 - I - 0x006B56 01:AB46: 04        .byte $04   ; 
- D 1 - I - 0x006B57 01:AB47: 04        .byte $04   ; 
- D 1 - I - 0x006B58 01:AB48: 04        .byte $04   ; 
- D 1 - I - 0x006B59 01:AB49: 04        .byte $04   ; 
- D 1 - I - 0x006B5A 01:AB4A: 04        .byte $04   ; 
- D 1 - I - 0x006B5B 01:AB4B: 04        .byte $04   ; 
- D 1 - I - 0x006B5C 01:AB4C: 04        .byte $04   ; 
- D 1 - I - 0x006B5D 01:AB4D: 04        .byte $04   ; 
- D 1 - I - 0x006B5E 01:AB4E: 04        .byte $04   ; 
- D 1 - I - 0x006B5F 01:AB4F: 37        .byte $37   ; 
- D 1 - I - 0x006B60 01:AB50: 2C        .byte $2C   ; 
- D 1 - I - 0x006B61 01:AB51: 04        .byte $04   ; 
- D 1 - I - 0x006B62 01:AB52: 61        .byte $61   ; 
off_AB53_0B:
- D 1 - I - 0x006B63 01:AB53: 6D        .byte $6D   ; 
- D 1 - I - 0x006B64 01:AB54: 6D        .byte $6D   ; 
- D 1 - I - 0x006B65 01:AB55: 6D        .byte $6D   ; 
- D 1 - I - 0x006B66 01:AB56: 67        .byte $67   ; 
- D 1 - I - 0x006B67 01:AB57: 04        .byte $04   ; 
- D 1 - I - 0x006B68 01:AB58: 04        .byte $04   ; 
- D 1 - I - 0x006B69 01:AB59: 17        .byte $17   ; 
- D 1 - I - 0x006B6A 01:AB5A: 04        .byte $04   ; 
- D 1 - I - 0x006B6B 01:AB5B: 04        .byte $04   ; 
- D 1 - I - 0x006B6C 01:AB5C: 04        .byte $04   ; 
- D 1 - I - 0x006B6D 01:AB5D: 04        .byte $04   ; 
- D 1 - I - 0x006B6E 01:AB5E: 04        .byte $04   ; 
- D 1 - I - 0x006B6F 01:AB5F: 37        .byte $37   ; 
- D 1 - I - 0x006B70 01:AB60: 2C        .byte $2C   ; 
- D 1 - I - 0x006B71 01:AB61: 04        .byte $04   ; 
- D 1 - I - 0x006B72 01:AB62: 04        .byte $04   ; 
- D 1 - I - 0x006B73 01:AB63: 16        .byte $16   ; 
- D 1 - I - 0x006B74 01:AB64: 04        .byte $04   ; 
- D 1 - I - 0x006B75 01:AB65: 04        .byte $04   ; 
- D 1 - I - 0x006B76 01:AB66: 04        .byte $04   ; 
- D 1 - I - 0x006B77 01:AB67: 17        .byte $17   ; 
- D 1 - I - 0x006B78 01:AB68: 04        .byte $04   ; 
- D 1 - I - 0x006B79 01:AB69: 04        .byte $04   ; 
- D 1 - I - 0x006B7A 01:AB6A: 04        .byte $04   ; 
- - - - - - 0x006B7B 01:AB6B: 04        .byte $04   ; 
- - - - - - 0x006B7C 01:AB6C: 04        .byte $04   ; 
- - - - - - 0x006B7D 01:AB6D: 04        .byte $04   ; 
- - - - - - 0x006B7E 01:AB6E: 04        .byte $04   ; 
- - - - - - 0x006B7F 01:AB6F: 04        .byte $04   ; 
- - - - - - 0x006B80 01:AB70: 16        .byte $16   ; 
- - - - - - 0x006B81 01:AB71: 04        .byte $04   ; 
- - - - - - 0x006B82 01:AB72: 04        .byte $04   ; 
off_AB73_05:
- - - - - - 0x006B83 01:AB73: 04        .byte $04   ; 
- - - - - - 0x006B84 01:AB74: 04        .byte $04   ; 
- - - - - - 0x006B85 01:AB75: 04        .byte $04   ; 
- - - - - - 0x006B86 01:AB76: 04        .byte $04   ; 
- - - - - - 0x006B87 01:AB77: 04        .byte $04   ; 
- - - - - - 0x006B88 01:AB78: 04        .byte $04   ; 
- - - - - - 0x006B89 01:AB79: 04        .byte $04   ; 
- - - - - - 0x006B8A 01:AB7A: 17        .byte $17   ; 
- - - - - - 0x006B8B 01:AB7B: 04        .byte $04   ; 
- D 1 - I - 0x006B8C 01:AB7C: 16        .byte $16   ; 
- D 1 - I - 0x006B8D 01:AB7D: 16        .byte $16   ; 
- D 1 - I - 0x006B8E 01:AB7E: 04        .byte $04   ; 
- D 1 - I - 0x006B8F 01:AB7F: 04        .byte $04   ; 
- D 1 - I - 0x006B90 01:AB80: 04        .byte $04   ; 
- D 1 - I - 0x006B91 01:AB81: 04        .byte $04   ; 
- D 1 - I - 0x006B92 01:AB82: 2B        .byte $2B   ; 
- D 1 - I - 0x006B93 01:AB83: 30        .byte $30   ; 
- D 1 - I - 0x006B94 01:AB84: 04        .byte $04   ; 
- D 1 - I - 0x006B95 01:AB85: 04        .byte $04   ; 
- D 1 - I - 0x006B96 01:AB86: 04        .byte $04   ; 
- D 1 - I - 0x006B97 01:AB87: 04        .byte $04   ; 
- D 1 - I - 0x006B98 01:AB88: 04        .byte $04   ; 
- D 1 - I - 0x006B99 01:AB89: 04        .byte $04   ; 
- D 1 - I - 0x006B9A 01:AB8A: 16        .byte $16   ; 
- D 1 - I - 0x006B9B 01:AB8B: 04        .byte $04   ; 
- D 1 - I - 0x006B9C 01:AB8C: 04        .byte $04   ; 
- D 1 - I - 0x006B9D 01:AB8D: 04        .byte $04   ; 
- D 1 - I - 0x006B9E 01:AB8E: 36        .byte $36   ; 
- D 1 - I - 0x006B9F 01:AB8F: 04        .byte $04   ; 
- D 1 - I - 0x006BA0 01:AB90: 49        .byte $49   ; 
- D 1 - I - 0x006BA1 01:AB91: 61        .byte $61   ; 
off_AB92_0C:
- D 1 - I - 0x006BA2 01:AB92: 6D        .byte $6D   ; 
- D 1 - I - 0x006BA3 01:AB93: EA        .byte $EA   ; 
- D 1 - I - 0x006BA4 01:AB94: E9        .byte $E9   ; 
- D 1 - I - 0x006BA5 01:AB95: E7        .byte $E7   ; 
- D 1 - I - 0x006BA6 01:AB96: 11        .byte $11   ; 
- D 1 - I - 0x006BA7 01:AB97: 11        .byte $11   ; 
- D 1 - I - 0x006BA8 01:AB98: 11        .byte $11   ; 
- D 1 - I - 0x006BA9 01:AB99: 11        .byte $11   ; 
- D 1 - I - 0x006BAA 01:AB9A: 11        .byte $11   ; 
- D 1 - I - 0x006BAB 01:AB9B: 11        .byte $11   ; 
- D 1 - I - 0x006BAC 01:AB9C: 11        .byte $11   ; 
- D 1 - I - 0x006BAD 01:AB9D: 11        .byte $11   ; 
- D 1 - I - 0x006BAE 01:AB9E: 11        .byte $11   ; 
- D 1 - I - 0x006BAF 01:AB9F: 31        .byte $31   ; 
- D 1 - I - 0x006BB0 01:ABA0: 04        .byte $04   ; 
- D 1 - I - 0x006BB1 01:ABA1: 04        .byte $04   ; 
- D 1 - I - 0x006BB2 01:ABA2: 04        .byte $04   ; 
- D 1 - I - 0x006BB3 01:ABA3: 04        .byte $04   ; 
- D 1 - I - 0x006BB4 01:ABA4: 04        .byte $04   ; 
- D 1 - I - 0x006BB5 01:ABA5: 04        .byte $04   ; 
- D 1 - I - 0x006BB6 01:ABA6: 04        .byte $04   ; 
- D 1 - I - 0x006BB7 01:ABA7: 04        .byte $04   ; 
- D 1 - I - 0x006BB8 01:ABA8: 04        .byte $04   ; 
off_ABA9_0B:
- D 1 - I - 0x006BB9 01:ABA9: 04        .byte $04   ; 
- - - - - - 0x006BBA 01:ABAA: 04        .byte $04   ; 
- - - - - - 0x006BBB 01:ABAB: 16        .byte $16   ; 
- - - - - - 0x006BBC 01:ABAC: 04        .byte $04   ; 
- - - - - - 0x006BBD 01:ABAD: 04        .byte $04   ; 
- - - - - - 0x006BBE 01:ABAE: 04        .byte $04   ; 
- - - - - - 0x006BBF 01:ABAF: 04        .byte $04   ; 
- - - - - - 0x006BC0 01:ABB0: 04        .byte $04   ; 
- - - - - - 0x006BC1 01:ABB1: 04        .byte $04   ; 
- D 1 - I - 0x006BC2 01:ABB2: 17        .byte $17   ; 
- D 1 - I - 0x006BC3 01:ABB3: 04        .byte $04   ; 
- D 1 - I - 0x006BC4 01:ABB4: 16        .byte $16   ; 
- D 1 - I - 0x006BC5 01:ABB5: 04        .byte $04   ; 
- D 1 - I - 0x006BC6 01:ABB6: 04        .byte $04   ; 
- D 1 - I - 0x006BC7 01:ABB7: 04        .byte $04   ; 
- D 1 - I - 0x006BC8 01:ABB8: 04        .byte $04   ; 
- D 1 - I - 0x006BC9 01:ABB9: 04        .byte $04   ; 
- D 1 - I - 0x006BCA 01:ABBA: 04        .byte $04   ; 
- D 1 - I - 0x006BCB 01:ABBB: 2B        .byte $2B   ; 
- D 1 - I - 0x006BCC 01:ABBC: 30        .byte $30   ; 
- D 1 - I - 0x006BCD 01:ABBD: 04        .byte $04   ; 
- D 1 - I - 0x006BCE 01:ABBE: 04        .byte $04   ; 
- D 1 - I - 0x006BCF 01:ABBF: 04        .byte $04   ; 
- D 1 - I - 0x006BD0 01:ABC0: 17        .byte $17   ; 
- D 1 - I - 0x006BD1 01:ABC1: 04        .byte $04   ; 
- D 1 - I - 0x006BD2 01:ABC2: 04        .byte $04   ; 
- D 1 - I - 0x006BD3 01:ABC3: 04        .byte $04   ; 
- D 1 - I - 0x006BD4 01:ABC4: 16        .byte $16   ; 
- D 1 - I - 0x006BD5 01:ABC5: 04        .byte $04   ; 
- D 1 - I - 0x006BD6 01:ABC6: 04        .byte $04   ; 
- D 1 - I - 0x006BD7 01:ABC7: 04        .byte $04   ; 
- D 1 - I - 0x006BD8 01:ABC8: 04        .byte $04   ; 
off_ABC9_06:
- - - - - - 0x006BD9 01:ABC9: 00        .byte $00   ; 
- - - - - - 0x006BDA 01:ABCA: 00        .byte $00   ; 
- - - - - - 0x006BDB 01:ABCB: 00        .byte $00   ; 
- - - - - - 0x006BDC 01:ABCC: 00        .byte $00   ; 
- - - - - - 0x006BDD 01:ABCD: 00        .byte $00   ; 
- - - - - - 0x006BDE 01:ABCE: 00        .byte $00   ; 
- - - - - - 0x006BDF 01:ABCF: 00        .byte $00   ; 
- - - - - - 0x006BE0 01:ABD0: 00        .byte $00   ; 
- - - - - - 0x006BE1 01:ABD1: 00        .byte $00   ; 
- D 1 - I - 0x006BE2 01:ABD2: 00        .byte $00   ; 
- D 1 - I - 0x006BE3 01:ABD3: 00        .byte $00   ; 
- D 1 - I - 0x006BE4 01:ABD4: 00        .byte $00   ; 
- D 1 - I - 0x006BE5 01:ABD5: 00        .byte $00   ; 
- D 1 - I - 0x006BE6 01:ABD6: 00        .byte $00   ; 
- D 1 - I - 0x006BE7 01:ABD7: 00        .byte $00   ; 
- D 1 - I - 0x006BE8 01:ABD8: 26        .byte $26   ; 
- D 1 - I - 0x006BE9 01:ABD9: 12        .byte $12   ; 
- D 1 - I - 0x006BEA 01:ABDA: 12        .byte $12   ; 
- D 1 - I - 0x006BEB 01:ABDB: 12        .byte $12   ; 
- D 1 - I - 0x006BEC 01:ABDC: 12        .byte $12   ; 
- D 1 - I - 0x006BED 01:ABDD: 12        .byte $12   ; 
- D 1 - I - 0x006BEE 01:ABDE: 12        .byte $12   ; 
- D 1 - I - 0x006BEF 01:ABDF: 12        .byte $12   ; 
- D 1 - I - 0x006BF0 01:ABE0: 12        .byte $12   ; 
- D 1 - I - 0x006BF1 01:ABE1: 12        .byte $12   ; 
- D 1 - I - 0x006BF2 01:ABE2: 12        .byte $12   ; 
- D 1 - I - 0x006BF3 01:ABE3: 12        .byte $12   ; 
- D 1 - I - 0x006BF4 01:ABE4: 8C        .byte $8C   ; 
- D 1 - I - 0x006BF5 01:ABE5: 40        .byte $40   ; 
- D 1 - I - 0x006BF6 01:ABE6: 54        .byte $54   ; 
- D 1 - I - 0x006BF7 01:ABE7: 7E        .byte $7E   ; 
off_ABE8_0E:
- D 1 - I - 0x006BF8 01:ABE8: 6C        .byte $6C   ; 
- D 1 - I - 0x006BF9 01:ABE9: F0        .byte $F0   ; 
- D 1 - I - 0x006BFA 01:ABEA: 6C        .byte $6C   ; 
- D 1 - I - 0x006BFB 01:ABEB: 68        .byte $68   ; 
- D 1 - I - 0x006BFC 01:ABEC: 4E        .byte $4E   ; 
- D 1 - I - 0x006BFD 01:ABED: 00        .byte $00   ; 
- D 1 - I - 0x006BFE 01:ABEE: 00        .byte $00   ; 
- D 1 - I - 0x006BFF 01:ABEF: 00        .byte $00   ; 
- D 1 - I - 0x006C00 01:ABF0: 00        .byte $00   ; 
- D 1 - I - 0x006C01 01:ABF1: 15        .byte $15   ; 
- D 1 - I - 0x006C02 01:ABF2: 00        .byte $00   ; 
- D 1 - I - 0x006C03 01:ABF3: 00        .byte $00   ; 
- D 1 - I - 0x006C04 01:ABF4: 00        .byte $00   ; 
- D 1 - I - 0x006C05 01:ABF5: 23        .byte $23   ; 
- D 1 - I - 0x006C06 01:ABF6: B0        .byte $B0   ; 
- D 1 - I - 0x006C07 01:ABF7: B1        .byte $B1   ; 
- D 1 - I - 0x006C08 01:ABF8: B2        .byte $B2   ; 
- D 1 - I - 0x006C09 01:ABF9: B3        .byte $B3   ; 
- D 1 - I - 0x006C0A 01:ABFA: B4        .byte $B4   ; 
- D 1 - I - 0x006C0B 01:ABFB: 00        .byte $00   ; 
- D 1 - I - 0x006C0C 01:ABFC: 00        .byte $00   ; 
- D 1 - I - 0x006C0D 01:ABFD: 00        .byte $00   ; 
- D 1 - I - 0x006C0E 01:ABFE: 00        .byte $00   ; 
- D 1 - I - 0x006C0F 01:ABFF: 00        .byte $00   ; 
- - - - - - 0x006C10 01:AC00: 00        .byte $00   ; 
- - - - - - 0x006C11 01:AC01: 00        .byte $00   ; 
- - - - - - 0x006C12 01:AC02: 15        .byte $15   ; 
- - - - - - 0x006C13 01:AC03: 00        .byte $00   ; 
- - - - - - 0x006C14 01:AC04: 15        .byte $15   ; 
- - - - - - 0x006C15 01:AC05: 00        .byte $00   ; 
- - - - - - 0x006C16 01:AC06: 00        .byte $00   ; 
- - - - - - 0x006C17 01:AC07: 00        .byte $00   ; 
off_AC08_08:
- - - - - - 0x006C18 01:AC08: 00        .byte $00   ; 
- - - - - - 0x006C19 01:AC09: 00        .byte $00   ; 
- - - - - - 0x006C1A 01:AC0A: 00        .byte $00   ; 
- - - - - - 0x006C1B 01:AC0B: 00        .byte $00   ; 
- - - - - - 0x006C1C 01:AC0C: 00        .byte $00   ; 
- - - - - - 0x006C1D 01:AC0D: 00        .byte $00   ; 
- - - - - - 0x006C1E 01:AC0E: 00        .byte $00   ; 
- - - - - - 0x006C1F 01:AC0F: 00        .byte $00   ; 
- - - - - - 0x006C20 01:AC10: 00        .byte $00   ; 
- D 1 - I - 0x006C21 01:AC11: 00        .byte $00   ; 
- D 1 - I - 0x006C22 01:AC12: 00        .byte $00   ; 
- D 1 - I - 0x006C23 01:AC13: 00        .byte $00   ; 
- D 1 - I - 0x006C24 01:AC14: 00        .byte $00   ; 
- D 1 - I - 0x006C25 01:AC15: 00        .byte $00   ; 
- D 1 - I - 0x006C26 01:AC16: 00        .byte $00   ; 
- D 1 - I - 0x006C27 01:AC17: 24        .byte $24   ; 
- D 1 - I - 0x006C28 01:AC18: 00        .byte $00   ; 
- D 1 - I - 0x006C29 01:AC19: 00        .byte $00   ; 
- D 1 - I - 0x006C2A 01:AC1A: 00        .byte $00   ; 
- D 1 - I - 0x006C2B 01:AC1B: 14        .byte $14   ; 
- D 1 - I - 0x006C2C 01:AC1C: 00        .byte $00   ; 
- D 1 - I - 0x006C2D 01:AC1D: 00        .byte $00   ; 
- D 1 - I - 0x006C2E 01:AC1E: 00        .byte $00   ; 
- D 1 - I - 0x006C2F 01:AC1F: 00        .byte $00   ; 
- D 1 - I - 0x006C30 01:AC20: 40        .byte $40   ; 
- D 1 - I - 0x006C31 01:AC21: 54        .byte $54   ; 
- D 1 - I - 0x006C32 01:AC22: 54        .byte $54   ; 
- D 1 - I - 0x006C33 01:AC23: 54        .byte $54   ; 
- D 1 - I - 0x006C34 01:AC24: 7E        .byte $7E   ; 
- D 1 - I - 0x006C35 01:AC25: 6E        .byte $6E   ; 
off_AC26_06:
- D 1 - I - 0x006C36 01:AC26: 6C        .byte $6C   ; 
- D 1 - I - 0x006C37 01:AC27: 6C        .byte $6C   ; 
- D 1 - I - 0x006C38 01:AC28: 6C        .byte $6C   ; 
- D 1 - I - 0x006C39 01:AC29: 6C        .byte $6C   ; 
- D 1 - I - 0x006C3A 01:AC2A: EB        .byte $EB   ; 
- D 1 - I - 0x006C3B 01:AC2B: 65        .byte $65   ; 
- D 1 - I - 0x006C3C 01:AC2C: 12        .byte $12   ; 
- D 1 - I - 0x006C3D 01:AC2D: 12        .byte $12   ; 
- D 1 - I - 0x006C3E 01:AC2E: 12        .byte $12   ; 
- D 1 - I - 0x006C3F 01:AC2F: 12        .byte $12   ; 
- D 1 - I - 0x006C40 01:AC30: 12        .byte $12   ; 
- D 1 - I - 0x006C41 01:AC31: 12        .byte $12   ; 
- D 1 - I - 0x006C42 01:AC32: 12        .byte $12   ; 
- D 1 - I - 0x006C43 01:AC33: 12        .byte $12   ; 
- D 1 - I - 0x006C44 01:AC34: 12        .byte $12   ; 
- D 1 - I - 0x006C45 01:AC35: 12        .byte $12   ; 
- D 1 - I - 0x006C46 01:AC36: 21        .byte $21   ; 
- D 1 - I - 0x006C47 01:AC37: 00        .byte $00   ; 
- D 1 - I - 0x006C48 01:AC38: 00        .byte $00   ; 
- D 1 - I - 0x006C49 01:AC39: 00        .byte $00   ; 
- D 1 - I - 0x006C4A 01:AC3A: 00        .byte $00   ; 
- D 1 - I - 0x006C4B 01:AC3B: 00        .byte $00   ; 
- D 1 - I - 0x006C4C 01:AC3C: 00        .byte $00   ; 
- D 1 - I - 0x006C4D 01:AC3D: 00        .byte $00   ; 
- - - - - - 0x006C4E 01:AC3E: 14        .byte $14   ; 
- - - - - - 0x006C4F 01:AC3F: 00        .byte $00   ; 
- - - - - - 0x006C50 01:AC40: 00        .byte $00   ; 
- - - - - - 0x006C51 01:AC41: 00        .byte $00   ; 
- - - - - - 0x006C52 01:AC42: 00        .byte $00   ; 
- - - - - - 0x006C53 01:AC43: 15        .byte $15   ; 
- - - - - - 0x006C54 01:AC44: 00        .byte $00   ; 
- - - - - - 0x006C55 01:AC45: 00        .byte $00   ; 
off_AC46_0B:
- - - - - - 0x006C56 01:AC46: 04        .byte $04   ; 
- - - - - - 0x006C57 01:AC47: 04        .byte $04   ; 
- - - - - - 0x006C58 01:AC48: 04        .byte $04   ; 
- - - - - - 0x006C59 01:AC49: 04        .byte $04   ; 
- - - - - - 0x006C5A 01:AC4A: 04        .byte $04   ; 
- - - - - - 0x006C5B 01:AC4B: 04        .byte $04   ; 
- - - - - - 0x006C5C 01:AC4C: 04        .byte $04   ; 
- - - - - - 0x006C5D 01:AC4D: 04        .byte $04   ; 
- - - - - - 0x006C5E 01:AC4E: 04        .byte $04   ; 
- D 1 - I - 0x006C5F 01:AC4F: 04        .byte $04   ; 
- D 1 - I - 0x006C60 01:AC50: 04        .byte $04   ; 
- D 1 - I - 0x006C61 01:AC51: 04        .byte $04   ; 
- D 1 - I - 0x006C62 01:AC52: 04        .byte $04   ; 
- D 1 - I - 0x006C63 01:AC53: 04        .byte $04   ; 
- D 1 - I - 0x006C64 01:AC54: 04        .byte $04   ; 
- D 1 - I - 0x006C65 01:AC55: 31        .byte $31   ; 
- D 1 - I - 0x006C66 01:AC56: 04        .byte $04   ; 
- D 1 - I - 0x006C67 01:AC57: 92        .byte $92   ; 
- D 1 - I - 0x006C68 01:AC58: 04        .byte $04   ; 
- D 1 - I - 0x006C69 01:AC59: 04        .byte $04   ; 
- D 1 - I - 0x006C6A 01:AC5A: 04        .byte $04   ; 
- D 1 - I - 0x006C6B 01:AC5B: 04        .byte $04   ; 
- D 1 - I - 0x006C6C 01:AC5C: 04        .byte $04   ; 
- D 1 - I - 0x006C6D 01:AC5D: 04        .byte $04   ; 
- D 1 - I - 0x006C6E 01:AC5E: 61        .byte $61   ; 
- D 1 - I - 0x006C6F 01:AC5F: 6D        .byte $6D   ; 
- D 1 - I - 0x006C70 01:AC60: 6D        .byte $6D   ; 
- D 1 - I - 0x006C71 01:AC61: 79        .byte $79   ; 
- D 1 - I - 0x006C72 01:AC62: 5E        .byte $5E   ; 
- D 1 - I - 0x006C73 01:AC63: 47        .byte $47   ; 
- D 1 - I - 0x006C74 01:AC64: 04        .byte $04   ; 
- D 1 - I - 0x006C75 01:AC65: 04        .byte $04   ; 
off_AC66_0C:
- - - - - - 0x006C76 01:AC66: 00        .byte $00   ; 
- - - - - - 0x006C77 01:AC67: 00        .byte $00   ; 
- - - - - - 0x006C78 01:AC68: 00        .byte $00   ; 
- - - - - - 0x006C79 01:AC69: 00        .byte $00   ; 
- - - - - - 0x006C7A 01:AC6A: 00        .byte $00   ; 
- - - - - - 0x006C7B 01:AC6B: 00        .byte $00   ; 
- - - - - - 0x006C7C 01:AC6C: 00        .byte $00   ; 
- - - - - - 0x006C7D 01:AC6D: 00        .byte $00   ; 
- - - - - - 0x006C7E 01:AC6E: 00        .byte $00   ; 
- D 1 - I - 0x006C7F 01:AC6F: 00        .byte $00   ; 
- D 1 - I - 0x006C80 01:AC70: 00        .byte $00   ; 
- D 1 - I - 0x006C81 01:AC71: 00        .byte $00   ; 
- D 1 - I - 0x006C82 01:AC72: 00        .byte $00   ; 
- D 1 - I - 0x006C83 01:AC73: 00        .byte $00   ; 
- D 1 - I - 0x006C84 01:AC74: 27        .byte $27   ; 
- D 1 - I - 0x006C85 01:AC75: 1C        .byte $1C   ; 
- D 1 - I - 0x006C86 01:AC76: 00        .byte $00   ; 
- D 1 - I - 0x006C87 01:AC77: 93        .byte $93   ; 
- D 1 - I - 0x006C88 01:AC78: 94        .byte $94   ; 
- D 1 - I - 0x006C89 01:AC79: 00        .byte $00   ; 
- D 1 - I - 0x006C8A 01:AC7A: 00        .byte $00   ; 
- D 1 - I - 0x006C8B 01:AC7B: 00        .byte $00   ; 
- D 1 - I - 0x006C8C 01:AC7C: 00        .byte $00   ; 
- D 1 - I - 0x006C8D 01:AC7D: 00        .byte $00   ; 
- D 1 - I - 0x006C8E 01:AC7E: 60        .byte $60   ; 
- D 1 - I - 0x006C8F 01:AC7F: 6F        .byte $6F   ; 
- D 1 - I - 0x006C90 01:AC80: 6C        .byte $6C   ; 
- D 1 - I - 0x006C91 01:AC81: 68        .byte $68   ; 
- D 1 - I - 0x006C92 01:AC82: 4E        .byte $4E   ; 
- D 1 - I - 0x006C93 01:AC83: 00        .byte $00   ; 
- D 1 - I - 0x006C94 01:AC84: 00        .byte $00   ; 
- D 1 - I - 0x006C95 01:AC85: 00        .byte $00   ; 
off_AC86_0D:
- - - - - - 0x006C96 01:AC86: 00        .byte $00   ; 
- - - - - - 0x006C97 01:AC87: 00        .byte $00   ; 
- - - - - - 0x006C98 01:AC88: 00        .byte $00   ; 
- - - - - - 0x006C99 01:AC89: 00        .byte $00   ; 
- - - - - - 0x006C9A 01:AC8A: 00        .byte $00   ; 
- - - - - - 0x006C9B 01:AC8B: 00        .byte $00   ; 
- - - - - - 0x006C9C 01:AC8C: 00        .byte $00   ; 
- - - - - - 0x006C9D 01:AC8D: 00        .byte $00   ; 
- - - - - - 0x006C9E 01:AC8E: 00        .byte $00   ; 
- D 1 - I - 0x006C9F 01:AC8F: 14        .byte $14   ; 
- D 1 - I - 0x006CA0 01:AC90: 00        .byte $00   ; 
- D 1 - I - 0x006CA1 01:AC91: 00        .byte $00   ; 
- D 1 - I - 0x006CA2 01:AC92: 14        .byte $14   ; 
- D 1 - I - 0x006CA3 01:AC93: 00        .byte $00   ; 
- D 1 - I - 0x006CA4 01:AC94: 8D        .byte $8D   ; 
- D 1 - I - 0x006CA5 01:AC95: 12        .byte $12   ; 
- D 1 - I - 0x006CA6 01:AC96: 12        .byte $12   ; 
- D 1 - I - 0x006CA7 01:AC97: 12        .byte $12   ; 
- D 1 - I - 0x006CA8 01:AC98: 12        .byte $12   ; 
- D 1 - I - 0x006CA9 01:AC99: 12        .byte $12   ; 
- D 1 - I - 0x006CAA 01:AC9A: 12        .byte $12   ; 
- D 1 - I - 0x006CAB 01:AC9B: 12        .byte $12   ; 
- D 1 - I - 0x006CAC 01:AC9C: 12        .byte $12   ; 
- D 1 - I - 0x006CAD 01:AC9D: 12        .byte $12   ; 
- D 1 - I - 0x006CAE 01:AC9E: 63        .byte $63   ; 
- D 1 - I - 0x006CAF 01:AC9F: 77        .byte $77   ; 
- D 1 - I - 0x006CB0 01:ACA0: 77        .byte $77   ; 
- D 1 - I - 0x006CB1 01:ACA1: E6        .byte $E6   ; 
off_ACA2_0D:
- D 1 - I - 0x006CB2 01:ACA2: 12        .byte $12   ; 
- D 1 - I - 0x006CB3 01:ACA3: 12        .byte $12   ; 
- D 1 - I - 0x006CB4 01:ACA4: 12        .byte $12   ; 
- D 1 - I - 0x006CB5 01:ACA5: 12        .byte $12   ; 
- D 1 - I - 0x006CB6 01:ACA6: 12        .byte $12   ; 
- D 1 - I - 0x006CB7 01:ACA7: 12        .byte $12   ; 
- D 1 - I - 0x006CB8 01:ACA8: 12        .byte $12   ; 
- D 1 - I - 0x006CB9 01:ACA9: 12        .byte $12   ; 
- D 1 - I - 0x006CBA 01:ACAA: 12        .byte $12   ; 
- D 1 - I - 0x006CBB 01:ACAB: 12        .byte $12   ; 
- D 1 - I - 0x006CBC 01:ACAC: 12        .byte $12   ; 
- D 1 - I - 0x006CBD 01:ACAD: 12        .byte $12   ; 
- D 1 - I - 0x006CBE 01:ACAE: 12        .byte $12   ; 
- D 1 - I - 0x006CBF 01:ACAF: 12        .byte $12   ; 
- D 1 - I - 0x006CC0 01:ACB0: 12        .byte $12   ; 
- D 1 - I - 0x006CC1 01:ACB1: 12        .byte $12   ; 
- D 1 - I - 0x006CC2 01:ACB2: 12        .byte $12   ; 
- D 1 - I - 0x006CC3 01:ACB3: 8B        .byte $8B   ; 
- D 1 - I - 0x006CC4 01:ACB4: 00        .byte $00   ; 
- D 1 - I - 0x006CC5 01:ACB5: 00        .byte $00   ; 
- D 1 - I - 0x006CC6 01:ACB6: 00        .byte $00   ; 
- D 1 - I - 0x006CC7 01:ACB7: 00        .byte $00   ; 
- D 1 - I - 0x006CC8 01:ACB8: 00        .byte $00   ; 
- D 1 - I - 0x006CC9 01:ACB9: 00        .byte $00   ; 
- - - - - - 0x006CCA 01:ACBA: 00        .byte $00   ; 
- - - - - - 0x006CCB 01:ACBB: 00        .byte $00   ; 
- - - - - - 0x006CCC 01:ACBC: 00        .byte $00   ; 
- - - - - - 0x006CCD 01:ACBD: 00        .byte $00   ; 
- - - - - - 0x006CCE 01:ACBE: 00        .byte $00   ; 
- - - - - - 0x006CCF 01:ACBF: 00        .byte $00   ; 
- - - - - - 0x006CD0 01:ACC0: 00        .byte $00   ; 
- - - - - - 0x006CD1 01:ACC1: 00        .byte $00   ; 
off_ACC2_0E:
- - - - - - 0x006CD2 01:ACC2: 00        .byte $00   ; 
- - - - - - 0x006CD3 01:ACC3: 00        .byte $00   ; 
- - - - - - 0x006CD4 01:ACC4: 00        .byte $00   ; 
- - - - - - 0x006CD5 01:ACC5: 00        .byte $00   ; 
- - - - - - 0x006CD6 01:ACC6: 00        .byte $00   ; 
- - - - - - 0x006CD7 01:ACC7: 00        .byte $00   ; 
- - - - - - 0x006CD8 01:ACC8: 00        .byte $00   ; 
- - - - - - 0x006CD9 01:ACC9: 00        .byte $00   ; 
- - - - - - 0x006CDA 01:ACCA: 00        .byte $00   ; 
- D 1 - I - 0x006CDB 01:ACCB: 00        .byte $00   ; 
- D 1 - I - 0x006CDC 01:ACCC: 00        .byte $00   ; 
- D 1 - I - 0x006CDD 01:ACCD: 00        .byte $00   ; 
- D 1 - I - 0x006CDE 01:ACCE: 00        .byte $00   ; 
- D 1 - I - 0x006CDF 01:ACCF: 00        .byte $00   ; 
- D 1 - I - 0x006CE0 01:ACD0: 00        .byte $00   ; 
- D 1 - I - 0x006CE1 01:ACD1: 00        .byte $00   ; 
- D 1 - I - 0x006CE2 01:ACD2: 00        .byte $00   ; 
- D 1 - I - 0x006CE3 01:ACD3: 14        .byte $14   ; 
- D 1 - I - 0x006CE4 01:ACD4: 00        .byte $00   ; 
- D 1 - I - 0x006CE5 01:ACD5: 00        .byte $00   ; 
- D 1 - I - 0x006CE6 01:ACD6: 00        .byte $00   ; 
- D 1 - I - 0x006CE7 01:ACD7: 00        .byte $00   ; 
- D 1 - I - 0x006CE8 01:ACD8: 00        .byte $00   ; 
- D 1 - I - 0x006CE9 01:ACD9: 00        .byte $00   ; 
- D 1 - I - 0x006CEA 01:ACDA: 44        .byte $44   ; 
- D 1 - I - 0x006CEB 01:ACDB: 5C        .byte $5C   ; 
- D 1 - I - 0x006CEC 01:ACDC: 5D        .byte $5D   ; 
- D 1 - I - 0x006CED 01:ACDD: 46        .byte $46   ; 
- D 1 - I - 0x006CEE 01:ACDE: 00        .byte $00   ; 
- D 1 - I - 0x006CEF 01:ACDF: 15        .byte $15   ; 
- D 1 - I - 0x006CF0 01:ACE0: 00        .byte $00   ; 
- D 1 - I - 0x006CF1 01:ACE1: 00        .byte $00   ; 
off_ACE2_04:
- - - - - - 0x006CF2 01:ACE2: 00        .byte $00   ; 
- - - - - - 0x006CF3 01:ACE3: 00        .byte $00   ; 
- D 1 - I - 0x006CF4 01:ACE4: 00        .byte $00   ; 
- D 1 - I - 0x006CF5 01:ACE5: 00        .byte $00   ; 
- D 1 - I - 0x006CF6 01:ACE6: 00        .byte $00   ; 
- D 1 - I - 0x006CF7 01:ACE7: 00        .byte $00   ; 
- D 1 - I - 0x006CF8 01:ACE8: 00        .byte $00   ; 
- D 1 - I - 0x006CF9 01:ACE9: 40        .byte $40   ; 
- - - - - - 0x006CFA 01:ACEA: 00        .byte $00   ; 
- - - - - - 0x006CFB 01:ACEB: 00        .byte $00   ; 
- D 1 - I - 0x006CFC 01:ACEC: 00        .byte $00   ; 
- D 1 - I - 0x006CFD 01:ACED: 00        .byte $00   ; 
- D 1 - I - 0x006CFE 01:ACEE: 00        .byte $00   ; 
- D 1 - I - 0x006CFF 01:ACEF: 00        .byte $00   ; 
- D 1 - I - 0x006D00 01:ACF0: 40        .byte $40   ; 
- D 1 - I - 0x006D01 01:ACF1: 55        .byte $55   ; 
- - - - - - 0x006D02 01:ACF2: 00        .byte $00   ; 
- - - - - - 0x006D03 01:ACF3: 00        .byte $00   ; 
- D 1 - I - 0x006D04 01:ACF4: 00        .byte $00   ; 
- D 1 - I - 0x006D05 01:ACF5: 00        .byte $00   ; 
- D 1 - I - 0x006D06 01:ACF6: 00        .byte $00   ; 
- D 1 - I - 0x006D07 01:ACF7: 00        .byte $00   ; 
- D 1 - I - 0x006D08 01:ACF8: 55        .byte $55   ; 
- D 1 - I - 0x006D09 01:ACF9: 55        .byte $55   ; 
- - - - - - 0x006D0A 01:ACFA: 00        .byte $00   ; 
- - - - - - 0x006D0B 01:ACFB: 00        .byte $00   ; 
- D 1 - I - 0x006D0C 01:ACFC: 00        .byte $00   ; 
- D 1 - I - 0x006D0D 01:ACFD: 00        .byte $00   ; 
- D 1 - I - 0x006D0E 01:ACFE: 00        .byte $00   ; 
- D 1 - I - 0x006D0F 01:ACFF: 00        .byte $00   ; 
- D 1 - I - 0x006D10 01:AD00: 55        .byte $55   ; 
- D 1 - I - 0x006D11 01:AD01: 01        .byte $01   ; 
- - - - - - 0x006D12 01:AD02: 00        .byte $00   ; 
- - - - - - 0x006D13 01:AD03: 00        .byte $00   ; 
- - - - - - 0x006D14 01:AD04: 00        .byte $00   ; 
- - - - - - 0x006D15 01:AD05: 00        .byte $00   ; 
- - - - - - 0x006D16 01:AD06: 00        .byte $00   ; 
- - - - - - 0x006D17 01:AD07: 00        .byte $00   ; 
- - - - - - 0x006D18 01:AD08: 00        .byte $00   ; 
- - - - - - 0x006D19 01:AD09: 00        .byte $00   ; 
- - - - - - 0x006D1A 01:AD0A: 00        .byte $00   ; 
- - - - - - 0x006D1B 01:AD0B: 00        .byte $00   ; 
- - - - - - 0x006D1C 01:AD0C: 00        .byte $00   ; 
- - - - - - 0x006D1D 01:AD0D: 00        .byte $00   ; 
- - - - - - 0x006D1E 01:AD0E: 00        .byte $00   ; 
- - - - - - 0x006D1F 01:AD0F: 00        .byte $00   ; 
- - - - - - 0x006D20 01:AD10: 00        .byte $00   ; 
- - - - - - 0x006D21 01:AD11: 00        .byte $00   ; 
- - - - - - 0x006D22 01:AD12: 00        .byte $00   ; 
- - - - - - 0x006D23 01:AD13: 00        .byte $00   ; 
- - - - - - 0x006D24 01:AD14: 00        .byte $00   ; 
- - - - - - 0x006D25 01:AD15: 00        .byte $00   ; 
- - - - - - 0x006D26 01:AD16: 00        .byte $00   ; 
- - - - - - 0x006D27 01:AD17: 00        .byte $00   ; 
- - - - - - 0x006D28 01:AD18: 00        .byte $00   ; 
- - - - - - 0x006D29 01:AD19: 00        .byte $00   ; 
- - - - - - 0x006D2A 01:AD1A: 00        .byte $00   ; 
- - - - - - 0x006D2B 01:AD1B: 00        .byte $00   ; 
- - - - - - 0x006D2C 01:AD1C: 00        .byte $00   ; 
- - - - - - 0x006D2D 01:AD1D: 00        .byte $00   ; 
- - - - - - 0x006D2E 01:AD1E: 00        .byte $00   ; 
- - - - - - 0x006D2F 01:AD1F: 00        .byte $00   ; 
- - - - - - 0x006D30 01:AD20: 00        .byte $00   ; 
- - - - - - 0x006D31 01:AD21: 00        .byte $00   ; 
off_AD22_00:
- D 1 - I - 0x006D32 01:AD22: 00        .byte $00   ; 
- D 1 - I - 0x006D33 01:AD23: 00        .byte $00   ; 
- D 1 - I - 0x006D34 01:AD24: 40        .byte $40   ; 
- D 1 - I - 0x006D35 01:AD25: 54        .byte $54   ; 
- D 1 - I - 0x006D36 01:AD26: 54        .byte $54   ; 
- D 1 - I - 0x006D37 01:AD27: 42        .byte $42   ; 
- D 1 - I - 0x006D38 01:AD28: 00        .byte $00   ; 
- D 1 - I - 0x006D39 01:AD29: 00        .byte $00   ; 
- D 1 - I - 0x006D3A 01:AD2A: 00        .byte $00   ; 
- D 1 - I - 0x006D3B 01:AD2B: 00        .byte $00   ; 
- D 1 - I - 0x006D3C 01:AD2C: 00        .byte $00   ; 
- D 1 - I - 0x006D3D 01:AD2D: 00        .byte $00   ; 
- D 1 - I - 0x006D3E 01:AD2E: 00        .byte $00   ; 
- D 1 - I - 0x006D3F 01:AD2F: 00        .byte $00   ; 
- D 1 - I - 0x006D40 01:AD30: 60        .byte $60   ; 
- D 1 - I - 0x006D41 01:AD31: 6C        .byte $6C   ; 
- D 1 - I - 0x006D42 01:AD32: 6C        .byte $6C   ; 
- D 1 - I - 0x006D43 01:AD33: 6E        .byte $6E   ; 
- D 1 - I - 0x006D44 01:AD34: 6C        .byte $6C   ; 
- D 1 - I - 0x006D45 01:AD35: 6C        .byte $6C   ; 
- D 1 - I - 0x006D46 01:AD36: 6C        .byte $6C   ; 
- D 1 - I - 0x006D47 01:AD37: 66        .byte $66   ; 
- D 1 - I - 0x006D48 01:AD38: 00        .byte $00   ; 
- D 1 - I - 0x006D49 01:AD39: 00        .byte $00   ; 
- D 1 - I - 0x006D4A 01:AD3A: 00        .byte $00   ; 
- D 1 - I - 0x006D4B 01:AD3B: 00        .byte $00   ; 
- D 1 - I - 0x006D4C 01:AD3C: 00        .byte $00   ; 
- D 1 - I - 0x006D4D 01:AD3D: 00        .byte $00   ; 
- D 1 - I - 0x006D4E 01:AD3E: 14        .byte $14   ; 
- D 1 - I - 0x006D4F 01:AD3F: 00        .byte $00   ; 
- D 1 - I - 0x006D50 01:AD40: 00        .byte $00   ; 
- D 1 - I - 0x006D51 01:AD41: 1B        .byte $1B   ; 
off_AD42_03:
- D 1 - I - 0x006D52 01:AD42: 6D        .byte $6D   ; 
- D 1 - I - 0x006D53 01:AD43: 6D        .byte $6D   ; 
- D 1 - I - 0x006D54 01:AD44: 6D        .byte $6D   ; 
- D 1 - I - 0x006D55 01:AD45: 6D        .byte $6D   ; 
- D 1 - I - 0x006D56 01:AD46: 6D        .byte $6D   ; 
- D 1 - I - 0x006D57 01:AD47: 6A        .byte $6A   ; 
- D 1 - I - 0x006D58 01:AD48: 04        .byte $04   ; 
- D 1 - I - 0x006D59 01:AD49: 04        .byte $04   ; 
- D 1 - I - 0x006D5A 01:AD4A: 04        .byte $04   ; 
- D 1 - I - 0x006D5B 01:AD4B: 04        .byte $04   ; 
- D 1 - I - 0x006D5C 01:AD4C: 04        .byte $04   ; 
- D 1 - I - 0x006D5D 01:AD4D: 04        .byte $04   ; 
- D 1 - I - 0x006D5E 01:AD4E: 61        .byte $61   ; 
- D 1 - I - 0x006D5F 01:AD4F: 6D        .byte $6D   ; 
- D 1 - I - 0x006D60 01:AD50: 70        .byte $70   ; 
- D 1 - I - 0x006D61 01:AD51: 6D        .byte $6D   ; 
- D 1 - I - 0x006D62 01:AD52: 6D        .byte $6D   ; 
- D 1 - I - 0x006D63 01:AD53: 79        .byte $79   ; 
- D 1 - I - 0x006D64 01:AD54: 5B        .byte $5B   ; 
- D 1 - I - 0x006D65 01:AD55: 5E        .byte $5E   ; 
- D 1 - I - 0x006D66 01:AD56: 5F        .byte $5F   ; 
- D 1 - I - 0x006D67 01:AD57: 47        .byte $47   ; 
- D 1 - I - 0x006D68 01:AD58: 04        .byte $04   ; 
- D 1 - I - 0x006D69 01:AD59: 04        .byte $04   ; 
- D 1 - I - 0x006D6A 01:AD5A: 04        .byte $04   ; 
- D 1 - I - 0x006D6B 01:AD5B: 04        .byte $04   ; 
- D 1 - I - 0x006D6C 01:AD5C: 04        .byte $04   ; 
- D 1 - I - 0x006D6D 01:AD5D: 04        .byte $04   ; 
- D 1 - I - 0x006D6E 01:AD5E: 04        .byte $04   ; 
- D 1 - I - 0x006D6F 01:AD5F: 04        .byte $04   ; 
- D 1 - I - 0x006D70 01:AD60: 04        .byte $04   ; 
- D 1 - I - 0x006D71 01:AD61: 2B        .byte $2B   ; 
off_AD62_05:
- D 1 - I - 0x006D72 01:AD62: 6D        .byte $6D   ; 
- D 1 - I - 0x006D73 01:AD63: 6D        .byte $6D   ; 
- D 1 - I - 0x006D74 01:AD64: 6D        .byte $6D   ; 
- D 1 - I - 0x006D75 01:AD65: 79        .byte $79   ; 
- D 1 - I - 0x006D76 01:AD66: 5E        .byte $5E   ; 
- D 1 - I - 0x006D77 01:AD67: 47        .byte $47   ; 
- D 1 - I - 0x006D78 01:AD68: 04        .byte $04   ; 
- D 1 - I - 0x006D79 01:AD69: 04        .byte $04   ; 
- D 1 - I - 0x006D7A 01:AD6A: 04        .byte $04   ; 
- D 1 - I - 0x006D7B 01:AD6B: 04        .byte $04   ; 
- D 1 - I - 0x006D7C 01:AD6C: 04        .byte $04   ; 
- D 1 - I - 0x006D7D 01:AD6D: 04        .byte $04   ; 
- D 1 - I - 0x006D7E 01:AD6E: 45        .byte $45   ; 
- D 1 - I - 0x006D7F 01:AD6F: 5B        .byte $5B   ; 
- D 1 - I - 0x006D80 01:AD70: 5B        .byte $5B   ; 
- D 1 - I - 0x006D81 01:AD71: 5E        .byte $5E   ; 
- D 1 - I - 0x006D82 01:AD72: 5F        .byte $5F   ; 
- D 1 - I - 0x006D83 01:AD73: 47        .byte $47   ; 
- D 1 - I - 0x006D84 01:AD74: 04        .byte $04   ; 
- D 1 - I - 0x006D85 01:AD75: 04        .byte $04   ; 
- D 1 - I - 0x006D86 01:AD76: 04        .byte $04   ; 
- D 1 - I - 0x006D87 01:AD77: 04        .byte $04   ; 
- D 1 - I - 0x006D88 01:AD78: 04        .byte $04   ; 
- D 1 - I - 0x006D89 01:AD79: 04        .byte $04   ; 
- D 1 - I - 0x006D8A 01:AD7A: 04        .byte $04   ; 
- D 1 - I - 0x006D8B 01:AD7B: 16        .byte $16   ; 
- D 1 - I - 0x006D8C 01:AD7C: 04        .byte $04   ; 
- D 1 - I - 0x006D8D 01:AD7D: 04        .byte $04   ; 
- D 1 - I - 0x006D8E 01:AD7E: 04        .byte $04   ; 
- D 1 - I - 0x006D8F 01:AD7F: 04        .byte $04   ; 
- D 1 - I - 0x006D90 01:AD80: 04        .byte $04   ; 
- D 1 - I - 0x006D91 01:AD81: 2B        .byte $2B   ; 
off_AD82_05:
- D 1 - I - 0x006D92 01:AD82: 55        .byte $55   ; 
- D 1 - I - 0x006D93 01:AD83: 11        .byte $11   ; 
- D 1 - I - 0x006D94 01:AD84: 00        .byte $00   ; 
- D 1 - I - 0x006D95 01:AD85: 55        .byte $55   ; 
- D 1 - I - 0x006D96 01:AD86: 55        .byte $55   ; 
- D 1 - I - 0x006D97 01:AD87: 11        .byte $11   ; 
- D 1 - I - 0x006D98 01:AD88: 00        .byte $00   ; 
- D 1 - I - 0x006D99 01:AD89: 00        .byte $00   ; 
- D 1 - I - 0x006D9A 01:AD8A: 55        .byte $55   ; 
- D 1 - I - 0x006D9B 01:AD8B: 11        .byte $11   ; 
- D 1 - I - 0x006D9C 01:AD8C: 00        .byte $00   ; 
- D 1 - I - 0x006D9D 01:AD8D: 05        .byte $05   ; 
- D 1 - I - 0x006D9E 01:AD8E: 05        .byte $05   ; 
- D 1 - I - 0x006D9F 01:AD8F: 00        .byte $00   ; 
- D 1 - I - 0x006DA0 01:AD90: 00        .byte $00   ; 
- D 1 - I - 0x006DA1 01:AD91: 00        .byte $00   ; 
- D 1 - I - 0x006DA2 01:AD92: 05        .byte $05   ; 
off_AD93_00:
off_AD93_01:
off_AD93_02:
off_AD93_03:
off_AD93_04:
off_AD93_05:
off_AD93_06:
off_AD93_07:
- D 1 - I - 0x006DA3 01:AD93: 00        .byte $00   ; 
- D 1 - I - 0x006DA4 01:AD94: 00        .byte $00   ; 
- D 1 - I - 0x006DA5 01:AD95: 00        .byte $00   ; 
- D 1 - I - 0x006DA6 01:AD96: 00        .byte $00   ; 
- D 1 - I - 0x006DA7 01:AD97: 00        .byte $00   ; 
- D 1 - I - 0x006DA8 01:AD98: 00        .byte $00   ; 
- D 1 - I - 0x006DA9 01:AD99: 00        .byte $00   ; 
- D 1 - I - 0x006DAA 01:AD9A: 00        .byte $00   ; 
- D 1 - I - 0x006DAB 01:AD9B: 00        .byte $00   ; 
- D 1 - I - 0x006DAC 01:AD9C: 00        .byte $00   ; 
- D 1 - I - 0x006DAD 01:AD9D: 00        .byte $00   ; 
- D 1 - I - 0x006DAE 01:AD9E: 00        .byte $00   ; 
- D 1 - I - 0x006DAF 01:AD9F: 00        .byte $00   ; 
- D 1 - I - 0x006DB0 01:ADA0: 00        .byte $00   ; 
- D 1 - I - 0x006DB1 01:ADA1: 00        .byte $00   ; 
- D 1 - I - 0x006DB2 01:ADA2: 00        .byte $00   ; 
- D 1 - I - 0x006DB3 01:ADA3: 00        .byte $00   ; 
- D 1 - I - 0x006DB4 01:ADA4: 00        .byte $00   ; 
- D 1 - I - 0x006DB5 01:ADA5: 00        .byte $00   ; 
- D 1 - I - 0x006DB6 01:ADA6: 00        .byte $00   ; 
- D 1 - I - 0x006DB7 01:ADA7: 00        .byte $00   ; 
- D 1 - I - 0x006DB8 01:ADA8: 00        .byte $00   ; 
- D 1 - I - 0x006DB9 01:ADA9: 00        .byte $00   ; 
- D 1 - I - 0x006DBA 01:ADAA: 00        .byte $00   ; 
- D 1 - I - 0x006DBB 01:ADAB: 00        .byte $00   ; 
- D 1 - I - 0x006DBC 01:ADAC: 00        .byte $00   ; 
- D 1 - I - 0x006DBD 01:ADAD: 00        .byte $00   ; 
- D 1 - I - 0x006DBE 01:ADAE: 00        .byte $00   ; 
- D 1 - I - 0x006DBF 01:ADAF: 00        .byte $00   ; 
- D 1 - I - 0x006DC0 01:ADB0: 00        .byte $00   ; 
- D 1 - I - 0x006DC1 01:ADB1: 00        .byte $00   ; 
- D 1 - I - 0x006DC2 01:ADB2: 00        .byte $00   ; 
- D 1 - I - 0x006DC3 01:ADB3: 00        .byte $00   ; 
- D 1 - I - 0x006DC4 01:ADB4: 00        .byte $00   ; 
- D 1 - I - 0x006DC5 01:ADB5: 00        .byte $00   ; 
- D 1 - I - 0x006DC6 01:ADB6: 00        .byte $00   ; 
- D 1 - I - 0x006DC7 01:ADB7: 00        .byte $00   ; 
- D 1 - I - 0x006DC8 01:ADB8: 00        .byte $00   ; 
- D 1 - I - 0x006DC9 01:ADB9: 00        .byte $00   ; 
- D 1 - I - 0x006DCA 01:ADBA: 00        .byte $00   ; 
- D 1 - I - 0x006DCB 01:ADBB: 00        .byte $00   ; 
- D 1 - I - 0x006DCC 01:ADBC: 00        .byte $00   ; 
- D 1 - I - 0x006DCD 01:ADBD: 00        .byte $00   ; 
- D 1 - I - 0x006DCE 01:ADBE: 00        .byte $00   ; 
- D 1 - I - 0x006DCF 01:ADBF: 00        .byte $00   ; 
- D 1 - I - 0x006DD0 01:ADC0: 00        .byte $00   ; 
- D 1 - I - 0x006DD1 01:ADC1: 00        .byte $00   ; 
- D 1 - I - 0x006DD2 01:ADC2: 00        .byte $00   ; 
- D 1 - I - 0x006DD3 01:ADC3: 00        .byte $00   ; 
- D 1 - I - 0x006DD4 01:ADC4: 00        .byte $00   ; 
- D 1 - I - 0x006DD5 01:ADC5: 00        .byte $00   ; 
- D 1 - I - 0x006DD6 01:ADC6: 00        .byte $00   ; 
- D 1 - I - 0x006DD7 01:ADC7: 00        .byte $00   ; 
- D 1 - I - 0x006DD8 01:ADC8: 00        .byte $00   ; 
- D 1 - I - 0x006DD9 01:ADC9: 00        .byte $00   ; 
- D 1 - I - 0x006DDA 01:ADCA: 00        .byte $00   ; 
- D 1 - I - 0x006DDB 01:ADCB: 00        .byte $00   ; 
- D 1 - I - 0x006DDC 01:ADCC: 00        .byte $00   ; 
- D 1 - I - 0x006DDD 01:ADCD: 00        .byte $00   ; 
- D 1 - I - 0x006DDE 01:ADCE: 00        .byte $00   ; 
- D 1 - I - 0x006DDF 01:ADCF: 00        .byte $00   ; 
- D 1 - I - 0x006DE0 01:ADD0: 00        .byte $00   ; 
- D 1 - I - 0x006DE1 01:ADD1: 00        .byte $00   ; 
- D 1 - I - 0x006DE2 01:ADD2: 00        .byte $00   ; 
off_ADD3_01:
- D 1 - I - 0x006DE3 01:ADD3: 1C        .byte $1C   ; 
- D 1 - I - 0x006DE4 01:ADD4: 00        .byte $00   ; 
- D 1 - I - 0x006DE5 01:ADD5: 00        .byte $00   ; 
- D 1 - I - 0x006DE6 01:ADD6: 00        .byte $00   ; 
- D 1 - I - 0x006DE7 01:ADD7: 00        .byte $00   ; 
- D 1 - I - 0x006DE8 01:ADD8: 00        .byte $00   ; 
- D 1 - I - 0x006DE9 01:ADD9: 00        .byte $00   ; 
- D 1 - I - 0x006DEA 01:ADDA: 00        .byte $00   ; 
- D 1 - I - 0x006DEB 01:ADDB: 00        .byte $00   ; 
- D 1 - I - 0x006DEC 01:ADDC: 00        .byte $00   ; 
- D 1 - I - 0x006DED 01:ADDD: 00        .byte $00   ; 
- D 1 - I - 0x006DEE 01:ADDE: 14        .byte $14   ; 
- D 1 - I - 0x006DEF 01:ADDF: 00        .byte $00   ; 
- D 1 - I - 0x006DF0 01:ADE0: 48        .byte $48   ; 
- D 1 - I - 0x006DF1 01:ADE1: 60        .byte $60   ; 
- D 1 - I - 0x006DF2 01:ADE2: 6C        .byte $6C   ; 
- D 1 - I - 0x006DF3 01:ADE3: 6C        .byte $6C   ; 
- D 1 - I - 0x006DF4 01:ADE4: 6F        .byte $6F   ; 
- D 1 - I - 0x006DF5 01:ADE5: 6C        .byte $6C   ; 
- D 1 - I - 0x006DF6 01:ADE6: 6C        .byte $6C   ; 
- D 1 - I - 0x006DF7 01:ADE7: 6C        .byte $6C   ; 
- D 1 - I - 0x006DF8 01:ADE8: 68        .byte $68   ; 
- D 1 - I - 0x006DF9 01:ADE9: 00        .byte $00   ; 
- D 1 - I - 0x006DFA 01:ADEA: 00        .byte $00   ; 
- D 1 - I - 0x006DFB 01:ADEB: 00        .byte $00   ; 
- D 1 - I - 0x006DFC 01:ADEC: 00        .byte $00   ; 
- D 1 - I - 0x006DFD 01:ADED: 00        .byte $00   ; 
- D 1 - I - 0x006DFE 01:ADEE: 00        .byte $00   ; 
- D 1 - I - 0x006DFF 01:ADEF: 00        .byte $00   ; 
- D 1 - I - 0x006E00 01:ADF0: 00        .byte $00   ; 
- D 1 - I - 0x006E01 01:ADF1: 00        .byte $00   ; 
- D 1 - I - 0x006E02 01:ADF2: 00        .byte $00   ; 
off_ADF3_02:
- D 1 - I - 0x006E03 01:ADF3: 1C        .byte $1C   ; 
- D 1 - I - 0x006E04 01:ADF4: 00        .byte $00   ; 
- D 1 - I - 0x006E05 01:ADF5: 14        .byte $14   ; 
- D 1 - I - 0x006E06 01:ADF6: 00        .byte $00   ; 
- D 1 - I - 0x006E07 01:ADF7: 00        .byte $00   ; 
- D 1 - I - 0x006E08 01:ADF8: 00        .byte $00   ; 
- D 1 - I - 0x006E09 01:ADF9: 00        .byte $00   ; 
- D 1 - I - 0x006E0A 01:ADFA: 00        .byte $00   ; 
- D 1 - I - 0x006E0B 01:ADFB: 00        .byte $00   ; 
- D 1 - I - 0x006E0C 01:ADFC: 00        .byte $00   ; 
- D 1 - I - 0x006E0D 01:ADFD: 00        .byte $00   ; 
- D 1 - I - 0x006E0E 01:ADFE: 00        .byte $00   ; 
- D 1 - I - 0x006E0F 01:ADFF: 40        .byte $40   ; 
- D 1 - I - 0x006E10 01:AE00: 54        .byte $54   ; 
- D 1 - I - 0x006E11 01:AE01: 7E        .byte $7E   ; 
- D 1 - I - 0x006E12 01:AE02: 6C        .byte $6C   ; 
- D 1 - I - 0x006E13 01:AE03: 6C        .byte $6C   ; 
- D 1 - I - 0x006E14 01:AE04: 6C        .byte $6C   ; 
- D 1 - I - 0x006E15 01:AE05: 6C        .byte $6C   ; 
- D 1 - I - 0x006E16 01:AE06: 6E        .byte $6E   ; 
- D 1 - I - 0x006E17 01:AE07: 6C        .byte $6C   ; 
- D 1 - I - 0x006E18 01:AE08: 69        .byte $69   ; 
- D 1 - I - 0x006E19 01:AE09: 00        .byte $00   ; 
- D 1 - I - 0x006E1A 01:AE0A: 00        .byte $00   ; 
- D 1 - I - 0x006E1B 01:AE0B: 14        .byte $14   ; 
- D 1 - I - 0x006E1C 01:AE0C: 00        .byte $00   ; 
- D 1 - I - 0x006E1D 01:AE0D: 40        .byte $40   ; 
- D 1 - I - 0x006E1E 01:AE0E: 54        .byte $54   ; 
- D 1 - I - 0x006E1F 01:AE0F: 54        .byte $54   ; 
- D 1 - I - 0x006E20 01:AE10: 42        .byte $42   ; 
- D 1 - I - 0x006E21 01:AE11: 15        .byte $15   ; 
- D 1 - I - 0x006E22 01:AE12: 00        .byte $00   ; 
off_AE13_03:
- D 1 - I - 0x006E23 01:AE13: 2C        .byte $2C   ; 
- D 1 - I - 0x006E24 01:AE14: 04        .byte $04   ; 
- D 1 - I - 0x006E25 01:AE15: 04        .byte $04   ; 
- D 1 - I - 0x006E26 01:AE16: 04        .byte $04   ; 
- D 1 - I - 0x006E27 01:AE17: 04        .byte $04   ; 
- D 1 - I - 0x006E28 01:AE18: 04        .byte $04   ; 
- D 1 - I - 0x006E29 01:AE19: 04        .byte $04   ; 
- D 1 - I - 0x006E2A 01:AE1A: 04        .byte $04   ; 
- D 1 - I - 0x006E2B 01:AE1B: 04        .byte $04   ; 
- D 1 - I - 0x006E2C 01:AE1C: 04        .byte $04   ; 
- D 1 - I - 0x006E2D 01:AE1D: 04        .byte $04   ; 
- D 1 - I - 0x006E2E 01:AE1E: 49        .byte $49   ; 
- D 1 - I - 0x006E2F 01:AE1F: 61        .byte $61   ; 
- D 1 - I - 0x006E30 01:AE20: 6D        .byte $6D   ; 
- D 1 - I - 0x006E31 01:AE21: 6D        .byte $6D   ; 
- D 1 - I - 0x006E32 01:AE22: 70        .byte $70   ; 
- D 1 - I - 0x006E33 01:AE23: 6D        .byte $6D   ; 
- D 1 - I - 0x006E34 01:AE24: 6D        .byte $6D   ; 
- D 1 - I - 0x006E35 01:AE25: 6D        .byte $6D   ; 
- D 1 - I - 0x006E36 01:AE26: 79        .byte $79   ; 
- D 1 - I - 0x006E37 01:AE27: 5E        .byte $5E   ; 
- D 1 - I - 0x006E38 01:AE28: 47        .byte $47   ; 
- D 1 - I - 0x006E39 01:AE29: 04        .byte $04   ; 
- D 1 - I - 0x006E3A 01:AE2A: 04        .byte $04   ; 
- D 1 - I - 0x006E3B 01:AE2B: 04        .byte $04   ; 
- D 1 - I - 0x006E3C 01:AE2C: 04        .byte $04   ; 
- D 1 - I - 0x006E3D 01:AE2D: 61        .byte $61   ; 
- D 1 - I - 0x006E3E 01:AE2E: 6D        .byte $6D   ; 
- D 1 - I - 0x006E3F 01:AE2F: 70        .byte $70   ; 
- D 1 - I - 0x006E40 01:AE30: 67        .byte $67   ; 
- D 1 - I - 0x006E41 01:AE31: 4B        .byte $4B   ; 
- D 1 - I - 0x006E42 01:AE32: 04        .byte $04   ; 
off_AE33_04:
- D 1 - I - 0x006E43 01:AE33: 2C        .byte $2C   ; 
- D 1 - I - 0x006E44 01:AE34: 04        .byte $04   ; 
- D 1 - I - 0x006E45 01:AE35: 04        .byte $04   ; 
- D 1 - I - 0x006E46 01:AE36: 04        .byte $04   ; 
- D 1 - I - 0x006E47 01:AE37: 04        .byte $04   ; 
- D 1 - I - 0x006E48 01:AE38: 04        .byte $04   ; 
- D 1 - I - 0x006E49 01:AE39: 04        .byte $04   ; 
- D 1 - I - 0x006E4A 01:AE3A: 16        .byte $16   ; 
- D 1 - I - 0x006E4B 01:AE3B: 41        .byte $41   ; 
- D 1 - I - 0x006E4C 01:AE3C: 55        .byte $55   ; 
- D 1 - I - 0x006E4D 01:AE3D: 55        .byte $55   ; 
- D 1 - I - 0x006E4E 01:AE3E: 55        .byte $55   ; 
- D 1 - I - 0x006E4F 01:AE3F: 7F        .byte $7F   ; 
- D 1 - I - 0x006E50 01:AE40: 6D        .byte $6D   ; 
- D 1 - I - 0x006E51 01:AE41: 6D        .byte $6D   ; 
- D 1 - I - 0x006E52 01:AE42: 6D        .byte $6D   ; 
- D 1 - I - 0x006E53 01:AE43: 6D        .byte $6D   ; 
- D 1 - I - 0x006E54 01:AE44: 6D        .byte $6D   ; 
- D 1 - I - 0x006E55 01:AE45: 6D        .byte $6D   ; 
- D 1 - I - 0x006E56 01:AE46: 6A        .byte $6A   ; 
- D 1 - I - 0x006E57 01:AE47: 4F        .byte $4F   ; 
- D 1 - I - 0x006E58 01:AE48: 04        .byte $04   ; 
- D 1 - I - 0x006E59 01:AE49: 04        .byte $04   ; 
- D 1 - I - 0x006E5A 01:AE4A: 04        .byte $04   ; 
- D 1 - I - 0x006E5B 01:AE4B: 04        .byte $04   ; 
- D 1 - I - 0x006E5C 01:AE4C: 04        .byte $04   ; 
- D 1 - I - 0x006E5D 01:AE4D: 61        .byte $61   ; 
- D 1 - I - 0x006E5E 01:AE4E: 71        .byte $71   ; 
- D 1 - I - 0x006E5F 01:AE4F: 6D        .byte $6D   ; 
- D 1 - I - 0x006E60 01:AE50: 7D        .byte $7D   ; 
off_AE51_04:
- D 1 - I - 0x006E61 01:AE51: 55        .byte $55   ; 
- D 1 - I - 0x006E62 01:AE52: 55        .byte $55   ; 
- D 1 - I - 0x006E63 01:AE53: 7F        .byte $7F   ; 
- D 1 - I - 0x006E64 01:AE54: F9        .byte $F9   ; 
- D 1 - I - 0x006E65 01:AE55: 75        .byte $75   ; 
- D 1 - I - 0x006E66 01:AE56: 79        .byte $79   ; 
- D 1 - I - 0x006E67 01:AE57: 5E        .byte $5E   ; 
- D 1 - I - 0x006E68 01:AE58: 47        .byte $47   ; 
- D 1 - I - 0x006E69 01:AE59: 04        .byte $04   ; 
- D 1 - I - 0x006E6A 01:AE5A: 04        .byte $04   ; 
- D 1 - I - 0x006E6B 01:AE5B: 04        .byte $04   ; 
- D 1 - I - 0x006E6C 01:AE5C: 04        .byte $04   ; 
- D 1 - I - 0x006E6D 01:AE5D: 04        .byte $04   ; 
- D 1 - I - 0x006E6E 01:AE5E: 04        .byte $04   ; 
- D 1 - I - 0x006E6F 01:AE5F: 04        .byte $04   ; 
- D 1 - I - 0x006E70 01:AE60: 2B        .byte $2B   ; 
- D 1 - I - 0x006E71 01:AE61: 30        .byte $30   ; 
off_AE62_0B:
- D 1 - I - 0x006E72 01:AE62: 04        .byte $04   ; 
- D 1 - I - 0x006E73 01:AE63: 04        .byte $04   ; 
- D 1 - I - 0x006E74 01:AE64: 04        .byte $04   ; 
- D 1 - I - 0x006E75 01:AE65: 04        .byte $04   ; 
- D 1 - I - 0x006E76 01:AE66: 04        .byte $04   ; 
- D 1 - I - 0x006E77 01:AE67: 04        .byte $04   ; 
- D 1 - I - 0x006E78 01:AE68: 04        .byte $04   ; 
- - - - - - 0x006E79 01:AE69: 04        .byte $04   ; 
- - - - - - 0x006E7A 01:AE6A: 04        .byte $04   ; 
- D 1 - I - 0x006E7B 01:AE6B: 04        .byte $04   ; 
- D 1 - I - 0x006E7C 01:AE6C: 04        .byte $04   ; 
- D 1 - I - 0x006E7D 01:AE6D: 04        .byte $04   ; 
- D 1 - I - 0x006E7E 01:AE6E: 04        .byte $04   ; 
- D 1 - I - 0x006E7F 01:AE6F: 04        .byte $04   ; 
- D 1 - I - 0x006E80 01:AE70: 04        .byte $04   ; 
- D 1 - I - 0x006E81 01:AE71: 31        .byte $31   ; 
- D 1 - I - 0x006E82 01:AE72: 04        .byte $04   ; 
- D 1 - I - 0x006E83 01:AE73: 92        .byte $92   ; 
off_AE74_1B:
- D 1 - I - 0x006E84 01:AE74: 04        .byte $04   ; 
- D 1 - I - 0x006E85 01:AE75: 04        .byte $04   ; 
- D 1 - I - 0x006E86 01:AE76: 04        .byte $04   ; 
- D 1 - I - 0x006E87 01:AE77: 04        .byte $04   ; 
- D 1 - I - 0x006E88 01:AE78: 04        .byte $04   ; 
- D 1 - I - 0x006E89 01:AE79: 04        .byte $04   ; 
- D 1 - I - 0x006E8A 01:AE7A: 04        .byte $04   ; 
- D 1 - I - 0x006E8B 01:AE7B: 04        .byte $04   ; 
- D 1 - I - 0x006E8C 01:AE7C: 04        .byte $04   ; 
- D 1 - I - 0x006E8D 01:AE7D: 04        .byte $04   ; 
- D 1 - I - 0x006E8E 01:AE7E: 04        .byte $04   ; 
- D 1 - I - 0x006E8F 01:AE7F: 04        .byte $04   ; 
- D 1 - I - 0x006E90 01:AE80: 04        .byte $04   ; 
- D 1 - I - 0x006E91 01:AE81: 04        .byte $04   ; 
- D 1 - I - 0x006E92 01:AE82: 04        .byte $04   ; 
- D 1 - I - 0x006E93 01:AE83: 04        .byte $04   ; 
- D 1 - I - 0x006E94 01:AE84: 04        .byte $04   ; 
- D 1 - I - 0x006E95 01:AE85: 04        .byte $04   ; 
- D 1 - I - 0x006E96 01:AE86: 04        .byte $04   ; 
- D 1 - I - 0x006E97 01:AE87: 04        .byte $04   ; 
- D 1 - I - 0x006E98 01:AE88: 04        .byte $04   ; 
- D 1 - I - 0x006E99 01:AE89: 04        .byte $04   ; 
- D 1 - I - 0x006E9A 01:AE8A: 04        .byte $04   ; 
- D 1 - I - 0x006E9B 01:AE8B: 16        .byte $16   ; 
- D 1 - I - 0x006E9C 01:AE8C: 04        .byte $04   ; 
- D 1 - I - 0x006E9D 01:AE8D: 04        .byte $04   ; 
- D 1 - I - 0x006E9E 01:AE8E: 04        .byte $04   ; 
- D 1 - I - 0x006E9F 01:AE8F: 04        .byte $04   ; 
- D 1 - I - 0x006EA0 01:AE90: 04        .byte $04   ; 
- D 1 - I - 0x006EA1 01:AE91: 39        .byte $39   ; 
- D 1 - I - 0x006EA2 01:AE92: 3A        .byte $3A   ; 
- D 1 - I - 0x006EA3 01:AE93: 3B        .byte $3B   ; 
off_AE94_05:
- D 1 - I - 0x006EA4 01:AE94: 2C        .byte $2C   ; 
- D 1 - I - 0x006EA5 01:AE95: 04        .byte $04   ; 
- D 1 - I - 0x006EA6 01:AE96: 16        .byte $16   ; 
- D 1 - I - 0x006EA7 01:AE97: 04        .byte $04   ; 
- D 1 - I - 0x006EA8 01:AE98: 04        .byte $04   ; 
- D 1 - I - 0x006EA9 01:AE99: 04        .byte $04   ; 
- D 1 - I - 0x006EAA 01:AE9A: 04        .byte $04   ; 
- D 1 - I - 0x006EAB 01:AE9B: 04        .byte $04   ; 
- D 1 - I - 0x006EAC 01:AE9C: 61        .byte $61   ; 
- D 1 - I - 0x006EAD 01:AE9D: 70        .byte $70   ; 
- D 1 - I - 0x006EAE 01:AE9E: 6D        .byte $6D   ; 
- D 1 - I - 0x006EAF 01:AE9F: 6D        .byte $6D   ; 
- D 1 - I - 0x006EB0 01:AEA0: 6D        .byte $6D   ; 
- D 1 - I - 0x006EB1 01:AEA1: 79        .byte $79   ; 
- D 1 - I - 0x006EB2 01:AEA2: 5B        .byte $5B   ; 
- D 1 - I - 0x006EB3 01:AEA3: 5B        .byte $5B   ; 
- D 1 - I - 0x006EB4 01:AEA4: 5E        .byte $5E   ; 
- D 1 - I - 0x006EB5 01:AEA5: 5F        .byte $5F   ; 
- D 1 - I - 0x006EB6 01:AEA6: 5F        .byte $5F   ; 
- D 1 - I - 0x006EB7 01:AEA7: 47        .byte $47   ; 
- D 1 - I - 0x006EB8 01:AEA8: 04        .byte $04   ; 
- D 1 - I - 0x006EB9 01:AEA9: 04        .byte $04   ; 
- D 1 - I - 0x006EBA 01:AEAA: 04        .byte $04   ; 
- D 1 - I - 0x006EBB 01:AEAB: 04        .byte $04   ; 
- D 1 - I - 0x006EBC 01:AEAC: 04        .byte $04   ; 
- D 1 - I - 0x006EBD 01:AEAD: 16        .byte $16   ; 
- D 1 - I - 0x006EBE 01:AEAE: 45        .byte $45   ; 
- D 1 - I - 0x006EBF 01:AEAF: 5B        .byte $5B   ; 
- D 1 - I - 0x006EC0 01:AEB0: 7B        .byte $7B   ; 
- D 1 - I - 0x006EC1 01:AEB1: 6D        .byte $6D   ; 
off_AEB2_05:
- D 1 - I - 0x006EC2 01:AEB2: 70        .byte $70   ; 
- D 1 - I - 0x006EC3 01:AEB3: 6D        .byte $6D   ; 
- D 1 - I - 0x006EC4 01:AEB4: 6D        .byte $6D   ; 
- D 1 - I - 0x006EC5 01:AEB5: 67        .byte $67   ; 
- D 1 - I - 0x006EC6 01:AEB6: 4B        .byte $4B   ; 
- D 1 - I - 0x006EC7 01:AEB7: 04        .byte $04   ; 
- D 1 - I - 0x006EC8 01:AEB8: 04        .byte $04   ; 
- D 1 - I - 0x006EC9 01:AEB9: 04        .byte $04   ; 
- D 1 - I - 0x006ECA 01:AEBA: 04        .byte $04   ; 
- D 1 - I - 0x006ECB 01:AEBB: 04        .byte $04   ; 
- D 1 - I - 0x006ECC 01:AEBC: 04        .byte $04   ; 
- D 1 - I - 0x006ECD 01:AEBD: 04        .byte $04   ; 
- D 1 - I - 0x006ECE 01:AEBE: 04        .byte $04   ; 
- D 1 - I - 0x006ECF 01:AEBF: 04        .byte $04   ; 
- D 1 - I - 0x006ED0 01:AEC0: 04        .byte $04   ; 
- D 1 - I - 0x006ED1 01:AEC1: 04        .byte $04   ; 
- D 1 - I - 0x006ED2 01:AEC2: 04        .byte $04   ; 
- D 1 - I - 0x006ED3 01:AEC3: 04        .byte $04   ; 
- D 1 - I - 0x006ED4 01:AEC4: 45        .byte $45   ; 
- D 1 - I - 0x006ED5 01:AEC5: 5B        .byte $5B   ; 
- D 1 - I - 0x006ED6 01:AEC6: 5B        .byte $5B   ; 
- D 1 - I - 0x006ED7 01:AEC7: 5B        .byte $5B   ; 
- D 1 - I - 0x006ED8 01:AEC8: 5E        .byte $5E   ; 
- D 1 - I - 0x006ED9 01:AEC9: 5F        .byte $5F   ; 
- D 1 - I - 0x006EDA 01:AECA: 5F        .byte $5F   ; 
- D 1 - I - 0x006EDB 01:AECB: 47        .byte $47   ; 
- D 1 - I - 0x006EDC 01:AECC: 04        .byte $04   ; 
- D 1 - I - 0x006EDD 01:AECD: 04        .byte $04   ; 
- D 1 - I - 0x006EDE 01:AECE: 04        .byte $04   ; 
- D 1 - I - 0x006EDF 01:AECF: 04        .byte $04   ; 
- D 1 - I - 0x006EE0 01:AED0: 04        .byte $04   ; 
- D 1 - I - 0x006EE1 01:AED1: 2B        .byte $2B   ; 
off_AED2_06:
- D 1 - I - 0x006EE2 01:AED2: 1C        .byte $1C   ; 
- D 1 - I - 0x006EE3 01:AED3: 00        .byte $00   ; 
- D 1 - I - 0x006EE4 01:AED4: 00        .byte $00   ; 
- D 1 - I - 0x006EE5 01:AED5: 00        .byte $00   ; 
- D 1 - I - 0x006EE6 01:AED6: 00        .byte $00   ; 
- D 1 - I - 0x006EE7 01:AED7: 00        .byte $00   ; 
- D 1 - I - 0x006EE8 01:AED8: 00        .byte $00   ; 
- D 1 - I - 0x006EE9 01:AED9: 00        .byte $00   ; 
- D 1 - I - 0x006EEA 01:AEDA: 60        .byte $60   ; 
- D 1 - I - 0x006EEB 01:AEDB: 6C        .byte $6C   ; 
- D 1 - I - 0x006EEC 01:AEDC: 6C        .byte $6C   ; 
- D 1 - I - 0x006EED 01:AEDD: 6F        .byte $6F   ; 
- D 1 - I - 0x006EEE 01:AEDE: 6C        .byte $6C   ; 
- D 1 - I - 0x006EEF 01:AEDF: 68        .byte $68   ; 
- D 1 - I - 0x006EF0 01:AEE0: 4E        .byte $4E   ; 
- D 1 - I - 0x006EF1 01:AEE1: 00        .byte $00   ; 
- D 1 - I - 0x006EF2 01:AEE2: 00        .byte $00   ; 
- D 1 - I - 0x006EF3 01:AEE3: 00        .byte $00   ; 
- D 1 - I - 0x006EF4 01:AEE4: 00        .byte $00   ; 
- D 1 - I - 0x006EF5 01:AEE5: 00        .byte $00   ; 
- D 1 - I - 0x006EF6 01:AEE6: 00        .byte $00   ; 
- D 1 - I - 0x006EF7 01:AEE7: 00        .byte $00   ; 
- D 1 - I - 0x006EF8 01:AEE8: 00        .byte $00   ; 
- D 1 - I - 0x006EF9 01:AEE9: 00        .byte $00   ; 
- D 1 - I - 0x006EFA 01:AEEA: 00        .byte $00   ; 
- D 1 - I - 0x006EFB 01:AEEB: 00        .byte $00   ; 
- D 1 - I - 0x006EFC 01:AEEC: 00        .byte $00   ; 
- D 1 - I - 0x006EFD 01:AEED: 4C        .byte $4C   ; 
- D 1 - I - 0x006EFE 01:AEEE: 60        .byte $60   ; 
off_AEEF_07:
- D 1 - I - 0x006EFF 01:AEEF: 6C        .byte $6C   ; 
- D 1 - I - 0x006F00 01:AEF0: 6C        .byte $6C   ; 
- D 1 - I - 0x006F01 01:AEF1: 6C        .byte $6C   ; 
- D 1 - I - 0x006F02 01:AEF2: 68        .byte $68   ; 
- D 1 - I - 0x006F03 01:AEF3: 15        .byte $15   ; 
- D 1 - I - 0x006F04 01:AEF4: 00        .byte $00   ; 
- D 1 - I - 0x006F05 01:AEF5: 00        .byte $00   ; 
- D 1 - I - 0x006F06 01:AEF6: 00        .byte $00   ; 
- D 1 - I - 0x006F07 01:AEF7: 00        .byte $00   ; 
- D 1 - I - 0x006F08 01:AEF8: 00        .byte $00   ; 
- D 1 - I - 0x006F09 01:AEF9: 00        .byte $00   ; 
- D 1 - I - 0x006F0A 01:AEFA: 00        .byte $00   ; 
- D 1 - I - 0x006F0B 01:AEFB: 00        .byte $00   ; 
- D 1 - I - 0x006F0C 01:AEFC: 00        .byte $00   ; 
- D 1 - I - 0x006F0D 01:AEFD: 00        .byte $00   ; 
- D 1 - I - 0x006F0E 01:AEFE: 00        .byte $00   ; 
- D 1 - I - 0x006F0F 01:AEFF: 00        .byte $00   ; 
- D 1 - I - 0x006F10 01:AF00: 00        .byte $00   ; 
- D 1 - I - 0x006F11 01:AF01: 00        .byte $00   ; 
- D 1 - I - 0x006F12 01:AF02: 00        .byte $00   ; 
- D 1 - I - 0x006F13 01:AF03: 00        .byte $00   ; 
- D 1 - I - 0x006F14 01:AF04: 00        .byte $00   ; 
- D 1 - I - 0x006F15 01:AF05: 00        .byte $00   ; 
- D 1 - I - 0x006F16 01:AF06: 00        .byte $00   ; 
- D 1 - I - 0x006F17 01:AF07: 00        .byte $00   ; 
- D 1 - I - 0x006F18 01:AF08: 00        .byte $00   ; 
- D 1 - I - 0x006F19 01:AF09: 00        .byte $00   ; 
- D 1 - I - 0x006F1A 01:AF0A: 00        .byte $00   ; 
- D 1 - I - 0x006F1B 01:AF0B: 14        .byte $14   ; 
- D 1 - I - 0x006F1C 01:AF0C: 00        .byte $00   ; 
- D 1 - I - 0x006F1D 01:AF0D: 00        .byte $00   ; 
- D 1 - I - 0x006F1E 01:AF0E: 1B        .byte $1B   ; 
off_AF0F_07:
- D 1 - I - 0x006F1F 01:AF0F: 1C        .byte $1C   ; 
- D 1 - I - 0x006F20 01:AF10: 00        .byte $00   ; 
- D 1 - I - 0x006F21 01:AF11: 00        .byte $00   ; 
- D 1 - I - 0x006F22 01:AF12: 00        .byte $00   ; 
- D 1 - I - 0x006F23 01:AF13: 14        .byte $14   ; 
- D 1 - I - 0x006F24 01:AF14: 00        .byte $00   ; 
- D 1 - I - 0x006F25 01:AF15: 00        .byte $00   ; 
- D 1 - I - 0x006F26 01:AF16: 00        .byte $00   ; 
- D 1 - I - 0x006F27 01:AF17: 44        .byte $44   ; 
- D 1 - I - 0x006F28 01:AF18: 5A        .byte $5A   ; 
- D 1 - I - 0x006F29 01:AF19: 5C        .byte $5C   ; 
- D 1 - I - 0x006F2A 01:AF1A: 5D        .byte $5D   ; 
- D 1 - I - 0x006F2B 01:AF1B: 5D        .byte $5D   ; 
- D 1 - I - 0x006F2C 01:AF1C: 46        .byte $46   ; 
- D 1 - I - 0x006F2D 01:AF1D: 00        .byte $00   ; 
- D 1 - I - 0x006F2E 01:AF1E: 00        .byte $00   ; 
- D 1 - I - 0x006F2F 01:AF1F: 00        .byte $00   ; 
- D 1 - I - 0x006F30 01:AF20: 00        .byte $00   ; 
- D 1 - I - 0x006F31 01:AF21: 00        .byte $00   ; 
- D 1 - I - 0x006F32 01:AF22: 00        .byte $00   ; 
- D 1 - I - 0x006F33 01:AF23: 00        .byte $00   ; 
- D 1 - I - 0x006F34 01:AF24: 14        .byte $14   ; 
- D 1 - I - 0x006F35 01:AF25: 00        .byte $00   ; 
- D 1 - I - 0x006F36 01:AF26: 00        .byte $00   ; 
- D 1 - I - 0x006F37 01:AF27: 00        .byte $00   ; 
- D 1 - I - 0x006F38 01:AF28: 00        .byte $00   ; 
- D 1 - I - 0x006F39 01:AF29: 00        .byte $00   ; 
- D 1 - I - 0x006F3A 01:AF2A: 00        .byte $00   ; 
- D 1 - I - 0x006F3B 01:AF2B: 44        .byte $44   ; 
- D 1 - I - 0x006F3C 01:AF2C: 5A        .byte $5A   ; 
- D 1 - I - 0x006F3D 01:AF2D: 7A        .byte $7A   ; 
off_AF2E_06:
- D 1 - I - 0x006F3E 01:AF2E: 6C        .byte $6C   ; 
- D 1 - I - 0x006F3F 01:AF2F: 7C        .byte $7C   ; 
- D 1 - I - 0x006F40 01:AF30: 54        .byte $54   ; 
- D 1 - I - 0x006F41 01:AF31: 42        .byte $42   ; 
- D 1 - I - 0x006F42 01:AF32: 94        .byte $94   ; 
- D 1 - I - 0x006F43 01:AF33: 12        .byte $12   ; 
- D 1 - I - 0x006F44 01:AF34: 12        .byte $12   ; 
- D 1 - I - 0x006F45 01:AF35: 12        .byte $12   ; 
- D 1 - I - 0x006F46 01:AF36: 12        .byte $12   ; 
- D 1 - I - 0x006F47 01:AF37: 12        .byte $12   ; 
- D 1 - I - 0x006F48 01:AF38: 12        .byte $12   ; 
- D 1 - I - 0x006F49 01:AF39: 12        .byte $12   ; 
- D 1 - I - 0x006F4A 01:AF3A: 12        .byte $12   ; 
- D 1 - I - 0x006F4B 01:AF3B: 12        .byte $12   ; 
- D 1 - I - 0x006F4C 01:AF3C: 12        .byte $12   ; 
- D 1 - I - 0x006F4D 01:AF3D: 12        .byte $12   ; 
- D 1 - I - 0x006F4E 01:AF3E: 21        .byte $21   ; 
- D 1 - I - 0x006F4F 01:AF3F: 00        .byte $00   ; 
- D 1 - I - 0x006F50 01:AF40: 00        .byte $00   ; 
- D 1 - I - 0x006F51 01:AF41: 00        .byte $00   ; 
- D 1 - I - 0x006F52 01:AF42: 00        .byte $00   ; 
- D 1 - I - 0x006F53 01:AF43: 00        .byte $00   ; 
- D 1 - I - 0x006F54 01:AF44: 00        .byte $00   ; 
- D 1 - I - 0x006F55 01:AF45: 00        .byte $00   ; 
- - - - - - 0x006F56 01:AF46: 14        .byte $14   ; 
- - - - - - 0x006F57 01:AF47: 00        .byte $00   ; 
- - - - - - 0x006F58 01:AF48: 00        .byte $00   ; 
- - - - - - 0x006F59 01:AF49: 00        .byte $00   ; 
- - - - - - 0x006F5A 01:AF4A: 00        .byte $00   ; 
- - - - - - 0x006F5B 01:AF4B: 15        .byte $15   ; 
- - - - - - 0x006F5C 01:AF4C: 00        .byte $00   ; 
- - - - - - 0x006F5D 01:AF4D: 00        .byte $00   ; 
off_AF4E_08:
- D 1 - I - 0x006F5E 01:AF4E: 1C        .byte $1C   ; 
- D 1 - I - 0x006F5F 01:AF4F: 00        .byte $00   ; 
- D 1 - I - 0x006F60 01:AF50: 00        .byte $00   ; 
- D 1 - I - 0x006F61 01:AF51: 00        .byte $00   ; 
- D 1 - I - 0x006F62 01:AF52: 00        .byte $00   ; 
- D 1 - I - 0x006F63 01:AF53: 00        .byte $00   ; 
- D 1 - I - 0x006F64 01:AF54: 00        .byte $00   ; 
- D 1 - I - 0x006F65 01:AF55: 14        .byte $14   ; 
- D 1 - I - 0x006F66 01:AF56: 00        .byte $00   ; 
- D 1 - I - 0x006F67 01:AF57: 00        .byte $00   ; 
- D 1 - I - 0x006F68 01:AF58: 00        .byte $00   ; 
- D 1 - I - 0x006F69 01:AF59: 00        .byte $00   ; 
- D 1 - I - 0x006F6A 01:AF5A: 00        .byte $00   ; 
- D 1 - I - 0x006F6B 01:AF5B: 00        .byte $00   ; 
- D 1 - I - 0x006F6C 01:AF5C: 00        .byte $00   ; 
- D 1 - I - 0x006F6D 01:AF5D: 00        .byte $00   ; 
- D 1 - I - 0x006F6E 01:AF5E: 14        .byte $14   ; 
- D 1 - I - 0x006F6F 01:AF5F: 00        .byte $00   ; 
- D 1 - I - 0x006F70 01:AF60: 00        .byte $00   ; 
- D 1 - I - 0x006F71 01:AF61: 00        .byte $00   ; 
- D 1 - I - 0x006F72 01:AF62: 00        .byte $00   ; 
- D 1 - I - 0x006F73 01:AF63: 00        .byte $00   ; 
- D 1 - I - 0x006F74 01:AF64: 00        .byte $00   ; 
- D 1 - I - 0x006F75 01:AF65: 00        .byte $00   ; 
- D 1 - I - 0x006F76 01:AF66: 00        .byte $00   ; 
- D 1 - I - 0x006F77 01:AF67: 00        .byte $00   ; 
- D 1 - I - 0x006F78 01:AF68: 00        .byte $00   ; 
- D 1 - I - 0x006F79 01:AF69: 00        .byte $00   ; 
- D 1 - I - 0x006F7A 01:AF6A: 00        .byte $00   ; 
- D 1 - I - 0x006F7B 01:AF6B: 4C        .byte $4C   ; 
- D 1 - I - 0x006F7C 01:AF6C: 60        .byte $60   ; 
- D 1 - I - 0x006F7D 01:AF6D: 6E        .byte $6E   ; 
off_AF6E_09:
- D 1 - I - 0x006F7E 01:AF6E: 2C        .byte $2C   ; 
- D 1 - I - 0x006F7F 01:AF6F: 04        .byte $04   ; 
- D 1 - I - 0x006F80 01:AF70: 04        .byte $04   ; 
- D 1 - I - 0x006F81 01:AF71: 04        .byte $04   ; 
- D 1 - I - 0x006F82 01:AF72: 04        .byte $04   ; 
- D 1 - I - 0x006F83 01:AF73: 04        .byte $04   ; 
- D 1 - I - 0x006F84 01:AF74: 04        .byte $04   ; 
- D 1 - I - 0x006F85 01:AF75: 04        .byte $04   ; 
- D 1 - I - 0x006F86 01:AF76: 04        .byte $04   ; 
- D 1 - I - 0x006F87 01:AF77: 04        .byte $04   ; 
- D 1 - I - 0x006F88 01:AF78: 04        .byte $04   ; 
- D 1 - I - 0x006F89 01:AF79: 16        .byte $16   ; 
- D 1 - I - 0x006F8A 01:AF7A: 04        .byte $04   ; 
- D 1 - I - 0x006F8B 01:AF7B: 04        .byte $04   ; 
- D 1 - I - 0x006F8C 01:AF7C: 04        .byte $04   ; 
- D 1 - I - 0x006F8D 01:AF7D: 04        .byte $04   ; 
- D 1 - I - 0x006F8E 01:AF7E: 04        .byte $04   ; 
- D 1 - I - 0x006F8F 01:AF7F: 04        .byte $04   ; 
- D 1 - I - 0x006F90 01:AF80: 16        .byte $16   ; 
- D 1 - I - 0x006F91 01:AF81: 04        .byte $04   ; 
- D 1 - I - 0x006F92 01:AF82: 04        .byte $04   ; 
- D 1 - I - 0x006F93 01:AF83: 04        .byte $04   ; 
- D 1 - I - 0x006F94 01:AF84: 04        .byte $04   ; 
- D 1 - I - 0x006F95 01:AF85: 04        .byte $04   ; 
- D 1 - I - 0x006F96 01:AF86: 04        .byte $04   ; 
- D 1 - I - 0x006F97 01:AF87: 04        .byte $04   ; 
- D 1 - I - 0x006F98 01:AF88: 16        .byte $16   ; 
- D 1 - I - 0x006F99 01:AF89: 04        .byte $04   ; 
- D 1 - I - 0x006F9A 01:AF8A: 04        .byte $04   ; 
- D 1 - I - 0x006F9B 01:AF8B: 04        .byte $04   ; 
- D 1 - I - 0x006F9C 01:AF8C: 45        .byte $45   ; 
- D 1 - I - 0x006F9D 01:AF8D: 5B        .byte $5B   ; 
off_AF8E_06:
- D 1 - I - 0x006F9E 01:AF8E: 00        .byte $00   ; 
- D 1 - I - 0x006F9F 01:AF8F: 00        .byte $00   ; 
- D 1 - I - 0x006FA0 01:AF90: 40        .byte $40   ; 
- D 1 - I - 0x006FA1 01:AF91: 55        .byte $55   ; 
- D 1 - I - 0x006FA2 01:AF92: 55        .byte $55   ; 
- D 1 - I - 0x006FA3 01:AF93: 11        .byte $11   ; 
- D 1 - I - 0x006FA4 01:AF94: 40        .byte $40   ; 
- D 1 - I - 0x006FA5 01:AF95: 50        .byte $50   ; 
- D 1 - I - 0x006FA6 01:AF96: 00        .byte $00   ; 
- D 1 - I - 0x006FA7 01:AF97: 00        .byte $00   ; 
- D 1 - I - 0x006FA8 01:AF98: 55        .byte $55   ; 
- D 1 - I - 0x006FA9 01:AF99: 55        .byte $55   ; 
- D 1 - I - 0x006FAA 01:AF9A: 05        .byte $05   ; 
- D 1 - I - 0x006FAB 01:AF9B: 01        .byte $01   ; 
- D 1 - I - 0x006FAC 01:AF9C: 44        .byte $44   ; 
- D 1 - I - 0x006FAD 01:AF9D: 55        .byte $55   ; 
- D 1 - I - 0x006FAE 01:AF9E: 00        .byte $00   ; 
- D 1 - I - 0x006FAF 01:AF9F: 00        .byte $00   ; 
- D 1 - I - 0x006FB0 01:AFA0: 00        .byte $00   ; 
- D 1 - I - 0x006FB1 01:AFA1: 00        .byte $00   ; 
- D 1 - I - 0x006FB2 01:AFA2: 00        .byte $00   ; 
- D 1 - I - 0x006FB3 01:AFA3: 00        .byte $00   ; 
- D 1 - I - 0x006FB4 01:AFA4: 00        .byte $00   ; 
- D 1 - I - 0x006FB5 01:AFA5: 05        .byte $05   ; 
- D 1 - I - 0x006FB6 01:AFA6: 00        .byte $00   ; 
- D 1 - I - 0x006FB7 01:AFA7: 00        .byte $00   ; 
- D 1 - I - 0x006FB8 01:AFA8: 00        .byte $00   ; 
- D 1 - I - 0x006FB9 01:AFA9: 00        .byte $00   ; 
- D 1 - I - 0x006FBA 01:AFAA: 00        .byte $00   ; 
- D 1 - I - 0x006FBB 01:AFAB: 00        .byte $00   ; 
- D 1 - I - 0x006FBC 01:AFAC: 00        .byte $00   ; 
- D 1 - I - 0x006FBD 01:AFAD: 00        .byte $00   ; 
- - - - - - 0x006FBE 01:AFAE: 00        .byte $00   ; 
- - - - - - 0x006FBF 01:AFAF: 00        .byte $00   ; 
- - - - - - 0x006FC0 01:AFB0: 00        .byte $00   ; 
- - - - - - 0x006FC1 01:AFB1: 00        .byte $00   ; 
- - - - - - 0x006FC2 01:AFB2: 00        .byte $00   ; 
- - - - - - 0x006FC3 01:AFB3: 00        .byte $00   ; 
- - - - - - 0x006FC4 01:AFB4: 00        .byte $00   ; 
- - - - - - 0x006FC5 01:AFB5: 00        .byte $00   ; 
- - - - - - 0x006FC6 01:AFB6: 00        .byte $00   ; 
- - - - - - 0x006FC7 01:AFB7: 00        .byte $00   ; 
- - - - - - 0x006FC8 01:AFB8: 00        .byte $00   ; 
- - - - - - 0x006FC9 01:AFB9: 00        .byte $00   ; 
- - - - - - 0x006FCA 01:AFBA: 00        .byte $00   ; 
- - - - - - 0x006FCB 01:AFBB: 00        .byte $00   ; 
- - - - - - 0x006FCC 01:AFBC: 00        .byte $00   ; 
- - - - - - 0x006FCD 01:AFBD: 00        .byte $00   ; 
- - - - - - 0x006FCE 01:AFBE: 00        .byte $00   ; 
- - - - - - 0x006FCF 01:AFBF: 00        .byte $00   ; 
- - - - - - 0x006FD0 01:AFC0: 00        .byte $00   ; 
- - - - - - 0x006FD1 01:AFC1: 00        .byte $00   ; 
- - - - - - 0x006FD2 01:AFC2: 00        .byte $00   ; 
- - - - - - 0x006FD3 01:AFC3: 00        .byte $00   ; 
- - - - - - 0x006FD4 01:AFC4: 00        .byte $00   ; 
- - - - - - 0x006FD5 01:AFC5: 00        .byte $00   ; 
- - - - - - 0x006FD6 01:AFC6: 00        .byte $00   ; 
- - - - - - 0x006FD7 01:AFC7: 00        .byte $00   ; 
- - - - - - 0x006FD8 01:AFC8: 00        .byte $00   ; 
- - - - - - 0x006FD9 01:AFC9: 00        .byte $00   ; 
- - - - - - 0x006FDA 01:AFCA: 00        .byte $00   ; 
- - - - - - 0x006FDB 01:AFCB: 00        .byte $00   ; 
- - - - - - 0x006FDC 01:AFCC: 00        .byte $00   ; 
- - - - - - 0x006FDD 01:AFCD: 00        .byte $00   ; 
off_AFCE_02:
- D 1 - I - 0x006FDE 01:AFCE: 00        .byte $00   ; 
- D 1 - I - 0x006FDF 01:AFCF: 00        .byte $00   ; 
- D 1 - I - 0x006FE0 01:AFD0: 40        .byte $40   ; 
- D 1 - I - 0x006FE1 01:AFD1: E0        .byte $E0   ; 
- D 1 - I - 0x006FE2 01:AFD2: 54        .byte $54   ; 
- D 1 - I - 0x006FE3 01:AFD3: 54        .byte $54   ; 
- D 1 - I - 0x006FE4 01:AFD4: 54        .byte $54   ; 
- D 1 - I - 0x006FE5 01:AFD5: 42        .byte $42   ; 
- D 1 - I - 0x006FE6 01:AFD6: 00        .byte $00   ; 
- D 1 - I - 0x006FE7 01:AFD7: 00        .byte $00   ; 
- D 1 - I - 0x006FE8 01:AFD8: 00        .byte $00   ; 
- D 1 - I - 0x006FE9 01:AFD9: 00        .byte $00   ; 
- D 1 - I - 0x006FEA 01:AFDA: 15        .byte $15   ; 
- D 1 - I - 0x006FEB 01:AFDB: 00        .byte $00   ; 
- D 1 - I - 0x006FEC 01:AFDC: 00        .byte $00   ; 
- D 1 - I - 0x006FED 01:AFDD: 25        .byte $25   ; 
- D 1 - I - 0x006FEE 01:AFDE: 00        .byte $00   ; 
- D 1 - I - 0x006FEF 01:AFDF: 00        .byte $00   ; 
- D 1 - I - 0x006FF0 01:AFE0: 00        .byte $00   ; 
- D 1 - I - 0x006FF1 01:AFE1: 00        .byte $00   ; 
- D 1 - I - 0x006FF2 01:AFE2: 00        .byte $00   ; 
- D 1 - I - 0x006FF3 01:AFE3: 00        .byte $00   ; 
- D 1 - I - 0x006FF4 01:AFE4: 14        .byte $14   ; 
off_AFE5_1A:
- D 1 - I - 0x006FF5 01:AFE5: 00        .byte $00   ; 
- D 1 - I - 0x006FF6 01:AFE6: 00        .byte $00   ; 
- D 1 - I - 0x006FF7 01:AFE7: 00        .byte $00   ; 
- D 1 - I - 0x006FF8 01:AFE8: 14        .byte $14   ; 
- D 1 - I - 0x006FF9 01:AFE9: 00        .byte $00   ; 
- D 1 - I - 0x006FFA 01:AFEA: 00        .byte $00   ; 
- D 1 - I - 0x006FFB 01:AFEB: 00        .byte $00   ; 
- D 1 - I - 0x006FFC 01:AFEC: 00        .byte $00   ; 
- D 1 - I - 0x006FFD 01:AFED: 00        .byte $00   ; 
- D 1 - I - 0x006FFE 01:AFEE: 14        .byte $14   ; 
- D 1 - I - 0x006FFF 01:AFEF: 00        .byte $00   ; 
- D 1 - I - 0x007000 01:AFF0: 00        .byte $00   ; 
- D 1 - I - 0x007001 01:AFF1: 00        .byte $00   ; 
- D 1 - I - 0x007002 01:AFF2: 00        .byte $00   ; 
- D 1 - I - 0x007003 01:AFF3: 15        .byte $15   ; 
- D 1 - I - 0x007004 01:AFF4: 00        .byte $00   ; 
- D 1 - I - 0x007005 01:AFF5: 00        .byte $00   ; 
- D 1 - I - 0x007006 01:AFF6: 00        .byte $00   ; 
- D 1 - I - 0x007007 01:AFF7: 00        .byte $00   ; 
- D 1 - I - 0x007008 01:AFF8: 00        .byte $00   ; 
- D 1 - I - 0x007009 01:AFF9: 00        .byte $00   ; 
- D 1 - I - 0x00700A 01:AFFA: 00        .byte $00   ; 
- D 1 - I - 0x00700B 01:AFFB: 00        .byte $00   ; 
- D 1 - I - 0x00700C 01:AFFC: 00        .byte $00   ; 
- D 1 - I - 0x00700D 01:AFFD: 00        .byte $00   ; 
- D 1 - I - 0x00700E 01:AFFE: 00        .byte $00   ; 
- D 1 - I - 0x00700F 01:AFFF: 00        .byte $00   ; 
- D 1 - I - 0x007010 01:B000: 00        .byte $00   ; 
- D 1 - I - 0x007011 01:B001: 29        .byte $29   ; 
- D 1 - I - 0x007012 01:B002: 2A        .byte $2A   ; 
- D 1 - I - 0x007013 01:B003: 00        .byte $00   ; 
- D 1 - I - 0x007014 01:B004: 1B        .byte $1B   ; 
off_B005_03:
- D 1 - I - 0x007015 01:B005: 04        .byte $04   ; 
- D 1 - I - 0x007016 01:B006: 49        .byte $49   ; 
- D 1 - I - 0x007017 01:B007: 61        .byte $61   ; 
- D 1 - I - 0x007018 01:B008: 74        .byte $74   ; 
- D 1 - I - 0x007019 01:B009: F4        .byte $F4   ; 
- D 1 - I - 0x00701A 01:B00A: 71        .byte $71   ; 
- D 1 - I - 0x00701B 01:B00B: 6D        .byte $6D   ; 
- D 1 - I - 0x00701C 01:B00C: 6A        .byte $6A   ; 
- D 1 - I - 0x00701D 01:B00D: 04        .byte $04   ; 
- D 1 - I - 0x00701E 01:B00E: 04        .byte $04   ; 
- D 1 - I - 0x00701F 01:B00F: 04        .byte $04   ; 
- D 1 - I - 0x007020 01:B010: 04        .byte $04   ; 
- D 1 - I - 0x007021 01:B011: 04        .byte $04   ; 
- D 1 - I - 0x007022 01:B012: 04        .byte $04   ; 
- D 1 - I - 0x007023 01:B013: 04        .byte $04   ; 
- D 1 - I - 0x007024 01:B014: 36        .byte $36   ; 
- D 1 - I - 0x007025 01:B015: 04        .byte $04   ; 
- D 1 - I - 0x007026 01:B016: 16        .byte $16   ; 
- D 1 - I - 0x007027 01:B017: 04        .byte $04   ; 
- D 1 - I - 0x007028 01:B018: 16        .byte $16   ; 
- D 1 - I - 0x007029 01:B019: 04        .byte $04   ; 
- D 1 - I - 0x00702A 01:B01A: 04        .byte $04   ; 
- D 1 - I - 0x00702B 01:B01B: 04        .byte $04   ; 
- D 1 - I - 0x00702C 01:B01C: 04        .byte $04   ; 
- - - - - - 0x00702D 01:B01D: 04        .byte $04   ; 
- - - - - - 0x00702E 01:B01E: 04        .byte $04   ; 
- - - - - - 0x00702F 01:B01F: 04        .byte $04   ; 
- - - - - - 0x007030 01:B020: 04        .byte $04   ; 
- - - - - - 0x007031 01:B021: 04        .byte $04   ; 
- - - - - - 0x007032 01:B022: 04        .byte $04   ; 
- - - - - - 0x007033 01:B023: 04        .byte $04   ; 
- - - - - - 0x007034 01:B024: 04        .byte $04   ; 
off_B025_08:
- D 1 - I - 0x007035 01:B025: 6C        .byte $6C   ; 
- D 1 - I - 0x007036 01:B026: 6C        .byte $6C   ; 
- D 1 - I - 0x007037 01:B027: 6C        .byte $6C   ; 
- D 1 - I - 0x007038 01:B028: 6C        .byte $6C   ; 
- D 1 - I - 0x007039 01:B029: 6C        .byte $6C   ; 
- D 1 - I - 0x00703A 01:B02A: 7C        .byte $7C   ; 
- D 1 - I - 0x00703B 01:B02B: 54        .byte $54   ; 
- D 1 - I - 0x00703C 01:B02C: 42        .byte $42   ; 
- D 1 - I - 0x00703D 01:B02D: 14        .byte $14   ; 
- D 1 - I - 0x00703E 01:B02E: 00        .byte $00   ; 
- D 1 - I - 0x00703F 01:B02F: 00        .byte $00   ; 
- D 1 - I - 0x007040 01:B030: 00        .byte $00   ; 
- D 1 - I - 0x007041 01:B031: 00        .byte $00   ; 
- D 1 - I - 0x007042 01:B032: 00        .byte $00   ; 
- D 1 - I - 0x007043 01:B033: 00        .byte $00   ; 
- D 1 - I - 0x007044 01:B034: 00        .byte $00   ; 
- D 1 - I - 0x007045 01:B035: 23        .byte $23   ; 
- D 1 - I - 0x007046 01:B036: 00        .byte $00   ; 
- D 1 - I - 0x007047 01:B037: 00        .byte $00   ; 
- D 1 - I - 0x007048 01:B038: 00        .byte $00   ; 
- D 1 - I - 0x007049 01:B039: 14        .byte $14   ; 
- D 1 - I - 0x00704A 01:B03A: 00        .byte $00   ; 
off_B03B_12:
- D 1 - I - 0x00704B 01:B03B: 00        .byte $00   ; 
- D 1 - I - 0x00704C 01:B03C: 00        .byte $00   ; 
- D 1 - I - 0x00704D 01:B03D: 00        .byte $00   ; 
- D 1 - I - 0x00704E 01:B03E: 00        .byte $00   ; 
- D 1 - I - 0x00704F 01:B03F: 00        .byte $00   ; 
- D 1 - I - 0x007050 01:B040: 14        .byte $14   ; 
- D 1 - I - 0x007051 01:B041: 00        .byte $00   ; 
- D 1 - I - 0x007052 01:B042: 00        .byte $00   ; 
- D 1 - I - 0x007053 01:B043: 00        .byte $00   ; 
- D 1 - I - 0x007054 01:B044: 00        .byte $00   ; 
- D 1 - I - 0x007055 01:B045: 00        .byte $00   ; 
- D 1 - I - 0x007056 01:B046: 00        .byte $00   ; 
- D 1 - I - 0x007057 01:B047: 14        .byte $14   ; 
- D 1 - I - 0x007058 01:B048: 00        .byte $00   ; 
- D 1 - I - 0x007059 01:B049: 00        .byte $00   ; 
- D 1 - I - 0x00705A 01:B04A: 00        .byte $00   ; 
- D 1 - I - 0x00705B 01:B04B: 00        .byte $00   ; 
- D 1 - I - 0x00705C 01:B04C: 00        .byte $00   ; 
- D 1 - I - 0x00705D 01:B04D: 00        .byte $00   ; 
- D 1 - I - 0x00705E 01:B04E: 00        .byte $00   ; 
- D 1 - I - 0x00705F 01:B04F: 00        .byte $00   ; 
- D 1 - I - 0x007060 01:B050: 00        .byte $00   ; 
- D 1 - I - 0x007061 01:B051: 00        .byte $00   ; 
- D 1 - I - 0x007062 01:B052: 00        .byte $00   ; 
- D 1 - I - 0x007063 01:B053: 60        .byte $60   ; 
- D 1 - I - 0x007064 01:B054: 6C        .byte $6C   ; 
- D 1 - I - 0x007065 01:B055: 6E        .byte $6E   ; 
- D 1 - I - 0x007066 01:B056: 68        .byte $68   ; 
- D 1 - I - 0x007067 01:B057: 4E        .byte $4E   ; 
- D 1 - I - 0x007068 01:B058: 00        .byte $00   ; 
off_B059_11:
- D 1 - I - 0x007069 01:B059: 00        .byte $00   ; 
- D 1 - I - 0x00706A 01:B05A: 1B        .byte $1B   ; 
- D 1 - I - 0x00706B 01:B05B: 20        .byte $20   ; 
- D 1 - I - 0x00706C 01:B05C: 44        .byte $44   ; 
- D 1 - I - 0x00706D 01:B05D: 5C        .byte $5C   ; 
- D 1 - I - 0x00706E 01:B05E: 5D        .byte $5D   ; 
- D 1 - I - 0x00706F 01:B05F: 46        .byte $46   ; 
- D 1 - I - 0x007070 01:B060: 00        .byte $00   ; 
- D 1 - I - 0x007071 01:B061: 00        .byte $00   ; 
- D 1 - I - 0x007072 01:B062: 00        .byte $00   ; 
- D 1 - I - 0x007073 01:B063: 00        .byte $00   ; 
- D 1 - I - 0x007074 01:B064: 00        .byte $00   ; 
- D 1 - I - 0x007075 01:B065: 00        .byte $00   ; 
- D 1 - I - 0x007076 01:B066: 26        .byte $26   ; 
- D 1 - I - 0x007077 01:B067: B0        .byte $B0   ; 
- D 1 - I - 0x007078 01:B068: 95        .byte $95   ; 
- D 1 - I - 0x007079 01:B069: 96        .byte $96   ; 
- D 1 - I - 0x00707A 01:B06A: 96        .byte $96   ; 
- D 1 - I - 0x00707B 01:B06B: 97        .byte $97   ; 
- D 1 - I - 0x00707C 01:B06C: 00        .byte $00   ; 
- D 1 - I - 0x00707D 01:B06D: 00        .byte $00   ; 
- D 1 - I - 0x00707E 01:B06E: 00        .byte $00   ; 
- D 1 - I - 0x00707F 01:B06F: 00        .byte $00   ; 
- D 1 - I - 0x007080 01:B070: 00        .byte $00   ; 
- - - - - - 0x007081 01:B071: 00        .byte $00   ; 
- - - - - - 0x007082 01:B072: 00        .byte $00   ; 
- - - - - - 0x007083 01:B073: 00        .byte $00   ; 
- - - - - - 0x007084 01:B074: 15        .byte $15   ; 
- - - - - - 0x007085 01:B075: 00        .byte $00   ; 
- - - - - - 0x007086 01:B076: 00        .byte $00   ; 
- - - - - - 0x007087 01:B077: 00        .byte $00   ; 
- - - - - - 0x007088 01:B078: 00        .byte $00   ; 
off_B079_07:
- D 1 - I - 0x007089 01:B079: 50        .byte $50   ; 
- D 1 - I - 0x00708A 01:B07A: 50        .byte $50   ; 
- D 1 - I - 0x00708B 01:B07B: 00        .byte $00   ; 
- D 1 - I - 0x00708C 01:B07C: 00        .byte $00   ; 
- D 1 - I - 0x00708D 01:B07D: 00        .byte $00   ; 
- D 1 - I - 0x00708E 01:B07E: 00        .byte $00   ; 
- - - - - - 0x00708F 01:B07F: 00        .byte $00   ; 
- - - - - - 0x007090 01:B080: 00        .byte $00   ; 
- D 1 - I - 0x007091 01:B081: 55        .byte $55   ; 
- D 1 - I - 0x007092 01:B082: 55        .byte $55   ; 
- D 1 - I - 0x007093 01:B083: 00        .byte $00   ; 
- D 1 - I - 0x007094 01:B084: 00        .byte $00   ; 
- D 1 - I - 0x007095 01:B085: 00        .byte $00   ; 
- D 1 - I - 0x007096 01:B086: 00        .byte $00   ; 
- - - - - - 0x007097 01:B087: 00        .byte $00   ; 
- - - - - - 0x007098 01:B088: 00        .byte $00   ; 
- D 1 - I - 0x007099 01:B089: 45        .byte $45   ; 
- D 1 - I - 0x00709A 01:B08A: 55        .byte $55   ; 
- D 1 - I - 0x00709B 01:B08B: 00        .byte $00   ; 
- D 1 - I - 0x00709C 01:B08C: 00        .byte $00   ; 
- D 1 - I - 0x00709D 01:B08D: 00        .byte $00   ; 
- D 1 - I - 0x00709E 01:B08E: 00        .byte $00   ; 
- - - - - - 0x00709F 01:B08F: 00        .byte $00   ; 
- - - - - - 0x0070A0 01:B090: 00        .byte $00   ; 
- D 1 - I - 0x0070A1 01:B091: 00        .byte $00   ; 
- D 1 - I - 0x0070A2 01:B092: 00        .byte $00   ; 
- D 1 - I - 0x0070A3 01:B093: 00        .byte $00   ; 
- D 1 - I - 0x0070A4 01:B094: 00        .byte $00   ; 
- D 1 - I - 0x0070A5 01:B095: 00        .byte $00   ; 
- D 1 - I - 0x0070A6 01:B096: 00        .byte $00   ; 
- - - - - - 0x0070A7 01:B097: 00        .byte $00   ; 
- - - - - - 0x0070A8 01:B098: 00        .byte $00   ; 
off_B099_04:
- D 1 - I - 0x0070A9 01:B099: 00        .byte $00   ; 
- D 1 - I - 0x0070AA 01:B09A: 00        .byte $00   ; 
- D 1 - I - 0x0070AB 01:B09B: 00        .byte $00   ; 
- D 1 - I - 0x0070AC 01:B09C: 00        .byte $00   ; 
- D 1 - I - 0x0070AD 01:B09D: 00        .byte $00   ; 
- D 1 - I - 0x0070AE 01:B09E: 00        .byte $00   ; 
- D 1 - I - 0x0070AF 01:B09F: 00        .byte $00   ; 
- D 1 - I - 0x0070B0 01:B0A0: 00        .byte $00   ; 
- D 1 - I - 0x0070B1 01:B0A1: 00        .byte $00   ; 
- D 1 - I - 0x0070B2 01:B0A2: 00        .byte $00   ; 
- D 1 - I - 0x0070B3 01:B0A3: 00        .byte $00   ; 
- D 1 - I - 0x0070B4 01:B0A4: 00        .byte $00   ; 
- D 1 - I - 0x0070B5 01:B0A5: 00        .byte $00   ; 
- D 1 - I - 0x0070B6 01:B0A6: 00        .byte $00   ; 
- D 1 - I - 0x0070B7 01:B0A7: 00        .byte $00   ; 
- D 1 - I - 0x0070B8 01:B0A8: 00        .byte $00   ; 
- D 1 - I - 0x0070B9 01:B0A9: 00        .byte $00   ; 
- D 1 - I - 0x0070BA 01:B0AA: 00        .byte $00   ; 
- D 1 - I - 0x0070BB 01:B0AB: 00        .byte $00   ; 
- D 1 - I - 0x0070BC 01:B0AC: 00        .byte $00   ; 
- D 1 - I - 0x0070BD 01:B0AD: 00        .byte $00   ; 
- D 1 - I - 0x0070BE 01:B0AE: 00        .byte $00   ; 
- D 1 - I - 0x0070BF 01:B0AF: 00        .byte $00   ; 
- D 1 - I - 0x0070C0 01:B0B0: 00        .byte $00   ; 
- D 1 - I - 0x0070C1 01:B0B1: 00        .byte $00   ; 
- D 1 - I - 0x0070C2 01:B0B2: 00        .byte $00   ; 
- D 1 - I - 0x0070C3 01:B0B3: 00        .byte $00   ; 
- D 1 - I - 0x0070C4 01:B0B4: 00        .byte $00   ; 
- D 1 - I - 0x0070C5 01:B0B5: 00        .byte $00   ; 
- D 1 - I - 0x0070C6 01:B0B6: 00        .byte $00   ; 
- D 1 - I - 0x0070C7 01:B0B7: 00        .byte $00   ; 
- D 1 - I - 0x0070C8 01:B0B8: 00        .byte $00   ; 



loc_B0B9:
C D 1 - - - 0x0070C9 01:B0B9: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x0070CB 01:B0BB: 30 0C     BMI bra_B0C9_RTS
C - - - - - 0x0070CD 01:B0BD: AD E8 05  LDA ram_след_hi_2006
C - - - - - 0x0070D0 01:B0C0: F0 07     BEQ bra_B0C9_RTS
C - - - - - 0x0070D2 01:B0C2: C9 01     CMP #$01
C - - - - - 0x0070D4 01:B0C4: F0 04     BEQ bra_B0CA
C - - - - - 0x0070D6 01:B0C6: 4C 30 B4  JMP loc_B430
bra_B0C9_RTS:
- - - - - - 0x0070D9 01:B0C9: 60        RTS
bra_B0CA:
C - - - - - 0x0070DA 01:B0CA: A5 4C     LDA ram_для_2000
C - - - - - 0x0070DC 01:B0CC: 09 04     ORA #$04
C - - - - - 0x0070DE 01:B0CE: 85 4C     STA ram_для_2000
C - - - - - 0x0070E0 01:B0D0: 8D 00 20  STA $2000
bra_B0D3:
C - - - - - 0x0070E3 01:B0D3: AD ED 05  LDA ram_след_lo_2006 + 1
C - - - - - 0x0070E6 01:B0D6: 29 01     AND #$01
C - - - - - 0x0070E8 01:B0D8: 0A        ASL
C - - - - - 0x0070E9 01:B0D9: A8        TAY
C - - - - - 0x0070EA 01:B0DA: B9 80 B1  LDA tbl_B180,Y
C - - - - - 0x0070ED 01:B0DD: 85 40     STA ram_0040
C - - - - - 0x0070EF 01:B0DF: B9 81 B1  LDA tbl_B180 + 1,Y
C - - - - - 0x0070F2 01:B0E2: 85 41     STA ram_0041
C - - - - - 0x0070F4 01:B0E4: AD E9 05  LDA ram_след_hi_2006 + 1
C - - - - - 0x0070F7 01:B0E7: 0A        ASL
C - - - - - 0x0070F8 01:B0E8: A8        TAY
C - - - - - 0x0070F9 01:B0E9: B1 40     LDA (ram_0040),Y
C - - - - - 0x0070FB 01:B0EB: 85 0C     STA ram_000C
C - - - - - 0x0070FD 01:B0ED: C8        INY
C - - - - - 0x0070FE 01:B0EE: B1 40     LDA (ram_0040),Y
C - - - - - 0x007100 01:B0F0: 85 0D     STA ram_000D
C - - - - - 0x007102 01:B0F2: A2 11     LDX #$11
C - - - - - 0x007104 01:B0F4: AD EB 05  LDA ram_след_hi_2006 + 3
C - - - - - 0x007107 01:B0F7: C9 24     CMP #$24
C - - - - - 0x007109 01:B0F9: D0 0D     BNE bra_B108
C - - - - - 0x00710B 01:B0FB: AD EA 05  LDA ram_след_hi_2006 + 2
C - - - - - 0x00710E 01:B0FE: C9 04     CMP #$04
C - - - - - 0x007110 01:B100: 90 06     BCC bra_B108
C - - - - - 0x007112 01:B102: C9 1C     CMP #$1C
C - - - - - 0x007114 01:B104: B0 02     BCS bra_B108
C - - - - - 0x007116 01:B106: A2 03     LDX #$03
bra_B108:
C - - - - - 0x007118 01:B108: AD 02 20  LDA $2002
C - - - - - 0x00711B 01:B10B: AD EB 05  LDA ram_след_hi_2006 + 3
C - - - - - 0x00711E 01:B10E: 8D 06 20  STA $2006
C - - - - - 0x007121 01:B111: AD EA 05  LDA ram_след_hi_2006 + 2
C - - - - - 0x007124 01:B114: 8D 06 20  STA $2006
C - - - - - 0x007127 01:B117: A0 00     LDY #$00
bra_B119:
C - - - - - 0x007129 01:B119: B1 0C     LDA (ram_000C),Y
C - - - - - 0x00712B 01:B11B: 8D 07 20  STA $2007
C - - - - - 0x00712E 01:B11E: C8        INY
C - - - - - 0x00712F 01:B11F: CA        DEX
C - - - - - 0x007130 01:B120: 10 F7     BPL bra_B119
C - - - - - 0x007132 01:B122: EE E9 05  INC ram_след_hi_2006 + 1
C - - - - - 0x007135 01:B125: EE EA 05  INC ram_след_hi_2006 + 2
C - - - - - 0x007138 01:B128: AD EA 05  LDA ram_след_hi_2006 + 2
C - - - - - 0x00713B 01:B12B: 29 01     AND #$01
C - - - - - 0x00713D 01:B12D: D0 A4     BNE bra_B0D3
C - - - - - 0x00713F 01:B12F: AD EA 05  LDA ram_след_hi_2006 + 2
C - - - - - 0x007142 01:B132: C9 20     CMP #$20
C - - - - - 0x007144 01:B134: 90 16     BCC bra_B14C
C - - - - - 0x007146 01:B136: A9 00     LDA #$00
C - - - - - 0x007148 01:B138: 8D EA 05  STA ram_след_hi_2006 + 2
C - - - - - 0x00714B 01:B13B: AD EB 05  LDA ram_след_hi_2006 + 3
C - - - - - 0x00714E 01:B13E: C9 20     CMP #$20
C - - - - - 0x007150 01:B140: F0 05     BEQ bra_B147
C - - - - - 0x007152 01:B142: A9 20     LDA #$20
C - - - - - 0x007154 01:B144: 4C 49 B1  JMP loc_B149
bra_B147:
C - - - - - 0x007157 01:B147: A9 24     LDA #$24
loc_B149:
C D 1 - - - 0x007159 01:B149: 8D EB 05  STA ram_след_hi_2006 + 3
bra_B14C:
C - - - - - 0x00715C 01:B14C: AD E9 05  LDA ram_след_hi_2006 + 1
C - - - - - 0x00715F 01:B14F: C9 12     CMP #$12
C - - - - - 0x007161 01:B151: 90 2C     BCC bra_B17F_RTS
C - - - - - 0x007163 01:B153: A9 00     LDA #$00
C - - - - - 0x007165 01:B155: 8D E9 05  STA ram_след_hi_2006 + 1
C - - - - - 0x007168 01:B158: EE ED 05  INC ram_след_lo_2006 + 1
C - - - - - 0x00716B 01:B15B: AD EA 05  LDA ram_след_hi_2006 + 2
C - - - - - 0x00716E 01:B15E: 38        SEC
C - - - - - 0x00716F 01:B15F: E9 14     SBC #$14
C - - - - - 0x007171 01:B161: B0 11     BCS bra_B174
C - - - - - 0x007173 01:B163: 29 1F     AND #$1F
C - - - - - 0x007175 01:B165: 8D EA 05  STA ram_след_hi_2006 + 2
C - - - - - 0x007178 01:B168: AD EB 05  LDA ram_след_hi_2006 + 3
C - - - - - 0x00717B 01:B16B: C9 20     CMP #$20
C - - - - - 0x00717D 01:B16D: F0 0B     BEQ bra_B17A
C - - - - - 0x00717F 01:B16F: A9 20     LDA #$20
C - - - - - 0x007181 01:B171: 4C 7C B1  JMP loc_B17C
bra_B174:
C - - - - - 0x007184 01:B174: 8D EA 05  STA ram_след_hi_2006 + 2
C - - - - - 0x007187 01:B177: 4C 7F B1  JMP loc_B17F_RTS
bra_B17A:
C - - - - - 0x00718A 01:B17A: A9 24     LDA #$24
loc_B17C:
C D 1 - - - 0x00718C 01:B17C: 8D EB 05  STA ram_след_hi_2006 + 3
bra_B17F_RTS:
loc_B17F_RTS:
C D 1 - - - 0x00718F 01:B17F: 60        RTS



tbl_B180:
- D 1 - - - 0x007190 01:B180: 84 B1     .word off_B184_00
- D 1 - - - 0x007192 01:B182: EC B2     .word off_B2EC_01



off_B184_00:
- D 1 - I - 0x007194 01:B184: A8 B1     .word off_B1A8_00
- D 1 - I - 0x007196 01:B186: BA B1     .word off_B1BA_01
- D 1 - I - 0x007198 01:B188: CC B1     .word off_B1CC_02
- D 1 - I - 0x00719A 01:B18A: DE B1     .word off_B1DE_03
- D 1 - I - 0x00719C 01:B18C: F0 B1     .word off_B1F0_04
- D 1 - I - 0x00719E 01:B18E: 02 B2     .word off_B202_05
- D 1 - I - 0x0071A0 01:B190: 14 B2     .word off_B214_06
- D 1 - I - 0x0071A2 01:B192: 26 B2     .word off_B226_07
- D 1 - I - 0x0071A4 01:B194: 38 B2     .word off_B238_08
- D 1 - I - 0x0071A6 01:B196: 4A B2     .word off_B24A_09
- D 1 - I - 0x0071A8 01:B198: 5C B2     .word off_B25C_0A
- D 1 - I - 0x0071AA 01:B19A: 6E B2     .word off_B26E_0B
- D 1 - I - 0x0071AC 01:B19C: 80 B2     .word off_B280_0C
- D 1 - I - 0x0071AE 01:B19E: 92 B2     .word off_B292_0D
- D 1 - I - 0x0071B0 01:B1A0: A4 B2     .word off_B2A4_0E
- D 1 - I - 0x0071B2 01:B1A2: B6 B2     .word off_B2B6_0F
- D 1 - I - 0x0071B4 01:B1A4: C8 B2     .word off_B2C8_10
- D 1 - I - 0x0071B6 01:B1A6: DA B2     .word off_B2DA_11



off_B1A8_00:
- D 1 - I - 0x0071B8 01:B1A8: 60        .byte $60   ; 
- D 1 - I - 0x0071B9 01:B1A9: 70        .byte $70   ; 
- D 1 - I - 0x0071BA 01:B1AA: 62        .byte $62   ; 
- D 1 - I - 0x0071BB 01:B1AB: 72        .byte $72   ; 
- D 1 - I - 0x0071BC 01:B1AC: 60        .byte $60   ; 
- D 1 - I - 0x0071BD 01:B1AD: 70        .byte $70   ; 
- D 1 - I - 0x0071BE 01:B1AE: 62        .byte $62   ; 
- D 1 - I - 0x0071BF 01:B1AF: 72        .byte $72   ; 
- D 1 - I - 0x0071C0 01:B1B0: 60        .byte $60   ; 
- D 1 - I - 0x0071C1 01:B1B1: 70        .byte $70   ; 
- D 1 - I - 0x0071C2 01:B1B2: 62        .byte $62   ; 
- D 1 - I - 0x0071C3 01:B1B3: 72        .byte $72   ; 
- D 1 - I - 0x0071C4 01:B1B4: 60        .byte $60   ; 
- D 1 - I - 0x0071C5 01:B1B5: 70        .byte $70   ; 
- D 1 - I - 0x0071C6 01:B1B6: 62        .byte $62   ; 
- D 1 - I - 0x0071C7 01:B1B7: 72        .byte $72   ; 
- D 1 - I - 0x0071C8 01:B1B8: 60        .byte $60   ; 
- D 1 - I - 0x0071C9 01:B1B9: 70        .byte $70   ; 



off_B1BA_01:
- D 1 - I - 0x0071CA 01:B1BA: 61        .byte $61   ; 
- D 1 - I - 0x0071CB 01:B1BB: 64        .byte $64   ; 
- D 1 - I - 0x0071CC 01:B1BC: 74        .byte $74   ; 
- D 1 - I - 0x0071CD 01:B1BD: 73        .byte $73   ; 
- D 1 - I - 0x0071CE 01:B1BE: 61        .byte $61   ; 
- D 1 - I - 0x0071CF 01:B1BF: 64        .byte $64   ; 
- D 1 - I - 0x0071D0 01:B1C0: 74        .byte $74   ; 
- D 1 - I - 0x0071D1 01:B1C1: 73        .byte $73   ; 
- D 1 - I - 0x0071D2 01:B1C2: 61        .byte $61   ; 
- D 1 - I - 0x0071D3 01:B1C3: 64        .byte $64   ; 
- D 1 - I - 0x0071D4 01:B1C4: 74        .byte $74   ; 
- D 1 - I - 0x0071D5 01:B1C5: 73        .byte $73   ; 
- D 1 - I - 0x0071D6 01:B1C6: 61        .byte $61   ; 
- D 1 - I - 0x0071D7 01:B1C7: 64        .byte $64   ; 
- D 1 - I - 0x0071D8 01:B1C8: 74        .byte $74   ; 
- D 1 - I - 0x0071D9 01:B1C9: 73        .byte $73   ; 
- D 1 - I - 0x0071DA 01:B1CA: 61        .byte $61   ; 
- D 1 - I - 0x0071DB 01:B1CB: 64        .byte $64   ; 



off_B1CC_02:
- D 1 - I - 0x0071DC 01:B1CC: 55        .byte $55   ; 
- D 1 - I - 0x0071DD 01:B1CD: 65        .byte $65   ; 
- D 1 - I - 0x0071DE 01:B1CE: 75        .byte $75   ; 
- D 1 - I - 0x0071DF 01:B1CF: 70        .byte $70   ; 
- D 1 - I - 0x0071E0 01:B1D0: 55        .byte $55   ; 
- D 1 - I - 0x0071E1 01:B1D1: 65        .byte $65   ; 
- D 1 - I - 0x0071E2 01:B1D2: 75        .byte $75   ; 
- D 1 - I - 0x0071E3 01:B1D3: 70        .byte $70   ; 
- D 1 - I - 0x0071E4 01:B1D4: 55        .byte $55   ; 
- D 1 - I - 0x0071E5 01:B1D5: 65        .byte $65   ; 
- D 1 - I - 0x0071E6 01:B1D6: 75        .byte $75   ; 
- D 1 - I - 0x0071E7 01:B1D7: 70        .byte $70   ; 
- D 1 - I - 0x0071E8 01:B1D8: 55        .byte $55   ; 
- D 1 - I - 0x0071E9 01:B1D9: 65        .byte $65   ; 
- D 1 - I - 0x0071EA 01:B1DA: 75        .byte $75   ; 
- D 1 - I - 0x0071EB 01:B1DB: 70        .byte $70   ; 
- D 1 - I - 0x0071EC 01:B1DC: 55        .byte $55   ; 
- D 1 - I - 0x0071ED 01:B1DD: 65        .byte $65   ; 



off_B1DE_03:
- D 1 - I - 0x0071EE 01:B1DE: 56        .byte $56   ; 
- D 1 - I - 0x0071EF 01:B1DF: 66        .byte $66   ; 
- D 1 - I - 0x0071F0 01:B1E0: 76        .byte $76   ; 
- D 1 - I - 0x0071F1 01:B1E1: 50        .byte $50   ; 
- D 1 - I - 0x0071F2 01:B1E2: 56        .byte $56   ; 
- D 1 - I - 0x0071F3 01:B1E3: 66        .byte $66   ; 
- D 1 - I - 0x0071F4 01:B1E4: 76        .byte $76   ; 
- D 1 - I - 0x0071F5 01:B1E5: 50        .byte $50   ; 
- D 1 - I - 0x0071F6 01:B1E6: 56        .byte $56   ; 
- D 1 - I - 0x0071F7 01:B1E7: 66        .byte $66   ; 
- D 1 - I - 0x0071F8 01:B1E8: 76        .byte $76   ; 
- D 1 - I - 0x0071F9 01:B1E9: 50        .byte $50   ; 
- D 1 - I - 0x0071FA 01:B1EA: 56        .byte $56   ; 
- D 1 - I - 0x0071FB 01:B1EB: 66        .byte $66   ; 
- D 1 - I - 0x0071FC 01:B1EC: 76        .byte $76   ; 
- D 1 - I - 0x0071FD 01:B1ED: 50        .byte $50   ; 
- D 1 - I - 0x0071FE 01:B1EE: 56        .byte $56   ; 
- D 1 - I - 0x0071FF 01:B1EF: 66        .byte $66   ; 



off_B1F0_04:
- D 1 - I - 0x007200 01:B1F0: 43        .byte $43   ; 
- D 1 - I - 0x007201 01:B1F1: 53        .byte $53   ; 
- D 1 - I - 0x007202 01:B1F2: 41        .byte $41   ; 
- D 1 - I - 0x007203 01:B1F3: 51        .byte $51   ; 
- D 1 - I - 0x007204 01:B1F4: 43        .byte $43   ; 
- D 1 - I - 0x007205 01:B1F5: 53        .byte $53   ; 
- D 1 - I - 0x007206 01:B1F6: 41        .byte $41   ; 
- D 1 - I - 0x007207 01:B1F7: 51        .byte $51   ; 
- D 1 - I - 0x007208 01:B1F8: 43        .byte $43   ; 
- D 1 - I - 0x007209 01:B1F9: 53        .byte $53   ; 
- D 1 - I - 0x00720A 01:B1FA: 41        .byte $41   ; 
- D 1 - I - 0x00720B 01:B1FB: 51        .byte $51   ; 
- D 1 - I - 0x00720C 01:B1FC: 43        .byte $43   ; 
- D 1 - I - 0x00720D 01:B1FD: 53        .byte $53   ; 
- D 1 - I - 0x00720E 01:B1FE: 41        .byte $41   ; 
- D 1 - I - 0x00720F 01:B1FF: 51        .byte $51   ; 
- D 1 - I - 0x007210 01:B200: 43        .byte $43   ; 
- D 1 - I - 0x007211 01:B201: 53        .byte $53   ; 



off_B202_05:
- D 1 - I - 0x007212 01:B202: 67        .byte $67   ; 
- D 1 - I - 0x007213 01:B203: 54        .byte $54   ; 
- D 1 - I - 0x007214 01:B204: 42        .byte $42   ; 
- D 1 - I - 0x007215 01:B205: 57        .byte $57   ; 
- D 1 - I - 0x007216 01:B206: 67        .byte $67   ; 
- D 1 - I - 0x007217 01:B207: 54        .byte $54   ; 
- D 1 - I - 0x007218 01:B208: 42        .byte $42   ; 
- D 1 - I - 0x007219 01:B209: 57        .byte $57   ; 
- D 1 - I - 0x00721A 01:B20A: 67        .byte $67   ; 
- D 1 - I - 0x00721B 01:B20B: 54        .byte $54   ; 
- D 1 - I - 0x00721C 01:B20C: 42        .byte $42   ; 
- D 1 - I - 0x00721D 01:B20D: 57        .byte $57   ; 
- D 1 - I - 0x00721E 01:B20E: 67        .byte $67   ; 
- D 1 - I - 0x00721F 01:B20F: 54        .byte $54   ; 
- D 1 - I - 0x007220 01:B210: 42        .byte $42   ; 
- D 1 - I - 0x007221 01:B211: 57        .byte $57   ; 
- D 1 - I - 0x007222 01:B212: 67        .byte $67   ; 
- D 1 - I - 0x007223 01:B213: 54        .byte $54   ; 



off_B214_06:
- D 1 - I - 0x007224 01:B214: 68        .byte $68   ; 
- D 1 - I - 0x007225 01:B215: 78        .byte $78   ; 
- D 1 - I - 0x007226 01:B216: 5A        .byte $5A   ; 
- D 1 - I - 0x007227 01:B217: 58        .byte $58   ; 
- D 1 - I - 0x007228 01:B218: 68        .byte $68   ; 
- D 1 - I - 0x007229 01:B219: 78        .byte $78   ; 
- D 1 - I - 0x00722A 01:B21A: 5A        .byte $5A   ; 
- D 1 - I - 0x00722B 01:B21B: 58        .byte $58   ; 
- D 1 - I - 0x00722C 01:B21C: 68        .byte $68   ; 
- D 1 - I - 0x00722D 01:B21D: 78        .byte $78   ; 
- D 1 - I - 0x00722E 01:B21E: 5A        .byte $5A   ; 
- D 1 - I - 0x00722F 01:B21F: 58        .byte $58   ; 
- D 1 - I - 0x007230 01:B220: 68        .byte $68   ; 
- D 1 - I - 0x007231 01:B221: 78        .byte $78   ; 
- D 1 - I - 0x007232 01:B222: 5A        .byte $5A   ; 
- D 1 - I - 0x007233 01:B223: 58        .byte $58   ; 
- D 1 - I - 0x007234 01:B224: 68        .byte $68   ; 
- D 1 - I - 0x007235 01:B225: 78        .byte $78   ; 



off_B226_07:
- D 1 - I - 0x007236 01:B226: 69        .byte $69   ; 
- D 1 - I - 0x007237 01:B227: 79        .byte $79   ; 
- D 1 - I - 0x007238 01:B228: 5B        .byte $5B   ; 
- D 1 - I - 0x007239 01:B229: 59        .byte $59   ; 
- D 1 - I - 0x00723A 01:B22A: 69        .byte $69   ; 
- D 1 - I - 0x00723B 01:B22B: 79        .byte $79   ; 
- D 1 - I - 0x00723C 01:B22C: 5B        .byte $5B   ; 
- D 1 - I - 0x00723D 01:B22D: 59        .byte $59   ; 
- D 1 - I - 0x00723E 01:B22E: 69        .byte $69   ; 
- D 1 - I - 0x00723F 01:B22F: 79        .byte $79   ; 
- D 1 - I - 0x007240 01:B230: 5B        .byte $5B   ; 
- D 1 - I - 0x007241 01:B231: 59        .byte $59   ; 
- D 1 - I - 0x007242 01:B232: 69        .byte $69   ; 
- D 1 - I - 0x007243 01:B233: 79        .byte $79   ; 
- D 1 - I - 0x007244 01:B234: 5B        .byte $5B   ; 
- D 1 - I - 0x007245 01:B235: 59        .byte $59   ; 
- D 1 - I - 0x007246 01:B236: 69        .byte $69   ; 
- D 1 - I - 0x007247 01:B237: 79        .byte $79   ; 



off_B238_08:
- D 1 - I - 0x007248 01:B238: 7A        .byte $7A   ; 
- D 1 - I - 0x007249 01:B239: 5C        .byte $5C   ; 
- D 1 - I - 0x00724A 01:B23A: 6C        .byte $6C   ; 
- D 1 - I - 0x00724B 01:B23B: 6A        .byte $6A   ; 
- D 1 - I - 0x00724C 01:B23C: 7A        .byte $7A   ; 
- D 1 - I - 0x00724D 01:B23D: 5C        .byte $5C   ; 
- D 1 - I - 0x00724E 01:B23E: 6C        .byte $6C   ; 
- D 1 - I - 0x00724F 01:B23F: 6A        .byte $6A   ; 
- D 1 - I - 0x007250 01:B240: 7A        .byte $7A   ; 
- D 1 - I - 0x007251 01:B241: 5C        .byte $5C   ; 
- D 1 - I - 0x007252 01:B242: 6C        .byte $6C   ; 
- D 1 - I - 0x007253 01:B243: 6A        .byte $6A   ; 
- D 1 - I - 0x007254 01:B244: 7A        .byte $7A   ; 
- D 1 - I - 0x007255 01:B245: 5C        .byte $5C   ; 
- D 1 - I - 0x007256 01:B246: 6C        .byte $6C   ; 
- D 1 - I - 0x007257 01:B247: 6A        .byte $6A   ; 
- D 1 - I - 0x007258 01:B248: 7A        .byte $7A   ; 
- D 1 - I - 0x007259 01:B249: 5C        .byte $5C   ; 



off_B24A_09:
- D 1 - I - 0x00725A 01:B24A: 7B        .byte $7B   ; 
- D 1 - I - 0x00725B 01:B24B: 7C        .byte $7C   ; 
- D 1 - I - 0x00725C 01:B24C: 7D        .byte $7D   ; 
- D 1 - I - 0x00725D 01:B24D: 6B        .byte $6B   ; 
- D 1 - I - 0x00725E 01:B24E: 7B        .byte $7B   ; 
- D 1 - I - 0x00725F 01:B24F: 7C        .byte $7C   ; 
- D 1 - I - 0x007260 01:B250: 7D        .byte $7D   ; 
- D 1 - I - 0x007261 01:B251: 6B        .byte $6B   ; 
- D 1 - I - 0x007262 01:B252: 7B        .byte $7B   ; 
- D 1 - I - 0x007263 01:B253: 7C        .byte $7C   ; 
- D 1 - I - 0x007264 01:B254: 7D        .byte $7D   ; 
- D 1 - I - 0x007265 01:B255: 6B        .byte $6B   ; 
- D 1 - I - 0x007266 01:B256: 7B        .byte $7B   ; 
- D 1 - I - 0x007267 01:B257: 7C        .byte $7C   ; 
- D 1 - I - 0x007268 01:B258: 7D        .byte $7D   ; 
- D 1 - I - 0x007269 01:B259: 6B        .byte $6B   ; 
- D 1 - I - 0x00726A 01:B25A: 7B        .byte $7B   ; 
- D 1 - I - 0x00726B 01:B25B: 7C        .byte $7C   ; 



off_B25C_0A:
- D 1 - I - 0x00726C 01:B25C: 7E        .byte $7E   ; 
- D 1 - I - 0x00726D 01:B25D: 6E        .byte $6E   ; 
- D 1 - I - 0x00726E 01:B25E: 7A        .byte $7A   ; 
- D 1 - I - 0x00726F 01:B25F: 5E        .byte $5E   ; 
- D 1 - I - 0x007270 01:B260: 7E        .byte $7E   ; 
- D 1 - I - 0x007271 01:B261: 6E        .byte $6E   ; 
- D 1 - I - 0x007272 01:B262: 7A        .byte $7A   ; 
- D 1 - I - 0x007273 01:B263: 5E        .byte $5E   ; 
- D 1 - I - 0x007274 01:B264: 7E        .byte $7E   ; 
- D 1 - I - 0x007275 01:B265: 6E        .byte $6E   ; 
- D 1 - I - 0x007276 01:B266: 7A        .byte $7A   ; 
- D 1 - I - 0x007277 01:B267: 5E        .byte $5E   ; 
- D 1 - I - 0x007278 01:B268: 7E        .byte $7E   ; 
- D 1 - I - 0x007279 01:B269: 6E        .byte $6E   ; 
- D 1 - I - 0x00727A 01:B26A: 7A        .byte $7A   ; 
- D 1 - I - 0x00727B 01:B26B: 5E        .byte $5E   ; 
- D 1 - I - 0x00727C 01:B26C: 7E        .byte $7E   ; 
- D 1 - I - 0x00727D 01:B26D: 6E        .byte $6E   ; 



off_B26E_0B:
- D 1 - I - 0x00727E 01:B26E: 7F        .byte $7F   ; 
- D 1 - I - 0x00727F 01:B26F: 6F        .byte $6F   ; 
- D 1 - I - 0x007280 01:B270: 7B        .byte $7B   ; 
- D 1 - I - 0x007281 01:B271: 5F        .byte $5F   ; 
- D 1 - I - 0x007282 01:B272: 7F        .byte $7F   ; 
- D 1 - I - 0x007283 01:B273: 6F        .byte $6F   ; 
- D 1 - I - 0x007284 01:B274: 7B        .byte $7B   ; 
- D 1 - I - 0x007285 01:B275: 5F        .byte $5F   ; 
- D 1 - I - 0x007286 01:B276: 7F        .byte $7F   ; 
- D 1 - I - 0x007287 01:B277: 6F        .byte $6F   ; 
- D 1 - I - 0x007288 01:B278: 7B        .byte $7B   ; 
- D 1 - I - 0x007289 01:B279: 5F        .byte $5F   ; 
- D 1 - I - 0x00728A 01:B27A: 7F        .byte $7F   ; 
- D 1 - I - 0x00728B 01:B27B: 6F        .byte $6F   ; 
- D 1 - I - 0x00728C 01:B27C: 7B        .byte $7B   ; 
- D 1 - I - 0x00728D 01:B27D: 5F        .byte $5F   ; 
- D 1 - I - 0x00728E 01:B27E: 7F        .byte $7F   ; 
- D 1 - I - 0x00728F 01:B27F: 6F        .byte $6F   ; 



off_B280_0C:
- D 1 - I - 0x007290 01:B280: 43        .byte $43   ; 
- D 1 - I - 0x007291 01:B281: C9        .byte $C9   ; 
- D 1 - I - 0x007292 01:B282: 41        .byte $41   ; 
- D 1 - I - 0x007293 01:B283: 51        .byte $51   ; 
- D 1 - I - 0x007294 01:B284: 43        .byte $43   ; 
- D 1 - I - 0x007295 01:B285: C9        .byte $C9   ; 
- D 1 - I - 0x007296 01:B286: 41        .byte $41   ; 
- D 1 - I - 0x007297 01:B287: 51        .byte $51   ; 
- D 1 - I - 0x007298 01:B288: 43        .byte $43   ; 
- D 1 - I - 0x007299 01:B289: C9        .byte $C9   ; 
- D 1 - I - 0x00729A 01:B28A: 41        .byte $41   ; 
- D 1 - I - 0x00729B 01:B28B: 51        .byte $51   ; 
- D 1 - I - 0x00729C 01:B28C: 43        .byte $43   ; 
- D 1 - I - 0x00729D 01:B28D: C9        .byte $C9   ; 
- D 1 - I - 0x00729E 01:B28E: 41        .byte $41   ; 
- D 1 - I - 0x00729F 01:B28F: 51        .byte $51   ; 
- D 1 - I - 0x0072A0 01:B290: 43        .byte $43   ; 
- D 1 - I - 0x0072A1 01:B291: C9        .byte $C9   ; 



off_B292_0D:
- D 1 - I - 0x0072A2 01:B292: 44        .byte $44   ; 
- D 1 - I - 0x0072A3 01:B293: 54        .byte $54   ; 
- D 1 - I - 0x0072A4 01:B294: 42        .byte $42   ; 
- D 1 - I - 0x0072A5 01:B295: 52        .byte $52   ; 
- D 1 - I - 0x0072A6 01:B296: 44        .byte $44   ; 
- D 1 - I - 0x0072A7 01:B297: 54        .byte $54   ; 
- D 1 - I - 0x0072A8 01:B298: 42        .byte $42   ; 
- D 1 - I - 0x0072A9 01:B299: 52        .byte $52   ; 
- D 1 - I - 0x0072AA 01:B29A: 44        .byte $44   ; 
- D 1 - I - 0x0072AB 01:B29B: 54        .byte $54   ; 
- D 1 - I - 0x0072AC 01:B29C: 42        .byte $42   ; 
- D 1 - I - 0x0072AD 01:B29D: 52        .byte $52   ; 
- D 1 - I - 0x0072AE 01:B29E: 44        .byte $44   ; 
- D 1 - I - 0x0072AF 01:B29F: 54        .byte $54   ; 
- D 1 - I - 0x0072B0 01:B2A0: 42        .byte $42   ; 
- D 1 - I - 0x0072B1 01:B2A1: 52        .byte $52   ; 
- D 1 - I - 0x0072B2 01:B2A2: 44        .byte $44   ; 
- D 1 - I - 0x0072B3 01:B2A3: 54        .byte $54   ; 



off_B2A4_0E:
- D 1 - I - 0x0072B4 01:B2A4: CC        .byte $CC   ; 
- D 1 - I - 0x0072B5 01:B2A5: DC        .byte $DC   ; 
- D 1 - I - 0x0072B6 01:B2A6: CA        .byte $CA   ; 
- D 1 - I - 0x0072B7 01:B2A7: DA        .byte $DA   ; 
- D 1 - I - 0x0072B8 01:B2A8: CC        .byte $CC   ; 
- D 1 - I - 0x0072B9 01:B2A9: DC        .byte $DC   ; 
- D 1 - I - 0x0072BA 01:B2AA: CA        .byte $CA   ; 
- D 1 - I - 0x0072BB 01:B2AB: DA        .byte $DA   ; 
- D 1 - I - 0x0072BC 01:B2AC: CC        .byte $CC   ; 
- D 1 - I - 0x0072BD 01:B2AD: DC        .byte $DC   ; 
- D 1 - I - 0x0072BE 01:B2AE: CA        .byte $CA   ; 
- D 1 - I - 0x0072BF 01:B2AF: DA        .byte $DA   ; 
- D 1 - I - 0x0072C0 01:B2B0: CC        .byte $CC   ; 
- D 1 - I - 0x0072C1 01:B2B1: DC        .byte $DC   ; 
- D 1 - I - 0x0072C2 01:B2B2: CA        .byte $CA   ; 
- D 1 - I - 0x0072C3 01:B2B3: DA        .byte $DA   ; 
- D 1 - I - 0x0072C4 01:B2B4: CC        .byte $CC   ; 
- D 1 - I - 0x0072C5 01:B2B5: DC        .byte $DC   ; 



off_B2B6_0F:
- D 1 - I - 0x0072C6 01:B2B6: CD        .byte $CD   ; 
- D 1 - I - 0x0072C7 01:B2B7: DD        .byte $DD   ; 
- D 1 - I - 0x0072C8 01:B2B8: CB        .byte $CB   ; 
- D 1 - I - 0x0072C9 01:B2B9: DB        .byte $DB   ; 
- D 1 - I - 0x0072CA 01:B2BA: CD        .byte $CD   ; 
- D 1 - I - 0x0072CB 01:B2BB: DD        .byte $DD   ; 
- D 1 - I - 0x0072CC 01:B2BC: CB        .byte $CB   ; 
- D 1 - I - 0x0072CD 01:B2BD: DB        .byte $DB   ; 
- D 1 - I - 0x0072CE 01:B2BE: CD        .byte $CD   ; 
- D 1 - I - 0x0072CF 01:B2BF: DD        .byte $DD   ; 
- D 1 - I - 0x0072D0 01:B2C0: CB        .byte $CB   ; 
- D 1 - I - 0x0072D1 01:B2C1: DB        .byte $DB   ; 
- D 1 - I - 0x0072D2 01:B2C2: CD        .byte $CD   ; 
- D 1 - I - 0x0072D3 01:B2C3: DD        .byte $DD   ; 
- D 1 - I - 0x0072D4 01:B2C4: CB        .byte $CB   ; 
- D 1 - I - 0x0072D5 01:B2C5: DB        .byte $DB   ; 
- D 1 - I - 0x0072D6 01:B2C6: CD        .byte $CD   ; 
- D 1 - I - 0x0072D7 01:B2C7: DD        .byte $DD   ; 



off_B2C8_10:
- D 1 - I - 0x0072D8 01:B2C8: 60        .byte $60   ; 
- D 1 - I - 0x0072D9 01:B2C9: 70        .byte $70   ; 
- D 1 - I - 0x0072DA 01:B2CA: 62        .byte $62   ; 
- D 1 - I - 0x0072DB 01:B2CB: 72        .byte $72   ; 
- D 1 - I - 0x0072DC 01:B2CC: 60        .byte $60   ; 
- D 1 - I - 0x0072DD 01:B2CD: 70        .byte $70   ; 
- D 1 - I - 0x0072DE 01:B2CE: 62        .byte $62   ; 
- D 1 - I - 0x0072DF 01:B2CF: 72        .byte $72   ; 
- D 1 - I - 0x0072E0 01:B2D0: 60        .byte $60   ; 
- D 1 - I - 0x0072E1 01:B2D1: 70        .byte $70   ; 
- D 1 - I - 0x0072E2 01:B2D2: 62        .byte $62   ; 
- D 1 - I - 0x0072E3 01:B2D3: 72        .byte $72   ; 
- D 1 - I - 0x0072E4 01:B2D4: 60        .byte $60   ; 
- D 1 - I - 0x0072E5 01:B2D5: 70        .byte $70   ; 
- D 1 - I - 0x0072E6 01:B2D6: 62        .byte $62   ; 
- D 1 - I - 0x0072E7 01:B2D7: 72        .byte $72   ; 
- D 1 - I - 0x0072E8 01:B2D8: 60        .byte $60   ; 
- D 1 - I - 0x0072E9 01:B2D9: 70        .byte $70   ; 



off_B2DA_11:
- D 1 - I - 0x0072EA 01:B2DA: 61        .byte $61   ; 
- D 1 - I - 0x0072EB 01:B2DB: 71        .byte $71   ; 
- D 1 - I - 0x0072EC 01:B2DC: 63        .byte $63   ; 
- D 1 - I - 0x0072ED 01:B2DD: 73        .byte $73   ; 
- D 1 - I - 0x0072EE 01:B2DE: 61        .byte $61   ; 
- D 1 - I - 0x0072EF 01:B2DF: 71        .byte $71   ; 
- D 1 - I - 0x0072F0 01:B2E0: 63        .byte $63   ; 
- D 1 - I - 0x0072F1 01:B2E1: 73        .byte $73   ; 
- D 1 - I - 0x0072F2 01:B2E2: 61        .byte $61   ; 
- D 1 - I - 0x0072F3 01:B2E3: 71        .byte $71   ; 
- D 1 - I - 0x0072F4 01:B2E4: 63        .byte $63   ; 
- D 1 - I - 0x0072F5 01:B2E5: 73        .byte $73   ; 
- D 1 - I - 0x0072F6 01:B2E6: 61        .byte $61   ; 
- D 1 - I - 0x0072F7 01:B2E7: 71        .byte $71   ; 
- D 1 - I - 0x0072F8 01:B2E8: 63        .byte $63   ; 
- D 1 - I - 0x0072F9 01:B2E9: 73        .byte $73   ; 
- D 1 - I - 0x0072FA 01:B2EA: 61        .byte $61   ; 
- D 1 - I - 0x0072FB 01:B2EB: 71        .byte $71   ; 



off_B2EC_01:
- D 1 - I - 0x0072FC 01:B2EC: 10 B3     .word off_B310_00
- D 1 - I - 0x0072FE 01:B2EE: 22 B3     .word off_B322_01
- D 1 - I - 0x007300 01:B2F0: 34 B3     .word off_B334_02
- D 1 - I - 0x007302 01:B2F2: 46 B3     .word off_B346_03
- D 1 - I - 0x007304 01:B2F4: 58 B3     .word off_B358_04
- D 1 - I - 0x007306 01:B2F6: 6A B3     .word off_B36A_05
- D 1 - I - 0x007308 01:B2F8: 7C B3     .word off_B37C_06
- D 1 - I - 0x00730A 01:B2FA: 8E B3     .word off_B38E_07
- D 1 - I - 0x00730C 01:B2FC: A0 B3     .word off_B3A0_08
- D 1 - I - 0x00730E 01:B2FE: B2 B3     .word off_B3B2_09
- D 1 - I - 0x007310 01:B300: C4 B3     .word off_B3C4_0A
- D 1 - I - 0x007312 01:B302: D6 B3     .word off_B3D6_0B
- D 1 - I - 0x007314 01:B304: 58 B3     .word off_B358_0C
- D 1 - I - 0x007316 01:B306: 6A B3     .word off_B36A_0D
- D 1 - I - 0x007318 01:B308: E8 B3     .word off_B3E8_0E
- D 1 - I - 0x00731A 01:B30A: FA B3     .word off_B3FA_0F
- D 1 - I - 0x00731C 01:B30C: 0C B4     .word off_B40C_10
- D 1 - I - 0x00731E 01:B30E: 1E B4     .word off_B41E_11



off_B310_00:
- D 1 - I - 0x007320 01:B310: 62        .byte $62   ; 
- D 1 - I - 0x007321 01:B311: 72        .byte $72   ; 
- D 1 - I - 0x007322 01:B312: 60        .byte $60   ; 
- D 1 - I - 0x007323 01:B313: 70        .byte $70   ; 
- D 1 - I - 0x007324 01:B314: 62        .byte $62   ; 
- D 1 - I - 0x007325 01:B315: 72        .byte $72   ; 
- D 1 - I - 0x007326 01:B316: 60        .byte $60   ; 
- D 1 - I - 0x007327 01:B317: 70        .byte $70   ; 
- D 1 - I - 0x007328 01:B318: 62        .byte $62   ; 
- D 1 - I - 0x007329 01:B319: 72        .byte $72   ; 
- D 1 - I - 0x00732A 01:B31A: 60        .byte $60   ; 
- D 1 - I - 0x00732B 01:B31B: 70        .byte $70   ; 
- D 1 - I - 0x00732C 01:B31C: 62        .byte $62   ; 
- D 1 - I - 0x00732D 01:B31D: 72        .byte $72   ; 
- D 1 - I - 0x00732E 01:B31E: 60        .byte $60   ; 
- D 1 - I - 0x00732F 01:B31F: 70        .byte $70   ; 
- D 1 - I - 0x007330 01:B320: 62        .byte $62   ; 
- D 1 - I - 0x007331 01:B321: 72        .byte $72   ; 



off_B322_01:
- D 1 - I - 0x007332 01:B322: 63        .byte $63   ; 
- D 1 - I - 0x007333 01:B323: 73        .byte $73   ; 
- D 1 - I - 0x007334 01:B324: 61        .byte $61   ; 
- D 1 - I - 0x007335 01:B325: 71        .byte $71   ; 
- D 1 - I - 0x007336 01:B326: 63        .byte $63   ; 
- D 1 - I - 0x007337 01:B327: 73        .byte $73   ; 
- D 1 - I - 0x007338 01:B328: 61        .byte $61   ; 
- D 1 - I - 0x007339 01:B329: 71        .byte $71   ; 
- D 1 - I - 0x00733A 01:B32A: 63        .byte $63   ; 
- D 1 - I - 0x00733B 01:B32B: 73        .byte $73   ; 
- D 1 - I - 0x00733C 01:B32C: 61        .byte $61   ; 
- D 1 - I - 0x00733D 01:B32D: 71        .byte $71   ; 
- D 1 - I - 0x00733E 01:B32E: 63        .byte $63   ; 
- D 1 - I - 0x00733F 01:B32F: 73        .byte $73   ; 
- D 1 - I - 0x007340 01:B330: 61        .byte $61   ; 
- D 1 - I - 0x007341 01:B331: 71        .byte $71   ; 
- D 1 - I - 0x007342 01:B332: 63        .byte $63   ; 
- D 1 - I - 0x007343 01:B333: 73        .byte $73   ; 



off_B334_02:
- D 1 - I - 0x007344 01:B334: 43        .byte $43   ; 
- D 1 - I - 0x007345 01:B335: 53        .byte $53   ; 
- D 1 - I - 0x007346 01:B336: CC        .byte $CC   ; 
- D 1 - I - 0x007347 01:B337: DC        .byte $DC   ; 
- D 1 - I - 0x007348 01:B338: 43        .byte $43   ; 
- D 1 - I - 0x007349 01:B339: 53        .byte $53   ; 
- D 1 - I - 0x00734A 01:B33A: CC        .byte $CC   ; 
- D 1 - I - 0x00734B 01:B33B: DC        .byte $DC   ; 
- D 1 - I - 0x00734C 01:B33C: 43        .byte $43   ; 
- D 1 - I - 0x00734D 01:B33D: 53        .byte $53   ; 
- D 1 - I - 0x00734E 01:B33E: CC        .byte $CC   ; 
- D 1 - I - 0x00734F 01:B33F: DC        .byte $DC   ; 
- D 1 - I - 0x007350 01:B340: 43        .byte $43   ; 
- D 1 - I - 0x007351 01:B341: 53        .byte $53   ; 
- D 1 - I - 0x007352 01:B342: CC        .byte $CC   ; 
- D 1 - I - 0x007353 01:B343: DC        .byte $DC   ; 
- D 1 - I - 0x007354 01:B344: 43        .byte $43   ; 
- D 1 - I - 0x007355 01:B345: 53        .byte $53   ; 



off_B346_03:
- D 1 - I - 0x007356 01:B346: 44        .byte $44   ; 
- D 1 - I - 0x007357 01:B347: 54        .byte $54   ; 
- D 1 - I - 0x007358 01:B348: CD        .byte $CD   ; 
- D 1 - I - 0x007359 01:B349: DD        .byte $DD   ; 
- D 1 - I - 0x00735A 01:B34A: 44        .byte $44   ; 
- D 1 - I - 0x00735B 01:B34B: 54        .byte $54   ; 
- D 1 - I - 0x00735C 01:B34C: CD        .byte $CD   ; 
- D 1 - I - 0x00735D 01:B34D: DD        .byte $DD   ; 
- D 1 - I - 0x00735E 01:B34E: 44        .byte $44   ; 
- D 1 - I - 0x00735F 01:B34F: 54        .byte $54   ; 
- D 1 - I - 0x007360 01:B350: CD        .byte $CD   ; 
- D 1 - I - 0x007361 01:B351: DD        .byte $DD   ; 
- D 1 - I - 0x007362 01:B352: 44        .byte $44   ; 
- D 1 - I - 0x007363 01:B353: 54        .byte $54   ; 
- D 1 - I - 0x007364 01:B354: CD        .byte $CD   ; 
- D 1 - I - 0x007365 01:B355: DD        .byte $DD   ; 
- D 1 - I - 0x007366 01:B356: 44        .byte $44   ; 
- D 1 - I - 0x007367 01:B357: 54        .byte $54   ; 



off_B358_04:
off_B358_0C:
- D 1 - I - 0x007368 01:B358: 41        .byte $41   ; 
- D 1 - I - 0x007369 01:B359: 51        .byte $51   ; 
- D 1 - I - 0x00736A 01:B35A: 43        .byte $43   ; 
- D 1 - I - 0x00736B 01:B35B: 53        .byte $53   ; 
- D 1 - I - 0x00736C 01:B35C: 41        .byte $41   ; 
- D 1 - I - 0x00736D 01:B35D: 51        .byte $51   ; 
- D 1 - I - 0x00736E 01:B35E: 43        .byte $43   ; 
- D 1 - I - 0x00736F 01:B35F: 53        .byte $53   ; 
- D 1 - I - 0x007370 01:B360: 41        .byte $41   ; 
- D 1 - I - 0x007371 01:B361: 51        .byte $51   ; 
- D 1 - I - 0x007372 01:B362: 43        .byte $43   ; 
- D 1 - I - 0x007373 01:B363: 53        .byte $53   ; 
- D 1 - I - 0x007374 01:B364: 41        .byte $41   ; 
- D 1 - I - 0x007375 01:B365: 51        .byte $51   ; 
- D 1 - I - 0x007376 01:B366: 43        .byte $43   ; 
- D 1 - I - 0x007377 01:B367: 53        .byte $53   ; 
- D 1 - I - 0x007378 01:B368: 41        .byte $41   ; 
- D 1 - I - 0x007379 01:B369: 51        .byte $51   ; 



off_B36A_05:
off_B36A_0D:
- D 1 - I - 0x00737A 01:B36A: 42        .byte $42   ; 
- D 1 - I - 0x00737B 01:B36B: 52        .byte $52   ; 
- D 1 - I - 0x00737C 01:B36C: 44        .byte $44   ; 
- D 1 - I - 0x00737D 01:B36D: 54        .byte $54   ; 
- D 1 - I - 0x00737E 01:B36E: 42        .byte $42   ; 
- D 1 - I - 0x00737F 01:B36F: 52        .byte $52   ; 
- D 1 - I - 0x007380 01:B370: 44        .byte $44   ; 
- D 1 - I - 0x007381 01:B371: 54        .byte $54   ; 
- D 1 - I - 0x007382 01:B372: 42        .byte $42   ; 
- D 1 - I - 0x007383 01:B373: 52        .byte $52   ; 
- D 1 - I - 0x007384 01:B374: 44        .byte $44   ; 
- D 1 - I - 0x007385 01:B375: 54        .byte $54   ; 
- D 1 - I - 0x007386 01:B376: 42        .byte $42   ; 
- D 1 - I - 0x007387 01:B377: 52        .byte $52   ; 
- D 1 - I - 0x007388 01:B378: 44        .byte $44   ; 
- D 1 - I - 0x007389 01:B379: 54        .byte $54   ; 
- D 1 - I - 0x00738A 01:B37A: 42        .byte $42   ; 
- D 1 - I - 0x00738B 01:B37B: 52        .byte $52   ; 



off_B37C_06:
- D 1 - I - 0x00738C 01:B37C: 7A        .byte $7A   ; 
- D 1 - I - 0x00738D 01:B37D: 5E        .byte $5E   ; 
- D 1 - I - 0x00738E 01:B37E: 7E        .byte $7E   ; 
- D 1 - I - 0x00738F 01:B37F: 6E        .byte $6E   ; 
- D 1 - I - 0x007390 01:B380: 7A        .byte $7A   ; 
- D 1 - I - 0x007391 01:B381: 5E        .byte $5E   ; 
- D 1 - I - 0x007392 01:B382: 7E        .byte $7E   ; 
- D 1 - I - 0x007393 01:B383: 6E        .byte $6E   ; 
- D 1 - I - 0x007394 01:B384: 7A        .byte $7A   ; 
- D 1 - I - 0x007395 01:B385: 5E        .byte $5E   ; 
- D 1 - I - 0x007396 01:B386: 7E        .byte $7E   ; 
- D 1 - I - 0x007397 01:B387: 6E        .byte $6E   ; 
- D 1 - I - 0x007398 01:B388: 7A        .byte $7A   ; 
- D 1 - I - 0x007399 01:B389: 5E        .byte $5E   ; 
- D 1 - I - 0x00739A 01:B38A: 7E        .byte $7E   ; 
- D 1 - I - 0x00739B 01:B38B: 6E        .byte $6E   ; 
- D 1 - I - 0x00739C 01:B38C: 7A        .byte $7A   ; 
- D 1 - I - 0x00739D 01:B38D: 5E        .byte $5E   ; 



off_B38E_07:
- D 1 - I - 0x00739E 01:B38E: DE        .byte $DE   ; 
- D 1 - I - 0x00739F 01:B38F: E0        .byte $E0   ; 
- D 1 - I - 0x0073A0 01:B390: F0        .byte $F0   ; 
- D 1 - I - 0x0073A1 01:B391: D9        .byte $D9   ; 
- D 1 - I - 0x0073A2 01:B392: DE        .byte $DE   ; 
- D 1 - I - 0x0073A3 01:B393: E0        .byte $E0   ; 
- D 1 - I - 0x0073A4 01:B394: F0        .byte $F0   ; 
- D 1 - I - 0x0073A5 01:B395: D9        .byte $D9   ; 
- D 1 - I - 0x0073A6 01:B396: DE        .byte $DE   ; 
- D 1 - I - 0x0073A7 01:B397: E0        .byte $E0   ; 
- D 1 - I - 0x0073A8 01:B398: F0        .byte $F0   ; 
- D 1 - I - 0x0073A9 01:B399: D9        .byte $D9   ; 
- D 1 - I - 0x0073AA 01:B39A: DE        .byte $DE   ; 
- D 1 - I - 0x0073AB 01:B39B: E0        .byte $E0   ; 
- D 1 - I - 0x0073AC 01:B39C: F0        .byte $F0   ; 
- D 1 - I - 0x0073AD 01:B39D: D9        .byte $D9   ; 
- D 1 - I - 0x0073AE 01:B39E: DE        .byte $DE   ; 
- D 1 - I - 0x0073AF 01:B39F: E0        .byte $E0   ; 



off_B3A0_08:
- D 1 - I - 0x0073B0 01:B3A0: 6C        .byte $6C   ; 
- D 1 - I - 0x0073B1 01:B3A1: 6A        .byte $6A   ; 
- D 1 - I - 0x0073B2 01:B3A2: 7A        .byte $7A   ; 
- D 1 - I - 0x0073B3 01:B3A3: 5C        .byte $5C   ; 
- D 1 - I - 0x0073B4 01:B3A4: 6C        .byte $6C   ; 
- D 1 - I - 0x0073B5 01:B3A5: 6A        .byte $6A   ; 
- D 1 - I - 0x0073B6 01:B3A6: 7A        .byte $7A   ; 
- D 1 - I - 0x0073B7 01:B3A7: 5C        .byte $5C   ; 
- D 1 - I - 0x0073B8 01:B3A8: 6C        .byte $6C   ; 
- D 1 - I - 0x0073B9 01:B3A9: 6A        .byte $6A   ; 
- D 1 - I - 0x0073BA 01:B3AA: 7A        .byte $7A   ; 
- D 1 - I - 0x0073BB 01:B3AB: 5C        .byte $5C   ; 
- D 1 - I - 0x0073BC 01:B3AC: 6C        .byte $6C   ; 
- D 1 - I - 0x0073BD 01:B3AD: 6A        .byte $6A   ; 
- D 1 - I - 0x0073BE 01:B3AE: 7A        .byte $7A   ; 
- D 1 - I - 0x0073BF 01:B3AF: 5C        .byte $5C   ; 
- D 1 - I - 0x0073C0 01:B3B0: 6C        .byte $6C   ; 
- D 1 - I - 0x0073C1 01:B3B1: 6A        .byte $6A   ; 



off_B3B2_09:
- D 1 - I - 0x0073C2 01:B3B2: 6D        .byte $6D   ; 
- D 1 - I - 0x0073C3 01:B3B3: CE        .byte $CE   ; 
- D 1 - I - 0x0073C4 01:B3B4: DE        .byte $DE   ; 
- D 1 - I - 0x0073C5 01:B3B5: 5D        .byte $5D   ; 
- D 1 - I - 0x0073C6 01:B3B6: 6D        .byte $6D   ; 
- D 1 - I - 0x0073C7 01:B3B7: CE        .byte $CE   ; 
- D 1 - I - 0x0073C8 01:B3B8: DE        .byte $DE   ; 
- D 1 - I - 0x0073C9 01:B3B9: 5D        .byte $5D   ; 
- D 1 - I - 0x0073CA 01:B3BA: 6D        .byte $6D   ; 
- D 1 - I - 0x0073CB 01:B3BB: CE        .byte $CE   ; 
- D 1 - I - 0x0073CC 01:B3BC: DE        .byte $DE   ; 
- D 1 - I - 0x0073CD 01:B3BD: 5D        .byte $5D   ; 
- D 1 - I - 0x0073CE 01:B3BE: 6D        .byte $6D   ; 
- D 1 - I - 0x0073CF 01:B3BF: CE        .byte $CE   ; 
- D 1 - I - 0x0073D0 01:B3C0: DE        .byte $DE   ; 
- D 1 - I - 0x0073D1 01:B3C1: 5D        .byte $5D   ; 
- D 1 - I - 0x0073D2 01:B3C2: 6D        .byte $6D   ; 
- D 1 - I - 0x0073D3 01:B3C3: CE        .byte $CE   ; 



off_B3C4_0A:
- D 1 - I - 0x0073D4 01:B3C4: DF        .byte $DF   ; 
- D 1 - I - 0x0073D5 01:B3C5: 58        .byte $58   ; 
- D 1 - I - 0x0073D6 01:B3C6: 68        .byte $68   ; 
- D 1 - I - 0x0073D7 01:B3C7: CF        .byte $CF   ; 
- D 1 - I - 0x0073D8 01:B3C8: DF        .byte $DF   ; 
- D 1 - I - 0x0073D9 01:B3C9: 58        .byte $58   ; 
- D 1 - I - 0x0073DA 01:B3CA: 68        .byte $68   ; 
- D 1 - I - 0x0073DB 01:B3CB: CF        .byte $CF   ; 
- D 1 - I - 0x0073DC 01:B3CC: DF        .byte $DF   ; 
- D 1 - I - 0x0073DD 01:B3CD: 58        .byte $58   ; 
- D 1 - I - 0x0073DE 01:B3CE: 68        .byte $68   ; 
- D 1 - I - 0x0073DF 01:B3CF: CF        .byte $CF   ; 
- D 1 - I - 0x0073E0 01:B3D0: DF        .byte $DF   ; 
- D 1 - I - 0x0073E1 01:B3D1: 58        .byte $58   ; 
- D 1 - I - 0x0073E2 01:B3D2: 68        .byte $68   ; 
- D 1 - I - 0x0073E3 01:B3D3: CF        .byte $CF   ; 
- D 1 - I - 0x0073E4 01:B3D4: DF        .byte $DF   ; 
- D 1 - I - 0x0073E5 01:B3D5: 58        .byte $58   ; 



off_B3D6_0B:
- D 1 - I - 0x0073E6 01:B3D6: 5B        .byte $5B   ; 
- D 1 - I - 0x0073E7 01:B3D7: 59        .byte $59   ; 
- D 1 - I - 0x0073E8 01:B3D8: 69        .byte $69   ; 
- D 1 - I - 0x0073E9 01:B3D9: 79        .byte $79   ; 
- D 1 - I - 0x0073EA 01:B3DA: 5B        .byte $5B   ; 
- D 1 - I - 0x0073EB 01:B3DB: 59        .byte $59   ; 
- D 1 - I - 0x0073EC 01:B3DC: 69        .byte $69   ; 
- D 1 - I - 0x0073ED 01:B3DD: 79        .byte $79   ; 
- D 1 - I - 0x0073EE 01:B3DE: 5B        .byte $5B   ; 
- D 1 - I - 0x0073EF 01:B3DF: 59        .byte $59   ; 
- D 1 - I - 0x0073F0 01:B3E0: 69        .byte $69   ; 
- D 1 - I - 0x0073F1 01:B3E1: 79        .byte $79   ; 
- D 1 - I - 0x0073F2 01:B3E2: 5B        .byte $5B   ; 
- D 1 - I - 0x0073F3 01:B3E3: 59        .byte $59   ; 
- D 1 - I - 0x0073F4 01:B3E4: 69        .byte $69   ; 
- D 1 - I - 0x0073F5 01:B3E5: 79        .byte $79   ; 
- D 1 - I - 0x0073F6 01:B3E6: 5B        .byte $5B   ; 
- D 1 - I - 0x0073F7 01:B3E7: 59        .byte $59   ; 



off_B3E8_0E:
- D 1 - I - 0x0073F8 01:B3E8: 75        .byte $75   ; 
- D 1 - I - 0x0073F9 01:B3E9: 70        .byte $70   ; 
- D 1 - I - 0x0073FA 01:B3EA: 41        .byte $41   ; 
- D 1 - I - 0x0073FB 01:B3EB: 51        .byte $51   ; 
- D 1 - I - 0x0073FC 01:B3EC: 75        .byte $75   ; 
- D 1 - I - 0x0073FD 01:B3ED: 70        .byte $70   ; 
- D 1 - I - 0x0073FE 01:B3EE: 41        .byte $41   ; 
- D 1 - I - 0x0073FF 01:B3EF: 51        .byte $51   ; 
- D 1 - I - 0x007400 01:B3F0: 75        .byte $75   ; 
- D 1 - I - 0x007401 01:B3F1: 70        .byte $70   ; 
- D 1 - I - 0x007402 01:B3F2: 41        .byte $41   ; 
- D 1 - I - 0x007403 01:B3F3: 51        .byte $51   ; 
- D 1 - I - 0x007404 01:B3F4: 75        .byte $75   ; 
- D 1 - I - 0x007405 01:B3F5: 70        .byte $70   ; 
- D 1 - I - 0x007406 01:B3F6: 41        .byte $41   ; 
- D 1 - I - 0x007407 01:B3F7: 51        .byte $51   ; 
- D 1 - I - 0x007408 01:B3F8: 75        .byte $75   ; 
- D 1 - I - 0x007409 01:B3F9: 70        .byte $70   ; 



off_B3FA_0F:
- D 1 - I - 0x00740A 01:B3FA: 76        .byte $76   ; 
- D 1 - I - 0x00740B 01:B3FB: 71        .byte $71   ; 
- D 1 - I - 0x00740C 01:B3FC: 42        .byte $42   ; 
- D 1 - I - 0x00740D 01:B3FD: 52        .byte $52   ; 
- D 1 - I - 0x00740E 01:B3FE: 76        .byte $76   ; 
- D 1 - I - 0x00740F 01:B3FF: 71        .byte $71   ; 
- D 1 - I - 0x007410 01:B400: 42        .byte $42   ; 
- D 1 - I - 0x007411 01:B401: 52        .byte $52   ; 
- D 1 - I - 0x007412 01:B402: 76        .byte $76   ; 
- D 1 - I - 0x007413 01:B403: 71        .byte $71   ; 
- D 1 - I - 0x007414 01:B404: 42        .byte $42   ; 
- D 1 - I - 0x007415 01:B405: 52        .byte $52   ; 
- D 1 - I - 0x007416 01:B406: 76        .byte $76   ; 
- D 1 - I - 0x007417 01:B407: 71        .byte $71   ; 
- D 1 - I - 0x007418 01:B408: 42        .byte $42   ; 
- D 1 - I - 0x007419 01:B409: 52        .byte $52   ; 
- D 1 - I - 0x00741A 01:B40A: 76        .byte $76   ; 
- D 1 - I - 0x00741B 01:B40B: 71        .byte $71   ; 



off_B40C_10:
- D 1 - I - 0x00741C 01:B40C: 62        .byte $62   ; 
- D 1 - I - 0x00741D 01:B40D: 72        .byte $72   ; 
- D 1 - I - 0x00741E 01:B40E: 60        .byte $60   ; 
- D 1 - I - 0x00741F 01:B40F: 70        .byte $70   ; 
- D 1 - I - 0x007420 01:B410: 62        .byte $62   ; 
- D 1 - I - 0x007421 01:B411: 72        .byte $72   ; 
- D 1 - I - 0x007422 01:B412: 60        .byte $60   ; 
- D 1 - I - 0x007423 01:B413: 70        .byte $70   ; 
- D 1 - I - 0x007424 01:B414: 62        .byte $62   ; 
- D 1 - I - 0x007425 01:B415: 72        .byte $72   ; 
- D 1 - I - 0x007426 01:B416: 60        .byte $60   ; 
- D 1 - I - 0x007427 01:B417: 70        .byte $70   ; 
- D 1 - I - 0x007428 01:B418: 62        .byte $62   ; 
- D 1 - I - 0x007429 01:B419: 72        .byte $72   ; 
- D 1 - I - 0x00742A 01:B41A: 60        .byte $60   ; 
- D 1 - I - 0x00742B 01:B41B: 70        .byte $70   ; 
- D 1 - I - 0x00742C 01:B41C: 62        .byte $62   ; 
- D 1 - I - 0x00742D 01:B41D: 72        .byte $72   ; 



off_B41E_11:
- D 1 - I - 0x00742E 01:B41E: 63        .byte $63   ; 
- D 1 - I - 0x00742F 01:B41F: 73        .byte $73   ; 
- D 1 - I - 0x007430 01:B420: 61        .byte $61   ; 
- D 1 - I - 0x007431 01:B421: 71        .byte $71   ; 
- D 1 - I - 0x007432 01:B422: 63        .byte $63   ; 
- D 1 - I - 0x007433 01:B423: 73        .byte $73   ; 
- D 1 - I - 0x007434 01:B424: 61        .byte $61   ; 
- D 1 - I - 0x007435 01:B425: 71        .byte $71   ; 
- D 1 - I - 0x007436 01:B426: 63        .byte $63   ; 
- D 1 - I - 0x007437 01:B427: 73        .byte $73   ; 
- D 1 - I - 0x007438 01:B428: 61        .byte $61   ; 
- D 1 - I - 0x007439 01:B429: 71        .byte $71   ; 
- D 1 - I - 0x00743A 01:B42A: 63        .byte $63   ; 
- D 1 - I - 0x00743B 01:B42B: 73        .byte $73   ; 
- D 1 - I - 0x00743C 01:B42C: 61        .byte $61   ; 
- D 1 - I - 0x00743D 01:B42D: 71        .byte $71   ; 
- D 1 - I - 0x00743E 01:B42E: 63        .byte $63   ; 
- D 1 - I - 0x00743F 01:B42F: 73        .byte $73   ; 



loc_B430:
C D 1 - - - 0x007440 01:B430: A5 4C     LDA ram_для_2000
C - - - - - 0x007442 01:B432: 29 FB     AND #$FB
C - - - - - 0x007444 01:B434: 85 4C     STA ram_для_2000
C - - - - - 0x007446 01:B436: 8D 00 20  STA $2000
C - - - - - 0x007449 01:B439: AD E9 05  LDA ram_след_hi_2006 + 1
C - - - - - 0x00744C 01:B43C: 29 7F     AND #$7F
C - - - - - 0x00744E 01:B43E: 0A        ASL
C - - - - - 0x00744F 01:B43F: A8        TAY
C - - - - - 0x007450 01:B440: B9 D2 B4  LDA tbl_B4D2,Y
C - - - - - 0x007453 01:B443: 85 0C     STA ram_000C
C - - - - - 0x007455 01:B445: B9 D3 B4  LDA tbl_B4D2 + 1,Y
C - - - - - 0x007458 01:B448: 85 0D     STA ram_000D
C - - - - - 0x00745A 01:B44A: A0 00     LDY #$00
bra_B44C:
C - - - - - 0x00745C 01:B44C: A2 00     LDX #$00
C - - - - - 0x00745E 01:B44E: AD E9 05  LDA ram_след_hi_2006 + 1
C - - - - - 0x007461 01:B451: 10 02     BPL bra_B455
C - - - - - 0x007463 01:B453: A2 08     LDX #$08
bra_B455:
C - - - - - 0x007465 01:B455: B9 EC B4  LDA tbl_B4EC,Y
C - - - - - 0x007468 01:B458: 8D EB 05  STA ram_след_hi_2006 + 3
C - - - - - 0x00746B 01:B45B: B1 0C     LDA (ram_000C),Y
C - - - - - 0x00746D 01:B45D: 4A        LSR
C - - - - - 0x00746E 01:B45E: 4A        LSR
C - - - - - 0x00746F 01:B45F: 4A        LSR
C - - - - - 0x007470 01:B460: 4A        LSR
C - - - - - 0x007471 01:B461: 4A        LSR
C - - - - - 0x007472 01:B462: 51 0C     EOR (ram_000C),Y
C - - - - - 0x007474 01:B464: 29 02     AND #$02
C - - - - - 0x007476 01:B466: F0 04     BEQ bra_B46C
C - - - - - 0x007478 01:B468: E8        INX
C - - - - - 0x007479 01:B469: E8        INX
C - - - - - 0x00747A 01:B46A: E8        INX
C - - - - - 0x00747B 01:B46B: E8        INX
bra_B46C:
C - - - - - 0x00747C 01:B46C: B1 0C     LDA (ram_000C),Y
C - - - - - 0x00747E 01:B46E: 8D EA 05  STA ram_след_hi_2006 + 2
C - - - - - 0x007481 01:B471: C8        INY
C - - - - - 0x007482 01:B472: AD 02 20  LDA $2002
C - - - - - 0x007485 01:B475: AD EB 05  LDA ram_след_hi_2006 + 3
C - - - - - 0x007488 01:B478: 8D 06 20  STA $2006
C - - - - - 0x00748B 01:B47B: AD EA 05  LDA ram_след_hi_2006 + 2
C - - - - - 0x00748E 01:B47E: 8D 06 20  STA $2006
C - - - - - 0x007491 01:B481: BD 20 06  LDA ram_0620,X
C - - - - - 0x007494 01:B484: 8D 07 20  STA $2007
C - - - - - 0x007497 01:B487: BD 21 06  LDA ram_0621,X
C - - - - - 0x00749A 01:B48A: 8D 07 20  STA $2007
C - - - - - 0x00749D 01:B48D: AD EA 05  LDA ram_след_hi_2006 + 2
C - - - - - 0x0074A0 01:B490: 18        CLC
C - - - - - 0x0074A1 01:B491: 69 20     ADC #$20
C - - - - - 0x0074A3 01:B493: 8D EA 05  STA ram_след_hi_2006 + 2
C - - - - - 0x0074A6 01:B496: AD 02 20  LDA $2002
C - - - - - 0x0074A9 01:B499: AD EB 05  LDA ram_след_hi_2006 + 3
C - - - - - 0x0074AC 01:B49C: 8D 06 20  STA $2006
C - - - - - 0x0074AF 01:B49F: AD EA 05  LDA ram_след_hi_2006 + 2
C - - - - - 0x0074B2 01:B4A2: 8D 06 20  STA $2006
C - - - - - 0x0074B5 01:B4A5: BD 22 06  LDA ram_0622,X
C - - - - - 0x0074B8 01:B4A8: 8D 07 20  STA $2007
C - - - - - 0x0074BB 01:B4AB: BD 23 06  LDA ram_0623,X
C - - - - - 0x0074BE 01:B4AE: 8D 07 20  STA $2007
C - - - - - 0x0074C1 01:B4B1: C0 08     CPY #$08
C - - - - - 0x0074C3 01:B4B3: 90 97     BCC bra_B44C
C - - - - - 0x0074C5 01:B4B5: EE E9 05  INC ram_след_hi_2006 + 1
C - - - - - 0x0074C8 01:B4B8: AD E9 05  LDA ram_след_hi_2006 + 1
C - - - - - 0x0074CB 01:B4BB: 29 7F     AND #$7F
C - - - - - 0x0074CD 01:B4BD: C9 0D     CMP #$0D
C - - - - - 0x0074CF 01:B4BF: 90 08     BCC bra_B4C9
C - - - - - 0x0074D1 01:B4C1: AD E9 05  LDA ram_след_hi_2006 + 1
C - - - - - 0x0074D4 01:B4C4: 29 80     AND #$80
C - - - - - 0x0074D6 01:B4C6: 8D E9 05  STA ram_след_hi_2006 + 1
bra_B4C9:
C - - - - - 0x0074D9 01:B4C9: AD E9 05  LDA ram_след_hi_2006 + 1
C - - - - - 0x0074DC 01:B4CC: 49 80     EOR #$80
C - - - - - 0x0074DE 01:B4CE: 8D E9 05  STA ram_след_hi_2006 + 1
C - - - - - 0x0074E1 01:B4D1: 60        RTS



tbl_B4D2:
- D 1 - - - 0x0074E2 01:B4D2: F4 B4     .word off_B4F4_00
- D 1 - - - 0x0074E4 01:B4D4: FC B4     .word off_B4FC_01
- D 1 - - - 0x0074E6 01:B4D6: 04 B5     .word off_B504_02
- D 1 - - - 0x0074E8 01:B4D8: 0C B5     .word off_B50C_03
- D 1 - - - 0x0074EA 01:B4DA: 14 B5     .word off_B514_04
- D 1 - - - 0x0074EC 01:B4DC: 1C B5     .word off_B51C_05
- D 1 - - - 0x0074EE 01:B4DE: 24 B5     .word off_B524_06
- D 1 - - - 0x0074F0 01:B4E0: 2C B5     .word off_B52C_07
- D 1 - - - 0x0074F2 01:B4E2: 34 B5     .word off_B534_08
- D 1 - - - 0x0074F4 01:B4E4: 3C B5     .word off_B53C_09
- D 1 - - - 0x0074F6 01:B4E6: 44 B5     .word off_B544_0A
- D 1 - - - 0x0074F8 01:B4E8: 4C B5     .word off_B54C_0B
- D 1 - - - 0x0074FA 01:B4EA: 54 B5     .word off_B554_0C



tbl_B4EC:
- D 1 - - - 0x0074FC 01:B4EC: 24        .byte $24   ; 
- D 1 - - - 0x0074FD 01:B4ED: 25        .byte $25   ; 
- D 1 - - - 0x0074FE 01:B4EE: 20        .byte $20   ; 
- D 1 - - - 0x0074FF 01:B4EF: 20        .byte $20   ; 
- D 1 - - - 0x007500 01:B4F0: 20        .byte $20   ; 
- D 1 - - - 0x007501 01:B4F1: 21        .byte $21   ; 
- D 1 - - - 0x007502 01:B4F2: 21        .byte $21   ; 
- D 1 - - - 0x007503 01:B4F3: 21        .byte $21   ; 



off_B4F4_00:
- D 1 - I - 0x007504 01:B4F4: 52        .byte $52   ; 
- D 1 - I - 0x007505 01:B4F5: 5C        .byte $5C   ; 
- D 1 - I - 0x007506 01:B4F6: 90        .byte $90   ; 
- D 1 - I - 0x007507 01:B4F7: 5A        .byte $5A   ; 
- D 1 - I - 0x007508 01:B4F8: C2        .byte $C2   ; 
- D 1 - I - 0x007509 01:B4F9: 8C        .byte $8C   ; 
- D 1 - I - 0x00750A 01:B4FA: 5E        .byte $5E   ; 
- D 1 - I - 0x00750B 01:B4FB: C4        .byte $C4   ; 



off_B4FC_01:
- D 1 - I - 0x00750C 01:B4FC: 5E        .byte $5E   ; 
- D 1 - I - 0x00750D 01:B4FD: 82        .byte $82   ; 
- D 1 - I - 0x00750E 01:B4FE: D2        .byte $D2   ; 
- D 1 - I - 0x00750F 01:B4FF: 56        .byte $56   ; 
- D 1 - I - 0x007510 01:B500: CA        .byte $CA   ; 
- D 1 - I - 0x007511 01:B501: D8        .byte $D8   ; 
- D 1 - I - 0x007512 01:B502: 5A        .byte $5A   ; 
- D 1 - I - 0x007513 01:B503: 48        .byte $48   ; 



off_B504_02:
- D 1 - I - 0x007514 01:B504: DC        .byte $DC   ; 
- D 1 - I - 0x007515 01:B505: DE        .byte $DE   ; 
- D 1 - I - 0x007516 01:B506: 46        .byte $46   ; 
- D 1 - I - 0x007517 01:B507: 4A        .byte $4A   ; 
- D 1 - I - 0x007518 01:B508: 58        .byte $58   ; 
- D 1 - I - 0x007519 01:B509: C8        .byte $C8   ; 
- D 1 - I - 0x00751A 01:B50A: 44        .byte $44   ; 
- D 1 - I - 0x00751B 01:B50B: DC        .byte $DC   ; 



off_B50C_03:
- D 1 - I - 0x00751C 01:B50C: C2        .byte $C2   ; 
- D 1 - I - 0x00751D 01:B50D: C2        .byte $C2   ; 
- D 1 - I - 0x00751E 01:B50E: 40        .byte $40   ; 
- D 1 - I - 0x00751F 01:B50F: D6        .byte $D6   ; 
- D 1 - I - 0x007520 01:B510: 52        .byte $52   ; 
- D 1 - I - 0x007521 01:B511: C0        .byte $C0   ; 
- D 1 - I - 0x007522 01:B512: 5C        .byte $5C   ; 
- D 1 - I - 0x007523 01:B513: D0        .byte $D0   ; 



off_B514_04:
- D 1 - I - 0x007524 01:B514: 44        .byte $44   ; 
- D 1 - I - 0x007525 01:B515: 02        .byte $02   ; 
- D 1 - I - 0x007526 01:B516: D4        .byte $D4   ; 
- D 1 - I - 0x007527 01:B517: 94        .byte $94   ; 
- D 1 - I - 0x007528 01:B518: CC        .byte $CC   ; 
- D 1 - I - 0x007529 01:B519: CE        .byte $CE   ; 
- D 1 - I - 0x00752A 01:B51A: 1C        .byte $1C   ; 
- D 1 - I - 0x00752B 01:B51B: CA        .byte $CA   ; 



off_B51C_05:
- D 1 - I - 0x00752C 01:B51C: 58        .byte $58   ; 
- D 1 - I - 0x00752D 01:B51D: DC        .byte $DC   ; 
- D 1 - I - 0x00752E 01:B51E: 88        .byte $88   ; 
- D 1 - I - 0x00752F 01:B51F: D0        .byte $D0   ; 
- D 1 - I - 0x007530 01:B520: 86        .byte $86   ; 
- D 1 - I - 0x007531 01:B521: CC        .byte $CC   ; 
- D 1 - I - 0x007532 01:B522: 9A        .byte $9A   ; 
- D 1 - I - 0x007533 01:B523: 88        .byte $88   ; 



off_B524_06:
- D 1 - I - 0x007534 01:B524: DE        .byte $DE   ; 
- D 1 - I - 0x007535 01:B525: 1E        .byte $1E   ; 
- D 1 - I - 0x007536 01:B526: 4E        .byte $4E   ; 
- D 1 - I - 0x007537 01:B527: DE        .byte $DE   ; 
- D 1 - I - 0x007538 01:B528: C8        .byte $C8   ; 
- D 1 - I - 0x007539 01:B529: 86        .byte $86   ; 
- D 1 - I - 0x00753A 01:B52A: DE        .byte $DE   ; 
- D 1 - I - 0x00753B 01:B52B: 80        .byte $80   ; 



off_B52C_07:
- D 1 - I - 0x00753C 01:B52C: 82        .byte $82   ; 
- D 1 - I - 0x00753D 01:B52D: 80        .byte $80   ; 
- D 1 - I - 0x00753E 01:B52E: 5C        .byte $5C   ; 
- D 1 - I - 0x00753F 01:B52F: DA        .byte $DA   ; 
- D 1 - I - 0x007540 01:B530: C0        .byte $C0   ; 
- D 1 - I - 0x007541 01:B531: 96        .byte $96   ; 
- D 1 - I - 0x007542 01:B532: C2        .byte $C2   ; 
- D 1 - I - 0x007543 01:B533: 18        .byte $18   ; 



off_B534_08:
- D 1 - I - 0x007544 01:B534: 56        .byte $56   ; 
- D 1 - I - 0x007545 01:B535: C0        .byte $C0   ; 
- D 1 - I - 0x007546 01:B536: 42        .byte $42   ; 
- D 1 - I - 0x007547 01:B537: 8C        .byte $8C   ; 
- D 1 - I - 0x007548 01:B538: CE        .byte $CE   ; 
- D 1 - I - 0x007549 01:B539: 92        .byte $92   ; 
- D 1 - I - 0x00754A 01:B53A: 58        .byte $58   ; 
- D 1 - I - 0x00754B 01:B53B: C6        .byte $C6   ; 



off_B53C_09:
- D 1 - I - 0x00754C 01:B53C: 4A        .byte $4A   ; 
- D 1 - I - 0x00754D 01:B53D: 9C        .byte $9C   ; 
- D 1 - I - 0x00754E 01:B53E: 80        .byte $80   ; 
- D 1 - I - 0x00754F 01:B53F: 9E        .byte $9E   ; 
- D 1 - I - 0x007550 01:B540: DC        .byte $DC   ; 
- D 1 - I - 0x007551 01:B541: 4E        .byte $4E   ; 
- D 1 - I - 0x007552 01:B542: DA        .byte $DA   ; 
- D 1 - I - 0x007553 01:B543: 8A        .byte $8A   ; 



off_B544_0A:
- D 1 - I - 0x007554 01:B544: C0        .byte $C0   ; 
- D 1 - I - 0x007555 01:B545: 00        .byte $00   ; 
- D 1 - I - 0x007556 01:B546: 50        .byte $50   ; 
- D 1 - I - 0x007557 01:B547: 8E        .byte $8E   ; 
- D 1 - I - 0x007558 01:B548: C6        .byte $C6   ; 
- D 1 - I - 0x007559 01:B549: D6        .byte $D6   ; 
- D 1 - I - 0x00755A 01:B54A: 42        .byte $42   ; 
- D 1 - I - 0x00755B 01:B54B: 9E        .byte $9E   ; 



off_B54C_0B:
- D 1 - I - 0x00755C 01:B54C: 46        .byte $46   ; 
- D 1 - I - 0x00755D 01:B54D: 42        .byte $42   ; 
- D 1 - I - 0x00755E 01:B54E: 54        .byte $54   ; 
- D 1 - I - 0x00755F 01:B54F: 96        .byte $96   ; 
- D 1 - I - 0x007560 01:B550: 5E        .byte $5E   ; 
- D 1 - I - 0x007561 01:B551: 9C        .byte $9C   ; 
- D 1 - I - 0x007562 01:B552: 14        .byte $14   ; 
- D 1 - I - 0x007563 01:B553: 4C        .byte $4C   ; 



off_B554_0C:
- D 1 - I - 0x007564 01:B554: 4C        .byte $4C   ; 
- D 1 - I - 0x007565 01:B555: 9E        .byte $9E   ; 
- D 1 - I - 0x007566 01:B556: 9C        .byte $9C   ; 
- D 1 - I - 0x007567 01:B557: 48        .byte $48   ; 
- D 1 - I - 0x007568 01:B558: 84        .byte $84   ; 
- D 1 - I - 0x007569 01:B559: 90        .byte $90   ; 
- D 1 - I - 0x00756A 01:B55A: 1E        .byte $1E   ; 
- D 1 - I - 0x00756B 01:B55B: D2        .byte $D2   ; 



sub_B55C:
C - - - - - 0x00756C 01:B55C: A2 00     LDX #$00
loc_B55E:
C D 1 - - - 0x00756E 01:B55E: A9 24     LDA #$24
C - - - - - 0x007570 01:B560: 85 2C     STA ram_002C
C - - - - - 0x007572 01:B562: BD EB B5  LDA tbl_B5EB,X
C - - - - - 0x007575 01:B565: 85 2D     STA ram_002D
C - - - - - 0x007577 01:B567: BD 2C 05  LDA ram_номер_команды,X
C - - - - - 0x00757A 01:B56A: 29 0F     AND #$0F
C - - - - - 0x00757C 01:B56C: 85 1C     STA ram_001C
C - - - - - 0x00757E 01:B56E: 20 F3 B5  JSR sub_B5F3
C - - - - - 0x007581 01:B571: BD 2E 05  LDA ram_счет_команды,X
C - - - - - 0x007584 01:B574: 29 F0     AND #$F0
C - - - - - 0x007586 01:B576: D0 14     BNE bra_B58C
C - - - - - 0x007588 01:B578: A9 25     LDA #$25
C - - - - - 0x00758A 01:B57A: 85 2C     STA ram_002C
C - - - - - 0x00758C 01:B57C: BD ED B5  LDA tbl_B5ED,X
C - - - - - 0x00758F 01:B57F: 85 2D     STA ram_002D
C - - - - - 0x007591 01:B581: BD 2E 05  LDA ram_счет_команды,X
C - - - - - 0x007594 01:B584: 85 1C     STA ram_001C
C - - - - - 0x007596 01:B586: 20 D8 B6  JSR sub_B6D8
C - - - - - 0x007599 01:B589: 4C B4 B5  JMP loc_B5B4
bra_B58C:
- - - - - - 0x00759C 01:B58C: A9 25     LDA #$25
- - - - - - 0x00759E 01:B58E: 85 2C     STA ram_002C
- - - - - - 0x0075A0 01:B590: BD EF B5  LDA tbl_B5EF,X
- - - - - - 0x0075A3 01:B593: 85 2D     STA ram_002D
- - - - - - 0x0075A5 01:B595: BD 2E 05  LDA ram_счет_команды,X
- - - - - - 0x0075A8 01:B598: 4A        LSR
- - - - - - 0x0075A9 01:B599: 4A        LSR
- - - - - - 0x0075AA 01:B59A: 4A        LSR
- - - - - - 0x0075AB 01:B59B: 4A        LSR
- - - - - - 0x0075AC 01:B59C: 85 1C     STA ram_001C
- - - - - - 0x0075AE 01:B59E: 20 D8 B6  JSR sub_B6D8
- - - - - - 0x0075B1 01:B5A1: A9 25     LDA #$25
- - - - - - 0x0075B3 01:B5A3: 85 2C     STA ram_002C
- - - - - - 0x0075B5 01:B5A5: BD F1 B5  LDA tbl_B5F1,X
- - - - - - 0x0075B8 01:B5A8: 85 2D     STA ram_002D
- - - - - - 0x0075BA 01:B5AA: BD 2E 05  LDA ram_счет_команды,X
- - - - - - 0x0075BD 01:B5AD: 29 0F     AND #$0F
- - - - - - 0x0075BF 01:B5AF: 85 1C     STA ram_001C
- - - - - - 0x0075C1 01:B5B1: 20 D8 B6  JSR sub_B6D8
loc_B5B4:
C D 1 - - - 0x0075C4 01:B5B4: E8        INX
C - - - - - 0x0075C5 01:B5B5: E0 02     CPX #$02
C - - - - - 0x0075C7 01:B5B7: B0 03     BCS bra_B5BC
C - - - - - 0x0075C9 01:B5B9: 4C 5E B5  JMP loc_B55E
bra_B5BC:
C - - - - - 0x0075CC 01:B5BC: AD 02 20  LDA $2002
C - - - - - 0x0075CF 01:B5BF: A9 25     LDA #$25
C - - - - - 0x0075D1 01:B5C1: 8D 06 20  STA $2006
C - - - - - 0x0075D4 01:B5C4: A9 6F     LDA #$6F
C - - - - - 0x0075D6 01:B5C6: 8D 06 20  STA $2006
C - - - - - 0x0075D9 01:B5C9: A9 36     LDA #$36
C - - - - - 0x0075DB 01:B5CB: 8D 07 20  STA $2007
C - - - - - 0x0075DE 01:B5CE: A9 46     LDA #$46
C - - - - - 0x0075E0 01:B5D0: 8D 07 20  STA $2007
C - - - - - 0x0075E3 01:B5D3: AD 02 20  LDA $2002
C - - - - - 0x0075E6 01:B5D6: A9 25     LDA #$25
C - - - - - 0x0075E8 01:B5D8: 8D 06 20  STA $2006
C - - - - - 0x0075EB 01:B5DB: A9 70     LDA #$70
C - - - - - 0x0075ED 01:B5DD: 8D 06 20  STA $2006
C - - - - - 0x0075F0 01:B5E0: A9 36     LDA #$36
C - - - - - 0x0075F2 01:B5E2: 8D 07 20  STA $2007
C - - - - - 0x0075F5 01:B5E5: A9 46     LDA #$46
C - - - - - 0x0075F7 01:B5E7: 8D 07 20  STA $2007
C - - - - - 0x0075FA 01:B5EA: 60        RTS



tbl_B5EB:
- D 1 - - - 0x0075FB 01:B5EB: C6        .byte $C6   ; 
- D 1 - - - 0x0075FC 01:B5EC: D2        .byte $D2   ; 

tbl_B5ED:
- D 1 - - - 0x0075FD 01:B5ED: 28        .byte $28   ; 
- D 1 - - - 0x0075FE 01:B5EE: 34        .byte $34   ; 

tbl_B5EF:
- - - - - - 0x0075FF 01:B5EF: 26        .byte $26   ; 
- - - - - - 0x007600 01:B5F0: 32        .byte $32   ; 

tbl_B5F1:
- - - - - - 0x007601 01:B5F1: 2A        .byte $2A   ; 
- - - - - - 0x007602 01:B5F2: 36        .byte $36   ; 



sub_B5F3:
C - - - - - 0x007603 01:B5F3: A5 59     LDA ram_подтип_экрана
C - - - - - 0x007605 01:B5F5: C9 07     CMP #$07
C - - - - - 0x007607 01:B5F7: D0 03     BNE bra_B5FC
C - - - - - 0x007609 01:B5F9: 4C 58 B8  JMP loc_B858
bra_B5FC:
C - - - - - 0x00760C 01:B5FC: A5 4C     LDA ram_для_2000
C - - - - - 0x00760E 01:B5FE: 29 FB     AND #$FB
C - - - - - 0x007610 01:B600: 85 4C     STA ram_для_2000
C - - - - - 0x007612 01:B602: 8D 00 20  STA $2000
C - - - - - 0x007615 01:B605: A5 1C     LDA ram_001C
C - - - - - 0x007617 01:B607: 0A        ASL
C - - - - - 0x007618 01:B608: A8        TAY
C - - - - - 0x007619 01:B609: B9 50 B6  LDA tbl_B650,Y
C - - - - - 0x00761C 01:B60C: 85 2E     STA ram_002E
C - - - - - 0x00761E 01:B60E: B9 51 B6  LDA tbl_B650 + 1,Y
C - - - - - 0x007621 01:B611: 85 2F     STA ram_002F
C - - - - - 0x007623 01:B613: A0 00     LDY #$00
C - - - - - 0x007625 01:B615: AD 02 20  LDA $2002
C - - - - - 0x007628 01:B618: A5 2C     LDA ram_002C
C - - - - - 0x00762A 01:B61A: 8D 06 20  STA $2006
C - - - - - 0x00762D 01:B61D: A5 2D     LDA ram_002D
C - - - - - 0x00762F 01:B61F: 8D 06 20  STA $2006
bra_B622:
C - - - - - 0x007632 01:B622: B1 2E     LDA (ram_002E),Y
C - - - - - 0x007634 01:B624: 8D 07 20  STA $2007
C - - - - - 0x007637 01:B627: C8        INY
C - - - - - 0x007638 01:B628: C0 08     CPY #$08
C - - - - - 0x00763A 01:B62A: 90 F6     BCC bra_B622
C - - - - - 0x00763C 01:B62C: A0 00     LDY #$00
C - - - - - 0x00763E 01:B62E: AD 02 20  LDA $2002
C - - - - - 0x007641 01:B631: A5 2C     LDA ram_002C
C - - - - - 0x007643 01:B633: 8D 06 20  STA $2006
C - - - - - 0x007646 01:B636: A5 2D     LDA ram_002D
C - - - - - 0x007648 01:B638: 18        CLC
C - - - - - 0x007649 01:B639: 69 20     ADC #$20
C - - - - - 0x00764B 01:B63B: 8D 06 20  STA $2006
bra_B63E:
C - - - - - 0x00764E 01:B63E: B1 2E     LDA (ram_002E),Y
C - - - - - 0x007650 01:B640: C9 35     CMP #$35
C - - - - - 0x007652 01:B642: F0 03     BEQ bra_B647
C - - - - - 0x007654 01:B644: 18        CLC
C - - - - - 0x007655 01:B645: 69 10     ADC #$10
bra_B647:
C - - - - - 0x007657 01:B647: 8D 07 20  STA $2007
C - - - - - 0x00765A 01:B64A: C8        INY
C - - - - - 0x00765B 01:B64B: C0 08     CPY #$08
C - - - - - 0x00765D 01:B64D: 90 EF     BCC bra_B63E
C - - - - - 0x00765F 01:B64F: 60        RTS



tbl_B650:
- D 1 - - - 0x007660 01:B650: 70 B6     .word off_B670_00
- D 1 - - - 0x007662 01:B652: 80 B6     .word off_B680_01
- - - - - - 0x007664 01:B654: 78 B6     .word off_B678_02
- D 1 - - - 0x007666 01:B656: 88 B6     .word off_B688_03
- - - - - - 0x007668 01:B658: 70 B6     .word off_B670_04
- D 1 - - - 0x00766A 01:B65A: 98 B6     .word off_B698_05
- - - - - - 0x00766C 01:B65C: 90 B6     .word off_B690_06
- D 1 - - - 0x00766E 01:B65E: A0 B6     .word off_B6A0_07
- - - - - - 0x007670 01:B660: 70 B6     .word off_B670_08
- D 1 - - - 0x007672 01:B662: D0 B6     .word off_B6D0_09
- - - - - - 0x007674 01:B664: C0 B6     .word off_B6C0_0A
- D 1 - - - 0x007676 01:B666: C8 B6     .word off_B6C8_0B
- - - - - - 0x007678 01:B668: 70 B6     .word off_B670_0C
- D 1 - - - 0x00767A 01:B66A: A8 B6     .word off_B6A8_0D
- D 1 - - - 0x00767C 01:B66C: B0 B6     .word off_B6B0_0E
- D 1 - - - 0x00767E 01:B66E: B8 B6     .word off_B6B8_0F



off_B670_00:
off_B670_04:
off_B670_08:
off_B670_0C:
- D 1 - I - 0x007680 01:B670: 35        .byte $35   ; 
- D 1 - I - 0x007681 01:B671: 89        .byte $89   ; 
- D 1 - I - 0x007682 01:B672: 80        .byte $80   ; 
- D 1 - I - 0x007683 01:B673: 8F        .byte $8F   ; 
- D 1 - I - 0x007684 01:B674: 80        .byte $80   ; 
- D 1 - I - 0x007685 01:B675: 8D        .byte $8D   ; 
- D 1 - I - 0x007686 01:B676: 35        .byte $35   ; 
- D 1 - I - 0x007687 01:B677: 35        .byte $35   ; 



off_B678_02:
- - - - - - 0x007688 01:B678: A9        .byte $A9   ; 
- - - - - - 0x007689 01:B679: AA        .byte $AA   ; 
- - - - - - 0x00768A 01:B67A: AB        .byte $AB   ; 
- - - - - - 0x00768B 01:B67B: AC        .byte $AC   ; 
- - - - - - 0x00768C 01:B67C: AD        .byte $AD   ; 
- - - - - - 0x00768D 01:B67D: AE        .byte $AE   ; 
- - - - - - 0x00768E 01:B67E: AF        .byte $AF   ; 
- - - - - - 0x00768F 01:B67F: C0        .byte $C0   ; 



off_B680_01:
- D 1 - I - 0x007690 01:B680: 35        .byte $35   ; 
- D 1 - I - 0x007691 01:B681: 8A        .byte $8A   ; 
- D 1 - I - 0x007692 01:B682: 8E        .byte $8E   ; 
- D 1 - I - 0x007693 01:B683: A1        .byte $A1   ; 
- D 1 - I - 0x007694 01:B684: 84        .byte $84   ; 
- D 1 - I - 0x007695 01:B685: 80        .byte $80   ; 
- D 1 - I - 0x007696 01:B686: 35        .byte $35   ; 
- D 1 - I - 0x007697 01:B687: 35        .byte $35   ; 



off_B688_03:
- D 1 - I - 0x007698 01:B688: A3        .byte $A3   ; 
- D 1 - I - 0x007699 01:B689: 87        .byte $87   ; 
- D 1 - I - 0x00769A 01:B68A: 80        .byte $80   ; 
- D 1 - I - 0x00769B 01:B68B: 88        .byte $88   ; 
- D 1 - I - 0x00769C 01:B68C: 8B        .byte $8B   ; 
- D 1 - I - 0x00769D 01:B68D: 80        .byte $80   ; 
- D 1 - I - 0x00769E 01:B68E: 8D        .byte $8D   ; 
- D 1 - I - 0x00769F 01:B68F: 83        .byte $83   ; 



off_B690_06:
- - - - - - 0x0076A0 01:B690: A2        .byte $A2   ; 
- - - - - - 0x0076A1 01:B691: 84        .byte $84   ; 
- - - - - - 0x0076A2 01:B692: 8D        .byte $8D   ; 
- - - - - - 0x0076A3 01:B693: 84        .byte $84   ; 
- - - - - - 0x0076A4 01:B694: 86        .byte $86   ; 
- - - - - - 0x0076A5 01:B695: 80        .byte $80   ; 
- - - - - - 0x0076A6 01:B696: 8B        .byte $8B   ; 
- - - - - - 0x0076A7 01:B697: 35        .byte $35   ; 



off_B698_05:
- D 1 - I - 0x0076A8 01:B698: 35        .byte $35   ; 
- D 1 - I - 0x0076A9 01:B699: 86        .byte $86   ; 
- D 1 - I - 0x0076AA 01:B69A: A4        .byte $A4   ; 
- D 1 - I - 0x0076AB 01:B69B: 88        .byte $88   ; 
- D 1 - I - 0x0076AC 01:B69C: 8D        .byte $8D   ; 
- D 1 - I - 0x0076AD 01:B69D: 84        .byte $84   ; 
- D 1 - I - 0x0076AE 01:B69E: 80        .byte $80   ; 
- D 1 - I - 0x0076AF 01:B69F: 35        .byte $35   ; 



off_B6A0_07:
- D 1 - I - 0x0076B0 01:B6A0: 82        .byte $82   ; 
- D 1 - I - 0x0076B1 01:B6A1: 80        .byte $80   ; 
- D 1 - I - 0x0076B2 01:B6A2: 8C        .byte $8C   ; 
- D 1 - I - 0x0076B3 01:B6A3: 84        .byte $84   ; 
- D 1 - I - 0x0076B4 01:B6A4: A1        .byte $A1   ; 
- D 1 - I - 0x0076B5 01:B6A5: 8E        .byte $8E   ; 
- D 1 - I - 0x0076B6 01:B6A6: 8E        .byte $8E   ; 
- D 1 - I - 0x0076B7 01:B6A7: 8D        .byte $8D   ; 



off_B6A8_0D:
- D 1 - I - 0x0076B8 01:B6A8: 35        .byte $35   ; 
- D 1 - I - 0x0076B9 01:B6A9: 81        .byte $81   ; 
- D 1 - I - 0x0076BA 01:B6AA: A1        .byte $A1   ; 
- D 1 - I - 0x0076BB 01:B6AB: 80        .byte $80   ; 
- D 1 - I - 0x0076BC 01:B6AC: A8        .byte $A8   ; 
- D 1 - I - 0x0076BD 01:B6AD: 88        .byte $88   ; 
- D 1 - I - 0x0076BE 01:B6AE: 8B        .byte $8B   ; 
- D 1 - I - 0x0076BF 01:B6AF: 35        .byte $35   ; 



off_B6B0_0E:
- D 1 - I - 0x0076C0 01:B6B0: C1        .byte $C1   ; 
- D 1 - I - 0x0076C1 01:B6B1: C2        .byte $C2   ; 
- D 1 - I - 0x0076C2 01:B6B2: C3        .byte $C3   ; 
- D 1 - I - 0x0076C3 01:B6B3: C4        .byte $C4   ; 
- D 1 - I - 0x0076C4 01:B6B4: C5        .byte $C5   ; 
- D 1 - I - 0x0076C5 01:B6B5: C6        .byte $C6   ; 
- D 1 - I - 0x0076C6 01:B6B6: C7        .byte $C7   ; 
- D 1 - I - 0x0076C7 01:B6B7: C8        .byte $C8   ; 



off_B6B8_0F:
- D 1 - I - 0x0076C8 01:B6B8: 35        .byte $35   ; 
- D 1 - I - 0x0076C9 01:B6B9: 8C        .byte $8C   ; 
- D 1 - I - 0x0076CA 01:B6BA: 84        .byte $84   ; 
- D 1 - I - 0x0076CB 01:B6BB: A6        .byte $A6   ; 
- D 1 - I - 0x0076CC 01:B6BC: 88        .byte $88   ; 
- D 1 - I - 0x0076CD 01:B6BD: 82        .byte $82   ; 
- D 1 - I - 0x0076CE 01:B6BE: 8E        .byte $8E   ; 
- D 1 - I - 0x0076CF 01:B6BF: 35        .byte $35   ; 



off_B6C0_0A:
- - - - - - 0x0076D0 01:B6C0: 84        .byte $84   ; 
- - - - - - 0x0076D1 01:B6C1: 8D        .byte $8D   ; 
- - - - - - 0x0076D2 01:B6C2: 86        .byte $86   ; 
- - - - - - 0x0076D3 01:B6C3: 8B        .byte $8B   ; 
- - - - - - 0x0076D4 01:B6C4: 80        .byte $80   ; 
- - - - - - 0x0076D5 01:B6C5: 8D        .byte $8D   ; 
- - - - - - 0x0076D6 01:B6C6: 83        .byte $83   ; 
- - - - - - 0x0076D7 01:B6C7: 35        .byte $35   ; 



off_B6C8_0B:
- D 1 - I - 0x0076D8 01:B6C8: 35        .byte $35   ; 
- D 1 - I - 0x0076D9 01:B6C9: 88        .byte $88   ; 
- D 1 - I - 0x0076DA 01:B6CA: A3        .byte $A3   ; 
- D 1 - I - 0x0076DB 01:B6CB: 80        .byte $80   ; 
- D 1 - I - 0x0076DC 01:B6CC: 8B        .byte $8B   ; 
- D 1 - I - 0x0076DD 01:B6CD: A7        .byte $A7   ; 
- D 1 - I - 0x0076DE 01:B6CE: 35        .byte $35   ; 
- D 1 - I - 0x0076DF 01:B6CF: 35        .byte $35   ; 



off_B6D0_09:
- D 1 - I - 0x0076E0 01:B6D0: 86        .byte $86   ; 
- D 1 - I - 0x0076E1 01:B6D1: 84        .byte $84   ; 
- D 1 - I - 0x0076E2 01:B6D2: A1        .byte $A1   ; 
- D 1 - I - 0x0076E3 01:B6D3: 8C        .byte $8C   ; 
- D 1 - I - 0x0076E4 01:B6D4: 80        .byte $80   ; 
- D 1 - I - 0x0076E5 01:B6D5: 8D        .byte $8D   ; 
- D 1 - I - 0x0076E6 01:B6D6: A7        .byte $A7   ; 
- D 1 - I - 0x0076E7 01:B6D7: 35        .byte $35   ; 



sub_B6D8:
C - - - - - 0x0076E8 01:B6D8: A5 4C     LDA ram_для_2000
C - - - - - 0x0076EA 01:B6DA: 09 04     ORA #$04
C - - - - - 0x0076EC 01:B6DC: 85 4C     STA ram_для_2000
C - - - - - 0x0076EE 01:B6DE: 8D 00 20  STA $2000
C - - - - - 0x0076F1 01:B6E1: A5 1C     LDA ram_001C
C - - - - - 0x0076F3 01:B6E3: 0A        ASL
C - - - - - 0x0076F4 01:B6E4: A8        TAY
C - - - - - 0x0076F5 01:B6E5: B9 54 B7  LDA tbl_B754,Y
C - - - - - 0x0076F8 01:B6E8: 85 2E     STA ram_002E
C - - - - - 0x0076FA 01:B6EA: B9 55 B7  LDA tbl_B754 + 1,Y
C - - - - - 0x0076FD 01:B6ED: 85 2F     STA ram_002F
C - - - - - 0x0076FF 01:B6EF: A0 00     LDY #$00
C - - - - - 0x007701 01:B6F1: AD 02 20  LDA $2002
C - - - - - 0x007704 01:B6F4: A5 2C     LDA ram_002C
C - - - - - 0x007706 01:B6F6: 8D 06 20  STA $2006
C - - - - - 0x007709 01:B6F9: A5 2D     LDA ram_002D
C - - - - - 0x00770B 01:B6FB: 8D 06 20  STA $2006
bra_B6FE:
C - - - - - 0x00770E 01:B6FE: B1 2E     LDA (ram_002E),Y
C - - - - - 0x007710 01:B700: 8D 07 20  STA $2007
C - - - - - 0x007713 01:B703: C8        INY
C - - - - - 0x007714 01:B704: C0 06     CPY #$06
C - - - - - 0x007716 01:B706: 90 F6     BCC bra_B6FE
C - - - - - 0x007718 01:B708: E6 2D     INC ram_002D
C - - - - - 0x00771A 01:B70A: AD 02 20  LDA $2002
C - - - - - 0x00771D 01:B70D: A5 2C     LDA ram_002C
C - - - - - 0x00771F 01:B70F: 8D 06 20  STA $2006
C - - - - - 0x007722 01:B712: A5 2D     LDA ram_002D
C - - - - - 0x007724 01:B714: 8D 06 20  STA $2006
bra_B717:
C - - - - - 0x007727 01:B717: B1 2E     LDA (ram_002E),Y
C - - - - - 0x007729 01:B719: 8D 07 20  STA $2007
C - - - - - 0x00772C 01:B71C: C8        INY
C - - - - - 0x00772D 01:B71D: C0 0C     CPY #$0C
C - - - - - 0x00772F 01:B71F: 90 F6     BCC bra_B717
C - - - - - 0x007731 01:B721: E6 2D     INC ram_002D
C - - - - - 0x007733 01:B723: AD 02 20  LDA $2002
C - - - - - 0x007736 01:B726: A5 2C     LDA ram_002C
C - - - - - 0x007738 01:B728: 8D 06 20  STA $2006
C - - - - - 0x00773B 01:B72B: A5 2D     LDA ram_002D
C - - - - - 0x00773D 01:B72D: 8D 06 20  STA $2006
bra_B730:
C - - - - - 0x007740 01:B730: B1 2E     LDA (ram_002E),Y
C - - - - - 0x007742 01:B732: 8D 07 20  STA $2007
C - - - - - 0x007745 01:B735: C8        INY
C - - - - - 0x007746 01:B736: C0 12     CPY #$12
C - - - - - 0x007748 01:B738: 90 F6     BCC bra_B730
C - - - - - 0x00774A 01:B73A: E6 2D     INC ram_002D
C - - - - - 0x00774C 01:B73C: AD 02 20  LDA $2002
C - - - - - 0x00774F 01:B73F: A5 2C     LDA ram_002C
C - - - - - 0x007751 01:B741: 8D 06 20  STA $2006
C - - - - - 0x007754 01:B744: A5 2D     LDA ram_002D
C - - - - - 0x007756 01:B746: 8D 06 20  STA $2006
bra_B749:
C - - - - - 0x007759 01:B749: B1 2E     LDA (ram_002E),Y
C - - - - - 0x00775B 01:B74B: 8D 07 20  STA $2007
C - - - - - 0x00775E 01:B74E: C8        INY
C - - - - - 0x00775F 01:B74F: C0 18     CPY #$18
C - - - - - 0x007761 01:B751: 90 F6     BCC bra_B749
C - - - - - 0x007763 01:B753: 60        RTS



tbl_B754:
- D 1 - - - 0x007764 01:B754: 68 B7     .word off_B768_00
- D 1 - - - 0x007766 01:B756: 80 B7     .word off_B780_01
- D 1 - - - 0x007768 01:B758: 98 B7     .word off_B798_02
- D 1 - - - 0x00776A 01:B75A: B0 B7     .word off_B7B0_03
- D 1 - - - 0x00776C 01:B75C: C8 B7     .word off_B7C8_04
- D 1 - - - 0x00776E 01:B75E: E0 B7     .word off_B7E0_05
- D 1 - - - 0x007770 01:B760: F8 B7     .word off_B7F8_06
- D 1 - - - 0x007772 01:B762: 10 B8     .word off_B810_07
- D 1 - - - 0x007774 01:B764: 28 B8     .word off_B828_08
- - - - - - 0x007776 01:B766: 40 B8     .word off_B840_09



off_B768_00:
- D 1 - I - 0x007778 01:B768: 38        .byte $38   ; 
- D 1 - I - 0x007779 01:B769: 47        .byte $47   ; 
- D 1 - I - 0x00777A 01:B76A: 47        .byte $47   ; 
- D 1 - I - 0x00777B 01:B76B: 47        .byte $47   ; 
- D 1 - I - 0x00777C 01:B76C: 47        .byte $47   ; 
- D 1 - I - 0x00777D 01:B76D: 48        .byte $48   ; 
- D 1 - I - 0x00777E 01:B76E: 45        .byte $45   ; 
- D 1 - I - 0x00777F 01:B76F: 37        .byte $37   ; 
- D 1 - I - 0x007780 01:B770: 37        .byte $37   ; 
- D 1 - I - 0x007781 01:B771: 37        .byte $37   ; 
- D 1 - I - 0x007782 01:B772: 37        .byte $37   ; 
- D 1 - I - 0x007783 01:B773: 45        .byte $45   ; 
- D 1 - I - 0x007784 01:B774: 45        .byte $45   ; 
- D 1 - I - 0x007785 01:B775: 47        .byte $47   ; 
- D 1 - I - 0x007786 01:B776: 47        .byte $47   ; 
- D 1 - I - 0x007787 01:B777: 47        .byte $47   ; 
- D 1 - I - 0x007788 01:B778: 47        .byte $47   ; 
- D 1 - I - 0x007789 01:B779: 45        .byte $45   ; 
- D 1 - I - 0x00778A 01:B77A: 39        .byte $39   ; 
- D 1 - I - 0x00778B 01:B77B: 37        .byte $37   ; 
- D 1 - I - 0x00778C 01:B77C: 37        .byte $37   ; 
- D 1 - I - 0x00778D 01:B77D: 37        .byte $37   ; 
- D 1 - I - 0x00778E 01:B77E: 37        .byte $37   ; 
- D 1 - I - 0x00778F 01:B77F: 49        .byte $49   ; 



off_B780_01:
- D 1 - I - 0x007790 01:B780: 35        .byte $35   ; 
- D 1 - I - 0x007791 01:B781: 35        .byte $35   ; 
- D 1 - I - 0x007792 01:B782: 35        .byte $35   ; 
- D 1 - I - 0x007793 01:B783: 35        .byte $35   ; 
- D 1 - I - 0x007794 01:B784: 35        .byte $35   ; 
- D 1 - I - 0x007795 01:B785: 35        .byte $35   ; 
- D 1 - I - 0x007796 01:B786: 38        .byte $38   ; 
- D 1 - I - 0x007797 01:B787: 45        .byte $45   ; 
- D 1 - I - 0x007798 01:B788: 47        .byte $47   ; 
- D 1 - I - 0x007799 01:B789: 47        .byte $47   ; 
- D 1 - I - 0x00779A 01:B78A: 47        .byte $47   ; 
- D 1 - I - 0x00779B 01:B78B: 47        .byte $47   ; 
- D 1 - I - 0x00779C 01:B78C: 37        .byte $37   ; 
- D 1 - I - 0x00779D 01:B78D: 37        .byte $37   ; 
- D 1 - I - 0x00779E 01:B78E: 37        .byte $37   ; 
- D 1 - I - 0x00779F 01:B78F: 37        .byte $37   ; 
- D 1 - I - 0x0077A0 01:B790: 37        .byte $37   ; 
- D 1 - I - 0x0077A1 01:B791: 37        .byte $37   ; 
- D 1 - I - 0x0077A2 01:B792: 35        .byte $35   ; 
- D 1 - I - 0x0077A3 01:B793: 35        .byte $35   ; 
- D 1 - I - 0x0077A4 01:B794: 35        .byte $35   ; 
- D 1 - I - 0x0077A5 01:B795: 35        .byte $35   ; 
- D 1 - I - 0x0077A6 01:B796: 35        .byte $35   ; 
- D 1 - I - 0x0077A7 01:B797: 35        .byte $35   ; 



off_B798_02:
- D 1 - I - 0x0077A8 01:B798: 38        .byte $38   ; 
- D 1 - I - 0x0077A9 01:B799: 47        .byte $47   ; 
- D 1 - I - 0x0077AA 01:B79A: 35        .byte $35   ; 
- D 1 - I - 0x0077AB 01:B79B: 35        .byte $35   ; 
- D 1 - I - 0x0077AC 01:B79C: 47        .byte $47   ; 
- D 1 - I - 0x0077AD 01:B79D: 47        .byte $47   ; 
- D 1 - I - 0x0077AE 01:B79E: 45        .byte $45   ; 
- D 1 - I - 0x0077AF 01:B79F: 37        .byte $37   ; 
- D 1 - I - 0x0077B0 01:B7A0: 35        .byte $35   ; 
- D 1 - I - 0x0077B1 01:B7A1: 3A        .byte $3A   ; 
- D 1 - I - 0x0077B2 01:B7A2: 4B        .byte $4B   ; 
- D 1 - I - 0x0077B3 01:B7A3: 45        .byte $45   ; 
- D 1 - I - 0x0077B4 01:B7A4: 45        .byte $45   ; 
- D 1 - I - 0x0077B5 01:B7A5: 47        .byte $47   ; 
- D 1 - I - 0x0077B6 01:B7A6: 3A        .byte $3A   ; 
- D 1 - I - 0x0077B7 01:B7A7: 4B        .byte $4B   ; 
- D 1 - I - 0x0077B8 01:B7A8: 35        .byte $35   ; 
- D 1 - I - 0x0077B9 01:B7A9: 45        .byte $45   ; 
- D 1 - I - 0x0077BA 01:B7AA: 39        .byte $39   ; 
- D 1 - I - 0x0077BB 01:B7AB: 37        .byte $37   ; 
- D 1 - I - 0x0077BC 01:B7AC: 37        .byte $37   ; 
- D 1 - I - 0x0077BD 01:B7AD: 35        .byte $35   ; 
- D 1 - I - 0x0077BE 01:B7AE: 35        .byte $35   ; 
- D 1 - I - 0x0077BF 01:B7AF: 37        .byte $37   ; 



off_B7B0_03:
- D 1 - I - 0x0077C0 01:B7B0: 38        .byte $38   ; 
- D 1 - I - 0x0077C1 01:B7B1: 47        .byte $47   ; 
- D 1 - I - 0x0077C2 01:B7B2: 35        .byte $35   ; 
- D 1 - I - 0x0077C3 01:B7B3: 35        .byte $35   ; 
- D 1 - I - 0x0077C4 01:B7B4: 47        .byte $47   ; 
- D 1 - I - 0x0077C5 01:B7B5: 48        .byte $48   ; 
- D 1 - I - 0x0077C6 01:B7B6: 45        .byte $45   ; 
- D 1 - I - 0x0077C7 01:B7B7: 37        .byte $37   ; 
- D 1 - I - 0x0077C8 01:B7B8: 38        .byte $38   ; 
- D 1 - I - 0x0077C9 01:B7B9: 48        .byte $48   ; 
- D 1 - I - 0x0077CA 01:B7BA: 37        .byte $37   ; 
- D 1 - I - 0x0077CB 01:B7BB: 45        .byte $45   ; 
- D 1 - I - 0x0077CC 01:B7BC: 45        .byte $45   ; 
- D 1 - I - 0x0077CD 01:B7BD: 47        .byte $47   ; 
- D 1 - I - 0x0077CE 01:B7BE: 3A        .byte $3A   ; 
- D 1 - I - 0x0077CF 01:B7BF: 4A        .byte $4A   ; 
- D 1 - I - 0x0077D0 01:B7C0: 47        .byte $47   ; 
- D 1 - I - 0x0077D1 01:B7C1: 45        .byte $45   ; 
- D 1 - I - 0x0077D2 01:B7C2: 39        .byte $39   ; 
- D 1 - I - 0x0077D3 01:B7C3: 37        .byte $37   ; 
- D 1 - I - 0x0077D4 01:B7C4: 49        .byte $49   ; 
- D 1 - I - 0x0077D5 01:B7C5: 37        .byte $37   ; 
- D 1 - I - 0x0077D6 01:B7C6: 37        .byte $37   ; 
- D 1 - I - 0x0077D7 01:B7C7: 49        .byte $49   ; 



off_B7C8_04:
- D 1 - I - 0x0077D8 01:B7C8: 35        .byte $35   ; 
- D 1 - I - 0x0077D9 01:B7C9: 35        .byte $35   ; 
- D 1 - I - 0x0077DA 01:B7CA: 38        .byte $38   ; 
- D 1 - I - 0x0077DB 01:B7CB: 47        .byte $47   ; 
- D 1 - I - 0x0077DC 01:B7CC: 47        .byte $47   ; 
- D 1 - I - 0x0077DD 01:B7CD: 35        .byte $35   ; 
- D 1 - I - 0x0077DE 01:B7CE: 38        .byte $38   ; 
- D 1 - I - 0x0077DF 01:B7CF: 3A        .byte $3A   ; 
- D 1 - I - 0x0077E0 01:B7D0: 4B        .byte $4B   ; 
- D 1 - I - 0x0077E1 01:B7D1: 37        .byte $37   ; 
- D 1 - I - 0x0077E2 01:B7D2: 45        .byte $45   ; 
- D 1 - I - 0x0077E3 01:B7D3: 35        .byte $35   ; 
- D 1 - I - 0x0077E4 01:B7D4: 45        .byte $45   ; 
- D 1 - I - 0x0077E5 01:B7D5: 45        .byte $45   ; 
- D 1 - I - 0x0077E6 01:B7D6: 45        .byte $45   ; 
- D 1 - I - 0x0077E7 01:B7D7: 45        .byte $45   ; 
- D 1 - I - 0x0077E8 01:B7D8: 45        .byte $45   ; 
- D 1 - I - 0x0077E9 01:B7D9: 45        .byte $45   ; 
- D 1 - I - 0x0077EA 01:B7DA: 35        .byte $35   ; 
- D 1 - I - 0x0077EB 01:B7DB: 35        .byte $35   ; 
- D 1 - I - 0x0077EC 01:B7DC: 35        .byte $35   ; 
- D 1 - I - 0x0077ED 01:B7DD: 35        .byte $35   ; 
- D 1 - I - 0x0077EE 01:B7DE: 37        .byte $37   ; 
- D 1 - I - 0x0077EF 01:B7DF: 35        .byte $35   ; 



off_B7E0_05:
- D 1 - I - 0x0077F0 01:B7E0: 47        .byte $47   ; 
- D 1 - I - 0x0077F1 01:B7E1: 47        .byte $47   ; 
- D 1 - I - 0x0077F2 01:B7E2: 47        .byte $47   ; 
- D 1 - I - 0x0077F3 01:B7E3: 35        .byte $35   ; 
- D 1 - I - 0x0077F4 01:B7E4: 47        .byte $47   ; 
- D 1 - I - 0x0077F5 01:B7E5: 48        .byte $48   ; 
- D 1 - I - 0x0077F6 01:B7E6: 45        .byte $45   ; 
- D 1 - I - 0x0077F7 01:B7E7: 37        .byte $37   ; 
- D 1 - I - 0x0077F8 01:B7E8: 45        .byte $45   ; 
- D 1 - I - 0x0077F9 01:B7E9: 35        .byte $35   ; 
- D 1 - I - 0x0077FA 01:B7EA: 37        .byte $37   ; 
- D 1 - I - 0x0077FB 01:B7EB: 45        .byte $45   ; 
- D 1 - I - 0x0077FC 01:B7EC: 45        .byte $45   ; 
- D 1 - I - 0x0077FD 01:B7ED: 35        .byte $35   ; 
- D 1 - I - 0x0077FE 01:B7EE: 45        .byte $45   ; 
- D 1 - I - 0x0077FF 01:B7EF: 47        .byte $47   ; 
- D 1 - I - 0x007800 01:B7F0: 47        .byte $47   ; 
- D 1 - I - 0x007801 01:B7F1: 45        .byte $45   ; 
- D 1 - I - 0x007802 01:B7F2: 37        .byte $37   ; 
- D 1 - I - 0x007803 01:B7F3: 35        .byte $35   ; 
- D 1 - I - 0x007804 01:B7F4: 39        .byte $39   ; 
- D 1 - I - 0x007805 01:B7F5: 37        .byte $37   ; 
- D 1 - I - 0x007806 01:B7F6: 37        .byte $37   ; 
- D 1 - I - 0x007807 01:B7F7: 49        .byte $49   ; 



off_B7F8_06:
- D 1 - I - 0x007808 01:B7F8: 38        .byte $38   ; 
- D 1 - I - 0x007809 01:B7F9: 47        .byte $47   ; 
- D 1 - I - 0x00780A 01:B7FA: 47        .byte $47   ; 
- D 1 - I - 0x00780B 01:B7FB: 47        .byte $47   ; 
- D 1 - I - 0x00780C 01:B7FC: 47        .byte $47   ; 
- D 1 - I - 0x00780D 01:B7FD: 48        .byte $48   ; 
- D 1 - I - 0x00780E 01:B7FE: 45        .byte $45   ; 
- D 1 - I - 0x00780F 01:B7FF: 37        .byte $37   ; 
- D 1 - I - 0x007810 01:B800: 3B        .byte $3B   ; 
- D 1 - I - 0x007811 01:B801: 4B        .byte $4B   ; 
- D 1 - I - 0x007812 01:B802: 37        .byte $37   ; 
- D 1 - I - 0x007813 01:B803: 45        .byte $45   ; 
- D 1 - I - 0x007814 01:B804: 45        .byte $45   ; 
- D 1 - I - 0x007815 01:B805: 47        .byte $47   ; 
- D 1 - I - 0x007816 01:B806: 36        .byte $36   ; 
- D 1 - I - 0x007817 01:B807: 4A        .byte $4A   ; 
- D 1 - I - 0x007818 01:B808: 47        .byte $47   ; 
- D 1 - I - 0x007819 01:B809: 45        .byte $45   ; 
- D 1 - I - 0x00781A 01:B80A: 39        .byte $39   ; 
- D 1 - I - 0x00781B 01:B80B: 37        .byte $37   ; 
- D 1 - I - 0x00781C 01:B80C: 35        .byte $35   ; 
- D 1 - I - 0x00781D 01:B80D: 37        .byte $37   ; 
- D 1 - I - 0x00781E 01:B80E: 37        .byte $37   ; 
- D 1 - I - 0x00781F 01:B80F: 49        .byte $49   ; 



off_B810_07:
- D 1 - I - 0x007820 01:B810: 47        .byte $47   ; 
- D 1 - I - 0x007821 01:B811: 35        .byte $35   ; 
- D 1 - I - 0x007822 01:B812: 35        .byte $35   ; 
- D 1 - I - 0x007823 01:B813: 35        .byte $35   ; 
- D 1 - I - 0x007824 01:B814: 35        .byte $35   ; 
- D 1 - I - 0x007825 01:B815: 47        .byte $47   ; 
- D 1 - I - 0x007826 01:B816: 45        .byte $45   ; 
- D 1 - I - 0x007827 01:B817: 35        .byte $35   ; 
- D 1 - I - 0x007828 01:B818: 35        .byte $35   ; 
- D 1 - I - 0x007829 01:B819: 47        .byte $47   ; 
- D 1 - I - 0x00782A 01:B81A: 45        .byte $45   ; 
- D 1 - I - 0x00782B 01:B81B: 37        .byte $37   ; 
- D 1 - I - 0x00782C 01:B81C: 45        .byte $45   ; 
- D 1 - I - 0x00782D 01:B81D: 47        .byte $47   ; 
- D 1 - I - 0x00782E 01:B81E: 45        .byte $45   ; 
- D 1 - I - 0x00782F 01:B81F: 37        .byte $37   ; 
- D 1 - I - 0x007830 01:B820: 35        .byte $35   ; 
- D 1 - I - 0x007831 01:B821: 35        .byte $35   ; 
- D 1 - I - 0x007832 01:B822: 37        .byte $37   ; 
- D 1 - I - 0x007833 01:B823: 37        .byte $37   ; 
- D 1 - I - 0x007834 01:B824: 35        .byte $35   ; 
- D 1 - I - 0x007835 01:B825: 35        .byte $35   ; 
- D 1 - I - 0x007836 01:B826: 35        .byte $35   ; 
- D 1 - I - 0x007837 01:B827: 35        .byte $35   ; 



off_B828_08:
- D 1 - I - 0x007838 01:B828: 38        .byte $38   ; 
- D 1 - I - 0x007839 01:B829: 47        .byte $47   ; 
- D 1 - I - 0x00783A 01:B82A: 48        .byte $48   ; 
- D 1 - I - 0x00783B 01:B82B: 47        .byte $47   ; 
- D 1 - I - 0x00783C 01:B82C: 47        .byte $47   ; 
- D 1 - I - 0x00783D 01:B82D: 48        .byte $48   ; 
- D 1 - I - 0x00783E 01:B82E: 45        .byte $45   ; 
- D 1 - I - 0x00783F 01:B82F: 37        .byte $37   ; 
- D 1 - I - 0x007840 01:B830: 3B        .byte $3B   ; 
- D 1 - I - 0x007841 01:B831: 4B        .byte $4B   ; 
- D 1 - I - 0x007842 01:B832: 37        .byte $37   ; 
- D 1 - I - 0x007843 01:B833: 45        .byte $45   ; 
- D 1 - I - 0x007844 01:B834: 45        .byte $45   ; 
- D 1 - I - 0x007845 01:B835: 47        .byte $47   ; 
- D 1 - I - 0x007846 01:B836: 3A        .byte $3A   ; 
- D 1 - I - 0x007847 01:B837: 4A        .byte $4A   ; 
- D 1 - I - 0x007848 01:B838: 47        .byte $47   ; 
- D 1 - I - 0x007849 01:B839: 45        .byte $45   ; 
- D 1 - I - 0x00784A 01:B83A: 39        .byte $39   ; 
- D 1 - I - 0x00784B 01:B83B: 37        .byte $37   ; 
- D 1 - I - 0x00784C 01:B83C: 49        .byte $49   ; 
- D 1 - I - 0x00784D 01:B83D: 37        .byte $37   ; 
- D 1 - I - 0x00784E 01:B83E: 37        .byte $37   ; 
- D 1 - I - 0x00784F 01:B83F: 49        .byte $49   ; 



off_B840_09:
- - - - - - 0x007850 01:B840: 38        .byte $38   ; 
- - - - - - 0x007851 01:B841: 47        .byte $47   ; 
- - - - - - 0x007852 01:B842: 47        .byte $47   ; 
- - - - - - 0x007853 01:B843: 35        .byte $35   ; 
- - - - - - 0x007854 01:B844: 47        .byte $47   ; 
- - - - - - 0x007855 01:B845: 48        .byte $48   ; 
- - - - - - 0x007856 01:B846: 45        .byte $45   ; 
- - - - - - 0x007857 01:B847: 37        .byte $37   ; 
- - - - - - 0x007858 01:B848: 3B        .byte $3B   ; 
- - - - - - 0x007859 01:B849: 46        .byte $46   ; 
- - - - - - 0x00785A 01:B84A: 37        .byte $37   ; 
- - - - - - 0x00785B 01:B84B: 45        .byte $45   ; 
- - - - - - 0x00785C 01:B84C: 45        .byte $45   ; 
- - - - - - 0x00785D 01:B84D: 47        .byte $47   ; 
- - - - - - 0x00785E 01:B84E: 3A        .byte $3A   ; 
- - - - - - 0x00785F 01:B84F: 4A        .byte $4A   ; 
- - - - - - 0x007860 01:B850: 47        .byte $47   ; 
- - - - - - 0x007861 01:B851: 45        .byte $45   ; 
- - - - - - 0x007862 01:B852: 39        .byte $39   ; 
- - - - - - 0x007863 01:B853: 37        .byte $37   ; 
- - - - - - 0x007864 01:B854: 37        .byte $37   ; 
- - - - - - 0x007865 01:B855: 37        .byte $37   ; 
- - - - - - 0x007866 01:B856: 37        .byte $37   ; 
- - - - - - 0x007867 01:B857: 49        .byte $49   ; 



loc_B858:
C D 1 - - - 0x007868 01:B858: A5 4C     LDA ram_для_2000
C - - - - - 0x00786A 01:B85A: 29 FB     AND #$FB
C - - - - - 0x00786C 01:B85C: 85 4C     STA ram_для_2000
C - - - - - 0x00786E 01:B85E: 8D 00 20  STA $2000
C - - - - - 0x007871 01:B861: AD 02 20  LDA $2002
C - - - - - 0x007874 01:B864: A9 24     LDA #$24
C - - - - - 0x007876 01:B866: 8D 06 20  STA $2006
C - - - - - 0x007879 01:B869: A9 CC     LDA #$CC
C - - - - - 0x00787B 01:B86B: 8D 06 20  STA $2006
C - - - - - 0x00787E 01:B86E: A0 00     LDY #$00
bra_B870:
C - - - - - 0x007880 01:B870: B9 99 B8  LDA tbl_B899,Y
C - - - - - 0x007883 01:B873: 8D 07 20  STA $2007
C - - - - - 0x007886 01:B876: C8        INY
C - - - - - 0x007887 01:B877: C0 08     CPY #$08
C - - - - - 0x007889 01:B879: 90 F5     BCC bra_B870
C - - - - - 0x00788B 01:B87B: AD 02 20  LDA $2002
C - - - - - 0x00788E 01:B87E: A9 24     LDA #$24
C - - - - - 0x007890 01:B880: 8D 06 20  STA $2006
C - - - - - 0x007893 01:B883: A9 EC     LDA #$EC
C - - - - - 0x007895 01:B885: 8D 06 20  STA $2006
C - - - - - 0x007898 01:B888: A0 00     LDY #$00
bra_B88A:
C - - - - - 0x00789A 01:B88A: B9 99 B8  LDA tbl_B899,Y
C - - - - - 0x00789D 01:B88D: 18        CLC
C - - - - - 0x00789E 01:B88E: 69 10     ADC #$10
C - - - - - 0x0078A0 01:B890: 8D 07 20  STA $2007
C - - - - - 0x0078A3 01:B893: C8        INY
C - - - - - 0x0078A4 01:B894: C0 08     CPY #$08
C - - - - - 0x0078A6 01:B896: 90 F2     BCC bra_B88A
C - - - - - 0x0078A8 01:B898: 60        RTS



tbl_B899:
- D 1 - - - 0x0078A9 01:B899: 87        .byte $87   ; 
- D 1 - - - 0x0078AA 01:B89A: 80        .byte $80   ; 
- D 1 - - - 0x0078AB 01:B89B: 8B        .byte $8B   ; 
- D 1 - - - 0x0078AC 01:B89C: 85        .byte $85   ; 
- D 1 - - - 0x0078AD 01:B89D: A3        .byte $A3   ; 
- D 1 - - - 0x0078AE 01:B89E: 88        .byte $88   ; 
- D 1 - - - 0x0078AF 01:B89F: 8C        .byte $8C   ; 
- D 1 - - - 0x0078B0 01:B8A0: 84        .byte $84   ; 



loc_B8A1:
C D 1 - - - 0x0078B1 01:B8A1: A9 00     LDA #$00
C - - - - - 0x0078B3 01:B8A3: 8D E8 05  STA ram_след_hi_2006
C - - - - - 0x0078B6 01:B8A6: 8D EC 05  STA ram_след_lo_2006
C - - - - - 0x0078B9 01:B8A9: 8D E9 05  STA ram_след_hi_2006 + 1
C - - - - - 0x0078BC 01:B8AC: 8D ED 05  STA ram_след_lo_2006 + 1
C - - - - - 0x0078BF 01:B8AF: A9 24     LDA #$24
C - - - - - 0x0078C1 01:B8B1: 8D EB 05  STA ram_след_hi_2006 + 3
C - - - - - 0x0078C4 01:B8B4: A9 18     LDA #$18
C - - - - - 0x0078C6 01:B8B6: 8D EA 05  STA ram_след_hi_2006 + 2
C - - - - - 0x0078C9 01:B8B9: A9 FF     LDA #$FF
C - - - - - 0x0078CB 01:B8BB: 8D F5 05  STA ram_флаг_гола
C - - - - - 0x0078CE 01:B8BE: AD 30 06  LDA ram_0630
C - - - - - 0x0078D1 01:B8C1: 29 03     AND #$03
C - - - - - 0x0078D3 01:B8C3: 18        CLC
C - - - - - 0x0078D4 01:B8C4: 69 10     ADC #$10
C - - - - - 0x0078D6 01:B8C6: 20 68 C0  JSR sub_0x01C078
C - - - - - 0x0078D9 01:B8C9: 20 11 C0  JSR sub_0x01C021
C - - - - - 0x0078DC 01:B8CC: 20 17 C0  JSR sub_0x01C027
C - - - - - 0x0078DF 01:B8CF: 20 1D C0  JSR sub_0x01C02D
C - - - - - 0x0078E2 01:B8D2: 20 5C B5  JSR sub_B55C
C - - - - - 0x0078E5 01:B8D5: 20 55 B9  JSR sub_B955
C - - - - - 0x0078E8 01:B8D8: AD 30 06  LDA ram_0630
C - - - - - 0x0078EB 01:B8DB: 10 3A     BPL bra_B917
C - - - - - 0x0078ED 01:B8DD: 29 03     AND #$03
C - - - - - 0x0078EF 01:B8DF: F0 07     BEQ bra_B8E8
C - - - - - 0x0078F1 01:B8E1: C9 01     CMP #$01
C - - - - - 0x0078F3 01:B8E3: F0 0B     BEQ bra_B8F0
- - - - - - 0x0078F5 01:B8E5: 4C 05 B9  JMP loc_B905
bra_B8E8:
C - - - - - 0x0078F8 01:B8E8: A9 01     LDA #$01
C - - - - - 0x0078FA 01:B8EA: 8D EC 05  STA ram_след_lo_2006
C - - - - - 0x0078FD 01:B8ED: 4C 17 B9  JMP loc_B917
bra_B8F0:
C - - - - - 0x007900 01:B8F0: A9 02     LDA #$02
C - - - - - 0x007902 01:B8F2: 8D EC 05  STA ram_след_lo_2006
C - - - - - 0x007905 01:B8F5: A2 00     LDX #$00
bra_B8F7:
C - - - - - 0x007907 01:B8F7: BD 35 B9  LDA tbl_B935,X
C - - - - - 0x00790A 01:B8FA: 9D 20 06  STA ram_0620,X
C - - - - - 0x00790D 01:B8FD: E8        INX
C - - - - - 0x00790E 01:B8FE: E0 10     CPX #$10
C - - - - - 0x007910 01:B900: 90 F5     BCC bra_B8F7
C - - - - - 0x007912 01:B902: 4C 17 B9  JMP loc_B917
loc_B905:
- - - - - - 0x007915 01:B905: A9 03     LDA #$03
- - - - - - 0x007917 01:B907: 8D EC 05  STA ram_след_lo_2006
- - - - - - 0x00791A 01:B90A: A2 00     LDX #$00
bra_B90C:
- - - - - - 0x00791C 01:B90C: BD 45 B9  LDA tbl_B945,X
- - - - - - 0x00791F 01:B90F: 9D 20 06  STA ram_0620,X
- - - - - - 0x007922 01:B912: E8        INX
- - - - - - 0x007923 01:B913: E0 10     CPX #$10
- - - - - - 0x007925 01:B915: 90 F5     BCC bra_B90C
bra_B917:
loc_B917:
C D 1 - - - 0x007927 01:B917: AD FB 05  LDA ram_опция_поверхность_влажность
C - - - - - 0x00792A 01:B91A: 29 0F     AND #$0F
C - - - - - 0x00792C 01:B91C: 0A        ASL
C - - - - - 0x00792D 01:B91D: 18        CLC
C - - - - - 0x00792E 01:B91E: 69 3D     ADC #$3D
C - - - - - 0x007930 01:B920: 8D AC 05  STA ram_номер_палитры_фона
C - - - - - 0x007933 01:B923: A9 0A     LDA #$0A
C - - - - - 0x007935 01:B925: 8D AD 05  STA ram_номер_палитры_фона + 1
C - - - - - 0x007938 01:B928: AD FB 05  LDA ram_опция_поверхность_влажность
C - - - - - 0x00793B 01:B92B: 29 F0     AND #$F0
C - - - - - 0x00793D 01:B92D: C9 30     CMP #$30
C - - - - - 0x00793F 01:B92F: 90 03     BCC bra_B934_RTS
- - - - - - 0x007941 01:B931: EE AC 05  INC ram_номер_палитры_фона
bra_B934_RTS:
C - - - - - 0x007944 01:B934: 60        RTS



tbl_B935:
- D 1 - - - 0x007945 01:B935: E3        .byte $E3   ; 
- D 1 - - - 0x007946 01:B936: E4        .byte $E4   ; 
- D 1 - - - 0x007947 01:B937: F3        .byte $F3   ; 
- D 1 - - - 0x007948 01:B938: F4        .byte $F4   ; 
- D 1 - - - 0x007949 01:B939: E7        .byte $E7   ; 
- D 1 - - - 0x00794A 01:B93A: E8        .byte $E8   ; 
- D 1 - - - 0x00794B 01:B93B: F7        .byte $F7   ; 
- D 1 - - - 0x00794C 01:B93C: F8        .byte $F8   ; 
- D 1 - - - 0x00794D 01:B93D: E1        .byte $E1   ; 
- D 1 - - - 0x00794E 01:B93E: E2        .byte $E2   ; 
- D 1 - - - 0x00794F 01:B93F: F1        .byte $F1   ; 
- D 1 - - - 0x007950 01:B940: F2        .byte $F2   ; 
- D 1 - - - 0x007951 01:B941: E5        .byte $E5   ; 
- D 1 - - - 0x007952 01:B942: E6        .byte $E6   ; 
- D 1 - - - 0x007953 01:B943: F5        .byte $F5   ; 
- D 1 - - - 0x007954 01:B944: F6        .byte $F6   ; 



tbl_B945:
- - - - - - 0x007955 01:B945: EF        .byte $EF   ; 
- - - - - - 0x007956 01:B946: A0        .byte $A0   ; 
- - - - - - 0x007957 01:B947: FF        .byte $FF   ; 
- - - - - - 0x007958 01:B948: B0        .byte $B0   ; 
- - - - - - 0x007959 01:B949: ED        .byte $ED   ; 
- - - - - - 0x00795A 01:B94A: EE        .byte $EE   ; 
- - - - - - 0x00795B 01:B94B: FD        .byte $FD   ; 
- - - - - - 0x00795C 01:B94C: FE        .byte $FE   ; 
- - - - - - 0x00795D 01:B94D: EB        .byte $EB   ; 
- - - - - - 0x00795E 01:B94E: EC        .byte $EC   ; 
- - - - - - 0x00795F 01:B94F: FB        .byte $FB   ; 
- - - - - - 0x007960 01:B950: FC        .byte $FC   ; 
- - - - - - 0x007961 01:B951: E9        .byte $E9   ; 
- - - - - - 0x007962 01:B952: EA        .byte $EA   ; 
- - - - - - 0x007963 01:B953: F9        .byte $F9   ; 
- - - - - - 0x007964 01:B954: FA        .byte $FA   ; 



sub_B955:
C - - - - - 0x007965 01:B955: AD FB 05  LDA ram_опция_поверхность_влажность
C - - - - - 0x007968 01:B958: 29 0F     AND #$0F
C - - - - - 0x00796A 01:B95A: 0A        ASL
C - - - - - 0x00796B 01:B95B: A8        TAY
C - - - - - 0x00796C 01:B95C: B9 A8 B9  LDA tbl_B9A8,Y
C - - - - - 0x00796F 01:B95F: 85 2C     STA ram_002C
C - - - - - 0x007971 01:B961: B9 A9 B9  LDA tbl_B9A8 + 1,Y
C - - - - - 0x007974 01:B964: 85 2D     STA ram_002D
C - - - - - 0x007976 01:B966: A9 23     LDA #$23
C - - - - - 0x007978 01:B968: 85 1C     STA ram_001C
C - - - - - 0x00797A 01:B96A: A9 00     LDA #$00
C - - - - - 0x00797C 01:B96C: 85 1D     STA ram_001D
C - - - - - 0x00797E 01:B96E: 20 7D B9  JSR sub_B97D
C - - - - - 0x007981 01:B971: A9 27     LDA #$27
C - - - - - 0x007983 01:B973: 85 1C     STA ram_001C
C - - - - - 0x007985 01:B975: A9 00     LDA #$00
C - - - - - 0x007987 01:B977: 85 1D     STA ram_001D
C - - - - - 0x007989 01:B979: 20 7D B9  JSR sub_B97D
C - - - - - 0x00798C 01:B97C: 60        RTS



sub_B97D:
C - - - - - 0x00798D 01:B97D: A5 4C     LDA ram_для_2000
C - - - - - 0x00798F 01:B97F: 09 04     ORA #$04
C - - - - - 0x007991 01:B981: 85 4C     STA ram_для_2000
C - - - - - 0x007993 01:B983: 8D 00 20  STA $2000
bra_B986:
C - - - - - 0x007996 01:B986: AD 02 20  LDA $2002
C - - - - - 0x007999 01:B989: A5 1C     LDA ram_001C
C - - - - - 0x00799B 01:B98B: 8D 06 20  STA $2006
C - - - - - 0x00799E 01:B98E: A5 1D     LDA ram_001D
C - - - - - 0x0079A0 01:B990: 8D 06 20  STA $2006
C - - - - - 0x0079A3 01:B993: A0 00     LDY #$00
bra_B995:
C - - - - - 0x0079A5 01:B995: B1 2C     LDA (ram_002C),Y
C - - - - - 0x0079A7 01:B997: 8D 07 20  STA $2007
C - - - - - 0x0079AA 01:B99A: C8        INY
C - - - - - 0x0079AB 01:B99B: C0 06     CPY #$06
C - - - - - 0x0079AD 01:B99D: 90 F6     BCC bra_B995
C - - - - - 0x0079AF 01:B99F: E6 1D     INC ram_001D
C - - - - - 0x0079B1 01:B9A1: A5 1D     LDA ram_001D
C - - - - - 0x0079B3 01:B9A3: C9 20     CMP #$20
C - - - - - 0x0079B5 01:B9A5: 90 DF     BCC bra_B986
C - - - - - 0x0079B7 01:B9A7: 60        RTS



tbl_B9A8:
- D 1 - - - 0x0079B8 01:B9A8: AE B9     .word off_B9AE_00
- - - - - - 0x0079BA 01:B9AA: B4 B9     .word off_B9B4_01
- - - - - - 0x0079BC 01:B9AC: BA B9     .word off_B9BA_02



off_B9AE_00:
- D 1 - I - 0x0079BE 01:B9AE: 10        .byte $10   ; 
- D 1 - I - 0x0079BF 01:B9AF: 20        .byte $20   ; 
- D 1 - I - 0x0079C0 01:B9B0: 02        .byte $02   ; 
- D 1 - I - 0x0079C1 01:B9B1: 02        .byte $02   ; 
- D 1 - I - 0x0079C2 01:B9B2: 20        .byte $20   ; 
- D 1 - I - 0x0079C3 01:B9B3: 20        .byte $20   ; 



off_B9B4_01:
- - - - - - 0x0079C4 01:B9B4: 11        .byte $11   ; 
- - - - - - 0x0079C5 01:B9B5: 21        .byte $21   ; 
- - - - - - 0x0079C6 01:B9B6: 21        .byte $21   ; 
- - - - - - 0x0079C7 01:B9B7: 21        .byte $21   ; 
- - - - - - 0x0079C8 01:B9B8: 21        .byte $21   ; 
- - - - - - 0x0079C9 01:B9B9: 21        .byte $21   ; 



off_B9BA_02:
- - - - - - 0x0079CA 01:B9BA: 12        .byte $12   ; 
- - - - - - 0x0079CB 01:B9BB: 22        .byte $22   ; 
- - - - - - 0x0079CC 01:B9BC: 22        .byte $22   ; 
- - - - - - 0x0079CD 01:B9BD: 22        .byte $22   ; 
- - - - - - 0x0079CE 01:B9BE: 22        .byte $22   ; 
- - - - - - 0x0079CF 01:B9BF: 22        .byte $22   ; 



loc_B9C0:
C D 1 - - - 0x0079D0 01:B9C0: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x0079D3 01:B9C3: F0 22     BEQ bra_B9E7_RTS
C - - - - - 0x0079D5 01:B9C5: 30 0F     BMI bra_B9D6
C - - - - - 0x0079D7 01:B9C7: 0A        ASL
C - - - - - 0x0079D8 01:B9C8: A8        TAY
C - - - - - 0x0079D9 01:B9C9: B9 E8 B9  LDA tbl_B9E8,Y
C - - - - - 0x0079DC 01:B9CC: 85 2C     STA ram_002C
C - - - - - 0x0079DE 01:B9CE: B9 E9 B9  LDA tbl_B9E8 + 1,Y
C - - - - - 0x0079E1 01:B9D1: 85 2D     STA ram_002D
C - - - - - 0x0079E3 01:B9D3: 6C 2C 00  JMP (ram_002C)
bra_B9D6:
C - - - - - 0x0079E6 01:B9D6: 29 7F     AND #$7F
C - - - - - 0x0079E8 01:B9D8: 0A        ASL
C - - - - - 0x0079E9 01:B9D9: A8        TAY
C - - - - - 0x0079EA 01:B9DA: B9 F6 B9  LDA tbl_B9F6,Y
C - - - - - 0x0079ED 01:B9DD: 85 2C     STA ram_002C
C - - - - - 0x0079EF 01:B9DF: B9 F7 B9  LDA tbl_B9F6 + 1,Y
C - - - - - 0x0079F2 01:B9E2: 85 2D     STA ram_002D
C - - - - - 0x0079F4 01:B9E4: 6C 2C 00  JMP (ram_002C)
bra_B9E7_RTS:
C - - - - - 0x0079F7 01:B9E7: 60        RTS



tbl_B9E8:
- - - - - - 0x0079F8 01:B9E8: 8A BA     .word ofs_BA8A_00_RTS
- D 1 - - - 0x0079FA 01:B9EA: 8B BA     .word ofs_BA8B_01
- D 1 - - - 0x0079FC 01:B9EC: 3D BB     .word ofs_BB3D_02_RTS
- D 1 - - - 0x0079FE 01:B9EE: 3E BB     .word ofs_BB3E_03
- D 1 - - - 0x007A00 01:B9F0: CA BB     .word ofs_BBCA_04_RTS
- D 1 - - - 0x007A02 01:B9F2: CA BB     .word ofs_BBCA_05_RTS
- D 1 - - - 0x007A04 01:B9F4: CA BB     .word ofs_BBCA_06_RTS



tbl_B9F6:
- - - - - - 0x007A06 01:B9F6: 04 BA     .word ofs_BA04_00_RTS
- D 1 - - - 0x007A08 01:B9F8: 05 BA     .word ofs_BA05_01
- D 1 - - - 0x007A0A 01:B9FA: 2D BA     .word ofs_BA2D_02_RTS
- D 1 - - - 0x007A0C 01:B9FC: 2E BA     .word ofs_BA2E_03
- D 1 - - - 0x007A0E 01:B9FE: 8A BA     .word ofs_BA8A_04_RTS
- - - - - - 0x007A10 01:BA00: 8A BA     .word ofs_BA8A_05_RTS
- - - - - - 0x007A12 01:BA02: 8A BA     .word ofs_BA8A_06_RTS



ofs_BA04_00_RTS:
- - - - - - 0x007A14 01:BA04: 60        RTS



ofs_BA05_01:
C - - J - - 0x007A15 01:BA05: A9 00     LDA #$00
C - - - - - 0x007A17 01:BA07: 8D FD 05  STA ram_сила_ветра
C - - - - - 0x007A1A 01:BA0A: 8D 3F 01  STA ram_длительность_погоды_ХЗ
C - - - - - 0x007A1D 01:BA0D: A9 45     LDA #$45
C - - - - - 0x007A1F 01:BA0F: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x007A22 01:BA12: AD 45 00  LDA a: ram_рандом
C - - - - - 0x007A25 01:BA15: 29 07     AND #$07
C - - - - - 0x007A27 01:BA17: 8D E4 05  STA ram_05E4
C - - - - - 0x007A2A 01:BA1A: 4C 8B BA  JMP loc_BA8B



tbl_BA1D:
- - - - - - 0x007A2D 01:BA1D: 70        .byte $70   ; 
- - - - - - 0x007A2E 01:BA1E: 70        .byte $70   ; 
- D 1 - - - 0x007A2F 01:BA1F: 30        .byte $30   ; 
- D 1 - - - 0x007A30 01:BA20: B0        .byte $B0   ; 
- - - - - - 0x007A31 01:BA21: 30        .byte $30   ; 
- - - - - - 0x007A32 01:BA22: B0        .byte $B0   ; 
- D 1 - - - 0x007A33 01:BA23: 30        .byte $30   ; 
- - - - - - 0x007A34 01:BA24: B0        .byte $B0   ; 



tbl_BA25:
- - - - - - 0x007A35 01:BA25: 68        .byte $68   ; 
- - - - - - 0x007A36 01:BA26: 68        .byte $68   ; 
- D 1 - - - 0x007A37 01:BA27: 98        .byte $98   ; 
- D 1 - - - 0x007A38 01:BA28: 98        .byte $98   ; 
- - - - - - 0x007A39 01:BA29: 38        .byte $38   ; 
- - - - - - 0x007A3A 01:BA2A: 38        .byte $38   ; 
- D 1 - - - 0x007A3B 01:BA2B: 98        .byte $98   ; 
- - - - - - 0x007A3C 01:BA2C: 98        .byte $98   ; 



ofs_BA2D_02_RTS:
C - - J - - 0x007A3D 01:BA2D: 60        RTS



ofs_BA2E_03:
C - - J - - 0x007A3E 01:BA2E: A9 41     LDA #$41
C - - - - - 0x007A40 01:BA30: 20 02 C0  JSR sub_0x01C012
C - - - - - 0x007A43 01:BA33: A9 00     LDA #$00
C - - - - - 0x007A45 01:BA35: 8D FD 05  STA ram_сила_ветра
C - - - - - 0x007A48 01:BA38: AD 45 00  LDA a: ram_рандом
C - - - - - 0x007A4B 01:BA3B: 29 BF     AND #$BF
C - - - - - 0x007A4D 01:BA3D: 18        CLC
C - - - - - 0x007A4E 01:BA3E: 6D EC 00  ADC a: ram_камера_X_lo
C - - - - - 0x007A51 01:BA41: 8D 21 03  STA ram_погода_X_lo
C - - - - - 0x007A54 01:BA44: AD ED 00  LDA a: ram_камера_X_hi
C - - - - - 0x007A57 01:BA47: 69 00     ADC #$00
C - - - - - 0x007A59 01:BA49: 8D 34 03  STA ram_погода_X_hi
C - - - - - 0x007A5C 01:BA4C: AD EE 00  LDA a: ram_камера_Y_lo
C - - - - - 0x007A5F 01:BA4F: 18        CLC
C - - - - - 0x007A60 01:BA50: 6D 45 00  ADC a: ram_рандом
C - - - - - 0x007A63 01:BA53: 8D 5A 03  STA ram_погода_Y_lo
C - - - - - 0x007A66 01:BA56: AD EF 00  LDA a: ram_камера_Y_hi
C - - - - - 0x007A69 01:BA59: 69 00     ADC #$00
C - - - - - 0x007A6B 01:BA5B: 8D 6D 03  STA ram_погода_Y_hi
C - - - - - 0x007A6E 01:BA5E: A9 00     LDA #$00
C - - - - - 0x007A70 01:BA60: 8D 3F 01  STA ram_длительность_погоды_ХЗ
C - - - - - 0x007A73 01:BA63: 8D F5 03  STA ram_погода_spd_X_lo
C - - - - - 0x007A76 01:BA66: 8D 11 04  STA ram_погода_spd_Y_lo
C - - - - - 0x007A79 01:BA69: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x007A7C 01:BA6C: 10 05     BPL bra_BA73
C - - - - - 0x007A7E 01:BA6E: A9 01     LDA #$01
C - - - - - 0x007A80 01:BA70: 4C 75 BA  JMP loc_BA75
bra_BA73:
- - - - - - 0x007A83 01:BA73: A9 FF     LDA #$FF
loc_BA75:
C D 1 - - - 0x007A85 01:BA75: 8D 03 04  STA ram_погода_spd_X_hi
C - - - - - 0x007A88 01:BA78: 20 05 C0  JSR sub_0x01C015
C - - - - - 0x007A8B 01:BA7B: 10 05     BPL bra_BA82
C - - - - - 0x007A8D 01:BA7D: A9 02     LDA #$02
; bzk опт
C - - - - - 0x007A8F 01:BA7F: 4C 84 BA  JMP loc_BA84
bra_BA82:
- - - - - - 0x007A92 01:BA82: A9 FE     LDA #$FE
loc_BA84:
C D 1 - - - 0x007A94 01:BA84: 8D 1F 04  STA ram_погода_spd_Y_hi
C - - - - - 0x007A97 01:BA87: 4C 3E BB  JMP loc_BB3E



ofs_BA8A_00_RTS:
ofs_BA8A_04_RTS:
ofs_BA8A_05_RTS:
ofs_BA8A_06_RTS:
C - - J - - 0x007A9A 01:BA8A: 60        RTS



loc_BA8B:
ofs_BA8B_01:
C D 1 - - - 0x007A9B 01:BA8B: AD E4 05  LDA ram_05E4
C - - - - - 0x007A9E 01:BA8E: A8        TAY
C - - - - - 0x007A9F 01:BA8F: B9 1D BA  LDA tbl_BA1D,Y
C - - - - - 0x007AA2 01:BA92: 85 1C     STA ram_001C
C - - - - - 0x007AA4 01:BA94: B9 25 BA  LDA tbl_BA25,Y
C - - - - - 0x007AA7 01:BA97: 85 1D     STA ram_001D
C - - - - - 0x007AA9 01:BA99: AD EC 00  LDA a: ram_камера_X_lo
C - - - - - 0x007AAC 01:BA9C: 18        CLC
C - - - - - 0x007AAD 01:BA9D: 65 1C     ADC ram_001C
C - - - - - 0x007AAF 01:BA9F: 8D 21 03  STA ram_погода_X_lo
C - - - - - 0x007AB2 01:BAA2: AD ED 00  LDA a: ram_камера_X_hi
C - - - - - 0x007AB5 01:BAA5: 69 00     ADC #$00
C - - - - - 0x007AB7 01:BAA7: 8D 34 03  STA ram_погода_X_hi
C - - - - - 0x007ABA 01:BAAA: AD EE 00  LDA a: ram_камера_Y_lo
C - - - - - 0x007ABD 01:BAAD: 18        CLC
C - - - - - 0x007ABE 01:BAAE: 65 1D     ADC ram_001D
C - - - - - 0x007AC0 01:BAB0: 8D 5A 03  STA ram_погода_Y_lo
C - - - - - 0x007AC3 01:BAB3: AD EF 00  LDA a: ram_камера_Y_hi
C - - - - - 0x007AC6 01:BAB6: 69 00     ADC #$00
C - - - - - 0x007AC8 01:BAB8: 8D 6D 03  STA ram_погода_Y_hi
C - - - - - 0x007ACB 01:BABB: 20 CB BB  JSR sub_BBCB
C - - - - - 0x007ACE 01:BABE: A9 01     LDA #$01
C - - - - - 0x007AD0 01:BAC0: 8D E6 00  STA a: ram_00E6
C - - - - - 0x007AD3 01:BAC3: EE 3F 01  INC ram_длительность_погоды_ХЗ
C - - - - - 0x007AD6 01:BAC6: AD 3F 01  LDA ram_длительность_погоды_ХЗ
C - - - - - 0x007AD9 01:BAC9: C9 14     CMP #$14
C - - - - - 0x007ADB 01:BACB: 90 1B     BCC bra_BAE8
C - - - - - 0x007ADD 01:BACD: 20 B2 BF  JSR sub_BFB2
C - - - - - 0x007AE0 01:BAD0: AD F4 05  LDA ram_цвет_поля
C - - - - - 0x007AE3 01:BAD3: 8D AC 05  STA ram_номер_палитры_фона
C - - - - - 0x007AE6 01:BAD6: A9 00     LDA #$00
C - - - - - 0x007AE8 01:BAD8: 8D 66 04  STA ram_погода_номер_эффекта
C - - - - - 0x007AEB 01:BADB: A9 0C     LDA #$0C
C - - - - - 0x007AED 01:BADD: 8D AC 03  STA ram_объем_дождя
C - - - - - 0x007AF0 01:BAE0: A9 00     LDA #$00
C - - - - - 0x007AF2 01:BAE2: 8D E6 00  STA a: ram_00E6
C - - - - - 0x007AF5 01:BAE5: 4C 17 BB  JMP loc_BB17
bra_BAE8:
C - - - - - 0x007AF8 01:BAE8: 29 07     AND #$07
C - - - - - 0x007AFA 01:BAEA: A8        TAY
C - - - - - 0x007AFB 01:BAEB: B9 2D BB  LDA tbl_BB2D,Y
C - - - - - 0x007AFE 01:BAEE: F0 0A     BEQ bra_BAFA
C - - - - - 0x007B00 01:BAF0: 98        TYA
C - - - - - 0x007B01 01:BAF1: 48        PHA
C - - - - - 0x007B02 01:BAF2: 20 B2 BF  JSR sub_BFB2
C - - - - - 0x007B05 01:BAF5: 68        PLA
C - - - - - 0x007B06 01:BAF6: A8        TAY
C - - - - - 0x007B07 01:BAF7: 4C 06 BB  JMP loc_BB06
bra_BAFA:
C - - - - - 0x007B0A 01:BAFA: 8D AE 05  STA ram_номер_палитры_спрайтов
C - - - - - 0x007B0D 01:BAFD: 8D AF 05  STA ram_номер_палитры_спрайтов + 1
C - - - - - 0x007B10 01:BB00: 8D B0 05  STA ram_номер_палитры_спрайтов + 2
C - - - - - 0x007B13 01:BB03: 8D B1 05  STA ram_номер_палитры_спрайтов + 3
loc_BB06:
C D 1 - - - 0x007B16 01:BB06: B9 35 BB  LDA tbl_BB35,Y
C - - - - - 0x007B19 01:BB09: D0 09     BNE bra_BB14
C - - - - - 0x007B1B 01:BB0B: AD F4 05  LDA ram_цвет_поля
C - - - - - 0x007B1E 01:BB0E: 8D AC 05  STA ram_номер_палитры_фона
C - - - - - 0x007B21 01:BB11: 4C 17 BB  JMP loc_BB17
bra_BB14:
C - - - - - 0x007B24 01:BB14: 8D AC 05  STA ram_номер_палитры_фона
loc_BB17:
C D 1 - - - 0x007B27 01:BB17: 20 6E C0  JSR sub_0x01C07E
C - - - - - 0x007B2A 01:BB1A: A9 20     LDA #$20
C - - - - - 0x007B2C 01:BB1C: 8D DB 06  STA ram_счетчик_буфера_палитры
C - - - - - 0x007B2F 01:BB1F: A9 00     LDA #$00
C - - - - - 0x007B31 01:BB21: 8D 92 06  STA ram_бит_для_2000_палитра
C - - - - - 0x007B34 01:BB24: 8D DA 06  STA ram_байт_2006_lo_палитра
C - - - - - 0x007B37 01:BB27: A9 3F     LDA #$3F
C - - - - - 0x007B39 01:BB29: 8D D9 06  STA ram_байт_2006_hi_палитра
C - - - - - 0x007B3C 01:BB2C: 60        RTS



tbl_BB2D:
- D 1 - - - 0x007B3D 01:BB2D: 00        .byte $00   ; 
- D 1 - - - 0x007B3E 01:BB2E: 00        .byte $00   ; 
- D 1 - - - 0x007B3F 01:BB2F: 18        .byte $18   ; 
- D 1 - - - 0x007B40 01:BB30: 18        .byte $18   ; 
- D 1 - - - 0x007B41 01:BB31: 00        .byte $00   ; 
- D 1 - - - 0x007B42 01:BB32: 00        .byte $00   ; 
- D 1 - - - 0x007B43 01:BB33: 00        .byte $00   ; 
- D 1 - - - 0x007B44 01:BB34: 18        .byte $18   ; 



tbl_BB35:
- D 1 - - - 0x007B45 01:BB35: 05        .byte $05   ; 
- D 1 - - - 0x007B46 01:BB36: 05        .byte $05   ; 
- D 1 - - - 0x007B47 01:BB37: 06        .byte $06   ; 
- D 1 - - - 0x007B48 01:BB38: 05        .byte $05   ; 
- D 1 - - - 0x007B49 01:BB39: 06        .byte $06   ; 
- D 1 - - - 0x007B4A 01:BB3A: 05        .byte $05   ; 
- D 1 - - - 0x007B4B 01:BB3B: 06        .byte $06   ; 
- D 1 - - - 0x007B4C 01:BB3C: 00        .byte $00   ; 



ofs_BB3D_02_RTS:
C - - J - - 0x007B4D 01:BB3D: 60        RTS



loc_BB3E:
ofs_BB3E_03:
C D 1 - - - 0x007B4E 01:BB3E: A2 0D     LDX #$0D
C - - - - - 0x007B50 01:BB40: 20 BC BF  JSR sub_BFBC
C - - - - - 0x007B53 01:BB43: AD 6D 03  LDA ram_погода_Y_hi
C - - - - - 0x007B56 01:BB46: C9 01     CMP #$01
C - - - - - 0x007B58 01:BB48: F0 0A     BEQ bra_BB54
- - - - - - 0x007B5A 01:BB4A: AD 5A 03  LDA ram_погода_Y_lo
- - - - - - 0x007B5D 01:BB4D: C9 30     CMP #$30
- - - - - - 0x007B5F 01:BB4F: 90 0D     BCC bra_BB5E
- - - - - - 0x007B61 01:BB51: 4C 8A BB  JMP loc_BB8A
bra_BB54:
C - - - - - 0x007B64 01:BB54: AD 5A 03  LDA ram_погода_Y_lo
C - - - - - 0x007B67 01:BB57: C9 68     CMP #$68
C - - - - - 0x007B69 01:BB59: 90 2F     BCC bra_BB8A
C - - - - - 0x007B6B 01:BB5B: 4C 6B BB  JMP loc_BB6B
bra_BB5E:
- - - - - - 0x007B6E 01:BB5E: A9 32     LDA #$32
- - - - - - 0x007B70 01:BB60: 8D 5A 03  STA ram_погода_Y_lo
- - - - - - 0x007B73 01:BB63: A9 00     LDA #$00
- - - - - - 0x007B75 01:BB65: 8D 6D 03  STA ram_погода_Y_hi
- - - - - - 0x007B78 01:BB68: 4C 75 BB  JMP loc_BB75



loc_BB6B:
C D 1 - - - 0x007B7B 01:BB6B: A9 01     LDA #$01
C - - - - - 0x007B7D 01:BB6D: 8D 6D 03  STA ram_погода_Y_hi
C - - - - - 0x007B80 01:BB70: A9 65     LDA #$65
C - - - - - 0x007B82 01:BB72: 8D 5A 03  STA ram_погода_Y_lo
loc_BB75:
C - - - - - 0x007B85 01:BB75: AD 11 04  LDA ram_погода_spd_Y_lo
C - - - - - 0x007B88 01:BB78: 49 FF     EOR #$FF
C - - - - - 0x007B8A 01:BB7A: 18        CLC
C - - - - - 0x007B8B 01:BB7B: 69 01     ADC #$01
C - - - - - 0x007B8D 01:BB7D: 8D 11 04  STA ram_погода_spd_Y_lo
C - - - - - 0x007B90 01:BB80: AD 1F 04  LDA ram_погода_spd_Y_hi
C - - - - - 0x007B93 01:BB83: 49 FF     EOR #$FF
C - - - - - 0x007B95 01:BB85: 69 00     ADC #$00
C - - - - - 0x007B97 01:BB87: 8D 1F 04  STA ram_погода_spd_Y_hi
bra_BB8A:
loc_BB8A:
C - - - - - 0x007B9A 01:BB8A: EE 3F 01  INC ram_длительность_погоды_ХЗ
C - - - - - 0x007B9D 01:BB8D: AD 3F 01  LDA ram_длительность_погоды_ХЗ
C - - - - - 0x007BA0 01:BB90: C9 FF     CMP #$FF
C - - - - - 0x007BA2 01:BB92: F0 26     BEQ bra_BBBA
C - - - - - 0x007BA4 01:BB94: AD 34 03  LDA ram_погода_X_hi
C - - - - - 0x007BA7 01:BB97: 30 21     BMI bra_BBBA
C - - - - - 0x007BA9 01:BB99: C9 04     CMP #$04
C - - - - - 0x007BAB 01:BB9B: B0 1D     BCS bra_BBBA
C - - - - - 0x007BAD 01:BB9D: 20 CB BB  JSR sub_BBCB
C - - - - - 0x007BB0 01:BBA0: A5 1C     LDA ram_001C
C - - - - - 0x007BB2 01:BBA2: D0 0B     BNE bra_BBAF
C - - - - - 0x007BB4 01:BBA4: A9 00     LDA #$00
C - - - - - 0x007BB6 01:BBA6: 8D AC 03  STA ram_объем_дождя
C - - - - - 0x007BB9 01:BBA9: 8D E6 00  STA a: ram_00E6
C - - - - - 0x007BBC 01:BBAC: 4C B9 BB  JMP loc_BBB9_RTS
bra_BBAF:
- - - - - - 0x007BBF 01:BBAF: A9 0C     LDA #$0C
- - - - - - 0x007BC1 01:BBB1: 8D AC 03  STA ram_объем_дождя
- - - - - - 0x007BC4 01:BBB4: A9 01     LDA #$01
- - - - - - 0x007BC6 01:BBB6: 8D E6 00  STA a: ram_00E6
loc_BBB9_RTS:
C D 1 - - - 0x007BC9 01:BBB9: 60        RTS
bra_BBBA:
- - - - - - 0x007BCA 01:BBBA: A9 00     LDA #$00
- - - - - - 0x007BCC 01:BBBC: 8D 66 04  STA ram_погода_номер_эффекта
- - - - - - 0x007BCF 01:BBBF: A9 0C     LDA #$0C
- - - - - - 0x007BD1 01:BBC1: 8D AC 03  STA ram_объем_дождя
- - - - - - 0x007BD4 01:BBC4: A9 00     LDA #$00
- - - - - - 0x007BD6 01:BBC6: 8D E6 00  STA a: ram_00E6
- - - - - - 0x007BD9 01:BBC9: 60        RTS



ofs_BBCA_04_RTS:
ofs_BBCA_05_RTS:
ofs_BBCA_06_RTS:
C - - J - - 0x007BDA 01:BBCA: 60        RTS



sub_BBCB:
C - - - - - 0x007BDB 01:BBCB: AD 21 03  LDA ram_погода_X_lo
C - - - - - 0x007BDE 01:BBCE: 38        SEC
C - - - - - 0x007BDF 01:BBCF: ED EC 00  SBC a: ram_камера_X_lo
C - - - - - 0x007BE2 01:BBD2: AD 34 03  LDA ram_погода_X_hi
C - - - - - 0x007BE5 01:BBD5: ED ED 00  SBC a: ram_камера_X_hi
C - - - - - 0x007BE8 01:BBD8: D0 1C     BNE bra_BBF6
C - - - - - 0x007BEA 01:BBDA: AD 5A 03  LDA ram_погода_Y_lo
C - - - - - 0x007BED 01:BBDD: 38        SEC
C - - - - - 0x007BEE 01:BBDE: ED EE 00  SBC a: ram_камера_Y_lo
C - - - - - 0x007BF1 01:BBE1: 85 1D     STA ram_001D
C - - - - - 0x007BF3 01:BBE3: AD 6D 03  LDA ram_погода_Y_hi
C - - - - - 0x007BF6 01:BBE6: ED EF 00  SBC a: ram_камера_Y_hi
C - - - - - 0x007BF9 01:BBE9: D0 0B     BNE bra_BBF6
C - - - - - 0x007BFB 01:BBEB: A5 1D     LDA ram_001D
C - - - - - 0x007BFD 01:BBED: C9 F0     CMP #$F0
C - - - - - 0x007BFF 01:BBEF: B0 05     BCS bra_BBF6
C - - - - - 0x007C01 01:BBF1: A9 01     LDA #$01
C - - - - - 0x007C03 01:BBF3: 4C F8 BB  JMP loc_BBF8
bra_BBF6:
C - - - - - 0x007C06 01:BBF6: A9 00     LDA #$00
loc_BBF8:
C D 1 - - - 0x007C08 01:BBF8: 85 1C     STA ram_001C
C - - - - - 0x007C0A 01:BBFA: AD 21 03  LDA ram_погода_X_lo
C - - - - - 0x007C0D 01:BBFD: 38        SEC
C - - - - - 0x007C0E 01:BBFE: ED EC 00  SBC a: ram_камера_X_lo
C - - - - - 0x007C11 01:BC01: 8D 3D 01  STA ram_013D
C - - - - - 0x007C14 01:BC04: AD 5A 03  LDA ram_погода_Y_lo
C - - - - - 0x007C17 01:BC07: 38        SEC
C - - - - - 0x007C18 01:BC08: ED EE 00  SBC a: ram_камера_Y_lo
C - - - - - 0x007C1B 01:BC0B: 38        SEC
C - - - - - 0x007C1C 01:BC0C: E9 08     SBC #$08
C - - - - - 0x007C1E 01:BC0E: 8D 3E 01  STA ram_013E
C - - - - - 0x007C21 01:BC11: 60        RTS



loc_BC12:
C D 1 - - - 0x007C22 01:BC12: A2 00     LDX #$00
bra_BC14:
C - - - - - 0x007C24 01:BC14: 86 43     STX ram_0043
C - - - - - 0x007C26 01:BC16: 20 1F BC  JSR sub_BC1F
C - - - - - 0x007C29 01:BC19: E8        INX
C - - - - - 0x007C2A 01:BC1A: E0 02     CPX #$02
C - - - - - 0x007C2C 01:BC1C: 90 F6     BCC bra_BC14
C - - - - - 0x007C2E 01:BC1E: 60        RTS



sub_BC1F:
C - - - - - 0x007C2F 01:BC1F: BD 2C 05  LDA ram_номер_команды,X
C - - - - - 0x007C32 01:BC22: 29 0F     AND #$0F
C - - - - - 0x007C34 01:BC24: 0A        ASL
C - - - - - 0x007C35 01:BC25: A8        TAY
C - - - - - 0x007C36 01:BC26: B9 18 BD  LDA tbl_BD18,Y
C - - - - - 0x007C39 01:BC29: 85 2C     STA ram_002C
C - - - - - 0x007C3B 01:BC2B: B9 19 BD  LDA tbl_BD18 + 1,Y
C - - - - - 0x007C3E 01:BC2E: 85 2D     STA ram_002D
loc_BC30:
C D 1 - - - 0x007C40 01:BC30: A9 00     LDA #$00
C - - - - - 0x007C42 01:BC32: 85 1C     STA ram_001C
C - - - - - 0x007C44 01:BC34: A5 57     LDA ram_опция_режим_сложность
C - - - - - 0x007C46 01:BC36: 10 26     BPL bra_BC5E
C - - - - - 0x007C48 01:BC38: 8A        TXA
C - - - - - 0x007C49 01:BC39: 4A        LSR
C - - - - - 0x007C4A 01:BC3A: B0 22     BCS bra_BC5E
C - - - - - 0x007C4C 01:BC3C: AD 2C 05  LDA ram_номер_команды
C - - - - - 0x007C4F 01:BC3F: 29 0F     AND #$0F
C - - - - - 0x007C51 01:BC41: D0 1B     BNE bra_BC5E
C - - - - - 0x007C53 01:BC43: BC 32 05  LDY ram_номер_игрока,X
C - - - - - 0x007C56 01:BC46: B9 D5 05  LDA ram_05D5,Y
C - - - - - 0x007C59 01:BC49: 29 0F     AND #$0F
C - - - - - 0x007C5B 01:BC4B: 85 1D     STA ram_001D
C - - - - - 0x007C5D 01:BC4D: B9 D5 05  LDA ram_05D5,Y
C - - - - - 0x007C60 01:BC50: 29 F0     AND #$F0
C - - - - - 0x007C62 01:BC52: 85 1C     STA ram_001C
C - - - - - 0x007C64 01:BC54: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x007C67 01:BC57: 29 F0     AND #$F0
C - - - - - 0x007C69 01:BC59: 05 1D     ORA ram_001D
C - - - - - 0x007C6B 01:BC5B: 4C 65 BC  JMP loc_BC65
bra_BC5E:
C - - - - - 0x007C6E 01:BC5E: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x007C71 01:BC61: 29 F0     AND #$F0
C - - - - - 0x007C73 01:BC63: 09 08     ORA #$08
loc_BC65:
C D 1 - - - 0x007C75 01:BC65: 9D 50 06  STA ram_позиция_управление,X
C - - - - - 0x007C78 01:BC68: BD 32 05  LDA ram_номер_игрока,X
C - - - - - 0x007C7B 01:BC6B: 0A        ASL
C - - - - - 0x007C7C 01:BC6C: 0A        ASL
C - - - - - 0x007C7D 01:BC6D: A8        TAY
C - - - - - 0x007C7E 01:BC6E: B1 2C     LDA (ram_002C),Y
C - - - - - 0x007C80 01:BC70: 9D E4 04  STA ram_игрок_HP,X
C - - - - - 0x007C83 01:BC73: C8        INY
C - - - - - 0x007C84 01:BC74: B1 2C     LDA (ram_002C),Y
C - - - - - 0x007C86 01:BC76: 9D D7 04  STA ram_тип_скорости,X
C - - - - - 0x007C89 01:BC79: C8        INY
C - - - - - 0x007C8A 01:BC7A: B1 2C     LDA (ram_002C),Y
C - - - - - 0x007C8C 01:BC7C: 9D FD 04  STA ram_защита_поведение,X
C - - - - - 0x007C8F 01:BC7F: C8        INY
C - - - - - 0x007C90 01:BC80: B1 2C     LDA (ram_002C),Y
C - - - - - 0x007C92 01:BC82: 9D F1 04  STA ram_номер_скилла,X
C - - - - - 0x007C95 01:BC85: 20 BA BC  JSR sub_BCBA
C - - - - - 0x007C98 01:BC88: E8        INX
C - - - - - 0x007C99 01:BC89: E8        INX
C - - - - - 0x007C9A 01:BC8A: E0 0C     CPX #$0C
C - - - - - 0x007C9C 01:BC8C: B0 03     BCS bra_BC91
C - - - - - 0x007C9E 01:BC8E: 4C 30 BC  JMP loc_BC30
bra_BC91:
C - - - - - 0x007CA1 01:BC91: A6 43     LDX ram_0043
C - - - - - 0x007CA3 01:BC93: BD 30 05  LDA ram_расстановка_команды,X
C - - - - - 0x007CA6 01:BC96: 29 03     AND #$03
C - - - - - 0x007CA8 01:BC98: 0A        ASL
C - - - - - 0x007CA9 01:BC99: A8        TAY
C - - - - - 0x007CAA 01:BC9A: B9 00 BD  LDA tbl_BD00,Y
C - - - - - 0x007CAD 01:BC9D: 85 2C     STA ram_002C
C - - - - - 0x007CAF 01:BC9F: B9 01 BD  LDA tbl_BD00 + 1,Y
C - - - - - 0x007CB2 01:BCA2: 85 2D     STA ram_002D
C - - - - - 0x007CB4 01:BCA4: A0 00     LDY #$00
bra_BCA6:
C - - - - - 0x007CB6 01:BCA6: BD 50 06  LDA ram_позиция_управление,X
C - - - - - 0x007CB9 01:BCA9: 29 CF     AND #$CF
C - - - - - 0x007CBB 01:BCAB: 11 2C     ORA (ram_002C),Y
C - - - - - 0x007CBD 01:BCAD: 9D 50 06  STA ram_позиция_управление,X
C - - - - - 0x007CC0 01:BCB0: C8        INY
C - - - - - 0x007CC1 01:BCB1: E8        INX
C - - - - - 0x007CC2 01:BCB2: E8        INX
C - - - - - 0x007CC3 01:BCB3: E0 0C     CPX #$0C
C - - - - - 0x007CC5 01:BCB5: 90 EF     BCC bra_BCA6
C - - - - - 0x007CC7 01:BCB7: A6 43     LDX ram_0043
C - - - - - 0x007CC9 01:BCB9: 60        RTS



sub_BCBA:
C - - - - - 0x007CCA 01:BCBA: AD 4A 05  LDA ram_054A
C - - - - - 0x007CCD 01:BCBD: 30 0E     BMI bra_BCCD
C - - - - - 0x007CCF 01:BCBF: 8A        TXA
C - - - - - 0x007CD0 01:BCC0: 29 01     AND #$01
C - - - - - 0x007CD2 01:BCC2: F0 09     BEQ bra_BCCD
C - - - - - 0x007CD4 01:BCC4: 18        CLC
C - - - - - 0x007CD5 01:BCC5: BD E4 04  LDA ram_игрок_HP,X
C - - - - - 0x007CD8 01:BCC8: 69 10     ADC #$10
C - - - - - 0x007CDA 01:BCCA: 9D E4 04  STA ram_игрок_HP,X
bra_BCCD:
C - - - - - 0x007CDD 01:BCCD: A5 1C     LDA ram_001C
C - - - - - 0x007CDF 01:BCCF: F0 2A     BEQ bra_BCFB_RTS
- - - - - - 0x007CE1 01:BCD1: 10 08     BPL bra_BCDB
- - - - - - 0x007CE3 01:BCD3: BD D7 04  LDA ram_тип_скорости,X
- - - - - - 0x007CE6 01:BCD6: 09 80     ORA #$80
- - - - - - 0x007CE8 01:BCD8: 9D D7 04  STA ram_тип_скорости,X
bra_BCDB:
- - - - - - 0x007CEB 01:BCDB: A5 1C     LDA ram_001C
- - - - - - 0x007CED 01:BCDD: 0A        ASL
- - - - - - 0x007CEE 01:BCDE: 10 08     BPL bra_BCE8
- - - - - - 0x007CF0 01:BCE0: BD F1 04  LDA ram_номер_скилла,X
- - - - - - 0x007CF3 01:BCE3: 09 01     ORA #$01
- - - - - - 0x007CF5 01:BCE5: 9D F1 04  STA ram_номер_скилла,X
bra_BCE8:
- - - - - - 0x007CF8 01:BCE8: A5 1C     LDA ram_001C
- - - - - - 0x007CFA 01:BCEA: 4A        LSR
- - - - - - 0x007CFB 01:BCEB: 4A        LSR
- - - - - - 0x007CFC 01:BCEC: 4A        LSR
- - - - - - 0x007CFD 01:BCED: 4A        LSR
- - - - - - 0x007CFE 01:BCEE: 29 03     AND #$03
- - - - - - 0x007D00 01:BCF0: A8        TAY
- - - - - - 0x007D01 01:BCF1: 18        CLC
- - - - - - 0x007D02 01:BCF2: BD E4 04  LDA ram_игрок_HP,X
- - - - - - 0x007D05 01:BCF5: 79 FC BC  ADC tbl_BCFC,Y
- - - - - - 0x007D08 01:BCF8: 9D E4 04  STA ram_игрок_HP,X
bra_BCFB_RTS:
C - - - - - 0x007D0B 01:BCFB: 60        RTS



tbl_BCFC:
- - - - - - 0x007D0C 01:BCFC: 00        .byte $00   ; 
- - - - - - 0x007D0D 01:BCFD: 14        .byte $14   ; 
- - - - - - 0x007D0E 01:BCFE: 0F        .byte $0F   ; 
- - - - - - 0x007D0F 01:BCFF: 0A        .byte $0A   ; 



tbl_BD00:
- D 1 - - - 0x007D10 01:BD00: 06 BD     .word off_BD06_00
- D 1 - - - 0x007D12 01:BD02: 0C BD     .word off_BD0C_01
- D 1 - - - 0x007D14 01:BD04: 12 BD     .word off_BD12_02



off_BD06_00:
- D 1 - I - 0x007D16 01:BD06: 10        .byte $10   ; 
- D 1 - I - 0x007D17 01:BD07: 00        .byte $00   ; 
- D 1 - I - 0x007D18 01:BD08: 00        .byte $00   ; 
- D 1 - I - 0x007D19 01:BD09: 20        .byte $20   ; 
- D 1 - I - 0x007D1A 01:BD0A: 20        .byte $20   ; 
- D 1 - I - 0x007D1B 01:BD0B: 30        .byte $30   ; 



off_BD0C_01:
- D 1 - I - 0x007D1C 01:BD0C: 10        .byte $10   ; 
- D 1 - I - 0x007D1D 01:BD0D: 00        .byte $00   ; 
- D 1 - I - 0x007D1E 01:BD0E: 00        .byte $00   ; 
- D 1 - I - 0x007D1F 01:BD0F: 10        .byte $10   ; 
- D 1 - I - 0x007D20 01:BD10: 20        .byte $20   ; 
- D 1 - I - 0x007D21 01:BD11: 30        .byte $30   ; 



off_BD12_02:
- D 1 - I - 0x007D22 01:BD12: 10        .byte $10   ; 
- D 1 - I - 0x007D23 01:BD13: 00        .byte $00   ; 
- D 1 - I - 0x007D24 01:BD14: 10        .byte $10   ; 
- D 1 - I - 0x007D25 01:BD15: 20        .byte $20   ; 
- D 1 - I - 0x007D26 01:BD16: 20        .byte $20   ; 
- D 1 - I - 0x007D27 01:BD17: 30        .byte $30   ; 



tbl_BD18:
- D 1 - - - 0x007D28 01:BD18: 38 BD     .word off_BD38_00
- D 1 - - - 0x007D2A 01:BD1A: 68 BD     .word off_BD68_01
- - - - - - 0x007D2C 01:BD1C: 80 BD     .word off_BD80_02
- D 1 - - - 0x007D2E 01:BD1E: 98 BD     .word off_BD98_03
- - - - - - 0x007D30 01:BD20: 38 BD     .word off_BD38_04
- D 1 - - - 0x007D32 01:BD22: B0 BD     .word off_BDB0_05
- - - - - - 0x007D34 01:BD24: C8 BD     .word off_BDC8_06
- D 1 - - - 0x007D36 01:BD26: E0 BD     .word off_BDE0_07
- - - - - - 0x007D38 01:BD28: 38 BD     .word off_BD38_08
- D 1 - - - 0x007D3A 01:BD2A: F8 BD     .word off_BDF8_09
- - - - - - 0x007D3C 01:BD2C: 10 BE     .word off_BE10_0A
- D 1 - - - 0x007D3E 01:BD2E: 28 BE     .word off_BE28_0B
- - - - - - 0x007D40 01:BD30: 38 BD     .word off_BD38_0C
- D 1 - - - 0x007D42 01:BD32: 40 BE     .word off_BE40_0D
- D 1 - - - 0x007D44 01:BD34: 58 BE     .word off_BE58_0E
- D 1 - - - 0x007D46 01:BD36: 70 BE     .word off_BE70_0F



off_BD38_00:
off_BD38_04:
off_BD38_08:
off_BD38_0C:
- D 1 - I - 0x007D48 01:BD38: 32        .byte $32   ; 
- D 1 - I - 0x007D49 01:BD39: 01        .byte $01   ; 
- D 1 - I - 0x007D4A 01:BD3A: C1        .byte $C1   ; 
- D 1 - I - 0x007D4B 01:BD3B: 40        .byte $40   ; 
- D 1 - I - 0x007D4C 01:BD3C: 32        .byte $32   ; 
- D 1 - I - 0x007D4D 01:BD3D: 00        .byte $00   ; 
- D 1 - I - 0x007D4E 01:BD3E: 02        .byte $02   ; 
- D 1 - I - 0x007D4F 01:BD3F: 04        .byte $04   ; 
- D 1 - I - 0x007D50 01:BD40: 37        .byte $37   ; 
- D 1 - I - 0x007D51 01:BD41: 01        .byte $01   ; 
- D 1 - I - 0x007D52 01:BD42: 83        .byte $83   ; 
- D 1 - I - 0x007D53 01:BD43: 20        .byte $20   ; 
- D 1 - I - 0x007D54 01:BD44: 3C        .byte $3C   ; 
- D 1 - I - 0x007D55 01:BD45: 03        .byte $03   ; 
- D 1 - I - 0x007D56 01:BD46: 42        .byte $42   ; 
- D 1 - I - 0x007D57 01:BD47: 40        .byte $40   ; 
- D 1 - I - 0x007D58 01:BD48: 2D        .byte $2D   ; 
- D 1 - I - 0x007D59 01:BD49: 01        .byte $01   ; 
- D 1 - I - 0x007D5A 01:BD4A: 82        .byte $82   ; 
- D 1 - I - 0x007D5B 01:BD4B: 08        .byte $08   ; 
- D 1 - I - 0x007D5C 01:BD4C: 3C        .byte $3C   ; 
- D 1 - I - 0x007D5D 01:BD4D: 02        .byte $02   ; 
- D 1 - I - 0x007D5E 01:BD4E: 42        .byte $42   ; 
- D 1 - I - 0x007D5F 01:BD4F: 90        .byte $90   ; 
- D 1 - I - 0x007D60 01:BD50: 2D        .byte $2D   ; 
- D 1 - I - 0x007D61 01:BD51: 03        .byte $03   ; 
- D 1 - I - 0x007D62 01:BD52: 02        .byte $02   ; 
- D 1 - I - 0x007D63 01:BD53: 02        .byte $02   ; 
- D 1 - I - 0x007D64 01:BD54: 32        .byte $32   ; 
- D 1 - I - 0x007D65 01:BD55: 01        .byte $01   ; 
- D 1 - I - 0x007D66 01:BD56: 83        .byte $83   ; 
- D 1 - I - 0x007D67 01:BD57: 80        .byte $80   ; 
- D 1 - I - 0x007D68 01:BD58: 32        .byte $32   ; 
- D 1 - I - 0x007D69 01:BD59: 03        .byte $03   ; 
- D 1 - I - 0x007D6A 01:BD5A: 43        .byte $43   ; 
- D 1 - I - 0x007D6B 01:BD5B: 40        .byte $40   ; 
- D 1 - I - 0x007D6C 01:BD5C: 2D        .byte $2D   ; 
- D 1 - I - 0x007D6D 01:BD5D: 03        .byte $03   ; 
- D 1 - I - 0x007D6E 01:BD5E: 43        .byte $43   ; 
- D 1 - I - 0x007D6F 01:BD5F: 40        .byte $40   ; 
- D 1 - I - 0x007D70 01:BD60: 41        .byte $41   ; 
- D 1 - I - 0x007D71 01:BD61: 01        .byte $01   ; 
- D 1 - I - 0x007D72 01:BD62: C2        .byte $C2   ; 
- D 1 - I - 0x007D73 01:BD63: 80        .byte $80   ; 
- D 1 - I - 0x007D74 01:BD64: 41        .byte $41   ; 
- D 1 - I - 0x007D75 01:BD65: 03        .byte $03   ; 
- D 1 - I - 0x007D76 01:BD66: C1        .byte $C1   ; 
- D 1 - I - 0x007D77 01:BD67: 12        .byte $12   ; 



off_BD68_01:
- D 1 - I - 0x007D78 01:BD68: 28        .byte $28   ; 
- D 1 - I - 0x007D79 01:BD69: 02        .byte $02   ; 
- D 1 - I - 0x007D7A 01:BD6A: 00        .byte $00   ; 
- D 1 - I - 0x007D7B 01:BD6B: 00        .byte $00   ; 
- D 1 - I - 0x007D7C 01:BD6C: 23        .byte $23   ; 
- D 1 - I - 0x007D7D 01:BD6D: 02        .byte $02   ; 
- D 1 - I - 0x007D7E 01:BD6E: C2        .byte $C2   ; 
- D 1 - I - 0x007D7F 01:BD6F: 00        .byte $00   ; 
- D 1 - I - 0x007D80 01:BD70: 28        .byte $28   ; 
- D 1 - I - 0x007D81 01:BD71: 02        .byte $02   ; 
- D 1 - I - 0x007D82 01:BD72: 42        .byte $42   ; 
- D 1 - I - 0x007D83 01:BD73: 00        .byte $00   ; 
- D 1 - I - 0x007D84 01:BD74: 14        .byte $14   ; 
- D 1 - I - 0x007D85 01:BD75: 02        .byte $02   ; 
- D 1 - I - 0x007D86 01:BD76: 42        .byte $42   ; 
- D 1 - I - 0x007D87 01:BD77: 00        .byte $00   ; 
- D 1 - I - 0x007D88 01:BD78: 32        .byte $32   ; 
- D 1 - I - 0x007D89 01:BD79: 02        .byte $02   ; 
- D 1 - I - 0x007D8A 01:BD7A: 42        .byte $42   ; 
- D 1 - I - 0x007D8B 01:BD7B: 00        .byte $00   ; 
- D 1 - I - 0x007D8C 01:BD7C: 28        .byte $28   ; 
- D 1 - I - 0x007D8D 01:BD7D: 02        .byte $02   ; 
- D 1 - I - 0x007D8E 01:BD7E: 42        .byte $42   ; 
- D 1 - I - 0x007D8F 01:BD7F: 00        .byte $00   ; 



off_BD80_02:
- - - - - - 0x007D90 01:BD80: 32        .byte $32   ; 
- - - - - - 0x007D91 01:BD81: 01        .byte $01   ; 
- - - - - - 0x007D92 01:BD82: C1        .byte $C1   ; 
- - - - - - 0x007D93 01:BD83: 00        .byte $00   ; 
- - - - - - 0x007D94 01:BD84: 23        .byte $23   ; 
- - - - - - 0x007D95 01:BD85: 01        .byte $01   ; 
- - - - - - 0x007D96 01:BD86: 41        .byte $41   ; 
- - - - - - 0x007D97 01:BD87: 00        .byte $00   ; 
- - - - - - 0x007D98 01:BD88: 23        .byte $23   ; 
- - - - - - 0x007D99 01:BD89: 02        .byte $02   ; 
- - - - - - 0x007D9A 01:BD8A: 41        .byte $41   ; 
- - - - - - 0x007D9B 01:BD8B: 00        .byte $00   ; 
- - - - - - 0x007D9C 01:BD8C: 46        .byte $46   ; 
- - - - - - 0x007D9D 01:BD8D: 01        .byte $01   ; 
- - - - - - 0x007D9E 01:BD8E: 41        .byte $41   ; 
- - - - - - 0x007D9F 01:BD8F: 00        .byte $00   ; 
- - - - - - 0x007DA0 01:BD90: 46        .byte $46   ; 
- - - - - - 0x007DA1 01:BD91: 03        .byte $03   ; 
- - - - - - 0x007DA2 01:BD92: C1        .byte $C1   ; 
- - - - - - 0x007DA3 01:BD93: 00        .byte $00   ; 
- - - - - - 0x007DA4 01:BD94: 32        .byte $32   ; 
- - - - - - 0x007DA5 01:BD95: 03        .byte $03   ; 
- - - - - - 0x007DA6 01:BD96: 41        .byte $41   ; 
- - - - - - 0x007DA7 01:BD97: 00        .byte $00   ; 



off_BD98_03:
- D 1 - I - 0x007DA8 01:BD98: 14        .byte $14   ; 
- D 1 - I - 0x007DA9 01:BD99: 01        .byte $01   ; 
- D 1 - I - 0x007DAA 01:BD9A: C3        .byte $C3   ; 
- D 1 - I - 0x007DAB 01:BD9B: 40        .byte $40   ; 
- D 1 - I - 0x007DAC 01:BD9C: 14        .byte $14   ; 
- D 1 - I - 0x007DAD 01:BD9D: 01        .byte $01   ; 
- D 1 - I - 0x007DAE 01:BD9E: 83        .byte $83   ; 
- D 1 - I - 0x007DAF 01:BD9F: 40        .byte $40   ; 
- D 1 - I - 0x007DB0 01:BDA0: 14        .byte $14   ; 
- D 1 - I - 0x007DB1 01:BDA1: 00        .byte $00   ; 
- D 1 - I - 0x007DB2 01:BDA2: 83        .byte $83   ; 
- D 1 - I - 0x007DB3 01:BDA3: 40        .byte $40   ; 
- D 1 - I - 0x007DB4 01:BDA4: 14        .byte $14   ; 
- D 1 - I - 0x007DB5 01:BDA5: 02        .byte $02   ; 
- D 1 - I - 0x007DB6 01:BDA6: 83        .byte $83   ; 
- D 1 - I - 0x007DB7 01:BDA7: 40        .byte $40   ; 
- D 1 - I - 0x007DB8 01:BDA8: 28        .byte $28   ; 
- D 1 - I - 0x007DB9 01:BDA9: 02        .byte $02   ; 
- D 1 - I - 0x007DBA 01:BDAA: 43        .byte $43   ; 
- D 1 - I - 0x007DBB 01:BDAB: 40        .byte $40   ; 
- D 1 - I - 0x007DBC 01:BDAC: 23        .byte $23   ; 
- D 1 - I - 0x007DBD 01:BDAD: 02        .byte $02   ; 
- D 1 - I - 0x007DBE 01:BDAE: 83        .byte $83   ; 
- D 1 - I - 0x007DBF 01:BDAF: 40        .byte $40   ; 



off_BDB0_05:
- D 1 - I - 0x007DC0 01:BDB0: 14        .byte $14   ; 
- D 1 - I - 0x007DC1 01:BDB1: 00        .byte $00   ; 
- D 1 - I - 0x007DC2 01:BDB2: C2        .byte $C2   ; 
- D 1 - I - 0x007DC3 01:BDB3: 02        .byte $02   ; 
- D 1 - I - 0x007DC4 01:BDB4: 14        .byte $14   ; 
- D 1 - I - 0x007DC5 01:BDB5: 03        .byte $03   ; 
- D 1 - I - 0x007DC6 01:BDB6: 02        .byte $02   ; 
- D 1 - I - 0x007DC7 01:BDB7: 02        .byte $02   ; 
- D 1 - I - 0x007DC8 01:BDB8: 14        .byte $14   ; 
- D 1 - I - 0x007DC9 01:BDB9: 03        .byte $03   ; 
- D 1 - I - 0x007DCA 01:BDBA: 82        .byte $82   ; 
- D 1 - I - 0x007DCB 01:BDBB: 02        .byte $02   ; 
- D 1 - I - 0x007DCC 01:BDBC: 14        .byte $14   ; 
- D 1 - I - 0x007DCD 01:BDBD: 01        .byte $01   ; 
- D 1 - I - 0x007DCE 01:BDBE: 02        .byte $02   ; 
- D 1 - I - 0x007DCF 01:BDBF: 02        .byte $02   ; 
- D 1 - I - 0x007DD0 01:BDC0: 23        .byte $23   ; 
- D 1 - I - 0x007DD1 01:BDC1: 03        .byte $03   ; 
- D 1 - I - 0x007DD2 01:BDC2: 42        .byte $42   ; 
- D 1 - I - 0x007DD3 01:BDC3: 02        .byte $02   ; 
- D 1 - I - 0x007DD4 01:BDC4: 23        .byte $23   ; 
- D 1 - I - 0x007DD5 01:BDC5: 03        .byte $03   ; 
- D 1 - I - 0x007DD6 01:BDC6: C2        .byte $C2   ; 
- D 1 - I - 0x007DD7 01:BDC7: 02        .byte $02   ; 



off_BDC8_06:
- - - - - - 0x007DD8 01:BDC8: 32        .byte $32   ; 
- - - - - - 0x007DD9 01:BDC9: 03        .byte $03   ; 
- - - - - - 0x007DDA 01:BDCA: C2        .byte $C2   ; 
- - - - - - 0x007DDB 01:BDCB: 00        .byte $00   ; 
- - - - - - 0x007DDC 01:BDCC: 28        .byte $28   ; 
- - - - - - 0x007DDD 01:BDCD: 03        .byte $03   ; 
- - - - - - 0x007DDE 01:BDCE: 42        .byte $42   ; 
- - - - - - 0x007DDF 01:BDCF: 00        .byte $00   ; 
- - - - - - 0x007DE0 01:BDD0: 32        .byte $32   ; 
- - - - - - 0x007DE1 01:BDD1: 03        .byte $03   ; 
- - - - - - 0x007DE2 01:BDD2: 42        .byte $42   ; 
- - - - - - 0x007DE3 01:BDD3: 00        .byte $00   ; 
- - - - - - 0x007DE4 01:BDD4: 28        .byte $28   ; 
- - - - - - 0x007DE5 01:BDD5: 03        .byte $03   ; 
- - - - - - 0x007DE6 01:BDD6: 42        .byte $42   ; 
- - - - - - 0x007DE7 01:BDD7: 00        .byte $00   ; 
- - - - - - 0x007DE8 01:BDD8: 28        .byte $28   ; 
- - - - - - 0x007DE9 01:BDD9: 03        .byte $03   ; 
- - - - - - 0x007DEA 01:BDDA: C2        .byte $C2   ; 
- - - - - - 0x007DEB 01:BDDB: 00        .byte $00   ; 
- - - - - - 0x007DEC 01:BDDC: 32        .byte $32   ; 
- - - - - - 0x007DED 01:BDDD: 03        .byte $03   ; 
- - - - - - 0x007DEE 01:BDDE: 42        .byte $42   ; 
- - - - - - 0x007DEF 01:BDDF: 00        .byte $00   ; 



off_BDE0_07:
- D 1 - I - 0x007DF0 01:BDE0: 46        .byte $46   ; 
- D 1 - I - 0x007DF1 01:BDE1: 03        .byte $03   ; 
- D 1 - I - 0x007DF2 01:BDE2: C2        .byte $C2   ; 
- D 1 - I - 0x007DF3 01:BDE3: 04        .byte $04   ; 
- D 1 - I - 0x007DF4 01:BDE4: 50        .byte $50   ; 
- D 1 - I - 0x007DF5 01:BDE5: 03        .byte $03   ; 
- D 1 - I - 0x007DF6 01:BDE6: C1        .byte $C1   ; 
- D 1 - I - 0x007DF7 01:BDE7: 04        .byte $04   ; 
- D 1 - I - 0x007DF8 01:BDE8: 32        .byte $32   ; 
- D 1 - I - 0x007DF9 01:BDE9: 01        .byte $01   ; 
- D 1 - I - 0x007DFA 01:BDEA: C2        .byte $C2   ; 
- D 1 - I - 0x007DFB 01:BDEB: 04        .byte $04   ; 
- D 1 - I - 0x007DFC 01:BDEC: 46        .byte $46   ; 
- D 1 - I - 0x007DFD 01:BDED: 03        .byte $03   ; 
- D 1 - I - 0x007DFE 01:BDEE: C1        .byte $C1   ; 
- D 1 - I - 0x007DFF 01:BDEF: 04        .byte $04   ; 
- D 1 - I - 0x007E00 01:BDF0: 32        .byte $32   ; 
- D 1 - I - 0x007E01 01:BDF1: 03        .byte $03   ; 
- D 1 - I - 0x007E02 01:BDF2: C1        .byte $C1   ; 
- D 1 - I - 0x007E03 01:BDF3: 04        .byte $04   ; 
- D 1 - I - 0x007E04 01:BDF4: 46        .byte $46   ; 
- D 1 - I - 0x007E05 01:BDF5: 03        .byte $03   ; 
- D 1 - I - 0x007E06 01:BDF6: C1        .byte $C1   ; 
- D 1 - I - 0x007E07 01:BDF7: 04        .byte $04   ; 



off_BDF8_09:
- D 1 - I - 0x007E08 01:BDF8: 50        .byte $50   ; 
- D 1 - I - 0x007E09 01:BDF9: 01        .byte $01   ; 
- D 1 - I - 0x007E0A 01:BDFA: 82        .byte $82   ; 
- D 1 - I - 0x007E0B 01:BDFB: 80        .byte $80   ; 
- D 1 - I - 0x007E0C 01:BDFC: 46        .byte $46   ; 
- D 1 - I - 0x007E0D 01:BDFD: 00        .byte $00   ; 
- D 1 - I - 0x007E0E 01:BDFE: C1        .byte $C1   ; 
- D 1 - I - 0x007E0F 01:BDFF: 80        .byte $80   ; 
- D 1 - I - 0x007E10 01:BE00: 50        .byte $50   ; 
- D 1 - I - 0x007E11 01:BE01: 00        .byte $00   ; 
- D 1 - I - 0x007E12 01:BE02: 81        .byte $81   ; 
- D 1 - I - 0x007E13 01:BE03: 80        .byte $80   ; 
- D 1 - I - 0x007E14 01:BE04: 50        .byte $50   ; 
- D 1 - I - 0x007E15 01:BE05: 03        .byte $03   ; 
- D 1 - I - 0x007E16 01:BE06: 41        .byte $41   ; 
- D 1 - I - 0x007E17 01:BE07: 80        .byte $80   ; 
- D 1 - I - 0x007E18 01:BE08: 50        .byte $50   ; 
- D 1 - I - 0x007E19 01:BE09: 00        .byte $00   ; 
- D 1 - I - 0x007E1A 01:BE0A: C0        .byte $C0   ; 
- D 1 - I - 0x007E1B 01:BE0B: 80        .byte $80   ; 
- D 1 - I - 0x007E1C 01:BE0C: 46        .byte $46   ; 
- D 1 - I - 0x007E1D 01:BE0D: 00        .byte $00   ; 
- D 1 - I - 0x007E1E 01:BE0E: 80        .byte $80   ; 
- D 1 - I - 0x007E1F 01:BE0F: 80        .byte $80   ; 



off_BE10_0A:
- - - - - - 0x007E20 01:BE10: 32        .byte $32   ; 
- - - - - - 0x007E21 01:BE11: 01        .byte $01   ; 
- - - - - - 0x007E22 01:BE12: 43        .byte $43   ; 
- - - - - - 0x007E23 01:BE13: 80        .byte $80   ; 
- - - - - - 0x007E24 01:BE14: 32        .byte $32   ; 
- - - - - - 0x007E25 01:BE15: 01        .byte $01   ; 
- - - - - - 0x007E26 01:BE16: C3        .byte $C3   ; 
- - - - - - 0x007E27 01:BE17: 80        .byte $80   ; 
- - - - - - 0x007E28 01:BE18: 32        .byte $32   ; 
- - - - - - 0x007E29 01:BE19: 00        .byte $00   ; 
- - - - - - 0x007E2A 01:BE1A: C3        .byte $C3   ; 
- - - - - - 0x007E2B 01:BE1B: 80        .byte $80   ; 
- - - - - - 0x007E2C 01:BE1C: 46        .byte $46   ; 
- - - - - - 0x007E2D 01:BE1D: 01        .byte $01   ; 
- - - - - - 0x007E2E 01:BE1E: 43        .byte $43   ; 
- - - - - - 0x007E2F 01:BE1F: 80        .byte $80   ; 
- - - - - - 0x007E30 01:BE20: 46        .byte $46   ; 
- - - - - - 0x007E31 01:BE21: 02        .byte $02   ; 
- - - - - - 0x007E32 01:BE22: 43        .byte $43   ; 
- - - - - - 0x007E33 01:BE23: 80        .byte $80   ; 
- - - - - - 0x007E34 01:BE24: 46        .byte $46   ; 
- - - - - - 0x007E35 01:BE25: 02        .byte $02   ; 
- - - - - - 0x007E36 01:BE26: 43        .byte $43   ; 
- - - - - - 0x007E37 01:BE27: 80        .byte $80   ; 



off_BE28_0B:
- D 1 - I - 0x007E38 01:BE28: 50        .byte $50   ; 
- D 1 - I - 0x007E39 01:BE29: 03        .byte $03   ; 
- D 1 - I - 0x007E3A 01:BE2A: C2        .byte $C2   ; 
- D 1 - I - 0x007E3B 01:BE2B: 14        .byte $14   ; 
- D 1 - I - 0x007E3C 01:BE2C: 50        .byte $50   ; 
- D 1 - I - 0x007E3D 01:BE2D: 00        .byte $00   ; 
- D 1 - I - 0x007E3E 01:BE2E: C1        .byte $C1   ; 
- D 1 - I - 0x007E3F 01:BE2F: 14        .byte $14   ; 
- D 1 - I - 0x007E40 01:BE30: 46        .byte $46   ; 
- D 1 - I - 0x007E41 01:BE31: 00        .byte $00   ; 
- D 1 - I - 0x007E42 01:BE32: C0        .byte $C0   ; 
- D 1 - I - 0x007E43 01:BE33: 14        .byte $14   ; 
- D 1 - I - 0x007E44 01:BE34: 46        .byte $46   ; 
- D 1 - I - 0x007E45 01:BE35: 03        .byte $03   ; 
- D 1 - I - 0x007E46 01:BE36: C0        .byte $C0   ; 
- D 1 - I - 0x007E47 01:BE37: 14        .byte $14   ; 
- D 1 - I - 0x007E48 01:BE38: 50        .byte $50   ; 
- D 1 - I - 0x007E49 01:BE39: 03        .byte $03   ; 
- D 1 - I - 0x007E4A 01:BE3A: C1        .byte $C1   ; 
- D 1 - I - 0x007E4B 01:BE3B: 14        .byte $14   ; 
- D 1 - I - 0x007E4C 01:BE3C: 50        .byte $50   ; 
- D 1 - I - 0x007E4D 01:BE3D: 03        .byte $03   ; 
- D 1 - I - 0x007E4E 01:BE3E: 40        .byte $40   ; 
- D 1 - I - 0x007E4F 01:BE3F: 14        .byte $14   ; 



off_BE40_0D:
- D 1 - I - 0x007E50 01:BE40: 50        .byte $50   ; 
- D 1 - I - 0x007E51 01:BE41: 03        .byte $03   ; 
- D 1 - I - 0x007E52 01:BE42: C1        .byte $C1   ; 
- D 1 - I - 0x007E53 01:BE43: 04        .byte $04   ; 
- D 1 - I - 0x007E54 01:BE44: 46        .byte $46   ; 
- D 1 - I - 0x007E55 01:BE45: 00        .byte $00   ; 
- D 1 - I - 0x007E56 01:BE46: C2        .byte $C2   ; 
- D 1 - I - 0x007E57 01:BE47: 04        .byte $04   ; 
- D 1 - I - 0x007E58 01:BE48: 46        .byte $46   ; 
- D 1 - I - 0x007E59 01:BE49: 03        .byte $03   ; 
- D 1 - I - 0x007E5A 01:BE4A: 42        .byte $42   ; 
- D 1 - I - 0x007E5B 01:BE4B: 04        .byte $04   ; 
- D 1 - I - 0x007E5C 01:BE4C: 46        .byte $46   ; 
- D 1 - I - 0x007E5D 01:BE4D: 00        .byte $00   ; 
- D 1 - I - 0x007E5E 01:BE4E: 41        .byte $41   ; 
- D 1 - I - 0x007E5F 01:BE4F: 04        .byte $04   ; 
- D 1 - I - 0x007E60 01:BE50: 50        .byte $50   ; 
- D 1 - I - 0x007E61 01:BE51: 03        .byte $03   ; 
- D 1 - I - 0x007E62 01:BE52: C1        .byte $C1   ; 
- D 1 - I - 0x007E63 01:BE53: 04        .byte $04   ; 
- D 1 - I - 0x007E64 01:BE54: 46        .byte $46   ; 
- D 1 - I - 0x007E65 01:BE55: 03        .byte $03   ; 
- D 1 - I - 0x007E66 01:BE56: C0        .byte $C0   ; 
- D 1 - I - 0x007E67 01:BE57: 04        .byte $04   ; 



off_BE58_0E:
- D 1 - I - 0x007E68 01:BE58: 46        .byte $46   ; 
- D 1 - I - 0x007E69 01:BE59: 03        .byte $03   ; 
- D 1 - I - 0x007E6A 01:BE5A: 82        .byte $82   ; 
- D 1 - I - 0x007E6B 01:BE5B: 90        .byte $90   ; 
- D 1 - I - 0x007E6C 01:BE5C: 32        .byte $32   ; 
- D 1 - I - 0x007E6D 01:BE5D: 00        .byte $00   ; 
- D 1 - I - 0x007E6E 01:BE5E: C2        .byte $C2   ; 
- D 1 - I - 0x007E6F 01:BE5F: 90        .byte $90   ; 
- D 1 - I - 0x007E70 01:BE60: 46        .byte $46   ; 
- D 1 - I - 0x007E71 01:BE61: 01        .byte $01   ; 
- D 1 - I - 0x007E72 01:BE62: C2        .byte $C2   ; 
- D 1 - I - 0x007E73 01:BE63: 90        .byte $90   ; 
- D 1 - I - 0x007E74 01:BE64: 28        .byte $28   ; 
- D 1 - I - 0x007E75 01:BE65: 03        .byte $03   ; 
- D 1 - I - 0x007E76 01:BE66: 82        .byte $82   ; 
- D 1 - I - 0x007E77 01:BE67: 90        .byte $90   ; 
- D 1 - I - 0x007E78 01:BE68: 32        .byte $32   ; 
- D 1 - I - 0x007E79 01:BE69: 01        .byte $01   ; 
- D 1 - I - 0x007E7A 01:BE6A: 82        .byte $82   ; 
- D 1 - I - 0x007E7B 01:BE6B: 90        .byte $90   ; 
- D 1 - I - 0x007E7C 01:BE6C: 46        .byte $46   ; 
- D 1 - I - 0x007E7D 01:BE6D: 03        .byte $03   ; 
- D 1 - I - 0x007E7E 01:BE6E: C0        .byte $C0   ; 
- D 1 - I - 0x007E7F 01:BE6F: 90        .byte $90   ; 



off_BE70_0F:
- D 1 - I - 0x007E80 01:BE70: 46        .byte $46   ; 
- D 1 - I - 0x007E81 01:BE71: 03        .byte $03   ; 
- D 1 - I - 0x007E82 01:BE72: 82        .byte $82   ; 
- D 1 - I - 0x007E83 01:BE73: 08        .byte $08   ; 
- D 1 - I - 0x007E84 01:BE74: 28        .byte $28   ; 
- D 1 - I - 0x007E85 01:BE75: 01        .byte $01   ; 
- D 1 - I - 0x007E86 01:BE76: C2        .byte $C2   ; 
- D 1 - I - 0x007E87 01:BE77: 08        .byte $08   ; 
- D 1 - I - 0x007E88 01:BE78: 28        .byte $28   ; 
- D 1 - I - 0x007E89 01:BE79: 01        .byte $01   ; 
- D 1 - I - 0x007E8A 01:BE7A: 02        .byte $02   ; 
- D 1 - I - 0x007E8B 01:BE7B: 08        .byte $08   ; 
- D 1 - I - 0x007E8C 01:BE7C: 32        .byte $32   ; 
- D 1 - I - 0x007E8D 01:BE7D: 03        .byte $03   ; 
- D 1 - I - 0x007E8E 01:BE7E: 42        .byte $42   ; 
- D 1 - I - 0x007E8F 01:BE7F: 08        .byte $08   ; 
- D 1 - I - 0x007E90 01:BE80: 23        .byte $23   ; 
- D 1 - I - 0x007E91 01:BE81: 01        .byte $01   ; 
- D 1 - I - 0x007E92 01:BE82: 02        .byte $02   ; 
- D 1 - I - 0x007E93 01:BE83: 08        .byte $08   ; 
- D 1 - I - 0x007E94 01:BE84: 28        .byte $28   ; 
- D 1 - I - 0x007E95 01:BE85: 01        .byte $01   ; 
- D 1 - I - 0x007E96 01:BE86: C2        .byte $C2   ; 
- D 1 - I - 0x007E97 01:BE87: 08        .byte $08   ; 



loc_BE88:
C D 1 - - - 0x007E98 01:BE88: AD 5A 06  LDA ram_позиция_управление + 10
C - - - - - 0x007E9B 01:BE8B: 09 80     ORA #$80
C - - - - - 0x007E9D 01:BE8D: 8D 5A 06  STA ram_позиция_управление + 10
C - - - - - 0x007EA0 01:BE90: AD 5B 06  LDA ram_позиция_управление + 11
C - - - - - 0x007EA3 01:BE93: 09 80     ORA #$80
C - - - - - 0x007EA5 01:BE95: 8D 5B 06  STA ram_позиция_управление + 11
C - - - - - 0x007EA8 01:BE98: A5 5C     LDA ram_режим_игры_на_поле
C - - - - - 0x007EAA 01:BE9A: 4A        LSR
C - - - - - 0x007EAB 01:BE9B: 29 04     AND #$04
C - - - - - 0x007EAD 01:BE9D: 85 1C     STA ram_001C
C - - - - - 0x007EAF 01:BE9F: AD 33 03  LDA ram_мяч_X_hi
C - - - - - 0x007EB2 01:BEA2: C9 02     CMP #$02
C - - - - - 0x007EB4 01:BEA4: 90 06     BCC bra_BEAC
C - - - - - 0x007EB6 01:BEA6: A5 1C     LDA ram_001C
C - - - - - 0x007EB8 01:BEA8: 09 02     ORA #$02
C - - - - - 0x007EBA 01:BEAA: 85 1C     STA ram_001C
bra_BEAC:
C - - - - - 0x007EBC 01:BEAC: AD 6C 03  LDA ram_мяч_Y_hi
C - - - - - 0x007EBF 01:BEAF: D0 07     BNE bra_BEB8
C - - - - - 0x007EC1 01:BEB1: AD 59 03  LDA ram_мяч_Y_lo
C - - - - - 0x007EC4 01:BEB4: C9 C0     CMP #$C0
C - - - - - 0x007EC6 01:BEB6: 90 02     BCC bra_BEBA
bra_BEB8:
C - - - - - 0x007EC8 01:BEB8: E6 1C     INC ram_001C
bra_BEBA:
C - - - - - 0x007ECA 01:BEBA: AE D6 04  LDX ram_игрок_с_мячом
C - - - - - 0x007ECD 01:BEBD: 20 B7 BF  JSR sub_BFB7
C - - - - - 0x007ED0 01:BEC0: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x007ED3 01:BEC3: 8D 8B 06  STA ram_068B
C - - - - - 0x007ED6 01:BEC6: 29 01     AND #$01
C - - - - - 0x007ED8 01:BEC8: 49 01     EOR #$01
C - - - - - 0x007EDA 01:BECA: 8D D6 04  STA ram_игрок_с_мячом
C - - - - - 0x007EDD 01:BECD: A5 1C     LDA ram_001C
C - - - - - 0x007EDF 01:BECF: 0A        ASL
C - - - - - 0x007EE0 01:BED0: 0D D6 04  ORA ram_игрок_с_мячом
C - - - - - 0x007EE3 01:BED3: A8        TAY
C - - - - - 0x007EE4 01:BED4: B9 7E BF  LDA tbl_BF7E,Y
C - - - - - 0x007EE7 01:BED7: 0D D6 04  ORA ram_игрок_с_мячом
C - - - - - 0x007EEA 01:BEDA: AA        TAX
C - - - - - 0x007EEB 01:BEDB: 8E D6 04  STX ram_игрок_с_мячом
C - - - - - 0x007EEE 01:BEDE: AD 5C 00  LDA a: ram_режим_игры_на_поле
C - - - - - 0x007EF1 01:BEE1: 29 04     AND #$04
C - - - - - 0x007EF3 01:BEE3: D0 2B     BNE bra_BF10
C - - - - - 0x007EF5 01:BEE5: 06 1C     ASL ram_001C
C - - - - - 0x007EF7 01:BEE7: AD D6 04  LDA ram_игрок_с_мячом
C - - - - - 0x007EFA 01:BEEA: 29 01     AND #$01
C - - - - - 0x007EFC 01:BEEC: 05 1C     ORA ram_001C
C - - - - - 0x007EFE 01:BEEE: 85 1C     STA ram_001C
C - - - - - 0x007F00 01:BEF0: 29 07     AND #$07
C - - - - - 0x007F02 01:BEF2: 0A        ASL
C - - - - - 0x007F03 01:BEF3: 0A        ASL
C - - - - - 0x007F04 01:BEF4: A8        TAY
C - - - - - 0x007F05 01:BEF5: B9 8E BF  LDA tbl_BF8E,Y
C - - - - - 0x007F08 01:BEF8: 8D 17 05  STA ram_подающий_X_lo
C - - - - - 0x007F0B 01:BEFB: B9 8F BF  LDA tbl_BF8F,Y
C - - - - - 0x007F0E 01:BEFE: 8D 18 05  STA ram_подающий_X_hi
C - - - - - 0x007F11 01:BF01: B9 90 BF  LDA tbl_BF90,Y
C - - - - - 0x007F14 01:BF04: 8D 19 05  STA ram_подающий_Y_lo
C - - - - - 0x007F17 01:BF07: B9 91 BF  LDA tbl_BF91,Y
C - - - - - 0x007F1A 01:BF0A: 8D 1A 05  STA ram_подающий_Y_hi
C - - - - - 0x007F1D 01:BF0D: 4C 56 BF  JMP loc_BF56
bra_BF10:
C - - - - - 0x007F20 01:BF10: A0 00     LDY #$00
C - - - - - 0x007F22 01:BF12: AD 1A 05  LDA ram_подающий_Y_hi
C - - - - - 0x007F25 01:BF15: F0 02     BEQ bra_BF19
C - - - - - 0x007F27 01:BF17: C8        INY
C - - - - - 0x007F28 01:BF18: C8        INY
bra_BF19:
C - - - - - 0x007F29 01:BF19: B9 AE BF  LDA tbl_BFAE,Y
C - - - - - 0x007F2C 01:BF1C: 8D 19 05  STA ram_подающий_Y_lo
C - - - - - 0x007F2F 01:BF1F: B9 AF BF  LDA tbl_BFAF,Y
C - - - - - 0x007F32 01:BF22: 8D 1A 05  STA ram_подающий_Y_hi
C - - - - - 0x007F35 01:BF25: AD 18 05  LDA ram_подающий_X_hi
C - - - - - 0x007F38 01:BF28: F0 07     BEQ bra_BF31
C - - - - - 0x007F3A 01:BF2A: C9 03     CMP #$03
C - - - - - 0x007F3C 01:BF2C: F0 17     BEQ bra_BF45
C - - - - - 0x007F3E 01:BF2E: 4C 56 BF  JMP loc_BF56
bra_BF31:
- - - - - - 0x007F41 01:BF31: AD 17 05  LDA ram_подающий_X_lo
- - - - - - 0x007F44 01:BF34: 18        CLC
- - - - - - 0x007F45 01:BF35: 69 10     ADC #$10
- - - - - - 0x007F47 01:BF37: 8D 17 05  STA ram_подающий_X_lo
- - - - - - 0x007F4A 01:BF3A: AD 18 05  LDA ram_подающий_X_hi
- - - - - - 0x007F4D 01:BF3D: 69 00     ADC #$00
- - - - - - 0x007F4F 01:BF3F: 8D 18 05  STA ram_подающий_X_hi
- - - - - - 0x007F52 01:BF42: 4C 56 BF  JMP loc_BF56
bra_BF45:
- - - - - - 0x007F55 01:BF45: AD 17 05  LDA ram_подающий_X_lo
- - - - - - 0x007F58 01:BF48: 38        SEC
- - - - - - 0x007F59 01:BF49: E9 10     SBC #$10
- - - - - - 0x007F5B 01:BF4B: 8D 17 05  STA ram_подающий_X_lo
- - - - - - 0x007F5E 01:BF4E: AD 18 05  LDA ram_подающий_X_hi
- - - - - - 0x007F61 01:BF51: E9 00     SBC #$00
- - - - - - 0x007F63 01:BF53: 8D 18 05  STA ram_подающий_X_hi
loc_BF56:
C D 1 - - - 0x007F66 01:BF56: A9 00     LDA #$00
C - - - - - 0x007F68 01:BF58: 8D 92 04  STA ram_мяч_состояние
C - - - - - 0x007F6B 01:BF5B: 8D 8A 06  STA ram_068A
C - - - - - 0x007F6E 01:BF5E: A9 8C     LDA #$8C
C - - - - - 0x007F70 01:BF60: 8D AD 03  STA ram_объект_камеры
C - - - - - 0x007F73 01:BF63: A9 00     LDA #$00
C - - - - - 0x007F75 01:BF65: 8D FD 05  STA ram_сила_ветра
C - - - - - 0x007F78 01:BF68: AD 66 04  LDA ram_погода_номер_эффекта
C - - - - - 0x007F7B 01:BF6B: 29 7F     AND #$7F
C - - - - - 0x007F7D 01:BF6D: C9 01     CMP #$01
C - - - - - 0x007F7F 01:BF6F: D0 07     BNE bra_BF78
- - - - - - 0x007F81 01:BF71: A9 60     LDA #$60
- - - - - - 0x007F83 01:BF73: 8D 3F 01  STA ram_длительность_погоды_ХЗ
- - - - - - 0x007F86 01:BF76: D0 05     BNE bra_BF7D_RTS
bra_BF78:
C - - - - - 0x007F88 01:BF78: A9 00     LDA #$00
C - - - - - 0x007F8A 01:BF7A: 8D 66 04  STA ram_погода_номер_эффекта
bra_BF7D_RTS:
C - - - - - 0x007F8D 01:BF7D: 60        RTS



tbl_BF7E:
- - - - - - 0x007F8E 01:BF7E: 06        .byte $06   ; 
- - - - - - 0x007F8F 01:BF7F: 02        .byte $02   ; 
- D 1 - - - 0x007F90 01:BF80: 08        .byte $08   ; 
- D 1 - - - 0x007F91 01:BF81: 04        .byte $04   ; 
- - - - - - 0x007F92 01:BF82: 02        .byte $02   ; 
- - - - - - 0x007F93 01:BF83: 06        .byte $06   ; 
- D 1 - - - 0x007F94 01:BF84: 04        .byte $04   ; 
- D 1 - - - 0x007F95 01:BF85: 08        .byte $08   ; 
- D 1 - - - 0x007F96 01:BF86: 0A        .byte $0A   ; 
- D 1 - - - 0x007F97 01:BF87: 02        .byte $02   ; 
- D 1 - - - 0x007F98 01:BF88: 0A        .byte $0A   ; 
- - - - - - 0x007F99 01:BF89: 04        .byte $04   ; 
- D 1 - - - 0x007F9A 01:BF8A: 02        .byte $02   ; 
- D 1 - - - 0x007F9B 01:BF8B: 0A        .byte $0A   ; 
- D 1 - - - 0x007F9C 01:BF8C: 04        .byte $04   ; 
- D 1 - - - 0x007F9D 01:BF8D: 0A        .byte $0A   ; 



tbl_BF8E:
- D 1 - - - 0x007F9E 01:BF8E: B8        .byte $B8   ; 
tbl_BF8F:
- D 1 - - - 0x007F9F 01:BF8F: 00        .byte $00   ; 
tbl_BF90:
- D 1 - - - 0x007FA0 01:BF90: 90        .byte $90   ; 
tbl_BF91:
- D 1 - - - 0x007FA1 01:BF91: 00        .byte $00   ; 
- D 1 - - - 0x007FA2 01:BF92: 9B        .byte $9B   ; 
- D 1 - - - 0x007FA3 01:BF93: 00        .byte $00   ; 
- D 1 - - - 0x007FA4 01:BF94: 30        .byte $30   ; 
- D 1 - - - 0x007FA5 01:BF95: 00        .byte $00   ; 
- D 1 - - - 0x007FA6 01:BF96: A7        .byte $A7   ; 
- D 1 - - - 0x007FA7 01:BF97: 00        .byte $00   ; 
- D 1 - - - 0x007FA8 01:BF98: F0        .byte $F0   ; 
- D 1 - - - 0x007FA9 01:BF99: 00        .byte $00   ; 
- - - - - - 0x007FAA 01:BF9A: 76        .byte $76   ; 
- - - - - - 0x007FAB 01:BF9B: 00        .byte $00   ; 
- - - - - - 0x007FAC 01:BF9C: 58        .byte $58   ; 
- - - - - - 0x007FAD 01:BF9D: 01        .byte $01   ; 
- D 1 - - - 0x007FAE 01:BF9E: 65        .byte $65   ; 
- D 1 - - - 0x007FAF 01:BF9F: 03        .byte $03   ; 
- D 1 - - - 0x007FB0 01:BFA0: 30        .byte $30   ; 
- D 1 - - - 0x007FB1 01:BFA1: 00        .byte $00   ; 
- D 1 - - - 0x007FB2 01:BFA2: 50        .byte $50   ; 
- D 1 - - - 0x007FB3 01:BFA3: 03        .byte $03   ; 
- D 1 - - - 0x007FB4 01:BFA4: 90        .byte $90   ; 
- D 1 - - - 0x007FB5 01:BFA5: 00        .byte $00   ; 
- D 1 - - - 0x007FB6 01:BFA6: 8A        .byte $8A   ; 
- D 1 - - - 0x007FB7 01:BFA7: 03        .byte $03   ; 
- D 1 - - - 0x007FB8 01:BFA8: 58        .byte $58   ; 
- D 1 - - - 0x007FB9 01:BFA9: 01        .byte $01   ; 
- D 1 - - - 0x007FBA 01:BFAA: 58        .byte $58   ; 
- D 1 - - - 0x007FBB 01:BFAB: 03        .byte $03   ; 
- D 1 - - - 0x007FBC 01:BFAC: F0        .byte $F0   ; 
- D 1 - - - 0x007FBD 01:BFAD: 00        .byte $00   ; 



tbl_BFAE:
- - - - - - 0x007FBE 01:BFAE: 30        .byte $30   ; 
tbl_BFAF:
- - - - - - 0x007FBF 01:BFAF: 00        .byte $00   ; 
- D 1 - - - 0x007FC0 01:BFB0: 58        .byte $58   ; 
- D 1 - - - 0x007FC1 01:BFB1: 01        .byte $01   ; 



sub_BFB2:
C - - - - - 0x007FC2 01:BFB2: A9 1A     LDA #$1A
C - - - - - 0x007FC4 01:BFB4: 4C 50 C0  JMP loc_0x01C060



sub_BFB7:
C - - - - - 0x007FC7 01:BFB7: A9 2A     LDA #$2A
C - - - - - 0x007FC9 01:BFB9: 4C 50 C0  JMP loc_0x01C060



sub_BFBC:
C - - - - - 0x007FCC 01:BFBC: A9 06     LDA #$06
C - - - - - 0x007FCE 01:BFBE: 4C 50 C0  JMP loc_0x01C060


; bzk мусор
- - - - - - 0x007FD1 01:BFC1: FF        .byte $FF   ; 
- - - - - - 0x007FD2 01:BFC2: FF        .byte $FF   ; 
- - - - - - 0x007FD3 01:BFC3: FF        .byte $FF   ; 
- - - - - - 0x007FD4 01:BFC4: FF        .byte $FF   ; 
- - - - - - 0x007FD5 01:BFC5: FF        .byte $FF   ; 
- - - - - - 0x007FD6 01:BFC6: FF        .byte $FF   ; 
- - - - - - 0x007FD7 01:BFC7: FF        .byte $FF   ; 
- - - - - - 0x007FD8 01:BFC8: FF        .byte $FF   ; 
- - - - - - 0x007FD9 01:BFC9: FF        .byte $FF   ; 
- - - - - - 0x007FDA 01:BFCA: FF        .byte $FF   ; 
- - - - - - 0x007FDB 01:BFCB: FF        .byte $FF   ; 
- - - - - - 0x007FDC 01:BFCC: FF        .byte $FF   ; 
- - - - - - 0x007FDD 01:BFCD: FF        .byte $FF   ; 
- - - - - - 0x007FDE 01:BFCE: FF        .byte $FF   ; 
- - - - - - 0x007FDF 01:BFCF: FF        .byte $FF   ; 
- - - - - - 0x007FE0 01:BFD0: FF        .byte $FF   ; 
- - - - - - 0x007FE1 01:BFD1: FF        .byte $FF   ; 
- - - - - - 0x007FE2 01:BFD2: FF        .byte $FF   ; 
- - - - - - 0x007FE3 01:BFD3: FF        .byte $FF   ; 
- - - - - - 0x007FE4 01:BFD4: FF        .byte $FF   ; 
- - - - - - 0x007FE5 01:BFD5: FF        .byte $FF   ; 
- - - - - - 0x007FE6 01:BFD6: FF        .byte $FF   ; 
- - - - - - 0x007FE7 01:BFD7: FF        .byte $FF   ; 
- - - - - - 0x007FE8 01:BFD8: FF        .byte $FF   ; 
- - - - - - 0x007FE9 01:BFD9: FF        .byte $FF   ; 
- - - - - - 0x007FEA 01:BFDA: FF        .byte $FF   ; 
- - - - - - 0x007FEB 01:BFDB: FF        .byte $FF   ; 
- - - - - - 0x007FEC 01:BFDC: FF        .byte $FF   ; 
- - - - - - 0x007FED 01:BFDD: FF        .byte $FF   ; 
- - - - - - 0x007FEE 01:BFDE: FF        .byte $FF   ; 
- - - - - - 0x007FEF 01:BFDF: FF        .byte $FF   ; 
- - - - - - 0x007FF0 01:BFE0: FF        .byte $FF   ; 
- - - - - - 0x007FF1 01:BFE1: FF        .byte $FF   ; 
- - - - - - 0x007FF2 01:BFE2: FF        .byte $FF   ; 
- - - - - - 0x007FF3 01:BFE3: FF        .byte $FF   ; 
- - - - - - 0x007FF4 01:BFE4: FF        .byte $FF   ; 
- - - - - - 0x007FF5 01:BFE5: FF        .byte $FF   ; 
- - - - - - 0x007FF6 01:BFE6: FF        .byte $FF   ; 
- - - - - - 0x007FF7 01:BFE7: FF        .byte $FF   ; 
- - - - - - 0x007FF8 01:BFE8: FF        .byte $FF   ; 
- - - - - - 0x007FF9 01:BFE9: FF        .byte $FF   ; 
- - - - - - 0x007FFA 01:BFEA: FF        .byte $FF   ; 
- - - - - - 0x007FFB 01:BFEB: FF        .byte $FF   ; 
- - - - - - 0x007FFC 01:BFEC: FF        .byte $FF   ; 
- - - - - - 0x007FFD 01:BFED: FF        .byte $FF   ; 
- - - - - - 0x007FFE 01:BFEE: FF        .byte $FF   ; 
- - - - - - 0x007FFF 01:BFEF: FF        .byte $FF   ; 
- - - - - - 0x008000 01:BFF0: FF        .byte $FF   ; 
- - - - - - 0x008001 01:BFF1: FF        .byte $FF   ; 
- - - - - - 0x008002 01:BFF2: FF        .byte $FF   ; 
- - - - - - 0x008003 01:BFF3: FF        .byte $FF   ; 
- - - - - - 0x008004 01:BFF4: FF        .byte $FF   ; 
- - - - - - 0x008005 01:BFF5: FF        .byte $FF   ; 
- - - - - - 0x008006 01:BFF6: FF        .byte $FF   ; 
- - - - - - 0x008007 01:BFF7: FF        .byte $FF   ; 
- - - - - - 0x008008 01:BFF8: FF        .byte $FF   ; 
- - - - - - 0x008009 01:BFF9: FF        .byte $FF   ; 
- - - - - - 0x00800A 01:BFFA: FF        .byte $FF   ; 
- - - - - - 0x00800B 01:BFFB: FF        .byte $FF   ; 
- - - - - - 0x00800C 01:BFFC: FF        .byte $FF   ; 
- - - - - - 0x00800D 01:BFFD: FF        .byte $FF   ; 
- - - - - - 0x00800E 01:BFFE: FF        .byte $FF   ; 



.segment "BANK_01_ID"
- D 1 - - - 0x00800F 01:BFFF: 01        .byte $01   ; 



