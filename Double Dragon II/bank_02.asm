.segment "BANK_02"
.include "bank_ram.inc"
.include "bank_val.inc"
.org $8000  ; for listing file
; 0x008010-0x00C00F



.export sub_0x008010
.export sub_0x008013
.export sub_0x008016
.export sub_0x008019



sub_0x008010:
C D 0 - - - 0x008010 02:8000: 4C 0E 80  JMP loc_800E

sub_0x008013:
C - - - - - 0x008013 02:8003: 4C 00 AD  JMP loc_AD00

sub_0x008016:
C - - - - - 0x008016 02:8006: 4C 00 A8  JMP loc_A800

sub_0x008019:
C - - - - - 0x008019 02:8009: 4C CF AC  JMP loc_ACCF


; bzk garbage
- - - - - - 0x00801C 02:800C: 00        .byte $00, $00   ; 



loc_800E:
C D 0 - - - 0x00801E 02:800E: 20 86 A0  JSR sub_A086
C - - - - - 0x008021 02:8011: A5 C1     LDA ram_obj_id + $02
C - - - - - 0x008023 02:8013: C9 11     CMP #con_obj_shadow_warrior
C - - - - - 0x008025 02:8015: D0 41     BNE bra_8058
C - - - - - 0x008027 02:8017: A5 3E     LDA ram_003C_obj + $02
C - - - - - 0x008029 02:8019: 10 3D     BPL bra_8058    ; if not con_003C_80
C - - - - - 0x00802B 02:801B: A5 4C     LDA ram_004A_obj + $02
C - - - - - 0x00802D 02:801D: 29 C0     AND #con_004A_40 + con_004A_80
C - - - - - 0x00802F 02:801F: C9 C0     CMP #con_004A_40 + con_004A_80
C - - - - - 0x008031 02:8021: D0 35     BNE bra_8058
C - - - - - 0x008033 02:8023: AD 20 04  LDA ram_hp + $02
C - - - - - 0x008036 02:8026: D0 30     BNE bra_8058    ; if still alive
; if dead
C - - - - - 0x008038 02:8028: AD 43 06  LDA ram_0643
C - - - - - 0x00803B 02:802B: C9 0F     CMP #$0F
C - - - - - 0x00803D 02:802D: B0 19     BCS bra_8048
C - - - - - 0x00803F 02:802F: A5 E8     LDA ram_for_2001
C - - - - - 0x008041 02:8031: 09 01     ORA #$01
C - - - - - 0x008043 02:8033: 85 E8     STA ram_for_2001
C - - - - - 0x008045 02:8035: AD 43 06  LDA ram_0643
C - - - - - 0x008048 02:8038: D0 0A     BNE bra_8044
C - - - - - 0x00804A 02:803A: A9 00     LDA #con_music_off
C - - - - - 0x00804C 02:803C: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x00804F 02:803F: A9 52     LDA #con_sfx_final_boss_hit
C - - - - - 0x008051 02:8041: 20 06 C0  JSR sub_0x01C016_play_sound
bra_8044:
C - - - - - 0x008054 02:8044: EE 43 06  INC ram_0643
C - - - - - 0x008057 02:8047: 60        RTS
bra_8048:
C - - - - - 0x008058 02:8048: A5 E8     LDA ram_for_2001
C - - - - - 0x00805A 02:804A: 29 FE     AND #$FE
C - - - - - 0x00805C 02:804C: 85 E8     STA ram_for_2001
C - - - - - 0x00805E 02:804E: AD A5 04  LDA ram_04A5_counter
C - - - - - 0x008061 02:8051: 29 03     AND #$03
C - - - - - 0x008063 02:8053: C9 03     CMP #$03
C - - - - - 0x008065 02:8055: F0 01     BEQ bra_8058
C - - - - - 0x008067 02:8057: 60        RTS
bra_8058:
C - - - - - 0x008068 02:8058: A0 00     LDY #$00
bra_805A_loop:
C - - - - - 0x00806A 02:805A: B9 3C 00  LDA a: ram_003C_obj,Y ; 003C 003D 003E 003F 0040 0041 0042
C - - - - - 0x00806D 02:805D: 10 0B     BPL bra_806A    ; if not con_003C_80
C - - - - - 0x00806F 02:805F: 29 20     AND #con_003C_20
C - - - - - 0x008071 02:8061: D0 07     BNE bra_806A
C - - - - - 0x008073 02:8063: 98        TYA
C - - - - - 0x008074 02:8064: 48        PHA
C - - - - - 0x008075 02:8065: 20 AD 80  JSR sub_80AD_state_handler
C - - - - - 0x008078 02:8068: 68        PLA
C - - - - - 0x008079 02:8069: A8        TAY
bra_806A:
C - - - - - 0x00807A 02:806A: C8        INY
C - - - - - 0x00807B 02:806B: C0 07     CPY #$07
C - - - - - 0x00807D 02:806D: 90 EB     BCC bra_805A_loop
C - - - - - 0x00807F 02:806F: A2 00     LDX #$00
bra_8071_loop:
C - - - - - 0x008081 02:8071: B5 3C     LDA ram_003C_obj,X ; 003C 003D
C - - - - - 0x008083 02:8073: 10 2F     BPL bra_80A4    ; if not con_003C_80
C - - - - - 0x008085 02:8075: BD CC 03  LDA ram_03CC_plr,X
C - - - - - 0x008088 02:8078: C9 FF     CMP #$FF
C - - - - - 0x00808A 02:807A: F0 28     BEQ bra_80A4
C - - - - - 0x00808C 02:807C: B5 C7     LDA ram_animation_id,X
C - - - - - 0x00808E 02:807E: 29 7F     AND #$7F
C - - - - - 0x008090 02:8080: C9 7F     CMP #$7F
C - - - - - 0x008092 02:8082: D0 0D     BNE bra_8091
C - - - - - 0x008094 02:8084: B5 43     LDA ram_state,X
C - - - - - 0x008096 02:8086: 29 7F     AND #$7F
C - - - - - 0x008098 02:8088: C9 7F     CMP #con_state_7F
C - - - - - 0x00809A 02:808A: F0 15     BEQ bra_80A1
C - - - - - 0x00809C 02:808C: BD CE 03  LDA ram_03CE_plr,X
C - - - - - 0x00809F 02:808F: 95 C7     STA ram_animation_id,X
bra_8091:
C - - - - - 0x0080A1 02:8091: BD CC 03  LDA ram_03CC_plr,X
C - - - - - 0x0080A4 02:8094: 29 01     AND #$01
C - - - - - 0x0080A6 02:8096: F0 09     BEQ bra_80A1
C - - - - - 0x0080A8 02:8098: B5 C7     LDA ram_animation_id,X
C - - - - - 0x0080AA 02:809A: 9D CE 03  STA ram_03CE_plr,X
C - - - - - 0x0080AD 02:809D: A9 7F     LDA #$7F
C - - - - - 0x0080AF 02:809F: 95 C7     STA ram_animation_id,X
bra_80A1:
C - - - - - 0x0080B1 02:80A1: FE CC 03  INC ram_03CC_plr,X
bra_80A4:
C - - - - - 0x0080B4 02:80A4: E8        INX
C - - - - - 0x0080B5 02:80A5: E0 02     CPX #$02
C - - - - - 0x0080B7 02:80A7: 90 C8     BCC bra_8071_loop
C - - - - - 0x0080B9 02:80A9: 20 C3 A3  JSR sub_A3C3
C - - - - - 0x0080BC 02:80AC: 60        RTS



sub_80AD_state_handler:
C - - - - - 0x0080BD 02:80AD: 85 19     STA ram_0019
C - - - - - 0x0080BF 02:80AF: AA        TAX
C - - - - - 0x0080C0 02:80B0: B5 43     LDA ram_state,X
C - - - - - 0x0080C2 02:80B2: 30 03     BMI bra_80B7
C - - - - - 0x0080C4 02:80B4: FE C1 03  INC ram_03C1_obj,X
bra_80B7:
C - - - - - 0x0080C7 02:80B7: B5 43     LDA ram_state,X
C - - - - - 0x0080C9 02:80B9: 0A        ASL
C - - - - - 0x0080CA 02:80BA: A8        TAY
C - - - - - 0x0080CB 02:80BB: B9 CA 80  LDA tbl_80CA_state_handler,Y
C - - - - - 0x0080CE 02:80BE: 85 29     STA ram_0029
C - - - - - 0x0080D0 02:80C0: B9 CB 80  LDA tbl_80CA_state_handler + $01,Y
C - - - - - 0x0080D3 02:80C3: 85 2A     STA ram_002A
C - - - - - 0x0080D5 02:80C5: A6 19     LDX ram_0019
C - - - - - 0x0080D7 02:80C7: 6C 29 00  JMP (ram_0029)

tbl_80CA_state_handler:
- D 0 - - - 0x0080DA 02:80CA: CA 81     .word ofs_000_81CA_00_idle
- D 0 - - - 0x0080DC 02:80CC: F2 81     .word ofs_000_81F2_01
- D 0 - - - 0x0080DE 02:80CE: 5C 82     .word ofs_000_825C_02
- D 0 - - - 0x0080E0 02:80D0: 87 82     .word ofs_000_8287_03
- D 0 - - - 0x0080E2 02:80D2: DB 82     .word ofs_000_82DB_04
- D 0 - - - 0x0080E4 02:80D4: F3 82     .word ofs_000_82F3_05
- D 0 - - - 0x0080E6 02:80D6: 43 83     .word ofs_000_8343_06_jump
- D 0 - - - 0x0080E8 02:80D8: 70 83     .word ofs_000_8370_07
- D 0 - - - 0x0080EA 02:80DA: BB 83     .word ofs_000_83BB_08
- D 0 - - - 0x0080EC 02:80DC: F9 83     .word ofs_000_83F9_09
- - - - - - 0x0080EE 02:80DE: 26 84     .word ofs_000_8426_0A
- D 0 - - - 0x0080F0 02:80E0: 53 84     .word ofs_000_8453_0B
- D 0 - - - 0x0080F2 02:80E2: 9B 84     .word ofs_000_849B_0C
- D 0 - - - 0x0080F4 02:80E4: 50 85     .word ofs_000_8550_0D
- D 0 - - - 0x0080F6 02:80E6: AE 85     .word ofs_000_85AE_0E
- D 0 - - - 0x0080F8 02:80E8: D0 85     .word ofs_000_85D0_0F
- D 0 - - - 0x0080FA 02:80EA: 07 86     .word ofs_000_8607_10
- D 0 - - - 0x0080FC 02:80EC: 2D 86     .word ofs_000_862D_11
- D 0 - - - 0x0080FE 02:80EE: 79 86     .word ofs_000_8679_12_land
- D 0 - - - 0x008100 02:80F0: A1 86     .word ofs_000_86A1_13
- D 0 - - - 0x008102 02:80F2: C0 86     .word ofs_000_86C0_14
- D 0 - - - 0x008104 02:80F4: E5 86     .word ofs_000_86E5_15
- D 0 - - - 0x008106 02:80F6: 08 87     .word ofs_000_8708_16
- D 0 - - - 0x008108 02:80F8: 2B 87     .word ofs_000_872B_17
- D 0 - - - 0x00810A 02:80FA: 4E 87     .word ofs_000_874E_18
- D 0 - - - 0x00810C 02:80FC: 79 87     .word ofs_000_8779_19
- D 0 - - - 0x00810E 02:80FE: CD 87     .word ofs_000_87CD_1A
- D 0 - - - 0x008110 02:8100: 11 88     .word ofs_000_8811_1B
- D 0 - - - 0x008112 02:8102: 46 88     .word ofs_000_8846_1C
- D 0 - - - 0x008114 02:8104: 7B 88     .word ofs_000_887B_1D
- D 0 - - - 0x008116 02:8106: AB 88     .word ofs_000_88AB_1E
- D 0 - - - 0x008118 02:8108: 0D 89     .word ofs_000_890D_1F
- D 0 - - - 0x00811A 02:810A: 40 89     .word ofs_000_8940_20
- D 0 - - - 0x00811C 02:810C: 7A 89     .word ofs_000_897A_21
- D 0 - - - 0x00811E 02:810E: B4 89     .word ofs_000_89B4_22
- D 0 - - - 0x008120 02:8110: EE 89     .word ofs_000_89EE_23
- D 0 - - - 0x008122 02:8112: 14 8A     .word ofs_000_8A14_24
- D 0 - - - 0x008124 02:8114: 5F 8A     .word ofs_000_8A5F_25
- D 0 - - - 0x008126 02:8116: 6B 8A     .word ofs_000_8A6B_26
- D 0 - - - 0x008128 02:8118: 3F 8B     .word ofs_000_8B3F_27
- D 0 - - - 0x00812A 02:811A: 97 8B     .word ofs_000_8B97_28
- D 0 - - - 0x00812C 02:811C: ED 8B     .word ofs_000_8BED_29
- D 0 - - - 0x00812E 02:811E: 0C 8C     .word ofs_000_8C0C_2A
- D 0 - - - 0x008130 02:8120: 57 8C     .word ofs_000_8C57_2B
- D 0 - - - 0x008132 02:8122: 71 8C     .word ofs_000_8C71_2C
- D 0 - - - 0x008134 02:8124: 94 8C     .word ofs_000_8C94_2D
- D 0 - - - 0x008136 02:8126: 08 8D     .word ofs_000_8D08_2E
- D 0 - - - 0x008138 02:8128: 1C 8D     .word ofs_000_8D1C_2F
- D 0 - - - 0x00813A 02:812A: 32 8D     .word ofs_000_8D32_30
- D 0 - - - 0x00813C 02:812C: 57 8D     .word ofs_000_8D57_31
- D 0 - - - 0x00813E 02:812E: 8E 8D     .word ofs_000_8D8E_32
- D 0 - - - 0x008140 02:8130: 9F 8D     .word ofs_000_8D9F_33
- D 0 - - - 0x008142 02:8132: D0 8D     .word ofs_000_8DD0_34
- D 0 - - - 0x008144 02:8134: FC 8D     .word ofs_000_8DFC_35
- D 0 - - - 0x008146 02:8136: 22 8E     .word ofs_000_8E22_36
- - - - - - 0x008148 02:8138: 40 8E     .word ofs_000_8E40_37
- D 0 - - - 0x00814A 02:813A: 5A 8E     .word ofs_000_8E5A_38
- D 0 - - - 0x00814C 02:813C: 7B 8E     .word ofs_000_8E7B_39
- D 0 - - - 0x00814E 02:813E: 9E 8E     .word ofs_000_8E9E_3A
- D 0 - - - 0x008150 02:8140: E3 8E     .word ofs_000_8EE3_3B
- D 0 - - - 0x008152 02:8142: E6 8E     .word ofs_000_8EE6_3C
- D 0 - - - 0x008154 02:8144: 13 8F     .word ofs_000_8F13_3D
- D 0 - - - 0x008156 02:8146: 5F 8F     .word ofs_000_8F5F_3E
- D 0 - - - 0x008158 02:8148: 80 8F     .word ofs_000_8F80_3F
- D 0 - - - 0x00815A 02:814A: E4 8F     .word ofs_000_8FE4_40
- D 0 - - - 0x00815C 02:814C: F9 8F     .word ofs_000_8FF9_41
- D 0 - - - 0x00815E 02:814E: 12 90     .word ofs_000_9012_42
- D 0 - - - 0x008160 02:8150: B8 90     .word ofs_000_90B8_43
- D 0 - - - 0x008162 02:8152: CF 90     .word ofs_000_90CF_44
- D 0 - - - 0x008164 02:8154: 37 91     .word ofs_000_9137_45
- - - - - - 0x008166 02:8156: 7E 91     .word ofs_000_917E_46
- D 0 - - - 0x008168 02:8158: 90 91     .word ofs_000_9190_47
- D 0 - - - 0x00816A 02:815A: D2 91     .word ofs_000_91D2_48
- D 0 - - - 0x00816C 02:815C: 08 92     .word ofs_000_9208_49
- D 0 - - - 0x00816E 02:815E: 2D 92     .word ofs_000_922D_4A
- D 0 - - - 0x008170 02:8160: 55 92     .word ofs_000_9255_4B
- D 0 - - - 0x008172 02:8162: 69 92     .word ofs_000_9269_4C
- D 0 - - - 0x008174 02:8164: D2 92     .word ofs_000_92D2_4D
- D 0 - - - 0x008176 02:8166: 2F 93     .word ofs_000_932F_4E
- D 0 - - - 0x008178 02:8168: 93 93     .word ofs_000_9393_4F
- D 0 - - - 0x00817A 02:816A: 31 94     .word ofs_000_9431_50
- D 0 - - - 0x00817C 02:816C: B5 94     .word ofs_000_94B5_51
- D 0 - - - 0x00817E 02:816E: 26 95     .word ofs_000_9526_52
- D 0 - - - 0x008180 02:8170: AF 95     .word ofs_000_95AF_53
- D 0 - - - 0x008182 02:8172: 25 96     .word ofs_000_9625_54
- D 0 - - - 0x008184 02:8174: 67 96     .word ofs_000_9667_55
- D 0 - - - 0x008186 02:8176: ED 96     .word ofs_000_96ED_56
- D 0 - - - 0x008188 02:8178: 98 97     .word ofs_000_9798_57
- D 0 - - - 0x00818A 02:817A: D9 97     .word ofs_000_97D9_58
- D 0 - - - 0x00818C 02:817C: 09 98     .word ofs_000_9809_59
- D 0 - - - 0x00818E 02:817E: 31 98     .word ofs_000_9831_5A
- D 0 - - - 0x008190 02:8180: 6B 98     .word ofs_000_986B_5B
- D 0 - - - 0x008192 02:8182: 86 98     .word ofs_000_9886_5C
- D 0 - - - 0x008194 02:8184: A4 98     .word ofs_000_98A4_5D
- D 0 - - - 0x008196 02:8186: CE 98     .word ofs_000_98CE_5E
- D 0 - - - 0x008198 02:8188: 01 99     .word ofs_000_9901_5F
- - - - - - 0x00819A 02:818A: 41 99     .word ofs_000_9941_60
- - - - - - 0x00819C 02:818C: 41 99     .word ofs_000_9941_61
- - - - - - 0x00819E 02:818E: 41 99     .word ofs_000_9941_62
- - - - - - 0x0081A0 02:8190: 41 99     .word ofs_000_9941_63
- - - - - - 0x0081A2 02:8192: 41 99     .word ofs_000_9941_64
- D 0 - - - 0x0081A4 02:8194: 41 99     .word ofs_000_9941_65
- D 0 - - - 0x0081A6 02:8196: 7E 99     .word ofs_000_997E_66
- D 0 - - - 0x0081A8 02:8198: D1 99     .word ofs_000_99D1_67
- D 0 - - - 0x0081AA 02:819A: F9 99     .word ofs_000_99F9_68
- D 0 - - - 0x0081AC 02:819C: 10 9A     .word ofs_000_9A10_69
- D 0 - - - 0x0081AE 02:819E: 3F 9A     .word ofs_000_9A3F_6A
- D 0 - - - 0x0081B0 02:81A0: 8B 9A     .word ofs_000_9A8B_6B
- D 0 - - - 0x0081B2 02:81A2: AC 9A     .word ofs_000_9AAC_6C
- D 0 - - - 0x0081B4 02:81A4: FB 9A     .word ofs_000_9AFB_6D
- D 0 - - - 0x0081B6 02:81A6: 20 9B     .word ofs_000_9B20_6E
- D 0 - - - 0x0081B8 02:81A8: 3D 9B     .word ofs_000_9B3D_6F
- D 0 - - - 0x0081BA 02:81AA: 79 9B     .word ofs_000_9B79_70
- D 0 - - - 0x0081BC 02:81AC: A9 9B     .word ofs_000_9BA9_71
- D 0 - - - 0x0081BE 02:81AE: 05 9C     .word ofs_000_9C05_72
- D 0 - - - 0x0081C0 02:81B0: 33 9C     .word ofs_000_9C33_73
- D 0 - - - 0x0081C2 02:81B2: 92 9C     .word ofs_000_9C92_74
- D 0 - - - 0x0081C4 02:81B4: FF 9C     .word ofs_000_9CFF_75
- D 0 - - - 0x0081C6 02:81B6: 20 9D     .word ofs_000_9D20_76
- D 0 - - - 0x0081C8 02:81B8: 3E 9D     .word ofs_000_9D3E_77
- D 0 - - - 0x0081CA 02:81BA: 59 9D     .word ofs_000_9D59_78
- - - - - - 0x0081CC 02:81BC: AE 9D     .word ofs_000_9DAE_79_RTS
- - - - - - 0x0081CE 02:81BE: AE 9D     .word ofs_000_9DAE_7A_RTS
- - - - - - 0x0081D0 02:81C0: AE 9D     .word ofs_000_9DAE_7B_RTS
- - - - - - 0x0081D2 02:81C2: AE 9D     .word ofs_000_9DAE_7C_RTS
- - - - - - 0x0081D4 02:81C4: AF 9D     .word ofs_000_9DAF_7D
- D 0 - - - 0x0081D6 02:81C6: C8 9D     .word ofs_000_9DC8_7E
- D 0 - - - 0x0081D8 02:81C8: CE 9D     .word ofs_000_9DCE_7F



ofs_000_81CA_00_idle:
C - - J - - 0x0081DA 02:81CA: BD 16 03  LDA ram_0316_obj,X
C - - - - - 0x0081DD 02:81CD: 4A        LSR
C - - - - - 0x0081DE 02:81CE: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x0081E1 02:81D1: B5 43     LDA ram_state,X
C - - - - - 0x0081E3 02:81D3: 30 16     BMI bra_81EB
C - - - - - 0x0081E5 02:81D5: 09 80     ORA #$80
C - - - - - 0x0081E7 02:81D7: 95 43     STA ram_state,X
C - - - - - 0x0081E9 02:81D9: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x0081EB 02:81DB: 29 3C     AND #(con_004A_40 + con_004A_80 + con_004A_01 + con_004A_02) ^ $FF
C - - - - - 0x0081ED 02:81DD: 95 4A     STA ram_004A_obj,X
C - - - - - 0x0081EF 02:81DF: B5 C7     LDA ram_animation_id,X
C - - - - - 0x0081F1 02:81E1: 29 7F     AND #$7F
C - - - - - 0x0081F3 02:81E3: C9 03     CMP #$03
C - - - - - 0x0081F5 02:81E5: 90 04     BCC bra_81EB
C - - - - - 0x0081F7 02:81E7: A9 02     LDA #$02
C - - - - - 0x0081F9 02:81E9: 95 C7     STA ram_animation_id,X
bra_81EB:
C - - - - - 0x0081FB 02:81EB: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x0081FE 02:81EE: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008201 02:81F1: 60        RTS



ofs_000_81F2_01:
C - - J - - 0x008202 02:81F2: B5 43     LDA ram_state,X
C - - - - - 0x008204 02:81F4: 30 23     BMI bra_8219
C - - - - - 0x008206 02:81F6: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008209 02:81F9: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x00820B 02:81FB: 29 3E     AND #(con_004A_40 + con_004A_80 + con_004A_01) ^ $FF
C - - - - - 0x00820D 02:81FD: 95 4A     STA ram_004A_obj,X
C - - - - - 0x00820F 02:81FF: B4 BF     LDY ram_obj_id,X
C - - - - - 0x008211 02:8201: B9 40 82  LDA tbl_8240,Y
C - - - - - 0x008214 02:8204: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008217 02:8207: A9 04     LDA #$04
C - - - - - 0x008219 02:8209: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x00821B 02:820B: B5 C7     LDA ram_animation_id,X
C - - - - - 0x00821D 02:820D: 29 7F     AND #$7F
C - - - - - 0x00821F 02:820F: C9 03     CMP #$03
C - - - - - 0x008221 02:8211: B0 06     BCS bra_8219
C - - - - - 0x008223 02:8213: A8        TAY
C - - - - - 0x008224 02:8214: B9 54 82  LDA tbl_8254,Y
C - - - - - 0x008227 02:8217: 95 5C     STA ram_animation_counter,X
bra_8219:
C - - - - - 0x008229 02:8219: F6 55     INC ram_animation_frame_counter,X
C - - - - - 0x00822B 02:821B: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x00822D 02:821D: C9 05     CMP #$05
C - - - - - 0x00822F 02:821F: 90 18     BCC bra_8239
C - - - - - 0x008231 02:8221: A9 00     LDA #$00
C - - - - - 0x008233 02:8223: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x008235 02:8225: B5 5C     LDA ram_animation_counter,X
C - - - - - 0x008237 02:8227: A8        TAY
C - - - - - 0x008238 02:8228: B9 58 82  LDA tbl_8258,Y
C - - - - - 0x00823B 02:822B: 95 C7     STA ram_animation_id,X
C - - - - - 0x00823D 02:822D: F6 5C     INC ram_animation_counter,X
C - - - - - 0x00823F 02:822F: A9 03     LDA #$03
C - - - - - 0x008241 02:8231: D5 5C     CMP ram_animation_counter,X
C - - - - - 0x008243 02:8233: B0 04     BCS bra_8239
C - - - - - 0x008245 02:8235: A9 00     LDA #$00
C - - - - - 0x008247 02:8237: 95 5C     STA ram_animation_counter,X
bra_8239:
C - - - - - 0x008249 02:8239: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x00824C 02:823C: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x00824F 02:823F: 60        RTS



tbl_8240:
- D 0 - - - 0x008250 02:8240: 04        .byte $04   ; 00 con_obj_billy
- D 0 - - - 0x008251 02:8241: 04        .byte $04   ; 01 con_obj_jimmy
- D 0 - - - 0x008252 02:8242: 02        .byte $02   ; 02 con_obj_williams
- D 0 - - - 0x008253 02:8243: 02        .byte $02   ; 03 con_obj_roper
- D 0 - - - 0x008254 02:8244: 02        .byte $02   ; 04 con_obj_linda
- - - - - - 0x008255 02:8245: 02        .byte $02   ; 05 con_obj_05
- D 0 - - - 0x008256 02:8246: 02        .byte $02   ; 06 con_obj_bolo
- D 0 - - - 0x008257 02:8247: 02        .byte $02   ; 07 con_obj_burnov
- D 0 - - - 0x008258 02:8248: 02        .byte $02   ; 08 con_obj_abore
- D 0 - - - 0x008259 02:8249: 02        .byte $02   ; 09 con_obj_chin_taimei
- D 0 - - - 0x00825A 02:824A: 02        .byte $02   ; 0A con_obj_right_arm
- - - - - - 0x00825B 02:824B: 02        .byte $02   ; 0B con_obj_0B
- D 0 - - - 0x00825C 02:824C: 04        .byte $04   ; 0C con_obj_doppelganger
- - - - - - 0x00825D 02:824D: 02        .byte $02   ; 0D con_obj_0D
- - - - - - 0x00825E 02:824E: 02        .byte $02   ; 0E con_obj_0E
- - - - - - 0x00825F 02:824F: 02        .byte $02   ; 0F con_obj_ninja
- - - - - - 0x008260 02:8250: 02        .byte $02   ; 10 con_obj_10
- D 0 - - - 0x008261 02:8251: 04        .byte $04   ; 11 con_obj_shadow_warrior
- - - - - - 0x008262 02:8252: 02        .byte $02   ; 12 con_obj_knife
- - - - - - 0x008263 02:8253: 02        .byte $02   ; 13 con_obj_13



tbl_8254:
- D 0 - - - 0x008264 02:8254: 01        .byte $01   ; 00
- D 0 - - - 0x008265 02:8255: 02        .byte $02   ; 01
- D 0 - - - 0x008266 02:8256: 01        .byte $01   ; 02
- - - - - - 0x008267 02:8257: 00        .byte $00   ; 03



tbl_8258:
- D 0 - - - 0x008268 02:8258: 00        .byte $00   ; 00
- D 0 - - - 0x008269 02:8259: 01        .byte $01   ; 01
- D 0 - - - 0x00826A 02:825A: 02        .byte $02   ; 02
- D 0 - - - 0x00826B 02:825B: 01        .byte $01   ; 03



ofs_000_825C_02:
C - - J - - 0x00826C 02:825C: B5 43     LDA ram_state,X
C - - - - - 0x00826E 02:825E: 30 11     BMI bra_8271
C - - - - - 0x008270 02:8260: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008273 02:8263: A0 05     LDY #$05
C - - - - - 0x008275 02:8265: B5 BF     LDA ram_obj_id,X
C - - - - - 0x008277 02:8267: C9 0F     CMP #con_obj_ninja
C - - - - - 0x008279 02:8269: D0 02     BNE bra_826D
C - - - - - 0x00827B 02:826B: A0 08     LDY #$08
bra_826D:
C - - - - - 0x00827D 02:826D: 98        TYA
C - - - - - 0x00827E 02:826E: 9D 16 03  STA ram_0316_obj,X
bra_8271:
C - - - - - 0x008281 02:8271: A9 00     LDA #$00
C - - - - - 0x008283 02:8273: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008286 02:8276: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x008289 02:8279: 60        RTS



_off000_827A_00:
- D 0 - I - 0x00828A 02:827A: 1A        .byte $1A   ; 
- D 0 - I - 0x00828B 02:827B: 1B        .byte $1B   ; 
- D 0 - I - 0x00828C 02:827C: 1C        .byte $1C   ; 
- D 0 - I - 0x00828D 02:827D: 1D        .byte $1D   ; 
- D 0 - I - 0x00828E 02:827E: 1E        .byte $1E   ; 
- D 0 - I - 0x00828F 02:827F: 1F        .byte $1F   ; 
- D 0 - I - 0x008290 02:8280: FE        .byte $FE   ; 



_off001_8281_00:
- D 0 - I - 0x008291 02:8281: 01        .byte $01   ; 
- D 0 - I - 0x008292 02:8282: 01        .byte $01   ; 
- D 0 - I - 0x008293 02:8283: 01        .byte $01   ; 
- D 0 - I - 0x008294 02:8284: 01        .byte $01   ; 
- D 0 - I - 0x008295 02:8285: 01        .byte $01   ; 
- D 0 - I - 0x008296 02:8286: 01        .byte $01   ; 



ofs_000_8287_03:
C - - J - - 0x008297 02:8287: B5 43     LDA ram_state,X
C - - - - - 0x008299 02:8289: 30 1A     BMI bra_82A5
C - - - - - 0x00829B 02:828B: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x00829E 02:828E: A9 00     LDA #$00
C - - - - - 0x0082A0 02:8290: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x0082A3 02:8293: A9 06     LDA #$06
C - - - - - 0x0082A5 02:8295: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x0082A7 02:8297: A9 04     LDA #$04
C - - - - - 0x0082A9 02:8299: B5 C7     LDA ram_animation_id,X
C - - - - - 0x0082AB 02:829B: 29 7F     AND #$7F
C - - - - - 0x0082AD 02:829D: C9 04     CMP #$04
C - - - - - 0x0082AF 02:829F: F0 04     BEQ bra_82A5
C - - - - - 0x0082B1 02:82A1: A9 01     LDA #$01
C - - - - - 0x0082B3 02:82A3: 95 5C     STA ram_animation_counter,X
bra_82A5:
C - - - - - 0x0082B5 02:82A5: F6 55     INC ram_animation_frame_counter,X
C - - - - - 0x0082B7 02:82A7: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x0082B9 02:82A9: C9 06     CMP #$06
C - - - - - 0x0082BB 02:82AB: 90 18     BCC bra_82C5
C - - - - - 0x0082BD 02:82AD: A9 00     LDA #$00
C - - - - - 0x0082BF 02:82AF: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x0082C1 02:82B1: B5 5C     LDA ram_animation_counter,X
C - - - - - 0x0082C3 02:82B3: A8        TAY
C - - - - - 0x0082C4 02:82B4: B9 D9 82  LDA tbl_82D9,Y
C - - - - - 0x0082C7 02:82B7: 95 C7     STA ram_animation_id,X
C - - - - - 0x0082C9 02:82B9: F6 5C     INC ram_animation_counter,X
C - - - - - 0x0082CB 02:82BB: A9 01     LDA #$01
C - - - - - 0x0082CD 02:82BD: D5 5C     CMP ram_animation_counter,X
C - - - - - 0x0082CF 02:82BF: B0 04     BCS bra_82C5
C - - - - - 0x0082D1 02:82C1: A9 00     LDA #$00
C - - - - - 0x0082D3 02:82C3: 95 5C     STA ram_animation_counter,X
bra_82C5:
C - - - - - 0x0082D5 02:82C5: B5 A4     LDA ram_00A4_obj,X
C - - - - - 0x0082D7 02:82C7: 18        CLC
C - - - - - 0x0082D8 02:82C8: 69 80     ADC #< $0180
C - - - - - 0x0082DA 02:82CA: 95 A4     STA ram_00A4_obj,X
C - - - - - 0x0082DC 02:82CC: B5 AD     LDA ram_pos_Z_lo,X
C - - - - - 0x0082DE 02:82CE: 69 01     ADC #> $0180
C - - - - - 0x0082E0 02:82D0: 95 AD     STA ram_pos_Z_lo,X
C - - - - - 0x0082E2 02:82D2: B5 B6     LDA ram_pos_Z_hi,X
C - - - - - 0x0082E4 02:82D4: 69 00     ADC #$00
C - - - - - 0x0082E6 02:82D6: 95 B6     STA ram_pos_Z_hi,X
C - - - - - 0x0082E8 02:82D8: 60        RTS



tbl_82D9:
- D 0 - - - 0x0082E9 02:82D9: 03        .byte $03   ; 
- D 0 - - - 0x0082EA 02:82DA: 04        .byte $04   ; 



ofs_000_82DB_04:
C - - J - - 0x0082EB 02:82DB: B5 43     LDA ram_state,X
C - - - - - 0x0082ED 02:82DD: 30 13     BMI bra_82F2_RTS
C - - - - - 0x0082EF 02:82DF: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0082F2 02:82E2: B5 C7     LDA ram_animation_id,X
C - - - - - 0x0082F4 02:82E4: 29 7F     AND #$7F
C - - - - - 0x0082F6 02:82E6: C9 03     CMP #$03
C - - - - - 0x0082F8 02:82E8: F0 08     BEQ bra_82F2_RTS
C - - - - - 0x0082FA 02:82EA: C9 04     CMP #$04
C - - - - - 0x0082FC 02:82EC: F0 04     BEQ bra_82F2_RTS
C - - - - - 0x0082FE 02:82EE: A9 03     LDA #$03
C - - - - - 0x008300 02:82F0: 95 C7     STA ram_animation_id,X
bra_82F2_RTS:
C - - - - - 0x008302 02:82F2: 60        RTS



ofs_000_82F3_05:
C - - J - - 0x008303 02:82F3: B5 43     LDA ram_state,X
C - - - - - 0x008305 02:82F5: 30 18     BMI bra_830F
C - - - - - 0x008307 02:82F7: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x00830A 02:82FA: A9 06     LDA #$06
C - - - - - 0x00830C 02:82FC: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x00830E 02:82FE: A9 00     LDA #$00
C - - - - - 0x008310 02:8300: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008313 02:8303: B5 C7     LDA ram_animation_id,X
C - - - - - 0x008315 02:8305: 29 7F     AND #$7F
C - - - - - 0x008317 02:8307: C9 04     CMP #$04
C - - - - - 0x008319 02:8309: F0 04     BEQ bra_830F
C - - - - - 0x00831B 02:830B: A9 01     LDA #$01
C - - - - - 0x00831D 02:830D: 95 5C     STA ram_animation_counter,X
bra_830F:
C - - - - - 0x00831F 02:830F: F6 55     INC ram_animation_frame_counter,X
C - - - - - 0x008321 02:8311: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x008323 02:8313: C9 06     CMP #$06
C - - - - - 0x008325 02:8315: 90 18     BCC bra_832F
C - - - - - 0x008327 02:8317: A9 00     LDA #$00
C - - - - - 0x008329 02:8319: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x00832B 02:831B: B5 5C     LDA ram_animation_counter,X
C - - - - - 0x00832D 02:831D: A8        TAY
C - - - - - 0x00832E 02:831E: B9 D9 82  LDA tbl_82D9,Y
C - - - - - 0x008331 02:8321: 95 C7     STA ram_animation_id,X
C - - - - - 0x008333 02:8323: F6 5C     INC ram_animation_counter,X
C - - - - - 0x008335 02:8325: A9 01     LDA #$01
C - - - - - 0x008337 02:8327: D5 5C     CMP ram_animation_counter,X
C - - - - - 0x008339 02:8329: B0 04     BCS bra_832F
C - - - - - 0x00833B 02:832B: A9 00     LDA #$00
C - - - - - 0x00833D 02:832D: 95 5C     STA ram_animation_counter,X
bra_832F:
C - - - - - 0x00833F 02:832F: B5 A4     LDA ram_00A4_obj,X
C - - - - - 0x008341 02:8331: 38        SEC
C - - - - - 0x008342 02:8332: E9 80     SBC #< $0180
C - - - - - 0x008344 02:8334: 95 A4     STA ram_00A4_obj,X
C - - - - - 0x008346 02:8336: B5 AD     LDA ram_pos_Z_lo,X
C - - - - - 0x008348 02:8338: E9 01     SBC #> $0180
C - - - - - 0x00834A 02:833A: 95 AD     STA ram_pos_Z_lo,X
C - - - - - 0x00834C 02:833C: B5 B6     LDA ram_pos_Z_hi,X
C - - - - - 0x00834E 02:833E: E9 00     SBC #$00
C - - - - - 0x008350 02:8340: 95 B6     STA ram_pos_Z_hi,X
C - - - - - 0x008352 02:8342: 60        RTS



ofs_000_8343_06_jump:
C - - J - - 0x008353 02:8343: B5 43     LDA ram_state,X
C - - - - - 0x008355 02:8345: 30 1F     BMI bra_8366
C - - - - - 0x008357 02:8347: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x00835A 02:834A: 20 69 A0  JSR sub_A069
C - - - - - 0x00835D 02:834D: A9 00     LDA #$00
C - - - - - 0x00835F 02:834F: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008362 02:8352: A9 09     LDA #$09
C - - - - - 0x008364 02:8354: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x008367 02:8357: A9 05     LDA #$05
C - - - - - 0x008369 02:8359: 95 C7     STA ram_animation_id,X
C - - - - - 0x00836B 02:835B: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x00836D 02:835D: 09 80     ORA #con_004A_80
C - - - - - 0x00836F 02:835F: 95 4A     STA ram_004A_obj,X
C - - - - - 0x008371 02:8361: A9 1D     LDA #con_sfx_jump
C - - - - - 0x008373 02:8363: 20 06 C0  JSR sub_0x01C016_play_sound
bra_8366:
C - - - - - 0x008376 02:8366: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008379 02:8369: 20 73 A0  JSR sub_A073
C - - - - - 0x00837C 02:836C: 20 10 9E  JSR sub_9E10
C - - - - - 0x00837F 02:836F: 60        RTS



ofs_000_8370_07:
C - - J - - 0x008380 02:8370: B5 43     LDA ram_state,X
C - - - - - 0x008382 02:8372: 30 31     BMI bra_83A5
C - - - - - 0x008384 02:8374: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008387 02:8377: 20 69 A0  JSR sub_A069
C - - - - - 0x00838A 02:837A: A9 02     LDA #$02
C - - - - - 0x00838C 02:837C: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x00838F 02:837F: A9 03     LDA #$03
C - - - - - 0x008391 02:8381: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x008394 02:8384: A9 05     LDA #$05
C - - - - - 0x008396 02:8386: 95 C7     STA ram_animation_id,X
C - - - - - 0x008398 02:8388: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x00839A 02:838A: 09 80     ORA #con_004A_80
C - - - - - 0x00839C 02:838C: 95 4A     STA ram_004A_obj,X
C - - - - - 0x00839E 02:838E: A9 1D     LDA #con_sfx_jump
C - - - - - 0x0083A0 02:8390: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x0083A3 02:8393: A9 0A     LDA #$0A
C - - - - - 0x0083A5 02:8395: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x0083A7 02:8397: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x0083AA 02:839A: 10 09     BPL bra_83A5
C - - - - - 0x0083AC 02:839C: 29 7F     AND #$7F
C - - - - - 0x0083AE 02:839E: C9 04     CMP #$04
C - - - - - 0x0083B0 02:83A0: B0 03     BCS bra_83A5
- - - - - - 0x0083B2 02:83A2: 20 45 A3  JSR sub_A345
bra_83A5:
C - - - - - 0x0083B5 02:83A5: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x0083B7 02:83A7: D0 05     BNE bra_83AE
C - - - - - 0x0083B9 02:83A9: A9 00     LDA #$00
C - - - - - 0x0083BB 02:83AB: 9D 16 03  STA ram_0316_obj,X
bra_83AE:
C - - - - - 0x0083BE 02:83AE: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x0083C1 02:83B1: 20 73 A0  JSR sub_A073
C - - - - - 0x0083C4 02:83B4: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x0083C7 02:83B7: 20 10 9E  JSR sub_9E10
C - - - - - 0x0083CA 02:83BA: 60        RTS



ofs_000_83BB_08:
C - - J - - 0x0083CB 02:83BB: B5 43     LDA ram_state,X
C - - - - - 0x0083CD 02:83BD: 30 2D     BMI bra_83EC
C - - - - - 0x0083CF 02:83BF: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0083D2 02:83C2: 20 69 A0  JSR sub_A069
C - - - - - 0x0083D5 02:83C5: A9 04     LDA #$04
C - - - - - 0x0083D7 02:83C7: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x0083DA 02:83CA: A9 09     LDA #$09
C - - - - - 0x0083DC 02:83CC: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x0083DF 02:83CF: A9 05     LDA #$05
C - - - - - 0x0083E1 02:83D1: 95 C7     STA ram_animation_id,X
C - - - - - 0x0083E3 02:83D3: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x0083E5 02:83D5: 09 80     ORA #con_004A_80
C - - - - - 0x0083E7 02:83D7: 95 4A     STA ram_004A_obj,X
C - - - - - 0x0083E9 02:83D9: A9 1D     LDA #con_sfx_jump
C - - - - - 0x0083EB 02:83DB: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x0083EE 02:83DE: E0 02     CPX #$02
C - - - - - 0x0083F0 02:83E0: B0 0A     BCS bra_83EC
C - - - - - 0x0083F2 02:83E2: BD 0F 03  LDA ram_030F_obj,X
C - - - - - 0x0083F5 02:83E5: D0 05     BNE bra_83EC
- - - - - - 0x0083F7 02:83E7: A9 00     LDA #$00
- - - - - - 0x0083F9 02:83E9: 9D 16 03  STA ram_0316_obj,X
bra_83EC:
C - - - - - 0x0083FC 02:83EC: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x0083FF 02:83EF: 20 73 A0  JSR sub_A073
C - - - - - 0x008402 02:83F2: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x008405 02:83F5: 20 10 9E  JSR sub_9E10
C - - - - - 0x008408 02:83F8: 60        RTS



ofs_000_83F9_09:
C - - J - - 0x008409 02:83F9: B5 43     LDA ram_state,X
C - - - - - 0x00840B 02:83FB: 30 1F     BMI bra_841C
C - - - - - 0x00840D 02:83FD: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008410 02:8400: 20 69 A0  JSR sub_A069
C - - - - - 0x008413 02:8403: A9 05     LDA #$05
C - - - - - 0x008415 02:8405: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008418 02:8408: A9 08     LDA #$08
C - - - - - 0x00841A 02:840A: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x00841D 02:840D: A9 05     LDA #$05
C - - - - - 0x00841F 02:840F: 95 C7     STA ram_animation_id,X
C - - - - - 0x008421 02:8411: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x008423 02:8413: 09 80     ORA #con_004A_80
C - - - - - 0x008425 02:8415: 95 4A     STA ram_004A_obj,X
C - - - - - 0x008427 02:8417: A9 1D     LDA #con_sfx_jump
C - - - - - 0x008429 02:8419: 20 06 C0  JSR sub_0x01C016_play_sound
bra_841C:
C - - - - - 0x00842C 02:841C: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x00842F 02:841F: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x008432 02:8422: 20 10 9E  JSR sub_9E10
C - - - - - 0x008435 02:8425: 60        RTS



ofs_000_8426_0A:
- - - - - - 0x008436 02:8426: B5 43     LDA ram_state,X
- - - - - - 0x008438 02:8428: 30 1F     BMI bra_8449
- - - - - - 0x00843A 02:842A: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
- - - - - - 0x00843D 02:842D: 20 69 A0  JSR sub_A069
- - - - - - 0x008440 02:8430: A9 08     LDA #$08
- - - - - - 0x008442 02:8432: 9D 16 03  STA ram_0316_obj,X
- - - - - - 0x008445 02:8435: A9 0A     LDA #$0A
- - - - - - 0x008447 02:8437: 9D 25 03  STA ram_0325_obj,X
- - - - - - 0x00844A 02:843A: A9 05     LDA #$05
- - - - - - 0x00844C 02:843C: 95 C7     STA ram_animation_id,X
- - - - - - 0x00844E 02:843E: B5 4A     LDA ram_004A_obj,X
- - - - - - 0x008450 02:8440: 09 80     ORA #con_004A_80
- - - - - - 0x008452 02:8442: 95 4A     STA ram_004A_obj,X
- - - - - - 0x008454 02:8444: A9 1D     LDA #con_sfx_jump
- - - - - - 0x008456 02:8446: 20 06 C0  JSR sub_0x01C016_play_sound
bra_8449:
- - - - - - 0x008459 02:8449: 20 F8 9D  JSR sub_9DF8
- - - - - - 0x00845C 02:844C: 20 4B 9E  JSR sub_9E4B
- - - - - - 0x00845F 02:844F: 20 10 9E  JSR sub_9E10
- - - - - - 0x008462 02:8452: 60        RTS



ofs_000_8453_0B:
C - - J - - 0x008463 02:8453: B5 43     LDA ram_state,X
C - - - - - 0x008465 02:8455: 30 36     BMI bra_848D
C - - - - - 0x008467 02:8457: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x00846A 02:845A: 20 69 A0  JSR sub_A069
C - - - - - 0x00846D 02:845D: A9 08     LDA #$08
C - - - - - 0x00846F 02:845F: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x008472 02:8462: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x008474 02:8464: 09 80     ORA #con_004A_80
C - - - - - 0x008476 02:8466: 95 4A     STA ram_004A_obj,X
C - - - - - 0x008478 02:8468: A9 03     LDA #$03
C - - - - - 0x00847A 02:846A: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x00847D 02:846D: A0 80     LDY #$80
C - - - - - 0x00847F 02:846F: BD 0F 03  LDA ram_030F_obj,X
C - - - - - 0x008482 02:8472: C9 80     CMP #$80
C - - - - - 0x008484 02:8474: 90 02     BCC bra_8478
C - - - - - 0x008486 02:8476: A0 00     LDY #$00
bra_8478:
C - - - - - 0x008488 02:8478: 98        TYA
C - - - - - 0x008489 02:8479: 95 63     STA ram_0063_obj,X
C - - - - - 0x00848B 02:847B: B5 AD     LDA ram_pos_Z_lo,X
C - - - - - 0x00848D 02:847D: 18        CLC
C - - - - - 0x00848E 02:847E: 69 0C     ADC #< $000C
C - - - - - 0x008490 02:8480: 95 AD     STA ram_pos_Z_lo,X
C - - - - - 0x008492 02:8482: B5 B6     LDA ram_pos_Z_hi,X
C - - - - - 0x008494 02:8484: 69 00     ADC #> $000C
C - - - - - 0x008496 02:8486: 95 B6     STA ram_pos_Z_hi,X
C - - - - - 0x008498 02:8488: A9 1D     LDA #con_sfx_jump
C - - - - - 0x00849A 02:848A: 20 06 C0  JSR sub_0x01C016_play_sound
bra_848D:
C - - - - - 0x00849D 02:848D: A9 01     LDA #$01
C - - - - - 0x00849F 02:848F: 4C D2 9F  JMP loc_9FD2



_off000_8492_01:
_off000_8492_02:
- D 0 - I - 0x0084A2 02:8492: 04        .byte $04   ; 
- D 0 - I - 0x0084A3 02:8493: 20        .byte $20   ; 
- D 0 - I - 0x0084A4 02:8494: 21        .byte $21   ; 
- D 0 - I - 0x0084A5 02:8495: 22        .byte $22   ; 
- D 0 - I - 0x0084A6 02:8496: 93        .byte $93   ; 



_off001_8497_01:
- D 0 - I - 0x0084A7 02:8497: 02        .byte $02   ; 
- D 0 - I - 0x0084A8 02:8498: 03        .byte $03   ; 
- D 0 - I - 0x0084A9 02:8499: 02        .byte $02   ; 
- D 0 - I - 0x0084AA 02:849A: 03        .byte $03   ; 



ofs_000_849B_0C:
C - - J - - 0x0084AB 02:849B: B5 43     LDA ram_state,X
C - - - - - 0x0084AD 02:849D: 30 36     BMI bra_84D5
C - - - - - 0x0084AF 02:849F: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0084B2 02:84A2: 20 69 A0  JSR sub_A069
C - - - - - 0x0084B5 02:84A5: A9 0D     LDA #$0D
C - - - - - 0x0084B7 02:84A7: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x0084BA 02:84AA: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x0084BC 02:84AC: 09 80     ORA #con_004A_80
C - - - - - 0x0084BE 02:84AE: 95 4A     STA ram_004A_obj,X
C - - - - - 0x0084C0 02:84B0: A9 0A     LDA #$0A
C - - - - - 0x0084C2 02:84B2: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x0084C5 02:84B5: A0 80     LDY #$80
C - - - - - 0x0084C7 02:84B7: BD 0F 03  LDA ram_030F_obj,X
C - - - - - 0x0084CA 02:84BA: C9 80     CMP #$80
C - - - - - 0x0084CC 02:84BC: 90 02     BCC bra_84C0
C - - - - - 0x0084CE 02:84BE: A0 00     LDY #$00
bra_84C0:
C - - - - - 0x0084D0 02:84C0: 98        TYA
C - - - - - 0x0084D1 02:84C1: 95 63     STA ram_0063_obj,X
C - - - - - 0x0084D3 02:84C3: B5 AD     LDA ram_pos_Z_lo,X
C - - - - - 0x0084D5 02:84C5: 18        CLC
C - - - - - 0x0084D6 02:84C6: 69 0C     ADC #< $000C
C - - - - - 0x0084D8 02:84C8: 95 AD     STA ram_pos_Z_lo,X
C - - - - - 0x0084DA 02:84CA: B5 B6     LDA ram_pos_Z_hi,X
C - - - - - 0x0084DC 02:84CC: 69 00     ADC #> $000C
C - - - - - 0x0084DE 02:84CE: 95 B6     STA ram_pos_Z_hi,X
C - - - - - 0x0084E0 02:84D0: A9 1D     LDA #con_sfx_jump
C - - - - - 0x0084E2 02:84D2: 20 06 C0  JSR sub_0x01C016_play_sound
bra_84D5:
C - - - - - 0x0084E5 02:84D5: A9 02     LDA #$02
C - - - - - 0x0084E7 02:84D7: 20 D2 9F  JSR sub_9FD2
C - - - - - 0x0084EA 02:84DA: A6 19     LDX ram_0019
C - - - - - 0x0084EC 02:84DC: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x0084EF 02:84DF: 10 6A     BPL bra_854B_RTS
C - - - - - 0x0084F1 02:84E1: B5 C7     LDA ram_animation_id,X
C - - - - - 0x0084F3 02:84E3: 29 7F     AND #$7F
C - - - - - 0x0084F5 02:84E5: C9 21     CMP #$21
C - - - - - 0x0084F7 02:84E7: D0 62     BNE bra_854B_RTS
C - - - - - 0x0084F9 02:84E9: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x0084FB 02:84EB: D0 5E     BNE bra_854B_RTS
C - - - - - 0x0084FD 02:84ED: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x008500 02:84F0: 29 7F     AND #$7F
C - - - - - 0x008502 02:84F2: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x008505 02:84F5: A8        TAY
C - - - - - 0x008506 02:84F6: 20 66 A4  JSR sub_A466
C - - - - - 0x008509 02:84F9: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x00850C 02:84FC: 29 DF     AND #con_004A_20 ^ $FF
C - - - - - 0x00850E 02:84FE: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x008511 02:8501: 8A        TXA
C - - - - - 0x008512 02:8502: 99 4A 04  STA ram_044A_obj,Y
C - - - - - 0x008515 02:8505: A9 00     LDA #$00
C - - - - - 0x008517 02:8507: 9D 46 04  STA ram_0446_obj,X
C - - - - - 0x00851A 02:850A: 85 29     STA ram_0029
C - - - - - 0x00851C 02:850C: 85 2A     STA ram_002A
C - - - - - 0x00851E 02:850E: 20 EC 9F  JSR sub_9FEC
C - - - - - 0x008521 02:8511: A9 78     LDA #con_state_78
C - - - - - 0x008523 02:8513: 99 43 00  STA a: ram_state,Y
C - - - - - 0x008526 02:8516: A9 40     LDA #$40
C - - - - - 0x008528 02:8518: 99 0F 03  STA ram_030F_obj,Y
C - - - - - 0x00852B 02:851B: BD 54 04  LDA ram_0454,X
C - - - - - 0x00852E 02:851E: A8        TAY
C - - - - - 0x00852F 02:851F: B9 77 00  LDA a: ram_pos_X_lo,Y
C - - - - - 0x008532 02:8522: 38        SEC
C - - - - - 0x008533 02:8523: F5 77     SBC ram_pos_X_lo,X
C - - - - - 0x008535 02:8525: 85 29     STA ram_0029
C - - - - - 0x008537 02:8527: B9 80 00  LDA a: ram_pos_X_hi,Y
C - - - - - 0x00853A 02:852A: F5 80     SBC ram_pos_X_hi,X
C - - - - - 0x00853C 02:852C: B0 11     BCS bra_853F
C - - - - - 0x00853E 02:852E: BC 4A 04  LDY ram_044A_obj,X
C - - - - - 0x008541 02:8531: A9 C0     LDA #$C0
C - - - - - 0x008543 02:8533: 99 0F 03  STA ram_030F_obj,Y
C - - - - - 0x008546 02:8536: A5 29     LDA ram_0029
C - - - - - 0x008548 02:8538: 49 FF     EOR #$FF
C - - - - - 0x00854A 02:853A: 18        CLC
C - - - - - 0x00854B 02:853B: 69 01     ADC #$01
C - - - - - 0x00854D 02:853D: 85 29     STA ram_0029
bra_853F:
C - - - - - 0x00854F 02:853F: A5 29     LDA ram_0029
C - - - - - 0x008551 02:8541: 4A        LSR
C - - - - - 0x008552 02:8542: 4A        LSR
C - - - - - 0x008553 02:8543: 4A        LSR
C - - - - - 0x008554 02:8544: 4A        LSR
C - - - - - 0x008555 02:8545: BC 4A 04  LDY ram_044A_obj,X
C - - - - - 0x008558 02:8548: 99 16 03  STA ram_0316_obj,Y
bra_854B_RTS:
C - - - - - 0x00855B 02:854B: 60        RTS



_off001_854C_02:
- D 0 - I - 0x00855C 02:854C: 04        .byte $04   ; 
- D 0 - I - 0x00855D 02:854D: 04        .byte $04   ; 
- D 0 - I - 0x00855E 02:854E: 03        .byte $03   ; 
- D 0 - I - 0x00855F 02:854F: 04        .byte $04   ; 



ofs_000_8550_0D:
C - - J - - 0x008560 02:8550: B5 43     LDA ram_state,X
C - - - - - 0x008562 02:8552: 30 08     BMI bra_855C
C - - - - - 0x008564 02:8554: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008567 02:8557: A9 37     LDA #con_sfx_somersault
C - - - - - 0x008569 02:8559: 20 06 C0  JSR sub_0x01C016_play_sound
bra_855C:
C - - - - - 0x00856C 02:855C: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x00856E 02:855E: D0 1E     BNE bra_857E
C - - - - - 0x008570 02:8560: A9 00     LDA #$00
C - - - - - 0x008572 02:8562: 85 2A     STA ram_002A
C - - - - - 0x008574 02:8564: B5 5C     LDA ram_animation_counter,X
C - - - - - 0x008576 02:8566: A8        TAY
C - - - - - 0x008577 02:8567: B9 A7 85  LDA tbl_85A7,Y
C - - - - - 0x00857A 02:856A: 85 29     STA ram_0029
C - - - - - 0x00857C 02:856C: B5 63     LDA ram_0063_obj,X
C - - - - - 0x00857E 02:856E: 10 09     BPL bra_8579
C - - - - - 0x008580 02:8570: A5 29     LDA ram_0029
C - - - - - 0x008582 02:8572: 49 FF     EOR #$FF
C - - - - - 0x008584 02:8574: 18        CLC
C - - - - - 0x008585 02:8575: 69 01     ADC #$01
C - - - - - 0x008587 02:8577: 85 29     STA ram_0029
bra_8579:
C - - - - - 0x008589 02:8579: 8A        TXA
C - - - - - 0x00858A 02:857A: A8        TAY
C - - - - - 0x00858B 02:857B: 20 EC 9F  JSR sub_9FEC
bra_857E:
C - - - - - 0x00858E 02:857E: A9 03     LDA #$03
C - - - - - 0x008590 02:8580: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008593 02:8583: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x008595 02:8585: 29 01     AND #con_004A_01
C - - - - - 0x008597 02:8587: F0 10     BEQ bra_8599_RTS
C - - - - - 0x008599 02:8589: B5 5C     LDA ram_animation_counter,X
C - - - - - 0x00859B 02:858B: C9 04     CMP #$04
C - - - - - 0x00859D 02:858D: 90 0A     BCC bra_8599_RTS
C - - - - - 0x00859F 02:858F: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x0085A1 02:8591: 29 FE     AND #con_004A_01 ^ $FF
C - - - - - 0x0085A3 02:8593: 95 4A     STA ram_004A_obj,X
C - - - - - 0x0085A5 02:8595: A9 00     LDA #con_state_00
C - - - - - 0x0085A7 02:8597: 95 43     STA ram_state,X
bra_8599_RTS:
C - - - - - 0x0085A9 02:8599: 60        RTS



_off000_859A_03:
- D 0 - I - 0x0085AA 02:859A: 20        .byte $20   ; 
- D 0 - I - 0x0085AB 02:859B: 21        .byte $21   ; 
- D 0 - I - 0x0085AC 02:859C: 22        .byte $22   ; 
- D 0 - I - 0x0085AD 02:859D: 23        .byte $23   ; 
- D 0 - I - 0x0085AE 02:859E: 24        .byte $24   ; 
- D 0 - I - 0x0085AF 02:859F: 00        .byte $00   ; 
- D 0 - I - 0x0085B0 02:85A0: FE        .byte $FE   ; 



_off001_85A1_03:
- D 0 - I - 0x0085B1 02:85A1: 02        .byte $02   ; 
- D 0 - I - 0x0085B2 02:85A2: 02        .byte $02   ; 
- D 0 - I - 0x0085B3 02:85A3: 02        .byte $02   ; 
- D 0 - I - 0x0085B4 02:85A4: 02        .byte $02   ; 
- D 0 - I - 0x0085B5 02:85A5: 02        .byte $02   ; 
- D 0 - I - 0x0085B6 02:85A6: 02        .byte $02   ; 



tbl_85A7:
- D 0 - - - 0x0085B7 02:85A7: 08        .byte $08   ; 
- D 0 - - - 0x0085B8 02:85A8: 03        .byte $03   ; 
- D 0 - - - 0x0085B9 02:85A9: 09        .byte $09   ; 
- D 0 - - - 0x0085BA 02:85AA: 09        .byte $09   ; 
- D 0 - - - 0x0085BB 02:85AB: 03        .byte $03   ; 
- D 0 - - - 0x0085BC 02:85AC: 08        .byte $08   ; 
- D 0 - - - 0x0085BD 02:85AD: 03        .byte $03   ; 



ofs_000_85AE_0E:
C - - J - - 0x0085BE 02:85AE: B5 43     LDA ram_state,X
C - - - - - 0x0085C0 02:85B0: 30 0E     BMI bra_85C0
C - - - - - 0x0085C2 02:85B2: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0085C5 02:85B5: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x0085C7 02:85B7: 09 02     ORA #con_004A_02
C - - - - - 0x0085C9 02:85B9: 95 4A     STA ram_004A_obj,X
C - - - - - 0x0085CB 02:85BB: A9 03     LDA #$03
C - - - - - 0x0085CD 02:85BD: 9D 16 03  STA ram_0316_obj,X
bra_85C0:
C - - - - - 0x0085D0 02:85C0: A9 04     LDA #$04
C - - - - - 0x0085D2 02:85C2: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x0085D5 02:85C5: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x0085D8 02:85C8: 60        RTS



_off000_85C9_04:
- D 0 - I - 0x0085D9 02:85C9: 4A        .byte $4A   ; 
- D 0 - I - 0x0085DA 02:85CA: 4B        .byte $4B   ; 
- D 0 - I - 0x0085DB 02:85CB: 4C        .byte $4C   ; 
- D 0 - I - 0x0085DC 02:85CC: 8F        .byte $8F   ; 



_off001_85CD_04:
- D 0 - I - 0x0085DD 02:85CD: 04        .byte $04   ; 
- D 0 - I - 0x0085DE 02:85CE: 04        .byte $04   ; 
- D 0 - I - 0x0085DF 02:85CF: 04        .byte $04   ; 



ofs_000_85D0_0F:
C - - J - - 0x0085E0 02:85D0: B5 43     LDA ram_state,X
C - - - - - 0x0085E2 02:85D2: 30 0B     BMI bra_85DF
C - - - - - 0x0085E4 02:85D4: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0085E7 02:85D7: A9 7F     LDA #$7F
C - - - - - 0x0085E9 02:85D9: 95 C7     STA ram_animation_id,X
C - - - - - 0x0085EB 02:85DB: A9 50     LDA #$50
C - - - - - 0x0085ED 02:85DD: 95 55     STA ram_animation_frame_counter,X
bra_85DF:
C - - - - - 0x0085EF 02:85DF: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x0085F1 02:85E1: D0 23     BNE bra_8606_RTS
C - - - - - 0x0085F3 02:85E3: BD 54 04  LDA ram_0454,X
C - - - - - 0x0085F6 02:85E6: A8        TAY
C - - - - - 0x0085F7 02:85E7: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x0085FA 02:85EA: 10 16     BPL bra_8602
C - - - - - 0x0085FC 02:85EC: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x0085FF 02:85EF: 29 C0     AND #con_004A_40 + con_004A_80
C - - - - - 0x008601 02:85F1: D0 0F     BNE bra_8602
C - - - - - 0x008603 02:85F3: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x008606 02:85F6: 09 02     ORA #con_004A_02
C - - - - - 0x008608 02:85F8: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x00860B 02:85FB: A9 40     LDA #con_state_40
C - - - - - 0x00860D 02:85FD: 95 43     STA ram_state,X
C - - - - - 0x00860F 02:85FF: 4C 06 86  JMP loc_8606_RTS
bra_8602:
C - - - - - 0x008612 02:8602: A9 10     LDA #con_state_10
C - - - - - 0x008614 02:8604: 95 43     STA ram_state,X
bra_8606_RTS:
loc_8606_RTS:
C D 0 - - - 0x008616 02:8606: 60        RTS



ofs_000_8607_10:
C - - J - - 0x008617 02:8607: B5 43     LDA ram_state,X
C - - - - - 0x008619 02:8609: 30 08     BMI bra_8613
C - - - - - 0x00861B 02:860B: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x00861E 02:860E: A9 03     LDA #$03
C - - - - - 0x008620 02:8610: 9D 16 03  STA ram_0316_obj,X
bra_8613:
C - - - - - 0x008623 02:8613: A9 05     LDA #$05
C - - - - - 0x008625 02:8615: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008628 02:8618: B5 43     LDA ram_state,X
C - - - - - 0x00862A 02:861A: D0 06     BNE bra_8622
C - - - - - 0x00862C 02:861C: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x00862E 02:861E: 29 FD     AND #con_004A_02 ^ $FF
C - - - - - 0x008630 02:8620: 95 4A     STA ram_004A_obj,X
bra_8622:
C - - - - - 0x008632 02:8622: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x008635 02:8625: 60        RTS



_off000_8626_05:
- D 0 - I - 0x008636 02:8626: 4C        .byte $4C   ; 
- D 0 - I - 0x008637 02:8627: 4B        .byte $4B   ; 
- D 0 - I - 0x008638 02:8628: 4A        .byte $4A   ; 
- D 0 - I - 0x008639 02:8629: 80        .byte $80   ; 



_off001_862A_05:
- D 0 - I - 0x00863A 02:862A: 04        .byte $04   ; 
- D 0 - I - 0x00863B 02:862B: 04        .byte $04   ; 
- D 0 - I - 0x00863C 02:862C: 04        .byte $04   ; 



ofs_000_862D_11:
C - - J - - 0x00863D 02:862D: B5 43     LDA ram_state,X
C - - - - - 0x00863F 02:862F: 30 3C     BMI bra_866D
C - - - - - 0x008641 02:8631: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008644 02:8634: A9 00     LDA #$00
C - - - - - 0x008646 02:8636: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008649 02:8639: A9 08     LDA #$08
C - - - - - 0x00864B 02:863B: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x00864D 02:863D: A9 06     LDA #$06
C - - - - - 0x00864F 02:863F: 95 C7     STA ram_animation_id,X
C - - - - - 0x008651 02:8641: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x008654 02:8644: A8        TAY
C - - - - - 0x008655 02:8645: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x008658 02:8648: 29 A0     AND #con_004A_80 + con_004A_20
C - - - - - 0x00865A 02:864A: D0 21     BNE bra_866D
C - - - - - 0x00865C 02:864C: C0 04     CPY #$04
C - - - - - 0x00865E 02:864E: 90 1D     BCC bra_866D
C - - - - - 0x008660 02:8650: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x008663 02:8653: 09 20     ORA #con_004A_20
C - - - - - 0x008665 02:8655: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x008668 02:8658: A9 7F     LDA #con_state_7F
C - - - - - 0x00866A 02:865A: 99 43 00  STA a: ram_state,Y
C - - - - - 0x00866D 02:865D: BD 46 04  LDA ram_0446_obj,X
C - - - - - 0x008670 02:8660: 09 80     ORA #$80
C - - - - - 0x008672 02:8662: 9D 46 04  STA ram_0446_obj,X
C - - - - - 0x008675 02:8665: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x008678 02:8668: 09 80     ORA #$80
C - - - - - 0x00867A 02:866A: 9D 4A 04  STA ram_044A_obj,X
bra_866D:
C - - - - - 0x00867D 02:866D: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x00867F 02:866F: D0 04     BNE bra_8675
C - - - - - 0x008681 02:8671: A9 00     LDA #con_state_00
C - - - - - 0x008683 02:8673: 95 43     STA ram_state,X
bra_8675:
C - - - - - 0x008685 02:8675: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008688 02:8678: 60        RTS



ofs_000_8679_12_land:
C - - J - - 0x008689 02:8679: B5 43     LDA ram_state,X
C - - - - - 0x00868B 02:867B: 30 14     BMI bra_8691
C - - - - - 0x00868D 02:867D: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008690 02:8680: A9 00     LDA #$00
C - - - - - 0x008692 02:8682: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008695 02:8685: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x008697 02:8687: A9 06     LDA #$06
C - - - - - 0x008699 02:8689: 95 C7     STA ram_animation_id,X
C - - - - - 0x00869B 02:868B: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x00869D 02:868D: 29 3F     AND #(con_004A_40 + con_004A_80) ^ $FF
C - - - - - 0x00869F 02:868F: 95 4A     STA ram_004A_obj,X
bra_8691:
C - - - - - 0x0086A1 02:8691: F6 55     INC ram_animation_frame_counter,X
C - - - - - 0x0086A3 02:8693: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x0086A5 02:8695: C9 08     CMP #$08
C - - - - - 0x0086A7 02:8697: 90 04     BCC bra_869D
C - - - - - 0x0086A9 02:8699: A9 00     LDA #con_state_00
C - - - - - 0x0086AB 02:869B: 95 43     STA ram_state,X
bra_869D:
C - - - - - 0x0086AD 02:869D: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x0086B0 02:86A0: 60        RTS



ofs_000_86A1_13:
C - - J - - 0x0086B1 02:86A1: B5 43     LDA ram_state,X
C - - - - - 0x0086B3 02:86A3: 30 0E     BMI bra_86B3
C - - - - - 0x0086B5 02:86A5: 09 80     ORA #$80
C - - - - - 0x0086B7 02:86A7: 95 43     STA ram_state,X
C - - - - - 0x0086B9 02:86A9: A9 05     LDA #$05
C - - - - - 0x0086BB 02:86AB: 95 C7     STA ram_animation_id,X
C - - - - - 0x0086BD 02:86AD: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x0086BF 02:86AF: 09 80     ORA #con_004A_80
C - - - - - 0x0086C1 02:86B1: 95 4A     STA ram_004A_obj,X
bra_86B3:
C - - - - - 0x0086C3 02:86B3: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x0086C6 02:86B6: 20 73 A0  JSR sub_A073
C - - - - - 0x0086C9 02:86B9: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x0086CC 02:86BC: 20 10 9E  JSR sub_9E10
C - - - - - 0x0086CF 02:86BF: 60        RTS



ofs_000_86C0_14:
C - - J - - 0x0086D0 02:86C0: B5 43     LDA ram_state,X
C - - - - - 0x0086D2 02:86C2: 30 11     BMI bra_86D5
C - - - - - 0x0086D4 02:86C4: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0086D7 02:86C7: A9 00     LDA #$00
C - - - - - 0x0086D9 02:86C9: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x0086DC 02:86CC: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x0086DE 02:86CE: A9 07     LDA #$07
C - - - - - 0x0086E0 02:86D0: 95 C7     STA ram_animation_id,X
C - - - - - 0x0086E2 02:86D2: 20 43 A4  JSR sub_A443
bra_86D5:
C - - - - - 0x0086E5 02:86D5: F6 55     INC ram_animation_frame_counter,X
C - - - - - 0x0086E7 02:86D7: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x0086E9 02:86D9: C9 06     CMP #$06
C - - - - - 0x0086EB 02:86DB: 90 04     BCC bra_86E1
C - - - - - 0x0086ED 02:86DD: A9 00     LDA #con_state_00
C - - - - - 0x0086EF 02:86DF: 95 43     STA ram_state,X
bra_86E1:
C - - - - - 0x0086F1 02:86E1: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x0086F4 02:86E4: 60        RTS



ofs_000_86E5_15:
C - - J - - 0x0086F5 02:86E5: B5 43     LDA ram_state,X
C - - - - - 0x0086F7 02:86E7: 30 0F     BMI bra_86F8
C - - - - - 0x0086F9 02:86E9: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0086FC 02:86EC: A9 00     LDA #$00
C - - - - - 0x0086FE 02:86EE: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008701 02:86F1: A9 08     LDA #$08
C - - - - - 0x008703 02:86F3: 95 C7     STA ram_animation_id,X
C - - - - - 0x008705 02:86F5: 20 43 A4  JSR sub_A443
bra_86F8:
C - - - - - 0x008708 02:86F8: F6 55     INC ram_animation_frame_counter,X
C - - - - - 0x00870A 02:86FA: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x00870C 02:86FC: C9 06     CMP #$06
C - - - - - 0x00870E 02:86FE: 90 04     BCC bra_8704
C - - - - - 0x008710 02:8700: A9 00     LDA #con_state_00
C - - - - - 0x008712 02:8702: 95 43     STA ram_state,X
bra_8704:
C - - - - - 0x008714 02:8704: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008717 02:8707: 60        RTS



ofs_000_8708_16:
C - - J - - 0x008718 02:8708: B5 43     LDA ram_state,X
C - - - - - 0x00871A 02:870A: 30 0F     BMI bra_871B
C - - - - - 0x00871C 02:870C: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x00871F 02:870F: A9 00     LDA #$00
C - - - - - 0x008721 02:8711: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008724 02:8714: A9 07     LDA #$07
C - - - - - 0x008726 02:8716: 95 C7     STA ram_animation_id,X
C - - - - - 0x008728 02:8718: 20 43 A4  JSR sub_A443
bra_871B:
C - - - - - 0x00872B 02:871B: F6 55     INC ram_animation_frame_counter,X
C - - - - - 0x00872D 02:871D: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x00872F 02:871F: C9 06     CMP #$06
C - - - - - 0x008731 02:8721: 90 04     BCC bra_8727
C - - - - - 0x008733 02:8723: A9 18     LDA #con_state_18
C - - - - - 0x008735 02:8725: 95 43     STA ram_state,X
bra_8727:
C - - - - - 0x008737 02:8727: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x00873A 02:872A: 60        RTS



ofs_000_872B_17:
C - - J - - 0x00873B 02:872B: B5 43     LDA ram_state,X
C - - - - - 0x00873D 02:872D: 30 0F     BMI bra_873E
C - - - - - 0x00873F 02:872F: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008742 02:8732: A9 00     LDA #$00
C - - - - - 0x008744 02:8734: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008747 02:8737: A9 08     LDA #$08
C - - - - - 0x008749 02:8739: 95 C7     STA ram_animation_id,X
C - - - - - 0x00874B 02:873B: 20 43 A4  JSR sub_A443
bra_873E:
C - - - - - 0x00874E 02:873E: F6 55     INC ram_animation_frame_counter,X
C - - - - - 0x008750 02:8740: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x008752 02:8742: C9 06     CMP #$06
C - - - - - 0x008754 02:8744: 90 04     BCC bra_874A
C - - - - - 0x008756 02:8746: A9 18     LDA #con_state_18
C - - - - - 0x008758 02:8748: 95 43     STA ram_state,X
bra_874A:
C - - - - - 0x00875A 02:874A: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x00875D 02:874D: 60        RTS



ofs_000_874E_18:
C - - J - - 0x00875E 02:874E: B5 43     LDA ram_state,X
C - - - - - 0x008760 02:8750: 30 1B     BMI bra_876D
C - - - - - 0x008762 02:8752: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008765 02:8755: A9 00     LDA #$00
C - - - - - 0x008767 02:8757: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x00876A 02:875A: A9 09     LDA #$09
C - - - - - 0x00876C 02:875C: 95 C7     STA ram_animation_id,X
C - - - - - 0x00876E 02:875E: 20 43 A4  JSR sub_A443
C - - - - - 0x008771 02:8761: A9 12     LDA #$12
C - - - - - 0x008773 02:8763: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x008775 02:8765: E0 02     CPX #$02
C - - - - - 0x008777 02:8767: B0 04     BCS bra_876D
C - - - - - 0x008779 02:8769: A9 0A     LDA #$0A
C - - - - - 0x00877B 02:876B: 95 55     STA ram_animation_frame_counter,X
bra_876D:
C - - - - - 0x00877D 02:876D: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x00877F 02:876F: D0 04     BNE bra_8775
C - - - - - 0x008781 02:8771: A9 00     LDA #con_state_00
C - - - - - 0x008783 02:8773: 95 43     STA ram_state,X
bra_8775:
C - - - - - 0x008785 02:8775: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008788 02:8778: 60        RTS



ofs_000_8779_19:
C - - J - - 0x008789 02:8779: B5 43     LDA ram_state,X
C - - - - - 0x00878B 02:877B: 30 26     BMI bra_87A3
C - - - - - 0x00878D 02:877D: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008790 02:8780: A9 00     LDA #$00
C - - - - - 0x008792 02:8782: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008795 02:8785: 9D E7 03  STA ram_hit_counter,X
C - - - - - 0x008798 02:8788: A9 0A     LDA #$0A
C - - - - - 0x00879A 02:878A: 95 C7     STA ram_animation_id,X
C - - - - - 0x00879C 02:878C: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x00879E 02:878E: 29 7F     AND #con_004A_80 ^ $FF
C - - - - - 0x0087A0 02:8790: 95 4A     STA ram_004A_obj,X
C - - - - - 0x0087A2 02:8792: A9 46     LDA #con_sfx_fall_down
C - - - - - 0x0087A4 02:8794: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x0087A7 02:8797: A9 20     LDA #$20
C - - - - - 0x0087A9 02:8799: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x0087AB 02:879B: E0 02     CPX #$02
C - - - - - 0x0087AD 02:879D: B0 04     BCS bra_87A3    ; if enemy
; if player
C - - - - - 0x0087AF 02:879F: A9 14     LDA #$14
C - - - - - 0x0087B1 02:87A1: 95 55     STA ram_animation_frame_counter,X
bra_87A3:
C - - - - - 0x0087B3 02:87A3: BD 1E 04  LDA ram_hp,X
C - - - - - 0x0087B6 02:87A6: D0 13     BNE bra_87BB_still_alive
C - - - - - 0x0087B8 02:87A8: B5 BF     LDA ram_obj_id,X
C - - - - - 0x0087BA 02:87AA: C9 07     CMP #con_obj_burnov
C - - - - - 0x0087BC 02:87AC: D0 05     BNE bra_87B3
C - - - - - 0x0087BE 02:87AE: A9 28     LDA #con_state_28
C - - - - - 0x0087C0 02:87B0: 95 43     STA ram_state,X
C - - - - - 0x0087C2 02:87B2: 60        RTS
bra_87B3:
C - - - - - 0x0087C3 02:87B3: A9 26     LDA #con_state_26
C - - - - - 0x0087C5 02:87B5: 95 43     STA ram_state,X
C - - - - - 0x0087C7 02:87B7: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x0087CA 02:87BA: 60        RTS
bra_87BB_still_alive:
C - - - - - 0x0087CB 02:87BB: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x0087CD 02:87BD: D0 0A     BNE bra_87C9_still_lying_down
C - - - - - 0x0087CF 02:87BF: A9 12     LDA #con_state_land
C - - - - - 0x0087D1 02:87C1: 95 43     STA ram_state,X
C - - - - - 0x0087D3 02:87C3: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x0087D5 02:87C5: 29 3F     AND #(con_004A_40 + con_004A_80) ^ $FF
C - - - - - 0x0087D7 02:87C7: 95 4A     STA ram_004A_obj,X
bra_87C9_still_lying_down:
C - - - - - 0x0087D9 02:87C9: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x0087DC 02:87CC: 60        RTS



ofs_000_87CD_1A:
C - - J - - 0x0087DD 02:87CD: B5 43     LDA ram_state,X
C - - - - - 0x0087DF 02:87CF: 30 2E     BMI bra_87FF
C - - - - - 0x0087E1 02:87D1: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0087E4 02:87D4: 20 45 A3  JSR sub_A345
C - - - - - 0x0087E7 02:87D7: 20 69 A0  JSR sub_A069
C - - - - - 0x0087EA 02:87DA: A9 02     LDA #$02
C - - - - - 0x0087EC 02:87DC: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x0087EF 02:87DF: A9 07     LDA #$07
C - - - - - 0x0087F1 02:87E1: 95 C7     STA ram_animation_id,X
C - - - - - 0x0087F3 02:87E3: A9 03     LDA #$03
C - - - - - 0x0087F5 02:87E5: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x0087F8 02:87E8: A9 C0     LDA #con_004A_40 + con_004A_80
C - - - - - 0x0087FA 02:87EA: 15 4A     ORA ram_004A_obj,X
C - - - - - 0x0087FC 02:87EC: 95 4A     STA ram_004A_obj,X
C - - - - - 0x0087FE 02:87EE: A9 04     LDA #$04
C - - - - - 0x008800 02:87F0: 20 D9 9D  JSR sub_9DD9_increase_pos_Z
C - - - - - 0x008803 02:87F3: A9 04     LDA #$04
C - - - - - 0x008805 02:87F5: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x008807 02:87F7: 20 51 A0  JSR sub_A051
C - - - - - 0x00880A 02:87FA: A9 C0     LDA #$C0
C - - - - - 0x00880C 02:87FC: 9D 2D 03  STA ram_032D_obj,X
bra_87FF:
loc_87FF:
C D 0 - - - 0x00880F 02:87FF: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x008811 02:8801: D0 04     BNE bra_8807
C - - - - - 0x008813 02:8803: A9 0B     LDA #$0B
C - - - - - 0x008815 02:8805: 95 C7     STA ram_animation_id,X
bra_8807:
C - - - - - 0x008817 02:8807: 20 F8 9D  JSR sub_9DF8
loc_880A:
C D 0 - - - 0x00881A 02:880A: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x00881D 02:880D: 20 10 9E  JSR sub_9E10
C - - - - - 0x008820 02:8810: 60        RTS



ofs_000_8811_1B:
C - - J - - 0x008821 02:8811: B5 43     LDA ram_state,X
C - - - - - 0x008823 02:8813: 30 2E     BMI bra_8843
C - - - - - 0x008825 02:8815: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008828 02:8818: 20 45 A3  JSR sub_A345
C - - - - - 0x00882B 02:881B: 20 69 A0  JSR sub_A069
C - - - - - 0x00882E 02:881E: A9 03     LDA #$03
C - - - - - 0x008830 02:8820: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008833 02:8823: A9 07     LDA #$07
C - - - - - 0x008835 02:8825: 95 C7     STA ram_animation_id,X
C - - - - - 0x008837 02:8827: A9 05     LDA #$05
C - - - - - 0x008839 02:8829: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x00883C 02:882C: A9 C0     LDA #con_004A_40 + con_004A_80
C - - - - - 0x00883E 02:882E: 15 4A     ORA ram_004A_obj,X
C - - - - - 0x008840 02:8830: 95 4A     STA ram_004A_obj,X
C - - - - - 0x008842 02:8832: A9 06     LDA #$06
C - - - - - 0x008844 02:8834: 20 D9 9D  JSR sub_9DD9_increase_pos_Z
C - - - - - 0x008847 02:8837: A9 C0     LDA #$C0
C - - - - - 0x008849 02:8839: 9D 2D 03  STA ram_032D_obj,X
C - - - - - 0x00884C 02:883C: 20 51 A0  JSR sub_A051
C - - - - - 0x00884F 02:883F: A9 04     LDA #$04
C - - - - - 0x008851 02:8841: 95 55     STA ram_animation_frame_counter,X
bra_8843:
C - - - - - 0x008853 02:8843: 4C FF 87  JMP loc_87FF



ofs_000_8846_1C:
C - - J - - 0x008856 02:8846: B5 43     LDA ram_state,X
C - - - - - 0x008858 02:8848: 30 2E     BMI bra_8878
C - - - - - 0x00885A 02:884A: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x00885D 02:884D: 20 45 A3  JSR sub_A345
C - - - - - 0x008860 02:8850: 20 69 A0  JSR sub_A069
C - - - - - 0x008863 02:8853: A9 04     LDA #$04
C - - - - - 0x008865 02:8855: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008868 02:8858: A9 07     LDA #$07
C - - - - - 0x00886A 02:885A: 95 C7     STA ram_animation_id,X
C - - - - - 0x00886C 02:885C: A9 06     LDA #$06
C - - - - - 0x00886E 02:885E: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x008871 02:8861: A9 C0     LDA #con_004A_40 + con_004A_80
C - - - - - 0x008873 02:8863: 15 4A     ORA ram_004A_obj,X
C - - - - - 0x008875 02:8865: 95 4A     STA ram_004A_obj,X
C - - - - - 0x008877 02:8867: A9 08     LDA #$08
C - - - - - 0x008879 02:8869: 20 D9 9D  JSR sub_9DD9_increase_pos_Z
C - - - - - 0x00887C 02:886C: A9 C0     LDA #$C0
C - - - - - 0x00887E 02:886E: 9D 2D 03  STA ram_032D_obj,X
C - - - - - 0x008881 02:8871: 20 51 A0  JSR sub_A051
C - - - - - 0x008884 02:8874: A9 04     LDA #$04
C - - - - - 0x008886 02:8876: 95 55     STA ram_animation_frame_counter,X
bra_8878:
C - - - - - 0x008888 02:8878: 4C FF 87  JMP loc_87FF



ofs_000_887B_1D:
C - - J - - 0x00888B 02:887B: B5 43     LDA ram_state,X
C - - - - - 0x00888D 02:887D: 30 29     BMI bra_88A8
C - - - - - 0x00888F 02:887F: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008892 02:8882: 20 45 A3  JSR sub_A345
C - - - - - 0x008895 02:8885: 20 69 A0  JSR sub_A069
C - - - - - 0x008898 02:8888: A9 06     LDA #$06
C - - - - - 0x00889A 02:888A: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x00889D 02:888D: A9 07     LDA #$07
C - - - - - 0x00889F 02:888F: 95 C7     STA ram_animation_id,X
C - - - - - 0x0088A1 02:8891: A9 08     LDA #$08
C - - - - - 0x0088A3 02:8893: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x0088A6 02:8896: A9 C0     LDA #con_004A_40 + con_004A_80
C - - - - - 0x0088A8 02:8898: 15 4A     ORA ram_004A_obj,X
C - - - - - 0x0088AA 02:889A: 95 4A     STA ram_004A_obj,X
C - - - - - 0x0088AC 02:889C: A9 0C     LDA #$0C
C - - - - - 0x0088AE 02:889E: 20 D9 9D  JSR sub_9DD9_increase_pos_Z
C - - - - - 0x0088B1 02:88A1: 20 51 A0  JSR sub_A051
C - - - - - 0x0088B4 02:88A4: A9 04     LDA #$04
C - - - - - 0x0088B6 02:88A6: 95 55     STA ram_animation_frame_counter,X
bra_88A8:
C - - - - - 0x0088B8 02:88A8: 4C FF 87  JMP loc_87FF



ofs_000_88AB_1E:
C - - J - - 0x0088BB 02:88AB: B5 43     LDA ram_state,X
C - - - - - 0x0088BD 02:88AD: 30 34     BMI bra_88E3
C - - - - - 0x0088BF 02:88AF: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0088C2 02:88B2: 20 45 A3  JSR sub_A345
C - - - - - 0x0088C5 02:88B5: 20 69 A0  JSR sub_A069
C - - - - - 0x0088C8 02:88B8: A9 07     LDA #$07
C - - - - - 0x0088CA 02:88BA: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x0088CD 02:88BD: A9 03     LDA #$03
C - - - - - 0x0088CF 02:88BF: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x0088D2 02:88C2: A9 C0     LDA #$C0    ; con_004A_40 + con_004A_80
C - - - - - 0x0088D4 02:88C4: 9D 2D 03  STA ram_032D_obj,X
C - - - - - 0x0088D7 02:88C7: 15 4A     ORA ram_004A_obj,X
C - - - - - 0x0088D9 02:88C9: 95 4A     STA ram_004A_obj,X
C - - - - - 0x0088DB 02:88CB: A9 0C     LDA #$0C
C - - - - - 0x0088DD 02:88CD: 20 D9 9D  JSR sub_9DD9_increase_pos_Z
C - - - - - 0x0088E0 02:88D0: 20 51 A0  JSR sub_A051
C - - - - - 0x0088E3 02:88D3: B5 BF     LDA ram_obj_id,X
C - - - - - 0x0088E5 02:88D5: C9 02     CMP #$02
C - - - - - 0x0088E7 02:88D7: B0 0A     BCS bra_88E3    ; if not p1 or p2
C - - - - - 0x0088E9 02:88D9: A9 0B     LDA #$0B
C - - - - - 0x0088EB 02:88DB: 95 C7     STA ram_animation_id,X
C - - - - - 0x0088ED 02:88DD: 20 5F A0  JSR sub_A05F
C - - - - - 0x0088F0 02:88E0: 20 F8 9D  JSR sub_9DF8
bra_88E3:
C - - - - - 0x0088F3 02:88E3: B5 BF     LDA ram_obj_id,X
C - - - - - 0x0088F5 02:88E5: C9 02     CMP #$02
C - - - - - 0x0088F7 02:88E7: 90 18     BCC bra_8901    ; if p1 or p2
C - - - - - 0x0088F9 02:88E9: A0 07     LDY #$07
C - - - - - 0x0088FB 02:88EB: C9 0C     CMP #$0C
C - - - - - 0x0088FD 02:88ED: F0 02     BEQ bra_88F1
C - - - - - 0x0088FF 02:88EF: A0 06     LDY #$06
bra_88F1:
C - - - - - 0x008901 02:88F1: 98        TYA
C - - - - - 0x008902 02:88F2: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008905 02:88F5: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x008907 02:88F7: C9 7F     CMP #$7F
C - - - - - 0x008909 02:88F9: D0 06     BNE bra_8901
C - - - - - 0x00890B 02:88FB: 20 5F A0  JSR sub_A05F
C - - - - - 0x00890E 02:88FE: 20 F8 9D  JSR sub_9DF8
bra_8901:
C - - - - - 0x008911 02:8901: 4C 0A 88  JMP loc_880A



_off000_8904_06:
- D 0 - I - 0x008914 02:8904: 18        .byte $18   ; 
- D 0 - I - 0x008915 02:8905: 19        .byte $19   ; 
- D 0 - I - 0x008916 02:8906: 0B        .byte $0B   ; 



_off000_8907_07:
- - - - - - 0x008917 02:8907: 5A        .byte $5A   ; 
- - - - - - 0x008918 02:8908: 5B        .byte $5B   ; 
- - - - - - 0x008919 02:8909: 0B        .byte $0B   ; 



_off001_890A_06:
_off001_890A_07:
- D 0 - I - 0x00891A 02:890A: 02        .byte $02   ; 
- D 0 - I - 0x00891B 02:890B: 08        .byte $08   ; 
- D 0 - I - 0x00891C 02:890C: 7F        .byte $7F   ; 



ofs_000_890D_1F:
C - - J - - 0x00891D 02:890D: B5 43     LDA ram_state,X
C - - - - - 0x00891F 02:890F: 30 2C     BMI bra_893D
C - - - - - 0x008921 02:8911: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008924 02:8914: 20 45 A3  JSR sub_A345
C - - - - - 0x008927 02:8917: 20 69 A0  JSR sub_A069
C - - - - - 0x00892A 02:891A: A9 02     LDA #$02
C - - - - - 0x00892C 02:891C: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x00892F 02:891F: A9 07     LDA #$07
C - - - - - 0x008931 02:8921: 95 C7     STA ram_animation_id,X
C - - - - - 0x008933 02:8923: A9 09     LDA #$09
C - - - - - 0x008935 02:8925: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x008938 02:8928: A9 C0     LDA #con_004A_40 + con_004A_80
C - - - - - 0x00893A 02:892A: 15 4A     ORA ram_004A_obj,X
C - - - - - 0x00893C 02:892C: 95 4A     STA ram_004A_obj,X
C - - - - - 0x00893E 02:892E: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008941 02:8931: A9 04     LDA #$04
C - - - - - 0x008943 02:8933: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x008945 02:8935: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008948 02:8938: A9 C0     LDA #$C0
C - - - - - 0x00894A 02:893A: 9D 2D 03  STA ram_032D_obj,X
bra_893D:
C - - - - - 0x00894D 02:893D: 4C FF 87  JMP loc_87FF



ofs_000_8940_20:
C - - J - - 0x008950 02:8940: B5 43     LDA ram_state,X
C - - - - - 0x008952 02:8942: 30 24     BMI bra_8968
C - - - - - 0x008954 02:8944: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008957 02:8947: 20 45 A3  JSR sub_A345
C - - - - - 0x00895A 02:894A: 20 69 A0  JSR sub_A069
C - - - - - 0x00895D 02:894D: A9 10     LDA #$10
C - - - - - 0x00895F 02:894F: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008962 02:8952: A9 07     LDA #$07
C - - - - - 0x008964 02:8954: 95 C7     STA ram_animation_id,X
C - - - - - 0x008966 02:8956: A9 06     LDA #$06
C - - - - - 0x008968 02:8958: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x00896B 02:895B: A9 C0     LDA #con_004A_40 + con_004A_80
C - - - - - 0x00896D 02:895D: 15 4A     ORA ram_004A_obj,X
C - - - - - 0x00896F 02:895F: 95 4A     STA ram_004A_obj,X
C - - - - - 0x008971 02:8961: 20 51 A0  JSR sub_A051
C - - - - - 0x008974 02:8964: A9 04     LDA #$04
C - - - - - 0x008976 02:8966: 95 55     STA ram_animation_frame_counter,X
bra_8968:
C - - - - - 0x008978 02:8968: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x00897A 02:896A: D0 04     BNE bra_8970
C - - - - - 0x00897C 02:896C: A9 0B     LDA #$0B
C - - - - - 0x00897E 02:896E: 95 C7     STA ram_animation_id,X
bra_8970:
C - - - - - 0x008980 02:8970: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008983 02:8973: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x008986 02:8976: 20 10 9E  JSR sub_9E10
C - - - - - 0x008989 02:8979: 60        RTS



ofs_000_897A_21:
C - - J - - 0x00898A 02:897A: B5 43     LDA ram_state,X
C - - - - - 0x00898C 02:897C: 30 24     BMI bra_89A2
C - - - - - 0x00898E 02:897E: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008991 02:8981: 20 45 A3  JSR sub_A345
C - - - - - 0x008994 02:8984: 20 69 A0  JSR sub_A069
C - - - - - 0x008997 02:8987: A9 02     LDA #$02
C - - - - - 0x008999 02:8989: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x00899C 02:898C: A9 07     LDA #$07
C - - - - - 0x00899E 02:898E: 95 C7     STA ram_animation_id,X
C - - - - - 0x0089A0 02:8990: A9 0B     LDA #$0B
C - - - - - 0x0089A2 02:8992: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x0089A5 02:8995: A9 C0     LDA #con_004A_40 + con_004A_80
C - - - - - 0x0089A7 02:8997: 15 4A     ORA ram_004A_obj,X
C - - - - - 0x0089A9 02:8999: 95 4A     STA ram_004A_obj,X
C - - - - - 0x0089AB 02:899B: 20 51 A0  JSR sub_A051
C - - - - - 0x0089AE 02:899E: A9 08     LDA #$08
C - - - - - 0x0089B0 02:89A0: 95 55     STA ram_animation_frame_counter,X
bra_89A2:
C - - - - - 0x0089B2 02:89A2: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x0089B4 02:89A4: D0 04     BNE bra_89AA
C - - - - - 0x0089B6 02:89A6: A9 0B     LDA #$0B
C - - - - - 0x0089B8 02:89A8: 95 C7     STA ram_animation_id,X
bra_89AA:
C - - - - - 0x0089BA 02:89AA: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x0089BD 02:89AD: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x0089C0 02:89B0: 20 10 9E  JSR sub_9E10
C - - - - - 0x0089C3 02:89B3: 60        RTS



ofs_000_89B4_22:
C - - J - - 0x0089C4 02:89B4: B5 43     LDA ram_state,X
C - - - - - 0x0089C6 02:89B6: 30 24     BMI bra_89DC
C - - - - - 0x0089C8 02:89B8: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0089CB 02:89BB: 20 45 A3  JSR sub_A345
C - - - - - 0x0089CE 02:89BE: 20 69 A0  JSR sub_A069
C - - - - - 0x0089D1 02:89C1: A9 05     LDA #$05
C - - - - - 0x0089D3 02:89C3: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x0089D6 02:89C6: A9 07     LDA #$07
C - - - - - 0x0089D8 02:89C8: 95 C7     STA ram_animation_id,X
C - - - - - 0x0089DA 02:89CA: A9 0A     LDA #$0A
C - - - - - 0x0089DC 02:89CC: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x0089DF 02:89CF: A9 C0     LDA #con_004A_40 + con_004A_80
C - - - - - 0x0089E1 02:89D1: 15 4A     ORA ram_004A_obj,X
C - - - - - 0x0089E3 02:89D3: 95 4A     STA ram_004A_obj,X
C - - - - - 0x0089E5 02:89D5: A9 04     LDA #$04
C - - - - - 0x0089E7 02:89D7: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x0089E9 02:89D9: 20 51 A0  JSR sub_A051
bra_89DC:
C - - - - - 0x0089EC 02:89DC: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x0089EE 02:89DE: D0 04     BNE bra_89E4
C - - - - - 0x0089F0 02:89E0: A9 0B     LDA #$0B
C - - - - - 0x0089F2 02:89E2: 95 C7     STA ram_animation_id,X
bra_89E4:
C - - - - - 0x0089F4 02:89E4: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x0089F7 02:89E7: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x0089FA 02:89EA: 20 10 9E  JSR sub_9E10
C - - - - - 0x0089FD 02:89ED: 60        RTS



ofs_000_89EE_23:
C - - J - - 0x0089FE 02:89EE: B5 43     LDA ram_state,X
C - - - - - 0x008A00 02:89F0: 30 18     BMI bra_8A0A
C - - - - - 0x008A02 02:89F2: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008A05 02:89F5: 20 45 A3  JSR sub_A345
C - - - - - 0x008A08 02:89F8: 20 69 A0  JSR sub_A069
C - - - - - 0x008A0B 02:89FB: A9 00     LDA #$00
C - - - - - 0x008A0D 02:89FD: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x008A10 02:8A00: A9 07     LDA #$07
C - - - - - 0x008A12 02:8A02: 95 C7     STA ram_animation_id,X
C - - - - - 0x008A14 02:8A04: A9 C0     LDA #con_004A_40 + con_004A_80
C - - - - - 0x008A16 02:8A06: 15 4A     ORA ram_004A_obj,X
C - - - - - 0x008A18 02:8A08: 95 4A     STA ram_004A_obj,X
bra_8A0A:
C - - - - - 0x008A1A 02:8A0A: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008A1D 02:8A0D: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x008A20 02:8A10: 20 10 9E  JSR sub_9E10
C - - - - - 0x008A23 02:8A13: 60        RTS



ofs_000_8A14_24:
C - - J - - 0x008A24 02:8A14: B5 43     LDA ram_state,X
C - - - - - 0x008A26 02:8A16: 30 09     BMI bra_8A21
C - - - - - 0x008A28 02:8A18: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008A2B 02:8A1B: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x008A2D 02:8A1D: 09 40     ORA #con_004A_40
C - - - - - 0x008A2F 02:8A1F: 95 4A     STA ram_004A_obj,X
bra_8A21:
C - - - - - 0x008A31 02:8A21: A9 08     LDA #$08
C - - - - - 0x008A33 02:8A23: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008A36 02:8A26: B5 C7     LDA ram_animation_id,X
C - - - - - 0x008A38 02:8A28: 29 7F     AND #$7F
C - - - - - 0x008A3A 02:8A2A: C9 39     CMP #$39
C - - - - - 0x008A3C 02:8A2C: D0 0B     BNE bra_8A39_RTS
C - - - - - 0x008A3E 02:8A2E: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x008A40 02:8A30: C9 02     CMP #$02
C - - - - - 0x008A42 02:8A32: D0 05     BNE bra_8A39_RTS
C - - - - - 0x008A44 02:8A34: A9 19     LDA #con_sfx_hit
C - - - - - 0x008A46 02:8A36: 20 06 C0  JSR sub_0x01C016_play_sound
bra_8A39_RTS:
C - - - - - 0x008A49 02:8A39: 60        RTS



_off000_8A3A_08:
- D 0 - I - 0x008A4A 02:8A3A: 40        .byte $40   ; 
- D 0 - I - 0x008A4B 02:8A3B: 41        .byte $41   ; 
- D 0 - I - 0x008A4C 02:8A3C: 42        .byte $42   ; 
- D 0 - I - 0x008A4D 02:8A3D: 43        .byte $43   ; 
- D 0 - I - 0x008A4E 02:8A3E: 44        .byte $44   ; 
- D 0 - I - 0x008A4F 02:8A3F: 45        .byte $45   ; 
- D 0 - I - 0x008A50 02:8A40: 46        .byte $46   ; 
- D 0 - I - 0x008A51 02:8A41: 47        .byte $47   ; 
- D 0 - I - 0x008A52 02:8A42: 48        .byte $48   ; 
- D 0 - I - 0x008A53 02:8A43: 49        .byte $49   ; 
- D 0 - I - 0x008A54 02:8A44: 39        .byte $39   ; 
- D 0 - I - 0x008A55 02:8A45: 02        .byte $02   ; 
- D 0 - I - 0x008A56 02:8A46: 39        .byte $39   ; 
- D 0 - I - 0x008A57 02:8A47: 02        .byte $02   ; 
- D 0 - I - 0x008A58 02:8A48: 39        .byte $39   ; 
- D 0 - I - 0x008A59 02:8A49: 02        .byte $02   ; 
- D 0 - I - 0x008A5A 02:8A4A: 39        .byte $39   ; 
- D 0 - I - 0x008A5B 02:8A4B: 02        .byte $02   ; 
- D 0 - I - 0x008A5C 02:8A4C: 9A        .byte $9A   ; 



_off001_8A4D_08:
- D 0 - I - 0x008A5D 02:8A4D: 02        .byte $02   ; 
- D 0 - I - 0x008A5E 02:8A4E: 02        .byte $02   ; 
- D 0 - I - 0x008A5F 02:8A4F: 02        .byte $02   ; 
- D 0 - I - 0x008A60 02:8A50: 02        .byte $02   ; 
- D 0 - I - 0x008A61 02:8A51: 02        .byte $02   ; 
- D 0 - I - 0x008A62 02:8A52: 02        .byte $02   ; 
- D 0 - I - 0x008A63 02:8A53: 02        .byte $02   ; 
- D 0 - I - 0x008A64 02:8A54: 02        .byte $02   ; 
- D 0 - I - 0x008A65 02:8A55: 02        .byte $02   ; 
- D 0 - I - 0x008A66 02:8A56: 02        .byte $02   ; 
- D 0 - I - 0x008A67 02:8A57: 02        .byte $02   ; 
- D 0 - I - 0x008A68 02:8A58: 02        .byte $02   ; 
- D 0 - I - 0x008A69 02:8A59: 02        .byte $02   ; 
- D 0 - I - 0x008A6A 02:8A5A: 02        .byte $02   ; 
- D 0 - I - 0x008A6B 02:8A5B: 02        .byte $02   ; 
- D 0 - I - 0x008A6C 02:8A5C: 02        .byte $02   ; 
- D 0 - I - 0x008A6D 02:8A5D: 02        .byte $02   ; 
- D 0 - I - 0x008A6E 02:8A5E: 02        .byte $02   ; 



ofs_000_8A5F_25:
C - - J - - 0x008A6F 02:8A5F: A6 19     LDX ram_0019
C - - - - - 0x008A71 02:8A61: A9 C0     LDA #$C0
C - - - - - 0x008A73 02:8A63: 9D CC 03  STA ram_03CC_plr,X
C - - - - - 0x008A76 02:8A66: A9 00     LDA #con_state_00
C - - - - - 0x008A78 02:8A68: 95 43     STA ram_state,X
C - - - - - 0x008A7A 02:8A6A: 60        RTS



ofs_000_8A6B_26:
C - - J - - 0x008A7B 02:8A6B: B5 43     LDA ram_state,X
C - - - - - 0x008A7D 02:8A6D: 30 40     BMI bra_8AAF
C - - - - - 0x008A7F 02:8A6F: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008A82 02:8A72: A9 00     LDA #$00
C - - - - - 0x008A84 02:8A74: 9D E7 03  STA ram_hit_counter,X
C - - - - - 0x008A87 02:8A77: B5 BF     LDA ram_obj_id,X
C - - - - - 0x008A89 02:8A79: C9 11     CMP #con_obj_shadow_warrior
C - - - - - 0x008A8B 02:8A7B: D0 05     BNE bra_8A82
C - - - - - 0x008A8D 02:8A7D: A9 03     LDA #$03
C - - - - - 0x008A8F 02:8A7F: 8D 3F 06  STA ram_063F
bra_8A82:
C - - - - - 0x008A92 02:8A82: E0 02     CPX #$02
C - - - - - 0x008A94 02:8A84: B0 29     BCS bra_8AAF
C - - - - - 0x008A96 02:8A86: A9 00     LDA #$00
C - - - - - 0x008A98 02:8A88: 9D 1E 04  STA ram_hp,X
C - - - - - 0x008A9B 02:8A8B: BD 61 03  LDA ram_0361_obj,X
C - - - - - 0x008A9E 02:8A8E: 29 7F     AND #$7F
C - - - - - 0x008AA0 02:8A90: C9 06     CMP #$06
C - - - - - 0x008AA2 02:8A92: F0 11     BEQ bra_8AA5
C - - - - - 0x008AA4 02:8A94: BD E0 03  LDA ram_03E0_obj,X
C - - - - - 0x008AA7 02:8A97: C9 02     CMP #$02
C - - - - - 0x008AA9 02:8A99: B0 0A     BCS bra_8AA5
C - - - - - 0x008AAB 02:8A9B: A8        TAY
C - - - - - 0x008AAC 02:8A9C: 18        CLC
C - - - - - 0x008AAD 02:8A9D: B9 32 04  LDA ram_lives,Y
C - - - - - 0x008AB0 02:8AA0: 69 01     ADC #$01
C - - - - - 0x008AB2 02:8AA2: 99 32 04  STA ram_lives,Y
bra_8AA5:
C - - - - - 0x008AB5 02:8AA5: DE 32 04  DEC ram_lives,X
C - - - - - 0x008AB8 02:8AA8: 10 05     BPL bra_8AAF
- - - - - - 0x008ABA 02:8AAA: A5 00     LDA ram_0000
- - - - - - 0x008ABC 02:8AAC: 9D 32 04  STA ram_lives,X
bra_8AAF:
C - - - - - 0x008ABF 02:8AAF: B5 BF     LDA ram_obj_id,X
C - - - - - 0x008AC1 02:8AB1: C9 07     CMP #con_obj_burnov
C - - - - - 0x008AC3 02:8AB3: F0 4D     BEQ bra_8B02
C - - - - - 0x008AC5 02:8AB5: C9 0C     CMP #con_obj_doppelganger
C - - - - - 0x008AC7 02:8AB7: D0 03     BNE bra_8ABC
C - - - - - 0x008AC9 02:8AB9: 4C 1D 8B  JMP loc_8B1D
bra_8ABC:
C - - - - - 0x008ACC 02:8ABC: C9 11     CMP #con_obj_shadow_warrior
C - - - - - 0x008ACE 02:8ABE: D0 03     BNE bra_8AC3
C - - - - - 0x008AD0 02:8AC0: 4C 34 8B  JMP loc_8B34
bra_8AC3:
C - - - - - 0x008AD3 02:8AC3: F6 55     INC ram_animation_frame_counter,X
C - - - - - 0x008AD5 02:8AC5: B5 5C     LDA ram_animation_counter,X
C - - - - - 0x008AD7 02:8AC7: C9 0A     CMP #$0A
C - - - - - 0x008AD9 02:8AC9: 90 0B     BCC bra_8AD6
C - - - - - 0x008ADB 02:8ACB: A9 7F     LDA #con_003C_80 ^ $FF
C - - - - - 0x008ADD 02:8ACD: 35 3C     AND ram_003C_obj,X ; 003C 003D 003E 003F 0040
C - - - - - 0x008ADF 02:8ACF: 95 3C     STA ram_003C_obj,X ; 003C 003D 003E 003F 0040
C - - - - - 0x008AE1 02:8AD1: E0 02     CPX #$02
C - - - - - 0x008AE3 02:8AD3: 90 29     BCC bra_8AFE
C - - - - - 0x008AE5 02:8AD5: 60        RTS
bra_8AD6:
C - - - - - 0x008AE6 02:8AD6: 29 01     AND #$01
C - - - - - 0x008AE8 02:8AD8: D0 14     BNE bra_8AEE
C - - - - - 0x008AEA 02:8ADA: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x008AEC 02:8ADC: C9 05     CMP #$05
C - - - - - 0x008AEE 02:8ADE: 90 1E     BCC bra_8AFE
C - - - - - 0x008AF0 02:8AE0: A9 0A     LDA #$0A
C - - - - - 0x008AF2 02:8AE2: 95 C7     STA ram_animation_id,X
C - - - - - 0x008AF4 02:8AE4: A9 00     LDA #$00
C - - - - - 0x008AF6 02:8AE6: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x008AF8 02:8AE8: F6 5C     INC ram_animation_counter,X
C - - - - - 0x008AFA 02:8AEA: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008AFD 02:8AED: 60        RTS
bra_8AEE:
C - - - - - 0x008AFE 02:8AEE: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x008B00 02:8AF0: C9 03     CMP #$03
C - - - - - 0x008B02 02:8AF2: 90 0A     BCC bra_8AFE
C - - - - - 0x008B04 02:8AF4: A9 7F     LDA #$7F
C - - - - - 0x008B06 02:8AF6: 95 C7     STA ram_animation_id,X
C - - - - - 0x008B08 02:8AF8: A9 00     LDA #$00
C - - - - - 0x008B0A 02:8AFA: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x008B0C 02:8AFC: F6 5C     INC ram_animation_counter,X
bra_8AFE:
C - - - - - 0x008B0E 02:8AFE: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008B11 02:8B01: 60        RTS
bra_8B02:
C - - - - - 0x008B12 02:8B02: A9 09     LDA #$09
C - - - - - 0x008B14 02:8B04: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
loc_8B07:
C D 0 - - - 0x008B17 02:8B07: B5 43     LDA ram_state,X
C - - - - - 0x008B19 02:8B09: 29 7F     AND #$7F
C - - - - - 0x008B1B 02:8B0B: C9 7F     CMP #con_state_7F
C - - - - - 0x008B1D 02:8B0D: D0 0A     BNE bra_8B19_RTS
C - - - - - 0x008B1F 02:8B0F: B5 3C     LDA ram_003C_obj,X ; 003E
C - - - - - 0x008B21 02:8B11: 29 7F     AND #con_003C_80 ^ $FF
C - - - - - 0x008B23 02:8B13: 95 3C     STA ram_003C_obj,X ; 003E
C - - - - - 0x008B25 02:8B15: A9 7F     LDA #$7F
C - - - - - 0x008B27 02:8B17: 95 C7     STA ram_animation_id,X
bra_8B19_RTS:
C - - - - - 0x008B29 02:8B19: 60        RTS



_off000_8B1A_09:
- D 0 - I - 0x008B2A 02:8B1A: 19        .byte $19   ; 
- D 0 - I - 0x008B2B 02:8B1B: FF        .byte $FF   ; 



_off001_8B1C_09:
- D 0 - I - 0x008B2C 02:8B1C: 04        .byte $04   ; 



loc_8B1D:
C D 0 - - - 0x008B2D 02:8B1D: A9 0A     LDA #$0A
C - - - - - 0x008B2F 02:8B1F: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008B32 02:8B22: 4C 07 8B  JMP loc_8B07



_off000_8B25_0A:
- D 0 - I - 0x008B35 02:8B25: 50        .byte $50   ; 
- D 0 - I - 0x008B36 02:8B26: 51        .byte $51   ; 
- D 0 - I - 0x008B37 02:8B27: 52        .byte $52   ; 
- D 0 - I - 0x008B38 02:8B28: 53        .byte $53   ; 
- D 0 - I - 0x008B39 02:8B29: 54        .byte $54   ; 
- D 0 - I - 0x008B3A 02:8B2A: 55        .byte $55   ; 
- D 0 - I - 0x008B3B 02:8B2B: 56        .byte $56   ; 
- D 0 - I - 0x008B3C 02:8B2C: FF        .byte $FF   ; 



_off001_8B2D_0A:
- D 0 - I - 0x008B3D 02:8B2D: 10        .byte $10   ; 
- D 0 - I - 0x008B3E 02:8B2E: 04        .byte $04   ; 
- D 0 - I - 0x008B3F 02:8B2F: 04        .byte $04   ; 
- D 0 - I - 0x008B40 02:8B30: 04        .byte $04   ; 
- D 0 - I - 0x008B41 02:8B31: 04        .byte $04   ; 
- D 0 - I - 0x008B42 02:8B32: 05        .byte $05   ; 
- D 0 - I - 0x008B43 02:8B33: 06        .byte $06   ; 



loc_8B34:
C D 0 - - - 0x008B44 02:8B34: A9 3E     LDA #$3E
C - - - - - 0x008B46 02:8B36: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008B49 02:8B39: 4C 07 8B  JMP loc_8B07



_off000_8B3C_3E:
- D 0 - I - 0x008B4C 02:8B3C: 0A        .byte $0A   ; 
- D 0 - I - 0x008B4D 02:8B3D: FF        .byte $FF   ; 



_off001_8B3E_3E:
- D 0 - I - 0x008B4E 02:8B3E: 30        .byte $30   ; 



ofs_000_8B3F_27:
C - - J - - 0x008B4F 02:8B3F: B5 43     LDA ram_state,X
C - - - - - 0x008B51 02:8B41: 30 1C     BMI bra_8B5F
C - - - - - 0x008B53 02:8B43: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008B56 02:8B46: E0 02     CPX #$02
C - - - - - 0x008B58 02:8B48: 90 04     BCC bra_8B4E
C - - - - - 0x008B5A 02:8B4A: A9 00     LDA #con_obj_billy
C - - - - - 0x008B5C 02:8B4C: 95 BF     STA ram_obj_id,X
bra_8B4E:
C - - - - - 0x008B5E 02:8B4E: A9 30     LDA #$30
C - - - - - 0x008B60 02:8B50: 95 C7     STA ram_animation_id,X
C - - - - - 0x008B62 02:8B52: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x008B64 02:8B54: 29 7F     AND #con_004A_80 ^ $FF
C - - - - - 0x008B66 02:8B56: 09 40     ORA #con_004A_40
C - - - - - 0x008B68 02:8B58: 95 4A     STA ram_004A_obj,X
C - - - - - 0x008B6A 02:8B5A: A9 43     LDA #con_sfx_fall_in_water
C - - - - - 0x008B6C 02:8B5C: 20 06 C0  JSR sub_0x01C016_play_sound
bra_8B5F:
C - - - - - 0x008B6F 02:8B5F: A9 0B     LDA #$0B
C - - - - - 0x008B71 02:8B61: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008B74 02:8B64: B5 43     LDA ram_state,X
C - - - - - 0x008B76 02:8B66: C9 7F     CMP #con_state_7F
C - - - - - 0x008B78 02:8B68: D0 1B     BNE bra_8B85_RTS
C - - - - - 0x008B7A 02:8B6A: A9 7F     LDA #$7F
C - - - - - 0x008B7C 02:8B6C: 95 C7     STA ram_animation_id,X
C - - - - - 0x008B7E 02:8B6E: A9 00     LDA #$00    ; con_003C_00
C - - - - - 0x008B80 02:8B70: 95 3C     STA ram_003C_obj,X ; 003C 003E 003F
C - - - - - 0x008B82 02:8B72: 9D 1E 04  STA ram_hp,X
C - - - - - 0x008B85 02:8B75: B5 BF     LDA ram_obj_id,X
C - - - - - 0x008B87 02:8B77: E0 02     CPX #$02
C - - - - - 0x008B89 02:8B79: B0 0A     BCS bra_8B85_RTS    ; if not p1 or p2
C - - - - - 0x008B8B 02:8B7B: DE 32 04  DEC ram_lives,X
C - - - - - 0x008B8E 02:8B7E: 10 05     BPL bra_8B85_RTS
- - - - - - 0x008B90 02:8B80: A9 00     LDA #$00
- - - - - - 0x008B92 02:8B82: 9D 32 04  STA ram_lives,X
bra_8B85_RTS:
C - - - - - 0x008B95 02:8B85: 60        RTS



_off000_8B86_0B:
- D 0 - I - 0x008B96 02:8B86: 31        .byte $31   ; 
- D 0 - I - 0x008B97 02:8B87: 32        .byte $32   ; 
- D 0 - I - 0x008B98 02:8B88: 33        .byte $33   ; 
- D 0 - I - 0x008B99 02:8B89: 34        .byte $34   ; 
- D 0 - I - 0x008B9A 02:8B8A: 35        .byte $35   ; 
- D 0 - I - 0x008B9B 02:8B8B: 36        .byte $36   ; 
- D 0 - I - 0x008B9C 02:8B8C: 37        .byte $37   ; 
- D 0 - I - 0x008B9D 02:8B8D: 37        .byte $37   ; 
- D 0 - I - 0x008B9E 02:8B8E: FF        .byte $FF   ; 



_off001_8B8F_0B:
- D 0 - I - 0x008B9F 02:8B8F: 02        .byte $02   ; 
- D 0 - I - 0x008BA0 02:8B90: 02        .byte $02   ; 
- D 0 - I - 0x008BA1 02:8B91: 02        .byte $02   ; 
- D 0 - I - 0x008BA2 02:8B92: 02        .byte $02   ; 
- D 0 - I - 0x008BA3 02:8B93: 02        .byte $02   ; 
- D 0 - I - 0x008BA4 02:8B94: 02        .byte $02   ; 
- D 0 - I - 0x008BA5 02:8B95: 02        .byte $02   ; 
- D 0 - I - 0x008BA6 02:8B96: 02        .byte $02   ; 



ofs_000_8B97_28:
C - - J - - 0x008BA7 02:8B97: B5 43     LDA ram_state,X
C - - - - - 0x008BA9 02:8B99: 30 09     BMI bra_8BA4
C - - - - - 0x008BAB 02:8B9B: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008BAE 02:8B9E: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x008BB0 02:8BA0: 09 02     ORA #con_004A_02
C - - - - - 0x008BB2 02:8BA2: 95 4A     STA ram_004A_obj,X
bra_8BA4:
C - - - - - 0x008BB4 02:8BA4: B5 C7     LDA ram_animation_id,X
C - - - - - 0x008BB6 02:8BA6: 29 7F     AND #$7F
C - - - - - 0x008BB8 02:8BA8: C9 02     CMP #$02
C - - - - - 0x008BBA 02:8BAA: D0 11     BNE bra_8BBD
C - - - - - 0x008BBC 02:8BAC: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x008BBE 02:8BAE: D0 0D     BNE bra_8BBD
C - - - - - 0x008BC0 02:8BB0: A9 4A     LDA #con_sfx_dissappear
C - - - - - 0x008BC2 02:8BB2: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x008BC5 02:8BB5: A9 62     LDA #con_chr_bank + $62
C - - - - - 0x008BC7 02:8BB7: 8D 99 04  STA ram_chr_spr_2
C - - - - - 0x008BCA 02:8BBA: 20 09 C0  JSR sub_0x01C019_write_spr_chr_banks
bra_8BBD:
C - - - - - 0x008BCD 02:8BBD: B5 C7     LDA ram_animation_id,X
C - - - - - 0x008BCF 02:8BBF: 29 7F     AND #$7F
C - - - - - 0x008BD1 02:8BC1: C9 17     CMP #$17
C - - - - - 0x008BD3 02:8BC3: D0 05     BNE bra_8BCA
C - - - - - 0x008BD5 02:8BC5: A9 21     LDA #con_sfx_21
C - - - - - 0x008BD7 02:8BC7: 20 06 C0  JSR sub_0x01C016_play_sound
bra_8BCA:
C - - - - - 0x008BDA 02:8BCA: A9 0C     LDA #$0C
C - - - - - 0x008BDC 02:8BCC: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008BDF 02:8BCF: 60        RTS



_off000_8BD0_0C:
- D 0 - I - 0x008BE0 02:8BD0: 0A        .byte $0A   ; 
- D 0 - I - 0x008BE1 02:8BD1: 06        .byte $06   ; 
- D 0 - I - 0x008BE2 02:8BD2: 02        .byte $02   ; 
- D 0 - I - 0x008BE3 02:8BD3: 11        .byte $11   ; 
- D 0 - I - 0x008BE4 02:8BD4: 12        .byte $12   ; 
- D 0 - I - 0x008BE5 02:8BD5: 13        .byte $13   ; 
- D 0 - I - 0x008BE6 02:8BD6: 14        .byte $14   ; 
- D 0 - I - 0x008BE7 02:8BD7: 15        .byte $15   ; 
- D 0 - I - 0x008BE8 02:8BD8: 16        .byte $16   ; 
- D 0 - I - 0x008BE9 02:8BD9: 1B        .byte $1B   ; 
- D 0 - I - 0x008BEA 02:8BDA: 1A        .byte $1A   ; 
- D 0 - I - 0x008BEB 02:8BDB: 17        .byte $17   ; 
- D 0 - I - 0x008BEC 02:8BDC: 1A        .byte $1A   ; 
- D 0 - I - 0x008BED 02:8BDD: 18        .byte $18   ; 
- D 0 - I - 0x008BEE 02:8BDE: A9        .byte $A9   ; 



_off001_8BDF_0C:
- D 0 - I - 0x008BEF 02:8BDF: 20        .byte $20   ; 
- D 0 - I - 0x008BF0 02:8BE0: 08        .byte $08   ; 
- D 0 - I - 0x008BF1 02:8BE1: 08        .byte $08   ; 
- D 0 - I - 0x008BF2 02:8BE2: 0A        .byte $0A   ; 
- D 0 - I - 0x008BF3 02:8BE3: 0C        .byte $0C   ; 
- D 0 - I - 0x008BF4 02:8BE4: 06        .byte $06   ; 
- D 0 - I - 0x008BF5 02:8BE5: 04        .byte $04   ; 
- D 0 - I - 0x008BF6 02:8BE6: 04        .byte $04   ; 
- D 0 - I - 0x008BF7 02:8BE7: 04        .byte $04   ; 
- D 0 - I - 0x008BF8 02:8BE8: 04        .byte $04   ; 
- D 0 - I - 0x008BF9 02:8BE9: 04        .byte $04   ; 
- D 0 - I - 0x008BFA 02:8BEA: 02        .byte $02   ; 
- D 0 - I - 0x008BFB 02:8BEB: 02        .byte $02   ; 
- D 0 - I - 0x008BFC 02:8BEC: 04        .byte $04   ; 



ofs_000_8BED_29:
C - - J - - 0x008BFD 02:8BED: B5 43     LDA ram_state,X
C - - - - - 0x008BFF 02:8BEF: 30 10     BMI bra_8C01
C - - - - - 0x008C01 02:8BF1: 09 80     ORA #$80
C - - - - - 0x008C03 02:8BF3: 95 43     STA ram_state,X
C - - - - - 0x008C05 02:8BF5: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x008C07 02:8BF7: B5 4A     LDA ram_004A_obj,X  ; bzk optimize, the same LDA
C - - - - - 0x008C09 02:8BF9: 29 FD     AND #con_004A_02 ^ $FF
C - - - - - 0x008C0B 02:8BFB: 95 4A     STA ram_004A_obj,X
C - - - - - 0x008C0D 02:8BFD: A9 20     LDA #$20
C - - - - - 0x008C0F 02:8BFF: 95 55     STA ram_animation_frame_counter,X
bra_8C01:
C - - - - - 0x008C11 02:8C01: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x008C13 02:8C03: D0 06     BNE bra_8C0B_RTS
C - - - - - 0x008C15 02:8C05: B5 3C     LDA ram_003C_obj,X ; 003E
C - - - - - 0x008C17 02:8C07: 09 40     ORA #con_003C_40
C - - - - - 0x008C19 02:8C09: 95 3C     STA ram_003C_obj,X ; 003E
bra_8C0B_RTS:
C - - - - - 0x008C1B 02:8C0B: 60        RTS



ofs_000_8C0C_2A:
C - - J - - 0x008C1C 02:8C0C: B5 43     LDA ram_state,X
C - - - - - 0x008C1E 02:8C0E: 30 0E     BMI bra_8C1E
C - - - - - 0x008C20 02:8C10: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008C23 02:8C13: B5 3C     LDA ram_003C_obj,X ; 003E
C - - - - - 0x008C25 02:8C15: 29 BF     AND #con_003C_40 ^ $FF
C - - - - - 0x008C27 02:8C17: 95 3C     STA ram_003C_obj,X ; 003E
C - - - - - 0x008C29 02:8C19: A9 4B     LDA #con_sfx_reappear
C - - - - - 0x008C2B 02:8C1B: 20 06 C0  JSR sub_0x01C016_play_sound
bra_8C1E:
C - - - - - 0x008C2E 02:8C1E: A9 0D     LDA #$0D
C - - - - - 0x008C30 02:8C20: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008C33 02:8C23: B5 C7     LDA ram_animation_id,X
C - - - - - 0x008C35 02:8C25: 29 7F     AND #$7F
C - - - - - 0x008C37 02:8C27: C9 02     CMP #$02
C - - - - - 0x008C39 02:8C29: D0 0C     BNE bra_8C37
C - - - - - 0x008C3B 02:8C2B: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x008C3D 02:8C2D: D0 08     BNE bra_8C37
C - - - - - 0x008C3F 02:8C2F: A9 50     LDA #con_chr_bank + $50
C - - - - - 0x008C41 02:8C31: 8D 99 04  STA ram_chr_spr_2
C - - - - - 0x008C44 02:8C34: 20 09 C0  JSR sub_0x01C019_write_spr_chr_banks
bra_8C37:
C - - - - - 0x008C47 02:8C37: B5 43     LDA ram_state,X
C - - - - - 0x008C49 02:8C39: 29 7F     AND #$7F
C - - - - - 0x008C4B 02:8C3B: C9 00     CMP #con_state_00
C - - - - - 0x008C4D 02:8C3D: D0 04     BNE bra_8C43_RTS
C - - - - - 0x008C4F 02:8C3F: A9 00     LDA #con_004A_00
C - - - - - 0x008C51 02:8C41: 95 4A     STA ram_004A_obj,X
bra_8C43_RTS:
C - - - - - 0x008C53 02:8C43: 60        RTS



_off000_8C44_0D:
- D 0 - I - 0x008C54 02:8C44: 1A        .byte $1A   ; 
- D 0 - I - 0x008C55 02:8C45: 1B        .byte $1B   ; 
- D 0 - I - 0x008C56 02:8C46: 16        .byte $16   ; 
- D 0 - I - 0x008C57 02:8C47: 15        .byte $15   ; 
- D 0 - I - 0x008C58 02:8C48: 14        .byte $14   ; 
- D 0 - I - 0x008C59 02:8C49: 13        .byte $13   ; 
- D 0 - I - 0x008C5A 02:8C4A: 12        .byte $12   ; 
- D 0 - I - 0x008C5B 02:8C4B: 11        .byte $11   ; 
- D 0 - I - 0x008C5C 02:8C4C: 02        .byte $02   ; 
- D 0 - I - 0x008C5D 02:8C4D: 80        .byte $80   ; 



_off001_8C4E_0D:
- D 0 - I - 0x008C5E 02:8C4E: 04        .byte $04   ; 
- D 0 - I - 0x008C5F 02:8C4F: 04        .byte $04   ; 
- D 0 - I - 0x008C60 02:8C50: 04        .byte $04   ; 
- D 0 - I - 0x008C61 02:8C51: 04        .byte $04   ; 
- D 0 - I - 0x008C62 02:8C52: 04        .byte $04   ; 
- D 0 - I - 0x008C63 02:8C53: 06        .byte $06   ; 
- D 0 - I - 0x008C64 02:8C54: 0C        .byte $0C   ; 
- D 0 - I - 0x008C65 02:8C55: 0A        .byte $0A   ; 
- D 0 - I - 0x008C66 02:8C56: 08        .byte $08   ; 



ofs_000_8C57_2B:
C - - J - - 0x008C67 02:8C57: B5 43     LDA ram_state,X
C - - - - - 0x008C69 02:8C59: 30 12     BMI bra_8C6D
C - - - - - 0x008C6B 02:8C5B: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008C6E 02:8C5E: A9 FE     LDA #$FE
C - - - - - 0x008C70 02:8C60: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x008C73 02:8C63: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x008C75 02:8C65: 09 C0     ORA #con_004A_40 + con_004A_80
C - - - - - 0x008C77 02:8C67: 95 4A     STA ram_004A_obj,X
C - - - - - 0x008C79 02:8C69: A9 0B     LDA #$0B
C - - - - - 0x008C7B 02:8C6B: 95 C7     STA ram_animation_id,X
bra_8C6D:
C - - - - - 0x008C7D 02:8C6D: 20 10 9E  JSR sub_9E10
C - - - - - 0x008C80 02:8C70: 60        RTS



ofs_000_8C71_2C:
C - - J - - 0x008C81 02:8C71: B5 43     LDA ram_state,X
C - - - - - 0x008C83 02:8C73: 30 08     BMI bra_8C7D
C - - - - - 0x008C85 02:8C75: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008C88 02:8C78: A9 38     LDA #con_sfx_illusion
C - - - - - 0x008C8A 02:8C7A: 20 06 C0  JSR sub_0x01C016_play_sound
bra_8C7D:
C - - - - - 0x008C8D 02:8C7D: A9 0E     LDA #$0E
C - - - - - 0x008C8F 02:8C7F: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008C92 02:8C82: 60        RTS



_off000_8C83_0E:
- D 0 - I - 0x008C93 02:8C83: 10        .byte $10   ; 
- D 0 - I - 0x008C94 02:8C84: 13        .byte $13   ; 
- D 0 - I - 0x008C95 02:8C85: 12        .byte $12   ; 
- D 0 - I - 0x008C96 02:8C86: 13        .byte $13   ; 
- D 0 - I - 0x008C97 02:8C87: 14        .byte $14   ; 
- D 0 - I - 0x008C98 02:8C88: 18        .byte $18   ; 
- D 0 - I - 0x008C99 02:8C89: 19        .byte $19   ; 
- D 0 - I - 0x008C9A 02:8C8A: 1A        .byte $1A   ; 
- D 0 - I - 0x008C9B 02:8C8B: FF        .byte $FF   ; 



_off001_8C8C_0E:
- D 0 - I - 0x008C9C 02:8C8C: 10        .byte $10   ; 
- D 0 - I - 0x008C9D 02:8C8D: 04        .byte $04   ; 
- D 0 - I - 0x008C9E 02:8C8E: 04        .byte $04   ; 
- D 0 - I - 0x008C9F 02:8C8F: 04        .byte $04   ; 
- D 0 - I - 0x008CA0 02:8C90: 04        .byte $04   ; 
- D 0 - I - 0x008CA1 02:8C91: 04        .byte $04   ; 
- D 0 - I - 0x008CA2 02:8C92: 04        .byte $04   ; 
- D 0 - I - 0x008CA3 02:8C93: 20        .byte $20   ; 



ofs_000_8C94_2D:
C - - J - - 0x008CA4 02:8C94: B5 43     LDA ram_state,X
C - - - - - 0x008CA6 02:8C96: 30 0D     BMI bra_8CA5
C - - - - - 0x008CA8 02:8C98: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008CAB 02:8C9B: A9 4C     LDA #con_sfx_punch
C - - - - - 0x008CAD 02:8C9D: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x008CB0 02:8CA0: A9 00     LDA #$00
C - - - - - 0x008CB2 02:8CA2: 9D 16 03  STA ram_0316_obj,X
bra_8CA5:
C - - - - - 0x008CB5 02:8CA5: A9 F1     LDA #< tbl_8CF1
C - - - - - 0x008CB7 02:8CA7: 85 29     STA ram_0029
C - - - - - 0x008CB9 02:8CA9: A9 8C     LDA #> tbl_8CF1
C - - - - - 0x008CBB 02:8CAB: 85 2A     STA ram_002A
C - - - - - 0x008CBD 02:8CAD: BD C1 03  LDA ram_03C1_obj,X
C - - - - - 0x008CC0 02:8CB0: 29 02     AND #$02
C - - - - - 0x008CC2 02:8CB2: F0 08     BEQ bra_8CBC
C - - - - - 0x008CC4 02:8CB4: A9 F5     LDA #< tbl_8CF5
C - - - - - 0x008CC6 02:8CB6: 85 29     STA ram_0029
C - - - - - 0x008CC8 02:8CB8: A9 8C     LDA #> tbl_8CF5
C - - - - - 0x008CCA 02:8CBA: 85 2A     STA ram_002A
bra_8CBC:
C - - - - - 0x008CCC 02:8CBC: A9 E5     LDA #< tbl_8CE5
C - - - - - 0x008CCE 02:8CBE: 85 2B     STA ram_002B
C - - - - - 0x008CD0 02:8CC0: A9 8C     LDA #> tbl_8CE5
C - - - - - 0x008CD2 02:8CC2: 85 2C     STA ram_002C
C - - - - - 0x008CD4 02:8CC4: E0 02     CPX #$02
C - - - - - 0x008CD6 02:8CC6: 90 16     BCC bra_8CDE
C - - - - - 0x008CD8 02:8CC8: AD 34 00  LDA a: ram_game_mode
C - - - - - 0x008CDB 02:8CCB: 30 11     BMI bra_8CDE    ; if con_gm_80
C - - - - - 0x008CDD 02:8CCD: AC 22 04  LDY ram_mission_hi
C - - - - - 0x008CE0 02:8CD0: B9 F9 8C  LDA tbl_8CF9,Y
C - - - - - 0x008CE3 02:8CD3: 18        CLC
C - - - - - 0x008CE4 02:8CD4: 65 2B     ADC ram_002B
C - - - - - 0x008CE6 02:8CD6: 85 2B     STA ram_002B
C - - - - - 0x008CE8 02:8CD8: A5 2C     LDA ram_002C
C - - - - - 0x008CEA 02:8CDA: 69 00     ADC #$00
C - - - - - 0x008CEC 02:8CDC: 85 2C     STA ram_002C
bra_8CDE:
C - - - - - 0x008CEE 02:8CDE: 20 AB 9F  JSR sub_9FAB
C - - - - - 0x008CF1 02:8CE1: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008CF4 02:8CE4: 60        RTS



_off001_8CE5_0F:
_off001_8CE5_10:
tbl_8CE5:
- D 0 - I - 0x008CF5 02:8CE5: 00        .byte $00   ; 
- D 0 - I - 0x008CF6 02:8CE6: 03        .byte $03   ; 
- D 0 - I - 0x008CF7 02:8CE7: 01        .byte $01   ; 
- D 0 - I - 0x008CF8 02:8CE8: 01        .byte $01   ; 
- D 0 - I - 0x008CF9 02:8CE9: 04        .byte $04   ; 
- D 0 - I - 0x008CFA 02:8CEA: 01        .byte $01   ; 
- D 0 - I - 0x008CFB 02:8CEB: 02        .byte $02   ; 
- D 0 - I - 0x008CFC 02:8CEC: 04        .byte $04   ; 
- D 0 - I - 0x008CFD 02:8CED: 01        .byte $01   ; 
- D 0 - I - 0x008CFE 02:8CEE: 02        .byte $02   ; 
- D 0 - I - 0x008CFF 02:8CEF: 04        .byte $04   ; 
- D 0 - I - 0x008D00 02:8CF0: 02        .byte $02   ; 



_off000_8CF1_0F:
tbl_8CF1:
- D 0 - I - 0x008D01 02:8CF1: 0C        .byte $0C   ; 
- D 0 - I - 0x008D02 02:8CF2: 0D        .byte $0D   ; 
- D 0 - I - 0x008D03 02:8CF3: 02        .byte $02   ; 
- D 0 - I - 0x008D04 02:8CF4: 80        .byte $80   ; 



_off000_8CF5_10:
tbl_8CF5:
- D 0 - I - 0x008D05 02:8CF5: 0E        .byte $0E   ; 
- D 0 - I - 0x008D06 02:8CF6: 0F        .byte $0F   ; 
- D 0 - I - 0x008D07 02:8CF7: 02        .byte $02   ; 
- D 0 - I - 0x008D08 02:8CF8: 80        .byte $80   ; 



tbl_8CF9:
- D 0 - - - 0x008D09 02:8CF9: 09        .byte $09   ; 00
- D 0 - - - 0x008D0A 02:8CFA: 09        .byte $09   ; 01
- D 0 - - - 0x008D0B 02:8CFB: 09        .byte $09   ; 02
- D 0 - - - 0x008D0C 02:8CFC: 09        .byte $09   ; 03
- - - - - - 0x008D0D 02:8CFD: 06        .byte $06   ; 04
- D 0 - - - 0x008D0E 02:8CFE: 06        .byte $06   ; 05
- D 0 - - - 0x008D0F 02:8CFF: 06        .byte $06   ; 06
- - - - - - 0x008D10 02:8D00: 06        .byte $06   ; 07
- D 0 - - - 0x008D11 02:8D01: 03        .byte $03   ; 08
- - - - - - 0x008D12 02:8D02: 03        .byte $03   ; 09
- D 0 - - - 0x008D13 02:8D03: 03        .byte $03   ; 0A
- D 0 - - - 0x008D14 02:8D04: 03        .byte $03   ; 0B
- D 0 - - - 0x008D15 02:8D05: 00        .byte $00   ; 0C
- - - - - - 0x008D16 02:8D06: 00        .byte $00   ; 0D
- D 0 - - - 0x008D17 02:8D07: 00        .byte $00   ; 0E



ofs_000_8D08_2E:
C - - J - - 0x008D18 02:8D08: B5 43     LDA ram_state,X
C - - - - - 0x008D1A 02:8D0A: 30 03     BMI bra_8D0F
C - - - - - 0x008D1C 02:8D0C: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_8D0F:
C - - - - - 0x008D1F 02:8D0F: A9 11     LDA #$11
C - - - - - 0x008D21 02:8D11: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008D24 02:8D14: 60        RTS



_off000_8D15_11:
- D 0 - I - 0x008D25 02:8D15: 16        .byte $16   ; 
- D 0 - I - 0x008D26 02:8D16: 17        .byte $17   ; 
- D 0 - I - 0x008D27 02:8D17: 18        .byte $18   ; 
- D 0 - I - 0x008D28 02:8D18: 80        .byte $80   ; 



_off001_8D19_11:
- D 0 - I - 0x008D29 02:8D19: 02        .byte $02   ; 
- D 0 - I - 0x008D2A 02:8D1A: 05        .byte $05   ; 
- D 0 - I - 0x008D2B 02:8D1B: 04        .byte $04   ; 



loc_8D1C_3B:
ofs_000_8D1C_2F:
C D 0 - - - 0x008D2C 02:8D1C: B5 43     LDA ram_state,X
C - - - - - 0x008D2E 02:8D1E: 30 03     BMI bra_8D23
C - - - - - 0x008D30 02:8D20: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_8D23:
C - - - - - 0x008D33 02:8D23: A9 12     LDA #$12
C - - - - - 0x008D35 02:8D25: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008D38 02:8D28: 60        RTS



_off001_8D29_12:
- D 0 - I - 0x008D39 02:8D29: 02        .byte $02   ; 
- D 0 - I - 0x008D3A 02:8D2A: 02        .byte $02   ; 
- D 0 - I - 0x008D3B 02:8D2B: 04        .byte $04   ; 
- D 0 - I - 0x008D3C 02:8D2C: 00        .byte $00   ; 



_off000_8D2D_12:
- D 0 - I - 0x008D3D 02:8D2D: 1C        .byte $1C   ; 
- D 0 - I - 0x008D3E 02:8D2E: 1D        .byte $1D   ; 
- D 0 - I - 0x008D3F 02:8D2F: 1E        .byte $1E   ; 
- D 0 - I - 0x008D40 02:8D30: 02        .byte $02   ; 
- D 0 - I - 0x008D41 02:8D31: 80        .byte $80   ; 



ofs_000_8D32_30:
C - - J - - 0x008D42 02:8D32: B5 43     LDA ram_state,X
C - - - - - 0x008D44 02:8D34: 30 11     BMI bra_8D47
C - - - - - 0x008D46 02:8D36: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008D49 02:8D39: A9 00     LDA #$00
C - - - - - 0x008D4B 02:8D3B: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008D4E 02:8D3E: A9 18     LDA #$18
C - - - - - 0x008D50 02:8D40: 95 C7     STA ram_animation_id,X
C - - - - - 0x008D52 02:8D42: A9 4D     LDA #con_sfx_kick
C - - - - - 0x008D54 02:8D44: 20 06 C0  JSR sub_0x01C016_play_sound
bra_8D47:
C - - - - - 0x008D57 02:8D47: F6 55     INC ram_animation_frame_counter,X
C - - - - - 0x008D59 02:8D49: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x008D5B 02:8D4B: C9 06     CMP #$06
C - - - - - 0x008D5D 02:8D4D: 90 04     BCC bra_8D53
C - - - - - 0x008D5F 02:8D4F: A9 00     LDA #con_state_00
C - - - - - 0x008D61 02:8D51: 95 43     STA ram_state,X
bra_8D53:
C - - - - - 0x008D63 02:8D53: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008D66 02:8D56: 60        RTS



ofs_000_8D57_31:
C - - J - - 0x008D67 02:8D57: B5 43     LDA ram_state,X
C - - - - - 0x008D69 02:8D59: 30 14     BMI bra_8D6F
C - - - - - 0x008D6B 02:8D5B: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008D6E 02:8D5E: A9 00     LDA #$00
C - - - - - 0x008D70 02:8D60: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008D73 02:8D63: B5 BF     LDA ram_obj_id,X
C - - - - - 0x008D75 02:8D65: C9 0C     CMP #con_obj_doppelganger
C - - - - - 0x008D77 02:8D67: D0 06     BNE bra_8D6F
C - - - - - 0x008D79 02:8D69: B5 63     LDA ram_0063_obj,X
C - - - - - 0x008D7B 02:8D6B: 49 80     EOR #$80
C - - - - - 0x008D7D 02:8D6D: 95 63     STA ram_0063_obj,X
bra_8D6F:
C - - - - - 0x008D7F 02:8D6F: A9 13     LDA #$13
C - - - - - 0x008D81 02:8D71: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008D84 02:8D74: B5 5C     LDA ram_animation_counter,X
C - - - - - 0x008D86 02:8D76: C9 04     CMP #$04
C - - - - - 0x008D88 02:8D78: D0 0A     BNE bra_8D84_RTS
C - - - - - 0x008D8A 02:8D7A: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x008D8C 02:8D7C: D0 06     BNE bra_8D84_RTS
C - - - - - 0x008D8E 02:8D7E: B5 63     LDA ram_0063_obj,X
C - - - - - 0x008D90 02:8D80: 49 80     EOR #$80
C - - - - - 0x008D92 02:8D82: 95 63     STA ram_0063_obj,X
bra_8D84_RTS:
C - - - - - 0x008D94 02:8D84: 60        RTS



_off001_8D85_13:
_off001_8D85_14:
- D 0 - I - 0x008D95 02:8D85: 02        .byte $02   ; 
- D 0 - I - 0x008D96 02:8D86: 04        .byte $04   ; 
- D 0 - I - 0x008D97 02:8D87: 02        .byte $02   ; 
- D 0 - I - 0x008D98 02:8D88: 00        .byte $00   ; 



_off000_8D89_13:
- D 0 - I - 0x008D99 02:8D89: 15        .byte $15   ; 
- D 0 - I - 0x008D9A 02:8D8A: 16        .byte $16   ; 
- D 0 - I - 0x008D9B 02:8D8B: 17        .byte $17   ; 
- D 0 - I - 0x008D9C 02:8D8C: 02        .byte $02   ; 
- D 0 - I - 0x008D9D 02:8D8D: 80        .byte $80   ; 



ofs_000_8D8E_32:
C - - J - - 0x008D9E 02:8D8E: B5 43     LDA ram_state,X
C - - - - - 0x008DA0 02:8D90: 30 03     BMI bra_8D95
C - - - - - 0x008DA2 02:8D92: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_8D95:
C - - - - - 0x008DA5 02:8D95: A9 14     LDA #$14
C - - - - - 0x008DA7 02:8D97: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008DAA 02:8D9A: 60        RTS



_off000_8D9B_14:
- D 0 - I - 0x008DAB 02:8D9B: 10        .byte $10   ; 
- D 0 - I - 0x008DAC 02:8D9C: 11        .byte $11   ; 
- D 0 - I - 0x008DAD 02:8D9D: 10        .byte $10   ; 
- D 0 - I - 0x008DAE 02:8D9E: 80        .byte $80   ; 



ofs_000_8D9F_33:
C - - J - - 0x008DAF 02:8D9F: A6 19     LDX ram_0019
C - - - - - 0x008DB1 02:8DA1: B5 43     LDA ram_state,X
C - - - - - 0x008DB3 02:8DA3: 30 1E     BMI bra_8DC3
C - - - - - 0x008DB5 02:8DA5: 09 80     ORA #$80
C - - - - - 0x008DB7 02:8DA7: 95 43     STA ram_state,X
C - - - - - 0x008DB9 02:8DA9: A9 00     LDA #$00
C - - - - - 0x008DBB 02:8DAB: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008DBE 02:8DAE: 95 5C     STA ram_animation_counter,X
C - - - - - 0x008DC0 02:8DB0: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x008DC2 02:8DB2: A9 4D     LDA #con_sfx_kick
C - - - - - 0x008DC4 02:8DB4: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x008DC7 02:8DB7: B5 BF     LDA ram_obj_id,X
C - - - - - 0x008DC9 02:8DB9: C9 0C     CMP #con_obj_doppelganger
C - - - - - 0x008DCB 02:8DBB: D0 06     BNE bra_8DC3
C - - - - - 0x008DCD 02:8DBD: B5 63     LDA ram_0063_obj,X
C - - - - - 0x008DCF 02:8DBF: 49 80     EOR #$80
C - - - - - 0x008DD1 02:8DC1: 95 63     STA ram_0063_obj,X
bra_8DC3:
C - - - - - 0x008DD3 02:8DC3: A9 15     LDA #$15
C - - - - - 0x008DD5 02:8DC5: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008DD8 02:8DC8: 60        RTS



_off000_8DC9_15:
- D 0 - I - 0x008DD9 02:8DC9: 15        .byte $15   ; 
- D 0 - I - 0x008DDA 02:8DCA: 16        .byte $16   ; 
- D 0 - I - 0x008DDB 02:8DCB: 02        .byte $02   ; 
- D 0 - I - 0x008DDC 02:8DCC: 80        .byte $80   ; 



_off001_8DCD_15:
- D 0 - I - 0x008DDD 02:8DCD: 01        .byte $01   ; 
- D 0 - I - 0x008DDE 02:8DCE: 04        .byte $04   ; 
- D 0 - I - 0x008DDF 02:8DCF: 00        .byte $00   ; 



ofs_000_8DD0_34:
C - - J - - 0x008DE0 02:8DD0: B5 43     LDA ram_state,X
C - - - - - 0x008DE2 02:8DD2: 30 03     BMI bra_8DD7
C - - - - - 0x008DE4 02:8DD4: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_8DD7:
C - - - - - 0x008DE7 02:8DD7: A9 16     LDA #$16
C - - - - - 0x008DE9 02:8DD9: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008DEC 02:8DDC: B5 C7     LDA ram_animation_id,X
C - - - - - 0x008DEE 02:8DDE: 29 7F     AND #$7F
C - - - - - 0x008DF0 02:8DE0: C9 04     CMP #$04
C - - - - - 0x008DF2 02:8DE2: D0 0C     BNE bra_8DF0_RTS
C - - - - - 0x008DF4 02:8DE4: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x008DF6 02:8DE6: D0 08     BNE bra_8DF0_RTS
C - - - - - 0x008DF8 02:8DE8: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x008DFB 02:8DEB: 49 80     EOR #$80
C - - - - - 0x008DFD 02:8DED: 9D 63 00  STA a: ram_0063_obj,X
bra_8DF0_RTS:
C - - - - - 0x008E00 02:8DF0: 60        RTS



_off000_8DF1_16:
- D 0 - I - 0x008E01 02:8DF1: 06        .byte $06   ; 
- D 0 - I - 0x008E02 02:8DF2: 03        .byte $03   ; 
- D 0 - I - 0x008E03 02:8DF3: 04        .byte $04   ; 
- D 0 - I - 0x008E04 02:8DF4: 03        .byte $03   ; 
- D 0 - I - 0x008E05 02:8DF5: 06        .byte $06   ; 
- D 0 - I - 0x008E06 02:8DF6: 80        .byte $80   ; 



_off001_8DF7_16:
- D 0 - I - 0x008E07 02:8DF7: 02        .byte $02   ; 
- D 0 - I - 0x008E08 02:8DF8: 02        .byte $02   ; 
- D 0 - I - 0x008E09 02:8DF9: 04        .byte $04   ; 
- D 0 - I - 0x008E0A 02:8DFA: 02        .byte $02   ; 
- D 0 - I - 0x008E0B 02:8DFB: 04        .byte $04   ; 



ofs_000_8DFC_35:
C - - J - - 0x008E0C 02:8DFC: B5 43     LDA ram_state,X
C - - - - - 0x008E0E 02:8DFE: 30 0C     BMI bra_8E0C
C - - - - - 0x008E10 02:8E00: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008E13 02:8E03: A9 19     LDA #$19
C - - - - - 0x008E15 02:8E05: 95 C7     STA ram_animation_id,X
C - - - - - 0x008E17 02:8E07: A9 4D     LDA #con_sfx_kick
C - - - - - 0x008E19 02:8E09: 20 06 C0  JSR sub_0x01C016_play_sound
bra_8E0C:
C - - - - - 0x008E1C 02:8E0C: F6 55     INC ram_animation_frame_counter,X
C - - - - - 0x008E1E 02:8E0E: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x008E20 02:8E10: C9 08     CMP #$08
C - - - - - 0x008E22 02:8E12: 90 04     BCC bra_8E18
C - - - - - 0x008E24 02:8E14: A9 13     LDA #con_state_13
C - - - - - 0x008E26 02:8E16: 95 43     STA ram_state,X
bra_8E18:
C - - - - - 0x008E28 02:8E18: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008E2B 02:8E1B: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x008E2E 02:8E1E: 20 10 9E  JSR sub_9E10
C - - - - - 0x008E31 02:8E21: 60        RTS



ofs_000_8E22_36:
C - - J - - 0x008E32 02:8E22: B5 43     LDA ram_state,X
C - - - - - 0x008E34 02:8E24: 30 03     BMI bra_8E29
C - - - - - 0x008E36 02:8E26: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_8E29:
C - - - - - 0x008E39 02:8E29: A9 17     LDA #$17
C - - - - - 0x008E3B 02:8E2B: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008E3E 02:8E2E: 60        RTS



_off000_8E2F_17:
- D 0 - I - 0x008E3F 02:8E2F: 24        .byte $24   ; 
- D 0 - I - 0x008E40 02:8E30: 25        .byte $25   ; 
- D 0 - I - 0x008E41 02:8E31: 26        .byte $26   ; 
- D 0 - I - 0x008E42 02:8E32: 27        .byte $27   ; 
- D 0 - I - 0x008E43 02:8E33: 24        .byte $24   ; 
- D 0 - I - 0x008E44 02:8E34: 25        .byte $25   ; 
- D 0 - I - 0x008E45 02:8E35: 26        .byte $26   ; 
- D 0 - I - 0x008E46 02:8E36: 27        .byte $27   ; 
- D 0 - I - 0x008E47 02:8E37: 80        .byte $80   ; 



_off001_8E38_17:
- D 0 - I - 0x008E48 02:8E38: 01        .byte $01   ; 
- D 0 - I - 0x008E49 02:8E39: 01        .byte $01   ; 
- D 0 - I - 0x008E4A 02:8E3A: 01        .byte $01   ; 
- D 0 - I - 0x008E4B 02:8E3B: 01        .byte $01   ; 
- D 0 - I - 0x008E4C 02:8E3C: 01        .byte $01   ; 
- D 0 - I - 0x008E4D 02:8E3D: 01        .byte $01   ; 
- D 0 - I - 0x008E4E 02:8E3E: 01        .byte $01   ; 
- D 0 - I - 0x008E4F 02:8E3F: 01        .byte $01   ; 



ofs_000_8E40_37:
- - - - - - 0x008E50 02:8E40: B5 43     LDA ram_state,X
- - - - - - 0x008E52 02:8E42: 30 03     BMI bra_8E47
- - - - - - 0x008E54 02:8E44: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_8E47:
- - - - - - 0x008E57 02:8E47: A9 18     LDA #$18
- - - - - - 0x008E59 02:8E49: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
- - - - - - 0x008E5C 02:8E4C: 20 4B 9E  JSR sub_9E4B
- - - - - - 0x008E5F 02:8E4F: 20 10 9E  JSR sub_9E10
- - - - - - 0x008E62 02:8E52: 60        RTS



_off000_8E53_18:
- - - - - - 0x008E63 02:8E53: 2F        .byte $2F   ; 
- - - - - - 0x008E64 02:8E54: 1A        .byte $1A   ; 
- - - - - - 0x008E65 02:8E55: 1B        .byte $1B   ; 
- - - - - - 0x008E66 02:8E56: 93        .byte $93   ; 



_off001_8E57_18:
- - - - - - 0x008E67 02:8E57: 04        .byte $04   ; 
- - - - - - 0x008E68 02:8E58: 02        .byte $02   ; 
- - - - - - 0x008E69 02:8E59: 08        .byte $08   ; 



ofs_000_8E5A_38:
C - - J - - 0x008E6A 02:8E5A: B5 43     LDA ram_state,X
C - - - - - 0x008E6C 02:8E5C: 30 13     BMI bra_8E71
C - - - - - 0x008E6E 02:8E5E: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008E71 02:8E61: A9 07     LDA #$07
C - - - - - 0x008E73 02:8E63: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x008E76 02:8E66: A9 03     LDA #$03
C - - - - - 0x008E78 02:8E68: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008E7B 02:8E6B: A9 80     LDA #con_004A_80
C - - - - - 0x008E7D 02:8E6D: 15 4A     ORA ram_004A_obj,X
C - - - - - 0x008E7F 02:8E6F: 95 4A     STA ram_004A_obj,X
bra_8E71:
C - - - - - 0x008E81 02:8E71: A9 19     LDA #$19
C - - - - - 0x008E83 02:8E73: 4C D2 9F  JMP loc_9FD2



_off001_8E76_19:
- D 0 - I - 0x008E86 02:8E76: 08        .byte $08   ; 
- D 0 - I - 0x008E87 02:8E77: 16        .byte $16   ; 



_off000_8E78_19:
- D 0 - I - 0x008E88 02:8E78: 05        .byte $05   ; 
- D 0 - I - 0x008E89 02:8E79: 25        .byte $25   ; 
- - - - - - 0x008E8A 02:8E7A: 93        .byte $93   ; 



ofs_000_8E7B_39:
C - - J - - 0x008E8B 02:8E7B: B5 43     LDA ram_state,X
C - - - - - 0x008E8D 02:8E7D: 30 08     BMI bra_8E87
C - - - - - 0x008E8F 02:8E7F: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008E92 02:8E82: A9 1C     LDA #con_sfx_cyclone_kick
C - - - - - 0x008E94 02:8E84: 20 06 C0  JSR sub_0x01C016_play_sound
bra_8E87:
C - - - - - 0x008E97 02:8E87: A9 1A     LDA #$1A
C - - - - - 0x008E99 02:8E89: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008E9C 02:8E8C: 60        RTS



_off000_8E8D_1A:
- D 0 - I - 0x008E9D 02:8E8D: 1F        .byte $1F   ; 
- D 0 - I - 0x008E9E 02:8E8E: 20        .byte $20   ; 
- D 0 - I - 0x008E9F 02:8E8F: 21        .byte $21   ; 
- D 0 - I - 0x008EA0 02:8E90: 22        .byte $22   ; 
- D 0 - I - 0x008EA1 02:8E91: 1F        .byte $1F   ; 
- D 0 - I - 0x008EA2 02:8E92: 20        .byte $20   ; 
- D 0 - I - 0x008EA3 02:8E93: 21        .byte $21   ; 
- D 0 - I - 0x008EA4 02:8E94: 22        .byte $22   ; 
- D 0 - I - 0x008EA5 02:8E95: 93        .byte $93   ; 



_off001_8E96_1A:
- D 0 - I - 0x008EA6 02:8E96: 01        .byte $01   ; 
- D 0 - I - 0x008EA7 02:8E97: 01        .byte $01   ; 
- D 0 - I - 0x008EA8 02:8E98: 01        .byte $01   ; 
- D 0 - I - 0x008EA9 02:8E99: 01        .byte $01   ; 
- D 0 - I - 0x008EAA 02:8E9A: 01        .byte $01   ; 
- D 0 - I - 0x008EAB 02:8E9B: 01        .byte $01   ; 
- D 0 - I - 0x008EAC 02:8E9C: 01        .byte $01   ; 
- D 0 - I - 0x008EAD 02:8E9D: 01        .byte $01   ; 



ofs_000_8E9E_3A:
C - - J - - 0x008EAE 02:8E9E: B5 43     LDA ram_state,X
C - - - - - 0x008EB0 02:8EA0: 30 25     BMI bra_8EC7
C - - - - - 0x008EB2 02:8EA2: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008EB5 02:8EA5: A9 18     LDA #$18
C - - - - - 0x008EB7 02:8EA7: 95 C7     STA ram_animation_id,X
C - - - - - 0x008EB9 02:8EA9: A9 08     LDA #$08
C - - - - - 0x008EBB 02:8EAB: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x008EBD 02:8EAD: A9 04     LDA #$04
C - - - - - 0x008EBF 02:8EAF: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x008EC2 02:8EB2: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x008EC4 02:8EB4: 09 80     ORA #con_004A_80
C - - - - - 0x008EC6 02:8EB6: 95 4A     STA ram_004A_obj,X
C - - - - - 0x008EC8 02:8EB8: A9 00     LDA #$00
C - - - - - 0x008ECA 02:8EBA: 9D 2D 03  STA ram_032D_obj,X
C - - - - - 0x008ECD 02:8EBD: A9 05     LDA #$05
C - - - - - 0x008ECF 02:8EBF: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x008ED2 02:8EC2: A9 1E     LDA #con_sfx_high_jump_kick
C - - - - - 0x008ED4 02:8EC4: 20 06 C0  JSR sub_0x01C016_play_sound
bra_8EC7:
C - - - - - 0x008ED7 02:8EC7: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x008ED9 02:8EC9: D0 0E     BNE bra_8ED9
C - - - - - 0x008EDB 02:8ECB: A9 80     LDA #$80
C - - - - - 0x008EDD 02:8ECD: 9D 2D 03  STA ram_032D_obj,X
C - - - - - 0x008EE0 02:8ED0: A9 13     LDA #con_state_13
C - - - - - 0x008EE2 02:8ED2: 95 43     STA ram_state,X
C - - - - - 0x008EE4 02:8ED4: A9 01     LDA #$01
C - - - - - 0x008EE6 02:8ED6: 9D 25 03  STA ram_0325_obj,X
bra_8ED9:
C - - - - - 0x008EE9 02:8ED9: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008EEC 02:8EDC: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x008EEF 02:8EDF: 20 10 9E  JSR sub_9E10
C - - - - - 0x008EF2 02:8EE2: 60        RTS



ofs_000_8EE3_3B:
C - - J - - 0x008EF3 02:8EE3: 4C 1C 8D  JMP loc_8D1C_3B



ofs_000_8EE6_3C:
C - - J - - 0x008EF6 02:8EE6: B5 43     LDA ram_state,X
C - - - - - 0x008EF8 02:8EE8: 30 03     BMI bra_8EED
C - - - - - 0x008EFA 02:8EEA: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_8EED:
C - - - - - 0x008EFD 02:8EED: A9 1B     LDA #$1B
C - - - - - 0x008EFF 02:8EEF: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008F02 02:8EF2: B5 C7     LDA ram_animation_id,X
C - - - - - 0x008F04 02:8EF4: 29 7F     AND #$7F
C - - - - - 0x008F06 02:8EF6: C9 02     CMP #$02
C - - - - - 0x008F08 02:8EF8: D0 0E     BNE bra_8F08
C - - - - - 0x008F0A 02:8EFA: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x008F0C 02:8EFC: C9 02     CMP #$02
C - - - - - 0x008F0E 02:8EFE: D0 08     BNE bra_8F08
C - - - - - 0x008F10 02:8F00: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x008F13 02:8F03: 49 80     EOR #$80
C - - - - - 0x008F15 02:8F05: 9D 63 00  STA a: ram_0063_obj,X
bra_8F08:
C - - - - - 0x008F18 02:8F08: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008F1B 02:8F0B: 60        RTS



_off000_8F0C_1B:
- D 0 - I - 0x008F1C 02:8F0C: 02        .byte $02   ; 
- D 0 - I - 0x008F1D 02:8F0D: 1A        .byte $1A   ; 
- D 0 - I - 0x008F1E 02:8F0E: 02        .byte $02   ; 
- D 0 - I - 0x008F1F 02:8F0F: 80        .byte $80   ; 



_off001_8F10_1B:
- D 0 - I - 0x008F20 02:8F10: 02        .byte $02   ; 
- D 0 - I - 0x008F21 02:8F11: 04        .byte $04   ; 
- D 0 - I - 0x008F22 02:8F12: 02        .byte $02   ; 



ofs_000_8F13_3D:
C - - J - - 0x008F23 02:8F13: B5 43     LDA ram_state,X
C - - - - - 0x008F25 02:8F15: 30 03     BMI bra_8F1A
C - - - - - 0x008F27 02:8F17: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_8F1A:
C - - - - - 0x008F2A 02:8F1A: B5 BF     LDA ram_obj_id,X
C - - - - - 0x008F2C 02:8F1C: 0A        ASL
C - - - - - 0x008F2D 02:8F1D: A8        TAY
C - - - - - 0x008F2E 02:8F1E: B9 35 8F  LDA tbl_8F39 - $04,Y
C - - - - - 0x008F31 02:8F21: 85 29     STA ram_0029
C - - - - - 0x008F33 02:8F23: B9 36 8F  LDA tbl_8F39 - $03,Y
C - - - - - 0x008F36 02:8F26: 85 2A     STA ram_002A
C - - - - - 0x008F38 02:8F28: B9 43 8F  LDA tbl_8F47 - $04,Y
C - - - - - 0x008F3B 02:8F2B: 85 2B     STA ram_002B
C - - - - - 0x008F3D 02:8F2D: B9 44 8F  LDA tbl_8F47 - $03,Y
C - - - - - 0x008F40 02:8F30: 85 2C     STA ram_002C
C - - - - - 0x008F42 02:8F32: 20 AB 9F  JSR sub_9FAB
C - - - - - 0x008F45 02:8F35: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x008F48 02:8F38: 60        RTS


tbl_8F39:
- D 0 - - - 0x008F49 02:8F39: 55 8F     .word off_8F55_01
- - - - - - 0x008F4B 02:8F3B: 00 00     .word $0000 ; 02
- - - - - - 0x008F4D 02:8F3D: 00 00     .word $0000 ; 03
- - - - - - 0x008F4F 02:8F3F: 00 00     .word $0000 ; 04
- - - - - - 0x008F51 02:8F41: 00 00     .word $0000 ; 05
- - - - - - 0x008F53 02:8F43: 00 00     .word $0000 ; 06
- D 0 - - - 0x008F55 02:8F45: 5A 8F     .word off_8F5A_07



tbl_8F47:
- D 0 - - - 0x008F57 02:8F47: 58 8F     .word off_8F58_01
- - - - - - 0x008F59 02:8F49: 00 00     .word $0000 ; 02
- - - - - - 0x008F5B 02:8F4B: 00 00     .word $0000 ; 03
- - - - - - 0x008F5D 02:8F4D: 00 00     .word $0000 ; 04
- - - - - - 0x008F5F 02:8F4F: 00 00     .word $0000 ; 05
- - - - - - 0x008F61 02:8F51: 00 00     .word $0000 ; 06
- D 0 - - - 0x008F63 02:8F53: 5D 8F     .word off_8F5D_07


off_8F55_01:
- D 0 - I - 0x008F65 02:8F55: 15        .byte $15   ; 
- D 0 - I - 0x008F66 02:8F56: 16        .byte $16   ; 
- D 0 - I - 0x008F67 02:8F57: 80        .byte $80   ; 



off_8F58_01:
- D 0 - I - 0x008F68 02:8F58: 04        .byte $04   ; 
- D 0 - I - 0x008F69 02:8F59: 04        .byte $04   ; 



off_8F5A_07:
- D 0 - I - 0x008F6A 02:8F5A: 0E        .byte $0E   ; 
- D 0 - I - 0x008F6B 02:8F5B: 0F        .byte $0F   ; 
- D 0 - I - 0x008F6C 02:8F5C: 80        .byte $80   ; 



off_8F5D_07:
- D 0 - I - 0x008F6D 02:8F5D: 06        .byte $06   ; 
- D 0 - I - 0x008F6E 02:8F5E: 04        .byte $04   ; 



ofs_000_8F5F_3E:
C - - J - - 0x008F6F 02:8F5F: B5 43     LDA ram_state,X
C - - - - - 0x008F71 02:8F61: 30 03     BMI bra_8F66
C - - - - - 0x008F73 02:8F63: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_8F66:
C - - - - - 0x008F76 02:8F66: A0 1C     LDY #$1C
C - - - - - 0x008F78 02:8F68: BD C1 03  LDA ram_03C1_obj,X
C - - - - - 0x008F7B 02:8F6B: 29 02     AND #$02
C - - - - - 0x008F7D 02:8F6D: D0 02     BNE bra_8F71
C - - - - - 0x008F7F 02:8F6F: A0 1D     LDY #$1D
bra_8F71:
C - - - - - 0x008F81 02:8F71: 98        TYA
C - - - - - 0x008F82 02:8F72: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008F85 02:8F75: 60        RTS



_off000_8F76_1C:
- D 0 - I - 0x008F86 02:8F76: 0D        .byte $0D   ; 
- D 0 - I - 0x008F87 02:8F77: 0F        .byte $0F   ; 
- D 0 - I - 0x008F88 02:8F78: 80        .byte $80   ; 



_off000_8F79_1D:
- D 0 - I - 0x008F89 02:8F79: 0F        .byte $0F   ; 
- D 0 - I - 0x008F8A 02:8F7A: 0E        .byte $0E   ; 
- D 0 - I - 0x008F8B 02:8F7B: 0F        .byte $0F   ; 
- D 0 - I - 0x008F8C 02:8F7C: 80        .byte $80   ; 



_off001_8F7D_1C:
_off001_8F7D_1D:
- D 0 - I - 0x008F8D 02:8F7D: 04        .byte $04   ; 
- D 0 - I - 0x008F8E 02:8F7E: 04        .byte $04   ; 
- D 0 - I - 0x008F8F 02:8F7F: 04        .byte $04   ; 



ofs_000_8F80_3F:
C - - J - - 0x008F90 02:8F80: B5 43     LDA ram_state,X
C - - - - - 0x008F92 02:8F82: 30 08     BMI bra_8F8C
C - - - - - 0x008F94 02:8F84: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008F97 02:8F87: A9 00     LDA #$00
C - - - - - 0x008F99 02:8F89: 9D 16 03  STA ram_0316_obj,X
bra_8F8C:
C - - - - - 0x008F9C 02:8F8C: A9 1E     LDA #$1E
C - - - - - 0x008F9E 02:8F8E: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x008FA1 02:8F91: B5 C7     LDA ram_animation_id,X
C - - - - - 0x008FA3 02:8F93: 29 7F     AND #$7F
C - - - - - 0x008FA5 02:8F95: C9 3F     CMP #$3F
C - - - - - 0x008FA7 02:8F97: D0 3D     BNE bra_8FD6_RTS
C - - - - - 0x008FA9 02:8F99: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x008FAB 02:8F9B: C9 04     CMP #$04
C - - - - - 0x008FAD 02:8F9D: D0 37     BNE bra_8FD6_RTS
C - - - - - 0x008FAF 02:8F9F: A9 3A     LDA #con_sfx_clone_fireball
C - - - - - 0x008FB1 02:8FA1: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x008FB4 02:8FA4: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x008FB7 02:8FA7: 29 7F     AND #$7F
C - - - - - 0x008FB9 02:8FA9: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x008FBC 02:8FAC: A8        TAY
C - - - - - 0x008FBD 02:8FAD: 20 66 A4  JSR sub_A466
C - - - - - 0x008FC0 02:8FB0: A9 70     LDA #con_state_70
C - - - - - 0x008FC2 02:8FB2: 99 43 00  STA a: ram_state,Y
C - - - - - 0x008FC5 02:8FB5: 8A        TXA
C - - - - - 0x008FC6 02:8FB6: 99 4A 04  STA ram_044A_obj,Y
C - - - - - 0x008FC9 02:8FB9: A9 20     LDA #$20
C - - - - - 0x008FCB 02:8FBB: 85 29     STA ram_0029
C - - - - - 0x008FCD 02:8FBD: A9 18     LDA #$18
C - - - - - 0x008FCF 02:8FBF: 85 2A     STA ram_002A
C - - - - - 0x008FD1 02:8FC1: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x008FD4 02:8FC4: 10 04     BPL bra_8FCA
C - - - - - 0x008FD6 02:8FC6: A9 E0     LDA #$E0
C - - - - - 0x008FD8 02:8FC8: 85 29     STA ram_0029
bra_8FCA:
C - - - - - 0x008FDA 02:8FCA: 20 EC 9F  JSR sub_9FEC
C - - - - - 0x008FDD 02:8FCD: B9 0F 03  LDA ram_030F_obj,Y
C - - - - - 0x008FE0 02:8FD0: 18        CLC
C - - - - - 0x008FE1 02:8FD1: 69 80     ADC #$80
C - - - - - 0x008FE3 02:8FD3: 99 0F 03  STA ram_030F_obj,Y
bra_8FD6_RTS:
C - - - - - 0x008FE6 02:8FD6: 60        RTS



_off000_8FD7_1E:
- D 0 - I - 0x008FE7 02:8FD7: 3A        .byte $3A   ; 
- D 0 - I - 0x008FE8 02:8FD8: 3B        .byte $3B   ; 
- D 0 - I - 0x008FE9 02:8FD9: 3C        .byte $3C   ; 
- D 0 - I - 0x008FEA 02:8FDA: 3D        .byte $3D   ; 
- D 0 - I - 0x008FEB 02:8FDB: 3E        .byte $3E   ; 
- D 0 - I - 0x008FEC 02:8FDC: 3F        .byte $3F   ; 
- D 0 - I - 0x008FED 02:8FDD: 80        .byte $80   ; 



_off001_8FDE_1E:
- D 0 - I - 0x008FEE 02:8FDE: 02        .byte $02   ; 
- D 0 - I - 0x008FEF 02:8FDF: 02        .byte $02   ; 
- D 0 - I - 0x008FF0 02:8FE0: 02        .byte $02   ; 
- D 0 - I - 0x008FF1 02:8FE1: 02        .byte $02   ; 
- D 0 - I - 0x008FF2 02:8FE2: 02        .byte $02   ; 
- D 0 - I - 0x008FF3 02:8FE3: 04        .byte $04   ; 



ofs_000_8FE4_40:
C - - J - - 0x008FF4 02:8FE4: B5 43     LDA ram_state,X
C - - - - - 0x008FF6 02:8FE6: 30 10     BMI bra_8FF8_RTS
C - - - - - 0x008FF8 02:8FE8: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x008FFB 02:8FEB: BD 54 04  LDA ram_0454,X
C - - - - - 0x008FFE 02:8FEE: A8        TAY
C - - - - - 0x008FFF 02:8FEF: A9 24     LDA #con_state_24
C - - - - - 0x009001 02:8FF1: 99 43 00  STA a: ram_state,Y
C - - - - - 0x009004 02:8FF4: A9 41     LDA #con_state_41
C - - - - - 0x009006 02:8FF6: 95 43     STA ram_state,X
bra_8FF8_RTS:
C - - - - - 0x009008 02:8FF8: 60        RTS



ofs_000_8FF9_41:
C - - J - - 0x009009 02:8FF9: B5 43     LDA ram_state,X
C - - - - - 0x00900B 02:8FFB: 30 03     BMI bra_9000
C - - - - - 0x00900D 02:8FFD: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_9000:
C - - - - - 0x009010 02:9000: BD 54 04  LDA ram_0454,X
C - - - - - 0x009013 02:9003: A8        TAY
C - - - - - 0x009014 02:9004: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x009017 02:9007: 29 7F     AND #$7F
C - - - - - 0x009019 02:9009: C9 24     CMP #con_state_24
C - - - - - 0x00901B 02:900B: F0 04     BEQ bra_9011_RTS
C - - - - - 0x00901D 02:900D: A9 10     LDA #con_state_10
C - - - - - 0x00901F 02:900F: 95 43     STA ram_state,X
bra_9011_RTS:
C - - - - - 0x009021 02:9011: 60        RTS



ofs_000_9012_42:
C - - J - - 0x009022 02:9012: B5 43     LDA ram_state,X
C - - - - - 0x009024 02:9014: 30 22     BMI bra_9038
C - - - - - 0x009026 02:9016: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x009029 02:9019: 29 7F     AND #$7F
C - - - - - 0x00902B 02:901B: A8        TAY
C - - - - - 0x00902C 02:901C: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x00902F 02:901F: C9 17     CMP #con_obj_baton
C - - - - - 0x009031 02:9021: D0 05     BNE bra_9028
C - - - - - 0x009033 02:9023: A9 5C     LDA #con_state_5C
C - - - - - 0x009035 02:9025: 95 43     STA ram_state,X
C - - - - - 0x009037 02:9027: 60        RTS
bra_9028:
C - - - - - 0x009038 02:9028: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x00903B 02:902B: A9 10     LDA #$10
C - - - - - 0x00903D 02:902D: 95 C7     STA ram_animation_id,X
C - - - - - 0x00903F 02:902F: A9 06     LDA #$06
C - - - - - 0x009041 02:9031: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x009043 02:9033: A9 1F     LDA #con_sfx_throw_knife
C - - - - - 0x009045 02:9035: 20 06 C0  JSR sub_0x01C016_play_sound
bra_9038:
C - - - - - 0x009048 02:9038: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x00904A 02:903A: D0 6F     BNE bra_90AB
C - - - - - 0x00904C 02:903C: A9 04     LDA #$04
C - - - - - 0x00904E 02:903E: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x009050 02:9040: F6 5C     INC ram_animation_counter,X
C - - - - - 0x009052 02:9042: B5 5C     LDA ram_animation_counter,X
C - - - - - 0x009054 02:9044: C9 02     CMP #$02
C - - - - - 0x009056 02:9046: B0 5F     BCS bra_90A7
loc_9048:
C D 0 - - - 0x009058 02:9048: A9 00     LDA #$00
C - - - - - 0x00905A 02:904A: 9D 46 04  STA ram_0446_obj,X
C - - - - - 0x00905D 02:904D: A9 11     LDA #$11
C - - - - - 0x00905F 02:904F: 95 C7     STA ram_animation_id,X
C - - - - - 0x009061 02:9051: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x009064 02:9054: 10 55     BPL bra_90AB
C - - - - - 0x009066 02:9056: 29 7F     AND #$7F
C - - - - - 0x009068 02:9058: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x00906B 02:905B: 48        PHA
C - - - - - 0x00906C 02:905C: A8        TAY
C - - - - - 0x00906D 02:905D: 20 66 A4  JSR sub_A466
C - - - - - 0x009070 02:9060: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x009073 02:9063: A8        TAY
C - - - - - 0x009074 02:9064: B9 9D 90  LDA tbl_90AF - $12,Y
C - - - - - 0x009077 02:9067: 85 1A     STA ram_001A
C - - - - - 0x009079 02:9069: 68        PLA
C - - - - - 0x00907A 02:906A: A8        TAY
C - - - - - 0x00907B 02:906B: A5 1A     LDA ram_001A
C - - - - - 0x00907D 02:906D: 99 43 00  STA a: ram_state,Y
C - - - - - 0x009080 02:9070: 8A        TXA
C - - - - - 0x009081 02:9071: 99 4A 04  STA ram_044A_obj,Y
C - - - - - 0x009084 02:9074: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x009087 02:9077: 29 DF     AND #con_004A_20 ^ $FF
C - - - - - 0x009089 02:9079: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x00908C 02:907C: A9 10     LDA #$10
C - - - - - 0x00908E 02:907E: 85 29     STA ram_0029
C - - - - - 0x009090 02:9080: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x009093 02:9083: 10 04     BPL bra_9089
C - - - - - 0x009095 02:9085: A9 F0     LDA #$F0
C - - - - - 0x009097 02:9087: 85 29     STA ram_0029
bra_9089:
C - - - - - 0x009099 02:9089: A9 18     LDA #$18
C - - - - - 0x00909B 02:908B: 85 2A     STA ram_002A
C - - - - - 0x00909D 02:908D: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x0090A0 02:9090: C9 17     CMP #con_obj_baton
C - - - - - 0x0090A2 02:9092: F0 04     BEQ bra_9098
C - - - - - 0x0090A4 02:9094: A9 20     LDA #$20
C - - - - - 0x0090A6 02:9096: 85 2A     STA ram_002A
bra_9098:
C - - - - - 0x0090A8 02:9098: 20 EC 9F  JSR sub_9FEC
C - - - - - 0x0090AB 02:909B: B9 0F 03  LDA ram_030F_obj,Y
C - - - - - 0x0090AE 02:909E: 18        CLC
C - - - - - 0x0090AF 02:909F: 69 80     ADC #$80
C - - - - - 0x0090B1 02:90A1: 99 0F 03  STA ram_030F_obj,Y
C - - - - - 0x0090B4 02:90A4: 4C AB 90  JMP loc_90AB
bra_90A7:
C - - - - - 0x0090B7 02:90A7: A9 00     LDA #con_state_00
C - - - - - 0x0090B9 02:90A9: 95 43     STA ram_state,X
bra_90AB:
loc_90AB:
C D 0 - - - 0x0090BB 02:90AB: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x0090BE 02:90AE: 60        RTS



tbl_90AF:
- D 0 - - - 0x0090BF 02:90AF: 6D        .byte con_state_6D   ; 12 con_obj_knife
- - - - - - 0x0090C0 02:90B0: 00        .byte con_state_00   ; 13 con_obj_13
- D 0 - - - 0x0090C1 02:90B1: 6E        .byte con_state_6E   ; 14 con_obj_grenade
- - - - - - 0x0090C2 02:90B2: 00        .byte con_state_00   ; 15 con_obj_chain_whip
- D 0 - - - 0x0090C3 02:90B3: 6E        .byte con_state_6E   ; 16 con_obj_flame_grenades
- D 0 - - - 0x0090C4 02:90B4: 77        .byte con_state_77   ; 17 con_obj_baton
- - - - - - 0x0090C5 02:90B5: 00        .byte con_state_00   ; 18 con_obj_18
- - - - - - 0x0090C6 02:90B6: 00        .byte con_state_00   ; 19 con_obj_19
- D 0 - - - 0x0090C7 02:90B7: 74        .byte con_state_74   ; 1A con_obj_1A



ofs_000_90B8_43:
C - - J - - 0x0090C8 02:90B8: B5 43     LDA ram_state,X
C - - - - - 0x0090CA 02:90BA: 30 03     BMI bra_90BF
C - - - - - 0x0090CC 02:90BC: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_90BF:
C - - - - - 0x0090CF 02:90BF: A9 1F     LDA #$1F
C - - - - - 0x0090D1 02:90C1: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x0090D4 02:90C4: 60        RTS



_off000_90C5_1F:
_off000_90C5_2F:
- D 0 - I - 0x0090D5 02:90C5: 12        .byte $12   ; 
- D 0 - I - 0x0090D6 02:90C6: 13        .byte $13   ; 
- D 0 - I - 0x0090D7 02:90C7: 14        .byte $14   ; 
- D 0 - I - 0x0090D8 02:90C8: 80        .byte $80   ; 



_off001_90C9_2F:
- D 0 - I - 0x0090D9 02:90C9: 01        .byte $01   ; 
- D 0 - I - 0x0090DA 02:90CA: 02        .byte $02   ; 
- D 0 - I - 0x0090DB 02:90CB: 01        .byte $01   ; 



_off001_90CC_1F:
- D 0 - I - 0x0090DC 02:90CC: 03        .byte $03   ; 
- D 0 - I - 0x0090DD 02:90CD: 04        .byte $04   ; 
- D 0 - I - 0x0090DE 02:90CE: 03        .byte $03   ; 



ofs_000_90CF_44:
C - - J - - 0x0090DF 02:90CF: B5 43     LDA ram_state,X
C - - - - - 0x0090E1 02:90D1: 30 09     BMI bra_90DC
C - - - - - 0x0090E3 02:90D3: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0090E6 02:90D6: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x0090E8 02:90D8: 09 02     ORA #con_004A_02
C - - - - - 0x0090EA 02:90DA: 95 4A     STA ram_004A_obj,X
bra_90DC:
C - - - - - 0x0090EC 02:90DC: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x0090EE 02:90DE: D0 2E     BNE bra_910E
C - - - - - 0x0090F0 02:90E0: B4 5C     LDY ram_animation_counter,X
C - - - - - 0x0090F2 02:90E2: B9 30 91  LDA tbl_9130,Y
C - - - - - 0x0090F5 02:90E5: 85 29     STA ram_0029
C - - - - - 0x0090F7 02:90E7: A9 00     LDA #$00
C - - - - - 0x0090F9 02:90E9: 85 2A     STA ram_002A
C - - - - - 0x0090FB 02:90EB: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x0090FE 02:90EE: 30 11     BMI bra_9101
C - - - - - 0x009100 02:90F0: 18        CLC
C - - - - - 0x009101 02:90F1: A5 29     LDA ram_0029
C - - - - - 0x009103 02:90F3: 49 FF     EOR #$FF
C - - - - - 0x009105 02:90F5: 69 01     ADC #< $0001
C - - - - - 0x009107 02:90F7: 85 29     STA ram_0029
C - - - - - 0x009109 02:90F9: A5 2A     LDA ram_002A
C - - - - - 0x00910B 02:90FB: 49 FF     EOR #$FF
C - - - - - 0x00910D 02:90FD: 69 00     ADC #> $0001
C - - - - - 0x00910F 02:90FF: 85 2A     STA ram_002A
bra_9101:
C - - - - - 0x009111 02:9101: 18        CLC
C - - - - - 0x009112 02:9102: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x009114 02:9104: 65 29     ADC ram_0029
C - - - - - 0x009116 02:9106: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x009118 02:9108: B5 80     LDA ram_pos_X_hi,X
C - - - - - 0x00911A 02:910A: 65 2A     ADC ram_002A
C - - - - - 0x00911C 02:910C: 95 80     STA ram_pos_X_hi,X
bra_910E:
C - - - - - 0x00911E 02:910E: A9 20     LDA #$20
C - - - - - 0x009120 02:9110: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x009123 02:9113: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x009126 02:9116: B5 43     LDA ram_state,X
C - - - - - 0x009128 02:9118: C9 00     CMP #con_state_00
C - - - - - 0x00912A 02:911A: D0 06     BNE bra_9122_RTS    ; bzk optimize, BEQ
C - - - - - 0x00912C 02:911C: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x00912E 02:911E: 29 FD     AND #con_004A_02 ^ $FF
C - - - - - 0x009130 02:9120: 95 4A     STA ram_004A_obj,X
bra_9122_RTS:
C - - - - - 0x009132 02:9122: 60        RTS



_off000_9123_20:
- D 0 - I - 0x009133 02:9123: 1B        .byte $1B   ; 
- D 0 - I - 0x009134 02:9124: 1C        .byte $1C   ; 
- D 0 - I - 0x009135 02:9125: 1D        .byte $1D   ; 
- D 0 - I - 0x009136 02:9126: 1E        .byte $1E   ; 
- D 0 - I - 0x009137 02:9127: 06        .byte $06   ; 
- D 0 - I - 0x009138 02:9128: 02        .byte $02   ; 
- D 0 - I - 0x009139 02:9129: 80        .byte $80   ; 



_off001_912A_20:
- D 0 - I - 0x00913A 02:912A: 02        .byte $02   ; 
- D 0 - I - 0x00913B 02:912B: 02        .byte $02   ; 
- D 0 - I - 0x00913C 02:912C: 02        .byte $02   ; 
- D 0 - I - 0x00913D 02:912D: 02        .byte $02   ; 
- D 0 - I - 0x00913E 02:912E: 02        .byte $02   ; 
- D 0 - I - 0x00913F 02:912F: 02        .byte $02   ; 



tbl_9130:
- D 0 - - - 0x009140 02:9130: 00        .byte $00   ; 00
- D 0 - - - 0x009141 02:9131: 1C        .byte $1C   ; 01
- D 0 - - - 0x009142 02:9132: 03        .byte $03   ; 02
- D 0 - - - 0x009143 02:9133: 10        .byte $10   ; 03
- D 0 - - - 0x009144 02:9134: 24        .byte $24   ; 04
- D 0 - - - 0x009145 02:9135: 04        .byte $04   ; 05
- D 0 - - - 0x009146 02:9136: 00        .byte $00   ; 06



ofs_000_9137_45:
C - - J - - 0x009147 02:9137: B5 43     LDA ram_state,X
C - - - - - 0x009149 02:9139: 30 03     BMI bra_913E
C - - - - - 0x00914B 02:913B: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_913E:
C - - - - - 0x00914E 02:913E: B5 BF     LDA ram_obj_id,X
C - - - - - 0x009150 02:9140: 0A        ASL
C - - - - - 0x009151 02:9141: A8        TAY
C - - - - - 0x009152 02:9142: B9 5D 91  LDA tbl_915D,Y
C - - - - - 0x009155 02:9145: 85 29     STA ram_0029
C - - - - - 0x009157 02:9147: B9 5E 91  LDA tbl_915D + $01,Y
C - - - - - 0x00915A 02:914A: 85 2A     STA ram_002A
C - - - - - 0x00915C 02:914C: B9 67 91  LDA tbl_9167,Y
C - - - - - 0x00915F 02:914F: 85 2B     STA ram_002B
C - - - - - 0x009161 02:9151: B9 68 91  LDA tbl_9167 + $01,Y
C - - - - - 0x009164 02:9154: 85 2C     STA ram_002C
C - - - - - 0x009166 02:9156: 20 AB 9F  JSR sub_9FAB
C - - - - - 0x009169 02:9159: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x00916C 02:915C: 60        RTS



tbl_915D:
- D 0 - - - 0x00916D 02:915D: 71 91     .word off_9171_00_billy
- - - - - - 0x00916F 02:915F: 71 91     .word off_9171_01_jimmy
- - - - - - 0x009171 02:9161: 71 91     .word off_9171_02_williams
- - - - - - 0x009173 02:9163: 71 91     .word off_9171_03_roper
- D 0 - - - 0x009175 02:9165: 76 91     .word off_9176_04_linda



tbl_9167:
- D 0 - - - 0x009177 02:9167: 7A 91     .word off_917A_00_billy
- - - - - - 0x009179 02:9169: 7A 91     .word off_917A_01_jimmy
- - - - - - 0x00917B 02:916B: 7A 91     .word off_917A_02_williams
- - - - - - 0x00917D 02:916D: 7A 91     .word off_917A_03_roper
- D 0 - - - 0x00917F 02:916F: 7A 91     .word off_917A_04_linda



off_9171_00_billy:
off_9171_01_jimmy:
off_9171_02_williams:
off_9171_03_roper:
- D 0 - I - 0x009181 02:9171: 10        .byte $10   ; 
- D 0 - I - 0x009182 02:9172: 5E        .byte $5E   ; 
- D 0 - I - 0x009183 02:9173: 5F        .byte $5F   ; 
- D 0 - I - 0x009184 02:9174: 11        .byte $11   ; 
- D 0 - I - 0x009185 02:9175: 80        .byte $80   ; 



off_9176_04_linda:
- D 0 - I - 0x009186 02:9176: 11        .byte $11   ; 
- D 0 - I - 0x009187 02:9177: 12        .byte $12   ; 
- D 0 - I - 0x009188 02:9178: 13        .byte $13   ; 
- D 0 - I - 0x009189 02:9179: 80        .byte $80   ; 



off_917A_00_billy:
off_917A_01_jimmy:
off_917A_02_williams:
off_917A_03_roper:
off_917A_04_linda:
- D 0 - I - 0x00918A 02:917A: 02        .byte $02   ; 
- D 0 - I - 0x00918B 02:917B: 02        .byte $02   ; 
- D 0 - I - 0x00918C 02:917C: 02        .byte $02   ; 
- D 0 - I - 0x00918D 02:917D: 02        .byte $02   ; 



ofs_000_917E_46:
- - - - - - 0x00918E 02:917E: B5 43     LDA ram_state,X
- - - - - - 0x009190 02:9180: 30 03     BMI bra_9185
- - - - - - 0x009192 02:9182: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_9185:
- - - - - - 0x009195 02:9185: A9 21     LDA #$21
- - - - - - 0x009197 02:9187: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
- - - - - - 0x00919A 02:918A: 60        RTS



_off000_918B_21:
- - - - - - 0x00919B 02:918B: 0F        .byte $0F   ; 
- - - - - - 0x00919C 02:918C: 0E        .byte $0E   ; 
- - - - - - 0x00919D 02:918D: 80        .byte $80   ; 



_off001_918E_21:
- - - - - - 0x00919E 02:918E: 04        .byte $04   ; 
- - - - - - 0x00919F 02:918F: 08        .byte $08   ; 



ofs_000_9190_47:
C - - J - - 0x0091A0 02:9190: B5 43     LDA ram_state,X
C - - - - - 0x0091A2 02:9192: 30 03     BMI bra_9197
C - - - - - 0x0091A4 02:9194: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_9197:
C - - - - - 0x0091A7 02:9197: A9 22     LDA #$22
C - - - - - 0x0091A9 02:9199: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x0091AC 02:919C: B5 C7     LDA ram_animation_id,X
C - - - - - 0x0091AE 02:919E: 29 7F     AND #$7F
C - - - - - 0x0091B0 02:91A0: C9 10     CMP #$10
C - - - - - 0x0091B2 02:91A2: D0 28     BNE bra_91CC_RTS
C - - - - - 0x0091B4 02:91A4: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x0091B6 02:91A6: C9 08     CMP #$08
C - - - - - 0x0091B8 02:91A8: D0 22     BNE bra_91CC_RTS
C - - - - - 0x0091BA 02:91AA: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x0091BD 02:91AD: 10 10     BPL bra_91BF
C - - - - - 0x0091BF 02:91AF: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x0091C1 02:91B1: 38        SEC
C - - - - - 0x0091C2 02:91B2: E9 14     SBC #< $0014
C - - - - - 0x0091C4 02:91B4: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x0091C6 02:91B6: B5 80     LDA ram_pos_X_hi,X
C - - - - - 0x0091C8 02:91B8: E9 00     SBC #> $0014
C - - - - - 0x0091CA 02:91BA: 95 80     STA ram_pos_X_hi,X
C - - - - - 0x0091CC 02:91BC: 4C CC 91  JMP loc_91CC_RTS
bra_91BF:
C - - - - - 0x0091CF 02:91BF: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x0091D1 02:91C1: 18        CLC
C - - - - - 0x0091D2 02:91C2: 69 14     ADC #< $0014
C - - - - - 0x0091D4 02:91C4: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x0091D6 02:91C6: B5 80     LDA ram_pos_X_hi,X
C - - - - - 0x0091D8 02:91C8: 69 00     ADC #> $0014
C - - - - - 0x0091DA 02:91CA: 95 80     STA ram_pos_X_hi,X
bra_91CC_RTS:
loc_91CC_RTS:
C D 0 - - - 0x0091DC 02:91CC: 60        RTS



_off000_91CD_22:
- D 0 - I - 0x0091DD 02:91CD: 01        .byte $01   ; 
- D 0 - I - 0x0091DE 02:91CE: 10        .byte $10   ; 
- D 0 - I - 0x0091DF 02:91CF: 80        .byte $80   ; 



_off001_91D0_22:
- D 0 - I - 0x0091E0 02:91D0: 04        .byte $04   ; 
- D 0 - I - 0x0091E1 02:91D1: 08        .byte $08   ; 



ofs_000_91D2_48:
C - - J - - 0x0091E2 02:91D2: B5 43     LDA ram_state,X
C - - - - - 0x0091E4 02:91D4: 30 18     BMI bra_91EE
C - - - - - 0x0091E6 02:91D6: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0091E9 02:91D9: A9 05     LDA #$05
C - - - - - 0x0091EB 02:91DB: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x0091EE 02:91DE: A9 09     LDA #$09
C - - - - - 0x0091F0 02:91E0: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x0091F3 02:91E3: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x0091F5 02:91E5: 09 80     ORA #con_004A_80
C - - - - - 0x0091F7 02:91E7: 95 4A     STA ram_004A_obj,X
C - - - - - 0x0091F9 02:91E9: A9 37     LDA #con_sfx_somersault
C - - - - - 0x0091FB 02:91EB: 20 06 C0  JSR sub_0x01C016_play_sound
bra_91EE:
C - - - - - 0x0091FE 02:91EE: A9 23     LDA #$23
C - - - - - 0x009200 02:91F0: 20 D2 9F  JSR sub_9FD2
C - - - - - 0x009203 02:91F3: A6 19     LDX ram_0019
C - - - - - 0x009205 02:91F5: BD 54 04  LDA ram_0454,X
C - - - - - 0x009208 02:91F8: A8        TAY
C - - - - - 0x009209 02:91F9: 20 73 A4  JSR sub_A473
C - - - - - 0x00920C 02:91FC: 60        RTS



_off000_91FD_23:
- D 0 - I - 0x00920D 02:91FD: 05        .byte $05   ; 
- D 0 - I - 0x00920E 02:91FE: 10        .byte $10   ; 
- D 0 - I - 0x00920F 02:91FF: 11        .byte $11   ; 
- D 0 - I - 0x009210 02:9200: 12        .byte $12   ; 
- D 0 - I - 0x009211 02:9201: 13        .byte $13   ; 
- - - - - - 0x009212 02:9202: 93        .byte $93   ; 



_off001_9203_23:
- D 0 - I - 0x009213 02:9203: 02        .byte $02   ; 
- D 0 - I - 0x009214 02:9204: 02        .byte $02   ; 
- D 0 - I - 0x009215 02:9205: 02        .byte $02   ; 
- D 0 - I - 0x009216 02:9206: 04        .byte $04   ; 
- D 0 - I - 0x009217 02:9207: 0C        .byte $0C   ; 



ofs_000_9208_49:
C - - J - - 0x009218 02:9208: B5 43     LDA ram_state,X
C - - - - - 0x00921A 02:920A: 30 11     BMI bra_921D
C - - - - - 0x00921C 02:920C: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x00921F 02:920F: A9 05     LDA #$05
C - - - - - 0x009221 02:9211: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x009224 02:9214: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x009227 02:9217: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x009229 02:9219: 09 80     ORA #con_004A_80
C - - - - - 0x00922B 02:921B: 95 4A     STA ram_004A_obj,X
bra_921D:
C - - - - - 0x00922D 02:921D: A9 24     LDA #$24
C - - - - - 0x00922F 02:921F: 4C D2 9F  JMP loc_9FD2



_off000_9222_24:
- D 0 - I - 0x009232 02:9222: 13        .byte $13   ; 
- D 0 - I - 0x009233 02:9223: 12        .byte $12   ; 
- D 0 - I - 0x009234 02:9224: 11        .byte $11   ; 
- D 0 - I - 0x009235 02:9225: 10        .byte $10   ; 
- - - - - - 0x009236 02:9226: 05        .byte $05   ; 
- - - - - - 0x009237 02:9227: 93        .byte $93   ; 



_off001_9228_24:
- D 0 - I - 0x009238 02:9228: 04        .byte $04   ; 
- D 0 - I - 0x009239 02:9229: 04        .byte $04   ; 
- D 0 - I - 0x00923A 02:922A: 04        .byte $04   ; 
- D 0 - I - 0x00923B 02:922B: 04        .byte $04   ; 
- - - - - - 0x00923C 02:922C: 04        .byte $04   ; 



ofs_000_922D_4A:
C - - J - - 0x00923D 02:922D: B5 43     LDA ram_state,X
C - - - - - 0x00923F 02:922F: 30 08     BMI bra_9239
C - - - - - 0x009241 02:9231: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009244 02:9234: A9 08     LDA #$08
C - - - - - 0x009246 02:9236: 9D 16 03  STA ram_0316_obj,X
bra_9239:
C - - - - - 0x009249 02:9239: A9 25     LDA #$25
C - - - - - 0x00924B 02:923B: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x00924E 02:923E: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x009251 02:9241: A6 19     LDX ram_0019
C - - - - - 0x009253 02:9243: B5 5C     LDA ram_animation_counter,X
C - - - - - 0x009255 02:9245: C9 06     CMP #$06
C - - - - - 0x009257 02:9247: 90 04     BCC bra_924D_RTS
- - - - - - 0x009259 02:9249: A9 04     LDA #$04
- - - - - - 0x00925B 02:924B: 95 5C     STA ram_animation_counter,X
bra_924D_RTS:
C - - - - - 0x00925D 02:924D: 60        RTS



_off000_924E_25:
- D 0 - I - 0x00925E 02:924E: 14        .byte $14   ; 
- D 0 - I - 0x00925F 02:924F: 1A        .byte $1A   ; 
- D 0 - I - 0x009260 02:9250: 1B        .byte $1B   ; 
- D 0 - I - 0x009261 02:9251: FE        .byte $FE   ; 



_off001_9252_25:
- D 0 - I - 0x009262 02:9252: 08        .byte $08   ; 
- D 0 - I - 0x009263 02:9253: 02        .byte $02   ; 
- D 0 - I - 0x009264 02:9254: 02        .byte $02   ; 



ofs_000_9255_4B:
C - - J - - 0x009265 02:9255: B5 43     LDA ram_state,X
C - - - - - 0x009267 02:9257: 30 0C     BMI bra_9265
C - - - - - 0x009269 02:9259: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x00926C 02:925C: A9 00     LDA #$00
C - - - - - 0x00926E 02:925E: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x009271 02:9261: A9 06     LDA #$06
C - - - - - 0x009273 02:9263: 95 C7     STA ram_animation_id,X
bra_9265:
C - - - - - 0x009275 02:9265: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x009278 02:9268: 60        RTS



ofs_000_9269_4C:
C - - J - - 0x009279 02:9269: B5 43     LDA ram_state,X
C - - - - - 0x00927B 02:926B: 30 03     BMI bra_9270
C - - - - - 0x00927D 02:926D: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_9270:
C - - - - - 0x009280 02:9270: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x009282 02:9272: D0 31     BNE bra_92A5
C - - - - - 0x009284 02:9274: B5 5C     LDA ram_animation_counter,X
C - - - - - 0x009286 02:9276: 0A        ASL
C - - - - - 0x009287 02:9277: A8        TAY
C - - - - - 0x009288 02:9278: B9 BE 92  LDA tbl_92BE,Y
C - - - - - 0x00928B 02:927B: 85 29     STA ram_0029
C - - - - - 0x00928D 02:927D: B9 BF 92  LDA tbl_92BE + $01,Y
C - - - - - 0x009290 02:9280: 85 2A     STA ram_002A
C - - - - - 0x009292 02:9282: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x009295 02:9285: 30 11     BMI bra_9298
C - - - - - 0x009297 02:9287: 18        CLC
C - - - - - 0x009298 02:9288: A5 29     LDA ram_0029
C - - - - - 0x00929A 02:928A: 49 FF     EOR #$FF
C - - - - - 0x00929C 02:928C: 69 01     ADC #< $0001
C - - - - - 0x00929E 02:928E: 85 29     STA ram_0029
C - - - - - 0x0092A0 02:9290: A5 2A     LDA ram_002A
C - - - - - 0x0092A2 02:9292: 49 FF     EOR #$FF
C - - - - - 0x0092A4 02:9294: 69 00     ADC #> $0001
C - - - - - 0x0092A6 02:9296: 85 2A     STA ram_002A
bra_9298:
C - - - - - 0x0092A8 02:9298: 18        CLC
C - - - - - 0x0092A9 02:9299: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x0092AB 02:929B: 65 29     ADC ram_0029
C - - - - - 0x0092AD 02:929D: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x0092AF 02:929F: B5 80     LDA ram_pos_X_hi,X
C - - - - - 0x0092B1 02:92A1: 65 2A     ADC ram_002A
C - - - - - 0x0092B3 02:92A3: 95 80     STA ram_pos_X_hi,X
bra_92A5:
C - - - - - 0x0092B5 02:92A5: A9 26     LDA #$26
C - - - - - 0x0092B7 02:92A7: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x0092BA 02:92AA: 60        RTS



_off000_92AB_26:
- D 0 - I - 0x0092BB 02:92AB: 1B        .byte $1B   ; 
- D 0 - I - 0x0092BC 02:92AC: 1C        .byte $1C   ; 
- D 0 - I - 0x0092BD 02:92AD: 1F        .byte $1F   ; 
- D 0 - I - 0x0092BE 02:92AE: 20        .byte $20   ; 
- D 0 - I - 0x0092BF 02:92AF: 21        .byte $21   ; 
- D 0 - I - 0x0092C0 02:92B0: 22        .byte $22   ; 
- D 0 - I - 0x0092C1 02:92B1: 1E        .byte $1E   ; 
- D 0 - I - 0x0092C2 02:92B2: 06        .byte $06   ; 
- D 0 - I - 0x0092C3 02:92B3: 02        .byte $02   ; 
- D 0 - I - 0x0092C4 02:92B4: 80        .byte $80   ; 



_off001_92B5_26:
- D 0 - I - 0x0092C5 02:92B5: 01        .byte $01   ; 
- D 0 - I - 0x0092C6 02:92B6: 01        .byte $01   ; 
- D 0 - I - 0x0092C7 02:92B7: 02        .byte $02   ; 
- D 0 - I - 0x0092C8 02:92B8: 04        .byte $04   ; 
- D 0 - I - 0x0092C9 02:92B9: 04        .byte $04   ; 
- D 0 - I - 0x0092CA 02:92BA: 02        .byte $02   ; 
- D 0 - I - 0x0092CB 02:92BB: 02        .byte $02   ; 
- D 0 - I - 0x0092CC 02:92BC: 01        .byte $01   ; 
- D 0 - I - 0x0092CD 02:92BD: 01        .byte $01   ; 



tbl_92BE:
- D 0 - - - 0x0092CE 02:92BE: E8 FF     .word $FFE8 ; 00
- D 0 - - - 0x0092D0 02:92C0: 08 00     .word $0008 ; 01
- D 0 - - - 0x0092D2 02:92C2: 00 00     .word $0000 ; 02
- D 0 - - - 0x0092D4 02:92C4: 00 00     .word $0000 ; 03
- D 0 - - - 0x0092D6 02:92C6: 00 00     .word $0000 ; 04
- D 0 - - - 0x0092D8 02:92C8: 00 00     .word $0000 ; 05
- D 0 - - - 0x0092DA 02:92CA: 1A 00     .word $001A ; 06
- D 0 - - - 0x0092DC 02:92CC: 20 00     .word $0020 ; 07
- D 0 - - - 0x0092DE 02:92CE: 00 00     .word $0000 ; 08
- D 0 - - - 0x0092E0 02:92D0: 00 00     .word $0000 ; 09



ofs_000_92D2_4D:
C - - J - - 0x0092E2 02:92D2: B5 43     LDA ram_state,X
C - - - - - 0x0092E4 02:92D4: 30 03     BMI bra_92D9
C - - - - - 0x0092E6 02:92D6: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_92D9:
C - - - - - 0x0092E9 02:92D9: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x0092EB 02:92DB: C9 04     CMP #$04
C - - - - - 0x0092ED 02:92DD: D0 41     BNE bra_9320
C - - - - - 0x0092EF 02:92DF: B5 C7     LDA ram_animation_id,X
C - - - - - 0x0092F1 02:92E1: 29 7F     AND #$7F
C - - - - - 0x0092F3 02:92E3: C9 11     CMP #$11
C - - - - - 0x0092F5 02:92E5: D0 39     BNE bra_9320
C - - - - - 0x0092F7 02:92E7: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x0092FA 02:92EA: 29 7F     AND #$7F
C - - - - - 0x0092FC 02:92EC: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x0092FF 02:92EF: A8        TAY
C - - - - - 0x009300 02:92F0: 20 66 A4  JSR sub_A466
C - - - - - 0x009303 02:92F3: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x009306 02:92F6: 29 DF     AND #con_004A_20 ^ $FF
C - - - - - 0x009308 02:92F8: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x00930B 02:92FB: A9 02     LDA #$02
C - - - - - 0x00930D 02:92FD: 99 4A 04  STA ram_044A_obj,Y
C - - - - - 0x009310 02:9300: A9 68     LDA #con_state_68
C - - - - - 0x009312 02:9302: 99 43 00  STA a: ram_state,Y
C - - - - - 0x009315 02:9305: A9 10     LDA #$10
C - - - - - 0x009317 02:9307: 85 29     STA ram_0029
C - - - - - 0x009319 02:9309: 85 2A     STA ram_002A
C - - - - - 0x00931B 02:930B: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x00931E 02:930E: 10 04     BPL bra_9314
C - - - - - 0x009320 02:9310: A9 F0     LDA #$F0
C - - - - - 0x009322 02:9312: 85 29     STA ram_0029
bra_9314:
C - - - - - 0x009324 02:9314: 20 EC 9F  JSR sub_9FEC
C - - - - - 0x009327 02:9317: B9 0F 03  LDA ram_030F_obj,Y
C - - - - - 0x00932A 02:931A: 18        CLC
C - - - - - 0x00932B 02:931B: 69 80     ADC #$80
C - - - - - 0x00932D 02:931D: 99 0F 03  STA ram_030F_obj,Y
bra_9320:
C - - - - - 0x009330 02:9320: A9 27     LDA #$27
C - - - - - 0x009332 02:9322: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x009335 02:9325: 60        RTS



_off000_9326_27:
- D 0 - I - 0x009336 02:9326: 06        .byte $06   ; 
- D 0 - I - 0x009337 02:9327: 11        .byte $11   ; 
- D 0 - I - 0x009338 02:9328: 06        .byte $06   ; 
- D 0 - I - 0x009339 02:9329: 02        .byte $02   ; 
- D 0 - I - 0x00933A 02:932A: 80        .byte $80   ; 



_off001_932B_27:
- D 0 - I - 0x00933B 02:932B: 02        .byte $02   ; 
- D 0 - I - 0x00933C 02:932C: 04        .byte $04   ; 
- D 0 - I - 0x00933D 02:932D: 02        .byte $02   ; 
- D 0 - I - 0x00933E 02:932E: 02        .byte $02   ; 



ofs_000_932F_4E:
C - - J - - 0x00933F 02:932F: B5 43     LDA ram_state,X
C - - - - - 0x009341 02:9331: 30 4E     BMI bra_9381
C - - - - - 0x009343 02:9333: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x009346 02:9336: 29 7F     AND #$7F
C - - - - - 0x009348 02:9338: A8        TAY
C - - - - - 0x009349 02:9339: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x00934C 02:933C: 30 01     BMI bra_933F
C - - - - - 0x00934E 02:933E: 60        RTS
bra_933F:
C - - - - - 0x00934F 02:933F: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009352 02:9342: A9 00     LDA #$00
C - - - - - 0x009354 02:9344: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x009357 02:9347: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x00935A 02:934A: 09 80     ORA #$80
C - - - - - 0x00935C 02:934C: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x00935F 02:934F: 29 7F     AND #$7F
C - - - - - 0x009361 02:9351: A8        TAY
C - - - - - 0x009362 02:9352: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x009365 02:9355: 9D 46 04  STA ram_0446_obj,X
C - - - - - 0x009368 02:9358: A9 7F     LDA #$7F    ; con_state_7F
C - - - - - 0x00936A 02:935A: 99 43 00  STA a: ram_state,Y
C - - - - - 0x00936D 02:935D: 99 C7 00  STA a: ram_animation_id,Y
C - - - - - 0x009370 02:9360: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x009373 02:9363: 09 02     ORA #con_004A_02
C - - - - - 0x009375 02:9365: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x009378 02:9368: A9 23     LDA #$23
C - - - - - 0x00937A 02:936A: 95 C7     STA ram_animation_id,X
C - - - - - 0x00937C 02:936C: A9 04     LDA #$04
C - - - - - 0x00937E 02:936E: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x009380 02:9370: A9 00     LDA #$00
C - - - - - 0x009382 02:9372: 99 E7 03  STA ram_hit_counter,Y
C - - - - - 0x009385 02:9375: 99 C8 03  STA ram_clear_hit_counter_timer,Y
C - - - - - 0x009388 02:9378: BD 91 93  LDA tbl_9391,X
C - - - - - 0x00938B 02:937B: AA        TAX
C - - - - - 0x00938C 02:937C: A9 02     LDA #$02
C - - - - - 0x00938E 02:937E: 20 52 A4  JSR sub_A452
bra_9381:
C - - - - - 0x009391 02:9381: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x009393 02:9383: D0 08     BNE bra_938D
C - - - - - 0x009395 02:9385: A9 57     LDA #con_state_57
C - - - - - 0x009397 02:9387: 95 43     STA ram_state,X
C - - - - - 0x009399 02:9389: A9 24     LDA #$24
C - - - - - 0x00939B 02:938B: 95 C7     STA ram_animation_id,X
bra_938D:
C - - - - - 0x00939D 02:938D: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x0093A0 02:9390: 60        RTS



tbl_9391:
- D 0 - - - 0x0093A1 02:9391: 00        .byte $00   ; 00
- - - - - - 0x0093A2 02:9392: 06        .byte $06   ; 01



ofs_000_9393_4F:
C - - J - - 0x0093A3 02:9393: B5 43     LDA ram_state,X
C - - - - - 0x0093A5 02:9395: 30 2D     BMI bra_93C4
C - - - - - 0x0093A7 02:9397: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0093AA 02:939A: A9 25     LDA #$25
C - - - - - 0x0093AC 02:939C: 95 C7     STA ram_animation_id,X
C - - - - - 0x0093AE 02:939E: A9 05     LDA #$05
C - - - - - 0x0093B0 02:93A0: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x0093B2 02:93A2: A9 19     LDA #con_sfx_hit
C - - - - - 0x0093B4 02:93A4: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x0093B7 02:93A7: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x0093BA 02:93AA: 29 7F     AND #$7F
C - - - - - 0x0093BC 02:93AC: A8        TAY
C - - - - - 0x0093BD 02:93AD: A9 05     LDA #con_damage + $05
C - - - - - 0x0093BF 02:93AF: 20 DC 9F  JSR sub_9FDC_damage_to_player
C - - - - - 0x0093C2 02:93B2: B9 E7 03  LDA ram_hit_counter,Y
C - - - - - 0x0093C5 02:93B5: 18        CLC
C - - - - - 0x0093C6 02:93B6: 69 01     ADC #$01
C - - - - - 0x0093C8 02:93B8: 99 E7 03  STA ram_hit_counter,Y
C - - - - - 0x0093CB 02:93BB: BD 91 93  LDA tbl_9391,X
C - - - - - 0x0093CE 02:93BE: AA        TAX
C - - - - - 0x0093CF 02:93BF: A9 01     LDA #$01
C - - - - - 0x0093D1 02:93C1: 20 52 A4  JSR sub_A452
bra_93C4:
C - - - - - 0x0093D4 02:93C4: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x0093D6 02:93C6: D0 65     BNE bra_942D
C - - - - - 0x0093D8 02:93C8: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x0093DB 02:93CB: 29 7F     AND #$7F
C - - - - - 0x0093DD 02:93CD: A8        TAY
C - - - - - 0x0093DE 02:93CE: B9 E7 03  LDA ram_hit_counter,Y
C - - - - - 0x0093E1 02:93D1: C9 03     CMP #$03
C - - - - - 0x0093E3 02:93D3: 90 50     BCC bra_9425
C - - - - - 0x0093E5 02:93D5: A9 00     LDA #con_state_00
C - - - - - 0x0093E7 02:93D7: 95 43     STA ram_state,X
C - - - - - 0x0093E9 02:93D9: A9 1B     LDA #con_state_1B
C - - - - - 0x0093EB 02:93DB: 99 43 00  STA a: ram_state,Y
C - - - - - 0x0093EE 02:93DE: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x0093F1 02:93E1: 29 7F     AND #$7F
C - - - - - 0x0093F3 02:93E3: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x0093F6 02:93E6: 20 66 A4  JSR sub_A466
C - - - - - 0x0093F9 02:93E9: A9 40     LDA #con_004A_40
C - - - - - 0x0093FB 02:93EB: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x0093FE 02:93EE: A9 10     LDA #$10
C - - - - - 0x009400 02:93F0: 85 1B     STA ram_001B
C - - - - - 0x009402 02:93F2: A9 00     LDA #$00
C - - - - - 0x009404 02:93F4: 85 1C     STA ram_001C
C - - - - - 0x009406 02:93F6: B5 63     LDA ram_0063_obj,X
C - - - - - 0x009408 02:93F8: 10 08     BPL bra_9402
C - - - - - 0x00940A 02:93FA: A9 F0     LDA #$F0
C - - - - - 0x00940C 02:93FC: 85 1B     STA ram_001B
C - - - - - 0x00940E 02:93FE: A9 FF     LDA #$FF
C - - - - - 0x009410 02:9400: 85 1C     STA ram_001C
bra_9402:
C - - - - - 0x009412 02:9402: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x009414 02:9404: 18        CLC
C - - - - - 0x009415 02:9405: 65 1B     ADC ram_001B
C - - - - - 0x009417 02:9407: 99 77 00  STA a: ram_pos_X_lo,Y
C - - - - - 0x00941A 02:940A: B5 80     LDA ram_pos_X_hi,X
C - - - - - 0x00941C 02:940C: 65 1C     ADC ram_001C
C - - - - - 0x00941E 02:940E: 99 80 00  STA a: ram_pos_X_hi,Y
C - - - - - 0x009421 02:9411: A9 08     LDA #< $0008
C - - - - - 0x009423 02:9413: 18        CLC
C - - - - - 0x009424 02:9414: 79 AD 00  ADC a: ram_pos_Z_lo,Y
C - - - - - 0x009427 02:9417: 99 AD 00  STA a: ram_pos_Z_lo,Y
C - - - - - 0x00942A 02:941A: B9 B6 00  LDA a: ram_pos_Z_hi,Y
C - - - - - 0x00942D 02:941D: 69 00     ADC #> $0008
C - - - - - 0x00942F 02:941F: 99 B6 00  STA a: ram_pos_Z_hi,Y
C - - - - - 0x009432 02:9422: 4C 2D 94  JMP loc_942D
bra_9425:
C - - - - - 0x009435 02:9425: A9 57     LDA #con_state_57
C - - - - - 0x009437 02:9427: 95 43     STA ram_state,X
C - - - - - 0x009439 02:9429: A9 24     LDA #$24
C - - - - - 0x00943B 02:942B: 95 C7     STA ram_animation_id,X
bra_942D:
loc_942D:
C D 0 - - - 0x00943D 02:942D: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x009440 02:9430: 60        RTS



ofs_000_9431_50:
C - - J - - 0x009441 02:9431: B5 43     LDA ram_state,X
C - - - - - 0x009443 02:9433: 30 17     BMI bra_944C
C - - - - - 0x009445 02:9435: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009448 02:9438: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x00944B 02:943B: 29 7F     AND #$7F
C - - - - - 0x00944D 02:943D: A8        TAY
C - - - - - 0x00944E 02:943E: A9 0C     LDA #con_damage + $0C
C - - - - - 0x009450 02:9440: 20 DC 9F  JSR sub_9FDC_damage_to_player
C - - - - - 0x009453 02:9443: BD 91 93  LDA tbl_9391,X
C - - - - - 0x009456 02:9446: A8        TAY
C - - - - - 0x009457 02:9447: A9 05     LDA #$05
C - - - - - 0x009459 02:9449: 20 52 A4  JSR sub_A452
bra_944C:
C - - - - - 0x00945C 02:944C: A9 28     LDA #$28
C - - - - - 0x00945E 02:944E: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x009461 02:9451: B5 5C     LDA ram_animation_counter,X
C - - - - - 0x009463 02:9453: C9 03     CMP #$03
C - - - - - 0x009465 02:9455: D0 53     BNE bra_94AA
C - - - - - 0x009467 02:9457: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x009469 02:9459: C9 03     CMP #$03
C - - - - - 0x00946B 02:945B: D0 4D     BNE bra_94AA
C - - - - - 0x00946D 02:945D: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x009470 02:9460: 29 7F     AND #$7F
C - - - - - 0x009472 02:9462: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x009475 02:9465: A8        TAY
C - - - - - 0x009476 02:9466: 20 66 A4  JSR sub_A466
C - - - - - 0x009479 02:9469: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x00947B 02:946B: 99 77 00  STA a: ram_pos_X_lo,Y
C - - - - - 0x00947E 02:946E: B5 80     LDA ram_pos_X_hi,X
C - - - - - 0x009480 02:9470: 99 80 00  STA a: ram_pos_X_hi,Y
C - - - - - 0x009483 02:9473: B5 92     LDA ram_pos_Y_lo,X
C - - - - - 0x009485 02:9475: 99 92 00  STA a: ram_pos_Y_lo,Y
C - - - - - 0x009488 02:9478: B5 9B     LDA ram_pos_Y_hi,X
C - - - - - 0x00948A 02:947A: 99 9B 00  STA a: ram_pos_Y_hi,Y
C - - - - - 0x00948D 02:947D: B5 AD     LDA ram_pos_Z_lo,X
C - - - - - 0x00948F 02:947F: 18        CLC
C - - - - - 0x009490 02:9480: 69 28     ADC #< $0028
C - - - - - 0x009492 02:9482: 99 AD 00  STA a: ram_pos_Z_lo,Y
C - - - - - 0x009495 02:9485: B5 B6     LDA ram_pos_Z_hi,X
C - - - - - 0x009497 02:9487: 69 00     ADC #> $0028
C - - - - - 0x009499 02:9489: 99 B6 00  STA a: ram_pos_Z_hi,Y
C - - - - - 0x00949C 02:948C: A9 1E     LDA #con_state_1E
C - - - - - 0x00949E 02:948E: 99 43 00  STA a: ram_state,Y
C - - - - - 0x0094A1 02:9491: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x0094A4 02:9494: 29 DD     AND #(con_004A_20 + con_004A_02) ^ $FF
C - - - - - 0x0094A6 02:9496: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x0094A9 02:9499: B5 63     LDA ram_0063_obj,X
C - - - - - 0x0094AB 02:949B: 10 08     BPL bra_94A5
C - - - - - 0x0094AD 02:949D: A9 40     LDA #$40
C - - - - - 0x0094AF 02:949F: 99 0F 03  STA ram_030F_obj,Y
C - - - - - 0x0094B2 02:94A2: 4C AA 94  JMP loc_94AA
bra_94A5:
C - - - - - 0x0094B5 02:94A5: A9 C0     LDA #$C0
C - - - - - 0x0094B7 02:94A7: 99 0F 03  STA ram_030F_obj,Y
bra_94AA:
loc_94AA:
C D 0 - - - 0x0094BA 02:94AA: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x0094BD 02:94AD: 60        RTS



_off000_94AE_28:
- D 0 - I - 0x0094BE 02:94AE: 26        .byte $26   ; 
- D 0 - I - 0x0094BF 02:94AF: 27        .byte $27   ; 
- D 0 - I - 0x0094C0 02:94B0: 28        .byte $28   ; 
- D 0 - I - 0x0094C1 02:94B1: 80        .byte $80   ; 



_off001_94B2_28:
- D 0 - I - 0x0094C2 02:94B2: 02        .byte $02   ; 
- D 0 - I - 0x0094C3 02:94B3: 03        .byte $03   ; 
- D 0 - I - 0x0094C4 02:94B4: 03        .byte $03   ; 



ofs_000_94B5_51:
C - - J - - 0x0094C5 02:94B5: B5 43     LDA ram_state,X
C - - - - - 0x0094C7 02:94B7: 30 17     BMI bra_94D0
C - - - - - 0x0094C9 02:94B9: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0094CC 02:94BC: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x0094CF 02:94BF: 29 7F     AND #$7F
C - - - - - 0x0094D1 02:94C1: A8        TAY
C - - - - - 0x0094D2 02:94C2: A9 0E     LDA #con_damage + $0E
C - - - - - 0x0094D4 02:94C4: 20 DC 9F  JSR sub_9FDC_damage_to_player
C - - - - - 0x0094D7 02:94C7: BD 91 93  LDA tbl_9391,X
C - - - - - 0x0094DA 02:94CA: AA        TAX
C - - - - - 0x0094DB 02:94CB: A9 03     LDA #$03
C - - - - - 0x0094DD 02:94CD: 20 52 A4  JSR sub_A452
bra_94D0:
C - - - - - 0x0094E0 02:94D0: A9 29     LDA #$29
C - - - - - 0x0094E2 02:94D2: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x0094E5 02:94D5: B5 C7     LDA ram_animation_id,X
C - - - - - 0x0094E7 02:94D7: 29 7F     AND #$7F
C - - - - - 0x0094E9 02:94D9: C9 2C     CMP #$2C
C - - - - - 0x0094EB 02:94DB: D0 40     BNE bra_951D
C - - - - - 0x0094ED 02:94DD: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x0094EF 02:94DF: C9 04     CMP #$04
C - - - - - 0x0094F1 02:94E1: D0 3A     BNE bra_951D
C - - - - - 0x0094F3 02:94E3: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x0094F6 02:94E6: 29 7F     AND #$7F
C - - - - - 0x0094F8 02:94E8: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x0094FB 02:94EB: A8        TAY
C - - - - - 0x0094FC 02:94EC: 20 66 A4  JSR sub_A466
C - - - - - 0x0094FF 02:94EF: A9 1F     LDA #con_state_1F
C - - - - - 0x009501 02:94F1: 99 43 00  STA a: ram_state,Y
C - - - - - 0x009504 02:94F4: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x009507 02:94F7: 29 FD     AND #con_004A_02 ^ $FF
C - - - - - 0x009509 02:94F9: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x00950C 02:94FC: A9 1A     LDA #con_sfx_1A
C - - - - - 0x00950E 02:94FE: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x009511 02:9501: A9 20     LDA #$20
C - - - - - 0x009513 02:9503: 85 29     STA ram_0029
C - - - - - 0x009515 02:9505: A9 10     LDA #$10
C - - - - - 0x009517 02:9507: 85 2A     STA ram_002A
C - - - - - 0x009519 02:9509: B5 63     LDA ram_0063_obj,X
C - - - - - 0x00951B 02:950B: 10 04     BPL bra_9511
C - - - - - 0x00951D 02:950D: A9 E0     LDA #$E0
C - - - - - 0x00951F 02:950F: 85 29     STA ram_0029
bra_9511:
C - - - - - 0x009521 02:9511: 20 EC 9F  JSR sub_9FEC
C - - - - - 0x009524 02:9514: B9 0F 03  LDA ram_030F_obj,Y
C - - - - - 0x009527 02:9517: 18        CLC
C - - - - - 0x009528 02:9518: 69 80     ADC #$80
C - - - - - 0x00952A 02:951A: 99 0F 03  STA ram_030F_obj,Y
bra_951D:
C - - - - - 0x00952D 02:951D: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x009530 02:9520: 60        RTS



_off000_9521_29:
- D 0 - I - 0x009531 02:9521: 2B        .byte $2B   ; 
- D 0 - I - 0x009532 02:9522: 2C        .byte $2C   ; 
- D 0 - I - 0x009533 02:9523: 80        .byte $80   ; 



_off001_9524_29:
- D 0 - I - 0x009534 02:9524: 04        .byte $04   ; 
- D 0 - I - 0x009535 02:9525: 04        .byte $04   ; 



ofs_000_9526_52:
C - - J - - 0x009536 02:9526: B5 43     LDA ram_state,X
C - - - - - 0x009538 02:9528: 30 20     BMI bra_954A
C - - - - - 0x00953A 02:952A: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x00953D 02:952D: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x009540 02:9530: 29 7F     AND #$7F
C - - - - - 0x009542 02:9532: A8        TAY
C - - - - - 0x009543 02:9533: A9 06     LDA #con_damage + $06
C - - - - - 0x009545 02:9535: 20 DC 9F  JSR sub_9FDC_damage_to_player
C - - - - - 0x009548 02:9538: B9 E7 03  LDA ram_hit_counter,Y
C - - - - - 0x00954B 02:953B: 18        CLC
C - - - - - 0x00954C 02:953C: 69 01     ADC #$01
C - - - - - 0x00954E 02:953E: 99 E7 03  STA ram_hit_counter,Y
C - - - - - 0x009551 02:9541: BD 91 93  LDA tbl_9391,X
C - - - - - 0x009554 02:9544: AA        TAX
C - - - - - 0x009555 02:9545: A9 02     LDA #$02
C - - - - - 0x009557 02:9547: 20 52 A4  JSR sub_A452
bra_954A:
C - - - - - 0x00955A 02:954A: A9 2A     LDA #$2A
C - - - - - 0x00955C 02:954C: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x00955F 02:954F: B5 C7     LDA ram_animation_id,X
C - - - - - 0x009561 02:9551: 29 7F     AND #$7F
C - - - - - 0x009563 02:9553: C9 2E     CMP #$2E
C - - - - - 0x009565 02:9555: D0 52     BNE bra_95A9_RTS
C - - - - - 0x009567 02:9557: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x009569 02:9559: C9 04     CMP #$04
C - - - - - 0x00956B 02:955B: D0 4C     BNE bra_95A9_RTS
C - - - - - 0x00956D 02:955D: A9 19     LDA #con_sfx_hit
C - - - - - 0x00956F 02:955F: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x009572 02:9562: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x009575 02:9565: 29 7F     AND #$7F
C - - - - - 0x009577 02:9567: A8        TAY
C - - - - - 0x009578 02:9568: B9 E7 03  LDA ram_hit_counter,Y
C - - - - - 0x00957B 02:956B: C9 03     CMP #$03
C - - - - - 0x00957D 02:956D: 90 3A     BCC bra_95A9_RTS
C - - - - - 0x00957F 02:956F: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x009582 02:9572: 29 7F     AND #$7F
C - - - - - 0x009584 02:9574: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x009587 02:9577: A8        TAY
C - - - - - 0x009588 02:9578: 20 66 A4  JSR sub_A466
C - - - - - 0x00958B 02:957B: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x00958E 02:957E: 29 DF     AND #con_004A_20 ^ $FF
C - - - - - 0x009590 02:9580: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x009593 02:9583: A9 1B     LDA #con_state_1B
C - - - - - 0x009595 02:9585: 99 43 00  STA a: ram_state,Y
C - - - - - 0x009598 02:9588: A9 20     LDA #$20
C - - - - - 0x00959A 02:958A: 85 29     STA ram_0029
C - - - - - 0x00959C 02:958C: A9 00     LDA #$00
C - - - - - 0x00959E 02:958E: 85 2A     STA ram_002A
C - - - - - 0x0095A0 02:9590: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x0095A3 02:9593: 10 04     BPL bra_9599
C - - - - - 0x0095A5 02:9595: A9 E0     LDA #$E0
C - - - - - 0x0095A7 02:9597: 85 29     STA ram_0029
bra_9599:
C - - - - - 0x0095A9 02:9599: 20 EC 9F  JSR sub_9FEC
C - - - - - 0x0095AC 02:959C: B9 0F 03  LDA ram_030F_obj,Y
C - - - - - 0x0095AF 02:959F: 18        CLC
C - - - - - 0x0095B0 02:95A0: 69 80     ADC #$80
C - - - - - 0x0095B2 02:95A2: 99 0F 03  STA ram_030F_obj,Y
C - - - - - 0x0095B5 02:95A5: A9 00     LDA #con_state_00
C - - - - - 0x0095B7 02:95A7: 95 43     STA ram_state,X
bra_95A9_RTS:
C - - - - - 0x0095B9 02:95A9: 60        RTS



_off000_95AA_2A:
- D 0 - I - 0x0095BA 02:95AA: 2D        .byte $2D   ; 
- D 0 - I - 0x0095BB 02:95AB: 2E        .byte $2E   ; 
- D 0 - I - 0x0095BC 02:95AC: D7        .byte $D7   ; 



_off001_95AD_2A:
- D 0 - I - 0x0095BD 02:95AD: 04        .byte $04   ; 
- D 0 - I - 0x0095BE 02:95AE: 04        .byte $04   ; 



ofs_000_95AF_53:
C - - J - - 0x0095BF 02:95AF: B5 43     LDA ram_state,X
C - - - - - 0x0095C1 02:95B1: 30 29     BMI bra_95DC
C - - - - - 0x0095C3 02:95B3: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x0095C6 02:95B6: 29 7F     AND #$7F
C - - - - - 0x0095C8 02:95B8: A8        TAY
C - - - - - 0x0095C9 02:95B9: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x0095CC 02:95BC: 30 01     BMI bra_95BF
- - - - - - 0x0095CE 02:95BE: 60        RTS
bra_95BF:
C - - - - - 0x0095CF 02:95BF: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0095D2 02:95C2: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x0095D5 02:95C5: 09 80     ORA #$80
C - - - - - 0x0095D7 02:95C7: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x0095DA 02:95CA: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x0095DD 02:95CD: 09 02     ORA #con_004A_02
C - - - - - 0x0095DF 02:95CF: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x0095E2 02:95D2: A9 7F     LDA #con_state_7F
C - - - - - 0x0095E4 02:95D4: 99 43 00  STA a: ram_state,Y
C - - - - - 0x0095E7 02:95D7: A9 08     LDA #con_damage + $08
C - - - - - 0x0095E9 02:95D9: 20 DC 9F  JSR sub_9FDC_damage_to_player
bra_95DC:
C - - - - - 0x0095EC 02:95DC: A9 2B     LDA #$2B
C - - - - - 0x0095EE 02:95DE: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x0095F1 02:95E1: B5 5C     LDA ram_animation_counter,X
C - - - - - 0x0095F3 02:95E3: C9 03     CMP #$03
C - - - - - 0x0095F5 02:95E5: 90 33     BCC bra_961A
C - - - - - 0x0095F7 02:95E7: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x0095F9 02:95E9: C9 04     CMP #$04
C - - - - - 0x0095FB 02:95EB: D0 2D     BNE bra_961A
C - - - - - 0x0095FD 02:95ED: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x009600 02:95F0: 29 7F     AND #$7F
C - - - - - 0x009602 02:95F2: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x009605 02:95F5: A8        TAY
C - - - - - 0x009606 02:95F6: 20 66 A4  JSR sub_A466
C - - - - - 0x009609 02:95F9: A9 1E     LDA #con_state_1E
C - - - - - 0x00960B 02:95FB: 99 43 00  STA a: ram_state,Y
C - - - - - 0x00960E 02:95FE: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x009611 02:9601: 29 FD     AND #con_004A_02 ^ $FF
C - - - - - 0x009613 02:9603: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x009616 02:9606: A9 28     LDA #$28
C - - - - - 0x009618 02:9608: 85 29     STA ram_0029
C - - - - - 0x00961A 02:960A: A9 20     LDA #$20
C - - - - - 0x00961C 02:960C: 85 2A     STA ram_002A
C - - - - - 0x00961E 02:960E: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x009621 02:9611: 30 04     BMI bra_9617
C - - - - - 0x009623 02:9613: A9 D8     LDA #$D8
C - - - - - 0x009625 02:9615: 85 29     STA ram_0029
bra_9617:
C - - - - - 0x009627 02:9617: 20 EC 9F  JSR sub_9FEC
bra_961A:
C - - - - - 0x00962A 02:961A: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x00962D 02:961D: 60        RTS



_off000_961E_2B:
- D 0 - I - 0x00962E 02:961E: 03        .byte $03   ; 
- D 0 - I - 0x00962F 02:961F: 04        .byte $04   ; 
- D 0 - I - 0x009630 02:9620: 05        .byte $05   ; 
- D 0 - I - 0x009631 02:9621: 80        .byte $80   ; 



_off001_9622_2B:
- D 0 - I - 0x009632 02:9622: 04        .byte $04   ; 
- D 0 - I - 0x009633 02:9623: 04        .byte $04   ; 
- D 0 - I - 0x009634 02:9624: 04        .byte $04   ; 



ofs_000_9625_54:
C - - J - - 0x009635 02:9625: B5 43     LDA ram_state,X
C - - - - - 0x009637 02:9627: 30 32     BMI bra_965B
C - - - - - 0x009639 02:9629: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x00963C 02:962C: 29 7F     AND #$7F
C - - - - - 0x00963E 02:962E: A8        TAY
C - - - - - 0x00963F 02:962F: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x009642 02:9632: 30 01     BMI bra_9635
- - - - - - 0x009644 02:9634: 60        RTS
bra_9635:
C - - - - - 0x009645 02:9635: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x009648 02:9638: 09 80     ORA #$80
C - - - - - 0x00964A 02:963A: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x00964D 02:963D: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009650 02:9640: A9 00     LDA #$00
C - - - - - 0x009652 02:9642: 99 E7 03  STA ram_hit_counter,Y
C - - - - - 0x009655 02:9645: A9 10     LDA #$10
C - - - - - 0x009657 02:9647: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x009659 02:9649: A9 7F     LDA #con_state_7F
C - - - - - 0x00965B 02:964B: 99 43 00  STA a: ram_state,Y
C - - - - - 0x00965E 02:964E: A9 62     LDA #con_004A_02 + con_004A_20 + con_004A_40
C - - - - - 0x009660 02:9650: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x009663 02:9653: A9 02     LDA #con_004A_02
C - - - - - 0x009665 02:9655: 95 4A     STA ram_004A_obj,X
C - - - - - 0x009667 02:9657: A9 03     LDA #$03
C - - - - - 0x009669 02:9659: 95 C7     STA ram_animation_id,X
bra_965B:
C - - - - - 0x00966B 02:965B: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x00966D 02:965D: 10 04     BPL bra_9663
C - - - - - 0x00966F 02:965F: A9 55     LDA #con_state_55
C - - - - - 0x009671 02:9661: 95 43     STA ram_state,X
bra_9663:
C - - - - - 0x009673 02:9663: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x009676 02:9666: 60        RTS



ofs_000_9667_55:
C - - J - - 0x009677 02:9667: B5 43     LDA ram_state,X
C - - - - - 0x009679 02:9669: 30 03     BMI bra_966E
C - - - - - 0x00967B 02:966B: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_966E:
C - - - - - 0x00967E 02:966E: A9 2C     LDA #$2C
C - - - - - 0x009680 02:9670: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x009683 02:9673: B5 5C     LDA ram_animation_counter,X
C - - - - - 0x009685 02:9675: A8        TAY
C - - - - - 0x009686 02:9676: B9 E7 96  LDA tbl_96E7,Y
C - - - - - 0x009689 02:9679: F0 5D     BEQ bra_96D8
C - - - - - 0x00968B 02:967B: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x00968D 02:967D: C9 04     CMP #$04
C - - - - - 0x00968F 02:967F: D0 57     BNE bra_96D8
C - - - - - 0x009691 02:9681: B9 E7 96  LDA tbl_96E7,Y
C - - - - - 0x009694 02:9684: C9 02     CMP #$02
C - - - - - 0x009696 02:9686: D0 40     BNE bra_96C8
C - - - - - 0x009698 02:9688: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x00969B 02:968B: 29 7F     AND #$7F
C - - - - - 0x00969D 02:968D: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x0096A0 02:9690: A8        TAY
C - - - - - 0x0096A1 02:9691: 20 66 A4  JSR sub_A466
C - - - - - 0x0096A4 02:9694: A9 40     LDA #con_004A_40
C - - - - - 0x0096A6 02:9696: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x0096A9 02:9699: A9 07     LDA #$07
C - - - - - 0x0096AB 02:969B: 99 C7 00  STA a: ram_animation_id,Y
C - - - - - 0x0096AE 02:969E: A9 1C     LDA #con_state_1C
C - - - - - 0x0096B0 02:96A0: 99 43 00  STA a: ram_state,Y
C - - - - - 0x0096B3 02:96A3: A9 1A     LDA #con_sfx_1A
C - - - - - 0x0096B5 02:96A5: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x0096B8 02:96A8: A9 20     LDA #$20
C - - - - - 0x0096BA 02:96AA: 85 29     STA ram_0029
C - - - - - 0x0096BC 02:96AC: A9 10     LDA #$10
C - - - - - 0x0096BE 02:96AE: 85 2A     STA ram_002A
C - - - - - 0x0096C0 02:96B0: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x0096C3 02:96B3: 10 04     BPL bra_96B9
C - - - - - 0x0096C5 02:96B5: A9 E0     LDA #$E0
C - - - - - 0x0096C7 02:96B7: 85 29     STA ram_0029
bra_96B9:
C - - - - - 0x0096C9 02:96B9: 20 EC 9F  JSR sub_9FEC
C - - - - - 0x0096CC 02:96BC: B9 0F 03  LDA ram_030F_obj,Y
C - - - - - 0x0096CF 02:96BF: 18        CLC
C - - - - - 0x0096D0 02:96C0: 69 80     ADC #$80
C - - - - - 0x0096D2 02:96C2: 99 0F 03  STA ram_030F_obj,Y
C - - - - - 0x0096D5 02:96C5: 4C D8 96  JMP loc_96D8
bra_96C8:
C - - - - - 0x0096D8 02:96C8: A9 1A     LDA #con_sfx_1A
C - - - - - 0x0096DA 02:96CA: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x0096DD 02:96CD: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x0096E0 02:96D0: 29 7F     AND #$7F
C - - - - - 0x0096E2 02:96D2: A8        TAY
C - - - - - 0x0096E3 02:96D3: A9 04     LDA #con_damage + $04
C - - - - - 0x0096E5 02:96D5: 20 DC 9F  JSR sub_9FDC_damage_to_player
bra_96D8:
loc_96D8:
C D 0 - - - 0x0096E8 02:96D8: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x0096EB 02:96DB: 60        RTS



_off000_96DC_2C:
- D 0 - I - 0x0096EC 02:96DC: 04        .byte $04   ; 
- D 0 - I - 0x0096ED 02:96DD: 03        .byte $03   ; 
- D 0 - I - 0x0096EE 02:96DE: 04        .byte $04   ; 
- D 0 - I - 0x0096EF 02:96DF: 03        .byte $03   ; 
- D 0 - I - 0x0096F0 02:96E0: 10        .byte $10   ; 
- D 0 - I - 0x0096F1 02:96E1: 80        .byte $80   ; 



_off001_96E2_2C:
- D 0 - I - 0x0096F2 02:96E2: 04        .byte $04   ; 
- D 0 - I - 0x0096F3 02:96E3: 06        .byte $06   ; 
- D 0 - I - 0x0096F4 02:96E4: 04        .byte $04   ; 
- D 0 - I - 0x0096F5 02:96E5: 06        .byte $06   ; 
- D 0 - I - 0x0096F6 02:96E6: 06        .byte $06   ; 



tbl_96E7:
- - - - - - 0x0096F7 02:96E7: 00        .byte $00   ; 00
- D 0 - - - 0x0096F8 02:96E8: 01        .byte $01   ; 01
- D 0 - - - 0x0096F9 02:96E9: 00        .byte $00   ; 02
- D 0 - - - 0x0096FA 02:96EA: 01        .byte $01   ; 03
- D 0 - - - 0x0096FB 02:96EB: 00        .byte $00   ; 04
- D 0 - - - 0x0096FC 02:96EC: 02        .byte $02   ; 05



ofs_000_96ED_56:
C - - J - - 0x0096FD 02:96ED: B5 43     LDA ram_state,X
C - - - - - 0x0096FF 02:96EF: 30 35     BMI bra_9726
C - - - - - 0x009701 02:96F1: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009704 02:96F4: 20 45 A3  JSR sub_A345
C - - - - - 0x009707 02:96F7: A9 3F     LDA #con_sfx_elevator
C - - - - - 0x009709 02:96F9: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x00970C 02:96FC: A9 1E     LDA #con_obj_1E
C - - - - - 0x00970E 02:96FE: 85 C3     STA ram_obj_id + $04
C - - - - - 0x009710 02:9700: A9 A2     LDA #con_003C_80 + con_003C_20 + con_003C_02
C - - - - - 0x009712 02:9702: 85 40     STA ram_003C_obj + $04
C - - - - - 0x009714 02:9704: A9 D5     LDA #$D5
C - - - - - 0x009716 02:9706: 85 7B     STA ram_pos_X_lo + $04
C - - - - - 0x009718 02:9708: A9 01     LDA #$01
C - - - - - 0x00971A 02:970A: 85 84     STA ram_pos_X_hi + $04
C - - - - - 0x00971C 02:970C: B5 92     LDA ram_pos_Y_lo,X
C - - - - - 0x00971E 02:970E: 85 96     STA ram_pos_Y_lo + $04
C - - - - - 0x009720 02:9710: B5 9B     LDA ram_pos_Y_hi,X
C - - - - - 0x009722 02:9712: 85 9F     STA ram_pos_Y_hi + $04
C - - - - - 0x009724 02:9714: A9 20     LDA #con_004A_20
C - - - - - 0x009726 02:9716: 85 4E     STA ram_004A_obj + $04
C - - - - - 0x009728 02:9718: A9 01     LDA #$01
C - - - - - 0x00972A 02:971A: 95 B6     STA ram_pos_Z_hi,X
C - - - - - 0x00972C 02:971C: A9 F0     LDA #$F0
C - - - - - 0x00972E 02:971E: 95 AD     STA ram_pos_Z_lo,X
C - - - - - 0x009730 02:9720: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x009732 02:9722: 29 3F     AND #(con_004A_40 + con_004A_80) ^ $FF
C - - - - - 0x009734 02:9724: 95 4A     STA ram_004A_obj,X
bra_9726:
C - - - - - 0x009736 02:9726: A6 19     LDX ram_0019
C - - - - - 0x009738 02:9728: B5 B6     LDA ram_pos_Z_hi,X
C - - - - - 0x00973A 02:972A: D0 20     BNE bra_974C
C - - - - - 0x00973C 02:972C: B5 AD     LDA ram_pos_Z_lo,X
C - - - - - 0x00973E 02:972E: C9 12     CMP #$12
C - - - - - 0x009740 02:9730: B0 1A     BCS bra_974C
C - - - - - 0x009742 02:9732: A5 D2     LDA ram_00D2
C - - - - - 0x009744 02:9734: 38        SEC
C - - - - - 0x009745 02:9735: E9 01     SBC #< $0001
C - - - - - 0x009747 02:9737: 85 D2     STA ram_00D2
C - - - - - 0x009749 02:9739: A5 D3     LDA ram_00D3
C - - - - - 0x00974B 02:973B: E9 00     SBC #> $0001
C - - - - - 0x00974D 02:973D: 85 D3     STA ram_00D3
C - - - - - 0x00974F 02:973F: 25 D2     AND ram_00D2
C - - - - - 0x009751 02:9741: 10 25     BPL bra_9768
C - - - - - 0x009753 02:9743: A9 00     LDA #$00
C - - - - - 0x009755 02:9745: 85 D2     STA ram_00D2
C - - - - - 0x009757 02:9747: 85 D3     STA ram_00D3
C - - - - - 0x009759 02:9749: 4C 68 97  JMP loc_9768
bra_974C:
C - - - - - 0x00975C 02:974C: B5 AD     LDA ram_pos_Z_lo,X
C - - - - - 0x00975E 02:974E: 38        SEC
C - - - - - 0x00975F 02:974F: E9 02     SBC #< $0002
C - - - - - 0x009761 02:9751: 95 AD     STA ram_pos_Z_lo,X
C - - - - - 0x009763 02:9753: B5 B6     LDA ram_pos_Z_hi,X
C - - - - - 0x009765 02:9755: E9 00     SBC #> $0002
C - - - - - 0x009767 02:9757: 95 B6     STA ram_pos_Z_hi,X
C - - - - - 0x009769 02:9759: B5 AD     LDA ram_pos_Z_lo,X
C - - - - - 0x00976B 02:975B: 38        SEC
C - - - - - 0x00976C 02:975C: E9 10     SBC #< $0010
C - - - - - 0x00976E 02:975E: B5 B6     LDA ram_pos_Z_hi,X
C - - - - - 0x009770 02:9760: E9 00     SBC #> $0010
C - - - - - 0x009772 02:9762: B0 04     BCS bra_9768
- - - - - - 0x009774 02:9764: A9 7F     LDA #con_state_7F
- - - - - - 0x009776 02:9766: 95 43     STA ram_state,X
bra_9768:
loc_9768:
C D 0 - - - 0x009778 02:9768: A9 7F     LDA #$7F
C - - - - - 0x00977A 02:976A: 95 C7     STA ram_animation_id,X
C - - - - - 0x00977C 02:976C: 85 CB     STA ram_animation_id + $04
C - - - - - 0x00977E 02:976E: B5 AD     LDA ram_pos_Z_lo,X
C - - - - - 0x009780 02:9770: 38        SEC
C - - - - - 0x009781 02:9771: E9 58     SBC #< $0158
C - - - - - 0x009783 02:9773: B5 B6     LDA ram_pos_Z_hi,X
C - - - - - 0x009785 02:9775: E9 01     SBC #> $0158
C - - - - - 0x009787 02:9777: B0 1B     BCS bra_9794
C - - - - - 0x009789 02:9779: B5 AD     LDA ram_pos_Z_lo,X
C - - - - - 0x00978B 02:977B: 38        SEC
C - - - - - 0x00978C 02:977C: E9 C0     SBC #< $00C0
C - - - - - 0x00978E 02:977E: B5 B6     LDA ram_pos_Z_hi,X
C - - - - - 0x009790 02:9780: E9 00     SBC #> $00C0
C - - - - - 0x009792 02:9782: 90 10     BCC bra_9794
C - - - - - 0x009794 02:9784: A9 08     LDA #$08
C - - - - - 0x009796 02:9786: 85 CB     STA ram_animation_id + $04
C - - - - - 0x009798 02:9788: A9 30     LDA #$30
C - - - - - 0x00979A 02:978A: 95 C7     STA ram_animation_id,X
C - - - - - 0x00979C 02:978C: B5 AD     LDA ram_pos_Z_lo,X
C - - - - - 0x00979E 02:978E: 85 B1     STA ram_pos_Z_lo + $04
C - - - - - 0x0097A0 02:9790: B5 B6     LDA ram_pos_Z_hi,X
C - - - - - 0x0097A2 02:9792: 85 BA     STA ram_pos_Z_hi + $04
bra_9794:
C - - - - - 0x0097A4 02:9794: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x0097A7 02:9797: 60        RTS



ofs_000_9798_57:
C - - J - - 0x0097A8 02:9798: B5 43     LDA ram_state,X
C - - - - - 0x0097AA 02:979A: 30 27     BMI bra_97C3
C - - - - - 0x0097AC 02:979C: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0097AF 02:979F: A9 24     LDA #$24
C - - - - - 0x0097B1 02:97A1: 95 C7     STA ram_animation_id,X
C - - - - - 0x0097B3 02:97A3: A9 10     LDA #$10
C - - - - - 0x0097B5 02:97A5: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x0097B8 02:97A8: 29 7F     AND #$7F
C - - - - - 0x0097BA 02:97AA: A8        TAY
C - - - - - 0x0097BB 02:97AB: 85 1B     STA ram_001B
C - - - - - 0x0097BD 02:97AD: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x0097C0 02:97B0: A8        TAY
C - - - - - 0x0097C1 02:97B1: B9 C7 97  LDA tbl_97C7,Y
C - - - - - 0x0097C4 02:97B4: 30 0D     BMI bra_97C3
C - - - - - 0x0097C6 02:97B6: A4 1B     LDY ram_001B
C - - - - - 0x0097C8 02:97B8: B9 1E 04  LDA ram_hp,Y
C - - - - - 0x0097CB 02:97BB: C9 20     CMP #$20    ; you can't grab an enemy if he has lots of hp
C - - - - - 0x0097CD 02:97BD: 90 04     BCC bra_97C3
C - - - - - 0x0097CF 02:97BF: A9 5F     LDA #con_state_5F
C - - - - - 0x0097D1 02:97C1: 95 43     STA ram_state,X
bra_97C3:
C - - - - - 0x0097D3 02:97C3: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x0097D6 02:97C6: 60        RTS



tbl_97C7:
- - - - - - 0x0097D7 02:97C7: FF        .byte $FF   ; 00 con_obj_billy
- - - - - - 0x0097D8 02:97C8: FF        .byte $FF   ; 01 con_obj_jimmy
- D 0 - - - 0x0097D9 02:97C9: FF        .byte $FF   ; 02 con_obj_williams
- D 0 - - - 0x0097DA 02:97CA: 00        .byte $00   ; 03 con_obj_roper
- D 0 - - - 0x0097DB 02:97CB: FF        .byte $FF   ; 04 con_obj_linda
- - - - - - 0x0097DC 02:97CC: FF        .byte $FF   ; 05 con_obj_05
- - - - - - 0x0097DD 02:97CD: FF        .byte $FF   ; 06 con_obj_bolo
- - - - - - 0x0097DE 02:97CE: FF        .byte $FF   ; 07 con_obj_burnov
- - - - - - 0x0097DF 02:97CF: FF        .byte $FF   ; 08 con_obj_abore
- - - - - - 0x0097E0 02:97D0: FF        .byte $FF   ; 09 con_obj_chin_taimei
- D 0 - - - 0x0097E1 02:97D1: 00        .byte $00   ; 0A con_obj_right_arm
- - - - - - 0x0097E2 02:97D2: FF        .byte $FF   ; 0B con_obj_0B
- D 0 - - - 0x0097E3 02:97D3: 00        .byte $00   ; 0C con_obj_doppelganger
- - - - - - 0x0097E4 02:97D4: FF        .byte $FF   ; 0D con_obj_0D
- - - - - - 0x0097E5 02:97D5: FF        .byte $FF   ; 0E con_obj_0E
- - - - - - 0x0097E6 02:97D6: FF        .byte $FF   ; 0F con_obj_ninja
- - - - - - 0x0097E7 02:97D7: FF        .byte $FF   ; 10 con_obj_10
- - - - - - 0x0097E8 02:97D8: FF        .byte $FF   ; 11 con_obj_shadow_warrior



ofs_000_97D9_58:
C - - J - - 0x0097E9 02:97D9: B5 43     LDA ram_state,X
C - - - - - 0x0097EB 02:97DB: 30 1E     BMI bra_97FB
C - - - - - 0x0097ED 02:97DD: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0097F0 02:97E0: 20 45 A3  JSR sub_A345
C - - - - - 0x0097F3 02:97E3: A9 00     LDA #$00
C - - - - - 0x0097F5 02:97E5: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x0097F8 02:97E8: A9 60     LDA #$60
C - - - - - 0x0097FA 02:97EA: 9D 2D 03  STA ram_032D_obj,X
C - - - - - 0x0097FD 02:97ED: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x0097FF 02:97EF: 09 C0     ORA #con_004A_40 + con_004A_80
C - - - - - 0x009801 02:97F1: 95 4A     STA ram_004A_obj,X
C - - - - - 0x009803 02:97F3: A9 07     LDA #$07
C - - - - - 0x009805 02:97F5: 95 C7     STA ram_animation_id,X
C - - - - - 0x009807 02:97F7: A9 05     LDA #$05
C - - - - - 0x009809 02:97F9: 95 55     STA ram_animation_frame_counter,X
bra_97FB:
C - - - - - 0x00980B 02:97FB: 20 10 9E  JSR sub_9E10
C - - - - - 0x00980E 02:97FE: A6 19     LDX ram_0019
C - - - - - 0x009810 02:9800: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x009812 02:9802: 10 04     BPL bra_9808_RTS
C - - - - - 0x009814 02:9804: A9 7F     LDA #$7F
C - - - - - 0x009816 02:9806: 95 C7     STA ram_animation_id,X
bra_9808_RTS:
C - - - - - 0x009818 02:9808: 60        RTS



ofs_000_9809_59:
C - - J - - 0x009819 02:9809: B5 43     LDA ram_state,X
C - - - - - 0x00981B 02:980B: 30 07     BMI bra_9814
C - - - - - 0x00981D 02:980D: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009820 02:9810: A9 1E     LDA #con_obj_1E
C - - - - - 0x009822 02:9812: 95 BF     STA ram_obj_id,X
bra_9814:
C - - - - - 0x009824 02:9814: A9 2D     LDA #$2D
C - - - - - 0x009826 02:9816: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x009829 02:9819: 60        RTS



_off000_981A_2D:
- D 0 - I - 0x00982A 02:981A: 7F        .byte $7F   ; 
- D 0 - I - 0x00982B 02:981B: 0C        .byte $0C   ; 
- D 0 - I - 0x00982C 02:981C: 0A        .byte $0A   ; 
- D 0 - I - 0x00982D 02:981D: 0B        .byte $0B   ; 
- D 0 - I - 0x00982E 02:981E: 0A        .byte $0A   ; 
- D 0 - I - 0x00982F 02:981F: 0C        .byte $0C   ; 
- D 0 - I - 0x009830 02:9820: 7F        .byte $7F   ; 
- D 0 - I - 0x009831 02:9821: 04        .byte $04   ; 
- D 0 - I - 0x009832 02:9822: 05        .byte $05   ; 
- D 0 - I - 0x009833 02:9823: 06        .byte $06   ; 
- D 0 - I - 0x009834 02:9824: 07        .byte $07   ; 
- D 0 - I - 0x009835 02:9825: FF        .byte $FF   ; 



_off001_9826_2D:
- D 0 - I - 0x009836 02:9826: 08        .byte $08   ; 
- D 0 - I - 0x009837 02:9827: 03        .byte $03   ; 
- D 0 - I - 0x009838 02:9828: 03        .byte $03   ; 
- D 0 - I - 0x009839 02:9829: 03        .byte $03   ; 
- D 0 - I - 0x00983A 02:982A: 03        .byte $03   ; 
- D 0 - I - 0x00983B 02:982B: 03        .byte $03   ; 
- D 0 - I - 0x00983C 02:982C: 10        .byte $10   ; 
- D 0 - I - 0x00983D 02:982D: 10        .byte $10   ; 
- D 0 - I - 0x00983E 02:982E: 10        .byte $10   ; 
- D 0 - I - 0x00983F 02:982F: 10        .byte $10   ; 
- D 0 - I - 0x009840 02:9830: 10        .byte $10   ; 



ofs_000_9831_5A:
C - - J - - 0x009841 02:9831: B5 43     LDA ram_state,X
C - - - - - 0x009843 02:9833: 30 09     BMI bra_983E
C - - - - - 0x009845 02:9835: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009848 02:9838: B5 3C     LDA ram_003C_obj,X ; 003E
C - - - - - 0x00984A 02:983A: 09 01     ORA #con_003C_01
C - - - - - 0x00984C 02:983C: 95 3C     STA ram_003C_obj,X ; 003E
bra_983E:
C - - - - - 0x00984E 02:983E: A9 2E     LDA #$2E
C - - - - - 0x009850 02:9840: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x009853 02:9843: A6 19     LDX ram_0019
C - - - - - 0x009855 02:9845: B5 43     LDA ram_state,X
C - - - - - 0x009857 02:9847: 29 7F     AND #$7F
C - - - - - 0x009859 02:9849: C9 00     CMP #con_state_00
C - - - - - 0x00985B 02:984B: D0 08     BNE bra_9855_RTS
C - - - - - 0x00985D 02:984D: A9 10     LDA #con_003C_10
C - - - - - 0x00985F 02:984F: 15 3C     ORA ram_003C_obj,X ; 003E
C - - - - - 0x009861 02:9851: 29 FE     AND #con_003C_01 ^ $FF
C - - - - - 0x009863 02:9853: 95 3C     STA ram_003C_obj,X ; 003E
bra_9855_RTS:
C - - - - - 0x009865 02:9855: 60        RTS



_off000_9856_2E:
- D 0 - I - 0x009866 02:9856: 7F        .byte $7F   ; 
- D 0 - I - 0x009867 02:9857: 02        .byte $02   ; 
- D 0 - I - 0x009868 02:9858: 7F        .byte $7F   ; 
- D 0 - I - 0x009869 02:9859: 02        .byte $02   ; 
- D 0 - I - 0x00986A 02:985A: 7F        .byte $7F   ; 
- D 0 - I - 0x00986B 02:985B: 02        .byte $02   ; 
- D 0 - I - 0x00986C 02:985C: 7F        .byte $7F   ; 
- D 0 - I - 0x00986D 02:985D: 02        .byte $02   ; 
- D 0 - I - 0x00986E 02:985E: 7F        .byte $7F   ; 
- D 0 - I - 0x00986F 02:985F: 02        .byte $02   ; 
- D 0 - I - 0x009870 02:9860: 80        .byte $80   ; 



_off001_9861_2E:
- D 0 - I - 0x009871 02:9861: 01        .byte $01   ; 
- D 0 - I - 0x009872 02:9862: 01        .byte $01   ; 
- D 0 - I - 0x009873 02:9863: 01        .byte $01   ; 
- D 0 - I - 0x009874 02:9864: 01        .byte $01   ; 
- D 0 - I - 0x009875 02:9865: 01        .byte $01   ; 
- D 0 - I - 0x009876 02:9866: 00        .byte $00   ; 
- D 0 - I - 0x009877 02:9867: 00        .byte $00   ; 
- D 0 - I - 0x009878 02:9868: 00        .byte $00   ; 
- D 0 - I - 0x009879 02:9869: 00        .byte $00   ; 
- D 0 - I - 0x00987A 02:986A: 00        .byte $00   ; 



ofs_000_986B_5B:
C - - J - - 0x00987B 02:986B: B5 43     LDA ram_state,X
C - - - - - 0x00987D 02:986D: 30 0B     BMI bra_987A
C - - - - - 0x00987F 02:986F: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009882 02:9872: A9 1A     LDA #$1A
C - - - - - 0x009884 02:9874: 95 C7     STA ram_animation_id,X
C - - - - - 0x009886 02:9876: A9 05     LDA #$05
C - - - - - 0x009888 02:9878: 95 55     STA ram_animation_frame_counter,X
bra_987A:
C - - - - - 0x00988A 02:987A: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x00988C 02:987C: D0 04     BNE bra_9882
C - - - - - 0x00988E 02:987E: A9 00     LDA #con_state_00
C - - - - - 0x009890 02:9880: 95 43     STA ram_state,X
bra_9882:
C - - - - - 0x009892 02:9882: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x009895 02:9885: 60        RTS



ofs_000_9886_5C:
C - - J - - 0x009896 02:9886: B5 43     LDA ram_state,X
C - - - - - 0x009898 02:9888: 30 03     BMI bra_988D
C - - - - - 0x00989A 02:988A: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_988D:
C - - - - - 0x00989D 02:988D: A9 2F     LDA #$2F
C - - - - - 0x00989F 02:988F: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x0098A2 02:9892: A6 19     LDX ram_0019
C - - - - - 0x0098A4 02:9894: B5 C7     LDA ram_animation_id,X
C - - - - - 0x0098A6 02:9896: 29 7F     AND #$7F
C - - - - - 0x0098A8 02:9898: C9 13     CMP #$13
C - - - - - 0x0098AA 02:989A: D0 07     BNE bra_98A3_RTS
C - - - - - 0x0098AC 02:989C: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x0098AE 02:989E: D0 03     BNE bra_98A3_RTS
C - - - - - 0x0098B0 02:98A0: 4C 48 90  JMP loc_9048
bra_98A3_RTS:
C - - - - - 0x0098B3 02:98A3: 60        RTS



ofs_000_98A4_5D:
C - - J - - 0x0098B4 02:98A4: B5 43     LDA ram_state,X
C - - - - - 0x0098B6 02:98A6: 30 18     BMI bra_98C0
C - - - - - 0x0098B8 02:98A8: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0098BB 02:98AB: A9 80     LDA #$80
C - - - - - 0x0098BD 02:98AD: 9D 2D 03  STA ram_032D_obj,X
C - - - - - 0x0098C0 02:98B0: A9 05     LDA #$05
C - - - - - 0x0098C2 02:98B2: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x0098C5 02:98B5: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x0098C7 02:98B7: 09 80     ORA #con_004A_80
C - - - - - 0x0098C9 02:98B9: 95 4A     STA ram_004A_obj,X
C - - - - - 0x0098CB 02:98BB: A9 07     LDA #$07
C - - - - - 0x0098CD 02:98BD: 9D 16 03  STA ram_0316_obj,X
bra_98C0:
C - - - - - 0x0098D0 02:98C0: A9 3B     LDA #$3B
C - - - - - 0x0098D2 02:98C2: 4C D2 9F  JMP loc_9FD2



_off000_98C5_3B:
- D 0 - I - 0x0098D5 02:98C5: 24        .byte $24   ; 
- D 0 - I - 0x0098D6 02:98C6: 25        .byte $25   ; 
- D 0 - I - 0x0098D7 02:98C7: 26        .byte $26   ; 
- D 0 - I - 0x0098D8 02:98C8: 27        .byte $27   ; 
- D 0 - I - 0x0098D9 02:98C9: FE        .byte $FE   ; 



_off001_98CA_3B:
- D 0 - I - 0x0098DA 02:98CA: 01        .byte $01   ; 
- D 0 - I - 0x0098DB 02:98CB: 01        .byte $01   ; 
- D 0 - I - 0x0098DC 02:98CC: 01        .byte $01   ; 
- D 0 - I - 0x0098DD 02:98CD: 01        .byte $01   ; 



ofs_000_98CE_5E:
C - - J - - 0x0098DE 02:98CE: B5 43     LDA ram_state,X
C - - - - - 0x0098E0 02:98D0: 30 03     BMI bra_98D5
C - - - - - 0x0098E2 02:98D2: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_98D5:
C - - - - - 0x0098E5 02:98D5: A9 3C     LDA #$3C
C - - - - - 0x0098E7 02:98D7: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x0098EA 02:98DA: B5 C7     LDA ram_animation_id,X
C - - - - - 0x0098EC 02:98DC: 29 7F     AND #$7F
C - - - - - 0x0098EE 02:98DE: C9 02     CMP #$02
C - - - - - 0x0098F0 02:98E0: D0 07     BNE bra_98E9_RTS
C - - - - - 0x0098F2 02:98E2: B5 55     LDA ram_animation_frame_counter,X
C - - - - - 0x0098F4 02:98E4: D0 03     BNE bra_98E9_RTS
C - - - - - 0x0098F6 02:98E6: FE C1 03  INC ram_03C1_obj,X
bra_98E9_RTS:
C - - - - - 0x0098F9 02:98E9: 60        RTS



_off000_98EA_3C:
- D 0 - I - 0x0098FA 02:98EA: 0C        .byte $0C   ; 
- D 0 - I - 0x0098FB 02:98EB: 0D        .byte $0D   ; 
- D 0 - I - 0x0098FC 02:98EC: 02        .byte $02   ; 
- D 0 - I - 0x0098FD 02:98ED: 0C        .byte $0C   ; 
- D 0 - I - 0x0098FE 02:98EE: 0D        .byte $0D   ; 
- D 0 - I - 0x0098FF 02:98EF: 02        .byte $02   ; 
- D 0 - I - 0x009900 02:98F0: 0C        .byte $0C   ; 
- D 0 - I - 0x009901 02:98F1: 0D        .byte $0D   ; 
- D 0 - I - 0x009902 02:98F2: 02        .byte $02   ; 
- D 0 - I - 0x009903 02:98F3: 0C        .byte $0C   ; 
- D 0 - I - 0x009904 02:98F4: 0D        .byte $0D   ; 
- D 0 - I - 0x009905 02:98F5: 80        .byte $80   ; 



_off001_98F6_3C:
- D 0 - I - 0x009906 02:98F6: 01        .byte $01   ; 
- D 0 - I - 0x009907 02:98F7: 02        .byte $02   ; 
- D 0 - I - 0x009908 02:98F8: 01        .byte $01   ; 
- D 0 - I - 0x009909 02:98F9: 01        .byte $01   ; 
- D 0 - I - 0x00990A 02:98FA: 02        .byte $02   ; 
- D 0 - I - 0x00990B 02:98FB: 01        .byte $01   ; 
- D 0 - I - 0x00990C 02:98FC: 01        .byte $01   ; 
- D 0 - I - 0x00990D 02:98FD: 02        .byte $02   ; 
- D 0 - I - 0x00990E 02:98FE: 01        .byte $01   ; 
- D 0 - I - 0x00990F 02:98FF: 01        .byte $01   ; 
- D 0 - I - 0x009910 02:9900: 02        .byte $02   ; 



ofs_000_9901_5F:
C - - J - - 0x009911 02:9901: B5 43     LDA ram_state,X
C - - - - - 0x009913 02:9903: 30 03     BMI bra_9908
C - - - - - 0x009915 02:9905: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_9908:
C - - - - - 0x009918 02:9908: A9 3D     LDA #$3D
C - - - - - 0x00991A 02:990A: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x00991D 02:990D: B5 43     LDA ram_state,X
C - - - - - 0x00991F 02:990F: C9 1B     CMP #con_state_1B
C - - - - - 0x009921 02:9911: D0 28     BNE bra_993B_RTS
C - - - - - 0x009923 02:9913: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x009926 02:9916: 29 7F     AND #$7F
C - - - - - 0x009928 02:9918: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x00992B 02:991B: A8        TAY
C - - - - - 0x00992C 02:991C: 20 66 A4  JSR sub_A466
C - - - - - 0x00992F 02:991F: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x009932 02:9922: 29 DF     AND #con_004A_20 ^ $FF
C - - - - - 0x009934 02:9924: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x009937 02:9927: A9 00     LDA #con_state_00
C - - - - - 0x009939 02:9929: 99 43 00  STA a: ram_state,Y
C - - - - - 0x00993C 02:992C: A9 40     LDA #$40
C - - - - - 0x00993E 02:992E: 9D 0F 03  STA ram_030F_obj,X
C - - - - - 0x009941 02:9931: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x009944 02:9934: 30 05     BMI bra_993B_RTS
C - - - - - 0x009946 02:9936: A9 C0     LDA #$C0
C - - - - - 0x009948 02:9938: 9D 0F 03  STA ram_030F_obj,X
bra_993B_RTS:
C - - - - - 0x00994B 02:993B: 60        RTS



_off000_993C_3D:
- D 0 - I - 0x00994C 02:993C: 1A        .byte $1A   ; 
- D 0 - I - 0x00994D 02:993D: 1B        .byte $1B   ; 
- D 0 - I - 0x00994E 02:993E: 9B        .byte $9B   ; 



_off001_993F_3D:
- D 0 - I - 0x00994F 02:993F: 04        .byte $04   ; 
- D 0 - I - 0x009950 02:9940: 02        .byte $02   ; 



ofs_000_9941_60:
ofs_000_9941_61:
ofs_000_9941_62:
ofs_000_9941_63:
ofs_000_9941_64:
ofs_000_9941_65:
C - - J - - 0x009951 02:9941: B5 43     LDA ram_state,X
C - - - - - 0x009953 02:9943: 30 11     BMI bra_9956
C - - - - - 0x009955 02:9945: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009958 02:9948: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x00995A 02:994A: 29 3F     AND #(con_004A_40 + con_004A_80) ^ $FF
C - - - - - 0x00995C 02:994C: 95 4A     STA ram_004A_obj,X
C - - - - - 0x00995E 02:994E: A9 20     LDA #$20
C - - - - - 0x009960 02:9950: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x009962 02:9952: A9 00     LDA #$00
C - - - - - 0x009964 02:9954: 95 C7     STA ram_animation_id,X
bra_9956:
C - - - - - 0x009966 02:9956: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x009968 02:9958: D0 0D     BNE bra_9967
C - - - - - 0x00996A 02:995A: B5 BF     LDA ram_obj_id,X
C - - - - - 0x00996C 02:995C: 38        SEC
C - - - - - 0x00996D 02:995D: E9 12     SBC #con_weapon_id
C - - - - - 0x00996F 02:995F: A8        TAY
C - - - - - 0x009970 02:9960: B9 71 99  LDA tbl_9971_weapons_state,Y
C - - - - - 0x009973 02:9963: F0 02     BEQ bra_9967
C - - - - - 0x009975 02:9965: 95 43     STA ram_state,X
bra_9967:
C - - - - - 0x009977 02:9967: 5E 16 03  LSR ram_0316_obj,X
C - - - - - 0x00997A 02:996A: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x00997D 02:996D: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x009980 02:9970: 60        RTS



tbl_9971_weapons_state:
- D 0 - - - 0x009981 02:9971: 00        .byte $00   ; 12 con_obj_knife
- - - - - - 0x009982 02:9972: 00        .byte $00   ; 13 con_obj_13
- D 0 - - - 0x009983 02:9973: 6F        .byte con_state_6F   ; 14 con_obj_grenade
- D 0 - - - 0x009984 02:9974: 00        .byte $00   ; 15 con_obj_chain_whip
- D 0 - - - 0x009985 02:9975: 66        .byte con_state_66   ; 16 con_obj_flame_grenades
- D 0 - - - 0x009986 02:9976: 00        .byte $00   ; 17 con_obj_baton
- - - - - - 0x009987 02:9977: 00        .byte $00   ; 18 con_obj_18
- - - - - - 0x009988 02:9978: 00        .byte $00   ; 19 con_obj_19
- - - - - - 0x009989 02:9979: 00        .byte $00   ; 1A con_obj_1A
- - - - - - 0x00998A 02:997A: 00        .byte $00   ; 1B con_obj_jumping_spike
- - - - - - 0x00998B 02:997B: 00        .byte $00   ; 1C con_obj_fireball
- - - - - - 0x00998C 02:997C: 00        .byte $00   ; 1D con_obj_1D
- - - - - - 0x00998D 02:997D: 00        .byte $00   ; 1E con_obj_1E



ofs_000_997E_66:
C - - J - - 0x00998E 02:997E: B5 43     LDA ram_state,X
C - - - - - 0x009990 02:9980: 30 03     BMI bra_9985
C - - - - - 0x009992 02:9982: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
bra_9985:
C - - - - - 0x009995 02:9985: A9 30     LDA #$30
C - - - - - 0x009997 02:9987: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x00999A 02:998A: B5 43     LDA ram_state,X
C - - - - - 0x00999C 02:998C: 29 7F     AND #$7F
C - - - - - 0x00999E 02:998E: C9 7F     CMP #con_state_7F
C - - - - - 0x0099A0 02:9990: D0 04     BNE bra_9996
C - - - - - 0x0099A2 02:9992: A9 00     LDA #con_003C_00
C - - - - - 0x0099A4 02:9994: 95 3C     STA ram_003C_obj,X ; 0040 0041 0042
bra_9996:
C - - - - - 0x0099A6 02:9996: B5 C7     LDA ram_animation_id,X
C - - - - - 0x0099A8 02:9998: 29 7F     AND #$7F
C - - - - - 0x0099AA 02:999A: C9 05     CMP #$05
C - - - - - 0x0099AC 02:999C: D0 05     BNE bra_99A3_RTS
C - - - - - 0x0099AE 02:999E: A9 24     LDA #con_sfx_fire
C - - - - - 0x0099B0 02:99A0: 20 06 C0  JSR sub_0x01C016_play_sound
bra_99A3_RTS:
C - - - - - 0x0099B3 02:99A3: 60        RTS



_off000_99A4_30:
- D 0 - I - 0x0099B4 02:99A4: 04        .byte $04   ; 
- D 0 - I - 0x0099B5 02:99A5: 00        .byte $00   ; 
- D 0 - I - 0x0099B6 02:99A6: 04        .byte $04   ; 
- D 0 - I - 0x0099B7 02:99A7: 00        .byte $00   ; 
- D 0 - I - 0x0099B8 02:99A8: 04        .byte $04   ; 
- D 0 - I - 0x0099B9 02:99A9: 00        .byte $00   ; 
- D 0 - I - 0x0099BA 02:99AA: 04        .byte $04   ; 
- D 0 - I - 0x0099BB 02:99AB: 00        .byte $00   ; 
- D 0 - I - 0x0099BC 02:99AC: 04        .byte $04   ; 
- D 0 - I - 0x0099BD 02:99AD: 05        .byte $05   ; 
- D 0 - I - 0x0099BE 02:99AE: 06        .byte $06   ; 
- D 0 - I - 0x0099BF 02:99AF: 07        .byte $07   ; 
- D 0 - I - 0x0099C0 02:99B0: 08        .byte $08   ; 
- D 0 - I - 0x0099C1 02:99B1: 09        .byte $09   ; 
- D 0 - I - 0x0099C2 02:99B2: 0A        .byte $0A   ; 
- D 0 - I - 0x0099C3 02:99B3: 0B        .byte $0B   ; 
- D 0 - I - 0x0099C4 02:99B4: 0C        .byte $0C   ; 
- D 0 - I - 0x0099C5 02:99B5: 0D        .byte $0D   ; 
- D 0 - I - 0x0099C6 02:99B6: 0E        .byte $0E   ; 
- D 0 - I - 0x0099C7 02:99B7: 0F        .byte $0F   ; 
- D 0 - I - 0x0099C8 02:99B8: 10        .byte $10   ; 
- D 0 - I - 0x0099C9 02:99B9: 11        .byte $11   ; 
- D 0 - I - 0x0099CA 02:99BA: FF        .byte $FF   ; 



_off001_99BB_30:
- D 0 - I - 0x0099CB 02:99BB: 02        .byte $02   ; 
- D 0 - I - 0x0099CC 02:99BC: 02        .byte $02   ; 
- D 0 - I - 0x0099CD 02:99BD: 02        .byte $02   ; 
- D 0 - I - 0x0099CE 02:99BE: 02        .byte $02   ; 
- D 0 - I - 0x0099CF 02:99BF: 02        .byte $02   ; 
- D 0 - I - 0x0099D0 02:99C0: 02        .byte $02   ; 
- D 0 - I - 0x0099D1 02:99C1: 02        .byte $02   ; 
- D 0 - I - 0x0099D2 02:99C2: 02        .byte $02   ; 
- D 0 - I - 0x0099D3 02:99C3: 02        .byte $02   ; 
- D 0 - I - 0x0099D4 02:99C4: 02        .byte $02   ; 
- D 0 - I - 0x0099D5 02:99C5: 02        .byte $02   ; 
- D 0 - I - 0x0099D6 02:99C6: 02        .byte $02   ; 
- D 0 - I - 0x0099D7 02:99C7: 02        .byte $02   ; 
- D 0 - I - 0x0099D8 02:99C8: 02        .byte $02   ; 
- D 0 - I - 0x0099D9 02:99C9: 02        .byte $02   ; 
- D 0 - I - 0x0099DA 02:99CA: 02        .byte $02   ; 
- D 0 - I - 0x0099DB 02:99CB: 02        .byte $02   ; 
- D 0 - I - 0x0099DC 02:99CC: 02        .byte $02   ; 
- D 0 - I - 0x0099DD 02:99CD: 02        .byte $02   ; 
- D 0 - I - 0x0099DE 02:99CE: 02        .byte $02   ; 
- D 0 - I - 0x0099DF 02:99CF: 02        .byte $02   ; 
- D 0 - I - 0x0099E0 02:99D0: 02        .byte $02   ; 



ofs_000_99D1_67:
C - - J - - 0x0099E1 02:99D1: B5 43     LDA ram_state,X
C - - - - - 0x0099E3 02:99D3: 30 07     BMI bra_99DC
C - - - - - 0x0099E5 02:99D5: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x0099E8 02:99D8: A9 00     LDA #con_004A_00
C - - - - - 0x0099EA 02:99DA: 95 4A     STA ram_004A_obj,X
bra_99DC:
C - - - - - 0x0099EC 02:99DC: A9 31     LDA #$31
C - - - - - 0x0099EE 02:99DE: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x0099F1 02:99E1: A6 19     LDX ram_0019
C - - - - - 0x0099F3 02:99E3: B5 43     LDA ram_state,X
C - - - - - 0x0099F5 02:99E5: 29 7F     AND #$7F
C - - - - - 0x0099F7 02:99E7: C9 65     CMP #con_state_65
C - - - - - 0x0099F9 02:99E9: D0 04     BNE bra_99EF_RTS
C - - - - - 0x0099FB 02:99EB: A9 7E     LDA #con_state_7E
C - - - - - 0x0099FD 02:99ED: 95 43     STA ram_state,X
bra_99EF_RTS:
C - - - - - 0x0099FF 02:99EF: 60        RTS



_off000_99F0_31:
- D 0 - I - 0x009A00 02:99F0: 02        .byte $02   ; 
- D 0 - I - 0x009A01 02:99F1: 03        .byte $03   ; 
- D 0 - I - 0x009A02 02:99F2: 04        .byte $04   ; 
- D 0 - I - 0x009A03 02:99F3: 05        .byte $05   ; 
- D 0 - I - 0x009A04 02:99F4: E5        .byte $E5   ; 



_off001_99F5_31:
- D 0 - I - 0x009A05 02:99F5: 01        .byte $01   ; 
- D 0 - I - 0x009A06 02:99F6: 01        .byte $01   ; 
- D 0 - I - 0x009A07 02:99F7: 01        .byte $01   ; 
- D 0 - I - 0x009A08 02:99F8: 01        .byte $01   ; 



ofs_000_99F9_68:
C - - J - - 0x009A09 02:99F9: B5 43     LDA ram_state,X
C - - - - - 0x009A0B 02:99FB: 30 0F     BMI bra_9A0C
C - - - - - 0x009A0D 02:99FD: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009A10 02:9A00: A9 10     LDA #$10
C - - - - - 0x009A12 02:9A02: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x009A15 02:9A05: 20 E5 9D  JSR sub_9DE5
C - - - - - 0x009A18 02:9A08: A9 01     LDA #$01
C - - - - - 0x009A1A 02:9A0A: 95 C7     STA ram_animation_id,X
bra_9A0C:
C - - - - - 0x009A1C 02:9A0C: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x009A1F 02:9A0F: 60        RTS



ofs_000_9A10_69:
C - - J - - 0x009A20 02:9A10: B5 43     LDA ram_state,X
C - - - - - 0x009A22 02:9A12: 30 16     BMI bra_9A2A
C - - - - - 0x009A24 02:9A14: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009A27 02:9A17: A9 0C     LDA #$0C
C - - - - - 0x009A29 02:9A19: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x009A2C 02:9A1C: A9 80     LDA #$80
C - - - - - 0x009A2E 02:9A1E: 9D 2D 03  STA ram_032D_obj,X
C - - - - - 0x009A31 02:9A21: A9 00     LDA #con_004A_00
C - - - - - 0x009A33 02:9A23: 95 4A     STA ram_004A_obj,X
C - - - - - 0x009A35 02:9A25: A9 02     LDA #$02
C - - - - - 0x009A37 02:9A27: 9D 4A 04  STA ram_044A_obj,X
bra_9A2A:
C - - - - - 0x009A3A 02:9A2A: A9 32     LDA #$32
C - - - - - 0x009A3C 02:9A2C: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x009A3F 02:9A2F: 20 10 9E  JSR sub_9E10
C - - - - - 0x009A42 02:9A32: 60        RTS



_off000_9A33_32:
- D 0 - I - 0x009A43 02:9A33: 00        .byte $00   ; 
- D 0 - I - 0x009A44 02:9A34: 01        .byte $01   ; 
- D 0 - I - 0x009A45 02:9A35: 02        .byte $02   ; 
- D 0 - I - 0x009A46 02:9A36: 03        .byte $03   ; 
- D 0 - I - 0x009A47 02:9A37: 04        .byte $04   ; 
- - - - - - 0x009A48 02:9A38: 04        .byte $04   ; 



_off001_9A39_32:
- D 0 - I - 0x009A49 02:9A39: 10        .byte $10   ; 
- D 0 - I - 0x009A4A 02:9A3A: 03        .byte $03   ; 
- D 0 - I - 0x009A4B 02:9A3B: 01        .byte $01   ; 
- D 0 - I - 0x009A4C 02:9A3C: 03        .byte $03   ; 
- D 0 - I - 0x009A4D 02:9A3D: 7F        .byte $7F   ; 
- - - - - - 0x009A4E 02:9A3E: 7F        .byte $7F   ; 



ofs_000_9A3F_6A:
C - - J - - 0x009A4F 02:9A3F: B5 43     LDA ram_state,X
C - - - - - 0x009A51 02:9A41: 30 22     BMI bra_9A65
C - - - - - 0x009A53 02:9A43: B5 BF     LDA ram_obj_id,X
C - - - - - 0x009A55 02:9A45: 38        SEC
C - - - - - 0x009A56 02:9A46: E9 12     SBC #con_weapon_id
C - - - - - 0x009A58 02:9A48: A8        TAY
C - - - - - 0x009A59 02:9A49: B9 73 9A  LDA tbl_9A73_weapons_sfx,Y
C - - - - - 0x009A5C 02:9A4C: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x009A5F 02:9A4F: B9 7F 9A  LDA tbl_9A7F_weapons_state,Y
C - - - - - 0x009A62 02:9A52: F0 03     BEQ bra_9A57
C - - - - - 0x009A64 02:9A54: 95 43     STA ram_state,X
C - - - - - 0x009A66 02:9A56: 60        RTS
bra_9A57:
C - - - - - 0x009A67 02:9A57: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009A6A 02:9A5A: A9 03     LDA #$03
C - - - - - 0x009A6C 02:9A5C: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x009A6F 02:9A5F: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x009A71 02:9A61: 09 80     ORA #con_004A_80
C - - - - - 0x009A73 02:9A63: 95 4A     STA ram_004A_obj,X
bra_9A65:
loc_9A65:
C D 0 - - - 0x009A75 02:9A65: A9 33     LDA #$33
C - - - - - 0x009A77 02:9A67: 4C D2 9F  JMP loc_9FD2



_off000_9A6A_33:
- D 0 - I - 0x009A7A 02:9A6A: 01        .byte $01   ; 
- D 0 - I - 0x009A7B 02:9A6B: 02        .byte $02   ; 
- D 0 - I - 0x009A7C 02:9A6C: 03        .byte $03   ; 
- D 0 - I - 0x009A7D 02:9A6D: 02        .byte $02   ; 
- D 0 - I - 0x009A7E 02:9A6E: FE        .byte $FE   ; 



_off001_9A6F_33:
- D 0 - I - 0x009A7F 02:9A6F: 02        .byte $02   ; 
- D 0 - I - 0x009A80 02:9A70: 02        .byte $02   ; 
- D 0 - I - 0x009A81 02:9A71: 02        .byte $02   ; 
- D 0 - I - 0x009A82 02:9A72: 02        .byte $02   ; 



tbl_9A73_weapons_sfx:
- D 0 - - - 0x009A83 02:9A73: 21        .byte con_sfx_21   ; 12 con_obj_knife
- - - - - - 0x009A84 02:9A74: 21        .byte con_sfx_21   ; 13 con_obj_13
- D 0 - - - 0x009A85 02:9A75: 23        .byte con_sfx_23   ; 14 con_obj_grenade
- D 0 - - - 0x009A86 02:9A76: 2D        .byte con_sfx_2D   ; 15 con_obj_chain_whip
- D 0 - - - 0x009A87 02:9A77: 23        .byte con_sfx_23   ; 16 con_obj_flame_grenades
- D 0 - - - 0x009A88 02:9A78: 27        .byte con_sfx_27   ; 17 con_obj_baton
- D 0 - - - 0x009A89 02:9A79: 2D        .byte con_sfx_2D   ; 18 con_obj_18
- D 0 - - - 0x009A8A 02:9A7A: 23        .byte con_sfx_23   ; 19 con_obj_19
- - - - - - 0x009A8B 02:9A7B: 23        .byte con_sfx_23   ; 1A con_obj_1A
- - - - - - 0x009A8C 02:9A7C: 23        .byte con_sfx_23   ; 1B con_obj_jumping_spike
- - - - - - 0x009A8D 02:9A7D: 23        .byte con_sfx_23   ; 1C con_obj_fireball
- - - - - - 0x009A8E 02:9A7E: 23        .byte con_sfx_23   ; 1D con_obj_1D



tbl_9A7F_weapons_state:
- D 0 - - - 0x009A8F 02:9A7F: 00        .byte $00   ; 12 con_obj_knife
- - - - - - 0x009A90 02:9A80: 00        .byte $00   ; 13 con_obj_13
- D 0 - - - 0x009A91 02:9A81: 00        .byte $00   ; 14 con_obj_grenade
- D 0 - - - 0x009A92 02:9A82: 65        .byte con_state_65   ; 15 con_obj_chain_whip
- D 0 - - - 0x009A93 02:9A83: 00        .byte $00   ; 16 con_obj_flame_grenades
- D 0 - - - 0x009A94 02:9A84: 00        .byte $00   ; 17 con_obj_baton
- D 0 - - - 0x009A95 02:9A85: 67        .byte con_state_67   ; 18 con_obj_18
- D 0 - - - 0x009A96 02:9A86: 7E        .byte con_state_7E   ; 19 con_obj_19
- - - - - - 0x009A97 02:9A87: 00        .byte $00   ; 1A con_obj_1A
- - - - - - 0x009A98 02:9A88: 00        .byte $00   ; 1B con_obj_jumping_spike
- - - - - - 0x009A99 02:9A89: 00        .byte $00   ; 1C con_obj_fireball
- - - - - - 0x009A9A 02:9A8A: 00        .byte $00   ; 1D con_obj_1D



ofs_000_9A8B_6B:
C - - J - - 0x009A9B 02:9A8B: B5 43     LDA ram_state,X
C - - - - - 0x009A9D 02:9A8D: 30 D6     BMI bra_9A65
C - - - - - 0x009A9F 02:9A8F: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009AA2 02:9A92: A9 03     LDA #$03
C - - - - - 0x009AA4 02:9A94: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x009AA7 02:9A97: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x009AA9 02:9A99: 09 80     ORA #con_004A_80
C - - - - - 0x009AAB 02:9A9B: 95 4A     STA ram_004A_obj,X
C - - - - - 0x009AAD 02:9A9D: B5 BF     LDA ram_obj_id,X
C - - - - - 0x009AAF 02:9A9F: 38        SEC
C - - - - - 0x009AB0 02:9AA0: E9 12     SBC #con_weapon_id
C - - - - - 0x009AB2 02:9AA2: A8        TAY
C - - - - - 0x009AB3 02:9AA3: B9 73 9A  LDA tbl_9A73_weapons_sfx,Y
C - - - - - 0x009AB6 02:9AA6: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x009AB9 02:9AA9: 4C 65 9A  JMP loc_9A65



ofs_000_9AAC_6C:
C - - J - - 0x009ABC 02:9AAC: B5 43     LDA ram_state,X
C - - - - - 0x009ABE 02:9AAE: 30 30     BMI bra_9AE0
C - - - - - 0x009AC0 02:9AB0: B5 BF     LDA ram_obj_id,X
C - - - - - 0x009AC2 02:9AB2: 38        SEC
C - - - - - 0x009AC3 02:9AB3: E9 12     SBC #con_weapon_id
C - - - - - 0x009AC5 02:9AB5: A8        TAY
C - - - - - 0x009AC6 02:9AB6: B9 EF 9A  LDA tbl_9AEF_weapons,Y
C - - - - - 0x009AC9 02:9AB9: F0 03     BEQ bra_9ABE
C - - - - - 0x009ACB 02:9ABB: 95 43     STA ram_state,X
C - - - - - 0x009ACD 02:9ABD: 60        RTS
bra_9ABE:
C - - - - - 0x009ACE 02:9ABE: BD 71 03  LDA ram_0371_obj,X
C - - - - - 0x009AD1 02:9AC1: 10 0C     BPL bra_9ACF
C - - - - - 0x009AD3 02:9AC3: B5 BF     LDA ram_obj_id,X
C - - - - - 0x009AD5 02:9AC5: 38        SEC
C - - - - - 0x009AD6 02:9AC6: E9 12     SBC #con_weapon_id
C - - - - - 0x009AD8 02:9AC8: A8        TAY
C - - - - - 0x009AD9 02:9AC9: B9 E3 9A  LDA tbl_9AE3_weapons,Y
C - - - - - 0x009ADC 02:9ACC: 20 06 C0  JSR sub_0x01C016_play_sound
bra_9ACF:
C - - - - - 0x009ADF 02:9ACF: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009AE2 02:9AD2: A9 01     LDA #$01
C - - - - - 0x009AE4 02:9AD4: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x009AE7 02:9AD7: A9 01     LDA #$01
C - - - - - 0x009AE9 02:9AD9: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x009AEC 02:9ADC: A9 80     LDA #con_004A_80
C - - - - - 0x009AEE 02:9ADE: 95 4A     STA ram_004A_obj,X
bra_9AE0:
C - - - - - 0x009AF0 02:9AE0: 4C 65 9A  JMP loc_9A65



tbl_9AE3_weapons:
- D 0 - - - 0x009AF3 02:9AE3: 21        .byte con_sfx_21   ; 12 con_obj_knife
- - - - - - 0x009AF4 02:9AE4: 21        .byte con_sfx_21   ; 13 con_obj_13
- - - - - - 0x009AF5 02:9AE5: 23        .byte con_sfx_23   ; 14 con_obj_grenade
- - - - - - 0x009AF6 02:9AE6: 2D        .byte con_sfx_2D   ; 15 con_obj_chain_whip
- D 0 - - - 0x009AF7 02:9AE7: 23        .byte con_sfx_23   ; 16 con_obj_flame_grenades
- D 0 - - - 0x009AF8 02:9AE8: 27        .byte con_sfx_27   ; 17 con_obj_baton
- - - - - - 0x009AF9 02:9AE9: 27        .byte con_sfx_27   ; 18 con_obj_18
- - - - - - 0x009AFA 02:9AEA: 23        .byte con_sfx_23   ; 19 con_obj_19
- - - - - - 0x009AFB 02:9AEB: 23        .byte con_sfx_23   ; 1A con_obj_1A
- - - - - - 0x009AFC 02:9AEC: 23        .byte con_sfx_23   ; 1B con_obj_jumping_spike
- - - - - - 0x009AFD 02:9AED: 23        .byte con_sfx_23   ; 1C con_obj_fireball
- - - - - - 0x009AFE 02:9AEE: 23        .byte con_sfx_23   ; 1D con_obj_1D



tbl_9AEF_weapons:
- D 0 - - - 0x009AFF 02:9AEF: 00        .byte $00   ; 12 con_obj_knife
- - - - - - 0x009B00 02:9AF0: 00        .byte $00   ; 13 con_obj_13
- D 0 - - - 0x009B01 02:9AF1: 00        .byte $00   ; 14 con_obj_grenade
- D 0 - - - 0x009B02 02:9AF2: 00        .byte $00   ; 15 con_obj_chain_whip
- D 0 - - - 0x009B03 02:9AF3: 00        .byte $00   ; 16 con_obj_flame_grenades
- D 0 - - - 0x009B04 02:9AF4: 00        .byte $00   ; 17 con_obj_baton
- - - - - - 0x009B05 02:9AF5: 00        .byte $00   ; 18 con_obj_18
- - - - - - 0x009B06 02:9AF6: 7E        .byte con_state_7E   ; 19 con_obj_19
- D 0 - - - 0x009B07 02:9AF7: 75        .byte con_state_75   ; 1A con_obj_1A
- - - - - - 0x009B08 02:9AF8: 00        .byte $00   ; 1B con_obj_jumping_spike
- D 0 - - - 0x009B09 02:9AF9: 7E        .byte con_state_7E   ; 1C con_obj_fireball
- - - - - - 0x009B0A 02:9AFA: 00        .byte $00   ; 1D con_obj_1D



ofs_000_9AFB_6D:
C - - J - - 0x009B0B 02:9AFB: B5 43     LDA ram_state,X
C - - - - - 0x009B0D 02:9AFD: 30 1E     BMI bra_9B1D
C - - - - - 0x009B0F 02:9AFF: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009B12 02:9B02: A9 00     LDA #$00
C - - - - - 0x009B14 02:9B04: 9D 2D 03  STA ram_032D_obj,X
C - - - - - 0x009B17 02:9B07: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x009B1A 02:9B0A: A9 0A     LDA #$0A
C - - - - - 0x009B1C 02:9B0C: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x009B1F 02:9B0F: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x009B21 02:9B11: 09 80     ORA #con_004A_80
C - - - - - 0x009B23 02:9B13: 95 4A     STA ram_004A_obj,X
C - - - - - 0x009B25 02:9B15: A9 20     LDA #con_sfx_knife_fall
C - - - - - 0x009B27 02:9B17: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x009B2A 02:9B1A: 20 5F A0  JSR sub_A05F
bra_9B1D:
C - - - - - 0x009B2D 02:9B1D: 4C 65 9A  JMP loc_9A65



ofs_000_9B20_6E:
C - - J - - 0x009B30 02:9B20: B5 43     LDA ram_state,X
C - - - - - 0x009B32 02:9B22: 30 16     BMI bra_9B3A
C - - - - - 0x009B34 02:9B24: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009B37 02:9B27: A9 05     LDA #$05
C - - - - - 0x009B39 02:9B29: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x009B3C 02:9B2C: A9 07     LDA #$07
C - - - - - 0x009B3E 02:9B2E: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x009B41 02:9B31: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x009B43 02:9B33: 09 80     ORA #con_004A_80
C - - - - - 0x009B45 02:9B35: 95 4A     STA ram_004A_obj,X
C - - - - - 0x009B47 02:9B37: 20 5F A0  JSR sub_A05F
bra_9B3A:
C - - - - - 0x009B4A 02:9B3A: 4C 65 9A  JMP loc_9A65



ofs_000_9B3D_6F:
C - - J - - 0x009B4D 02:9B3D: B5 43     LDA ram_state,X
C - - - - - 0x009B4F 02:9B3F: 30 13     BMI bra_9B54
C - - - - - 0x009B51 02:9B41: B5 BF     LDA ram_obj_id,X
C - - - - - 0x009B53 02:9B43: C9 16     CMP #con_obj_flame_grenades
C - - - - - 0x009B55 02:9B45: D0 05     BNE bra_9B4C
C - - - - - 0x009B57 02:9B47: A9 6C     LDA #con_state_6C
C - - - - - 0x009B59 02:9B49: 95 43     STA ram_state,X
C - - - - - 0x009B5B 02:9B4B: 60        RTS
bra_9B4C:
C - - - - - 0x009B5C 02:9B4C: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009B5F 02:9B4F: A9 22     LDA #con_sfx_22
C - - - - - 0x009B61 02:9B51: 20 06 C0  JSR sub_0x01C016_play_sound
bra_9B54:
C - - - - - 0x009B64 02:9B54: A9 34     LDA #$34
C - - - - - 0x009B66 02:9B56: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x009B69 02:9B59: B5 43     LDA ram_state,X
C - - - - - 0x009B6B 02:9B5B: 29 7F     AND #$7F
C - - - - - 0x009B6D 02:9B5D: C9 7F     CMP #con_state_7F
C - - - - - 0x009B6F 02:9B5F: D0 04     BNE bra_9B65_RTS
C - - - - - 0x009B71 02:9B61: A9 00     LDA #con_003C_00
C - - - - - 0x009B73 02:9B63: 95 3C     STA ram_003C_obj,X ; 0040 0041
bra_9B65_RTS:
C - - - - - 0x009B75 02:9B65: 60        RTS



_off000_9B66_34:
- D 0 - I - 0x009B76 02:9B66: 12        .byte $12   ; 
- D 0 - I - 0x009B77 02:9B67: 13        .byte $13   ; 
- D 0 - I - 0x009B78 02:9B68: 14        .byte $14   ; 
- D 0 - I - 0x009B79 02:9B69: 15        .byte $15   ; 
- D 0 - I - 0x009B7A 02:9B6A: 16        .byte $16   ; 
- D 0 - I - 0x009B7B 02:9B6B: 17        .byte $17   ; 
- D 0 - I - 0x009B7C 02:9B6C: 18        .byte $18   ; 
- D 0 - I - 0x009B7D 02:9B6D: 19        .byte $19   ; 
- D 0 - I - 0x009B7E 02:9B6E: 1A        .byte $1A   ; 
- D 0 - I - 0x009B7F 02:9B6F: FF        .byte $FF   ; 



_off001_9B70_34:
- D 0 - I - 0x009B80 02:9B70: 01        .byte $01   ; 
- D 0 - I - 0x009B81 02:9B71: 01        .byte $01   ; 
- D 0 - I - 0x009B82 02:9B72: 01        .byte $01   ; 
- D 0 - I - 0x009B83 02:9B73: 01        .byte $01   ; 
- D 0 - I - 0x009B84 02:9B74: 01        .byte $01   ; 
- D 0 - I - 0x009B85 02:9B75: 01        .byte $01   ; 
- D 0 - I - 0x009B86 02:9B76: 01        .byte $01   ; 
- D 0 - I - 0x009B87 02:9B77: 01        .byte $01   ; 
- D 0 - I - 0x009B88 02:9B78: 01        .byte $01   ; 



ofs_000_9B79_70:
C - - J - - 0x009B89 02:9B79: B5 43     LDA ram_state,X
C - - - - - 0x009B8B 02:9B7B: 30 11     BMI bra_9B8E
C - - - - - 0x009B8D 02:9B7D: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009B90 02:9B80: A9 0C     LDA #$0C
C - - - - - 0x009B92 02:9B82: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x009B95 02:9B85: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x009B97 02:9B87: 09 80     ORA #con_004A_80
C - - - - - 0x009B99 02:9B89: 95 4A     STA ram_004A_obj,X
C - - - - - 0x009B9B 02:9B8B: 20 5F A0  JSR sub_A05F
bra_9B8E:
C - - - - - 0x009B9E 02:9B8E: A9 35     LDA #$35
C - - - - - 0x009BA0 02:9B90: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x009BA3 02:9B93: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x009BA6 02:9B96: A6 19     LDX ram_0019
C - - - - - 0x009BA8 02:9B98: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x009BAB 02:9B9B: A8        TAY
C - - - - - 0x009BAC 02:9B9C: B9 54 04  LDA ram_0454,Y
C - - - - - 0x009BAF 02:9B9F: A8        TAY
C - - - - - 0x009BB0 02:9BA0: 20 73 A4  JSR sub_A473
C - - - - - 0x009BB3 02:9BA3: 60        RTS



_off000_9BA4_35:
- D 0 - I - 0x009BB4 02:9BA4: 00        .byte $00   ; 
- D 0 - I - 0x009BB5 02:9BA5: 01        .byte $01   ; 
- D 0 - I - 0x009BB6 02:9BA6: FE        .byte $FE   ; 



_off001_9BA7_35:
- D 0 - I - 0x009BB7 02:9BA7: 01        .byte $01   ; 
- D 0 - I - 0x009BB8 02:9BA8: 01        .byte $01   ; 



ofs_000_9BA9_71:
C - - J - - 0x009BB9 02:9BA9: B5 43     LDA ram_state,X
C - - - - - 0x009BBB 02:9BAB: 30 4E     BMI bra_9BFB
C - - - - - 0x009BBD 02:9BAD: 09 80     ORA #$80
C - - - - - 0x009BBF 02:9BAF: 95 43     STA ram_state,X
C - - - - - 0x009BC1 02:9BB1: A9 00     LDA #$00
C - - - - - 0x009BC3 02:9BB3: 9D 1D 03  STA ram_031D_obj,X
C - - - - - 0x009BC6 02:9BB6: 9D 35 03  STA ram_0335_obj,X
C - - - - - 0x009BC9 02:9BB9: 9D 2D 03  STA ram_032D_obj,X
C - - - - - 0x009BCC 02:9BBC: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x009BCE 02:9BBE: 95 5C     STA ram_animation_counter,X
C - - - - - 0x009BD0 02:9BC0: 95 92     STA ram_pos_Y_lo,X
C - - - - - 0x009BD2 02:9BC2: 95 9B     STA ram_pos_Y_hi,X
C - - - - - 0x009BD4 02:9BC4: A9 C0     LDA #$C0
C - - - - - 0x009BD6 02:9BC6: 9D 0F 03  STA ram_030F_obj,X
C - - - - - 0x009BD9 02:9BC9: A9 10     LDA #$10
C - - - - - 0x009BDB 02:9BCB: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x009BDE 02:9BCE: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x009BE1 02:9BD1: A9 3C     LDA #< $003C
C - - - - - 0x009BE3 02:9BD3: 38        SEC
C - - - - - 0x009BE4 02:9BD4: ED F5 00  SBC a: ram_00F5
C - - - - - 0x009BE7 02:9BD7: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x009BE9 02:9BD9: A9 02     LDA #$02
C - - - - - 0x009BEB 02:9BDB: E9 00     SBC #> $003C
C - - - - - 0x009BED 02:9BDD: 95 80     STA ram_pos_X_hi,X
C - - - - - 0x009BEF 02:9BDF: A9 A8     LDA #$A8
C - - - - - 0x009BF1 02:9BE1: 95 AD     STA ram_pos_Z_lo,X
C - - - - - 0x009BF3 02:9BE3: A9 01     LDA #$01
C - - - - - 0x009BF5 02:9BE5: 95 B6     STA ram_pos_Z_hi,X
C - - - - - 0x009BF7 02:9BE7: A9 80     LDA #$80
C - - - - - 0x009BF9 02:9BE9: 9D 63 00  STA a: ram_0063_obj,X
C - - - - - 0x009BFC 02:9BEC: A9 3C     LDA #con_sfx_3C
C - - - - - 0x009BFE 02:9BEE: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x009C01 02:9BF1: A9 02     LDA #$02
C - - - - - 0x009C03 02:9BF3: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x009C06 02:9BF6: A9 00     LDA #con_004A_00
C - - - - - 0x009C08 02:9BF8: 9D 4A 00  STA a: ram_004A_obj,X
bra_9BFB:
C - - - - - 0x009C0B 02:9BFB: A9 36     LDA #$36
C - - - - - 0x009C0D 02:9BFD: 4C D2 9F  JMP loc_9FD2



_off000_9C00_36:
- D 0 - I - 0x009C10 02:9C00: 00        .byte $00   ; 
- D 0 - I - 0x009C11 02:9C01: 01        .byte $01   ; 
- D 0 - I - 0x009C12 02:9C02: FE        .byte $FE   ; 



_off001_9C03_36:
- D 0 - I - 0x009C13 02:9C03: 02        .byte $02   ; 
- D 0 - I - 0x009C14 02:9C04: 02        .byte $02   ; 



ofs_000_9C05_72:
C - - J - - 0x009C15 02:9C05: B5 43     LDA ram_state,X
C - - - - - 0x009C17 02:9C07: 30 1C     BMI bra_9C25
C - - - - - 0x009C19 02:9C09: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
; bzk optimize, LDA 80, delete ORA at 0x009C31
C - - - - - 0x009C1C 02:9C0C: A9 00     LDA #con_004A_00
C - - - - - 0x009C1E 02:9C0E: 95 4A     STA ram_004A_obj,X
C - - - - - 0x009C20 02:9C10: A9 A0     LDA #$A0
C - - - - - 0x009C22 02:9C12: 9D 2D 03  STA ram_032D_obj,X
C - - - - - 0x009C25 02:9C15: A9 00     LDA #$00
C - - - - - 0x009C27 02:9C17: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x009C2A 02:9C1A: A9 02     LDA #$02
C - - - - - 0x009C2C 02:9C1C: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x009C2F 02:9C1F: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x009C31 02:9C21: 09 80     ORA #con_004A_80
C - - - - - 0x009C33 02:9C23: 95 4A     STA ram_004A_obj,X
bra_9C25:
C - - - - - 0x009C35 02:9C25: A9 37     LDA #$37
C - - - - - 0x009C37 02:9C27: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x009C3A 02:9C2A: 20 10 9E  JSR sub_9E10
C - - - - - 0x009C3D 02:9C2D: 60        RTS



_off000_9C2E_37:
- D 0 - I - 0x009C3E 02:9C2E: 00        .byte $00   ; 
- D 0 - I - 0x009C3F 02:9C2F: 01        .byte $01   ; 
- D 0 - I - 0x009C40 02:9C30: FE        .byte $FE   ; 



_off001_9C31_37:
- D 0 - I - 0x009C41 02:9C31: 02        .byte $02   ; 
- D 0 - I - 0x009C42 02:9C32: 02        .byte $02   ; 



ofs_000_9C33_73:
C - - J - - 0x009C43 02:9C33: B5 43     LDA ram_state,X
C - - - - - 0x009C45 02:9C35: 30 15     BMI bra_9C4C
C - - - - - 0x009C47 02:9C37: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009C4A 02:9C3A: A9 4E     LDA #con_sfx_tractor
C - - - - - 0x009C4C 02:9C3C: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x009C4F 02:9C3F: A9 70     LDA #$70
C - - - - - 0x009C51 02:9C41: 95 92     STA ram_pos_Y_lo,X
C - - - - - 0x009C53 02:9C43: A9 00     LDA #$00
C - - - - - 0x009C55 02:9C45: 95 9B     STA ram_pos_Y_hi,X
C - - - - - 0x009C57 02:9C47: A9 02     LDA #$02
C - - - - - 0x009C59 02:9C49: 9D 4A 04  STA ram_044A_obj,X
bra_9C4C:
C - - - - - 0x009C5C 02:9C4C: 8A        TXA
C - - - - - 0x009C5D 02:9C4D: 0A        ASL
C - - - - - 0x009C5E 02:9C4E: A8        TAY
C - - - - - 0x009C5F 02:9C4F: B9 6C 9C  LDA tbl_9C74 - $08,Y
C - - - - - 0x009C62 02:9C52: 95 AD     STA ram_pos_Z_lo,X
C - - - - - 0x009C64 02:9C54: B9 6D 9C  LDA tbl_9C74 - $07,Y
C - - - - - 0x009C67 02:9C57: 95 B6     STA ram_pos_Z_hi,X
C - - - - - 0x009C69 02:9C59: BD 76 9C  LDA tbl_9C7A - $04,X
C - - - - - 0x009C6C 02:9C5C: 38        SEC
C - - - - - 0x009C6D 02:9C5D: ED F5 00  SBC a: ram_00F5
C - - - - - 0x009C70 02:9C60: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x009C72 02:9C62: A9 04     LDA #$04
C - - - - - 0x009C74 02:9C64: E9 00     SBC #$00
C - - - - - 0x009C76 02:9C66: 95 80     STA ram_pos_X_hi,X
C - - - - - 0x009C78 02:9C68: A9 38     LDA #$38
C - - - - - 0x009C7A 02:9C6A: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x009C7D 02:9C6D: B5 C7     LDA ram_animation_id,X
C - - - - - 0x009C7F 02:9C6F: 29 7F     AND #$7F
C - - - - - 0x009C81 02:9C71: 95 C7     STA ram_animation_id,X
C - - - - - 0x009C83 02:9C73: 60        RTS



tbl_9C74:
; 04
- D 0 - - - 0x009C84 02:9C74: F8        .byte $F8   ; 
- D 0 - - - 0x009C85 02:9C75: 00        .byte $00   ; 
; 05
- D 0 - - - 0x009C86 02:9C76: 08        .byte $08   ; 
- D 0 - - - 0x009C87 02:9C77: 01        .byte $01   ; 
; 06
- D 0 - - - 0x009C88 02:9C78: 18        .byte $18   ; 
- D 0 - - - 0x009C89 02:9C79: 01        .byte $01   ; 



tbl_9C7A:
- D 0 - - - 0x009C8A 02:9C7A: A0        .byte $A0   ; 04
- D 0 - - - 0x009C8B 02:9C7B: 80        .byte $80   ; 05
- D 0 - - - 0x009C8C 02:9C7C: 70        .byte $70   ; 06



_off000_9C7D_38:
- D 0 - I - 0x009C8D 02:9C7D: 00        .byte $00   ; 
- D 0 - I - 0x009C8E 02:9C7E: 01        .byte $01   ; 
- D 0 - I - 0x009C8F 02:9C7F: 02        .byte $02   ; 
- D 0 - I - 0x009C90 02:9C80: 03        .byte $03   ; 
- D 0 - I - 0x009C91 02:9C81: 04        .byte $04   ; 
- D 0 - I - 0x009C92 02:9C82: 05        .byte $05   ; 
- D 0 - I - 0x009C93 02:9C83: 06        .byte $06   ; 
- D 0 - I - 0x009C94 02:9C84: 07        .byte $07   ; 
- D 0 - I - 0x009C95 02:9C85: 08        .byte $08   ; 
- D 0 - I - 0x009C96 02:9C86: 09        .byte $09   ; 
- D 0 - I - 0x009C97 02:9C87: FF        .byte $FF   ; 



_off001_9C88_38:
- D 0 - I - 0x009C98 02:9C88: 03        .byte $03   ; 
- D 0 - I - 0x009C99 02:9C89: 03        .byte $03   ; 
- D 0 - I - 0x009C9A 02:9C8A: 03        .byte $03   ; 
- D 0 - I - 0x009C9B 02:9C8B: 03        .byte $03   ; 
- D 0 - I - 0x009C9C 02:9C8C: 03        .byte $03   ; 
- D 0 - I - 0x009C9D 02:9C8D: 03        .byte $03   ; 
- D 0 - I - 0x009C9E 02:9C8E: 03        .byte $03   ; 
- D 0 - I - 0x009C9F 02:9C8F: 03        .byte $03   ; 
- D 0 - I - 0x009CA0 02:9C90: 03        .byte $03   ; 
- D 0 - I - 0x009CA1 02:9C91: 03        .byte $03   ; 



ofs_000_9C92_74:
C - - J - - 0x009CA2 02:9C92: B5 43     LDA ram_state,X
C - - - - - 0x009CA4 02:9C94: 30 29     BMI bra_9CBF
C - - - - - 0x009CA6 02:9C96: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009CA9 02:9C99: A9 10     LDA #$10
C - - - - - 0x009CAB 02:9C9B: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x009CAE 02:9C9E: A9 80     LDA #$80
C - - - - - 0x009CB0 02:9CA0: 9D 2D 03  STA ram_032D_obj,X
C - - - - - 0x009CB3 02:9CA3: A9 00     LDA #$00
C - - - - - 0x009CB5 02:9CA5: 9D 63 00  STA a: ram_0063_obj,X
C - - - - - 0x009CB8 02:9CA8: BD 0F 03  LDA ram_030F_obj,X
C - - - - - 0x009CBB 02:9CAB: C9 80     CMP #$80
C - - - - - 0x009CBD 02:9CAD: 90 10     BCC bra_9CBF
C - - - - - 0x009CBF 02:9CAF: A9 80     LDA #$80
C - - - - - 0x009CC1 02:9CB1: 9D 63 00  STA a: ram_0063_obj,X
C - - - - - 0x009CC4 02:9CB4: A9 2E     LDA #con_sfx_2E
C - - - - - 0x009CC6 02:9CB6: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x009CC9 02:9CB9: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x009CCB 02:9CBB: 09 80     ORA #con_004A_80
C - - - - - 0x009CCD 02:9CBD: 95 4A     STA ram_004A_obj,X
bra_9CBF:
C - - - - - 0x009CCF 02:9CBF: A9 39     LDA #$39
C - - - - - 0x009CD1 02:9CC1: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x009CD4 02:9CC4: BD 1D 03  LDA ram_031D_obj,X
C - - - - - 0x009CD7 02:9CC7: 38        SEC
C - - - - - 0x009CD8 02:9CC8: FD 2D 03  SBC ram_032D_obj,X
C - - - - - 0x009CDB 02:9CCB: 9D 1D 03  STA ram_031D_obj,X
C - - - - - 0x009CDE 02:9CCE: BD 25 03  LDA ram_0325_obj,X
C - - - - - 0x009CE1 02:9CD1: FD 35 03  SBC ram_0335_obj,X
C - - - - - 0x009CE4 02:9CD4: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x009CE7 02:9CD7: 10 16     BPL bra_9CEF
C - - - - - 0x009CE9 02:9CD9: 48        PHA
C - - - - - 0x009CEA 02:9CDA: A9 40     LDA #$40
C - - - - - 0x009CEC 02:9CDC: 9D 0F 03  STA ram_030F_obj,X
C - - - - - 0x009CEF 02:9CDF: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x009CF2 02:9CE2: 30 05     BMI bra_9CE9
C - - - - - 0x009CF4 02:9CE4: A9 C0     LDA #$C0
C - - - - - 0x009CF6 02:9CE6: 9D 0F 03  STA ram_030F_obj,X
bra_9CE9:
C - - - - - 0x009CF9 02:9CE9: 68        PLA
C - - - - - 0x009CFA 02:9CEA: 49 FF     EOR #$FF
C - - - - - 0x009CFC 02:9CEC: 18        CLC
C - - - - - 0x009CFD 02:9CED: 69 01     ADC #$01
bra_9CEF:
C - - - - - 0x009CFF 02:9CEF: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x009D02 02:9CF2: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x009D05 02:9CF5: 60        RTS



_off000_9CF6_39:
- D 0 - I - 0x009D06 02:9CF6: 00        .byte $00   ; 
- D 0 - I - 0x009D07 02:9CF7: 01        .byte $01   ; 
- D 0 - I - 0x009D08 02:9CF8: 02        .byte $02   ; 
- D 0 - I - 0x009D09 02:9CF9: 03        .byte $03   ; 
- D 0 - I - 0x009D0A 02:9CFA: FE        .byte $FE   ; 



_off001_9CFB_39:
- D 0 - I - 0x009D0B 02:9CFB: 00        .byte $00   ; 
- D 0 - I - 0x009D0C 02:9CFC: 00        .byte $00   ; 
- D 0 - I - 0x009D0D 02:9CFD: 00        .byte $00   ; 
- D 0 - I - 0x009D0E 02:9CFE: 00        .byte $00   ; 



ofs_000_9CFF_75:
C - - J - - 0x009D0F 02:9CFF: B5 43     LDA ram_state,X
C - - - - - 0x009D11 02:9D01: 30 08     BMI bra_9D0B
C - - - - - 0x009D13 02:9D03: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009D16 02:9D06: A9 23     LDA #con_sfx_23
C - - - - - 0x009D18 02:9D08: 20 06 C0  JSR sub_0x01C016_play_sound
bra_9D0B:
C - - - - - 0x009D1B 02:9D0B: A9 3A     LDA #$3A
C - - - - - 0x009D1D 02:9D0D: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x009D20 02:9D10: B5 43     LDA ram_state,X
C - - - - - 0x009D22 02:9D12: 29 7F     AND #$7F
C - - - - - 0x009D24 02:9D14: D0 04     BNE bra_9D1A_RTS    ; if not con_state_00
- - - - - - 0x009D26 02:9D16: A9 00     LDA #con_004A_00
- - - - - - 0x009D28 02:9D18: 95 4A     STA ram_004A_obj,X
bra_9D1A_RTS:
C - - - - - 0x009D2A 02:9D1A: 60        RTS



_off000_9D1B_3A:
- D 0 - I - 0x009D2B 02:9D1B: 04        .byte $04   ; 
- D 0 - I - 0x009D2C 02:9D1C: 05        .byte $05   ; 
- D 0 - I - 0x009D2D 02:9D1D: FF        .byte $FF   ; 



_off001_9D1E_3A:
- D 0 - I - 0x009D2E 02:9D1E: 02        .byte $02   ; 
- D 0 - I - 0x009D2F 02:9D1F: 02        .byte $02   ; 



ofs_000_9D20_76:
C - - J - - 0x009D30 02:9D20: B5 43     LDA ram_state,X
C - - - - - 0x009D32 02:9D22: 30 11     BMI bra_9D35
C - - - - - 0x009D34 02:9D24: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009D37 02:9D27: A9 08     LDA #$08
C - - - - - 0x009D39 02:9D29: 95 C7     STA ram_animation_id,X
C - - - - - 0x009D3B 02:9D2B: A9 04     LDA #$04
C - - - - - 0x009D3D 02:9D2D: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x009D3F 02:9D2F: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x009D41 02:9D31: 29 7F     AND #con_004A_80 ^ $FF
C - - - - - 0x009D43 02:9D33: 95 4A     STA ram_004A_obj,X
bra_9D35:
C - - - - - 0x009D45 02:9D35: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x009D47 02:9D37: D0 04     BNE bra_9D3D_RTS
C - - - - - 0x009D49 02:9D39: A9 7E     LDA #con_state_7E
C - - - - - 0x009D4B 02:9D3B: 95 43     STA ram_state,X
bra_9D3D_RTS:
C - - - - - 0x009D4D 02:9D3D: 60        RTS



ofs_000_9D3E_77:
C - - J - - 0x009D4E 02:9D3E: B5 43     LDA ram_state,X
C - - - - - 0x009D50 02:9D40: 30 13     BMI bra_9D55
C - - - - - 0x009D52 02:9D42: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009D55 02:9D45: A9 10     LDA #$10
C - - - - - 0x009D57 02:9D47: 9D 16 03  STA ram_0316_obj,X
C - - - - - 0x009D5A 02:9D4A: A9 04     LDA #$04
C - - - - - 0x009D5C 02:9D4C: 95 C7     STA ram_animation_id,X
C - - - - - 0x009D5E 02:9D4E: A9 80     LDA #con_004A_80
C - - - - - 0x009D60 02:9D50: 95 4A     STA ram_004A_obj,X
C - - - - - 0x009D62 02:9D52: 20 5F A0  JSR sub_A05F
bra_9D55:
C - - - - - 0x009D65 02:9D55: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x009D68 02:9D58: 60        RTS



ofs_000_9D59_78:
C - - J - - 0x009D69 02:9D59: B5 43     LDA ram_state,X
C - - - - - 0x009D6B 02:9D5B: 30 11     BMI bra_9D6E
C - - - - - 0x009D6D 02:9D5D: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
C - - - - - 0x009D70 02:9D60: A9 00     LDA #$00
C - - - - - 0x009D72 02:9D62: 9D 2D 03  STA ram_032D_obj,X
C - - - - - 0x009D75 02:9D65: A9 FA     LDA #$FA
C - - - - - 0x009D77 02:9D67: 9D 25 03  STA ram_0325_obj,X
C - - - - - 0x009D7A 02:9D6A: A9 80     LDA #con_004A_80
C - - - - - 0x009D7C 02:9D6C: 95 4A     STA ram_004A_obj,X
bra_9D6E:
C - - - - - 0x009D7E 02:9D6E: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x009D81 02:9D71: A8        TAY
C - - - - - 0x009D82 02:9D72: B9 54 04  LDA ram_0454,Y
C - - - - - 0x009D85 02:9D75: A8        TAY
C - - - - - 0x009D86 02:9D76: B9 77 00  LDA a: ram_pos_X_lo,Y
C - - - - - 0x009D89 02:9D79: F5 77     SBC ram_pos_X_lo,X
C - - - - - 0x009D8B 02:9D7B: B9 80 00  LDA a: ram_pos_X_hi,Y
C - - - - - 0x009D8E 02:9D7E: F5 80     SBC ram_pos_X_hi,X
C - - - - - 0x009D90 02:9D80: F0 1F     BEQ bra_9DA1
C - - - - - 0x009D92 02:9D82: 90 10     BCC bra_9D94
- - - - - - 0x009D94 02:9D84: 18        CLC
- - - - - - 0x009D95 02:9D85: A9 04     LDA #$04
- - - - - - 0x009D97 02:9D87: 75 77     ADC ram_pos_X_lo,X
- - - - - - 0x009D99 02:9D89: 95 77     STA ram_pos_X_lo,X
- - - - - - 0x009D9B 02:9D8B: A9 00     LDA #$00
- - - - - - 0x009D9D 02:9D8D: 75 80     ADC ram_pos_X_hi,X
- - - - - - 0x009D9F 02:9D8F: 95 80     STA ram_pos_X_hi,X
- - - - - - 0x009DA1 02:9D91: 4C A1 9D  JMP loc_9DA1
bra_9D94:
C - - - - - 0x009DA4 02:9D94: 38        SEC
C - - - - - 0x009DA5 02:9D95: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x009DA7 02:9D97: E9 04     SBC #< $0004
C - - - - - 0x009DA9 02:9D99: 95 77     STA ram_pos_X_lo,X
C - - - - - 0x009DAB 02:9D9B: B5 80     LDA ram_pos_X_hi,X
C - - - - - 0x009DAD 02:9D9D: E9 00     SBC #> $0004
C - - - - - 0x009DAF 02:9D9F: 95 80     STA ram_pos_X_hi,X
bra_9DA1:
loc_9DA1:
C - - - - - 0x009DB1 02:9DA1: 20 73 A4  JSR sub_A473
C - - - - - 0x009DB4 02:9DA4: A9 3F     LDA #$3F
C - - - - - 0x009DB6 02:9DA6: 4C D2 9F  JMP loc_9FD2



_off000_9DA9_3F:
- D 0 - I - 0x009DB9 02:9DA9: 03        .byte $03   ; 
- D 0 - I - 0x009DBA 02:9DAA: 04        .byte $04   ; 
- D 0 - I - 0x009DBB 02:9DAB: FE        .byte $FE   ; 



_off001_9DAC_3F:
- D 0 - I - 0x009DBC 02:9DAC: 00        .byte $00   ; 
- D 0 - I - 0x009DBD 02:9DAD: 00        .byte $00   ; 



ofs_000_9DAE_79_RTS:
ofs_000_9DAE_7A_RTS:
ofs_000_9DAE_7B_RTS:
ofs_000_9DAE_7C_RTS:
- - - - - - 0x009DBE 02:9DAE: 60        RTS



ofs_000_9DAF_7D:
- - - - - - 0x009DBF 02:9DAF: B5 43     LDA ram_state,X
- - - - - - 0x009DC1 02:9DB1: 30 0E     BMI bra_9DC1
- - - - - - 0x009DC3 02:9DB3: 20 39 A0  JSR sub_A039_acknowledge_current_state_and_clear_stuff
- - - - - - 0x009DC6 02:9DB6: A9 09     LDA #$09
- - - - - - 0x009DC8 02:9DB8: 9D 16 03  STA ram_0316_obj,X
- - - - - - 0x009DCB 02:9DBB: B5 4A     LDA ram_004A_obj,X
- - - - - - 0x009DCD 02:9DBD: 09 80     ORA #con_004A_80
- - - - - - 0x009DCF 02:9DBF: 95 4A     STA ram_004A_obj,X
bra_9DC1:
- - - - - - 0x009DD1 02:9DC1: 20 4B 9E  JSR sub_9E4B
- - - - - - 0x009DD4 02:9DC4: 20 10 9E  JSR sub_9E10
- - - - - - 0x009DD7 02:9DC7: 60        RTS



ofs_000_9DC8_7E:
C - - J - - 0x009DD8 02:9DC8: A9 00     LDA #$00    ; con_003C_00    con_004A_00
C - - - - - 0x009DDA 02:9DCA: 95 3C     STA ram_003C_obj,X ; 0040 0041 0042
C - - - - - 0x009DDC 02:9DCC: 95 4A     STA ram_004A_obj,X
ofs_000_9DCE_7F:
C - - J - - 0x009DDE 02:9DCE: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x009DE0 02:9DD0: 29 7F     AND #con_004A_80 ^ $FF
C - - - - - 0x009DE2 02:9DD2: 95 4A     STA ram_004A_obj,X
C - - - - - 0x009DE4 02:9DD4: A9 7F     LDA #$7F
C - - - - - 0x009DE6 02:9DD6: 95 C7     STA ram_animation_id,X
C - - - - - 0x009DE8 02:9DD8: 60        RTS



sub_9DD9_increase_pos_Z:
; A = how much to add
C - - - - - 0x009DE9 02:9DD9: 18        CLC
C - - - - - 0x009DEA 02:9DDA: 75 AD     ADC ram_pos_Z_lo,X
C - - - - - 0x009DEC 02:9DDC: 95 AD     STA ram_pos_Z_lo,X
C - - - - - 0x009DEE 02:9DDE: B5 B6     LDA ram_pos_Z_hi,X
C - - - - - 0x009DF0 02:9DE0: 69 00     ADC #$00
C - - - - - 0x009DF2 02:9DE2: 95 B6     STA ram_pos_Z_hi,X
C - - - - - 0x009DF4 02:9DE4: 60        RTS



sub_9DE5:
C - - - - - 0x009DF5 02:9DE5: A4 19     LDY ram_0019
C - - - - - 0x009DF7 02:9DE7: A9 00     LDA #$00
C - - - - - 0x009DF9 02:9DE9: 99 63 00  STA a: ram_0063_obj,Y
C - - - - - 0x009DFC 02:9DEC: B9 0F 03  LDA ram_030F_obj,Y
C - - - - - 0x009DFF 02:9DEF: C9 80     CMP #$80
C - - - - - 0x009E01 02:9DF1: 90 05     BCC bra_9DF8
C - - - - - 0x009E03 02:9DF3: A9 80     LDA #$80
C - - - - - 0x009E05 02:9DF5: 99 63 00  STA a: ram_0063_obj,Y
bra_9DF8:
sub_9DF8:
C - - - - - 0x009E08 02:9DF8: A4 19     LDY ram_0019
C - - - - - 0x009E0A 02:9DFA: B9 C7 00  LDA a: ram_animation_id,Y
C - - - - - 0x009E0D 02:9DFD: 29 7F     AND #$7F
C - - - - - 0x009E0F 02:9DFF: 99 C7 00  STA a: ram_animation_id,Y
C - - - - - 0x009E12 02:9E02: B9 63 00  LDA a: ram_0063_obj,Y
C - - - - - 0x009E15 02:9E05: 29 80     AND #$80
C - - - - - 0x009E17 02:9E07: 49 80     EOR #$80
C - - - - - 0x009E19 02:9E09: 19 C7 00  ORA a: ram_animation_id,Y
C - - - - - 0x009E1C 02:9E0C: 99 C7 00  STA a: ram_animation_id,Y
C - - - - - 0x009E1F 02:9E0F: 60        RTS



sub_9E10:
C - - - - - 0x009E20 02:9E10: A4 19     LDY ram_0019
C - - - - - 0x009E22 02:9E12: B9 1D 03  LDA ram_031D_obj,Y
C - - - - - 0x009E25 02:9E15: 18        CLC
C - - - - - 0x009E26 02:9E16: 79 A4 00  ADC a: ram_00A4_obj,Y
C - - - - - 0x009E29 02:9E19: 99 A4 00  STA a: ram_00A4_obj,Y
C - - - - - 0x009E2C 02:9E1C: B9 25 03  LDA ram_0325_obj,Y
C - - - - - 0x009E2F 02:9E1F: 08        PHP
C - - - - - 0x009E30 02:9E20: 79 AD 00  ADC a: ram_pos_Z_lo,Y
C - - - - - 0x009E33 02:9E23: 99 AD 00  STA a: ram_pos_Z_lo,Y
C - - - - - 0x009E36 02:9E26: B9 B6 00  LDA a: ram_pos_Z_hi,Y
C - - - - - 0x009E39 02:9E29: 69 00     ADC #$00
C - - - - - 0x009E3B 02:9E2B: 99 B6 00  STA a: ram_pos_Z_hi,Y
C - - - - - 0x009E3E 02:9E2E: 28        PLP
C - - - - - 0x009E3F 02:9E2F: 10 06     BPL bra_9E37
C - - - - - 0x009E41 02:9E31: 18        CLC
C - - - - - 0x009E42 02:9E32: 69 FF     ADC #$FF
C - - - - - 0x009E44 02:9E34: 99 B6 00  STA a: ram_pos_Z_hi,Y
bra_9E37:
C - - - - - 0x009E47 02:9E37: B9 1D 03  LDA ram_031D_obj,Y
C - - - - - 0x009E4A 02:9E3A: 38        SEC
C - - - - - 0x009E4B 02:9E3B: F9 2D 03  SBC ram_032D_obj,Y
C - - - - - 0x009E4E 02:9E3E: 99 1D 03  STA ram_031D_obj,Y
C - - - - - 0x009E51 02:9E41: B9 25 03  LDA ram_0325_obj,Y
C - - - - - 0x009E54 02:9E44: F9 35 03  SBC ram_0335_obj,Y
C - - - - - 0x009E57 02:9E47: 99 25 03  STA ram_0325_obj,Y
C - - - - - 0x009E5A 02:9E4A: 60        RTS



sub_9E4B:
C - - - - - 0x009E5B 02:9E4B: A4 19     LDY ram_0019
C - - - - - 0x009E5D 02:9E4D: B9 16 03  LDA ram_0316_obj,Y
C - - - - - 0x009E60 02:9E50: D0 01     BNE bra_9E53
C - - - - - 0x009E62 02:9E52: 60        RTS
bra_9E53:
C - - - - - 0x009E63 02:9E53: B9 0F 03  LDA ram_030F_obj,Y
C - - - - - 0x009E66 02:9E56: 29 3F     AND #$3F
C - - - - - 0x009E68 02:9E58: AA        TAX
C - - - - - 0x009E69 02:9E59: 86 1B     STX ram_001B
C - - - - - 0x009E6B 02:9E5B: BD 02 9F  LDA tbl_9F02,X
C - - - - - 0x009E6E 02:9E5E: 85 1A     STA ram_001A
C - - - - - 0x009E70 02:9E60: A9 40     LDA #$40
C - - - - - 0x009E72 02:9E62: 38        SEC
C - - - - - 0x009E73 02:9E63: E5 1B     SBC ram_001B
C - - - - - 0x009E75 02:9E65: AA        TAX
C - - - - - 0x009E76 02:9E66: BD 02 9F  LDA tbl_9F02,X
C - - - - - 0x009E79 02:9E69: 85 1B     STA ram_001B
C - - - - - 0x009E7B 02:9E6B: B9 0F 03  LDA ram_030F_obj,Y
C - - - - - 0x009E7E 02:9E6E: 29 40     AND #$40
C - - - - - 0x009E80 02:9E70: D0 08     BNE bra_9E7A
C - - - - - 0x009E82 02:9E72: A5 1A     LDA ram_001A
C - - - - - 0x009E84 02:9E74: A6 1B     LDX ram_001B
C - - - - - 0x009E86 02:9E76: 85 1B     STA ram_001B
C - - - - - 0x009E88 02:9E78: 86 1A     STX ram_001A
bra_9E7A:
C - - - - - 0x009E8A 02:9E7A: B9 16 03  LDA ram_0316_obj,Y
C - - - - - 0x009E8D 02:9E7D: 85 29     STA ram_0029
C - - - - - 0x009E8F 02:9E7F: 85 2D     STA ram_002D
C - - - - - 0x009E91 02:9E81: A9 00     LDA #$00
C - - - - - 0x009E93 02:9E83: 85 2A     STA ram_002A
C - - - - - 0x009E95 02:9E85: 85 2B     STA ram_002B
C - - - - - 0x009E97 02:9E87: 85 2C     STA ram_002C
C - - - - - 0x009E99 02:9E89: 85 2E     STA ram_002E
C - - - - - 0x009E9B 02:9E8B: 85 2F     STA ram_002F
C - - - - - 0x009E9D 02:9E8D: 85 30     STA ram_0030
C - - - - - 0x009E9F 02:9E8F: A2 08     LDX #$08
bra_9E91_loop:
C - - - - - 0x009EA1 02:9E91: 46 1A     LSR ram_001A
C - - - - - 0x009EA3 02:9E93: 90 0D     BCC bra_9EA2
C - - - - - 0x009EA5 02:9E95: A5 29     LDA ram_0029
C - - - - - 0x009EA7 02:9E97: 18        CLC
C - - - - - 0x009EA8 02:9E98: 65 2B     ADC ram_002B
C - - - - - 0x009EAA 02:9E9A: 85 2B     STA ram_002B
C - - - - - 0x009EAC 02:9E9C: A5 2A     LDA ram_002A
C - - - - - 0x009EAE 02:9E9E: 65 2C     ADC ram_002C
C - - - - - 0x009EB0 02:9EA0: 85 2C     STA ram_002C
bra_9EA2:
C - - - - - 0x009EB2 02:9EA2: 06 29     ASL ram_0029
C - - - - - 0x009EB4 02:9EA4: 26 2A     ROL ram_002A
C - - - - - 0x009EB6 02:9EA6: 46 1B     LSR ram_001B
C - - - - - 0x009EB8 02:9EA8: 90 0D     BCC bra_9EB7
C - - - - - 0x009EBA 02:9EAA: A5 2D     LDA ram_002D
C - - - - - 0x009EBC 02:9EAC: 18        CLC
C - - - - - 0x009EBD 02:9EAD: 65 2F     ADC ram_002F
C - - - - - 0x009EBF 02:9EAF: 85 2F     STA ram_002F
C - - - - - 0x009EC1 02:9EB1: A5 2E     LDA ram_002E
C - - - - - 0x009EC3 02:9EB3: 65 30     ADC ram_0030
C - - - - - 0x009EC5 02:9EB5: 85 30     STA ram_0030
bra_9EB7:
C - - - - - 0x009EC7 02:9EB7: 06 2D     ASL ram_002D
C - - - - - 0x009EC9 02:9EB9: 26 2E     ROL ram_002E
C - - - - - 0x009ECB 02:9EBB: CA        DEX
C - - - - - 0x009ECC 02:9EBC: D0 D3     BNE bra_9E91_loop
C - - - - - 0x009ECE 02:9EBE: 46 30     LSR ram_0030
C - - - - - 0x009ED0 02:9EC0: 66 2F     ROR ram_002F
C - - - - - 0x009ED2 02:9EC2: 46 2C     LSR ram_002C
C - - - - - 0x009ED4 02:9EC4: 66 2B     ROR ram_002B
C - - - - - 0x009ED6 02:9EC6: B9 0F 03  LDA ram_030F_obj,Y
C - - - - - 0x009ED9 02:9EC9: 4A        LSR
C - - - - - 0x009EDA 02:9ECA: 4A        LSR
C - - - - - 0x009EDB 02:9ECB: 4A        LSR
C - - - - - 0x009EDC 02:9ECC: 4A        LSR
C - - - - - 0x009EDD 02:9ECD: 4A        LSR
C - - - - - 0x009EDE 02:9ECE: 29 0E     AND #$0E
C - - - - - 0x009EE0 02:9ED0: AA        TAX
C - - - - - 0x009EE1 02:9ED1: BD FA 9E  LDA tbl_9EFA,X
C - - - - - 0x009EE4 02:9ED4: 85 29     STA ram_0029
C - - - - - 0x009EE6 02:9ED6: BD FB 9E  LDA tbl_9EFA + $01,X
C - - - - - 0x009EE9 02:9ED9: 85 2A     STA ram_002A
C - - - - - 0x009EEB 02:9EDB: 6C 29 00  JMP (ram_0029)



ofs_001_9EDE_00:
C - - J - - 0x009EEE 02:9EDE: 20 43 9F  JSR sub_9F43
C - - - - - 0x009EF1 02:9EE1: 20 5D 9F  JSR sub_9F5D
C - - - - - 0x009EF4 02:9EE4: 60        RTS



ofs_001_9EE5_01:
C - - J - - 0x009EF5 02:9EE5: 20 43 9F  JSR sub_9F43
C - - - - - 0x009EF8 02:9EE8: 20 91 9F  JSR sub_9F91
C - - - - - 0x009EFB 02:9EEB: 60        RTS



ofs_001_9EEC_02:
C - - J - - 0x009EFC 02:9EEC: 20 77 9F  JSR sub_9F77
C - - - - - 0x009EFF 02:9EEF: 20 91 9F  JSR sub_9F91
C - - - - - 0x009F02 02:9EF2: 60        RTS



ofs_001_9EF3_03:
C - - J - - 0x009F03 02:9EF3: 20 77 9F  JSR sub_9F77
C - - - - - 0x009F06 02:9EF6: 20 5D 9F  JSR sub_9F5D
C - - - - - 0x009F09 02:9EF9: 60        RTS



tbl_9EFA:
- D 0 - - - 0x009F0A 02:9EFA: DE 9E     .word ofs_001_9EDE_00
- D 0 - - - 0x009F0C 02:9EFC: E5 9E     .word ofs_001_9EE5_01
- D 0 - - - 0x009F0E 02:9EFE: EC 9E     .word ofs_001_9EEC_02
- D 0 - - - 0x009F10 02:9F00: F3 9E     .word ofs_001_9EF3_03



tbl_9F02:
- D 0 - - - 0x009F12 02:9F02: 00        .byte $00   ; 00
- - - - - - 0x009F13 02:9F03: 07        .byte $07   ; 01
- - - - - - 0x009F14 02:9F04: 0D        .byte $0D   ; 02
- - - - - - 0x009F15 02:9F05: 13        .byte $13   ; 03
- - - - - - 0x009F16 02:9F06: 19        .byte $19   ; 04
- - - - - - 0x009F17 02:9F07: 20        .byte $20   ; 05
- - - - - - 0x009F18 02:9F08: 25        .byte $25   ; 06
- - - - - - 0x009F19 02:9F09: 2B        .byte $2B   ; 07
- - - - - - 0x009F1A 02:9F0A: 32        .byte $32   ; 08
- - - - - - 0x009F1B 02:9F0B: 38        .byte $38   ; 09
- - - - - - 0x009F1C 02:9F0C: 3E        .byte $3E   ; 0A
- - - - - - 0x009F1D 02:9F0D: 44        .byte $44   ; 0B
- - - - - - 0x009F1E 02:9F0E: 4A        .byte $4A   ; 0C
- - - - - - 0x009F1F 02:9F0F: 50        .byte $50   ; 0D
- - - - - - 0x009F20 02:9F10: 56        .byte $56   ; 0E
- - - - - - 0x009F21 02:9F11: 5C        .byte $5C   ; 0F
- D 0 - - - 0x009F22 02:9F12: 62        .byte $62   ; 10
- - - - - - 0x009F23 02:9F13: 67        .byte $67   ; 11
- - - - - - 0x009F24 02:9F14: 6D        .byte $6D   ; 12
- - - - - - 0x009F25 02:9F15: 73        .byte $73   ; 13
- - - - - - 0x009F26 02:9F16: 79        .byte $79   ; 14
- - - - - - 0x009F27 02:9F17: 7E        .byte $7E   ; 15
- - - - - - 0x009F28 02:9F18: 83        .byte $83   ; 16
- - - - - - 0x009F29 02:9F19: 89        .byte $89   ; 17
- - - - - - 0x009F2A 02:9F1A: 8E        .byte $8E   ; 18
- - - - - - 0x009F2B 02:9F1B: 93        .byte $93   ; 19
- - - - - - 0x009F2C 02:9F1C: 98        .byte $98   ; 1A
- - - - - - 0x009F2D 02:9F1D: 9D        .byte $9D   ; 1B
- - - - - - 0x009F2E 02:9F1E: A1        .byte $A1   ; 1C
- - - - - - 0x009F2F 02:9F1F: A6        .byte $A6   ; 1D
- - - - - - 0x009F30 02:9F20: AB        .byte $AB   ; 1E
- - - - - - 0x009F31 02:9F21: B0        .byte $B0   ; 1F
- D 0 - - - 0x009F32 02:9F22: B5        .byte $B5   ; 20
- - - - - - 0x009F33 02:9F23: B9        .byte $B9   ; 21
- - - - - - 0x009F34 02:9F24: BD        .byte $BD   ; 22
- - - - - - 0x009F35 02:9F25: C1        .byte $C1   ; 23
- - - - - - 0x009F36 02:9F26: C6        .byte $C6   ; 24
- - - - - - 0x009F37 02:9F27: C9        .byte $C9   ; 25
- - - - - - 0x009F38 02:9F28: CD        .byte $CD   ; 26
- - - - - - 0x009F39 02:9F29: D1        .byte $D1   ; 27
- - - - - - 0x009F3A 02:9F2A: D4        .byte $D4   ; 28
- - - - - - 0x009F3B 02:9F2B: D8        .byte $D8   ; 29
- - - - - - 0x009F3C 02:9F2C: DB        .byte $DB   ; 2A
- - - - - - 0x009F3D 02:9F2D: DE        .byte $DE   ; 2B
- - - - - - 0x009F3E 02:9F2E: E1        .byte $E1   ; 2C
- - - - - - 0x009F3F 02:9F2F: E4        .byte $E4   ; 2D
- - - - - - 0x009F40 02:9F30: E7        .byte $E7   ; 2E
- - - - - - 0x009F41 02:9F31: EA        .byte $EA   ; 2F
- D 0 - - - 0x009F42 02:9F32: EC        .byte $EC   ; 30
- - - - - - 0x009F43 02:9F33: EE        .byte $EE   ; 31
- - - - - - 0x009F44 02:9F34: F0        .byte $F0   ; 32
- - - - - - 0x009F45 02:9F35: F3        .byte $F3   ; 33
- - - - - - 0x009F46 02:9F36: F4        .byte $F4   ; 34
- - - - - - 0x009F47 02:9F37: F6        .byte $F6   ; 35
- - - - - - 0x009F48 02:9F38: F8        .byte $F8   ; 36
- - - - - - 0x009F49 02:9F39: F9        .byte $F9   ; 37
- - - - - - 0x009F4A 02:9F3A: FC        .byte $FC   ; 38
- - - - - - 0x009F4B 02:9F3B: FC        .byte $FC   ; 39
- - - - - - 0x009F4C 02:9F3C: FD        .byte $FD   ; 3A
- - - - - - 0x009F4D 02:9F3D: FD        .byte $FD   ; 3B
- - - - - - 0x009F4E 02:9F3E: FE        .byte $FE   ; 3C
- - - - - - 0x009F4F 02:9F3F: FE        .byte $FE   ; 3D
- - - - - - 0x009F50 02:9F40: FE        .byte $FE   ; 3E
- - - - - - 0x009F51 02:9F41: FE        .byte $FE   ; 3F
- D 0 - - - 0x009F52 02:9F42: FF        .byte $FF   ; 40



sub_9F43:
C - - - - - 0x009F53 02:9F43: B9 A4 00  LDA a: ram_00A4_obj,Y
C - - - - - 0x009F56 02:9F46: 18        CLC
C - - - - - 0x009F57 02:9F47: 65 2F     ADC ram_002F
C - - - - - 0x009F59 02:9F49: 99 A4 00  STA a: ram_00A4_obj,Y
C - - - - - 0x009F5C 02:9F4C: B9 77 00  LDA a: ram_pos_X_lo,Y
C - - - - - 0x009F5F 02:9F4F: 65 30     ADC ram_0030
C - - - - - 0x009F61 02:9F51: 99 77 00  STA a: ram_pos_X_lo,Y
C - - - - - 0x009F64 02:9F54: B9 80 00  LDA a: ram_pos_X_hi,Y
C - - - - - 0x009F67 02:9F57: 69 00     ADC #$00
C - - - - - 0x009F69 02:9F59: 99 80 00  STA a: ram_pos_X_hi,Y
C - - - - - 0x009F6C 02:9F5C: 60        RTS



sub_9F5D:
C - - - - - 0x009F6D 02:9F5D: B9 89 00  LDA a: ram_0089_obj,Y
C - - - - - 0x009F70 02:9F60: 18        CLC
C - - - - - 0x009F71 02:9F61: 65 2B     ADC ram_002B
C - - - - - 0x009F73 02:9F63: 99 89 00  STA a: ram_0089_obj,Y
C - - - - - 0x009F76 02:9F66: B9 92 00  LDA a: ram_pos_Y_lo,Y
C - - - - - 0x009F79 02:9F69: 65 2C     ADC ram_002C
C - - - - - 0x009F7B 02:9F6B: 99 92 00  STA a: ram_pos_Y_lo,Y
C - - - - - 0x009F7E 02:9F6E: B9 9B 00  LDA a: ram_pos_Y_hi,Y
C - - - - - 0x009F81 02:9F71: 69 00     ADC #$00
C - - - - - 0x009F83 02:9F73: 99 9B 00  STA a: ram_pos_Y_hi,Y
C - - - - - 0x009F86 02:9F76: 60        RTS



sub_9F77:
C - - - - - 0x009F87 02:9F77: B9 A4 00  LDA a: ram_00A4_obj,Y
C - - - - - 0x009F8A 02:9F7A: 38        SEC
C - - - - - 0x009F8B 02:9F7B: E5 2F     SBC ram_002F
C - - - - - 0x009F8D 02:9F7D: 99 A4 00  STA a: ram_00A4_obj,Y
C - - - - - 0x009F90 02:9F80: B9 77 00  LDA a: ram_pos_X_lo,Y
C - - - - - 0x009F93 02:9F83: E5 30     SBC ram_0030
C - - - - - 0x009F95 02:9F85: 99 77 00  STA a: ram_pos_X_lo,Y
C - - - - - 0x009F98 02:9F88: B9 80 00  LDA a: ram_pos_X_hi,Y
C - - - - - 0x009F9B 02:9F8B: E9 00     SBC #$00
C - - - - - 0x009F9D 02:9F8D: 99 80 00  STA a: ram_pos_X_hi,Y
C - - - - - 0x009FA0 02:9F90: 60        RTS



sub_9F91:
C - - - - - 0x009FA1 02:9F91: B9 89 00  LDA a: ram_0089_obj,Y
C - - - - - 0x009FA4 02:9F94: 38        SEC
C - - - - - 0x009FA5 02:9F95: E5 2B     SBC ram_002B
C - - - - - 0x009FA7 02:9F97: 99 89 00  STA a: ram_0089_obj,Y
C - - - - - 0x009FAA 02:9F9A: B9 92 00  LDA a: ram_pos_Y_lo,Y
C - - - - - 0x009FAD 02:9F9D: E5 2C     SBC ram_002C
C - - - - - 0x009FAF 02:9F9F: 99 92 00  STA a: ram_pos_Y_lo,Y
C - - - - - 0x009FB2 02:9FA2: B9 9B 00  LDA a: ram_pos_Y_hi,Y
C - - - - - 0x009FB5 02:9FA5: E9 00     SBC #$00
C - - - - - 0x009FB7 02:9FA7: 99 9B 00  STA a: ram_pos_Y_hi,Y
C - - - - - 0x009FBA 02:9FAA: 60        RTS



sub_9FAB:
C - - - - - 0x009FBB 02:9FAB: D6 55     DEC ram_animation_frame_counter,X
C - - - - - 0x009FBD 02:9FAD: 10 22     BPL bra_9FD1_RTS
C - - - - - 0x009FBF 02:9FAF: B5 5C     LDA ram_animation_counter,X
C - - - - - 0x009FC1 02:9FB1: A8        TAY
C - - - - - 0x009FC2 02:9FB2: B1 29     LDA (ram_0029),Y
C - - - - - 0x009FC4 02:9FB4: 10 13     BPL bra_9FC9
; 80-FF
C - - - - - 0x009FC6 02:9FB6: C9 FE     CMP #$FE
C - - - - - 0x009FC8 02:9FB8: D0 0A     BNE bra_9FC4
; FE
C - - - - - 0x009FCA 02:9FBA: A9 00     LDA #$00
C - - - - - 0x009FCC 02:9FBC: A8        TAY
C - - - - - 0x009FCD 02:9FBD: 95 5C     STA ram_animation_counter,X
C - - - - - 0x009FCF 02:9FBF: B1 29     LDA (ram_0029),Y
C - - - - - 0x009FD1 02:9FC1: 4C C9 9F  JMP loc_9FC9
bra_9FC4:
; 80-FD, FF
C - - - - - 0x009FD4 02:9FC4: 29 7F     AND #$7F
C - - - - - 0x009FD6 02:9FC6: 95 43     STA ram_state,X
C - - - - - 0x009FD8 02:9FC8: 60        RTS
bra_9FC9:
; 00-7F
loc_9FC9:
C D 0 - - - 0x009FD9 02:9FC9: 95 C7     STA ram_animation_id,X
C - - - - - 0x009FDB 02:9FCB: B1 2B     LDA (ram_002B),Y
C - - - - - 0x009FDD 02:9FCD: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x009FDF 02:9FCF: F6 5C     INC ram_animation_counter,X
bra_9FD1_RTS:
C - - - - - 0x009FE1 02:9FD1: 60        RTS



loc_9FD2:
sub_9FD2:
C D 0 - - - 0x009FE2 02:9FD2: 20 8A A4  JSR sub_A48A_set_pointers_for_2_tables
C - - - - - 0x009FE5 02:9FD5: 20 10 9E  JSR sub_9E10
C - - - - - 0x009FE8 02:9FD8: 20 4B 9E  JSR sub_9E4B
C - - - - - 0x009FEB 02:9FDB: 60        RTS



sub_9FDC_damage_to_player:
C - - - - - 0x009FEC 02:9FDC: 85 1D     STA ram_001D
C - - - - - 0x009FEE 02:9FDE: B9 1E 04  LDA ram_hp,Y
C - - - - - 0x009FF1 02:9FE1: 38        SEC
C - - - - - 0x009FF2 02:9FE2: E5 1D     SBC ram_001D
C - - - - - 0x009FF4 02:9FE4: B0 02     BCS bra_9FE8_not_underflow
C - - - - - 0x009FF6 02:9FE6: A9 00     LDA #$00
bra_9FE8_not_underflow:
C - - - - - 0x009FF8 02:9FE8: 99 1E 04  STA ram_hp,Y
C - - - - - 0x009FFB 02:9FEB: 60        RTS



sub_9FEC:
C - - - - - 0x009FFC 02:9FEC: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x009FFE 02:9FEE: 18        CLC
C - - - - - 0x009FFF 02:9FEF: 65 29     ADC ram_0029
C - - - - - 0x00A001 02:9FF1: 99 77 00  STA a: ram_pos_X_lo,Y
C - - - - - 0x00A004 02:9FF4: B5 80     LDA ram_pos_X_hi,X
C - - - - - 0x00A006 02:9FF6: 69 00     ADC #$00
C - - - - - 0x00A008 02:9FF8: 99 80 00  STA a: ram_pos_X_hi,Y
C - - - - - 0x00A00B 02:9FFB: A5 29     LDA ram_0029
C - - - - - 0x00A00D 02:9FFD: 10 09     BPL bra_A008
C - - - - - 0x00A00F 02:9FFF: B9 80 00  LDA a: ram_pos_X_hi,Y
C - - - - - 0x00A012 02:A002: 18        CLC
C - - - - - 0x00A013 02:A003: 69 FF     ADC #$FF
C - - - - - 0x00A015 02:A005: 99 80 00  STA a: ram_pos_X_hi,Y
bra_A008:
C - - - - - 0x00A018 02:A008: B5 92     LDA ram_pos_Y_lo,X
C - - - - - 0x00A01A 02:A00A: 99 92 00  STA a: ram_pos_Y_lo,Y
C - - - - - 0x00A01D 02:A00D: B5 9B     LDA ram_pos_Y_hi,X
C - - - - - 0x00A01F 02:A00F: 99 9B 00  STA a: ram_pos_Y_hi,Y
C - - - - - 0x00A022 02:A012: B5 AD     LDA ram_pos_Z_lo,X
C - - - - - 0x00A024 02:A014: 18        CLC
C - - - - - 0x00A025 02:A015: 65 2A     ADC ram_002A
C - - - - - 0x00A027 02:A017: 99 AD 00  STA a: ram_pos_Z_lo,Y
C - - - - - 0x00A02A 02:A01A: B5 B6     LDA ram_pos_Z_hi,X
C - - - - - 0x00A02C 02:A01C: 69 00     ADC #$00
C - - - - - 0x00A02E 02:A01E: 99 B6 00  STA a: ram_pos_Z_hi,Y
C - - - - - 0x00A031 02:A021: A9 C0     LDA #$C0
C - - - - - 0x00A033 02:A023: 85 29     STA ram_0029
C - - - - - 0x00A035 02:A025: B5 63     LDA ram_0063_obj,X
C - - - - - 0x00A037 02:A027: 10 04     BPL bra_A02D
C - - - - - 0x00A039 02:A029: A9 40     LDA #$40
C - - - - - 0x00A03B 02:A02B: 85 29     STA ram_0029
bra_A02D:
C - - - - - 0x00A03D 02:A02D: A5 29     LDA ram_0029
C - - - - - 0x00A03F 02:A02F: 99 0F 03  STA ram_030F_obj,Y
C - - - - - 0x00A042 02:A032: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x00A045 02:A035: 99 59 03  STA ram_0359_obj,Y
C - - - - - 0x00A048 02:A038: 60        RTS



sub_A039_acknowledge_current_state_and_clear_stuff:
; mark state as old (not new)
C - - - - - 0x00A049 02:A039: B5 43     LDA ram_state,X
C - - - - - 0x00A04B 02:A03B: 09 80     ORA #$80
C - - - - - 0x00A04D 02:A03D: 95 43     STA ram_state,X
C - - - - - 0x00A04F 02:A03F: A9 00     LDA #$00
C - - - - - 0x00A051 02:A041: 95 55     STA ram_animation_frame_counter,X
C - - - - - 0x00A053 02:A043: 95 5C     STA ram_animation_counter,X
C - - - - - 0x00A055 02:A045: 9D 1D 03  STA ram_031D_obj,X
C - - - - - 0x00A058 02:A048: 9D 35 03  STA ram_0335_obj,X
C - - - - - 0x00A05B 02:A04B: A9 FF     LDA #$FF
C - - - - - 0x00A05D 02:A04D: 9D 2D 03  STA ram_032D_obj,X
C - - - - - 0x00A060 02:A050: 60        RTS



sub_A051:
C - - - - - 0x00A061 02:A051: A0 00     LDY #$00
C - - - - - 0x00A063 02:A053: BD 0F 03  LDA ram_030F_obj,X
C - - - - - 0x00A066 02:A056: C9 80     CMP #$80
C - - - - - 0x00A068 02:A058: B0 02     BCS bra_A05C
C - - - - - 0x00A06A 02:A05A: A0 80     LDY #$80
bra_A05C:
C - - - - - 0x00A06C 02:A05C: 94 63     STY ram_0063_obj,X
C - - - - - 0x00A06E 02:A05E: 60        RTS



sub_A05F:
C - - - - - 0x00A06F 02:A05F: 20 51 A0  JSR sub_A051
C - - - - - 0x00A072 02:A062: B5 63     LDA ram_0063_obj,X
C - - - - - 0x00A074 02:A064: 49 80     EOR #$80
C - - - - - 0x00A076 02:A066: 95 63     STA ram_0063_obj,X
C - - - - - 0x00A078 02:A068: 60        RTS



sub_A069:
C - - - - - 0x00A079 02:A069: E0 02     CPX #$02
C - - - - - 0x00A07B 02:A06B: B0 05     BCS bra_A072_RTS
C - - - - - 0x00A07D 02:A06D: B5 92     LDA ram_pos_Y_lo,X
C - - - - - 0x00A07F 02:A06F: 8D 91 03  STA ram_0391
bra_A072_RTS:
C - - - - - 0x00A082 02:A072: 60        RTS



sub_A073:
C - - - - - 0x00A083 02:A073: E0 02     CPX #$02
C - - - - - 0x00A085 02:A075: B0 0E     BCS bra_A085_RTS
C - - - - - 0x00A087 02:A077: BD 25 03  LDA ram_0325_obj,X
C - - - - - 0x00A08A 02:A07A: 10 09     BPL bra_A085_RTS
C - - - - - 0x00A08C 02:A07C: C9 F9     CMP #$F9
C - - - - - 0x00A08E 02:A07E: B0 05     BCS bra_A085_RTS
C - - - - - 0x00A090 02:A080: A9 F9     LDA #$F9
C - - - - - 0x00A092 02:A082: 9D 25 03  STA ram_0325_obj,X
bra_A085_RTS:
C - - - - - 0x00A095 02:A085: 60        RTS



sub_A086:
C - - - - - 0x00A096 02:A086: AD 22 04  LDA ram_mission_hi
C - - - - - 0x00A099 02:A089: C9 09     CMP #$09
C - - - - - 0x00A09B 02:A08B: D0 73     BNE bra_A100
C - - - - - 0x00A09D 02:A08D: AD 35 04  LDA ram_difficulty
C - - - - - 0x00A0A0 02:A090: D0 09     BNE bra_A09B    ; if not easy
; if easy
C - - - - - 0x00A0A2 02:A092: AC 5D 06  LDY ram_065D
C - - - - - 0x00A0A5 02:A095: B9 EC A0  LDA tbl_A0EC,Y
C - - - - - 0x00A0A8 02:A098: 4C A1 A0  JMP loc_A0A1
bra_A09B:
C - - - - - 0x00A0AB 02:A09B: AC 5D 06  LDY ram_065D
C - - - - - 0x00A0AE 02:A09E: B9 D8 A0  LDA tbl_A0D8,Y
loc_A0A1:
C D 1 - - - 0x00A0B1 02:A0A1: 10 15     BPL bra_A0B8
; 80-FF
C - - - - - 0x00A0B3 02:A0A3: EE 5E 06  INC ram_065E
C - - - - - 0x00A0B6 02:A0A6: 29 7F     AND #$7F
C - - - - - 0x00A0B8 02:A0A8: CD 5E 06  CMP ram_065E
C - - - - - 0x00A0BB 02:A0AB: B0 2A     BCS bra_A0D7_RTS
C - - - - - 0x00A0BD 02:A0AD: EE 5D 06  INC ram_065D
C - - - - - 0x00A0C0 02:A0B0: A9 00     LDA #$00
C - - - - - 0x00A0C2 02:A0B2: 8D 5E 06  STA ram_065E
C - - - - - 0x00A0C5 02:A0B5: 4C D7 A0  JMP loc_A0D7_RTS
bra_A0B8:
; 00-7F
C - - - - - 0x00A0C8 02:A0B8: C9 7F     CMP #$7F
C - - - - - 0x00A0CA 02:A0BA: D0 08     BNE bra_A0C4
; 7F
C - - - - - 0x00A0CC 02:A0BC: A9 00     LDA #$00
C - - - - - 0x00A0CE 02:A0BE: 8D 5D 06  STA ram_065D
C - - - - - 0x00A0D1 02:A0C1: 4C D7 A0  JMP loc_A0D7_RTS
bra_A0C4:
; 00-7E
C - - - - - 0x00A0D4 02:A0C4: 85 19     STA ram_0019
C - - - - - 0x00A0D6 02:A0C6: 29 70     AND #$70
C - - - - - 0x00A0D8 02:A0C8: 4A        LSR
C - - - - - 0x00A0D9 02:A0C9: 4A        LSR
C - - - - - 0x00A0DA 02:A0CA: 4A        LSR
C - - - - - 0x00A0DB 02:A0CB: 4A        LSR
C - - - - - 0x00A0DC 02:A0CC: A8        TAY
C - - - - - 0x00A0DD 02:A0CD: A5 19     LDA ram_0019
C - - - - - 0x00A0DF 02:A0CF: 29 0F     AND #$0F
C - - - - - 0x00A0E1 02:A0D1: 99 53 06  STA ram_0653,Y
C - - - - - 0x00A0E4 02:A0D4: EE 5D 06  INC ram_065D
bra_A0D7_RTS:
loc_A0D7_RTS:
C D 1 - - - 0x00A0E7 02:A0D7: 60        RTS



tbl_A0D8:
- D 1 - - - 0x00A0E8 02:A0D8: 01        .byte $01   ; 00
- D 1 - - - 0x00A0E9 02:A0D9: 12        .byte $12   ; 01
- D 1 - - - 0x00A0EA 02:A0DA: 41        .byte $41   ; 02
- D 1 - - - 0x00A0EB 02:A0DB: 81        .byte $81   ; 03
- D 1 - - - 0x00A0EC 02:A0DC: 00        .byte $00   ; 04
- D 1 - - - 0x00A0ED 02:A0DD: 11        .byte $11   ; 05
- D 1 - - - 0x00A0EE 02:A0DE: 31        .byte $31   ; 06
- D 1 - - - 0x00A0EF 02:A0DF: 10        .byte $10   ; 07
- D 1 - - - 0x00A0F0 02:A0E0: 21        .byte $21   ; 08
- D 1 - - - 0x00A0F1 02:A0E1: 32        .byte $32   ; 09
- D 1 - - - 0x00A0F2 02:A0E2: 90        .byte $90   ; 0A
- D 1 - - - 0x00A0F3 02:A0E3: 02        .byte $02   ; 0B
- D 1 - - - 0x00A0F4 02:A0E4: 11        .byte $11   ; 0C
- D 1 - - - 0x00A0F5 02:A0E5: 20        .byte $20   ; 0D
- D 1 - - - 0x00A0F6 02:A0E6: 30        .byte $30   ; 0E
- D 1 - - - 0x00A0F7 02:A0E7: 40        .byte $40   ; 0F
- D 1 - - - 0x00A0F8 02:A0E8: A0        .byte $A0   ; 10
- D 1 - - - 0x00A0F9 02:A0E9: 40        .byte $40   ; 11
- D 1 - - - 0x00A0FA 02:A0EA: 90        .byte $90   ; 12
- D 1 - - - 0x00A0FB 02:A0EB: 7F        .byte $7F   ; 13



tbl_A0EC:
- D 1 - - - 0x00A0FC 02:A0EC: 01        .byte $01   ; 00
- D 1 - - - 0x00A0FD 02:A0ED: 12        .byte $12   ; 01
- D 1 - - - 0x00A0FE 02:A0EE: 41        .byte $41   ; 02
- D 1 - - - 0x00A0FF 02:A0EF: F1        .byte $F1   ; 03
- D 1 - - - 0x00A100 02:A0F0: 00        .byte $00   ; 04
- D 1 - - - 0x00A101 02:A0F1: 11        .byte $11   ; 05
- D 1 - - - 0x00A102 02:A0F2: 31        .byte $31   ; 06
- D 1 - - - 0x00A103 02:A0F3: 10        .byte $10   ; 07
- D 1 - - - 0x00A104 02:A0F4: 21        .byte $21   ; 08
- D 1 - - - 0x00A105 02:A0F5: 32        .byte $32   ; 09
- D 1 - - - 0x00A106 02:A0F6: F0        .byte $F0   ; 0A
- D 1 - - - 0x00A107 02:A0F7: 02        .byte $02   ; 0B
- D 1 - - - 0x00A108 02:A0F8: 11        .byte $11   ; 0C
- D 1 - - - 0x00A109 02:A0F9: 20        .byte $20   ; 0D
- D 1 - - - 0x00A10A 02:A0FA: 30        .byte $30   ; 0E
- D 1 - - - 0x00A10B 02:A0FB: 40        .byte $40   ; 0F
- D 1 - - - 0x00A10C 02:A0FC: F0        .byte $F0   ; 10
- D 1 - - - 0x00A10D 02:A0FD: 40        .byte $40   ; 11
- D 1 - - - 0x00A10E 02:A0FE: F0        .byte $F0   ; 12
- D 1 - - - 0x00A10F 02:A0FF: 7F        .byte $7F   ; 13



bra_A100:
C - - - - - 0x00A110 02:A100: 4C 0C A1  JMP loc_A10C
bra_A103_RTS:
C - - - - - 0x00A113 02:A103: 60        RTS


; bzk garbage
- - - - - - 0x00A114 02:A104: 20        .byte $20   ; 
- - - - - - 0x00A115 02:A105: 02        .byte $02   ; 
- - - - - - 0x00A116 02:A106: 40        .byte $40   ; 
- - - - - - 0x00A117 02:A107: 02        .byte $02   ; 
- - - - - - 0x00A118 02:A108: 90        .byte $90   ; 
- - - - - - 0x00A119 02:A109: 02        .byte $02   ; 
- - - - - - 0x00A11A 02:A10A: F0        .byte $F0   ; 
- - - - - - 0x00A11B 02:A10B: 02        .byte $02   ; 



loc_A10C:
C D 1 - - - 0x00A11C 02:A10C: AD 35 04  LDA ram_difficulty
; bzk optimize, BNE without CMP
C - - - - - 0x00A11F 02:A10F: C9 00     CMP #$00
C - - - - - 0x00A121 02:A111: D0 03     BNE bra_A116    ; if not easy
; if easy
C - - - - - 0x00A123 02:A113: 4C F8 A2  JMP loc_A2F8
bra_A116:
C - - - - - 0x00A126 02:A116: C9 01     CMP #$01
C - - - - - 0x00A128 02:A118: D0 03     BNE bra_A11D
C - - - - - 0x00A12A 02:A11A: 4C 3A A2  JMP loc_A23A
bra_A11D:
C - - - - - 0x00A12D 02:A11D: A9 FF     LDA #$FF
C - - - - - 0x00A12F 02:A11F: 8D 7B 03  STA ram_037B
C - - - - - 0x00A132 02:A122: AD 22 04  LDA ram_mission_hi
C - - - - - 0x00A135 02:A125: C9 06     CMP #$06
C - - - - - 0x00A137 02:A127: D0 DA     BNE bra_A103_RTS
C - - - - - 0x00A139 02:A129: 20 29 A3  JSR sub_A329
C - - - - - 0x00A13C 02:A12C: B0 D5     BCS bra_A103_RTS
C - - - - - 0x00A13E 02:A12E: A9 A0     LDA #< tbl_A1A0
C - - - - - 0x00A140 02:A130: 85 29     STA ram_0029
C - - - - - 0x00A142 02:A132: A9 A1     LDA #> tbl_A1A0
C - - - - - 0x00A144 02:A134: 85 2A     STA ram_002A
C - - - - - 0x00A146 02:A136: A5 D1     LDA ram_00D1
C - - - - - 0x00A148 02:A138: D0 08     BNE bra_A142
C - - - - - 0x00A14A 02:A13A: A9 BB     LDA #< tbl_A1BB
C - - - - - 0x00A14C 02:A13C: 85 29     STA ram_0029
C - - - - - 0x00A14E 02:A13E: A9 A1     LDA #> tbl_A1BB
C - - - - - 0x00A150 02:A140: 85 2A     STA ram_002A
bra_A142:
C - - - - - 0x00A152 02:A142: AC 5D 06  LDY ram_065D
C - - - - - 0x00A155 02:A145: B1 29     LDA (ram_0029),Y
C - - - - - 0x00A157 02:A147: 10 15     BPL bra_A15E
C - - - - - 0x00A159 02:A149: EE 5E 06  INC ram_065E
C - - - - - 0x00A15C 02:A14C: 29 7F     AND #$7F
C - - - - - 0x00A15E 02:A14E: CD 5E 06  CMP ram_065E
C - - - - - 0x00A161 02:A151: B0 43     BCS bra_A196_RTS
C - - - - - 0x00A163 02:A153: EE 5D 06  INC ram_065D
C - - - - - 0x00A166 02:A156: A9 00     LDA #$00
C - - - - - 0x00A168 02:A158: 8D 5E 06  STA ram_065E
C - - - - - 0x00A16B 02:A15B: 4C 96 A1  JMP loc_A196_RTS
bra_A15E:
C - - - - - 0x00A16E 02:A15E: C9 7F     CMP #$7F
C - - - - - 0x00A170 02:A160: D0 08     BNE bra_A16A
C - - - - - 0x00A172 02:A162: A9 00     LDA #$00
C - - - - - 0x00A174 02:A164: 8D 5D 06  STA ram_065D
C - - - - - 0x00A177 02:A167: 4C 96 A1  JMP loc_A196_RTS
bra_A16A:
C - - - - - 0x00A17A 02:A16A: 85 19     STA ram_0019
C - - - - - 0x00A17C 02:A16C: 20 E4 A1  JSR sub_A1E4
C - - - - - 0x00A17F 02:A16F: B0 26     BCS bra_A197
C - - - - - 0x00A181 02:A171: A5 19     LDA ram_0019
C - - - - - 0x00A183 02:A173: 4A        LSR
C - - - - - 0x00A184 02:A174: 4A        LSR
C - - - - - 0x00A185 02:A175: 4A        LSR
C - - - - - 0x00A186 02:A176: 4A        LSR
C - - - - - 0x00A187 02:A177: A8        TAY
C - - - - - 0x00A188 02:A178: A5 19     LDA ram_0019
C - - - - - 0x00A18A 02:A17A: 29 0F     AND #$0F
C - - - - - 0x00A18C 02:A17C: 18        CLC
C - - - - - 0x00A18D 02:A17D: 69 01     ADC #$01
C - - - - - 0x00A18F 02:A17F: 99 53 06  STA ram_0653,Y
C - - - - - 0x00A192 02:A182: A5 19     LDA ram_0019
C - - - - - 0x00A194 02:A184: 29 10     AND #$10
C - - - - - 0x00A196 02:A186: F0 0B     BEQ bra_A193
C - - - - - 0x00A198 02:A188: A5 19     LDA ram_0019
C - - - - - 0x00A19A 02:A18A: 29 0F     AND #$0F
C - - - - - 0x00A19C 02:A18C: A8        TAY
C - - - - - 0x00A19D 02:A18D: B9 30 A2  LDA tbl_A230,Y
C - - - - - 0x00A1A0 02:A190: 8D 79 03  STA ram_0379
bra_A193:
C - - - - - 0x00A1A3 02:A193: EE 5D 06  INC ram_065D
bra_A196_RTS:
loc_A196_RTS:
C D 1 - - - 0x00A1A6 02:A196: 60        RTS
bra_A197:
C - - - - - 0x00A1A7 02:A197: EE 5D 06  INC ram_065D
C - - - - - 0x00A1AA 02:A19A: A9 FF     LDA #$FF
C - - - - - 0x00A1AC 02:A19C: 8D 79 03  STA ram_0379
C - - - - - 0x00A1AF 02:A19F: 60        RTS



tbl_A1A0:
- D 1 - I - 0x00A1B0 02:A1A0: 10        .byte $10   ; 
- D 1 - I - 0x00A1B1 02:A1A1: A0        .byte $A0   ; 
- D 1 - I - 0x00A1B2 02:A1A2: 00        .byte $00   ; 
- D 1 - I - 0x00A1B3 02:A1A3: 82        .byte $82   ; 
- D 1 - I - 0x00A1B4 02:A1A4: 00        .byte $00   ; 
- D 1 - I - 0x00A1B5 02:A1A5: 82        .byte $82   ; 
- D 1 - I - 0x00A1B6 02:A1A6: 00        .byte $00   ; 
- D 1 - I - 0x00A1B7 02:A1A7: 82        .byte $82   ; 
- D 1 - I - 0x00A1B8 02:A1A8: 11        .byte $11   ; 
- D 1 - I - 0x00A1B9 02:A1A9: A0        .byte $A0   ; 
- D 1 - I - 0x00A1BA 02:A1AA: 01        .byte $01   ; 
- D 1 - I - 0x00A1BB 02:A1AB: 82        .byte $82   ; 
- D 1 - I - 0x00A1BC 02:A1AC: 01        .byte $01   ; 
- D 1 - I - 0x00A1BD 02:A1AD: 82        .byte $82   ; 
- D 1 - I - 0x00A1BE 02:A1AE: 01        .byte $01   ; 
- D 1 - I - 0x00A1BF 02:A1AF: 82        .byte $82   ; 
- D 1 - I - 0x00A1C0 02:A1B0: 01        .byte $01   ; 
- D 1 - I - 0x00A1C1 02:A1B1: 12        .byte $12   ; 
- D 1 - I - 0x00A1C2 02:A1B2: A0        .byte $A0   ; 
- D 1 - I - 0x00A1C3 02:A1B3: 02        .byte $02   ; 
- D 1 - I - 0x00A1C4 02:A1B4: 82        .byte $82   ; 
- D 1 - I - 0x00A1C5 02:A1B5: 02        .byte $02   ; 
- D 1 - I - 0x00A1C6 02:A1B6: 82        .byte $82   ; 
- D 1 - I - 0x00A1C7 02:A1B7: 02        .byte $02   ; 
- D 1 - I - 0x00A1C8 02:A1B8: 82        .byte $82   ; 
- D 1 - I - 0x00A1C9 02:A1B9: 02        .byte $02   ; 
- D 1 - I - 0x00A1CA 02:A1BA: 7F        .byte $7F   ; 



tbl_A1BB:
- D 1 - I - 0x00A1CB 02:A1BB: 15        .byte $15   ; 
- D 1 - I - 0x00A1CC 02:A1BC: B0        .byte $B0   ; 
- D 1 - I - 0x00A1CD 02:A1BD: 05        .byte $05   ; 
- D 1 - I - 0x00A1CE 02:A1BE: 82        .byte $82   ; 
- D 1 - I - 0x00A1CF 02:A1BF: 05        .byte $05   ; 
- D 1 - I - 0x00A1D0 02:A1C0: 82        .byte $82   ; 
- D 1 - I - 0x00A1D1 02:A1C1: 05        .byte $05   ; 
- D 1 - I - 0x00A1D2 02:A1C2: 82        .byte $82   ; 
- D 1 - I - 0x00A1D3 02:A1C3: 16        .byte $16   ; 
- D 1 - I - 0x00A1D4 02:A1C4: B0        .byte $B0   ; 
- D 1 - I - 0x00A1D5 02:A1C5: 06        .byte $06   ; 
- D 1 - I - 0x00A1D6 02:A1C6: 82        .byte $82   ; 
- D 1 - I - 0x00A1D7 02:A1C7: 06        .byte $06   ; 
- D 1 - I - 0x00A1D8 02:A1C8: 82        .byte $82   ; 
- D 1 - I - 0x00A1D9 02:A1C9: 06        .byte $06   ; 
- D 1 - I - 0x00A1DA 02:A1CA: 82        .byte $82   ; 
- D 1 - I - 0x00A1DB 02:A1CB: 17        .byte $17   ; 
- D 1 - I - 0x00A1DC 02:A1CC: B0        .byte $B0   ; 
- D 1 - I - 0x00A1DD 02:A1CD: 07        .byte $07   ; 
- D 1 - I - 0x00A1DE 02:A1CE: 82        .byte $82   ; 
- D 1 - I - 0x00A1DF 02:A1CF: 07        .byte $07   ; 
- D 1 - I - 0x00A1E0 02:A1D0: 82        .byte $82   ; 
- D 1 - I - 0x00A1E1 02:A1D1: 07        .byte $07   ; 
- D 1 - I - 0x00A1E2 02:A1D2: 82        .byte $82   ; 
- D 1 - I - 0x00A1E3 02:A1D3: 18        .byte $18   ; 
- D 1 - I - 0x00A1E4 02:A1D4: B0        .byte $B0   ; 
- D 1 - I - 0x00A1E5 02:A1D5: 08        .byte $08   ; 
- D 1 - I - 0x00A1E6 02:A1D6: 82        .byte $82   ; 
- D 1 - I - 0x00A1E7 02:A1D7: 08        .byte $08   ; 
- D 1 - I - 0x00A1E8 02:A1D8: 82        .byte $82   ; 
- D 1 - I - 0x00A1E9 02:A1D9: 08        .byte $08   ; 
- D 1 - I - 0x00A1EA 02:A1DA: 82        .byte $82   ; 
- D 1 - I - 0x00A1EB 02:A1DB: 19        .byte $19   ; 
- D 1 - I - 0x00A1EC 02:A1DC: B0        .byte $B0   ; 
- D 1 - I - 0x00A1ED 02:A1DD: 09        .byte $09   ; 
- D 1 - I - 0x00A1EE 02:A1DE: 82        .byte $82   ; 
- D 1 - I - 0x00A1EF 02:A1DF: 09        .byte $09   ; 
- D 1 - I - 0x00A1F0 02:A1E0: 82        .byte $82   ; 
- D 1 - I - 0x00A1F1 02:A1E1: 09        .byte $09   ; 
- D 1 - I - 0x00A1F2 02:A1E2: 82        .byte $82   ; 
- D 1 - I - 0x00A1F3 02:A1E3: 7F        .byte $7F   ; 



sub_A1E4:
C - - - - - 0x00A1F4 02:A1E4: A5 19     LDA ram_0019
C - - - - - 0x00A1F6 02:A1E6: 29 0F     AND #$0F
C - - - - - 0x00A1F8 02:A1E8: 0A        ASL
C - - - - - 0x00A1F9 02:A1E9: 0A        ASL
C - - - - - 0x00A1FA 02:A1EA: A8        TAY
C - - - - - 0x00A1FB 02:A1EB: A5 D0     LDA ram_00D0
C - - - - - 0x00A1FD 02:A1ED: 38        SEC
C - - - - - 0x00A1FE 02:A1EE: F9 08 A2  SBC tbl_A208,Y
C - - - - - 0x00A201 02:A1F1: A5 D1     LDA ram_00D1
C - - - - - 0x00A203 02:A1F3: F9 09 A2  SBC tbl_A208 + $01,Y
C - - - - - 0x00A206 02:A1F6: 90 0E     BCC bra_A206
C - - - - - 0x00A208 02:A1F8: A5 D0     LDA ram_00D0
C - - - - - 0x00A20A 02:A1FA: F9 0A A2  SBC tbl_A208 + $02,Y
C - - - - - 0x00A20D 02:A1FD: A5 D1     LDA ram_00D1
C - - - - - 0x00A20F 02:A1FF: F9 0B A2  SBC tbl_A208 + $03,Y
C - - - - - 0x00A212 02:A202: B0 02     BCS bra_A206
C - - - - - 0x00A214 02:A204: 18        CLC
C - - - - - 0x00A215 02:A205: 60        RTS
bra_A206:
C - - - - - 0x00A216 02:A206: 38        SEC
C - - - - - 0x00A217 02:A207: 60        RTS



tbl_A208:
- D 1 - - - 0x00A218 02:A208: 70        .byte $70   ; 
- D 1 - - - 0x00A219 02:A209: 01        .byte $01   ; 
- D 1 - - - 0x00A21A 02:A20A: 10        .byte $10   ; 
- D 1 - - - 0x00A21B 02:A20B: 02        .byte $02   ; 

- D 1 - - - 0x00A21C 02:A20C: 50        .byte $50   ; 
- D 1 - - - 0x00A21D 02:A20D: 01        .byte $01   ; 
- D 1 - - - 0x00A21E 02:A20E: 10        .byte $10   ; 
- D 1 - - - 0x00A21F 02:A20F: 02        .byte $02   ; 

- D 1 - - - 0x00A220 02:A210: 50        .byte $50   ; 
- D 1 - - - 0x00A221 02:A211: 01        .byte $01   ; 
- D 1 - - - 0x00A222 02:A212: 10        .byte $10   ; 
- D 1 - - - 0x00A223 02:A213: 02        .byte $02   ; 

- - - - - - 0x00A224 02:A214: 00        .byte $00   ; 
- - - - - - 0x00A225 02:A215: 00        .byte $00   ; 
- - - - - - 0x00A226 02:A216: C0        .byte $C0   ; 
- - - - - - 0x00A227 02:A217: 00        .byte $00   ; 

- - - - - - 0x00A228 02:A218: 00        .byte $00   ; 
- - - - - - 0x00A229 02:A219: 00        .byte $00   ; 
- - - - - - 0x00A22A 02:A21A: 90        .byte $90   ; 
- - - - - - 0x00A22B 02:A21B: 00        .byte $00   ; 

- D 1 - - - 0x00A22C 02:A21C: 00        .byte $00   ; 
- D 1 - - - 0x00A22D 02:A21D: 00        .byte $00   ; 
- D 1 - - - 0x00A22E 02:A21E: 70        .byte $70   ; 
- D 1 - - - 0x00A22F 02:A21F: 00        .byte $00   ; 

- D 1 - - - 0x00A230 02:A220: 00        .byte $00   ; 
- D 1 - - - 0x00A231 02:A221: 00        .byte $00   ; 
- D 1 - - - 0x00A232 02:A222: 50        .byte $50   ; 
- D 1 - - - 0x00A233 02:A223: 00        .byte $00   ; 

- D 1 - - - 0x00A234 02:A224: 00        .byte $00   ; 
- D 1 - - - 0x00A235 02:A225: 00        .byte $00   ; 
- D 1 - - - 0x00A236 02:A226: 30        .byte $30   ; 
- D 1 - - - 0x00A237 02:A227: 00        .byte $00   ; 

- D 1 - - - 0x00A238 02:A228: 00        .byte $00   ; 
- D 1 - - - 0x00A239 02:A229: 00        .byte $00   ; 
- D 1 - - - 0x00A23A 02:A22A: 08        .byte $08   ; 
- D 1 - - - 0x00A23B 02:A22B: 00        .byte $00   ; 

- D 1 - - - 0x00A23C 02:A22C: 00        .byte $00   ; 
- D 1 - - - 0x00A23D 02:A22D: 00        .byte $00   ; 
- D 1 - - - 0x00A23E 02:A22E: 30        .byte $30   ; 
- D 1 - - - 0x00A23F 02:A22F: 00        .byte $00   ; 



tbl_A230:
- D 1 - - - 0x00A240 02:A230: 04        .byte $04   ; 00
- D 1 - - - 0x00A241 02:A231: 05        .byte $05   ; 01
- D 1 - - - 0x00A242 02:A232: 06        .byte $06   ; 02
- - - - - - 0x00A243 02:A233: 10        .byte $10   ; 03
- - - - - - 0x00A244 02:A234: 11        .byte $11   ; 04
- D 1 - - - 0x00A245 02:A235: 12        .byte $12   ; 05
- D 1 - - - 0x00A246 02:A236: 13        .byte $13   ; 06
- D 1 - - - 0x00A247 02:A237: 14        .byte $14   ; 07
- D 1 - - - 0x00A248 02:A238: 15        .byte $15   ; 08
- D 1 - - - 0x00A249 02:A239: 16        .byte $16   ; 09



loc_A23A:
C D 1 - - - 0x00A24A 02:A23A: AD 22 04  LDA ram_mission_hi
C - - - - - 0x00A24D 02:A23D: C9 06     CMP #$06
C - - - - - 0x00A24F 02:A23F: D0 7B     BNE bra_A2BC_RTS
C - - - - - 0x00A251 02:A241: 20 29 A3  JSR sub_A329
C - - - - - 0x00A254 02:A244: B0 76     BCS bra_A2BC_RTS
C - - - - - 0x00A256 02:A246: A9 D2     LDA #< tbl_A2D2
C - - - - - 0x00A258 02:A248: 85 29     STA ram_0029
C - - - - - 0x00A25A 02:A24A: A9 A2     LDA #> tbl_A2D2
C - - - - - 0x00A25C 02:A24C: 85 2A     STA ram_002A
C - - - - - 0x00A25E 02:A24E: A5 D1     LDA ram_00D1
C - - - - - 0x00A260 02:A250: D0 08     BNE bra_A25A
C - - - - - 0x00A262 02:A252: A9 E1     LDA #< tbl_A2E1
C - - - - - 0x00A264 02:A254: 85 29     STA ram_0029
C - - - - - 0x00A266 02:A256: A9 A2     LDA #> tbl_A2E1
C - - - - - 0x00A268 02:A258: 85 2A     STA ram_002A
bra_A25A:
C - - - - - 0x00A26A 02:A25A: AC 5D 06  LDY ram_065D
C - - - - - 0x00A26D 02:A25D: B1 29     LDA (ram_0029),Y
C - - - - - 0x00A26F 02:A25F: 10 15     BPL bra_A276
C - - - - - 0x00A271 02:A261: EE 5E 06  INC ram_065E
C - - - - - 0x00A274 02:A264: 29 7F     AND #$7F
C - - - - - 0x00A276 02:A266: CD 5E 06  CMP ram_065E
C - - - - - 0x00A279 02:A269: B0 51     BCS bra_A2BC_RTS
C - - - - - 0x00A27B 02:A26B: EE 5D 06  INC ram_065D
C - - - - - 0x00A27E 02:A26E: A9 00     LDA #$00
C - - - - - 0x00A280 02:A270: 8D 5E 06  STA ram_065E
C - - - - - 0x00A283 02:A273: 4C BC A2  JMP loc_A2BC_RTS
bra_A276:
C - - - - - 0x00A286 02:A276: C9 7F     CMP #$7F
C - - - - - 0x00A288 02:A278: D0 08     BNE bra_A282
C - - - - - 0x00A28A 02:A27A: A9 02     LDA #$02
C - - - - - 0x00A28C 02:A27C: 8D 5D 06  STA ram_065D
C - - - - - 0x00A28F 02:A27F: 4C BC A2  JMP loc_A2BC_RTS
bra_A282:
C - - - - - 0x00A292 02:A282: 85 19     STA ram_0019
C - - - - - 0x00A294 02:A284: 20 E4 A1  JSR sub_A1E4
C - - - - - 0x00A297 02:A287: B0 34     BCS bra_A2BD
C - - - - - 0x00A299 02:A289: A5 19     LDA ram_0019
C - - - - - 0x00A29B 02:A28B: 4A        LSR
C - - - - - 0x00A29C 02:A28C: 4A        LSR
C - - - - - 0x00A29D 02:A28D: 4A        LSR
C - - - - - 0x00A29E 02:A28E: 4A        LSR
C - - - - - 0x00A29F 02:A28F: A8        TAY
C - - - - - 0x00A2A0 02:A290: A5 19     LDA ram_0019
C - - - - - 0x00A2A2 02:A292: 29 0F     AND #$0F
C - - - - - 0x00A2A4 02:A294: 18        CLC
C - - - - - 0x00A2A5 02:A295: 69 01     ADC #$01
C - - - - - 0x00A2A7 02:A297: 99 53 06  STA ram_0653,Y
C - - - - - 0x00A2AA 02:A29A: A5 19     LDA ram_0019
C - - - - - 0x00A2AC 02:A29C: 29 10     AND #$10
C - - - - - 0x00A2AE 02:A29E: F0 0E     BEQ bra_A2AE
C - - - - - 0x00A2B0 02:A2A0: A5 19     LDA ram_0019
C - - - - - 0x00A2B2 02:A2A2: 29 0F     AND #$0F
C - - - - - 0x00A2B4 02:A2A4: A8        TAY
C - - - - - 0x00A2B5 02:A2A5: B9 30 A2  LDA tbl_A230,Y
C - - - - - 0x00A2B8 02:A2A8: 8D 79 03  STA ram_0379
C - - - - - 0x00A2BB 02:A2AB: 4C B9 A2  JMP loc_A2B9
bra_A2AE:
C - - - - - 0x00A2BE 02:A2AE: AD 79 03  LDA ram_0379
C - - - - - 0x00A2C1 02:A2B1: 8D 7B 03  STA ram_037B
C - - - - - 0x00A2C4 02:A2B4: A9 FF     LDA #$FF
C - - - - - 0x00A2C6 02:A2B6: 8D 79 03  STA ram_0379
loc_A2B9:
C D 1 - - - 0x00A2C9 02:A2B9: EE 5D 06  INC ram_065D
bra_A2BC_RTS:
loc_A2BC_RTS:
C D 1 - - - 0x00A2CC 02:A2BC: 60        RTS
bra_A2BD:
C - - - - - 0x00A2CD 02:A2BD: EE 5D 06  INC ram_065D
C - - - - - 0x00A2D0 02:A2C0: A5 19     LDA ram_0019
C - - - - - 0x00A2D2 02:A2C2: 29 10     AND #$10
C - - - - - 0x00A2D4 02:A2C4: D0 F6     BNE bra_A2BC_RTS
- - - - - - 0x00A2D6 02:A2C6: AD 79 03  LDA ram_0379
- - - - - - 0x00A2D9 02:A2C9: 8D 7B 03  STA ram_037B
- - - - - - 0x00A2DC 02:A2CC: A9 FF     LDA #$FF
- - - - - - 0x00A2DE 02:A2CE: 8D 79 03  STA ram_0379
- - - - - - 0x00A2E1 02:A2D1: 60        RTS



tbl_A2D2:
- D 1 - I - 0x00A2E2 02:A2D2: 10        .byte $10   ; 
- D 1 - I - 0x00A2E3 02:A2D3: A0        .byte $A0   ; 
- D 1 - I - 0x00A2E4 02:A2D4: 11        .byte $11   ; 
- D 1 - I - 0x00A2E5 02:A2D5: A0        .byte $A0   ; 
- D 1 - I - 0x00A2E6 02:A2D6: 00        .byte $00   ; 
- D 1 - I - 0x00A2E7 02:A2D7: A0        .byte $A0   ; 
- D 1 - I - 0x00A2E8 02:A2D8: 12        .byte $12   ; 
- D 1 - I - 0x00A2E9 02:A2D9: A0        .byte $A0   ; 
- D 1 - I - 0x00A2EA 02:A2DA: 01        .byte $01   ; 
- D 1 - I - 0x00A2EB 02:A2DB: A0        .byte $A0   ; 
- D 1 - I - 0x00A2EC 02:A2DC: 10        .byte $10   ; 
- D 1 - I - 0x00A2ED 02:A2DD: A0        .byte $A0   ; 
- D 1 - I - 0x00A2EE 02:A2DE: 02        .byte $02   ; 
- D 1 - I - 0x00A2EF 02:A2DF: A0        .byte $A0   ; 
- D 1 - I - 0x00A2F0 02:A2E0: 7F        .byte $7F   ; 



tbl_A2E1:
- D 1 - I - 0x00A2F1 02:A2E1: 15        .byte $15   ; 
- D 1 - I - 0x00A2F2 02:A2E2: B0        .byte $B0   ; 
- D 1 - I - 0x00A2F3 02:A2E3: 16        .byte $16   ; 
- D 1 - I - 0x00A2F4 02:A2E4: B0        .byte $B0   ; 
- D 1 - I - 0x00A2F5 02:A2E5: 05        .byte $05   ; 
- D 1 - I - 0x00A2F6 02:A2E6: B0        .byte $B0   ; 
- D 1 - I - 0x00A2F7 02:A2E7: 17        .byte $17   ; 
- D 1 - I - 0x00A2F8 02:A2E8: B0        .byte $B0   ; 
- D 1 - I - 0x00A2F9 02:A2E9: 06        .byte $06   ; 
- D 1 - I - 0x00A2FA 02:A2EA: B0        .byte $B0   ; 
- D 1 - I - 0x00A2FB 02:A2EB: 18        .byte $18   ; 
- D 1 - I - 0x00A2FC 02:A2EC: B0        .byte $B0   ; 
- D 1 - I - 0x00A2FD 02:A2ED: 07        .byte $07   ; 
- D 1 - I - 0x00A2FE 02:A2EE: B0        .byte $B0   ; 
- D 1 - I - 0x00A2FF 02:A2EF: 19        .byte $19   ; 
- D 1 - I - 0x00A300 02:A2F0: B0        .byte $B0   ; 
- D 1 - I - 0x00A301 02:A2F1: 08        .byte $08   ; 
- D 1 - I - 0x00A302 02:A2F2: B0        .byte $B0   ; 
- D 1 - I - 0x00A303 02:A2F3: 15        .byte $15   ; 
- D 1 - I - 0x00A304 02:A2F4: B0        .byte $B0   ; 
- D 1 - I - 0x00A305 02:A2F5: 09        .byte $09   ; 
- D 1 - I - 0x00A306 02:A2F6: B0        .byte $B0   ; 
- D 1 - I - 0x00A307 02:A2F7: 7F        .byte $7F   ; 



loc_A2F8:
C D 1 - - - 0x00A308 02:A2F8: AD 22 04  LDA ram_mission_hi
C - - - - - 0x00A30B 02:A2FB: C9 06     CMP #$06
C - - - - - 0x00A30D 02:A2FD: D0 29     BNE bra_A328_RTS
C - - - - - 0x00A30F 02:A2FF: AD 5D 06  LDA ram_065D
C - - - - - 0x00A312 02:A302: 85 19     STA ram_0019
C - - - - - 0x00A314 02:A304: C9 0A     CMP #$0A
C - - - - - 0x00A316 02:A306: B0 14     BCS bra_A31C
C - - - - - 0x00A318 02:A308: 20 E4 A1  JSR sub_A1E4
C - - - - - 0x00A31B 02:A30B: B0 0F     BCS bra_A31C
C - - - - - 0x00A31D 02:A30D: AD 54 06  LDA ram_0654
C - - - - - 0x00A320 02:A310: D0 0A     BNE bra_A31C
C - - - - - 0x00A322 02:A312: AC 5D 06  LDY ram_065D
C - - - - - 0x00A325 02:A315: C8        INY
C - - - - - 0x00A326 02:A316: 8C 54 06  STY ram_0654
C - - - - - 0x00A329 02:A319: EE 5D 06  INC ram_065D
bra_A31C:
C - - - - - 0x00A32C 02:A31C: AD 5D 06  LDA ram_065D
C - - - - - 0x00A32F 02:A31F: C9 03     CMP #$03
C - - - - - 0x00A331 02:A321: D0 05     BNE bra_A328_RTS
C - - - - - 0x00A333 02:A323: A9 05     LDA #$05
C - - - - - 0x00A335 02:A325: 8D 5D 06  STA ram_065D
bra_A328_RTS:
C - - - - - 0x00A338 02:A328: 60        RTS



sub_A329:
C - - - - - 0x00A339 02:A329: A5 D0     LDA ram_00D0
C - - - - - 0x00A33B 02:A32B: 38        SEC
C - - - - - 0x00A33C 02:A32C: E9 A0     SBC #< $00A0
C - - - - - 0x00A33E 02:A32E: A5 D1     LDA ram_00D1
C - - - - - 0x00A340 02:A330: E9 00     SBC #> $00A0
C - - - - - 0x00A342 02:A332: 90 10     BCC bra_A344_RTS
C - - - - - 0x00A344 02:A334: A9 70     LDA #$70
C - - - - - 0x00A346 02:A336: 38        SEC
C - - - - - 0x00A347 02:A337: E5 D0     SBC ram_00D0
C - - - - - 0x00A349 02:A339: A9 01     LDA #$01
C - - - - - 0x00A34B 02:A33B: E5 D1     SBC ram_00D1
C - - - - - 0x00A34D 02:A33D: 90 05     BCC bra_A344_RTS
C - - - - - 0x00A34F 02:A33F: A9 00     LDA #$00
C - - - - - 0x00A351 02:A341: 8D 5D 06  STA ram_065D
bra_A344_RTS:
C - - - - - 0x00A354 02:A344: 60        RTS



sub_A345:
C - - - - - 0x00A355 02:A345: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x00A358 02:A348: 10 59     BPL bra_A3A3_RTS
C - - - - - 0x00A35A 02:A34A: 29 7F     AND #$7F
C - - - - - 0x00A35C 02:A34C: A8        TAY
C - - - - - 0x00A35D 02:A34D: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x00A360 02:A350: A8        TAY
C - - - - - 0x00A361 02:A351: B9 A4 A3  LDA tbl_A3A4,Y
C - - - - - 0x00A364 02:A354: F0 4D     BEQ bra_A3A3_RTS
C - - - - - 0x00A366 02:A356: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x00A369 02:A359: 29 7F     AND #$7F
C - - - - - 0x00A36B 02:A35B: 9D 4A 04  STA ram_044A_obj,X
C - - - - - 0x00A36E 02:A35E: A8        TAY
C - - - - - 0x00A36F 02:A35F: B5 43     LDA ram_state,X
C - - - - - 0x00A371 02:A361: 29 7F     AND #$7F
C - - - - - 0x00A373 02:A363: C9 58     CMP #con_state_58
C - - - - - 0x00A375 02:A365: F0 03     BEQ bra_A36A
C - - - - - 0x00A377 02:A367: 20 66 A4  JSR sub_A466
bra_A36A:
C - - - - - 0x00A37A 02:A36A: A9 00     LDA #$00
C - - - - - 0x00A37C 02:A36C: 9D 46 04  STA ram_0446_obj,X
C - - - - - 0x00A37F 02:A36F: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x00A382 02:A372: 29 DF     AND #con_004A_20 ^ $FF
C - - - - - 0x00A384 02:A374: 99 4A 00  STA a: ram_004A_obj,Y
C - - - - - 0x00A387 02:A377: A9 10     LDA #$10
C - - - - - 0x00A389 02:A379: 85 29     STA ram_0029
C - - - - - 0x00A38B 02:A37B: 85 2A     STA ram_002A
C - - - - - 0x00A38D 02:A37D: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x00A390 02:A380: 10 04     BPL bra_A386
C - - - - - 0x00A392 02:A382: A9 F0     LDA #$F0
C - - - - - 0x00A394 02:A384: 85 29     STA ram_0029
bra_A386:
C - - - - - 0x00A396 02:A386: 20 EC 9F  JSR sub_9FEC
C - - - - - 0x00A399 02:A389: B9 0F 03  LDA ram_030F_obj,Y
C - - - - - 0x00A39C 02:A38C: 18        CLC
C - - - - - 0x00A39D 02:A38D: 69 80     ADC #$80
C - - - - - 0x00A39F 02:A38F: 99 0F 03  STA ram_030F_obj,Y
C - - - - - 0x00A3A2 02:A392: A9 1A     LDA #con_state_1A
C - - - - - 0x00A3A4 02:A394: 99 43 00  STA a: ram_state,Y
C - - - - - 0x00A3A7 02:A397: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x00A3AA 02:A39A: C9 12     CMP #$12
C - - - - - 0x00A3AC 02:A39C: 90 05     BCC bra_A3A3_RTS
; if weapon id
C - - - - - 0x00A3AE 02:A39E: A9 6C     LDA #con_state_6C
C - - - - - 0x00A3B0 02:A3A0: 99 43 00  STA a: ram_state,Y
bra_A3A3_RTS:
C - - - - - 0x00A3B3 02:A3A3: 60        RTS



tbl_A3A4:
- - - - - - 0x00A3B4 02:A3A4: FF        .byte $FF   ; 00 con_obj_billy
- - - - - - 0x00A3B5 02:A3A5: FF        .byte $FF   ; 01 con_obj_jimmy
- D 1 - - - 0x00A3B6 02:A3A6: FF        .byte $FF   ; 02 con_obj_williams
- D 1 - - - 0x00A3B7 02:A3A7: FF        .byte $FF   ; 03 con_obj_roper
- - - - - - 0x00A3B8 02:A3A8: FF        .byte $FF   ; 04 con_obj_linda
- - - - - - 0x00A3B9 02:A3A9: FF        .byte $FF   ; 05 con_obj_05
- - - - - - 0x00A3BA 02:A3AA: FF        .byte $FF   ; 06 con_obj_bolo
- - - - - - 0x00A3BB 02:A3AB: FF        .byte $FF   ; 07 con_obj_burnov
- - - - - - 0x00A3BC 02:A3AC: FF        .byte $FF   ; 08 con_obj_abore
- - - - - - 0x00A3BD 02:A3AD: FF        .byte $FF   ; 09 con_obj_chin_taimei
- - - - - - 0x00A3BE 02:A3AE: FF        .byte $FF   ; 0A con_obj_right_arm
- - - - - - 0x00A3BF 02:A3AF: FF        .byte $FF   ; 0B con_obj_0B
- - - - - - 0x00A3C0 02:A3B0: FF        .byte $FF   ; 0C con_obj_doppelganger
- - - - - - 0x00A3C1 02:A3B1: FF        .byte $FF   ; 0D con_obj_0D
- - - - - - 0x00A3C2 02:A3B2: FF        .byte $FF   ; 0E con_obj_0E
- - - - - - 0x00A3C3 02:A3B3: FF        .byte $FF   ; 0F con_obj_ninja
- - - - - - 0x00A3C4 02:A3B4: FF        .byte $FF   ; 10 con_obj_10
- - - - - - 0x00A3C5 02:A3B5: FF        .byte $FF   ; 11 con_obj_shadow_warrior
- D 1 - - - 0x00A3C6 02:A3B6: FF        .byte $FF   ; 12 con_obj_knife
- - - - - - 0x00A3C7 02:A3B7: 00        .byte $00   ; 13 con_obj_13
- D 1 - - - 0x00A3C8 02:A3B8: FF        .byte $FF   ; 14 con_obj_grenade
- D 1 - - - 0x00A3C9 02:A3B9: FF        .byte $FF   ; 15 con_obj_chain_whip
- D 1 - - - 0x00A3CA 02:A3BA: FF        .byte $FF   ; 16 con_obj_flame_grenades
- D 1 - - - 0x00A3CB 02:A3BB: FF        .byte $FF   ; 17 con_obj_baton
- - - - - - 0x00A3CC 02:A3BC: 00        .byte $00   ; 18 con_obj_18
- D 1 - - - 0x00A3CD 02:A3BD: 00        .byte $00   ; 19 con_obj_19
- D 1 - - - 0x00A3CE 02:A3BE: 00        .byte $00   ; 1A con_obj_1A
- - - - - - 0x00A3CF 02:A3BF: 00        .byte $00   ; 1B con_obj_jumping_spike
- D 1 - - - 0x00A3D0 02:A3C0: 00        .byte $00   ; 1C con_obj_fireball
- - - - - - 0x00A3D1 02:A3C1: 00        .byte $00   ; 1D con_obj_1D
- - - - - - 0x00A3D2 02:A3C2: 00        .byte $00   ; 1E con_obj_1E



sub_A3C3:
C - - - - - 0x00A3D3 02:A3C3: A2 04     LDX #$04
loc_A3C5_loop:
C D 1 - - - 0x00A3D5 02:A3C5: B5 3C     LDA ram_003C_obj,X ; 0040 0041 0042
C - - - - - 0x00A3D7 02:A3C7: 10 61     BPL bra_A42A    ; if not con_003C_80
C - - - - - 0x00A3D9 02:A3C9: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x00A3DB 02:A3CB: 29 20     AND #con_004A_20
C - - - - - 0x00A3DD 02:A3CD: D0 5B     BNE bra_A42A
C - - - - - 0x00A3DF 02:A3CF: B5 92     LDA ram_pos_Y_lo,X
C - - - - - 0x00A3E1 02:A3D1: 18        CLC
C - - - - - 0x00A3E2 02:A3D2: 75 AD     ADC ram_pos_Z_lo,X
C - - - - - 0x00A3E4 02:A3D4: 85 2B     STA ram_002B
C - - - - - 0x00A3E6 02:A3D6: B5 9B     LDA ram_pos_Y_hi,X
C - - - - - 0x00A3E8 02:A3D8: 75 B6     ADC ram_pos_Z_hi,X
C - - - - - 0x00A3EA 02:A3DA: 85 2C     STA ram_002C
C - - - - - 0x00A3EC 02:A3DC: A5 D0     LDA ram_00D0
C - - - - - 0x00A3EE 02:A3DE: 38        SEC
C - - - - - 0x00A3EF 02:A3DF: F5 77     SBC ram_pos_X_lo,X
C - - - - - 0x00A3F1 02:A3E1: 85 29     STA ram_0029
C - - - - - 0x00A3F3 02:A3E3: A5 D1     LDA ram_00D1
C - - - - - 0x00A3F5 02:A3E5: F5 80     SBC ram_pos_X_hi,X
C - - - - - 0x00A3F7 02:A3E7: 85 2A     STA ram_002A
C - - - - - 0x00A3F9 02:A3E9: 90 03     BCC bra_A3EE
C - - - - - 0x00A3FB 02:A3EB: 20 33 A4  JSR sub_A433
bra_A3EE:
C - - - - - 0x00A3FE 02:A3EE: B5 77     LDA ram_pos_X_lo,X
C - - - - - 0x00A400 02:A3F0: 38        SEC
C - - - - - 0x00A401 02:A3F1: E5 D0     SBC ram_00D0
C - - - - - 0x00A403 02:A3F3: 85 29     STA ram_0029
C - - - - - 0x00A405 02:A3F5: B5 80     LDA ram_pos_X_hi,X
C - - - - - 0x00A407 02:A3F7: E5 D1     SBC ram_00D1
C - - - - - 0x00A409 02:A3F9: 85 2A     STA ram_002A
C - - - - - 0x00A40B 02:A3FB: F0 07     BEQ bra_A404
C - - - - - 0x00A40D 02:A3FD: 90 05     BCC bra_A404
C - - - - - 0x00A40F 02:A3FF: C6 2A     DEC ram_002A
C - - - - - 0x00A411 02:A401: 20 33 A4  JSR sub_A433
bra_A404:
C - - - - - 0x00A414 02:A404: A5 D2     LDA ram_00D2
C - - - - - 0x00A416 02:A406: 38        SEC
C - - - - - 0x00A417 02:A407: E5 2B     SBC ram_002B
C - - - - - 0x00A419 02:A409: 85 29     STA ram_0029
C - - - - - 0x00A41B 02:A40B: A5 D3     LDA ram_00D3
C - - - - - 0x00A41D 02:A40D: E5 2C     SBC ram_002C
C - - - - - 0x00A41F 02:A40F: 85 2A     STA ram_002A
C - - - - - 0x00A421 02:A411: 90 03     BCC bra_A416
C - - - - - 0x00A423 02:A413: 20 33 A4  JSR sub_A433
bra_A416:
C - - - - - 0x00A426 02:A416: A5 2B     LDA ram_002B
C - - - - - 0x00A428 02:A418: 38        SEC
C - - - - - 0x00A429 02:A419: E5 D2     SBC ram_00D2
C - - - - - 0x00A42B 02:A41B: 85 29     STA ram_0029
C - - - - - 0x00A42D 02:A41D: A5 2C     LDA ram_002C
C - - - - - 0x00A42F 02:A41F: E5 D3     SBC ram_00D3
C - - - - - 0x00A431 02:A421: 85 2A     STA ram_002A
C - - - - - 0x00A433 02:A423: F0 05     BEQ bra_A42A
C - - - - - 0x00A435 02:A425: 90 03     BCC bra_A42A
C - - - - - 0x00A437 02:A427: 20 33 A4  JSR sub_A433
bra_A42A:
C - - - - - 0x00A43A 02:A42A: E8        INX
C - - - - - 0x00A43B 02:A42B: E0 07     CPX #$07
C - - - - - 0x00A43D 02:A42D: B0 03     BCS bra_A432_RTS
C - - - - - 0x00A43F 02:A42F: 4C C5 A3  JMP loc_A3C5_loop
bra_A432_RTS:
C - - - - - 0x00A442 02:A432: 60        RTS



sub_A433:
C - - - - - 0x00A443 02:A433: A5 29     LDA ram_0029
C - - - - - 0x00A445 02:A435: 38        SEC
C - - - - - 0x00A446 02:A436: E9 60     SBC #< $0060
C - - - - - 0x00A448 02:A438: A5 2A     LDA ram_002A
C - - - - - 0x00A44A 02:A43A: E9 00     SBC #> $0060
C - - - - - 0x00A44C 02:A43C: 90 04     BCC bra_A442_RTS
C - - - - - 0x00A44E 02:A43E: A9 00     LDA #con_003C_00
C - - - - - 0x00A450 02:A440: 95 3C     STA ram_003C_obj,X ; 0040 0041 0042
bra_A442_RTS:
C - - - - - 0x00A452 02:A442: 60        RTS



sub_A443:
C - - - - - 0x00A453 02:A443: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x00A456 02:A446: 10 09     BPL bra_A451_RTS
C - - - - - 0x00A458 02:A448: 29 7F     AND #$7F
C - - - - - 0x00A45A 02:A44A: C9 04     CMP #$04
C - - - - - 0x00A45C 02:A44C: B0 03     BCS bra_A451_RTS
C - - - - - 0x00A45E 02:A44E: 20 45 A3  JSR sub_A345
bra_A451_RTS:
C - - - - - 0x00A461 02:A451: 60        RTS



sub_A452:
C - - - - - 0x00A462 02:A452: 84 1B     STY ram_001B
C - - - - - 0x00A464 02:A454: 85 1C     STA ram_001C
C - - - - - 0x00A466 02:A456: A5 19     LDA ram_0019
C - - - - - 0x00A468 02:A458: 48        PHA
C - - - - - 0x00A469 02:A459: A5 1C     LDA ram_001C
C - - - - - 0x00A46B 02:A45B: 20 FB BD  JSR sub_BDFB
C - - - - - 0x00A46E 02:A45E: 68        PLA
C - - - - - 0x00A46F 02:A45F: 85 19     STA ram_0019
C - - - - - 0x00A471 02:A461: A4 1C     LDY ram_001C
C - - - - - 0x00A473 02:A463: A6 19     LDX ram_0019
C - - - - - 0x00A475 02:A465: 60        RTS



sub_A466:
C - - - - - 0x00A476 02:A466: BD 59 03  LDA ram_0359_obj,X
C - - - - - 0x00A479 02:A469: 99 59 03  STA ram_0359_obj,Y
C - - - - - 0x00A47C 02:A46C: BD 61 03  LDA ram_0361_obj,X
C - - - - - 0x00A47F 02:A46F: 99 61 03  STA ram_0361_obj,Y
C - - - - - 0x00A482 02:A472: 60        RTS



sub_A473:
C - - - - - 0x00A483 02:A473: B5 92     LDA ram_pos_Y_lo,X
C - - - - - 0x00A485 02:A475: 38        SEC
C - - - - - 0x00A486 02:A476: F9 92 00  SBC a: ram_pos_Y_lo,Y
C - - - - - 0x00A489 02:A479: F0 0E     BEQ bra_A489_RTS
C - - - - - 0x00A48B 02:A47B: F6 92     INC ram_pos_Y_lo,X
C - - - - - 0x00A48D 02:A47D: F6 92     INC ram_pos_Y_lo,X
C - - - - - 0x00A48F 02:A47F: 90 08     BCC bra_A489_RTS
C - - - - - 0x00A491 02:A481: D6 92     DEC ram_pos_Y_lo,X
C - - - - - 0x00A493 02:A483: D6 92     DEC ram_pos_Y_lo,X
C - - - - - 0x00A495 02:A485: D6 92     DEC ram_pos_Y_lo,X
C - - - - - 0x00A497 02:A487: D6 92     DEC ram_pos_Y_lo,X
bra_A489_RTS:
C - - - - - 0x00A499 02:A489: 60        RTS



sub_A48A_set_pointers_for_2_tables:
C - - - - - 0x00A49A 02:A48A: 0A        ASL
C - - - - - 0x00A49B 02:A48B: 0A        ASL
C - - - - - 0x00A49C 02:A48C: A8        TAY
C - - - - - 0x00A49D 02:A48D: B9 AA A4  LDA tbl_A4AA,Y
C - - - - - 0x00A4A0 02:A490: 85 29     STA ram_0029
C - - - - - 0x00A4A2 02:A492: B9 AB A4  LDA tbl_A4AA + $01,Y
C - - - - - 0x00A4A5 02:A495: 85 2A     STA ram_002A
C - - - - - 0x00A4A7 02:A497: B9 AC A4  LDA tbl_A4AA + $02,Y
C - - - - - 0x00A4AA 02:A49A: 85 2B     STA ram_002B
C - - - - - 0x00A4AC 02:A49C: B9 AD A4  LDA tbl_A4AA + $03,Y
C - - - - - 0x00A4AF 02:A49F: 85 2C     STA ram_002C
C - - - - - 0x00A4B1 02:A4A1: 20 AB 9F  JSR sub_9FAB
C - - - - - 0x00A4B4 02:A4A4: 20 F8 9D  JSR sub_9DF8
C - - - - - 0x00A4B7 02:A4A7: A6 19     LDX ram_0019
C - - - - - 0x00A4B9 02:A4A9: 60        RTS



tbl_A4AA:
- D 1 - - - 0x00A4BA 02:A4AA: 7A 82     .word _off000_827A_00
- D 1 - - - 0x00A4BC 02:A4AC: 81 82     .word _off001_8281_00
- D 1 - - - 0x00A4BE 02:A4AE: 92 84     .word _off000_8492_01
- D 1 - - - 0x00A4C0 02:A4B0: 97 84     .word _off001_8497_01
- D 1 - - - 0x00A4C2 02:A4B2: 92 84     .word _off000_8492_02
- D 1 - - - 0x00A4C4 02:A4B4: 4C 85     .word _off001_854C_02
- D 1 - - - 0x00A4C6 02:A4B6: 9A 85     .word _off000_859A_03
- D 1 - - - 0x00A4C8 02:A4B8: A1 85     .word _off001_85A1_03
- D 1 - - - 0x00A4CA 02:A4BA: C9 85     .word _off000_85C9_04
- D 1 - - - 0x00A4CC 02:A4BC: CD 85     .word _off001_85CD_04
- D 1 - - - 0x00A4CE 02:A4BE: 26 86     .word _off000_8626_05
- D 1 - - - 0x00A4D0 02:A4C0: 2A 86     .word _off001_862A_05
- D 1 - - - 0x00A4D2 02:A4C2: 04 89     .word _off000_8904_06
- D 1 - - - 0x00A4D4 02:A4C4: 0A 89     .word _off001_890A_06
- - - - - - 0x00A4D6 02:A4C6: 07 89     .word _off000_8907_07
- - - - - - 0x00A4D8 02:A4C8: 0A 89     .word _off001_890A_07
- D 1 - - - 0x00A4DA 02:A4CA: 3A 8A     .word _off000_8A3A_08
- D 1 - - - 0x00A4DC 02:A4CC: 4D 8A     .word _off001_8A4D_08
- D 1 - - - 0x00A4DE 02:A4CE: 1A 8B     .word _off000_8B1A_09
- D 1 - - - 0x00A4E0 02:A4D0: 1C 8B     .word _off001_8B1C_09
- D 1 - - - 0x00A4E2 02:A4D2: 25 8B     .word _off000_8B25_0A
- D 1 - - - 0x00A4E4 02:A4D4: 2D 8B     .word _off001_8B2D_0A
- D 1 - - - 0x00A4E6 02:A4D6: 86 8B     .word _off000_8B86_0B
- D 1 - - - 0x00A4E8 02:A4D8: 8F 8B     .word _off001_8B8F_0B
- D 1 - - - 0x00A4EA 02:A4DA: D0 8B     .word _off000_8BD0_0C
- D 1 - - - 0x00A4EC 02:A4DC: DF 8B     .word _off001_8BDF_0C
- D 1 - - - 0x00A4EE 02:A4DE: 44 8C     .word _off000_8C44_0D
- D 1 - - - 0x00A4F0 02:A4E0: 4E 8C     .word _off001_8C4E_0D
- D 1 - - - 0x00A4F2 02:A4E2: 83 8C     .word _off000_8C83_0E
- D 1 - - - 0x00A4F4 02:A4E4: 8C 8C     .word _off001_8C8C_0E
- - - - - - 0x00A4F6 02:A4E6: F1 8C     .word _off000_8CF1_0F
- - - - - - 0x00A4F8 02:A4E8: E5 8C     .word _off001_8CE5_0F
- - - - - - 0x00A4FA 02:A4EA: F5 8C     .word _off000_8CF5_10
- - - - - - 0x00A4FC 02:A4EC: E5 8C     .word _off001_8CE5_10
- D 1 - - - 0x00A4FE 02:A4EE: 15 8D     .word _off000_8D15_11
- D 1 - - - 0x00A500 02:A4F0: 19 8D     .word _off001_8D19_11
- D 1 - - - 0x00A502 02:A4F2: 2D 8D     .word _off000_8D2D_12
- D 1 - - - 0x00A504 02:A4F4: 29 8D     .word _off001_8D29_12
- D 1 - - - 0x00A506 02:A4F6: 89 8D     .word _off000_8D89_13
- D 1 - - - 0x00A508 02:A4F8: 85 8D     .word _off001_8D85_13
- D 1 - - - 0x00A50A 02:A4FA: 9B 8D     .word _off000_8D9B_14
- D 1 - - - 0x00A50C 02:A4FC: 85 8D     .word _off001_8D85_14
- D 1 - - - 0x00A50E 02:A4FE: C9 8D     .word _off000_8DC9_15
- D 1 - - - 0x00A510 02:A500: CD 8D     .word _off001_8DCD_15
- D 1 - - - 0x00A512 02:A502: F1 8D     .word _off000_8DF1_16
- D 1 - - - 0x00A514 02:A504: F7 8D     .word _off001_8DF7_16
- D 1 - - - 0x00A516 02:A506: 2F 8E     .word _off000_8E2F_17
- D 1 - - - 0x00A518 02:A508: 38 8E     .word _off001_8E38_17
- - - - - - 0x00A51A 02:A50A: 53 8E     .word _off000_8E53_18
- - - - - - 0x00A51C 02:A50C: 57 8E     .word _off001_8E57_18
- D 1 - - - 0x00A51E 02:A50E: 78 8E     .word _off000_8E78_19
- D 1 - - - 0x00A520 02:A510: 76 8E     .word _off001_8E76_19
- D 1 - - - 0x00A522 02:A512: 8D 8E     .word _off000_8E8D_1A
- D 1 - - - 0x00A524 02:A514: 96 8E     .word _off001_8E96_1A
- D 1 - - - 0x00A526 02:A516: 0C 8F     .word _off000_8F0C_1B
- D 1 - - - 0x00A528 02:A518: 10 8F     .word _off001_8F10_1B
- D 1 - - - 0x00A52A 02:A51A: 76 8F     .word _off000_8F76_1C
- D 1 - - - 0x00A52C 02:A51C: 7D 8F     .word _off001_8F7D_1C
- D 1 - - - 0x00A52E 02:A51E: 79 8F     .word _off000_8F79_1D
- D 1 - - - 0x00A530 02:A520: 7D 8F     .word _off001_8F7D_1D
- D 1 - - - 0x00A532 02:A522: D7 8F     .word _off000_8FD7_1E
- D 1 - - - 0x00A534 02:A524: DE 8F     .word _off001_8FDE_1E
- D 1 - - - 0x00A536 02:A526: C5 90     .word _off000_90C5_1F
- D 1 - - - 0x00A538 02:A528: CC 90     .word _off001_90CC_1F
- D 1 - - - 0x00A53A 02:A52A: 23 91     .word _off000_9123_20
- D 1 - - - 0x00A53C 02:A52C: 2A 91     .word _off001_912A_20
- - - - - - 0x00A53E 02:A52E: 8B 91     .word _off000_918B_21
- - - - - - 0x00A540 02:A530: 8E 91     .word _off001_918E_21
- D 1 - - - 0x00A542 02:A532: CD 91     .word _off000_91CD_22
- D 1 - - - 0x00A544 02:A534: D0 91     .word _off001_91D0_22
- D 1 - - - 0x00A546 02:A536: FD 91     .word _off000_91FD_23
- D 1 - - - 0x00A548 02:A538: 03 92     .word _off001_9203_23
- D 1 - - - 0x00A54A 02:A53A: 22 92     .word _off000_9222_24
- D 1 - - - 0x00A54C 02:A53C: 28 92     .word _off001_9228_24
- D 1 - - - 0x00A54E 02:A53E: 4E 92     .word _off000_924E_25
- D 1 - - - 0x00A550 02:A540: 52 92     .word _off001_9252_25
- D 1 - - - 0x00A552 02:A542: AB 92     .word _off000_92AB_26
- D 1 - - - 0x00A554 02:A544: B5 92     .word _off001_92B5_26
- D 1 - - - 0x00A556 02:A546: 26 93     .word _off000_9326_27
- D 1 - - - 0x00A558 02:A548: 2B 93     .word _off001_932B_27
- D 1 - - - 0x00A55A 02:A54A: AE 94     .word _off000_94AE_28
- D 1 - - - 0x00A55C 02:A54C: B2 94     .word _off001_94B2_28
- D 1 - - - 0x00A55E 02:A54E: 21 95     .word _off000_9521_29
- D 1 - - - 0x00A560 02:A550: 24 95     .word _off001_9524_29
- D 1 - - - 0x00A562 02:A552: AA 95     .word _off000_95AA_2A
- D 1 - - - 0x00A564 02:A554: AD 95     .word _off001_95AD_2A
- D 1 - - - 0x00A566 02:A556: 1E 96     .word _off000_961E_2B
- D 1 - - - 0x00A568 02:A558: 22 96     .word _off001_9622_2B
- D 1 - - - 0x00A56A 02:A55A: DC 96     .word _off000_96DC_2C
- D 1 - - - 0x00A56C 02:A55C: E2 96     .word _off001_96E2_2C
- D 1 - - - 0x00A56E 02:A55E: 1A 98     .word _off000_981A_2D
- D 1 - - - 0x00A570 02:A560: 26 98     .word _off001_9826_2D
- D 1 - - - 0x00A572 02:A562: 56 98     .word _off000_9856_2E
- D 1 - - - 0x00A574 02:A564: 61 98     .word _off001_9861_2E
- D 1 - - - 0x00A576 02:A566: C5 90     .word _off000_90C5_2F
- D 1 - - - 0x00A578 02:A568: C9 90     .word _off001_90C9_2F
- D 1 - - - 0x00A57A 02:A56A: A4 99     .word _off000_99A4_30
- D 1 - - - 0x00A57C 02:A56C: BB 99     .word _off001_99BB_30
- D 1 - - - 0x00A57E 02:A56E: F0 99     .word _off000_99F0_31
- D 1 - - - 0x00A580 02:A570: F5 99     .word _off001_99F5_31
- D 1 - - - 0x00A582 02:A572: 33 9A     .word _off000_9A33_32
- D 1 - - - 0x00A584 02:A574: 39 9A     .word _off001_9A39_32
- D 1 - - - 0x00A586 02:A576: 6A 9A     .word _off000_9A6A_33
- D 1 - - - 0x00A588 02:A578: 6F 9A     .word _off001_9A6F_33
- D 1 - - - 0x00A58A 02:A57A: 66 9B     .word _off000_9B66_34
- D 1 - - - 0x00A58C 02:A57C: 70 9B     .word _off001_9B70_34
- D 1 - - - 0x00A58E 02:A57E: A4 9B     .word _off000_9BA4_35
- D 1 - - - 0x00A590 02:A580: A7 9B     .word _off001_9BA7_35
- D 1 - - - 0x00A592 02:A582: 00 9C     .word _off000_9C00_36
- D 1 - - - 0x00A594 02:A584: 03 9C     .word _off001_9C03_36
- D 1 - - - 0x00A596 02:A586: 2E 9C     .word _off000_9C2E_37
- D 1 - - - 0x00A598 02:A588: 31 9C     .word _off001_9C31_37
- D 1 - - - 0x00A59A 02:A58A: 7D 9C     .word _off000_9C7D_38
- D 1 - - - 0x00A59C 02:A58C: 88 9C     .word _off001_9C88_38
- D 1 - - - 0x00A59E 02:A58E: F6 9C     .word _off000_9CF6_39
- D 1 - - - 0x00A5A0 02:A590: FB 9C     .word _off001_9CFB_39
- D 1 - - - 0x00A5A2 02:A592: 1B 9D     .word _off000_9D1B_3A
- D 1 - - - 0x00A5A4 02:A594: 1E 9D     .word _off001_9D1E_3A
- D 1 - - - 0x00A5A6 02:A596: C5 98     .word _off000_98C5_3B
- D 1 - - - 0x00A5A8 02:A598: CA 98     .word _off001_98CA_3B
- D 1 - - - 0x00A5AA 02:A59A: EA 98     .word _off000_98EA_3C
- D 1 - - - 0x00A5AC 02:A59C: F6 98     .word _off001_98F6_3C
- D 1 - - - 0x00A5AE 02:A59E: 3C 99     .word _off000_993C_3D
- D 1 - - - 0x00A5B0 02:A5A0: 3F 99     .word _off001_993F_3D
- D 1 - - - 0x00A5B2 02:A5A2: 3C 8B     .word _off000_8B3C_3E
- D 1 - - - 0x00A5B4 02:A5A4: 3E 8B     .word _off001_8B3E_3E
- D 1 - - - 0x00A5B6 02:A5A6: A9 9D     .word _off000_9DA9_3F
- D 1 - - - 0x00A5B8 02:A5A8: AC 9D     .word _off001_9DAC_3F


; bzk garbage
- - - - - - 0x00A5BA 02:A5AA: 00        .byte $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A5C0 02:A5B0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A5D0 02:A5C0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A5E0 02:A5D0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A5F0 02:A5E0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A600 02:A5F0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A610 02:A600: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A620 02:A610: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A630 02:A620: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A640 02:A630: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A650 02:A640: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A660 02:A650: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A670 02:A660: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A680 02:A670: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A690 02:A680: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A6A0 02:A690: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A6B0 02:A6A0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A6C0 02:A6B0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A6D0 02:A6C0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A6E0 02:A6D0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A6F0 02:A6E0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A700 02:A6F0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A710 02:A700: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A720 02:A710: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A730 02:A720: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A740 02:A730: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A750 02:A740: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A760 02:A750: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A770 02:A760: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A780 02:A770: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A790 02:A780: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A7A0 02:A790: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A7B0 02:A7A0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A7C0 02:A7B0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A7D0 02:A7C0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A7E0 02:A7D0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A7F0 02:A7E0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00A800 02:A7F0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



loc_A800:
C D 1 - - - 0x00A810 02:A800: 20 5E A8  JSR sub_A85E
C - - - - - 0x00A813 02:A803: 20 5E A8  JSR sub_A85E
C - - - - - 0x00A816 02:A806: 20 5E A8  JSR sub_A85E
C - - - - - 0x00A819 02:A809: A5 3A     LDA ram_003A
C - - - - - 0x00A81B 02:A80B: CD B2 05  CMP ram_05B2
C - - - - - 0x00A81E 02:A80E: F0 4D     BEQ bra_A85D_RTS
C - - - - - 0x00A820 02:A810: 8D B2 05  STA ram_05B2
C - - - - - 0x00A823 02:A813: AD 22 04  LDA ram_mission_hi
C - - - - - 0x00A826 02:A816: 0A        ASL
C - - - - - 0x00A827 02:A817: A8        TAY
C - - - - - 0x00A828 02:A818: B9 91 AC  LDA tbl_AC91,Y
C - - - - - 0x00A82B 02:A81B: 85 29     STA ram_0029
C - - - - - 0x00A82D 02:A81D: B9 92 AC  LDA tbl_AC91 + $01,Y
C - - - - - 0x00A830 02:A820: 85 2A     STA ram_002A
C - - - - - 0x00A832 02:A822: A2 30     LDX #$30
C - - - - - 0x00A834 02:A824: A5 3A     LDA ram_003A
C - - - - - 0x00A836 02:A826: 29 02     AND #$02
C - - - - - 0x00A838 02:A828: D0 02     BNE bra_A82C
C - - - - - 0x00A83A 02:A82A: A2 70     LDX #$70
bra_A82C:
C - - - - - 0x00A83C 02:A82C: A0 00     LDY #$00
bra_A82E_loop:
C - - - - - 0x00A83E 02:A82E: B1 29     LDA (ram_0029),Y
C - - - - - 0x00A840 02:A830: 9D BD 05  STA ram_05BD,X
C - - - - - 0x00A843 02:A833: E8        INX
C - - - - - 0x00A844 02:A834: C8        INY
C - - - - - 0x00A845 02:A835: C0 10     CPY #$10
C - - - - - 0x00A847 02:A837: 90 F5     BCC bra_A82E_loop
C - - - - - 0x00A849 02:A839: A9 02     LDA #$02
C - - - - - 0x00A84B 02:A83B: 8D 85 04  STA ram_0485
C - - - - - 0x00A84E 02:A83E: 8A        TXA
C - - - - - 0x00A84F 02:A83F: A2 20     LDX #$20
C - - - - - 0x00A851 02:A841: C9 50     CMP #$50
C - - - - - 0x00A853 02:A843: 90 07     BCC bra_A84C
C - - - - - 0x00A855 02:A845: A2 60     LDX #$60
C - - - - - 0x00A857 02:A847: A9 08     LDA #$08
C - - - - - 0x00A859 02:A849: 8D 85 04  STA ram_0485
bra_A84C:
C - - - - - 0x00A85C 02:A84C: EC B1 05  CPX ram_05B1
C - - - - - 0x00A85F 02:A84F: B0 03     BCS bra_A854
C - - - - - 0x00A861 02:A851: 8E B1 05  STX ram_05B1
bra_A854:
C - - - - - 0x00A864 02:A854: 20 5E A8  JSR sub_A85E
C - - - - - 0x00A867 02:A857: 20 5E A8  JSR sub_A85E
C - - - - - 0x00A86A 02:A85A: 20 5E A8  JSR sub_A85E
bra_A85D_RTS:
C - - - - - 0x00A86D 02:A85D: 60        RTS



sub_A85E:
C - - - - - 0x00A86E 02:A85E: A9 60     LDA #con_E2E6 + $60
C - - - - - 0x00A870 02:A860: 20 00 C0  JSR sub_0x01C010
C - - - - - 0x00A873 02:A863: B0 1B     BCS bra_A880_RTS
C - - - - - 0x00A875 02:A865: AD 85 04  LDA ram_0485
C - - - - - 0x00A878 02:A868: C9 0C     CMP #$0C
C - - - - - 0x00A87A 02:A86A: 90 05     BCC bra_A871_not_overflow
C - - - - - 0x00A87C 02:A86C: A9 00     LDA #$00
C - - - - - 0x00A87E 02:A86E: 8D 85 04  STA ram_0485
bra_A871_not_overflow:
C - - - - - 0x00A881 02:A871: 0A        ASL
C - - - - - 0x00A882 02:A872: A8        TAY
C - - - - - 0x00A883 02:A873: B9 81 A8  LDA tbl_A881,Y
C - - - - - 0x00A886 02:A876: 85 29     STA ram_0029
C - - - - - 0x00A888 02:A878: B9 82 A8  LDA tbl_A881 + $01,Y
C - - - - - 0x00A88B 02:A87B: 85 2A     STA ram_002A
C - - - - - 0x00A88D 02:A87D: 6C 29 00  JMP (ram_0029)
bra_A880_RTS:
C - - - - - 0x00A890 02:A880: 60        RTS



tbl_A881:
- D 1 - - - 0x00A891 02:A881: 99 A8     .word ofs_002_A899_00
- D 1 - - - 0x00A893 02:A883: BA A8     .word ofs_002_A8BA_01
- D 1 - - - 0x00A895 02:A885: 31 A9     .word ofs_002_A931_02
- D 1 - - - 0x00A897 02:A887: DF A9     .word ofs_002_A9DF_03
- D 1 - - - 0x00A899 02:A889: 55 AA     .word ofs_002_AA55_04
- D 1 - - - 0x00A89B 02:A88B: 1E AB     .word ofs_002_AB1E_05
- D 1 - - - 0x00A89D 02:A88D: 63 AB     .word ofs_002_AB63_06
- D 1 - - - 0x00A89F 02:A88F: 7A AB     .word ofs_002_AB7A_07
- D 1 - - - 0x00A8A1 02:A891: 95 AB     .word ofs_002_AB95_08
- D 1 - - - 0x00A8A3 02:A893: B0 AB     .word ofs_002_ABB0_09
- D 1 - - - 0x00A8A5 02:A895: CB AB     .word ofs_002_ABCB_0A
- D 1 - - - 0x00A8A7 02:A897: E6 AB     .word ofs_002_ABE6_0B



ofs_002_A899_00:
C - - J - - 0x00A8A9 02:A899: A5 3A     LDA ram_003A
C - - - - - 0x00A8AB 02:A89B: 29 02     AND #$02
C - - - - - 0x00A8AD 02:A89D: D0 06     BNE bra_A8A5
C - - - - - 0x00A8AF 02:A89F: A5 E6     LDA ram_00E6
C - - - - - 0x00A8B1 02:A8A1: C9 C8     CMP #$C8
C - - - - - 0x00A8B3 02:A8A3: 90 11     BCC bra_A8B6
bra_A8A5:
C - - - - - 0x00A8B5 02:A8A5: A9 23     LDA #$23
C - - - - - 0x00A8B7 02:A8A7: A0 00     LDY #$00
loc_A8A9:
C D 1 - - - 0x00A8B9 02:A8A9: 20 FE AB  JSR sub_ABFE
C - - - - - 0x00A8BC 02:A8AC: A9 00     LDA #$00
C - - - - - 0x00A8BE 02:A8AE: A0 20     LDY #$20
C - - - - - 0x00A8C0 02:A8B0: 20 7B AC  JSR sub_AC7B
C - - - - - 0x00A8C3 02:A8B3: 8E BC 05  STX ram_05BC
bra_A8B6:
C - - - - - 0x00A8C6 02:A8B6: EE 85 04  INC ram_0485
C - - - - - 0x00A8C9 02:A8B9: 60        RTS



ofs_002_A8BA_01:
C - - J - - 0x00A8CA 02:A8BA: AD 3A 00  LDA a: ram_003A
C - - - - - 0x00A8CD 02:A8BD: 29 02     AND #$02
C - - - - - 0x00A8CF 02:A8BF: D0 0A     BNE bra_A8CB
C - - - - - 0x00A8D1 02:A8C1: A5 E6     LDA ram_00E6
C - - - - - 0x00A8D3 02:A8C3: C9 08     CMP #$08
C - - - - - 0x00A8D5 02:A8C5: 90 04     BCC bra_A8CB
C - - - - - 0x00A8D7 02:A8C7: C9 D0     CMP #$D0
C - - - - - 0x00A8D9 02:A8C9: 90 22     BCC bra_A8ED
bra_A8CB:
C - - - - - 0x00A8DB 02:A8CB: A9 23     LDA #$23
C - - - - - 0x00A8DD 02:A8CD: A0 20     LDY #$20
loc_A8CF:
C D 1 - - - 0x00A8DF 02:A8CF: 20 FE AB  JSR sub_ABFE
C - - - - - 0x00A8E2 02:A8D2: A9 F1     LDA #< tbl_A8F1
C - - - - - 0x00A8E4 02:A8D4: 85 29     STA ram_0029
C - - - - - 0x00A8E6 02:A8D6: A9 A8     LDA #> tbl_A8F1
C - - - - - 0x00A8E8 02:A8D8: 85 2A     STA ram_002A
C - - - - - 0x00A8EA 02:A8DA: AD 34 00  LDA a: ram_game_mode
C - - - - - 0x00A8ED 02:A8DD: 10 08     BPL bra_A8E7    ; if not con_gm_80
C - - - - - 0x00A8EF 02:A8DF: A9 11     LDA #< tbl_A911
C - - - - - 0x00A8F1 02:A8E1: 85 29     STA ram_0029
C - - - - - 0x00A8F3 02:A8E3: A9 A9     LDA #> tbl_A911
C - - - - - 0x00A8F5 02:A8E5: 85 2A     STA ram_002A
bra_A8E7:
C - - - - - 0x00A8F7 02:A8E7: 20 83 AC  JSR sub_AC83
C - - - - - 0x00A8FA 02:A8EA: 8E BC 05  STX ram_05BC
bra_A8ED:
C - - - - - 0x00A8FD 02:A8ED: EE 85 04  INC ram_0485
C - - - - - 0x00A900 02:A8F0: 60        RTS



tbl_A8F1:
- D 1 - I - 0x00A901 02:A8F1: 00        .byte $00   ; 
- D 1 - I - 0x00A902 02:A8F2: 00        .byte $00   ; 
- D 1 - I - 0x00A903 02:A8F3: D2        .byte $D2   ; 
- D 1 - I - 0x00A904 02:A8F4: D0        .byte $D0   ; 
- D 1 - I - 0x00A905 02:A8F5: 00        .byte $00   ; 
- D 1 - I - 0x00A906 02:A8F6: 00        .byte $00   ; 
- D 1 - I - 0x00A907 02:A8F7: 00        .byte $00   ; 
- D 1 - I - 0x00A908 02:A8F8: 00        .byte $00   ; 
- D 1 - I - 0x00A909 02:A8F9: 00        .byte $00   ; 
- D 1 - I - 0x00A90A 02:A8FA: 00        .byte $00   ; 
- D 1 - I - 0x00A90B 02:A8FB: 00        .byte $00   ; 
- D 1 - I - 0x00A90C 02:A8FC: 00        .byte $00   ; 
- D 1 - I - 0x00A90D 02:A8FD: D8        .byte $D8   ; 
- D 1 - I - 0x00A90E 02:A8FE: D9        .byte $D9   ; 
- D 1 - I - 0x00A90F 02:A8FF: D9        .byte $D9   ; 
- D 1 - I - 0x00A910 02:A900: D9        .byte $D9   ; 
- D 1 - I - 0x00A911 02:A901: D9        .byte $D9   ; 
- D 1 - I - 0x00A912 02:A902: D9        .byte $D9   ; 
- D 1 - I - 0x00A913 02:A903: D9        .byte $D9   ; 
- D 1 - I - 0x00A914 02:A904: DA        .byte $DA   ; 
- D 1 - I - 0x00A915 02:A905: D2        .byte $D2   ; 
- D 1 - I - 0x00A916 02:A906: D1        .byte $D1   ; 
- D 1 - I - 0x00A917 02:A907: 00        .byte $00   ; 
- D 1 - I - 0x00A918 02:A908: 00        .byte $00   ; 
- D 1 - I - 0x00A919 02:A909: 00        .byte $00   ; 
- D 1 - I - 0x00A91A 02:A90A: 00        .byte $00   ; 
- D 1 - I - 0x00A91B 02:A90B: 00        .byte $00   ; 
- D 1 - I - 0x00A91C 02:A90C: 00        .byte $00   ; 
- D 1 - I - 0x00A91D 02:A90D: 00        .byte $00   ; 
- D 1 - I - 0x00A91E 02:A90E: 00        .byte $00   ; 
- D 1 - I - 0x00A91F 02:A90F: 00        .byte $00   ; 
- D 1 - I - 0x00A920 02:A910: 00        .byte $00   ; 



tbl_A911:
- D 1 - I - 0x00A921 02:A911: 00        .byte $00   ; 
- D 1 - I - 0x00A922 02:A912: 00        .byte $00   ; 
- D 1 - I - 0x00A923 02:A913: D2        .byte $D2   ; 
- D 1 - I - 0x00A924 02:A914: D0        .byte $D0   ; 
- D 1 - I - 0x00A925 02:A915: 00        .byte $00   ; 
- D 1 - I - 0x00A926 02:A916: 00        .byte $00   ; 
- D 1 - I - 0x00A927 02:A917: 00        .byte $00   ; 
- D 1 - I - 0x00A928 02:A918: 00        .byte $00   ; 
- D 1 - I - 0x00A929 02:A919: 00        .byte $00   ; 
- D 1 - I - 0x00A92A 02:A91A: 00        .byte $00   ; 
- D 1 - I - 0x00A92B 02:A91B: 00        .byte $00   ; 
- D 1 - I - 0x00A92C 02:A91C: 00        .byte $00   ; 
- D 1 - I - 0x00A92D 02:A91D: D8        .byte $D8   ; 
- D 1 - I - 0x00A92E 02:A91E: D9        .byte $D9   ; 
- D 1 - I - 0x00A92F 02:A91F: D9        .byte $D9   ; 
- D 1 - I - 0x00A930 02:A920: D9        .byte $D9   ; 
- D 1 - I - 0x00A931 02:A921: D9        .byte $D9   ; 
- D 1 - I - 0x00A932 02:A922: D9        .byte $D9   ; 
- D 1 - I - 0x00A933 02:A923: D9        .byte $D9   ; 
- D 1 - I - 0x00A934 02:A924: DA        .byte $DA   ; 
- D 1 - I - 0x00A935 02:A925: D2        .byte $D2   ; 
- D 1 - I - 0x00A936 02:A926: D1        .byte $D1   ; 
- D 1 - I - 0x00A937 02:A927: 00        .byte $00   ; 
- D 1 - I - 0x00A938 02:A928: 00        .byte $00   ; 
- D 1 - I - 0x00A939 02:A929: 00        .byte $00   ; 
- D 1 - I - 0x00A93A 02:A92A: 00        .byte $00   ; 
- D 1 - I - 0x00A93B 02:A92B: 00        .byte $00   ; 
- D 1 - I - 0x00A93C 02:A92C: 00        .byte $00   ; 
- D 1 - I - 0x00A93D 02:A92D: 00        .byte $00   ; 
- D 1 - I - 0x00A93E 02:A92E: 00        .byte $00   ; 
- D 1 - I - 0x00A93F 02:A92F: 00        .byte $00   ; 
- D 1 - I - 0x00A940 02:A930: 00        .byte $00   ; 



ofs_002_A931_02:
C - - J - - 0x00A941 02:A931: A5 3A     LDA ram_003A
C - - - - - 0x00A943 02:A933: 29 02     AND #$02
C - - - - - 0x00A945 02:A935: D0 0C     BNE bra_A943
C - - - - - 0x00A947 02:A937: A5 E6     LDA ram_00E6
C - - - - - 0x00A949 02:A939: C9 10     CMP #$10
C - - - - - 0x00A94B 02:A93B: 90 06     BCC bra_A943
C - - - - - 0x00A94D 02:A93D: A5 E6     LDA ram_00E6
C - - - - - 0x00A94F 02:A93F: C9 D8     CMP #$D8
C - - - - - 0x00A951 02:A941: 90 4F     BCC bra_A992
bra_A943:
C - - - - - 0x00A953 02:A943: A9 23     LDA #$23
C - - - - - 0x00A955 02:A945: A0 40     LDY #$40
loc_A947:
C D 1 - - - 0x00A957 02:A947: 20 FE AB  JSR sub_ABFE
C - - - - - 0x00A95A 02:A94A: A0 00     LDY #$00
bra_A94C_loop:
C - - - - - 0x00A95C 02:A94C: B9 96 A9  LDA tbl_A996,Y
C - - - - - 0x00A95F 02:A94F: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00A962 02:A952: E8        INX
C - - - - - 0x00A963 02:A953: C8        INY
C - - - - - 0x00A964 02:A954: C0 04     CPY #$04
C - - - - - 0x00A966 02:A956: 90 F4     BCC bra_A94C_loop
C - - - - - 0x00A968 02:A958: AD 1E 04  LDA ram_hp
C - - - - - 0x00A96B 02:A95B: 20 A4 A9  JSR sub_A9A4
C - - - - - 0x00A96E 02:A95E: A0 00     LDY #$00
bra_A960_loop:
C - - - - - 0x00A970 02:A960: B9 9A A9  LDA tbl_A99A,Y
C - - - - - 0x00A973 02:A963: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00A976 02:A966: E8        INX
C - - - - - 0x00A977 02:A967: C8        INY
C - - - - - 0x00A978 02:A968: C0 0A     CPY #$0A
C - - - - - 0x00A97A 02:A96A: 90 F4     BCC bra_A960_loop
C - - - - - 0x00A97C 02:A96C: AD 34 00  LDA a: ram_game_mode
C - - - - - 0x00A97F 02:A96F: 30 11     BMI bra_A982    ; if con_gm_80
C - - - - - 0x00A981 02:A971: A9 FE     LDA #$FE
C - - - - - 0x00A983 02:A973: A0 08     LDY #$08
C - - - - - 0x00A985 02:A975: 20 7B AC  JSR sub_AC7B
C - - - - - 0x00A988 02:A978: A9 00     LDA #$00
C - - - - - 0x00A98A 02:A97A: A0 02     LDY #$02
C - - - - - 0x00A98C 02:A97C: 20 7B AC  JSR sub_AC7B
C - - - - - 0x00A98F 02:A97F: 4C 8F A9  JMP loc_A98F
bra_A982:
C - - - - - 0x00A992 02:A982: AD 1F 04  LDA ram_hp + $01
C - - - - - 0x00A995 02:A985: 20 A4 A9  JSR sub_A9A4
C - - - - - 0x00A998 02:A988: A9 00     LDA #$00
C - - - - - 0x00A99A 02:A98A: A0 02     LDY #$02
C - - - - - 0x00A99C 02:A98C: 20 7B AC  JSR sub_AC7B
loc_A98F:
C D 1 - - - 0x00A99F 02:A98F: 8E BC 05  STX ram_05BC
bra_A992:
C - - - - - 0x00A9A2 02:A992: EE 85 04  INC ram_0485
C - - - - - 0x00A9A5 02:A995: 60        RTS



tbl_A996:
- D 1 - - - 0x00A9A6 02:A996: 00        .byte $00   ; 00
- D 1 - - - 0x00A9A7 02:A997: 00        .byte $00   ; 01
- D 1 - - - 0x00A9A8 02:A998: E2        .byte $E2   ; 02
- D 1 - - - 0x00A9A9 02:A999: E0        .byte $E0   ; 03



tbl_A99A:
- D 1 - - - 0x00A9AA 02:A99A: F5        .byte $F5   ; 00
- D 1 - - - 0x00A9AB 02:A99B: F6        .byte $F6   ; 01
- D 1 - - - 0x00A9AC 02:A99C: F7        .byte $F7   ; 02
- D 1 - - - 0x00A9AD 02:A99D: F8        .byte $F8   ; 03
- D 1 - - - 0x00A9AE 02:A99E: F9        .byte $F9   ; 04
- D 1 - - - 0x00A9AF 02:A99F: FA        .byte $FA   ; 05
- D 1 - - - 0x00A9B0 02:A9A0: FB        .byte $FB   ; 06
- D 1 - - - 0x00A9B1 02:A9A1: FC        .byte $FC   ; 07
- D 1 - - - 0x00A9B2 02:A9A2: E2        .byte $E2   ; 08
- D 1 - - - 0x00A9B3 02:A9A3: E1        .byte $E1   ; 09



sub_A9A4:
C - - - - - 0x00A9B4 02:A9A4: 85 19     STA ram_0019
C - - - - - 0x00A9B6 02:A9A6: A9 08     LDA #$08
C - - - - - 0x00A9B8 02:A9A8: 85 1A     STA ram_001A
C - - - - - 0x00A9BA 02:A9AA: AD 35 04  LDA ram_difficulty
C - - - - - 0x00A9BD 02:A9AD: 29 03     AND #$03
C - - - - - 0x00A9BF 02:A9AF: A8        TAY
C - - - - - 0x00A9C0 02:A9B0: B9 DC A9  LDA tbl_A9DC,Y
C - - - - - 0x00A9C3 02:A9B3: 18        CLC
C - - - - - 0x00A9C4 02:A9B4: 65 19     ADC ram_0019
C - - - - - 0x00A9C6 02:A9B6: 38        SEC
C - - - - - 0x00A9C7 02:A9B7: E9 01     SBC #$01
C - - - - - 0x00A9C9 02:A9B9: 85 19     STA ram_0019
bra_A9BB_loop:
C - - - - - 0x00A9CB 02:A9BB: A9 FD     LDA #$FD
C - - - - - 0x00A9CD 02:A9BD: 85 1B     STA ram_001B
C - - - - - 0x00A9CF 02:A9BF: A5 19     LDA ram_0019
C - - - - - 0x00A9D1 02:A9C1: 38        SEC
C - - - - - 0x00A9D2 02:A9C2: F9 DC A9  SBC tbl_A9DC,Y
C - - - - - 0x00A9D5 02:A9C5: 85 19     STA ram_0019
C - - - - - 0x00A9D7 02:A9C7: B0 08     BCS bra_A9D1
C - - - - - 0x00A9D9 02:A9C9: A9 00     LDA #$00
C - - - - - 0x00A9DB 02:A9CB: 85 19     STA ram_0019
C - - - - - 0x00A9DD 02:A9CD: A9 FE     LDA #$FE
C - - - - - 0x00A9DF 02:A9CF: 85 1B     STA ram_001B
bra_A9D1:
C - - - - - 0x00A9E1 02:A9D1: A5 1B     LDA ram_001B
C - - - - - 0x00A9E3 02:A9D3: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00A9E6 02:A9D6: E8        INX
C - - - - - 0x00A9E7 02:A9D7: C6 1A     DEC ram_001A
C - - - - - 0x00A9E9 02:A9D9: D0 E0     BNE bra_A9BB_loop
C - - - - - 0x00A9EB 02:A9DB: 60        RTS


; bzk optimize
tbl_A9DC:
- D 1 - - - 0x00A9EC 02:A9DC: 10        .byte $10   ; 00 easy
- D 1 - - - 0x00A9ED 02:A9DD: 10        .byte $10   ; 01 normal
- D 1 - - - 0x00A9EE 02:A9DE: 10        .byte $10   ; 02 difficult



ofs_002_A9DF_03:
C - - J - - 0x00A9EF 02:A9DF: A5 3A     LDA ram_003A
C - - - - - 0x00A9F1 02:A9E1: 29 02     AND #$02
C - - - - - 0x00A9F3 02:A9E3: D0 0A     BNE bra_A9EF
C - - - - - 0x00A9F5 02:A9E5: A5 E6     LDA ram_00E6
C - - - - - 0x00A9F7 02:A9E7: C9 18     CMP #$18
C - - - - - 0x00A9F9 02:A9E9: 90 04     BCC bra_A9EF
C - - - - - 0x00A9FB 02:A9EB: C9 E0     CMP #$E0
C - - - - - 0x00A9FD 02:A9ED: 90 22     BCC bra_AA11
bra_A9EF:
C - - - - - 0x00A9FF 02:A9EF: A9 23     LDA #$23
C - - - - - 0x00AA01 02:A9F1: A0 60     LDY #$60
loc_A9F3:
C D 1 - - - 0x00AA03 02:A9F3: 20 FE AB  JSR sub_ABFE
C - - - - - 0x00AA06 02:A9F6: A9 15     LDA #< tbl_AA15
C - - - - - 0x00AA08 02:A9F8: 85 29     STA ram_0029
C - - - - - 0x00AA0A 02:A9FA: A9 AA     LDA #> tbl_AA15
C - - - - - 0x00AA0C 02:A9FC: 85 2A     STA ram_002A
C - - - - - 0x00AA0E 02:A9FE: AD 34 00  LDA a: ram_game_mode
C - - - - - 0x00AA11 02:AA01: 10 08     BPL bra_AA0B    ; if not con_gm_80
C - - - - - 0x00AA13 02:AA03: A9 35     LDA #< tbl_AA35
C - - - - - 0x00AA15 02:AA05: 85 29     STA ram_0029
C - - - - - 0x00AA17 02:AA07: A9 AA     LDA #> tbl_AA35
C - - - - - 0x00AA19 02:AA09: 85 2A     STA ram_002A
bra_AA0B:
C - - - - - 0x00AA1B 02:AA0B: 20 83 AC  JSR sub_AC83
C - - - - - 0x00AA1E 02:AA0E: 8E BC 05  STX ram_05BC
bra_AA11:
C - - - - - 0x00AA21 02:AA11: EE 85 04  INC ram_0485
C - - - - - 0x00AA24 02:AA14: 60        RTS



tbl_AA15:
- D 1 - I - 0x00AA25 02:AA15: 00        .byte $00   ; 
- D 1 - I - 0x00AA26 02:AA16: 00        .byte $00   ; 
- D 1 - I - 0x00AA27 02:AA17: 00        .byte $00   ; 
- D 1 - I - 0x00AA28 02:AA18: 00        .byte $00   ; 
- D 1 - I - 0x00AA29 02:AA19: E9        .byte $E9   ; 
- D 1 - I - 0x00AA2A 02:AA1A: E9        .byte $E9   ; 
- D 1 - I - 0x00AA2B 02:AA1B: E9        .byte $E9   ; 
- D 1 - I - 0x00AA2C 02:AA1C: E9        .byte $E9   ; 
- D 1 - I - 0x00AA2D 02:AA1D: E9        .byte $E9   ; 
- D 1 - I - 0x00AA2E 02:AA1E: E9        .byte $E9   ; 
- D 1 - I - 0x00AA2F 02:AA1F: E9        .byte $E9   ; 
- D 1 - I - 0x00AA30 02:AA20: E9        .byte $E9   ; 
- D 1 - I - 0x00AA31 02:AA21: D8        .byte $D8   ; 
- D 1 - I - 0x00AA32 02:AA22: D9        .byte $D9   ; 
- D 1 - I - 0x00AA33 02:AA23: D9        .byte $D9   ; 
- D 1 - I - 0x00AA34 02:AA24: D9        .byte $D9   ; 
- D 1 - I - 0x00AA35 02:AA25: D9        .byte $D9   ; 
- D 1 - I - 0x00AA36 02:AA26: D9        .byte $D9   ; 
- D 1 - I - 0x00AA37 02:AA27: D9        .byte $D9   ; 
- D 1 - I - 0x00AA38 02:AA28: DA        .byte $DA   ; 
- D 1 - I - 0x00AA39 02:AA29: 00        .byte $00   ; 
- D 1 - I - 0x00AA3A 02:AA2A: 00        .byte $00   ; 
- D 1 - I - 0x00AA3B 02:AA2B: E9        .byte $E9   ; 
- D 1 - I - 0x00AA3C 02:AA2C: E9        .byte $E9   ; 
- D 1 - I - 0x00AA3D 02:AA2D: E9        .byte $E9   ; 
- D 1 - I - 0x00AA3E 02:AA2E: E9        .byte $E9   ; 
- D 1 - I - 0x00AA3F 02:AA2F: E9        .byte $E9   ; 
- D 1 - I - 0x00AA40 02:AA30: E9        .byte $E9   ; 
- D 1 - I - 0x00AA41 02:AA31: E9        .byte $E9   ; 
- D 1 - I - 0x00AA42 02:AA32: E9        .byte $E9   ; 
- D 1 - I - 0x00AA43 02:AA33: 00        .byte $00   ; 
- D 1 - I - 0x00AA44 02:AA34: 00        .byte $00   ; 



tbl_AA35:
- D 1 - I - 0x00AA45 02:AA35: 00        .byte $00   ; 
- D 1 - I - 0x00AA46 02:AA36: 00        .byte $00   ; 
- D 1 - I - 0x00AA47 02:AA37: 00        .byte $00   ; 
- D 1 - I - 0x00AA48 02:AA38: 00        .byte $00   ; 
- D 1 - I - 0x00AA49 02:AA39: E9        .byte $E9   ; 
- D 1 - I - 0x00AA4A 02:AA3A: E9        .byte $E9   ; 
- D 1 - I - 0x00AA4B 02:AA3B: E9        .byte $E9   ; 
- D 1 - I - 0x00AA4C 02:AA3C: E9        .byte $E9   ; 
- D 1 - I - 0x00AA4D 02:AA3D: E9        .byte $E9   ; 
- D 1 - I - 0x00AA4E 02:AA3E: E9        .byte $E9   ; 
- D 1 - I - 0x00AA4F 02:AA3F: E9        .byte $E9   ; 
- D 1 - I - 0x00AA50 02:AA40: E9        .byte $E9   ; 
- D 1 - I - 0x00AA51 02:AA41: D8        .byte $D8   ; 
- D 1 - I - 0x00AA52 02:AA42: D9        .byte $D9   ; 
- D 1 - I - 0x00AA53 02:AA43: D9        .byte $D9   ; 
- D 1 - I - 0x00AA54 02:AA44: D9        .byte $D9   ; 
- D 1 - I - 0x00AA55 02:AA45: D9        .byte $D9   ; 
- D 1 - I - 0x00AA56 02:AA46: D9        .byte $D9   ; 
- D 1 - I - 0x00AA57 02:AA47: D9        .byte $D9   ; 
- D 1 - I - 0x00AA58 02:AA48: DA        .byte $DA   ; 
- D 1 - I - 0x00AA59 02:AA49: E9        .byte $E9   ; 
- D 1 - I - 0x00AA5A 02:AA4A: E9        .byte $E9   ; 
- D 1 - I - 0x00AA5B 02:AA4B: E9        .byte $E9   ; 
- D 1 - I - 0x00AA5C 02:AA4C: E9        .byte $E9   ; 
- D 1 - I - 0x00AA5D 02:AA4D: E9        .byte $E9   ; 
- D 1 - I - 0x00AA5E 02:AA4E: E9        .byte $E9   ; 
- D 1 - I - 0x00AA5F 02:AA4F: E9        .byte $E9   ; 
- D 1 - I - 0x00AA60 02:AA50: E9        .byte $E9   ; 
- D 1 - I - 0x00AA61 02:AA51: E9        .byte $E9   ; 
- D 1 - I - 0x00AA62 02:AA52: E9        .byte $E9   ; 
- D 1 - I - 0x00AA63 02:AA53: 00        .byte $00   ; 
- D 1 - I - 0x00AA64 02:AA54: 00        .byte $00   ; 



ofs_002_AA55_04:
C - - J - - 0x00AA65 02:AA55: A5 3A     LDA ram_003A
C - - - - - 0x00AA67 02:AA57: 29 02     AND #$02
C - - - - - 0x00AA69 02:AA59: D0 0B     BNE bra_AA66
C - - - - - 0x00AA6B 02:AA5B: AD E6 00  LDA a: ram_00E6
C - - - - - 0x00AA6E 02:AA5E: C9 20     CMP #$20
C - - - - - 0x00AA70 02:AA60: 90 04     BCC bra_AA66
C - - - - - 0x00AA72 02:AA62: C9 E8     CMP #$E8
C - - - - - 0x00AA74 02:AA64: 90 77     BCC bra_AADD
bra_AA66:
C - - - - - 0x00AA76 02:AA66: A9 23     LDA #$23
C - - - - - 0x00AA78 02:AA68: A0 80     LDY #$80
loc_AA6A:
C D 1 - - - 0x00AA7A 02:AA6A: 20 FE AB  JSR sub_ABFE
C - - - - - 0x00AA7D 02:AA6D: A9 00     LDA #$00
C - - - - - 0x00AA7F 02:AA6F: A0 02     LDY #$02
C - - - - - 0x00AA81 02:AA71: 20 7B AC  JSR sub_AC7B
C - - - - - 0x00AA84 02:AA74: A9 F2     LDA #$F2
C - - - - - 0x00AA86 02:AA76: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00AA89 02:AA79: E8        INX
C - - - - - 0x00AA8A 02:AA7A: AC 32 04  LDY ram_lives
C - - - - - 0x00AA8D 02:AA7D: B9 70 AC  LDA tbl_AC70,Y
C - - - - - 0x00AA90 02:AA80: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00AA93 02:AA83: E8        INX
C - - - - - 0x00AA94 02:AA84: A9 00     LDA #$00
C - - - - - 0x00AA96 02:AA86: A0 02     LDY #$02
C - - - - - 0x00AA98 02:AA88: 20 7B AC  JSR sub_AC7B
C - - - - - 0x00AA9B 02:AA8B: A0 00     LDY #$00
C - - - - - 0x00AA9D 02:AA8D: 20 EC AA  JSR sub_AAEC
C - - - - - 0x00AAA0 02:AA90: A9 00     LDA #$00
C - - - - - 0x00AAA2 02:AA92: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00AAA5 02:AA95: E8        INX
C - - - - - 0x00AAA6 02:AA96: A0 06     LDY #$06
C - - - - - 0x00AAA8 02:AA98: 20 EC AA  JSR sub_AAEC
C - - - - - 0x00AAAB 02:AA9B: A9 00     LDA #$00
C - - - - - 0x00AAAD 02:AA9D: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00AAB0 02:AAA0: E8        INX
C - - - - - 0x00AAB1 02:AAA1: A9 F2     LDA #$F2
C - - - - - 0x00AAB3 02:AAA3: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00AAB6 02:AAA6: E8        INX
C - - - - - 0x00AAB7 02:AAA7: AD 34 00  LDA a: ram_game_mode
C - - - - - 0x00AABA 02:AAAA: 30 11     BMI bra_AABD    ; if con_gm_80
C - - - - - 0x00AABC 02:AAAC: A0 00     LDY #$00
bra_AAAE_loop:
C - - - - - 0x00AABE 02:AAAE: B9 E1 AA  LDA tbl_AAE1,Y
C - - - - - 0x00AAC1 02:AAB1: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00AAC4 02:AAB4: E8        INX
C - - - - - 0x00AAC5 02:AAB5: C8        INY
C - - - - - 0x00AAC6 02:AAB6: C0 0B     CPY #$0B
C - - - - - 0x00AAC8 02:AAB8: 90 F4     BCC bra_AAAE_loop
C - - - - - 0x00AACA 02:AABA: 4C DA AA  JMP loc_AADA
bra_AABD:
C - - - - - 0x00AACD 02:AABD: AC 33 04  LDY ram_lives + $01
C - - - - - 0x00AAD0 02:AAC0: B9 70 AC  LDA tbl_AC70,Y
C - - - - - 0x00AAD3 02:AAC3: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00AAD6 02:AAC6: E8        INX
C - - - - - 0x00AAD7 02:AAC7: A9 00     LDA #$00
C - - - - - 0x00AAD9 02:AAC9: A0 02     LDY #$02
C - - - - - 0x00AADB 02:AACB: 20 7B AC  JSR sub_AC7B
C - - - - - 0x00AADE 02:AACE: A0 03     LDY #$03
C - - - - - 0x00AAE0 02:AAD0: 20 EC AA  JSR sub_AAEC
C - - - - - 0x00AAE3 02:AAD3: A9 00     LDA #$00
C - - - - - 0x00AAE5 02:AAD5: A0 02     LDY #$02
C - - - - - 0x00AAE7 02:AAD7: 20 7B AC  JSR sub_AC7B
loc_AADA:
C D 1 - - - 0x00AAEA 02:AADA: 8E BC 05  STX ram_05BC
bra_AADD:
C - - - - - 0x00AAED 02:AADD: EE 85 04  INC ram_0485
C - - - - - 0x00AAF0 02:AAE0: 60        RTS



tbl_AAE1:
- D 1 - - - 0x00AAF1 02:AAE1: DB        .byte $DB   ; 00
- D 1 - - - 0x00AAF2 02:AAE2: 00        .byte $00   ; 01
- D 1 - - - 0x00AAF3 02:AAE3: 00        .byte $00   ; 02
- D 1 - - - 0x00AAF4 02:AAE4: DB        .byte $DB   ; 03
- D 1 - - - 0x00AAF5 02:AAE5: DB        .byte $DB   ; 04
- D 1 - - - 0x00AAF6 02:AAE6: DB        .byte $DB   ; 05
- D 1 - - - 0x00AAF7 02:AAE7: DB        .byte $DB   ; 06
- D 1 - - - 0x00AAF8 02:AAE8: DB        .byte $DB   ; 07
- D 1 - - - 0x00AAF9 02:AAE9: DB        .byte $DB   ; 08
- D 1 - - - 0x00AAFA 02:AAEA: 00        .byte $00   ; 09
- D 1 - - - 0x00AAFB 02:AAEB: 00        .byte $00   ; 0A



sub_AAEC:
C - - - - - 0x00AAFC 02:AAEC: B9 86 04  LDA ram_score_player,Y
C - - - - - 0x00AAFF 02:AAEF: 85 19     STA ram_0019
C - - - - - 0x00AB01 02:AAF1: B9 87 04  LDA ram_score_player + $01,Y
C - - - - - 0x00AB04 02:AAF4: 85 1A     STA ram_001A
C - - - - - 0x00AB06 02:AAF6: B9 88 04  LDA ram_score_player + $02,Y
C - - - - - 0x00AB09 02:AAF9: 85 1B     STA ram_001B
C - - - - - 0x00AB0B 02:AAFB: A9 07     LDA #$07
C - - - - - 0x00AB0D 02:AAFD: 85 1C     STA ram_001C
loc_AAFF:
C D 1 - - - 0x00AB0F 02:AAFF: C6 1C     DEC ram_001C
C - - - - - 0x00AB11 02:AB01: D0 01     BNE bra_AB04
C - - - - - 0x00AB13 02:AB03: 60        RTS
bra_AB04:
C - - - - - 0x00AB14 02:AB04: A5 1B     LDA ram_001B
C - - - - - 0x00AB16 02:AB06: 29 0F     AND #$0F
C - - - - - 0x00AB18 02:AB08: A8        TAY
C - - - - - 0x00AB19 02:AB09: B9 71 AC  LDA tbl_AC71,Y
C - - - - - 0x00AB1C 02:AB0C: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00AB1F 02:AB0F: E8        INX
C - - - - - 0x00AB20 02:AB10: A0 04     LDY #$04
bra_AB12_loop:
C - - - - - 0x00AB22 02:AB12: 06 19     ASL ram_0019
C - - - - - 0x00AB24 02:AB14: 26 1A     ROL ram_001A
C - - - - - 0x00AB26 02:AB16: 26 1B     ROL ram_001B
C - - - - - 0x00AB28 02:AB18: 88        DEY
C - - - - - 0x00AB29 02:AB19: D0 F7     BNE bra_AB12_loop
C - - - - - 0x00AB2B 02:AB1B: 4C FF AA  JMP loc_AAFF



ofs_002_AB1E_05:
C - - J - - 0x00AB2E 02:AB1E: A5 3A     LDA ram_003A
C - - - - - 0x00AB30 02:AB20: 29 02     AND #$02
C - - - - - 0x00AB32 02:AB22: D0 06     BNE bra_AB2A
C - - - - - 0x00AB34 02:AB24: A5 E6     LDA ram_00E6
C - - - - - 0x00AB36 02:AB26: C9 28     CMP #$28
C - - - - - 0x00AB38 02:AB28: B0 15     BCS bra_AB3F
bra_AB2A:
C - - - - - 0x00AB3A 02:AB2A: A9 23     LDA #$23
C - - - - - 0x00AB3C 02:AB2C: A0 A0     LDY #$A0
loc_AB2E:
C D 1 - - - 0x00AB3E 02:AB2E: 20 FE AB  JSR sub_ABFE
C - - - - - 0x00AB41 02:AB31: A9 43     LDA #< tbl_AB43
C - - - - - 0x00AB43 02:AB33: 85 29     STA ram_0029
C - - - - - 0x00AB45 02:AB35: A9 AB     LDA #> tbl_AB43
C - - - - - 0x00AB47 02:AB37: 85 2A     STA ram_002A
C - - - - - 0x00AB49 02:AB39: 20 83 AC  JSR sub_AC83
C - - - - - 0x00AB4C 02:AB3C: 8E BC 05  STX ram_05BC
bra_AB3F:
C - - - - - 0x00AB4F 02:AB3F: EE 85 04  INC ram_0485
C - - - - - 0x00AB52 02:AB42: 60        RTS



tbl_AB43:
- D 1 - I - 0x00AB53 02:AB43: 00        .byte $00   ; 
- D 1 - I - 0x00AB54 02:AB44: 00        .byte $00   ; 
- D 1 - I - 0x00AB55 02:AB45: 00        .byte $00   ; 
- D 1 - I - 0x00AB56 02:AB46: 00        .byte $00   ; 
- D 1 - I - 0x00AB57 02:AB47: 00        .byte $00   ; 
- D 1 - I - 0x00AB58 02:AB48: 00        .byte $00   ; 
- D 1 - I - 0x00AB59 02:AB49: 00        .byte $00   ; 
- D 1 - I - 0x00AB5A 02:AB4A: 00        .byte $00   ; 
- D 1 - I - 0x00AB5B 02:AB4B: 00        .byte $00   ; 
- D 1 - I - 0x00AB5C 02:AB4C: 00        .byte $00   ; 
- D 1 - I - 0x00AB5D 02:AB4D: 00        .byte $00   ; 
- D 1 - I - 0x00AB5E 02:AB4E: 00        .byte $00   ; 
- D 1 - I - 0x00AB5F 02:AB4F: 00        .byte $00   ; 
- D 1 - I - 0x00AB60 02:AB50: E9        .byte $E9   ; 
- D 1 - I - 0x00AB61 02:AB51: E9        .byte $E9   ; 
- D 1 - I - 0x00AB62 02:AB52: E9        .byte $E9   ; 
- D 1 - I - 0x00AB63 02:AB53: E9        .byte $E9   ; 
- D 1 - I - 0x00AB64 02:AB54: E9        .byte $E9   ; 
- D 1 - I - 0x00AB65 02:AB55: E9        .byte $E9   ; 
- D 1 - I - 0x00AB66 02:AB56: 00        .byte $00   ; 
- D 1 - I - 0x00AB67 02:AB57: 00        .byte $00   ; 
- D 1 - I - 0x00AB68 02:AB58: 00        .byte $00   ; 
- D 1 - I - 0x00AB69 02:AB59: 00        .byte $00   ; 
- D 1 - I - 0x00AB6A 02:AB5A: 00        .byte $00   ; 
- D 1 - I - 0x00AB6B 02:AB5B: 00        .byte $00   ; 
- D 1 - I - 0x00AB6C 02:AB5C: 00        .byte $00   ; 
- D 1 - I - 0x00AB6D 02:AB5D: 00        .byte $00   ; 
- D 1 - I - 0x00AB6E 02:AB5E: 00        .byte $00   ; 
- D 1 - I - 0x00AB6F 02:AB5F: 00        .byte $00   ; 
- D 1 - I - 0x00AB70 02:AB60: 00        .byte $00   ; 
- D 1 - I - 0x00AB71 02:AB61: 00        .byte $00   ; 
- D 1 - I - 0x00AB72 02:AB62: 00        .byte $00   ; 



ofs_002_AB63_06:
C - - J - - 0x00AB73 02:AB63: A5 3A     LDA ram_003A
C - - - - - 0x00AB75 02:AB65: 29 02     AND #$02
C - - - - - 0x00AB77 02:AB67: F0 06     BEQ bra_AB6F
C - - - - - 0x00AB79 02:AB69: A5 E6     LDA ram_00E6
C - - - - - 0x00AB7B 02:AB6B: C9 C8     CMP #$C8
C - - - - - 0x00AB7D 02:AB6D: 90 07     BCC bra_AB76
bra_AB6F:
C - - - - - 0x00AB7F 02:AB6F: A9 2B     LDA #$2B
C - - - - - 0x00AB81 02:AB71: A0 00     LDY #$00
C - - - - - 0x00AB83 02:AB73: 4C A9 A8  JMP loc_A8A9
bra_AB76:
C - - - - - 0x00AB86 02:AB76: EE 85 04  INC ram_0485
C - - - - - 0x00AB89 02:AB79: 60        RTS



ofs_002_AB7A_07:
C - - J - - 0x00AB8A 02:AB7A: A5 3A     LDA ram_003A
C - - - - - 0x00AB8C 02:AB7C: 29 02     AND #$02
C - - - - - 0x00AB8E 02:AB7E: F0 0A     BEQ bra_AB8A
C - - - - - 0x00AB90 02:AB80: A5 E6     LDA ram_00E6
C - - - - - 0x00AB92 02:AB82: C9 08     CMP #$08
C - - - - - 0x00AB94 02:AB84: 90 04     BCC bra_AB8A
C - - - - - 0x00AB96 02:AB86: C9 D0     CMP #$D0
C - - - - - 0x00AB98 02:AB88: 90 07     BCC bra_AB91
bra_AB8A:
C - - - - - 0x00AB9A 02:AB8A: A9 2B     LDA #$2B
C - - - - - 0x00AB9C 02:AB8C: A0 20     LDY #$20
C - - - - - 0x00AB9E 02:AB8E: 4C CF A8  JMP loc_A8CF
bra_AB91:
C - - - - - 0x00ABA1 02:AB91: EE 85 04  INC ram_0485
C - - - - - 0x00ABA4 02:AB94: 60        RTS



ofs_002_AB95_08:
C - - J - - 0x00ABA5 02:AB95: A5 3A     LDA ram_003A
C - - - - - 0x00ABA7 02:AB97: 29 02     AND #$02
C - - - - - 0x00ABA9 02:AB99: F0 0A     BEQ bra_ABA5
C - - - - - 0x00ABAB 02:AB9B: A5 E6     LDA ram_00E6
C - - - - - 0x00ABAD 02:AB9D: C9 10     CMP #$10
C - - - - - 0x00ABAF 02:AB9F: 90 04     BCC bra_ABA5
C - - - - - 0x00ABB1 02:ABA1: C9 D8     CMP #$D8
C - - - - - 0x00ABB3 02:ABA3: 90 07     BCC bra_ABAC
bra_ABA5:
C - - - - - 0x00ABB5 02:ABA5: A9 2B     LDA #$2B
C - - - - - 0x00ABB7 02:ABA7: A0 40     LDY #$40
C - - - - - 0x00ABB9 02:ABA9: 4C 47 A9  JMP loc_A947
bra_ABAC:
C - - - - - 0x00ABBC 02:ABAC: EE 85 04  INC ram_0485
C - - - - - 0x00ABBF 02:ABAF: 60        RTS



ofs_002_ABB0_09:
C - - J - - 0x00ABC0 02:ABB0: A5 3A     LDA ram_003A
C - - - - - 0x00ABC2 02:ABB2: 29 02     AND #$02
C - - - - - 0x00ABC4 02:ABB4: F0 0A     BEQ bra_ABC0
C - - - - - 0x00ABC6 02:ABB6: A5 E6     LDA ram_00E6
C - - - - - 0x00ABC8 02:ABB8: C9 18     CMP #$18
C - - - - - 0x00ABCA 02:ABBA: 90 04     BCC bra_ABC0
C - - - - - 0x00ABCC 02:ABBC: C9 E0     CMP #$E0
C - - - - - 0x00ABCE 02:ABBE: 90 07     BCC bra_ABC7
bra_ABC0:
C - - - - - 0x00ABD0 02:ABC0: A9 2B     LDA #$2B
C - - - - - 0x00ABD2 02:ABC2: A0 60     LDY #$60
C - - - - - 0x00ABD4 02:ABC4: 4C F3 A9  JMP loc_A9F3
bra_ABC7:
C - - - - - 0x00ABD7 02:ABC7: EE 85 04  INC ram_0485
C - - - - - 0x00ABDA 02:ABCA: 60        RTS



ofs_002_ABCB_0A:
C - - J - - 0x00ABDB 02:ABCB: A5 3A     LDA ram_003A
C - - - - - 0x00ABDD 02:ABCD: 29 02     AND #$02
C - - - - - 0x00ABDF 02:ABCF: F0 0A     BEQ bra_ABDB
C - - - - - 0x00ABE1 02:ABD1: A5 E6     LDA ram_00E6
C - - - - - 0x00ABE3 02:ABD3: C9 20     CMP #$20
C - - - - - 0x00ABE5 02:ABD5: 90 04     BCC bra_ABDB
C - - - - - 0x00ABE7 02:ABD7: C9 E8     CMP #$E8
C - - - - - 0x00ABE9 02:ABD9: 90 07     BCC bra_ABE2
bra_ABDB:
C - - - - - 0x00ABEB 02:ABDB: A9 2B     LDA #$2B
C - - - - - 0x00ABED 02:ABDD: A0 80     LDY #$80
C - - - - - 0x00ABEF 02:ABDF: 4C 6A AA  JMP loc_AA6A
bra_ABE2:
C - - - - - 0x00ABF2 02:ABE2: EE 85 04  INC ram_0485
C - - - - - 0x00ABF5 02:ABE5: 60        RTS



ofs_002_ABE6_0B:
C - - J - - 0x00ABF6 02:ABE6: A5 3A     LDA ram_003A
C - - - - - 0x00ABF8 02:ABE8: 29 02     AND #$02
C - - - - - 0x00ABFA 02:ABEA: F0 06     BEQ bra_ABF2
C - - - - - 0x00ABFC 02:ABEC: A5 E6     LDA ram_00E6
C - - - - - 0x00ABFE 02:ABEE: C9 28     CMP #$28
C - - - - - 0x00AC00 02:ABF0: B0 07     BCS bra_ABF9
bra_ABF2:
C - - - - - 0x00AC02 02:ABF2: A9 2B     LDA #$2B
C - - - - - 0x00AC04 02:ABF4: A0 A0     LDY #$A0
C - - - - - 0x00AC06 02:ABF6: 4C 2E AB  JMP loc_AB2E
bra_ABF9:
C - - - - - 0x00AC09 02:ABF9: EE 85 04  INC ram_0485
C - - - - - 0x00AC0C 02:ABFC: 60        RTS


; bzk garbage
- - - - - - 0x00AC0D 02:ABFD: 60        RTS



sub_ABFE:
C - - - - - 0x00AC0E 02:ABFE: AE BC 05  LDX ram_05BC
C - - - - - 0x00AC11 02:AC01: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00AC14 02:AC04: E8        INX
C - - - - - 0x00AC15 02:AC05: 98        TYA
C - - - - - 0x00AC16 02:AC06: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00AC19 02:AC09: E8        INX
C - - - - - 0x00AC1A 02:AC0A: A9 00     LDA #$00
C - - - - - 0x00AC1C 02:AC0C: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00AC1F 02:AC0F: E8        INX
C - - - - - 0x00AC20 02:AC10: A9 20     LDA #$20
C - - - - - 0x00AC22 02:AC12: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00AC25 02:AC15: E8        INX
C - - - - - 0x00AC26 02:AC16: 60        RTS


; bzk garbage
- - - - - - 0x00AC27 02:AC17: 84 19     STY ram_0019
- - - - - - 0x00AC29 02:AC19: B9 88 04  LDA ram_score_player + $02,Y
- - - - - - 0x00AC2C 02:AC1C: 29 0F     AND #$0F
- - - - - - 0x00AC2E 02:AC1E: A8        TAY
- - - - - - 0x00AC2F 02:AC1F: B9 71 AC  LDA tbl_AC71,Y
- - - - - - 0x00AC32 02:AC22: 9D B1 04  STA ram_ppu_buffer,X
- - - - - - 0x00AC35 02:AC25: E8        INX
- - - - - - 0x00AC36 02:AC26: A4 19     LDY ram_0019
- - - - - - 0x00AC38 02:AC28: B9 87 04  LDA ram_score_player + $01,Y
- - - - - - 0x00AC3B 02:AC2B: 29 F0     AND #$F0
- - - - - - 0x00AC3D 02:AC2D: 0A        ASL
- - - - - - 0x00AC3E 02:AC2E: 0A        ASL
- - - - - - 0x00AC3F 02:AC2F: 0A        ASL
- - - - - - 0x00AC40 02:AC30: 0A        ASL
- - - - - - 0x00AC41 02:AC31: A8        TAY
- - - - - - 0x00AC42 02:AC32: B9 71 AC  LDA tbl_AC71,Y
- - - - - - 0x00AC45 02:AC35: 9D B1 04  STA ram_ppu_buffer,X
- - - - - - 0x00AC48 02:AC38: E8        INX
- - - - - - 0x00AC49 02:AC39: A4 19     LDY ram_0019
- - - - - - 0x00AC4B 02:AC3B: B9 87 04  LDA ram_score_player + $01,Y
- - - - - - 0x00AC4E 02:AC3E: 29 0F     AND #$0F
- - - - - - 0x00AC50 02:AC40: A8        TAY
- - - - - - 0x00AC51 02:AC41: B9 71 AC  LDA tbl_AC71,Y
- - - - - - 0x00AC54 02:AC44: 9D B1 04  STA ram_ppu_buffer,X
- - - - - - 0x00AC57 02:AC47: E8        INX
- - - - - - 0x00AC58 02:AC48: A4 19     LDY ram_0019
- - - - - - 0x00AC5A 02:AC4A: B9 86 04  LDA ram_score_player,Y
- - - - - - 0x00AC5D 02:AC4D: 0A        ASL
- - - - - - 0x00AC5E 02:AC4E: 0A        ASL
- - - - - - 0x00AC5F 02:AC4F: 0A        ASL
- - - - - - 0x00AC60 02:AC50: 0A        ASL
- - - - - - 0x00AC61 02:AC51: A8        TAY
- - - - - - 0x00AC62 02:AC52: B9 71 AC  LDA tbl_AC71,Y
- - - - - - 0x00AC65 02:AC55: 9D B1 04  STA ram_ppu_buffer,X
- - - - - - 0x00AC68 02:AC58: E8        INX
- - - - - - 0x00AC69 02:AC59: A4 19     LDY ram_0019
- - - - - - 0x00AC6B 02:AC5B: B9 86 04  LDA ram_score_player,Y
- - - - - - 0x00AC6E 02:AC5E: 29 0F     AND #$0F
- - - - - - 0x00AC70 02:AC60: A8        TAY
- - - - - - 0x00AC71 02:AC61: B9 71 AC  LDA tbl_AC71,Y
- - - - - - 0x00AC74 02:AC64: 9D B1 04  STA ram_ppu_buffer,X
- - - - - - 0x00AC77 02:AC67: E8        INX
- - - - - - 0x00AC78 02:AC68: AD 71 AC  LDA tbl_AC71
- - - - - - 0x00AC7B 02:AC6B: 9D B1 04  STA ram_ppu_buffer,X
- - - - - - 0x00AC7E 02:AC6E: E8        INX
- - - - - - 0x00AC7F 02:AC6F: 60        RTS



tbl_AC70:
- D 1 - - - 0x00AC80 02:AC70: DB        .byte $DB   ; 
tbl_AC71:
- D 1 - - - 0x00AC81 02:AC71: DB        .byte $DB   ; 
- D 1 - - - 0x00AC82 02:AC72: DC        .byte $DC   ; 
- D 1 - - - 0x00AC83 02:AC73: DD        .byte $DD   ; 
- D 1 - - - 0x00AC84 02:AC74: DE        .byte $DE   ; 
- D 1 - - - 0x00AC85 02:AC75: DF        .byte $DF   ; 
- D 1 - - - 0x00AC86 02:AC76: EB        .byte $EB   ; 
- D 1 - - - 0x00AC87 02:AC77: EC        .byte $EC   ; 
- D 1 - - - 0x00AC88 02:AC78: ED        .byte $ED   ; 
- D 1 - - - 0x00AC89 02:AC79: EE        .byte $EE   ; 
- D 1 - - - 0x00AC8A 02:AC7A: EF        .byte $EF   ; 



sub_AC7B:
bra_AC7B_loop:
C - - - - - 0x00AC8B 02:AC7B: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00AC8E 02:AC7E: E8        INX
C - - - - - 0x00AC8F 02:AC7F: 88        DEY
C - - - - - 0x00AC90 02:AC80: D0 F9     BNE bra_AC7B_loop
C - - - - - 0x00AC92 02:AC82: 60        RTS



sub_AC83:
C - - - - - 0x00AC93 02:AC83: A0 00     LDY #$00
bra_AC85_loop:
C - - - - - 0x00AC95 02:AC85: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AC97 02:AC87: 9D B1 04  STA ram_ppu_buffer,X
C - - - - - 0x00AC9A 02:AC8A: E8        INX
C - - - - - 0x00AC9B 02:AC8B: C8        INY
C - - - - - 0x00AC9C 02:AC8C: C0 20     CPY #$20
C - - - - - 0x00AC9E 02:AC8E: 90 F5     BCC bra_AC85_loop
C - - - - - 0x00ACA0 02:AC90: 60        RTS



tbl_AC91:
- D 1 - - - 0x00ACA1 02:AC91: AF AC     .word off_ACAF_00
- D 1 - - - 0x00ACA3 02:AC93: AF AC     .word off_ACAF_01
- D 1 - - - 0x00ACA5 02:AC95: AF AC     .word off_ACAF_02
- D 1 - - - 0x00ACA7 02:AC97: AF AC     .word off_ACAF_03
- D 1 - - - 0x00ACA9 02:AC99: AF AC     .word off_ACAF_04
- D 1 - - - 0x00ACAB 02:AC9B: BF AC     .word off_ACBF_05
- D 1 - - - 0x00ACAD 02:AC9D: AF AC     .word off_ACAF_06
- D 1 - - - 0x00ACAF 02:AC9F: AF AC     .word off_ACAF_07
- D 1 - - - 0x00ACB1 02:ACA1: AF AC     .word off_ACAF_08
- D 1 - - - 0x00ACB3 02:ACA3: AF AC     .word off_ACAF_09
- D 1 - - - 0x00ACB5 02:ACA5: AF AC     .word off_ACAF_0A
- D 1 - - - 0x00ACB7 02:ACA7: AF AC     .word off_ACAF_0B
- D 1 - - - 0x00ACB9 02:ACA9: AF AC     .word off_ACAF_0C
- D 1 - - - 0x00ACBB 02:ACAB: AF AC     .word off_ACAF_0D
- D 1 - - - 0x00ACBD 02:ACAD: AF AC     .word off_ACAF_0E



off_ACAF_00:
off_ACAF_01:
off_ACAF_02:
off_ACAF_03:
off_ACAF_04:
off_ACAF_06:
off_ACAF_07:
off_ACAF_08:
off_ACAF_09:
off_ACAF_0A:
off_ACAF_0B:
off_ACAF_0C:
off_ACAF_0D:
off_ACAF_0E:
- D 1 - I - 0x00ACBF 02:ACAF: 74        .byte $74   ; 
- D 1 - I - 0x00ACC0 02:ACB0: 50        .byte $50   ; 
- D 1 - I - 0x00ACC1 02:ACB1: 50        .byte $50   ; 
- D 1 - I - 0x00ACC2 02:ACB2: AA        .byte $AA   ; 
- D 1 - I - 0x00ACC3 02:ACB3: AA        .byte $AA   ; 
- D 1 - I - 0x00ACC4 02:ACB4: 51        .byte $51   ; 
- D 1 - I - 0x00ACC5 02:ACB5: 50        .byte $50   ; 
- D 1 - I - 0x00ACC6 02:ACB6: 10        .byte $10   ; 
- D 1 - I - 0x00ACC7 02:ACB7: 00        .byte $00   ; 
- D 1 - I - 0x00ACC8 02:ACB8: 00        .byte $00   ; 
- D 1 - I - 0x00ACC9 02:ACB9: 00        .byte $00   ; 
- D 1 - I - 0x00ACCA 02:ACBA: 0A        .byte $0A   ; 
- D 1 - I - 0x00ACCB 02:ACBB: 0A        .byte $0A   ; 
- D 1 - I - 0x00ACCC 02:ACBC: 00        .byte $00   ; 
- D 1 - I - 0x00ACCD 02:ACBD: 00        .byte $00   ; 
- D 1 - I - 0x00ACCE 02:ACBE: 00        .byte $00   ; 



off_ACBF_05:
- D 1 - I - 0x00ACCF 02:ACBF: CC        .byte $CC   ; 
- D 1 - I - 0x00ACD0 02:ACC0: A0        .byte $A0   ; 
- D 1 - I - 0x00ACD1 02:ACC1: A0        .byte $A0   ; 
- D 1 - I - 0x00ACD2 02:ACC2: FF        .byte $FF   ; 
- D 1 - I - 0x00ACD3 02:ACC3: FF        .byte $FF   ; 
- D 1 - I - 0x00ACD4 02:ACC4: B3        .byte $B3   ; 
- D 1 - I - 0x00ACD5 02:ACC5: A0        .byte $A0   ; 
- D 1 - I - 0x00ACD6 02:ACC6: 20        .byte $20   ; 
- D 1 - I - 0x00ACD7 02:ACC7: 0C        .byte $0C   ; 
- D 1 - I - 0x00ACD8 02:ACC8: 0F        .byte $0F   ; 
- D 1 - I - 0x00ACD9 02:ACC9: 0F        .byte $0F   ; 
- D 1 - I - 0x00ACDA 02:ACCA: 0F        .byte $0F   ; 
- D 1 - I - 0x00ACDB 02:ACCB: 0F        .byte $0F   ; 
- D 1 - I - 0x00ACDC 02:ACCC: 0F        .byte $0F   ; 
- D 1 - I - 0x00ACDD 02:ACCD: 0F        .byte $0F   ; 
- D 1 - I - 0x00ACDE 02:ACCE: 0F        .byte $0F   ; 



loc_ACCF:
C D 1 - - - 0x00ACDF 02:ACCF: A9 60     LDA #con_E2E6 + $60
C - - - - - 0x00ACE1 02:ACD1: 20 00 C0  JSR sub_0x01C010
C - - - - - 0x00ACE4 02:ACD4: B0 29     BCS bra_ACFF_RTS
C - - - - - 0x00ACE6 02:ACD6: AD 43 06  LDA ram_0643
C - - - - - 0x00ACE9 02:ACD9: 85 29     STA ram_0029
C - - - - - 0x00ACEB 02:ACDB: A9 00     LDA #$00
C - - - - - 0x00ACED 02:ACDD: 85 2A     STA ram_002A
C - - - - - 0x00ACEF 02:ACDF: A0 05     LDY #$05
bra_ACE1_loop:
C - - - - - 0x00ACF1 02:ACE1: 06 29     ASL ram_0029
C - - - - - 0x00ACF3 02:ACE3: 26 2A     ROL ram_002A
C - - - - - 0x00ACF5 02:ACE5: 88        DEY
C - - - - - 0x00ACF6 02:ACE6: D0 F9     BNE bra_ACE1_loop
C - - - - - 0x00ACF8 02:ACE8: A5 2A     LDA ram_002A
C - - - - - 0x00ACFA 02:ACEA: 18        CLC
C - - - - - 0x00ACFB 02:ACEB: 69 20     ADC #$20
C - - - - - 0x00ACFD 02:ACED: A4 29     LDY ram_0029
C - - - - - 0x00ACFF 02:ACEF: 20 FE AB  JSR sub_ABFE
C - - - - - 0x00AD02 02:ACF2: A9 00     LDA #$00
C - - - - - 0x00AD04 02:ACF4: A0 20     LDY #$20
C - - - - - 0x00AD06 02:ACF6: 20 7B AC  JSR sub_AC7B
C - - - - - 0x00AD09 02:ACF9: 8E BC 05  STX ram_05BC
C - - - - - 0x00AD0C 02:ACFC: CE 43 06  DEC ram_0643
bra_ACFF_RTS:
C - - - - - 0x00AD0F 02:ACFF: 60        RTS



loc_AD00:
C D 1 - - - 0x00AD10 02:AD00: 20 00 BF  JSR sub_BF00
C - - - - - 0x00AD13 02:AD03: A5 34     LDA ram_game_mode
C - - - - - 0x00AD15 02:AD05: 29 08     AND #con_gm_08
C - - - - - 0x00AD17 02:AD07: F0 01     BEQ bra_AD0A
C - - - - - 0x00AD19 02:AD09: 60        RTS
bra_AD0A:
C - - - - - 0x00AD1A 02:AD0A: A2 00     LDX #$00
bra_AD0C_loop:
C - - - - - 0x00AD1C 02:AD0C: BD C8 03  LDA ram_clear_hit_counter_timer,X
C - - - - - 0x00AD1F 02:AD0F: F0 0A     BEQ bra_AD1B
C - - - - - 0x00AD21 02:AD11: DE C8 03  DEC ram_clear_hit_counter_timer,X
C - - - - - 0x00AD24 02:AD14: D0 05     BNE bra_AD1B
C - - - - - 0x00AD26 02:AD16: A9 00     LDA #$00
C - - - - - 0x00AD28 02:AD18: 9D E7 03  STA ram_hit_counter,X
bra_AD1B:
C - - - - - 0x00AD2B 02:AD1B: E8        INX
C - - - - - 0x00AD2C 02:AD1C: E0 04     CPX #$04
C - - - - - 0x00AD2E 02:AD1E: 90 EC     BCC bra_AD0C_loop
C - - - - - 0x00AD30 02:AD20: A9 00     LDA #$00
C - - - - - 0x00AD32 02:AD22: 85 19     STA ram_0019
bra_AD24_loop:
C - - - - - 0x00AD34 02:AD24: A6 19     LDX ram_0019
C - - - - - 0x00AD36 02:AD26: 86 1B     STX ram_001B
C - - - - - 0x00AD38 02:AD28: E8        INX
C - - - - - 0x00AD39 02:AD29: 86 1A     STX ram_001A
C - - - - - 0x00AD3B 02:AD2B: 20 94 B3  JSR sub_B394
C - - - - - 0x00AD3E 02:AD2E: B0 5A     BCS bra_AD8A
C - - - - - 0x00AD40 02:AD30: A9 00     LDA #$00
C - - - - - 0x00AD42 02:AD32: 85 1C     STA ram_001C
C - - - - - 0x00AD44 02:AD34: A5 19     LDA ram_0019
C - - - - - 0x00AD46 02:AD36: 85 1B     STA ram_001B
C - - - - - 0x00AD48 02:AD38: 20 D8 B3  JSR sub_B3D8
C - - - - - 0x00AD4B 02:AD3B: B0 4D     BCS bra_AD8A
bra_AD3D_loop:
C - - - - - 0x00AD4D 02:AD3D: 2C 34 00  BIT a: ram_game_mode
C - - - - - 0x00AD50 02:AD40: 70 06     BVS bra_AD48    ; if con_gm_40
C - - - - - 0x00AD52 02:AD42: A5 1A     LDA ram_001A
C - - - - - 0x00AD54 02:AD44: C9 01     CMP #$01
C - - - - - 0x00AD56 02:AD46: F0 3A     BEQ bra_AD82
bra_AD48:
C - - - - - 0x00AD58 02:AD48: A4 19     LDY ram_0019
C - - - - - 0x00AD5A 02:AD4A: A6 1A     LDX ram_001A
C - - - - - 0x00AD5C 02:AD4C: B9 93 AD  LDA tbl_AD93,Y
C - - - - - 0x00AD5F 02:AD4F: DD 93 AD  CMP tbl_AD93,X
C - - - - - 0x00AD62 02:AD52: F0 2E     BEQ bra_AD82
C - - - - - 0x00AD64 02:AD54: A5 1A     LDA ram_001A
C - - - - - 0x00AD66 02:AD56: 85 1B     STA ram_001B
C - - - - - 0x00AD68 02:AD58: 20 94 B3  JSR sub_B394
C - - - - - 0x00AD6B 02:AD5B: B0 25     BCS bra_AD82
C - - - - - 0x00AD6D 02:AD5D: 20 5A B3  JSR sub_B35A
C - - - - - 0x00AD70 02:AD60: B0 20     BCS bra_AD82
C - - - - - 0x00AD72 02:AD62: A9 06     LDA #$06
C - - - - - 0x00AD74 02:AD64: 85 1C     STA ram_001C
C - - - - - 0x00AD76 02:AD66: 20 D8 B3  JSR sub_B3D8
C - - - - - 0x00AD79 02:AD69: B0 17     BCS bra_AD82
C - - - - - 0x00AD7B 02:AD6B: 20 4B B1  JSR sub_B14B
C - - - - - 0x00AD7E 02:AD6E: B0 12     BCS bra_AD82
C - - - - - 0x00AD80 02:AD70: 20 9B AD  JSR sub_AD9B
C - - - - - 0x00AD83 02:AD73: 20 10 B2  JSR sub_B210
C - - - - - 0x00AD86 02:AD76: B0 0A     BCS bra_AD82
C - - - - - 0x00AD88 02:AD78: 20 C6 AD  JSR sub_ADC6
C - - - - - 0x00AD8B 02:AD7B: A4 19     LDY ram_0019
C - - - - - 0x00AD8D 02:AD7D: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x00AD90 02:AD80: 10 08     BPL bra_AD8A
bra_AD82:
C - - - - - 0x00AD92 02:AD82: E6 1A     INC ram_001A
C - - - - - 0x00AD94 02:AD84: A5 1A     LDA ram_001A
C - - - - - 0x00AD96 02:AD86: C9 08     CMP #$08
C - - - - - 0x00AD98 02:AD88: 90 B3     BCC bra_AD3D_loop
bra_AD8A:
C - - - - - 0x00AD9A 02:AD8A: E6 19     INC ram_0019
C - - - - - 0x00AD9C 02:AD8C: A5 19     LDA ram_0019
C - - - - - 0x00AD9E 02:AD8E: C9 04     CMP #$04
C - - - - - 0x00ADA0 02:AD90: 90 92     BCC bra_AD24_loop
C - - - - - 0x00ADA2 02:AD92: 60        RTS



tbl_AD93:
- D 1 - - - 0x00ADA3 02:AD93: 00        .byte $00   ; 00
- D 1 - - - 0x00ADA4 02:AD94: 01        .byte $01   ; 01
- D 1 - - - 0x00ADA5 02:AD95: 02        .byte $02   ; 02
- D 1 - - - 0x00ADA6 02:AD96: 02        .byte $02   ; 03
- D 1 - - - 0x00ADA7 02:AD97: 03        .byte $03   ; 04
- D 1 - - - 0x00ADA8 02:AD98: 03        .byte $03   ; 05
- D 1 - - - 0x00ADA9 02:AD99: 03        .byte $03   ; 06
- D 1 - - - 0x00ADAA 02:AD9A: 03        .byte $03   ; 07



sub_AD9B:
C - - - - - 0x00ADAB 02:AD9B: A9 01     LDA #$01
C - - - - - 0x00ADAD 02:AD9D: C5 19     CMP ram_0019
C - - - - - 0x00ADAF 02:AD9F: 90 0F     BCC bra_ADB0
C - - - - - 0x00ADB1 02:ADA1: A6 19     LDX ram_0019
C - - - - - 0x00ADB3 02:ADA3: BD CC 03  LDA ram_03CC_plr,X
C - - - - - 0x00ADB6 02:ADA6: C9 FF     CMP #$FF
C - - - - - 0x00ADB8 02:ADA8: F0 06     BEQ bra_ADB0
C - - - - - 0x00ADBA 02:ADAA: A5 04     LDA ram_0004
C - - - - - 0x00ADBC 02:ADAC: 29 94     AND #$94
C - - - - - 0x00ADBE 02:ADAE: 85 04     STA ram_0004
bra_ADB0:
C - - - - - 0x00ADC0 02:ADB0: A9 01     LDA #$01
C - - - - - 0x00ADC2 02:ADB2: C5 1A     CMP ram_001A
C - - - - - 0x00ADC4 02:ADB4: 90 0F     BCC bra_ADC5_RTS
C - - - - - 0x00ADC6 02:ADB6: A6 1A     LDX ram_001A
C - - - - - 0x00ADC8 02:ADB8: BD CC 03  LDA ram_03CC_plr,X
C - - - - - 0x00ADCB 02:ADBB: C9 FF     CMP #$FF
C - - - - - 0x00ADCD 02:ADBD: F0 06     BEQ bra_ADC5_RTS
C - - - - - 0x00ADCF 02:ADBF: A5 04     LDA ram_0004
C - - - - - 0x00ADD1 02:ADC1: 29 62     AND #$62
C - - - - - 0x00ADD3 02:ADC3: 85 04     STA ram_0004
bra_ADC5_RTS:
C - - - - - 0x00ADD5 02:ADC5: 60        RTS



sub_ADC6:
C - - - - - 0x00ADD6 02:ADC6: A6 19     LDX ram_0019
C - - - - - 0x00ADD8 02:ADC8: B5 43     LDA ram_state,X
C - - - - - 0x00ADDA 02:ADCA: 85 23     STA ram_0023
C - - - - - 0x00ADDC 02:ADCC: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x00ADDF 02:ADCF: 85 24     STA ram_0024
C - - - - - 0x00ADE1 02:ADD1: BD 0F 03  LDA ram_030F_obj,X
C - - - - - 0x00ADE4 02:ADD4: 85 25     STA ram_0025
C - - - - - 0x00ADE6 02:ADD6: A6 1A     LDX ram_001A
C - - - - - 0x00ADE8 02:ADD8: B5 43     LDA ram_state,X
C - - - - - 0x00ADEA 02:ADDA: 85 26     STA ram_0026
C - - - - - 0x00ADEC 02:ADDC: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x00ADEF 02:ADDF: 85 27     STA ram_0027
C - - - - - 0x00ADF1 02:ADE1: BD 0F 03  LDA ram_030F_obj,X
C - - - - - 0x00ADF4 02:ADE4: 85 28     STA ram_0028
C - - - - - 0x00ADF6 02:ADE6: A5 05     LDA ram_0005
C - - - - - 0x00ADF8 02:ADE8: 29 02     AND #$02
C - - - - - 0x00ADFA 02:ADEA: F0 17     BEQ bra_AE03
C - - - - - 0x00ADFC 02:ADEC: A5 26     LDA ram_0026
C - - - - - 0x00ADFE 02:ADEE: 85 0E     STA ram_000E
C - - - - - 0x00AE00 02:ADF0: A5 27     LDA ram_0027
C - - - - - 0x00AE02 02:ADF2: 85 0F     STA ram_000F
C - - - - - 0x00AE04 02:ADF4: A5 28     LDA ram_0028
C - - - - - 0x00AE06 02:ADF6: 85 10     STA ram_0010
C - - - - - 0x00AE08 02:ADF8: A5 19     LDA ram_0019
C - - - - - 0x00AE0A 02:ADFA: 85 11     STA ram_0011
C - - - - - 0x00AE0C 02:ADFC: A5 1A     LDA ram_001A
C - - - - - 0x00AE0E 02:ADFE: 85 12     STA ram_0012
C - - - - - 0x00AE10 02:AE00: 20 21 AE  JSR sub_AE21
bra_AE03:
C - - - - - 0x00AE13 02:AE03: A5 05     LDA ram_0005
C - - - - - 0x00AE15 02:AE05: 29 04     AND #$04
C - - - - - 0x00AE17 02:AE07: F0 17     BEQ bra_AE20_RTS
C - - - - - 0x00AE19 02:AE09: A5 23     LDA ram_0023
C - - - - - 0x00AE1B 02:AE0B: 85 0E     STA ram_000E
C - - - - - 0x00AE1D 02:AE0D: A5 24     LDA ram_0024
C - - - - - 0x00AE1F 02:AE0F: 85 0F     STA ram_000F
C - - - - - 0x00AE21 02:AE11: A5 25     LDA ram_0025
C - - - - - 0x00AE23 02:AE13: 85 10     STA ram_0010
C - - - - - 0x00AE25 02:AE15: A5 1A     LDA ram_001A
C - - - - - 0x00AE27 02:AE17: 85 11     STA ram_0011
C - - - - - 0x00AE29 02:AE19: A5 19     LDA ram_0019
C - - - - - 0x00AE2B 02:AE1B: 85 12     STA ram_0012
C - - - - - 0x00AE2D 02:AE1D: 20 21 AE  JSR sub_AE21
bra_AE20_RTS:
C - - - - - 0x00AE30 02:AE20: 60        RTS



sub_AE21:
C - - - - - 0x00AE31 02:AE21: A6 12     LDX ram_0012
C - - - - - 0x00AE33 02:AE23: A5 0E     LDA ram_000E
C - - - - - 0x00AE35 02:AE25: 29 7F     AND #$7F
C - - - - - 0x00AE37 02:AE27: 0A        ASL
C - - - - - 0x00AE38 02:AE28: A8        TAY
C - - - - - 0x00AE39 02:AE29: B9 32 BA  LDA tbl_BA32_state_handler,Y
C - - - - - 0x00AE3C 02:AE2C: 85 29     STA ram_0029
C - - - - - 0x00AE3E 02:AE2E: B9 33 BA  LDA tbl_BA32_state_handler + $01,Y
C - - - - - 0x00AE41 02:AE31: 85 2A     STA ram_002A
C - - - - - 0x00AE43 02:AE33: A6 11     LDX ram_0011
C - - - - - 0x00AE45 02:AE35: 20 66 AE  JSR sub_AE66_read_next_0029_byte
C - - - - - 0x00AE48 02:AE38: A6 11     LDX ram_0011
C - - - - - 0x00AE4A 02:AE3A: B5 43     LDA ram_state,X
C - - - - - 0x00AE4C 02:AE3C: 30 27     BMI bra_AE65_RTS
C - - - - - 0x00AE4E 02:AE3E: A6 11     LDX ram_0011
C - - - - - 0x00AE50 02:AE40: FE E7 03  INC ram_hit_counter,X
C - - - - - 0x00AE53 02:AE43: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x00AE55 02:AE45: 29 FE     AND #con_004A_01 ^ $FF
C - - - - - 0x00AE57 02:AE47: 09 40     ORA #con_004A_40
C - - - - - 0x00AE59 02:AE49: 95 4A     STA ram_004A_obj,X
C - - - - - 0x00AE5B 02:AE4B: A9 60     LDA #$60
C - - - - - 0x00AE5D 02:AE4D: 9D C8 03  STA ram_clear_hit_counter_timer,X
C - - - - - 0x00AE60 02:AE50: B5 43     LDA ram_state,X
C - - - - - 0x00AE62 02:AE52: C9 14     CMP #$14
C - - - - - 0x00AE64 02:AE54: 90 0F     BCC bra_AE65_RTS
C - - - - - 0x00AE66 02:AE56: C9 17     CMP #$17
C - - - - - 0x00AE68 02:AE58: B0 0B     BCS bra_AE65_RTS
; con_state_14
; con_state_15
; con_state_16
C - - - - - 0x00AE6A 02:AE5A: A4 12     LDY ram_0012
C - - - - - 0x00AE6C 02:AE5C: B9 C1 03  LDA ram_03C1_obj,Y
C - - - - - 0x00AE6F 02:AE5F: 29 02     AND #$02
C - - - - - 0x00AE71 02:AE61: F0 02     BEQ bra_AE65_RTS
C - - - - - 0x00AE73 02:AE63: F6 43     INC ram_state,X
bra_AE65_RTS:
C - - - - - 0x00AE75 02:AE65: 60        RTS



sub_AE66_read_next_0029_byte:
loc_AE66_read_next_0029_byte:
C D 1 - - - 0x00AE76 02:AE66: A0 00     LDY #$00
C - - - - - 0x00AE78 02:AE68: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AE7A 02:AE6A: 0A        ASL
C - - - - - 0x00AE7B 02:AE6B: A8        TAY
C - - - - - 0x00AE7C 02:AE6C: B9 79 AE  LDA tbl_AE79,Y
C - - - - - 0x00AE7F 02:AE6F: 85 2B     STA ram_002B
C - - - - - 0x00AE81 02:AE71: B9 7A AE  LDA tbl_AE79 + $01,Y
C - - - - - 0x00AE84 02:AE74: 85 2C     STA ram_002C
C - - - - - 0x00AE86 02:AE76: 6C 2B 00  JMP (ram_002B)



tbl_AE79:
- D 1 - - - 0x00AE89 02:AE79: 9D AE     .word ofs_003_AE9D_00_RTS
- - - - - - 0x00AE8B 02:AE7B: 9E AE     .word ofs_003_AE9E_01   ; unused
- D 1 - - - 0x00AE8D 02:AE7D: C0 AE     .word ofs_003_AEC0_02_decrease_hp
- D 1 - - - 0x00AE8F 02:AE7F: DA AE     .word ofs_003_AEDA_03_set_state_1
- D 1 - - - 0x00AE91 02:AE81: 2B AF     .word ofs_003_AF2B_04_set_state_2
- D 1 - - - 0x00AE93 02:AE83: 97 AF     .word ofs_003_AF97_05_set_1_or_2_state
- D 1 - - - 0x00AE95 02:AE85: B5 AF     .word ofs_003_AFB5_06_set_fixed_state
- D 1 - - - 0x00AE97 02:AE87: C2 AF     .word ofs_003_AFC2_07
- - - - - - 0x00AE99 02:AE89: 19 B0     .word ofs_003_B019_08   ; unused
- D 1 - - - 0x00AE9B 02:AE8B: 72 B0     .word ofs_003_B072_09
- D 1 - - - 0x00AE9D 02:AE8D: 8A B0     .word ofs_003_B08A_0A_play_sound
- - - - - - 0x00AE9F 02:AE8F: 96 B0     .word ofs_003_B096_0B   ; unused
- D 1 - - - 0x00AEA1 02:AE91: AB B0     .word ofs_003_B0AB_0C
- D 1 - - - 0x00AEA3 02:AE93: BE B0     .word ofs_003_B0BE_0D
- D 1 - - - 0x00AEA5 02:AE95: C9 B0     .word ofs_003_B0C9_0E
- D 1 - - - 0x00AEA7 02:AE97: EE B0     .word ofs_003_B0EE_0F_set_if_not_new_state
- D 1 - - - 0x00AEA9 02:AE99: FF B0     .word ofs_003_B0FF_10
- D 1 - - - 0x00AEAB 02:AE9B: 0F B1     .word ofs_003_B10F_11_branch



ofs_003_AE9D_00_RTS:
C - - J - - 0x00AEAD 02:AE9D: 60        RTS



ofs_003_AE9E_01:
- - - - - - 0x00AEAE 02:AE9E: A6 12     LDX ram_0012
- - - - - - 0x00AEB0 02:AEA0: A9 02     LDA #$02
- - - - - - 0x00AEB2 02:AEA2: 18        CLC
- - - - - - 0x00AEB3 02:AEA3: 75 BF     ADC ram_obj_id,X
- - - - - - 0x00AEB5 02:AEA5: A8        TAY
- - - - - - 0x00AEB6 02:AEA6: B1 29     LDA (ram_0029),Y
- - - - - - 0x00AEB8 02:AEA8: 85 2B     STA ram_002B
- - - - - - 0x00AEBA 02:AEAA: A6 11     LDX ram_0011
- - - - - - 0x00AEBC 02:AEAC: BD 1E 04  LDA ram_hp,X
- - - - - - 0x00AEBF 02:AEAF: 38        SEC
- - - - - - 0x00AEC0 02:AEB0: E5 2B     SBC ram_002B
- - - - - - 0x00AEC2 02:AEB2: B0 02     BCS bra_AEB6
- - - - - - 0x00AEC4 02:AEB4: A9 00     LDA #$00
bra_AEB6:
- - - - - - 0x00AEC6 02:AEB6: 9D 1E 04  STA ram_hp,X
- - - - - - 0x00AEC9 02:AEB9: A0 01     LDY #$01
- - - - - - 0x00AECB 02:AEBB: B1 29     LDA (ram_0029),Y
- - - - - - 0x00AECD 02:AEBD: 4C 39 B1  JMP loc_B139_increase_0029_pointer



ofs_003_AEC0_02_decrease_hp:
C - - J - - 0x00AED0 02:AEC0: A6 11     LDX ram_0011
C - - - - - 0x00AED2 02:AEC2: A0 01     LDY #$01
C - - - - - 0x00AED4 02:AEC4: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AED6 02:AEC6: 85 2B     STA ram_002B
C - - - - - 0x00AED8 02:AEC8: BD 1E 04  LDA ram_hp,X
C - - - - - 0x00AEDB 02:AECB: 38        SEC
C - - - - - 0x00AEDC 02:AECC: E5 2B     SBC ram_002B
C - - - - - 0x00AEDE 02:AECE: B0 02     BCS bra_AED2_not_underflow
C - - - - - 0x00AEE0 02:AED0: A9 00     LDA #$00
bra_AED2_not_underflow:
C - - - - - 0x00AEE2 02:AED2: 9D 1E 04  STA ram_hp,X
C - - - - - 0x00AEE5 02:AED5: A9 02     LDA #$02
C - - - - - 0x00AEE7 02:AED7: 4C 39 B1  JMP loc_B139_increase_0029_pointer



ofs_003_AEDA_03_set_state_1:
C - - J - - 0x00AEEA 02:AEDA: A6 11     LDX ram_0011
C - - - - - 0x00AEEC 02:AEDC: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x00AEEE 02:AEDE: 10 0B     BPL bra_AEEB    ; if not con_004A_80
C - - - - - 0x00AEF0 02:AEE0: A0 05     LDY #$05
C - - - - - 0x00AEF2 02:AEE2: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AEF4 02:AEE4: 95 43     STA ram_state,X
C - - - - - 0x00AEF6 02:AEE6: A9 06     LDA #$06
C - - - - - 0x00AEF8 02:AEE8: 4C 39 B1  JMP loc_B139_increase_0029_pointer
bra_AEEB:
C - - - - - 0x00AEFB 02:AEEB: B5 43     LDA ram_state,X
C - - - - - 0x00AEFD 02:AEED: 29 7F     AND #$7F
C - - - - - 0x00AEFF 02:AEEF: C9 4C     CMP #con_state_4C
C - - - - - 0x00AF01 02:AEF1: F0 14     BEQ bra_AF07
C - - - - - 0x00AF03 02:AEF3: C9 44     CMP #con_state_44
C - - - - - 0x00AF05 02:AEF5: F0 10     BEQ bra_AF07
C - - - - - 0x00AF07 02:AEF7: C9 18     CMP #con_state_18
C - - - - - 0x00AF09 02:AEF9: F0 0C     BEQ bra_AF07
C - - - - - 0x00AF0B 02:AEFB: C9 0D     CMP #con_state_0D
C - - - - - 0x00AF0D 02:AEFD: F0 08     BEQ bra_AF07
C - - - - - 0x00AF0F 02:AEFF: C9 03     CMP #$03
C - - - - - 0x00AF11 02:AF01: 90 0F     BCC bra_AF12
C - - - - - 0x00AF13 02:AF03: C9 06     CMP #$06
C - - - - - 0x00AF15 02:AF05: B0 0B     BCS bra_AF12
bra_AF07:
C - - - - - 0x00AF17 02:AF07: A0 04     LDY #$04
C - - - - - 0x00AF19 02:AF09: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AF1B 02:AF0B: 95 43     STA ram_state,X
C - - - - - 0x00AF1D 02:AF0D: A9 06     LDA #$06
C - - - - - 0x00AF1F 02:AF0F: 4C 39 B1  JMP loc_B139_increase_0029_pointer
bra_AF12:
C - - - - - 0x00AF22 02:AF12: A0 01     LDY #$01
C - - - - - 0x00AF24 02:AF14: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AF26 02:AF16: A0 02     LDY #$02
C - - - - - 0x00AF28 02:AF18: 85 2B     STA ram_002B
C - - - - - 0x00AF2A 02:AF1A: BD E7 03  LDA ram_hit_counter,X
C - - - - - 0x00AF2D 02:AF1D: C5 2B     CMP ram_002B
C - - - - - 0x00AF2F 02:AF1F: 90 01     BCC bra_AF22_not_enough_hits
C - - - - - 0x00AF31 02:AF21: C8        INY ; 03
bra_AF22_not_enough_hits:
C - - - - - 0x00AF32 02:AF22: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AF34 02:AF24: 95 43     STA ram_state,X
C - - - - - 0x00AF36 02:AF26: A9 06     LDA #$06
C - - - - - 0x00AF38 02:AF28: 4C 39 B1  JMP loc_B139_increase_0029_pointer



ofs_003_AF2B_04_set_state_2:
C - - J - - 0x00AF3B 02:AF2B: A6 11     LDX ram_0011
C - - - - - 0x00AF3D 02:AF2D: B5 4A     LDA ram_004A_obj,X
C - - - - - 0x00AF3F 02:AF2F: 10 0B     BPL bra_AF3C    ; if not con_004A_80
C - - - - - 0x00AF41 02:AF31: A0 07     LDY #$07
C - - - - - 0x00AF43 02:AF33: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AF45 02:AF35: 95 43     STA ram_state,X
C - - - - - 0x00AF47 02:AF37: A9 08     LDA #$08
C - - - - - 0x00AF49 02:AF39: 4C 39 B1  JMP loc_B139_increase_0029_pointer
bra_AF3C:
C - - - - - 0x00AF4C 02:AF3C: B5 43     LDA ram_state,X
C - - - - - 0x00AF4E 02:AF3E: 29 7F     AND #$7F
C - - - - - 0x00AF50 02:AF40: C9 4C     CMP #con_state_4C
C - - - - - 0x00AF52 02:AF42: F0 14     BEQ bra_AF58
C - - - - - 0x00AF54 02:AF44: C9 44     CMP #con_state_44
C - - - - - 0x00AF56 02:AF46: F0 10     BEQ bra_AF58
C - - - - - 0x00AF58 02:AF48: C9 18     CMP #con_state_18
C - - - - - 0x00AF5A 02:AF4A: F0 0C     BEQ bra_AF58
C - - - - - 0x00AF5C 02:AF4C: C9 0D     CMP #con_state_0D
C - - - - - 0x00AF5E 02:AF4E: F0 08     BEQ bra_AF58
C - - - - - 0x00AF60 02:AF50: C9 03     CMP #$03
C - - - - - 0x00AF62 02:AF52: 90 0F     BCC bra_AF63
C - - - - - 0x00AF64 02:AF54: C9 06     CMP #$06
C - - - - - 0x00AF66 02:AF56: B0 0B     BCS bra_AF63
bra_AF58:
C - - - - - 0x00AF68 02:AF58: A0 06     LDY #$06
C - - - - - 0x00AF6A 02:AF5A: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AF6C 02:AF5C: 95 43     STA ram_state,X
C - - - - - 0x00AF6E 02:AF5E: A9 08     LDA #$08
C - - - - - 0x00AF70 02:AF60: 4C 39 B1  JMP loc_B139_increase_0029_pointer
bra_AF63:
C - - - - - 0x00AF73 02:AF63: A0 01     LDY #$01
C - - - - - 0x00AF75 02:AF65: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AF77 02:AF67: 85 2B     STA ram_002B
C - - - - - 0x00AF79 02:AF69: A0 02     LDY #$02
C - - - - - 0x00AF7B 02:AF6B: BD E7 03  LDA ram_hit_counter,X
C - - - - - 0x00AF7E 02:AF6E: C5 2B     CMP ram_002B
C - - - - - 0x00AF80 02:AF70: 90 02     BCC bra_AF74_not_enough_hits
C - - - - - 0x00AF82 02:AF72: A0 04     LDY #$04
bra_AF74_not_enough_hits:
C - - - - - 0x00AF84 02:AF74: 84 2B     STY ram_002B
C - - - - - 0x00AF86 02:AF76: A0 00     LDY #$00
C - - - - - 0x00AF88 02:AF78: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AF8A 02:AF7A: 85 2C     STA ram_002C
C - - - - - 0x00AF8C 02:AF7C: BD 63 00  LDA a: ram_0063_obj,X
C - - - - - 0x00AF8F 02:AF7F: A6 12     LDX ram_0012
C - - - - - 0x00AF91 02:AF81: 5D 63 00  EOR a: ram_0063_obj,X
C - - - - - 0x00AF94 02:AF84: 45 2C     EOR ram_002C
C - - - - - 0x00AF96 02:AF86: 30 02     BMI bra_AF8A
C - - - - - 0x00AF98 02:AF88: E6 2B     INC ram_002B
bra_AF8A:
C - - - - - 0x00AF9A 02:AF8A: A6 11     LDX ram_0011
C - - - - - 0x00AF9C 02:AF8C: A4 2B     LDY ram_002B
C - - - - - 0x00AF9E 02:AF8E: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AFA0 02:AF90: 95 43     STA ram_state,X
C - - - - - 0x00AFA2 02:AF92: A9 08     LDA #$08
C - - - - - 0x00AFA4 02:AF94: 4C 39 B1  JMP loc_B139_increase_0029_pointer



ofs_003_AF97_05_set_1_or_2_state:
C - - J - - 0x00AFA7 02:AF97: A0 00     LDY #$00
C - - - - - 0x00AFA9 02:AF99: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AFAB 02:AF9B: A0 01     LDY #$01
C - - - - - 0x00AFAD 02:AF9D: A6 11     LDX ram_0011
C - - - - - 0x00AFAF 02:AF9F: 5D 63 00  EOR a: ram_0063_obj,X
C - - - - - 0x00AFB2 02:AFA2: A6 12     LDX ram_0012
C - - - - - 0x00AFB4 02:AFA4: 5D 63 00  EOR a: ram_0063_obj,X
C - - - - - 0x00AFB7 02:AFA7: 30 01     BMI bra_AFAA
C - - - - - 0x00AFB9 02:AFA9: C8        INY
bra_AFAA:
C - - - - - 0x00AFBA 02:AFAA: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AFBC 02:AFAC: A6 11     LDX ram_0011
C - - - - - 0x00AFBE 02:AFAE: 95 43     STA ram_state,X
C - - - - - 0x00AFC0 02:AFB0: A9 03     LDA #$03
C - - - - - 0x00AFC2 02:AFB2: 4C 39 B1  JMP loc_B139_increase_0029_pointer



ofs_003_AFB5_06_set_fixed_state:
C - - J - - 0x00AFC5 02:AFB5: A0 01     LDY #$01
C - - - - - 0x00AFC7 02:AFB7: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AFC9 02:AFB9: A6 11     LDX ram_0011
C - - - - - 0x00AFCB 02:AFBB: 95 43     STA ram_state,X
C - - - - - 0x00AFCD 02:AFBD: A9 02     LDA #$02
C - - - - - 0x00AFCF 02:AFBF: 4C 39 B1  JMP loc_B139_increase_0029_pointer



ofs_003_AFC2_07:
C - - J - - 0x00AFD2 02:AFC2: A6 11     LDX ram_0011
C - - - - - 0x00AFD4 02:AFC4: B4 BF     LDY ram_obj_id,X
C - - - - - 0x00AFD6 02:AFC6: A5 12     LDA ram_0012
C - - - - - 0x00AFD8 02:AFC8: C9 02     CMP #$02
C - - - - - 0x00AFDA 02:AFCA: 90 06     BCC bra_AFD2
C - - - - - 0x00AFDC 02:AFCC: B9 07 B0  LDA tbl_B007,Y
C - - - - - 0x00AFDF 02:AFCF: 4C D5 AF  JMP loc_AFD5
bra_AFD2:
C - - - - - 0x00AFE2 02:AFD2: B9 F5 AF  LDA tbl_AFF5,Y
loc_AFD5:
C D 1 - - - 0x00AFE5 02:AFD5: A8        TAY
C - - - - - 0x00AFE6 02:AFD6: A5 29     LDA ram_0029
C - - - - - 0x00AFE8 02:AFD8: 48        PHA
C - - - - - 0x00AFE9 02:AFD9: A5 2A     LDA ram_002A
C - - - - - 0x00AFEB 02:AFDB: 48        PHA
C - - - - - 0x00AFEC 02:AFDC: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AFEE 02:AFDE: 48        PHA
C - - - - - 0x00AFEF 02:AFDF: C8        INY
C - - - - - 0x00AFF0 02:AFE0: B1 29     LDA (ram_0029),Y
C - - - - - 0x00AFF2 02:AFE2: 85 2A     STA ram_002A
C - - - - - 0x00AFF4 02:AFE4: 68        PLA
C - - - - - 0x00AFF5 02:AFE5: 85 29     STA ram_0029
C - - - - - 0x00AFF7 02:AFE7: 20 66 AE  JSR sub_AE66_read_next_0029_byte
C - - - - - 0x00AFFA 02:AFEA: 68        PLA
C - - - - - 0x00AFFB 02:AFEB: 85 2A     STA ram_002A
C - - - - - 0x00AFFD 02:AFED: 68        PLA
C - - - - - 0x00AFFE 02:AFEE: 85 29     STA ram_0029
C - - - - - 0x00B000 02:AFF0: A9 09     LDA #$09
C - - - - - 0x00B002 02:AFF2: 4C 39 B1  JMP loc_B139_increase_0029_pointer



tbl_AFF5:
- D 1 - - - 0x00B005 02:AFF5: 01        .byte $01   ; 00
- D 1 - - - 0x00B006 02:AFF6: 01        .byte $01   ; 01
- D 1 - - - 0x00B007 02:AFF7: 01        .byte $01   ; 02
- D 1 - - - 0x00B008 02:AFF8: 01        .byte $01   ; 03
- D 1 - - - 0x00B009 02:AFF9: 01        .byte $01   ; 04
- - - - - - 0x00B00A 02:AFFA: 01        .byte $01   ; 05
- D 1 - - - 0x00B00B 02:AFFB: 03        .byte $03   ; 06
- D 1 - - - 0x00B00C 02:AFFC: 03        .byte $03   ; 07
- D 1 - - - 0x00B00D 02:AFFD: 03        .byte $03   ; 08
- D 1 - - - 0x00B00E 02:AFFE: 03        .byte $03   ; 09
- D 1 - - - 0x00B00F 02:AFFF: 03        .byte $03   ; 0A
- - - - - - 0x00B010 02:B000: 03        .byte $03   ; 0B
- D 1 - - - 0x00B011 02:B001: 03        .byte $03   ; 0C
- - - - - - 0x00B012 02:B002: 01        .byte $01   ; 0D
- - - - - - 0x00B013 02:B003: 01        .byte $01   ; 0E
- D 1 - - - 0x00B014 02:B004: 01        .byte $01   ; 0F
- - - - - - 0x00B015 02:B005: 01        .byte $01   ; 10
- D 1 - - - 0x00B016 02:B006: 03        .byte $03   ; 11

tbl_B007:
- D 1 - - - 0x00B017 02:B007: 05        .byte $05   ; 00
- - - - - - 0x00B018 02:B008: 05        .byte $05   ; 01
- - - - - - 0x00B019 02:B009: 05        .byte $05   ; 02
- - - - - - 0x00B01A 02:B00A: 05        .byte $05   ; 03
- - - - - - 0x00B01B 02:B00B: 05        .byte $05   ; 04
- - - - - - 0x00B01C 02:B00C: 05        .byte $05   ; 05
- - - - - - 0x00B01D 02:B00D: 07        .byte $07   ; 06
- - - - - - 0x00B01E 02:B00E: 07        .byte $07   ; 07
- - - - - - 0x00B01F 02:B00F: 07        .byte $07   ; 08
- - - - - - 0x00B020 02:B010: 07        .byte $07   ; 09
- - - - - - 0x00B021 02:B011: 07        .byte $07   ; 0A
- - - - - - 0x00B022 02:B012: 07        .byte $07   ; 0B
- - - - - - 0x00B023 02:B013: 07        .byte $07   ; 0C
- - - - - - 0x00B024 02:B014: 05        .byte $05   ; 0D
- - - - - - 0x00B025 02:B015: 05        .byte $05   ; 0E
- - - - - - 0x00B026 02:B016: 05        .byte $05   ; 0F
- - - - - - 0x00B027 02:B017: 05        .byte $05   ; 10
- - - - - - 0x00B028 02:B018: 07        .byte $07   ; 11



ofs_003_B019_08:
- - - - - - 0x00B029 02:B019: A6 11     LDX ram_0011
- - - - - - 0x00B02B 02:B01B: B4 BF     LDY ram_obj_id,X
- - - - - - 0x00B02D 02:B01D: A5 12     LDA ram_0012
- - - - - - 0x00B02F 02:B01F: C9 02     CMP #$02
- - - - - - 0x00B031 02:B021: 90 06     BCC bra_B029
- - - - - - 0x00B033 02:B023: B9 60 B0  LDA tbl_B060,Y
- - - - - - 0x00B036 02:B026: 4C 2C B0  JMP loc_B02C
bra_B029:
- - - - - - 0x00B039 02:B029: B9 4E B0  LDA tbl_B04E,Y
loc_B02C:
- - - - - - 0x00B03C 02:B02C: A8        TAY
- - - - - - 0x00B03D 02:B02D: A5 29     LDA ram_0029
- - - - - - 0x00B03F 02:B02F: 48        PHA
- - - - - - 0x00B040 02:B030: A5 2A     LDA ram_002A
- - - - - - 0x00B042 02:B032: 48        PHA
- - - - - - 0x00B043 02:B033: B1 29     LDA (ram_0029),Y
- - - - - - 0x00B045 02:B035: 18        CLC
- - - - - - 0x00B046 02:B036: 65 29     ADC ram_0029
- - - - - - 0x00B048 02:B038: 85 29     STA ram_0029
- - - - - - 0x00B04A 02:B03A: A5 2A     LDA ram_002A
- - - - - - 0x00B04C 02:B03C: 69 00     ADC #$00
- - - - - - 0x00B04E 02:B03E: 85 2A     STA ram_002A
- - - - - - 0x00B050 02:B040: 20 66 AE  JSR sub_AE66_read_next_0029_byte
- - - - - - 0x00B053 02:B043: 68        PLA
- - - - - - 0x00B054 02:B044: 85 2A     STA ram_002A
- - - - - - 0x00B056 02:B046: 68        PLA
- - - - - - 0x00B057 02:B047: 85 29     STA ram_0029
- - - - - - 0x00B059 02:B049: A9 05     LDA #$05
- - - - - - 0x00B05B 02:B04B: 4C 39 B1  JMP loc_B139_increase_0029_pointer



tbl_B04E:
- - - - - - 0x00B05E 02:B04E: 01        .byte $01   ; 00
- - - - - - 0x00B05F 02:B04F: 01        .byte $01   ; 01
- - - - - - 0x00B060 02:B050: 01        .byte $01   ; 02
- - - - - - 0x00B061 02:B051: 01        .byte $01   ; 03
- - - - - - 0x00B062 02:B052: 01        .byte $01   ; 04
- - - - - - 0x00B063 02:B053: 01        .byte $01   ; 05
- - - - - - 0x00B064 02:B054: 01        .byte $01   ; 06
- - - - - - 0x00B065 02:B055: 01        .byte $01   ; 07
- - - - - - 0x00B066 02:B056: 01        .byte $01   ; 08
- - - - - - 0x00B067 02:B057: 01        .byte $01   ; 09
- - - - - - 0x00B068 02:B058: 01        .byte $01   ; 0A
- - - - - - 0x00B069 02:B059: 01        .byte $01   ; 0B
- - - - - - 0x00B06A 02:B05A: 01        .byte $01   ; 0C
- - - - - - 0x00B06B 02:B05B: 01        .byte $01   ; 0D
- - - - - - 0x00B06C 02:B05C: 01        .byte $01   ; 0E
- - - - - - 0x00B06D 02:B05D: 01        .byte $01   ; 0F
- - - - - - 0x00B06E 02:B05E: 01        .byte $01   ; 10
- - - - - - 0x00B06F 02:B05F: 01        .byte $01   ; 11



tbl_B060:
- - - - - - 0x00B070 02:B060: 03        .byte $03   ; 00
- - - - - - 0x00B071 02:B061: 03        .byte $03   ; 01
- - - - - - 0x00B072 02:B062: 03        .byte $03   ; 02
- - - - - - 0x00B073 02:B063: 03        .byte $03   ; 03
- - - - - - 0x00B074 02:B064: 03        .byte $03   ; 04
- - - - - - 0x00B075 02:B065: 03        .byte $03   ; 05
- - - - - - 0x00B076 02:B066: 03        .byte $03   ; 06
- - - - - - 0x00B077 02:B067: 03        .byte $03   ; 07
- - - - - - 0x00B078 02:B068: 03        .byte $03   ; 08
- - - - - - 0x00B079 02:B069: 03        .byte $03   ; 09
- - - - - - 0x00B07A 02:B06A: 03        .byte $03   ; 0A
- - - - - - 0x00B07B 02:B06B: 03        .byte $03   ; 0B
- - - - - - 0x00B07C 02:B06C: 03        .byte $03   ; 0C
- - - - - - 0x00B07D 02:B06D: 03        .byte $03   ; 0D
- - - - - - 0x00B07E 02:B06E: 03        .byte $03   ; 0E
- - - - - - 0x00B07F 02:B06F: 03        .byte $03   ; 0F
- - - - - - 0x00B080 02:B070: 03        .byte $03   ; 10
- - - - - - 0x00B081 02:B071: 03        .byte $03   ; 11



ofs_003_B072_09:
C - - J - - 0x00B082 02:B072: A5 12     LDA ram_0012
C - - - - - 0x00B084 02:B074: C9 02     CMP #$02
C - - - - - 0x00B086 02:B076: B0 0D     BCS bra_B085
C - - - - - 0x00B088 02:B078: 0A        ASL
C - - - - - 0x00B089 02:B079: 18        CLC
C - - - - - 0x00B08A 02:B07A: 65 12     ADC ram_0012
C - - - - - 0x00B08C 02:B07C: 0A        ASL
C - - - - - 0x00B08D 02:B07D: AA        TAX
C - - - - - 0x00B08E 02:B07E: A0 01     LDY #$01
C - - - - - 0x00B090 02:B080: B1 29     LDA (ram_0029),Y
C - - - - - 0x00B092 02:B082: 20 FB BD  JSR sub_BDFB
bra_B085:
C - - - - - 0x00B095 02:B085: A9 02     LDA #$02
C - - - - - 0x00B097 02:B087: 4C 39 B1  JMP loc_B139_increase_0029_pointer



ofs_003_B08A_0A_play_sound:
C - - J - - 0x00B09A 02:B08A: A0 01     LDY #$01
C - - - - - 0x00B09C 02:B08C: B1 29     LDA (ram_0029),Y
C - - - - - 0x00B09E 02:B08E: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x00B0A1 02:B091: A9 02     LDA #$02
C - - - - - 0x00B0A3 02:B093: 4C 39 B1  JMP loc_B139_increase_0029_pointer



ofs_003_B096_0B:
- - - - - - 0x00B0A6 02:B096: A6 12     LDX ram_0012
- - - - - - 0x00B0A8 02:B098: 18        CLC
- - - - - - 0x00B0A9 02:B099: A9 02     LDA #$02
- - - - - - 0x00B0AB 02:B09B: 7D BF 00  ADC a: ram_obj_id,X
- - - - - - 0x00B0AE 02:B09E: A8        TAY
- - - - - - 0x00B0AF 02:B09F: B1 29     LDA (ram_0029),Y
- - - - - - 0x00B0B1 02:B0A1: 20 06 C0  JSR sub_0x01C016_play_sound
- - - - - - 0x00B0B4 02:B0A4: A0 01     LDY #$01
- - - - - - 0x00B0B6 02:B0A6: B1 29     LDA (ram_0029),Y
- - - - - - 0x00B0B8 02:B0A8: 4C 39 B1  JMP loc_B139_increase_0029_pointer



ofs_003_B0AB_0C:
C - - J - - 0x00B0BB 02:B0AB: A0 40     LDY #$40
C - - - - - 0x00B0BD 02:B0AD: A5 0F     LDA ram_000F
C - - - - - 0x00B0BF 02:B0AF: 10 02     BPL bra_B0B3
C - - - - - 0x00B0C1 02:B0B1: A0 C0     LDY #$C0
bra_B0B3:
loc_B0B3:
C D 1 - - - 0x00B0C3 02:B0B3: 98        TYA
C - - - - - 0x00B0C4 02:B0B4: A6 11     LDX ram_0011
C - - - - - 0x00B0C6 02:B0B6: 9D 0F 03  STA ram_030F_obj,X
C - - - - - 0x00B0C9 02:B0B9: A9 01     LDA #$01
C - - - - - 0x00B0CB 02:B0BB: 4C 39 B1  JMP loc_B139_increase_0029_pointer



ofs_003_B0BE_0D:
C - - J - - 0x00B0CE 02:B0BE: A0 40     LDY #$40
C - - - - - 0x00B0D0 02:B0C0: A5 0F     LDA ram_000F
C - - - - - 0x00B0D2 02:B0C2: 30 EF     BMI bra_B0B3
C - - - - - 0x00B0D4 02:B0C4: A0 C0     LDY #$C0
C - - - - - 0x00B0D6 02:B0C6: 4C B3 B0  JMP loc_B0B3



ofs_003_B0C9_0E:
C - - J - - 0x00B0D9 02:B0C9: A6 12     LDX ram_0012
C - - - - - 0x00B0DB 02:B0CB: A4 11     LDY ram_0011
C - - - - - 0x00B0DD 02:B0CD: A9 40     LDA #$40
C - - - - - 0x00B0DF 02:B0CF: 85 2B     STA ram_002B
C - - - - - 0x00B0E1 02:B0D1: BD 77 00  LDA a: ram_pos_X_lo,X
C - - - - - 0x00B0E4 02:B0D4: 38        SEC
C - - - - - 0x00B0E5 02:B0D5: F9 77 00  SBC a: ram_pos_X_lo,Y
C - - - - - 0x00B0E8 02:B0D8: BD 80 00  LDA a: ram_pos_X_hi,X
C - - - - - 0x00B0EB 02:B0DB: F9 80 00  SBC a: ram_pos_X_hi,Y
C - - - - - 0x00B0EE 02:B0DE: 90 04     BCC bra_B0E4
C - - - - - 0x00B0F0 02:B0E0: A9 C0     LDA #$C0
C - - - - - 0x00B0F2 02:B0E2: 85 2B     STA ram_002B
bra_B0E4:
C - - - - - 0x00B0F4 02:B0E4: A5 2B     LDA ram_002B
C - - - - - 0x00B0F6 02:B0E6: 99 0F 03  STA ram_030F_obj,Y
C - - - - - 0x00B0F9 02:B0E9: A9 01     LDA #$01
C - - - - - 0x00B0FB 02:B0EB: 4C 39 B1  JMP loc_B139_increase_0029_pointer



ofs_003_B0EE_0F_set_if_not_new_state:
C - - J - - 0x00B0FE 02:B0EE: A6 12     LDX ram_0012
C - - - - - 0x00B100 02:B0F0: B5 43     LDA ram_state,X
C - - - - - 0x00B102 02:B0F2: 10 06     BPL bra_B0FA
C - - - - - 0x00B104 02:B0F4: A0 01     LDY #$01
C - - - - - 0x00B106 02:B0F6: B1 29     LDA (ram_0029),Y
C - - - - - 0x00B108 02:B0F8: 95 43     STA ram_state,X
bra_B0FA:
C - - - - - 0x00B10A 02:B0FA: A9 02     LDA #$02
C - - - - - 0x00B10C 02:B0FC: 4C 39 B1  JMP loc_B139_increase_0029_pointer



ofs_003_B0FF_10:
C - - J - - 0x00B10F 02:B0FF: A6 12     LDX ram_0012
C - - - - - 0x00B111 02:B101: BD 0F 03  LDA ram_030F_obj,X
C - - - - - 0x00B114 02:B104: 18        CLC
C - - - - - 0x00B115 02:B105: 69 80     ADC #$80
C - - - - - 0x00B117 02:B107: 9D 0F 03  STA ram_030F_obj,X
C - - - - - 0x00B11A 02:B10A: A9 01     LDA #$01
C - - - - - 0x00B11C 02:B10C: 4C 39 B1  JMP loc_B139_increase_0029_pointer



ofs_003_B10F_11_branch:
C - - J - - 0x00B11F 02:B10F: A5 29     LDA ram_0029
C - - - - - 0x00B121 02:B111: 48        PHA
C - - - - - 0x00B122 02:B112: A5 2A     LDA ram_002A
C - - - - - 0x00B124 02:B114: 48        PHA
C - - - - - 0x00B125 02:B115: A6 12     LDX ram_0012
C - - - - - 0x00B127 02:B117: B5 BF     LDA ram_obj_id,X
C - - - - - 0x00B129 02:B119: 0A        ASL
C - - - - - 0x00B12A 02:B11A: 18        CLC
C - - - - - 0x00B12B 02:B11B: 69 02     ADC #$02
C - - - - - 0x00B12D 02:B11D: A8        TAY
C - - - - - 0x00B12E 02:B11E: B1 29     LDA (ram_0029),Y
C - - - - - 0x00B130 02:B120: 48        PHA
C - - - - - 0x00B131 02:B121: C8        INY
C - - - - - 0x00B132 02:B122: B1 29     LDA (ram_0029),Y
C - - - - - 0x00B134 02:B124: 85 2A     STA ram_002A
C - - - - - 0x00B136 02:B126: 68        PLA
C - - - - - 0x00B137 02:B127: 85 29     STA ram_0029
C - - - - - 0x00B139 02:B129: 20 66 AE  JSR sub_AE66_read_next_0029_byte
C - - - - - 0x00B13C 02:B12C: 68        PLA
C - - - - - 0x00B13D 02:B12D: 85 2A     STA ram_002A
C - - - - - 0x00B13F 02:B12F: 68        PLA
C - - - - - 0x00B140 02:B130: 85 29     STA ram_0029
C - - - - - 0x00B142 02:B132: A0 01     LDY #$01
C - - - - - 0x00B144 02:B134: B1 29     LDA (ram_0029),Y
C - - - - - 0x00B146 02:B136: 4C 39 B1  JMP loc_B139_increase_0029_pointer



loc_B139_increase_0029_pointer:
; A = how much to add
C D 1 - - - 0x00B149 02:B139: 18        CLC
C - - - - - 0x00B14A 02:B13A: 65 29     ADC ram_0029
C - - - - - 0x00B14C 02:B13C: 85 29     STA ram_0029
C - - - - - 0x00B14E 02:B13E: A5 2A     LDA ram_002A
C - - - - - 0x00B150 02:B140: 69 00     ADC #$00
C - - - - - 0x00B152 02:B142: 85 2A     STA ram_002A
C - - - - - 0x00B154 02:B144: 4C 66 AE  JMP loc_AE66_read_next_0029_byte


; bzk garbage
- - - - - - 0x00B157 02:B147: 18        CLC
- - - - - - 0x00B158 02:B148: 60        RTS



bra_B149:
C - - - - - 0x00B159 02:B149: 38        SEC
C - - - - - 0x00B15A 02:B14A: 60        RTS



sub_B14B:
C - - - - - 0x00B15B 02:B14B: A5 04     LDA ram_0004
C - - - - - 0x00B15D 02:B14D: 29 F8     AND #$F8
C - - - - - 0x00B15F 02:B14F: 85 04     STA ram_0004
C - - - - - 0x00B161 02:B151: A6 1A     LDX ram_001A
C - - - - - 0x00B163 02:B153: E0 04     CPX #$04
C - - - - - 0x00B165 02:B155: 90 6D     BCC bra_B1C4
C - - - - - 0x00B167 02:B157: A6 1A     LDX ram_001A
C - - - - - 0x00B169 02:B159: B5 43     LDA ram_state,X
C - - - - - 0x00B16B 02:B15B: 29 7F     AND #$7F
C - - - - - 0x00B16D 02:B15D: C9 6F     CMP #con_state_6F
C - - - - - 0x00B16F 02:B15F: F0 3E     BEQ bra_B19F
C - - - - - 0x00B171 02:B161: C9 66     CMP #con_state_66
C - - - - - 0x00B173 02:B163: F0 3A     BEQ bra_B19F
C - - - - - 0x00B175 02:B165: BD 4A 04  LDA ram_044A_obj,X
C - - - - - 0x00B178 02:B168: 29 7F     AND #$7F
C - - - - - 0x00B17A 02:B16A: C5 19     CMP ram_0019
C - - - - - 0x00B17C 02:B16C: F0 DB     BEQ bra_B149
C - - - - - 0x00B17E 02:B16E: A8        TAY
C - - - - - 0x00B17F 02:B16F: B9 93 AD  LDA tbl_AD93,Y
C - - - - - 0x00B182 02:B172: A6 19     LDX ram_0019
C - - - - - 0x00B184 02:B174: DD 93 AD  CMP tbl_AD93,X
C - - - - - 0x00B187 02:B177: D0 04     BNE bra_B17D
C - - - - - 0x00B189 02:B179: C9 02     CMP #$02
C - - - - - 0x00B18B 02:B17B: F0 CC     BEQ bra_B149
bra_B17D:
C - - - - - 0x00B18D 02:B17D: 2C 34 00  BIT a: ram_game_mode
C - - - - - 0x00B190 02:B180: 10 1D     BPL bra_B19F    ; if not con_gm_80
- - - - - - 0x00B192 02:B182: 70 1B     BVS bra_B19F    ; if con_gm_40
- - - - - - 0x00B194 02:B184: E0 02     CPX #$02
- - - - - - 0x00B196 02:B186: B0 04     BCS bra_B18C
- - - - - - 0x00B198 02:B188: C0 02     CPY #$02
- - - - - - 0x00B19A 02:B18A: 90 BD     BCC bra_B149
bra_B18C:
- - - - - - 0x00B19C 02:B18C: A4 19     LDY ram_0019
- - - - - - 0x00B19E 02:B18E: B9 E0 03  LDA ram_03E0_obj,Y
- - - - - - 0x00B1A1 02:B191: C5 1A     CMP ram_001A
- - - - - - 0x00B1A3 02:B193: D0 0A     BNE bra_B19F
- - - - - - 0x00B1A5 02:B195: B9 EE 03  LDA ram_03EE_obj,Y
- - - - - - 0x00B1A8 02:B198: A6 1A     LDX ram_001A
- - - - - - 0x00B1AA 02:B19A: DD C1 03  CMP ram_03C1_obj,X
- - - - - - 0x00B1AD 02:B19D: F0 6F     BEQ bra_B20E
bra_B19F:
C - - - - - 0x00B1AF 02:B19F: A5 04     LDA ram_0004
C - - - - - 0x00B1B1 02:B1A1: 29 A0     AND #$A0
C - - - - - 0x00B1B3 02:B1A3: C9 A0     CMP #$A0
C - - - - - 0x00B1B5 02:B1A5: D0 06     BNE bra_B1AD
C - - - - - 0x00B1B7 02:B1A7: A9 01     LDA #$01
C - - - - - 0x00B1B9 02:B1A9: 05 04     ORA ram_0004
C - - - - - 0x00B1BB 02:B1AB: 85 04     STA ram_0004
bra_B1AD:
C - - - - - 0x00B1BD 02:B1AD: A5 04     LDA ram_0004
C - - - - - 0x00B1BF 02:B1AF: 29 60     AND #$60
C - - - - - 0x00B1C1 02:B1B1: C9 60     CMP #$60
C - - - - - 0x00B1C3 02:B1B3: D0 06     BNE bra_B1BB
C - - - - - 0x00B1C5 02:B1B5: A5 04     LDA ram_0004
C - - - - - 0x00B1C7 02:B1B7: 09 02     ORA #$02
C - - - - - 0x00B1C9 02:B1B9: 85 04     STA ram_0004
bra_B1BB:
C - - - - - 0x00B1CB 02:B1BB: A5 04     LDA ram_0004
C - - - - - 0x00B1CD 02:B1BD: 29 07     AND #$07
C - - - - - 0x00B1CF 02:B1BF: F0 4D     BEQ bra_B20E
C - - - - - 0x00B1D1 02:B1C1: 4C 0C B2  JMP loc_B20C
bra_B1C4:
C - - - - - 0x00B1D4 02:B1C4: A5 04     LDA ram_0004
C - - - - - 0x00B1D6 02:B1C6: 29 90     AND #$90
C - - - - - 0x00B1D8 02:B1C8: C9 90     CMP #$90
C - - - - - 0x00B1DA 02:B1CA: D0 19     BNE bra_B1E5
C - - - - - 0x00B1DC 02:B1CC: A4 1A     LDY ram_001A
C - - - - - 0x00B1DE 02:B1CE: B9 E0 03  LDA ram_03E0_obj,Y
C - - - - - 0x00B1E1 02:B1D1: C5 19     CMP ram_0019
C - - - - - 0x00B1E3 02:B1D3: D0 0A     BNE bra_B1DF
C - - - - - 0x00B1E5 02:B1D5: B9 EE 03  LDA ram_03EE_obj,Y
C - - - - - 0x00B1E8 02:B1D8: A6 19     LDX ram_0019
C - - - - - 0x00B1EA 02:B1DA: DD C1 03  CMP ram_03C1_obj,X
C - - - - - 0x00B1ED 02:B1DD: F0 06     BEQ bra_B1E5
bra_B1DF:
C - - - - - 0x00B1EF 02:B1DF: A9 04     LDA #$04
C - - - - - 0x00B1F1 02:B1E1: 05 04     ORA ram_0004
C - - - - - 0x00B1F3 02:B1E3: 85 04     STA ram_0004
bra_B1E5:
C - - - - - 0x00B1F5 02:B1E5: A5 04     LDA ram_0004
C - - - - - 0x00B1F7 02:B1E7: 29 60     AND #$60
C - - - - - 0x00B1F9 02:B1E9: C9 60     CMP #$60
C - - - - - 0x00B1FB 02:B1EB: D0 19     BNE bra_B206
C - - - - - 0x00B1FD 02:B1ED: A4 19     LDY ram_0019
C - - - - - 0x00B1FF 02:B1EF: B9 E0 03  LDA ram_03E0_obj,Y
C - - - - - 0x00B202 02:B1F2: C5 1A     CMP ram_001A
C - - - - - 0x00B204 02:B1F4: D0 0A     BNE bra_B200
C - - - - - 0x00B206 02:B1F6: B9 EE 03  LDA ram_03EE_obj,Y
C - - - - - 0x00B209 02:B1F9: A6 1A     LDX ram_001A
C - - - - - 0x00B20B 02:B1FB: DD C1 03  CMP ram_03C1_obj,X
C - - - - - 0x00B20E 02:B1FE: F0 06     BEQ bra_B206
bra_B200:
C - - - - - 0x00B210 02:B200: A5 04     LDA ram_0004
C - - - - - 0x00B212 02:B202: 09 02     ORA #$02
C - - - - - 0x00B214 02:B204: 85 04     STA ram_0004
bra_B206:
C - - - - - 0x00B216 02:B206: A5 04     LDA ram_0004
C - - - - - 0x00B218 02:B208: 29 07     AND #$07
C - - - - - 0x00B21A 02:B20A: F0 02     BEQ bra_B20E
loc_B20C:
C D 1 - - - 0x00B21C 02:B20C: 18        CLC
C - - - - - 0x00B21D 02:B20D: 60        RTS
bra_B20E:
C - - - - - 0x00B21E 02:B20E: 38        SEC
C - - - - - 0x00B21F 02:B20F: 60        RTS



sub_B210:
C - - - - - 0x00B220 02:B210: A9 00     LDA #$00
C - - - - - 0x00B222 02:B212: 85 05     STA ram_0005
C - - - - - 0x00B224 02:B214: A5 04     LDA ram_0004
C - - - - - 0x00B226 02:B216: 29 01     AND #$01
C - - - - - 0x00B228 02:B218: F0 5C     BEQ bra_B276
C - - - - - 0x00B22A 02:B21A: A5 0A     LDA ram_000A
C - - - - - 0x00B22C 02:B21C: 85 1B     STA ram_001B
C - - - - - 0x00B22E 02:B21E: A5 0E     LDA ram_000E
C - - - - - 0x00B230 02:B220: 38        SEC
C - - - - - 0x00B231 02:B221: E5 08     SBC ram_0008
C - - - - - 0x00B233 02:B223: 85 29     STA ram_0029
C - - - - - 0x00B235 02:B225: A5 0F     LDA ram_000F
C - - - - - 0x00B237 02:B227: E5 09     SBC ram_0009
C - - - - - 0x00B239 02:B229: 85 2A     STA ram_002A
C - - - - - 0x00B23B 02:B22B: 10 07     BPL bra_B234
C - - - - - 0x00B23D 02:B22D: 20 44 B3  JSR sub_B344
C - - - - - 0x00B240 02:B230: A5 10     LDA ram_0010
C - - - - - 0x00B242 02:B232: 85 1B     STA ram_001B
bra_B234:
C - - - - - 0x00B244 02:B234: A5 2A     LDA ram_002A
C - - - - - 0x00B246 02:B236: D0 3E     BNE bra_B276
C - - - - - 0x00B248 02:B238: A5 29     LDA ram_0029
C - - - - - 0x00B24A 02:B23A: C5 1C     CMP ram_001C
C - - - - - 0x00B24C 02:B23C: B0 38     BCS bra_B276
C - - - - - 0x00B24E 02:B23E: A5 0D     LDA ram_000D
C - - - - - 0x00B250 02:B240: 85 1B     STA ram_001B
C - - - - - 0x00B252 02:B242: A5 11     LDA ram_0011
C - - - - - 0x00B254 02:B244: 38        SEC
C - - - - - 0x00B255 02:B245: E5 0B     SBC ram_000B
C - - - - - 0x00B257 02:B247: 85 29     STA ram_0029
C - - - - - 0x00B259 02:B249: A5 12     LDA ram_0012
C - - - - - 0x00B25B 02:B24B: E5 0C     SBC ram_000C
C - - - - - 0x00B25D 02:B24D: 85 2A     STA ram_002A
C - - - - - 0x00B25F 02:B24F: 10 07     BPL bra_B258
C - - - - - 0x00B261 02:B251: 20 44 B3  JSR sub_B344
C - - - - - 0x00B264 02:B254: A5 13     LDA ram_0013
C - - - - - 0x00B266 02:B256: 85 1B     STA ram_001B
bra_B258:
C - - - - - 0x00B268 02:B258: A5 2A     LDA ram_002A
C - - - - - 0x00B26A 02:B25A: D0 1A     BNE bra_B276
C - - - - - 0x00B26C 02:B25C: A5 29     LDA ram_0029
C - - - - - 0x00B26E 02:B25E: C5 1B     CMP ram_001B
C - - - - - 0x00B270 02:B260: B0 14     BCS bra_B276
C - - - - - 0x00B272 02:B262: A9 01     LDA #$01
C - - - - - 0x00B274 02:B264: 05 05     ORA ram_0005
C - - - - - 0x00B276 02:B266: 85 05     STA ram_0005
C - - - - - 0x00B278 02:B268: A4 1A     LDY ram_001A
C - - - - - 0x00B27A 02:B26A: B9 C1 03  LDA ram_03C1_obj,Y
C - - - - - 0x00B27D 02:B26D: A6 19     LDX ram_0019
C - - - - - 0x00B27F 02:B26F: 9D EE 03  STA ram_03EE_obj,X
C - - - - - 0x00B282 02:B272: 98        TYA
C - - - - - 0x00B283 02:B273: 9D E0 03  STA ram_03E0_obj,X
bra_B276:
C - - - - - 0x00B286 02:B276: A5 04     LDA ram_0004
C - - - - - 0x00B288 02:B278: 29 02     AND #$02
C - - - - - 0x00B28A 02:B27A: F0 5C     BEQ bra_B2D8
C - - - - - 0x00B28C 02:B27C: A5 1F     LDA ram_001F
C - - - - - 0x00B28E 02:B27E: 85 1B     STA ram_001B
C - - - - - 0x00B290 02:B280: A5 0E     LDA ram_000E
C - - - - - 0x00B292 02:B282: 38        SEC
C - - - - - 0x00B293 02:B283: E5 1D     SBC ram_001D
C - - - - - 0x00B295 02:B285: 85 29     STA ram_0029
C - - - - - 0x00B297 02:B287: A5 0F     LDA ram_000F
C - - - - - 0x00B299 02:B289: E5 1E     SBC ram_001E
C - - - - - 0x00B29B 02:B28B: 85 2A     STA ram_002A
C - - - - - 0x00B29D 02:B28D: 10 07     BPL bra_B296
C - - - - - 0x00B29F 02:B28F: 20 44 B3  JSR sub_B344
C - - - - - 0x00B2A2 02:B292: A5 10     LDA ram_0010
C - - - - - 0x00B2A4 02:B294: 85 1B     STA ram_001B
bra_B296:
C - - - - - 0x00B2A6 02:B296: A5 2A     LDA ram_002A
C - - - - - 0x00B2A8 02:B298: D0 3E     BNE bra_B2D8
C - - - - - 0x00B2AA 02:B29A: A5 29     LDA ram_0029
C - - - - - 0x00B2AC 02:B29C: C5 1B     CMP ram_001B
C - - - - - 0x00B2AE 02:B29E: B0 38     BCS bra_B2D8
C - - - - - 0x00B2B0 02:B2A0: A5 22     LDA ram_0022
C - - - - - 0x00B2B2 02:B2A2: 85 1B     STA ram_001B
C - - - - - 0x00B2B4 02:B2A4: A5 11     LDA ram_0011
C - - - - - 0x00B2B6 02:B2A6: 38        SEC
C - - - - - 0x00B2B7 02:B2A7: E5 20     SBC ram_0020
C - - - - - 0x00B2B9 02:B2A9: 85 29     STA ram_0029
C - - - - - 0x00B2BB 02:B2AB: A5 12     LDA ram_0012
C - - - - - 0x00B2BD 02:B2AD: E5 21     SBC ram_0021
C - - - - - 0x00B2BF 02:B2AF: 85 2A     STA ram_002A
C - - - - - 0x00B2C1 02:B2B1: 10 07     BPL bra_B2BA
C - - - - - 0x00B2C3 02:B2B3: 20 44 B3  JSR sub_B344
C - - - - - 0x00B2C6 02:B2B6: A5 13     LDA ram_0013
C - - - - - 0x00B2C8 02:B2B8: 85 1B     STA ram_001B
bra_B2BA:
C - - - - - 0x00B2CA 02:B2BA: A5 2A     LDA ram_002A
C - - - - - 0x00B2CC 02:B2BC: D0 1A     BNE bra_B2D8
C - - - - - 0x00B2CE 02:B2BE: A5 29     LDA ram_0029
C - - - - - 0x00B2D0 02:B2C0: C5 1B     CMP ram_001B
C - - - - - 0x00B2D2 02:B2C2: B0 14     BCS bra_B2D8
C - - - - - 0x00B2D4 02:B2C4: A9 02     LDA #$02
C - - - - - 0x00B2D6 02:B2C6: 05 05     ORA ram_0005
C - - - - - 0x00B2D8 02:B2C8: 85 05     STA ram_0005
C - - - - - 0x00B2DA 02:B2CA: A4 1A     LDY ram_001A
C - - - - - 0x00B2DC 02:B2CC: B9 C1 03  LDA ram_03C1_obj,Y
C - - - - - 0x00B2DF 02:B2CF: A6 19     LDX ram_0019
C - - - - - 0x00B2E1 02:B2D1: 9D EE 03  STA ram_03EE_obj,X
C - - - - - 0x00B2E4 02:B2D4: 98        TYA
C - - - - - 0x00B2E5 02:B2D5: 9D E0 03  STA ram_03E0_obj,X
bra_B2D8:
C - - - - - 0x00B2E8 02:B2D8: A5 04     LDA ram_0004
C - - - - - 0x00B2EA 02:B2DA: 29 04     AND #$04
C - - - - - 0x00B2EC 02:B2DC: F0 5C     BEQ bra_B33A
C - - - - - 0x00B2EE 02:B2DE: A5 0A     LDA ram_000A
C - - - - - 0x00B2F0 02:B2E0: 85 1B     STA ram_001B
C - - - - - 0x00B2F2 02:B2E2: A5 23     LDA ram_0023
C - - - - - 0x00B2F4 02:B2E4: 38        SEC
C - - - - - 0x00B2F5 02:B2E5: E5 08     SBC ram_0008
C - - - - - 0x00B2F7 02:B2E7: 85 29     STA ram_0029
C - - - - - 0x00B2F9 02:B2E9: A5 24     LDA ram_0024
C - - - - - 0x00B2FB 02:B2EB: E5 09     SBC ram_0009
C - - - - - 0x00B2FD 02:B2ED: 85 2A     STA ram_002A
C - - - - - 0x00B2FF 02:B2EF: 10 07     BPL bra_B2F8
C - - - - - 0x00B301 02:B2F1: 20 44 B3  JSR sub_B344
C - - - - - 0x00B304 02:B2F4: A5 25     LDA ram_0025
C - - - - - 0x00B306 02:B2F6: 85 1B     STA ram_001B
bra_B2F8:
C - - - - - 0x00B308 02:B2F8: A5 2A     LDA ram_002A
C - - - - - 0x00B30A 02:B2FA: D0 3E     BNE bra_B33A
C - - - - - 0x00B30C 02:B2FC: A5 29     LDA ram_0029
C - - - - - 0x00B30E 02:B2FE: C5 1B     CMP ram_001B
C - - - - - 0x00B310 02:B300: B0 38     BCS bra_B33A
C - - - - - 0x00B312 02:B302: A5 0D     LDA ram_000D
C - - - - - 0x00B314 02:B304: 85 1B     STA ram_001B
C - - - - - 0x00B316 02:B306: A5 26     LDA ram_0026
C - - - - - 0x00B318 02:B308: 38        SEC
C - - - - - 0x00B319 02:B309: E5 0B     SBC ram_000B
C - - - - - 0x00B31B 02:B30B: 85 29     STA ram_0029
C - - - - - 0x00B31D 02:B30D: A5 27     LDA ram_0027
C - - - - - 0x00B31F 02:B30F: E5 0C     SBC ram_000C
C - - - - - 0x00B321 02:B311: 85 2A     STA ram_002A
C - - - - - 0x00B323 02:B313: 10 07     BPL bra_B31C
C - - - - - 0x00B325 02:B315: 20 44 B3  JSR sub_B344
C - - - - - 0x00B328 02:B318: A5 28     LDA ram_0028
C - - - - - 0x00B32A 02:B31A: 85 1B     STA ram_001B
bra_B31C:
C - - - - - 0x00B32C 02:B31C: A5 2A     LDA ram_002A
C - - - - - 0x00B32E 02:B31E: D0 1A     BNE bra_B33A
C - - - - - 0x00B330 02:B320: A5 29     LDA ram_0029
C - - - - - 0x00B332 02:B322: C5 1B     CMP ram_001B
C - - - - - 0x00B334 02:B324: B0 14     BCS bra_B33A
C - - - - - 0x00B336 02:B326: A9 04     LDA #$04
C - - - - - 0x00B338 02:B328: 05 05     ORA ram_0005
C - - - - - 0x00B33A 02:B32A: 85 05     STA ram_0005
C - - - - - 0x00B33C 02:B32C: A4 19     LDY ram_0019
C - - - - - 0x00B33E 02:B32E: B9 C1 03  LDA ram_03C1_obj,Y
C - - - - - 0x00B341 02:B331: A6 1A     LDX ram_001A
C - - - - - 0x00B343 02:B333: 9D EE 03  STA ram_03EE_obj,X
C - - - - - 0x00B346 02:B336: 98        TYA
C - - - - - 0x00B347 02:B337: 9D E0 03  STA ram_03E0_obj,X
bra_B33A:
C - - - - - 0x00B34A 02:B33A: A5 05     LDA ram_0005
C - - - - - 0x00B34C 02:B33C: 29 07     AND #$07
C - - - - - 0x00B34E 02:B33E: F0 02     BEQ bra_B342
C - - - - - 0x00B350 02:B340: 18        CLC
C - - - - - 0x00B351 02:B341: 60        RTS
bra_B342:
C - - - - - 0x00B352 02:B342: 38        SEC
C - - - - - 0x00B353 02:B343: 60        RTS



sub_B344:
C - - - - - 0x00B354 02:B344: A5 2A     LDA ram_002A
C - - - - - 0x00B356 02:B346: 49 FF     EOR #$FF
C - - - - - 0x00B358 02:B348: 85 2A     STA ram_002A
C - - - - - 0x00B35A 02:B34A: A5 29     LDA ram_0029
C - - - - - 0x00B35C 02:B34C: 49 FF     EOR #$FF
C - - - - - 0x00B35E 02:B34E: 18        CLC
C - - - - - 0x00B35F 02:B34F: 69 01     ADC #< $0001
C - - - - - 0x00B361 02:B351: 85 29     STA ram_0029
C - - - - - 0x00B363 02:B353: A5 2A     LDA ram_002A
C - - - - - 0x00B365 02:B355: 69 00     ADC #> $0001
C - - - - - 0x00B367 02:B357: 85 2A     STA ram_002A
C - - - - - 0x00B369 02:B359: 60        RTS



sub_B35A:
C - - - - - 0x00B36A 02:B35A: A4 19     LDY ram_0019
C - - - - - 0x00B36C 02:B35C: A6 1A     LDX ram_001A
C - - - - - 0x00B36E 02:B35E: B9 92 00  LDA a: ram_pos_Y_lo,Y
C - - - - - 0x00B371 02:B361: 38        SEC
C - - - - - 0x00B372 02:B362: FD 92 00  SBC a: ram_pos_Y_lo,X
C - - - - - 0x00B375 02:B365: 85 29     STA ram_0029
C - - - - - 0x00B377 02:B367: B9 9B 00  LDA a: ram_pos_Y_hi,Y
C - - - - - 0x00B37A 02:B36A: FD 9B 00  SBC a: ram_pos_Y_hi,X
C - - - - - 0x00B37D 02:B36D: 85 2A     STA ram_002A
C - - - - - 0x00B37F 02:B36F: 10 15     BPL bra_B386
C - - - - - 0x00B381 02:B371: A9 FF     LDA #$FF
C - - - - - 0x00B383 02:B373: 45 2A     EOR ram_002A
C - - - - - 0x00B385 02:B375: 85 2A     STA ram_002A
C - - - - - 0x00B387 02:B377: A9 FF     LDA #$FF
C - - - - - 0x00B389 02:B379: 45 29     EOR ram_0029
C - - - - - 0x00B38B 02:B37B: 18        CLC
C - - - - - 0x00B38C 02:B37C: 69 01     ADC #< $0001
C - - - - - 0x00B38E 02:B37E: 85 29     STA ram_0029
C - - - - - 0x00B390 02:B380: A5 2A     LDA ram_002A
C - - - - - 0x00B392 02:B382: 69 00     ADC #> $0001
C - - - - - 0x00B394 02:B384: 85 2A     STA ram_002A
bra_B386:
C - - - - - 0x00B396 02:B386: A5 2A     LDA ram_002A
C - - - - - 0x00B398 02:B388: D0 08     BNE bra_B392
C - - - - - 0x00B39A 02:B38A: A5 29     LDA ram_0029
C - - - - - 0x00B39C 02:B38C: C9 04     CMP #$04
C - - - - - 0x00B39E 02:B38E: B0 02     BCS bra_B392
C - - - - - 0x00B3A0 02:B390: 18        CLC
C - - - - - 0x00B3A1 02:B391: 60        RTS
bra_B392:
C - - - - - 0x00B3A2 02:B392: 38        SEC
C - - - - - 0x00B3A3 02:B393: 60        RTS



sub_B394:
C - - - - - 0x00B3A4 02:B394: A4 1B     LDY ram_001B
; bzk bug? it should not be referring to 0043 (ram_state)
C - - - - - 0x00B3A6 02:B396: B9 3C 00  LDA a: ram_003C_obj,Y ; 003C 003D 003E 003F 0040 0041 0042 0043
C - - - - - 0x00B3A9 02:B399: 10 3B     BPL bra_B3D6    ; if not con_003C_80
C - - - - - 0x00B3AB 02:B39B: B9 F5 03  LDA ram_03F5_obj,Y
C - - - - - 0x00B3AE 02:B39E: 30 36     BMI bra_B3D6
C - - - - - 0x00B3B0 02:B3A0: B9 43 00  LDA a: ram_state,Y
C - - - - - 0x00B3B3 02:B3A3: 10 31     BPL bra_B3D6
C - - - - - 0x00B3B5 02:B3A5: 29 7F     AND #$7F
C - - - - - 0x00B3B7 02:B3A7: C9 27     CMP #con_state_27
C - - - - - 0x00B3B9 02:B3A9: F0 2B     BEQ bra_B3D6
C - - - - - 0x00B3BB 02:B3AB: C9 28     CMP #con_state_28
C - - - - - 0x00B3BD 02:B3AD: F0 27     BEQ bra_B3D6
C - - - - - 0x00B3BF 02:B3AF: C9 2A     CMP #con_state_2A
C - - - - - 0x00B3C1 02:B3B1: F0 23     BEQ bra_B3D6
C - - - - - 0x00B3C3 02:B3B3: C9 6A     CMP #$6A
C - - - - - 0x00B3C5 02:B3B5: 90 04     BCC bra_B3BB
C - - - - - 0x00B3C7 02:B3B7: C9 6D     CMP #$6D
C - - - - - 0x00B3C9 02:B3B9: 90 1B     BCC bra_B3D6
bra_B3BB:
C - - - - - 0x00B3CB 02:B3BB: B9 4A 00  LDA a: ram_004A_obj,Y
C - - - - - 0x00B3CE 02:B3BE: 29 C0     AND #con_004A_40 + con_004A_80
C - - - - - 0x00B3D0 02:B3C0: C9 C0     CMP #con_004A_40 + con_004A_80
C - - - - - 0x00B3D2 02:B3C2: F0 12     BEQ bra_B3D6
C - - - - - 0x00B3D4 02:B3C4: B9 C7 00  LDA a: ram_animation_id,Y
C - - - - - 0x00B3D7 02:B3C7: 29 7F     AND #$7F
C - - - - - 0x00B3D9 02:B3C9: C9 7F     CMP #$7F
C - - - - - 0x00B3DB 02:B3CB: F0 09     BEQ bra_B3D6
C - - - - - 0x00B3DD 02:B3CD: B9 BF 00  LDA a: ram_obj_id,Y
C - - - - - 0x00B3E0 02:B3D0: C9 1E     CMP #con_obj_1E
C - - - - - 0x00B3E2 02:B3D2: F0 02     BEQ bra_B3D6
C - - - - - 0x00B3E4 02:B3D4: 18        CLC
C - - - - - 0x00B3E5 02:B3D5: 60        RTS
bra_B3D6:
; con_state_6B
; con_state_6C
C - - - - - 0x00B3E6 02:B3D6: 38        SEC
C - - - - - 0x00B3E7 02:B3D7: 60        RTS



sub_B3D8:
C - - - - - 0x00B3E8 02:B3D8: A6 1C     LDX ram_001C
C - - - - - 0x00B3EA 02:B3DA: A9 3F     LDA #$3F
C - - - - - 0x00B3EC 02:B3DC: E0 00     CPX #$00
C - - - - - 0x00B3EE 02:B3DE: F0 02     BEQ bra_B3E2
C - - - - - 0x00B3F0 02:B3E0: A9 CF     LDA #$CF
bra_B3E2:
C - - - - - 0x00B3F2 02:B3E2: 25 04     AND ram_0004
C - - - - - 0x00B3F4 02:B3E4: 85 04     STA ram_0004
C - - - - - 0x00B3F6 02:B3E6: A6 1B     LDX ram_001B
C - - - - - 0x00B3F8 02:B3E8: BD BF 00  LDA a: ram_obj_id,X
C - - - - - 0x00B3FB 02:B3EB: 0A        ASL
C - - - - - 0x00B3FC 02:B3EC: A8        TAY
C - - - - - 0x00B3FD 02:B3ED: B9 D2 B4  LDA tbl_B4D2,Y
C - - - - - 0x00B400 02:B3F0: 85 29     STA ram_0029
C - - - - - 0x00B402 02:B3F2: B9 D3 B4  LDA tbl_B4D2 + $01,Y
C - - - - - 0x00B405 02:B3F5: 85 2A     STA ram_002A
C - - - - - 0x00B407 02:B3F7: BD C7 00  LDA a: ram_animation_id,X
C - - - - - 0x00B40A 02:B3FA: 0A        ASL
C - - - - - 0x00B40B 02:B3FB: A8        TAY
C - - - - - 0x00B40C 02:B3FC: B1 29     LDA (ram_0029),Y
C - - - - - 0x00B40E 02:B3FE: 85 2B     STA ram_002B
C - - - - - 0x00B410 02:B400: C8        INY
C - - - - - 0x00B411 02:B401: B1 29     LDA (ram_0029),Y
C - - - - - 0x00B413 02:B403: 85 2C     STA ram_002C
C - - - - - 0x00B415 02:B405: 05 2B     ORA ram_002B
C - - - - - 0x00B417 02:B407: D0 03     BNE bra_B40C
C - - - - - 0x00B419 02:B409: 4C D0 B4  JMP loc_B4D0
bra_B40C:
C - - - - - 0x00B41C 02:B40C: A6 1C     LDX ram_001C
C - - - - - 0x00B41E 02:B40E: A0 00     LDY #$00
; bzk bug? these 8 indirect addresses can refer to 10F8-10FF (same as 00F8-00FF)
C - - - - - 0x00B420 02:B410: B1 2B     LDA (ram_002B),Y
C - - - - - 0x00B422 02:B412: C8        INY
C - - - - - 0x00B423 02:B413: C9 7F     CMP #$7F
C - - - - - 0x00B425 02:B415: F0 1D     BEQ bra_B434
C - - - - - 0x00B427 02:B417: 95 1D     STA ram_001D,X
C - - - - - 0x00B429 02:B419: B1 2B     LDA (ram_002B),Y
C - - - - - 0x00B42B 02:B41B: 95 1F     STA ram_001F,X
C - - - - - 0x00B42D 02:B41D: C8        INY
C - - - - - 0x00B42E 02:B41E: B1 2B     LDA (ram_002B),Y
C - - - - - 0x00B430 02:B420: 95 20     STA ram_0020,X
C - - - - - 0x00B432 02:B422: C8        INY
C - - - - - 0x00B433 02:B423: B1 2B     LDA (ram_002B),Y
C - - - - - 0x00B435 02:B425: 95 22     STA ram_0022,X
C - - - - - 0x00B437 02:B427: C8        INY
C - - - - - 0x00B438 02:B428: A9 40     LDA #$40
C - - - - - 0x00B43A 02:B42A: E0 00     CPX #$00
C - - - - - 0x00B43C 02:B42C: F0 02     BEQ bra_B430
C - - - - - 0x00B43E 02:B42E: A9 10     LDA #$10
bra_B430:
C - - - - - 0x00B440 02:B430: 05 04     ORA ram_0004
C - - - - - 0x00B442 02:B432: 85 04     STA ram_0004
bra_B434:
C - - - - - 0x00B444 02:B434: B1 2B     LDA (ram_002B),Y
C - - - - - 0x00B446 02:B436: C9 7F     CMP #$7F
C - - - - - 0x00B448 02:B438: F0 1D     BEQ bra_B457
C - - - - - 0x00B44A 02:B43A: 95 08     STA ram_0008,X
C - - - - - 0x00B44C 02:B43C: C8        INY
C - - - - - 0x00B44D 02:B43D: B1 2B     LDA (ram_002B),Y
C - - - - - 0x00B44F 02:B43F: 95 0A     STA ram_000A,X
C - - - - - 0x00B451 02:B441: C8        INY
C - - - - - 0x00B452 02:B442: B1 2B     LDA (ram_002B),Y
C - - - - - 0x00B454 02:B444: 95 0B     STA ram_000B,X
C - - - - - 0x00B456 02:B446: C8        INY
C - - - - - 0x00B457 02:B447: B1 2B     LDA (ram_002B),Y
C - - - - - 0x00B459 02:B449: 95 0D     STA ram_000D,X
C - - - - - 0x00B45B 02:B44B: A9 80     LDA #$80
C - - - - - 0x00B45D 02:B44D: E0 00     CPX #$00
C - - - - - 0x00B45F 02:B44F: F0 02     BEQ bra_B453
C - - - - - 0x00B461 02:B451: A9 20     LDA #$20
bra_B453:
C - - - - - 0x00B463 02:B453: 05 04     ORA ram_0004
C - - - - - 0x00B465 02:B455: 85 04     STA ram_0004
bra_B457:
C - - - - - 0x00B467 02:B457: A4 1B     LDY ram_001B
C - - - - - 0x00B469 02:B459: B5 20     LDA ram_0020,X
C - - - - - 0x00B46B 02:B45B: 08        PHP
C - - - - - 0x00B46C 02:B45C: 18        CLC
C - - - - - 0x00B46D 02:B45D: 79 AD 00  ADC a: ram_pos_Z_lo,Y
C - - - - - 0x00B470 02:B460: 95 20     STA ram_0020,X
C - - - - - 0x00B472 02:B462: B9 B6 00  LDA a: ram_pos_Z_hi,Y
C - - - - - 0x00B475 02:B465: 69 00     ADC #$00
C - - - - - 0x00B477 02:B467: 28        PLP
C - - - - - 0x00B478 02:B468: 10 03     BPL bra_B46D
C - - - - - 0x00B47A 02:B46A: 18        CLC
C - - - - - 0x00B47B 02:B46B: 69 FF     ADC #$FF
bra_B46D:
C - - - - - 0x00B47D 02:B46D: 95 21     STA ram_0021,X
C - - - - - 0x00B47F 02:B46F: B5 0B     LDA ram_000B,X
C - - - - - 0x00B481 02:B471: 08        PHP
C - - - - - 0x00B482 02:B472: 18        CLC
C - - - - - 0x00B483 02:B473: 79 AD 00  ADC a: ram_pos_Z_lo,Y
C - - - - - 0x00B486 02:B476: 95 0B     STA ram_000B,X
C - - - - - 0x00B488 02:B478: B9 B6 00  LDA a: ram_pos_Z_hi,Y
C - - - - - 0x00B48B 02:B47B: 69 00     ADC #$00
C - - - - - 0x00B48D 02:B47D: 28        PLP
C - - - - - 0x00B48E 02:B47E: 10 03     BPL bra_B483
C - - - - - 0x00B490 02:B480: 18        CLC
C - - - - - 0x00B491 02:B481: 69 FF     ADC #$FF
bra_B483:
C - - - - - 0x00B493 02:B483: 95 0C     STA ram_000C,X
C - - - - - 0x00B495 02:B485: B9 C7 00  LDA a: ram_animation_id,Y
C - - - - - 0x00B498 02:B488: 10 18     BPL bra_B4A2
C - - - - - 0x00B49A 02:B48A: B5 1D     LDA ram_001D,X
C - - - - - 0x00B49C 02:B48C: 18        CLC
C - - - - - 0x00B49D 02:B48D: 75 1F     ADC ram_001F,X
C - - - - - 0x00B49F 02:B48F: 49 FF     EOR #$FF
C - - - - - 0x00B4A1 02:B491: 18        CLC
C - - - - - 0x00B4A2 02:B492: 69 01     ADC #$01
C - - - - - 0x00B4A4 02:B494: 95 1D     STA ram_001D,X
C - - - - - 0x00B4A6 02:B496: B5 08     LDA ram_0008,X
C - - - - - 0x00B4A8 02:B498: 18        CLC
C - - - - - 0x00B4A9 02:B499: 75 0A     ADC ram_000A,X
C - - - - - 0x00B4AB 02:B49B: 49 FF     EOR #$FF
C - - - - - 0x00B4AD 02:B49D: 18        CLC
C - - - - - 0x00B4AE 02:B49E: 69 01     ADC #$01
C - - - - - 0x00B4B0 02:B4A0: 95 08     STA ram_0008,X
bra_B4A2:
C - - - - - 0x00B4B2 02:B4A2: B5 1D     LDA ram_001D,X
C - - - - - 0x00B4B4 02:B4A4: 08        PHP
C - - - - - 0x00B4B5 02:B4A5: 18        CLC
C - - - - - 0x00B4B6 02:B4A6: 79 77 00  ADC a: ram_pos_X_lo,Y
C - - - - - 0x00B4B9 02:B4A9: 95 1D     STA ram_001D,X
C - - - - - 0x00B4BB 02:B4AB: B9 80 00  LDA a: ram_pos_X_hi,Y
C - - - - - 0x00B4BE 02:B4AE: 69 00     ADC #$00
C - - - - - 0x00B4C0 02:B4B0: 28        PLP
C - - - - - 0x00B4C1 02:B4B1: 10 03     BPL bra_B4B6
C - - - - - 0x00B4C3 02:B4B3: 18        CLC
C - - - - - 0x00B4C4 02:B4B4: 69 FF     ADC #$FF
bra_B4B6:
C - - - - - 0x00B4C6 02:B4B6: 95 1E     STA ram_001E,X
C - - - - - 0x00B4C8 02:B4B8: B5 08     LDA ram_0008,X
C - - - - - 0x00B4CA 02:B4BA: 08        PHP
C - - - - - 0x00B4CB 02:B4BB: 18        CLC
C - - - - - 0x00B4CC 02:B4BC: 79 77 00  ADC a: ram_pos_X_lo,Y
C - - - - - 0x00B4CF 02:B4BF: 95 08     STA ram_0008,X
C - - - - - 0x00B4D1 02:B4C1: B9 80 00  LDA a: ram_pos_X_hi,Y
C - - - - - 0x00B4D4 02:B4C4: 69 00     ADC #$00
C - - - - - 0x00B4D6 02:B4C6: 28        PLP
C - - - - - 0x00B4D7 02:B4C7: 10 03     BPL bra_B4CC
C - - - - - 0x00B4D9 02:B4C9: 18        CLC
C - - - - - 0x00B4DA 02:B4CA: 69 FF     ADC #$FF
bra_B4CC:
C - - - - - 0x00B4DC 02:B4CC: 95 09     STA ram_0009,X
C - - - - - 0x00B4DE 02:B4CE: 18        CLC
C - - - - - 0x00B4DF 02:B4CF: 60        RTS
loc_B4D0:
C D 1 - - - 0x00B4E0 02:B4D0: 38        SEC
C - - - - - 0x00B4E1 02:B4D1: 60        RTS



tbl_B4D2:
- D 1 - - - 0x00B4E2 02:B4D2: DC B5     .word _off003_B5DC_00_billy
- D 1 - - - 0x00B4E4 02:B4D4: DC B5     .word _off003_B5DC_01_jimmy
- D 1 - - - 0x00B4E6 02:B4D6: 0E B5     .word _off003_B50E_02_williams
- D 1 - - - 0x00B4E8 02:B4D8: 5A B5     .word _off003_B55A_03_roper
- D 1 - - - 0x00B4EA 02:B4DA: A6 B5     .word _off003_B5A6_04_linda
- - - - - - 0x00B4EC 02:B4DC: DC B5     .word _off003_B5DC_05
- D 1 - - - 0x00B4EE 02:B4DE: 1E B7     .word _off003_B71E_06_bolo
- D 1 - - - 0x00B4F0 02:B4E0: E6 B6     .word _off003_B6E6_07_burnov
- D 1 - - - 0x00B4F2 02:B4E2: C4 B6     .word _off003_B6C4_08_abore
- D 1 - - - 0x00B4F4 02:B4E4: 9C B6     .word _off003_B69C_09_chin_taimei
- D 1 - - - 0x00B4F6 02:B4E6: 84 B8     .word _off003_B884_0A_right_arm
- - - - - - 0x00B4F8 02:B4E8: DC B5     .word _off003_B5DC_0B
- D 1 - - - 0x00B4FA 02:B4EA: DC B5     .word _off003_B5DC_0C_doppelganger
- - - - - - 0x00B4FC 02:B4EC: DC B5     .word _off003_B5DC_0D
- - - - - - 0x00B4FE 02:B4EE: DC B5     .word _off003_B5DC_0E
- D 1 - - - 0x00B500 02:B4F0: 50 B7     .word _off003_B750_0F_nina
- - - - - - 0x00B502 02:B4F2: DC B5     .word _off003_B5DC_10
- D 1 - - - 0x00B504 02:B4F4: 96 B7     .word _off003_B796_11_shadow_warrior
- D 1 - - - 0x00B506 02:B4F6: 18 B8     .word _off003_B818_12_knife
- D 1 - - - 0x00B508 02:B4F8: 04 B8     .word _off003_B804_13
- D 1 - - - 0x00B50A 02:B4FA: 42 B8     .word _off003_B842_14_grenade
- D 1 - - - 0x00B50C 02:B4FC: DC B5     .word _off003_B5DC_15_chain_wip
- D 1 - - - 0x00B50E 02:B4FE: 42 B8     .word _off003_B842_16_flame_grenades
- D 1 - - - 0x00B510 02:B500: D0 B8     .word _off003_B8D0_17_baton
- D 1 - - - 0x00B512 02:B502: 2A B8     .word _off003_B82A_18
- D 1 - - - 0x00B514 02:B504: EE B7     .word _off003_B7EE_19
- D 1 - - - 0x00B516 02:B506: 36 B8     .word _off003_B836_1A
- D 1 - - - 0x00B518 02:B508: 78 B8     .word _off003_B878_1B_jumping_spike 
- D 1 - - - 0x00B51A 02:B50A: E6 B7     .word _off003_B7E6_1C_fireball
- D 1 - - - 0x00B51C 02:B50C: 00 B8     .word _off003_B800_1D



_off003_B50E_02_williams:
- D 1 - I - 0x00B51E 02:B50E: DA B8     .word off_B8DA
- D 1 - I - 0x00B520 02:B510: DA B8     .word off_B8DA
- D 1 - I - 0x00B522 02:B512: DA B8     .word off_B8DA
- D 1 - I - 0x00B524 02:B514: DA B8     .word off_B8DA
- D 1 - I - 0x00B526 02:B516: DA B8     .word off_B8DA
- D 1 - I - 0x00B528 02:B518: DA B8     .word off_B8DA
- D 1 - I - 0x00B52A 02:B51A: 00 00     .word $0000
- D 1 - I - 0x00B52C 02:B51C: 00 00     .word $0000
- D 1 - I - 0x00B52E 02:B51E: 00 00     .word $0000
- D 1 - I - 0x00B530 02:B520: DA B8     .word off_B8DA
- D 1 - I - 0x00B532 02:B522: 00 00     .word $0000
- - - - - - 0x00B534 02:B524: 00 00     .word $0000
- D 1 - I - 0x00B536 02:B526: DA B8     .word off_B8DA
- D 1 - I - 0x00B538 02:B528: E4 B8     .word off_B8E4
- D 1 - I - 0x00B53A 02:B52A: DA B8     .word off_B8DA
- D 1 - I - 0x00B53C 02:B52C: E4 B8     .word off_B8E4
- D 1 - I - 0x00B53E 02:B52E: DA B8     .word off_B8DA
- D 1 - I - 0x00B540 02:B530: DA B8     .word off_B8DA
- D 1 - I - 0x00B542 02:B532: DA B8     .word off_B8DA
- D 1 - I - 0x00B544 02:B534: 1D BA     .word off_BA1D
- D 1 - I - 0x00B546 02:B536: DA B8     .word off_B8DA
- D 1 - I - 0x00B548 02:B538: DA B8     .word off_B8DA
- D 1 - I - 0x00B54A 02:B53A: 38 B9     .word off_B938
- - - - - - 0x00B54C 02:B53C: 00 00     .word $0000
- - - - - - 0x00B54E 02:B53E: 00 00     .word $0000
- - - - - - 0x00B550 02:B540: 00 00     .word $0000
- D 1 - I - 0x00B552 02:B542: DA B8     .word off_B8DA
- D 1 - I - 0x00B554 02:B544: DA B8     .word off_B8DA
- D 1 - I - 0x00B556 02:B546: DA B8     .word off_B8DA
- D 1 - I - 0x00B558 02:B548: DA B8     .word off_B8DA
- D 1 - I - 0x00B55A 02:B54A: DA B8     .word off_B8DA
- D 1 - I - 0x00B55C 02:B54C: DA B8     .word off_B8DA
- D 1 - I - 0x00B55E 02:B54E: DA B8     .word off_B8DA
- D 1 - I - 0x00B560 02:B550: DA B8     .word off_B8DA
- D 1 - I - 0x00B562 02:B552: DA B8     .word off_B8DA
- D 1 - I - 0x00B564 02:B554: DA B8     .word off_B8DA
- D 1 - I - 0x00B566 02:B556: DA B8     .word off_B8DA
- D 1 - I - 0x00B568 02:B558: FE B8     .word off_B8FE



_off003_B55A_03_roper:
- D 1 - I - 0x00B56A 02:B55A: DA B8     .word off_B8DA
- D 1 - I - 0x00B56C 02:B55C: DA B8     .word off_B8DA
- D 1 - I - 0x00B56E 02:B55E: DA B8     .word off_B8DA
- D 1 - I - 0x00B570 02:B560: DA B8     .word off_B8DA
- D 1 - I - 0x00B572 02:B562: DA B8     .word off_B8DA
- D 1 - I - 0x00B574 02:B564: DA B8     .word off_B8DA
- D 1 - I - 0x00B576 02:B566: 00 00     .word $0000
- D 1 - I - 0x00B578 02:B568: 00 00     .word $0000
- D 1 - I - 0x00B57A 02:B56A: 00 00     .word $0000
- D 1 - I - 0x00B57C 02:B56C: DA B8     .word off_B8DA
- D 1 - I - 0x00B57E 02:B56E: 00 00     .word $0000
- - - - - - 0x00B580 02:B570: 00 00     .word $0000
- D 1 - I - 0x00B582 02:B572: DA B8     .word off_B8DA
- D 1 - I - 0x00B584 02:B574: E4 B8     .word off_B8E4
- D 1 - I - 0x00B586 02:B576: DA B8     .word off_B8DA
- D 1 - I - 0x00B588 02:B578: E4 B8     .word off_B8E4
- D 1 - I - 0x00B58A 02:B57A: DA B8     .word off_B8DA
- D 1 - I - 0x00B58C 02:B57C: DA B8     .word off_B8DA
- - - - - - 0x00B58E 02:B57E: DA B8     .word off_B8DA
- - - - - - 0x00B590 02:B580: DA B8     .word off_B8DA
- - - - - - 0x00B592 02:B582: DA B8     .word off_B8DA
- - - - - - 0x00B594 02:B584: DA B8     .word off_B8DA
- - - - - - 0x00B596 02:B586: 26 B9     .word off_B926
- - - - - - 0x00B598 02:B588: 00 00     .word $0000
- - - - - - 0x00B59A 02:B58A: 00 00     .word $0000
- - - - - - 0x00B59C 02:B58C: 00 00     .word $0000
- - - - - - 0x00B59E 02:B58E: DA B8     .word off_B8DA
- - - - - - 0x00B5A0 02:B590: DA B8     .word off_B8DA
- - - - - - 0x00B5A2 02:B592: DA B8     .word off_B8DA
- - - - - - 0x00B5A4 02:B594: DA B8     .word off_B8DA
- - - - - - 0x00B5A6 02:B596: DA B8     .word off_B8DA
- - - - - - 0x00B5A8 02:B598: DA B8     .word off_B8DA
- - - - - - 0x00B5AA 02:B59A: 00 00     .word $0000
- - - - - - 0x00B5AC 02:B59C: 00 00     .word $0000
- - - - - - 0x00B5AE 02:B59E: 00 00     .word $0000
- - - - - - 0x00B5B0 02:B5A0: 00 00     .word $0000
- - - - - - 0x00B5B2 02:B5A2: 00 00     .word $0000
- D 1 - I - 0x00B5B4 02:B5A4: FE B8     .word off_B8FE



_off003_B5A6_04_linda:
- D 1 - I - 0x00B5B6 02:B5A6: DA B8     .word off_B8DA
- D 1 - I - 0x00B5B8 02:B5A8: DA B8     .word off_B8DA
- D 1 - I - 0x00B5BA 02:B5AA: DA B8     .word off_B8DA
- D 1 - I - 0x00B5BC 02:B5AC: DA B8     .word off_B8DA
- D 1 - I - 0x00B5BE 02:B5AE: DA B8     .word off_B8DA
- D 1 - I - 0x00B5C0 02:B5B0: DA B8     .word off_B8DA
- D 1 - I - 0x00B5C2 02:B5B2: 00 00     .word $0000
- D 1 - I - 0x00B5C4 02:B5B4: 00 00     .word $0000
- D 1 - I - 0x00B5C6 02:B5B6: 00 00     .word $0000
- D 1 - I - 0x00B5C8 02:B5B8: DA B8     .word off_B8DA
- D 1 - I - 0x00B5CA 02:B5BA: 00 00     .word $0000
- - - - - - 0x00B5CC 02:B5BC: 00 00     .word $0000
- D 1 - I - 0x00B5CE 02:B5BE: DA B8     .word off_B8DA
- D 1 - I - 0x00B5D0 02:B5C0: E4 B8     .word off_B8E4
- D 1 - I - 0x00B5D2 02:B5C2: DA B8     .word off_B8DA
- D 1 - I - 0x00B5D4 02:B5C4: E4 B8     .word off_B8E4
- D 1 - I - 0x00B5D6 02:B5C6: DA B8     .word off_B8DA
- D 1 - I - 0x00B5D8 02:B5C8: DA B8     .word off_B8DA
- D 1 - I - 0x00B5DA 02:B5CA: DA B8     .word off_B8DA
- D 1 - I - 0x00B5DC 02:B5CC: 15 BA     .word off_BA15
- - - - - - 0x00B5DE 02:B5CE: DA B8     .word off_B8DA
- D 1 - I - 0x00B5E0 02:B5D0: DA B8     .word off_B8DA
- D 1 - I - 0x00B5E2 02:B5D2: 26 B9     .word off_B926
- D 1 - I - 0x00B5E4 02:B5D4: DA B8     .word off_B8DA
- - - - - - 0x00B5E6 02:B5D6: 00 00     .word $0000
- - - - - - 0x00B5E8 02:B5D8: 00 00     .word $0000
- D 1 - I - 0x00B5EA 02:B5DA: 40 B9     .word off_B940



_off003_B5DC_00_billy: ; con_obj_billy
_off003_B5DC_01_jimmy: ; con_obj_jimmy
_off003_B5DC_05: ; con_obj_05
_off003_B5DC_0B: ; con_obj_0B
_off003_B5DC_0C_doppelganger: ; con_obj_doppelganger
_off003_B5DC_0D: ; con_obj_0D
_off003_B5DC_0E: ; con_obj_0E
_off003_B5DC_10: ; con_obj_10
_off003_B5DC_15_chain_wip: ; con_obj_chain_whip
- D 1 - I - 0x00B5EC 02:B5DC: DA B8     .word off_B8DA
- D 1 - I - 0x00B5EE 02:B5DE: DA B8     .word off_B8DA
- D 1 - I - 0x00B5F0 02:B5E0: DA B8     .word off_B8DA
- D 1 - I - 0x00B5F2 02:B5E2: DA B8     .word off_B8DA
- D 1 - I - 0x00B5F4 02:B5E4: DA B8     .word off_B8DA
- D 1 - I - 0x00B5F6 02:B5E6: DA B8     .word off_B8DA
- D 1 - I - 0x00B5F8 02:B5E8: 00 00     .word $0000
- D 1 - I - 0x00B5FA 02:B5EA: 00 00     .word $0000
- D 1 - I - 0x00B5FC 02:B5EC: 00 00     .word $0000
- D 1 - I - 0x00B5FE 02:B5EE: DA B8     .word off_B8DA
- D 1 - I - 0x00B600 02:B5F0: 00 00     .word $0000
- - - - - - 0x00B602 02:B5F2: 00 00     .word $0000
- D 1 - I - 0x00B604 02:B5F4: DA B8     .word off_B8DA
- D 1 - I - 0x00B606 02:B5F6: E4 B8     .word off_B8E4
- D 1 - I - 0x00B608 02:B5F8: DA B8     .word off_B8DA
- D 1 - I - 0x00B60A 02:B5FA: E4 B8     .word off_B8E4
- D 1 - I - 0x00B60C 02:B5FC: DA B8     .word off_B8DA
- D 1 - I - 0x00B60E 02:B5FE: DA B8     .word off_B8DA
- D 1 - I - 0x00B610 02:B600: DA B8     .word off_B8DA
- D 1 - I - 0x00B612 02:B602: 1D BA     .word off_BA1D
- D 1 - I - 0x00B614 02:B604: DA B8     .word off_B8DA
- D 1 - I - 0x00B616 02:B606: EC B8     .word off_B8EC
- D 1 - I - 0x00B618 02:B608: F1 B8     .word off_B8F1
- D 1 - I - 0x00B61A 02:B60A: F9 B8     .word off_B8F9
- D 1 - I - 0x00B61C 02:B60C: 26 B9     .word off_B926
- D 1 - I - 0x00B61E 02:B60E: FE B8     .word off_B8FE
- D 1 - I - 0x00B620 02:B610: DA B8     .word off_B8DA
- D 1 - I - 0x00B622 02:B612: 06 B9     .word off_B906
- D 1 - I - 0x00B624 02:B614: DA B8     .word off_B8DA
- D 1 - I - 0x00B626 02:B616: 0E B9     .word off_B90E
- D 1 - I - 0x00B628 02:B618: DA B8     .word off_B8DA
- D 1 - I - 0x00B62A 02:B61A: 16 B9     .word off_B916
- D 1 - I - 0x00B62C 02:B61C: 16 B9     .word off_B916
- D 1 - I - 0x00B62E 02:B61E: 1E B9     .word off_B91E
- D 1 - I - 0x00B630 02:B620: 1E B9     .word off_B91E
- D 1 - I - 0x00B632 02:B622: DA B8     .word off_B8DA
- D 1 - I - 0x00B634 02:B624: DA B8     .word off_B8DA
- D 1 - I - 0x00B636 02:B626: 2E B9     .word off_B92E
- D 1 - I - 0x00B638 02:B628: DA B8     .word off_B8DA
- D 1 - I - 0x00B63A 02:B62A: DA B8     .word off_B8DA
- D 1 - I - 0x00B63C 02:B62C: 33 B9     .word off_B933
- - - - - - 0x00B63E 02:B62E: 00 00     .word $0000
- - - - - - 0x00B640 02:B630: 00 00     .word $0000
- D 1 - I - 0x00B642 02:B632: 2E B9     .word off_B92E
- D 1 - I - 0x00B644 02:B634: 2E B9     .word off_B92E
- D 1 - I - 0x00B646 02:B636: DA B8     .word off_B8DA
- D 1 - I - 0x00B648 02:B638: DA B8     .word off_B8DA
- - - - - - 0x00B64A 02:B63A: DA B8     .word off_B8DA
- D 1 - I - 0x00B64C 02:B63C: DA B8     .word off_B8DA
- - - - - - 0x00B64E 02:B63E: 00 00     .word $0000
- - - - - - 0x00B650 02:B640: 00 00     .word $0000
- - - - - - 0x00B652 02:B642: 00 00     .word $0000
- - - - - - 0x00B654 02:B644: 00 00     .word $0000
- - - - - - 0x00B656 02:B646: 00 00     .word $0000
- - - - - - 0x00B658 02:B648: 00 00     .word $0000
- - - - - - 0x00B65A 02:B64A: 00 00     .word $0000
- - - - - - 0x00B65C 02:B64C: 00 00     .word $0000
- D 1 - I - 0x00B65E 02:B64E: 00 00     .word $0000
- D 1 - I - 0x00B660 02:B650: DA B8     .word off_B8DA
- D 1 - I - 0x00B662 02:B652: 2D BA     .word off_BA2D
- D 1 - I - 0x00B664 02:B654: 2D BA     .word off_BA2D
- D 1 - I - 0x00B666 02:B656: 2D BA     .word off_BA2D
- D 1 - I - 0x00B668 02:B658: DA B8     .word off_B8DA
- D 1 - I - 0x00B66A 02:B65A: DA B8     .word off_B8DA
- D 1 - I - 0x00B66C 02:B65C: 00 00     .word $0000
- D 1 - I - 0x00B66E 02:B65E: 00 00     .word $0000
- D 1 - I - 0x00B670 02:B660: 00 00     .word $0000
- D 1 - I - 0x00B672 02:B662: 00 00     .word $0000
- D 1 - I - 0x00B674 02:B664: 00 00     .word $0000
- D 1 - I - 0x00B676 02:B666: 00 00     .word $0000
- D 1 - I - 0x00B678 02:B668: 00 00     .word $0000
- D 1 - I - 0x00B67A 02:B66A: 00 00     .word $0000
- D 1 - I - 0x00B67C 02:B66C: 00 00     .word $0000
- D 1 - I - 0x00B67E 02:B66E: 00 00     .word $0000
- D 1 - I - 0x00B680 02:B670: 00 00     .word $0000
- D 1 - I - 0x00B682 02:B672: 00 00     .word $0000
- D 1 - I - 0x00B684 02:B674: 00 00     .word $0000
- - - - - - 0x00B686 02:B676: 00 00     .word $0000
- - - - - - 0x00B688 02:B678: 00 00     .word $0000
- - - - - - 0x00B68A 02:B67A: 00 00     .word $0000
- D 1 - I - 0x00B68C 02:B67C: 00 00     .word $0000
- D 1 - I - 0x00B68E 02:B67E: 00 00     .word $0000
- D 1 - I - 0x00B690 02:B680: 00 00     .word $0000
- D 1 - I - 0x00B692 02:B682: 00 00     .word $0000
- D 1 - I - 0x00B694 02:B684: 00 00     .word $0000
- D 1 - I - 0x00B696 02:B686: 00 00     .word $0000
- D 1 - I - 0x00B698 02:B688: 00 00     .word $0000
- - - - - - 0x00B69A 02:B68A: 00 00     .word $0000
- - - - - - 0x00B69C 02:B68C: 00 00     .word $0000
- - - - - - 0x00B69E 02:B68E: 00 00     .word $0000
- - - - - - 0x00B6A0 02:B690: 00 00     .word $0000
- - - - - - 0x00B6A2 02:B692: 00 00     .word $0000
- - - - - - 0x00B6A4 02:B694: 00 00     .word $0000
- - - - - - 0x00B6A6 02:B696: 00 00     .word $0000
- D 1 - I - 0x00B6A8 02:B698: DA B8     .word off_B8DA
- D 1 - I - 0x00B6AA 02:B69A: 15 BA     .word off_BA15



_off003_B69C_09_chin_taimei: ; con_obj_chin_taimei
- D 1 - I - 0x00B6AC 02:B69C: DA B8     .word off_B8DA
- D 1 - I - 0x00B6AE 02:B69E: DA B8     .word off_B8DA
- D 1 - I - 0x00B6B0 02:B6A0: DA B8     .word off_B8DA
- D 1 - I - 0x00B6B2 02:B6A2: DA B8     .word off_B8DA
- D 1 - I - 0x00B6B4 02:B6A4: 48 B9     .word off_B948
- D 1 - I - 0x00B6B6 02:B6A6: DA B8     .word off_B8DA
- D 1 - I - 0x00B6B8 02:B6A8: 00 00     .word $0000
- D 1 - I - 0x00B6BA 02:B6AA: 00 00     .word $0000
- D 1 - I - 0x00B6BC 02:B6AC: 00 00     .word $0000
- D 1 - I - 0x00B6BE 02:B6AE: DA B8     .word off_B8DA
- D 1 - I - 0x00B6C0 02:B6B0: 00 00     .word $0000
- - - - - - 0x00B6C2 02:B6B2: 00 00     .word $0000
- - - - - - 0x00B6C4 02:B6B4: DA B8     .word off_B8DA
- D 1 - I - 0x00B6C6 02:B6B6: 50 B9     .word off_B950
- D 1 - I - 0x00B6C8 02:B6B8: 50 B9     .word off_B950
- D 1 - I - 0x00B6CA 02:B6BA: DA B8     .word off_B8DA
- D 1 - I - 0x00B6CC 02:B6BC: 58 B9     .word off_B958
- D 1 - I - 0x00B6CE 02:B6BE: 58 B9     .word off_B958
- D 1 - I - 0x00B6D0 02:B6C0: 58 B9     .word off_B958
- D 1 - I - 0x00B6D2 02:B6C2: 5D B9     .word off_B95D



_off003_B6C4_08_abore: ; con_obj_abore
- D 1 - I - 0x00B6D4 02:B6C4: 65 B9     .word off_B965
- D 1 - I - 0x00B6D6 02:B6C6: 65 B9     .word off_B965
- D 1 - I - 0x00B6D8 02:B6C8: 65 B9     .word off_B965
- - - - - - 0x00B6DA 02:B6CA: 00 00     .word $0000
- - - - - - 0x00B6DC 02:B6CC: 00 00     .word $0000
- D 1 - I - 0x00B6DE 02:B6CE: 65 B9     .word off_B965
- D 1 - I - 0x00B6E0 02:B6D0: 00 00     .word $0000
- D 1 - I - 0x00B6E2 02:B6D2: 00 00     .word $0000
- D 1 - I - 0x00B6E4 02:B6D4: 00 00     .word $0000
- D 1 - I - 0x00B6E6 02:B6D6: 65 B9     .word off_B965
- D 1 - I - 0x00B6E8 02:B6D8: 00 00     .word $0000
- - - - - - 0x00B6EA 02:B6DA: 00 00     .word $0000
- D 1 - I - 0x00B6EC 02:B6DC: 65 B9     .word off_B965
- D 1 - I - 0x00B6EE 02:B6DE: 6A B9     .word off_B96A
- D 1 - I - 0x00B6F0 02:B6E0: 65 B9     .word off_B965
- D 1 - I - 0x00B6F2 02:B6E2: 6A B9     .word off_B96A
- D 1 - I - 0x00B6F4 02:B6E4: 72 B9     .word off_B972



_off003_B6E6_07_burnov: ; con_obj_burnov
- D 1 - I - 0x00B6F6 02:B6E6: 65 B9     .word off_B965
- D 1 - I - 0x00B6F8 02:B6E8: 65 B9     .word off_B965
- D 1 - I - 0x00B6FA 02:B6EA: 65 B9     .word off_B965
- D 1 - I - 0x00B6FC 02:B6EC: 65 B9     .word off_B965
- D 1 - I - 0x00B6FE 02:B6EE: 65 B9     .word off_B965
- - - - - - 0x00B700 02:B6F0: 65 B9     .word off_B965
- D 1 - I - 0x00B702 02:B6F2: 00 00     .word $0000
- D 1 - I - 0x00B704 02:B6F4: 00 00     .word $0000
- D 1 - I - 0x00B706 02:B6F6: 00 00     .word $0000
- D 1 - I - 0x00B708 02:B6F8: 65 B9     .word off_B965
- D 1 - I - 0x00B70A 02:B6FA: 00 00     .word $0000
- - - - - - 0x00B70C 02:B6FC: 00 00     .word $0000
- D 1 - I - 0x00B70E 02:B6FE: 65 B9     .word off_B965
- D 1 - I - 0x00B710 02:B700: 7A B9     .word off_B97A
- D 1 - I - 0x00B712 02:B702: 65 B9     .word off_B965
- D 1 - I - 0x00B714 02:B704: 7A B9     .word off_B97A
- D 1 - I - 0x00B716 02:B706: 65 B9     .word off_B965
- - - - - - 0x00B718 02:B708: 00 00     .word $0000
- - - - - - 0x00B71A 02:B70A: 00 00     .word $0000
- - - - - - 0x00B71C 02:B70C: 00 00     .word $0000
- - - - - - 0x00B71E 02:B70E: 00 00     .word $0000
- - - - - - 0x00B720 02:B710: 00 00     .word $0000
- - - - - - 0x00B722 02:B712: 00 00     .word $0000
- - - - - - 0x00B724 02:B714: 00 00     .word $0000
- D 1 - I - 0x00B726 02:B716: 00 00     .word $0000
- D 1 - I - 0x00B728 02:B718: 00 00     .word $0000
- - - - - - 0x00B72A 02:B71A: 00 00     .word $0000
- - - - - - 0x00B72C 02:B71C: 00 00     .word $0000



_off003_B71E_06_bolo: ; con_obj_bolo
- D 1 - I - 0x00B72E 02:B71E: 65 B9     .word off_B965
- D 1 - I - 0x00B730 02:B720: 65 B9     .word off_B965
- D 1 - I - 0x00B732 02:B722: 65 B9     .word off_B965
- D 1 - I - 0x00B734 02:B724: 65 B9     .word off_B965
- D 1 - I - 0x00B736 02:B726: 65 B9     .word off_B965
- D 1 - I - 0x00B738 02:B728: 65 B9     .word off_B965
- D 1 - I - 0x00B73A 02:B72A: 00 00     .word $0000
- D 1 - I - 0x00B73C 02:B72C: 00 00     .word $0000
- D 1 - I - 0x00B73E 02:B72E: 00 00     .word $0000
- D 1 - I - 0x00B740 02:B730: 65 B9     .word off_B965
- D 1 - I - 0x00B742 02:B732: 00 00     .word $0000
- - - - - - 0x00B744 02:B734: 00 00     .word $0000
- D 1 - I - 0x00B746 02:B736: 65 B9     .word off_B965
- D 1 - I - 0x00B748 02:B738: 82 B9     .word off_B982
- D 1 - I - 0x00B74A 02:B73A: 65 B9     .word off_B965
- D 1 - I - 0x00B74C 02:B73C: 82 B9     .word off_B982
- - - - - - 0x00B74E 02:B73E: 00 00     .word $0000
- - - - - - 0x00B750 02:B740: 00 00     .word $0000
- - - - - - 0x00B752 02:B742: 00 00     .word $0000
- - - - - - 0x00B754 02:B744: 00 00     .word $0000
- - - - - - 0x00B756 02:B746: 00 00     .word $0000
- - - - - - 0x00B758 02:B748: 8A B9     .word off_B98A
- - - - - - 0x00B75A 02:B74A: 8A B9     .word off_B98A
- - - - - - 0x00B75C 02:B74C: 8A B9     .word off_B98A
- D 1 - I - 0x00B75E 02:B74E: 8A B9     .word off_B98A



_off003_B750_0F_nina: ; con_obj_ninja
- - - - - - 0x00B760 02:B750: 92 B9     .word off_B992
- - - - - - 0x00B762 02:B752: 92 B9     .word off_B992
- D 1 - I - 0x00B764 02:B754: DA B8     .word off_B8DA
- - - - - - 0x00B766 02:B756: 00 00     .word $0000
- D 1 - I - 0x00B768 02:B758: 92 B9     .word off_B992
- D 1 - I - 0x00B76A 02:B75A: 92 B9     .word off_B992
- D 1 - I - 0x00B76C 02:B75C: 00 00     .word $0000
- D 1 - I - 0x00B76E 02:B75E: 00 00     .word $0000
- D 1 - I - 0x00B770 02:B760: 00 00     .word $0000
- D 1 - I - 0x00B772 02:B762: DA B8     .word off_B8DA
- D 1 - I - 0x00B774 02:B764: 00 00     .word $0000
- - - - - - 0x00B776 02:B766: 00 00     .word $0000
- D 1 - I - 0x00B778 02:B768: DA B8     .word off_B8DA
- D 1 - I - 0x00B77A 02:B76A: E4 B8     .word off_B8E4
- D 1 - I - 0x00B77C 02:B76C: DA B8     .word off_B8DA
- D 1 - I - 0x00B77E 02:B76E: E4 B8     .word off_B8E4
- - - - - - 0x00B780 02:B770: 92 B9     .word off_B992
- D 1 - I - 0x00B782 02:B772: 92 B9     .word off_B992
- - - - - - 0x00B784 02:B774: 92 B9     .word off_B992
- - - - - - 0x00B786 02:B776: 92 B9     .word off_B992
- D 1 - I - 0x00B788 02:B778: 97 B9     .word off_B997
- - - - - - 0x00B78A 02:B77A: 92 B9     .word off_B992
- D 1 - I - 0x00B78C 02:B77C: DA B8     .word off_B8DA
- D 1 - I - 0x00B78E 02:B77E: 9F B9     .word off_B99F
- D 1 - I - 0x00B790 02:B780: DA B8     .word off_B8DA
- - - - - - 0x00B792 02:B782: 00 00     .word $0000
- D 1 - I - 0x00B794 02:B784: 92 B9     .word off_B992
- D 1 - I - 0x00B796 02:B786: 92 B9     .word off_B992
- D 1 - I - 0x00B798 02:B788: 92 B9     .word off_B992
- D 1 - I - 0x00B79A 02:B78A: 92 B9     .word off_B992
- D 1 - I - 0x00B79C 02:B78C: 92 B9     .word off_B992
- D 1 - I - 0x00B79E 02:B78E: 92 B9     .word off_B992
- D 1 - I - 0x00B7A0 02:B790: A7 B9     .word off_B9A7
- D 1 - I - 0x00B7A2 02:B792: AC B9     .word off_B9AC
- D 1 - I - 0x00B7A4 02:B794: B1 B9     .word off_B9B1



_off003_B796_11_shadow_warrior: ; con_obj_shadow_warrior
- D 1 - I - 0x00B7A6 02:B796: DA B8     .word off_B8DA
- D 1 - I - 0x00B7A8 02:B798: DA B8     .word off_B8DA
- D 1 - I - 0x00B7AA 02:B79A: DA B8     .word off_B8DA
- - - - - - 0x00B7AC 02:B79C: 00 00     .word $0000
- - - - - - 0x00B7AE 02:B79E: 00 00     .word $0000
- - - - - - 0x00B7B0 02:B7A0: DA B8     .word off_B8DA
- D 1 - I - 0x00B7B2 02:B7A2: 00 00     .word $0000
- D 1 - I - 0x00B7B4 02:B7A4: 00 00     .word $0000
- D 1 - I - 0x00B7B6 02:B7A6: 00 00     .word $0000
- D 1 - I - 0x00B7B8 02:B7A8: DA B8     .word off_B8DA
- D 1 - I - 0x00B7BA 02:B7AA: 00 00     .word $0000
- - - - - - 0x00B7BC 02:B7AC: 00 00     .word $0000
- D 1 - I - 0x00B7BE 02:B7AE: DA B8     .word off_B8DA
- D 1 - I - 0x00B7C0 02:B7B0: BE B9     .word off_B9BE
- D 1 - I - 0x00B7C2 02:B7B2: DA B8     .word off_B8DA
- D 1 - I - 0x00B7C4 02:B7B4: BE B9     .word off_B9BE
- D 1 - I - 0x00B7C6 02:B7B6: 00 00     .word $0000
- - - - - - 0x00B7C8 02:B7B8: 00 00     .word $0000
- D 1 - I - 0x00B7CA 02:B7BA: 00 00     .word $0000
- D 1 - I - 0x00B7CC 02:B7BC: 00 00     .word $0000
- D 1 - I - 0x00B7CE 02:B7BE: 00 00     .word $0000
- D 1 - I - 0x00B7D0 02:B7C0: DA B8     .word off_B8DA
- D 1 - I - 0x00B7D2 02:B7C2: C6 B9     .word off_B9C6
- D 1 - I - 0x00B7D4 02:B7C4: 00 00     .word $0000
- D 1 - I - 0x00B7D6 02:B7C6: 00 00     .word $0000
- D 1 - I - 0x00B7D8 02:B7C8: 00 00     .word $0000
- D 1 - I - 0x00B7DA 02:B7CA: 00 00     .word $0000
- D 1 - I - 0x00B7DC 02:B7CC: CE B9     .word off_B9CE
- D 1 - I - 0x00B7DE 02:B7CE: DA B8     .word off_B8DA
- D 1 - I - 0x00B7E0 02:B7D0: D3 B9     .word off_B9D3
- D 1 - I - 0x00B7E2 02:B7D2: D8 B9     .word off_B9D8
- D 1 - I - 0x00B7E4 02:B7D4: DA B8     .word off_B8DA
- D 1 - I - 0x00B7E6 02:B7D6: DD B9     .word off_B9DD
- D 1 - I - 0x00B7E8 02:B7D8: E2 B9     .word off_B9E2
- D 1 - I - 0x00B7EA 02:B7DA: EA B9     .word off_B9EA
- - - - - - 0x00B7EC 02:B7DC: 00 00     .word $0000
- D 1 - I - 0x00B7EE 02:B7DE: DA B8     .word off_B8DA
- D 1 - I - 0x00B7F0 02:B7E0: B6 B9     .word off_B9B6
- D 1 - I - 0x00B7F2 02:B7E2: DA B8     .word off_B8DA
- D 1 - I - 0x00B7F4 02:B7E4: B6 B9     .word off_B9B6



_off003_B7E6_1C_fireball: ; con_obj_fireball
- D 1 - I - 0x00B7F6 02:B7E6: EF B9     .word off_B9EF
- D 1 - I - 0x00B7F8 02:B7E8: EF B9     .word off_B9EF
- - - - - - 0x00B7FA 02:B7EA: F4 B9     .word off_B9F4
- - - - - - 0x00B7FC 02:B7EC: F4 B9     .word off_B9F4



_off003_B7EE_19: ; con_obj_19
- - - - - - 0x00B7FE 02:B7EE: F7 B9     .word off_B9F7
- D 1 - I - 0x00B800 02:B7F0: F7 B9     .word off_B9F7
- - - - - - 0x00B802 02:B7F2: F7 B9     .word off_B9F7
- D 1 - I - 0x00B804 02:B7F4: F7 B9     .word off_B9F7
- D 1 - I - 0x00B806 02:B7F6: F7 B9     .word off_B9F7
- - - - - - 0x00B808 02:B7F8: F7 B9     .word off_B9F7
- - - - - - 0x00B80A 02:B7FA: F7 B9     .word off_B9F7
- - - - - - 0x00B80C 02:B7FC: F7 B9     .word off_B9F7
- D 1 - I - 0x00B80E 02:B7FE: 00 00     .word $0000



_off003_B800_1D: ; con_obj_1D
- D 1 - I - 0x00B810 02:B800: F7 B9     .word off_B9F7
- D 1 - I - 0x00B812 02:B802: F7 B9     .word off_B9F7



_off003_B804_13: ; con_obj_13
- D 1 - I - 0x00B814 02:B804: F4 B9     .word off_B9F4
- D 1 - I - 0x00B816 02:B806: F4 B9     .word off_B9F4
- D 1 - I - 0x00B818 02:B808: F4 B9     .word off_B9F4
- D 1 - I - 0x00B81A 02:B80A: FC B9     .word off_B9FC
- D 1 - I - 0x00B81C 02:B80C: FC B9     .word off_B9FC
- D 1 - I - 0x00B81E 02:B80E: FC B9     .word off_B9FC
- D 1 - I - 0x00B820 02:B810: FC B9     .word off_B9FC
- D 1 - I - 0x00B822 02:B812: F4 B9     .word off_B9F4
- D 1 - I - 0x00B824 02:B814: F4 B9     .word off_B9F4
- D 1 - I - 0x00B826 02:B816: F4 B9     .word off_B9F4



_off003_B818_12_knife: ; con_obj_knife
- D 1 - I - 0x00B828 02:B818: F4 B9     .word off_B9F4
- D 1 - I - 0x00B82A 02:B81A: F7 B9     .word off_B9F7
- D 1 - I - 0x00B82C 02:B81C: F7 B9     .word off_B9F7
- D 1 - I - 0x00B82E 02:B81E: F7 B9     .word off_B9F7
- - - - - - 0x00B830 02:B820: F7 B9     .word off_B9F7
- - - - - - 0x00B832 02:B822: F4 B9     .word off_B9F4
- - - - - - 0x00B834 02:B824: F4 B9     .word off_B9F4
- - - - - - 0x00B836 02:B826: F4 B9     .word off_B9F4
- D 1 - I - 0x00B838 02:B828: 00 00     .word $0000



_off003_B82A_18: ; con_obj_18
- D 1 - I - 0x00B83A 02:B82A: 01 BA     .word off_BA01
- D 1 - I - 0x00B83C 02:B82C: 01 BA     .word off_BA01
- D 1 - I - 0x00B83E 02:B82E: 01 BA     .word off_BA01
- D 1 - I - 0x00B840 02:B830: 01 BA     .word off_BA01
- D 1 - I - 0x00B842 02:B832: F4 B9     .word off_B9F4
- D 1 - I - 0x00B844 02:B834: F4 B9     .word off_B9F4



_off003_B836_1A: ; con_obj_1A
- D 1 - I - 0x00B846 02:B836: 06 BA     .word off_BA06
- D 1 - I - 0x00B848 02:B838: 06 BA     .word off_BA06
- D 1 - I - 0x00B84A 02:B83A: 06 BA     .word off_BA06
- D 1 - I - 0x00B84C 02:B83C: 06 BA     .word off_BA06
- D 1 - I - 0x00B84E 02:B83E: F4 B9     .word off_B9F4
- D 1 - I - 0x00B850 02:B840: F4 B9     .word off_B9F4



_off003_B842_14_grenade: ; con_obj_grenade
_off003_B842_16_flame_grenades: ; con_obj_flame_grenades
- D 1 - I - 0x00B852 02:B842: F4 B9     .word off_B9F4
- D 1 - I - 0x00B854 02:B844: F7 B9     .word off_B9F7
- D 1 - I - 0x00B856 02:B846: F7 B9     .word off_B9F7
- D 1 - I - 0x00B858 02:B848: F7 B9     .word off_B9F7
- D 1 - I - 0x00B85A 02:B84A: F4 B9     .word off_B9F4
- D 1 - I - 0x00B85C 02:B84C: F4 B9     .word off_B9F4
- D 1 - I - 0x00B85E 02:B84E: F4 B9     .word off_B9F4
- D 1 - I - 0x00B860 02:B850: 0B BA     .word off_BA0B
- D 1 - I - 0x00B862 02:B852: 0B BA     .word off_BA0B
- D 1 - I - 0x00B864 02:B854: 0B BA     .word off_BA0B
- D 1 - I - 0x00B866 02:B856: 0B BA     .word off_BA0B
- D 1 - I - 0x00B868 02:B858: 0B BA     .word off_BA0B
- D 1 - I - 0x00B86A 02:B85A: 0B BA     .word off_BA0B
- D 1 - I - 0x00B86C 02:B85C: 0B BA     .word off_BA0B
- D 1 - I - 0x00B86E 02:B85E: 0B BA     .word off_BA0B
- D 1 - I - 0x00B870 02:B860: F4 B9     .word off_B9F4
- D 1 - I - 0x00B872 02:B862: F4 B9     .word off_B9F4
- D 1 - I - 0x00B874 02:B864: F4 B9     .word off_B9F4
- D 1 - I - 0x00B876 02:B866: F4 B9     .word off_B9F4
- D 1 - I - 0x00B878 02:B868: F4 B9     .word off_B9F4
- D 1 - I - 0x00B87A 02:B86A: 10 BA     .word off_BA10
- D 1 - I - 0x00B87C 02:B86C: 10 BA     .word off_BA10
- D 1 - I - 0x00B87E 02:B86E: 10 BA     .word off_BA10
- D 1 - I - 0x00B880 02:B870: 10 BA     .word off_BA10
- D 1 - I - 0x00B882 02:B872: 10 BA     .word off_BA10
- D 1 - I - 0x00B884 02:B874: 10 BA     .word off_BA10
- D 1 - I - 0x00B886 02:B876: F4 B9     .word off_B9F4



_off003_B878_1B_jumping_spike: ; con_obj_jumping_spike
- D 1 - I - 0x00B888 02:B878: F7 B9     .word off_B9F7
- D 1 - I - 0x00B88A 02:B87A: F7 B9     .word off_B9F7
- D 1 - I - 0x00B88C 02:B87C: F7 B9     .word off_B9F7
- D 1 - I - 0x00B88E 02:B87E: F7 B9     .word off_B9F7
- D 1 - I - 0x00B890 02:B880: F7 B9     .word off_B9F7
- - - - - - 0x00B892 02:B882: F7 B9     .word off_B9F7



_off003_B884_0A_right_arm: ; con_obj_right_arm
- D 1 - I - 0x00B894 02:B884: DA B8     .word off_B8DA
- D 1 - I - 0x00B896 02:B886: DA B8     .word off_B8DA
- D 1 - I - 0x00B898 02:B888: DA B8     .word off_B8DA
- D 1 - I - 0x00B89A 02:B88A: DA B8     .word off_B8DA
- D 1 - I - 0x00B89C 02:B88C: DA B8     .word off_B8DA
- D 1 - I - 0x00B89E 02:B88E: DA B8     .word off_B8DA
- D 1 - I - 0x00B8A0 02:B890: 00 00     .word $0000
- D 1 - I - 0x00B8A2 02:B892: 00 00     .word $0000
- D 1 - I - 0x00B8A4 02:B894: 00 00     .word $0000
- D 1 - I - 0x00B8A6 02:B896: DA B8     .word off_B8DA
- D 1 - I - 0x00B8A8 02:B898: 00 00     .word $0000
- - - - - - 0x00B8AA 02:B89A: 00 00     .word $0000
- D 1 - I - 0x00B8AC 02:B89C: DA B8     .word off_B8DA
- D 1 - I - 0x00B8AE 02:B89E: E4 B8     .word off_B8E4
- D 1 - I - 0x00B8B0 02:B8A0: DA B8     .word off_B8DA
- D 1 - I - 0x00B8B2 02:B8A2: E4 B8     .word off_B8E4
- D 1 - I - 0x00B8B4 02:B8A4: DA B8     .word off_B8DA
- D 1 - I - 0x00B8B6 02:B8A6: 25 BA     .word off_BA25
- - - - - - 0x00B8B8 02:B8A8: 00 00     .word $0000
- - - - - - 0x00B8BA 02:B8AA: 00 00     .word $0000
- - - - - - 0x00B8BC 02:B8AC: 00 00     .word $0000
- D 1 - I - 0x00B8BE 02:B8AE: DA B8     .word off_B8DA
- D 1 - I - 0x00B8C0 02:B8B0: 25 BA     .word off_BA25
- - - - - - 0x00B8C2 02:B8B2: 00 00     .word $0000
- - - - - - 0x00B8C4 02:B8B4: 00 00     .word $0000
- - - - - - 0x00B8C6 02:B8B6: 00 00     .word $0000
- D 1 - I - 0x00B8C8 02:B8B8: E4 B8     .word off_B8E4
- - - - - - 0x00B8CA 02:B8BA: 00 00     .word $0000
- - - - - - 0x00B8CC 02:B8BC: 00 00     .word $0000
- - - - - - 0x00B8CE 02:B8BE: 00 00     .word $0000
- - - - - - 0x00B8D0 02:B8C0: 00 00     .word $0000
- - - - - - 0x00B8D2 02:B8C2: 00 00     .word $0000
- - - - - - 0x00B8D4 02:B8C4: 00 00     .word $0000
- - - - - - 0x00B8D6 02:B8C6: 00 00     .word $0000
- - - - - - 0x00B8D8 02:B8C8: 00 00     .word $0000
- - - - - - 0x00B8DA 02:B8CA: 00 00     .word $0000
- - - - - - 0x00B8DC 02:B8CC: 00 00     .word $0000
- D 1 - I - 0x00B8DE 02:B8CE: FE B8     .word off_B8FE



_off003_B8D0_17_baton: ; con_obj_baton
- D 1 - I - 0x00B8E0 02:B8D0: 00 00     .word $0000
- - - - - - 0x00B8E2 02:B8D2: 00 00     .word $0000
- - - - - - 0x00B8E4 02:B8D4: 00 00     .word $0000
- - - - - - 0x00B8E6 02:B8D6: 00 00     .word $0000
- D 1 - I - 0x00B8E8 02:B8D8: EF B9     .word off_B9EF



off_B8DA:
- D 1 - I - 0x00B8EA 02:B8DA: F8        .byte $F8   ; 
- D 1 - I - 0x00B8EB 02:B8DB: 10        .byte $10   ; 
- D 1 - I - 0x00B8EC 02:B8DC: 04        .byte $04   ; 
- D 1 - I - 0x00B8ED 02:B8DD: 20        .byte $20   ; 
- D 1 - I - 0x00B8EE 02:B8DE: 7F        .byte $7F   ; 
- - - - - - 0x00B8EF 02:B8DF: F8        .byte $F8   ; 
- - - - - - 0x00B8F0 02:B8E0: 10        .byte $10   ; 
- - - - - - 0x00B8F1 02:B8E1: 04        .byte $04   ; 
- - - - - - 0x00B8F2 02:B8E2: 20        .byte $20   ; 
- - - - - - 0x00B8F3 02:B8E3: 7F        .byte $7F   ; 

off_B8E4:
- D 1 - I - 0x00B8F4 02:B8E4: F8        .byte $F8   ; 
- D 1 - I - 0x00B8F5 02:B8E5: 10        .byte $10   ; 
- D 1 - I - 0x00B8F6 02:B8E6: 04        .byte $04   ; 
- D 1 - I - 0x00B8F7 02:B8E7: 20        .byte $20   ; 
- D 1 - I - 0x00B8F8 02:B8E8: E8        .byte $E8   ; 
- D 1 - I - 0x00B8F9 02:B8E9: 18        .byte $18   ; 
- D 1 - I - 0x00B8FA 02:B8EA: 14        .byte $14   ; 
- D 1 - I - 0x00B8FB 02:B8EB: 0C        .byte $0C   ; 

off_B8EC:
- D 1 - I - 0x00B8FC 02:B8EC: 00        .byte $00   ; 
- D 1 - I - 0x00B8FD 02:B8ED: 0A        .byte $0A   ; 
- D 1 - I - 0x00B8FE 02:B8EE: 04        .byte $04   ; 
- D 1 - I - 0x00B8FF 02:B8EF: 20        .byte $20   ; 
- D 1 - I - 0x00B900 02:B8F0: 7F        .byte $7F   ; 

off_B8F1:
- D 1 - I - 0x00B901 02:B8F1: F8        .byte $F8   ; 
- D 1 - I - 0x00B902 02:B8F2: 14        .byte $14   ; 
- D 1 - I - 0x00B903 02:B8F3: 04        .byte $04   ; 
- D 1 - I - 0x00B904 02:B8F4: 18        .byte $18   ; 
- D 1 - I - 0x00B905 02:B8F5: 00        .byte $00   ; 
- D 1 - I - 0x00B906 02:B8F6: 18        .byte $18   ; 
- D 1 - I - 0x00B907 02:B8F7: 10        .byte $10   ; 
- D 1 - I - 0x00B908 02:B8F8: 0A        .byte $0A   ; 

off_B8F9:
- D 1 - I - 0x00B909 02:B8F9: 04        .byte $04   ; 
- D 1 - I - 0x00B90A 02:B8FA: 0A        .byte $0A   ; 
- D 1 - I - 0x00B90B 02:B8FB: 04        .byte $04   ; 
- D 1 - I - 0x00B90C 02:B8FC: 20        .byte $20   ; 
- D 1 - I - 0x00B90D 02:B8FD: 7F        .byte $7F   ; 

off_B8FE:
- D 1 - I - 0x00B90E 02:B8FE: F8        .byte $F8   ; 
- D 1 - I - 0x00B90F 02:B8FF: 10        .byte $10   ; 
- D 1 - I - 0x00B910 02:B900: 04        .byte $04   ; 
- D 1 - I - 0x00B911 02:B901: 18        .byte $18   ; 
- D 1 - I - 0x00B912 02:B902: E6        .byte $E6   ; 
- D 1 - I - 0x00B913 02:B903: 20        .byte $20   ; 
- D 1 - I - 0x00B914 02:B904: 04        .byte $04   ; 
- D 1 - I - 0x00B915 02:B905: 0A        .byte $0A   ; 

off_B906:
- D 1 - I - 0x00B916 02:B906: F9        .byte $F9   ; 
- D 1 - I - 0x00B917 02:B907: 0E        .byte $0E   ; 
- D 1 - I - 0x00B918 02:B908: 04        .byte $04   ; 
- D 1 - I - 0x00B919 02:B909: 1A        .byte $1A   ; 
- D 1 - I - 0x00B91A 02:B90A: E8        .byte $E8   ; 
- D 1 - I - 0x00B91B 02:B90B: 20        .byte $20   ; 
- D 1 - I - 0x00B91C 02:B90C: 04        .byte $04   ; 
- D 1 - I - 0x00B91D 02:B90D: 10        .byte $10   ; 

off_B90E:
- D 1 - I - 0x00B91E 02:B90E: F8        .byte $F8   ; 
- D 1 - I - 0x00B91F 02:B90F: 0E        .byte $0E   ; 
- D 1 - I - 0x00B920 02:B910: 04        .byte $04   ; 
- D 1 - I - 0x00B921 02:B911: 1A        .byte $1A   ; 
- D 1 - I - 0x00B922 02:B912: E8        .byte $E8   ; 
- D 1 - I - 0x00B923 02:B913: 18        .byte $18   ; 
- D 1 - I - 0x00B924 02:B914: 14        .byte $14   ; 
- D 1 - I - 0x00B925 02:B915: 10        .byte $10   ; 

off_B916:
- D 1 - I - 0x00B926 02:B916: F9        .byte $F9   ; 
- D 1 - I - 0x00B927 02:B917: 0E        .byte $0E   ; 
- D 1 - I - 0x00B928 02:B918: 10        .byte $10   ; 
- D 1 - I - 0x00B929 02:B919: 18        .byte $18   ; 
- D 1 - I - 0x00B92A 02:B91A: E8        .byte $E8   ; 
- D 1 - I - 0x00B92B 02:B91B: 18        .byte $18   ; 
- D 1 - I - 0x00B92C 02:B91C: F0        .byte $F0   ; 
- D 1 - I - 0x00B92D 02:B91D: 20        .byte $20   ; 

off_B91E:
- D 1 - I - 0x00B92E 02:B91E: F9        .byte $F9   ; 
- D 1 - I - 0x00B92F 02:B91F: 0E        .byte $0E   ; 
- D 1 - I - 0x00B930 02:B920: 10        .byte $10   ; 
- D 1 - I - 0x00B931 02:B921: 18        .byte $18   ; 
- D 1 - I - 0x00B932 02:B922: 00        .byte $00   ; 
- D 1 - I - 0x00B933 02:B923: 18        .byte $18   ; 
- D 1 - I - 0x00B934 02:B924: F0        .byte $F0   ; 
- D 1 - I - 0x00B935 02:B925: 20        .byte $20   ; 

off_B926:
- D 1 - I - 0x00B936 02:B926: F2        .byte $F2   ; 
- D 1 - I - 0x00B937 02:B927: 0A        .byte $0A   ; 
- D 1 - I - 0x00B938 02:B928: 04        .byte $04   ; 
- D 1 - I - 0x00B939 02:B929: 20        .byte $20   ; 
- D 1 - I - 0x00B93A 02:B92A: E6        .byte $E6   ; 
- D 1 - I - 0x00B93B 02:B92B: 10        .byte $10   ; 
- D 1 - I - 0x00B93C 02:B92C: 0A        .byte $0A   ; 
- D 1 - I - 0x00B93D 02:B92D: 10        .byte $10   ; 

off_B92E:
- D 1 - I - 0x00B93E 02:B92E: F0        .byte $F0   ; 
- D 1 - I - 0x00B93F 02:B92F: 10        .byte $10   ; 
- D 1 - I - 0x00B940 02:B930: 04        .byte $04   ; 
- D 1 - I - 0x00B941 02:B931: 20        .byte $20   ; 
- D 1 - I - 0x00B942 02:B932: 7F        .byte $7F   ; 

off_B933:
- D 1 - I - 0x00B943 02:B933: 00        .byte $00   ; 
- D 1 - I - 0x00B944 02:B934: 10        .byte $10   ; 
- D 1 - I - 0x00B945 02:B935: 04        .byte $04   ; 
- D 1 - I - 0x00B946 02:B936: 20        .byte $20   ; 
- D 1 - I - 0x00B947 02:B937: 7F        .byte $7F   ; 

off_B938:
- D 1 - I - 0x00B948 02:B938: F8        .byte $F8   ; 
- D 1 - I - 0x00B949 02:B939: 10        .byte $10   ; 
- D 1 - I - 0x00B94A 02:B93A: 04        .byte $04   ; 
- D 1 - I - 0x00B94B 02:B93B: 20        .byte $20   ; 
- D 1 - I - 0x00B94C 02:B93C: E6        .byte $E6   ; 
- D 1 - I - 0x00B94D 02:B93D: 1A        .byte $1A   ; 
- D 1 - I - 0x00B94E 02:B93E: 10        .byte $10   ; 
- D 1 - I - 0x00B94F 02:B93F: 0A        .byte $0A   ; 

off_B940:
- D 1 - I - 0x00B950 02:B940: F8        .byte $F8   ; 
- D 1 - I - 0x00B951 02:B941: 10        .byte $10   ; 
- D 1 - I - 0x00B952 02:B942: 04        .byte $04   ; 
- D 1 - I - 0x00B953 02:B943: 20        .byte $20   ; 
- D 1 - I - 0x00B954 02:B944: 08        .byte $08   ; 
- D 1 - I - 0x00B955 02:B945: 0E        .byte $0E   ; 
- D 1 - I - 0x00B956 02:B946: 14        .byte $14   ; 
- D 1 - I - 0x00B957 02:B947: 10        .byte $10   ; 

off_B948:
- D 1 - I - 0x00B958 02:B948: F8        .byte $F8   ; 
- D 1 - I - 0x00B959 02:B949: 10        .byte $10   ; 
- D 1 - I - 0x00B95A 02:B94A: 04        .byte $04   ; 
- D 1 - I - 0x00B95B 02:B94B: 18        .byte $18   ; 
- D 1 - I - 0x00B95C 02:B94C: E0        .byte $E0   ; 
- D 1 - I - 0x00B95D 02:B94D: 20        .byte $20   ; 
- D 1 - I - 0x00B95E 02:B94E: 00        .byte $00   ; 
- D 1 - I - 0x00B95F 02:B94F: 10        .byte $10   ; 

off_B950:
- D 1 - I - 0x00B960 02:B950: F8        .byte $F8   ; 
- D 1 - I - 0x00B961 02:B951: 10        .byte $10   ; 
- D 1 - I - 0x00B962 02:B952: 04        .byte $04   ; 
- D 1 - I - 0x00B963 02:B953: 20        .byte $20   ; 
- D 1 - I - 0x00B964 02:B954: E6        .byte $E6   ; 
- D 1 - I - 0x00B965 02:B955: 1A        .byte $1A   ; 
- D 1 - I - 0x00B966 02:B956: 10        .byte $10   ; 
- D 1 - I - 0x00B967 02:B957: 18        .byte $18   ; 

off_B958:
- D 1 - I - 0x00B968 02:B958: F0        .byte $F0   ; 
- D 1 - I - 0x00B969 02:B959: 20        .byte $20   ; 
- D 1 - I - 0x00B96A 02:B95A: 04        .byte $04   ; 
- D 1 - I - 0x00B96B 02:B95B: 14        .byte $14   ; 
- D 1 - I - 0x00B96C 02:B95C: 7F        .byte $7F   ; 

off_B95D:
- D 1 - I - 0x00B96D 02:B95D: 00        .byte $00   ; 
- D 1 - I - 0x00B96E 02:B95E: 10        .byte $10   ; 
- D 1 - I - 0x00B96F 02:B95F: 14        .byte $14   ; 
- D 1 - I - 0x00B970 02:B960: 10        .byte $10   ; 
- D 1 - I - 0x00B971 02:B961: 00        .byte $00   ; 
- D 1 - I - 0x00B972 02:B962: 10        .byte $10   ; 
- D 1 - I - 0x00B973 02:B963: 00        .byte $00   ; 
- D 1 - I - 0x00B974 02:B964: 18        .byte $18   ; 

off_B965:
- D 1 - I - 0x00B975 02:B965: F6        .byte $F6   ; 
- D 1 - I - 0x00B976 02:B966: 14        .byte $14   ; 
- D 1 - I - 0x00B977 02:B967: 04        .byte $04   ; 
- D 1 - I - 0x00B978 02:B968: 28        .byte $28   ; 
- D 1 - I - 0x00B979 02:B969: 7F        .byte $7F   ; 

off_B96A:
- D 1 - I - 0x00B97A 02:B96A: F6        .byte $F6   ; 
- D 1 - I - 0x00B97B 02:B96B: 14        .byte $14   ; 
- D 1 - I - 0x00B97C 02:B96C: 04        .byte $04   ; 
- D 1 - I - 0x00B97D 02:B96D: 28        .byte $28   ; 
- D 1 - I - 0x00B97E 02:B96E: E4        .byte $E4   ; 
- D 1 - I - 0x00B97F 02:B96F: 20        .byte $20   ; 
- D 1 - I - 0x00B980 02:B970: 18        .byte $18   ; 
- D 1 - I - 0x00B981 02:B971: 10        .byte $10   ; 

off_B972:
- D 1 - I - 0x00B982 02:B972: F6        .byte $F6   ; 
- D 1 - I - 0x00B983 02:B973: 14        .byte $14   ; 
- D 1 - I - 0x00B984 02:B974: 04        .byte $04   ; 
- D 1 - I - 0x00B985 02:B975: 28        .byte $28   ; 
- D 1 - I - 0x00B986 02:B976: E6        .byte $E6   ; 
- D 1 - I - 0x00B987 02:B977: 18        .byte $18   ; 
- D 1 - I - 0x00B988 02:B978: 10        .byte $10   ; 
- D 1 - I - 0x00B989 02:B979: 20        .byte $20   ; 

off_B97A:
- D 1 - I - 0x00B98A 02:B97A: F6        .byte $F6   ; 
- D 1 - I - 0x00B98B 02:B97B: 14        .byte $14   ; 
- D 1 - I - 0x00B98C 02:B97C: 04        .byte $04   ; 
- D 1 - I - 0x00B98D 02:B97D: 28        .byte $28   ; 
- D 1 - I - 0x00B98E 02:B97E: E6        .byte $E6   ; 
- D 1 - I - 0x00B98F 02:B97F: 20        .byte $20   ; 
- D 1 - I - 0x00B990 02:B980: 10        .byte $10   ; 
- D 1 - I - 0x00B991 02:B981: 10        .byte $10   ; 

off_B982:
- D 1 - I - 0x00B992 02:B982: F6        .byte $F6   ; 
- D 1 - I - 0x00B993 02:B983: 14        .byte $14   ; 
- D 1 - I - 0x00B994 02:B984: 04        .byte $04   ; 
- D 1 - I - 0x00B995 02:B985: 28        .byte $28   ; 
- D 1 - I - 0x00B996 02:B986: E0        .byte $E0   ; 
- D 1 - I - 0x00B997 02:B987: 24        .byte $24   ; 
- D 1 - I - 0x00B998 02:B988: 20        .byte $20   ; 
- D 1 - I - 0x00B999 02:B989: 0A        .byte $0A   ; 

off_B98A:
- D 1 - I - 0x00B99A 02:B98A: F6        .byte $F6   ; 
- D 1 - I - 0x00B99B 02:B98B: 14        .byte $14   ; 
- D 1 - I - 0x00B99C 02:B98C: 04        .byte $04   ; 
- D 1 - I - 0x00B99D 02:B98D: 28        .byte $28   ; 
- D 1 - I - 0x00B99E 02:B98E: E6        .byte $E6   ; 
- D 1 - I - 0x00B99F 02:B98F: 20        .byte $20   ; 
- D 1 - I - 0x00B9A0 02:B990: 10        .byte $10   ; 
- D 1 - I - 0x00B9A1 02:B991: 0A        .byte $0A   ; 

off_B992:
- D 1 - I - 0x00B9A2 02:B992: F0        .byte $F0   ; 
- D 1 - I - 0x00B9A3 02:B993: 10        .byte $10   ; 
- D 1 - I - 0x00B9A4 02:B994: 04        .byte $04   ; 
- D 1 - I - 0x00B9A5 02:B995: 1A        .byte $1A   ; 
- D 1 - I - 0x00B9A6 02:B996: 7F        .byte $7F   ; 

off_B997:
- D 1 - I - 0x00B9A7 02:B997: F0        .byte $F0   ; 
- D 1 - I - 0x00B9A8 02:B998: 10        .byte $10   ; 
- D 1 - I - 0x00B9A9 02:B999: 04        .byte $04   ; 
- D 1 - I - 0x00B9AA 02:B99A: 1A        .byte $1A   ; 
- D 1 - I - 0x00B9AB 02:B99B: E6        .byte $E6   ; 
- D 1 - I - 0x00B9AC 02:B99C: 18        .byte $18   ; 
- D 1 - I - 0x00B9AD 02:B99D: 10        .byte $10   ; 
- D 1 - I - 0x00B9AE 02:B99E: 10        .byte $10   ; 

off_B99F:
- D 1 - I - 0x00B9AF 02:B99F: F0        .byte $F0   ; 
- D 1 - I - 0x00B9B0 02:B9A0: 10        .byte $10   ; 
- D 1 - I - 0x00B9B1 02:B9A1: 04        .byte $04   ; 
- D 1 - I - 0x00B9B2 02:B9A2: 1A        .byte $1A   ; 
- D 1 - I - 0x00B9B3 02:B9A3: E0        .byte $E0   ; 
- D 1 - I - 0x00B9B4 02:B9A4: 20        .byte $20   ; 
- D 1 - I - 0x00B9B5 02:B9A5: 18        .byte $18   ; 
- D 1 - I - 0x00B9B6 02:B9A6: 10        .byte $10   ; 

off_B9A7:
- D 1 - I - 0x00B9B7 02:B9A7: E8        .byte $E8   ; 
- D 1 - I - 0x00B9B8 02:B9A8: 28        .byte $28   ; 
- D 1 - I - 0x00B9B9 02:B9A9: 04        .byte $04   ; 
- D 1 - I - 0x00B9BA 02:B9AA: 10        .byte $10   ; 
- D 1 - I - 0x00B9BB 02:B9AB: 7F        .byte $7F   ; 

off_B9AC:
- D 1 - I - 0x00B9BC 02:B9AC: F8        .byte $F8   ; 
- D 1 - I - 0x00B9BD 02:B9AD: 10        .byte $10   ; 
- D 1 - I - 0x00B9BE 02:B9AE: 04        .byte $04   ; 
- D 1 - I - 0x00B9BF 02:B9AF: 20        .byte $20   ; 
- D 1 - I - 0x00B9C0 02:B9B0: 7F        .byte $7F   ; 

off_B9B1:
- D 1 - I - 0x00B9C1 02:B9B1: F0        .byte $F0   ; 
- D 1 - I - 0x00B9C2 02:B9B2: 28        .byte $28   ; 
- D 1 - I - 0x00B9C3 02:B9B3: 04        .byte $04   ; 
- D 1 - I - 0x00B9C4 02:B9B4: 10        .byte $10   ; 
- D 1 - I - 0x00B9C5 02:B9B5: 7F        .byte $7F   ; 

off_B9B6:
- D 1 - I - 0x00B9C6 02:B9B6: F8        .byte $F8   ; 
- D 1 - I - 0x00B9C7 02:B9B7: 10        .byte $10   ; 
- D 1 - I - 0x00B9C8 02:B9B8: 04        .byte $04   ; 
- D 1 - I - 0x00B9C9 02:B9B9: 28        .byte $28   ; 
- D 1 - I - 0x00B9CA 02:B9BA: E8        .byte $E8   ; 
- D 1 - I - 0x00B9CB 02:B9BB: 30        .byte $30   ; 
- D 1 - I - 0x00B9CC 02:B9BC: 14        .byte $14   ; 
- D 1 - I - 0x00B9CD 02:B9BD: 18        .byte $18   ; 

off_B9BE:
- D 1 - I - 0x00B9CE 02:B9BE: F8        .byte $F8   ; 
- D 1 - I - 0x00B9CF 02:B9BF: 10        .byte $10   ; 
- D 1 - I - 0x00B9D0 02:B9C0: 04        .byte $04   ; 
- D 1 - I - 0x00B9D1 02:B9C1: 28        .byte $28   ; 
- D 1 - I - 0x00B9D2 02:B9C2: E6        .byte $E6   ; 
- D 1 - I - 0x00B9D3 02:B9C3: 20        .byte $20   ; 
- D 1 - I - 0x00B9D4 02:B9C4: 20        .byte $20   ; 
- D 1 - I - 0x00B9D5 02:B9C5: 10        .byte $10   ; 

off_B9C6:
- D 1 - I - 0x00B9D6 02:B9C6: F8        .byte $F8   ; 
- D 1 - I - 0x00B9D7 02:B9C7: 10        .byte $10   ; 
- D 1 - I - 0x00B9D8 02:B9C8: 04        .byte $04   ; 
- D 1 - I - 0x00B9D9 02:B9C9: 28        .byte $28   ; 
- D 1 - I - 0x00B9DA 02:B9CA: E8        .byte $E8   ; 
- D 1 - I - 0x00B9DB 02:B9CB: 20        .byte $20   ; 
- D 1 - I - 0x00B9DC 02:B9CC: 10        .byte $10   ; 
- D 1 - I - 0x00B9DD 02:B9CD: 10        .byte $10   ; 

off_B9CE:
- D 1 - I - 0x00B9DE 02:B9CE: 00        .byte $00   ; 
- D 1 - I - 0x00B9DF 02:B9CF: 20        .byte $20   ; 
- D 1 - I - 0x00B9E0 02:B9D0: 04        .byte $04   ; 
- D 1 - I - 0x00B9E1 02:B9D1: 10        .byte $10   ; 
- D 1 - I - 0x00B9E2 02:B9D2: 7F        .byte $7F   ; 

off_B9D3:
- D 1 - I - 0x00B9E3 02:B9D3: 00        .byte $00   ; 
- D 1 - I - 0x00B9E4 02:B9D4: 20        .byte $20   ; 
- D 1 - I - 0x00B9E5 02:B9D5: 08        .byte $08   ; 
- D 1 - I - 0x00B9E6 02:B9D6: 10        .byte $10   ; 
- D 1 - I - 0x00B9E7 02:B9D7: 7F        .byte $7F   ; 

off_B9D8:
- D 1 - I - 0x00B9E8 02:B9D8: 00        .byte $00   ; 
- D 1 - I - 0x00B9E9 02:B9D9: 20        .byte $20   ; 
- D 1 - I - 0x00B9EA 02:B9DA: 08        .byte $08   ; 
- D 1 - I - 0x00B9EB 02:B9DB: 18        .byte $18   ; 
- D 1 - I - 0x00B9EC 02:B9DC: 7F        .byte $7F   ; 

off_B9DD:
- D 1 - I - 0x00B9ED 02:B9DD: F8        .byte $F8   ; 
- D 1 - I - 0x00B9EE 02:B9DE: 10        .byte $10   ; 
- D 1 - I - 0x00B9EF 02:B9DF: 04        .byte $04   ; 
- D 1 - I - 0x00B9F0 02:B9E0: 1A        .byte $1A   ; 
- D 1 - I - 0x00B9F1 02:B9E1: 7F        .byte $7F   ; 

off_B9E2:
- D 1 - I - 0x00B9F2 02:B9E2: F8        .byte $F8   ; 
- D 1 - I - 0x00B9F3 02:B9E3: 10        .byte $10   ; 
- D 1 - I - 0x00B9F4 02:B9E4: 04        .byte $04   ; 
- D 1 - I - 0x00B9F5 02:B9E5: 1A        .byte $1A   ; 
- D 1 - I - 0x00B9F6 02:B9E6: E6        .byte $E6   ; 
- D 1 - I - 0x00B9F7 02:B9E7: 20        .byte $20   ; 
- D 1 - I - 0x00B9F8 02:B9E8: 10        .byte $10   ; 
- D 1 - I - 0x00B9F9 02:B9E9: 18        .byte $18   ; 

off_B9EA:
- D 1 - I - 0x00B9FA 02:B9EA: FC        .byte $FC   ; 
- D 1 - I - 0x00B9FB 02:B9EB: 10        .byte $10   ; 
- D 1 - I - 0x00B9FC 02:B9EC: 08        .byte $08   ; 
- D 1 - I - 0x00B9FD 02:B9ED: 1A        .byte $1A   ; 
- D 1 - I - 0x00B9FE 02:B9EE: 7F        .byte $7F   ; 

off_B9EF:
- D 1 - I - 0x00B9FF 02:B9EF: 7F        .byte $7F   ; 
- D 1 - I - 0x00BA00 02:B9F0: F8        .byte $F8   ; 
- D 1 - I - 0x00BA01 02:B9F1: 10        .byte $10   ; 
- D 1 - I - 0x00BA02 02:B9F2: FC        .byte $FC   ; 
- D 1 - I - 0x00BA03 02:B9F3: 08        .byte $08   ; 

off_B9F4:
- D 1 - I - 0x00BA04 02:B9F4: 7F        .byte $7F   ; 
- D 1 - I - 0x00BA05 02:B9F5: 7F        .byte $7F   ; 
- - - - - - 0x00BA06 02:B9F6: 7F        .byte $7F   ; 

off_B9F7:
- D 1 - I - 0x00BA07 02:B9F7: 7F        .byte $7F   ; 
- D 1 - I - 0x00BA08 02:B9F8: FC        .byte $FC   ; 
- D 1 - I - 0x00BA09 02:B9F9: 08        .byte $08   ; 
- D 1 - I - 0x00BA0A 02:B9FA: FC        .byte $FC   ; 
- D 1 - I - 0x00BA0B 02:B9FB: 08        .byte $08   ; 

off_B9FC:
- D 1 - I - 0x00BA0C 02:B9FC: 7F        .byte $7F   ; 
- D 1 - I - 0x00BA0D 02:B9FD: 00        .byte $00   ; 
- D 1 - I - 0x00BA0E 02:B9FE: 24        .byte $24   ; 
- D 1 - I - 0x00BA0F 02:B9FF: FC        .byte $FC   ; 
- D 1 - I - 0x00BA10 02:BA00: 08        .byte $08   ; 

off_BA01:
- D 1 - I - 0x00BA11 02:BA01: 7F        .byte $7F   ; 
- D 1 - I - 0x00BA12 02:BA02: FC        .byte $FC   ; 
- D 1 - I - 0x00BA13 02:BA03: 08        .byte $08   ; 
- D 1 - I - 0x00BA14 02:BA04: 00        .byte $00   ; 
- D 1 - I - 0x00BA15 02:BA05: 10        .byte $10   ; 

off_BA06:
- D 1 - I - 0x00BA16 02:BA06: 7F        .byte $7F   ; 
- D 1 - I - 0x00BA17 02:BA07: FB        .byte $FB   ; 
- D 1 - I - 0x00BA18 02:BA08: 0A        .byte $0A   ; 
- D 1 - I - 0x00BA19 02:BA09: FB        .byte $FB   ; 
- D 1 - I - 0x00BA1A 02:BA0A: 0A        .byte $0A   ; 

off_BA0B:
- D 1 - I - 0x00BA1B 02:BA0B: 7F        .byte $7F   ; 
- D 1 - I - 0x00BA1C 02:BA0C: FC        .byte $FC   ; 
- D 1 - I - 0x00BA1D 02:BA0D: 14        .byte $14   ; 
- D 1 - I - 0x00BA1E 02:BA0E: 00        .byte $00   ; 
- D 1 - I - 0x00BA1F 02:BA0F: 18        .byte $18   ; 

off_BA10:
- D 1 - I - 0x00BA20 02:BA10: 7F        .byte $7F   ; 
- D 1 - I - 0x00BA21 02:BA11: F8        .byte $F8   ; 
- D 1 - I - 0x00BA22 02:BA12: 10        .byte $10   ; 
- D 1 - I - 0x00BA23 02:BA13: F8        .byte $F8   ; 
- D 1 - I - 0x00BA24 02:BA14: 10        .byte $10   ; 

off_BA15:
- D 1 - I - 0x00BA25 02:BA15: F8        .byte $F8   ; 
- D 1 - I - 0x00BA26 02:BA16: 10        .byte $10   ; 
- D 1 - I - 0x00BA27 02:BA17: 04        .byte $04   ; 
- D 1 - I - 0x00BA28 02:BA18: 20        .byte $20   ; 
- D 1 - I - 0x00BA29 02:BA19: E0        .byte $E0   ; 
- D 1 - I - 0x00BA2A 02:BA1A: 20        .byte $20   ; 
- D 1 - I - 0x00BA2B 02:BA1B: 10        .byte $10   ; 
- D 1 - I - 0x00BA2C 02:BA1C: 10        .byte $10   ; 

off_BA1D:
- D 1 - I - 0x00BA2D 02:BA1D: F8        .byte $F8   ; 
- D 1 - I - 0x00BA2E 02:BA1E: 10        .byte $10   ; 
- D 1 - I - 0x00BA2F 02:BA1F: 04        .byte $04   ; 
- D 1 - I - 0x00BA30 02:BA20: 20        .byte $20   ; 
- D 1 - I - 0x00BA31 02:BA21: E8        .byte $E8   ; 
- D 1 - I - 0x00BA32 02:BA22: 18        .byte $18   ; 
- D 1 - I - 0x00BA33 02:BA23: 10        .byte $10   ; 
- D 1 - I - 0x00BA34 02:BA24: 0A        .byte $0A   ; 

off_BA25:
- D 1 - I - 0x00BA35 02:BA25: F8        .byte $F8   ; 
- D 1 - I - 0x00BA36 02:BA26: 10        .byte $10   ; 
- D 1 - I - 0x00BA37 02:BA27: 04        .byte $04   ; 
- D 1 - I - 0x00BA38 02:BA28: 20        .byte $20   ; 
- D 1 - I - 0x00BA39 02:BA29: E0        .byte $E0   ; 
- D 1 - I - 0x00BA3A 02:BA2A: 20        .byte $20   ; 
- D 1 - I - 0x00BA3B 02:BA2B: 10        .byte $10   ; 
- D 1 - I - 0x00BA3C 02:BA2C: 14        .byte $14   ; 

off_BA2D:
- D 1 - I - 0x00BA3D 02:BA2D: FC        .byte $FC   ; 
- D 1 - I - 0x00BA3E 02:BA2E: 14        .byte $14   ; 
- D 1 - I - 0x00BA3F 02:BA2F: 04        .byte $04   ; 
- D 1 - I - 0x00BA40 02:BA30: 18        .byte $18   ; 
- D 1 - I - 0x00BA41 02:BA31: 7F        .byte $7F   ; 



tbl_BA32_state_handler:
- D 1 - - - 0x00BA42 02:BA32: 2A BB     .word _off004_BB2A_do_nothing   ; 00 con_state_00
- - - - - - 0x00BA44 02:BA34: 2A BB     .word _off004_BB2A_do_nothing   ; 01 con_state_01
- - - - - - 0x00BA46 02:BA36: 2A BB     .word _off004_BB2A_do_nothing   ; 02 con_state_02
- - - - - - 0x00BA48 02:BA38: 2A BB     .word _off004_BB2A_do_nothing   ; 03 con_state_03
- - - - - - 0x00BA4A 02:BA3A: 2A BB     .word _off004_BB2A_do_nothing   ; 04 con_state_04
- - - - - - 0x00BA4C 02:BA3C: 2A BB     .word _off004_BB2A_do_nothing   ; 05 con_state_05
- - - - - - 0x00BA4E 02:BA3E: 2A BB     .word _off004_BB2A_do_nothing   ; 06 con_state_jump
- - - - - - 0x00BA50 02:BA40: 2A BB     .word _off004_BB2A_do_nothing   ; 07 con_state_07
- - - - - - 0x00BA52 02:BA42: 2A BB     .word _off004_BB2A_do_nothing   ; 08 con_state_08
- - - - - - 0x00BA54 02:BA44: 2A BB     .word _off004_BB2A_do_nothing   ; 09 con_state_09
- - - - - - 0x00BA56 02:BA46: 2A BB     .word _off004_BB2A_do_nothing   ; 0A con_state_0A
- - - - - - 0x00BA58 02:BA48: 2A BB     .word _off004_BB2A_do_nothing   ; 0B con_state_0B
- - - - - - 0x00BA5A 02:BA4A: 2A BB     .word _off004_BB2A_do_nothing   ; 0C con_state_0C
- - - - - - 0x00BA5C 02:BA4C: 2A BB     .word _off004_BB2A_do_nothing   ; 0D con_state_0D
- - - - - - 0x00BA5E 02:BA4E: 2A BB     .word _off004_BB2A_do_nothing   ; 0E con_state_0E
- - - - - - 0x00BA60 02:BA50: 2A BB     .word _off004_BB2A_do_nothing   ; 0F con_state_0F
- - - - - - 0x00BA62 02:BA52: 2A BB     .word _off004_BB2A_do_nothing   ; 10 con_state_10
- - - - - - 0x00BA64 02:BA54: 2A BB     .word _off004_BB2A_do_nothing   ; 11 con_state_11
- - - - - - 0x00BA66 02:BA56: 2A BB     .word _off004_BB2A_do_nothing   ; 12 con_state_land
- - - - - - 0x00BA68 02:BA58: 2A BB     .word _off004_BB2A_do_nothing   ; 13 con_state_13
- - - - - - 0x00BA6A 02:BA5A: 2A BB     .word _off004_BB2A_do_nothing   ; 14 con_state_14
- - - - - - 0x00BA6C 02:BA5C: 2A BB     .word _off004_BB2A_do_nothing   ; 15 con_state_15
- - - - - - 0x00BA6E 02:BA5E: 2A BB     .word _off004_BB2A_do_nothing   ; 16 con_state_16
- - - - - - 0x00BA70 02:BA60: 2A BB     .word _off004_BB2A_do_nothing   ; 17 con_state_17
- D 1 - - - 0x00BA72 02:BA62: 2A BB     .word _off004_BB2A_do_nothing   ; 18 con_state_18
- - - - - - 0x00BA74 02:BA64: 2A BB     .word _off004_BB2A_do_nothing   ; 19 con_state_19
- - - - - - 0x00BA76 02:BA66: 2A BB     .word _off004_BB2A_do_nothing   ; 1A con_state_1A
- - - - - - 0x00BA78 02:BA68: 2A BB     .word _off004_BB2A_do_nothing   ; 1B con_state_1B
- - - - - - 0x00BA7A 02:BA6A: 2A BB     .word _off004_BB2A_do_nothing   ; 1C con_state_1C
- - - - - - 0x00BA7C 02:BA6C: 2A BB     .word _off004_BB2A_do_nothing   ; 1D con_state_1D
- - - - - - 0x00BA7E 02:BA6E: 2A BB     .word _off004_BB2A_do_nothing   ; 1E con_state_1E
- - - - - - 0x00BA80 02:BA70: 2A BB     .word _off004_BB2A_do_nothing   ; 1F con_state_1F
- - - - - - 0x00BA82 02:BA72: 2A BB     .word _off004_BB2A_do_nothing   ; 20 con_state_20
- - - - - - 0x00BA84 02:BA74: 2A BB     .word _off004_BB2A_do_nothing   ; 21 con_state_21
- - - - - - 0x00BA86 02:BA76: 2A BB     .word _off004_BB2A_do_nothing   ; 22 con_state_22
- - - - - - 0x00BA88 02:BA78: 2A BB     .word _off004_BB2A_do_nothing   ; 23 con_state_23
- - - - - - 0x00BA8A 02:BA7A: 2A BB     .word _off004_BB2A_do_nothing   ; 24 con_state_24
- - - - - - 0x00BA8C 02:BA7C: 2A BB     .word _off004_BB2A_do_nothing   ; 25 con_state_25
- - - - - - 0x00BA8E 02:BA7E: 2A BB     .word _off004_BB2A_do_nothing   ; 26 con_state_26
- - - - - - 0x00BA90 02:BA80: 2A BB     .word _off004_BB2A_do_nothing   ; 27 con_state_27
- - - - - - 0x00BA92 02:BA82: 2A BB     .word _off004_BB2A_do_nothing   ; 28 con_state_28
- - - - - - 0x00BA94 02:BA84: 2A BB     .word _off004_BB2A_do_nothing   ; 29 con_state_29
- - - - - - 0x00BA96 02:BA86: 2A BB     .word _off004_BB2A_do_nothing   ; 2A con_state_2A
- - - - - - 0x00BA98 02:BA88: 2A BB     .word _off004_BB2A_do_nothing   ; 2B con_state_2B
- - - - - - 0x00BA9A 02:BA8A: 2A BB     .word _off004_BB2A_do_nothing   ; 2C con_state_2C
- D 1 - - - 0x00BA9C 02:BA8C: 2B BB     .word _off004_BB2B_2D
- D 1 - - - 0x00BA9E 02:BA8E: BF BB     .word _off004_BBBF_2E
- D 1 - - - 0x00BAA0 02:BA90: C7 BB     .word _off004_BBC7_2F
- D 1 - - - 0x00BAA2 02:BA92: D2 BB     .word _off004_BBD2_30
- D 1 - - - 0x00BAA4 02:BA94: 0E BC     .word _off004_BC0E_31
- D 1 - - - 0x00BAA6 02:BA96: 49 BC     .word _off004_BC49_32
- D 1 - - - 0x00BAA8 02:BA98: 49 BC     .word _off004_BC49_33
- D 1 - - - 0x00BAAA 02:BA9A: 7D BC     .word _off004_BC7D_34
- D 1 - - - 0x00BAAC 02:BA9C: 85 BC     .word _off004_BC85_35
- D 1 - - - 0x00BAAE 02:BA9E: 8F BC     .word _off004_BC8F_36
- - - - - - 0x00BAB0 02:BAA0: 97 BC     .word _off004_BC97_37
- D 1 - - - 0x00BAB2 02:BAA2: 97 BC     .word _off004_BC97_38
- D 1 - - - 0x00BAB4 02:BAA4: C1 BC     .word _off004_BCC1_39
- D 1 - - - 0x00BAB6 02:BAA6: CB BC     .word _off004_BCCB_3A
- D 1 - - - 0x00BAB8 02:BAA8: D5 BC     .word _off004_BCD5_3B
- D 1 - - - 0x00BABA 02:BAAA: DF BC     .word _off004_BCDF_3C
- D 1 - - - 0x00BABC 02:BAAC: E8 BC     .word _off004_BCE8_3D
- D 1 - - - 0x00BABE 02:BAAE: 12 BD     .word _off004_BD12_3E
- - - - - - 0x00BAC0 02:BAB0: 20 BD     .word _off004_BD20_3F
- - - - - - 0x00BAC2 02:BAB2: 20 BD     .word _off004_BD20_40
- - - - - - 0x00BAC4 02:BAB4: 20 BD     .word _off004_BD20_41
- - - - - - 0x00BAC6 02:BAB6: 20 BD     .word _off004_BD20_42
- D 1 - - - 0x00BAC8 02:BAB8: 20 BD     .word _off004_BD20_43
- - - - - - 0x00BACA 02:BABA: 28 BD     .word _off004_BD28_44
- D 1 - - - 0x00BACC 02:BABC: 28 BD     .word _off004_BD28_45
- - - - - - 0x00BACE 02:BABE: 46 BD     .word _off004_BD46_46
- D 1 - - - 0x00BAD0 02:BAC0: 4D BD     .word _off004_BD4D_47
- D 1 - - - 0x00BAD2 02:BAC2: 55 BD     .word _off004_BD55_48
- - - - - - 0x00BAD4 02:BAC4: 61 BD     .word _off004_BD61_49
- D 1 - - - 0x00BAD6 02:BAC6: 61 BD     .word _off004_BD61_4A
- - - - - - 0x00BAD8 02:BAC8: 61 BD     .word _off004_BD61_4B
- D 1 - - - 0x00BADA 02:BACA: 61 BD     .word _off004_BD61_4C
- - - - - - 0x00BADC 02:BACC: 69 BD     .word _off004_BD69_4D
- - - - - - 0x00BADE 02:BACE: 69 BD     .word _off004_BD69_4E
- - - - - - 0x00BAE0 02:BAD0: 69 BD     .word _off004_BD69_4F
- - - - - - 0x00BAE2 02:BAD2: 69 BD     .word _off004_BD69_50
- - - - - - 0x00BAE4 02:BAD4: 69 BD     .word _off004_BD69_51
- - - - - - 0x00BAE6 02:BAD6: 69 BD     .word _off004_BD69_52
- - - - - - 0x00BAE8 02:BAD8: 69 BD     .word _off004_BD69_53
- - - - - - 0x00BAEA 02:BADA: 69 BD     .word _off004_BD69_54
- - - - - - 0x00BAEC 02:BADC: 69 BD     .word _off004_BD69_55
- - - - - - 0x00BAEE 02:BADE: 69 BD     .word _off004_BD69_56
- - - - - - 0x00BAF0 02:BAE0: 69 BD     .word _off004_BD69_57
- - - - - - 0x00BAF2 02:BAE2: 69 BD     .word _off004_BD69_58
- - - - - - 0x00BAF4 02:BAE4: 69 BD     .word _off004_BD69_59
- - - - - - 0x00BAF6 02:BAE6: 69 BD     .word _off004_BD69_5A
- D 1 - - - 0x00BAF8 02:BAE8: 69 BD     .word _off004_BD69_5B
- D 1 - - - 0x00BAFA 02:BAEA: 71 BD     .word _off004_BD71_5C
- D 1 - - - 0x00BAFC 02:BAEC: 71 BD     .word _off004_BD71_5D
- D 1 - - - 0x00BAFE 02:BAEE: 79 BD     .word _off004_BD79_5E
- - - - - - 0x00BB00 02:BAF0: 85 BD     .word _off004_BD85_5F
- - - - - - 0x00BB02 02:BAF2: 85 BD     .word _off004_BD85_60
- - - - - - 0x00BB04 02:BAF4: 85 BD     .word _off004_BD85_61
- - - - - - 0x00BB06 02:BAF6: 85 BD     .word _off004_BD85_62
- - - - - - 0x00BB08 02:BAF8: 85 BD     .word _off004_BD85_63
- - - - - - 0x00BB0A 02:BAFA: 85 BD     .word _off004_BD85_64
- - - - - - 0x00BB0C 02:BAFC: 85 BD     .word _off004_BD85_65
- D 1 - - - 0x00BB0E 02:BAFE: 85 BD     .word _off004_BD85_66
- D 1 - - - 0x00BB10 02:BB00: 8D BD     .word _off004_BD8D_67
- D 1 - - - 0x00BB12 02:BB02: 8D BD     .word _off004_BD8D_68
- D 1 - - - 0x00BB14 02:BB04: 97 BD     .word _off004_BD97_69
- - - - - - 0x00BB16 02:BB06: A0 BD     .word _off004_BDA0_6A
- - - - - - 0x00BB18 02:BB08: A0 BD     .word _off004_BDA0_6B
- - - - - - 0x00BB1A 02:BB0A: A0 BD     .word _off004_BDA0_6C
- D 1 - - - 0x00BB1C 02:BB0C: A0 BD     .word _off004_BDA0_6D
- D 1 - - - 0x00BB1E 02:BB0E: AA BD     .word _off004_BDAA_6E
- D 1 - - - 0x00BB20 02:BB10: B6 BD     .word _off004_BDB6_6F
- D 1 - - - 0x00BB22 02:BB12: BE BD     .word _off004_BDBE_70
- D 1 - - - 0x00BB24 02:BB14: C8 BD     .word _off004_BDC8_71
- D 1 - - - 0x00BB26 02:BB16: D2 BD     .word _off004_BDD2_72
- D 1 - - - 0x00BB28 02:BB18: DC BD     .word _off004_BDDC_73
- D 1 - - - 0x00BB2A 02:BB1A: E4 BD     .word _off004_BDE4_74
- - - - - - 0x00BB2C 02:BB1C: EE BD     .word _off004_BDEE_75
- - - - - - 0x00BB2E 02:BB1E: EE BD     .word _off004_BDEE_76
- D 1 - - - 0x00BB30 02:BB20: EE BD     .word _off004_BDEE_77
- D 1 - - - 0x00BB32 02:BB22: 8D BD     .word _off004_BD8D_78
- - - - - - 0x00BB34 02:BB24: F8 BD     .word _off004_BDF8_79
- - - - - - 0x00BB36 02:BB26: F8 BD     .word _off004_BDF8_7A
- - - - - - 0x00BB38 02:BB28: F8 BD     .word _off004_BDF8_7B



; handlers at 0x00AE76
con_sub_exit                            = $00 ; 
con_sub_01                              = $01 ; unused
con_sub_decrease_hp                     = $02 ; 
con_sub_set_state_1                     = $03 ; 
con_sub_set_state_2                     = $04 ; 
con_sub_set_1_or_2_state                = $05 ; 
con_sub_set_fixed_state                 = $06 ; 
con_sub_07                              = $07 ; 
con_sub_08                              = $08 ; unused
con_sub_09                              = $09 ; 
con_sub_play_sound                      = $0A ; 
con_sub_0B                              = $0B ; unused
con_sub_0C                              = $0C ; 
con_sub_0D                              = $0D ; opposite of 0C
con_sub_0E                              = $0E ; 
con_sub_set_if_not_new_state            = $0F ; 
con_sub_10                              = $10 ; 
con_sub_branch                          = $11 ; 



_off004_BB2A_do_nothing:
- D 1 - I - 0x00BB3A 02:BB2A: 00        .byte con_sub_exit



_off004_BB2B_2D:
; con_state_2D
- D 1 - I - 0x00BB3B 02:BB2B: 11        .byte con_sub_branch, @end - @start + $02
@start:
- D 1 - I - 0x00BB3D 02:BB2D: 53 BB     .word ofs_BB53_00
- D 1 - I - 0x00BB3F 02:BB2F: 53 BB     .word ofs_BB53_01
- D 1 - I - 0x00BB41 02:BB31: 70 BB     .word ofs_BB70_02
- D 1 - I - 0x00BB43 02:BB33: 70 BB     .word ofs_BB70_03
- D 1 - I - 0x00BB45 02:BB35: 70 BB     .word ofs_BB70_04
- - - - - - 0x00BB47 02:BB37: 7D BB     .word ofs_BB7D_05
- D 1 - I - 0x00BB49 02:BB39: 7D BB     .word ofs_BB7D_06
- D 1 - I - 0x00BB4B 02:BB3B: 7D BB     .word ofs_BB7D_07
- D 1 - I - 0x00BB4D 02:BB3D: 8A BB     .word ofs_BB8A_08
- - - - - - 0x00BB4F 02:BB3F: 91 BB     .word ofs_BB91_09
- D 1 - I - 0x00BB51 02:BB41: 91 BB     .word ofs_BB91_0A
- - - - - - 0x00BB53 02:BB43: 91 BB     .word ofs_BB91_0B
- - - - - - 0x00BB55 02:BB45: 91 BB     .word ofs_BB91_0C
- - - - - - 0x00BB57 02:BB47: 91 BB     .word ofs_BB91_0D
- - - - - - 0x00BB59 02:BB49: 91 BB     .word ofs_BB91_0E
- D 1 - I - 0x00BB5B 02:BB4B: 9E BB     .word ofs_BB9E_0F
- - - - - - 0x00BB5D 02:BB4D: 9E BB     .word ofs_BB9E_10
- D 1 - I - 0x00BB5F 02:BB4F: A5 BB     .word ofs_BBA5_11
@end:
- D 1 - I - 0x00BB61 02:BB51: 0C        .byte con_sub_0C
- D 1 - I - 0x00BB62 02:BB52: 00        .byte con_sub_exit



ofs_BB53_00:
ofs_BB53_01:
- D 1 - I - 0x00BB63 02:BB53: 0A        .byte con_sub_play_sound, con_sfx_hit
- D 1 - I - 0x00BB65 02:BB55: 02        .byte con_sub_decrease_hp, $02
- D 1 - I - 0x00BB67 02:BB57: 07        .byte con_sub_07
- D 1 - I - 0x00BB68 02:BB58: 63 BB     .word off_BB63_00
- D 1 - I - 0x00BB6A 02:BB5A: B2 BB     .word off_BBB2_01
- - - - - - 0x00BB6C 02:BB5C: 63 BB     .word off_BB63_02
- - - - - - 0x00BB6E 02:BB5E: B2 BB     .word off_BBB2_03
- D 1 - I - 0x00BB70 02:BB60: 09        .byte con_sub_09, $01
- D 1 - I - 0x00BB72 02:BB62: 00        .byte con_sub_exit



off_BB63_00:
off_BB63_02:
- D 1 - I - 0x00BB73 02:BB63: 0A        .byte con_sub_play_sound, con_sfx_hit
- D 1 - I - 0x00BB75 02:BB65: 02        .byte con_sub_decrease_hp, $02

- D 1 - I - 0x00BB77 02:BB67: 04        .byte con_sub_set_state_2
- D 1 - I - 0x00BB78 02:BB68: 02        .byte $02   ; compare hit counter
- D 1 - I - 0x00BB79 02:BB69: 14        .byte con_state_14   ; 
- D 1 - I - 0x00BB7A 02:BB6A: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BB7B 02:BB6B: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BB7C 02:BB6C: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BB7D 02:BB6D: 1A        .byte con_state_1A   ; 
- D 1 - I - 0x00BB7E 02:BB6E: 1A        .byte con_state_1A   ; 

- D 1 - I - 0x00BB7F 02:BB6F: 00        .byte con_sub_exit



ofs_BB70_02:
ofs_BB70_03:
ofs_BB70_04:
- D 1 - I - 0x00BB80 02:BB70: 0A        .byte con_sub_play_sound, con_sfx_hit
- D 1 - I - 0x00BB82 02:BB72: 02        .byte con_sub_decrease_hp, $01

- D 1 - I - 0x00BB84 02:BB74: 04        .byte con_sub_set_state_2
- D 1 - I - 0x00BB85 02:BB75: 02        .byte $02   ; compare hit counter
- D 1 - I - 0x00BB86 02:BB76: 14        .byte con_state_14   ; 
- D 1 - I - 0x00BB87 02:BB77: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BB88 02:BB78: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BB89 02:BB79: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BB8A 02:BB7A: 1A        .byte con_state_1A   ; 
- D 1 - I - 0x00BB8B 02:BB7B: 1A        .byte con_state_1A   ; 

- D 1 - I - 0x00BB8C 02:BB7C: 00        .byte con_sub_exit



ofs_BB7D_05:
ofs_BB7D_06:
ofs_BB7D_07:
- D 1 - I - 0x00BB8D 02:BB7D: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BB8F 02:BB7F: 02        .byte con_sub_decrease_hp, $02

- D 1 - I - 0x00BB91 02:BB81: 04        .byte con_sub_set_state_2
- D 1 - I - 0x00BB92 02:BB82: 01        .byte $01   ; compare hit counter
- D 1 - I - 0x00BB93 02:BB83: 14        .byte con_state_14   ; 
- D 1 - I - 0x00BB94 02:BB84: 1A        .byte con_state_1A   ; 
- D 1 - I - 0x00BB95 02:BB85: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BB96 02:BB86: 1A        .byte con_state_1A   ; 
- - - - - - 0x00BB97 02:BB87: 1B        .byte con_state_1B   ; 
- D 1 - I - 0x00BB98 02:BB88: 1B        .byte con_state_1B   ; 

- D 1 - I - 0x00BB99 02:BB89: 00        .byte con_sub_exit



ofs_BB8A_08:
- D 1 - I - 0x00BB9A 02:BB8A: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BB9C 02:BB8C: 02        .byte con_sub_decrease_hp, $04
- D 1 - I - 0x00BB9E 02:BB8E: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BBA0 02:BB90: 00        .byte con_sub_exit



ofs_BB91_09:
ofs_BB91_0A:
ofs_BB91_0B:
ofs_BB91_0C:
ofs_BB91_0D:
ofs_BB91_0E:
- D 1 - I - 0x00BBA1 02:BB91: 0A        .byte con_sub_play_sound, con_sfx_hit
- D 1 - I - 0x00BBA3 02:BB93: 02        .byte con_sub_decrease_hp, $03

- D 1 - I - 0x00BBA5 02:BB95: 04        .byte con_sub_set_state_2
- D 1 - I - 0x00BBA6 02:BB96: 03        .byte $03   ; compare hit counter
- D 1 - I - 0x00BBA7 02:BB97: 14        .byte con_state_14   ; 
- D 1 - I - 0x00BBA8 02:BB98: 16        .byte con_state_16   ; 
- - - - - - 0x00BBA9 02:BB99: 16        .byte con_state_16   ; 
- - - - - - 0x00BBAA 02:BB9A: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BBAB 02:BB9B: 1B        .byte con_state_1B   ; 
- D 1 - I - 0x00BBAC 02:BB9C: 1B        .byte con_state_1B   ; 

- D 1 - I - 0x00BBAD 02:BB9D: 00        .byte con_sub_exit



ofs_BB9E_0F:
ofs_BB9E_10:
- D 1 - I - 0x00BBAE 02:BB9E: 0A        .byte con_sub_play_sound, con_sfx_hit
- D 1 - I - 0x00BBB0 02:BBA0: 02        .byte con_sub_decrease_hp, $08
- D 1 - I - 0x00BBB2 02:BBA2: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BBB4 02:BBA4: 00        .byte con_sub_exit



ofs_BBA5_11:
- D 1 - I - 0x00BBB5 02:BBA5: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BBB7 02:BBA7: 02        .byte con_sub_decrease_hp, $04

- D 1 - I - 0x00BBB9 02:BBA9: 04        .byte con_sub_set_state_2
- D 1 - I - 0x00BBBA 02:BBAA: 03        .byte $03   ; compare hit counter
- D 1 - I - 0x00BBBB 02:BBAB: 14        .byte con_state_14   ; 
- D 1 - I - 0x00BBBC 02:BBAC: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BBBD 02:BBAD: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BBBE 02:BBAE: 16        .byte con_state_16   ; 
- - - - - - 0x00BBBF 02:BBAF: 1B        .byte con_state_1B   ; 
- D 1 - I - 0x00BBC0 02:BBB0: 1B        .byte con_state_1B   ; 

- D 1 - I - 0x00BBC1 02:BBB1: 00        .byte con_sub_exit



off_BBB2_01:
off_BBB2_03:
- D 1 - I - 0x00BBC2 02:BBB2: 0A        .byte con_sub_play_sound, con_sfx_hit
- D 1 - I - 0x00BBC4 02:BBB4: 02        .byte con_sub_decrease_hp, $03

- D 1 - I - 0x00BBC6 02:BBB6: 04        .byte con_sub_set_state_2
- D 1 - I - 0x00BBC7 02:BBB7: 05        .byte $05   ; compare hit counter
- D 1 - I - 0x00BBC8 02:BBB8: 14        .byte con_state_14   ; 
- D 1 - I - 0x00BBC9 02:BBB9: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BBCA 02:BBBA: 16        .byte con_state_16   ; 
- - - - - - 0x00BBCB 02:BBBB: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BBCC 02:BBBC: 1A        .byte con_state_1A   ; 
- D 1 - I - 0x00BBCD 02:BBBD: 1A        .byte con_state_1A   ; 

- D 1 - I - 0x00BBCE 02:BBBE: 00        .byte con_sub_exit



_off004_BBBF_2E:
; con_state_2E
- D 1 - I - 0x00BBCF 02:BBBF: 02        .byte con_sub_decrease_hp, $06
- D 1 - I - 0x00BBD1 02:BBC1: 0A        .byte con_sub_play_sound, con_sfx_ninja_knife_hit
- D 1 - I - 0x00BBD3 02:BBC3: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BBD5 02:BBC5: 0C        .byte con_sub_0C
- D 1 - I - 0x00BBD6 02:BBC6: 00        .byte con_sub_exit



_off004_BBC7_2F:
; con_state_2F
- D 1 - I - 0x00BBD7 02:BBC7: 02        .byte con_sub_decrease_hp, $06
- D 1 - I - 0x00BBD9 02:BBC9: 0A        .byte con_sub_play_sound, con_sfx_1A

- D 1 - I - 0x00BBDB 02:BBCB: 05        .byte con_sub_set_1_or_2_state
- D 1 - I - 0x00BBDC 02:BBCC: 1F        .byte con_state_1F   ; 
- D 1 - I - 0x00BBDD 02:BBCD: 1A        .byte con_state_1A   ; 

- D 1 - I - 0x00BBDE 02:BBCE: 0C        .byte con_sub_0C
- D 1 - I - 0x00BBDF 02:BBCF: 09        .byte con_sub_09, $10
- D 1 - I - 0x00BBE1 02:BBD1: 00        .byte con_sub_exit



_off004_BBD2_30:
; con_state_30
- D 1 - I - 0x00BBE2 02:BBD2: 11        .byte con_sub_branch, @end - @start + $02
@start:
- D 1 - I - 0x00BBE4 02:BBD4: 01 BC     .word ofs_BC01_00
- - - - - - 0x00BBE6 02:BBD6: 01 BC     .word ofs_BC01_01
- - - - - - 0x00BBE8 02:BBD8: 01 BC     .word ofs_BC01_02
- - - - - - 0x00BBEA 02:BBDA: 01 BC     .word ofs_BC01_03
- - - - - - 0x00BBEC 02:BBDC: 01 BC     .word ofs_BC01_04
- - - - - - 0x00BBEE 02:BBDE: 01 BC     .word ofs_BC01_05
- D 1 - I - 0x00BBF0 02:BBE0: F2 BB     .word ofs_BBF2_06
- - - - - - 0x00BBF2 02:BBE2: F2 BB     .word ofs_BBF2_07
- - - - - - 0x00BBF4 02:BBE4: F2 BB     .word ofs_BBF2_08
- - - - - - 0x00BBF6 02:BBE6: F2 BB     .word ofs_BBF2_09
- - - - - - 0x00BBF8 02:BBE8: F9 BB     .word ofs_BBF9_0A
- - - - - - 0x00BBFA 02:BBEA: F2 BB     .word ofs_BBF2_0B
- D 1 - I - 0x00BBFC 02:BBEC: 01 BC     .word ofs_BC01_0C
- - - - - - 0x00BBFE 02:BBEE: F2 BB     .word ofs_BBF2_0D
@end:
- D 1 - I - 0x00BC00 02:BBF0: 0C        .byte con_sub_0C
- D 1 - I - 0x00BC01 02:BBF1: 00        .byte con_sub_exit



ofs_BBF2_06:
ofs_BBF2_07:
ofs_BBF2_08:
ofs_BBF2_09:
ofs_BBF2_0B:
ofs_BBF2_0D:
- D 1 - I - 0x00BC02 02:BBF2: 02        .byte con_sub_decrease_hp, $06
- D 1 - I - 0x00BC04 02:BBF4: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BC06 02:BBF6: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BC08 02:BBF8: 00        .byte con_sub_exit



ofs_BBF9_0A:
- - - - - - 0x00BC09 02:BBF9: 02        .byte con_sub_decrease_hp, $06
- - - - - - 0x00BC0B 02:BBFB: 0A        .byte con_sub_play_sound, con_sfx_1A

- - - - - - 0x00BC0D 02:BBFD: 05        .byte con_sub_set_1_or_2_state
- - - - - - 0x00BC0E 02:BBFE: 1B        .byte con_state_1B   ; 
- - - - - - 0x00BC0F 02:BBFF: 1C        .byte con_state_1C   ; 

- - - - - - 0x00BC10 02:BC00: 00        .byte con_sub_exit



ofs_BC01_00:
ofs_BC01_01:
ofs_BC01_02:
ofs_BC01_03:
ofs_BC01_04:
ofs_BC01_05:
ofs_BC01_0C:
- D 1 - I - 0x00BC11 02:BC01: 02        .byte con_sub_decrease_hp, $04
- D 1 - I - 0x00BC13 02:BC03: 0A        .byte con_sub_play_sound, con_sfx_1A

- D 1 - I - 0x00BC15 02:BC05: 04        .byte con_sub_set_state_2
- D 1 - I - 0x00BC16 02:BC06: 00        .byte $00   ; compare hit counter
- - - - - - 0x00BC17 02:BC07: 16        .byte con_state_16   ; 
- - - - - - 0x00BC18 02:BC08: 1A        .byte con_state_1A   ; 
- D 1 - I - 0x00BC19 02:BC09: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BC1A 02:BC0A: 1A        .byte con_state_1A   ; 
- D 1 - I - 0x00BC1B 02:BC0B: 1A        .byte con_state_1A   ; 
- D 1 - I - 0x00BC1C 02:BC0C: 1A        .byte con_state_1A   ; 

- D 1 - I - 0x00BC1D 02:BC0D: 00        .byte con_sub_exit



_off004_BC0E_31:
; con_state_31
- D 1 - I - 0x00BC1E 02:BC0E: 11        .byte con_sub_branch, @end - @start + $02
@start:
- D 1 - I - 0x00BC20 02:BC10: 35 BC     .word ofs_BC35_00
- - - - - - 0x00BC22 02:BC12: 35 BC     .word ofs_BC35_01
- - - - - - 0x00BC24 02:BC14: 35 BC     .word ofs_BC35_02
- - - - - - 0x00BC26 02:BC16: 35 BC     .word ofs_BC35_03
- D 1 - I - 0x00BC28 02:BC18: 3F BC     .word ofs_BC3F_04
- - - - - - 0x00BC2A 02:BC1A: 35 BC     .word ofs_BC35_05
- - - - - - 0x00BC2C 02:BC1C: 35 BC     .word ofs_BC35_06
- - - - - - 0x00BC2E 02:BC1E: 35 BC     .word ofs_BC35_07
- - - - - - 0x00BC30 02:BC20: 35 BC     .word ofs_BC35_08
- - - - - - 0x00BC32 02:BC22: 35 BC     .word ofs_BC35_09
- - - - - - 0x00BC34 02:BC24: 35 BC     .word ofs_BC35_0A
- - - - - - 0x00BC36 02:BC26: 35 BC     .word ofs_BC35_0B
- D 1 - I - 0x00BC38 02:BC28: 35 BC     .word ofs_BC35_0C
- - - - - - 0x00BC3A 02:BC2A: 35 BC     .word ofs_BC35_0D
- - - - - - 0x00BC3C 02:BC2C: 35 BC     .word ofs_BC35_0E
- - - - - - 0x00BC3E 02:BC2E: 35 BC     .word ofs_BC35_0F
- - - - - - 0x00BC40 02:BC30: 35 BC     .word ofs_BC35_10
- D 1 - I - 0x00BC42 02:BC32: 35 BC     .word ofs_BC35_11
@end:
- D 1 - I - 0x00BC44 02:BC34: 00        .byte con_sub_exit



ofs_BC35_00:
ofs_BC35_01:
ofs_BC35_02:
ofs_BC35_03:
ofs_BC35_05:
ofs_BC35_06:
ofs_BC35_07:
ofs_BC35_08:
ofs_BC35_09:
ofs_BC35_0A:
ofs_BC35_0B:
ofs_BC35_0C:
ofs_BC35_0D:
ofs_BC35_0E:
ofs_BC35_0F:
ofs_BC35_10:
ofs_BC35_11:
- D 1 - I - 0x00BC45 02:BC35: 02        .byte con_sub_decrease_hp, $06
- D 1 - I - 0x00BC47 02:BC37: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BC49 02:BC39: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BC4B 02:BC3B: 0D        .byte con_sub_0D
- D 1 - I - 0x00BC4C 02:BC3C: 09        .byte con_sub_09, $10
- D 1 - I - 0x00BC4E 02:BC3E: 00        .byte con_sub_exit



ofs_BC3F_04:
- D 1 - I - 0x00BC4F 02:BC3F: 02        .byte con_sub_decrease_hp, $06
- D 1 - I - 0x00BC51 02:BC41: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BC53 02:BC43: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BC55 02:BC45: 0C        .byte con_sub_0C
- D 1 - I - 0x00BC56 02:BC46: 09        .byte con_sub_09, $10
- D 1 - I - 0x00BC58 02:BC48: 00        .byte con_sub_exit



_off004_BC49_32:
; con_state_32
_off004_BC49_33:
; con_state_33
- D 1 - I - 0x00BC59 02:BC49: 07        .byte con_sub_07
- D 1 - I - 0x00BC5A 02:BC4A: 63 BC     .word off_BC63_00
- D 1 - I - 0x00BC5C 02:BC4C: 53 BC     .word off_BC53_01
- D 1 - I - 0x00BC5E 02:BC4E: 71 BC     .word off_BC71_02
- - - - - - 0x00BC60 02:BC50: 71 BC     .word off_BC71_03
- D 1 - I - 0x00BC62 02:BC52: 00        .byte con_sub_exit



off_BC53_01:
- D 1 - I - 0x00BC63 02:BC53: 0A        .byte con_sub_play_sound, con_sfx_hit
- D 1 - I - 0x00BC65 02:BC55: 02        .byte con_sub_decrease_hp, $02
- D 1 - I - 0x00BC67 02:BC57: 0D        .byte con_sub_0D
- D 1 - I - 0x00BC68 02:BC58: 09        .byte con_sub_09, $01

- D 1 - I - 0x00BC6A 02:BC5A: 04        .byte con_sub_set_state_2
- D 1 - I - 0x00BC6B 02:BC5B: 01        .byte $01   ; compare hit counter
- D 1 - I - 0x00BC6C 02:BC5C: 14        .byte con_state_14   ; 
- D 1 - I - 0x00BC6D 02:BC5D: 14        .byte con_state_14   ; 
- D 1 - I - 0x00BC6E 02:BC5E: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BC6F 02:BC5F: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BC70 02:BC60: 1A        .byte con_state_1A   ; 
- D 1 - I - 0x00BC71 02:BC61: 1A        .byte con_state_1A   ; 

- D 1 - I - 0x00BC72 02:BC62: 00        .byte con_sub_exit



off_BC63_00:
- D 1 - I - 0x00BC73 02:BC63: 0A        .byte con_sub_play_sound, con_sfx_hit
- D 1 - I - 0x00BC75 02:BC65: 02        .byte con_sub_decrease_hp, $02
- D 1 - I - 0x00BC77 02:BC67: 0D        .byte con_sub_0D
- D 1 - I - 0x00BC78 02:BC68: 09        .byte con_sub_09, $01

- D 1 - I - 0x00BC7A 02:BC6A: 03        .byte con_sub_set_state_1
- D 1 - I - 0x00BC7B 02:BC6B: 00        .byte $00   ; compare hit counter
- - - - - - 0x00BC7C 02:BC6C: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BC7D 02:BC6D: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BC7E 02:BC6E: 1A        .byte con_state_1A   ; 
- - - - - - 0x00BC7F 02:BC6F: 1A        .byte con_state_1A   ; 

- D 1 - I - 0x00BC80 02:BC70: 00        .byte con_sub_exit



off_BC71_02:
off_BC71_03:
- D 1 - I - 0x00BC81 02:BC71: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BC83 02:BC73: 02        .byte con_sub_decrease_hp, $05
- D 1 - I - 0x00BC85 02:BC75: 0C        .byte con_sub_0C

- D 1 - I - 0x00BC86 02:BC76: 03        .byte con_sub_set_state_1
- D 1 - I - 0x00BC87 02:BC77: 00        .byte $00   ; compare hit counter
- - - - - - 0x00BC88 02:BC78: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BC89 02:BC79: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BC8A 02:BC7A: 1A        .byte con_state_1A   ; 
- D 1 - I - 0x00BC8B 02:BC7B: 1A        .byte con_state_1A   ; 

- D 1 - I - 0x00BC8C 02:BC7C: 00        .byte con_sub_exit



_off004_BC7D_34:
; con_state_34
- D 1 - I - 0x00BC8D 02:BC7D: 02        .byte con_sub_decrease_hp, $05
- D 1 - I - 0x00BC8F 02:BC7F: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BC91 02:BC81: 06        .byte con_sub_set_fixed_state, con_state_1C
- D 1 - I - 0x00BC93 02:BC83: 0C        .byte con_sub_0C
- D 1 - I - 0x00BC94 02:BC84: 00        .byte con_sub_exit



_off004_BC85_35:
; con_state_35
- D 1 - I - 0x00BC95 02:BC85: 02        .byte con_sub_decrease_hp, $08
- D 1 - I - 0x00BC97 02:BC87: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BC99 02:BC89: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BC9B 02:BC8B: 0C        .byte con_sub_0C
- D 1 - I - 0x00BC9C 02:BC8C: 09        .byte con_sub_09, $03
- D 1 - I - 0x00BC9E 02:BC8E: 00        .byte con_sub_exit



_off004_BC8F_36:
; con_state_36
- D 1 - I - 0x00BC9F 02:BC8F: 02        .byte con_sub_decrease_hp, $1A
- D 1 - I - 0x00BCA1 02:BC91: 0A        .byte con_sub_play_sound, con_sfx_1B
- D 1 - I - 0x00BCA3 02:BC93: 06        .byte con_sub_set_fixed_state, con_state_1D
- D 1 - I - 0x00BCA5 02:BC95: 0C        .byte con_sub_0C
- D 1 - I - 0x00BCA6 02:BC96: 00        .byte con_sub_exit



_off004_BC97_37:
; con_state_37
_off004_BC97_38:
; con_state_38
- D 1 - I - 0x00BCA7 02:BC97: 11        .byte con_sub_branch, @end - @start + $02
@start:
- - - - - - 0x00BCA9 02:BC99: 00 00     .word $0000
- - - - - - 0x00BCAB 02:BC9B: 00 00     .word $0000
- D 1 - I - 0x00BCAD 02:BC9D: B3 BC     .word ofs_BCB3_02
- D 1 - I - 0x00BCAF 02:BC9F: B3 BC     .word ofs_BCB3_03
- - - - - - 0x00BCB1 02:BCA1: 00 00     .word $0000
- - - - - - 0x00BCB3 02:BCA3: 00 00     .word $0000
- - - - - - 0x00BCB5 02:BCA5: 00 00     .word $0000
- - - - - - 0x00BCB7 02:BCA7: 00 00     .word $0000
- - - - - - 0x00BCB9 02:BCA9: 00 00     .word $0000
- - - - - - 0x00BCBB 02:BCAB: 00 00     .word $0000
- D 1 - I - 0x00BCBD 02:BCAD: BA BC     .word ofs_BCBA_0A
- - - - - - 0x00BCBF 02:BCAF: BA BC     .word ofs_BCBA_0B
@end:
- D 1 - I - 0x00BCC1 02:BCB1: 0C        .byte con_sub_0C
- D 1 - I - 0x00BCC2 02:BCB2: 00        .byte con_sub_exit



ofs_BCB3_02:
ofs_BCB3_03:
- D 1 - I - 0x00BCC3 02:BCB3: 02        .byte con_sub_decrease_hp, $02
- D 1 - I - 0x00BCC5 02:BCB5: 0A        .byte con_sub_play_sound, con_sfx_hit
- D 1 - I - 0x00BCC7 02:BCB7: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BCC9 02:BCB9: 00        .byte con_sub_exit



ofs_BCBA_0A:
ofs_BCBA_0B:
- D 1 - I - 0x00BCCA 02:BCBA: 02        .byte con_sub_decrease_hp, $0A
- D 1 - I - 0x00BCCC 02:BCBC: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BCCE 02:BCBE: 06        .byte con_sub_set_fixed_state, con_state_1C
- D 1 - I - 0x00BCD0 02:BCC0: 00        .byte con_sub_exit



_off004_BCC1_39:
; con_state_39
- D 1 - I - 0x00BCD1 02:BCC1: 02        .byte con_sub_decrease_hp, $10
- D 1 - I - 0x00BCD3 02:BCC3: 06        .byte con_sub_set_fixed_state, con_state_22
- D 1 - I - 0x00BCD5 02:BCC5: 09        .byte con_sub_09, $50
- D 1 - I - 0x00BCD7 02:BCC7: 0A        .byte con_sub_play_sound, con_sfx_1B
- D 1 - I - 0x00BCD9 02:BCC9: 0E        .byte con_sub_0E
- D 1 - I - 0x00BCDA 02:BCCA: 00        .byte con_sub_exit



_off004_BCCB_3A:
; con_state_3A
- D 1 - I - 0x00BCDB 02:BCCB: 02        .byte con_sub_decrease_hp, $1E
- D 1 - I - 0x00BCDD 02:BCCD: 0A        .byte con_sub_play_sound, con_sfx_1B
- D 1 - I - 0x00BCDF 02:BCCF: 06        .byte con_sub_set_fixed_state, con_state_20
- D 1 - I - 0x00BCE1 02:BCD1: 09        .byte con_sub_09, $50
- D 1 - I - 0x00BCE3 02:BCD3: 0C        .byte con_sub_0C
- D 1 - I - 0x00BCE4 02:BCD4: 00        .byte con_sub_exit



_off004_BCD5_3B:
; con_state_3B
- D 1 - I - 0x00BCE5 02:BCD5: 02        .byte con_sub_decrease_hp, $14
- D 1 - I - 0x00BCE7 02:BCD7: 0A        .byte con_sub_play_sound, con_sfx_1B
- D 1 - I - 0x00BCE9 02:BCD9: 06        .byte con_sub_set_fixed_state, con_state_21
- D 1 - I - 0x00BCEB 02:BCDB: 0C        .byte con_sub_0C
- D 1 - I - 0x00BCEC 02:BCDC: 09        .byte con_sub_09, $50
- D 1 - I - 0x00BCEE 02:BCDE: 00        .byte con_sub_exit



_off004_BCDF_3C:
; con_state_3C
- D 1 - I - 0x00BCEF 02:BCDF: 02        .byte con_sub_decrease_hp, $03
- D 1 - I - 0x00BCF1 02:BCE1: 0A        .byte con_sub_play_sound, con_sfx_hit
- D 1 - I - 0x00BCF3 02:BCE3: 0D        .byte con_sub_0D

- D 1 - I - 0x00BCF4 02:BCE4: 05        .byte con_sub_set_1_or_2_state
- D 1 - I - 0x00BCF5 02:BCE5: 1A        .byte con_state_1A   ; 
- D 1 - I - 0x00BCF6 02:BCE6: 1B        .byte con_state_1B   ; 

- D 1 - I - 0x00BCF7 02:BCE7: 00        .byte con_sub_exit



_off004_BCE8_3D:
; con_state_3D
- D 1 - I - 0x00BCF8 02:BCE8: 11        .byte con_sub_branch, @end - @start + $02
@start:
- - - - - - 0x00BCFA 02:BCEA: 00 00     .word $0000
- - - - - - 0x00BCFC 02:BCEC: 00 00     .word $0000
- D 1 - I - 0x00BCFE 02:BCEE: 00 BD     .word ofs_BD00_02
- - - - - - 0x00BD00 02:BCF0: 00 00     .word $0000
- - - - - - 0x00BD02 02:BCF2: 00 00     .word $0000
- - - - - - 0x00BD04 02:BCF4: 00 00     .word $0000
- - - - - - 0x00BD06 02:BCF6: 00 00     .word $0000
- - - - - - 0x00BD08 02:BCF8: 00 00     .word $0000
- D 1 - I - 0x00BD0A 02:BCFA: 0B BD     .word ofs_BD0B_08
- - - - - - 0x00BD0C 02:BCFC: 00 00     .word $0000
@end:
- D 1 - I - 0x00BD0E 02:BCFE: 0C        .byte con_sub_0C
- D 1 - I - 0x00BD0F 02:BCFF: 00        .byte con_sub_exit



ofs_BD00_02:
- D 1 - I - 0x00BD10 02:BD00: 02        .byte con_sub_decrease_hp, $02
- D 1 - I - 0x00BD12 02:BD02: 0A        .byte con_sub_play_sound, con_sfx_hit

- D 1 - I - 0x00BD14 02:BD04: 03        .byte con_sub_set_state_1
- D 1 - I - 0x00BD15 02:BD05: 01        .byte $01   ; compare hit counter
- D 1 - I - 0x00BD16 02:BD06: 16        .byte con_state_16   ; 
- D 1 - I - 0x00BD17 02:BD07: 1A        .byte con_state_1A   ; 
- D 1 - I - 0x00BD18 02:BD08: 1A        .byte con_state_1A   ; 
- D 1 - I - 0x00BD19 02:BD09: 1A        .byte con_state_1A   ; 

- D 1 - I - 0x00BD1A 02:BD0A: 00        .byte con_sub_exit



ofs_BD0B_08:
- D 1 - I - 0x00BD1B 02:BD0B: 02        .byte con_sub_decrease_hp, $08
- D 1 - I - 0x00BD1D 02:BD0D: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BD1F 02:BD0F: 06        .byte con_sub_set_fixed_state, con_state_1C
- D 1 - I - 0x00BD21 02:BD11: 00        .byte con_sub_exit



_off004_BD12_3E:
; con_state_3E
- D 1 - I - 0x00BD22 02:BD12: 02        .byte con_sub_decrease_hp, $03
- D 1 - I - 0x00BD24 02:BD14: 0A        .byte con_sub_play_sound, con_sfx_hit

- D 1 - I - 0x00BD26 02:BD16: 04        .byte con_sub_set_state_2
- D 1 - I - 0x00BD27 02:BD17: 03        .byte $03   ; compare hit counter
- D 1 - I - 0x00BD28 02:BD18: 14        .byte con_state_14   ; 
- D 1 - I - 0x00BD29 02:BD19: 1B        .byte con_state_1B   ; 
- D 1 - I - 0x00BD2A 02:BD1A: 1B        .byte con_state_1B   ; 
- - - - - - 0x00BD2B 02:BD1B: 1B        .byte con_state_1B   ; 
- - - - - - 0x00BD2C 02:BD1C: 1B        .byte con_state_1B   ; 
- D 1 - I - 0x00BD2D 02:BD1D: 1B        .byte con_state_1B   ; 

- D 1 - I - 0x00BD2E 02:BD1E: 0C        .byte con_sub_0C
- D 1 - I - 0x00BD2F 02:BD1F: 00        .byte con_sub_exit



_off004_BD20_3F:
; con_state_3F
_off004_BD20_40:
; con_state_40
_off004_BD20_41:
; con_state_41
_off004_BD20_42:
; con_state_42
_off004_BD20_43:
; con_state_43
- D 1 - I - 0x00BD30 02:BD20: 02        .byte con_sub_decrease_hp, $04
- D 1 - I - 0x00BD32 02:BD22: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BD34 02:BD24: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BD36 02:BD26: 0C        .byte con_sub_0C
- D 1 - I - 0x00BD37 02:BD27: 00        .byte con_sub_exit



_off004_BD28_44:
; con_state_44
_off004_BD28_45:
; con_state_45
- D 1 - I - 0x00BD38 02:BD28: 11        .byte con_sub_branch, @end - @start + $02
@start:
- D 1 - I - 0x00BD3A 02:BD2A: 38 BD     .word ofs_BD38_00
- - - - - - 0x00BD3C 02:BD2C: 38 BD     .word ofs_BD38_01
- - - - - - 0x00BD3E 02:BD2E: 00 00     .word $0000
- - - - - - 0x00BD40 02:BD30: 00 00     .word $0000
- D 1 - I - 0x00BD42 02:BD32: 3F BD     .word ofs_BD3F_04
- - - - - - 0x00BD44 02:BD34: 00 00     .word $0000
@end:
- D 1 - I - 0x00BD46 02:BD36: 0C        .byte con_sub_0C
- D 1 - I - 0x00BD47 02:BD37: 00        .byte con_sub_exit



ofs_BD38_00:
ofs_BD38_01:
- D 1 - I - 0x00BD48 02:BD38: 02        .byte con_sub_decrease_hp, $14
- D 1 - I - 0x00BD4A 02:BD3A: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BD4C 02:BD3C: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BD4E 02:BD3E: 00        .byte con_sub_exit



ofs_BD3F_04:
- D 1 - I - 0x00BD4F 02:BD3F: 02        .byte con_sub_decrease_hp, $05
- D 1 - I - 0x00BD51 02:BD41: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BD53 02:BD43: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BD55 02:BD45: 00        .byte con_sub_exit



_off004_BD46_46:
; con_state_46
- - - - - - 0x00BD56 02:BD46: 02        .byte con_sub_decrease_hp, $03
- - - - - - 0x00BD58 02:BD48: 0A        .byte con_sub_play_sound, con_sfx_hit
- - - - - - 0x00BD5A 02:BD4A: 06        .byte con_sub_set_fixed_state, con_state_1B
- - - - - - 0x00BD5C 02:BD4C: 00        .byte con_sub_exit



_off004_BD4D_47:
; con_state_47
- D 1 - I - 0x00BD5D 02:BD4D: 02        .byte con_sub_decrease_hp, $08
- D 1 - I - 0x00BD5F 02:BD4F: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BD61 02:BD51: 06        .byte con_sub_set_fixed_state, con_state_1C
- D 1 - I - 0x00BD63 02:BD53: 0C        .byte con_sub_0C
- D 1 - I - 0x00BD64 02:BD54: 00        .byte con_sub_exit



_off004_BD55_48:
; con_state_48
- D 1 - I - 0x00BD65 02:BD55: 02        .byte con_sub_decrease_hp, $08
- D 1 - I - 0x00BD67 02:BD57: 0A        .byte con_sub_play_sound, con_sfx_1A

- D 1 - I - 0x00BD69 02:BD59: 05        .byte con_sub_set_1_or_2_state
- D 1 - I - 0x00BD6A 02:BD5A: 1B        .byte con_state_1B   ; 
- D 1 - I - 0x00BD6B 02:BD5B: 1C        .byte con_state_1C   ; 

- D 1 - I - 0x00BD6C 02:BD5C: 0F        .byte con_sub_set_if_not_new_state, con_state_49
- D 1 - I - 0x00BD6E 02:BD5E: 0C        .byte con_sub_0C
- D 1 - I - 0x00BD6F 02:BD5F: 10        .byte con_sub_10
- D 1 - I - 0x00BD70 02:BD60: 00        .byte con_sub_exit



_off004_BD61_49:
; con_state_49
_off004_BD61_4A:
; con_state_4A
_off004_BD61_4B:
; con_state_4B
_off004_BD61_4C:
; con_state_4C
- D 1 - I - 0x00BD71 02:BD61: 02        .byte con_sub_decrease_hp, $08
- D 1 - I - 0x00BD73 02:BD63: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BD75 02:BD65: 06        .byte con_sub_set_fixed_state, con_state_20
- D 1 - I - 0x00BD77 02:BD67: 0C        .byte con_sub_0C
- D 1 - I - 0x00BD78 02:BD68: 00        .byte con_sub_exit



_off004_BD69_4D:
; con_state_4D
_off004_BD69_4E:
; con_state_4E
_off004_BD69_4F:
; con_state_4F
_off004_BD69_50:
; con_state_50
_off004_BD69_51:
; con_state_51
_off004_BD69_52:
; con_state_52
_off004_BD69_53:
; con_state_53
_off004_BD69_54:
; con_state_54
_off004_BD69_55:
; con_state_55
_off004_BD69_56:
; con_state_56
_off004_BD69_57:
; con_state_57
_off004_BD69_58:
; con_state_58
_off004_BD69_59:
; con_state_59
_off004_BD69_5A:
; con_state_5A
_off004_BD69_5B:
; con_state_5B
- D 1 - I - 0x00BD79 02:BD69: 02        .byte con_sub_decrease_hp, $06
- D 1 - I - 0x00BD7B 02:BD6B: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BD7D 02:BD6D: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BD7F 02:BD6F: 0C        .byte con_sub_0C
- D 1 - I - 0x00BD80 02:BD70: 00        .byte con_sub_exit



_off004_BD71_5C:
; con_state_5C
_off004_BD71_5D:
; con_state_5D
- D 1 - I - 0x00BD81 02:BD71: 02        .byte con_sub_decrease_hp, $36
- D 1 - I - 0x00BD83 02:BD73: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BD85 02:BD75: 06        .byte con_sub_set_fixed_state, con_state_1D
- D 1 - I - 0x00BD87 02:BD77: 0C        .byte con_sub_0C
- D 1 - I - 0x00BD88 02:BD78: 00        .byte con_sub_exit



_off004_BD79_5E:
; con_state_5E
- D 1 - I - 0x00BD89 02:BD79: 02        .byte con_sub_decrease_hp, $08
- D 1 - I - 0x00BD8B 02:BD7B: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BD8D 02:BD7D: 0C        .byte con_sub_0C

- D 1 - I - 0x00BD8E 02:BD7E: 03        .byte con_sub_set_state_1
- D 1 - I - 0x00BD8F 02:BD7F: 03        .byte $03   ; compare hit counter
- D 1 - I - 0x00BD90 02:BD80: 14        .byte con_state_14   ; 
- D 1 - I - 0x00BD91 02:BD81: 1C        .byte con_state_1C   ; 
- D 1 - I - 0x00BD92 02:BD82: 1B        .byte con_state_1B   ; 
- D 1 - I - 0x00BD93 02:BD83: 1B        .byte con_state_1B   ; 

- D 1 - I - 0x00BD94 02:BD84: 00        .byte con_sub_exit



_off004_BD85_5F:
; con_state_5F
_off004_BD85_60:
; con_state_60
_off004_BD85_61:
; con_state_61
_off004_BD85_62:
; con_state_62
_off004_BD85_63:
; con_state_63
_off004_BD85_64:
; con_state_64
_off004_BD85_65:
; con_state_65
_off004_BD85_66:
; con_state_66
- D 1 - I - 0x00BD95 02:BD85: 02        .byte con_sub_decrease_hp, $14
- D 1 - I - 0x00BD97 02:BD87: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BD99 02:BD89: 0C        .byte con_sub_0C
- D 1 - I - 0x00BD9A 02:BD8A: 06        .byte con_sub_set_fixed_state, con_state_1C
- D 1 - I - 0x00BD9C 02:BD8C: 00        .byte con_sub_exit



_off004_BD8D_67:
; con_state_67
_off004_BD8D_68:
; con_state_68
_off004_BD8D_78:
; con_state_78
- D 1 - I - 0x00BD9D 02:BD8D: 02        .byte con_sub_decrease_hp, $06
- D 1 - I - 0x00BD9F 02:BD8F: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BDA1 02:BD91: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BDA3 02:BD93: 0F        .byte con_sub_set_if_not_new_state, con_state_76
- D 1 - I - 0x00BDA5 02:BD95: 0C        .byte con_sub_0C
- D 1 - I - 0x00BDA6 02:BD96: 00        .byte con_sub_exit



_off004_BD97_69:
; con_state_69
- D 1 - I - 0x00BDA7 02:BD97: 02        .byte con_sub_decrease_hp, $04
- D 1 - I - 0x00BDA9 02:BD99: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BDAB 02:BD9B: 06        .byte con_sub_set_fixed_state, con_state_1A
- D 1 - I - 0x00BDAD 02:BD9D: 0F        .byte con_sub_set_if_not_new_state, con_state_76
- D 1 - I - 0x00BDAF 02:BD9F: 00        .byte con_sub_exit



_off004_BDA0_6A:
; con_state_6A
_off004_BDA0_6B:
; con_state_6B
_off004_BDA0_6C:
; con_state_6C
_off004_BDA0_6D:
; con_state_6D
- D 1 - I - 0x00BDB0 02:BDA0: 02        .byte con_sub_decrease_hp, $0A
- D 1 - I - 0x00BDB2 02:BDA2: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BDB4 02:BDA4: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BDB6 02:BDA6: 0C        .byte con_sub_0C
- D 1 - I - 0x00BDB7 02:BDA7: 0F        .byte con_sub_set_if_not_new_state, con_state_76
- D 1 - I - 0x00BDB9 02:BDA9: 00        .byte con_sub_exit



_off004_BDAA_6E:
; con_state_6E
- D 1 - I - 0x00BDBA 02:BDAA: 0F        .byte con_sub_set_if_not_new_state, con_state_6F
- D 1 - I - 0x00BDBC 02:BDAC: 0A        .byte con_sub_play_sound, con_sfx_23

- D 1 - I - 0x00BDBE 02:BDAE: 03        .byte con_sub_set_state_1
- D 1 - I - 0x00BDBF 02:BDAF: 00        .byte $00   ; compare hit counter
- - - - - - 0x00BDC0 02:BDB0: 14        .byte con_state_14   ; 
- D 1 - I - 0x00BDC1 02:BDB1: 14        .byte con_state_14   ; 
- D 1 - I - 0x00BDC2 02:BDB2: 1A        .byte con_state_1A   ; 
- D 1 - I - 0x00BDC3 02:BDB3: 1A        .byte con_state_1A   ; 

- D 1 - I - 0x00BDC4 02:BDB4: 0C        .byte con_sub_0C
- D 1 - I - 0x00BDC5 02:BDB5: 00        .byte con_sub_exit



_off004_BDB6_6F:
; con_state_6F
- D 1 - I - 0x00BDC6 02:BDB6: 02        .byte con_sub_decrease_hp, $10
- D 1 - I - 0x00BDC8 02:BDB8: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BDCA 02:BDBA: 06        .byte con_sub_set_fixed_state, con_state_1C
- D 1 - I - 0x00BDCC 02:BDBC: 0C        .byte con_sub_0C
- D 1 - I - 0x00BDCD 02:BDBD: 00        .byte con_sub_exit



_off004_BDBE_70:
; con_state_70
- D 1 - I - 0x00BDCE 02:BDBE: 02        .byte con_sub_decrease_hp, $08
- D 1 - I - 0x00BDD0 02:BDC0: 0A        .byte con_sub_play_sound, con_sfx_hit_by_fireball
- D 1 - I - 0x00BDD2 02:BDC2: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BDD4 02:BDC4: 0C        .byte con_sub_0C
- D 1 - I - 0x00BDD5 02:BDC5: 0F        .byte con_sub_set_if_not_new_state, con_state_7E
- D 1 - I - 0x00BDD7 02:BDC7: 00        .byte con_sub_exit



_off004_BDC8_71:
; con_state_71
- D 1 - I - 0x00BDD8 02:BDC8: 02        .byte con_sub_decrease_hp, $08
- D 1 - I - 0x00BDDA 02:BDCA: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BDDC 02:BDCC: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BDDE 02:BDCE: 0C        .byte con_sub_0C
- D 1 - I - 0x00BDDF 02:BDCF: 0F        .byte con_sub_set_if_not_new_state, con_state_7E
- D 1 - I - 0x00BDE1 02:BDD1: 00        .byte con_sub_exit



_off004_BDD2_72:
; con_state_72
- D 1 - I - 0x00BDE2 02:BDD2: 02        .byte con_sub_decrease_hp, $08
- D 1 - I - 0x00BDE4 02:BDD4: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BDE6 02:BDD6: 06        .byte con_sub_set_fixed_state, con_state_1A
- D 1 - I - 0x00BDE8 02:BDD8: 0E        .byte con_sub_0E
- D 1 - I - 0x00BDE9 02:BDD9: 0F        .byte con_sub_set_if_not_new_state, con_state_67
- D 1 - I - 0x00BDEB 02:BDDB: 00        .byte con_sub_exit



_off004_BDDC_73:
; con_state_73
- D 1 - I - 0x00BDEC 02:BDDC: 02        .byte con_sub_decrease_hp, $06
- D 1 - I - 0x00BDEE 02:BDDE: 0A        .byte con_sub_play_sound, con_sfx_2E
- D 1 - I - 0x00BDF0 02:BDE0: 06        .byte con_sub_set_fixed_state, con_state_1C
- D 1 - I - 0x00BDF2 02:BDE2: 0C        .byte con_sub_0C
- D 1 - I - 0x00BDF3 02:BDE3: 00        .byte con_sub_exit



_off004_BDE4_74:
; con_state_74
- D 1 - I - 0x00BDF4 02:BDE4: 02        .byte con_sub_decrease_hp, $08
- D 1 - I - 0x00BDF6 02:BDE6: 0A        .byte con_sub_play_sound, con_sfx_1A
- D 1 - I - 0x00BDF8 02:BDE8: 06        .byte con_sub_set_fixed_state, con_state_1B
- D 1 - I - 0x00BDFA 02:BDEA: 0C        .byte con_sub_0C
- D 1 - I - 0x00BDFB 02:BDEB: 0F        .byte con_sub_set_if_not_new_state, con_state_75
- D 1 - I - 0x00BDFD 02:BDED: 00        .byte con_sub_exit



_off004_BDEE_75:
; con_state_75
_off004_BDEE_76:
; con_state_76
_off004_BDEE_77:
; con_state_77
- D 1 - I - 0x00BDFE 02:BDEE: 02        .byte con_sub_decrease_hp, $14
- D 1 - I - 0x00BE00 02:BDF0: 0A        .byte con_sub_play_sound, con_sfx_26
- D 1 - I - 0x00BE02 02:BDF2: 0C        .byte con_sub_0C
- D 1 - I - 0x00BE03 02:BDF3: 0F        .byte con_sub_set_if_not_new_state, con_state_6C
- D 1 - I - 0x00BE05 02:BDF5: 06        .byte con_sub_set_fixed_state, con_state_1C
- D 1 - I - 0x00BE07 02:BDF7: 00        .byte con_sub_exit


; bzk garbage
_off004_BDF8_79:
; con_state_79
_off004_BDF8_7A:
; con_state_7A
_off004_BDF8_7B:
; con_state_7B
- - - - - - 0x00BE08 02:BDF8: 4C A8 BE  JMP loc_BEA8



sub_BDFB:
C - - - - - 0x00BE0B 02:BDFB: 85 1B     STA ram_001B
C - - - - - 0x00BE0D 02:BDFD: 8A        TXA
C - - - - - 0x00BE0E 02:BDFE: A8        TAY
C - - - - - 0x00BE0F 02:BDFF: A5 1B     LDA ram_001B
C - - - - - 0x00BE11 02:BE01: 29 0F     AND #$0F
C - - - - - 0x00BE13 02:BE03: 20 5E BE  JSR sub_BE5E
C - - - - - 0x00BE16 02:BE06: 8A        TXA
C - - - - - 0x00BE17 02:BE07: A8        TAY
C - - - - - 0x00BE18 02:BE08: C8        INY
C - - - - - 0x00BE19 02:BE09: A5 1B     LDA ram_001B
C - - - - - 0x00BE1B 02:BE0B: 4A        LSR
C - - - - - 0x00BE1C 02:BE0C: 4A        LSR
C - - - - - 0x00BE1D 02:BE0D: 4A        LSR
C - - - - - 0x00BE1E 02:BE0E: 4A        LSR
C - - - - - 0x00BE1F 02:BE0F: 20 5E BE  JSR sub_BE5E
C - - - - - 0x00BE22 02:BE12: 8A        TXA
C - - - - - 0x00BE23 02:BE13: 4A        LSR
C - - - - - 0x00BE24 02:BE14: A8        TAY
C - - - - - 0x00BE25 02:BE15: B9 88 04  LDA ram_score_player + $02,Y
C - - - - - 0x00BE28 02:BE18: 29 F0     AND #$F0
C - - - - - 0x00BE2A 02:BE1A: F0 0D     BEQ bra_BE29
- - - - - - 0x00BE2C 02:BE1C: A9 99     LDA #$99
- - - - - - 0x00BE2E 02:BE1E: 99 86 04  STA ram_score_player,Y
- - - - - - 0x00BE31 02:BE21: 99 87 04  STA ram_score_player + $01,Y
- - - - - - 0x00BE34 02:BE24: A9 09     LDA #$09
- - - - - - 0x00BE36 02:BE26: 99 88 04  STA ram_score_player + $02,Y
bra_BE29:
C - - - - - 0x00BE39 02:BE29: B9 88 04  LDA ram_score_player + $02,Y
C - - - - - 0x00BE3C 02:BE2C: CD 8E 04  CMP ram_score_hi + $02
C - - - - - 0x00BE3F 02:BE2F: 90 2C     BCC bra_BE5D_RTS
C - - - - - 0x00BE41 02:BE31: F0 02     BEQ bra_BE35
- - - - - - 0x00BE43 02:BE33: B0 16     BCS bra_BE4B    ; jmp
bra_BE35:
C - - - - - 0x00BE45 02:BE35: B9 87 04  LDA ram_score_player + $01,Y
C - - - - - 0x00BE48 02:BE38: CD 8D 04  CMP ram_score_hi + $01
C - - - - - 0x00BE4B 02:BE3B: 90 20     BCC bra_BE5D_RTS
C - - - - - 0x00BE4D 02:BE3D: F0 02     BEQ bra_BE41
C - - - - - 0x00BE4F 02:BE3F: B0 0A     BCS bra_BE4B    ; jmp
bra_BE41:
C - - - - - 0x00BE51 02:BE41: B9 86 04  LDA ram_score_player,Y
C - - - - - 0x00BE54 02:BE44: CD 8C 04  CMP ram_score_hi
C - - - - - 0x00BE57 02:BE47: 90 14     BCC bra_BE5D_RTS
C - - - - - 0x00BE59 02:BE49: F0 12     BEQ bra_BE5D_RTS
bra_BE4B:
C - - - - - 0x00BE5B 02:BE4B: B9 86 04  LDA ram_score_player,Y
C - - - - - 0x00BE5E 02:BE4E: 8D 8C 04  STA ram_score_hi
C - - - - - 0x00BE61 02:BE51: B9 87 04  LDA ram_score_player + $01,Y
C - - - - - 0x00BE64 02:BE54: 8D 8D 04  STA ram_score_hi + $01
C - - - - - 0x00BE67 02:BE57: B9 88 04  LDA ram_score_player + $02,Y
C - - - - - 0x00BE6A 02:BE5A: 8D 8E 04  STA ram_score_hi + $02
bra_BE5D_RTS:
C - - - - - 0x00BE6D 02:BE5D: 60        RTS



sub_BE5E:
C - - - - - 0x00BE6E 02:BE5E: 85 04     STA ram_0004
C - - - - - 0x00BE70 02:BE60: 84 05     STY ram_0005
C - - - - - 0x00BE72 02:BE62: 98        TYA
C - - - - - 0x00BE73 02:BE63: 4A        LSR
C - - - - - 0x00BE74 02:BE64: A8        TAY
C - - - - - 0x00BE75 02:BE65: B9 86 04  LDA ram_score_player,Y
C - - - - - 0x00BE78 02:BE68: 85 06     STA ram_0006
C - - - - - 0x00BE7A 02:BE6A: A5 05     LDA ram_0005
C - - - - - 0x00BE7C 02:BE6C: 29 01     AND #$01
C - - - - - 0x00BE7E 02:BE6E: F0 08     BEQ bra_BE78
C - - - - - 0x00BE80 02:BE70: 46 06     LSR ram_0006
C - - - - - 0x00BE82 02:BE72: 46 06     LSR ram_0006
C - - - - - 0x00BE84 02:BE74: 46 06     LSR ram_0006
C - - - - - 0x00BE86 02:BE76: 46 06     LSR ram_0006
bra_BE78:
C - - - - - 0x00BE88 02:BE78: A5 06     LDA ram_0006
C - - - - - 0x00BE8A 02:BE7A: 29 0F     AND #$0F
C - - - - - 0x00BE8C 02:BE7C: 85 06     STA ram_0006
C - - - - - 0x00BE8E 02:BE7E: 18        CLC
C - - - - - 0x00BE8F 02:BE7F: A5 06     LDA ram_0006
C - - - - - 0x00BE91 02:BE81: 65 04     ADC ram_0004
C - - - - - 0x00BE93 02:BE83: 85 04     STA ram_0004
C - - - - - 0x00BE95 02:BE85: C9 0A     CMP #$0A
C - - - - - 0x00BE97 02:BE87: 90 02     BCC bra_BE8B
C - - - - - 0x00BE99 02:BE89: E9 0A     SBC #$0A
bra_BE8B:
C - - - - - 0x00BE9B 02:BE8B: 85 06     STA ram_0006
C - - - - - 0x00BE9D 02:BE8D: A5 05     LDA ram_0005
C - - - - - 0x00BE9F 02:BE8F: 29 01     AND #$01
C - - - - - 0x00BEA1 02:BE91: F0 15     BEQ bra_BEA8
C - - - - - 0x00BEA3 02:BE93: 06 06     ASL ram_0006
C - - - - - 0x00BEA5 02:BE95: 06 06     ASL ram_0006
C - - - - - 0x00BEA7 02:BE97: 06 06     ASL ram_0006
C - - - - - 0x00BEA9 02:BE99: 06 06     ASL ram_0006
C - - - - - 0x00BEAB 02:BE9B: B9 86 04  LDA ram_score_player,Y
C - - - - - 0x00BEAE 02:BE9E: 29 0F     AND #$0F
C - - - - - 0x00BEB0 02:BEA0: 05 06     ORA ram_0006
C - - - - - 0x00BEB2 02:BEA2: 99 86 04  STA ram_score_player,Y
C - - - - - 0x00BEB5 02:BEA5: 4C B2 BE  JMP loc_BEB2
bra_BEA8:
loc_BEA8:
C - - - - - 0x00BEB8 02:BEA8: B9 86 04  LDA ram_score_player,Y
C - - - - - 0x00BEBB 02:BEAB: 29 F0     AND #$F0
C - - - - - 0x00BEBD 02:BEAD: 05 06     ORA ram_0006
C - - - - - 0x00BEBF 02:BEAF: 99 86 04  STA ram_score_player,Y
loc_BEB2:
C D 1 - - - 0x00BEC2 02:BEB2: A5 04     LDA ram_0004
C - - - - - 0x00BEC4 02:BEB4: C9 0A     CMP #$0A
C - - - - - 0x00BEC6 02:BEB6: 90 08     BCC bra_BEC0_RTS
C - - - - - 0x00BEC8 02:BEB8: A9 01     LDA #$01
C - - - - - 0x00BECA 02:BEBA: A4 05     LDY ram_0005
C - - - - - 0x00BECC 02:BEBC: C8        INY
C - - - - - 0x00BECD 02:BEBD: 20 5E BE  JSR sub_BE5E
bra_BEC0_RTS:
C - - - - - 0x00BED0 02:BEC0: 60        RTS


; bzk garbage
- - - - - - 0x00BED1 02:BEC1: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00BEE0 02:BED0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00BEF0 02:BEE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00BF00 02:BEF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



sub_BF00:
C - - - - - 0x00BF10 02:BF00: AD 22 04  LDA ram_mission_hi
C - - - - - 0x00BF13 02:BF03: C9 03     CMP #$03
C - - - - - 0x00BF15 02:BF05: D0 4F     BNE bra_BF56_RTS
C - - - - - 0x00BF17 02:BF07: A9 01     LDA #$01
C - - - - - 0x00BF19 02:BF09: 85 19     STA ram_0019
bra_BF0B_loop:
C - - - - - 0x00BF1B 02:BF0B: A9 03     LDA #$03
C - - - - - 0x00BF1D 02:BF0D: 85 1A     STA ram_001A
C - - - - - 0x00BF1F 02:BF0F: A5 19     LDA ram_0019
C - - - - - 0x00BF21 02:BF11: 85 1B     STA ram_001B
C - - - - - 0x00BF23 02:BF13: 20 94 B3  JSR sub_B394
C - - - - - 0x00BF26 02:BF16: B0 3A     BCS bra_BF52
C - - - - - 0x00BF28 02:BF18: A9 00     LDA #$00
C - - - - - 0x00BF2A 02:BF1A: 85 1C     STA ram_001C
C - - - - - 0x00BF2C 02:BF1C: 20 D8 B3  JSR sub_B3D8
C - - - - - 0x00BF2F 02:BF1F: B0 31     BCS bra_BF52
bra_BF21_loop:
C - - - - - 0x00BF31 02:BF21: A6 1A     LDX ram_001A
C - - - - - 0x00BF33 02:BF23: BD 49 06  LDA ram_0649,X
C - - - - - 0x00BF36 02:BF26: C9 02     CMP #$02
C - - - - - 0x00BF38 02:BF28: 90 24     BCC bra_BF4E
C - - - - - 0x00BF3A 02:BF2A: BD 49 06  LDA ram_0649,X
C - - - - - 0x00BF3D 02:BF2D: 18        CLC
C - - - - - 0x00BF3E 02:BF2E: 69 01     ADC #$01
C - - - - - 0x00BF40 02:BF30: 0A        ASL
C - - - - - 0x00BF41 02:BF31: 0A        ASL
C - - - - - 0x00BF42 02:BF32: 0A        ASL
C - - - - - 0x00BF43 02:BF33: 85 13     STA ram_0013
C - - - - - 0x00BF45 02:BF35: A9 40     LDA #$40
C - - - - - 0x00BF47 02:BF37: 38        SEC
C - - - - - 0x00BF48 02:BF38: E5 13     SBC ram_0013
C - - - - - 0x00BF4A 02:BF3A: 85 11     STA ram_0011
C - - - - - 0x00BF4C 02:BF3C: A9 00     LDA #$00
C - - - - - 0x00BF4E 02:BF3E: 85 12     STA ram_0012
C - - - - - 0x00BF50 02:BF40: A4 1A     LDY ram_001A
C - - - - - 0x00BF52 02:BF42: B9 57 BF  LDA tbl_BF57,Y
C - - - - - 0x00BF55 02:BF45: 85 0E     STA ram_000E
C - - - - - 0x00BF57 02:BF47: A9 02     LDA #$02
C - - - - - 0x00BF59 02:BF49: 85 0F     STA ram_000F
C - - - - - 0x00BF5B 02:BF4B: 20 5B BF  JSR sub_BF5B
bra_BF4E:
C - - - - - 0x00BF5E 02:BF4E: C6 1A     DEC ram_001A
C - - - - - 0x00BF60 02:BF50: 10 CF     BPL bra_BF21_loop
bra_BF52:
C - - - - - 0x00BF62 02:BF52: C6 19     DEC ram_0019
C - - - - - 0x00BF64 02:BF54: 10 B5     BPL bra_BF0B_loop
bra_BF56_RTS:
C - - - - - 0x00BF66 02:BF56: 60        RTS



tbl_BF57:
- D 1 - - - 0x00BF67 02:BF57: 24        .byte $24   ; 00
- D 1 - - - 0x00BF68 02:BF58: 44        .byte $44   ; 01
- D 1 - - - 0x00BF69 02:BF59: 94        .byte $94   ; 02
- D 1 - - - 0x00BF6A 02:BF5A: F4        .byte $F4   ; 03



sub_BF5B:
C - - - - - 0x00BF6B 02:BF5B: A9 08     LDA #$08
C - - - - - 0x00BF6D 02:BF5D: 85 1B     STA ram_001B
C - - - - - 0x00BF6F 02:BF5F: A5 1D     LDA ram_001D
C - - - - - 0x00BF71 02:BF61: 38        SEC
C - - - - - 0x00BF72 02:BF62: E5 0E     SBC ram_000E
C - - - - - 0x00BF74 02:BF64: 85 29     STA ram_0029
C - - - - - 0x00BF76 02:BF66: A5 1E     LDA ram_001E
C - - - - - 0x00BF78 02:BF68: E5 0F     SBC ram_000F
C - - - - - 0x00BF7A 02:BF6A: 85 2A     STA ram_002A
C - - - - - 0x00BF7C 02:BF6C: B0 15     BCS bra_BF83
C - - - - - 0x00BF7E 02:BF6E: A5 1F     LDA ram_001F
C - - - - - 0x00BF80 02:BF70: 85 1B     STA ram_001B
C - - - - - 0x00BF82 02:BF72: A5 29     LDA ram_0029
C - - - - - 0x00BF84 02:BF74: 49 FF     EOR #$FF
C - - - - - 0x00BF86 02:BF76: 18        CLC
C - - - - - 0x00BF87 02:BF77: 69 01     ADC #< $0001
C - - - - - 0x00BF89 02:BF79: 85 29     STA ram_0029
C - - - - - 0x00BF8B 02:BF7B: A5 2A     LDA ram_002A
C - - - - - 0x00BF8D 02:BF7D: 49 FF     EOR #$FF
C - - - - - 0x00BF8F 02:BF7F: 69 00     ADC #> $0001
C - - - - - 0x00BF91 02:BF81: 85 2A     STA ram_002A
bra_BF83:
C - - - - - 0x00BF93 02:BF83: A5 29     LDA ram_0029
C - - - - - 0x00BF95 02:BF85: 38        SEC
C - - - - - 0x00BF96 02:BF86: E5 1B     SBC ram_001B
C - - - - - 0x00BF98 02:BF88: A5 2A     LDA ram_002A
C - - - - - 0x00BF9A 02:BF8A: E9 00     SBC #$00
C - - - - - 0x00BF9C 02:BF8C: B0 44     BCS bra_BFD2_RTS
C - - - - - 0x00BF9E 02:BF8E: A5 13     LDA ram_0013
C - - - - - 0x00BFA0 02:BF90: 85 1B     STA ram_001B
C - - - - - 0x00BFA2 02:BF92: A5 20     LDA ram_0020
C - - - - - 0x00BFA4 02:BF94: 38        SEC
C - - - - - 0x00BFA5 02:BF95: E5 11     SBC ram_0011
C - - - - - 0x00BFA7 02:BF97: 85 29     STA ram_0029
C - - - - - 0x00BFA9 02:BF99: A5 21     LDA ram_0021
C - - - - - 0x00BFAB 02:BF9B: E5 12     SBC ram_0012
C - - - - - 0x00BFAD 02:BF9D: 85 2A     STA ram_002A
C - - - - - 0x00BFAF 02:BF9F: B0 15     BCS bra_BFB6
C - - - - - 0x00BFB1 02:BFA1: A5 22     LDA ram_0022
C - - - - - 0x00BFB3 02:BFA3: 85 1B     STA ram_001B
C - - - - - 0x00BFB5 02:BFA5: A5 29     LDA ram_0029
C - - - - - 0x00BFB7 02:BFA7: 49 FF     EOR #$FF
C - - - - - 0x00BFB9 02:BFA9: 18        CLC
C - - - - - 0x00BFBA 02:BFAA: 69 01     ADC #< $0001
C - - - - - 0x00BFBC 02:BFAC: 85 29     STA ram_0029
C - - - - - 0x00BFBE 02:BFAE: A5 2A     LDA ram_002A
C - - - - - 0x00BFC0 02:BFB0: 49 FF     EOR #$FF
C - - - - - 0x00BFC2 02:BFB2: 69 00     ADC #> $0001
C - - - - - 0x00BFC4 02:BFB4: 85 2A     STA ram_002A
bra_BFB6:
C - - - - - 0x00BFC6 02:BFB6: A5 29     LDA ram_0029
C - - - - - 0x00BFC8 02:BFB8: 38        SEC
C - - - - - 0x00BFC9 02:BFB9: E5 1B     SBC ram_001B
C - - - - - 0x00BFCB 02:BFBB: A5 2A     LDA ram_002A
C - - - - - 0x00BFCD 02:BFBD: E9 00     SBC #$00
C - - - - - 0x00BFCF 02:BFBF: B0 11     BCS bra_BFD2_RTS
C - - - - - 0x00BFD1 02:BFC1: A9 1A     LDA #con_sfx_1A
C - - - - - 0x00BFD3 02:BFC3: 20 06 C0  JSR sub_0x01C016_play_sound
C - - - - - 0x00BFD6 02:BFC6: A9 1B     LDA #con_state_1B
C - - - - - 0x00BFD8 02:BFC8: A4 19     LDY ram_0019
C - - - - - 0x00BFDA 02:BFCA: 99 43 00  STA a: ram_state,Y
C - - - - - 0x00BFDD 02:BFCD: A9 10     LDA #con_damage + $10
C - - - - - 0x00BFDF 02:BFCF: 20 DC 9F  JSR sub_9FDC_damage_to_player
bra_BFD2_RTS:
C - - - - - 0x00BFE2 02:BFD2: 60        RTS


; bzk garbage
- - - - - - 0x00BFE3 02:BFD3: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00BFF0 02:BFE0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- - - - - - 0x00C000 02:BFF0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 



.segment "BANK_02_ID"
- D 1 - - - 0x00C00F 02:BFFF: 02        .byte con_prg_bank + $02   ; 



