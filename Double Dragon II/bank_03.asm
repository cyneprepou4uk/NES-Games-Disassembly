.segment "BANK_03"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x00C010-0x01000F



; !!! bzk these pointers must start from the same address in banks 01 and 03
; reading via 0x01E83A, bank selected via 0x01EB33
- D 0 - - - 0x00C010 03:8000: 4C 82     .word _off029_824C_00
- D 0 - - - 0x00C012 03:8002: 4C 82     .word _off029_824C_01
- D 0 - - - 0x00C014 03:8004: 7E 81     .word _off029_817E_02
- D 0 - - - 0x00C016 03:8006: CA 81     .word _off029_81CA_03
- D 0 - - - 0x00C018 03:8008: 16 82     .word _off029_8216_04
- - - - - - 0x00C01A 03:800A: 00 00     .word $0000 ;      05
- D 0 - - - 0x00C01C 03:800C: 14 81     .word _off029_8114_06
- D 0 - - - 0x00C01E 03:800E: 46 81     .word _off029_8146_07
- D 0 - - - 0x00C020 03:8010: F0 80     .word _off029_80F0_08
- - - - - - 0x00C022 03:8012: 00 00     .word $0000 ;      09
- D 0 - - - 0x00C024 03:8014: A4 80     .word _off029_80A4_0A
- - - - - - 0x00C026 03:8016: 00 00     .word $0000 ;      0B
- D 0 - - - 0x00C028 03:8018: 4C 82     .word _off029_824C_0C
- - - - - - 0x00C02A 03:801A: 00 00     .word $0000 ;      0D
- - - - - - 0x00C02C 03:801C: 00 00     .word $0000 ;      0E
- D 0 - - - 0x00C02E 03:801E: 5E 80     .word _off029_805E_0F
- - - - - - 0x00C030 03:8020: 00 00     .word $0000 ;      10
- - - - - - 0x00C032 03:8022: 00 00     .word $0000 ;      11
- - - - - - 0x00C034 03:8024: 00 00     .word $0000 ;      12
- D 0 - - - 0x00C036 03:8026: 4A 80     .word _off029_804A_13
- - - - - - 0x00C038 03:8028: 00 00     .word $0000 ;      14
- - - - - - 0x00C03A 03:802A: 00 00     .word $0000 ;      15
- - - - - - 0x00C03C 03:802C: 00 00     .word $0000 ;      16
- - - - - - 0x00C03E 03:802E: 00 00     .word $0000 ;      17
- - - - - - 0x00C040 03:8030: 00 00     .word $0000 ;      18
- - - - - - 0x00C042 03:8032: 00 00     .word $0000 ;      19
- - - - - - 0x00C044 03:8034: 00 00     .word $0000 ;      1A
- D 0 - - - 0x00C046 03:8036: 38 80     .word _off029_8038_1B



_off029_8038_1B:
- D 0 - I - 0x00C048 03:8038: 19 BF     .word _off030_BF19_00
- D 0 - I - 0x00C04A 03:803A: 29 BF     .word _off030_BF29_01
- D 0 - I - 0x00C04C 03:803C: 3A BF     .word _off030_BF3A_02
- D 0 - I - 0x00C04E 03:803E: 48 BF     .word _off030_BF48_03
- D 0 - I - 0x00C050 03:8040: 59 BF     .word _off030_BF59_04
- - - - - - 0x00C052 03:8042: 00 00     .word $0000 ;      05
- - - - - - 0x00C054 03:8044: 00 00     .word $0000 ;      06
- - - - - - 0x00C056 03:8046: 00 00     .word $0000 ;      07
- D 0 - I - 0x00C058 03:8048: C0 BF     .word _off030_BFC0_08



_off029_804A_13:
- D 0 - I - 0x00C05A 03:804A: 8A BE     .word _off030_BE8A_00
- D 0 - I - 0x00C05C 03:804C: 94 BE     .word _off030_BE94_01
- D 0 - I - 0x00C05E 03:804E: A0 BE     .word _off030_BEA0_02
- D 0 - I - 0x00C060 03:8050: AE BE     .word _off030_BEAE_03
- D 0 - I - 0x00C062 03:8052: 64 BE     .word _off030_BE64_04
- D 0 - I - 0x00C064 03:8054: BE BE     .word _off030_BEBE_05
- D 0 - I - 0x00C066 03:8056: D0 BE     .word _off030_BED0_06
- D 0 - I - 0x00C068 03:8058: ED BE     .word _off030_BEED_07
- D 0 - I - 0x00C06A 03:805A: 02 BF     .word _off030_BF02_08
- D 0 - I - 0x00C06C 03:805C: 0E BF     .word _off030_BF0E_09



_off029_805E_0F:
- - - - - - 0x00C06E 03:805E: 26 AD     .word _off030_AD26_00
- - - - - - 0x00C070 03:8060: 4A AD     .word _off030_AD4A_01
- D 0 - I - 0x00C072 03:8062: D4 AD     .word _off030_ADD4_02
- - - - - - 0x00C074 03:8064: 4A AD     .word _off030_AD4A_03
- D 0 - I - 0x00C076 03:8066: DE AE     .word _off030_AEDE_04
- D 0 - I - 0x00C078 03:8068: 33 AF     .word _off030_AF33_05
- D 0 - I - 0x00C07A 03:806A: 13 AF     .word _off030_AF13_06
- D 0 - I - 0x00C07C 03:806C: 67 B0     .word _off030_B067_07
- D 0 - I - 0x00C07E 03:806E: 9C B0     .word _off030_B09C_08
- D 0 - I - 0x00C080 03:8070: B1 AE     .word _off030_AEB1_09
- D 0 - I - 0x00C082 03:8072: 2A B1     .word _off030_B12A_0A
- D 0 - I - 0x00C084 03:8074: 05 B1     .word _off030_B105_0B
- D 0 - I - 0x00C086 03:8076: C3 B0     .word _off030_B0C3_0C
- D 0 - I - 0x00C088 03:8078: CC B0     .word _off030_B0CC_0D
- D 0 - I - 0x00C08A 03:807A: C3 B0     .word _off030_B0C3_0E
- D 0 - I - 0x00C08C 03:807C: CC B0     .word _off030_B0CC_0F
- - - - - - 0x00C08E 03:807E: 49 AF     .word _off030_AF49_10
- D 0 - I - 0x00C090 03:8080: 71 AF     .word _off030_AF71_11
- - - - - - 0x00C092 03:8082: 00 00     .word $0000 ;      12
- - - - - - 0x00C094 03:8084: 00 00     .word $0000 ;      13
- D 0 - I - 0x00C096 03:8086: 62 AD     .word _off030_AD62_14
- - - - - - 0x00C098 03:8088: 00 00     .word $0000 ;      15
- D 0 - I - 0x00C09A 03:808A: FC AD     .word _off030_ADFC_16
- D 0 - I - 0x00C09C 03:808C: 28 AE     .word _off030_AE28_17
- D 0 - I - 0x00C09E 03:808E: 58 AE     .word _off030_AE58_18
- - - - - - 0x00C0A0 03:8090: 00 00     .word $0000 ;      19
- D 0 - I - 0x00C0A2 03:8092: 26 AD     .word _off030_AD26_1A
- D 0 - I - 0x00C0A4 03:8094: 4A AD     .word _off030_AD4A_1B
- D 0 - I - 0x00C0A6 03:8096: 26 AD     .word _off030_AD26_1C
- D 0 - I - 0x00C0A8 03:8098: 4A AD     .word _off030_AD4A_1D
- D 0 - I - 0x00C0AA 03:809A: 26 AD     .word _off030_AD26_1E
- D 0 - I - 0x00C0AC 03:809C: 4A AD     .word _off030_AD4A_1F
- D 0 - I - 0x00C0AE 03:809E: C4 AF     .word _off030_AFC4_20
- D 0 - I - 0x00C0B0 03:80A0: FD AF     .word _off030_AFFD_21
- D 0 - I - 0x00C0B2 03:80A2: 2E B0     .word _off030_B02E_22



_off029_80A4_0A:
- D 0 - I - 0x00C0B4 03:80A4: 8B A8     .word _off030_A88B_00
- D 0 - I - 0x00C0B6 03:80A6: A2 A8     .word _off030_A8A2_01
- D 0 - I - 0x00C0B8 03:80A8: DB A8     .word _off030_A8DB_02
- D 0 - I - 0x00C0BA 03:80AA: 17 AA     .word _off030_AA17_03
- D 0 - I - 0x00C0BC 03:80AC: 29 AA     .word _off030_AA29_04
- D 0 - I - 0x00C0BE 03:80AE: E9 AA     .word _off030_AAE9_05
- D 0 - I - 0x00C0C0 03:80B0: 5F AB     .word _off030_AB5F_06
- D 0 - I - 0x00C0C2 03:80B2: AA AC     .word _off030_ACAA_07
- D 0 - I - 0x00C0C4 03:80B4: 12 AC     .word _off030_AC12_08
- D 0 - I - 0x00C0C6 03:80B6: B8 AA     .word _off030_AAB8_09
- D 0 - I - 0x00C0C8 03:80B8: 56 AC     .word _off030_AC56_0A
- D 0 - I - 0x00C0CA 03:80BA: 3F AC     .word _off030_AC3F_0B
- D 0 - I - 0x00C0CC 03:80BC: 13 A9     .word _off030_A913_0C
- D 0 - I - 0x00C0CE 03:80BE: 34 A9     .word _off030_A934_0D
- D 0 - I - 0x00C0D0 03:80C0: 51 A9     .word _off030_A951_0E
- D 0 - I - 0x00C0D2 03:80C2: 75 A9     .word _off030_A975_0F
- D 0 - I - 0x00C0D4 03:80C4: 90 AB     .word _off030_AB90_10
- D 0 - I - 0x00C0D6 03:80C6: CD AB     .word _off030_ABCD_11
- - - - - - 0x00C0D8 03:80C8: B8 AA     .word _off030_AAB8_12
- - - - - - 0x00C0DA 03:80CA: E9 AA     .word _off030_AAE9_13
- - - - - - 0x00C0DC 03:80CC: 26 AB     .word _off030_AB26_14
- D 0 - I - 0x00C0DE 03:80CE: A1 A9     .word _off030_A9A1_15
- D 0 - I - 0x00C0E0 03:80D0: DE A9     .word _off030_A9DE_16
- - - - - - 0x00C0E2 03:80D2: CD AB     .word _off030_ABCD_17
- - - - - - 0x00C0E4 03:80D4: 74 AA     .word _off030_AA74_18
- - - - - - 0x00C0E6 03:80D6: 8B AA     .word _off030_AA8B_19
- D 0 - I - 0x00C0E8 03:80D8: E9 AC     .word _off030_ACE9_1A
- - - - - - 0x00C0EA 03:80DA: 67 AC     .word _off030_AC67_1B
- - - - - - 0x00C0EC 03:80DC: A1 AC     .word _off030_ACA1_1C
- - - - - - 0x00C0EE 03:80DE: AA AC     .word _off030_ACAA_1D
- - - - - - 0x00C0F0 03:80E0: 00 00     .word $0000 ;      1E
- - - - - - 0x00C0F2 03:80E2: 00 00     .word $0000 ;      1F
- - - - - - 0x00C0F4 03:80E4: 00 00     .word $0000 ;      20
- - - - - - 0x00C0F6 03:80E6: B3 AC     .word _off030_ACB3_21
- - - - - - 0x00C0F8 03:80E8: CC AC     .word _off030_ACCC_22
- - - - - - 0x00C0FA 03:80EA: E9 AC     .word _off030_ACE9_23
- - - - - - 0x00C0FC 03:80EC: E9 AC     .word _off030_ACE9_24
- D 0 - I - 0x00C0FE 03:80EE: 26 AB     .word _off030_AB26_25



_off029_80F0_08:
- D 0 - I - 0x00C100 03:80F0: 4C A7     .word _off030_A74C_00
- D 0 - I - 0x00C102 03:80F2: BC A7     .word _off030_A7BC_01
- D 0 - I - 0x00C104 03:80F4: FA A5     .word _off030_A5FA_02
- - - - - - 0x00C106 03:80F6: 00 00     .word $0000 ;      03
- - - - - - 0x00C108 03:80F8: 8D A6     .word _off030_A68D_04
- D 0 - I - 0x00C10A 03:80FA: 34 A7     .word _off030_A734_05
- D 0 - I - 0x00C10C 03:80FC: 1D A7     .word _off030_A71D_06
- D 0 - I - 0x00C10E 03:80FE: E9 A7     .word _off030_A7E9_07
- D 0 - I - 0x00C110 03:8100: 8D A6     .word _off030_A68D_08
- D 0 - I - 0x00C112 03:8102: D4 A6     .word _off030_A6D4_09
- D 0 - I - 0x00C114 03:8104: BD A6     .word _off030_A6BD_0A
- D 0 - I - 0x00C116 03:8106: A5 A6     .word _off030_A6A5_0B
- D 0 - I - 0x00C118 03:8108: 15 A6     .word _off030_A615_0C
- D 0 - I - 0x00C11A 03:810A: 4E A6     .word _off030_A64E_0D
- D 0 - I - 0x00C11C 03:810C: F5 A7     .word _off030_A7F5_0E
- D 0 - I - 0x00C11E 03:810E: 2E A8     .word _off030_A82E_0F
- D 0 - I - 0x00C120 03:8110: 63 A7     .word _off030_A763_10
- - - - - - 0x00C122 03:8112: FA A5     .word _off030_A5FA_11



_off029_8114_06:
- D 0 - I - 0x00C124 03:8114: 70 A3     .word _off030_A370_00
- D 0 - I - 0x00C126 03:8116: 64 A3     .word _off030_A364_01
- D 0 - I - 0x00C128 03:8118: 49 A3     .word _off030_A349_02
- D 0 - I - 0x00C12A 03:811A: A4 A4     .word _off030_A4A4_03
- D 0 - I - 0x00C12C 03:811C: EB A4     .word _off030_A4EB_04
- D 0 - I - 0x00C12E 03:811E: 0B A5     .word _off030_A50B_05
- D 0 - I - 0x00C130 03:8120: 54 A5     .word _off030_A554_06
- D 0 - I - 0x00C132 03:8122: EE A5     .word _off030_A5EE_07
- D 0 - I - 0x00C134 03:8124: 89 A5     .word _off030_A589_08
- D 0 - I - 0x00C136 03:8126: 2B A5     .word _off030_A52B_09
- D 0 - I - 0x00C138 03:8128: AD A5     .word _off030_A5AD_0A
- D 0 - I - 0x00C13A 03:812A: 95 A5     .word _off030_A595_0B
- D 0 - I - 0x00C13C 03:812C: C1 A3     .word _off030_A3C1_0C
- D 0 - I - 0x00C13E 03:812E: 81 A3     .word _off030_A381_0D
- D 0 - I - 0x00C140 03:8130: F1 A3     .word _off030_A3F1_0E
- D 0 - I - 0x00C142 03:8132: 1B A4     .word _off030_A41B_0F
- - - - - - 0x00C144 03:8134: 54 A5     .word _off030_A554_10
- - - - - - 0x00C146 03:8136: 6B A5     .word _off030_A56B_11
- - - - - - 0x00C148 03:8138: 89 A5     .word _off030_A589_12
- - - - - - 0x00C14A 03:813A: 95 A5     .word _off030_A595_13
- - - - - - 0x00C14C 03:813C: AD A5     .word _off030_A5AD_14
- - - - - - 0x00C14E 03:813E: 53 A4     .word _off030_A453_15
- - - - - - 0x00C150 03:8140: 53 A4     .word _off030_A453_16
- - - - - - 0x00C152 03:8142: 53 A4     .word _off030_A453_17
- D 0 - I - 0x00C154 03:8144: 53 A4     .word _off030_A453_18



_off029_8146_07:
- D 0 - I - 0x00C156 03:8146: F7 A2     .word _off030_A2F7_00
- D 0 - I - 0x00C158 03:8148: 3E A2     .word _off030_A23E_01
- D 0 - I - 0x00C15A 03:814A: AE A2     .word _off030_A2AE_02
- D 0 - I - 0x00C15C 03:814C: 5F 9E     .word _off030_9E5F_03
- D 0 - I - 0x00C15E 03:814E: AE 9E     .word _off030_9EAE_04
- - - - - - 0x00C160 03:8150: A4 A0     .word _off030_A0A4_05
- D 0 - I - 0x00C162 03:8152: 32 A1     .word _off030_A132_06
- D 0 - I - 0x00C164 03:8154: 76 A2     .word _off030_A276_07
- D 0 - I - 0x00C166 03:8156: 73 A1     .word _off030_A173_08
- D 0 - I - 0x00C168 03:8158: E9 A0     .word _off030_A0E9_09
- D 0 - I - 0x00C16A 03:815A: FD A1     .word _off030_A1FD_0A
- D 0 - I - 0x00C16C 03:815C: B8 A1     .word _off030_A1B8_0B
- D 0 - I - 0x00C16E 03:815E: 62 9F     .word _off030_9F62_0C
- D 0 - I - 0x00C170 03:8160: AF 9F     .word _off030_9FAF_0D
- D 0 - I - 0x00C172 03:8162: 62 9F     .word _off030_9F62_0E
- D 0 - I - 0x00C174 03:8164: AF 9F     .word _off030_9FAF_0F
- D 0 - I - 0x00C176 03:8166: 09 9F     .word _off030_9F09_10
- D 0 - I - 0x00C178 03:8168: CE B2     .word _off030_B2CE_11
- D 0 - I - 0x00C17A 03:816A: 2F B3     .word _off030_B32F_12
- D 0 - I - 0x00C17C 03:816C: 90 B3     .word _off030_B390_13
- D 0 - I - 0x00C17E 03:816E: DB B3     .word _off030_B3DB_14
- D 0 - I - 0x00C180 03:8170: 26 B4     .word _off030_B426_15
- D 0 - I - 0x00C182 03:8172: 7F B4     .word _off030_B47F_16
- D 0 - I - 0x00C184 03:8174: C4 B4     .word _off030_B4C4_17
- D 0 - I - 0x00C186 03:8176: D8 B4     .word _off030_B4D8_18
- D 0 - I - 0x00C188 03:8178: EC B4     .word _off030_B4EC_19
- D 0 - I - 0x00C18A 03:817A: 00 B5     .word _off030_B500_1A
- D 0 - I - 0x00C18C 03:817C: 10 B5     .word _off030_B510_1B



_off029_817E_02:
- D 0 - I - 0x00C18E 03:817E: CA 97     .word _off030_97CA_00
- D 0 - I - 0x00C190 03:8180: D7 97     .word _off030_97D7_01
- D 0 - I - 0x00C192 03:8182: EC 97     .word _off030_97EC_02
- D 0 - I - 0x00C194 03:8184: 0D 98     .word _off030_980D_03
- D 0 - I - 0x00C196 03:8186: 1F 98     .word _off030_981F_04
- D 0 - I - 0x00C198 03:8188: 8F 99     .word _off030_998F_05
- D 0 - I - 0x00C19A 03:818A: FB 99     .word _off030_99FB_06
- D 0 - I - 0x00C19C 03:818C: CD 9B     .word _off030_9BCD_07
- D 0 - I - 0x00C19E 03:818E: E2 9B     .word _off030_9BE2_08
- D 0 - I - 0x00C1A0 03:8190: F7 9B     .word _off030_9BF7_09
- D 0 - I - 0x00C1A2 03:8192: E8 9C     .word _off030_9CE8_0A
- D 0 - I - 0x00C1A4 03:8194: BB 9C     .word _off030_9CBB_0B
- D 0 - I - 0x00C1A6 03:8196: 67 9B     .word _off030_9B67_0C
- D 0 - I - 0x00C1A8 03:8198: 43 9B     .word _off030_9B43_0D
- D 0 - I - 0x00C1AA 03:819A: AC 9B     .word _off030_9BAC_0E
- D 0 - I - 0x00C1AC 03:819C: 88 9B     .word _off030_9B88_0F
- D 0 - I - 0x00C1AE 03:819E: 0B 9E     .word _off030_9E0B_10
- D 0 - I - 0x00C1B0 03:81A0: 37 9E     .word _off030_9E37_11
- D 0 - I - 0x00C1B2 03:81A2: 2C 9C     .word _off030_9C2C_12
- D 0 - I - 0x00C1B4 03:81A4: 69 9C     .word _off030_9C69_13
- D 0 - I - 0x00C1B6 03:81A6: 9C 9C     .word _off030_9C9C_14
- D 0 - I - 0x00C1B8 03:81A8: 9D 9D     .word _off030_9D9D_15
- D 0 - I - 0x00C1BA 03:81AA: D2 9D     .word _off030_9DD2_16
- - - - - - 0x00C1BC 03:81AC: 00 00     .word $0000 ;      17
- D 0 - I - 0x00C1BE 03:81AE: 47 9D     .word _off030_9D47_18
- D 0 - I - 0x00C1C0 03:81B0: 74 9D     .word _off030_9D74_19
- D 0 - I - 0x00C1C2 03:81B2: 18 9A     .word _off030_9A18_1A
- D 0 - I - 0x00C1C4 03:81B4: 4D 9A     .word _off030_9A4D_1B
- D 0 - I - 0x00C1C6 03:81B6: 82 9A     .word _off030_9A82_1C
- D 0 - I - 0x00C1C8 03:81B8: C2 9A     .word _off030_9AC2_1D
- D 0 - I - 0x00C1CA 03:81BA: ED 9A     .word _off030_9AED_1E
- D 0 - I - 0x00C1CC 03:81BC: 18 9B     .word _off030_9B18_1F
- D 0 - I - 0x00C1CE 03:81BE: 5E 98     .word _off030_985E_20
- D 0 - I - 0x00C1D0 03:81C0: 93 98     .word _off030_9893_21
- D 0 - I - 0x00C1D2 03:81C2: D4 98     .word _off030_98D4_22
- D 0 - I - 0x00C1D4 03:81C4: 19 99     .word _off030_9919_23
- D 0 - I - 0x00C1D6 03:81C6: 5A 99     .word _off030_995A_24
- D 0 - I - 0x00C1D8 03:81C8: B6 99     .word _off030_99B6_25



_off029_81CA_03:
- D 0 - I - 0x00C1DA 03:81CA: E2 83     .word _off030_83E2_00
- D 0 - I - 0x00C1DC 03:81CC: 09 84     .word _off030_8409_01
- D 0 - I - 0x00C1DE 03:81CE: 30 84     .word _off030_8430_02
- D 0 - I - 0x00C1E0 03:81D0: DB 84     .word _off030_84DB_03
- D 0 - I - 0x00C1E2 03:81D2: 08 85     .word _off030_8508_04
- D 0 - I - 0x00C1E4 03:81D4: DA 85     .word _off030_85DA_05
- D 0 - I - 0x00C1E6 03:81D6: 38 86     .word _off030_8638_06
- D 0 - I - 0x00C1E8 03:81D8: 28 87     .word _off030_8728_07
- D 0 - I - 0x00C1EA 03:81DA: 4F 87     .word _off030_874F_08
- D 0 - I - 0x00C1EC 03:81DC: 76 87     .word _off030_8776_09
- D 0 - I - 0x00C1EE 03:81DE: B7 83     .word _off030_83B7_0A
- D 0 - I - 0x00C1F0 03:81E0: 92 83     .word _off030_8392_0B
- D 0 - I - 0x00C1F2 03:81E2: 78 85     .word _off030_8578_0C
- D 0 - I - 0x00C1F4 03:81E4: 89 85     .word _off030_8589_0D
- D 0 - I - 0x00C1F6 03:81E6: 50 85     .word _off030_8550_0E
- D 0 - I - 0x00C1F8 03:81E8: 2C 85     .word _off030_852C_0F
- D 0 - I - 0x00C1FA 03:81EA: 65 86     .word _off030_8665_10
- D 0 - I - 0x00C1FC 03:81EC: 95 86     .word _off030_8695_11
- - - - - - 0x00C1FE 03:81EE: 00 00     .word $0000 ;      12
- - - - - - 0x00C200 03:81F0: 00 00     .word $0000 ;      13
- - - - - - 0x00C202 03:81F2: 00 00     .word $0000 ;      14
- - - - - - 0x00C204 03:81F4: 00 00     .word $0000 ;      15
- - - - - - 0x00C206 03:81F6: 00 00     .word $0000 ;      16
- - - - - - 0x00C208 03:81F8: 00 00     .word $0000 ;      17
- D 0 - I - 0x00C20A 03:81FA: 90 84     .word _off030_8490_18
- D 0 - I - 0x00C20C 03:81FC: AE 84     .word _off030_84AE_19
- - - - - - 0x00C20E 03:81FE: 00 00     .word $0000 ;     1A
- - - - - - 0x00C210 03:8200: 00 00     .word $0000 ;     1B
- - - - - - 0x00C212 03:8202: 00 00     .word $0000 ;     1C
- - - - - - 0x00C214 03:8204: 00 00     .word $0000 ;     1D
- - - - - - 0x00C216 03:8206: 00 00     .word $0000 ;     1E
- - - - - - 0x00C218 03:8208: 00 00     .word $0000 ;     1F
- - - - - - 0x00C21A 03:820A: 00 00     .word $0000 ;     20
- - - - - - 0x00C21C 03:820C: 00 00     .word $0000 ;     21
- - - - - - 0x00C21E 03:820E: 00 00     .word $0000 ;     22
- - - - - - 0x00C220 03:8210: 00 00     .word $0000 ;     23
- - - - - - 0x00C222 03:8212: 00 00     .word $0000 ;     24
- D 0 - I - 0x00C224 03:8214: 07 86     .word _off030_8607_25



_off029_8216_04:
- D 0 - I - 0x00C226 03:8216: B5 88     .word _off030_88B5_00
- D 0 - I - 0x00C228 03:8218: D4 88     .word _off030_88D4_01
- D 0 - I - 0x00C22A 03:821A: E9 88     .word _off030_88E9_02
- D 0 - I - 0x00C22C 03:821C: 6F 8A     .word _off030_8A6F_03
- D 0 - I - 0x00C22E 03:821E: 81 8A     .word _off030_8A81_04
- D 0 - I - 0x00C230 03:8220: 7F 88     .word _off030_887F_05
- D 0 - I - 0x00C232 03:8222: 9D 88     .word _off030_889D_06
- D 0 - I - 0x00C234 03:8224: 0D 89     .word _off030_890D_07
- D 0 - I - 0x00C236 03:8226: 22 89     .word _off030_8922_08
- D 0 - I - 0x00C238 03:8228: 41 89     .word _off030_8941_09
- D 0 - I - 0x00C23A 03:822A: DD 87     .word _off030_87DD_0A
- D 0 - I - 0x00C23C 03:822C: CD 87     .word _off030_87CD_0B
- D 0 - I - 0x00C23E 03:822E: B8 8A     .word _off030_8AB8_0C
- D 0 - I - 0x00C240 03:8230: E0 8A     .word _off030_8AE0_0D
- D 0 - I - 0x00C242 03:8232: 9E 8A     .word _off030_8A9E_0E
- D 0 - I - 0x00C244 03:8234: 8A 8A     .word _off030_8A8A_0F
- D 0 - I - 0x00C246 03:8236: 7E 89     .word _off030_897E_10
- D 0 - I - 0x00C248 03:8238: 8F 89     .word _off030_898F_11
- D 0 - I - 0x00C24A 03:823A: 9F 89     .word _off030_899F_12
- D 0 - I - 0x00C24C 03:823C: AF 89     .word _off030_89AF_13
- - - - - - 0x00C24E 03:823E: 00 00     .word $0000 ;      14
- D 0 - I - 0x00C250 03:8240: 0D 8A     .word _off030_8A0D_15
- D 0 - I - 0x00C252 03:8242: 3A 8A     .word _off030_8A3A_16
- D 0 - I - 0x00C254 03:8244: 0D 8A     .word _off030_8A0D_17
- D 0 - I - 0x00C256 03:8246: 46 88     .word _off030_8846_18
- D 0 - I - 0x00C258 03:8248: 56 88     .word _off030_8856_19
- D 0 - I - 0x00C25A 03:824A: FC 8A     .word _off030_8AFC_1A



; handlers at 0x01E895
con_sub_00                              = $00 ; 
con_sub_01                              = $01 ; spr_T + spr_XY
con_sub_02                              = $02 ; 
con_sub_03                              = $03 ; unused
con_sub_04                              = $04 ; 
con_sub_05                              = $05 ; 
con_sub_06                              = $06 ; 



_off029_824C_00:
_off029_824C_01:
_off029_824C_0C:
- D 0 - I - 0x00C25C 03:824C: 45 8F     .word _off030_8F45_00
- D 0 - I - 0x00C25E 03:824E: 94 8F     .word _off030_8F94_01
- D 0 - I - 0x00C260 03:8250: 71 8D     .word _off030_8D71_02
- D 0 - I - 0x00C262 03:8252: 93 94     .word _off030_9493_03
- D 0 - I - 0x00C264 03:8254: DD 94     .word _off030_94DD_04
- D 0 - I - 0x00C266 03:8256: B1 8D     .word _off030_8DB1_05
- D 0 - I - 0x00C268 03:8258: 59 8E     .word _off030_8E59_06
- D 0 - I - 0x00C26A 03:825A: A2 90     .word _off030_90A2_07
- D 0 - I - 0x00C26C 03:825C: F4 8F     .word _off030_8FF4_08
- D 0 - I - 0x00C26E 03:825E: 8D 92     .word _off030_928D_09
- D 0 - I - 0x00C270 03:8260: 6C 90     .word _off030_906C_0A
- D 0 - I - 0x00C272 03:8262: 2C 90     .word _off030_902C_0B
- D 0 - I - 0x00C274 03:8264: DF 96     .word _off030_96DF_0C
- D 0 - I - 0x00C276 03:8266: AE 96     .word _off030_96AE_0D
- D 0 - I - 0x00C278 03:8268: 85 96     .word _off030_9685_0E
- D 0 - I - 0x00C27A 03:826A: 45 96     .word _off030_9645_0F
- D 0 - I - 0x00C27C 03:826C: 83 95     .word _off030_9583_10
- D 0 - I - 0x00C27E 03:826E: FF 95     .word _off030_95FF_11
- D 0 - I - 0x00C280 03:8270: 4E 8B     .word _off030_8B4E_12
- D 0 - I - 0x00C282 03:8272: A2 8B     .word _off030_8BA2_13
- D 0 - I - 0x00C284 03:8274: F6 8B     .word _off030_8BF6_14
- D 0 - I - 0x00C286 03:8276: DB 91     .word _off030_91DB_15
- D 0 - I - 0x00C288 03:8278: 37 92     .word _off030_9237_16
- D 0 - I - 0x00C28A 03:827A: 0C 97     .word _off030_970C_17
- D 0 - I - 0x00C28C 03:827C: 27 95     .word _off030_9527_18
- D 0 - I - 0x00C28E 03:827E: FD 8D     .word _off030_8DFD_19
- D 0 - I - 0x00C290 03:8280: 3C BE     .word _off030_BE3C_1A
- D 0 - I - 0x00C292 03:8282: 4C BE     .word _off030_BE4C_1B
- D 0 - I - 0x00C294 03:8284: 8D 93     .word _off030_938D_1C
- D 0 - I - 0x00C296 03:8286: E3 93     .word _off030_93E3_1D
- D 0 - I - 0x00C298 03:8288: 3F 94     .word _off030_943F_1E
- D 0 - I - 0x00C29A 03:828A: 40 8C     .word _off030_8C40_1F
- D 0 - I - 0x00C29C 03:828C: 8F 8C     .word _off030_8C8F_20
- D 0 - I - 0x00C29E 03:828E: D9 8C     .word _off030_8CD9_21
- D 0 - I - 0x00C2A0 03:8290: 22 8D     .word _off030_8D22_22
- D 0 - I - 0x00C2A2 03:8292: 97 8E     .word _off030_8E97_23
- D 0 - I - 0x00C2A4 03:8294: EB 8E     .word _off030_8EEB_24
- D 0 - I - 0x00C2A6 03:8296: FB 8E     .word _off030_8EFB_25
- D 0 - I - 0x00C2A8 03:8298: C6 90     .word _off030_90C6_26
- D 0 - I - 0x00C2AA 03:829A: 10 91     .word _off030_9110_27
- D 0 - I - 0x00C2AC 03:829C: 3C 91     .word _off030_913C_28
- - - - - - 0x00C2AE 03:829E: 90 B2     .word _off030_B290_29
- - - - - - 0x00C2B0 03:82A0: EB 8E     .word _off030_8EEB_2A
- D 0 - I - 0x00C2B2 03:82A2: FB 8E     .word _off030_8EFB_2B
- D 0 - I - 0x00C2B4 03:82A4: 98 91     .word _off030_9198_2C
- D 0 - I - 0x00C2B6 03:82A6: E7 92     .word _off030_92E7_2D
- D 0 - I - 0x00C2B8 03:82A8: 45 93     .word _off030_9345_2E
- - - - - - 0x00C2BA 03:82AA: EB 8E     .word _off030_8EEB_2F
- D 0 - I - 0x00C2BC 03:82AC: 7C 97     .word _off030_977C_30
- D 0 - I - 0x00C2BE 03:82AE: 53 B1     .word _off030_B153_31
- D 0 - I - 0x00C2C0 03:82B0: 61 B1     .word _off030_B161_32
- D 0 - I - 0x00C2C2 03:82B2: 75 B1     .word _off030_B175_33
- D 0 - I - 0x00C2C4 03:82B4: 92 B1     .word _off030_B192_34
- D 0 - I - 0x00C2C6 03:82B6: BC B1     .word _off030_B1BC_35
- D 0 - I - 0x00C2C8 03:82B8: DD B1     .word _off030_B1DD_36
- D 0 - I - 0x00C2CA 03:82BA: F8 B1     .word _off030_B1F8_37
- - - - - - 0x00C2CC 03:82BC: 0C B2     .word _off030_B20C_38
- D 0 - I - 0x00C2CE 03:82BE: C8 B8     .word _off030_B8C8_39
- D 0 - I - 0x00C2D0 03:82C0: DB B8     .word _off030_B8DB_3A
- D 0 - I - 0x00C2D2 03:82C2: E3 B8     .word _off030_B8E3_3B
- D 0 - I - 0x00C2D4 03:82C4: 15 B9     .word _off030_B915_3C
- D 0 - I - 0x00C2D6 03:82C6: 42 B9     .word _off030_B942_3D
- D 0 - I - 0x00C2D8 03:82C8: 59 B9     .word _off030_B959_3E
- D 0 - I - 0x00C2DA 03:82CA: 8C B9     .word _off030_B98C_3F
- D 0 - I - 0x00C2DC 03:82CC: C4 B9     .word _off030_B9C4_40
- D 0 - I - 0x00C2DE 03:82CE: D0 B9     .word _off030_B9D0_41
- D 0 - I - 0x00C2E0 03:82D0: 3B BA     .word _off030_BA3B_42
- D 0 - I - 0x00C2E2 03:82D2: 92 BA     .word _off030_BA92_43
- D 0 - I - 0x00C2E4 03:82D4: A7 BA     .word _off030_BAA7_44
- D 0 - I - 0x00C2E6 03:82D6: CE BA     .word _off030_BACE_45
- D 0 - I - 0x00C2E8 03:82D8: E0 BA     .word _off030_BAE0_46
- D 0 - I - 0x00C2EA 03:82DA: F3 BA     .word _off030_BAF3_47
- D 0 - I - 0x00C2EC 03:82DC: 06 BB     .word _off030_BB06_48
- D 0 - I - 0x00C2EE 03:82DE: 19 BB     .word _off030_BB19_49
- D 0 - I - 0x00C2F0 03:82E0: 2C BB     .word _off030_BB2C_4A
- D 0 - I - 0x00C2F2 03:82E2: 3E BB     .word _off030_BB3E_4B
- D 0 - I - 0x00C2F4 03:82E4: 50 BB     .word _off030_BB50_4C
- - - - - - 0x00C2F6 03:82E6: 62 BB     .word _off030_BB62_4D
- - - - - - 0x00C2F8 03:82E8: 8B BB     .word _off030_BB8B_4E
- - - - - - 0x00C2FA 03:82EA: AC BB     .word _off030_BBAC_4F
- D 0 - I - 0x00C2FC 03:82EC: DD BB     .word _off030_BBDD_50
- D 0 - I - 0x00C2FE 03:82EE: FA BB     .word _off030_BBFA_51
- D 0 - I - 0x00C300 03:82F0: 09 BC     .word _off030_BC09_52
- D 0 - I - 0x00C302 03:82F2: 18 BC     .word _off030_BC18_53
- D 0 - I - 0x00C304 03:82F4: 35 BC     .word _off030_BC35_54
- D 0 - I - 0x00C306 03:82F6: 43 BC     .word _off030_BC43_55
- D 0 - I - 0x00C308 03:82F8: 4E BC     .word _off030_BC4E_56
- - - - - - 0x00C30A 03:82FA: 57 BC     .word _off030_BC57_57
- - - - - - 0x00C30C 03:82FC: 81 BC     .word _off030_BC81_58
- - - - - - 0x00C30E 03:82FE: C6 BC     .word _off030_BCC6_59
- - - - - - 0x00C310 03:8300: E3 BC     .word _off030_BCE3_5A
- - - - - - 0x00C312 03:8302: 10 BD     .word _off030_BD10_5B
- - - - - - 0x00C314 03:8304: 31 BD     .word _off030_BD31_5C
- - - - - - 0x00C316 03:8306: 52 BD     .word _off030_BD52_5D
- D 0 - I - 0x00C318 03:8308: 67 BF     .word _off030_BF67_5E
- D 0 - I - 0x00C31A 03:830A: 8F BF     .word _off030_BF8F_5F



sub_06_830C_01:
- D 0 - I - 0x00C31C 03:830C: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C31E 03:830E: 1F 83     .word off_02_831F_00_spr_A
- D 0 - I - 0x00C320 03:8310: 15 83     .word off_02_8315_01_spr_T
- D 0 - I - 0x00C322 03:8312: 29 83     .word off_02_8329_02_spr_XY
- D 0 - I - 0x00C324 03:8314: 00        .byte con_sub_00   ; 



off_02_8315_01_spr_T:
- D 0 - I - 0x00C325 03:8315: 81        .byte $81   ; 01
- D 0 - I - 0x00C326 03:8316: 80        .byte $80   ; 02
- D 0 - I - 0x00C327 03:8317: 91        .byte $91   ; 03
- D 0 - I - 0x00C328 03:8318: A2        .byte $A2   ; 04
- D 0 - I - 0x00C329 03:8319: A1        .byte $A1   ; 05
- D 0 - I - 0x00C32A 03:831A: A0        .byte $A0   ; 06
- D 0 - I - 0x00C32B 03:831B: 92        .byte $92   ; 07
- D 0 - I - 0x00C32C 03:831C: 82        .byte $82   ; 08
- D 0 - I - 0x00C32D 03:831D: F1        .byte $F1   ; 09
- D 0 - I - 0x00C32E 03:831E: F0        .byte $F0   ; 0A



off_02_831F_00_spr_A:
- D 0 - I - 0x00C32F 03:831F: 40        .byte $40   ; 01
- D 0 - I - 0x00C330 03:8320: 40        .byte $40   ; 02
- D 0 - I - 0x00C331 03:8321: 40        .byte $40   ; 03
- D 0 - I - 0x00C332 03:8322: 40        .byte $40   ; 04
- D 0 - I - 0x00C333 03:8323: 40        .byte $40   ; 05
- D 0 - I - 0x00C334 03:8324: 40        .byte $40   ; 06
- D 0 - I - 0x00C335 03:8325: 43        .byte $43   ; 07
- D 0 - I - 0x00C336 03:8326: 43        .byte $43   ; 08
- D 0 - I - 0x00C337 03:8327: 43        .byte $43   ; 09
- D 0 - I - 0x00C338 03:8328: 43        .byte $43   ; 0A



off_02_8329_02_spr_XY:
- D 0 - I - 0x00C339 03:8329: DF        .byte $DF, $23   ; 01
- D 0 - I - 0x00C33B 03:832B: E7        .byte $E7, $23   ; 02
- D 0 - I - 0x00C33D 03:832D: DD        .byte $DD, $1B   ; 03
- D 0 - I - 0x00C33F 03:832F: E5        .byte $E5, $1B   ; 04
- D 0 - I - 0x00C341 03:8331: DC        .byte $DC, $13   ; 05
- D 0 - I - 0x00C343 03:8333: E4        .byte $E4, $13   ; 06
- D 0 - I - 0x00C345 03:8335: DD        .byte $DD, $0B   ; 07
- D 0 - I - 0x00C347 03:8337: E5        .byte $E5, $0B   ; 08
- D 0 - I - 0x00C349 03:8339: E1        .byte $E1, $03   ; 09
- D 0 - I - 0x00C34B 03:833B: E9        .byte $E9, $03   ; 0A



sub_06_833D_01:
- D 0 - I - 0x00C34D 03:833D: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00C34F 03:833F: 46 83     .word off_02_8346_00_spr_A
- D 0 - I - 0x00C351 03:8341: 67 83     .word off_02_8367_01_spr_T
- D 0 - I - 0x00C353 03:8343: 4E 83     .word off_02_834E_02_spr_XY
- D 0 - I - 0x00C355 03:8345: 00        .byte con_sub_00   ; 



off_02_8346_00_spr_A:
- D 0 - I - 0x00C356 03:8346: 03        .byte $03   ; 01
- D 0 - I - 0x00C357 03:8347: 03        .byte $03   ; 02
- D 0 - I - 0x00C358 03:8348: 00        .byte $00   ; 03
- D 0 - I - 0x00C359 03:8349: 43        .byte $43   ; 04
- D 0 - I - 0x00C35A 03:834A: 43        .byte $43   ; 05
- D 0 - I - 0x00C35B 03:834B: 00        .byte $00   ; 06
- D 0 - I - 0x00C35C 03:834C: 43        .byte $43   ; 07
- D 0 - I - 0x00C35D 03:834D: 43        .byte $43   ; 08



off_02_834E_02_spr_XY:
- D 0 - I - 0x00C35E 03:834E: E1        .byte $E1, $12   ; 01
- D 0 - I - 0x00C360 03:8350: E9        .byte $E9, $12   ; 02
- D 0 - I - 0x00C362 03:8352: F1        .byte $F1, $12   ; 03
- D 0 - I - 0x00C364 03:8354: DF        .byte $DF, $0A   ; 04
- D 0 - I - 0x00C366 03:8356: E7        .byte $E7, $0A   ; 05
- D 0 - I - 0x00C368 03:8358: E9        .byte $E9, $0A   ; 06
- D 0 - I - 0x00C36A 03:835A: DE        .byte $DE, $02   ; 07
- D 0 - I - 0x00C36C 03:835C: E6        .byte $E6, $02   ; 08



sub_06_835E_01:
- D 0 - I - 0x00C36E 03:835E: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00C370 03:8360: 6F 83     .word off_02_836F_00_spr_A
- D 0 - I - 0x00C372 03:8362: 67 83     .word off_02_8367_01_spr_T
- D 0 - I - 0x00C374 03:8364: 77 83     .word off_02_8377_02_spr_XY
- D 0 - I - 0x00C376 03:8366: 00        .byte con_sub_00   ; 



off_02_8367_01_spr_T:
- D 0 - I - 0x00C377 03:8367: B4        .byte $B4   ; 01
- D 0 - I - 0x00C378 03:8368: B5        .byte $B5   ; 02
- D 0 - I - 0x00C379 03:8369: B6        .byte $B6   ; 03
- D 0 - I - 0x00C37A 03:836A: E1        .byte $E1   ; 04
- D 0 - I - 0x00C37B 03:836B: E0        .byte $E0   ; 05
- D 0 - I - 0x00C37C 03:836C: 87        .byte $87   ; 06
- D 0 - I - 0x00C37D 03:836D: F1        .byte $F1   ; 07
- D 0 - I - 0x00C37E 03:836E: F0        .byte $F0   ; 08



off_02_836F_00_spr_A:
- D 0 - I - 0x00C37F 03:836F: 03        .byte $03   ; 01
- D 0 - I - 0x00C380 03:8370: 03        .byte $03   ; 02
- D 0 - I - 0x00C381 03:8371: 00        .byte $00   ; 03
- D 0 - I - 0x00C382 03:8372: 43        .byte $43   ; 04
- D 0 - I - 0x00C383 03:8373: 43        .byte $43   ; 05
- D 0 - I - 0x00C384 03:8374: 00        .byte $00   ; 06
- D 0 - I - 0x00C385 03:8375: 43        .byte $43   ; 07
- D 0 - I - 0x00C386 03:8376: 43        .byte $43   ; 08



off_02_8377_02_spr_XY:
- D 0 - I - 0x00C387 03:8377: E4        .byte $E4, $15   ; 01
- D 0 - I - 0x00C389 03:8379: EC        .byte $EC, $17   ; 02
- D 0 - I - 0x00C38B 03:837B: F4        .byte $F4, $19   ; 03
- D 0 - I - 0x00C38D 03:837D: E2        .byte $E2, $0D   ; 04
- D 0 - I - 0x00C38F 03:837F: EA        .byte $EA, $0D   ; 05
- D 0 - I - 0x00C391 03:8381: EC        .byte $EC, $0F   ; 06
- D 0 - I - 0x00C393 03:8383: E1        .byte $E1, $05   ; 07
- D 0 - I - 0x00C395 03:8385: E9        .byte $E9, $05   ; 08



off_02_8387_00_spr_A:
- D 0 - I - 0x00C397 03:8387: 00        .byte $00   ; 01
off_02_8388_00_spr_A:
- D 0 - I - 0x00C398 03:8388: 00        .byte $00   ; 01 (02)
- D 0 - I - 0x00C399 03:8389: 00        .byte $00   ; 02 (03)
- D 0 - I - 0x00C39A 03:838A: 00        .byte $00   ; 03 (04)
- D 0 - I - 0x00C39B 03:838B: 00        .byte $00   ; 04 (05)
- D 0 - I - 0x00C39C 03:838C: 00        .byte $00   ; 05 (06)
- D 0 - I - 0x00C39D 03:838D: 00        .byte $00   ; 06 (07)
- D 0 - I - 0x00C39E 03:838E: 03        .byte $03   ; 07 (08)
- D 0 - I - 0x00C39F 03:838F: 03        .byte $03   ; 08 (09)
- D 0 - I - 0x00C3A0 03:8390: 03        .byte $03   ; 09 (0A)
- D 0 - I - 0x00C3A1 03:8391: 03        .byte $03   ; 0A (0B)



_off030_8392_0B:
- D 0 - I - 0x00C3A2 03:8392: 02        .byte con_sub_02, $07   ; 
- D 0 - I - 0x00C3A4 03:8394: A2 83     .word off_02_83A2_00_spr_A
- D 0 - I - 0x00C3A6 03:8396: 9B 83     .word off_02_839B_01_spr_T
- D 0 - I - 0x00C3A8 03:8398: A9 83     .word off_02_83A9_02_spr_XY
- D 0 - I - 0x00C3AA 03:839A: 00        .byte con_sub_00   ; 



off_02_839B_01_spr_T:
- D 0 - I - 0x00C3AB 03:839B: D2        .byte $D2   ; 01
- D 0 - I - 0x00C3AC 03:839C: D3        .byte $D3   ; 02
- D 0 - I - 0x00C3AD 03:839D: F2        .byte $F2   ; 03
- D 0 - I - 0x00C3AE 03:839E: F3        .byte $F3   ; 04
- D 0 - I - 0x00C3AF 03:839F: E2        .byte $E2   ; 05
- D 0 - I - 0x00C3B0 03:83A0: E3        .byte $E3   ; 06
- D 0 - I - 0x00C3B1 03:83A1: C0        .byte $C0   ; 07



off_02_83A2_00_spr_A:
- D 0 - I - 0x00C3B2 03:83A2: 00        .byte $00   ; 01
- D 0 - I - 0x00C3B3 03:83A3: 00        .byte $00   ; 02
- D 0 - I - 0x00C3B4 03:83A4: 03        .byte $03   ; 03
- D 0 - I - 0x00C3B5 03:83A5: 03        .byte $03   ; 04
- D 0 - I - 0x00C3B6 03:83A6: 03        .byte $03   ; 05
- D 0 - I - 0x00C3B7 03:83A7: 00        .byte $00   ; 06
- D 0 - I - 0x00C3B8 03:83A8: 03        .byte $03   ; 07



off_02_83A9_02_spr_XY:
- D 0 - I - 0x00C3B9 03:83A9: 08        .byte $08, $14   ; 01
- D 0 - I - 0x00C3BB 03:83AB: 10        .byte $10, $14   ; 02
- D 0 - I - 0x00C3BD 03:83AD: F8        .byte $F8, $0D   ; 03
- D 0 - I - 0x00C3BF 03:83AF: 00        .byte $00, $0D   ; 04
- D 0 - I - 0x00C3C1 03:83B1: 08        .byte $08, $0C   ; 05
- D 0 - I - 0x00C3C3 03:83B3: 10        .byte $10, $0C   ; 06
- D 0 - I - 0x00C3C5 03:83B5: 01        .byte $01, $05   ; 07



_off030_83B7_0A:
- D 0 - I - 0x00C3C7 03:83B7: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00C3C9 03:83B9: C8 83     .word off_02_83C8_00_spr_A
- D 0 - I - 0x00C3CB 03:83BB: C0 83     .word off_02_83C0_01_spr_T
- D 0 - I - 0x00C3CD 03:83BD: D2 83     .word off_02_83D2_02_spr_XY
- D 0 - I - 0x00C3CF 03:83BF: 00        .byte con_sub_00   ; 



off_02_83C0_01_spr_T:
- D 0 - I - 0x00C3D0 03:83C0: 83        .byte $83   ; 01
- D 0 - I - 0x00C3D1 03:83C1: 84        .byte $84   ; 02
- D 0 - I - 0x00C3D2 03:83C2: A3        .byte $A3   ; 03
- D 0 - I - 0x00C3D3 03:83C3: A4        .byte $A4   ; 04
- D 0 - I - 0x00C3D4 03:83C4: 93        .byte $93   ; 05
- D 0 - I - 0x00C3D5 03:83C5: 94        .byte $94   ; 06
- D 0 - I - 0x00C3D6 03:83C6: 85        .byte $85   ; 07
- D 0 - I - 0x00C3D7 03:83C7: 86        .byte $86   ; 08



off_02_83C8_00_spr_A:
- D 0 - I - 0x00C3D8 03:83C8: 03        .byte $03   ; 01
- D 0 - I - 0x00C3D9 03:83C9: 03        .byte $03   ; 02
- D 0 - I - 0x00C3DA 03:83CA: 00        .byte $00   ; 03
- D 0 - I - 0x00C3DB 03:83CB: 00        .byte $00   ; 04
- D 0 - I - 0x00C3DC 03:83CC: 03        .byte $03   ; 05
- D 0 - I - 0x00C3DD 03:83CD: 03        .byte $03   ; 06
- D 0 - I - 0x00C3DE 03:83CE: 03        .byte $03   ; 07
- D 0 - I - 0x00C3DF 03:83CF: 00        .byte $00   ; 08



off_02_83D0_02_spr_XY:
- D 0 - I - 0x00C3E0 03:83D0: 0C        .byte $0C, $04   ; 01
off_02_83D2_02_spr_XY:
- D 0 - I - 0x00C3E2 03:83D2: FC        .byte $FC, $0C   ; 01 (02)
- D 0 - I - 0x00C3E4 03:83D4: 04        .byte $04, $0C   ; 02 (03)
- D 0 - I - 0x00C3E6 03:83D6: 0C        .byte $0C, $0C   ; 03 (04)
- D 0 - I - 0x00C3E8 03:83D8: 14        .byte $14, $0C   ; 04 (05)
- D 0 - I - 0x00C3EA 03:83DA: FC        .byte $FC, $04   ; 05 (06)
- D 0 - I - 0x00C3EC 03:83DC: 04        .byte $04, $04   ; 06 (07)
- D 0 - I - 0x00C3EE 03:83DE: 0C        .byte $0C, $04   ; 07 (08)
- D 0 - I - 0x00C3F0 03:83E0: 14        .byte $14, $04   ; 08 (09)



_off030_83E2_00:
- D 0 - I - 0x00C3F2 03:83E2: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C3F4 03:83E4: 88 83     .word off_02_8388_00_spr_A
- D 0 - I - 0x00C3F6 03:83E6: EB 83     .word off_02_83EB_01_spr_T
- D 0 - I - 0x00C3F8 03:83E8: F5 83     .word off_02_83F5_02_spr_XY
- D 0 - I - 0x00C3FA 03:83EA: 00        .byte con_sub_00   ; 



off_02_83EB_01_spr_T:
- D 0 - I - 0x00C3FB 03:83EB: 80        .byte $80   ; 01
- D 0 - I - 0x00C3FC 03:83EC: 81        .byte $81   ; 02
- D 0 - I - 0x00C3FD 03:83ED: 90        .byte $90   ; 03
- D 0 - I - 0x00C3FE 03:83EE: 91        .byte $91   ; 04
- D 0 - I - 0x00C3FF 03:83EF: A0        .byte $A0   ; 05
- D 0 - I - 0x00C400 03:83F0: A1        .byte $A1   ; 06
- D 0 - I - 0x00C401 03:83F1: B0        .byte $B0   ; 07
- D 0 - I - 0x00C402 03:83F2: B1        .byte $B1   ; 08
- D 0 - I - 0x00C403 03:83F3: C0        .byte $C0   ; 09
- D 0 - I - 0x00C404 03:83F4: C1        .byte $C1   ; 0A



off_02_83F5_02_spr_XY:
- D 0 - I - 0x00C405 03:83F5: FB        .byte $FB, $24   ; 01
- D 0 - I - 0x00C407 03:83F7: 03        .byte $03, $24   ; 02
- D 0 - I - 0x00C409 03:83F9: FB        .byte $FB, $1C   ; 03
- D 0 - I - 0x00C40B 03:83FB: 03        .byte $03, $1C   ; 04
- D 0 - I - 0x00C40D 03:83FD: FC        .byte $FC, $14   ; 05
- D 0 - I - 0x00C40F 03:83FF: 04        .byte $04, $14   ; 06
- D 0 - I - 0x00C411 03:8401: FC        .byte $FC, $0C   ; 07
- D 0 - I - 0x00C413 03:8403: 04        .byte $04, $0C   ; 08
- D 0 - I - 0x00C415 03:8405: FC        .byte $FC, $04   ; 09
- D 0 - I - 0x00C417 03:8407: 04        .byte $04, $04   ; 0A



_off030_8409_01:
- D 0 - I - 0x00C419 03:8409: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C41B 03:840B: 88 83     .word off_02_8388_00_spr_A
- D 0 - I - 0x00C41D 03:840D: 12 84     .word off_02_8412_01_spr_T
- D 0 - I - 0x00C41F 03:840F: 1C 84     .word off_02_841C_02_spr_XY
- D 0 - I - 0x00C421 03:8411: 00        .byte con_sub_00   ; 



off_02_8412_01_spr_T:
- D 0 - I - 0x00C422 03:8412: 80        .byte $80   ; 01
- D 0 - I - 0x00C423 03:8413: 81        .byte $81   ; 02
- D 0 - I - 0x00C424 03:8414: 90        .byte $90   ; 03
- D 0 - I - 0x00C425 03:8415: 91        .byte $91   ; 04
- D 0 - I - 0x00C426 03:8416: A0        .byte $A0   ; 05
- D 0 - I - 0x00C427 03:8417: A1        .byte $A1   ; 06
- D 0 - I - 0x00C428 03:8418: E0        .byte $E0   ; 07
- D 0 - I - 0x00C429 03:8419: E1        .byte $E1   ; 08
- D 0 - I - 0x00C42A 03:841A: F0        .byte $F0   ; 09
- D 0 - I - 0x00C42B 03:841B: F1        .byte $F1   ; 0A



off_02_841C_02_spr_XY:
- D 0 - I - 0x00C42C 03:841C: FC        .byte $FC, $23   ; 01
- D 0 - I - 0x00C42E 03:841E: 04        .byte $04, $23   ; 02
- D 0 - I - 0x00C430 03:8420: FC        .byte $FC, $1B   ; 03
- D 0 - I - 0x00C432 03:8422: 04        .byte $04, $1B   ; 04
- D 0 - I - 0x00C434 03:8424: FD        .byte $FD, $13   ; 05
- D 0 - I - 0x00C436 03:8426: 05        .byte $05, $13   ; 06
- D 0 - I - 0x00C438 03:8428: FA        .byte $FA, $0B   ; 07
- D 0 - I - 0x00C43A 03:842A: 02        .byte $02, $0B   ; 08
- D 0 - I - 0x00C43C 03:842C: FA        .byte $FA, $03   ; 09
- D 0 - I - 0x00C43E 03:842E: 02        .byte $02, $03   ; 0A



_off030_8430_02:
- D 0 - I - 0x00C440 03:8430: 02        .byte con_sub_02, $06   ; 
- D 0 - I - 0x00C442 03:8432: 88 83     .word off_02_8388_00_spr_A
- D 0 - I - 0x00C444 03:8434: 3C 84     .word off_02_843C_01_spr_T
- D 0 - I - 0x00C446 03:8436: F5 83     .word off_02_83F5_02_spr_XY
- D 0 - I - 0x00C448 03:8438: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00C449 03:8439: AC 85     .word sub_05_85AC
- D 0 - I - 0x00C44B 03:843B: 00        .byte con_sub_00   ; 



off_02_843C_01_spr_T:
- D 0 - I - 0x00C44C 03:843C: 80        .byte $80   ; 01
- D 0 - I - 0x00C44D 03:843D: 81        .byte $81   ; 02
- D 0 - I - 0x00C44E 03:843E: 90        .byte $90   ; 03
- D 0 - I - 0x00C44F 03:843F: 91        .byte $91   ; 04
- D 0 - I - 0x00C450 03:8440: A0        .byte $A0   ; 05
- D 0 - I - 0x00C451 03:8441: A1        .byte $A1   ; 06



sub_06_8442_01:
- D 0 - I - 0x00C452 03:8442: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C454 03:8444: 72 84     .word off_02_8472_00_spr_A
- D 0 - I - 0x00C456 03:8446: 68 84     .word off_02_8468_01_spr_T
- D 0 - I - 0x00C458 03:8448: 4B 84     .word off_02_844B_02_spr_XY
- D 0 - I - 0x00C45A 03:844A: 00        .byte con_sub_00   ; 



off_02_844B_02_spr_XY:
- D 0 - I - 0x00C45B 03:844B: F2        .byte $F2, $22   ; 01
- D 0 - I - 0x00C45D 03:844D: FA        .byte $FA, $22   ; 02
- D 0 - I - 0x00C45F 03:844F: F2        .byte $F2, $1A   ; 03
- D 0 - I - 0x00C461 03:8451: FA        .byte $FA, $1A   ; 04
- D 0 - I - 0x00C463 03:8453: F1        .byte $F1, $12   ; 05
- D 0 - I - 0x00C465 03:8455: F9        .byte $F9, $12   ; 06
- D 0 - I - 0x00C467 03:8457: F0        .byte $F0, $0A   ; 07
- D 0 - I - 0x00C469 03:8459: F8        .byte $F8, $0A   ; 08
- D 0 - I - 0x00C46B 03:845B: F1        .byte $F1, $02   ; 09
- D 0 - I - 0x00C46D 03:845D: F9        .byte $F9, $02   ; 0A



sub_06_845F_01:
- D 0 - I - 0x00C46F 03:845F: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C471 03:8461: 72 84     .word off_02_8472_00_spr_A
- D 0 - I - 0x00C473 03:8463: 68 84     .word off_02_8468_01_spr_T
- D 0 - I - 0x00C475 03:8465: 7C 84     .word off_02_847C_02_spr_XY
- D 0 - I - 0x00C477 03:8467: 00        .byte con_sub_00   ; 



off_02_8468_01_spr_T:
- D 0 - I - 0x00C478 03:8468: 81        .byte $81   ; 01
- D 0 - I - 0x00C479 03:8469: 80        .byte $80   ; 02
- D 0 - I - 0x00C47A 03:846A: 91        .byte $91   ; 03
- D 0 - I - 0x00C47B 03:846B: A2        .byte $A2   ; 04
- D 0 - I - 0x00C47C 03:846C: D4        .byte $D4   ; 05
- D 0 - I - 0x00C47D 03:846D: D5        .byte $D5   ; 06
- D 0 - I - 0x00C47E 03:846E: E4        .byte $E4   ; 07
- D 0 - I - 0x00C47F 03:846F: E0        .byte $E0   ; 08
- D 0 - I - 0x00C480 03:8470: F1        .byte $F1   ; 09
- D 0 - I - 0x00C481 03:8471: F0        .byte $F0   ; 0A



off_02_8472_00_spr_A:
- D 0 - I - 0x00C482 03:8472: 40        .byte $40   ; 01
- D 0 - I - 0x00C483 03:8473: 40        .byte $40   ; 02
- D 0 - I - 0x00C484 03:8474: 40        .byte $40   ; 03
- D 0 - I - 0x00C485 03:8475: 40        .byte $40   ; 04
- D 0 - I - 0x00C486 03:8476: 00        .byte $00   ; 05
- D 0 - I - 0x00C487 03:8477: 00        .byte $00   ; 06
- D 0 - I - 0x00C488 03:8478: 03        .byte $03   ; 07
- D 0 - I - 0x00C489 03:8479: 43        .byte $43   ; 08
- D 0 - I - 0x00C48A 03:847A: 43        .byte $43   ; 09
- D 0 - I - 0x00C48B 03:847B: 43        .byte $43   ; 0A



off_02_847C_02_spr_XY:
- D 0 - I - 0x00C48C 03:847C: F6        .byte $F6, $24   ; 01
- D 0 - I - 0x00C48E 03:847E: FE        .byte $FE, $24   ; 02
- D 0 - I - 0x00C490 03:8480: F4        .byte $F4, $1C   ; 03
- D 0 - I - 0x00C492 03:8482: FC        .byte $FC, $1C   ; 04
- D 0 - I - 0x00C494 03:8484: F3        .byte $F3, $14   ; 05
- D 0 - I - 0x00C496 03:8486: FB        .byte $FB, $14   ; 06
- D 0 - I - 0x00C498 03:8488: F2        .byte $F2, $0C   ; 07
- D 0 - I - 0x00C49A 03:848A: FB        .byte $FB, $0C   ; 08
- D 0 - I - 0x00C49C 03:848C: F2        .byte $F2, $04   ; 09
- D 0 - I - 0x00C49E 03:848E: F9        .byte $F9, $04   ; 0A



_off030_8490_18:
- D 0 - I - 0x00C4A0 03:8490: 02        .byte con_sub_02, $07   ; 
- D 0 - I - 0x00C4A2 03:8492: 99 84     .word off_02_8499_00_spr_A
- D 0 - I - 0x00C4A4 03:8494: 9B 83     .word off_02_839B_01_spr_T
- D 0 - I - 0x00C4A6 03:8496: A0 84     .word off_02_84A0_02_spr_XY
- D 0 - I - 0x00C4A8 03:8498: 00        .byte con_sub_00   ; 



off_02_8499_00_spr_A:
- D 0 - I - 0x00C4A9 03:8499: 80        .byte $80   ; 01
- D 0 - I - 0x00C4AA 03:849A: 80        .byte $80   ; 02
- D 0 - I - 0x00C4AB 03:849B: 83        .byte $83   ; 03
- D 0 - I - 0x00C4AC 03:849C: 83        .byte $83   ; 04
- D 0 - I - 0x00C4AD 03:849D: 83        .byte $83   ; 05
- D 0 - I - 0x00C4AE 03:849E: 80        .byte $80   ; 06
- D 0 - I - 0x00C4AF 03:849F: 83        .byte $83   ; 07



off_02_84A0_02_spr_XY:
- D 0 - I - 0x00C4B0 03:84A0: 02        .byte $02, $0B   ; 01
- D 0 - I - 0x00C4B2 03:84A2: 0A        .byte $0A, $0B   ; 02
- D 0 - I - 0x00C4B4 03:84A4: F2        .byte $F2, $13   ; 03
- D 0 - I - 0x00C4B6 03:84A6: FA        .byte $FA, $13   ; 04
- D 0 - I - 0x00C4B8 03:84A8: 02        .byte $02, $13   ; 05
- D 0 - I - 0x00C4BA 03:84AA: 0A        .byte $0A, $13   ; 06
- D 0 - I - 0x00C4BC 03:84AC: FB        .byte $FB, $1B   ; 07



_off030_84AE_19:
- D 0 - I - 0x00C4BE 03:84AE: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00C4C0 03:84B0: C0 84     .word off_02_84C0_00_spr_A
- D 0 - I - 0x00C4C2 03:84B2: B7 84     .word off_02_84B7_01_spr_T
- D 0 - I - 0x00C4C4 03:84B4: C9 84     .word off_02_84C9_02_spr_XY
- D 0 - I - 0x00C4C6 03:84B6: 00        .byte con_sub_00   ; 



off_02_84B7_01_spr_T:
- D 0 - I - 0x00C4C7 03:84B7: C0        .byte $C0   ; 01
- D 0 - I - 0x00C4C8 03:84B8: F2        .byte $F2   ; 02
- D 0 - I - 0x00C4C9 03:84B9: F3        .byte $F3   ; 03
- D 0 - I - 0x00C4CA 03:84BA: D4        .byte $D4   ; 04
- D 0 - I - 0x00C4CB 03:84BB: A2        .byte $A2   ; 05
- D 0 - I - 0x00C4CC 03:84BC: 91        .byte $91   ; 06
- D 0 - I - 0x00C4CD 03:84BD: 80        .byte $80   ; 07
- D 0 - I - 0x00C4CE 03:84BE: 81        .byte $81   ; 08
- D 0 - I - 0x00C4CF 03:84BF: 87        .byte $87   ; 09



off_02_84C0_00_spr_A:
- D 0 - I - 0x00C4D0 03:84C0: 83        .byte $83   ; 01
- D 0 - I - 0x00C4D1 03:84C1: 83        .byte $83   ; 02
- D 0 - I - 0x00C4D2 03:84C2: 83        .byte $83   ; 03
- D 0 - I - 0x00C4D3 03:84C3: C0        .byte $C0   ; 04
- D 0 - I - 0x00C4D4 03:84C4: 80        .byte $80   ; 05
- D 0 - I - 0x00C4D5 03:84C5: 80        .byte $80   ; 06
- D 0 - I - 0x00C4D6 03:84C6: 80        .byte $80   ; 07
- D 0 - I - 0x00C4D7 03:84C7: 80        .byte $80   ; 08
- D 0 - I - 0x00C4D8 03:84C8: C0        .byte $C0   ; 09



off_02_84C9_02_spr_XY:
- D 0 - I - 0x00C4D9 03:84C9: FC        .byte $FC, $1C   ; 01
- D 0 - I - 0x00C4DB 03:84CB: F3        .byte $F3, $14   ; 02
- D 0 - I - 0x00C4DD 03:84CD: FB        .byte $FB, $14   ; 03
- D 0 - I - 0x00C4DF 03:84CF: 03        .byte $03, $14   ; 04
- D 0 - I - 0x00C4E1 03:84D1: FC        .byte $FC, $0C   ; 05
- D 0 - I - 0x00C4E3 03:84D3: 04        .byte $04, $0C   ; 06
- D 0 - I - 0x00C4E5 03:84D5: FC        .byte $FC, $04   ; 07
- D 0 - I - 0x00C4E7 03:84D7: 04        .byte $04, $04   ; 08
- D 0 - I - 0x00C4E9 03:84D9: 02        .byte $02, $19   ; 09



_off030_84DB_03:
- D 0 - I - 0x00C4EB 03:84DB: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00C4ED 03:84DD: ED 84     .word off_02_84ED_00_spr_A
- D 0 - I - 0x00C4EF 03:84DF: E4 84     .word off_02_84E4_01_spr_T
- D 0 - I - 0x00C4F1 03:84E1: F6 84     .word off_02_84F6_02_spr_XY
- D 0 - I - 0x00C4F3 03:84E3: 00        .byte con_sub_00   ; 



off_02_84E4_01_spr_T:
- D 0 - I - 0x00C4F4 03:84E4: FE        .byte $FE   ; 01
- D 0 - I - 0x00C4F5 03:84E5: FF        .byte $FF   ; 02
- D 0 - I - 0x00C4F6 03:84E6: FC        .byte $FC   ; 03
- D 0 - I - 0x00C4F7 03:84E7: FD        .byte $FD   ; 04
- D 0 - I - 0x00C4F8 03:84E8: EC        .byte $EC   ; 05
- D 0 - I - 0x00C4F9 03:84E9: BB        .byte $BB   ; 06
- D 0 - I - 0x00C4FA 03:84EA: B7        .byte $B7   ; 07
- D 0 - I - 0x00C4FB 03:84EB: C3        .byte $C3   ; 08
- D 0 - I - 0x00C4FC 03:84EC: C3        .byte $C3   ; 09



off_02_84ED_00_spr_A:
- D 0 - I - 0x00C4FD 03:84ED: 00        .byte $00   ; 01
- D 0 - I - 0x00C4FE 03:84EE: 00        .byte $00   ; 02
- D 0 - I - 0x00C4FF 03:84EF: 03        .byte $03   ; 03
- D 0 - I - 0x00C500 03:84F0: 03        .byte $03   ; 04
- D 0 - I - 0x00C501 03:84F1: 03        .byte $03   ; 05
- D 0 - I - 0x00C502 03:84F2: 03        .byte $03   ; 06
- D 0 - I - 0x00C503 03:84F3: 03        .byte $03   ; 07
- D 0 - I - 0x00C504 03:84F4: 03        .byte $03   ; 08
- D 0 - I - 0x00C505 03:84F5: 43        .byte $43   ; 09



off_02_84F6_02_spr_XY:
- D 0 - I - 0x00C506 03:84F6: FC        .byte $FC, $24   ; 01
- D 0 - I - 0x00C508 03:84F8: 04        .byte $04, $24   ; 02
- D 0 - I - 0x00C50A 03:84FA: FC        .byte $FC, $1C   ; 03
- D 0 - I - 0x00C50C 03:84FC: 04        .byte $04, $1C   ; 04
- D 0 - I - 0x00C50E 03:84FE: FC        .byte $FC, $14   ; 05
- D 0 - I - 0x00C510 03:8500: 04        .byte $04, $14   ; 06
- D 0 - I - 0x00C512 03:8502: FC        .byte $FC, $0C   ; 07
- D 0 - I - 0x00C514 03:8504: 04        .byte $04, $0C   ; 08
- D 0 - I - 0x00C516 03:8506: FD        .byte $FD, $04   ; 09



_off030_8508_04:
- D 0 - I - 0x00C518 03:8508: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00C51A 03:850A: 11 85     .word off_02_8511_00_spr_A
- D 0 - I - 0x00C51C 03:850C: E4 84     .word off_02_84E4_01_spr_T
- D 0 - I - 0x00C51E 03:850E: 1A 85     .word off_02_851A_02_spr_XY
- D 0 - I - 0x00C520 03:8510: 00        .byte con_sub_00   ; 



off_02_8511_00_spr_A:
- D 0 - I - 0x00C521 03:8511: 40        .byte $40   ; 01
- D 0 - I - 0x00C522 03:8512: 40        .byte $40   ; 02
- D 0 - I - 0x00C523 03:8513: 43        .byte $43   ; 03
- D 0 - I - 0x00C524 03:8514: 43        .byte $43   ; 04
- D 0 - I - 0x00C525 03:8515: 43        .byte $43   ; 05
- D 0 - I - 0x00C526 03:8516: 43        .byte $43   ; 06
- D 0 - I - 0x00C527 03:8517: 43        .byte $43   ; 07
- D 0 - I - 0x00C528 03:8518: 43        .byte $43   ; 08
- D 0 - I - 0x00C529 03:8519: 03        .byte $03   ; 09



off_02_851A_02_spr_XY:
- D 0 - I - 0x00C52A 03:851A: 04        .byte $04, $24   ; 01
- D 0 - I - 0x00C52C 03:851C: FC        .byte $FC, $24   ; 02
- D 0 - I - 0x00C52E 03:851E: 04        .byte $04, $1C   ; 03
- D 0 - I - 0x00C530 03:8520: FC        .byte $FC, $1C   ; 04
- D 0 - I - 0x00C532 03:8522: 04        .byte $04, $14   ; 05
- D 0 - I - 0x00C534 03:8524: FC        .byte $FC, $14   ; 06
- D 0 - I - 0x00C536 03:8526: 04        .byte $04, $0C   ; 07
- D 0 - I - 0x00C538 03:8528: FC        .byte $FC, $0C   ; 08
- D 0 - I - 0x00C53A 03:852A: 03        .byte $03, $04   ; 09



_off030_852C_0F:
- D 0 - I - 0x00C53C 03:852C: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00C53E 03:852E: 55 A7     .word off_02_A755_00_spr_A
- D 0 - I - 0x00C540 03:8530: 38 85     .word off_02_8538_01_spr_T
- D 0 - I - 0x00C542 03:8532: 40 85     .word off_02_8540_02_spr_XY
- D 0 - I - 0x00C544 03:8534: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00C545 03:8535: AC 85     .word sub_05_85AC
- D 0 - I - 0x00C547 03:8537: 00        .byte con_sub_00   ; 



off_02_8538_01_spr_T:
- D 0 - I - 0x00C548 03:8538: 80        .byte $80   ; 01
- D 0 - I - 0x00C549 03:8539: E7        .byte $E7   ; 02
- D 0 - I - 0x00C54A 03:853A: FA        .byte $FA   ; 03
- D 0 - I - 0x00C54B 03:853B: FB        .byte $FB   ; 04
- D 0 - I - 0x00C54C 03:853C: C7        .byte $C7   ; 05
- D 0 - I - 0x00C54D 03:853D: C8        .byte $C8   ; 06
- D 0 - I - 0x00C54E 03:853E: D7        .byte $D7   ; 07
- D 0 - I - 0x00C54F 03:853F: D8        .byte $D8   ; 08



off_02_8540_02_spr_XY:
- D 0 - I - 0x00C550 03:8540: F9        .byte $F9, $24   ; 01
- D 0 - I - 0x00C552 03:8542: 01        .byte $01, $24   ; 02
- D 0 - I - 0x00C554 03:8544: EA        .byte $EA, $1F   ; 03
- D 0 - I - 0x00C556 03:8546: F2        .byte $F2, $1C   ; 04
- D 0 - I - 0x00C558 03:8548: FA        .byte $FA, $1C   ; 05
- D 0 - I - 0x00C55A 03:854A: 02        .byte $02, $1C   ; 06
- D 0 - I - 0x00C55C 03:854C: FB        .byte $FB, $14   ; 07
- D 0 - I - 0x00C55E 03:854E: 03        .byte $03, $14   ; 08



_off030_8550_0E:
- D 0 - I - 0x00C560 03:8550: 02        .byte con_sub_02, $07   ; 
- D 0 - I - 0x00C562 03:8552: 63 85     .word off_02_8563_00_spr_A
- D 0 - I - 0x00C564 03:8554: 5C 85     .word off_02_855C_01_spr_T
- D 0 - I - 0x00C566 03:8556: 6A 85     .word off_02_856A_02_spr_XY
- D 0 - I - 0x00C568 03:8558: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00C569 03:8559: AC 85     .word sub_05_85AC
- D 0 - I - 0x00C56B 03:855B: 00        .byte con_sub_00   ; 



off_02_855C_01_spr_T:
- D 0 - I - 0x00C56C 03:855C: 80        .byte $80   ; 01
- D 0 - I - 0x00C56D 03:855D: E7        .byte $E7   ; 02
- D 0 - I - 0x00C56E 03:855E: 91        .byte $91   ; 03
- D 0 - I - 0x00C56F 03:855F: C8        .byte $C8   ; 04
- D 0 - I - 0x00C570 03:8560: FA        .byte $FA   ; 05
- D 0 - I - 0x00C571 03:8561: F5        .byte $F5   ; 06
- D 0 - I - 0x00C572 03:8562: D8        .byte $D8   ; 07



off_02_8563_00_spr_A:
- D 0 - I - 0x00C573 03:8563: 00        .byte $00   ; 01
- D 0 - I - 0x00C574 03:8564: 00        .byte $00   ; 02
- D 0 - I - 0x00C575 03:8565: 40        .byte $40   ; 03
- D 0 - I - 0x00C576 03:8566: 03        .byte $03   ; 04
- D 0 - I - 0x00C577 03:8567: 00        .byte $00   ; 05
- D 0 - I - 0x00C578 03:8568: 00        .byte $00   ; 06
- D 0 - I - 0x00C579 03:8569: 03        .byte $03   ; 07



off_02_856A_02_spr_XY:
- D 0 - I - 0x00C57A 03:856A: FC        .byte $FC, $24   ; 01
- D 0 - I - 0x00C57C 03:856C: 04        .byte $04, $24   ; 02
- D 0 - I - 0x00C57E 03:856E: FC        .byte $FC, $1C   ; 03
- D 0 - I - 0x00C580 03:8570: 04        .byte $04, $1C   ; 04
- D 0 - I - 0x00C582 03:8572: F4        .byte $F4, $16   ; 05
- D 0 - I - 0x00C584 03:8574: FC        .byte $FC, $14   ; 06
- D 0 - I - 0x00C586 03:8576: 04        .byte $04, $14   ; 07



_off030_8578_0C:
- D 0 - I - 0x00C588 03:8578: 01        .byte con_sub_01, $01, $00   ; 
- D 0 - I - 0x00C58B 03:857B: 86 85     .word off_01_8586_spr_T
- D 0 - I - 0x00C58D 03:857D: 87 85     .word off_01_8587_spr_XY
- D 0 - I - 0x00C58F 03:857F: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00C590 03:8580: C0 85     .word sub_05_85C0
- D 0 - I - 0x00C592 03:8582: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00C593 03:8583: AC 85     .word sub_05_85AC
- D 0 - I - 0x00C595 03:8585: 00        .byte con_sub_00   ; 



off_01_8586_spr_T:
- D 0 - I - 0x00C596 03:8586: EA        .byte $EA   ; 01



off_01_8587_spr_XY:
- D 0 - I - 0x00C597 03:8587: F5        .byte $F5, $20   ; 01



_off030_8589_0D:
- D 0 - I - 0x00C599 03:8589: 01        .byte con_sub_01, $08, $00   ; 
- D 0 - I - 0x00C59C 03:858C: 94 85     .word off_01_8594_spr_T
- D 0 - I - 0x00C59E 03:858E: 9C 85     .word off_01_859C_spr_XY
- D 0 - I - 0x00C5A0 03:8590: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00C5A1 03:8591: AC 85     .word sub_05_85AC
- D 0 - I - 0x00C5A3 03:8593: 00        .byte con_sub_00   ; 



off_01_8594_spr_T:
- D 0 - I - 0x00C5A4 03:8594: EA        .byte $EA   ; 01
- D 0 - I - 0x00C5A5 03:8595: EB        .byte $EB   ; 02
- D 0 - I - 0x00C5A6 03:8596: 80        .byte $80   ; 03
- D 0 - I - 0x00C5A7 03:8597: 81        .byte $81   ; 04
- D 0 - I - 0x00C5A8 03:8598: E9        .byte $E9   ; 05
- D 0 - I - 0x00C5A9 03:8599: 91        .byte $91   ; 06
- D 0 - I - 0x00C5AA 03:859A: F9        .byte $F9   ; 07
- D 0 - I - 0x00C5AB 03:859B: A1        .byte $A1   ; 08



off_02_859C_02_spr_XY:
off_01_859C_spr_XY:
- D 0 - I - 0x00C5AC 03:859C: EB        .byte $EB, $1D   ; 01
- D 0 - I - 0x00C5AE 03:859E: F3        .byte $F3, $1E   ; 02
- D 0 - I - 0x00C5B0 03:85A0: FB        .byte $FB, $24   ; 03
- D 0 - I - 0x00C5B2 03:85A2: 03        .byte $03, $24   ; 04
- D 0 - I - 0x00C5B4 03:85A4: FB        .byte $FB, $1C   ; 05
- D 0 - I - 0x00C5B6 03:85A6: 03        .byte $03, $1C   ; 06
- D 0 - I - 0x00C5B8 03:85A8: FC        .byte $FC, $14   ; 07
- D 0 - I - 0x00C5BA 03:85AA: 04        .byte $04, $14   ; 08



sub_05_85AC:
- D 0 - I - 0x00C5BC 03:85AC: 01        .byte con_sub_01, $04, $03   ; 
- D 0 - I - 0x00C5BF 03:85AF: B4 85     .word off_01_85B4_spr_T
- D 0 - I - 0x00C5C1 03:85B1: B8 85     .word off_01_85B8_spr_XY
- D 0 - I - 0x00C5C3 03:85B3: 00        .byte con_sub_00   ; 



off_01_85B4_spr_T:
off_02_85B4_01_spr_T:
- D 0 - I - 0x00C5C4 03:85B4: D0        .byte $D0   ; 01
- D 0 - I - 0x00C5C5 03:85B5: D1        .byte $D1   ; 02
- D 0 - I - 0x00C5C6 03:85B6: C0        .byte $C0   ; 03
- D 0 - I - 0x00C5C7 03:85B7: C1        .byte $C1   ; 04



off_01_85B8_spr_XY:
off_02_85B8_02_spr_XY:
- D 0 - I - 0x00C5C8 03:85B8: FC        .byte $FC, $0C   ; 01
- D 0 - I - 0x00C5CA 03:85BA: 04        .byte $04, $0C   ; 02
- D 0 - I - 0x00C5CC 03:85BC: FE        .byte $FE, $04   ; 03
- D 0 - I - 0x00C5CE 03:85BE: 05        .byte $05, $04   ; 04



sub_05_85C0:
- D 0 - I - 0x00C5D0 03:85C0: 01        .byte con_sub_01, $06, $00   ; 
- D 0 - I - 0x00C5D3 03:85C3: C8 85     .word off_01_85C8_spr_T
- D 0 - I - 0x00C5D5 03:85C5: CE 85     .word off_01_85CE_spr_XY
- D 0 - I - 0x00C5D7 03:85C7: 00        .byte con_sub_00   ; 



off_01_85C8_spr_T:
- D 0 - I - 0x00C5D8 03:85C8: 80        .byte $80   ; 01
- D 0 - I - 0x00C5D9 03:85C9: 81        .byte $81   ; 02
- D 0 - I - 0x00C5DA 03:85CA: E9        .byte $E9   ; 03
- D 0 - I - 0x00C5DB 03:85CB: 91        .byte $91   ; 04
- D 0 - I - 0x00C5DC 03:85CC: F9        .byte $F9   ; 05
- D 0 - I - 0x00C5DD 03:85CD: A1        .byte $A1   ; 06



off_01_85CE_spr_XY:
- D 0 - I - 0x00C5DE 03:85CE: FD        .byte $FD, $24   ; 01
- D 0 - I - 0x00C5E0 03:85D0: 05        .byte $05, $24   ; 02
- D 0 - I - 0x00C5E2 03:85D2: FD        .byte $FD, $1C   ; 03
- D 0 - I - 0x00C5E4 03:85D4: 05        .byte $05, $1C   ; 04
- D 0 - I - 0x00C5E6 03:85D6: FD        .byte $FD, $14   ; 05
- D 0 - I - 0x00C5E8 03:85D8: 05        .byte $05, $14   ; 06



_off030_85DA_05:
- D 0 - I - 0x00C5EA 03:85DA: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00C5EC 03:85DC: EC 85     .word off_02_85EC_00_spr_A
- D 0 - I - 0x00C5EE 03:85DE: E3 85     .word off_02_85E3_01_spr_T
- D 0 - I - 0x00C5F0 03:85E0: F5 85     .word off_02_85F5_02_spr_XY
- D 0 - I - 0x00C5F2 03:85E2: 00        .byte con_sub_00   ; 



off_02_85E3_01_spr_T:
- D 0 - I - 0x00C5F3 03:85E3: 80        .byte $80   ; 01
- D 0 - I - 0x00C5F4 03:85E4: 81        .byte $81   ; 02
- D 0 - I - 0x00C5F5 03:85E5: 90        .byte $90   ; 03
- D 0 - I - 0x00C5F6 03:85E6: 91        .byte $91   ; 04
- D 0 - I - 0x00C5F7 03:85E7: E8        .byte $E8   ; 05
- D 0 - I - 0x00C5F8 03:85E8: C9        .byte $C9   ; 06
- D 0 - I - 0x00C5F9 03:85E9: F8        .byte $F8   ; 07
- D 0 - I - 0x00C5FA 03:85EA: D9        .byte $D9   ; 08
- D 0 - I - 0x00C5FB 03:85EB: F7        .byte $F7   ; 09



off_02_85EC_00_spr_A:
- D 0 - I - 0x00C5FC 03:85EC: 00        .byte $00   ; 01
- D 0 - I - 0x00C5FD 03:85ED: 00        .byte $00   ; 02
- D 0 - I - 0x00C5FE 03:85EE: 00        .byte $00   ; 03
- D 0 - I - 0x00C5FF 03:85EF: 00        .byte $00   ; 04
- D 0 - I - 0x00C600 03:85F0: 03        .byte $03   ; 05
- D 0 - I - 0x00C601 03:85F1: 00        .byte $00   ; 06
- D 0 - I - 0x00C602 03:85F2: 03        .byte $03   ; 07
- D 0 - I - 0x00C603 03:85F3: 03        .byte $03   ; 08
- D 0 - I - 0x00C604 03:85F4: 03        .byte $03   ; 09



off_02_85F5_02_spr_XY:
- D 0 - I - 0x00C605 03:85F5: FB        .byte $FB, $27   ; 01
- D 0 - I - 0x00C607 03:85F7: 03        .byte $03, $27   ; 02
- D 0 - I - 0x00C609 03:85F9: FB        .byte $FB, $1F   ; 03
- D 0 - I - 0x00C60B 03:85FB: 03        .byte $03, $1F   ; 04
- D 0 - I - 0x00C60D 03:85FD: FC        .byte $FC, $17   ; 05
- D 0 - I - 0x00C60F 03:85FF: 04        .byte $04, $17   ; 06
- D 0 - I - 0x00C611 03:8601: FC        .byte $FC, $0F   ; 07
- D 0 - I - 0x00C613 03:8603: 04        .byte $04, $0F   ; 08
- D 0 - I - 0x00C615 03:8605: 04        .byte $04, $07   ; 09



_off030_8607_25:
- D 0 - I - 0x00C617 03:8607: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C619 03:8609: 1A 86     .word off_02_861A_00_spr_A
- D 0 - I - 0x00C61B 03:860B: 10 86     .word off_02_8610_01_spr_T
- D 0 - I - 0x00C61D 03:860D: 24 86     .word off_02_8624_02_spr_XY
- D 0 - I - 0x00C61F 03:860F: 00        .byte con_sub_00   ; 



off_02_8610_01_spr_T:
- D 0 - I - 0x00C620 03:8610: 80        .byte $80   ; 01
- D 0 - I - 0x00C621 03:8611: E7        .byte $E7   ; 02
- D 0 - I - 0x00C622 03:8612: 91        .byte $91   ; 03
- D 0 - I - 0x00C623 03:8613: C4        .byte $C4   ; 04
- D 0 - I - 0x00C624 03:8614: 88        .byte $88   ; 05
- D 0 - I - 0x00C625 03:8615: 89        .byte $89   ; 06
- D 0 - I - 0x00C626 03:8616: C5        .byte $C5   ; 07
- D 0 - I - 0x00C627 03:8617: A0        .byte $A0   ; 08
- D 0 - I - 0x00C628 03:8618: 98        .byte $98   ; 09
- D 0 - I - 0x00C629 03:8619: 99        .byte $99   ; 0A



off_02_861A_00_spr_A:
- D 0 - I - 0x00C62A 03:861A: 00        .byte $00   ; 01
- D 0 - I - 0x00C62B 03:861B: 00        .byte $00   ; 02
- D 0 - I - 0x00C62C 03:861C: 40        .byte $40   ; 03
- D 0 - I - 0x00C62D 03:861D: 00        .byte $00   ; 04
- D 0 - I - 0x00C62E 03:861E: 03        .byte $03   ; 05
- D 0 - I - 0x00C62F 03:861F: 03        .byte $03   ; 06
- D 0 - I - 0x00C630 03:8620: 00        .byte $00   ; 07
- D 0 - I - 0x00C631 03:8621: 40        .byte $40   ; 08
- D 0 - I - 0x00C632 03:8622: 03        .byte $03   ; 09
- D 0 - I - 0x00C633 03:8623: 03        .byte $03   ; 0A



off_02_8624_02_spr_XY:
- D 0 - I - 0x00C634 03:8624: 02        .byte $02, $1C   ; 01
- D 0 - I - 0x00C636 03:8626: 0A        .byte $0A, $1C   ; 02
- D 0 - I - 0x00C638 03:8628: FC        .byte $FC, $14   ; 03
- D 0 - I - 0x00C63A 03:862A: 04        .byte $04, $14   ; 04
- D 0 - I - 0x00C63C 03:862C: EC        .byte $EC, $0C   ; 05
- D 0 - I - 0x00C63E 03:862E: F4        .byte $F4, $0C   ; 06
- D 0 - I - 0x00C640 03:8630: FC        .byte $FC, $0C   ; 07
- D 0 - I - 0x00C642 03:8632: 04        .byte $04, $0C   ; 08
- D 0 - I - 0x00C644 03:8634: FC        .byte $FC, $07   ; 09
- D 0 - I - 0x00C646 03:8636: 04        .byte $04, $07   ; 0A



_off030_8638_06:
- D 0 - I - 0x00C648 03:8638: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00C64A 03:863A: 4A 86     .word off_02_864A_00_spr_A
- D 0 - I - 0x00C64C 03:863C: 41 86     .word off_02_8641_01_spr_T
- D 0 - I - 0x00C64E 03:863E: 53 86     .word off_02_8653_02_spr_XY
- D 0 - I - 0x00C650 03:8640: 00        .byte con_sub_00   ; 



off_02_8641_01_spr_T:
- D 0 - I - 0x00C651 03:8641: 80        .byte $80   ; 01
- D 0 - I - 0x00C652 03:8642: 81        .byte $81   ; 02
- D 0 - I - 0x00C653 03:8643: 90        .byte $90   ; 03
- D 0 - I - 0x00C654 03:8644: 91        .byte $91   ; 04
- D 0 - I - 0x00C655 03:8645: 8A        .byte $8A   ; 05
- D 0 - I - 0x00C656 03:8646: A1        .byte $A1   ; 06
- D 0 - I - 0x00C657 03:8647: 9A        .byte $9A   ; 07
- D 0 - I - 0x00C658 03:8648: 9B        .byte $9B   ; 08
- D 0 - I - 0x00C659 03:8649: F4        .byte $F4   ; 09



off_02_864A_00_spr_A:
- D 0 - I - 0x00C65A 03:864A: 00        .byte $00   ; 01
- D 0 - I - 0x00C65B 03:864B: 00        .byte $00   ; 02
- D 0 - I - 0x00C65C 03:864C: 00        .byte $00   ; 03
- D 0 - I - 0x00C65D 03:864D: 00        .byte $00   ; 04
- D 0 - I - 0x00C65E 03:864E: 03        .byte $03   ; 05
- D 0 - I - 0x00C65F 03:864F: 00        .byte $00   ; 06
- D 0 - I - 0x00C660 03:8650: 03        .byte $03   ; 07
- D 0 - I - 0x00C661 03:8651: 03        .byte $03   ; 08
- D 0 - I - 0x00C662 03:8652: 03        .byte $03   ; 09



off_02_8653_02_spr_XY:
- D 0 - I - 0x00C663 03:8653: FB        .byte $FB, $1C   ; 01
- D 0 - I - 0x00C665 03:8655: 03        .byte $03, $1C   ; 02
- D 0 - I - 0x00C667 03:8657: FB        .byte $FB, $14   ; 03
- D 0 - I - 0x00C669 03:8659: 03        .byte $03, $14   ; 04
- D 0 - I - 0x00C66B 03:865B: FC        .byte $FC, $0C   ; 05
- D 0 - I - 0x00C66D 03:865D: 04        .byte $04, $0C   ; 06
- D 0 - I - 0x00C66F 03:865F: FC        .byte $FC, $04   ; 07
- D 0 - I - 0x00C671 03:8661: 04        .byte $04, $04   ; 08
- D 0 - I - 0x00C673 03:8663: F4        .byte $F4, $0C   ; 09



_off030_8665_10:
- D 0 - I - 0x00C675 03:8665: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00C677 03:8667: 7A 86     .word off_02_867A_00_spr_A
- D 0 - I - 0x00C679 03:8669: 71 86     .word off_02_8671_01_spr_T
- D 0 - I - 0x00C67B 03:866B: 83 86     .word off_02_8683_02_spr_XY
- D 0 - I - 0x00C67D 03:866D: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00C67E 03:866E: AC 85     .word sub_05_85AC
- D 0 - I - 0x00C680 03:8670: 00        .byte con_sub_00   ; 



off_02_8671_01_spr_T:
- D 0 - I - 0x00C681 03:8671: 80        .byte $80   ; 01
- D 0 - I - 0x00C682 03:8672: E7        .byte $E7   ; 02
- D 0 - I - 0x00C683 03:8673: EA        .byte $EA   ; 03
- D 0 - I - 0x00C684 03:8674: 91        .byte $91   ; 04
- D 0 - I - 0x00C685 03:8675: B8        .byte $B8   ; 05
- D 0 - I - 0x00C686 03:8676: CA        .byte $CA   ; 06
- D 0 - I - 0x00C687 03:8677: A1        .byte $A1   ; 07
- D 0 - I - 0x00C688 03:8678: 98        .byte $98   ; 08
- D 0 - I - 0x00C689 03:8679: DA        .byte $DA   ; 09



off_02_867A_00_spr_A:
- D 0 - I - 0x00C68A 03:867A: 00        .byte $00   ; 01
- D 0 - I - 0x00C68B 03:867B: 00        .byte $00   ; 02
- D 0 - I - 0x00C68C 03:867C: 00        .byte $00   ; 03
- D 0 - I - 0x00C68D 03:867D: 40        .byte $40   ; 04
- D 0 - I - 0x00C68E 03:867E: 00        .byte $00   ; 05
- D 0 - I - 0x00C68F 03:867F: 00        .byte $00   ; 06
- D 0 - I - 0x00C690 03:8680: 40        .byte $40   ; 07
- D 0 - I - 0x00C691 03:8681: 40        .byte $40   ; 08
- D 0 - I - 0x00C692 03:8682: 00        .byte $00   ; 09



off_02_8683_02_spr_XY:
- D 0 - I - 0x00C693 03:8683: 02        .byte $02, $23   ; 01
- D 0 - I - 0x00C695 03:8685: 0A        .byte $0A, $23   ; 02
- D 0 - I - 0x00C697 03:8687: 09        .byte $09, $27   ; 03
- D 0 - I - 0x00C699 03:8689: FC        .byte $FC, $1B   ; 04
- D 0 - I - 0x00C69B 03:868B: 04        .byte $04, $1B   ; 05
- D 0 - I - 0x00C69D 03:868D: 0B        .byte $0B, $23   ; 06
- D 0 - I - 0x00C69F 03:868F: FC        .byte $FC, $13   ; 07
- D 0 - I - 0x00C6A1 03:8691: 04        .byte $04, $13   ; 08
- D 0 - I - 0x00C6A3 03:8693: 0B        .byte $0B, $1B   ; 09



_off030_8695_11:
- D 0 - I - 0x00C6A5 03:8695: 02        .byte con_sub_02, $0C   ; 
- D 0 - I - 0x00C6A7 03:8697: AA 86     .word off_02_86AA_00_spr_A
- D 0 - I - 0x00C6A9 03:8699: 9E 86     .word off_02_869E_01_spr_T
- D 0 - I - 0x00C6AB 03:869B: B6 86     .word off_02_86B6_02_spr_XY
- D 0 - I - 0x00C6AD 03:869D: 00        .byte con_sub_00   ; 



off_02_869E_01_spr_T:
- D 0 - I - 0x00C6AE 03:869E: 80        .byte $80   ; 01
- D 0 - I - 0x00C6AF 03:869F: E7        .byte $E7   ; 02
- D 0 - I - 0x00C6B0 03:86A0: 91        .byte $91   ; 03
- D 0 - I - 0x00C6B1 03:86A1: C8        .byte $C8   ; 04
- D 0 - I - 0x00C6B2 03:86A2: BA        .byte $BA   ; 05
- D 0 - I - 0x00C6B3 03:86A3: D7        .byte $D7   ; 06
- D 0 - I - 0x00C6B4 03:86A4: D8        .byte $D8   ; 07
- D 0 - I - 0x00C6B5 03:86A5: 87        .byte $87   ; 08
- D 0 - I - 0x00C6B6 03:86A6: D0        .byte $D0   ; 09
- D 0 - I - 0x00C6B7 03:86A7: D1        .byte $D1   ; 0A
- D 0 - I - 0x00C6B8 03:86A8: C0        .byte $C0   ; 0B
- D 0 - I - 0x00C6B9 03:86A9: C1        .byte $C1   ; 0C



off_02_86AA_00_spr_A:
- D 0 - I - 0x00C6BA 03:86AA: 00        .byte $00   ; 01
- D 0 - I - 0x00C6BB 03:86AB: 00        .byte $00   ; 02
- D 0 - I - 0x00C6BC 03:86AC: 40        .byte $40   ; 03
- D 0 - I - 0x00C6BD 03:86AD: 03        .byte $03   ; 04
- D 0 - I - 0x00C6BE 03:86AE: 00        .byte $00   ; 05
- D 0 - I - 0x00C6BF 03:86AF: 03        .byte $03   ; 06
- D 0 - I - 0x00C6C0 03:86B0: 03        .byte $03   ; 07
- D 0 - I - 0x00C6C1 03:86B1: 40        .byte $40   ; 08
- D 0 - I - 0x00C6C2 03:86B2: 03        .byte $03   ; 09
- D 0 - I - 0x00C6C3 03:86B3: 03        .byte $03   ; 0A
- D 0 - I - 0x00C6C4 03:86B4: 03        .byte $03   ; 0B
- D 0 - I - 0x00C6C5 03:86B5: 03        .byte $03   ; 0C



off_02_86B6_02_spr_XY:
- D 0 - I - 0x00C6C6 03:86B6: F6        .byte $F6, $23   ; 01
- D 0 - I - 0x00C6C8 03:86B8: FE        .byte $FE, $23   ; 02
- D 0 - I - 0x00C6CA 03:86BA: F6        .byte $F6, $1B   ; 03
- D 0 - I - 0x00C6CC 03:86BC: FE        .byte $FE, $1B   ; 04
- D 0 - I - 0x00C6CE 03:86BE: F3        .byte $F3, $15   ; 05
- D 0 - I - 0x00C6D0 03:86C0: F8        .byte $F8, $13   ; 06
- D 0 - I - 0x00C6D2 03:86C2: 00        .byte $00, $13   ; 07
- D 0 - I - 0x00C6D4 03:86C4: F1        .byte $F1, $10   ; 08
- D 0 - I - 0x00C6D6 03:86C6: F9        .byte $F9, $0B   ; 09
- D 0 - I - 0x00C6D8 03:86C8: 01        .byte $01, $0B   ; 0A
- D 0 - I - 0x00C6DA 03:86CA: FC        .byte $FC, $03   ; 0B
- D 0 - I - 0x00C6DC 03:86CC: 03        .byte $03, $03   ; 0C



sub_06_86CE_00:
sub_06_86CE_01:
- D 0 - I - 0x00C6DE 03:86CE: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00C6E0 03:86D0: DF 86     .word off_02_86DF_00_spr_A
- D 0 - I - 0x00C6E2 03:86D2: D7 86     .word off_02_86D7_01_spr_T
- D 0 - I - 0x00C6E4 03:86D4: E7 86     .word off_02_86E7_02_spr_XY
- D 0 - I - 0x00C6E6 03:86D6: 00        .byte con_sub_00   ; 



off_02_86D7_01_spr_T:
- D 0 - I - 0x00C6E7 03:86D7: B4        .byte $B4   ; 01
- D 0 - I - 0x00C6E8 03:86D8: B5        .byte $B5   ; 02
- D 0 - I - 0x00C6E9 03:86D9: B6        .byte $B6   ; 03
- D 0 - I - 0x00C6EA 03:86DA: B1        .byte $B1   ; 04
- D 0 - I - 0x00C6EB 03:86DB: B0        .byte $B0   ; 05
- D 0 - I - 0x00C6EC 03:86DC: 87        .byte $87   ; 06
- D 0 - I - 0x00C6ED 03:86DD: C1        .byte $C1   ; 07
- D 0 - I - 0x00C6EE 03:86DE: C0        .byte $C0   ; 08



off_02_86DF_00_spr_A:
- D 0 - I - 0x00C6EF 03:86DF: 03        .byte $03   ; 01
- D 0 - I - 0x00C6F0 03:86E0: 03        .byte $03   ; 02
- D 0 - I - 0x00C6F1 03:86E1: 00        .byte $00   ; 03
- D 0 - I - 0x00C6F2 03:86E2: 43        .byte $43   ; 04
- D 0 - I - 0x00C6F3 03:86E3: 43        .byte $43   ; 05
- D 0 - I - 0x00C6F4 03:86E4: 00        .byte $00   ; 06
- D 0 - I - 0x00C6F5 03:86E5: 43        .byte $43   ; 07
- D 0 - I - 0x00C6F6 03:86E6: 43        .byte $43   ; 08



off_02_86E7_02_spr_XY:
- D 0 - I - 0x00C6F7 03:86E7: E0        .byte $E0, $14   ; 01
- D 0 - I - 0x00C6F9 03:86E9: E8        .byte $E8, $14   ; 02
- D 0 - I - 0x00C6FB 03:86EB: F0        .byte $F0, $14   ; 03
- D 0 - I - 0x00C6FD 03:86ED: DC        .byte $DC, $0C   ; 04
- D 0 - I - 0x00C6FF 03:86EF: E4        .byte $E4, $0C   ; 05
- D 0 - I - 0x00C701 03:86F1: E9        .byte $E9, $0C   ; 06
- D 0 - I - 0x00C703 03:86F3: DC        .byte $DC, $04   ; 07
- D 0 - I - 0x00C705 03:86F5: E4        .byte $E4, $04   ; 08



sub_06_86F7_00:
sub_06_86F7_01:
- D 0 - I - 0x00C707 03:86F7: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C709 03:86F9: 0A 87     .word off_02_870A_00_spr_A
- D 0 - I - 0x00C70B 03:86FB: 00 87     .word off_02_8700_01_spr_T
- D 0 - I - 0x00C70D 03:86FD: 14 87     .word off_02_8714_02_spr_XY
- D 0 - I - 0x00C70F 03:86FF: 00        .byte con_sub_00   ; 



off_02_8700_01_spr_T:
- D 0 - I - 0x00C710 03:8700: 95        .byte $95   ; 01
- D 0 - I - 0x00C711 03:8701: 96        .byte $96   ; 02
- D 0 - I - 0x00C712 03:8702: 97        .byte $97   ; 03
- D 0 - I - 0x00C713 03:8703: A5        .byte $A5   ; 04
- D 0 - I - 0x00C714 03:8704: A6        .byte $A6   ; 05
- D 0 - I - 0x00C715 03:8705: A7        .byte $A7   ; 06
- D 0 - I - 0x00C716 03:8706: B1        .byte $B1   ; 07
- D 0 - I - 0x00C717 03:8707: B0        .byte $B0   ; 08
- D 0 - I - 0x00C718 03:8708: C1        .byte $C1   ; 09
- D 0 - I - 0x00C719 03:8709: C0        .byte $C0   ; 0A



off_02_870A_00_spr_A:
- D 0 - I - 0x00C71A 03:870A: 03        .byte $03   ; 01
- D 0 - I - 0x00C71B 03:870B: 00        .byte $00   ; 02
- D 0 - I - 0x00C71C 03:870C: 00        .byte $00   ; 03
- D 0 - I - 0x00C71D 03:870D: 03        .byte $03   ; 04
- D 0 - I - 0x00C71E 03:870E: 00        .byte $00   ; 05
- D 0 - I - 0x00C71F 03:870F: 00        .byte $00   ; 06
- D 0 - I - 0x00C720 03:8710: 43        .byte $43   ; 07
- D 0 - I - 0x00C721 03:8711: 43        .byte $43   ; 08
- D 0 - I - 0x00C722 03:8712: 43        .byte $43   ; 09
- D 0 - I - 0x00C723 03:8713: 43        .byte $43   ; 0A



off_02_8714_02_spr_XY:
- D 0 - I - 0x00C724 03:8714: DE        .byte $DE, $1C   ; 01
- D 0 - I - 0x00C726 03:8716: E6        .byte $E6, $1C   ; 02
- D 0 - I - 0x00C728 03:8718: EE        .byte $EE, $1C   ; 03
- D 0 - I - 0x00C72A 03:871A: DE        .byte $DE, $14   ; 04
- D 0 - I - 0x00C72C 03:871C: E6        .byte $E6, $14   ; 05
- D 0 - I - 0x00C72E 03:871E: EE        .byte $EE, $14   ; 06
- D 0 - I - 0x00C730 03:8720: DC        .byte $DC, $0C   ; 07
- D 0 - I - 0x00C732 03:8722: E4        .byte $E4, $0C   ; 08
- D 0 - I - 0x00C734 03:8724: DC        .byte $DC, $04   ; 09
- D 0 - I - 0x00C736 03:8726: E4        .byte $E4, $04   ; 0A



_off030_8728_07:
- D 0 - I - 0x00C738 03:8728: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C73A 03:872A: 88 83     .word off_02_8388_00_spr_A
- D 0 - I - 0x00C73C 03:872C: 31 87     .word off_02_8731_01_spr_T
- D 0 - I - 0x00C73E 03:872E: 3B 87     .word off_02_873B_02_spr_XY
- D 0 - I - 0x00C740 03:8730: 00        .byte con_sub_00   ; 



off_02_8731_01_spr_T:
- D 0 - I - 0x00C741 03:8731: 80        .byte $80   ; 01
- D 0 - I - 0x00C742 03:8732: 81        .byte $81   ; 02
- D 0 - I - 0x00C743 03:8733: A2        .byte $A2   ; 03
- D 0 - I - 0x00C744 03:8734: 91        .byte $91   ; 04
- D 0 - I - 0x00C745 03:8735: A0        .byte $A0   ; 05
- D 0 - I - 0x00C746 03:8736: A1        .byte $A1   ; 06
- D 0 - I - 0x00C747 03:8737: E0        .byte $E0   ; 07
- D 0 - I - 0x00C748 03:8738: E1        .byte $E1   ; 08
- D 0 - I - 0x00C749 03:8739: F0        .byte $F0   ; 09
- D 0 - I - 0x00C74A 03:873A: F1        .byte $F1   ; 0A



off_02_873B_02_spr_XY:
- D 0 - I - 0x00C74B 03:873B: FE        .byte $FE, $24   ; 01
- D 0 - I - 0x00C74D 03:873D: 06        .byte $06, $24   ; 02
- D 0 - I - 0x00C74F 03:873F: FE        .byte $FE, $1C   ; 03
- D 0 - I - 0x00C751 03:8741: 06        .byte $06, $1C   ; 04
- D 0 - I - 0x00C753 03:8743: FD        .byte $FD, $14   ; 05
- D 0 - I - 0x00C755 03:8745: 05        .byte $05, $14   ; 06
- D 0 - I - 0x00C757 03:8747: FA        .byte $FA, $0C   ; 07
- D 0 - I - 0x00C759 03:8749: 02        .byte $02, $0C   ; 08
- D 0 - I - 0x00C75B 03:874B: FA        .byte $FA, $04   ; 09
- D 0 - I - 0x00C75D 03:874D: 02        .byte $02, $04   ; 0A



_off030_874F_08:
- D 0 - I - 0x00C75F 03:874F: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C761 03:8751: 88 83     .word off_02_8388_00_spr_A
- D 0 - I - 0x00C763 03:8753: 58 87     .word off_02_8758_01_spr_T
- D 0 - I - 0x00C765 03:8755: 62 87     .word off_02_8762_02_spr_XY
- D 0 - I - 0x00C767 03:8757: 00        .byte con_sub_00   ; 



off_02_8758_01_spr_T:
- D 0 - I - 0x00C768 03:8758: B2        .byte $B2   ; 01
- D 0 - I - 0x00C769 03:8759: B3        .byte $B3   ; 02
- D 0 - I - 0x00C76A 03:875A: C2        .byte $C2   ; 03
- D 0 - I - 0x00C76B 03:875B: 91        .byte $91   ; 04
- D 0 - I - 0x00C76C 03:875C: A0        .byte $A0   ; 05
- D 0 - I - 0x00C76D 03:875D: A1        .byte $A1   ; 06
- D 0 - I - 0x00C76E 03:875E: E0        .byte $E0   ; 07
- D 0 - I - 0x00C76F 03:875F: E1        .byte $E1   ; 08
- D 0 - I - 0x00C770 03:8760: F0        .byte $F0   ; 09
- D 0 - I - 0x00C771 03:8761: F1        .byte $F1   ; 0A



off_02_8762_02_spr_XY:
- D 0 - I - 0x00C772 03:8762: FF        .byte $FF, $24   ; 01
- D 0 - I - 0x00C774 03:8764: 07        .byte $07, $24   ; 02
- D 0 - I - 0x00C776 03:8766: FF        .byte $FF, $1C   ; 03
- D 0 - I - 0x00C778 03:8768: 07        .byte $07, $1C   ; 04
- D 0 - I - 0x00C77A 03:876A: FE        .byte $FE, $14   ; 05
- D 0 - I - 0x00C77C 03:876C: 06        .byte $06, $14   ; 06
- D 0 - I - 0x00C77E 03:876E: FB        .byte $FB, $0C   ; 07
- D 0 - I - 0x00C780 03:8770: 03        .byte $03, $0C   ; 08
- D 0 - I - 0x00C782 03:8772: FA        .byte $FA, $04   ; 09
- D 0 - I - 0x00C784 03:8774: 02        .byte $02, $04   ; 0A



_off030_8776_09:
- D 0 - I - 0x00C786 03:8776: 02        .byte con_sub_02, $0B   ; 
- D 0 - I - 0x00C788 03:8778: 87 83     .word off_02_8387_00_spr_A
- D 0 - I - 0x00C78A 03:877A: 7F 87     .word off_02_877F_01_spr_T
- D 0 - I - 0x00C78C 03:877C: 8A 87     .word off_02_878A_02_spr_XY
- D 0 - I - 0x00C78E 03:877E: 00        .byte con_sub_00   ; 



off_02_877F_01_spr_T:
- D 0 - I - 0x00C78F 03:877F: 80        .byte $80   ; 01
- D 0 - I - 0x00C790 03:8780: 81        .byte $81   ; 02
- D 0 - I - 0x00C791 03:8781: C6        .byte $C6   ; 03
- D 0 - I - 0x00C792 03:8782: D6        .byte $D6   ; 04
- D 0 - I - 0x00C793 03:8783: E5        .byte $E5   ; 05
- D 0 - I - 0x00C794 03:8784: A0        .byte $A0   ; 06
- D 0 - I - 0x00C795 03:8785: A1        .byte $A1   ; 07
- D 0 - I - 0x00C796 03:8786: 82        .byte $82   ; 08
- D 0 - I - 0x00C797 03:8787: 92        .byte $92   ; 09
- D 0 - I - 0x00C798 03:8788: F0        .byte $F0   ; 0A
- D 0 - I - 0x00C799 03:8789: F1        .byte $F1   ; 0B



off_02_878A_02_spr_XY:
- D 0 - I - 0x00C79A 03:878A: F9        .byte $F9, $21   ; 01
- D 0 - I - 0x00C79C 03:878C: 01        .byte $01, $21   ; 02
- D 0 - I - 0x00C79E 03:878E: F9        .byte $F9, $1B   ; 03
- D 0 - I - 0x00C7A0 03:8790: 01        .byte $01, $1B   ; 04
- D 0 - I - 0x00C7A2 03:8792: 09        .byte $09, $1B   ; 05
- D 0 - I - 0x00C7A4 03:8794: FD        .byte $FD, $13   ; 06
- D 0 - I - 0x00C7A6 03:8796: 05        .byte $05, $13   ; 07
- D 0 - I - 0x00C7A8 03:8798: FF        .byte $FF, $0B   ; 08
- D 0 - I - 0x00C7AA 03:879A: 07        .byte $07, $0B   ; 09
- D 0 - I - 0x00C7AC 03:879C: FB        .byte $FB, $04   ; 0A
- D 0 - I - 0x00C7AE 03:879E: 03        .byte $03, $04   ; 0B



sub_06_87A0_04:
- D 0 - I - 0x00C7B0 03:87A0: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C7B2 03:87A2: A9 87     .word off_02_87A9_00_spr_A
- D 0 - I - 0x00C7B4 03:87A4: 15 83     .word off_02_8315_01_spr_T
- D 0 - I - 0x00C7B6 03:87A6: 29 83     .word off_02_8329_02_spr_XY
- D 0 - I - 0x00C7B8 03:87A8: 00        .byte con_sub_00   ; 



off_02_87A9_00_spr_A:
- D 0 - I - 0x00C7B9 03:87A9: 43        .byte $43   ; 01
- D 0 - I - 0x00C7BA 03:87AA: 43        .byte $43   ; 02
- D 0 - I - 0x00C7BB 03:87AB: 43        .byte $43   ; 03
- D 0 - I - 0x00C7BC 03:87AC: 43        .byte $43   ; 04
- D 0 - I - 0x00C7BD 03:87AD: 43        .byte $43   ; 05
- D 0 - I - 0x00C7BE 03:87AE: 42        .byte $42   ; 06
- D 0 - I - 0x00C7BF 03:87AF: 42        .byte $42   ; 07
- D 0 - I - 0x00C7C0 03:87B0: 42        .byte $42   ; 08
- D 0 - I - 0x00C7C1 03:87B1: 43        .byte $43   ; 09
- D 0 - I - 0x00C7C2 03:87B2: 43        .byte $43   ; 0A



sub_06_87B3_04:
- D 0 - I - 0x00C7C3 03:87B3: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00C7C5 03:87B5: BC 87     .word off_02_87BC_00_spr_A
- D 0 - I - 0x00C7C7 03:87B7: 67 83     .word off_02_8367_01_spr_T
- D 0 - I - 0x00C7C9 03:87B9: 4E 83     .word off_02_834E_02_spr_XY
- D 0 - I - 0x00C7CB 03:87BB: 00        .byte con_sub_00   ; 



off_02_87BC_00_spr_A:
- D 0 - I - 0x00C7CC 03:87BC: 02        .byte $02   ; 01
- D 0 - I - 0x00C7CD 03:87BD: 03        .byte $03   ; 02
- D 0 - I - 0x00C7CE 03:87BE: 03        .byte $03   ; 03
- D 0 - I - 0x00C7CF 03:87BF: 42        .byte $42   ; 04
- D 0 - I - 0x00C7D0 03:87C0: 42        .byte $42   ; 05
- D 0 - I - 0x00C7D1 03:87C1: 03        .byte $03   ; 06
- D 0 - I - 0x00C7D2 03:87C2: 43        .byte $43   ; 07
- D 0 - I - 0x00C7D3 03:87C3: 43        .byte $43   ; 08



sub_06_87C4_04:
- D 0 - I - 0x00C7D4 03:87C4: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00C7D6 03:87C6: BC 87     .word off_02_87BC_00_spr_A
- D 0 - I - 0x00C7D8 03:87C8: 67 83     .word off_02_8367_01_spr_T
- D 0 - I - 0x00C7DA 03:87CA: 77 83     .word off_02_8377_02_spr_XY
- D 0 - I - 0x00C7DC 03:87CC: 00        .byte con_sub_00   ; 



_off030_87CD_0B:
- D 0 - I - 0x00C7DD 03:87CD: 02        .byte con_sub_02, $07   ; 
- D 0 - I - 0x00C7DF 03:87CF: D6 87     .word off_02_87D6_00_spr_A
- D 0 - I - 0x00C7E1 03:87D1: 9B 83     .word off_02_839B_01_spr_T
- D 0 - I - 0x00C7E3 03:87D3: A9 83     .word off_02_83A9_02_spr_XY
- D 0 - I - 0x00C7E5 03:87D5: 00        .byte con_sub_00   ; 



off_02_87D6_00_spr_A:
- D 0 - I - 0x00C7E6 03:87D6: 03        .byte $03   ; 01
- D 0 - I - 0x00C7E7 03:87D7: 03        .byte $03   ; 02
- D 0 - I - 0x00C7E8 03:87D8: 03        .byte $03   ; 03
- D 0 - I - 0x00C7E9 03:87D9: 02        .byte $02   ; 04
- D 0 - I - 0x00C7EA 03:87DA: 03        .byte $03   ; 05
- D 0 - I - 0x00C7EB 03:87DB: 03        .byte $03   ; 06
- D 0 - I - 0x00C7EC 03:87DC: 03        .byte $03   ; 07



_off030_87DD_0A:
- D 0 - I - 0x00C7ED 03:87DD: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00C7EF 03:87DF: EF 87     .word off_02_87EF_00_spr_A
- D 0 - I - 0x00C7F1 03:87E1: E6 87     .word off_02_87E6_01_spr_T
- D 0 - I - 0x00C7F3 03:87E3: D0 83     .word off_02_83D0_02_spr_XY
- D 0 - I - 0x00C7F5 03:87E5: 00        .byte con_sub_00   ; 



off_02_87E6_01_spr_T:
- D 0 - I - 0x00C7F6 03:87E6: 85        .byte $85   ; 01
- D 0 - I - 0x00C7F7 03:87E7: 83        .byte $83   ; 02
- D 0 - I - 0x00C7F8 03:87E8: E4        .byte $E4   ; 03
- D 0 - I - 0x00C7F9 03:87E9: A3        .byte $A3   ; 04
- D 0 - I - 0x00C7FA 03:87EA: A4        .byte $A4   ; 05
- D 0 - I - 0x00C7FB 03:87EB: 93        .byte $93   ; 06
- D 0 - I - 0x00C7FC 03:87EC: 94        .byte $94   ; 07
- D 0 - I - 0x00C7FD 03:87ED: 84        .byte $84   ; 08
- D 0 - I - 0x00C7FE 03:87EE: 86        .byte $86   ; 09



off_02_87EF_00_spr_A:
- D 0 - I - 0x00C7FF 03:87EF: 02        .byte $02   ; 01
- D 0 - I - 0x00C800 03:87F0: 02        .byte $02   ; 02
- D 0 - I - 0x00C801 03:87F1: 02        .byte $02   ; 03
- D 0 - I - 0x00C802 03:87F2: 02        .byte $02   ; 04
- D 0 - I - 0x00C803 03:87F3: 03        .byte $03   ; 05
- D 0 - I - 0x00C804 03:87F4: 03        .byte $03   ; 06
- D 0 - I - 0x00C805 03:87F5: 02        .byte $02   ; 07
- D 0 - I - 0x00C806 03:87F6: 03        .byte $03   ; 08
- D 0 - I - 0x00C807 03:87F7: 03        .byte $03   ; 09



sub_06_87F8_04:
- D 0 - I - 0x00C808 03:87F8: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C80A 03:87FA: 0B 88     .word off_02_880B_00_spr_A
- D 0 - I - 0x00C80C 03:87FC: 01 88     .word off_02_8801_01_spr_T
- D 0 - I - 0x00C80E 03:87FE: 15 88     .word off_02_8815_02_spr_XY
- D 0 - I - 0x00C810 03:8800: 00        .byte con_sub_00   ; 



off_02_8801_01_spr_T:
- D 0 - I - 0x00C811 03:8801: 81        .byte $81   ; 01
- D 0 - I - 0x00C812 03:8802: 80        .byte $80   ; 02
- D 0 - I - 0x00C813 03:8803: 91        .byte $91   ; 03
- D 0 - I - 0x00C814 03:8804: A2        .byte $A2   ; 04
- D 0 - I - 0x00C815 03:8805: D4        .byte $D4   ; 05
- D 0 - I - 0x00C816 03:8806: D5        .byte $D5   ; 06
- D 0 - I - 0x00C817 03:8807: E1        .byte $E1   ; 07
- D 0 - I - 0x00C818 03:8808: E0        .byte $E0   ; 08
- D 0 - I - 0x00C819 03:8809: F1        .byte $F1   ; 09
- D 0 - I - 0x00C81A 03:880A: F0        .byte $F0   ; 0A



off_02_880B_00_spr_A:
- D 0 - I - 0x00C81B 03:880B: 43        .byte $43   ; 01
- D 0 - I - 0x00C81C 03:880C: 43        .byte $43   ; 02
- D 0 - I - 0x00C81D 03:880D: 43        .byte $43   ; 03
- D 0 - I - 0x00C81E 03:880E: 43        .byte $43   ; 04
- D 0 - I - 0x00C81F 03:880F: 03        .byte $03   ; 05
- D 0 - I - 0x00C820 03:8810: 02        .byte $02   ; 06
- D 0 - I - 0x00C821 03:8811: 42        .byte $42   ; 07
- D 0 - I - 0x00C822 03:8812: 42        .byte $42   ; 08
- D 0 - I - 0x00C823 03:8813: 43        .byte $43   ; 09
- D 0 - I - 0x00C824 03:8814: 43        .byte $43   ; 0A



off_02_8815_02_spr_XY:
- D 0 - I - 0x00C825 03:8815: F4        .byte $F4, $24   ; 01
- D 0 - I - 0x00C827 03:8817: FC        .byte $FC, $24   ; 02
- D 0 - I - 0x00C829 03:8819: F4        .byte $F4, $1C   ; 03
- D 0 - I - 0x00C82B 03:881B: FC        .byte $FC, $1C   ; 04
- D 0 - I - 0x00C82D 03:881D: F3        .byte $F3, $14   ; 05
- D 0 - I - 0x00C82F 03:881F: FB        .byte $FB, $14   ; 06
- D 0 - I - 0x00C831 03:8821: F2        .byte $F2, $0C   ; 07
- D 0 - I - 0x00C833 03:8823: FA        .byte $FA, $0C   ; 08
- D 0 - I - 0x00C835 03:8825: F3        .byte $F3, $04   ; 09
- D 0 - I - 0x00C837 03:8827: FB        .byte $FB, $04   ; 0A



sub_06_8829_04:
- D 0 - I - 0x00C839 03:8829: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C83B 03:882B: 0B 88     .word off_02_880B_00_spr_A
- D 0 - I - 0x00C83D 03:882D: 01 88     .word off_02_8801_01_spr_T
- D 0 - I - 0x00C83F 03:882F: 32 88     .word off_02_8832_02_spr_XY
- D 0 - I - 0x00C841 03:8831: 00        .byte con_sub_00   ; 






off_02_8832_02_spr_XY:
- D 0 - I - 0x00C842 03:8832: F9        .byte $F9, $24   ; 01
- D 0 - I - 0x00C844 03:8834: 01        .byte $01, $24   ; 02
- D 0 - I - 0x00C846 03:8836: F7        .byte $F7, $1C   ; 03
- D 0 - I - 0x00C848 03:8838: FF        .byte $FF, $1C   ; 04
- D 0 - I - 0x00C84A 03:883A: F6        .byte $F6, $14   ; 05
- D 0 - I - 0x00C84C 03:883C: FE        .byte $FE, $14   ; 06
- D 0 - I - 0x00C84E 03:883E: F5        .byte $F5, $0C   ; 07
- D 0 - I - 0x00C850 03:8840: FD        .byte $FD, $0C   ; 08
- D 0 - I - 0x00C852 03:8842: F5        .byte $F5, $04   ; 09
- D 0 - I - 0x00C854 03:8844: FD        .byte $FD, $04   ; 0A



_off030_8846_18:
- D 0 - I - 0x00C856 03:8846: 02        .byte con_sub_02, $07   ; 
- D 0 - I - 0x00C858 03:8848: 4F 88     .word off_02_884F_00_spr_A
- D 0 - I - 0x00C85A 03:884A: 9B 83     .word off_02_839B_01_spr_T
- D 0 - I - 0x00C85C 03:884C: A0 84     .word off_02_84A0_02_spr_XY
- D 0 - I - 0x00C85E 03:884E: 00        .byte con_sub_00   ; 



off_02_884F_00_spr_A:
- D 0 - I - 0x00C85F 03:884F: 83        .byte $83   ; 01
- D 0 - I - 0x00C860 03:8850: 83        .byte $83   ; 02
- D 0 - I - 0x00C861 03:8851: 83        .byte $83   ; 03
- D 0 - I - 0x00C862 03:8852: 82        .byte $82   ; 04
- D 0 - I - 0x00C863 03:8853: 83        .byte $83   ; 05
- D 0 - I - 0x00C864 03:8854: 83        .byte $83   ; 06
- D 0 - I - 0x00C865 03:8855: 83        .byte $83   ; 07



_off030_8856_19:
- D 0 - I - 0x00C866 03:8856: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00C868 03:8858: 67 88     .word off_02_8867_00_spr_A
- D 0 - I - 0x00C86A 03:885A: 5F 88     .word off_02_885F_01_spr_T
- D 0 - I - 0x00C86C 03:885C: 6F 88     .word off_02_886F_02_spr_XY
- D 0 - I - 0x00C86E 03:885E: 00        .byte con_sub_00   ; 



off_02_885F_01_spr_T:
- D 0 - I - 0x00C86F 03:885F: C0        .byte $C0   ; 01
- D 0 - I - 0x00C870 03:8860: F2        .byte $F2   ; 02
- D 0 - I - 0x00C871 03:8861: F3        .byte $F3   ; 03
- D 0 - I - 0x00C872 03:8862: A1        .byte $A1   ; 04
- D 0 - I - 0x00C873 03:8863: 90        .byte $90   ; 05
- D 0 - I - 0x00C874 03:8864: 91        .byte $91   ; 06
- D 0 - I - 0x00C875 03:8865: 80        .byte $80   ; 07
- D 0 - I - 0x00C876 03:8866: 81        .byte $81   ; 08



off_02_8867_00_spr_A:
- D 0 - I - 0x00C877 03:8867: 83        .byte $83   ; 01
- D 0 - I - 0x00C878 03:8868: 83        .byte $83   ; 02
- D 0 - I - 0x00C879 03:8869: 82        .byte $82   ; 03
- D 0 - I - 0x00C87A 03:886A: 83        .byte $83   ; 04
- D 0 - I - 0x00C87B 03:886B: 83        .byte $83   ; 05
- D 0 - I - 0x00C87C 03:886C: 83        .byte $83   ; 06
- D 0 - I - 0x00C87D 03:886D: 83        .byte $83   ; 07
- D 0 - I - 0x00C87E 03:886E: 83        .byte $83   ; 08



off_02_886F_02_spr_XY:
- D 0 - I - 0x00C87F 03:886F: FC        .byte $FC, $1B   ; 01
- D 0 - I - 0x00C881 03:8871: F4        .byte $F4, $14   ; 02
- D 0 - I - 0x00C883 03:8873: FC        .byte $FC, $14   ; 03
- D 0 - I - 0x00C885 03:8875: 04        .byte $04, $14   ; 04
- D 0 - I - 0x00C887 03:8877: FC        .byte $FC, $0C   ; 05
- D 0 - I - 0x00C889 03:8879: 04        .byte $04, $0C   ; 06
- D 0 - I - 0x00C88B 03:887B: FC        .byte $FC, $04   ; 07
- D 0 - I - 0x00C88D 03:887D: 04        .byte $04, $04   ; 08



_off030_887F_05:
- D 0 - I - 0x00C88F 03:887F: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00C891 03:8881: CA 88     .word off_02_88CA_00_spr_A
- D 0 - I - 0x00C893 03:8883: 94 88     .word off_02_8894_01_spr_T
- D 0 - I - 0x00C895 03:8885: F5 85     .word off_02_85F5_02_spr_XY
- D 0 - I - 0x00C897 03:8887: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00C899 03:8889: 00 00     .word $0000 ; 00
- - - - - - 0x00C89B 03:888B: 8C BD     .word sub_06_BD8C_01
- - - - - - 0x00C89D 03:888D: 00 00     .word $0000 ; 02
- - - - - - 0x00C89F 03:888F: 00 00     .word $0000 ; 03
- - - - - - 0x00C8A1 03:8891: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00C8A3 03:8893: 00        .byte con_sub_00   ; 



off_02_8894_01_spr_T:
- D 0 - I - 0x00C8A4 03:8894: 80        .byte $80   ; 01
- D 0 - I - 0x00C8A5 03:8895: 81        .byte $81   ; 02
- D 0 - I - 0x00C8A6 03:8896: 90        .byte $90   ; 03
- D 0 - I - 0x00C8A7 03:8897: 91        .byte $91   ; 04
- D 0 - I - 0x00C8A8 03:8898: E8        .byte $E8   ; 05
- D 0 - I - 0x00C8A9 03:8899: A1        .byte $A1   ; 06
- D 0 - I - 0x00C8AA 03:889A: F8        .byte $F8   ; 07
- D 0 - I - 0x00C8AB 03:889B: D9        .byte $D9   ; 08
- D 0 - I - 0x00C8AC 03:889C: F7        .byte $F7   ; 09



_off030_889D_06:
- D 0 - I - 0x00C8AD 03:889D: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00C8AF 03:889F: AC 88     .word off_02_88AC_00_spr_A
- D 0 - I - 0x00C8B1 03:88A1: 41 86     .word off_02_8641_01_spr_T
- D 0 - I - 0x00C8B3 03:88A3: 53 86     .word off_02_8653_02_spr_XY
- D 0 - I - 0x00C8B5 03:88A5: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00C8B7 03:88A7: 00 00     .word $0000 ; 00
- D 0 - I - 0x00C8B9 03:88A9: 9B BD     .word sub_06_BD9B_01
@end:
- D 0 - I - 0x00C8BB 03:88AB: 00        .byte con_sub_00   ; 



off_02_88AC_00_spr_A:
- D 0 - I - 0x00C8BC 03:88AC: 03        .byte $03   ; 01
- D 0 - I - 0x00C8BD 03:88AD: 03        .byte $03   ; 02
- D 0 - I - 0x00C8BE 03:88AE: 03        .byte $03   ; 03
- D 0 - I - 0x00C8BF 03:88AF: 03        .byte $03   ; 04
- D 0 - I - 0x00C8C0 03:88B0: 02        .byte $02   ; 05
- D 0 - I - 0x00C8C1 03:88B1: 03        .byte $03   ; 06
- D 0 - I - 0x00C8C2 03:88B2: 03        .byte $03   ; 07
- D 0 - I - 0x00C8C3 03:88B3: 02        .byte $02   ; 08
- D 0 - I - 0x00C8C4 03:88B4: 02        .byte $02   ; 09



_off030_88B5_00:
- D 0 - I - 0x00C8C5 03:88B5: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C8C7 03:88B7: CA 88     .word off_02_88CA_00_spr_A
- D 0 - I - 0x00C8C9 03:88B9: EB 83     .word off_02_83EB_01_spr_T
- D 0 - I - 0x00C8CB 03:88BB: F5 83     .word off_02_83F5_02_spr_XY
- D 0 - I - 0x00C8CD 03:88BD: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00C8CF 03:88BF: 00 00     .word $0000 ; 00
- D 0 - I - 0x00C8D1 03:88C1: 6B BD     .word sub_06_BD6B_01
- - - - - - 0x00C8D3 03:88C3: 00 00     .word $0000 ; 02
- - - - - - 0x00C8D5 03:88C5: 00 00     .word $0000 ; 03
- - - - - - 0x00C8D7 03:88C7: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00C8D9 03:88C9: 00        .byte con_sub_00   ; 



off_02_88CA_00_spr_A:
- D 0 - I - 0x00C8DA 03:88CA: 03        .byte $03   ; 01
- D 0 - I - 0x00C8DB 03:88CB: 03        .byte $03   ; 02
- D 0 - I - 0x00C8DC 03:88CC: 03        .byte $03   ; 03
- D 0 - I - 0x00C8DD 03:88CD: 03        .byte $03   ; 04
- D 0 - I - 0x00C8DE 03:88CE: 02        .byte $02   ; 05
- D 0 - I - 0x00C8DF 03:88CF: 03        .byte $03   ; 06
- D 0 - I - 0x00C8E0 03:88D0: 02        .byte $02   ; 07
- D 0 - I - 0x00C8E1 03:88D1: 02        .byte $02   ; 08
- D 0 - I - 0x00C8E2 03:88D2: 03        .byte $03   ; 09
- D 0 - I - 0x00C8E3 03:88D3: 03        .byte $03   ; 0A



_off030_88D4_01:
- D 0 - I - 0x00C8E4 03:88D4: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C8E6 03:88D6: CA 88     .word off_02_88CA_00_spr_A
- D 0 - I - 0x00C8E8 03:88D8: 12 84     .word off_02_8412_01_spr_T
- D 0 - I - 0x00C8EA 03:88DA: 1C 84     .word off_02_841C_02_spr_XY
- D 0 - I - 0x00C8EC 03:88DC: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00C8EE 03:88DE: 00 00     .word $0000 ; 00
- D 0 - I - 0x00C8F0 03:88E0: 7D BD     .word sub_06_BD7D_01
- - - - - - 0x00C8F2 03:88E2: 00 00     .word $0000 ; 02
- - - - - - 0x00C8F4 03:88E4: 00 00     .word $0000 ; 03
- - - - - - 0x00C8F6 03:88E6: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00C8F8 03:88E8: 00        .byte con_sub_00   ; 



_off030_88E9_02:
- D 0 - I - 0x00C8F9 03:88E9: 02        .byte con_sub_02, $06   ; 
- D 0 - I - 0x00C8FB 03:88EB: CA 88     .word off_02_88CA_00_spr_A
- D 0 - I - 0x00C8FD 03:88ED: FB 88     .word off_02_88FB_01_spr_T
- D 0 - I - 0x00C8FF 03:88EF: 01 89     .word off_02_8901_02_spr_XY
- D 0 - I - 0x00C901 03:88F1: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00C902 03:88F2: 35 8B     .word sub_05_8B35
- D 0 - I - 0x00C904 03:88F4: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00C906 03:88F6: 00 00     .word $0000 ; 00
- D 0 - I - 0x00C908 03:88F8: 6B BD     .word sub_06_BD6B_01
@end:
- D 0 - I - 0x00C90A 03:88FA: 00        .byte con_sub_00   ; 



off_02_88FB_01_spr_T:
- D 0 - I - 0x00C90B 03:88FB: 80        .byte $80   ; 01
- D 0 - I - 0x00C90C 03:88FC: 81        .byte $81   ; 02
- D 0 - I - 0x00C90D 03:88FD: 90        .byte $90   ; 03
- D 0 - I - 0x00C90E 03:88FE: 91        .byte $91   ; 04
- D 0 - I - 0x00C90F 03:88FF: A0        .byte $A0   ; 05
- D 0 - I - 0x00C910 03:8900: A1        .byte $A1   ; 06



off_02_8901_02_spr_XY:
- D 0 - I - 0x00C911 03:8901: FB        .byte $FB, $24   ; 01
- D 0 - I - 0x00C913 03:8903: 03        .byte $03, $24   ; 02
- D 0 - I - 0x00C915 03:8905: FB        .byte $FB, $1C   ; 03
- D 0 - I - 0x00C917 03:8907: 03        .byte $03, $1C   ; 04
- D 0 - I - 0x00C919 03:8909: FC        .byte $FC, $14   ; 05
- D 0 - I - 0x00C91B 03:890B: 04        .byte $04, $14   ; 06



_off030_890D_07:
- D 0 - I - 0x00C91D 03:890D: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C91F 03:890F: CA 88     .word off_02_88CA_00_spr_A
- D 0 - I - 0x00C921 03:8911: 12 84     .word off_02_8412_01_spr_T
- D 0 - I - 0x00C923 03:8913: 3B 87     .word off_02_873B_02_spr_XY
- D 0 - I - 0x00C925 03:8915: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00C927 03:8917: 00 00     .word $0000 ; 00
- D 0 - I - 0x00C929 03:8919: B0 BD     .word sub_06_BDB0_01
- - - - - - 0x00C92B 03:891B: 00 00     .word $0000 ; 02
- - - - - - 0x00C92D 03:891D: 00 00     .word $0000 ; 03
- - - - - - 0x00C92F 03:891F: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00C931 03:8921: 00        .byte con_sub_00   ; 



_off030_8922_08:
- D 0 - I - 0x00C932 03:8922: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C934 03:8924: CA 88     .word off_02_88CA_00_spr_A
- D 0 - I - 0x00C936 03:8926: 37 89     .word off_02_8937_01_spr_T
- D 0 - I - 0x00C938 03:8928: 62 87     .word off_02_8762_02_spr_XY
- D 0 - I - 0x00C93A 03:892A: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00C93C 03:892C: 00 00     .word $0000 ; 00
- D 0 - I - 0x00C93E 03:892E: 1D BE     .word sub_06_BE1D_01
- - - - - - 0x00C940 03:8930: 00 00     .word $0000 ; 02
- - - - - - 0x00C942 03:8932: 00 00     .word $0000 ; 03
- - - - - - 0x00C944 03:8934: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00C946 03:8936: 00        .byte con_sub_00   ; 



off_02_8937_01_spr_T:
- D 0 - I - 0x00C947 03:8937: B2        .byte $B2   ; 01
- D 0 - I - 0x00C948 03:8938: B3        .byte $B3   ; 02
- D 0 - I - 0x00C949 03:8939: C2        .byte $C2   ; 03
- D 0 - I - 0x00C94A 03:893A: 91        .byte $91   ; 04
- D 0 - I - 0x00C94B 03:893B: A0        .byte $A0   ; 05
- D 0 - I - 0x00C94C 03:893C: A1        .byte $A1   ; 06
- D 0 - I - 0x00C94D 03:893D: E0        .byte $E0   ; 07
- D 0 - I - 0x00C94E 03:893E: E1        .byte $E1   ; 08
- D 0 - I - 0x00C94F 03:893F: F0        .byte $F0   ; 09
- D 0 - I - 0x00C950 03:8940: F1        .byte $F1   ; 0A



_off030_8941_09:
- D 0 - I - 0x00C951 03:8941: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00C953 03:8943: 60 89     .word off_02_8960_00_spr_A
- D 0 - I - 0x00C955 03:8945: 56 89     .word off_02_8956_01_spr_T
- D 0 - I - 0x00C957 03:8947: 6A 89     .word off_02_896A_02_spr_XY
- D 0 - I - 0x00C959 03:8949: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00C95B 03:894B: 00 00     .word $0000 ; 00
- D 0 - I - 0x00C95D 03:894D: B9 BD     .word sub_06_BDB9_01
- - - - - - 0x00C95F 03:894F: 00 00     .word $0000 ; 02
- - - - - - 0x00C961 03:8951: 00 00     .word $0000 ; 03
- - - - - - 0x00C963 03:8953: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00C965 03:8955: 00        .byte con_sub_00   ; 



off_02_8956_01_spr_T:
- D 0 - I - 0x00C966 03:8956: 80        .byte $80   ; 01
- D 0 - I - 0x00C967 03:8957: 81        .byte $81   ; 02
- D 0 - I - 0x00C968 03:8958: A2        .byte $A2   ; 03
- D 0 - I - 0x00C969 03:8959: 91        .byte $91   ; 04
- D 0 - I - 0x00C96A 03:895A: C6        .byte $C6   ; 05
- D 0 - I - 0x00C96B 03:895B: B9        .byte $B9   ; 06
- D 0 - I - 0x00C96C 03:895C: 82        .byte $82   ; 07
- D 0 - I - 0x00C96D 03:895D: 92        .byte $92   ; 08
- D 0 - I - 0x00C96E 03:895E: F0        .byte $F0   ; 09
- D 0 - I - 0x00C96F 03:895F: F1        .byte $F1   ; 0A



off_02_8960_00_spr_A:
- D 0 - I - 0x00C970 03:8960: 00        .byte $00   ; 01
- D 0 - I - 0x00C971 03:8961: 00        .byte $00   ; 02
- D 0 - I - 0x00C972 03:8962: 00        .byte $00   ; 03
- D 0 - I - 0x00C973 03:8963: 00        .byte $00   ; 04
- D 0 - I - 0x00C974 03:8964: 00        .byte $00   ; 05
- D 0 - I - 0x00C975 03:8965: 00        .byte $00   ; 06
- D 0 - I - 0x00C976 03:8966: 02        .byte $02   ; 07
- D 0 - I - 0x00C977 03:8967: 02        .byte $02   ; 08
- D 0 - I - 0x00C978 03:8968: 03        .byte $03   ; 09
- D 0 - I - 0x00C979 03:8969: 03        .byte $03   ; 0A



off_02_896A_02_spr_XY:
- D 0 - I - 0x00C97A 03:896A: F6        .byte $F6, $22   ; 01
- D 0 - I - 0x00C97C 03:896C: FE        .byte $FE, $22   ; 02
- D 0 - I - 0x00C97E 03:896E: F6        .byte $F6, $1A   ; 03
- D 0 - I - 0x00C980 03:8970: FE        .byte $FE, $1A   ; 04
- D 0 - I - 0x00C982 03:8972: F8        .byte $F8, $12   ; 05
- D 0 - I - 0x00C984 03:8974: 00        .byte $00, $12   ; 06
- D 0 - I - 0x00C986 03:8976: FA        .byte $FA, $0A   ; 07
- D 0 - I - 0x00C988 03:8978: 02        .byte $02, $0A   ; 08
- D 0 - I - 0x00C98A 03:897A: F8        .byte $F8, $04   ; 09
- D 0 - I - 0x00C98C 03:897C: 00        .byte $00, $04   ; 0A



_off030_897E_10:
- D 0 - I - 0x00C98E 03:897E: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00C98F 03:897F: C0 89     .word sub_05_89C0
- D 0 - I - 0x00C991 03:8981: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- - - - - - 0x00C993 03:8983: 00 00     .word $0000 ; 00
- - - - - - 0x00C995 03:8985: C8 BD     .word sub_06_BDC8_01
- - - - - - 0x00C997 03:8987: 00 00     .word $0000 ; 02
- - - - - - 0x00C999 03:8989: 13 BE     .word sub_06_BE13_03
- - - - - - 0x00C99B 03:898B: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00C99D 03:898D: 00        .byte con_sub_00   ; 


; bzk garbage
- - - - - - 0x00C99E 03:898E: 00        .byte $00   ; 



_off030_898F_11:
- D 0 - I - 0x00C99F 03:898F: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00C9A0 03:8990: C0 89     .word sub_05_89C0
- D 0 - I - 0x00C9A2 03:8992: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- - - - - - 0x00C9A4 03:8994: 00 00     .word $0000 ; 00
- D 0 - I - 0x00C9A6 03:8996: E0 BD     .word sub_06_BDE0_01
- - - - - - 0x00C9A8 03:8998: 00 00     .word $0000 ; 02
- - - - - - 0x00C9AA 03:899A: 00 00     .word $0000 ; 03
- - - - - - 0x00C9AC 03:899C: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00C9AE 03:899E: 00        .byte con_sub_00   ; 



_off030_899F_12:
- D 0 - I - 0x00C9AF 03:899F: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00C9B0 03:89A0: EC 89     .word sub_05_89EC
- D 0 - I - 0x00C9B2 03:89A2: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- - - - - - 0x00C9B4 03:89A4: 00 00     .word $0000 ; 00
- D 0 - I - 0x00C9B6 03:89A6: F4 BD     .word sub_06_BDF4_01
- - - - - - 0x00C9B8 03:89A8: 00 00     .word $0000 ; 02
- - - - - - 0x00C9BA 03:89AA: 00 00     .word $0000 ; 03
- - - - - - 0x00C9BC 03:89AC: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00C9BE 03:89AE: 00        .byte con_sub_00   ; 



_off030_89AF_13:
- D 0 - I - 0x00C9BF 03:89AF: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00C9C0 03:89B0: EC 89     .word sub_05_89EC
- D 0 - I - 0x00C9C2 03:89B2: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- - - - - - 0x00C9C4 03:89B4: 00 00     .word $0000 ; 00
- D 0 - I - 0x00C9C6 03:89B6: 02 BE     .word sub_06_BE02_01
- - - - - - 0x00C9C8 03:89B8: 00 00     .word $0000 ; 02
- - - - - - 0x00C9CA 03:89BA: 00 00     .word $0000 ; 03
- - - - - - 0x00C9CC 03:89BC: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00C9CE 03:89BE: 00        .byte con_sub_00   ; 


; bzk garbage
- - - - - - 0x00C9CF 03:89BF: 00        .byte $00   ; 



sub_05_89C0:
- D 0 - I - 0x00C9D0 03:89C0: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00C9D2 03:89C2: D4 89     .word off_02_89D4_00_spr_A
- D 0 - I - 0x00C9D4 03:89C4: CC 89     .word off_02_89CC_01_spr_T
- D 0 - I - 0x00C9D6 03:89C6: DC 89     .word off_02_89DC_02_spr_XY
- D 0 - I - 0x00C9D8 03:89C8: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00C9D9 03:89C9: 35 8B     .word sub_05_8B35
- D 0 - I - 0x00C9DB 03:89CB: 00        .byte con_sub_00   ; 



off_02_89CC_01_spr_T:
- D 0 - I - 0x00C9DC 03:89CC: 80        .byte $80   ; 01
- D 0 - I - 0x00C9DD 03:89CD: 81        .byte $81   ; 02
- D 0 - I - 0x00C9DE 03:89CE: CA        .byte $CA   ; 03
- D 0 - I - 0x00C9DF 03:89CF: 95        .byte $95   ; 04
- D 0 - I - 0x00C9E0 03:89D0: B8        .byte $B8   ; 05
- D 0 - I - 0x00C9E1 03:89D1: DA        .byte $DA   ; 06
- D 0 - I - 0x00C9E2 03:89D2: A1        .byte $A1   ; 07
- D 0 - I - 0x00C9E3 03:89D3: 98        .byte $98   ; 08



off_02_89D4_00_spr_A:
- D 0 - I - 0x00C9E4 03:89D4: 03        .byte $03   ; 01
- D 0 - I - 0x00C9E5 03:89D5: 03        .byte $03   ; 02
- D 0 - I - 0x00C9E6 03:89D6: 03        .byte $03   ; 03
- D 0 - I - 0x00C9E7 03:89D7: 03        .byte $03   ; 04
- D 0 - I - 0x00C9E8 03:89D8: 03        .byte $03   ; 05
- D 0 - I - 0x00C9E9 03:89D9: 03        .byte $03   ; 06
- D 0 - I - 0x00C9EA 03:89DA: 43        .byte $43   ; 07
- D 0 - I - 0x00C9EB 03:89DB: 02        .byte $02   ; 08



off_02_89DC_02_spr_XY:
- D 0 - I - 0x00C9EC 03:89DC: FD        .byte $FD, $23   ; 01
- D 0 - I - 0x00C9EE 03:89DE: 05        .byte $05, $23   ; 02
- D 0 - I - 0x00C9F0 03:89E0: 0C        .byte $0C, $23   ; 03
- D 0 - I - 0x00C9F2 03:89E2: FD        .byte $FD, $1B   ; 04
- D 0 - I - 0x00C9F4 03:89E4: 05        .byte $05, $1B   ; 05
- D 0 - I - 0x00C9F6 03:89E6: 0D        .byte $0D, $1B   ; 06
- D 0 - I - 0x00C9F8 03:89E8: FC        .byte $FC, $13   ; 07
- D 0 - I - 0x00C9FA 03:89EA: 04        .byte $04, $13   ; 08



sub_05_89EC:
- D 0 - I - 0x00C9FC 03:89EC: 02        .byte con_sub_02, $07   ; 
- D 0 - I - 0x00C9FE 03:89EE: 5B A7     .word off_02_A75B_00_spr_A
- D 0 - I - 0x00CA00 03:89F0: F8 89     .word off_02_89F8_01_spr_T
- D 0 - I - 0x00CA02 03:89F2: FF 89     .word off_02_89FF_02_spr_XY
- D 0 - I - 0x00CA04 03:89F4: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00CA05 03:89F5: 35 8B     .word sub_05_8B35
- D 0 - I - 0x00CA07 03:89F7: 00        .byte con_sub_00   ; 



off_02_89F8_01_spr_T:
- D 0 - I - 0x00CA08 03:89F8: 80        .byte $80   ; 01
- D 0 - I - 0x00CA09 03:89F9: 81        .byte $81   ; 02
- D 0 - I - 0x00CA0A 03:89FA: A5        .byte $A5   ; 03
- D 0 - I - 0x00CA0B 03:89FB: C8        .byte $C8   ; 04
- D 0 - I - 0x00CA0C 03:89FC: 96        .byte $96   ; 05
- D 0 - I - 0x00CA0D 03:89FD: BA        .byte $BA   ; 06
- D 0 - I - 0x00CA0E 03:89FE: D8        .byte $D8   ; 07



off_02_89FF_02_spr_XY:
- D 0 - I - 0x00CA0F 03:89FF: F8        .byte $F8, $23   ; 01
- D 0 - I - 0x00CA11 03:8A01: 00        .byte $00, $23   ; 02
- D 0 - I - 0x00CA13 03:8A03: FC        .byte $FC, $1B   ; 03
- D 0 - I - 0x00CA15 03:8A05: 04        .byte $04, $1B   ; 04
- D 0 - I - 0x00CA17 03:8A07: F4        .byte $F4, $13   ; 05
- D 0 - I - 0x00CA19 03:8A09: FC        .byte $FC, $13   ; 06
- D 0 - I - 0x00CA1B 03:8A0B: 04        .byte $04, $13   ; 07



_off030_8A0D_15:
_off030_8A0D_17:
- D 0 - I - 0x00CA1D 03:8A0D: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00CA1F 03:8A0F: 1F 8A     .word off_02_8A1F_00_spr_A
- D 0 - I - 0x00CA21 03:8A11: 16 8A     .word off_02_8A16_01_spr_T
- D 0 - I - 0x00CA23 03:8A13: 28 8A     .word off_02_8A28_02_spr_XY
- D 0 - I - 0x00CA25 03:8A15: 00        .byte con_sub_00   ; 



off_02_8A16_01_spr_T:
- D 0 - I - 0x00CA26 03:8A16: 81        .byte $81   ; 01
- D 0 - I - 0x00CA27 03:8A17: 80        .byte $80   ; 02
- D 0 - I - 0x00CA28 03:8A18: 91        .byte $91   ; 03
- D 0 - I - 0x00CA29 03:8A19: 90        .byte $90   ; 04
- D 0 - I - 0x00CA2A 03:8A1A: A1        .byte $A1   ; 05
- D 0 - I - 0x00CA2B 03:8A1B: E8        .byte $E8   ; 06
- D 0 - I - 0x00CA2C 03:8A1C: C4        .byte $C4   ; 07
- D 0 - I - 0x00CA2D 03:8A1D: C5        .byte $C5   ; 08
- D 0 - I - 0x00CA2E 03:8A1E: C0        .byte $C0   ; 09



off_02_8A1F_00_spr_A:
- D 0 - I - 0x00CA2F 03:8A1F: 43        .byte $43   ; 01
- D 0 - I - 0x00CA30 03:8A20: 43        .byte $43   ; 02
- D 0 - I - 0x00CA31 03:8A21: 43        .byte $43   ; 03
- D 0 - I - 0x00CA32 03:8A22: 43        .byte $43   ; 04
- D 0 - I - 0x00CA33 03:8A23: 43        .byte $43   ; 05
- D 0 - I - 0x00CA34 03:8A24: 42        .byte $42   ; 06
- D 0 - I - 0x00CA35 03:8A25: 03        .byte $03   ; 07
- D 0 - I - 0x00CA36 03:8A26: 02        .byte $02   ; 08
- D 0 - I - 0x00CA37 03:8A27: 43        .byte $43   ; 09



off_02_8A28_02_spr_XY:
- D 0 - I - 0x00CA38 03:8A28: FE        .byte $FE, $24   ; 01
- D 0 - I - 0x00CA3A 03:8A2A: 06        .byte $06, $24   ; 02
- D 0 - I - 0x00CA3C 03:8A2C: FE        .byte $FE, $1C   ; 03
- D 0 - I - 0x00CA3E 03:8A2E: 06        .byte $06, $1C   ; 04
- D 0 - I - 0x00CA40 03:8A30: FD        .byte $FD, $14   ; 05
- D 0 - I - 0x00CA42 03:8A32: 05        .byte $05, $14   ; 06
- D 0 - I - 0x00CA44 03:8A34: FF        .byte $FF, $0C   ; 07
- D 0 - I - 0x00CA46 03:8A36: 07        .byte $07, $0C   ; 08
- D 0 - I - 0x00CA48 03:8A38: 00        .byte $00, $04   ; 09



_off030_8A3A_16:
- D 0 - I - 0x00CA4A 03:8A3A: 02        .byte con_sub_02, $0B   ; 
- D 0 - I - 0x00CA4C 03:8A3C: 4E 8A     .word off_02_8A4E_00_spr_A
- D 0 - I - 0x00CA4E 03:8A3E: 43 8A     .word off_02_8A43_01_spr_T
- D 0 - I - 0x00CA50 03:8A40: 59 8A     .word off_02_8A59_02_spr_XY
- D 0 - I - 0x00CA52 03:8A42: 00        .byte con_sub_00   ; 



off_02_8A43_01_spr_T:
- D 0 - I - 0x00CA53 03:8A43: 8B        .byte $8B   ; 01
- D 0 - I - 0x00CA54 03:8A44: AA        .byte $AA   ; 02
- D 0 - I - 0x00CA55 03:8A45: 88        .byte $88   ; 03
- D 0 - I - 0x00CA56 03:8A46: 97        .byte $97   ; 04
- D 0 - I - 0x00CA57 03:8A47: 89        .byte $89   ; 05
- D 0 - I - 0x00CA58 03:8A48: A9        .byte $A9   ; 06
- D 0 - I - 0x00CA59 03:8A49: A6        .byte $A6   ; 07
- D 0 - I - 0x00CA5A 03:8A4A: A7        .byte $A7   ; 08
- D 0 - I - 0x00CA5B 03:8A4B: 99        .byte $99   ; 09
- D 0 - I - 0x00CA5C 03:8A4C: A8        .byte $A8   ; 0A
- D 0 - I - 0x00CA5D 03:8A4D: C0        .byte $C0   ; 0B



off_02_8A4E_00_spr_A:
- D 0 - I - 0x00CA5E 03:8A4E: 03        .byte $03   ; 01
- D 0 - I - 0x00CA5F 03:8A4F: 02        .byte $02   ; 02
- D 0 - I - 0x00CA60 03:8A50: 02        .byte $02   ; 03
- D 0 - I - 0x00CA61 03:8A51: 03        .byte $03   ; 04
- D 0 - I - 0x00CA62 03:8A52: 03        .byte $03   ; 05
- D 0 - I - 0x00CA63 03:8A53: 02        .byte $02   ; 06
- D 0 - I - 0x00CA64 03:8A54: 02        .byte $02   ; 07
- D 0 - I - 0x00CA65 03:8A55: 03        .byte $03   ; 08
- D 0 - I - 0x00CA66 03:8A56: 03        .byte $03   ; 09
- D 0 - I - 0x00CA67 03:8A57: 02        .byte $02   ; 0A
- D 0 - I - 0x00CA68 03:8A58: 43        .byte $43   ; 0B



off_02_8A59_02_spr_XY:
- D 0 - I - 0x00CA69 03:8A59: F6        .byte $F6, $18   ; 01
- D 0 - I - 0x00CA6B 03:8A5B: FB        .byte $FB, $1C   ; 02
- D 0 - I - 0x00CA6D 03:8A5D: 03        .byte $03, $1C   ; 03
- D 0 - I - 0x00CA6F 03:8A5F: 0B        .byte $0B, $1B   ; 04
- D 0 - I - 0x00CA71 03:8A61: 13        .byte $13, $1E   ; 05
- D 0 - I - 0x00CA73 03:8A63: FB        .byte $FB, $14   ; 06
- D 0 - I - 0x00CA75 03:8A65: 03        .byte $03, $14   ; 07
- D 0 - I - 0x00CA77 03:8A67: 0B        .byte $0B, $13   ; 08
- D 0 - I - 0x00CA79 03:8A69: 13        .byte $13, $16   ; 09
- D 0 - I - 0x00CA7B 03:8A6B: 03        .byte $03, $0C   ; 0A
- D 0 - I - 0x00CA7D 03:8A6D: 02        .byte $02, $04   ; 0B



_off030_8A6F_03:
- D 0 - I - 0x00CA7F 03:8A6F: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00CA81 03:8A71: 78 8A     .word off_02_8A78_00_spr_A
- D 0 - I - 0x00CA83 03:8A73: E4 84     .word off_02_84E4_01_spr_T
- D 0 - I - 0x00CA85 03:8A75: F6 84     .word off_02_84F6_02_spr_XY
- D 0 - I - 0x00CA87 03:8A77: 00        .byte con_sub_00   ; 



off_02_8A78_00_spr_A:
- D 0 - I - 0x00CA88 03:8A78: 03        .byte $03   ; 01
- D 0 - I - 0x00CA89 03:8A79: 03        .byte $03   ; 02
- D 0 - I - 0x00CA8A 03:8A7A: 03        .byte $03   ; 03
- D 0 - I - 0x00CA8B 03:8A7B: 03        .byte $03   ; 04
- D 0 - I - 0x00CA8C 03:8A7C: 02        .byte $02   ; 05
- D 0 - I - 0x00CA8D 03:8A7D: 02        .byte $02   ; 06
- D 0 - I - 0x00CA8E 03:8A7E: 02        .byte $02   ; 07
- D 0 - I - 0x00CA8F 03:8A7F: 02        .byte $02   ; 08
- D 0 - I - 0x00CA90 03:8A80: 43        .byte $43   ; 09



_off030_8A81_04:
- D 0 - I - 0x00CA91 03:8A81: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00CA93 03:8A83: 80 AC     .word off_02_AC80_00_spr_A
- D 0 - I - 0x00CA95 03:8A85: E4 84     .word off_02_84E4_01_spr_T
- D 0 - I - 0x00CA97 03:8A87: 1A 85     .word off_02_851A_02_spr_XY
- D 0 - I - 0x00CA99 03:8A89: 00        .byte con_sub_00   ; 



_off030_8A8A_0F:
- D 0 - I - 0x00CA9A 03:8A8A: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00CA9C 03:8A8C: 5B A7     .word off_02_A75B_00_spr_A
- D 0 - I - 0x00CA9E 03:8A8E: 96 8A     .word off_02_8A96_01_spr_T
- D 0 - I - 0x00CAA0 03:8A90: 40 85     .word off_02_8540_02_spr_XY
- D 0 - I - 0x00CAA2 03:8A92: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00CAA3 03:8A93: 35 8B     .word sub_05_8B35
- D 0 - I - 0x00CAA5 03:8A95: 00        .byte con_sub_00   ; 



off_02_8A96_01_spr_T:
- D 0 - I - 0x00CAA6 03:8A96: 80        .byte $80   ; 01
- D 0 - I - 0x00CAA7 03:8A97: 81        .byte $81   ; 02
- D 0 - I - 0x00CAA8 03:8A98: FA        .byte $FA   ; 03
- D 0 - I - 0x00CAA9 03:8A99: FB        .byte $FB   ; 04
- D 0 - I - 0x00CAAA 03:8A9A: DC        .byte $DC   ; 05
- D 0 - I - 0x00CAAB 03:8A9B: C8        .byte $C8   ; 06
- D 0 - I - 0x00CAAC 03:8A9C: D7        .byte $D7   ; 07
- D 0 - I - 0x00CAAD 03:8A9D: D8        .byte $D8   ; 08



_off030_8A9E_0E:
- D 0 - I - 0x00CAAE 03:8A9E: 02        .byte con_sub_02, $07   ; 
- D 0 - I - 0x00CAB0 03:8AA0: B1 8A     .word off_02_8AB1_00_spr_A
- D 0 - I - 0x00CAB2 03:8AA2: AA 8A     .word off_02_8AAA_01_spr_T
- D 0 - I - 0x00CAB4 03:8AA4: 6A 85     .word off_02_856A_02_spr_XY
- D 0 - I - 0x00CAB6 03:8AA6: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00CAB7 03:8AA7: 35 8B     .word sub_05_8B35
- D 0 - I - 0x00CAB9 03:8AA9: 00        .byte con_sub_00   ; 



off_02_8AAA_01_spr_T:
- D 0 - I - 0x00CABA 03:8AAA: 80        .byte $80   ; 01
- D 0 - I - 0x00CABB 03:8AAB: 81        .byte $81   ; 02
- D 0 - I - 0x00CABC 03:8AAC: C7        .byte $C7   ; 03
- D 0 - I - 0x00CABD 03:8AAD: C8        .byte $C8   ; 04
- D 0 - I - 0x00CABE 03:8AAE: FA        .byte $FA   ; 05
- D 0 - I - 0x00CABF 03:8AAF: F5        .byte $F5   ; 06
- D 0 - I - 0x00CAC0 03:8AB0: D8        .byte $D8   ; 07



off_02_8AB1_00_spr_A:
- D 0 - I - 0x00CAC1 03:8AB1: 03        .byte $03   ; 01
- D 0 - I - 0x00CAC2 03:8AB2: 03        .byte $03   ; 02
- D 0 - I - 0x00CAC3 03:8AB3: 43        .byte $43   ; 03
- D 0 - I - 0x00CAC4 03:8AB4: 03        .byte $03   ; 04
- D 0 - I - 0x00CAC5 03:8AB5: 03        .byte $03   ; 05
- D 0 - I - 0x00CAC6 03:8AB6: 03        .byte $03   ; 06
- D 0 - I - 0x00CAC7 03:8AB7: 02        .byte $02   ; 07



_off030_8AB8_0C:
- D 0 - I - 0x00CAC8 03:8AB8: 02        .byte con_sub_02, $07   ; 
- D 0 - I - 0x00CACA 03:8ABA: CB 8A     .word off_02_8ACB_00_spr_A
- D 0 - I - 0x00CACC 03:8ABC: C4 8A     .word off_02_8AC4_01_spr_T
- D 0 - I - 0x00CACE 03:8ABE: D2 8A     .word off_02_8AD2_02_spr_XY
- D 0 - I - 0x00CAD0 03:8AC0: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00CAD1 03:8AC1: 35 8B     .word sub_05_8B35
- D 0 - I - 0x00CAD3 03:8AC3: 00        .byte con_sub_00   ; 



off_02_8AC4_01_spr_T:
- D 0 - I - 0x00CAD4 03:8AC4: 80        .byte $80   ; 01
- D 0 - I - 0x00CAD5 03:8AC5: 81        .byte $81   ; 02
- D 0 - I - 0x00CAD6 03:8AC6: EA        .byte $EA   ; 03
- D 0 - I - 0x00CAD7 03:8AC7: E9        .byte $E9   ; 04
- D 0 - I - 0x00CAD8 03:8AC8: 91        .byte $91   ; 05
- D 0 - I - 0x00CAD9 03:8AC9: F9        .byte $F9   ; 06
- D 0 - I - 0x00CADA 03:8ACA: A1        .byte $A1   ; 07



off_02_8ACB_00_spr_A:
- D 0 - I - 0x00CADB 03:8ACB: 03        .byte $03   ; 01
- D 0 - I - 0x00CADC 03:8ACC: 03        .byte $03   ; 02
- D 0 - I - 0x00CADD 03:8ACD: 03        .byte $03   ; 03
- D 0 - I - 0x00CADE 03:8ACE: 03        .byte $03   ; 04
- D 0 - I - 0x00CADF 03:8ACF: 03        .byte $03   ; 05
- D 0 - I - 0x00CAE0 03:8AD0: 02        .byte $02   ; 06
- D 0 - I - 0x00CAE1 03:8AD1: 03        .byte $03   ; 07



off_02_8AD2_02_spr_XY:
- D 0 - I - 0x00CAE2 03:8AD2: FD        .byte $FD, $24   ; 01
- D 0 - I - 0x00CAE4 03:8AD4: 05        .byte $05, $24   ; 02
- D 0 - I - 0x00CAE6 03:8AD6: F5        .byte $F5, $1E   ; 03
- D 0 - I - 0x00CAE8 03:8AD8: FD        .byte $FD, $1C   ; 04
- D 0 - I - 0x00CAEA 03:8ADA: 05        .byte $05, $1C   ; 05
- D 0 - I - 0x00CAEC 03:8ADC: FD        .byte $FD, $14   ; 06
- D 0 - I - 0x00CAEE 03:8ADE: 05        .byte $05, $14   ; 07



_off030_8AE0_0D:
- D 0 - I - 0x00CAF0 03:8AE0: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00CAF2 03:8AE2: F4 8A     .word off_02_8AF4_00_spr_A
- D 0 - I - 0x00CAF4 03:8AE4: EC 8A     .word off_02_8AEC_01_spr_T
- D 0 - I - 0x00CAF6 03:8AE6: 9C 85     .word off_02_859C_02_spr_XY
- D 0 - I - 0x00CAF8 03:8AE8: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00CAF9 03:8AE9: 35 8B     .word sub_05_8B35
- D 0 - I - 0x00CAFB 03:8AEB: 00        .byte con_sub_00   ; 



off_02_8AEC_01_spr_T:
- D 0 - I - 0x00CAFC 03:8AEC: EA        .byte $EA   ; 01
- D 0 - I - 0x00CAFD 03:8AED: EB        .byte $EB   ; 02
- D 0 - I - 0x00CAFE 03:8AEE: 80        .byte $80   ; 03
- D 0 - I - 0x00CAFF 03:8AEF: 81        .byte $81   ; 04
- D 0 - I - 0x00CB00 03:8AF0: E9        .byte $E9   ; 05
- D 0 - I - 0x00CB01 03:8AF1: 91        .byte $91   ; 06
- D 0 - I - 0x00CB02 03:8AF2: F9        .byte $F9   ; 07
- D 0 - I - 0x00CB03 03:8AF3: A1        .byte $A1   ; 08



off_02_8AF4_00_spr_A:
- D 0 - I - 0x00CB04 03:8AF4: 03        .byte $03   ; 01
- D 0 - I - 0x00CB05 03:8AF5: 03        .byte $03   ; 02
- D 0 - I - 0x00CB06 03:8AF6: 03        .byte $03   ; 03
- D 0 - I - 0x00CB07 03:8AF7: 03        .byte $03   ; 04
- D 0 - I - 0x00CB08 03:8AF8: 03        .byte $03   ; 05
- D 0 - I - 0x00CB09 03:8AF9: 03        .byte $03   ; 06
- D 0 - I - 0x00CB0A 03:8AFA: 02        .byte $02   ; 07
- D 0 - I - 0x00CB0B 03:8AFB: 03        .byte $03   ; 08



_off030_8AFC_1A:
- D 0 - I - 0x00CB0C 03:8AFC: 02        .byte con_sub_02, $0C   ; 
- D 0 - I - 0x00CB0E 03:8AFE: 11 8B     .word off_02_8B11_00_spr_A
- D 0 - I - 0x00CB10 03:8B00: 05 8B     .word off_02_8B05_01_spr_T
- D 0 - I - 0x00CB12 03:8B02: 1D 8B     .word off_02_8B1D_02_spr_XY
- D 0 - I - 0x00CB14 03:8B04: 00        .byte con_sub_00   ; 



off_02_8B05_01_spr_T:
- D 0 - I - 0x00CB15 03:8B05: 81        .byte $81   ; 01
- D 0 - I - 0x00CB16 03:8B06: 80        .byte $80   ; 02
- D 0 - I - 0x00CB17 03:8B07: E5        .byte $E5   ; 03
- D 0 - I - 0x00CB18 03:8B08: E6        .byte $E6   ; 04
- D 0 - I - 0x00CB19 03:8B09: E7        .byte $E7   ; 05
- D 0 - I - 0x00CB1A 03:8B0A: AB        .byte $AB   ; 06
- D 0 - I - 0x00CB1B 03:8B0B: EF        .byte $EF   ; 07
- D 0 - I - 0x00CB1C 03:8B0C: CB        .byte $CB   ; 08
- D 0 - I - 0x00CB1D 03:8B0D: B0        .byte $B0   ; 09
- D 0 - I - 0x00CB1E 03:8B0E: C9        .byte $C9   ; 0A
- D 0 - I - 0x00CB1F 03:8B0F: C0        .byte $C0   ; 0B
- D 0 - I - 0x00CB20 03:8B10: DB        .byte $DB   ; 0C



off_02_8B11_00_spr_A:
- D 0 - I - 0x00CB21 03:8B11: 43        .byte $43   ; 01
- D 0 - I - 0x00CB22 03:8B12: 43        .byte $43   ; 02
- D 0 - I - 0x00CB23 03:8B13: 03        .byte $03   ; 03
- D 0 - I - 0x00CB24 03:8B14: 03        .byte $03   ; 04
- D 0 - I - 0x00CB25 03:8B15: 03        .byte $03   ; 05
- D 0 - I - 0x00CB26 03:8B16: 02        .byte $02   ; 06
- D 0 - I - 0x00CB27 03:8B17: 03        .byte $03   ; 07
- D 0 - I - 0x00CB28 03:8B18: 02        .byte $02   ; 08
- D 0 - I - 0x00CB29 03:8B19: 02        .byte $02   ; 09
- D 0 - I - 0x00CB2A 03:8B1A: 02        .byte $02   ; 0A
- D 0 - I - 0x00CB2B 03:8B1B: 03        .byte $03   ; 0B
- D 0 - I - 0x00CB2C 03:8B1C: 03        .byte $03   ; 0C



off_02_8B1D_02_spr_XY:
- D 0 - I - 0x00CB2D 03:8B1D: 06        .byte $06, $24   ; 01
- D 0 - I - 0x00CB2F 03:8B1F: 0E        .byte $0E, $24   ; 02
- D 0 - I - 0x00CB31 03:8B21: 06        .byte $06, $1C   ; 03
- D 0 - I - 0x00CB33 03:8B23: 0E        .byte $0E, $1C   ; 04
- D 0 - I - 0x00CB35 03:8B25: 16        .byte $16, $1C   ; 05
- D 0 - I - 0x00CB37 03:8B27: 08        .byte $08, $14   ; 06
- D 0 - I - 0x00CB39 03:8B29: 06        .byte $06, $14   ; 07
- D 0 - I - 0x00CB3B 03:8B2B: 0E        .byte $0E, $14   ; 08
- D 0 - I - 0x00CB3D 03:8B2D: 06        .byte $06, $0C   ; 09
- D 0 - I - 0x00CB3F 03:8B2F: 0E        .byte $0E, $0C   ; 0A
- D 0 - I - 0x00CB41 03:8B31: 06        .byte $06, $04   ; 0B
- D 0 - I - 0x00CB43 03:8B33: 13        .byte $13, $04   ; 0C



sub_05_8B35:
- D 0 - I - 0x00CB45 03:8B35: 02        .byte con_sub_02, $04   ; 
- D 0 - I - 0x00CB47 03:8B37: 42 8B     .word off_02_8B42_00_spr_A
- D 0 - I - 0x00CB49 03:8B39: 3E 8B     .word off_02_8B3E_01_spr_T
- D 0 - I - 0x00CB4B 03:8B3B: 46 8B     .word off_02_8B46_02_spr_XY
- D 0 - I - 0x00CB4D 03:8B3D: 00        .byte con_sub_00   ; 



off_02_8B3E_01_spr_T:
- D 0 - I - 0x00CB4E 03:8B3E: D0        .byte $D0   ; 01
- D 0 - I - 0x00CB4F 03:8B3F: D1        .byte $D1   ; 02
- D 0 - I - 0x00CB50 03:8B40: C0        .byte $C0   ; 03
- D 0 - I - 0x00CB51 03:8B41: C1        .byte $C1   ; 04



off_02_8B42_00_spr_A:
- D 0 - I - 0x00CB52 03:8B42: 02        .byte $02   ; 01
- D 0 - I - 0x00CB53 03:8B43: 02        .byte $02   ; 02
- D 0 - I - 0x00CB54 03:8B44: 03        .byte $03   ; 03
- D 0 - I - 0x00CB55 03:8B45: 03        .byte $03   ; 04



off_02_8B46_02_spr_XY:
- D 0 - I - 0x00CB56 03:8B46: FC        .byte $FC, $0C   ; 01
- D 0 - I - 0x00CB58 03:8B48: 04        .byte $04, $0C   ; 02
- D 0 - I - 0x00CB5A 03:8B4A: FE        .byte $FE, $04   ; 03
- D 0 - I - 0x00CB5C 03:8B4C: 05        .byte $05, $04   ; 04



_off030_8B4E_12:
- D 0 - I - 0x00CB5E 03:8B4E: 04        .byte con_sub_04, $0A, $09   ; 
- D 0 - I - 0x00CB61 03:8B51: 72 8B     .word off_04_8B72_00_spr_A
- - - - - - 0x00CB63 03:8B53: 7A 8B     .word off_04_8B7A_01_spr_A
- - - - - - 0x00CB65 03:8B55: 84 8B     .word off_04_8B84_02_spr_A
- D 0 - I - 0x00CB67 03:8B57: 68 8B     .word off_04_8B68_03_spr_T
- D 0 - I - 0x00CB69 03:8B59: 8E 8B     .word off_04_8B8E_04_spr_XY
- D 0 - I - 0x00CB6B 03:8B5B: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00CB6D 03:8B5D: D0 B5     .word sub_06_B5D0_00
- - - - - - 0x00CB6F 03:8B5F: 00 00     .word $0000 ; 01
- - - - - - 0x00CB71 03:8B61: 00 00     .word $0000 ; 02
- - - - - - 0x00CB73 03:8B63: 00 00     .word $0000 ; 03
- - - - - - 0x00CB75 03:8B65: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00CB77 03:8B67: 00        .byte con_sub_00   ; 



off_04_8B68_03_spr_T:
- D 0 - I - 0x00CB78 03:8B68: 00        .byte $00   ; 01
- D 0 - I - 0x00CB79 03:8B69: 01        .byte $01   ; 02
- D 0 - I - 0x00CB7A 03:8B6A: 11        .byte $11   ; 03
- D 0 - I - 0x00CB7B 03:8B6B: 28        .byte $28   ; 04
- D 0 - I - 0x00CB7C 03:8B6C: 38        .byte $38   ; 05
- D 0 - I - 0x00CB7D 03:8B6D: 39        .byte $39   ; 06
- D 0 - I - 0x00CB7E 03:8B6E: 50        .byte $50   ; 07
- D 0 - I - 0x00CB7F 03:8B6F: 51        .byte $51   ; 08
- D 0 - I - 0x00CB80 03:8B70: 40        .byte $40   ; 09
- D 0 - I - 0x00CB81 03:8B71: 41        .byte $41   ; 0A



off_04_8B72_00_spr_A:
- D 0 - I - 0x00CB82 03:8B72: 00        .byte $00   ; 01
- D 0 - I - 0x00CB83 03:8B73: 00        .byte $00   ; 02
- D 0 - I - 0x00CB84 03:8B74: 40        .byte $40   ; 03
- D 0 - I - 0x00CB85 03:8B75: 00        .byte $00   ; 04
- D 0 - I - 0x00CB86 03:8B76: 00        .byte $00   ; 05
- D 0 - I - 0x00CB87 03:8B77: 00        .byte $00   ; 06
- D 0 - I - 0x00CB88 03:8B78: 01        .byte $01   ; 07
- D 0 - I - 0x00CB89 03:8B79: 01        .byte $01   ; 08
off_04_8B7A_01_spr_A:
- D 0 - I - 0x00CB8A 03:8B7A: 00        .byte $00   ; 01 (09)
- D 0 - I - 0x00CB8B 03:8B7B: 00        .byte $00   ; 02 (0A)
- - - - - - 0x00CB8C 03:8B7C: 40        .byte $40   ; 03
- - - - - - 0x00CB8D 03:8B7D: 00        .byte $00   ; 04
- - - - - - 0x00CB8E 03:8B7E: 00        .byte $00   ; 05
- - - - - - 0x00CB8F 03:8B7F: 00        .byte $00   ; 06
- - - - - - 0x00CB90 03:8B80: 00        .byte $00   ; 07
- - - - - - 0x00CB91 03:8B81: 00        .byte $00   ; 08
- - - - - - 0x00CB92 03:8B82: 00        .byte $00   ; 09
- - - - - - 0x00CB93 03:8B83: 00        .byte $00   ; 0A



off_04_8B84_02_spr_A:
- - - - - - 0x00CB94 03:8B84: 02        .byte $02   ; 01
- - - - - - 0x00CB95 03:8B85: 02        .byte $02   ; 02
- - - - - - 0x00CB96 03:8B86: 42        .byte $42   ; 03
- - - - - - 0x00CB97 03:8B87: 02        .byte $02   ; 04
- - - - - - 0x00CB98 03:8B88: 02        .byte $02   ; 05
- - - - - - 0x00CB99 03:8B89: 02        .byte $02   ; 06
- - - - - - 0x00CB9A 03:8B8A: 02        .byte $02   ; 07
- - - - - - 0x00CB9B 03:8B8B: 02        .byte $02   ; 08
- - - - - - 0x00CB9C 03:8B8C: 02        .byte $02   ; 09
- - - - - - 0x00CB9D 03:8B8D: 02        .byte $02   ; 0A



off_04_8B8E_04_spr_XY:
- D 0 - I - 0x00CB9E 03:8B8E: 03        .byte $03, $24   ; 01
- D 0 - I - 0x00CBA0 03:8B90: 0B        .byte $0B, $24   ; 02
- D 0 - I - 0x00CBA2 03:8B92: FF        .byte $FF, $1C   ; 03
- D 0 - I - 0x00CBA4 03:8B94: 07        .byte $07, $1C   ; 04
- D 0 - I - 0x00CBA6 03:8B96: 01        .byte $01, $14   ; 05
- D 0 - I - 0x00CBA8 03:8B98: 09        .byte $09, $14   ; 06
- D 0 - I - 0x00CBAA 03:8B9A: FD        .byte $FD, $0C   ; 07
- D 0 - I - 0x00CBAC 03:8B9C: 05        .byte $05, $0C   ; 08
- D 0 - I - 0x00CBAE 03:8B9E: FC        .byte $FC, $04   ; 09
- D 0 - I - 0x00CBB0 03:8BA0: 06        .byte $06, $04   ; 0A



_off030_8BA2_13:
- D 0 - I - 0x00CBB2 03:8BA2: 04        .byte con_sub_04, $0A, $09   ; 
- D 0 - I - 0x00CBB5 03:8BA5: C6 8B     .word off_04_8BC6_00_spr_A
- - - - - - 0x00CBB7 03:8BA7: CE 8B     .word off_04_8BCE_01_spr_A
- - - - - - 0x00CBB9 03:8BA9: D8 8B     .word off_04_8BD8_02_spr_A
- D 0 - I - 0x00CBBB 03:8BAB: BC 8B     .word off_04_8BBC_03_spr_T
- D 0 - I - 0x00CBBD 03:8BAD: E2 8B     .word off_04_8BE2_04_spr_XY
- D 0 - I - 0x00CBBF 03:8BAF: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00CBC1 03:8BB1: DD B5     .word sub_06_B5DD_00
- - - - - - 0x00CBC3 03:8BB3: 00 00     .word $0000 ; 01
- - - - - - 0x00CBC5 03:8BB5: 00 00     .word $0000 ; 02
- - - - - - 0x00CBC7 03:8BB7: 00 00     .word $0000 ; 03
- - - - - - 0x00CBC9 03:8BB9: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00CBCB 03:8BBB: 00        .byte con_sub_00   ; 



off_04_8BBC_03_spr_T:
- D 0 - I - 0x00CBCC 03:8BBC: 00        .byte $00   ; 01
- D 0 - I - 0x00CBCD 03:8BBD: 01        .byte $01   ; 02
- D 0 - I - 0x00CBCE 03:8BBE: 46        .byte $46   ; 03
- D 0 - I - 0x00CBCF 03:8BBF: 0C        .byte $0C   ; 04
- D 0 - I - 0x00CBD0 03:8BC0: 56        .byte $56   ; 05
- D 0 - I - 0x00CBD1 03:8BC1: 58        .byte $58   ; 06
- D 0 - I - 0x00CBD2 03:8BC2: 50        .byte $50   ; 07
- D 0 - I - 0x00CBD3 03:8BC3: 51        .byte $51   ; 08
- D 0 - I - 0x00CBD4 03:8BC4: 40        .byte $40   ; 09
- D 0 - I - 0x00CBD5 03:8BC5: 41        .byte $41   ; 0A



off_04_8BC6_00_spr_A:
- D 0 - I - 0x00CBD6 03:8BC6: 00        .byte $00   ; 01
- D 0 - I - 0x00CBD7 03:8BC7: 00        .byte $00   ; 02
- D 0 - I - 0x00CBD8 03:8BC8: 00        .byte $00   ; 03
- D 0 - I - 0x00CBD9 03:8BC9: 41        .byte $41   ; 04
- D 0 - I - 0x00CBDA 03:8BCA: 00        .byte $00   ; 05
- D 0 - I - 0x00CBDB 03:8BCB: 01        .byte $01   ; 06
- D 0 - I - 0x00CBDC 03:8BCC: 01        .byte $01   ; 07
- D 0 - I - 0x00CBDD 03:8BCD: 01        .byte $01   ; 08
off_04_8BCE_01_spr_A:
- D 0 - I - 0x00CBDE 03:8BCE: 00        .byte $00   ; 01 (09)
- D 0 - I - 0x00CBDF 03:8BCF: 00        .byte $00   ; 02 (0A)
- - - - - - 0x00CBE0 03:8BD0: 00        .byte $00   ; 03
- - - - - - 0x00CBE1 03:8BD1: 40        .byte $40   ; 04
- - - - - - 0x00CBE2 03:8BD2: 00        .byte $00   ; 05
- - - - - - 0x00CBE3 03:8BD3: 00        .byte $00   ; 06
- - - - - - 0x00CBE4 03:8BD4: 00        .byte $00   ; 07
- - - - - - 0x00CBE5 03:8BD5: 00        .byte $00   ; 08
- - - - - - 0x00CBE6 03:8BD6: 00        .byte $00   ; 09
- - - - - - 0x00CBE7 03:8BD7: 00        .byte $00   ; 0A



off_04_8BD8_02_spr_A:
- - - - - - 0x00CBE8 03:8BD8: 02        .byte $02   ; 01
- - - - - - 0x00CBE9 03:8BD9: 02        .byte $02   ; 02
- - - - - - 0x00CBEA 03:8BDA: 02        .byte $02   ; 03
- - - - - - 0x00CBEB 03:8BDB: 42        .byte $42   ; 04
- - - - - - 0x00CBEC 03:8BDC: 02        .byte $02   ; 05
- - - - - - 0x00CBED 03:8BDD: 02        .byte $02   ; 06
- - - - - - 0x00CBEE 03:8BDE: 02        .byte $02   ; 07
- - - - - - 0x00CBEF 03:8BDF: 02        .byte $02   ; 08
- - - - - - 0x00CBF0 03:8BE0: 02        .byte $02   ; 09
- - - - - - 0x00CBF1 03:8BE1: 02        .byte $02   ; 0A



off_04_8BE2_04_spr_XY:
- D 0 - I - 0x00CBF2 03:8BE2: FE        .byte $FE, $24   ; 01
- D 0 - I - 0x00CBF4 03:8BE4: 06        .byte $06, $24   ; 02
- D 0 - I - 0x00CBF6 03:8BE6: FD        .byte $FD, $1C   ; 03
- D 0 - I - 0x00CBF8 03:8BE8: 03        .byte $03, $1C   ; 04
- D 0 - I - 0x00CBFA 03:8BEA: FC        .byte $FC, $14   ; 05
- D 0 - I - 0x00CBFC 03:8BEC: 04        .byte $04, $14   ; 06
- D 0 - I - 0x00CBFE 03:8BEE: FC        .byte $FC, $0C   ; 07
- D 0 - I - 0x00CC00 03:8BF0: 04        .byte $04, $0C   ; 08
- D 0 - I - 0x00CC02 03:8BF2: FC        .byte $FC, $04   ; 09
- D 0 - I - 0x00CC04 03:8BF4: 06        .byte $06, $04   ; 0A



_off030_8BF6_14:
- D 0 - I - 0x00CC06 03:8BF6: 04        .byte con_sub_04, $0A, $09   ; 
- D 0 - I - 0x00CC09 03:8BF9: 1A 8C     .word off_04_8C1A_00_spr_A
- - - - - - 0x00CC0B 03:8BFB: 6C 8F     .word off_04_8F6C_01_spr_A
- - - - - - 0x00CC0D 03:8BFD: D3 8F     .word off_04_8FD3_02_spr_A
- D 0 - I - 0x00CC0F 03:8BFF: 10 8C     .word off_04_8C10_03_spr_T
- D 0 - I - 0x00CC11 03:8C01: 2C 8C     .word off_04_8C2C_04_spr_XY
- D 0 - I - 0x00CC13 03:8C03: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00CC15 03:8C05: 41 B6     .word sub_06_B641_00
- - - - - - 0x00CC17 03:8C07: 00 00     .word $0000 ; 01
- - - - - - 0x00CC19 03:8C09: 00 00     .word $0000 ; 02
- - - - - - 0x00CC1B 03:8C0B: 00 00     .word $0000 ; 03
- - - - - - 0x00CC1D 03:8C0D: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00CC1F 03:8C0F: 00        .byte con_sub_00   ; 



off_04_8C10_03_spr_T:
- D 0 - I - 0x00CC20 03:8C10: 00        .byte $00   ; 01
- D 0 - I - 0x00CC21 03:8C11: 01        .byte $01   ; 02
- D 0 - I - 0x00CC22 03:8C12: 0C        .byte $0C   ; 03
- D 0 - I - 0x00CC23 03:8C13: 48        .byte $48   ; 04
- D 0 - I - 0x00CC24 03:8C14: 57        .byte $57   ; 05
- D 0 - I - 0x00CC25 03:8C15: 58        .byte $58   ; 06
- D 0 - I - 0x00CC26 03:8C16: 50        .byte $50   ; 07
- D 0 - I - 0x00CC27 03:8C17: 51        .byte $51   ; 08
- D 0 - I - 0x00CC28 03:8C18: 17        .byte $17   ; 09
- D 0 - I - 0x00CC29 03:8C19: 41        .byte $41   ; 0A



off_04_8C1A_00_spr_A:
- D 0 - I - 0x00CC2A 03:8C1A: 00        .byte $00   ; 01
- D 0 - I - 0x00CC2B 03:8C1B: 00        .byte $00   ; 02
- D 0 - I - 0x00CC2C 03:8C1C: 01        .byte $01   ; 03
- D 0 - I - 0x00CC2D 03:8C1D: 01        .byte $01   ; 04
- D 0 - I - 0x00CC2E 03:8C1E: 01        .byte $01   ; 05
- D 0 - I - 0x00CC2F 03:8C1F: 01        .byte $01   ; 06
- D 0 - I - 0x00CC30 03:8C20: 01        .byte $01   ; 07
- D 0 - I - 0x00CC31 03:8C21: 01        .byte $01   ; 08
off_02_8C22_00_spr_A:
- D 0 - I - 0x00CC32 03:8C22: 00        .byte $00   ; 01 (09)
- D 0 - I - 0x00CC33 03:8C23: 00        .byte $00   ; 02 (0A)
- D 0 - I - 0x00CC34 03:8C24: 02        .byte $02   ; 03
- D 0 - I - 0x00CC35 03:8C25: 02        .byte $02   ; 04
- D 0 - I - 0x00CC36 03:8C26: 02        .byte $02   ; 05
- D 0 - I - 0x00CC37 03:8C27: 02        .byte $02   ; 06
- D 0 - I - 0x00CC38 03:8C28: 02        .byte $02   ; 07
- D 0 - I - 0x00CC39 03:8C29: 02        .byte $02   ; 08


; bzk garbage
- - - - - - 0x00CC3A 03:8C2A: 00        .byte $00   ; 
- - - - - - 0x00CC3B 03:8C2B: 00        .byte $00   ; 



off_02_8C2C_02_spr_XY:
off_04_8C2C_04_spr_XY:
- D 0 - I - 0x00CC3C 03:8C2C: F7        .byte $F7, $24   ; 01
- D 0 - I - 0x00CC3E 03:8C2E: FF        .byte $FF, $24   ; 02
- D 0 - I - 0x00CC40 03:8C30: F9        .byte $F9, $1C   ; 03
- D 0 - I - 0x00CC42 03:8C32: 01        .byte $01, $1C   ; 04
- D 0 - I - 0x00CC44 03:8C34: F9        .byte $F9, $14   ; 05
- D 0 - I - 0x00CC46 03:8C36: 01        .byte $01, $14   ; 06
- D 0 - I - 0x00CC48 03:8C38: F9        .byte $F9, $0C   ; 07
- D 0 - I - 0x00CC4A 03:8C3A: 01        .byte $01, $0C   ; 08
- D 0 - I - 0x00CC4C 03:8C3C: FB        .byte $FB, $04   ; 09
- D 0 - I - 0x00CC4E 03:8C3E: 03        .byte $03, $04   ; 0A



_off030_8C40_1F:
- D 0 - I - 0x00CC50 03:8C40: 04        .byte con_sub_04, $0B, $09   ; 
- D 0 - I - 0x00CC53 03:8C43: 59 8C     .word off_04_8C59_00_spr_A
- D 0 - I - 0x00CC55 03:8C45: 63 8C     .word off_04_8C63_01_spr_A
- - - - - - 0x00CC57 03:8C47: 6E 8C     .word off_04_8C6E_02_spr_A
- D 0 - I - 0x00CC59 03:8C49: 4E 8C     .word off_04_8C4E_03_spr_T
- D 0 - I - 0x00CC5B 03:8C4B: 79 8C     .word off_04_8C79_04_spr_XY
- D 0 - I - 0x00CC5D 03:8C4D: 00        .byte con_sub_00   ; 



off_04_8C4E_03_spr_T:
- D 0 - I - 0x00CC5E 03:8C4E: 25        .byte $25   ; 01
- D 0 - I - 0x00CC5F 03:8C4F: 01        .byte $01   ; 02
- D 0 - I - 0x00CC60 03:8C50: 66        .byte $66   ; 03
- D 0 - I - 0x00CC61 03:8C51: 47        .byte $47   ; 04
- D 0 - I - 0x00CC62 03:8C52: 48        .byte $48   ; 05
- D 0 - I - 0x00CC63 03:8C53: 65        .byte $65   ; 06
- D 0 - I - 0x00CC64 03:8C54: 09        .byte $09   ; 07
- D 0 - I - 0x00CC65 03:8C55: 45        .byte $45   ; 08
- D 0 - I - 0x00CC66 03:8C56: 44        .byte $44   ; 09
- D 0 - I - 0x00CC67 03:8C57: 1B        .byte $1B   ; 0A
- D 0 - I - 0x00CC68 03:8C58: 40        .byte $40   ; 0B



off_04_8C59_00_spr_A:
- D 0 - I - 0x00CC69 03:8C59: 00        .byte $00   ; 01
- D 0 - I - 0x00CC6A 03:8C5A: 00        .byte $00   ; 02
- D 0 - I - 0x00CC6B 03:8C5B: 00        .byte $00   ; 03
- D 0 - I - 0x00CC6C 03:8C5C: 00        .byte $00   ; 04
- D 0 - I - 0x00CC6D 03:8C5D: 01        .byte $01   ; 05
- D 0 - I - 0x00CC6E 03:8C5E: 00        .byte $00   ; 06
- D 0 - I - 0x00CC6F 03:8C5F: 01        .byte $01   ; 07
- D 0 - I - 0x00CC70 03:8C60: 01        .byte $01   ; 08
- D 0 - I - 0x00CC71 03:8C61: 01        .byte $01   ; 09
- D 0 - I - 0x00CC72 03:8C62: 41        .byte $41   ; 0A
off_04_8C63_01_spr_A:
- D 0 - I - 0x00CC73 03:8C63: 00        .byte $00   ; 01 (0B)
- D 0 - I - 0x00CC74 03:8C64: 00        .byte $00   ; 02
- D 0 - I - 0x00CC75 03:8C65: 00        .byte $00   ; 03
- D 0 - I - 0x00CC76 03:8C66: 00        .byte $00   ; 04
- D 0 - I - 0x00CC77 03:8C67: 00        .byte $00   ; 05
- D 0 - I - 0x00CC78 03:8C68: 00        .byte $00   ; 06
- D 0 - I - 0x00CC79 03:8C69: 00        .byte $00   ; 07
- D 0 - I - 0x00CC7A 03:8C6A: 00        .byte $00   ; 08
- D 0 - I - 0x00CC7B 03:8C6B: 00        .byte $00   ; 09
- D 0 - I - 0x00CC7C 03:8C6C: 40        .byte $40   ; 0A
- D 0 - I - 0x00CC7D 03:8C6D: 00        .byte $00   ; 0B



off_04_8C6E_02_spr_A:
- - - - - - 0x00CC7E 03:8C6E: 02        .byte $02   ; 01
- - - - - - 0x00CC7F 03:8C6F: 02        .byte $02   ; 02
- - - - - - 0x00CC80 03:8C70: 02        .byte $02   ; 03
- - - - - - 0x00CC81 03:8C71: 02        .byte $02   ; 04
- - - - - - 0x00CC82 03:8C72: 02        .byte $02   ; 05
- - - - - - 0x00CC83 03:8C73: 02        .byte $02   ; 06
- - - - - - 0x00CC84 03:8C74: 02        .byte $02   ; 07
- - - - - - 0x00CC85 03:8C75: 02        .byte $02   ; 08
- - - - - - 0x00CC86 03:8C76: 02        .byte $02   ; 09
- - - - - - 0x00CC87 03:8C77: 42        .byte $42   ; 0A
- - - - - - 0x00CC88 03:8C78: 02        .byte $02   ; 0B



off_04_8C79_04_spr_XY:
- D 0 - I - 0x00CC89 03:8C79: 00        .byte $00, $24   ; 01
- D 0 - I - 0x00CC8B 03:8C7B: 08        .byte $08, $24   ; 02
- D 0 - I - 0x00CC8D 03:8C7D: F8        .byte $F8, $1D   ; 03
- D 0 - I - 0x00CC8F 03:8C7F: 00        .byte $00, $1C   ; 04
- D 0 - I - 0x00CC91 03:8C81: 07        .byte $07, $1C   ; 05
- D 0 - I - 0x00CC93 03:8C83: F0        .byte $F0, $10   ; 06
- D 0 - I - 0x00CC95 03:8C85: F8        .byte $F8, $13   ; 07
- D 0 - I - 0x00CC97 03:8C87: 00        .byte $00, $14   ; 08
- D 0 - I - 0x00CC99 03:8C89: 08        .byte $08, $14   ; 09
- D 0 - I - 0x00CC9B 03:8C8B: 00        .byte $00, $0C   ; 0A
- D 0 - I - 0x00CC9D 03:8C8D: FC        .byte $FC, $04   ; 0B



_off030_8C8F_20:
- D 0 - I - 0x00CC9F 03:8C8F: 04        .byte con_sub_04, $0A, $09   ; 
- D 0 - I - 0x00CCA2 03:8C92: A7 8C     .word off_04_8CA7_00_spr_A
- D 0 - I - 0x00CCA4 03:8C94: B1 8C     .word off_04_8CB1_01_spr_A
- - - - - - 0x00CCA6 03:8C96: BB 8C     .word off_04_8CBB_02_spr_A
- D 0 - I - 0x00CCA8 03:8C98: 9D 8C     .word off_04_8C9D_03_spr_T
- D 0 - I - 0x00CCAA 03:8C9A: C5 8C     .word off_04_8CC5_04_spr_XY
- D 0 - I - 0x00CCAC 03:8C9C: 00        .byte con_sub_00   ; 



off_04_8C9D_03_spr_T:
- D 0 - I - 0x00CCAD 03:8C9D: 00        .byte $00   ; 01
- D 0 - I - 0x00CCAE 03:8C9E: 01        .byte $01   ; 02
- D 0 - I - 0x00CCAF 03:8C9F: 1C        .byte $1C   ; 03
- D 0 - I - 0x00CCB0 03:8CA0: 74        .byte $74   ; 04
- D 0 - I - 0x00CCB1 03:8CA1: 1D        .byte $1D   ; 05
- D 0 - I - 0x00CCB2 03:8CA2: 65        .byte $65   ; 06
- D 0 - I - 0x00CCB3 03:8CA3: 3E        .byte $3E   ; 07
- D 0 - I - 0x00CCB4 03:8CA4: 3F        .byte $3F   ; 08
- D 0 - I - 0x00CCB5 03:8CA5: 1B        .byte $1B   ; 09
- D 0 - I - 0x00CCB6 03:8CA6: 40        .byte $40   ; 0A



off_04_8CA7_00_spr_A:
- D 0 - I - 0x00CCB7 03:8CA7: 00        .byte $00   ; 01
- D 0 - I - 0x00CCB8 03:8CA8: 00        .byte $00   ; 02
- D 0 - I - 0x00CCB9 03:8CA9: 00        .byte $00   ; 03
- D 0 - I - 0x00CCBA 03:8CAA: 00        .byte $00   ; 04
- D 0 - I - 0x00CCBB 03:8CAB: 00        .byte $00   ; 05
- D 0 - I - 0x00CCBC 03:8CAC: 00        .byte $00   ; 06
- D 0 - I - 0x00CCBD 03:8CAD: 01        .byte $01   ; 07
- D 0 - I - 0x00CCBE 03:8CAE: 01        .byte $01   ; 08
- D 0 - I - 0x00CCBF 03:8CAF: 41        .byte $41   ; 09
- D 0 - I - 0x00CCC0 03:8CB0: 00        .byte $00   ; 0A



off_04_8CB1_01_spr_A:
- D 0 - I - 0x00CCC1 03:8CB1: 00        .byte $00   ; 01
- D 0 - I - 0x00CCC2 03:8CB2: 00        .byte $00   ; 02
- D 0 - I - 0x00CCC3 03:8CB3: 00        .byte $00   ; 03
- D 0 - I - 0x00CCC4 03:8CB4: 00        .byte $00   ; 04
- D 0 - I - 0x00CCC5 03:8CB5: 00        .byte $00   ; 05
- D 0 - I - 0x00CCC6 03:8CB6: 00        .byte $00   ; 06
- D 0 - I - 0x00CCC7 03:8CB7: 00        .byte $00   ; 07
- D 0 - I - 0x00CCC8 03:8CB8: 00        .byte $00   ; 08
- D 0 - I - 0x00CCC9 03:8CB9: 40        .byte $40   ; 09
- D 0 - I - 0x00CCCA 03:8CBA: 00        .byte $00   ; 0A



off_04_8CBB_02_spr_A:
- - - - - - 0x00CCCB 03:8CBB: 02        .byte $02   ; 01
- - - - - - 0x00CCCC 03:8CBC: 02        .byte $02   ; 02
- - - - - - 0x00CCCD 03:8CBD: 02        .byte $02   ; 03
- - - - - - 0x00CCCE 03:8CBE: 02        .byte $02   ; 04
- - - - - - 0x00CCCF 03:8CBF: 02        .byte $02   ; 05
- - - - - - 0x00CCD0 03:8CC0: 02        .byte $02   ; 06
- - - - - - 0x00CCD1 03:8CC1: 02        .byte $02   ; 07
- - - - - - 0x00CCD2 03:8CC2: 02        .byte $02   ; 08
- - - - - - 0x00CCD3 03:8CC3: 42        .byte $42   ; 09
- - - - - - 0x00CCD4 03:8CC4: 02        .byte $02   ; 0A



off_04_8CC5_04_spr_XY:
- D 0 - I - 0x00CCD5 03:8CC5: FC        .byte $FC, $24   ; 01
- D 0 - I - 0x00CCD7 03:8CC7: 04        .byte $04, $24   ; 02
- D 0 - I - 0x00CCD9 03:8CC9: F9        .byte $F9, $1C   ; 03
- D 0 - I - 0x00CCDB 03:8CCB: 01        .byte $01, $1C   ; 04
- D 0 - I - 0x00CCDD 03:8CCD: 09        .byte $09, $1C   ; 05
- D 0 - I - 0x00CCDF 03:8CCF: F4        .byte $F4, $11   ; 06
- D 0 - I - 0x00CCE1 03:8CD1: FC        .byte $FC, $14   ; 07
- D 0 - I - 0x00CCE3 03:8CD3: 04        .byte $04, $14   ; 08
- D 0 - I - 0x00CCE5 03:8CD5: FE        .byte $FE, $0C   ; 09
- D 0 - I - 0x00CCE7 03:8CD7: FA        .byte $FA, $04   ; 0A



_off030_8CD9_21:
- D 0 - I - 0x00CCE9 03:8CD9: 04        .byte con_sub_04, $0A, $09   ; 
- D 0 - I - 0x00CCEC 03:8CDC: F1 8C     .word off_04_8CF1_00_spr_A
- D 0 - I - 0x00CCEE 03:8CDE: FA 8C     .word off_04_8CFA_01_spr_A
- - - - - - 0x00CCF0 03:8CE0: 04 8D     .word off_04_8D04_02_spr_A
- D 0 - I - 0x00CCF2 03:8CE2: E7 8C     .word off_04_8CE7_03_spr_T
- D 0 - I - 0x00CCF4 03:8CE4: 0E 8D     .word off_04_8D0E_04_spr_XY
- D 0 - I - 0x00CCF6 03:8CE6: 00        .byte con_sub_00   ; 



off_04_8CE7_03_spr_T:
- D 0 - I - 0x00CCF7 03:8CE7: 01        .byte $01   ; 01
- D 0 - I - 0x00CCF8 03:8CE8: 00        .byte $00   ; 02
- D 0 - I - 0x00CCF9 03:8CE9: 1D        .byte $1D   ; 03
- D 0 - I - 0x00CCFA 03:8CEA: 74        .byte $74   ; 04
- D 0 - I - 0x00CCFB 03:8CEB: 1C        .byte $1C   ; 05
- D 0 - I - 0x00CCFC 03:8CEC: 3F        .byte $3F   ; 06
- D 0 - I - 0x00CCFD 03:8CED: 3E        .byte $3E   ; 07
- D 0 - I - 0x00CCFE 03:8CEE: 65        .byte $65   ; 08
- D 0 - I - 0x00CCFF 03:8CEF: 1B        .byte $1B   ; 09
- D 0 - I - 0x00CD00 03:8CF0: 40        .byte $40   ; 0A



off_04_8CF1_00_spr_A:
- D 0 - I - 0x00CD01 03:8CF1: 40        .byte $40   ; 01
- D 0 - I - 0x00CD02 03:8CF2: 40        .byte $40   ; 02
- D 0 - I - 0x00CD03 03:8CF3: 40        .byte $40   ; 03
- D 0 - I - 0x00CD04 03:8CF4: 40        .byte $40   ; 04
- D 0 - I - 0x00CD05 03:8CF5: 40        .byte $40   ; 05
- D 0 - I - 0x00CD06 03:8CF6: 41        .byte $41   ; 06
- D 0 - I - 0x00CD07 03:8CF7: 41        .byte $41   ; 07
- D 0 - I - 0x00CD08 03:8CF8: 40        .byte $40   ; 08
- D 0 - I - 0x00CD09 03:8CF9: 01        .byte $01   ; 09
off_04_8CFA_01_spr_A:
- D 0 - I - 0x00CD0A 03:8CFA: 40        .byte $40   ; 01 (0A)
- D 0 - I - 0x00CD0B 03:8CFB: 40        .byte $40   ; 02
- D 0 - I - 0x00CD0C 03:8CFC: 40        .byte $40   ; 03
- D 0 - I - 0x00CD0D 03:8CFD: 40        .byte $40   ; 04
- D 0 - I - 0x00CD0E 03:8CFE: 40        .byte $40   ; 05
- D 0 - I - 0x00CD0F 03:8CFF: 40        .byte $40   ; 06
- D 0 - I - 0x00CD10 03:8D00: 40        .byte $40   ; 07
- D 0 - I - 0x00CD11 03:8D01: 40        .byte $40   ; 08
- D 0 - I - 0x00CD12 03:8D02: 00        .byte $00   ; 09
- D 0 - I - 0x00CD13 03:8D03: 40        .byte $40   ; 0A



off_04_8D04_02_spr_A:
- - - - - - 0x00CD14 03:8D04: 42        .byte $42   ; 01
- - - - - - 0x00CD15 03:8D05: 42        .byte $42   ; 02
- - - - - - 0x00CD16 03:8D06: 42        .byte $42   ; 03
- - - - - - 0x00CD17 03:8D07: 42        .byte $42   ; 04
- - - - - - 0x00CD18 03:8D08: 42        .byte $42   ; 05
- - - - - - 0x00CD19 03:8D09: 42        .byte $42   ; 06
- - - - - - 0x00CD1A 03:8D0A: 42        .byte $42   ; 07
- - - - - - 0x00CD1B 03:8D0B: 42        .byte $42   ; 08
- - - - - - 0x00CD1C 03:8D0C: 02        .byte $02   ; 09
- - - - - - 0x00CD1D 03:8D0D: 42        .byte $42   ; 0A



off_04_8D0E_04_spr_XY:
- D 0 - I - 0x00CD1E 03:8D0E: FC        .byte $FC, $24   ; 01
- D 0 - I - 0x00CD20 03:8D10: 04        .byte $04, $24   ; 02
- D 0 - I - 0x00CD22 03:8D12: F7        .byte $F7, $1C   ; 03
- D 0 - I - 0x00CD24 03:8D14: FF        .byte $FF, $1C   ; 04
- D 0 - I - 0x00CD26 03:8D16: 07        .byte $07, $1C   ; 05
- D 0 - I - 0x00CD28 03:8D18: FC        .byte $FC, $14   ; 06
- D 0 - I - 0x00CD2A 03:8D1A: 04        .byte $04, $14   ; 07
- D 0 - I - 0x00CD2C 03:8D1C: 0C        .byte $0C, $11   ; 08
- D 0 - I - 0x00CD2E 03:8D1E: 02        .byte $02, $0C   ; 09
- D 0 - I - 0x00CD30 03:8D20: 06        .byte $06, $04   ; 0A



_off030_8D22_22:
- D 0 - I - 0x00CD32 03:8D22: 04        .byte con_sub_04, $0B, $09   ; 
- D 0 - I - 0x00CD35 03:8D25: 3B 8D     .word off_04_8D3B_00_spr_A
- D 0 - I - 0x00CD37 03:8D27: 45 8D     .word off_04_8D45_01_spr_A
- - - - - - 0x00CD39 03:8D29: 50 8D     .word off_04_8D50_02_spr_A
- D 0 - I - 0x00CD3B 03:8D2B: 30 8D     .word off_04_8D30_03_spr_T
- D 0 - I - 0x00CD3D 03:8D2D: 5B 8D     .word off_04_8D5B_04_spr_XY
- D 0 - I - 0x00CD3F 03:8D2F: 00        .byte con_sub_00   ; 



off_04_8D30_03_spr_T:
- D 0 - I - 0x00CD40 03:8D30: 01        .byte $01   ; 01
- D 0 - I - 0x00CD41 03:8D31: 25        .byte $25   ; 02
- D 0 - I - 0x00CD42 03:8D32: 48        .byte $48   ; 03
- D 0 - I - 0x00CD43 03:8D33: 47        .byte $47   ; 04
- D 0 - I - 0x00CD44 03:8D34: 66        .byte $66   ; 05
- D 0 - I - 0x00CD45 03:8D35: 44        .byte $44   ; 06
- D 0 - I - 0x00CD46 03:8D36: 45        .byte $45   ; 07
- D 0 - I - 0x00CD47 03:8D37: 09        .byte $09   ; 08
- D 0 - I - 0x00CD48 03:8D38: 65        .byte $65   ; 09
- D 0 - I - 0x00CD49 03:8D39: 1B        .byte $1B   ; 0A
- D 0 - I - 0x00CD4A 03:8D3A: 40        .byte $40   ; 0B



off_04_8D3B_00_spr_A:
- D 0 - I - 0x00CD4B 03:8D3B: 40        .byte $40   ; 01
- D 0 - I - 0x00CD4C 03:8D3C: 40        .byte $40   ; 02
- D 0 - I - 0x00CD4D 03:8D3D: 41        .byte $41   ; 03
- D 0 - I - 0x00CD4E 03:8D3E: 40        .byte $40   ; 04
- D 0 - I - 0x00CD4F 03:8D3F: 40        .byte $40   ; 05
- D 0 - I - 0x00CD50 03:8D40: 41        .byte $41   ; 06
- D 0 - I - 0x00CD51 03:8D41: 41        .byte $41   ; 07
- D 0 - I - 0x00CD52 03:8D42: 41        .byte $41   ; 08
- D 0 - I - 0x00CD53 03:8D43: 40        .byte $40   ; 09
- D 0 - I - 0x00CD54 03:8D44: 01        .byte $01   ; 0A
off_04_8D45_01_spr_A:
- D 0 - I - 0x00CD55 03:8D45: 40        .byte $40   ; 01 (0B)
- D 0 - I - 0x00CD56 03:8D46: 40        .byte $40   ; 02
- D 0 - I - 0x00CD57 03:8D47: 40        .byte $40   ; 03
- D 0 - I - 0x00CD58 03:8D48: 40        .byte $40   ; 04
- D 0 - I - 0x00CD59 03:8D49: 40        .byte $40   ; 05
- D 0 - I - 0x00CD5A 03:8D4A: 40        .byte $40   ; 06
- D 0 - I - 0x00CD5B 03:8D4B: 40        .byte $40   ; 07
- D 0 - I - 0x00CD5C 03:8D4C: 40        .byte $40   ; 08
- D 0 - I - 0x00CD5D 03:8D4D: 40        .byte $40   ; 09
- D 0 - I - 0x00CD5E 03:8D4E: 00        .byte $00   ; 0A
- D 0 - I - 0x00CD5F 03:8D4F: 40        .byte $40   ; 0B



off_04_8D50_02_spr_A:
- - - - - - 0x00CD60 03:8D50: 42        .byte $42   ; 01
- - - - - - 0x00CD61 03:8D51: 42        .byte $42   ; 02
- - - - - - 0x00CD62 03:8D52: 42        .byte $42   ; 03
- - - - - - 0x00CD63 03:8D53: 42        .byte $42   ; 04
- - - - - - 0x00CD64 03:8D54: 42        .byte $42   ; 05
- - - - - - 0x00CD65 03:8D55: 42        .byte $42   ; 06
- - - - - - 0x00CD66 03:8D56: 42        .byte $42   ; 07
- - - - - - 0x00CD67 03:8D57: 42        .byte $42   ; 08
- - - - - - 0x00CD68 03:8D58: 42        .byte $42   ; 09
- - - - - - 0x00CD69 03:8D59: 02        .byte $02   ; 0A
- - - - - - 0x00CD6A 03:8D5A: 42        .byte $42   ; 0B



off_04_8D5B_04_spr_XY:
- D 0 - I - 0x00CD6B 03:8D5B: F8        .byte $F8, $24   ; 01
- D 0 - I - 0x00CD6D 03:8D5D: 00        .byte $00, $24   ; 02
- D 0 - I - 0x00CD6F 03:8D5F: F9        .byte $F9, $1C   ; 03
- D 0 - I - 0x00CD71 03:8D61: 00        .byte $00, $1C   ; 04
- D 0 - I - 0x00CD73 03:8D63: 08        .byte $08, $1D   ; 05
- D 0 - I - 0x00CD75 03:8D65: F8        .byte $F8, $14   ; 06
- D 0 - I - 0x00CD77 03:8D67: 00        .byte $00, $14   ; 07
- D 0 - I - 0x00CD79 03:8D69: 08        .byte $08, $13   ; 08
- D 0 - I - 0x00CD7B 03:8D6B: 10        .byte $10, $10   ; 09
- D 0 - I - 0x00CD7D 03:8D6D: 00        .byte $00, $0C   ; 0A
- D 0 - I - 0x00CD7F 03:8D6F: 04        .byte $04, $04   ; 0B



_off030_8D71_02:
- D 0 - I - 0x00CD81 03:8D71: 04        .byte con_sub_04, $07, $09   ; 
- D 0 - I - 0x00CD84 03:8D74: 95 8D     .word off_04_8D95_00_spr_A
- D 0 - I - 0x00CD86 03:8D76: 6C 8F     .word off_04_8F6C_01_spr_A
- D 0 - I - 0x00CD88 03:8D78: 9C 8D     .word off_04_8D9C_02_spr_A
- D 0 - I - 0x00CD8A 03:8D7A: 8E 8D     .word off_04_8D8E_03_spr_T
- D 0 - I - 0x00CD8C 03:8D7C: A3 8D     .word off_04_8DA3_04_spr_XY
- D 0 - I - 0x00CD8E 03:8D7E: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00CD8F 03:8D7F: 62 97     .word sub_05_9762
- D 0 - I - 0x00CD91 03:8D81: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00CD93 03:8D83: 91 B5     .word sub_06_B591_00
- D 0 - I - 0x00CD95 03:8D85: 10 B6     .word sub_06_B610_01
- D 0 - I - 0x00CD97 03:8D87: B7 B6     .word sub_06_B6B7_02
- D 0 - I - 0x00CD99 03:8D89: 1B B7     .word sub_06_B71B_03
- D 0 - I - 0x00CD9B 03:8D8B: 7D B7     .word sub_06_B77D_04
@end:
- D 0 - I - 0x00CD9D 03:8D8D: 00        .byte con_sub_00   ; 



off_04_8D8E_03_spr_T:
- D 0 - I - 0x00CD9E 03:8D8E: 00        .byte $00   ; 01
- D 0 - I - 0x00CD9F 03:8D8F: 01        .byte $01   ; 02
- D 0 - I - 0x00CDA0 03:8D90: 10        .byte $10   ; 03
- D 0 - I - 0x00CDA1 03:8D91: 11        .byte $11   ; 04
- D 0 - I - 0x00CDA2 03:8D92: 20        .byte $20   ; 05
- D 0 - I - 0x00CDA3 03:8D93: 21        .byte $21   ; 06
- D 0 - I - 0x00CDA4 03:8D94: 15        .byte $15   ; 07



off_04_8D95_00_spr_A:
- D 0 - I - 0x00CDA5 03:8D95: 00        .byte $00   ; 01
- D 0 - I - 0x00CDA6 03:8D96: 00        .byte $00   ; 02
- D 0 - I - 0x00CDA7 03:8D97: 00        .byte $00   ; 03
- D 0 - I - 0x00CDA8 03:8D98: 00        .byte $00   ; 04
- D 0 - I - 0x00CDA9 03:8D99: 01        .byte $01   ; 05
- D 0 - I - 0x00CDAA 03:8D9A: 01        .byte $01   ; 06
- D 0 - I - 0x00CDAB 03:8D9B: 00        .byte $00   ; 07



off_04_8D9C_02_spr_A:
- D 0 - I - 0x00CDAC 03:8D9C: 02        .byte $02   ; 01
- D 0 - I - 0x00CDAD 03:8D9D: 02        .byte $02   ; 02
- D 0 - I - 0x00CDAE 03:8D9E: 02        .byte $02   ; 03
- D 0 - I - 0x00CDAF 03:8D9F: 02        .byte $02   ; 04
- D 0 - I - 0x00CDB0 03:8DA0: 02        .byte $02   ; 05
- D 0 - I - 0x00CDB1 03:8DA1: 02        .byte $02   ; 06
- D 0 - I - 0x00CDB2 03:8DA2: 02        .byte $02   ; 07



off_04_8DA3_04_spr_XY:
- D 0 - I - 0x00CDB3 03:8DA3: FB        .byte $FB, $24   ; 01
- D 0 - I - 0x00CDB5 03:8DA5: 03        .byte $03, $24   ; 02
- D 0 - I - 0x00CDB7 03:8DA7: FB        .byte $FB, $1C   ; 03
- D 0 - I - 0x00CDB9 03:8DA9: 03        .byte $03, $1C   ; 04
- D 0 - I - 0x00CDBB 03:8DAB: FC        .byte $FC, $14   ; 05
- D 0 - I - 0x00CDBD 03:8DAD: 04        .byte $04, $14   ; 06
- D 0 - I - 0x00CDBF 03:8DAF: 00        .byte $00, $14   ; 07



_off030_8DB1_05:
- D 0 - I - 0x00CDC1 03:8DB1: 04        .byte con_sub_04, $0A, $09   ; 
- D 0 - I - 0x00CDC4 03:8DB4: D5 8D     .word off_04_8DD5_00_spr_A
- D 0 - I - 0x00CDC6 03:8DB6: 6C 8F     .word off_04_8F6C_01_spr_A
- - - - - - 0x00CDC8 03:8DB8: DF 8D     .word off_04_8DDF_02_spr_A
- D 0 - I - 0x00CDCA 03:8DBA: CB 8D     .word off_04_8DCB_03_spr_T
- D 0 - I - 0x00CDCC 03:8DBC: E9 8D     .word off_04_8DE9_04_spr_XY
- D 0 - I - 0x00CDCE 03:8DBE: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00CDD0 03:8DC0: 9F B5     .word sub_06_B59F_00
- D 0 - I - 0x00CDD2 03:8DC2: 18 B6     .word sub_06_B618_01
- D 0 - I - 0x00CDD4 03:8DC4: C1 B6     .word sub_06_B6C1_02
- D 0 - I - 0x00CDD6 03:8DC6: 25 B7     .word sub_06_B725_03
- D 0 - I - 0x00CDD8 03:8DC8: 87 B7     .word sub_06_B787_04
@end:
- D 0 - I - 0x00CDDA 03:8DCA: 00        .byte con_sub_00   ; 



off_04_8DCB_03_spr_T:
- D 0 - I - 0x00CDDB 03:8DCB: 00        .byte $00   ; 01
- D 0 - I - 0x00CDDC 03:8DCC: 01        .byte $01   ; 02
- D 0 - I - 0x00CDDD 03:8DCD: 10        .byte $10   ; 03
- D 0 - I - 0x00CDDE 03:8DCE: 11        .byte $11   ; 04
- D 0 - I - 0x00CDDF 03:8DCF: 68        .byte $68   ; 05
- D 0 - I - 0x00CDE0 03:8DD0: 55        .byte $55   ; 06
- D 0 - I - 0x00CDE1 03:8DD1: 15        .byte $15   ; 07
- D 0 - I - 0x00CDE2 03:8DD2: 78        .byte $78   ; 08
- D 0 - I - 0x00CDE3 03:8DD3: 64        .byte $64   ; 09
- D 0 - I - 0x00CDE4 03:8DD4: 41        .byte $41   ; 0A



off_04_8DD5_00_spr_A:
- D 0 - I - 0x00CDE5 03:8DD5: 00        .byte $00   ; 01
- D 0 - I - 0x00CDE6 03:8DD6: 00        .byte $00   ; 02
- D 0 - I - 0x00CDE7 03:8DD7: 00        .byte $00   ; 03
- D 0 - I - 0x00CDE8 03:8DD8: 00        .byte $00   ; 04
- D 0 - I - 0x00CDE9 03:8DD9: 01        .byte $01   ; 05
- D 0 - I - 0x00CDEA 03:8DDA: 01        .byte $01   ; 06
- D 0 - I - 0x00CDEB 03:8DDB: 00        .byte $00   ; 07
- D 0 - I - 0x00CDEC 03:8DDC: 01        .byte $01   ; 08
- D 0 - I - 0x00CDED 03:8DDD: 01        .byte $01   ; 09
- D 0 - I - 0x00CDEE 03:8DDE: 00        .byte $00   ; 0A



off_04_8DDF_02_spr_A:
- - - - - - 0x00CDEF 03:8DDF: 02        .byte $02   ; 01
- - - - - - 0x00CDF0 03:8DE0: 02        .byte $02   ; 02
- - - - - - 0x00CDF1 03:8DE1: 02        .byte $02   ; 03
- - - - - - 0x00CDF2 03:8DE2: 02        .byte $02   ; 04
- - - - - - 0x00CDF3 03:8DE3: 02        .byte $02   ; 05
- - - - - - 0x00CDF4 03:8DE4: 02        .byte $02   ; 06
- - - - - - 0x00CDF5 03:8DE5: 02        .byte $02   ; 07
- - - - - - 0x00CDF6 03:8DE6: 02        .byte $02   ; 08
- - - - - - 0x00CDF7 03:8DE7: 02        .byte $02   ; 09
- - - - - - 0x00CDF8 03:8DE8: 02        .byte $02   ; 0A



off_04_8DE9_04_spr_XY:
- D 0 - I - 0x00CDF9 03:8DE9: FC        .byte $FC, $24   ; 01
- D 0 - I - 0x00CDFB 03:8DEB: 04        .byte $04, $24   ; 02
- D 0 - I - 0x00CDFD 03:8DED: FC        .byte $FC, $1C   ; 03
- D 0 - I - 0x00CDFF 03:8DEF: 04        .byte $04, $1C   ; 04
- D 0 - I - 0x00CE01 03:8DF1: FC        .byte $FC, $14   ; 05
- D 0 - I - 0x00CE03 03:8DF3: 04        .byte $04, $14   ; 06
- D 0 - I - 0x00CE05 03:8DF5: 01        .byte $01, $14   ; 07
- D 0 - I - 0x00CE07 03:8DF7: FC        .byte $FC, $0C   ; 08
- D 0 - I - 0x00CE09 03:8DF9: 04        .byte $04, $0C   ; 09
- D 0 - I - 0x00CE0B 03:8DFB: 07        .byte $07, $04   ; 0A



_off030_8DFD_19:
- D 0 - I - 0x00CE0D 03:8DFD: 04        .byte con_sub_04, $0B, $09   ; 
- D 0 - I - 0x00CE10 03:8E00: 22 8E     .word off_04_8E22_00_spr_A
- D 0 - I - 0x00CE12 03:8E02: 2D 8E     .word off_04_8E2D_01_spr_A
- - - - - - 0x00CE14 03:8E04: 38 8E     .word off_04_8E38_02_spr_A
- D 0 - I - 0x00CE16 03:8E06: 17 8E     .word off_04_8E17_03_spr_T
- D 0 - I - 0x00CE18 03:8E08: 43 8E     .word off_04_8E43_04_spr_XY
- D 0 - I - 0x00CE1A 03:8E0A: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00CE1C 03:8E0C: 9F B6     .word sub_06_B69F_00
- D 0 - I - 0x00CE1E 03:8E0E: 87 B6     .word sub_06_B687_01
- D 0 - I - 0x00CE20 03:8E10: 11 B7     .word sub_06_B711_02
- D 0 - I - 0x00CE22 03:8E12: 73 B7     .word sub_06_B773_03
- D 0 - I - 0x00CE24 03:8E14: D5 B7     .word sub_06_B7D5_04
@end:
- D 0 - I - 0x00CE26 03:8E16: 00        .byte con_sub_00   ; 



off_04_8E17_03_spr_T:
- D 0 - I - 0x00CE27 03:8E17: 00        .byte $00   ; 01
- D 0 - I - 0x00CE28 03:8E18: 01        .byte $01   ; 02
- D 0 - I - 0x00CE29 03:8E19: 11        .byte $11   ; 03
- D 0 - I - 0x00CE2A 03:8E1A: 10        .byte $10   ; 04
- D 0 - I - 0x00CE2B 03:8E1B: 08        .byte $08   ; 05
- D 0 - I - 0x00CE2C 03:8E1C: 09        .byte $09   ; 06
- D 0 - I - 0x00CE2D 03:8E1D: 0A        .byte $0A   ; 07
- D 0 - I - 0x00CE2E 03:8E1E: 36        .byte $36   ; 08
- D 0 - I - 0x00CE2F 03:8E1F: 08        .byte $08   ; 09
- D 0 - I - 0x00CE30 03:8E20: 19        .byte $19   ; 0A
- D 0 - I - 0x00CE31 03:8E21: 15        .byte $15   ; 0B



off_04_8E22_00_spr_A:
- D 0 - I - 0x00CE32 03:8E22: 00        .byte $00   ; 01
- D 0 - I - 0x00CE33 03:8E23: 00        .byte $00   ; 02
- D 0 - I - 0x00CE34 03:8E24: 40        .byte $40   ; 03
- D 0 - I - 0x00CE35 03:8E25: 40        .byte $40   ; 04
- D 0 - I - 0x00CE36 03:8E26: 00        .byte $00   ; 05
- D 0 - I - 0x00CE37 03:8E27: 01        .byte $01   ; 06
- D 0 - I - 0x00CE38 03:8E28: 01        .byte $01   ; 07
- D 0 - I - 0x00CE39 03:8E29: 00        .byte $00   ; 08
- D 0 - I - 0x00CE3A 03:8E2A: 00        .byte $00   ; 09
- D 0 - I - 0x00CE3B 03:8E2B: 01        .byte $01   ; 0A
- D 0 - I - 0x00CE3C 03:8E2C: 40        .byte $40   ; 0B



off_04_8E2D_01_spr_A:
- D 0 - I - 0x00CE3D 03:8E2D: 00        .byte $00   ; 01
- D 0 - I - 0x00CE3E 03:8E2E: 00        .byte $00   ; 02
- D 0 - I - 0x00CE3F 03:8E2F: 40        .byte $40   ; 03
- D 0 - I - 0x00CE40 03:8E30: 40        .byte $40   ; 04
- D 0 - I - 0x00CE41 03:8E31: 00        .byte $00   ; 05
- D 0 - I - 0x00CE42 03:8E32: 00        .byte $00   ; 06
- D 0 - I - 0x00CE43 03:8E33: 00        .byte $00   ; 07
- D 0 - I - 0x00CE44 03:8E34: 00        .byte $00   ; 08
- D 0 - I - 0x00CE45 03:8E35: 00        .byte $00   ; 09
- D 0 - I - 0x00CE46 03:8E36: 00        .byte $00   ; 0A
- D 0 - I - 0x00CE47 03:8E37: 00        .byte $00   ; 0B



off_04_8E38_02_spr_A:
- - - - - - 0x00CE48 03:8E38: 02        .byte $02   ; 01
- - - - - - 0x00CE49 03:8E39: 02        .byte $02   ; 02
- - - - - - 0x00CE4A 03:8E3A: 42        .byte $42   ; 03
- - - - - - 0x00CE4B 03:8E3B: 42        .byte $42   ; 04
- - - - - - 0x00CE4C 03:8E3C: 02        .byte $02   ; 05
- - - - - - 0x00CE4D 03:8E3D: 02        .byte $02   ; 06
- - - - - - 0x00CE4E 03:8E3E: 02        .byte $02   ; 07
- - - - - - 0x00CE4F 03:8E3F: 02        .byte $02   ; 08
- - - - - - 0x00CE50 03:8E40: 02        .byte $02   ; 09
- - - - - - 0x00CE51 03:8E41: 02        .byte $02   ; 0A
- - - - - - 0x00CE52 03:8E42: 42        .byte $42   ; 0B



off_04_8E43_04_spr_XY:
- D 0 - I - 0x00CE53 03:8E43: 00        .byte $00, $23   ; 01
- D 0 - I - 0x00CE55 03:8E45: 08        .byte $08, $23   ; 02
- D 0 - I - 0x00CE57 03:8E47: FC        .byte $FC, $1B   ; 03
- D 0 - I - 0x00CE59 03:8E49: 04        .byte $04, $1B   ; 04
- D 0 - I - 0x00CE5B 03:8E4B: ED        .byte $ED, $0E   ; 05
- D 0 - I - 0x00CE5D 03:8E4D: F5        .byte $F5, $11   ; 06
- D 0 - I - 0x00CE5F 03:8E4F: FD        .byte $FD, $13   ; 07
- D 0 - I - 0x00CE61 03:8E51: 05        .byte $05, $13   ; 08
- D 0 - I - 0x00CE63 03:8E53: FC        .byte $FC, $0B   ; 09
- D 0 - I - 0x00CE65 03:8E55: 04        .byte $04, $0B   ; 0A
- D 0 - I - 0x00CE67 03:8E57: FF        .byte $FF, $13   ; 0B



_off030_8E59_06:
- D 0 - I - 0x00CE69 03:8E59: 04        .byte con_sub_04, $09, $09   ; 
- D 0 - I - 0x00CE6C 03:8E5C: 7C 8E     .word off_04_8E7C_00_spr_A
- D 0 - I - 0x00CE6E 03:8E5E: 6C 8F     .word off_04_8F6C_01_spr_A
- D 0 - I - 0x00CE70 03:8E60: D3 8F     .word off_04_8FD3_02_spr_A
- D 0 - I - 0x00CE72 03:8E62: 73 8E     .word off_04_8E73_03_spr_T
- D 0 - I - 0x00CE74 03:8E64: 85 8E     .word off_04_8E85_04_spr_XY
- D 0 - I - 0x00CE76 03:8E66: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00CE78 03:8E68: AB B5     .word sub_06_B5AB_00
- D 0 - I - 0x00CE7A 03:8E6A: 24 B6     .word sub_06_B624_01
- D 0 - I - 0x00CE7C 03:8E6C: CB B6     .word sub_06_B6CB_02
- D 0 - I - 0x00CE7E 03:8E6E: 2F B7     .word sub_06_B72F_03
- D 0 - I - 0x00CE80 03:8E70: 8F B7     .word sub_06_B78F_04
@end:
- D 0 - I - 0x00CE82 03:8E72: 00        .byte con_sub_00   ; 



off_04_8E73_03_spr_T:
- D 0 - I - 0x00CE83 03:8E73: 00        .byte $00   ; 01
- D 0 - I - 0x00CE84 03:8E74: 01        .byte $01   ; 02
- D 0 - I - 0x00CE85 03:8E75: 07        .byte $07   ; 03
- D 0 - I - 0x00CE86 03:8E76: 35        .byte $35   ; 04
- D 0 - I - 0x00CE87 03:8E77: 4E        .byte $4E   ; 05
- D 0 - I - 0x00CE88 03:8E78: 54        .byte $54   ; 06
- D 0 - I - 0x00CE89 03:8E79: 17        .byte $17   ; 07
- D 0 - I - 0x00CE8A 03:8E7A: 1B        .byte $1B   ; 08
- D 0 - I - 0x00CE8B 03:8E7B: 18        .byte $18   ; 09



off_04_8E7C_00_spr_A:
- D 0 - I - 0x00CE8C 03:8E7C: 00        .byte $00   ; 01
- D 0 - I - 0x00CE8D 03:8E7D: 00        .byte $00   ; 02
- D 0 - I - 0x00CE8E 03:8E7E: 00        .byte $00   ; 03
- D 0 - I - 0x00CE8F 03:8E7F: 00        .byte $00   ; 04
- D 0 - I - 0x00CE90 03:8E80: 01        .byte $01   ; 05
- D 0 - I - 0x00CE91 03:8E81: 00        .byte $00   ; 06
- D 0 - I - 0x00CE92 03:8E82: 00        .byte $00   ; 07
- D 0 - I - 0x00CE93 03:8E83: 01        .byte $01   ; 08
- D 0 - I - 0x00CE94 03:8E84: 00        .byte $00   ; 09



off_04_8E85_04_spr_XY:
- D 0 - I - 0x00CE95 03:8E85: F6        .byte $F6, $1C   ; 01
- D 0 - I - 0x00CE97 03:8E87: FE        .byte $FE, $1C   ; 02
- D 0 - I - 0x00CE99 03:8E89: F8        .byte $F8, $14   ; 03
- D 0 - I - 0x00CE9B 03:8E8B: 00        .byte $00, $14   ; 04
- D 0 - I - 0x00CE9D 03:8E8D: F8        .byte $F8, $0C   ; 05
- D 0 - I - 0x00CE9F 03:8E8F: 00        .byte $00, $0C   ; 06
- D 0 - I - 0x00CEA1 03:8E91: F8        .byte $F8, $04   ; 07
- D 0 - I - 0x00CEA3 03:8E93: 00        .byte $00, $04   ; 08
- D 0 - I - 0x00CEA5 03:8E95: 08        .byte $08, $04   ; 09



_off030_8E97_23:
- D 0 - I - 0x00CEA7 03:8E97: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00CEA9 03:8E99: 31 98     .word sub_06_9831_00
- D 0 - I - 0x00CEAB 03:8E9B: 0C 83     .word sub_06_830C_01
- D 0 - I - 0x00CEAD 03:8E9D: 78 BC     .word sub_06_BC78_02
- D 0 - I - 0x00CEAF 03:8E9F: 67 AC     .word sub_06_AC67_03
- D 0 - I - 0x00CEB1 03:8EA1: A0 87     .word sub_06_87A0_04
@end:
- D 0 - I - 0x00CEB3 03:8EA3: 04        .byte con_sub_04, $0C, $07   ; 
- D 0 - I - 0x00CEB6 03:8EA6: BB 8E     .word off_04_8EBB_00_spr_A
- - - - - - 0x00CEB8 03:8EA8: C7 8E     .word off_04_8EC7_01_spr_A
- D 0 - I - 0x00CEBA 03:8EAA: AF 8E     .word off_04_8EAF_02_spr_T
- D 0 - I - 0x00CEBC 03:8EAC: D3 8E     .word off_04_8ED3_03_spr_XY
- D 0 - I - 0x00CEBE 03:8EAE: 00        .byte con_sub_00   ; 



off_04_8EAF_02_spr_T:
- D 0 - I - 0x00CEBF 03:8EAF: 2F        .byte $2F   ; 01
- D 0 - I - 0x00CEC0 03:8EB0: 00        .byte $00   ; 02
- D 0 - I - 0x00CEC1 03:8EB1: 01        .byte $01   ; 03
- D 0 - I - 0x00CEC2 03:8EB2: 2E        .byte $2E   ; 04
- D 0 - I - 0x00CEC3 03:8EB3: 47        .byte $47   ; 05
- D 0 - I - 0x00CEC4 03:8EB4: 48        .byte $48   ; 06
- D 0 - I - 0x00CEC5 03:8EB5: 57        .byte $57   ; 07
- D 0 - I - 0x00CEC6 03:8EB6: 58        .byte $58   ; 08
- D 0 - I - 0x00CEC7 03:8EB7: 60        .byte $60   ; 09
- D 0 - I - 0x00CEC8 03:8EB8: 61        .byte $61   ; 0A
- D 0 - I - 0x00CEC9 03:8EB9: 70        .byte $70   ; 0B
- D 0 - I - 0x00CECA 03:8EBA: 71        .byte $71   ; 0C



off_04_8EBB_00_spr_A:
- D 0 - I - 0x00CECB 03:8EBB: 40        .byte $40   ; 01
- D 0 - I - 0x00CECC 03:8EBC: 00        .byte $00   ; 02
- D 0 - I - 0x00CECD 03:8EBD: 00        .byte $00   ; 03
- D 0 - I - 0x00CECE 03:8EBE: 00        .byte $00   ; 04
- D 0 - I - 0x00CECF 03:8EBF: 00        .byte $00   ; 05
- D 0 - I - 0x00CED0 03:8EC0: 01        .byte $01   ; 06
- D 0 - I - 0x00CED1 03:8EC1: 01        .byte $01   ; 07
- D 0 - I - 0x00CED2 03:8EC2: 01        .byte $01   ; 08
- D 0 - I - 0x00CED3 03:8EC3: 01        .byte $01   ; 09
- D 0 - I - 0x00CED4 03:8EC4: 01        .byte $01   ; 0A
- D 0 - I - 0x00CED5 03:8EC5: 00        .byte $00   ; 0B
- D 0 - I - 0x00CED6 03:8EC6: 00        .byte $00   ; 0C



off_04_8EC7_01_spr_A:
- - - - - - 0x00CED7 03:8EC7: 40        .byte $40   ; 01
- - - - - - 0x00CED8 03:8EC8: 00        .byte $00   ; 02
- - - - - - 0x00CED9 03:8EC9: 00        .byte $00   ; 03
- - - - - - 0x00CEDA 03:8ECA: 00        .byte $00   ; 04
- - - - - - 0x00CEDB 03:8ECB: 00        .byte $00   ; 05
- - - - - - 0x00CEDC 03:8ECC: 00        .byte $00   ; 06
- - - - - - 0x00CEDD 03:8ECD: 00        .byte $00   ; 07
- - - - - - 0x00CEDE 03:8ECE: 00        .byte $00   ; 08
- - - - - - 0x00CEDF 03:8ECF: 00        .byte $00   ; 09
- - - - - - 0x00CEE0 03:8ED0: 00        .byte $00   ; 0A
- - - - - - 0x00CEE1 03:8ED1: 00        .byte $00   ; 0B
- - - - - - 0x00CEE2 03:8ED2: 00        .byte $00   ; 0C



off_04_8ED3_03_spr_XY:
- D 0 - I - 0x00CEE3 03:8ED3: E9        .byte $E9, $24   ; 01
- D 0 - I - 0x00CEE5 03:8ED5: F3        .byte $F3, $24   ; 02
- D 0 - I - 0x00CEE7 03:8ED7: FB        .byte $FB, $24   ; 03
- D 0 - I - 0x00CEE9 03:8ED9: EC        .byte $EC, $1C   ; 04
- D 0 - I - 0x00CEEB 03:8EDB: F4        .byte $F4, $1C   ; 05
- D 0 - I - 0x00CEED 03:8EDD: FC        .byte $FC, $1C   ; 06
- D 0 - I - 0x00CEEF 03:8EDF: F5        .byte $F5, $14   ; 07
- D 0 - I - 0x00CEF1 03:8EE1: FD        .byte $FD, $14   ; 08
- D 0 - I - 0x00CEF3 03:8EE3: F5        .byte $F5, $0C   ; 09
- D 0 - I - 0x00CEF5 03:8EE5: FD        .byte $FD, $0C   ; 0A
- D 0 - I - 0x00CEF7 03:8EE7: F5        .byte $F5, $04   ; 0B
- D 0 - I - 0x00CEF9 03:8EE9: FD        .byte $FD, $04   ; 0C



_off030_8EEB_24:
_off030_8EEB_2A:
_off030_8EEB_2F:
- D 0 - I - 0x00CEFB 03:8EEB: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00CEFD 03:8EED: 44 98     .word sub_06_9844_00
- D 0 - I - 0x00CEFF 03:8EEF: 3D 83     .word sub_06_833D_01
- D 0 - I - 0x00CF01 03:8EF1: 62 BB     .word sub_06_BB62_02
- D 0 - I - 0x00CF03 03:8EF3: 3B AA     .word sub_06_AA3B_03
- D 0 - I - 0x00CF05 03:8EF5: B3 87     .word sub_06_87B3_04
@end:
- D 0 - I - 0x00CF07 03:8EF7: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00CF08 03:8EF8: F1 95     .word sub_05_95F1
- D 0 - I - 0x00CF0A 03:8EFA: 00        .byte con_sub_00   ; 



_off030_8EFB_25:
_off030_8EFB_2B:
- D 0 - I - 0x00CF0B 03:8EFB: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00CF0D 03:8EFD: 55 98     .word sub_06_9855_00
- D 0 - I - 0x00CF0F 03:8EFF: 5E 83     .word sub_06_835E_01
- D 0 - I - 0x00CF11 03:8F01: 52 BD     .word sub_06_BD52_02
- D 0 - I - 0x00CF13 03:8F03: A1 AC     .word sub_06_ACA1_03
- D 0 - I - 0x00CF15 03:8F05: C4 87     .word sub_06_87C4_04
@end:
- D 0 - I - 0x00CF17 03:8F07: 04        .byte con_sub_04, $0A, $07   ; 
- D 0 - I - 0x00CF1A 03:8F0A: 1D 8F     .word off_04_8F1D_00_spr_A
- - - - - - 0x00CF1C 03:8F0C: 27 8F     .word off_04_8F27_01_spr_A
- D 0 - I - 0x00CF1E 03:8F0E: 13 8F     .word off_04_8F13_02_spr_T
- D 0 - I - 0x00CF20 03:8F10: 31 8F     .word off_04_8F31_03_spr_XY
- D 0 - I - 0x00CF22 03:8F12: 00        .byte con_sub_00   ; 



off_04_8F13_02_spr_T:
- D 0 - I - 0x00CF23 03:8F13: 00        .byte $00   ; 01
- D 0 - I - 0x00CF24 03:8F14: 01        .byte $01   ; 02
- D 0 - I - 0x00CF25 03:8F15: 2D        .byte $2D   ; 03
- D 0 - I - 0x00CF26 03:8F16: 48        .byte $48   ; 04
- D 0 - I - 0x00CF27 03:8F17: 1A        .byte $1A   ; 05
- D 0 - I - 0x00CF28 03:8F18: 76        .byte $76   ; 06
- D 0 - I - 0x00CF29 03:8F19: 58        .byte $58   ; 07
- D 0 - I - 0x00CF2A 03:8F1A: 2C        .byte $2C   ; 08
- D 0 - I - 0x00CF2B 03:8F1B: 37        .byte $37   ; 09
- D 0 - I - 0x00CF2C 03:8F1C: 17        .byte $17   ; 0A



off_04_8F1D_00_spr_A:
- D 0 - I - 0x00CF2D 03:8F1D: 00        .byte $00   ; 01
- D 0 - I - 0x00CF2E 03:8F1E: 00        .byte $00   ; 02
- D 0 - I - 0x00CF2F 03:8F1F: 00        .byte $00   ; 03
- D 0 - I - 0x00CF30 03:8F20: 01        .byte $01   ; 04
- D 0 - I - 0x00CF31 03:8F21: 00        .byte $00   ; 05
- D 0 - I - 0x00CF32 03:8F22: 00        .byte $00   ; 06
- D 0 - I - 0x00CF33 03:8F23: 01        .byte $01   ; 07
- D 0 - I - 0x00CF34 03:8F24: 00        .byte $00   ; 08
- D 0 - I - 0x00CF35 03:8F25: 41        .byte $41   ; 09
- D 0 - I - 0x00CF36 03:8F26: 00        .byte $00   ; 0A



off_04_8F27_01_spr_A:
- - - - - - 0x00CF37 03:8F27: 00        .byte $00   ; 01
- - - - - - 0x00CF38 03:8F28: 00        .byte $00   ; 02
- - - - - - 0x00CF39 03:8F29: 00        .byte $00   ; 03
- - - - - - 0x00CF3A 03:8F2A: 00        .byte $00   ; 04
- - - - - - 0x00CF3B 03:8F2B: 00        .byte $00   ; 05
- - - - - - 0x00CF3C 03:8F2C: 00        .byte $00   ; 06
- - - - - - 0x00CF3D 03:8F2D: 00        .byte $00   ; 07
- - - - - - 0x00CF3E 03:8F2E: 00        .byte $00   ; 08
- - - - - - 0x00CF3F 03:8F2F: 40        .byte $40   ; 09
- - - - - - 0x00CF40 03:8F30: 00        .byte $00   ; 0A



off_04_8F31_03_spr_XY:
- D 0 - I - 0x00CF41 03:8F31: F5        .byte $F5, $24   ; 01
- D 0 - I - 0x00CF43 03:8F33: FD        .byte $FD, $24   ; 02
- D 0 - I - 0x00CF45 03:8F35: F7        .byte $F7, $1C   ; 03
- D 0 - I - 0x00CF47 03:8F37: FE        .byte $FE, $1C   ; 04
- D 0 - I - 0x00CF49 03:8F39: F1        .byte $F1, $13   ; 05
- D 0 - I - 0x00CF4B 03:8F3B: F7        .byte $F7, $14   ; 06
- D 0 - I - 0x00CF4D 03:8F3D: FD        .byte $FD, $14   ; 07
- D 0 - I - 0x00CF4F 03:8F3F: F4        .byte $F4, $0C   ; 08
- D 0 - I - 0x00CF51 03:8F41: FC        .byte $FC, $0C   ; 09
- D 0 - I - 0x00CF53 03:8F43: FB        .byte $FB, $04   ; 0A



_off030_8F45_00:
- D 0 - I - 0x00CF55 03:8F45: 04        .byte con_sub_04, $0B, $09   ; 
- D 0 - I - 0x00CF58 03:8F48: B9 8F     .word off_04_8FB9_00_spr_A
- D 0 - I - 0x00CF5A 03:8F4A: 6C 8F     .word off_04_8F6C_01_spr_A
- D 0 - I - 0x00CF5C 03:8F4C: D3 8F     .word off_04_8FD3_02_spr_A
- D 0 - I - 0x00CF5E 03:8F4E: 5F 8F     .word off_04_8F5F_03_spr_T
- D 0 - I - 0x00CF60 03:8F50: 7A 8F     .word off_04_8F7A_04_spr_XY
- D 0 - I - 0x00CF62 03:8F52: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00CF64 03:8F54: 20 B5     .word sub_06_B520_00
- D 0 - I - 0x00CF66 03:8F56: 2C B5     .word sub_06_B52C_01
- D 0 - I - 0x00CF68 03:8F58: 3A B5     .word sub_06_B53A_02
- D 0 - I - 0x00CF6A 03:8F5A: 45 B5     .word sub_06_B545_03
- D 0 - I - 0x00CF6C 03:8F5C: 50 B5     .word sub_06_B550_04
@end:
- D 0 - I - 0x00CF6E 03:8F5E: 00        .byte con_sub_00   ; 



off_04_8F5F_03_spr_T:
off_01_8F5F_spr_T:
off_04_8F5F_02_spr_T:
- D 0 - I - 0x00CF6F 03:8F5F: 00        .byte $00   ; 01
- D 0 - I - 0x00CF70 03:8F60: 01        .byte $01   ; 02
- D 0 - I - 0x00CF71 03:8F61: 10        .byte $10   ; 03
- D 0 - I - 0x00CF72 03:8F62: 11        .byte $11   ; 04
- D 0 - I - 0x00CF73 03:8F63: 20        .byte $20   ; 05
- D 0 - I - 0x00CF74 03:8F64: 21        .byte $21   ; 06
- D 0 - I - 0x00CF75 03:8F65: 15        .byte $15   ; 07
- D 0 - I - 0x00CF76 03:8F66: 30        .byte $30   ; 08
- D 0 - I - 0x00CF77 03:8F67: 31        .byte $31   ; 09
- D 0 - I - 0x00CF78 03:8F68: 40        .byte $40   ; 0A
- D 0 - I - 0x00CF79 03:8F69: 41        .byte $41   ; 0B
- D 0 - I - 0x00CF7A 03:8F6A: EF        .byte $EF   ; 0C
- D 0 - I - 0x00CF7B 03:8F6B: EF        .byte $EF   ; 0D



off_04_8F6C_01_spr_A:
- D 0 - I - 0x00CF7C 03:8F6C: 00        .byte $00   ; 01
- D 0 - I - 0x00CF7D 03:8F6D: 00        .byte $00   ; 02
- D 0 - I - 0x00CF7E 03:8F6E: 00        .byte $00   ; 03
- D 0 - I - 0x00CF7F 03:8F6F: 00        .byte $00   ; 04
- D 0 - I - 0x00CF80 03:8F70: 00        .byte $00   ; 05
- D 0 - I - 0x00CF81 03:8F71: 00        .byte $00   ; 06
- D 0 - I - 0x00CF82 03:8F72: 00        .byte $00   ; 07
- D 0 - I - 0x00CF83 03:8F73: 00        .byte $00   ; 08
- D 0 - I - 0x00CF84 03:8F74: 00        .byte $00   ; 09
- D 0 - I - 0x00CF85 03:8F75: 00        .byte $00   ; 0A
- D 0 - I - 0x00CF86 03:8F76: 00        .byte $00   ; 0B
- D 0 - I - 0x00CF87 03:8F77: 00        .byte $00   ; 0C
- D 0 - I - 0x00CF88 03:8F78: 00        .byte $00   ; 0D
- D 0 - I - 0x00CF89 03:8F79: 00        .byte $00   ; 0E



off_04_8F7A_04_spr_XY:
off_01_8F7A_spr_XY:
off_04_8F7A_03_spr_XY:
- D 0 - I - 0x00CF8A 03:8F7A: FC        .byte $FC, $24   ; 01
- D 0 - I - 0x00CF8C 03:8F7C: 04        .byte $04, $24   ; 02
- D 0 - I - 0x00CF8E 03:8F7E: FC        .byte $FC, $1C   ; 03
- D 0 - I - 0x00CF90 03:8F80: 04        .byte $04, $1C   ; 04
- D 0 - I - 0x00CF92 03:8F82: FD        .byte $FD, $14   ; 05
- D 0 - I - 0x00CF94 03:8F84: 05        .byte $05, $14   ; 06
- D 0 - I - 0x00CF96 03:8F86: 01        .byte $01, $14   ; 07
- D 0 - I - 0x00CF98 03:8F88: FC        .byte $FC, $0C   ; 08
- D 0 - I - 0x00CF9A 03:8F8A: 04        .byte $04, $0C   ; 09
- D 0 - I - 0x00CF9C 03:8F8C: FA        .byte $FA, $04   ; 0A
- D 0 - I - 0x00CF9E 03:8F8E: 07        .byte $07, $04   ; 0B
- D 0 - I - 0x00CFA0 03:8F90: F2        .byte $F2, $24   ; 0C
- D 0 - I - 0x00CFA2 03:8F92: 0A        .byte $0A, $24   ; 0D



_off030_8F94_01:
- D 0 - I - 0x00CFA4 03:8F94: 04        .byte con_sub_04, $0B, $09   ; 
- D 0 - I - 0x00CFA7 03:8F97: B9 8F     .word off_04_8FB9_00_spr_A
- D 0 - I - 0x00CFA9 03:8F99: 6C 8F     .word off_04_8F6C_01_spr_A
- D 0 - I - 0x00CFAB 03:8F9B: D3 8F     .word off_04_8FD3_02_spr_A
- D 0 - I - 0x00CFAD 03:8F9D: AE 8F     .word off_04_8FAE_03_spr_T
- D 0 - I - 0x00CFAF 03:8F9F: DE 8F     .word off_04_8FDE_04_spr_XY
- D 0 - I - 0x00CFB1 03:8FA1: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00CFB3 03:8FA3: 5B B5     .word sub_06_B55B_00
- D 0 - I - 0x00CFB5 03:8FA5: 67 B5     .word sub_06_B567_01
- D 0 - I - 0x00CFB7 03:8FA7: 73 B5     .word sub_06_B573_02
- D 0 - I - 0x00CFB9 03:8FA9: 7D B5     .word sub_06_B57D_03
- D 0 - I - 0x00CFBB 03:8FAB: 87 B5     .word sub_06_B587_04
@end:
- D 0 - I - 0x00CFBD 03:8FAD: 00        .byte con_sub_00   ; 



off_04_8FAE_03_spr_T:
- D 0 - I - 0x00CFBE 03:8FAE: 00        .byte $00   ; 01
- D 0 - I - 0x00CFBF 03:8FAF: 01        .byte $01   ; 02
- D 0 - I - 0x00CFC0 03:8FB0: 10        .byte $10   ; 03
- D 0 - I - 0x00CFC1 03:8FB1: 11        .byte $11   ; 04
- D 0 - I - 0x00CFC2 03:8FB2: 02        .byte $02   ; 05
- D 0 - I - 0x00CFC3 03:8FB3: 21        .byte $21   ; 06
- D 0 - I - 0x00CFC4 03:8FB4: 15        .byte $15   ; 07
- D 0 - I - 0x00CFC5 03:8FB5: 60        .byte $60   ; 08
- D 0 - I - 0x00CFC6 03:8FB6: 61        .byte $61   ; 09
- D 0 - I - 0x00CFC7 03:8FB7: 70        .byte $70   ; 0A
- D 0 - I - 0x00CFC8 03:8FB8: 71        .byte $71   ; 0B



off_04_8FB9_00_spr_A:
- D 0 - I - 0x00CFC9 03:8FB9: 00        .byte $00   ; 01
- D 0 - I - 0x00CFCA 03:8FBA: 00        .byte $00   ; 02
- D 0 - I - 0x00CFCB 03:8FBB: 00        .byte $00   ; 03
- D 0 - I - 0x00CFCC 03:8FBC: 00        .byte $00   ; 04
- D 0 - I - 0x00CFCD 03:8FBD: 01        .byte $01   ; 05
- D 0 - I - 0x00CFCE 03:8FBE: 01        .byte $01   ; 06
- D 0 - I - 0x00CFCF 03:8FBF: 00        .byte $00   ; 07
- D 0 - I - 0x00CFD0 03:8FC0: 01        .byte $01   ; 08
- D 0 - I - 0x00CFD1 03:8FC1: 01        .byte $01   ; 09
- D 0 - I - 0x00CFD2 03:8FC2: 00        .byte $00   ; 0A
- D 0 - I - 0x00CFD3 03:8FC3: 00        .byte $00   ; 0B
- D 0 - I - 0x00CFD4 03:8FC4: 02        .byte $02   ; 0C
- D 0 - I - 0x00CFD5 03:8FC5: 02        .byte $02   ; 0D



off_04_8FC6_01_spr_A:
- - - - - - 0x00CFD6 03:8FC6: 00        .byte $00   ; 01
- - - - - - 0x00CFD7 03:8FC7: 00        .byte $00   ; 02
- - - - - - 0x00CFD8 03:8FC8: 00        .byte $00   ; 03
- - - - - - 0x00CFD9 03:8FC9: 00        .byte $00   ; 04
- - - - - - 0x00CFDA 03:8FCA: 00        .byte $00   ; 05
- - - - - - 0x00CFDB 03:8FCB: 00        .byte $00   ; 06
- - - - - - 0x00CFDC 03:8FCC: 00        .byte $00   ; 07
- - - - - - 0x00CFDD 03:8FCD: 00        .byte $00   ; 08
- - - - - - 0x00CFDE 03:8FCE: 00        .byte $00   ; 09
- - - - - - 0x00CFDF 03:8FCF: 00        .byte $00   ; 0A
- - - - - - 0x00CFE0 03:8FD0: 00        .byte $00   ; 0B
- - - - - - 0x00CFE1 03:8FD1: 02        .byte $02   ; 0C
- - - - - - 0x00CFE2 03:8FD2: 02        .byte $02   ; 0D



off_04_8FD3_02_spr_A:
- D 0 - I - 0x00CFE3 03:8FD3: 02        .byte $02   ; 01
- D 0 - I - 0x00CFE4 03:8FD4: 02        .byte $02   ; 02
- D 0 - I - 0x00CFE5 03:8FD5: 02        .byte $02   ; 03
- D 0 - I - 0x00CFE6 03:8FD6: 02        .byte $02   ; 04
- D 0 - I - 0x00CFE7 03:8FD7: 02        .byte $02   ; 05
- D 0 - I - 0x00CFE8 03:8FD8: 02        .byte $02   ; 06
- D 0 - I - 0x00CFE9 03:8FD9: 02        .byte $02   ; 07
- D 0 - I - 0x00CFEA 03:8FDA: 02        .byte $02   ; 08
- D 0 - I - 0x00CFEB 03:8FDB: 02        .byte $02   ; 09
- D 0 - I - 0x00CFEC 03:8FDC: 02        .byte $02   ; 0A
- D 0 - I - 0x00CFED 03:8FDD: 02        .byte $02   ; 0B



off_04_8FDE_04_spr_XY:
- D 0 - I - 0x00CFEE 03:8FDE: FB        .byte $FB, $23   ; 01
- D 0 - I - 0x00CFF0 03:8FE0: 03        .byte $03, $23   ; 02
- D 0 - I - 0x00CFF2 03:8FE2: FB        .byte $FB, $1B   ; 03
- D 0 - I - 0x00CFF4 03:8FE4: 03        .byte $03, $1B   ; 04
- D 0 - I - 0x00CFF6 03:8FE6: FC        .byte $FC, $13   ; 05
- D 0 - I - 0x00CFF8 03:8FE8: 04        .byte $04, $13   ; 06
- D 0 - I - 0x00CFFA 03:8FEA: 00        .byte $00, $13   ; 07
- D 0 - I - 0x00CFFC 03:8FEC: FC        .byte $FC, $0B   ; 08
- D 0 - I - 0x00CFFE 03:8FEE: 04        .byte $04, $0B   ; 09
- D 0 - I - 0x00D000 03:8FF0: FC        .byte $FC, $03   ; 0A
- D 0 - I - 0x00D002 03:8FF2: 04        .byte $04, $03   ; 0B



_off030_8FF4_08:
- D 0 - I - 0x00D004 03:8FF4: 04        .byte con_sub_04, $0A, $09   ; 
- D 0 - I - 0x00D007 03:8FF7: 5F 96     .word off_04_965F_00_spr_A
- D 0 - I - 0x00D009 03:8FF9: 6C 8F     .word off_04_8F6C_01_spr_A
- D 0 - I - 0x00D00B 03:8FFB: 69 96     .word off_04_9669_02_spr_A
- D 0 - I - 0x00D00D 03:8FFD: 0E 90     .word off_04_900E_03_spr_T
- D 0 - I - 0x00D00F 03:8FFF: 18 90     .word off_04_9018_04_spr_XY
- D 0 - I - 0x00D011 03:9001: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D013 03:9003: C8 B5     .word sub_06_B5C8_00
- D 0 - I - 0x00D015 03:9005: 7F B6     .word sub_06_B67F_01
- D 0 - I - 0x00D017 03:9007: E0 B6     .word sub_06_B6E0_02
- D 0 - I - 0x00D019 03:9009: 43 B7     .word sub_06_B743_03
- D 0 - I - 0x00D01B 03:900B: A4 B7     .word sub_06_B7A4_04
@end:
- D 0 - I - 0x00D01D 03:900D: 00        .byte con_sub_00   ; 



off_04_900E_03_spr_T:
- D 0 - I - 0x00D01E 03:900E: 32        .byte $32   ; 01
- D 0 - I - 0x00D01F 03:900F: 33        .byte $33   ; 02
- D 0 - I - 0x00D020 03:9010: 42        .byte $42   ; 03
- D 0 - I - 0x00D021 03:9011: 16        .byte $16   ; 04
- D 0 - I - 0x00D022 03:9012: 26        .byte $26   ; 05
- D 0 - I - 0x00D023 03:9013: 27        .byte $27   ; 06
- D 0 - I - 0x00D024 03:9014: 50        .byte $50   ; 07
- D 0 - I - 0x00D025 03:9015: 51        .byte $51   ; 08
- D 0 - I - 0x00D026 03:9016: 40        .byte $40   ; 09
- D 0 - I - 0x00D027 03:9017: 17        .byte $17   ; 0A



off_04_9018_04_spr_XY:
- D 0 - I - 0x00D028 03:9018: 01        .byte $01, $24   ; 01
- D 0 - I - 0x00D02A 03:901A: 09        .byte $09, $24   ; 02
- D 0 - I - 0x00D02C 03:901C: 00        .byte $00, $1C   ; 03
- D 0 - I - 0x00D02E 03:901E: 08        .byte $08, $1C   ; 04
- D 0 - I - 0x00D030 03:9020: FF        .byte $FF, $14   ; 05
- D 0 - I - 0x00D032 03:9022: 07        .byte $07, $14   ; 06
- D 0 - I - 0x00D034 03:9024: FD        .byte $FD, $0C   ; 07
- D 0 - I - 0x00D036 03:9026: 05        .byte $05, $0C   ; 08
- D 0 - I - 0x00D038 03:9028: FC        .byte $FC, $04   ; 09
- D 0 - I - 0x00D03A 03:902A: 05        .byte $05, $04   ; 0A



_off030_902C_0B:
- D 0 - I - 0x00D03C 03:902C: 04        .byte con_sub_04, $0A, $09   ; 
- D 0 - I - 0x00D03F 03:902F: 44 90     .word off_04_9044_00_spr_A
- D 0 - I - 0x00D041 03:9031: 6C 8F     .word off_04_8F6C_01_spr_A
- D 0 - I - 0x00D043 03:9033: 4E 90     .word off_04_904E_02_spr_A
- D 0 - I - 0x00D045 03:9035: 3A 90     .word off_04_903A_03_spr_T
- D 0 - I - 0x00D047 03:9037: 58 90     .word off_04_9058_04_spr_XY
- D 0 - I - 0x00D049 03:9039: 00        .byte con_sub_00   ; 



off_04_903A_03_spr_T:
- D 0 - I - 0x00D04A 03:903A: 32        .byte $32   ; 01
- D 0 - I - 0x00D04B 03:903B: 33        .byte $33   ; 02
- D 0 - I - 0x00D04C 03:903C: 03        .byte $03   ; 03
- D 0 - I - 0x00D04D 03:903D: 52        .byte $52   ; 04
- D 0 - I - 0x00D04E 03:903E: 53        .byte $53   ; 05
- D 0 - I - 0x00D04F 03:903F: 72        .byte $72   ; 06
- D 0 - I - 0x00D050 03:9040: 73        .byte $73   ; 07
- D 0 - I - 0x00D051 03:9041: 62        .byte $62   ; 08
- D 0 - I - 0x00D052 03:9042: 63        .byte $63   ; 09
- D 0 - I - 0x00D053 03:9043: 40        .byte $40   ; 0A



off_04_9044_00_spr_A:
- D 0 - I - 0x00D054 03:9044: 00        .byte $00   ; 01
- D 0 - I - 0x00D055 03:9045: 00        .byte $00   ; 02
- D 0 - I - 0x00D056 03:9046: 01        .byte $01   ; 03
- D 0 - I - 0x00D057 03:9047: 00        .byte $00   ; 04
- D 0 - I - 0x00D058 03:9048: 00        .byte $00   ; 05
- D 0 - I - 0x00D059 03:9049: 00        .byte $00   ; 06
- D 0 - I - 0x00D05A 03:904A: 01        .byte $01   ; 07
- D 0 - I - 0x00D05B 03:904B: 00        .byte $00   ; 08
- D 0 - I - 0x00D05C 03:904C: 00        .byte $00   ; 09
- D 0 - I - 0x00D05D 03:904D: 00        .byte $00   ; 0A



off_04_904E_02_spr_A:
- D 0 - I - 0x00D05E 03:904E: 02        .byte $02   ; 01
- D 0 - I - 0x00D05F 03:904F: 02        .byte $02   ; 02
- D 0 - I - 0x00D060 03:9050: 02        .byte $02   ; 03
- D 0 - I - 0x00D061 03:9051: 02        .byte $02   ; 04
- D 0 - I - 0x00D062 03:9052: 02        .byte $02   ; 05
- D 0 - I - 0x00D063 03:9053: 02        .byte $02   ; 06
- D 0 - I - 0x00D064 03:9054: 02        .byte $02   ; 07
- D 0 - I - 0x00D065 03:9055: 02        .byte $02   ; 08
- D 0 - I - 0x00D066 03:9056: 02        .byte $02   ; 09
- D 0 - I - 0x00D067 03:9057: 02        .byte $02   ; 0A



off_04_9058_04_spr_XY:
- D 0 - I - 0x00D068 03:9058: 0D        .byte $0D, $1C   ; 01
- D 0 - I - 0x00D06A 03:905A: 15        .byte $15, $1C   ; 02
- D 0 - I - 0x00D06C 03:905C: 00        .byte $00, $14   ; 03
- D 0 - I - 0x00D06E 03:905E: 08        .byte $08, $14   ; 04
- D 0 - I - 0x00D070 03:9060: 10        .byte $10, $14   ; 05
- D 0 - I - 0x00D072 03:9062: F8        .byte $F8, $12   ; 06
- D 0 - I - 0x00D074 03:9064: 00        .byte $00, $0C   ; 07
- D 0 - I - 0x00D076 03:9066: 08        .byte $08, $0C   ; 08
- D 0 - I - 0x00D078 03:9068: 10        .byte $10, $0C   ; 09
- D 0 - I - 0x00D07A 03:906A: FD        .byte $FD, $04   ; 0A



_off030_906C_0A:
- D 0 - I - 0x00D07C 03:906C: 04        .byte con_sub_04, $08, $09   ; 
- D 0 - I - 0x00D07F 03:906F: 82 90     .word off_04_9082_00_spr_A
- D 0 - I - 0x00D081 03:9071: 6C 8F     .word off_04_8F6C_01_spr_A
- D 0 - I - 0x00D083 03:9073: 8A 90     .word off_04_908A_02_spr_A
- D 0 - I - 0x00D085 03:9075: 7A 90     .word off_04_907A_03_spr_T
- D 0 - I - 0x00D087 03:9077: 92 90     .word off_04_9092_04_spr_XY
- D 0 - I - 0x00D089 03:9079: 00        .byte con_sub_00   ; 



off_04_907A_03_spr_T:
- D 0 - I - 0x00D08A 03:907A: 04        .byte $04   ; 01
- D 0 - I - 0x00D08B 03:907B: 23        .byte $23   ; 02
- D 0 - I - 0x00D08C 03:907C: 24        .byte $24   ; 03
- D 0 - I - 0x00D08D 03:907D: 72        .byte $72   ; 04
- D 0 - I - 0x00D08E 03:907E: 13        .byte $13   ; 05
- D 0 - I - 0x00D08F 03:907F: 14        .byte $14   ; 06
- D 0 - I - 0x00D090 03:9080: 05        .byte $05   ; 07
- D 0 - I - 0x00D091 03:9081: 06        .byte $06   ; 08



off_04_9082_00_spr_A:
- D 0 - I - 0x00D092 03:9082: 01        .byte $01   ; 01
- D 0 - I - 0x00D093 03:9083: 00        .byte $00   ; 02
- D 0 - I - 0x00D094 03:9084: 00        .byte $00   ; 03
- D 0 - I - 0x00D095 03:9085: 00        .byte $00   ; 04
- D 0 - I - 0x00D096 03:9086: 00        .byte $00   ; 05
- D 0 - I - 0x00D097 03:9087: 01        .byte $01   ; 06
- D 0 - I - 0x00D098 03:9088: 00        .byte $00   ; 07
- D 0 - I - 0x00D099 03:9089: 00        .byte $00   ; 08



off_04_908A_02_spr_A:
- D 0 - I - 0x00D09A 03:908A: 02        .byte $02   ; 01
- D 0 - I - 0x00D09B 03:908B: 02        .byte $02   ; 02
- D 0 - I - 0x00D09C 03:908C: 02        .byte $02   ; 03
- D 0 - I - 0x00D09D 03:908D: 02        .byte $02   ; 04
- D 0 - I - 0x00D09E 03:908E: 02        .byte $02   ; 05
- D 0 - I - 0x00D09F 03:908F: 02        .byte $02   ; 06
- D 0 - I - 0x00D0A0 03:9090: 02        .byte $02   ; 07
- D 0 - I - 0x00D0A1 03:9091: 02        .byte $02   ; 08



off_04_9092_04_spr_XY:
- D 0 - I - 0x00D0A2 03:9092: 05        .byte $05, $0C   ; 01
- D 0 - I - 0x00D0A4 03:9094: 10        .byte $10, $0C   ; 02
- D 0 - I - 0x00D0A6 03:9096: 18        .byte $18, $0C   ; 03
- D 0 - I - 0x00D0A8 03:9098: F8        .byte $F8, $04   ; 04
- D 0 - I - 0x00D0AA 03:909A: 00        .byte $00, $04   ; 05
- D 0 - I - 0x00D0AC 03:909C: 08        .byte $08, $04   ; 06
- D 0 - I - 0x00D0AE 03:909E: 10        .byte $10, $04   ; 07
- D 0 - I - 0x00D0B0 03:90A0: 18        .byte $18, $04   ; 08



_off030_90A2_07:
- D 0 - I - 0x00D0B2 03:90A2: 04        .byte con_sub_04, $0A, $09   ; 
- D 0 - I - 0x00D0B5 03:90A5: 5F 96     .word off_04_965F_00_spr_A
- D 0 - I - 0x00D0B7 03:90A7: 6C 8F     .word off_04_8F6C_01_spr_A
- D 0 - I - 0x00D0B9 03:90A9: 69 96     .word off_04_9669_02_spr_A
- D 0 - I - 0x00D0BB 03:90AB: BC 90     .word off_04_90BC_03_spr_T
- D 0 - I - 0x00D0BD 03:90AD: 18 90     .word off_04_9018_04_spr_XY
- D 0 - I - 0x00D0BF 03:90AF: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D0C1 03:90B1: BC B5     .word sub_06_B5BC_00
- D 0 - I - 0x00D0C3 03:90B3: 73 B6     .word sub_06_B673_01
- D 0 - I - 0x00D0C5 03:90B5: D6 B6     .word sub_06_B6D6_02
- D 0 - I - 0x00D0C7 03:90B7: 39 B7     .word sub_06_B739_03
- D 0 - I - 0x00D0C9 03:90B9: 9A B7     .word sub_06_B79A_04
@end:
- D 0 - I - 0x00D0CB 03:90BB: 00        .byte con_sub_00   ; 



off_04_90BC_03_spr_T:
- D 0 - I - 0x00D0CC 03:90BC: 25        .byte $25   ; 01
- D 0 - I - 0x00D0CD 03:90BD: 01        .byte $01   ; 02
- D 0 - I - 0x00D0CE 03:90BE: 22        .byte $22   ; 03
- D 0 - I - 0x00D0CF 03:90BF: 16        .byte $16   ; 04
- D 0 - I - 0x00D0D0 03:90C0: 26        .byte $26   ; 05
- D 0 - I - 0x00D0D1 03:90C1: 27        .byte $27   ; 06
- D 0 - I - 0x00D0D2 03:90C2: 50        .byte $50   ; 07
- D 0 - I - 0x00D0D3 03:90C3: 51        .byte $51   ; 08
- D 0 - I - 0x00D0D4 03:90C4: 40        .byte $40   ; 09
- D 0 - I - 0x00D0D5 03:90C5: 17        .byte $17   ; 0A



_off030_90C6_26:
- D 0 - I - 0x00D0D6 03:90C6: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D0D8 03:90C8: F9 9C     .word sub_06_9CF9_00
- D 0 - I - 0x00D0DA 03:90CA: 42 84     .word sub_06_8442_01
- - - - - - 0x00D0DC 03:90CC: 81 BC     .word sub_06_BC81_02
- - - - - - 0x00D0DE 03:90CE: 4C AA     .word sub_06_AA4C_03
- D 0 - I - 0x00D0E0 03:90D0: F8 87     .word sub_06_87F8_04
@end:
- D 0 - I - 0x00D0E2 03:90D2: 04        .byte con_sub_04, $0A, $07   ; 
- D 0 - I - 0x00D0E5 03:90D5: E8 90     .word off_04_90E8_00_spr_A
- - - - - - 0x00D0E7 03:90D7: F2 90     .word off_04_90F2_01_spr_A
- D 0 - I - 0x00D0E9 03:90D9: DE 90     .word off_04_90DE_02_spr_T
- D 0 - I - 0x00D0EB 03:90DB: FC 90     .word off_04_90FC_03_spr_XY
- D 0 - I - 0x00D0ED 03:90DD: 00        .byte con_sub_00   ; 



off_04_90DE_02_spr_T:
- D 0 - I - 0x00D0EE 03:90DE: 01        .byte $01   ; 01
- D 0 - I - 0x00D0EF 03:90DF: 00        .byte $00   ; 02
- D 0 - I - 0x00D0F0 03:90E0: 0C        .byte $0C   ; 03
- D 0 - I - 0x00D0F1 03:90E1: 0D        .byte $0D   ; 04
- D 0 - I - 0x00D0F2 03:90E2: 58        .byte $58   ; 05
- D 0 - I - 0x00D0F3 03:90E3: 57        .byte $57   ; 06
- D 0 - I - 0x00D0F4 03:90E4: 61        .byte $61   ; 07
- D 0 - I - 0x00D0F5 03:90E5: 60        .byte $60   ; 08
- D 0 - I - 0x00D0F6 03:90E6: 71        .byte $71   ; 09
- D 0 - I - 0x00D0F7 03:90E7: 70        .byte $70   ; 0A



off_04_90E8_00_spr_A:
- D 0 - I - 0x00D0F8 03:90E8: 40        .byte $40   ; 01
- D 0 - I - 0x00D0F9 03:90E9: 40        .byte $40   ; 02
- D 0 - I - 0x00D0FA 03:90EA: 01        .byte $01   ; 03
- D 0 - I - 0x00D0FB 03:90EB: 00        .byte $00   ; 04
- D 0 - I - 0x00D0FC 03:90EC: 41        .byte $41   ; 05
- D 0 - I - 0x00D0FD 03:90ED: 41        .byte $41   ; 06
- D 0 - I - 0x00D0FE 03:90EE: 41        .byte $41   ; 07
- D 0 - I - 0x00D0FF 03:90EF: 41        .byte $41   ; 08
- D 0 - I - 0x00D100 03:90F0: 40        .byte $40   ; 09
- D 0 - I - 0x00D101 03:90F1: 40        .byte $40   ; 0A



off_04_90F2_01_spr_A:
- - - - - - 0x00D102 03:90F2: 40        .byte $40   ; 01
- - - - - - 0x00D103 03:90F3: 40        .byte $40   ; 02
- - - - - - 0x00D104 03:90F4: 00        .byte $00   ; 03
- - - - - - 0x00D105 03:90F5: 00        .byte $00   ; 04
- - - - - - 0x00D106 03:90F6: 40        .byte $40   ; 05
- - - - - - 0x00D107 03:90F7: 40        .byte $40   ; 06
- - - - - - 0x00D108 03:90F8: 40        .byte $40   ; 07
- - - - - - 0x00D109 03:90F9: 40        .byte $40   ; 08
- - - - - - 0x00D10A 03:90FA: 40        .byte $40   ; 09
- - - - - - 0x00D10B 03:90FB: 40        .byte $40   ; 0A



off_04_90FC_03_spr_XY:
- D 0 - I - 0x00D10C 03:90FC: FB        .byte $FB, $24   ; 01
- D 0 - I - 0x00D10E 03:90FE: 03        .byte $03, $24   ; 02
- D 0 - I - 0x00D110 03:9100: FF        .byte $FF, $1C   ; 03
- D 0 - I - 0x00D112 03:9102: 07        .byte $07, $1C   ; 04
- D 0 - I - 0x00D114 03:9104: FD        .byte $FD, $14   ; 05
- D 0 - I - 0x00D116 03:9106: 05        .byte $05, $14   ; 06
- D 0 - I - 0x00D118 03:9108: FD        .byte $FD, $0C   ; 07
- D 0 - I - 0x00D11A 03:910A: 05        .byte $05, $0C   ; 08
- D 0 - I - 0x00D11C 03:910C: FD        .byte $FD, $04   ; 09
- D 0 - I - 0x00D11E 03:910E: 05        .byte $05, $04   ; 0A



_off030_9110_27:
- D 0 - I - 0x00D120 03:9110: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D122 03:9112: 2A 9D     .word sub_06_9D2A_00
- D 0 - I - 0x00D124 03:9114: 5F 84     .word sub_06_845F_01
- - - - - - 0x00D126 03:9116: C6 BC     .word sub_06_BCC6_02
- - - - - - 0x00D128 03:9118: 6B AA     .word sub_06_AA6B_03
- D 0 - I - 0x00D12A 03:911A: 29 88     .word sub_06_8829_04
@end:
- D 0 - I - 0x00D12C 03:911C: 04        .byte con_sub_04, $0A, $07   ; 
- D 0 - I - 0x00D12F 03:911F: E8 90     .word off_04_90E8_00_spr_A
- - - - - - 0x00D131 03:9121: F2 90     .word off_04_90F2_01_spr_A
- D 0 - I - 0x00D133 03:9123: DE 90     .word off_04_90DE_02_spr_T
- D 0 - I - 0x00D135 03:9125: 28 91     .word off_04_9128_03_spr_XY
- D 0 - I - 0x00D137 03:9127: 00        .byte con_sub_00   ; 



off_04_9128_03_spr_XY:
- D 0 - I - 0x00D138 03:9128: 00        .byte $00, $24   ; 01
- D 0 - I - 0x00D13A 03:912A: 08        .byte $08, $24   ; 02
- D 0 - I - 0x00D13C 03:912C: 03        .byte $03, $1C   ; 03
- D 0 - I - 0x00D13E 03:912E: 0B        .byte $0B, $1C   ; 04
- D 0 - I - 0x00D140 03:9130: 00        .byte $00, $14   ; 05
- D 0 - I - 0x00D142 03:9132: 08        .byte $08, $14   ; 06
- D 0 - I - 0x00D144 03:9134: FE        .byte $FE, $0C   ; 07
- D 0 - I - 0x00D146 03:9136: 06        .byte $06, $0C   ; 08
- D 0 - I - 0x00D148 03:9138: FD        .byte $FD, $04   ; 09
- D 0 - I - 0x00D14A 03:913A: 05        .byte $05, $04   ; 0A



_off030_913C_28:
- D 0 - I - 0x00D14C 03:913C: 04        .byte con_sub_04, $0D, $09   ; 
- D 0 - I - 0x00D14F 03:913F: 57 91     .word off_04_9157_00_spr_A
- - - - - - 0x00D151 03:9141: 64 91     .word off_04_9164_01_spr_A
- - - - - - 0x00D153 03:9143: 71 91     .word off_04_9171_02_spr_A
- D 0 - I - 0x00D155 03:9145: 4A 91     .word off_04_914A_03_spr_T
- D 0 - I - 0x00D157 03:9147: 7E 91     .word off_04_917E_04_spr_XY
- D 0 - I - 0x00D159 03:9149: 00        .byte con_sub_00   ; 



off_04_914A_03_spr_T:
- D 0 - I - 0x00D15A 03:914A: 01        .byte $01   ; 01
- D 0 - I - 0x00D15B 03:914B: 00        .byte $00   ; 02
- D 0 - I - 0x00D15C 03:914C: 1D        .byte $1D   ; 03
- D 0 - I - 0x00D15D 03:914D: 47        .byte $47   ; 04
- D 0 - I - 0x00D15E 03:914E: 5A        .byte $5A   ; 05
- D 0 - I - 0x00D15F 03:914F: 0E        .byte $0E   ; 06
- D 0 - I - 0x00D160 03:9150: 0F        .byte $0F   ; 07
- D 0 - I - 0x00D161 03:9151: 1E        .byte $1E   ; 08
- D 0 - I - 0x00D162 03:9152: 4A        .byte $4A   ; 09
- D 0 - I - 0x00D163 03:9153: 72        .byte $72   ; 0A
- D 0 - I - 0x00D164 03:9154: 1F        .byte $1F   ; 0B
- D 0 - I - 0x00D165 03:9155: 2F        .byte $2F   ; 0C
- D 0 - I - 0x00D166 03:9156: 41        .byte $41   ; 0D



off_04_9157_00_spr_A:
- D 0 - I - 0x00D167 03:9157: 40        .byte $40   ; 01
- D 0 - I - 0x00D168 03:9158: 40        .byte $40   ; 02
- D 0 - I - 0x00D169 03:9159: 40        .byte $40   ; 03
- D 0 - I - 0x00D16A 03:915A: 00        .byte $00   ; 04
- D 0 - I - 0x00D16B 03:915B: C0        .byte $C0   ; 05
- D 0 - I - 0x00D16C 03:915C: 00        .byte $00   ; 06
- D 0 - I - 0x00D16D 03:915D: 01        .byte $01   ; 07
- D 0 - I - 0x00D16E 03:915E: 00        .byte $00   ; 08
- D 0 - I - 0x00D16F 03:915F: C0        .byte $C0   ; 09
- D 0 - I - 0x00D170 03:9160: 80        .byte $80   ; 0A
- D 0 - I - 0x00D171 03:9161: 01        .byte $01   ; 0B
- D 0 - I - 0x00D172 03:9162: C0        .byte $C0   ; 0C
- D 0 - I - 0x00D173 03:9163: 40        .byte $40   ; 0D



off_04_9164_01_spr_A:
- - - - - - 0x00D174 03:9164: 40        .byte $40   ; 01
- - - - - - 0x00D175 03:9165: 40        .byte $40   ; 02
- - - - - - 0x00D176 03:9166: 40        .byte $40   ; 03
- - - - - - 0x00D177 03:9167: 00        .byte $00   ; 04
- - - - - - 0x00D178 03:9168: C0        .byte $C0   ; 05
- - - - - - 0x00D179 03:9169: 00        .byte $00   ; 06
- - - - - - 0x00D17A 03:916A: 00        .byte $00   ; 07
- - - - - - 0x00D17B 03:916B: 00        .byte $00   ; 08
- - - - - - 0x00D17C 03:916C: C0        .byte $C0   ; 09
- - - - - - 0x00D17D 03:916D: 80        .byte $80   ; 0A
- - - - - - 0x00D17E 03:916E: 00        .byte $00   ; 0B
- - - - - - 0x00D17F 03:916F: C0        .byte $C0   ; 0C
- - - - - - 0x00D180 03:9170: 40        .byte $40   ; 0D



off_04_9171_02_spr_A:
- - - - - - 0x00D181 03:9171: 42        .byte $42   ; 01
- - - - - - 0x00D182 03:9172: 42        .byte $42   ; 02
- - - - - - 0x00D183 03:9173: 42        .byte $42   ; 03
- - - - - - 0x00D184 03:9174: 02        .byte $02   ; 04
- - - - - - 0x00D185 03:9175: C2        .byte $C2   ; 05
- - - - - - 0x00D186 03:9176: 02        .byte $02   ; 06
- - - - - - 0x00D187 03:9177: 02        .byte $02   ; 07
- - - - - - 0x00D188 03:9178: 02        .byte $02   ; 08
- - - - - - 0x00D189 03:9179: C2        .byte $C2   ; 09
- - - - - - 0x00D18A 03:917A: 82        .byte $82   ; 0A
- - - - - - 0x00D18B 03:917B: 02        .byte $02   ; 0B
- - - - - - 0x00D18C 03:917C: C2        .byte $C2   ; 0C
- - - - - - 0x00D18D 03:917D: 42        .byte $42   ; 0D



off_04_917E_04_spr_XY:
- D 0 - I - 0x00D18E 03:917E: 00        .byte $00, $22   ; 01
- D 0 - I - 0x00D190 03:9180: 08        .byte $08, $22   ; 02
- D 0 - I - 0x00D192 03:9182: F7        .byte $F7, $1B   ; 03
- D 0 - I - 0x00D194 03:9184: FE        .byte $FE, $1B   ; 04
- D 0 - I - 0x00D196 03:9186: 0B        .byte $0B, $17   ; 05
- D 0 - I - 0x00D198 03:9188: 06        .byte $06, $1A   ; 06
- D 0 - I - 0x00D19A 03:918A: FD        .byte $FD, $13   ; 07
- D 0 - I - 0x00D19C 03:918C: 05        .byte $05, $12   ; 08
- D 0 - I - 0x00D19E 03:918E: 0B        .byte $0B, $0F   ; 09
- D 0 - I - 0x00D1A0 03:9190: F8        .byte $F8, $0E   ; 0A
- D 0 - I - 0x00D1A2 03:9192: FF        .byte $FF, $0B   ; 0B
- D 0 - I - 0x00D1A4 03:9194: 0B        .byte $0B, $09   ; 0C
- D 0 - I - 0x00D1A6 03:9196: FE        .byte $FE, $03   ; 0D



_off030_9198_2C:
- D 0 - I - 0x00D1A8 03:9198: 04        .byte con_sub_04, $0B, $07   ; 
- D 0 - I - 0x00D1AB 03:919B: AF 91     .word off_04_91AF_00_spr_A
- - - - - - 0x00D1AD 03:919D: BA 91     .word off_04_91BA_01_spr_A
- D 0 - I - 0x00D1AF 03:919F: A4 91     .word off_04_91A4_02_spr_T
- D 0 - I - 0x00D1B1 03:91A1: C5 91     .word off_04_91C5_03_spr_XY
- D 0 - I - 0x00D1B3 03:91A3: 00        .byte con_sub_00   ; 



off_04_91A4_02_spr_T:
- D 0 - I - 0x00D1B4 03:91A4: 41        .byte $41   ; 01
- D 0 - I - 0x00D1B5 03:91A5: 00        .byte $00   ; 02
- D 0 - I - 0x00D1B6 03:91A6: 01        .byte $01   ; 03
- D 0 - I - 0x00D1B7 03:91A7: 5C        .byte $5C   ; 04
- D 0 - I - 0x00D1B8 03:91A8: 11        .byte $11   ; 05
- D 0 - I - 0x00D1B9 03:91A9: 5D        .byte $5D   ; 06
- D 0 - I - 0x00D1BA 03:91AA: 4F        .byte $4F   ; 07
- D 0 - I - 0x00D1BB 03:91AB: 10        .byte $10   ; 08
- D 0 - I - 0x00D1BC 03:91AC: 15        .byte $15   ; 09
- D 0 - I - 0x00D1BD 03:91AD: 31        .byte $31   ; 0A
- D 0 - I - 0x00D1BE 03:91AE: 41        .byte $41   ; 0B



off_04_91AF_00_spr_A:
- D 0 - I - 0x00D1BF 03:91AF: C0        .byte $C0   ; 01
- D 0 - I - 0x00D1C0 03:91B0: 00        .byte $00   ; 02
- D 0 - I - 0x00D1C1 03:91B1: 00        .byte $00   ; 03
- D 0 - I - 0x00D1C2 03:91B2: 01        .byte $01   ; 04
- D 0 - I - 0x00D1C3 03:91B3: 00        .byte $00   ; 05
- D 0 - I - 0x00D1C4 03:91B4: 01        .byte $01   ; 06
- D 0 - I - 0x00D1C5 03:91B5: 41        .byte $41   ; 07
- D 0 - I - 0x00D1C6 03:91B6: 00        .byte $00   ; 08
- D 0 - I - 0x00D1C7 03:91B7: 00        .byte $00   ; 09
- D 0 - I - 0x00D1C8 03:91B8: 41        .byte $41   ; 0A
- D 0 - I - 0x00D1C9 03:91B9: 00        .byte $00   ; 0B



off_04_91BA_01_spr_A:
- - - - - - 0x00D1CA 03:91BA: C0        .byte $C0   ; 01
- - - - - - 0x00D1CB 03:91BB: 00        .byte $00   ; 02
- - - - - - 0x00D1CC 03:91BC: 00        .byte $00   ; 03
- - - - - - 0x00D1CD 03:91BD: 00        .byte $00   ; 04
- - - - - - 0x00D1CE 03:91BE: 00        .byte $00   ; 05
- - - - - - 0x00D1CF 03:91BF: 00        .byte $00   ; 06
- - - - - - 0x00D1D0 03:91C0: 40        .byte $40   ; 07
- - - - - - 0x00D1D1 03:91C1: 00        .byte $00   ; 08
- - - - - - 0x00D1D2 03:91C2: 00        .byte $00   ; 09
- - - - - - 0x00D1D3 03:91C3: 40        .byte $40   ; 0A
- - - - - - 0x00D1D4 03:91C4: 00        .byte $00   ; 0B



off_04_91C5_03_spr_XY:
- D 0 - I - 0x00D1D5 03:91C5: EF        .byte $EF, $22   ; 01
- D 0 - I - 0x00D1D7 03:91C7: FB        .byte $FB, $21   ; 02
- D 0 - I - 0x00D1D9 03:91C9: 03        .byte $03, $21   ; 03
- D 0 - I - 0x00D1DB 03:91CB: F2        .byte $F2, $1B   ; 04
- D 0 - I - 0x00D1DD 03:91CD: 03        .byte $03, $19   ; 05
- D 0 - I - 0x00D1DF 03:91CF: F4        .byte $F4, $14   ; 06
- D 0 - I - 0x00D1E1 03:91D1: FC        .byte $FC, $14   ; 07
- D 0 - I - 0x00D1E3 03:91D3: FB        .byte $FB, $19   ; 08
- D 0 - I - 0x00D1E5 03:91D5: 01        .byte $01, $11   ; 09
- D 0 - I - 0x00D1E7 03:91D7: FB        .byte $FB, $0C   ; 0A
- D 0 - I - 0x00D1E9 03:91D9: FB        .byte $FB, $04   ; 0B



_off030_91DB_15:
- D 0 - I - 0x00D1EB 03:91DB: 04        .byte con_sub_04, $0B, $09   ; 
- D 0 - I - 0x00D1EE 03:91DE: 00 92     .word off_04_9200_00_spr_A
- D 0 - I - 0x00D1F0 03:91E0: 0B 92     .word off_04_920B_01_spr_A
- D 0 - I - 0x00D1F2 03:91E2: 16 92     .word off_04_9216_02_spr_A
- D 0 - I - 0x00D1F4 03:91E4: F5 91     .word off_04_91F5_03_spr_T
- D 0 - I - 0x00D1F6 03:91E6: 21 92     .word off_04_9221_04_spr_XY
- D 0 - I - 0x00D1F8 03:91E8: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D1FA 03:91EA: EA B5     .word sub_06_B5EA_00
- D 0 - I - 0x00D1FC 03:91EC: 4D B6     .word sub_06_B64D_01
- D 0 - I - 0x00D1FE 03:91EE: E8 B6     .word sub_06_B6E8_02
- D 0 - I - 0x00D200 03:91F0: 4B B7     .word sub_06_B74B_03
- D 0 - I - 0x00D202 03:91F2: AC B7     .word sub_06_B7AC_04
@end:
- D 0 - I - 0x00D204 03:91F4: 00        .byte con_sub_00   ; 



off_04_91F5_03_spr_T:
- D 0 - I - 0x00D205 03:91F5: 01        .byte $01   ; 01
- D 0 - I - 0x00D206 03:91F6: 00        .byte $00   ; 02
- D 0 - I - 0x00D207 03:91F7: 10        .byte $10   ; 03
- D 0 - I - 0x00D208 03:91F8: 11        .byte $11   ; 04
- D 0 - I - 0x00D209 03:91F9: 02        .byte $02   ; 05
- D 0 - I - 0x00D20A 03:91FA: 21        .byte $21   ; 06
- D 0 - I - 0x00D20B 03:91FB: 15        .byte $15   ; 07
- D 0 - I - 0x00D20C 03:91FC: 60        .byte $60   ; 08
- D 0 - I - 0x00D20D 03:91FD: 61        .byte $61   ; 09
- D 0 - I - 0x00D20E 03:91FE: 72        .byte $72   ; 0A
- D 0 - I - 0x00D20F 03:91FF: 41        .byte $41   ; 0B



off_04_9200_00_spr_A:
- D 0 - I - 0x00D210 03:9200: 40        .byte $40   ; 01
- D 0 - I - 0x00D211 03:9201: 40        .byte $40   ; 02
- D 0 - I - 0x00D212 03:9202: 00        .byte $00   ; 03
- D 0 - I - 0x00D213 03:9203: 00        .byte $00   ; 04
- D 0 - I - 0x00D214 03:9204: 01        .byte $01   ; 05
- D 0 - I - 0x00D215 03:9205: 01        .byte $01   ; 06
- D 0 - I - 0x00D216 03:9206: 00        .byte $00   ; 07
- D 0 - I - 0x00D217 03:9207: 01        .byte $01   ; 08
- D 0 - I - 0x00D218 03:9208: 01        .byte $01   ; 09
- D 0 - I - 0x00D219 03:9209: C0        .byte $C0   ; 0A
- D 0 - I - 0x00D21A 03:920A: 00        .byte $00   ; 0B



off_04_920B_01_spr_A:
- D 0 - I - 0x00D21B 03:920B: 40        .byte $40   ; 01
- D 0 - I - 0x00D21C 03:920C: 40        .byte $40   ; 02
- D 0 - I - 0x00D21D 03:920D: 00        .byte $00   ; 03
- D 0 - I - 0x00D21E 03:920E: 00        .byte $00   ; 04
- D 0 - I - 0x00D21F 03:920F: 00        .byte $00   ; 05
- D 0 - I - 0x00D220 03:9210: 00        .byte $00   ; 06
- D 0 - I - 0x00D221 03:9211: 00        .byte $00   ; 07
- D 0 - I - 0x00D222 03:9212: 00        .byte $00   ; 08
- D 0 - I - 0x00D223 03:9213: 00        .byte $00   ; 09
- D 0 - I - 0x00D224 03:9214: C0        .byte $C0   ; 0A
- D 0 - I - 0x00D225 03:9215: 00        .byte $00   ; 0B



off_04_9216_02_spr_A:
- D 0 - I - 0x00D226 03:9216: 42        .byte $42   ; 01
- D 0 - I - 0x00D227 03:9217: 42        .byte $42   ; 02
- D 0 - I - 0x00D228 03:9218: 02        .byte $02   ; 03
- D 0 - I - 0x00D229 03:9219: 02        .byte $02   ; 04
- D 0 - I - 0x00D22A 03:921A: 02        .byte $02   ; 05
- D 0 - I - 0x00D22B 03:921B: 02        .byte $02   ; 06
- D 0 - I - 0x00D22C 03:921C: 02        .byte $02   ; 07
- D 0 - I - 0x00D22D 03:921D: 02        .byte $02   ; 08
- D 0 - I - 0x00D22E 03:921E: 02        .byte $02   ; 09
- D 0 - I - 0x00D22F 03:921F: C2        .byte $C2   ; 0A
- D 0 - I - 0x00D230 03:9220: 02        .byte $02   ; 0B



off_04_9221_04_spr_XY:
- D 0 - I - 0x00D231 03:9221: FA        .byte $FA, $24   ; 01
- D 0 - I - 0x00D233 03:9223: 02        .byte $02, $24   ; 02
- D 0 - I - 0x00D235 03:9225: FF        .byte $FF, $1C   ; 03
- D 0 - I - 0x00D237 03:9227: 07        .byte $07, $1C   ; 04
- D 0 - I - 0x00D239 03:9229: 01        .byte $01, $14   ; 05
- D 0 - I - 0x00D23B 03:922B: 09        .byte $09, $14   ; 06
- D 0 - I - 0x00D23D 03:922D: 04        .byte $04, $14   ; 07
- D 0 - I - 0x00D23F 03:922F: 00        .byte $00, $0C   ; 08
- D 0 - I - 0x00D241 03:9231: 08        .byte $08, $0C   ; 09
- D 0 - I - 0x00D243 03:9233: 0B        .byte $0B, $0B   ; 0A
- D 0 - I - 0x00D245 03:9235: 05        .byte $05, $04   ; 0B



_off030_9237_16:
- D 0 - I - 0x00D247 03:9237: 04        .byte con_sub_04, $0A, $09   ; 
- D 0 - I - 0x00D24A 03:923A: 5B 92     .word off_04_925B_00_spr_A
- D 0 - I - 0x00D24C 03:923C: 65 92     .word off_04_9265_01_spr_A
- D 0 - I - 0x00D24E 03:923E: 6F 92     .word off_04_926F_02_spr_A
- D 0 - I - 0x00D250 03:9240: 51 92     .word off_04_9251_03_spr_T
- D 0 - I - 0x00D252 03:9242: 79 92     .word off_04_9279_04_spr_XY
- D 0 - I - 0x00D254 03:9244: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D256 03:9246: F6 B5     .word sub_06_B5F6_00
- D 0 - I - 0x00D258 03:9248: 59 B6     .word sub_06_B659_01
- D 0 - I - 0x00D25A 03:924A: F2 B6     .word sub_06_B6F2_02
- D 0 - I - 0x00D25C 03:924C: 55 B7     .word sub_06_B755_03
- D 0 - I - 0x00D25E 03:924E: B6 B7     .word sub_06_B7B6_04
@end:
- D 0 - I - 0x00D260 03:9250: 00        .byte con_sub_00   ; 



off_04_9251_03_spr_T:
- D 0 - I - 0x00D261 03:9251: 5E        .byte $5E   ; 01
- D 0 - I - 0x00D262 03:9252: 5F        .byte $5F   ; 02
- D 0 - I - 0x00D263 03:9253: 6F        .byte $6F   ; 03
- D 0 - I - 0x00D264 03:9254: 75        .byte $75   ; 04
- D 0 - I - 0x00D265 03:9255: 76        .byte $76   ; 05
- D 0 - I - 0x00D266 03:9256: 4F        .byte $4F   ; 06
- D 0 - I - 0x00D267 03:9257: 09        .byte $09   ; 07
- D 0 - I - 0x00D268 03:9258: 08        .byte $08   ; 08
- D 0 - I - 0x00D269 03:9259: 31        .byte $31   ; 09
- D 0 - I - 0x00D26A 03:925A: 40        .byte $40   ; 0A



off_04_925B_00_spr_A:
- D 0 - I - 0x00D26B 03:925B: 00        .byte $00   ; 01
- D 0 - I - 0x00D26C 03:925C: 00        .byte $00   ; 02
- D 0 - I - 0x00D26D 03:925D: 01        .byte $01   ; 03
- D 0 - I - 0x00D26E 03:925E: 00        .byte $00   ; 04
- D 0 - I - 0x00D26F 03:925F: 00        .byte $00   ; 05
- D 0 - I - 0x00D270 03:9260: 01        .byte $01   ; 06
- D 0 - I - 0x00D271 03:9261: C1        .byte $C1   ; 07
- D 0 - I - 0x00D272 03:9262: 40        .byte $40   ; 08
- D 0 - I - 0x00D273 03:9263: 41        .byte $41   ; 09
- D 0 - I - 0x00D274 03:9264: 00        .byte $00   ; 0A



off_04_9265_01_spr_A:
- D 0 - I - 0x00D275 03:9265: 00        .byte $00   ; 01
- D 0 - I - 0x00D276 03:9266: 00        .byte $00   ; 02
- D 0 - I - 0x00D277 03:9267: 00        .byte $00   ; 03
- D 0 - I - 0x00D278 03:9268: 00        .byte $00   ; 04
- D 0 - I - 0x00D279 03:9269: 00        .byte $00   ; 05
- D 0 - I - 0x00D27A 03:926A: 00        .byte $00   ; 06
- D 0 - I - 0x00D27B 03:926B: C0        .byte $C0   ; 07
- D 0 - I - 0x00D27C 03:926C: 40        .byte $40   ; 08
- D 0 - I - 0x00D27D 03:926D: 40        .byte $40   ; 09
- D 0 - I - 0x00D27E 03:926E: 00        .byte $00   ; 0A



off_04_926F_02_spr_A:
- D 0 - I - 0x00D27F 03:926F: 02        .byte $02   ; 01
- D 0 - I - 0x00D280 03:9270: 02        .byte $02   ; 02
- D 0 - I - 0x00D281 03:9271: 02        .byte $02   ; 03
- D 0 - I - 0x00D282 03:9272: 02        .byte $02   ; 04
- D 0 - I - 0x00D283 03:9273: 02        .byte $02   ; 05
- D 0 - I - 0x00D284 03:9274: 02        .byte $02   ; 06
- D 0 - I - 0x00D285 03:9275: C2        .byte $C2   ; 07
- D 0 - I - 0x00D286 03:9276: 42        .byte $42   ; 08
- D 0 - I - 0x00D287 03:9277: 42        .byte $42   ; 09
- D 0 - I - 0x00D288 03:9278: 02        .byte $02   ; 0A



off_04_9279_04_spr_XY:
- D 0 - I - 0x00D289 03:9279: FA        .byte $FA, $1E   ; 01
- D 0 - I - 0x00D28B 03:927B: 02        .byte $02, $1E   ; 02
- D 0 - I - 0x00D28D 03:927D: 0A        .byte $0A, $1C   ; 03
- D 0 - I - 0x00D28F 03:927F: FA        .byte $FA, $16   ; 04
- D 0 - I - 0x00D291 03:9281: 02        .byte $02, $16   ; 05
- D 0 - I - 0x00D293 03:9283: 0A        .byte $0A, $14   ; 06
- D 0 - I - 0x00D295 03:9285: 12        .byte $12, $15   ; 07
- D 0 - I - 0x00D297 03:9287: 1A        .byte $1A, $15   ; 08
- D 0 - I - 0x00D299 03:9289: 09        .byte $09, $0C   ; 09
- D 0 - I - 0x00D29B 03:928B: 06        .byte $06, $04   ; 0A



_off030_928D_09:
- D 0 - I - 0x00D29D 03:928D: 04        .byte con_sub_04, $0A, $09   ; 
- D 0 - I - 0x00D2A0 03:9290: A9 92     .word off_04_92A9_00_spr_A
- D 0 - I - 0x00D2A2 03:9292: B3 92     .word off_04_92B3_01_spr_A
- D 0 - I - 0x00D2A4 03:9294: C1 92     .word off_04_92C1_02_spr_A
- D 0 - I - 0x00D2A6 03:9296: 9B 92     .word off_04_929B_03_spr_T
- D 0 - I - 0x00D2A8 03:9298: CB 92     .word off_04_92CB_04_spr_XY
- D 0 - I - 0x00D2AA 03:929A: 00        .byte con_sub_00   ; 



off_04_929B_03_spr_T:
off_02_929B_01_spr_T:
- D 0 - I - 0x00D2AB 03:929B: 25        .byte $25   ; 01
- D 0 - I - 0x00D2AC 03:929C: 01        .byte $01   ; 02
- D 0 - I - 0x00D2AD 03:929D: 34        .byte $34   ; 03
- D 0 - I - 0x00D2AE 03:929E: 35        .byte $35   ; 04
- D 0 - I - 0x00D2AF 03:929F: 36        .byte $36   ; 05
- D 0 - I - 0x00D2B0 03:92A0: 54        .byte $54   ; 06
- D 0 - I - 0x00D2B1 03:92A1: 60        .byte $60   ; 07
- D 0 - I - 0x00D2B2 03:92A2: 61        .byte $61   ; 08
- D 0 - I - 0x00D2B3 03:92A3: 70        .byte $70   ; 09
- D 0 - I - 0x00D2B4 03:92A4: 71        .byte $71   ; 0A


; bzk garbage
- - - - - - 0x00D2B5 03:92A5: BF        .byte $BF   ; 
- - - - - - 0x00D2B6 03:92A6: BF        .byte $BF   ; 
- - - - - - 0x00D2B7 03:92A7: BF        .byte $BF   ; 
- - - - - - 0x00D2B8 03:92A8: BF        .byte $BF   ; 



off_04_92A9_00_spr_A:
- D 0 - I - 0x00D2B9 03:92A9: 00        .byte $00   ; 01
- D 0 - I - 0x00D2BA 03:92AA: 00        .byte $00   ; 02
- D 0 - I - 0x00D2BB 03:92AB: 00        .byte $00   ; 03
- D 0 - I - 0x00D2BC 03:92AC: 00        .byte $00   ; 04
- D 0 - I - 0x00D2BD 03:92AD: 40        .byte $40   ; 05
- D 0 - I - 0x00D2BE 03:92AE: 00        .byte $00   ; 06
- D 0 - I - 0x00D2BF 03:92AF: 01        .byte $01   ; 07
- D 0 - I - 0x00D2C0 03:92B0: 01        .byte $01   ; 08
- D 0 - I - 0x00D2C1 03:92B1: 00        .byte $00   ; 09
- D 0 - I - 0x00D2C2 03:92B2: 00        .byte $00   ; 0A



off_04_92B3_01_spr_A:
- D 0 - I - 0x00D2C3 03:92B3: 00        .byte $00   ; 01
- D 0 - I - 0x00D2C4 03:92B4: 00        .byte $00   ; 02
- D 0 - I - 0x00D2C5 03:92B5: 00        .byte $00   ; 03
- D 0 - I - 0x00D2C6 03:92B6: 00        .byte $00   ; 04
- D 0 - I - 0x00D2C7 03:92B7: 40        .byte $40   ; 05
- D 0 - I - 0x00D2C8 03:92B8: 00        .byte $00   ; 06
- D 0 - I - 0x00D2C9 03:92B9: 00        .byte $00   ; 07
- D 0 - I - 0x00D2CA 03:92BA: 00        .byte $00   ; 08
- D 0 - I - 0x00D2CB 03:92BB: 00        .byte $00   ; 09
- D 0 - I - 0x00D2CC 03:92BC: 00        .byte $00   ; 0A


; bzk garbage
- - - - - - 0x00D2CD 03:92BD: 83        .byte $83   ; 
- - - - - - 0x00D2CE 03:92BE: C3        .byte $C3   ; 
- - - - - - 0x00D2CF 03:92BF: 03        .byte $03   ; 
- - - - - - 0x00D2D0 03:92C0: 43        .byte $43   ; 



off_04_92C1_02_spr_A:
- D 0 - I - 0x00D2D1 03:92C1: 02        .byte $02   ; 01
- D 0 - I - 0x00D2D2 03:92C2: 02        .byte $02   ; 02
- D 0 - I - 0x00D2D3 03:92C3: 02        .byte $02   ; 03
- D 0 - I - 0x00D2D4 03:92C4: 02        .byte $02   ; 04
- D 0 - I - 0x00D2D5 03:92C5: 42        .byte $42   ; 05
- D 0 - I - 0x00D2D6 03:92C6: 02        .byte $02   ; 06
- D 0 - I - 0x00D2D7 03:92C7: 02        .byte $02   ; 07
- D 0 - I - 0x00D2D8 03:92C8: 02        .byte $02   ; 08
- D 0 - I - 0x00D2D9 03:92C9: 02        .byte $02   ; 09
- D 0 - I - 0x00D2DA 03:92CA: 02        .byte $02   ; 0A



off_04_92CB_04_spr_XY:
off_02_92CB_02_spr_XY:
- D 0 - I - 0x00D2DB 03:92CB: FA        .byte $FA, $23   ; 01
- D 0 - I - 0x00D2DD 03:92CD: 02        .byte $02, $23   ; 02
- D 0 - I - 0x00D2DF 03:92CF: FB        .byte $FB, $1B   ; 03
- D 0 - I - 0x00D2E1 03:92D1: 03        .byte $03, $1B   ; 04
- D 0 - I - 0x00D2E3 03:92D3: FB        .byte $FB, $14   ; 05
- D 0 - I - 0x00D2E5 03:92D5: 03        .byte $03, $14   ; 06
- D 0 - I - 0x00D2E7 03:92D7: FC        .byte $FC, $0C   ; 07
- D 0 - I - 0x00D2E9 03:92D9: 04        .byte $04, $0C   ; 08
- D 0 - I - 0x00D2EB 03:92DB: FC        .byte $FC, $04   ; 09
- D 0 - I - 0x00D2ED 03:92DD: 04        .byte $04, $04   ; 0A


; bzk garbage
- - - - - - 0x00D2EF 03:92DF: F6        .byte $F6, $1A   ; 
- - - - - - 0x00D2F1 03:92E1: FE        .byte $FE, $1A   ; 
- - - - - - 0x00D2F3 03:92E3: F6        .byte $F6, $22   ; 
- - - - - - 0x00D2F5 03:92E5: FE        .byte $FE, $22   ; 



_off030_92E7_2D:
- D 0 - I - 0x00D2F7 03:92E7: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D2F9 03:92E9: 44 98     .word sub_06_9844_00
- D 0 - I - 0x00D2FB 03:92EB: 3D 83     .word sub_06_833D_01
- D 0 - I - 0x00D2FD 03:92ED: 62 BB     .word sub_06_BB62_02
- D 0 - I - 0x00D2FF 03:92EF: 3B AA     .word sub_06_AA3B_03
- D 0 - I - 0x00D301 03:92F1: B3 87     .word sub_06_87B3_04
@end:
- D 0 - I - 0x00D303 03:92F3: 04        .byte con_sub_04, $0E, $07   ; 
- D 0 - I - 0x00D306 03:92F6: 0D 93     .word off_04_930D_00_spr_A
- - - - - - 0x00D308 03:92F8: 6C 8F     .word off_04_8F6C_01_spr_A
- D 0 - I - 0x00D30A 03:92FA: FF 92     .word off_04_92FF_02_spr_T
- D 0 - I - 0x00D30C 03:92FC: 29 93     .word off_04_9329_03_spr_XY
- D 0 - I - 0x00D30E 03:92FE: 00        .byte con_sub_00   ; 



off_04_92FF_02_spr_T:
- D 0 - I - 0x00D30F 03:92FF: 3D        .byte $3D   ; 01
- D 0 - I - 0x00D310 03:9300: 00        .byte $00   ; 02
- D 0 - I - 0x00D311 03:9301: 01        .byte $01   ; 03
- D 0 - I - 0x00D312 03:9302: 3C        .byte $3C   ; 04
- D 0 - I - 0x00D313 03:9303: 2D        .byte $2D   ; 05
- D 0 - I - 0x00D314 03:9304: 48        .byte $48   ; 06
- D 0 - I - 0x00D315 03:9305: 20        .byte $20   ; 07
- D 0 - I - 0x00D316 03:9306: 3A        .byte $3A   ; 08
- D 0 - I - 0x00D317 03:9307: 58        .byte $58   ; 09
- D 0 - I - 0x00D318 03:9308: 49        .byte $49   ; 0A
- D 0 - I - 0x00D319 03:9309: 30        .byte $30   ; 0B
- D 0 - I - 0x00D31A 03:930A: 31        .byte $31   ; 0C
- D 0 - I - 0x00D31B 03:930B: 40        .byte $40   ; 0D
- D 0 - I - 0x00D31C 03:930C: 41        .byte $41   ; 0E



off_04_930D_00_spr_A:
- D 0 - I - 0x00D31D 03:930D: 00        .byte $00   ; 01
- D 0 - I - 0x00D31E 03:930E: 00        .byte $00   ; 02
- D 0 - I - 0x00D31F 03:930F: 00        .byte $00   ; 03
- D 0 - I - 0x00D320 03:9310: 00        .byte $00   ; 04
- D 0 - I - 0x00D321 03:9311: 00        .byte $00   ; 05
- D 0 - I - 0x00D322 03:9312: 01        .byte $01   ; 06
- D 0 - I - 0x00D323 03:9313: 01        .byte $01   ; 07
- D 0 - I - 0x00D324 03:9314: 00        .byte $00   ; 08
- D 0 - I - 0x00D325 03:9315: 01        .byte $01   ; 09
- D 0 - I - 0x00D326 03:9316: 00        .byte $00   ; 0A
- D 0 - I - 0x00D327 03:9317: 01        .byte $01   ; 0B
- D 0 - I - 0x00D328 03:9318: 01        .byte $01   ; 0C
- D 0 - I - 0x00D329 03:9319: 00        .byte $00   ; 0D
- D 0 - I - 0x00D32A 03:931A: 00        .byte $00   ; 0E



off_04_931B_02_spr_A:
- - - - - - 0x00D32B 03:931B: 02        .byte $02   ; 01
- - - - - - 0x00D32C 03:931C: 02        .byte $02   ; 02
- - - - - - 0x00D32D 03:931D: 02        .byte $02   ; 03
- - - - - - 0x00D32E 03:931E: 02        .byte $02   ; 04
- - - - - - 0x00D32F 03:931F: 02        .byte $02   ; 05
- - - - - - 0x00D330 03:9320: 02        .byte $02   ; 06
- - - - - - 0x00D331 03:9321: 02        .byte $02   ; 07
- - - - - - 0x00D332 03:9322: 02        .byte $02   ; 08
- - - - - - 0x00D333 03:9323: 02        .byte $02   ; 09
- - - - - - 0x00D334 03:9324: 02        .byte $02   ; 0A
- - - - - - 0x00D335 03:9325: 02        .byte $02   ; 0B
- - - - - - 0x00D336 03:9326: 02        .byte $02   ; 0C
- - - - - - 0x00D337 03:9327: 02        .byte $02   ; 0D
- - - - - - 0x00D338 03:9328: 02        .byte $02   ; 0E



off_04_9329_03_spr_XY:
- D 0 - I - 0x00D339 03:9329: FE        .byte $FE, $2B   ; 01
- D 0 - I - 0x00D33B 03:932B: FC        .byte $FC, $23   ; 02
- D 0 - I - 0x00D33D 03:932D: 04        .byte $04, $23   ; 03
- D 0 - I - 0x00D33F 03:932F: F6        .byte $F6, $22   ; 04
- D 0 - I - 0x00D341 03:9331: FE        .byte $FE, $1B   ; 05
- D 0 - I - 0x00D343 03:9333: 06        .byte $06, $1B   ; 06
- D 0 - I - 0x00D345 03:9335: FE        .byte $FE, $12   ; 07
- D 0 - I - 0x00D347 03:9337: FF        .byte $FF, $13   ; 08
- D 0 - I - 0x00D349 03:9339: 06        .byte $06, $13   ; 09
- D 0 - I - 0x00D34B 03:933B: F7        .byte $F7, $11   ; 0A
- D 0 - I - 0x00D34D 03:933D: FE        .byte $FE, $0B   ; 0B
- D 0 - I - 0x00D34F 03:933F: 06        .byte $06, $0B   ; 0C
- D 0 - I - 0x00D351 03:9341: FC        .byte $FC, $03   ; 0D
- D 0 - I - 0x00D353 03:9343: 09        .byte $09, $03   ; 0E



_off030_9345_2E:
- D 0 - I - 0x00D355 03:9345: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D357 03:9347: 55 98     .word sub_06_9855_00
- D 0 - I - 0x00D359 03:9349: 5E 83     .word sub_06_835E_01
- D 0 - I - 0x00D35B 03:934B: 52 BD     .word sub_06_BD52_02
- D 0 - I - 0x00D35D 03:934D: A1 AC     .word sub_06_ACA1_03
- D 0 - I - 0x00D35F 03:934F: C4 87     .word sub_06_87C4_04
@end:
- D 0 - I - 0x00D361 03:9351: 04        .byte con_sub_04, $0C, $07   ; 
- D 0 - I - 0x00D364 03:9354: 69 93     .word off_04_9369_00_spr_A
- - - - - - 0x00D366 03:9356: 6C 8F     .word off_04_8F6C_01_spr_A
- D 0 - I - 0x00D368 03:9358: 5D 93     .word off_04_935D_02_spr_T
- D 0 - I - 0x00D36A 03:935A: 75 93     .word off_04_9375_03_spr_XY
- D 0 - I - 0x00D36C 03:935C: 00        .byte con_sub_00   ; 



off_04_935D_02_spr_T:
- D 0 - I - 0x00D36D 03:935D: 25        .byte $25   ; 01
- D 0 - I - 0x00D36E 03:935E: 01        .byte $01   ; 02
- D 0 - I - 0x00D36F 03:935F: 4B        .byte $4B   ; 03
- D 0 - I - 0x00D370 03:9360: 5B        .byte $5B   ; 04
- D 0 - I - 0x00D371 03:9361: 48        .byte $48   ; 05
- D 0 - I - 0x00D372 03:9362: 4C        .byte $4C   ; 06
- D 0 - I - 0x00D373 03:9363: 4D        .byte $4D   ; 07
- D 0 - I - 0x00D374 03:9364: 58        .byte $58   ; 08
- D 0 - I - 0x00D375 03:9365: 30        .byte $30   ; 09
- D 0 - I - 0x00D376 03:9366: 31        .byte $31   ; 0A
- D 0 - I - 0x00D377 03:9367: 41        .byte $41   ; 0B
- D 0 - I - 0x00D378 03:9368: 41        .byte $41   ; 0C



off_04_9369_00_spr_A:
- D 0 - I - 0x00D379 03:9369: 00        .byte $00   ; 01
- D 0 - I - 0x00D37A 03:936A: 00        .byte $00   ; 02
- D 0 - I - 0x00D37B 03:936B: 00        .byte $00   ; 03
- D 0 - I - 0x00D37C 03:936C: 00        .byte $00   ; 04
- D 0 - I - 0x00D37D 03:936D: 01        .byte $01   ; 05
- D 0 - I - 0x00D37E 03:936E: 00        .byte $00   ; 06
- D 0 - I - 0x00D37F 03:936F: 00        .byte $00   ; 07
- D 0 - I - 0x00D380 03:9370: 01        .byte $01   ; 08
- D 0 - I - 0x00D381 03:9371: 01        .byte $01   ; 09
- D 0 - I - 0x00D382 03:9372: 01        .byte $01   ; 0A
- D 0 - I - 0x00D383 03:9373: 00        .byte $00   ; 0B
- D 0 - I - 0x00D384 03:9374: 00        .byte $00   ; 0C



off_04_9375_03_spr_XY:
- D 0 - I - 0x00D385 03:9375: F7        .byte $F7, $1F   ; 01
- D 0 - I - 0x00D387 03:9377: FF        .byte $FF, $1F   ; 02
- D 0 - I - 0x00D389 03:9379: F2        .byte $F2, $1B   ; 03
- D 0 - I - 0x00D38B 03:937B: FA        .byte $FA, $1B   ; 04
- D 0 - I - 0x00D38D 03:937D: 01        .byte $01, $18   ; 05
- D 0 - I - 0x00D38F 03:937F: F2        .byte $F2, $13   ; 06
- D 0 - I - 0x00D391 03:9381: FA        .byte $FA, $13   ; 07
- D 0 - I - 0x00D393 03:9383: 02        .byte $02, $12   ; 08
- D 0 - I - 0x00D395 03:9385: FA        .byte $FA, $0B   ; 09
- D 0 - I - 0x00D397 03:9387: 02        .byte $02, $0B   ; 0A
- D 0 - I - 0x00D399 03:9389: FB        .byte $FB, $03   ; 0B
- D 0 - I - 0x00D39B 03:938B: 05        .byte $05, $03   ; 0C



_off030_938D_1C:
- D 0 - I - 0x00D39D 03:938D: 04        .byte con_sub_04, $0C, $09   ; 
- D 0 - I - 0x00D3A0 03:9390: A7 93     .word off_04_93A7_00_spr_A
- D 0 - I - 0x00D3A2 03:9392: B3 93     .word off_04_93B3_01_spr_A
- D 0 - I - 0x00D3A4 03:9394: BF 93     .word off_04_93BF_02_spr_A
- D 0 - I - 0x00D3A6 03:9396: 9B 93     .word off_04_939B_03_spr_T
- D 0 - I - 0x00D3A8 03:9398: CB 93     .word off_04_93CB_04_spr_XY
- D 0 - I - 0x00D3AA 03:939A: 00        .byte con_sub_00   ; 



off_04_939B_03_spr_T:
- D 0 - I - 0x00D3AB 03:939B: 00        .byte $00   ; 01
- D 0 - I - 0x00D3AC 03:939C: 01        .byte $01   ; 02
- D 0 - I - 0x00D3AD 03:939D: 2D        .byte $2D   ; 03
- D 0 - I - 0x00D3AE 03:939E: 0D        .byte $0D   ; 04
- D 0 - I - 0x00D3AF 03:939F: 48        .byte $48   ; 05
- D 0 - I - 0x00D3B0 03:93A0: 6A        .byte $6A   ; 06
- D 0 - I - 0x00D3B1 03:93A1: 76        .byte $76   ; 07
- D 0 - I - 0x00D3B2 03:93A2: 58        .byte $58   ; 08
- D 0 - I - 0x00D3B3 03:93A3: 4E        .byte $4E   ; 09
- D 0 - I - 0x00D3B4 03:93A4: 51        .byte $51   ; 0A
- D 0 - I - 0x00D3B5 03:93A5: 17        .byte $17   ; 0B
- D 0 - I - 0x00D3B6 03:93A6: 41        .byte $41   ; 0C



off_04_93A7_00_spr_A:
- D 0 - I - 0x00D3B7 03:93A7: 00        .byte $00   ; 01
- D 0 - I - 0x00D3B8 03:93A8: 00        .byte $00   ; 02
- D 0 - I - 0x00D3B9 03:93A9: 00        .byte $00   ; 03
- D 0 - I - 0x00D3BA 03:93AA: 00        .byte $00   ; 04
- D 0 - I - 0x00D3BB 03:93AB: 01        .byte $01   ; 05
- D 0 - I - 0x00D3BC 03:93AC: 80        .byte $80   ; 06
- D 0 - I - 0x00D3BD 03:93AD: 00        .byte $00   ; 07
- D 0 - I - 0x00D3BE 03:93AE: 01        .byte $01   ; 08
- D 0 - I - 0x00D3BF 03:93AF: 01        .byte $01   ; 09
- D 0 - I - 0x00D3C0 03:93B0: 01        .byte $01   ; 0A
- D 0 - I - 0x00D3C1 03:93B1: 00        .byte $00   ; 0B
- D 0 - I - 0x00D3C2 03:93B2: 00        .byte $00   ; 0C



off_04_93B3_01_spr_A:
- D 0 - I - 0x00D3C3 03:93B3: 00        .byte $00   ; 01
- D 0 - I - 0x00D3C4 03:93B4: 00        .byte $00   ; 02
- D 0 - I - 0x00D3C5 03:93B5: 00        .byte $00   ; 03
- D 0 - I - 0x00D3C6 03:93B6: 00        .byte $00   ; 04
- D 0 - I - 0x00D3C7 03:93B7: 00        .byte $00   ; 05
- D 0 - I - 0x00D3C8 03:93B8: 80        .byte $80   ; 06
- D 0 - I - 0x00D3C9 03:93B9: 00        .byte $00   ; 07
- D 0 - I - 0x00D3CA 03:93BA: 00        .byte $00   ; 08
- D 0 - I - 0x00D3CB 03:93BB: 00        .byte $00   ; 09
- D 0 - I - 0x00D3CC 03:93BC: 00        .byte $00   ; 0A
- D 0 - I - 0x00D3CD 03:93BD: 00        .byte $00   ; 0B
- D 0 - I - 0x00D3CE 03:93BE: 00        .byte $00   ; 0C



off_04_93BF_02_spr_A:
- D 0 - I - 0x00D3CF 03:93BF: 02        .byte $02   ; 01
- D 0 - I - 0x00D3D0 03:93C0: 02        .byte $02   ; 02
- D 0 - I - 0x00D3D1 03:93C1: 02        .byte $02   ; 03
- D 0 - I - 0x00D3D2 03:93C2: 02        .byte $02   ; 04
- D 0 - I - 0x00D3D3 03:93C3: 02        .byte $02   ; 05
- D 0 - I - 0x00D3D4 03:93C4: 82        .byte $82   ; 06
- D 0 - I - 0x00D3D5 03:93C5: 02        .byte $02   ; 07
- D 0 - I - 0x00D3D6 03:93C6: 02        .byte $02   ; 08
- D 0 - I - 0x00D3D7 03:93C7: 02        .byte $02   ; 09
- D 0 - I - 0x00D3D8 03:93C8: 02        .byte $02   ; 0A
- D 0 - I - 0x00D3D9 03:93C9: 02        .byte $02   ; 0B
- D 0 - I - 0x00D3DA 03:93CA: 02        .byte $02   ; 0C



off_04_93CB_04_spr_XY:
- D 0 - I - 0x00D3DB 03:93CB: F9        .byte $F9, $21   ; 01
- D 0 - I - 0x00D3DD 03:93CD: 01        .byte $01, $21   ; 02
- D 0 - I - 0x00D3DF 03:93CF: FB        .byte $FB, $19   ; 03
- D 0 - I - 0x00D3E1 03:93D1: 05        .byte $05, $19   ; 04
- D 0 - I - 0x00D3E3 03:93D3: 03        .byte $03, $19   ; 05
- D 0 - I - 0x00D3E5 03:93D5: F3        .byte $F3, $11   ; 06
- D 0 - I - 0x00D3E7 03:93D7: FB        .byte $FB, $11   ; 07
- D 0 - I - 0x00D3E9 03:93D9: 03        .byte $03, $11   ; 08
- D 0 - I - 0x00D3EB 03:93DB: FC        .byte $FC, $0C   ; 09
- D 0 - I - 0x00D3ED 03:93DD: 04        .byte $04, $0B   ; 0A
- D 0 - I - 0x00D3EF 03:93DF: FB        .byte $FB, $04   ; 0B
- D 0 - I - 0x00D3F1 03:93E1: 05        .byte $05, $04   ; 0C



_off030_93E3_1D:
- D 0 - I - 0x00D3F3 03:93E3: 04        .byte con_sub_04, $0D, $09   ; 
- D 0 - I - 0x00D3F6 03:93E6: FE 93     .word off_04_93FE_00_spr_A
- D 0 - I - 0x00D3F8 03:93E8: 0B 94     .word off_04_940B_01_spr_A
- D 0 - I - 0x00D3FA 03:93EA: 18 94     .word off_04_9418_02_spr_A
- D 0 - I - 0x00D3FC 03:93EC: F1 93     .word off_04_93F1_03_spr_T
- D 0 - I - 0x00D3FE 03:93EE: 25 94     .word off_04_9425_04_spr_XY
- D 0 - I - 0x00D400 03:93F0: 00        .byte con_sub_00   ; 



off_04_93F1_03_spr_T:
- D 0 - I - 0x00D401 03:93F1: 2F        .byte $2F   ; 01
- D 0 - I - 0x00D402 03:93F2: 00        .byte $00   ; 02
- D 0 - I - 0x00D403 03:93F3: 01        .byte $01   ; 03
- D 0 - I - 0x00D404 03:93F4: 6E        .byte $6E   ; 04
- D 0 - I - 0x00D405 03:93F5: 69        .byte $69   ; 05
- D 0 - I - 0x00D406 03:93F6: 11        .byte $11   ; 06
- D 0 - I - 0x00D407 03:93F7: 79        .byte $79   ; 07
- D 0 - I - 0x00D408 03:93F8: 0F        .byte $0F   ; 08
- D 0 - I - 0x00D409 03:93F9: 15        .byte $15   ; 09
- D 0 - I - 0x00D40A 03:93FA: 4E        .byte $4E   ; 0A
- D 0 - I - 0x00D40B 03:93FB: 51        .byte $51   ; 0B
- D 0 - I - 0x00D40C 03:93FC: 17        .byte $17   ; 0C
- D 0 - I - 0x00D40D 03:93FD: 41        .byte $41   ; 0D



off_04_93FE_00_spr_A:
- D 0 - I - 0x00D40E 03:93FE: 00        .byte $00   ; 01
- D 0 - I - 0x00D40F 03:93FF: 00        .byte $00   ; 02
- D 0 - I - 0x00D410 03:9400: 00        .byte $00   ; 03
- D 0 - I - 0x00D411 03:9401: 00        .byte $00   ; 04
- D 0 - I - 0x00D412 03:9402: 00        .byte $00   ; 05
- D 0 - I - 0x00D413 03:9403: 00        .byte $00   ; 06
- D 0 - I - 0x00D414 03:9404: 01        .byte $01   ; 07
- D 0 - I - 0x00D415 03:9405: 41        .byte $41   ; 08
- D 0 - I - 0x00D416 03:9406: 00        .byte $00   ; 09
- D 0 - I - 0x00D417 03:9407: 01        .byte $01   ; 0A
- D 0 - I - 0x00D418 03:9408: 01        .byte $01   ; 0B
- D 0 - I - 0x00D419 03:9409: 00        .byte $00   ; 0C
- D 0 - I - 0x00D41A 03:940A: 00        .byte $00   ; 0D



off_04_940B_01_spr_A:
- D 0 - I - 0x00D41B 03:940B: 00        .byte $00   ; 01
- D 0 - I - 0x00D41C 03:940C: 00        .byte $00   ; 02
- D 0 - I - 0x00D41D 03:940D: 00        .byte $00   ; 03
- D 0 - I - 0x00D41E 03:940E: 00        .byte $00   ; 04
- D 0 - I - 0x00D41F 03:940F: 00        .byte $00   ; 05
- D 0 - I - 0x00D420 03:9410: 00        .byte $00   ; 06
- D 0 - I - 0x00D421 03:9411: 00        .byte $00   ; 07
- D 0 - I - 0x00D422 03:9412: 40        .byte $40   ; 08
- D 0 - I - 0x00D423 03:9413: 00        .byte $00   ; 09
- D 0 - I - 0x00D424 03:9414: 00        .byte $00   ; 0A
- D 0 - I - 0x00D425 03:9415: 00        .byte $00   ; 0B
- D 0 - I - 0x00D426 03:9416: 00        .byte $00   ; 0C
- D 0 - I - 0x00D427 03:9417: 00        .byte $00   ; 0D



off_04_9418_02_spr_A:
- D 0 - I - 0x00D428 03:9418: 02        .byte $02   ; 01
- D 0 - I - 0x00D429 03:9419: 02        .byte $02   ; 02
- D 0 - I - 0x00D42A 03:941A: 02        .byte $02   ; 03
- D 0 - I - 0x00D42B 03:941B: 02        .byte $02   ; 04
- D 0 - I - 0x00D42C 03:941C: 02        .byte $02   ; 05
- D 0 - I - 0x00D42D 03:941D: 02        .byte $02   ; 06
- D 0 - I - 0x00D42E 03:941E: 02        .byte $02   ; 07
- D 0 - I - 0x00D42F 03:941F: 42        .byte $42   ; 08
- D 0 - I - 0x00D430 03:9420: 02        .byte $02   ; 09
- D 0 - I - 0x00D431 03:9421: 02        .byte $02   ; 0A
- D 0 - I - 0x00D432 03:9422: 02        .byte $02   ; 0B
- D 0 - I - 0x00D433 03:9423: 02        .byte $02   ; 0C
- D 0 - I - 0x00D434 03:9424: 02        .byte $02   ; 0D



off_04_9425_04_spr_XY:
- D 0 - I - 0x00D435 03:9425: EF        .byte $EF, $1E   ; 01
- D 0 - I - 0x00D437 03:9427: F7        .byte $F7, $1F   ; 02
- D 0 - I - 0x00D439 03:9429: FF        .byte $FF, $1F   ; 03
- D 0 - I - 0x00D43B 03:942B: EF        .byte $EF, $16   ; 04
- D 0 - I - 0x00D43D 03:942D: F7        .byte $F7, $17   ; 05
- D 0 - I - 0x00D43F 03:942F: FF        .byte $FF, $17   ; 06
- D 0 - I - 0x00D441 03:9431: FA        .byte $FA, $0F   ; 07
- D 0 - I - 0x00D443 03:9433: 02        .byte $02, $10   ; 08
- D 0 - I - 0x00D445 03:9435: FC        .byte $FC, $0F   ; 09
- D 0 - I - 0x00D447 03:9437: FC        .byte $FC, $0C   ; 0A
- D 0 - I - 0x00D449 03:9439: 03        .byte $03, $0B   ; 0B
- D 0 - I - 0x00D44B 03:943B: FB        .byte $FB, $04   ; 0C
- D 0 - I - 0x00D44D 03:943D: 05        .byte $05, $04   ; 0D



_off030_943F_1E:
- D 0 - I - 0x00D44F 03:943F: 04        .byte con_sub_04, $0E, $09   ; 
- D 0 - I - 0x00D452 03:9442: 5B 94     .word off_04_945B_00_spr_A
- D 0 - I - 0x00D454 03:9444: 6C 8F     .word off_04_8F6C_01_spr_A
- D 0 - I - 0x00D456 03:9446: 69 94     .word off_04_9469_02_spr_A
- D 0 - I - 0x00D458 03:9448: 4D 94     .word off_04_944D_03_spr_T
- D 0 - I - 0x00D45A 03:944A: 77 94     .word off_04_9477_04_spr_XY
- D 0 - I - 0x00D45C 03:944C: 00        .byte con_sub_00   ; 



off_04_944D_03_spr_T:
- D 0 - I - 0x00D45D 03:944D: 2F        .byte $2F   ; 01
- D 0 - I - 0x00D45E 03:944E: 4A        .byte $4A   ; 02
- D 0 - I - 0x00D45F 03:944F: 00        .byte $00   ; 03
- D 0 - I - 0x00D460 03:9450: 01        .byte $01   ; 04
- D 0 - I - 0x00D461 03:9451: 5A        .byte $5A   ; 05
- D 0 - I - 0x00D462 03:9452: 69        .byte $69   ; 06
- D 0 - I - 0x00D463 03:9453: 11        .byte $11   ; 07
- D 0 - I - 0x00D464 03:9454: 79        .byte $79   ; 08
- D 0 - I - 0x00D465 03:9455: 58        .byte $58   ; 09
- D 0 - I - 0x00D466 03:9456: 15        .byte $15   ; 0A
- D 0 - I - 0x00D467 03:9457: 50        .byte $50   ; 0B
- D 0 - I - 0x00D468 03:9458: 51        .byte $51   ; 0C
- D 0 - I - 0x00D469 03:9459: 40        .byte $40   ; 0D
- D 0 - I - 0x00D46A 03:945A: 41        .byte $41   ; 0E



off_04_945B_00_spr_A:
- D 0 - I - 0x00D46B 03:945B: 00        .byte $00   ; 01
- D 0 - I - 0x00D46C 03:945C: 00        .byte $00   ; 02
- D 0 - I - 0x00D46D 03:945D: 00        .byte $00   ; 03
- D 0 - I - 0x00D46E 03:945E: 00        .byte $00   ; 04
- D 0 - I - 0x00D46F 03:945F: 00        .byte $00   ; 05
- D 0 - I - 0x00D470 03:9460: 00        .byte $00   ; 06
- D 0 - I - 0x00D471 03:9461: 00        .byte $00   ; 07
- D 0 - I - 0x00D472 03:9462: 01        .byte $01   ; 08
- D 0 - I - 0x00D473 03:9463: 01        .byte $01   ; 09
- D 0 - I - 0x00D474 03:9464: 00        .byte $00   ; 0A
- D 0 - I - 0x00D475 03:9465: 01        .byte $01   ; 0B
- D 0 - I - 0x00D476 03:9466: 01        .byte $01   ; 0C
- D 0 - I - 0x00D477 03:9467: 00        .byte $00   ; 0D
- D 0 - I - 0x00D478 03:9468: 00        .byte $00   ; 0E



off_04_9469_02_spr_A:
- D 0 - I - 0x00D479 03:9469: 02        .byte $02   ; 01
- D 0 - I - 0x00D47A 03:946A: 02        .byte $02   ; 02
- D 0 - I - 0x00D47B 03:946B: 02        .byte $02   ; 03
- D 0 - I - 0x00D47C 03:946C: 02        .byte $02   ; 04
- D 0 - I - 0x00D47D 03:946D: 02        .byte $02   ; 05
- D 0 - I - 0x00D47E 03:946E: 02        .byte $02   ; 06
- D 0 - I - 0x00D47F 03:946F: 02        .byte $02   ; 07
- D 0 - I - 0x00D480 03:9470: 02        .byte $02   ; 08
- D 0 - I - 0x00D481 03:9471: 02        .byte $02   ; 09
- D 0 - I - 0x00D482 03:9472: 02        .byte $02   ; 0A
- D 0 - I - 0x00D483 03:9473: 02        .byte $02   ; 0B
- D 0 - I - 0x00D484 03:9474: 02        .byte $02   ; 0C
- D 0 - I - 0x00D485 03:9475: 02        .byte $02   ; 0D
- D 0 - I - 0x00D486 03:9476: 02        .byte $02   ; 0E



off_04_9477_04_spr_XY:
- D 0 - I - 0x00D487 03:9477: F6        .byte $F6, $2B   ; 01
- D 0 - I - 0x00D489 03:9479: F6        .byte $F6, $25   ; 02
- D 0 - I - 0x00D48B 03:947B: FC        .byte $FC, $24   ; 03
- D 0 - I - 0x00D48D 03:947D: 04        .byte $04, $24   ; 04
- D 0 - I - 0x00D48F 03:947F: F6        .byte $F6, $1D   ; 05
- D 0 - I - 0x00D491 03:9481: FC        .byte $FC, $1C   ; 06
- D 0 - I - 0x00D493 03:9483: 04        .byte $04, $1C   ; 07
- D 0 - I - 0x00D495 03:9485: FD        .byte $FD, $14   ; 08
- D 0 - I - 0x00D497 03:9487: 05        .byte $05, $14   ; 09
- D 0 - I - 0x00D499 03:9489: 00        .byte $00, $14   ; 0A
- D 0 - I - 0x00D49B 03:948B: FD        .byte $FD, $0C   ; 0B
- D 0 - I - 0x00D49D 03:948D: 05        .byte $05, $0C   ; 0C
- D 0 - I - 0x00D49F 03:948F: FC        .byte $FC, $04   ; 0D
- D 0 - I - 0x00D4A1 03:9491: 07        .byte $07, $04   ; 0E



_off030_9493_03:
- D 0 - I - 0x00D4A3 03:9493: 04        .byte con_sub_04, $0A, $09   ; 
- D 0 - I - 0x00D4A6 03:9496: AB 94     .word off_04_94AB_00_spr_A
- - - - - - 0x00D4A8 03:9498: B5 94     .word off_04_94B5_01_spr_A
- - - - - - 0x00D4AA 03:949A: BF 94     .word off_04_94BF_02_spr_A
- D 0 - I - 0x00D4AC 03:949C: A1 94     .word off_04_94A1_03_spr_T
- D 0 - I - 0x00D4AE 03:949E: C9 94     .word off_04_94C9_04_spr_XY
- D 0 - I - 0x00D4B0 03:94A0: 00        .byte con_sub_00   ; 



off_04_94A1_03_spr_T:
- D 0 - I - 0x00D4B1 03:94A1: 7E        .byte $7E   ; 01
- D 0 - I - 0x00D4B2 03:94A2: 7F        .byte $7F   ; 02
- D 0 - I - 0x00D4B3 03:94A3: 7D        .byte $7D   ; 03
- D 0 - I - 0x00D4B4 03:94A4: 7C        .byte $7C   ; 04
- D 0 - I - 0x00D4B5 03:94A5: 7D        .byte $7D   ; 05
- D 0 - I - 0x00D4B6 03:94A6: 6C        .byte $6C   ; 06
- D 0 - I - 0x00D4B7 03:94A7: 3B        .byte $3B   ; 07
- D 0 - I - 0x00D4B8 03:94A8: 37        .byte $37   ; 08
- D 0 - I - 0x00D4B9 03:94A9: 43        .byte $43   ; 09
- D 0 - I - 0x00D4BA 03:94AA: 43        .byte $43   ; 0A



off_04_94AB_00_spr_A:
- D 0 - I - 0x00D4BB 03:94AB: 00        .byte $00   ; 01
- D 0 - I - 0x00D4BC 03:94AC: 00        .byte $00   ; 02
- D 0 - I - 0x00D4BD 03:94AD: 40        .byte $40   ; 03
- D 0 - I - 0x00D4BE 03:94AE: 01        .byte $01   ; 04
- D 0 - I - 0x00D4BF 03:94AF: 00        .byte $00   ; 05
- D 0 - I - 0x00D4C0 03:94B0: 01        .byte $01   ; 06
- D 0 - I - 0x00D4C1 03:94B1: 01        .byte $01   ; 07
- D 0 - I - 0x00D4C2 03:94B2: 01        .byte $01   ; 08
- D 0 - I - 0x00D4C3 03:94B3: 40        .byte $40   ; 09
- D 0 - I - 0x00D4C4 03:94B4: 00        .byte $00   ; 0A



off_04_94B5_01_spr_A:
- - - - - - 0x00D4C5 03:94B5: 00        .byte $00   ; 01
- - - - - - 0x00D4C6 03:94B6: 00        .byte $00   ; 02
- - - - - - 0x00D4C7 03:94B7: 40        .byte $40   ; 03
- - - - - - 0x00D4C8 03:94B8: 00        .byte $00   ; 04
- - - - - - 0x00D4C9 03:94B9: 00        .byte $00   ; 05
- - - - - - 0x00D4CA 03:94BA: 00        .byte $00   ; 06
- - - - - - 0x00D4CB 03:94BB: 00        .byte $00   ; 07
- - - - - - 0x00D4CC 03:94BC: 00        .byte $00   ; 08
- - - - - - 0x00D4CD 03:94BD: 40        .byte $40   ; 09
- - - - - - 0x00D4CE 03:94BE: 00        .byte $00   ; 0A



off_04_94BF_02_spr_A:
- - - - - - 0x00D4CF 03:94BF: 02        .byte $02   ; 01
- - - - - - 0x00D4D0 03:94C0: 02        .byte $02   ; 02
- - - - - - 0x00D4D1 03:94C1: 42        .byte $42   ; 03
- - - - - - 0x00D4D2 03:94C2: 02        .byte $02   ; 04
- - - - - - 0x00D4D3 03:94C3: 02        .byte $02   ; 05
- - - - - - 0x00D4D4 03:94C4: 02        .byte $02   ; 06
- - - - - - 0x00D4D5 03:94C5: 02        .byte $02   ; 07
- - - - - - 0x00D4D6 03:94C6: 02        .byte $02   ; 08
- - - - - - 0x00D4D7 03:94C7: 42        .byte $42   ; 09
- - - - - - 0x00D4D8 03:94C8: 02        .byte $02   ; 0A



off_04_94C9_04_spr_XY:
- D 0 - I - 0x00D4D9 03:94C9: FB        .byte $FB, $24   ; 01
- D 0 - I - 0x00D4DB 03:94CB: 03        .byte $03, $24   ; 02
- D 0 - I - 0x00D4DD 03:94CD: F7        .byte $F7, $1C   ; 03
- D 0 - I - 0x00D4DF 03:94CF: FF        .byte $FF, $1C   ; 04
- D 0 - I - 0x00D4E1 03:94D1: 07        .byte $07, $1C   ; 05
- D 0 - I - 0x00D4E3 03:94D3: FB        .byte $FB, $14   ; 06
- D 0 - I - 0x00D4E5 03:94D5: 03        .byte $03, $14   ; 07
- D 0 - I - 0x00D4E7 03:94D7: FB        .byte $FB, $0C   ; 08
- D 0 - I - 0x00D4E9 03:94D9: 04        .byte $04, $0C   ; 09
- D 0 - I - 0x00D4EB 03:94DB: FC        .byte $FC, $04   ; 0A



_off030_94DD_04:
- D 0 - I - 0x00D4ED 03:94DD: 04        .byte con_sub_04, $0A, $09   ; 
- D 0 - I - 0x00D4F0 03:94E0: F5 94     .word off_04_94F5_00_spr_A
- - - - - - 0x00D4F2 03:94E2: FF 94     .word off_04_94FF_01_spr_A
- - - - - - 0x00D4F4 03:94E4: 09 95     .word off_04_9509_02_spr_A
- D 0 - I - 0x00D4F6 03:94E6: EB 94     .word off_04_94EB_03_spr_T
- D 0 - I - 0x00D4F8 03:94E8: 13 95     .word off_04_9513_04_spr_XY
- D 0 - I - 0x00D4FA 03:94EA: 00        .byte con_sub_00   ; 



off_04_94EB_03_spr_T:
- D 0 - I - 0x00D4FB 03:94EB: 7F        .byte $7F   ; 01
- D 0 - I - 0x00D4FC 03:94EC: 7E        .byte $7E   ; 02
- D 0 - I - 0x00D4FD 03:94ED: 7D        .byte $7D   ; 03
- D 0 - I - 0x00D4FE 03:94EE: 7C        .byte $7C   ; 04
- D 0 - I - 0x00D4FF 03:94EF: 7D        .byte $7D   ; 05
- D 0 - I - 0x00D500 03:94F0: 3B        .byte $3B   ; 06
- D 0 - I - 0x00D501 03:94F1: 6C        .byte $6C   ; 07
- D 0 - I - 0x00D502 03:94F2: 43        .byte $43   ; 08
- D 0 - I - 0x00D503 03:94F3: 37        .byte $37   ; 09
- D 0 - I - 0x00D504 03:94F4: 43        .byte $43   ; 0A



off_04_94F5_00_spr_A:
- D 0 - I - 0x00D505 03:94F5: 40        .byte $40   ; 01
- D 0 - I - 0x00D506 03:94F6: 40        .byte $40   ; 02
- D 0 - I - 0x00D507 03:94F7: 40        .byte $40   ; 03
- D 0 - I - 0x00D508 03:94F8: 41        .byte $41   ; 04
- D 0 - I - 0x00D509 03:94F9: 00        .byte $00   ; 05
- D 0 - I - 0x00D50A 03:94FA: 41        .byte $41   ; 06
- D 0 - I - 0x00D50B 03:94FB: 41        .byte $41   ; 07
- D 0 - I - 0x00D50C 03:94FC: 00        .byte $00   ; 08
- D 0 - I - 0x00D50D 03:94FD: 41        .byte $41   ; 09
- D 0 - I - 0x00D50E 03:94FE: 40        .byte $40   ; 0A



off_04_94FF_01_spr_A:
- - - - - - 0x00D50F 03:94FF: 40        .byte $40   ; 01
- - - - - - 0x00D510 03:9500: 40        .byte $40   ; 02
- - - - - - 0x00D511 03:9501: 40        .byte $40   ; 03
- - - - - - 0x00D512 03:9502: 40        .byte $40   ; 04
- - - - - - 0x00D513 03:9503: 00        .byte $00   ; 05
- - - - - - 0x00D514 03:9504: 40        .byte $40   ; 06
- - - - - - 0x00D515 03:9505: 40        .byte $40   ; 07
- - - - - - 0x00D516 03:9506: 00        .byte $00   ; 08
- - - - - - 0x00D517 03:9507: 40        .byte $40   ; 09
- - - - - - 0x00D518 03:9508: 40        .byte $40   ; 0A



off_04_9509_02_spr_A:
- - - - - - 0x00D519 03:9509: 42        .byte $42   ; 01
- - - - - - 0x00D51A 03:950A: 42        .byte $42   ; 02
- - - - - - 0x00D51B 03:950B: 42        .byte $42   ; 03
- - - - - - 0x00D51C 03:950C: 42        .byte $42   ; 04
- - - - - - 0x00D51D 03:950D: 02        .byte $02   ; 05
- - - - - - 0x00D51E 03:950E: 42        .byte $42   ; 06
- - - - - - 0x00D51F 03:950F: 42        .byte $42   ; 07
- - - - - - 0x00D520 03:9510: 02        .byte $02   ; 08
- - - - - - 0x00D521 03:9511: 42        .byte $42   ; 09
- - - - - - 0x00D522 03:9512: 42        .byte $42   ; 0A



off_04_9513_04_spr_XY:
- D 0 - I - 0x00D523 03:9513: FC        .byte $FC, $24   ; 01
- D 0 - I - 0x00D525 03:9515: 04        .byte $04, $24   ; 02
- D 0 - I - 0x00D527 03:9517: F8        .byte $F8, $1C   ; 03
- D 0 - I - 0x00D529 03:9519: 00        .byte $00, $1C   ; 04
- D 0 - I - 0x00D52B 03:951B: 08        .byte $08, $1C   ; 05
- D 0 - I - 0x00D52D 03:951D: FC        .byte $FC, $14   ; 06
- D 0 - I - 0x00D52F 03:951F: 04        .byte $04, $14   ; 07
- D 0 - I - 0x00D531 03:9521: FB        .byte $FB, $0C   ; 08
- D 0 - I - 0x00D533 03:9523: 04        .byte $04, $0C   ; 09
- D 0 - I - 0x00D535 03:9525: 03        .byte $03, $04   ; 0A



_off030_9527_18:
- D 0 - I - 0x00D537 03:9527: 04        .byte con_sub_04, $0B, $09   ; 
- D 0 - I - 0x00D53A 03:952A: 4C 95     .word off_04_954C_00_spr_A
- D 0 - I - 0x00D53C 03:952C: 57 95     .word off_04_9557_01_spr_A
- D 0 - I - 0x00D53E 03:952E: 62 95     .word off_04_9562_02_spr_A
- D 0 - I - 0x00D540 03:9530: 41 95     .word off_04_9541_03_spr_T
- D 0 - I - 0x00D542 03:9532: 6D 95     .word off_04_956D_04_spr_XY
- D 0 - I - 0x00D544 03:9534: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D546 03:9536: 93 B6     .word sub_06_B693_00
- D 0 - I - 0x00D548 03:9538: AB B6     .word sub_06_B6AB_01
- D 0 - I - 0x00D54A 03:953A: 07 B7     .word sub_06_B707_02
- D 0 - I - 0x00D54C 03:953C: 69 B7     .word sub_06_B769_03
- D 0 - I - 0x00D54E 03:953E: CB B7     .word sub_06_B7CB_04
@end:
- D 0 - I - 0x00D550 03:9540: 00        .byte con_sub_00   ; 



off_04_9541_03_spr_T:
- D 0 - I - 0x00D551 03:9541: 00        .byte $00   ; 01
- D 0 - I - 0x00D552 03:9542: 01        .byte $01   ; 02
- D 0 - I - 0x00D553 03:9543: 11        .byte $11   ; 03
- D 0 - I - 0x00D554 03:9544: 10        .byte $10   ; 04
- D 0 - I - 0x00D555 03:9545: 2A        .byte $2A   ; 05
- D 0 - I - 0x00D556 03:9546: 2B        .byte $2B   ; 06
- D 0 - I - 0x00D557 03:9547: 6D        .byte $6D   ; 07
- D 0 - I - 0x00D558 03:9548: 15        .byte $15   ; 08
- D 0 - I - 0x00D559 03:9549: 2C        .byte $2C   ; 09
- D 0 - I - 0x00D55A 03:954A: 31        .byte $31   ; 0A
- D 0 - I - 0x00D55B 03:954B: 17        .byte $17   ; 0B



off_04_954C_00_spr_A:
- D 0 - I - 0x00D55C 03:954C: 00        .byte $00   ; 01
- D 0 - I - 0x00D55D 03:954D: 00        .byte $00   ; 02
- D 0 - I - 0x00D55E 03:954E: 40        .byte $40   ; 03
- D 0 - I - 0x00D55F 03:954F: 40        .byte $40   ; 04
- D 0 - I - 0x00D560 03:9550: 01        .byte $01   ; 05
- D 0 - I - 0x00D561 03:9551: 01        .byte $01   ; 06
- D 0 - I - 0x00D562 03:9552: 01        .byte $01   ; 07
- D 0 - I - 0x00D563 03:9553: 40        .byte $40   ; 08
- D 0 - I - 0x00D564 03:9554: 00        .byte $00   ; 09
- D 0 - I - 0x00D565 03:9555: 01        .byte $01   ; 0A
- D 0 - I - 0x00D566 03:9556: 00        .byte $00   ; 0B



off_04_9557_01_spr_A:
- D 0 - I - 0x00D567 03:9557: 00        .byte $00   ; 01
- D 0 - I - 0x00D568 03:9558: 00        .byte $00   ; 02
- D 0 - I - 0x00D569 03:9559: 40        .byte $40   ; 03
- D 0 - I - 0x00D56A 03:955A: 40        .byte $40   ; 04
- D 0 - I - 0x00D56B 03:955B: 00        .byte $00   ; 05
- D 0 - I - 0x00D56C 03:955C: 00        .byte $00   ; 06
- D 0 - I - 0x00D56D 03:955D: 00        .byte $00   ; 07
- D 0 - I - 0x00D56E 03:955E: 40        .byte $40   ; 08
- D 0 - I - 0x00D56F 03:955F: 00        .byte $00   ; 09
- D 0 - I - 0x00D570 03:9560: 00        .byte $00   ; 0A
- D 0 - I - 0x00D571 03:9561: 00        .byte $00   ; 0B



off_04_9562_02_spr_A:
- D 0 - I - 0x00D572 03:9562: 02        .byte $02   ; 01
- D 0 - I - 0x00D573 03:9563: 02        .byte $02   ; 02
- D 0 - I - 0x00D574 03:9564: 42        .byte $42   ; 03
- D 0 - I - 0x00D575 03:9565: 42        .byte $42   ; 04
- D 0 - I - 0x00D576 03:9566: 02        .byte $02   ; 05
- D 0 - I - 0x00D577 03:9567: 02        .byte $02   ; 06
- D 0 - I - 0x00D578 03:9568: 02        .byte $02   ; 07
- D 0 - I - 0x00D579 03:9569: 42        .byte $42   ; 08
- D 0 - I - 0x00D57A 03:956A: 02        .byte $02   ; 09
- D 0 - I - 0x00D57B 03:956B: 02        .byte $02   ; 0A
- D 0 - I - 0x00D57C 03:956C: 02        .byte $02   ; 0B



off_04_956D_04_spr_XY:
- D 0 - I - 0x00D57D 03:956D: FA        .byte $FA, $24   ; 01
- D 0 - I - 0x00D57F 03:956F: 02        .byte $02, $24   ; 02
- D 0 - I - 0x00D581 03:9571: F6        .byte $F6, $1C   ; 03
- D 0 - I - 0x00D583 03:9573: FE        .byte $FE, $1C   ; 04
- D 0 - I - 0x00D585 03:9575: E9        .byte $E9, $14   ; 05
- D 0 - I - 0x00D587 03:9577: F1        .byte $F1, $16   ; 06
- D 0 - I - 0x00D589 03:9579: F9        .byte $F9, $14   ; 07
- D 0 - I - 0x00D58B 03:957B: F9        .byte $F9, $14   ; 08
- D 0 - I - 0x00D58D 03:957D: F1        .byte $F1, $0E   ; 09
- D 0 - I - 0x00D58F 03:957F: F9        .byte $F9, $0C   ; 0A
- D 0 - I - 0x00D591 03:9581: FB        .byte $FB, $04   ; 0B



_off030_9583_10:
- D 0 - I - 0x00D593 03:9583: 04        .byte con_sub_04, $0E, $09   ; 
- D 0 - I - 0x00D596 03:9586: AB 95     .word off_04_95AB_00_spr_A
- - - - - - 0x00D598 03:9588: B9 95     .word off_04_95B9_01_spr_A
- - - - - - 0x00D59A 03:958A: C7 95     .word off_04_95C7_02_spr_A
- D 0 - I - 0x00D59C 03:958C: 9D 95     .word off_04_959D_03_spr_T
- D 0 - I - 0x00D59E 03:958E: D5 95     .word off_04_95D5_04_spr_XY
- D 0 - I - 0x00D5A0 03:9590: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- - - - - - 0x00D5A2 03:9592: 00 00     .word $0000 ; 00
- D 0 - I - 0x00D5A4 03:9594: 33 B6     .word sub_06_B633_01
- D 0 - I - 0x00D5A6 03:9596: DF B7     .word sub_06_B7DF_02
- D 0 - I - 0x00D5A8 03:9598: E9 B7     .word sub_06_B7E9_03
- D 0 - I - 0x00D5AA 03:959A: F2 B7     .word sub_06_B7F2_04
@end:
- D 0 - I - 0x00D5AC 03:959C: 00        .byte con_sub_00   ; 



off_04_959D_03_spr_T:
off_04_959D_02_spr_T:
- D 0 - I - 0x00D5AD 03:959D: 00        .byte $00   ; 01
- D 0 - I - 0x00D5AE 03:959E: 01        .byte $01   ; 02
- D 0 - I - 0x00D5AF 03:959F: 4A        .byte $4A   ; 03
- D 0 - I - 0x00D5B0 03:95A0: 2F        .byte $2F   ; 04
- D 0 - I - 0x00D5B1 03:95A1: 11        .byte $11   ; 05
- D 0 - I - 0x00D5B2 03:95A2: 69        .byte $69   ; 06
- D 0 - I - 0x00D5B3 03:95A3: 5A        .byte $5A   ; 07
- D 0 - I - 0x00D5B4 03:95A4: 20        .byte $20   ; 08
- D 0 - I - 0x00D5B5 03:95A5: 79        .byte $79   ; 09
- D 0 - I - 0x00D5B6 03:95A6: 15        .byte $15   ; 0A
- D 0 - I - 0x00D5B7 03:95A7: 50        .byte $50   ; 0B
- D 0 - I - 0x00D5B8 03:95A8: 51        .byte $51   ; 0C
- D 0 - I - 0x00D5B9 03:95A9: 40        .byte $40   ; 0D
- D 0 - I - 0x00D5BA 03:95AA: 41        .byte $41   ; 0E



off_04_95AB_00_spr_A:
- D 0 - I - 0x00D5BB 03:95AB: 00        .byte $00   ; 01
- D 0 - I - 0x00D5BC 03:95AC: 00        .byte $00   ; 02
- D 0 - I - 0x00D5BD 03:95AD: 40        .byte $40   ; 03
- D 0 - I - 0x00D5BE 03:95AE: 40        .byte $40   ; 04
- D 0 - I - 0x00D5BF 03:95AF: 40        .byte $40   ; 05
- D 0 - I - 0x00D5C0 03:95B0: 40        .byte $40   ; 06
- D 0 - I - 0x00D5C1 03:95B1: 40        .byte $40   ; 07
- D 0 - I - 0x00D5C2 03:95B2: 01        .byte $01   ; 08
- D 0 - I - 0x00D5C3 03:95B3: 41        .byte $41   ; 09
- D 0 - I - 0x00D5C4 03:95B4: 40        .byte $40   ; 0A
- D 0 - I - 0x00D5C5 03:95B5: 01        .byte $01   ; 0B
- D 0 - I - 0x00D5C6 03:95B6: 01        .byte $01   ; 0C
- D 0 - I - 0x00D5C7 03:95B7: 00        .byte $00   ; 0D
- D 0 - I - 0x00D5C8 03:95B8: 00        .byte $00   ; 0E



off_04_95B9_01_spr_A:
- - - - - - 0x00D5C9 03:95B9: 00        .byte $00   ; 01
- - - - - - 0x00D5CA 03:95BA: 00        .byte $00   ; 02
- - - - - - 0x00D5CB 03:95BB: 40        .byte $40   ; 03
- - - - - - 0x00D5CC 03:95BC: 40        .byte $40   ; 04
- - - - - - 0x00D5CD 03:95BD: 40        .byte $40   ; 05
- - - - - - 0x00D5CE 03:95BE: 40        .byte $40   ; 06
- - - - - - 0x00D5CF 03:95BF: 40        .byte $40   ; 07
- - - - - - 0x00D5D0 03:95C0: 00        .byte $00   ; 08
- - - - - - 0x00D5D1 03:95C1: 40        .byte $40   ; 09
- - - - - - 0x00D5D2 03:95C2: 40        .byte $40   ; 0A
- - - - - - 0x00D5D3 03:95C3: 00        .byte $00   ; 0B
- - - - - - 0x00D5D4 03:95C4: 00        .byte $00   ; 0C
- - - - - - 0x00D5D5 03:95C5: 00        .byte $00   ; 0D
- - - - - - 0x00D5D6 03:95C6: 00        .byte $00   ; 0E



off_04_95C7_02_spr_A:
- - - - - - 0x00D5D7 03:95C7: 02        .byte $02   ; 01
- - - - - - 0x00D5D8 03:95C8: 02        .byte $02   ; 02
- - - - - - 0x00D5D9 03:95C9: 42        .byte $42   ; 03
- - - - - - 0x00D5DA 03:95CA: 42        .byte $42   ; 04
- - - - - - 0x00D5DB 03:95CB: 42        .byte $42   ; 05
- - - - - - 0x00D5DC 03:95CC: 42        .byte $42   ; 06
- - - - - - 0x00D5DD 03:95CD: 42        .byte $42   ; 07
- - - - - - 0x00D5DE 03:95CE: 02        .byte $02   ; 08
- - - - - - 0x00D5DF 03:95CF: 42        .byte $42   ; 09
- - - - - - 0x00D5E0 03:95D0: 42        .byte $42   ; 0A
- - - - - - 0x00D5E1 03:95D1: 02        .byte $02   ; 0B
- - - - - - 0x00D5E2 03:95D2: 02        .byte $02   ; 0C
- - - - - - 0x00D5E3 03:95D3: 02        .byte $02   ; 0D
- - - - - - 0x00D5E4 03:95D4: 02        .byte $02   ; 0E



off_04_95D5_04_spr_XY:
off_04_95D5_03_spr_XY:
- D 0 - I - 0x00D5E5 03:95D5: 03        .byte $03, $24   ; 01
- D 0 - I - 0x00D5E7 03:95D7: 0B        .byte $0B, $24   ; 02
- D 0 - I - 0x00D5E9 03:95D9: 0D        .byte $0D, $25   ; 03
- D 0 - I - 0x00D5EB 03:95DB: 0D        .byte $0D, $2A   ; 04
- D 0 - I - 0x00D5ED 03:95DD: FF        .byte $FF, $1C   ; 05
- D 0 - I - 0x00D5EF 03:95DF: 07        .byte $07, $1C   ; 06
- D 0 - I - 0x00D5F1 03:95E1: 0D        .byte $0D, $1D   ; 07
- D 0 - I - 0x00D5F3 03:95E3: FF        .byte $FF, $14   ; 08
- D 0 - I - 0x00D5F5 03:95E5: 07        .byte $07, $14   ; 09
- D 0 - I - 0x00D5F7 03:95E7: 02        .byte $02, $14   ; 0A
- D 0 - I - 0x00D5F9 03:95E9: FD        .byte $FD, $0C   ; 0B
- D 0 - I - 0x00D5FB 03:95EB: 05        .byte $05, $0C   ; 0C
- D 0 - I - 0x00D5FD 03:95ED: FC        .byte $FC, $04   ; 0D
- D 0 - I - 0x00D5FF 03:95EF: 06        .byte $06, $04   ; 0E



sub_05_95F1:
- D 0 - I - 0x00D601 03:95F1: 04        .byte con_sub_04, $0C, $09   ; 
- D 0 - I - 0x00D604 03:95F4: 15 96     .word off_04_9615_00_spr_A
- - - - - - 0x00D606 03:95F6: 6C 8F     .word off_04_8F6C_01_spr_A
- - - - - - 0x00D608 03:95F8: 21 96     .word off_04_9621_02_spr_A
- D 0 - I - 0x00D60A 03:95FA: 09 96     .word off_04_9609_03_spr_T
- D 0 - I - 0x00D60C 03:95FC: 2D 96     .word off_04_962D_04_spr_XY
- D 0 - I - 0x00D60E 03:95FE: 00        .byte con_sub_00   ; 



_off030_95FF_11:
- D 0 - I - 0x00D60F 03:95FF: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D611 03:9601: 00 00     .word $0000 ; 00
- D 0 - I - 0x00D613 03:9603: B3 BF     .word sub_06_BFB3_01
@end:
- D 0 - I - 0x00D615 03:9605: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00D616 03:9606: F1 95     .word sub_05_95F1
- D 0 - I - 0x00D618 03:9608: 00        .byte con_sub_00   ; 



off_04_9609_03_spr_T:
off_04_9609_02_spr_T:
- D 0 - I - 0x00D619 03:9609: 00        .byte $00   ; 01
- D 0 - I - 0x00D61A 03:960A: 01        .byte $01   ; 02
- D 0 - I - 0x00D61B 03:960B: 2D        .byte $2D   ; 03
- D 0 - I - 0x00D61C 03:960C: 48        .byte $48   ; 04
- D 0 - I - 0x00D61D 03:960D: 49        .byte $49   ; 05
- D 0 - I - 0x00D61E 03:960E: 57        .byte $57   ; 06
- D 0 - I - 0x00D61F 03:960F: 58        .byte $58   ; 07
- D 0 - I - 0x00D620 03:9610: 50        .byte $50   ; 08
- D 0 - I - 0x00D621 03:9611: 51        .byte $51   ; 09
- D 0 - I - 0x00D622 03:9612: 17        .byte $17   ; 0A
- D 0 - I - 0x00D623 03:9613: 41        .byte $41   ; 0B
- D 0 - I - 0x00D624 03:9614: 3A        .byte $3A   ; 0C



off_04_9615_00_spr_A:
- D 0 - I - 0x00D625 03:9615: 00        .byte $00   ; 01
- D 0 - I - 0x00D626 03:9616: 00        .byte $00   ; 02
- D 0 - I - 0x00D627 03:9617: 00        .byte $00   ; 03
- D 0 - I - 0x00D628 03:9618: 01        .byte $01   ; 04
- D 0 - I - 0x00D629 03:9619: 00        .byte $00   ; 05
- D 0 - I - 0x00D62A 03:961A: 01        .byte $01   ; 06
- D 0 - I - 0x00D62B 03:961B: 01        .byte $01   ; 07



off_04_961C_00_spr_A:
- D 0 - I - 0x00D62C 03:961C: 01        .byte $01   ; 01 (08)
- D 0 - I - 0x00D62D 03:961D: 01        .byte $01   ; 02 (09)
- D 0 - I - 0x00D62E 03:961E: 00        .byte $00   ; 03 (0A)
- D 0 - I - 0x00D62F 03:961F: 00        .byte $00   ; 04 (0B)
- D 0 - I - 0x00D630 03:9620: 00        .byte $00   ; 05 (0C)



off_04_9621_02_spr_A:
- - - - - - 0x00D631 03:9621: 02        .byte $02   ; 01
- - - - - - 0x00D632 03:9622: 02        .byte $02   ; 02
- - - - - - 0x00D633 03:9623: 02        .byte $02   ; 03
- - - - - - 0x00D634 03:9624: 02        .byte $02   ; 04
- - - - - - 0x00D635 03:9625: 02        .byte $02   ; 05
- - - - - - 0x00D636 03:9626: 02        .byte $02   ; 06
- - - - - - 0x00D637 03:9627: 02        .byte $02   ; 07
off_04_9628_02_spr_A:
- D 0 - I - 0x00D638 03:9628: 02        .byte $02   ; 01 (08)
- D 0 - I - 0x00D639 03:9629: 02        .byte $02   ; 02 (09)
- D 0 - I - 0x00D63A 03:962A: 02        .byte $02   ; 03 (0A)
- D 0 - I - 0x00D63B 03:962B: 02        .byte $02   ; 04 (0B)
- - - - - - 0x00D63C 03:962C: 02        .byte $02   ; 05 (0C)



off_04_962D_04_spr_XY:
off_04_962D_03_spr_XY:
- D 0 - I - 0x00D63D 03:962D: F6        .byte $F6, $24   ; 01
- D 0 - I - 0x00D63F 03:962F: FE        .byte $FE, $24   ; 02
- D 0 - I - 0x00D641 03:9631: F8        .byte $F8, $1C   ; 03
- D 0 - I - 0x00D643 03:9633: 00        .byte $00, $1C   ; 04
- D 0 - I - 0x00D645 03:9635: F1        .byte $F1, $13   ; 05
- D 0 - I - 0x00D647 03:9637: F9        .byte $F9, $14   ; 06
- D 0 - I - 0x00D649 03:9639: 01        .byte $01, $14   ; 07
- D 0 - I - 0x00D64B 03:963B: F9        .byte $F9, $0C   ; 08
- D 0 - I - 0x00D64D 03:963D: 01        .byte $01, $0C   ; 09
- D 0 - I - 0x00D64F 03:963F: FB        .byte $FB, $04   ; 0A
- D 0 - I - 0x00D651 03:9641: 03        .byte $03, $04   ; 0B
- D 0 - I - 0x00D653 03:9643: F9        .byte $F9, $15   ; 0C



_off030_9645_0F:
- D 0 - I - 0x00D655 03:9645: 04        .byte con_sub_04, $09, $09   ; 
- D 0 - I - 0x00D658 03:9648: 5F 96     .word off_04_965F_00_spr_A
- D 0 - I - 0x00D65A 03:964A: 6C 8F     .word off_04_8F6C_01_spr_A
- - - - - - 0x00D65C 03:964C: 69 96     .word off_04_9669_02_spr_A
- D 0 - I - 0x00D65E 03:964E: 56 96     .word off_04_9656_03_spr_T
- D 0 - I - 0x00D660 03:9650: 73 96     .word off_04_9673_04_spr_XY
- D 0 - I - 0x00D662 03:9652: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00D663 03:9653: 62 97     .word sub_05_9762
- D 0 - I - 0x00D665 03:9655: 00        .byte con_sub_00   ; 



off_04_9656_03_spr_T:
- D 0 - I - 0x00D666 03:9656: 67        .byte $67   ; 01
- D 0 - I - 0x00D667 03:9657: 01        .byte $01   ; 02
- D 0 - I - 0x00D668 03:9658: 6A        .byte $6A   ; 03
- D 0 - I - 0x00D669 03:9659: 6B        .byte $6B   ; 04
- D 0 - I - 0x00D66A 03:965A: 77        .byte $77   ; 05
- D 0 - I - 0x00D66B 03:965B: 11        .byte $11   ; 06
- D 0 - I - 0x00D66C 03:965C: 79        .byte $79   ; 07
- D 0 - I - 0x00D66D 03:965D: 21        .byte $21   ; 08
- D 0 - I - 0x00D66E 03:965E: 15        .byte $15   ; 09



off_04_965F_00_spr_A:
- D 0 - I - 0x00D66F 03:965F: 00        .byte $00   ; 01
- D 0 - I - 0x00D670 03:9660: 00        .byte $00   ; 02
- D 0 - I - 0x00D671 03:9661: 00        .byte $00   ; 03
- D 0 - I - 0x00D672 03:9662: 00        .byte $00   ; 04
- D 0 - I - 0x00D673 03:9663: 00        .byte $00   ; 05
- D 0 - I - 0x00D674 03:9664: 00        .byte $00   ; 06
- D 0 - I - 0x00D675 03:9665: 01        .byte $01   ; 07
- D 0 - I - 0x00D676 03:9666: 01        .byte $01   ; 08
- D 0 - I - 0x00D677 03:9667: 00        .byte $00   ; 09
- D 0 - I - 0x00D678 03:9668: 00        .byte $00   ; 0A



off_04_9669_02_spr_A:
- D 0 - I - 0x00D679 03:9669: 02        .byte $02   ; 01
- D 0 - I - 0x00D67A 03:966A: 02        .byte $02   ; 02
- D 0 - I - 0x00D67B 03:966B: 02        .byte $02   ; 03
- D 0 - I - 0x00D67C 03:966C: 02        .byte $02   ; 04
- D 0 - I - 0x00D67D 03:966D: 02        .byte $02   ; 05
- D 0 - I - 0x00D67E 03:966E: 02        .byte $02   ; 06
- D 0 - I - 0x00D67F 03:966F: 02        .byte $02   ; 07
- D 0 - I - 0x00D680 03:9670: 02        .byte $02   ; 08
- D 0 - I - 0x00D681 03:9671: 02        .byte $02   ; 09
- D 0 - I - 0x00D682 03:9672: 02        .byte $02   ; 0A



off_02_9673_02_spr_XY:
off_04_9673_04_spr_XY:
- D 0 - I - 0x00D683 03:9673: FA        .byte $FA, $24   ; 01
- D 0 - I - 0x00D685 03:9675: 02        .byte $02, $24   ; 02
- D 0 - I - 0x00D687 03:9677: EA        .byte $EA, $1F   ; 03
- D 0 - I - 0x00D689 03:9679: F2        .byte $F2, $1F   ; 04
- D 0 - I - 0x00D68B 03:967B: FA        .byte $FA, $1C   ; 05
- D 0 - I - 0x00D68D 03:967D: 02        .byte $02, $1C   ; 06
- D 0 - I - 0x00D68F 03:967F: FC        .byte $FC, $14   ; 07
- D 0 - I - 0x00D691 03:9681: 04        .byte $04, $14   ; 08
- D 0 - I - 0x00D693 03:9683: FF        .byte $FF, $14   ; 09



_off030_9685_0E:
- D 0 - I - 0x00D695 03:9685: 04        .byte con_sub_04, $08, $09   ; 
- D 0 - I - 0x00D698 03:9688: 0D 93     .word off_04_930D_00_spr_A
- D 0 - I - 0x00D69A 03:968A: 6C 8F     .word off_04_8F6C_01_spr_A
- - - - - - 0x00D69C 03:968C: 1B 93     .word off_04_931B_02_spr_A
- D 0 - I - 0x00D69E 03:968E: 96 96     .word off_04_9696_03_spr_T
- D 0 - I - 0x00D6A0 03:9690: 9E 96     .word off_04_969E_04_spr_XY
- D 0 - I - 0x00D6A2 03:9692: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00D6A3 03:9693: 62 97     .word sub_05_9762
- D 0 - I - 0x00D6A5 03:9695: 00        .byte con_sub_00   ; 



off_04_9696_03_spr_T:
- D 0 - I - 0x00D6A6 03:9696: 6A        .byte $6A   ; 01
- D 0 - I - 0x00D6A7 03:9697: 00        .byte $00   ; 02
- D 0 - I - 0x00D6A8 03:9698: 01        .byte $01   ; 03
- D 0 - I - 0x00D6A9 03:9699: 10        .byte $10   ; 04
- D 0 - I - 0x00D6AA 03:969A: 11        .byte $11   ; 05
- D 0 - I - 0x00D6AB 03:969B: 79        .byte $79   ; 06
- D 0 - I - 0x00D6AC 03:969C: 21        .byte $21   ; 07
- D 0 - I - 0x00D6AD 03:969D: 15        .byte $15   ; 08



off_04_969E_04_spr_XY:
- D 0 - I - 0x00D6AE 03:969E: F6        .byte $F6, $20   ; 01
- D 0 - I - 0x00D6B0 03:96A0: FC        .byte $FC, $24   ; 02
- D 0 - I - 0x00D6B2 03:96A2: 04        .byte $04, $24   ; 03
- D 0 - I - 0x00D6B4 03:96A4: FC        .byte $FC, $1C   ; 04
- D 0 - I - 0x00D6B6 03:96A6: 04        .byte $04, $1C   ; 05
- D 0 - I - 0x00D6B8 03:96A8: FD        .byte $FD, $14   ; 06
- D 0 - I - 0x00D6BA 03:96AA: 05        .byte $05, $14   ; 07
- D 0 - I - 0x00D6BC 03:96AC: 00        .byte $00, $14   ; 08



_off030_96AE_0D:
- D 0 - I - 0x00D6BE 03:96AE: 04        .byte con_sub_04, $08, $09   ; 
- D 0 - I - 0x00D6C1 03:96B1: 59 8C     .word off_04_8C59_00_spr_A
- D 0 - I - 0x00D6C3 03:96B3: 6C 8F     .word off_04_8F6C_01_spr_A
- - - - - - 0x00D6C5 03:96B5: C7 96     .word off_04_96C7_02_spr_A
- D 0 - I - 0x00D6C7 03:96B7: BF 96     .word off_04_96BF_03_spr_T
- D 0 - I - 0x00D6C9 03:96B9: CF 96     .word off_04_96CF_04_spr_XY
- D 0 - I - 0x00D6CB 03:96BB: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00D6CC 03:96BC: 62 97     .word sub_05_9762
- D 0 - I - 0x00D6CE 03:96BE: 00        .byte con_sub_00   ; 



off_04_96BF_03_spr_T:
- D 0 - I - 0x00D6CF 03:96BF: 00        .byte $00   ; 01
- D 0 - I - 0x00D6D0 03:96C0: 01        .byte $01   ; 02
- D 0 - I - 0x00D6D1 03:96C1: 7A        .byte $7A   ; 03
- D 0 - I - 0x00D6D2 03:96C2: 7B        .byte $7B   ; 04
- D 0 - I - 0x00D6D3 03:96C3: 59        .byte $59   ; 05
- D 0 - I - 0x00D6D4 03:96C4: 0B        .byte $0B   ; 06
- D 0 - I - 0x00D6D5 03:96C5: 57        .byte $57   ; 07
- D 0 - I - 0x00D6D6 03:96C6: 58        .byte $58   ; 08



off_04_96C7_02_spr_A:
- - - - - - 0x00D6D7 03:96C7: 02        .byte $02   ; 01
- - - - - - 0x00D6D8 03:96C8: 02        .byte $02   ; 02
- - - - - - 0x00D6D9 03:96C9: 02        .byte $02   ; 03
- - - - - - 0x00D6DA 03:96CA: 02        .byte $02   ; 04
- - - - - - 0x00D6DB 03:96CB: 02        .byte $02   ; 05
- - - - - - 0x00D6DC 03:96CC: 02        .byte $02   ; 06
- - - - - - 0x00D6DD 03:96CD: 02        .byte $02   ; 07
- - - - - - 0x00D6DE 03:96CE: 02        .byte $02   ; 08



off_04_96CF_04_spr_XY:
- D 0 - I - 0x00D6DF 03:96CF: FA        .byte $FA, $24   ; 01
- D 0 - I - 0x00D6E1 03:96D1: 02        .byte $02, $24   ; 02
- D 0 - I - 0x00D6E3 03:96D3: EE        .byte $EE, $1D   ; 03
- D 0 - I - 0x00D6E5 03:96D5: F6        .byte $F6, $1D   ; 04
- D 0 - I - 0x00D6E7 03:96D7: FE        .byte $FE, $1C   ; 05
- D 0 - I - 0x00D6E9 03:96D9: 06        .byte $06, $1C   ; 06
- D 0 - I - 0x00D6EB 03:96DB: FB        .byte $FB, $14   ; 07
- D 0 - I - 0x00D6ED 03:96DD: 03        .byte $03, $14   ; 08



_off030_96DF_0C:
- D 0 - I - 0x00D6EF 03:96DF: 04        .byte con_sub_04, $07, $09   ; 
- D 0 - I - 0x00D6F2 03:96E2: F7 96     .word off_04_96F7_00_spr_A
- D 0 - I - 0x00D6F4 03:96E4: 6C 8F     .word off_04_8F6C_01_spr_A
- - - - - - 0x00D6F6 03:96E6: C7 96     .word off_04_96C7_02_spr_A
- D 0 - I - 0x00D6F8 03:96E8: F0 96     .word off_04_96F0_03_spr_T
- D 0 - I - 0x00D6FA 03:96EA: FE 96     .word off_04_96FE_04_spr_XY
- D 0 - I - 0x00D6FC 03:96EC: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00D6FD 03:96ED: 62 97     .word sub_05_9762
- D 0 - I - 0x00D6FF 03:96EF: 00        .byte con_sub_00   ; 



off_04_96F0_03_spr_T:
- D 0 - I - 0x00D700 03:96F0: 00        .byte $00   ; 01
- D 0 - I - 0x00D701 03:96F1: 01        .byte $01   ; 02
- D 0 - I - 0x00D702 03:96F2: 7A        .byte $7A   ; 03
- D 0 - I - 0x00D703 03:96F3: 48        .byte $48   ; 04
- D 0 - I - 0x00D704 03:96F4: 57        .byte $57   ; 05
- D 0 - I - 0x00D705 03:96F5: 29        .byte $29   ; 06
- D 0 - I - 0x00D706 03:96F6: 58        .byte $58   ; 07



off_04_96F7_00_spr_A:
- D 0 - I - 0x00D707 03:96F7: 00        .byte $00   ; 01
- D 0 - I - 0x00D708 03:96F8: 00        .byte $00   ; 02
- D 0 - I - 0x00D709 03:96F9: 00        .byte $00   ; 03
- D 0 - I - 0x00D70A 03:96FA: 01        .byte $01   ; 04
- D 0 - I - 0x00D70B 03:96FB: 01        .byte $01   ; 05
- D 0 - I - 0x00D70C 03:96FC: 00        .byte $00   ; 06
- D 0 - I - 0x00D70D 03:96FD: 01        .byte $01   ; 07



off_04_96FE_04_spr_XY:
- D 0 - I - 0x00D70E 03:96FE: FC        .byte $FC, $24   ; 01
- D 0 - I - 0x00D710 03:9700: 04        .byte $04, $24   ; 02
- D 0 - I - 0x00D712 03:9702: F8        .byte $F8, $1C   ; 03
- D 0 - I - 0x00D714 03:9704: 06        .byte $06, $1C   ; 04
- D 0 - I - 0x00D716 03:9706: FD        .byte $FD, $14   ; 05
- D 0 - I - 0x00D718 03:9708: FE        .byte $FE, $1B   ; 06
- D 0 - I - 0x00D71A 03:970A: 05        .byte $05, $14   ; 07



_off030_970C_17:
- D 0 - I - 0x00D71C 03:970C: 04        .byte con_sub_04, $0A, $09   ; 
- D 0 - I - 0x00D71F 03:970F: 30 97     .word off_04_9730_00_spr_A
- - - - - - 0x00D721 03:9711: 3A 97     .word off_04_973A_01_spr_A
- D 0 - I - 0x00D723 03:9713: 44 97     .word off_04_9744_02_spr_A
- D 0 - I - 0x00D725 03:9715: 26 97     .word off_04_9726_03_spr_T
- D 0 - I - 0x00D727 03:9717: 4E 97     .word off_04_974E_04_spr_XY
- D 0 - I - 0x00D729 03:9719: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D72B 03:971B: 04 B6     .word sub_06_B604_00
- D 0 - I - 0x00D72D 03:971D: 65 B6     .word sub_06_B665_01
- D 0 - I - 0x00D72F 03:971F: FD B6     .word sub_06_B6FD_02
- D 0 - I - 0x00D731 03:9721: 5F B7     .word sub_06_B75F_03
- D 0 - I - 0x00D733 03:9723: C1 B7     .word sub_06_B7C1_04
@end:
- D 0 - I - 0x00D735 03:9725: 00        .byte con_sub_00   ; 



off_04_9726_03_spr_T:
- D 0 - I - 0x00D736 03:9726: 01        .byte $01   ; 01
- D 0 - I - 0x00D737 03:9727: 00        .byte $00   ; 02
- D 0 - I - 0x00D738 03:9728: 11        .byte $11   ; 03
- D 0 - I - 0x00D739 03:9729: 10        .byte $10   ; 04
- D 0 - I - 0x00D73A 03:972A: 55        .byte $55   ; 05
- D 0 - I - 0x00D73B 03:972B: 68        .byte $68   ; 06
- D 0 - I - 0x00D73C 03:972C: 15        .byte $15   ; 07
- D 0 - I - 0x00D73D 03:972D: 64        .byte $64   ; 08
- D 0 - I - 0x00D73E 03:972E: 78        .byte $78   ; 09
- D 0 - I - 0x00D73F 03:972F: 41        .byte $41   ; 0A



off_04_9730_00_spr_A:
- D 0 - I - 0x00D740 03:9730: 40        .byte $40   ; 01
- D 0 - I - 0x00D741 03:9731: 40        .byte $40   ; 02
- D 0 - I - 0x00D742 03:9732: 40        .byte $40   ; 03
- D 0 - I - 0x00D743 03:9733: 40        .byte $40   ; 04
- D 0 - I - 0x00D744 03:9734: 41        .byte $41   ; 05
- D 0 - I - 0x00D745 03:9735: 41        .byte $41   ; 06
- D 0 - I - 0x00D746 03:9736: 40        .byte $40   ; 07
- D 0 - I - 0x00D747 03:9737: 41        .byte $41   ; 08
- D 0 - I - 0x00D748 03:9738: 41        .byte $41   ; 09
- D 0 - I - 0x00D749 03:9739: 40        .byte $40   ; 0A



off_04_973A_01_spr_A:
- - - - - - 0x00D74A 03:973A: 40        .byte $40   ; 01
- - - - - - 0x00D74B 03:973B: 40        .byte $40   ; 02
- - - - - - 0x00D74C 03:973C: 40        .byte $40   ; 03
- - - - - - 0x00D74D 03:973D: 40        .byte $40   ; 04
- - - - - - 0x00D74E 03:973E: 40        .byte $40   ; 05
- - - - - - 0x00D74F 03:973F: 40        .byte $40   ; 06
- - - - - - 0x00D750 03:9740: 40        .byte $40   ; 07
- - - - - - 0x00D751 03:9741: 40        .byte $40   ; 08
- - - - - - 0x00D752 03:9742: 40        .byte $40   ; 09
- - - - - - 0x00D753 03:9743: 40        .byte $40   ; 0A



off_04_9744_02_spr_A:
- D 0 - I - 0x00D754 03:9744: 42        .byte $42   ; 01
- D 0 - I - 0x00D755 03:9745: 42        .byte $42   ; 02
- D 0 - I - 0x00D756 03:9746: 42        .byte $42   ; 03
- D 0 - I - 0x00D757 03:9747: 42        .byte $42   ; 04
- D 0 - I - 0x00D758 03:9748: 42        .byte $42   ; 05
- D 0 - I - 0x00D759 03:9749: 42        .byte $42   ; 06
- D 0 - I - 0x00D75A 03:974A: 42        .byte $42   ; 07
- D 0 - I - 0x00D75B 03:974B: 42        .byte $42   ; 08
- D 0 - I - 0x00D75C 03:974C: 42        .byte $42   ; 09
- D 0 - I - 0x00D75D 03:974D: 42        .byte $42   ; 0A



off_04_974E_04_spr_XY:
- D 0 - I - 0x00D75E 03:974E: 07        .byte $07, $24   ; 01
- D 0 - I - 0x00D760 03:9750: 0F        .byte $0F, $24   ; 02
- D 0 - I - 0x00D762 03:9752: 07        .byte $07, $1C   ; 03
- D 0 - I - 0x00D764 03:9754: 0F        .byte $0F, $1C   ; 04
- D 0 - I - 0x00D766 03:9756: 07        .byte $07, $14   ; 05
- D 0 - I - 0x00D768 03:9758: 0F        .byte $0F, $14   ; 06
- D 0 - I - 0x00D76A 03:975A: 0A        .byte $0A, $14   ; 07
- D 0 - I - 0x00D76C 03:975C: 07        .byte $07, $0C   ; 08
- D 0 - I - 0x00D76E 03:975E: 0F        .byte $0F, $0C   ; 09
- D 0 - I - 0x00D770 03:9760: 05        .byte $05, $04   ; 0A



sub_05_9762:
- D 0 - I - 0x00D772 03:9762: 04        .byte con_sub_04, $04, $09   ; 
- D 0 - I - 0x00D775 03:9765: 1C 96     .word off_04_961C_00_spr_A
- D 0 - I - 0x00D777 03:9767: 6C 8F     .word off_04_8F6C_01_spr_A
- D 0 - I - 0x00D779 03:9769: 28 96     .word off_04_9628_02_spr_A
- D 0 - I - 0x00D77B 03:976B: 70 97     .word off_04_9770_03_spr_T
- D 0 - I - 0x00D77D 03:976D: 74 97     .word off_04_9774_04_spr_XY
- D 0 - I - 0x00D77F 03:976F: 00        .byte con_sub_00   ; 



off_04_9770_03_spr_T:
- D 0 - I - 0x00D780 03:9770: 50        .byte $50   ; 01
- D 0 - I - 0x00D781 03:9771: 51        .byte $51   ; 02
- D 0 - I - 0x00D782 03:9772: 40        .byte $40   ; 03
- D 0 - I - 0x00D783 03:9773: 41        .byte $41   ; 04



off_04_9774_04_spr_XY:
- D 0 - I - 0x00D784 03:9774: FC        .byte $FC, $0C   ; 01
- D 0 - I - 0x00D786 03:9776: 04        .byte $04, $0C   ; 02
- D 0 - I - 0x00D788 03:9778: FC        .byte $FC, $04   ; 03
- D 0 - I - 0x00D78A 03:977A: 05        .byte $05, $04   ; 04



_off030_977C_30:
- D 0 - I - 0x00D78C 03:977C: 04        .byte con_sub_04, $0B, $09   ; 
- D 0 - I - 0x00D78F 03:977F: 95 97     .word off_04_9795_00_spr_A
- - - - - - 0x00D791 03:9781: 9E 97     .word off_04_979E_01_spr_A
- - - - - - 0x00D793 03:9783: A9 97     .word off_04_97A9_02_spr_A
- D 0 - I - 0x00D795 03:9785: 8A 97     .word off_04_978A_03_spr_T
- D 0 - I - 0x00D797 03:9787: B4 97     .word off_04_97B4_04_spr_XY
- D 0 - I - 0x00D799 03:9789: 00        .byte con_sub_00   ; 



off_04_978A_03_spr_T:
- D 0 - I - 0x00D79A 03:978A: 00        .byte $00   ; 01
- D 0 - I - 0x00D79B 03:978B: 01        .byte $01   ; 02
- D 0 - I - 0x00D79C 03:978C: 10        .byte $10   ; 03
- D 0 - I - 0x00D79D 03:978D: 11        .byte $11   ; 04
- D 0 - I - 0x00D79E 03:978E: 20        .byte $20   ; 05
- D 0 - I - 0x00D79F 03:978F: 21        .byte $21   ; 06
- D 0 - I - 0x00D7A0 03:9790: 15        .byte $15   ; 07
- D 0 - I - 0x00D7A1 03:9791: 50        .byte $50   ; 08
- D 0 - I - 0x00D7A2 03:9792: 51        .byte $51   ; 09
- D 0 - I - 0x00D7A3 03:9793: 40        .byte $40   ; 0A
- D 0 - I - 0x00D7A4 03:9794: 41        .byte $41   ; 0B



off_04_9795_00_spr_A:
- D 0 - I - 0x00D7A5 03:9795: 20        .byte $20   ; 01 (0A)
- D 0 - I - 0x00D7A6 03:9796: 20        .byte $20   ; 02 (0B)
- D 0 - I - 0x00D7A7 03:9797: 20        .byte $20   ; 03
- D 0 - I - 0x00D7A8 03:9798: 20        .byte $20   ; 04
- D 0 - I - 0x00D7A9 03:9799: 21        .byte $21   ; 05
- D 0 - I - 0x00D7AA 03:979A: 21        .byte $21   ; 06
- D 0 - I - 0x00D7AB 03:979B: 20        .byte $20   ; 07
- D 0 - I - 0x00D7AC 03:979C: 21        .byte $21   ; 08
- D 0 - I - 0x00D7AD 03:979D: 21        .byte $21   ; 09
off_04_979E_01_spr_A:
- D 0 - I - 0x00D7AE 03:979E: 20        .byte $20   ; 01
- D 0 - I - 0x00D7AF 03:979F: 20        .byte $20   ; 02
- - - - - - 0x00D7B0 03:97A0: 20        .byte $20   ; 03
- - - - - - 0x00D7B1 03:97A1: 20        .byte $20   ; 04
- - - - - - 0x00D7B2 03:97A2: 20        .byte $20   ; 05
- - - - - - 0x00D7B3 03:97A3: 20        .byte $20   ; 06
- - - - - - 0x00D7B4 03:97A4: 20        .byte $20   ; 07
- - - - - - 0x00D7B5 03:97A5: 20        .byte $20   ; 08
- - - - - - 0x00D7B6 03:97A6: 20        .byte $20   ; 09
- - - - - - 0x00D7B7 03:97A7: 20        .byte $20   ; 0A
- - - - - - 0x00D7B8 03:97A8: 20        .byte $20   ; 0B



off_04_97A9_02_spr_A:
- - - - - - 0x00D7B9 03:97A9: 22        .byte $22   ; 01
- - - - - - 0x00D7BA 03:97AA: 22        .byte $22   ; 02
- - - - - - 0x00D7BB 03:97AB: 22        .byte $22   ; 03
- - - - - - 0x00D7BC 03:97AC: 22        .byte $22   ; 04
- - - - - - 0x00D7BD 03:97AD: 22        .byte $22   ; 05
- - - - - - 0x00D7BE 03:97AE: 22        .byte $22   ; 06
- - - - - - 0x00D7BF 03:97AF: 22        .byte $22   ; 07
- - - - - - 0x00D7C0 03:97B0: 22        .byte $22   ; 08
- - - - - - 0x00D7C1 03:97B1: 22        .byte $22   ; 09
- - - - - - 0x00D7C2 03:97B2: 22        .byte $22   ; 0A
- - - - - - 0x00D7C3 03:97B3: 22        .byte $22   ; 0B



off_04_97B4_04_spr_XY:
- D 0 - I - 0x00D7C4 03:97B4: F6        .byte $F6, $24   ; 01
- D 0 - I - 0x00D7C6 03:97B6: FE        .byte $FE, $24   ; 02
- D 0 - I - 0x00D7C8 03:97B8: F6        .byte $F6, $1C   ; 03
- D 0 - I - 0x00D7CA 03:97BA: FE        .byte $FE, $1C   ; 04
- D 0 - I - 0x00D7CC 03:97BC: F7        .byte $F7, $14   ; 05
- D 0 - I - 0x00D7CE 03:97BE: FF        .byte $FF, $14   ; 06
- D 0 - I - 0x00D7D0 03:97C0: FB        .byte $FB, $14   ; 07
- D 0 - I - 0x00D7D2 03:97C2: F7        .byte $F7, $0C   ; 08
- D 0 - I - 0x00D7D4 03:97C4: FF        .byte $FF, $0C   ; 09
- D 0 - I - 0x00D7D6 03:97C6: F7        .byte $F7, $04   ; 0A
- D 0 - I - 0x00D7D8 03:97C8: 00        .byte $00, $04   ; 0B



_off030_97CA_00:
- D 0 - I - 0x00D7DA 03:97CA: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00D7DC 03:97CC: A1 9A     .word off_02_9AA1_00_spr_A
- D 0 - I - 0x00D7DE 03:97CE: EB 83     .word off_02_83EB_01_spr_T
- D 0 - I - 0x00D7E0 03:97D0: F5 83     .word off_02_83F5_02_spr_XY
- D 0 - I - 0x00D7E2 03:97D2: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D7E4 03:97D4: FC B7     .word sub_06_B7FC_00
@end:
- D 0 - I - 0x00D7E6 03:97D6: 00        .byte con_sub_00   ; 



_off030_97D7_01:
- D 0 - I - 0x00D7E7 03:97D7: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00D7E9 03:97D9: A1 9A     .word off_02_9AA1_00_spr_A
- D 0 - I - 0x00D7EB 03:97DB: 12 84     .word off_02_8412_01_spr_T
- D 0 - I - 0x00D7ED 03:97DD: 1C 84     .word off_02_841C_02_spr_XY
- D 0 - I - 0x00D7EF 03:97DF: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D7F1 03:97E1: 08 B8     .word sub_06_B808_00
- - - - - - 0x00D7F3 03:97E3: 00 00     .word $0000 ; 01
- - - - - - 0x00D7F5 03:97E5: 00 00     .word $0000 ; 02
- - - - - - 0x00D7F7 03:97E7: 00 00     .word $0000 ; 03
- - - - - - 0x00D7F9 03:97E9: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00D7FB 03:97EB: 00        .byte con_sub_00   ; 



_off030_97EC_02:
- D 0 - I - 0x00D7FC 03:97EC: 02        .byte con_sub_02, $06   ; 
- D 0 - I - 0x00D7FE 03:97EE: A1 9A     .word off_02_9AA1_00_spr_A
- D 0 - I - 0x00D800 03:97F0: 3C 84     .word off_02_843C_01_spr_T
- D 0 - I - 0x00D802 03:97F2: F5 83     .word off_02_83F5_02_spr_XY
- D 0 - I - 0x00D804 03:97F4: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00D805 03:97F5: 04 98     .word sub_05_9804
- D 0 - I - 0x00D807 03:97F7: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D809 03:97F9: 14 B8     .word sub_06_B814_00
- - - - - - 0x00D80B 03:97FB: 00 00     .word $0000 ; 01
- - - - - - 0x00D80D 03:97FD: 00 00     .word $0000 ; 02
- - - - - - 0x00D80F 03:97FF: 00 00     .word $0000 ; 03
- - - - - - 0x00D811 03:9801: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00D813 03:9803: 00        .byte con_sub_00   ; 



sub_05_9804:
- D 0 - I - 0x00D814 03:9804: 02        .byte con_sub_02, $04   ; 
- D 0 - I - 0x00D816 03:9806: 3D A3     .word off_02_A33D_00_spr_A
- D 0 - I - 0x00D818 03:9808: B4 85     .word off_02_85B4_01_spr_T
- D 0 - I - 0x00D81A 03:980A: B8 85     .word off_02_85B8_02_spr_XY
- D 0 - I - 0x00D81C 03:980C: 00        .byte con_sub_00   ; 



_off030_980D_03:
- D 0 - I - 0x00D81D 03:980D: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00D81F 03:980F: 16 98     .word off_02_9816_00_spr_A
- D 0 - I - 0x00D821 03:9811: E4 84     .word off_02_84E4_01_spr_T
- D 0 - I - 0x00D823 03:9813: F6 84     .word off_02_84F6_02_spr_XY
- D 0 - I - 0x00D825 03:9815: 00        .byte con_sub_00   ; 



off_02_9816_00_spr_A:
- D 0 - I - 0x00D826 03:9816: 00        .byte $00   ; 01
- D 0 - I - 0x00D827 03:9817: 00        .byte $00   ; 02
- D 0 - I - 0x00D828 03:9818: 02        .byte $02   ; 03
- D 0 - I - 0x00D829 03:9819: 02        .byte $02   ; 04
- D 0 - I - 0x00D82A 03:981A: 03        .byte $03   ; 05
- D 0 - I - 0x00D82B 03:981B: 03        .byte $03   ; 06
- D 0 - I - 0x00D82C 03:981C: 03        .byte $03   ; 07
- D 0 - I - 0x00D82D 03:981D: 01        .byte $01   ; 08
- D 0 - I - 0x00D82E 03:981E: 41        .byte $41   ; 09



_off030_981F_04:
- D 0 - I - 0x00D82F 03:981F: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00D831 03:9821: 28 98     .word off_02_9828_00_spr_A
- D 0 - I - 0x00D833 03:9823: E4 84     .word off_02_84E4_01_spr_T
- D 0 - I - 0x00D835 03:9825: 1A 85     .word off_02_851A_02_spr_XY
- D 0 - I - 0x00D837 03:9827: 00        .byte con_sub_00   ; 



off_02_9828_00_spr_A:
- D 0 - I - 0x00D838 03:9828: 40        .byte $40   ; 01
- D 0 - I - 0x00D839 03:9829: 40        .byte $40   ; 02
- D 0 - I - 0x00D83A 03:982A: 42        .byte $42   ; 03
- D 0 - I - 0x00D83B 03:982B: 42        .byte $42   ; 04
- D 0 - I - 0x00D83C 03:982C: 43        .byte $43   ; 05
- D 0 - I - 0x00D83D 03:982D: 43        .byte $43   ; 06
- D 0 - I - 0x00D83E 03:982E: 43        .byte $43   ; 07
- D 0 - I - 0x00D83F 03:982F: 41        .byte $41   ; 08
- D 0 - I - 0x00D840 03:9830: 01        .byte $01   ; 09



sub_06_9831_00:
- D 0 - I - 0x00D841 03:9831: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00D843 03:9833: 3A 98     .word off_02_983A_00_spr_A
- D 0 - I - 0x00D845 03:9835: 15 83     .word off_02_8315_01_spr_T
- D 0 - I - 0x00D847 03:9837: 29 83     .word off_02_8329_02_spr_XY
- D 0 - I - 0x00D849 03:9839: 00        .byte con_sub_00   ; 



off_02_983A_00_spr_A:
- D 0 - I - 0x00D84A 03:983A: 40        .byte $40   ; 01
- D 0 - I - 0x00D84B 03:983B: 40        .byte $40   ; 02
- D 0 - I - 0x00D84C 03:983C: 42        .byte $42   ; 03
- D 0 - I - 0x00D84D 03:983D: 42        .byte $42   ; 04
- D 0 - I - 0x00D84E 03:983E: 42        .byte $42   ; 05
- D 0 - I - 0x00D84F 03:983F: 42        .byte $42   ; 06
- D 0 - I - 0x00D850 03:9840: 43        .byte $43   ; 07
- D 0 - I - 0x00D851 03:9841: 43        .byte $43   ; 08
- D 0 - I - 0x00D852 03:9842: 41        .byte $41   ; 09
- D 0 - I - 0x00D853 03:9843: 41        .byte $41   ; 0A



sub_06_9844_00:
- D 0 - I - 0x00D854 03:9844: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00D856 03:9846: 4D 98     .word off_02_984D_00_spr_A
- D 0 - I - 0x00D858 03:9848: 67 83     .word off_02_8367_01_spr_T
- D 0 - I - 0x00D85A 03:984A: 4E 83     .word off_02_834E_02_spr_XY
- D 0 - I - 0x00D85C 03:984C: 00        .byte con_sub_00   ; 



off_02_984D_00_spr_A:
- D 0 - I - 0x00D85D 03:984D: 02        .byte $02   ; 01
- D 0 - I - 0x00D85E 03:984E: 02        .byte $02   ; 02
- D 0 - I - 0x00D85F 03:984F: 00        .byte $00   ; 03
- D 0 - I - 0x00D860 03:9850: 43        .byte $43   ; 04
- D 0 - I - 0x00D861 03:9851: 43        .byte $43   ; 05
- D 0 - I - 0x00D862 03:9852: 02        .byte $02   ; 06
- D 0 - I - 0x00D863 03:9853: 41        .byte $41   ; 07
- D 0 - I - 0x00D864 03:9854: 41        .byte $41   ; 08



sub_06_9855_00:
- D 0 - I - 0x00D865 03:9855: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00D867 03:9857: 4D 98     .word off_02_984D_00_spr_A
- D 0 - I - 0x00D869 03:9859: 67 83     .word off_02_8367_01_spr_T
- D 0 - I - 0x00D86B 03:985B: 77 83     .word off_02_8377_02_spr_XY
- D 0 - I - 0x00D86D 03:985D: 00        .byte con_sub_00   ; 



_off030_985E_20:
- D 0 - I - 0x00D86E 03:985E: 02        .byte con_sub_02, $0B   ; 
- D 0 - I - 0x00D870 03:9860: 72 98     .word off_02_9872_00_spr_A
- D 0 - I - 0x00D872 03:9862: 67 98     .word off_02_9867_01_spr_T
- D 0 - I - 0x00D874 03:9864: 7D 98     .word off_02_987D_02_spr_XY
- D 0 - I - 0x00D876 03:9866: 00        .byte con_sub_00   ; 



off_02_9867_01_spr_T:
- D 0 - I - 0x00D877 03:9867: BD        .byte $BD   ; 01
- D 0 - I - 0x00D878 03:9868: BE        .byte $BE   ; 02
- D 0 - I - 0x00D879 03:9869: BF        .byte $BF   ; 03
- D 0 - I - 0x00D87A 03:986A: B4        .byte $B4   ; 04
- D 0 - I - 0x00D87B 03:986B: BC        .byte $BC   ; 05
- D 0 - I - 0x00D87C 03:986C: CE        .byte $CE   ; 06
- D 0 - I - 0x00D87D 03:986D: AE        .byte $AE   ; 07
- D 0 - I - 0x00D87E 03:986E: AF        .byte $AF   ; 08
- D 0 - I - 0x00D87F 03:986F: F2        .byte $F2   ; 09
- D 0 - I - 0x00D880 03:9870: CD        .byte $CD   ; 0A
- D 0 - I - 0x00D881 03:9871: C1        .byte $C1   ; 0B



off_02_9872_00_spr_A:
- D 0 - I - 0x00D882 03:9872: 00        .byte $00   ; 01
- D 0 - I - 0x00D883 03:9873: 00        .byte $00   ; 02
- D 0 - I - 0x00D884 03:9874: 02        .byte $02   ; 03
- D 0 - I - 0x00D885 03:9875: 42        .byte $42   ; 04
- D 0 - I - 0x00D886 03:9876: 02        .byte $02   ; 05
- D 0 - I - 0x00D887 03:9877: 02        .byte $02   ; 06
- D 0 - I - 0x00D888 03:9878: 03        .byte $03   ; 07
- D 0 - I - 0x00D889 03:9879: 03        .byte $03   ; 08
- D 0 - I - 0x00D88A 03:987A: C1        .byte $C1   ; 09
- D 0 - I - 0x00D88B 03:987B: 02        .byte $02   ; 0A
- D 0 - I - 0x00D88C 03:987C: 01        .byte $01   ; 0B



off_02_987D_02_spr_XY:
- D 0 - I - 0x00D88D 03:987D: F4        .byte $F4, $13   ; 01
- D 0 - I - 0x00D88F 03:987F: FC        .byte $FC, $14   ; 02
- D 0 - I - 0x00D891 03:9881: 04        .byte $04, $14   ; 03
- D 0 - I - 0x00D893 03:9883: 08        .byte $08, $14   ; 04
- D 0 - I - 0x00D895 03:9885: F5        .byte $F5, $0B   ; 05
- D 0 - I - 0x00D897 03:9887: FD        .byte $FD, $0C   ; 06
- D 0 - I - 0x00D899 03:9889: 05        .byte $05, $0C   ; 07
- D 0 - I - 0x00D89B 03:988B: 0D        .byte $0D, $0C   ; 08
- D 0 - I - 0x00D89D 03:988D: 15        .byte $15, $0C   ; 09
- D 0 - I - 0x00D89F 03:988F: FE        .byte $FE, $04   ; 0A
- D 0 - I - 0x00D8A1 03:9891: 04        .byte $04, $04   ; 0B



_off030_9893_21:
- D 0 - I - 0x00D8A3 03:9893: 02        .byte con_sub_02, $0E   ; 
- D 0 - I - 0x00D8A5 03:9895: AA 98     .word off_02_98AA_00_spr_A
- D 0 - I - 0x00D8A7 03:9897: 9C 98     .word off_02_989C_01_spr_T
- D 0 - I - 0x00D8A9 03:9899: B8 98     .word off_02_98B8_02_spr_XY
- D 0 - I - 0x00D8AB 03:989B: 00        .byte con_sub_00   ; 



off_02_989C_01_spr_T:
- D 0 - I - 0x00D8AC 03:989C: B9        .byte $B9   ; 01
- D 0 - I - 0x00D8AD 03:989D: BA        .byte $BA   ; 02
- D 0 - I - 0x00D8AE 03:989E: F9        .byte $F9   ; 03
- D 0 - I - 0x00D8AF 03:989F: CF        .byte $CF   ; 04
- D 0 - I - 0x00D8B0 03:98A0: C9        .byte $C9   ; 05
- D 0 - I - 0x00D8B1 03:98A1: FB        .byte $FB   ; 06
- D 0 - I - 0x00D8B2 03:98A2: DF        .byte $DF   ; 07
- D 0 - I - 0x00D8B3 03:98A3: E7        .byte $E7   ; 08
- D 0 - I - 0x00D8B4 03:98A4: E9        .byte $E9   ; 09
- D 0 - I - 0x00D8B5 03:98A5: FA        .byte $FA   ; 0A
- D 0 - I - 0x00D8B6 03:98A6: BC        .byte $BC   ; 0B
- D 0 - I - 0x00D8B7 03:98A7: EF        .byte $EF   ; 0C
- D 0 - I - 0x00D8B8 03:98A8: F7        .byte $F7   ; 0D
- D 0 - I - 0x00D8B9 03:98A9: BC        .byte $BC   ; 0E



off_02_98AA_00_spr_A:
- D 0 - I - 0x00D8BA 03:98AA: 03        .byte $03   ; 01
- D 0 - I - 0x00D8BB 03:98AB: 01        .byte $01   ; 02
- D 0 - I - 0x00D8BC 03:98AC: 01        .byte $01   ; 03
- D 0 - I - 0x00D8BD 03:98AD: 02        .byte $02   ; 04
- D 0 - I - 0x00D8BE 03:98AE: 03        .byte $03   ; 05
- D 0 - I - 0x00D8BF 03:98AF: 03        .byte $03   ; 06
- D 0 - I - 0x00D8C0 03:98B0: 02        .byte $02   ; 07
- D 0 - I - 0x00D8C1 03:98B1: 02        .byte $02   ; 08
- D 0 - I - 0x00D8C2 03:98B2: 03        .byte $03   ; 09
- D 0 - I - 0x00D8C3 03:98B3: 01        .byte $01   ; 0A
- D 0 - I - 0x00D8C4 03:98B4: 02        .byte $02   ; 0B
- D 0 - I - 0x00D8C5 03:98B5: 00        .byte $00   ; 0C
- D 0 - I - 0x00D8C6 03:98B6: 00        .byte $00   ; 0D
- D 0 - I - 0x00D8C7 03:98B7: 42        .byte $42   ; 0E



off_02_98B8_02_spr_XY:
- D 0 - I - 0x00D8C8 03:98B8: 03        .byte $03, $24   ; 01
- D 0 - I - 0x00D8CA 03:98BA: 0B        .byte $0B, $28   ; 02
- D 0 - I - 0x00D8CC 03:98BC: 13        .byte $13, $2A   ; 03
- D 0 - I - 0x00D8CE 03:98BE: FB        .byte $FB, $1C   ; 04
- D 0 - I - 0x00D8D0 03:98C0: 03        .byte $03, $1C   ; 05
- D 0 - I - 0x00D8D2 03:98C2: 0B        .byte $0B, $20   ; 06
- D 0 - I - 0x00D8D4 03:98C4: FA        .byte $FA, $14   ; 07
- D 0 - I - 0x00D8D6 03:98C6: 02        .byte $02, $14   ; 08
- D 0 - I - 0x00D8D8 03:98C8: 0B        .byte $0B, $18   ; 09
- D 0 - I - 0x00D8DA 03:98CA: 13        .byte $13, $15   ; 0A
- D 0 - I - 0x00D8DC 03:98CC: F2        .byte $F2, $0B   ; 0B
- D 0 - I - 0x00D8DE 03:98CE: FA        .byte $FA, $0C   ; 0C
- D 0 - I - 0x00D8E0 03:98D0: 02        .byte $02, $0C   ; 0D
- D 0 - I - 0x00D8E2 03:98D2: 05        .byte $05, $06   ; 0E



_off030_98D4_22:
- D 0 - I - 0x00D8E4 03:98D4: 02        .byte con_sub_02, $0F   ; 
- D 0 - I - 0x00D8E6 03:98D6: EC 98     .word off_02_98EC_00_spr_A
- D 0 - I - 0x00D8E8 03:98D8: DD 98     .word off_02_98DD_01_spr_T
- D 0 - I - 0x00D8EA 03:98DA: FB 98     .word off_02_98FB_02_spr_XY
- D 0 - I - 0x00D8EC 03:98DC: 00        .byte con_sub_00   ; 



off_02_98DD_01_spr_T:
- D 0 - I - 0x00D8ED 03:98DD: DC        .byte $DC   ; 01
- D 0 - I - 0x00D8EE 03:98DE: CB        .byte $CB   ; 02
- D 0 - I - 0x00D8EF 03:98DF: CC        .byte $CC   ; 03
- D 0 - I - 0x00D8F0 03:98E0: DC        .byte $DC   ; 04
- D 0 - I - 0x00D8F1 03:98E1: DB        .byte $DB   ; 05
- D 0 - I - 0x00D8F2 03:98E2: DB        .byte $DB   ; 06
- D 0 - I - 0x00D8F3 03:98E3: CB        .byte $CB   ; 07
- D 0 - I - 0x00D8F4 03:98E4: DD        .byte $DD   ; 08
- D 0 - I - 0x00D8F5 03:98E5: DE        .byte $DE   ; 09
- D 0 - I - 0x00D8F6 03:98E6: DD        .byte $DD   ; 0A
- D 0 - I - 0x00D8F7 03:98E7: ED        .byte $ED   ; 0B
- D 0 - I - 0x00D8F8 03:98E8: EE        .byte $EE   ; 0C
- D 0 - I - 0x00D8F9 03:98E9: ED        .byte $ED   ; 0D
- D 0 - I - 0x00D8FA 03:98EA: CD        .byte $CD   ; 0E
- D 0 - I - 0x00D8FB 03:98EB: CD        .byte $CD   ; 0F



off_02_98EC_00_spr_A:
- D 0 - I - 0x00D8FC 03:98EC: 01        .byte $01   ; 01
- D 0 - I - 0x00D8FD 03:98ED: 03        .byte $03   ; 02
- D 0 - I - 0x00D8FE 03:98EE: 03        .byte $03   ; 03
- D 0 - I - 0x00D8FF 03:98EF: 41        .byte $41   ; 04
- D 0 - I - 0x00D900 03:98F0: 03        .byte $03   ; 05
- D 0 - I - 0x00D901 03:98F1: 43        .byte $43   ; 06
- D 0 - I - 0x00D902 03:98F2: 43        .byte $43   ; 07
- D 0 - I - 0x00D903 03:98F3: 02        .byte $02   ; 08
- D 0 - I - 0x00D904 03:98F4: 02        .byte $02   ; 09
- D 0 - I - 0x00D905 03:98F5: 42        .byte $42   ; 0A
- D 0 - I - 0x00D906 03:98F6: 02        .byte $02   ; 0B
- D 0 - I - 0x00D907 03:98F7: 00        .byte $00   ; 0C
- D 0 - I - 0x00D908 03:98F8: 42        .byte $42   ; 0D
- D 0 - I - 0x00D909 03:98F9: 02        .byte $02   ; 0E
- D 0 - I - 0x00D90A 03:98FA: 42        .byte $42   ; 0F



off_02_98FB_02_spr_XY:
- D 0 - I - 0x00D90B 03:98FB: F8        .byte $F8, $29   ; 01
- D 0 - I - 0x00D90D 03:98FD: F9        .byte $F9, $21   ; 02
- D 0 - I - 0x00D90F 03:98FF: 01        .byte $01, $21   ; 03
- D 0 - I - 0x00D911 03:9901: 0A        .byte $0A, $29   ; 04
- D 0 - I - 0x00D913 03:9903: FD        .byte $FD, $19   ; 05
- D 0 - I - 0x00D915 03:9905: 05        .byte $05, $19   ; 06
- D 0 - I - 0x00D917 03:9907: 09        .byte $09, $21   ; 07
- D 0 - I - 0x00D919 03:9909: FA        .byte $FA, $11   ; 08
- D 0 - I - 0x00D91B 03:990B: 02        .byte $02, $11   ; 09
- D 0 - I - 0x00D91D 03:990D: 09        .byte $09, $11   ; 0A
- D 0 - I - 0x00D91F 03:990F: FA        .byte $FA, $09   ; 0B
- D 0 - I - 0x00D921 03:9911: 02        .byte $02, $09   ; 0C
- D 0 - I - 0x00D923 03:9913: 09        .byte $09, $09   ; 0D
- D 0 - I - 0x00D925 03:9915: F9        .byte $F9, $03   ; 0E
- D 0 - I - 0x00D927 03:9917: 0A        .byte $0A, $03   ; 0F



_off030_9919_23:
- D 0 - I - 0x00D929 03:9919: 02        .byte con_sub_02, $0E   ; 
- D 0 - I - 0x00D92B 03:991B: 30 99     .word off_02_9930_00_spr_A
- D 0 - I - 0x00D92D 03:991D: 22 99     .word off_02_9922_01_spr_T
- D 0 - I - 0x00D92F 03:991F: 3E 99     .word off_02_993E_02_spr_XY
- D 0 - I - 0x00D931 03:9921: 00        .byte con_sub_00   ; 



off_02_9922_01_spr_T:
- D 0 - I - 0x00D932 03:9922: F9        .byte $F9   ; 01
- D 0 - I - 0x00D933 03:9923: BA        .byte $BA   ; 02
- D 0 - I - 0x00D934 03:9924: B9        .byte $B9   ; 03
- D 0 - I - 0x00D935 03:9925: FB        .byte $FB   ; 04
- D 0 - I - 0x00D936 03:9926: C9        .byte $C9   ; 05
- D 0 - I - 0x00D937 03:9927: CF        .byte $CF   ; 06
- D 0 - I - 0x00D938 03:9928: FA        .byte $FA   ; 07
- D 0 - I - 0x00D939 03:9929: E9        .byte $E9   ; 08
- D 0 - I - 0x00D93A 03:992A: E7        .byte $E7   ; 09
- D 0 - I - 0x00D93B 03:992B: DF        .byte $DF   ; 0A
- D 0 - I - 0x00D93C 03:992C: F7        .byte $F7   ; 0B
- D 0 - I - 0x00D93D 03:992D: EF        .byte $EF   ; 0C
- D 0 - I - 0x00D93E 03:992E: BC        .byte $BC   ; 0D
- D 0 - I - 0x00D93F 03:992F: BC        .byte $BC   ; 0E



off_02_9930_00_spr_A:
- D 0 - I - 0x00D940 03:9930: 41        .byte $41   ; 01
- D 0 - I - 0x00D941 03:9931: 41        .byte $41   ; 02
- D 0 - I - 0x00D942 03:9932: 43        .byte $43   ; 03
- D 0 - I - 0x00D943 03:9933: 43        .byte $43   ; 04
- D 0 - I - 0x00D944 03:9934: 43        .byte $43   ; 05
- D 0 - I - 0x00D945 03:9935: 42        .byte $42   ; 06
- D 0 - I - 0x00D946 03:9936: 41        .byte $41   ; 07
- D 0 - I - 0x00D947 03:9937: 43        .byte $43   ; 08
- D 0 - I - 0x00D948 03:9938: 42        .byte $42   ; 09
- D 0 - I - 0x00D949 03:9939: 42        .byte $42   ; 0A
- D 0 - I - 0x00D94A 03:993A: 40        .byte $40   ; 0B
- D 0 - I - 0x00D94B 03:993B: 40        .byte $40   ; 0C
- D 0 - I - 0x00D94C 03:993C: 42        .byte $42   ; 0D
- D 0 - I - 0x00D94D 03:993D: 02        .byte $02   ; 0E



off_02_993E_02_spr_XY:
- D 0 - I - 0x00D94E 03:993E: F1        .byte $F1, $2A   ; 01
- D 0 - I - 0x00D950 03:9940: F9        .byte $F9, $28   ; 02
- D 0 - I - 0x00D952 03:9942: 01        .byte $01, $24   ; 03
- D 0 - I - 0x00D954 03:9944: F9        .byte $F9, $20   ; 04
- D 0 - I - 0x00D956 03:9946: 01        .byte $01, $1C   ; 05
- D 0 - I - 0x00D958 03:9948: 09        .byte $09, $1C   ; 06
- D 0 - I - 0x00D95A 03:994A: F1        .byte $F1, $15   ; 07
- D 0 - I - 0x00D95C 03:994C: F9        .byte $F9, $18   ; 08
- D 0 - I - 0x00D95E 03:994E: 01        .byte $01, $14   ; 09
- D 0 - I - 0x00D960 03:9950: 09        .byte $09, $14   ; 0A
- D 0 - I - 0x00D962 03:9952: 01        .byte $01, $0C   ; 0B
- D 0 - I - 0x00D964 03:9954: 09        .byte $09, $0C   ; 0C
- D 0 - I - 0x00D966 03:9956: 11        .byte $11, $0B   ; 0D
- D 0 - I - 0x00D968 03:9958: FE        .byte $FE, $06   ; 0E



_off030_995A_24:
- D 0 - I - 0x00D96A 03:995A: 02        .byte con_sub_02, $0B   ; 
- D 0 - I - 0x00D96C 03:995C: 6E 99     .word off_02_996E_00_spr_A
- D 0 - I - 0x00D96E 03:995E: 63 99     .word off_02_9963_01_spr_T
- D 0 - I - 0x00D970 03:9960: 79 99     .word off_02_9979_02_spr_XY
- D 0 - I - 0x00D972 03:9962: 00        .byte con_sub_00   ; 



off_02_9963_01_spr_T:
- D 0 - I - 0x00D973 03:9963: B4        .byte $B4   ; 01
- D 0 - I - 0x00D974 03:9964: BF        .byte $BF   ; 02
- D 0 - I - 0x00D975 03:9965: BE        .byte $BE   ; 03
- D 0 - I - 0x00D976 03:9966: BD        .byte $BD   ; 04
- D 0 - I - 0x00D977 03:9967: F2        .byte $F2   ; 05
- D 0 - I - 0x00D978 03:9968: AF        .byte $AF   ; 06
- D 0 - I - 0x00D979 03:9969: AE        .byte $AE   ; 07
- D 0 - I - 0x00D97A 03:996A: CE        .byte $CE   ; 08
- D 0 - I - 0x00D97B 03:996B: BC        .byte $BC   ; 09
- D 0 - I - 0x00D97C 03:996C: C1        .byte $C1   ; 0A
- D 0 - I - 0x00D97D 03:996D: CD        .byte $CD   ; 0B



off_02_996E_00_spr_A:
- D 0 - I - 0x00D97E 03:996E: 02        .byte $02   ; 01
- D 0 - I - 0x00D97F 03:996F: 42        .byte $42   ; 02
- D 0 - I - 0x00D980 03:9970: 40        .byte $40   ; 03
- D 0 - I - 0x00D981 03:9971: 40        .byte $40   ; 04
- D 0 - I - 0x00D982 03:9972: 81        .byte $81   ; 05
- D 0 - I - 0x00D983 03:9973: 43        .byte $43   ; 06
- D 0 - I - 0x00D984 03:9974: 43        .byte $43   ; 07
- D 0 - I - 0x00D985 03:9975: 42        .byte $42   ; 08
- D 0 - I - 0x00D986 03:9976: 42        .byte $42   ; 09
- D 0 - I - 0x00D987 03:9977: 41        .byte $41   ; 0A
- D 0 - I - 0x00D988 03:9978: 42        .byte $42   ; 0B



off_02_9979_02_spr_XY:
- D 0 - I - 0x00D989 03:9979: F7        .byte $F7, $14   ; 01
- D 0 - I - 0x00D98B 03:997B: FC        .byte $FC, $14   ; 02
- D 0 - I - 0x00D98D 03:997D: 04        .byte $04, $14   ; 03
- D 0 - I - 0x00D98F 03:997F: 0C        .byte $0C, $13   ; 04
- D 0 - I - 0x00D991 03:9981: EB        .byte $EB, $0C   ; 05
- D 0 - I - 0x00D993 03:9983: F3        .byte $F3, $0C   ; 06
- D 0 - I - 0x00D995 03:9985: FB        .byte $FB, $0C   ; 07
- D 0 - I - 0x00D997 03:9987: 03        .byte $03, $0C   ; 08
- D 0 - I - 0x00D999 03:9989: 0B        .byte $0B, $0B   ; 09
- D 0 - I - 0x00D99B 03:998B: FC        .byte $FC, $04   ; 0A
- D 0 - I - 0x00D99D 03:998D: 02        .byte $02, $04   ; 0B



_off030_998F_05:
- D 0 - I - 0x00D99F 03:998F: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00D9A1 03:9991: AD 99     .word off_02_99AD_00_spr_A
- D 0 - I - 0x00D9A3 03:9993: A4 99     .word off_02_99A4_01_spr_T
- D 0 - I - 0x00D9A5 03:9995: F5 85     .word off_02_85F5_02_spr_XY
- D 0 - I - 0x00D9A7 03:9997: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D9A9 03:9999: 1C B8     .word sub_06_B81C_00
- - - - - - 0x00D9AB 03:999B: 00 00     .word $0000 ; 01
- - - - - - 0x00D9AD 03:999D: 00 00     .word $0000 ; 02
- - - - - - 0x00D9AF 03:999F: 00 00     .word $0000 ; 03
- - - - - - 0x00D9B1 03:99A1: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00D9B3 03:99A3: 00        .byte con_sub_00   ; 



off_02_99A4_01_spr_T:
- D 0 - I - 0x00D9B4 03:99A4: 80        .byte $80   ; 01
- D 0 - I - 0x00D9B5 03:99A5: 81        .byte $81   ; 02
- D 0 - I - 0x00D9B6 03:99A6: 90        .byte $90   ; 03
- D 0 - I - 0x00D9B7 03:99A7: 91        .byte $91   ; 04
- D 0 - I - 0x00D9B8 03:99A8: E8        .byte $E8   ; 05
- D 0 - I - 0x00D9B9 03:99A9: A1        .byte $A1   ; 06
- D 0 - I - 0x00D9BA 03:99AA: F8        .byte $F8   ; 07
- D 0 - I - 0x00D9BB 03:99AB: D9        .byte $D9   ; 08
- D 0 - I - 0x00D9BC 03:99AC: F8        .byte $F8   ; 09



off_02_99AD_00_spr_A:
- D 0 - I - 0x00D9BD 03:99AD: 00        .byte $00   ; 01
- D 0 - I - 0x00D9BE 03:99AE: 00        .byte $00   ; 02
- D 0 - I - 0x00D9BF 03:99AF: 02        .byte $02   ; 03
- D 0 - I - 0x00D9C0 03:99B0: 02        .byte $02   ; 04
- D 0 - I - 0x00D9C1 03:99B1: 03        .byte $03   ; 05
- D 0 - I - 0x00D9C2 03:99B2: 02        .byte $02   ; 06
- D 0 - I - 0x00D9C3 03:99B3: 01        .byte $01   ; 07
- D 0 - I - 0x00D9C4 03:99B4: 03        .byte $03   ; 08
- D 0 - I - 0x00D9C5 03:99B5: 01        .byte $01   ; 09



_off030_99B6_25:
- D 0 - I - 0x00D9C6 03:99B6: 02        .byte con_sub_02, $0C   ; 
- D 0 - I - 0x00D9C8 03:99B8: D7 99     .word off_02_99D7_00_spr_A
- D 0 - I - 0x00D9CA 03:99BA: CB 99     .word off_02_99CB_01_spr_T
- D 0 - I - 0x00D9CC 03:99BC: E3 99     .word off_02_99E3_02_spr_XY
- D 0 - I - 0x00D9CE 03:99BE: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00D9D0 03:99C0: BC B8     .word sub_06_B8BC_00
- - - - - - 0x00D9D2 03:99C2: 00 00     .word $0000 ; 01
- - - - - - 0x00D9D4 03:99C4: 00 00     .word $0000 ; 02
- - - - - - 0x00D9D6 03:99C6: 00 00     .word $0000 ; 03
- - - - - - 0x00D9D8 03:99C8: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00D9DA 03:99CA: 00        .byte con_sub_00   ; 



off_02_99CB_01_spr_T:
- D 0 - I - 0x00D9DB 03:99CB: 80        .byte $80   ; 01
- D 0 - I - 0x00D9DC 03:99CC: 81        .byte $81   ; 02
- D 0 - I - 0x00D9DD 03:99CD: EA        .byte $EA   ; 03
- D 0 - I - 0x00D9DE 03:99CE: 96        .byte $96   ; 04
- D 0 - I - 0x00D9DF 03:99CF: E4        .byte $E4   ; 05
- D 0 - I - 0x00D9E0 03:99D0: 8A        .byte $8A   ; 06
- D 0 - I - 0x00D9E1 03:99D1: 88        .byte $88   ; 07
- D 0 - I - 0x00D9E2 03:99D2: 89        .byte $89   ; 08
- D 0 - I - 0x00D9E3 03:99D3: C5        .byte $C5   ; 09
- D 0 - I - 0x00D9E4 03:99D4: A0        .byte $A0   ; 0A
- D 0 - I - 0x00D9E5 03:99D5: 88        .byte $88   ; 0B
- D 0 - I - 0x00D9E6 03:99D6: 99        .byte $99   ; 0C



off_02_99D7_00_spr_A:
- D 0 - I - 0x00D9E7 03:99D7: 00        .byte $00   ; 01
- D 0 - I - 0x00D9E8 03:99D8: 00        .byte $00   ; 02
- D 0 - I - 0x00D9E9 03:99D9: 02        .byte $02   ; 03
- D 0 - I - 0x00D9EA 03:99DA: 02        .byte $02   ; 04
- D 0 - I - 0x00D9EB 03:99DB: 42        .byte $42   ; 05
- D 0 - I - 0x00D9EC 03:99DC: 02        .byte $02   ; 06
- D 0 - I - 0x00D9ED 03:99DD: 01        .byte $01   ; 07
- D 0 - I - 0x00D9EE 03:99DE: 03        .byte $03   ; 08
- D 0 - I - 0x00D9EF 03:99DF: 03        .byte $03   ; 09
- D 0 - I - 0x00D9F0 03:99E0: 42        .byte $42   ; 0A
- D 0 - I - 0x00D9F1 03:99E1: 01        .byte $01   ; 0B
- D 0 - I - 0x00D9F2 03:99E2: 03        .byte $03   ; 0C



off_02_99E3_02_spr_XY:
- D 0 - I - 0x00D9F3 03:99E3: 01        .byte $01, $1B   ; 01
- D 0 - I - 0x00D9F5 03:99E5: 09        .byte $09, $1B   ; 02
- D 0 - I - 0x00D9F7 03:99E7: F1        .byte $F1, $11   ; 03
- D 0 - I - 0x00D9F9 03:99E9: F7        .byte $F7, $10   ; 04
- D 0 - I - 0x00D9FB 03:99EB: FC        .byte $FC, $14   ; 05
- D 0 - I - 0x00D9FD 03:99ED: 04        .byte $04, $13   ; 06
- D 0 - I - 0x00D9FF 03:99EF: EC        .byte $EC, $0D   ; 07
- D 0 - I - 0x00DA01 03:99F1: F4        .byte $F4, $0D   ; 08
- D 0 - I - 0x00DA03 03:99F3: FC        .byte $FC, $0C   ; 09
- D 0 - I - 0x00DA05 03:99F5: 04        .byte $04, $0B   ; 0A
- D 0 - I - 0x00DA07 03:99F7: FC        .byte $FC, $08   ; 0B
- D 0 - I - 0x00DA09 03:99F9: 04        .byte $04, $07   ; 0C



_off030_99FB_06:
- D 0 - I - 0x00DA0B 03:99FB: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00DA0D 03:99FD: 10 9A     .word off_02_9A10_00_spr_A
- D 0 - I - 0x00DA0F 03:99FF: 08 9A     .word off_02_9A08_01_spr_T
- D 0 - I - 0x00DA11 03:9A01: 53 86     .word off_02_8653_02_spr_XY
- D 0 - I - 0x00DA13 03:9A03: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00DA15 03:9A05: 28 B8     .word sub_06_B828_00
@end:
- D 0 - I - 0x00DA17 03:9A07: 00        .byte con_sub_00   ; 



off_02_9A08_01_spr_T:
- D 0 - I - 0x00DA18 03:9A08: 80        .byte $80   ; 01
- D 0 - I - 0x00DA19 03:9A09: 81        .byte $81   ; 02
- D 0 - I - 0x00DA1A 03:9A0A: 90        .byte $90   ; 03
- D 0 - I - 0x00DA1B 03:9A0B: 91        .byte $91   ; 04
- D 0 - I - 0x00DA1C 03:9A0C: E8        .byte $E8   ; 05
- D 0 - I - 0x00DA1D 03:9A0D: A1        .byte $A1   ; 06
- D 0 - I - 0x00DA1E 03:9A0E: F8        .byte $F8   ; 07
- D 0 - I - 0x00DA1F 03:9A0F: 9B        .byte $9B   ; 08



off_02_9A10_00_spr_A:
- D 0 - I - 0x00DA20 03:9A10: 00        .byte $00   ; 01
- D 0 - I - 0x00DA21 03:9A11: 00        .byte $00   ; 02
- D 0 - I - 0x00DA22 03:9A12: 02        .byte $02   ; 03
- D 0 - I - 0x00DA23 03:9A13: 02        .byte $02   ; 04
- D 0 - I - 0x00DA24 03:9A14: 03        .byte $03   ; 05
- D 0 - I - 0x00DA25 03:9A15: 02        .byte $02   ; 06
- D 0 - I - 0x00DA26 03:9A16: 01        .byte $01   ; 07
- D 0 - I - 0x00DA27 03:9A17: 03        .byte $03   ; 08



_off030_9A18_1A:
- D 0 - I - 0x00DA28 03:9A18: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00DA2A 03:9A1A: 2F 9A     .word off_02_9A2F_00_spr_A
- D 0 - I - 0x00DA2C 03:9A1C: 25 9A     .word off_02_9A25_01_spr_T
- D 0 - I - 0x00DA2E 03:9A1E: 39 9A     .word off_02_9A39_02_spr_XY
- D 0 - I - 0x00DA30 03:9A20: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00DA32 03:9A22: 78 B8     .word sub_06_B878_00
@end:
- D 0 - I - 0x00DA34 03:9A24: 00        .byte con_sub_00   ; 



off_02_9A25_01_spr_T:
- D 0 - I - 0x00DA35 03:9A25: 80        .byte $80   ; 01
- D 0 - I - 0x00DA36 03:9A26: 81        .byte $81   ; 02
- D 0 - I - 0x00DA37 03:9A27: 90        .byte $90   ; 03
- D 0 - I - 0x00DA38 03:9A28: 91        .byte $91   ; 04
- D 0 - I - 0x00DA39 03:9A29: A0        .byte $A0   ; 05
- D 0 - I - 0x00DA3A 03:9A2A: A1        .byte $A1   ; 06
- D 0 - I - 0x00DA3B 03:9A2B: E5        .byte $E5   ; 07
- D 0 - I - 0x00DA3C 03:9A2C: E6        .byte $E6   ; 08
- D 0 - I - 0x00DA3D 03:9A2D: F2        .byte $F2   ; 09
- D 0 - I - 0x00DA3E 03:9A2E: D6        .byte $D6   ; 0A



off_02_9A2F_00_spr_A:
- D 0 - I - 0x00DA3F 03:9A2F: 00        .byte $00   ; 01
- D 0 - I - 0x00DA40 03:9A30: 00        .byte $00   ; 02
- D 0 - I - 0x00DA41 03:9A31: 02        .byte $02   ; 03
- D 0 - I - 0x00DA42 03:9A32: 02        .byte $02   ; 04
- D 0 - I - 0x00DA43 03:9A33: 02        .byte $02   ; 05
- D 0 - I - 0x00DA44 03:9A34: 02        .byte $02   ; 06
- D 0 - I - 0x00DA45 03:9A35: 03        .byte $03   ; 07
- D 0 - I - 0x00DA46 03:9A36: 03        .byte $03   ; 08
- D 0 - I - 0x00DA47 03:9A37: C1        .byte $C1   ; 09
- D 0 - I - 0x00DA48 03:9A38: 01        .byte $01   ; 0A



off_02_9A39_02_spr_XY:
- D 0 - I - 0x00DA49 03:9A39: FB        .byte $FB, $24   ; 01
- D 0 - I - 0x00DA4B 03:9A3B: 03        .byte $03, $24   ; 02
- D 0 - I - 0x00DA4D 03:9A3D: FB        .byte $FB, $1C   ; 03
- D 0 - I - 0x00DA4F 03:9A3F: 03        .byte $03, $1C   ; 04
- D 0 - I - 0x00DA51 03:9A41: FC        .byte $FC, $14   ; 05
- D 0 - I - 0x00DA53 03:9A43: 04        .byte $04, $14   ; 06
- D 0 - I - 0x00DA55 03:9A45: FB        .byte $FB, $0C   ; 07
- D 0 - I - 0x00DA57 03:9A47: 03        .byte $03, $0C   ; 08
- D 0 - I - 0x00DA59 03:9A49: 0B        .byte $0B, $0C   ; 09
- D 0 - I - 0x00DA5B 03:9A4B: F9        .byte $F9, $04   ; 0A



_off030_9A4D_1B:
- D 0 - I - 0x00DA5D 03:9A4D: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00DA5F 03:9A4F: 64 9A     .word off_02_9A64_00_spr_A
- D 0 - I - 0x00DA61 03:9A51: 5A 9A     .word off_02_9A5A_01_spr_T
- D 0 - I - 0x00DA63 03:9A53: 6E 9A     .word off_02_9A6E_02_spr_XY
- D 0 - I - 0x00DA65 03:9A55: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00DA67 03:9A57: 84 B8     .word sub_06_B884_00
@end:
- D 0 - I - 0x00DA69 03:9A59: 00        .byte con_sub_00   ; 



off_02_9A5A_01_spr_T:
- D 0 - I - 0x00DA6A 03:9A5A: 80        .byte $80   ; 01
- D 0 - I - 0x00DA6B 03:9A5B: 81        .byte $81   ; 02
- D 0 - I - 0x00DA6C 03:9A5C: 90        .byte $90   ; 03
- D 0 - I - 0x00DA6D 03:9A5D: 91        .byte $91   ; 04
- D 0 - I - 0x00DA6E 03:9A5E: A0        .byte $A0   ; 05
- D 0 - I - 0x00DA6F 03:9A5F: A1        .byte $A1   ; 06
- D 0 - I - 0x00DA70 03:9A60: F2        .byte $F2   ; 07
- D 0 - I - 0x00DA71 03:9A61: E0        .byte $E0   ; 08
- D 0 - I - 0x00DA72 03:9A62: E1        .byte $E1   ; 09
- D 0 - I - 0x00DA73 03:9A63: C0        .byte $C0   ; 0A



off_02_9A64_00_spr_A:
- D 0 - I - 0x00DA74 03:9A64: 00        .byte $00   ; 01
- D 0 - I - 0x00DA75 03:9A65: 00        .byte $00   ; 02
- D 0 - I - 0x00DA76 03:9A66: 02        .byte $02   ; 03
- D 0 - I - 0x00DA77 03:9A67: 02        .byte $02   ; 04
- D 0 - I - 0x00DA78 03:9A68: 02        .byte $02   ; 05
- D 0 - I - 0x00DA79 03:9A69: 02        .byte $02   ; 06
- D 0 - I - 0x00DA7A 03:9A6A: C1        .byte $C1   ; 07
- D 0 - I - 0x00DA7B 03:9A6B: 03        .byte $03   ; 08
- D 0 - I - 0x00DA7C 03:9A6C: 03        .byte $03   ; 09
- D 0 - I - 0x00DA7D 03:9A6D: 01        .byte $01   ; 0A



off_02_9A6E_02_spr_XY:
- D 0 - I - 0x00DA7E 03:9A6E: FC        .byte $FC, $23   ; 01
- D 0 - I - 0x00DA80 03:9A70: 04        .byte $04, $23   ; 02
- D 0 - I - 0x00DA82 03:9A72: FC        .byte $FC, $1B   ; 03
- D 0 - I - 0x00DA84 03:9A74: 04        .byte $04, $1B   ; 04
- D 0 - I - 0x00DA86 03:9A76: FC        .byte $FC, $13   ; 05
- D 0 - I - 0x00DA88 03:9A78: 04        .byte $04, $13   ; 06
- D 0 - I - 0x00DA8A 03:9A7A: 05        .byte $05, $09   ; 07
- D 0 - I - 0x00DA8C 03:9A7C: F9        .byte $F9, $0B   ; 08
- D 0 - I - 0x00DA8E 03:9A7E: 01        .byte $01, $0B   ; 09
- D 0 - I - 0x00DA90 03:9A80: 01        .byte $01, $04   ; 0A



_off030_9A82_1C:
- D 0 - I - 0x00DA92 03:9A82: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00DA94 03:9A84: A1 9A     .word off_02_9AA1_00_spr_A
- D 0 - I - 0x00DA96 03:9A86: 96 9A     .word off_02_9A96_01_spr_T
- D 0 - I - 0x00DA98 03:9A88: AC 9A     .word off_02_9AAC_02_spr_XY
- D 0 - I - 0x00DA9A 03:9A8A: 01        .byte con_sub_01, $01, $01   ; 
- D 0 - I - 0x00DA9D 03:9A8D: A0 9A     .word off_01_9AA0_spr_T
- D 0 - I - 0x00DA9F 03:9A8F: C0 9A     .word off_01_9AC0_spr_XY
- D 0 - I - 0x00DAA1 03:9A91: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00DAA3 03:9A93: 90 B8     .word sub_06_B890_00
@end:
- D 0 - I - 0x00DAA5 03:9A95: 00        .byte con_sub_00   ; 



off_02_9A96_01_spr_T:
- D 0 - I - 0x00DAA6 03:9A96: 80        .byte $80   ; 01
- D 0 - I - 0x00DAA7 03:9A97: 81        .byte $81   ; 02
- D 0 - I - 0x00DAA8 03:9A98: 90        .byte $90   ; 03
- D 0 - I - 0x00DAA9 03:9A99: 91        .byte $91   ; 04
- D 0 - I - 0x00DAAA 03:9A9A: A0        .byte $A0   ; 05
- D 0 - I - 0x00DAAB 03:9A9B: A1        .byte $A1   ; 06
- D 0 - I - 0x00DAAC 03:9A9C: C6        .byte $C6   ; 07
- D 0 - I - 0x00DAAD 03:9A9D: E1        .byte $E1   ; 08
- D 0 - I - 0x00DAAE 03:9A9E: C0        .byte $C0   ; 09


; bzk garbage
- - - - - - 0x00DAAF 03:9A9F: C0        .byte $C0   ; 



off_01_9AA0_spr_T:
- D 0 - I - 0x00DAB0 03:9AA0: C0        .byte $C0   ; 01



off_02_9AA1_00_spr_A:
- D 0 - I - 0x00DAB1 03:9AA1: 00        .byte $00   ; 01
- D 0 - I - 0x00DAB2 03:9AA2: 00        .byte $00   ; 02
- D 0 - I - 0x00DAB3 03:9AA3: 02        .byte $02   ; 03
- D 0 - I - 0x00DAB4 03:9AA4: 02        .byte $02   ; 04
- D 0 - I - 0x00DAB5 03:9AA5: 02        .byte $02   ; 05
- D 0 - I - 0x00DAB6 03:9AA6: 02        .byte $02   ; 06
- D 0 - I - 0x00DAB7 03:9AA7: 03        .byte $03   ; 07
- D 0 - I - 0x00DAB8 03:9AA8: 03        .byte $03   ; 08
- D 0 - I - 0x00DAB9 03:9AA9: 01        .byte $01   ; 09
- D 0 - I - 0x00DABA 03:9AAA: 01        .byte $01   ; 0A


; bzk garbage
- - - - - - 0x00DABB 03:9AAB: 01        .byte $01   ; 



off_02_9AAC_02_spr_XY:
- D 0 - I - 0x00DABC 03:9AAC: FB        .byte $FB, $23   ; 01
- D 0 - I - 0x00DABE 03:9AAE: 03        .byte $03, $23   ; 02
- D 0 - I - 0x00DAC0 03:9AB0: FB        .byte $FB, $1B   ; 03
- D 0 - I - 0x00DAC2 03:9AB2: 03        .byte $03, $1B   ; 04
- D 0 - I - 0x00DAC4 03:9AB4: FC        .byte $FC, $13   ; 05
- D 0 - I - 0x00DAC6 03:9AB6: 04        .byte $04, $13   ; 06
- D 0 - I - 0x00DAC8 03:9AB8: FB        .byte $FB, $0B   ; 07
- D 0 - I - 0x00DACA 03:9ABA: 03        .byte $03, $0B   ; 08
- D 0 - I - 0x00DACC 03:9ABC: FC        .byte $FC, $06   ; 09


; bzk garbage
- - - - - - 0x00DACE 03:9ABE: 06        .byte $06, $03   ; 



off_01_9AC0_spr_XY:
- D 0 - I - 0x00DAD0 03:9AC0: 03        .byte $03, $03   ; 01



_off030_9AC2_1D:
- D 0 - I - 0x00DAD2 03:9AC2: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00DAD4 03:9AC4: 2F 9A     .word off_02_9A2F_00_spr_A
- D 0 - I - 0x00DAD6 03:9AC6: CF 9A     .word off_02_9ACF_01_spr_T
- D 0 - I - 0x00DAD8 03:9AC8: D9 9A     .word off_02_9AD9_02_spr_XY
- D 0 - I - 0x00DADA 03:9ACA: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00DADC 03:9ACC: 9C B8     .word sub_06_B89C_00
@end:
- D 0 - I - 0x00DADE 03:9ACE: 00        .byte con_sub_00   ; 



off_02_9ACF_01_spr_T:
- D 0 - I - 0x00DADF 03:9ACF: 80        .byte $80   ; 01
- D 0 - I - 0x00DAE0 03:9AD0: 81        .byte $81   ; 02
- D 0 - I - 0x00DAE1 03:9AD1: 90        .byte $90   ; 03
- D 0 - I - 0x00DAE2 03:9AD2: 91        .byte $91   ; 04
- D 0 - I - 0x00DAE3 03:9AD3: A0        .byte $A0   ; 05
- D 0 - I - 0x00DAE4 03:9AD4: A1        .byte $A1   ; 06
- D 0 - I - 0x00DAE5 03:9AD5: E5        .byte $E5   ; 07
- D 0 - I - 0x00DAE6 03:9AD6: AA        .byte $AA   ; 08
- D 0 - I - 0x00DAE7 03:9AD7: F2        .byte $F2   ; 09
- D 0 - I - 0x00DAE8 03:9AD8: D6        .byte $D6   ; 0A



off_02_9AD9_02_spr_XY:
- D 0 - I - 0x00DAE9 03:9AD9: FB        .byte $FB, $24   ; 01
- D 0 - I - 0x00DAEB 03:9ADB: 03        .byte $03, $24   ; 02
- D 0 - I - 0x00DAED 03:9ADD: FB        .byte $FB, $1C   ; 03
- D 0 - I - 0x00DAEF 03:9ADF: 03        .byte $03, $1C   ; 04
- D 0 - I - 0x00DAF1 03:9AE1: FC        .byte $FC, $14   ; 05
- D 0 - I - 0x00DAF3 03:9AE3: 04        .byte $04, $14   ; 06
- D 0 - I - 0x00DAF5 03:9AE5: FB        .byte $FB, $0C   ; 07
- D 0 - I - 0x00DAF7 03:9AE7: 03        .byte $03, $0C   ; 08
- D 0 - I - 0x00DAF9 03:9AE9: 0B        .byte $0B, $0D   ; 09
- D 0 - I - 0x00DAFB 03:9AEB: F9        .byte $F9, $04   ; 0A



_off030_9AED_1E:
- D 0 - I - 0x00DAFD 03:9AED: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00DAFF 03:9AEF: 2F 9A     .word off_02_9A2F_00_spr_A
- D 0 - I - 0x00DB01 03:9AF1: FA 9A     .word off_02_9AFA_01_spr_T
- D 0 - I - 0x00DB03 03:9AF3: 04 9B     .word off_02_9B04_02_spr_XY
- D 0 - I - 0x00DB05 03:9AF5: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00DB07 03:9AF7: A8 B8     .word sub_06_B8A8_00
@end:
- D 0 - I - 0x00DB09 03:9AF9: 00        .byte con_sub_00   ; 



off_02_9AFA_01_spr_T:
- D 0 - I - 0x00DB0A 03:9AFA: 80        .byte $80   ; 01
- D 0 - I - 0x00DB0B 03:9AFB: 81        .byte $81   ; 02
- D 0 - I - 0x00DB0C 03:9AFC: 90        .byte $90   ; 03
- D 0 - I - 0x00DB0D 03:9AFD: 91        .byte $91   ; 04
- D 0 - I - 0x00DB0E 03:9AFE: A0        .byte $A0   ; 05
- D 0 - I - 0x00DB0F 03:9AFF: A1        .byte $A1   ; 06
- D 0 - I - 0x00DB10 03:9B00: E0        .byte $E0   ; 07
- D 0 - I - 0x00DB11 03:9B01: E1        .byte $E1   ; 08
- D 0 - I - 0x00DB12 03:9B02: F2        .byte $F2   ; 09
- D 0 - I - 0x00DB13 03:9B03: C0        .byte $C0   ; 0A



off_02_9B04_02_spr_XY:
- D 0 - I - 0x00DB14 03:9B04: FC        .byte $FC, $23   ; 01
- D 0 - I - 0x00DB16 03:9B06: 04        .byte $04, $23   ; 02
- D 0 - I - 0x00DB18 03:9B08: FC        .byte $FC, $1B   ; 03
- D 0 - I - 0x00DB1A 03:9B0A: 04        .byte $04, $1B   ; 04
- D 0 - I - 0x00DB1C 03:9B0C: FC        .byte $FC, $13   ; 05
- D 0 - I - 0x00DB1E 03:9B0E: 04        .byte $04, $13   ; 06
- D 0 - I - 0x00DB20 03:9B10: FB        .byte $FB, $0B   ; 07
- D 0 - I - 0x00DB22 03:9B12: 03        .byte $03, $0B   ; 08
- D 0 - I - 0x00DB24 03:9B14: 08        .byte $08, $09   ; 09
- D 0 - I - 0x00DB26 03:9B16: 01        .byte $01, $03   ; 0A



_off030_9B18_1F:
- D 0 - I - 0x00DB28 03:9B18: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00DB2A 03:9B1A: A1 9A     .word off_02_9AA1_00_spr_A
- D 0 - I - 0x00DB2C 03:9B1C: 25 9B     .word off_02_9B25_01_spr_T
- D 0 - I - 0x00DB2E 03:9B1E: 2F 9B     .word off_02_9B2F_02_spr_XY
- D 0 - I - 0x00DB30 03:9B20: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00DB32 03:9B22: B4 B8     .word sub_06_B8B4_00
@end:
- D 0 - I - 0x00DB34 03:9B24: 00        .byte con_sub_00   ; 



off_02_9B25_01_spr_T:
- D 0 - I - 0x00DB35 03:9B25: 80        .byte $80   ; 01
- D 0 - I - 0x00DB36 03:9B26: 81        .byte $81   ; 02
- D 0 - I - 0x00DB37 03:9B27: 90        .byte $90   ; 03
- D 0 - I - 0x00DB38 03:9B28: 91        .byte $91   ; 04
- D 0 - I - 0x00DB39 03:9B29: A0        .byte $A0   ; 05
- D 0 - I - 0x00DB3A 03:9B2A: A1        .byte $A1   ; 06
- D 0 - I - 0x00DB3B 03:9B2B: C6        .byte $C6   ; 07
- D 0 - I - 0x00DB3C 03:9B2C: F6        .byte $F6   ; 08
- D 0 - I - 0x00DB3D 03:9B2D: C0        .byte $C0   ; 09
- D 0 - I - 0x00DB3E 03:9B2E: C0        .byte $C0   ; 0A



off_02_9B2F_02_spr_XY:
- D 0 - I - 0x00DB3F 03:9B2F: FB        .byte $FB, $23   ; 01
- D 0 - I - 0x00DB41 03:9B31: 03        .byte $03, $23   ; 02
- D 0 - I - 0x00DB43 03:9B33: FB        .byte $FB, $1B   ; 03
- D 0 - I - 0x00DB45 03:9B35: 03        .byte $03, $1B   ; 04
- D 0 - I - 0x00DB47 03:9B37: FC        .byte $FC, $13   ; 05
- D 0 - I - 0x00DB49 03:9B39: 04        .byte $04, $13   ; 06
- D 0 - I - 0x00DB4B 03:9B3B: FC        .byte $FC, $0B   ; 07
- D 0 - I - 0x00DB4D 03:9B3D: 04        .byte $04, $0B   ; 08
- D 0 - I - 0x00DB4F 03:9B3F: FD        .byte $FD, $06   ; 09
- D 0 - I - 0x00DB51 03:9B41: 05        .byte $05, $03   ; 0A



_off030_9B43_0D:
- D 0 - I - 0x00DB53 03:9B43: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00DB55 03:9B45: 22 8C     .word off_02_8C22_00_spr_A
- D 0 - I - 0x00DB57 03:9B47: 4F 9B     .word off_02_9B4F_01_spr_T
- D 0 - I - 0x00DB59 03:9B49: 57 9B     .word off_02_9B57_02_spr_XY
- D 0 - I - 0x00DB5B 03:9B4B: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00DB5C 03:9B4C: 04 98     .word sub_05_9804
- D 0 - I - 0x00DB5E 03:9B4E: 00        .byte con_sub_00   ; 



off_02_9B4F_01_spr_T:
- D 0 - I - 0x00DB5F 03:9B4F: 80        .byte $80   ; 01
- D 0 - I - 0x00DB60 03:9B50: 81        .byte $81   ; 02
- D 0 - I - 0x00DB61 03:9B51: EA        .byte $EA   ; 03
- D 0 - I - 0x00DB62 03:9B52: EB        .byte $EB   ; 04
- D 0 - I - 0x00DB63 03:9B53: C4        .byte $C4   ; 05
- D 0 - I - 0x00DB64 03:9B54: 91        .byte $91   ; 06
- D 0 - I - 0x00DB65 03:9B55: D7        .byte $D7   ; 07
- D 0 - I - 0x00DB66 03:9B56: A1        .byte $A1   ; 08



off_02_9B57_02_spr_XY:
- D 0 - I - 0x00DB67 03:9B57: F8        .byte $F8, $24   ; 01
- D 0 - I - 0x00DB69 03:9B59: 00        .byte $00, $24   ; 02
- D 0 - I - 0x00DB6B 03:9B5B: EA        .byte $EA, $1D   ; 03
- D 0 - I - 0x00DB6D 03:9B5D: F2        .byte $F2, $1D   ; 04
- D 0 - I - 0x00DB6F 03:9B5F: FA        .byte $FA, $1C   ; 05
- D 0 - I - 0x00DB71 03:9B61: 02        .byte $02, $1C   ; 06
- D 0 - I - 0x00DB73 03:9B63: FB        .byte $FB, $14   ; 07
- D 0 - I - 0x00DB75 03:9B65: 03        .byte $03, $14   ; 08



_off030_9B67_0C:
- D 0 - I - 0x00DB77 03:9B67: 02        .byte con_sub_02, $07   ; 
- D 0 - I - 0x00DB79 03:9B69: 22 8C     .word off_02_8C22_00_spr_A
- D 0 - I - 0x00DB7B 03:9B6B: 73 9B     .word off_02_9B73_01_spr_T
- D 0 - I - 0x00DB7D 03:9B6D: 7A 9B     .word off_02_9B7A_02_spr_XY
- D 0 - I - 0x00DB7F 03:9B6F: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00DB80 03:9B70: 04 98     .word sub_05_9804
- D 0 - I - 0x00DB82 03:9B72: 00        .byte con_sub_00   ; 



off_02_9B73_01_spr_T:
- D 0 - I - 0x00DB83 03:9B73: 80        .byte $80   ; 01
- D 0 - I - 0x00DB84 03:9B74: 81        .byte $81   ; 02
- D 0 - I - 0x00DB85 03:9B75: EA        .byte $EA   ; 03
- D 0 - I - 0x00DB86 03:9B76: A2        .byte $A2   ; 04
- D 0 - I - 0x00DB87 03:9B77: 91        .byte $91   ; 05
- D 0 - I - 0x00DB88 03:9B78: D7        .byte $D7   ; 06
- D 0 - I - 0x00DB89 03:9B79: A1        .byte $A1   ; 07



off_02_9B7A_02_spr_XY:
- D 0 - I - 0x00DB8A 03:9B7A: FB        .byte $FB, $24   ; 01
- D 0 - I - 0x00DB8C 03:9B7C: 03        .byte $03, $24   ; 02
- D 0 - I - 0x00DB8E 03:9B7E: F5        .byte $F5, $1F   ; 03
- D 0 - I - 0x00DB90 03:9B80: FB        .byte $FB, $1C   ; 04
- D 0 - I - 0x00DB92 03:9B82: 03        .byte $03, $1C   ; 05
- D 0 - I - 0x00DB94 03:9B84: FC        .byte $FC, $14   ; 06
- D 0 - I - 0x00DB96 03:9B86: 04        .byte $04, $14   ; 07



_off030_9B88_0F:
- D 0 - I - 0x00DB98 03:9B88: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00DB9A 03:9B8A: 22 8C     .word off_02_8C22_00_spr_A
- D 0 - I - 0x00DB9C 03:9B8C: 94 9B     .word off_02_9B94_01_spr_T
- D 0 - I - 0x00DB9E 03:9B8E: 9C 9B     .word off_02_9B9C_02_spr_XY
- D 0 - I - 0x00DBA0 03:9B90: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00DBA1 03:9B91: 04 98     .word sub_05_9804
- D 0 - I - 0x00DBA3 03:9B93: 00        .byte con_sub_00   ; 



off_02_9B94_01_spr_T:
- D 0 - I - 0x00DBA4 03:9B94: 80        .byte $80   ; 01
- D 0 - I - 0x00DBA5 03:9B95: 81        .byte $81   ; 02
- D 0 - I - 0x00DBA6 03:9B96: EA        .byte $EA   ; 03
- D 0 - I - 0x00DBA7 03:9B97: EB        .byte $EB   ; 04
- D 0 - I - 0x00DBA8 03:9B98: C7        .byte $C7   ; 05
- D 0 - I - 0x00DBA9 03:9B99: C8        .byte $C8   ; 06
- D 0 - I - 0x00DBAA 03:9B9A: D7        .byte $D7   ; 07
- D 0 - I - 0x00DBAB 03:9B9B: D8        .byte $D8   ; 08



off_02_9B9C_02_spr_XY:
- D 0 - I - 0x00DBAC 03:9B9C: F8        .byte $F8, $24   ; 01
- D 0 - I - 0x00DBAE 03:9B9E: 00        .byte $00, $24   ; 02
- D 0 - I - 0x00DBB0 03:9BA0: EA        .byte $EA, $1D   ; 03
- D 0 - I - 0x00DBB2 03:9BA2: F2        .byte $F2, $1D   ; 04
- D 0 - I - 0x00DBB4 03:9BA4: FA        .byte $FA, $1C   ; 05
- D 0 - I - 0x00DBB6 03:9BA6: 02        .byte $02, $1C   ; 06
- D 0 - I - 0x00DBB8 03:9BA8: FB        .byte $FB, $14   ; 07
- D 0 - I - 0x00DBBA 03:9BAA: 03        .byte $03, $14   ; 08



_off030_9BAC_0E:
- D 0 - I - 0x00DBBC 03:9BAC: 02        .byte con_sub_02, $07   ; 
- D 0 - I - 0x00DBBE 03:9BAE: 22 8C     .word off_02_8C22_00_spr_A
- D 0 - I - 0x00DBC0 03:9BB0: B8 9B     .word off_02_9BB8_01_spr_T
- D 0 - I - 0x00DBC2 03:9BB2: BF 9B     .word off_02_9BBF_02_spr_XY
- D 0 - I - 0x00DBC4 03:9BB4: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00DBC5 03:9BB5: 04 98     .word sub_05_9804
- D 0 - I - 0x00DBC7 03:9BB7: 00        .byte con_sub_00   ; 



off_02_9BB8_01_spr_T:
- D 0 - I - 0x00DBC8 03:9BB8: 80        .byte $80   ; 01
- D 0 - I - 0x00DBC9 03:9BB9: 81        .byte $81   ; 02
- D 0 - I - 0x00DBCA 03:9BBA: EA        .byte $EA   ; 03
- D 0 - I - 0x00DBCB 03:9BBB: EB        .byte $EB   ; 04
- D 0 - I - 0x00DBCC 03:9BBC: C8        .byte $C8   ; 05
- D 0 - I - 0x00DBCD 03:9BBD: D7        .byte $D7   ; 06
- D 0 - I - 0x00DBCE 03:9BBE: D8        .byte $D8   ; 07



off_02_9BBF_02_spr_XY:
- D 0 - I - 0x00DBCF 03:9BBF: F9        .byte $F9, $24   ; 01
- D 0 - I - 0x00DBD1 03:9BC1: 01        .byte $01, $24   ; 02
- D 0 - I - 0x00DBD3 03:9BC3: F5        .byte $F5, $1C   ; 03
- D 0 - I - 0x00DBD5 03:9BC5: FD        .byte $FD, $1C   ; 04
- D 0 - I - 0x00DBD7 03:9BC7: 03        .byte $03, $1C   ; 05
- D 0 - I - 0x00DBD9 03:9BC9: FC        .byte $FC, $14   ; 06
- D 0 - I - 0x00DBDB 03:9BCB: 04        .byte $04, $14   ; 07



_off030_9BCD_07:
- D 0 - I - 0x00DBDD 03:9BCD: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00DBDF 03:9BCF: A1 9A     .word off_02_9AA1_00_spr_A
- D 0 - I - 0x00DBE1 03:9BD1: 31 87     .word off_02_8731_01_spr_T
- D 0 - I - 0x00DBE3 03:9BD3: 3B 87     .word off_02_873B_02_spr_XY
- D 0 - I - 0x00DBE5 03:9BD5: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00DBE7 03:9BD7: 34 B8     .word sub_06_B834_00
- - - - - - 0x00DBE9 03:9BD9: 00 00     .word $0000 ; 01
- - - - - - 0x00DBEB 03:9BDB: 00 00     .word $0000 ; 02
- - - - - - 0x00DBED 03:9BDD: 00 00     .word $0000 ; 03
- - - - - - 0x00DBEF 03:9BDF: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00DBF1 03:9BE1: 00        .byte con_sub_00   ; 



_off030_9BE2_08:
- D 0 - I - 0x00DBF2 03:9BE2: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00DBF4 03:9BE4: A1 9A     .word off_02_9AA1_00_spr_A
- D 0 - I - 0x00DBF6 03:9BE6: 58 87     .word off_02_8758_01_spr_T
- D 0 - I - 0x00DBF8 03:9BE8: 62 87     .word off_02_8762_02_spr_XY
- D 0 - I - 0x00DBFA 03:9BEA: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00DBFC 03:9BEC: 40 B8     .word sub_06_B840_00
- - - - - - 0x00DBFE 03:9BEE: 00 00     .word $0000 ; 01
- - - - - - 0x00DC00 03:9BF0: 00 00     .word $0000 ; 02
- - - - - - 0x00DC02 03:9BF2: 00 00     .word $0000 ; 03
- - - - - - 0x00DC04 03:9BF4: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00DC06 03:9BF6: 00        .byte con_sub_00   ; 



_off030_9BF7_09:
- D 0 - I - 0x00DC07 03:9BF7: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00DC09 03:9BF9: 0E 9C     .word off_02_9C0E_00_spr_A
- D 0 - I - 0x00DC0B 03:9BFB: 04 9C     .word off_02_9C04_01_spr_T
- D 0 - I - 0x00DC0D 03:9BFD: 18 9C     .word off_02_9C18_02_spr_XY
- D 0 - I - 0x00DC0F 03:9BFF: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00DC11 03:9C01: 48 B8     .word sub_06_B848_00
@end:
- D 0 - I - 0x00DC13 03:9C03: 00        .byte con_sub_00   ; 



off_02_9C04_01_spr_T:
- D 0 - I - 0x00DC14 03:9C04: F0        .byte $F0   ; 01
- D 0 - I - 0x00DC15 03:9C05: F1        .byte $F1   ; 02
- D 0 - I - 0x00DC16 03:9C06: 82        .byte $82   ; 03
- D 0 - I - 0x00DC17 03:9C07: 92        .byte $92   ; 04
- D 0 - I - 0x00DC18 03:9C08: 98        .byte $98   ; 05
- D 0 - I - 0x00DC19 03:9C09: A9        .byte $A9   ; 06
- D 0 - I - 0x00DC1A 03:9C0A: A2        .byte $A2   ; 07
- D 0 - I - 0x00DC1B 03:9C0B: 91        .byte $91   ; 08
- D 0 - I - 0x00DC1C 03:9C0C: 80        .byte $80   ; 09
- D 0 - I - 0x00DC1D 03:9C0D: 81        .byte $81   ; 0A



off_02_9C0E_00_spr_A:
- D 0 - I - 0x00DC1E 03:9C0E: 01        .byte $01   ; 01
- D 0 - I - 0x00DC1F 03:9C0F: 01        .byte $01   ; 02
- D 0 - I - 0x00DC20 03:9C10: 03        .byte $03   ; 03
- D 0 - I - 0x00DC21 03:9C11: 03        .byte $03   ; 04
- D 0 - I - 0x00DC22 03:9C12: 02        .byte $02   ; 05
- D 0 - I - 0x00DC23 03:9C13: 02        .byte $02   ; 06
- D 0 - I - 0x00DC24 03:9C14: 02        .byte $02   ; 07
- D 0 - I - 0x00DC25 03:9C15: 02        .byte $02   ; 08
- D 0 - I - 0x00DC26 03:9C16: 00        .byte $00   ; 09
- D 0 - I - 0x00DC27 03:9C17: 00        .byte $00   ; 0A



off_02_9C18_02_spr_XY:
- D 0 - I - 0x00DC28 03:9C18: FB        .byte $FB, $04   ; 01
- D 0 - I - 0x00DC2A 03:9C1A: 03        .byte $03, $04   ; 02
- D 0 - I - 0x00DC2C 03:9C1C: FD        .byte $FD, $0A   ; 03
- D 0 - I - 0x00DC2E 03:9C1E: 05        .byte $05, $0A   ; 04
- D 0 - I - 0x00DC30 03:9C20: FB        .byte $FB, $12   ; 05
- D 0 - I - 0x00DC32 03:9C22: 03        .byte $03, $12   ; 06
- D 0 - I - 0x00DC34 03:9C24: F9        .byte $F9, $1A   ; 07
- D 0 - I - 0x00DC36 03:9C26: 01        .byte $01, $1A   ; 08
- D 0 - I - 0x00DC38 03:9C28: F9        .byte $F9, $22   ; 09
- D 0 - I - 0x00DC3A 03:9C2A: 01        .byte $01, $22   ; 0A



_off030_9C2C_12:
- D 0 - I - 0x00DC3C 03:9C2C: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00DC3E 03:9C2E: 4B 9C     .word off_02_9C4B_00_spr_A
- D 0 - I - 0x00DC40 03:9C30: 41 9C     .word off_02_9C41_01_spr_T
- D 0 - I - 0x00DC42 03:9C32: 55 9C     .word off_02_9C55_02_spr_XY
- D 0 - I - 0x00DC44 03:9C34: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00DC46 03:9C36: 54 B8     .word sub_06_B854_00
- - - - - - 0x00DC48 03:9C38: 00 00     .word $0000 ; 01
- - - - - - 0x00DC4A 03:9C3A: 00 00     .word $0000 ; 02
- - - - - - 0x00DC4C 03:9C3C: 00 00     .word $0000 ; 03
- - - - - - 0x00DC4E 03:9C3E: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00DC50 03:9C40: 00        .byte con_sub_00   ; 



off_02_9C41_01_spr_T:
- D 0 - I - 0x00DC51 03:9C41: 80        .byte $80   ; 01
- D 0 - I - 0x00DC52 03:9C42: 81        .byte $81   ; 02
- D 0 - I - 0x00DC53 03:9C43: E4        .byte $E4   ; 03
- D 0 - I - 0x00DC54 03:9C44: 8A        .byte $8A   ; 04
- D 0 - I - 0x00DC55 03:9C45: A7        .byte $A7   ; 05
- D 0 - I - 0x00DC56 03:9C46: AB        .byte $AB   ; 06
- D 0 - I - 0x00DC57 03:9C47: D0        .byte $D0   ; 07
- D 0 - I - 0x00DC58 03:9C48: D1        .byte $D1   ; 08
- D 0 - I - 0x00DC59 03:9C49: C0        .byte $C0   ; 09
- D 0 - I - 0x00DC5A 03:9C4A: C1        .byte $C1   ; 0A



off_02_9C4B_00_spr_A:
- D 0 - I - 0x00DC5B 03:9C4B: 00        .byte $00   ; 01
- D 0 - I - 0x00DC5C 03:9C4C: 00        .byte $00   ; 02
- D 0 - I - 0x00DC5D 03:9C4D: 42        .byte $42   ; 03
- D 0 - I - 0x00DC5E 03:9C4E: 02        .byte $02   ; 04
- D 0 - I - 0x00DC5F 03:9C4F: 02        .byte $02   ; 05
- D 0 - I - 0x00DC60 03:9C50: 02        .byte $02   ; 06
- D 0 - I - 0x00DC61 03:9C51: 03        .byte $03   ; 07
- D 0 - I - 0x00DC62 03:9C52: 03        .byte $03   ; 08
- D 0 - I - 0x00DC63 03:9C53: 01        .byte $01   ; 09
- D 0 - I - 0x00DC64 03:9C54: 01        .byte $01   ; 0A



off_02_9C55_02_spr_XY:
- D 0 - I - 0x00DC65 03:9C55: 03        .byte $03, $24   ; 01
- D 0 - I - 0x00DC67 03:9C57: 0B        .byte $0B, $24   ; 02
- D 0 - I - 0x00DC69 03:9C59: FE        .byte $FE, $1C   ; 03
- D 0 - I - 0x00DC6B 03:9C5B: 06        .byte $06, $1C   ; 04
- D 0 - I - 0x00DC6D 03:9C5D: FE        .byte $FE, $14   ; 05
- D 0 - I - 0x00DC6F 03:9C5F: 06        .byte $06, $14   ; 06
- D 0 - I - 0x00DC71 03:9C61: FC        .byte $FC, $0C   ; 07
- D 0 - I - 0x00DC73 03:9C63: 04        .byte $04, $0C   ; 08
- D 0 - I - 0x00DC75 03:9C65: FD        .byte $FD, $04   ; 09
- D 0 - I - 0x00DC77 03:9C67: 04        .byte $04, $04   ; 0A



_off030_9C69_13:
- D 0 - I - 0x00DC79 03:9C69: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00DC7B 03:9C6B: A1 9A     .word off_02_9AA1_00_spr_A
- D 0 - I - 0x00DC7D 03:9C6D: 7E 9C     .word off_02_9C7E_01_spr_T
- D 0 - I - 0x00DC7F 03:9C6F: 88 9C     .word off_02_9C88_02_spr_XY
- D 0 - I - 0x00DC81 03:9C71: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00DC83 03:9C73: 61 B8     .word sub_06_B861_00
- - - - - - 0x00DC85 03:9C75: 00 00     .word $0000 ; 01
- - - - - - 0x00DC87 03:9C77: 00 00     .word $0000 ; 02
- - - - - - 0x00DC89 03:9C79: 00 00     .word $0000 ; 03
- - - - - - 0x00DC8B 03:9C7B: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00DC8D 03:9C7D: 00        .byte con_sub_00   ; 



off_02_9C7E_01_spr_T:
- D 0 - I - 0x00DC8E 03:9C7E: 80        .byte $80   ; 01
- D 0 - I - 0x00DC8F 03:9C7F: 81        .byte $81   ; 02
- D 0 - I - 0x00DC90 03:9C80: AC        .byte $AC   ; 03
- D 0 - I - 0x00DC91 03:9C81: 9A        .byte $9A   ; 04
- D 0 - I - 0x00DC92 03:9C82: AD        .byte $AD   ; 05
- D 0 - I - 0x00DC93 03:9C83: D8        .byte $D8   ; 06
- D 0 - I - 0x00DC94 03:9C84: D0        .byte $D0   ; 07
- D 0 - I - 0x00DC95 03:9C85: D1        .byte $D1   ; 08
- D 0 - I - 0x00DC96 03:9C86: C0        .byte $C0   ; 09
- D 0 - I - 0x00DC97 03:9C87: C1        .byte $C1   ; 0A



off_02_9C88_02_spr_XY:
- D 0 - I - 0x00DC98 03:9C88: FE        .byte $FE, $24   ; 01
- D 0 - I - 0x00DC9A 03:9C8A: 06        .byte $06, $24   ; 02
- D 0 - I - 0x00DC9C 03:9C8C: FD        .byte $FD, $1C   ; 03
- D 0 - I - 0x00DC9E 03:9C8E: 05        .byte $05, $1C   ; 04
- D 0 - I - 0x00DCA0 03:9C90: FB        .byte $FB, $14   ; 05
- D 0 - I - 0x00DCA2 03:9C92: 03        .byte $03, $14   ; 06
- D 0 - I - 0x00DCA4 03:9C94: FB        .byte $FB, $0C   ; 07
- D 0 - I - 0x00DCA6 03:9C96: 03        .byte $03, $0C   ; 08
- D 0 - I - 0x00DCA8 03:9C98: FD        .byte $FD, $04   ; 09
- D 0 - I - 0x00DCAA 03:9C9A: 04        .byte $04, $04   ; 0A



_off030_9C9C_14:
- D 0 - I - 0x00DCAC 03:9C9C: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00DCAE 03:9C9E: A1 9A     .word off_02_9AA1_00_spr_A
- D 0 - I - 0x00DCB0 03:9CA0: B1 9C     .word off_02_9CB1_01_spr_T
- D 0 - I - 0x00DCB2 03:9CA2: 2C 8C     .word off_02_8C2C_02_spr_XY
- D 0 - I - 0x00DCB4 03:9CA4: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00DCB6 03:9CA6: 6E B8     .word sub_06_B86E_00
- - - - - - 0x00DCB8 03:9CA8: 00 00     .word $0000 ; 01
- - - - - - 0x00DCBA 03:9CAA: 00 00     .word $0000 ; 02
- - - - - - 0x00DCBC 03:9CAC: 00 00     .word $0000 ; 03
- - - - - - 0x00DCBE 03:9CAE: 00 00     .word $0000 ; 04
@end:
- D 0 - I - 0x00DCC0 03:9CB0: 00        .byte con_sub_00   ; 



off_02_9CB1_01_spr_T:
- D 0 - I - 0x00DCC1 03:9CB1: 80        .byte $80   ; 01
- D 0 - I - 0x00DCC2 03:9CB2: 81        .byte $81   ; 02
- D 0 - I - 0x00DCC3 03:9CB3: 8B        .byte $8B   ; 03
- D 0 - I - 0x00DCC4 03:9CB4: C8        .byte $C8   ; 04
- D 0 - I - 0x00DCC5 03:9CB5: D7        .byte $D7   ; 05
- D 0 - I - 0x00DCC6 03:9CB6: D8        .byte $D8   ; 06
- D 0 - I - 0x00DCC7 03:9CB7: D0        .byte $D0   ; 07
- D 0 - I - 0x00DCC8 03:9CB8: D1        .byte $D1   ; 08
- D 0 - I - 0x00DCC9 03:9CB9: C0        .byte $C0   ; 09
- D 0 - I - 0x00DCCA 03:9CBA: C1        .byte $C1   ; 0A



_off030_9CBB_0B:
- D 0 - I - 0x00DCCB 03:9CBB: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00DCCD 03:9CBD: CD 9C     .word off_02_9CCD_00_spr_A
- D 0 - I - 0x00DCCF 03:9CBF: C4 9C     .word off_02_9CC4_01_spr_T
- D 0 - I - 0x00DCD1 03:9CC1: D6 9C     .word off_02_9CD6_02_spr_XY
- D 0 - I - 0x00DCD3 03:9CC3: 00        .byte con_sub_00   ; 



off_02_9CC4_01_spr_T:
- D 0 - I - 0x00DCD4 03:9CC4: B2        .byte $B2   ; 01
- D 0 - I - 0x00DCD5 03:9CC5: B3        .byte $B3   ; 02
- D 0 - I - 0x00DCD6 03:9CC6: D2        .byte $D2   ; 03
- D 0 - I - 0x00DCD7 03:9CC7: D3        .byte $D3   ; 04
- D 0 - I - 0x00DCD8 03:9CC8: F2        .byte $F2   ; 05
- D 0 - I - 0x00DCD9 03:9CC9: F3        .byte $F3   ; 06
- D 0 - I - 0x00DCDA 03:9CCA: E2        .byte $E2   ; 07
- D 0 - I - 0x00DCDB 03:9CCB: E3        .byte $E3   ; 08
- D 0 - I - 0x00DCDC 03:9CCC: C0        .byte $C0   ; 09



off_02_9CCD_00_spr_A:
- D 0 - I - 0x00DCDD 03:9CCD: 00        .byte $00   ; 01
- D 0 - I - 0x00DCDE 03:9CCE: 00        .byte $00   ; 02
- D 0 - I - 0x00DCDF 03:9CCF: 02        .byte $02   ; 03
- D 0 - I - 0x00DCE0 03:9CD0: 02        .byte $02   ; 04
- D 0 - I - 0x00DCE1 03:9CD1: 01        .byte $01   ; 05
- D 0 - I - 0x00DCE2 03:9CD2: 03        .byte $03   ; 06
- D 0 - I - 0x00DCE3 03:9CD3: 02        .byte $02   ; 07
- D 0 - I - 0x00DCE4 03:9CD4: 02        .byte $02   ; 08
- D 0 - I - 0x00DCE5 03:9CD5: 01        .byte $01   ; 09



off_02_9CD6_02_spr_XY:
- D 0 - I - 0x00DCE6 03:9CD6: 0E        .byte $0E, $1E   ; 01
- D 0 - I - 0x00DCE8 03:9CD8: 16        .byte $16, $1E   ; 02
- D 0 - I - 0x00DCEA 03:9CDA: 08        .byte $08, $16   ; 03
- D 0 - I - 0x00DCEC 03:9CDC: 10        .byte $10, $16   ; 04
- D 0 - I - 0x00DCEE 03:9CDE: F8        .byte $F8, $0E   ; 05
- D 0 - I - 0x00DCF0 03:9CE0: 00        .byte $00, $0D   ; 06
- D 0 - I - 0x00DCF2 03:9CE2: 08        .byte $08, $0E   ; 07
- D 0 - I - 0x00DCF4 03:9CE4: 10        .byte $10, $0E   ; 08
- D 0 - I - 0x00DCF6 03:9CE6: 00        .byte $00, $05   ; 09



_off030_9CE8_0A:
- D 0 - I - 0x00DCF8 03:9CE8: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00DCFA 03:9CEA: F1 9C     .word off_02_9CF1_00_spr_A
- D 0 - I - 0x00DCFC 03:9CEC: C0 83     .word off_02_83C0_01_spr_T
- D 0 - I - 0x00DCFE 03:9CEE: D2 83     .word off_02_83D2_02_spr_XY
- D 0 - I - 0x00DD00 03:9CF0: 00        .byte con_sub_00   ; 



off_02_9CF1_00_spr_A:
- D 0 - I - 0x00DD01 03:9CF1: 01        .byte $01   ; 01
- D 0 - I - 0x00DD02 03:9CF2: 03        .byte $03   ; 02
- D 0 - I - 0x00DD03 03:9CF3: 02        .byte $02   ; 03
- D 0 - I - 0x00DD04 03:9CF4: 00        .byte $00   ; 04
- D 0 - I - 0x00DD05 03:9CF5: 01        .byte $01   ; 05
- D 0 - I - 0x00DD06 03:9CF6: 03        .byte $03   ; 06
- D 0 - I - 0x00DD07 03:9CF7: 02        .byte $02   ; 07
- D 0 - I - 0x00DD08 03:9CF8: 02        .byte $02   ; 08



sub_06_9CF9_00:
- D 0 - I - 0x00DD09 03:9CF9: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00DD0B 03:9CFB: 0C 9D     .word off_02_9D0C_00_spr_A
- D 0 - I - 0x00DD0D 03:9CFD: 02 9D     .word off_02_9D02_01_spr_T
- D 0 - I - 0x00DD0F 03:9CFF: 16 9D     .word off_02_9D16_02_spr_XY
- D 0 - I - 0x00DD11 03:9D01: 00        .byte con_sub_00   ; 



off_02_9D02_01_spr_T:
- D 0 - I - 0x00DD12 03:9D02: 81        .byte $81   ; 01
- D 0 - I - 0x00DD13 03:9D03: 80        .byte $80   ; 02
- D 0 - I - 0x00DD14 03:9D04: 91        .byte $91   ; 03
- D 0 - I - 0x00DD15 03:9D05: A2        .byte $A2   ; 04
- D 0 - I - 0x00DD16 03:9D06: D4        .byte $D4   ; 05
- D 0 - I - 0x00DD17 03:9D07: D5        .byte $D5   ; 06
- D 0 - I - 0x00DD18 03:9D08: E1        .byte $E1   ; 07
- D 0 - I - 0x00DD19 03:9D09: E0        .byte $E0   ; 08
- D 0 - I - 0x00DD1A 03:9D0A: F1        .byte $F1   ; 09
- D 0 - I - 0x00DD1B 03:9D0B: F0        .byte $F0   ; 0A



off_02_9D0C_00_spr_A:
- D 0 - I - 0x00DD1C 03:9D0C: 40        .byte $40   ; 01
- D 0 - I - 0x00DD1D 03:9D0D: 40        .byte $40   ; 02
- D 0 - I - 0x00DD1E 03:9D0E: 42        .byte $42   ; 03
- D 0 - I - 0x00DD1F 03:9D0F: 42        .byte $42   ; 04
- D 0 - I - 0x00DD20 03:9D10: 02        .byte $02   ; 05
- D 0 - I - 0x00DD21 03:9D11: 02        .byte $02   ; 06
- D 0 - I - 0x00DD22 03:9D12: 43        .byte $43   ; 07
- D 0 - I - 0x00DD23 03:9D13: 43        .byte $43   ; 08
- D 0 - I - 0x00DD24 03:9D14: 41        .byte $41   ; 09
- D 0 - I - 0x00DD25 03:9D15: 41        .byte $41   ; 0A



off_02_9D16_02_spr_XY:
- D 0 - I - 0x00DD26 03:9D16: F0        .byte $F0, $24   ; 01
- D 0 - I - 0x00DD28 03:9D18: F8        .byte $F8, $24   ; 02
- D 0 - I - 0x00DD2A 03:9D1A: F0        .byte $F0, $1C   ; 03
- D 0 - I - 0x00DD2C 03:9D1C: F8        .byte $F8, $1C   ; 04
- D 0 - I - 0x00DD2E 03:9D1E: EF        .byte $EF, $14   ; 05
- D 0 - I - 0x00DD30 03:9D20: F7        .byte $F7, $14   ; 06
- D 0 - I - 0x00DD32 03:9D22: EE        .byte $EE, $0C   ; 07
- D 0 - I - 0x00DD34 03:9D24: F6        .byte $F6, $0C   ; 08
- D 0 - I - 0x00DD36 03:9D26: EF        .byte $EF, $04   ; 09
- D 0 - I - 0x00DD38 03:9D28: F7        .byte $F7, $04   ; 0A



sub_06_9D2A_00:
- D 0 - I - 0x00DD3A 03:9D2A: 02        .byte con_sub_02, $0A   ; 
- D 0 - I - 0x00DD3C 03:9D2C: 0C 9D     .word off_02_9D0C_00_spr_A
- D 0 - I - 0x00DD3E 03:9D2E: 02 9D     .word off_02_9D02_01_spr_T
- D 0 - I - 0x00DD40 03:9D30: 33 9D     .word off_02_9D33_02_spr_XY
- D 0 - I - 0x00DD42 03:9D32: 00        .byte con_sub_00   ; 



off_02_9D33_02_spr_XY:
- D 0 - I - 0x00DD43 03:9D33: F8        .byte $F8, $24   ; 01
- D 0 - I - 0x00DD45 03:9D35: 00        .byte $00, $24   ; 02
- D 0 - I - 0x00DD47 03:9D37: F7        .byte $F7, $1C   ; 03
- D 0 - I - 0x00DD49 03:9D39: FF        .byte $FF, $1C   ; 04
- D 0 - I - 0x00DD4B 03:9D3B: F5        .byte $F5, $14   ; 05
- D 0 - I - 0x00DD4D 03:9D3D: FD        .byte $FD, $14   ; 06
- D 0 - I - 0x00DD4F 03:9D3F: F4        .byte $F4, $0C   ; 07
- D 0 - I - 0x00DD51 03:9D41: FC        .byte $FC, $0C   ; 08
- D 0 - I - 0x00DD53 03:9D43: F4        .byte $F4, $04   ; 09
- D 0 - I - 0x00DD55 03:9D45: FC        .byte $FC, $04   ; 0A



_off030_9D47_18:
- D 0 - I - 0x00DD57 03:9D47: 02        .byte con_sub_02, $09   ; 
- D 0 - I - 0x00DD59 03:9D49: 59 9D     .word off_02_9D59_00_spr_A
- D 0 - I - 0x00DD5B 03:9D4B: 50 9D     .word off_02_9D50_01_spr_T
- D 0 - I - 0x00DD5D 03:9D4D: 62 9D     .word off_02_9D62_02_spr_XY
- D 0 - I - 0x00DD5F 03:9D4F: 00        .byte con_sub_00   ; 



off_02_9D50_01_spr_T:
- D 0 - I - 0x00DD60 03:9D50: C0        .byte $C0   ; 01
- D 0 - I - 0x00DD61 03:9D51: F2        .byte $F2   ; 02
- D 0 - I - 0x00DD62 03:9D52: F3        .byte $F3   ; 03
- D 0 - I - 0x00DD63 03:9D53: E2        .byte $E2   ; 04
- D 0 - I - 0x00DD64 03:9D54: E3        .byte $E3   ; 05
- D 0 - I - 0x00DD65 03:9D55: D2        .byte $D2   ; 06
- D 0 - I - 0x00DD66 03:9D56: D3        .byte $D3   ; 07
- D 0 - I - 0x00DD67 03:9D57: B2        .byte $B2   ; 08
- D 0 - I - 0x00DD68 03:9D58: B3        .byte $B3   ; 09



off_02_9D59_00_spr_A:
- D 0 - I - 0x00DD69 03:9D59: 81        .byte $81   ; 01
- D 0 - I - 0x00DD6A 03:9D5A: 81        .byte $81   ; 02
- D 0 - I - 0x00DD6B 03:9D5B: 83        .byte $83   ; 03
- D 0 - I - 0x00DD6C 03:9D5C: 82        .byte $82   ; 04
- D 0 - I - 0x00DD6D 03:9D5D: 82        .byte $82   ; 05
- D 0 - I - 0x00DD6E 03:9D5E: 82        .byte $82   ; 06
- D 0 - I - 0x00DD6F 03:9D5F: 80        .byte $80   ; 07
- D 0 - I - 0x00DD70 03:9D60: 80        .byte $80   ; 08
- D 0 - I - 0x00DD71 03:9D61: 80        .byte $80   ; 09



off_02_9D62_02_spr_XY:
- D 0 - I - 0x00DD72 03:9D62: F3        .byte $F3, $2F   ; 01
- D 0 - I - 0x00DD74 03:9D64: EA        .byte $EA, $27   ; 02
- D 0 - I - 0x00DD76 03:9D66: F2        .byte $F2, $27   ; 03
- D 0 - I - 0x00DD78 03:9D68: FA        .byte $FA, $27   ; 04
- D 0 - I - 0x00DD7A 03:9D6A: 02        .byte $02, $27   ; 05
- D 0 - I - 0x00DD7C 03:9D6C: FA        .byte $FA, $1F   ; 06
- D 0 - I - 0x00DD7E 03:9D6E: 02        .byte $02, $1F   ; 07
- D 0 - I - 0x00DD80 03:9D70: FF        .byte $FF, $17   ; 08
- D 0 - I - 0x00DD82 03:9D72: 07        .byte $07, $17   ; 09



_off030_9D74_19:
- D 0 - I - 0x00DD84 03:9D74: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00DD86 03:9D76: 85 9D     .word off_02_9D85_00_spr_A
- D 0 - I - 0x00DD88 03:9D78: 7D 9D     .word off_02_9D7D_01_spr_T
- D 0 - I - 0x00DD8A 03:9D7A: 8D 9D     .word off_02_9D8D_02_spr_XY
- D 0 - I - 0x00DD8C 03:9D7C: 00        .byte con_sub_00   ; 



off_02_9D7D_01_spr_T:
- D 0 - I - 0x00DD8D 03:9D7D: C0        .byte $C0   ; 01
- D 0 - I - 0x00DD8E 03:9D7E: F2        .byte $F2   ; 02
- D 0 - I - 0x00DD8F 03:9D7F: F3        .byte $F3   ; 03
- D 0 - I - 0x00DD90 03:9D80: A1        .byte $A1   ; 04
- D 0 - I - 0x00DD91 03:9D81: A2        .byte $A2   ; 05
- D 0 - I - 0x00DD92 03:9D82: 91        .byte $91   ; 06
- D 0 - I - 0x00DD93 03:9D83: 80        .byte $80   ; 07
- D 0 - I - 0x00DD94 03:9D84: 81        .byte $81   ; 08



off_02_9D85_00_spr_A:
- D 0 - I - 0x00DD95 03:9D85: 81        .byte $81   ; 01
- D 0 - I - 0x00DD96 03:9D86: 81        .byte $81   ; 02
- D 0 - I - 0x00DD97 03:9D87: 83        .byte $83   ; 03
- D 0 - I - 0x00DD98 03:9D88: 82        .byte $82   ; 04
- D 0 - I - 0x00DD99 03:9D89: 82        .byte $82   ; 05
- D 0 - I - 0x00DD9A 03:9D8A: 82        .byte $82   ; 06
- D 0 - I - 0x00DD9B 03:9D8B: 80        .byte $80   ; 07
- D 0 - I - 0x00DD9C 03:9D8C: 80        .byte $80   ; 08



off_02_9D8D_02_spr_XY:
- D 0 - I - 0x00DD9D 03:9D8D: FB        .byte $FB, $28   ; 01
- D 0 - I - 0x00DD9F 03:9D8F: F3        .byte $F3, $20   ; 02
- D 0 - I - 0x00DDA1 03:9D91: FB        .byte $FB, $20   ; 03
- D 0 - I - 0x00DDA3 03:9D93: 04        .byte $04, $20   ; 04
- D 0 - I - 0x00DDA5 03:9D95: FC        .byte $FC, $18   ; 05
- D 0 - I - 0x00DDA7 03:9D97: 04        .byte $04, $18   ; 06
- D 0 - I - 0x00DDA9 03:9D99: FC        .byte $FC, $10   ; 07
- D 0 - I - 0x00DDAB 03:9D9B: 04        .byte $04, $10   ; 08



_off030_9D9D_15:
- D 0 - I - 0x00DDAD 03:9D9D: 02        .byte con_sub_02, $0B   ; 
- D 0 - I - 0x00DDAF 03:9D9F: B1 9D     .word off_02_9DB1_00_spr_A
- D 0 - I - 0x00DDB1 03:9DA1: A6 9D     .word off_02_9DA6_01_spr_T
- D 0 - I - 0x00DDB3 03:9DA3: BC 9D     .word off_02_9DBC_02_spr_XY
- D 0 - I - 0x00DDB5 03:9DA5: 00        .byte con_sub_00   ; 



off_02_9DA6_01_spr_T:
- D 0 - I - 0x00DDB6 03:9DA6: 80        .byte $80   ; 01
- D 0 - I - 0x00DDB7 03:9DA7: 81        .byte $81   ; 02
- D 0 - I - 0x00DDB8 03:9DA8: A5        .byte $A5   ; 03
- D 0 - I - 0x00DDB9 03:9DA9: C8        .byte $C8   ; 04
- D 0 - I - 0x00DDBA 03:9DAA: 9C        .byte $9C   ; 05
- D 0 - I - 0x00DDBB 03:9DAB: A6        .byte $A6   ; 06
- D 0 - I - 0x00DDBC 03:9DAC: D8        .byte $D8   ; 07
- D 0 - I - 0x00DDBD 03:9DAD: D0        .byte $D0   ; 08
- D 0 - I - 0x00DDBE 03:9DAE: D1        .byte $D1   ; 09
- D 0 - I - 0x00DDBF 03:9DAF: DC        .byte $DC   ; 0A
- D 0 - I - 0x00DDC0 03:9DB0: C1        .byte $C1   ; 0B



off_02_9DB1_00_spr_A:
- D 0 - I - 0x00DDC1 03:9DB1: 00        .byte $00   ; 01
- D 0 - I - 0x00DDC2 03:9DB2: 00        .byte $00   ; 02
- D 0 - I - 0x00DDC3 03:9DB3: 02        .byte $02   ; 03
- D 0 - I - 0x00DDC4 03:9DB4: 02        .byte $02   ; 04
- D 0 - I - 0x00DDC5 03:9DB5: 02        .byte $02   ; 05
- D 0 - I - 0x00DDC6 03:9DB6: 02        .byte $02   ; 06
- D 0 - I - 0x00DDC7 03:9DB7: 02        .byte $02   ; 07
- D 0 - I - 0x00DDC8 03:9DB8: 03        .byte $03   ; 08
- D 0 - I - 0x00DDC9 03:9DB9: 03        .byte $03   ; 09
- D 0 - I - 0x00DDCA 03:9DBA: 81        .byte $81   ; 0A
- D 0 - I - 0x00DDCB 03:9DBB: 01        .byte $01   ; 0B



off_02_9DBC_02_spr_XY:
- D 0 - I - 0x00DDCC 03:9DBC: FF        .byte $FF, $24   ; 01
- D 0 - I - 0x00DDCE 03:9DBE: 07        .byte $07, $24   ; 02
- D 0 - I - 0x00DDD0 03:9DC0: 00        .byte $00, $1C   ; 03
- D 0 - I - 0x00DDD2 03:9DC2: 08        .byte $08, $1C   ; 04
- D 0 - I - 0x00DDD4 03:9DC4: F8        .byte $F8, $16   ; 05
- D 0 - I - 0x00DDD6 03:9DC6: 00        .byte $00, $14   ; 06
- D 0 - I - 0x00DDD8 03:9DC8: 08        .byte $08, $14   ; 07
- D 0 - I - 0x00DDDA 03:9DCA: FF        .byte $FF, $0C   ; 08
- D 0 - I - 0x00DDDC 03:9DCC: 07        .byte $07, $0C   ; 09
- D 0 - I - 0x00DDDE 03:9DCE: FE        .byte $FE, $04   ; 0A
- D 0 - I - 0x00DDE0 03:9DD0: 08        .byte $08, $04   ; 0B



_off030_9DD2_16:
- D 0 - I - 0x00DDE2 03:9DD2: 02        .byte con_sub_02, $0C   ; 
- D 0 - I - 0x00DDE4 03:9DD4: E7 9D     .word off_02_9DE7_00_spr_A
- D 0 - I - 0x00DDE6 03:9DD6: DB 9D     .word off_02_9DDB_01_spr_T
- D 0 - I - 0x00DDE8 03:9DD8: F3 9D     .word off_02_9DF3_02_spr_XY
- D 0 - I - 0x00DDEA 03:9DDA: 00        .byte con_sub_00   ; 



off_02_9DDB_01_spr_T:
- D 0 - I - 0x00DDEB 03:9DDB: 80        .byte $80   ; 01
- D 0 - I - 0x00DDEC 03:9DDC: 81        .byte $81   ; 02
- D 0 - I - 0x00DDED 03:9DDD: 90        .byte $90   ; 03
- D 0 - I - 0x00DDEE 03:9DDE: 91        .byte $91   ; 04
- D 0 - I - 0x00DDEF 03:9DDF: 95        .byte $95   ; 05
- D 0 - I - 0x00DDF0 03:9DE0: 96        .byte $96   ; 06
- D 0 - I - 0x00DDF1 03:9DE1: 97        .byte $97   ; 07
- D 0 - I - 0x00DDF2 03:9DE2: A1        .byte $A1   ; 08
- D 0 - I - 0x00DDF3 03:9DE3: D0        .byte $D0   ; 09
- D 0 - I - 0x00DDF4 03:9DE4: D1        .byte $D1   ; 0A
- D 0 - I - 0x00DDF5 03:9DE5: C0        .byte $C0   ; 0B
- D 0 - I - 0x00DDF6 03:9DE6: C1        .byte $C1   ; 0C



off_02_9DE7_00_spr_A:
- D 0 - I - 0x00DDF7 03:9DE7: 00        .byte $00   ; 01
- D 0 - I - 0x00DDF8 03:9DE8: 00        .byte $00   ; 02
- D 0 - I - 0x00DDF9 03:9DE9: 02        .byte $02   ; 03
- D 0 - I - 0x00DDFA 03:9DEA: 02        .byte $02   ; 04
- D 0 - I - 0x00DDFB 03:9DEB: 02        .byte $02   ; 05
- D 0 - I - 0x00DDFC 03:9DEC: 02        .byte $02   ; 06
- D 0 - I - 0x00DDFD 03:9DED: 02        .byte $02   ; 07
- D 0 - I - 0x00DDFE 03:9DEE: 02        .byte $02   ; 08
- D 0 - I - 0x00DDFF 03:9DEF: 03        .byte $03   ; 09
- D 0 - I - 0x00DE00 03:9DF0: 03        .byte $03   ; 0A
- D 0 - I - 0x00DE01 03:9DF1: 01        .byte $01   ; 0B
- D 0 - I - 0x00DE02 03:9DF2: 01        .byte $01   ; 0C



off_02_9DF3_02_spr_XY:
- D 0 - I - 0x00DE03 03:9DF3: FA        .byte $FA, $24   ; 01
- D 0 - I - 0x00DE05 03:9DF5: 02        .byte $02, $24   ; 02
- D 0 - I - 0x00DE07 03:9DF7: FA        .byte $FA, $1C   ; 03
- D 0 - I - 0x00DE09 03:9DF9: 02        .byte $02, $1C   ; 04
- D 0 - I - 0x00DE0B 03:9DFB: EC        .byte $EC, $14   ; 05
- D 0 - I - 0x00DE0D 03:9DFD: F4        .byte $F4, $14   ; 06
- D 0 - I - 0x00DE0F 03:9DFF: FB        .byte $FB, $14   ; 07
- D 0 - I - 0x00DE11 03:9E01: 03        .byte $03, $14   ; 08
- D 0 - I - 0x00DE13 03:9E03: FC        .byte $FC, $0C   ; 09
- D 0 - I - 0x00DE15 03:9E05: 04        .byte $04, $0C   ; 0A
- D 0 - I - 0x00DE17 03:9E07: FE        .byte $FE, $04   ; 0B
- D 0 - I - 0x00DE19 03:9E09: 06        .byte $06, $04   ; 0C



_off030_9E0B_10:
- D 0 - I - 0x00DE1B 03:9E0B: 02        .byte con_sub_02, $08   ; 
- D 0 - I - 0x00DE1D 03:9E0D: 1F 9E     .word off_02_9E1F_00_spr_A
- D 0 - I - 0x00DE1F 03:9E0F: 17 9E     .word off_02_9E17_01_spr_T
- D 0 - I - 0x00DE21 03:9E11: 27 9E     .word off_02_9E27_02_spr_XY
- D 0 - I - 0x00DE23 03:9E13: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00DE24 03:9E14: 04 98     .word sub_05_9804
- D 0 - I - 0x00DE26 03:9E16: 00        .byte con_sub_00   ; 



off_02_9E17_01_spr_T:
- D 0 - I - 0x00DE27 03:9E17: 80        .byte $80   ; 01
- D 0 - I - 0x00DE28 03:9E18: 81        .byte $81   ; 02
- D 0 - I - 0x00DE29 03:9E19: CA        .byte $CA   ; 03
- D 0 - I - 0x00DE2A 03:9E1A: E4        .byte $E4   ; 04
- D 0 - I - 0x00DE2B 03:9E1B: 8A        .byte $8A   ; 05
- D 0 - I - 0x00DE2C 03:9E1C: DA        .byte $DA   ; 06
- D 0 - I - 0x00DE2D 03:9E1D: A1        .byte $A1   ; 07
- D 0 - I - 0x00DE2E 03:9E1E: 98        .byte $98   ; 08



off_02_9E1F_00_spr_A:
- D 0 - I - 0x00DE2F 03:9E1F: 00        .byte $00   ; 01
- D 0 - I - 0x00DE30 03:9E20: 00        .byte $00   ; 02
- D 0 - I - 0x00DE31 03:9E21: 02        .byte $02   ; 03
- D 0 - I - 0x00DE32 03:9E22: 42        .byte $42   ; 04
- D 0 - I - 0x00DE33 03:9E23: 02        .byte $02   ; 05
- D 0 - I - 0x00DE34 03:9E24: 02        .byte $02   ; 06
- D 0 - I - 0x00DE35 03:9E25: 42        .byte $42   ; 07
- D 0 - I - 0x00DE36 03:9E26: 42        .byte $42   ; 08



off_02_9E27_02_spr_XY:
- D 0 - I - 0x00DE37 03:9E27: 03        .byte $03, $23   ; 01
- D 0 - I - 0x00DE39 03:9E29: 0B        .byte $0B, $23   ; 02
- D 0 - I - 0x00DE3B 03:9E2B: 0D        .byte $0D, $23   ; 03
- D 0 - I - 0x00DE3D 03:9E2D: FE        .byte $FE, $1B   ; 04
- D 0 - I - 0x00DE3F 03:9E2F: 06        .byte $06, $1B   ; 05
- D 0 - I - 0x00DE41 03:9E31: 0E        .byte $0E, $1B   ; 06
- D 0 - I - 0x00DE43 03:9E33: FD        .byte $FD, $13   ; 07
- D 0 - I - 0x00DE45 03:9E35: 05        .byte $05, $13   ; 08



_off030_9E37_11:
- D 0 - I - 0x00DE47 03:9E37: 02        .byte con_sub_02, $07   ; 
- D 0 - I - 0x00DE49 03:9E39: 4A 9E     .word off_02_9E4A_00_spr_A
- D 0 - I - 0x00DE4B 03:9E3B: 43 9E     .word off_02_9E43_01_spr_T
- D 0 - I - 0x00DE4D 03:9E3D: 51 9E     .word off_02_9E51_02_spr_XY
- D 0 - I - 0x00DE4F 03:9E3F: 05        .byte con_sub_05   ; 
- D 0 - I - 0x00DE50 03:9E40: 04 98     .word sub_05_9804
- D 0 - I - 0x00DE52 03:9E42: 00        .byte con_sub_00   ; 



off_02_9E43_01_spr_T:
- D 0 - I - 0x00DE53 03:9E43: 80        .byte $80   ; 01
- D 0 - I - 0x00DE54 03:9E44: 81        .byte $81   ; 02
- D 0 - I - 0x00DE55 03:9E45: AC        .byte $AC   ; 03
- D 0 - I - 0x00DE56 03:9E46: 9A        .byte $9A   ; 04
- D 0 - I - 0x00DE57 03:9E47: BC        .byte $BC   ; 05
- D 0 - I - 0x00DE58 03:9E48: B8        .byte $B8   ; 06
- D 0 - I - 0x00DE59 03:9E49: F6        .byte $F6   ; 07



off_02_9E4A_00_spr_A:
- D 0 - I - 0x00DE5A 03:9E4A: 00        .byte $00   ; 01
- D 0 - I - 0x00DE5B 03:9E4B: 00        .byte $00   ; 02
- D 0 - I - 0x00DE5C 03:9E4C: 02        .byte $02   ; 03
- D 0 - I - 0x00DE5D 03:9E4D: 00        .byte $00   ; 04
- D 0 - I - 0x00DE5E 03:9E4E: 02        .byte $02   ; 05
- D 0 - I - 0x00DE5F 03:9E4F: 02        .byte $02   ; 06
- D 0 - I - 0x00DE60 03:9E50: 02        .byte $02   ; 07



off_02_9E51_02_spr_XY:
- D 0 - I - 0x00DE61 03:9E51: FC        .byte $FC, $23   ; 01
- D 0 - I - 0x00DE63 03:9E53: 04        .byte $04, $23   ; 02
- D 0 - I - 0x00DE65 03:9E55: FC        .byte $FC, $1B   ; 03
- D 0 - I - 0x00DE67 03:9E57: 04        .byte $04, $1B   ; 04
- D 0 - I - 0x00DE69 03:9E59: F4        .byte $F4, $13   ; 05
- D 0 - I - 0x00DE6B 03:9E5B: FC        .byte $FC, $13   ; 06
- D 0 - I - 0x00DE6D 03:9E5D: 04        .byte $04, $13   ; 07



_off030_9E5F_03:
- D 0 - I - 0x00DE6F 03:9E5F: 02        .byte con_sub_02, $10   ; 
- D 0 - I - 0x00DE71 03:9E61: 7E 9E     .word off_02_9E7E_00_spr_A
- D 0 - I - 0x00DE73 03:9E63: 6E 9E     .word off_02_9E6E_01_spr_T
- D 0 - I - 0x00DE75 03:9E65: 8E 9E     .word off_02_9E8E_02_spr_XY
- D 0 - I - 0x00DE77 03:9E67: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00DE79 03:9E69: 0D A0     .word sub_06_A00D_00
- - - - - - 0x00DE7B 03:9E6B: 04 A0     .word sub_06_A004_01
@end:
- D 0 - I - 0x00DE7D 03:9E6D: 00        .byte con_sub_00   ; 



off_02_9E6E_01_spr_T:
- D 0 - I - 0x00DE7E 03:9E6E: 82        .byte $82   ; 01
- D 0 - I - 0x00DE7F 03:9E6F: 85        .byte $85   ; 02
- D 0 - I - 0x00DE80 03:9E70: CC        .byte $CC   ; 03
- D 0 - I - 0x00DE81 03:9E71: AB        .byte $AB   ; 04
- D 0 - I - 0x00DE82 03:9E72: 9C        .byte $9C   ; 05
- D 0 - I - 0x00DE83 03:9E73: AA        .byte $AA   ; 06
- D 0 - I - 0x00DE84 03:9E74: BE        .byte $BE   ; 07
- D 0 - I - 0x00DE85 03:9E75: AC        .byte $AC   ; 08
- D 0 - I - 0x00DE86 03:9E76: CD        .byte $CD   ; 09
- D 0 - I - 0x00DE87 03:9E77: CB        .byte $CB   ; 0A
- D 0 - I - 0x00DE88 03:9E78: DF        .byte $DF   ; 0B
- D 0 - I - 0x00DE89 03:9E79: C0        .byte $C0   ; 0C
- D 0 - I - 0x00DE8A 03:9E7A: C1        .byte $C1   ; 0D
- D 0 - I - 0x00DE8B 03:9E7B: C2        .byte $C2   ; 0E
- D 0 - I - 0x00DE8C 03:9E7C: D0        .byte $D0   ; 0F
- D 0 - I - 0x00DE8D 03:9E7D: D2        .byte $D2   ; 10



off_02_9E7E_00_spr_A:
- D 0 - I - 0x00DE8E 03:9E7E: 02        .byte $02   ; 01
- D 0 - I - 0x00DE8F 03:9E7F: 02        .byte $02   ; 02
- D 0 - I - 0x00DE90 03:9E80: 00        .byte $00   ; 03
- D 0 - I - 0x00DE91 03:9E81: 02        .byte $02   ; 04
- D 0 - I - 0x00DE92 03:9E82: 00        .byte $00   ; 05
- D 0 - I - 0x00DE93 03:9E83: 00        .byte $00   ; 06
- D 0 - I - 0x00DE94 03:9E84: 00        .byte $00   ; 07
- D 0 - I - 0x00DE95 03:9E85: 00        .byte $00   ; 08
- D 0 - I - 0x00DE96 03:9E86: 00        .byte $00   ; 09
- D 0 - I - 0x00DE97 03:9E87: 00        .byte $00   ; 0A
- D 0 - I - 0x00DE98 03:9E88: 00        .byte $00   ; 0B
- D 0 - I - 0x00DE99 03:9E89: 03        .byte $03   ; 0C
- D 0 - I - 0x00DE9A 03:9E8A: 03        .byte $03   ; 0D
- D 0 - I - 0x00DE9B 03:9E8B: 03        .byte $03   ; 0E
- D 0 - I - 0x00DE9C 03:9E8C: 01        .byte $01   ; 0F
- D 0 - I - 0x00DE9D 03:9E8D: 01        .byte $01   ; 10



off_02_9E8E_02_spr_XY:
- D 0 - I - 0x00DE9E 03:9E8E: FC        .byte $FC, $2C   ; 01
- D 0 - I - 0x00DEA0 03:9E90: 04        .byte $04, $2C   ; 02
- D 0 - I - 0x00DEA2 03:9E92: F7        .byte $F7, $24   ; 03
- D 0 - I - 0x00DEA4 03:9E94: FF        .byte $FF, $24   ; 04
- D 0 - I - 0x00DEA6 03:9E96: 07        .byte $07, $24   ; 05
- D 0 - I - 0x00DEA8 03:9E98: F9        .byte $F9, $1C   ; 06
- D 0 - I - 0x00DEAA 03:9E9A: 01        .byte $01, $1C   ; 07
- D 0 - I - 0x00DEAC 03:9E9C: 09        .byte $09, $1C   ; 08
- D 0 - I - 0x00DEAE 03:9E9E: F7        .byte $F7, $14   ; 09
- D 0 - I - 0x00DEB0 03:9EA0: FF        .byte $FF, $14   ; 0A
- D 0 - I - 0x00DEB2 03:9EA2: 07        .byte $07, $14   ; 0B
- D 0 - I - 0x00DEB4 03:9EA4: F8        .byte $F8, $0C   ; 0C
- D 0 - I - 0x00DEB6 03:9EA6: 00        .byte $00, $0C   ; 0D
- D 0 - I - 0x00DEB8 03:9EA8: 08        .byte $08, $0C   ; 0E
- D 0 - I - 0x00DEBA 03:9EAA: F8        .byte $F8, $04   ; 0F
- D 0 - I - 0x00DEBC 03:9EAC: 08        .byte $08, $04   ; 10



_off030_9EAE_04:
- D 0 - I - 0x00DEBE 03:9EAE: 02        .byte con_sub_02, $13   ; 
- D 0 - I - 0x00DEC0 03:9EB0: D0 9E     .word off_02_9ED0_00_spr_A
- D 0 - I - 0x00DEC2 03:9EB2: BD 9E     .word off_02_9EBD_01_spr_T
- D 0 - I - 0x00DEC4 03:9EB4: E3 9E     .word off_02_9EE3_02_spr_XY
- D 0 - I - 0x00DEC6 03:9EB6: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 0 - I - 0x00DEC8 03:9EB8: 7D A0     .word sub_06_A07D_00
- - - - - - 0x00DECA 03:9EBA: 74 A0     .word sub_06_A074_01
@end:
- D 0 - I - 0x00DECC 03:9EBC: 00        .byte con_sub_00   ; 



off_02_9EBD_01_spr_T:
- D 0 - I - 0x00DECD 03:9EBD: 8D        .byte $8D   ; 01
- D 0 - I - 0x00DECE 03:9EBE: EC        .byte $EC   ; 02
- D 0 - I - 0x00DECF 03:9EBF: BD        .byte $BD   ; 03
- D 0 - I - 0x00DED0 03:9EC0: 82        .byte $82   ; 04
- D 0 - I - 0x00DED1 03:9EC1: 85        .byte $85   ; 05
- D 0 - I - 0x00DED2 03:9EC2: DD        .byte $DD   ; 06
- D 0 - I - 0x00DED3 03:9EC3: 8B        .byte $8B   ; 07
- D 0 - I - 0x00DED4 03:9EC4: BF        .byte $BF   ; 08
- D 0 - I - 0x00DED5 03:9EC5: AD        .byte $AD   ; 09
- D 0 - I - 0x00DED6 03:9EC6: AE        .byte $AE   ; 0A
- D 0 - I - 0x00DED7 03:9EC7: 9B        .byte $9B   ; 0B
- D 0 - I - 0x00DED8 03:9EC8: CD        .byte $CD   ; 0C
- D 0 - I - 0x00DED9 03:9EC9: CE        .byte $CE   ; 0D
- D 0 - I - 0x00DEDA 03:9ECA: CF        .byte $CF   ; 0E
- D 0 - I - 0x00DEDB 03:9ECB: C0        .byte $C0   ; 0F
- D 0 - I - 0x00DEDC 03:9ECC: C1        .byte $C1   ; 10
- D 0 - I - 0x00DEDD 03:9ECD: C2        .byte $C2   ; 11
- D 0 - I - 0x00DEDE 03:9ECE: D0        .byte $D0   ; 12
- D 0 - I - 0x00DEDF 03:9ECF: D2        .byte $D2   ; 13



off_02_9ED0_00_spr_A:
- D 0 - I - 0x00DEE0 03:9ED0: 00        .byte $00   ; 01
- D 0 - I - 0x00DEE1 03:9ED1: 00        .byte $00   ; 02
- D 0 - I - 0x00DEE2 03:9ED2: 00        .byte $00   ; 03
- D 0 - I - 0x00DEE3 03:9ED3: 02        .byte $02   ; 04
- D 0 - I - 0x00DEE4 03:9ED4: 02        .byte $02   ; 05
- D 0 - I - 0x00DEE5 03:9ED5: 00        .byte $00   ; 06
- D 0 - I - 0x00DEE6 03:9ED6: 00        .byte $00   ; 07
- D 0 - I - 0x00DEE7 03:9ED7: 00        .byte $00   ; 08
- D 0 - I - 0x00DEE8 03:9ED8: 00        .byte $00   ; 09
- D 0 - I - 0x00DEE9 03:9ED9: 00        .byte $00   ; 0A
- D 0 - I - 0x00DEEA 03:9EDA: 00        .byte $00   ; 0B
- D 0 - I - 0x00DEEB 03:9EDB: 03        .byte $03   ; 0C
- D 0 - I - 0x00DEEC 03:9EDC: 00        .byte $00   ; 0D
- D 0 - I - 0x00DEED 03:9EDD: 00        .byte $00   ; 0E
- D 0 - I - 0x00DEEE 03:9EDE: 03        .byte $03   ; 0F
- D 0 - I - 0x00DEEF 03:9EDF: 03        .byte $03   ; 10
- D 0 - I - 0x00DEF0 03:9EE0: 03        .byte $03   ; 11
- D 0 - I - 0x00DEF1 03:9EE1: 01        .byte $01   ; 12
- D 0 - I - 0x00DEF2 03:9EE2: 01        .byte $01   ; 13



off_02_9EE3_02_spr_XY:
- D 0 - I - 0x00DEF3 03:9EE3: F1        .byte $F1, $2D   ; 01
- D 0 - I - 0x00DEF5 03:9EE5: F6        .byte $F6, $24   ; 02
- D 0 - I - 0x00DEF7 03:9EE7: EF        .byte $EF, $25   ; 03
- D 0 - I - 0x00DEF9 03:9EE9: F6        .byte $F6, $2C   ; 04
- D 0 - I - 0x00DEFB 03:9EEB: FE        .byte $FE, $2C   ; 05
- D 0 - I - 0x00DEFD 03:9EED: FE        .byte $FE, $24   ; 06
- D 0 - I - 0x00DEFF 03:9EEF: 06        .byte $06, $24   ; 07
- D 0 - I - 0x00DF01 03:9EF1: EE        .byte $EE, $1D   ; 08
- D 0 - I - 0x00DF03 03:9EF3: F6        .byte $F6, $1C   ; 09
- D 0 - I - 0x00DF05 03:9EF5: FE        .byte $FE, $1C   ; 0A
- D 0 - I - 0x00DF07 03:9EF7: 06        .byte $06, $1C   ; 0B
- D 0 - I - 0x00DF09 03:9EF9: F7        .byte $F7, $14   ; 0C
- D 0 - I - 0x00DF0B 03:9EFB: FF        .byte $FF, $14   ; 0D
- D 0 - I - 0x00DF0D 03:9EFD: 07        .byte $07, $14   ; 0E
- D 0 - I - 0x00DF0F 03:9EFF: F8        .byte $F8, $0C   ; 0F
- D 0 - I - 0x00DF11 03:9F01: 00        .byte $00, $0C   ; 10
- D 0 - I - 0x00DF13 03:9F03: 08        .byte $08, $0C   ; 11
- D 0 - I - 0x00DF15 03:9F05: F8        .byte $F8, $04   ; 12
- D 0 - I - 0x00DF17 03:9F07: 08        .byte $08, $04   ; 13



_off030_9F09_10:
- D 0 - I - 0x00DF19 03:9F09: 02        .byte con_sub_02, $14   ; 
- D 0 - I - 0x00DF1B 03:9F0B: 26 9F     .word off_02_9F26_00_spr_A
- D 0 - I - 0x00DF1D 03:9F0D: 12 9F     .word off_02_9F12_01_spr_T
- D 0 - I - 0x00DF1F 03:9F0F: 3A 9F     .word off_02_9F3A_02_spr_XY
- D 0 - I - 0x00DF21 03:9F11: 00        .byte con_sub_00   ; 



off_02_9F12_01_spr_T:
- D 0 - I - 0x00DF22 03:9F12: A9        .byte $A9   ; 01
- D 0 - I - 0x00DF23 03:9F13: 82        .byte $82   ; 02
- D 0 - I - 0x00DF24 03:9F14: 85        .byte $85   ; 03
- D 0 - I - 0x00DF25 03:9F15: BA        .byte $BA   ; 04
- D 0 - I - 0x00DF26 03:9F16: CA        .byte $CA   ; 05
- D 0 - I - 0x00DF27 03:9F17: FD        .byte $FD   ; 06
- D 0 - I - 0x00DF28 03:9F18: AF        .byte $AF   ; 07
- D 0 - I - 0x00DF29 03:9F19: 8B        .byte $8B   ; 08
- D 0 - I - 0x00DF2A 03:9F1A: BB        .byte $BB   ; 09
- D 0 - I - 0x00DF2B 03:9F1B: 9E        .byte $9E   ; 0A
- D 0 - I - 0x00DF2C 03:9F1C: 9F        .byte $9F   ; 0B
- D 0 - I - 0x00DF2D 03:9F1D: 9B        .byte $9B   ; 0C
- D 0 - I - 0x00DF2E 03:9F1E: CD        .byte $CD   ; 0D
- D 0 - I - 0x00DF2F 03:9F1F: CE        .byte $CE   ; 0E
- D 0 - I - 0x00DF30 03:9F20: CF        .byte $CF   ; 0F
- D 0 - I - 0x00DF31 03:9F21: C0        .byte $C0   ; 10
- D 0 - I - 0x00DF32 03:9F22: C1        .byte $C1   ; 11
- D 0 - I - 0x00DF33 03:9F23: C2        .byte $C2   ; 12
- D 0 - I - 0x00DF34 03:9F24: D0        .byte $D0   ; 13
- D 0 - I - 0x00DF35 03:9F25: D2        .byte $D2   ; 14



off_02_9F26_00_spr_A:
- D 0 - I - 0x00DF36 03:9F26: 00        .byte $00   ; 01
- D 0 - I - 0x00DF37 03:9F27: 02        .byte $02   ; 02
- D 0 - I - 0x00DF38 03:9F28: 02        .byte $02   ; 03
- D 0 - I - 0x00DF39 03:9F29: 00        .byte $00   ; 04
- D 0 - I - 0x00DF3A 03:9F2A: 00        .byte $00   ; 05
- D 0 - I - 0x00DF3B 03:9F2B: 00        .byte $00   ; 06
- D 0 - I - 0x00DF3C 03:9F2C: 00        .byte $00   ; 07
- D 0 - I - 0x00DF3D 03:9F2D: 00        .byte $00   ; 08
- D 0 - I - 0x00DF3E 03:9F2E: 00        .byte $00   ; 09
- D 0 - I - 0x00DF3F 03:9F2F: 00        .byte $00   ; 0A
- D 0 - I - 0x00DF40 03:9F30: 00        .byte $00   ; 0B
- D 0 - I - 0x00DF41 03:9F31: 00        .byte $00   ; 0C
- D 0 - I - 0x00DF42 03:9F32: 00        .byte $00   ; 0D
- D 0 - I - 0x00DF43 03:9F33: 00        .byte $00   ; 0E
- D 0 - I - 0x00DF44 03:9F34: 00        .byte $00   ; 0F
- D 0 - I - 0x00DF45 03:9F35: 03        .byte $03   ; 10
- D 0 - I - 0x00DF46 03:9F36: 03        .byte $03   ; 11
- D 0 - I - 0x00DF47 03:9F37: 03        .byte $03   ; 12
- D 0 - I - 0x00DF48 03:9F38: 01        .byte $01   ; 13
- D 0 - I - 0x00DF49 03:9F39: 01        .byte $01   ; 14



off_02_9F3A_02_spr_XY:
- D 0 - I - 0x00DF4A 03:9F3A: E6        .byte $E6, $2C   ; 01
- D 0 - I - 0x00DF4C 03:9F3C: F3        .byte $F3, $2C   ; 02
- D 0 - I - 0x00DF4E 03:9F3E: FB        .byte $FB, $2C   ; 03
- D 0 - I - 0x00DF50 03:9F40: E3        .byte $E3, $24   ; 04
- D 0 - I - 0x00DF52 03:9F42: EB        .byte $EB, $24   ; 05
- D 0 - I - 0x00DF54 03:9F44: F3        .byte $F3, $24   ; 06
- D 0 - I - 0x00DF56 03:9F46: FB        .byte $FB, $24   ; 07
- D 0 - I - 0x00DF58 03:9F48: 03        .byte $03, $24   ; 08
- D 0 - I - 0x00DF5A 03:9F4A: EC        .byte $EC, $1C   ; 09
- D 0 - I - 0x00DF5C 03:9F4C: F4        .byte $F4, $1C   ; 0A
- D 0 - I - 0x00DF5E 03:9F4E: FC        .byte $FC, $1C   ; 0B
- D 0 - I - 0x00DF60 03:9F50: 04        .byte $04, $1C   ; 0C
- D 0 - I - 0x00DF62 03:9F52: F7        .byte $F7, $14   ; 0D
- D 0 - I - 0x00DF64 03:9F54: FF        .byte $FF, $14   ; 0E
- D 0 - I - 0x00DF66 03:9F56: 07        .byte $07, $14   ; 0F
- D 0 - I - 0x00DF68 03:9F58: F8        .byte $F8, $0C   ; 10
- D 0 - I - 0x00DF6A 03:9F5A: 00        .byte $00, $0C   ; 11
- D 0 - I - 0x00DF6C 03:9F5C: 08        .byte $08, $0C   ; 12
- D 0 - I - 0x00DF6E 03:9F5E: F8        .byte $F8, $04   ; 13
- D 0 - I - 0x00DF70 03:9F60: 08        .byte $08, $04   ; 14



_off030_9F62_0C:
_off030_9F62_0E:
- D 0 - I - 0x00DF72 03:9F62: 02        .byte con_sub_02, $11   ; 
- D 0 - I - 0x00DF74 03:9F64: 7C 9F     .word off_02_9F7C_00_spr_A
- D 0 - I - 0x00DF76 03:9F66: 6B 9F     .word off_02_9F6B_01_spr_T
- D 0 - I - 0x00DF78 03:9F68: 8D 9F     .word off_02_9F8D_02_spr_XY
- D 0 - I - 0x00DF7A 03:9F6A: 00        .byte con_sub_00   ; 



off_02_9F6B_01_spr_T:
- D 0 - I - 0x00DF7B 03:9F6B: 80        .byte $80   ; 01
- D 0 - I - 0x00DF7C 03:9F6C: 81        .byte $81   ; 02
- D 0 - I - 0x00DF7D 03:9F6D: 90        .byte $90   ; 03
- D 0 - I - 0x00DF7E 03:9F6E: 91        .byte $91   ; 04
- D 0 - I - 0x00DF7F 03:9F6F: 92        .byte $92   ; 05
- D 0 - I - 0x00DF80 03:9F70: A0        .byte $A0   ; 06
- D 0 - I - 0x00DF81 03:9F71: ED        .byte $ED   ; 07
- D 0 - I - 0x00DF82 03:9F72: EE        .byte $EE   ; 08
- D 0 - I - 0x00DF83 03:9F73: EF        .byte $EF   ; 09
- D 0 - I - 0x00DF84 03:9F74: B0        .byte $B0   ; 0A
- D 0 - I - 0x00DF85 03:9F75: CB        .byte $CB   ; 0B
- D 0 - I - 0x00DF86 03:9F76: DF        .byte $DF   ; 0C
- D 0 - I - 0x00DF87 03:9F77: C0        .byte $C0   ; 0D
- D 0 - I - 0x00DF88 03:9F78: C1        .byte $C1   ; 0E
- D 0 - I - 0x00DF89 03:9F79: C2        .byte $C2   ; 0F
- D 0 - I - 0x00DF8A 03:9F7A: D0        .byte $D0   ; 10
- D 0 - I - 0x00DF8B 03:9F7B: D2        .byte $D2   ; 11



off_02_9F7C_00_spr_A:
- D 0 - I - 0x00DF8C 03:9F7C: 02        .byte $02   ; 01
- D 0 - I - 0x00DF8D 03:9F7D: 02        .byte $02   ; 02
- D 0 - I - 0x00DF8E 03:9F7E: 00        .byte $00   ; 03
- D 0 - I - 0x00DF8F 03:9F7F: 02        .byte $02   ; 04
- D 0 - I - 0x00DF90 03:9F80: 00        .byte $00   ; 05
- D 0 - I - 0x00DF91 03:9F81: 00        .byte $00   ; 06
- D 0 - I - 0x00DF92 03:9F82: 00        .byte $00   ; 07
- D 0 - I - 0x00DF93 03:9F83: 00        .byte $00   ; 08
- D 0 - I - 0x00DF94 03:9F84: 00        .byte $00   ; 09
- D 0 - I - 0x00DF95 03:9F85: 00        .byte $00   ; 0A
- D 0 - I - 0x00DF96 03:9F86: 00        .byte $00   ; 0B
- D 0 - I - 0x00DF97 03:9F87: 00        .byte $00   ; 0C
- D 0 - I - 0x00DF98 03:9F88: 03        .byte $03   ; 0D
- D 0 - I - 0x00DF99 03:9F89: 03        .byte $03   ; 0E
- D 0 - I - 0x00DF9A 03:9F8A: 03        .byte $03   ; 0F
- D 0 - I - 0x00DF9B 03:9F8B: 01        .byte $01   ; 10
- D 0 - I - 0x00DF9C 03:9F8C: 01        .byte $01   ; 11



off_02_9F8D_02_spr_XY:
- D 0 - I - 0x00DF9D 03:9F8D: FD        .byte $FD, $2C   ; 01
- D 0 - I - 0x00DF9F 03:9F8F: 05        .byte $05, $2C   ; 02
- D 0 - I - 0x00DFA1 03:9F91: FD        .byte $FD, $24   ; 03
- D 0 - I - 0x00DFA3 03:9F93: 05        .byte $05, $24   ; 04
- D 0 - I - 0x00DFA5 03:9F95: 0D        .byte $0D, $24   ; 05
- D 0 - I - 0x00DFA7 03:9F97: FC        .byte $FC, $1C   ; 06
- D 0 - I - 0x00DFA9 03:9F99: 04        .byte $04, $1C   ; 07
- D 0 - I - 0x00DFAB 03:9F9B: 0C        .byte $0C, $1C   ; 08
- D 0 - I - 0x00DFAD 03:9F9D: 14        .byte $14, $1C   ; 09
- D 0 - I - 0x00DFAF 03:9F9F: F9        .byte $F9, $14   ; 0A
- D 0 - I - 0x00DFB1 03:9FA1: 01        .byte $01, $14   ; 0B
- D 0 - I - 0x00DFB3 03:9FA3: 09        .byte $09, $14   ; 0C
- D 0 - I - 0x00DFB5 03:9FA5: F9        .byte $F9, $0C   ; 0D
- D 0 - I - 0x00DFB7 03:9FA7: 01        .byte $01, $0C   ; 0E
- D 0 - I - 0x00DFB9 03:9FA9: 09        .byte $09, $0C   ; 0F
- D 0 - I - 0x00DFBB 03:9FAB: F8        .byte $F8, $04   ; 10
- D 0 - I - 0x00DFBD 03:9FAD: 09        .byte $09, $04   ; 11



_off030_9FAF_0D:
_off030_9FAF_0F:
- D 0 - I - 0x00DFBF 03:9FAF: 02        .byte con_sub_02, $13   ; 
- D 0 - I - 0x00DFC1 03:9FB1: CB 9F     .word off_02_9FCB_00_spr_A
- D 0 - I - 0x00DFC3 03:9FB3: B8 9F     .word off_02_9FB8_01_spr_T
- D 0 - I - 0x00DFC5 03:9FB5: DE 9F     .word off_02_9FDE_02_spr_XY
- D 0 - I - 0x00DFC7 03:9FB7: 00        .byte con_sub_00   ; 



off_02_9FB8_01_spr_T:
- D 0 - I - 0x00DFC8 03:9FB8: 82        .byte $82   ; 01
- D 0 - I - 0x00DFC9 03:9FB9: 85        .byte $85   ; 02
- D 0 - I - 0x00DFCA 03:9FBA: FE        .byte $FE   ; 03
- D 0 - I - 0x00DFCB 03:9FBB: FD        .byte $FD   ; 04
- D 0 - I - 0x00DFCC 03:9FBC: AF        .byte $AF   ; 05
- D 0 - I - 0x00DFCD 03:9FBD: 8B        .byte $8B   ; 06
- D 0 - I - 0x00DFCE 03:9FBE: FB        .byte $FB   ; 07
- D 0 - I - 0x00DFCF 03:9FBF: FC        .byte $FC   ; 08
- D 0 - I - 0x00DFD0 03:9FC0: 9E        .byte $9E   ; 09
- D 0 - I - 0x00DFD1 03:9FC1: 9F        .byte $9F   ; 0A
- D 0 - I - 0x00DFD2 03:9FC2: 9B        .byte $9B   ; 0B
- D 0 - I - 0x00DFD3 03:9FC3: CD        .byte $CD   ; 0C
- D 0 - I - 0x00DFD4 03:9FC4: CE        .byte $CE   ; 0D
- D 0 - I - 0x00DFD5 03:9FC5: CF        .byte $CF   ; 0E
- D 0 - I - 0x00DFD6 03:9FC6: C0        .byte $C0   ; 0F
- D 0 - I - 0x00DFD7 03:9FC7: C1        .byte $C1   ; 10
- D 0 - I - 0x00DFD8 03:9FC8: C2        .byte $C2   ; 11
- D 0 - I - 0x00DFD9 03:9FC9: D0        .byte $D0   ; 12
- D 0 - I - 0x00DFDA 03:9FCA: D2        .byte $D2   ; 13



off_02_9FCB_00_spr_A:
- D 0 - I - 0x00DFDB 03:9FCB: 02        .byte $02   ; 01
- D 0 - I - 0x00DFDC 03:9FCC: 02        .byte $02   ; 02
- D 0 - I - 0x00DFDD 03:9FCD: C0        .byte $C0   ; 03
- D 0 - I - 0x00DFDE 03:9FCE: 00        .byte $00   ; 04
- D 0 - I - 0x00DFDF 03:9FCF: 00        .byte $00   ; 05
- D 0 - I - 0x00DFE0 03:9FD0: 00        .byte $00   ; 06
- D 0 - I - 0x00DFE1 03:9FD1: 00        .byte $00   ; 07
- D 0 - I - 0x00DFE2 03:9FD2: C0        .byte $C0   ; 08
- D 0 - I - 0x00DFE3 03:9FD3: 00        .byte $00   ; 09
- D 0 - I - 0x00DFE4 03:9FD4: 00        .byte $00   ; 0A
- D 0 - I - 0x00DFE5 03:9FD5: 00        .byte $00   ; 0B
- D 0 - I - 0x00DFE6 03:9FD6: 00        .byte $00   ; 0C
- D 0 - I - 0x00DFE7 03:9FD7: 00        .byte $00   ; 0D
- D 0 - I - 0x00DFE8 03:9FD8: 00        .byte $00   ; 0E
- D 0 - I - 0x00DFE9 03:9FD9: 03        .byte $03   ; 0F
- D 0 - I - 0x00DFEA 03:9FDA: 03        .byte $03   ; 10
- D 0 - I - 0x00DFEB 03:9FDB: 03        .byte $03   ; 11
- D 0 - I - 0x00DFEC 03:9FDC: 01        .byte $01   ; 12
- D 0 - I - 0x00DFED 03:9FDD: 01        .byte $01   ; 13



off_02_9FDE_02_spr_XY:
- D 0 - I - 0x00DFEE 03:9FDE: F4        .byte $F4, $2C   ; 01
- D 0 - I - 0x00DFF0 03:9FE0: FC        .byte $FC, $2C   ; 02
- D 0 - I - 0x00DFF2 03:9FE2: EC        .byte $EC, $26   ; 03
- D 0 - I - 0x00DFF4 03:9FE4: F4        .byte $F4, $24   ; 04
- D 0 - I - 0x00DFF6 03:9FE6: FC        .byte $FC, $24   ; 05
- D 0 - I - 0x00DFF8 03:9FE8: 04        .byte $04, $24   ; 06
- D 0 - I - 0x00DFFA 03:9FEA: E4        .byte $E4, $21   ; 07
- D 0 - I - 0x00DFFC 03:9FEC: EC        .byte $EC, $1E   ; 08
- D 0 - I - 0x00DFFE 03:9FEE: F4        .byte $F4, $1C   ; 09
- D 0 - I - 0x00E000 03:9FF0: FC        .byte $FC, $1C   ; 0A
- D 0 - I - 0x00E002 03:9FF2: 04        .byte $04, $1C   ; 0B
- D 0 - I - 0x00E004 03:9FF4: F7        .byte $F7, $14   ; 0C
- D 0 - I - 0x00E006 03:9FF6: FF        .byte $FF, $14   ; 0D
- D 0 - I - 0x00E008 03:9FF8: 07        .byte $07, $14   ; 0E
- D 0 - I - 0x00E00A 03:9FFA: F8        .byte $F8, $0C   ; 0F
- D 0 - I - 0x00E00C 03:9FFC: 00        .byte $00, $0C   ; 10
- D 0 - I - 0x00E00E 03:9FFE: 08        .byte $08, $0C   ; 11
- D 1 - I - 0x00E010 03:A000: F8        .byte $F8, $04   ; 12
- D 1 - I - 0x00E012 03:A002: 09        .byte $09, $04   ; 13



sub_06_A004_01:
- - - - - - 0x00E014 03:A004: 02        .byte con_sub_02, $0A   ; 
- - - - - - 0x00E016 03:A006: 2A A0     .word off_02_A02A_00_spr_A
- - - - - - 0x00E018 03:A008: 16 A0     .word off_02_A016_01_spr_T
- - - - - - 0x00E01A 03:A00A: 34 A0     .word off_02_A034_02_spr_XY
- - - - - - 0x00E01C 03:A00C: 00        .byte con_sub_00   ; 



sub_06_A00D_00:
- D 1 - I - 0x00E01D 03:A00D: 02        .byte con_sub_02, $0A   ; 
- D 1 - I - 0x00E01F 03:A00F: 20 A0     .word off_02_A020_00_spr_A
- D 1 - I - 0x00E021 03:A011: 16 A0     .word off_02_A016_01_spr_T
- D 1 - I - 0x00E023 03:A013: 34 A0     .word off_02_A034_02_spr_XY
- D 1 - I - 0x00E025 03:A015: 00        .byte con_sub_00   ; 



off_02_A016_01_spr_T:
- D 1 - I - 0x00E026 03:A016: 8C        .byte $8C   ; 01
- D 1 - I - 0x00E027 03:A017: 8D        .byte $8D   ; 02
- D 1 - I - 0x00E028 03:A018: 46        .byte $46   ; 03
- D 1 - I - 0x00E029 03:A019: 9D        .byte $9D   ; 04
- D 1 - I - 0x00E02A 03:A01A: DC        .byte $DC   ; 05
- D 1 - I - 0x00E02B 03:A01B: 20        .byte $20   ; 06
- D 1 - I - 0x00E02C 03:A01C: 61        .byte $61   ; 07
- D 1 - I - 0x00E02D 03:A01D: 60        .byte $60   ; 08
- D 1 - I - 0x00E02E 03:A01E: 71        .byte $71   ; 09
- D 1 - I - 0x00E02F 03:A01F: 70        .byte $70   ; 0A



off_02_A020_00_spr_A:
- D 1 - I - 0x00E030 03:A020: 00        .byte $00   ; 01
- D 1 - I - 0x00E031 03:A021: 00        .byte $00   ; 02
- D 1 - I - 0x00E032 03:A022: 00        .byte $00   ; 03
- D 1 - I - 0x00E033 03:A023: 00        .byte $00   ; 04
- D 1 - I - 0x00E034 03:A024: 00        .byte $00   ; 05
- D 1 - I - 0x00E035 03:A025: 41        .byte $41   ; 06
- D 1 - I - 0x00E036 03:A026: 41        .byte $41   ; 07
- D 1 - I - 0x00E037 03:A027: 41        .byte $41   ; 08
- D 1 - I - 0x00E038 03:A028: 40        .byte $40   ; 09
- D 1 - I - 0x00E039 03:A029: 40        .byte $40   ; 0A



off_02_A02A_00_spr_A:
- - - - - - 0x00E03A 03:A02A: 00        .byte $00   ; 01
- - - - - - 0x00E03B 03:A02B: 00        .byte $00   ; 02
- - - - - - 0x00E03C 03:A02C: 00        .byte $00   ; 03
- - - - - - 0x00E03D 03:A02D: 00        .byte $00   ; 04
- - - - - - 0x00E03E 03:A02E: 00        .byte $00   ; 05
- - - - - - 0x00E03F 03:A02F: 40        .byte $40   ; 06
- - - - - - 0x00E040 03:A030: 40        .byte $40   ; 07
- - - - - - 0x00E041 03:A031: 40        .byte $40   ; 08
- - - - - - 0x00E042 03:A032: 40        .byte $40   ; 09
- - - - - - 0x00E043 03:A033: 40        .byte $40   ; 0A



off_02_A034_02_spr_XY:
- D 1 - I - 0x00E044 03:A034: E7        .byte $E7, $2C   ; 01
- D 1 - I - 0x00E046 03:A036: EF        .byte $EF, $2C   ; 02
- D 1 - I - 0x00E048 03:A038: E7        .byte $E7, $24   ; 03
- D 1 - I - 0x00E04A 03:A03A: EF        .byte $EF, $24   ; 04
- D 1 - I - 0x00E04C 03:A03C: E7        .byte $E7, $1C   ; 05
- D 1 - I - 0x00E04E 03:A03E: EF        .byte $EF, $1C   ; 06
- D 1 - I - 0x00E050 03:A040: E7        .byte $E7, $14   ; 07
- D 1 - I - 0x00E052 03:A042: EF        .byte $EF, $14   ; 08
- D 1 - I - 0x00E054 03:A044: E7        .byte $E7, $0C   ; 09
- D 1 - I - 0x00E056 03:A046: EF        .byte $EF, $0C   ; 0A


; bzk garbage
- - - - - - 0x00E058 03:A048: 04        .byte $04, $05   ; 
- - - - - - 0x00E05A 03:A04A: 09        .byte $09, $5B   ; 
- - - - - - 0x00E05C 03:A04C: A0        .byte $A0, $60   ; 
- - - - - - 0x00E05E 03:A04E: A0        .byte $A0, $65   ; 
- - - - - - 0x00E060 03:A050: A0        .byte $A0, $56   ; 
- - - - - - 0x00E062 03:A052: A0        .byte $A0, $6A   ; 
- - - - - - 0x00E064 03:A054: A0        .byte $A0, $00   ; 
- - - - - - 0x00E066 03:A056: E0        .byte $E0, $E1   ; 
- - - - - - 0x00E068 03:A058: E2        .byte $E2, $D0   ; 
- - - - - - 0x00E06A 03:A05A: D2        .byte $D2, $03   ; 
- - - - - - 0x00E06C 03:A05C: 03        .byte $03, $03   ; 
- - - - - - 0x00E06E 03:A05E: 01        .byte $01, $01   ; 
- - - - - - 0x00E070 03:A060: 03        .byte $03, $03   ; 
- - - - - - 0x00E072 03:A062: 03        .byte $03, $00   ; 
- - - - - - 0x00E074 03:A064: 00        .byte $00, $03   ; 
- - - - - - 0x00E076 03:A066: 03        .byte $03, $03   ; 
- - - - - - 0x00E078 03:A068: 02        .byte $02, $02   ; 
- - - - - - 0x00E07A 03:A06A: F6        .byte $F6, $0C   ; 
- - - - - - 0x00E07C 03:A06C: FE        .byte $FE, $0C   ; 
- - - - - - 0x00E07E 03:A06E: 06        .byte $06, $0C   ; 
- - - - - - 0x00E080 03:A070: F9        .byte $F9, $04   ; 
- - - - - - 0x00E082 03:A072: 05        .byte $05, $04   ; 



sub_06_A074_01:
- - - - - - 0x00E084 03:A074: 02        .byte con_sub_02, $06   ; 
- - - - - - 0x00E086 03:A076: 92 A0     .word off_02_A092_00_spr_A
- - - - - - 0x00E088 03:A078: 86 A0     .word off_02_A086_01_spr_T
- - - - - - 0x00E08A 03:A07A: 98 A0     .word off_02_A098_02_spr_XY
- - - - - - 0x00E08C 03:A07C: 00        .byte con_sub_00   ; 



sub_06_A07D_00:
- D 1 - I - 0x00E08D 03:A07D: 02        .byte con_sub_02, $06   ; 
- D 1 - I - 0x00E08F 03:A07F: 8C A0     .word off_02_A08C_00_spr_A
- D 1 - I - 0x00E091 03:A081: 86 A0     .word off_02_A086_01_spr_T
- D 1 - I - 0x00E093 03:A083: 98 A0     .word off_02_A098_02_spr_XY
- D 1 - I - 0x00E095 03:A085: 00        .byte con_sub_00   ; 



off_02_A086_01_spr_T:
- D 1 - I - 0x00E096 03:A086: 8C        .byte $8C   ; 01
- D 1 - I - 0x00E097 03:A087: BC        .byte $BC   ; 02
- D 1 - I - 0x00E098 03:A088: BE        .byte $BE   ; 03
- D 1 - I - 0x00E099 03:A089: 61        .byte $61   ; 04
- D 1 - I - 0x00E09A 03:A08A: 60        .byte $60   ; 05
- D 1 - I - 0x00E09B 03:A08B: 40        .byte $40   ; 06



off_02_A08C_00_spr_A:
- D 1 - I - 0x00E09C 03:A08C: 00        .byte $00   ; 01
- D 1 - I - 0x00E09D 03:A08D: 00        .byte $00   ; 02
- D 1 - I - 0x00E09E 03:A08E: 00        .byte $00   ; 03
- D 1 - I - 0x00E09F 03:A08F: 41        .byte $41   ; 04
- D 1 - I - 0x00E0A0 03:A090: 41        .byte $41   ; 05
- D 1 - I - 0x00E0A1 03:A091: 40        .byte $40   ; 06



off_02_A092_00_spr_A:
- - - - - - 0x00E0A2 03:A092: 00        .byte $00   ; 01
- - - - - - 0x00E0A3 03:A093: 00        .byte $00   ; 02
- - - - - - 0x00E0A4 03:A094: 00        .byte $00   ; 03
- - - - - - 0x00E0A5 03:A095: 40        .byte $40   ; 04
- - - - - - 0x00E0A6 03:A096: 40        .byte $40   ; 05
- - - - - - 0x00E0A7 03:A097: 40        .byte $40   ; 06



off_02_A098_02_spr_XY:
- D 1 - I - 0x00E0A8 03:A098: E9        .byte $E9, $2D   ; 01
- D 1 - I - 0x00E0AA 03:A09A: E7        .byte $E7, $25   ; 02
- D 1 - I - 0x00E0AC 03:A09C: E6        .byte $E6, $1D   ; 03
- D 1 - I - 0x00E0AE 03:A09E: E6        .byte $E6, $15   ; 04
- D 1 - I - 0x00E0B0 03:A0A0: EE        .byte $EE, $15   ; 05
- D 1 - I - 0x00E0B2 03:A0A2: ED        .byte $ED, $0D   ; 06



_off030_A0A4_05:
- - - - - - 0x00E0B4 03:A0A4: 02        .byte con_sub_02, $0F   ; 
- - - - - - 0x00E0B6 03:A0A6: BC A0     .word off_02_A0BC_00_spr_A
- - - - - - 0x00E0B8 03:A0A8: AD A0     .word off_02_A0AD_01_spr_T
- - - - - - 0x00E0BA 03:A0AA: CB A0     .word off_02_A0CB_02_spr_XY
- - - - - - 0x00E0BC 03:A0AC: 00        .byte con_sub_00   ; 



off_02_A0AD_01_spr_T:
- - - - - - 0x00E0BD 03:A0AD: 80        .byte $80   ; 01
- - - - - - 0x00E0BE 03:A0AE: 81        .byte $81   ; 02
- - - - - - 0x00E0BF 03:A0AF: 90        .byte $90   ; 03
- - - - - - 0x00E0C0 03:A0B0: 91        .byte $91   ; 04
- - - - - - 0x00E0C1 03:A0B1: 92        .byte $92   ; 05
- - - - - - 0x00E0C2 03:A0B2: A0        .byte $A0   ; 06
- - - - - - 0x00E0C3 03:A0B3: A1        .byte $A1   ; 07
- - - - - - 0x00E0C4 03:A0B4: A2        .byte $A2   ; 08
- - - - - - 0x00E0C5 03:A0B5: D8        .byte $D8   ; 09
- - - - - - 0x00E0C6 03:A0B6: D9        .byte $D9   ; 0A
- - - - - - 0x00E0C7 03:A0B7: B2        .byte $B2   ; 0B
- - - - - - 0x00E0C8 03:A0B8: E8        .byte $E8   ; 0C
- - - - - - 0x00E0C9 03:A0B9: E9        .byte $E9   ; 0D
- - - - - - 0x00E0CA 03:A0BA: EA        .byte $EA   ; 0E
- - - - - - 0x00E0CB 03:A0BB: D2        .byte $D2   ; 0F



off_02_A0BC_00_spr_A:
- - - - - - 0x00E0CC 03:A0BC: 02        .byte $02   ; 01
- - - - - - 0x00E0CD 03:A0BD: 02        .byte $02   ; 02
- - - - - - 0x00E0CE 03:A0BE: 00        .byte $00   ; 03
- - - - - - 0x00E0CF 03:A0BF: 02        .byte $02   ; 04
- - - - - - 0x00E0D0 03:A0C0: 00        .byte $00   ; 05
- - - - - - 0x00E0D1 03:A0C1: 00        .byte $00   ; 06
- - - - - - 0x00E0D2 03:A0C2: 00        .byte $00   ; 07
- - - - - - 0x00E0D3 03:A0C3: 00        .byte $00   ; 08
- - - - - - 0x00E0D4 03:A0C4: 03        .byte $03   ; 09
- - - - - - 0x00E0D5 03:A0C5: 00        .byte $00   ; 0A
- - - - - - 0x00E0D6 03:A0C6: 00        .byte $00   ; 0B
- - - - - - 0x00E0D7 03:A0C7: 03        .byte $03   ; 0C
- - - - - - 0x00E0D8 03:A0C8: 03        .byte $03   ; 0D
- - - - - - 0x00E0D9 03:A0C9: 03        .byte $03   ; 0E
- - - - - - 0x00E0DA 03:A0CA: 01        .byte $01   ; 0F



off_02_A0CB_02_spr_XY:
- D 1 - I - 0x00E0DB 03:A0CB: F8        .byte $F8, $2C   ; 01
- D 1 - I - 0x00E0DD 03:A0CD: 00        .byte $00, $2C   ; 02
- D 1 - I - 0x00E0DF 03:A0CF: F8        .byte $F8, $24   ; 03
- D 1 - I - 0x00E0E1 03:A0D1: 00        .byte $00, $24   ; 04
- D 1 - I - 0x00E0E3 03:A0D3: 08        .byte $08, $24   ; 05
- D 1 - I - 0x00E0E5 03:A0D5: F8        .byte $F8, $1C   ; 06
- D 1 - I - 0x00E0E7 03:A0D7: 00        .byte $00, $1C   ; 07
- D 1 - I - 0x00E0E9 03:A0D9: 08        .byte $08, $1C   ; 08
- D 1 - I - 0x00E0EB 03:A0DB: F8        .byte $F8, $14   ; 09
- D 1 - I - 0x00E0ED 03:A0DD: 00        .byte $00, $14   ; 0A
- D 1 - I - 0x00E0EF 03:A0DF: 08        .byte $08, $14   ; 0B
- D 1 - I - 0x00E0F1 03:A0E1: F8        .byte $F8, $0C   ; 0C
- D 1 - I - 0x00E0F3 03:A0E3: 00        .byte $00, $0C   ; 0D
- D 1 - I - 0x00E0F5 03:A0E5: 08        .byte $08, $0C   ; 0E
- D 1 - I - 0x00E0F7 03:A0E7: 00        .byte $00, $04   ; 0F



_off030_A0E9_09:
- D 1 - I - 0x00E0F9 03:A0E9: 02        .byte con_sub_02, $10   ; 
- D 1 - I - 0x00E0FB 03:A0EB: 02 A1     .word off_02_A102_00_spr_A
- D 1 - I - 0x00E0FD 03:A0ED: F2 A0     .word off_02_A0F2_01_spr_T
- D 1 - I - 0x00E0FF 03:A0EF: 12 A1     .word off_02_A112_02_spr_XY
- D 1 - I - 0x00E101 03:A0F1: 00        .byte con_sub_00   ; 



off_02_A0F2_01_spr_T:
- D 1 - I - 0x00E102 03:A0F2: 82        .byte $82   ; 01
- D 1 - I - 0x00E103 03:A0F3: 85        .byte $85   ; 02
- D 1 - I - 0x00E104 03:A0F4: F1        .byte $F1   ; 03
- D 1 - I - 0x00E105 03:A0F5: C5        .byte $C5   ; 04
- D 1 - I - 0x00E106 03:A0F6: C6        .byte $C6   ; 05
- D 1 - I - 0x00E107 03:A0F7: DB        .byte $DB   ; 06
- D 1 - I - 0x00E108 03:A0F8: B8        .byte $B8   ; 07
- D 1 - I - 0x00E109 03:A0F9: B9        .byte $B9   ; 08
- D 1 - I - 0x00E10A 03:A0FA: EB        .byte $EB   ; 09
- D 1 - I - 0x00E10B 03:A0FB: C8        .byte $C8   ; 0A
- D 1 - I - 0x00E10C 03:A0FC: C9        .byte $C9   ; 0B
- D 1 - I - 0x00E10D 03:A0FD: C0        .byte $C0   ; 0C
- D 1 - I - 0x00E10E 03:A0FE: C1        .byte $C1   ; 0D
- D 1 - I - 0x00E10F 03:A0FF: C2        .byte $C2   ; 0E
- D 1 - I - 0x00E110 03:A100: D2        .byte $D2   ; 0F
- D 1 - I - 0x00E111 03:A101: D2        .byte $D2   ; 10



off_02_A102_00_spr_A:
- D 1 - I - 0x00E112 03:A102: 02        .byte $02   ; 01
- D 1 - I - 0x00E113 03:A103: 02        .byte $02   ; 02
- D 1 - I - 0x00E114 03:A104: 02        .byte $02   ; 03
- D 1 - I - 0x00E115 03:A105: 02        .byte $02   ; 04
- D 1 - I - 0x00E116 03:A106: 00        .byte $00   ; 05
- D 1 - I - 0x00E117 03:A107: 00        .byte $00   ; 06
- D 1 - I - 0x00E118 03:A108: 00        .byte $00   ; 07
- D 1 - I - 0x00E119 03:A109: 00        .byte $00   ; 08
- D 1 - I - 0x00E11A 03:A10A: 00        .byte $00   ; 09
- D 1 - I - 0x00E11B 03:A10B: 00        .byte $00   ; 0A
- D 1 - I - 0x00E11C 03:A10C: 00        .byte $00   ; 0B
- D 1 - I - 0x00E11D 03:A10D: 03        .byte $03   ; 0C
- D 1 - I - 0x00E11E 03:A10E: 03        .byte $03   ; 0D
- D 1 - I - 0x00E11F 03:A10F: 03        .byte $03   ; 0E
- D 1 - I - 0x00E120 03:A110: 01        .byte $01   ; 0F
- D 1 - I - 0x00E121 03:A111: 01        .byte $01   ; 10



off_02_A112_02_spr_XY:
- D 1 - I - 0x00E122 03:A112: F2        .byte $F2, $2C   ; 01
- D 1 - I - 0x00E124 03:A114: FA        .byte $FA, $2C   ; 02
- D 1 - I - 0x00E126 03:A116: F4        .byte $F4, $24   ; 03
- D 1 - I - 0x00E128 03:A118: FC        .byte $FC, $24   ; 04
- D 1 - I - 0x00E12A 03:A11A: 04        .byte $04, $24   ; 05
- D 1 - I - 0x00E12C 03:A11C: F8        .byte $F8, $1C   ; 06
- D 1 - I - 0x00E12E 03:A11E: 00        .byte $00, $1C   ; 07
- D 1 - I - 0x00E130 03:A120: 08        .byte $08, $1C   ; 08
- D 1 - I - 0x00E132 03:A122: F8        .byte $F8, $14   ; 09
- D 1 - I - 0x00E134 03:A124: 00        .byte $00, $14   ; 0A
- D 1 - I - 0x00E136 03:A126: 08        .byte $08, $14   ; 0B
- D 1 - I - 0x00E138 03:A128: F9        .byte $F9, $0C   ; 0C
- D 1 - I - 0x00E13A 03:A12A: 01        .byte $01, $0C   ; 0D
- D 1 - I - 0x00E13C 03:A12C: 09        .byte $09, $0C   ; 0E
- D 1 - I - 0x00E13E 03:A12E: FB        .byte $FB, $04   ; 0F
- D 1 - I - 0x00E140 03:A130: 0A        .byte $0A, $04   ; 10



_off030_A132_06:
- D 1 - I - 0x00E142 03:A132: 02        .byte con_sub_02, $0E   ; 
- D 1 - I - 0x00E144 03:A134: 49 A1     .word off_02_A149_00_spr_A
- D 1 - I - 0x00E146 03:A136: 3B A1     .word off_02_A13B_01_spr_T
- D 1 - I - 0x00E148 03:A138: 57 A1     .word off_02_A157_02_spr_XY
- D 1 - I - 0x00E14A 03:A13A: 00        .byte con_sub_00   ; 



off_02_A13B_01_spr_T:
- D 1 - I - 0x00E14B 03:A13B: 80        .byte $80   ; 01
- D 1 - I - 0x00E14C 03:A13C: 81        .byte $81   ; 02
- D 1 - I - 0x00E14D 03:A13D: 90        .byte $90   ; 03
- D 1 - I - 0x00E14E 03:A13E: 91        .byte $91   ; 04
- D 1 - I - 0x00E14F 03:A13F: 92        .byte $92   ; 05
- D 1 - I - 0x00E150 03:A140: A0        .byte $A0   ; 06
- D 1 - I - 0x00E151 03:A141: A1        .byte $A1   ; 07
- D 1 - I - 0x00E152 03:A142: A2        .byte $A2   ; 08
- D 1 - I - 0x00E153 03:A143: B6        .byte $B6   ; 09
- D 1 - I - 0x00E154 03:A144: B7        .byte $B7   ; 0A
- D 1 - I - 0x00E155 03:A145: B2        .byte $B2   ; 0B
- D 1 - I - 0x00E156 03:A146: D0        .byte $D0   ; 0C
- D 1 - I - 0x00E157 03:A147: C7        .byte $C7   ; 0D
- D 1 - I - 0x00E158 03:A148: DE        .byte $DE   ; 0E



off_02_A149_00_spr_A:
- D 1 - I - 0x00E159 03:A149: 02        .byte $02   ; 01
- D 1 - I - 0x00E15A 03:A14A: 02        .byte $02   ; 02
- D 1 - I - 0x00E15B 03:A14B: 00        .byte $00   ; 03
- D 1 - I - 0x00E15C 03:A14C: 02        .byte $02   ; 04
- D 1 - I - 0x00E15D 03:A14D: 00        .byte $00   ; 05
- D 1 - I - 0x00E15E 03:A14E: 00        .byte $00   ; 06
- D 1 - I - 0x00E15F 03:A14F: 00        .byte $00   ; 07
- D 1 - I - 0x00E160 03:A150: 00        .byte $00   ; 08
- D 1 - I - 0x00E161 03:A151: 03        .byte $03   ; 09
- D 1 - I - 0x00E162 03:A152: 00        .byte $00   ; 0A
- D 1 - I - 0x00E163 03:A153: 00        .byte $00   ; 0B
- D 1 - I - 0x00E164 03:A154: 01        .byte $01   ; 0C
- D 1 - I - 0x00E165 03:A155: 03        .byte $03   ; 0D
- D 1 - I - 0x00E166 03:A156: 03        .byte $03   ; 0E



off_02_A157_02_spr_XY:
- D 1 - I - 0x00E167 03:A157: F7        .byte $F7, $25   ; 01
- D 1 - I - 0x00E169 03:A159: FF        .byte $FF, $25   ; 02
- D 1 - I - 0x00E16B 03:A15B: F7        .byte $F7, $1D   ; 03
- D 1 - I - 0x00E16D 03:A15D: FF        .byte $FF, $1D   ; 04
- D 1 - I - 0x00E16F 03:A15F: 07        .byte $07, $1D   ; 05
- D 1 - I - 0x00E171 03:A161: F7        .byte $F7, $15   ; 06
- D 1 - I - 0x00E173 03:A163: FF        .byte $FF, $15   ; 07
- D 1 - I - 0x00E175 03:A165: 07        .byte $07, $15   ; 08
- D 1 - I - 0x00E177 03:A167: F7        .byte $F7, $0D   ; 09
- D 1 - I - 0x00E179 03:A169: FF        .byte $FF, $0D   ; 0A
- D 1 - I - 0x00E17B 03:A16B: 07        .byte $07, $0D   ; 0B
- D 1 - I - 0x00E17D 03:A16D: F7        .byte $F7, $05   ; 0C
- D 1 - I - 0x00E17F 03:A16F: FF        .byte $FF, $05   ; 0D
- D 1 - I - 0x00E181 03:A171: 07        .byte $07, $05   ; 0E



_off030_A173_08:
- D 1 - I - 0x00E183 03:A173: 02        .byte con_sub_02, $0F   ; 
- D 1 - I - 0x00E185 03:A175: 8B A1     .word off_02_A18B_00_spr_A
- D 1 - I - 0x00E187 03:A177: 7C A1     .word off_02_A17C_01_spr_T
- D 1 - I - 0x00E189 03:A179: 9A A1     .word off_02_A19A_02_spr_XY
- D 1 - I - 0x00E18B 03:A17B: 00        .byte con_sub_00   ; 



off_02_A17C_01_spr_T:
- D 1 - I - 0x00E18C 03:A17C: C3        .byte $C3   ; 01
- D 1 - I - 0x00E18D 03:A17D: C4        .byte $C4   ; 02
- D 1 - I - 0x00E18E 03:A17E: D3        .byte $D3   ; 03
- D 1 - I - 0x00E18F 03:A17F: D4        .byte $D4   ; 04
- D 1 - I - 0x00E190 03:A180: 92        .byte $92   ; 05
- D 1 - I - 0x00E191 03:A181: A0        .byte $A0   ; 06
- D 1 - I - 0x00E192 03:A182: A1        .byte $A1   ; 07
- D 1 - I - 0x00E193 03:A183: A2        .byte $A2   ; 08
- D 1 - I - 0x00E194 03:A184: F0        .byte $F0   ; 09
- D 1 - I - 0x00E195 03:A185: B1        .byte $B1   ; 0A
- D 1 - I - 0x00E196 03:A186: F2        .byte $F2   ; 0B
- D 1 - I - 0x00E197 03:A187: 83        .byte $83   ; 0C
- D 1 - I - 0x00E198 03:A188: 84        .byte $84   ; 0D
- D 1 - I - 0x00E199 03:A189: 93        .byte $93   ; 0E
- D 1 - I - 0x00E19A 03:A18A: 94        .byte $94   ; 0F



off_02_A18B_00_spr_A:
- D 1 - I - 0x00E19B 03:A18B: 02        .byte $02   ; 01
- D 1 - I - 0x00E19C 03:A18C: 02        .byte $02   ; 02
- D 1 - I - 0x00E19D 03:A18D: 02        .byte $02   ; 03
- D 1 - I - 0x00E19E 03:A18E: 02        .byte $02   ; 04
- D 1 - I - 0x00E19F 03:A18F: 00        .byte $00   ; 05
- D 1 - I - 0x00E1A0 03:A190: 00        .byte $00   ; 06
- D 1 - I - 0x00E1A1 03:A191: 00        .byte $00   ; 07
- D 1 - I - 0x00E1A2 03:A192: 00        .byte $00   ; 08
- D 1 - I - 0x00E1A3 03:A193: 00        .byte $00   ; 09
- D 1 - I - 0x00E1A4 03:A194: 00        .byte $00   ; 0A
- D 1 - I - 0x00E1A5 03:A195: 00        .byte $00   ; 0B
- D 1 - I - 0x00E1A6 03:A196: 03        .byte $03   ; 0C
- D 1 - I - 0x00E1A7 03:A197: 03        .byte $03   ; 0D
- D 1 - I - 0x00E1A8 03:A198: 01        .byte $01   ; 0E
- D 1 - I - 0x00E1A9 03:A199: 01        .byte $01   ; 0F



off_02_A19A_02_spr_XY:
- D 1 - I - 0x00E1AA 03:A19A: FD        .byte $FD, $2B   ; 01
- D 1 - I - 0x00E1AC 03:A19C: 05        .byte $05, $2B   ; 02
- D 1 - I - 0x00E1AE 03:A19E: FB        .byte $FB, $23   ; 03
- D 1 - I - 0x00E1B0 03:A1A0: 03        .byte $03, $23   ; 04
- D 1 - I - 0x00E1B2 03:A1A2: 0B        .byte $0B, $23   ; 05
- D 1 - I - 0x00E1B4 03:A1A4: FA        .byte $FA, $1B   ; 06
- D 1 - I - 0x00E1B6 03:A1A6: 02        .byte $02, $1B   ; 07
- D 1 - I - 0x00E1B8 03:A1A8: 0A        .byte $0A, $1B   ; 08
- D 1 - I - 0x00E1BA 03:A1AA: F9        .byte $F9, $13   ; 09
- D 1 - I - 0x00E1BC 03:A1AC: 01        .byte $01, $13   ; 0A
- D 1 - I - 0x00E1BE 03:A1AE: 09        .byte $09, $13   ; 0B
- D 1 - I - 0x00E1C0 03:A1B0: FA        .byte $FA, $0B   ; 0C
- D 1 - I - 0x00E1C2 03:A1B2: 02        .byte $02, $0B   ; 0D
- D 1 - I - 0x00E1C4 03:A1B4: FA        .byte $FA, $03   ; 0E
- D 1 - I - 0x00E1C6 03:A1B6: 02        .byte $02, $03   ; 0F



_off030_A1B8_0B:
- D 1 - I - 0x00E1C8 03:A1B8: 02        .byte con_sub_02, $0F   ; 
- D 1 - I - 0x00E1CA 03:A1BA: D0 A1     .word off_02_A1D0_00_spr_A
- D 1 - I - 0x00E1CC 03:A1BC: C1 A1     .word off_02_A1C1_01_spr_T
- D 1 - I - 0x00E1CE 03:A1BE: DF A1     .word off_02_A1DF_02_spr_XY
- D 1 - I - 0x00E1D0 03:A1C0: 00        .byte con_sub_00   ; 



off_02_A1C1_01_spr_T:
- D 1 - I - 0x00E1D1 03:A1C1: 86        .byte $86   ; 01
- D 1 - I - 0x00E1D2 03:A1C2: C3        .byte $C3   ; 02
- D 1 - I - 0x00E1D3 03:A1C3: C4        .byte $C4   ; 03
- D 1 - I - 0x00E1D4 03:A1C4: 95        .byte $95   ; 04
- D 1 - I - 0x00E1D5 03:A1C5: 96        .byte $96   ; 05
- D 1 - I - 0x00E1D6 03:A1C6: 97        .byte $97   ; 06
- D 1 - I - 0x00E1D7 03:A1C7: 98        .byte $98   ; 07
- D 1 - I - 0x00E1D8 03:A1C8: 88        .byte $88   ; 08
- D 1 - I - 0x00E1D9 03:A1C9: A5        .byte $A5   ; 09
- D 1 - I - 0x00E1DA 03:A1CA: A6        .byte $A6   ; 0A
- D 1 - I - 0x00E1DB 03:A1CB: A7        .byte $A7   ; 0B
- D 1 - I - 0x00E1DC 03:A1CC: D0        .byte $D0   ; 0C
- D 1 - I - 0x00E1DD 03:A1CD: 87        .byte $87   ; 0D
- D 1 - I - 0x00E1DE 03:A1CE: B5        .byte $B5   ; 0E
- D 1 - I - 0x00E1DF 03:A1CF: D0        .byte $D0   ; 0F



off_02_A1D0_00_spr_A:
- D 1 - I - 0x00E1E0 03:A1D0: 02        .byte $02   ; 01
- D 1 - I - 0x00E1E1 03:A1D1: 02        .byte $02   ; 02
- D 1 - I - 0x00E1E2 03:A1D2: 02        .byte $02   ; 03
- D 1 - I - 0x00E1E3 03:A1D3: 00        .byte $00   ; 04
- D 1 - I - 0x00E1E4 03:A1D4: 00        .byte $00   ; 05
- D 1 - I - 0x00E1E5 03:A1D5: 02        .byte $02   ; 06
- D 1 - I - 0x00E1E6 03:A1D6: 02        .byte $02   ; 07
- D 1 - I - 0x00E1E7 03:A1D7: 03        .byte $03   ; 08
- D 1 - I - 0x00E1E8 03:A1D8: 00        .byte $00   ; 09
- D 1 - I - 0x00E1E9 03:A1D9: 00        .byte $00   ; 0A
- D 1 - I - 0x00E1EA 03:A1DA: 00        .byte $00   ; 0B
- D 1 - I - 0x00E1EB 03:A1DB: 01        .byte $01   ; 0C
- D 1 - I - 0x00E1EC 03:A1DC: 03        .byte $03   ; 0D
- D 1 - I - 0x00E1ED 03:A1DD: 03        .byte $03   ; 0E
- D 1 - I - 0x00E1EE 03:A1DE: 01        .byte $01   ; 0F



off_02_A1DF_02_spr_XY:
- D 1 - I - 0x00E1EF 03:A1DF: 0F        .byte $0F, $25   ; 01
- D 1 - I - 0x00E1F1 03:A1E1: 14        .byte $14, $25   ; 02
- D 1 - I - 0x00E1F3 03:A1E3: 1C        .byte $1C, $25   ; 03
- D 1 - I - 0x00E1F5 03:A1E5: 07        .byte $07, $1E   ; 04
- D 1 - I - 0x00E1F7 03:A1E7: 0F        .byte $0F, $1D   ; 05
- D 1 - I - 0x00E1F9 03:A1E9: 17        .byte $17, $1D   ; 06
- D 1 - I - 0x00E1FB 03:A1EB: 1F        .byte $1F, $1D   ; 07
- D 1 - I - 0x00E1FD 03:A1ED: FF        .byte $FF, $18   ; 08
- D 1 - I - 0x00E1FF 03:A1EF: 07        .byte $07, $16   ; 09
- D 1 - I - 0x00E201 03:A1F1: 0F        .byte $0F, $15   ; 0A
- D 1 - I - 0x00E203 03:A1F3: 17        .byte $17, $15   ; 0B
- D 1 - I - 0x00E205 03:A1F5: FE        .byte $FE, $10   ; 0C
- D 1 - I - 0x00E207 03:A1F7: 07        .byte $07, $0E   ; 0D
- D 1 - I - 0x00E209 03:A1F9: 0F        .byte $0F, $0D   ; 0E
- D 1 - I - 0x00E20B 03:A1FB: 06        .byte $06, $06   ; 0F



_off030_A1FD_0A:
- D 1 - I - 0x00E20D 03:A1FD: 02        .byte con_sub_02, $0E   ; 
- D 1 - I - 0x00E20F 03:A1FF: 14 A2     .word off_02_A214_00_spr_A
- D 1 - I - 0x00E211 03:A201: 06 A2     .word off_02_A206_01_spr_T
- D 1 - I - 0x00E213 03:A203: 22 A2     .word off_02_A222_02_spr_XY
- D 1 - I - 0x00E215 03:A205: 00        .byte con_sub_00   ; 



off_02_A206_01_spr_T:
- D 1 - I - 0x00E216 03:A206: F8        .byte $F8   ; 01
- D 1 - I - 0x00E217 03:A207: D7        .byte $D7   ; 02
- D 1 - I - 0x00E218 03:A208: D5        .byte $D5   ; 03
- D 1 - I - 0x00E219 03:A209: D6        .byte $D6   ; 04
- D 1 - I - 0x00E21A 03:A20A: E3        .byte $E3   ; 05
- D 1 - I - 0x00E21B 03:A20B: E4        .byte $E4   ; 06
- D 1 - I - 0x00E21C 03:A20C: E5        .byte $E5   ; 07
- D 1 - I - 0x00E21D 03:A20D: E6        .byte $E6   ; 08
- D 1 - I - 0x00E21E 03:A20E: E7        .byte $E7   ; 09
- D 1 - I - 0x00E21F 03:A20F: F3        .byte $F3   ; 0A
- D 1 - I - 0x00E220 03:A210: F4        .byte $F4   ; 0B
- D 1 - I - 0x00E221 03:A211: F5        .byte $F5   ; 0C
- D 1 - I - 0x00E222 03:A212: F6        .byte $F6   ; 0D
- D 1 - I - 0x00E223 03:A213: F7        .byte $F7   ; 0E



off_02_A214_00_spr_A:
- D 1 - I - 0x00E224 03:A214: 03        .byte $03   ; 01
- D 1 - I - 0x00E225 03:A215: 03        .byte $03   ; 02
- D 1 - I - 0x00E226 03:A216: 00        .byte $00   ; 03
- D 1 - I - 0x00E227 03:A217: 00        .byte $00   ; 04
- D 1 - I - 0x00E228 03:A218: 03        .byte $03   ; 05
- D 1 - I - 0x00E229 03:A219: 03        .byte $03   ; 06
- D 1 - I - 0x00E22A 03:A21A: 00        .byte $00   ; 07
- D 1 - I - 0x00E22B 03:A21B: 00        .byte $00   ; 08
- D 1 - I - 0x00E22C 03:A21C: 02        .byte $02   ; 09
- D 1 - I - 0x00E22D 03:A21D: 01        .byte $01   ; 0A
- D 1 - I - 0x00E22E 03:A21E: 03        .byte $03   ; 0B
- D 1 - I - 0x00E22F 03:A21F: 00        .byte $00   ; 0C
- D 1 - I - 0x00E230 03:A220: 00        .byte $00   ; 0D
- D 1 - I - 0x00E231 03:A221: 00        .byte $00   ; 0E



off_02_A222_02_spr_XY:
- D 1 - I - 0x00E232 03:A222: FF        .byte $FF, $14   ; 01
- D 1 - I - 0x00E234 03:A224: 07        .byte $07, $14   ; 02
- D 1 - I - 0x00E236 03:A226: 0F        .byte $0F, $14   ; 03
- D 1 - I - 0x00E238 03:A228: 17        .byte $17, $14   ; 04
- D 1 - I - 0x00E23A 03:A22A: FF        .byte $FF, $0C   ; 05
- D 1 - I - 0x00E23C 03:A22C: 07        .byte $07, $0C   ; 06
- D 1 - I - 0x00E23E 03:A22E: 0F        .byte $0F, $0C   ; 07
- D 1 - I - 0x00E240 03:A230: 17        .byte $17, $0C   ; 08
- D 1 - I - 0x00E242 03:A232: 1F        .byte $1F, $0C   ; 09
- D 1 - I - 0x00E244 03:A234: FF        .byte $FF, $04   ; 0A
- D 1 - I - 0x00E246 03:A236: 07        .byte $07, $04   ; 0B
- D 1 - I - 0x00E248 03:A238: 0F        .byte $0F, $04   ; 0C
- D 1 - I - 0x00E24A 03:A23A: 17        .byte $17, $04   ; 0D
- D 1 - I - 0x00E24C 03:A23C: 1F        .byte $1F, $04   ; 0E



_off030_A23E_01:
- D 1 - I - 0x00E24E 03:A23E: 02        .byte con_sub_02, $0B   ; 
- D 1 - I - 0x00E250 03:A240: 55 A2     .word off_02_A255_00_spr_A
- D 1 - I - 0x00E252 03:A242: 4A A2     .word off_02_A24A_01_spr_T
- D 1 - I - 0x00E254 03:A244: 60 A2     .word off_02_A260_02_spr_XY
- D 1 - I - 0x00E256 03:A246: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E257 03:A247: 30 A3     .word sub_05_A330
- D 1 - I - 0x00E259 03:A249: 00        .byte con_sub_00   ; 



off_02_A24A_01_spr_T:
- D 1 - I - 0x00E25A 03:A24A: 80        .byte $80   ; 01
- D 1 - I - 0x00E25B 03:A24B: 81        .byte $81   ; 02
- D 1 - I - 0x00E25C 03:A24C: 90        .byte $90   ; 03
- D 1 - I - 0x00E25D 03:A24D: 91        .byte $91   ; 04
- D 1 - I - 0x00E25E 03:A24E: 92        .byte $92   ; 05
- D 1 - I - 0x00E25F 03:A24F: A0        .byte $A0   ; 06
- D 1 - I - 0x00E260 03:A250: A1        .byte $A1   ; 07
- D 1 - I - 0x00E261 03:A251: A2        .byte $A2   ; 08
- D 1 - I - 0x00E262 03:A252: F0        .byte $F0   ; 09
- D 1 - I - 0x00E263 03:A253: B1        .byte $B1   ; 0A
- D 1 - I - 0x00E264 03:A254: F2        .byte $F2   ; 0B



off_02_A255_00_spr_A:
- D 1 - I - 0x00E265 03:A255: 02        .byte $02   ; 01
- D 1 - I - 0x00E266 03:A256: 02        .byte $02   ; 02
- D 1 - I - 0x00E267 03:A257: 00        .byte $00   ; 03
- D 1 - I - 0x00E268 03:A258: 02        .byte $02   ; 04
- D 1 - I - 0x00E269 03:A259: 02        .byte $02   ; 05
- D 1 - I - 0x00E26A 03:A25A: 00        .byte $00   ; 06
- D 1 - I - 0x00E26B 03:A25B: 00        .byte $00   ; 07
- D 1 - I - 0x00E26C 03:A25C: 00        .byte $00   ; 08
- D 1 - I - 0x00E26D 03:A25D: 00        .byte $00   ; 09
- D 1 - I - 0x00E26E 03:A25E: 00        .byte $00   ; 0A
- D 1 - I - 0x00E26F 03:A25F: 00        .byte $00   ; 0B



off_02_A260_02_spr_XY:
- D 1 - I - 0x00E270 03:A260: F8        .byte $F8, $2B   ; 01
- D 1 - I - 0x00E272 03:A262: 00        .byte $00, $2B   ; 02
- D 1 - I - 0x00E274 03:A264: F8        .byte $F8, $23   ; 03
- D 1 - I - 0x00E276 03:A266: 00        .byte $00, $23   ; 04
- D 1 - I - 0x00E278 03:A268: 08        .byte $08, $23   ; 05
- D 1 - I - 0x00E27A 03:A26A: F8        .byte $F8, $1B   ; 06
- D 1 - I - 0x00E27C 03:A26C: 00        .byte $00, $1B   ; 07
- D 1 - I - 0x00E27E 03:A26E: 08        .byte $08, $1B   ; 08
- D 1 - I - 0x00E280 03:A270: F8        .byte $F8, $13   ; 09
- D 1 - I - 0x00E282 03:A272: 00        .byte $00, $13   ; 0A
- D 1 - I - 0x00E284 03:A274: 08        .byte $08, $13   ; 0B



_off030_A276_07:
- D 1 - I - 0x00E286 03:A276: 02        .byte con_sub_02, $0B   ; 
- D 1 - I - 0x00E288 03:A278: 8D A2     .word off_02_A28D_00_spr_A
- D 1 - I - 0x00E28A 03:A27A: 82 A2     .word off_02_A282_01_spr_T
- D 1 - I - 0x00E28C 03:A27C: 98 A2     .word off_02_A298_02_spr_XY
- D 1 - I - 0x00E28E 03:A27E: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E28F 03:A27F: 30 A3     .word sub_05_A330
- D 1 - I - 0x00E291 03:A281: 00        .byte con_sub_00   ; 



off_02_A282_01_spr_T:
- D 1 - I - 0x00E292 03:A282: A3        .byte $A3   ; 01
- D 1 - I - 0x00E293 03:A283: A4        .byte $A4   ; 02
- D 1 - I - 0x00E294 03:A284: B3        .byte $B3   ; 03
- D 1 - I - 0x00E295 03:A285: B4        .byte $B4   ; 04
- D 1 - I - 0x00E296 03:A286: 92        .byte $92   ; 05
- D 1 - I - 0x00E297 03:A287: A0        .byte $A0   ; 06
- D 1 - I - 0x00E298 03:A288: A1        .byte $A1   ; 07
- D 1 - I - 0x00E299 03:A289: A2        .byte $A2   ; 08
- D 1 - I - 0x00E29A 03:A28A: F0        .byte $F0   ; 09
- D 1 - I - 0x00E29B 03:A28B: B1        .byte $B1   ; 0A
- D 1 - I - 0x00E29C 03:A28C: F2        .byte $F2   ; 0B



off_02_A28D_00_spr_A:
- D 1 - I - 0x00E29D 03:A28D: 02        .byte $02   ; 01
- D 1 - I - 0x00E29E 03:A28E: 02        .byte $02   ; 02
- D 1 - I - 0x00E29F 03:A28F: 00        .byte $00   ; 03
- D 1 - I - 0x00E2A0 03:A290: 02        .byte $02   ; 04
- D 1 - I - 0x00E2A1 03:A291: 02        .byte $02   ; 05
- D 1 - I - 0x00E2A2 03:A292: 00        .byte $00   ; 06
- D 1 - I - 0x00E2A3 03:A293: 00        .byte $00   ; 07
- D 1 - I - 0x00E2A4 03:A294: 00        .byte $00   ; 08
- D 1 - I - 0x00E2A5 03:A295: 00        .byte $00   ; 09
- D 1 - I - 0x00E2A6 03:A296: 00        .byte $00   ; 0A
- D 1 - I - 0x00E2A7 03:A297: 00        .byte $00   ; 0B



off_02_A298_02_spr_XY:
- D 1 - I - 0x00E2A8 03:A298: FB        .byte $FB, $2B   ; 01
- D 1 - I - 0x00E2AA 03:A29A: 03        .byte $03, $2B   ; 02
- D 1 - I - 0x00E2AC 03:A29C: FB        .byte $FB, $23   ; 03
- D 1 - I - 0x00E2AE 03:A29E: 03        .byte $03, $23   ; 04
- D 1 - I - 0x00E2B0 03:A2A0: 0B        .byte $0B, $23   ; 05
- D 1 - I - 0x00E2B2 03:A2A2: FA        .byte $FA, $1B   ; 06
- D 1 - I - 0x00E2B4 03:A2A4: 02        .byte $02, $1B   ; 07
- D 1 - I - 0x00E2B6 03:A2A6: 0A        .byte $0A, $1B   ; 08
- D 1 - I - 0x00E2B8 03:A2A8: F9        .byte $F9, $13   ; 09
- D 1 - I - 0x00E2BA 03:A2AA: 01        .byte $01, $13   ; 0A
- D 1 - I - 0x00E2BC 03:A2AC: 09        .byte $09, $13   ; 0B



_off030_A2AE_02:
- D 1 - I - 0x00E2BE 03:A2AE: 02        .byte con_sub_02, $10   ; 
- D 1 - I - 0x00E2C0 03:A2B0: C7 A2     .word off_02_A2C7_00_spr_A
- D 1 - I - 0x00E2C2 03:A2B2: B7 A2     .word off_02_A2B7_01_spr_T
- D 1 - I - 0x00E2C4 03:A2B4: D7 A2     .word off_02_A2D7_02_spr_XY
- D 1 - I - 0x00E2C6 03:A2B6: 00        .byte con_sub_00   ; 



off_02_A2B7_01_spr_T:
- D 1 - I - 0x00E2C7 03:A2B7: 80        .byte $80   ; 01
- D 1 - I - 0x00E2C8 03:A2B8: 81        .byte $81   ; 02
- D 1 - I - 0x00E2C9 03:A2B9: 90        .byte $90   ; 03
- D 1 - I - 0x00E2CA 03:A2BA: 91        .byte $91   ; 04
- D 1 - I - 0x00E2CB 03:A2BB: 92        .byte $92   ; 05
- D 1 - I - 0x00E2CC 03:A2BC: A0        .byte $A0   ; 06
- D 1 - I - 0x00E2CD 03:A2BD: A1        .byte $A1   ; 07
- D 1 - I - 0x00E2CE 03:A2BE: A2        .byte $A2   ; 08
- D 1 - I - 0x00E2CF 03:A2BF: B0        .byte $B0   ; 09
- D 1 - I - 0x00E2D0 03:A2C0: B1        .byte $B1   ; 0A
- D 1 - I - 0x00E2D1 03:A2C1: B2        .byte $B2   ; 0B
off_01_A2C2_spr_T:
- D 1 - I - 0x00E2D2 03:A2C2: C0        .byte $C0   ; 01 (0C)
- D 1 - I - 0x00E2D3 03:A2C3: C1        .byte $C1   ; 02 (0D)
- D 1 - I - 0x00E2D4 03:A2C4: C2        .byte $C2   ; 03 (0E)
- D 1 - I - 0x00E2D5 03:A2C5: D0        .byte $D0   ; 04 (0F)
- D 1 - I - 0x00E2D6 03:A2C6: D2        .byte $D2   ; 05 (10)



off_02_A2C7_00_spr_A:
- D 1 - I - 0x00E2D7 03:A2C7: 02        .byte $02   ; 01
- D 1 - I - 0x00E2D8 03:A2C8: 02        .byte $02   ; 02
- D 1 - I - 0x00E2D9 03:A2C9: 00        .byte $00   ; 03
- D 1 - I - 0x00E2DA 03:A2CA: 02        .byte $02   ; 04
- D 1 - I - 0x00E2DB 03:A2CB: 00        .byte $00   ; 05
- D 1 - I - 0x00E2DC 03:A2CC: 00        .byte $00   ; 06
- D 1 - I - 0x00E2DD 03:A2CD: 00        .byte $00   ; 07
- D 1 - I - 0x00E2DE 03:A2CE: 00        .byte $00   ; 08
- D 1 - I - 0x00E2DF 03:A2CF: 00        .byte $00   ; 09
- D 1 - I - 0x00E2E0 03:A2D0: 00        .byte $00   ; 0A
- D 1 - I - 0x00E2E1 03:A2D1: 00        .byte $00   ; 0B
- D 1 - I - 0x00E2E2 03:A2D2: 03        .byte $03   ; 0C
- D 1 - I - 0x00E2E3 03:A2D3: 03        .byte $03   ; 0D
- D 1 - I - 0x00E2E4 03:A2D4: 03        .byte $03   ; 0E
- D 1 - I - 0x00E2E5 03:A2D5: 01        .byte $01   ; 0F
- D 1 - I - 0x00E2E6 03:A2D6: 01        .byte $01   ; 10



off_02_A2D7_02_spr_XY:
- D 1 - I - 0x00E2E7 03:A2D7: F8        .byte $F8, $2C   ; 01
- D 1 - I - 0x00E2E9 03:A2D9: 00        .byte $00, $2C   ; 02
- D 1 - I - 0x00E2EB 03:A2DB: F8        .byte $F8, $24   ; 03
- D 1 - I - 0x00E2ED 03:A2DD: 00        .byte $00, $24   ; 04
- D 1 - I - 0x00E2EF 03:A2DF: 08        .byte $08, $24   ; 05
- D 1 - I - 0x00E2F1 03:A2E1: F8        .byte $F8, $1C   ; 06
- D 1 - I - 0x00E2F3 03:A2E3: 00        .byte $00, $1C   ; 07
- D 1 - I - 0x00E2F5 03:A2E5: 08        .byte $08, $1C   ; 08
- D 1 - I - 0x00E2F7 03:A2E7: F8        .byte $F8, $14   ; 09
- D 1 - I - 0x00E2F9 03:A2E9: 00        .byte $00, $14   ; 0A
- D 1 - I - 0x00E2FB 03:A2EB: 08        .byte $08, $14   ; 0B
off_01_A2ED_spr_XY:
- D 1 - I - 0x00E2FD 03:A2ED: F8        .byte $F8, $0C   ; 01 (0C)
- D 1 - I - 0x00E2FF 03:A2EF: 00        .byte $00, $0C   ; 02 (0D)
- D 1 - I - 0x00E301 03:A2F1: 08        .byte $08, $0C   ; 03 (0E)
- D 1 - I - 0x00E303 03:A2F3: F8        .byte $F8, $04   ; 04 (0F)
- D 1 - I - 0x00E305 03:A2F5: 08        .byte $08, $04   ; 05 (10)



_off030_A2F7_00:
- D 1 - I - 0x00E307 03:A2F7: 02        .byte con_sub_02, $10   ; 
- D 1 - I - 0x00E309 03:A2F9: C7 A2     .word off_02_A2C7_00_spr_A
- D 1 - I - 0x00E30B 03:A2FB: 00 A3     .word off_02_A300_01_spr_T
- D 1 - I - 0x00E30D 03:A2FD: 10 A3     .word off_02_A310_02_spr_XY
- D 1 - I - 0x00E30F 03:A2FF: 00        .byte con_sub_00   ; 



off_02_A300_01_spr_T:
- D 1 - I - 0x00E310 03:A300: 80        .byte $80   ; 01
- D 1 - I - 0x00E311 03:A301: 81        .byte $81   ; 02
- D 1 - I - 0x00E312 03:A302: 90        .byte $90   ; 03
- D 1 - I - 0x00E313 03:A303: 91        .byte $91   ; 04
- D 1 - I - 0x00E314 03:A304: 92        .byte $92   ; 05
- D 1 - I - 0x00E315 03:A305: A0        .byte $A0   ; 06
- D 1 - I - 0x00E316 03:A306: A1        .byte $A1   ; 07
- D 1 - I - 0x00E317 03:A307: A2        .byte $A2   ; 08
- D 1 - I - 0x00E318 03:A308: F0        .byte $F0   ; 09
- D 1 - I - 0x00E319 03:A309: B1        .byte $B1   ; 0A
- D 1 - I - 0x00E31A 03:A30A: F2        .byte $F2   ; 0B
- D 1 - I - 0x00E31B 03:A30B: E0        .byte $E0   ; 0C
- D 1 - I - 0x00E31C 03:A30C: E1        .byte $E1   ; 0D
- D 1 - I - 0x00E31D 03:A30D: E2        .byte $E2   ; 0E
- D 1 - I - 0x00E31E 03:A30E: D0        .byte $D0   ; 0F
- D 1 - I - 0x00E31F 03:A30F: D2        .byte $D2   ; 10



off_02_A310_02_spr_XY:
- D 1 - I - 0x00E320 03:A310: F8        .byte $F8, $2C   ; 01
- D 1 - I - 0x00E322 03:A312: 00        .byte $00, $2C   ; 02
- D 1 - I - 0x00E324 03:A314: F8        .byte $F8, $24   ; 03
- D 1 - I - 0x00E326 03:A316: 00        .byte $00, $24   ; 04
- D 1 - I - 0x00E328 03:A318: 08        .byte $08, $24   ; 05
- D 1 - I - 0x00E32A 03:A31A: F8        .byte $F8, $1C   ; 06
- D 1 - I - 0x00E32C 03:A31C: 00        .byte $00, $1C   ; 07
- D 1 - I - 0x00E32E 03:A31E: 08        .byte $08, $1C   ; 08
- D 1 - I - 0x00E330 03:A320: F8        .byte $F8, $14   ; 09
- D 1 - I - 0x00E332 03:A322: 00        .byte $00, $14   ; 0A
- D 1 - I - 0x00E334 03:A324: 08        .byte $08, $14   ; 0B
- D 1 - I - 0x00E336 03:A326: F8        .byte $F8, $0C   ; 0C
- D 1 - I - 0x00E338 03:A328: 00        .byte $00, $0C   ; 0D
- D 1 - I - 0x00E33A 03:A32A: 08        .byte $08, $0C   ; 0E
- D 1 - I - 0x00E33C 03:A32C: FC        .byte $FC, $04   ; 0F
- D 1 - I - 0x00E33E 03:A32E: 08        .byte $08, $04   ; 10



sub_05_A330:
- D 1 - I - 0x00E340 03:A330: 02        .byte con_sub_02, $04   ; 
- D 1 - I - 0x00E342 03:A332: 3D A3     .word off_02_A33D_00_spr_A
- D 1 - I - 0x00E344 03:A334: 39 A3     .word off_02_A339_01_spr_T
- D 1 - I - 0x00E346 03:A336: 41 A3     .word off_02_A341_02_spr_XY
- D 1 - I - 0x00E348 03:A338: 00        .byte con_sub_00   ; 



off_02_A339_01_spr_T:
off_01_A339_spr_T:
- D 1 - I - 0x00E349 03:A339: 83        .byte $83   ; 01
- D 1 - I - 0x00E34A 03:A33A: 84        .byte $84   ; 02
- D 1 - I - 0x00E34B 03:A33B: 93        .byte $93   ; 03
- D 1 - I - 0x00E34C 03:A33C: 94        .byte $94   ; 04



off_02_A33D_00_spr_A:
- D 1 - I - 0x00E34D 03:A33D: 03        .byte $03   ; 01
- D 1 - I - 0x00E34E 03:A33E: 03        .byte $03   ; 02
- D 1 - I - 0x00E34F 03:A33F: 01        .byte $01   ; 03
- D 1 - I - 0x00E350 03:A340: 01        .byte $01   ; 04



off_02_A341_02_spr_XY:
off_01_A341_spr_XY:
- D 1 - I - 0x00E351 03:A341: FA        .byte $FA, $0B   ; 01
- D 1 - I - 0x00E353 03:A343: 02        .byte $02, $0B   ; 02
- D 1 - I - 0x00E355 03:A345: FA        .byte $FA, $03   ; 03
- D 1 - I - 0x00E357 03:A347: 02        .byte $02, $03   ; 04



_off030_A349_02:
- D 1 - I - 0x00E359 03:A349: 02        .byte con_sub_02, $10   ; 
- D 1 - I - 0x00E35B 03:A34B: 54 A3     .word off_02_A354_00_spr_A
- D 1 - I - 0x00E35D 03:A34D: B7 A2     .word off_02_A2B7_01_spr_T
- D 1 - I - 0x00E35F 03:A34F: D7 A2     .word off_02_A2D7_02_spr_XY
- D 1 - I - 0x00E361 03:A351: 00        .byte con_sub_00   ; 



off_02_A352_00_spr_A:
- D 1 - I - 0x00E362 03:A352: 00        .byte $00   ; 01
- D 1 - I - 0x00E363 03:A353: 00        .byte $00   ; 02
off_02_A354_00_spr_A:
- D 1 - I - 0x00E364 03:A354: 00        .byte $00   ; 01 (03)
- D 1 - I - 0x00E365 03:A355: 00        .byte $00   ; 02 (04)
- D 1 - I - 0x00E366 03:A356: 00        .byte $00   ; 03 (05)
- D 1 - I - 0x00E367 03:A357: 00        .byte $00   ; 04 (06)
- D 1 - I - 0x00E368 03:A358: 00        .byte $00   ; 05 (07)
- D 1 - I - 0x00E369 03:A359: 00        .byte $00   ; 06 (08)
- D 1 - I - 0x00E36A 03:A35A: 00        .byte $00   ; 07 (09)
- D 1 - I - 0x00E36B 03:A35B: 00        .byte $00   ; 08 (0A)
- D 1 - I - 0x00E36C 03:A35C: 02        .byte $02   ; 09 (0B)
- D 1 - I - 0x00E36D 03:A35D: 02        .byte $02   ; 0A (0C)
- D 1 - I - 0x00E36E 03:A35E: 02        .byte $02   ; 0B
- D 1 - I - 0x00E36F 03:A35F: 03        .byte $03   ; 0C
- D 1 - I - 0x00E370 03:A360: 03        .byte $03   ; 0D
- D 1 - I - 0x00E371 03:A361: 03        .byte $03   ; 0E
- D 1 - I - 0x00E372 03:A362: 03        .byte $03   ; 0F
- D 1 - I - 0x00E373 03:A363: 03        .byte $03   ; 10



_off030_A364_01:
- D 1 - I - 0x00E374 03:A364: 02        .byte con_sub_02, $0B   ; 
- D 1 - I - 0x00E376 03:A366: 54 A3     .word off_02_A354_00_spr_A
- D 1 - I - 0x00E378 03:A368: 4A A2     .word off_02_A24A_01_spr_T
- D 1 - I - 0x00E37A 03:A36A: 60 A2     .word off_02_A260_02_spr_XY
- D 1 - I - 0x00E37C 03:A36C: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E37D 03:A36D: 79 A3     .word sub_05_A379
- D 1 - I - 0x00E37F 03:A36F: 00        .byte con_sub_00   ; 



_off030_A370_00:
- D 1 - I - 0x00E380 03:A370: 02        .byte con_sub_02, $10   ; 
- D 1 - I - 0x00E382 03:A372: 54 A3     .word off_02_A354_00_spr_A
- D 1 - I - 0x00E384 03:A374: 00 A3     .word off_02_A300_01_spr_T
- D 1 - I - 0x00E386 03:A376: 10 A3     .word off_02_A310_02_spr_XY
- D 1 - I - 0x00E388 03:A378: 00        .byte con_sub_00   ; 



sub_05_A379:
- D 1 - I - 0x00E389 03:A379: 01        .byte con_sub_01, $04, $03   ; 
- D 1 - I - 0x00E38C 03:A37C: 39 A3     .word off_01_A339_spr_T
- D 1 - I - 0x00E38E 03:A37E: 41 A3     .word off_01_A341_spr_XY
- D 1 - I - 0x00E390 03:A380: 00        .byte con_sub_00   ; 



_off030_A381_0D:
- D 1 - I - 0x00E391 03:A381: 02        .byte con_sub_02, $0D   ; 
- D 1 - I - 0x00E393 03:A383: 9A A3     .word off_02_A39A_00_spr_A
- D 1 - I - 0x00E395 03:A385: 8D A3     .word off_02_A38D_01_spr_T
- D 1 - I - 0x00E397 03:A387: A7 A3     .word off_02_A3A7_02_spr_XY
- D 1 - I - 0x00E399 03:A389: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E39A 03:A38A: 4B A4     .word sub_05_A44B
- D 1 - I - 0x00E39C 03:A38C: 00        .byte con_sub_00   ; 



off_02_A38D_01_spr_T:
- D 1 - I - 0x00E39D 03:A38D: 80        .byte $80   ; 01
- D 1 - I - 0x00E39E 03:A38E: 81        .byte $81   ; 02
- D 1 - I - 0x00E39F 03:A38F: A9        .byte $A9   ; 03
- D 1 - I - 0x00E3A0 03:A390: BE        .byte $BE   ; 04
- D 1 - I - 0x00E3A1 03:A391: BF        .byte $BF   ; 05
- D 1 - I - 0x00E3A2 03:A392: 91        .byte $91   ; 06
- D 1 - I - 0x00E3A3 03:A393: 92        .byte $92   ; 07
- D 1 - I - 0x00E3A4 03:A394: CF        .byte $CF   ; 08
- D 1 - I - 0x00E3A5 03:A395: A1        .byte $A1   ; 09
- D 1 - I - 0x00E3A6 03:A396: A2        .byte $A2   ; 0A
- D 1 - I - 0x00E3A7 03:A397: DF        .byte $DF   ; 0B
- D 1 - I - 0x00E3A8 03:A398: B1        .byte $B1   ; 0C
- D 1 - I - 0x00E3A9 03:A399: B2        .byte $B2   ; 0D



off_02_A39A_00_spr_A:
- D 1 - I - 0x00E3AA 03:A39A: 00        .byte $00   ; 01
off_02_A39B_00_spr_A:
- D 1 - I - 0x00E3AB 03:A39B: 00        .byte $00   ; 01 (02)
- D 1 - I - 0x00E3AC 03:A39C: 00        .byte $00   ; 02 (03)
- D 1 - I - 0x00E3AD 03:A39D: 00        .byte $00   ; 03 (04)
- D 1 - I - 0x00E3AE 03:A39E: 00        .byte $00   ; 04 (05)
- D 1 - I - 0x00E3AF 03:A39F: 00        .byte $00   ; 05 (06)
- D 1 - I - 0x00E3B0 03:A3A0: 00        .byte $00   ; 06 (07)
- D 1 - I - 0x00E3B1 03:A3A1: 00        .byte $00   ; 07 (08)
- D 1 - I - 0x00E3B2 03:A3A2: 00        .byte $00   ; 08 (09)
- D 1 - I - 0x00E3B3 03:A3A3: 00        .byte $00   ; 09 (0A)
- D 1 - I - 0x00E3B4 03:A3A4: 02        .byte $02   ; 0A (0B)
- D 1 - I - 0x00E3B5 03:A3A5: 02        .byte $02   ; 0B (0C)
- D 1 - I - 0x00E3B6 03:A3A6: 02        .byte $02   ; 0C (0D)



off_02_A3A7_02_spr_XY:
- D 1 - I - 0x00E3B7 03:A3A7: F4        .byte $F4, $2C   ; 01
- D 1 - I - 0x00E3B9 03:A3A9: FC        .byte $FC, $2C   ; 02
- D 1 - I - 0x00E3BB 03:A3AB: E5        .byte $E5, $1F   ; 03
- D 1 - I - 0x00E3BD 03:A3AD: ED        .byte $ED, $20   ; 04
- D 1 - I - 0x00E3BF 03:A3AF: F4        .byte $F4, $24   ; 05
- D 1 - I - 0x00E3C1 03:A3B1: FC        .byte $FC, $24   ; 06
- D 1 - I - 0x00E3C3 03:A3B3: 04        .byte $04, $24   ; 07
- D 1 - I - 0x00E3C5 03:A3B5: F5        .byte $F5, $1C   ; 08
- D 1 - I - 0x00E3C7 03:A3B7: FD        .byte $FD, $1C   ; 09
- D 1 - I - 0x00E3C9 03:A3B9: 05        .byte $05, $1C   ; 0A
- D 1 - I - 0x00E3CB 03:A3BB: F7        .byte $F7, $14   ; 0B
- D 1 - I - 0x00E3CD 03:A3BD: FF        .byte $FF, $14   ; 0C
- D 1 - I - 0x00E3CF 03:A3BF: 07        .byte $07, $14   ; 0D



_off030_A3C1_0C:
- D 1 - I - 0x00E3D1 03:A3C1: 02        .byte con_sub_02, $0C   ; 
- D 1 - I - 0x00E3D3 03:A3C3: 9B A3     .word off_02_A39B_00_spr_A
- D 1 - I - 0x00E3D5 03:A3C5: CD A3     .word off_02_A3CD_01_spr_T
- D 1 - I - 0x00E3D7 03:A3C7: D9 A3     .word off_02_A3D9_02_spr_XY
- D 1 - I - 0x00E3D9 03:A3C9: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E3DA 03:A3CA: 4B A4     .word sub_05_A44B
- D 1 - I - 0x00E3DC 03:A3CC: 00        .byte con_sub_00   ; 



off_02_A3CD_01_spr_T:
- D 1 - I - 0x00E3DD 03:A3CD: 80        .byte $80   ; 01
- D 1 - I - 0x00E3DE 03:A3CE: 81        .byte $81   ; 02
- D 1 - I - 0x00E3DF 03:A3CF: A9        .byte $A9   ; 03
- D 1 - I - 0x00E3E0 03:A3D0: 8F        .byte $8F   ; 04
- D 1 - I - 0x00E3E1 03:A3D1: 91        .byte $91   ; 05
- D 1 - I - 0x00E3E2 03:A3D2: 92        .byte $92   ; 06
- D 1 - I - 0x00E3E3 03:A3D3: 9F        .byte $9F   ; 07
- D 1 - I - 0x00E3E4 03:A3D4: A1        .byte $A1   ; 08
- D 1 - I - 0x00E3E5 03:A3D5: A2        .byte $A2   ; 09
- D 1 - I - 0x00E3E6 03:A3D6: AF        .byte $AF   ; 0A
- D 1 - I - 0x00E3E7 03:A3D7: B1        .byte $B1   ; 0B
- D 1 - I - 0x00E3E8 03:A3D8: B2        .byte $B2   ; 0C



off_02_A3D9_02_spr_XY:
- D 1 - I - 0x00E3E9 03:A3D9: F7        .byte $F7, $2C   ; 01
- D 1 - I - 0x00E3EB 03:A3DB: FF        .byte $FF, $2C   ; 02
- D 1 - I - 0x00E3ED 03:A3DD: F2        .byte $F2, $25   ; 03
- D 1 - I - 0x00E3EF 03:A3DF: F7        .byte $F7, $24   ; 04
- D 1 - I - 0x00E3F1 03:A3E1: FF        .byte $FF, $24   ; 05
- D 1 - I - 0x00E3F3 03:A3E3: 07        .byte $07, $24   ; 06
- D 1 - I - 0x00E3F5 03:A3E5: F7        .byte $F7, $1C   ; 07
- D 1 - I - 0x00E3F7 03:A3E7: FF        .byte $FF, $1C   ; 08
- D 1 - I - 0x00E3F9 03:A3E9: 07        .byte $07, $1C   ; 09
- D 1 - I - 0x00E3FB 03:A3EB: F8        .byte $F8, $14   ; 0A
- D 1 - I - 0x00E3FD 03:A3ED: 00        .byte $00, $14   ; 0B
- D 1 - I - 0x00E3FF 03:A3EF: 08        .byte $08, $14   ; 0C



_off030_A3F1_0E:
- D 1 - I - 0x00E401 03:A3F1: 02        .byte con_sub_02, $0A   ; 
- D 1 - I - 0x00E403 03:A3F3: 54 A3     .word off_02_A354_00_spr_A
- D 1 - I - 0x00E405 03:A3F5: FD A3     .word off_02_A3FD_01_spr_T
- D 1 - I - 0x00E407 03:A3F7: 07 A4     .word off_02_A407_02_spr_XY
- D 1 - I - 0x00E409 03:A3F9: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E40A 03:A3FA: 4B A4     .word sub_05_A44B
- D 1 - I - 0x00E40C 03:A3FC: 00        .byte con_sub_00   ; 



off_02_A3FD_01_spr_T:
- D 1 - I - 0x00E40D 03:A3FD: A3        .byte $A3   ; 01
- D 1 - I - 0x00E40E 03:A3FE: A4        .byte $A4   ; 02
- D 1 - I - 0x00E40F 03:A3FF: CA        .byte $CA   ; 03
- D 1 - I - 0x00E410 03:A400: CB        .byte $CB   ; 04
- D 1 - I - 0x00E411 03:A401: 8B        .byte $8B   ; 05
- D 1 - I - 0x00E412 03:A402: CC        .byte $CC   ; 06
- D 1 - I - 0x00E413 03:A403: CD        .byte $CD   ; 07
- D 1 - I - 0x00E414 03:A404: 9B        .byte $9B   ; 08
- D 1 - I - 0x00E415 03:A405: AD        .byte $AD   ; 09
- D 1 - I - 0x00E416 03:A406: AE        .byte $AE   ; 0A



off_02_A407_02_spr_XY:
- D 1 - I - 0x00E417 03:A407: F2        .byte $F2, $2C   ; 01
- D 1 - I - 0x00E419 03:A409: FA        .byte $FA, $2C   ; 02
- D 1 - I - 0x00E41B 03:A40B: F3        .byte $F3, $24   ; 03
- D 1 - I - 0x00E41D 03:A40D: FB        .byte $FB, $24   ; 04
- D 1 - I - 0x00E41F 03:A40F: 03        .byte $03, $24   ; 05
- D 1 - I - 0x00E421 03:A411: F3        .byte $F3, $1C   ; 06
- D 1 - I - 0x00E423 03:A413: FB        .byte $FB, $1C   ; 07
- D 1 - I - 0x00E425 03:A415: 03        .byte $03, $1C   ; 08
- D 1 - I - 0x00E427 03:A417: FB        .byte $FB, $14   ; 09
- D 1 - I - 0x00E429 03:A419: 03        .byte $03, $14   ; 0A



_off030_A41B_0F:
- D 1 - I - 0x00E42B 03:A41B: 02        .byte con_sub_02, $0C   ; 
- D 1 - I - 0x00E42D 03:A41D: 52 A3     .word off_02_A352_00_spr_A
- D 1 - I - 0x00E42F 03:A41F: 27 A4     .word off_02_A427_01_spr_T
- D 1 - I - 0x00E431 03:A421: 33 A4     .word off_02_A433_02_spr_XY
- D 1 - I - 0x00E433 03:A423: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E434 03:A424: 4B A4     .word sub_05_A44B
- D 1 - I - 0x00E436 03:A426: 00        .byte con_sub_00   ; 



off_02_A427_01_spr_T:
- D 1 - I - 0x00E437 03:A427: A3        .byte $A3   ; 01
- D 1 - I - 0x00E438 03:A428: A4        .byte $A4   ; 02
- D 1 - I - 0x00E439 03:A429: A9        .byte $A9   ; 03
- D 1 - I - 0x00E43A 03:A42A: BE        .byte $BE   ; 04
- D 1 - I - 0x00E43B 03:A42B: AA        .byte $AA   ; 05
- D 1 - I - 0x00E43C 03:A42C: AB        .byte $AB   ; 06
- D 1 - I - 0x00E43D 03:A42D: AC        .byte $AC   ; 07
- D 1 - I - 0x00E43E 03:A42E: BA        .byte $BA   ; 08
- D 1 - I - 0x00E43F 03:A42F: BB        .byte $BB   ; 09
- D 1 - I - 0x00E440 03:A430: BC        .byte $BC   ; 0A
- D 1 - I - 0x00E441 03:A431: AD        .byte $AD   ; 0B
- D 1 - I - 0x00E442 03:A432: AE        .byte $AE   ; 0C



off_02_A433_02_spr_XY:
- D 1 - I - 0x00E443 03:A433: F5        .byte $F5, $2C   ; 01
- D 1 - I - 0x00E445 03:A435: FD        .byte $FD, $2C   ; 02
- D 1 - I - 0x00E447 03:A437: E6        .byte $E6, $20   ; 03
- D 1 - I - 0x00E449 03:A439: EE        .byte $EE, $21   ; 04
- D 1 - I - 0x00E44B 03:A43B: F5        .byte $F5, $24   ; 05
- D 1 - I - 0x00E44D 03:A43D: FD        .byte $FD, $24   ; 06
- D 1 - I - 0x00E44F 03:A43F: 05        .byte $05, $24   ; 07
- D 1 - I - 0x00E451 03:A441: F6        .byte $F6, $1C   ; 08
- D 1 - I - 0x00E453 03:A443: FE        .byte $FE, $1C   ; 09
- D 1 - I - 0x00E455 03:A445: 06        .byte $06, $1C   ; 0A
- D 1 - I - 0x00E457 03:A447: FB        .byte $FB, $14   ; 0B
- D 1 - I - 0x00E459 03:A449: 03        .byte $03, $14   ; 0C



sub_05_A44B:
- D 1 - I - 0x00E45B 03:A44B: 01        .byte con_sub_01, $05, $03   ; 
- D 1 - I - 0x00E45E 03:A44E: C2 A2     .word off_01_A2C2_spr_T
- D 1 - I - 0x00E460 03:A450: ED A2     .word off_01_A2ED_spr_XY
- D 1 - I - 0x00E462 03:A452: 00        .byte con_sub_00   ; 



_off030_A453_15:
_off030_A453_16:
_off030_A453_17:
_off030_A453_18:
- D 1 - I - 0x00E463 03:A453: 02        .byte con_sub_02, $12   ; 
- D 1 - I - 0x00E465 03:A455: 6E A4     .word off_02_A46E_00_spr_A
- D 1 - I - 0x00E467 03:A457: 5C A4     .word off_02_A45C_01_spr_T
- D 1 - I - 0x00E469 03:A459: 80 A4     .word off_02_A480_02_spr_XY
- D 1 - I - 0x00E46B 03:A45B: 00        .byte con_sub_00   ; 



off_02_A45C_01_spr_T:
- D 1 - I - 0x00E46C 03:A45C: 80        .byte $80   ; 01
- D 1 - I - 0x00E46D 03:A45D: 81        .byte $81   ; 02
- D 1 - I - 0x00E46E 03:A45E: 90        .byte $90   ; 03
- D 1 - I - 0x00E46F 03:A45F: 91        .byte $91   ; 04
- D 1 - I - 0x00E470 03:A460: 92        .byte $92   ; 05
- D 1 - I - 0x00E471 03:A461: 8E        .byte $8E   ; 06
- D 1 - I - 0x00E472 03:A462: A0        .byte $A0   ; 07
- D 1 - I - 0x00E473 03:A463: A1        .byte $A1   ; 08
- D 1 - I - 0x00E474 03:A464: A2        .byte $A2   ; 09
- D 1 - I - 0x00E475 03:A465: 9C        .byte $9C   ; 0A
- D 1 - I - 0x00E476 03:A466: 9D        .byte $9D   ; 0B
- D 1 - I - 0x00E477 03:A467: 9E        .byte $9E   ; 0C
- D 1 - I - 0x00E478 03:A468: B1        .byte $B1   ; 0D
- D 1 - I - 0x00E479 03:A469: B2        .byte $B2   ; 0E
- D 1 - I - 0x00E47A 03:A46A: FE        .byte $FE   ; 0F
- D 1 - I - 0x00E47B 03:A46B: FF        .byte $FF   ; 10
- D 1 - I - 0x00E47C 03:A46C: C2        .byte $C2   ; 11
- D 1 - I - 0x00E47D 03:A46D: D2        .byte $D2   ; 12



off_02_A46E_00_spr_A:
- D 1 - I - 0x00E47E 03:A46E: 00        .byte $00   ; 01
- D 1 - I - 0x00E47F 03:A46F: 00        .byte $00   ; 02
- D 1 - I - 0x00E480 03:A470: 00        .byte $00   ; 03
- D 1 - I - 0x00E481 03:A471: 00        .byte $00   ; 04
- D 1 - I - 0x00E482 03:A472: 00        .byte $00   ; 05
- D 1 - I - 0x00E483 03:A473: 01        .byte $01   ; 06
- D 1 - I - 0x00E484 03:A474: 00        .byte $00   ; 07
- D 1 - I - 0x00E485 03:A475: 00        .byte $00   ; 08
- D 1 - I - 0x00E486 03:A476: 00        .byte $00   ; 09
- D 1 - I - 0x00E487 03:A477: 01        .byte $01   ; 0A
- D 1 - I - 0x00E488 03:A478: 03        .byte $03   ; 0B
- D 1 - I - 0x00E489 03:A479: 02        .byte $02   ; 0C
- D 1 - I - 0x00E48A 03:A47A: 02        .byte $02   ; 0D
- D 1 - I - 0x00E48B 03:A47B: 02        .byte $02   ; 0E
- D 1 - I - 0x00E48C 03:A47C: 03        .byte $03   ; 0F
- D 1 - I - 0x00E48D 03:A47D: 03        .byte $03   ; 10
- D 1 - I - 0x00E48E 03:A47E: 03        .byte $03   ; 11
- D 1 - I - 0x00E48F 03:A47F: 03        .byte $03   ; 12



off_02_A480_02_spr_XY:
- D 1 - I - 0x00E490 03:A480: F2        .byte $F2, $2F   ; 01
- D 1 - I - 0x00E492 03:A482: FA        .byte $FA, $2F   ; 02
- D 1 - I - 0x00E494 03:A484: F2        .byte $F2, $27   ; 03
- D 1 - I - 0x00E496 03:A486: FA        .byte $FA, $27   ; 04
- D 1 - I - 0x00E498 03:A488: 02        .byte $02, $27   ; 05
- D 1 - I - 0x00E49A 03:A48A: E3        .byte $E3, $1C   ; 06
- D 1 - I - 0x00E49C 03:A48C: F2        .byte $F2, $1F   ; 07
- D 1 - I - 0x00E49E 03:A48E: FA        .byte $FA, $1F   ; 08
- D 1 - I - 0x00E4A0 03:A490: 02        .byte $02, $1F   ; 09
- D 1 - I - 0x00E4A2 03:A492: E3        .byte $E3, $14   ; 0A
- D 1 - I - 0x00E4A4 03:A494: EB        .byte $EB, $14   ; 0B
- D 1 - I - 0x00E4A6 03:A496: F3        .byte $F3, $17   ; 0C
- D 1 - I - 0x00E4A8 03:A498: FB        .byte $FB, $17   ; 0D
- D 1 - I - 0x00E4AA 03:A49A: 03        .byte $03, $17   ; 0E
- D 1 - I - 0x00E4AC 03:A49C: F3        .byte $F3, $0F   ; 0F
- D 1 - I - 0x00E4AE 03:A49E: FB        .byte $FB, $0F   ; 10
- D 1 - I - 0x00E4B0 03:A4A0: 03        .byte $03, $0F   ; 11
- D 1 - I - 0x00E4B2 03:A4A2: 03        .byte $03, $07   ; 12



_off030_A4A4_03:
- D 1 - I - 0x00E4B4 03:A4A4: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 1 - I - 0x00E4B6 03:A4A6: 25 B2     .word sub_06_B225_00
- - - - - - 0x00E4B8 03:A4A8: 1C B2     .word sub_06_B21C_01
@end:
- D 1 - I - 0x00E4BA 03:A4AA: 02        .byte con_sub_02, $0E   ; 
- D 1 - I - 0x00E4BC 03:A4AC: C1 A4     .word off_02_A4C1_00_spr_A
- D 1 - I - 0x00E4BE 03:A4AE: B3 A4     .word off_02_A4B3_01_spr_T
- D 1 - I - 0x00E4C0 03:A4B0: CF A4     .word off_02_A4CF_02_spr_XY
- D 1 - I - 0x00E4C2 03:A4B2: 00        .byte con_sub_00   ; 



off_02_A4B3_01_spr_T:
- D 1 - I - 0x00E4C3 03:A4B3: A3        .byte $A3   ; 01
- D 1 - I - 0x00E4C4 03:A4B4: D9        .byte $D9   ; 02
- D 1 - I - 0x00E4C5 03:A4B5: DA        .byte $DA   ; 03
- D 1 - I - 0x00E4C6 03:A4B6: 85        .byte $85   ; 04
- D 1 - I - 0x00E4C7 03:A4B7: DB        .byte $DB   ; 05
- D 1 - I - 0x00E4C8 03:A4B8: DC        .byte $DC   ; 06
- D 1 - I - 0x00E4C9 03:A4B9: DD        .byte $DD   ; 07
- D 1 - I - 0x00E4CA 03:A4BA: EB        .byte $EB   ; 08
- D 1 - I - 0x00E4CB 03:A4BB: EC        .byte $EC   ; 09
- D 1 - I - 0x00E4CC 03:A4BC: ED        .byte $ED   ; 0A
- D 1 - I - 0x00E4CD 03:A4BD: FB        .byte $FB   ; 0B
- D 1 - I - 0x00E4CE 03:A4BE: FC        .byte $FC   ; 0C
- D 1 - I - 0x00E4CF 03:A4BF: FD        .byte $FD   ; 0D
- D 1 - I - 0x00E4D0 03:A4C0: D0        .byte $D0   ; 0E



off_02_A4C1_00_spr_A:
- D 1 - I - 0x00E4D1 03:A4C1: 00        .byte $00   ; 01
- D 1 - I - 0x00E4D2 03:A4C2: 00        .byte $00   ; 02
- D 1 - I - 0x00E4D3 03:A4C3: 00        .byte $00   ; 03
- D 1 - I - 0x00E4D4 03:A4C4: 00        .byte $00   ; 04
- D 1 - I - 0x00E4D5 03:A4C5: 00        .byte $00   ; 05
- D 1 - I - 0x00E4D6 03:A4C6: 00        .byte $00   ; 06
- D 1 - I - 0x00E4D7 03:A4C7: 00        .byte $00   ; 07
- D 1 - I - 0x00E4D8 03:A4C8: 00        .byte $00   ; 08
- D 1 - I - 0x00E4D9 03:A4C9: 02        .byte $02   ; 09
- D 1 - I - 0x00E4DA 03:A4CA: 02        .byte $02   ; 0A
- D 1 - I - 0x00E4DB 03:A4CB: 00        .byte $00   ; 0B
- D 1 - I - 0x00E4DC 03:A4CC: 03        .byte $03   ; 0C
- D 1 - I - 0x00E4DD 03:A4CD: 03        .byte $03   ; 0D
- D 1 - I - 0x00E4DE 03:A4CE: 03        .byte $03   ; 0E



off_02_A4CF_02_spr_XY:
- D 1 - I - 0x00E4DF 03:A4CF: F0        .byte $F0, $23   ; 01
- D 1 - I - 0x00E4E1 03:A4D1: F8        .byte $F8, $23   ; 02
- D 1 - I - 0x00E4E3 03:A4D3: 00        .byte $00, $23   ; 03
- D 1 - I - 0x00E4E5 03:A4D5: EF        .byte $EF, $1B   ; 04
- D 1 - I - 0x00E4E7 03:A4D7: F7        .byte $F7, $1B   ; 05
- D 1 - I - 0x00E4E9 03:A4D9: FF        .byte $FF, $1B   ; 06
- D 1 - I - 0x00E4EB 03:A4DB: 07        .byte $07, $1B   ; 07
- D 1 - I - 0x00E4ED 03:A4DD: F7        .byte $F7, $13   ; 08
- D 1 - I - 0x00E4EF 03:A4DF: FF        .byte $FF, $13   ; 09
- D 1 - I - 0x00E4F1 03:A4E1: 07        .byte $07, $13   ; 0A
- D 1 - I - 0x00E4F3 03:A4E3: F8        .byte $F8, $0B   ; 0B
- D 1 - I - 0x00E4F5 03:A4E5: 00        .byte $00, $0B   ; 0C
- D 1 - I - 0x00E4F7 03:A4E7: 08        .byte $08, $0B   ; 0D
- D 1 - I - 0x00E4F9 03:A4E9: 04        .byte $04, $03   ; 0E



_off030_A4EB_04:
- D 1 - I - 0x00E4FB 03:A4EB: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 1 - I - 0x00E4FD 03:A4ED: 5A B2     .word sub_06_B25A_00
- - - - - - 0x00E4FF 03:A4EF: 51 B2     .word sub_06_B251_01
@end:
- D 1 - I - 0x00E501 03:A4F1: 01        .byte con_sub_01, $05, $00   ; 
- D 1 - I - 0x00E504 03:A4F4: FC A4     .word off_01_A4FC_spr_T
- D 1 - I - 0x00E506 03:A4F6: 01 A5     .word off_01_A501_spr_XY
- D 1 - I - 0x00E508 03:A4F8: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E509 03:A4F9: 6B A5     .word sub_05_A56B
- D 1 - I - 0x00E50B 03:A4FB: 00        .byte con_sub_00   ; 



off_01_A4FC_spr_T:
- D 1 - I - 0x00E50C 03:A4FC: A3        .byte $A3   ; 01
- D 1 - I - 0x00E50D 03:A4FD: A4        .byte $A4   ; 02
- D 1 - I - 0x00E50E 03:A4FE: E8        .byte $E8   ; 03
- D 1 - I - 0x00E50F 03:A4FF: E9        .byte $E9   ; 04
- D 1 - I - 0x00E510 03:A500: EA        .byte $EA   ; 05



off_01_A501_spr_XY:
- D 1 - I - 0x00E511 03:A501: 03        .byte $03, $2B   ; 01
- D 1 - I - 0x00E513 03:A503: 09        .byte $09, $2B   ; 02
- D 1 - I - 0x00E515 03:A505: F8        .byte $F8, $24   ; 03
- D 1 - I - 0x00E517 03:A507: 00        .byte $00, $23   ; 04
- D 1 - I - 0x00E519 03:A509: 08        .byte $08, $23   ; 05



_off030_A50B_05:
- D 1 - I - 0x00E51B 03:A50B: 02        .byte con_sub_02, $05   ; 
- D 1 - I - 0x00E51D 03:A50D: 1C A5     .word off_02_A51C_00_spr_A
- D 1 - I - 0x00E51F 03:A50F: 17 A5     .word off_02_A517_01_spr_T
- D 1 - I - 0x00E521 03:A511: 21 A5     .word off_02_A521_02_spr_XY
- D 1 - I - 0x00E523 03:A513: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E524 03:A514: 6B A5     .word sub_05_A56B
- D 1 - I - 0x00E526 03:A516: 00        .byte con_sub_00   ; 



off_02_A517_01_spr_T:
- D 1 - I - 0x00E527 03:A517: A8        .byte $A8   ; 01
- D 1 - I - 0x00E528 03:A518: EF        .byte $EF   ; 02
- D 1 - I - 0x00E529 03:A519: FB        .byte $FB   ; 03
- D 1 - I - 0x00E52A 03:A51A: D8        .byte $D8   ; 04
- D 1 - I - 0x00E52B 03:A51B: CE        .byte $CE   ; 05



off_02_A51C_00_spr_A:
- D 1 - I - 0x00E52C 03:A51C: 00        .byte $00   ; 01
- D 1 - I - 0x00E52D 03:A51D: 00        .byte $00   ; 02
- D 1 - I - 0x00E52E 03:A51E: C0        .byte $C0   ; 03
- D 1 - I - 0x00E52F 03:A51F: 00        .byte $00   ; 04
- D 1 - I - 0x00E530 03:A520: 00        .byte $00   ; 05



off_02_A521_02_spr_XY:
- D 1 - I - 0x00E531 03:A521: 03        .byte $03, $2B   ; 01
- D 1 - I - 0x00E533 03:A523: 0B        .byte $0B, $2B   ; 02
- D 1 - I - 0x00E535 03:A525: 0D        .byte $0D, $33   ; 03
- D 1 - I - 0x00E537 03:A527: 02        .byte $02, $23   ; 04
- D 1 - I - 0x00E539 03:A529: 0A        .byte $0A, $23   ; 05



_off030_A52B_09:
- D 1 - I - 0x00E53B 03:A52B: 02        .byte con_sub_02, $10   ; 
- D 1 - I - 0x00E53D 03:A52D: 44 A5     .word off_02_A544_00_spr_A
- D 1 - I - 0x00E53F 03:A52F: 34 A5     .word off_02_A534_01_spr_T
- D 1 - I - 0x00E541 03:A531: FD A6     .word off_02_A6FD_02_spr_XY
- D 1 - I - 0x00E543 03:A533: 00        .byte con_sub_00   ; 



off_02_A534_01_spr_T:
- D 1 - I - 0x00E544 03:A534: A3        .byte $A3   ; 01
- D 1 - I - 0x00E545 03:A535: A4        .byte $A4   ; 02
- D 1 - I - 0x00E546 03:A536: EE        .byte $EE   ; 03
- D 1 - I - 0x00E547 03:A537: 89        .byte $89   ; 04
- D 1 - I - 0x00E548 03:A538: 8A        .byte $8A   ; 05
- D 1 - I - 0x00E549 03:A539: 99        .byte $99   ; 06
- D 1 - I - 0x00E54A 03:A53A: B8        .byte $B8   ; 07
- D 1 - I - 0x00E54B 03:A53B: B9        .byte $B9   ; 08
- D 1 - I - 0x00E54C 03:A53C: 9A        .byte $9A   ; 09
- D 1 - I - 0x00E54D 03:A53D: C8        .byte $C8   ; 0A
- D 1 - I - 0x00E54E 03:A53E: C9        .byte $C9   ; 0B
- D 1 - I - 0x00E54F 03:A53F: C0        .byte $C0   ; 0C
- D 1 - I - 0x00E550 03:A540: C1        .byte $C1   ; 0D
- D 1 - I - 0x00E551 03:A541: C2        .byte $C2   ; 0E
- D 1 - I - 0x00E552 03:A542: D2        .byte $D2   ; 0F
- D 1 - I - 0x00E553 03:A543: D2        .byte $D2   ; 10



off_02_A544_00_spr_A:
- D 1 - I - 0x00E554 03:A544: 00        .byte $00   ; 01
- D 1 - I - 0x00E555 03:A545: 02        .byte $02   ; 02
- D 1 - I - 0x00E556 03:A546: 00        .byte $00   ; 03
- D 1 - I - 0x00E557 03:A547: 00        .byte $00   ; 04
- D 1 - I - 0x00E558 03:A548: 00        .byte $00   ; 05
- D 1 - I - 0x00E559 03:A549: 00        .byte $00   ; 06
- D 1 - I - 0x00E55A 03:A54A: 00        .byte $00   ; 07
- D 1 - I - 0x00E55B 03:A54B: 00        .byte $00   ; 08
- D 1 - I - 0x00E55C 03:A54C: 00        .byte $00   ; 09
- D 1 - I - 0x00E55D 03:A54D: 02        .byte $02   ; 0A
- D 1 - I - 0x00E55E 03:A54E: 02        .byte $02   ; 0B
- D 1 - I - 0x00E55F 03:A54F: 03        .byte $03   ; 0C
- D 1 - I - 0x00E560 03:A550: 03        .byte $03   ; 0D
- D 1 - I - 0x00E561 03:A551: 03        .byte $03   ; 0E
- D 1 - I - 0x00E562 03:A552: 03        .byte $03   ; 0F
- D 1 - I - 0x00E563 03:A553: 03        .byte $03   ; 10



_off030_A554_06:
_off030_A554_10:
- D 1 - I - 0x00E564 03:A554: 02        .byte con_sub_02, $0E   ; 
- D 1 - I - 0x00E566 03:A556: 5D A5     .word off_02_A55D_00_spr_A
- D 1 - I - 0x00E568 03:A558: 3B A1     .word off_02_A13B_01_spr_T
- D 1 - I - 0x00E56A 03:A55A: 57 A1     .word off_02_A157_02_spr_XY
- D 1 - I - 0x00E56C 03:A55C: 00        .byte con_sub_00   ; 



off_02_A55D_00_spr_A:
- D 1 - I - 0x00E56D 03:A55D: 00        .byte $00   ; 01
- D 1 - I - 0x00E56E 03:A55E: 00        .byte $00   ; 02
- D 1 - I - 0x00E56F 03:A55F: 00        .byte $00   ; 03
- D 1 - I - 0x00E570 03:A560: 00        .byte $00   ; 04
- D 1 - I - 0x00E571 03:A561: 00        .byte $00   ; 05
- D 1 - I - 0x00E572 03:A562: 00        .byte $00   ; 06
- D 1 - I - 0x00E573 03:A563: 00        .byte $00   ; 07
- D 1 - I - 0x00E574 03:A564: 00        .byte $00   ; 08
- D 1 - I - 0x00E575 03:A565: 03        .byte $03   ; 09
- D 1 - I - 0x00E576 03:A566: 02        .byte $02   ; 0A
- D 1 - I - 0x00E577 03:A567: 02        .byte $02   ; 0B
- D 1 - I - 0x00E578 03:A568: 03        .byte $03   ; 0C
- D 1 - I - 0x00E579 03:A569: 03        .byte $03   ; 0D
- D 1 - I - 0x00E57A 03:A56A: 03        .byte $03   ; 0E



_off030_A56B_11:
sub_05_A56B:
- D 1 - I - 0x00E57B 03:A56B: 02        .byte con_sub_02, $07   ; 
- D 1 - I - 0x00E57D 03:A56D: 16 98     .word off_02_9816_00_spr_A
- D 1 - I - 0x00E57F 03:A56F: 74 A5     .word off_02_A574_01_spr_T
- D 1 - I - 0x00E581 03:A571: 7B A5     .word off_02_A57B_02_spr_XY
- D 1 - I - 0x00E583 03:A573: 00        .byte con_sub_00   ; 



off_02_A574_01_spr_T:
- D 1 - I - 0x00E584 03:A574: F1        .byte $F1   ; 01
- D 1 - I - 0x00E585 03:A575: FA        .byte $FA   ; 02
- D 1 - I - 0x00E586 03:A576: C5        .byte $C5   ; 03
- D 1 - I - 0x00E587 03:A577: C6        .byte $C6   ; 04
- D 1 - I - 0x00E588 03:A578: 82        .byte $82   ; 05
- D 1 - I - 0x00E589 03:A579: D1        .byte $D1   ; 06
- D 1 - I - 0x00E58A 03:A57A: D0        .byte $D0   ; 07



off_02_A57B_02_spr_XY:
- D 1 - I - 0x00E58B 03:A57B: 02        .byte $02, $1B   ; 01
- D 1 - I - 0x00E58D 03:A57D: 0A        .byte $0A, $1B   ; 02
- D 1 - I - 0x00E58F 03:A57F: FF        .byte $FF, $13   ; 03
- D 1 - I - 0x00E591 03:A581: 07        .byte $07, $13   ; 04
- D 1 - I - 0x00E593 03:A583: FD        .byte $FD, $0B   ; 05
- D 1 - I - 0x00E595 03:A585: 05        .byte $05, $0B   ; 06
- D 1 - I - 0x00E597 03:A587: 05        .byte $05, $03   ; 07



_off030_A589_08:
_off030_A589_12:
- D 1 - I - 0x00E599 03:A589: 02        .byte con_sub_02, $0B   ; 
- D 1 - I - 0x00E59B 03:A58B: 54 A3     .word off_02_A354_00_spr_A
- D 1 - I - 0x00E59D 03:A58D: 7C A1     .word off_02_A17C_01_spr_T
- D 1 - I - 0x00E59F 03:A58F: 9A A1     .word off_02_A19A_02_spr_XY
- D 1 - I - 0x00E5A1 03:A591: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E5A2 03:A592: 79 A3     .word sub_05_A379
- D 1 - I - 0x00E5A4 03:A594: 00        .byte con_sub_00   ; 



_off030_A595_0B:
_off030_A595_13:
- D 1 - I - 0x00E5A5 03:A595: 02        .byte con_sub_02, $0F   ; 
- D 1 - I - 0x00E5A7 03:A597: 9E A5     .word off_02_A59E_00_spr_A
- D 1 - I - 0x00E5A9 03:A599: C1 A1     .word off_02_A1C1_01_spr_T
- D 1 - I - 0x00E5AB 03:A59B: DF A1     .word off_02_A1DF_02_spr_XY
- D 1 - I - 0x00E5AD 03:A59D: 00        .byte con_sub_00   ; 



off_02_A59E_00_spr_A:
- D 1 - I - 0x00E5AE 03:A59E: 00        .byte $00   ; 01
- D 1 - I - 0x00E5AF 03:A59F: 00        .byte $00   ; 02
- D 1 - I - 0x00E5B0 03:A5A0: 00        .byte $00   ; 03
- D 1 - I - 0x00E5B1 03:A5A1: 02        .byte $02   ; 04
- D 1 - I - 0x00E5B2 03:A5A2: 00        .byte $00   ; 05
- D 1 - I - 0x00E5B3 03:A5A3: 00        .byte $00   ; 06
- D 1 - I - 0x00E5B4 03:A5A4: 00        .byte $00   ; 07
- D 1 - I - 0x00E5B5 03:A5A5: 03        .byte $03   ; 08
- D 1 - I - 0x00E5B6 03:A5A6: 02        .byte $02   ; 09
- D 1 - I - 0x00E5B7 03:A5A7: 00        .byte $00   ; 0A
- D 1 - I - 0x00E5B8 03:A5A8: 00        .byte $00   ; 0B
- D 1 - I - 0x00E5B9 03:A5A9: 03        .byte $03   ; 0C
- D 1 - I - 0x00E5BA 03:A5AA: 03        .byte $03   ; 0D
- D 1 - I - 0x00E5BB 03:A5AB: 03        .byte $03   ; 0E
- D 1 - I - 0x00E5BC 03:A5AC: 03        .byte $03   ; 0F



_off030_A5AD_0A:
_off030_A5AD_14:
- D 1 - I - 0x00E5BD 03:A5AD: 02        .byte con_sub_02, $0E   ; 
- D 1 - I - 0x00E5BF 03:A5AF: C4 A5     .word off_02_A5C4_00_spr_A
- D 1 - I - 0x00E5C1 03:A5B1: B6 A5     .word off_02_A5B6_01_spr_T
- D 1 - I - 0x00E5C3 03:A5B3: D2 A5     .word off_02_A5D2_02_spr_XY
- D 1 - I - 0x00E5C5 03:A5B5: 00        .byte con_sub_00   ; 



off_02_A5B6_01_spr_T:
- D 1 - I - 0x00E5C6 03:A5B6: F8        .byte $F8   ; 01
- D 1 - I - 0x00E5C7 03:A5B7: D5        .byte $D5   ; 02
- D 1 - I - 0x00E5C8 03:A5B8: D6        .byte $D6   ; 03
- D 1 - I - 0x00E5C9 03:A5B9: D7        .byte $D7   ; 04
- D 1 - I - 0x00E5CA 03:A5BA: E3        .byte $E3   ; 05
- D 1 - I - 0x00E5CB 03:A5BB: E4        .byte $E4   ; 06
- D 1 - I - 0x00E5CC 03:A5BC: E5        .byte $E5   ; 07
- D 1 - I - 0x00E5CD 03:A5BD: E6        .byte $E6   ; 08
- D 1 - I - 0x00E5CE 03:A5BE: E7        .byte $E7   ; 09
- D 1 - I - 0x00E5CF 03:A5BF: F3        .byte $F3   ; 0A
- D 1 - I - 0x00E5D0 03:A5C0: F4        .byte $F4   ; 0B
- D 1 - I - 0x00E5D1 03:A5C1: F5        .byte $F5   ; 0C
- D 1 - I - 0x00E5D2 03:A5C2: F6        .byte $F6   ; 0D
- D 1 - I - 0x00E5D3 03:A5C3: F7        .byte $F7   ; 0E



off_02_A5C4_00_spr_A:
- D 1 - I - 0x00E5D4 03:A5C4: 03        .byte $03   ; 01
- D 1 - I - 0x00E5D5 03:A5C5: 00        .byte $00   ; 02
- D 1 - I - 0x00E5D6 03:A5C6: 00        .byte $00   ; 03
- D 1 - I - 0x00E5D7 03:A5C7: 00        .byte $00   ; 04
- D 1 - I - 0x00E5D8 03:A5C8: 03        .byte $03   ; 05
- D 1 - I - 0x00E5D9 03:A5C9: 03        .byte $03   ; 06
- D 1 - I - 0x00E5DA 03:A5CA: 00        .byte $00   ; 07
- D 1 - I - 0x00E5DB 03:A5CB: 00        .byte $00   ; 08
- D 1 - I - 0x00E5DC 03:A5CC: 00        .byte $00   ; 09
- D 1 - I - 0x00E5DD 03:A5CD: 03        .byte $03   ; 0A
- D 1 - I - 0x00E5DE 03:A5CE: 03        .byte $03   ; 0B
- D 1 - I - 0x00E5DF 03:A5CF: 00        .byte $00   ; 0C
- D 1 - I - 0x00E5E0 03:A5D0: 00        .byte $00   ; 0D
- D 1 - I - 0x00E5E1 03:A5D1: 00        .byte $00   ; 0E



off_02_A5D2_02_spr_XY:
- D 1 - I - 0x00E5E2 03:A5D2: FE        .byte $FE, $14   ; 01
- D 1 - I - 0x00E5E4 03:A5D4: 07        .byte $07, $14   ; 02
- D 1 - I - 0x00E5E6 03:A5D6: 0F        .byte $0F, $14   ; 03
- D 1 - I - 0x00E5E8 03:A5D8: 17        .byte $17, $14   ; 04
- D 1 - I - 0x00E5EA 03:A5DA: F7        .byte $F7, $0C   ; 05
- D 1 - I - 0x00E5EC 03:A5DC: FF        .byte $FF, $0C   ; 06
- D 1 - I - 0x00E5EE 03:A5DE: 07        .byte $07, $0C   ; 07
- D 1 - I - 0x00E5F0 03:A5E0: 0F        .byte $0F, $0C   ; 08
- D 1 - I - 0x00E5F2 03:A5E2: 17        .byte $17, $0C   ; 09
- D 1 - I - 0x00E5F4 03:A5E4: F7        .byte $F7, $04   ; 0A
- D 1 - I - 0x00E5F6 03:A5E6: FF        .byte $FF, $04   ; 0B
- D 1 - I - 0x00E5F8 03:A5E8: 07        .byte $07, $04   ; 0C
- D 1 - I - 0x00E5FA 03:A5EA: 0F        .byte $0F, $04   ; 0D
- D 1 - I - 0x00E5FC 03:A5EC: 17        .byte $17, $04   ; 0E



_off030_A5EE_07:
- D 1 - I - 0x00E5FE 03:A5EE: 02        .byte con_sub_02, $0B   ; 
- D 1 - I - 0x00E600 03:A5F0: 54 A3     .word off_02_A354_00_spr_A
- D 1 - I - 0x00E602 03:A5F2: 82 A2     .word off_02_A282_01_spr_T
- D 1 - I - 0x00E604 03:A5F4: 98 A2     .word off_02_A298_02_spr_XY
- D 1 - I - 0x00E606 03:A5F6: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E607 03:A5F7: 79 A3     .word sub_05_A379
- D 1 - I - 0x00E609 03:A5F9: 00        .byte con_sub_00   ; 



_off030_A5FA_02:
_off030_A5FA_11:
- D 1 - I - 0x00E60A 03:A5FA: 02        .byte con_sub_02, $10   ; 
- D 1 - I - 0x00E60C 03:A5FC: 05 A6     .word off_02_A605_00_spr_A
- D 1 - I - 0x00E60E 03:A5FE: B7 A2     .word off_02_A2B7_01_spr_T
- D 1 - I - 0x00E610 03:A600: D7 A2     .word off_02_A2D7_02_spr_XY
- D 1 - I - 0x00E612 03:A602: 00        .byte con_sub_00   ; 



off_02_A603_00_spr_A:
- D 1 - I - 0x00E613 03:A603: 02        .byte $02   ; 01
- D 1 - I - 0x00E614 03:A604: 02        .byte $02   ; 02
off_02_A605_00_spr_A:
- D 1 - I - 0x00E615 03:A605: 02        .byte $02   ; 01 (03)
- D 1 - I - 0x00E616 03:A606: 02        .byte $02   ; 02 (04)
- D 1 - I - 0x00E617 03:A607: 02        .byte $02   ; 03 (05)
- D 1 - I - 0x00E618 03:A608: 02        .byte $02   ; 04 (06)
- D 1 - I - 0x00E619 03:A609: 02        .byte $02   ; 05 (07)
- D 1 - I - 0x00E61A 03:A60A: 02        .byte $02   ; 06 (08)
- D 1 - I - 0x00E61B 03:A60B: 02        .byte $02   ; 07 (09)
- D 1 - I - 0x00E61C 03:A60C: 02        .byte $02   ; 08 (0A)
- D 1 - I - 0x00E61D 03:A60D: 03        .byte $03   ; 09 (0B)
- D 1 - I - 0x00E61E 03:A60E: 03        .byte $03   ; 0A (0C)
- D 1 - I - 0x00E61F 03:A60F: 03        .byte $03   ; 0B (0D)
- D 1 - I - 0x00E620 03:A610: 03        .byte $03   ; 0C (0E)
- D 1 - I - 0x00E621 03:A611: 03        .byte $03   ; 0D (0F)
- D 1 - I - 0x00E622 03:A612: 03        .byte $03   ; 0E (10)
- D 1 - I - 0x00E623 03:A613: 02        .byte $02   ; 0F (11)
- D 1 - I - 0x00E624 03:A614: 02        .byte $02   ; 10 (12)



_off030_A615_0C:
- D 1 - I - 0x00E625 03:A615: 02        .byte con_sub_02, $10   ; 
- D 1 - I - 0x00E627 03:A617: 05 A6     .word off_02_A605_00_spr_A
- D 1 - I - 0x00E629 03:A619: 1E A6     .word off_02_A61E_01_spr_T
- D 1 - I - 0x00E62B 03:A61B: 2E A6     .word off_02_A62E_02_spr_XY
- D 1 - I - 0x00E62D 03:A61D: 00        .byte con_sub_00   ; 



off_02_A61E_01_spr_T:
- D 1 - I - 0x00E62E 03:A61E: A3        .byte $A3   ; 01
- D 1 - I - 0x00E62F 03:A61F: A4        .byte $A4   ; 02
- D 1 - I - 0x00E630 03:A620: 89        .byte $89   ; 03
- D 1 - I - 0x00E631 03:A621: 8A        .byte $8A   ; 04
- D 1 - I - 0x00E632 03:A622: 8B        .byte $8B   ; 05
- D 1 - I - 0x00E633 03:A623: 99        .byte $99   ; 06
- D 1 - I - 0x00E634 03:A624: 9A        .byte $9A   ; 07
- D 1 - I - 0x00E635 03:A625: 9B        .byte $9B   ; 08
- D 1 - I - 0x00E636 03:A626: DF        .byte $DF   ; 09
- D 1 - I - 0x00E637 03:A627: AD        .byte $AD   ; 0A
- D 1 - I - 0x00E638 03:A628: AE        .byte $AE   ; 0B
- D 1 - I - 0x00E639 03:A629: C0        .byte $C0   ; 0C
- D 1 - I - 0x00E63A 03:A62A: C1        .byte $C1   ; 0D
- D 1 - I - 0x00E63B 03:A62B: C2        .byte $C2   ; 0E
- D 1 - I - 0x00E63C 03:A62C: D0        .byte $D0   ; 0F
- D 1 - I - 0x00E63D 03:A62D: D2        .byte $D2   ; 10



off_02_A62E_02_spr_XY:
- D 1 - I - 0x00E63E 03:A62E: FB        .byte $FB, $2C   ; 01
- D 1 - I - 0x00E640 03:A630: 03        .byte $03, $2C   ; 02
- D 1 - I - 0x00E642 03:A632: FA        .byte $FA, $24   ; 03
- D 1 - I - 0x00E644 03:A634: 02        .byte $02, $24   ; 04
- D 1 - I - 0x00E646 03:A636: 0A        .byte $0A, $24   ; 05
- D 1 - I - 0x00E648 03:A638: FA        .byte $FA, $1C   ; 06
- D 1 - I - 0x00E64A 03:A63A: 02        .byte $02, $1C   ; 07
- D 1 - I - 0x00E64C 03:A63C: 0A        .byte $0A, $1C   ; 08
- D 1 - I - 0x00E64E 03:A63E: F8        .byte $F8, $14   ; 09
- D 1 - I - 0x00E650 03:A640: 00        .byte $00, $14   ; 0A
- D 1 - I - 0x00E652 03:A642: 08        .byte $08, $14   ; 0B
- D 1 - I - 0x00E654 03:A644: F8        .byte $F8, $0C   ; 0C
- D 1 - I - 0x00E656 03:A646: 00        .byte $00, $0C   ; 0D
- D 1 - I - 0x00E658 03:A648: 08        .byte $08, $0C   ; 0E
- D 1 - I - 0x00E65A 03:A64A: F7        .byte $F7, $04   ; 0F
- D 1 - I - 0x00E65C 03:A64C: 08        .byte $08, $04   ; 10



_off030_A64E_0D:
- D 1 - I - 0x00E65E 03:A64E: 02        .byte con_sub_02, $12   ; 
- D 1 - I - 0x00E660 03:A650: 03 A6     .word off_02_A603_00_spr_A
- D 1 - I - 0x00E662 03:A652: 57 A6     .word off_02_A657_01_spr_T
- D 1 - I - 0x00E664 03:A654: 69 A6     .word off_02_A669_02_spr_XY
- D 1 - I - 0x00E666 03:A656: 00        .byte con_sub_00   ; 



off_02_A657_01_spr_T:
- D 1 - I - 0x00E667 03:A657: 80        .byte $80   ; 01
- D 1 - I - 0x00E668 03:A658: 81        .byte $81   ; 02
- D 1 - I - 0x00E669 03:A659: BD        .byte $BD   ; 03
- D 1 - I - 0x00E66A 03:A65A: BE        .byte $BE   ; 04
- D 1 - I - 0x00E66B 03:A65B: BF        .byte $BF   ; 05
- D 1 - I - 0x00E66C 03:A65C: 91        .byte $91   ; 06
- D 1 - I - 0x00E66D 03:A65D: 92        .byte $92   ; 07
- D 1 - I - 0x00E66E 03:A65E: CF        .byte $CF   ; 08
- D 1 - I - 0x00E66F 03:A65F: A1        .byte $A1   ; 09
- D 1 - I - 0x00E670 03:A660: A2        .byte $A2   ; 0A
- D 1 - I - 0x00E671 03:A661: DF        .byte $DF   ; 0B
- D 1 - I - 0x00E672 03:A662: B1        .byte $B1   ; 0C
- D 1 - I - 0x00E673 03:A663: B2        .byte $B2   ; 0D
- D 1 - I - 0x00E674 03:A664: C0        .byte $C0   ; 0E
- D 1 - I - 0x00E675 03:A665: C1        .byte $C1   ; 0F
- D 1 - I - 0x00E676 03:A666: C2        .byte $C2   ; 10
- D 1 - I - 0x00E677 03:A667: D0        .byte $D0   ; 11
- D 1 - I - 0x00E678 03:A668: D2        .byte $D2   ; 12



off_02_A669_02_spr_XY:
- D 1 - I - 0x00E679 03:A669: F5        .byte $F5, $2C   ; 01
- D 1 - I - 0x00E67B 03:A66B: FD        .byte $FD, $2C   ; 02
- D 1 - I - 0x00E67D 03:A66D: E6        .byte $E6, $22   ; 03
- D 1 - I - 0x00E67F 03:A66F: EE        .byte $EE, $20   ; 04
- D 1 - I - 0x00E681 03:A671: F5        .byte $F5, $24   ; 05
- D 1 - I - 0x00E683 03:A673: FD        .byte $FD, $24   ; 06
- D 1 - I - 0x00E685 03:A675: 05        .byte $05, $24   ; 07
- D 1 - I - 0x00E687 03:A677: F6        .byte $F6, $1C   ; 08
- D 1 - I - 0x00E689 03:A679: FE        .byte $FE, $1C   ; 09
- D 1 - I - 0x00E68B 03:A67B: 06        .byte $06, $1C   ; 0A
- D 1 - I - 0x00E68D 03:A67D: F8        .byte $F8, $14   ; 0B
- D 1 - I - 0x00E68F 03:A67F: 00        .byte $00, $14   ; 0C
- D 1 - I - 0x00E691 03:A681: 08        .byte $08, $14   ; 0D
- D 1 - I - 0x00E693 03:A683: F8        .byte $F8, $0C   ; 0E
- D 1 - I - 0x00E695 03:A685: 00        .byte $00, $0C   ; 0F
- D 1 - I - 0x00E697 03:A687: 08        .byte $08, $0C   ; 10
- D 1 - I - 0x00E699 03:A689: F8        .byte $F8, $04   ; 11
- D 1 - I - 0x00E69B 03:A68B: 08        .byte $08, $04   ; 12



_off030_A68D_04:
_off030_A68D_08:
- D 1 - I - 0x00E69D 03:A68D: 02        .byte con_sub_02, $0F   ; 
- D 1 - I - 0x00E69F 03:A68F: 96 A6     .word off_02_A696_00_spr_A
- D 1 - I - 0x00E6A1 03:A691: 7C A1     .word off_02_A17C_01_spr_T
- D 1 - I - 0x00E6A3 03:A693: 9A A1     .word off_02_A19A_02_spr_XY
- D 1 - I - 0x00E6A5 03:A695: 00        .byte con_sub_00   ; 



off_02_A696_00_spr_A:
- D 1 - I - 0x00E6A6 03:A696: 02        .byte $02   ; 01
- D 1 - I - 0x00E6A7 03:A697: 02        .byte $02   ; 02
- D 1 - I - 0x00E6A8 03:A698: 02        .byte $02   ; 03
- D 1 - I - 0x00E6A9 03:A699: 02        .byte $02   ; 04
- D 1 - I - 0x00E6AA 03:A69A: 02        .byte $02   ; 05
- D 1 - I - 0x00E6AB 03:A69B: 02        .byte $02   ; 06
- D 1 - I - 0x00E6AC 03:A69C: 02        .byte $02   ; 07
- D 1 - I - 0x00E6AD 03:A69D: 02        .byte $02   ; 08
- D 1 - I - 0x00E6AE 03:A69E: 03        .byte $03   ; 09
- D 1 - I - 0x00E6AF 03:A69F: 03        .byte $03   ; 0A
- D 1 - I - 0x00E6B0 03:A6A0: 03        .byte $03   ; 0B
- D 1 - I - 0x00E6B1 03:A6A1: 03        .byte $03   ; 0C
- D 1 - I - 0x00E6B2 03:A6A2: 03        .byte $03   ; 0D
- D 1 - I - 0x00E6B3 03:A6A3: 03        .byte $03   ; 0E
- D 1 - I - 0x00E6B4 03:A6A4: 03        .byte $03   ; 0F



_off030_A6A5_0B:
- D 1 - I - 0x00E6B5 03:A6A5: 02        .byte con_sub_02, $0F   ; 
- D 1 - I - 0x00E6B7 03:A6A7: AE A6     .word off_02_A6AE_00_spr_A
- D 1 - I - 0x00E6B9 03:A6A9: C1 A1     .word off_02_A1C1_01_spr_T
- D 1 - I - 0x00E6BB 03:A6AB: DF A1     .word off_02_A1DF_02_spr_XY
- D 1 - I - 0x00E6BD 03:A6AD: 00        .byte con_sub_00   ; 



off_02_A6AE_00_spr_A:
- D 1 - I - 0x00E6BE 03:A6AE: 02        .byte $02   ; 01
- D 1 - I - 0x00E6BF 03:A6AF: 02        .byte $02   ; 02
- D 1 - I - 0x00E6C0 03:A6B0: 02        .byte $02   ; 03
- D 1 - I - 0x00E6C1 03:A6B1: 02        .byte $02   ; 04
- D 1 - I - 0x00E6C2 03:A6B2: 02        .byte $02   ; 05
- D 1 - I - 0x00E6C3 03:A6B3: 02        .byte $02   ; 06
- D 1 - I - 0x00E6C4 03:A6B4: 02        .byte $02   ; 07
- D 1 - I - 0x00E6C5 03:A6B5: 03        .byte $03   ; 08
- D 1 - I - 0x00E6C6 03:A6B6: 03        .byte $03   ; 09
- D 1 - I - 0x00E6C7 03:A6B7: 03        .byte $03   ; 0A
- D 1 - I - 0x00E6C8 03:A6B8: 02        .byte $02   ; 0B
- D 1 - I - 0x00E6C9 03:A6B9: 02        .byte $02   ; 0C
- D 1 - I - 0x00E6CA 03:A6BA: 03        .byte $03   ; 0D
- D 1 - I - 0x00E6CB 03:A6BB: 03        .byte $03   ; 0E
- D 1 - I - 0x00E6CC 03:A6BC: 02        .byte $02   ; 0F



_off030_A6BD_0A:
- D 1 - I - 0x00E6CD 03:A6BD: 02        .byte con_sub_02, $0E   ; 
- D 1 - I - 0x00E6CF 03:A6BF: C6 A6     .word off_02_A6C6_00_spr_A
- D 1 - I - 0x00E6D1 03:A6C1: 06 A2     .word off_02_A206_01_spr_T
- D 1 - I - 0x00E6D3 03:A6C3: 22 A2     .word off_02_A222_02_spr_XY
- D 1 - I - 0x00E6D5 03:A6C5: 00        .byte con_sub_00   ; 



off_02_A6C6_00_spr_A:
- D 1 - I - 0x00E6D6 03:A6C6: 03        .byte $03   ; 01
- D 1 - I - 0x00E6D7 03:A6C7: 03        .byte $03   ; 02
- D 1 - I - 0x00E6D8 03:A6C8: 02        .byte $02   ; 03
- D 1 - I - 0x00E6D9 03:A6C9: 02        .byte $02   ; 04
- D 1 - I - 0x00E6DA 03:A6CA: 03        .byte $03   ; 05
- D 1 - I - 0x00E6DB 03:A6CB: 03        .byte $03   ; 06
- D 1 - I - 0x00E6DC 03:A6CC: 03        .byte $03   ; 07
- D 1 - I - 0x00E6DD 03:A6CD: 02        .byte $02   ; 08
- D 1 - I - 0x00E6DE 03:A6CE: 02        .byte $02   ; 09
- D 1 - I - 0x00E6DF 03:A6CF: 02        .byte $02   ; 0A
- D 1 - I - 0x00E6E0 03:A6D0: 03        .byte $03   ; 0B
- D 1 - I - 0x00E6E1 03:A6D1: 03        .byte $03   ; 0C
- D 1 - I - 0x00E6E2 03:A6D2: 02        .byte $02   ; 0D
- D 1 - I - 0x00E6E3 03:A6D3: 02        .byte $02   ; 0E



_off030_A6D4_09:
- D 1 - I - 0x00E6E4 03:A6D4: 02        .byte con_sub_02, $10   ; 
- D 1 - I - 0x00E6E6 03:A6D6: ED A6     .word off_02_A6ED_00_spr_A
- D 1 - I - 0x00E6E8 03:A6D8: DD A6     .word off_02_A6DD_01_spr_T
- D 1 - I - 0x00E6EA 03:A6DA: FD A6     .word off_02_A6FD_02_spr_XY
- D 1 - I - 0x00E6EC 03:A6DC: 00        .byte con_sub_00   ; 



off_02_A6DD_01_spr_T:
- D 1 - I - 0x00E6ED 03:A6DD: A3        .byte $A3   ; 01
- D 1 - I - 0x00E6EE 03:A6DE: A4        .byte $A4   ; 02
- D 1 - I - 0x00E6EF 03:A6DF: F9        .byte $F9   ; 03
- D 1 - I - 0x00E6F0 03:A6E0: DA        .byte $DA   ; 04
- D 1 - I - 0x00E6F1 03:A6E1: EE        .byte $EE   ; 05
- D 1 - I - 0x00E6F2 03:A6E2: CE        .byte $CE   ; 06
- D 1 - I - 0x00E6F3 03:A6E3: B8        .byte $B8   ; 07
- D 1 - I - 0x00E6F4 03:A6E4: B9        .byte $B9   ; 08
- D 1 - I - 0x00E6F5 03:A6E5: EF        .byte $EF   ; 09
- D 1 - I - 0x00E6F6 03:A6E6: C8        .byte $C8   ; 0A
- D 1 - I - 0x00E6F7 03:A6E7: C9        .byte $C9   ; 0B
- D 1 - I - 0x00E6F8 03:A6E8: C0        .byte $C0   ; 0C
- D 1 - I - 0x00E6F9 03:A6E9: C1        .byte $C1   ; 0D
- D 1 - I - 0x00E6FA 03:A6EA: C2        .byte $C2   ; 0E
- D 1 - I - 0x00E6FB 03:A6EB: D2        .byte $D2   ; 0F
- D 1 - I - 0x00E6FC 03:A6EC: D2        .byte $D2   ; 10



off_02_A6ED_00_spr_A:
- D 1 - I - 0x00E6FD 03:A6ED: 02        .byte $02   ; 01
- D 1 - I - 0x00E6FE 03:A6EE: 02        .byte $02   ; 02
- D 1 - I - 0x00E6FF 03:A6EF: 02        .byte $02   ; 03
- D 1 - I - 0x00E700 03:A6F0: 02        .byte $02   ; 04
- D 1 - I - 0x00E701 03:A6F1: 02        .byte $02   ; 05
- D 1 - I - 0x00E702 03:A6F2: 02        .byte $02   ; 06
- D 1 - I - 0x00E703 03:A6F3: 02        .byte $02   ; 07
- D 1 - I - 0x00E704 03:A6F4: 02        .byte $02   ; 08
- D 1 - I - 0x00E705 03:A6F5: 03        .byte $03   ; 09
- D 1 - I - 0x00E706 03:A6F6: 03        .byte $03   ; 0A
- D 1 - I - 0x00E707 03:A6F7: 03        .byte $03   ; 0B
- D 1 - I - 0x00E708 03:A6F8: 03        .byte $03   ; 0C
- D 1 - I - 0x00E709 03:A6F9: 03        .byte $03   ; 0D
- D 1 - I - 0x00E70A 03:A6FA: 03        .byte $03   ; 0E
- D 1 - I - 0x00E70B 03:A6FB: 03        .byte $03   ; 0F
- D 1 - I - 0x00E70C 03:A6FC: 03        .byte $03   ; 10



off_02_A6FD_02_spr_XY:
- D 1 - I - 0x00E70D 03:A6FD: F7        .byte $F7, $2A   ; 01
- D 1 - I - 0x00E70F 03:A6FF: FF        .byte $FF, $2A   ; 02
- D 1 - I - 0x00E711 03:A701: F9        .byte $F9, $22   ; 03
- D 1 - I - 0x00E713 03:A703: 01        .byte $01, $22   ; 04
- D 1 - I - 0x00E715 03:A705: 09        .byte $09, $22   ; 05
- D 1 - I - 0x00E717 03:A707: FD        .byte $FD, $1A   ; 06
- D 1 - I - 0x00E719 03:A709: 05        .byte $05, $1A   ; 07
- D 1 - I - 0x00E71B 03:A70B: 0D        .byte $0D, $1A   ; 08
- D 1 - I - 0x00E71D 03:A70D: FD        .byte $FD, $12   ; 09
- D 1 - I - 0x00E71F 03:A70F: 05        .byte $05, $12   ; 0A
- D 1 - I - 0x00E721 03:A711: 0D        .byte $0D, $12   ; 0B
- D 1 - I - 0x00E723 03:A713: FE        .byte $FE, $0A   ; 0C
- D 1 - I - 0x00E725 03:A715: 06        .byte $06, $0A   ; 0D
- D 1 - I - 0x00E727 03:A717: 0E        .byte $0E, $0A   ; 0E
- D 1 - I - 0x00E729 03:A719: 00        .byte $00, $02   ; 0F
- D 1 - I - 0x00E72B 03:A71B: 0F        .byte $0F, $02   ; 10



_off030_A71D_06:
- D 1 - I - 0x00E72D 03:A71D: 02        .byte con_sub_02, $0E   ; 
- D 1 - I - 0x00E72F 03:A71F: 26 A7     .word off_02_A726_00_spr_A
- D 1 - I - 0x00E731 03:A721: 3B A1     .word off_02_A13B_01_spr_T
- D 1 - I - 0x00E733 03:A723: 57 A1     .word off_02_A157_02_spr_XY
- D 1 - I - 0x00E735 03:A725: 00        .byte con_sub_00   ; 



off_02_A726_00_spr_A:
- D 1 - I - 0x00E736 03:A726: 02        .byte $02   ; 01
- D 1 - I - 0x00E737 03:A727: 02        .byte $02   ; 02
- D 1 - I - 0x00E738 03:A728: 02        .byte $02   ; 03
- D 1 - I - 0x00E739 03:A729: 02        .byte $02   ; 04
- D 1 - I - 0x00E73A 03:A72A: 02        .byte $02   ; 05
- D 1 - I - 0x00E73B 03:A72B: 02        .byte $02   ; 06
- D 1 - I - 0x00E73C 03:A72C: 02        .byte $02   ; 07
- D 1 - I - 0x00E73D 03:A72D: 02        .byte $02   ; 08
- D 1 - I - 0x00E73E 03:A72E: 03        .byte $03   ; 09
- D 1 - I - 0x00E73F 03:A72F: 03        .byte $03   ; 0A
- D 1 - I - 0x00E740 03:A730: 03        .byte $03   ; 0B
- D 1 - I - 0x00E741 03:A731: 03        .byte $03   ; 0C
- D 1 - I - 0x00E742 03:A732: 03        .byte $03   ; 0D
- D 1 - I - 0x00E743 03:A733: 03        .byte $03   ; 0E



_off030_A734_05:
- D 1 - I - 0x00E744 03:A734: 02        .byte con_sub_02, $0F   ; 
- D 1 - I - 0x00E746 03:A736: 05 A6     .word off_02_A605_00_spr_A
- D 1 - I - 0x00E748 03:A738: 3D A7     .word off_02_A73D_01_spr_T
- D 1 - I - 0x00E74A 03:A73A: CB A0     .word off_02_A0CB_02_spr_XY
- D 1 - I - 0x00E74C 03:A73C: 00        .byte con_sub_00   ; 



off_02_A73D_01_spr_T:
- D 1 - I - 0x00E74D 03:A73D: 80        .byte $80   ; 01
- D 1 - I - 0x00E74E 03:A73E: 81        .byte $81   ; 02
- D 1 - I - 0x00E74F 03:A73F: 90        .byte $90   ; 03
- D 1 - I - 0x00E750 03:A740: 91        .byte $91   ; 04
- D 1 - I - 0x00E751 03:A741: 92        .byte $92   ; 05
- D 1 - I - 0x00E752 03:A742: A0        .byte $A0   ; 06
- D 1 - I - 0x00E753 03:A743: A1        .byte $A1   ; 07
- D 1 - I - 0x00E754 03:A744: A2        .byte $A2   ; 08
- D 1 - I - 0x00E755 03:A745: D8        .byte $D8   ; 09
- D 1 - I - 0x00E756 03:A746: D9        .byte $D9   ; 0A
- D 1 - I - 0x00E757 03:A747: B2        .byte $B2   ; 0B
- D 1 - I - 0x00E758 03:A748: E8        .byte $E8   ; 0C
- D 1 - I - 0x00E759 03:A749: E9        .byte $E9   ; 0D
- D 1 - I - 0x00E75A 03:A74A: EA        .byte $EA   ; 0E
- D 1 - I - 0x00E75B 03:A74B: D2        .byte $D2   ; 0F



_off030_A74C_00:
- D 1 - I - 0x00E75C 03:A74C: 02        .byte con_sub_02, $10   ; 
- D 1 - I - 0x00E75E 03:A74E: 05 A6     .word off_02_A605_00_spr_A
- D 1 - I - 0x00E760 03:A750: 00 A3     .word off_02_A300_01_spr_T
- D 1 - I - 0x00E762 03:A752: 10 A3     .word off_02_A310_02_spr_XY
- D 1 - I - 0x00E764 03:A754: 00        .byte con_sub_00   ; 



off_02_A755_00_spr_A:
- D 1 - I - 0x00E765 03:A755: 00        .byte $00   ; 01
- D 1 - I - 0x00E766 03:A756: 00        .byte $00   ; 02
- D 1 - I - 0x00E767 03:A757: 00        .byte $00   ; 03
- D 1 - I - 0x00E768 03:A758: 00        .byte $00   ; 04
- D 1 - I - 0x00E769 03:A759: 03        .byte $03   ; 05
- D 1 - I - 0x00E76A 03:A75A: 03        .byte $03   ; 06
off_02_A75B_00_spr_A:
- D 1 - I - 0x00E76B 03:A75B: 03        .byte $03   ; 01 (07)
- D 1 - I - 0x00E76C 03:A75C: 03        .byte $03   ; 02 (08)
- D 1 - I - 0x00E76D 03:A75D: 03        .byte $03   ; 03
- D 1 - I - 0x00E76E 03:A75E: 03        .byte $03   ; 04
- D 1 - I - 0x00E76F 03:A75F: 03        .byte $03   ; 05
- D 1 - I - 0x00E770 03:A760: 03        .byte $03   ; 06
- D 1 - I - 0x00E771 03:A761: 02        .byte $02   ; 07
- D 1 - I - 0x00E772 03:A762: 02        .byte $02   ; 08



_off030_A763_10:
- D 1 - I - 0x00E773 03:A763: 02        .byte con_sub_02, $14   ; 
- D 1 - I - 0x00E775 03:A765: 80 A7     .word off_02_A780_00_spr_A
- D 1 - I - 0x00E777 03:A767: 6C A7     .word off_02_A76C_01_spr_T
- D 1 - I - 0x00E779 03:A769: 94 A7     .word off_02_A794_02_spr_XY
- D 1 - I - 0x00E77B 03:A76B: 00        .byte con_sub_00   ; 



off_02_A76C_01_spr_T:
- D 1 - I - 0x00E77C 03:A76C: BA        .byte $BA   ; 01
- D 1 - I - 0x00E77D 03:A76D: BB        .byte $BB   ; 02
- D 1 - I - 0x00E77E 03:A76E: BC        .byte $BC   ; 03
- D 1 - I - 0x00E77F 03:A76F: CA        .byte $CA   ; 04
- D 1 - I - 0x00E780 03:A770: CB        .byte $CB   ; 05
- D 1 - I - 0x00E781 03:A771: CC        .byte $CC   ; 06
- D 1 - I - 0x00E782 03:A772: CD        .byte $CD   ; 07
- D 1 - I - 0x00E783 03:A773: FA        .byte $FA   ; 08
- D 1 - I - 0x00E784 03:A774: FB        .byte $FB   ; 09
- D 1 - I - 0x00E785 03:A775: FE        .byte $FE   ; 0A
- D 1 - I - 0x00E786 03:A776: FF        .byte $FF   ; 0B
- D 1 - I - 0x00E787 03:A777: A8        .byte $A8   ; 0C
- D 1 - I - 0x00E788 03:A778: 82        .byte $82   ; 0D
- D 1 - I - 0x00E789 03:A779: DB        .byte $DB   ; 0E
- D 1 - I - 0x00E78A 03:A77A: DC        .byte $DC   ; 0F
- D 1 - I - 0x00E78B 03:A77B: DD        .byte $DD   ; 10
- D 1 - I - 0x00E78C 03:A77C: EB        .byte $EB   ; 11
- D 1 - I - 0x00E78D 03:A77D: EC        .byte $EC   ; 12
- D 1 - I - 0x00E78E 03:A77E: ED        .byte $ED   ; 13
- D 1 - I - 0x00E78F 03:A77F: FD        .byte $FD   ; 14



off_02_A780_00_spr_A:
- D 1 - I - 0x00E790 03:A780: 02        .byte $02   ; 01
- D 1 - I - 0x00E791 03:A781: 02        .byte $02   ; 02
- D 1 - I - 0x00E792 03:A782: 02        .byte $02   ; 03
- D 1 - I - 0x00E793 03:A783: 02        .byte $02   ; 04
- D 1 - I - 0x00E794 03:A784: 02        .byte $02   ; 05
- D 1 - I - 0x00E795 03:A785: 02        .byte $02   ; 06
- D 1 - I - 0x00E796 03:A786: 02        .byte $02   ; 07
- D 1 - I - 0x00E797 03:A787: 02        .byte $02   ; 08
- D 1 - I - 0x00E798 03:A788: 02        .byte $02   ; 09
- D 1 - I - 0x00E799 03:A789: 02        .byte $02   ; 0A
- D 1 - I - 0x00E79A 03:A78A: 03        .byte $03   ; 0B
- D 1 - I - 0x00E79B 03:A78B: 02        .byte $02   ; 0C
- D 1 - I - 0x00E79C 03:A78C: 02        .byte $02   ; 0D
- D 1 - I - 0x00E79D 03:A78D: 03        .byte $03   ; 0E
- D 1 - I - 0x00E79E 03:A78E: 03        .byte $03   ; 0F
- D 1 - I - 0x00E79F 03:A78F: 03        .byte $03   ; 10
- D 1 - I - 0x00E7A0 03:A790: 03        .byte $03   ; 11
- D 1 - I - 0x00E7A1 03:A791: 03        .byte $03   ; 12
- D 1 - I - 0x00E7A2 03:A792: 03        .byte $03   ; 13
- D 1 - I - 0x00E7A3 03:A793: 02        .byte $02   ; 14



off_02_A794_02_spr_XY:
- D 1 - I - 0x00E7A4 03:A794: F8        .byte $F8, $2C   ; 01
- D 1 - I - 0x00E7A6 03:A796: 00        .byte $00, $2C   ; 02
- D 1 - I - 0x00E7A8 03:A798: 08        .byte $08, $2C   ; 03
- D 1 - I - 0x00E7AA 03:A79A: F8        .byte $F8, $24   ; 04
- D 1 - I - 0x00E7AC 03:A79C: 00        .byte $00, $24   ; 05
- D 1 - I - 0x00E7AE 03:A79E: 08        .byte $08, $24   ; 06
- D 1 - I - 0x00E7B0 03:A7A0: 10        .byte $10, $24   ; 07
- D 1 - I - 0x00E7B2 03:A7A2: F5        .byte $F5, $1C   ; 08
- D 1 - I - 0x00E7B4 03:A7A4: FD        .byte $FD, $1C   ; 09
- D 1 - I - 0x00E7B6 03:A7A6: 05        .byte $05, $1C   ; 0A
- D 1 - I - 0x00E7B8 03:A7A8: 0D        .byte $0D, $1C   ; 0B
- D 1 - I - 0x00E7BA 03:A7AA: 15        .byte $15, $1C   ; 0C
- D 1 - I - 0x00E7BC 03:A7AC: F7        .byte $F7, $14   ; 0D
- D 1 - I - 0x00E7BE 03:A7AE: FF        .byte $FF, $14   ; 0E
- D 1 - I - 0x00E7C0 03:A7B0: 07        .byte $07, $14   ; 0F
- D 1 - I - 0x00E7C2 03:A7B2: 0F        .byte $0F, $14   ; 10
- D 1 - I - 0x00E7C4 03:A7B4: FF        .byte $FF, $0C   ; 11
- D 1 - I - 0x00E7C6 03:A7B6: 07        .byte $07, $0C   ; 12
- D 1 - I - 0x00E7C8 03:A7B8: 0F        .byte $0F, $0C   ; 13
- D 1 - I - 0x00E7CA 03:A7BA: 0F        .byte $0F, $04   ; 14



_off030_A7BC_01:
- D 1 - I - 0x00E7CC 03:A7BC: 02        .byte con_sub_02, $0B   ; 
- D 1 - I - 0x00E7CE 03:A7BE: 05 A6     .word off_02_A605_00_spr_A
- D 1 - I - 0x00E7D0 03:A7C0: C8 A7     .word off_02_A7C8_01_spr_T
- D 1 - I - 0x00E7D2 03:A7C2: D3 A7     .word off_02_A7D3_02_spr_XY
- D 1 - I - 0x00E7D4 03:A7C4: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E7D5 03:A7C5: 83 A8     .word sub_05_A883
- D 1 - I - 0x00E7D7 03:A7C7: 00        .byte con_sub_00   ; 



off_02_A7C8_01_spr_T:
- D 1 - I - 0x00E7D8 03:A7C8: 80        .byte $80   ; 01
- D 1 - I - 0x00E7D9 03:A7C9: 81        .byte $81   ; 02
- D 1 - I - 0x00E7DA 03:A7CA: 90        .byte $90   ; 03
- D 1 - I - 0x00E7DB 03:A7CB: 91        .byte $91   ; 04
- D 1 - I - 0x00E7DC 03:A7CC: 92        .byte $92   ; 05
- D 1 - I - 0x00E7DD 03:A7CD: A0        .byte $A0   ; 06
- D 1 - I - 0x00E7DE 03:A7CE: A1        .byte $A1   ; 07
- D 1 - I - 0x00E7DF 03:A7CF: A2        .byte $A2   ; 08
- D 1 - I - 0x00E7E0 03:A7D0: F0        .byte $F0   ; 09
- D 1 - I - 0x00E7E1 03:A7D1: B1        .byte $B1   ; 0A
- D 1 - I - 0x00E7E2 03:A7D2: F2        .byte $F2   ; 0B



off_02_A7D3_02_spr_XY:
- D 1 - I - 0x00E7E3 03:A7D3: F8        .byte $F8, $2B   ; 01
- D 1 - I - 0x00E7E5 03:A7D5: 00        .byte $00, $2B   ; 02
- D 1 - I - 0x00E7E7 03:A7D7: F8        .byte $F8, $23   ; 03
- D 1 - I - 0x00E7E9 03:A7D9: 00        .byte $00, $23   ; 04
- D 1 - I - 0x00E7EB 03:A7DB: 08        .byte $08, $23   ; 05
- D 1 - I - 0x00E7ED 03:A7DD: F8        .byte $F8, $1B   ; 06
- D 1 - I - 0x00E7EF 03:A7DF: 00        .byte $00, $1B   ; 07
- D 1 - I - 0x00E7F1 03:A7E1: 08        .byte $08, $1B   ; 08
- D 1 - I - 0x00E7F3 03:A7E3: F8        .byte $F8, $13   ; 09
- D 1 - I - 0x00E7F5 03:A7E5: 00        .byte $00, $13   ; 0A
- D 1 - I - 0x00E7F7 03:A7E7: 08        .byte $08, $13   ; 0B



_off030_A7E9_07:
- D 1 - I - 0x00E7F9 03:A7E9: 02        .byte con_sub_02, $0B   ; 
- D 1 - I - 0x00E7FB 03:A7EB: 05 A6     .word off_02_A605_00_spr_A
- D 1 - I - 0x00E7FD 03:A7ED: 82 A2     .word off_02_A282_01_spr_T
- D 1 - I - 0x00E7FF 03:A7EF: 98 A2     .word off_02_A298_02_spr_XY
- D 1 - I - 0x00E801 03:A7F1: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E802 03:A7F2: 83 A8     .word sub_05_A883
- D 1 - I - 0x00E804 03:A7F4: 00        .byte con_sub_00   ; 



_off030_A7F5_0E:
- D 1 - I - 0x00E805 03:A7F5: 02        .byte con_sub_02, $10   ; 
- D 1 - I - 0x00E807 03:A7F7: 4F A8     .word off_02_A84F_00_spr_A
- D 1 - I - 0x00E809 03:A7F9: FE A7     .word off_02_A7FE_01_spr_T
- D 1 - I - 0x00E80B 03:A7FB: 0E A8     .word off_02_A80E_02_spr_XY
- D 1 - I - 0x00E80D 03:A7FD: 00        .byte con_sub_00   ; 



off_02_A7FE_01_spr_T:
- D 1 - I - 0x00E80E 03:A7FE: 80        .byte $80   ; 01
- D 1 - I - 0x00E80F 03:A7FF: 81        .byte $81   ; 02
- D 1 - I - 0x00E810 03:A800: 8C        .byte $8C   ; 03
- D 1 - I - 0x00E811 03:A801: 8D        .byte $8D   ; 04
- D 1 - I - 0x00E812 03:A802: 8E        .byte $8E   ; 05
- D 1 - I - 0x00E813 03:A803: 9C        .byte $9C   ; 06
- D 1 - I - 0x00E814 03:A804: 9D        .byte $9D   ; 07
- D 1 - I - 0x00E815 03:A805: 9E        .byte $9E   ; 08
- D 1 - I - 0x00E816 03:A806: AC        .byte $AC   ; 09
- D 1 - I - 0x00E817 03:A807: AD        .byte $AD   ; 0A
- D 1 - I - 0x00E818 03:A808: AF        .byte $AF   ; 0B
- D 1 - I - 0x00E819 03:A809: C0        .byte $C0   ; 0C
- D 1 - I - 0x00E81A 03:A80A: C2        .byte $C2   ; 0D
- D 1 - I - 0x00E81B 03:A80B: C1        .byte $C1   ; 0E
- D 1 - I - 0x00E81C 03:A80C: D0        .byte $D0   ; 0F
- D 1 - I - 0x00E81D 03:A80D: D2        .byte $D2   ; 10



off_02_A80E_02_spr_XY:
- D 1 - I - 0x00E81E 03:A80E: 02        .byte $02, $2C   ; 01
- D 1 - I - 0x00E820 03:A810: 0A        .byte $0A, $2C   ; 02
- D 1 - I - 0x00E822 03:A812: FE        .byte $FE, $24   ; 03
- D 1 - I - 0x00E824 03:A814: 06        .byte $06, $24   ; 04
- D 1 - I - 0x00E826 03:A816: 0E        .byte $0E, $24   ; 05
- D 1 - I - 0x00E828 03:A818: FE        .byte $FE, $1C   ; 06
- D 1 - I - 0x00E82A 03:A81A: 06        .byte $06, $1C   ; 07
- D 1 - I - 0x00E82C 03:A81C: 0E        .byte $0E, $1C   ; 08
- D 1 - I - 0x00E82E 03:A81E: F9        .byte $F9, $14   ; 09
- D 1 - I - 0x00E830 03:A820: 01        .byte $01, $14   ; 0A
- D 1 - I - 0x00E832 03:A822: 09        .byte $09, $14   ; 0B
- D 1 - I - 0x00E834 03:A824: F9        .byte $F9, $0C   ; 0C
- D 1 - I - 0x00E836 03:A826: 08        .byte $08, $0C   ; 0D
- D 1 - I - 0x00E838 03:A828: 01        .byte $01, $0C   ; 0E
- D 1 - I - 0x00E83A 03:A82A: F7        .byte $F7, $04   ; 0F
- D 1 - I - 0x00E83C 03:A82C: 08        .byte $08, $04   ; 10



_off030_A82E_0F:
- D 1 - I - 0x00E83E 03:A82E: 02        .byte con_sub_02, $12   ; 
- D 1 - I - 0x00E840 03:A830: 4D A8     .word off_02_A84D_00_spr_A
- D 1 - I - 0x00E842 03:A832: 37 A8     .word off_02_A837_01_spr_T
- D 1 - I - 0x00E844 03:A834: 5F A8     .word off_02_A85F_02_spr_XY
- D 1 - I - 0x00E846 03:A836: 00        .byte con_sub_00   ; 



off_02_A837_01_spr_T:
- D 1 - I - 0x00E847 03:A837: A3        .byte $A3   ; 01
- D 1 - I - 0x00E848 03:A838: A4        .byte $A4   ; 02
- D 1 - I - 0x00E849 03:A839: B3        .byte $B3   ; 03
- D 1 - I - 0x00E84A 03:A83A: B4        .byte $B4   ; 04
- D 1 - I - 0x00E84B 03:A83B: 92        .byte $92   ; 05
- D 1 - I - 0x00E84C 03:A83C: A9        .byte $A9   ; 06
- D 1 - I - 0x00E84D 03:A83D: AA        .byte $AA   ; 07
- D 1 - I - 0x00E84E 03:A83E: AB        .byte $AB   ; 08
- D 1 - I - 0x00E84F 03:A83F: A1        .byte $A1   ; 09
- D 1 - I - 0x00E850 03:A840: A2        .byte $A2   ; 0A
- D 1 - I - 0x00E851 03:A841: AC        .byte $AC   ; 0B
- D 1 - I - 0x00E852 03:A842: B1        .byte $B1   ; 0C
- D 1 - I - 0x00E853 03:A843: B2        .byte $B2   ; 0D
- D 1 - I - 0x00E854 03:A844: C0        .byte $C0   ; 0E
- D 1 - I - 0x00E855 03:A845: C1        .byte $C1   ; 0F
- D 1 - I - 0x00E856 03:A846: C2        .byte $C2   ; 10
- D 1 - I - 0x00E857 03:A847: D0        .byte $D0   ; 11
- D 1 - I - 0x00E858 03:A848: D2        .byte $D2   ; 12



off_02_A849_00_spr_A:
- D 1 - I - 0x00E859 03:A849: 00        .byte $00   ; 01
- D 1 - I - 0x00E85A 03:A84A: 00        .byte $00   ; 02
off_02_A84B_00_spr_A:
- D 1 - I - 0x00E85B 03:A84B: 00        .byte $00   ; 01 (03)
- D 1 - I - 0x00E85C 03:A84C: 00        .byte $00   ; 02 (04)
off_02_A84D_00_spr_A:
- D 1 - I - 0x00E85D 03:A84D: 02        .byte $02   ; 01 (05) (03)
- D 1 - I - 0x00E85E 03:A84E: 02        .byte $02   ; 02 (06) (04)
off_02_A84F_00_spr_A:
- D 1 - I - 0x00E85F 03:A84F: 02        .byte $02   ; 01 (07) (05) (03)
- D 1 - I - 0x00E860 03:A850: 02        .byte $02   ; 02 (08) (06) (04)
- D 1 - I - 0x00E861 03:A851: 02        .byte $02   ; 03 (09) (07) (05)
- D 1 - I - 0x00E862 03:A852: 02        .byte $02   ; 04 (0A) (08) (06)
- D 1 - I - 0x00E863 03:A853: 02        .byte $02   ; 05 (0B) (09) (07)
- D 1 - I - 0x00E864 03:A854: 02        .byte $02   ; 06 (0C) (0A) (08)
- D 1 - I - 0x00E865 03:A855: 02        .byte $02   ; 07           (09)
- D 1 - I - 0x00E866 03:A856: 02        .byte $02   ; 08           (0A)
- D 1 - I - 0x00E867 03:A857: 03        .byte $03   ; 09           (0B)
- D 1 - I - 0x00E868 03:A858: 03        .byte $03   ; 0A           (0C)
- D 1 - I - 0x00E869 03:A859: 03        .byte $03   ; 0B           (0D)
- D 1 - I - 0x00E86A 03:A85A: 03        .byte $03   ; 0C           (0E)
- D 1 - I - 0x00E86B 03:A85B: 03        .byte $03   ; 0D           (0F)
- D 1 - I - 0x00E86C 03:A85C: 03        .byte $03   ; 0E           (10)
- D 1 - I - 0x00E86D 03:A85D: 02        .byte $02   ; 0F           (11)
- D 1 - I - 0x00E86E 03:A85E: 02        .byte $02   ; 10           (12)



off_02_A85F_02_spr_XY:
- D 1 - I - 0x00E86F 03:A85F: F5        .byte $F5, $2C   ; 01
- D 1 - I - 0x00E871 03:A861: FD        .byte $FD, $2C   ; 02
- D 1 - I - 0x00E873 03:A863: F5        .byte $F5, $24   ; 03
- D 1 - I - 0x00E875 03:A865: FD        .byte $FD, $24   ; 04
- D 1 - I - 0x00E877 03:A867: 05        .byte $05, $24   ; 05
- D 1 - I - 0x00E879 03:A869: E6        .byte $E6, $1C   ; 06
- D 1 - I - 0x00E87B 03:A86B: EE        .byte $EE, $1C   ; 07
- D 1 - I - 0x00E87D 03:A86D: F6        .byte $F6, $1C   ; 08
- D 1 - I - 0x00E87F 03:A86F: FE        .byte $FE, $1C   ; 09
- D 1 - I - 0x00E881 03:A871: 06        .byte $06, $1C   ; 0A
- D 1 - I - 0x00E883 03:A873: F7        .byte $F7, $14   ; 0B
- D 1 - I - 0x00E885 03:A875: FF        .byte $FF, $14   ; 0C
- D 1 - I - 0x00E887 03:A877: 07        .byte $07, $14   ; 0D
- D 1 - I - 0x00E889 03:A879: F7        .byte $F7, $0C   ; 0E
- D 1 - I - 0x00E88B 03:A87B: FF        .byte $FF, $0C   ; 0F
- D 1 - I - 0x00E88D 03:A87D: 07        .byte $07, $0C   ; 10
- D 1 - I - 0x00E88F 03:A87F: F8        .byte $F8, $04   ; 11
- D 1 - I - 0x00E891 03:A881: 08        .byte $08, $04   ; 12



sub_05_A883:
- D 1 - I - 0x00E893 03:A883: 01        .byte con_sub_01, $04, $03   ; 
- D 1 - I - 0x00E896 03:A886: 39 A3     .word off_01_A339_spr_T
- D 1 - I - 0x00E898 03:A888: 41 A3     .word off_01_A341_spr_XY
- D 1 - I - 0x00E89A 03:A88A: 00        .byte con_sub_00   ; 



_off030_A88B_00:
- D 1 - I - 0x00E89B 03:A88B: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E89C 03:A88C: F2 A8     .word sub_05_A8F2
sub_05_A88E:
- D 1 - I - 0x00E89E 03:A88E: 01        .byte con_sub_01, $04, $02   ; 
- D 1 - I - 0x00E8A1 03:A891: 96 A8     .word off_01_A896_spr_T
- D 1 - I - 0x00E8A3 03:A893: 9A A8     .word off_01_A89A_spr_XY
- D 1 - I - 0x00E8A5 03:A895: 00        .byte con_sub_00   ; 



off_01_A896_spr_T:
- D 1 - I - 0x00E8A6 03:A896: B0        .byte $B0   ; 01
- D 1 - I - 0x00E8A7 03:A897: B1        .byte $B1   ; 02
- D 1 - I - 0x00E8A8 03:A898: C0        .byte $C0   ; 03
- D 1 - I - 0x00E8A9 03:A899: C1        .byte $C1   ; 04



off_01_A89A_spr_XY:
- D 1 - I - 0x00E8AA 03:A89A: FC        .byte $FC, $0C   ; 01
- D 1 - I - 0x00E8AC 03:A89C: 04        .byte $04, $0C   ; 02
- D 1 - I - 0x00E8AE 03:A89E: FC        .byte $FC, $04   ; 03
- D 1 - I - 0x00E8B0 03:A8A0: 04        .byte $04, $04   ; 04



_off030_A8A2_01:
- D 1 - I - 0x00E8B2 03:A8A2: 02        .byte con_sub_02, $0C   ; 
- D 1 - I - 0x00E8B4 03:A8A4: B7 A8     .word off_02_A8B7_00_spr_A
- D 1 - I - 0x00E8B6 03:A8A6: AB A8     .word off_02_A8AB_01_spr_T
- D 1 - I - 0x00E8B8 03:A8A8: C3 A8     .word off_02_A8C3_02_spr_XY
- D 1 - I - 0x00E8BA 03:A8AA: 00        .byte con_sub_00   ; 



off_02_A8AB_01_spr_T:
- D 1 - I - 0x00E8BB 03:A8AB: 80        .byte $80   ; 01
- D 1 - I - 0x00E8BC 03:A8AC: 81        .byte $81   ; 02
- D 1 - I - 0x00E8BD 03:A8AD: 82        .byte $82   ; 03
- D 1 - I - 0x00E8BE 03:A8AE: 90        .byte $90   ; 04
- D 1 - I - 0x00E8BF 03:A8AF: 91        .byte $91   ; 05
- D 1 - I - 0x00E8C0 03:A8B0: 92        .byte $92   ; 06
- D 1 - I - 0x00E8C1 03:A8B1: A0        .byte $A0   ; 07
- D 1 - I - 0x00E8C2 03:A8B2: A1        .byte $A1   ; 08
- D 1 - I - 0x00E8C3 03:A8B3: E0        .byte $E0   ; 09
- D 1 - I - 0x00E8C4 03:A8B4: E1        .byte $E1   ; 0A
- D 1 - I - 0x00E8C5 03:A8B5: F0        .byte $F0   ; 0B
- D 1 - I - 0x00E8C6 03:A8B6: F1        .byte $F1   ; 0C



off_02_A8B7_00_spr_A:
- D 1 - I - 0x00E8C7 03:A8B7: 00        .byte $00   ; 01
- D 1 - I - 0x00E8C8 03:A8B8: 00        .byte $00   ; 02
- D 1 - I - 0x00E8C9 03:A8B9: 03        .byte $03   ; 03
- D 1 - I - 0x00E8CA 03:A8BA: 03        .byte $03   ; 04
- D 1 - I - 0x00E8CB 03:A8BB: 03        .byte $03   ; 05
- D 1 - I - 0x00E8CC 03:A8BC: 03        .byte $03   ; 06
- D 1 - I - 0x00E8CD 03:A8BD: 03        .byte $03   ; 07
- D 1 - I - 0x00E8CE 03:A8BE: 03        .byte $03   ; 08
- D 1 - I - 0x00E8CF 03:A8BF: 02        .byte $02   ; 09
- D 1 - I - 0x00E8D0 03:A8C0: 02        .byte $02   ; 0A
- D 1 - I - 0x00E8D1 03:A8C1: 02        .byte $02   ; 0B
- D 1 - I - 0x00E8D2 03:A8C2: 02        .byte $02   ; 0C



off_02_A8C3_02_spr_XY:
- D 1 - I - 0x00E8D3 03:A8C3: FD        .byte $FD, $23   ; 01
- D 1 - I - 0x00E8D5 03:A8C5: 05        .byte $05, $23   ; 02
- D 1 - I - 0x00E8D7 03:A8C7: F5        .byte $F5, $1B   ; 03
- D 1 - I - 0x00E8D9 03:A8C9: FD        .byte $FD, $1B   ; 04
- D 1 - I - 0x00E8DB 03:A8CB: 05        .byte $05, $1B   ; 05
- D 1 - I - 0x00E8DD 03:A8CD: F5        .byte $F5, $13   ; 06
- D 1 - I - 0x00E8DF 03:A8CF: FD        .byte $FD, $13   ; 07
- D 1 - I - 0x00E8E1 03:A8D1: 05        .byte $05, $13   ; 08
- D 1 - I - 0x00E8E3 03:A8D3: FD        .byte $FD, $0B   ; 09
- D 1 - I - 0x00E8E5 03:A8D5: 05        .byte $05, $0B   ; 0A
- D 1 - I - 0x00E8E7 03:A8D7: FD        .byte $FD, $03   ; 0B
- D 1 - I - 0x00E8E9 03:A8D9: 05        .byte $05, $03   ; 0C



_off030_A8DB_02:
- D 1 - I - 0x00E8EB 03:A8DB: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E8EC 03:A8DC: F2 A8     .word sub_05_A8F2
- D 1 - I - 0x00E8EE 03:A8DE: 01        .byte con_sub_01, $04, $02   ; 
- D 1 - I - 0x00E8F1 03:A8E1: E6 A8     .word off_01_A8E6_spr_T
- D 1 - I - 0x00E8F3 03:A8E3: EA A8     .word off_01_A8EA_spr_XY
- D 1 - I - 0x00E8F5 03:A8E5: 00        .byte con_sub_00   ; 



off_01_A8E6_spr_T:
- D 1 - I - 0x00E8F6 03:A8E6: D0        .byte $D0   ; 01
- D 1 - I - 0x00E8F7 03:A8E7: D1        .byte $D1   ; 02
- D 1 - I - 0x00E8F8 03:A8E8: C0        .byte $C0   ; 03
- D 1 - I - 0x00E8F9 03:A8E9: C1        .byte $C1   ; 04



off_01_A8EA_spr_XY:
- D 1 - I - 0x00E8FA 03:A8EA: FC        .byte $FC, $0C   ; 01
- D 1 - I - 0x00E8FC 03:A8EC: 04        .byte $04, $0C   ; 02
- D 1 - I - 0x00E8FE 03:A8EE: FC        .byte $FC, $04   ; 03
- D 1 - I - 0x00E900 03:A8F0: 04        .byte $04, $04   ; 04



sub_05_A8F2:
- D 1 - I - 0x00E902 03:A8F2: 02        .byte con_sub_02, $08   ; 
- D 1 - I - 0x00E904 03:A8F4: 49 A9     .word off_02_A949_00_spr_A
- D 1 - I - 0x00E906 03:A8F6: FB A8     .word off_02_A8FB_01_spr_T
- D 1 - I - 0x00E908 03:A8F8: 03 A9     .word off_02_A903_02_spr_XY
- D 1 - I - 0x00E90A 03:A8FA: 00        .byte con_sub_00   ; 



off_02_A8FB_01_spr_T:
- D 1 - I - 0x00E90B 03:A8FB: 80        .byte $80   ; 01
- D 1 - I - 0x00E90C 03:A8FC: 81        .byte $81   ; 02
- D 1 - I - 0x00E90D 03:A8FD: 82        .byte $82   ; 03
- D 1 - I - 0x00E90E 03:A8FE: 90        .byte $90   ; 04
- D 1 - I - 0x00E90F 03:A8FF: 91        .byte $91   ; 05
- D 1 - I - 0x00E910 03:A900: 92        .byte $92   ; 06
- D 1 - I - 0x00E911 03:A901: A0        .byte $A0   ; 07
- D 1 - I - 0x00E912 03:A902: A1        .byte $A1   ; 08



off_02_A903_02_spr_XY:
- D 1 - I - 0x00E913 03:A903: FC        .byte $FC, $24   ; 01
- D 1 - I - 0x00E915 03:A905: 04        .byte $04, $24   ; 02
- D 1 - I - 0x00E917 03:A907: F4        .byte $F4, $1C   ; 03
- D 1 - I - 0x00E919 03:A909: FC        .byte $FC, $1C   ; 04
- D 1 - I - 0x00E91B 03:A90B: 04        .byte $04, $1C   ; 05
- D 1 - I - 0x00E91D 03:A90D: F4        .byte $F4, $14   ; 06
- D 1 - I - 0x00E91F 03:A90F: FC        .byte $FC, $14   ; 07
- D 1 - I - 0x00E921 03:A911: 04        .byte $04, $14   ; 08



_off030_A913_0C:
- D 1 - I - 0x00E923 03:A913: 02        .byte con_sub_02, $07   ; 
- D 1 - I - 0x00E925 03:A915: 48 A9     .word off_02_A948_00_spr_A
- D 1 - I - 0x00E927 03:A917: 1F A9     .word off_02_A91F_01_spr_T
- D 1 - I - 0x00E929 03:A919: 26 A9     .word off_02_A926_02_spr_XY
- D 1 - I - 0x00E92B 03:A91B: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E92C 03:A91C: 2C BE     .word sub_05_BE2C
- D 1 - I - 0x00E92E 03:A91E: 00        .byte con_sub_00   ; 



off_02_A91F_01_spr_T:
- D 1 - I - 0x00E92F 03:A91F: 80        .byte $80   ; 01
- D 1 - I - 0x00E930 03:A920: 81        .byte $81   ; 02
- D 1 - I - 0x00E931 03:A921: EA        .byte $EA   ; 03
- D 1 - I - 0x00E932 03:A922: CA        .byte $CA   ; 04
- D 1 - I - 0x00E933 03:A923: CB        .byte $CB   ; 05
- D 1 - I - 0x00E934 03:A924: DA        .byte $DA   ; 06
- D 1 - I - 0x00E935 03:A925: DB        .byte $DB   ; 07



off_02_A926_02_spr_XY:
- D 1 - I - 0x00E936 03:A926: FE        .byte $FE, $25   ; 01
- D 1 - I - 0x00E938 03:A928: 06        .byte $06, $25   ; 02
- D 1 - I - 0x00E93A 03:A92A: F7        .byte $F7, $21   ; 03
- D 1 - I - 0x00E93C 03:A92C: FE        .byte $FE, $1D   ; 04
- D 1 - I - 0x00E93E 03:A92E: 06        .byte $06, $1D   ; 05
- D 1 - I - 0x00E940 03:A930: FE        .byte $FE, $15   ; 06
- D 1 - I - 0x00E942 03:A932: 06        .byte $06, $15   ; 07



_off030_A934_0D:
- D 1 - I - 0x00E944 03:A934: 02        .byte con_sub_02, $08   ; 
- D 1 - I - 0x00E946 03:A936: 48 A9     .word off_02_A948_00_spr_A
- D 1 - I - 0x00E948 03:A938: 40 A9     .word off_02_A940_01_spr_T
- D 1 - I - 0x00E94A 03:A93A: 73 96     .word off_02_9673_02_spr_XY
- D 1 - I - 0x00E94C 03:A93C: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E94D 03:A93D: 8E A8     .word sub_05_A88E
- D 1 - I - 0x00E94F 03:A93F: 00        .byte con_sub_00   ; 



off_02_A940_01_spr_T:
- D 1 - I - 0x00E950 03:A940: 80        .byte $80   ; 01
- D 1 - I - 0x00E951 03:A941: 81        .byte $81   ; 02
- D 1 - I - 0x00E952 03:A942: EA        .byte $EA   ; 03
- D 1 - I - 0x00E953 03:A943: EB        .byte $EB   ; 04
- D 1 - I - 0x00E954 03:A944: CA        .byte $CA   ; 05
- D 1 - I - 0x00E955 03:A945: CB        .byte $CB   ; 06
- D 1 - I - 0x00E956 03:A946: DA        .byte $DA   ; 07
- D 1 - I - 0x00E957 03:A947: DB        .byte $DB   ; 08



off_02_A948_00_spr_A:
- D 1 - I - 0x00E958 03:A948: 00        .byte $00   ; 01
off_02_A949_00_spr_A:
- D 1 - I - 0x00E959 03:A949: 00        .byte $00   ; 01 (02)
- D 1 - I - 0x00E95A 03:A94A: 00        .byte $00   ; 02 (03)
- D 1 - I - 0x00E95B 03:A94B: 03        .byte $03   ; 03 (04)
- D 1 - I - 0x00E95C 03:A94C: 03        .byte $03   ; 04 (05)
- D 1 - I - 0x00E95D 03:A94D: 03        .byte $03   ; 05 (06)
- D 1 - I - 0x00E95E 03:A94E: 03        .byte $03   ; 06 (07)
- D 1 - I - 0x00E95F 03:A94F: 03        .byte $03   ; 07 (08)
- D 1 - I - 0x00E960 03:A950: 03        .byte $03   ; 08



_off030_A951_0E:
- D 1 - I - 0x00E961 03:A951: 02        .byte con_sub_02, $08   ; 
- D 1 - I - 0x00E963 03:A953: 48 A9     .word off_02_A948_00_spr_A
- D 1 - I - 0x00E965 03:A955: 5D A9     .word off_02_A95D_01_spr_T
- D 1 - I - 0x00E967 03:A957: 65 A9     .word off_02_A965_02_spr_XY
- D 1 - I - 0x00E969 03:A959: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E96A 03:A95A: 2C BE     .word sub_05_BE2C
- D 1 - I - 0x00E96C 03:A95C: 00        .byte con_sub_00   ; 



off_02_A95D_01_spr_T:
- D 1 - I - 0x00E96D 03:A95D: A2        .byte $A2   ; 01
- D 1 - I - 0x00E96E 03:A95E: 81        .byte $81   ; 02
- D 1 - I - 0x00E96F 03:A95F: FA        .byte $FA   ; 03
- D 1 - I - 0x00E970 03:A960: FB        .byte $FB   ; 04
- D 1 - I - 0x00E971 03:A961: BC        .byte $BC   ; 05
- D 1 - I - 0x00E972 03:A962: BD        .byte $BD   ; 06
- D 1 - I - 0x00E973 03:A963: 9A        .byte $9A   ; 07
- D 1 - I - 0x00E974 03:A964: CD        .byte $CD   ; 08



off_02_A965_02_spr_XY:
- D 1 - I - 0x00E975 03:A965: FD        .byte $FD, $25   ; 01
- D 1 - I - 0x00E977 03:A967: 05        .byte $05, $25   ; 02
- D 1 - I - 0x00E979 03:A969: F2        .byte $F2, $1B   ; 03
- D 1 - I - 0x00E97B 03:A96B: FA        .byte $FA, $18   ; 04
- D 1 - I - 0x00E97D 03:A96D: FD        .byte $FD, $1D   ; 05
- D 1 - I - 0x00E97F 03:A96F: 05        .byte $05, $1D   ; 06
- D 1 - I - 0x00E981 03:A971: FD        .byte $FD, $18   ; 07
- D 1 - I - 0x00E983 03:A973: 05        .byte $05, $15   ; 08



_off030_A975_0F:
- D 1 - I - 0x00E985 03:A975: 02        .byte con_sub_02, $08   ; 
- D 1 - I - 0x00E987 03:A977: 89 A9     .word off_02_A989_00_spr_A
- D 1 - I - 0x00E989 03:A979: 81 A9     .word off_02_A981_01_spr_T
- D 1 - I - 0x00E98B 03:A97B: 91 A9     .word off_02_A991_02_spr_XY
- D 1 - I - 0x00E98D 03:A97D: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00E98E 03:A97E: 8E A8     .word sub_05_A88E
- D 1 - I - 0x00E990 03:A980: 00        .byte con_sub_00   ; 



off_02_A981_01_spr_T:
- D 1 - I - 0x00E991 03:A981: A2        .byte $A2   ; 01
- D 1 - I - 0x00E992 03:A982: 81        .byte $81   ; 02
- D 1 - I - 0x00E993 03:A983: FA        .byte $FA   ; 03
- D 1 - I - 0x00E994 03:A984: FB        .byte $FB   ; 04
- D 1 - I - 0x00E995 03:A985: BC        .byte $BC   ; 05
- D 1 - I - 0x00E996 03:A986: BD        .byte $BD   ; 06
- D 1 - I - 0x00E997 03:A987: CC        .byte $CC   ; 07
- D 1 - I - 0x00E998 03:A988: CD        .byte $CD   ; 08



off_02_A989_00_spr_A:
- D 1 - I - 0x00E999 03:A989: 00        .byte $00   ; 01
- D 1 - I - 0x00E99A 03:A98A: 00        .byte $00   ; 02
- D 1 - I - 0x00E99B 03:A98B: 00        .byte $00   ; 03
- D 1 - I - 0x00E99C 03:A98C: 03        .byte $03   ; 04
- D 1 - I - 0x00E99D 03:A98D: 03        .byte $03   ; 05
- D 1 - I - 0x00E99E 03:A98E: 03        .byte $03   ; 06
- D 1 - I - 0x00E99F 03:A98F: 03        .byte $03   ; 07
- D 1 - I - 0x00E9A0 03:A990: 03        .byte $03   ; 08



off_02_A991_02_spr_XY:
- D 1 - I - 0x00E9A1 03:A991: FC        .byte $FC, $24   ; 01
- D 1 - I - 0x00E9A3 03:A993: 04        .byte $04, $24   ; 02
- D 1 - I - 0x00E9A5 03:A995: EC        .byte $EC, $1C   ; 03
- D 1 - I - 0x00E9A7 03:A997: F4        .byte $F4, $19   ; 04
- D 1 - I - 0x00E9A9 03:A999: FC        .byte $FC, $1C   ; 05
- D 1 - I - 0x00E9AB 03:A99B: 04        .byte $04, $1C   ; 06
- D 1 - I - 0x00E9AD 03:A99D: FC        .byte $FC, $14   ; 07
- D 1 - I - 0x00E9AF 03:A99F: 04        .byte $04, $14   ; 08



_off030_A9A1_15:
- D 1 - I - 0x00E9B1 03:A9A1: 02        .byte con_sub_02, $0D   ; 
- D 1 - I - 0x00E9B3 03:A9A3: B7 A9     .word off_02_A9B7_00_spr_A
- D 1 - I - 0x00E9B5 03:A9A5: AA A9     .word off_02_A9AA_01_spr_T
- D 1 - I - 0x00E9B7 03:A9A7: C4 A9     .word off_02_A9C4_02_spr_XY
- D 1 - I - 0x00E9B9 03:A9A9: 00        .byte con_sub_00   ; 



off_02_A9AA_01_spr_T:
- D 1 - I - 0x00E9BA 03:A9AA: 80        .byte $80   ; 01
- D 1 - I - 0x00E9BB 03:A9AB: 81        .byte $81   ; 02
- D 1 - I - 0x00E9BC 03:A9AC: 82        .byte $82   ; 03
- D 1 - I - 0x00E9BD 03:A9AD: 90        .byte $90   ; 04
- D 1 - I - 0x00E9BE 03:A9AE: 91        .byte $91   ; 05
- D 1 - I - 0x00E9BF 03:A9AF: E7        .byte $E7   ; 06
- D 1 - I - 0x00E9C0 03:A9B0: D8        .byte $D8   ; 07
- D 1 - I - 0x00E9C1 03:A9B1: A1        .byte $A1   ; 08
- D 1 - I - 0x00E9C2 03:A9B2: F7        .byte $F7   ; 09
- D 1 - I - 0x00E9C3 03:A9B3: E8        .byte $E8   ; 0A
- D 1 - I - 0x00E9C4 03:A9B4: F5        .byte $F5   ; 0B
- D 1 - I - 0x00E9C5 03:A9B5: F8        .byte $F8   ; 0C
- D 1 - I - 0x00E9C6 03:A9B6: C0        .byte $C0   ; 0D



off_02_A9B7_00_spr_A:
- D 1 - I - 0x00E9C7 03:A9B7: 00        .byte $00   ; 01
- D 1 - I - 0x00E9C8 03:A9B8: 00        .byte $00   ; 02
- D 1 - I - 0x00E9C9 03:A9B9: 03        .byte $03   ; 03
- D 1 - I - 0x00E9CA 03:A9BA: 03        .byte $03   ; 04
- D 1 - I - 0x00E9CB 03:A9BB: 03        .byte $03   ; 05
- D 1 - I - 0x00E9CC 03:A9BC: 03        .byte $03   ; 06
- D 1 - I - 0x00E9CD 03:A9BD: 03        .byte $03   ; 07
- D 1 - I - 0x00E9CE 03:A9BE: 03        .byte $03   ; 08
- D 1 - I - 0x00E9CF 03:A9BF: 02        .byte $02   ; 09
- D 1 - I - 0x00E9D0 03:A9C0: 02        .byte $02   ; 0A
- D 1 - I - 0x00E9D1 03:A9C1: 02        .byte $02   ; 0B
- D 1 - I - 0x00E9D2 03:A9C2: 02        .byte $02   ; 0C
- D 1 - I - 0x00E9D3 03:A9C3: 42        .byte $42   ; 0D



off_02_A9C4_02_spr_XY:
- D 1 - I - 0x00E9D4 03:A9C4: FF        .byte $FF, $24   ; 01
- D 1 - I - 0x00E9D6 03:A9C6: 07        .byte $07, $24   ; 02
- D 1 - I - 0x00E9D8 03:A9C8: F7        .byte $F7, $1C   ; 03
- D 1 - I - 0x00E9DA 03:A9CA: FF        .byte $FF, $1C   ; 04
- D 1 - I - 0x00E9DC 03:A9CC: 07        .byte $07, $1C   ; 05
- D 1 - I - 0x00E9DE 03:A9CE: F6        .byte $F6, $14   ; 06
- D 1 - I - 0x00E9E0 03:A9D0: FE        .byte $FE, $14   ; 07
- D 1 - I - 0x00E9E2 03:A9D2: 06        .byte $06, $14   ; 08
- D 1 - I - 0x00E9E4 03:A9D4: F5        .byte $F5, $0C   ; 09
- D 1 - I - 0x00E9E6 03:A9D6: FD        .byte $FD, $0C   ; 0A
- D 1 - I - 0x00E9E8 03:A9D8: 05        .byte $05, $0C   ; 0B
- D 1 - I - 0x00E9EA 03:A9DA: FD        .byte $FD, $04   ; 0C
- D 1 - I - 0x00E9EC 03:A9DC: 03        .byte $03, $04   ; 0D



_off030_A9DE_16:
- D 1 - I - 0x00E9EE 03:A9DE: 02        .byte con_sub_02, $0C   ; 
- D 1 - I - 0x00E9F0 03:A9E0: F3 A9     .word off_02_A9F3_00_spr_A
- D 1 - I - 0x00E9F2 03:A9E2: E7 A9     .word off_02_A9E7_01_spr_T
- D 1 - I - 0x00E9F4 03:A9E4: FF A9     .word off_02_A9FF_02_spr_XY
- D 1 - I - 0x00E9F6 03:A9E6: 00        .byte con_sub_00   ; 



off_02_A9E7_01_spr_T:
- D 1 - I - 0x00E9F7 03:A9E7: A2        .byte $A2   ; 01
- D 1 - I - 0x00E9F8 03:A9E8: 81        .byte $81   ; 02
- D 1 - I - 0x00E9F9 03:A9E9: C6        .byte $C6   ; 03
- D 1 - I - 0x00E9FA 03:A9EA: E5        .byte $E5   ; 04
- D 1 - I - 0x00E9FB 03:A9EB: E6        .byte $E6   ; 05
- D 1 - I - 0x00E9FC 03:A9EC: D6        .byte $D6   ; 06
- D 1 - I - 0x00E9FD 03:A9ED: D7        .byte $D7   ; 07
- D 1 - I - 0x00E9FE 03:A9EE: F4        .byte $F4   ; 08
- D 1 - I - 0x00E9FF 03:A9EF: 89        .byte $89   ; 09
- D 1 - I - 0x00EA00 03:A9F0: B8        .byte $B8   ; 0A
- D 1 - I - 0x00EA01 03:A9F1: C7        .byte $C7   ; 0B
- D 1 - I - 0x00EA02 03:A9F2: C0        .byte $C0   ; 0C



off_02_A9F3_00_spr_A:
- D 1 - I - 0x00EA03 03:A9F3: 00        .byte $00   ; 01
- D 1 - I - 0x00EA04 03:A9F4: 00        .byte $00   ; 02
- D 1 - I - 0x00EA05 03:A9F5: 03        .byte $03   ; 03
- D 1 - I - 0x00EA06 03:A9F6: 03        .byte $03   ; 04
- D 1 - I - 0x00EA07 03:A9F7: 03        .byte $03   ; 05
- D 1 - I - 0x00EA08 03:A9F8: 02        .byte $02   ; 06
- D 1 - I - 0x00EA09 03:A9F9: 02        .byte $02   ; 07
- D 1 - I - 0x00EA0A 03:A9FA: 03        .byte $03   ; 08
- D 1 - I - 0x00EA0B 03:A9FB: 03        .byte $03   ; 09
- D 1 - I - 0x00EA0C 03:A9FC: 03        .byte $03   ; 0A
- D 1 - I - 0x00EA0D 03:A9FD: 02        .byte $02   ; 0B
- D 1 - I - 0x00EA0E 03:A9FE: 42        .byte $42   ; 0C



off_02_A9FF_02_spr_XY:
- D 1 - I - 0x00EA0F 03:A9FF: 03        .byte $03, $24   ; 01
- D 1 - I - 0x00EA11 03:AA01: 0B        .byte $0B, $24   ; 02
- D 1 - I - 0x00EA13 03:AA03: F8        .byte $F8, $1C   ; 03
- D 1 - I - 0x00EA15 03:AA05: 00        .byte $00, $1C   ; 04
- D 1 - I - 0x00EA17 03:AA07: 08        .byte $08, $1C   ; 05
- D 1 - I - 0x00EA19 03:AA09: E8        .byte $E8, $16   ; 06
- D 1 - I - 0x00EA1B 03:AA0B: F0        .byte $F0, $16   ; 07
- D 1 - I - 0x00EA1D 03:AA0D: F8        .byte $F8, $14   ; 08
- D 1 - I - 0x00EA1F 03:AA0F: 00        .byte $00, $14   ; 09
- D 1 - I - 0x00EA21 03:AA11: 08        .byte $08, $14   ; 0A
- D 1 - I - 0x00EA23 03:AA13: 00        .byte $00, $0C   ; 0B
- D 1 - I - 0x00EA25 03:AA15: FF        .byte $FF, $04   ; 0C



_off030_AA17_03:
- D 1 - I - 0x00EA27 03:AA17: 02        .byte con_sub_02, $09   ; 
- D 1 - I - 0x00EA29 03:AA19: 20 AA     .word off_02_AA20_00_spr_A
- D 1 - I - 0x00EA2B 03:AA1B: E4 84     .word off_02_84E4_01_spr_T
- D 1 - I - 0x00EA2D 03:AA1D: F6 84     .word off_02_84F6_02_spr_XY
- D 1 - I - 0x00EA2F 03:AA1F: 00        .byte con_sub_00   ; 



off_02_AA20_00_spr_A:
- D 1 - I - 0x00EA30 03:AA20: 00        .byte $00   ; 01
- D 1 - I - 0x00EA31 03:AA21: 00        .byte $00   ; 02
- D 1 - I - 0x00EA32 03:AA22: 03        .byte $03   ; 03
- D 1 - I - 0x00EA33 03:AA23: 03        .byte $03   ; 04
- D 1 - I - 0x00EA34 03:AA24: 03        .byte $03   ; 05
- D 1 - I - 0x00EA35 03:AA25: 03        .byte $03   ; 06
- D 1 - I - 0x00EA36 03:AA26: 02        .byte $02   ; 07
- D 1 - I - 0x00EA37 03:AA27: 02        .byte $02   ; 08
- D 1 - I - 0x00EA38 03:AA28: 42        .byte $42   ; 09



_off030_AA29_04:
- D 1 - I - 0x00EA39 03:AA29: 02        .byte con_sub_02, $09   ; 
- D 1 - I - 0x00EA3B 03:AA2B: 32 AA     .word off_02_AA32_00_spr_A
- D 1 - I - 0x00EA3D 03:AA2D: E4 84     .word off_02_84E4_01_spr_T
- D 1 - I - 0x00EA3F 03:AA2F: 1A 85     .word off_02_851A_02_spr_XY
- D 1 - I - 0x00EA41 03:AA31: 00        .byte con_sub_00   ; 



off_02_AA32_00_spr_A:
- D 1 - I - 0x00EA42 03:AA32: 40        .byte $40   ; 01
- D 1 - I - 0x00EA43 03:AA33: 40        .byte $40   ; 02
- D 1 - I - 0x00EA44 03:AA34: 43        .byte $43   ; 03
- D 1 - I - 0x00EA45 03:AA35: 43        .byte $43   ; 04
- D 1 - I - 0x00EA46 03:AA36: 43        .byte $43   ; 05
- D 1 - I - 0x00EA47 03:AA37: 43        .byte $43   ; 06
- D 1 - I - 0x00EA48 03:AA38: 42        .byte $42   ; 07
- D 1 - I - 0x00EA49 03:AA39: 42        .byte $42   ; 08
- D 1 - I - 0x00EA4A 03:AA3A: 02        .byte $02   ; 09



sub_06_AA3B_03:
- D 1 - I - 0x00EA4B 03:AA3B: 02        .byte con_sub_02, $08   ; 
- D 1 - I - 0x00EA4D 03:AA3D: 44 AA     .word off_02_AA44_00_spr_A
- D 1 - I - 0x00EA4F 03:AA3F: 67 83     .word off_02_8367_01_spr_T
- D 1 - I - 0x00EA51 03:AA41: 4E 83     .word off_02_834E_02_spr_XY
- D 1 - I - 0x00EA53 03:AA43: 00        .byte con_sub_00   ; 



off_02_AA44_00_spr_A:
- D 1 - I - 0x00EA54 03:AA44: 03        .byte $03   ; 01
- D 1 - I - 0x00EA55 03:AA45: 03        .byte $03   ; 02
- D 1 - I - 0x00EA56 03:AA46: 00        .byte $00   ; 03
- D 1 - I - 0x00EA57 03:AA47: 42        .byte $42   ; 04
- D 1 - I - 0x00EA58 03:AA48: 42        .byte $42   ; 05
- D 1 - I - 0x00EA59 03:AA49: 00        .byte $00   ; 06
- D 1 - I - 0x00EA5A 03:AA4A: 42        .byte $42   ; 07
- D 1 - I - 0x00EA5B 03:AA4B: 42        .byte $42   ; 08



sub_06_AA4C_03:
- - - - - - 0x00EA5C 03:AA4C: 02        .byte con_sub_02, $0A   ; 
- - - - - - 0x00EA5E 03:AA4E: 60 AA     .word off_02_AA60_00_spr_A
- - - - - - 0x00EA60 03:AA50: 55 AA     .word off_02_AA55_01_spr_T
- - - - - - 0x00EA62 03:AA52: 4B 84     .word off_02_844B_02_spr_XY
- - - - - - 0x00EA64 03:AA54: 00        .byte con_sub_00   ; 



off_02_AA55_01_spr_T:
- - - - - - 0x00EA65 03:AA55: 81        .byte $81   ; 01
- - - - - - 0x00EA66 03:AA56: A2        .byte $A2   ; 02
- - - - - - 0x00EA67 03:AA57: C4        .byte $C4   ; 03
- - - - - - 0x00EA68 03:AA58: C5        .byte $C5   ; 04
- - - - - - 0x00EA69 03:AA59: D4        .byte $D4   ; 05
- - - - - - 0x00EA6A 03:AA5A: D5        .byte $D5   ; 06
- - - - - - 0x00EA6B 03:AA5B: E4        .byte $E4   ; 07
- - - - - - 0x00EA6C 03:AA5C: E0        .byte $E0   ; 08
- - - - - - 0x00EA6D 03:AA5D: F1        .byte $F1   ; 09
- - - - - - 0x00EA6E 03:AA5E: F0        .byte $F0   ; 0A


; bzk garbage
- - - - - - 0x00EA6F 03:AA5F: E9        .byte $E9   ; 



off_02_AA60_00_spr_A:
- - - - - - 0x00EA70 03:AA60: 40        .byte $40   ; 01
- - - - - - 0x00EA71 03:AA61: 40        .byte $40   ; 02
- - - - - - 0x00EA72 03:AA62: 03        .byte $03   ; 03
- - - - - - 0x00EA73 03:AA63: 03        .byte $03   ; 04
- - - - - - 0x00EA74 03:AA64: 03        .byte $03   ; 05
- - - - - - 0x00EA75 03:AA65: 03        .byte $03   ; 06
- - - - - - 0x00EA76 03:AA66: 02        .byte $02   ; 07
- - - - - - 0x00EA77 03:AA67: 42        .byte $42   ; 08
- - - - - - 0x00EA78 03:AA68: 42        .byte $42   ; 09
- - - - - - 0x00EA79 03:AA69: 42        .byte $42   ; 0A


; bzk garbage
- - - - - - 0x00EA7A 03:AA6A: C3        .byte $C3   ; 



sub_06_AA6B_03:
- - - - - - 0x00EA7B 03:AA6B: 02        .byte con_sub_02, $0A   ; 
- - - - - - 0x00EA7D 03:AA6D: 60 AA     .word off_02_AA60_00_spr_A
- - - - - - 0x00EA7F 03:AA6F: 55 AA     .word off_02_AA55_01_spr_T
- - - - - - 0x00EA81 03:AA71: 7C 84     .word off_02_847C_02_spr_XY
- - - - - - 0x00EA83 03:AA73: 00        .byte con_sub_00   ; 



_off030_AA74_18:
- - - - - - 0x00EA84 03:AA74: 02        .byte con_sub_02, $07   ; 
- - - - - - 0x00EA86 03:AA76: 84 AA     .word off_02_AA84_00_spr_A
- - - - - - 0x00EA88 03:AA78: 7D AA     .word off_02_AA7D_01_spr_T
- - - - - - 0x00EA8A 03:AA7A: A0 84     .word off_02_84A0_02_spr_XY
- - - - - - 0x00EA8C 03:AA7C: 00        .byte con_sub_00   ; 



off_02_AA7D_01_spr_T:
- - - - - - 0x00EA8D 03:AA7D: D2        .byte $D2   ; 01
- - - - - - 0x00EA8E 03:AA7E: D3        .byte $D3   ; 02
- - - - - - 0x00EA8F 03:AA7F: F2        .byte $F2   ; 03
- - - - - - 0x00EA90 03:AA80: F3        .byte $F3   ; 04
- - - - - - 0x00EA91 03:AA81: E2        .byte $E2   ; 05
- - - - - - 0x00EA92 03:AA82: E3        .byte $E3   ; 06
- - - - - - 0x00EA93 03:AA83: C0        .byte $C0   ; 07



off_02_AA84_00_spr_A:
- - - - - - 0x00EA94 03:AA84: 83        .byte $83   ; 01
- - - - - - 0x00EA95 03:AA85: 80        .byte $80   ; 02
- - - - - - 0x00EA96 03:AA86: 82        .byte $82   ; 03
- - - - - - 0x00EA97 03:AA87: 82        .byte $82   ; 04
- - - - - - 0x00EA98 03:AA88: 83        .byte $83   ; 05
- - - - - - 0x00EA99 03:AA89: 83        .byte $83   ; 06
- - - - - - 0x00EA9A 03:AA8A: 82        .byte $82   ; 07



_off030_AA8B_19:
- - - - - - 0x00EA9B 03:AA8B: 02        .byte con_sub_02, $09   ; 
- - - - - - 0x00EA9D 03:AA8D: 9D AA     .word off_02_AA9D_00_spr_A
- - - - - - 0x00EA9F 03:AA8F: 94 AA     .word off_02_AA94_01_spr_T
- - - - - - 0x00EAA1 03:AA91: A6 AA     .word off_02_AAA6_02_spr_XY
- - - - - - 0x00EAA3 03:AA93: 00        .byte con_sub_00   ; 



off_02_AA94_01_spr_T:
- - - - - - 0x00EAA4 03:AA94: F3        .byte $F3   ; 01
- - - - - - 0x00EAA5 03:AA95: 87        .byte $87   ; 02
- - - - - - 0x00EAA6 03:AA96: C0        .byte $C0   ; 03
- - - - - - 0x00EAA7 03:AA97: D4        .byte $D4   ; 04
- - - - - - 0x00EAA8 03:AA98: F2        .byte $F2   ; 05
- - - - - - 0x00EAA9 03:AA99: C4        .byte $C4   ; 06
- - - - - - 0x00EAAA 03:AA9A: C5        .byte $C5   ; 07
- - - - - - 0x00EAAB 03:AA9B: 81        .byte $81   ; 08
- - - - - - 0x00EAAC 03:AA9C: A2        .byte $A2   ; 09



off_02_AA9D_00_spr_A:
- - - - - - 0x00EAAD 03:AA9D: C2        .byte $C2   ; 01
- - - - - - 0x00EAAE 03:AA9E: 80        .byte $80   ; 02
- - - - - - 0x00EAAF 03:AA9F: C2        .byte $C2   ; 03
- - - - - - 0x00EAB0 03:AAA0: 83        .byte $83   ; 04
- - - - - - 0x00EAB1 03:AAA1: C2        .byte $C2   ; 05
- - - - - - 0x00EAB2 03:AAA2: 83        .byte $83   ; 06
- - - - - - 0x00EAB3 03:AAA3: 83        .byte $83   ; 07
- - - - - - 0x00EAB4 03:AAA4: C0        .byte $C0   ; 08
- - - - - - 0x00EAB5 03:AAA5: C0        .byte $C0   ; 09



off_02_AAA6_02_spr_XY:
- - - - - - 0x00EAB6 03:AAA6: 04        .byte $04, $14   ; 01
- - - - - - 0x00EAB8 03:AAA8: FC        .byte $FC, $1C   ; 02
- - - - - - 0x00EABA 03:AAAA: 04        .byte $04, $1B   ; 03
- - - - - - 0x00EABC 03:AAAC: FC        .byte $FC, $14   ; 04
- - - - - - 0x00EABE 03:AAAE: 0C        .byte $0C, $14   ; 05
- - - - - - 0x00EAC0 03:AAB0: FC        .byte $FC, $0C   ; 06
- - - - - - 0x00EAC2 03:AAB2: 04        .byte $04, $0C   ; 07
- - - - - - 0x00EAC4 03:AAB4: FC        .byte $FC, $04   ; 08
- - - - - - 0x00EAC6 03:AAB6: 04        .byte $04, $04   ; 09



_off030_AAB8_09:
_off030_AAB8_12:
- D 1 - I - 0x00EAC8 03:AAB8: 02        .byte con_sub_02, $0A   ; 
- D 1 - I - 0x00EACA 03:AABA: CB AA     .word off_02_AACB_00_spr_A
- D 1 - I - 0x00EACC 03:AABC: C1 AA     .word off_02_AAC1_01_spr_T
- D 1 - I - 0x00EACE 03:AABE: D5 AA     .word off_02_AAD5_02_spr_XY
- D 1 - I - 0x00EAD0 03:AAC0: 00        .byte con_sub_00   ; 



off_02_AAC1_01_spr_T:
- D 1 - I - 0x00EAD1 03:AAC1: A2        .byte $A2   ; 01
- D 1 - I - 0x00EAD2 03:AAC2: 81        .byte $81   ; 02
- D 1 - I - 0x00EAD3 03:AAC3: A8        .byte $A8   ; 03
- D 1 - I - 0x00EAD4 03:AAC4: B9        .byte $B9   ; 04
- D 1 - I - 0x00EAD5 03:AAC5: E9        .byte $E9   ; 05
- D 1 - I - 0x00EAD6 03:AAC6: DD        .byte $DD   ; 06
- D 1 - I - 0x00EAD7 03:AAC7: C8        .byte $C8   ; 07
- D 1 - I - 0x00EAD8 03:AAC8: C9        .byte $C9   ; 08
- D 1 - I - 0x00EAD9 03:AAC9: F0        .byte $F0   ; 09
- D 1 - I - 0x00EADA 03:AACA: F1        .byte $F1   ; 0A



off_02_AACB_00_spr_A:
- D 1 - I - 0x00EADB 03:AACB: 00        .byte $00   ; 01
- D 1 - I - 0x00EADC 03:AACC: 00        .byte $00   ; 02
- D 1 - I - 0x00EADD 03:AACD: 03        .byte $03   ; 03
- D 1 - I - 0x00EADE 03:AACE: 03        .byte $03   ; 04
- D 1 - I - 0x00EADF 03:AACF: 03        .byte $03   ; 05
- D 1 - I - 0x00EAE0 03:AAD0: 03        .byte $03   ; 06
- D 1 - I - 0x00EAE1 03:AAD1: 02        .byte $02   ; 07
- D 1 - I - 0x00EAE2 03:AAD2: 02        .byte $02   ; 08
- D 1 - I - 0x00EAE3 03:AAD3: 02        .byte $02   ; 09
- D 1 - I - 0x00EAE4 03:AAD4: 02        .byte $02   ; 0A



off_02_AAD5_02_spr_XY:
- D 1 - I - 0x00EAE5 03:AAD5: F8        .byte $F8, $22   ; 01
- D 1 - I - 0x00EAE7 03:AAD7: 00        .byte $00, $22   ; 02
- D 1 - I - 0x00EAE9 03:AAD9: FB        .byte $FB, $1A   ; 03
- D 1 - I - 0x00EAEB 03:AADB: 03        .byte $03, $1A   ; 04
- D 1 - I - 0x00EAED 03:AADD: FD        .byte $FD, $12   ; 05
- D 1 - I - 0x00EAEF 03:AADF: 05        .byte $05, $12   ; 06
- D 1 - I - 0x00EAF1 03:AAE1: 01        .byte $01, $0A   ; 07
- D 1 - I - 0x00EAF3 03:AAE3: 09        .byte $09, $0A   ; 08
- D 1 - I - 0x00EAF5 03:AAE5: 00        .byte $00, $04   ; 09
- D 1 - I - 0x00EAF7 03:AAE7: 08        .byte $08, $04   ; 0A



_off030_AAE9_05:
_off030_AAE9_13:
- D 1 - I - 0x00EAF9 03:AAE9: 02        .byte con_sub_02, $0D   ; 
- D 1 - I - 0x00EAFB 03:AAEB: FF AA     .word off_02_AAFF_00_spr_A
- D 1 - I - 0x00EAFD 03:AAED: F2 AA     .word off_02_AAF2_01_spr_T
- D 1 - I - 0x00EAFF 03:AAEF: 0C AB     .word off_02_AB0C_02_spr_XY
- D 1 - I - 0x00EB01 03:AAF1: 00        .byte con_sub_00   ; 



off_02_AAF2_01_spr_T:
- D 1 - I - 0x00EB02 03:AAF2: A2        .byte $A2   ; 01
- D 1 - I - 0x00EB03 03:AAF3: 81        .byte $81   ; 02
- D 1 - I - 0x00EB04 03:AAF4: 82        .byte $82   ; 03
- D 1 - I - 0x00EB05 03:AAF5: 90        .byte $90   ; 04
- D 1 - I - 0x00EB06 03:AAF6: 91        .byte $91   ; 05
- D 1 - I - 0x00EB07 03:AAF7: E7        .byte $E7   ; 06
- D 1 - I - 0x00EB08 03:AAF8: D8        .byte $D8   ; 07
- D 1 - I - 0x00EB09 03:AAF9: A1        .byte $A1   ; 08
- D 1 - I - 0x00EB0A 03:AAFA: F7        .byte $F7   ; 09
- D 1 - I - 0x00EB0B 03:AAFB: E8        .byte $E8   ; 0A
- D 1 - I - 0x00EB0C 03:AAFC: B1        .byte $B1   ; 0B
- D 1 - I - 0x00EB0D 03:AAFD: F8        .byte $F8   ; 0C
- D 1 - I - 0x00EB0E 03:AAFE: D9        .byte $D9   ; 0D



off_02_AAFF_00_spr_A:
- D 1 - I - 0x00EB0F 03:AAFF: 00        .byte $00   ; 01
- D 1 - I - 0x00EB10 03:AB00: 00        .byte $00   ; 02
- D 1 - I - 0x00EB11 03:AB01: 03        .byte $03   ; 03
- D 1 - I - 0x00EB12 03:AB02: 03        .byte $03   ; 04
- D 1 - I - 0x00EB13 03:AB03: 03        .byte $03   ; 05
- D 1 - I - 0x00EB14 03:AB04: 03        .byte $03   ; 06
- D 1 - I - 0x00EB15 03:AB05: 03        .byte $03   ; 07
- D 1 - I - 0x00EB16 03:AB06: 03        .byte $03   ; 08
- D 1 - I - 0x00EB17 03:AB07: 02        .byte $02   ; 09
- D 1 - I - 0x00EB18 03:AB08: 02        .byte $02   ; 0A
- D 1 - I - 0x00EB19 03:AB09: 02        .byte $02   ; 0B
- D 1 - I - 0x00EB1A 03:AB0A: 02        .byte $02   ; 0C
- D 1 - I - 0x00EB1B 03:AB0B: 02        .byte $02   ; 0D



off_02_AB0C_02_spr_XY:
- D 1 - I - 0x00EB1C 03:AB0C: F5        .byte $F5, $2A   ; 01
- D 1 - I - 0x00EB1E 03:AB0E: FD        .byte $FD, $2A   ; 02
- D 1 - I - 0x00EB20 03:AB10: ED        .byte $ED, $22   ; 03
- D 1 - I - 0x00EB22 03:AB12: F5        .byte $F5, $22   ; 04
- D 1 - I - 0x00EB24 03:AB14: FD        .byte $FD, $22   ; 05
- D 1 - I - 0x00EB26 03:AB16: ED        .byte $ED, $1A   ; 06
- D 1 - I - 0x00EB28 03:AB18: F5        .byte $F5, $1A   ; 07
- D 1 - I - 0x00EB2A 03:AB1A: FD        .byte $FD, $1A   ; 08
- D 1 - I - 0x00EB2C 03:AB1C: ED        .byte $ED, $12   ; 09
- D 1 - I - 0x00EB2E 03:AB1E: F5        .byte $F5, $12   ; 0A
- D 1 - I - 0x00EB30 03:AB20: FD        .byte $FD, $12   ; 0B
- D 1 - I - 0x00EB32 03:AB22: F5        .byte $F5, $0A   ; 0C
- D 1 - I - 0x00EB34 03:AB24: FD        .byte $FD, $0A   ; 0D



_off030_AB26_14:
_off030_AB26_25:
- D 1 - I - 0x00EB36 03:AB26: 02        .byte con_sub_02, $0C   ; 
- D 1 - I - 0x00EB38 03:AB28: 3B AB     .word off_02_AB3B_00_spr_A
- D 1 - I - 0x00EB3A 03:AB2A: 2F AB     .word off_02_AB2F_01_spr_T
- D 1 - I - 0x00EB3C 03:AB2C: 47 AB     .word off_02_AB47_02_spr_XY
- D 1 - I - 0x00EB3E 03:AB2E: 00        .byte con_sub_00   ; 



off_02_AB2F_01_spr_T:
- D 1 - I - 0x00EB3F 03:AB2F: A2        .byte $A2   ; 01
- D 1 - I - 0x00EB40 03:AB30: 81        .byte $81   ; 02
- D 1 - I - 0x00EB41 03:AB31: A9        .byte $A9   ; 03
- D 1 - I - 0x00EB42 03:AB32: E5        .byte $E5   ; 04
- D 1 - I - 0x00EB43 03:AB33: E6        .byte $E6   ; 05
- D 1 - I - 0x00EB44 03:AB34: D6        .byte $D6   ; 06
- D 1 - I - 0x00EB45 03:AB35: D7        .byte $D7   ; 07
- D 1 - I - 0x00EB46 03:AB36: 88        .byte $88   ; 08
- D 1 - I - 0x00EB47 03:AB37: 89        .byte $89   ; 09
- D 1 - I - 0x00EB48 03:AB38: B8        .byte $B8   ; 0A
- D 1 - I - 0x00EB49 03:AB39: 98        .byte $98   ; 0B
- D 1 - I - 0x00EB4A 03:AB3A: 99        .byte $99   ; 0C



off_02_AB3B_00_spr_A:
- D 1 - I - 0x00EB4B 03:AB3B: 00        .byte $00   ; 01
- D 1 - I - 0x00EB4C 03:AB3C: 00        .byte $00   ; 02
- D 1 - I - 0x00EB4D 03:AB3D: 03        .byte $03   ; 03
- D 1 - I - 0x00EB4E 03:AB3E: 03        .byte $03   ; 04
- D 1 - I - 0x00EB4F 03:AB3F: 03        .byte $03   ; 05
- D 1 - I - 0x00EB50 03:AB40: 02        .byte $02   ; 06
- D 1 - I - 0x00EB51 03:AB41: 82        .byte $82   ; 07
- D 1 - I - 0x00EB52 03:AB42: 02        .byte $02   ; 08
- D 1 - I - 0x00EB53 03:AB43: 03        .byte $03   ; 09
- D 1 - I - 0x00EB54 03:AB44: 03        .byte $03   ; 0A
- D 1 - I - 0x00EB55 03:AB45: 02        .byte $02   ; 0B
- D 1 - I - 0x00EB56 03:AB46: 02        .byte $02   ; 0C



off_02_AB47_02_spr_XY:
- D 1 - I - 0x00EB57 03:AB47: 01        .byte $01, $1C   ; 01
- D 1 - I - 0x00EB59 03:AB49: 09        .byte $09, $1C   ; 02
- D 1 - I - 0x00EB5B 03:AB4B: F6        .byte $F6, $14   ; 03
- D 1 - I - 0x00EB5D 03:AB4D: FE        .byte $FE, $14   ; 04
- D 1 - I - 0x00EB5F 03:AB4F: 06        .byte $06, $14   ; 05
- D 1 - I - 0x00EB61 03:AB51: E6        .byte $E6, $08   ; 06
- D 1 - I - 0x00EB63 03:AB53: EE        .byte $EE, $09   ; 07
- D 1 - I - 0x00EB65 03:AB55: F6        .byte $F6, $0C   ; 08
- D 1 - I - 0x00EB67 03:AB57: FE        .byte $FE, $0C   ; 09
- D 1 - I - 0x00EB69 03:AB59: 06        .byte $06, $0C   ; 0A
- D 1 - I - 0x00EB6B 03:AB5B: F6        .byte $F6, $04   ; 0B
- D 1 - I - 0x00EB6D 03:AB5D: FE        .byte $FE, $04   ; 0C



_off030_AB5F_06:
- D 1 - I - 0x00EB6F 03:AB5F: 02        .byte con_sub_02, $0A   ; 
- D 1 - I - 0x00EB71 03:AB61: 72 AB     .word off_02_AB72_00_spr_A
- D 1 - I - 0x00EB73 03:AB63: 68 AB     .word off_02_AB68_01_spr_T
- D 1 - I - 0x00EB75 03:AB65: 7C AB     .word off_02_AB7C_02_spr_XY
- D 1 - I - 0x00EB77 03:AB67: 00        .byte con_sub_00   ; 



off_02_AB68_01_spr_T:
- D 1 - I - 0x00EB78 03:AB68: A2        .byte $A2   ; 01
- D 1 - I - 0x00EB79 03:AB69: 81        .byte $81   ; 02
- D 1 - I - 0x00EB7A 03:AB6A: 8A        .byte $8A   ; 03
- D 1 - I - 0x00EB7B 03:AB6B: 8B        .byte $8B   ; 04
- D 1 - I - 0x00EB7C 03:AB6C: F9        .byte $F9   ; 05
- D 1 - I - 0x00EB7D 03:AB6D: 9A        .byte $9A   ; 06
- D 1 - I - 0x00EB7E 03:AB6E: 9B        .byte $9B   ; 07
- D 1 - I - 0x00EB7F 03:AB6F: C1        .byte $C1   ; 08
- D 1 - I - 0x00EB80 03:AB70: AA        .byte $AA   ; 09
- D 1 - I - 0x00EB81 03:AB71: AB        .byte $AB   ; 0A



off_02_AB72_00_spr_A:
- D 1 - I - 0x00EB82 03:AB72: 00        .byte $00   ; 01
- D 1 - I - 0x00EB83 03:AB73: 00        .byte $00   ; 02
- D 1 - I - 0x00EB84 03:AB74: 03        .byte $03   ; 03
- D 1 - I - 0x00EB85 03:AB75: 03        .byte $03   ; 04
- D 1 - I - 0x00EB86 03:AB76: 02        .byte $02   ; 05
- D 1 - I - 0x00EB87 03:AB77: 03        .byte $03   ; 06
- D 1 - I - 0x00EB88 03:AB78: 03        .byte $03   ; 07
- D 1 - I - 0x00EB89 03:AB79: 02        .byte $02   ; 08
- D 1 - I - 0x00EB8A 03:AB7A: 00        .byte $00   ; 09
- D 1 - I - 0x00EB8B 03:AB7B: 02        .byte $02   ; 0A



off_02_AB7C_02_spr_XY:
- D 1 - I - 0x00EB8C 03:AB7C: 00        .byte $00, $1F   ; 01
- D 1 - I - 0x00EB8E 03:AB7E: 08        .byte $08, $1F   ; 02
- D 1 - I - 0x00EB90 03:AB80: 00        .byte $00, $17   ; 03
- D 1 - I - 0x00EB92 03:AB82: 08        .byte $08, $17   ; 04
- D 1 - I - 0x00EB94 03:AB84: F8        .byte $F8, $0F   ; 05
- D 1 - I - 0x00EB96 03:AB86: 00        .byte $00, $0F   ; 06
- D 1 - I - 0x00EB98 03:AB88: 08        .byte $08, $0F   ; 07
- D 1 - I - 0x00EB9A 03:AB8A: F8        .byte $F8, $07   ; 08
- D 1 - I - 0x00EB9C 03:AB8C: 00        .byte $00, $07   ; 09
- D 1 - I - 0x00EB9E 03:AB8E: 08        .byte $08, $07   ; 0A



_off030_AB90_10:
- D 1 - I - 0x00EBA0 03:AB90: 02        .byte con_sub_02, $0D   ; 
- D 1 - I - 0x00EBA2 03:AB92: A6 AB     .word off_02_ABA6_00_spr_A
- D 1 - I - 0x00EBA4 03:AB94: 99 AB     .word off_02_AB99_01_spr_T
- D 1 - I - 0x00EBA6 03:AB96: B3 AB     .word off_02_ABB3_02_spr_XY
- D 1 - I - 0x00EBA8 03:AB98: 00        .byte con_sub_00   ; 



off_02_AB99_01_spr_T:
- D 1 - I - 0x00EBA9 03:AB99: 81        .byte $81   ; 01
- D 1 - I - 0x00EBAA 03:AB9A: A2        .byte $A2   ; 02
- D 1 - I - 0x00EBAB 03:AB9B: 91        .byte $91   ; 03
- D 1 - I - 0x00EBAC 03:AB9C: 90        .byte $90   ; 04
- D 1 - I - 0x00EBAD 03:AB9D: 82        .byte $82   ; 05
- D 1 - I - 0x00EBAE 03:AB9E: A1        .byte $A1   ; 06
- D 1 - I - 0x00EBAF 03:AB9F: D8        .byte $D8   ; 07
- D 1 - I - 0x00EBB0 03:ABA0: E7        .byte $E7   ; 08
- D 1 - I - 0x00EBB1 03:ABA1: B1        .byte $B1   ; 09
- D 1 - I - 0x00EBB2 03:ABA2: E8        .byte $E8   ; 0A
- D 1 - I - 0x00EBB3 03:ABA3: F7        .byte $F7   ; 0B
- D 1 - I - 0x00EBB4 03:ABA4: C1        .byte $C1   ; 0C
- D 1 - I - 0x00EBB5 03:ABA5: F8        .byte $F8   ; 0D



off_02_ABA6_00_spr_A:
- D 1 - I - 0x00EBB6 03:ABA6: 40        .byte $40   ; 01
- D 1 - I - 0x00EBB7 03:ABA7: 40        .byte $40   ; 02
- D 1 - I - 0x00EBB8 03:ABA8: 43        .byte $43   ; 03
- D 1 - I - 0x00EBB9 03:ABA9: 43        .byte $43   ; 04
- D 1 - I - 0x00EBBA 03:ABAA: 43        .byte $43   ; 05
- D 1 - I - 0x00EBBB 03:ABAB: 43        .byte $43   ; 06
- D 1 - I - 0x00EBBC 03:ABAC: 43        .byte $43   ; 07
- D 1 - I - 0x00EBBD 03:ABAD: 43        .byte $43   ; 08
- D 1 - I - 0x00EBBE 03:ABAE: 42        .byte $42   ; 09
- D 1 - I - 0x00EBBF 03:ABAF: 42        .byte $42   ; 0A
- D 1 - I - 0x00EBC0 03:ABB0: 42        .byte $42   ; 0B
- D 1 - I - 0x00EBC1 03:ABB1: 42        .byte $42   ; 0C
- D 1 - I - 0x00EBC2 03:ABB2: 42        .byte $42   ; 0D



off_02_ABB3_02_spr_XY:
- D 1 - I - 0x00EBC3 03:ABB3: FE        .byte $FE, $23   ; 01
- D 1 - I - 0x00EBC5 03:ABB5: 06        .byte $06, $23   ; 02
- D 1 - I - 0x00EBC7 03:ABB7: FE        .byte $FE, $1B   ; 03
- D 1 - I - 0x00EBC9 03:ABB9: 06        .byte $06, $1B   ; 04
- D 1 - I - 0x00EBCB 03:ABBB: 0E        .byte $0E, $1B   ; 05
- D 1 - I - 0x00EBCD 03:ABBD: FE        .byte $FE, $13   ; 06
- D 1 - I - 0x00EBCF 03:ABBF: 06        .byte $06, $13   ; 07
- D 1 - I - 0x00EBD1 03:ABC1: 0E        .byte $0E, $13   ; 08
- D 1 - I - 0x00EBD3 03:ABC3: FD        .byte $FD, $0B   ; 09
- D 1 - I - 0x00EBD5 03:ABC5: 05        .byte $05, $0B   ; 0A
- D 1 - I - 0x00EBD7 03:ABC7: 0D        .byte $0D, $0B   ; 0B
- D 1 - I - 0x00EBD9 03:ABC9: FD        .byte $FD, $03   ; 0C
- D 1 - I - 0x00EBDB 03:ABCB: 05        .byte $05, $03   ; 0D



_off030_ABCD_11:
_off030_ABCD_17:
- D 1 - I - 0x00EBDD 03:ABCD: 02        .byte con_sub_02, $0F   ; 
- D 1 - I - 0x00EBDF 03:ABCF: E5 AB     .word off_02_ABE5_00_spr_A
- D 1 - I - 0x00EBE1 03:ABD1: D6 AB     .word off_02_ABD6_01_spr_T
- D 1 - I - 0x00EBE3 03:ABD3: F4 AB     .word off_02_ABF4_02_spr_XY
- D 1 - I - 0x00EBE5 03:ABD5: 00        .byte con_sub_00   ; 



off_02_ABD6_01_spr_T:
- D 1 - I - 0x00EBE6 03:ABD6: AD        .byte $AD   ; 01
- D 1 - I - 0x00EBE7 03:ABD7: A2        .byte $A2   ; 02
- D 1 - I - 0x00EBE8 03:ABD8: 81        .byte $81   ; 03
- D 1 - I - 0x00EBE9 03:ABD9: AE        .byte $AE   ; 04
- D 1 - I - 0x00EBEA 03:ABDA: 8C        .byte $8C   ; 05
- D 1 - I - 0x00EBEB 03:ABDB: 8D        .byte $8D   ; 06
- D 1 - I - 0x00EBEC 03:ABDC: 8E        .byte $8E   ; 07
- D 1 - I - 0x00EBED 03:ABDD: 8F        .byte $8F   ; 08
- D 1 - I - 0x00EBEE 03:ABDE: 9C        .byte $9C   ; 09
- D 1 - I - 0x00EBEF 03:ABDF: 9D        .byte $9D   ; 0A
- D 1 - I - 0x00EBF0 03:ABE0: 9E        .byte $9E   ; 0B
- D 1 - I - 0x00EBF1 03:ABE1: 9F        .byte $9F   ; 0C
- D 1 - I - 0x00EBF2 03:ABE2: AF        .byte $AF   ; 0D
- D 1 - I - 0x00EBF3 03:ABE3: BA        .byte $BA   ; 0E
- D 1 - I - 0x00EBF4 03:ABE4: C0        .byte $C0   ; 0F



off_02_ABE5_00_spr_A:
- D 1 - I - 0x00EBF5 03:ABE5: 02        .byte $02   ; 01
- D 1 - I - 0x00EBF6 03:ABE6: 00        .byte $00   ; 02
- D 1 - I - 0x00EBF7 03:ABE7: 00        .byte $00   ; 03
- D 1 - I - 0x00EBF8 03:ABE8: 02        .byte $02   ; 04
- D 1 - I - 0x00EBF9 03:ABE9: 02        .byte $02   ; 05
- D 1 - I - 0x00EBFA 03:ABEA: 03        .byte $03   ; 06
- D 1 - I - 0x00EBFB 03:ABEB: 03        .byte $03   ; 07
- D 1 - I - 0x00EBFC 03:ABEC: 03        .byte $03   ; 08
- D 1 - I - 0x00EBFD 03:ABED: 02        .byte $02   ; 09
- D 1 - I - 0x00EBFE 03:ABEE: 03        .byte $03   ; 0A
- D 1 - I - 0x00EBFF 03:ABEF: 03        .byte $03   ; 0B
- D 1 - I - 0x00EC00 03:ABF0: 03        .byte $03   ; 0C
- D 1 - I - 0x00EC01 03:ABF1: 02        .byte $02   ; 0D
- D 1 - I - 0x00EC02 03:ABF2: 02        .byte $02   ; 0E
- D 1 - I - 0x00EC03 03:ABF3: 02        .byte $02   ; 0F



off_02_ABF4_02_spr_XY:
- D 1 - I - 0x00EC04 03:ABF4: E4        .byte $E4, $24   ; 01
- D 1 - I - 0x00EC06 03:ABF6: FD        .byte $FD, $24   ; 02
- D 1 - I - 0x00EC08 03:ABF8: 05        .byte $05, $24   ; 03
- D 1 - I - 0x00EC0A 03:ABFA: E4        .byte $E4, $1C   ; 04
- D 1 - I - 0x00EC0C 03:ABFC: EC        .byte $EC, $1C   ; 05
- D 1 - I - 0x00EC0E 03:ABFE: F4        .byte $F4, $1C   ; 06
- D 1 - I - 0x00EC10 03:AC00: FC        .byte $FC, $1C   ; 07
- D 1 - I - 0x00EC12 03:AC02: 04        .byte $04, $1C   ; 08
- D 1 - I - 0x00EC14 03:AC04: EC        .byte $EC, $14   ; 09
- D 1 - I - 0x00EC16 03:AC06: F4        .byte $F4, $14   ; 0A
- D 1 - I - 0x00EC18 03:AC08: FC        .byte $FC, $14   ; 0B
- D 1 - I - 0x00EC1A 03:AC0A: 04        .byte $04, $14   ; 0C
- D 1 - I - 0x00EC1C 03:AC0C: F4        .byte $F4, $0C   ; 0D
- D 1 - I - 0x00EC1E 03:AC0E: FC        .byte $FC, $0C   ; 0E
- D 1 - I - 0x00EC20 03:AC10: F9        .byte $F9, $04   ; 0F



_off030_AC12_08:
- D 1 - I - 0x00EC22 03:AC12: 02        .byte con_sub_02, $0C   ; 
- D 1 - I - 0x00EC24 03:AC14: B7 A9     .word off_02_A9B7_00_spr_A
- D 1 - I - 0x00EC26 03:AC16: 1B AC     .word off_02_AC1B_01_spr_T
- D 1 - I - 0x00EC28 03:AC18: 27 AC     .word off_02_AC27_02_spr_XY
- D 1 - I - 0x00EC2A 03:AC1A: 00        .byte con_sub_00   ; 



off_02_AC1B_01_spr_T:
- D 1 - I - 0x00EC2B 03:AC1B: B2        .byte $B2   ; 01
- D 1 - I - 0x00EC2C 03:AC1C: B3        .byte $B3   ; 02
- D 1 - I - 0x00EC2D 03:AC1D: 82        .byte $82   ; 03
- D 1 - I - 0x00EC2E 03:AC1E: C2        .byte $C2   ; 04
- D 1 - I - 0x00EC2F 03:AC1F: 91        .byte $91   ; 05
- D 1 - I - 0x00EC30 03:AC20: 92        .byte $92   ; 06
- D 1 - I - 0x00EC31 03:AC21: A0        .byte $A0   ; 07
- D 1 - I - 0x00EC32 03:AC22: A1        .byte $A1   ; 08
- D 1 - I - 0x00EC33 03:AC23: E0        .byte $E0   ; 09
- D 1 - I - 0x00EC34 03:AC24: E1        .byte $E1   ; 0A
- D 1 - I - 0x00EC35 03:AC25: F0        .byte $F0   ; 0B
- D 1 - I - 0x00EC36 03:AC26: F1        .byte $F1   ; 0C



off_02_AC27_02_spr_XY:
- D 1 - I - 0x00EC37 03:AC27: FF        .byte $FF, $24   ; 01
- D 1 - I - 0x00EC39 03:AC29: 07        .byte $07, $24   ; 02
- D 1 - I - 0x00EC3B 03:AC2B: F6        .byte $F6, $1C   ; 03
- D 1 - I - 0x00EC3D 03:AC2D: FF        .byte $FF, $1C   ; 04
- D 1 - I - 0x00EC3F 03:AC2F: 07        .byte $07, $1C   ; 05
- D 1 - I - 0x00EC41 03:AC31: F6        .byte $F6, $14   ; 06
- D 1 - I - 0x00EC43 03:AC33: FE        .byte $FE, $14   ; 07
- D 1 - I - 0x00EC45 03:AC35: 06        .byte $06, $14   ; 08
- D 1 - I - 0x00EC47 03:AC37: FE        .byte $FE, $0C   ; 09
- D 1 - I - 0x00EC49 03:AC39: 06        .byte $06, $0C   ; 0A
- D 1 - I - 0x00EC4B 03:AC3B: FE        .byte $FE, $04   ; 0B
- D 1 - I - 0x00EC4D 03:AC3D: 06        .byte $06, $04   ; 0C



_off030_AC3F_0B:
- D 1 - I - 0x00EC4F 03:AC3F: 02        .byte con_sub_02, $07   ; 
- D 1 - I - 0x00EC51 03:AC41: 4F AC     .word off_02_AC4F_00_spr_A
- D 1 - I - 0x00EC53 03:AC43: 48 AC     .word off_02_AC48_01_spr_T
- D 1 - I - 0x00EC55 03:AC45: A9 83     .word off_02_83A9_02_spr_XY
- D 1 - I - 0x00EC57 03:AC47: 00        .byte con_sub_00   ; 



off_02_AC48_01_spr_T:
- D 1 - I - 0x00EC58 03:AC48: D2        .byte $D2   ; 01
- D 1 - I - 0x00EC59 03:AC49: D3        .byte $D3   ; 02
- D 1 - I - 0x00EC5A 03:AC4A: F2        .byte $F2   ; 03
- D 1 - I - 0x00EC5B 03:AC4B: F3        .byte $F3   ; 04
- D 1 - I - 0x00EC5C 03:AC4C: E2        .byte $E2   ; 05
- D 1 - I - 0x00EC5D 03:AC4D: E3        .byte $E3   ; 06
- D 1 - I - 0x00EC5E 03:AC4E: C0        .byte $C0   ; 07



off_02_AC4F_00_spr_A:
- D 1 - I - 0x00EC5F 03:AC4F: 03        .byte $03   ; 01
- D 1 - I - 0x00EC60 03:AC50: 00        .byte $00   ; 02
- D 1 - I - 0x00EC61 03:AC51: 02        .byte $02   ; 03
- D 1 - I - 0x00EC62 03:AC52: 02        .byte $02   ; 04
- D 1 - I - 0x00EC63 03:AC53: 03        .byte $03   ; 05
- D 1 - I - 0x00EC64 03:AC54: 03        .byte $03   ; 06
- D 1 - I - 0x00EC65 03:AC55: 02        .byte $02   ; 07



_off030_AC56_0A:
- D 1 - I - 0x00EC66 03:AC56: 02        .byte con_sub_02, $08   ; 
- D 1 - I - 0x00EC68 03:AC58: 5F AC     .word off_02_AC5F_00_spr_A
- D 1 - I - 0x00EC6A 03:AC5A: C0 83     .word off_02_83C0_01_spr_T
- D 1 - I - 0x00EC6C 03:AC5C: D2 83     .word off_02_83D2_02_spr_XY
- D 1 - I - 0x00EC6E 03:AC5E: 00        .byte con_sub_00   ; 



off_02_AC5F_00_spr_A:
- D 1 - I - 0x00EC6F 03:AC5F: 02        .byte $02   ; 01
- D 1 - I - 0x00EC70 03:AC60: 02        .byte $02   ; 02
- D 1 - I - 0x00EC71 03:AC61: 03        .byte $03   ; 03
- D 1 - I - 0x00EC72 03:AC62: 03        .byte $03   ; 04
- D 1 - I - 0x00EC73 03:AC63: 02        .byte $02   ; 05
- D 1 - I - 0x00EC74 03:AC64: 02        .byte $02   ; 06
- D 1 - I - 0x00EC75 03:AC65: 03        .byte $03   ; 07
- D 1 - I - 0x00EC76 03:AC66: 03        .byte $03   ; 08



_off030_AC67_1B:
sub_06_AC67_03:
- D 1 - I - 0x00EC77 03:AC67: 02        .byte con_sub_02, $0C   ; 
- D 1 - I - 0x00EC79 03:AC69: 7C AC     .word off_02_AC7C_00_spr_A
- D 1 - I - 0x00EC7B 03:AC6B: 70 AC     .word off_02_AC70_01_spr_T
- D 1 - I - 0x00EC7D 03:AC6D: 89 AC     .word off_02_AC89_02_spr_XY
- D 1 - I - 0x00EC7F 03:AC6F: 00        .byte con_sub_00   ; 



off_02_AC70_01_spr_T:
- D 1 - I - 0x00EC80 03:AC70: 81        .byte $81   ; 01
- D 1 - I - 0x00EC81 03:AC71: 80        .byte $80   ; 02
- D 1 - I - 0x00EC82 03:AC72: 91        .byte $91   ; 03
- D 1 - I - 0x00EC83 03:AC73: 90        .byte $90   ; 04
- D 1 - I - 0x00EC84 03:AC74: 82        .byte $82   ; 05
- D 1 - I - 0x00EC85 03:AC75: A1        .byte $A1   ; 06
- D 1 - I - 0x00EC86 03:AC76: A0        .byte $A0   ; 07
- D 1 - I - 0x00EC87 03:AC77: 92        .byte $92   ; 08
- D 1 - I - 0x00EC88 03:AC78: E1        .byte $E1   ; 09
- D 1 - I - 0x00EC89 03:AC79: E0        .byte $E0   ; 0A
- D 1 - I - 0x00EC8A 03:AC7A: F1        .byte $F1   ; 0B
- D 1 - I - 0x00EC8B 03:AC7B: F0        .byte $F0   ; 0C



off_02_AC7C_00_spr_A:
- D 1 - I - 0x00EC8C 03:AC7C: 40        .byte $40   ; 01
- D 1 - I - 0x00EC8D 03:AC7D: 40        .byte $40   ; 02
- D 1 - I - 0x00EC8E 03:AC7E: 43        .byte $43   ; 03
- D 1 - I - 0x00EC8F 03:AC7F: 43        .byte $43   ; 04
off_02_AC80_00_spr_A:
- D 1 - I - 0x00EC90 03:AC80: 43        .byte $43   ; 01 (05)
- D 1 - I - 0x00EC91 03:AC81: 43        .byte $43   ; 02 (06)
- D 1 - I - 0x00EC92 03:AC82: 43        .byte $43   ; 03 (07)
- D 1 - I - 0x00EC93 03:AC83: 43        .byte $43   ; 04 (08)
- D 1 - I - 0x00EC94 03:AC84: 42        .byte $42   ; 05 (09)
- D 1 - I - 0x00EC95 03:AC85: 42        .byte $42   ; 06 (0A)
- D 1 - I - 0x00EC96 03:AC86: 42        .byte $42   ; 07 (0B)
- D 1 - I - 0x00EC97 03:AC87: 42        .byte $42   ; 08 (0C)
- D 1 - I - 0x00EC98 03:AC88: 03        .byte $03   ; 09



off_02_AC89_02_spr_XY:
- D 1 - I - 0x00EC99 03:AC89: DF        .byte $DF, $22   ; 01
- D 1 - I - 0x00EC9B 03:AC8B: E7        .byte $E7, $22   ; 02
- D 1 - I - 0x00EC9D 03:AC8D: DF        .byte $DF, $1B   ; 03
- D 1 - I - 0x00EC9F 03:AC8F: E7        .byte $E7, $1A   ; 04
- D 1 - I - 0x00ECA1 03:AC91: EF        .byte $EF, $1A   ; 05
- D 1 - I - 0x00ECA3 03:AC93: DE        .byte $DE, $13   ; 06
- D 1 - I - 0x00ECA5 03:AC95: E6        .byte $E6, $13   ; 07
- D 1 - I - 0x00ECA7 03:AC97: EE        .byte $EE, $13   ; 08
- D 1 - I - 0x00ECA9 03:AC99: DF        .byte $DF, $0C   ; 09
- D 1 - I - 0x00ECAB 03:AC9B: E7        .byte $E7, $0C   ; 0A
- D 1 - I - 0x00ECAD 03:AC9D: E0        .byte $E0, $04   ; 0B
- D 1 - I - 0x00ECAF 03:AC9F: E8        .byte $E8, $04   ; 0C



_off030_ACA1_1C:
sub_06_ACA1_03:
- D 1 - I - 0x00ECB1 03:ACA1: 02        .byte con_sub_02, $08   ; 
- D 1 - I - 0x00ECB3 03:ACA3: 44 AA     .word off_02_AA44_00_spr_A
- D 1 - I - 0x00ECB5 03:ACA5: 67 83     .word off_02_8367_01_spr_T
- D 1 - I - 0x00ECB7 03:ACA7: 77 83     .word off_02_8377_02_spr_XY
- D 1 - I - 0x00ECB9 03:ACA9: 00        .byte con_sub_00   ; 



_off030_ACAA_07:
_off030_ACAA_1D:
- D 1 - I - 0x00ECBA 03:ACAA: 02        .byte con_sub_02, $0C   ; 
- D 1 - I - 0x00ECBC 03:ACAC: B7 A8     .word off_02_A8B7_00_spr_A
- D 1 - I - 0x00ECBE 03:ACAE: AB A8     .word off_02_A8AB_01_spr_T
- D 1 - I - 0x00ECC0 03:ACB0: 27 AC     .word off_02_AC27_02_spr_XY
- D 1 - I - 0x00ECC2 03:ACB2: 00        .byte con_sub_00   ; 



_off030_ACB3_21:
sub_06_ACB3_03:
- D 1 - I - 0x00ECC3 03:ACB3: 02        .byte con_sub_02, $08   ; 
- D 1 - I - 0x00ECC5 03:ACB5: C4 AC     .word off_02_ACC4_00_spr_A
- D 1 - I - 0x00ECC7 03:ACB7: BC AC     .word off_02_ACBC_01_spr_T
- D 1 - I - 0x00ECC9 03:ACB9: E7 86     .word off_02_86E7_02_spr_XY
- D 1 - I - 0x00ECCB 03:ACBB: 00        .byte con_sub_00   ; 



off_02_ACBC_01_spr_T:
- D 1 - I - 0x00ECCC 03:ACBC: B4        .byte $B4   ; 01
- D 1 - I - 0x00ECCD 03:ACBD: B5        .byte $B5   ; 02
- D 1 - I - 0x00ECCE 03:ACBE: B6        .byte $B6   ; 03
- D 1 - I - 0x00ECCF 03:ACBF: B1        .byte $B1   ; 04
- D 1 - I - 0x00ECD0 03:ACC0: B0        .byte $B0   ; 05
- D 1 - I - 0x00ECD1 03:ACC1: 87        .byte $87   ; 06
- D 1 - I - 0x00ECD2 03:ACC2: C1        .byte $C1   ; 07
- D 1 - I - 0x00ECD3 03:ACC3: C0        .byte $C0   ; 08



off_02_ACC4_00_spr_A:
- D 1 - I - 0x00ECD4 03:ACC4: 03        .byte $03   ; 01
- D 1 - I - 0x00ECD5 03:ACC5: 03        .byte $03   ; 02
- D 1 - I - 0x00ECD6 03:ACC6: 00        .byte $00   ; 03
- D 1 - I - 0x00ECD7 03:ACC7: 42        .byte $42   ; 04
- D 1 - I - 0x00ECD8 03:ACC8: 42        .byte $42   ; 05
- D 1 - I - 0x00ECD9 03:ACC9: 00        .byte $00   ; 06
- D 1 - I - 0x00ECDA 03:ACCA: 42        .byte $42   ; 07
- D 1 - I - 0x00ECDB 03:ACCB: 42        .byte $42   ; 08



_off030_ACCC_22:
sub_06_ACCC_03:
- D 1 - I - 0x00ECDC 03:ACCC: 02        .byte con_sub_02, $0A   ; 
- D 1 - I - 0x00ECDE 03:ACCE: DF AC     .word off_02_ACDF_00_spr_A
- D 1 - I - 0x00ECE0 03:ACD0: D5 AC     .word off_02_ACD5_01_spr_T
- D 1 - I - 0x00ECE2 03:ACD2: 14 87     .word off_02_8714_02_spr_XY
- D 1 - I - 0x00ECE4 03:ACD4: 00        .byte con_sub_00   ; 



off_02_ACD5_01_spr_T:
- D 1 - I - 0x00ECE5 03:ACD5: 95        .byte $95   ; 01
- D 1 - I - 0x00ECE6 03:ACD6: 96        .byte $96   ; 02
- D 1 - I - 0x00ECE7 03:ACD7: 97        .byte $97   ; 03
- D 1 - I - 0x00ECE8 03:ACD8: A5        .byte $A5   ; 04
- D 1 - I - 0x00ECE9 03:ACD9: A6        .byte $A6   ; 05
- D 1 - I - 0x00ECEA 03:ACDA: A7        .byte $A7   ; 06
- D 1 - I - 0x00ECEB 03:ACDB: B1        .byte $B1   ; 07
- D 1 - I - 0x00ECEC 03:ACDC: B0        .byte $B0   ; 08
- D 1 - I - 0x00ECED 03:ACDD: C1        .byte $C1   ; 09
- D 1 - I - 0x00ECEE 03:ACDE: C0        .byte $C0   ; 0A



off_02_ACDF_00_spr_A:
- D 1 - I - 0x00ECEF 03:ACDF: 03        .byte $03   ; 01
- D 1 - I - 0x00ECF0 03:ACE0: 03        .byte $03   ; 02
- D 1 - I - 0x00ECF1 03:ACE1: 00        .byte $00   ; 03
- D 1 - I - 0x00ECF2 03:ACE2: 03        .byte $03   ; 04
- D 1 - I - 0x00ECF3 03:ACE3: 03        .byte $03   ; 05
- D 1 - I - 0x00ECF4 03:ACE4: 00        .byte $00   ; 06
- D 1 - I - 0x00ECF5 03:ACE5: 42        .byte $42   ; 07
- D 1 - I - 0x00ECF6 03:ACE6: 42        .byte $42   ; 08
- D 1 - I - 0x00ECF7 03:ACE7: 42        .byte $42   ; 09
- D 1 - I - 0x00ECF8 03:ACE8: 42        .byte $42   ; 0A



_off030_ACE9_1A:
_off030_ACE9_23:
_off030_ACE9_24:
- D 1 - I - 0x00ECF9 03:ACE9: 02        .byte con_sub_02, $0D   ; 
- D 1 - I - 0x00ECFB 03:ACEB: FF AC     .word off_02_ACFF_00_spr_A
- D 1 - I - 0x00ECFD 03:ACED: F2 AC     .word off_02_ACF2_01_spr_T
- D 1 - I - 0x00ECFF 03:ACEF: 0C AD     .word off_02_AD0C_02_spr_XY
- D 1 - I - 0x00ED01 03:ACF1: 00        .byte con_sub_00   ; 



off_02_ACF2_01_spr_T:
- D 1 - I - 0x00ED02 03:ACF2: A2        .byte $A2   ; 01
- D 1 - I - 0x00ED03 03:ACF3: 81        .byte $81   ; 02
- D 1 - I - 0x00ED04 03:ACF4: BE        .byte $BE   ; 03
- D 1 - I - 0x00ED05 03:ACF5: BF        .byte $BF   ; 04
- D 1 - I - 0x00ED06 03:ACF6: CE        .byte $CE   ; 05
- D 1 - I - 0x00ED07 03:ACF7: CF        .byte $CF   ; 06
- D 1 - I - 0x00ED08 03:ACF8: DE        .byte $DE   ; 07
- D 1 - I - 0x00ED09 03:ACF9: DF        .byte $DF   ; 08
- D 1 - I - 0x00ED0A 03:ACFA: ED        .byte $ED   ; 09
- D 1 - I - 0x00ED0B 03:ACFB: EE        .byte $EE   ; 0A
- D 1 - I - 0x00ED0C 03:ACFC: EF        .byte $EF   ; 0B
- D 1 - I - 0x00ED0D 03:ACFD: DC        .byte $DC   ; 0C
- D 1 - I - 0x00ED0E 03:ACFE: DD        .byte $DD   ; 0D



off_02_ACFF_00_spr_A:
- D 1 - I - 0x00ED0F 03:ACFF: 00        .byte $00   ; 01
- D 1 - I - 0x00ED10 03:AD00: 00        .byte $00   ; 02
- D 1 - I - 0x00ED11 03:AD01: 00        .byte $00   ; 03
- D 1 - I - 0x00ED12 03:AD02: 03        .byte $03   ; 04
- D 1 - I - 0x00ED13 03:AD03: 03        .byte $03   ; 05
- D 1 - I - 0x00ED14 03:AD04: 03        .byte $03   ; 06
- D 1 - I - 0x00ED15 03:AD05: 03        .byte $03   ; 07
- D 1 - I - 0x00ED16 03:AD06: 03        .byte $03   ; 08
- D 1 - I - 0x00ED17 03:AD07: 02        .byte $02   ; 09
- D 1 - I - 0x00ED18 03:AD08: 02        .byte $02   ; 0A
- D 1 - I - 0x00ED19 03:AD09: 02        .byte $02   ; 0B
- D 1 - I - 0x00ED1A 03:AD0A: 02        .byte $02   ; 0C
- D 1 - I - 0x00ED1B 03:AD0B: 02        .byte $02   ; 0D



off_02_AD0C_02_spr_XY:
- D 1 - I - 0x00ED1C 03:AD0C: FB        .byte $FB, $22   ; 01
- D 1 - I - 0x00ED1E 03:AD0E: 03        .byte $03, $22   ; 02
- D 1 - I - 0x00ED20 03:AD10: EC        .byte $EC, $1B   ; 03
- D 1 - I - 0x00ED22 03:AD12: F4        .byte $F4, $1A   ; 04
- D 1 - I - 0x00ED24 03:AD14: FC        .byte $FC, $1A   ; 05
- D 1 - I - 0x00ED26 03:AD16: 04        .byte $04, $1A   ; 06
- D 1 - I - 0x00ED28 03:AD18: FC        .byte $FC, $12   ; 07
- D 1 - I - 0x00ED2A 03:AD1A: 04        .byte $04, $12   ; 08
- D 1 - I - 0x00ED2C 03:AD1C: FB        .byte $FB, $0A   ; 09
- D 1 - I - 0x00ED2E 03:AD1E: 03        .byte $03, $0A   ; 0A
- D 1 - I - 0x00ED30 03:AD20: 0B        .byte $0B, $0A   ; 0B
- D 1 - I - 0x00ED32 03:AD22: FA        .byte $FA, $02   ; 0C
- D 1 - I - 0x00ED34 03:AD24: 0B        .byte $0B, $03   ; 0D



_off030_AD26_00:
_off030_AD26_1A:
_off030_AD26_1C:
_off030_AD26_1E:
- D 1 - I - 0x00ED36 03:AD26: 02        .byte con_sub_02, $06   ; 
- D 1 - I - 0x00ED38 03:AD28: 38 AD     .word off_02_AD38_00_spr_A
- D 1 - I - 0x00ED3A 03:AD2A: 32 AD     .word off_02_AD32_01_spr_T
- D 1 - I - 0x00ED3C 03:AD2C: 3E AD     .word off_02_AD3E_02_spr_XY
- D 1 - I - 0x00ED3E 03:AD2E: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00ED3F 03:AD2F: 9B AD     .word sub_05_AD9B
- D 1 - I - 0x00ED41 03:AD31: 00        .byte con_sub_00   ; 



off_02_AD32_01_spr_T:
- D 1 - I - 0x00ED42 03:AD32: 80        .byte $80   ; 01
- D 1 - I - 0x00ED43 03:AD33: 81        .byte $81   ; 02
- D 1 - I - 0x00ED44 03:AD34: 90        .byte $90   ; 03
- D 1 - I - 0x00ED45 03:AD35: 91        .byte $91   ; 04
- D 1 - I - 0x00ED46 03:AD36: 92        .byte $92   ; 05
- D 1 - I - 0x00ED47 03:AD37: FD        .byte $FD   ; 06



off_02_AD38_00_spr_A:
- D 1 - I - 0x00ED48 03:AD38: 02        .byte $02   ; 01
- D 1 - I - 0x00ED49 03:AD39: 02        .byte $02   ; 02
- D 1 - I - 0x00ED4A 03:AD3A: 02        .byte $02   ; 03
- D 1 - I - 0x00ED4B 03:AD3B: 03        .byte $03   ; 04
- D 1 - I - 0x00ED4C 03:AD3C: 02        .byte $02   ; 05
- D 1 - I - 0x00ED4D 03:AD3D: 41        .byte $41   ; 06



off_02_AD3E_02_spr_XY:
- D 1 - I - 0x00ED4E 03:AD3E: EC        .byte $EC, $1C   ; 01
- D 1 - I - 0x00ED50 03:AD40: F4        .byte $F4, $1C   ; 02
- D 1 - I - 0x00ED52 03:AD42: EC        .byte $EC, $14   ; 03
- D 1 - I - 0x00ED54 03:AD44: F4        .byte $F4, $14   ; 04
- D 1 - I - 0x00ED56 03:AD46: FC        .byte $FC, $14   ; 05
- D 1 - I - 0x00ED58 03:AD48: 02        .byte $02, $12   ; 06



_off030_AD4A_01:
_off030_AD4A_03:
_off030_AD4A_1B:
_off030_AD4A_1D:
_off030_AD4A_1F:
- D 1 - I - 0x00ED5A 03:AD4A: 02        .byte con_sub_02, $06   ; 
- D 1 - I - 0x00ED5C 03:AD4C: 38 AD     .word off_02_AD38_00_spr_A
- D 1 - I - 0x00ED5E 03:AD4E: 32 AD     .word off_02_AD32_01_spr_T
- D 1 - I - 0x00ED60 03:AD50: 56 AD     .word off_02_AD56_02_spr_XY
- D 1 - I - 0x00ED62 03:AD52: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00ED63 03:AD53: B2 AD     .word sub_05_ADB2
- D 1 - I - 0x00ED65 03:AD55: 00        .byte con_sub_00   ; 



off_02_AD56_02_spr_XY:
- D 1 - I - 0x00ED66 03:AD56: EC        .byte $EC, $1B   ; 01
- D 1 - I - 0x00ED68 03:AD58: F4        .byte $F4, $1B   ; 02
- D 1 - I - 0x00ED6A 03:AD5A: EC        .byte $EC, $13   ; 03
- D 1 - I - 0x00ED6C 03:AD5C: F4        .byte $F4, $13   ; 04
- D 1 - I - 0x00ED6E 03:AD5E: FC        .byte $FC, $13   ; 05
- D 1 - I - 0x00ED70 03:AD60: 02        .byte $02, $11   ; 06



_off030_AD62_14:
- D 1 - I - 0x00ED72 03:AD62: 02        .byte con_sub_02, $0C   ; 
- D 1 - I - 0x00ED74 03:AD64: 77 AD     .word off_02_AD77_00_spr_A
- D 1 - I - 0x00ED76 03:AD66: 6B AD     .word off_02_AD6B_01_spr_T
- D 1 - I - 0x00ED78 03:AD68: 83 AD     .word off_02_AD83_02_spr_XY
- D 1 - I - 0x00ED7A 03:AD6A: 00        .byte con_sub_00   ; 



off_02_AD6B_01_spr_T:
- D 1 - I - 0x00ED7B 03:AD6B: F8        .byte $F8   ; 01
- D 1 - I - 0x00ED7C 03:AD6C: 80        .byte $80   ; 02
- D 1 - I - 0x00ED7D 03:AD6D: 81        .byte $81   ; 03
- D 1 - I - 0x00ED7E 03:AD6E: EF        .byte $EF   ; 04
- D 1 - I - 0x00ED7F 03:AD6F: 8D        .byte $8D   ; 05
- D 1 - I - 0x00ED80 03:AD70: 8E        .byte $8E   ; 06
- D 1 - I - 0x00ED81 03:AD71: 8F        .byte $8F   ; 07
- D 1 - I - 0x00ED82 03:AD72: A1        .byte $A1   ; 08
- D 1 - I - 0x00ED83 03:AD73: A2        .byte $A2   ; 09
- D 1 - I - 0x00ED84 03:AD74: A3        .byte $A3   ; 0A
- D 1 - I - 0x00ED85 03:AD75: B2        .byte $B2   ; 0B
- D 1 - I - 0x00ED86 03:AD76: B3        .byte $B3   ; 0C



off_02_AD77_00_spr_A:
- D 1 - I - 0x00ED87 03:AD77: 82        .byte $82   ; 01
- D 1 - I - 0x00ED88 03:AD78: 02        .byte $02   ; 02
- D 1 - I - 0x00ED89 03:AD79: 02        .byte $02   ; 03
- D 1 - I - 0x00ED8A 03:AD7A: 01        .byte $01   ; 04
- D 1 - I - 0x00ED8B 03:AD7B: 02        .byte $02   ; 05
- D 1 - I - 0x00ED8C 03:AD7C: 02        .byte $02   ; 06
- D 1 - I - 0x00ED8D 03:AD7D: 03        .byte $03   ; 07
- D 1 - I - 0x00ED8E 03:AD7E: 03        .byte $03   ; 08
- D 1 - I - 0x00ED8F 03:AD7F: 03        .byte $03   ; 09
- D 1 - I - 0x00ED90 03:AD80: 03        .byte $03   ; 0A
- D 1 - I - 0x00ED91 03:AD81: 03        .byte $03   ; 0B
- D 1 - I - 0x00ED92 03:AD82: 03        .byte $03   ; 0C



off_02_AD83_02_spr_XY:
- D 1 - I - 0x00ED93 03:AD83: E6        .byte $E6, $19   ; 01
- D 1 - I - 0x00ED95 03:AD85: EC        .byte $EC, $1C   ; 02
- D 1 - I - 0x00ED97 03:AD87: F4        .byte $F4, $1C   ; 03
- D 1 - I - 0x00ED99 03:AD89: E5        .byte $E5, $14   ; 04
- D 1 - I - 0x00ED9B 03:AD8B: EC        .byte $EC, $15   ; 05
- D 1 - I - 0x00ED9D 03:AD8D: F4        .byte $F4, $14   ; 06
- D 1 - I - 0x00ED9F 03:AD8F: FC        .byte $FC, $14   ; 07
- D 1 - I - 0x00EDA1 03:AD91: F4        .byte $F4, $0C   ; 08
- D 1 - I - 0x00EDA3 03:AD93: FC        .byte $FC, $0C   ; 09
- D 1 - I - 0x00EDA5 03:AD95: 04        .byte $04, $0C   ; 0A
- D 1 - I - 0x00EDA7 03:AD97: FC        .byte $FC, $04   ; 0B
- D 1 - I - 0x00EDA9 03:AD99: 04        .byte $04, $04   ; 0C



sub_05_AD9B:
- D 1 - I - 0x00EDAB 03:AD9B: 01        .byte con_sub_01, $05, $03   ; 
- D 1 - I - 0x00EDAE 03:AD9E: A3 AD     .word off_01_ADA3_spr_T
- D 1 - I - 0x00EDB0 03:ADA0: A8 AD     .word off_01_ADA8_spr_XY
- D 1 - I - 0x00EDB2 03:ADA2: 00        .byte con_sub_00   ; 



off_01_ADA3_spr_T:
- D 1 - I - 0x00EDB3 03:ADA3: A1        .byte $A1   ; 01
- D 1 - I - 0x00EDB4 03:ADA4: A2        .byte $A2   ; 02
- D 1 - I - 0x00EDB5 03:ADA5: A3        .byte $A3   ; 03
- D 1 - I - 0x00EDB6 03:ADA6: B2        .byte $B2   ; 04
- D 1 - I - 0x00EDB7 03:ADA7: B3        .byte $B3   ; 05



off_01_ADA8_spr_XY:
- D 1 - I - 0x00EDB8 03:ADA8: F4        .byte $F4, $0C   ; 01
- D 1 - I - 0x00EDBA 03:ADAA: FC        .byte $FC, $0C   ; 02
- D 1 - I - 0x00EDBC 03:ADAC: 04        .byte $04, $0C   ; 03
- D 1 - I - 0x00EDBE 03:ADAE: FC        .byte $FC, $04   ; 04
- D 1 - I - 0x00EDC0 03:ADB0: 04        .byte $04, $04   ; 05



sub_05_ADB2:
- D 1 - I - 0x00EDC2 03:ADB2: 01        .byte con_sub_01, $03, $03   ; 
- D 1 - I - 0x00EDC5 03:ADB5: BA AD     .word off_01_ADBA_spr_T
- D 1 - I - 0x00EDC7 03:ADB7: BD AD     .word off_01_ADBD_spr_XY
- D 1 - I - 0x00EDC9 03:ADB9: 00        .byte con_sub_00   ; 



off_01_ADBA_spr_T:
- D 1 - I - 0x00EDCA 03:ADBA: B0        .byte $B0   ; 01
- D 1 - I - 0x00EDCB 03:ADBB: B1        .byte $B1   ; 02
- D 1 - I - 0x00EDCC 03:ADBC: A0        .byte $A0   ; 03



off_01_ADBD_spr_XY:
- D 1 - I - 0x00EDCD 03:ADBD: FA        .byte $FA, $0B   ; 01
- D 1 - I - 0x00EDCF 03:ADBF: 02        .byte $02, $0B   ; 02
- D 1 - I - 0x00EDD1 03:ADC1: 02        .byte $02, $03   ; 03


; bzk garbage
- - - - - - 0x00EDD3 03:ADC3: 02        .byte con_sub_02, $02   ; 
- - - - - - 0x00EDD5 03:ADC5: CE AD     .word off_02_ADCE_00_spr_A
- - - - - - 0x00EDD7 03:ADC7: CC AD     .word off_02_ADCC_01_spr_T
- - - - - - 0x00EDD9 03:ADC9: D0 AD     .word off_02_ADD0_02_spr_XY
- - - - - - 0x00EDDB 03:ADCB: 00        .byte con_sub_00   ; 



off_02_ADCC_01_spr_T:
- - - - - - 0x00EDDC 03:ADCC: EE        .byte $EE   ; 01
- - - - - - 0x00EDDD 03:ADCD: EE        .byte $EE   ; 02



off_02_ADCE_00_spr_A:
- - - - - - 0x00EDDE 03:ADCE: 81        .byte $81   ; 01
- - - - - - 0x00EDDF 03:ADCF: 01        .byte $01   ; 02



off_02_ADD0_02_spr_XY:
- - - - - - 0x00EDE0 03:ADD0: 00        .byte $00, $04   ; 01
- - - - - - 0x00EDE2 03:ADD2: 00        .byte $00, $FC   ; 02



_off030_ADD4_02:
- D 1 - I - 0x00EDE4 03:ADD4: 02        .byte con_sub_02, $07   ; 
- D 1 - I - 0x00EDE6 03:ADD6: E7 AD     .word off_02_ADE7_00_spr_A
- D 1 - I - 0x00EDE8 03:ADD8: E0 AD     .word off_02_ADE0_01_spr_T
- D 1 - I - 0x00EDEA 03:ADDA: EE AD     .word off_02_ADEE_02_spr_XY
- D 1 - I - 0x00EDEC 03:ADDC: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00EDED 03:ADDD: 9D AE     .word sub_05_AE9D
- D 1 - I - 0x00EDEF 03:ADDF: 00        .byte con_sub_00   ; 



off_02_ADE0_01_spr_T:
- D 1 - I - 0x00EDF0 03:ADE0: 80        .byte $80   ; 01
- D 1 - I - 0x00EDF1 03:ADE1: 81        .byte $81   ; 02
- D 1 - I - 0x00EDF2 03:ADE2: 95        .byte $95   ; 03
- D 1 - I - 0x00EDF3 03:ADE3: C1        .byte $C1   ; 04
- D 1 - I - 0x00EDF4 03:ADE4: EC        .byte $EC   ; 05
- D 1 - I - 0x00EDF5 03:ADE5: D0        .byte $D0   ; 06
- D 1 - I - 0x00EDF6 03:ADE6: D1        .byte $D1   ; 07



off_02_ADE7_00_spr_A:
- D 1 - I - 0x00EDF7 03:ADE7: 02        .byte $02   ; 01
- D 1 - I - 0x00EDF8 03:ADE8: 02        .byte $02   ; 02
- D 1 - I - 0x00EDF9 03:ADE9: 02        .byte $02   ; 03
- D 1 - I - 0x00EDFA 03:ADEA: 02        .byte $02   ; 04
- D 1 - I - 0x00EDFB 03:ADEB: 81        .byte $81   ; 05
- D 1 - I - 0x00EDFC 03:ADEC: 03        .byte $03   ; 06
- D 1 - I - 0x00EDFD 03:ADED: 02        .byte $02   ; 07



off_02_ADEE_02_spr_XY:
- D 1 - I - 0x00EDFE 03:ADEE: FA        .byte $FA, $24   ; 01
- D 1 - I - 0x00EE00 03:ADF0: 02        .byte $02, $24   ; 02
- D 1 - I - 0x00EE02 03:ADF2: FC        .byte $FC, $1C   ; 03
- D 1 - I - 0x00EE04 03:ADF4: 04        .byte $04, $1C   ; 04
- D 1 - I - 0x00EE06 03:ADF6: F9        .byte $F9, $16   ; 05
- D 1 - I - 0x00EE08 03:ADF8: FC        .byte $FC, $14   ; 06
- D 1 - I - 0x00EE0A 03:ADFA: 04        .byte $04, $14   ; 07



_off030_ADFC_16:
- D 1 - I - 0x00EE0C 03:ADFC: 02        .byte con_sub_02, $08   ; 
- D 1 - I - 0x00EE0E 03:ADFE: 10 AE     .word off_02_AE10_00_spr_A
- D 1 - I - 0x00EE10 03:AE00: 08 AE     .word off_02_AE08_01_spr_T
- D 1 - I - 0x00EE12 03:AE02: 18 AE     .word off_02_AE18_02_spr_XY
- D 1 - I - 0x00EE14 03:AE04: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00EE15 03:AE05: 9D AE     .word sub_05_AE9D
- D 1 - I - 0x00EE17 03:AE07: 00        .byte con_sub_00   ; 



off_02_AE08_01_spr_T:
- D 1 - I - 0x00EE18 03:AE08: 80        .byte $80   ; 01
- D 1 - I - 0x00EE19 03:AE09: 81        .byte $81   ; 02
- D 1 - I - 0x00EE1A 03:AE0A: C1        .byte $C1   ; 03
- D 1 - I - 0x00EE1B 03:AE0B: CF        .byte $CF   ; 04
- D 1 - I - 0x00EE1C 03:AE0C: BA        .byte $BA   ; 05
- D 1 - I - 0x00EE1D 03:AE0D: B6        .byte $B6   ; 06
- D 1 - I - 0x00EE1E 03:AE0E: B7        .byte $B7   ; 07
- D 1 - I - 0x00EE1F 03:AE0F: FD        .byte $FD   ; 08



off_02_AE10_00_spr_A:
- D 1 - I - 0x00EE20 03:AE10: 02        .byte $02   ; 01
- D 1 - I - 0x00EE21 03:AE11: 02        .byte $02   ; 02
- D 1 - I - 0x00EE22 03:AE12: 42        .byte $42   ; 03
- D 1 - I - 0x00EE23 03:AE13: 02        .byte $02   ; 04
- D 1 - I - 0x00EE24 03:AE14: 02        .byte $02   ; 05
- D 1 - I - 0x00EE25 03:AE15: 02        .byte $02   ; 06
- D 1 - I - 0x00EE26 03:AE16: 02        .byte $02   ; 07
- D 1 - I - 0x00EE27 03:AE17: 41        .byte $41   ; 08



off_02_AE18_02_spr_XY:
- D 1 - I - 0x00EE28 03:AE18: FE        .byte $FE, $24   ; 01
- D 1 - I - 0x00EE2A 03:AE1A: 06        .byte $06, $24   ; 02
- D 1 - I - 0x00EE2C 03:AE1C: FB        .byte $FB, $1C   ; 03
- D 1 - I - 0x00EE2E 03:AE1E: 03        .byte $03, $1C   ; 04
- D 1 - I - 0x00EE30 03:AE20: 03        .byte $03, $1C   ; 05
- D 1 - I - 0x00EE32 03:AE22: FB        .byte $FB, $14   ; 06
- D 1 - I - 0x00EE34 03:AE24: 03        .byte $03, $14   ; 07
- D 1 - I - 0x00EE36 03:AE26: 08        .byte $08, $12   ; 08



_off030_AE28_17:
- D 1 - I - 0x00EE38 03:AE28: 02        .byte con_sub_02, $09   ; 
- D 1 - I - 0x00EE3A 03:AE2A: 3D AE     .word off_02_AE3D_00_spr_A
- D 1 - I - 0x00EE3C 03:AE2C: 34 AE     .word off_02_AE34_01_spr_T
- D 1 - I - 0x00EE3E 03:AE2E: 46 AE     .word off_02_AE46_02_spr_XY
- D 1 - I - 0x00EE40 03:AE30: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00EE41 03:AE31: 9D AE     .word sub_05_AE9D
- D 1 - I - 0x00EE43 03:AE33: 00        .byte con_sub_00   ; 



off_02_AE34_01_spr_T:
- D 1 - I - 0x00EE44 03:AE34: FD        .byte $FD   ; 01
- D 1 - I - 0x00EE45 03:AE35: 80        .byte $80   ; 02
- D 1 - I - 0x00EE46 03:AE36: 81        .byte $81   ; 03
- D 1 - I - 0x00EE47 03:AE37: F8        .byte $F8   ; 04
- D 1 - I - 0x00EE48 03:AE38: DF        .byte $DF   ; 05
- D 1 - I - 0x00EE49 03:AE39: DC        .byte $DC   ; 06
- D 1 - I - 0x00EE4A 03:AE3A: DE        .byte $DE   ; 07
- D 1 - I - 0x00EE4B 03:AE3B: D0        .byte $D0   ; 08
- D 1 - I - 0x00EE4C 03:AE3C: DD        .byte $DD   ; 09



off_02_AE3D_00_spr_A:
- D 1 - I - 0x00EE4D 03:AE3D: 01        .byte $01   ; 01
- D 1 - I - 0x00EE4E 03:AE3E: 02        .byte $02   ; 02
- D 1 - I - 0x00EE4F 03:AE3F: 02        .byte $02   ; 03
- D 1 - I - 0x00EE50 03:AE40: 82        .byte $82   ; 04
- D 1 - I - 0x00EE51 03:AE41: 02        .byte $02   ; 05
- D 1 - I - 0x00EE52 03:AE42: 03        .byte $03   ; 06
- D 1 - I - 0x00EE53 03:AE43: 03        .byte $03   ; 07
- D 1 - I - 0x00EE54 03:AE44: 03        .byte $03   ; 08
- D 1 - I - 0x00EE55 03:AE45: 03        .byte $03   ; 09



off_02_AE46_02_spr_XY:
- D 1 - I - 0x00EE56 03:AE46: E7        .byte $E7, $21   ; 01
- D 1 - I - 0x00EE58 03:AE48: FA        .byte $FA, $24   ; 02
- D 1 - I - 0x00EE5A 03:AE4A: 02        .byte $02, $24   ; 03
- D 1 - I - 0x00EE5C 03:AE4C: EF        .byte $EF, $20   ; 04
- D 1 - I - 0x00EE5E 03:AE4E: F4        .byte $F4, $1C   ; 05
- D 1 - I - 0x00EE60 03:AE50: FC        .byte $FC, $1C   ; 06
- D 1 - I - 0x00EE62 03:AE52: 04        .byte $04, $1C   ; 07
- D 1 - I - 0x00EE64 03:AE54: FC        .byte $FC, $14   ; 08
- D 1 - I - 0x00EE66 03:AE56: 04        .byte $04, $14   ; 09



_off030_AE58_18:
- D 1 - I - 0x00EE68 03:AE58: 02        .byte con_sub_02, $08   ; 
- D 1 - I - 0x00EE6A 03:AE5A: 6C AE     .word off_02_AE6C_00_spr_A
- D 1 - I - 0x00EE6C 03:AE5C: 64 AE     .word off_02_AE64_01_spr_T
- D 1 - I - 0x00EE6E 03:AE5E: 74 AE     .word off_02_AE74_02_spr_XY
- D 1 - I - 0x00EE70 03:AE60: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00EE71 03:AE61: 9D AE     .word sub_05_AE9D
- D 1 - I - 0x00EE73 03:AE63: 00        .byte con_sub_00   ; 



off_02_AE64_01_spr_T:
- D 1 - I - 0x00EE74 03:AE64: 80        .byte $80   ; 01
- D 1 - I - 0x00EE75 03:AE65: 81        .byte $81   ; 02
- D 1 - I - 0x00EE76 03:AE66: BF        .byte $BF   ; 03
- D 1 - I - 0x00EE77 03:AE67: FA        .byte $FA   ; 04
- D 1 - I - 0x00EE78 03:AE68: F7        .byte $F7   ; 05
- D 1 - I - 0x00EE79 03:AE69: CE        .byte $CE   ; 06
- D 1 - I - 0x00EE7A 03:AE6A: D3        .byte $D3   ; 07
- D 1 - I - 0x00EE7B 03:AE6B: A7        .byte $A7   ; 08



off_02_AE6C_00_spr_A:
- D 1 - I - 0x00EE7C 03:AE6C: 02        .byte $02   ; 01
- D 1 - I - 0x00EE7D 03:AE6D: 02        .byte $02   ; 02
- D 1 - I - 0x00EE7E 03:AE6E: 02        .byte $02   ; 03
- D 1 - I - 0x00EE7F 03:AE6F: 03        .byte $03   ; 04
- D 1 - I - 0x00EE80 03:AE70: 03        .byte $03   ; 05
- D 1 - I - 0x00EE81 03:AE71: 02        .byte $02   ; 06
- D 1 - I - 0x00EE82 03:AE72: 03        .byte $03   ; 07
- D 1 - I - 0x00EE83 03:AE73: 03        .byte $03   ; 08



off_02_AE74_02_spr_XY:
- D 1 - I - 0x00EE84 03:AE74: F8        .byte $F8, $24   ; 01
- D 1 - I - 0x00EE86 03:AE76: 00        .byte $00, $24   ; 02
- D 1 - I - 0x00EE88 03:AE78: F4        .byte $F4, $1C   ; 03
- D 1 - I - 0x00EE8A 03:AE7A: FC        .byte $FC, $1C   ; 04
- D 1 - I - 0x00EE8C 03:AE7C: 04        .byte $04, $1C   ; 05
- D 1 - I - 0x00EE8E 03:AE7E: 05        .byte $05, $1C   ; 06
- D 1 - I - 0x00EE90 03:AE80: FC        .byte $FC, $14   ; 07
- D 1 - I - 0x00EE92 03:AE82: 04        .byte $04, $14   ; 08


; bzk garbage
- - - - - - 0x00EE94 03:AE84: 02        .byte con_sub_02, $04   ; 
- - - - - - 0x00EE96 03:AE86: 91 AE     .word off_02_AE91_00_spr_A
- - - - - - 0x00EE98 03:AE88: 8D AE     .word off_02_AE8D_01_spr_T
- - - - - - 0x00EE9A 03:AE8A: 95 AE     .word off_02_AE95_02_spr_XY
- - - - - - 0x00EE9C 03:AE8C: 00        .byte con_sub_00   ; 



off_02_AE8D_01_spr_T:
- - - - - - 0x00EE9D 03:AE8D: ED        .byte $ED   ; 01
- - - - - - 0x00EE9E 03:AE8E: ED        .byte $ED   ; 02
- - - - - - 0x00EE9F 03:AE8F: ED        .byte $ED   ; 03
- - - - - - 0x00EEA0 03:AE90: ED        .byte $ED   ; 04



off_02_AE91_00_spr_A:
- - - - - - 0x00EEA1 03:AE91: 00        .byte $00   ; 01
- - - - - - 0x00EEA2 03:AE92: 40        .byte $40   ; 02
- - - - - - 0x00EEA3 03:AE93: 80        .byte $80   ; 03
- - - - - - 0x00EEA4 03:AE94: C0        .byte $C0   ; 04



off_02_AE95_02_spr_XY:
- - - - - - 0x00EEA5 03:AE95: FC        .byte $FC, $04   ; 01
- - - - - - 0x00EEA7 03:AE97: 04        .byte $04, $04   ; 02
- - - - - - 0x00EEA9 03:AE99: FC        .byte $FC, $FC   ; 03
- - - - - - 0x00EEAB 03:AE9B: 04        .byte $04, $FC   ; 04



sub_05_AE9D:
- D 1 - I - 0x00EEAD 03:AE9D: 01        .byte con_sub_01, $04, $03   ; 
- D 1 - I - 0x00EEB0 03:AEA0: A5 AE     .word off_01_AEA5_spr_T
- D 1 - I - 0x00EEB2 03:AEA2: A9 AE     .word off_01_AEA9_spr_XY
- D 1 - I - 0x00EEB4 03:AEA4: 00        .byte con_sub_00   ; 



off_01_AEA5_spr_T:
- D 1 - I - 0x00EEB5 03:AEA5: E0        .byte $E0   ; 01
- D 1 - I - 0x00EEB6 03:AEA6: E1        .byte $E1   ; 02
- D 1 - I - 0x00EEB7 03:AEA7: F0        .byte $F0   ; 03
- D 1 - I - 0x00EEB8 03:AEA8: F1        .byte $F1   ; 04



off_01_AEA9_spr_XY:
- D 1 - I - 0x00EEB9 03:AEA9: FC        .byte $FC, $0C   ; 01
- D 1 - I - 0x00EEBB 03:AEAB: 04        .byte $04, $0C   ; 02
- D 1 - I - 0x00EEBD 03:AEAD: FC        .byte $FC, $04   ; 03
- D 1 - I - 0x00EEBF 03:AEAF: 04        .byte $04, $04   ; 04



_off030_AEB1_09:
- D 1 - I - 0x00EEC1 03:AEB1: 02        .byte con_sub_02, $09   ; 
- D 1 - I - 0x00EEC3 03:AEB3: C3 AE     .word off_02_AEC3_00_spr_A
- D 1 - I - 0x00EEC5 03:AEB5: BA AE     .word off_02_AEBA_01_spr_T
- D 1 - I - 0x00EEC7 03:AEB7: CC AE     .word off_02_AECC_02_spr_XY
- D 1 - I - 0x00EEC9 03:AEB9: 00        .byte con_sub_00   ; 



off_02_AEBA_01_spr_T:
- D 1 - I - 0x00EECA 03:AEBA: 80        .byte $80   ; 01
- D 1 - I - 0x00EECB 03:AEBB: 81        .byte $81   ; 02
- D 1 - I - 0x00EECC 03:AEBC: C0        .byte $C0   ; 03
- D 1 - I - 0x00EECD 03:AEBD: C1        .byte $C1   ; 04
- D 1 - I - 0x00EECE 03:AEBE: D0        .byte $D0   ; 05
- D 1 - I - 0x00EECF 03:AEBF: D1        .byte $D1   ; 06
- D 1 - I - 0x00EED0 03:AEC0: 84        .byte $84   ; 07
- D 1 - I - 0x00EED1 03:AEC1: 85        .byte $85   ; 08
- D 1 - I - 0x00EED2 03:AEC2: A0        .byte $A0   ; 09



off_02_AEC3_00_spr_A:
- D 1 - I - 0x00EED3 03:AEC3: 02        .byte $02   ; 01
- D 1 - I - 0x00EED4 03:AEC4: 02        .byte $02   ; 02
- D 1 - I - 0x00EED5 03:AEC5: 02        .byte $02   ; 03
- D 1 - I - 0x00EED6 03:AEC6: 02        .byte $02   ; 04
- D 1 - I - 0x00EED7 03:AEC7: 03        .byte $03   ; 05
- D 1 - I - 0x00EED8 03:AEC8: 02        .byte $02   ; 06
- D 1 - I - 0x00EED9 03:AEC9: 03        .byte $03   ; 07
- D 1 - I - 0x00EEDA 03:AECA: 03        .byte $03   ; 08
- D 1 - I - 0x00EEDB 03:AECB: 03        .byte $03   ; 09



off_02_AECC_02_spr_XY:
- D 1 - I - 0x00EEDC 03:AECC: F8        .byte $F8, $24   ; 01
- D 1 - I - 0x00EEDE 03:AECE: 00        .byte $00, $24   ; 02
- D 1 - I - 0x00EEE0 03:AED0: FB        .byte $FB, $1C   ; 03
- D 1 - I - 0x00EEE2 03:AED2: 03        .byte $03, $1C   ; 04
- D 1 - I - 0x00EEE4 03:AED4: FC        .byte $FC, $14   ; 05
- D 1 - I - 0x00EEE6 03:AED6: 04        .byte $04, $14   ; 06
- D 1 - I - 0x00EEE8 03:AED8: FA        .byte $FA, $0C   ; 07
- D 1 - I - 0x00EEEA 03:AEDA: 02        .byte $02, $0C   ; 08
- D 1 - I - 0x00EEEC 03:AEDC: 00        .byte $00, $04   ; 09



_off030_AEDE_04:
- D 1 - I - 0x00EEEE 03:AEDE: 02        .byte con_sub_02, $0B   ; 
- D 1 - I - 0x00EEF0 03:AEE0: F2 AE     .word off_02_AEF2_00_spr_A
- D 1 - I - 0x00EEF2 03:AEE2: E7 AE     .word off_02_AEE7_01_spr_T
- D 1 - I - 0x00EEF4 03:AEE4: FD AE     .word off_02_AEFD_02_spr_XY
- D 1 - I - 0x00EEF6 03:AEE6: 00        .byte con_sub_00   ; 



off_02_AEE7_01_spr_T:
- D 1 - I - 0x00EEF7 03:AEE7: 8C        .byte $8C   ; 01
- D 1 - I - 0x00EEF8 03:AEE8: BB        .byte $BB   ; 02
- D 1 - I - 0x00EEF9 03:AEE9: 9B        .byte $9B   ; 03
- D 1 - I - 0x00EEFA 03:AEEA: 9C        .byte $9C   ; 04
- D 1 - I - 0x00EEFB 03:AEEB: CB        .byte $CB   ; 05
- D 1 - I - 0x00EEFC 03:AEEC: FB        .byte $FB   ; 06
- D 1 - I - 0x00EEFD 03:AEED: AC        .byte $AC   ; 07
- D 1 - I - 0x00EEFE 03:AEEE: DB        .byte $DB   ; 08
- D 1 - I - 0x00EEFF 03:AEEF: BC        .byte $BC   ; 09
- D 1 - I - 0x00EF00 03:AEF0: EB        .byte $EB   ; 0A
- D 1 - I - 0x00EF01 03:AEF1: A5        .byte $A5   ; 0B



off_02_AEF2_00_spr_A:
- D 1 - I - 0x00EF02 03:AEF2: 02        .byte $02   ; 01
- D 1 - I - 0x00EF03 03:AEF3: 02        .byte $02   ; 02
- D 1 - I - 0x00EF04 03:AEF4: 02        .byte $02   ; 03
- D 1 - I - 0x00EF05 03:AEF5: 02        .byte $02   ; 04
- D 1 - I - 0x00EF06 03:AEF6: 02        .byte $02   ; 05
- D 1 - I - 0x00EF07 03:AEF7: 03        .byte $03   ; 06
- D 1 - I - 0x00EF08 03:AEF8: 03        .byte $03   ; 07
- D 1 - I - 0x00EF09 03:AEF9: 03        .byte $03   ; 08
- D 1 - I - 0x00EF0A 03:AEFA: 03        .byte $03   ; 09
- D 1 - I - 0x00EF0B 03:AEFB: 03        .byte $03   ; 0A
- D 1 - I - 0x00EF0C 03:AEFC: 43        .byte $43   ; 0B



off_02_AEFD_02_spr_XY:
- D 1 - I - 0x00EF0D 03:AEFD: FC        .byte $FC, $26   ; 01
- D 1 - I - 0x00EF0F 03:AEFF: 04        .byte $04, $27   ; 02
- D 1 - I - 0x00EF11 03:AF01: 0C        .byte $0C, $25   ; 03
- D 1 - I - 0x00EF13 03:AF03: FC        .byte $FC, $1E   ; 04
- D 1 - I - 0x00EF15 03:AF05: 04        .byte $04, $1F   ; 05
- D 1 - I - 0x00EF17 03:AF07: F4        .byte $F4, $17   ; 06
- D 1 - I - 0x00EF19 03:AF09: FC        .byte $FC, $16   ; 07
- D 1 - I - 0x00EF1B 03:AF0B: 04        .byte $04, $17   ; 08
- D 1 - I - 0x00EF1D 03:AF0D: FC        .byte $FC, $0E   ; 09
- D 1 - I - 0x00EF1F 03:AF0F: 04        .byte $04, $0F   ; 0A
- D 1 - I - 0x00EF21 03:AF11: F8        .byte $F8, $07   ; 0B



_off030_AF13_06:
- D 1 - I - 0x00EF23 03:AF13: 02        .byte con_sub_02, $05   ; 
- D 1 - I - 0x00EF25 03:AF15: 24 AF     .word off_02_AF24_00_spr_A
- D 1 - I - 0x00EF27 03:AF17: 1F AF     .word off_02_AF1F_01_spr_T
- D 1 - I - 0x00EF29 03:AF19: 29 AF     .word off_02_AF29_02_spr_XY
- D 1 - I - 0x00EF2B 03:AF1B: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00EF2C 03:AF1C: 96 AF     .word sub_05_AF96
- D 1 - I - 0x00EF2E 03:AF1E: 00        .byte con_sub_00   ; 



off_02_AF1F_01_spr_T:
- D 1 - I - 0x00EF2F 03:AF1F: 80        .byte $80   ; 01
- D 1 - I - 0x00EF30 03:AF20: 81        .byte $81   ; 02
- D 1 - I - 0x00EF31 03:AF21: 90        .byte $90   ; 03
- D 1 - I - 0x00EF32 03:AF22: 91        .byte $91   ; 04
- D 1 - I - 0x00EF33 03:AF23: 92        .byte $92   ; 05



off_02_AF24_00_spr_A:
- D 1 - I - 0x00EF34 03:AF24: 02        .byte $02   ; 01
- D 1 - I - 0x00EF35 03:AF25: 02        .byte $02   ; 02
- D 1 - I - 0x00EF36 03:AF26: 02        .byte $02   ; 03
- D 1 - I - 0x00EF37 03:AF27: 03        .byte $03   ; 04
- D 1 - I - 0x00EF38 03:AF28: 02        .byte $02   ; 05



off_02_AF29_02_spr_XY:
- D 1 - I - 0x00EF39 03:AF29: F6        .byte $F6, $1B   ; 01
- D 1 - I - 0x00EF3B 03:AF2B: FE        .byte $FE, $1B   ; 02
- D 1 - I - 0x00EF3D 03:AF2D: F6        .byte $F6, $13   ; 03
- D 1 - I - 0x00EF3F 03:AF2F: FE        .byte $FE, $13   ; 04
- D 1 - I - 0x00EF41 03:AF31: 06        .byte $06, $13   ; 05



_off030_AF33_05:
- D 1 - I - 0x00EF43 03:AF33: 02        .byte con_sub_02, $05   ; 
- D 1 - I - 0x00EF45 03:AF35: 24 AF     .word off_02_AF24_00_spr_A
- D 1 - I - 0x00EF47 03:AF37: 1F AF     .word off_02_AF1F_01_spr_T
- D 1 - I - 0x00EF49 03:AF39: 3F AF     .word off_02_AF3F_02_spr_XY
- D 1 - I - 0x00EF4B 03:AF3B: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00EF4C 03:AF3C: AD AF     .word sub_05_AFAD
- D 1 - I - 0x00EF4E 03:AF3E: 00        .byte con_sub_00   ; 



off_02_AF3F_02_spr_XY:
- D 1 - I - 0x00EF4F 03:AF3F: F6        .byte $F6, $25   ; 01
- D 1 - I - 0x00EF51 03:AF41: FE        .byte $FE, $25   ; 02
- D 1 - I - 0x00EF53 03:AF43: F6        .byte $F6, $1D   ; 03
- D 1 - I - 0x00EF55 03:AF45: FE        .byte $FE, $1D   ; 04
- D 1 - I - 0x00EF57 03:AF47: 06        .byte $06, $1D   ; 05



_off030_AF49_10:
- - - - - - 0x00EF59 03:AF49: 02        .byte con_sub_02, $07   ; 
- - - - - - 0x00EF5B 03:AF4B: 5C AF     .word off_02_AF5C_00_spr_A
- - - - - - 0x00EF5D 03:AF4D: 55 AF     .word off_02_AF55_01_spr_T
- - - - - - 0x00EF5F 03:AF4F: 63 AF     .word off_02_AF63_02_spr_XY
- - - - - - 0x00EF61 03:AF51: 05        .byte con_sub_05   ; 
- - - - - - 0x00EF62 03:AF52: AD AF     .word sub_05_AFAD
- - - - - - 0x00EF64 03:AF54: 00        .byte con_sub_00   ; 



off_02_AF55_01_spr_T:
- D 1 - I - 0x00EF65 03:AF55: 80        .byte $80   ; 01
- D 1 - I - 0x00EF66 03:AF56: 81        .byte $81   ; 02
- D 1 - I - 0x00EF67 03:AF57: BD        .byte $BD   ; 03
- D 1 - I - 0x00EF68 03:AF58: BE        .byte $BE   ; 04
- D 1 - I - 0x00EF69 03:AF59: AF        .byte $AF   ; 05
- D 1 - I - 0x00EF6A 03:AF5A: D7        .byte $D7   ; 06
- D 1 - I - 0x00EF6B 03:AF5B: 92        .byte $92   ; 07



off_02_AF5C_00_spr_A:
- D 1 - I - 0x00EF6C 03:AF5C: 02        .byte $02   ; 01
- D 1 - I - 0x00EF6D 03:AF5D: 02        .byte $02   ; 02
- D 1 - I - 0x00EF6E 03:AF5E: 02        .byte $02   ; 03
- D 1 - I - 0x00EF6F 03:AF5F: 02        .byte $02   ; 04
- D 1 - I - 0x00EF70 03:AF60: 02        .byte $02   ; 05
- D 1 - I - 0x00EF71 03:AF61: 03        .byte $03   ; 06
- D 1 - I - 0x00EF72 03:AF62: 02        .byte $02   ; 07



off_02_AF63_02_spr_XY:
- - - - - - 0x00EF73 03:AF63: F9        .byte $F9, $25   ; 01
- - - - - - 0x00EF75 03:AF65: 01        .byte $01, $25   ; 02
- - - - - - 0x00EF77 03:AF67: E9        .byte $E9, $1A   ; 03
- - - - - - 0x00EF79 03:AF69: F1        .byte $F1, $1A   ; 04
- - - - - - 0x00EF7B 03:AF6B: F9        .byte $F9, $1D   ; 05
- - - - - - 0x00EF7D 03:AF6D: 01        .byte $01, $1D   ; 06
- - - - - - 0x00EF7F 03:AF6F: 09        .byte $09, $1D   ; 07



_off030_AF71_11:
- D 1 - I - 0x00EF81 03:AF71: 02        .byte con_sub_02, $07   ; 
- D 1 - I - 0x00EF83 03:AF73: 5C AF     .word off_02_AF5C_00_spr_A
- D 1 - I - 0x00EF85 03:AF75: 55 AF     .word off_02_AF55_01_spr_T
- D 1 - I - 0x00EF87 03:AF77: 7D AF     .word off_02_AF7D_02_spr_XY
- D 1 - I - 0x00EF89 03:AF79: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00EF8A 03:AF7A: 96 AF     .word sub_05_AF96
- D 1 - I - 0x00EF8C 03:AF7C: 00        .byte con_sub_00   ; 



off_02_AF7D_02_spr_XY:
- D 1 - I - 0x00EF8D 03:AF7D: F6        .byte $F6, $1B   ; 01
- D 1 - I - 0x00EF8F 03:AF7F: FE        .byte $FE, $1B   ; 02
- D 1 - I - 0x00EF91 03:AF81: E6        .byte $E6, $10   ; 03
- D 1 - I - 0x00EF93 03:AF83: EE        .byte $EE, $10   ; 04
- D 1 - I - 0x00EF95 03:AF85: F6        .byte $F6, $13   ; 05
- D 1 - I - 0x00EF97 03:AF87: FE        .byte $FE, $13   ; 06
- D 1 - I - 0x00EF99 03:AF89: 06        .byte $06, $13   ; 07


; bzk garbage
- - - - - - 0x00EF9B 03:AF8B: 01        .byte con_sub_01, $01, $03   ; 
- - - - - - 0x00EF9E 03:AF8E: 93 AF     .word off_01_AF93_spr_T
- - - - - - 0x00EFA0 03:AF90: 94 AF     .word off_01_AF94_spr_XY
- - - - - - 0x00EFA2 03:AF92: 00        .byte con_sub_00   ; 



off_01_AF93_spr_T:
- - - - - - 0x00EFA3 03:AF93: FC        .byte $FC   ; 01



off_01_AF94_spr_XY:
- - - - - - 0x00EFA4 03:AF94: 00        .byte $00, $04   ; 01



sub_05_AF96:
- D 1 - I - 0x00EFA6 03:AF96: 01        .byte con_sub_01, $05, $03   ; 
- D 1 - I - 0x00EFA9 03:AF99: 9E AF     .word off_01_AF9E_spr_T
- D 1 - I - 0x00EFAB 03:AF9B: A3 AF     .word off_01_AFA3_spr_XY
- D 1 - I - 0x00EFAD 03:AF9D: 00        .byte con_sub_00   ; 



off_01_AF9E_spr_T:
- D 1 - I - 0x00EFAE 03:AF9E: E6        .byte $E6   ; 01
- D 1 - I - 0x00EFAF 03:AF9F: E7        .byte $E7   ; 02
- D 1 - I - 0x00EFB0 03:AFA0: 94        .byte $94   ; 03
- D 1 - I - 0x00EFB1 03:AFA1: F6        .byte $F6   ; 04
- D 1 - I - 0x00EFB2 03:AFA2: B3        .byte $B3   ; 05



off_01_AFA3_spr_XY:
- D 1 - I - 0x00EFB3 03:AFA3: F8        .byte $F8, $0B   ; 01
- D 1 - I - 0x00EFB5 03:AFA5: 00        .byte $00, $0B   ; 02
- D 1 - I - 0x00EFB7 03:AFA7: 08        .byte $08, $0B   ; 03
- D 1 - I - 0x00EFB9 03:AFA9: FE        .byte $FE, $03   ; 04
- D 1 - I - 0x00EFBB 03:AFAB: 04        .byte $04, $03   ; 05



sub_05_AFAD:
- D 1 - I - 0x00EFBD 03:AFAD: 01        .byte con_sub_01, $05, $03   ; 
- D 1 - I - 0x00EFC0 03:AFB0: B5 AF     .word off_01_AFB5_spr_T
- D 1 - I - 0x00EFC2 03:AFB2: BA AF     .word off_01_AFBA_spr_XY
- D 1 - I - 0x00EFC4 03:AFB4: 00        .byte con_sub_00   ; 



off_01_AFB5_spr_T:
- D 1 - I - 0x00EFC5 03:AFB5: A1        .byte $A1   ; 01
- D 1 - I - 0x00EFC6 03:AFB6: A2        .byte $A2   ; 02
- D 1 - I - 0x00EFC7 03:AFB7: A1        .byte $A1   ; 03
- D 1 - I - 0x00EFC8 03:AFB8: 8B        .byte $8B   ; 04
- D 1 - I - 0x00EFC9 03:AFB9: B2        .byte $B2   ; 05



off_01_AFBA_spr_XY:
- D 1 - I - 0x00EFCA 03:AFBA: FE        .byte $FE, $15   ; 01
- D 1 - I - 0x00EFCC 03:AFBC: 06        .byte $06, $15   ; 02
- D 1 - I - 0x00EFCE 03:AFBE: 02        .byte $02, $12   ; 03
- D 1 - I - 0x00EFD0 03:AFC0: 06        .byte $06, $0D   ; 04
- D 1 - I - 0x00EFD2 03:AFC2: 06        .byte $06, $07   ; 05



_off030_AFC4_20:
- D 1 - I - 0x00EFD4 03:AFC4: 02        .byte con_sub_02, $0C   ; 
- D 1 - I - 0x00EFD6 03:AFC6: D9 AF     .word off_02_AFD9_00_spr_A
- D 1 - I - 0x00EFD8 03:AFC8: CD AF     .word off_02_AFCD_01_spr_T
- D 1 - I - 0x00EFDA 03:AFCA: E5 AF     .word off_02_AFE5_02_spr_XY
- D 1 - I - 0x00EFDC 03:AFCC: 00        .byte con_sub_00   ; 



off_02_AFCD_01_spr_T:
- D 1 - I - 0x00EFDD 03:AFCD: D8        .byte $D8   ; 01
- D 1 - I - 0x00EFDE 03:AFCE: A8        .byte $A8   ; 02
- D 1 - I - 0x00EFDF 03:AFCF: 89        .byte $89   ; 03
- D 1 - I - 0x00EFE0 03:AFD0: E8        .byte $E8   ; 04
- D 1 - I - 0x00EFE1 03:AFD1: B8        .byte $B8   ; 05
- D 1 - I - 0x00EFE2 03:AFD2: 88        .byte $88   ; 06
- D 1 - I - 0x00EFE3 03:AFD3: 99        .byte $99   ; 07
- D 1 - I - 0x00EFE4 03:AFD4: F8        .byte $F8   ; 08
- D 1 - I - 0x00EFE5 03:AFD5: C8        .byte $C8   ; 09
- D 1 - I - 0x00EFE6 03:AFD6: 98        .byte $98   ; 0A
- D 1 - I - 0x00EFE7 03:AFD7: A9        .byte $A9   ; 0B
- D 1 - I - 0x00EFE8 03:AFD8: B9        .byte $B9   ; 0C



off_02_AFD9_00_spr_A:
- D 1 - I - 0x00EFE9 03:AFD9: 03        .byte $03   ; 01
- D 1 - I - 0x00EFEA 03:AFDA: 03        .byte $03   ; 02
- D 1 - I - 0x00EFEB 03:AFDB: 03        .byte $03   ; 03
- D 1 - I - 0x00EFEC 03:AFDC: 03        .byte $03   ; 04
- D 1 - I - 0x00EFED 03:AFDD: 02        .byte $02   ; 05
- D 1 - I - 0x00EFEE 03:AFDE: 02        .byte $02   ; 06
- D 1 - I - 0x00EFEF 03:AFDF: 03        .byte $03   ; 07
- D 1 - I - 0x00EFF0 03:AFE0: 02        .byte $02   ; 08
- D 1 - I - 0x00EFF1 03:AFE1: 03        .byte $03   ; 09
- D 1 - I - 0x00EFF2 03:AFE2: 02        .byte $02   ; 0A
- D 1 - I - 0x00EFF3 03:AFE3: 03        .byte $03   ; 0B
- D 1 - I - 0x00EFF4 03:AFE4: 03        .byte $03   ; 0C



off_02_AFE5_02_spr_XY:
- D 1 - I - 0x00EFF5 03:AFE5: FB        .byte $FB, $23   ; 01
- D 1 - I - 0x00EFF7 03:AFE7: 03        .byte $03, $21   ; 02
- D 1 - I - 0x00EFF9 03:AFE9: F3        .byte $F3, $1F   ; 03
- D 1 - I - 0x00EFFB 03:AFEB: FB        .byte $FB, $1B   ; 04
- D 1 - I - 0x00EFFD 03:AFED: 03        .byte $03, $19   ; 05
- D 1 - I - 0x00EFFF 03:AFEF: 0B        .byte $0B, $1E   ; 06
- D 1 - I - 0x00F001 03:AFF1: F3        .byte $F3, $17   ; 07
- D 1 - I - 0x00F003 03:AFF3: FB        .byte $FB, $13   ; 08
- D 1 - I - 0x00F005 03:AFF5: 03        .byte $03, $11   ; 09
- D 1 - I - 0x00F007 03:AFF7: 0B        .byte $0B, $16   ; 0A
- D 1 - I - 0x00F009 03:AFF9: EB        .byte $EB, $17   ; 0B
- D 1 - I - 0x00F00B 03:AFFB: EB        .byte $EB, $0F   ; 0C



_off030_AFFD_21:
- D 1 - I - 0x00F00D 03:AFFD: 02        .byte con_sub_02, $0A   ; 
- D 1 - I - 0x00F00F 03:AFFF: 10 B0     .word off_02_B010_00_spr_A
- D 1 - I - 0x00F011 03:B001: 06 B0     .word off_02_B006_01_spr_T
- D 1 - I - 0x00F013 03:B003: 1A B0     .word off_02_B01A_02_spr_XY
- D 1 - I - 0x00F015 03:B005: 00        .byte con_sub_00   ; 



off_02_B006_01_spr_T:
- D 1 - I - 0x00F016 03:B006: D9        .byte $D9   ; 01
- D 1 - I - 0x00F017 03:B007: 8A        .byte $8A   ; 02
- D 1 - I - 0x00F018 03:B008: F8        .byte $F8   ; 03
- D 1 - I - 0x00F019 03:B009: E9        .byte $E9   ; 04
- D 1 - I - 0x00F01A 03:B00A: 9A        .byte $9A   ; 05
- D 1 - I - 0x00F01B 03:B00B: F9        .byte $F9   ; 06
- D 1 - I - 0x00F01C 03:B00C: AA        .byte $AA   ; 07
- D 1 - I - 0x00F01D 03:B00D: CA        .byte $CA   ; 08
- D 1 - I - 0x00F01E 03:B00E: DA        .byte $DA   ; 09
- D 1 - I - 0x00F01F 03:B00F: A0        .byte $A0   ; 0A



off_02_B010_00_spr_A:
- D 1 - I - 0x00F020 03:B010: 03        .byte $03   ; 01
- D 1 - I - 0x00F021 03:B011: 03        .byte $03   ; 02
- D 1 - I - 0x00F022 03:B012: 82        .byte $82   ; 03
- D 1 - I - 0x00F023 03:B013: 03        .byte $03   ; 04
- D 1 - I - 0x00F024 03:B014: 03        .byte $03   ; 05
- D 1 - I - 0x00F025 03:B015: 02        .byte $02   ; 06
- D 1 - I - 0x00F026 03:B016: 03        .byte $03   ; 07
- D 1 - I - 0x00F027 03:B017: 02        .byte $02   ; 08
- D 1 - I - 0x00F028 03:B018: 02        .byte $02   ; 09
- D 1 - I - 0x00F029 03:B019: C3        .byte $C3   ; 0A



off_02_B01A_02_spr_XY:
- D 1 - I - 0x00F02A 03:B01A: FB        .byte $FB, $2B   ; 01
- D 1 - I - 0x00F02C 03:B01C: 03        .byte $03, $2B   ; 02
- D 1 - I - 0x00F02E 03:B01E: F3        .byte $F3, $21   ; 03
- D 1 - I - 0x00F030 03:B020: FB        .byte $FB, $23   ; 04
- D 1 - I - 0x00F032 03:B022: 03        .byte $03, $23   ; 05
- D 1 - I - 0x00F034 03:B024: FB        .byte $FB, $1B   ; 06
- D 1 - I - 0x00F036 03:B026: 03        .byte $03, $1B   ; 07
- D 1 - I - 0x00F038 03:B028: FB        .byte $FB, $13   ; 08
- D 1 - I - 0x00F03A 03:B02A: 03        .byte $03, $13   ; 09
- D 1 - I - 0x00F03C 03:B02C: FB        .byte $FB, $33   ; 0A



_off030_B02E_22:
- D 1 - I - 0x00F03E 03:B02E: 02        .byte con_sub_02, $0C   ; 
- D 1 - I - 0x00F040 03:B030: 43 B0     .word off_02_B043_00_spr_A
- D 1 - I - 0x00F042 03:B032: 37 B0     .word off_02_B037_01_spr_T
- D 1 - I - 0x00F044 03:B034: 4F B0     .word off_02_B04F_02_spr_XY
- D 1 - I - 0x00F046 03:B036: 00        .byte con_sub_00   ; 



off_02_B037_01_spr_T:
- D 1 - I - 0x00F047 03:B037: F8        .byte $F8   ; 01
- D 1 - I - 0x00F048 03:B038: 98        .byte $98   ; 02
- D 1 - I - 0x00F049 03:B039: C8        .byte $C8   ; 03
- D 1 - I - 0x00F04A 03:B03A: E8        .byte $E8   ; 04
- D 1 - I - 0x00F04B 03:B03B: 99        .byte $99   ; 05
- D 1 - I - 0x00F04C 03:B03C: 88        .byte $88   ; 06
- D 1 - I - 0x00F04D 03:B03D: B8        .byte $B8   ; 07
- D 1 - I - 0x00F04E 03:B03E: D8        .byte $D8   ; 08
- D 1 - I - 0x00F04F 03:B03F: 89        .byte $89   ; 09
- D 1 - I - 0x00F050 03:B040: A8        .byte $A8   ; 0A
- D 1 - I - 0x00F051 03:B041: A9        .byte $A9   ; 0B
- D 1 - I - 0x00F052 03:B042: B9        .byte $B9   ; 0C



off_02_B043_00_spr_A:
- D 1 - I - 0x00F053 03:B043: C2        .byte $C2   ; 01
- D 1 - I - 0x00F054 03:B044: C2        .byte $C2   ; 02
- D 1 - I - 0x00F055 03:B045: C3        .byte $C3   ; 03
- D 1 - I - 0x00F056 03:B046: C3        .byte $C3   ; 04
- D 1 - I - 0x00F057 03:B047: C3        .byte $C3   ; 05
- D 1 - I - 0x00F058 03:B048: C2        .byte $C2   ; 06
- D 1 - I - 0x00F059 03:B049: C2        .byte $C2   ; 07
- D 1 - I - 0x00F05A 03:B04A: C3        .byte $C3   ; 08
- D 1 - I - 0x00F05B 03:B04B: C3        .byte $C3   ; 09
- D 1 - I - 0x00F05C 03:B04C: C3        .byte $C3   ; 0A
- D 1 - I - 0x00F05D 03:B04D: C3        .byte $C3   ; 0B
- D 1 - I - 0x00F05E 03:B04E: C3        .byte $C3   ; 0C



off_02_B04F_02_spr_XY:
- D 1 - I - 0x00F05F 03:B04F: 04        .byte $04, $2B   ; 01
- D 1 - I - 0x00F061 03:B051: F4        .byte $F4, $28   ; 02
- D 1 - I - 0x00F063 03:B053: FC        .byte $FC, $2D   ; 03
- D 1 - I - 0x00F065 03:B055: 04        .byte $04, $23   ; 04
- D 1 - I - 0x00F067 03:B057: 0C        .byte $0C, $27   ; 05
- D 1 - I - 0x00F069 03:B059: F4        .byte $F4, $20   ; 06
- D 1 - I - 0x00F06B 03:B05B: FC        .byte $FC, $25   ; 07
- D 1 - I - 0x00F06D 03:B05D: 04        .byte $04, $1B   ; 08
- D 1 - I - 0x00F06F 03:B05F: 0C        .byte $0C, $1F   ; 09
- D 1 - I - 0x00F071 03:B061: FC        .byte $FC, $1D   ; 0A
- D 1 - I - 0x00F073 03:B063: 14        .byte $14, $27   ; 0B
- D 1 - I - 0x00F075 03:B065: 14        .byte $14, $2F   ; 0C



_off030_B067_07:
- D 1 - I - 0x00F077 03:B067: 02        .byte con_sub_02, $0A   ; 
- D 1 - I - 0x00F079 03:B069: 7C B0     .word off_02_B07C_00_spr_A
- D 1 - I - 0x00F07B 03:B06B: 71 B0     .word off_02_B071_01_spr_T
- D 1 - I - 0x00F07D 03:B06D: 88 B0     .word off_02_B088_02_spr_XY
- D 1 - I - 0x00F07F 03:B06F: 00        .byte con_sub_00   ; 



off_02_B070_01_spr_T:
- D 1 - I - 0x00F080 03:B070: CC        .byte $CC   ; 01
off_02_B071_01_spr_T:
- D 1 - I - 0x00F081 03:B071: 80        .byte $80   ; 01 (02)
- D 1 - I - 0x00F082 03:B072: 81        .byte $81   ; 02 (03)
- D 1 - I - 0x00F083 03:B073: C0        .byte $C0   ; 03 (04)
- D 1 - I - 0x00F084 03:B074: C1        .byte $C1   ; 04 (05)
- D 1 - I - 0x00F085 03:B075: D0        .byte $D0   ; 05 (06)
- D 1 - I - 0x00F086 03:B076: D1        .byte $D1   ; 06 (07)
- D 1 - I - 0x00F087 03:B077: E0        .byte $E0   ; 07 (08)
- D 1 - I - 0x00F088 03:B078: E1        .byte $E1   ; 08 (09)
- D 1 - I - 0x00F089 03:B079: F0        .byte $F0   ; 09 (0A)
- D 1 - I - 0x00F08A 03:B07A: F1        .byte $F1   ; 0A (0B)



off_02_B07B_00_spr_A:
- D 1 - I - 0x00F08B 03:B07B: 02        .byte $02   ; 01
off_02_B07C_00_spr_A:
- D 1 - I - 0x00F08C 03:B07C: 02        .byte $02   ; 01 (02)
- D 1 - I - 0x00F08D 03:B07D: 02        .byte $02   ; 02 (03)
- D 1 - I - 0x00F08E 03:B07E: 02        .byte $02   ; 03 (04)
- D 1 - I - 0x00F08F 03:B07F: 02        .byte $02   ; 04 (05)
- D 1 - I - 0x00F090 03:B080: 03        .byte $03   ; 05 (06)
- D 1 - I - 0x00F091 03:B081: 02        .byte $02   ; 06 (07)
- D 1 - I - 0x00F092 03:B082: 03        .byte $03   ; 07 (08)
- D 1 - I - 0x00F093 03:B083: 03        .byte $03   ; 08 (09)
- D 1 - I - 0x00F094 03:B084: 03        .byte $03   ; 09 (0A)
- D 1 - I - 0x00F095 03:B085: 03        .byte $03   ; 0A (0B)



off_02_B086_02_spr_XY:
- D 1 - I - 0x00F096 03:B086: F9        .byte $F9, $1F   ; 01
off_02_B088_02_spr_XY:
- D 1 - I - 0x00F098 03:B088: FD        .byte $FD, $24   ; 01 (02)
- D 1 - I - 0x00F09A 03:B08A: 05        .byte $05, $24   ; 02 (03)
- D 1 - I - 0x00F09C 03:B08C: FF        .byte $FF, $1C   ; 03 (04)
- D 1 - I - 0x00F09E 03:B08E: 07        .byte $07, $1C   ; 04 (05)
- D 1 - I - 0x00F0A0 03:B090: FE        .byte $FE, $14   ; 05 (06)
- D 1 - I - 0x00F0A2 03:B092: 06        .byte $06, $14   ; 06 (07)
- D 1 - I - 0x00F0A4 03:B094: FD        .byte $FD, $0C   ; 07 (08)
- D 1 - I - 0x00F0A6 03:B096: 05        .byte $05, $0C   ; 08 (09)
- D 1 - I - 0x00F0A8 03:B098: FC        .byte $FC, $04   ; 09 (0A)
- D 1 - I - 0x00F0AA 03:B09A: 04        .byte $04, $04   ; 0A (0B)



_off030_B09C_08:
- D 1 - I - 0x00F0AC 03:B09C: 02        .byte con_sub_02, $0A   ; 
- D 1 - I - 0x00F0AE 03:B09E: 7C B0     .word off_02_B07C_00_spr_A
- D 1 - I - 0x00F0B0 03:B0A0: A5 B0     .word off_02_B0A5_01_spr_T
- D 1 - I - 0x00F0B2 03:B0A2: AF B0     .word off_02_B0AF_02_spr_XY
- D 1 - I - 0x00F0B4 03:B0A4: 00        .byte con_sub_00   ; 



off_02_B0A5_01_spr_T:
- D 1 - I - 0x00F0B5 03:B0A5: C2        .byte $C2   ; 01
- D 1 - I - 0x00F0B6 03:B0A6: C3        .byte $C3   ; 02
- D 1 - I - 0x00F0B7 03:B0A7: D2        .byte $D2   ; 03
- D 1 - I - 0x00F0B8 03:B0A8: C1        .byte $C1   ; 04
- D 1 - I - 0x00F0B9 03:B0A9: D0        .byte $D0   ; 05
- D 1 - I - 0x00F0BA 03:B0AA: D1        .byte $D1   ; 06
- D 1 - I - 0x00F0BB 03:B0AB: E0        .byte $E0   ; 07
- D 1 - I - 0x00F0BC 03:B0AC: E1        .byte $E1   ; 08
- D 1 - I - 0x00F0BD 03:B0AD: F0        .byte $F0   ; 09
- D 1 - I - 0x00F0BE 03:B0AE: F1        .byte $F1   ; 0A



off_02_B0AF_02_spr_XY:
- D 1 - I - 0x00F0BF 03:B0AF: FF        .byte $FF, $24   ; 01
- D 1 - I - 0x00F0C1 03:B0B1: 07        .byte $07, $24   ; 02
- D 1 - I - 0x00F0C3 03:B0B3: FF        .byte $FF, $1C   ; 03
- D 1 - I - 0x00F0C5 03:B0B5: 07        .byte $07, $1C   ; 04
- D 1 - I - 0x00F0C7 03:B0B7: FE        .byte $FE, $14   ; 05
- D 1 - I - 0x00F0C9 03:B0B9: 06        .byte $06, $14   ; 06
- D 1 - I - 0x00F0CB 03:B0BB: FD        .byte $FD, $0C   ; 07
- D 1 - I - 0x00F0CD 03:B0BD: 05        .byte $05, $0C   ; 08
- D 1 - I - 0x00F0CF 03:B0BF: FC        .byte $FC, $04   ; 09
- D 1 - I - 0x00F0D1 03:B0C1: 04        .byte $04, $04   ; 0A



_off030_B0C3_0C:
_off030_B0C3_0E:
- D 1 - I - 0x00F0D3 03:B0C3: 02        .byte con_sub_02, $0B   ; 
- D 1 - I - 0x00F0D5 03:B0C5: 7B B0     .word off_02_B07B_00_spr_A
- D 1 - I - 0x00F0D7 03:B0C7: 70 B0     .word off_02_B070_01_spr_T
- D 1 - I - 0x00F0D9 03:B0C9: 86 B0     .word off_02_B086_02_spr_XY
- D 1 - I - 0x00F0DB 03:B0CB: 00        .byte con_sub_00   ; 



_off030_B0CC_0D:
_off030_B0CC_0F:
- D 1 - I - 0x00F0DC 03:B0CC: 02        .byte con_sub_02, $0C   ; 
- D 1 - I - 0x00F0DE 03:B0CE: E1 B0     .word off_02_B0E1_00_spr_A
- D 1 - I - 0x00F0E0 03:B0D0: D5 B0     .word off_02_B0D5_01_spr_T
- D 1 - I - 0x00F0E2 03:B0D2: ED B0     .word off_02_B0ED_02_spr_XY
- D 1 - I - 0x00F0E4 03:B0D4: 00        .byte con_sub_00   ; 



off_02_B0D5_01_spr_T:
- D 1 - I - 0x00F0E5 03:B0D5: 80        .byte $80   ; 01
- D 1 - I - 0x00F0E6 03:B0D6: 81        .byte $81   ; 02
- D 1 - I - 0x00F0E7 03:B0D7: CC        .byte $CC   ; 03
- D 1 - I - 0x00F0E8 03:B0D8: AF        .byte $AF   ; 04
- D 1 - I - 0x00F0E9 03:B0D9: 95        .byte $95   ; 05
- D 1 - I - 0x00F0EA 03:B0DA: C1        .byte $C1   ; 06
- D 1 - I - 0x00F0EB 03:B0DB: D0        .byte $D0   ; 07
- D 1 - I - 0x00F0EC 03:B0DC: D1        .byte $D1   ; 08
- D 1 - I - 0x00F0ED 03:B0DD: E0        .byte $E0   ; 09
- D 1 - I - 0x00F0EE 03:B0DE: E1        .byte $E1   ; 0A
- D 1 - I - 0x00F0EF 03:B0DF: F0        .byte $F0   ; 0B
- D 1 - I - 0x00F0F0 03:B0E0: F1        .byte $F1   ; 0C



off_02_B0E1_00_spr_A:
- D 1 - I - 0x00F0F1 03:B0E1: 02        .byte $02   ; 01
- D 1 - I - 0x00F0F2 03:B0E2: 02        .byte $02   ; 02
- D 1 - I - 0x00F0F3 03:B0E3: 02        .byte $02   ; 03
- D 1 - I - 0x00F0F4 03:B0E4: 02        .byte $02   ; 04
- D 1 - I - 0x00F0F5 03:B0E5: 02        .byte $02   ; 05
- D 1 - I - 0x00F0F6 03:B0E6: 02        .byte $02   ; 06
- D 1 - I - 0x00F0F7 03:B0E7: 03        .byte $03   ; 07
- D 1 - I - 0x00F0F8 03:B0E8: 02        .byte $02   ; 08
- D 1 - I - 0x00F0F9 03:B0E9: 03        .byte $03   ; 09
- D 1 - I - 0x00F0FA 03:B0EA: 03        .byte $03   ; 0A
- D 1 - I - 0x00F0FB 03:B0EB: 03        .byte $03   ; 0B
- D 1 - I - 0x00F0FC 03:B0EC: 03        .byte $03   ; 0C



off_02_B0ED_02_spr_XY:
- D 1 - I - 0x00F0FD 03:B0ED: F9        .byte $F9, $24   ; 01
- D 1 - I - 0x00F0FF 03:B0EF: 01        .byte $01, $24   ; 02
- D 1 - I - 0x00F101 03:B0F1: EF        .byte $EF, $1D   ; 03
- D 1 - I - 0x00F103 03:B0F3: F7        .byte $F7, $1D   ; 04
- D 1 - I - 0x00F105 03:B0F5: FB        .byte $FB, $1C   ; 05
- D 1 - I - 0x00F107 03:B0F7: 03        .byte $03, $1C   ; 06
- D 1 - I - 0x00F109 03:B0F9: FB        .byte $FB, $14   ; 07
- D 1 - I - 0x00F10B 03:B0FB: 03        .byte $03, $14   ; 08
- D 1 - I - 0x00F10D 03:B0FD: FC        .byte $FC, $0C   ; 09
- D 1 - I - 0x00F10F 03:B0FF: 04        .byte $04, $0C   ; 0A
- D 1 - I - 0x00F111 03:B101: FC        .byte $FC, $04   ; 0B
- D 1 - I - 0x00F113 03:B103: 04        .byte $04, $04   ; 0C



_off030_B105_0B:
- D 1 - I - 0x00F115 03:B105: 02        .byte con_sub_02, $07   ; 
- D 1 - I - 0x00F117 03:B107: 15 B1     .word off_02_B115_00_spr_A
- D 1 - I - 0x00F119 03:B109: 0E B1     .word off_02_B10E_01_spr_T
- D 1 - I - 0x00F11B 03:B10B: 1C B1     .word off_02_B11C_02_spr_XY
- D 1 - I - 0x00F11D 03:B10D: 00        .byte con_sub_00   ; 



off_02_B10E_01_spr_T:
- D 1 - I - 0x00F11E 03:B10E: E2        .byte $E2   ; 01
- D 1 - I - 0x00F11F 03:B10F: E3        .byte $E3   ; 02
- D 1 - I - 0x00F120 03:B110: F4        .byte $F4   ; 03
- D 1 - I - 0x00F121 03:B111: F5        .byte $F5   ; 04
- D 1 - I - 0x00F122 03:B112: F2        .byte $F2   ; 05
- D 1 - I - 0x00F123 03:B113: F3        .byte $F3   ; 06
- D 1 - I - 0x00F124 03:B114: F0        .byte $F0   ; 07



off_02_B115_00_spr_A:
- D 1 - I - 0x00F125 03:B115: 02        .byte $02   ; 01
- D 1 - I - 0x00F126 03:B116: 02        .byte $02   ; 02
- D 1 - I - 0x00F127 03:B117: 03        .byte $03   ; 03
- D 1 - I - 0x00F128 03:B118: 03        .byte $03   ; 04
- D 1 - I - 0x00F129 03:B119: 03        .byte $03   ; 05
- D 1 - I - 0x00F12A 03:B11A: 02        .byte $02   ; 06
- D 1 - I - 0x00F12B 03:B11B: 03        .byte $03   ; 07



off_02_B11C_02_spr_XY:
- D 1 - I - 0x00F12C 03:B11C: 0B        .byte $0B, $15   ; 01
- D 1 - I - 0x00F12E 03:B11E: 13        .byte $13, $15   ; 02
- D 1 - I - 0x00F130 03:B120: FB        .byte $FB, $0C   ; 03
- D 1 - I - 0x00F132 03:B122: 03        .byte $03, $0D   ; 04
- D 1 - I - 0x00F134 03:B124: 0B        .byte $0B, $0D   ; 05
- D 1 - I - 0x00F136 03:B126: 13        .byte $13, $0D   ; 06
- D 1 - I - 0x00F138 03:B128: 03        .byte $03, $05   ; 07



_off030_B12A_0A:
- D 1 - I - 0x00F13A 03:B12A: 02        .byte con_sub_02, $08   ; 
- D 1 - I - 0x00F13C 03:B12C: 3B B1     .word off_02_B13B_00_spr_A
- D 1 - I - 0x00F13E 03:B12E: 33 B1     .word off_02_B133_01_spr_T
- D 1 - I - 0x00F140 03:B130: 43 B1     .word off_02_B143_02_spr_XY
- D 1 - I - 0x00F142 03:B132: 00        .byte con_sub_00   ; 



off_02_B133_01_spr_T:
- D 1 - I - 0x00F143 03:B133: D4        .byte $D4   ; 01
- D 1 - I - 0x00F144 03:B134: D5        .byte $D5   ; 02
- D 1 - I - 0x00F145 03:B135: B4        .byte $B4   ; 03
- D 1 - I - 0x00F146 03:B136: B5        .byte $B5   ; 04
- D 1 - I - 0x00F147 03:B137: E4        .byte $E4   ; 05
- D 1 - I - 0x00F148 03:B138: E5        .byte $E5   ; 06
- D 1 - I - 0x00F149 03:B139: C4        .byte $C4   ; 07
- D 1 - I - 0x00F14A 03:B13A: C5        .byte $C5   ; 08



off_02_B13B_00_spr_A:
- D 1 - I - 0x00F14B 03:B13B: 03        .byte $03   ; 01
- D 1 - I - 0x00F14C 03:B13C: 03        .byte $03   ; 02
- D 1 - I - 0x00F14D 03:B13D: 02        .byte $02   ; 03
- D 1 - I - 0x00F14E 03:B13E: 02        .byte $02   ; 04
- D 1 - I - 0x00F14F 03:B13F: 03        .byte $03   ; 05
- D 1 - I - 0x00F150 03:B140: 03        .byte $03   ; 06
- D 1 - I - 0x00F151 03:B141: 02        .byte $02   ; 07
- D 1 - I - 0x00F152 03:B142: 02        .byte $02   ; 08



off_02_B143_02_spr_XY:
- D 1 - I - 0x00F153 03:B143: FB        .byte $FB, $0C   ; 01
- D 1 - I - 0x00F155 03:B145: 03        .byte $03, $0C   ; 02
- D 1 - I - 0x00F157 03:B147: 0B        .byte $0B, $0C   ; 03
- D 1 - I - 0x00F159 03:B149: 13        .byte $13, $0C   ; 04
- D 1 - I - 0x00F15B 03:B14B: FB        .byte $FB, $04   ; 05
- D 1 - I - 0x00F15D 03:B14D: 03        .byte $03, $04   ; 06
- D 1 - I - 0x00F15F 03:B14F: 0B        .byte $0B, $04   ; 07
- D 1 - I - 0x00F161 03:B151: 13        .byte $13, $04   ; 08



_off030_B153_31:
- D 1 - I - 0x00F163 03:B153: 01        .byte con_sub_01, $02, $01   ; 
- D 1 - I - 0x00F166 03:B156: 5B B1     .word off_01_B15B_spr_T
- D 1 - I - 0x00F168 03:B158: 5D B1     .word off_01_B15D_spr_XY
- D 1 - I - 0x00F16A 03:B15A: 00        .byte con_sub_00   ; 



off_01_B15B_spr_T:
- D 1 - I - 0x00F16B 03:B15B: DD        .byte $DD   ; 01
- D 1 - I - 0x00F16C 03:B15C: DF        .byte $DF   ; 02



off_01_B15D_spr_XY:
- D 1 - I - 0x00F16D 03:B15D: F8        .byte $F8, $06   ; 01
- D 1 - I - 0x00F16F 03:B15F: 00        .byte $00, $06   ; 02



_off030_B161_32:
- D 1 - I - 0x00F171 03:B161: 01        .byte con_sub_01, $04, $01   ; 
- D 1 - I - 0x00F174 03:B164: 69 B1     .word off_01_B169_spr_T
- D 1 - I - 0x00F176 03:B166: 6D B1     .word off_01_B16D_spr_XY
- D 1 - I - 0x00F178 03:B168: 00        .byte con_sub_00   ; 



off_01_B169_spr_T:
- D 1 - I - 0x00F179 03:B169: AF        .byte $AF   ; 01
- D 1 - I - 0x00F17A 03:B16A: DD        .byte $DD   ; 02
- D 1 - I - 0x00F17B 03:B16B: DE        .byte $DE   ; 03
- D 1 - I - 0x00F17C 03:B16C: DF        .byte $DF   ; 04



off_01_B16D_spr_XY:
- D 1 - I - 0x00F17D 03:B16D: FE        .byte $FE, $0C   ; 01
- D 1 - I - 0x00F17F 03:B16F: F8        .byte $F8, $04   ; 02
- D 1 - I - 0x00F181 03:B171: 00        .byte $00, $04   ; 03
- D 1 - I - 0x00F183 03:B173: 08        .byte $08, $04   ; 04



_off030_B175_33:
- D 1 - I - 0x00F185 03:B175: 01        .byte con_sub_01, $07, $01   ; 
- D 1 - I - 0x00F188 03:B178: 7D B1     .word off_01_B17D_spr_T
- D 1 - I - 0x00F18A 03:B17A: 84 B1     .word off_01_B184_spr_XY
- D 1 - I - 0x00F18C 03:B17C: 00        .byte con_sub_00   ; 



off_01_B17D_spr_T:
- D 1 - I - 0x00F18D 03:B17D: AF        .byte $AF   ; 01
- D 1 - I - 0x00F18E 03:B17E: BE        .byte $BE   ; 02
- D 1 - I - 0x00F18F 03:B17F: BF        .byte $BF   ; 03
- D 1 - I - 0x00F190 03:B180: AF        .byte $AF   ; 04
- D 1 - I - 0x00F191 03:B181: DD        .byte $DD   ; 05
- D 1 - I - 0x00F192 03:B182: DE        .byte $DE   ; 06
- D 1 - I - 0x00F193 03:B183: DF        .byte $DF   ; 07



off_01_B184_spr_XY:
- D 1 - I - 0x00F194 03:B184: FE        .byte $FE, $14   ; 01
- D 1 - I - 0x00F196 03:B186: F8        .byte $F8, $0C   ; 02
- D 1 - I - 0x00F198 03:B188: 00        .byte $00, $0C   ; 03
- D 1 - I - 0x00F19A 03:B18A: 04        .byte $04, $0C   ; 04
- D 1 - I - 0x00F19C 03:B18C: F8        .byte $F8, $04   ; 05
- D 1 - I - 0x00F19E 03:B18E: 00        .byte $00, $04   ; 06
- D 1 - I - 0x00F1A0 03:B190: 08        .byte $08, $04   ; 07



_off030_B192_34:
- D 1 - I - 0x00F1A2 03:B192: 01        .byte con_sub_01, $07, $01   ; 
- D 1 - I - 0x00F1A5 03:B195: 7D B1     .word off_01_B17D_spr_T
- D 1 - I - 0x00F1A7 03:B197: A8 B1     .word off_01_B1A8_spr_XY
- D 1 - I - 0x00F1A9 03:B199: 02        .byte con_sub_02, $03   ; 
- D 1 - I - 0x00F1AB 03:B19B: A5 B1     .word off_02_B1A5_00_spr_A
- D 1 - I - 0x00F1AD 03:B19D: A2 B1     .word off_02_B1A2_01_spr_T
- D 1 - I - 0x00F1AF 03:B19F: B6 B1     .word off_02_B1B6_02_spr_XY
- D 1 - I - 0x00F1B1 03:B1A1: 00        .byte con_sub_00   ; 



off_02_B1A2_01_spr_T:
- D 1 - I - 0x00F1B2 03:B1A2: CE        .byte $CE   ; 01
- D 1 - I - 0x00F1B3 03:B1A3: CF        .byte $CF   ; 02
- D 1 - I - 0x00F1B4 03:B1A4: CE        .byte $CE   ; 03



off_02_B1A5_00_spr_A:
- D 1 - I - 0x00F1B5 03:B1A5: 01        .byte $01   ; 01
- D 1 - I - 0x00F1B6 03:B1A6: 01        .byte $01   ; 02
- D 1 - I - 0x00F1B7 03:B1A7: 41        .byte $41   ; 03



off_01_B1A8_spr_XY:
- D 1 - I - 0x00F1B8 03:B1A8: FE        .byte $FE, $1C   ; 01
- D 1 - I - 0x00F1BA 03:B1AA: F8        .byte $F8, $14   ; 02
- D 1 - I - 0x00F1BC 03:B1AC: 00        .byte $00, $14   ; 03
- D 1 - I - 0x00F1BE 03:B1AE: 04        .byte $04, $14   ; 04
- D 1 - I - 0x00F1C0 03:B1B0: F8        .byte $F8, $04   ; 05
- D 1 - I - 0x00F1C2 03:B1B2: 00        .byte $00, $04   ; 06
- D 1 - I - 0x00F1C4 03:B1B4: 08        .byte $08, $04   ; 07



off_02_B1B6_02_spr_XY:
- D 1 - I - 0x00F1C6 03:B1B6: F8        .byte $F8, $0C   ; 01
- D 1 - I - 0x00F1C8 03:B1B8: 00        .byte $00, $0C   ; 02
- D 1 - I - 0x00F1CA 03:B1BA: 06        .byte $06, $0C   ; 03



_off030_B1BC_35:
- D 1 - I - 0x00F1CC 03:B1BC: 02        .byte con_sub_02, $06   ; 
- D 1 - I - 0x00F1CE 03:B1BE: CB B1     .word off_02_B1CB_00_spr_A
- D 1 - I - 0x00F1D0 03:B1C0: C5 B1     .word off_02_B1C5_01_spr_T
- D 1 - I - 0x00F1D2 03:B1C2: D1 B1     .word off_02_B1D1_02_spr_XY
- D 1 - I - 0x00F1D4 03:B1C4: 00        .byte con_sub_00   ; 



off_02_B1C5_01_spr_T:
off_01_B1C5_spr_T:
- D 1 - I - 0x00F1D5 03:B1C5: EE        .byte $EE   ; 01
- D 1 - I - 0x00F1D6 03:B1C6: EE        .byte $EE   ; 02
- D 1 - I - 0x00F1D7 03:B1C7: EE        .byte $EE   ; 03
- D 1 - I - 0x00F1D8 03:B1C8: EE        .byte $EE   ; 04
- D 1 - I - 0x00F1D9 03:B1C9: EE        .byte $EE   ; 05
- D 1 - I - 0x00F1DA 03:B1CA: EE        .byte $EE   ; 06



off_02_B1CB_00_spr_A:
- D 1 - I - 0x00F1DB 03:B1CB: 01        .byte $01   ; 01
- D 1 - I - 0x00F1DC 03:B1CC: 01        .byte $01   ; 02
- D 1 - I - 0x00F1DD 03:B1CD: 41        .byte $41   ; 03
- D 1 - I - 0x00F1DE 03:B1CE: 01        .byte $01   ; 04
- D 1 - I - 0x00F1DF 03:B1CF: 01        .byte $01   ; 05
- D 1 - I - 0x00F1E0 03:B1D0: 41        .byte $41   ; 06



off_02_B1D1_02_spr_XY:
- D 1 - I - 0x00F1E1 03:B1D1: FE        .byte $FE, $14   ; 01
- D 1 - I - 0x00F1E3 03:B1D3: 04        .byte $04, $17   ; 02
- D 1 - I - 0x00F1E5 03:B1D5: 0A        .byte $0A, $14   ; 03
- D 1 - I - 0x00F1E7 03:B1D7: 04        .byte $04, $0C   ; 04
- D 1 - I - 0x00F1E9 03:B1D9: FC        .byte $FC, $04   ; 05
- D 1 - I - 0x00F1EB 03:B1DB: 0C        .byte $0C, $04   ; 06



_off030_B1DD_36:
- D 1 - I - 0x00F1ED 03:B1DD: 02        .byte con_sub_02, $06   ; 
- D 1 - I - 0x00F1EF 03:B1DF: E6 B1     .word off_02_B1E6_00_spr_A
- D 1 - I - 0x00F1F1 03:B1E1: C5 B1     .word off_02_B1C5_01_spr_T
- D 1 - I - 0x00F1F3 03:B1E3: EC B1     .word off_02_B1EC_02_spr_XY
- D 1 - I - 0x00F1F5 03:B1E5: 00        .byte con_sub_00   ; 



off_02_B1E6_00_spr_A:
- D 1 - I - 0x00F1F6 03:B1E6: 01        .byte $01   ; 01
- D 1 - I - 0x00F1F7 03:B1E7: 01        .byte $01   ; 02
- D 1 - I - 0x00F1F8 03:B1E8: 41        .byte $41   ; 03
- D 1 - I - 0x00F1F9 03:B1E9: 01        .byte $01   ; 04
- D 1 - I - 0x00F1FA 03:B1EA: 01        .byte $01   ; 05
- D 1 - I - 0x00F1FB 03:B1EB: 01        .byte $01   ; 06



off_02_B1EC_02_spr_XY:
- D 1 - I - 0x00F1FC 03:B1EC: 04        .byte $04, $1C   ; 01
- D 1 - I - 0x00F1FE 03:B1EE: FA        .byte $FA, $16   ; 02
- D 1 - I - 0x00F200 03:B1F0: 0F        .byte $0F, $14   ; 03
- D 1 - I - 0x00F202 03:B1F2: 04        .byte $04, $0C   ; 04
- D 1 - I - 0x00F204 03:B1F4: FA        .byte $FA, $01   ; 05
- D 1 - I - 0x00F206 03:B1F6: 0F        .byte $0F, $02   ; 06



_off030_B1F8_37:
- D 1 - I - 0x00F208 03:B1F8: 01        .byte con_sub_01, $06, $01   ; 
- D 1 - I - 0x00F20B 03:B1FB: C5 B1     .word off_01_B1C5_spr_T
- D 1 - I - 0x00F20D 03:B1FD: 00 B2     .word off_01_B200_spr_XY
- D 1 - I - 0x00F20F 03:B1FF: 00        .byte con_sub_00   ; 



off_01_B200_spr_XY:
- D 1 - I - 0x00F210 03:B200: 03        .byte $03, $1F   ; 01
- D 1 - I - 0x00F212 03:B202: F5        .byte $F5, $19   ; 02
- D 1 - I - 0x00F214 03:B204: 12        .byte $12, $1A   ; 03
- D 1 - I - 0x00F216 03:B206: 04        .byte $04, $10   ; 04
- D 1 - I - 0x00F218 03:B208: F7        .byte $F7, $0A   ; 05
- D 1 - I - 0x00F21A 03:B20A: 12        .byte $12, $0B   ; 06



_off030_B20C_38:
- - - - - - 0x00F21C 03:B20C: 01        .byte con_sub_01, $04, $01   ; 
- - - - - - 0x00F21F 03:B20F: C5 B1     .word off_01_B1C5_spr_T
- - - - - - 0x00F221 03:B211: 14 B2     .word off_01_B214_spr_XY
- - - - - - 0x00F223 03:B213: 00        .byte con_sub_00   ; 



off_01_B214_spr_XY:
- - - - - - 0x00F224 03:B214: F6        .byte $F6, $16   ; 01
- - - - - - 0x00F226 03:B216: 13        .byte $13, $16   ; 02
- - - - - - 0x00F228 03:B218: F7        .byte $F7, $06   ; 03
- - - - - - 0x00F22A 03:B21A: 12        .byte $12, $07   ; 04



sub_06_B21C_01:
- - - - - - 0x00F22C 03:B21C: 02        .byte con_sub_02, $07   ; 
- - - - - - 0x00F22E 03:B21E: 3C B2     .word off_02_B23C_00_spr_A
- - - - - - 0x00F230 03:B220: 2E B2     .word off_02_B22E_01_spr_T
- - - - - - 0x00F232 03:B222: 43 B2     .word off_02_B243_02_spr_XY
- - - - - - 0x00F234 03:B224: 00        .byte con_sub_00   ; 



sub_06_B225_00:
- D 1 - I - 0x00F235 03:B225: 02        .byte con_sub_02, $07   ; 
- D 1 - I - 0x00F237 03:B227: 35 B2     .word off_02_B235_00_spr_A
- D 1 - I - 0x00F239 03:B229: 2E B2     .word off_02_B22E_01_spr_T
- D 1 - I - 0x00F23B 03:B22B: 43 B2     .word off_02_B243_02_spr_XY
- D 1 - I - 0x00F23D 03:B22D: 00        .byte con_sub_00   ; 



off_02_B22E_01_spr_T:
- D 1 - I - 0x00F23E 03:B22E: 58        .byte $58   ; 01
- D 1 - I - 0x00F23F 03:B22F: 12        .byte $12   ; 02
- D 1 - I - 0x00F240 03:B230: 31        .byte $31   ; 03
- D 1 - I - 0x00F241 03:B231: 30        .byte $30   ; 04
- D 1 - I - 0x00F242 03:B232: 41        .byte $41   ; 05
- D 1 - I - 0x00F243 03:B233: 41        .byte $41   ; 06
- D 1 - I - 0x00F244 03:B234: 49        .byte $49   ; 07



off_02_B235_00_spr_A:
- D 1 - I - 0x00F245 03:B235: 41        .byte $41   ; 01
- D 1 - I - 0x00F246 03:B236: 00        .byte $00   ; 02
- D 1 - I - 0x00F247 03:B237: 41        .byte $41   ; 03
- D 1 - I - 0x00F248 03:B238: 41        .byte $41   ; 04
- D 1 - I - 0x00F249 03:B239: 40        .byte $40   ; 05
- D 1 - I - 0x00F24A 03:B23A: 40        .byte $40   ; 06
- D 1 - I - 0x00F24B 03:B23B: 40        .byte $40   ; 07



off_02_B23C_00_spr_A:
- - - - - - 0x00F24C 03:B23C: 40        .byte $40   ; 01
- - - - - - 0x00F24D 03:B23D: 00        .byte $00   ; 02
- - - - - - 0x00F24E 03:B23E: 40        .byte $40   ; 03
- - - - - - 0x00F24F 03:B23F: 40        .byte $40   ; 04
- - - - - - 0x00F250 03:B240: 40        .byte $40   ; 05
- - - - - - 0x00F251 03:B241: 40        .byte $40   ; 06
- - - - - - 0x00F252 03:B242: 40        .byte $40   ; 07



off_02_B243_02_spr_XY:
- D 1 - I - 0x00F253 03:B243: ED        .byte $ED, $14   ; 01
- D 1 - I - 0x00F255 03:B245: F5        .byte $F5, $14   ; 02
- D 1 - I - 0x00F257 03:B247: ED        .byte $ED, $0C   ; 03
- D 1 - I - 0x00F259 03:B249: F4        .byte $F4, $0C   ; 04
- D 1 - I - 0x00F25B 03:B24B: EA        .byte $EA, $04   ; 05
- D 1 - I - 0x00F25D 03:B24D: F3        .byte $F3, $04   ; 06
- D 1 - I - 0x00F25F 03:B24F: F7        .byte $F7, $0F   ; 07



sub_06_B251_01:
- - - - - - 0x00F261 03:B251: 02        .byte con_sub_02, $09   ; 
- - - - - - 0x00F263 03:B253: 75 B2     .word off_02_B275_00_spr_A
- - - - - - 0x00F265 03:B255: 63 B2     .word off_02_B263_01_spr_T
- - - - - - 0x00F267 03:B257: 7E B2     .word off_02_B27E_02_spr_XY
- - - - - - 0x00F269 03:B259: 00        .byte con_sub_00   ; 



sub_06_B25A_00:
- D 1 - I - 0x00F26A 03:B25A: 02        .byte con_sub_02, $09   ; 
- D 1 - I - 0x00F26C 03:B25C: 6C B2     .word off_02_B26C_00
- D 1 - I - 0x00F26E 03:B25E: 63 B2     .word off_02_B263_01_spr_T
- D 1 - I - 0x00F270 03:B260: 7E B2     .word off_02_B27E_02_spr_XY
- D 1 - I - 0x00F272 03:B262: 00        .byte con_sub_00   ; 



off_02_B263_01_spr_T:
- D 1 - I - 0x00F273 03:B263: 40        .byte $40   ; 01
- D 1 - I - 0x00F274 03:B264: 72        .byte $72   ; 02
- D 1 - I - 0x00F275 03:B265: 3F        .byte $3F   ; 03
- D 1 - I - 0x00F276 03:B266: 3E        .byte $3E   ; 04
- D 1 - I - 0x00F277 03:B267: 11        .byte $11   ; 05
- D 1 - I - 0x00F278 03:B268: 10        .byte $10   ; 06
- D 1 - I - 0x00F279 03:B269: 01        .byte $01   ; 07
- D 1 - I - 0x00F27A 03:B26A: 00        .byte $00   ; 08
- D 1 - I - 0x00F27B 03:B26B: 15        .byte $15   ; 09



off_02_B26C_00:
- D 1 - I - 0x00F27C 03:B26C: 80        .byte $80   ; 01
- D 1 - I - 0x00F27D 03:B26D: 80        .byte $80   ; 02
- D 1 - I - 0x00F27E 03:B26E: 81        .byte $81   ; 03
- D 1 - I - 0x00F27F 03:B26F: 81        .byte $81   ; 04
- D 1 - I - 0x00F280 03:B270: 80        .byte $80   ; 05
- D 1 - I - 0x00F281 03:B271: 80        .byte $80   ; 06
- D 1 - I - 0x00F282 03:B272: 80        .byte $80   ; 07
- D 1 - I - 0x00F283 03:B273: C0        .byte $C0   ; 08
- D 1 - I - 0x00F284 03:B274: 80        .byte $80   ; 09



off_02_B275_00_spr_A:
- - - - - - 0x00F285 03:B275: 80        .byte $80   ; 01
- - - - - - 0x00F286 03:B276: 80        .byte $80   ; 02
- - - - - - 0x00F287 03:B277: 80        .byte $80   ; 03
- - - - - - 0x00F288 03:B278: 80        .byte $80   ; 04
- - - - - - 0x00F289 03:B279: 80        .byte $80   ; 05
- - - - - - 0x00F28A 03:B27A: 80        .byte $80   ; 06
- - - - - - 0x00F28B 03:B27B: 80        .byte $80   ; 07
- - - - - - 0x00F28C 03:B27C: C0        .byte $C0   ; 08
- - - - - - 0x00F28D 03:B27D: 80        .byte $80   ; 09



off_02_B27E_02_spr_XY:
- D 1 - I - 0x00F28E 03:B27E: F0        .byte $F0, $3B   ; 01
- D 1 - I - 0x00F290 03:B280: EC        .byte $EC, $33   ; 02
- D 1 - I - 0x00F292 03:B282: FC        .byte $FC, $33   ; 03
- D 1 - I - 0x00F294 03:B284: F4        .byte $F4, $33   ; 04
- D 1 - I - 0x00F296 03:B286: FC        .byte $FC, $2B   ; 05
- D 1 - I - 0x00F298 03:B288: F4        .byte $F4, $2B   ; 06
- D 1 - I - 0x00F29A 03:B28A: FC        .byte $FC, $23   ; 07
- D 1 - I - 0x00F29C 03:B28C: F4        .byte $F4, $23   ; 08
- D 1 - I - 0x00F29E 03:B28E: F6        .byte $F6, $33   ; 09



_off030_B290_29:
- - - - - - 0x00F2A0 03:B290: 04        .byte con_sub_04, $0A, $07   ; 
- - - - - - 0x00F2A3 03:B293: A6 B2     .word off_04_B2A6_00_spr_A
- - - - - - 0x00F2A5 03:B295: B0 B2     .word off_04_B2B0_01_spr_A
- - - - - - 0x00F2A7 03:B297: 9C B2     .word off_04_B29C_02_spr_T
- - - - - - 0x00F2A9 03:B299: BA B2     .word off_04_B2BA_03_spr_XY
- - - - - - 0x00F2AB 03:B29B: 00        .byte con_sub_00   ; 



off_04_B29C_02_spr_T:
- - - - - - 0x00F2AC 03:B29C: 33        .byte $33   ; 01
- - - - - - 0x00F2AD 03:B29D: 32        .byte $32   ; 02
- - - - - - 0x00F2AE 03:B29E: 53        .byte $53   ; 03
- - - - - - 0x00F2AF 03:B29F: 52        .byte $52   ; 04
- - - - - - 0x00F2B0 03:B2A0: 03        .byte $03   ; 05
- - - - - - 0x00F2B1 03:B2A1: 72        .byte $72   ; 06
- - - - - - 0x00F2B2 03:B2A2: 63        .byte $63   ; 07
- - - - - - 0x00F2B3 03:B2A3: 62        .byte $62   ; 08
- - - - - - 0x00F2B4 03:B2A4: 73        .byte $73   ; 09
- - - - - - 0x00F2B5 03:B2A5: 40        .byte $40   ; 0A



off_04_B2A6_00_spr_A:
- - - - - - 0x00F2B6 03:B2A6: 40        .byte $40   ; 01
- - - - - - 0x00F2B7 03:B2A7: 40        .byte $40   ; 02
- - - - - - 0x00F2B8 03:B2A8: 40        .byte $40   ; 03
- - - - - - 0x00F2B9 03:B2A9: 40        .byte $40   ; 04
- - - - - - 0x00F2BA 03:B2AA: 41        .byte $41   ; 05
- - - - - - 0x00F2BB 03:B2AB: 40        .byte $40   ; 06
- - - - - - 0x00F2BC 03:B2AC: 40        .byte $40   ; 07
- - - - - - 0x00F2BD 03:B2AD: 40        .byte $40   ; 08
- - - - - - 0x00F2BE 03:B2AE: 41        .byte $41   ; 09
- - - - - - 0x00F2BF 03:B2AF: 40        .byte $40   ; 0A



off_04_B2B0_01_spr_A:
- - - - - - 0x00F2C0 03:B2B0: 40        .byte $40   ; 01
- - - - - - 0x00F2C1 03:B2B1: 40        .byte $40   ; 02
- - - - - - 0x00F2C2 03:B2B2: 40        .byte $40   ; 03
- - - - - - 0x00F2C3 03:B2B3: 40        .byte $40   ; 04
- - - - - - 0x00F2C4 03:B2B4: 40        .byte $40   ; 05
- - - - - - 0x00F2C5 03:B2B5: 40        .byte $40   ; 06
- - - - - - 0x00F2C6 03:B2B6: 40        .byte $40   ; 07
- - - - - - 0x00F2C7 03:B2B7: 40        .byte $40   ; 08
- - - - - - 0x00F2C8 03:B2B8: 40        .byte $40   ; 09
- - - - - - 0x00F2C9 03:B2B9: 40        .byte $40   ; 0A



off_04_B2BA_03_spr_XY:
- - - - - - 0x00F2CA 03:B2BA: EB        .byte $EB, $1C   ; 01
- - - - - - 0x00F2CC 03:B2BC: F3        .byte $F3, $1C   ; 02
- - - - - - 0x00F2CE 03:B2BE: F0        .byte $F0, $14   ; 03
- - - - - - 0x00F2D0 03:B2C0: F8        .byte $F8, $14   ; 04
- - - - - - 0x00F2D2 03:B2C2: 00        .byte $00, $14   ; 05
- - - - - - 0x00F2D4 03:B2C4: 08        .byte $08, $13   ; 06
- - - - - - 0x00F2D6 03:B2C6: F0        .byte $F0, $0C   ; 07
- - - - - - 0x00F2D8 03:B2C8: F8        .byte $F8, $0C   ; 08
- - - - - - 0x00F2DA 03:B2CA: 00        .byte $00, $0C   ; 09
- - - - - - 0x00F2DC 03:B2CC: 03        .byte $03, $04   ; 0A



_off030_B2CE_11:
- D 1 - I - 0x00F2DE 03:B2CE: 02        .byte con_sub_02, $16   ; 
- D 1 - I - 0x00F2E0 03:B2D0: ED B2     .word off_02_B2ED_00_spr_A
- D 1 - I - 0x00F2E2 03:B2D2: D7 B2     .word off_02_B2D7_01_spr_T
- D 1 - I - 0x00F2E4 03:B2D4: 03 B3     .word off_02_B303_02_spr_XY
- D 1 - I - 0x00F2E6 03:B2D6: 00        .byte con_sub_00   ; 



off_02_B2D7_01_spr_T:
- D 1 - I - 0x00F2E7 03:B2D7: 8A        .byte $8A   ; 01
- D 1 - I - 0x00F2E8 03:B2D8: 8B        .byte $8B   ; 02
- D 1 - I - 0x00F2E9 03:B2D9: 83        .byte $83   ; 03
- D 1 - I - 0x00F2EA 03:B2DA: A5        .byte $A5   ; 04
- D 1 - I - 0x00F2EB 03:B2DB: D3        .byte $D3   ; 05
- D 1 - I - 0x00F2EC 03:B2DC: A5        .byte $A5   ; 06
- D 1 - I - 0x00F2ED 03:B2DD: 83        .byte $83   ; 07
- D 1 - I - 0x00F2EE 03:B2DE: 93        .byte $93   ; 08
- D 1 - I - 0x00F2EF 03:B2DF: B5        .byte $B5   ; 09
- D 1 - I - 0x00F2F0 03:B2E0: D4        .byte $D4   ; 0A
- D 1 - I - 0x00F2F1 03:B2E1: B5        .byte $B5   ; 0B
- D 1 - I - 0x00F2F2 03:B2E2: 93        .byte $93   ; 0C
- D 1 - I - 0x00F2F3 03:B2E3: C3        .byte $C3   ; 0D
- D 1 - I - 0x00F2F4 03:B2E4: C5        .byte $C5   ; 0E
- D 1 - I - 0x00F2F5 03:B2E5: E4        .byte $E4   ; 0F
- D 1 - I - 0x00F2F6 03:B2E6: C5        .byte $C5   ; 10
- D 1 - I - 0x00F2F7 03:B2E7: C3        .byte $C3   ; 11
- D 1 - I - 0x00F2F8 03:B2E8: D0        .byte $D0   ; 12
- D 1 - I - 0x00F2F9 03:B2E9: D5        .byte $D5   ; 13
- D 1 - I - 0x00F2FA 03:B2EA: F4        .byte $F4   ; 14
- D 1 - I - 0x00F2FB 03:B2EB: D5        .byte $D5   ; 15
- D 1 - I - 0x00F2FC 03:B2EC: D0        .byte $D0   ; 16



off_02_B2ED_00_spr_A:
- D 1 - I - 0x00F2FD 03:B2ED: 02        .byte $02   ; 01
- D 1 - I - 0x00F2FE 03:B2EE: 02        .byte $02   ; 02
- D 1 - I - 0x00F2FF 03:B2EF: 00        .byte $00   ; 03
- D 1 - I - 0x00F300 03:B2F0: 00        .byte $00   ; 04
- D 1 - I - 0x00F301 03:B2F1: 02        .byte $02   ; 05
- D 1 - I - 0x00F302 03:B2F2: 40        .byte $40   ; 06
- D 1 - I - 0x00F303 03:B2F3: 40        .byte $40   ; 07
- D 1 - I - 0x00F304 03:B2F4: 00        .byte $00   ; 08
- D 1 - I - 0x00F305 03:B2F5: 00        .byte $00   ; 09
- D 1 - I - 0x00F306 03:B2F6: 00        .byte $00   ; 0A
- D 1 - I - 0x00F307 03:B2F7: 40        .byte $40   ; 0B
- D 1 - I - 0x00F308 03:B2F8: 40        .byte $40   ; 0C
- D 1 - I - 0x00F309 03:B2F9: 00        .byte $00   ; 0D
- D 1 - I - 0x00F30A 03:B2FA: 00        .byte $00   ; 0E
- D 1 - I - 0x00F30B 03:B2FB: 00        .byte $00   ; 0F
- D 1 - I - 0x00F30C 03:B2FC: 40        .byte $40   ; 10
- D 1 - I - 0x00F30D 03:B2FD: 40        .byte $40   ; 11
- D 1 - I - 0x00F30E 03:B2FE: 01        .byte $01   ; 12
- D 1 - I - 0x00F30F 03:B2FF: 03        .byte $03   ; 13
- D 1 - I - 0x00F310 03:B300: 03        .byte $03   ; 14
- D 1 - I - 0x00F311 03:B301: 43        .byte $43   ; 15
- D 1 - I - 0x00F312 03:B302: 41        .byte $41   ; 16



off_02_B303_02_spr_XY:
- D 1 - I - 0x00F313 03:B303: FC        .byte $FC, $2D   ; 01
- D 1 - I - 0x00F315 03:B305: 04        .byte $04, $2D   ; 02
- D 1 - I - 0x00F317 03:B307: F0        .byte $F0, $25   ; 03
- D 1 - I - 0x00F319 03:B309: F8        .byte $F8, $25   ; 04
- D 1 - I - 0x00F31B 03:B30B: 00        .byte $00, $25   ; 05
- D 1 - I - 0x00F31D 03:B30D: 08        .byte $08, $25   ; 06
- D 1 - I - 0x00F31F 03:B30F: 10        .byte $10, $25   ; 07
- D 1 - I - 0x00F321 03:B311: F0        .byte $F0, $1D   ; 08
- D 1 - I - 0x00F323 03:B313: F8        .byte $F8, $1D   ; 09
- D 1 - I - 0x00F325 03:B315: 00        .byte $00, $1D   ; 0A
- D 1 - I - 0x00F327 03:B317: 08        .byte $08, $1D   ; 0B
- D 1 - I - 0x00F329 03:B319: 10        .byte $10, $1D   ; 0C
- D 1 - I - 0x00F32B 03:B31B: F0        .byte $F0, $15   ; 0D
- D 1 - I - 0x00F32D 03:B31D: F8        .byte $F8, $15   ; 0E
- D 1 - I - 0x00F32F 03:B31F: 00        .byte $00, $15   ; 0F
- D 1 - I - 0x00F331 03:B321: 08        .byte $08, $15   ; 10
- D 1 - I - 0x00F333 03:B323: 10        .byte $10, $15   ; 11
- D 1 - I - 0x00F335 03:B325: F7        .byte $F7, $05   ; 12
- D 1 - I - 0x00F337 03:B327: F8        .byte $F8, $0D   ; 13
- D 1 - I - 0x00F339 03:B329: 00        .byte $00, $0D   ; 14
- D 1 - I - 0x00F33B 03:B32B: 08        .byte $08, $0D   ; 15
- D 1 - I - 0x00F33D 03:B32D: 09        .byte $09, $05   ; 16



_off030_B32F_12:
- D 1 - I - 0x00F33F 03:B32F: 02        .byte con_sub_02, $16   ; 
- D 1 - I - 0x00F341 03:B331: 4E B3     .word off_02_B34E_00_spr_A
- D 1 - I - 0x00F343 03:B333: 38 B3     .word off_02_B338_01_spr_T
- D 1 - I - 0x00F345 03:B335: 64 B3     .word off_02_B364_02_spr_XY
- D 1 - I - 0x00F347 03:B337: 00        .byte con_sub_00   ; 



off_02_B338_01_spr_T:
- D 1 - I - 0x00F348 03:B338: 86        .byte $86   ; 01
- D 1 - I - 0x00F349 03:B339: 8A        .byte $8A   ; 02
- D 1 - I - 0x00F34A 03:B33A: 8B        .byte $8B   ; 03
- D 1 - I - 0x00F34B 03:B33B: 86        .byte $86   ; 04
- D 1 - I - 0x00F34C 03:B33C: 96        .byte $96   ; 05
- D 1 - I - 0x00F34D 03:B33D: B6        .byte $B6   ; 06
- D 1 - I - 0x00F34E 03:B33E: D3        .byte $D3   ; 07
- D 1 - I - 0x00F34F 03:B33F: B6        .byte $B6   ; 08
- D 1 - I - 0x00F350 03:B340: 96        .byte $96   ; 09
- D 1 - I - 0x00F351 03:B341: A6        .byte $A6   ; 0A
- D 1 - I - 0x00F352 03:B342: C6        .byte $C6   ; 0B
- D 1 - I - 0x00F353 03:B343: E5        .byte $E5   ; 0C
- D 1 - I - 0x00F354 03:B344: C6        .byte $C6   ; 0D
- D 1 - I - 0x00F355 03:B345: A6        .byte $A6   ; 0E
- D 1 - I - 0x00F356 03:B346: D6        .byte $D6   ; 0F
- D 1 - I - 0x00F357 03:B347: F5        .byte $F5   ; 10
- D 1 - I - 0x00F358 03:B348: D6        .byte $D6   ; 11
- D 1 - I - 0x00F359 03:B349: D5        .byte $D5   ; 12
- D 1 - I - 0x00F35A 03:B34A: F4        .byte $F4   ; 13
- D 1 - I - 0x00F35B 03:B34B: D5        .byte $D5   ; 14
- D 1 - I - 0x00F35C 03:B34C: D0        .byte $D0   ; 15
- D 1 - I - 0x00F35D 03:B34D: D0        .byte $D0   ; 16



off_02_B34E_00_spr_A:
- D 1 - I - 0x00F35E 03:B34E: 00        .byte $00   ; 01
- D 1 - I - 0x00F35F 03:B34F: 02        .byte $02   ; 02
- D 1 - I - 0x00F360 03:B350: 02        .byte $02   ; 03
- D 1 - I - 0x00F361 03:B351: 40        .byte $40   ; 04
- D 1 - I - 0x00F362 03:B352: 00        .byte $00   ; 05
- D 1 - I - 0x00F363 03:B353: 00        .byte $00   ; 06
- D 1 - I - 0x00F364 03:B354: 02        .byte $02   ; 07
- D 1 - I - 0x00F365 03:B355: 40        .byte $40   ; 08
- D 1 - I - 0x00F366 03:B356: 40        .byte $40   ; 09
- D 1 - I - 0x00F367 03:B357: 00        .byte $00   ; 0A
- D 1 - I - 0x00F368 03:B358: 00        .byte $00   ; 0B
- D 1 - I - 0x00F369 03:B359: 00        .byte $00   ; 0C
- D 1 - I - 0x00F36A 03:B35A: 40        .byte $40   ; 0D
- D 1 - I - 0x00F36B 03:B35B: 40        .byte $40   ; 0E
- D 1 - I - 0x00F36C 03:B35C: 00        .byte $00   ; 0F
- D 1 - I - 0x00F36D 03:B35D: 00        .byte $00   ; 10
- D 1 - I - 0x00F36E 03:B35E: 40        .byte $40   ; 11
- D 1 - I - 0x00F36F 03:B35F: 03        .byte $03   ; 12
- D 1 - I - 0x00F370 03:B360: 03        .byte $03   ; 13
- D 1 - I - 0x00F371 03:B361: 43        .byte $43   ; 14
- D 1 - I - 0x00F372 03:B362: 01        .byte $01   ; 15
- D 1 - I - 0x00F373 03:B363: 41        .byte $41   ; 16



off_02_B364_02_spr_XY:
- D 1 - I - 0x00F374 03:B364: EE        .byte $EE, $33   ; 01
- D 1 - I - 0x00F376 03:B366: FC        .byte $FC, $2B   ; 02
- D 1 - I - 0x00F378 03:B368: 04        .byte $04, $2B   ; 03
- D 1 - I - 0x00F37A 03:B36A: 12        .byte $12, $33   ; 04
- D 1 - I - 0x00F37C 03:B36C: EE        .byte $EE, $2B   ; 05
- D 1 - I - 0x00F37E 03:B36E: F8        .byte $F8, $23   ; 06
- D 1 - I - 0x00F380 03:B370: 00        .byte $00, $23   ; 07
- D 1 - I - 0x00F382 03:B372: 08        .byte $08, $23   ; 08
- D 1 - I - 0x00F384 03:B374: 12        .byte $12, $2B   ; 09
- D 1 - I - 0x00F386 03:B376: F0        .byte $F0, $23   ; 0A
- D 1 - I - 0x00F388 03:B378: F8        .byte $F8, $1B   ; 0B
- D 1 - I - 0x00F38A 03:B37A: 00        .byte $00, $1B   ; 0C
- D 1 - I - 0x00F38C 03:B37C: 08        .byte $08, $1B   ; 0D
- D 1 - I - 0x00F38E 03:B37E: 10        .byte $10, $23   ; 0E
- D 1 - I - 0x00F390 03:B380: F8        .byte $F8, $13   ; 0F
- D 1 - I - 0x00F392 03:B382: 00        .byte $00, $13   ; 10
- D 1 - I - 0x00F394 03:B384: 08        .byte $08, $13   ; 11
- D 1 - I - 0x00F396 03:B386: F8        .byte $F8, $0B   ; 12
- D 1 - I - 0x00F398 03:B388: 00        .byte $00, $0B   ; 13
- D 1 - I - 0x00F39A 03:B38A: 08        .byte $08, $0B   ; 14
- D 1 - I - 0x00F39C 03:B38C: F7        .byte $F7, $03   ; 15
- D 1 - I - 0x00F39E 03:B38E: 09        .byte $09, $03   ; 16



_off030_B390_13:
- D 1 - I - 0x00F3A0 03:B390: 02        .byte con_sub_02, $16   ; 
- D 1 - I - 0x00F3A2 03:B392: 4E B3     .word off_02_B34E_00_spr_A
- D 1 - I - 0x00F3A4 03:B394: 99 B3     .word off_02_B399_01_spr_T
- D 1 - I - 0x00F3A6 03:B396: AF B3     .word off_02_B3AF_02_spr_XY
- D 1 - I - 0x00F3A8 03:B398: 00        .byte con_sub_00   ; 



off_02_B399_01_spr_T:
- D 1 - I - 0x00F3A9 03:B399: 87        .byte $87   ; 01
- D 1 - I - 0x00F3AA 03:B39A: 8A        .byte $8A   ; 02
- D 1 - I - 0x00F3AB 03:B39B: 8B        .byte $8B   ; 03
- D 1 - I - 0x00F3AC 03:B39C: 87        .byte $87   ; 04
- D 1 - I - 0x00F3AD 03:B39D: 97        .byte $97   ; 05
- D 1 - I - 0x00F3AE 03:B39E: B7        .byte $B7   ; 06
- D 1 - I - 0x00F3AF 03:B39F: E6        .byte $E6   ; 07
- D 1 - I - 0x00F3B0 03:B3A0: B7        .byte $B7   ; 08
- D 1 - I - 0x00F3B1 03:B3A1: 97        .byte $97   ; 09
- D 1 - I - 0x00F3B2 03:B3A2: A7        .byte $A7   ; 0A
- D 1 - I - 0x00F3B3 03:B3A3: C7        .byte $C7   ; 0B
- D 1 - I - 0x00F3B4 03:B3A4: E5        .byte $E5   ; 0C
- D 1 - I - 0x00F3B5 03:B3A5: C7        .byte $C7   ; 0D
- D 1 - I - 0x00F3B6 03:B3A6: A7        .byte $A7   ; 0E
- D 1 - I - 0x00F3B7 03:B3A7: D7        .byte $D7   ; 0F
- D 1 - I - 0x00F3B8 03:B3A8: E7        .byte $E7   ; 10
- D 1 - I - 0x00F3B9 03:B3A9: D7        .byte $D7   ; 11
- D 1 - I - 0x00F3BA 03:B3AA: D5        .byte $D5   ; 12
- D 1 - I - 0x00F3BB 03:B3AB: F4        .byte $F4   ; 13
- D 1 - I - 0x00F3BC 03:B3AC: D5        .byte $D5   ; 14
- D 1 - I - 0x00F3BD 03:B3AD: FA        .byte $FA   ; 15
- D 1 - I - 0x00F3BE 03:B3AE: FA        .byte $FA   ; 16



off_02_B3AF_02_spr_XY:
- D 1 - I - 0x00F3BF 03:B3AF: EE        .byte $EE, $33   ; 01
- D 1 - I - 0x00F3C1 03:B3B1: FC        .byte $FC, $2B   ; 02
- D 1 - I - 0x00F3C3 03:B3B3: 04        .byte $04, $2B   ; 03
- D 1 - I - 0x00F3C5 03:B3B5: 12        .byte $12, $33   ; 04
- D 1 - I - 0x00F3C7 03:B3B7: EE        .byte $EE, $2B   ; 05
- D 1 - I - 0x00F3C9 03:B3B9: F8        .byte $F8, $23   ; 06
- D 1 - I - 0x00F3CB 03:B3BB: 00        .byte $00, $23   ; 07
- D 1 - I - 0x00F3CD 03:B3BD: 08        .byte $08, $23   ; 08
- D 1 - I - 0x00F3CF 03:B3BF: 12        .byte $12, $2B   ; 09
- D 1 - I - 0x00F3D1 03:B3C1: F0        .byte $F0, $23   ; 0A
- D 1 - I - 0x00F3D3 03:B3C3: F8        .byte $F8, $1B   ; 0B
- D 1 - I - 0x00F3D5 03:B3C5: 00        .byte $00, $1B   ; 0C
- D 1 - I - 0x00F3D7 03:B3C7: 08        .byte $08, $1B   ; 0D
- D 1 - I - 0x00F3D9 03:B3C9: 10        .byte $10, $23   ; 0E
- D 1 - I - 0x00F3DB 03:B3CB: F8        .byte $F8, $13   ; 0F
- D 1 - I - 0x00F3DD 03:B3CD: 00        .byte $00, $13   ; 10
- D 1 - I - 0x00F3DF 03:B3CF: 08        .byte $08, $13   ; 11
- D 1 - I - 0x00F3E1 03:B3D1: F8        .byte $F8, $0B   ; 12
- D 1 - I - 0x00F3E3 03:B3D3: 00        .byte $00, $0B   ; 13
- D 1 - I - 0x00F3E5 03:B3D5: 08        .byte $08, $0B   ; 14
- D 1 - I - 0x00F3E7 03:B3D7: F7        .byte $F7, $03   ; 15
- D 1 - I - 0x00F3E9 03:B3D9: 09        .byte $09, $03   ; 16



_off030_B3DB_14:
- D 1 - I - 0x00F3EB 03:B3DB: 02        .byte con_sub_02, $16   ; 
- D 1 - I - 0x00F3ED 03:B3DD: 4E B3     .word off_02_B34E_00_spr_A
- D 1 - I - 0x00F3EF 03:B3DF: E4 B3     .word off_02_B3E4_01_spr_T
- D 1 - I - 0x00F3F1 03:B3E1: FA B3     .word off_02_B3FA_02_spr_XY
- D 1 - I - 0x00F3F3 03:B3E3: 00        .byte con_sub_00   ; 



off_02_B3E4_01_spr_T:
- D 1 - I - 0x00F3F4 03:B3E4: 88        .byte $88   ; 01
- D 1 - I - 0x00F3F5 03:B3E5: 8A        .byte $8A   ; 02
- D 1 - I - 0x00F3F6 03:B3E6: 8B        .byte $8B   ; 03
- D 1 - I - 0x00F3F7 03:B3E7: 88        .byte $88   ; 04
- D 1 - I - 0x00F3F8 03:B3E8: 98        .byte $98   ; 05
- D 1 - I - 0x00F3F9 03:B3E9: B8        .byte $B8   ; 06
- D 1 - I - 0x00F3FA 03:B3EA: E8        .byte $E8   ; 07
- D 1 - I - 0x00F3FB 03:B3EB: B8        .byte $B8   ; 08
- D 1 - I - 0x00F3FC 03:B3EC: 98        .byte $98   ; 09
- D 1 - I - 0x00F3FD 03:B3ED: A8        .byte $A8   ; 0A
- D 1 - I - 0x00F3FE 03:B3EE: C8        .byte $C8   ; 0B
- D 1 - I - 0x00F3FF 03:B3EF: F8        .byte $F8   ; 0C
- D 1 - I - 0x00F400 03:B3F0: C8        .byte $C8   ; 0D
- D 1 - I - 0x00F401 03:B3F1: A8        .byte $A8   ; 0E
- D 1 - I - 0x00F402 03:B3F2: D8        .byte $D8   ; 0F
- D 1 - I - 0x00F403 03:B3F3: F7        .byte $F7   ; 10
- D 1 - I - 0x00F404 03:B3F4: D8        .byte $D8   ; 11
- D 1 - I - 0x00F405 03:B3F5: D5        .byte $D5   ; 12
- D 1 - I - 0x00F406 03:B3F6: F4        .byte $F4   ; 13
- D 1 - I - 0x00F407 03:B3F7: D5        .byte $D5   ; 14
- D 1 - I - 0x00F408 03:B3F8: FA        .byte $FA   ; 15
- D 1 - I - 0x00F409 03:B3F9: FA        .byte $FA   ; 16



off_02_B3FA_02_spr_XY:
- D 1 - I - 0x00F40A 03:B3FA: EE        .byte $EE, $33   ; 01
- D 1 - I - 0x00F40C 03:B3FC: FC        .byte $FC, $2B   ; 02
- D 1 - I - 0x00F40E 03:B3FE: 04        .byte $04, $2B   ; 03
- D 1 - I - 0x00F410 03:B400: 12        .byte $12, $33   ; 04
- D 1 - I - 0x00F412 03:B402: EE        .byte $EE, $2B   ; 05
- D 1 - I - 0x00F414 03:B404: F8        .byte $F8, $23   ; 06
- D 1 - I - 0x00F416 03:B406: 00        .byte $00, $23   ; 07
- D 1 - I - 0x00F418 03:B408: 08        .byte $08, $23   ; 08
- D 1 - I - 0x00F41A 03:B40A: 12        .byte $12, $2B   ; 09
- D 1 - I - 0x00F41C 03:B40C: F0        .byte $F0, $23   ; 0A
- D 1 - I - 0x00F41E 03:B40E: F8        .byte $F8, $1B   ; 0B
- D 1 - I - 0x00F420 03:B410: 00        .byte $00, $1B   ; 0C
- D 1 - I - 0x00F422 03:B412: 08        .byte $08, $1B   ; 0D
- D 1 - I - 0x00F424 03:B414: 10        .byte $10, $23   ; 0E
- D 1 - I - 0x00F426 03:B416: F8        .byte $F8, $13   ; 0F
- D 1 - I - 0x00F428 03:B418: 00        .byte $00, $13   ; 10
- D 1 - I - 0x00F42A 03:B41A: 08        .byte $08, $13   ; 11
- D 1 - I - 0x00F42C 03:B41C: F8        .byte $F8, $0B   ; 12
- D 1 - I - 0x00F42E 03:B41E: 00        .byte $00, $0B   ; 13
- D 1 - I - 0x00F430 03:B420: 08        .byte $08, $0B   ; 14
- D 1 - I - 0x00F432 03:B422: F7        .byte $F7, $03   ; 15
- D 1 - I - 0x00F434 03:B424: 09        .byte $09, $03   ; 16



_off030_B426_15:
- D 1 - I - 0x00F436 03:B426: 02        .byte con_sub_02, $14   ; 
- D 1 - I - 0x00F438 03:B428: 43 B4     .word off_02_B443_00_spr_A
- D 1 - I - 0x00F43A 03:B42A: 2F B4     .word off_02_B42F_01_spr_T
- D 1 - I - 0x00F43C 03:B42C: 57 B4     .word off_02_B457_02_spr_XY
- D 1 - I - 0x00F43E 03:B42E: 00        .byte con_sub_00   ; 



off_02_B42F_01_spr_T:
- D 1 - I - 0x00F43F 03:B42F: 8A        .byte $8A   ; 01
- D 1 - I - 0x00F440 03:B430: 8B        .byte $8B   ; 02
- D 1 - I - 0x00F441 03:B431: 89        .byte $89   ; 03
- D 1 - I - 0x00F442 03:B432: B9        .byte $B9   ; 04
- D 1 - I - 0x00F443 03:B433: E9        .byte $E9   ; 05
- D 1 - I - 0x00F444 03:B434: B9        .byte $B9   ; 06
- D 1 - I - 0x00F445 03:B435: 89        .byte $89   ; 07
- D 1 - I - 0x00F446 03:B436: 99        .byte $99   ; 08
- D 1 - I - 0x00F447 03:B437: C9        .byte $C9   ; 09
- D 1 - I - 0x00F448 03:B438: F9        .byte $F9   ; 0A
- D 1 - I - 0x00F449 03:B439: C9        .byte $C9   ; 0B
- D 1 - I - 0x00F44A 03:B43A: 99        .byte $99   ; 0C
- D 1 - I - 0x00F44B 03:B43B: D9        .byte $D9   ; 0D
- D 1 - I - 0x00F44C 03:B43C: EA        .byte $EA   ; 0E
- D 1 - I - 0x00F44D 03:B43D: D9        .byte $D9   ; 0F
- D 1 - I - 0x00F44E 03:B43E: D5        .byte $D5   ; 10
- D 1 - I - 0x00F44F 03:B43F: F4        .byte $F4   ; 11
- D 1 - I - 0x00F450 03:B440: D5        .byte $D5   ; 12
- D 1 - I - 0x00F451 03:B441: FA        .byte $FA   ; 13
- D 1 - I - 0x00F452 03:B442: FA        .byte $FA   ; 14



off_02_B443_00_spr_A:
- D 1 - I - 0x00F453 03:B443: 02        .byte $02   ; 01
- D 1 - I - 0x00F454 03:B444: 02        .byte $02   ; 02
- D 1 - I - 0x00F455 03:B445: 00        .byte $00   ; 03
- D 1 - I - 0x00F456 03:B446: 00        .byte $00   ; 04
- D 1 - I - 0x00F457 03:B447: 02        .byte $02   ; 05
- D 1 - I - 0x00F458 03:B448: 40        .byte $40   ; 06
- D 1 - I - 0x00F459 03:B449: 40        .byte $40   ; 07
- D 1 - I - 0x00F45A 03:B44A: 00        .byte $00   ; 08
- D 1 - I - 0x00F45B 03:B44B: 00        .byte $00   ; 09
- D 1 - I - 0x00F45C 03:B44C: 00        .byte $00   ; 0A
- D 1 - I - 0x00F45D 03:B44D: 40        .byte $40   ; 0B
- D 1 - I - 0x00F45E 03:B44E: 40        .byte $40   ; 0C
- D 1 - I - 0x00F45F 03:B44F: 00        .byte $00   ; 0D
- D 1 - I - 0x00F460 03:B450: 00        .byte $00   ; 0E
- D 1 - I - 0x00F461 03:B451: 40        .byte $40   ; 0F
- D 1 - I - 0x00F462 03:B452: 03        .byte $03   ; 10
- D 1 - I - 0x00F463 03:B453: 03        .byte $03   ; 11
- D 1 - I - 0x00F464 03:B454: 43        .byte $43   ; 12
- D 1 - I - 0x00F465 03:B455: 01        .byte $01   ; 13
- D 1 - I - 0x00F466 03:B456: 41        .byte $41   ; 14



off_02_B457_02_spr_XY:
- D 1 - I - 0x00F467 03:B457: FC        .byte $FC, $2B   ; 01
- D 1 - I - 0x00F469 03:B459: 04        .byte $04, $2B   ; 02
- D 1 - I - 0x00F46B 03:B45B: EE        .byte $EE, $2B   ; 03
- D 1 - I - 0x00F46D 03:B45D: F8        .byte $F8, $23   ; 04
- D 1 - I - 0x00F46F 03:B45F: 00        .byte $00, $23   ; 05
- D 1 - I - 0x00F471 03:B461: 08        .byte $08, $23   ; 06
- D 1 - I - 0x00F473 03:B463: 12        .byte $12, $2B   ; 07
- D 1 - I - 0x00F475 03:B465: F0        .byte $F0, $23   ; 08
- D 1 - I - 0x00F477 03:B467: F8        .byte $F8, $1B   ; 09
- D 1 - I - 0x00F479 03:B469: 00        .byte $00, $1B   ; 0A
- D 1 - I - 0x00F47B 03:B46B: 08        .byte $08, $1B   ; 0B
- D 1 - I - 0x00F47D 03:B46D: 10        .byte $10, $23   ; 0C
- D 1 - I - 0x00F47F 03:B46F: F8        .byte $F8, $13   ; 0D
- D 1 - I - 0x00F481 03:B471: 00        .byte $00, $13   ; 0E
- D 1 - I - 0x00F483 03:B473: 08        .byte $08, $13   ; 0F
- D 1 - I - 0x00F485 03:B475: F8        .byte $F8, $0B   ; 10
- D 1 - I - 0x00F487 03:B477: 00        .byte $00, $0B   ; 11
- D 1 - I - 0x00F489 03:B479: 08        .byte $08, $0B   ; 12
- D 1 - I - 0x00F48B 03:B47B: F7        .byte $F7, $03   ; 13
- D 1 - I - 0x00F48D 03:B47D: 09        .byte $09, $03   ; 14



_off030_B47F_16:
- D 1 - I - 0x00F48F 03:B47F: 02        .byte con_sub_02, $14   ; 
- D 1 - I - 0x00F491 03:B481: 43 B4     .word off_02_B443_00_spr_A
- D 1 - I - 0x00F493 03:B483: 88 B4     .word off_02_B488_01_spr_T
- D 1 - I - 0x00F495 03:B485: 9C B4     .word off_02_B49C_02_spr_XY
- D 1 - I - 0x00F497 03:B487: 00        .byte con_sub_00   ; 



off_02_B488_01_spr_T:
- D 1 - I - 0x00F498 03:B488: 8A        .byte $8A   ; 01
- D 1 - I - 0x00F499 03:B489: 8B        .byte $8B   ; 02
- D 1 - I - 0x00F49A 03:B48A: 9A        .byte $9A   ; 03
- D 1 - I - 0x00F49B 03:B48B: BA        .byte $BA   ; 04
- D 1 - I - 0x00F49C 03:B48C: E9        .byte $E9   ; 05
- D 1 - I - 0x00F49D 03:B48D: BA        .byte $BA   ; 06
- D 1 - I - 0x00F49E 03:B48E: 9A        .byte $9A   ; 07
- D 1 - I - 0x00F49F 03:B48F: AA        .byte $AA   ; 08
- D 1 - I - 0x00F4A0 03:B490: CA        .byte $CA   ; 09
- D 1 - I - 0x00F4A1 03:B491: FB        .byte $FB   ; 0A
- D 1 - I - 0x00F4A2 03:B492: CA        .byte $CA   ; 0B
- D 1 - I - 0x00F4A3 03:B493: AA        .byte $AA   ; 0C
- D 1 - I - 0x00F4A4 03:B494: DA        .byte $DA   ; 0D
- D 1 - I - 0x00F4A5 03:B495: ED        .byte $ED   ; 0E
- D 1 - I - 0x00F4A6 03:B496: DA        .byte $DA   ; 0F
- D 1 - I - 0x00F4A7 03:B497: FC        .byte $FC   ; 10
- D 1 - I - 0x00F4A8 03:B498: FD        .byte $FD   ; 11
- D 1 - I - 0x00F4A9 03:B499: FC        .byte $FC   ; 12
- D 1 - I - 0x00F4AA 03:B49A: FA        .byte $FA   ; 13
- D 1 - I - 0x00F4AB 03:B49B: FA        .byte $FA   ; 14



off_02_B49C_02_spr_XY:
- D 1 - I - 0x00F4AC 03:B49C: FC        .byte $FC, $2B   ; 01
- D 1 - I - 0x00F4AE 03:B49E: 04        .byte $04, $2B   ; 02
- D 1 - I - 0x00F4B0 03:B4A0: EE        .byte $EE, $2B   ; 03
- D 1 - I - 0x00F4B2 03:B4A2: F8        .byte $F8, $23   ; 04
- D 1 - I - 0x00F4B4 03:B4A4: 00        .byte $00, $23   ; 05
- D 1 - I - 0x00F4B6 03:B4A6: 08        .byte $08, $23   ; 06
- D 1 - I - 0x00F4B8 03:B4A8: 12        .byte $12, $2B   ; 07
- D 1 - I - 0x00F4BA 03:B4AA: F0        .byte $F0, $23   ; 08
- D 1 - I - 0x00F4BC 03:B4AC: F8        .byte $F8, $1B   ; 09
- D 1 - I - 0x00F4BE 03:B4AE: 00        .byte $00, $1B   ; 0A
- D 1 - I - 0x00F4C0 03:B4B0: 08        .byte $08, $1B   ; 0B
- D 1 - I - 0x00F4C2 03:B4B2: 10        .byte $10, $23   ; 0C
- D 1 - I - 0x00F4C4 03:B4B4: F8        .byte $F8, $13   ; 0D
- D 1 - I - 0x00F4C6 03:B4B6: 00        .byte $00, $13   ; 0E
- D 1 - I - 0x00F4C8 03:B4B8: 08        .byte $08, $13   ; 0F
- D 1 - I - 0x00F4CA 03:B4BA: F8        .byte $F8, $0B   ; 10
- D 1 - I - 0x00F4CC 03:B4BC: 00        .byte $00, $0B   ; 11
- D 1 - I - 0x00F4CE 03:B4BE: 08        .byte $08, $0B   ; 12
- D 1 - I - 0x00F4D0 03:B4C0: F7        .byte $F7, $03   ; 13
- D 1 - I - 0x00F4D2 03:B4C2: 09        .byte $09, $03   ; 14



_off030_B4C4_17:
- D 1 - I - 0x00F4D4 03:B4C4: 01        .byte con_sub_01, $04, $02   ; 
- D 1 - I - 0x00F4D7 03:B4C7: CC B4     .word off_01_B4CC_spr_T
- D 1 - I - 0x00F4D9 03:B4C9: D0 B4     .word off_01_B4D0_spr_XY
- D 1 - I - 0x00F4DB 03:B4CB: 00        .byte con_sub_00   ; 



off_01_B4CC_spr_T:
- D 1 - I - 0x00F4DC 03:B4CC: 8A        .byte $8A   ; 01
- D 1 - I - 0x00F4DD 03:B4CD: 8B        .byte $8B   ; 02
- D 1 - I - 0x00F4DE 03:B4CE: FE        .byte $FE   ; 03
- D 1 - I - 0x00F4DF 03:B4CF: FF        .byte $FF   ; 04



off_01_B4D0_spr_XY:
- D 1 - I - 0x00F4E0 03:B4D0: FC        .byte $FC, $0A   ; 01
- D 1 - I - 0x00F4E2 03:B4D2: 04        .byte $04, $0A   ; 02
- D 1 - I - 0x00F4E4 03:B4D4: FA        .byte $FA, $02   ; 03
- D 1 - I - 0x00F4E6 03:B4D6: 02        .byte $02, $02   ; 04



_off030_B4D8_18:
- D 1 - I - 0x00F4E8 03:B4D8: 01        .byte con_sub_01, $04, $02   ; 
- D 1 - I - 0x00F4EB 03:B4DB: E0 B4     .word off_01_B4E0_spr_T
- D 1 - I - 0x00F4ED 03:B4DD: E4 B4     .word off_01_B4E4_spr_XY
- D 1 - I - 0x00F4EF 03:B4DF: 00        .byte con_sub_00   ; 



off_01_B4E0_spr_T:
- D 1 - I - 0x00F4F0 03:B4E0: 8C        .byte $8C   ; 01
- D 1 - I - 0x00F4F1 03:B4E1: 8D        .byte $8D   ; 02
- D 1 - I - 0x00F4F2 03:B4E2: 9C        .byte $9C   ; 03
- D 1 - I - 0x00F4F3 03:B4E3: 9D        .byte $9D   ; 04



off_01_B4E4_spr_XY:
- D 1 - I - 0x00F4F4 03:B4E4: FD        .byte $FD, $09   ; 01
- D 1 - I - 0x00F4F6 03:B4E6: 05        .byte $05, $09   ; 02
- D 1 - I - 0x00F4F8 03:B4E8: FD        .byte $FD, $01   ; 03
- D 1 - I - 0x00F4FA 03:B4EA: 05        .byte $05, $01   ; 04



_off030_B4EC_19:
- D 1 - I - 0x00F4FC 03:B4EC: 01        .byte con_sub_01, $04, $02   ; 
- D 1 - I - 0x00F4FF 03:B4EF: F4 B4     .word off_01_B4F4_spr_T
- D 1 - I - 0x00F501 03:B4F1: F8 B4     .word off_01_B4F8_spr_XY
- D 1 - I - 0x00F503 03:B4F3: 00        .byte con_sub_00   ; 



off_01_B4F4_spr_T:
- D 1 - I - 0x00F504 03:B4F4: 8E        .byte $8E   ; 01
- D 1 - I - 0x00F505 03:B4F5: 8F        .byte $8F   ; 02
- D 1 - I - 0x00F506 03:B4F6: 9E        .byte $9E   ; 03
- D 1 - I - 0x00F507 03:B4F7: 9F        .byte $9F   ; 04



off_01_B4F8_spr_XY:
- D 1 - I - 0x00F508 03:B4F8: FD        .byte $FD, $0C   ; 01
- D 1 - I - 0x00F50A 03:B4FA: 05        .byte $05, $0C   ; 02
- D 1 - I - 0x00F50C 03:B4FC: FD        .byte $FD, $04   ; 03
- D 1 - I - 0x00F50E 03:B4FE: 05        .byte $05, $04   ; 04



_off030_B500_1A:
- D 1 - I - 0x00F510 03:B500: 01        .byte con_sub_01, $04, $02   ; 
- D 1 - I - 0x00F513 03:B503: CC B4     .word off_01_B4CC_spr_T
- D 1 - I - 0x00F515 03:B505: 08 B5     .word off_01_B508_spr_XY
- D 1 - I - 0x00F517 03:B507: 00        .byte con_sub_00   ; 



off_01_B508_spr_XY:
- D 1 - I - 0x00F518 03:B508: FC        .byte $FC, $13   ; 01
- D 1 - I - 0x00F51A 03:B50A: 04        .byte $04, $13   ; 02
- D 1 - I - 0x00F51C 03:B50C: FA        .byte $FA, $0B   ; 03
- D 1 - I - 0x00F51E 03:B50E: 02        .byte $02, $0B   ; 04



_off030_B510_1B:
- D 1 - I - 0x00F520 03:B510: 01        .byte con_sub_01, $04, $02   ; 
- D 1 - I - 0x00F523 03:B513: CC B4     .word off_01_B4CC_spr_T
- D 1 - I - 0x00F525 03:B515: 18 B5     .word off_01_B518_spr_XY
- D 1 - I - 0x00F527 03:B517: 00        .byte con_sub_00   ; 



off_01_B518_spr_XY:
- D 1 - I - 0x00F528 03:B518: FC        .byte $FC, $2B   ; 01
- D 1 - I - 0x00F52A 03:B51A: 04        .byte $04, $2B   ; 02
- D 1 - I - 0x00F52C 03:B51C: FA        .byte $FA, $23   ; 03
- D 1 - I - 0x00F52E 03:B51E: 02        .byte $02, $23   ; 04



sub_06_B520_00:
- D 1 - I - 0x00F530 03:B520: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F533 03:B523: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F535 03:B525: 28 B5     .word off_01_B528_spr_XY
- D 1 - I - 0x00F537 03:B527: 00        .byte con_sub_00   ; 



off_01_B528_spr_XY:
- D 1 - I - 0x00F538 03:B528: 01        .byte $01, $20   ; 01
- D 1 - I - 0x00F53A 03:B52A: 05        .byte $05, $24   ; 02



sub_06_B52C_01:
- D 1 - I - 0x00F53C 03:B52C: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F53F 03:B52F: 34 B5     .word off_01_B534_spr_T
- D 1 - I - 0x00F541 03:B531: 36 B5     .word off_01_B536_spr_XY
- D 1 - I - 0x00F543 03:B533: 00        .byte con_sub_00   ; 



off_01_B534_spr_T:
off_02_B534_01_spr_T:
- D 1 - I - 0x00F544 03:B534: 9F        .byte $9F   ; 01
- D 1 - I - 0x00F545 03:B535: 8D        .byte $8D   ; 02



off_01_B536_spr_XY:
- D 1 - I - 0x00F546 03:B536: FD        .byte $FD, $1A   ; 01
- D 1 - I - 0x00F548 03:B538: FB        .byte $FB, $16   ; 02



sub_06_B53A_02:
- D 1 - I - 0x00F54A 03:B53A: 01        .byte con_sub_01, $01, $43   ; 
- D 1 - I - 0x00F54D 03:B53D: 42 B5     .word off_01_B542_spr_T
- D 1 - I - 0x00F54F 03:B53F: 43 B5     .word off_01_B543_spr_XY
- D 1 - I - 0x00F551 03:B541: 00        .byte con_sub_00   ; 



off_01_B542_spr_T:
- D 1 - I - 0x00F552 03:B542: 9F        .byte $9F   ; 01



off_01_B543_spr_XY:
- D 1 - I - 0x00F553 03:B543: F9        .byte $F9, $17   ; 01



sub_06_B545_03:
- D 1 - I - 0x00F555 03:B545: 01        .byte con_sub_01, $01, $03   ; 
- D 1 - I - 0x00F558 03:B548: 4D B5     .word off_01_B54D_spr_T
- D 1 - I - 0x00F55A 03:B54A: 4E B5     .word off_01_B54E_spr_XY
- D 1 - I - 0x00F55C 03:B54C: 00        .byte con_sub_00   ; 



off_01_B54D_spr_T:
- D 1 - I - 0x00F55D 03:B54D: AD        .byte $AD   ; 01



off_01_B54E_spr_XY:
- D 1 - I - 0x00F55E 03:B54E: FC        .byte $FC, $1B   ; 01



sub_06_B550_04:
- D 1 - I - 0x00F560 03:B550: 01        .byte con_sub_01, $01, $02   ; 
- D 1 - I - 0x00F563 03:B553: 58 B5     .word off_01_B558_spr_T
- D 1 - I - 0x00F565 03:B555: 59 B5     .word off_01_B559_spr_XY
- D 1 - I - 0x00F567 03:B557: 00        .byte con_sub_00   ; 



off_01_B558_spr_T:
- D 1 - I - 0x00F568 03:B558: CD        .byte $CD   ; 01



off_01_B559_spr_XY:
- D 1 - I - 0x00F569 03:B559: 00        .byte $00, $1F   ; 01



sub_06_B55B_00:
- D 1 - I - 0x00F56B 03:B55B: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F56E 03:B55E: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F570 03:B560: 63 B5     .word off_01_B563_spr_XY
- D 1 - I - 0x00F572 03:B562: 00        .byte con_sub_00   ; 



off_01_B563_spr_XY:
- D 1 - I - 0x00F573 03:B563: 00        .byte $00, $1F   ; 01
- D 1 - I - 0x00F575 03:B565: 04        .byte $04, $23   ; 02



sub_06_B567_01:
- D 1 - I - 0x00F577 03:B567: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F57A 03:B56A: 34 B5     .word off_01_B534_spr_T
- D 1 - I - 0x00F57C 03:B56C: 6F B5     .word off_01_B56F_spr_XY
- D 1 - I - 0x00F57E 03:B56E: 00        .byte con_sub_00   ; 



off_01_B56F_spr_XY:
- D 1 - I - 0x00F57F 03:B56F: FC        .byte $FC, $19   ; 01
- D 1 - I - 0x00F581 03:B571: FA        .byte $FA, $15   ; 02



sub_06_B573_02:
- D 1 - I - 0x00F583 03:B573: 01        .byte con_sub_01, $01, $43   ; 
- D 1 - I - 0x00F586 03:B576: 42 B5     .word off_01_B542_spr_T
- D 1 - I - 0x00F588 03:B578: 7B B5     .word off_01_B57B_spr_XY
- D 1 - I - 0x00F58A 03:B57A: 00        .byte con_sub_00   ; 



off_01_B57B_spr_XY:
- D 1 - I - 0x00F58B 03:B57B: F8        .byte $F8, $16   ; 01



sub_06_B57D_03:
- D 1 - I - 0x00F58D 03:B57D: 01        .byte con_sub_01, $01, $03   ; 
- D 1 - I - 0x00F590 03:B580: 4D B5     .word off_01_B54D_spr_T
- D 1 - I - 0x00F592 03:B582: 85 B5     .word off_01_B585_spr_XY
- D 1 - I - 0x00F594 03:B584: 00        .byte con_sub_00   ; 



off_01_B585_spr_XY:
- D 1 - I - 0x00F595 03:B585: F9        .byte $F9, $1A   ; 01



sub_06_B587_04:
- D 1 - I - 0x00F597 03:B587: 01        .byte con_sub_01, $01, $02   ; 
- D 1 - I - 0x00F59A 03:B58A: 58 B5     .word off_01_B558_spr_T
- D 1 - I - 0x00F59C 03:B58C: 8F B5     .word off_01_B58F_spr_XY
- D 1 - I - 0x00F59E 03:B58E: 00        .byte con_sub_00   ; 



off_01_B58F_spr_XY:
- D 1 - I - 0x00F59F 03:B58F: FF        .byte $FF, $1E   ; 01



sub_06_B591_00:
- D 1 - I - 0x00F5A1 03:B591: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F5A4 03:B594: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F5A6 03:B596: 9B B5     .word off_01_B59B_spr_XY
- D 1 - I - 0x00F5A8 03:B598: 00        .byte con_sub_00   ; 



off_01_B599_spr_T:
- D 1 - I - 0x00F5A9 03:B599: 8F        .byte $8F   ; 01
- D 1 - I - 0x00F5AA 03:B59A: 8F        .byte $8F   ; 02



off_01_B59B_spr_XY:
- D 1 - I - 0x00F5AB 03:B59B: 00        .byte $00, $20   ; 01
- D 1 - I - 0x00F5AD 03:B59D: 04        .byte $04, $24   ; 02



sub_06_B59F_00:
- - - - - - 0x00F5AF 03:B59F: 01        .byte con_sub_01, $02, $03   ; 
- - - - - - 0x00F5B2 03:B5A2: 99 B5     .word off_01_B599_spr_T
- - - - - - 0x00F5B4 03:B5A4: A7 B5     .word off_01_B5A7_spr_XY
- - - - - - 0x00F5B6 03:B5A6: 00        .byte con_sub_00   ; 



off_01_B5A7_spr_XY:
- - - - - - 0x00F5B7 03:B5A7: 01        .byte $01, $1F   ; 01
- - - - - - 0x00F5B9 03:B5A9: 06        .byte $06, $24   ; 02



sub_06_B5AB_00:
- D 1 - I - 0x00F5BB 03:B5AB: 02        .byte con_sub_02, $02   ; 
- D 1 - I - 0x00F5BD 03:B5AD: B6 B5     .word off_02_B5B6_00_spr_A
- D 1 - I - 0x00F5BF 03:B5AF: B4 B5     .word off_02_B5B4_01_spr_T
- D 1 - I - 0x00F5C1 03:B5B1: B8 B5     .word off_02_B5B8_02_spr_XY
- D 1 - I - 0x00F5C3 03:B5B3: 00        .byte con_sub_00   ; 



off_02_B5B4_01_spr_T:
off_01_B5B4_spr_T:
- D 1 - I - 0x00F5C4 03:B5B4: 8D        .byte $8D   ; 01
- D 1 - I - 0x00F5C5 03:B5B5: 8D        .byte $8D   ; 02



off_02_B5B6_00_spr_A:
- D 1 - I - 0x00F5C6 03:B5B6: 43        .byte $43   ; 01
- D 1 - I - 0x00F5C7 03:B5B7: 03        .byte $03   ; 02



off_02_B5B8_02_spr_XY:
- D 1 - I - 0x00F5C8 03:B5B8: F2        .byte $F2, $0B   ; 01
- D 1 - I - 0x00F5CA 03:B5BA: F9        .byte $F9, $0B   ; 02



sub_06_B5BC_00:
- - - - - - 0x00F5CC 03:B5BC: 01        .byte con_sub_01, $02, $43   ; 
- - - - - - 0x00F5CF 03:B5BF: 99 B5     .word off_01_B599_spr_T
- - - - - - 0x00F5D1 03:B5C1: C4 B5     .word off_01_B5C4_spr_XY
- - - - - - 0x00F5D3 03:B5C3: 00        .byte con_sub_00   ; 



off_01_B5C4_spr_XY:
- D 1 - I - 0x00F5D4 03:B5C4: FA        .byte $FA, $18   ; 01
- D 1 - I - 0x00F5D6 03:B5C6: F6        .byte $F6, $1C   ; 02



sub_06_B5C8_00:
- D 1 - I - 0x00F5D8 03:B5C8: 01        .byte con_sub_01, $02, $43   ; 
- D 1 - I - 0x00F5DB 03:B5CB: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F5DD 03:B5CD: C4 B5     .word off_01_B5C4_spr_XY
- D 1 - I - 0x00F5DF 03:B5CF: 00        .byte con_sub_00   ; 



sub_06_B5D0_00:
- D 1 - I - 0x00F5E0 03:B5D0: 02        .byte con_sub_02, $02   ; 
- D 1 - I - 0x00F5E2 03:B5D2: B6 B5     .word off_02_B5B6_00_spr_A
- D 1 - I - 0x00F5E4 03:B5D4: B4 B5     .word off_02_B5B4_01_spr_T
- D 1 - I - 0x00F5E6 03:B5D6: D9 B5     .word off_02_B5D9_02_spr_XY
- D 1 - I - 0x00F5E8 03:B5D8: 00        .byte con_sub_00   ; 



off_02_B5D9_02_spr_XY:
- D 1 - I - 0x00F5E9 03:B5D9: 10        .byte $10, $12   ; 01
- D 1 - I - 0x00F5EB 03:B5DB: 15        .byte $15, $12   ; 02



sub_06_B5DD_00:
- D 1 - I - 0x00F5ED 03:B5DD: 02        .byte con_sub_02, $02   ; 
- D 1 - I - 0x00F5EF 03:B5DF: B6 B5     .word off_02_B5B6_00_spr_A
- D 1 - I - 0x00F5F1 03:B5E1: B4 B5     .word off_02_B5B4_01_spr_T
- D 1 - I - 0x00F5F3 03:B5E3: E6 B5     .word off_02_B5E6_02_spr_XY
- D 1 - I - 0x00F5F5 03:B5E5: 00        .byte con_sub_00   ; 



off_02_B5E6_02_spr_XY:
- D 1 - I - 0x00F5F6 03:B5E6: F1        .byte $F1, $12   ; 01
- D 1 - I - 0x00F5F8 03:B5E8: F6        .byte $F6, $12   ; 02



sub_06_B5EA_00:
- - - - - - 0x00F5FA 03:B5EA: 01        .byte con_sub_01, $02, $03   ; 
- - - - - - 0x00F5FD 03:B5ED: 99 B5     .word off_01_B599_spr_T
- - - - - - 0x00F5FF 03:B5EF: F2 B5     .word off_01_B5F2_spr_XY
- - - - - - 0x00F601 03:B5F1: 00        .byte con_sub_00   ; 



off_01_B5F2_spr_XY:
- - - - - - 0x00F602 03:B5F2: 05        .byte $05, $21   ; 01
- - - - - - 0x00F604 03:B5F4: 09        .byte $09, $25   ; 02



sub_06_B5F6_00:
- - - - - - 0x00F606 03:B5F6: 01        .byte con_sub_01, $02, $03   ; 
- - - - - - 0x00F609 03:B5F9: FE B5     .word off_01_B5FE_spr_T
- - - - - - 0x00F60B 03:B5FB: 00 B6     .word off_01_B600_spr_XY
- - - - - - 0x00F60D 03:B5FD: 00        .byte con_sub_00   ; 



off_01_B5FE_spr_T:
- D 1 - I - 0x00F60E 03:B5FE: 8E        .byte $8E   ; 01
- D 1 - I - 0x00F60F 03:B5FF: 8E        .byte $8E   ; 02



off_01_B600_spr_XY:
- - - - - - 0x00F610 03:B600: FD        .byte $FD, $1D   ; 01
- - - - - - 0x00F612 03:B602: FD        .byte $FD, $23   ; 02



sub_06_B604_00:
- - - - - - 0x00F614 03:B604: 01        .byte con_sub_01, $02, $43   ; 
- - - - - - 0x00F617 03:B607: 99 B5     .word off_01_B599_spr_T
- - - - - - 0x00F619 03:B609: 0C B6     .word off_01_B60C_spr_XY
- - - - - - 0x00F61B 03:B60B: 00        .byte con_sub_00   ; 



off_01_B60C_spr_XY:
- - - - - - 0x00F61C 03:B60C: 0A        .byte $0A, $20   ; 01
- - - - - - 0x00F61E 03:B60E: 06        .byte $06, $24   ; 02



sub_06_B610_01:
- D 1 - I - 0x00F620 03:B610: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F623 03:B613: 34 B5     .word off_01_B534_spr_T
- D 1 - I - 0x00F625 03:B615: 36 B5     .word off_01_B536_spr_XY
- D 1 - I - 0x00F627 03:B617: 00        .byte con_sub_00   ; 



sub_06_B618_01:
- D 1 - I - 0x00F628 03:B618: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F62B 03:B61B: 34 B5     .word off_01_B534_spr_T
- D 1 - I - 0x00F62D 03:B61D: 20 B6     .word off_01_B620_spr_XY
- D 1 - I - 0x00F62F 03:B61F: 00        .byte con_sub_00   ; 



off_01_B620_spr_XY:
- D 1 - I - 0x00F630 03:B620: FD        .byte $FD, $16   ; 01
- D 1 - I - 0x00F632 03:B622: FB        .byte $FB, $10   ; 02



sub_06_B624_01:
- D 1 - I - 0x00F634 03:B624: 02        .byte con_sub_02, $02   ; 
- D 1 - I - 0x00F636 03:B626: 2D B6     .word off_02_B62D_00_spr_A
- D 1 - I - 0x00F638 03:B628: 34 B5     .word off_02_B534_01_spr_T
- D 1 - I - 0x00F63A 03:B62A: 2F B6     .word off_02_B62F_02_spr_XY
- D 1 - I - 0x00F63C 03:B62C: 00        .byte con_sub_00   ; 



off_02_B62D_00_spr_A:
- D 1 - I - 0x00F63D 03:B62D: C3        .byte $C3   ; 01
- D 1 - I - 0x00F63E 03:B62E: 03        .byte $03   ; 02



off_02_B62F_02_spr_XY:
- D 1 - I - 0x00F63F 03:B62F: 03        .byte $03, $07   ; 01
- D 1 - I - 0x00F641 03:B631: 01        .byte $01, $01   ; 02



sub_06_B633_01:
- D 1 - I - 0x00F643 03:B633: 01        .byte con_sub_01, $03, $03   ; 
- D 1 - I - 0x00F646 03:B636: 74 BD     .word off_01_BD74_spr_T
- D 1 - I - 0x00F648 03:B638: 3B B6     .word off_01_B63B_spr_XY
- D 1 - I - 0x00F64A 03:B63A: 00        .byte con_sub_00   ; 



off_01_B63B_spr_XY:
- D 1 - I - 0x00F64B 03:B63B: 14        .byte $14, $1E   ; 01
- D 1 - I - 0x00F64D 03:B63D: 14        .byte $14, $26   ; 02
- D 1 - I - 0x00F64F 03:B63F: 12        .byte $12, $17   ; 03



sub_06_B641_00:
- D 1 - I - 0x00F651 03:B641: 01        .byte con_sub_01, $01, $03   ; 
- D 1 - I - 0x00F654 03:B644: B4 B5     .word off_01_B5B4_spr_T
- D 1 - I - 0x00F656 03:B646: 49 B6     .word off_01_B649_spr_XY
- D 1 - I - 0x00F658 03:B648: 00        .byte con_sub_00   ; 



off_01_B649_spr_XY:
- D 1 - I - 0x00F659 03:B649: 07        .byte $07, $18   ; 01


; bzk garbage
- - - - - - 0x00F65B 03:B64B: 00        .byte $00, $16   ; 



sub_06_B64D_01:
- D 1 - I - 0x00F65D 03:B64D: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F660 03:B650: 34 B5     .word off_01_B534_spr_T
- D 1 - I - 0x00F662 03:B652: 55 B6     .word off_01_B655_spr_XY
- D 1 - I - 0x00F664 03:B654: 00        .byte con_sub_00   ; 



off_01_B655_spr_XY:
- D 1 - I - 0x00F665 03:B655: FE        .byte $FE, $16   ; 01
- D 1 - I - 0x00F667 03:B657: FC        .byte $FC, $0E   ; 02



sub_06_B659_01:
- D 1 - I - 0x00F669 03:B659: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F66C 03:B65C: 34 B5     .word off_01_B534_spr_T
- D 1 - I - 0x00F66E 03:B65E: 61 B6     .word off_01_B661_spr_XY
- D 1 - I - 0x00F670 03:B660: 00        .byte con_sub_00   ; 



off_01_B661_spr_XY:
- D 1 - I - 0x00F671 03:B661: FB        .byte $FB, $0F   ; 01
- D 1 - I - 0x00F673 03:B663: F9        .byte $F9, $09   ; 02



sub_06_B665_01:
- - - - - - 0x00F675 03:B665: 01        .byte con_sub_01, $02, $03   ; 
- - - - - - 0x00F678 03:B668: 6D B6     .word off_01_B66D_spr_T
- - - - - - 0x00F67A 03:B66A: 6F B6     .word off_01_B66F_spr_XY
- - - - - - 0x00F67C 03:B66C: 00        .byte con_sub_00   ; 



off_01_B66D_spr_T:
- D 1 - I - 0x00F67D 03:B66D: 8F        .byte $8F   ; 01
- D 1 - I - 0x00F67E 03:B66E: 8D        .byte $8D   ; 02



off_01_B66F_spr_XY:
- - - - - - 0x00F67F 03:B66F: 12        .byte $12, $16   ; 01
- - - - - - 0x00F681 03:B671: 11        .byte $11, $0E   ; 02



sub_06_B673_01:
- D 1 - I - 0x00F683 03:B673: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F686 03:B676: 34 B5     .word off_01_B534_spr_T
- D 1 - I - 0x00F688 03:B678: 7B B6     .word off_01_B67B_spr_XY
- D 1 - I - 0x00F68A 03:B67A: 00        .byte con_sub_00   ; 



off_01_B67B_spr_XY:
- D 1 - I - 0x00F68B 03:B67B: FF        .byte $FF, $0E   ; 01
- D 1 - I - 0x00F68D 03:B67D: 01        .byte $01, $09   ; 02



sub_06_B67F_01:
- D 1 - I - 0x00F68F 03:B67F: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F692 03:B682: 34 B5     .word off_01_B534_spr_T
- D 1 - I - 0x00F694 03:B684: 7B B6     .word off_01_B67B_spr_XY
- D 1 - I - 0x00F696 03:B686: 00        .byte con_sub_00   ; 



sub_06_B687_01:
- D 1 - I - 0x00F697 03:B687: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F69A 03:B68A: 6D B6     .word off_01_B66D_spr_T
- D 1 - I - 0x00F69C 03:B68C: 8F B6     .word off_01_B68F_spr_XY
- D 1 - I - 0x00F69E 03:B68E: 00        .byte con_sub_00   ; 



off_01_B68F_spr_XY:
- D 1 - I - 0x00F69F 03:B68F: 08        .byte $08, $16   ; 01
- D 1 - I - 0x00F6A1 03:B691: 09        .byte $09, $0E   ; 02



sub_06_B693_00:
- - - - - - 0x00F6A3 03:B693: 01        .byte con_sub_01, $02, $03   ; 
- - - - - - 0x00F6A6 03:B696: FE B5     .word off_01_B5FE_spr_T
- - - - - - 0x00F6A8 03:B698: 9B B6     .word off_01_B69B_spr_XY
- - - - - - 0x00F6AA 03:B69A: 00        .byte con_sub_00   ; 



off_01_B69B_spr_XY:
- - - - - - 0x00F6AB 03:B69B: FE        .byte $FE, $22   ; 01
- - - - - - 0x00F6AD 03:B69D: FE        .byte $FE, $28   ; 02



sub_06_B69F_00:
- - - - - - 0x00F6AF 03:B69F: 01        .byte con_sub_01, $02, $03   ; 
- - - - - - 0x00F6B2 03:B6A2: FE B5     .word off_01_B5FE_spr_T
- - - - - - 0x00F6B4 03:B6A4: A7 B6     .word off_01_B6A7_spr_XY
- - - - - - 0x00F6B6 03:B6A6: 00        .byte con_sub_00   ; 



off_01_B6A7_spr_XY:
- - - - - - 0x00F6B7 03:B6A7: 04        .byte $04, $20   ; 01
- - - - - - 0x00F6B9 03:B6A9: 04        .byte $04, $26   ; 02



sub_06_B6AB_01:
- - - - - - 0x00F6BB 03:B6AB: 01        .byte con_sub_01, $02, $03   ; 
- - - - - - 0x00F6BE 03:B6AE: 6D B6     .word off_01_B66D_spr_T
- - - - - - 0x00F6C0 03:B6B0: B3 B6     .word off_01_B6B3_spr_XY
- - - - - - 0x00F6C2 03:B6B2: 00        .byte con_sub_00   ; 



off_01_B6B3_spr_XY:
- - - - - - 0x00F6C3 03:B6B3: 02        .byte $02, $16   ; 01
- - - - - - 0x00F6C5 03:B6B5: 03        .byte $03, $0E   ; 02



sub_06_B6B7_02:
- D 1 - I - 0x00F6C7 03:B6B7: 01        .byte con_sub_01, $01, $43   ; 
- D 1 - I - 0x00F6CA 03:B6BA: 42 B5     .word off_01_B542_spr_T
- D 1 - I - 0x00F6CC 03:B6BC: BF B6     .word off_01_B6BF_spr_XY
- D 1 - I - 0x00F6CE 03:B6BE: 00        .byte con_sub_00   ; 



off_01_B6BF_spr_XY:
- D 1 - I - 0x00F6CF 03:B6BF: F8        .byte $F8, $17   ; 01



sub_06_B6C1_02:
- D 1 - I - 0x00F6D1 03:B6C1: 01        .byte con_sub_01, $01, $43   ; 
- D 1 - I - 0x00F6D4 03:B6C4: 42 B5     .word off_01_B542_spr_T
- D 1 - I - 0x00F6D6 03:B6C6: C9 B6     .word off_01_B6C9_spr_XY
- D 1 - I - 0x00F6D8 03:B6C8: 00        .byte con_sub_00   ; 



off_01_B6C9_spr_XY:
- D 1 - I - 0x00F6D9 03:B6C9: F9        .byte $F9, $18   ; 01



sub_06_B6CB_02:
- D 1 - I - 0x00F6DB 03:B6CB: 01        .byte con_sub_01, $01, $43   ; 
- D 1 - I - 0x00F6DE 03:B6CE: D3 B6     .word off_01_B6D3_spr_T
- D 1 - I - 0x00F6E0 03:B6D0: D4 B6     .word off_01_B6D4_spr_XY
- D 1 - I - 0x00F6E2 03:B6D2: 00        .byte con_sub_00   ; 



off_01_B6D3_spr_T:
- D 1 - I - 0x00F6E3 03:B6D3: 9D        .byte $9D   ; 01



off_01_B6D4_spr_XY:
- D 1 - I - 0x00F6E4 03:B6D4: 03        .byte $03, $0A   ; 01



sub_06_B6D6_02:
- D 1 - I - 0x00F6E6 03:B6D6: 01        .byte con_sub_01, $01, $03   ; 
- D 1 - I - 0x00F6E9 03:B6D9: 42 B5     .word off_01_B542_spr_T
- D 1 - I - 0x00F6EB 03:B6DB: DE B6     .word off_01_B6DE_spr_XY
- D 1 - I - 0x00F6ED 03:B6DD: 00        .byte con_sub_00   ; 



off_01_B6DE_spr_XY:
- D 1 - I - 0x00F6EE 03:B6DE: 02        .byte $02, $10   ; 01



sub_06_B6E0_02:
- D 1 - I - 0x00F6F0 03:B6E0: 01        .byte con_sub_01, $01, $03   ; 
- D 1 - I - 0x00F6F3 03:B6E3: 42 B5     .word off_01_B542_spr_T
- D 1 - I - 0x00F6F5 03:B6E5: DE B6     .word off_01_B6DE_spr_XY
- D 1 - I - 0x00F6F7 03:B6E7: 00        .byte con_sub_00   ; 



sub_06_B6E8_02:
- D 1 - I - 0x00F6F8 03:B6E8: 01        .byte con_sub_01, $01, $43   ; 
- D 1 - I - 0x00F6FB 03:B6EB: 42 B5     .word off_01_B542_spr_T
- D 1 - I - 0x00F6FD 03:B6ED: F0 B6     .word off_01_B6F0_spr_XY
- D 1 - I - 0x00F6FF 03:B6EF: 00        .byte con_sub_00   ; 



off_01_B6F0_spr_XY:
- D 1 - I - 0x00F700 03:B6F0: FC        .byte $FC, $18   ; 01



sub_06_B6F2_02:
- D 1 - I - 0x00F702 03:B6F2: 01        .byte con_sub_01, $01, $03   ; 
- D 1 - I - 0x00F705 03:B6F5: FA B6     .word off_01_B6FA_spr_T
- D 1 - I - 0x00F707 03:B6F7: FB B6     .word off_01_B6FB_spr_XY
- D 1 - I - 0x00F709 03:B6F9: 00        .byte con_sub_00   ; 



off_01_B6FA_spr_T:
- D 1 - I - 0x00F70A 03:B6FA: 9E        .byte $9E   ; 01



off_01_B6FB_spr_XY:
- D 1 - I - 0x00F70B 03:B6FB: FC        .byte $FC, $0F   ; 01



sub_06_B6FD_02:
- - - - - - 0x00F70D 03:B6FD: 01        .byte con_sub_01, $01, $03   ; 
- - - - - - 0x00F710 03:B700: 42 B5     .word off_01_B542_spr_T
- - - - - - 0x00F712 03:B702: 05 B7     .word off_01_B705_spr_XY
- - - - - - 0x00F714 03:B704: 00        .byte con_sub_00   ; 



off_01_B705_spr_XY:
- - - - - - 0x00F715 03:B705: 13        .byte $13, $18   ; 01



sub_06_B707_02:
- - - - - - 0x00F717 03:B707: 01        .byte con_sub_01, $01, $03   ; 
- - - - - - 0x00F71A 03:B70A: 42 B5     .word off_01_B542_spr_T
- - - - - - 0x00F71C 03:B70C: 0F B7     .word off_01_B70F_spr_XY
- - - - - - 0x00F71E 03:B70E: 00        .byte con_sub_00   ; 



off_01_B70F_spr_XY:
- - - - - - 0x00F71F 03:B70F: 02        .byte $02, $18   ; 01



sub_06_B711_02:
- - - - - - 0x00F721 03:B711: 01        .byte con_sub_01, $01, $03   ; 
- - - - - - 0x00F724 03:B714: 42 B5     .word off_01_B542_spr_T
- - - - - - 0x00F726 03:B716: 19 B7     .word off_01_B719_spr_XY
- - - - - - 0x00F728 03:B718: 00        .byte con_sub_00   ; 



off_01_B719_spr_XY:
- - - - - - 0x00F729 03:B719: 08        .byte $08, $17   ; 01



sub_06_B71B_03:
- D 1 - I - 0x00F72B 03:B71B: 01        .byte con_sub_01, $01, $03   ; 
- D 1 - I - 0x00F72E 03:B71E: 4D B5     .word off_01_B54D_spr_T
- D 1 - I - 0x00F730 03:B720: 23 B7     .word off_01_B723_spr_XY
- D 1 - I - 0x00F732 03:B722: 00        .byte con_sub_00   ; 



off_01_B723_spr_XY:
- D 1 - I - 0x00F733 03:B723: F9        .byte $F9, $1B   ; 01



sub_06_B725_03:
- D 1 - I - 0x00F735 03:B725: 01        .byte con_sub_01, $01, $03   ; 
- D 1 - I - 0x00F738 03:B728: 4D B5     .word off_01_B54D_spr_T
- D 1 - I - 0x00F73A 03:B72A: 2D B7     .word off_01_B72D_spr_XY
- D 1 - I - 0x00F73C 03:B72C: 00        .byte con_sub_00   ; 



off_01_B72D_spr_XY:
- D 1 - I - 0x00F73D 03:B72D: F9        .byte $F9, $1B   ; 01



sub_06_B72F_03:
- D 1 - I - 0x00F73F 03:B72F: 01        .byte con_sub_01, $01, $C3   ; 
- D 1 - I - 0x00F742 03:B732: 4D B5     .word off_01_B54D_spr_T
- D 1 - I - 0x00F744 03:B734: 37 B7     .word off_01_B737_spr_XY
- D 1 - I - 0x00F746 03:B736: 00        .byte con_sub_00   ; 



off_01_B737_spr_XY:
- D 1 - I - 0x00F747 03:B737: 00        .byte $00, $06   ; 01



sub_06_B739_03:
- D 1 - I - 0x00F749 03:B739: 01        .byte con_sub_01, $01, $03   ; 
- D 1 - I - 0x00F74C 03:B73C: 4D B5     .word off_01_B54D_spr_T
- D 1 - I - 0x00F74E 03:B73E: 41 B7     .word off_01_B741_spr_XY
- D 1 - I - 0x00F750 03:B740: 00        .byte con_sub_00   ; 



off_01_B741_spr_XY:
- D 1 - I - 0x00F751 03:B741: FD        .byte $FD, $13   ; 01



sub_06_B743_03:
- - - - - - 0x00F753 03:B743: 01        .byte con_sub_01, $01, $03   ; 
- - - - - - 0x00F756 03:B746: 4D B5     .word off_01_B54D_spr_T
- - - - - - 0x00F758 03:B748: 41 B7     .word off_01_B741_spr_XY
- - - - - - 0x00F75A 03:B74A: 00        .byte con_sub_00   ; 



sub_06_B74B_03:
- - - - - - 0x00F75B 03:B74B: 01        .byte con_sub_01, $01, $03   ; 
- - - - - - 0x00F75E 03:B74E: 4D B5     .word off_01_B54D_spr_T
- - - - - - 0x00F760 03:B750: 53 B7     .word off_01_B753_spr_XY
- - - - - - 0x00F762 03:B752: 00        .byte con_sub_00   ; 



off_01_B753_spr_XY:
- - - - - - 0x00F763 03:B753: FB        .byte $FB, $1A   ; 01



sub_06_B755_03:
- - - - - - 0x00F765 03:B755: 01        .byte con_sub_01, $01, $C3   ; 
- - - - - - 0x00F768 03:B758: 4D B5     .word off_01_B54D_spr_T
- - - - - - 0x00F76A 03:B75A: 5D B7     .word off_01_B75D_spr_XY
- - - - - - 0x00F76C 03:B75C: 00        .byte con_sub_00   ; 



off_01_B75D_spr_XY:
- - - - - - 0x00F76D 03:B75D: FD        .byte $FD, $13   ; 01



sub_06_B75F_03:
- - - - - - 0x00F76F 03:B75F: 01        .byte con_sub_01, $01, $43   ; 
- - - - - - 0x00F772 03:B762: 4D B5     .word off_01_B54D_spr_T
- - - - - - 0x00F774 03:B764: 67 B7     .word off_01_B767_spr_XY
- - - - - - 0x00F776 03:B766: 00        .byte con_sub_00   ; 



off_01_B767_spr_XY:
- - - - - - 0x00F777 03:B767: 13        .byte $13, $1B   ; 01



sub_06_B769_03:
- - - - - - 0x00F779 03:B769: 01        .byte con_sub_01, $01, $03   ; 
- - - - - - 0x00F77C 03:B76C: 4D B5     .word off_01_B54D_spr_T
- - - - - - 0x00F77E 03:B76E: 71 B7     .word off_01_B771_spr_XY
- - - - - - 0x00F780 03:B770: 00        .byte con_sub_00   ; 



off_01_B771_spr_XY:
- - - - - - 0x00F781 03:B771: F4        .byte $F4, $1D   ; 01



sub_06_B773_03:
- - - - - - 0x00F783 03:B773: 01        .byte con_sub_01, $01, $03   ; 
- - - - - - 0x00F786 03:B776: 4D B5     .word off_01_B54D_spr_T
- - - - - - 0x00F788 03:B778: 7B B7     .word off_01_B77B_spr_XY
- - - - - - 0x00F78A 03:B77A: 00        .byte con_sub_00   ; 



off_01_B77B_spr_XY:
- - - - - - 0x00F78B 03:B77B: 02        .byte $02, $13   ; 01



sub_06_B77D_04:
- D 1 - I - 0x00F78D 03:B77D: 01        .byte con_sub_01, $01, $02   ; 
- D 1 - I - 0x00F790 03:B780: 58 B5     .word off_01_B558_spr_T
- D 1 - I - 0x00F792 03:B782: 85 B7     .word off_01_B785_spr_XY
- D 1 - I - 0x00F794 03:B784: 00        .byte con_sub_00   ; 



off_01_B785_spr_XY:
- D 1 - I - 0x00F795 03:B785: FF        .byte $FF, $1F   ; 01



sub_06_B787_04:
- - - - - - 0x00F797 03:B787: 01        .byte con_sub_01, $01, $02   ; 
- - - - - - 0x00F79A 03:B78A: 58 B5     .word off_01_B558_spr_T
- - - - - - 0x00F79C 03:B78C: 85 B7     .word off_01_B785_spr_XY
- - - - - - 0x00F79E 03:B78E: 00        .byte con_sub_00   ; 



sub_06_B78F_04:
- D 1 - I - 0x00F79F 03:B78F: 01        .byte con_sub_01, $01, $42   ; 
- D 1 - I - 0x00F7A2 03:B792: 97 B7     .word off_01_B797_spr_T
- D 1 - I - 0x00F7A4 03:B794: 98 B7     .word off_01_B798_spr_XY
- D 1 - I - 0x00F7A6 03:B796: 00        .byte con_sub_00   ; 



off_01_B797_spr_T:
- D 1 - I - 0x00F7A7 03:B797: BD        .byte $BD   ; 01



off_01_B798_spr_XY:
- D 1 - I - 0x00F7A8 03:B798: F9        .byte $F9, $0A   ; 01



sub_06_B79A_04:
- D 1 - I - 0x00F7AA 03:B79A: 01        .byte con_sub_01, $01, $42   ; 
- D 1 - I - 0x00F7AD 03:B79D: 58 B5     .word off_01_B558_spr_T
- D 1 - I - 0x00F7AF 03:B79F: A2 B7     .word off_01_B7A2_spr_XY
- D 1 - I - 0x00F7B1 03:B7A1: 00        .byte con_sub_00   ; 



off_01_B7A2_spr_XY:
- D 1 - I - 0x00F7B2 03:B7A2: FA        .byte $FA, $1A   ; 01


sub_06_B7A4_04:
- D 1 - I - 0x00F7B4 03:B7A4: 01        .byte con_sub_01, $01, $42   ; 
- D 1 - I - 0x00F7B7 03:B7A7: 58 B5     .word off_01_B558_spr_T
- D 1 - I - 0x00F7B9 03:B7A9: A2 B7     .word off_01_B7A2_spr_XY
- D 1 - I - 0x00F7BB 03:B7AB: 00        .byte con_sub_00   ; 



sub_06_B7AC_04:
- D 1 - I - 0x00F7BC 03:B7AC: 01        .byte con_sub_01, $01, $02   ; 
- D 1 - I - 0x00F7BF 03:B7AF: 58 B5     .word off_01_B558_spr_T
- D 1 - I - 0x00F7C1 03:B7B1: B4 B7     .word off_01_B7B4_spr_XY
- D 1 - I - 0x00F7C3 03:B7B3: 00        .byte con_sub_00   ; 



off_01_B7B4_spr_XY:
- D 1 - I - 0x00F7C4 03:B7B4: 04        .byte $04, $20   ; 01



sub_06_B7B6_04:
- D 1 - I - 0x00F7C6 03:B7B6: 01        .byte con_sub_01, $01, $02   ; 
- D 1 - I - 0x00F7C9 03:B7B9: BE B7     .word off_01_B7BE_spr_T
- D 1 - I - 0x00F7CB 03:B7BB: BF B7     .word off_01_B7BF_spr_XY
- D 1 - I - 0x00F7CD 03:B7BD: 00        .byte con_sub_00   ; 



off_01_B7BE_spr_T:
- D 1 - I - 0x00F7CE 03:B7BE: AD        .byte $AD   ; 01



off_01_B7BF_spr_XY:
- D 1 - I - 0x00F7CF 03:B7BF: FD        .byte $FD, $1B   ; 01



sub_06_B7C1_04:
- D 1 - I - 0x00F7D1 03:B7C1: 01        .byte con_sub_01, $01, $42   ; 
- D 1 - I - 0x00F7D4 03:B7C4: 58 B5     .word off_01_B558_spr_T
- D 1 - I - 0x00F7D6 03:B7C6: C9 B7     .word off_01_B7C9_spr_XY
- D 1 - I - 0x00F7D8 03:B7C8: 00        .byte con_sub_00   ; 



off_01_B7C9_spr_XY:
- D 1 - I - 0x00F7D9 03:B7C9: 0C        .byte $0C, $1F   ; 01



sub_06_B7CB_04:
- D 1 - I - 0x00F7DB 03:B7CB: 01        .byte con_sub_01, $01, $02   ; 
- D 1 - I - 0x00F7DE 03:B7CE: BE B7     .word off_01_B7BE_spr_T
- D 1 - I - 0x00F7E0 03:B7D0: D3 B7     .word off_01_B7D3_spr_XY
- D 1 - I - 0x00F7E2 03:B7D2: 00        .byte con_sub_00   ; 



off_01_B7D3_spr_XY:
- D 1 - I - 0x00F7E3 03:B7D3: FE        .byte $FE, $1F   ; 01



sub_06_B7D5_04:
- - - - - - 0x00F7E5 03:B7D5: 01        .byte con_sub_01, $01, $02   ; 
- - - - - - 0x00F7E8 03:B7D8: BE B7     .word off_01_B7BE_spr_T
- - - - - - 0x00F7EA 03:B7DA: DD B7     .word off_01_B7DD_spr_XY
- - - - - - 0x00F7EC 03:B7DC: 00        .byte con_sub_00   ; 



off_01_B7DD_spr_XY:
- - - - - - 0x00F7ED 03:B7DD: 04        .byte $04, $1F   ; 01



sub_06_B7DF_02:
- D 1 - I - 0x00F7EF 03:B7DF: 01        .byte con_sub_01, $01, $83   ; 
- D 1 - I - 0x00F7F2 03:B7E2: 42 B5     .word off_01_B542_spr_T
- D 1 - I - 0x00F7F4 03:B7E4: E7 B7     .word off_01_B7E7_spr_XY
- D 1 - I - 0x00F7F6 03:B7E6: 00        .byte con_sub_00   ; 



off_01_B7E7_spr_XY:
- D 1 - I - 0x00F7F7 03:B7E7: 11        .byte $11, $2D   ; 01



sub_06_B7E9_03:
- D 1 - I - 0x00F7F9 03:B7E9: 01        .byte con_sub_01, $01, $43   ; 
- D 1 - I - 0x00F7FC 03:B7EC: F1 B7     .word off_01_B7F1_spr_T
- D 1 - I - 0x00F7FE 03:B7EE: E7 B7     .word off_01_B7E7_spr_XY
- D 1 - I - 0x00F800 03:B7F0: 00        .byte con_sub_00   ; 



off_01_B7F1_spr_T:
- D 1 - I - 0x00F801 03:B7F1: CD        .byte $CD   ; 01



sub_06_B7F2_04:
- D 1 - I - 0x00F802 03:B7F2: 01        .byte con_sub_01, $01, $82   ; 
- D 1 - I - 0x00F805 03:B7F5: 97 B7     .word off_01_B797_spr_T
- D 1 - I - 0x00F807 03:B7F7: FA B7     .word off_01_B7FA_spr_XY
- D 1 - I - 0x00F809 03:B7F9: 00        .byte con_sub_00   ; 



off_01_B7FA_spr_XY:
- D 1 - I - 0x00F80A 03:B7FA: 14        .byte $14, $2A   ; 01



sub_06_B7FC_00:
- D 1 - I - 0x00F80C 03:B7FC: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F80F 03:B7FF: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F811 03:B801: 04 B8     .word off_01_B804_spr_XY
- D 1 - I - 0x00F813 03:B803: 00        .byte con_sub_00   ; 



off_01_B804_spr_XY:
- D 1 - I - 0x00F814 03:B804: 05        .byte $05, $17   ; 01
- D 1 - I - 0x00F816 03:B806: 09        .byte $09, $1B   ; 02



sub_06_B808_00:
- D 1 - I - 0x00F818 03:B808: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F81B 03:B80B: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F81D 03:B80D: 10 B8     .word off_01_B810_spr_XY
- D 1 - I - 0x00F81F 03:B80F: 00        .byte con_sub_00   ; 



off_01_B810_spr_XY:
- D 1 - I - 0x00F820 03:B810: 06        .byte $06, $16   ; 01
- D 1 - I - 0x00F822 03:B812: 0A        .byte $0A, $1A   ; 02



sub_06_B814_00:
- D 1 - I - 0x00F824 03:B814: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F827 03:B817: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F829 03:B819: 04 B8     .word off_01_B804_spr_XY
- D 1 - I - 0x00F82B 03:B81B: 00        .byte con_sub_00   ; 



sub_06_B81C_00:
- D 1 - I - 0x00F82C 03:B81C: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F82F 03:B81F: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F831 03:B821: 24 B8     .word off_01_B824_spr_XY
- D 1 - I - 0x00F833 03:B823: 00        .byte con_sub_00   ; 



off_01_B824_spr_XY:
- D 1 - I - 0x00F834 03:B824: 07        .byte $07, $1B   ; 01
- D 1 - I - 0x00F836 03:B826: 0B        .byte $0B, $1F   ; 02



sub_06_B828_00:
- D 1 - I - 0x00F838 03:B828: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F83B 03:B82B: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F83D 03:B82D: 30 B8     .word off_01_B830_spr_XY
- D 1 - I - 0x00F83F 03:B82F: 00        .byte con_sub_00   ; 



off_01_B830_spr_XY:
- D 1 - I - 0x00F840 03:B830: 06        .byte $06, $0F   ; 01
- D 1 - I - 0x00F842 03:B832: 0A        .byte $0A, $13   ; 02



sub_06_B834_00:
- D 1 - I - 0x00F844 03:B834: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F847 03:B837: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F849 03:B839: 3C B8     .word off_01_B83C_spr_XY
- D 1 - I - 0x00F84B 03:B83B: 00        .byte con_sub_00   ; 



off_01_B83C_spr_XY:
- D 1 - I - 0x00F84C 03:B83C: 07        .byte $07, $17   ; 01
- D 1 - I - 0x00F84E 03:B83E: 0B        .byte $0B, $1B   ; 02



sub_06_B840_00:
- D 1 - I - 0x00F850 03:B840: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F853 03:B843: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F855 03:B845: 3C B8     .word off_01_B83C_spr_XY
- D 1 - I - 0x00F857 03:B847: 00        .byte con_sub_00   ; 



sub_06_B848_00:
- D 1 - I - 0x00F858 03:B848: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F85B 03:B84B: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F85D 03:B84D: 50 B8     .word off_01_B850_spr_XY
- D 1 - I - 0x00F85F 03:B84F: 00        .byte con_sub_00   ; 



off_01_B850_spr_XY:
- D 1 - I - 0x00F860 03:B850: 03        .byte $03, $15   ; 01
- D 1 - I - 0x00F862 03:B852: 07        .byte $07, $19   ; 02



sub_06_B854_00:
- D 1 - I - 0x00F864 03:B854: 02        .byte con_sub_02, $02   ; 
- D 1 - I - 0x00F866 03:B856: B6 B5     .word off_02_B5B6_00_spr_A
- D 1 - I - 0x00F868 03:B858: B4 B5     .word off_02_B5B4_01_spr_T
- D 1 - I - 0x00F86A 03:B85A: 5D B8     .word off_02_B85D_02_spr_XY
- D 1 - I - 0x00F86C 03:B85C: 00        .byte con_sub_00   ; 



off_02_B85D_02_spr_XY:
- D 1 - I - 0x00F86D 03:B85D: 0C        .byte $0C, $12   ; 01
- D 1 - I - 0x00F86F 03:B85F: 12        .byte $12, $12   ; 02



sub_06_B861_00:
- D 1 - I - 0x00F871 03:B861: 02        .byte con_sub_02, $02   ; 
- D 1 - I - 0x00F873 03:B863: B6 B5     .word off_02_B5B6_00_spr_A
- D 1 - I - 0x00F875 03:B865: B4 B5     .word off_02_B5B4_01_spr_T
- D 1 - I - 0x00F877 03:B867: 6A B8     .word off_02_B86A_02_spr_XY
- D 1 - I - 0x00F879 03:B869: 00        .byte con_sub_00   ; 



off_02_B86A_02_spr_XY:
- D 1 - I - 0x00F87A 03:B86A: EF        .byte $EF, $14   ; 01
- D 1 - I - 0x00F87C 03:B86C: F4        .byte $F4, $14   ; 02



sub_06_B86E_00:
- D 1 - I - 0x00F87E 03:B86E: 01        .byte con_sub_01, $01, $03   ; 
- D 1 - I - 0x00F881 03:B871: B4 B5     .word off_01_B5B4_spr_T
- D 1 - I - 0x00F883 03:B873: 76 B8     .word off_01_B876_spr_XY
- D 1 - I - 0x00F885 03:B875: 00        .byte con_sub_00   ; 



off_01_B876_spr_XY:
- D 1 - I - 0x00F886 03:B876: 08        .byte $08, $18   ; 01



sub_06_B878_00:
- D 1 - I - 0x00F888 03:B878: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F88B 03:B87B: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F88D 03:B87D: 80 B8     .word off_01_B880_spr_XY
- D 1 - I - 0x00F88F 03:B87F: 00        .byte con_sub_00   ; 



off_01_B880_spr_XY:
- D 1 - I - 0x00F890 03:B880: 06        .byte $06, $17   ; 01
- D 1 - I - 0x00F892 03:B882: 0A        .byte $0A, $1B   ; 02



sub_06_B884_00:
- D 1 - I - 0x00F894 03:B884: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F897 03:B887: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F899 03:B889: 8C B8     .word off_01_B88C_spr_XY
- D 1 - I - 0x00F89B 03:B88B: 00        .byte con_sub_00   ; 



off_01_B88C_spr_XY:
- D 1 - I - 0x00F89C 03:B88C: FF        .byte $FF, $16   ; 01
- D 1 - I - 0x00F89E 03:B88E: 03        .byte $03, $1A   ; 02



sub_06_B890_00:
- D 1 - I - 0x00F8A0 03:B890: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F8A3 03:B893: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F8A5 03:B895: 98 B8     .word off_01_B898_spr_XY
- D 1 - I - 0x00F8A7 03:B897: 00        .byte con_sub_00   ; 



off_01_B898_spr_XY:
- D 1 - I - 0x00F8A8 03:B898: 06        .byte $06, $16   ; 01
- D 1 - I - 0x00F8AA 03:B89A: 0A        .byte $0A, $1A   ; 02



sub_06_B89C_00:
- D 1 - I - 0x00F8AC 03:B89C: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F8AF 03:B89F: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F8B1 03:B8A1: A4 B8     .word off_01_B8A4_spr_XY
- D 1 - I - 0x00F8B3 03:B8A3: 00        .byte con_sub_00   ; 



off_01_B8A4_spr_XY:
- D 1 - I - 0x00F8B4 03:B8A4: 06        .byte $06, $17   ; 01
- D 1 - I - 0x00F8B6 03:B8A6: 0A        .byte $0A, $1B   ; 02



sub_06_B8A8_00:
- D 1 - I - 0x00F8B8 03:B8A8: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F8BB 03:B8AB: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F8BD 03:B8AD: B0 B8     .word off_01_B8B0_spr_XY
- D 1 - I - 0x00F8BF 03:B8AF: 00        .byte con_sub_00   ; 



off_01_B8B0_spr_XY:
- D 1 - I - 0x00F8C0 03:B8B0: 06        .byte $06, $16   ; 01
- D 1 - I - 0x00F8C2 03:B8B2: 0A        .byte $0A, $1A   ; 02



sub_06_B8B4_00:
- D 1 - I - 0x00F8C4 03:B8B4: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F8C7 03:B8B7: 99 B5     .word off_01_B599_spr_T
- D 1 - I - 0x00F8C9 03:B8B9: B0 B8     .word off_01_B8B0_spr_XY
- D 1 - I - 0x00F8CB 03:B8BB: 00        .byte con_sub_00   ; 



sub_06_B8BC_00:
- D 1 - I - 0x00F8CC 03:B8BC: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00F8CF 03:B8BF: FE B5     .word off_01_B5FE_spr_T
- D 1 - I - 0x00F8D1 03:B8C1: C4 B8     .word off_01_B8C4_spr_XY
- D 1 - I - 0x00F8D3 03:B8C3: 00        .byte con_sub_00   ; 



off_01_B8C4_spr_XY:
- D 1 - I - 0x00F8D4 03:B8C4: 06        .byte $06, $14   ; 01
- D 1 - I - 0x00F8D6 03:B8C6: 06        .byte $06, $18   ; 02



_off030_B8C8_39:
- D 1 - I - 0x00F8D8 03:B8C8: 02        .byte con_sub_02, $0A   ; 
- D 1 - I - 0x00F8DA 03:B8CA: D1 B8     .word off_02_B8D1_00_spr_A
- D 1 - I - 0x00F8DC 03:B8CC: 9B 92     .word off_02_929B_01_spr_T
- D 1 - I - 0x00F8DE 03:B8CE: CB 92     .word off_02_92CB_02_spr_XY
- D 1 - I - 0x00F8E0 03:B8D0: 00        .byte con_sub_00   ; 



off_02_B8D1_00_spr_A:
- D 1 - I - 0x00F8E1 03:B8D1: 03        .byte $03   ; 01
- D 1 - I - 0x00F8E2 03:B8D2: 03        .byte $03   ; 02
- D 1 - I - 0x00F8E3 03:B8D3: 03        .byte $03   ; 03
- D 1 - I - 0x00F8E4 03:B8D4: 03        .byte $03   ; 04
- D 1 - I - 0x00F8E5 03:B8D5: 43        .byte $43   ; 05
- D 1 - I - 0x00F8E6 03:B8D6: 03        .byte $03   ; 06
- D 1 - I - 0x00F8E7 03:B8D7: 03        .byte $03   ; 07
- D 1 - I - 0x00F8E8 03:B8D8: 03        .byte $03   ; 08
- D 1 - I - 0x00F8E9 03:B8D9: 03        .byte $03   ; 09
- D 1 - I - 0x00F8EA 03:B8DA: 03        .byte $03   ; 0A



_off030_B8DB_3A:
- D 1 - I - 0x00F8EB 03:B8DB: 01        .byte con_sub_01, $0B, $02   ; 
- D 1 - I - 0x00F8EE 03:B8DE: 5F 8F     .word off_01_8F5F_spr_T
- D 1 - I - 0x00F8F0 03:B8E0: 7A 8F     .word off_01_8F7A_spr_XY
- D 1 - I - 0x00F8F2 03:B8E2: 00        .byte con_sub_00   ; 



_off030_B8E3_3B:
- D 1 - I - 0x00F8F3 03:B8E3: 01        .byte con_sub_01, $0E, $02   ; 
- D 1 - I - 0x00F8F6 03:B8E6: EB B8     .word off_01_B8EB_spr_T
- D 1 - I - 0x00F8F8 03:B8E8: F9 B8     .word off_01_B8F9_spr_XY
- D 1 - I - 0x00F8FA 03:B8EA: 00        .byte con_sub_00   ; 



off_01_B8EB_spr_T:
- D 1 - I - 0x00F8FB 03:B8EB: 25        .byte $25   ; 01
- D 1 - I - 0x00F8FC 03:B8EC: 01        .byte $01   ; 02
- D 1 - I - 0x00F8FD 03:B8ED: AD        .byte $AD   ; 03
- D 1 - I - 0x00F8FE 03:B8EE: AE        .byte $AE   ; 04
- D 1 - I - 0x00F8FF 03:B8EF: AF        .byte $AF   ; 05
- D 1 - I - 0x00F900 03:B8F0: AA        .byte $AA   ; 06
- D 1 - I - 0x00F901 03:B8F1: AB        .byte $AB   ; 07
- D 1 - I - 0x00F902 03:B8F2: AC        .byte $AC   ; 08
- D 1 - I - 0x00F903 03:B8F3: B0        .byte $B0   ; 09
- D 1 - I - 0x00F904 03:B8F4: B1        .byte $B1   ; 0A
- D 1 - I - 0x00F905 03:B8F5: B2        .byte $B2   ; 0B
- D 1 - I - 0x00F906 03:B8F6: B3        .byte $B3   ; 0C
- D 1 - I - 0x00F907 03:B8F7: B5        .byte $B5   ; 0D
- D 1 - I - 0x00F908 03:B8F8: B4        .byte $B4   ; 0E



off_01_B8F9_spr_XY:
off_02_B8F9_02_spr_XY:
- D 1 - I - 0x00F909 03:B8F9: 0A        .byte $0A, $21   ; 01
- D 1 - I - 0x00F90B 03:B8FB: 12        .byte $12, $21   ; 02
- D 1 - I - 0x00F90D 03:B8FD: 05        .byte $05, $19   ; 03
- D 1 - I - 0x00F90F 03:B8FF: 0D        .byte $0D, $19   ; 04
- D 1 - I - 0x00F911 03:B901: 15        .byte $15, $19   ; 05
- D 1 - I - 0x00F913 03:B903: 05        .byte $05, $11   ; 06
- D 1 - I - 0x00F915 03:B905: 0D        .byte $0D, $11   ; 07
- D 1 - I - 0x00F917 03:B907: 15        .byte $15, $11   ; 08
- D 1 - I - 0x00F919 03:B909: FD        .byte $FD, $09   ; 09
- D 1 - I - 0x00F91B 03:B90B: 05        .byte $05, $09   ; 0A
- D 1 - I - 0x00F91D 03:B90D: 0D        .byte $0D, $09   ; 0B
- D 1 - I - 0x00F91F 03:B90F: 15        .byte $15, $09   ; 0C
- D 1 - I - 0x00F921 03:B911: FD        .byte $FD, $01   ; 0D
- D 1 - I - 0x00F923 03:B913: 11        .byte $11, $01   ; 0E



_off030_B915_3C:
- D 1 - I - 0x00F925 03:B915: 02        .byte con_sub_02, $0E   ; 
- D 1 - I - 0x00F927 03:B917: 2C B9     .word off_02_B92C_00_spr_A
- D 1 - I - 0x00F929 03:B919: 1E B9     .word off_02_B91E_01_spr_T
- D 1 - I - 0x00F92B 03:B91B: F9 B8     .word off_02_B8F9_02_spr_XY
- D 1 - I - 0x00F92D 03:B91D: 00        .byte con_sub_00   ; 



off_02_B91E_01_spr_T:
- D 1 - I - 0x00F92E 03:B91E: 25        .byte $25   ; 01
- D 1 - I - 0x00F92F 03:B91F: 01        .byte $01   ; 02
- D 1 - I - 0x00F930 03:B920: AD        .byte $AD   ; 03
- D 1 - I - 0x00F931 03:B921: AE        .byte $AE   ; 04
- D 1 - I - 0x00F932 03:B922: AF        .byte $AF   ; 05
- D 1 - I - 0x00F933 03:B923: AA        .byte $AA   ; 06
- D 1 - I - 0x00F934 03:B924: AB        .byte $AB   ; 07
- D 1 - I - 0x00F935 03:B925: AC        .byte $AC   ; 08
- D 1 - I - 0x00F936 03:B926: B0        .byte $B0   ; 09
- D 1 - I - 0x00F937 03:B927: B1        .byte $B1   ; 0A
- D 1 - I - 0x00F938 03:B928: B2        .byte $B2   ; 0B
- D 1 - I - 0x00F939 03:B929: B3        .byte $B3   ; 0C
- D 1 - I - 0x00F93A 03:B92A: B5        .byte $B5   ; 0D
- D 1 - I - 0x00F93B 03:B92B: B4        .byte $B4   ; 0E



off_02_B92C_00_spr_A:
- D 1 - I - 0x00F93C 03:B92C: 02        .byte $02   ; 01
- D 1 - I - 0x00F93D 03:B92D: 02        .byte $02   ; 02
- D 1 - I - 0x00F93E 03:B92E: 02        .byte $02   ; 03
- D 1 - I - 0x00F93F 03:B92F: 03        .byte $03   ; 04
- D 1 - I - 0x00F940 03:B930: 03        .byte $03   ; 05
- D 1 - I - 0x00F941 03:B931: 02        .byte $02   ; 06
- D 1 - I - 0x00F942 03:B932: 02        .byte $02   ; 07
- D 1 - I - 0x00F943 03:B933: 03        .byte $03   ; 08
off_02_B934_00_spr_A:
- D 1 - I - 0x00F944 03:B934: 02        .byte $02   ; 01 (09)
- D 1 - I - 0x00F945 03:B935: 02        .byte $02   ; 02 (0A)
- D 1 - I - 0x00F946 03:B936: 02        .byte $02   ; 03 (0B)
- D 1 - I - 0x00F947 03:B937: 02        .byte $02   ; 04 (0C)
- D 1 - I - 0x00F948 03:B938: 02        .byte $02   ; 05 (0D)
- D 1 - I - 0x00F949 03:B939: 02        .byte $02   ; 06 (0E)
- D 1 - I - 0x00F94A 03:B93A: 02        .byte $02   ; 07
- D 1 - I - 0x00F94B 03:B93B: 02        .byte $02   ; 08
- D 1 - I - 0x00F94C 03:B93C: 02        .byte $02   ; 09
- D 1 - I - 0x00F94D 03:B93D: 02        .byte $02   ; 0A
- D 1 - I - 0x00F94E 03:B93E: 02        .byte $02   ; 0B
- D 1 - I - 0x00F94F 03:B93F: 02        .byte $02   ; 0C
- D 1 - I - 0x00F950 03:B940: 02        .byte $02   ; 0D
- D 1 - I - 0x00F951 03:B941: 03        .byte $03   ; 0E



_off030_B942_3D:
- D 1 - I - 0x00F952 03:B942: 02        .byte con_sub_02, $0E   ; 
- D 1 - I - 0x00F954 03:B944: 2C B9     .word off_02_B92C_00_spr_A
- D 1 - I - 0x00F956 03:B946: 4B B9     .word off_02_B94B_01_spr_T
- D 1 - I - 0x00F958 03:B948: F9 B8     .word off_02_B8F9_02_spr_XY
- D 1 - I - 0x00F95A 03:B94A: 00        .byte con_sub_00   ; 



off_02_B94B_01_spr_T:
- D 1 - I - 0x00F95B 03:B94B: 25        .byte $25   ; 01
- D 1 - I - 0x00F95C 03:B94C: 01        .byte $01   ; 02
- D 1 - I - 0x00F95D 03:B94D: AD        .byte $AD   ; 03
- D 1 - I - 0x00F95E 03:B94E: D7        .byte $D7   ; 04
- D 1 - I - 0x00F95F 03:B94F: D8        .byte $D8   ; 05
- D 1 - I - 0x00F960 03:B950: AA        .byte $AA   ; 06
- D 1 - I - 0x00F961 03:B951: AB        .byte $AB   ; 07
- D 1 - I - 0x00F962 03:B952: E8        .byte $E8   ; 08
- D 1 - I - 0x00F963 03:B953: B0        .byte $B0   ; 09
- D 1 - I - 0x00F964 03:B954: B1        .byte $B1   ; 0A
- D 1 - I - 0x00F965 03:B955: B2        .byte $B2   ; 0B
- D 1 - I - 0x00F966 03:B956: B3        .byte $B3   ; 0C
- D 1 - I - 0x00F967 03:B957: B5        .byte $B5   ; 0D
- D 1 - I - 0x00F968 03:B958: B4        .byte $B4   ; 0E



_off030_B959_3E:
- D 1 - I - 0x00F969 03:B959: 02        .byte con_sub_02, $0E   ; 
- D 1 - I - 0x00F96B 03:B95B: 34 B9     .word off_02_B934_00_spr_A
- D 1 - I - 0x00F96D 03:B95D: 62 B9     .word off_02_B962_01_spr_T
- D 1 - I - 0x00F96F 03:B95F: 70 B9     .word off_02_B970_02_spr_XY
- D 1 - I - 0x00F971 03:B961: 00        .byte con_sub_00   ; 



off_02_B962_01_spr_T:
- D 1 - I - 0x00F972 03:B962: 25        .byte $25   ; 01
- D 1 - I - 0x00F973 03:B963: 01        .byte $01   ; 02
- D 1 - I - 0x00F974 03:B964: 34        .byte $34   ; 03
- D 1 - I - 0x00F975 03:B965: 11        .byte $11   ; 04
- D 1 - I - 0x00F976 03:B966: D1        .byte $D1   ; 05
- D 1 - I - 0x00F977 03:B967: F7        .byte $F7   ; 06
- D 1 - I - 0x00F978 03:B968: F8        .byte $F8   ; 07
- D 1 - I - 0x00F979 03:B969: E1        .byte $E1   ; 08
- D 1 - I - 0x00F97A 03:B96A: E2        .byte $E2   ; 09
- D 1 - I - 0x00F97B 03:B96B: E3        .byte $E3   ; 0A
- D 1 - I - 0x00F97C 03:B96C: E4        .byte $E4   ; 0B
- D 1 - I - 0x00F97D 03:B96D: D0        .byte $D0   ; 0C
- D 1 - I - 0x00F97E 03:B96E: E0        .byte $E0   ; 0D
- D 1 - I - 0x00F97F 03:B96F: A9        .byte $A9   ; 0E



off_02_B970_02_spr_XY:
- D 1 - I - 0x00F980 03:B970: F6        .byte $F6, $20   ; 01
- D 1 - I - 0x00F982 03:B972: FE        .byte $FE, $20   ; 02
- D 1 - I - 0x00F984 03:B974: F7        .byte $F7, $18   ; 03
- D 1 - I - 0x00F986 03:B976: FF        .byte $FF, $18   ; 04
- D 1 - I - 0x00F988 03:B978: F0        .byte $F0, $10   ; 05
- D 1 - I - 0x00F98A 03:B97A: F8        .byte $F8, $10   ; 06
- D 1 - I - 0x00F98C 03:B97C: 00        .byte $00, $10   ; 07
- D 1 - I - 0x00F98E 03:B97E: F0        .byte $F0, $08   ; 08
- D 1 - I - 0x00F990 03:B980: F8        .byte $F8, $08   ; 09
- D 1 - I - 0x00F992 03:B982: 00        .byte $00, $08   ; 0A
- D 1 - I - 0x00F994 03:B984: 08        .byte $08, $08   ; 0B
- D 1 - I - 0x00F996 03:B986: F7        .byte $F7, $00   ; 0C
- D 1 - I - 0x00F998 03:B988: 09        .byte $09, $00   ; 0D
- D 1 - I - 0x00F99A 03:B98A: F5        .byte $F5, $17   ; 0E



_off030_B98C_3F:
- D 1 - I - 0x00F99C 03:B98C: 01        .byte con_sub_01, $10, $02   ; 
- D 1 - I - 0x00F99F 03:B98F: 94 B9     .word off_01_B994_spr_T
- D 1 - I - 0x00F9A1 03:B991: A4 B9     .word off_01_B9A4_spr_XY
- D 1 - I - 0x00F9A3 03:B993: 00        .byte con_sub_00   ; 



off_01_B994_spr_T:
- D 1 - I - 0x00F9A4 03:B994: A8        .byte $A8   ; 01
- D 1 - I - 0x00F9A5 03:B995: 25        .byte $25   ; 02
- D 1 - I - 0x00F9A6 03:B996: 01        .byte $01   ; 03
- D 1 - I - 0x00F9A7 03:B997: C0        .byte $C0   ; 04
- D 1 - I - 0x00F9A8 03:B998: C1        .byte $C1   ; 05
- D 1 - I - 0x00F9A9 03:B999: 47        .byte $47   ; 06
- D 1 - I - 0x00F9AA 03:B99A: 48        .byte $48   ; 07
- D 1 - I - 0x00F9AB 03:B99B: D1        .byte $D1   ; 08
- D 1 - I - 0x00F9AC 03:B99C: D2        .byte $D2   ; 09
- D 1 - I - 0x00F9AD 03:B99D: D3        .byte $D3   ; 0A
- D 1 - I - 0x00F9AE 03:B99E: E1        .byte $E1   ; 0B
- D 1 - I - 0x00F9AF 03:B99F: E2        .byte $E2   ; 0C
- D 1 - I - 0x00F9B0 03:B9A0: E3        .byte $E3   ; 0D
- D 1 - I - 0x00F9B1 03:B9A1: E4        .byte $E4   ; 0E
- D 1 - I - 0x00F9B2 03:B9A2: D0        .byte $D0   ; 0F
- D 1 - I - 0x00F9B3 03:B9A3: E0        .byte $E0   ; 10



off_01_B9A4_spr_XY:
- D 1 - I - 0x00F9B4 03:B9A4: E8        .byte $E8, $20   ; 01
- D 1 - I - 0x00F9B6 03:B9A6: F6        .byte $F6, $20   ; 02
- D 1 - I - 0x00F9B8 03:B9A8: FE        .byte $FE, $20   ; 03
- D 1 - I - 0x00F9BA 03:B9AA: E8        .byte $E8, $18   ; 04
- D 1 - I - 0x00F9BC 03:B9AC: EF        .byte $EF, $18   ; 05
- D 1 - I - 0x00F9BE 03:B9AE: F7        .byte $F7, $18   ; 06
- D 1 - I - 0x00F9C0 03:B9B0: FF        .byte $FF, $18   ; 07
- D 1 - I - 0x00F9C2 03:B9B2: F0        .byte $F0, $10   ; 08
- D 1 - I - 0x00F9C4 03:B9B4: F8        .byte $F8, $10   ; 09
- D 1 - I - 0x00F9C6 03:B9B6: 00        .byte $00, $10   ; 0A
- D 1 - I - 0x00F9C8 03:B9B8: F0        .byte $F0, $08   ; 0B
- D 1 - I - 0x00F9CA 03:B9BA: F8        .byte $F8, $08   ; 0C
- D 1 - I - 0x00F9CC 03:B9BC: 00        .byte $00, $08   ; 0D
- D 1 - I - 0x00F9CE 03:B9BE: 08        .byte $08, $08   ; 0E
- D 1 - I - 0x00F9D0 03:B9C0: F7        .byte $F7, $00   ; 0F
- D 1 - I - 0x00F9D2 03:B9C2: 09        .byte $09, $00   ; 10



_off030_B9C4_40:
- D 1 - I - 0x00F9D4 03:B9C4: 04        .byte con_sub_04, $0D, $07   ; 
- D 1 - I - 0x00F9D7 03:B9C7: B9 8F     .word off_04_8FB9_00_spr_A
- - - - - - 0x00F9D9 03:B9C9: C6 8F     .word off_04_8FC6_01_spr_A
- D 1 - I - 0x00F9DB 03:B9CB: 5F 8F     .word off_04_8F5F_02_spr_T
- D 1 - I - 0x00F9DD 03:B9CD: 7A 8F     .word off_04_8F7A_03_spr_XY
- D 1 - I - 0x00F9DF 03:B9CF: 00        .byte con_sub_00   ; 



_off030_B9D0_41:
- D 1 - I - 0x00F9E0 03:B9D0: 04        .byte con_sub_04, $12, $07   ; 
- D 1 - I - 0x00F9E3 03:B9D3: EF B9     .word off_04_B9EF_00_spr_A
- - - - - - 0x00F9E5 03:B9D5: 02 BA     .word off_04_BA02_01_spr_A
- D 1 - I - 0x00F9E7 03:B9D7: DC B9     .word off_04_B9DC_02_spr_T
- D 1 - I - 0x00F9E9 03:B9D9: 15 BA     .word off_04_BA15_03_spr_XY
- D 1 - I - 0x00F9EB 03:B9DB: 00        .byte con_sub_00   ; 



off_04_B9DC_02_spr_T:
- D 1 - I - 0x00F9EC 03:B9DC: 00        .byte $00   ; 01
- D 1 - I - 0x00F9ED 03:B9DD: 01        .byte $01   ; 02
- D 1 - I - 0x00F9EE 03:B9DE: EF        .byte $EF   ; 03
- D 1 - I - 0x00F9EF 03:B9DF: 10        .byte $10   ; 04
- D 1 - I - 0x00F9F0 03:B9E0: 11        .byte $11   ; 05
- D 1 - I - 0x00F9F1 03:B9E1: EF        .byte $EF   ; 06
- D 1 - I - 0x00F9F2 03:B9E2: EF        .byte $EF   ; 07
- D 1 - I - 0x00F9F3 03:B9E3: 20        .byte $20   ; 08
- D 1 - I - 0x00F9F4 03:B9E4: 21        .byte $21   ; 09
- D 1 - I - 0x00F9F5 03:B9E5: 15        .byte $15   ; 0A
- D 1 - I - 0x00F9F6 03:B9E6: EF        .byte $EF   ; 0B
- D 1 - I - 0x00F9F7 03:B9E7: DF        .byte $DF   ; 0C
- D 1 - I - 0x00F9F8 03:B9E8: 30        .byte $30   ; 0D
- D 1 - I - 0x00F9F9 03:B9E9: 31        .byte $31   ; 0E
- D 1 - I - 0x00F9FA 03:B9EA: DF        .byte $DF   ; 0F
- D 1 - I - 0x00F9FB 03:B9EB: DF        .byte $DF   ; 10
- D 1 - I - 0x00F9FC 03:B9EC: FD        .byte $FD   ; 11
- D 1 - I - 0x00F9FD 03:B9ED: FE        .byte $FE   ; 12


; bzk garbage
- - - - - - 0x00F9FE 03:B9EE: DF        .byte $DF   ; 



off_04_B9EF_00_spr_A:
- D 1 - I - 0x00F9FF 03:B9EF: 00        .byte $00   ; 01
- D 1 - I - 0x00FA00 03:B9F0: 00        .byte $00   ; 02
- D 1 - I - 0x00FA01 03:B9F1: 02        .byte $02   ; 03
- D 1 - I - 0x00FA02 03:B9F2: 02        .byte $02   ; 04
- D 1 - I - 0x00FA03 03:B9F3: 00        .byte $00   ; 05
- D 1 - I - 0x00FA04 03:B9F4: 02        .byte $02   ; 06
- D 1 - I - 0x00FA05 03:B9F5: 02        .byte $02   ; 07
- D 1 - I - 0x00FA06 03:B9F6: 01        .byte $01   ; 08
- D 1 - I - 0x00FA07 03:B9F7: 01        .byte $01   ; 09
- D 1 - I - 0x00FA08 03:B9F8: 00        .byte $00   ; 0A
- D 1 - I - 0x00FA09 03:B9F9: 02        .byte $02   ; 0B
- D 1 - I - 0x00FA0A 03:B9FA: 03        .byte $03   ; 0C
- D 1 - I - 0x00FA0B 03:B9FB: 01        .byte $01   ; 0D
- D 1 - I - 0x00FA0C 03:B9FC: 01        .byte $01   ; 0E
- D 1 - I - 0x00FA0D 03:B9FD: 03        .byte $03   ; 0F
- D 1 - I - 0x00FA0E 03:B9FE: 03        .byte $03   ; 10
- D 1 - I - 0x00FA0F 03:B9FF: 02        .byte $02   ; 11
- D 1 - I - 0x00FA10 03:BA00: 02        .byte $02   ; 12


; bzk garbage
- - - - - - 0x00FA11 03:BA01: 03        .byte $03   ; 



off_04_BA02_01_spr_A:
- - - - - - 0x00FA12 03:BA02: 00        .byte $00   ; 01
- - - - - - 0x00FA13 03:BA03: 00        .byte $00   ; 02
- - - - - - 0x00FA14 03:BA04: 02        .byte $02   ; 03
- - - - - - 0x00FA15 03:BA05: 02        .byte $02   ; 04
- - - - - - 0x00FA16 03:BA06: 00        .byte $00   ; 05
- - - - - - 0x00FA17 03:BA07: 02        .byte $02   ; 06
- - - - - - 0x00FA18 03:BA08: 02        .byte $02   ; 07
- - - - - - 0x00FA19 03:BA09: 00        .byte $00   ; 08
- - - - - - 0x00FA1A 03:BA0A: 00        .byte $00   ; 09
- - - - - - 0x00FA1B 03:BA0B: 00        .byte $00   ; 0A
- - - - - - 0x00FA1C 03:BA0C: 02        .byte $02   ; 0B
- - - - - - 0x00FA1D 03:BA0D: 03        .byte $03   ; 0C
- - - - - - 0x00FA1E 03:BA0E: 00        .byte $00   ; 0D
- - - - - - 0x00FA1F 03:BA0F: 00        .byte $00   ; 0E
- - - - - - 0x00FA20 03:BA10: 03        .byte $03   ; 0F
- - - - - - 0x00FA21 03:BA11: 03        .byte $03   ; 10
- - - - - - 0x00FA22 03:BA12: 02        .byte $02   ; 11
- - - - - - 0x00FA23 03:BA13: 02        .byte $02   ; 12


; bzk garbage
- - - - - - 0x00FA24 03:BA14: 03        .byte $03   ; 



off_04_BA15_03_spr_XY:
- D 1 - I - 0x00FA25 03:BA15: FC        .byte $FC, $24   ; 01
- D 1 - I - 0x00FA27 03:BA17: 04        .byte $04, $24   ; 02
- D 1 - I - 0x00FA29 03:BA19: F4        .byte $F4, $1C   ; 03
- D 1 - I - 0x00FA2B 03:BA1B: FC        .byte $FC, $1C   ; 04
- D 1 - I - 0x00FA2D 03:BA1D: 04        .byte $04, $1C   ; 05
- D 1 - I - 0x00FA2F 03:BA1F: 0C        .byte $0C, $1C   ; 06
- D 1 - I - 0x00FA31 03:BA21: F4        .byte $F4, $14   ; 07
- D 1 - I - 0x00FA33 03:BA23: FC        .byte $FC, $14   ; 08
- D 1 - I - 0x00FA35 03:BA25: 04        .byte $04, $14   ; 09
- D 1 - I - 0x00FA37 03:BA27: 01        .byte $01, $14   ; 0A
- D 1 - I - 0x00FA39 03:BA29: 09        .byte $09, $14   ; 0B
- D 1 - I - 0x00FA3B 03:BA2B: F4        .byte $F4, $0C   ; 0C
- D 1 - I - 0x00FA3D 03:BA2D: FC        .byte $FC, $0C   ; 0D
- D 1 - I - 0x00FA3F 03:BA2F: 04        .byte $04, $0C   ; 0E
- D 1 - I - 0x00FA41 03:BA31: 0C        .byte $0C, $0C   ; 0F
- D 1 - I - 0x00FA43 03:BA33: F4        .byte $F4, $04   ; 10
- D 1 - I - 0x00FA45 03:BA35: FA        .byte $FA, $04   ; 11
- D 1 - I - 0x00FA47 03:BA37: 07        .byte $07, $04   ; 12


; bzk garbage
- - - - - - 0x00FA49 03:BA39: 0C        .byte $0C, $04   ; 



_off030_BA3B_42:
- D 1 - I - 0x00FA4B 03:BA3B: 04        .byte con_sub_04, $0F, $07   ; 
- D 1 - I - 0x00FA4E 03:BA3E: 56 BA     .word off_04_BA56_00_spr_A
- - - - - - 0x00FA50 03:BA40: 65 BA     .word off_04_BA65_01_spr_A
- D 1 - I - 0x00FA52 03:BA42: 47 BA     .word off_04_BA47_02_spr_T
- D 1 - I - 0x00FA54 03:BA44: 74 BA     .word off_04_BA74_03_spr_XY
- D 1 - I - 0x00FA56 03:BA46: 00        .byte con_sub_00   ; 



off_04_BA47_02_spr_T:
- D 1 - I - 0x00FA57 03:BA47: 00        .byte $00   ; 01
- D 1 - I - 0x00FA58 03:BA48: 01        .byte $01   ; 02
- D 1 - I - 0x00FA59 03:BA49: 10        .byte $10   ; 03
- D 1 - I - 0x00FA5A 03:BA4A: 11        .byte $11   ; 04
- D 1 - I - 0x00FA5B 03:BA4B: 20        .byte $20   ; 05
- D 1 - I - 0x00FA5C 03:BA4C: 21        .byte $21   ; 06
- D 1 - I - 0x00FA5D 03:BA4D: ED        .byte $ED   ; 07
- D 1 - I - 0x00FA5E 03:BA4E: EE        .byte $EE   ; 08
- D 1 - I - 0x00FA5F 03:BA4F: DF        .byte $DF   ; 09
- D 1 - I - 0x00FA60 03:BA50: FB        .byte $FB   ; 0A
- D 1 - I - 0x00FA61 03:BA51: FC        .byte $FC   ; 0B
- D 1 - I - 0x00FA62 03:BA52: DF        .byte $DF   ; 0C
- D 1 - I - 0x00FA63 03:BA53: EF        .byte $EF   ; 0D
- D 1 - I - 0x00FA64 03:BA54: EF        .byte $EF   ; 0E
- D 1 - I - 0x00FA65 03:BA55: 15        .byte $15   ; 0F



off_04_BA56_00_spr_A:
- D 1 - I - 0x00FA66 03:BA56: 00        .byte $00   ; 01
- D 1 - I - 0x00FA67 03:BA57: 00        .byte $00   ; 02
- D 1 - I - 0x00FA68 03:BA58: 00        .byte $00   ; 03
- D 1 - I - 0x00FA69 03:BA59: 00        .byte $00   ; 04
- D 1 - I - 0x00FA6A 03:BA5A: 01        .byte $01   ; 05
- D 1 - I - 0x00FA6B 03:BA5B: 01        .byte $01   ; 06
- D 1 - I - 0x00FA6C 03:BA5C: 02        .byte $02   ; 07
- D 1 - I - 0x00FA6D 03:BA5D: 02        .byte $02   ; 08
- D 1 - I - 0x00FA6E 03:BA5E: 03        .byte $03   ; 09
- D 1 - I - 0x00FA6F 03:BA5F: 02        .byte $02   ; 0A
- D 1 - I - 0x00FA70 03:BA60: 02        .byte $02   ; 0B
- D 1 - I - 0x00FA71 03:BA61: 03        .byte $03   ; 0C
- D 1 - I - 0x00FA72 03:BA62: 02        .byte $02   ; 0D
- D 1 - I - 0x00FA73 03:BA63: 02        .byte $02   ; 0E
- D 1 - I - 0x00FA74 03:BA64: 00        .byte $00   ; 0F



off_04_BA65_01_spr_A:
- - - - - - 0x00FA75 03:BA65: 00        .byte $00   ; 01
- - - - - - 0x00FA76 03:BA66: 00        .byte $00   ; 02
- - - - - - 0x00FA77 03:BA67: 00        .byte $00   ; 03
- - - - - - 0x00FA78 03:BA68: 00        .byte $00   ; 04
- - - - - - 0x00FA79 03:BA69: 00        .byte $00   ; 05
- - - - - - 0x00FA7A 03:BA6A: 00        .byte $00   ; 06
- - - - - - 0x00FA7B 03:BA6B: 02        .byte $02   ; 07
- - - - - - 0x00FA7C 03:BA6C: 02        .byte $02   ; 08
- - - - - - 0x00FA7D 03:BA6D: 03        .byte $03   ; 09
- - - - - - 0x00FA7E 03:BA6E: 02        .byte $02   ; 0A
- - - - - - 0x00FA7F 03:BA6F: 02        .byte $02   ; 0B
- - - - - - 0x00FA80 03:BA70: 03        .byte $03   ; 0C
- - - - - - 0x00FA81 03:BA71: 02        .byte $02   ; 0D
- - - - - - 0x00FA82 03:BA72: 02        .byte $02   ; 0E
- - - - - - 0x00FA83 03:BA73: 00        .byte $00   ; 0F



off_04_BA74_03_spr_XY:
off_02_BA74_02_spr_XY:
- D 1 - I - 0x00FA84 03:BA74: FC        .byte $FC, $24   ; 01
- D 1 - I - 0x00FA86 03:BA76: 04        .byte $04, $24   ; 02
- D 1 - I - 0x00FA88 03:BA78: FC        .byte $FC, $1C   ; 03
- D 1 - I - 0x00FA8A 03:BA7A: 04        .byte $04, $1C   ; 04
- D 1 - I - 0x00FA8C 03:BA7C: FC        .byte $FC, $14   ; 05
- D 1 - I - 0x00FA8E 03:BA7E: 04        .byte $04, $14   ; 06
- D 1 - I - 0x00FA90 03:BA80: FC        .byte $FC, $0C   ; 07
- D 1 - I - 0x00FA92 03:BA82: 04        .byte $04, $0C   ; 08
- D 1 - I - 0x00FA94 03:BA84: F4        .byte $F4, $04   ; 09
- D 1 - I - 0x00FA96 03:BA86: FA        .byte $FA, $04   ; 0A
- D 1 - I - 0x00FA98 03:BA88: 07        .byte $07, $04   ; 0B
- D 1 - I - 0x00FA9A 03:BA8A: 0C        .byte $0C, $04   ; 0C
- D 1 - I - 0x00FA9C 03:BA8C: F4        .byte $F4, $0C   ; 0D
- D 1 - I - 0x00FA9E 03:BA8E: 0C        .byte $0C, $0C   ; 0E
- D 1 - I - 0x00FAA0 03:BA90: 01        .byte $01, $14   ; 0F



_off030_BA92_43:
- D 1 - I - 0x00FAA2 03:BA92: 02        .byte con_sub_02, $0C   ; 
- D 1 - I - 0x00FAA4 03:BA94: 49 A8     .word off_02_A849_00_spr_A
- D 1 - I - 0x00FAA6 03:BA96: 9B BA     .word off_02_BA9B_01_spr_T
- D 1 - I - 0x00FAA8 03:BA98: 74 BA     .word off_02_BA74_02_spr_XY
- D 1 - I - 0x00FAAA 03:BA9A: 00        .byte con_sub_00   ; 



off_02_BA9B_01_spr_T:
- D 1 - I - 0x00FAAB 03:BA9B: 00        .byte $00   ; 01
- D 1 - I - 0x00FAAC 03:BA9C: 01        .byte $01   ; 02
- D 1 - I - 0x00FAAD 03:BA9D: 10        .byte $10   ; 03
- D 1 - I - 0x00FAAE 03:BA9E: 11        .byte $11   ; 04
- D 1 - I - 0x00FAAF 03:BA9F: DD        .byte $DD   ; 05
- D 1 - I - 0x00FAB0 03:BAA0: DE        .byte $DE   ; 06
- D 1 - I - 0x00FAB1 03:BAA1: EB        .byte $EB   ; 07
- D 1 - I - 0x00FAB2 03:BAA2: EC        .byte $EC   ; 08
- D 1 - I - 0x00FAB3 03:BAA3: EF        .byte $EF   ; 09
- D 1 - I - 0x00FAB4 03:BAA4: F9        .byte $F9   ; 0A
- D 1 - I - 0x00FAB5 03:BAA5: FA        .byte $FA   ; 0B
- D 1 - I - 0x00FAB6 03:BAA6: EF        .byte $EF   ; 0C



_off030_BAA7_44:
- D 1 - I - 0x00FAB7 03:BAA7: 02        .byte con_sub_02, $0A   ; 
- D 1 - I - 0x00FAB9 03:BAA9: 4B A8     .word off_02_A84B_00_spr_A
- D 1 - I - 0x00FABB 03:BAAB: B0 BA     .word off_02_BAB0_01_spr_T
- D 1 - I - 0x00FABD 03:BAAD: BA BA     .word off_02_BABA_02_spr_XY
- D 1 - I - 0x00FABF 03:BAAF: 00        .byte con_sub_00   ; 



off_02_BAB0_01_spr_T:
- D 1 - I - 0x00FAC0 03:BAB0: 00        .byte $00   ; 01
- D 1 - I - 0x00FAC1 03:BAB1: 01        .byte $01   ; 02
- D 1 - I - 0x00FAC2 03:BAB2: CD        .byte $CD   ; 03
- D 1 - I - 0x00FAC3 03:BAB3: CE        .byte $CE   ; 04
- D 1 - I - 0x00FAC4 03:BAB4: DB        .byte $DB   ; 05
- D 1 - I - 0x00FAC5 03:BAB5: DC        .byte $DC   ; 06
- D 1 - I - 0x00FAC6 03:BAB6: E9        .byte $E9   ; 07
- D 1 - I - 0x00FAC7 03:BAB7: EA        .byte $EA   ; 08
- D 1 - I - 0x00FAC8 03:BAB8: 40        .byte $40   ; 09
- D 1 - I - 0x00FAC9 03:BAB9: 41        .byte $41   ; 0A



off_02_BABA_02_spr_XY:
off_01_BABA_spr_XY:
- D 1 - I - 0x00FACA 03:BABA: FC        .byte $FC, $24   ; 01
- D 1 - I - 0x00FACC 03:BABC: 04        .byte $04, $24   ; 02
- D 1 - I - 0x00FACE 03:BABE: FC        .byte $FC, $1C   ; 03
- D 1 - I - 0x00FAD0 03:BAC0: 04        .byte $04, $1C   ; 04
- D 1 - I - 0x00FAD2 03:BAC2: FC        .byte $FC, $14   ; 05
- D 1 - I - 0x00FAD4 03:BAC4: 04        .byte $04, $14   ; 06
- D 1 - I - 0x00FAD6 03:BAC6: FC        .byte $FC, $0C   ; 07
- D 1 - I - 0x00FAD8 03:BAC8: 04        .byte $04, $0C   ; 08
- D 1 - I - 0x00FADA 03:BACA: FA        .byte $FA, $04   ; 09
- D 1 - I - 0x00FADC 03:BACC: 07        .byte $07, $04   ; 0A



_off030_BACE_45:
- D 1 - I - 0x00FADE 03:BACE: 01        .byte con_sub_01, $0A, $02   ; 
- D 1 - I - 0x00FAE1 03:BAD1: D6 BA     .word off_01_BAD6_spr_T
- D 1 - I - 0x00FAE3 03:BAD3: BA BA     .word off_01_BABA_spr_XY
- D 1 - I - 0x00FAE5 03:BAD5: 00        .byte con_sub_00   ; 



off_01_BAD6_spr_T:
- D 1 - I - 0x00FAE6 03:BAD6: BD        .byte $BD   ; 01
- D 1 - I - 0x00FAE7 03:BAD7: BE        .byte $BE   ; 02
- D 1 - I - 0x00FAE8 03:BAD8: CB        .byte $CB   ; 03
- D 1 - I - 0x00FAE9 03:BAD9: CC        .byte $CC   ; 04
- D 1 - I - 0x00FAEA 03:BADA: D9        .byte $D9   ; 05
- D 1 - I - 0x00FAEB 03:BADB: DA        .byte $DA   ; 06
- D 1 - I - 0x00FAEC 03:BADC: 30        .byte $30   ; 07
- D 1 - I - 0x00FAED 03:BADD: 31        .byte $31   ; 08
- D 1 - I - 0x00FAEE 03:BADE: 40        .byte $40   ; 09
- D 1 - I - 0x00FAEF 03:BADF: 41        .byte $41   ; 0A



_off030_BAE0_46:
- D 1 - I - 0x00FAF0 03:BAE0: 01        .byte con_sub_01, $0B, $02   ; 
- D 1 - I - 0x00FAF3 03:BAE3: E8 BA     .word off_01_BAE8_spr_T
- D 1 - I - 0x00FAF5 03:BAE5: 7A 8F     .word off_01_8F7A_spr_XY
- D 1 - I - 0x00FAF7 03:BAE7: 00        .byte con_sub_00   ; 



off_01_BAE8_spr_T:
- D 1 - I - 0x00FAF8 03:BAE8: BB        .byte $BB   ; 01
- D 1 - I - 0x00FAF9 03:BAE9: BC        .byte $BC   ; 02
- D 1 - I - 0x00FAFA 03:BAEA: C9        .byte $C9   ; 03
- D 1 - I - 0x00FAFB 03:BAEB: CA        .byte $CA   ; 04
- D 1 - I - 0x00FAFC 03:BAEC: 20        .byte $20   ; 05
- D 1 - I - 0x00FAFD 03:BAED: 21        .byte $21   ; 06
- D 1 - I - 0x00FAFE 03:BAEE: 15        .byte $15   ; 07
- D 1 - I - 0x00FAFF 03:BAEF: 30        .byte $30   ; 08
- D 1 - I - 0x00FB00 03:BAF0: 31        .byte $31   ; 09
- D 1 - I - 0x00FB01 03:BAF1: 40        .byte $40   ; 0A
- D 1 - I - 0x00FB02 03:BAF2: 41        .byte $41   ; 0B



_off030_BAF3_47:
- D 1 - I - 0x00FB03 03:BAF3: 01        .byte con_sub_01, $0B, $02   ; 
- D 1 - I - 0x00FB06 03:BAF6: FB BA     .word off_01_BAFB_spr_T
- D 1 - I - 0x00FB08 03:BAF8: 7A 8F     .word off_01_8F7A_spr_XY
- D 1 - I - 0x00FB0A 03:BAFA: 00        .byte con_sub_00   ; 



off_01_BAFB_spr_T:
- D 1 - I - 0x00FB0B 03:BAFB: B9        .byte $B9   ; 01
- D 1 - I - 0x00FB0C 03:BAFC: BA        .byte $BA   ; 02
- D 1 - I - 0x00FB0D 03:BAFD: 10        .byte $10   ; 03
- D 1 - I - 0x00FB0E 03:BAFE: 11        .byte $11   ; 04
- D 1 - I - 0x00FB0F 03:BAFF: 20        .byte $20   ; 05
- D 1 - I - 0x00FB10 03:BB00: 21        .byte $21   ; 06
- D 1 - I - 0x00FB11 03:BB01: 15        .byte $15   ; 07
- D 1 - I - 0x00FB12 03:BB02: 30        .byte $30   ; 08
- D 1 - I - 0x00FB13 03:BB03: 31        .byte $31   ; 09
- D 1 - I - 0x00FB14 03:BB04: 40        .byte $40   ; 0A
- D 1 - I - 0x00FB15 03:BB05: 41        .byte $41   ; 0B



_off030_BB06_48:
- D 1 - I - 0x00FB16 03:BB06: 01        .byte con_sub_01, $0B, $02   ; 
- D 1 - I - 0x00FB19 03:BB09: 0E BB     .word off_01_BB0E_spr_T
- D 1 - I - 0x00FB1B 03:BB0B: 7A 8F     .word off_01_8F7A_spr_XY
- D 1 - I - 0x00FB1D 03:BB0D: 00        .byte con_sub_00   ; 



off_01_BB0E_spr_T:
- D 1 - I - 0x00FB1E 03:BB0E: 00        .byte $00   ; 01
- D 1 - I - 0x00FB1F 03:BB0F: 01        .byte $01   ; 02
- D 1 - I - 0x00FB20 03:BB10: 10        .byte $10   ; 03
- D 1 - I - 0x00FB21 03:BB11: 11        .byte $11   ; 04
- D 1 - I - 0x00FB22 03:BB12: 20        .byte $20   ; 05
- D 1 - I - 0x00FB23 03:BB13: 21        .byte $21   ; 06
- D 1 - I - 0x00FB24 03:BB14: 15        .byte $15   ; 07
- D 1 - I - 0x00FB25 03:BB15: 30        .byte $30   ; 08
- D 1 - I - 0x00FB26 03:BB16: 31        .byte $31   ; 09
- D 1 - I - 0x00FB27 03:BB17: 40        .byte $40   ; 0A
- D 1 - I - 0x00FB28 03:BB18: 41        .byte $41   ; 0B



_off030_BB19_49:
- D 1 - I - 0x00FB29 03:BB19: 01        .byte con_sub_01, $0B, $03   ; 
- D 1 - I - 0x00FB2C 03:BB1C: 21 BB     .word off_01_BB21_spr_T
- D 1 - I - 0x00FB2E 03:BB1E: 7A 8F     .word off_01_8F7A_spr_XY
- D 1 - I - 0x00FB30 03:BB20: 00        .byte con_sub_00   ; 



off_01_BB21_spr_T:
- D 1 - I - 0x00FB31 03:BB21: 00        .byte $00   ; 01
- D 1 - I - 0x00FB32 03:BB22: 01        .byte $01   ; 02
- D 1 - I - 0x00FB33 03:BB23: 10        .byte $10   ; 03
- D 1 - I - 0x00FB34 03:BB24: 11        .byte $11   ; 04
- D 1 - I - 0x00FB35 03:BB25: 20        .byte $20   ; 05
- D 1 - I - 0x00FB36 03:BB26: 21        .byte $21   ; 06
- D 1 - I - 0x00FB37 03:BB27: 15        .byte $15   ; 07
- D 1 - I - 0x00FB38 03:BB28: 30        .byte $30   ; 08
- D 1 - I - 0x00FB39 03:BB29: 31        .byte $31   ; 09
- D 1 - I - 0x00FB3A 03:BB2A: 40        .byte $40   ; 0A
- D 1 - I - 0x00FB3B 03:BB2B: 41        .byte $41   ; 0B



_off030_BB2C_4A:
- D 1 - I - 0x00FB3C 03:BB2C: 01        .byte con_sub_01, $0A, $02   ; 
- D 1 - I - 0x00FB3F 03:BB2F: 34 BB     .word off_01_BB34_spr_T
- D 1 - I - 0x00FB41 03:BB31: BA BA     .word off_01_BABA_spr_XY
- D 1 - I - 0x00FB43 03:BB33: 00        .byte con_sub_00   ; 



off_01_BB34_spr_T:
- D 1 - I - 0x00FB44 03:BB34: B9        .byte $B9   ; 01
- D 1 - I - 0x00FB45 03:BB35: BA        .byte $BA   ; 02
- D 1 - I - 0x00FB46 03:BB36: C9        .byte $C9   ; 03
- D 1 - I - 0x00FB47 03:BB37: CA        .byte $CA   ; 04
- D 1 - I - 0x00FB48 03:BB38: D9        .byte $D9   ; 05
- D 1 - I - 0x00FB49 03:BB39: DA        .byte $DA   ; 06
- D 1 - I - 0x00FB4A 03:BB3A: E9        .byte $E9   ; 07
- D 1 - I - 0x00FB4B 03:BB3B: EA        .byte $EA   ; 08
- D 1 - I - 0x00FB4C 03:BB3C: F9        .byte $F9   ; 09
- D 1 - I - 0x00FB4D 03:BB3D: FA        .byte $FA   ; 0A



_off030_BB3E_4B:
- D 1 - I - 0x00FB4E 03:BB3E: 01        .byte con_sub_01, $0A, $02   ; 
- D 1 - I - 0x00FB51 03:BB41: 46 BB     .word off_01_BB46_spr_T
- D 1 - I - 0x00FB53 03:BB43: BA BA     .word off_01_BABA_spr_XY
- D 1 - I - 0x00FB55 03:BB45: 00        .byte con_sub_00   ; 



off_01_BB46_spr_T:
- D 1 - I - 0x00FB56 03:BB46: BB        .byte $BB   ; 01
- D 1 - I - 0x00FB57 03:BB47: BC        .byte $BC   ; 02
- D 1 - I - 0x00FB58 03:BB48: CB        .byte $CB   ; 03
- D 1 - I - 0x00FB59 03:BB49: CC        .byte $CC   ; 04
- D 1 - I - 0x00FB5A 03:BB4A: DB        .byte $DB   ; 05
- D 1 - I - 0x00FB5B 03:BB4B: DC        .byte $DC   ; 06
- D 1 - I - 0x00FB5C 03:BB4C: EB        .byte $EB   ; 07
- D 1 - I - 0x00FB5D 03:BB4D: EC        .byte $EC   ; 08
- D 1 - I - 0x00FB5E 03:BB4E: FB        .byte $FB   ; 09
- D 1 - I - 0x00FB5F 03:BB4F: FC        .byte $FC   ; 0A



_off030_BB50_4C:
- D 1 - I - 0x00FB60 03:BB50: 01        .byte con_sub_01, $0A, $02   ; 
- D 1 - I - 0x00FB63 03:BB53: 58 BB     .word off_01_BB58_spr_T
- D 1 - I - 0x00FB65 03:BB55: BA BA     .word off_01_BABA_spr_XY
- D 1 - I - 0x00FB67 03:BB57: 00        .byte con_sub_00   ; 



off_01_BB58_spr_T:
- D 1 - I - 0x00FB68 03:BB58: BD        .byte $BD   ; 01
- D 1 - I - 0x00FB69 03:BB59: BE        .byte $BE   ; 02
- D 1 - I - 0x00FB6A 03:BB5A: CD        .byte $CD   ; 03
- D 1 - I - 0x00FB6B 03:BB5B: CE        .byte $CE   ; 04
- D 1 - I - 0x00FB6C 03:BB5C: DD        .byte $DD   ; 05
- D 1 - I - 0x00FB6D 03:BB5D: DE        .byte $DE   ; 06
- D 1 - I - 0x00FB6E 03:BB5E: ED        .byte $ED   ; 07
- D 1 - I - 0x00FB6F 03:BB5F: EE        .byte $EE   ; 08
- D 1 - I - 0x00FB70 03:BB60: FD        .byte $FD   ; 09
- D 1 - I - 0x00FB71 03:BB61: FE        .byte $FE   ; 0A



_off030_BB62_4D:
sub_06_BB62_02:
- D 1 - I - 0x00FB72 03:BB62: 02        .byte con_sub_02, $08   ; 
- D 1 - I - 0x00FB74 03:BB64: 73 BB     .word off_02_BB73_00_spr_A
- D 1 - I - 0x00FB76 03:BB66: 6B BB     .word off_02_BB6B_01_spr_T
- D 1 - I - 0x00FB78 03:BB68: 7B BB     .word off_02_BB7B_02_spr_XY
- D 1 - I - 0x00FB7A 03:BB6A: 00        .byte con_sub_00   ; 



off_02_BB6B_01_spr_T:
- D 1 - I - 0x00FB7B 03:BB6B: C3        .byte $C3   ; 01
- D 1 - I - 0x00FB7C 03:BB6C: C4        .byte $C4   ; 02
- D 1 - I - 0x00FB7D 03:BB6D: C5        .byte $C5   ; 03
- D 1 - I - 0x00FB7E 03:BB6E: 61        .byte $61   ; 04
- D 1 - I - 0x00FB7F 03:BB6F: 60        .byte $60   ; 05
- D 1 - I - 0x00FB80 03:BB70: C2        .byte $C2   ; 06
- D 1 - I - 0x00FB81 03:BB71: 71        .byte $71   ; 07
- D 1 - I - 0x00FB82 03:BB72: 70        .byte $70   ; 08



off_02_BB73_00_spr_A:
- D 1 - I - 0x00FB83 03:BB73: 02        .byte $02   ; 01
- D 1 - I - 0x00FB84 03:BB74: 02        .byte $02   ; 02
- D 1 - I - 0x00FB85 03:BB75: 02        .byte $02   ; 03
- D 1 - I - 0x00FB86 03:BB76: 42        .byte $42   ; 04
- D 1 - I - 0x00FB87 03:BB77: 42        .byte $42   ; 05
- D 1 - I - 0x00FB88 03:BB78: 02        .byte $02   ; 06
- D 1 - I - 0x00FB89 03:BB79: 42        .byte $42   ; 07
- D 1 - I - 0x00FB8A 03:BB7A: 42        .byte $42   ; 08



off_02_BB7B_02_spr_XY:
- D 1 - I - 0x00FB8B 03:BB7B: E3        .byte $E3, $12   ; 01
- D 1 - I - 0x00FB8D 03:BB7D: EB        .byte $EB, $12   ; 02
- D 1 - I - 0x00FB8F 03:BB7F: F3        .byte $F3, $12   ; 03
- D 1 - I - 0x00FB91 03:BB81: E1        .byte $E1, $0A   ; 04
- D 1 - I - 0x00FB93 03:BB83: E9        .byte $E9, $0A   ; 05
- D 1 - I - 0x00FB95 03:BB85: EB        .byte $EB, $0A   ; 06
- D 1 - I - 0x00FB97 03:BB87: E0        .byte $E0, $02   ; 07
- D 1 - I - 0x00FB99 03:BB89: E8        .byte $E8, $02   ; 08



_off030_BB8B_4E:
sub_06_BB8B_02:
- D 1 - I - 0x00FB9B 03:BB8B: 02        .byte con_sub_02, $08   ; 
- D 1 - I - 0x00FB9D 03:BB8D: 73 BB     .word off_02_BB73_00_spr_A
- D 1 - I - 0x00FB9F 03:BB8F: 94 BB     .word off_02_BB94_01_spr_T
- D 1 - I - 0x00FBA1 03:BB91: 9C BB     .word off_02_BB9C_02_spr_XY
- D 1 - I - 0x00FBA3 03:BB93: 00        .byte con_sub_00   ; 



off_02_BB94_01_spr_T:
- D 1 - I - 0x00FBA4 03:BB94: C3        .byte $C3   ; 01
- D 1 - I - 0x00FBA5 03:BB95: C4        .byte $C4   ; 02
- D 1 - I - 0x00FBA6 03:BB96: C5        .byte $C5   ; 03
- D 1 - I - 0x00FBA7 03:BB97: 31        .byte $31   ; 04
- D 1 - I - 0x00FBA8 03:BB98: 30        .byte $30   ; 05
- D 1 - I - 0x00FBA9 03:BB99: C2        .byte $C2   ; 06
- D 1 - I - 0x00FBAA 03:BB9A: 41        .byte $41   ; 07
- D 1 - I - 0x00FBAB 03:BB9B: 40        .byte $40   ; 08



off_02_BB9C_02_spr_XY:
- D 1 - I - 0x00FBAC 03:BB9C: E2        .byte $E2, $14   ; 01
- D 1 - I - 0x00FBAE 03:BB9E: EA        .byte $EA, $14   ; 02
- D 1 - I - 0x00FBB0 03:BBA0: F2        .byte $F2, $14   ; 03
- D 1 - I - 0x00FBB2 03:BBA2: DF        .byte $DF, $0C   ; 04
- D 1 - I - 0x00FBB4 03:BBA4: E7        .byte $E7, $0C   ; 05
- D 1 - I - 0x00FBB6 03:BBA6: EA        .byte $EA, $0C   ; 06
- D 1 - I - 0x00FBB8 03:BBA8: DC        .byte $DC, $04   ; 07
- D 1 - I - 0x00FBBA 03:BBAA: E9        .byte $E9, $04   ; 08



_off030_BBAC_4F:
sub_06_BBAC_02:
- D 1 - I - 0x00FBBC 03:BBAC: 02        .byte con_sub_02, $0A   ; 
- D 1 - I - 0x00FBBE 03:BBAE: BF BB     .word off_02_BBBF_00_spr_A
- D 1 - I - 0x00FBC0 03:BBB0: B5 BB     .word off_02_BBB5_01_spr_T
- D 1 - I - 0x00FBC2 03:BBB2: C9 BB     .word off_02_BBC9_02_spr_XY
- D 1 - I - 0x00FBC4 03:BBB4: 00        .byte con_sub_00   ; 



off_02_BBB5_01_spr_T:
- D 1 - I - 0x00FBC5 03:BBB5: B6        .byte $B6   ; 01
- D 1 - I - 0x00FBC6 03:BBB6: B7        .byte $B7   ; 02
- D 1 - I - 0x00FBC7 03:BBB7: B8        .byte $B8   ; 03
- D 1 - I - 0x00FBC8 03:BBB8: C6        .byte $C6   ; 04
- D 1 - I - 0x00FBC9 03:BBB9: C7        .byte $C7   ; 05
- D 1 - I - 0x00FBCA 03:BBBA: C8        .byte $C8   ; 06
- D 1 - I - 0x00FBCB 03:BBBB: 31        .byte $31   ; 07
- D 1 - I - 0x00FBCC 03:BBBC: 30        .byte $30   ; 08
- D 1 - I - 0x00FBCD 03:BBBD: 41        .byte $41   ; 09
- D 1 - I - 0x00FBCE 03:BBBE: 40        .byte $40   ; 0A



off_02_BBBF_00_spr_A:
- D 1 - I - 0x00FBCF 03:BBBF: 02        .byte $02   ; 01
- D 1 - I - 0x00FBD0 03:BBC0: 02        .byte $02   ; 02
- D 1 - I - 0x00FBD1 03:BBC1: 02        .byte $02   ; 03
- D 1 - I - 0x00FBD2 03:BBC2: 02        .byte $02   ; 04
- D 1 - I - 0x00FBD3 03:BBC3: 02        .byte $02   ; 05
- D 1 - I - 0x00FBD4 03:BBC4: 02        .byte $02   ; 06
- D 1 - I - 0x00FBD5 03:BBC5: 42        .byte $42   ; 07
- D 1 - I - 0x00FBD6 03:BBC6: 42        .byte $42   ; 08
- D 1 - I - 0x00FBD7 03:BBC7: 42        .byte $42   ; 09
- D 1 - I - 0x00FBD8 03:BBC8: 42        .byte $42   ; 0A



off_02_BBC9_02_spr_XY:
- D 1 - I - 0x00FBD9 03:BBC9: E0        .byte $E0, $1C   ; 01
- D 1 - I - 0x00FBDB 03:BBCB: E8        .byte $E8, $1C   ; 02
- D 1 - I - 0x00FBDD 03:BBCD: F0        .byte $F0, $1C   ; 03
- D 1 - I - 0x00FBDF 03:BBCF: E0        .byte $E0, $14   ; 04
- D 1 - I - 0x00FBE1 03:BBD1: E8        .byte $E8, $14   ; 05
- D 1 - I - 0x00FBE3 03:BBD3: F0        .byte $F0, $14   ; 06
- D 1 - I - 0x00FBE5 03:BBD5: DF        .byte $DF, $0C   ; 07
- D 1 - I - 0x00FBE7 03:BBD7: E7        .byte $E7, $0C   ; 08
- D 1 - I - 0x00FBE9 03:BBD9: DC        .byte $DC, $04   ; 09
- D 1 - I - 0x00FBEB 03:BBDB: E9        .byte $E9, $04   ; 0A



_off030_BBDD_50:
- D 1 - I - 0x00FBED 03:BBDD: 01        .byte con_sub_01, $07, $02   ; 
- D 1 - I - 0x00FBF0 03:BBE0: E5 BB     .word off_01_BBE5_spr_T
- D 1 - I - 0x00FBF2 03:BBE2: EC BB     .word off_01_BBEC_spr_XY
- D 1 - I - 0x00FBF4 03:BBE4: 00        .byte con_sub_00   ; 



off_01_BBE5_spr_T:
- D 1 - I - 0x00FBF5 03:BBE5: 81        .byte $81   ; 01
- D 1 - I - 0x00FBF6 03:BBE6: 82        .byte $82   ; 02
- D 1 - I - 0x00FBF7 03:BBE7: 83        .byte $83   ; 03
- D 1 - I - 0x00FBF8 03:BBE8: 90        .byte $90   ; 04
- D 1 - I - 0x00FBF9 03:BBE9: 91        .byte $91   ; 05
- D 1 - I - 0x00FBFA 03:BBEA: 92        .byte $92   ; 06
- D 1 - I - 0x00FBFB 03:BBEB: 93        .byte $93   ; 07



off_01_BBEC_spr_XY:
- D 1 - I - 0x00FBFC 03:BBEC: FA        .byte $FA, $0C   ; 01
- D 1 - I - 0x00FBFE 03:BBEE: 04        .byte $04, $0C   ; 02
- D 1 - I - 0x00FC00 03:BBF0: 0C        .byte $0C, $0C   ; 03
- D 1 - I - 0x00FC02 03:BBF2: F4        .byte $F4, $04   ; 04
- D 1 - I - 0x00FC04 03:BBF4: FC        .byte $FC, $04   ; 05
- D 1 - I - 0x00FC06 03:BBF6: 04        .byte $04, $04   ; 06
- D 1 - I - 0x00FC08 03:BBF8: 0C        .byte $0C, $04   ; 07



_off030_BBFA_51:
- D 1 - I - 0x00FC0A 03:BBFA: 01        .byte con_sub_01, $07, $02   ; 
- D 1 - I - 0x00FC0D 03:BBFD: 02 BC     .word off_01_BC02_spr_T
- D 1 - I - 0x00FC0F 03:BBFF: EC BB     .word off_01_BBEC_spr_XY
- D 1 - I - 0x00FC11 03:BC01: 00        .byte con_sub_00   ; 



off_01_BC02_spr_T:
- D 1 - I - 0x00FC12 03:BC02: 85        .byte $85   ; 01
- D 1 - I - 0x00FC13 03:BC03: 86        .byte $86   ; 02
- D 1 - I - 0x00FC14 03:BC04: 87        .byte $87   ; 03
- D 1 - I - 0x00FC15 03:BC05: 94        .byte $94   ; 04
- D 1 - I - 0x00FC16 03:BC06: 95        .byte $95   ; 05
- D 1 - I - 0x00FC17 03:BC07: 96        .byte $96   ; 06
- D 1 - I - 0x00FC18 03:BC08: 97        .byte $97   ; 07



_off030_BC09_52:
- D 1 - I - 0x00FC19 03:BC09: 01        .byte con_sub_01, $07, $02   ; 
- D 1 - I - 0x00FC1C 03:BC0C: 11 BC     .word off_01_BC11_spr_T
- D 1 - I - 0x00FC1E 03:BC0E: EC BB     .word off_01_BBEC_spr_XY
- D 1 - I - 0x00FC20 03:BC10: 00        .byte con_sub_00   ; 



off_01_BC11_spr_T:
- D 1 - I - 0x00FC21 03:BC11: 89        .byte $89   ; 01
- D 1 - I - 0x00FC22 03:BC12: 8A        .byte $8A   ; 02
- D 1 - I - 0x00FC23 03:BC13: 8B        .byte $8B   ; 03
- D 1 - I - 0x00FC24 03:BC14: 98        .byte $98   ; 04
- D 1 - I - 0x00FC25 03:BC15: 99        .byte $99   ; 05
- D 1 - I - 0x00FC26 03:BC16: 9A        .byte $9A   ; 06
- D 1 - I - 0x00FC27 03:BC17: 9B        .byte $9B   ; 07



_off030_BC18_53:
- D 1 - I - 0x00FC28 03:BC18: 01        .byte con_sub_01, $07, $02   ; 
- D 1 - I - 0x00FC2B 03:BC1B: 20 BC     .word off_01_BC20_spr_T
- D 1 - I - 0x00FC2D 03:BC1D: 27 BC     .word off_01_BC27_spr_XY
- D 1 - I - 0x00FC2F 03:BC1F: 00        .byte con_sub_00   ; 



off_01_BC20_spr_T:
- D 1 - I - 0x00FC30 03:BC20: 8D        .byte $8D   ; 01
- D 1 - I - 0x00FC31 03:BC21: 8E        .byte $8E   ; 02
- D 1 - I - 0x00FC32 03:BC22: 8F        .byte $8F   ; 03
- D 1 - I - 0x00FC33 03:BC23: 9C        .byte $9C   ; 04
- D 1 - I - 0x00FC34 03:BC24: 9D        .byte $9D   ; 05
- D 1 - I - 0x00FC35 03:BC25: 9E        .byte $9E   ; 06
- D 1 - I - 0x00FC36 03:BC26: 9F        .byte $9F   ; 07



off_01_BC27_spr_XY:
- D 1 - I - 0x00FC37 03:BC27: FC        .byte $FC, $0C   ; 01
- D 1 - I - 0x00FC39 03:BC29: 04        .byte $04, $0B   ; 02
- D 1 - I - 0x00FC3B 03:BC2B: 0C        .byte $0C, $0B   ; 03
- D 1 - I - 0x00FC3D 03:BC2D: F4        .byte $F4, $04   ; 04
- D 1 - I - 0x00FC3F 03:BC2F: FC        .byte $FC, $04   ; 05
- D 1 - I - 0x00FC41 03:BC31: 04        .byte $04, $03   ; 06
- D 1 - I - 0x00FC43 03:BC33: 0C        .byte $0C, $03   ; 07



_off030_BC35_54:
- D 1 - I - 0x00FC45 03:BC35: 01        .byte con_sub_01, $02, $02   ; 
- D 1 - I - 0x00FC48 03:BC38: 3D BC     .word off_01_BC3D_spr_T
- D 1 - I - 0x00FC4A 03:BC3A: 3F BC     .word off_01_BC3F_spr_XY
- D 1 - I - 0x00FC4C 03:BC3C: 00        .byte con_sub_00   ; 



off_01_BC3D_spr_T:
- D 1 - I - 0x00FC4D 03:BC3D: A4        .byte $A4   ; 01
- D 1 - I - 0x00FC4E 03:BC3E: A5        .byte $A5   ; 02



off_01_BC3F_spr_XY:
- D 1 - I - 0x00FC4F 03:BC3F: FD        .byte $FD, $04   ; 01
- D 1 - I - 0x00FC51 03:BC41: 05        .byte $05, $04   ; 02



_off030_BC43_55:
- D 1 - I - 0x00FC53 03:BC43: 01        .byte con_sub_01, $01, $02   ; 
- D 1 - I - 0x00FC56 03:BC46: 4B BC     .word off_01_BC4B_spr_T
- D 1 - I - 0x00FC58 03:BC48: 4C BC     .word off_01_BC4C_spr_XY
- D 1 - I - 0x00FC5A 03:BC4A: 00        .byte con_sub_00   ; 



off_01_BC4B_spr_T:
- D 1 - I - 0x00FC5B 03:BC4B: A6        .byte $A6   ; 01



off_01_BC4C_spr_XY:
- D 1 - I - 0x00FC5C 03:BC4C: 02        .byte $02, $05   ; 01



_off030_BC4E_56:
- D 1 - I - 0x00FC5E 03:BC4E: 01        .byte con_sub_01, $01, $02   ; 
- D 1 - I - 0x00FC61 03:BC51: 56 BC     .word off_01_BC56_spr_T
- D 1 - I - 0x00FC63 03:BC53: 4C BC     .word off_01_BC4C_spr_XY
- D 1 - I - 0x00FC65 03:BC55: 00        .byte con_sub_00   ; 



off_01_BC56_spr_T:
- D 1 - I - 0x00FC66 03:BC56: A7        .byte $A7   ; 01



_off030_BC57_57:
- - - - - - 0x00FC67 03:BC57: 02        .byte con_sub_02, $08   ; 
- - - - - - 0x00FC69 03:BC59: 73 BB     .word off_02_BB73_00_spr_A
- - - - - - 0x00FC6B 03:BC5B: 60 BC     .word off_02_BC60_01_spr_T
- - - - - - 0x00FC6D 03:BC5D: 68 BC     .word off_02_BC68_02_spr_XY
- - - - - - 0x00FC6F 03:BC5F: 00        .byte con_sub_00   ; 



off_02_BC60_01_spr_T:
- - - - - - 0x00FC70 03:BC60: C3        .byte $C3   ; 01
- - - - - - 0x00FC71 03:BC61: C4        .byte $C4   ; 02
- - - - - - 0x00FC72 03:BC62: C5        .byte $C5   ; 03
- - - - - - 0x00FC73 03:BC63: 61        .byte $61   ; 04
- - - - - - 0x00FC74 03:BC64: 60        .byte $60   ; 05
- - - - - - 0x00FC75 03:BC65: C2        .byte $C2   ; 06
- - - - - - 0x00FC76 03:BC66: 71        .byte $71   ; 07
- - - - - - 0x00FC77 03:BC67: 70        .byte $70   ; 08



off_02_BC68_02_spr_XY:
- - - - - - 0x00FC78 03:BC68: E3        .byte $E3, $14   ; 01
- - - - - - 0x00FC7A 03:BC6A: EB        .byte $EB, $15   ; 02
- - - - - - 0x00FC7C 03:BC6C: F3        .byte $F3, $15   ; 03
- - - - - - 0x00FC7E 03:BC6E: E0        .byte $E0, $0C   ; 04
- - - - - - 0x00FC80 03:BC70: E8        .byte $E8, $0C   ; 05
- - - - - - 0x00FC82 03:BC72: EB        .byte $EB, $0D   ; 06
- - - - - - 0x00FC84 03:BC74: E0        .byte $E0, $04   ; 07
- - - - - - 0x00FC86 03:BC76: E8        .byte $E8, $04   ; 08



sub_06_BC78_02:
- D 1 - I - 0x00FC88 03:BC78: 02        .byte con_sub_02, $0A   ; 
- D 1 - I - 0x00FC8A 03:BC7A: 94 BC     .word off_02_BC94_00_spr_A
- D 1 - I - 0x00FC8C 03:BC7C: 8A BC     .word off_02_BC8A_01_spr_T
- D 1 - I - 0x00FC8E 03:BC7E: B2 BC     .word off_02_BCB2_02_spr_XY
- D 1 - I - 0x00FC90 03:BC80: 00        .byte con_sub_00   ; 



_off030_BC81_58:
sub_06_BC81_02:
- - - - - - 0x00FC91 03:BC81: 02        .byte con_sub_02, $0A   ; 
- - - - - - 0x00FC93 03:BC83: 94 BC     .word off_02_BC94_00_spr_A
- - - - - - 0x00FC95 03:BC85: 8A BC     .word off_02_BC8A_01_spr_T
- - - - - - 0x00FC97 03:BC87: 9E BC     .word off_02_BC9E_02_spr_XY
- - - - - - 0x00FC99 03:BC89: 00        .byte con_sub_00   ; 



off_02_BC8A_01_spr_T:
- D 1 - I - 0x00FC9A 03:BC8A: 01        .byte $01   ; 01
- D 1 - I - 0x00FC9B 03:BC8B: 25        .byte $25   ; 02
- D 1 - I - 0x00FC9C 03:BC8C: 46        .byte $46   ; 03
- D 1 - I - 0x00FC9D 03:BC8D: 34        .byte $34   ; 04
- D 1 - I - 0x00FC9E 03:BC8E: 56        .byte $56   ; 05
- D 1 - I - 0x00FC9F 03:BC8F: 02        .byte $02   ; 06
- D 1 - I - 0x00FCA0 03:BC90: 61        .byte $61   ; 07
- D 1 - I - 0x00FCA1 03:BC91: 60        .byte $60   ; 08
- D 1 - I - 0x00FCA2 03:BC92: 71        .byte $71   ; 09
- D 1 - I - 0x00FCA3 03:BC93: 70        .byte $70   ; 0A



off_02_BC94_00_spr_A:
- D 1 - I - 0x00FCA4 03:BC94: 42        .byte $42   ; 01
- D 1 - I - 0x00FCA5 03:BC95: 42        .byte $42   ; 02
- D 1 - I - 0x00FCA6 03:BC96: 02        .byte $02   ; 03
- D 1 - I - 0x00FCA7 03:BC97: 42        .byte $42   ; 04
- D 1 - I - 0x00FCA8 03:BC98: 02        .byte $02   ; 05
- D 1 - I - 0x00FCA9 03:BC99: 42        .byte $42   ; 06
- D 1 - I - 0x00FCAA 03:BC9A: 42        .byte $42   ; 07
- D 1 - I - 0x00FCAB 03:BC9B: 42        .byte $42   ; 08
- D 1 - I - 0x00FCAC 03:BC9C: 42        .byte $42   ; 09
- D 1 - I - 0x00FCAD 03:BC9D: 42        .byte $42   ; 0A



off_02_BC9E_02_spr_XY:
- - - - - - 0x00FCAE 03:BC9E: F5        .byte $F5, $24   ; 01
- - - - - - 0x00FCB0 03:BCA0: FD        .byte $FD, $24   ; 02
- - - - - - 0x00FCB2 03:BCA2: F4        .byte $F4, $1C   ; 03
- - - - - - 0x00FCB4 03:BCA4: FC        .byte $FC, $1C   ; 04
- - - - - - 0x00FCB6 03:BCA6: F2        .byte $F2, $14   ; 05
- - - - - - 0x00FCB8 03:BCA8: FA        .byte $FA, $14   ; 06
- - - - - - 0x00FCBA 03:BCAA: F2        .byte $F2, $0C   ; 07
- - - - - - 0x00FCBC 03:BCAC: FA        .byte $FA, $0C   ; 08
- - - - - - 0x00FCBE 03:BCAE: F2        .byte $F2, $04   ; 09
- - - - - - 0x00FCC0 03:BCB0: FA        .byte $FA, $04   ; 0A



off_02_BCB2_02_spr_XY:
- D 1 - I - 0x00FCC2 03:BCB2: E1        .byte $E1, $24   ; 01
- D 1 - I - 0x00FCC4 03:BCB4: E9        .byte $E9, $24   ; 02
- D 1 - I - 0x00FCC6 03:BCB6: E0        .byte $E0, $1C   ; 03
- D 1 - I - 0x00FCC8 03:BCB8: E8        .byte $E8, $1C   ; 04
- D 1 - I - 0x00FCCA 03:BCBA: DE        .byte $DE, $14   ; 05
- D 1 - I - 0x00FCCC 03:BCBC: E6        .byte $E6, $14   ; 06
- D 1 - I - 0x00FCCE 03:BCBE: DE        .byte $DE, $0C   ; 07
- D 1 - I - 0x00FCD0 03:BCC0: E6        .byte $E6, $0C   ; 08
- D 1 - I - 0x00FCD2 03:BCC2: DE        .byte $DE, $04   ; 09
- D 1 - I - 0x00FCD4 03:BCC4: E6        .byte $E6, $04   ; 0A



_off030_BCC6_59:
sub_06_BCC6_02:
- - - - - - 0x00FCD6 03:BCC6: 02        .byte con_sub_02, $0A   ; 
- - - - - - 0x00FCD8 03:BCC8: 94 BC     .word off_02_BC94_00_spr_A
- - - - - - 0x00FCDA 03:BCCA: 8A BC     .word off_02_BC8A_01_spr_T
- - - - - - 0x00FCDC 03:BCCC: CF BC     .word off_02_BCCF_02_spr_XY
- - - - - - 0x00FCDE 03:BCCE: 00        .byte con_sub_00   ; 



off_02_BCCF_02_spr_XY:
- - - - - - 0x00FCDF 03:BCCF: F9        .byte $F9, $24   ; 01
- - - - - - 0x00FCE1 03:BCD1: 01        .byte $01, $24   ; 02
- - - - - - 0x00FCE3 03:BCD3: F7        .byte $F7, $1C   ; 03
- - - - - - 0x00FCE5 03:BCD5: FF        .byte $FF, $1C   ; 04
- - - - - - 0x00FCE7 03:BCD7: F4        .byte $F4, $14   ; 05
- - - - - - 0x00FCE9 03:BCD9: FC        .byte $FC, $14   ; 06
- - - - - - 0x00FCEB 03:BCDB: F1        .byte $F1, $0C   ; 07
- - - - - - 0x00FCED 03:BCDD: F9        .byte $F9, $0C   ; 08
- - - - - - 0x00FCEF 03:BCDF: F0        .byte $F0, $04   ; 09
- - - - - - 0x00FCF1 03:BCE1: F8        .byte $F8, $04   ; 0A



_off030_BCE3_5A:
- - - - - - 0x00FCF3 03:BCE3: 02        .byte con_sub_02, $09   ; 
- - - - - - 0x00FCF5 03:BCE5: F5 BC     .word off_02_BCF5_00_spr_A
- - - - - - 0x00FCF7 03:BCE7: EC BC     .word off_02_BCEC_01_spr_T
- - - - - - 0x00FCF9 03:BCE9: FE BC     .word off_02_BCFE_02_spr_XY
- - - - - - 0x00FCFB 03:BCEB: 00        .byte con_sub_00   ; 



off_02_BCEC_01_spr_T:
- - - - - - 0x00FCFC 03:BCEC: 40        .byte $40   ; 01
- - - - - - 0x00FCFD 03:BCED: 72        .byte $72   ; 02
- - - - - - 0x00FCFE 03:BCEE: 73        .byte $73   ; 03
- - - - - - 0x00FCFF 03:BCEF: 62        .byte $62   ; 04
- - - - - - 0x00FD00 03:BCF0: 63        .byte $63   ; 05
- - - - - - 0x00FD01 03:BCF1: 52        .byte $52   ; 06
- - - - - - 0x00FD02 03:BCF2: 53        .byte $53   ; 07
- - - - - - 0x00FD03 03:BCF3: 32        .byte $32   ; 08
- - - - - - 0x00FD04 03:BCF4: 33        .byte $33   ; 09



off_02_BCF5_00_spr_A:
- - - - - - 0x00FD05 03:BCF5: 82        .byte $82   ; 01
- - - - - - 0x00FD06 03:BCF6: 82        .byte $82   ; 02
- - - - - - 0x00FD07 03:BCF7: 82        .byte $82   ; 03
- - - - - - 0x00FD08 03:BCF8: 82        .byte $82   ; 04
- - - - - - 0x00FD09 03:BCF9: 82        .byte $82   ; 05
- - - - - - 0x00FD0A 03:BCFA: 82        .byte $82   ; 06
- - - - - - 0x00FD0B 03:BCFB: 82        .byte $82   ; 07
- - - - - - 0x00FD0C 03:BCFC: 82        .byte $82   ; 08
- - - - - - 0x00FD0D 03:BCFD: 82        .byte $82   ; 09



off_02_BCFE_02_spr_XY:
- - - - - - 0x00FD0E 03:BCFE: F2        .byte $F2, $23   ; 01
- - - - - - 0x00FD10 03:BD00: EA        .byte $EA, $1B   ; 02
- - - - - - 0x00FD12 03:BD02: F2        .byte $F2, $1B   ; 03
- - - - - - 0x00FD14 03:BD04: FA        .byte $FA, $1B   ; 04
- - - - - - 0x00FD16 03:BD06: 02        .byte $02, $1B   ; 05
- - - - - - 0x00FD18 03:BD08: FA        .byte $FA, $13   ; 06
- - - - - - 0x00FD1A 03:BD0A: 02        .byte $02, $13   ; 07
- - - - - - 0x00FD1C 03:BD0C: FF        .byte $FF, $0B   ; 08
- - - - - - 0x00FD1E 03:BD0E: 07        .byte $07, $0B   ; 09



_off030_BD10_5B:
; bzk bug probably, 09 instead of 08
- - - - - - 0x00FD20 03:BD10: 02        .byte con_sub_02, $09   ; 
- - - - - - 0x00FD22 03:BD12: F5 BC     .word off_02_BCF5_00_spr_A
- - - - - - 0x00FD24 03:BD14: 19 BD     .word off_02_BD19_01_spr_T
- - - - - - 0x00FD26 03:BD16: 21 BD     .word off_02_BD21_02_spr_XY
- - - - - - 0x00FD28 03:BD18: 00        .byte con_sub_00   ; 



off_02_BD19_01_spr_T:
- - - - - - 0x00FD29 03:BD19: 40        .byte $40   ; 01
- - - - - - 0x00FD2A 03:BD1A: 72        .byte $72   ; 02
- - - - - - 0x00FD2B 03:BD1B: 73        .byte $73   ; 03
- - - - - - 0x00FD2C 03:BD1C: 15        .byte $15   ; 04
- - - - - - 0x00FD2D 03:BD1D: 10        .byte $10   ; 05
- - - - - - 0x00FD2E 03:BD1E: 11        .byte $11   ; 06
- - - - - - 0x00FD2F 03:BD1F: 00        .byte $00   ; 07
- - - - - - 0x00FD30 03:BD20: 01        .byte $01   ; 08



off_02_BD21_02_spr_XY:
- - - - - - 0x00FD31 03:BD21: FA        .byte $FA, $1B   ; 01
- - - - - - 0x00FD33 03:BD23: F4        .byte $F4, $13   ; 02
- - - - - - 0x00FD35 03:BD25: FC        .byte $FC, $13   ; 03
- - - - - - 0x00FD37 03:BD27: 02        .byte $02, $14   ; 04
- - - - - - 0x00FD39 03:BD29: FC        .byte $FC, $0C   ; 05
- - - - - - 0x00FD3B 03:BD2B: 04        .byte $04, $0C   ; 06
- - - - - - 0x00FD3D 03:BD2D: FC        .byte $FC, $04   ; 07
- - - - - - 0x00FD3F 03:BD2F: 04        .byte $04, $04   ; 08



_off030_BD31_5C:
- - - - - - 0x00FD41 03:BD31: 02        .byte con_sub_02, $08   ; 
- - - - - - 0x00FD43 03:BD33: 73 BB     .word off_02_BB73_00_spr_A
- - - - - - 0x00FD45 03:BD35: 3A BD     .word off_02_BD3A_01_spr_T
- - - - - - 0x00FD47 03:BD37: 42 BD     .word off_02_BD42_02_spr_XY
- - - - - - 0x00FD49 03:BD39: 00        .byte con_sub_00   ; 



off_02_BD3A_01_spr_T:
- D 1 - I - 0x00FD4A 03:BD3A: C3        .byte $C3   ; 01
- D 1 - I - 0x00FD4B 03:BD3B: C4        .byte $C4   ; 02
- D 1 - I - 0x00FD4C 03:BD3C: C5        .byte $C5   ; 03
- D 1 - I - 0x00FD4D 03:BD3D: 61        .byte $61   ; 04
- D 1 - I - 0x00FD4E 03:BD3E: 60        .byte $60   ; 05
- D 1 - I - 0x00FD4F 03:BD3F: C2        .byte $C2   ; 06
- D 1 - I - 0x00FD50 03:BD40: 71        .byte $71   ; 07
- D 1 - I - 0x00FD51 03:BD41: 70        .byte $70   ; 08



off_02_BD42_02_spr_XY:
- - - - - - 0x00FD52 03:BD42: 01        .byte $01, $14   ; 01
- - - - - - 0x00FD54 03:BD44: 09        .byte $09, $15   ; 02
- - - - - - 0x00FD56 03:BD46: 11        .byte $11, $15   ; 03
- - - - - - 0x00FD58 03:BD48: FE        .byte $FE, $0C   ; 04
- - - - - - 0x00FD5A 03:BD4A: 06        .byte $06, $0C   ; 05
- - - - - - 0x00FD5C 03:BD4C: 09        .byte $09, $0D   ; 06
- - - - - - 0x00FD5E 03:BD4E: FE        .byte $FE, $04   ; 07
- - - - - - 0x00FD60 03:BD50: 06        .byte $06, $04   ; 08



_off030_BD52_5D:
sub_06_BD52_02:
- D 1 - I - 0x00FD62 03:BD52: 02        .byte con_sub_02, $08   ; 
- D 1 - I - 0x00FD64 03:BD54: 73 BB     .word off_02_BB73_00_spr_A
- D 1 - I - 0x00FD66 03:BD56: 3A BD     .word off_02_BD3A_01_spr_T
- D 1 - I - 0x00FD68 03:BD58: 5B BD     .word off_02_BD5B_02_spr_XY
- D 1 - I - 0x00FD6A 03:BD5A: 00        .byte con_sub_00   ; 






off_02_BD5B_02_spr_XY:
- D 1 - I - 0x00FD6B 03:BD5B: E3        .byte $E3, $19   ; 01
- D 1 - I - 0x00FD6D 03:BD5D: EB        .byte $EB, $19   ; 02
- D 1 - I - 0x00FD6F 03:BD5F: F3        .byte $F3, $16   ; 03
- D 1 - I - 0x00FD71 03:BD61: E1        .byte $E1, $11   ; 04
- D 1 - I - 0x00FD73 03:BD63: E9        .byte $E9, $11   ; 05
- D 1 - I - 0x00FD75 03:BD65: EB        .byte $EB, $11   ; 06
- D 1 - I - 0x00FD77 03:BD67: E1        .byte $E1, $09   ; 07
- D 1 - I - 0x00FD79 03:BD69: E9        .byte $E9, $09   ; 08



sub_06_BD6B_01:
- D 1 - I - 0x00FD7B 03:BD6B: 02        .byte con_sub_02, $03   ; 
- D 1 - I - 0x00FD7D 03:BD6D: D4 BD     .word off_02_BDD4_00_spr_A
- D 1 - I - 0x00FD7F 03:BD6F: 74 BD     .word off_02_BD74_01_spr_T
- D 1 - I - 0x00FD81 03:BD71: 77 BD     .word off_02_BD77_02_spr_XY
- D 1 - I - 0x00FD83 03:BD73: 00        .byte con_sub_00   ; 



off_01_BD74_spr_T:
off_02_BD74_01_spr_T:
- D 1 - I - 0x00FD84 03:BD74: 9F        .byte $9F   ; 01
- D 1 - I - 0x00FD85 03:BD75: 8F        .byte $8F   ; 02
- D 1 - I - 0x00FD86 03:BD76: 8D        .byte $8D   ; 03



off_02_BD77_02_spr_XY:
- D 1 - I - 0x00FD87 03:BD77: 07        .byte $07, $10   ; 01
- D 1 - I - 0x00FD89 03:BD79: 08        .byte $08, $14   ; 02
- D 1 - I - 0x00FD8B 03:BD7B: 08        .byte $08, $08   ; 03



sub_06_BD7D_01:
- D 1 - I - 0x00FD8D 03:BD7D: 02        .byte con_sub_02, $03   ; 
- D 1 - I - 0x00FD8F 03:BD7F: D4 BD     .word off_02_BDD4_00_spr_A
- D 1 - I - 0x00FD91 03:BD81: 74 BD     .word off_02_BD74_01_spr_T
- D 1 - I - 0x00FD93 03:BD83: 86 BD     .word off_02_BD86_02_spr_XY
- D 1 - I - 0x00FD95 03:BD85: 00        .byte con_sub_00   ; 



off_02_BD86_02_spr_XY:
- D 1 - I - 0x00FD96 03:BD86: 08        .byte $08, $0F   ; 01
- D 1 - I - 0x00FD98 03:BD88: 09        .byte $09, $13   ; 02
- D 1 - I - 0x00FD9A 03:BD8A: 09        .byte $09, $07   ; 03



sub_06_BD8C_01:
- - - - - - 0x00FD9C 03:BD8C: 02        .byte con_sub_02, $03   ; 
- - - - - - 0x00FD9E 03:BD8E: D4 BD     .word off_02_BDD4_00_spr_A
- - - - - - 0x00FDA0 03:BD90: 74 BD     .word off_02_BD74_01_spr_T
- - - - - - 0x00FDA2 03:BD92: 95 BD     .word off_02_BD95_02_spr_XY
- - - - - - 0x00FDA4 03:BD94: 00        .byte con_sub_00   ; 



off_02_BD95_02_spr_XY:
- - - - - - 0x00FDA5 03:BD95: 06        .byte $06, $13   ; 01
- - - - - - 0x00FDA7 03:BD97: 06        .byte $06, $17   ; 02
- - - - - - 0x00FDA9 03:BD99: 07        .byte $07, $0B   ; 03



sub_06_BD9B_01:
- D 1 - I - 0x00FDAB 03:BD9B: 02        .byte con_sub_02, $03   ; 
- D 1 - I - 0x00FDAD 03:BD9D: A7 BD     .word off_02_BDA7_00_spr_A
- D 1 - I - 0x00FDAF 03:BD9F: A4 BD     .word off_02_BDA4_01_spr_T
- D 1 - I - 0x00FDB1 03:BDA1: AA BD     .word off_02_BDAA_02_spr_XY
- D 1 - I - 0x00FDB3 03:BDA3: 00        .byte con_sub_00   ; 



off_02_BDA4_01_spr_T:
- D 1 - I - 0x00FDB4 03:BDA4: 8D        .byte $8D   ; 01
- D 1 - I - 0x00FDB5 03:BDA5: 8F        .byte $8F   ; 02
- D 1 - I - 0x00FDB6 03:BDA6: 8F        .byte $8F   ; 03



off_02_BDA7_00_spr_A:
- D 1 - I - 0x00FDB7 03:BDA7: 03        .byte $03   ; 01
- D 1 - I - 0x00FDB8 03:BDA8: C3        .byte $C3   ; 02
- D 1 - I - 0x00FDB9 03:BDA9: 03        .byte $03   ; 03



off_02_BDAA_02_spr_XY:
- D 1 - I - 0x00FDBA 03:BDAA: 0E        .byte $0E, $03   ; 01
- D 1 - I - 0x00FDBC 03:BDAC: 07        .byte $07, $05   ; 02
- D 1 - I - 0x00FDBE 03:BDAE: 06        .byte $06, $0C   ; 03



sub_06_BDB0_01:
- D 1 - I - 0x00FDC0 03:BDB0: 02        .byte con_sub_02, $03   ; 
- D 1 - I - 0x00FDC2 03:BDB2: D4 BD     .word off_02_BDD4_00_spr_A
- D 1 - I - 0x00FDC4 03:BDB4: 74 BD     .word off_02_BD74_01_spr_T
- D 1 - I - 0x00FDC6 03:BDB6: 86 BD     .word off_02_BD86_02_spr_XY
- D 1 - I - 0x00FDC8 03:BDB8: 00        .byte con_sub_00   ; 



sub_06_BDB9_01:
- D 1 - I - 0x00FDC9 03:BDB9: 02        .byte con_sub_02, $03   ; 
- D 1 - I - 0x00FDCB 03:BDBB: D4 BD     .word off_02_BDD4_00_spr_A
- D 1 - I - 0x00FDCD 03:BDBD: 74 BD     .word off_02_BD74_01_spr_T
- D 1 - I - 0x00FDCF 03:BDBF: C2 BD     .word off_02_BDC2_02_spr_XY
- D 1 - I - 0x00FDD1 03:BDC1: 00        .byte con_sub_00   ; 



off_02_BDC2_02_spr_XY:
- D 1 - I - 0x00FDD2 03:BDC2: FC        .byte $FC, $0D   ; 01
- D 1 - I - 0x00FDD4 03:BDC4: FD        .byte $FD, $11   ; 02
- D 1 - I - 0x00FDD6 03:BDC6: FD        .byte $FD, $05   ; 03



sub_06_BDC8_01:
- - - - - - 0x00FDD8 03:BDC8: 02        .byte con_sub_02, $03   ; 
- - - - - - 0x00FDDA 03:BDCA: D7 BD     .word off_02_BDD7_00_spr_A
- - - - - - 0x00FDDC 03:BDCC: D1 BD     .word off_02_BDD1_01_spr_T
- - - - - - 0x00FDDE 03:BDCE: DA BD     .word off_02_BDDA_02_spr_XY
- - - - - - 0x00FDE0 03:BDD0: 00        .byte con_sub_00   ; 



off_02_BDD1_01_spr_T:
- - - - - - 0x00FDE1 03:BDD1: 8F        .byte $8F   ; 01
- - - - - - 0x00FDE2 03:BDD2: 9F        .byte $9F   ; 02
- - - - - - 0x00FDE3 03:BDD3: 8D        .byte $8D   ; 03



off_02_BDD4_00_spr_A:
- D 1 - I - 0x00FDE4 03:BDD4: 43        .byte $43   ; 01
- D 1 - I - 0x00FDE5 03:BDD5: 03        .byte $03   ; 02
- D 1 - I - 0x00FDE6 03:BDD6: 43        .byte $43   ; 03



off_02_BDD7_00_spr_A:
- - - - - - 0x00FDE7 03:BDD7: 03        .byte $03   ; 01
- - - - - - 0x00FDE8 03:BDD8: 43        .byte $43   ; 02
- - - - - - 0x00FDE9 03:BDD9: 03        .byte $03   ; 03



off_02_BDDA_02_spr_XY:
- - - - - - 0x00FDEA 03:BDDA: 12        .byte $12, $23   ; 01
- - - - - - 0x00FDEC 03:BDDC: 11        .byte $11, $1B   ; 02
- - - - - - 0x00FDEE 03:BDDE: 10        .byte $10, $13   ; 03



sub_06_BDE0_01:
- D 1 - I - 0x00FDF0 03:BDE0: 01        .byte con_sub_01, $04, $03   ; 
- D 1 - I - 0x00FDF3 03:BDE3: E8 BD     .word off_01_BDE8_spr_T
- D 1 - I - 0x00FDF5 03:BDE5: EC BD     .word off_01_BDEC_spr_XY
- D 1 - I - 0x00FDF7 03:BDE7: 00        .byte con_sub_00   ; 



off_01_BDE8_spr_T:
- D 1 - I - 0x00FDF8 03:BDE8: 8E        .byte $8E   ; 01
- D 1 - I - 0x00FDF9 03:BDE9: 8F        .byte $8F   ; 02
- D 1 - I - 0x00FDFA 03:BDEA: 8D        .byte $8D   ; 03
- D 1 - I - 0x00FDFB 03:BDEB: 8E        .byte $8E   ; 04



off_01_BDEC_spr_XY:
- D 1 - I - 0x00FDFC 03:BDEC: 13        .byte $13, $22   ; 01
- D 1 - I - 0x00FDFE 03:BDEE: 1B        .byte $1B, $22   ; 02
- D 1 - I - 0x00FE00 03:BDF0: 23        .byte $23, $24   ; 03
- D 1 - I - 0x00FE02 03:BDF2: 1E        .byte $1E, $1E   ; 04



sub_06_BDF4_01:
- D 1 - I - 0x00FE04 03:BDF4: 01        .byte con_sub_01, $02, $83   ; 
- D 1 - I - 0x00FE07 03:BDF7: FC BD     .word off_01_BDFC_spr_T
- D 1 - I - 0x00FE09 03:BDF9: FE BD     .word off_01_BDFE_spr_XY
- D 1 - I - 0x00FE0B 03:BDFB: 00        .byte con_sub_00   ; 



off_01_BDFC_spr_T:
- D 1 - I - 0x00FE0C 03:BDFC: 8D        .byte $8D   ; 01
- D 1 - I - 0x00FE0D 03:BDFD: 9E        .byte $9E   ; 02



off_01_BDFE_spr_XY:
- D 1 - I - 0x00FE0E 03:BDFE: E5        .byte $E5, $1B   ; 01
- D 1 - I - 0x00FE10 03:BE00: ED        .byte $ED, $17   ; 02



sub_06_BE02_01:
- D 1 - I - 0x00FE12 03:BE02: 02        .byte con_sub_02, $02   ; 
- D 1 - I - 0x00FE14 03:BE04: 0D BE     .word off_02_BE0D_00_spr_A
- D 1 - I - 0x00FE16 03:BE06: 0B BE     .word off_02_BE0B_01_spr_T
- D 1 - I - 0x00FE18 03:BE08: 0F BE     .word off_02_BE0F_02_spr_XY
- D 1 - I - 0x00FE1A 03:BE0A: 00        .byte con_sub_00   ; 



off_02_BE0B_01_spr_T:
- D 1 - I - 0x00FE1B 03:BE0B: 8F        .byte $8F   ; 01
- D 1 - I - 0x00FE1C 03:BE0C: 8D        .byte $8D   ; 02



off_02_BE0D_00_spr_A:
- D 1 - I - 0x00FE1D 03:BE0D: 83        .byte $83   ; 01
- D 1 - I - 0x00FE1E 03:BE0E: 03        .byte $03   ; 02



off_02_BE0F_02_spr_XY:
- D 1 - I - 0x00FE1F 03:BE0F: F0        .byte $F0, $0B   ; 01
- D 1 - I - 0x00FE21 03:BE11: ED        .byte $ED, $03   ; 02



sub_06_BE13_03:
- - - - - - 0x00FE23 03:BE13: 01        .byte con_sub_01, $01, $03   ; 
- - - - - - 0x00FE26 03:BE16: 58 B5     .word off_01_B558_spr_T
- - - - - - 0x00FE28 03:BE18: 1B BE     .word off_01_BE1B_spr_XY
- - - - - - 0x00FE2A 03:BE1A: 00        .byte con_sub_00   ; 



off_01_BE1B_spr_XY:
- - - - - - 0x00FE2B 03:BE1B: 0E        .byte $0E, $27   ; 01



sub_06_BE1D_01:
- D 1 - I - 0x00FE2D 03:BE1D: 02        .byte con_sub_02, $03   ; 
- D 1 - I - 0x00FE2F 03:BE1F: D4 BD     .word off_02_BDD4_00_spr_A
- D 1 - I - 0x00FE31 03:BE21: 74 BD     .word off_02_BD74_01_spr_T
- D 1 - I - 0x00FE33 03:BE23: 26 BE     .word off_02_BE26_02_spr_XY
- D 1 - I - 0x00FE35 03:BE25: 00        .byte con_sub_00   ; 



off_02_BE26_02_spr_XY:
- D 1 - I - 0x00FE36 03:BE26: 09        .byte $09, $0F   ; 01
- D 1 - I - 0x00FE38 03:BE28: 0A        .byte $0A, $13   ; 02
- D 1 - I - 0x00FE3A 03:BE2A: 0A        .byte $0A, $07   ; 03



sub_05_BE2C:
- D 1 - I - 0x00FE3C 03:BE2C: 01        .byte con_sub_01, $04, $02   ; 
- D 1 - I - 0x00FE3F 03:BE2F: 96 A8     .word off_01_A896_spr_T
- D 1 - I - 0x00FE41 03:BE31: 34 BE     .word off_01_BE34_spr_XY
- D 1 - I - 0x00FE43 03:BE33: 00        .byte con_sub_00   ; 



off_01_BE34_spr_XY:
- D 1 - I - 0x00FE44 03:BE34: FE        .byte $FE, $0D   ; 01
- D 1 - I - 0x00FE46 03:BE36: 06        .byte $06, $0D   ; 02
- D 1 - I - 0x00FE48 03:BE38: FE        .byte $FE, $05   ; 03
- D 1 - I - 0x00FE4A 03:BE3A: 06        .byte $06, $05   ; 04



_off030_BE3C_1A:
- D 1 - I - 0x00FE4C 03:BE3C: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- - - - - - 0x00FE4E 03:BE3E: CE 86     .word sub_06_86CE_00
- D 1 - I - 0x00FE50 03:BE40: CE 86     .word sub_06_86CE_01
- D 1 - I - 0x00FE52 03:BE42: 8B BB     .word sub_06_BB8B_02
- D 1 - I - 0x00FE54 03:BE44: B3 AC     .word sub_06_ACB3_03
- - - - - - 0x00FE56 03:BE46: B3 87     .word sub_06_87B3_04
@end:
- D 1 - I - 0x00FE58 03:BE48: 05        .byte con_sub_05   ; 
- D 1 - I - 0x00FE59 03:BE49: F1 95     .word sub_05_95F1
- D 1 - I - 0x00FE5B 03:BE4B: 00        .byte con_sub_00   ; 



_off030_BE4C_1B:
- D 1 - I - 0x00FE5C 03:BE4C: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- - - - - - 0x00FE5E 03:BE4E: F7 86     .word sub_06_86F7_00
- D 1 - I - 0x00FE60 03:BE50: F7 86     .word sub_06_86F7_01
- D 1 - I - 0x00FE62 03:BE52: AC BB     .word sub_06_BBAC_02
- D 1 - I - 0x00FE64 03:BE54: CC AC     .word sub_06_ACCC_03
- - - - - - 0x00FE66 03:BE56: A0 87     .word sub_06_87A0_04
@end:
- D 1 - I - 0x00FE68 03:BE58: 04        .byte con_sub_04, $0C, $07   ; 
- D 1 - I - 0x00FE6B 03:BE5B: BB 8E     .word off_04_8EBB_00_spr_A
- - - - - - 0x00FE6D 03:BE5D: C7 8E     .word off_04_8EC7_01_spr_A
- D 1 - I - 0x00FE6F 03:BE5F: AF 8E     .word off_04_8EAF_02_spr_T
- D 1 - I - 0x00FE71 03:BE61: D3 8E     .word off_04_8ED3_03_spr_XY
- D 1 - I - 0x00FE73 03:BE63: 00        .byte con_sub_00   ; 



_off030_BE64_04:
- D 1 - I - 0x00FE74 03:BE64: 01        .byte con_sub_01, $0A, $03   ; 
- D 1 - I - 0x00FE77 03:BE67: 6C BE     .word off_01_BE6C_spr_T
- D 1 - I - 0x00FE79 03:BE69: 76 BE     .word off_01_BE76_spr_XY
- D 1 - I - 0x00FE7B 03:BE6B: 00        .byte con_sub_00   ; 



off_01_BE6C_spr_T:
- D 1 - I - 0x00FE7C 03:BE6C: AD        .byte $AD   ; 01
- D 1 - I - 0x00FE7D 03:BE6D: BD        .byte $BD   ; 02
- D 1 - I - 0x00FE7E 03:BE6E: AD        .byte $AD   ; 03
- D 1 - I - 0x00FE7F 03:BE6F: BD        .byte $BD   ; 04
- D 1 - I - 0x00FE80 03:BE70: BE        .byte $BE   ; 05
- D 1 - I - 0x00FE81 03:BE71: CE        .byte $CE   ; 06
- D 1 - I - 0x00FE82 03:BE72: 9E        .byte $9E   ; 07
- D 1 - I - 0x00FE83 03:BE73: AE        .byte $AE   ; 08
- D 1 - I - 0x00FE84 03:BE74: 9F        .byte $9F   ; 09
- D 1 - I - 0x00FE85 03:BE75: 9F        .byte $9F   ; 0A



off_02_BE76_02_spr_XY:
off_01_BE76_spr_XY:
- D 1 - I - 0x00FE86 03:BE76: 00        .byte $00, $04   ; 01
- D 1 - I - 0x00FE88 03:BE78: 00        .byte $00, $FC   ; 02
- D 1 - I - 0x00FE8A 03:BE7A: 08        .byte $08, $04   ; 03
- D 1 - I - 0x00FE8C 03:BE7C: 08        .byte $08, $FC   ; 04
- D 1 - I - 0x00FE8E 03:BE7E: 10        .byte $10, $04   ; 05
- D 1 - I - 0x00FE90 03:BE80: 10        .byte $10, $FC   ; 06
- D 1 - I - 0x00FE92 03:BE82: 18        .byte $18, $04   ; 07
- D 1 - I - 0x00FE94 03:BE84: 18        .byte $18, $FC   ; 08
- D 1 - I - 0x00FE96 03:BE86: 20        .byte $20, $04   ; 09
- D 1 - I - 0x00FE98 03:BE88: 20        .byte $20, $FC   ; 0A



_off030_BE8A_00:
- D 1 - I - 0x00FE9A 03:BE8A: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00FE9D 03:BE8D: 92 BE     .word off_01_BE92_spr_T
- D 1 - I - 0x00FE9F 03:BE8F: 76 BE     .word off_01_BE76_spr_XY
- D 1 - I - 0x00FEA1 03:BE91: 00        .byte con_sub_00   ; 



off_01_BE92_spr_T:
- D 1 - I - 0x00FEA2 03:BE92: 9F        .byte $9F   ; 01
- D 1 - I - 0x00FEA3 03:BE93: 9F        .byte $9F   ; 02



_off030_BE94_01:
- D 1 - I - 0x00FEA4 03:BE94: 01        .byte con_sub_01, $04, $03   ; 
- D 1 - I - 0x00FEA7 03:BE97: 9C BE     .word off_01_BE9C_spr_T
- D 1 - I - 0x00FEA9 03:BE99: 76 BE     .word off_01_BE76_spr_XY
- D 1 - I - 0x00FEAB 03:BE9B: 00        .byte con_sub_00   ; 



off_01_BE9C_spr_T:
- D 1 - I - 0x00FEAC 03:BE9C: 9E        .byte $9E   ; 01
- D 1 - I - 0x00FEAD 03:BE9D: AE        .byte $AE   ; 02
- D 1 - I - 0x00FEAE 03:BE9E: 9F        .byte $9F   ; 03
- D 1 - I - 0x00FEAF 03:BE9F: 9F        .byte $9F   ; 04



_off030_BEA0_02:
- D 1 - I - 0x00FEB0 03:BEA0: 01        .byte con_sub_01, $06, $03   ; 
- D 1 - I - 0x00FEB3 03:BEA3: A8 BE     .word off_01_BEA8_spr_T
- D 1 - I - 0x00FEB5 03:BEA5: 76 BE     .word off_01_BE76_spr_XY
- D 1 - I - 0x00FEB7 03:BEA7: 00        .byte con_sub_00   ; 



off_01_BEA8_spr_T:
- D 1 - I - 0x00FEB8 03:BEA8: BE        .byte $BE   ; 01
- D 1 - I - 0x00FEB9 03:BEA9: CE        .byte $CE   ; 02
- D 1 - I - 0x00FEBA 03:BEAA: 9E        .byte $9E   ; 03
- D 1 - I - 0x00FEBB 03:BEAB: AE        .byte $AE   ; 04
- D 1 - I - 0x00FEBC 03:BEAC: 9F        .byte $9F   ; 05
- D 1 - I - 0x00FEBD 03:BEAD: 9F        .byte $9F   ; 06



_off030_BEAE_03:
- D 1 - I - 0x00FEBE 03:BEAE: 01        .byte con_sub_01, $08, $03   ; 
- D 1 - I - 0x00FEC1 03:BEB1: B6 BE     .word off_01_BEB6_spr_T
- D 1 - I - 0x00FEC3 03:BEB3: 76 BE     .word off_01_BE76_spr_XY
- D 1 - I - 0x00FEC5 03:BEB5: 00        .byte con_sub_00   ; 



off_01_BEB6_spr_T:
- D 1 - I - 0x00FEC6 03:BEB6: AD        .byte $AD   ; 01
- D 1 - I - 0x00FEC7 03:BEB7: BD        .byte $BD   ; 02
- D 1 - I - 0x00FEC8 03:BEB8: BE        .byte $BE   ; 03
- D 1 - I - 0x00FEC9 03:BEB9: CE        .byte $CE   ; 04
- D 1 - I - 0x00FECA 03:BEBA: 9E        .byte $9E   ; 05
- D 1 - I - 0x00FECB 03:BEBB: AE        .byte $AE   ; 06
- D 1 - I - 0x00FECC 03:BEBC: 9F        .byte $9F   ; 07
- D 1 - I - 0x00FECD 03:BEBD: 9F        .byte $9F   ; 08



_off030_BEBE_05:
- D 1 - I - 0x00FECE 03:BEBE: 01        .byte con_sub_01, $0A, $03   ; 
- D 1 - I - 0x00FED1 03:BEC1: C6 BE     .word off_01_BEC6_spr_T
- D 1 - I - 0x00FED3 03:BEC3: 76 BE     .word off_01_BE76_spr_XY
- D 1 - I - 0x00FED5 03:BEC5: 00        .byte con_sub_00   ; 



off_01_BEC6_spr_T:
- D 1 - I - 0x00FED6 03:BEC6: AD        .byte $AD   ; 01
- D 1 - I - 0x00FED7 03:BEC7: BD        .byte $BD   ; 02
- D 1 - I - 0x00FED8 03:BEC8: BE        .byte $BE   ; 03
- D 1 - I - 0x00FED9 03:BEC9: CE        .byte $CE   ; 04
- D 1 - I - 0x00FEDA 03:BECA: 9E        .byte $9E   ; 05
- D 1 - I - 0x00FEDB 03:BECB: AE        .byte $AE   ; 06
- D 1 - I - 0x00FEDC 03:BECC: 9E        .byte $9E   ; 07
- D 1 - I - 0x00FEDD 03:BECD: AE        .byte $AE   ; 08
- D 1 - I - 0x00FEDE 03:BECE: 9E        .byte $9E   ; 09
- D 1 - I - 0x00FEDF 03:BECF: AE        .byte $AE   ; 0A



_off030_BED0_06:
- D 1 - I - 0x00FEE0 03:BED0: 02        .byte con_sub_02, $0A   ; 
- D 1 - I - 0x00FEE2 03:BED2: E3 BE     .word off_02_BEE3_00_spr_A
- D 1 - I - 0x00FEE4 03:BED4: D9 BE     .word off_02_BED9_01_spr_T
- D 1 - I - 0x00FEE6 03:BED6: 76 BE     .word off_02_BE76_02_spr_XY
- D 1 - I - 0x00FEE8 03:BED8: 00        .byte con_sub_00   ; 



off_02_BED9_01_spr_T:
- D 1 - I - 0x00FEE9 03:BED9: 9E        .byte $9E   ; 01
- D 1 - I - 0x00FEEA 03:BEDA: AE        .byte $AE   ; 02
- D 1 - I - 0x00FEEB 03:BEDB: BE        .byte $BE   ; 03
- D 1 - I - 0x00FEEC 03:BEDC: CE        .byte $CE   ; 04
- D 1 - I - 0x00FEED 03:BEDD: 9E        .byte $9E   ; 05
- D 1 - I - 0x00FEEE 03:BEDE: AE        .byte $AE   ; 06
- D 1 - I - 0x00FEEF 03:BEDF: 9F        .byte $9F   ; 07
- D 1 - I - 0x00FEF0 03:BEE0: 9F        .byte $9F   ; 08
- D 1 - I - 0x00FEF1 03:BEE1: 9F        .byte $9F   ; 09
- D 1 - I - 0x00FEF2 03:BEE2: 9F        .byte $9F   ; 0A



off_02_BEE3_00_spr_A:
- D 1 - I - 0x00FEF3 03:BEE3: 43        .byte $43   ; 01
- D 1 - I - 0x00FEF4 03:BEE4: 43        .byte $43   ; 02
- D 1 - I - 0x00FEF5 03:BEE5: 03        .byte $03   ; 03
- D 1 - I - 0x00FEF6 03:BEE6: 43        .byte $43   ; 04
- D 1 - I - 0x00FEF7 03:BEE7: 03        .byte $03   ; 05
- D 1 - I - 0x00FEF8 03:BEE8: 03        .byte $03   ; 06
- D 1 - I - 0x00FEF9 03:BEE9: 03        .byte $03   ; 07
- D 1 - I - 0x00FEFA 03:BEEA: 43        .byte $43   ; 08
- D 1 - I - 0x00FEFB 03:BEEB: 03        .byte $03   ; 09
- D 1 - I - 0x00FEFC 03:BEEC: 43        .byte $43   ; 0A



_off030_BEED_07:
- D 1 - I - 0x00FEFD 03:BEED: 02        .byte con_sub_02, $06   ; 
- D 1 - I - 0x00FEFF 03:BEEF: FC BE     .word off_02_BEFC_00_spr_A
- D 1 - I - 0x00FF01 03:BEF1: F6 BE     .word off_02_BEF6_01_spr_T
- D 1 - I - 0x00FF03 03:BEF3: 76 BE     .word off_02_BE76_02_spr_XY
- D 1 - I - 0x00FF05 03:BEF5: 00        .byte con_sub_00   ; 



off_02_BEF6_01_spr_T:
- D 1 - I - 0x00FF06 03:BEF6: 9F        .byte $9F   ; 01
- D 1 - I - 0x00FF07 03:BEF7: 9F        .byte $9F   ; 02
- D 1 - I - 0x00FF08 03:BEF8: 9E        .byte $9E   ; 03
- D 1 - I - 0x00FF09 03:BEF9: AE        .byte $AE   ; 04
- D 1 - I - 0x00FF0A 03:BEFA: 9F        .byte $9F   ; 05
- D 1 - I - 0x00FF0B 03:BEFB: 9F        .byte $9F   ; 06



off_02_BEFC_00_spr_A:
- D 1 - I - 0x00FF0C 03:BEFC: 03        .byte $03   ; 01
- D 1 - I - 0x00FF0D 03:BEFD: C3        .byte $C3   ; 02
- D 1 - I - 0x00FF0E 03:BEFE: 03        .byte $03   ; 03
- D 1 - I - 0x00FF0F 03:BEFF: 43        .byte $43   ; 04
- D 1 - I - 0x00FF10 03:BF00: 83        .byte $83   ; 05
- D 1 - I - 0x00FF11 03:BF01: 43        .byte $43   ; 06



_off030_BF02_08:
- D 1 - I - 0x00FF12 03:BF02: 01        .byte con_sub_01, $04, $03   ; 
- D 1 - I - 0x00FF15 03:BF05: 0A BF     .word off_01_BF0A_spr_T
- D 1 - I - 0x00FF17 03:BF07: 76 BE     .word off_01_BE76_spr_XY
- D 1 - I - 0x00FF19 03:BF09: 00        .byte con_sub_00   ; 



off_01_BF0A_spr_T:
- D 1 - I - 0x00FF1A 03:BF0A: 9F        .byte $9F   ; 01
- D 1 - I - 0x00FF1B 03:BF0B: 9F        .byte $9F   ; 02
- D 1 - I - 0x00FF1C 03:BF0C: 9F        .byte $9F   ; 03
- D 1 - I - 0x00FF1D 03:BF0D: 9F        .byte $9F   ; 04



_off030_BF0E_09:
- D 1 - I - 0x00FF1E 03:BF0E: 01        .byte con_sub_01, $01, $03   ; 
- D 1 - I - 0x00FF21 03:BF11: 16 BF     .word off_01_BF16_spr_T
- D 1 - I - 0x00FF23 03:BF13: 17 BF     .word off_01_BF17_spr_XY
- D 1 - I - 0x00FF25 03:BF15: 00        .byte con_sub_00   ; 



off_01_BF16_spr_T:
- D 1 - I - 0x00FF26 03:BF16: 9F        .byte $9F   ; 01



off_01_BF17_spr_XY:
- D 1 - I - 0x00FF27 03:BF17: 00        .byte $00, $00   ; 01



_off030_BF19_00:
- D 1 - I - 0x00FF29 03:BF19: 01        .byte con_sub_01, $02, $03   ; 
- D 1 - I - 0x00FF2C 03:BF1C: 21 BF     .word off_01_BF21_spr_T
- D 1 - I - 0x00FF2E 03:BF1E: 25 BF     .word off_01_BF25_spr_XY
- D 1 - I - 0x00FF30 03:BF20: 00        .byte con_sub_00   ; 



off_01_BF21_spr_T:
- D 1 - I - 0x00FF31 03:BF21: 9B        .byte $9B   ; 01
- D 1 - I - 0x00FF32 03:BF22: AB        .byte $AB   ; 02


; bzk garbage
- - - - - - 0x00FF33 03:BF23: 00        .byte $00   ; 
- - - - - - 0x00FF34 03:BF24: 00        .byte $00   ; 



off_01_BF25_spr_XY:
- D 1 - I - 0x00FF35 03:BF25: 00        .byte $00, $0C   ; 01
- D 1 - I - 0x00FF37 03:BF27: 00        .byte $00, $04   ; 02



_off030_BF29_01:
- D 1 - I - 0x00FF39 03:BF29: 01        .byte con_sub_01, $03, $03   ; 
- D 1 - I - 0x00FF3C 03:BF2C: 31 BF     .word off_01_BF31_spr_T
- D 1 - I - 0x00FF3E 03:BF2E: 34 BF     .word off_01_BF34_spr_XY
- D 1 - I - 0x00FF40 03:BF30: 00        .byte con_sub_00   ; 



off_01_BF31_spr_T:
- D 1 - I - 0x00FF41 03:BF31: DC        .byte $DC   ; 01
- D 1 - I - 0x00FF42 03:BF32: EB        .byte $EB   ; 02
- D 1 - I - 0x00FF43 03:BF33: EC        .byte $EC   ; 03



off_01_BF34_spr_XY:
- D 1 - I - 0x00FF44 03:BF34: 00        .byte $00, $0F   ; 01
- D 1 - I - 0x00FF46 03:BF36: F8        .byte $F8, $07   ; 02
- D 1 - I - 0x00FF48 03:BF38: 00        .byte $00, $07   ; 03



_off030_BF3A_02:
- D 1 - I - 0x00FF4A 03:BF3A: 01        .byte con_sub_01, $02, $83   ; 
- D 1 - I - 0x00FF4D 03:BF3D: 42 BF     .word off_01_BF42_spr_T
- D 1 - I - 0x00FF4F 03:BF3F: 44 BF     .word off_01_BF44_spr_XY
- D 1 - I - 0x00FF51 03:BF41: 00        .byte con_sub_00   ; 



off_01_BF42_spr_T:
- D 1 - I - 0x00FF52 03:BF42: C9        .byte $C9   ; 01
- D 1 - I - 0x00FF53 03:BF43: CA        .byte $CA   ; 02



off_01_BF44_spr_XY:
- D 1 - I - 0x00FF54 03:BF44: FC        .byte $FC, $08   ; 01
- D 1 - I - 0x00FF56 03:BF46: 04        .byte $04, $08   ; 02



_off030_BF48_03:
- D 1 - I - 0x00FF58 03:BF48: 01        .byte con_sub_01, $03, $83   ; 
- D 1 - I - 0x00FF5B 03:BF4B: 50 BF     .word off_01_BF50_spr_T
- D 1 - I - 0x00FF5D 03:BF4D: 53 BF     .word off_01_BF53_spr_XY
- D 1 - I - 0x00FF5F 03:BF4F: 00        .byte con_sub_00   ; 



off_01_BF50_spr_T:
- D 1 - I - 0x00FF60 03:BF50: EB        .byte $EB   ; 01
- D 1 - I - 0x00FF61 03:BF51: EC        .byte $EC   ; 02
- D 1 - I - 0x00FF62 03:BF52: DC        .byte $DC   ; 03



off_01_BF53_spr_XY:
- D 1 - I - 0x00FF63 03:BF53: FC        .byte $FC, $0C   ; 01
- D 1 - I - 0x00FF65 03:BF55: 04        .byte $04, $0C   ; 02
- D 1 - I - 0x00FF67 03:BF57: 04        .byte $04, $04   ; 03



_off030_BF59_04:
- D 1 - I - 0x00FF69 03:BF59: 01        .byte con_sub_01, $02, $83   ; 
- D 1 - I - 0x00FF6C 03:BF5C: 61 BF     .word off_01_BF61_spr_T
- D 1 - I - 0x00FF6E 03:BF5E: 63 BF     .word off_01_BF63_spr_XY
- D 1 - I - 0x00FF70 03:BF60: 00        .byte con_sub_00   ; 



off_01_BF61_spr_T:
- D 1 - I - 0x00FF71 03:BF61: AB        .byte $AB   ; 01
- D 1 - I - 0x00FF72 03:BF62: 9B        .byte $9B   ; 02



off_01_BF63_spr_XY:
- D 1 - I - 0x00FF73 03:BF63: 00        .byte $00, $0C   ; 01
- D 1 - I - 0x00FF75 03:BF65: 00        .byte $00, $04   ; 02



_off030_BF67_5E:
- D 1 - I - 0x00FF77 03:BF67: 04        .byte con_sub_04, $0E, $07   ; 
- D 1 - I - 0x00FF7A 03:BF6A: AB 95     .word off_04_95AB_00_spr_A
- - - - - - 0x00FF7C 03:BF6C: B9 95     .word off_04_95B9_01_spr_A
- D 1 - I - 0x00FF7E 03:BF6E: 9D 95     .word off_04_959D_02_spr_T
- D 1 - I - 0x00FF80 03:BF70: D5 95     .word off_04_95D5_03_spr_XY
- D 1 - I - 0x00FF82 03:BF72: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 1 - I - 0x00FF84 03:BF74: 00 00     .word $0000 ; 00
- D 1 - I - 0x00FF86 03:BF76: 7F BF     .word sub_06_BF7F_01
- - - - - - 0x00FF88 03:BF78: 00 00     .word $0000 ; 02
- - - - - - 0x00FF8A 03:BF7A: 00 00     .word $0000 ; 03
- - - - - - 0x00FF8C 03:BF7C: 00 00     .word $0000 ; 04
@end:
- D 1 - I - 0x00FF8E 03:BF7E: 00        .byte con_sub_00   ; 



sub_06_BF7F_01:
- D 1 - I - 0x00FF8F 03:BF7F: 01        .byte con_sub_01, $04, $03   ; 
- D 1 - I - 0x00FF92 03:BF82: E8 BD     .word off_01_BDE8_spr_T
- D 1 - I - 0x00FF94 03:BF84: 87 BF     .word off_01_BF87_spr_XY
- D 1 - I - 0x00FF96 03:BF86: 00        .byte con_sub_00   ; 



off_01_BF87_spr_XY:
- D 1 - I - 0x00FF97 03:BF87: 15        .byte $15, $28   ; 01
- D 1 - I - 0x00FF99 03:BF89: 1D        .byte $1D, $28   ; 02
- D 1 - I - 0x00FF9B 03:BF8B: 25        .byte $25, $2A   ; 03
- D 1 - I - 0x00FF9D 03:BF8D: 20        .byte $20, $24   ; 04



_off030_BF8F_5F:
- D 1 - I - 0x00FF9F 03:BF8F: 04        .byte con_sub_04, $0C, $07   ; 
- D 1 - I - 0x00FFA2 03:BF92: 15 96     .word off_04_9615_00_spr_A
- - - - - - 0x00FFA4 03:BF94: 6C 8F     .word off_04_8F6C_01_spr_A
- D 1 - I - 0x00FFA6 03:BF96: 09 96     .word off_04_9609_02_spr_T
- D 1 - I - 0x00FFA8 03:BF98: 2D 96     .word off_04_962D_03_spr_XY
- D 1 - I - 0x00FFAA 03:BF9A: 06        .byte con_sub_06, @end - @start + $02   ; 
@start:
- D 1 - I - 0x00FFAC 03:BF9C: 00 00     .word $0000 ; 00
- D 1 - I - 0x00FFAE 03:BF9E: A7 BF     .word sub_06_BFA7_01
- - - - - - 0x00FFB0 03:BFA0: 00 00     .word $0000 ; 02
- - - - - - 0x00FFB2 03:BFA2: 00 00     .word $0000 ; 03
- - - - - - 0x00FFB4 03:BFA4: 00 00     .word $0000 ; 04
@end:
- D 1 - I - 0x00FFB6 03:BFA6: 00        .byte con_sub_00   ; 



sub_06_BFA7_01:
- D 1 - I - 0x00FFB7 03:BFA7: 01        .byte con_sub_01, $02, $83   ; 
- D 1 - I - 0x00FFBA 03:BFAA: FC BD     .word off_01_BDFC_spr_T
- D 1 - I - 0x00FFBC 03:BFAC: AF BF     .word off_01_BFAF_spr_XY
- D 1 - I - 0x00FFBE 03:BFAE: 00        .byte con_sub_00   ; 



off_01_BFAF_spr_XY:
- D 1 - I - 0x00FFBF 03:BFAF: E3        .byte $E3, $19   ; 01
- D 1 - I - 0x00FFC1 03:BFB1: EB        .byte $EB, $15   ; 02



sub_06_BFB3_01:
- D 1 - I - 0x00FFC3 03:BFB3: 02        .byte con_sub_02, $02   ; 
- D 1 - I - 0x00FFC5 03:BFB5: 0D BE     .word off_02_BE0D_00_spr_A
- D 1 - I - 0x00FFC7 03:BFB7: 0B BE     .word off_02_BE0B_01_spr_T
- D 1 - I - 0x00FFC9 03:BFB9: BC BF     .word off_02_BFBC_02_spr_XY
- D 1 - I - 0x00FFCB 03:BFBB: 00        .byte con_sub_00   ; 



off_02_BFBC_02_spr_XY:
- D 1 - I - 0x00FFCC 03:BFBC: EE        .byte $EE, $0B   ; 01
- D 1 - I - 0x00FFCE 03:BFBE: EB        .byte $EB, $03   ; 02



_off030_BFC0_08:
- D 1 - I - 0x00FFD0 03:BFC0: 02        .byte con_sub_02, $04   ; 
- D 1 - I - 0x00FFD2 03:BFC2: CD BF     .word off_02_BFCD_00_spr_A
- D 1 - I - 0x00FFD4 03:BFC4: C9 BF     .word off_02_BFC9_01_spr_T
- D 1 - I - 0x00FFD6 03:BFC6: D1 BF     .word off_02_BFD1_02_spr_XY
- D 1 - I - 0x00FFD8 03:BFC8: 00        .byte con_sub_00   ; 



off_02_BFC9_01_spr_T:
- D 1 - I - 0x00FFD9 03:BFC9: 8C        .byte $8C   ; 01
- D 1 - I - 0x00FFDA 03:BFCA: 8C        .byte $8C   ; 02
- D 1 - I - 0x00FFDB 03:BFCB: 8C        .byte $8C   ; 03
- D 1 - I - 0x00FFDC 03:BFCC: 8C        .byte $8C   ; 04



off_02_BFCD_00_spr_A:
- D 1 - I - 0x00FFDD 03:BFCD: 00        .byte $00   ; 01
- D 1 - I - 0x00FFDE 03:BFCE: 40        .byte $40   ; 02
- D 1 - I - 0x00FFDF 03:BFCF: 80        .byte $80   ; 03
- D 1 - I - 0x00FFE0 03:BFD0: C0        .byte $C0   ; 04



off_02_BFD1_02_spr_XY:
- D 1 - I - 0x00FFE1 03:BFD1: FC        .byte $FC, $04   ; 01
- D 1 - I - 0x00FFE3 03:BFD3: 04        .byte $04, $04   ; 02
- D 1 - I - 0x00FFE5 03:BFD5: FC        .byte $FC, $FC   ; 03
- D 1 - I - 0x00FFE7 03:BFD7: 04        .byte $04, $FC   ; 04


; bzk garbage
- - - - - - 0x00FFE9 03:BFD9: 00        .byte $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00FFF0 03:BFE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x010000 03:BFF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



.out .sprintf("Free bytes in bank 03: %Xh [%d]", ($BFFF - *), ($BFFF - *))



.segment "BANK_03_ID"
- D 1 - - - 0x01000F 03:BFFF: 03        .byte con_prg_bank + $03   ; 



