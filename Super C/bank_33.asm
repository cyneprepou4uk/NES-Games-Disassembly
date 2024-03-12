.segment "BANK_33"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $A000 ; for listing file
; 0x006010-0x00800F



.export loc_0x006233_object_handler
.export sub_0x006285_delete_object_02
.export loc_0x006285_delete_object_02
.export ofs_038_36_0x006285_03_delete_object_02
.export ofs_038_70_0x006285_03_delete_object_02
.export ofs_038_33_0x006285_03_delete_object_02
.export ofs_038_3C_0x006285_03_delete_object_02
.export ofs_038_38_0x006285_03_delete_object_02
.export ofs_038_2B_0x006285_04_delete_object_02
.export ofs_038_23_0x006285_07_delete_object_02
.export ofs_038_3A_0x006285_04_delete_object_02
.export loc_0x00628D_clear_anim_id
.export loc_0x006293_set_obj_state
.export ofs_038_29_0x00629C_03
.export sub_0x0062AA
.export loc_0x0062AA
.export ofs_038_6C_0x0062AA_03
.export ofs_038_6B_0x0062AA_04
.export ofs_038_40_0x0062AA_08
.export ofs_038_31_0x0062AA_04
.export ofs_038_2D_0x0062AA_03
.export ofs_038_25_0x0062AA_03
.export ofs_038_63_0x0062AA_04
.export ofs_038_5C_0x0062AA_03
.export ofs_038_68_0x0062AA_03
.export ofs_038_61_0x0062AA_03
.export ofs_038_24_0x0062AA_04
.export ofs_038_5F_0x0062AA_05
.export ofs_038_35_0x0062AA_05
.export ofs_038_5A_0x0062AA_04
.export ofs_038_34_0x0062AA_04
.export ofs_038_2F_0x0062AA_03
.export ofs_038_56_0x0062AA_08
.export ofs_038_55_0x0062AA_03
.export ofs_038_54_0x0062AA_04
.export ofs_038_3E_0x0062AA_03
.export ofs_038_3B_0x0062AA_04
.export ofs_038_37_0x0062AA_04
.export ofs_038_2A_0x0062AA_04
.export ofs_038_46_0x0062AA_05
.export ofs_038_26_0x0062AA_07
.export ofs_038_50_0x0062AA_07
.export loc_0x0062B2
.export ofs_038_42_0x0062B2_08
.export sub_0x0062E7_increase_obj_state
.export loc_0x0062E7_increase_obj_state
.export sub_0x0062F0
.export loc_0x0062F0
.export loc_0x006306
.export ofs_038_21_0x006306_09
.export ofs_038_42_0x006306_09
.export ofs_038_69_0x006306_09
.export ofs_038_64_0x006306_08
.export ofs_038_65_0x006306_0C
.export ofs_038_51_0x006306_0A
.export ofs_038_6D_0x006306_0B
.export sub_0x00630D
.export loc_0x00630D
.export ofs_038_20_0x00630D_08
.export ofs_038_22_0x00630D_06
.export ofs_038_26_0x00630D_08
.export ofs_038_27_0x00630D_06
.export ofs_038_28_0x00630D_07
.export ofs_038_29_0x00630D_04
.export ofs_038_4E_0x00630D_08
.export ofs_038_50_0x00630D_08
.export ofs_038_6C_0x00630D_04
.export ofs_038_6B_0x00630D_05
.export ofs_038_40_0x00630D_09
.export ofs_038_31_0x00630D_05
.export ofs_038_2D_0x00630D_04
.export ofs_038_25_0x00630D_04
.export ofs_038_63_0x00630D_05
.export ofs_038_5C_0x00630D_04
.export ofs_038_5B_0x00630D_08
.export ofs_038_2E_0x00630D_08
.export ofs_038_66_0x00630D_04
.export ofs_038_68_0x00630D_04
.export ofs_038_61_0x00630D_04
.export ofs_038_24_0x00630D_05
.export ofs_038_5F_0x00630D_06
.export ofs_038_5D_0x00630D_05
.export ofs_038_35_0x00630D_06
.export ofs_038_5A_0x00630D_05
.export ofs_038_34_0x00630D_05
.export ofs_038_32_0x00630D_06
.export ofs_038_2F_0x00630D_04
.export ofs_038_56_0x00630D_09
.export ofs_038_55_0x00630D_04
.export ofs_038_54_0x00630D_05
.export ofs_038_53_0x00630D_04
.export ofs_038_52_0x00630D_06
.export ofs_038_3E_0x00630D_04
.export ofs_038_3D_0x00630D_05
.export ofs_038_3B_0x00630D_05
.export ofs_038_37_0x00630D_05
.export ofs_038_47_0x00630D_04
.export ofs_038_2A_0x00630D_05
.export ofs_038_46_0x00630D_06
.export ofs_038_45_0x00630D_05
.export loc_0x006347_delete_object_boss
.export ofs_038_6D_0x006347_0C_delete_object_boss
.export sub_0x00634D_delete_object_04
.export loc_0x00634D_delete_object_04
.export ofs_038_6C_0x00634D_05_delete_object_04
.export ofs_038_6B_0x00634D_06_delete_object_04
.export ofs_038_40_0x00634D_0A_delete_object_04
.export ofs_038_31_0x00634D_06_delete_object_04
.export ofs_038_2D_0x00634D_05_delete_object_04
.export ofs_038_25_0x00634D_05_delete_object_04
.export ofs_038_63_0x00634D_06_delete_object_04
.export ofs_038_5C_0x00634D_05_delete_object_04
.export ofs_038_5B_0x00634D_09_delete_object_04
.export ofs_038_2E_0x00634D_09_delete_object_04
.export ofs_038_66_0x00634D_05_delete_object_04
.export ofs_038_68_0x00634D_05_delete_object_04
.export ofs_038_61_0x00634D_05_delete_object_04
.export ofs_038_24_0x00634D_06_delete_object_04
.export ofs_038_5F_0x00634D_07_delete_object_04
.export ofs_038_5D_0x00634D_06_delete_object_04
.export ofs_038_35_0x00634D_07_delete_object_04
.export ofs_038_5A_0x00634D_06_delete_object_04
.export ofs_038_34_0x00634D_06_delete_object_04
.export ofs_038_32_0x00634D_07_delete_object_04
.export ofs_038_2F_0x00634D_05_delete_object_04
.export ofs_038_56_0x00634D_0A_delete_object_04
.export ofs_038_55_0x00634D_05_delete_object_04
.export ofs_038_54_0x00634D_06_delete_object_04
.export ofs_038_3E_0x00634D_05_delete_object_04
.export ofs_038_3D_0x00634D_06_delete_object_04
.export ofs_038_3B_0x00634D_06_delete_object_04
.export ofs_038_37_0x00634D_06_delete_object_04
.export ofs_038_47_0x00634D_05_delete_object_04
.export ofs_038_2A_0x00634D_06_delete_object_04
.export ofs_038_46_0x00634D_07_delete_object_04
.export ofs_038_45_0x00634D_06_delete_object_04
.export ofs_038_20_0x00634D_09_delete_object_04
.export ofs_038_26_0x00634D_09_delete_object_04
.export ofs_038_27_0x00634D_07_delete_object_04
.export ofs_038_28_0x00634D_08_delete_object_04
.export ofs_038_29_0x00634D_05_delete_object_04
.export ofs_038_50_0x00634D_09_delete_object_04
.export loc_0x006364_delete_object_06
.export ofs_038_20_0x006364_05_delete_object_06
.export ofs_038_22_0x006364_03_delete_object_06
.export ofs_038_28_0x006364_04_delete_object_06
.export ofs_038_5B_0x006364_05_delete_object_06
.export ofs_038_2E_0x006364_05_delete_object_06
.export loc_0x00637B
.export ofs_038_20_0x00637B_06_delete_object_07
.export ofs_038_22_0x00637B_04_delete_object_07
.export ofs_038_28_0x00637B_05_delete_object_07
.export ofs_038_5B_0x00637B_06_delete_object_07
.export ofs_038_2E_0x00637B_06_delete_object_07
.export loc_0x0063C8_boss_starts_exploding
.export ofs_038_42_0x0063C8_06_boss_starts_exploding
.export ofs_038_51_0x0063C8_07_boss_starts_exploding
.export ofs_038_4E_0x0063CE_05
.export ofs_038_4E_0x0063E8_06
.export loc_0x0063E8
.export ofs_038_42_0x0063E8_07
.export ofs_038_51_0x0063E8_08
.export sub_0x006485_kill_enemy
.export sub_0x0066C7_delete_object_03
.export loc_0x0066C7_delete_object_03
.export sub_0x0066E3
.export loc_0x0066E3
.export sub_0x0066FD
.export sub_0x006717
.export loc_0x006717
.export sub_0x00675F
.export sub_0x00676D
.export sub_0x0067D7_clear_spd_XY
.export loc_0x0067D7_clear_spd_XY
.export sub_0x0067DA_clear_spd_Y
.export loc_0x0067DA_clear_spd_Y
.export sub_0x0067E3_clear_spd_X
.export sub_0x0067EC_inverse_spd_X
.export loc_0x0067EC_inverse_spd_X
.export sub_0x0067FE_inverse_spd_Y
.export loc_0x0067FE_inverse_spd_Y
.export sub_0x006810
.export sub_0x006815
.export sub_0x00681A
.export sub_0x006832
.export sub_0x00684D
.export loc_0x00684D
.export sub_0x006856
.export sub_0x0068AA
.export loc_0x0068AA
.export sub_0x0068B8
.export loc_0x0068B8
.export sub_0x0068C2
.export sub_0x0068F6
.export sub_0x0068FC
.export sub_0x0068FE
.export sub_0x006933
.export loc_0x006933
.export sub_0x00693B
.export sub_0x006967
.export sub_0x00697E
.export sub_0x00699E
.export sub_0x0069DE
.export sub_0x006A1A
.export loc_0x006A1A
.export sub_0x006A5F
.export sub_0x006AA4_save_reg_values
.export sub_0x006AB1_restore_reg_values
.export sub_0x006ABE
.export sub_0x006ADB_add_to_spd_Y
.export sub_0x006B1B_set_target_on_closest_player_X_pos
.export sub_0x006B34_set_target_on_closest_player_Y_pos
.export sub_0x006B74
.export sub_0x006B7B
.export loc_0x006B7B
.export sub_0x006B97
.export sub_0x006BA5_set_dynamic_hp_to_enemy
.export sub_0x006BA9_set_dynamic_hp_to_boss
.export sub_0x006BAB_set_dynamic_hp_to_obj
.export sub_0x006BD8
.export loc_0x006BD8
.export sub_0x006BDD
.export sub_0x006C0D
.export loc_0x006C0D
.export ofs_038_30_0x006E80_04
.export ofs_038_30_0x006E88_05
.export sub_0x006EA5
.export loc_0x006EA5
.export ofs_038_30_0x006EB9_02
.export loc_0x00714B
.export loc_0x00714E   ; bzk garbage label
.export loc_0x007189
.export loc_0x00718C   ; bzk garbage label
.export sub_0x007A90
.export sub_0x007ABA_calculate_surface_type
.export sub_0x007AD0
.export loc_0x007AD0
.export sub_0x007B2B
.export sub_0x007B44
.export sub_0x007B8F
.export sub_0x007C05
.export sub_0x007C4B
.export sub_0x007D20_clear_0400_047F
.export sub_0x007D22_clear_0400_Y
.export sub_0x007D2B_clear_0480_04FF
.export sub_0x007D2D_clear_0480_Y



; ??? хз как оформить таблицу, тут читаются соседние данные, а не стабильно кусками по 4
tbl_A000:
- D 1 - - - 0x006010 01:A000: EA        .byte $EA   ; 
tbl_A001:
- D 1 - - - 0x006011 01:A001: F4        .byte $F4   ; 
tbl_A002:
- D 1 - - - 0x006012 01:A002: 2A        .byte $2A   ; 
tbl_A003:
- D 1 - - - 0x006013 01:A003: 16        .byte $16   ; 
- D 1 - - - 0x006014 01:A004: F0        .byte $F0   ; 
- D 1 - - - 0x006015 01:A005: FA        .byte $FA   ; 
- D 1 - - - 0x006016 01:A006: 1E        .byte $1E   ; 
- D 1 - - - 0x006017 01:A007: 0A        .byte $0A   ; 
- D 1 - - - 0x006018 01:A008: E5        .byte $E5   ; 
- D 1 - - - 0x006019 01:A009: F7        .byte $F7   ; 
- D 1 - - - 0x00601A 01:A00A: 34        .byte $34   ; 
- D 1 - - - 0x00601B 01:A00B: 10        .byte $10   ; 
- D 1 - - - 0x00601C 01:A00C: E1        .byte $E1   ; 
- D 1 - - - 0x00601D 01:A00D: EB        .byte $EB   ; 
- D 1 - - - 0x00601E 01:A00E: 3C        .byte $3C   ; 
- D 1 - - - 0x00601F 01:A00F: 28        .byte $28   ; 
- D 1 - - - 0x006020 01:A010: F1        .byte $F1   ; 
- D 1 - - - 0x006021 01:A011: EF        .byte $EF   ; 
- D 1 - - - 0x006022 01:A012: 28        .byte $28   ; 
- D 1 - - - 0x006023 01:A013: 20        .byte $20   ; 
- D 1 - - - 0x006024 01:A014: E1        .byte $E1   ; 
- D 1 - - - 0x006025 01:A015: D3        .byte $D3   ; 
- D 1 - - - 0x006026 01:A016: 3C        .byte $3C   ; 
- D 1 - - - 0x006027 01:A017: 58        .byte $58   ; 
- D 1 - - - 0x006028 01:A018: D1        .byte $D1   ; 
- D 1 - - - 0x006029 01:A019: DB        .byte $DB   ; 
- D 1 - - - 0x00602A 01:A01A: 6C        .byte $6C   ; 
- D 1 - - - 0x00602B 01:A01B: 48        .byte $48   ; 
- D 1 - - - 0x00602C 01:A01C: D1        .byte $D1   ; 
- D 1 - - - 0x00602D 01:A01D: EB        .byte $EB   ; 
- D 1 - - - 0x00602E 01:A01E: 5C        .byte $5C   ; 
- D 1 - - - 0x00602F 01:A01F: 28        .byte $28   ; 
- D 1 - - - 0x006030 01:A020: F2        .byte $F2   ; 
- D 1 - - - 0x006031 01:A021: F2        .byte $F2   ; 
- D 1 - - - 0x006032 01:A022: 1A        .byte $1A   ; 
- D 1 - - - 0x006033 01:A023: 1A        .byte $1A   ; 
- D 1 - - - 0x006034 01:A024: F8        .byte $F8   ; 
- D 1 - - - 0x006035 01:A025: F8        .byte $F8   ; 
- D 1 - - - 0x006036 01:A026: 0E        .byte $0E   ; 
- D 1 - - - 0x006037 01:A027: 0E        .byte $0E   ; 
- D 1 - - - 0x006038 01:A028: ED        .byte $ED   ; 
- D 1 - - - 0x006039 01:A029: F5        .byte $F5   ; 
- D 1 - - - 0x00603A 01:A02A: 24        .byte $24   ; 
- D 1 - - - 0x00603B 01:A02B: 14        .byte $14   ; 
- D 1 - - - 0x00603C 01:A02C: E9        .byte $E9   ; 
- D 1 - - - 0x00603D 01:A02D: E9        .byte $E9   ; 
- D 1 - - - 0x00603E 01:A02E: 2C        .byte $2C   ; 
- D 1 - - - 0x00603F 01:A02F: 2C        .byte $2C   ; 
- D 1 - - - 0x006040 01:A030: F9        .byte $F9   ; 
- D 1 - - - 0x006041 01:A031: ED        .byte $ED   ; 
- D 1 - - - 0x006042 01:A032: 18        .byte $18   ; 
- D 1 - - - 0x006043 01:A033: 24        .byte $24   ; 
- - - - - - 0x006044 01:A034: E9        .byte $E9   ; 
- - - - - - 0x006045 01:A035: D1        .byte $D1   ; 
- - - - - - 0x006046 01:A036: 2C        .byte $2C   ; 
- - - - - - 0x006047 01:A037: 5C        .byte $5C   ; 
- - - - - - 0x006048 01:A038: D9        .byte $D9   ; 
- - - - - - 0x006049 01:A039: D9        .byte $D9   ; 
- - - - - - 0x00604A 01:A03A: 5C        .byte $5C   ; 
- - - - - - 0x00604B 01:A03B: 4C        .byte $4C   ; 
- D 1 - - - 0x00604C 01:A03C: D9        .byte $D9   ; 
- D 1 - - - 0x00604D 01:A03D: E9        .byte $E9   ; 
- D 1 - - - 0x00604E 01:A03E: 4C        .byte $4C   ; 
- D 1 - - - 0x00604F 01:A03F: 2C        .byte $2C   ; 
- D 1 - - - 0x006050 01:A040: EA        .byte $EA   ; 
- D 1 - - - 0x006051 01:A041: EA        .byte $EA   ; 
- D 1 - - - 0x006052 01:A042: 16        .byte $16   ; 
- D 1 - - - 0x006053 01:A043: 2A        .byte $2A   ; 
- D 1 - - - 0x006054 01:A044: F0        .byte $F0   ; 
- D 1 - - - 0x006055 01:A045: F0        .byte $F0   ; 
- D 1 - - - 0x006056 01:A046: 0A        .byte $0A   ; 
- D 1 - - - 0x006057 01:A047: 1E        .byte $1E   ; 
- D 1 - - - 0x006058 01:A048: E5        .byte $E5   ; 
- D 1 - - - 0x006059 01:A049: ED        .byte $ED   ; 
- D 1 - - - 0x00605A 01:A04A: 20        .byte $20   ; 
- D 1 - - - 0x00605B 01:A04B: 24        .byte $24   ; 
- D 1 - - - 0x00605C 01:A04C: E1        .byte $E1   ; 
- D 1 - - - 0x00605D 01:A04D: E1        .byte $E1   ; 
- D 1 - - - 0x00605E 01:A04E: 28        .byte $28   ; 
- D 1 - - - 0x00605F 01:A04F: 3C        .byte $3C   ; 
- - - - - - 0x006060 01:A050: F1        .byte $F1   ; 
- D 1 - - - 0x006061 01:A051: E5        .byte $E5   ; 
- - - - - - 0x006062 01:A052: 14        .byte $14   ; 
- D 1 - - - 0x006063 01:A053: 34        .byte $34   ; 
- - - - - - 0x006064 01:A054: E1        .byte $E1   ; 
- - - - - - 0x006065 01:A055: C9        .byte $C9   ; 
- - - - - - 0x006066 01:A056: 28        .byte $28   ; 
- - - - - - 0x006067 01:A057: 6C        .byte $6C   ; 
- - - - - - 0x006068 01:A058: D1        .byte $D1   ; 
- - - - - - 0x006069 01:A059: D1        .byte $D1   ; 
- - - - - - 0x00606A 01:A05A: 58        .byte $58   ; 
- - - - - - 0x00606B 01:A05B: 5C        .byte $5C   ; 
- - - - - - 0x00606C 01:A05C: D1        .byte $D1   ; 
- - - - - - 0x00606D 01:A05D: E1        .byte $E1   ; 
- - - - - - 0x00606E 01:A05E: 48        .byte $48   ; 
- - - - - - 0x00606F 01:A05F: 3C        .byte $3C   ; 
- D 1 - - - 0x006070 01:A060: EA        .byte $EA   ; 
- D 1 - - - 0x006071 01:A061: F4        .byte $F4   ; 
- D 1 - - - 0x006072 01:A062: 22        .byte $22   ; 
- D 1 - - - 0x006073 01:A063: 16        .byte $16   ; 
- D 1 - - - 0x006074 01:A064: F0        .byte $F0   ; 
- D 1 - - - 0x006075 01:A065: FA        .byte $FA   ; 
- D 1 - - - 0x006076 01:A066: 16        .byte $16   ; 
- D 1 - - - 0x006077 01:A067: 0A        .byte $0A   ; 
- - - - - - 0x006078 01:A068: E5        .byte $E5   ; 
- D 1 - - - 0x006079 01:A069: F7        .byte $F7   ; 
- - - - - - 0x00607A 01:A06A: 2C        .byte $2C   ; 
- D 1 - - - 0x00607B 01:A06B: 10        .byte $10   ; 
- D 1 - - - 0x00607C 01:A06C: E1        .byte $E1   ; 
- D 1 - - - 0x00607D 01:A06D: EB        .byte $EB   ; 
- D 1 - - - 0x00607E 01:A06E: 34        .byte $34   ; 
- D 1 - - - 0x00607F 01:A06F: 28        .byte $28   ; 
- - - - - - 0x006080 01:A070: F1        .byte $F1   ; 
- D 1 - - - 0x006081 01:A071: EF        .byte $EF   ; 
- - - - - - 0x006082 01:A072: 20        .byte $20   ; 
- D 1 - - - 0x006083 01:A073: 20        .byte $20   ; 
- - - - - - 0x006084 01:A074: E1        .byte $E1   ; 
- - - - - - 0x006085 01:A075: D3        .byte $D3   ; 
- - - - - - 0x006086 01:A076: 34        .byte $34   ; 
- - - - - - 0x006087 01:A077: 58        .byte $58   ; 
- - - - - - 0x006088 01:A078: D1        .byte $D1   ; 
- - - - - - 0x006089 01:A079: DB        .byte $DB   ; 
- - - - - - 0x00608A 01:A07A: 64        .byte $64   ; 
- - - - - - 0x00608B 01:A07B: 48        .byte $48   ; 
- - - - - - 0x00608C 01:A07C: D1        .byte $D1   ; 
- D 1 - - - 0x00608D 01:A07D: EB        .byte $EB   ; 
- - - - - - 0x00608E 01:A07E: 54        .byte $54   ; 
- D 1 - - - 0x00608F 01:A07F: 28        .byte $28   ; 
- D 1 - - - 0x006090 01:A080: F8        .byte $F8   ; 
- D 1 - - - 0x006091 01:A081: F4        .byte $F4   ; 
- D 1 - - - 0x006092 01:A082: 1A        .byte $1A   ; 
- D 1 - - - 0x006093 01:A083: 16        .byte $16   ; 
- D 1 - - - 0x006094 01:A084: FE        .byte $FE   ; 
- D 1 - - - 0x006095 01:A085: FA        .byte $FA   ; 
- D 1 - - - 0x006096 01:A086: 0E        .byte $0E   ; 
- D 1 - - - 0x006097 01:A087: 0A        .byte $0A   ; 
- D 1 - - - 0x006098 01:A088: F3        .byte $F3   ; 
- D 1 - - - 0x006099 01:A089: F7        .byte $F7   ; 
- D 1 - - - 0x00609A 01:A08A: 24        .byte $24   ; 
- D 1 - - - 0x00609B 01:A08B: 10        .byte $10   ; 
- - - - - - 0x00609C 01:A08C: EF        .byte $EF   ; 
- - - - - - 0x00609D 01:A08D: EB        .byte $EB   ; 
- - - - - - 0x00609E 01:A08E: 2C        .byte $2C   ; 
- - - - - - 0x00609F 01:A08F: 28        .byte $28   ; 
- - - - - - 0x0060A0 01:A090: FF        .byte $FF   ; 
- D 1 - - - 0x0060A1 01:A091: EF        .byte $EF   ; 
- - - - - - 0x0060A2 01:A092: 18        .byte $18   ; 
- D 1 - - - 0x0060A3 01:A093: 20        .byte $20   ; 
- - - - - - 0x0060A4 01:A094: EF        .byte $EF   ; 
- - - - - - 0x0060A5 01:A095: D3        .byte $D3   ; 
- - - - - - 0x0060A6 01:A096: 2C        .byte $2C   ; 
- - - - - - 0x0060A7 01:A097: 58        .byte $58   ; 
- - - - - - 0x0060A8 01:A098: DF        .byte $DF   ; 
- - - - - - 0x0060A9 01:A099: DB        .byte $DB   ; 
- - - - - - 0x0060AA 01:A09A: 5C        .byte $5C   ; 
- - - - - - 0x0060AB 01:A09B: 48        .byte $48   ; 
- - - - - - 0x0060AC 01:A09C: DF        .byte $DF   ; 
- - - - - - 0x0060AD 01:A09D: EB        .byte $EB   ; 
- - - - - - 0x0060AE 01:A09E: 4C        .byte $4C   ; 
- - - - - - 0x0060AF 01:A09F: 28        .byte $28   ; 
- D 1 - - - 0x0060B0 01:A0A0: F3        .byte $F3   ; 
- D 1 - - - 0x0060B1 01:A0A1: F3        .byte $F3   ; 
- D 1 - - - 0x0060B2 01:A0A2: 18        .byte $18   ; 
- D 1 - - - 0x0060B3 01:A0A3: 18        .byte $18   ; 
- D 1 - - - 0x0060B4 01:A0A4: F7        .byte $F7   ; 
- D 1 - - - 0x0060B5 01:A0A5: F7        .byte $F7   ; 
- D 1 - - - 0x0060B6 01:A0A6: 10        .byte $10   ; 
- D 1 - - - 0x0060B7 01:A0A7: 10        .byte $10   ; 
- D 1 - - - 0x0060B8 01:A0A8: EC        .byte $EC   ; 
- D 1 - - - 0x0060B9 01:A0A9: F3        .byte $F3   ; 
- D 1 - - - 0x0060BA 01:A0AA: 26        .byte $26   ; 
- D 1 - - - 0x0060BB 01:A0AB: 18        .byte $18   ; 
- D 1 - - - 0x0060BC 01:A0AC: EB        .byte $EB   ; 
- D 1 - - - 0x0060BD 01:A0AD: EB        .byte $EB   ; 
- D 1 - - - 0x0060BE 01:A0AE: 28        .byte $28   ; 
- D 1 - - - 0x0060BF 01:A0AF: 28        .byte $28   ; 
- D 1 - - - 0x0060C0 01:A0B0: FB        .byte $FB   ; 
- D 1 - - - 0x0060C1 01:A0B1: EF        .byte $EF   ; 
- D 1 - - - 0x0060C2 01:A0B2: 14        .byte $14   ; 
- D 1 - - - 0x0060C3 01:A0B3: 20        .byte $20   ; 
- D 1 - - - 0x0060C4 01:A0B4: EB        .byte $EB   ; 
- D 1 - - - 0x0060C5 01:A0B5: D3        .byte $D3   ; 
- D 1 - - - 0x0060C6 01:A0B6: 28        .byte $28   ; 
- D 1 - - - 0x0060C7 01:A0B7: 58        .byte $58   ; 
- D 1 - - - 0x0060C8 01:A0B8: D3        .byte $D3   ; 
- D 1 - - - 0x0060C9 01:A0B9: EB        .byte $EB   ; 
- D 1 - - - 0x0060CA 01:A0BA: 28        .byte $28   ; 
- D 1 - - - 0x0060CB 01:A0BB: 28        .byte $28   ; 
- D 1 - - - 0x0060CC 01:A0BC: DB        .byte $DB   ; 
- D 1 - - - 0x0060CD 01:A0BD: EB        .byte $EB   ; 
- D 1 - - - 0x0060CE 01:A0BE: 48        .byte $48   ; 
- D 1 - - - 0x0060CF 01:A0BF: 28        .byte $28   ; 
- D 1 - - - 0x0060D0 01:A0C0: F0        .byte $F0   ; 
- D 1 - - - 0x0060D1 01:A0C1: F4        .byte $F4   ; 
- D 1 - - - 0x0060D2 01:A0C2: 1E        .byte $1E   ; 
- D 1 - - - 0x0060D3 01:A0C3: 16        .byte $16   ; 
- D 1 - - - 0x0060D4 01:A0C4: F6        .byte $F6   ; 
- D 1 - - - 0x0060D5 01:A0C5: FA        .byte $FA   ; 
- D 1 - - - 0x0060D6 01:A0C6: 12        .byte $12   ; 
- D 1 - - - 0x0060D7 01:A0C7: 0A        .byte $0A   ; 
- D 1 - - - 0x0060D8 01:A0C8: EB        .byte $EB   ; 
- D 1 - - - 0x0060D9 01:A0C9: F7        .byte $F7   ; 
- D 1 - - - 0x0060DA 01:A0CA: 28        .byte $28   ; 
- D 1 - - - 0x0060DB 01:A0CB: 10        .byte $10   ; 
- D 1 - - - 0x0060DC 01:A0CC: E7        .byte $E7   ; 
- D 1 - - - 0x0060DD 01:A0CD: EB        .byte $EB   ; 
- D 1 - - - 0x0060DE 01:A0CE: 30        .byte $30   ; 
- D 1 - - - 0x0060DF 01:A0CF: 28        .byte $28   ; 
- - - - - - 0x0060E0 01:A0D0: F7        .byte $F7   ; 
- - - - - - 0x0060E1 01:A0D1: EF        .byte $EF   ; 
- - - - - - 0x0060E2 01:A0D2: 1C        .byte $1C   ; 
- - - - - - 0x0060E3 01:A0D3: 20        .byte $20   ; 
- D 1 - - - 0x0060E4 01:A0D4: E7        .byte $E7   ; 
- D 1 - - - 0x0060E5 01:A0D5: D3        .byte $D3   ; 
- D 1 - - - 0x0060E6 01:A0D6: 30        .byte $30   ; 
- D 1 - - - 0x0060E7 01:A0D7: 58        .byte $58   ; 
- D 1 - - - 0x0060E8 01:A0D8: D7        .byte $D7   ; 
- D 1 - - - 0x0060E9 01:A0D9: DB        .byte $DB   ; 
- D 1 - - - 0x0060EA 01:A0DA: 60        .byte $60   ; 
- D 1 - - - 0x0060EB 01:A0DB: 48        .byte $48   ; 
- - - - - - 0x0060EC 01:A0DC: D7        .byte $D7   ; 
- - - - - - 0x0060ED 01:A0DD: EB        .byte $EB   ; 
- - - - - - 0x0060EE 01:A0DE: 50        .byte $50   ; 
- - - - - - 0x0060EF 01:A0DF: 28        .byte $28   ; 



sub_A0E0_check_objects_collision_with_players:
C - - - - - 0x0060F0 01:A0E0: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x0060F2 01:A0E2: 29 01     AND #$01
C - - - - - 0x0060F4 01:A0E4: AA        TAX
C - - - - - 0x0060F5 01:A0E5: B5 C6     LDA ram_00C6_plr_hitbox,X
C - - - - - 0x0060F7 01:A0E7: 38        SEC
C - - - - - 0x0060F8 01:A0E8: 65 07     ADC ram_0007
C - - - - - 0x0060FA 01:A0EA: A8        TAY
C - - - - - 0x0060FB 01:A0EB: BD 4C 05  LDA ram_pos_X_hi_plr,X
C - - - - - 0x0060FE 01:A0EE: F9 01 A0  SBC tbl_A001,Y
C - - - - - 0x006101 01:A0F1: E5 05     SBC ram_0005
C - - - - - 0x006103 01:A0F3: D9 03 A0  CMP tbl_A003,Y
C - - - - - 0x006106 01:A0F6: B0 0D     BCS bra_A105_RTS
C - - - - - 0x006108 01:A0F8: BD 32 05  LDA ram_pos_Y_hi_plr,X
C - - - - - 0x00610B 01:A0FB: F9 00 A0  SBC tbl_A000,Y
C - - - - - 0x00610E 01:A0FE: E5 06     SBC ram_0006
C - - - - - 0x006110 01:A100: D9 02 A0  CMP tbl_A002,Y
C - - - - - 0x006113 01:A103: 90 01     BCC bra_A106_hit_detected
bra_A105_RTS:
C - - - - - 0x006115 01:A105: 60        RTS
bra_A106_hit_detected:
C - - - - - 0x006116 01:A106: 86 11     STX ram_0011
C - - - - - 0x006118 01:A108: 20 0E A1  JSR sub_A10E
C - - - - - 0x00611B 01:A10B: A6 11     LDX ram_0011
bra_A10D_RTS:
C - - - - - 0x00611D 01:A10D: 60        RTS



sub_A10E:
C - - - - - 0x00611E 01:A10E: A4 11     LDY ram_0011
C - - - - - 0x006120 01:A110: A6 10     LDX ram_0010
C - - - - - 0x006122 01:A112: BD 2C 07  LDA ram_072C_obj,X
C - - - - - 0x006125 01:A115: 19 C2 00  ORA ram_plr_dead_flag,Y
C - - - - - 0x006128 01:A118: 4A        LSR
C - - - - - 0x006129 01:A119: B0 F2     BCS bra_A10D_RTS
C - - - - - 0x00612B 01:A11B: B9 4C 05  LDA ram_pos_X_hi_plr,Y
C - - - - - 0x00612E 01:A11E: 38        SEC
C - - - - - 0x00612F 01:A11F: E5 05     SBC ram_0005
C - - - - - 0x006131 01:A121: B0 04     BCS bra_A127
C - - - - - 0x006133 01:A123: 49 FF     EOR #$FF
C - - - - - 0x006135 01:A125: 69 01     ADC #$01
bra_A127:
C - - - - - 0x006137 01:A127: C9 40     CMP #$40
C - - - - - 0x006139 01:A129: B0 E2     BCS bra_A10D_RTS
C - - - - - 0x00613B 01:A12B: BD D8 06  LDA ram_obj_id,X
C - - - - - 0x00613E 01:A12E: F0 1B     BEQ bra_A14B_bonus_item ; if con_obj_id_00
C - - - - - 0x006140 01:A130: B9 C4 00  LDA ram_plr_invinc,Y
C - - - - - 0x006143 01:A133: D0 D8     BNE bra_A10D_RTS    ; if invincible after respawh
C - - - - - 0x006145 01:A135: B9 D4 00  LDA ram_plr_barrier_timer,Y
C - - - - - 0x006148 01:A138: D0 05     BNE bra_A13F_barrier_is_active
C - - - - - 0x00614A 01:A13A: A6 11     LDX ram_0011
C - - - - - 0x00614C 01:A13C: 4C AC F6  JMP loc_0x01F6BC_kill_player
bra_A13F_barrier_is_active:
C - - - - - 0x00614F 01:A13F: 84 21     STY ram_0021
C - - - - - 0x006151 01:A141: BD 76 06  LDA ram_obj_hp,X
C - - - - - 0x006154 01:A144: C9 F0     CMP #$F0    ; con__hp_F0 con__hp_F1
C - - - - - 0x006156 01:A146: B0 C5     BCS bra_A10D_RTS
C - - - - - 0x006158 01:A148: 4C 70 A4  JMP loc_A470_add_points_and_kill_enemy
bra_A14B_bonus_item:
C - - - - - 0x00615B 01:A14B: 84 21     STY ram_0021
C - - - - - 0x00615D 01:A14D: A9 50     LDA #$50
C - - - - - 0x00615F 01:A14F: 85 01     STA ram_0001
C - - - - - 0x006161 01:A151: 20 38 E6  JSR sub_0x01E648
C - - - - - 0x006164 01:A154: A9 19     LDA #con_sound_19
C - - - - - 0x006166 01:A156: 20 DE FD  JSR sub_0x01FDEE_play_sound
; bonus pickup handler
C - - - - - 0x006169 01:A159: A6 10     LDX ram_0010
C - - - - - 0x00616B 01:A15B: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x00616E 01:A15E: 29 0F     AND #$0F
C - - - - - 0x006170 01:A160: A4 11     LDY ram_0011
C - - - - - 0x006172 01:A162: 20 09 E6  JSR sub_0x01E619_jump_to_pointers_after_jsr
- D 1 - I - 0x006175 01:A165: 88 A1     .word ofs_016_A188_00_M
- D 1 - I - 0x006177 01:A167: 88 A1     .word ofs_016_A188_01_S
- D 1 - I - 0x006179 01:A169: 88 A1     .word ofs_016_A188_02_L
- D 1 - I - 0x00617B 01:A16B: 88 A1     .word ofs_016_A188_03_F
- D 1 - I - 0x00617D 01:A16D: 81 A1     .word ofs_016_A181_04_R
- D 1 - I - 0x00617F 01:A16F: 73 A1     .word ofs_016_A173_05_B
- D 1 - I - 0x006181 01:A171: 7B A1     .word ofs_016_A17B_06_falcon



ofs_016_A173_05_B:
C - - J - - 0x006183 01:A173: A9 80     LDA #$80
C - - - - - 0x006185 01:A175: 99 D4 00  STA ram_plr_barrier_timer,Y
C - - - - - 0x006188 01:A178: 4C 75 A2  JMP loc_A275_delete_object_02



ofs_016_A17B_06_falcon:
C - - J - - 0x00618B 01:A17B: 20 96 A5  JSR sub_A596_kill_all_objects
C - - - - - 0x00618E 01:A17E: 4C 75 A2  JMP loc_A275_delete_object_02



ofs_016_A181_04_R:
C - - J - - 0x006191 01:A181: B9 B8 00  LDA ram_weapon,Y
C - - - - - 0x006194 01:A184: 09 80     ORA #con_weapon_R
C - - - - - 0x006196 01:A186: D0 08     BNE bra_A190    ; jmp



ofs_016_A188_00_M:
ofs_016_A188_01_S:
ofs_016_A188_02_L:
ofs_016_A188_03_F:
C - - J - - 0x006198 01:A188: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x00619B 01:A18B: 29 0F     AND #$0F
C - - - - - 0x00619D 01:A18D: 18        CLC
C - - - - - 0x00619E 01:A18E: 69 01     ADC #$01
bra_A190:
C - - - - - 0x0061A0 01:A190: 99 B8 00  STA ram_weapon,Y
C - - - - - 0x0061A3 01:A193: 4C 75 A2  JMP loc_A275_delete_object_02



sub_A196_check_player_bullets_collision_with_objects:
C - - - - - 0x0061A6 01:A196: A2 0F     LDX #con_max_index_bullets
C - - - - - 0x0061A8 01:A198: 38        SEC
bra_A199_loop:
C - - - - - 0x0061A9 01:A199: BD 38 06  LDA ram_0638_plr_bullet_hitbox_index,X
; all bullets have 00 or 9F value
C - - - - - 0x0061AC 01:A19C: F0 1D     BEQ bra_A1BB    ; if not active
C - - - - - 0x0061AE 01:A19E: 65 07     ADC ram_0007    ; value from ram_073A_obj_hitbox_index
C - - - - - 0x0061B0 01:A1A0: A8        TAY
C - - - - - 0x0061B1 01:A1A1: BD 88 05  LDA ram_plr_bullet_pos_X_hi,X
C - - - - - 0x0061B4 01:A1A4: F9 01 A0  SBC tbl_A001,Y
C - - - - - 0x0061B7 01:A1A7: E5 05     SBC ram_0005
C - - - - - 0x0061B9 01:A1A9: D9 03 A0  CMP tbl_A003,Y
C - - - - - 0x0061BC 01:A1AC: B0 0D     BCS bra_A1BB
C - - - - - 0x0061BE 01:A1AE: BD 78 05  LDA ram_plr_bullet_pos_Y_hi,X
C - - - - - 0x0061C1 01:A1B1: F9 00 A0  SBC tbl_A000,Y
C - - - - - 0x0061C4 01:A1B4: E5 06     SBC ram_0006
C - - - - - 0x0061C6 01:A1B6: D9 02 A0  CMP tbl_A002,Y
C - - - - - 0x0061C9 01:A1B9: 90 04     BCC bra_A1BF
bra_A1BB:
C - - - - - 0x0061CB 01:A1BB: CA        DEX
C - - - - - 0x0061CC 01:A1BC: 10 DB     BPL bra_A199_loop
bra_A1BE_RTS:
C - - - - - 0x0061CE 01:A1BE: 60        RTS
bra_A1BF:
C - - - - - 0x0061CF 01:A1BF: A4 10     LDY ram_0010
C - - - - - 0x0061D1 01:A1C1: B9 2C 07  LDA ram_072C_obj,Y
C - - - - - 0x0061D4 01:A1C4: 30 F8     BMI bra_A1BE_RTS
C - - - - - 0x0061D6 01:A1C6: BD 88 05  LDA ram_plr_bullet_pos_X_hi,X
C - - - - - 0x0061D9 01:A1C9: 38        SEC
C - - - - - 0x0061DA 01:A1CA: E5 05     SBC ram_0005
C - - - - - 0x0061DC 01:A1CC: B0 04     BCS bra_A1D2
C - - - - - 0x0061DE 01:A1CE: 49 FF     EOR #$FF
C - - - - - 0x0061E0 01:A1D0: 69 01     ADC #$01
bra_A1D2:
C - - - - - 0x0061E2 01:A1D2: 30 EA     BMI bra_A1BE_RTS
C - - - - - 0x0061E4 01:A1D4: BD B8 05  LDA ram_plr_bullet_anim_id,X
C - - - - - 0x0061E7 01:A1D7: 2A        ROL
C - - - - - 0x0061E8 01:A1D8: 2A        ROL
C - - - - - 0x0061E9 01:A1D9: 2A        ROL
C - - - - - 0x0061EA 01:A1DA: 29 01     AND #$01
C - - - - - 0x0061EC 01:A1DC: 85 21     STA ram_0021
C - - - - - 0x0061EE 01:A1DE: BD F8 05  LDA ram_plr_bullet_damage,X
C - - - - - 0x0061F1 01:A1E1: BC 88 05  LDY ram_plr_bullet_pos_X_hi,X
C - - - - - 0x0061F4 01:A1E4: 20 F1 A1  JSR sub_A1F1
C - - - - - 0x0061F7 01:A1E7: D0 D5     BNE bra_A1BE_RTS
C - - - - - 0x0061F9 01:A1E9: A9 00     LDA #$00
C - - - - - 0x0061FB 01:A1EB: 9D 38 06  STA ram_0638_plr_bullet_hitbox_index,X
C - - - - - 0x0061FE 01:A1EE: 4C 5D FE  JMP loc_0x01FE6D



sub_A1F1:
C - - - - - 0x006201 01:A1F1: 85 08     STA ram_0008
C - - - - - 0x006203 01:A1F3: 86 11     STX ram_0011
C - - - - - 0x006205 01:A1F5: A4 10     LDY ram_0010
C - - - - - 0x006207 01:A1F7: B9 76 06  LDA ram_obj_hp,Y
C - - - - - 0x00620A 01:A1FA: C9 F0     CMP #$F0    ; con__hp_F0 con__hp_F1
C - - - - - 0x00620C 01:A1FC: B0 21     BCS bra_A21F
; C = 0
C - - - - - 0x00620E 01:A1FE: E5 08     SBC ram_0008
C - - - - - 0x006210 01:A200: B0 02     BCS bra_A204
C - - - - - 0x006212 01:A202: A9 00     LDA #$00
bra_A204:
C - - - - - 0x006214 01:A204: 99 76 06  STA ram_obj_hp,Y
C - - - - - 0x006217 01:A207: D0 0E     BNE bra_A217
C - - - - - 0x006219 01:A209: A6 10     LDX ram_0010
C - - - - - 0x00621B 01:A20B: 20 70 A4  JSR sub_A470_add_points_and_kill_enemy
C - - - - - 0x00621E 01:A20E: A6 11     LDX ram_0011
C - - - - - 0x006220 01:A210: C6 08     DEC ram_0008
C - - - - - 0x006222 01:A212: 30 08     BMI bra_A21C
C - - - - - 0x006224 01:A214: A0 01     LDY #$01
C - - - - - 0x006226 01:A216: 60        RTS
bra_A217:
C - - - - - 0x006227 01:A217: A9 11     LDA #con_sound_11
bra_A219:
C - - - - - 0x006229 01:A219: 20 DE FD  JSR sub_0x01FDEE_play_sound
bra_A21C:
C - - - - - 0x00622C 01:A21C: A0 00     LDY #$00
C - - - - - 0x00622E 01:A21E: 60        RTS
bra_A21F:
C - - - - - 0x00622F 01:A21F: A9 11     LDA #con_sound_11
C - - - - - 0x006231 01:A221: D0 F6     BNE bra_A219    ; jmp



loc_0x006233_object_handler:
C D 1 - - - 0x006233 01:A223: A0 00     LDY #$00
C - - - - - 0x006235 01:A225: A5 72     LDA ram_cam_spd_Y
C - - - - - 0x006237 01:A227: 10 01     BPL bra_A22A
C - - - - - 0x006239 01:A229: 88        DEY ; FF
bra_A22A:
C - - - - - 0x00623A 01:A22A: 84 8E     STY ram_008E
C - - - - - 0x00623C 01:A22C: A2 0D     LDX #con_max_index_enemies
bra_A22E_loop:
C - - - - - 0x00623E 01:A22E: 86 10     STX ram_0010
C - - - - - 0x006240 01:A230: BD 08 05  LDA ram_anim_id_enemy,X
C - - - - - 0x006243 01:A233: F0 19     BEQ bra_A24E_00
C - - - - - 0x006245 01:A235: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x006248 01:A238: 85 06     STA ram_0006
C - - - - - 0x00624A 01:A23A: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x00624D 01:A23D: 85 05     STA ram_0005
C - - - - - 0x00624F 01:A23F: BD 3A 07  LDA ram_073A_obj_hitbox_index,X
C - - - - - 0x006252 01:A242: 85 07     STA ram_0007
C - - - - - 0x006254 01:A244: 20 E0 A0  JSR sub_A0E0_check_objects_collision_with_players
C - - - - - 0x006257 01:A247: A6 10     LDX ram_0010
C - - - - - 0x006259 01:A249: 20 96 A1  JSR sub_A196_check_player_bullets_collision_with_objects
C - - - - - 0x00625C 01:A24C: A6 10     LDX ram_0010
bra_A24E_00:
C - - - - - 0x00625E 01:A24E: 20 55 A2  JSR sub_A255_object_handler
C - - - - - 0x006261 01:A251: CA        DEX
C - - - - - 0x006262 01:A252: 10 DA     BPL bra_A22E_loop
C - - - - - 0x006264 01:A254: 60        RTS



sub_A255_object_handler:
C - - - - - 0x006265 01:A255: BD D8 06  LDA ram_obj_id,X
C - - - - - 0x006268 01:A258: 0A        ASL
C - - - - - 0x006269 01:A259: A8        TAY
C - - - - - 0x00626A 01:A25A: B9 B4 A5  LDA tbl_A5B4,Y
C - - - - - 0x00626D 01:A25D: 85 02     STA ram_0002
C - - - - - 0x00626F 01:A25F: B9 B5 A5  LDA tbl_A5B4 + $01,Y
C - - - - - 0x006272 01:A262: 85 03     STA ram_0003
C - - - - - 0x006274 01:A264: BD 68 06  LDA ram_obj_state,X
C - - - - - 0x006277 01:A267: 0A        ASL
C - - - - - 0x006278 01:A268: A8        TAY
C - - - - - 0x006279 01:A269: B1 02     LDA (ram_0002),Y
C - - - - - 0x00627B 01:A26B: 85 04     STA ram_0004
C - - - - - 0x00627D 01:A26D: C8        INY
C - - - - - 0x00627E 01:A26E: B1 02     LDA (ram_0002),Y
C - - - - - 0x006280 01:A270: 85 05     STA ram_0005
C - - - - - 0x006282 01:A272: 6C 04 00  JMP (ram_0004)



bra_A275:
loc_A275_delete_object_02:
ofs_038_02_A275_04_delete_object_02:
ofs_038_10_A275_04_delete_object_02:
sub_0x006285_delete_object_02:
loc_0x006285_delete_object_02:
ofs_038_36_0x006285_03_delete_object_02:
ofs_038_70_0x006285_03_delete_object_02:
ofs_038_33_0x006285_03_delete_object_02:
ofs_038_3C_0x006285_03_delete_object_02:
ofs_038_38_0x006285_03_delete_object_02:
ofs_038_2B_0x006285_04_delete_object_02:
ofs_038_23_0x006285_07_delete_object_02:
ofs_038_3A_0x006285_04_delete_object_02:
C D 1 - - - 0x006285 01:A275: A9 00     LDA #$00
C - - - - - 0x006287 01:A277: 9D 68 06  STA ram_obj_state,X
C - - - - - 0x00628A 01:A27A: 20 9C F7  JSR sub_0x01F7AC_delete_object_01
bra_A27D_clear_anim_id:
loc_A27D_clear_anim_id:
sub_A27D_clear_anim_id:
loc_0x00628D_clear_anim_id:
C D 1 - - - 0x00628D 01:A27D: A9 00     LDA #$00
C - - - - - 0x00628F 01:A27F: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x006292 01:A282: 60        RTS



loc_A283_set_obj_state:
sub_A283_set_obj_state:
loc_0x006293_set_obj_state:
C D 1 - - - 0x006293 01:A283: BC 68 06  LDY ram_obj_state,X
C - - - - - 0x006296 01:A286: F0 F5     BEQ bra_A27D_clear_anim_id
C - - - - - 0x006298 01:A288: 9D 68 06  STA ram_obj_state,X
C - - - - - 0x00629B 01:A28B: 60        RTS



ofs_038_29_0x00629C_03:
ofs_038_06_A28C_03:
C - - J - - 0x00629C 01:A28C: 20 9A A2  JSR sub_A29A
C - - - - - 0x00629F 01:A28F: A9 0C     LDA #$0C
C - - - - - 0x0062A1 01:A291: 9D 3A 07  STA ram_073A_obj_hitbox_index,X
C - - - - - 0x0062A4 01:A294: A9 82     LDA #$82
C - - - - - 0x0062A6 01:A296: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0062A9 01:A299: 60        RTS



loc_A29A:
sub_A29A:
ofs_038_03_A29A_06:
ofs_038_05_A29A_05:
ofs_038_07_A29A_05:
ofs_038_09_A29A_05:
ofs_038_0C_A29A_01_initialize_object:
sub_0x0062AA:
loc_0x0062AA:
ofs_038_6C_0x0062AA_03:
ofs_038_6B_0x0062AA_04:
ofs_038_40_0x0062AA_08:
ofs_038_31_0x0062AA_04:
ofs_038_2D_0x0062AA_03:
ofs_038_25_0x0062AA_03:
ofs_038_63_0x0062AA_04:
ofs_038_5C_0x0062AA_03:
ofs_038_68_0x0062AA_03:
ofs_038_61_0x0062AA_03:
ofs_038_24_0x0062AA_04:
ofs_038_5F_0x0062AA_05:
ofs_038_35_0x0062AA_05:
ofs_038_5A_0x0062AA_04:
ofs_038_34_0x0062AA_04:
ofs_038_2F_0x0062AA_03:
ofs_038_56_0x0062AA_08:
ofs_038_55_0x0062AA_03:
ofs_038_54_0x0062AA_04:
ofs_038_3E_0x0062AA_03:
ofs_038_3B_0x0062AA_04:
ofs_038_37_0x0062AA_04:
ofs_038_2A_0x0062AA_04:
ofs_038_46_0x0062AA_05:
ofs_038_26_0x0062AA_07:
ofs_038_50_0x0062AA_07:
C D 1 J - - 0x0062AA 01:A29A: BD 08 05  LDA ram_anim_id_enemy,X
C - - - - - 0x0062AD 01:A29D: F0 D6     BEQ bra_A275
C - - - - - 0x0062AF 01:A29F: 20 B7 A6  JSR sub_A6B7_delete_object_03
loc_0x0062B2:
ofs_038_42_0x0062B2_08:
C D 1 - - - 0x0062B2 01:A2A2: A9 02     LDA #$02
C - - - - - 0x0062B4 01:A2A4: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x0062B7 01:A2A7: BD 2C 07  LDA ram_072C_obj,X
C - - - - - 0x0062BA 01:A2AA: 4A        LSR
C - - - - - 0x0062BB 01:A2AB: 4A        LSR
C - - - - - 0x0062BC 01:A2AC: 29 0F     AND #$0F
C - - - - - 0x0062BE 01:A2AE: A8        TAY
C - - - - - 0x0062BF 01:A2AF: B9 E6 A2  LDA tbl_A2E6_death_sound,Y
; bzk optimize, no 00 values
C - - - - - 0x0062C2 01:A2B2: F0 0C     BEQ bra_A2C0_no_sound
C - - - - - 0x0062C4 01:A2B4: 10 07     BPL bra_A2BD
C - - - - - 0x0062C6 01:A2B6: 48        PHA
C - - - - - 0x0062C7 01:A2B7: 20 0E FE  JSR sub_0x01FE1E_stop_sound_engine
C - - - - - 0x0062CA 01:A2BA: 68        PLA
C - - - - - 0x0062CB 01:A2BB: 29 7F     AND #$7F
bra_A2BD:
C - - - - - 0x0062CD 01:A2BD: 20 DE FD  JSR sub_0x01FDEE_play_sound
bra_A2C0_no_sound:
C - - - - - 0x0062D0 01:A2C0: A9 01     LDA #$01
C - - - - - 0x0062D2 01:A2C2: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x0062D5 01:A2C5: A9 FF     LDA #$FF
C - - - - - 0x0062D7 01:A2C7: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x0062DA 01:A2CA: A9 01     LDA #$01
C - - - - - 0x0062DC 01:A2CC: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x0062DF 01:A2CF: BD 2C 07  LDA ram_072C_obj,X
C - - - - - 0x0062E2 01:A2D2: 09 81     ORA #$81
C - - - - - 0x0062E4 01:A2D4: 9D 2C 07  STA ram_072C_obj,X
bra_A2D7_increase_obj_state:
sub_A2D7_increase_obj_state:
loc_A2D7_increase_obj_state:
sub_0x0062E7_increase_obj_state:
loc_0x0062E7_increase_obj_state:
C D 1 - - - 0x0062E7 01:A2D7: BD 68 06  LDA ram_obj_state,X
C - - - - - 0x0062EA 01:A2DA: F0 A1     BEQ bra_A27D_clear_anim_id
C - - - - - 0x0062EC 01:A2DC: FE 68 06  INC ram_obj_state,X
C - - - - - 0x0062EF 01:A2DF: 60        RTS



loc_A2E0:
sub_0x0062F0:
loc_0x0062F0:
C D 1 - - - 0x0062F0 01:A2E0: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x0062F3 01:A2E3: 4C D7 A2  JMP loc_A2D7_increase_obj_state



tbl_A2E6_death_sound:
- D 1 - - - 0x0062F6 01:A2E6: 13        .byte $00 + con_sound_13   ; 00
- D 1 - - - 0x0062F7 01:A2E7: 1B        .byte $00 + con_sound_1B   ; 04
- D 1 - - - 0x0062F8 01:A2E8: 1C        .byte $00 + con_sound_1C   ; 08
- D 1 - - - 0x0062F9 01:A2E9: 1A        .byte $00 + con_sound_1A   ; 0C
- D 1 - - - 0x0062FA 01:A2EA: A6        .byte $80 + con_sound_26   ; 10 +
- D 1 - - - 0x0062FB 01:A2EB: 14        .byte $00 + con_sound_14   ; 14
- D 1 - - - 0x0062FC 01:A2EC: 12        .byte $00 + con_sound_12   ; 18
- D 1 - - - 0x0062FD 01:A2ED: 18        .byte $00 + con_sound_18   ; 1C
- D 1 - - - 0x0062FE 01:A2EE: 24        .byte $00 + con_sound_24   ; 20


; bzk garbage
- - - - - - 0x0062FF 01:A2EF: 00        .byte $00   ; 
- - - - - - 0x006300 01:A2F0: 00        .byte $00   ; 
- - - - - - 0x006301 01:A2F1: 00        .byte $00   ; 
- - - - - - 0x006302 01:A2F2: 00        .byte $00   ; 
- - - - - - 0x006303 01:A2F3: 00        .byte $00   ; 
- - - - - - 0x006304 01:A2F4: 00        .byte $00   ; 
- - - - - - 0x006305 01:A2F5: 00        .byte $00   ; 



loc_0x006306:
ofs_038_21_0x006306_09:
ofs_038_42_0x006306_09:
ofs_038_69_0x006306_09:
ofs_038_64_0x006306_08:
ofs_038_65_0x006306_0C:
ofs_038_51_0x006306_0A:
ofs_038_6D_0x006306_0B:
C D 1 J - - 0x006306 01:A2F6: BD 08 05  LDA ram_anim_id_enemy,X
C - - - - - 0x006309 01:A2F9: F0 DC     BEQ bra_A2D7_increase_obj_state
C - - - - - 0x00630B 01:A2FB: D0 03     BNE bra_A300    ; jmp



ofs_038_01_A2FD_04:
ofs_038_03_A2FD_07:
ofs_038_04_A2FD_04:
ofs_038_05_A2FD_06:
ofs_038_06_A2FD_04:
ofs_038_07_A2FD_06:
ofs_038_09_A2FD_06:
ofs_038_0A_A2FD_07:
ofs_038_0B_A2FD_07:
ofs_038_0C_A2FD_02:
ofs_038_0D_A2FD_08:
sub_0x00630D:
loc_0x00630D:
ofs_038_20_0x00630D_08:
ofs_038_22_0x00630D_06:
ofs_038_26_0x00630D_08:
ofs_038_27_0x00630D_06:
ofs_038_28_0x00630D_07:
ofs_038_29_0x00630D_04:
ofs_038_4E_0x00630D_08:
ofs_038_50_0x00630D_08:
ofs_038_6C_0x00630D_04:
ofs_038_6B_0x00630D_05:
ofs_038_40_0x00630D_09:
ofs_038_31_0x00630D_05:
ofs_038_2D_0x00630D_04:
ofs_038_25_0x00630D_04:
ofs_038_63_0x00630D_05:
ofs_038_5C_0x00630D_04:
ofs_038_5B_0x00630D_08:
ofs_038_2E_0x00630D_08:
ofs_038_66_0x00630D_04:
ofs_038_68_0x00630D_04:
ofs_038_61_0x00630D_04:
ofs_038_24_0x00630D_05:
ofs_038_5F_0x00630D_06:
ofs_038_5D_0x00630D_05:
ofs_038_35_0x00630D_06:
ofs_038_5A_0x00630D_05:
ofs_038_34_0x00630D_05:
ofs_038_32_0x00630D_06:
ofs_038_2F_0x00630D_04:
ofs_038_56_0x00630D_09:
ofs_038_55_0x00630D_04:
ofs_038_54_0x00630D_05:
ofs_038_53_0x00630D_04:
ofs_038_52_0x00630D_06:
ofs_038_3E_0x00630D_04:
ofs_038_3D_0x00630D_05:
ofs_038_3B_0x00630D_05:
ofs_038_37_0x00630D_05:
ofs_038_47_0x00630D_04:
ofs_038_2A_0x00630D_05:
ofs_038_46_0x00630D_06:
ofs_038_45_0x00630D_05:
C D 1 J - - 0x00630D 01:A2FD: 20 B7 A6  JSR sub_A6B7_delete_object_03
bra_A300:
C - - - - - 0x006310 01:A300: BD 68 06  LDA ram_obj_state,X
C - - - - - 0x006313 01:A303: F0 31     BEQ bra_A336_RTS
C - - - - - 0x006315 01:A305: DE 02 07  DEC ram_0702_obj,X
C - - - - - 0x006318 01:A308: D0 2C     BNE bra_A336_RTS
C - - - - - 0x00631A 01:A30A: BD 2C 07  LDA ram_072C_obj,X
C - - - - - 0x00631D 01:A30D: 4A        LSR
C - - - - - 0x00631E 01:A30E: 4A        LSR
C - - - - - 0x00631F 01:A30F: A9 04     LDA #$04
C - - - - - 0x006321 01:A311: 90 02     BCC bra_A315
C - - - - - 0x006323 01:A313: A9 03     LDA #$03
bra_A315:
C - - - - - 0x006325 01:A315: 85 00     STA ram_0000
C - - - - - 0x006327 01:A317: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x00632A 01:A31A: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x00632D 01:A31D: C4 00     CPY ram_0000
C - - - - - 0x00632F 01:A31F: B0 B6     BCS bra_A2D7_increase_obj_state
C - - - - - 0x006331 01:A321: A9 05     LDA #$05
C - - - - - 0x006333 01:A323: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x006336 01:A326: BD 2C 07  LDA ram_072C_obj,X
C - - - - - 0x006339 01:A329: 4A        LSR
C - - - - - 0x00633A 01:A32A: 4A        LSR
C - - - - - 0x00633B 01:A32B: B9 4D A3  LDA tbl_A34D,Y
C - - - - - 0x00633E 01:A32E: 90 03     BCC bra_A333
C - - - - - 0x006340 01:A330: B9 51 A3  LDA tbl_A351,Y
bra_A333:
C - - - - - 0x006343 01:A333: 9D 08 05  STA ram_anim_id_enemy,X
bra_A336_RTS:
C - - - - - 0x006346 01:A336: 60        RTS



loc_0x006347_delete_object_boss:
ofs_038_6D_0x006347_0C_delete_object_boss:
C D 1 - - - 0x006347 01:A337: A9 80     LDA #$80
C - - - - - 0x006349 01:A339: 85 5C     STA ram_area_end_flags
C - - - - - 0x00634B 01:A33B: D0 03     BNE bra_A340    ; jmp



ofs_038_01_A33D_05_delete_object_04:
ofs_038_03_A33D_08_delete_object_04:
ofs_038_04_A33D_05_delete_object_04:
ofs_038_05_A33D_07_delete_object_04:
ofs_038_06_A33D_05_delete_object_04:
ofs_038_07_A33D_07_delete_object_04:
ofs_038_09_A33D_07_delete_object_04:
ofs_038_0A_A33D_08_delete_object_04:
ofs_038_0B_A33D_08_delete_object_04:
ofs_038_0C_A33D_03_delete_object_04:
ofs_038_0D_A33D_09_delete_object_04:
sub_0x00634D_delete_object_04:
loc_0x00634D_delete_object_04:
ofs_038_6C_0x00634D_05_delete_object_04:
ofs_038_6B_0x00634D_06_delete_object_04:
ofs_038_40_0x00634D_0A_delete_object_04:
ofs_038_31_0x00634D_06_delete_object_04:
ofs_038_2D_0x00634D_05_delete_object_04:
ofs_038_25_0x00634D_05_delete_object_04:
ofs_038_63_0x00634D_06_delete_object_04:
ofs_038_5C_0x00634D_05_delete_object_04:
ofs_038_5B_0x00634D_09_delete_object_04:
ofs_038_2E_0x00634D_09_delete_object_04:
ofs_038_66_0x00634D_05_delete_object_04:
ofs_038_68_0x00634D_05_delete_object_04:
ofs_038_61_0x00634D_05_delete_object_04:
ofs_038_24_0x00634D_06_delete_object_04:
ofs_038_5F_0x00634D_07_delete_object_04:
ofs_038_5D_0x00634D_06_delete_object_04:
ofs_038_35_0x00634D_07_delete_object_04:
ofs_038_5A_0x00634D_06_delete_object_04:
ofs_038_34_0x00634D_06_delete_object_04:
ofs_038_32_0x00634D_07_delete_object_04:
ofs_038_2F_0x00634D_05_delete_object_04:
ofs_038_56_0x00634D_0A_delete_object_04:
ofs_038_55_0x00634D_05_delete_object_04:
ofs_038_54_0x00634D_06_delete_object_04:
ofs_038_3E_0x00634D_05_delete_object_04:
ofs_038_3D_0x00634D_06_delete_object_04:
ofs_038_3B_0x00634D_06_delete_object_04:
ofs_038_37_0x00634D_06_delete_object_04:
ofs_038_47_0x00634D_05_delete_object_04:
ofs_038_2A_0x00634D_06_delete_object_04:
ofs_038_46_0x00634D_07_delete_object_04:
ofs_038_45_0x00634D_06_delete_object_04:
ofs_038_20_0x00634D_09_delete_object_04:
ofs_038_26_0x00634D_09_delete_object_04:
ofs_038_27_0x00634D_07_delete_object_04:
ofs_038_28_0x00634D_08_delete_object_04:
ofs_038_29_0x00634D_05_delete_object_04:
ofs_038_50_0x00634D_09_delete_object_04:
C D 1 J - - 0x00634D 01:A33D: 20 B7 A6  JSR sub_A6B7_delete_object_03
bra_A340:
C - - - - - 0x006350 01:A340: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x006353 01:A343: 29 FB     AND #$FB
C - - - - - 0x006355 01:A345: 9D 1E 07  STA ram_obj_flags,X
C - - - - - 0x006358 01:A348: A0 FF     LDY #$FF    ; bzk optimize, Y will be overwritten
C - - - - - 0x00635A 01:A34A: 4C 75 A2  JMP loc_A275_delete_object_02



tbl_A34D:
- D 1 - - - 0x00635D 01:A34D: 02        .byte $02   ; 00 
- D 1 - - - 0x00635E 01:A34E: 0F        .byte $0F   ; 01 
- D 1 - - - 0x00635F 01:A34F: 10        .byte $10   ; 02 
- D 1 - - - 0x006360 01:A350: 11        .byte $11   ; 03 



tbl_A351:
- D 1 - - - 0x006361 01:A351: 12        .byte $12   ; 00 
- D 1 - - - 0x006362 01:A352: 13        .byte $13   ; 01 
- D 1 - - - 0x006363 01:A353: 14        .byte $14   ; 02 



loc_0x006364_delete_object_06:
ofs_038_20_0x006364_05_delete_object_06:
ofs_038_22_0x006364_03_delete_object_06:
ofs_038_28_0x006364_04_delete_object_06:
ofs_038_5B_0x006364_05_delete_object_06:
ofs_038_2E_0x006364_05_delete_object_06:
C D 1 J - - 0x006364 01:A354: BD 2C 07  LDA ram_072C_obj,X
C - - - - - 0x006367 01:A357: 29 E3     AND #$E3
C - - - - - 0x006369 01:A359: 09 04     ORA #$04
C - - - - - 0x00636B 01:A35B: 9D 2C 07  STA ram_072C_obj,X
ofs_038_0D_A35E_04_delete_object_05:
C - - - - - 0x00636E 01:A35E: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x006371 01:A361: A9 05     LDA #$05
C - - - - - 0x006373 01:A363: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x006376 01:A366: A9 01     LDA #$01
C - - - - - 0x006378 01:A368: 4C E0 A2  JMP loc_A2E0



ofs_038_0D_A36B_05_delete_object_07:
loc_0x00637B:
ofs_038_20_0x00637B_06_delete_object_07:
ofs_038_22_0x00637B_04_delete_object_07:
ofs_038_28_0x00637B_05_delete_object_07:
ofs_038_5B_0x00637B_06_delete_object_07:
ofs_038_2E_0x00637B_06_delete_object_07:
C D 1 J - - 0x00637B 01:A36B: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x00637E 01:A36E: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x006381 01:A371: D0 37     BNE bra_A3AA_RTS
C - - - - - 0x006383 01:A373: A9 08     LDA #$08
C - - - - - 0x006385 01:A375: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x006388 01:A378: DE 72 07  DEC ram_0772_obj,X
C - - - - - 0x00638B 01:A37B: 30 2E     BMI bra_A3AB
C - - - - - 0x00638D 01:A37D: A0 0C     LDY #con_obj_id_0C
C - - - - - 0x00638F 01:A37F: 20 C8 AB  JSR sub_ABC8
C - - - - - 0x006392 01:A382: 90 26     BCC bra_A3AA_RTS
C - - - - - 0x006394 01:A384: BC 72 07  LDY ram_0772_obj,X
C - - - - - 0x006397 01:A387: B9 AE A3  LDA tbl_A3AE,Y
C - - - - - 0x00639A 01:A38A: 7D 22 05  ADC ram_pos_Y_hi_enemy,X
C - - - - - 0x00639D 01:A38D: 85 08     STA ram_0008
C - - - - - 0x00639F 01:A38F: 6A        ROR
C - - - - - 0x0063A0 01:A390: 59 AE A3  EOR tbl_A3AE,Y
C - - - - - 0x0063A3 01:A393: 30 0E     BMI bra_A3A3
C - - - - - 0x0063A5 01:A395: B9 B3 A3  LDA tbl_A3B3,Y
C - - - - - 0x0063A8 01:A398: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x0063AB 01:A39B: 85 09     STA ram_0009
C - - - - - 0x0063AD 01:A39D: 6A        ROR
C - - - - - 0x0063AE 01:A39E: 59 B3 A3  EOR tbl_A3B3,Y
C - - - - - 0x0063B1 01:A3A1: 10 74     BPL bra_A417
bra_A3A3:
C - - - - - 0x0063B3 01:A3A3: A4 11     LDY ram_0011
C - - - - - 0x0063B5 01:A3A5: A9 00     LDA #$00
C - - - - - 0x0063B7 01:A3A7: 99 08 05  STA ram_anim_id_enemy,Y
bra_A3AA_RTS:
C - - - - - 0x0063BA 01:A3AA: 60        RTS
bra_A3AB:
C - - - - - 0x0063BB 01:A3AB: 4C D7 A2  JMP loc_A2D7_increase_obj_state



tbl_A3AE:
- D 1 - - - 0x0063BE 01:A3AE: 0E        .byte $0E   ; 00 
- D 1 - - - 0x0063BF 01:A3AF: F0        .byte $F0   ; 01 
- D 1 - - - 0x0063C0 01:A3B0: 02        .byte $02   ; 02 
- D 1 - - - 0x0063C1 01:A3B1: FC        .byte $FC   ; 03 
- D 1 - - - 0x0063C2 01:A3B2: 08        .byte $08   ; 04 



tbl_A3B3:
- D 1 - - - 0x0063C3 01:A3B3: F8        .byte $F8   ; 00 
- D 1 - - - 0x0063C4 01:A3B4: 03        .byte $03   ; 01 
- D 1 - - - 0x0063C5 01:A3B5: F4        .byte $F4   ; 02 
- D 1 - - - 0x0063C6 01:A3B6: 0E        .byte $0E   ; 03 
- D 1 - - - 0x0063C7 01:A3B7: FE        .byte $FE   ; 04 



loc_0x0063C8_boss_starts_exploding:
ofs_038_42_0x0063C8_06_boss_starts_exploding:
ofs_038_51_0x0063C8_07_boss_starts_exploding:
C D 1 - - - 0x0063C8 01:A3B8: E6 5C     INC ram_area_end_flags
C - - - - - 0x0063CA 01:A3BA: A9 1D     LDA #$1D
C - - - - - 0x0063CC 01:A3BC: D0 02     BNE bra_A3C0    ; jmp



ofs_038_4E_0x0063CE_05:
C - - J - - 0x0063CE 01:A3BE: A9 0E     LDA #$0E
bra_A3C0:
C - - - - - 0x0063D0 01:A3C0: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x0063D3 01:A3C3: A9 01     LDA #$01
C - - - - - 0x0063D5 01:A3C5: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x0063D8 01:A3C8: BD 2C 07  LDA ram_072C_obj,X
C - - - - - 0x0063DB 01:A3CB: 09 81     ORA #$81
C - - - - - 0x0063DD 01:A3CD: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0063E0 01:A3D0: 20 96 A5  JSR sub_A596_kill_all_objects
C - - - - - 0x0063E3 01:A3D3: A9 01     LDA #$01
C - - - - - 0x0063E5 01:A3D5: 4C E0 A2  JMP loc_A2E0



loc_0x0063E8:
ofs_038_4E_0x0063E8_06:
ofs_038_42_0x0063E8_07:
ofs_038_51_0x0063E8_08:
C D 1 - - - 0x0063E8 01:A3D8: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0063EB 01:A3DB: D0 53     BNE bra_A430_RTS
C - - - - - 0x0063ED 01:A3DD: A9 08     LDA #$08
C - - - - - 0x0063EF 01:A3DF: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x0063F2 01:A3E2: DE 72 07  DEC ram_0772_obj,X
C - - - - - 0x0063F5 01:A3E5: 30 4A     BMI bra_A431
C - - - - - 0x0063F7 01:A3E7: A0 0C     LDY #con_obj_id_0C
C - - - - - 0x0063F9 01:A3E9: 20 C8 AB  JSR sub_ABC8
C - - - - - 0x0063FC 01:A3EC: 90 42     BCC bra_A430_RTS
C - - - - - 0x0063FE 01:A3EE: BC 72 07  LDY ram_0772_obj,X
C - - - - - 0x006401 01:A3F1: B9 34 A4  LDA tbl_A434,Y
C - - - - - 0x006404 01:A3F4: 18        CLC
C - - - - - 0x006405 01:A3F5: 7D 22 05  ADC ram_pos_Y_hi_enemy,X
C - - - - - 0x006408 01:A3F8: 85 08     STA ram_0008
C - - - - - 0x00640A 01:A3FA: 6A        ROR
C - - - - - 0x00640B 01:A3FB: 59 34 A4  EOR tbl_A434,Y
C - - - - - 0x00640E 01:A3FE: 30 A3     BMI bra_A3A3
C - - - - - 0x006410 01:A400: B9 52 A4  LDA tbl_A452,Y
C - - - - - 0x006413 01:A403: 18        CLC
C - - - - - 0x006414 01:A404: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x006417 01:A407: 85 09     STA ram_0009
C - - - - - 0x006419 01:A409: 6A        ROR
C - - - - - 0x00641A 01:A40A: 59 52 A4  EOR tbl_A452,Y
C - - - - - 0x00641D 01:A40D: BC 9C 07  LDY ram_079C_obj,X
C - - - - - 0x006420 01:A410: F0 02     BEQ bra_A414
C - - - - - 0x006422 01:A412: 49 80     EOR #$80
bra_A414:
C - - - - - 0x006424 01:A414: A8        TAY
C - - - - - 0x006425 01:A415: 30 8C     BMI bra_A3A3
bra_A417:
C - - - - - 0x006427 01:A417: A4 11     LDY ram_0011
C - - - - - 0x006429 01:A419: A5 09     LDA ram_0009
C - - - - - 0x00642B 01:A41B: 99 3C 05  STA ram_pos_X_hi_enemy,Y
C - - - - - 0x00642E 01:A41E: A5 08     LDA ram_0008
C - - - - - 0x006430 01:A420: 99 22 05  STA ram_pos_Y_hi_enemy,Y
C - - - - - 0x006433 01:A423: A9 01     LDA #$01
C - - - - - 0x006435 01:A425: 99 08 05  STA ram_anim_id_enemy,Y
C - - - - - 0x006438 01:A428: B9 2C 07  LDA ram_072C_obj,Y
C - - - - - 0x00643B 01:A42B: 09 A1     ORA #$A1
C - - - - - 0x00643D 01:A42D: 99 2C 07  STA ram_072C_obj,Y
bra_A430_RTS:
C - - - - - 0x006440 01:A430: 60        RTS
bra_A431:
C - - - - - 0x006441 01:A431: 4C D7 A2  JMP loc_A2D7_increase_obj_state



tbl_A434:
- D 1 - - - 0x006444 01:A434: 00        .byte $00   ; 00 
- D 1 - - - 0x006445 01:A435: F8        .byte $F8   ; 01 
- D 1 - - - 0x006446 01:A436: 18        .byte $18   ; 02 
- D 1 - - - 0x006447 01:A437: 08        .byte $08   ; 03 
- D 1 - - - 0x006448 01:A438: E8        .byte $E8   ; 04 
- D 1 - - - 0x006449 01:A439: 00        .byte $00   ; 05 
- D 1 - - - 0x00644A 01:A43A: F8        .byte $F8   ; 06 
- D 1 - - - 0x00644B 01:A43B: 18        .byte $18   ; 07 
- D 1 - - - 0x00644C 01:A43C: 00        .byte $00   ; 08 
- D 1 - - - 0x00644D 01:A43D: E8        .byte $E8   ; 09 
- D 1 - - - 0x00644E 01:A43E: F0        .byte $F0   ; 0A 
- D 1 - - - 0x00644F 01:A43F: E8        .byte $E8   ; 0B 
- D 1 - - - 0x006450 01:A440: 00        .byte $00   ; 0C 
- D 1 - - - 0x006451 01:A441: 10        .byte $10   ; 0D 
- D 1 - - - 0x006452 01:A442: 00        .byte $00   ; 0E 
- D 1 - - - 0x006453 01:A443: 00        .byte $00   ; 0F 
- D 1 - - - 0x006454 01:A444: F8        .byte $F8   ; 10 
- D 1 - - - 0x006455 01:A445: 18        .byte $18   ; 11 
- D 1 - - - 0x006456 01:A446: 08        .byte $08   ; 12 
- D 1 - - - 0x006457 01:A447: E8        .byte $E8   ; 13 
- D 1 - - - 0x006458 01:A448: 00        .byte $00   ; 14 
- D 1 - - - 0x006459 01:A449: F8        .byte $F8   ; 15 
- D 1 - - - 0x00645A 01:A44A: 18        .byte $18   ; 16 
- D 1 - - - 0x00645B 01:A44B: 00        .byte $00   ; 17 
- D 1 - - - 0x00645C 01:A44C: E8        .byte $E8   ; 18 
- D 1 - - - 0x00645D 01:A44D: F0        .byte $F0   ; 19 
- D 1 - - - 0x00645E 01:A44E: E8        .byte $E8   ; 1A 
- D 1 - - - 0x00645F 01:A44F: 00        .byte $00   ; 1B 
- D 1 - - - 0x006460 01:A450: 10        .byte $10   ; 1C 
- - - - - - 0x006461 01:A451: 00        .byte $00   ; 1D 



tbl_A452:
- D 1 - - - 0x006462 01:A452: F8        .byte $F8   ; 00 
- D 1 - - - 0x006463 01:A453: 10        .byte $10   ; 01 
- D 1 - - - 0x006464 01:A454: 00        .byte $00   ; 02 
- D 1 - - - 0x006465 01:A455: E0        .byte $E0   ; 03 
- D 1 - - - 0x006466 01:A456: 00        .byte $00   ; 04 
- D 1 - - - 0x006467 01:A457: DD        .byte $DD   ; 05 
- D 1 - - - 0x006468 01:A458: 20        .byte $20   ; 06 
- D 1 - - - 0x006469 01:A459: 15        .byte $15   ; 07 
- D 1 - - - 0x00646A 01:A45A: F0        .byte $F0   ; 08 
- D 1 - - - 0x00646B 01:A45B: 00        .byte $00   ; 09 
- D 1 - - - 0x00646C 01:A45C: E8        .byte $E8   ; 0A 
- D 1 - - - 0x00646D 01:A45D: 18        .byte $18   ; 0B 
- D 1 - - - 0x00646E 01:A45E: 18        .byte $18   ; 0C 
- D 1 - - - 0x00646F 01:A45F: 20        .byte $20   ; 0D 
- D 1 - - - 0x006470 01:A460: 00        .byte $00   ; 0E 
- D 1 - - - 0x006471 01:A461: F8        .byte $F8   ; 0F 
- D 1 - - - 0x006472 01:A462: 10        .byte $10   ; 10 
- D 1 - - - 0x006473 01:A463: 00        .byte $00   ; 11 
- D 1 - - - 0x006474 01:A464: E0        .byte $E0   ; 12 
- D 1 - - - 0x006475 01:A465: 00        .byte $00   ; 13 
- D 1 - - - 0x006476 01:A466: DD        .byte $DD   ; 14 
- D 1 - - - 0x006477 01:A467: 20        .byte $20   ; 15 
- D 1 - - - 0x006478 01:A468: 15        .byte $15   ; 16 
- D 1 - - - 0x006479 01:A469: F0        .byte $F0   ; 17 
- D 1 - - - 0x00647A 01:A46A: 00        .byte $00   ; 18 
- D 1 - - - 0x00647B 01:A46B: E8        .byte $E8   ; 19 
- D 1 - - - 0x00647C 01:A46C: 18        .byte $18   ; 1A 
- D 1 - - - 0x00647D 01:A46D: 18        .byte $18   ; 1B 
- D 1 - - - 0x00647E 01:A46E: 20        .byte $20   ; 1C 
- - - - - - 0x00647F 01:A46F: 00        .byte $00   ; 1D 



loc_A470_add_points_and_kill_enemy:
sub_A470_add_points_and_kill_enemy:
C D 1 - - - 0x006480 01:A470: 20 A8 A4  JSR sub_A4A8_add_points_to_score
C - - - - - 0x006483 01:A473: A6 10     LDX ram_0010
sub_A475_kill_enemy:
sub_0x006485_kill_enemy:
C - - - - - 0x006485 01:A475: BD D8 06  LDA ram_obj_id,X
C - - - - - 0x006488 01:A478: 4A        LSR
C - - - - - 0x006489 01:A479: A8        TAY
C - - - - - 0x00648A 01:A47A: B9 56 A5  LDA tbl_A556_next_obj_state,Y
C - - - - - 0x00648D 01:A47D: B0 04     BCS bra_A483    ; if odd id
; if even id
C - - - - - 0x00648F 01:A47F: 4A        LSR
C - - - - - 0x006490 01:A480: 4A        LSR
C - - - - - 0x006491 01:A481: 4A        LSR
C - - - - - 0x006492 01:A482: 4A        LSR
bra_A483:
C - - - - - 0x006493 01:A483: 29 0F     AND #$0F
C - - - - - 0x006495 01:A485: DD 68 06  CMP ram_obj_state,X
C - - - - - 0x006498 01:A488: 90 1D     BCC bra_A4A7_RTS    ; if state is lower
C - - - - - 0x00649A 01:A48A: F0 1B     BEQ bra_A4A7_RTS    ; if state is equal
C - - - - - 0x00649C 01:A48C: 9D 68 06  STA ram_obj_state,X
C - - - - - 0x00649F 01:A48F: A9 01     LDA #$01
C - - - - - 0x0064A1 01:A491: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x0064A4 01:A494: BD 2C 07  LDA ram_072C_obj,X
C - - - - - 0x0064A7 01:A497: 09 80     ORA #$80
C - - - - - 0x0064A9 01:A499: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0064AC 01:A49C: BD 2C 07  LDA ram_072C_obj,X  ; bzk optimize, loading the same value
C - - - - - 0x0064AF 01:A49F: 0A        ASL
C - - - - - 0x0064B0 01:A4A0: 10 05     BPL bra_A4A7_RTS
; bzk optimize, will never be used
- - - - - - 0x0064B2 01:A4A2: A9 01     LDA #$01
- - - - - - 0x0064B4 01:A4A4: 9D E6 06  STA ram_06E6_obj,X
bra_A4A7_RTS:
C - - - - - 0x0064B7 01:A4A7: 60        RTS



sub_A4A8_add_points_to_score:
C - - - - - 0x0064B8 01:A4A8: BC D8 06  LDY ram_obj_id,X
C - - - - - 0x0064BB 01:A4AB: B9 C0 A4  LDA tbl_A4C0_index,Y
C - - - - - 0x0064BE 01:A4AE: A8        TAY
C - - - - - 0x0064BF 01:A4AF: C0 16     CPY #$16
; bzk optimize, no indexex > 14
C - - - - - 0x0064C1 01:A4B1: B0 F4     BCS bra_A4A7_RTS
C - - - - - 0x0064C3 01:A4B3: B9 40 A5  LDA tbl_A540_points,Y
C - - - - - 0x0064C6 01:A4B6: 85 01     STA ram_0001
C - - - - - 0x0064C8 01:A4B8: B9 41 A5  LDA tbl_A540_points + $01,Y
C - - - - - 0x0064CB 01:A4BB: 85 02     STA ram_0002
C - - - - - 0x0064CD 01:A4BD: 4C 3C E6  JMP loc_0x01E64C_add_points_to_score



tbl_A4C0_index:
- - - - - - 0x0064D0 01:A4C0: 00        .byte off_A540_00_____0 - tbl_A540   ; 00 
- D 1 - - - 0x0064D1 01:A4C1: 0C        .byte off_A54C_0C___500 - tbl_A540   ; 01 
- - - - - - 0x0064D2 01:A4C2: 00        .byte off_A540_00_____0 - tbl_A540   ; 02 
- D 1 - - - 0x0064D3 01:A4C3: 04        .byte off_A544_04____60 - tbl_A540   ; 03 
- D 1 - - - 0x0064D4 01:A4C4: 08        .byte off_A548_08___200 - tbl_A540   ; 04 
- D 1 - - - 0x0064D5 01:A4C5: 0A        .byte off_A54A_0A___300 - tbl_A540   ; 05 
- - - - - - 0x0064D6 01:A4C6: 00        .byte off_A540_00_____0 - tbl_A540   ; 06 
- D 1 - - - 0x0064D7 01:A4C7: 0A        .byte off_A54A_0A___300 - tbl_A540   ; 07 
- - - - - - 0x0064D8 01:A4C8: 00        .byte off_A540_00_____0 - tbl_A540   ; 08 
- D 1 - - - 0x0064D9 01:A4C9: 08        .byte off_A548_08___200 - tbl_A540   ; 09 
- D 1 - - - 0x0064DA 01:A4CA: 08        .byte off_A548_08___200 - tbl_A540   ; 0A 
- D 1 - - - 0x0064DB 01:A4CB: 0C        .byte off_A54C_0C___500 - tbl_A540   ; 0B 
- - - - - - 0x0064DC 01:A4CC: 00        .byte off_A540_00_____0 - tbl_A540   ; 0C 
- D 1 - - - 0x0064DD 01:A4CD: 00        .byte off_A540_00_____0 - tbl_A540   ; 0D 
- - - - - - 0x0064DE 01:A4CE: 00        .byte off_A540_00_____0 - tbl_A540   ; 0E 
- - - - - - 0x0064DF 01:A4CF: 00        .byte off_A540_00_____0 - tbl_A540   ; 0F 
- - - - - - 0x0064E0 01:A4D0: 00        .byte off_A540_00_____0 - tbl_A540   ; 10 
- - - - - - 0x0064E1 01:A4D1: 00        .byte off_A540_00_____0 - tbl_A540   ; 11 
- - - - - - 0x0064E2 01:A4D2: 00        .byte off_A540_00_____0 - tbl_A540   ; 12 
- - - - - - 0x0064E3 01:A4D3: 00        .byte off_A540_00_____0 - tbl_A540   ; 13 
- - - - - - 0x0064E4 01:A4D4: 00        .byte off_A540_00_____0 - tbl_A540   ; 14 
- - - - - - 0x0064E5 01:A4D5: 00        .byte off_A540_00_____0 - tbl_A540   ; 15 
- - - - - - 0x0064E6 01:A4D6: 00        .byte off_A540_00_____0 - tbl_A540   ; 16 
- - - - - - 0x0064E7 01:A4D7: 00        .byte off_A540_00_____0 - tbl_A540   ; 17 
- - - - - - 0x0064E8 01:A4D8: 00        .byte off_A540_00_____0 - tbl_A540   ; 18 
- - - - - - 0x0064E9 01:A4D9: 00        .byte off_A540_00_____0 - tbl_A540   ; 19 
- - - - - - 0x0064EA 01:A4DA: 00        .byte off_A540_00_____0 - tbl_A540   ; 1A 
- - - - - - 0x0064EB 01:A4DB: 00        .byte off_A540_00_____0 - tbl_A540   ; 1B 
- - - - - - 0x0064EC 01:A4DC: 00        .byte off_A540_00_____0 - tbl_A540   ; 1C 
- - - - - - 0x0064ED 01:A4DD: 00        .byte off_A540_00_____0 - tbl_A540   ; 1D 
- - - - - - 0x0064EE 01:A4DE: 00        .byte off_A540_00_____0 - tbl_A540   ; 1E 
- - - - - - 0x0064EF 01:A4DF: 00        .byte off_A540_00_____0 - tbl_A540   ; 1F 
- D 1 - - - 0x0064F0 01:A4E0: 0C        .byte off_A54C_0C___500 - tbl_A540   ; 20 
- D 1 - - - 0x0064F1 01:A4E1: 14        .byte off_A554_14_15000 - tbl_A540   ; 21 
- D 1 - - - 0x0064F2 01:A4E2: 06        .byte off_A546_06___100 - tbl_A540   ; 22 
- - - - - - 0x0064F3 01:A4E3: 00        .byte off_A540_00_____0 - tbl_A540   ; 23 
- D 1 - - - 0x0064F4 01:A4E4: 04        .byte off_A544_04____60 - tbl_A540   ; 24 
- D 1 - - - 0x0064F5 01:A4E5: 08        .byte off_A548_08___200 - tbl_A540   ; 25 
- D 1 - - - 0x0064F6 01:A4E6: 06        .byte off_A546_06___100 - tbl_A540   ; 26 
- D 1 - - - 0x0064F7 01:A4E7: 08        .byte off_A548_08___200 - tbl_A540   ; 27 
- D 1 - - - 0x0064F8 01:A4E8: 0E        .byte off_A54E_0E__1000 - tbl_A540   ; 28 
- D 1 - - - 0x0064F9 01:A4E9: 00        .byte off_A540_00_____0 - tbl_A540   ; 29 
- D 1 - - - 0x0064FA 01:A4EA: 06        .byte off_A546_06___100 - tbl_A540   ; 2A 
- - - - - - 0x0064FB 01:A4EB: 00        .byte off_A540_00_____0 - tbl_A540   ; 2B 
- D 1 - - - 0x0064FC 01:A4EC: 00        .byte off_A540_00_____0 - tbl_A540   ; 2C 
- D 1 - - - 0x0064FD 01:A4ED: 00        .byte off_A540_00_____0 - tbl_A540   ; 2D 
- D 1 - - - 0x0064FE 01:A4EE: 0E        .byte off_A54E_0E__1000 - tbl_A540   ; 2E 
- D 1 - - - 0x0064FF 01:A4EF: 0A        .byte off_A54A_0A___300 - tbl_A540   ; 2F 
- - - - - - 0x006500 01:A4F0: 00        .byte off_A540_00_____0 - tbl_A540   ; 30 
- D 1 - - - 0x006501 01:A4F1: 06        .byte off_A546_06___100 - tbl_A540   ; 31 
- D 1 - - - 0x006502 01:A4F2: 0A        .byte off_A54A_0A___300 - tbl_A540   ; 32 
- - - - - - 0x006503 01:A4F3: 00        .byte off_A540_00_____0 - tbl_A540   ; 33 
- D 1 - - - 0x006504 01:A4F4: 08        .byte off_A548_08___200 - tbl_A540   ; 34 
- D 1 - - - 0x006505 01:A4F5: 04        .byte off_A544_04____60 - tbl_A540   ; 35 
- - - - - - 0x006506 01:A4F6: 00        .byte off_A540_00_____0 - tbl_A540   ; 36 
- D 1 - - - 0x006507 01:A4F7: 02        .byte off_A542_02____30 - tbl_A540   ; 37 
- - - - - - 0x006508 01:A4F8: 00        .byte off_A540_00_____0 - tbl_A540   ; 38 
- - - - - - 0x006509 01:A4F9: 00        .byte off_A540_00_____0 - tbl_A540   ; 39 
- - - - - - 0x00650A 01:A4FA: 00        .byte off_A540_00_____0 - tbl_A540   ; 3A 
- D 1 - - - 0x00650B 01:A4FB: 0C        .byte off_A54C_0C___500 - tbl_A540   ; 3B 
- - - - - - 0x00650C 01:A4FC: 00        .byte off_A540_00_____0 - tbl_A540   ; 3C 
- D 1 - - - 0x00650D 01:A4FD: 06        .byte off_A546_06___100 - tbl_A540   ; 3D 
- D 1 - - - 0x00650E 01:A4FE: 06        .byte off_A546_06___100 - tbl_A540   ; 3E 
- - - - - - 0x00650F 01:A4FF: 00        .byte off_A540_00_____0 - tbl_A540   ; 3F 
- D 1 - - - 0x006510 01:A500: 04        .byte off_A544_04____60 - tbl_A540   ; 40 
- - - - - - 0x006511 01:A501: 00        .byte off_A540_00_____0 - tbl_A540   ; 41 
- - - - - - 0x006512 01:A502: 14        .byte off_A554_14_15000 - tbl_A540   ; 42 
- D 1 - - - 0x006513 01:A503: 06        .byte off_A546_06___100 - tbl_A540   ; 43 
- - - - - - 0x006514 01:A504: 00        .byte off_A540_00_____0 - tbl_A540   ; 44 
- D 1 - - - 0x006515 01:A505: 0A        .byte off_A54A_0A___300 - tbl_A540   ; 45 
- D 1 - - - 0x006516 01:A506: 04        .byte off_A544_04____60 - tbl_A540   ; 46 
- D 1 - - - 0x006517 01:A507: 08        .byte off_A548_08___200 - tbl_A540   ; 47 
- - - - - - 0x006518 01:A508: 00        .byte off_A540_00_____0 - tbl_A540   ; 48 
- - - - - - 0x006519 01:A509: 00        .byte off_A540_00_____0 - tbl_A540   ; 49 
- - - - - - 0x00651A 01:A50A: 00        .byte off_A540_00_____0 - tbl_A540   ; 4A 
- D 1 - - - 0x00651B 01:A50B: 14        .byte off_A554_14_15000 - tbl_A540   ; 4B 
- - - - - - 0x00651C 01:A50C: 00        .byte off_A540_00_____0 - tbl_A540   ; 4C 
- - - - - - 0x00651D 01:A50D: 00        .byte off_A540_00_____0 - tbl_A540   ; 4D 
- D 1 - - - 0x00651E 01:A50E: 10        .byte off_A550_10__5000 - tbl_A540   ; 4E 
- - - - - - 0x00651F 01:A50F: 00        .byte off_A540_00_____0 - tbl_A540   ; 4F 
- D 1 - - - 0x006520 01:A510: 06        .byte off_A546_06___100 - tbl_A540   ; 50 
- D 1 - - - 0x006521 01:A511: 14        .byte off_A554_14_15000 - tbl_A540   ; 51 
- D 1 - - - 0x006522 01:A512: 08        .byte off_A548_08___200 - tbl_A540   ; 52 
- - - - - - 0x006523 01:A513: 06        .byte off_A546_06___100 - tbl_A540   ; 53 
- D 1 - - - 0x006524 01:A514: 04        .byte off_A544_04____60 - tbl_A540   ; 54 
- D 1 - - - 0x006525 01:A515: 04        .byte off_A544_04____60 - tbl_A540   ; 55 
- D 1 - - - 0x006526 01:A516: 04        .byte off_A544_04____60 - tbl_A540   ; 56 
- - - - - - 0x006527 01:A517: 00        .byte off_A540_00_____0 - tbl_A540   ; 57 
- - - - - - 0x006528 01:A518: 00        .byte off_A540_00_____0 - tbl_A540   ; 58 
- D 1 - - - 0x006529 01:A519: 14        .byte off_A554_14_15000 - tbl_A540   ; 59 
- D 1 - - - 0x00652A 01:A51A: 06        .byte off_A546_06___100 - tbl_A540   ; 5A 
- D 1 - - - 0x00652B 01:A51B: 0C        .byte off_A54C_0C___500 - tbl_A540   ; 5B 
- D 1 - - - 0x00652C 01:A51C: 06        .byte off_A546_06___100 - tbl_A540   ; 5C 
- D 1 - - - 0x00652D 01:A51D: 0C        .byte off_A54C_0C___500 - tbl_A540   ; 5D 
- - - - - - 0x00652E 01:A51E: 00        .byte off_A540_00_____0 - tbl_A540   ; 5E 
- D 1 - - - 0x00652F 01:A51F: 0A        .byte off_A54A_0A___300 - tbl_A540   ; 5F 
- D 1 - - - 0x006530 01:A520: 04        .byte off_A544_04____60 - tbl_A540   ; 60 
- D 1 - - - 0x006531 01:A521: 04        .byte off_A544_04____60 - tbl_A540   ; 61 
- - - - - - 0x006532 01:A522: 00        .byte off_A540_00_____0 - tbl_A540   ; 62 
- D 1 - - - 0x006533 01:A523: 04        .byte off_A544_04____60 - tbl_A540   ; 63 
- D 1 - - - 0x006534 01:A524: 10        .byte off_A550_10__5000 - tbl_A540   ; 64 
- D 1 - - - 0x006535 01:A525: 12        .byte off_A552_12_10000 - tbl_A540   ; 65 
- D 1 - - - 0x006536 01:A526: 0E        .byte off_A54E_0E__1000 - tbl_A540   ; 66 
- - - - - - 0x006537 01:A527: 00        .byte off_A540_00_____0 - tbl_A540   ; 67 
- D 1 - - - 0x006538 01:A528: 04        .byte off_A544_04____60 - tbl_A540   ; 68 
- D 1 - - - 0x006539 01:A529: 14        .byte off_A554_14_15000 - tbl_A540   ; 69 
- D 1 - - - 0x00653A 01:A52A: 0C        .byte off_A54C_0C___500 - tbl_A540   ; 6A 
- D 1 - - - 0x00653B 01:A52B: 02        .byte off_A542_02____30 - tbl_A540   ; 6B 
- - - - - - 0x00653C 01:A52C: 00        .byte off_A540_00_____0 - tbl_A540   ; 6C 
- D 1 - - - 0x00653D 01:A52D: 14        .byte off_A554_14_15000 - tbl_A540   ; 6D 
- - - - - - 0x00653E 01:A52E: 00        .byte off_A540_00_____0 - tbl_A540   ; 6E 
- - - - - - 0x00653F 01:A52F: 00        .byte off_A540_00_____0 - tbl_A540   ; 6F 
- - - - - - 0x006540 01:A530: 00        .byte off_A540_00_____0 - tbl_A540   ; 70 
- - - - - - 0x006541 01:A531: 00        .byte off_A540_00_____0 - tbl_A540   ; 71 
- - - - - - 0x006542 01:A532: 00        .byte off_A540_00_____0 - tbl_A540   ; 72 
- - - - - - 0x006543 01:A533: 00        .byte off_A540_00_____0 - tbl_A540   ; 73 
- - - - - - 0x006544 01:A534: 00        .byte off_A540_00_____0 - tbl_A540   ; 74 
- - - - - - 0x006545 01:A535: 00        .byte off_A540_00_____0 - tbl_A540   ; 75 
- - - - - - 0x006546 01:A536: 00        .byte off_A540_00_____0 - tbl_A540   ; 76 
- - - - - - 0x006547 01:A537: 00        .byte off_A540_00_____0 - tbl_A540   ; 77 
- - - - - - 0x006548 01:A538: 00        .byte off_A540_00_____0 - tbl_A540   ; 78 
- - - - - - 0x006549 01:A539: 00        .byte off_A540_00_____0 - tbl_A540   ; 79 
- - - - - - 0x00654A 01:A53A: 00        .byte off_A540_00_____0 - tbl_A540   ; 7A 
- - - - - - 0x00654B 01:A53B: 00        .byte off_A540_00_____0 - tbl_A540   ; 7B 
- - - - - - 0x00654C 01:A53C: 00        .byte off_A540_00_____0 - tbl_A540   ; 7C 
- - - - - - 0x00654D 01:A53D: 00        .byte off_A540_00_____0 - tbl_A540   ; 7D 
- - - - - - 0x00654E 01:A53E: 00        .byte off_A540_00_____0 - tbl_A540   ; 7E 
- - - - - - 0x00654F 01:A53F: 00        .byte off_A540_00_____0 - tbl_A540   ; 7F 



tbl_A540:
tbl_A540_points:
off_A540_00_____0:
- D 1 - - - 0x006550 01:A540: 00 00     .word $0000 ; 

off_A542_02____30:
- D 1 - - - 0x006552 01:A542: 03 00     .word $0003 ; 

off_A544_04____60:
- D 1 - - - 0x006554 01:A544: 06 00     .word $0006 ; 

off_A546_06___100:
- D 1 - - - 0x006556 01:A546: 10 00     .word $0010 ; 

off_A548_08___200:
- D 1 - - - 0x006558 01:A548: 20 00     .word $0020 ; 

off_A54A_0A___300:
- D 1 - - - 0x00655A 01:A54A: 30 00     .word $0030 ; 

off_A54C_0C___500:
- D 1 - - - 0x00655C 01:A54C: 50 00     .word $0050 ; 

off_A54E_0E__1000:
- D 1 - - - 0x00655E 01:A54E: 00 01     .word $0100 ; 

off_A550_10__5000:
- D 1 - - - 0x006560 01:A550: 00 05     .word $0500 ; 

off_A552_12_10000:
- D 1 - - - 0x006562 01:A552: 00 10     .word $1000 ; 

off_A554_14_15000:
- D 1 - - - 0x006564 01:A554: 00 15     .word $1500 ; 




tbl_A556_next_obj_state:
;                                                    ------------ even id
;                                                    |     ------ odd id
;                                                    |     |
- D 1 - - - 0x006566 01:A556: 03        .byte $10 * $00 + $03   ; 00 01 
- D 1 - - - 0x006567 01:A557: 44        .byte $10 * $04 + $04   ; 02 03 
- D 1 - - - 0x006568 01:A558: 33        .byte $10 * $03 + $03   ; 04 05 
- D 1 - - - 0x006569 01:A559: 33        .byte $10 * $03 + $03   ; 06 07 
- D 1 - - - 0x00656A 01:A55A: 33        .byte $10 * $03 + $03   ; 08 09 
- D 1 - - - 0x00656B 01:A55B: 66        .byte $10 * $06 + $06   ; 0A 0B 
- D 1 - - - 0x00656C 01:A55C: 04        .byte $10 * $00 + $04   ; 0C 0D 
- D 1 - - - 0x00656D 01:A55D: 41        .byte $10 * $04 + $01   ; 0E 0F 
- - - - - - 0x00656E 01:A55E: 40        .byte $10 * $04 + $00   ; 10 11 
- - - - - - 0x00656F 01:A55F: 00        .byte $10 * $00 + $00   ; 12 13 
- - - - - - 0x006570 01:A560: 00        .byte $10 * $00 + $00   ; 14 15 
- - - - - - 0x006571 01:A561: 00        .byte $10 * $00 + $00   ; 16 17 
- - - - - - 0x006572 01:A562: 00        .byte $10 * $00 + $00   ; 18 19 
- - - - - - 0x006573 01:A563: 00        .byte $10 * $00 + $00   ; 1A 1B 
- - - - - - 0x006574 01:A564: 00        .byte $10 * $00 + $00   ; 1C 1D 
- - - - - - 0x006575 01:A565: 00        .byte $10 * $00 + $00   ; 1E 1F 
- D 1 - - - 0x006576 01:A566: 56        .byte $10 * $05 + $06   ; 20 21 
- D 1 - - - 0x006577 01:A567: 37        .byte $10 * $03 + $07   ; 22 23 
- D 1 - - - 0x006578 01:A568: 43        .byte $10 * $04 + $03   ; 24 25 
- D 1 - - - 0x006579 01:A569: 55        .byte $10 * $05 + $05   ; 26 27 
- D 1 - - - 0x00657A 01:A56A: 43        .byte $10 * $04 + $03   ; 28 29 
- D 1 - - - 0x00657B 01:A56B: 44        .byte $10 * $04 + $04   ; 2A 2B 
- D 1 - - - 0x00657C 01:A56C: 43        .byte $10 * $04 + $03   ; 2C 2D 
- D 1 - - - 0x00657D 01:A56D: 53        .byte $10 * $05 + $03   ; 2E 2F 
- D 1 - - - 0x00657E 01:A56E: 04        .byte $10 * $00 + $04   ; 30 31 
- D 1 - - - 0x00657F 01:A56F: 53        .byte $10 * $05 + $03   ; 32 33 
- D 1 - - - 0x006580 01:A570: 45        .byte $10 * $04 + $05   ; 34 35 
- D 1 - - - 0x006581 01:A571: 34        .byte $10 * $03 + $04   ; 36 37 
- - - - - - 0x006582 01:A572: 30        .byte $10 * $03 + $00   ; 38 39 
- D 1 - - - 0x006583 01:A573: 44        .byte $10 * $04 + $04   ; 3A 3B 
- D 1 - - - 0x006584 01:A574: 34        .byte $10 * $03 + $04   ; 3C 3D 
- D 1 - - - 0x006585 01:A575: 30        .byte $10 * $03 + $00   ; 3E 3F 
- D 1 - - - 0x006586 01:A576: 60        .byte $10 * $06 + $00   ; 40 41 
- D 1 - - - 0x006587 01:A577: 66        .byte $10 * $06 + $06   ; 42 43 
- D 1 - - - 0x006588 01:A578: 04        .byte $10 * $00 + $04   ; 44 45 
- D 1 - - - 0x006589 01:A579: 53        .byte $10 * $05 + $03   ; 46 47 
- - - - - - 0x00658A 01:A57A: 00        .byte $10 * $00 + $00   ; 48 49 
- D 1 - - - 0x00658B 01:A57B: 08        .byte $10 * $00 + $08   ; 4A 4B 
- - - - - - 0x00658C 01:A57C: 00        .byte $10 * $00 + $00   ; 4C 4D 
- D 1 - - - 0x00658D 01:A57D: 50        .byte $10 * $05 + $00   ; 4E 4F 
- D 1 - - - 0x00658E 01:A57E: 77        .byte $10 * $07 + $07   ; 50 51 
- D 1 - - - 0x00658F 01:A57F: 53        .byte $10 * $05 + $03   ; 52 53 
- D 1 - - - 0x006590 01:A580: 43        .byte $10 * $04 + $03   ; 54 55 
- D 1 - - - 0x006591 01:A581: 80        .byte $10 * $08 + $00   ; 56 57 
- D 1 - - - 0x006592 01:A582: 06        .byte $10 * $00 + $06   ; 58 59 
- D 1 - - - 0x006593 01:A583: 45        .byte $10 * $04 + $05   ; 5A 5B 
- D 1 - - - 0x006594 01:A584: 34        .byte $10 * $03 + $04   ; 5C 5D 
- D 1 - - - 0x006595 01:A585: 15        .byte $10 * $01 + $05   ; 5E 5F 
- D 1 - - - 0x006596 01:A586: 53        .byte $10 * $05 + $03   ; 60 61 
- D 1 - - - 0x006597 01:A587: 04        .byte $10 * $00 + $04   ; 62 63 
- D 1 - - - 0x006598 01:A588: 59        .byte $10 * $05 + $09   ; 64 65 
- D 1 - - - 0x006599 01:A589: 35        .byte $10 * $03 + $05   ; 66 67 
- D 1 - - - 0x00659A 01:A58A: 36        .byte $10 * $03 + $06   ; 68 69 
- D 1 - - - 0x00659B 01:A58B: 34        .byte $10 * $03 + $04   ; 6A 6B 
- D 1 - - - 0x00659C 01:A58C: 38        .byte $10 * $03 + $08   ; 6C 6D 
- - - - - - 0x00659D 01:A58D: 00        .byte $10 * $00 + $00   ; 6E 6F 
- D 1 - - - 0x00659E 01:A58E: 32        .byte $10 * $03 + $02   ; 70 71 
- - - - - - 0x00659F 01:A58F: 00        .byte $10 * $00 + $00   ; 72 73 
- - - - - - 0x0065A0 01:A590: 00        .byte $10 * $00 + $00   ; 74 75 
- - - - - - 0x0065A1 01:A591: 00        .byte $10 * $00 + $00   ; 76 77 
- - - - - - 0x0065A2 01:A592: 00        .byte $10 * $00 + $00   ; 78 79 
- - - - - - 0x0065A3 01:A593: 00        .byte $10 * $00 + $00   ; 7A 7B 
- - - - - - 0x0065A4 01:A594: 00        .byte $10 * $00 + $00   ; 7C 7D 
- - - - - - 0x0065A5 01:A595: 00        .byte $10 * $00 + $00   ; 7E 7F 



sub_A596_kill_all_objects:
C - - - - - 0x0065A6 01:A596: 86 08     STX ram_0008
C - - - - - 0x0065A8 01:A598: A2 0D     LDX #con_max_index_enemies
bra_A59A_loop:
C - - - - - 0x0065AA 01:A59A: BD 68 06  LDA ram_obj_state,X
C - - - - - 0x0065AD 01:A59D: F0 0A     BEQ bra_A5A9_skip
C - - - - - 0x0065AF 01:A59F: BD 76 06  LDA ram_obj_hp,X
C - - - - - 0x0065B2 01:A5A2: C9 F0     CMP #con__hp_F0
C - - - - - 0x0065B4 01:A5A4: F0 03     BEQ bra_A5A9_skip
C - - - - - 0x0065B6 01:A5A6: 20 75 A4  JSR sub_A475_kill_enemy
bra_A5A9_skip:
C - - - - - 0x0065B9 01:A5A9: CA        DEX
C - - - - - 0x0065BA 01:A5AA: 10 EE     BPL bra_A59A_loop
C - - - - - 0x0065BC 01:A5AC: A6 08     LDX ram_0008
C - - - - - 0x0065BE 01:A5AE: 60        RTS



_off001_A5AF_08:
_off001_A5AF_11:
_off001_A5AF_12:
_off001_A5AF_13:
_off001_A5AF_14:
_off001_A5AF_15:
_off001_A5AF_16:
_off001_A5AF_17:
_off001_A5AF_18:
_off001_A5AF_19:
_off001_A5AF_1A:
_off001_A5AF_1B:
_off001_A5AF_1C:
_off001_A5AF_1D:
_off001_A5AF_1E:
_off001_A5AF_1F:
_off001_A5AF_4A:
_off001_A5AF_4C:
_off001_A5AF_4D:
_off001_A5AF_4F:
_off001_A5AF_57:
_off001_A5AF_67:
_off001_A5AF_72:
_off001_A5AF_73:
_off001_A5AF_74:
_off001_A5AF_75:
_off001_A5AF_76:
_off001_A5AF_77:
_off001_A5AF_78:
_off001_A5AF_79:
_off001_A5AF_7A:
_off001_A5AF_7B:
_off001_A5AF_7C:
_off001_A5AF_7D:
_off001_A5AF_7E:
_off001_A5AF_7F_null:
- D 1 - I - 0x0065BF 01:A5AF: B3 A5     .word ofs_038_7F_A5B3_00_RTS
- - - - - - 0x0065C1 01:A5B1: B3 A5     .word ofs_038_7F_A5B3_01_RTS



ofs_038_7F_A5B3_00_RTS:
ofs_038_7F_A5B3_01_RTS:
C - - J - - 0x0065C3 01:A5B3: 60        RTS



tbl_A5B4:
- D 1 - - - 0x0065C4 01:A5B4: DA AC     .word _off001_ACDC_00_bonus_item - $02
- D 1 - - - 0x0065C6 01:A5B6: 83 AD     .word _off001_AD83_01_bonus_capsule - $02
- D 1 - - - 0x0065C8 01:A5B8: 8D AE     .word _off001_AE8D_02_bullet_enemy_normal - $02
- D 1 - - - 0x0065CA 01:A5BA: EF AE     .word _off001_AEEF_03_mob_normal_1 - $02
- D 1 - - - 0x0065CC 01:A5BC: 6E B2     .word _off001_B26E_04_bonus_box - $02
- D 1 - - - 0x0065CE 01:A5BE: 12 B3     .word _off001_B312_05_grenadier - $02
- D 1 - - - 0x0065D0 01:A5C0: A8 B3     .word _off001_B3A8_06_grenade - $02
- D 1 - - - 0x0065D2 01:A5C2: 3C B4     .word _off001_B43C_07_rifleman_trench - $02
- - - - - - 0x0065D4 01:A5C4: AF A5     .word _off001_A5AF_08 - $02
- D 1 - - - 0x0065D6 01:A5C6: BE B4     .word _off001_B4BE_09_rifleman_standing_1 - $02
- D 1 - - - 0x0065D8 01:A5C8: 86 B5     .word _off001_B586_0A_cannon_rotating - $02
- D 1 - - - 0x0065DA 01:A5CA: E1 B6     .word _off001_B6E1_0B_cannon_hidden_5_1 - $02
- D 1 - - - 0x0065DC 01:A5CC: 6C B8     .word _off001_B86C_0C_explosions - $02
- D 1 - - - 0x0065DE 01:A5CE: 72 B8     .word _off001_B872_0D_wall_before_boss_battle - $02
- D 1 - - - 0x0065E0 01:A5D0: 42 AE     .word _off001_AE42_0E_bullet_enemy_short_range - $02
- D 1 - - - 0x0065E2 01:A5D2: 65 B9     .word _off001_B965_0F_spawner_grenades - $02
- D 1 - - - 0x0065E4 01:A5D4: D4 B9     .word _off001_B9D4_10_spawner_normal_mobs - $02
- - - - - - 0x0065E6 01:A5D6: AF A5     .word _off001_A5AF_11 - $02
- - - - - - 0x0065E8 01:A5D8: AF A5     .word _off001_A5AF_12 - $02
- - - - - - 0x0065EA 01:A5DA: AF A5     .word _off001_A5AF_13 - $02
- - - - - - 0x0065EC 01:A5DC: AF A5     .word _off001_A5AF_14 - $02
- - - - - - 0x0065EE 01:A5DE: AF A5     .word _off001_A5AF_15 - $02
- - - - - - 0x0065F0 01:A5E0: AF A5     .word _off001_A5AF_16 - $02
- - - - - - 0x0065F2 01:A5E2: AF A5     .word _off001_A5AF_17 - $02
- - - - - - 0x0065F4 01:A5E4: AF A5     .word _off001_A5AF_18 - $02
- - - - - - 0x0065F6 01:A5E6: AF A5     .word _off001_A5AF_19 - $02
- - - - - - 0x0065F8 01:A5E8: AF A5     .word _off001_A5AF_1A - $02
- - - - - - 0x0065FA 01:A5EA: AF A5     .word _off001_A5AF_1B - $02
- - - - - - 0x0065FC 01:A5EC: AF A5     .word _off001_A5AF_1C - $02
- - - - - - 0x0065FE 01:A5EE: AF A5     .word _off001_A5AF_1D - $02
- - - - - - 0x006600 01:A5F0: AF A5     .word _off001_A5AF_1E - $02
- - - - - - 0x006602 01:A5F2: AF A5     .word _off001_A5AF_1F - $02
- D 1 - - - 0x006604 01:A5F4: 01 80     .word _off001_0x004011_20_cannon_hidden_1 - $02
- D 1 - - - 0x006606 01:A5F6: F6 84     .word _off001_0x004506_21_boss_area_1_helicopter - $02
- D 1 - - - 0x006608 01:A5F8: D9 80     .word _off001_0x0040E9_22_boss_area_1_gun - $02
- D 1 - - - 0x00660A 01:A5FA: 40 82     .word _off001_0x004250_23_boss_area_1_door - $02
- D 1 - - - 0x00660C 01:A5FC: C2 8E     .word _off001_0x010ED2_24_blue_spider - $02
- D 1 - - - 0x00660E 01:A5FE: 81 8B     .word _off001_0x014B91_25_moving_gun - $02
- D 1 - - - 0x006610 01:A600: 04 8C     .word _off001_0x004C14_26_hidden_rifleman - $02
- D 1 - - - 0x006612 01:A602: DA 8C     .word _off001_0x004CEA_27_cannon_hidden_3 - $02
- D 1 - - - 0x006614 01:A604: EF 8D     .word _off001_0x004DFF_28_cannon_howitzer - $02
- D 1 - - - 0x006616 01:A606: CF 8E     .word _off001_0x004EDF_29_bullet_cannon_howitzer - $02
- D 1 - - - 0x006618 01:A608: A1 81     .word _off001_0x0081B1_2A_embryo - $02
- D 1 - - - 0x00661A 01:A60A: 6F 84     .word _off001_0x00847F_2B_boss_8_red_spiked_ball - $02
- D 1 - - - 0x00661C 01:A60C: 57 8C     .word _off001_0x014C67_2C_falling_platform - $02
- D 1 - - - 0x00661E 01:A60E: AA 8D     .word _off001_0x014DBA_2D_spawner_falling_platforms - $02
- D 1 - - - 0x006620 01:A610: 01 80     .word _off001_0x014011_2E_tankman - $02
- D 1 - - - 0x006622 01:A612: 01 80     .word _off001_0x010011_2F_falling_rock - $02
- D 1 - - - 0x006624 01:A614: 99 81     .word _off001_0x0141A9_30_bullet_tank - $02
- D 1 - - - 0x006626 01:A616: E0 8D     .word _off001_0x014DF0_31_redblue_bubble - $02
- D 1 - - - 0x006628 01:A618: AD 80     .word _off001_0x0100BD_32_cannon_hidden_5_2 - $02
- D 1 - - - 0x00662A 01:A61A: 77 81     .word _off001_0x010187_33_bullet_cannon_32 - $02
- D 1 - - - 0x00662C 01:A61C: B2 81     .word _off001_0x0101C2_34_flying_rifleman - $02
- D 1 - - - 0x00662E 01:A61E: A9 83     .word _off001_0x0103B9_35_boss_5_red_spiked_ball - $02
- D 1 - - - 0x006630 01:A620: 3D 8B     .word _off001_0x014B4D_36_tank_electricity - $02
- D 1 - - - 0x006632 01:A622: A9 84     .word _off001_0x0084B9_37_boss_8_blue_spiked_ball - $02
- - - - - - 0x006634 01:A624: 33 85     .word _off001_0x008543_38 - $02
- D 1 - - - 0x006636 01:A626: 3B 8E     .word _off001_0x014E4B_39_elevator - $02
- D 1 - - - 0x006638 01:A628: C0 91     .word _off001_0x0051D0_3A_bullet_robospider - $02
- D 1 - - - 0x00663A 01:A62A: 49 89     .word _off001_0x008959_3B_purple_mutant - $02
- D 1 - - - 0x00663C 01:A62C: 3C 8A     .word _off001_0x008A4C_3C_bullet_purple_mutant - $02
- D 1 - - - 0x00663E 01:A62E: C4 8A     .word _off001_0x008AD4_3D_spawner_facehuggers - $02
- D 1 - - - 0x006640 01:A630: A0 8B     .word _off001_0x008BB0_3E_facehugger - $02
- D 1 - - - 0x006642 01:A632: 63 8F     .word _off001_0x004F73_3F_earthquake - $02
- D 1 - - - 0x006644 01:A634: FE 90     .word _off001_0x01510E_40_mob_winged - $02
- D 1 - - - 0x006646 01:A636: 8D 92     .word _off001_0x01529D_41_spawner_winged_mobs - $02
- D 1 - - - 0x006648 01:A638: F2 95     .word _off001_0x015602_42_boss_4_hanger - $02
- D 1 - - - 0x00664A 01:A63A: CB 92     .word _off001_0x0152DB_43_boss_4_gun - $02
- D 1 - - - 0x00664C 01:A63C: 0F 94     .word _off001_0x01541F_44_boss_4_bullet - $02
- D 1 - - - 0x00664E 01:A63E: 01 80     .word _off001_0x008011_45_spawner_red_spiked_balls - $02
- D 1 - - - 0x006650 01:A640: 28 81     .word _off001_0x008138_46_red_spiked_ball - $02
- D 1 - - - 0x006652 01:A642: 06 82     .word _off001_0x008216_47_cannon_skul - $02
- D 1 - - - 0x006654 01:A644: 89 82     .word _off001_0x008299_48_bullet_cannon_skul - $02
- D 1 - - - 0x006656 01:A646: B5 82     .word _off001_0x0082C5_49_ceiling - $02
- - - - - - 0x006658 01:A648: AF A5     .word _off001_A5AF_4A - $02
- D 1 - - - 0x00665A 01:A64A: C2 99     .word _off001_0x0059D2_4B_boss_3_ball_center - $02
- - - - - - 0x00665C 01:A64C: AF A5     .word _off001_A5AF_4C - $02
- - - - - - 0x00665E 01:A64E: AF A5     .word _off001_A5AF_4D - $02
- D 1 - - - 0x006660 01:A650: 06 92     .word _off001_0x005216_4E_robospider - $02
- - - - - - 0x006662 01:A652: AF A5     .word _off001_A5AF_4F - $02
- D 1 - - - 0x006664 01:A654: DE 9B     .word _off001_0x005BEE_50_boss_3_ball_violet - $02
- D 1 - - - 0x006666 01:A656: F2 8F     .word _off001_0x009002_51_boss_7_mouth - $02
- D 1 - - - 0x006668 01:A658: 8D 8C     .word _off001_0x008C9D_52_boss_7_chest - $02
- D 1 - - - 0x00666A 01:A65A: C4 8D     .word _off001_0x008DD4_53_boss_7_ear - $02
- D 1 - - - 0x00666C 01:A65C: 08 8E     .word _off001_0x008E18_54_boss_7_fireball - $02
- D 1 - - - 0x00666E 01:A65E: 41 8E     .word _off001_0x008E51_55_boss_7_red_spikeball - $02
- D 1 - - - 0x006670 01:A660: A4 8E     .word _off001_0x008EB4_56_boss_7_slime - $02
- - - - - - 0x006672 01:A662: AF A5     .word _off001_A5AF_57 - $02
- D 1 - - - 0x006674 01:A664: 66 82     .word _off001_0x010276_58_spawner_container_normal_mobs - $02
- D 1 - - - 0x006676 01:A666: 2B 84     .word _off001_0x01043B_59_boss_5_body - $02
- D 1 - - - 0x006678 01:A668: FC 82     .word _off001_0x01030C_5A_boss_5_skull - $02
- D 1 - - - 0x00667A 01:A66A: EE 81     .word _off001_0x0141FE_5B_cannon_tank - $02
- D 1 - - - 0x00667C 01:A66C: 22 83     .word _off001_0x014332_5C_rifleman_standing_2 - $02
- D 1 - - - 0x00667E 01:A66E: 71 88     .word _off001_0x010881_5D_giant_mouth - $02
- D 1 - - - 0x006680 01:A670: 14 8B     .word _off001_0x010B24_5E_spawner_giant_mouths - $02
- D 1 - - - 0x006682 01:A672: 45 8C     .word _off001_0x010C55_5F_red_skull_head - $02
- D 1 - - - 0x006684 01:A674: A7 91     .word _off001_0x0111B7_60_big_red_spiked_ball - $02
- D 1 - - - 0x006686 01:A676: EC 92     .word _off001_0x0112FC_61_boss_6_big_red_spiked_ball - $02
- D 1 - - - 0x006688 01:A678: D0 83     .word _off001_0x0043E0_62_helicopter_rotor_blade - $02
- D 1 - - - 0x00668A 01:A67A: C2 83     .word _off001_0x0143D2_63_mob_normal_2 - $02
- D 1 - - - 0x00668C 01:A67C: 28 98     .word _off001_0x011838_64_boss_6_phase_1 - $02
- D 1 - - - 0x00668E 01:A67E: 14 94     .word _off001_0x011424_65_boss_6_phase_2 - $02
- D 1 - - - 0x006690 01:A680: 32 9B     .word _off001_0x011B42_66_boss_6_snake - $02
- - - - - - 0x006692 01:A682: AF A5     .word _off001_A5AF_67 - $02
- D 1 - - - 0x006694 01:A684: F2 97     .word _off001_0x011802_68_boss_6_big_bullet - $02
- D 1 - - - 0x006696 01:A686: 27 87     .word _off001_0x014737_69_boss_2_green_tankman - $02
- D 1 - - - 0x006698 01:A688: F9 89     .word _off001_0x014A09_6A_boss_2_red_tankman - $02
- D 1 - - - 0x00669A 01:A68A: E3 94     .word _off001_0x0154F3_6B_blue_bubble - $02
- D 1 - - - 0x00669C 01:A68C: B1 95     .word _off001_0x0155C1_6C_spawner_blue_bubbles - $02
- D 1 - - - 0x00669E 01:A68E: 94 85     .word _off001_0x0085A4_6D_boss_8_eye - $02
- D 1 - - - 0x0066A0 01:A690: BD 88     .word _off001_0x0088CD_6E_boss_8_small_rock - $02
- D 1 - - - 0x0066A2 01:A692: 7A 84     .word _off001_0x00448A_6F_thunder - $02
- D 1 - - - 0x0066A4 01:A694: A2 93     .word _off001_0x0113B2_70_boss_6_hole - $02
- D 1 - - - 0x0066A6 01:A696: CA 93     .word _off001_0x0113DA_71_chr_banks_changer - $02
- - - - - - 0x0066A8 01:A698: AF A5     .word _off001_A5AF_72 - $02
- - - - - - 0x0066AA 01:A69A: AF A5     .word _off001_A5AF_73 - $02
- - - - - - 0x0066AC 01:A69C: AF A5     .word _off001_A5AF_74 - $02
- - - - - - 0x0066AE 01:A69E: AF A5     .word _off001_A5AF_75 - $02
- - - - - - 0x0066B0 01:A6A0: AF A5     .word _off001_A5AF_76 - $02
- - - - - - 0x0066B2 01:A6A2: AF A5     .word _off001_A5AF_77 - $02
- - - - - - 0x0066B4 01:A6A4: AF A5     .word _off001_A5AF_78 - $02
- - - - - - 0x0066B6 01:A6A6: AF A5     .word _off001_A5AF_79 - $02
- - - - - - 0x0066B8 01:A6A8: AF A5     .word _off001_A5AF_7A - $02
- - - - - - 0x0066BA 01:A6AA: AF A5     .word _off001_A5AF_7B - $02
- - - - - - 0x0066BC 01:A6AC: AF A5     .word _off001_A5AF_7C - $02
- - - - - - 0x0066BE 01:A6AE: AF A5     .word _off001_A5AF_7D - $02
- - - - - - 0x0066C0 01:A6B0: AF A5     .word _off001_A5AF_7E - $02
- D 1 - - - 0x0066C2 01:A6B2: B1 A5     .word _off001_A5AF_7F_null ; the only one which has index 00, others start with 01



loc_A6B4:
; bzk optimize
- - - - - - 0x0066C4 01:A6B4: 38        SEC
- - - - - - 0x0066C5 01:A6B5: B0 0D     BCS bra_A6C4    ; jmp



sub_A6B7_delete_object_03:
loc_A6B7_delete_object_03:
sub_0x0066C7_delete_object_03:
loc_0x0066C7_delete_object_03:
; if off screen?
C D 1 - - - 0x0066C7 01:A6B7: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0066CA 01:A6BA: 38        SEC
C - - - - - 0x0066CB 01:A6BB: E5 62     SBC ram_cam_spd_X
C - - - - - 0x0066CD 01:A6BD: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0066D0 01:A6C0: C9 06     CMP #$06
C - - - - - 0x0066D2 01:A6C2: 90 0C     BCC bra_A6D0
bra_A6C4:
; C = 1
C - - - - - 0x0066D4 01:A6C4: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0066D7 01:A6C7: E5 72     SBC ram_cam_spd_Y
C - - - - - 0x0066D9 01:A6C9: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0066DC 01:A6CC: C9 F0     CMP #$F0
C - - - - - 0x0066DE 01:A6CE: 90 36     BCC bra_A706_RTS
bra_A6D0:
C - - - - - 0x0066E0 01:A6D0: 4C 75 A2  JMP loc_A275_delete_object_02



sub_A6D3:
sub_0x0066E3:
loc_0x0066E3:
C D 1 - - - 0x0066E3 01:A6D3: BD 84 06  LDA ram_pos_Y_lo_enemy,X
C - - - - - 0x0066E6 01:A6D6: 18        CLC
C - - - - - 0x0066E7 01:A6D7: 7D A0 06  ADC ram_spd_Y_lo_obj,X
C - - - - - 0x0066EA 01:A6DA: 9D 84 06  STA ram_pos_Y_lo_enemy,X
C - - - - - 0x0066ED 01:A6DD: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0066F0 01:A6E0: 7D AE 06  ADC ram_spd_Y_hi_obj,X
C - - - - - 0x0066F3 01:A6E3: 38        SEC
C - - - - - 0x0066F4 01:A6E4: E5 72     SBC ram_cam_spd_Y
C - - - - - 0x0066F6 01:A6E6: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0066F9 01:A6E9: C9 F0     CMP #$F0
C - - - - - 0x0066FB 01:A6EB: B0 E3     BCS bra_A6D0
; C = 0
sub_A6ED:
sub_0x0066FD:   ; bzk bug? so far code somehow managed to always get C = 0 after 0x006C0D,
                    ; doesn't look safe to me, I'd put CLC here
C - - - - - 0x0066FD 01:A6ED: BD 92 06  LDA ram_pos_X_lo_enemy,X
C - - - - - 0x006700 01:A6F0: 7D BC 06  ADC ram_spd_X_lo_obj,X
C - - - - - 0x006703 01:A6F3: 9D 92 06  STA ram_pos_X_lo_enemy,X
C - - - - - 0x006706 01:A6F6: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x006709 01:A6F9: 7D CA 06  ADC ram_spd_X_hi_obj,X
C - - - - - 0x00670C 01:A6FC: 38        SEC
C - - - - - 0x00670D 01:A6FD: E5 62     SBC ram_cam_spd_X
C - - - - - 0x00670F 01:A6FF: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x006712 01:A702: C9 06     CMP #$06
C - - - - - 0x006714 01:A704: 90 CA     BCC bra_A6D0
bra_A706_RTS:
C - - - - - 0x006716 01:A706: 60        RTS



sub_A707:
sub_0x006717:
loc_0x006717:
C D 1 - - - 0x006717 01:A707: 18        CLC
C - - - - - 0x006718 01:A708: 20 ED A6  JSR sub_A6ED
C - - - - - 0x00671B 01:A70B: A0 00     LDY #$00
C - - - - - 0x00671D 01:A70D: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x006720 01:A710: 10 01     BPL bra_A713_moving_down
; if moving up
C - - - - - 0x006722 01:A712: 88        DEY ; FF
bra_A713_moving_down:
C - - - - - 0x006723 01:A713: 38        SEC
C - - - - - 0x006724 01:A714: E5 72     SBC ram_cam_spd_Y
C - - - - - 0x006726 01:A716: 85 01     STA ram_0001
C - - - - - 0x006728 01:A718: 98        TYA
C - - - - - 0x006729 01:A719: E5 8E     SBC ram_008E
C - - - - - 0x00672B 01:A71B: A8        TAY
C - - - - - 0x00672C 01:A71C: BD 84 06  LDA ram_pos_Y_lo_enemy,X
C - - - - - 0x00672F 01:A71F: 18        CLC
C - - - - - 0x006730 01:A720: 7D A0 06  ADC ram_spd_Y_lo_obj,X
C - - - - - 0x006733 01:A723: 9D 84 06  STA ram_pos_Y_lo_enemy,X
C - - - - - 0x006736 01:A726: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x006739 01:A729: 65 01     ADC ram_0001
C - - - - - 0x00673B 01:A72B: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x00673E 01:A72E: 98        TYA
C - - - - - 0x00673F 01:A72F: 7D 8E 07  ADC ram_078E_obj,X
C - - - - - 0x006742 01:A732: 9D 8E 07  STA ram_078E_obj,X
C - - - - - 0x006745 01:A735: F0 0E     BEQ bra_A745
C - - - - - 0x006747 01:A737: C9 FF     CMP #$FF
C - - - - - 0x006749 01:A739: D0 95     BNE bra_A6D0
C - - - - - 0x00674B 01:A73B: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x00674E 01:A73E: C9 80     CMP #$80
C - - - - - 0x006750 01:A740: 90 8E     BCC bra_A6D0
C - - - - - 0x006752 01:A742: 4C 7D A2  JMP loc_A27D_clear_anim_id
bra_A745:
C - - - - - 0x006755 01:A745: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x006758 01:A748: C9 F0     CMP #$F0
C - - - - - 0x00675A 01:A74A: 90 BA     BCC bra_A706_RTS
C - - - - - 0x00675C 01:A74C: 4C 75 A2  JMP loc_A275_delete_object_02



sub_0x00675F:
C - - - - - 0x00675F 01:A74F: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x006761 01:A751: 4A        LSR
C - - - - - 0x006762 01:A752: B0 09     BCS bra_A75D
C - - - - - 0x006764 01:A754: 4A        LSR
C - - - - - 0x006765 01:A755: A9 01     LDA #$01
C - - - - - 0x006767 01:A757: 90 06     BCC bra_A75F
C - - - - - 0x006769 01:A759: A9 FF     LDA #$FF
C - - - - - 0x00676B 01:A75B: B0 02     BCS bra_A75F    ; jmp
bra_A75D:
sub_0x00676D:
C - - - - - 0x00676D 01:A75D: A9 00     LDA #$00
bra_A75F:
C - - - - - 0x00676F 01:A75F: 18        CLC
C - - - - - 0x006770 01:A760: 7D AE 06  ADC ram_spd_Y_hi_obj,X
C - - - - - 0x006773 01:A763: 85 01     STA ram_0001
C - - - - - 0x006775 01:A765: 0A        ASL
C - - - - - 0x006776 01:A766: A9 0F     LDA #$0F
C - - - - - 0x006778 01:A768: 90 02     BCC bra_A76C
C - - - - - 0x00677A 01:A76A: A9 EF     LDA #$EF
bra_A76C:
C - - - - - 0x00677C 01:A76C: 85 00     STA ram_0000
C - - - - - 0x00677E 01:A76E: BD 84 06  LDA ram_pos_Y_lo_enemy,X
C - - - - - 0x006781 01:A771: 18        CLC
C - - - - - 0x006782 01:A772: 7D A0 06  ADC ram_spd_Y_lo_obj,X
C - - - - - 0x006785 01:A775: 9D 84 06  STA ram_pos_Y_lo_enemy,X
C - - - - - 0x006788 01:A778: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x00678B 01:A77B: 65 01     ADC ram_0001
C - - - - - 0x00678D 01:A77D: A0 00     LDY #$00
C - - - - - 0x00678F 01:A77F: C9 F0     CMP #$F0
C - - - - - 0x006791 01:A781: 90 0A     BCC bra_A78D
C - - - - - 0x006793 01:A783: 65 00     ADC ram_0000
C - - - - - 0x006795 01:A785: 06 00     ASL ram_0000
C - - - - - 0x006797 01:A787: A0 01     LDY #$01
C - - - - - 0x006799 01:A789: 90 02     BCC bra_A78D
C - - - - - 0x00679B 01:A78B: A0 FF     LDY #$FF
bra_A78D:
C - - - - - 0x00679D 01:A78D: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0067A0 01:A790: 98        TYA
C - - - - - 0x0067A1 01:A791: 18        CLC
C - - - - - 0x0067A2 01:A792: 7D 8E 07  ADC ram_078E_obj,X
C - - - - - 0x0067A5 01:A795: 9D 8E 07  STA ram_078E_obj,X
C - - - - - 0x0067A8 01:A798: F0 03     BEQ bra_A79D
C - - - - - 0x0067AA 01:A79A: 20 7D A2  JSR sub_A27D_clear_anim_id
bra_A79D:
C - - - - - 0x0067AD 01:A79D: A0 00     LDY #$00
C - - - - - 0x0067AF 01:A79F: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x0067B2 01:A7A2: 10 01     BPL bra_A7A5_moving_right
; if moving left
C - - - - - 0x0067B4 01:A7A4: 88        DEY ; FF
bra_A7A5_moving_right:
C - - - - - 0x0067B5 01:A7A5: 84 00     STY ram_0000
C - - - - - 0x0067B7 01:A7A7: BD BC 06  LDA ram_spd_X_lo_obj,X
C - - - - - 0x0067BA 01:A7AA: 18        CLC
C - - - - - 0x0067BB 01:A7AB: 7D 92 06  ADC ram_pos_X_lo_enemy,X
C - - - - - 0x0067BE 01:A7AE: 9D 92 06  STA ram_pos_X_lo_enemy,X
C - - - - - 0x0067C1 01:A7B1: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x0067C4 01:A7B4: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x0067C7 01:A7B7: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0067CA 01:A7BA: A5 00     LDA ram_0000
C - - - - - 0x0067CC 01:A7BC: 7D 9C 07  ADC ram_079C_obj,X
C - - - - - 0x0067CF 01:A7BF: 9D 9C 07  STA ram_079C_obj,X
C - - - - - 0x0067D2 01:A7C2: F0 0E     BEQ bra_A7D2_RTS
C - - - - - 0x0067D4 01:A7C4: 4C 7D A2  JMP loc_A27D_clear_anim_id



sub_A7C7_clear_spd_XY:
sub_0x0067D7_clear_spd_XY:
loc_0x0067D7_clear_spd_XY:
C D 1 - - - 0x0067D7 01:A7C7: 20 D3 A7  JSR sub_A7D3_clear_spd_X
sub_0x0067DA_clear_spd_Y:
loc_0x0067DA_clear_spd_Y:
C D 1 - - - 0x0067DA 01:A7CA: A9 00     LDA #$00
C - - - - - 0x0067DC 01:A7CC: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x0067DF 01:A7CF: 9D AE 06  STA ram_spd_Y_hi_obj,X
bra_A7D2_RTS:
C - - - - - 0x0067E2 01:A7D2: 60        RTS



sub_A7D3_clear_spd_X:
sub_0x0067E3_clear_spd_X:
C - - - - - 0x0067E3 01:A7D3: A9 00     LDA #$00
C - - - - - 0x0067E5 01:A7D5: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x0067E8 01:A7D8: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x0067EB 01:A7DB: 60        RTS



sub_A7DC_inverse_spd_X:
sub_0x0067EC_inverse_spd_X:
loc_0x0067EC_inverse_spd_X:
C D 1 - - - 0x0067EC 01:A7DC: A9 00     LDA #$00
C - - - - - 0x0067EE 01:A7DE: 38        SEC
C - - - - - 0x0067EF 01:A7DF: FD BC 06  SBC ram_spd_X_lo_obj,X
C - - - - - 0x0067F2 01:A7E2: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x0067F5 01:A7E5: A9 00     LDA #$00
C - - - - - 0x0067F7 01:A7E7: FD CA 06  SBC ram_spd_X_hi_obj,X
C - - - - - 0x0067FA 01:A7EA: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x0067FD 01:A7ED: 60        RTS



sub_0x0067FE_inverse_spd_Y:
loc_0x0067FE_inverse_spd_Y:
C D 1 - - - 0x0067FE 01:A7EE: A9 00     LDA #$00
C - - - - - 0x006800 01:A7F0: 38        SEC
C - - - - - 0x006801 01:A7F1: FD A0 06  SBC ram_spd_Y_lo_obj,X
C - - - - - 0x006804 01:A7F4: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x006807 01:A7F7: A9 00     LDA #$00
C - - - - - 0x006809 01:A7F9: FD AE 06  SBC ram_spd_Y_hi_obj,X
C - - - - - 0x00680C 01:A7FC: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x00680F 01:A7FF: 60        RTS



sub_A800:
sub_0x006810:
C - - - - - 0x006810 01:A800: BC 8E 07  LDY ram_078E_obj,X
C - - - - - 0x006813 01:A803: D0 1A     BNE bra_A81F
sub_0x006815:
C - - - - - 0x006815 01:A805: BC AE 06  LDY ram_spd_Y_hi_obj,X
C - - - - - 0x006818 01:A808: 30 15     BMI bra_A81F    ; if moving up
; if moving down
sub_A80A:
sub_0x00681A:
C - - - - - 0x00681A 01:A80A: 85 07     STA ram_0007
C - - - - - 0x00681C 01:A80C: 18        CLC
C - - - - - 0x00681D 01:A80D: 7D 22 05  ADC ram_pos_Y_hi_enemy,X
C - - - - - 0x006820 01:A810: C9 10     CMP #$10
C - - - - - 0x006822 01:A812: 90 0B     BCC bra_A81F
C - - - - - 0x006824 01:A814: C9 F0     CMP #$F0
C - - - - - 0x006826 01:A816: B0 07     BCS bra_A81F
C - - - - - 0x006828 01:A818: A8        TAY
C - - - - - 0x006829 01:A819: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x00682C 01:A81C: 4C AA BA  JMP loc_BAAA_calculate_surface_type
bra_A81F:
C - - - - - 0x00682F 01:A81F: A9 00     LDA #$00
C - - - - - 0x006831 01:A821: 60        RTS



sub_A822:
sub_0x006832:
C - - - - - 0x006832 01:A822: 85 00     STA ram_0000
C - - - - - 0x006834 01:A824: 18        CLC
C - - - - - 0x006835 01:A825: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x006838 01:A828: 85 01     STA ram_0001
C - - - - - 0x00683A 01:A82A: 6A        ROR
C - - - - - 0x00683B 01:A82B: 45 00     EOR ram_0000
C - - - - - 0x00683D 01:A82D: 30 0B     BMI bra_A83A
C - - - - - 0x00683F 01:A82F: A5 01     LDA ram_0001
C - - - - - 0x006841 01:A831: BC 22 05  LDY ram_pos_Y_hi_enemy,X
C - - - - - 0x006844 01:A834: 20 C0 BA  JSR sub_BAC0
C - - - - - 0x006847 01:A837: 4C D0 BB  JMP loc_BBD0
bra_A83A:
C - - - - - 0x00684A 01:A83A: A9 00     LDA #$00
C - - - - - 0x00684C 01:A83C: 60        RTS



sub_A83D:
sub_0x00684D:
loc_0x00684D:
C D 1 - - - 0x00684D 01:A83D: 85 09     STA ram_0009
C - - - - - 0x00684F 01:A83F: 20 50 F8  JSR sub_0x01F860
C - - - - - 0x006852 01:A842: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x006855 01:A845: 60        RTS



sub_0x006856:
; bzk optimize, A always 00
C - - - - - 0x006856 01:A846: 0A        ASL
C - - - - - 0x006857 01:A847: 0A        ASL
C - - - - - 0x006858 01:A848: 85 0D     STA ram_000D
C - - - - - 0x00685A 01:A84A: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x00685D 01:A84D: 85 12     STA ram_0012
C - - - - - 0x00685F 01:A84F: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x006862 01:A852: 85 13     STA ram_0013
C - - - - - 0x006864 01:A854: A5 1E     LDA ram_index_ppu_buffer
C - - - - - 0x006866 01:A856: C9 01     CMP #$01
C - - - - - 0x006868 01:A858: B0 31     BCS bra_A88B
C - - - - - 0x00686A 01:A85A: A0 03     LDY #$03
bra_A85C_loop:
C - - - - - 0x00686C 01:A85C: 84 0F     STY ram_000F
C - - - - - 0x00686E 01:A85E: 98        TYA
C - - - - - 0x00686F 01:A85F: 18        CLC
C - - - - - 0x006870 01:A860: 65 0D     ADC ram_000D    ; bzk optimize, always 00
C - - - - - 0x006872 01:A862: A8        TAY
C - - - - - 0x006873 01:A863: B9 8E A8  LDA tbl_A88E,Y
C - - - - - 0x006876 01:A866: 85 08     STA ram_0008
C - - - - - 0x006878 01:A868: A5 12     LDA ram_0012
C - - - - - 0x00687A 01:A86A: 79 92 A8  ADC tbl_A892,Y
C - - - - - 0x00687D 01:A86D: 85 0C     STA ram_000C
C - - - - - 0x00687F 01:A86F: A5 13     LDA ram_0013
C - - - - - 0x006881 01:A871: 79 96 A8  ADC tbl_A896,Y
C - - - - - 0x006884 01:A874: A4 0C     LDY ram_000C
C - - - - - 0x006886 01:A876: 20 A4 FE  JSR sub_0x01FEB4
C - - - - - 0x006889 01:A879: 8A        TXA
C - - - - - 0x00688A 01:A87A: 38        SEC
C - - - - - 0x00688B 01:A87B: E9 04     SBC #$04
C - - - - - 0x00688D 01:A87D: 85 1E     STA ram_index_ppu_buffer
C - - - - - 0x00688F 01:A87F: AA        TAX
C - - - - - 0x006890 01:A880: A9 FF     LDA #$FF
C - - - - - 0x006892 01:A882: 9D FF 02  STA ram_nmt_buffer - $01,X
C - - - - - 0x006895 01:A885: A4 0F     LDY ram_000F
C - - - - - 0x006897 01:A887: 88        DEY
C - - - - - 0x006898 01:A888: 10 D2     BPL bra_A85C_loop
C - - - - - 0x00689A 01:A88A: 18        CLC
bra_A88B:
C - - - - - 0x00689B 01:A88B: A6 10     LDX ram_0010
C - - - - - 0x00689D 01:A88D: 60        RTS



tbl_A88E:
- D 1 - - - 0x00689E 01:A88E: 65        .byte $65   ; 00 
- D 1 - - - 0x00689F 01:A88F: 66        .byte $66   ; 01 
- D 1 - - - 0x0068A0 01:A890: 67        .byte $67   ; 02 
- D 1 - - - 0x0068A1 01:A891: 68        .byte $68   ; 03 



tbl_A892:
- D 1 - - - 0x0068A2 01:A892: F0        .byte $F0   ; 00 
- D 1 - - - 0x0068A3 01:A893: F0        .byte $F0   ; 01 
- D 1 - - - 0x0068A4 01:A894: 10        .byte $10   ; 02 
- D 1 - - - 0x0068A5 01:A895: 10        .byte $10   ; 03 



tbl_A896:
- D 1 - - - 0x0068A6 01:A896: F0        .byte $F0   ; 00 
- D 1 - - - 0x0068A7 01:A897: 10        .byte $10   ; 01 
- D 1 - - - 0x0068A8 01:A898: F0        .byte $F0   ; 02 
- D 1 - - - 0x0068A9 01:A899: 10        .byte $10   ; 03 



sub_A89A:
loc_A89A:
sub_0x0068AA:
loc_0x0068AA:
C D 1 - - - 0x0068AA 01:A89A: 85 08     STA ram_0008
C - - - - - 0x0068AC 01:A89C: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0068AF 01:A89F: BC 22 05  LDY ram_pos_Y_hi_enemy,X
C - - - - - 0x0068B2 01:A8A2: 20 A0 F0  JSR sub_0x01F0B0
C - - - - - 0x0068B5 01:A8A5: A6 10     LDX ram_0010
C - - - - - 0x0068B7 01:A8A7: 60        RTS



sub_A8A8:
sub_0x0068B8:
loc_0x0068B8:
C D 1 - - - 0x0068B8 01:A8A8: 85 08     STA ram_0008
C - - - - - 0x0068BA 01:A8AA: 84 0D     STY ram_000D
C - - - - - 0x0068BC 01:A8AC: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0068BF 01:A8AF: BC 22 05  LDY ram_pos_Y_hi_enemy,X
sub_0x0068C2:
C - - - - - 0x0068C2 01:A8B2: 20 A0 F0  JSR sub_0x01F0B0
C - - - - - 0x0068C5 01:A8B5: B0 24     BCS bra_A8DB
C - - - - - 0x0068C7 01:A8B7: A6 10     LDX ram_0010
C - - - - - 0x0068C9 01:A8B9: A5 0C     LDA ram_000C
C - - - - - 0x0068CB 01:A8BB: 85 08     STA ram_0008
C - - - - - 0x0068CD 01:A8BD: A5 0D     LDA ram_000D
C - - - - - 0x0068CF 01:A8BF: 0A        ASL
C - - - - - 0x0068D0 01:A8C0: 0A        ASL
C - - - - - 0x0068D1 01:A8C1: 0A        ASL
C - - - - - 0x0068D2 01:A8C2: 0A        ASL
C - - - - - 0x0068D3 01:A8C3: 09 08     ORA #$08
C - - - - - 0x0068D5 01:A8C5: 85 0E     STA ram_000E
C - - - - - 0x0068D7 01:A8C7: A5 0D     LDA ram_000D
C - - - - - 0x0068D9 01:A8C9: 29 F0     AND #$F0
C - - - - - 0x0068DB 01:A8CB: 09 08     ORA #$08
C - - - - - 0x0068DD 01:A8CD: 18        CLC
C - - - - - 0x0068DE 01:A8CE: 7D 22 05  ADC ram_pos_Y_hi_enemy,X
C - - - - - 0x0068E1 01:A8D1: A8        TAY
C - - - - - 0x0068E2 01:A8D2: A5 0E     LDA ram_000E
C - - - - - 0x0068E4 01:A8D4: 18        CLC
C - - - - - 0x0068E5 01:A8D5: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x0068E8 01:A8D8: 20 A4 FE  JSR sub_0x01FEB4
bra_A8DB:
C - - - - - 0x0068EB 01:A8DB: A6 10     LDX ram_0010
C - - - - - 0x0068ED 01:A8DD: 60        RTS


; bzk garbage
- - - - - - 0x0068EE 01:A8DE: 85 08     STA ram_0008
- - - - - - 0x0068F0 01:A8E0: BD 3C 05  LDA ram_pos_X_hi_enemy,X
- - - - - - 0x0068F3 01:A8E3: BC 22 05  LDY ram_pos_Y_hi_enemy,X



sub_0x0068F6:
C - - - - - 0x0068F6 01:A8E6: 20 02 BC  JSR sub_BC02
C - - - - - 0x0068F9 01:A8E9: A6 10     LDX ram_0010
C - - - - - 0x0068FB 01:A8EB: 60        RTS



sub_0x0068FC:
C - - - - - 0x0068FC 01:A8EC: A9 00     LDA #$00
sub_0x0068FE:
C - - - - - 0x0068FE 01:A8EE: 85 00     STA ram_0000
C - - - - - 0x006900 01:A8F0: A4 1E     LDY ram_index_ppu_buffer
C - - - - - 0x006902 01:A8F2: A9 03     LDA #con_buf_mode_03
C - - - - - 0x006904 01:A8F4: 99 00 03  STA ram_nmt_buffer,Y
C - - - - - 0x006907 01:A8F7: C8        INY
C - - - - - 0x006908 01:A8F8: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x00690B 01:A8FB: 99 00 03  STA ram_nmt_buffer,Y    ; ppu hi
C - - - - - 0x00690E 01:A8FE: C8        INY
C - - - - - 0x00690F 01:A8FF: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x006912 01:A902: 99 00 03  STA ram_nmt_buffer,Y    ; ppu lo
C - - - - - 0x006915 01:A905: C8        INY
C - - - - - 0x006916 01:A906: A9 20     LDA #$20
C - - - - - 0x006918 01:A908: 99 00 03  STA ram_nmt_buffer,Y    ; counter
C - - - - - 0x00691B 01:A90B: C8        INY
C - - - - - 0x00691C 01:A90C: A5 00     LDA ram_0000
C - - - - - 0x00691E 01:A90E: 99 00 03  STA ram_nmt_buffer,Y    ; fill tile
C - - - - - 0x006921 01:A911: C8        INY
C - - - - - 0x006922 01:A912: 84 1E     STY ram_index_ppu_buffer
C - - - - - 0x006924 01:A914: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x006927 01:A917: 18        CLC
C - - - - - 0x006928 01:A918: 69 20     ADC #$20
C - - - - - 0x00692A 01:A91A: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x00692D 01:A91D: 90 03     BCC bra_A922_RTS    ; if not overflow
C - - - - - 0x00692F 01:A91F: FE 48 07  INC ram_0748_obj,X
bra_A922_RTS:
C - - - - - 0x006932 01:A922: 60        RTS



sub_0x006933:
loc_0x006933:
C D 1 - - - 0x006933 01:A923: 84 06     STY ram_0006
C - - - - - 0x006935 01:A925: 20 AE AA  JSR sub_AAAE
C - - - - - 0x006938 01:A928: 20 A5 F4  JSR sub_0x01F4B5
sub_0x00693B:
C - - - - - 0x00693B 01:A92B: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x00693E 01:A92E: 85 0C     STA ram_000C
C - - - - - 0x006940 01:A930: A0 00     LDY #$00
C - - - - - 0x006942 01:A932: C9 0D     CMP #$0D
C - - - - - 0x006944 01:A934: 90 08     BCC bra_A93E
C - - - - - 0x006946 01:A936: A0 01     LDY #$01
C - - - - - 0x006948 01:A938: A9 18     LDA #$18
C - - - - - 0x00694A 01:A93A: E5 0C     SBC ram_000C
C - - - - - 0x00694C 01:A93C: 85 0C     STA ram_000C
bra_A93E:
C - - - - - 0x00694E 01:A93E: C9 07     CMP #$07
C - - - - - 0x006950 01:A940: 90 0A     BCC bra_A94C
C - - - - - 0x006952 01:A942: 98        TYA
C - - - - - 0x006953 01:A943: 09 02     ORA #$02
C - - - - - 0x006955 01:A945: A8        TAY
C - - - - - 0x006956 01:A946: A9 0C     LDA #$0C
C - - - - - 0x006958 01:A948: E5 0C     SBC ram_000C
C - - - - - 0x00695A 01:A94A: 85 0C     STA ram_000C
bra_A94C:
C - - - - - 0x00695C 01:A94C: 84 07     STY ram_0007
C - - - - - 0x00695E 01:A94E: 20 AB F3  JSR sub_0x01F3BB
C - - - - - 0x006961 01:A951: 20 96 F3  JSR sub_0x01F3A6_write_speed_XY
C - - - - - 0x006964 01:A954: A9 01     LDA #$01
C - - - - - 0x006966 01:A956: 60        RTS



sub_0x006967:
C - - - - - 0x006967 01:A957: 84 06     STY ram_0006
C - - - - - 0x006969 01:A959: 20 AE AA  JSR sub_AAAE
C - - - - - 0x00696C 01:A95C: 20 F0 F4  JSR sub_0x01F500
C - - - - - 0x00696F 01:A95F: A5 0C     LDA ram_000C
C - - - - - 0x006971 01:A961: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x006974 01:A964: A5 17     LDA ram_0017
C - - - - - 0x006976 01:A966: 20 AB F3  JSR sub_0x01F3BB
C - - - - - 0x006979 01:A969: 4C 96 F3  JMP loc_0x01F3A6_write_speed_XY


; bzk garbage
- - - - - - 0x00697C 01:A96C: A0 00     LDY #$00



sub_A96E:
sub_0x00697E:
C - - - - - 0x00697E 01:A96E: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x006981 01:A971: 38        SEC
C - - - - - 0x006982 01:A972: FD 48 07  SBC ram_0748_obj,X
C - - - - - 0x006985 01:A975: 20 AE A9  JSR sub_A9AE
C - - - - - 0x006988 01:A978: A6 10     LDX ram_0010
C - - - - - 0x00698A 01:A97A: BD A0 06  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x00698D 01:A97D: 38        SEC
C - - - - - 0x00698E 01:A97E: E5 01     SBC ram_0001
C - - - - - 0x006990 01:A980: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x006993 01:A983: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x006996 01:A986: E5 00     SBC ram_0000
C - - - - - 0x006998 01:A988: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x00699B 01:A98B: 60        RTS


; bzk garbage
- - - - - - 0x00699C 01:A98C: A0 00     LDY #$00



sub_A98E:
sub_0x00699E:
C - - - - - 0x00699E 01:A98E: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0069A1 01:A991: 38        SEC
C - - - - - 0x0069A2 01:A992: FD 56 07  SBC ram_0756_obj,X
C - - - - - 0x0069A5 01:A995: 20 AE A9  JSR sub_A9AE
C - - - - - 0x0069A8 01:A998: A6 10     LDX ram_0010
C - - - - - 0x0069AA 01:A99A: BD BC 06  LDA ram_spd_X_lo_obj,X
C - - - - - 0x0069AD 01:A99D: 38        SEC
C - - - - - 0x0069AE 01:A99E: E5 01     SBC ram_0001
C - - - - - 0x0069B0 01:A9A0: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x0069B3 01:A9A3: BD CA 06  LDA ram_spd_X_hi_obj,X
C - - - - - 0x0069B6 01:A9A6: E5 00     SBC ram_0000
C - - - - - 0x0069B8 01:A9A8: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x0069BB 01:A9AB: 60        RTS


; bzk garbage
- - - - - - 0x0069BC 01:A9AC: A0 00     LDY #$00



sub_A9AE:
C - - - - - 0x0069BE 01:A9AE: 85 01     STA ram_0001
C - - - - - 0x0069C0 01:A9B0: A2 00     LDX #$00
C - - - - - 0x0069C2 01:A9B2: B0 01     BCS bra_A9B5
C - - - - - 0x0069C4 01:A9B4: CA        DEX
bra_A9B5:
C - - - - - 0x0069C5 01:A9B5: 98        TYA
C - - - - - 0x0069C6 01:A9B6: 30 0C     BMI bra_A9C4
C - - - - - 0x0069C8 01:A9B8: F0 11     BEQ bra_A9CB
C - - - - - 0x0069CA 01:A9BA: 8A        TXA
bra_A9BB_loop:
C - - - - - 0x0069CB 01:A9BB: 06 01     ASL ram_0001
C - - - - - 0x0069CD 01:A9BD: 2A        ROL
C - - - - - 0x0069CE 01:A9BE: 88        DEY
C - - - - - 0x0069CF 01:A9BF: D0 FA     BNE bra_A9BB_loop
C - - - - - 0x0069D1 01:A9C1: 85 00     STA ram_0000
C - - - - - 0x0069D3 01:A9C3: 60        RTS
bra_A9C4:
C - - - - - 0x0069D4 01:A9C4: 8A        TXA
bra_A9C5_loop:
C - - - - - 0x0069D5 01:A9C5: 4A        LSR
C - - - - - 0x0069D6 01:A9C6: 66 01     ROR ram_0001
C - - - - - 0x0069D8 01:A9C8: C8        INY
C - - - - - 0x0069D9 01:A9C9: D0 FA     BNE bra_A9C5_loop
bra_A9CB:
C - - - - - 0x0069DB 01:A9CB: 86 00     STX ram_0000
C - - - - - 0x0069DD 01:A9CD: 60        RTS



sub_0x0069DE:
C - - - - - 0x0069DE 01:A9CE: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0069E1 01:A9D1: 18        CLC
C - - - - - 0x0069E2 01:A9D2: 65 FC     ADC ram_scroll_Y
C - - - - - 0x0069E4 01:A9D4: B0 04     BCS bra_A9DA
C - - - - - 0x0069E6 01:A9D6: C9 F0     CMP #$F0
C - - - - - 0x0069E8 01:A9D8: 90 03     BCC bra_A9DD
bra_A9DA:
C - - - - - 0x0069EA 01:A9DA: 69 0F     ADC #$0F
C - - - - - 0x0069EC 01:A9DC: 38        SEC
bra_A9DD:
C - - - - - 0x0069ED 01:A9DD: 8D CA 03  STA ram_03CA
C - - - - - 0x0069F0 01:A9E0: 08        PHP
C - - - - - 0x0069F1 01:A9E1: BD 8E 07  LDA ram_078E_obj,X
C - - - - - 0x0069F4 01:A9E4: 29 01     AND #$01
C - - - - - 0x0069F6 01:A9E6: 0A        ASL
C - - - - - 0x0069F7 01:A9E7: 28        PLP
C - - - - - 0x0069F8 01:A9E8: 90 02     BCC bra_A9EC
C - - - - - 0x0069FA 01:A9EA: 49 02     EOR #$02
bra_A9EC:
C - - - - - 0x0069FC 01:A9EC: 85 00     STA ram_0000
C - - - - - 0x0069FE 01:A9EE: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x006A01 01:A9F1: 18        CLC
C - - - - - 0x006A02 01:A9F2: 65 FD     ADC ram_scroll_X
C - - - - - 0x006A04 01:A9F4: 8D CB 03  STA ram_03CB
C - - - - - 0x006A07 01:A9F7: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x006A0A 01:A9FA: 29 01     AND #$01
C - - - - - 0x006A0C 01:A9FC: 90 02     BCC bra_AA00
- - - - - - 0x006A0E 01:A9FE: 49 01     EOR #$01
bra_AA00:
C - - - - - 0x006A10 01:AA00: 05 00     ORA ram_0000
C - - - - - 0x006A12 01:AA02: 45 FF     EOR ram_for_2000
C - - - - - 0x006A14 01:AA04: 29 03     AND #$03
C - - - - - 0x006A16 01:AA06: 8D CC 03  STA ram_03CC
C - - - - - 0x006A19 01:AA09: 60        RTS



sub_0x006A1A:
loc_0x006A1A:
C D 1 - - - 0x006A1A 01:AA0A: AD CA 03  LDA ram_03CA
C - - - - - 0x006A1D 01:AA0D: 38        SEC
C - - - - - 0x006A1E 01:AA0E: FD 22 05  SBC ram_pos_Y_hi_enemy,X
C - - - - - 0x006A21 01:AA11: 90 04     BCC bra_AA17
C - - - - - 0x006A23 01:AA13: C9 F0     CMP #$F0
C - - - - - 0x006A25 01:AA15: 90 04     BCC bra_AA1B
bra_AA17:
C - - - - - 0x006A27 01:AA17: 38        SEC
C - - - - - 0x006A28 01:AA18: E9 10     SBC #$10
C - - - - - 0x006A2A 01:AA1A: 38        SEC
bra_AA1B:
C - - - - - 0x006A2B 01:AA1B: 85 FC     STA ram_scroll_Y
C - - - - - 0x006A2D 01:AA1D: 08        PHP
C - - - - - 0x006A2E 01:AA1E: BD 8E 07  LDA ram_078E_obj,X
C - - - - - 0x006A31 01:AA21: 0A        ASL
C - - - - - 0x006A32 01:AA22: 29 02     AND #$02
C - - - - - 0x006A34 01:AA24: 28        PLP
C - - - - - 0x006A35 01:AA25: 90 02     BCC bra_AA29
C - - - - - 0x006A37 01:AA27: 49 02     EOR #$02
bra_AA29:
C - - - - - 0x006A39 01:AA29: 85 00     STA ram_0000
C - - - - - 0x006A3B 01:AA2B: AD CB 03  LDA ram_03CB
C - - - - - 0x006A3E 01:AA2E: 38        SEC
C - - - - - 0x006A3F 01:AA2F: FD 3C 05  SBC ram_pos_X_hi_enemy,X
C - - - - - 0x006A42 01:AA32: 85 FD     STA ram_scroll_X
C - - - - - 0x006A44 01:AA34: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x006A47 01:AA37: 29 01     AND #$01
C - - - - - 0x006A49 01:AA39: B0 02     BCS bra_AA3D
C - - - - - 0x006A4B 01:AA3B: 49 01     EOR #$01
bra_AA3D:
C - - - - - 0x006A4D 01:AA3D: 05 00     ORA ram_0000
C - - - - - 0x006A4F 01:AA3F: 4D CC 03  EOR ram_03CC
C - - - - - 0x006A52 01:AA42: 29 03     AND #$03
C - - - - - 0x006A54 01:AA44: 85 00     STA ram_0000
C - - - - - 0x006A56 01:AA46: A5 FF     LDA ram_for_2000
C - - - - - 0x006A58 01:AA48: 29 FC     AND #$FC
C - - - - - 0x006A5A 01:AA4A: 05 00     ORA ram_0000
C - - - - - 0x006A5C 01:AA4C: 85 FF     STA ram_for_2000
C - - - - - 0x006A5E 01:AA4E: 60        RTS



sub_0x006A5F:
C - - - - - 0x006A5F 01:AA4F: AD CA 03  LDA ram_03CA
C - - - - - 0x006A62 01:AA52: 38        SEC
C - - - - - 0x006A63 01:AA53: FD 22 05  SBC ram_pos_Y_hi_enemy,X
C - - - - - 0x006A66 01:AA56: 90 04     BCC bra_AA5C
C - - - - - 0x006A68 01:AA58: C9 F0     CMP #$F0
C - - - - - 0x006A6A 01:AA5A: 90 04     BCC bra_AA60
bra_AA5C:
C - - - - - 0x006A6C 01:AA5C: 38        SEC
C - - - - - 0x006A6D 01:AA5D: E9 10     SBC #$10
C - - - - - 0x006A6F 01:AA5F: 38        SEC
bra_AA60:
C - - - - - 0x006A70 01:AA60: 85 F9     STA ram_00F9_scroll_Y
C - - - - - 0x006A72 01:AA62: 08        PHP
C - - - - - 0x006A73 01:AA63: BD 8E 07  LDA ram_078E_obj,X
C - - - - - 0x006A76 01:AA66: 0A        ASL
C - - - - - 0x006A77 01:AA67: 29 02     AND #$02
C - - - - - 0x006A79 01:AA69: 28        PLP
C - - - - - 0x006A7A 01:AA6A: 90 02     BCC bra_AA6E
C - - - - - 0x006A7C 01:AA6C: 49 02     EOR #$02
bra_AA6E:
C - - - - - 0x006A7E 01:AA6E: 85 00     STA ram_0000
C - - - - - 0x006A80 01:AA70: AD CB 03  LDA ram_03CB
C - - - - - 0x006A83 01:AA73: 38        SEC
C - - - - - 0x006A84 01:AA74: FD 3C 05  SBC ram_pos_X_hi_enemy,X
C - - - - - 0x006A87 01:AA77: 85 FA     STA ram_00FA_scroll_X
C - - - - - 0x006A89 01:AA79: BD 9C 07  LDA ram_079C_obj,X
C - - - - - 0x006A8C 01:AA7C: 29 01     AND #$01
C - - - - - 0x006A8E 01:AA7E: B0 02     BCS bra_AA82
C - - - - - 0x006A90 01:AA80: 49 01     EOR #$01
bra_AA82:
C - - - - - 0x006A92 01:AA82: 05 00     ORA ram_0000
C - - - - - 0x006A94 01:AA84: 4D CC 03  EOR ram_03CC
C - - - - - 0x006A97 01:AA87: 29 03     AND #$03
C - - - - - 0x006A99 01:AA89: 85 00     STA ram_0000
C - - - - - 0x006A9B 01:AA8B: A5 FB     LDA ram_00FB_for_2000
C - - - - - 0x006A9D 01:AA8D: 29 FC     AND #$FC
C - - - - - 0x006A9F 01:AA8F: 05 00     ORA ram_0000
C - - - - - 0x006AA1 01:AA91: 85 FB     STA ram_00FB_for_2000
C - - - - - 0x006AA3 01:AA93: 60        RTS



sub_0x006AA4_save_reg_values:
C - - - - - 0x006AA4 01:AA94: A5 FD     LDA ram_scroll_X
C - - - - - 0x006AA6 01:AA96: 85 7A     STA ram_007A
C - - - - - 0x006AA8 01:AA98: A5 FC     LDA ram_scroll_Y
C - - - - - 0x006AAA 01:AA9A: 85 7B     STA ram_007B
C - - - - - 0x006AAC 01:AA9C: A5 FF     LDA ram_for_2000
C - - - - - 0x006AAE 01:AA9E: 85 7C     STA ram_007C
C - - - - - 0x006AB0 01:AAA0: 60        RTS



sub_0x006AB1_restore_reg_values:
C - - - - - 0x006AB1 01:AAA1: A5 7A     LDA ram_007A
C - - - - - 0x006AB3 01:AAA3: 85 FD     STA ram_scroll_X
C - - - - - 0x006AB5 01:AAA5: A5 7B     LDA ram_007B
C - - - - - 0x006AB7 01:AAA7: 85 FC     STA ram_scroll_Y
C - - - - - 0x006AB9 01:AAA9: A5 7C     LDA ram_007C
C - - - - - 0x006ABB 01:AAAB: 85 FF     STA ram_for_2000
C - - - - - 0x006ABD 01:AAAD: 60        RTS



sub_AAAE:
sub_0x006ABE:
C - - - - - 0x006ABE 01:AAAE: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x006AC1 01:AAB1: 85 08     STA ram_0008
C - - - - - 0x006AC3 01:AAB3: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x006AC6 01:AAB6: 85 09     STA ram_0009
C - - - - - 0x006AC8 01:AAB8: 60        RTS



sub_AAB9_move_enemy_XY:
; bzk optimize, Y = 08
C - - - - - 0x006AC9 01:AAB9: 18        CLC
C - - - - - 0x006ACA 01:AABA: 7D 22 05  ADC ram_pos_Y_hi_enemy,X
C - - - - - 0x006ACD 01:AABD: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x006AD0 01:AAC0: 98        TYA
C - - - - - 0x006AD1 01:AAC1: 18        CLC
C - - - - - 0x006AD2 01:AAC2: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x006AD5 01:AAC5: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x006AD8 01:AAC8: 60        RTS


; bzk garbage
- - - - - - 0x006AD9 01:AAC9: A9 10     LDA #$10



sub_AACB_add_to_spd_Y:
loc_AACB_add_to_spd_Y:
sub_0x006ADB_add_to_spd_Y:
C D 1 - - - 0x006ADB 01:AACB: 18        CLC
C - - - - - 0x006ADC 01:AACC: 7D A0 06  ADC ram_spd_Y_lo_obj,X
C - - - - - 0x006ADF 01:AACF: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x006AE2 01:AAD2: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x006AE5 01:AAD5: 69 00     ADC #$00
C - - - - - 0x006AE7 01:AAD7: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x006AEA 01:AADA: 60        RTS



sub_AADB:
C - - - - - 0x006AEB 01:AADB: 20 0B AB  JSR sub_AB0B_set_target_on_closest_player_X_pos
C - - - - - 0x006AEE 01:AADE: 98        TYA
C - - - - - 0x006AEF 01:AADF: 49 01     EOR #$01
C - - - - - 0x006AF1 01:AAE1: 85 0C     STA ram_000C
C - - - - - 0x006AF3 01:AAE3: A5 08     LDA ram_0008
C - - - - - 0x006AF5 01:AAE5: 85 0A     STA ram_000A
C - - - - - 0x006AF7 01:AAE7: A5 09     LDA ram_0009
C - - - - - 0x006AF9 01:AAE9: 85 0B     STA ram_000B
C - - - - - 0x006AFB 01:AAEB: 20 24 AB  JSR sub_AB24_set_target_on_closest_player_Y_pos
C - - - - - 0x006AFE 01:AAEE: 98        TYA
C - - - - - 0x006AFF 01:AAEF: 49 01     EOR #$01
C - - - - - 0x006B01 01:AAF1: C5 0C     CMP ram_000C
C - - - - - 0x006B03 01:AAF3: D0 03     BNE bra_AAF8
C - - - - - 0x006B05 01:AAF5: 98        TYA
C - - - - - 0x006B06 01:AAF6: 85 0C     STA ram_000C
bra_AAF8:
C - - - - - 0x006B08 01:AAF8: AA        TAX
C - - - - - 0x006B09 01:AAF9: A8        TAY
C - - - - - 0x006B0A 01:AAFA: B5 08     LDA ram_0008,X
C - - - - - 0x006B0C 01:AAFC: A6 0C     LDX ram_000C
C - - - - - 0x006B0E 01:AAFE: D5 0A     CMP ram_000A,X
C - - - - - 0x006B10 01:AB00: 90 04     BCC bra_AB06
C - - - - - 0x006B12 01:AB02: A4 0C     LDY ram_000C
C - - - - - 0x006B14 01:AB04: B5 0A     LDA ram_000A,X
bra_AB06:
C - - - - - 0x006B16 01:AB06: 84 0A     STY ram_000A
C - - - - - 0x006B18 01:AB08: A6 10     LDX ram_0010
C - - - - - 0x006B1A 01:AB0A: 60        RTS



sub_AB0B_set_target_on_closest_player_X_pos:
sub_0x006B1B_set_target_on_closest_player_X_pos:
C - - - - - 0x006B1B 01:AB0B: AD 4C 05  LDA ram_pos_X_hi_plr
C - - - - - 0x006B1E 01:AB0E: 38        SEC
C - - - - - 0x006B1F 01:AB0F: FD 3C 05  SBC ram_pos_X_hi_enemy,X
C - - - - - 0x006B22 01:AB12: B0 04     BCS bra_AB18
C - - - - - 0x006B24 01:AB14: 49 FF     EOR #$FF
C - - - - - 0x006B26 01:AB16: 69 01     ADC #$01
bra_AB18:
C - - - - - 0x006B28 01:AB18: 85 08     STA ram_0008
C - - - - - 0x006B2A 01:AB1A: AD 4D 05  LDA ram_pos_X_hi_plr + $01
C - - - - - 0x006B2D 01:AB1D: 38        SEC
C - - - - - 0x006B2E 01:AB1E: FD 3C 05  SBC ram_pos_X_hi_enemy,X
C - - - - - 0x006B31 01:AB21: 4C 3A AB  JMP loc_AB3A



sub_AB24_set_target_on_closest_player_Y_pos:
sub_0x006B34_set_target_on_closest_player_Y_pos:
C - - - - - 0x006B34 01:AB24: AD 32 05  LDA ram_pos_Y_hi_plr
C - - - - - 0x006B37 01:AB27: 38        SEC
C - - - - - 0x006B38 01:AB28: FD 22 05  SBC ram_pos_Y_hi_enemy,X
C - - - - - 0x006B3B 01:AB2B: B0 04     BCS bra_AB31
C - - - - - 0x006B3D 01:AB2D: 49 FF     EOR #$FF
C - - - - - 0x006B3F 01:AB2F: 69 01     ADC #$01
bra_AB31:
C - - - - - 0x006B41 01:AB31: 85 08     STA ram_0008
C - - - - - 0x006B43 01:AB33: AD 33 05  LDA ram_pos_Y_hi_plr + $01
C - - - - - 0x006B46 01:AB36: 38        SEC
C - - - - - 0x006B47 01:AB37: FD 22 05  SBC ram_pos_Y_hi_enemy,X
loc_AB3A:
C D 1 - - - 0x006B4A 01:AB3A: B0 04     BCS bra_AB40
C - - - - - 0x006B4C 01:AB3C: 49 FF     EOR #$FF
C - - - - - 0x006B4E 01:AB3E: 69 01     ADC #$01
bra_AB40:
C - - - - - 0x006B50 01:AB40: 85 09     STA ram_0009
C - - - - - 0x006B52 01:AB42: A0 FE     LDY #$FE
C - - - - - 0x006B54 01:AB44: A5 A0     LDA ram_plr_status
C - - - - - 0x006B56 01:AB46: C9 02     CMP #con_plr_status_alive
C - - - - - 0x006B58 01:AB48: F0 02     BEQ bra_AB4C_alive
C - - - - - 0x006B5A 01:AB4A: 84 08     STY ram_0008
bra_AB4C_alive:
C - - - - - 0x006B5C 01:AB4C: A0 FF     LDY #$FF
C - - - - - 0x006B5E 01:AB4E: A5 A1     LDA ram_plr_status + $01
C - - - - - 0x006B60 01:AB50: C9 02     CMP #con_plr_status_alive
C - - - - - 0x006B62 01:AB52: F0 02     BEQ bra_AB56_alive
C - - - - - 0x006B64 01:AB54: 84 09     STY ram_0009
bra_AB56_alive:
C - - - - - 0x006B66 01:AB56: A5 09     LDA ram_0009
C - - - - - 0x006B68 01:AB58: A0 01     LDY #$01
C - - - - - 0x006B6A 01:AB5A: C5 08     CMP ram_0008
C - - - - - 0x006B6C 01:AB5C: 90 03     BCC bra_AB61
C - - - - - 0x006B6E 01:AB5E: 88        DEY ; 00
C - - - - - 0x006B6F 01:AB5F: A5 08     LDA ram_0008
bra_AB61:
C - - - - - 0x006B71 01:AB61: 84 0A     STY ram_000A
C - - - - - 0x006B73 01:AB63: 60        RTS



sub_0x006B74:
C - - - - - 0x006B74 01:AB64: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x006B76 01:AB66: 4A        LSR
C - - - - - 0x006B77 01:AB67: A0 02     LDY #$02
C - - - - - 0x006B79 01:AB69: D0 05     BNE bra_AB70    ; jmp



sub_0x006B7B:
loc_0x006B7B:
C D 1 - - - 0x006B7B 01:AB6B: 20 87 AB  JSR sub_AB87
C - - - - - 0x006B7E 01:AB6E: A0 01     LDY #$01
bra_AB70:
C - - - - - 0x006B80 01:AB70: 4A        LSR
C - - - - - 0x006B81 01:AB71: B0 02     BCS bra_AB75
C - - - - - 0x006B83 01:AB73: A0 00     LDY #$00
bra_AB75:
C - - - - - 0x006B85 01:AB75: 84 FC     STY ram_scroll_Y
C - - - - - 0x006B87 01:AB77: DE 02 07  DEC ram_0702_obj,X
C - - - - - 0x006B8A 01:AB7A: D0 0A     BNE bra_AB86_RTS
C - - - - - 0x006B8C 01:AB7C: A9 10     LDA #$10
C - - - - - 0x006B8E 01:AB7E: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x006B91 01:AB81: A9 08     LDA #con_sound_08
C - - - - - 0x006B93 01:AB83: 4C DE FD  JMP loc_0x01FDEE_play_sound
bra_AB86_RTS:
C - - - - - 0x006B96 01:AB86: 60        RTS



sub_AB87:
sub_0x006B97:
C - - - - - 0x006B97 01:AB87: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x006B99 01:AB89: 4A        LSR
C - - - - - 0x006B9A 01:AB8A: 4A        LSR
C - - - - - 0x006B9B 01:AB8B: A0 00     LDY #$00
C - - - - - 0x006B9D 01:AB8D: 90 01     BCC bra_AB90
C - - - - - 0x006B9F 01:AB8F: C8        INY ; 01
bra_AB90:
C - - - - - 0x006BA0 01:AB90: 84 FD     STY ram_scroll_X
C - - - - - 0x006BA2 01:AB92: 84 FA     STY ram_00FA_scroll_X
C - - - - - 0x006BA4 01:AB94: 60        RTS



sub_AB95_set_dynamic_hp_to_enemy:
sub_0x006BA5_set_dynamic_hp_to_enemy:
C - - - - - 0x006BA5 01:AB95: A0 00     LDY #$00
C - - - - - 0x006BA7 01:AB97: F0 02     BEQ bra_AB9B    ; jmp



sub_0x006BA9_set_dynamic_hp_to_boss:
C - - - - - 0x006BA9 01:AB99: A0 03     LDY #$03
bra_AB9B:
sub_AB9B_set_dynamic_hp_to_obj:
sub_0x006BAB_set_dynamic_hp_to_obj:
C - - - - - 0x006BAB 01:AB9B: 85 08     STA ram_0008
C - - - - - 0x006BAD 01:AB9D: 84 09     STY ram_0009
; bzk optimize, CLC + LDA, that's it
C - - - - - 0x006BAF 01:AB9F: A5 52     LDA ram_S_weapon_cnt
C - - - - - 0x006BB1 01:ABA1: C9 02     CMP #$02
C - - - - - 0x006BB3 01:ABA3: 90 02     BCC bra_ABA7
; C = 1
C - - - - - 0x006BB5 01:ABA5: A9 01     LDA #$01
bra_ABA7:   ; C = 0
C - - - - - 0x006BB7 01:ABA7: 65 09     ADC ram_0009
C - - - - - 0x006BB9 01:ABA9: A8        TAY
C - - - - - 0x006BBA 01:ABAA: B9 B4 AB  LDA tbl_ABB4,Y
C - - - - - 0x006BBD 01:ABAD: 18        CLC
C - - - - - 0x006BBE 01:ABAE: 65 08     ADC ram_0008
C - - - - - 0x006BC0 01:ABB0: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x006BC3 01:ABB3: 60        RTS



tbl_ABB4:
;                                              ---------------- 0 S weapon
;                                              |    ----------- 1 S weapon
;                                              |    |    ------ 2 S weapon
;                                              |    |    |
- D 1 - - - 0x006BC4 01:ABB4: 00        .byte $00, $04, $07   ; 00 enemy
- D 1 - - - 0x006BC7 01:ABB7: 00        .byte $00, $10, $18   ; 03 boss
- D 1 - - - 0x006BCA 01:ABBA: 00        .byte $00, $04, $08   ; 06 custom



sub_ABBD:
; bzk optimize, Y = 00
C - - - - - 0x006BCD 01:ABBD: 20 C8 AB  JSR sub_ABC8
C - - - - - 0x006BD0 01:ABC0: B0 3A     BCS bra_ABFC_RTS
- - - - - - 0x006BD2 01:ABC2: 20 1C F7  JSR sub_0x01F72C_try_to_find_enemy_bullet
- - - - - - 0x006BD5 01:ABC5: 4C CD AB  JMP loc_ABCD



sub_ABC8:
sub_0x006BD8:
loc_0x006BD8:
; Y = obj id
C D 1 - - - 0x006BD8 01:ABC8: 84 17     STY ram_0017
C - - - - - 0x006BDA 01:ABCA: 20 FD F6  JSR sub_0x01F70D_try_to_find_free_object_slot
loc_ABCD:
sub_0x006BDD:
C - - - - - 0x006BDD 01:ABCD: D0 2A     BNE bra_ABF9
C - - - - - 0x006BDF 01:ABCF: 86 11     STX ram_0011
C - - - - - 0x006BE1 01:ABD1: A4 10     LDY ram_0010
C - - - - - 0x006BE3 01:ABD3: A5 17     LDA ram_0017
C - - - - - 0x006BE5 01:ABD5: 9D D8 06  STA ram_obj_id,X
C - - - - - 0x006BE8 01:ABD8: B9 22 05  LDA ram_pos_Y_hi_enemy,Y
C - - - - - 0x006BEB 01:ABDB: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x006BEE 01:ABDE: B9 8E 07  LDA ram_078E_obj,Y
C - - - - - 0x006BF1 01:ABE1: 9D 8E 07  STA ram_078E_obj,X
C - - - - - 0x006BF4 01:ABE4: B9 3C 05  LDA ram_pos_X_hi_enemy,Y
C - - - - - 0x006BF7 01:ABE7: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x006BFA 01:ABEA: B9 9C 07  LDA ram_079C_obj,Y
C - - - - - 0x006BFD 01:ABED: 9D 9C 07  STA ram_079C_obj,X
C - - - - - 0x006C00 01:ABF0: B9 1E 07  LDA ram_obj_flags,Y
C - - - - - 0x006C03 01:ABF3: 9D 1E 07  STA ram_obj_flags,X
C - - - - - 0x006C06 01:ABF6: 38        SEC
C - - - - - 0x006C07 01:ABF7: B0 01     BCS bra_ABFA    ; jmp
bra_ABF9:
C - - - - - 0x006C09 01:ABF9: 18        CLC
bra_ABFA:
C - - - - - 0x006C0A 01:ABFA: A6 10     LDX ram_0010
bra_ABFC_RTS:
C - - - - - 0x006C0C 01:ABFC: 60        RTS



sub_ABFD:
loc_ABFD:
sub_0x006C0D:
loc_0x006C0D:
; ??? таблицы
; see con_0x006C32
C D 1 - - - 0x006C0D 01:ABFD: DE 02 07  DEC ram_0702_obj,X
C - - - - - 0x006C10 01:AC00: 10 1F     BPL bra_AC21_RTS
C - - - - - 0x006C12 01:AC02: B9 22 AC  LDA tbl_AC22,Y
C - - - - - 0x006C15 01:AC05: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x006C18 01:AC08: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x006C1B 01:AC0B: 38        SEC
C - - - - - 0x006C1C 01:AC0C: E9 01     SBC #$01
C - - - - - 0x006C1E 01:AC0E: B0 04     BCS bra_AC14
C - - - - - 0x006C20 01:AC10: 38        SEC
C - - - - - 0x006C21 01:AC11: B9 42 AC  LDA tbl_AC42,Y
bra_AC14:
C - - - - - 0x006C24 01:AC14: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x006C27 01:AC17: 79 C3 AC  ADC tbl_ACC3,Y
C - - - - - 0x006C2A 01:AC1A: A8        TAY
C - - - - - 0x006C2B 01:AC1B: B9 62 AC  LDA tbl_AC62,Y
C - - - - - 0x006C2E 01:AC1E: 9D 08 05  STA ram_anim_id_enemy,X
bra_AC21_RTS:
C - - - - - 0x006C31 01:AC21: 60        RTS



tbl_AC22:
; see con_0x006C32
- D 1 - - - 0x006C32 01:AC22: 06        .byte $06   ; 00 
- D 1 - - - 0x006C33 01:AC23: 06        .byte $06   ; 01 
- - - - - - 0x006C34 01:AC24: 04        .byte $04   ; 02 
- D 1 - - - 0x006C35 01:AC25: 04        .byte $04   ; 03 
- D 1 - - - 0x006C36 01:AC26: 04        .byte $04   ; 04 
- D 1 - - - 0x006C37 01:AC27: 03        .byte $03   ; 05 
- D 1 - - - 0x006C38 01:AC28: 01        .byte $01   ; 06 
- D 1 - - - 0x006C39 01:AC29: 06        .byte $06   ; 07 
- D 1 - - - 0x006C3A 01:AC2A: 05        .byte $05   ; 08 
- D 1 - - - 0x006C3B 01:AC2B: 05        .byte $05   ; 09 
- D 1 - - - 0x006C3C 01:AC2C: 05        .byte $05   ; 0A 
- D 1 - - - 0x006C3D 01:AC2D: 04        .byte $04   ; 0B 
- D 1 - - - 0x006C3E 01:AC2E: 03        .byte $03   ; 0C 
- D 1 - - - 0x006C3F 01:AC2F: 04        .byte $04   ; 0D 
- D 1 - - - 0x006C40 01:AC30: 04        .byte $04   ; 0E 
- D 1 - - - 0x006C41 01:AC31: 04        .byte $04   ; 0F 
- D 1 - - - 0x006C42 01:AC32: 04        .byte $04   ; 10 
- D 1 - - - 0x006C43 01:AC33: 04        .byte $04   ; 11 
- D 1 - - - 0x006C44 01:AC34: 04        .byte $04   ; 12 
- D 1 - - - 0x006C45 01:AC35: 06        .byte $06   ; 13 
- D 1 - - - 0x006C46 01:AC36: 06        .byte $06   ; 14 
- D 1 - - - 0x006C47 01:AC37: 04        .byte $04   ; 15 
- D 1 - - - 0x006C48 01:AC38: 04        .byte $04   ; 16 
- D 1 - - - 0x006C49 01:AC39: 01        .byte $01   ; 17 
- D 1 - - - 0x006C4A 01:AC3A: 05        .byte $05   ; 18 


; bzk garbage
- - - - - - 0x006C4B 01:AC3B: 00        .byte $00   ; 
- - - - - - 0x006C4C 01:AC3C: 00        .byte $00   ; 
- - - - - - 0x006C4D 01:AC3D: 00        .byte $00   ; 
- - - - - - 0x006C4E 01:AC3E: 00        .byte $00   ; 
- - - - - - 0x006C4F 01:AC3F: 00        .byte $00   ; 
- - - - - - 0x006C50 01:AC40: 00        .byte $00   ; 
- - - - - - 0x006C51 01:AC41: 00        .byte $00   ; 



tbl_AC42:
; see con_0x006C32
- D 1 - - - 0x006C52 01:AC42: 05        .byte $05   ; 00 
- D 1 - - - 0x006C53 01:AC43: 05        .byte $05   ; 01 
- - - - - - 0x006C54 01:AC44: 03        .byte $03   ; 02 
- D 1 - - - 0x006C55 01:AC45: 07        .byte $07   ; 03 
- D 1 - - - 0x006C56 01:AC46: 05        .byte $05   ; 04 
- D 1 - - - 0x006C57 01:AC47: 05        .byte $05   ; 05 
- D 1 - - - 0x006C58 01:AC48: 05        .byte $05   ; 06 
- D 1 - - - 0x006C59 01:AC49: 05        .byte $05   ; 07 
- D 1 - - - 0x006C5A 01:AC4A: 03        .byte $03   ; 08 
- D 1 - - - 0x006C5B 01:AC4B: 03        .byte $03   ; 09 
- D 1 - - - 0x006C5C 01:AC4C: 01        .byte $01   ; 0A 
- D 1 - - - 0x006C5D 01:AC4D: 03        .byte $03   ; 0B 
- D 1 - - - 0x006C5E 01:AC4E: 01        .byte $01   ; 0C 
- D 1 - - - 0x006C5F 01:AC4F: 01        .byte $01   ; 0D 
- D 1 - - - 0x006C60 01:AC50: 01        .byte $01   ; 0E 
- D 1 - - - 0x006C61 01:AC51: 01        .byte $01   ; 0F 
- D 1 - - - 0x006C62 01:AC52: 02        .byte $02   ; 10 
- D 1 - - - 0x006C63 01:AC53: 03        .byte $03   ; 11 
- D 1 - - - 0x006C64 01:AC54: 01        .byte $01   ; 12 
- D 1 - - - 0x006C65 01:AC55: 01        .byte $01   ; 13 
- D 1 - - - 0x006C66 01:AC56: 01        .byte $01   ; 14 
- D 1 - - - 0x006C67 01:AC57: 01        .byte $01   ; 15 
- D 1 - - - 0x006C68 01:AC58: 01        .byte $01   ; 16 
- D 1 - - - 0x006C69 01:AC59: 07        .byte $07   ; 17 
- D 1 - - - 0x006C6A 01:AC5A: 01        .byte $01   ; 18 


; bzk garbage
- - - - - - 0x006C6B 01:AC5B: 00        .byte $00   ; 
- - - - - - 0x006C6C 01:AC5C: 00        .byte $00   ; 
- - - - - - 0x006C6D 01:AC5D: 00        .byte $00   ; 
- - - - - - 0x006C6E 01:AC5E: 00        .byte $00   ; 
- - - - - - 0x006C6F 01:AC5F: 00        .byte $00   ; 
- - - - - - 0x006C70 01:AC60: 00        .byte $00   ; 
- - - - - - 0x006C71 01:AC61: 00        .byte $00   ; 



tbl_AC62:
; ???
- D 1 - - - 0x006C72 01:AC62: 1F        .byte $1F   ; 
- D 1 - - - 0x006C73 01:AC63: 1C        .byte $1C   ; 
- D 1 - - - 0x006C74 01:AC64: 1E        .byte $1E   ; 
- D 1 - - - 0x006C75 01:AC65: 1D        .byte $1D   ; 
- D 1 - - - 0x006C76 01:AC66: 1C        .byte $1C   ; 
- D 1 - - - 0x006C77 01:AC67: 1B        .byte $1B   ; 
- D 1 - - - 0x006C78 01:AC68: 38        .byte $38   ; 
- D 1 - - - 0x006C79 01:AC69: 39        .byte $39   ; 
- D 1 - - - 0x006C7A 01:AC6A: 39        .byte $39   ; 
- D 1 - - - 0x006C7B 01:AC6B: 38        .byte $38   ; 
- D 1 - - - 0x006C7C 01:AC6C: 37        .byte $37   ; 
- D 1 - - - 0x006C7D 01:AC6D: 37        .byte $37   ; 
- - - - - - 0x006C7E 01:AC6E: 05        .byte $05   ; 
- - - - - - 0x006C7F 01:AC6F: 02        .byte $02   ; 
- - - - - - 0x006C80 01:AC70: 04        .byte $04   ; 
- - - - - - 0x006C81 01:AC71: 03        .byte $03   ; 
- D 1 - - - 0x006C82 01:AC72: 30        .byte $30   ; 
- D 1 - - - 0x006C83 01:AC73: 2F        .byte $2F   ; 
- D 1 - - - 0x006C84 01:AC74: 2E        .byte $2E   ; 
- D 1 - - - 0x006C85 01:AC75: 2D        .byte $2D   ; 
- D 1 - - - 0x006C86 01:AC76: 2C        .byte $2C   ; 
- D 1 - - - 0x006C87 01:AC77: 2B        .byte $2B   ; 
- D 1 - - - 0x006C88 01:AC78: 2A        .byte $2A   ; 
- D 1 - - - 0x006C89 01:AC79: 29        .byte $29   ; 
- D 1 - - - 0x006C8A 01:AC7A: 35        .byte $35   ; 
- D 1 - - - 0x006C8B 01:AC7B: 32        .byte $32   ; 
- D 1 - - - 0x006C8C 01:AC7C: 34        .byte $34   ; 
- D 1 - - - 0x006C8D 01:AC7D: 33        .byte $33   ; 
- D 1 - - - 0x006C8E 01:AC7E: 32        .byte $32   ; 
- D 1 - - - 0x006C8F 01:AC7F: 31        .byte $31   ; 
- D 1 - - - 0x006C90 01:AC80: 61        .byte $61   ; 
- D 1 - - - 0x006C91 01:AC81: 60        .byte $60   ; 
- D 1 - - - 0x006C92 01:AC82: 5F        .byte $5F   ; 
- D 1 - - - 0x006C93 01:AC83: 5E        .byte $5E   ; 
- D 1 - - - 0x006C94 01:AC84: 5D        .byte $5D   ; 
- D 1 - - - 0x006C95 01:AC85: 5C        .byte $5C   ; 
- D 1 - - - 0x006C96 01:AC86: 61        .byte $61   ; 
- D 1 - - - 0x006C97 01:AC87: 60        .byte $60   ; 
- D 1 - - - 0x006C98 01:AC88: 5F        .byte $5F   ; 
- D 1 - - - 0x006C99 01:AC89: 5E        .byte $5E   ; 
- D 1 - - - 0x006C9A 01:AC8A: 5D        .byte $5D   ; 
- D 1 - - - 0x006C9B 01:AC8B: 5C        .byte $5C   ; 
- D 1 - - - 0x006C9C 01:AC8C: 6A        .byte $6A   ; 
- D 1 - - - 0x006C9D 01:AC8D: 67        .byte $67   ; 
- D 1 - - - 0x006C9E 01:AC8E: 69        .byte $69   ; 
- D 1 - - - 0x006C9F 01:AC8F: 68        .byte $68   ; 
- D 1 - - - 0x006CA0 01:AC90: 67        .byte $67   ; 
- D 1 - - - 0x006CA1 01:AC91: 66        .byte $66   ; 
- D 1 - - - 0x006CA2 01:AC92: 72        .byte $72   ; 
- D 1 - - - 0x006CA3 01:AC93: 71        .byte $71   ; 
- D 1 - - - 0x006CA4 01:AC94: 70        .byte $70   ; 
- D 1 - - - 0x006CA5 01:AC95: 6F        .byte $6F   ; 
- D 1 - - - 0x006CA6 01:AC96: 6F        .byte $6F   ; 
- D 1 - - - 0x006CA7 01:AC97: 70        .byte $70   ; 
- D 1 - - - 0x006CA8 01:AC98: 71        .byte $71   ; 
- D 1 - - - 0x006CA9 01:AC99: 72        .byte $72   ; 
- D 1 - - - 0x006CAA 01:AC9A: 74        .byte $74   ; 
- D 1 - - - 0x006CAB 01:AC9B: 73        .byte $73   ; 
- D 1 - - - 0x006CAC 01:AC9C: 76        .byte $76   ; 
- D 1 - - - 0x006CAD 01:AC9D: 77        .byte $77   ; 
- D 1 - - - 0x006CAE 01:AC9E: 76        .byte $76   ; 
- D 1 - - - 0x006CAF 01:AC9F: 75        .byte $75   ; 
- D 1 - - - 0x006CB0 01:ACA0: 6E        .byte $6E   ; 
- D 1 - - - 0x006CB1 01:ACA1: 6D        .byte $6D   ; 
- D 1 - - - 0x006CB2 01:ACA2: 83        .byte $83   ; 
- D 1 - - - 0x006CB3 01:ACA3: 82        .byte $82   ; 
- D 1 - - - 0x006CB4 01:ACA4: 91        .byte $91   ; 
- D 1 - - - 0x006CB5 01:ACA5: 90        .byte $90   ; 
- D 1 - - - 0x006CB6 01:ACA6: 93        .byte $93   ; 
- D 1 - - - 0x006CB7 01:ACA7: 92        .byte $92   ; 
- D 1 - - - 0x006CB8 01:ACA8: A0        .byte $A0   ; 
- D 1 - - - 0x006CB9 01:ACA9: 9F        .byte $9F   ; 
- D 1 - - - 0x006CBA 01:ACAA: 9E        .byte $9E   ; 
- D 1 - - - 0x006CBB 01:ACAB: A4        .byte $A4   ; 
- D 1 - - - 0x006CBC 01:ACAC: A3        .byte $A3   ; 
- D 1 - - - 0x006CBD 01:ACAD: A2        .byte $A2   ; 
- D 1 - - - 0x006CBE 01:ACAE: A1        .byte $A1   ; 
- D 1 - - - 0x006CBF 01:ACAF: A6        .byte $A6   ; 
- D 1 - - - 0x006CC0 01:ACB0: A5        .byte $A5   ; 
- D 1 - - - 0x006CC1 01:ACB1: 99        .byte $99   ; 
- D 1 - - - 0x006CC2 01:ACB2: 98        .byte $98   ; 
- D 1 - - - 0x006CC3 01:ACB3: 98        .byte $98   ; 
- D 1 - - - 0x006CC4 01:ACB4: 9D        .byte $9D   ; 
- D 1 - - - 0x006CC5 01:ACB5: A9        .byte $A9   ; 
- D 1 - - - 0x006CC6 01:ACB6: A8        .byte $A8   ; 
- D 1 - - - 0x006CC7 01:ACB7: AB        .byte $AB   ; 
- D 1 - - - 0x006CC8 01:ACB8: AA        .byte $AA   ; 
- D 1 - - - 0x006CC9 01:ACB9: B3        .byte $B3   ; 
- D 1 - - - 0x006CCA 01:ACBA: B2        .byte $B2   ; 
- D 1 - - - 0x006CCB 01:ACBB: B1        .byte $B1   ; 
- D 1 - - - 0x006CCC 01:ACBC: B0        .byte $B0   ; 
- D 1 - - - 0x006CCD 01:ACBD: AF        .byte $AF   ; 
- D 1 - - - 0x006CCE 01:ACBE: AE        .byte $AE   ; 
- D 1 - - - 0x006CCF 01:ACBF: AD        .byte $AD   ; 
- D 1 - - - 0x006CD0 01:ACC0: AC        .byte $AC   ; 
- D 1 - - - 0x006CD1 01:ACC1: B5        .byte $B5   ; 
- D 1 - - - 0x006CD2 01:ACC2: B4        .byte $B4   ; 



tbl_ACC3:
; see con_0x006C32
- D 1 - - - 0x006CD3 01:ACC3: FF        .byte $FF   ; 00 
- D 1 - - - 0x006CD4 01:ACC4: 05        .byte $05   ; 01 
- - - - - - 0x006CD5 01:ACC5: 0B        .byte $0B   ; 02 
- D 1 - - - 0x006CD6 01:ACC6: 0F        .byte $0F   ; 03 
- D 1 - - - 0x006CD7 01:ACC7: 17        .byte $17   ; 04 
- D 1 - - - 0x006CD8 01:ACC8: 1D        .byte $1D   ; 05 
- D 1 - - - 0x006CD9 01:ACC9: 23        .byte $23   ; 06 
- D 1 - - - 0x006CDA 01:ACCA: 29        .byte $29   ; 07 
- D 1 - - - 0x006CDB 01:ACCB: 2F        .byte $2F   ; 08 
- D 1 - - - 0x006CDC 01:ACCC: 33        .byte $33   ; 09 
- D 1 - - - 0x006CDD 01:ACCD: 37        .byte $37   ; 0A 
- D 1 - - - 0x006CDE 01:ACCE: 39        .byte $39   ; 0B 
- D 1 - - - 0x006CDF 01:ACCF: 3D        .byte $3D   ; 0C 
- D 1 - - - 0x006CE0 01:ACD0: 3F        .byte $3F   ; 0D 
- D 1 - - - 0x006CE1 01:ACD1: 41        .byte $41   ; 0E 
- D 1 - - - 0x006CE2 01:ACD2: 43        .byte $43   ; 0F 
- D 1 - - - 0x006CE3 01:ACD3: 45        .byte $45   ; 10 
- D 1 - - - 0x006CE4 01:ACD4: 48        .byte $48   ; 11 
- D 1 - - - 0x006CE5 01:ACD5: 4C        .byte $4C   ; 12 
- D 1 - - - 0x006CE6 01:ACD6: 4E        .byte $4E   ; 13 
- D 1 - - - 0x006CE7 01:ACD7: 50        .byte $50   ; 14 
- D 1 - - - 0x006CE8 01:ACD8: 52        .byte $52   ; 15 
- D 1 - - - 0x006CE9 01:ACD9: 54        .byte $54   ; 16 
- D 1 - - - 0x006CEA 01:ACDA: 56        .byte $56   ; 17 
- D 1 - - - 0x006CEB 01:ACDB: 5E        .byte $5E   ; 18 



_off001_ACDC_00_bonus_item:
- D 1 - I - 0x006CEC 01:ACDC: E2 AC     .word ofs_038_00_ACE2_01_initialize_object ; 
- D 1 - I - 0x006CEE 01:ACDE: 10 AD     .word ofs_038_00_AD10_02 ; 
- D 1 - I - 0x006CF0 01:ACE0: 5C AD     .word ofs_038_00_AD5C_03 ; выпал из капсулы/ящика, опускается и затем лежит на земле



ofs_038_00_ACE2_01_initialize_object:
C - - J - - 0x006CF2 01:ACE2: A9 00     LDA #$00
C - - - - - 0x006CF4 01:ACE4: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x006CF7 01:ACE7: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x006CFA 01:ACEA: A9 80     LDA #$80
C - - - - - 0x006CFC 01:ACEC: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x006CFF 01:ACEF: A9 F0     LDA #con__hp_F0
C - - - - - 0x006D01 01:ACF1: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x006D04 01:ACF4: A5 5D     LDA ram_area_config_view
C - - - - - 0x006D06 01:ACF6: 0A        ASL
C - - - - - 0x006D07 01:ACF7: A8        TAY
C - - - - - 0x006D08 01:ACF8: B9 0C AD  LDA tbl_AD0C_spd_Y,Y
C - - - - - 0x006D0B 01:ACFB: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x006D0E 01:ACFE: B9 0D AD  LDA tbl_AD0C_spd_Y + $01,Y
C - - - - - 0x006D11 01:AD01: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x006D14 01:AD04: 20 07 A7  JSR sub_A707
C - - - - - 0x006D17 01:AD07: A9 F0     LDA #$F0
C - - - - - 0x006D19 01:AD09: 4C E0 A2  JMP loc_A2E0



tbl_AD0C_spd_Y:
- D 1 - - - 0x006D1C 01:AD0C: 40 FC     .word $FC40 ; 00 side view
- D 1 - - - 0x006D1E 01:AD0E: 00 FD     .word $FD00 ; 01 view from above



ofs_038_00_AD10_02:
C - - J - - 0x006D20 01:AD10: 20 6F AD  JSR sub_AD6F
C - - - - - 0x006D23 01:AD13: 20 07 A7  JSR sub_A707
C - - - - - 0x006D26 01:AD16: A5 5D     LDA ram_area_config_view
C - - - - - 0x006D28 01:AD18: F0 0C     BEQ bra_AD26_side_view
; if view from above
C - - - - - 0x006D2A 01:AD1A: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x006D2D 01:AD1D: 30 35     BMI bra_AD54    ; if moving up
; if moving down
C - - - - - 0x006D2F 01:AD1F: C9 03     CMP #$03
C - - - - - 0x006D31 01:AD21: 90 31     BCC bra_AD54
C - - - - - 0x006D33 01:AD23: 4C D7 A2  JMP loc_A2D7_increase_obj_state
bra_AD26_side_view:
C - - - - - 0x006D36 01:AD26: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x006D39 01:AD29: C9 08     CMP #$08
C - - - - - 0x006D3B 01:AD2B: 90 27     BCC bra_AD54
C - - - - - 0x006D3D 01:AD2D: BC 8E 07  LDY ram_078E_obj,X
C - - - - - 0x006D40 01:AD30: D0 22     BNE bra_AD54
C - - - - - 0x006D42 01:AD32: BC AE 06  LDY ram_spd_Y_hi_obj,X
C - - - - - 0x006D45 01:AD35: 10 0D     BPL bra_AD44_moving_down
; if moving up
C - - - - - 0x006D47 01:AD37: A9 F8     LDA #$F8
C - - - - - 0x006D49 01:AD39: 20 0A A8  JSR sub_A80A
C - - - - - 0x006D4C 01:AD3C: A8        TAY
C - - - - - 0x006D4D 01:AD3D: B9 D8 F8  LDA tbl_0x01F8E8,Y
C - - - - - 0x006D50 01:AD40: F0 12     BEQ bra_AD54
C - - - - - 0x006D52 01:AD42: D0 0A     BNE bra_AD4E    ; jmp
bra_AD44_moving_down:
C - - - - - 0x006D54 01:AD44: A9 08     LDA #$08
C - - - - - 0x006D56 01:AD46: 20 0A A8  JSR sub_A80A
C - - - - - 0x006D59 01:AD49: F0 09     BEQ bra_AD54
C - - - - - 0x006D5B 01:AD4B: 20 3D A8  JSR sub_A83D
bra_AD4E:
C - - - - - 0x006D5E 01:AD4E: 20 C7 A7  JSR sub_A7C7_clear_spd_XY
C - - - - - 0x006D61 01:AD51: 4C 62 AD  JMP loc_AD62
bra_AD54:
C - - - - - 0x006D64 01:AD54: A9 18     LDA #$18
C - - - - - 0x006D66 01:AD56: 20 CB AA  JSR sub_AACB_add_to_spd_Y
C - - - - - 0x006D69 01:AD59: 4C 62 AD  JMP loc_AD62



ofs_038_00_AD5C_03:
C - - J - - 0x006D6C 01:AD5C: 20 6F AD  JSR sub_AD6F
C - - - - - 0x006D6F 01:AD5F: 20 B7 A6  JSR sub_A6B7_delete_object_03
loc_AD62:
C D 1 - - - 0x006D72 01:AD62: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x006D74 01:AD64: 4A        LSR
C - - - - - 0x006D75 01:AD65: B0 1B     BCS bra_AD82_RTS
C - - - - - 0x006D77 01:AD67: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x006D7A 01:AD6A: D0 16     BNE bra_AD82_RTS
C - - - - - 0x006D7C 01:AD6C: 4C 75 A2  JMP loc_A275_delete_object_02



sub_AD6F:
C - - - - - 0x006D7F 01:AD6F: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x006D82 01:AD72: 29 0F     AND #$0F
C - - - - - 0x006D84 01:AD74: 18        CLC
C - - - - - 0x006D85 01:AD75: 69 08     ADC #$08
C - - - - - 0x006D87 01:AD77: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x006D8A 01:AD7A: A5 5B     LDA ram_frm_cnt_2
C - - - - - 0x006D8C 01:AD7C: 4A        LSR
C - - - - - 0x006D8D 01:AD7D: 29 03     AND #$03
C - - - - - 0x006D8F 01:AD7F: 9D 56 05  STA ram_attr_spr_enemy,X
bra_AD82_RTS:
C - - - - - 0x006D92 01:AD82: 60        RTS



_off001_AD83_01_bonus_capsule:
- D 1 - I - 0x006D93 01:AD83: 8D AD     .word ofs_038_01_AD8D_01_initialize_object ; 
- D 1 - I - 0x006D95 01:AD85: 03 AE     .word ofs_038_01_AE03_02 ; капсула летит и ждет когда по ней попадут
- D 1 - I - 0x006D97 01:AD87: 3A AE     .word ofs_038_01_AE3A_03 ; 
- D 1 - I - 0x006D99 01:AD89: FD A2     .word ofs_038_01_A2FD_04 ; анимация взрыва
- D 1 - I - 0x006D9B 01:AD8B: 3D A3     .word ofs_038_01_A33D_05_delete_object_04 ; 



ofs_038_01_AD8D_01_initialize_object:
C - - J - - 0x006D9D 01:AD8D: A9 00     LDA #$00
C - - - - - 0x006D9F 01:AD8F: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x006DA2 01:AD92: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x006DA5 01:AD95: A9 01     LDA #$01
C - - - - - 0x006DA7 01:AD97: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x006DAA 01:AD9A: A9 1D     LDA #$1D
C - - - - - 0x006DAC 01:AD9C: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x006DAF 01:AD9F: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x006DB2 01:ADA2: 29 30     AND #$30
C - - - - - 0x006DB4 01:ADA4: 4A        LSR
C - - - - - 0x006DB5 01:ADA5: 4A        LSR
C - - - - - 0x006DB6 01:ADA6: A8        TAY
C - - - - - 0x006DB7 01:ADA7: B9 EF AD  LDA tbl_ADEF_speed,Y
C - - - - - 0x006DBA 01:ADAA: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x006DBD 01:ADAD: B9 F0 AD  LDA tbl_ADEF_speed + $01,Y
C - - - - - 0x006DC0 01:ADB0: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x006DC3 01:ADB3: B9 F1 AD  LDA tbl_ADEF_speed + $02,Y
C - - - - - 0x006DC6 01:ADB6: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x006DC9 01:ADB9: B9 F2 AD  LDA tbl_ADEF_speed + $03,Y
C - - - - - 0x006DCC 01:ADBC: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x006DCF 01:ADBF: 98        TYA
C - - - - - 0x006DD0 01:ADC0: 4A        LSR
C - - - - - 0x006DD1 01:ADC1: A8        TAY
C - - - - - 0x006DD2 01:ADC2: B9 E7 AD  LDA tbl_ADE7_position,Y
C - - - - - 0x006DD5 01:ADC5: F0 03     BEQ bra_ADCA
C - - - - - 0x006DD7 01:ADC7: 9D 22 05  STA ram_pos_Y_hi_enemy,X
bra_ADCA:
C - - - - - 0x006DDA 01:ADCA: B9 E8 AD  LDA tbl_ADE7_position + $01,Y
C - - - - - 0x006DDD 01:ADCD: F0 03     BEQ bra_ADD2
C - - - - - 0x006DDF 01:ADCF: 9D 3C 05  STA ram_pos_X_hi_enemy,X
bra_ADD2:
C - - - - - 0x006DE2 01:ADD2: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x006DE5 01:ADD5: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x006DE8 01:ADD8: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x006DEB 01:ADDB: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x006DEE 01:ADDE: 20 D3 A6  JSR sub_A6D3
C - - - - - 0x006DF1 01:ADE1: 20 27 AE  JSR sub_AE27
C - - - - - 0x006DF4 01:ADE4: 4C D7 A2  JMP loc_A2D7_increase_obj_state



tbl_ADE7_position:
;                                              ----------- pos_Y
;                                              |    ------ pos_X
;                                              |    |
- D 1 - - - 0x006DF7 01:ADE7: 50        .byte $50, $F8   ; 00 
- D 1 - - - 0x006DF9 01:ADE9: 00        .byte $00, $08   ; 10 
- D 1 - - - 0x006DFB 01:ADEB: D0        .byte $D0, $00   ; 20 
- D 1 - - - 0x006DFD 01:ADED: 30        .byte $30, $08   ; 30 



tbl_ADEF_speed:
; 00 
- D 1 - - - 0x006DFF 01:ADEF: 00 FE     .word $FE00 ; Y
- D 1 - - - 0x006E01 01:ADF1: 00 FE     .word $FE00 ; X
; 10 
- D 1 - - - 0x006E03 01:ADF3: 00 FE     .word $FE00 ; Y
- D 1 - - - 0x006E05 01:ADF5: 00 02     .word $0200 ; X
; 20 
- D 1 - - - 0x006E07 01:ADF7: 00 FE     .word $FE00 ; Y
- D 1 - - - 0x006E09 01:ADF9: 00 02     .word $0200 ; X
; 30 
- D 1 - - - 0x006E0B 01:ADFB: 00 FE     .word $FE00 ; Y
- D 1 - - - 0x006E0D 01:ADFD: 00 02     .word $0200 ; X



tbl_ADFF:
- D 1 - - - 0x006E0F 01:ADFF: 00        .byte $00   ; 00 
- D 1 - - - 0x006E10 01:AE00: 00        .byte $00   ; 10 
- D 1 - - - 0x006E11 01:AE01: 01        .byte $01   ; 20 
- D 1 - - - 0x006E12 01:AE02: 00        .byte $00   ; 30 



ofs_038_01_AE03_02:
C - - J - - 0x006E13 01:AE03: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x006E16 01:AE06: 29 30     AND #$30
C - - - - - 0x006E18 01:AE08: 4A        LSR
C - - - - - 0x006E19 01:AE09: 4A        LSR
C - - - - - 0x006E1A 01:AE0A: 4A        LSR
C - - - - - 0x006E1B 01:AE0B: 4A        LSR
C - - - - - 0x006E1C 01:AE0C: A8        TAY
C - - - - - 0x006E1D 01:AE0D: B9 FF AD  LDA tbl_ADFF,Y
C - - - - - 0x006E20 01:AE10: D0 08     BNE bra_AE1A
C - - - - - 0x006E22 01:AE12: A0 02     LDY #$02
C - - - - - 0x006E24 01:AE14: 20 6E A9  JSR sub_A96E
C - - - - - 0x006E27 01:AE17: 4C 1F AE  JMP loc_AE1F
bra_AE1A:
C - - - - - 0x006E2A 01:AE1A: A0 02     LDY #$02
C - - - - - 0x006E2C 01:AE1C: 20 8E A9  JSR sub_A98E
loc_AE1F:
C D 1 - - - 0x006E2F 01:AE1F: A9 07     LDA #$07
C - - - - - 0x006E31 01:AE21: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x006E34 01:AE24: 20 D3 A6  JSR sub_A6D3
sub_AE27:
C - - - - - 0x006E37 01:AE27: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x006E3A 01:AE2A: 38        SEC
C - - - - - 0x006E3B 01:AE2B: E5 72     SBC ram_cam_spd_Y
C - - - - - 0x006E3D 01:AE2D: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x006E40 01:AE30: BD 56 07  LDA ram_0756_obj,X
C - - - - - 0x006E43 01:AE33: 18        CLC
C - - - - - 0x006E44 01:AE34: 65 62     ADC ram_cam_spd_X
C - - - - - 0x006E46 01:AE36: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x006E49 01:AE39: 60        RTS



ofs_038_01_AE3A_03:
C - - J - - 0x006E4A 01:AE3A: A0 00     LDY #$00
C - - - - - 0x006E4C 01:AE3C: 20 BD AB  JSR sub_ABBD
C - - - - - 0x006E4F 01:AE3F: 4C 9A A2  JMP loc_A29A



_off001_AE42_0E_bullet_enemy_short_range:
- D 1 - I - 0x006E52 01:AE42: 95 AE     .word ofs_038_0E_AE95_01_initialize_object ; 
- D 1 - I - 0x006E54 01:AE44: A9 AE     .word ofs_038_0E_AEA9_02 ; 
- D 1 - I - 0x006E56 01:AE46: 4C AE     .word ofs_038_0E_AE4C_03 ; 
- D 1 - I - 0x006E58 01:AE48: 70 AE     .word ofs_038_0E_AE70_04 ; 
- D 1 - I - 0x006E5A 01:AE4A: 78 AE     .word ofs_038_0E_AE78_05 ; 



ofs_038_0E_AE4C_03:
C - - J - - 0x006E5C 01:AE4C: FE E6 06  INC ram_06E6_obj,X
C - - - - - 0x006E5F 01:AE4F: BD E6 06  LDA ram_06E6_obj,X
C - - - - - 0x006E62 01:AE52: 4A        LSR
C - - - - - 0x006E63 01:AE53: 4A        LSR
C - - - - - 0x006E64 01:AE54: 29 03     AND #$03
C - - - - - 0x006E66 01:AE56: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x006E69 01:AE59: 20 D3 A6  JSR sub_A6D3
C - - - - - 0x006E6C 01:AE5C: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x006E6F 01:AE5F: F0 0B     BEQ bra_AE6C
C - - - - - 0x006E71 01:AE61: A9 00     LDA #$00
C - - - - - 0x006E73 01:AE63: 20 0A A8  JSR sub_A80A
C - - - - - 0x006E76 01:AE66: A8        TAY
C - - - - - 0x006E77 01:AE67: B9 CC F8  LDA tbl_0x01F8DC,Y
C - - - - - 0x006E7A 01:AE6A: F0 03     BEQ bra_AE6F_RTS
bra_AE6C:
C - - - - - 0x006E7C 01:AE6C: 4C D7 A2  JMP loc_A2D7_increase_obj_state
bra_AE6F_RTS:
C - - - - - 0x006E7F 01:AE6F: 60        RTS



ofs_038_0E_AE70_04:
ofs_038_30_0x006E80_04:
C - - J - - 0x006E80 01:AE70: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x006E83 01:AE73: A9 08     LDA #$08
C - - - - - 0x006E85 01:AE75: 4C E0 A2  JMP loc_A2E0



ofs_038_0E_AE78_05:
ofs_038_30_0x006E88_05:
C - - J - - 0x006E88 01:AE78: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x006E8B 01:AE7B: A9 02     LDA #$02
C - - - - - 0x006E8D 01:AE7D: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x006E90 01:AE80: A9 04     LDA #$04
C - - - - - 0x006E92 01:AE82: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x006E95 01:AE85: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x006E98 01:AE88: D0 E5     BNE bra_AE6F_RTS
C - - - - - 0x006E9A 01:AE8A: 4C 75 A2  JMP loc_A275_delete_object_02



_off001_AE8D_02_bullet_enemy_normal:
- D 1 - I - 0x006E9D 01:AE8D: 95 AE     .word ofs_038_02_AE95_01_initialize_object ; 
- D 1 - I - 0x006E9F 01:AE8F: A9 AE     .word ofs_038_02_AEA9_02 ; пуля выстреливает со взрывом
- D 1 - I - 0x006EA1 01:AE91: C9 AE     .word ofs_038_02_AEC9_03 ; пуля в полете, в ожидании касания игрока или фона
- D 1 - I - 0x006EA3 01:AE93: 75 A2     .word ofs_038_02_A275_04_delete_object_02 ; 



ofs_038_0E_AE95_01_initialize_object:
ofs_038_02_AE95_01_initialize_object:
sub_0x006EA5:
loc_0x006EA5:
C D 1 J - - 0x006EA5 01:AE95: A9 80     LDA #$80
C - - - - - 0x006EA7 01:AE97: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x006EAA 01:AE9A: A9 02     LDA #$02
C - - - - - 0x006EAC 01:AE9C: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x006EAF 01:AE9F: A9 02     LDA #$02
C - - - - - 0x006EB1 01:AEA1: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x006EB4 01:AEA4: A9 04     LDA #$04
C - - - - - 0x006EB6 01:AEA6: 4C E0 A2  JMP loc_A2E0



ofs_038_0E_AEA9_02:
ofs_038_02_AEA9_02:
ofs_038_30_0x006EB9_02:
C - - J - - 0x006EB9 01:AEA9: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x006EBC 01:AEAC: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x006EBF 01:AEAF: D0 3D     BNE bra_AEEE_RTS
C - - - - - 0x006EC1 01:AEB1: BC 48 07  LDY ram_0748_obj,X
C - - - - - 0x006EC4 01:AEB4: B9 C3 AE  LDA tbl_AEC3,Y
C - - - - - 0x006EC7 01:AEB7: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x006ECA 01:AEBA: B9 C6 AE  LDA tbl_AEC6,Y
C - - - - - 0x006ECD 01:AEBD: 9D F4 06  STA ram_06F4_obj,X
bra_AEC0:
C - - - - - 0x006ED0 01:AEC0: 4C D7 A2  JMP loc_A2D7_increase_obj_state



tbl_AEC3:
- D 1 - - - 0x006ED3 01:AEC3: 05        .byte $05   ; 00 
- D 1 - - - 0x006ED4 01:AEC4: 06        .byte $06   ; 01 
- D 1 - - - 0x006ED5 01:AEC5: 06        .byte $06   ; 02 



tbl_AEC6:
- D 1 - - - 0x006ED6 01:AEC6: 50        .byte $50   ; 00 
- D 1 - - - 0x006ED7 01:AEC7: 50        .byte $50   ; 01 
- D 1 - - - 0x006ED8 01:AEC8: 38        .byte $38   ; 02 



ofs_038_02_AEC9_03:
C - - J - - 0x006ED9 01:AEC9: FE E6 06  INC ram_06E6_obj,X
C - - - - - 0x006EDC 01:AECC: BD E6 06  LDA ram_06E6_obj,X
C - - - - - 0x006EDF 01:AECF: 4A        LSR
C - - - - - 0x006EE0 01:AED0: 4A        LSR
C - - - - - 0x006EE1 01:AED1: 29 03     AND #$03
C - - - - - 0x006EE3 01:AED3: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x006EE6 01:AED6: 20 D3 A6  JSR sub_A6D3
C - - - - - 0x006EE9 01:AED9: A9 F8     LDA #$F8
C - - - - - 0x006EEB 01:AEDB: 20 0A A8  JSR sub_A80A
C - - - - - 0x006EEE 01:AEDE: A8        TAY
C - - - - - 0x006EEF 01:AEDF: A5 8F     LDA ram_008F_area_config
C - - - - - 0x006EF1 01:AEE1: D0 06     BNE bra_AEE9
C - - - - - 0x006EF3 01:AEE3: B9 D8 F8  LDA tbl_0x01F8E8,Y
C - - - - - 0x006EF6 01:AEE6: D0 D8     BNE bra_AEC0
C - - - - - 0x006EF8 01:AEE8: 60        RTS
bra_AEE9:
C - - - - - 0x006EF9 01:AEE9: B9 CC F8  LDA tbl_0x01F8DC,Y
C - - - - - 0x006EFC 01:AEEC: D0 D2     BNE bra_AEC0
bra_AEEE_RTS:
C - - - - - 0x006EFE 01:AEEE: 60        RTS



_off001_AEEF_03_mob_normal_1:
- D 1 - I - 0x006EFF 01:AEEF: FF AE     .word ofs_038_03_AEFF_01_initialize_object ; 
- D 1 - I - 0x006F01 01:AEF1: BE AF     .word ofs_038_03_AFBE_02 ; в процессе бега, может перепрыгивать препятствия и падать вниз если под ногами пусто
- D 1 - I - 0x006F03 01:AEF3: E4 B0     .word ofs_038_03_B0E4_03 ; красный моб останавливается и стреляет
- D 1 - I - 0x006F05 01:AEF5: 2E B1     .word ofs_038_03_B12E_04 ; 
- D 1 - I - 0x006F07 01:AEF7: 76 B1     .word ofs_038_03_B176_05 ; подскакивает после попадания по нему
- D 1 - I - 0x006F09 01:AEF9: 9A A2     .word ofs_038_03_A29A_06 ; готовится взорваться
- D 1 - I - 0x006F0B 01:AEFB: FD A2     .word ofs_038_03_A2FD_07 ; анимация взрыва
- D 1 - I - 0x006F0D 01:AEFD: 3D A3     .word ofs_038_03_A33D_08_delete_object_04 ; 



ofs_038_03_AEFF_01_initialize_object:
C - - J - - 0x006F0F 01:AEFF: BD E6 06  LDA ram_06E6_obj,X
C - - - - - 0x006F12 01:AF02: F0 06     BEQ bra_AF0A
- - - - - - 0x006F14 01:AF04: DE E6 06  DEC ram_06E6_obj,X
- - - - - - 0x006F17 01:AF07: 4C B4 A6  JMP loc_A6B4
bra_AF0A:
C - - - - - 0x006F1A 01:AF0A: A0 12     LDY #$12
C - - - - - 0x006F1C 01:AF0C: 20 00 A8  JSR sub_A800
C - - - - - 0x006F1F 01:AF0F: F0 03     BEQ bra_AF14
C - - - - - 0x006F21 01:AF11: 20 3D A8  JSR sub_A83D
bra_AF14:
C - - - - - 0x006F24 01:AF14: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x006F27 01:AF17: 30 08     BMI bra_AF21
C - - - - - 0x006F29 01:AF19: 4A        LSR
C - - - - - 0x006F2A 01:AF1A: 90 05     BCC bra_AF21
C - - - - - 0x006F2C 01:AF1C: A9 10     LDA #$10
C - - - - - 0x006F2E 01:AF1E: 9D 3C 05  STA ram_pos_X_hi_enemy,X
bra_AF21:
C - - - - - 0x006F31 01:AF21: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x006F34 01:AF24: 29 7F     AND #$7F
C - - - - - 0x006F36 01:AF26: A4 50     LDY ram_area_index
C - - - - - 0x006F38 01:AF28: C0 07     CPY #$07
C - - - - - 0x006F3A 01:AF2A: D0 02     BNE bra_AF2E
C - - - - - 0x006F3C 01:AF2C: 09 80     ORA #$80
bra_AF2E:
C - - - - - 0x006F3E 01:AF2E: 9D 1E 07  STA ram_obj_flags,X
C - - - - - 0x006F41 01:AF31: 0A        ASL
C - - - - - 0x006F42 01:AF32: A9 00     LDA #$00
C - - - - - 0x006F44 01:AF34: 90 02     BCC bra_AF38
C - - - - - 0x006F46 01:AF36: A9 04     LDA #$04
bra_AF38:
C - - - - - 0x006F48 01:AF38: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x006F4B 01:AF3B: A9 08     LDA #$08
C - - - - - 0x006F4D 01:AF3D: 9D 3A 07  STA ram_073A_obj_hitbox_index,X
C - - - - - 0x006F50 01:AF40: 20 6C AF  JSR sub_AF6C
C - - - - - 0x006F53 01:AF43: 20 99 AF  JSR sub_AF99_set_spd_Y_0100
C - - - - - 0x006F56 01:AF46: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x006F59 01:AF49: 4A        LSR
C - - - - - 0x006F5A 01:AF4A: 4A        LSR
C - - - - - 0x006F5B 01:AF4B: 4A        LSR
C - - - - - 0x006F5C 01:AF4C: 29 03     AND #$03
C - - - - - 0x006F5E 01:AF4E: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x006F61 01:AF51: 20 E8 B1  JSR sub_B1E8
C - - - - - 0x006F64 01:AF54: A9 03     LDA #$03
C - - - - - 0x006F66 01:AF56: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x006F69 01:AF59: A9 10     LDA #$10
C - - - - - 0x006F6B 01:AF5B: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x006F6E 01:AF5E: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x006F71 01:AF61: 4C D7 A2  JMP loc_A2D7_increase_obj_state



sub_AF64:
C - - - - - 0x006F74 01:AF64: BD BC 06  LDA ram_spd_X_lo_obj,X
C - - - - - 0x006F77 01:AF67: 1D CA 06  ORA ram_spd_X_hi_obj,X
C - - - - - 0x006F7A 01:AF6A: D0 2C     BNE bra_AF98_RTS    ; if moving along X axis
; if not moving along X axis
sub_AF6C:
loc_AF6C:
C D 1 - - - 0x006F7C 01:AF6C: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x006F7F 01:AF6F: 4A        LSR
C - - - - - 0x006F80 01:AF70: A9 00     LDA #$00
C - - - - - 0x006F82 01:AF72: A4 61     LDY ram_0061_area_config
C - - - - - 0x006F84 01:AF74: F0 02     BEQ bra_AF78
C - - - - - 0x006F86 01:AF76: A9 04     LDA #$04
bra_AF78:
C - - - - - 0x006F88 01:AF78: BC 1E 07  LDY ram_obj_flags,X
C - - - - - 0x006F8B 01:AF7B: 10 02     BPL bra_AF7F
C - - - - - 0x006F8D 01:AF7D: A9 08     LDA #$08
bra_AF7F:
C - - - - - 0x006F8F 01:AF7F: 90 02     BCC bra_AF83
C - - - - - 0x006F91 01:AF81: 69 01     ADC #$01
bra_AF83:
C - - - - - 0x006F93 01:AF83: BC 48 07  LDY ram_0748_obj,X
C - - - - - 0x006F96 01:AF86: 10 03     BPL bra_AF8B
C - - - - - 0x006F98 01:AF88: 18        CLC
C - - - - - 0x006F99 01:AF89: 69 0C     ADC #$0C
bra_AF8B:
C - - - - - 0x006F9B 01:AF8B: A8        TAY
C - - - - - 0x006F9C 01:AF8C: B9 A4 AF  LDA tbl_AFA4_spd_X,Y
C - - - - - 0x006F9F 01:AF8F: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x006FA2 01:AF92: B9 A5 AF  LDA tbl_AFA4_spd_X + $01,Y
C - - - - - 0x006FA5 01:AF95: 9D CA 06  STA ram_spd_X_hi_obj,X
bra_AF98_RTS:
C - - - - - 0x006FA8 01:AF98: 60        RTS



sub_AF99_set_spd_Y_0100:
C - - - - - 0x006FA9 01:AF99: A9 00     LDA #< $0100
C - - - - - 0x006FAB 01:AF9B: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x006FAE 01:AF9E: A9 01     LDA #> $0100
C - - - - - 0x006FB0 01:AFA0: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x006FB3 01:AFA3: 60        RTS



tbl_AFA4_spd_X:
- D 1 - - - 0x006FB4 01:AFA4: 00 FF     .word $FF00 ; 00 
- D 1 - - - 0x006FB6 01:AFA6: 40 01     .word $0140 ; 01 
- D 1 - - - 0x006FB8 01:AFA8: 00 FF     .word $FF00 ; 02 
- D 1 - - - 0x006FBA 01:AFAA: 00 01     .word $0100 ; 03 
- D 1 - - - 0x006FBC 01:AFAC: C0 FE     .word $FEC0 ; 04 
- D 1 - - - 0x006FBE 01:AFAE: 80 01     .word $0180 ; 05 
- D 1 - - - 0x006FC0 01:AFB0: 20 FF     .word $FF20 ; 06 
- D 1 - - - 0x006FC2 01:AFB2: E0 00     .word $00E0 ; 07 
- D 1 - - - 0x006FC4 01:AFB4: 20 FF     .word $FF20 ; 08 
- D 1 - - - 0x006FC6 01:AFB6: E0 00     .word $00E0 ; 09 
- D 1 - - - 0x006FC8 01:AFB8: C0 FE     .word $FEC0 ; 0A 
- D 1 - - - 0x006FCA 01:AFBA: 80 01     .word $0180 ; 0B 
- - - - - - 0x006FCC 01:AFBC: 0C 18     .word $180C ; 0C 



ofs_038_03_AFBE_02:
C - - J - - 0x006FCE 01:AFBE: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x006FD1 01:AFC1: 10 7C     BPL bra_B03F
C - - - - - 0x006FD3 01:AFC3: A9 20     LDA #$20
C - - - - - 0x006FD5 01:AFC5: BC 1E 07  LDY ram_obj_flags,X
C - - - - - 0x006FD8 01:AFC8: 10 02     BPL bra_AFCC
C - - - - - 0x006FDA 01:AFCA: A9 36     LDA #$36
bra_AFCC:
C - - - - - 0x006FDC 01:AFCC: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x006FDF 01:AFCF: A9 14     LDA #$14
C - - - - - 0x006FE1 01:AFD1: 85 0F     STA ram_000F
C - - - - - 0x006FE3 01:AFD3: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x006FE6 01:AFD6: 18        CLC
C - - - - - 0x006FE7 01:AFD7: 69 06     ADC #$06
C - - - - - 0x006FE9 01:AFD9: A8        TAY
C - - - - - 0x006FEA 01:AFDA: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x006FED 01:AFDD: 4A        LSR
C - - - - - 0x006FEE 01:AFDE: A9 07     LDA #$07
C - - - - - 0x006FF0 01:AFE0: B0 02     BCS bra_AFE4
C - - - - - 0x006FF2 01:AFE2: A9 F8     LDA #$F8
bra_AFE4:
C - - - - - 0x006FF4 01:AFE4: 85 08     STA ram_0008
C - - - - - 0x006FF6 01:AFE6: 7D 3C 05  ADC ram_pos_X_hi_enemy,X
C - - - - - 0x006FF9 01:AFE9: 85 09     STA ram_0009
C - - - - - 0x006FFB 01:AFEB: 6A        ROR
C - - - - - 0x006FFC 01:AFEC: 45 08     EOR ram_0008
C - - - - - 0x006FFE 01:AFEE: 30 0D     BMI bra_AFFD
C - - - - - 0x007000 01:AFF0: A5 09     LDA ram_0009
C - - - - - 0x007002 01:AFF2: 20 7F BB  JSR sub_BB7F
C - - - - - 0x007005 01:AFF5: 90 06     BCC bra_AFFD
C - - - - - 0x007007 01:AFF7: 20 D3 A7  JSR sub_A7D3_clear_spd_X
C - - - - - 0x00700A 01:AFFA: 4C 00 B0  JMP loc_B000
bra_AFFD:
C - - - - - 0x00700D 01:AFFD: 20 64 AF  JSR sub_AF64
loc_B000:
C D 1 - - - 0x007010 01:B000: 20 07 A7  JSR sub_A707
C - - - - - 0x007013 01:B003: A9 12     LDA #$12
C - - - - - 0x007015 01:B005: 20 00 A8  JSR sub_A800
C - - - - - 0x007018 01:B008: F0 30     BEQ bra_B03A
C - - - - - 0x00701A 01:B00A: 20 3D A8  JSR sub_A83D
C - - - - - 0x00701D 01:B00D: 20 99 AF  JSR sub_AF99_set_spd_Y_0100
C - - - - - 0x007020 01:B010: A9 00     LDA #$00
C - - - - - 0x007022 01:B012: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x007025 01:B015: 9D 02 07  STA ram_0702_obj,X
C - - - - - 0x007028 01:B018: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x00702B 01:B01B: 29 02     AND #$02
C - - - - - 0x00702D 01:B01D: F0 18     BEQ bra_B037
C - - - - - 0x00702F 01:B01F: 20 0B AB  JSR sub_AB0B_set_target_on_closest_player_X_pos
C - - - - - 0x007032 01:B022: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x007035 01:B025: D9 4C 05  CMP ram_pos_X_hi_plr,Y
C - - - - - 0x007038 01:B028: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x00703B 01:B02B: 29 FC     AND #$FC
C - - - - - 0x00703D 01:B02D: B0 02     BCS bra_B031
C - - - - - 0x00703F 01:B02F: 09 01     ORA #$01
bra_B031:
C - - - - - 0x007041 01:B031: 9D 1E 07  STA ram_obj_flags,X
C - - - - - 0x007044 01:B034: 20 E8 B1  JSR sub_B1E8
bra_B037:
C - - - - - 0x007047 01:B037: 20 6C AF  JSR sub_AF6C
bra_B03A:
C - - - - - 0x00704A 01:B03A: A9 1C     LDA #$1C
C - - - - - 0x00704C 01:B03C: 4C CB AA  JMP loc_AACB_add_to_spd_Y
bra_B03F:
C - - - - - 0x00704F 01:B03F: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x007052 01:B042: F0 05     BEQ bra_B049
C - - - - - 0x007054 01:B044: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x007057 01:B047: F0 73     BEQ bra_B0BC
bra_B049:
C - - - - - 0x007059 01:B049: 20 9D B1  JSR sub_B19D
C - - - - - 0x00705C 01:B04C: B0 4C     BCS bra_B09A
C - - - - - 0x00705E 01:B04E: 20 07 A7  JSR sub_A707
C - - - - - 0x007061 01:B051: BD 68 06  LDA ram_obj_state,X
C - - - - - 0x007064 01:B054: F0 18     BEQ bra_B06E_RTS
C - - - - - 0x007066 01:B056: A9 12     LDA #$12
C - - - - - 0x007068 01:B058: 20 0A A8  JSR sub_A80A
C - - - - - 0x00706B 01:B05B: F0 12     BEQ bra_B06F
C - - - - - 0x00706D 01:B05D: 20 3D A8  JSR sub_A83D
C - - - - - 0x007070 01:B060: A5 09     LDA ram_0009
C - - - - - 0x007072 01:B062: BC 64 07  LDY ram_0764_obj,X
; con_0x006C32_00
; con_0x006C32_04
C - - - - - 0x007075 01:B065: C9 04     CMP #$04
C - - - - - 0x007077 01:B067: D0 02     BNE bra_B06B
C - - - - - 0x007079 01:B069: A0 01     LDY #con_0x006C32_01
bra_B06B:
C - - - - - 0x00707B 01:B06B: 4C FD AB  JMP loc_ABFD
bra_B06E_RTS:
C - - - - - 0x00707E 01:B06E: 60        RTS
bra_B06F:
C - - - - - 0x00707F 01:B06F: 20 0B AB  JSR sub_AB0B_set_target_on_closest_player_X_pos
C - - - - - 0x007082 01:B072: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x007085 01:B075: 38        SEC
C - - - - - 0x007086 01:B076: F9 32 05  SBC ram_pos_Y_hi_plr,Y
C - - - - - 0x007089 01:B079: A0 0C     LDY #$0C
C - - - - - 0x00708B 01:B07B: B0 06     BCS bra_B083
C - - - - - 0x00708D 01:B07D: A0 08     LDY #$08
C - - - - - 0x00708F 01:B07F: 49 FF     EOR #$FF
C - - - - - 0x007091 01:B081: 69 01     ADC #$01
bra_B083:
C - - - - - 0x007093 01:B083: C9 10     CMP #$10
C - - - - - 0x007095 01:B085: B0 02     BCS bra_B089
C - - - - - 0x007097 01:B087: A0 00     LDY #$00
bra_B089:
C - - - - - 0x007099 01:B089: 84 08     STY ram_0008
C - - - - - 0x00709B 01:B08B: A5 23     LDA ram_random
C - - - - - 0x00709D 01:B08D: 29 07     AND #$07
C - - - - - 0x00709F 01:B08F: 18        CLC
C - - - - - 0x0070A0 01:B090: 65 08     ADC ram_0008
C - - - - - 0x0070A2 01:B092: A8        TAY
C - - - - - 0x0070A3 01:B093: B9 C6 B0  LDA tbl_B0C6_index,Y
C - - - - - 0x0070A6 01:B096: A8        TAY
C - - - - - 0x0070A7 01:B097: 4C 9F B0  JMP loc_B09F    ; bzk optimize, BPL
bra_B09A:
C - - - - - 0x0070AA 01:B09A: 20 07 A7  JSR sub_A707
C - - - - - 0x0070AD 01:B09D: A0 00     LDY #$00
loc_B09F:
C D 1 - - - 0x0070AF 01:B09F: B9 DE B0  LDA tbl_B0DE_spd_Y,Y
C - - - - - 0x0070B2 01:B0A2: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x0070B5 01:B0A5: B9 DF B0  LDA tbl_B0DE_spd_Y + $01,Y
C - - - - - 0x0070B8 01:B0A8: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x0070BB 01:B0AB: A9 80     LDA #$80
C - - - - - 0x0070BD 01:B0AD: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0070C0 01:B0B0: BD 56 05  LDA ram_attr_spr_enemy,X
C - - - - - 0x0070C3 01:B0B3: 29 DF     AND #$DF
C - - - - - 0x0070C5 01:B0B5: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x0070C8 01:B0B8: 4C 6C AF  JMP loc_AF6C
bra_B0BB_RTS:
C - - - - - 0x0070CB 01:B0BB: 60        RTS
bra_B0BC:
C - - - - - 0x0070CC 01:B0BC: A9 04     LDA #$04
C - - - - - 0x0070CE 01:B0BE: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x0070D1 01:B0C1: A9 0E     LDA #$0E
C - - - - - 0x0070D3 01:B0C3: 4C E0 A2  JMP loc_A2E0



tbl_B0C6_index:
; ??? по 4 или по 8
- D 1 - - - 0x0070D6 01:B0C6: 02        .byte $02   ; 
- D 1 - - - 0x0070D7 01:B0C7: 04        .byte $04   ; 
- D 1 - - - 0x0070D8 01:B0C8: 02        .byte $02   ; 
- D 1 - - - 0x0070D9 01:B0C9: 02        .byte $02   ; 
- D 1 - - - 0x0070DA 01:B0CA: 04        .byte $04   ; 
- D 1 - - - 0x0070DB 01:B0CB: 04        .byte $04   ; 
- D 1 - - - 0x0070DC 01:B0CC: 02        .byte $02   ; 
- D 1 - - - 0x0070DD 01:B0CD: 04        .byte $04   ; 
- D 1 - - - 0x0070DE 01:B0CE: 04        .byte $04   ; 
- D 1 - - - 0x0070DF 01:B0CF: 04        .byte $04   ; 
- D 1 - - - 0x0070E0 01:B0D0: 04        .byte $04   ; 
- D 1 - - - 0x0070E1 01:B0D1: 04        .byte $04   ; 
- D 1 - - - 0x0070E2 01:B0D2: 04        .byte $04   ; 
- D 1 - - - 0x0070E3 01:B0D3: 04        .byte $04   ; 
- D 1 - - - 0x0070E4 01:B0D4: 04        .byte $04   ; 
- D 1 - - - 0x0070E5 01:B0D5: 04        .byte $04   ; 
- D 1 - - - 0x0070E6 01:B0D6: 02        .byte $02   ; 
- D 1 - - - 0x0070E7 01:B0D7: 02        .byte $02   ; 
- D 1 - - - 0x0070E8 01:B0D8: 02        .byte $02   ; 
- D 1 - - - 0x0070E9 01:B0D9: 02        .byte $02   ; 
- - - - - - 0x0070EA 01:B0DA: 02        .byte $02   ; 
- - - - - - 0x0070EB 01:B0DB: 02        .byte $02   ; 
- - - - - - 0x0070EC 01:B0DC: 02        .byte $02   ; 
- - - - - - 0x0070ED 01:B0DD: 02        .byte $02   ; 



tbl_B0DE_spd_Y:
- D 1 - - - 0x0070EE 01:B0DE: C0 FC     .word $FCC0 ; 00 
- D 1 - - - 0x0070F0 01:B0E0: 00 FE     .word $FE00 ; 02 
- D 1 - - - 0x0070F2 01:B0E2: 40 FF     .word $FF40 ; 04 



ofs_038_03_B0E4_03:
C - - J - - 0x0070F4 01:B0E4: 20 0B AB  JSR sub_AB0B_set_target_on_closest_player_X_pos
C - - - - - 0x0070F7 01:B0E7: B9 4C 05  LDA ram_pos_X_hi_plr,Y
C - - - - - 0x0070FA 01:B0EA: DD 3C 05  CMP ram_pos_X_hi_enemy,X
C - - - - - 0x0070FD 01:B0ED: 20 EC B1  JSR sub_B1EC
C - - - - - 0x007100 01:B0F0: BD 72 07  LDA ram_0772_obj,X
C - - - - - 0x007103 01:B0F3: 4A        LSR
C - - - - - 0x007104 01:B0F4: A9 21     LDA #$21
C - - - - - 0x007106 01:B0F6: B0 07     BCS bra_B0FF
- - - - - - 0x007108 01:B0F8: A9 10     LDA #$10
- - - - - - 0x00710A 01:B0FA: 9D 3A 07  STA ram_073A_obj_hitbox_index,X
- - - - - - 0x00710D 01:B0FD: A9 22     LDA #$22
bra_B0FF:
C - - - - - 0x00710F 01:B0FF: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x007112 01:B102: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x007115 01:B105: BD F4 06  LDA ram_06F4_obj,X
C - - - - - 0x007118 01:B108: F0 0D     BEQ bra_B117
C - - - - - 0x00711A 01:B10A: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x00711D 01:B10D: D0 AC     BNE bra_B0BB_RTS
C - - - - - 0x00711F 01:B10F: A9 06     LDA #$06
C - - - - - 0x007121 01:B111: 9D 80 07  STA ram_0780_obj,X
C - - - - - 0x007124 01:B114: 4C 27 B2  JMP loc_B227
bra_B117:
C - - - - - 0x007127 01:B117: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x00712A 01:B11A: D0 9F     BNE bra_B0BB_RTS
C - - - - - 0x00712C 01:B11C: A9 08     LDA #$08
C - - - - - 0x00712E 01:B11E: 9D 3A 07  STA ram_073A_obj_hitbox_index,X
C - - - - - 0x007131 01:B121: 20 E8 B1  JSR sub_B1E8
C - - - - - 0x007134 01:B124: A9 50     LDA #$50
C - - - - - 0x007136 01:B126: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x007139 01:B129: A9 02     LDA #$02
C - - - - - 0x00713B 01:B12B: 4C 83 A2  JMP loc_A283_set_obj_state



ofs_038_03_B12E_04:
ofs_038_07_B12E_03:
C - - J - - 0x00713E 01:B12E: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x007141 01:B131: 10 05     BPL bra_B138
C - - - - - 0x007143 01:B133: A9 15     LDA #con_sound_15
C - - - - - 0x007145 01:B135: 20 DE FD  JSR sub_0x01FDEE_play_sound
bra_B138:
C - - - - - 0x007148 01:B138: 20 93 B1  JSR sub_B193
loc_B13B:
loc_0x00714B:
C D 1 - - - 0x00714B 01:B13B: 9D 08 05  STA ram_anim_id_enemy,X
loc_0x00714E:   ; bzk garbage label
C - - - - - 0x00714E 01:B13E: A9 83     LDA #$83
C - - - - - 0x007150 01:B140: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x007153 01:B143: A9 80     LDA #< $FC80
C - - - - - 0x007155 01:B145: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x007158 01:B148: A9 FC     LDA #> $FC80
C - - - - - 0x00715A 01:B14A: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x00715D 01:B14D: A9 60     LDA #< $0060
C - - - - - 0x00715F 01:B14F: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x007162 01:B152: A9 00     LDA #> $0060
C - - - - - 0x007164 01:B154: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x007167 01:B157: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x00716A 01:B15A: C9 10     CMP #$10
C - - - - - 0x00716C 01:B15C: 90 04     BCC bra_B162
C - - - - - 0x00716E 01:B15E: C9 F0     CMP #$F0
C - - - - - 0x007170 01:B160: 90 03     BCC bra_B165
bra_B162:
C - - - - - 0x007172 01:B162: 20 D3 A7  JSR sub_A7D3_clear_spd_X
bra_B165:
C - - - - - 0x007175 01:B165: BD 56 05  LDA ram_attr_spr_enemy,X
C - - - - - 0x007178 01:B168: 0A        ASL
C - - - - - 0x007179 01:B169: 30 03     BMI bra_B16E
C - - - - - 0x00717B 01:B16B: 20 DC A7  JSR sub_A7DC_inverse_spd_X
bra_B16E:
C - - - - - 0x00717E 01:B16E: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x007181 01:B171: A9 10     LDA #$10
C - - - - - 0x007183 01:B173: 4C E0 A2  JMP loc_A2E0



ofs_038_03_B176_05:
ofs_038_07_B176_04:
C - - J - - 0x007186 01:B176: 20 93 B1  JSR sub_B193
loc_B179:
loc_0x007189:
C D 1 - - - 0x007189 01:B179: 9D 08 05  STA ram_anim_id_enemy,X
loc_0x00718C:   ; bzk garbage label
C - - - - - 0x00718C 01:B17C: A9 30     LDA #$30
C - - - - - 0x00718E 01:B17E: 20 CB AA  JSR sub_AACB_add_to_spd_Y
C - - - - - 0x007191 01:B181: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x007194 01:B184: C9 08     CMP #$08
C - - - - - 0x007196 01:B186: 90 08     BCC bra_B190
C - - - - - 0x007198 01:B188: 20 D3 A6  JSR sub_A6D3
C - - - - - 0x00719B 01:B18B: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x00719E 01:B18E: D0 0C     BNE bra_B19C_RTS
bra_B190:
C - - - - - 0x0071A0 01:B190: 4C D7 A2  JMP loc_A2D7_increase_obj_state



sub_B193:
C - - - - - 0x0071A3 01:B193: A9 1C     LDA #$1C
C - - - - - 0x0071A5 01:B195: BC 1E 07  LDY ram_obj_flags,X
C - - - - - 0x0071A8 01:B198: 10 02     BPL bra_B19C_RTS
C - - - - - 0x0071AA 01:B19A: A9 32     LDA #$32
bra_B19C_RTS:
C - - - - - 0x0071AC 01:B19C: 60        RTS



sub_B19D:
C - - - - - 0x0071AD 01:B19D: A9 10     LDA #$10
C - - - - - 0x0071AF 01:B19F: BC CA 06  LDY ram_spd_X_hi_obj,X
C - - - - - 0x0071B2 01:B1A2: 10 02     BPL bra_B1A6_moving_right
; if moving left
C - - - - - 0x0071B4 01:B1A4: A9 F0     LDA #$F0
bra_B1A6_moving_right:
C - - - - - 0x0071B6 01:B1A6: 20 22 A8  JSR sub_A822
C - - - - - 0x0071B9 01:B1A9: D0 05     BNE bra_B1B0
C - - - - - 0x0071BB 01:B1AB: 20 6C AF  JSR sub_AF6C
C - - - - - 0x0071BE 01:B1AE: 18        CLC
C - - - - - 0x0071BF 01:B1AF: 60        RTS
bra_B1B0:
C - - - - - 0x0071C0 01:B1B0: 20 D3 A7  JSR sub_A7D3_clear_spd_X
C - - - - - 0x0071C3 01:B1B3: A5 04     LDA ram_0004
C - - - - - 0x0071C5 01:B1B5: 38        SEC
C - - - - - 0x0071C6 01:B1B6: E9 10     SBC #$10
C - - - - - 0x0071C8 01:B1B8: 85 08     STA ram_0008
C - - - - - 0x0071CA 01:B1BA: 45 04     EOR ram_0004
C - - - - - 0x0071CC 01:B1BC: 0A        ASL
C - - - - - 0x0071CD 01:B1BD: A5 08     LDA ram_0008
C - - - - - 0x0071CF 01:B1BF: 90 02     BCC bra_B1C3
C - - - - - 0x0071D1 01:B1C1: 49 80     EOR #$80
bra_B1C3:
C - - - - - 0x0071D3 01:B1C3: A8        TAY
C - - - - - 0x0071D4 01:B1C4: 20 1B BB  JSR sub_BB1B
C - - - - - 0x0071D7 01:B1C7: 20 D0 BB  JSR sub_BBD0
C - - - - - 0x0071DA 01:B1CA: F0 1A     BEQ bra_B1E6
C - - - - - 0x0071DC 01:B1CC: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0071DF 01:B1CF: 49 01     EOR #$01
C - - - - - 0x0071E1 01:B1D1: 9D 1E 07  STA ram_obj_flags,X
C - - - - - 0x0071E4 01:B1D4: 20 E8 B1  JSR sub_B1E8
C - - - - - 0x0071E7 01:B1D7: 20 6C AF  JSR sub_AF6C
C - - - - - 0x0071EA 01:B1DA: DE 56 07  DEC ram_0756_obj,X
C - - - - - 0x0071ED 01:B1DD: D0 05     BNE bra_B1E4
C - - - - - 0x0071EF 01:B1DF: A9 06     LDA #$06
C - - - - - 0x0071F1 01:B1E1: 20 83 A2  JSR sub_A283_set_obj_state
bra_B1E4:
C - - - - - 0x0071F4 01:B1E4: 18        CLC
C - - - - - 0x0071F5 01:B1E5: 60        RTS
bra_B1E6:
C - - - - - 0x0071F6 01:B1E6: 38        SEC
C - - - - - 0x0071F7 01:B1E7: 60        RTS



sub_B1E8:
C - - - - - 0x0071F8 01:B1E8: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0071FB 01:B1EB: 4A        LSR
sub_B1EC:
C - - - - - 0x0071FC 01:B1EC: 08        PHP
C - - - - - 0x0071FD 01:B1ED: A5 50     LDA ram_area_index
C - - - - - 0x0071FF 01:B1EF: BC 72 07  LDY ram_0772_obj,X
C - - - - - 0x007202 01:B1F2: F0 03     BEQ bra_B1F7
C - - - - - 0x007204 01:B1F4: 18        CLC
C - - - - - 0x007205 01:B1F5: 69 08     ADC #$08
bra_B1F7:
C - - - - - 0x007207 01:B1F7: A8        TAY
C - - - - - 0x007208 01:B1F8: B9 17 B2  LDA tbl_B217,Y
C - - - - - 0x00720B 01:B1FB: 28        PLP
sub_B1FC:
C - - - - - 0x00720C 01:B1FC: B0 02     BCS bra_B200
C - - - - - 0x00720E 01:B1FE: 09 40     ORA #$40
bra_B200:
sub_B200:
C - - - - - 0x007210 01:B200: BC 80 07  LDY ram_0780_obj,X
C - - - - - 0x007213 01:B203: F0 05     BEQ bra_B20A
C - - - - - 0x007215 01:B205: DE 80 07  DEC ram_0780_obj,X
C - - - - - 0x007218 01:B208: 09 04     ORA #$04
bra_B20A:
C - - - - - 0x00721A 01:B20A: 85 00     STA ram_0000
C - - - - - 0x00721C 01:B20C: BD 56 05  LDA ram_attr_spr_enemy,X
C - - - - - 0x00721F 01:B20F: 29 20     AND #$20
C - - - - - 0x007221 01:B211: 05 00     ORA ram_0000
C - - - - - 0x007223 01:B213: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x007226 01:B216: 60        RTS



tbl_B217:
; 00 
- D 1 - - - 0x007227 01:B217: 03        .byte $03   ; 00 area 1
- - - - - - 0x007228 01:B218: 03        .byte $03   ; 01 area 2
- D 1 - - - 0x007229 01:B219: 03        .byte $03   ; 02 area 3
- D 1 - - - 0x00722A 01:B21A: 03        .byte $03   ; 03 area 4
- D 1 - - - 0x00722B 01:B21B: 03        .byte $03   ; 04 area 5
- - - - - - 0x00722C 01:B21C: 03        .byte $03   ; 05 area 6
- D 1 - - - 0x00722D 01:B21D: 01        .byte $01   ; 06 area 7
- D 1 - - - 0x00722E 01:B21E: 03        .byte $03   ; 07 area 8
; 01 
- D 1 - - - 0x00722F 01:B21F: 01        .byte $01   ; 00 area 1
- - - - - - 0x007230 01:B220: 01        .byte $01   ; 01 area 2
- D 1 - - - 0x007231 01:B221: 01        .byte $01   ; 02 area 3
- D 1 - - - 0x007232 01:B222: 01        .byte $01   ; 03 area 4
- - - - - - 0x007233 01:B223: 01        .byte $01   ; 04 area 5
- - - - - - 0x007234 01:B224: 01        .byte $01   ; 05 area 6
- - - - - - 0x007235 01:B225: 01        .byte $01   ; 06 area 7
- - - - - - 0x007236 01:B226: 01        .byte $01   ; 07 area 8



loc_B227:
C D 1 - - - 0x007237 01:B227: A0 02     LDY #con_obj_id_02
C - - - - - 0x007239 01:B229: 20 C8 AB  JSR sub_ABC8
C - - - - - 0x00723C 01:B22C: 90 37     BCC bra_B265_RTS
C - - - - - 0x00723E 01:B22E: BC 72 07  LDY ram_0772_obj,X
C - - - - - 0x007241 01:B231: B9 6B B2  LDA tbl_B26B,Y
C - - - - - 0x007244 01:B234: 18        CLC
C - - - - - 0x007245 01:B235: 7D 22 05  ADC ram_pos_Y_hi_enemy,X
C - - - - - 0x007248 01:B238: 85 08     STA ram_0008
C - - - - - 0x00724A 01:B23A: BD 56 05  LDA ram_attr_spr_enemy,X
C - - - - - 0x00724D 01:B23D: 2A        ROL
C - - - - - 0x00724E 01:B23E: 2A        ROL
C - - - - - 0x00724F 01:B23F: 2A        ROL
C - - - - - 0x007250 01:B240: 29 01     AND #$01
C - - - - - 0x007252 01:B242: A8        TAY
C - - - - - 0x007253 01:B243: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x007256 01:B246: A6 11     LDX ram_0011
C - - - - - 0x007258 01:B248: 18        CLC
C - - - - - 0x007259 01:B249: 79 6A B2  ADC tbl_B26A,Y
C - - - - - 0x00725C 01:B24C: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x00725F 01:B24F: A5 08     LDA ram_0008
C - - - - - 0x007261 01:B251: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x007264 01:B254: 98        TYA
C - - - - - 0x007265 01:B255: 0A        ASL
C - - - - - 0x007266 01:B256: A8        TAY
C - - - - - 0x007267 01:B257: B9 66 B2  LDA tbl_B266_spd_X,Y
C - - - - - 0x00726A 01:B25A: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x00726D 01:B25D: B9 67 B2  LDA tbl_B266_spd_X + $01,Y
C - - - - - 0x007270 01:B260: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x007273 01:B263: A6 10     LDX ram_0010
bra_B265_RTS:
C - - - - - 0x007275 01:B265: 60        RTS



tbl_B266_spd_X:
- D 1 - - - 0x007276 01:B266: 00 02     .word $0200 ; 00 
- D 1 - - - 0x007278 01:B268: 00 FE     .word $FE00 ; 01 


; ???
tbl_B26A:
- D 1 - - - 0x00727A 01:B26A: 08        .byte $08   ; 
tbl_B26B:
- D 1 - - - 0x00727B 01:B26B: F8        .byte $F8   ; 
- D 1 - - - 0x00727C 01:B26C: FC        .byte $FC   ; 
- - - - - - 0x00727D 01:B26D: 06        .byte $06   ; 



_off001_B26E_04_bonus_box:
- D 1 - I - 0x00727E 01:B26E: 78 B2     .word ofs_038_04_B278_01_initialize_object ; 
- D 1 - I - 0x007280 01:B270: A4 B2     .word ofs_038_04_B2A4_02 ; коробка открывается и закрывается
- D 1 - I - 0x007282 01:B272: 03 B3     .word ofs_038_04_B303_03 ; 
- D 1 - I - 0x007284 01:B274: FD A2     .word ofs_038_04_A2FD_04 ; анимация взрыва коробки
- D 1 - I - 0x007286 01:B276: 3D A3     .word ofs_038_04_A33D_05_delete_object_04 ; 



ofs_038_04_B278_01_initialize_object:
C - - J - - 0x007288 01:B278: A9 9D     LDA #$9D
C - - - - - 0x00728A 01:B27A: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x00728D 01:B27D: A9 01     LDA #$01
C - - - - - 0x00728F 01:B27F: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x007292 01:B282: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x007295 01:B285: 0A        ASL
C - - - - - 0x007296 01:B286: 0A        ASL
C - - - - - 0x007297 01:B287: 0A        ASL
C - - - - - 0x007298 01:B288: 0A        ASL
C - - - - - 0x007299 01:B289: A9 04     LDA #$04    ; Y axis
C - - - - - 0x00729B 01:B28B: 90 02     BCC bra_B28F
C - - - - - 0x00729D 01:B28D: A9 14     LDA #$14    ; Y axis
bra_B28F:
C - - - - - 0x00729F 01:B28F: A0 08     LDY #$08    ; X axis
C - - - - - 0x0072A1 01:B291: 20 B9 AA  JSR sub_AAB9_move_enemy_XY
C - - - - - 0x0072A4 01:B294: A9 20     LDA #$20
C - - - - - 0x0072A6 01:B296: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x0072A9 01:B299: A9 01     LDA #$01
C - - - - - 0x0072AB 01:B29B: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x0072AE 01:B29E: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x0072B1 01:B2A1: 4C D7 A2  JMP loc_A2D7_increase_obj_state



ofs_038_04_B2A4_02:
C - - J - - 0x0072B4 01:B2A4: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0072B7 01:B2A7: C9 D0     CMP #$D0
C - - - - - 0x0072B9 01:B2A9: 90 03     BCC bra_B2AE
C - - - - - 0x0072BB 01:B2AB: 4C 75 A2  JMP loc_A275_delete_object_02
bra_B2AE:
C - - - - - 0x0072BE 01:B2AE: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x0072C1 01:B2B1: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0072C4 01:B2B4: D0 48     BNE bra_B2FE_RTS
C - - - - - 0x0072C6 01:B2B6: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x0072C9 01:B2B9: B9 FF B2  LDA tbl_B2FF,Y
C - - - - - 0x0072CC 01:B2BC: 20 9A A8  JSR sub_A89A
C - - - - - 0x0072CF 01:B2BF: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x0072D2 01:B2C2: A9 01     LDA #$01
C - - - - - 0x0072D4 01:B2C4: B0 31     BCS bra_B2F7
C - - - - - 0x0072D6 01:B2C6: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0072D9 01:B2C9: D0 10     BNE bra_B2DB
C - - - - - 0x0072DB 01:B2CB: C8        INY
C - - - - - 0x0072DC 01:B2CC: C0 04     CPY #$04
C - - - - - 0x0072DE 01:B2CE: 90 25     BCC bra_B2F5
C - - - - - 0x0072E0 01:B2D0: 88        DEY
C - - - - - 0x0072E1 01:B2D1: 88        DEY
C - - - - - 0x0072E2 01:B2D2: A9 1D     LDA #$1D
C - - - - - 0x0072E4 01:B2D4: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0072E7 01:B2D7: A9 40     LDA #$40
C - - - - - 0x0072E9 01:B2D9: D0 0C     BNE bra_B2E7    ; jmp
bra_B2DB:
C - - - - - 0x0072EB 01:B2DB: A9 9D     LDA #$9D
C - - - - - 0x0072ED 01:B2DD: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0072F0 01:B2E0: A9 50     LDA #$50
C - - - - - 0x0072F2 01:B2E2: 88        DEY
C - - - - - 0x0072F3 01:B2E3: 10 10     BPL bra_B2F5
C - - - - - 0x0072F5 01:B2E5: C8        INY
C - - - - - 0x0072F6 01:B2E6: C8        INY
bra_B2E7:
C - - - - - 0x0072F7 01:B2E7: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x0072FA 01:B2EA: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0072FD 01:B2ED: 49 01     EOR #$01
C - - - - - 0x0072FF 01:B2EF: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x007302 01:B2F2: 4C FA B2  JMP loc_B2FA
bra_B2F5:
C - - - - - 0x007305 01:B2F5: A9 08     LDA #$08
bra_B2F7:
C - - - - - 0x007307 01:B2F7: 9D E6 06  STA ram_06E6_obj,X
loc_B2FA:
C D 1 - - - 0x00730A 01:B2FA: 98        TYA
C - - - - - 0x00730B 01:B2FB: 9D 10 07  STA ram_0710_obj,X
bra_B2FE_RTS:
C - - - - - 0x00730E 01:B2FE: 60        RTS



tbl_B2FF:
- D 1 - - - 0x00730F 01:B2FF: 0E        .byte $0E   ; 00 
- D 1 - - - 0x007310 01:B300: 0F        .byte $0F   ; 01 
- D 1 - - - 0x007311 01:B301: 11        .byte $11   ; 02 
- D 1 - - - 0x007312 01:B302: 12        .byte $12   ; 03 



ofs_038_04_B303_03:
C - - J - - 0x007313 01:B303: A9 0D     LDA #$0D
C - - - - - 0x007315 01:B305: 20 9A A8  JSR sub_A89A
C - - - - - 0x007318 01:B308: B0 F4     BCS bra_B2FE_RTS
C - - - - - 0x00731A 01:B30A: A0 00     LDY #$00
C - - - - - 0x00731C 01:B30C: 20 BD AB  JSR sub_ABBD
C - - - - - 0x00731F 01:B30F: 4C 9A A2  JMP loc_A29A



_off001_B312_05_grenadier:
- D 1 - I - 0x007322 01:B312: 20 B3     .word ofs_038_05_B320_01_initialize_object ; 
- D 1 - I - 0x007324 01:B314: 38 B3     .word ofs_038_05_B338_02 ; 
- D 1 - I - 0x007326 01:B316: 9E B3     .word ofs_038_05_B39E_03 ; 
- D 1 - I - 0x007328 01:B318: A3 B3     .word ofs_038_05_B3A3_04 ; 
- D 1 - I - 0x00732A 01:B31A: 9A A2     .word ofs_038_05_A29A_05 ; 
- D 1 - I - 0x00732C 01:B31C: FD A2     .word ofs_038_05_A2FD_06 ; 
- D 1 - I - 0x00732E 01:B31E: 3D A3     .word ofs_038_05_A33D_07_delete_object_04 ; 



ofs_038_05_B320_01_initialize_object:
C - - J - - 0x007330 01:B320: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x007333 01:B323: 4A        LSR
C - - - - - 0x007334 01:B324: 4A        LSR
C - - - - - 0x007335 01:B325: 29 03     AND #$03
C - - - - - 0x007337 01:B327: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x00733A 01:B32A: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x00733D 01:B32D: A9 01     LDA #$01
C - - - - - 0x00733F 01:B32F: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x007342 01:B332: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x007345 01:B335: 4C D7 A2  JMP loc_A2D7_increase_obj_state



ofs_038_05_B338_02:
C - - J - - 0x007348 01:B338: 20 0B AB  JSR sub_AB0B_set_target_on_closest_player_X_pos
C - - - - - 0x00734B 01:B33B: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x00734E 01:B33E: D9 4C 05  CMP ram_pos_X_hi_plr,Y
C - - - - - 0x007351 01:B341: A9 01     LDA #$01
C - - - - - 0x007353 01:B343: 20 FC B1  JSR sub_B1FC
C - - - - - 0x007356 01:B346: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x007359 01:B349: 4A        LSR
C - - - - - 0x00735A 01:B34A: A9 27     LDA #$27
C - - - - - 0x00735C 01:B34C: 90 02     BCC bra_B350
C - - - - - 0x00735E 01:B34E: A9 27     LDA #$27
bra_B350:
C - - - - - 0x007360 01:B350: BC E6 06  LDY ram_06E6_obj,X
C - - - - - 0x007363 01:B353: F0 06     BEQ bra_B35B
C - - - - - 0x007365 01:B355: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x007368 01:B358: 18        CLC
C - - - - - 0x007369 01:B359: 69 01     ADC #$01
bra_B35B:
C - - - - - 0x00736B 01:B35B: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x00736E 01:B35E: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x007371 01:B361: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x007374 01:B364: D0 37     BNE bra_B39D_RTS
C - - - - - 0x007376 01:B366: A0 06     LDY #con_obj_id_06
C - - - - - 0x007378 01:B368: 20 C8 AB  JSR sub_ABC8
C - - - - - 0x00737B 01:B36B: 90 1E     BCC bra_B38B
C - - - - - 0x00737D 01:B36D: A9 0C     LDA #$0C
C - - - - - 0x00737F 01:B36F: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x007382 01:B372: A4 11     LDY ram_0011
C - - - - - 0x007384 01:B374: BD 56 05  LDA ram_attr_spr_enemy,X
C - - - - - 0x007387 01:B377: 0A        ASL
C - - - - - 0x007388 01:B378: 29 80     AND #$80
C - - - - - 0x00738A 01:B37A: 49 80     EOR #$80
C - - - - - 0x00738C 01:B37C: 19 1E 07  ORA ram_obj_flags,Y
C - - - - - 0x00738F 01:B37F: 99 1E 07  STA ram_obj_flags,Y
C - - - - - 0x007392 01:B382: B9 22 05  LDA ram_pos_Y_hi_enemy,Y
C - - - - - 0x007395 01:B385: 18        CLC
C - - - - - 0x007396 01:B386: 69 EB     ADC #$EB
C - - - - - 0x007398 01:B388: 99 22 05  STA ram_pos_Y_hi_enemy,Y
bra_B38B:
C - - - - - 0x00739B 01:B38B: A9 18     LDA #$18
C - - - - - 0x00739D 01:B38D: DE 56 07  DEC ram_0756_obj,X
C - - - - - 0x0073A0 01:B390: 10 08     BPL bra_B39A
C - - - - - 0x0073A2 01:B392: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0073A5 01:B395: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x0073A8 01:B398: A9 51     LDA #$51
bra_B39A:
C - - - - - 0x0073AA 01:B39A: 9D F4 06  STA ram_06F4_obj,X
bra_B39D_RTS:
C - - - - - 0x0073AD 01:B39D: 60        RTS



ofs_038_05_B39E_03:
C - - J - - 0x0073AE 01:B39E: A9 27     LDA #$27    ; animation id
C - - - - - 0x0073B0 01:B3A0: 4C 3B B1  JMP loc_B13B



ofs_038_05_B3A3_04:
C - - J - - 0x0073B3 01:B3A3: A9 27     LDA #$27    ; animation id
C - - - - - 0x0073B5 01:B3A5: 4C 79 B1  JMP loc_B179



_off001_B3A8_06_grenade:
- D 1 - I - 0x0073B8 01:B3A8: B2 B3     .word ofs_038_06_B3B2_01_initialize_object ; 
- D 1 - I - 0x0073BA 01:B3AA: FF B3     .word ofs_038_06_B3FF_02 ; 
- D 1 - I - 0x0073BC 01:B3AC: 8C A2     .word ofs_038_06_A28C_03 ; 
- D 1 - I - 0x0073BE 01:B3AE: FD A2     .word ofs_038_06_A2FD_04 ; 
- D 1 - I - 0x0073C0 01:B3B0: 3D A3     .word ofs_038_06_A33D_05_delete_object_04 ; 



ofs_038_06_B3B2_01_initialize_object:
C - - J - - 0x0073C2 01:B3B2: A0 98     LDY #$98
C - - - - - 0x0073C4 01:B3B4: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0073C7 01:B3B7: 29 03     AND #$03
C - - - - - 0x0073C9 01:B3B9: F0 02     BEQ bra_B3BD
C - - - - - 0x0073CB 01:B3BB: A0 99     LDY #$99
bra_B3BD:
C - - - - - 0x0073CD 01:B3BD: 98        TYA
C - - - - - 0x0073CE 01:B3BE: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0073D1 01:B3C1: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0073D4 01:B3C4: 29 03     AND #$03
C - - - - - 0x0073D6 01:B3C6: 0A        ASL
C - - - - - 0x0073D7 01:B3C7: 0A        ASL
C - - - - - 0x0073D8 01:B3C8: A8        TAY
C - - - - - 0x0073D9 01:B3C9: B9 EF B3  LDA tbl_B3EF_speed,Y
C - - - - - 0x0073DC 01:B3CC: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x0073DF 01:B3CF: B9 F0 B3  LDA tbl_B3EF_speed + $01,Y
C - - - - - 0x0073E2 01:B3D2: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x0073E5 01:B3D5: B9 F1 B3  LDA tbl_B3EF_speed + $02,Y
C - - - - - 0x0073E8 01:B3D8: 9D BC 06  STA ram_spd_X_lo_obj,X
C - - - - - 0x0073EB 01:B3DB: B9 F2 B3  LDA tbl_B3EF_speed + $03,Y
C - - - - - 0x0073EE 01:B3DE: 9D CA 06  STA ram_spd_X_hi_obj,X
C - - - - - 0x0073F1 01:B3E1: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0073F4 01:B3E4: 30 03     BMI bra_B3E9
C - - - - - 0x0073F6 01:B3E6: 20 DC A7  JSR sub_A7DC_inverse_spd_X
bra_B3E9:
C - - - - - 0x0073F9 01:B3E9: 20 07 A7  JSR sub_A707
bra_B3EC:
C - - - - - 0x0073FC 01:B3EC: 4C D7 A2  JMP loc_A2D7_increase_obj_state



tbl_B3EF_speed:
; 00 
- - - - - - 0x0073FF 01:B3EF: 00 FC     .word $FC00 ; Y
- - - - - - 0x007401 01:B3F1: 00 FF     .word $FF00 ; X
; 01 
- D 1 - - - 0x007403 01:B3F3: 00 FF     .word $FF00 ; Y
- D 1 - - - 0x007405 01:B3F5: C0 FE     .word $FEC0 ; X
; 02 
- D 1 - - - 0x007407 01:B3F7: 00 FD     .word $FD00 ; Y
- D 1 - - - 0x007409 01:B3F9: C0 FF     .word $FFC0 ; X
; 03 
- - - - - - 0x00740B 01:B3FB: 00 FF     .word $FF00 ; Y
- - - - - - 0x00740D 01:B3FD: C0 FF     .word $FFC0 ; X



ofs_038_06_B3FF_02:
C - - J - - 0x00740F 01:B3FF: A0 03     LDY #con_0x006C32_03
C - - - - - 0x007411 01:B401: 20 FD AB  JSR sub_ABFD
C - - - - - 0x007414 01:B404: 20 07 A7  JSR sub_A707
C - - - - - 0x007417 01:B407: BD A0 06  LDA ram_spd_Y_lo_obj,X
C - - - - - 0x00741A 01:B40A: 18        CLC
C - - - - - 0x00741B 01:B40B: 69 14     ADC #< $0014
C - - - - - 0x00741D 01:B40D: 9D A0 06  STA ram_spd_Y_lo_obj,X
C - - - - - 0x007420 01:B410: BD AE 06  LDA ram_spd_Y_hi_obj,X
C - - - - - 0x007423 01:B413: 69 00     ADC #> $0014
C - - - - - 0x007425 01:B415: 9D AE 06  STA ram_spd_Y_hi_obj,X
C - - - - - 0x007428 01:B418: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x00742B 01:B41B: 29 03     AND #$03
C - - - - - 0x00742D 01:B41D: A8        TAY
C - - - - - 0x00742E 01:B41E: B9 38 B4  LDA tbl_B438,Y
C - - - - - 0x007431 01:B421: BC AE 06  LDY ram_spd_Y_hi_obj,X
C - - - - - 0x007434 01:B424: 30 07     BMI bra_B42D_moving_up
; if moving down
C - - - - - 0x007436 01:B426: A9 98     LDA #$98
C - - - - - 0x007438 01:B428: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x00743B 01:B42B: A9 01     LDA #$01
bra_B42D_moving_up:
C - - - - - 0x00743D 01:B42D: 9D 56 05  STA ram_attr_spr_enemy,X
C - - - - - 0x007440 01:B430: A9 00     LDA #$00
C - - - - - 0x007442 01:B432: 20 00 A8  JSR sub_A800
C - - - - - 0x007445 01:B435: D0 B5     BNE bra_B3EC
C - - - - - 0x007447 01:B437: 60        RTS



tbl_B438:
- - - - - - 0x007448 01:B438: 01        .byte $01   ; 00 
- D 1 - - - 0x007449 01:B439: 01        .byte $01   ; 01 
- D 1 - - - 0x00744A 01:B43A: 21        .byte $21   ; 02 
- - - - - - 0x00744B 01:B43B: 01        .byte $01   ; 03 



_off001_B43C_07_rifleman_trench:
- D 1 - I - 0x00744C 01:B43C: 4A B4     .word ofs_038_07_B44A_01_initialize_object ; 
- D 1 - I - 0x00744E 01:B43E: 6B B4     .word ofs_038_07_B46B_02 ; 
- D 1 - I - 0x007450 01:B440: 2E B1     .word ofs_038_07_B12E_03 ; 
- D 1 - I - 0x007452 01:B442: 76 B1     .word ofs_038_07_B176_04 ; 
- D 1 - I - 0x007454 01:B444: 9A A2     .word ofs_038_07_A29A_05 ; 
- D 1 - I - 0x007456 01:B446: FD A2     .word ofs_038_07_A2FD_06 ; 
- D 1 - I - 0x007458 01:B448: 3D A3     .word ofs_038_07_A33D_07_delete_object_04 ; 



ofs_038_07_B44A_01_initialize_object:
; red dude lying on the ground with a gun, area 1 and 3
C - - J - - 0x00745A 01:B44A: A9 05     LDA #$05
C - - - - - 0x00745C 01:B44C: A0 06     LDY #$06
C - - - - - 0x00745E 01:B44E: 20 9B AB  JSR sub_AB9B_set_dynamic_hp_to_obj
C - - - - - 0x007461 01:B451: A9 01     LDA #$01
C - - - - - 0x007463 01:B453: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x007466 01:B456: A9 26     LDA #$26
C - - - - - 0x007468 01:B458: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x00746B 01:B45B: A9 01     LDA #$01
C - - - - - 0x00746D 01:B45D: 20 FC B1  JSR sub_B1FC
C - - - - - 0x007470 01:B460: A9 67     LDA #$67
C - - - - - 0x007472 01:B462: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x007475 01:B465: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x007478 01:B468: 4C D7 A2  JMP loc_A2D7_increase_obj_state



ofs_038_07_B46B_02:
C - - J - - 0x00747B 01:B46B: A9 41     LDA #$41
C - - - - - 0x00747D 01:B46D: 20 00 B2  JSR sub_B200
C - - - - - 0x007480 01:B470: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x007483 01:B473: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x007486 01:B476: D0 20     BNE bra_B498_RTS
C - - - - - 0x007488 01:B478: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x00748B 01:B47B: C9 40     CMP #$40
C - - - - - 0x00748D 01:B47D: 90 19     BCC bra_B498_RTS
C - - - - - 0x00748F 01:B47F: A9 06     LDA #$06
C - - - - - 0x007491 01:B481: 9D 80 07  STA ram_0780_obj,X
C - - - - - 0x007494 01:B484: 20 99 B4  JSR sub_B499
C - - - - - 0x007497 01:B487: A9 0A     LDA #$0A
C - - - - - 0x007499 01:B489: DE 56 07  DEC ram_0756_obj,X
C - - - - - 0x00749C 01:B48C: 10 07     BPL bra_B495
C - - - - - 0x00749E 01:B48E: A9 01     LDA #$01
C - - - - - 0x0074A0 01:B490: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x0074A3 01:B493: A9 80     LDA #$80
bra_B495:
C - - - - - 0x0074A5 01:B495: 9D E6 06  STA ram_06E6_obj,X
bra_B498_RTS:
C - - - - - 0x0074A8 01:B498: 60        RTS



sub_B499:
C - - - - - 0x0074A9 01:B499: A0 02     LDY #con_obj_id_02
C - - - - - 0x0074AB 01:B49B: 20 C8 AB  JSR sub_ABC8
C - - - - - 0x0074AE 01:B49E: 90 1D     BCC bra_B4BD_RTS
C - - - - - 0x0074B0 01:B4A0: A4 11     LDY ram_0011
C - - - - - 0x0074B2 01:B4A2: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0074B5 01:B4A5: 69 03     ADC #$03
C - - - - - 0x0074B7 01:B4A7: 99 22 05  STA ram_pos_Y_hi_enemy,Y
C - - - - - 0x0074BA 01:B4AA: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0074BD 01:B4AD: 38        SEC
C - - - - - 0x0074BE 01:B4AE: E9 10     SBC #$10
C - - - - - 0x0074C0 01:B4B0: 99 3C 05  STA ram_pos_X_hi_enemy,Y
C - - - - - 0x0074C3 01:B4B3: A9 40     LDA #< $FE40
C - - - - - 0x0074C5 01:B4B5: 99 BC 06  STA ram_spd_X_lo_obj,Y
C - - - - - 0x0074C8 01:B4B8: A9 FE     LDA #> $FE40
C - - - - - 0x0074CA 01:B4BA: 99 CA 06  STA ram_spd_X_hi_obj,Y
bra_B4BD_RTS:
C - - - - - 0x0074CD 01:B4BD: 60        RTS



_off001_B4BE_09_rifleman_standing_1:
- D 1 - I - 0x0074CE 01:B4BE: CC B4     .word ofs_038_09_B4CC_01_initialize_object ; 
- D 1 - I - 0x0074D0 01:B4C0: E2 B4     .word ofs_038_09_B4E2_02 ; в процессе стрельбы на месте, стреляет периодически
- D 1 - I - 0x0074D2 01:B4C2: 43 B5     .word ofs_038_09_B543_03 ; 
- D 1 - I - 0x0074D4 01:B4C4: 48 B5     .word ofs_038_09_B548_04 ; 
- D 1 - I - 0x0074D6 01:B4C6: 9A A2     .word ofs_038_09_A29A_05 ; 
- D 1 - I - 0x0074D8 01:B4C8: FD A2     .word ofs_038_09_A2FD_06 ; 
- D 1 - I - 0x0074DA 01:B4CA: 3D A3     .word ofs_038_09_A33D_07_delete_object_04 ; 



ofs_038_09_B4CC_01_initialize_object:
C - - J - - 0x0074DC 01:B4CC: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0074DF 01:B4CF: 29 03     AND #$03
C - - - - - 0x0074E1 01:B4D1: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x0074E4 01:B4D4: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x0074E7 01:B4D7: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x0074EA 01:B4DA: A9 01     LDA #$01
C - - - - - 0x0074EC 01:B4DC: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x0074EF 01:B4DF: 4C E0 A2  JMP loc_A2E0



ofs_038_09_B4E2_02:
C - - J - - 0x0074F2 01:B4E2: 20 0B AB  JSR sub_AB0B_set_target_on_closest_player_X_pos
C - - - - - 0x0074F5 01:B4E5: B9 4C 05  LDA ram_pos_X_hi_plr,Y
C - - - - - 0x0074F8 01:B4E8: DD 3C 05  CMP ram_pos_X_hi_enemy,X
C - - - - - 0x0074FB 01:B4EB: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0074FE 01:B4EE: 29 20     AND #$20
C - - - - - 0x007500 01:B4F0: 09 01     ORA #$01
C - - - - - 0x007502 01:B4F2: 20 FC B1  JSR sub_B1FC
C - - - - - 0x007505 01:B4F5: A4 0A     LDY ram_000A
C - - - - - 0x007507 01:B4F7: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x00750A 01:B4FA: 38        SEC
C - - - - - 0x00750B 01:B4FB: F9 32 05  SBC ram_pos_Y_hi_plr,Y
C - - - - - 0x00750E 01:B4FE: 08        PHP
C - - - - - 0x00750F 01:B4FF: B0 04     BCS bra_B505
C - - - - - 0x007511 01:B501: 49 FF     EOR #$FF
C - - - - - 0x007513 01:B503: 69 01     ADC #$01
bra_B505:
C - - - - - 0x007515 01:B505: C9 10     CMP #$10
C - - - - - 0x007517 01:B507: A9 01     LDA #$01
C - - - - - 0x007519 01:B509: 90 08     BCC bra_B513
C - - - - - 0x00751B 01:B50B: 28        PLP
C - - - - - 0x00751C 01:B50C: A9 00     LDA #$00
C - - - - - 0x00751E 01:B50E: B0 02     BCS bra_B512
C - - - - - 0x007520 01:B510: A9 02     LDA #$02
bra_B512:
C - - - - - 0x007522 01:B512: 08        PHP
bra_B513:
C - - - - - 0x007523 01:B513: 28        PLP
C - - - - - 0x007524 01:B514: 9D 10 07  STA ram_0710_obj,X
C - - - - - 0x007527 01:B517: 18        CLC
C - - - - - 0x007528 01:B518: 69 23     ADC #$23
C - - - - - 0x00752A 01:B51A: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x00752D 01:B51D: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x007530 01:B520: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x007533 01:B523: D0 1D     BNE bra_B542_RTS
C - - - - - 0x007535 01:B525: 20 AE AA  JSR sub_AAAE
C - - - - - 0x007538 01:B528: A0 03     LDY #$03
C - - - - - 0x00753A 01:B52A: 20 27 F3  JSR sub_0x01F337
C - - - - - 0x00753D 01:B52D: 20 4D B5  JSR sub_B54D
C - - - - - 0x007540 01:B530: A9 0C     LDA #$0C
C - - - - - 0x007542 01:B532: DE 72 07  DEC ram_0772_obj,X
C - - - - - 0x007545 01:B535: D0 08     BNE bra_B53F
C - - - - - 0x007547 01:B537: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x00754A 01:B53A: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x00754D 01:B53D: A9 60     LDA #$60
bra_B53F:
C - - - - - 0x00754F 01:B53F: 9D F4 06  STA ram_06F4_obj,X
bra_B542_RTS:
C - - - - - 0x007552 01:B542: 60        RTS



ofs_038_09_B543_03:
C - - J - - 0x007553 01:B543: A9 23     LDA #$23    ; animation id
C - - - - - 0x007555 01:B545: 4C 3B B1  JMP loc_B13B



ofs_038_09_B548_04:
C - - J - - 0x007558 01:B548: A9 23     LDA #$23    ; animation id
C - - - - - 0x00755A 01:B54A: 4C 79 B1  JMP loc_B179



sub_B54D:
C - - - - - 0x00755D 01:B54D: D0 2A     BNE bra_B579_RTS
C - - - - - 0x00755F 01:B54F: A9 06     LDA #$06
C - - - - - 0x007561 01:B551: 9D 80 07  STA ram_0780_obj,X
C - - - - - 0x007564 01:B554: BD 56 05  LDA ram_attr_spr_enemy,X
C - - - - - 0x007567 01:B557: 0A        ASL
C - - - - - 0x007568 01:B558: 0A        ASL
C - - - - - 0x007569 01:B559: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x00756C 01:B55C: 90 02     BCC bra_B560
C - - - - - 0x00756E 01:B55E: 69 02     ADC #$02
bra_B560:
C - - - - - 0x007570 01:B560: A8        TAY
C - - - - - 0x007571 01:B561: A6 11     LDX ram_0011
C - - - - - 0x007573 01:B563: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x007576 01:B566: 18        CLC
C - - - - - 0x007577 01:B567: 79 7A B5  ADC tbl_B57A_pos_Y,Y
C - - - - - 0x00757A 01:B56A: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x00757D 01:B56D: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x007580 01:B570: 18        CLC
C - - - - - 0x007581 01:B571: 79 80 B5  ADC tbl_B580_pos_X,Y
C - - - - - 0x007584 01:B574: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x007587 01:B577: A6 10     LDX ram_0010
bra_B579_RTS:
C - - - - - 0x007589 01:B579: 60        RTS



tbl_B57A_pos_Y:
- D 1 - - - 0x00758A 01:B57A: F0        .byte $F0   ; 
- D 1 - - - 0x00758B 01:B57B: FB        .byte $FB   ; 
- D 1 - - - 0x00758C 01:B57C: 00        .byte $00   ; 
- D 1 - - - 0x00758D 01:B57D: F0        .byte $F0   ; 
- D 1 - - - 0x00758E 01:B57E: FB        .byte $FB   ; 
- D 1 - - - 0x00758F 01:B57F: 00        .byte $00   ; 



tbl_B580_pos_X:
- D 1 - - - 0x007590 01:B580: 06        .byte $06   ; 
- D 1 - - - 0x007591 01:B581: 07        .byte $07   ; 
- D 1 - - - 0x007592 01:B582: 05        .byte $05   ; 
- D 1 - - - 0x007593 01:B583: FA        .byte $FA   ; 
- D 1 - - - 0x007594 01:B584: F9        .byte $F9   ; 
- D 1 - - - 0x007595 01:B585: FB        .byte $FB   ; 



_off001_B586_0A_cannon_rotating:
- D 1 - I - 0x007596 01:B586: 96 B5     .word ofs_038_0A_B596_01_initialize_object ; 
- D 1 - I - 0x007598 01:B588: BD B5     .word ofs_038_0A_B5BD_02 ; 
- D 1 - I - 0x00759A 01:B58A: CC B5     .word ofs_038_0A_B5CC_03 ; 
- D 1 - I - 0x00759C 01:B58C: 07 B6     .word ofs_038_0A_B607_04 ; 
- D 1 - I - 0x00759E 01:B58E: 3A B6     .word ofs_038_0A_B63A_05 ; 
- D 1 - I - 0x0075A0 01:B590: 52 B6     .word ofs_038_0A_B652_06 ; 
- D 1 - I - 0x0075A2 01:B592: FD A2     .word ofs_038_0A_A2FD_07 ; 
- D 1 - I - 0x0075A4 01:B594: 3D A3     .word ofs_038_0A_A33D_08_delete_object_04 ; 



ofs_038_0A_B596_01_initialize_object:
C - - J - - 0x0075A6 01:B596: A9 01     LDA #$01
C - - - - - 0x0075A8 01:B598: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0075AB 01:B59B: A9 07     LDA #$07
C - - - - - 0x0075AD 01:B59D: 20 95 AB  JSR sub_AB95_set_dynamic_hp_to_enemy
C - - - - - 0x0075B0 01:B5A0: A9 04     LDA #$04    ; Y axis
C - - - - - 0x0075B2 01:B5A2: A0 08     LDY #$08    ; X axis
C - - - - - 0x0075B4 01:B5A4: 20 B9 AA  JSR sub_AAB9_move_enemy_XY
C - - - - - 0x0075B7 01:B5A7: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0075BA 01:B5AA: 29 03     AND #$03
C - - - - - 0x0075BC 01:B5AC: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x0075BF 01:B5AF: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x0075C2 01:B5B2: A9 03     LDA #$03
C - - - - - 0x0075C4 01:B5B4: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x0075C7 01:B5B7: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x0075CA 01:B5BA: 4C D7 A2  JMP loc_A2D7_increase_obj_state



ofs_038_0A_B5BD_02:
C - - J - - 0x0075CD 01:B5BD: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x0075D0 01:B5C0: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0075D3 01:B5C3: C9 18     CMP #$18
C - - - - - 0x0075D5 01:B5C5: 90 3F     BCC bra_B606_RTS
C - - - - - 0x0075D7 01:B5C7: A9 08     LDA #$08
C - - - - - 0x0075D9 01:B5C9: 4C E0 A2  JMP loc_A2E0



ofs_038_0A_B5CC_03:
C - - J - - 0x0075DC 01:B5CC: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x0075DF 01:B5CF: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0075E2 01:B5D2: 29 08     AND #$08
C - - - - - 0x0075E4 01:B5D4: F0 1E     BEQ bra_B5F4
C - - - - - 0x0075E6 01:B5D6: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0075E9 01:B5D9: D0 2B     BNE bra_B606_RTS
C - - - - - 0x0075EB 01:B5DB: BC 10 07  LDY ram_0710_obj,X
C - - - - - 0x0075EE 01:B5DE: B9 D1 B6  LDA tbl_B6D1,Y
C - - - - - 0x0075F1 01:B5E1: 20 9A A8  JSR sub_A89A
C - - - - - 0x0075F4 01:B5E4: A9 01     LDA #$01
C - - - - - 0x0075F6 01:B5E6: B0 1B     BCS bra_B603
C - - - - - 0x0075F8 01:B5E8: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x0075FB 01:B5EB: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x0075FE 01:B5EE: C9 03     CMP #$03
C - - - - - 0x007600 01:B5F0: A9 0C     LDA #$0C
C - - - - - 0x007602 01:B5F2: 90 0F     BCC bra_B603
bra_B5F4:
C - - - - - 0x007604 01:B5F4: A9 01     LDA #$01
C - - - - - 0x007606 01:B5F6: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x007609 01:B5F9: A9 04     LDA #$04
C - - - - - 0x00760B 01:B5FB: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x00760E 01:B5FE: A9 20     LDA #$20
C - - - - - 0x007610 01:B600: 4C E0 A2  JMP loc_A2E0
bra_B603:
C - - - - - 0x007613 01:B603: 9D E6 06  STA ram_06E6_obj,X
bra_B606_RTS:
C - - - - - 0x007616 01:B606: 60        RTS



ofs_038_0A_B607_04:
C - - J - - 0x007617 01:B607: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x00761A 01:B60A: BC 22 05  LDY ram_pos_Y_hi_enemy,X
C - - - - - 0x00761D 01:B60D: C0 18     CPY #$18
C - - - - - 0x00761F 01:B60F: 90 F5     BCC bra_B606_RTS
C - - - - - 0x007621 01:B611: C0 D8     CPY #$D8
C - - - - - 0x007623 01:B613: B0 22     BCS bra_B637
C - - - - - 0x007625 01:B615: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x007628 01:B618: 29 10     AND #$10
C - - - - - 0x00762A 01:B61A: F0 04     BEQ bra_B620
C - - - - - 0x00762C 01:B61C: C0 A0     CPY #$A0
C - - - - - 0x00762E 01:B61E: B0 17     BCS bra_B637
bra_B620:
C - - - - - 0x007630 01:B620: 20 0B AB  JSR sub_AB0B_set_target_on_closest_player_X_pos
C - - - - - 0x007633 01:B623: 84 12     STY ram_0012
C - - - - - 0x007635 01:B625: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x007638 01:B628: D0 35     BNE bra_B65F
C - - - - - 0x00763A 01:B62A: A9 14     LDA #$14
C - - - - - 0x00763C 01:B62C: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x00763F 01:B62F: 20 AB F4  JSR sub_0x01F4BB
C - - - - - 0x007642 01:B632: B0 33     BCS bra_B667
C - - - - - 0x007644 01:B634: 4C D7 A2  JMP loc_A2D7_increase_obj_state
bra_B637:
C - - - - - 0x007647 01:B637: 4C 75 A2  JMP loc_A275_delete_object_02



ofs_038_0A_B63A_05:
C - - J - - 0x00764A 01:B63A: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x00764D 01:B63D: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x007650 01:B640: C9 18     CMP #$18
C - - - - - 0x007652 01:B642: 90 C2     BCC bra_B606_RTS
C - - - - - 0x007654 01:B644: C9 C0     CMP #$C0
C - - - - - 0x007656 01:B646: B0 BE     BCS bra_B606_RTS
C - - - - - 0x007658 01:B648: 20 C8 B6  JSR sub_B6C8
C - - - - - 0x00765B 01:B64B: B0 44     BCS bra_B691_RTS
C - - - - - 0x00765D 01:B64D: A9 04     LDA #$04
C - - - - - 0x00765F 01:B64F: 4C 83 A2  JMP loc_A283_set_obj_state



ofs_038_0A_B652_06:
C - - J - - 0x007662 01:B652: A0 0C     LDY #$0C
C - - - - - 0x007664 01:B654: 20 CB B6  JSR sub_B6CB
C - - - - - 0x007667 01:B657: B0 03     BCS bra_B65C
C - - - - - 0x007669 01:B659: 4C 9A A2  JMP loc_A29A
bra_B65C:
C - - - - - 0x00766C 01:B65C: 4C B7 A6  JMP loc_A6B7_delete_object_03
bra_B65F:
C - - - - - 0x00766F 01:B65F: 20 AE AA  JSR sub_AAAE
C - - - - - 0x007672 01:B662: 20 EC F4  JSR sub_0x01F4FC
C - - - - - 0x007675 01:B665: 10 2A     BPL bra_B691_RTS
bra_B667:
C - - - - - 0x007677 01:B667: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x00767A 01:B66A: D0 25     BNE bra_B691_RTS
C - - - - - 0x00767C 01:B66C: A4 12     LDY ram_0012
C - - - - - 0x00767E 01:B66E: 84 0A     STY ram_000A
C - - - - - 0x007680 01:B670: 20 AE AA  JSR sub_AAAE
C - - - - - 0x007683 01:B673: A0 02     LDY #$02
C - - - - - 0x007685 01:B675: 20 27 F3  JSR sub_0x01F337
C - - - - - 0x007688 01:B678: 20 92 B6  JSR sub_B692
C - - - - - 0x00768B 01:B67B: A9 10     LDA #$10
C - - - - - 0x00768D 01:B67D: DE 72 07  DEC ram_0772_obj,X
C - - - - - 0x007690 01:B680: D0 0C     BNE bra_B68E
C - - - - - 0x007692 01:B682: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x007695 01:B685: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x007698 01:B688: A5 23     LDA ram_random
C - - - - - 0x00769A 01:B68A: 29 0F     AND #$0F
C - - - - - 0x00769C 01:B68C: 69 47     ADC #$47
bra_B68E:
C - - - - - 0x00769E 01:B68E: 9D F4 06  STA ram_06F4_obj,X
bra_B691_RTS:
C - - - - - 0x0076A1 01:B691: 60        RTS



sub_B692:
C - - - - - 0x0076A2 01:B692: D0 1B     BNE bra_B6AF_RTS
C - - - - - 0x0076A4 01:B694: BC 48 07  LDY ram_0748_obj,X
C - - - - - 0x0076A7 01:B697: A6 11     LDX ram_0011
C - - - - - 0x0076A9 01:B699: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0076AC 01:B69C: 18        CLC
C - - - - - 0x0076AD 01:B69D: 79 B0 B6  ADC tbl_B6B0_pos_Y,Y
C - - - - - 0x0076B0 01:B6A0: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x0076B3 01:B6A3: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0076B6 01:B6A6: 18        CLC
C - - - - - 0x0076B7 01:B6A7: 79 BC B6  ADC tbl_B6BC_pos_X,Y
C - - - - - 0x0076BA 01:B6AA: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0076BD 01:B6AD: A6 10     LDX ram_0010
bra_B6AF_RTS:
C - - - - - 0x0076BF 01:B6AF: 60        RTS



tbl_B6B0_pos_Y:
- D 1 - - - 0x0076C0 01:B6B0: 00        .byte $00   ; 00 
- D 1 - - - 0x0076C1 01:B6B1: 07        .byte $07   ; 01 
- D 1 - - - 0x0076C2 01:B6B2: 0E        .byte $0E   ; 02 
- D 1 - - - 0x0076C3 01:B6B3: 10        .byte $10   ; 03 
- D 1 - - - 0x0076C4 01:B6B4: 0E        .byte $0E   ; 04 
- D 1 - - - 0x0076C5 01:B6B5: 07        .byte $07   ; 05 
- D 1 - - - 0x0076C6 01:B6B6: 00        .byte $00   ; 06 
- D 1 - - - 0x0076C7 01:B6B7: F9        .byte $F9   ; 07 
- - - - - - 0x0076C8 01:B6B8: F2        .byte $F2   ; 08 
- D 1 - - - 0x0076C9 01:B6B9: F0        .byte $F0   ; 09 
- D 1 - - - 0x0076CA 01:B6BA: F2        .byte $F2   ; 0A 
- D 1 - - - 0x0076CB 01:B6BB: F9        .byte $F9   ; 0B 



tbl_B6BC_pos_X:
- D 1 - - - 0x0076CC 01:B6BC: 10        .byte $10   ; 00 
- D 1 - - - 0x0076CD 01:B6BD: 0E        .byte $0E   ; 01 
- D 1 - - - 0x0076CE 01:B6BE: 07        .byte $07   ; 02 
- D 1 - - - 0x0076CF 01:B6BF: 00        .byte $00   ; 03 
- D 1 - - - 0x0076D0 01:B6C0: F9        .byte $F9   ; 04 
- D 1 - - - 0x0076D1 01:B6C1: F2        .byte $F2   ; 05 
- D 1 - - - 0x0076D2 01:B6C2: F0        .byte $F0   ; 06 
- D 1 - - - 0x0076D3 01:B6C3: F2        .byte $F2   ; 07 
- - - - - - 0x0076D4 01:B6C4: F9        .byte $F9   ; 08 
- D 1 - - - 0x0076D5 01:B6C5: 00        .byte $00   ; 09 
- D 1 - - - 0x0076D6 01:B6C6: 07        .byte $07   ; 0A 
- D 1 - - - 0x0076D7 01:B6C7: 0E        .byte $0E   ; 0B 



sub_B6C8:
C - - - - - 0x0076D8 01:B6C8: BC 48 07  LDY ram_0748_obj,X
sub_B6CB:
C - - - - - 0x0076DB 01:B6CB: B9 D4 B6  LDA tbl_B6D4,Y
C - - - - - 0x0076DE 01:B6CE: 4C 9A A8  JMP loc_A89A



tbl_B6D1:
- D 1 - - - 0x0076E1 01:B6D1: 0F        .byte $0F   ; 00 
- D 1 - - - 0x0076E2 01:B6D2: 10        .byte $10   ; 01 
- D 1 - - - 0x0076E3 01:B6D3: 01        .byte $01   ; 02 



tbl_B6D4:
- D 1 - - - 0x0076E4 01:B6D4: 0A        .byte $0A   ; 00 
- D 1 - - - 0x0076E5 01:B6D5: 0B        .byte $0B   ; 01 
- D 1 - - - 0x0076E6 01:B6D6: 0C        .byte $0C   ; 02 
- D 1 - - - 0x0076E7 01:B6D7: 01        .byte $01   ; 03 
- D 1 - - - 0x0076E8 01:B6D8: 02        .byte $02   ; 04 
- D 1 - - - 0x0076E9 01:B6D9: 03        .byte $03   ; 05 
- D 1 - - - 0x0076EA 01:B6DA: 04        .byte $04   ; 06 
- D 1 - - - 0x0076EB 01:B6DB: 05        .byte $05   ; 07 
- D 1 - - - 0x0076EC 01:B6DC: 06        .byte $06   ; 08 
- D 1 - - - 0x0076ED 01:B6DD: 07        .byte $07   ; 09 
- D 1 - - - 0x0076EE 01:B6DE: 08        .byte $08   ; 0A 
- D 1 - - - 0x0076EF 01:B6DF: 09        .byte $09   ; 0B 
- D 1 - - - 0x0076F0 01:B6E0: 0D        .byte $0D   ; 0C 



_off001_B6E1_0B_cannon_hidden_5_1:
- D 1 - I - 0x0076F1 01:B6E1: F1 B6     .word ofs_038_0B_B6F1_01 ; 
- D 1 - I - 0x0076F3 01:B6E3: 1D B7     .word ofs_038_0B_B71D_02 ; 
- D 1 - I - 0x0076F5 01:B6E5: 50 B7     .word ofs_038_0B_B750_03 ; 
- D 1 - I - 0x0076F7 01:B6E7: 97 B7     .word ofs_038_0B_B797_04 ; 
- D 1 - I - 0x0076F9 01:B6E9: F2 B7     .word ofs_038_0B_B7F2_05 ; 
- D 1 - I - 0x0076FB 01:B6EB: 10 B8     .word ofs_038_0B_B810_06 ; 
- D 1 - I - 0x0076FD 01:B6ED: FD A2     .word ofs_038_0B_A2FD_07 ; 
- D 1 - I - 0x0076FF 01:B6EF: 3D A3     .word ofs_038_0B_A33D_08_delete_object_04 ; 



ofs_038_0B_B6F1_01:
C - - J - - 0x007701 01:B6F1: A9 08     LDA #$08
C - - - - - 0x007703 01:B6F3: 20 95 AB  JSR sub_AB95_set_dynamic_hp_to_enemy
C - - - - - 0x007706 01:B6F6: A9 81     LDA #$81
C - - - - - 0x007708 01:B6F8: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x00770B 01:B6FB: A9 04     LDA #$04    ; Y axis
C - - - - - 0x00770D 01:B6FD: A0 08     LDY #$08    ; X axis
C - - - - - 0x00770F 01:B6FF: 20 B9 AA  JSR sub_AAB9_move_enemy_XY
C - - - - - 0x007712 01:B702: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x007715 01:B705: 4A        LSR
C - - - - - 0x007716 01:B706: 29 03     AND #$03
C - - - - - 0x007718 01:B708: 9D 64 07  STA ram_0764_obj,X
C - - - - - 0x00771B 01:B70B: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x00771E 01:B70E: A9 00     LDA #$00
C - - - - - 0x007720 01:B710: 90 02     BCC bra_B714
C - - - - - 0x007722 01:B712: A9 06     LDA #$06
bra_B714:
C - - - - - 0x007724 01:B714: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x007727 01:B717: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x00772A 01:B71A: 4C D7 A2  JMP loc_A2D7_increase_obj_state



ofs_038_0B_B71D_02:
C - - J - - 0x00772D 01:B71D: A9 01     LDA #$01
C - - - - - 0x00772F 01:B71F: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x007732 01:B722: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x007735 01:B725: 20 DB AA  JSR sub_AADB
C - - - - - 0x007738 01:B728: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x00773B 01:B72B: 38        SEC
C - - - - - 0x00773C 01:B72C: F9 4C 05  SBC ram_pos_X_hi_plr,Y
C - - - - - 0x00773F 01:B72F: B0 04     BCS bra_B735
C - - - - - 0x007741 01:B731: 49 FF     EOR #$FF
C - - - - - 0x007743 01:B733: 69 01     ADC #$01
bra_B735:
C - - - - - 0x007745 01:B735: C9 60     CMP #$60
C - - - - - 0x007747 01:B737: B0 16     BCS bra_B74F_RTS
C - - - - - 0x007749 01:B739: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x00774C 01:B73C: 38        SEC
C - - - - - 0x00774D 01:B73D: F9 32 05  SBC ram_pos_Y_hi_plr,Y
C - - - - - 0x007750 01:B740: B0 04     BCS bra_B746
C - - - - - 0x007752 01:B742: 49 FF     EOR #$FF
C - - - - - 0x007754 01:B744: 69 01     ADC #$01
bra_B746:
C - - - - - 0x007756 01:B746: C9 28     CMP #$28
C - - - - - 0x007758 01:B748: B0 05     BCS bra_B74F_RTS
C - - - - - 0x00775A 01:B74A: A9 01     LDA #$01
C - - - - - 0x00775C 01:B74C: 4C E0 A2  JMP loc_A2E0
bra_B74F_RTS:
C - - - - - 0x00775F 01:B74F: 60        RTS



ofs_038_0B_B750_03:
C - - J - - 0x007760 01:B750: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x007763 01:B753: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x007766 01:B756: D0 F7     BNE bra_B74F_RTS
C - - - - - 0x007768 01:B758: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x00776B 01:B75B: 4A        LSR
C - - - - - 0x00776C 01:B75C: A9 00     LDA #$00
C - - - - - 0x00776E 01:B75E: A0 4D     LDY #$4D
C - - - - - 0x007770 01:B760: 90 04     BCC bra_B766
; C = 1
C - - - - - 0x007772 01:B762: A9 02     LDA #$02
C - - - - - 0x007774 01:B764: A0 44     LDY #$44
bra_B766:
C - - - - - 0x007776 01:B766: 84 0C     STY ram_000C
C - - - - - 0x007778 01:B768: 7D 10 07  ADC ram_0710_obj,X
C - - - - - 0x00777B 01:B76B: A8        TAY
C - - - - - 0x00777C 01:B76C: B9 5A B8  LDA tbl_B85A,Y
C - - - - - 0x00777F 01:B76F: A0 10     LDY #$10
C - - - - - 0x007781 01:B771: 20 A8 A8  JSR sub_A8A8
C - - - - - 0x007784 01:B774: A9 01     LDA #$01
C - - - - - 0x007786 01:B776: B0 1B     BCS bra_B793
C - - - - - 0x007788 01:B778: FE 10 07  INC ram_0710_obj,X
C - - - - - 0x00778B 01:B77B: BD 10 07  LDA ram_0710_obj,X
C - - - - - 0x00778E 01:B77E: C9 03     CMP #$03
C - - - - - 0x007790 01:B780: A9 0C     LDA #$0C
C - - - - - 0x007792 01:B782: 90 0F     BCC bra_B793
C - - - - - 0x007794 01:B784: A9 01     LDA #$01
C - - - - - 0x007796 01:B786: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x007799 01:B789: 20 D7 A2  JSR sub_A2D7_increase_obj_state
C - - - - - 0x00779C 01:B78C: A9 20     LDA #$20
C - - - - - 0x00779E 01:B78E: 9D F4 06  STA ram_06F4_obj,X
C - - - - - 0x0077A1 01:B791: A9 08     LDA #$08
bra_B793:
C - - - - - 0x0077A3 01:B793: 9D E6 06  STA ram_06E6_obj,X
bra_B796_RTS:
C - - - - - 0x0077A6 01:B796: 60        RTS



ofs_038_0B_B797_04:
C - - J - - 0x0077A7 01:B797: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0077AA 01:B79A: C9 D0     CMP #$D0
C - - - - - 0x0077AC 01:B79C: 90 03     BCC bra_B7A1
C - - - - - 0x0077AE 01:B79E: 4C 75 A2  JMP loc_A275_delete_object_02
bra_B7A1:
C - - - - - 0x0077B1 01:B7A1: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x0077B4 01:B7A4: 20 24 AB  JSR sub_AB24_set_target_on_closest_player_Y_pos
C - - - - - 0x0077B7 01:B7A7: 84 12     STY ram_0012
C - - - - - 0x0077B9 01:B7A9: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0077BC 01:B7AC: D0 7D     BNE bra_B82B
C - - - - - 0x0077BE 01:B7AE: A9 15     LDA #$15
C - - - - - 0x0077C0 01:B7B0: 9D E6 06  STA ram_06E6_obj,X
C - - - - - 0x0077C3 01:B7B3: 20 AE AA  JSR sub_AAAE
C - - - - - 0x0077C6 01:B7B6: 20 EC F4  JSR sub_0x01F4FC
C - - - - - 0x0077C9 01:B7B9: 30 78     BMI bra_B833
C - - - - - 0x0077CB 01:B7BB: 08        PHP
C - - - - - 0x0077CC 01:B7BC: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0077CF 01:B7BF: 29 01     AND #$01
C - - - - - 0x0077D1 01:B7C1: A8        TAY
C - - - - - 0x0077D2 01:B7C2: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0077D5 01:B7C5: 28        PLP
C - - - - - 0x0077D6 01:B7C6: D0 14     BNE bra_B7DC
C - - - - - 0x0077D8 01:B7C8: D9 EE B7  CMP tbl_B7EE,Y
C - - - - - 0x0077DB 01:B7CB: F0 C9     BEQ bra_B796_RTS
C - - - - - 0x0077DD 01:B7CD: FE 48 07  INC ram_0748_obj,X
C - - - - - 0x0077E0 01:B7D0: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0077E3 01:B7D3: C9 0C     CMP #$0C
C - - - - - 0x0077E5 01:B7D5: 90 02     BCC bra_B7D9
C - - - - - 0x0077E7 01:B7D7: A9 00     LDA #$00
bra_B7D9:
C - - - - - 0x0077E9 01:B7D9: 4C E8 B7  JMP loc_B7E8
bra_B7DC:
C - - - - - 0x0077EC 01:B7DC: D9 F0 B7  CMP tbl_B7F0,Y
C - - - - - 0x0077EF 01:B7DF: F0 B5     BEQ bra_B796_RTS
C - - - - - 0x0077F1 01:B7E1: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x0077F4 01:B7E4: 10 05     BPL bra_B7EB
C - - - - - 0x0077F6 01:B7E6: A9 0B     LDA #$0B
loc_B7E8:
C D 1 - - - 0x0077F8 01:B7E8: 9D 48 07  STA ram_0748_obj,X
bra_B7EB:
C - - - - - 0x0077FB 01:B7EB: 4C D7 A2  JMP loc_A2D7_increase_obj_state



tbl_B7EE:
- D 1 - - - 0x0077FE 01:B7EE: 00        .byte $00   ; 00 
- D 1 - - - 0x0077FF 01:B7EF: 08        .byte $08   ; 01 



tbl_B7F0:
- D 1 - - - 0x007800 01:B7F0: 0A        .byte $0A   ; 00 
- D 1 - - - 0x007801 01:B7F1: 06        .byte $06   ; 01 



ofs_038_0B_B7F2_05:
C - - J - - 0x007802 01:B7F2: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x007805 01:B7F5: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x007808 01:B7F8: C9 18     CMP #$18
C - - - - - 0x00780A 01:B7FA: 90 5D     BCC bra_B859_RTS
C - - - - - 0x00780C 01:B7FC: C9 C0     CMP #$C0
C - - - - - 0x00780E 01:B7FE: B0 59     BCS bra_B859_RTS
C - - - - - 0x007810 01:B800: BC 48 07  LDY ram_0748_obj,X
C - - - - - 0x007813 01:B803: B9 60 B8  LDA tbl_B860,Y
C - - - - - 0x007816 01:B806: 20 9A A8  JSR sub_A89A
C - - - - - 0x007819 01:B809: B0 4E     BCS bra_B859_RTS
C - - - - - 0x00781B 01:B80B: A9 04     LDA #$04
C - - - - - 0x00781D 01:B80D: 4C 83 A2  JMP loc_A283_set_obj_state



ofs_038_0B_B810_06:
C - - J - - 0x007820 01:B810: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x007823 01:B813: 4A        LSR
C - - - - - 0x007824 01:B814: A9 4E     LDA #$4E
C - - - - - 0x007826 01:B816: 90 02     BCC bra_B81A
C - - - - - 0x007828 01:B818: A9 45     LDA #$45
bra_B81A:
C - - - - - 0x00782A 01:B81A: 85 0C     STA ram_000C
C - - - - - 0x00782C 01:B81C: A9 00     LDA #$00
C - - - - - 0x00782E 01:B81E: A0 10     LDY #$10
C - - - - - 0x007830 01:B820: 20 A8 A8  JSR sub_A8A8
C - - - - - 0x007833 01:B823: B0 03     BCS bra_B828
C - - - - - 0x007835 01:B825: 4C 9A A2  JMP loc_A29A
bra_B828:
- - - - - - 0x007838 01:B828: 4C B7 A6  JMP loc_A6B7_delete_object_03
bra_B82B:
C - - - - - 0x00783B 01:B82B: 20 AE AA  JSR sub_AAAE
C - - - - - 0x00783E 01:B82E: 20 EC F4  JSR sub_0x01F4FC
C - - - - - 0x007841 01:B831: 10 26     BPL bra_B859_RTS
bra_B833:
C - - - - - 0x007843 01:B833: DE F4 06  DEC ram_06F4_obj,X
C - - - - - 0x007846 01:B836: D0 21     BNE bra_B859_RTS
C - - - - - 0x007848 01:B838: A4 12     LDY ram_0012
C - - - - - 0x00784A 01:B83A: 84 0A     STY ram_000A
C - - - - - 0x00784C 01:B83C: 20 AE AA  JSR sub_AAAE
C - - - - - 0x00784F 01:B83F: A0 02     LDY #$02
C - - - - - 0x007851 01:B841: 20 27 F3  JSR sub_0x01F337
C - - - - - 0x007854 01:B844: 20 92 B6  JSR sub_B692
C - - - - - 0x007857 01:B847: A9 10     LDA #$10
C - - - - - 0x007859 01:B849: DE 72 07  DEC ram_0772_obj,X
C - - - - - 0x00785C 01:B84C: D0 08     BNE bra_B856
C - - - - - 0x00785E 01:B84E: BD 64 07  LDA ram_0764_obj,X
C - - - - - 0x007861 01:B851: 9D 72 07  STA ram_0772_obj,X
C - - - - - 0x007864 01:B854: A9 60     LDA #$60
bra_B856:
C - - - - - 0x007866 01:B856: 9D F4 06  STA ram_06F4_obj,X
bra_B859_RTS:
C - - - - - 0x007869 01:B859: 60        RTS



tbl_B85A:
- D 1 - - - 0x00786A 01:B85A: 4F        .byte $4F   ; 
- D 1 - - - 0x00786B 01:B85B: 50        .byte $50   ; 
- D 1 - - - 0x00786C 01:B85C: 51        .byte $51   ; 
- D 1 - - - 0x00786D 01:B85D: 48        .byte $48   ; 
- D 1 - - - 0x00786E 01:B85E: 49        .byte $49   ; 
- D 1 - - - 0x00786F 01:B85F: 4A        .byte $4A   ; 



tbl_B860:
- D 1 - - - 0x007870 01:B860: 51        .byte $51   ; 00 
- - - - - - 0x007871 01:B861: 00        .byte $00   ; 01 
- - - - - - 0x007872 01:B862: 00        .byte $00   ; 02 
- - - - - - 0x007873 01:B863: 00        .byte $00   ; 03 
- - - - - - 0x007874 01:B864: 00        .byte $00   ; 04 
- - - - - - 0x007875 01:B865: 00        .byte $00   ; 05 
- - - - - - 0x007876 01:B866: 4A        .byte $4A   ; 06 
- D 1 - - - 0x007877 01:B867: 4B        .byte $4B   ; 07 
- D 1 - - - 0x007878 01:B868: 4C        .byte $4C   ; 08 
- - - - - - 0x007879 01:B869: 00        .byte $00   ; 09 
- D 1 - - - 0x00787A 01:B86A: 53        .byte $53   ; 0A 
- D 1 - - - 0x00787B 01:B86B: 52        .byte $52   ; 0B 



_off001_B86C_0C_explosions:
- D 1 - I - 0x00787C 01:B86C: 9A A2     .word ofs_038_0C_A29A_01_initialize_object ; 
- D 1 - I - 0x00787E 01:B86E: FD A2     .word ofs_038_0C_A2FD_02 ; 
- D 1 - I - 0x007880 01:B870: 3D A3     .word ofs_038_0C_A33D_03_delete_object_04 ; 



_off001_B872_0D_wall_before_boss_battle:
- D 1 - I - 0x007882 01:B872: 84 B8     .word ofs_038_0D_B884_01_initialize_object ; 
- D 1 - I - 0x007884 01:B874: A9 B8     .word ofs_038_0D_B8A9_02 ; 
- D 1 - I - 0x007886 01:B876: BC B8     .word ofs_038_0D_B8BC_03 ; 
- D 1 - I - 0x007888 01:B878: 5E A3     .word ofs_038_0D_A35E_04_delete_object_05 ; 
- D 1 - I - 0x00788A 01:B87A: 6B A3     .word ofs_038_0D_A36B_05_delete_object_07 ; 
- D 1 - I - 0x00788C 01:B87C: BF B8     .word ofs_038_0D_B8BF_06 ; 
- D 1 - I - 0x00788E 01:B87E: 19 B9     .word ofs_038_0D_B919_07 ; 
- D 1 - I - 0x007890 01:B880: FD A2     .word ofs_038_0D_A2FD_08 ; 
- D 1 - I - 0x007892 01:B882: 3D A3     .word ofs_038_0D_A33D_09_delete_object_04 ; 



ofs_038_0D_B884_01_initialize_object:
C - - J - - 0x007894 01:B884: A9 01     LDA #$01
C - - - - - 0x007896 01:B886: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x007899 01:B889: A9 10     LDA #$10
C - - - - - 0x00789B 01:B88B: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x00789E 01:B88E: A9 89     LDA #$89
C - - - - - 0x0078A0 01:B890: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0078A3 01:B893: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0078A6 01:B896: 29 01     AND #$01
C - - - - - 0x0078A8 01:B898: 9D 1E 07  STA ram_obj_flags,X
C - - - - - 0x0078AB 01:B89B: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0078AE 01:B89E: 69 08     ADC #$08
C - - - - - 0x0078B0 01:B8A0: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0078B3 01:B8A3: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x0078B6 01:B8A6: 4C D7 A2  JMP loc_A2D7_increase_obj_state



ofs_038_0D_B8A9_02:
C - - J - - 0x0078B9 01:B8A9: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x0078BC 01:B8AC: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x0078BF 01:B8AF: C9 20     CMP #$20
C - - - - - 0x0078C1 01:B8B1: 90 08     BCC bra_B8BB_RTS
C - - - - - 0x0078C3 01:B8B3: A9 09     LDA #$09
C - - - - - 0x0078C5 01:B8B5: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x0078C8 01:B8B8: 4C D7 A2  JMP loc_A2D7_increase_obj_state
bra_B8BB_RTS:
C - - - - - 0x0078CB 01:B8BB: 60        RTS



ofs_038_0D_B8BC_03: ; bzk optimize
C - - J - - 0x0078CC 01:B8BC: 4C B7 A6  JMP loc_A6B7_delete_object_03



ofs_038_0D_B8BF_06:
C - - J - - 0x0078CF 01:B8BF: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x0078D2 01:B8C2: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0078D5 01:B8C5: D0 21     BNE bra_B8E8
C - - - - - 0x0078D7 01:B8C7: A9 FF     LDA #$FF
C - - - - - 0x0078D9 01:B8C9: 85 2F     STA ram_002F
C - - - - - 0x0078DB 01:B8CB: A0 05     LDY #$05
C - - - - - 0x0078DD 01:B8CD: A9 55     LDA #$55
bra_B8CF_loop:
C - - - - - 0x0078DF 01:B8CF: 99 D0 07  STA ram_07D0,Y
C - - - - - 0x0078E2 01:B8D2: 88        DEY
C - - - - - 0x0078E3 01:B8D3: 10 FA     BPL bra_B8CF_loop
C - - - - - 0x0078E5 01:B8D5: A0 20     LDY #$20
bra_B8D7_loop:
C - - - - - 0x0078E7 01:B8D7: A9 00     LDA #$00
C - - - - - 0x0078E9 01:B8D9: 99 03 04  STA ram_0400_area_data_1 + $03,Y
C - - - - - 0x0078EC 01:B8DC: 99 04 04  STA ram_0400_area_data_1 + $04,Y
C - - - - - 0x0078EF 01:B8DF: 98        TYA
C - - - - - 0x0078F0 01:B8E0: 38        SEC
C - - - - - 0x0078F1 01:B8E1: E9 08     SBC #$08
C - - - - - 0x0078F3 01:B8E3: A8        TAY
C - - - - - 0x0078F4 01:B8E4: 10 F1     BPL bra_B8D7_loop
C - - - - - 0x0078F6 01:B8E6: 30 13     BMI bra_B8FB    ; jmp
bra_B8E8:
C - - - - - 0x0078F8 01:B8E8: A0 10     LDY #$10
bra_B8EA_loop:
C - - - - - 0x0078FA 01:B8EA: A9 10     LDA #$10
C - - - - - 0x0078FC 01:B8EC: 99 4B 04  STA ram_0400_area_data_1 + $4B,Y
C - - - - - 0x0078FF 01:B8EF: A9 01     LDA #$01
C - - - - - 0x007901 01:B8F1: 99 4C 04  STA ram_0400_area_data_1 + $4C,Y
C - - - - - 0x007904 01:B8F4: 98        TYA
C - - - - - 0x007905 01:B8F5: 38        SEC
C - - - - - 0x007906 01:B8F6: E9 08     SBC #$08
C - - - - - 0x007908 01:B8F8: A8        TAY
C - - - - - 0x007909 01:B8F9: 10 EF     BPL bra_B8EA_loop
bra_B8FB:
C - - - - - 0x00790B 01:B8FB: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x00790E 01:B8FE: 4A        LSR
C - - - - - 0x00790F 01:B8FF: B0 08     BCS bra_B909
C - - - - - 0x007911 01:B901: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x007914 01:B904: 69 10     ADC #$10
C - - - - - 0x007916 01:B906: 9D 22 05  STA ram_pos_Y_hi_enemy,X
bra_B909:
C - - - - - 0x007919 01:B909: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x00791C 01:B90C: E9 10     SBC #$10
C - - - - - 0x00791E 01:B90E: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x007921 01:B911: A9 02     LDA #$02
C - - - - - 0x007923 01:B913: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x007926 01:B916: 4C D7 A2  JMP loc_A2D7_increase_obj_state



ofs_038_0D_B919_07:
C - - J - - 0x007929 01:B919: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x00792C 01:B91C: F0 02     BEQ bra_B920
C - - - - - 0x00792E 01:B91E: A9 03     LDA #$03
bra_B920:   ; A = 00
C - - - - - 0x007930 01:B920: 18        CLC
C - - - - - 0x007931 01:B921: 7D 48 07  ADC ram_0748_obj,X
C - - - - - 0x007934 01:B924: A8        TAY
C - - - - - 0x007935 01:B925: B9 5F B9  LDA tbl_B95F,Y
C - - - - - 0x007938 01:B928: F0 0C     BEQ bra_B936
C - - - - - 0x00793A 01:B92A: 85 0C     STA ram_000C
C - - - - - 0x00793C 01:B92C: B9 59 B9  LDA tbl_B959,Y
C - - - - - 0x00793F 01:B92F: A0 01     LDY #$01
C - - - - - 0x007941 01:B931: 20 A8 A8  JSR sub_A8A8
C - - - - - 0x007944 01:B934: B0 20     BCS bra_B956
bra_B936:
C - - - - - 0x007946 01:B936: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x007949 01:B939: E9 1F     SBC #$1F
C - - - - - 0x00794B 01:B93B: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x00794E 01:B93E: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x007951 01:B941: 10 13     BPL bra_B956
C - - - - - 0x007953 01:B943: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x007956 01:B946: 69 50     ADC #$50
C - - - - - 0x007958 01:B948: 9D 22 05  STA ram_pos_Y_hi_enemy,X
C - - - - - 0x00795B 01:B94B: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x00795E 01:B94E: 69 10     ADC #$10
C - - - - - 0x007960 01:B950: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x007963 01:B953: 4C 9A A2  JMP loc_A29A
bra_B956:
C - - - - - 0x007966 01:B956: 4C B7 A6  JMP loc_A6B7_delete_object_03



tbl_B959:
; 00 
- D 1 - - - 0x007969 01:B959: 6C        .byte $6C   ; 00 
- D 1 - - - 0x00796A 01:B95A: 6D        .byte $6D   ; 01 
- D 1 - - - 0x00796B 01:B95B: C3        .byte $C3   ; 02 
; 02 
- - - - - - 0x00796C 01:B95C: 00        .byte $00   ; 00 
- D 1 - - - 0x00796D 01:B95D: 70        .byte $70   ; 01 
- D 1 - - - 0x00796E 01:B95E: 74        .byte $74   ; 02 



tbl_B95F:
; 00 
- D 1 - - - 0x00796F 01:B95F: C5        .byte $C5   ; 00 
- D 1 - - - 0x007970 01:B960: C6        .byte $C6   ; 01 
- D 1 - - - 0x007971 01:B961: C4        .byte $C4   ; 02 
; 02 
- D 1 - - - 0x007972 01:B962: 00        .byte $00   ; 00 
- D 1 - - - 0x007973 01:B963: 71        .byte $71   ; 01 
- D 1 - - - 0x007974 01:B964: 75        .byte $75   ; 02 



_off001_B965_0F_spawner_grenades:
- D 1 - I - 0x007975 01:B965: 6B B9     .word ofs_038_0F_B96B_01_initialize_object ; 
- D 1 - I - 0x007977 01:B967: 8B B9     .word ofs_038_0F_B98B_02 ; 
- D 1 - I - 0x007979 01:B969: 9A B9     .word ofs_038_0F_B99A_03 ; 



ofs_038_0F_B96B_01_initialize_object:
C - - J - - 0x00797B 01:B96B: A9 01     LDA #$01
C - - - - - 0x00797D 01:B96D: 9D 08 05  STA ram_anim_id_enemy,X
C - - - - - 0x007980 01:B970: A9 81     LDA #$81
C - - - - - 0x007982 01:B972: 9D 2C 07  STA ram_072C_obj,X
C - - - - - 0x007985 01:B975: A9 F0     LDA #con__hp_F0
C - - - - - 0x007987 01:B977: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x00798A 01:B97A: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x00798D 01:B97D: 29 03     AND #$03
C - - - - - 0x00798F 01:B97F: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x007992 01:B982: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x007995 01:B985: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x007998 01:B988: 4C D7 A2  JMP loc_A2D7_increase_obj_state



ofs_038_0F_B98B_02:
C - - J - - 0x00799B 01:B98B: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x00799E 01:B98E: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0079A1 01:B991: C9 E0     CMP #$E0
C - - - - - 0x0079A3 01:B993: B0 3E     BCS bra_B9D3_RTS
C - - - - - 0x0079A5 01:B995: A9 01     LDA #$01
C - - - - - 0x0079A7 01:B997: 4C E0 A2  JMP loc_A2E0



ofs_038_0F_B99A_03:
C - - J - - 0x0079AA 01:B99A: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x0079AD 01:B99D: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0079B0 01:B9A0: C9 20     CMP #$20
C - - - - - 0x0079B2 01:B9A2: B0 03     BCS bra_B9A7
C - - - - - 0x0079B4 01:B9A4: 4C 75 A2  JMP loc_A275_delete_object_02
bra_B9A7:
C - - - - - 0x0079B7 01:B9A7: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x0079BA 01:B9AA: D0 27     BNE bra_B9D3_RTS
C - - - - - 0x0079BC 01:B9AC: A0 06     LDY #con_obj_id_06
C - - - - - 0x0079BE 01:B9AE: 20 C8 AB  JSR sub_ABC8
C - - - - - 0x0079C1 01:B9B1: 90 0E     BCC bra_B9C1
C - - - - - 0x0079C3 01:B9B3: A4 11     LDY ram_0011
C - - - - - 0x0079C5 01:B9B5: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x0079C8 01:B9B8: 0A        ASL
C - - - - - 0x0079C9 01:B9B9: 0A        ASL
C - - - - - 0x0079CA 01:B9BA: 29 80     AND #$80
C - - - - - 0x0079CC 01:B9BC: 09 02     ORA #$02
C - - - - - 0x0079CE 01:B9BE: 99 1E 07  STA ram_obj_flags,Y
bra_B9C1:
C - - - - - 0x0079D1 01:B9C1: A9 18     LDA #$18
C - - - - - 0x0079D3 01:B9C3: DE 56 07  DEC ram_0756_obj,X
C - - - - - 0x0079D6 01:B9C6: 10 08     BPL bra_B9D0
C - - - - - 0x0079D8 01:B9C8: BD 48 07  LDA ram_0748_obj,X
C - - - - - 0x0079DB 01:B9CB: 9D 56 07  STA ram_0756_obj,X
C - - - - - 0x0079DE 01:B9CE: A9 63     LDA #$63
bra_B9D0:
C - - - - - 0x0079E0 01:B9D0: 9D E6 06  STA ram_06E6_obj,X
bra_B9D3_RTS:
C - - - - - 0x0079E3 01:B9D3: 60        RTS



_off001_B9D4_10_spawner_normal_mobs:
- D 1 - I - 0x0079E4 01:B9D4: DC B9     .word ofs_038_10_B9DC_01_initialize_object ; 
- D 1 - I - 0x0079E6 01:B9D6: F0 B9     .word ofs_038_10_B9F0_02 ; 
- D 1 - I - 0x0079E8 01:B9D8: 2B BA     .word ofs_038_10_BA2B_03 ; 
- - - - - - 0x0079EA 01:B9DA: 75 A2     .word ofs_038_10_A275_04_delete_object_02 ; 



ofs_038_10_B9DC_01_initialize_object:
C - - J - - 0x0079EC 01:B9DC: A9 F0     LDA #con__hp_F0
C - - - - - 0x0079EE 01:B9DE: 9D 76 06  STA ram_obj_hp,X
C - - - - - 0x0079F1 01:B9E1: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x0079F4 01:B9E4: 38        SEC
C - - - - - 0x0079F5 01:B9E5: E9 04     SBC #$04
C - - - - - 0x0079F7 01:B9E7: 9D 3C 05  STA ram_pos_X_hi_enemy,X
C - - - - - 0x0079FA 01:B9EA: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x0079FD 01:B9ED: 4C D7 A2  JMP loc_A2D7_increase_obj_state



ofs_038_10_B9F0_02:
C - - J - - 0x007A00 01:B9F0: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x007A03 01:B9F3: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x007A06 01:B9F6: C9 E8     CMP #$E8
C - - - - - 0x007A08 01:B9F8: B0 7F     BCS bra_BA79_RTS
C - - - - - 0x007A0A 01:B9FA: BD 22 05  LDA ram_pos_Y_hi_enemy,X
C - - - - - 0x007A0D 01:B9FD: 18        CLC
C - - - - - 0x007A0E 01:B9FE: 69 12     ADC #$12
C - - - - - 0x007A10 01:BA00: A8        TAY
C - - - - - 0x007A11 01:BA01: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x007A14 01:BA04: E9 10     SBC #$10
C - - - - - 0x007A16 01:BA06: 20 C0 BA  JSR sub_BAC0
C - - - - - 0x007A19 01:BA09: A5 03     LDA ram_0003
C - - - - - 0x007A1B 01:BA0B: 29 01     AND #$01
C - - - - - 0x007A1D 01:BA0D: 0A        ASL
C - - - - - 0x007A1E 01:BA0E: AA        TAX
C - - - - - 0x007A1F 01:BA0F: BD 27 BA  LDA tbl_BA27,X
C - - - - - 0x007A22 01:BA12: 99 00 04  STA ram_0400_area_data_1,Y
C - - - - - 0x007A25 01:BA15: BD 28 BA  LDA tbl_BA27 + $01,X
C - - - - - 0x007A28 01:BA18: 99 01 04  STA ram_0400_area_data_1 + $01,Y
C - - - - - 0x007A2B 01:BA1B: A6 10     LDX ram_0010
C - - - - - 0x007A2D 01:BA1D: A9 01     LDA #$01
C - - - - - 0x007A2F 01:BA1F: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x007A32 01:BA22: A9 01     LDA #$01
C - - - - - 0x007A34 01:BA24: 4C E0 A2  JMP loc_A2E0



tbl_BA27:
;                                              ----------- 
;                                              |    ------ 
;                                              |    |
- D 1 - - - 0x007A37 01:BA27: 11        .byte $11, $10   ; 00 
- D 1 - - - 0x007A39 01:BA29: 01        .byte $01, $11   ; 01 



ofs_038_10_BA2B_03:
C - - J - - 0x007A3B 01:BA2B: 20 B7 A6  JSR sub_A6B7_delete_object_03
C - - - - - 0x007A3E 01:BA2E: DE E6 06  DEC ram_06E6_obj,X
C - - - - - 0x007A41 01:BA31: D0 46     BNE bra_BA79_RTS
C - - - - - 0x007A43 01:BA33: 20 0B AB  JSR sub_AB0B_set_target_on_closest_player_X_pos
C - - - - - 0x007A46 01:BA36: A4 0A     LDY ram_000A
C - - - - - 0x007A48 01:BA38: BD 3C 05  LDA ram_pos_X_hi_enemy,X
C - - - - - 0x007A4B 01:BA3B: 38        SEC
C - - - - - 0x007A4C 01:BA3C: F9 4C 05  SBC ram_pos_X_hi_plr,Y
C - - - - - 0x007A4F 01:BA3F: B0 05     BCS bra_BA46
C - - - - - 0x007A51 01:BA41: 49 FF     EOR #$FF
C - - - - - 0x007A53 01:BA43: 69 01     ADC #$01
C - - - - - 0x007A55 01:BA45: 18        CLC
bra_BA46:
C - - - - - 0x007A56 01:BA46: A0 81     LDY #$81
C - - - - - 0x007A58 01:BA48: 90 02     BCC bra_BA4C
C - - - - - 0x007A5A 01:BA4A: A0 00     LDY #$00
bra_BA4C:
C - - - - - 0x007A5C 01:BA4C: 84 12     STY ram_0012
C - - - - - 0x007A5E 01:BA4E: C9 18     CMP #$18
C - - - - - 0x007A60 01:BA50: 90 16     BCC bra_BA68
C - - - - - 0x007A62 01:BA52: A0 03     LDY #con_obj_id_03
C - - - - - 0x007A64 01:BA54: 20 C8 AB  JSR sub_ABC8
C - - - - - 0x007A67 01:BA57: 90 0F     BCC bra_BA68
C - - - - - 0x007A69 01:BA59: BD 1E 07  LDA ram_obj_flags,X
C - - - - - 0x007A6C 01:BA5C: 29 20     AND #$20
; bzk optimize, LDY 0011 before LDA for readability
C - - - - - 0x007A6E 01:BA5E: A4 11     LDY ram_0011
C - - - - - 0x007A70 01:BA60: 99 56 05  STA ram_attr_spr_enemy,Y
C - - - - - 0x007A73 01:BA63: A5 12     LDA ram_0012
C - - - - - 0x007A75 01:BA65: 99 1E 07  STA ram_obj_flags,Y
bra_BA68:
C - - - - - 0x007A78 01:BA68: A9 20     LDA #$20
C - - - - - 0x007A7A 01:BA6A: DE 48 07  DEC ram_0748_obj,X
C - - - - - 0x007A7D 01:BA6D: 10 07     BPL bra_BA76
C - - - - - 0x007A7F 01:BA6F: A9 01     LDA #$01
C - - - - - 0x007A81 01:BA71: 9D 48 07  STA ram_0748_obj,X
C - - - - - 0x007A84 01:BA74: A9 80     LDA #$80
bra_BA76:
C - - - - - 0x007A86 01:BA76: 9D E6 06  STA ram_06E6_obj,X
bra_BA79_RTS:
C - - - - - 0x007A89 01:BA79: 60        RTS


; bzk garbage
- - - - - - 0x007A8A 01:BA7A: BC 22 05  LDY ram_pos_Y_hi_enemy,X
- - - - - - 0x007A8D 01:BA7D: BD 3C 05  LDA ram_pos_X_hi_enemy,X



sub_0x007A90:
C - - - - - 0x007A90 01:BA80: 85 03     STA ram_0003
C - - - - - 0x007A92 01:BA82: A9 08     LDA #$08
C - - - - - 0x007A94 01:BA84: 85 01     STA ram_0001
C - - - - - 0x007A96 01:BA86: 98        TYA
C - - - - - 0x007A97 01:BA87: 18        CLC
C - - - - - 0x007A98 01:BA88: 65 FC     ADC ram_scroll_Y
C - - - - - 0x007A9A 01:BA8A: B0 04     BCS bra_BA90
C - - - - - 0x007A9C 01:BA8C: C9 F0     CMP #$F0
C - - - - - 0x007A9E 01:BA8E: 90 02     BCC bra_BA92
bra_BA90:
- - - - - - 0x007AA0 01:BA90: 69 0F     ADC #$0F
bra_BA92:
C - - - - - 0x007AA2 01:BA92: 29 F8     AND #$F8
C - - - - - 0x007AA4 01:BA94: 0A        ASL
C - - - - - 0x007AA5 01:BA95: 26 01     ROL ram_0001
C - - - - - 0x007AA7 01:BA97: 0A        ASL
C - - - - - 0x007AA8 01:BA98: 26 01     ROL ram_0001
C - - - - - 0x007AAA 01:BA9A: 85 02     STA ram_0002
C - - - - - 0x007AAC 01:BA9C: A5 03     LDA ram_0003
C - - - - - 0x007AAE 01:BA9E: 18        CLC
C - - - - - 0x007AAF 01:BA9F: 65 FD     ADC ram_scroll_X
C - - - - - 0x007AB1 01:BAA1: 4A        LSR
C - - - - - 0x007AB2 01:BAA2: 4A        LSR
C - - - - - 0x007AB3 01:BAA3: 4A        LSR
C - - - - - 0x007AB4 01:BAA4: A8        TAY
C - - - - - 0x007AB5 01:BAA5: 05 02     ORA ram_0002
C - - - - - 0x007AB7 01:BAA7: 85 00     STA ram_0000
C - - - - - 0x007AB9 01:BAA9: 60        RTS



loc_BAAA_calculate_surface_type:
sub_BAAA_calculate_surface_type:
sub_0x007ABA_calculate_surface_type:
C D 1 - - - 0x007ABA 01:BAAA: 20 C0 BA  JSR sub_BAC0
C - - - - - 0x007ABD 01:BAAD: C9 06     CMP #$06
C - - - - - 0x007ABF 01:BAAF: A8        TAY
C - - - - - 0x007AC0 01:BAB0: 90 0D     BCC bra_BABF_RTS
; if diagonal surface
C - - - - - 0x007AC2 01:BAB2: A5 01     LDA ram_0001
C - - - - - 0x007AC4 01:BAB4: 29 0F     AND #$0F
C - - - - - 0x007AC6 01:BAB6: D9 28 BB  CMP tbl_BB2E - $06,Y
C - - - - - 0x007AC9 01:BAB9: B0 03     BCS bra_BABE
C - - - - - 0x007ACB 01:BABB: A9 00     LDA #$00
C - - - - - 0x007ACD 01:BABD: 60        RTS
bra_BABE:
C - - - - - 0x007ACE 01:BABE: 98        TYA
bra_BABF_RTS:
C - - - - - 0x007ACF 01:BABF: 60        RTS



sub_BAC0:
sub_0x007AD0:
loc_0x007AD0:
C D 1 - - - 0x007AD0 01:BAC0: 85 00     STA ram_0000    ; pos X
C - - - - - 0x007AD2 01:BAC2: 84 06     STY ram_0006    ; pos Y
C - - - - - 0x007AD4 01:BAC4: C4 45     CPY ram_scanline
C - - - - - 0x007AD6 01:BAC6: 90 13     BCC bra_BADB
C - - - - - 0x007AD8 01:BAC8: C4 49     CPY ram_0049
C - - - - - 0x007ADA 01:BACA: B0 0F     BCS bra_BADB
C - - - - - 0x007ADC 01:BACC: A5 FA     LDA ram_00FA_scroll_X
C - - - - - 0x007ADE 01:BACE: 85 04     STA ram_0004
C - - - - - 0x007AE0 01:BAD0: A5 F9     LDA ram_00F9_scroll_Y
C - - - - - 0x007AE2 01:BAD2: C9 FF     CMP #$FF
C - - - - - 0x007AE4 01:BAD4: F0 55     BEQ bra_BB2B
C - - - - - 0x007AE6 01:BAD6: A4 FB     LDY ram_00FB_for_2000
C - - - - - 0x007AE8 01:BAD8: 4C E3 BA  JMP loc_BAE3
bra_BADB:
C - - - - - 0x007AEB 01:BADB: A5 FD     LDA ram_scroll_X
C - - - - - 0x007AED 01:BADD: 85 04     STA ram_0004
C - - - - - 0x007AEF 01:BADF: A5 FC     LDA ram_scroll_Y
C - - - - - 0x007AF1 01:BAE1: A4 FF     LDY ram_for_2000
loc_BAE3:
C D 1 - - - 0x007AF3 01:BAE3: 84 05     STY ram_0005    ; for 2000
C - - - - - 0x007AF5 01:BAE5: A0 00     LDY #$00
C - - - - - 0x007AF7 01:BAE7: 18        CLC
C - - - - - 0x007AF8 01:BAE8: 65 06     ADC ram_0006    ; pos Y
C - - - - - 0x007AFA 01:BAEA: B0 04     BCS bra_BAF0
C - - - - - 0x007AFC 01:BAEC: C9 F0     CMP #$F0
C - - - - - 0x007AFE 01:BAEE: 90 04     BCC bra_BAF4
bra_BAF0:
C - - - - - 0x007B00 01:BAF0: 69 0F     ADC #$0F
C - - - - - 0x007B02 01:BAF2: A0 02     LDY #$02
bra_BAF4:
C - - - - - 0x007B04 01:BAF4: 85 01     STA ram_0001    ; scroll Y + pos Y
C - - - - - 0x007B06 01:BAF6: 29 F0     AND #$F0
C - - - - - 0x007B08 01:BAF8: 85 02     STA ram_0002
C - - - - - 0x007B0A 01:BAFA: A5 04     LDA ram_0004    ; scroll X
C - - - - - 0x007B0C 01:BAFC: 18        CLC
C - - - - - 0x007B0D 01:BAFD: 65 00     ADC ram_0000    ; pos X
C - - - - - 0x007B0F 01:BAFF: 85 00     STA ram_0000
C - - - - - 0x007B11 01:BB01: 90 01     BCC bra_BB04
C - - - - - 0x007B13 01:BB03: C8        INY ; 01/03
bra_BB04:
C - - - - - 0x007B14 01:BB04: 4A        LSR
C - - - - - 0x007B15 01:BB05: 4A        LSR
C - - - - - 0x007B16 01:BB06: 4A        LSR
C - - - - - 0x007B17 01:BB07: 4A        LSR
C - - - - - 0x007B18 01:BB08: 85 03     STA ram_0003
C - - - - - 0x007B1A 01:BB0A: 05 02     ORA ram_0002
C - - - - - 0x007B1C 01:BB0C: 85 04     STA ram_0004
C - - - - - 0x007B1E 01:BB0E: 98        TYA
C - - - - - 0x007B1F 01:BB0F: 45 05     EOR ram_0005    ; for 2000
C - - - - - 0x007B21 01:BB11: 4A        LSR
C - - - - - 0x007B22 01:BB12: A4 26     LDY ram_for_A000
C - - - - - 0x007B24 01:BB14: F0 01     BEQ bra_BB17    ; if con_mirroring_V
; if con_mirroring_H
C - - - - - 0x007B26 01:BB16: 4A        LSR
bra_BB17:
C - - - - - 0x007B27 01:BB17: 66 04     ROR ram_0004
C - - - - - 0x007B29 01:BB19: A4 04     LDY ram_0004
sub_BB1B:
sub_0x007B2B:
C - - - - - 0x007B2B 01:BB1B: A5 03     LDA ram_0003
C - - - - - 0x007B2D 01:BB1D: 4A        LSR
C - - - - - 0x007B2E 01:BB1E: B9 00 04  LDA ram_0400_area_data_1,Y
C - - - - - 0x007B31 01:BB21: B0 05     BCS bra_BB28
C - - - - - 0x007B33 01:BB23: 4A        LSR
C - - - - - 0x007B34 01:BB24: 4A        LSR
C - - - - - 0x007B35 01:BB25: 4A        LSR
C - - - - - 0x007B36 01:BB26: 4A        LSR
C - - - - - 0x007B37 01:BB27: 60        RTS
bra_BB28:
C - - - - - 0x007B38 01:BB28: 29 0F     AND #$0F
C - - - - - 0x007B3A 01:BB2A: 60        RTS
bra_BB2B:
C - - - - - 0x007B3B 01:BB2B: A9 00     LDA #$00
C - - - - - 0x007B3D 01:BB2D: 60        RTS



tbl_BB2E:
- D 1 - - - 0x007B3E 01:BB2E: 00        .byte $00   ; 06 
- D 1 - - - 0x007B3F 01:BB2F: 00        .byte $00   ; 07 
- D 1 - - - 0x007B40 01:BB30: 08        .byte $08   ; 08 
- D 1 - - - 0x007B41 01:BB31: 00        .byte $00   ; 09 
- D 1 - - - 0x007B42 01:BB32: 00        .byte $00   ; 0A 
- D 1 - - - 0x007B43 01:BB33: 08        .byte $08   ; 0B 



sub_0x007B44:
C - - - - - 0x007B44 01:BB34: 86 17     STX ram_0017
C - - - - - 0x007B46 01:BB36: 85 00     STA ram_0000
C - - - - - 0x007B48 01:BB38: A5 F9     LDA ram_00F9_scroll_Y
C - - - - - 0x007B4A 01:BB3A: C9 FF     CMP #$FF
C - - - - - 0x007B4C 01:BB3C: D0 04     BNE bra_BB42
C - - - - - 0x007B4E 01:BB3E: C4 45     CPY ram_scanline
C - - - - - 0x007B50 01:BB40: B0 35     BCS bra_BB77
bra_BB42:
C - - - - - 0x007B52 01:BB42: A5 00     LDA ram_0000
C - - - - - 0x007B54 01:BB44: 20 C0 BA  JSR sub_BAC0
C - - - - - 0x007B57 01:BB47: 20 C3 BB  JSR sub_BBC3
C - - - - - 0x007B5A 01:BB4A: D0 2F     BNE bra_BB7B
C - - - - - 0x007B5C 01:BB4C: A5 00     LDA ram_0000
C - - - - - 0x007B5E 01:BB4E: 29 0F     AND #$0F
C - - - - - 0x007B60 01:BB50: 85 00     STA ram_0000
C - - - - - 0x007B62 01:BB52: A5 0F     LDA ram_000F
C - - - - - 0x007B64 01:BB54: 38        SEC
C - - - - - 0x007B65 01:BB55: E5 00     SBC ram_0000
C - - - - - 0x007B67 01:BB57: 90 1E     BCC bra_BB77
C - - - - - 0x007B69 01:BB59: F0 1C     BEQ bra_BB77
C - - - - - 0x007B6B 01:BB5B: 4A        LSR
C - - - - - 0x007B6C 01:BB5C: 4A        LSR
C - - - - - 0x007B6D 01:BB5D: 4A        LSR
C - - - - - 0x007B6E 01:BB5E: 4A        LSR
C - - - - - 0x007B6F 01:BB5F: 85 0E     STA ram_000E
bra_BB61_loop:
C - - - - - 0x007B71 01:BB61: A5 03     LDA ram_0003
C - - - - - 0x007B73 01:BB63: 49 01     EOR #$01
C - - - - - 0x007B75 01:BB65: 85 03     STA ram_0003
C - - - - - 0x007B77 01:BB67: 4A        LSR
C - - - - - 0x007B78 01:BB68: 90 01     BCC bra_BB6B
C - - - - - 0x007B7A 01:BB6A: 88        DEY
bra_BB6B:
C - - - - - 0x007B7B 01:BB6B: 20 1B BB  JSR sub_BB1B
C - - - - - 0x007B7E 01:BB6E: 20 C3 BB  JSR sub_BBC3
C - - - - - 0x007B81 01:BB71: D0 08     BNE bra_BB7B
C - - - - - 0x007B83 01:BB73: C6 0E     DEC ram_000E
C - - - - - 0x007B85 01:BB75: 10 EA     BPL bra_BB61_loop
bra_BB77:
C - - - - - 0x007B87 01:BB77: A6 17     LDX ram_0017
C - - - - - 0x007B89 01:BB79: 18        CLC
C - - - - - 0x007B8A 01:BB7A: 60        RTS
bra_BB7B:
C - - - - - 0x007B8B 01:BB7B: A6 17     LDX ram_0017
C - - - - - 0x007B8D 01:BB7D: 38        SEC
C - - - - - 0x007B8E 01:BB7E: 60        RTS



sub_BB7F:
sub_0x007B8F:
C - - - - - 0x007B8F 01:BB7F: 86 17     STX ram_0017
C - - - - - 0x007B91 01:BB81: 20 C0 BA  JSR sub_BAC0
C - - - - - 0x007B94 01:BB84: 20 C3 BB  JSR sub_BBC3
C - - - - - 0x007B97 01:BB87: D0 F2     BNE bra_BB7B
C - - - - - 0x007B99 01:BB89: A5 01     LDA ram_0001
C - - - - - 0x007B9B 01:BB8B: 29 0F     AND #$0F
C - - - - - 0x007B9D 01:BB8D: 85 01     STA ram_0001
C - - - - - 0x007B9F 01:BB8F: A5 0F     LDA ram_000F
C - - - - - 0x007BA1 01:BB91: 38        SEC
C - - - - - 0x007BA2 01:BB92: E5 01     SBC ram_0001
C - - - - - 0x007BA4 01:BB94: 90 29     BCC bra_BBBF
C - - - - - 0x007BA6 01:BB96: F0 27     BEQ bra_BBBF
C - - - - - 0x007BA8 01:BB98: 4A        LSR
C - - - - - 0x007BA9 01:BB99: 4A        LSR
C - - - - - 0x007BAA 01:BB9A: 4A        LSR
C - - - - - 0x007BAB 01:BB9B: 4A        LSR
C - - - - - 0x007BAC 01:BB9C: 85 0E     STA ram_000E
bra_BB9E_loop:
C - - - - - 0x007BAE 01:BB9E: 98        TYA
C - - - - - 0x007BAF 01:BB9F: 29 7F     AND #$7F
C - - - - - 0x007BB1 01:BBA1: C9 08     CMP #$08
C - - - - - 0x007BB3 01:BBA3: 98        TYA
C - - - - - 0x007BB4 01:BBA4: B0 0A     BCS bra_BBB0
; C = 0
C - - - - - 0x007BB6 01:BBA6: 69 70     ADC #$70
C - - - - - 0x007BB8 01:BBA8: A4 26     LDY ram_for_A000
C - - - - - 0x007BBA 01:BBAA: F0 02     BEQ bra_BBAE    ; if con_mirroring_V
; if con_mirroring_H
C - - - - - 0x007BBC 01:BBAC: 49 80     EOR #$80
bra_BBAE:
C - - - - - 0x007BBE 01:BBAE: 90 02     BCC bra_BBB2
bra_BBB0:
C - - - - - 0x007BC0 01:BBB0: E9 08     SBC #$08
bra_BBB2:
C - - - - - 0x007BC2 01:BBB2: A8        TAY
C - - - - - 0x007BC3 01:BBB3: 20 1B BB  JSR sub_BB1B
C - - - - - 0x007BC6 01:BBB6: 20 C3 BB  JSR sub_BBC3
C - - - - - 0x007BC9 01:BBB9: D0 C0     BNE bra_BB7B
C - - - - - 0x007BCB 01:BBBB: C6 0E     DEC ram_000E
C - - - - - 0x007BCD 01:BBBD: 10 DF     BPL bra_BB9E_loop
bra_BBBF:
C - - - - - 0x007BCF 01:BBBF: A6 17     LDX ram_0017
C - - - - - 0x007BD1 01:BBC1: 18        CLC
C - - - - - 0x007BD2 01:BBC2: 60        RTS



sub_BBC3:
C - - - - - 0x007BD3 01:BBC3: AA        TAX
C - - - - - 0x007BD4 01:BBC4: A5 5D     LDA ram_area_config_view
C - - - - - 0x007BD6 01:BBC6: D0 04     BNE bra_BBCC_view_from_above
; if side view
C - - - - - 0x007BD8 01:BBC8: BD DD BB  LDA tbl_BBDD,X
C - - - - - 0x007BDB 01:BBCB: 60        RTS
bra_BBCC_view_from_above:
C - - - - - 0x007BDC 01:BBCC: BD E9 BB  LDA tbl_BBE9,X
C - - - - - 0x007BDF 01:BBCF: 60        RTS



loc_BBD0:
sub_BBD0:
C D 1 - - - 0x007BE0 01:BBD0: A8        TAY
C - - - - - 0x007BE1 01:BBD1: A5 5D     LDA ram_area_config_view
C - - - - - 0x007BE3 01:BBD3: D0 04     BNE bra_BBD9_view_from_above
; if side view
C - - - - - 0x007BE5 01:BBD5: B9 DD BB  LDA tbl_BBDD,Y
C - - - - - 0x007BE8 01:BBD8: 60        RTS
bra_BBD9_view_from_above:
- - - - - - 0x007BE9 01:BBD9: B9 E9 BB  LDA tbl_BBE9,Y
- - - - - - 0x007BEC 01:BBDC: 60        RTS



tbl_BBDD:
- D 1 - - - 0x007BED 01:BBDD: 00        .byte $00   ; 00 
- D 1 - - - 0x007BEE 01:BBDE: 00        .byte $00   ; 01 
- D 1 - - - 0x007BEF 01:BBDF: 01        .byte $01   ; 02 
- D 1 - - - 0x007BF0 01:BBE0: 01        .byte $01   ; 03 
- D 1 - - - 0x007BF1 01:BBE1: 00        .byte $00   ; 04 
- - - - - - 0x007BF2 01:BBE2: 00        .byte $00   ; 05 
- D 1 - - - 0x007BF3 01:BBE3: 00        .byte $00   ; 06 
- D 1 - - - 0x007BF4 01:BBE4: 00        .byte $00   ; 07 
- D 1 - - - 0x007BF5 01:BBE5: 00        .byte $00   ; 08 
- D 1 - - - 0x007BF6 01:BBE6: 00        .byte $00   ; 09 
- D 1 - - - 0x007BF7 01:BBE7: 00        .byte $00   ; 0A 
- D 1 - - - 0x007BF8 01:BBE8: 00        .byte $00   ; 0B 



tbl_BBE9:
- D 1 - - - 0x007BF9 01:BBE9: 00        .byte $00   ; 00 
- D 1 - - - 0x007BFA 01:BBEA: 01        .byte $01   ; 01 
- D 1 - - - 0x007BFB 01:BBEB: 01        .byte $01   ; 02 
- - - - - - 0x007BFC 01:BBEC: 01        .byte $01   ; 03 
- - - - - - 0x007BFD 01:BBED: 00        .byte $00   ; 04 
- - - - - - 0x007BFE 01:BBEE: 00        .byte $00   ; 05 
- - - - - - 0x007BFF 01:BBEF: 00        .byte $00   ; 06 
- - - - - - 0x007C00 01:BBF0: 00        .byte $00   ; 07 
- - - - - - 0x007C01 01:BBF1: 00        .byte $00   ; 08 
- - - - - - 0x007C02 01:BBF2: 00        .byte $00   ; 09 
- - - - - - 0x007C03 01:BBF3: 00        .byte $00   ; 0A 
- - - - - - 0x007C04 01:BBF4: 00        .byte $00   ; 0B 



sub_0x007C05:
C - - - - - 0x007C05 01:BBF5: 20 AA BA  JSR sub_BAAA_calculate_surface_type
C - - - - - 0x007C08 01:BBF8: C9 06     CMP #$06
C - - - - - 0x007C0A 01:BBFA: B0 05     BCS bra_BC01_RTS
; if not diagonal surface
C - - - - - 0x007C0C 01:BBFC: A8        TAY
C - - - - - 0x007C0D 01:BBFD: B9 DD BB  LDA tbl_BBDD,Y
C - - - - - 0x007C10 01:BC00: 4A        LSR
bra_BC01_RTS:
C - - - - - 0x007C11 01:BC01: 60        RTS



sub_BC02:
C - - - - - 0x007C12 01:BC02: A6 1E     LDX ram_index_ppu_buffer
C - - - - - 0x007C14 01:BC04: E0 50     CPX #$50
C - - - - - 0x007C16 01:BC06: B0 F9     BCS bra_BC01_RTS
; if buffer is not too loaded
C - - - - - 0x007C18 01:BC08: 18        CLC
C - - - - - 0x007C19 01:BC09: 65 FD     ADC ram_scroll_X
C - - - - - 0x007C1B 01:BC0B: 85 00     STA ram_0000
C - - - - - 0x007C1D 01:BC0D: A5 FF     LDA ram_for_2000
C - - - - - 0x007C1F 01:BC0F: 90 02     BCC bra_BC13
- - - - - - 0x007C21 01:BC11: 49 01     EOR #$01
bra_BC13:
C - - - - - 0x007C23 01:BC13: 29 01     AND #$01
C - - - - - 0x007C25 01:BC15: 09 08     ORA #$08
C - - - - - 0x007C27 01:BC17: 85 01     STA ram_0001
C - - - - - 0x007C29 01:BC19: A5 00     LDA ram_0000
C - - - - - 0x007C2B 01:BC1B: 29 F8     AND #$F8
C - - - - - 0x007C2D 01:BC1D: 4A        LSR
C - - - - - 0x007C2E 01:BC1E: 4A        LSR
C - - - - - 0x007C2F 01:BC1F: 4A        LSR
C - - - - - 0x007C30 01:BC20: 85 00     STA ram_0000
C - - - - - 0x007C32 01:BC22: 98        TYA
C - - - - - 0x007C33 01:BC23: 18        CLC
C - - - - - 0x007C34 01:BC24: 65 FC     ADC ram_scroll_Y
C - - - - - 0x007C36 01:BC26: B0 04     BCS bra_BC2C
C - - - - - 0x007C38 01:BC28: C9 F0     CMP #$F0
C - - - - - 0x007C3A 01:BC2A: 90 03     BCC bra_BC2F
bra_BC2C:
- - - - - - 0x007C3C 01:BC2C: 18        CLC
- - - - - - 0x007C3D 01:BC2D: 69 10     ADC #$10
bra_BC2F:
C - - - - - 0x007C3F 01:BC2F: 29 F8     AND #$F8
C - - - - - 0x007C41 01:BC31: 0A        ASL
C - - - - - 0x007C42 01:BC32: 26 01     ROL ram_0001
C - - - - - 0x007C44 01:BC34: 0A        ASL
C - - - - - 0x007C45 01:BC35: 26 01     ROL ram_0001
C - - - - - 0x007C47 01:BC37: 05 00     ORA ram_0000
C - - - - - 0x007C49 01:BC39: 85 00     STA ram_0000
sub_0x007C4B:
C - - - - - 0x007C4B 01:BC3B: A9 06     LDA #con_buf_mode_06
C - - - - - 0x007C4D 01:BC3D: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x007C50 01:BC40: E8        INX
C - - - - - 0x007C51 01:BC41: A9 02     LDA #$02
C - - - - - 0x007C53 01:BC43: 85 04     STA ram_0004
C - - - - - 0x007C55 01:BC45: A5 08     LDA ram_0008
C - - - - - 0x007C57 01:BC47: 0A        ASL
C - - - - - 0x007C58 01:BC48: 0A        ASL
C - - - - - 0x007C59 01:BC49: A8        TAY
bra_BC4A_loop:
C - - - - - 0x007C5A 01:BC4A: A5 01     LDA ram_0001    ; ppu hi
C - - - - - 0x007C5C 01:BC4C: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x007C5F 01:BC4F: E8        INX
C - - - - - 0x007C60 01:BC50: A5 00     LDA ram_0000    ; ppu lo
C - - - - - 0x007C62 01:BC52: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x007C65 01:BC55: E8        INX
C - - - - - 0x007C66 01:BC56: A9 02     LDA #$02    ; counter
C - - - - - 0x007C68 01:BC58: 85 05     STA ram_0005
C - - - - - 0x007C6A 01:BC5A: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x007C6D 01:BC5D: E8        INX
bra_BC5E_loop:
C - - - - - 0x007C6E 01:BC5E: B9 83 BC  LDA tbl_BC83,Y
C - - - - - 0x007C71 01:BC61: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x007C74 01:BC64: C8        INY
C - - - - - 0x007C75 01:BC65: E8        INX
C - - - - - 0x007C76 01:BC66: C6 05     DEC ram_0005
C - - - - - 0x007C78 01:BC68: D0 F4     BNE bra_BC5E_loop
C - - - - - 0x007C7A 01:BC6A: A5 00     LDA ram_0000
C - - - - - 0x007C7C 01:BC6C: 18        CLC
C - - - - - 0x007C7D 01:BC6D: 69 20     ADC #$20
C - - - - - 0x007C7F 01:BC6F: 85 00     STA ram_0000
C - - - - - 0x007C81 01:BC71: 90 02     BCC bra_BC75_not_overflow
- - - - - - 0x007C83 01:BC73: E6 01     INC ram_0001
bra_BC75_not_overflow:
C - - - - - 0x007C85 01:BC75: C6 04     DEC ram_0004
C - - - - - 0x007C87 01:BC77: D0 D1     BNE bra_BC4A_loop
C - - - - - 0x007C89 01:BC79: A9 FF     LDA #$FF
C - - - - - 0x007C8B 01:BC7B: 9D 00 03  STA ram_nmt_buffer,X
C - - - - - 0x007C8E 01:BC7E: E8        INX
C - - - - - 0x007C8F 01:BC7F: 86 1E     STX ram_index_ppu_buffer
C - - - - - 0x007C91 01:BC81: 18        CLC
C - - - - - 0x007C92 01:BC82: 60        RTS



tbl_BC83:
; 00
- D 1 - - - 0x007C93 01:BC83: 00        .byte $00, $00   ; 
- D 1 - - - 0x007C95 01:BC85: 00        .byte $00, $00   ; 
; 01
- D 1 - - - 0x007C97 01:BC87: BE        .byte $BE, $BF   ; 
- D 1 - - - 0x007C99 01:BC89: C0        .byte $C0, $C1   ; 
; 02
- D 1 - - - 0x007C9B 01:BC8B: 52        .byte $52, $53   ; 
- D 1 - - - 0x007C9D 01:BC8D: 5E        .byte $5E, $5F   ; 
; 03
- D 1 - - - 0x007C9F 01:BC8F: BA        .byte $BA, $BB   ; 
- D 1 - - - 0x007CA1 01:BC91: BC        .byte $BC, $BD   ; 
; 04
- D 1 - - - 0x007CA3 01:BC93: C2        .byte $C2, $C3   ; 
- D 1 - - - 0x007CA5 01:BC95: C4        .byte $C4, $C5   ; 


; bzk garbage
- - - - - - 0x007CA7 01:BC97: A9 06     LDA #con_buf_mode_06
- - - - - - 0x007CA9 01:BC99: 9D 00 03  STA ram_nmt_buffer,X
- - - - - - 0x007CAC 01:BC9C: E8        INX
- - - - - - 0x007CAD 01:BC9D: A9 04     LDA #$04
- - - - - - 0x007CAF 01:BC9F: 85 04     STA ram_0004
- - - - - - 0x007CB1 01:BCA1: A5 08     LDA ram_0008
- - - - - - 0x007CB3 01:BCA3: 0A        ASL
- - - - - - 0x007CB4 01:BCA4: 0A        ASL
- - - - - - 0x007CB5 01:BCA5: 0A        ASL
- - - - - - 0x007CB6 01:BCA6: A8        TAY
bra_BCA7_loop:
- - - - - - 0x007CB7 01:BCA7: A5 01     LDA ram_0001    ; ppu hi
- - - - - - 0x007CB9 01:BCA9: 9D 00 03  STA ram_nmt_buffer,X
- - - - - - 0x007CBC 01:BCAC: E8        INX
- - - - - - 0x007CBD 01:BCAD: A5 00     LDA ram_0000    ; ppu lo
- - - - - - 0x007CBF 01:BCAF: 9D 00 03  STA ram_nmt_buffer,X
- - - - - - 0x007CC2 01:BCB2: E8        INX
- - - - - - 0x007CC3 01:BCB3: A9 02     LDA #$02    ; counter
- - - - - - 0x007CC5 01:BCB5: 85 05     STA ram_0005
- - - - - - 0x007CC7 01:BCB7: 9D 00 03  STA ram_nmt_buffer,X
- - - - - - 0x007CCA 01:BCBA: E8        INX
bra_BCBB_loop:
- - - - - - 0x007CCB 01:BCBB: B9 E0 BC  LDA tbl_BCE0,Y
- - - - - - 0x007CCE 01:BCBE: 9D 00 03  STA ram_nmt_buffer,X
- - - - - - 0x007CD1 01:BCC1: C8        INY
- - - - - - 0x007CD2 01:BCC2: E8        INX
- - - - - - 0x007CD3 01:BCC3: C6 05     DEC ram_0005
- - - - - - 0x007CD5 01:BCC5: D0 F4     BNE bra_BCBB_loop
- - - - - - 0x007CD7 01:BCC7: A5 00     LDA ram_0000
- - - - - - 0x007CD9 01:BCC9: 18        CLC
- - - - - - 0x007CDA 01:BCCA: 69 20     ADC #$20
- - - - - - 0x007CDC 01:BCCC: 85 00     STA ram_0000
- - - - - - 0x007CDE 01:BCCE: 90 02     BCC bra_BCD2_not_overflow
- - - - - - 0x007CE0 01:BCD0: E6 01     INC ram_0001
bra_BCD2_not_overflow:
- - - - - - 0x007CE2 01:BCD2: C6 04     DEC ram_0004
- - - - - - 0x007CE4 01:BCD4: D0 D1     BNE bra_BCA7_loop
- - - - - - 0x007CE6 01:BCD6: A9 FF     LDA #$FF
- - - - - - 0x007CE8 01:BCD8: 9D 00 03  STA ram_nmt_buffer,X
- - - - - - 0x007CEB 01:BCDB: E8        INX
- - - - - - 0x007CEC 01:BCDC: 86 1E     STX ram_index_ppu_buffer
- - - - - - 0x007CEE 01:BCDE: 18        CLC
- - - - - - 0x007CEF 01:BCDF: 60        RTS



tbl_BCE0:
; bzk garbage
; 00 
- - - - - - 0x007CF0 01:BCE0: A6        .byte $A6, $A7   ; 
- - - - - - 0x007CF2 01:BCE2: A8        .byte $A8, $A9   ; 
- - - - - - 0x007CF4 01:BCE4: AA        .byte $AA, $AB   ; 
- - - - - - 0x007CF6 01:BCE6: AC        .byte $AC, $AD   ; 
; 01 
- - - - - - 0x007CF8 01:BCE8: AE        .byte $AE, $AF   ; 
- - - - - - 0x007CFA 01:BCEA: B0        .byte $B0, $B1   ; 
- - - - - - 0x007CFC 01:BCEC: B2        .byte $B2, $B3   ; 
- - - - - - 0x007CFE 01:BCEE: B4        .byte $B4, $B5   ; 
; 02 
- - - - - - 0x007D00 01:BCF0: B6        .byte $B6, $B6   ; 
- - - - - - 0x007D02 01:BCF2: B7        .byte $B7, $B8   ; 
- - - - - - 0x007D04 01:BCF4: B9        .byte $B9, $BA   ; 
- - - - - - 0x007D06 01:BCF6: BB        .byte $BB, $BC   ; 
; 03 
- - - - - - 0x007D08 01:BCF8: B6        .byte $B6, $B6   ; 
- - - - - - 0x007D0A 01:BCFA: BD        .byte $BD, $BE   ; 
- - - - - - 0x007D0C 01:BCFC: BF        .byte $BF, $C0   ; 
- - - - - - 0x007D0E 01:BCFE: C1        .byte $C1, $C2   ; 
; 04 
- - - - - - 0x007D10 01:BD00: D5        .byte $D5, $D6   ; 
- - - - - - 0x007D12 01:BD02: D7        .byte $D7, $D8   ; 
- - - - - - 0x007D14 01:BD04: D9        .byte $D9, $DA   ; 
- - - - - - 0x007D16 01:BD06: DB        .byte $DB, $DC   ; 
; 05 
- - - - - - 0x007D18 01:BD08: DD        .byte $DD, $DE   ; 
- - - - - - 0x007D1A 01:BD0A: DF        .byte $DF, $E0   ; 
- - - - - - 0x007D1C 01:BD0C: E1        .byte $E1, $E2   ; 
- - - - - - 0x007D1E 01:BD0E: DB        .byte $DB, $DC   ; 



sub_0x007D20_clear_0400_047F:
C - - - - - 0x007D20 01:BD10: A0 7F     LDY #$7F
sub_0x007D22_clear_0400_Y:
C - - - - - 0x007D22 01:BD12: A9 00     LDA #$00
bra_BD14_loop:
C - - - - - 0x007D24 01:BD14: 99 00 04  STA ram_0400_area_data_1,Y
C - - - - - 0x007D27 01:BD17: 88        DEY
C - - - - - 0x007D28 01:BD18: 10 FA     BPL bra_BD14_loop
C - - - - - 0x007D2A 01:BD1A: 60        RTS



sub_0x007D2B_clear_0480_04FF:
C - - - - - 0x007D2B 01:BD1B: A0 7F     LDY #$7F
sub_0x007D2D_clear_0480_Y:
C - - - - - 0x007D2D 01:BD1D: A9 00     LDA #$00
bra_BD1F_loop:
C - - - - - 0x007D2F 01:BD1F: 99 80 04  STA ram_0480_area_data_2,Y
C - - - - - 0x007D32 01:BD22: 88        DEY
C - - - - - 0x007D33 01:BD23: 10 FA     BPL bra_BD1F_loop
C - - - - - 0x007D35 01:BD25: 60        RTS


; bzk garbage
- - - - - - 0x007D36 01:BD26: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D40 01:BD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D50 01:BD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D60 01:BD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D70 01:BD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D80 01:BD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007D90 01:BD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007DA0 01:BD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007DB0 01:BDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007DC0 01:BDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007DD0 01:BDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007DE0 01:BDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007DF0 01:BDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E00 01:BDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E10 01:BE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E20 01:BE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E30 01:BE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E40 01:BE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E50 01:BE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E60 01:BE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E70 01:BE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E80 01:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007E90 01:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007EA0 01:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007EB0 01:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007EC0 01:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007ED0 01:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007EE0 01:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007EF0 01:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F00 01:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F10 01:BF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F20 01:BF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F30 01:BF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F40 01:BF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F50 01:BF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F60 01:BF50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F70 01:BF60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F80 01:BF70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007F90 01:BF80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007FA0 01:BF90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007FB0 01:BFA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007FC0 01:BFB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007FD0 01:BFC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007FE0 01:BFD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x007FF0 01:BFE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x008000 01:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 33: 0x%04X [%d]", ($BFFF - *), ($BFFF - *))



.segment "BANK_33b"
- D 1 - - - 0x00800F 01:BFFF: 33        .byte con_prg_bank + $33   ; 



