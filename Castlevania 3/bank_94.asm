.segment "BANK_94"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x028010-0x02C00F



.export sub_0x028057
.export sub_0x02809A
.export sub_0x028208
.export sub_0x028272
.export sub_0x0284AE
.export sub_0x0284FA
.export sub_0x028F39
.export sub_0x028F8D
.export loc_0x02B0FA
.export loc_0x02B641
.export _off005_0x02BAAA_24
.export _off003_0x02BAD0_39
.export _off003_0x02BAFF_3A
.export _off003_0x02BB1D_3B
.export _off003_0x02BB39_3C
.export _off003_0x02BB39_60
.export _off003_0x02BB5B_3D
.export _off003_0x02BB5B_61
.export _off003_0x02BB7B_3E
.export _off003_0x02BB9C_3F
.export _off003_0x02BBBE_40
.export _off003_0x02BBDE_41
.export _off003_0x02BBF8_42
.export _off003_0x02BC07_43
.export _off003_0x02BC20_44
.export _off003_0x02BC3E_45
.export _off003_0x02BC5E_46
.export _off003_0x02BC7C_4D
.export _off003_0x02BC7C_4E
.export _off003_0x02BC87_4F
.export _off003_0x02BCA5_50
.export _off003_0x02BCC0_51
.export _off003_0x02BCDF_52
.export _off003_0x02BCFC_53
.export _off003_0x02BD27_55
.export _off003_0x02BD48_56
.export _off003_0x02BD62_57
.export _off003_0x02BD7F_58
.export _off003_0x02BD9E_59
.export _off003_0x02BDB6_5A
.export _off003_0x02BDD0_54
.export _off005_0x02BE0A_20



; bzk bank id, must be located at 8000 in each bank
- - - - - - 0x028010 0A:8000: 94        .byte con_prg_bank + $94   ; 



sub_8001:
C - - - - - 0x028011 0A:8001: 18        CLC
C - - - - - 0x028012 0A:8002: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x028014 0A:8004: 69 02     ADC #< $0002
C - - - - - 0x028016 0A:8006: 48        PHA
C - - - - - 0x028017 0A:8007: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x028019 0A:8009: 69 00     ADC #> $0002
C - - - - - 0x02801B 0A:800B: 85 76     STA ram_0076
C - - - - - 0x02801D 0A:800D: 68        PLA
C - - - - - 0x02801E 0A:800E: 4C 17 80  JMP loc_8017



sub_8011:
C - - - - - 0x028021 0A:8011: A5 57     LDA ram_cam_pos_hi
C - - - - - 0x028023 0A:8013: 85 76     STA ram_0076
C - - - - - 0x028025 0A:8015: A5 56     LDA ram_cam_pos_lo
loc_8017:
C D 0 - - - 0x028027 0A:8017: 0A        ASL
C - - - - - 0x028028 0A:8018: 26 76     ROL ram_0076
C - - - - - 0x02802A 0A:801A: 0A        ASL
C - - - - - 0x02802B 0A:801B: 26 76     ROL ram_0076
C - - - - - 0x02802D 0A:801D: 60        RTS



sub_801E:
C - - - - - 0x02802E 0A:801E: A5 32     LDA ram_blk_hi
C - - - - - 0x028030 0A:8020: 0A        ASL
C - - - - - 0x028031 0A:8021: A8        TAY
C - - - - - 0x028032 0A:8022: B9 7F 93  LDA tbl_937F,Y
C - - - - - 0x028035 0A:8025: 85 06     STA ram_0006_t001_data
C - - - - - 0x028037 0A:8027: B9 80 93  LDA tbl_937F + $01,Y
C - - - - - 0x02803A 0A:802A: 85 07     STA ram_0006_t001_data + $01
C - - - - - 0x02803C 0A:802C: A5 33     LDA ram_blk_lo
C - - - - - 0x02803E 0A:802E: 0A        ASL
C - - - - - 0x02803F 0A:802F: A8        TAY
C - - - - - 0x028040 0A:8030: B1 06     LDA (ram_0006_t001_data),Y
C - - - - - 0x028042 0A:8032: 85 04     STA ram_0004_t000_data
C - - - - - 0x028044 0A:8034: C8        INY
C - - - - - 0x028045 0A:8035: B1 06     LDA (ram_0006_t001_data),Y
C - - - - - 0x028047 0A:8037: 85 05     STA ram_0004_t000_data + $01
C - - - - - 0x028049 0A:8039: A5 34     LDA ram_blk_fr
C - - - - - 0x02804B 0A:803B: 0A        ASL
C - - - - - 0x02804C 0A:803C: A8        TAY
C - - - - - 0x02804D 0A:803D: B1 04     LDA (ram_0004_t000_data),Y
C - - - - - 0x02804F 0A:803F: 85 98     STA ram_0098
C - - - - - 0x028051 0A:8041: C8        INY
C - - - - - 0x028052 0A:8042: B1 04     LDA (ram_0004_t000_data),Y
C - - - - - 0x028054 0A:8044: 85 99     STA ram_0099
C - - - - - 0x028056 0A:8046: 60        RTS



sub_0x028057:
C - - - - - 0x028057 0A:8047: A2 00     LDX #$00
bra_8049_loop:  ; 00F0-00F3
C - - - - - 0x028059 0A:8049: A9 00     LDA #$00
C - - - - - 0x02805B 0A:804B: 95 F0     STA ram_00F0,X
C - - - - - 0x02805D 0A:804D: E8        INX
C - - - - - 0x02805E 0A:804E: E0 04     CPX #$04
C - - - - - 0x028060 0A:8050: 90 F7     BCC bra_8049_loop
C - - - - - 0x028062 0A:8052: 20 11 80  JSR sub_8011
C - - - - - 0x028065 0A:8055: 20 1E 80  JSR sub_801E
C - - - - - 0x028068 0A:8058: A9 06     LDA #$06
C - - - - - 0x02806A 0A:805A: 85 0C     STA ram_000C_temp
C - - - - - 0x02806C 0A:805C: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x02806E 0A:805E: 29 3F     AND #$3F
C - - - - - 0x028070 0A:8060: 85 08     STA ram_0008_temp
C - - - - - 0x028072 0A:8062: A9 C0     LDA #$C0
C - - - - - 0x028074 0A:8064: 38        SEC
C - - - - - 0x028075 0A:8065: E5 08     SBC ram_0008_temp
C - - - - - 0x028077 0A:8067: 85 09     STA ram_0009_temp
C - - - - - 0x028079 0A:8069: A9 01     LDA #$01
C - - - - - 0x02807B 0A:806B: 85 0A     STA ram_000A_temp
bra_806D_loop:
C - - - - - 0x02807D 0A:806D: 20 FC 80  JSR sub_80FC
C - - - - - 0x028080 0A:8070: E6 76     INC ram_0076
C - - - - - 0x028082 0A:8072: A5 09     LDA ram_0009_temp
C - - - - - 0x028084 0A:8074: 18        CLC
C - - - - - 0x028085 0A:8075: 69 40     ADC #< $0040
C - - - - - 0x028087 0A:8077: 85 09     STA ram_0009_temp
C - - - - - 0x028089 0A:8079: A5 0A     LDA ram_000A_temp
C - - - - - 0x02808B 0A:807B: 69 00     ADC #> $0040
C - - - - - 0x02808D 0A:807D: 29 01     AND #$01
C - - - - - 0x02808F 0A:807F: 85 0A     STA ram_000A_temp
C - - - - - 0x028091 0A:8081: C6 0C     DEC ram_000C_temp
C - - - - - 0x028093 0A:8083: D0 E8     BNE bra_806D_loop
C - - - - - 0x028095 0A:8085: A9 FF     LDA #$FF
C - - - - - 0x028097 0A:8087: 85 77     STA ram_0077
bra_8089_RTS:
C - - - - - 0x028099 0A:8089: 60        RTS



sub_0x02809A:
C - - - - - 0x02809A 0A:808A: A4 6E     LDY ram_006E_cam_speed
C - - - - - 0x02809C 0A:808C: F0 FB     BEQ bra_8089_RTS
C - - - - - 0x02809E 0A:808E: 88        DEY
C - - - - - 0x02809F 0A:808F: F0 28     BEQ bra_80B9_01
C - - - - - 0x0280A1 0A:8091: 88        DEY
C - - - - - 0x0280A2 0A:8092: F0 16     BEQ bra_80AA_02
C - - - - - 0x0280A4 0A:8094: A4 6E     LDY ram_006E_cam_speed
C - - - - - 0x0280A6 0A:8096: C0 FF     CPY #$FF
C - - - - - 0x0280A8 0A:8098: F0 1F     BEQ bra_80B9
C - - - - - 0x0280AA 0A:809A: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x0280AC 0A:809C: 29 3F     AND #$3F
C - - - - - 0x0280AE 0A:809E: C9 3F     CMP #$3F
C - - - - - 0x0280B0 0A:80A0: D0 17     BNE bra_80B9
C - - - - - 0x0280B2 0A:80A2: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x0280B4 0A:80A4: 18        CLC
C - - - - - 0x0280B5 0A:80A5: 69 01     ADC #$01
C - - - - - 0x0280B7 0A:80A7: 4C C1 80  JMP loc_80C1
bra_80AA_02:
C - - - - - 0x0280BA 0A:80AA: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x0280BC 0A:80AC: 29 3F     AND #$3F
C - - - - - 0x0280BE 0A:80AE: C9 01     CMP #$01
C - - - - - 0x0280C0 0A:80B0: D0 07     BNE bra_80B9
C - - - - - 0x0280C2 0A:80B2: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x0280C4 0A:80B4: 29 FE     AND #$FE
C - - - - - 0x0280C6 0A:80B6: 4C C1 80  JMP loc_80C1
bra_80B9:
bra_80B9_01:
C - - - - - 0x0280C9 0A:80B9: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x0280CB 0A:80BB: 29 3F     AND #$3F
C - - - - - 0x0280CD 0A:80BD: D0 CA     BNE bra_8089_RTS
C - - - - - 0x0280CF 0A:80BF: A5 56     LDA ram_cam_pos_lo
loc_80C1:
C D 0 - - - 0x0280D1 0A:80C1: C5 77     CMP ram_0077
C - - - - - 0x0280D3 0A:80C3: F0 C4     BEQ bra_8089_RTS
C - - - - - 0x0280D5 0A:80C5: 85 77     STA ram_0077
C - - - - - 0x0280D7 0A:80C7: 20 01 80  JSR sub_8001
C - - - - - 0x0280DA 0A:80CA: A9 00     LDA #$00
C - - - - - 0x0280DC 0A:80CC: A0 C0     LDY #$C0
C - - - - - 0x0280DE 0A:80CE: A6 65     LDX ram_0065
C - - - - - 0x0280E0 0A:80D0: F0 04     BEQ bra_80D6
C - - - - - 0x0280E2 0A:80D2: A9 05     LDA #$05
C - - - - - 0x0280E4 0A:80D4: A0 00     LDY #$00
bra_80D6:
C - - - - - 0x0280E6 0A:80D6: 84 09     STY ram_0009_temp
C - - - - - 0x0280E8 0A:80D8: 85 08     STA ram_0008_temp
C - - - - - 0x0280EA 0A:80DA: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x0280EC 0A:80DC: 29 3F     AND #$3F
C - - - - - 0x0280EE 0A:80DE: 85 0E     STA ram_000E_temp
C - - - - - 0x0280F0 0A:80E0: 29 20     AND #$20
C - - - - - 0x0280F2 0A:80E2: F0 06     BEQ bra_80EA
C - - - - - 0x0280F4 0A:80E4: A5 0E     LDA ram_000E_temp
C - - - - - 0x0280F6 0A:80E6: 09 C0     ORA #$C0
C - - - - - 0x0280F8 0A:80E8: D0 02     BNE bra_80EC    ; jmp
bra_80EA:
C - - - - - 0x0280FA 0A:80EA: A5 0E     LDA ram_000E_temp
bra_80EC:
C - - - - - 0x0280FC 0A:80EC: 18        CLC
C - - - - - 0x0280FD 0A:80ED: 65 09     ADC ram_0009_temp
C - - - - - 0x0280FF 0A:80EF: 85 09     STA ram_0009_temp
C - - - - - 0x028101 0A:80F1: A5 76     LDA ram_0076
C - - - - - 0x028103 0A:80F3: 18        CLC
C - - - - - 0x028104 0A:80F4: 65 08     ADC ram_0008_temp
C - - - - - 0x028106 0A:80F6: 85 76     STA ram_0076
C - - - - - 0x028108 0A:80F8: A9 01     LDA #$01
C - - - - - 0x02810A 0A:80FA: 85 0A     STA ram_000A_temp
sub_80FC:
C - - - - - 0x02810C 0A:80FC: A4 76     LDY ram_0076
C - - - - - 0x02810E 0A:80FE: BE 0C 84  LDX tbl_840C,Y
C - - - - - 0x028111 0A:8101: A5 76     LDA ram_0076
C - - - - - 0x028113 0A:8103: 0A        ASL
C - - - - - 0x028114 0A:8104: A8        TAY
C - - - - - 0x028115 0A:8105: 84 0B     STY ram_000B_temp
C - - - - - 0x028117 0A:8107: B1 98     LDA (ram_0098),Y
C - - - - - 0x028119 0A:8109: 0A        ASL
C - - - - - 0x02811A 0A:810A: B0 0E     BCS bra_811A_80_FF
; 00-7F
bra_810C:
C - - - - - 0x02811C 0A:810C: A8        TAY
C - - - - - 0x02811D 0A:810D: B9 3F A0  LDA tbl_A03F,Y
C - - - - - 0x028120 0A:8110: 85 00     STA ram_0000_t007_data
C - - - - - 0x028122 0A:8112: B9 40 A0  LDA tbl_A03F + $01,Y
C - - - - - 0x028125 0A:8115: 85 01     STA ram_0000_t007_data + $01
C - - - - - 0x028127 0A:8117: 4C 32 81  JMP loc_8132
bra_811A_80_FF:
C - - - - - 0x02812A 0A:811A: AC F6 07  LDY ram_quest
C - - - - - 0x02812D 0A:811D: D0 08     BNE bra_8127
; if 1st quest
C - - - - - 0x02812F 0A:811F: C9 A0     CMP #$A0
C - - - - - 0x028131 0A:8121: 90 04     BCC bra_8127
; if original index was D0-FF
C - - - - - 0x028133 0A:8123: A9 00     LDA #$00    ; con_A03F_00
C - - - - - 0x028135 0A:8125: F0 E5     BEQ bra_810C    ; jmp
bra_8127:
C - - - - - 0x028137 0A:8127: A8        TAY
C - - - - - 0x028138 0A:8128: B9 3F A1  LDA tbl_A03F + $100,Y
C - - - - - 0x02813B 0A:812B: 85 00     STA ram_0000_t007_data
C - - - - - 0x02813D 0A:812D: B9 40 A1  LDA tbl_A03F + $100 + $01,Y
C - - - - - 0x028140 0A:8130: 85 01     STA ram_0000_t007_data + $01
loc_8132:
C D 0 - - - 0x028142 0A:8132: A0 00     LDY #$00
C - - - - - 0x028144 0A:8134: B1 00     LDA (ram_0000_t007_data),Y
C - - - - - 0x028146 0A:8136: 9D C2 07  STA ram_07C2,X
C - - - - - 0x028149 0A:8139: F0 3D     BEQ bra_8178
C - - - - - 0x02814B 0A:813B: C8        INY ; 01
C - - - - - 0x02814C 0A:813C: B1 00     LDA (ram_0000_t007_data),Y
C - - - - - 0x02814E 0A:813E: 18        CLC
C - - - - - 0x02814F 0A:813F: 65 09     ADC ram_0009_temp
C - - - - - 0x028151 0A:8141: 9D DA 07  STA ram_07DA,X
C - - - - - 0x028154 0A:8144: A5 0A     LDA ram_000A_temp
C - - - - - 0x028156 0A:8146: 69 00     ADC #$00
C - - - - - 0x028158 0A:8148: 29 01     AND #$01
C - - - - - 0x02815A 0A:814A: 9D E0 07  STA ram_07E0,X
C - - - - - 0x02815D 0A:814D: C8        INY ; 02
C - - - - - 0x02815E 0A:814E: B1 00     LDA (ram_0000_t007_data),Y
C - - - - - 0x028160 0A:8150: 9D D4 07  STA ram_07D4,X
C - - - - - 0x028163 0A:8153: C8        INY ; 03
C - - - - - 0x028164 0A:8154: B1 00     LDA (ram_0000_t007_data),Y
C - - - - - 0x028166 0A:8156: 9D E6 07  STA ram_07E6,X
C - - - - - 0x028169 0A:8159: C8        INY ; 04
C - - - - - 0x02816A 0A:815A: B1 00     LDA (ram_0000_t007_data),Y
C - - - - - 0x02816C 0A:815C: 9D CE 07  STA ram_07CE,X
C - - - - - 0x02816F 0A:815F: 8A        TXA
C - - - - - 0x028170 0A:8160: 48        PHA
C - - - - - 0x028171 0A:8161: BD C8 07  LDA ram_07C8,X
; / 10
C - - - - - 0x028174 0A:8164: 4A        LSR
C - - - - - 0x028175 0A:8165: 4A        LSR
C - - - - - 0x028176 0A:8166: 4A        LSR
C - - - - - 0x028177 0A:8167: 4A        LSR
C - - - - - 0x028178 0A:8168: AA        TAX
C - - - - - 0x028179 0A:8169: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02817C 0A:816C: 29 FB     AND #con_obj_flag_04 ^ $FF
C - - - - - 0x02817E 0A:816E: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x028181 0A:8171: 68        PLA
C - - - - - 0x028182 0A:8172: AA        TAX
C - - - - - 0x028183 0A:8173: A9 00     LDA #$00
C - - - - - 0x028185 0A:8175: 9D C8 07  STA ram_07C8,X
bra_8178:
C - - - - - 0x028188 0A:8178: 20 8D 84  JSR sub_848D
C - - - - - 0x02818B 0A:817B: D0 01     BNE bra_817E
C - - - - - 0x02818D 0A:817D: 60        RTS
bra_817E:
C - - - - - 0x02818E 0A:817E: 8A        TXA
C - - - - - 0x02818F 0A:817F: 18        CLC
C - - - - - 0x028190 0A:8180: 69 0D     ADC #$0D
C - - - - - 0x028192 0A:8182: AA        TAX
C - - - - - 0x028193 0A:8183: 20 3C 84  JSR sub_843C
C - - - - - 0x028196 0A:8186: D0 5E     BNE bra_81E6
C - - - - - 0x028198 0A:8188: A4 0B     LDY ram_000B_temp
C - - - - - 0x02819A 0A:818A: C8        INY
C - - - - - 0x02819B 0A:818B: B1 98     LDA (ram_0098),Y
C - - - - - 0x02819D 0A:818D: F0 57     BEQ bra_81E6    ; if con_A644_00
C - - - - - 0x02819F 0A:818F: 0A        ASL
C - - - - - 0x0281A0 0A:8190: B0 0E     BCS bra_81A0_80_FF
; 01-7F
C - - - - - 0x0281A2 0A:8192: A8        TAY
C - - - - - 0x0281A3 0A:8193: B9 44 A6  LDA tbl_A644,Y
C - - - - - 0x0281A6 0A:8196: 85 00     STA ram_0000_t006_data
C - - - - - 0x0281A8 0A:8198: B9 45 A6  LDA tbl_A644 + $01,Y
C - - - - - 0x0281AB 0A:819B: 85 01     STA ram_0000_t006_data + $01
C - - - - - 0x0281AD 0A:819D: 4C AB 81  JMP loc_81AB
bra_81A0_80_FF:
C - - - - - 0x0281B0 0A:81A0: A8        TAY
C - - - - - 0x0281B1 0A:81A1: B9 44 A7  LDA tbl_A644 + $100,Y
C - - - - - 0x0281B4 0A:81A4: 85 00     STA ram_0000_t006_data
C - - - - - 0x0281B6 0A:81A6: B9 45 A7  LDA tbl_A644 + $100 + $01,Y
C - - - - - 0x0281B9 0A:81A9: 85 01     STA ram_0000_t006_data + $01
loc_81AB:
C D 0 - - - 0x0281BB 0A:81AB: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
C - - - - - 0x0281BE 0A:81AE: A0 00     LDY #$00
C - - - - - 0x0281C0 0A:81B0: B1 00     LDA (ram_0000_t006_data),Y
C - - - - - 0x0281C2 0A:81B2: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0281C5 0A:81B5: C8        INY ; 01
C - - - - - 0x0281C6 0A:81B6: B1 00     LDA (ram_0000_t006_data),Y
C - - - - - 0x0281C8 0A:81B8: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x0281CB 0A:81BB: C8        INY ; 02
C - - - - - 0x0281CC 0A:81BC: B1 00     LDA (ram_0000_t006_data),Y
C - - - - - 0x0281CE 0A:81BE: 18        CLC
C - - - - - 0x0281CF 0A:81BF: 65 09     ADC ram_0009_temp
C - - - - - 0x0281D1 0A:81C1: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0281D4 0A:81C4: A5 0A     LDA ram_000A_temp
C - - - - - 0x0281D6 0A:81C6: 69 00     ADC #$00
C - - - - - 0x0281D8 0A:81C8: 29 01     AND #$01
C - - - - - 0x0281DA 0A:81CA: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_01
C - - - - - 0x0281DD 0A:81CD: C8        INY ; 03
C - - - - - 0x0281DE 0A:81CE: B1 00     LDA (ram_0000_t006_data),Y
C - - - - - 0x0281E0 0A:81D0: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0281E3 0A:81D3: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0281E6 0A:81D6: 38        SEC
C - - - - - 0x0281E7 0A:81D7: E9 90     SBC #$90
C - - - - - 0x0281E9 0A:81D9: A8        TAY
C - - - - - 0x0281EA 0A:81DA: B9 25 83  LDA tbl_8325,Y
C - - - - - 0x0281ED 0A:81DD: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x0281F0 0A:81E0: A5 76     LDA ram_0076
C - - - - - 0x0281F2 0A:81E2: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x0281F5 0A:81E5: 60        RTS
bra_81E6:
C - - - - - 0x0281F6 0A:81E6: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
sub_81E9:
C - - - - - 0x0281F9 0A:81E9: A9 00     LDA #$00
C - - - - - 0x0281FB 0A:81EB: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0281FE 0A:81EE: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x028201 0A:81F1: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x028204 0A:81F4: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x028207 0A:81F7: 60        RTS



sub_0x028208:
C - - - - - 0x028208 0A:81F8: 20 69 83  JSR sub_8369
C - - - - - 0x02820B 0A:81FB: A9 00     LDA #$00
C - - - - - 0x02820D 0A:81FD: 85 79     STA ram_0079
C - - - - - 0x02820F 0A:81FF: 85 7A     STA ram_007A
loc_8201_loop:
C D 0 - - - 0x028211 0A:8201: 20 1E 80  JSR sub_801E
C - - - - - 0x028214 0A:8204: A4 79     LDY ram_0079
C - - - - - 0x028216 0A:8206: B1 98     LDA (ram_0098),Y
C - - - - - 0x028218 0A:8208: C9 FF     CMP #$FF
C - - - - - 0x02821A 0A:820A: F0 51     BEQ bra_825D_FF
C - - - - - 0x02821C 0A:820C: 20 1D 83  JSR sub_831D
; bzk optimize, A already has proper byte
C - - - - - 0x02821F 0A:820F: A5 0A     LDA ram_000A_temp
C - - - - - 0x028221 0A:8211: 38        SEC
C - - - - - 0x028222 0A:8212: E5 56     SBC ram_cam_pos_lo
C - - - - - 0x028224 0A:8214: 85 02     STA ram_0002_temp
C - - - - - 0x028226 0A:8216: A5 09     LDA ram_0009_temp
C - - - - - 0x028228 0A:8218: E5 57     SBC ram_cam_pos_hi
C - - - - - 0x02822A 0A:821A: 85 03     STA ram_0003_temp
C - - - - - 0x02822C 0A:821C: 30 35     BMI bra_8253
C - - - - - 0x02822E 0A:821E: 38        SEC
C - - - - - 0x02822F 0A:821F: A5 09     LDA ram_0009_temp
C - - - - - 0x028231 0A:8221: E5 57     SBC ram_cam_pos_hi
C - - - - - 0x028233 0A:8223: F0 10     BEQ bra_8235
C - - - - - 0x028235 0A:8225: 38        SEC
C - - - - - 0x028236 0A:8226: E9 01     SBC #$01
C - - - - - 0x028238 0A:8228: D0 29     BNE bra_8253
C - - - - - 0x02823A 0A:822A: 38        SEC
C - - - - - 0x02823B 0A:822B: A5 02     LDA ram_0002_temp
C - - - - - 0x02823D 0A:822D: E9 10     SBC #$10
C - - - - - 0x02823F 0A:822F: 85 02     STA ram_0002_temp
C - - - - - 0x028241 0A:8231: B0 02     BCS bra_8235
; if underflow
C - - - - - 0x028243 0A:8233: C6 03     DEC ram_0003_temp
bra_8235:
C - - - - - 0x028245 0A:8235: A5 03     LDA ram_0003_temp
C - - - - - 0x028247 0A:8237: D0 1A     BNE bra_8253
C - - - - - 0x028249 0A:8239: A5 02     LDA ram_0002_temp
C - - - - - 0x02824B 0A:823B: C9 B9     CMP #$B9
C - - - - - 0x02824D 0A:823D: B0 14     BCS bra_8253
C - - - - - 0x02824F 0A:823F: A5 02     LDA ram_0002_temp
C - - - - - 0x028251 0A:8241: 18        CLC
C - - - - - 0x028252 0A:8242: 69 37     ADC #$37
C - - - - - 0x028254 0A:8244: 85 0A     STA ram_000A_temp
C - - - - - 0x028256 0A:8246: 18        CLC
C - - - - - 0x028257 0A:8247: A5 7A     LDA ram_007A
C - - - - - 0x028259 0A:8249: 69 07     ADC #$07
C - - - - - 0x02825B 0A:824B: 85 7A     STA ram_007A
C - - - - - 0x02825D 0A:824D: 20 71 82  JSR sub_8271
C - - - - - 0x028260 0A:8250: 4C 01 82  JMP loc_8201_loop
bra_8253:
C - - - - - 0x028263 0A:8253: 18        CLC
C - - - - - 0x028264 0A:8254: A5 79     LDA ram_0079
C - - - - - 0x028266 0A:8256: 69 07     ADC #$07
C - - - - - 0x028268 0A:8258: 85 79     STA ram_0079
C - - - - - 0x02826A 0A:825A: 4C 01 82  JMP loc_8201_loop
bra_825D_FF:
C - - - - - 0x02826D 0A:825D: A5 7A     LDA ram_007A
C - - - - - 0x02826F 0A:825F: 85 79     STA ram_0079
bra_8261_RTS:
C - - - - - 0x028271 0A:8261: 60        RTS



sub_0x028272:
C - - - - - 0x028272 0A:8262: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x028274 0A:8264: 29 F0     AND #$F0
C - - - - - 0x028276 0A:8266: C5 77     CMP ram_0077
C - - - - - 0x028278 0A:8268: F0 F7     BEQ bra_8261_RTS
C - - - - - 0x02827A 0A:826A: 85 77     STA ram_0077
C - - - - - 0x02827C 0A:826C: 20 D7 82  JSR sub_82D7
C - - - - - 0x02827F 0A:826F: 90 F0     BCC bra_8261_RTS
sub_8271:
C - - - - - 0x028281 0A:8271: 18        CLC
C - - - - - 0x028282 0A:8272: A5 79     LDA ram_0079
C - - - - - 0x028284 0A:8274: 69 07     ADC #$07
C - - - - - 0x028286 0A:8276: 85 79     STA ram_0079
C - - - - - 0x028288 0A:8278: C8        INY
C - - - - - 0x028289 0A:8279: B1 98     LDA (ram_0098),Y
C - - - - - 0x02828B 0A:827B: 30 2B     BMI bra_82A8_80_FF
; 00-7F
C - - - - - 0x02828D 0A:827D: 20 5B 83  JSR sub_835B
C - - - - - 0x028290 0A:8280: D0 54     BNE bra_82D6_RTS
C - - - - - 0x028292 0A:8282: B1 98     LDA (ram_0098),Y
C - - - - - 0x028294 0A:8284: 9D C2 07  STA ram_07C2,X
C - - - - - 0x028297 0A:8287: C8        INY
C - - - - - 0x028298 0A:8288: B1 98     LDA (ram_0098),Y
C - - - - - 0x02829A 0A:828A: 9D DA 07  STA ram_07DA,X
C - - - - - 0x02829D 0A:828D: C8        INY
C - - - - - 0x02829E 0A:828E: C8        INY
C - - - - - 0x02829F 0A:828F: B1 98     LDA (ram_0098),Y
C - - - - - 0x0282A1 0A:8291: 9D E6 07  STA ram_07E6,X
C - - - - - 0x0282A4 0A:8294: C8        INY
C - - - - - 0x0282A5 0A:8295: B1 98     LDA (ram_0098),Y
C - - - - - 0x0282A7 0A:8297: 9D CE 07  STA ram_07CE,X
C - - - - - 0x0282AA 0A:829A: A5 0A     LDA ram_000A_temp
C - - - - - 0x0282AC 0A:829C: 9D D4 07  STA ram_07D4,X
C - - - - - 0x0282AF 0A:829F: A9 00     LDA #$00
C - - - - - 0x0282B1 0A:82A1: 9D E0 07  STA ram_07E0,X
C - - - - - 0x0282B4 0A:82A4: 9D C8 07  STA ram_07C8,X
C - - - - - 0x0282B7 0A:82A7: 60        RTS
bra_82A8_80_FF:
C - - - - - 0x0282B8 0A:82A8: 20 4D 83  JSR sub_834D_find_empty_object_slot_0D_12
C - - - - - 0x0282BB 0A:82AB: D0 29     BNE bra_82D6_RTS
C - - - - - 0x0282BD 0A:82AD: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
; A = 00
C - - - - - 0x0282C0 0A:82B0: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x0282C3 0A:82B3: B1 98     LDA (ram_0098),Y
C - - - - - 0x0282C5 0A:82B5: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0282C8 0A:82B8: C8        INY
C - - - - - 0x0282C9 0A:82B9: B1 98     LDA (ram_0098),Y
C - - - - - 0x0282CB 0A:82BB: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0282CE 0A:82BE: C8        INY
C - - - - - 0x0282CF 0A:82BF: B1 98     LDA (ram_0098),Y
C - - - - - 0x0282D1 0A:82C1: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x0282D4 0A:82C4: A5 0A     LDA ram_000A_temp
C - - - - - 0x0282D6 0A:82C6: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0282D9 0A:82C9: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0282DC 0A:82CC: 38        SEC
C - - - - - 0x0282DD 0A:82CD: E9 90     SBC #$90
C - - - - - 0x0282DF 0A:82CF: A8        TAY
C - - - - - 0x0282E0 0A:82D0: B9 25 83  LDA tbl_8325,Y
C - - - - - 0x0282E3 0A:82D3: 9D EF 05  STA ram_05EF_obj,X
bra_82D6_RTS:
C - - - - - 0x0282E6 0A:82D6: 60        RTS



sub_82D7:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0282E7 0A:82D7: A4 79     LDY ram_0079
C - - - - - 0x0282E9 0A:82D9: B1 98     LDA (ram_0098),Y
C - - - - - 0x0282EB 0A:82DB: C9 FF     CMP #$FF
C - - - - - 0x0282ED 0A:82DD: F0 12     BEQ bra_82F1
C - - - - - 0x0282EF 0A:82DF: 20 1D 83  JSR sub_831D
; bzk optimize, A already has proper byte
C - - - - - 0x0282F2 0A:82E2: A5 0A     LDA ram_000A_temp
C - - - - - 0x0282F4 0A:82E4: 38        SEC
C - - - - - 0x0282F5 0A:82E5: E5 56     SBC ram_cam_pos_lo
C - - - - - 0x0282F7 0A:82E7: 85 02     STA ram_0002_temp
C - - - - - 0x0282F9 0A:82E9: A5 09     LDA ram_0009_temp
C - - - - - 0x0282FB 0A:82EB: E5 57     SBC ram_cam_pos_hi
C - - - - - 0x0282FD 0A:82ED: 85 03     STA ram_0003_temp
C - - - - - 0x0282FF 0A:82EF: 10 02     BPL bra_82F3
bra_82F1:
C - - - - - 0x028301 0A:82F1: 18        CLC
C - - - - - 0x028302 0A:82F2: 60        RTS
bra_82F3:
C - - - - - 0x028303 0A:82F3: 38        SEC
C - - - - - 0x028304 0A:82F4: A5 09     LDA ram_0009_temp
C - - - - - 0x028306 0A:82F6: E5 57     SBC ram_cam_pos_hi
C - - - - - 0x028308 0A:82F8: F0 10     BEQ bra_830A
C - - - - - 0x02830A 0A:82FA: 38        SEC
C - - - - - 0x02830B 0A:82FB: E9 01     SBC #$01
C - - - - - 0x02830D 0A:82FD: D0 F2     BNE bra_82F1
C - - - - - 0x02830F 0A:82FF: 38        SEC
C - - - - - 0x028310 0A:8300: A5 02     LDA ram_0002_temp
C - - - - - 0x028312 0A:8302: E9 10     SBC #$10
C - - - - - 0x028314 0A:8304: 85 02     STA ram_0002_temp
C - - - - - 0x028316 0A:8306: B0 02     BCS bra_830A
; if underflow
C - - - - - 0x028318 0A:8308: C6 03     DEC ram_0003_temp
bra_830A:
C - - - - - 0x02831A 0A:830A: A5 03     LDA ram_0003_temp
C - - - - - 0x02831C 0A:830C: D0 E3     BNE bra_82F1
C - - - - - 0x02831E 0A:830E: A5 02     LDA ram_0002_temp
C - - - - - 0x028320 0A:8310: C9 B8     CMP #$B8
C - - - - - 0x028322 0A:8312: B0 DD     BCS bra_82F1
C - - - - - 0x028324 0A:8314: A5 02     LDA ram_0002_temp
C - - - - - 0x028326 0A:8316: 18        CLC
C - - - - - 0x028327 0A:8317: 69 37     ADC #$37
C - - - - - 0x028329 0A:8319: 85 0A     STA ram_000A_temp
C - - - - - 0x02832B 0A:831B: 38        SEC
C - - - - - 0x02832C 0A:831C: 60        RTS



sub_831D:
C - - - - - 0x02832D 0A:831D: 85 09     STA ram_0009_temp
C - - - - - 0x02832F 0A:831F: C8        INY
C - - - - - 0x028330 0A:8320: B1 98     LDA (ram_0098),Y
C - - - - - 0x028332 0A:8322: 85 0A     STA ram_000A_temp
C - - - - - 0x028334 0A:8324: 60        RTS



tbl_8325:
- D 0 - - - 0x028335 0A:8325: 30        .byte $30   ; 90 
- D 0 - - - 0x028336 0A:8326: 31        .byte $31   ; 91 
- D 0 - - - 0x028337 0A:8327: 32        .byte $32   ; 92 
; bzk garbage most likely. there are a couple of non-zero bytes
- - - - - - 0x028338 0A:8328: 00        .byte $00   ; 93 
- - - - - - 0x028339 0A:8329: 00        .byte $00   ; 94 
- - - - - - 0x02833A 0A:832A: 00        .byte $00   ; 95 
- - - - - - 0x02833B 0A:832B: 00        .byte $00   ; 96 
- - - - - - 0x02833C 0A:832C: 00        .byte $00   ; 97 
- - - - - - 0x02833D 0A:832D: 00        .byte $00   ; 98 
- - - - - - 0x02833E 0A:832E: 00        .byte $00   ; 99 
- - - - - - 0x02833F 0A:832F: 51        .byte $51   ; 9A 51
- - - - - - 0x028340 0A:8330: 00        .byte $00   ; 9B 
- - - - - - 0x028341 0A:8331: 00        .byte $00   ; 9C 
- - - - - - 0x028342 0A:8332: 00        .byte $00   ; 9D 
- - - - - - 0x028343 0A:8333: 00        .byte $00   ; 9E 
- - - - - - 0x028344 0A:8334: 00        .byte $00   ; 9F 
- - - - - - 0x028345 0A:8335: 00        .byte $00   ; A0 
- - - - - - 0x028346 0A:8336: 00        .byte $00   ; A1 
- - - - - - 0x028347 0A:8337: 00        .byte $00   ; A2 
- - - - - - 0x028348 0A:8338: 00        .byte $00   ; A3 
- - - - - - 0x028349 0A:8339: 00        .byte $00   ; A4 
- - - - - - 0x02834A 0A:833A: 00        .byte $00   ; A5 
- - - - - - 0x02834B 0A:833B: 00        .byte $00   ; A6 
- - - - - - 0x02834C 0A:833C: 00        .byte $00   ; A7 
- - - - - - 0x02834D 0A:833D: 00        .byte $00   ; A8 
- - - - - - 0x02834E 0A:833E: 00        .byte $00   ; A9 
- - - - - - 0x02834F 0A:833F: 00        .byte $00   ; AA 
- - - - - - 0x028350 0A:8340: 00        .byte $00   ; AB 
- - - - - - 0x028351 0A:8341: 00        .byte $00   ; AC 
- - - - - - 0x028352 0A:8342: 00        .byte $00   ; AD 
- - - - - - 0x028353 0A:8343: 00        .byte $00   ; AE 
- - - - - - 0x028354 0A:8344: 00        .byte $00   ; AF 
- - - - - - 0x028355 0A:8345: 00        .byte $00   ; B0 
- - - - - - 0x028356 0A:8346: 52        .byte $52   ; B1 52
- - - - - - 0x028357 0A:8347: 00        .byte $00   ; B2 
- - - - - - 0x028358 0A:8348: 00        .byte $00   ; B3 
- - - - - - 0x028359 0A:8349: 00        .byte $00   ; B4 
- - - - - - 0x02835A 0A:834A: 00        .byte $00   ; B5 
- - - - - - 0x02835B 0A:834B: 00        .byte $00   ; B6 
- - - - - - 0x02835C 0A:834C: 00        .byte $00   ; B7 



loc_834D_find_empty_object_slot_0D_12:
sub_834D_find_empty_object_slot_0D_12:
; out
    ; Z
        ; 0 = not found
        ; 1 = found
    ; X = slot index
C D 0 - - - 0x02835D 0A:834D: A2 0D     LDX #$0D
bra_834F_loop:
C - - - - - 0x02835F 0A:834F: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x028362 0A:8352: F0 3D     BEQ bra_8391_RTS
C - - - - - 0x028364 0A:8354: E8        INX
C - - - - - 0x028365 0A:8355: E0 13     CPX #$13
C - - - - - 0x028367 0A:8357: 90 F6     BCC bra_834F_loop
- - - - - - 0x028369 0A:8359: B0 34     BCS bra_838F    ; jmp



sub_835B:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x02836B 0A:835B: A2 00     LDX #$00
bra_835D_loop:  ; 07C2-07C7
C - - - - - 0x02836D 0A:835D: BD C2 07  LDA ram_07C2,X
C - - - - - 0x028370 0A:8360: F0 2F     BEQ bra_8391_RTS
C - - - - - 0x028372 0A:8362: E8        INX
C - - - - - 0x028373 0A:8363: E0 06     CPX #$06
C - - - - - 0x028375 0A:8365: 90 F6     BCC bra_835D_loop
- - - - - - 0x028377 0A:8367: B0 26     BCS bra_838F    ; jmp



sub_8369:
C - - - - - 0x028379 0A:8369: A2 00     LDX #$00
C - - - - - 0x02837B 0A:836B: 8A        TXA ; 00
bra_836C_loop:
C - - - - - 0x02837C 0A:836C: 9D C2 07  STA ram_07C2,X
C - - - - - 0x02837F 0A:836F: E8        INX
C - - - - - 0x028380 0A:8370: E0 06     CPX #$06
C - - - - - 0x028382 0A:8372: 90 F8     BCC bra_836C_loop
C - - - - - 0x028384 0A:8374: 60        RTS


; bzk garbage
- - - - - - 0x028385 0A:8375: A2 01     LDX #$01
bra_8377_loop:
- - - - - - 0x028387 0A:8377: BD 4E 05  LDA ram_obj_id,X
- - - - - - 0x02838A 0A:837A: F0 15     BEQ bra_8391_RTS
- - - - - - 0x02838C 0A:837C: E8        INX
- - - - - - 0x02838D 0A:837D: E0 03     CPX #$03
- - - - - - 0x02838F 0A:837F: 90 F6     BCC bra_8377_loop
- - - - - - 0x028391 0A:8381: B0 0C     BCS bra_838F    ; jmp



sub_8383_find_empty_object_slot_01_03:
loc_8383_find_empty_object_slot_01_03:
; out
    ; Z
        ; 0 = not found
        ; 1 = found
    ; X = slot index
C D 0 - - - 0x028393 0A:8383: A2 01     LDX #$01
bra_8385_loop:
C - - - - - 0x028395 0A:8385: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x028398 0A:8388: F0 07     BEQ bra_8391_RTS
C - - - - - 0x02839A 0A:838A: E8        INX
C - - - - - 0x02839B 0A:838B: E0 04     CPX #$04
C - - - - - 0x02839D 0A:838D: 90 F6     BCC bra_8385_loop
bra_838F:
; bzk optimize, better write LDA 01 + RTS instead of branches here.
; takes a bit more space, but looks better. and repoint BEQ's to their own RTS's
C - - - - - 0x02839F 0A:838F: A9 01     LDA #$01
bra_8391_RTS:
C - - - - - 0x0283A1 0A:8391: 60        RTS



loc_8392_find_empty_object_slot_07_08:
; out
    ; Z
        ; 0 = not found
        ; 1 = found
    ; X = slot index
C D 0 - - - 0x0283A2 0A:8392: A2 07     LDX #$07
bra_8394_loop:
C - - - - - 0x0283A4 0A:8394: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0283A7 0A:8397: F0 F8     BEQ bra_8391_RTS
C - - - - - 0x0283A9 0A:8399: E8        INX
C - - - - - 0x0283AA 0A:839A: E0 09     CPX #$09
C - - - - - 0x0283AC 0A:839C: 90 F6     BCC bra_8394_loop
- - - - - - 0x0283AE 0A:839E: B0 EF     BCS bra_838F    ; jmp



sub_83A0_find_empty_object_slot_04_06:
loc_83A0_find_empty_object_slot_04_06:
; out
    ; Z
        ; 0 = not found
        ; 1 = found
    ; X = slot index
C D 0 - - - 0x0283B0 0A:83A0: A2 04     LDX #$04
bra_83A2_loop:
C - - - - - 0x0283B2 0A:83A2: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0283B5 0A:83A5: F0 EA     BEQ bra_8391_RTS
C - - - - - 0x0283B7 0A:83A7: E8        INX
C - - - - - 0x0283B8 0A:83A8: E0 07     CPX #$07
C - - - - - 0x0283BA 0A:83AA: 90 F6     BCC bra_83A2_loop
C - - - - - 0x0283BC 0A:83AC: B0 E1     BCS bra_838F    ; jmp



sub_83AE_find_empty_object_slot_0A_0C:
; out
    ; Z
        ; 0 = not found
        ; 1 = found
    ; X = slot index
C - - - - - 0x0283BE 0A:83AE: A2 0A     LDX #$0A
bra_83B0_loop:
C - - - - - 0x0283C0 0A:83B0: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0283C3 0A:83B3: F0 DC     BEQ bra_8391_RTS
C - - - - - 0x0283C5 0A:83B5: E8        INX
C - - - - - 0x0283C6 0A:83B6: E0 0D     CPX #$0D
C - - - - - 0x0283C8 0A:83B8: 90 F6     BCC bra_83B0_loop
C - - - - - 0x0283CA 0A:83BA: B0 D3     BCS bra_838F    ; jmp



sub_83BC:
C - - - - - 0x0283CC 0A:83BC: A2 01     LDX #$01
bra_83BE_loop:
C - - - - - 0x0283CE 0A:83BE: 20 E9 81  JSR sub_81E9
C - - - - - 0x0283D1 0A:83C1: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0283D4 0A:83C4: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x0283D7 0A:83C7: E8        INX
C - - - - - 0x0283D8 0A:83C8: E0 0D     CPX #$0D
C - - - - - 0x0283DA 0A:83CA: 90 F2     BCC bra_83BE_loop
C - - - - - 0x0283DC 0A:83CC: 60        RTS



sub_83CD:
C - - - - - 0x0283DD 0A:83CD: A0 00     LDY #$00
C - - - - - 0x0283DF 0A:83CF: A5 6E     LDA ram_006E_cam_speed
C - - - - - 0x0283E1 0A:83D1: 10 01     BPL bra_83D4
C - - - - - 0x0283E3 0A:83D3: 88        DEY ; FF
bra_83D4:
C - - - - - 0x0283E4 0A:83D4: 84 00     STY ram_0000_temp
C - - - - - 0x0283E6 0A:83D6: A5 68     LDA ram_0068
C - - - - - 0x0283E8 0A:83D8: 30 14     BMI bra_83EE
C - - - - - 0x0283EA 0A:83DA: 38        SEC
C - - - - - 0x0283EB 0A:83DB: BD DA 07  LDA ram_07DA,X
C - - - - - 0x0283EE 0A:83DE: E5 6E     SBC ram_006E_cam_speed
C - - - - - 0x0283F0 0A:83E0: 9D DA 07  STA ram_07DA,X
C - - - - - 0x0283F3 0A:83E3: BD E0 07  LDA ram_07E0,X
C - - - - - 0x0283F6 0A:83E6: E5 00     SBC ram_0000_temp
C - - - - - 0x0283F8 0A:83E8: 29 01     AND #$01
C - - - - - 0x0283FA 0A:83EA: 9D E0 07  STA ram_07E0,X
C - - - - - 0x0283FD 0A:83ED: 60        RTS
bra_83EE:
C - - - - - 0x0283FE 0A:83EE: 18        CLC
C - - - - - 0x0283FF 0A:83EF: BD D4 07  LDA ram_07D4,X
C - - - - - 0x028402 0A:83F2: 65 6E     ADC ram_006E_cam_speed
C - - - - - 0x028404 0A:83F4: 9D D4 07  STA ram_07D4,X
C - - - - - 0x028407 0A:83F7: BD E0 07  LDA ram_07E0,X
C - - - - - 0x02840A 0A:83FA: 65 00     ADC ram_0000_temp
C - - - - - 0x02840C 0A:83FC: 29 01     AND #$01
C - - - - - 0x02840E 0A:83FE: 9D E0 07  STA ram_07E0,X
C - - - - - 0x028411 0A:8401: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028414 0A:8404: F0 05     BEQ bra_840B_RTS
C - - - - - 0x028416 0A:8406: A9 00     LDA #$00
C - - - - - 0x028418 0A:8408: 9D C2 07  STA ram_07C2,X
bra_840B_RTS:
C - - - - - 0x02841B 0A:840B: 60        RTS



tbl_840C:
- D 0 - - - 0x02841C 0A:840C: 00        .byte $00   ; 00 
- D 0 - - - 0x02841D 0A:840D: 01        .byte $01   ; 01 
- D 0 - - - 0x02841E 0A:840E: 02        .byte $02   ; 02 
- D 0 - - - 0x02841F 0A:840F: 03        .byte $03   ; 03 
- D 0 - - - 0x028420 0A:8410: 04        .byte $04   ; 04 
- D 0 - - - 0x028421 0A:8411: 05        .byte $05   ; 05 
- D 0 - - - 0x028422 0A:8412: 00        .byte $00   ; 06 
- D 0 - - - 0x028423 0A:8413: 01        .byte $01   ; 07 
- D 0 - - - 0x028424 0A:8414: 02        .byte $02   ; 08 
- D 0 - - - 0x028425 0A:8415: 03        .byte $03   ; 09 
- D 0 - - - 0x028426 0A:8416: 04        .byte $04   ; 0A 
- D 0 - - - 0x028427 0A:8417: 05        .byte $05   ; 0B 
- D 0 - - - 0x028428 0A:8418: 00        .byte $00   ; 0C 
- D 0 - - - 0x028429 0A:8419: 01        .byte $01   ; 0D 
- D 0 - - - 0x02842A 0A:841A: 02        .byte $02   ; 0E 
- D 0 - - - 0x02842B 0A:841B: 03        .byte $03   ; 0F 
- D 0 - - - 0x02842C 0A:841C: 04        .byte $04   ; 10 
- D 0 - - - 0x02842D 0A:841D: 05        .byte $05   ; 11 
- D 0 - - - 0x02842E 0A:841E: 00        .byte $00   ; 12 
- D 0 - - - 0x02842F 0A:841F: 01        .byte $01   ; 13 
- D 0 - - - 0x028430 0A:8420: 02        .byte $02   ; 14 
- D 0 - - - 0x028431 0A:8421: 03        .byte $03   ; 15 
- D 0 - - - 0x028432 0A:8422: 04        .byte $04   ; 16 
- D 0 - - - 0x028433 0A:8423: 05        .byte $05   ; 17 
- D 0 - - - 0x028434 0A:8424: 00        .byte $00   ; 18 
- D 0 - - - 0x028435 0A:8425: 01        .byte $01   ; 19 
- - - - - - 0x028436 0A:8426: 02        .byte $02   ; 1A 
- - - - - - 0x028437 0A:8427: 03        .byte $03   ; 1B 
- - - - - - 0x028438 0A:8428: 04        .byte $04   ; 1C 
- - - - - - 0x028439 0A:8429: 05        .byte $05   ; 1D 
- - - - - - 0x02843A 0A:842A: 00        .byte $00   ; 1E 
- - - - - - 0x02843B 0A:842B: 01        .byte $01   ; 1F 
- - - - - - 0x02843C 0A:842C: 02        .byte $02   ; 20 
- - - - - - 0x02843D 0A:842D: 03        .byte $03   ; 21 
- - - - - - 0x02843E 0A:842E: 04        .byte $04   ; 22 
- - - - - - 0x02843F 0A:842F: 05        .byte $05   ; 23 
- - - - - - 0x028440 0A:8430: 00        .byte $00   ; 24 
- - - - - - 0x028441 0A:8431: 01        .byte $01   ; 25 
- - - - - - 0x028442 0A:8432: 02        .byte $02   ; 26 
- - - - - - 0x028443 0A:8433: 03        .byte $03   ; 27 
- - - - - - 0x028444 0A:8434: 04        .byte $04   ; 28 
- - - - - - 0x028445 0A:8435: 05        .byte $05   ; 29 
- - - - - - 0x028446 0A:8436: 00        .byte $00   ; 2A 
- - - - - - 0x028447 0A:8437: 01        .byte $01   ; 2B 
- - - - - - 0x028448 0A:8438: 02        .byte $02   ; 2C 
- - - - - - 0x028449 0A:8439: 03        .byte $03   ; 2D 
- - - - - - 0x02844A 0A:843A: 04        .byte $04   ; 2E 
- - - - - - 0x02844B 0A:843B: 05        .byte $05   ; 2F 



sub_843C:
C - - - - - 0x02844C 0A:843C: A4 76     LDY ram_0076
C - - - - - 0x02844E 0A:843E: B9 4D 84  LDA tbl_844D,Y
C - - - - - 0x028451 0A:8441: 85 0F     STA ram_000F_temp
C - - - - - 0x028453 0A:8443: B9 6D 84  LDA tbl_846D,Y
C - - - - - 0x028456 0A:8446: A8        TAY
C - - - - - 0x028457 0A:8447: B9 F0 00  LDA ram_00F0,Y
C - - - - - 0x02845A 0A:844A: 25 0F     AND ram_000F_temp
C - - - - - 0x02845C 0A:844C: 60        RTS



tbl_844D:
- D 0 - - - 0x02845D 0A:844D: 01        .byte $01   ; 00 
- D 0 - - - 0x02845E 0A:844E: 02        .byte $02   ; 01 
- D 0 - - - 0x02845F 0A:844F: 04        .byte $04   ; 02 
- D 0 - - - 0x028460 0A:8450: 08        .byte $08   ; 03 
- D 0 - - - 0x028461 0A:8451: 10        .byte $10   ; 04 
- D 0 - - - 0x028462 0A:8452: 20        .byte $20   ; 05 
- D 0 - - - 0x028463 0A:8453: 40        .byte $40   ; 06 
- D 0 - - - 0x028464 0A:8454: 80        .byte $80   ; 07 
- D 0 - - - 0x028465 0A:8455: 01        .byte $01   ; 08 
- D 0 - - - 0x028466 0A:8456: 02        .byte $02   ; 09 
- D 0 - - - 0x028467 0A:8457: 04        .byte $04   ; 0A 
- D 0 - - - 0x028468 0A:8458: 08        .byte $08   ; 0B 
- D 0 - - - 0x028469 0A:8459: 10        .byte $10   ; 0C 
- D 0 - - - 0x02846A 0A:845A: 20        .byte $20   ; 0D 
- D 0 - - - 0x02846B 0A:845B: 40        .byte $40   ; 0E 
- D 0 - - - 0x02846C 0A:845C: 80        .byte $80   ; 0F 
- D 0 - - - 0x02846D 0A:845D: 01        .byte $01   ; 10 
- D 0 - - - 0x02846E 0A:845E: 02        .byte $02   ; 11 
- D 0 - - - 0x02846F 0A:845F: 04        .byte $04   ; 12 
- D 0 - - - 0x028470 0A:8460: 08        .byte $08   ; 13 
- D 0 - - - 0x028471 0A:8461: 10        .byte $10   ; 14 
- D 0 - - - 0x028472 0A:8462: 20        .byte $20   ; 15 
- D 0 - - - 0x028473 0A:8463: 40        .byte $40   ; 16 
- D 0 - - - 0x028474 0A:8464: 80        .byte $80   ; 17 
- D 0 - - - 0x028475 0A:8465: 01        .byte $01   ; 18 
- D 0 - - - 0x028476 0A:8466: 02        .byte $02   ; 19 
- - - - - - 0x028477 0A:8467: 04        .byte $04   ; 1A 
- - - - - - 0x028478 0A:8468: 08        .byte $08   ; 1B 
- - - - - - 0x028479 0A:8469: 10        .byte $10   ; 1C 
- - - - - - 0x02847A 0A:846A: 20        .byte $20   ; 1D 
- - - - - - 0x02847B 0A:846B: 40        .byte $40   ; 1E 
- - - - - - 0x02847C 0A:846C: 80        .byte $80   ; 1F 



tbl_846D:
- D 0 - - - 0x02847D 0A:846D: 00        .byte $00   ; 00 
- D 0 - - - 0x02847E 0A:846E: 00        .byte $00   ; 01 
- D 0 - - - 0x02847F 0A:846F: 00        .byte $00   ; 02 
- D 0 - - - 0x028480 0A:8470: 00        .byte $00   ; 03 
- D 0 - - - 0x028481 0A:8471: 00        .byte $00   ; 04 
- D 0 - - - 0x028482 0A:8472: 00        .byte $00   ; 05 
- D 0 - - - 0x028483 0A:8473: 00        .byte $00   ; 06 
- D 0 - - - 0x028484 0A:8474: 00        .byte $00   ; 07 
- D 0 - - - 0x028485 0A:8475: 01        .byte $01   ; 08 
- D 0 - - - 0x028486 0A:8476: 01        .byte $01   ; 09 
- D 0 - - - 0x028487 0A:8477: 01        .byte $01   ; 0A 
- D 0 - - - 0x028488 0A:8478: 01        .byte $01   ; 0B 
- D 0 - - - 0x028489 0A:8479: 01        .byte $01   ; 0C 
- D 0 - - - 0x02848A 0A:847A: 01        .byte $01   ; 0D 
- D 0 - - - 0x02848B 0A:847B: 01        .byte $01   ; 0E 
- D 0 - - - 0x02848C 0A:847C: 01        .byte $01   ; 0F 
- D 0 - - - 0x02848D 0A:847D: 02        .byte $02   ; 10 
- D 0 - - - 0x02848E 0A:847E: 02        .byte $02   ; 11 
- D 0 - - - 0x02848F 0A:847F: 02        .byte $02   ; 12 
- D 0 - - - 0x028490 0A:8480: 02        .byte $02   ; 13 
- D 0 - - - 0x028491 0A:8481: 02        .byte $02   ; 14 
- D 0 - - - 0x028492 0A:8482: 02        .byte $02   ; 15 
- D 0 - - - 0x028493 0A:8483: 02        .byte $02   ; 16 
- D 0 - - - 0x028494 0A:8484: 02        .byte $02   ; 17 
- D 0 - - - 0x028495 0A:8485: 03        .byte $03   ; 18 
- D 0 - - - 0x028496 0A:8486: 03        .byte $03   ; 19 
- - - - - - 0x028497 0A:8487: 03        .byte $03   ; 1A 
- - - - - - 0x028498 0A:8488: 03        .byte $03   ; 1B 
- - - - - - 0x028499 0A:8489: 03        .byte $03   ; 1C 
- - - - - - 0x02849A 0A:848A: 03        .byte $03   ; 1D 
- - - - - - 0x02849B 0A:848B: 03        .byte $03   ; 1E 
- - - - - - 0x02849C 0A:848C: 03        .byte $03   ; 1F 



sub_848D:
C - - - - - 0x02849D 0A:848D: A5 32     LDA ram_blk_hi
C - - - - - 0x02849F 0A:848F: C9 0E     CMP #$0E
C - - - - - 0x0284A1 0A:8491: D0 0A     BNE bra_849D_RTS
C - - - - - 0x0284A3 0A:8493: A5 33     LDA ram_blk_lo
C - - - - - 0x0284A5 0A:8495: C9 01     CMP #$01
C - - - - - 0x0284A7 0A:8497: D0 04     BNE bra_849D_RTS
C - - - - - 0x0284A9 0A:8499: A5 34     LDA ram_blk_fr
C - - - - - 0x0284AB 0A:849B: C9 01     CMP #$01
bra_849D_RTS:
C - - - - - 0x0284AD 0A:849D: 60        RTS



sub_0x0284AE:
C - - - - - 0x0284AE 0A:849E: A2 01     LDX #$01
bra_84A0_loop:
C - - - - - 0x0284B0 0A:84A0: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0284B3 0A:84A3: C9 93     CMP #$93
C - - - - - 0x0284B5 0A:84A5: 90 19     BCC bra_84C0
C - - - - - 0x0284B7 0A:84A7: F0 27     BEQ bra_84D0
C - - - - - 0x0284B9 0A:84A9: C9 95     CMP #$95
C - - - - - 0x0284BB 0A:84AB: F0 23     BEQ bra_84D0
C - - - - - 0x0284BD 0A:84AD: C9 97     CMP #$97
C - - - - - 0x0284BF 0A:84AF: F0 0F     BEQ bra_84C0
C - - - - - 0x0284C1 0A:84B1: C9 AF     CMP #$AF
C - - - - - 0x0284C3 0A:84B3: F0 08     BEQ bra_84BD
C - - - - - 0x0284C5 0A:84B5: C9 B0     CMP #$B0
C - - - - - 0x0284C7 0A:84B7: F0 04     BEQ bra_84BD
C - - - - - 0x0284C9 0A:84B9: C9 9F     CMP #$9F
C - - - - - 0x0284CB 0A:84BB: B0 03     BCS bra_84C0
bra_84BD:
C - - - - - 0x0284CD 0A:84BD: 20 D8 84  JSR sub_84D8
bra_84C0:
C - - - - - 0x0284D0 0A:84C0: E8        INX
C - - - - - 0x0284D1 0A:84C1: E0 13     CPX #$13
C - - - - - 0x0284D3 0A:84C3: 90 DB     BCC bra_84A0_loop
C - - - - - 0x0284D5 0A:84C5: A2 14     LDX #$14
bra_84C7_loop:
C - - - - - 0x0284D7 0A:84C7: 20 D8 84  JSR sub_84D8
C - - - - - 0x0284DA 0A:84CA: E8        INX
C - - - - - 0x0284DB 0A:84CB: E0 17     CPX #$17
C - - - - - 0x0284DD 0A:84CD: 90 F8     BCC bra_84C7_loop
C - - - - - 0x0284DF 0A:84CF: 60        RTS
bra_84D0:
C - - - - - 0x0284E0 0A:84D0: A5 3A     LDA ram_partner
C - - - - - 0x0284E2 0A:84D2: C9 02     CMP #con_player_Grant
C - - - - - 0x0284E4 0A:84D4: D0 E7     BNE bra_84BD
- - - - - - 0x0284E6 0A:84D6: F0 E8     BEQ bra_84C0    ; jmp



sub_84D8:
C - - - - - 0x0284E8 0A:84D8: A9 00     LDA #$00
C - - - - - 0x0284EA 0A:84DA: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0284ED 0A:84DD: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x0284F0 0A:84E0: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x0284F3 0A:84E3: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0284F6 0A:84E6: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0284F9 0A:84E9: 60        RTS



sub_0x0284FA:
C - - - - - 0x0284FA 0A:84EA: A2 00     LDX #$00
bra_84EC_loop:
C - - - - - 0x0284FC 0A:84EC: BD C2 07  LDA ram_07C2,X
C - - - - - 0x0284FF 0A:84EF: F0 0E     BEQ bra_84FF
C - - - - - 0x028501 0A:84F1: 86 6C     STX ram_006C_object_index
C - - - - - 0x028503 0A:84F3: A5 B2     LDA ram_00B2
C - - - - - 0x028505 0A:84F5: D0 05     BNE bra_84FC
C - - - - - 0x028507 0A:84F7: 20 05 85  JSR sub_8505
C - - - - - 0x02850A 0A:84FA: A6 6C     LDX ram_006C_object_index
bra_84FC:
C - - - - - 0x02850C 0A:84FC: 20 CD 83  JSR sub_83CD
bra_84FF:
C - - - - - 0x02850F 0A:84FF: E8        INX
C - - - - - 0x028510 0A:8500: E0 06     CPX #$06
C - - - - - 0x028512 0A:8502: 90 E8     BCC bra_84EC_loop
C - - - - - 0x028514 0A:8504: 60        RTS



sub_8505:
C - - - - - 0x028515 0A:8505: BD C2 07  LDA ram_07C2,X
C - - - - - 0x028518 0A:8508: 0A        ASL
C - - - - - 0x028519 0A:8509: A8        TAY
C - - - - - 0x02851A 0A:850A: B9 27 85  LDA tbl_8527,Y
C - - - - - 0x02851D 0A:850D: 85 00     STA ram_0000_t005_data
C - - - - - 0x02851F 0A:850F: B9 28 85  LDA tbl_8527 + $01,Y
C - - - - - 0x028522 0A:8512: 85 01     STA ram_0000_t005_data + $01
C - - - - - 0x028524 0A:8514: BD C8 07  LDA ram_07C8,X
C - - - - - 0x028527 0A:8517: 29 0F     AND #$0F
C - - - - - 0x028529 0A:8519: 0A        ASL
C - - - - - 0x02852A 0A:851A: A8        TAY
C - - - - - 0x02852B 0A:851B: B1 00     LDA (ram_0000_t005_data),Y
C - - - - - 0x02852D 0A:851D: 85 02     STA ram_0002_t00D_jmp
C - - - - - 0x02852F 0A:851F: C8        INY
C - - - - - 0x028530 0A:8520: B1 00     LDA (ram_0000_t005_data),Y
C - - - - - 0x028532 0A:8522: 85 03     STA ram_0002_t00D_jmp + $01
C - - - - - 0x028534 0A:8524: 6C 02 00  JMP (ram_0002_t00D_jmp)



tbl_8527:
- - - - - - 0x028537 0A:8527: D3 85     .word _off033_85D3_00
- D 0 - - - 0x028539 0A:8529: D7 85     .word _off033_85D7_01
- D 0 - - - 0x02853B 0A:852B: 29 86     .word _off033_8629_02
- D 0 - - - 0x02853D 0A:852D: 78 88     .word _off033_8878_03
- D 0 - - - 0x02853F 0A:852F: 13 8A     .word _off033_8A13_04
- D 0 - - - 0x028541 0A:8531: D1 8E     .word _off033_8ED1_05
- D 0 - - - 0x028543 0A:8533: D1 8E     .word _off033_8ED1_06
- D 0 - - - 0x028545 0A:8535: D1 8E     .word _off033_8ED1_07
- D 0 - - - 0x028547 0A:8537: AF 91     .word _off033_91AF_08
- D 0 - - - 0x028549 0A:8539: AB 91     .word _off033_91AB_09
- D 0 - - - 0x02854B 0A:853B: 1D 92     .word _off033_921D_0A
- D 0 - - - 0x02854D 0A:853D: 61 8B     .word _off033_8B61_0B
- D 0 - - - 0x02854F 0A:853F: 70 89     .word _off033_8970_0C
- D 0 - - - 0x028551 0A:8541: B2 8C     .word _off033_8CB2_0D
- D 0 - - - 0x028553 0A:8543: 76 8C     .word _off033_8C76_0E
- D 0 - - - 0x028555 0A:8545: 2C 8B     .word _off033_8B2C_0F
- D 0 - - - 0x028557 0A:8547: F9 8B     .word _off033_8BF9_10
- D 0 - - - 0x028559 0A:8549: 16 8B     .word _off033_8B16_11
- D 0 - - - 0x02855B 0A:854B: BF 86     .word _off033_86BF_12
- D 0 - - - 0x02855D 0A:854D: AB 8B     .word _off033_8BAB_13
- D 0 - - - 0x02855F 0A:854F: F9 8B     .word _off033_8BF9_14
- D 0 - - - 0x028561 0A:8551: AB 8B     .word _off033_8BAB_15
- D 0 - - - 0x028563 0A:8553: AB 8B     .word _off033_8BAB_16
- D 0 - - - 0x028565 0A:8555: AB 8B     .word _off033_8BAB_17
- D 0 - - - 0x028567 0A:8557: AD 8A     .word _off033_8AAD_18
- D 0 - - - 0x028569 0A:8559: AB 8B     .word _off033_8BAB_19
- D 0 - - - 0x02856B 0A:855B: 5F 8A     .word _off033_8A5F_1A
- D 0 - - - 0x02856D 0A:855D: D1 8E     .word _off033_8ED1_1B
- D 0 - - - 0x02856F 0A:855F: 4A 91     .word _off033_914A_1C
- D 0 - - - 0x028571 0A:8561: FC 8F     .word _off033_8FFC_1D
- D 0 - - - 0x028573 0A:8563: DD 90     .word _off033_90DD_1E
- D 0 - - - 0x028575 0A:8565: A0 90     .word _off033_90A0_1F
- D 0 - - - 0x028577 0A:8567: D1 8E     .word _off033_8ED1_20
- D 0 - - - 0x028579 0A:8569: D1 8E     .word _off033_8ED1_21
- - - - - - 0x02857B 0A:856B: D1 8E     .word _off033_8ED1_22
- D 0 - - - 0x02857D 0A:856D: D1 8E     .word _off033_8ED1_23
- D 0 - - - 0x02857F 0A:856F: D1 8E     .word _off033_8ED1_24
- D 0 - - - 0x028581 0A:8571: D1 8E     .word _off033_8ED1_25
- D 0 - - - 0x028583 0A:8573: D1 8E     .word _off033_8ED1_26
- D 0 - - - 0x028585 0A:8575: F9 8B     .word _off033_8BF9_27
- D 0 - - - 0x028587 0A:8577: AB 8B     .word _off033_8BAB_28
- D 0 - - - 0x028589 0A:8579: 0F 8C     .word _off033_8C0F_29
- D 0 - - - 0x02858B 0A:857B: 9C 8C     .word _off033_8C9C_2A
- - - - - - 0x02858D 0A:857D: 70 89     .word _off033_8970_2B
- - - - - - 0x02858F 0A:857F: EF 8A     .word _off033_8AEF_2C
- D 0 - - - 0x028591 0A:8581: 48 89     .word _off033_8948_2D
- D 0 - - - 0x028593 0A:8583: 65 8C     .word _off033_8C65_2E
- - - - - - 0x028595 0A:8585: D3 85     .word _off033_85D3_2F
- - - - - - 0x028597 0A:8587: D3 85     .word _off033_85D3_30
- - - - - - 0x028599 0A:8589: D3 85     .word _off033_85D3_31
- D 0 - - - 0x02859B 0A:858B: AB 8B     .word _off033_8BAB_32
- - - - - - 0x02859D 0A:858D: D3 85     .word _off033_85D3_33
- - - - - - 0x02859F 0A:858F: D3 85     .word _off033_85D3_34
- - - - - - 0x0285A1 0A:8591: D3 85     .word _off033_85D3_35
- D 0 - - - 0x0285A3 0A:8593: 93 8D     .word _off033_8D93_36
- - - - - - 0x0285A5 0A:8595: D3 85     .word _off033_85D3_37
- - - - - - 0x0285A7 0A:8597: D3 85     .word _off033_85D3_38
- D 0 - - - 0x0285A9 0A:8599: 93 8D     .word _off033_8D93_39
- D 0 - - - 0x0285AB 0A:859B: 52 86     .word _off033_8652_3A
- D 0 - - - 0x0285AD 0A:859D: BC 87     .word _off033_87BC_3B
- D 0 - - - 0x0285AF 0A:859F: 69 87     .word _off033_8769_3C
- D 0 - - - 0x0285B1 0A:85A1: B3 86     .word _off033_86B3_3D
- D 0 - - - 0x0285B3 0A:85A3: B9 86     .word _off033_86B9_3E
- D 0 - - - 0x0285B5 0A:85A5: AB 8B     .word _off033_8BAB_3F
- D 0 - - - 0x0285B7 0A:85A7: 61 8B     .word _off033_8B61_40
- D 0 - - - 0x0285B9 0A:85A9: 76 8C     .word _off033_8C76_41
- D 0 - - - 0x0285BB 0A:85AB: C5 8D     .word _off033_8DC5_42
- D 0 - - - 0x0285BD 0A:85AD: D3 8C     .word _off033_8CD3_43
- D 0 - - - 0x0285BF 0A:85AF: D8 8A     .word _off033_8AD8_44
- D 0 - - - 0x0285C1 0A:85B1: EF 8A     .word _off033_8AEF_45
- D 0 - - - 0x0285C3 0A:85B3: D0 88     .word _off033_88D0_46
- D 0 - - - 0x0285C5 0A:85B5: 70 89     .word _off033_8970_47
- D 0 - - - 0x0285C7 0A:85B7: 2A 88     .word _off033_882A_48
- D 0 - - - 0x0285C9 0A:85B9: 4D 8B     .word _off033_8B4D_49
- D 0 - - - 0x0285CB 0A:85BB: 0F 88     .word _off033_880F_4A
- D 0 - - - 0x0285CD 0A:85BD: A5 8A     .word _off033_8AA5_4B
- D 0 - - - 0x0285CF 0A:85BF: C5 8D     .word _off033_8DC5_4C
- D 0 - - - 0x0285D1 0A:85C1: 93 8D     .word _off033_8D93_4D
- D 0 - - - 0x0285D3 0A:85C3: 93 8D     .word _off033_8D93_4E
- D 0 - - - 0x0285D5 0A:85C5: 7C 86     .word _off033_867C_4F
- D 0 - - - 0x0285D7 0A:85C7: 5F 8A     .word _off033_8A5F_50
- D 0 - - - 0x0285D9 0A:85C9: 19 87     .word _off033_8719_51
- D 0 - - - 0x0285DB 0A:85CB: 09 8A     .word _off033_8A09_52


; bzk garbage
- - - - - - 0x0285DD 0A:85CD: 60        RTS


; bzk garbage
- - - - - - 0x0285DE 0A:85CE: 19        .byte $19   ; 
- - - - - - 0x0285DF 0A:85CF: 00        .byte $00   ; 
- - - - - - 0x0285E0 0A:85D0: 00        .byte $00   ; 
- - - - - - 0x0285E1 0A:85D1: 00        .byte $00   ; 



ofs_040_00_85D2_00_RTS:
ofs_040_00_85D2_01_RTS:
- - - - - - 0x0285E2 0A:85D2: 60        RTS



_off033_85D3_00:
_off033_85D3_2F:
_off033_85D3_30:
_off033_85D3_31:
_off033_85D3_33:
_off033_85D3_34:
_off033_85D3_35:
_off033_85D3_37:
_off033_85D3_38:
- - - - - - 0x0285E3 0A:85D3: D2 85     .word ofs_040_00_85D2_00_RTS
- - - - - - 0x0285E5 0A:85D5: D2 85     .word ofs_040_00_85D2_01_RTS



_off033_85D7_01:
- D 0 - I - 0x0285E7 0A:85D7: DB 85     .word ofs_040_01_85DB_00
- D 0 - I - 0x0285E9 0A:85D9: E6 85     .word ofs_040_01_85E6_01



ofs_040_01_85DB_00:
C - - J - - 0x0285EB 0A:85DB: 20 EB 85  JSR sub_85EB
loc_85DE:
sub_85DE:
C D 0 - - - 0x0285EE 0A:85DE: A6 6C     LDX ram_006C_object_index
C - - - - - 0x0285F0 0A:85E0: FE C8 07  INC ram_07C8,X
bra_85E3_RTS:
C - - - - - 0x0285F3 0A:85E3: 60        RTS



tbl_85E4:
- D 0 - - - 0x0285F4 0A:85E4: 08        .byte $08   ; 00 
- D 0 - - - 0x0285F5 0A:85E5: F8        .byte $F8   ; 01 



ofs_040_01_85E6_01:
C - - J - - 0x0285F6 0A:85E6: DE CE 07  DEC ram_07CE,X
C - - - - - 0x0285F9 0A:85E9: D0 F8     BNE bra_85E3_RTS
sub_85EB:
C - - - - - 0x0285FB 0A:85EB: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x0285FE 0A:85EE: 20 73 8D  JSR sub_8D73
C - - - - - 0x028601 0A:85F1: D0 2E     BNE bra_8621
C - - - - - 0x028603 0A:85F3: 20 B3 89  JSR sub_89B3
C - - - - - 0x028606 0A:85F6: B9 E4 85  LDA tbl_85E4,Y
C - - - - - 0x028609 0A:85F9: 85 00     STA ram_0000_temp
C - - - - - 0x02860B 0A:85FB: A9 B0     LDA #$B0
C - - - - - 0x02860D 0A:85FD: 85 01     STA ram_0001_temp
C - - - - - 0x02860F 0A:85FF: 20 DE 8D  JSR sub_8DDE
C - - - - - 0x028612 0A:8602: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x028615 0A:8605: 85 08     STA ram_0008_temp
C - - - - - 0x028617 0A:8607: 8A        TXA
C - - - - - 0x028618 0A:8608: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02861A 0A:860A: 9D E6 07  STA ram_07E6,X
C - - - - - 0x02861D 0A:860D: A0 A4     LDY #$A4
C - - - - - 0x02861F 0A:860F: A5 08     LDA ram_0008_temp
C - - - - - 0x028621 0A:8611: 20 16 FC  JSR sub_0x03FC26
C - - - - - 0x028624 0A:8614: F0 0B     BEQ bra_8621
C - - - - - 0x028626 0A:8616: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028628 0A:8618: BD E6 07  LDA ram_07E6,X
C - - - - - 0x02862B 0A:861B: AA        TAX
C - - - - - 0x02862C 0A:861C: A9 90     LDA #$90
C - - - - - 0x02862E 0A:861E: 9D 1C 04  STA ram_obj_pos_Y_hi,X
bra_8621:
C - - - - - 0x028631 0A:8621: A9 81     LDA #$81
loc_8623:
C D 0 - - - 0x028633 0A:8623: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028635 0A:8625: 9D CE 07  STA ram_07CE,X
bra_8628_RTS:
C - - - - - 0x028638 0A:8628: 60        RTS



_off033_8629_02:
- D 0 - I - 0x028639 0A:8629: 2D 86     .word ofs_040_02_862D_00
- D 0 - I - 0x02863B 0A:862B: 4B 86     .word ofs_040_02_864B_01



ofs_040_02_862D_00:
C - - J - - 0x02863D 0A:862D: FE C8 07  INC ram_07C8,X
bra_8630:
C - - - - - 0x028640 0A:8630: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028643 0A:8633: 20 73 8D  JSR sub_8D73
C - - - - - 0x028646 0A:8636: D0 0B     BNE bra_8643
C - - - - - 0x028648 0A:8638: 20 DE 8D  JSR sub_8DDE
C - - - - - 0x02864B 0A:863B: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02864E 0A:863E: 09 20     ORA #con_obj_flag_20
C - - - - - 0x028650 0A:8640: 9D 70 04  STA ram_obj_flags,X
bra_8643:
C - - - - - 0x028653 0A:8643: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028655 0A:8645: A9 81     LDA #$81
C - - - - - 0x028657 0A:8647: 9D CE 07  STA ram_07CE,X
bra_864A_RTS:
C - - - - - 0x02865A 0A:864A: 60        RTS



ofs_040_02_864B_01:
C - - J - - 0x02865B 0A:864B: DE CE 07  DEC ram_07CE,X
C - - - - - 0x02865E 0A:864E: D0 D8     BNE bra_8628_RTS
C - - - - - 0x028660 0A:8650: F0 DE     BEQ bra_8630    ; jmp



_off033_8652_3A:
- D 0 - I - 0x028662 0A:8652: 56 86     .word ofs_040_3A_8656_00
- D 0 - I - 0x028664 0A:8654: 5C 86     .word ofs_040_3A_865C_01



ofs_040_3A_8656_00:
C - - J - - 0x028666 0A:8656: 20 61 86  JSR sub_8661
C - - - - - 0x028669 0A:8659: 4C DE 85  JMP loc_85DE



ofs_040_3A_865C_01:
C - - J - - 0x02866C 0A:865C: DE CE 07  DEC ram_07CE,X
C - - - - - 0x02866F 0A:865F: D0 E9     BNE bra_864A_RTS
sub_8661:
C - - - - - 0x028671 0A:8661: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028674 0A:8664: 20 73 8D  JSR sub_8D73
C - - - - - 0x028677 0A:8667: D0 0B     BNE bra_8674
C - - - - - 0x028679 0A:8669: 20 B7 89  JSR sub_89B7
C - - - - - 0x02867C 0A:866C: B9 E4 85  LDA tbl_85E4,Y
C - - - - - 0x02867F 0A:866F: 85 00     STA ram_0000_temp
C - - - - - 0x028681 0A:8671: 20 DE 8D  JSR sub_8DDE
bra_8674:
C - - - - - 0x028684 0A:8674: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028686 0A:8676: A9 47     LDA #$47
C - - - - - 0x028688 0A:8678: 9D CE 07  STA ram_07CE,X
C - - - - - 0x02868B 0A:867B: 60        RTS



_off033_867C_4F:
- D 0 - I - 0x02868C 0A:867C: 80 86     .word ofs_040_4F_8680_00
- D 0 - I - 0x02868E 0A:867E: 86 86     .word ofs_040_4F_8686_01



ofs_040_4F_8680_00:
C - - J - - 0x028690 0A:8680: 20 8B 86  JSR sub_868B
C - - - - - 0x028693 0A:8683: 4C DE 85  JMP loc_85DE



ofs_040_4F_8686_01:
C - - J - - 0x028696 0A:8686: DE CE 07  DEC ram_07CE,X
C - - - - - 0x028699 0A:8689: D0 27     BNE bra_86B2_RTS
sub_868B:
C - - - - - 0x02869B 0A:868B: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x02869E 0A:868E: 20 73 8D  JSR sub_8D73
C - - - - - 0x0286A1 0A:8691: D0 18     BNE bra_86AB
C - - - - - 0x0286A3 0A:8693: 20 B3 89  JSR sub_89B3
C - - - - - 0x0286A6 0A:8696: B9 E4 85  LDA tbl_85E4,Y
C - - - - - 0x0286A9 0A:8699: 85 00     STA ram_0000_temp
C - - - - - 0x0286AB 0A:869B: AD F6 07  LDA ram_quest
C - - - - - 0x0286AE 0A:869E: F0 08     BEQ bra_86A8_1st_quest
C - - - - - 0x0286B0 0A:86A0: A9 70     LDA #$70
C - - - - - 0x0286B2 0A:86A2: 85 02     STA ram_0002_temp
C - - - - - 0x0286B4 0A:86A4: A9 66     LDA #$66
C - - - - - 0x0286B6 0A:86A6: 85 03     STA ram_0003_temp
bra_86A8_1st_quest:
C - - - - - 0x0286B8 0A:86A8: 20 DE 8D  JSR sub_8DDE
bra_86AB:
C - - - - - 0x0286BB 0A:86AB: A6 6C     LDX ram_006C_object_index
C - - - - - 0x0286BD 0A:86AD: A9 41     LDA #$41
C - - - - - 0x0286BF 0A:86AF: 9D CE 07  STA ram_07CE,X
bra_86B2_RTS:
C - - - - - 0x0286C2 0A:86B2: 60        RTS



_off033_86B3_3D:
- D 0 - I - 0x0286C3 0A:86B3: C3 86     .word ofs_040_3D_86C3_00
- D 0 - I - 0x0286C5 0A:86B5: FD 86     .word ofs_040_3D_86FD_01
- D 0 - I - 0x0286C7 0A:86B7: 0E 87     .word ofs_040_3D_870E_02



_off033_86B9_3E:
- D 0 - I - 0x0286C9 0A:86B9: C9 86     .word ofs_040_3E_86C9_00
- D 0 - I - 0x0286CB 0A:86BB: FD 86     .word ofs_040_3E_86FD_01
- D 0 - I - 0x0286CD 0A:86BD: 0E 87     .word ofs_040_3E_870E_02



_off033_86BF_12:
- D 0 - I - 0x0286CF 0A:86BF: C9 86     .word ofs_040_12_86C9_00
- D 0 - I - 0x0286D1 0A:86C1: EF 86     .word ofs_040_12_86EF_01



ofs_040_3D_86C3_00:
C - - J - - 0x0286D3 0A:86C3: A5 2A     LDA ram_002A_script
C - - - - - 0x0286D5 0A:86C5: C9 1B     CMP #con_002A_1B
C - - - - - 0x0286D7 0A:86C7: F0 25     BEQ bra_86EE_RTS
ofs_040_12_86C9_00:
ofs_040_3E_86C9_00:
C - - - - - 0x0286D9 0A:86C9: BD E0 07  LDA ram_07E0,X
C - - - - - 0x0286DC 0A:86CC: D0 20     BNE bra_86EE_RTS
C - - - - - 0x0286DE 0A:86CE: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x0286E1 0A:86D1: 20 54 8E  JSR sub_8E54
C - - - - - 0x0286E4 0A:86D4: D0 18     BNE bra_86EE_RTS
C - - - - - 0x0286E6 0A:86D6: 8A        TXA
C - - - - - 0x0286E7 0A:86D7: 65 1A     ADC ram_frm_cnt
C - - - - - 0x0286E9 0A:86D9: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x0286EC 0A:86DC: 29 01     AND #$01
C - - - - - 0x0286EE 0A:86DE: A8        TAY
C - - - - - 0x0286EF 0A:86DF: B9 E4 85  LDA tbl_85E4,Y
C - - - - - 0x0286F2 0A:86E2: 85 00     STA ram_0000_temp
loc_86E4:
C D 0 - - - 0x0286F4 0A:86E4: 20 DE 8D  JSR sub_8DDE
loc_86E7:
C D 0 - - - 0x0286F7 0A:86E7: 8A        TXA
C - - - - - 0x0286F8 0A:86E8: 20 DE 85  JSR sub_85DE
C - - - - - 0x0286FB 0A:86EB: 9D E6 07  STA ram_07E6,X
bra_86EE_RTS:
C - - - - - 0x0286FE 0A:86EE: 60        RTS



ofs_040_12_86EF_01:
ofs_040_3C_86EF_02:
C - - J - - 0x0286FF 0A:86EF: BC E6 07  LDY ram_07E6,X
C - - - - - 0x028702 0A:86F2: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x028705 0A:86F5: D0 F7     BNE bra_86EE_RTS
C - - - - - 0x028707 0A:86F7: A9 00     LDA #$00
C - - - - - 0x028709 0A:86F9: 9D C8 07  STA ram_07C8,X
C - - - - - 0x02870C 0A:86FC: 60        RTS



ofs_040_3D_86FD_01:
ofs_040_3E_86FD_01:
C - - J - - 0x02870D 0A:86FD: BC E6 07  LDY ram_07E6,X
C - - - - - 0x028710 0A:8700: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x028713 0A:8703: D0 E9     BNE bra_86EE_RTS
C - - - - - 0x028715 0A:8705: A9 40     LDA #$40
loc_8707:
C D 0 - - - 0x028717 0A:8707: 9D CE 07  STA ram_07CE,X
C - - - - - 0x02871A 0A:870A: FE C8 07  INC ram_07C8,X
C - - - - - 0x02871D 0A:870D: 60        RTS



ofs_040_3D_870E_02:
ofs_040_3E_870E_02:
ofs_040_51_870E_02:
C - - J - - 0x02871E 0A:870E: DE CE 07  DEC ram_07CE,X
C - - - - - 0x028721 0A:8711: D0 DB     BNE bra_86EE_RTS
C - - - - - 0x028723 0A:8713: A9 00     LDA #$00
C - - - - - 0x028725 0A:8715: 9D C8 07  STA ram_07C8,X
C - - - - - 0x028728 0A:8718: 60        RTS



_off033_8719_51:
- D 0 - I - 0x028729 0A:8719: 1F 87     .word ofs_040_51_871F_00
- D 0 - I - 0x02872B 0A:871B: 5C 87     .word ofs_040_51_875C_01
- D 0 - I - 0x02872D 0A:871D: 0E 87     .word ofs_040_51_870E_02



ofs_040_51_871F_00:
C - - J - - 0x02872F 0A:871F: A5 CA     LDA ram_00CA
C - - - - - 0x028731 0A:8721: C9 80     CMP #$80
C - - - - - 0x028733 0A:8723: 90 24     BCC bra_8749_RTS
C - - - - - 0x028735 0A:8725: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028738 0A:8728: 20 73 8D  JSR sub_8D73
C - - - - - 0x02873B 0A:872B: D0 1C     BNE bra_8749_RTS
C - - - - - 0x02873D 0A:872D: AC A8 04  LDY ram_plr_facing
C - - - - - 0x028740 0A:8730: A5 1F     LDA ram_random
C - - - - - 0x028742 0A:8732: 29 07     AND #$07
C - - - - - 0x028744 0A:8734: 18        CLC
C - - - - - 0x028745 0A:8735: 79 5A 87  ADC tbl_875A_offset,Y
C - - - - - 0x028748 0A:8738: A8        TAY
C - - - - - 0x028749 0A:8739: 18        CLC
C - - - - - 0x02874A 0A:873A: B9 4A 87  LDA tbl_874A_pos_X_hi,Y
C - - - - - 0x02874D 0A:873D: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x028750 0A:8740: 85 00     STA ram_0000_temp
C - - - - - 0x028752 0A:8742: A5 CA     LDA ram_00CA
C - - - - - 0x028754 0A:8744: 85 01     STA ram_0001_temp
C - - - - - 0x028756 0A:8746: 4C E4 86  JMP loc_86E4
bra_8749_RTS:
C - - - - - 0x028759 0A:8749: 60        RTS



tbl_874A_pos_X_hi:
; index at 0x02876A
; 00 facing right
- D 0 - - - 0x02875A 0A:874A: 50        .byte $50   ; 00 
- D 0 - - - 0x02875B 0A:874B: 60        .byte $60   ; 01 
- D 0 - - - 0x02875C 0A:874C: C0        .byte $C0   ; 02 
- D 0 - - - 0x02875D 0A:874D: 48        .byte $48   ; 03 
- D 0 - - - 0x02875E 0A:874E: 4C        .byte $4C   ; 04 
- D 0 - - - 0x02875F 0A:874F: 62        .byte $62   ; 05 
- D 0 - - - 0x028760 0A:8750: 54        .byte $54   ; 06 
- D 0 - - - 0x028761 0A:8751: 48        .byte $48   ; 07 
; 01 facing left
- D 0 - - - 0x028762 0A:8752: B0        .byte $B0   ; 00 
- D 0 - - - 0x028763 0A:8753: A0        .byte $A0   ; 01 
- D 0 - - - 0x028764 0A:8754: A8        .byte $A8   ; 02 
- D 0 - - - 0x028765 0A:8755: C0        .byte $C0   ; 03 
- D 0 - - - 0x028766 0A:8756: 40        .byte $40   ; 04 
- D 0 - - - 0x028767 0A:8757: B8        .byte $B8   ; 05 
- D 0 - - - 0x028768 0A:8758: B0        .byte $B0   ; 06 
- D 0 - - - 0x028769 0A:8759: C0        .byte $C0   ; 07 



tbl_875A_offset:
; index for 0x02875A
- D 0 - - - 0x02876A 0A:875A: 00        .byte $00   ; 00 facing right
- D 0 - - - 0x02876B 0A:875B: 08        .byte $08   ; 01 facing left



ofs_040_51_875C_01:
C - - J - - 0x02876C 0A:875C: BC E6 07  LDY ram_07E6,X
C - - - - - 0x02876F 0A:875F: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x028772 0A:8762: D0 8A     BNE bra_86EE_RTS
C - - - - - 0x028774 0A:8764: A9 81     LDA #$81
C - - - - - 0x028776 0A:8766: 4C 07 87  JMP loc_8707



_off033_8769_3C:
- D 0 - I - 0x028779 0A:8769: 6F 87     .word ofs_040_3C_876F_00
- D 0 - I - 0x02877B 0A:876B: 87 87     .word ofs_040_3C_8787_01
- D 0 - I - 0x02877D 0A:876D: EF 86     .word ofs_040_3C_86EF_02



ofs_040_3C_876F_00:
C - - J - - 0x02877F 0A:876F: 20 DE 85  JSR sub_85DE
bra_8772:
C - - - - - 0x028782 0A:8772: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028784 0A:8774: A5 1A     LDA ram_frm_cnt
C - - - - - 0x028786 0A:8776: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x028789 0A:8779: 29 03     AND #$03
C - - - - - 0x02878B 0A:877B: A8        TAY
C - - - - - 0x02878C 0A:877C: B9 83 87  LDA tbl_8783,Y
C - - - - - 0x02878F 0A:877F: 9D CE 07  STA ram_07CE,X
C - - - - - 0x028792 0A:8782: 60        RTS



tbl_8783:
- D 0 - - - 0x028793 0A:8783: 08        .byte $08   ; 00 
- D 0 - - - 0x028794 0A:8784: 38        .byte $38   ; 01 
- D 0 - - - 0x028795 0A:8785: 18        .byte $18   ; 02 
- D 0 - - - 0x028796 0A:8786: 28        .byte $28   ; 03 



ofs_040_3C_8787_01:
C - - J - - 0x028797 0A:8787: DE CE 07  DEC ram_07CE,X
C - - - - - 0x02879A 0A:878A: D0 70     BNE bra_87FC_RTS
C - - - - - 0x02879C 0A:878C: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x02879F 0A:878F: 20 83 83  JSR sub_8383_find_empty_object_slot_01_03
C - - - - - 0x0287A2 0A:8792: D0 DE     BNE bra_8772
C - - - - - 0x0287A4 0A:8794: 8A        TXA
C - - - - - 0x0287A5 0A:8795: 65 1A     ADC ram_frm_cnt
C - - - - - 0x0287A7 0A:8797: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x0287AA 0A:879A: 29 03     AND #$03
C - - - - - 0x0287AC 0A:879C: 18        CLC
C - - - - - 0x0287AD 0A:879D: AC A8 04  LDY ram_plr_facing
C - - - - - 0x0287B0 0A:87A0: 79 BA 87  ADC tbl_87BA_offset,Y
C - - - - - 0x0287B3 0A:87A3: A8        TAY
C - - - - - 0x0287B4 0A:87A4: B9 B2 87  LDA tbl_87B2_pos_X_hi,Y
C - - - - - 0x0287B7 0A:87A7: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x0287BA 0A:87AA: 85 00     STA ram_0000_temp
C - - - - - 0x0287BC 0A:87AC: 20 DE 8D  JSR sub_8DDE
C - - - - - 0x0287BF 0A:87AF: 4C E7 86  JMP loc_86E7



tbl_87B2_pos_X_hi:
; index at 0x0287CA
; 00 facing right
- D 0 - - - 0x0287C2 0A:87B2: 68        .byte $68   ; 00 
- D 0 - - - 0x0287C3 0A:87B3: 58        .byte $58   ; 01 
- D 0 - - - 0x0287C4 0A:87B4: 60        .byte $60   ; 02 
- D 0 - - - 0x0287C5 0A:87B5: C8        .byte $C8   ; 03 
; 01 facing left
- D 0 - - - 0x0287C6 0A:87B6: D0        .byte $D0   ; 00 
- D 0 - - - 0x0287C7 0A:87B7: 68        .byte $68   ; 01 
- D 0 - - - 0x0287C8 0A:87B8: C0        .byte $C0   ; 02 
- D 0 - - - 0x0287C9 0A:87B9: D8        .byte $D8   ; 03 



tbl_87BA_offset:
; index for 0x0287C2
- D 0 - - - 0x0287CA 0A:87BA: 00        .byte $00   ; 00 facing right
- D 0 - - - 0x0287CB 0A:87BB: 04        .byte $04   ; 01 facing left



_off033_87BC_3B:
- D 0 - I - 0x0287CC 0A:87BC: C0 87     .word ofs_040_3B_87C0_00
- D 0 - I - 0x0287CE 0A:87BE: C6 87     .word ofs_040_3B_87C6_01



ofs_040_3B_87C0_00:
C - - J - - 0x0287D0 0A:87C0: 20 CB 87  JSR sub_87CB
C - - - - - 0x0287D3 0A:87C3: 4C DE 85  JMP loc_85DE



ofs_040_3B_87C6_01:
C - - J - - 0x0287D6 0A:87C6: DE CE 07  DEC ram_07CE,X
C - - - - - 0x0287D9 0A:87C9: D0 31     BNE bra_87FC_RTS
sub_87CB:
C - - - - - 0x0287DB 0A:87CB: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x0287DE 0A:87CE: 20 73 8D  JSR sub_8D73
C - - - - - 0x0287E1 0A:87D1: D0 1B     BNE bra_87EE
C - - - - - 0x0287E3 0A:87D3: 8A        TXA
C - - - - - 0x0287E4 0A:87D4: 65 1A     ADC ram_frm_cnt
C - - - - - 0x0287E6 0A:87D6: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x0287E9 0A:87D9: 29 07     AND #$07
C - - - - - 0x0287EB 0A:87DB: 18        CLC
C - - - - - 0x0287EC 0A:87DC: AC A8 04  LDY ram_plr_facing
C - - - - - 0x0287EF 0A:87DF: 79 0D 88  ADC tbl_880D_offset,Y
C - - - - - 0x0287F2 0A:87E2: A8        TAY
C - - - - - 0x0287F3 0A:87E3: B9 FD 87  LDA tbl_87FD_pos_X_hi,Y
C - - - - - 0x0287F6 0A:87E6: 6D 38 04  ADC ram_plr_pos_X_hi
C - - - - - 0x0287F9 0A:87E9: 85 00     STA ram_0000_temp
C - - - - - 0x0287FB 0A:87EB: 20 DE 8D  JSR sub_8DDE
bra_87EE:
C - - - - - 0x0287FE 0A:87EE: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028800 0A:87F0: A9 47     LDA #$47
C - - - - - 0x028802 0A:87F2: AC F6 07  LDY ram_quest
C - - - - - 0x028805 0A:87F5: F0 02     BEQ bra_87F9_1st_quest
C - - - - - 0x028807 0A:87F7: A9 30     LDA #$30
bra_87F9_1st_quest:
C - - - - - 0x028809 0A:87F9: 9D CE 07  STA ram_07CE,X
bra_87FC_RTS:
C - - - - - 0x02880C 0A:87FC: 60        RTS



tbl_87FD_pos_X_hi:
; index at 0x02881D
; 00 facing right
- D 0 - - - 0x02880D 0A:87FD: A0        .byte $A0   ; 00 
- D 0 - - - 0x02880E 0A:87FE: 50        .byte $50   ; 01 
- D 0 - - - 0x02880F 0A:87FF: 60        .byte $60   ; 02 
- D 0 - - - 0x028810 0A:8800: B0        .byte $B0   ; 03 
- D 0 - - - 0x028811 0A:8801: A8        .byte $A8   ; 04 
- D 0 - - - 0x028812 0A:8802: 48        .byte $48   ; 05 
- D 0 - - - 0x028813 0A:8803: 58        .byte $58   ; 06 
- D 0 - - - 0x028814 0A:8804: 58        .byte $58   ; 07 
; 01 facing left
- D 0 - - - 0x028815 0A:8805: A0        .byte $A0   ; 00 
- D 0 - - - 0x028816 0A:8806: A8        .byte $A8   ; 01 
- D 0 - - - 0x028817 0A:8807: B0        .byte $B0   ; 02 
- D 0 - - - 0x028818 0A:8808: 60        .byte $60   ; 03 
- D 0 - - - 0x028819 0A:8809: B8        .byte $B8   ; 04 
- D 0 - - - 0x02881A 0A:880A: 48        .byte $48   ; 05 
- D 0 - - - 0x02881B 0A:880B: 58        .byte $58   ; 06 
- D 0 - - - 0x02881C 0A:880C: 98        .byte $98   ; 07 



tbl_880D_offset:
; index for 0x02880D
- D 0 - - - 0x02881D 0A:880D: 00        .byte $00   ;    ; 00 facing right
- D 0 - - - 0x02881E 0A:880E: 08        .byte $08   ;    ; 01 facing left



_off033_880F_4A:
- D 0 - I - 0x02881F 0A:880F: 13 88     .word ofs_040_4A_8813_00
- D 0 - I - 0x028821 0A:8811: 24 88     .word ofs_040_4A_8824_01



ofs_040_4A_8813_00:
C - - J - - 0x028823 0A:8813: FE C8 07  INC ram_07C8,X
bra_8816:
C - - - - - 0x028826 0A:8816: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028829 0A:8819: 20 AE 83  JSR sub_83AE_find_empty_object_slot_0A_0C
C - - - - - 0x02882C 0A:881C: D0 03     BNE bra_8821
C - - - - - 0x02882E 0A:881E: 20 3C 88  JSR sub_883C
bra_8821:
C - - - - - 0x028831 0A:8821: 4C B6 88  JMP loc_88B6



ofs_040_4A_8824_01:
C - - J - - 0x028834 0A:8824: DE CE 07  DEC ram_07CE,X
C - - - - - 0x028837 0A:8827: F0 ED     BEQ bra_8816
bra_8829_RTS:
C - - - - - 0x028839 0A:8829: 60        RTS



_off033_882A_48:
- D 0 - I - 0x02883A 0A:882A: 2E 88     .word ofs_040_48_882E_00
- D 0 - I - 0x02883C 0A:882C: 72 88     .word ofs_040_48_8872_01



ofs_040_48_882E_00:
C - - J - - 0x02883E 0A:882E: FE C8 07  INC ram_07C8,X
bra_8831:
C - - - - - 0x028841 0A:8831: 20 B6 88  JSR sub_88B6
C - - - - - 0x028844 0A:8834: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028847 0A:8837: 20 73 8D  JSR sub_8D73
C - - - - - 0x02884A 0A:883A: D0 ED     BNE bra_8829_RTS
sub_883C:
C - - - - - 0x02884C 0A:883C: 20 E5 89  JSR sub_89E5
C - - - - - 0x02884F 0A:883F: B9 82 88  LDA tbl_8882,Y
C - - - - - 0x028852 0A:8842: 85 00     STA ram_0000_temp
C - - - - - 0x028854 0A:8844: A9 00     LDA #$00
C - - - - - 0x028856 0A:8846: A4 6E     LDY ram_006E_cam_speed
C - - - - - 0x028858 0A:8848: F0 17     BEQ bra_8861
C - - - - - 0x02885A 0A:884A: A4 68     LDY ram_0068
C - - - - - 0x02885C 0A:884C: 10 13     BPL bra_8861
C - - - - - 0x02885E 0A:884E: A4 6E     LDY ram_006E_cam_speed
C - - - - - 0x028860 0A:8850: 10 02     BPL bra_8854
C - - - - - 0x028862 0A:8852: A9 04     LDA #$04
bra_8854:
C - - - - - 0x028864 0A:8854: 18        CLC
C - - - - - 0x028865 0A:8855: 85 0A     STA ram_000A_temp
C - - - - - 0x028867 0A:8857: A5 1A     LDA ram_frm_cnt
C - - - - - 0x028869 0A:8859: 29 03     AND #$03
C - - - - - 0x02886B 0A:885B: 65 0A     ADC ram_000A_temp
C - - - - - 0x02886D 0A:885D: A8        TAY
C - - - - - 0x02886E 0A:885E: B9 6A 88  LDA tbl_886A,Y
bra_8861:
C - - - - - 0x028871 0A:8861: 18        CLC
C - - - - - 0x028872 0A:8862: 6D 1C 04  ADC ram_plr_pos_Y_hi
C - - - - - 0x028875 0A:8865: 85 01     STA ram_0001_temp
C - - - - - 0x028877 0A:8867: 4C C4 88  JMP loc_88C4



tbl_886A:
; 00 0x028854
- D 0 - - - 0x02887A 0A:886A: C0        .byte $C0   ; 00 
- D 0 - - - 0x02887B 0A:886B: B0        .byte $B0   ; 01 
- D 0 - - - 0x02887C 0A:886C: E0        .byte $E0   ; 02 
- D 0 - - - 0x02887D 0A:886D: D0        .byte $D0   ; 03 
; 04 0x028862
- D 0 - - - 0x02887E 0A:886E: 40        .byte $40   ; 00 
- D 0 - - - 0x02887F 0A:886F: 50        .byte $50   ; 01 
- D 0 - - - 0x028880 0A:8870: 20        .byte $20   ; 02 
- D 0 - - - 0x028881 0A:8871: 30        .byte $30   ; 03 



ofs_040_48_8872_01:
C - - J - - 0x028882 0A:8872: DE CE 07  DEC ram_07CE,X
C - - - - - 0x028885 0A:8875: F0 BA     BEQ bra_8831
bra_8877_RTS:
C - - - - - 0x028887 0A:8877: 60        RTS



_off033_8878_03:
- D 0 - I - 0x028888 0A:8878: 7C 88     .word ofs_040_03_887C_00
- D 0 - I - 0x02888A 0A:887A: 84 88     .word ofs_040_03_8884_01



ofs_040_03_887C_00:
C - - J - - 0x02888C 0A:887C: 20 89 88  JSR sub_8889
C - - - - - 0x02888F 0A:887F: 4C DE 85  JMP loc_85DE



tbl_8882:
- D 0 - - - 0x028892 0A:8882: 08        .byte $08   ; 00 
- D 0 - - - 0x028893 0A:8883: F8        .byte $F8   ; 01 



ofs_040_03_8884_01:
C - - J - - 0x028894 0A:8884: 20 28 8E  JSR sub_8E28
C - - - - - 0x028897 0A:8887: D0 3A     BNE bra_88C3_RTS
sub_8889:
C - - - - - 0x028899 0A:8889: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x02889C 0A:888C: 20 54 8E  JSR sub_8E54
C - - - - - 0x02889F 0A:888F: D0 25     BNE bra_88B6
C - - - - - 0x0288A1 0A:8891: A5 32     LDA ram_blk_hi
C - - - - - 0x0288A3 0A:8893: C9 0A     CMP #$0A
C - - - - - 0x0288A5 0A:8895: D0 0D     BNE bra_88A4
C - - - - - 0x0288A7 0A:8897: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x0288AA 0A:889A: C9 A0     CMP #$A0
C - - - - - 0x0288AC 0A:889C: 90 06     BCC bra_88A4
C - - - - - 0x0288AE 0A:889E: 20 44 8A  JSR sub_8A44
C - - - - - 0x0288B1 0A:88A1: 4C AC 88  JMP loc_88AC
bra_88A4:
C - - - - - 0x0288B4 0A:88A4: 20 F4 89  JSR sub_89F4
C - - - - - 0x0288B7 0A:88A7: B9 82 88  LDA tbl_8882,Y
C - - - - - 0x0288BA 0A:88AA: 85 00     STA ram_0000_temp
loc_88AC:
C D 0 - - - 0x0288BC 0A:88AC: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x0288BF 0A:88AF: 69 04     ADC #$04
C - - - - - 0x0288C1 0A:88B1: 85 01     STA ram_0001_temp
C - - - - - 0x0288C3 0A:88B3: 20 C4 88  JSR sub_88C4
bra_88B6:
loc_88B6:
sub_88B6:
C D 0 - - - 0x0288C6 0A:88B6: A9 70     LDA #$70
C - - - - - 0x0288C8 0A:88B8: A4 32     LDY ram_blk_hi
C - - - - - 0x0288CA 0A:88BA: C0 0A     CPY #$0A
C - - - - - 0x0288CC 0A:88BC: B0 02     BCS bra_88C0
C - - - - - 0x0288CE 0A:88BE: A9 A0     LDA #$A0
bra_88C0:
C - - - - - 0x0288D0 0A:88C0: 4C 23 86  JMP loc_8623
bra_88C3_RTS:
C - - - - - 0x0288D3 0A:88C3: 60        RTS



loc_88C4:
sub_88C4:
C D 0 - - - 0x0288D4 0A:88C4: AD F6 07  LDA ram_quest
C - - - - - 0x0288D7 0A:88C7: F0 04     BEQ bra_88CD_1st_quest
C - - - - - 0x0288D9 0A:88C9: A9 6D     LDA #$6D
C - - - - - 0x0288DB 0A:88CB: 85 02     STA ram_0002_temp
bra_88CD_1st_quest:
C - - - - - 0x0288DD 0A:88CD: 4C DE 8D  JMP loc_8DDE



_off033_88D0_46:
- D 0 - I - 0x0288E0 0A:88D0: D4 88     .word ofs_040_46_88D4_00
- D 0 - I - 0x0288E2 0A:88D2: DF 88     .word ofs_040_46_88DF_01



ofs_040_46_88D4_00:
C - - J - - 0x0288E4 0A:88D4: A9 00     LDA #$00
C - - - - - 0x0288E6 0A:88D6: 9D E6 07  STA ram_07E6,X
C - - - - - 0x0288E9 0A:88D9: 20 E4 88  JSR sub_88E4
C - - - - - 0x0288EC 0A:88DC: 4C DE 85  JMP loc_85DE



ofs_040_46_88DF_01:
C - - J - - 0x0288EF 0A:88DF: DE CE 07  DEC ram_07CE,X
C - - - - - 0x0288F2 0A:88E2: D0 93     BNE bra_8877_RTS
sub_88E4:
C - - - - - 0x0288F4 0A:88E4: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x0288F7 0A:88E7: 20 A0 83  JSR sub_83A0_find_empty_object_slot_04_06
C - - - - - 0x0288FA 0A:88EA: D0 24     BNE bra_8910
C - - - - - 0x0288FC 0A:88EC: BD E6 07  LDA ram_07E6,X
C - - - - - 0x0288FF 0A:88EF: C9 08     CMP #$08
C - - - - - 0x028901 0A:88F1: 90 05     BCC bra_88F8
C - - - - - 0x028903 0A:88F3: A9 00     LDA #$00
C - - - - - 0x028905 0A:88F5: 9D E6 07  STA ram_07E6,X
bra_88F8:
C - - - - - 0x028908 0A:88F8: BC E6 07  LDY ram_07E6,X
C - - - - - 0x02890B 0A:88FB: B9 25 89  LDA tbl_8925,Y
C - - - - - 0x02890E 0A:88FE: 85 01     STA ram_0001_temp
C - - - - - 0x028910 0A:8900: B9 1D 89  LDA tbl_891D,Y
C - - - - - 0x028913 0A:8903: 85 00     STA ram_0000_temp
C - - - - - 0x028915 0A:8905: FE E6 07  INC ram_07E6,X
C - - - - - 0x028918 0A:8908: 20 2D 89  JSR sub_892D
C - - - - - 0x02891B 0A:890B: D0 03     BNE bra_8910
C - - - - - 0x02891D 0A:890D: 20 DE 8D  JSR sub_8DDE
bra_8910:
C - - - - - 0x028920 0A:8910: A9 80     LDA #$80
C - - - - - 0x028922 0A:8912: A4 32     LDY ram_blk_hi
C - - - - - 0x028924 0A:8914: C0 0D     CPY #$0D
C - - - - - 0x028926 0A:8916: F0 02     BEQ bra_891A
C - - - - - 0x028928 0A:8918: A9 FF     LDA #$FF
bra_891A:
C - - - - - 0x02892A 0A:891A: 4C 23 86  JMP loc_8623



tbl_891D:
- D 0 - - - 0x02892D 0A:891D: F8        .byte $F8   ; 00 
- D 0 - - - 0x02892E 0A:891E: F8        .byte $F8   ; 01 
- D 0 - - - 0x02892F 0A:891F: 08        .byte $08   ; 02 
- D 0 - - - 0x028930 0A:8920: F8        .byte $F8   ; 03 
- D 0 - - - 0x028931 0A:8921: F8        .byte $F8   ; 04 
- D 0 - - - 0x028932 0A:8922: 08        .byte $08   ; 05 
- D 0 - - - 0x028933 0A:8923: F8        .byte $F8   ; 06 
- D 0 - - - 0x028934 0A:8924: 08        .byte $08   ; 07 



tbl_8925:
- D 0 - - - 0x028935 0A:8925: 40        .byte $40   ; 00 
- D 0 - - - 0x028936 0A:8926: 60        .byte $60   ; 01 
- D 0 - - - 0x028937 0A:8927: 40        .byte $40   ; 02 
- D 0 - - - 0x028938 0A:8928: 60        .byte $60   ; 03 
- D 0 - - - 0x028939 0A:8929: 60        .byte $60   ; 04 
- D 0 - - - 0x02893A 0A:892A: 40        .byte $40   ; 05 
- D 0 - - - 0x02893B 0A:892B: 40        .byte $40   ; 06 
- D 0 - - - 0x02893C 0A:892C: 60        .byte $60   ; 07 



sub_892D:
C - - - - - 0x02893D 0A:892D: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x028940 0A:8930: C9 C0     CMP #$C0
C - - - - - 0x028942 0A:8932: B0 07     BCS bra_893B
C - - - - - 0x028944 0A:8934: C9 40     CMP #$40
C - - - - - 0x028946 0A:8936: 90 0A     BCC bra_8942
bra_8938:
C - - - - - 0x028948 0A:8938: A9 00     LDA #$00
C - - - - - 0x02894A 0A:893A: 60        RTS
bra_893B:
C - - - - - 0x02894B 0A:893B: A5 00     LDA ram_0000_temp
C - - - - - 0x02894D 0A:893D: 10 F9     BPL bra_8938
bra_893F:
C - - - - - 0x02894F 0A:893F: A9 01     LDA #$01
C - - - - - 0x028951 0A:8941: 60        RTS
bra_8942:
- - - - - - 0x028952 0A:8942: A5 00     LDA ram_0000_temp
- - - - - - 0x028954 0A:8944: 30 F2     BMI bra_8938
- - - - - - 0x028956 0A:8946: 10 F7     BPL bra_893F    ; jmp



_off033_8948_2D:
- D 0 - I - 0x028958 0A:8948: 4C 89     .word ofs_040_2D_894C_00
- D 0 - I - 0x02895A 0A:894A: 52 89     .word ofs_040_2D_8952_01



ofs_040_2D_894C_00:
C - - J - - 0x02895C 0A:894C: 20 57 89  JSR sub_8957
C - - - - - 0x02895F 0A:894F: 4C DE 85  JMP loc_85DE



ofs_040_2D_8952_01:
C - - J - - 0x028962 0A:8952: DE CE 07  DEC ram_07CE,X
C - - - - - 0x028965 0A:8955: D0 16     BNE bra_896D_RTS
sub_8957:
C - - - - - 0x028967 0A:8957: A9 80     LDA #$80
C - - - - - 0x028969 0A:8959: 9D CE 07  STA ram_07CE,X
C - - - - - 0x02896C 0A:895C: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x02896F 0A:895F: 20 7B 8D  JSR sub_8D7B
C - - - - - 0x028972 0A:8962: D0 09     BNE bra_896D_RTS
C - - - - - 0x028974 0A:8964: AC A8 04  LDY ram_plr_facing
C - - - - - 0x028977 0A:8967: B9 6E 89  LDA tbl_896E,Y
C - - - - - 0x02897A 0A:896A: 4C A9 89  JMP loc_89A9
bra_896D_RTS:
C - - - - - 0x02897D 0A:896D: 60        RTS



tbl_896E:
- D 0 - - - 0x02897E 0A:896E: F8        .byte $F8   ; 00 facing right
- D 0 - - - 0x02897F 0A:896F: 08        .byte $08   ; 01 facing left



_off033_8970_0C:
_off033_8970_2B:
_off033_8970_47:
- D 0 - I - 0x028980 0A:8970: 74 89     .word ofs_040_0C_8974_00
- D 0 - I - 0x028982 0A:8972: 7A 89     .word ofs_040_0C_897A_01



ofs_040_0C_8974_00:
C - - J - - 0x028984 0A:8974: 20 7F 89  JSR sub_897F
C - - - - - 0x028987 0A:8977: 4C DE 85  JMP loc_85DE



ofs_040_0C_897A_01:
C - - J - - 0x02898A 0A:897A: 20 28 8E  JSR sub_8E28
C - - - - - 0x02898D 0A:897D: D0 5A     BNE bra_89D9_RTS
sub_897F:
C - - - - - 0x02898F 0A:897F: A9 C0     LDA #$C0
C - - - - - 0x028991 0A:8981: 9D CE 07  STA ram_07CE,X
C - - - - - 0x028994 0A:8984: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028997 0A:8987: 20 8D 84  JSR sub_848D
C - - - - - 0x02899A 0A:898A: D0 06     BNE bra_8992
C - - - - - 0x02899C 0A:898C: 20 89 8E  JSR sub_8E89
C - - - - - 0x02899F 0A:898F: F0 12     BEQ bra_89A3
- - - - - - 0x0289A1 0A:8991: 60        RTS
bra_8992:
C - - - - - 0x0289A2 0A:8992: A5 32     LDA ram_blk_hi
C - - - - - 0x0289A4 0A:8994: C9 01     CMP #$01
C - - - - - 0x0289A6 0A:8996: D0 06     BNE bra_899E
- - - - - - 0x0289A8 0A:8998: 20 C3 8E  JSR sub_8EC3
- - - - - - 0x0289AB 0A:899B: F0 06     BEQ bra_89A3
- - - - - - 0x0289AD 0A:899D: 60        RTS
bra_899E:
C - - - - - 0x0289AE 0A:899E: 20 7B 8D  JSR sub_8D7B
C - - - - - 0x0289B1 0A:89A1: D0 36     BNE bra_89D9_RTS
bra_89A3:
C - - - - - 0x0289B3 0A:89A3: 20 B7 89  JSR sub_89B7
C - - - - - 0x0289B6 0A:89A6: B9 82 88  LDA tbl_8882,Y
loc_89A9:
C D 0 - - - 0x0289B9 0A:89A9: 85 00     STA ram_0000_temp
C - - - - - 0x0289BB 0A:89AB: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x0289BE 0A:89AE: 85 01     STA ram_0001_temp
loc_89B0:   ; bzk optimize
C D 0 - - - 0x0289C0 0A:89B0: 4C DE 8D  JMP loc_8DDE



sub_89B3:
C - - - - - 0x0289C3 0A:89B3: A9 01     LDA #$01
C - - - - - 0x0289C5 0A:89B5: D0 02     BNE bra_89B9    ; jmp



sub_89B7:
C - - - - - 0x0289C7 0A:89B7: A9 00     LDA #$00
bra_89B9:
C - - - - - 0x0289C9 0A:89B9: 85 0F     STA ram_000F_temp
C - - - - - 0x0289CB 0A:89BB: A0 01     LDY #$01
C - - - - - 0x0289CD 0A:89BD: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x0289D0 0A:89C0: C9 50     CMP #$50
C - - - - - 0x0289D2 0A:89C2: 90 15     BCC bra_89D9_RTS
bra_89C4:
C - - - - - 0x0289D4 0A:89C4: 88        DEY ; 00
C - - - - - 0x0289D5 0A:89C5: C9 B0     CMP #$B0
C - - - - - 0x0289D7 0A:89C7: B0 10     BCS bra_89D9_RTS
C - - - - - 0x0289D9 0A:89C9: A5 0F     LDA ram_000F_temp
C - - - - - 0x0289DB 0A:89CB: D0 0D     BNE bra_89DA
C - - - - - 0x0289DD 0A:89CD: AD 1C 04  LDA ram_plr_pos_Y_hi
; / 10
C - - - - - 0x0289E0 0A:89D0: 4A        LSR
C - - - - - 0x0289E1 0A:89D1: 4A        LSR
C - - - - - 0x0289E2 0A:89D2: 4A        LSR
C - - - - - 0x0289E3 0A:89D3: 4A        LSR
C - - - - - 0x0289E4 0A:89D4: 65 1F     ADC ram_random
C - - - - - 0x0289E6 0A:89D6: 29 01     AND #$01
C - - - - - 0x0289E8 0A:89D8: A8        TAY
bra_89D9_RTS:
C - - - - - 0x0289E9 0A:89D9: 60        RTS
bra_89DA:
C - - - - - 0x0289EA 0A:89DA: A0 01     LDY #$01
C - - - - - 0x0289EC 0A:89DC: A5 1A     LDA ram_frm_cnt
C - - - - - 0x0289EE 0A:89DE: 29 1F     AND #$1F
C - - - - - 0x0289F0 0A:89E0: D0 F7     BNE bra_89D9_RTS
- - - - - - 0x0289F2 0A:89E2: A0 00     LDY #$00
- - - - - - 0x0289F4 0A:89E4: 60        RTS



sub_89E5:
C - - - - - 0x0289F5 0A:89E5: A9 00     LDA #$00
C - - - - - 0x0289F7 0A:89E7: 85 0F     STA ram_000F_temp
C - - - - - 0x0289F9 0A:89E9: A0 01     LDY #$01
C - - - - - 0x0289FB 0A:89EB: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x0289FE 0A:89EE: C9 60     CMP #$60
C - - - - - 0x028A00 0A:89F0: 90 E7     BCC bra_89D9_RTS
C - - - - - 0x028A02 0A:89F2: B0 D0     BCS bra_89C4    ; jmp



sub_89F4:
C - - - - - 0x028A04 0A:89F4: A0 01     LDY #$01
C - - - - - 0x028A06 0A:89F6: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x028A09 0A:89F9: C9 40     CMP #$40
C - - - - - 0x028A0B 0A:89FB: 90 DC     BCC bra_89D9_RTS
C - - - - - 0x028A0D 0A:89FD: 88        DEY ; 00
C - - - - - 0x028A0E 0A:89FE: C9 C0     CMP #$C0
C - - - - - 0x028A10 0A:8A00: B0 D7     BCS bra_89D9_RTS
C - - - - - 0x028A12 0A:8A02: AD A8 04  LDA ram_plr_facing
C - - - - - 0x028A15 0A:8A05: 49 01     EOR #$01
C - - - - - 0x028A17 0A:8A07: A8        TAY
C - - - - - 0x028A18 0A:8A08: 60        RTS



_off033_8A09_52:
- D 0 - I - 0x028A19 0A:8A09: 17 8A     .word ofs_040_52_8A17_00
- D 0 - I - 0x028A1B 0A:8A0B: 0D 8A     .word ofs_040_52_8A0D_01



ofs_040_52_8A0D_01:
C - - J - - 0x028A1D 0A:8A0D: DE CE 07  DEC ram_07CE,X
C - - - - - 0x028A20 0A:8A10: F0 10     BEQ bra_8A22
bra_8A12_RTS:
C - - - - - 0x028A22 0A:8A12: 60        RTS



_off033_8A13_04:
- D 0 - I - 0x028A23 0A:8A13: 17 8A     .word ofs_040_04_8A17_00
- D 0 - I - 0x028A25 0A:8A15: 1D 8A     .word ofs_040_04_8A1D_01



ofs_040_04_8A17_00:
ofs_040_52_8A17_00:
C - - J - - 0x028A27 0A:8A17: 20 22 8A  JSR sub_8A22
C - - - - - 0x028A2A 0A:8A1A: 4C DE 85  JMP loc_85DE



ofs_040_04_8A1D_01:
C - - J - - 0x028A2D 0A:8A1D: 20 28 8E  JSR sub_8E28
C - - - - - 0x028A30 0A:8A20: D0 F0     BNE bra_8A12_RTS
bra_8A22:
sub_8A22:
C - - - - - 0x028A32 0A:8A22: A9 90     LDA #$90
C - - - - - 0x028A34 0A:8A24: 9D CE 07  STA ram_07CE,X
C - - - - - 0x028A37 0A:8A27: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028A3A 0A:8A2A: 20 7B 8D  JSR sub_8D7B
C - - - - - 0x028A3D 0A:8A2D: D0 72     BNE bra_8AA1_RTS
C - - - - - 0x028A3F 0A:8A2F: 20 44 8A  JSR sub_8A44
C - - - - - 0x028A42 0A:8A32: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x028A45 0A:8A35: C9 20     CMP #$20
C - - - - - 0x028A47 0A:8A37: 90 68     BCC bra_8AA1_RTS
C - - - - - 0x028A49 0A:8A39: A4 68     LDY ram_0068
C - - - - - 0x028A4B 0A:8A3B: 10 02     BPL bra_8A3F
C - - - - - 0x028A4D 0A:8A3D: E9 18     SBC #$18
bra_8A3F:
C - - - - - 0x028A4F 0A:8A3F: 85 01     STA ram_0001_temp
C - - - - - 0x028A51 0A:8A41: 4C B0 89  JMP loc_89B0



sub_8A44:
C - - - - - 0x028A54 0A:8A44: A0 00     LDY #$00
C - - - - - 0x028A56 0A:8A46: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x028A59 0A:8A49: C9 80     CMP #$80
C - - - - - 0x028A5B 0A:8A4B: B0 01     BCS bra_8A4E
C - - - - - 0x028A5D 0A:8A4D: C8        INY ; 01
bra_8A4E:
C - - - - - 0x028A5E 0A:8A4E: B9 82 88  LDA tbl_8882,Y
C - - - - - 0x028A61 0A:8A51: 85 00     STA ram_0000_temp
C - - - - - 0x028A63 0A:8A53: 60        RTS



ofs_040_1A_8A54_01:
C - - J - - 0x028A64 0A:8A54: DE CE 07  DEC ram_07CE,X
C - - - - - 0x028A67 0A:8A57: D0 05     BNE bra_8A5E_RTS
C - - - - - 0x028A69 0A:8A59: A9 00     LDA #$00
C - - - - - 0x028A6B 0A:8A5B: 9D C8 07  STA ram_07C8,X
bra_8A5E_RTS:
C - - - - - 0x028A6E 0A:8A5E: 60        RTS



_off033_8A5F_1A:
_off033_8A5F_50:
- D 0 - I - 0x028A6F 0A:8A5F: 63 8A     .word ofs_040_1A_8A63_00
- D 0 - I - 0x028A71 0A:8A61: 54 8A     .word ofs_040_1A_8A54_01



ofs_040_1A_8A63_00:
C - - J - - 0x028A73 0A:8A63: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028A76 0A:8A66: D0 39     BNE bra_8AA1_RTS
C - - - - - 0x028A78 0A:8A68: 20 1A 8E  JSR sub_8E1A
C - - - - - 0x028A7B 0A:8A6B: C9 20     CMP #$20
C - - - - - 0x028A7D 0A:8A6D: B0 32     BCS bra_8AA1_RTS
C - - - - - 0x028A7F 0A:8A6F: A9 02     LDA #$02
C - - - - - 0x028A81 0A:8A71: 9D E6 07  STA ram_07E6,X
C - - - - - 0x028A84 0A:8A74: 20 DE 85  JSR sub_85DE
bra_8A77_loop:
C - - - - - 0x028A87 0A:8A77: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028A8A 0A:8A7A: 20 54 8E  JSR sub_8E54
C - - - - - 0x028A8D 0A:8A7D: D0 16     BNE bra_8A95
C - - - - - 0x028A8F 0A:8A7F: 20 DE 8D  JSR sub_8DDE
C - - - - - 0x028A92 0A:8A82: 86 09     STX ram_0009_temp
C - - - - - 0x028A94 0A:8A84: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028A96 0A:8A86: 18        CLC
C - - - - - 0x028A97 0A:8A87: BC E6 07  LDY ram_07E6,X
C - - - - - 0x028A9A 0A:8A8A: B9 A2 8A  LDA tbl_8AA2,Y
C - - - - - 0x028A9D 0A:8A8D: 7D DA 07  ADC ram_07DA,X
C - - - - - 0x028AA0 0A:8A90: A6 09     LDX ram_0009_temp
C - - - - - 0x028AA2 0A:8A92: 9D 38 04  STA ram_obj_pos_X_hi,X
bra_8A95:
C - - - - - 0x028AA5 0A:8A95: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028AA7 0A:8A97: DE E6 07  DEC ram_07E6,X
C - - - - - 0x028AAA 0A:8A9A: D0 DB     BNE bra_8A77_loop
C - - - - - 0x028AAC 0A:8A9C: A9 28     LDA #$28
C - - - - - 0x028AAE 0A:8A9E: 9D CE 07  STA ram_07CE,X
bra_8AA1_RTS:
C - - - - - 0x028AB1 0A:8AA1: 60        RTS



tbl_8AA2:
- - - - - - 0x028AB2 0A:8AA2: 00        .byte $00   ; 00 
- D 0 - - - 0x028AB3 0A:8AA3: 38        .byte $38   ; 01 
- D 0 - - - 0x028AB4 0A:8AA4: C8        .byte $C8   ; 02 



_off033_8AA5_4B:
- D 0 - I - 0x028AB5 0A:8AA5: B5 8A     .word ofs_040_4B_8AB5_00
- D 0 - I - 0x028AB7 0A:8AA7: C2 8A     .word ofs_040_4B_8AC2_01
- D 0 - I - 0x028AB9 0A:8AA9: D7 8A     .word ofs_040_4B_8AD7_02_RTS
- - - - - - 0x028ABB 0A:8AAB: 57 8C     .word ofs_040_4B_8C57_03



_off033_8AAD_18:
- D 0 - I - 0x028ABD 0A:8AAD: B5 8A     .word ofs_040_18_8AB5_00
- D 0 - I - 0x028ABF 0A:8AAF: BD 8A     .word ofs_040_18_8ABD_01
- D 0 - I - 0x028AC1 0A:8AB1: D7 8A     .word ofs_040_18_8AD7_02_RTS
- - - - - - 0x028AC3 0A:8AB3: 57 8C     .word ofs_040_18_8C57_03



ofs_040_18_8AB5_00:
ofs_040_4B_8AB5_00:
C - - J - - 0x028AC5 0A:8AB5: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028AC8 0A:8AB8: D0 1D     BNE bra_8AD7_RTS
C - - - - - 0x028ACA 0A:8ABA: 4C DE 85  JMP loc_85DE



ofs_040_18_8ABD_01:
C - - J - - 0x028ACD 0A:8ABD: DE CE 07  DEC ram_07CE,X
C - - - - - 0x028AD0 0A:8AC0: D0 15     BNE bra_8AD7_RTS
ofs_040_4B_8AC2_01:
C - - - - - 0x028AD2 0A:8AC2: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028AD5 0A:8AC5: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028AD8 0A:8AC8: D0 08     BNE bra_8AD2
C - - - - - 0x028ADA 0A:8ACA: 20 54 8E  JSR sub_8E54
C - - - - - 0x028ADD 0A:8ACD: D0 03     BNE bra_8AD2
C - - - - - 0x028ADF 0A:8ACF: 20 BE 8B  JSR sub_8BBE
bra_8AD2:
C - - - - - 0x028AE2 0A:8AD2: A9 80     LDA #$80
C - - - - - 0x028AE4 0A:8AD4: 9D CE 07  STA ram_07CE,X
bra_8AD7_RTS:
ofs_040_18_8AD7_02_RTS:
ofs_040_4B_8AD7_02_RTS:
C - - - - - 0x028AE7 0A:8AD7: 60        RTS



_off033_8AD8_44:
- D 0 - I - 0x028AE8 0A:8AD8: DE 8A     .word ofs_040_44_8ADE_00
- D 0 - I - 0x028AEA 0A:8ADA: EE 8A     .word ofs_040_44_8AEE_01_RTS
- D 0 - I - 0x028AEC 0A:8ADC: E9 8A     .word ofs_040_44_8AE9_02



ofs_040_44_8ADE_00:
C - - J - - 0x028AEE 0A:8ADE: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028AF1 0A:8AE1: 20 8B 8D  JSR sub_8D8B
C - - - - - 0x028AF4 0A:8AE4: D0 F1     BNE bra_8AD7_RTS
C - - - - - 0x028AF6 0A:8AE6: 4C BE 8B  JMP loc_8BBE



ofs_040_44_8AE9_02:
C - - J - - 0x028AF9 0A:8AE9: A9 00     LDA #$00
C - - - - - 0x028AFB 0A:8AEB: 9D C8 07  STA ram_07C8,X
ofs_040_44_8AEE_01_RTS:
C - - J - - 0x028AFE 0A:8AEE: 60        RTS



_off033_8AEF_2C:
_off033_8AEF_45:
- D 0 - I - 0x028AFF 0A:8AEF: F5 8A     .word ofs_040_45_8AF5_00
- D 0 - I - 0x028B01 0A:8AF1: 15 8B     .word ofs_040_45_8B15_01_RTS
- D 0 - I - 0x028B03 0A:8AF3: 57 8C     .word ofs_040_45_8C57_02



ofs_040_45_8AF5_00:
C - - J - - 0x028B05 0A:8AF5: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028B08 0A:8AF8: D0 1B     BNE bra_8B15_RTS
C - - - - - 0x028B0A 0A:8AFA: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028B0D 0A:8AFD: BD E6 07  LDA ram_07E6,X
C - - - - - 0x028B10 0A:8B00: 85 04     STA ram_0004_temp
C - - - - - 0x028B12 0A:8B02: 20 B9 FE  JSR sub_0x03FEC9
C - - - - - 0x028B15 0A:8B05: D0 0E     BNE bra_8B15_RTS
C - - - - - 0x028B17 0A:8B07: 20 DE 8D  JSR sub_8DDE
C - - - - - 0x028B1A 0A:8B0A: 20 D5 8B  JSR sub_8BD5
C - - - - - 0x028B1D 0A:8B0D: A5 04     LDA ram_0004_temp
C - - - - - 0x028B1F 0A:8B0F: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x028B22 0A:8B12: 4C DE 85  JMP loc_85DE
bra_8B15_RTS:
ofs_040_45_8B15_01_RTS:
C - - J - - 0x028B25 0A:8B15: 60        RTS



_off033_8B16_11:
- D 0 - I - 0x028B26 0A:8B16: 1C 8B     .word ofs_040_11_8B1C_00
- D 0 - I - 0x028B28 0A:8B18: F8 8B     .word ofs_040_11_8BF8_01_RTS
- D 0 - I - 0x028B2A 0A:8B1A: 57 8C     .word ofs_040_11_8C57_02



ofs_040_11_8B1C_00:
C - - J - - 0x028B2C 0A:8B1C: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028B2F 0A:8B1F: D0 3F     BNE bra_8B60_RTS
C - - - - - 0x028B31 0A:8B21: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028B34 0A:8B24: 20 AE 83  JSR sub_83AE_find_empty_object_slot_0A_0C
C - - - - - 0x028B37 0A:8B27: D0 37     BNE bra_8B60_RTS
C - - - - - 0x028B39 0A:8B29: 4C BE 8B  JMP loc_8BBE



_off033_8B2C_0F:
- D 0 - I - 0x028B3C 0A:8B2C: 32 8B     .word ofs_040_0F_8B32_00
- D 0 - I - 0x028B3E 0A:8B2E: F8 8B     .word ofs_040_0F_8BF8_01_RTS
- D 0 - I - 0x028B40 0A:8B30: 57 8C     .word ofs_040_0F_8C57_02



ofs_040_0F_8B32_00:
C - - J - - 0x028B42 0A:8B32: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028B45 0A:8B35: D0 29     BNE bra_8B60_RTS
C - - - - - 0x028B47 0A:8B37: 20 9C 8E  JSR sub_8E9C
C - - - - - 0x028B4A 0A:8B3A: D0 0E     BNE bra_8B4A
C - - - - - 0x028B4C 0A:8B3C: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028B4F 0A:8B3F: 20 50 8E  JSR sub_8E50
C - - - - - 0x028B52 0A:8B42: D0 06     BNE bra_8B4A
C - - - - - 0x028B54 0A:8B44: 20 FF 8D  JSR sub_8DFF
C - - - - - 0x028B57 0A:8B47: 4C C1 8B  JMP loc_8BC1
bra_8B4A:
C - - - - - 0x028B5A 0A:8B4A: 4C CD 8B  JMP loc_8BCD



_off033_8B4D_49:
- D 0 - I - 0x028B5D 0A:8B4D: 53 8B     .word ofs_040_49_8B53_00
- D 0 - I - 0x028B5F 0A:8B4F: F8 8B     .word ofs_040_49_8BF8_01_RTS
- - - - - - 0x028B61 0A:8B51: 57 8C     .word ofs_040_49_8C57_02



ofs_040_49_8B53_00:
C - - J - - 0x028B63 0A:8B53: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028B66 0A:8B56: D0 08     BNE bra_8B60_RTS
C - - - - - 0x028B68 0A:8B58: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028B6B 0A:8B5B: 20 AE 83  JSR sub_83AE_find_empty_object_slot_0A_0C
C - - - - - 0x028B6E 0A:8B5E: F0 5E     BEQ bra_8BBE
bra_8B60_RTS:
C - - - - - 0x028B70 0A:8B60: 60        RTS



_off033_8B61_0B:
_off033_8B61_40:
- D 0 - I - 0x028B71 0A:8B61: 67 8B     .word ofs_040_0B_8B67_00
- D 0 - I - 0x028B73 0A:8B63: F8 8B     .word ofs_040_0B_8BF8_01_RTS
- D 0 - I - 0x028B75 0A:8B65: 57 8C     .word ofs_040_0B_8C57_02



ofs_040_0B_8B67_00:
C - - J - - 0x028B77 0A:8B67: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028B7A 0A:8B6A: D0 3E     BNE bra_8BAA_RTS
C - - - - - 0x028B7C 0A:8B6C: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028B7F 0A:8B6F: 20 54 8E  JSR sub_8E54
C - - - - - 0x028B82 0A:8B72: D0 36     BNE bra_8BAA_RTS
C - - - - - 0x028B84 0A:8B74: AD F6 07  LDA ram_quest
C - - - - - 0x028B87 0A:8B77: F0 45     BEQ bra_8BBE    ; if 1st quest
C - - - - - 0x028B89 0A:8B79: A5 03     LDA ram_0003_temp
C - - - - - 0x028B8B 0A:8B7B: C9 63     CMP #$63
C - - - - - 0x028B8D 0A:8B7D: D0 3F     BNE bra_8BBE
C - - - - - 0x028B8F 0A:8B7F: A5 32     LDA ram_blk_hi
C - - - - - 0x028B91 0A:8B81: C9 0C     CMP #$0C
C - - - - - 0x028B93 0A:8B83: F0 39     BEQ bra_8BBE
C - - - - - 0x028B95 0A:8B85: C9 01     CMP #$01
C - - - - - 0x028B97 0A:8B87: D0 06     BNE bra_8B8F
- - - - - - 0x028B99 0A:8B89: A5 34     LDA ram_blk_fr
- - - - - - 0x028B9B 0A:8B8B: C9 01     CMP #$01
- - - - - - 0x028B9D 0A:8B8D: F0 2F     BEQ bra_8BBE
bra_8B8F:
C - - - - - 0x028B9F 0A:8B8F: A9 71     LDA #$71
C - - - - - 0x028BA1 0A:8B91: 85 02     STA ram_0002_temp
C - - - - - 0x028BA3 0A:8B93: A9 67     LDA #$67
C - - - - - 0x028BA5 0A:8B95: 85 03     STA ram_0003_temp
C - - - - - 0x028BA7 0A:8B97: 20 FF 8D  JSR sub_8DFF
C - - - - - 0x028BAA 0A:8B9A: A9 10     LDA #$10
C - - - - - 0x028BAC 0A:8B9C: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x028BAF 0A:8B9F: A9 33     LDA #$33
C - - - - - 0x028BB1 0A:8BA1: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x028BB4 0A:8BA4: 20 D5 8B  JSR sub_8BD5
C - - - - - 0x028BB7 0A:8BA7: 4C DE 85  JMP loc_85DE
bra_8BAA_RTS:
C - - - - - 0x028BBA 0A:8BAA: 60        RTS



_off033_8BAB_13:
_off033_8BAB_15:
_off033_8BAB_16:
_off033_8BAB_17:
_off033_8BAB_19:
_off033_8BAB_28:
_off033_8BAB_32:
_off033_8BAB_3F:
- D 0 - I - 0x028BBB 0A:8BAB: B1 8B     .word ofs_040_13_8BB1_00
- D 0 - I - 0x028BBD 0A:8BAD: F8 8B     .word ofs_040_13_8BF8_01_RTS
- D 0 - I - 0x028BBF 0A:8BAF: 57 8C     .word ofs_040_13_8C57_02



ofs_040_13_8BB1_00:
C - - J - - 0x028BC1 0A:8BB1: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028BC4 0A:8BB4: D0 42     BNE bra_8BF8_RTS
C - - - - - 0x028BC6 0A:8BB6: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028BC9 0A:8BB9: 20 54 8E  JSR sub_8E54
C - - - - - 0x028BCC 0A:8BBC: D0 0F     BNE bra_8BCD
bra_8BBE:
sub_8BBE:
loc_8BBE:
C D 0 - - - 0x028BCE 0A:8BBE: 20 FF 8D  JSR sub_8DFF
loc_8BC1:
C D 0 - - - 0x028BD1 0A:8BC1: 20 32 93  JSR sub_9332_set_hp_for_enemy
C - - - - - 0x028BD4 0A:8BC4: 20 EC E7  JSR sub_0x03E7FC
C - - - - - 0x028BD7 0A:8BC7: 20 D5 8B  JSR sub_8BD5
C - - - - - 0x028BDA 0A:8BCA: 4C DE 85  JMP loc_85DE
loc_8BCD:
bra_8BCD:
C D 0 - - - 0x028BDD 0A:8BCD: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028BDF 0A:8BCF: A9 02     LDA #$02
C - - - - - 0x028BE1 0A:8BD1: 9D C8 07  STA ram_07C8,X
C - - - - - 0x028BE4 0A:8BD4: 60        RTS



sub_8BD5:
C - - - - - 0x028BE5 0A:8BD5: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x028BE8 0A:8BD8: 09 04     ORA #con_obj_flag_04
C - - - - - 0x028BEA 0A:8BDA: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x028BED 0A:8BDD: A5 6C     LDA ram_006C_object_index
C - - - - - 0x028BEF 0A:8BDF: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x028BF2 0A:8BE2: 8A        TXA
C - - - - - 0x028BF3 0A:8BE3: 48        PHA
C - - - - - 0x028BF4 0A:8BE4: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028BF6 0A:8BE6: 0A        ASL
C - - - - - 0x028BF7 0A:8BE7: 0A        ASL
C - - - - - 0x028BF8 0A:8BE8: 0A        ASL
C - - - - - 0x028BF9 0A:8BE9: 0A        ASL
C - - - - - 0x028BFA 0A:8BEA: 85 06     STA ram_0006_temp
C - - - - - 0x028BFC 0A:8BEC: BD C8 07  LDA ram_07C8,X
C - - - - - 0x028BFF 0A:8BEF: 29 0F     AND #$0F
C - - - - - 0x028C01 0A:8BF1: 05 06     ORA ram_0006_temp
C - - - - - 0x028C03 0A:8BF3: 9D C8 07  STA ram_07C8,X
C - - - - - 0x028C06 0A:8BF6: 68        PLA
C - - - - - 0x028C07 0A:8BF7: AA        TAX
bra_8BF8_RTS:
ofs_040_0B_8BF8_01_RTS:
ofs_040_0D_8BF8_01_RTS:
ofs_040_0E_8BF8_01_RTS:
ofs_040_0F_8BF8_01_RTS:
ofs_040_10_8BF8_01_RTS:
ofs_040_11_8BF8_01_RTS:
ofs_040_13_8BF8_01_RTS:
ofs_040_2A_8BF8_01_RTS:
ofs_040_2E_8BF8_01_RTS:
ofs_040_49_8BF8_01_RTS:
C - - - - - 0x028C08 0A:8BF8: 60        RTS



_off033_8BF9_10:
_off033_8BF9_14:
_off033_8BF9_27:
- D 0 - I - 0x028C09 0A:8BF9: FF 8B     .word ofs_040_10_8BFF_00
- D 0 - I - 0x028C0B 0A:8BFB: F8 8B     .word ofs_040_10_8BF8_01_RTS
- D 0 - I - 0x028C0D 0A:8BFD: 57 8C     .word ofs_040_10_8C57_02



ofs_040_10_8BFF_00:
C - - J - - 0x028C0F 0A:8BFF: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028C12 0A:8C02: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028C15 0A:8C05: D0 F1     BNE bra_8BF8_RTS
C - - - - - 0x028C17 0A:8C07: 20 54 8E  JSR sub_8E54
C - - - - - 0x028C1A 0A:8C0A: D0 EC     BNE bra_8BF8_RTS
C - - - - - 0x028C1C 0A:8C0C: 4C BE 8B  JMP loc_8BBE



_off033_8C0F_29:
- D 0 - I - 0x028C1F 0A:8C0F: 15 8C     .word ofs_040_29_8C15_00
- D 0 - I - 0x028C21 0A:8C11: 35 8C     .word ofs_040_29_8C35_01
- D 0 - I - 0x028C23 0A:8C13: 4C 8C     .word ofs_040_29_8C4C_02



ofs_040_29_8C15_00:
C - - J - - 0x028C25 0A:8C15: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028C28 0A:8C18: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028C2B 0A:8C1B: D0 47     BNE bra_8C64_RTS
C - - - - - 0x028C2D 0A:8C1D: 20 54 8E  JSR sub_8E54
C - - - - - 0x028C30 0A:8C20: D0 42     BNE bra_8C64_RTS
C - - - - - 0x028C32 0A:8C22: 20 FF 8D  JSR sub_8DFF
C - - - - - 0x028C35 0A:8C25: 20 32 93  JSR sub_9332_set_hp_for_enemy
C - - - - - 0x028C38 0A:8C28: 20 EC E7  JSR sub_0x03E7FC
C - - - - - 0x028C3B 0A:8C2B: 8A        TXA
C - - - - - 0x028C3C 0A:8C2C: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028C3E 0A:8C2E: 9D E6 07  STA ram_07E6,X
C - - - - - 0x028C41 0A:8C31: FE C8 07  INC ram_07C8,X
C - - - - - 0x028C44 0A:8C34: 60        RTS



ofs_040_29_8C35_01:
C - - J - - 0x028C45 0A:8C35: BD E6 07  LDA ram_07E6,X
C - - - - - 0x028C48 0A:8C38: AA        TAX
C - - - - - 0x028C49 0A:8C39: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x028C4C 0A:8C3C: D0 0B     BNE bra_8C49
C - - - - - 0x028C4E 0A:8C3E: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028C50 0A:8C40: FE C8 07  INC ram_07C8,X
C - - - - - 0x028C53 0A:8C43: A9 80     LDA #$80
C - - - - - 0x028C55 0A:8C45: 9D CE 07  STA ram_07CE,X
C - - - - - 0x028C58 0A:8C48: 60        RTS
bra_8C49:
C - - - - - 0x028C59 0A:8C49: A6 6C     LDX ram_006C_object_index
bra_8C4B_RTS:
C - - - - - 0x028C5B 0A:8C4B: 60        RTS



ofs_040_29_8C4C_02:
C - - J - - 0x028C5C 0A:8C4C: DE CE 07  DEC ram_07CE,X
C - - - - - 0x028C5F 0A:8C4F: D0 FA     BNE bra_8C4B_RTS
C - - - - - 0x028C61 0A:8C51: A9 00     LDA #$00
C - - - - - 0x028C63 0A:8C53: 9D C8 07  STA ram_07C8,X
C - - - - - 0x028C66 0A:8C56: 60        RTS



ofs_040_0B_8C57_02:
ofs_040_0D_8C57_02:
ofs_040_0E_8C57_02:
ofs_040_0F_8C57_02:
ofs_040_10_8C57_02:
ofs_040_11_8C57_02:
ofs_040_13_8C57_02:
ofs_040_2A_8C57_02:
ofs_040_2E_8C57_02:
ofs_040_36_8C57_02:
ofs_040_42_8C57_02:
ofs_040_43_8C57_02:
ofs_040_45_8C57_02:
ofs_040_49_8C57_02:
ofs_040_18_8C57_03:
ofs_040_4B_8C57_03:
C - - J - - 0x028C67 0A:8C57: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028C6A 0A:8C5A: F0 9C     BEQ bra_8BF8_RTS
C - - - - - 0x028C6C 0A:8C5C: BD C8 07  LDA ram_07C8,X
C - - - - - 0x028C6F 0A:8C5F: 29 F0     AND #$F0
C - - - - - 0x028C71 0A:8C61: 9D C8 07  STA ram_07C8,X
bra_8C64_RTS:
C - - - - - 0x028C74 0A:8C64: 60        RTS



_off033_8C65_2E:
- D 0 - I - 0x028C75 0A:8C65: 6B 8C     .word ofs_040_2E_8C6B_00
- D 0 - I - 0x028C77 0A:8C67: F8 8B     .word ofs_040_2E_8BF8_01_RTS
- D 0 - I - 0x028C79 0A:8C69: 57 8C     .word ofs_040_2E_8C57_02



ofs_040_2E_8C6B_00:
C - - J - - 0x028C7B 0A:8C6B: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028C7E 0A:8C6E: 20 83 8D  JSR sub_8D83
C - - - - - 0x028C81 0A:8C71: D0 85     BNE bra_8BF8_RTS
C - - - - - 0x028C83 0A:8C73: 4C BE 8B  JMP loc_8BBE



_off033_8C76_0E:
_off033_8C76_41:
- D 0 - I - 0x028C86 0A:8C76: 7C 8C     .word ofs_040_0E_8C7C_00
- D 0 - I - 0x028C88 0A:8C78: F8 8B     .word ofs_040_0E_8BF8_01_RTS
- D 0 - I - 0x028C8A 0A:8C7A: 57 8C     .word ofs_040_0E_8C57_02



ofs_040_0E_8C7C_00:
C - - J - - 0x028C8C 0A:8C7C: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028C8F 0A:8C7F: BD CE 07  LDA ram_07CE,X
C - - - - - 0x028C92 0A:8C82: 85 04     STA ram_0004_temp
C - - - - - 0x028C94 0A:8C84: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028C97 0A:8C87: D0 DB     BNE bra_8C64_RTS
C - - - - - 0x028C99 0A:8C89: 20 54 8E  JSR sub_8E54
C - - - - - 0x028C9C 0A:8C8C: D0 D6     BNE bra_8C64_RTS
loc_8C8E:
C D 0 - - - 0x028C9E 0A:8C8E: 20 DE 8D  JSR sub_8DDE
C - - - - - 0x028CA1 0A:8C91: 20 D5 8B  JSR sub_8BD5
C - - - - - 0x028CA4 0A:8C94: A5 04     LDA ram_0004_temp
C - - - - - 0x028CA6 0A:8C96: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x028CA9 0A:8C99: 4C DE 85  JMP loc_85DE



_off033_8C9C_2A:
- D 0 - I - 0x028CAC 0A:8C9C: A2 8C     .word ofs_040_2A_8CA2_00
- D 0 - I - 0x028CAE 0A:8C9E: F8 8B     .word ofs_040_2A_8BF8_01_RTS
- - - - - - 0x028CB0 0A:8CA0: 57 8C     .word ofs_040_2A_8C57_02



ofs_040_2A_8CA2_00:
C - - J - - 0x028CB2 0A:8CA2: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028CB5 0A:8CA5: BD CE 07  LDA ram_07CE,X
C - - - - - 0x028CB8 0A:8CA8: 85 04     STA ram_0004_temp
C - - - - - 0x028CBA 0A:8CAA: 20 B9 FE  JSR sub_0x03FEC9
C - - - - - 0x028CBD 0A:8CAD: D0 23     BNE bra_8CD2_RTS
C - - - - - 0x028CBF 0A:8CAF: 4C 8E 8C  JMP loc_8C8E



_off033_8CB2_0D:
- D 0 - I - 0x028CC2 0A:8CB2: B8 8C     .word ofs_040_0D_8CB8_00
- D 0 - I - 0x028CC4 0A:8CB4: F8 8B     .word ofs_040_0D_8BF8_01_RTS
- - - - - - 0x028CC6 0A:8CB6: 57 8C     .word ofs_040_0D_8C57_02



ofs_040_0D_8CB8_00:
C - - J - - 0x028CC8 0A:8CB8: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028CCB 0A:8CBB: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028CCE 0A:8CBE: D0 12     BNE bra_8CD2_RTS
C - - - - - 0x028CD0 0A:8CC0: 20 A0 83  JSR sub_83A0_find_empty_object_slot_04_06
C - - - - - 0x028CD3 0A:8CC3: D0 06     BNE bra_8CCB
C - - - - - 0x028CD5 0A:8CC5: 20 DE 8D  JSR sub_8DDE
C - - - - - 0x028CD8 0A:8CC8: 4C DE 85  JMP loc_85DE
bra_8CCB:
- - - - - - 0x028CDB 0A:8CCB: A6 6C     LDX ram_006C_object_index
- - - - - - 0x028CDD 0A:8CCD: A9 02     LDA #$02
- - - - - - 0x028CDF 0A:8CCF: 9D C8 07  STA ram_07C8,X
bra_8CD2_RTS:
C - - - - - 0x028CE2 0A:8CD2: 60        RTS



_off033_8CD3_43:
- D 0 - I - 0x028CE3 0A:8CD3: D9 8C     .word ofs_040_43_8CD9_00
- D 0 - I - 0x028CE5 0A:8CD5: 61 8D     .word ofs_040_43_8D61_01_RTS
- - - - - - 0x028CE7 0A:8CD7: 57 8C     .word ofs_040_43_8C57_02



ofs_040_43_8CD9_00:
C - - J - - 0x028CE9 0A:8CD9: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028CEC 0A:8CDC: D0 F4     BNE bra_8CD2_RTS
C - - - - - 0x028CEE 0A:8CDE: BD E6 07  LDA ram_07E6,X
C - - - - - 0x028CF1 0A:8CE1: 85 17     STA ram_0017_temp
C - - - - - 0x028CF3 0A:8CE3: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028CF6 0A:8CE6: A2 01     LDX #$01
C - - - - - 0x028CF8 0A:8CE8: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
C - - - - - 0x028CFB 0A:8CEB: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x028CFE 0A:8CEE: A5 01     LDA ram_0001_temp
C - - - - - 0x028D00 0A:8CF0: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x028D03 0A:8CF3: 38        SEC
C - - - - - 0x028D04 0A:8CF4: A5 00     LDA ram_0000_temp
C - - - - - 0x028D06 0A:8CF6: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x028D09 0A:8CF9: A5 03     LDA ram_0003_temp
C - - - - - 0x028D0B 0A:8CFB: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x028D0E 0A:8CFE: A9 2E     LDA #$2E
C - - - - - 0x028D10 0A:8D00: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x028D13 0A:8D03: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x028D16 0A:8D06: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x028D18 0A:8D08: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x028D1B 0A:8D0B: A5 17     LDA ram_0017_temp
C - - - - - 0x028D1D 0A:8D0D: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x028D20 0A:8D10: 20 32 93  JSR sub_9332_set_hp_for_enemy
C - - - - - 0x028D23 0A:8D13: 20 EC E7  JSR sub_0x03E7FC
C - - - - - 0x028D26 0A:8D16: A2 08     LDX #$08
C - - - - - 0x028D28 0A:8D18: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
C - - - - - 0x028D2B 0A:8D1B: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x028D2E 0A:8D1E: A5 01     LDA ram_0001_temp
C - - - - - 0x028D30 0A:8D20: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x028D33 0A:8D23: 18        CLC
C - - - - - 0x028D34 0A:8D24: A5 00     LDA ram_0000_temp
C - - - - - 0x028D36 0A:8D26: A4 17     LDY ram_0017_temp
C - - - - - 0x028D38 0A:8D28: 79 62 8D  ADC tbl_8D62,Y
C - - - - - 0x028D3B 0A:8D2B: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x028D3E 0A:8D2E: A9 00     LDA #$00
C - - - - - 0x028D40 0A:8D30: 79 64 8D  ADC tbl_8D64,Y
C - - - - - 0x028D43 0A:8D33: 09 60     ORA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x028D45 0A:8D35: 29 61     AND #con_obj_flag_01 + con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x028D47 0A:8D37: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x028D4A 0A:8D3A: A5 03     LDA ram_0003_temp
C - - - - - 0x028D4C 0A:8D3C: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x028D4F 0A:8D3F: A9 2C     LDA #$2C
C - - - - - 0x028D51 0A:8D41: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x028D54 0A:8D44: A5 17     LDA ram_0017_temp
C - - - - - 0x028D56 0A:8D46: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x028D59 0A:8D49: 20 32 93  JSR sub_9332_set_hp_for_enemy
C - - - - - 0x028D5C 0A:8D4C: 20 EC E7  JSR sub_0x03E7FC
C - - - - - 0x028D5F 0A:8D4F: A5 6C     LDA ram_006C_object_index
C - - - - - 0x028D61 0A:8D51: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x028D64 0A:8D54: 8A        TXA
C - - - - - 0x028D65 0A:8D55: A8        TAY
C - - - - - 0x028D66 0A:8D56: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028D68 0A:8D58: BD E6 07  LDA ram_07E6,X
C - - - - - 0x028D6B 0A:8D5B: 99 33 06  STA ram_obj_0634,Y
C - - - - - 0x028D6E 0A:8D5E: 4C DE 85  JMP loc_85DE



ofs_040_43_8D61_01_RTS:
; bzk optimize
C - - J - - 0x028D71 0A:8D61: 60        RTS



tbl_8D62:
- D 0 - - - 0x028D72 0A:8D62: 08        .byte $08   ; 00 
- D 0 - - - 0x028D73 0A:8D63: F8        .byte $F8   ; 01 



tbl_8D64:
- D 0 - - - 0x028D74 0A:8D64: 00        .byte $00   ; 00 
- D 0 - - - 0x028D75 0A:8D65: FF        .byte $FF   ; 01 



sub_8D66:
C - - - - - 0x028D76 0A:8D66: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x028D78 0A:8D68: D0 08     BNE bra_8D72_RTS
C - - - - - 0x028D7A 0A:8D6A: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028D7D 0A:8D6D: D0 03     BNE bra_8D72_RTS
C - - - - - 0x028D7F 0A:8D6F: 4C B9 FE  JMP loc_0x03FEC9
bra_8D72_RTS:
C - - - - - 0x028D82 0A:8D72: 60        RTS



sub_8D73:
C - - - - - 0x028D83 0A:8D73: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028D86 0A:8D76: D0 FA     BNE bra_8D72_RTS
C - - - - - 0x028D88 0A:8D78: 4C 83 83  JMP loc_8383_find_empty_object_slot_01_03



sub_8D7B:
C - - - - - 0x028D8B 0A:8D7B: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028D8E 0A:8D7E: D0 F2     BNE bra_8D72_RTS
C - - - - - 0x028D90 0A:8D80: 4C A0 83  JMP loc_83A0_find_empty_object_slot_04_06



sub_8D83:
C - - - - - 0x028D93 0A:8D83: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028D96 0A:8D86: D0 EA     BNE bra_8D72_RTS
C - - - - - 0x028D98 0A:8D88: 4C 92 83  JMP loc_8392_find_empty_object_slot_07_08



sub_8D8B:
C - - - - - 0x028D9B 0A:8D8B: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028D9E 0A:8D8E: D0 E2     BNE bra_8D72_RTS
C - - - - - 0x028DA0 0A:8D90: 4C B9 FE  JMP loc_0x03FEC9



_off033_8D93_36:
_off033_8D93_39:
_off033_8D93_4D:
_off033_8D93_4E:
- D 0 - I - 0x028DA3 0A:8D93: 99 8D     .word ofs_040_36_8D99_00
- D 0 - I - 0x028DA5 0A:8D95: C4 8D     .word ofs_040_36_8DC4_01_RTS
- D 0 - I - 0x028DA7 0A:8D97: 57 8C     .word ofs_040_36_8C57_02



ofs_040_36_8D99_00:
C - - J - - 0x028DA9 0A:8D99: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028DAC 0A:8D9C: D0 26     BNE bra_8DC4_RTS
C - - - - - 0x028DAE 0A:8D9E: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028DB1 0A:8DA1: 20 B9 FE  JSR sub_0x03FEC9
C - - - - - 0x028DB4 0A:8DA4: A9 08     LDA #$08
C - - - - - 0x028DB6 0A:8DA6: 9D 57 06  STA ram_obj_0658,X
loc_8DA9:
C D 0 - - - 0x028DB9 0A:8DA9: 20 FF 8D  JSR sub_8DFF
C - - - - - 0x028DBC 0A:8DAC: A9 08     LDA #$08
C - - - - - 0x028DBE 0A:8DAE: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x028DC1 0A:8DB1: A9 00     LDA #con_obj_type_00
C - - - - - 0x028DC3 0A:8DB3: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x028DC6 0A:8DB6: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x028DC9 0A:8DB9: 09 A8     ORA #con_obj_flag_08 + con_obj_flag_20 + con_obj_flag_not_visible
C - - - - - 0x028DCB 0A:8DBB: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x028DCE 0A:8DBE: 20 D5 8B  JSR sub_8BD5
C - - - - - 0x028DD1 0A:8DC1: 4C DE 85  JMP loc_85DE
bra_8DC4_RTS:
ofs_040_36_8DC4_01_RTS:
ofs_040_42_8DC4_01_RTS:
C - - J - - 0x028DD4 0A:8DC4: 60        RTS



_off033_8DC5_42:
_off033_8DC5_4C:
- D 0 - I - 0x028DD5 0A:8DC5: CB 8D     .word ofs_040_42_8DCB_00
- D 0 - I - 0x028DD7 0A:8DC7: C4 8D     .word ofs_040_42_8DC4_01_RTS
- D 0 - I - 0x028DD9 0A:8DC9: 57 8C     .word ofs_040_42_8C57_02



ofs_040_42_8DCB_00:
C - - J - - 0x028DDB 0A:8DCB: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028DDE 0A:8DCE: D0 F4     BNE bra_8DC4_RTS
C - - - - - 0x028DE0 0A:8DD0: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028DE3 0A:8DD3: 20 B9 FE  JSR sub_0x03FEC9
C - - - - - 0x028DE6 0A:8DD6: A9 0E     LDA #$0E
C - - - - - 0x028DE8 0A:8DD8: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x028DEB 0A:8DDB: 4C A9 8D  JMP loc_8DA9



sub_8DDE:
loc_8DDE:
C D 0 - - - 0x028DEE 0A:8DDE: 20 FF 8D  JSR sub_8DFF
C - - - - - 0x028DF1 0A:8DE1: 20 32 93  JSR sub_9332_set_hp_for_enemy
C - - - - - 0x028DF4 0A:8DE4: 4C EC E7  JMP loc_0x03E7FC



sub_8DE7:
C - - - - - 0x028DF7 0A:8DE7: BD DA 07  LDA ram_07DA,X
C - - - - - 0x028DFA 0A:8DEA: 85 00     STA ram_0000_temp
C - - - - - 0x028DFC 0A:8DEC: BD D4 07  LDA ram_07D4,X
C - - - - - 0x028DFF 0A:8DEF: 85 01     STA ram_0001_temp
C - - - - - 0x028E01 0A:8DF1: BC C2 07  LDY ram_07C2,X
C - - - - - 0x028E04 0A:8DF4: B9 82 92  LDA tbl_9282,Y
C - - - - - 0x028E07 0A:8DF7: 85 02     STA ram_0002_temp
C - - - - - 0x028E09 0A:8DF9: B9 DA 92  LDA tbl_92DA,Y
C - - - - - 0x028E0C 0A:8DFC: 85 03     STA ram_0003_temp
C - - - - - 0x028E0E 0A:8DFE: 60        RTS



sub_8DFF:
C - - - - - 0x028E0F 0A:8DFF: 20 D7 FE  JSR sub_0x03FEE7_clear_object_speed_and_data
C - - - - - 0x028E12 0A:8E02: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x028E15 0A:8E05: A5 00     LDA ram_0000_temp
C - - - - - 0x028E17 0A:8E07: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x028E1A 0A:8E0A: A5 01     LDA ram_0001_temp
C - - - - - 0x028E1C 0A:8E0C: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x028E1F 0A:8E0F: A5 02     LDA ram_0002_temp
C - - - - - 0x028E21 0A:8E11: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x028E24 0A:8E14: A5 03     LDA ram_0003_temp
C - - - - - 0x028E26 0A:8E16: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x028E29 0A:8E19: 60        RTS



sub_8E1A:
C - - - - - 0x028E2A 0A:8E1A: 38        SEC
C - - - - - 0x028E2B 0A:8E1B: BD DA 07  LDA ram_07DA,X
C - - - - - 0x028E2E 0A:8E1E: ED 38 04  SBC ram_plr_pos_X_hi
C - - - - - 0x028E31 0A:8E21: B0 04     BCS bra_8E27_RTS
C - - - - - 0x028E33 0A:8E23: 49 FF     EOR #$FF
C - - - - - 0x028E35 0A:8E25: 69 01     ADC #$01
bra_8E27_RTS:
C - - - - - 0x028E37 0A:8E27: 60        RTS



sub_8E28:
C - - - - - 0x028E38 0A:8E28: AC F6 07  LDY ram_quest
C - - - - - 0x028E3B 0A:8E2B: F0 19     BEQ bra_8E46
; if 2nd quest
C - - - - - 0x028E3D 0A:8E2D: A5 32     LDA ram_blk_hi
C - - - - - 0x028E3F 0A:8E2F: C9 04     CMP #$04
C - - - - - 0x028E41 0A:8E31: F0 0C     BEQ bra_8E3F
C - - - - - 0x028E43 0A:8E33: C9 0D     CMP #$0D
C - - - - - 0x028E45 0A:8E35: D0 15     BNE bra_8E4C
C - - - - - 0x028E47 0A:8E37: A5 33     LDA ram_blk_lo
C - - - - - 0x028E49 0A:8E39: C9 01     CMP #$01
C - - - - - 0x028E4B 0A:8E3B: D0 0F     BNE bra_8E4C
C - - - - - 0x028E4D 0A:8E3D: F0 07     BEQ bra_8E46    ; jmp
bra_8E3F:
- - - - - - 0x028E4F 0A:8E3F: BD C2 07  LDA ram_07C2,X
- - - - - - 0x028E52 0A:8E42: C9 0C     CMP #$0C
- - - - - - 0x028E54 0A:8E44: D0 06     BNE bra_8E4C
bra_8E46:
C - - - - - 0x028E56 0A:8E46: A5 1A     LDA ram_frm_cnt
C - - - - - 0x028E58 0A:8E48: 29 01     AND #$01
C - - - - - 0x028E5A 0A:8E4A: D0 03     BNE bra_8E4F_RTS
bra_8E4C:
C - - - - - 0x028E5C 0A:8E4C: DE CE 07  DEC ram_07CE,X
bra_8E4F_RTS:
C - - - - - 0x028E5F 0A:8E4F: 60        RTS



sub_8E50:
C - - - - - 0x028E60 0A:8E50: A9 02     LDA #$02
C - - - - - 0x028E62 0A:8E52: D0 02     BNE bra_8E56    ; jmp



sub_8E54:
C - - - - - 0x028E64 0A:8E54: A9 03     LDA #$03
bra_8E56:
C - - - - - 0x028E66 0A:8E56: 85 0D     STA ram_000D_temp
C - - - - - 0x028E68 0A:8E58: A9 00     LDA #$00
C - - - - - 0x028E6A 0A:8E5A: 85 0E     STA ram_000E_temp
C - - - - - 0x028E6C 0A:8E5C: A9 01     LDA #$01
C - - - - - 0x028E6E 0A:8E5E: 85 0C     STA ram_000C_temp
C - - - - - 0x028E70 0A:8E60: A9 09     LDA #$09
C - - - - - 0x028E72 0A:8E62: 85 0B     STA ram_000B_temp
loc_8E64:
C D 0 - - - 0x028E74 0A:8E64: A6 0C     LDX ram_000C_temp
bra_8E66_loop:
C - - - - - 0x028E76 0A:8E66: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x028E79 0A:8E69: C5 03     CMP ram_0003_temp
C - - - - - 0x028E7B 0A:8E6B: D0 02     BNE bra_8E6F
C - - - - - 0x028E7D 0A:8E6D: E6 0E     INC ram_000E_temp
bra_8E6F:
C - - - - - 0x028E7F 0A:8E6F: E8        INX
C - - - - - 0x028E80 0A:8E70: E4 0B     CPX ram_000B_temp
C - - - - - 0x028E82 0A:8E72: 90 F2     BCC bra_8E66_loop
C - - - - - 0x028E84 0A:8E74: A5 0E     LDA ram_000E_temp
C - - - - - 0x028E86 0A:8E76: C5 0D     CMP ram_000D_temp
C - - - - - 0x028E88 0A:8E78: B0 0C     BCS bra_8E86
C - - - - - 0x028E8A 0A:8E7A: A5 0B     LDA ram_000B_temp
C - - - - - 0x028E8C 0A:8E7C: C9 13     CMP #$13
C - - - - - 0x028E8E 0A:8E7E: F0 03     BEQ bra_8E83
C - - - - - 0x028E90 0A:8E80: 4C B9 FE  JMP loc_0x03FEC9
bra_8E83:
C - - - - - 0x028E93 0A:8E83: 4C 4D 83  JMP loc_834D_find_empty_object_slot_0D_12
bra_8E86:
C - - - - - 0x028E96 0A:8E86: A9 01     LDA #$01
C - - - - - 0x028E98 0A:8E88: 60        RTS



sub_8E89:
C - - - - - 0x028E99 0A:8E89: A9 0D     LDA #$0D
C - - - - - 0x028E9B 0A:8E8B: 85 0C     STA ram_000C_temp
C - - - - - 0x028E9D 0A:8E8D: A9 13     LDA #$13
C - - - - - 0x028E9F 0A:8E8F: 85 0B     STA ram_000B_temp
C - - - - - 0x028EA1 0A:8E91: A9 02     LDA #$02
C - - - - - 0x028EA3 0A:8E93: 85 0D     STA ram_000D_temp
C - - - - - 0x028EA5 0A:8E95: A9 00     LDA #$00
C - - - - - 0x028EA7 0A:8E97: 85 0E     STA ram_000E_temp
C - - - - - 0x028EA9 0A:8E99: 4C 64 8E  JMP loc_8E64



sub_8E9C:
C - - - - - 0x028EAC 0A:8E9C: BC C2 07  LDY ram_07C2,X
C - - - - - 0x028EAF 0A:8E9F: B9 DA 92  LDA tbl_92DA,Y
C - - - - - 0x028EB2 0A:8EA2: 85 0A     STA ram_000A_temp
C - - - - - 0x028EB4 0A:8EA4: A2 01     LDX #$01
bra_8EA6_loop:
C - - - - - 0x028EB6 0A:8EA6: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x028EB9 0A:8EA9: C5 0A     CMP ram_000A_temp
C - - - - - 0x028EBB 0A:8EAB: D0 07     BNE bra_8EB4
C - - - - - 0x028EBD 0A:8EAD: A5 6C     LDA ram_006C_object_index
C - - - - - 0x028EBF 0A:8EAF: DD 45 06  CMP ram_obj_0646,X
C - - - - - 0x028EC2 0A:8EB2: F0 0A     BEQ bra_8EBE
bra_8EB4:
C - - - - - 0x028EC4 0A:8EB4: E8        INX
C - - - - - 0x028EC5 0A:8EB5: E0 0D     CPX #$0D
C - - - - - 0x028EC7 0A:8EB7: 90 ED     BCC bra_8EA6_loop
C - - - - - 0x028EC9 0A:8EB9: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028ECB 0A:8EBB: A9 00     LDA #$00
C - - - - - 0x028ECD 0A:8EBD: 60        RTS
bra_8EBE:
C - - - - - 0x028ECE 0A:8EBE: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028ED0 0A:8EC0: A9 01     LDA #$01
bra_8EC2_RTS:
C - - - - - 0x028ED2 0A:8EC2: 60        RTS



sub_8EC3:
- - - - - - 0x028ED3 0A:8EC3: A2 0B     LDX #$0B
bra_8EC5_loop:
- - - - - - 0x028ED5 0A:8EC5: BD 4E 05  LDA ram_obj_id,X
- - - - - - 0x028ED8 0A:8EC8: F0 F8     BEQ bra_8EC2_RTS
- - - - - - 0x028EDA 0A:8ECA: E8        INX
- - - - - - 0x028EDB 0A:8ECB: E0 0D     CPX #$0D
- - - - - - 0x028EDD 0A:8ECD: 90 F6     BCC bra_8EC5_loop
- - - - - - 0x028EDF 0A:8ECF: B0 ED     BCS bra_8EBE    ; jmp



_off033_8ED1_05:
_off033_8ED1_06:
_off033_8ED1_07:
_off033_8ED1_1B:
_off033_8ED1_20:
_off033_8ED1_21:
_off033_8ED1_22:
_off033_8ED1_23:
_off033_8ED1_24:
_off033_8ED1_25:
_off033_8ED1_26:
- D 0 - I - 0x028EE1 0A:8ED1: D7 8E     .word ofs_040_05_8ED7_00
- D 0 - I - 0x028EE3 0A:8ED3: EB 8E     .word ofs_040_05_8EEB_01
- D 0 - I - 0x028EE5 0A:8ED5: 15 8F     .word ofs_040_05_8F15_02_RTS



ofs_040_05_8ED7_00:
C - - J - - 0x028EE7 0A:8ED7: 20 45 8F  JSR sub_8F45_check_for_blk_01_03
C - - - - - 0x028EEA 0A:8EDA: 90 01     BCC bra_8EDD
C - - - - - 0x028EEC 0A:8EDC: 60        RTS
bra_8EDD:
C - - - - - 0x028EED 0A:8EDD: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028EF0 0A:8EE0: D0 33     BNE bra_8F15_RTS
C - - - - - 0x028EF2 0A:8EE2: 20 74 92  JSR sub_9274_clear_07EC_07F3
C - - - - - 0x028EF5 0A:8EE5: 20 BC 83  JSR sub_83BC
C - - - - - 0x028EF8 0A:8EE8: 4C 0E 8F  JMP loc_8F0E



ofs_040_05_8EEB_01:
C - - J - - 0x028EFB 0A:8EEB: 20 45 8F  JSR sub_8F45_check_for_blk_01_03
C - - - - - 0x028EFE 0A:8EEE: 90 01     BCC bra_8EF1
- - - - - - 0x028F00 0A:8EF0: 60        RTS
bra_8EF1:
C - - - - - 0x028F01 0A:8EF1: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x028F04 0A:8EF4: BD E0 07  LDA ram_07E0,X
C - - - - - 0x028F07 0A:8EF7: D0 1C     BNE bra_8F15_RTS
C - - - - - 0x028F09 0A:8EF9: A9 80     LDA #$80
C - - - - - 0x028F0B 0A:8EFB: 8D F3 07  STA ram_07F3
C - - - - - 0x028F0E 0A:8EFE: A2 01     LDX #$01
C - - - - - 0x028F10 0A:8F00: 20 FF 8D  JSR sub_8DFF
C - - - - - 0x028F13 0A:8F03: 20 32 93  JSR sub_9332_set_hp_for_enemy
C - - - - - 0x028F16 0A:8F06: 85 3D     STA ram_hp_boss
C - - - - - 0x028F18 0A:8F08: 20 16 8F  JSR sub_8F16
C - - - - - 0x028F1B 0A:8F0B: 20 73 8F  JSR sub_8F73
loc_8F0E:
C D 0 - - - 0x028F1E 0A:8F0E: A6 6C     LDX ram_006C_object_index
C - - - - - 0x028F20 0A:8F10: FE C8 07  INC ram_07C8,X
C - - - - - 0x028F23 0A:8F13: 86 C3     STX ram_00C3
bra_8F15_RTS:
ofs_040_08_8F15_01_RTS:
ofs_040_09_8F15_01_RTS:
ofs_040_0A_8F15_01_RTS:
ofs_040_05_8F15_02_RTS:
C - - J - - 0x028F25 0A:8F15: 60        RTS



sub_8F16:
C - - - - - 0x028F26 0A:8F16: 20 32 8F  JSR sub_8F32
C - - - - - 0x028F29 0A:8F19: 90 FA     BCC bra_8F15_RTS
sub_8F1B:
C - - - - - 0x028F2B 0A:8F1B: 88        DEY
C - - - - - 0x028F2C 0A:8F1C: B9 55 8F  LDA tbl_8F55_chr_bank,Y
C - - - - - 0x028F2F 0A:8F1F: 85 48     STA ram_chr_bank_5122
C - - - - - 0x028F31 0A:8F21: B9 64 8F  LDA tbl_8F64_chr_bank,Y
C - - - - - 0x028F34 0A:8F24: 85 49     STA ram_chr_bank_5123
C - - - - - 0x028F36 0A:8F26: 4C 3C E3  JMP loc_0x03E34C



sub_0x028F39:
C - - - - - 0x028F39 0A:8F29: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x028F3C 0A:8F2C: 20 1B 8F  JSR sub_8F1B
C - - - - - 0x028F3F 0A:8F2F: 4C 78 8F  JMP loc_8F78



sub_8F32:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x028F42 0A:8F32: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x028F45 0A:8F35: C0 0B     CPY #$0B
C - - - - - 0x028F47 0A:8F37: F0 0A     BEQ bra_8F43
C - - - - - 0x028F49 0A:8F39: C0 08     CPY #$08
C - - - - - 0x028F4B 0A:8F3B: B0 04     BCS bra_8F41
C - - - - - 0x028F4D 0A:8F3D: C0 05     CPY #$05
C - - - - - 0x028F4F 0A:8F3F: B0 02     BCS bra_8F43
bra_8F41:
C - - - - - 0x028F51 0A:8F41: 38        SEC
C - - - - - 0x028F52 0A:8F42: 60        RTS
bra_8F43:
C - - - - - 0x028F53 0A:8F43: 18        CLC
C - - - - - 0x028F54 0A:8F44: 60        RTS



sub_8F45_check_for_blk_01_03:
; out
    ; C
        ; 0 = not blk 01-03-xx
        ; 1 = blk 01-03-xx
C - - - - - 0x028F55 0A:8F45: A5 32     LDA ram_blk_hi
C - - - - - 0x028F57 0A:8F47: C9 01     CMP #$01
C - - - - - 0x028F59 0A:8F49: D0 08     BNE bra_8F53
C - - - - - 0x028F5B 0A:8F4B: A5 33     LDA ram_blk_lo
C - - - - - 0x028F5D 0A:8F4D: C9 03     CMP #$03
C - - - - - 0x028F5F 0A:8F4F: D0 02     BNE bra_8F53
C - - - - - 0x028F61 0A:8F51: 38        SEC
C - - - - - 0x028F62 0A:8F52: 60        RTS
bra_8F53:
C - - - - - 0x028F63 0A:8F53: 18        CLC
C - - - - - 0x028F64 0A:8F54: 60        RTS



tbl_8F55_chr_bank:
- D 0 - - - 0x028F65 0A:8F55: 18        .byte con__chr_bank + $18   ; 01 
- D 0 - - - 0x028F66 0A:8F56: 1C        .byte con__chr_bank + $1C   ; 02 
- D 0 - - - 0x028F67 0A:8F57: 1A        .byte con__chr_bank + $1A   ; 03 
- D 0 - - - 0x028F68 0A:8F58: 28        .byte con__chr_bank + $28   ; 04 
- D 0 - - - 0x028F69 0A:8F59: 1E        .byte con__chr_bank + $1E   ; 05 
- D 0 - - - 0x028F6A 0A:8F5A: 20        .byte con__chr_bank + $20   ; 06 
- D 0 - - - 0x028F6B 0A:8F5B: 22        .byte con__chr_bank + $22   ; 07 
- D 0 - - - 0x028F6C 0A:8F5C: 20        .byte con__chr_bank + $20   ; 08 
- D 0 - - - 0x028F6D 0A:8F5D: 26        .byte con__chr_bank + $26   ; 09 
- D 0 - - - 0x028F6E 0A:8F5E: 24        .byte con__chr_bank + $24   ; 0A 
- D 0 - - - 0x028F6F 0A:8F5F: 1C        .byte con__chr_bank + $1C   ; 0B 
- D 0 - - - 0x028F70 0A:8F60: 2C        .byte con__chr_bank + $2C   ; 0C 
- D 0 - - - 0x028F71 0A:8F61: 30        .byte con__chr_bank + $30   ; 0D 
- - - - - - 0x028F72 0A:8F62: 1A        .byte con__chr_bank + $1A   ; 0E 
- - - - - - 0x028F73 0A:8F63: 1C        .byte con__chr_bank + $1C   ; 0F 



tbl_8F64_chr_bank:
- D 0 - - - 0x028F74 0A:8F64: 19        .byte con__chr_bank + $19   ; 01 
- D 0 - - - 0x028F75 0A:8F65: 7B        .byte con__chr_bank + $7B   ; 02 
- D 0 - - - 0x028F76 0A:8F66: 1B        .byte con__chr_bank + $1B   ; 03 
- D 0 - - - 0x028F77 0A:8F67: 1D        .byte con__chr_bank + $1D   ; 04 
- D 0 - - - 0x028F78 0A:8F68: 1F        .byte con__chr_bank + $1F   ; 05 
- D 0 - - - 0x028F79 0A:8F69: 21        .byte con__chr_bank + $21   ; 06 
- D 0 - - - 0x028F7A 0A:8F6A: 23        .byte con__chr_bank + $23   ; 07 
- D 0 - - - 0x028F7B 0A:8F6B: 21        .byte con__chr_bank + $21   ; 08 
- D 0 - - - 0x028F7C 0A:8F6C: 29        .byte con__chr_bank + $29   ; 09 
- D 0 - - - 0x028F7D 0A:8F6D: 25        .byte con__chr_bank + $25   ; 0A 
- D 0 - - - 0x028F7E 0A:8F6E: 2F        .byte con__chr_bank + $2F   ; 0B 
- D 0 - - - 0x028F7F 0A:8F6F: 2D        .byte con__chr_bank + $2D   ; 0C 
- D 0 - - - 0x028F80 0A:8F70: 31        .byte con__chr_bank + $31   ; 0D 
- - - - - - 0x028F81 0A:8F71: 1B        .byte con__chr_bank + $1B   ; 0E 
- - - - - - 0x028F82 0A:8F72: 1D        .byte con__chr_bank + $1D   ; 0F 



sub_8F73:
C - - - - - 0x028F83 0A:8F73: 20 32 8F  JSR sub_8F32
C - - - - - 0x028F86 0A:8F76: 90 2F     BCC bra_8FA7_RTS
loc_8F78:
C D 0 - - - 0x028F88 0A:8F78: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x028F8B 0A:8F7B: 85 C1     STA ram_00C1
sub_0x028F8D:
C - - - - - 0x028F8D 0A:8F7D: 86 0F     STX ram_000F_temp
C - - - - - 0x028F8F 0A:8F7F: 20 30 E7  JSR sub_0x03E740
C - - - - - 0x028F92 0A:8F82: A6 0F     LDX ram_000F_temp
C - - - - - 0x028F94 0A:8F84: A5 C1     LDA ram_00C1
C - - - - - 0x028F96 0A:8F86: F0 18     BEQ bra_8FA0
; * 04
C - - - - - 0x028F98 0A:8F88: 0A        ASL
C - - - - - 0x028F99 0A:8F89: 0A        ASL
C - - - - - 0x028F9A 0A:8F8A: A8        TAY
C - - - - - 0x028F9B 0A:8F8B: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x028F9D 0A:8F8D: 38        SEC
C - - - - - 0x028F9E 0A:8F8E: E9 11     SBC #$11
C - - - - - 0x028FA0 0A:8F90: AA        TAX
C - - - - - 0x028FA1 0A:8F91: A9 04     LDA #$04
C - - - - - 0x028FA3 0A:8F93: 85 0E     STA ram_000E_t007_colors_counter
bra_8F95_loop:
C - - - - - 0x028FA5 0A:8F95: B9 A8 8F  LDA tbl_8FA8_colors,Y
C - - - - - 0x028FA8 0A:8F98: 20 A3 8F  JSR sub_8FA3_write_to_buffer_and_INX
C - - - - - 0x028FAB 0A:8F9B: C8        INY
C - - - - - 0x028FAC 0A:8F9C: C6 0E     DEC ram_000E_t007_colors_counter
C - - - - - 0x028FAE 0A:8F9E: D0 F5     BNE bra_8F95_loop
bra_8FA0:
C - - - - - 0x028FB0 0A:8FA0: A6 0F     LDX ram_000F_temp
C - - - - - 0x028FB2 0A:8FA2: 60        RTS



sub_8FA3_write_to_buffer_and_INX:
C - - - - - 0x028FB3 0A:8FA3: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x028FB6 0A:8FA6: E8        INX
bra_8FA7_RTS:
C - - - - - 0x028FB7 0A:8FA7: 60        RTS



tbl_8FA8_colors:
- - - - - - 0x028FB8 0A:8FA8: 0F        .byte $0F, $00, $00, $00   ; 00 unused 0x028F96
- D 0 - - - 0x028FBC 0A:8FAC: 0F        .byte $0F, $0F, $12, $39   ; 01 
- D 0 - - - 0x028FC0 0A:8FB0: 0F        .byte $0F, $28, $0F, $1B   ; 02 
- D 0 - - - 0x028FC4 0A:8FB4: 0F        .byte $0F, $0F, $18, $38   ; 03 
- D 0 - - - 0x028FC8 0A:8FB8: 0F        .byte $0F, $0F, $00, $13   ; 04 
- D 0 - - - 0x028FCC 0A:8FBC: 0F        .byte $0F, $0F, $1B, $27   ; 05 
- D 0 - - - 0x028FD0 0A:8FC0: 0F        .byte $0F, $0F, $00, $32   ; 06 
- D 0 - - - 0x028FD4 0A:8FC4: 0F        .byte $0F, $0F, $2C, $32   ; 07 
- D 0 - - - 0x028FD8 0A:8FC8: 0F        .byte $0F, $16, $28, $38   ; 08 
- D 0 - - - 0x028FDC 0A:8FCC: 0F        .byte $0F, $0F, $16, $37   ; 09 
- D 0 - - - 0x028FE0 0A:8FD0: 0F        .byte $0F, $0F, $10, $20   ; 0A 
- D 0 - - - 0x028FE4 0A:8FD4: 0F        .byte $0F, $04, $13, $34   ; 0B 
- D 0 - - - 0x028FE8 0A:8FD8: 0F        .byte $0F, $0F, $08, $34   ; 0C 
- D 0 - - - 0x028FEC 0A:8FDC: 0F        .byte $0F, $0F, $14, $27   ; 0D 
- - - - - - 0x028FF0 0A:8FE0: 0F        .byte $0F, $00, $10, $38   ; 0E 
- - - - - - 0x028FF4 0A:8FE4: 00        .byte $00, $00, $00, $00   ; 0F 
- - - - - - 0x028FF8 0A:8FE8: 00        .byte $00, $00, $00, $00   ; 10 
- D 0 - - - 0x028FFC 0A:8FEC: 0F        .byte $0F, $0F, $04, $33   ; 11 
- D 0 - - - 0x029000 0A:8FF0: 0F        .byte $0F, $0F, $16, $17   ; 12 
- D 0 - - - 0x029004 0A:8FF4: 0F        .byte $0F, $0F, $16, $27   ; 13 
- - - - - - 0x029008 0A:8FF8: 0F        .byte $0F, $0F, $16, $37   ; 14 



_off033_8FFC_1D:
- D 0 - I - 0x02900C 0A:8FFC: 02 90     .word ofs_040_1D_9002_00
- D 0 - I - 0x02900E 0A:8FFE: 1C 90     .word ofs_040_1D_901C_01
- D 0 - I - 0x029010 0A:9000: 9F 90     .word ofs_040_1D_909F_02_RTS



ofs_040_1C_9002_00:
ofs_040_1D_9002_00:
ofs_040_1E_9002_00:
ofs_040_1F_9002_00:
C - - J - - 0x029012 0A:9002: BD E0 07  LDA ram_07E0,X
C - - - - - 0x029015 0A:9005: F0 01     BEQ bra_9008
C - - - - - 0x029017 0A:9007: 60        RTS
bra_9008:
C - - - - - 0x029018 0A:9008: 20 74 92  JSR sub_9274_clear_07EC_07F3
C - - - - - 0x02901B 0A:900B: A2 01     LDX #$01
C - - - - - 0x02901D 0A:900D: A9 0C     LDA #$0C
C - - - - - 0x02901F 0A:900F: 85 00     STA ram_0000_temp
bra_9011_loop:
C - - - - - 0x029021 0A:9011: 20 BC 83  JSR sub_83BC
C - - - - - 0x029024 0A:9014: E8        INX
C - - - - - 0x029025 0A:9015: C6 00     DEC ram_0000_temp
C - - - - - 0x029027 0A:9017: D0 F8     BNE bra_9011_loop
C - - - - - 0x029029 0A:9019: 4C 0E 8F  JMP loc_8F0E



ofs_040_1D_901C_01:
C - - J - - 0x02902C 0A:901C: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x02902F 0A:901F: A5 BD     LDA ram_copy_hp_boss
C - - - - - 0x029031 0A:9021: 85 16     STA ram_0016_temp
C - - - - - 0x029033 0A:9023: A9 0C     LDA #$0C
C - - - - - 0x029035 0A:9025: 85 15     STA ram_0015_temp
C - - - - - 0x029037 0A:9027: A5 33     LDA ram_blk_lo
C - - - - - 0x029039 0A:9029: C9 02     CMP #$02
C - - - - - 0x02903B 0A:902B: F0 08     BEQ bra_9035
C - - - - - 0x02903D 0A:902D: A5 BE     LDA ram_00BE
C - - - - - 0x02903F 0A:902F: D0 02     BNE bra_9033
- - - - - - 0x029041 0A:9031: A9 01     LDA #$01
bra_9033:
C - - - - - 0x029043 0A:9033: 85 15     STA ram_0015_temp
bra_9035:
C - - - - - 0x029045 0A:9035: A2 01     LDX #$01
C - - - - - 0x029047 0A:9037: A9 80     LDA #$80
C - - - - - 0x029049 0A:9039: 8D F3 07  STA ram_07F3
C - - - - - 0x02904C 0A:903C: A9 00     LDA #$00
C - - - - - 0x02904E 0A:903E: 85 17     STA ram_0017_temp
bra_9040_loop:
C - - - - - 0x029050 0A:9040: 20 FF 8D  JSR sub_8DFF
C - - - - - 0x029053 0A:9043: 20 32 93  JSR sub_9332_set_hp_for_enemy
C - - - - - 0x029056 0A:9046: 85 3D     STA ram_hp_boss
C - - - - - 0x029058 0A:9048: A9 2D     LDA #$2D
C - - - - - 0x02905A 0A:904A: 85 03     STA ram_0003_temp
C - - - - - 0x02905C 0A:904C: A9 80     LDA #$80
C - - - - - 0x02905E 0A:904E: 85 02     STA ram_0002_temp
C - - - - - 0x029060 0A:9050: A5 33     LDA ram_blk_lo
C - - - - - 0x029062 0A:9052: C9 02     CMP #$02
C - - - - - 0x029064 0A:9054: F0 07     BEQ bra_905D
; restore what's left of dragon snake boss
C - - - - - 0x029066 0A:9056: A5 16     LDA ram_0016_temp
C - - - - - 0x029068 0A:9058: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x02906B 0A:905B: 85 3D     STA ram_hp_boss
bra_905D:
C - - - - - 0x02906D 0A:905D: 86 10     STX ram_0010_temp
C - - - - - 0x02906F 0A:905F: A5 17     LDA ram_0017_temp
C - - - - - 0x029071 0A:9061: 4A        LSR
C - - - - - 0x029072 0A:9062: A8        TAY
C - - - - - 0x029073 0A:9063: A5 17     LDA ram_0017_temp
C - - - - - 0x029075 0A:9065: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x029078 0A:9068: 29 01     AND #$01
C - - - - - 0x02907A 0A:906A: F0 0B     BEQ bra_9077
C - - - - - 0x02907C 0A:906C: A5 10     LDA ram_0010_temp
C - - - - - 0x02907E 0A:906E: 19 EC 07  ORA ram_07EC,Y
C - - - - - 0x029081 0A:9071: 99 EC 07  STA ram_07EC,Y
C - - - - - 0x029084 0A:9074: 4C 80 90  JMP loc_9080
bra_9077:
C - - - - - 0x029087 0A:9077: A5 10     LDA ram_0010_temp
; * 10
C - - - - - 0x029089 0A:9079: 0A        ASL
C - - - - - 0x02908A 0A:907A: 0A        ASL
C - - - - - 0x02908B 0A:907B: 0A        ASL
C - - - - - 0x02908C 0A:907C: 0A        ASL
C - - - - - 0x02908D 0A:907D: 99 EC 07  STA ram_07EC,Y
loc_9080:
C D 0 - - - 0x029090 0A:9080: A5 17     LDA ram_0017_temp
C - - - - - 0x029092 0A:9082: D0 03     BNE bra_9087
C - - - - - 0x029094 0A:9084: 20 16 8F  JSR sub_8F16
bra_9087:
C - - - - - 0x029097 0A:9087: E6 17     INC ram_0017_temp
C - - - - - 0x029099 0A:9089: E8        INX
C - - - - - 0x02909A 0A:908A: A5 17     LDA ram_0017_temp
C - - - - - 0x02909C 0A:908C: C5 15     CMP ram_0015_temp
C - - - - - 0x02909E 0A:908E: D0 B0     BNE bra_9040_loop
C - - - - - 0x0290A0 0A:9090: A2 01     LDX #$01
C - - - - - 0x0290A2 0A:9092: A5 15     LDA ram_0015_temp
C - - - - - 0x0290A4 0A:9094: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x0290A7 0A:9097: 20 73 8F  JSR sub_8F73
C - - - - - 0x0290AA 0A:909A: A6 6C     LDX ram_006C_object_index
C - - - - - 0x0290AC 0A:909C: FE C8 07  INC ram_07C8,X
ofs_040_1D_909F_02_RTS:
C - - - - - 0x0290AF 0A:909F: 60        RTS



_off033_90A0_1F:
- D 0 - I - 0x0290B0 0A:90A0: 02 90     .word ofs_040_1F_9002_00
- D 0 - I - 0x0290B2 0A:90A2: A6 90     .word ofs_040_1F_90A6_01
- D 0 - I - 0x0290B4 0A:90A4: DC 90     .word ofs_040_1F_90DC_02_RTS



ofs_040_1F_90A6_01:
C - - J - - 0x0290B6 0A:90A6: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x0290B9 0A:90A9: BD E0 07  LDA ram_07E0,X
C - - - - - 0x0290BC 0A:90AC: D0 2E     BNE bra_90DC_RTS
C - - - - - 0x0290BE 0A:90AE: A9 80     LDA #$80
C - - - - - 0x0290C0 0A:90B0: 8D F3 07  STA ram_07F3
C - - - - - 0x0290C3 0A:90B3: A2 01     LDX #$01
C - - - - - 0x0290C5 0A:90B5: A9 02     LDA #$02
C - - - - - 0x0290C7 0A:90B7: 85 16     STA ram_0016_temp
bra_90B9_loop:
C - - - - - 0x0290C9 0A:90B9: 20 FF 8D  JSR sub_8DFF
C - - - - - 0x0290CC 0A:90BC: 20 32 93  JSR sub_9332_set_hp_for_enemy
C - - - - - 0x0290CF 0A:90BF: A9 40     LDA #$40
C - - - - - 0x0290D1 0A:90C1: 85 3D     STA ram_hp_boss
C - - - - - 0x0290D3 0A:90C3: A5 16     LDA ram_0016_temp
C - - - - - 0x0290D5 0A:90C5: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x0290D8 0A:90C8: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x0290DB 0A:90CB: E8        INX
C - - - - - 0x0290DC 0A:90CC: C6 16     DEC ram_0016_temp
C - - - - - 0x0290DE 0A:90CE: D0 E9     BNE bra_90B9_loop
C - - - - - 0x0290E0 0A:90D0: CA        DEX
C - - - - - 0x0290E1 0A:90D1: 20 16 8F  JSR sub_8F16
C - - - - - 0x0290E4 0A:90D4: 20 73 8F  JSR sub_8F73
C - - - - - 0x0290E7 0A:90D7: A6 6C     LDX ram_006C_object_index
C - - - - - 0x0290E9 0A:90D9: FE C8 07  INC ram_07C8,X
bra_90DC_RTS:
ofs_040_1F_90DC_02_RTS:
C - - - - - 0x0290EC 0A:90DC: 60        RTS



_off033_90DD_1E:
- D 0 - I - 0x0290ED 0A:90DD: 02 90     .word ofs_040_1E_9002_00
- D 0 - I - 0x0290EF 0A:90DF: E3 90     .word ofs_040_1E_90E3_01
- D 0 - I - 0x0290F1 0A:90E1: 41 91     .word ofs_040_1E_9141_02_RTS



ofs_040_1E_90E3_01:
C - - J - - 0x0290F3 0A:90E3: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x0290F6 0A:90E6: BD E0 07  LDA ram_07E0,X
C - - - - - 0x0290F9 0A:90E9: D0 56     BNE bra_9141_RTS
C - - - - - 0x0290FB 0A:90EB: A9 80     LDA #$80
C - - - - - 0x0290FD 0A:90ED: 8D F3 07  STA ram_07F3
C - - - - - 0x029100 0A:90F0: A2 01     LDX #$01
C - - - - - 0x029102 0A:90F2: A9 00     LDA #$00
C - - - - - 0x029104 0A:90F4: 85 16     STA ram_0016_temp
bra_90F6_loop:
C - - - - - 0x029106 0A:90F6: 20 FF 8D  JSR sub_8DFF
C - - - - - 0x029109 0A:90F9: 20 32 93  JSR sub_9332_set_hp_for_enemy
C - - - - - 0x02910C 0A:90FC: 85 3D     STA ram_hp_boss
C - - - - - 0x02910E 0A:90FE: A5 16     LDA ram_0016_temp
C - - - - - 0x029110 0A:9100: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x029113 0A:9103: A8        TAY
C - - - - - 0x029114 0A:9104: A9 00     LDA #$00
C - - - - - 0x029116 0A:9106: 85 17     STA ram_0017_temp
C - - - - - 0x029118 0A:9108: B9 42 91  LDA tbl_9142_pos_X_hi,Y
C - - - - - 0x02911B 0A:910B: 10 04     BPL bra_9111
C - - - - - 0x02911D 0A:910D: A9 FF     LDA #$FF
C - - - - - 0x02911F 0A:910F: 85 17     STA ram_0017_temp
bra_9111:
C - - - - - 0x029121 0A:9111: B9 42 91  LDA tbl_9142_pos_X_hi,Y
C - - - - - 0x029124 0A:9114: 18        CLC
C - - - - - 0x029125 0A:9115: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x029128 0A:9118: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02912B 0A:911B: A5 17     LDA ram_0017_temp
C - - - - - 0x02912D 0A:911D: 69 00     ADC #$00
C - - - - - 0x02912F 0A:911F: 29 01     AND #$01
C - - - - - 0x029131 0A:9121: F0 04     BEQ bra_9127
C - - - - - 0x029133 0A:9123: 09 88     ORA #con_obj_flag_08 + con_obj_flag_not_visible
C - - - - - 0x029135 0A:9125: D0 02     BNE bra_9129    ; jmp
bra_9127:
C - - - - - 0x029137 0A:9127: 09 40     ORA #con_obj_flag_40
bra_9129:
C - - - - - 0x029139 0A:9129: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02913C 0A:912C: E8        INX
C - - - - - 0x02913D 0A:912D: E6 16     INC ram_0016_temp
C - - - - - 0x02913F 0A:912F: A5 16     LDA ram_0016_temp
C - - - - - 0x029141 0A:9131: C9 04     CMP #$04
C - - - - - 0x029143 0A:9133: D0 C1     BNE bra_90F6_loop
C - - - - - 0x029145 0A:9135: CA        DEX
C - - - - - 0x029146 0A:9136: 20 16 8F  JSR sub_8F16
C - - - - - 0x029149 0A:9139: 20 73 8F  JSR sub_8F73
C - - - - - 0x02914C 0A:913C: A6 6C     LDX ram_006C_object_index
C - - - - - 0x02914E 0A:913E: FE C8 07  INC ram_07C8,X
bra_9141_RTS:
ofs_040_1E_9141_02_RTS:
C - - - - - 0x029151 0A:9141: 60        RTS



tbl_9142_pos_X_hi:
- D 0 - - - 0x029152 0A:9142: 00        .byte $00   ; 00 
- D 0 - - - 0x029153 0A:9143: 18        .byte $18   ; 01 
- D 0 - - - 0x029154 0A:9144: E8        .byte $E8   ; 02 
- D 0 - - - 0x029155 0A:9145: 20        .byte $20   ; 03 
- - - - - - 0x029156 0A:9146: E0        .byte $E0   ; 04 
- - - - - - 0x029157 0A:9147: 2C        .byte $2C   ; 05 
- - - - - - 0x029158 0A:9148: D6        .byte $D6   ; 06 
- - - - - - 0x029159 0A:9149: 09        .byte $09   ; 07 



_off033_914A_1C:
- D 0 - I - 0x02915A 0A:914A: 02 90     .word ofs_040_1C_9002_00
- D 0 - I - 0x02915C 0A:914C: 50 91     .word ofs_040_1C_9150_01
- D 0 - I - 0x02915E 0A:914E: A2 91     .word ofs_040_1C_91A2_02_RTS



ofs_040_1C_9150_01:
C - - J - - 0x029160 0A:9150: 20 E7 8D  JSR sub_8DE7
C - - - - - 0x029163 0A:9153: BD E0 07  LDA ram_07E0,X
C - - - - - 0x029166 0A:9156: D0 4A     BNE bra_91A2_RTS
C - - - - - 0x029168 0A:9158: A9 80     LDA #$80
C - - - - - 0x02916A 0A:915A: 8D F3 07  STA ram_07F3
C - - - - - 0x02916D 0A:915D: A2 01     LDX #$01
C - - - - - 0x02916F 0A:915F: A9 00     LDA #$00
C - - - - - 0x029171 0A:9161: 85 16     STA ram_0016_temp
bra_9163_loop:
C - - - - - 0x029173 0A:9163: 20 FF 8D  JSR sub_8DFF
C - - - - - 0x029176 0A:9166: 20 32 93  JSR sub_9332_set_hp_for_enemy
C - - - - - 0x029179 0A:9169: A9 40     LDA #$40
C - - - - - 0x02917B 0A:916B: 85 3D     STA ram_hp_boss
C - - - - - 0x02917D 0A:916D: A5 16     LDA ram_0016_temp
C - - - - - 0x02917F 0A:916F: F0 02     BEQ bra_9173
C - - - - - 0x029181 0A:9171: A9 02     LDA #$02
bra_9173:
C - - - - - 0x029183 0A:9173: 9D 06 06  STA ram_obj_config,X
; * 08
C - - - - - 0x029186 0A:9176: 0A        ASL
C - - - - - 0x029187 0A:9177: 0A        ASL
C - - - - - 0x029188 0A:9178: 0A        ASL
C - - - - - 0x029189 0A:9179: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x02918C 0A:917C: A9 80     LDA #$80
C - - - - - 0x02918E 0A:917E: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x029191 0A:9181: A4 16     LDY ram_0016_temp
C - - - - - 0x029193 0A:9183: B9 A3 91  LDA tbl_91A3_pos_X_hi,Y
C - - - - - 0x029196 0A:9186: 18        CLC
C - - - - - 0x029197 0A:9187: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x02919A 0A:918A: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02919D 0A:918D: E8        INX
C - - - - - 0x02919E 0A:918E: E6 16     INC ram_0016_temp
C - - - - - 0x0291A0 0A:9190: A5 16     LDA ram_0016_temp
C - - - - - 0x0291A2 0A:9192: C9 06     CMP #$06
C - - - - - 0x0291A4 0A:9194: D0 CD     BNE bra_9163_loop
C - - - - - 0x0291A6 0A:9196: CA        DEX
C - - - - - 0x0291A7 0A:9197: 20 16 8F  JSR sub_8F16
C - - - - - 0x0291AA 0A:919A: 20 73 8F  JSR sub_8F73
C - - - - - 0x0291AD 0A:919D: A6 6C     LDX ram_006C_object_index
C - - - - - 0x0291AF 0A:919F: FE C8 07  INC ram_07C8,X
bra_91A2_RTS:
ofs_040_1C_91A2_02_RTS:
C - - - - - 0x0291B2 0A:91A2: 60        RTS



tbl_91A3_pos_X_hi:
- D 0 - - - 0x0291B3 0A:91A3: 00        .byte $00   ; 00 
- D 0 - - - 0x0291B4 0A:91A4: 04        .byte $04   ; 01 
- D 0 - - - 0x0291B5 0A:91A5: FC        .byte $FC   ; 02 
- D 0 - - - 0x0291B6 0A:91A6: 08        .byte $08   ; 03 
- D 0 - - - 0x0291B7 0A:91A7: F8        .byte $F8   ; 04 
- D 0 - - - 0x0291B8 0A:91A8: 0C        .byte $0C   ; 05 
- - - - - - 0x0291B9 0A:91A9: F4        .byte $F4   ; 06 
- - - - - - 0x0291BA 0A:91AA: 02        .byte $02   ; 07 



_off033_91AB_09:
- D 0 - I - 0x0291BB 0A:91AB: B3 91     .word ofs_040_09_91B3_00
- D 0 - I - 0x0291BD 0A:91AD: 15 8F     .word ofs_040_09_8F15_01_RTS



_off033_91AF_08:
- D 0 - I - 0x0291BF 0A:91AF: CD 91     .word ofs_040_08_91CD_00
- D 0 - I - 0x0291C1 0A:91B1: 15 8F     .word ofs_040_08_8F15_01_RTS



ofs_040_09_91B3_00:
C - - J - - 0x0291C3 0A:91B3: 20 66 8D  JSR sub_8D66
C - - - - - 0x0291C6 0A:91B6: D0 5E     BNE bra_9216_RTS
C - - - - - 0x0291C8 0A:91B8: A9 00     LDA #$00
C - - - - - 0x0291CA 0A:91BA: 85 10     STA ram_0010_temp
C - - - - - 0x0291CC 0A:91BC: 20 B9 FE  JSR sub_0x03FEC9
C - - - - - 0x0291CF 0A:91BF: D0 55     BNE bra_9216_RTS
C - - - - - 0x0291D1 0A:91C1: A9 13     LDA #$13
C - - - - - 0x0291D3 0A:91C3: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0291D6 0A:91C6: A9 00     LDA #$00
C - - - - - 0x0291D8 0A:91C8: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x0291DB 0A:91CB: F0 18     BEQ bra_91E5    ; jmp



ofs_040_08_91CD_00:
C - - J - - 0x0291DD 0A:91CD: 20 66 8D  JSR sub_8D66
C - - - - - 0x0291E0 0A:91D0: D0 44     BNE bra_9216_RTS
C - - - - - 0x0291E2 0A:91D2: A9 02     LDA #$02
C - - - - - 0x0291E4 0A:91D4: 85 10     STA ram_0010_temp
bra_91D6_loop:
C - - - - - 0x0291E6 0A:91D6: 20 B9 FE  JSR sub_0x03FEC9
C - - - - - 0x0291E9 0A:91D9: D0 3B     BNE bra_9216_RTS
C - - - - - 0x0291EB 0A:91DB: A9 78     LDA #$78
C - - - - - 0x0291ED 0A:91DD: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0291F0 0A:91E0: A9 60     LDA #$60
C - - - - - 0x0291F2 0A:91E2: 9D EF 05  STA ram_05EF_obj,X
bra_91E5:
C - - - - - 0x0291F5 0A:91E5: A4 10     LDY ram_0010_temp
C - - - - - 0x0291F7 0A:91E7: B9 17 92  LDA tbl_9217_pos_X_hi,Y
C - - - - - 0x0291FA 0A:91EA: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0291FD 0A:91ED: B9 1A 92  LDA tbl_921A_pos_Y_hi,Y
C - - - - - 0x029200 0A:91F0: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x029203 0A:91F3: A9 00     LDA #$00
C - - - - - 0x029205 0A:91F5: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x029208 0A:91F8: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02920B 0A:91FB: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02920E 0A:91FE: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x029211 0A:9201: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x029214 0A:9204: A9 C8     LDA #con_obj_flag_08 + con_obj_flag_40 + con_obj_flag_not_visible
C - - - - - 0x029216 0A:9206: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x029219 0A:9209: A5 10     LDA ram_0010_temp
C - - - - - 0x02921B 0A:920B: F0 04     BEQ bra_9211
C - - - - - 0x02921D 0A:920D: C6 10     DEC ram_0010_temp
C - - - - - 0x02921F 0A:920F: D0 C5     BNE bra_91D6_loop
bra_9211:
C - - - - - 0x029221 0A:9211: A6 6C     LDX ram_006C_object_index
C - - - - - 0x029223 0A:9213: FE C8 07  INC ram_07C8,X
bra_9216_RTS:
C - - - - - 0x029226 0A:9216: 60        RTS



tbl_9217_pos_X_hi:
- D 0 - - - 0x029227 0A:9217: 80        .byte $80   ; 00 
- D 0 - - - 0x029228 0A:9218: 40        .byte $40   ; 01 
- D 0 - - - 0x029229 0A:9219: C0        .byte $C0   ; 02 



tbl_921A_pos_Y_hi:
- D 0 - - - 0x02922A 0A:921A: 40        .byte $40   ; 00 
- D 0 - - - 0x02922B 0A:921B: 50        .byte $50   ; 01 
- D 0 - - - 0x02922C 0A:921C: 40        .byte $40   ; 02 



_off033_921D_0A:
- D 0 - I - 0x02922D 0A:921D: 21 92     .word ofs_040_0A_9221_00
- D 0 - I - 0x02922F 0A:921F: 15 8F     .word ofs_040_0A_8F15_01_RTS



ofs_040_0A_9221_00:
C - - J - - 0x029231 0A:9221: 20 66 8D  JSR sub_8D66
C - - - - - 0x029234 0A:9224: D0 43     BNE bra_9269_RTS
C - - - - - 0x029236 0A:9226: A9 02     LDA #$02
C - - - - - 0x029238 0A:9228: 85 10     STA ram_0010_temp
bra_922A_loop:
C - - - - - 0x02923A 0A:922A: 20 B9 FE  JSR sub_0x03FEC9
C - - - - - 0x02923D 0A:922D: D0 3A     BNE bra_9269_RTS
C - - - - - 0x02923F 0A:922F: A9 12     LDA #$12
C - - - - - 0x029241 0A:9231: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x029244 0A:9234: A9 00     LDA #$00
C - - - - - 0x029246 0A:9236: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x029249 0A:9239: A4 10     LDY ram_0010_temp
C - - - - - 0x02924B 0A:923B: 98        TYA
C - - - - - 0x02924C 0A:923C: 09 80     ORA #$80
C - - - - - 0x02924E 0A:923E: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x029251 0A:9241: B9 6A 92  LDA tbl_926A_pos_X_hi,Y
C - - - - - 0x029254 0A:9244: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x029257 0A:9247: B9 6F 92  LDA tbl_926F_pos_Y_hi,Y
C - - - - - 0x02925A 0A:924A: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02925D 0A:924D: A9 88     LDA #con_obj_flag_08 + con_obj_flag_not_visible
C - - - - - 0x02925F 0A:924F: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x029262 0A:9252: A9 00     LDA #$00
C - - - - - 0x029264 0A:9254: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x029267 0A:9257: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02926A 0A:925A: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02926D 0A:925D: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x029270 0A:9260: C6 10     DEC ram_0010_temp
C - - - - - 0x029272 0A:9262: 10 C6     BPL bra_922A_loop
C - - - - - 0x029274 0A:9264: A6 6C     LDX ram_006C_object_index
C - - - - - 0x029276 0A:9266: FE C8 07  INC ram_07C8,X
bra_9269_RTS:
C - - - - - 0x029279 0A:9269: 60        RTS



tbl_926A_pos_X_hi:
- D 0 - - - 0x02927A 0A:926A: 30        .byte $30   ; 00 
- D 0 - - - 0x02927B 0A:926B: B0        .byte $B0   ; 01 
- D 0 - - - 0x02927C 0A:926C: D0        .byte $D0   ; 02 
- - - - - - 0x02927D 0A:926D: 50        .byte $50   ; 03 
- - - - - - 0x02927E 0A:926E: 90        .byte $90   ; 04 



tbl_926F_pos_Y_hi:
- D 0 - - - 0x02927F 0A:926F: 50        .byte $50   ; 00 
- D 0 - - - 0x029280 0A:9270: 50        .byte $50   ; 01 
- D 0 - - - 0x029281 0A:9271: 50        .byte $50   ; 02 
- - - - - - 0x029282 0A:9272: 30        .byte $30   ; 03 
- - - - - - 0x029283 0A:9273: 30        .byte $30   ; 04 



sub_9274_clear_07EC_07F3:
C - - - - - 0x029284 0A:9274: A0 07     LDY #$07
C - - - - - 0x029286 0A:9276: A9 00     LDA #$00
bra_9278_loop:
; 07ED-07F3
C - - - - - 0x029288 0A:9278: 99 EC 07  STA ram_07EC,Y
C - - - - - 0x02928B 0A:927B: 88        DEY
C - - - - - 0x02928C 0A:927C: D0 FA     BNE bra_9278_loop
; bzk optimize, BPL instead of BNE, without addditional STA 07EC
C - - - - - 0x02928E 0A:927E: 8D EC 07  STA ram_07EC
C - - - - - 0x029291 0A:9281: 60        RTS



tbl_9282:
- - - - - - 0x029292 0A:9282: 00        .byte $00   ; 00 
- D 0 - - - 0x029293 0A:9283: 01        .byte $01   ; 01 
- D 0 - - - 0x029294 0A:9284: 02        .byte $02   ; 02 
- D 0 - - - 0x029295 0A:9285: 07        .byte $07   ; 03 
- D 0 - - - 0x029296 0A:9286: 0D        .byte $0D   ; 04 
- D 0 - - - 0x029297 0A:9287: 00        .byte $00   ; 05 
- D 0 - - - 0x029298 0A:9288: 00        .byte $00   ; 06 
- D 0 - - - 0x029299 0A:9289: 00        .byte $00   ; 07 
- - - - - - 0x02929A 0A:928A: 00        .byte $00   ; 08 
- - - - - - 0x02929B 0A:928B: 00        .byte $00   ; 09 
- - - - - - 0x02929C 0A:928C: 00        .byte $00   ; 0A 
- D 0 - - - 0x02929D 0A:928D: 0E        .byte $0E   ; 0B 
- D 0 - - - 0x02929E 0A:928E: 05        .byte $05   ; 0C 
- D 0 - - - 0x02929F 0A:928F: 06        .byte $06   ; 0D 
- D 0 - - - 0x0292A0 0A:9290: 12        .byte $12   ; 0E 
- D 0 - - - 0x0292A1 0A:9291: 11        .byte $11   ; 0F 
- D 0 - - - 0x0292A2 0A:9292: 03        .byte $03   ; 10 
- D 0 - - - 0x0292A3 0A:9293: 10        .byte $10   ; 11 
- D 0 - - - 0x0292A4 0A:9294: 14        .byte $14   ; 12 
- D 0 - - - 0x0292A5 0A:9295: 21        .byte $21   ; 13 
- D 0 - - - 0x0292A6 0A:9296: 0B        .byte $0B   ; 14 
- D 0 - - - 0x0292A7 0A:9297: 0F        .byte $0F   ; 15 
- D 0 - - - 0x0292A8 0A:9298: 09        .byte $09   ; 16 
- D 0 - - - 0x0292A9 0A:9299: 0A        .byte $0A   ; 17 
- D 0 - - - 0x0292AA 0A:929A: 08        .byte $08   ; 18 
- D 0 - - - 0x0292AB 0A:929B: 17        .byte $17   ; 19 
- D 0 - - - 0x0292AC 0A:929C: 16        .byte $16   ; 1A 
- D 0 - - - 0x0292AD 0A:929D: 00        .byte $00   ; 1B 
- D 0 - - - 0x0292AE 0A:929E: 00        .byte $00   ; 1C 
- D 0 - - - 0x0292AF 0A:929F: 00        .byte $00   ; 1D 
- D 0 - - - 0x0292B0 0A:92A0: 00        .byte $00   ; 1E 
- D 0 - - - 0x0292B1 0A:92A1: 00        .byte $00   ; 1F 
- D 0 - - - 0x0292B2 0A:92A2: 00        .byte $00   ; 20 
- D 0 - - - 0x0292B3 0A:92A3: 00        .byte $00   ; 21 
- - - - - - 0x0292B4 0A:92A4: 00        .byte $00   ; 22 
- D 0 - - - 0x0292B5 0A:92A5: 00        .byte $00   ; 23 
- D 0 - - - 0x0292B6 0A:92A6: 00        .byte $00   ; 24 
- D 0 - - - 0x0292B7 0A:92A7: 00        .byte $00   ; 25 
- D 0 - - - 0x0292B8 0A:92A8: 00        .byte $00   ; 26 
- D 0 - - - 0x0292B9 0A:92A9: 04        .byte $04   ; 27 
- D 0 - - - 0x0292BA 0A:92AA: 1C        .byte $1C   ; 28 
- D 0 - - - 0x0292BB 0A:92AB: 1D        .byte $1D   ; 29 
- D 0 - - - 0x0292BC 0A:92AC: 1E        .byte $1E   ; 2A 
- - - - - - 0x0292BD 0A:92AD: 6E        .byte $6E   ; 2B 
- - - - - - 0x0292BE 0A:92AE: 6F        .byte $6F   ; 2C 
- D 0 - - - 0x0292BF 0A:92AF: 0C        .byte $0C   ; 2D 
- D 0 - - - 0x0292C0 0A:92B0: 22        .byte $22   ; 2E 
- - - - - - 0x0292C1 0A:92B1: 00        .byte $00   ; 2F 
- - - - - - 0x0292C2 0A:92B2: 00        .byte $00   ; 30 
- - - - - - 0x0292C3 0A:92B3: 00        .byte $00   ; 31 
- D 0 - - - 0x0292C4 0A:92B4: 13        .byte $13   ; 32 
- - - - - - 0x0292C5 0A:92B5: 00        .byte $00   ; 33 
- - - - - - 0x0292C6 0A:92B6: 00        .byte $00   ; 34 
- - - - - - 0x0292C7 0A:92B7: 00        .byte $00   ; 35 
- D 0 - - - 0x0292C8 0A:92B8: 00        .byte $00   ; 36 
- - - - - - 0x0292C9 0A:92B9: 00        .byte $00   ; 37 
- - - - - - 0x0292CA 0A:92BA: 00        .byte $00   ; 38 
- D 0 - - - 0x0292CB 0A:92BB: 00        .byte $00   ; 39 
- D 0 - - - 0x0292CC 0A:92BC: 24        .byte $24   ; 3A 
- D 0 - - - 0x0292CD 0A:92BD: 25        .byte $25   ; 3B 
- D 0 - - - 0x0292CE 0A:92BE: 26        .byte $26   ; 3C 
- D 0 - - - 0x0292CF 0A:92BF: 27        .byte $27   ; 3D 
- D 0 - - - 0x0292D0 0A:92C0: 29        .byte $29   ; 3E 
- D 0 - - - 0x0292D1 0A:92C1: 28        .byte $28   ; 3F 
- D 0 - - - 0x0292D2 0A:92C2: 2B        .byte $2B   ; 40 
- D 0 - - - 0x0292D3 0A:92C3: 2F        .byte $2F   ; 41 
- D 0 - - - 0x0292D4 0A:92C4: 00        .byte $00   ; 42 
- D 0 - - - 0x0292D5 0A:92C5: 2C        .byte $2C   ; 43 
- D 0 - - - 0x0292D6 0A:92C6: 63        .byte $63   ; 44 
- D 0 - - - 0x0292D7 0A:92C7: 64        .byte $64   ; 45 
- D 0 - - - 0x0292D8 0A:92C8: 65        .byte $65   ; 46 
- D 0 - - - 0x0292D9 0A:92C9: 66        .byte $66   ; 47 
- D 0 - - - 0x0292DA 0A:92CA: 07        .byte $07   ; 48 
- D 0 - - - 0x0292DB 0A:92CB: 10        .byte $10   ; 49 
- D 0 - - - 0x0292DC 0A:92CC: 07        .byte $07   ; 4A 
- D 0 - - - 0x0292DD 0A:92CD: 68        .byte $68   ; 4B 
- D 0 - - - 0x0292DE 0A:92CE: 00        .byte $00   ; 4C 
- D 0 - - - 0x0292DF 0A:92CF: 00        .byte $00   ; 4D 
- D 0 - - - 0x0292E0 0A:92D0: 00        .byte $00   ; 4E 
- D 0 - - - 0x0292E1 0A:92D1: 01        .byte $01   ; 4F 
- D 0 - - - 0x0292E2 0A:92D2: 16        .byte $16   ; 50 
- D 0 - - - 0x0292E3 0A:92D3: 6A        .byte $6A   ; 51 
- D 0 - - - 0x0292E4 0A:92D4: 0D        .byte $0D   ; 52 
- - - - - - 0x0292E5 0A:92D5: 00        .byte $00   ; 53 
- - - - - - 0x0292E6 0A:92D6: 00        .byte $00   ; 54 
- - - - - - 0x0292E7 0A:92D7: 00        .byte $00   ; 55 
- - - - - - 0x0292E8 0A:92D8: 00        .byte $00   ; 56 
- - - - - - 0x0292E9 0A:92D9: 00        .byte $00   ; 57 



tbl_92DA:
- - - - - - 0x0292EA 0A:92DA: 00        .byte $00   ; 00 
- D 0 - - - 0x0292EB 0A:92DB: 48        .byte $48   ; 01 
- D 0 - - - 0x0292EC 0A:92DC: 48        .byte $48   ; 02 
- D 0 - - - 0x0292ED 0A:92DD: 4B        .byte $4B   ; 03 
- D 0 - - - 0x0292EE 0A:92DE: 51        .byte $51   ; 04 
- D 0 - - - 0x0292EF 0A:92DF: 01        .byte $01   ; 05 
- D 0 - - - 0x0292F0 0A:92E0: 02        .byte $02   ; 06 
- D 0 - - - 0x0292F1 0A:92E1: 03        .byte $03   ; 07 
- - - - - - 0x0292F2 0A:92E2: 00        .byte $00   ; 08 
- - - - - - 0x0292F3 0A:92E3: 00        .byte $00   ; 09 
- - - - - - 0x0292F4 0A:92E4: 00        .byte $00   ; 0A 
- D 0 - - - 0x0292F5 0A:92E5: 52        .byte $52   ; 0B 
- D 0 - - - 0x0292F6 0A:92E6: 4A        .byte $4A   ; 0C 
- D 0 - - - 0x0292F7 0A:92E7: 4A        .byte $4A   ; 0D 
- D 0 - - - 0x0292F8 0A:92E8: 56        .byte $56   ; 0E 
- D 0 - - - 0x0292F9 0A:92E9: 55        .byte $55   ; 0F 
- D 0 - - - 0x0292FA 0A:92EA: 49        .byte $49   ; 10 
- D 0 - - - 0x0292FB 0A:92EB: 54        .byte $54   ; 11 
- D 0 - - - 0x0292FC 0A:92EC: 58        .byte $58   ; 12 
- D 0 - - - 0x0292FD 0A:92ED: 57        .byte $57   ; 13 
- D 0 - - - 0x0292FE 0A:92EE: 4F        .byte $4F   ; 14 
- D 0 - - - 0x0292FF 0A:92EF: 53        .byte $53   ; 15 
- D 0 - - - 0x029300 0A:92F0: 4D        .byte $4D   ; 16 
- D 0 - - - 0x029301 0A:92F1: 4E        .byte $4E   ; 17 
- D 0 - - - 0x029302 0A:92F2: 4C        .byte $4C   ; 18 
- D 0 - - - 0x029303 0A:92F3: 5B        .byte $5B   ; 19 
- D 0 - - - 0x029304 0A:92F4: 5A        .byte $5A   ; 1A 
- D 0 - - - 0x029305 0A:92F5: 04        .byte $04   ; 1B 
- D 0 - - - 0x029306 0A:92F6: 05        .byte $05   ; 1C 
- D 0 - - - 0x029307 0A:92F7: 06        .byte $06   ; 1D 
- D 0 - - - 0x029308 0A:92F8: 0A        .byte $0A   ; 1E 
- D 0 - - - 0x029309 0A:92F9: 08        .byte $08   ; 1F 
- D 0 - - - 0x02930A 0A:92FA: 09        .byte $09   ; 20 
- D 0 - - - 0x02930B 0A:92FB: 07        .byte $07   ; 21 
- - - - - - 0x02930C 0A:92FC: 00        .byte $00   ; 22 
- D 0 - - - 0x02930D 0A:92FD: 0C        .byte $0C   ; 23 
- D 0 - - - 0x02930E 0A:92FE: 0B        .byte $0B   ; 24 
- D 0 - - - 0x02930F 0A:92FF: 09        .byte $09   ; 25 
- D 0 - - - 0x029310 0A:9300: 0D        .byte $0D   ; 26 
- D 0 - - - 0x029311 0A:9301: 49        .byte $49   ; 27 
- D 0 - - - 0x029312 0A:9302: 5C        .byte $5C   ; 28 
- D 0 - - - 0x029313 0A:9303: 5D        .byte $5D   ; 29 
- D 0 - - - 0x029314 0A:9304: 56        .byte $56   ; 2A 
- - - - - - 0x029315 0A:9305: 4A        .byte $4A   ; 2B 
- - - - - - 0x029316 0A:9306: 64        .byte $64   ; 2C 
- D 0 - - - 0x029317 0A:9307: 50        .byte $50   ; 2D 
- D 0 - - - 0x029318 0A:9308: 5E        .byte $5E   ; 2E 
- - - - - - 0x029319 0A:9309: 7D        .byte $7D   ; 2F 
- - - - - - 0x02931A 0A:930A: 82        .byte $82   ; 30 
- - - - - - 0x02931B 0A:930B: 80        .byte $80   ; 31 
- D 0 - - - 0x02931C 0A:930C: 4D        .byte $4D   ; 32 
- - - - - - 0x02931D 0A:930D: 7F        .byte $7F   ; 33 
- - - - - - 0x02931E 0A:930E: 7E        .byte $7E   ; 34 
- - - - - - 0x02931F 0A:930F: 84        .byte $84   ; 35 
- D 0 - - - 0x029320 0A:9310: 76        .byte $76   ; 36 
- - - - - - 0x029321 0A:9311: 7B        .byte $7B   ; 37 
- - - - - - 0x029322 0A:9312: 7C        .byte $7C   ; 38 
- D 0 - - - 0x029323 0A:9313: 75        .byte $75   ; 39 
- D 0 - - - 0x029324 0A:9314: 48        .byte $48   ; 3A 
- D 0 - - - 0x029325 0A:9315: 60        .byte $60   ; 3B 
- D 0 - - - 0x029326 0A:9316: 61        .byte $61   ; 3C 
- D 0 - - - 0x029327 0A:9317: 58        .byte $58   ; 3D 
- D 0 - - - 0x029328 0A:9318: 58        .byte $58   ; 3E 
- D 0 - - - 0x029329 0A:9319: 62        .byte $62   ; 3F 
- D 0 - - - 0x02932A 0A:931A: 63        .byte $63   ; 40 
- D 0 - - - 0x02932B 0A:931B: 56        .byte $56   ; 41 
- D 0 - - - 0x02932C 0A:931C: 74        .byte $74   ; 42 
- D 0 - - - 0x02932D 0A:931D: 59        .byte $59   ; 43 
- D 0 - - - 0x02932E 0A:931E: 5F        .byte $5F   ; 44 
- D 0 - - - 0x02932F 0A:931F: 64        .byte $64   ; 45 
- D 0 - - - 0x029330 0A:9320: 65        .byte $65   ; 46 
- D 0 - - - 0x029331 0A:9321: 4A        .byte $4A   ; 47 
- D 0 - - - 0x029332 0A:9322: 4B        .byte $4B   ; 48 
- D 0 - - - 0x029333 0A:9323: 54        .byte $54   ; 49 
- D 0 - - - 0x029334 0A:9324: 4B        .byte $4B   ; 4A 
- D 0 - - - 0x029335 0A:9325: 4C        .byte $4C   ; 4B 
- D 0 - - - 0x029336 0A:9326: 73        .byte $73   ; 4C 
- D 0 - - - 0x029337 0A:9327: 71        .byte $71   ; 4D 
- D 0 - - - 0x029338 0A:9328: 72        .byte $72   ; 4E 
- D 0 - - - 0x029339 0A:9329: 48        .byte $48   ; 4F 
- D 0 - - - 0x02933A 0A:932A: 5A        .byte $5A   ; 50 
- D 0 - - - 0x02933B 0A:932B: 58        .byte $58   ; 51 
- D 0 - - - 0x02933C 0A:932C: 51        .byte $51   ; 52 
- - - - - - 0x02933D 0A:932D: 00        .byte $00   ; 53 
- - - - - - 0x02933E 0A:932E: 00        .byte $00   ; 54 
- - - - - - 0x02933F 0A:932F: 00        .byte $00   ; 55 
- - - - - - 0x029340 0A:9330: 00        .byte $00   ; 56 
- - - - - - 0x029341 0A:9331: 00        .byte $00   ; 57 



sub_9332_set_hp_for_enemy:
C - - - - - 0x029342 0A:9332: A9 40     LDA #$40
C - - - - - 0x029344 0A:9334: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x029347 0A:9337: C0 08     CPY #$08
C - - - - - 0x029349 0A:9339: D0 04     BNE bra_933F
C - - - - - 0x02934B 0A:933B: A9 20     LDA #$20
C - - - - - 0x02934D 0A:933D: D0 0C     BNE bra_934B    ; jmp
bra_933F:
C - - - - - 0x02934F 0A:933F: C0 40     CPY #$40
C - - - - - 0x029351 0A:9341: 90 08     BCC bra_934B
C - - - - - 0x029353 0A:9343: 98        TYA
C - - - - - 0x029354 0A:9344: 38        SEC
C - - - - - 0x029355 0A:9345: E9 40     SBC #$40
C - - - - - 0x029357 0A:9347: A8        TAY
C - - - - - 0x029358 0A:9348: B9 4F 93  LDA tbl_934F,Y
bra_934B:
C - - - - - 0x02935B 0A:934B: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x02935E 0A:934E: 60        RTS



tbl_934F:
- - - - - - 0x02935F 0A:934F: 04        .byte $04   ; 40
- - - - - - 0x029360 0A:9350: 04        .byte $04   ; 41
- - - - - - 0x029361 0A:9351: 04        .byte $04   ; 42
- - - - - - 0x029362 0A:9352: 04        .byte $04   ; 43
- - - - - - 0x029363 0A:9353: 04        .byte $04   ; 44
- - - - - - 0x029364 0A:9354: 04        .byte $04   ; 45
- - - - - - 0x029365 0A:9355: 04        .byte $04   ; 46
- - - - - - 0x029366 0A:9356: 04        .byte $04   ; 47
- D 0 - - - 0x029367 0A:9357: 02        .byte $02   ; 48
- D 0 - - - 0x029368 0A:9358: 02        .byte $02   ; 49
- D 0 - - - 0x029369 0A:9359: 02        .byte $02   ; 4A
- D 0 - - - 0x02936A 0A:935A: 04        .byte $04   ; 4B
- D 0 - - - 0x02936B 0A:935B: 0C        .byte $0C   ; 4C
- D 0 - - - 0x02936C 0A:935C: 02        .byte $02   ; 4D
- D 0 - - - 0x02936D 0A:935D: 02        .byte $02   ; 4E
- D 0 - - - 0x02936E 0A:935E: 04        .byte $04   ; 4F
- D 0 - - - 0x02936F 0A:935F: 04        .byte $04   ; 50
- D 0 - - - 0x029370 0A:9360: 04        .byte $04   ; 51
- D 0 - - - 0x029371 0A:9361: 04        .byte $04   ; 52
- D 0 - - - 0x029372 0A:9362: 04        .byte $04   ; 53
- D 0 - - - 0x029373 0A:9363: 0C        .byte $0C   ; 54
- D 0 - - - 0x029374 0A:9364: 30        .byte $30   ; 55
- D 0 - - - 0x029375 0A:9365: 24        .byte $24   ; 56
- D 0 - - - 0x029376 0A:9366: 04        .byte $04   ; 57
- D 0 - - - 0x029377 0A:9367: 04        .byte $04   ; 58
- D 0 - - - 0x029378 0A:9368: 40        .byte $40   ; 59
- D 0 - - - 0x029379 0A:9369: 06        .byte $06   ; 5A
- D 0 - - - 0x02937A 0A:936A: 04        .byte $04   ; 5B
- D 0 - - - 0x02937B 0A:936B: 02        .byte $02   ; 5C
- D 0 - - - 0x02937C 0A:936C: 04        .byte $04   ; 5D
- D 0 - - - 0x02937D 0A:936D: 04        .byte $04   ; 5E
- D 0 - - - 0x02937E 0A:936E: 04        .byte $04   ; 5F
- D 0 - - - 0x02937F 0A:936F: 04        .byte $04   ; 60
- D 0 - - - 0x029380 0A:9370: 04        .byte $04   ; 61
- D 0 - - - 0x029381 0A:9371: 0C        .byte $0C   ; 62
- D 0 - - - 0x029382 0A:9372: 0C        .byte $0C   ; 63
- D 0 - - - 0x029383 0A:9373: 7F        .byte $7F   ; 64
- D 0 - - - 0x029384 0A:9374: 04        .byte $04   ; 65
- D 0 - - - 0x029385 0A:9375: 0A        .byte $0A   ; 66
- - - - - - 0x029386 0A:9376: 06        .byte $06   ; 67
- - - - - - 0x029387 0A:9377: 04        .byte $04   ; 68
- - - - - - 0x029388 0A:9378: 04        .byte $04   ; 69
- - - - - - 0x029389 0A:9379: 04        .byte $04   ; 6A
- - - - - - 0x02938A 0A:937A: 04        .byte $04   ; 6B
- - - - - - 0x02938B 0A:937B: 04        .byte $04   ; 6C
- - - - - - 0x02938C 0A:937C: 04        .byte $04   ; 6D
- - - - - - 0x02938D 0A:937D: 04        .byte $04   ; 6E
- - - - - - 0x02938E 0A:937E: 04        .byte $04   ; 6F



tbl_937F:
- D 0 - - - 0x02938F 0A:937F: 9D 93     .word _off032_939D_00
- D 0 - - - 0x029391 0A:9381: A5 93     .word _off032_93A5_01
- D 0 - - - 0x029393 0A:9383: B1 93     .word _off032_93B1_02
- D 0 - - - 0x029395 0A:9385: BB 93     .word _off032_93BB_03
- D 0 - - - 0x029397 0A:9387: C5 93     .word _off032_93C5_04
- D 0 - - - 0x029399 0A:9389: CB 93     .word _off032_93CB_05
- D 0 - - - 0x02939B 0A:938B: D3 93     .word _off032_93D3_06
- D 0 - - - 0x02939D 0A:938D: D9 93     .word _off032_93D9_07
- D 0 - - - 0x02939F 0A:938F: E7 93     .word _off032_93E7_08
- D 0 - - - 0x0293A1 0A:9391: C5 9B     .word _off032_9BC5_09
- D 0 - - - 0x0293A3 0A:9393: C9 9B     .word _off032_9BC9_0A
- D 0 - - - 0x0293A5 0A:9395: D7 9B     .word _off032_9BD7_0B
- D 0 - - - 0x0293A7 0A:9397: DD 9B     .word _off032_9BDD_0C
- D 0 - - - 0x0293A9 0A:9399: E3 9B     .word _off032_9BE3_0D
- D 0 - - - 0x0293AB 0A:939B: EB 9B     .word _off032_9BEB_0E



_off032_939D_00:
- D 0 - I - 0x0293AD 0A:939D: F1 93     .word _off049_93F1_00_00
- D 0 - I - 0x0293AF 0A:939F: F3 93     .word _off049_93F3_00_01
- D 0 - I - 0x0293B1 0A:93A1: FB 93     .word _off049_93FB_00_02
- D 0 - I - 0x0293B3 0A:93A3: FF 93     .word _off049_93FF_00_03



_off032_93A5_01:
- D 0 - I - 0x0293B5 0A:93A5: 01 94     .word _off049_9401_01_00
- D 0 - I - 0x0293B7 0A:93A7: 07 94     .word _off049_9407_01_01
- D 0 - I - 0x0293B9 0A:93A9: 0D 94     .word _off049_940D_01_02
- D 0 - I - 0x0293BB 0A:93AB: 13 94     .word _off049_9413_01_03
- D 0 - I - 0x0293BD 0A:93AD: 19 94     .word _off049_9419_01_04
- D 0 - I - 0x0293BF 0A:93AF: 1F 94     .word _off049_941F_01_05



_off032_93B1_02:
- D 0 - I - 0x0293C1 0A:93B1: 25 94     .word _off049_9425_02_00
- D 0 - I - 0x0293C3 0A:93B3: 29 94     .word _off049_9429_02_01
- D 0 - I - 0x0293C5 0A:93B5: 2B 94     .word _off049_942B_02_02
- D 0 - I - 0x0293C7 0A:93B7: 2F 94     .word _off049_942F_02_03
- D 0 - I - 0x0293C9 0A:93B9: 35 94     .word _off049_9435_02_04



_off032_93BB_03:
- D 0 - I - 0x0293CB 0A:93BB: 39 94     .word _off049_9439_03_00
- D 0 - I - 0x0293CD 0A:93BD: 3F 94     .word _off049_943F_03_01
- D 0 - I - 0x0293CF 0A:93BF: 43 94     .word _off049_9443_03_02
- D 0 - I - 0x0293D1 0A:93C1: 47 94     .word _off049_9447_03_03
- D 0 - I - 0x0293D3 0A:93C3: 4B 94     .word _off049_944B_03_04



_off032_93C5_04:
- D 0 - I - 0x0293D5 0A:93C5: 51 94     .word _off049_9451_04_00
- D 0 - I - 0x0293D7 0A:93C7: 57 94     .word _off049_9457_04_01
- D 0 - I - 0x0293D9 0A:93C9: 5D 94     .word _off049_945D_04_02



_off032_93CB_05:
- D 0 - I - 0x0293DB 0A:93CB: 63 94     .word _off049_9463_05_00
- D 0 - I - 0x0293DD 0A:93CD: 65 94     .word _off049_9465_05_01
- D 0 - I - 0x0293DF 0A:93CF: 67 94     .word _off049_9467_05_02
- D 0 - I - 0x0293E1 0A:93D1: 6B 94     .word _off049_946B_05_03



_off032_93D3_06:
- D 0 - I - 0x0293E3 0A:93D3: 6F 94     .word _off049_946F_06_00
- D 0 - I - 0x0293E5 0A:93D5: 73 94     .word _off049_9473_06_01
- D 0 - I - 0x0293E7 0A:93D7: 75 94     .word _off049_9475_06_02



_off032_93D9_07:
- D 0 - I - 0x0293E9 0A:93D9: 7B 94     .word _off049_947B_07_00
- D 0 - I - 0x0293EB 0A:93DB: 7F 94     .word _off049_947F_07_01
- D 0 - I - 0x0293ED 0A:93DD: 81 94     .word _off049_9481_07_02
- D 0 - I - 0x0293EF 0A:93DF: 83 94     .word _off049_9483_07_03
- D 0 - I - 0x0293F1 0A:93E1: 85 94     .word _off049_9485_07_04
- D 0 - I - 0x0293F3 0A:93E3: 89 94     .word _off049_9489_07_05
- D 0 - I - 0x0293F5 0A:93E5: 8D 94     .word _off049_948D_07_06



_off032_93E7_08:
- D 0 - I - 0x0293F7 0A:93E7: 8F 94     .word _off049_948F_08_00
- D 0 - I - 0x0293F9 0A:93E9: 93 94     .word _off049_9493_08_01
- D 0 - I - 0x0293FB 0A:93EB: 95 94     .word _off049_9495_08_02
- D 0 - I - 0x0293FD 0A:93ED: 99 94     .word _off049_9499_08_03
- D 0 - I - 0x0293FF 0A:93EF: 9B 94     .word _off049_949B_08_04



_off049_93F1_00_00:
- D 0 - I - 0x029401 0A:93F1: 9D 94     .word off_949D_00_00_00



_off049_93F3_00_01:
- D 0 - I - 0x029403 0A:93F3: B9 94     .word off_94B9_00_01_00
- D 0 - I - 0x029405 0A:93F5: 34 AC     .word off_AC34_00_01_01 ; special
- D 0 - I - 0x029407 0A:93F7: C5 94     .word off_94C5_00_01_02
- D 0 - I - 0x029409 0A:93F9: E1 94     .word off_94E1_00_01_03



_off049_93FB_00_02:
- D 0 - I - 0x02940B 0A:93FB: F5 94     .word off_94F5_00_02_00
- D 0 - I - 0x02940D 0A:93FD: 11 95     .word off_9511_00_02_01



_off049_93FF_00_03:
- D 0 - I - 0x02940F 0A:93FF: 2D 95     .word off_952D_00_03_00



_off049_9401_01_00:
- D 0 - I - 0x029411 0A:9401: 74 AC     .word off_AC74_01_00_00 ; special
- D 0 - I - 0x029413 0A:9403: 51 95     .word off_9551_01_00_01
- D 0 - I - 0x029415 0A:9405: 65 95     .word off_9565_01_00_02



_off049_9407_01_01:
- D 0 - I - 0x029417 0A:9407: 79 95     .word off_9579_01_01_00
- D 0 - I - 0x029419 0A:9409: D0 AC     .word off_ACD0_01_01_01 ; special
- D 0 - I - 0x02941B 0A:940B: 8D 95     .word off_958D_01_01_02



_off049_940D_01_02:
- D 0 - I - 0x02941D 0A:940D: 99 95     .word off_9599_01_02_00
- D 0 - I - 0x02941F 0A:940F: 02 AD     .word off_AD02_01_02_01 ; special
- D 0 - I - 0x029421 0A:9411: A5 95     .word off_95A5_01_02_02



_off049_9413_01_03:
- D 0 - I - 0x029423 0A:9413: 99 95     .word off_9599_01_03_00
- D 0 - I - 0x029425 0A:9415: 1F AD     .word off_AD1F_01_03_01 ; special
- D 0 - I - 0x029427 0A:9417: A5 95     .word off_95A5_01_03_02



_off049_9419_01_04:
- D 0 - I - 0x029429 0A:9419: 79 95     .word off_9579_01_04_00
- D 0 - I - 0x02942B 0A:941B: 43 AD     .word off_AD43_01_04_01 ; special
- D 0 - I - 0x02942D 0A:941D: 8D 95     .word off_958D_01_04_02



_off049_941F_01_05:
- D 0 - I - 0x02942F 0A:941F: 75 AD     .word off_AD75_01_05_00 ; special
- D 0 - I - 0x029431 0A:9421: 51 95     .word off_9551_01_05_01
- D 0 - I - 0x029433 0A:9423: 65 95     .word off_9565_01_05_02



_off049_9425_02_00:
- D 0 - I - 0x029435 0A:9425: B9 95     .word off_95B9_02_00_00
- D 0 - I - 0x029437 0A:9427: D5 95     .word off_95D5_02_00_01



_off049_9429_02_01:
- D 0 - I - 0x029439 0A:9429: F1 95     .word off_95F1_02_01_00



_off049_942B_02_02:
- D 0 - I - 0x02943B 0A:942B: 25 96     .word off_9625_02_02_00
- D 0 - I - 0x02943D 0A:942D: 49 96     .word off_9649_02_02_01



_off049_942F_02_03:
- D 0 - I - 0x02943F 0A:942F: 6D 96     .word off_966D_02_03_00
- D 0 - I - 0x029441 0A:9431: 79 96     .word off_9679_02_03_01
- D 0 - I - 0x029443 0A:9433: 9D 96     .word off_969D_02_03_02



_off049_9435_02_04:
- D 0 - I - 0x029445 0A:9435: A9 96     .word off_96A9_02_04_00
- D 0 - I - 0x029447 0A:9437: BD 96     .word off_96BD_02_04_01



_off049_9439_03_00:
- D 0 - I - 0x029449 0A:9439: E1 96     .word off_96E1_03_00_00
- D 0 - I - 0x02944B 0A:943B: F5 96     .word off_96F5_03_00_01
- D 0 - I - 0x02944D 0A:943D: 09 97     .word off_9709_03_00_02



_off049_943F_03_01:
- D 0 - I - 0x02944F 0A:943F: 1D 97     .word off_971D_03_01_00
- D 0 - I - 0x029451 0A:9441: 49 97     .word off_9749_03_01_01



_off049_9443_03_02:
- D 0 - I - 0x029453 0A:9443: 5D 97     .word off_975D_03_02_00
- D 0 - I - 0x029455 0A:9445: 81 97     .word off_9781_03_02_01



_off049_9447_03_03:
- D 0 - I - 0x029457 0A:9447: 95 97     .word off_9795_03_03_00
- D 0 - I - 0x029459 0A:9449: B1 97     .word off_97B1_03_03_01



_off049_944B_03_04:
- D 0 - I - 0x02945B 0A:944B: CD 97     .word off_97CD_03_04_00
- D 0 - I - 0x02945D 0A:944D: D9 97     .word off_97D9_03_04_01
- D 0 - I - 0x02945F 0A:944F: F5 97     .word off_97F5_03_04_02



_off049_9451_04_00:
- D 0 - I - 0x029461 0A:9451: 01 98     .word off_9801_04_00_00
- D 0 - I - 0x029463 0A:9453: F4 AD     .word off_ADF4_04_00_01 ; special
- D 0 - I - 0x029465 0A:9455: 15 98     .word off_9815_04_00_02



_off049_9457_04_01:
- D 0 - I - 0x029467 0A:9457: 21 98     .word off_9821_04_01_00
- D 0 - I - 0x029469 0A:9459: 50 AE     .word off_AE50_04_01_01 ; special
- D 0 - I - 0x02946B 0A:945B: 2D 98     .word off_982D_04_01_02



_off049_945D_04_02:
- D 0 - I - 0x02946D 0A:945D: 41 98     .word off_9841_04_02_00
- D 0 - I - 0x02946F 0A:945F: C1 AE     .word off_AEC1_04_02_01 ; special
- D 0 - I - 0x029471 0A:9461: 4D 98     .word off_984D_04_02_02



_off049_9463_05_00:
- D 0 - I - 0x029473 0A:9463: 69 98     .word off_9869_05_00_00



_off049_9465_05_01:
- D 0 - I - 0x029475 0A:9465: 7D 98     .word off_987D_05_01_00



_off049_9467_05_02:
- D 0 - I - 0x029477 0A:9467: A1 98     .word off_98A1_05_02_00
- D 0 - I - 0x029479 0A:9469: B5 98     .word off_98B5_05_02_01



_off049_946B_05_03:
- D 0 - I - 0x02947B 0A:946B: D9 98     .word off_98D9_05_03_00
- D 0 - I - 0x02947D 0A:946D: ED 98     .word off_98ED_05_03_01



_off049_946F_06_00:
- D 0 - I - 0x02947F 0A:946F: 11 99     .word off_9911_06_00_00
- D 0 - I - 0x029481 0A:9471: 25 99     .word off_9925_06_00_01



_off049_9473_06_01:
- D 0 - I - 0x029483 0A:9473: 49 99     .word off_9949_06_01_00



_off049_9475_06_02:
- D 0 - I - 0x029485 0A:9475: 7D 99     .word off_997D_06_02_00
- D 0 - I - 0x029487 0A:9477: 89 99     .word off_9989_06_02_01
- D 0 - I - 0x029489 0A:9479: A5 99     .word off_99A5_06_02_02



_off049_947B_07_00:
- D 0 - I - 0x02948B 0A:947B: B9 99     .word off_99B9_07_00_00
- D 0 - I - 0x02948D 0A:947D: CD 99     .word off_99CD_07_00_01



_off049_947F_07_01:
- D 0 - I - 0x02948F 0A:947F: F1 99     .word off_99F1_07_01_00



_off049_9481_07_02:
- D 0 - I - 0x029491 0A:9481: 05 9A     .word off_9A05_07_02_00



_off049_9483_07_03:
- D 0 - I - 0x029493 0A:9483: 11 9A     .word off_9A11_07_03_00



_off049_9485_07_04:
- D 0 - I - 0x029495 0A:9485: 25 9A     .word off_9A25_07_04_00
- D 0 - I - 0x029497 0A:9487: 49 9A     .word off_9A49_07_04_01



_off049_9489_07_05:
- D 0 - I - 0x029499 0A:9489: 5D 9A     .word off_9A5D_07_05_00
- D 0 - I - 0x02949B 0A:948B: 81 9A     .word off_9A81_07_05_01



_off049_948D_07_06:
- D 0 - I - 0x02949D 0A:948D: 95 9A     .word off_9A95_07_06_00



_off049_948F_08_00:
- D 0 - I - 0x02949F 0A:948F: C1 9A     .word off_9AC1_08_00_00
- D 0 - I - 0x0294A1 0A:9491: D5 9A     .word off_9AD5_08_00_01



_off049_9493_08_01:
- D 0 - I - 0x0294A3 0A:9493: 01 9B     .word off_9B01_08_01_00



_off049_9495_08_02:
- D 0 - I - 0x0294A5 0A:9495: 2D 9B     .word off_9B2D_08_02_00
- D 0 - I - 0x0294A7 0A:9497: 51 9B     .word off_9B51_08_02_01



_off049_9499_08_03:
- D 0 - I - 0x0294A9 0A:9499: 6D 9B     .word off_9B6D_08_03_00



_off049_949B_08_04:
- D 0 - I - 0x0294AB 0A:949B: 99 9B     .word off_9B99_08_04_00



off_949D_00_00_00:
; 00 
- D 0 - I - 0x0294AD 0A:949D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294AE 0A:949E: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0294AF 0A:949F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294B0 0A:94A0: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x0294B1 0A:94A1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294B2 0A:94A2: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x0294B3 0A:94A3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294B4 0A:94A4: 0F        .byte con_A644_0F   ; 
; 04 
- D 0 - I - 0x0294B5 0A:94A5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294B6 0A:94A6: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x0294B7 0A:94A7: D1        .byte con_A03F_D1   ; 
- D 0 - I - 0x0294B8 0A:94A8: 46        .byte con_A644_46   ; 
; 06 
- D 0 - I - 0x0294B9 0A:94A9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294BA 0A:94AA: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x0294BB 0A:94AB: D1        .byte con_A03F_D1   ; 
- D 0 - I - 0x0294BC 0A:94AC: 0C        .byte con_A644_0C   ; 
; 08 
- D 0 - I - 0x0294BD 0A:94AD: D0        .byte con_A03F_D0   ; 
- D 0 - I - 0x0294BE 0A:94AE: 35        .byte con_A644_35   ; 
; 09 
- D 0 - I - 0x0294BF 0A:94AF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294C0 0A:94B0: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x0294C1 0A:94B1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294C2 0A:94B2: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x0294C3 0A:94B3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294C4 0A:94B4: 0B        .byte con_A644_0B   ; 
; 0C 
- D 0 - I - 0x0294C5 0A:94B5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294C6 0A:94B6: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x0294C7 0A:94B7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294C8 0A:94B8: 00        .byte con_A644_00   ; 



off_94B9_00_01_00:
; 00 
- D 0 - I - 0x0294C9 0A:94B9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294CA 0A:94BA: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0294CB 0A:94BB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294CC 0A:94BC: 50        .byte con_A644_50   ; 
; 02 
- D 0 - I - 0x0294CD 0A:94BD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294CE 0A:94BE: 50        .byte con_A644_50   ; 
; 03 
- D 0 - I - 0x0294CF 0A:94BF: A0        .byte con_A03F_A0   ; 
- D 0 - I - 0x0294D0 0A:94C0: 68        .byte con_A644_68   ; 
; 04 
- D 0 - I - 0x0294D1 0A:94C1: 9F        .byte con_A03F_9F   ; 
- D 0 - I - 0x0294D2 0A:94C2: 47        .byte con_A644_47   ; 
; 05 
- D 0 - I - 0x0294D3 0A:94C3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294D4 0A:94C4: 00        .byte con_A644_00   ; 



off_94C5_00_01_02:
; 00 
- D 0 - I - 0x0294D5 0A:94C5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294D6 0A:94C6: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0294D7 0A:94C7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294D8 0A:94C8: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x0294D9 0A:94C9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294DA 0A:94CA: 3F        .byte con_A644_3F   ; 
; 03 
- D 0 - I - 0x0294DB 0A:94CB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294DC 0A:94CC: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x0294DD 0A:94CD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294DE 0A:94CE: 3F        .byte con_A644_3F   ; 
; 05 
- D 0 - I - 0x0294DF 0A:94CF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294E0 0A:94D0: 63        .byte con_A644_63   ; 
; 06 
- D 0 - I - 0x0294E1 0A:94D1: 09        .byte con_A03F_09   ; 
- D 0 - I - 0x0294E2 0A:94D2: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x0294E3 0A:94D3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294E4 0A:94D4: 07        .byte con_A644_07   ; 
; 08 
- D 0 - I - 0x0294E5 0A:94D5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294E6 0A:94D6: 08        .byte con_A644_08   ; 
; 09 
- D 0 - I - 0x0294E7 0A:94D7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294E8 0A:94D8: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x0294E9 0A:94D9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294EA 0A:94DA: 99        .byte con_A644_99   ; 
; 0B 
- D 0 - I - 0x0294EB 0A:94DB: 09        .byte con_A03F_09   ; 
- D 0 - I - 0x0294EC 0A:94DC: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x0294ED 0A:94DD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294EE 0A:94DE: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x0294EF 0A:94DF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294F0 0A:94E0: 00        .byte con_A644_00   ; 



off_94E1_00_01_03:
; 00 
- D 0 - I - 0x0294F1 0A:94E1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294F2 0A:94E2: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0294F3 0A:94E3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294F4 0A:94E4: 4B        .byte con_A644_4B   ; 
; 02 
- D 0 - I - 0x0294F5 0A:94E5: D3        .byte con_A03F_D3   ; 
- D 0 - I - 0x0294F6 0A:94E6: 50        .byte con_A644_50   ; 
; 03 
- D 0 - I - 0x0294F7 0A:94E7: 65        .byte con_A03F_65   ; 
- D 0 - I - 0x0294F8 0A:94E8: 4C        .byte con_A644_4C   ; 
; 04 
- D 0 - I - 0x0294F9 0A:94E9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0294FA 0A:94EA: 59        .byte con_A644_59   ; 
; 05 
- D 0 - I - 0x0294FB 0A:94EB: 65        .byte con_A03F_65   ; 
- D 0 - I - 0x0294FC 0A:94EC: 77        .byte con_A644_77   ; 
; 06 
- D 0 - I - 0x0294FD 0A:94ED: D3        .byte con_A03F_D3   ; 
- D 0 - I - 0x0294FE 0A:94EE: 02        .byte con_A644_02   ; 
; 07 
- D 0 - I - 0x0294FF 0A:94EF: 1D        .byte con_A03F_1D   ; 
- D 0 - I - 0x029500 0A:94F0: E6        .byte con_A644_E6   ; 
; 08 
- D 0 - I - 0x029501 0A:94F1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029502 0A:94F2: 10        .byte con_A644_10   ; 
; 09 
- D 0 - I - 0x029503 0A:94F3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029504 0A:94F4: 00        .byte con_A644_00   ; 



off_94F5_00_02_00:
; 00 
- D 0 - I - 0x029505 0A:94F5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029506 0A:94F6: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029507 0A:94F7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029508 0A:94F8: CC        .byte con_A644_CC   ; 
; 02 
- D 0 - I - 0x029509 0A:94F9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02950A 0A:94FA: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x02950B 0A:94FB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02950C 0A:94FC: 58        .byte con_A644_58   ; 
; 04 
- D 0 - I - 0x02950D 0A:94FD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02950E 0A:94FE: 2E        .byte con_A644_2E   ; 
; 05 
- D 0 - I - 0x02950F 0A:94FF: 10        .byte con_A03F_10   ; 
- D 0 - I - 0x029510 0A:9500: 50        .byte con_A644_50   ; 
; 06 
- D 0 - I - 0x029511 0A:9501: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029512 0A:9502: 53        .byte con_A644_53   ; 
; 07 
- D 0 - I - 0x029513 0A:9503: 0A        .byte con_A03F_0A   ; 
- D 0 - I - 0x029514 0A:9504: 53        .byte con_A644_53   ; 
; 08 
- D 0 - I - 0x029515 0A:9505: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029516 0A:9506: CD        .byte con_A644_CD   ; 
; 09 
- D 0 - I - 0x029517 0A:9507: 26        .byte con_A03F_26   ; 
- D 0 - I - 0x029518 0A:9508: 53        .byte con_A644_53   ; 
; 0A 
- D 0 - I - 0x029519 0A:9509: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02951A 0A:950A: 53        .byte con_A644_53   ; 
; 0B 
- D 0 - I - 0x02951B 0A:950B: 11        .byte con_A03F_11   ; 
- D 0 - I - 0x02951C 0A:950C: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x02951D 0A:950D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02951E 0A:950E: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x02951F 0A:950F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029520 0A:9510: 00        .byte con_A644_00   ; 



off_9511_00_02_01:
; 00 
- D 0 - I - 0x029521 0A:9511: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029522 0A:9512: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029523 0A:9513: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029524 0A:9514: E7        .byte con_A644_E7   ; 
; 02 
- D 0 - I - 0x029525 0A:9515: 66        .byte con_A03F_66   ; 
- D 0 - I - 0x029526 0A:9516: E8        .byte con_A644_E8   ; 
; 03 
- D 0 - I - 0x029527 0A:9517: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029528 0A:9518: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029529 0A:9519: D4        .byte con_A03F_D4   ; 
- D 0 - I - 0x02952A 0A:951A: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x02952B 0A:951B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02952C 0A:951C: 3F        .byte con_A644_3F   ; 
; 06 
- D 0 - I - 0x02952D 0A:951D: 66        .byte con_A03F_66   ; 
- D 0 - I - 0x02952E 0A:951E: EC        .byte con_A644_EC   ; 
; 07 
- D 0 - I - 0x02952F 0A:951F: D4        .byte con_A03F_D4   ; 
- D 0 - I - 0x029530 0A:9520: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029531 0A:9521: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029532 0A:9522: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029533 0A:9523: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029534 0A:9524: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029535 0A:9525: 66        .byte con_A03F_66   ; 
- D 0 - I - 0x029536 0A:9526: 34        .byte con_A644_34   ; 
; 0B 
- D 0 - I - 0x029537 0A:9527: D4        .byte con_A03F_D4   ; 
- D 0 - I - 0x029538 0A:9528: 57        .byte con_A644_57   ; 
; 0C 
- D 0 - I - 0x029539 0A:9529: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02953A 0A:952A: 57        .byte con_A644_57   ; 
; 0D 
- D 0 - I - 0x02953B 0A:952B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02953C 0A:952C: 00        .byte con_A644_00   ; 



off_952D_00_03_00:
; 00 
- D 0 - I - 0x02953D 0A:952D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02953E 0A:952E: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02953F 0A:952F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029540 0A:9530: AE        .byte con_A644_AE   ; 
; 02 
- D 0 - I - 0x029541 0A:9531: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029542 0A:9532: 34        .byte con_A644_34   ; 
; 03 
- D 0 - I - 0x029543 0A:9533: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029544 0A:9534: 54        .byte con_A644_54   ; 
; 04 
- D 0 - I - 0x029545 0A:9535: 01        .byte con_A03F_01   ; 
- D 0 - I - 0x029546 0A:9536: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029547 0A:9537: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029548 0A:9538: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029549 0A:9539: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02954A 0A:953A: 0A        .byte con_A644_0A   ; 
; 07 
- D 0 - I - 0x02954B 0A:953B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02954C 0A:953C: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x02954D 0A:953D: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x02954E 0A:953E: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x02954F 0A:953F: 0E        .byte con_A03F_0E   ; 
- D 0 - I - 0x029550 0A:9540: 0D        .byte con_A644_0D   ; 
; 0A 
- D 0 - I - 0x029551 0A:9541: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029552 0A:9542: 0D        .byte con_A644_0D   ; 
; 0B 
- D 0 - I - 0x029553 0A:9543: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029554 0A:9544: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029555 0A:9545: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029556 0A:9546: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029557 0A:9547: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029558 0A:9548: 00        .byte con_A644_00   ; 
; 0E 
- D 0 - I - 0x029559 0A:9549: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02955A 0A:954A: 00        .byte con_A644_00   ; 
; 0F 
- D 0 - I - 0x02955B 0A:954B: 03        .byte con_A03F_03   ; 
- D 0 - I - 0x02955C 0A:954C: 00        .byte con_A644_00   ; 
; 10 
- D 0 - I - 0x02955D 0A:954D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02955E 0A:954E: DE        .byte con_A644_DE   ; 
; 11 
- D 0 - I - 0x02955F 0A:954F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029560 0A:9550: 00        .byte con_A644_00   ; 



off_9551_01_00_01:
off_9551_01_05_01:
; 00 
- D 0 - I - 0x029561 0A:9551: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029562 0A:9552: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029563 0A:9553: 5A        .byte con_A03F_5A   ; 
- D 0 - I - 0x029564 0A:9554: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029565 0A:9555: E3        .byte con_A03F_E3   ; 
- D 0 - I - 0x029566 0A:9556: 23        .byte con_A644_23   ; 
; 03 
- D 0 - I - 0x029567 0A:9557: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029568 0A:9558: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029569 0A:9559: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02956A 0A:955A: 22        .byte con_A644_22   ; 
; 05 
- D 0 - I - 0x02956B 0A:955B: BA        .byte con_A03F_BA   ; 
- D 0 - I - 0x02956C 0A:955C: 24        .byte con_A644_24   ; 
; 06 
- D 0 - I - 0x02956D 0A:955D: 58        .byte con_A03F_58   ; 
- D 0 - I - 0x02956E 0A:955E: 73        .byte con_A644_73   ; 
; 07 
- D 0 - I - 0x02956F 0A:955F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029570 0A:9560: 0D        .byte con_A644_0D   ; 
; 08 
- D 0 - I - 0x029571 0A:9561: 59        .byte con_A03F_59   ; 
- D 0 - I - 0x029572 0A:9562: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029573 0A:9563: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029574 0A:9564: 00        .byte con_A644_00   ; 



off_9565_01_00_02:
off_9565_01_05_02:
; 00 
- D 0 - I - 0x029575 0A:9565: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029576 0A:9566: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029577 0A:9567: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029578 0A:9568: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029579 0A:9569: D4        .byte con_A03F_D4   ; 
- D 0 - I - 0x02957A 0A:956A: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x02957B 0A:956B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02957C 0A:956C: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x02957D 0A:956D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02957E 0A:956E: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x02957F 0A:956F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029580 0A:9570: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029581 0A:9571: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029582 0A:9572: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029583 0A:9573: D4        .byte con_A03F_D4   ; 
- D 0 - I - 0x029584 0A:9574: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029585 0A:9575: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029586 0A:9576: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029587 0A:9577: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029588 0A:9578: 00        .byte con_A644_00   ; 



off_9579_01_01_00:
off_9579_01_04_00:
; 00 
- D 0 - I - 0x029589 0A:9579: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02958A 0A:957A: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02958B 0A:957B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02958C 0A:957C: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x02958D 0A:957D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02958E 0A:957E: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x02958F 0A:957F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029590 0A:9580: 74        .byte con_A644_74   ; 
; 04 
- D 0 - I - 0x029591 0A:9581: 5C        .byte con_A03F_5C   ; 
- D 0 - I - 0x029592 0A:9582: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029593 0A:9583: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029594 0A:9584: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029595 0A:9585: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029596 0A:9586: 75        .byte con_A644_75   ; 
; 07 
- D 0 - I - 0x029597 0A:9587: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029598 0A:9588: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029599 0A:9589: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02959A 0A:958A: 76        .byte con_A644_76   ; 
; 09 
- D 0 - I - 0x02959B 0A:958B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02959C 0A:958C: 00        .byte con_A644_00   ; 



off_958D_01_01_02:
off_958D_01_04_02:
; 00 
- D 0 - I - 0x02959D 0A:958D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02959E 0A:958E: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02959F 0A:958F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295A0 0A:9590: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x0295A1 0A:9591: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295A2 0A:9592: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x0295A3 0A:9593: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295A4 0A:9594: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x0295A5 0A:9595: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295A6 0A:9596: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x0295A7 0A:9597: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295A8 0A:9598: 00        .byte con_A644_00   ; 



off_9599_01_02_00:
off_9599_01_03_00:
; 00 
- D 0 - I - 0x0295A9 0A:9599: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295AA 0A:959A: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0295AB 0A:959B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295AC 0A:959C: 78        .byte con_A644_78   ; 
; 02 
- D 0 - I - 0x0295AD 0A:959D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295AE 0A:959E: 79        .byte con_A644_79   ; 
; 03 
- D 0 - I - 0x0295AF 0A:959F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295B0 0A:95A0: BD        .byte con_A644_BD   ; 
; 04 
- D 0 - I - 0x0295B1 0A:95A1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295B2 0A:95A2: F7        .byte con_A644_F7   ; 
; 05 
- D 0 - I - 0x0295B3 0A:95A3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295B4 0A:95A4: 00        .byte con_A644_00   ; 



off_95A5_01_02_02:
off_95A5_01_03_02:
; 00 
- D 0 - I - 0x0295B5 0A:95A5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295B6 0A:95A6: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0295B7 0A:95A7: 05        .byte con_A03F_05   ; 
- D 0 - I - 0x0295B8 0A:95A8: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x0295B9 0A:95A9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295BA 0A:95AA: 94        .byte con_A644_94   ; 
; 03 
- D 0 - I - 0x0295BB 0A:95AB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295BC 0A:95AC: 3B        .byte con_A644_3B   ; 
; 04 
- D 0 - I - 0x0295BD 0A:95AD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295BE 0A:95AE: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x0295BF 0A:95AF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295C0 0A:95B0: 96        .byte con_A644_96   ; 
; 06 
- D 0 - I - 0x0295C1 0A:95B1: BB        .byte con_A03F_BB   ; 
- D 0 - I - 0x0295C2 0A:95B2: 7B        .byte con_A644_7B   ; 
; 07 
- D 0 - I - 0x0295C3 0A:95B3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295C4 0A:95B4: 9D        .byte con_A644_9D   ; 
; 08 
- D 0 - I - 0x0295C5 0A:95B5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295C6 0A:95B6: 05        .byte con_A644_05   ; 
; 09 
- D 0 - I - 0x0295C7 0A:95B7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295C8 0A:95B8: 00        .byte con_A644_00   ; 



off_95B9_02_00_00:
; 00 
- D 0 - I - 0x0295C9 0A:95B9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295CA 0A:95BA: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0295CB 0A:95BB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295CC 0A:95BC: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x0295CD 0A:95BD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295CE 0A:95BE: 29        .byte con_A644_29   ; 
; 03 
- D 0 - I - 0x0295CF 0A:95BF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295D0 0A:95C0: 42        .byte con_A644_42   ; 
; 04 
- D 0 - I - 0x0295D1 0A:95C1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295D2 0A:95C2: 3E        .byte con_A644_3E   ; 
; 05 
- D 0 - I - 0x0295D3 0A:95C3: D2        .byte con_A03F_D2   ; 
- D 0 - I - 0x0295D4 0A:95C4: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x0295D5 0A:95C5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295D6 0A:95C6: 3F        .byte con_A644_3F   ; 
; 07 
- D 0 - I - 0x0295D7 0A:95C7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295D8 0A:95C8: 3F        .byte con_A644_3F   ; 
; 08 
- D 0 - I - 0x0295D9 0A:95C9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295DA 0A:95CA: 3F        .byte con_A644_3F   ; 
; 09 
- D 0 - I - 0x0295DB 0A:95CB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295DC 0A:95CC: 2C        .byte con_A644_2C   ; 
; 0A 
- D 0 - I - 0x0295DD 0A:95CD: 14        .byte con_A03F_14   ; 
- D 0 - I - 0x0295DE 0A:95CE: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x0295DF 0A:95CF: D2        .byte con_A03F_D2   ; 
- D 0 - I - 0x0295E0 0A:95D0: 02        .byte con_A644_02   ; 
; 0C 
- D 0 - I - 0x0295E1 0A:95D1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295E2 0A:95D2: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x0295E3 0A:95D3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295E4 0A:95D4: 00        .byte con_A644_00   ; 



off_95D5_02_00_01:
; 00 
- D 0 - I - 0x0295E5 0A:95D5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295E6 0A:95D6: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0295E7 0A:95D7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295E8 0A:95D8: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x0295E9 0A:95D9: 65        .byte con_A03F_65   ; 
- D 0 - I - 0x0295EA 0A:95DA: 10        .byte con_A644_10   ; 
; 03 
- D 0 - I - 0x0295EB 0A:95DB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295EC 0A:95DC: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x0295ED 0A:95DD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295EE 0A:95DE: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x0295EF 0A:95DF: 68        .byte con_A03F_68   ; 
- D 0 - I - 0x0295F0 0A:95E0: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x0295F1 0A:95E1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295F2 0A:95E2: 42        .byte con_A644_42   ; 
; 07 
- D 0 - I - 0x0295F3 0A:95E3: 1D        .byte con_A03F_1D   ; 
- D 0 - I - 0x0295F4 0A:95E4: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x0295F5 0A:95E5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295F6 0A:95E6: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x0295F7 0A:95E7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295F8 0A:95E8: 26        .byte con_A644_26   ; 
; 0A 
- D 0 - I - 0x0295F9 0A:95E9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295FA 0A:95EA: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x0295FB 0A:95EB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295FC 0A:95EC: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x0295FD 0A:95ED: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0295FE 0A:95EE: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x0295FF 0A:95EF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029600 0A:95F0: 00        .byte con_A644_00   ; 



off_95F1_02_01_00:
; 00 
- D 0 - I - 0x029601 0A:95F1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029602 0A:95F2: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029603 0A:95F3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029604 0A:95F4: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029605 0A:95F5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029606 0A:95F6: 4D        .byte con_A644_4D   ; 
; 03 
- D 0 - I - 0x029607 0A:95F7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029608 0A:95F8: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029609 0A:95F9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02960A 0A:95FA: 4D        .byte con_A644_4D   ; 
; 05 
- D 0 - I - 0x02960B 0A:95FB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02960C 0A:95FC: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x02960D 0A:95FD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02960E 0A:95FE: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x02960F 0A:95FF: 38        .byte con_A03F_38   ; 
- D 0 - I - 0x029610 0A:9600: 29        .byte con_A644_29   ; 
; 08 
- D 0 - I - 0x029611 0A:9601: 37        .byte con_A03F_37   ; 
- D 0 - I - 0x029612 0A:9602: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029613 0A:9603: 47        .byte con_A03F_47   ; 
- D 0 - I - 0x029614 0A:9604: 4F        .byte con_A644_4F   ; 
; 0A 
- D 0 - I - 0x029615 0A:9605: 3C        .byte con_A03F_3C   ; 
- D 0 - I - 0x029616 0A:9606: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x029617 0A:9607: 45        .byte con_A03F_45   ; 
- D 0 - I - 0x029618 0A:9608: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029619 0A:9609: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02961A 0A:960A: 4D        .byte con_A644_4D   ; 
; 0D 
- D 0 - I - 0x02961B 0A:960B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02961C 0A:960C: 00        .byte con_A644_00   ; 
; 0E 
- D 0 - I - 0x02961D 0A:960D: 48        .byte con_A03F_48   ; 
- D 0 - I - 0x02961E 0A:960E: 00        .byte con_A644_00   ; 
; 0F 
- D 0 - I - 0x02961F 0A:960F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029620 0A:9610: 00        .byte con_A644_00   ; 
; 10 
- D 0 - I - 0x029621 0A:9611: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029622 0A:9612: 00        .byte con_A644_00   ; 
; 11 
- D 0 - I - 0x029623 0A:9613: 47        .byte con_A03F_47   ; 
- D 0 - I - 0x029624 0A:9614: 51        .byte con_A644_51   ; 
; 12 
- D 0 - I - 0x029625 0A:9615: 46        .byte con_A03F_46   ; 
- D 0 - I - 0x029626 0A:9616: 00        .byte con_A644_00   ; 
; 13 
- D 0 - I - 0x029627 0A:9617: 3C        .byte con_A03F_3C   ; 
- D 0 - I - 0x029628 0A:9618: 00        .byte con_A644_00   ; 
; 14 
- D 0 - I - 0x029629 0A:9619: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02962A 0A:961A: 29        .byte con_A644_29   ; 
; 15 
- D 0 - I - 0x02962B 0A:961B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02962C 0A:961C: 00        .byte con_A644_00   ; 
; 16 
- D 0 - I - 0x02962D 0A:961D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02962E 0A:961E: 00        .byte con_A644_00   ; 
; 17 
- D 0 - I - 0x02962F 0A:961F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029630 0A:9620: 4B        .byte con_A644_4B   ; 
; 18 
- D 0 - I - 0x029631 0A:9621: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029632 0A:9622: 2E        .byte con_A644_2E   ; 
; 19 
- D 0 - I - 0x029633 0A:9623: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029634 0A:9624: 00        .byte con_A644_00   ; 



off_9625_02_02_00:
; 00 
- D 0 - I - 0x029635 0A:9625: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029636 0A:9626: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029637 0A:9627: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029638 0A:9628: 9D        .byte con_A644_9D   ; 
; 02 
- D 0 - I - 0x029639 0A:9629: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02963A 0A:962A: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x02963B 0A:962B: 6E        .byte con_A03F_6E   ; 
- D 0 - I - 0x02963C 0A:962C: 90        .byte con_A644_90   ; 
; 04 
- D 0 - I - 0x02963D 0A:962D: 26        .byte con_A03F_26   ; 
- D 0 - I - 0x02963E 0A:962E: 6D        .byte con_A644_6D   ; 
; 05 
- D 0 - I - 0x02963F 0A:962F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029640 0A:9630: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029641 0A:9631: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029642 0A:9632: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029643 0A:9633: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029644 0A:9634: 00        .byte con_A644_00   ; 
; 08 
- - - - - - 0x029645 0A:9635: 00        .byte con_A03F_00   ; 
- - - - - - 0x029646 0A:9636: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029647 0A:9637: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029648 0A:9638: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029649 0A:9639: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02964A 0A:963A: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x02964B 0A:963B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02964C 0A:963C: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x02964D 0A:963D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02964E 0A:963E: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x02964F 0A:963F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029650 0A:9640: 00        .byte con_A644_00   ; 
; 0E 
- D 0 - I - 0x029651 0A:9641: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029652 0A:9642: 00        .byte con_A644_00   ; 
; 0F 
- D 0 - I - 0x029653 0A:9643: 74        .byte con_A03F_74   ; 
- D 0 - I - 0x029654 0A:9644: 00        .byte con_A644_00   ; 
; 10 
- D 0 - I - 0x029655 0A:9645: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029656 0A:9646: 00        .byte con_A644_00   ; 
; 11 
- D 0 - I - 0x029657 0A:9647: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029658 0A:9648: 00        .byte con_A644_00   ; 



off_9649_02_02_01:
; 00 
- D 0 - I - 0x029659 0A:9649: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02965A 0A:964A: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02965B 0A:964B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02965C 0A:964C: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x02965D 0A:964D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02965E 0A:964E: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x02965F 0A:964F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029660 0A:9650: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029661 0A:9651: 06        .byte con_A03F_06   ; 
- D 0 - I - 0x029662 0A:9652: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029663 0A:9653: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029664 0A:9654: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029665 0A:9655: 87        .byte con_A03F_87   ; 
- D 0 - I - 0x029666 0A:9656: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029667 0A:9657: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029668 0A:9658: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029669 0A:9659: 69        .byte con_A03F_69   ; 
- D 0 - I - 0x02966A 0A:965A: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x02966B 0A:965B: 06        .byte con_A03F_06   ; 
- D 0 - I - 0x02966C 0A:965C: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x02966D 0A:965D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02966E 0A:965E: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x02966F 0A:965F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029670 0A:9660: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029671 0A:9661: 87        .byte con_A03F_87   ; 
- D 0 - I - 0x029672 0A:9662: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029673 0A:9663: 6A        .byte con_A03F_6A   ; 
- D 0 - I - 0x029674 0A:9664: 00        .byte con_A644_00   ; 
; 0E 
- D 0 - I - 0x029675 0A:9665: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029676 0A:9666: 00        .byte con_A644_00   ; 
; 0F 
- D 0 - I - 0x029677 0A:9667: 06        .byte con_A03F_06   ; 
- D 0 - I - 0x029678 0A:9668: 00        .byte con_A644_00   ; 
; 10 
- D 0 - I - 0x029679 0A:9669: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02967A 0A:966A: 00        .byte con_A644_00   ; 
; 11 
- D 0 - I - 0x02967B 0A:966B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02967C 0A:966C: 00        .byte con_A644_00   ; 



off_966D_02_03_00:
; 00 
- D 0 - I - 0x02967D 0A:966D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02967E 0A:966E: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02967F 0A:966F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029680 0A:9670: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029681 0A:9671: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029682 0A:9672: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029683 0A:9673: 67        .byte con_A03F_67   ; 
- D 0 - I - 0x029684 0A:9674: 7B        .byte con_A644_7B   ; 
; 04 
- D 0 - I - 0x029685 0A:9675: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029686 0A:9676: 2E        .byte con_A644_2E   ; 
; 05 
- D 0 - I - 0x029687 0A:9677: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029688 0A:9678: 00        .byte con_A644_00   ; 



off_9679_02_03_01:
; 00 
- D 0 - I - 0x029689 0A:9679: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02968A 0A:967A: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02968B 0A:967B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02968C 0A:967C: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x02968D 0A:967D: 5F        .byte con_A03F_5F   ; 
- D 0 - I - 0x02968E 0A:967E: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x02968F 0A:967F: 60        .byte con_A03F_60   ; 
- D 0 - I - 0x029690 0A:9680: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029691 0A:9681: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029692 0A:9682: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029693 0A:9683: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029694 0A:9684: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029695 0A:9685: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029696 0A:9686: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029697 0A:9687: 5F        .byte con_A03F_5F   ; 
- D 0 - I - 0x029698 0A:9688: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029699 0A:9689: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02969A 0A:968A: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x02969B 0A:968B: 60        .byte con_A03F_60   ; 
- D 0 - I - 0x02969C 0A:968C: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x02969D 0A:968D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02969E 0A:968E: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x02969F 0A:968F: 60        .byte con_A03F_60   ; 
- D 0 - I - 0x0296A0 0A:9690: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x0296A1 0A:9691: 60        .byte con_A03F_60   ; 
- D 0 - I - 0x0296A2 0A:9692: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x0296A3 0A:9693: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296A4 0A:9694: 00        .byte con_A644_00   ; 
; 0E 
- D 0 - I - 0x0296A5 0A:9695: 5F        .byte con_A03F_5F   ; 
- D 0 - I - 0x0296A6 0A:9696: 00        .byte con_A644_00   ; 
; 0F 
- D 0 - I - 0x0296A7 0A:9697: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296A8 0A:9698: 00        .byte con_A644_00   ; 
; 10 
- D 0 - I - 0x0296A9 0A:9699: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296AA 0A:969A: 00        .byte con_A644_00   ; 
; 11 
- D 0 - I - 0x0296AB 0A:969B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296AC 0A:969C: 00        .byte con_A644_00   ; 



off_969D_02_03_02:
; 00 
- D 0 - I - 0x0296AD 0A:969D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296AE 0A:969E: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0296AF 0A:969F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296B0 0A:96A0: DC        .byte con_A644_DC   ; 
; 02 
- D 0 - I - 0x0296B1 0A:96A1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296B2 0A:96A2: A8        .byte con_A644_A8   ; 
; 03 
- D 0 - I - 0x0296B3 0A:96A3: 88        .byte con_A03F_88   ; 
- D 0 - I - 0x0296B4 0A:96A4: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x0296B5 0A:96A5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296B6 0A:96A6: 4D        .byte con_A644_4D   ; 
; 05 
- D 0 - I - 0x0296B7 0A:96A7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296B8 0A:96A8: 00        .byte con_A644_00   ; 



off_96A9_02_04_00:
; 00 
- D 0 - I - 0x0296B9 0A:96A9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296BA 0A:96AA: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0296BB 0A:96AB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296BC 0A:96AC: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x0296BD 0A:96AD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296BE 0A:96AE: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x0296BF 0A:96AF: D7        .byte con_A03F_D7   ; 
- D 0 - I - 0x0296C0 0A:96B0: 3F        .byte con_A644_3F   ; 
; 04 
- D 0 - I - 0x0296C1 0A:96B1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296C2 0A:96B2: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x0296C3 0A:96B3: 07        .byte con_A03F_07   ; 
- D 0 - I - 0x0296C4 0A:96B4: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x0296C5 0A:96B5: 08        .byte con_A03F_08   ; 
- D 0 - I - 0x0296C6 0A:96B6: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x0296C7 0A:96B7: 06        .byte con_A03F_06   ; 
- D 0 - I - 0x0296C8 0A:96B8: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x0296C9 0A:96B9: 04        .byte con_A03F_04   ; 
- D 0 - I - 0x0296CA 0A:96BA: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x0296CB 0A:96BB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296CC 0A:96BC: 00        .byte con_A644_00   ; 



off_96BD_02_04_01:
; 00 
- D 0 - I - 0x0296CD 0A:96BD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296CE 0A:96BE: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0296CF 0A:96BF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296D0 0A:96C0: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x0296D1 0A:96C1: 30        .byte con_A03F_30   ; 
- D 0 - I - 0x0296D2 0A:96C2: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x0296D3 0A:96C3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296D4 0A:96C4: 2F        .byte con_A644_2F   ; 
; 04 
- D 0 - I - 0x0296D5 0A:96C5: 30        .byte con_A03F_30   ; 
- D 0 - I - 0x0296D6 0A:96C6: 30        .byte con_A644_30   ; 
; 05 
- D 0 - I - 0x0296D7 0A:96C7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296D8 0A:96C8: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x0296D9 0A:96C9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296DA 0A:96CA: 51        .byte con_A644_51   ; 
; 07 
- D 0 - I - 0x0296DB 0A:96CB: 67        .byte con_A03F_67   ; 
- D 0 - I - 0x0296DC 0A:96CC: 51        .byte con_A644_51   ; 
; 08 
- D 0 - I - 0x0296DD 0A:96CD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296DE 0A:96CE: ED        .byte con_A644_ED   ; 
; 09 
- D 0 - I - 0x0296DF 0A:96CF: 30        .byte con_A03F_30   ; 
- D 0 - I - 0x0296E0 0A:96D0: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x0296E1 0A:96D1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296E2 0A:96D2: A5        .byte con_A644_A5   ; 
; 0B 
- D 0 - I - 0x0296E3 0A:96D3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296E4 0A:96D4: 0B        .byte con_A644_0B   ; 
; 0C 
- D 0 - I - 0x0296E5 0A:96D5: 30        .byte con_A03F_30   ; 
- D 0 - I - 0x0296E6 0A:96D6: 51        .byte con_A644_51   ; 
; 0D 
- D 0 - I - 0x0296E7 0A:96D7: 67        .byte con_A03F_67   ; 
- D 0 - I - 0x0296E8 0A:96D8: 00        .byte con_A644_00   ; 
; 0E 
- D 0 - I - 0x0296E9 0A:96D9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296EA 0A:96DA: 53        .byte con_A644_53   ; 
; 0F 
- D 0 - I - 0x0296EB 0A:96DB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296EC 0A:96DC: 53        .byte con_A644_53   ; 
; 10 
- D 0 - I - 0x0296ED 0A:96DD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296EE 0A:96DE: 00        .byte con_A644_00   ; 
; 11 
- D 0 - I - 0x0296EF 0A:96DF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296F0 0A:96E0: 00        .byte con_A644_00   ; 



off_96E1_03_00_00:
; 00 
- D 0 - I - 0x0296F1 0A:96E1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296F2 0A:96E2: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0296F3 0A:96E3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296F4 0A:96E4: 17        .byte con_A644_17   ; 
; 02 
- D 0 - I - 0x0296F5 0A:96E5: D2        .byte con_A03F_D2   ; 
- D 0 - I - 0x0296F6 0A:96E6: 7D        .byte con_A644_7D   ; 
; 03 
- D 0 - I - 0x0296F7 0A:96E7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296F8 0A:96E8: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x0296F9 0A:96E9: 3A        .byte con_A03F_3A   ; 
- D 0 - I - 0x0296FA 0A:96EA: 7E        .byte con_A644_7E   ; 
; 05 
- D 0 - I - 0x0296FB 0A:96EB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0296FC 0A:96EC: 1C        .byte con_A644_1C   ; 
; 06 
- D 0 - I - 0x0296FD 0A:96ED: 2F        .byte con_A03F_2F   ; 
- D 0 - I - 0x0296FE 0A:96EE: 1C        .byte con_A644_1C   ; 
; 07 
- D 0 - I - 0x0296FF 0A:96EF: D2        .byte con_A03F_D2   ; 
- D 0 - I - 0x029700 0A:96F0: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029701 0A:96F1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029702 0A:96F2: 87        .byte con_A644_87   ; 
; 09 
- D 0 - I - 0x029703 0A:96F3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029704 0A:96F4: 00        .byte con_A644_00   ; 



off_96F5_03_00_01:
; 00 
- D 0 - I - 0x029705 0A:96F5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029706 0A:96F6: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029707 0A:96F7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029708 0A:96F8: 13        .byte con_A644_13   ; 
; 02 
- D 0 - I - 0x029709 0A:96F9: D6        .byte con_A03F_D6   ; 
- D 0 - I - 0x02970A 0A:96FA: 1B        .byte con_A644_1B   ; 
; 03 
- D 0 - I - 0x02970B 0A:96FB: 2F        .byte con_A03F_2F   ; 
- D 0 - I - 0x02970C 0A:96FC: 15        .byte con_A644_15   ; 
; 04 
- D 0 - I - 0x02970D 0A:96FD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02970E 0A:96FE: 17        .byte con_A644_17   ; 
; 05 
- D 0 - I - 0x02970F 0A:96FF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029710 0A:9700: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029711 0A:9701: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029712 0A:9702: 1B        .byte con_A644_1B   ; 
; 07 
- D 0 - I - 0x029713 0A:9703: 31        .byte con_A03F_31   ; 
- D 0 - I - 0x029714 0A:9704: 7F        .byte con_A644_7F   ; 
; 08 
- D 0 - I - 0x029715 0A:9705: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029716 0A:9706: 1B        .byte con_A644_1B   ; 
; 09 
- D 0 - I - 0x029717 0A:9707: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029718 0A:9708: 00        .byte con_A644_00   ; 



off_9709_03_00_02:
; 00 
- D 0 - I - 0x029719 0A:9709: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02971A 0A:970A: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02971B 0A:970B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02971C 0A:970C: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x02971D 0A:970D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02971E 0A:970E: 11        .byte con_A644_11   ; 
; 03 
- D 0 - I - 0x02971F 0A:970F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029720 0A:9710: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029721 0A:9711: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029722 0A:9712: 11        .byte con_A644_11   ; 
; 05 
- D 0 - I - 0x029723 0A:9713: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029724 0A:9714: 1A        .byte con_A644_1A   ; 
; 06 
- D 0 - I - 0x029725 0A:9715: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029726 0A:9716: 82        .byte con_A644_82   ; 
; 07 
- D 0 - I - 0x029727 0A:9717: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029728 0A:9718: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029729 0A:9719: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02972A 0A:971A: EE        .byte con_A644_EE   ; 
; 09 
- D 0 - I - 0x02972B 0A:971B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02972C 0A:971C: 00        .byte con_A644_00   ; 



off_971D_03_01_00:
; 00 
- D 0 - I - 0x02972D 0A:971D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02972E 0A:971E: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02972F 0A:971F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029730 0A:9720: 1D        .byte con_A644_1D   ; 
; 02 
- D 0 - I - 0x029731 0A:9721: E1        .byte con_A03F_E1   ; 
- D 0 - I - 0x029732 0A:9722: 1D        .byte con_A644_1D   ; 
; 03 
- D 0 - I - 0x029733 0A:9723: 57        .byte con_A03F_57   ; 
- D 0 - I - 0x029734 0A:9724: 1D        .byte con_A644_1D   ; 
; 04 
- D 0 - I - 0x029735 0A:9725: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029736 0A:9726: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029737 0A:9727: DA        .byte con_A03F_DA   ; 
- D 0 - I - 0x029738 0A:9728: 1B        .byte con_A644_1B   ; 
; 06 
- D 0 - I - 0x029739 0A:9729: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02973A 0A:972A: 8F        .byte con_A644_8F   ; 
; 07 
- D 0 - I - 0x02973B 0A:972B: E0        .byte con_A03F_E0   ; 
- D 0 - I - 0x02973C 0A:972C: 1B        .byte con_A644_1B   ; 
; 08 
- D 0 - I - 0x02973D 0A:972D: 14        .byte con_A03F_14   ; 
- D 0 - I - 0x02973E 0A:972E: 1E        .byte con_A644_1E   ; 
; 09 
- D 0 - I - 0x02973F 0A:972F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029740 0A:9730: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029741 0A:9731: E1        .byte con_A03F_E1   ; 
- D 0 - I - 0x029742 0A:9732: 1D        .byte con_A644_1D   ; 
; 0B 
- D 0 - I - 0x029743 0A:9733: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029744 0A:9734: 1D        .byte con_A644_1D   ; 
; 0C 
- D 0 - I - 0x029745 0A:9735: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029746 0A:9736: 1D        .byte con_A644_1D   ; 
; 0D 
- D 0 - I - 0x029747 0A:9737: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029748 0A:9738: 84        .byte con_A644_84   ; 
; 0E 
- D 0 - I - 0x029749 0A:9739: 57        .byte con_A03F_57   ; 
- D 0 - I - 0x02974A 0A:973A: 00        .byte con_A644_00   ; 
; 0F 
- D 0 - I - 0x02974B 0A:973B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02974C 0A:973C: 1F        .byte con_A644_1F   ; 
; 10 
- D 0 - I - 0x02974D 0A:973D: 6E        .byte con_A03F_6E   ; 
- D 0 - I - 0x02974E 0A:973E: 00        .byte con_A644_00   ; 
; 11 
- D 0 - I - 0x02974F 0A:973F: E1        .byte con_A03F_E1   ; 
- D 0 - I - 0x029750 0A:9740: 1F        .byte con_A644_1F   ; 
; 12 
- D 0 - I - 0x029751 0A:9741: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029752 0A:9742: 20        .byte con_A644_20   ; 
; 13 
- D 0 - I - 0x029753 0A:9743: 16        .byte con_A03F_16   ; 
- D 0 - I - 0x029754 0A:9744: 20        .byte con_A644_20   ; 
; 14 
- D 0 - I - 0x029755 0A:9745: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029756 0A:9746: 00        .byte con_A644_00   ; 
; 15 
- D 0 - I - 0x029757 0A:9747: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029758 0A:9748: 00        .byte con_A644_00   ; 



off_9749_03_01_01:
; 00 
- D 0 - I - 0x029759 0A:9749: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02975A 0A:974A: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02975B 0A:974B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02975C 0A:974C: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x02975D 0A:974D: E2        .byte con_A03F_E2   ; 
- D 0 - I - 0x02975E 0A:974E: 1B        .byte con_A644_1B   ; 
; 03 
- D 0 - I - 0x02975F 0A:974F: 79        .byte con_A03F_79   ; 
- D 0 - I - 0x029760 0A:9750: 1F        .byte con_A644_1F   ; 
; 04 
- D 0 - I - 0x029761 0A:9751: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029762 0A:9752: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029763 0A:9753: 02        .byte con_A03F_02   ; 
- D 0 - I - 0x029764 0A:9754: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029765 0A:9755: D3        .byte con_A03F_D3   ; 
- D 0 - I - 0x029766 0A:9756: 1B        .byte con_A644_1B   ; 
; 07 
- D 0 - I - 0x029767 0A:9757: 15        .byte con_A03F_15   ; 
- D 0 - I - 0x029768 0A:9758: 12        .byte con_A644_12   ; 
; 08 
- D 0 - I - 0x029769 0A:9759: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02976A 0A:975A: 12        .byte con_A644_12   ; 
; 09 
- D 0 - I - 0x02976B 0A:975B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02976C 0A:975C: 00        .byte con_A644_00   ; 



off_975D_03_02_00:
; 00 
- D 0 - I - 0x02976D 0A:975D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02976E 0A:975E: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02976F 0A:975F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029770 0A:9760: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029771 0A:9761: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029772 0A:9762: 1B        .byte con_A644_1B   ; 
; 03 
- D 0 - I - 0x029773 0A:9763: 14        .byte con_A03F_14   ; 
- D 0 - I - 0x029774 0A:9764: 86        .byte con_A644_86   ; 
; 04 
- D 0 - I - 0x029775 0A:9765: D4        .byte con_A03F_D4   ; 
- D 0 - I - 0x029776 0A:9766: 87        .byte con_A644_87   ; 
; 05 
- D 0 - I - 0x029777 0A:9767: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029778 0A:9768: 1B        .byte con_A644_1B   ; 
; 06 
- D 0 - I - 0x029779 0A:9769: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02977A 0A:976A: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x02977B 0A:976B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02977C 0A:976C: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x02977D 0A:976D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02977E 0A:976E: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x02977F 0A:976F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029780 0A:9770: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029781 0A:9771: D4        .byte con_A03F_D4   ; 
- D 0 - I - 0x029782 0A:9772: 7E        .byte con_A644_7E   ; 
; 0B 
- D 0 - I - 0x029783 0A:9773: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029784 0A:9774: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029785 0A:9775: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029786 0A:9776: 7C        .byte con_A644_7C   ; 
; 0D 
- D 0 - I - 0x029787 0A:9777: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029788 0A:9778: F9        .byte con_A644_F9   ; 
; 0E 
- D 0 - I - 0x029789 0A:9779: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02978A 0A:977A: 00        .byte con_A644_00   ; 
; 0F 
- D 0 - I - 0x02978B 0A:977B: D4        .byte con_A03F_D4   ; 
- D 0 - I - 0x02978C 0A:977C: 00        .byte con_A644_00   ; 
; 10 
- D 0 - I - 0x02978D 0A:977D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02978E 0A:977E: 1B        .byte con_A644_1B   ; 
; 11 
- D 0 - I - 0x02978F 0A:977F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029790 0A:9780: 00        .byte con_A644_00   ; 



off_9781_03_02_01:
; 00 
- D 0 - I - 0x029791 0A:9781: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029792 0A:9782: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029793 0A:9783: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029794 0A:9784: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029795 0A:9785: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029796 0A:9786: 16        .byte con_A644_16   ; 
; 03 
- D 0 - I - 0x029797 0A:9787: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029798 0A:9788: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029799 0A:9789: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02979A 0A:978A: 1B        .byte con_A644_1B   ; 
; 05 
- D 0 - I - 0x02979B 0A:978B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02979C 0A:978C: 88        .byte con_A644_88   ; 
; 06 
- D 0 - I - 0x02979D 0A:978D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02979E 0A:978E: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x02979F 0A:978F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297A0 0A:9790: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x0297A1 0A:9791: 27        .byte con_A03F_27   ; 
- D 0 - I - 0x0297A2 0A:9792: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x0297A3 0A:9793: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297A4 0A:9794: 00        .byte con_A644_00   ; 



off_9795_03_03_00:
; 00 
- D 0 - I - 0x0297A5 0A:9795: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297A6 0A:9796: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0297A7 0A:9797: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297A8 0A:9798: 8E        .byte con_A644_8E   ; 
; 02 
- D 0 - I - 0x0297A9 0A:9799: 5E        .byte con_A03F_5E   ; 
- D 0 - I - 0x0297AA 0A:979A: 31        .byte con_A644_31   ; 
; 03 
- D 0 - I - 0x0297AB 0A:979B: D5        .byte con_A03F_D5   ; 
- D 0 - I - 0x0297AC 0A:979C: 8B        .byte con_A644_8B   ; 
; 04 
- D 0 - I - 0x0297AD 0A:979D: 75        .byte con_A03F_75   ; 
- D 0 - I - 0x0297AE 0A:979E: 1F        .byte con_A644_1F   ; 
; 05 
- D 0 - I - 0x0297AF 0A:979F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297B0 0A:97A0: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x0297B1 0A:97A1: D5        .byte con_A03F_D5   ; 
- D 0 - I - 0x0297B2 0A:97A2: 1C        .byte con_A644_1C   ; 
; 07 
- D 0 - I - 0x0297B3 0A:97A3: 75        .byte con_A03F_75   ; 
- D 0 - I - 0x0297B4 0A:97A4: 8C        .byte con_A644_8C   ; 
; 08 
- D 0 - I - 0x0297B5 0A:97A5: 5E        .byte con_A03F_5E   ; 
- D 0 - I - 0x0297B6 0A:97A6: 1C        .byte con_A644_1C   ; 
; 09 
- D 0 - I - 0x0297B7 0A:97A7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297B8 0A:97A8: 17        .byte con_A644_17   ; 
; 0A 
- D 0 - I - 0x0297B9 0A:97A9: 5D        .byte con_A03F_5D   ; 
- D 0 - I - 0x0297BA 0A:97AA: 19        .byte con_A644_19   ; 
; 0B 
- D 0 - I - 0x0297BB 0A:97AB: D5        .byte con_A03F_D5   ; 
- D 0 - I - 0x0297BC 0A:97AC: 7D        .byte con_A644_7D   ; 
; 0C 
- D 0 - I - 0x0297BD 0A:97AD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297BE 0A:97AE: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x0297BF 0A:97AF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297C0 0A:97B0: 00        .byte con_A644_00   ; 



off_97B1_03_03_01:
; 00 
- D 0 - I - 0x0297C1 0A:97B1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297C2 0A:97B2: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0297C3 0A:97B3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297C4 0A:97B4: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x0297C5 0A:97B5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297C6 0A:97B6: 17        .byte con_A644_17   ; 
; 03 
- D 0 - I - 0x0297C7 0A:97B7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297C8 0A:97B8: 17        .byte con_A644_17   ; 
; 04 
- D 0 - I - 0x0297C9 0A:97B9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297CA 0A:97BA: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x0297CB 0A:97BB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297CC 0A:97BC: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x0297CD 0A:97BD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297CE 0A:97BE: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x0297CF 0A:97BF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297D0 0A:97C0: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x0297D1 0A:97C1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297D2 0A:97C2: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x0297D3 0A:97C3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297D4 0A:97C4: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x0297D5 0A:97C5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297D6 0A:97C6: 1E        .byte con_A644_1E   ; 
; 0B 
- D 0 - I - 0x0297D7 0A:97C7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297D8 0A:97C8: 86        .byte con_A644_86   ; 
; 0C 
- D 0 - I - 0x0297D9 0A:97C9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297DA 0A:97CA: 1E        .byte con_A644_1E   ; 
; 0D 
- D 0 - I - 0x0297DB 0A:97CB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297DC 0A:97CC: 00        .byte con_A644_00   ; 



off_97CD_03_04_00:
; 00 
- D 0 - I - 0x0297DD 0A:97CD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297DE 0A:97CE: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0297DF 0A:97CF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297E0 0A:97D0: 32        .byte con_A644_32   ; 
; 02 
- D 0 - I - 0x0297E1 0A:97D1: 78        .byte con_A03F_78   ; 
- D 0 - I - 0x0297E2 0A:97D2: 89        .byte con_A644_89   ; 
; 03 
- D 0 - I - 0x0297E3 0A:97D3: 57        .byte con_A03F_57   ; 
- D 0 - I - 0x0297E4 0A:97D4: 8A        .byte con_A644_8A   ; 
; 04 
- D 0 - I - 0x0297E5 0A:97D5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297E6 0A:97D6: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x0297E7 0A:97D7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297E8 0A:97D8: 00        .byte con_A644_00   ; 



off_97D9_03_04_01:
; 00 
- D 0 - I - 0x0297E9 0A:97D9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297EA 0A:97DA: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0297EB 0A:97DB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297EC 0A:97DC: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x0297ED 0A:97DD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297EE 0A:97DE: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x0297EF 0A:97DF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297F0 0A:97E0: F2        .byte con_A644_F2   ; 
; 04 
- D 0 - I - 0x0297F1 0A:97E1: 3E        .byte con_A03F_3E   ; 
- D 0 - I - 0x0297F2 0A:97E2: 1B        .byte con_A644_1B   ; 
; 05 
- D 0 - I - 0x0297F3 0A:97E3: 3E        .byte con_A03F_3E   ; 
- D 0 - I - 0x0297F4 0A:97E4: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x0297F5 0A:97E5: 3B        .byte con_A03F_3B   ; 
- D 0 - I - 0x0297F6 0A:97E6: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x0297F7 0A:97E7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297F8 0A:97E8: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x0297F9 0A:97E9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297FA 0A:97EA: 81        .byte con_A644_81   ; 
; 09 
- D 0 - I - 0x0297FB 0A:97EB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297FC 0A:97EC: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x0297FD 0A:97ED: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0297FE 0A:97EE: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x0297FF 0A:97EF: 29        .byte con_A03F_29   ; 
- D 0 - I - 0x029800 0A:97F0: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029801 0A:97F1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029802 0A:97F2: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029803 0A:97F3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029804 0A:97F4: 00        .byte con_A644_00   ; 



off_97F5_03_04_02:
; 00 
- D 0 - I - 0x029805 0A:97F5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029806 0A:97F6: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029807 0A:97F7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029808 0A:97F8: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029809 0A:97F9: 3D        .byte con_A03F_3D   ; 
- D 0 - I - 0x02980A 0A:97FA: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x02980B 0A:97FB: 3D        .byte con_A03F_3D   ; 
- D 0 - I - 0x02980C 0A:97FC: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x02980D 0A:97FD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02980E 0A:97FE: 89        .byte con_A644_89   ; 
; 05 
- D 0 - I - 0x02980F 0A:97FF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029810 0A:9800: 00        .byte con_A644_00   ; 



off_9801_04_00_00:
; 00 
- D 0 - I - 0x029811 0A:9801: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029812 0A:9802: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029813 0A:9803: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029814 0A:9804: 3B        .byte con_A644_3B   ; 
; 02 
- D 0 - I - 0x029815 0A:9805: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029816 0A:9806: 74        .byte con_A644_74   ; 
; 03 
- D 0 - I - 0x029817 0A:9807: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029818 0A:9808: 45        .byte con_A644_45   ; 
; 04 
- D 0 - I - 0x029819 0A:9809: 40        .byte con_A03F_40   ; 
- D 0 - I - 0x02981A 0A:980A: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x02981B 0A:980B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02981C 0A:980C: 37        .byte con_A644_37   ; 
; 06 
- D 0 - I - 0x02981D 0A:980D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02981E 0A:980E: 38        .byte con_A644_38   ; 
; 07 
- D 0 - I - 0x02981F 0A:980F: 3F        .byte con_A03F_3F   ; 
- D 0 - I - 0x029820 0A:9810: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029821 0A:9811: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029822 0A:9812: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029823 0A:9813: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029824 0A:9814: 00        .byte con_A644_00   ; 



off_9815_04_00_02:
; 00 
- D 0 - I - 0x029825 0A:9815: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029826 0A:9816: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029827 0A:9817: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029828 0A:9818: B3        .byte con_A644_B3   ; 
; 02 
- D 0 - I - 0x029829 0A:9819: 41        .byte con_A03F_41   ; 
- D 0 - I - 0x02982A 0A:981A: 41        .byte con_A644_41   ; 
; 03 
- D 0 - I - 0x02982B 0A:981B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02982C 0A:981C: 07        .byte con_A644_07   ; 
; 04 
- D 0 - I - 0x02982D 0A:981D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02982E 0A:981E: F1        .byte con_A644_F1   ; 
; 05 
- D 0 - I - 0x02982F 0A:981F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029830 0A:9820: 00        .byte con_A644_00   ; 



off_9821_04_01_00:
; 00 
- D 0 - I - 0x029831 0A:9821: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029832 0A:9822: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029833 0A:9823: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029834 0A:9824: 3A        .byte con_A644_3A   ; 
; 02 
- D 0 - I - 0x029835 0A:9825: 7A        .byte con_A03F_7A   ; 
- D 0 - I - 0x029836 0A:9826: 42        .byte con_A644_42   ; 
; 03 
- D 0 - I - 0x029837 0A:9827: 4A        .byte con_A03F_4A   ; 
- D 0 - I - 0x029838 0A:9828: 43        .byte con_A644_43   ; 
; 04 
- D 0 - I - 0x029839 0A:9829: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02983A 0A:982A: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x02983B 0A:982B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02983C 0A:982C: 00        .byte con_A644_00   ; 



off_982D_04_01_02:
; 00 
- D 0 - I - 0x02983D 0A:982D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02983E 0A:982E: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02983F 0A:982F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029840 0A:9830: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029841 0A:9831: 32        .byte con_A03F_32   ; 
- D 0 - I - 0x029842 0A:9832: 24        .byte con_A644_24   ; 
; 03 
- D 0 - I - 0x029843 0A:9833: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029844 0A:9834: F5        .byte con_A644_F5   ; 
; 04 
- D 0 - I - 0x029845 0A:9835: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029846 0A:9836: 23        .byte con_A644_23   ; 
; 05 
- D 0 - I - 0x029847 0A:9837: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029848 0A:9838: 22        .byte con_A644_22   ; 
; 06 
- D 0 - I - 0x029849 0A:9839: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02984A 0A:983A: 23        .byte con_A644_23   ; 
; 07 
- D 0 - I - 0x02984B 0A:983B: 32        .byte con_A03F_32   ; 
- D 0 - I - 0x02984C 0A:983C: 22        .byte con_A644_22   ; 
; 08 
- D 0 - I - 0x02984D 0A:983D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02984E 0A:983E: 23        .byte con_A644_23   ; 
; 09 
- D 0 - I - 0x02984F 0A:983F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029850 0A:9840: 00        .byte con_A644_00   ; 



off_9841_04_02_00:
; 00 
- D 0 - I - 0x029851 0A:9841: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029852 0A:9842: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029853 0A:9843: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029854 0A:9844: 2D        .byte con_A644_2D   ; 
; 02 
- D 0 - I - 0x029855 0A:9845: 34        .byte con_A03F_34   ; 
- D 0 - I - 0x029856 0A:9846: FA        .byte con_A644_FA   ; 
; 03 
- D 0 - I - 0x029857 0A:9847: D4        .byte con_A03F_D4   ; 
- D 0 - I - 0x029858 0A:9848: 3B        .byte con_A644_3B   ; 
; 04 
- D 0 - I - 0x029859 0A:9849: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02985A 0A:984A: 94        .byte con_A644_94   ; 
; 05 
- D 0 - I - 0x02985B 0A:984B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02985C 0A:984C: 00        .byte con_A644_00   ; 



off_984D_04_02_02:
; 00 
- D 0 - I - 0x02985D 0A:984D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02985E 0A:984E: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02985F 0A:984F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029860 0A:9850: 3B        .byte con_A644_3B   ; 
; 02 
- D 0 - I - 0x029861 0A:9851: D9        .byte con_A03F_D9   ; 
- D 0 - I - 0x029862 0A:9852: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029863 0A:9853: 44        .byte con_A03F_44   ; 
- D 0 - I - 0x029864 0A:9854: 2E        .byte con_A644_2E   ; 
; 04 
- D 0 - I - 0x029865 0A:9855: DA        .byte con_A03F_DA   ; 
- D 0 - I - 0x029866 0A:9856: 25        .byte con_A644_25   ; 
; 05 
- D 0 - I - 0x029867 0A:9857: 44        .byte con_A03F_44   ; 
- D 0 - I - 0x029868 0A:9858: 65        .byte con_A644_65   ; 
; 06 
- D 0 - I - 0x029869 0A:9859: DB        .byte con_A03F_DB   ; 
- D 0 - I - 0x02986A 0A:985A: 21        .byte con_A644_21   ; 
; 07 
- D 0 - I - 0x02986B 0A:985B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02986C 0A:985C: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x02986D 0A:985D: DC        .byte con_A03F_DC   ; 
- D 0 - I - 0x02986E 0A:985E: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x02986F 0A:985F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029870 0A:9860: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029871 0A:9861: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029872 0A:9862: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x029873 0A:9863: 24        .byte con_A03F_24   ; 
- D 0 - I - 0x029874 0A:9864: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029875 0A:9865: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029876 0A:9866: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029877 0A:9867: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029878 0A:9868: 00        .byte con_A644_00   ; 



off_9869_05_00_00:
; 00 
- D 0 - I - 0x029879 0A:9869: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02987A 0A:986A: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02987B 0A:986B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02987C 0A:986C: 9D        .byte con_A644_9D   ; 
; 02 
- D 0 - I - 0x02987D 0A:986D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02987E 0A:986E: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x02987F 0A:986F: 6A        .byte con_A03F_6A   ; 
- D 0 - I - 0x029880 0A:9870: 6D        .byte con_A644_6D   ; 
; 04 
- D 0 - I - 0x029881 0A:9871: 6A        .byte con_A03F_6A   ; 
- D 0 - I - 0x029882 0A:9872: 93        .byte con_A644_93   ; 
; 05 
- D 0 - I - 0x029883 0A:9873: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029884 0A:9874: 7A        .byte con_A644_7A   ; 
; 06 
- D 0 - I - 0x029885 0A:9875: 34        .byte con_A03F_34   ; 
- D 0 - I - 0x029886 0A:9876: 9D        .byte con_A644_9D   ; 
; 07 
- D 0 - I - 0x029887 0A:9877: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029888 0A:9878: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029889 0A:9879: 10        .byte con_A03F_10   ; 
- D 0 - I - 0x02988A 0A:987A: 61        .byte con_A644_61   ; 
; 09 
- D 0 - I - 0x02988B 0A:987B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02988C 0A:987C: 00        .byte con_A644_00   ; 



off_987D_05_01_00:
; 00 
- D 0 - I - 0x02988D 0A:987D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02988E 0A:987E: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02988F 0A:987F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029890 0A:9880: E7        .byte con_A644_E7   ; 
; 02 
- D 0 - I - 0x029891 0A:9881: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029892 0A:9882: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029893 0A:9883: 6F        .byte con_A03F_6F   ; 
- D 0 - I - 0x029894 0A:9884: 9B        .byte con_A644_9B   ; 
; 04 
- D 0 - I - 0x029895 0A:9885: 80        .byte con_A03F_80   ; 
- D 0 - I - 0x029896 0A:9886: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029897 0A:9887: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029898 0A:9888: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029899 0A:9889: D8        .byte con_A03F_D8   ; 
- D 0 - I - 0x02989A 0A:988A: 9C        .byte con_A644_9C   ; 
; 07 
- D 0 - I - 0x02989B 0A:988B: 80        .byte con_A03F_80   ; 
- D 0 - I - 0x02989C 0A:988C: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x02989D 0A:988D: 6F        .byte con_A03F_6F   ; 
- D 0 - I - 0x02989E 0A:988E: 6C        .byte con_A644_6C   ; 
; 09 
- D 0 - I - 0x02989F 0A:988F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298A0 0A:9890: 6C        .byte con_A644_6C   ; 
; 0A 
- D 0 - I - 0x0298A1 0A:9891: 51        .byte con_A03F_51   ; 
- D 0 - I - 0x0298A2 0A:9892: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x0298A3 0A:9893: D8        .byte con_A03F_D8   ; 
- D 0 - I - 0x0298A4 0A:9894: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x0298A5 0A:9895: 6F        .byte con_A03F_6F   ; 
- D 0 - I - 0x0298A6 0A:9896: 6C        .byte con_A644_6C   ; 
; 0D 
- D 0 - I - 0x0298A7 0A:9897: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298A8 0A:9898: 6C        .byte con_A644_6C   ; 
; 0E 
- D 0 - I - 0x0298A9 0A:9899: 63        .byte con_A03F_63   ; 
- D 0 - I - 0x0298AA 0A:989A: 00        .byte con_A644_00   ; 
; 0F 
- D 0 - I - 0x0298AB 0A:989B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298AC 0A:989C: 49        .byte con_A644_49   ; 
; 10 
- D 0 - I - 0x0298AD 0A:989D: 7C        .byte con_A03F_7C   ; 
- D 0 - I - 0x0298AE 0A:989E: 00        .byte con_A644_00   ; 
; 11 
- D 0 - I - 0x0298AF 0A:989F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298B0 0A:98A0: 00        .byte con_A644_00   ; 



off_98A1_05_02_00:
; 00 
- D 0 - I - 0x0298B1 0A:98A1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298B2 0A:98A2: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0298B3 0A:98A3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298B4 0A:98A4: 73        .byte con_A644_73   ; 
; 02 
- D 0 - I - 0x0298B5 0A:98A5: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x0298B6 0A:98A6: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x0298B7 0A:98A7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298B8 0A:98A8: 95        .byte con_A644_95   ; 
; 04 
- D 0 - I - 0x0298B9 0A:98A9: 83        .byte con_A03F_83   ; 
- D 0 - I - 0x0298BA 0A:98AA: 61        .byte con_A644_61   ; 
; 05 
- D 0 - I - 0x0298BB 0A:98AB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298BC 0A:98AC: 96        .byte con_A644_96   ; 
; 06 
- D 0 - I - 0x0298BD 0A:98AD: D4        .byte con_A03F_D4   ; 
- D 0 - I - 0x0298BE 0A:98AE: 65        .byte con_A644_65   ; 
; 07 
- D 0 - I - 0x0298BF 0A:98AF: 7E        .byte con_A03F_7E   ; 
- D 0 - I - 0x0298C0 0A:98B0: 96        .byte con_A644_96   ; 
; 08 
- D 0 - I - 0x0298C1 0A:98B1: 41        .byte con_A03F_41   ; 
- D 0 - I - 0x0298C2 0A:98B2: CB        .byte con_A644_CB   ; 
; 09 
- D 0 - I - 0x0298C3 0A:98B3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298C4 0A:98B4: 00        .byte con_A644_00   ; 



off_98B5_05_02_01:
; 00 
- D 0 - I - 0x0298C5 0A:98B5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298C6 0A:98B6: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0298C7 0A:98B7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298C8 0A:98B8: 90        .byte con_A644_90   ; 
; 02 
- D 0 - I - 0x0298C9 0A:98B9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298CA 0A:98BA: 93        .byte con_A644_93   ; 
; 03 
- D 0 - I - 0x0298CB 0A:98BB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298CC 0A:98BC: 94        .byte con_A644_94   ; 
; 04 
- D 0 - I - 0x0298CD 0A:98BD: 41        .byte con_A03F_41   ; 
- D 0 - I - 0x0298CE 0A:98BE: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x0298CF 0A:98BF: 82        .byte con_A03F_82   ; 
- D 0 - I - 0x0298D0 0A:98C0: 93        .byte con_A644_93   ; 
; 06 
- D 0 - I - 0x0298D1 0A:98C1: 7D        .byte con_A03F_7D   ; 
- D 0 - I - 0x0298D2 0A:98C2: 94        .byte con_A644_94   ; 
; 07 
- D 0 - I - 0x0298D3 0A:98C3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298D4 0A:98C4: 94        .byte con_A644_94   ; 
; 08 
- D 0 - I - 0x0298D5 0A:98C5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298D6 0A:98C6: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x0298D7 0A:98C7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298D8 0A:98C8: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x0298D9 0A:98C9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298DA 0A:98CA: 98        .byte con_A644_98   ; 
; 0B 
- D 0 - I - 0x0298DB 0A:98CB: 0F        .byte con_A03F_0F   ; 
- D 0 - I - 0x0298DC 0A:98CC: 97        .byte con_A644_97   ; 
; 0C 
- D 0 - I - 0x0298DD 0A:98CD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298DE 0A:98CE: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x0298DF 0A:98CF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298E0 0A:98D0: 94        .byte con_A644_94   ; 
; 0E 
- D 0 - I - 0x0298E1 0A:98D1: 36        .byte con_A03F_36   ; 
- D 0 - I - 0x0298E2 0A:98D2: 94        .byte con_A644_94   ; 
; 0F 
- D 0 - I - 0x0298E3 0A:98D3: 41        .byte con_A03F_41   ; 
- D 0 - I - 0x0298E4 0A:98D4: 94        .byte con_A644_94   ; 
; 10 
- D 0 - I - 0x0298E5 0A:98D5: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x0298E6 0A:98D6: 00        .byte con_A644_00   ; 
; 11 
- D 0 - I - 0x0298E7 0A:98D7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298E8 0A:98D8: 00        .byte con_A644_00   ; 



off_98D9_05_03_00:
; 00 
- D 0 - I - 0x0298E9 0A:98D9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298EA 0A:98DA: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0298EB 0A:98DB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298EC 0A:98DC: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x0298ED 0A:98DD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298EE 0A:98DE: 92        .byte con_A644_92   ; 
; 03 
- D 0 - I - 0x0298EF 0A:98DF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298F0 0A:98E0: 78        .byte con_A644_78   ; 
; 04 
- D 0 - I - 0x0298F1 0A:98E1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298F2 0A:98E2: 91        .byte con_A644_91   ; 
; 05 
- D 0 - I - 0x0298F3 0A:98E3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298F4 0A:98E4: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x0298F5 0A:98E5: 62        .byte con_A03F_62   ; 
- D 0 - I - 0x0298F6 0A:98E6: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x0298F7 0A:98E7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298F8 0A:98E8: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x0298F9 0A:98E9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298FA 0A:98EA: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x0298FB 0A:98EB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298FC 0A:98EC: 00        .byte con_A644_00   ; 



off_98ED_05_03_01:
; 00 
- D 0 - I - 0x0298FD 0A:98ED: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0298FE 0A:98EE: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0298FF 0A:98EF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029900 0A:98F0: 90        .byte con_A644_90   ; 
; 02 
- D 0 - I - 0x029901 0A:98F1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029902 0A:98F2: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029903 0A:98F3: 7F        .byte con_A03F_7F   ; 
- D 0 - I - 0x029904 0A:98F4: 9A        .byte con_A644_9A   ; 
; 04 
- D 0 - I - 0x029905 0A:98F5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029906 0A:98F6: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029907 0A:98F7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029908 0A:98F8: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029909 0A:98F9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02990A 0A:98FA: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x02990B 0A:98FB: 21        .byte con_A03F_21   ; 
- D 0 - I - 0x02990C 0A:98FC: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x02990D 0A:98FD: 21        .byte con_A03F_21   ; 
- D 0 - I - 0x02990E 0A:98FE: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x02990F 0A:98FF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029910 0A:9900: 58        .byte con_A644_58   ; 
; 0A 
- D 0 - I - 0x029911 0A:9901: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029912 0A:9902: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x029913 0A:9903: 1B        .byte con_A03F_1B   ; 
- D 0 - I - 0x029914 0A:9904: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029915 0A:9905: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029916 0A:9906: 99        .byte con_A644_99   ; 
; 0D 
- D 0 - I - 0x029917 0A:9907: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029918 0A:9908: 65        .byte con_A644_65   ; 
; 0E 
- D 0 - I - 0x029919 0A:9909: 1B        .byte con_A03F_1B   ; 
- D 0 - I - 0x02991A 0A:990A: 00        .byte con_A644_00   ; 
; 0F 
- D 0 - I - 0x02991B 0A:990B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02991C 0A:990C: 00        .byte con_A644_00   ; 
; 10 
- D 0 - I - 0x02991D 0A:990D: 1B        .byte con_A03F_1B   ; 
- D 0 - I - 0x02991E 0A:990E: 58        .byte con_A644_58   ; 
; 11 
- D 0 - I - 0x02991F 0A:990F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029920 0A:9910: 00        .byte con_A644_00   ; 



off_9911_06_00_00:
; 00 
- D 0 - I - 0x029921 0A:9911: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029922 0A:9912: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029923 0A:9913: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029924 0A:9914: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029925 0A:9915: 6B        .byte con_A03F_6B   ; 
- D 0 - I - 0x029926 0A:9916: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029927 0A:9917: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029928 0A:9918: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029929 0A:9919: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02992A 0A:991A: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x02992B 0A:991B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02992C 0A:991C: 99        .byte con_A644_99   ; 
; 06 
- D 0 - I - 0x02992D 0A:991D: 6C        .byte con_A03F_6C   ; 
- D 0 - I - 0x02992E 0A:991E: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x02992F 0A:991F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029930 0A:9920: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029931 0A:9921: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029932 0A:9922: 61        .byte con_A644_61   ; 
; 09 
- D 0 - I - 0x029933 0A:9923: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029934 0A:9924: 00        .byte con_A644_00   ; 



off_9925_06_00_01:
; 00 
- D 0 - I - 0x029935 0A:9925: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029936 0A:9926: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029937 0A:9927: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029938 0A:9928: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029939 0A:9929: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02993A 0A:992A: 9E        .byte con_A644_9E   ; 
; 03 
- D 0 - I - 0x02993B 0A:992B: 6C        .byte con_A03F_6C   ; 
- D 0 - I - 0x02993C 0A:992C: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x02993D 0A:992D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02993E 0A:992E: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x02993F 0A:992F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029940 0A:9930: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029941 0A:9931: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029942 0A:9932: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029943 0A:9933: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029944 0A:9934: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029945 0A:9935: 6C        .byte con_A03F_6C   ; 
- D 0 - I - 0x029946 0A:9936: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029947 0A:9937: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029948 0A:9938: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029949 0A:9939: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02994A 0A:993A: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x02994B 0A:993B: 6C        .byte con_A03F_6C   ; 
- D 0 - I - 0x02994C 0A:993C: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x02994D 0A:993D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02994E 0A:993E: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x02994F 0A:993F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029950 0A:9940: 00        .byte con_A644_00   ; 
; 0E 
- D 0 - I - 0x029951 0A:9941: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029952 0A:9942: 9F        .byte con_A644_9F   ; 
; 0F 
- D 0 - I - 0x029953 0A:9943: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029954 0A:9944: 00        .byte con_A644_00   ; 
; 10 
- D 0 - I - 0x029955 0A:9945: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029956 0A:9946: 00        .byte con_A644_00   ; 
; 11 
- D 0 - I - 0x029957 0A:9947: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029958 0A:9948: 00        .byte con_A644_00   ; 



off_9949_06_01_00:
; 00 
- D 0 - I - 0x029959 0A:9949: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02995A 0A:994A: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02995B 0A:994B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02995C 0A:994C: 59        .byte con_A644_59   ; 
; 02 
- D 0 - I - 0x02995D 0A:994D: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x02995E 0A:994E: 59        .byte con_A644_59   ; 
; 03 
- D 0 - I - 0x02995F 0A:994F: 6B        .byte con_A03F_6B   ; 
- D 0 - I - 0x029960 0A:9950: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029961 0A:9951: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029962 0A:9952: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029963 0A:9953: 6B        .byte con_A03F_6B   ; 
- D 0 - I - 0x029964 0A:9954: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029965 0A:9955: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029966 0A:9956: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029967 0A:9957: 6B        .byte con_A03F_6B   ; 
- D 0 - I - 0x029968 0A:9958: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029969 0A:9959: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02996A 0A:995A: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x02996B 0A:995B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02996C 0A:995C: 91        .byte con_A644_91   ; 
; 0A 
- D 0 - I - 0x02996D 0A:995D: 6B        .byte con_A03F_6B   ; 
- D 0 - I - 0x02996E 0A:995E: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x02996F 0A:995F: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029970 0A:9960: 95        .byte con_A644_95   ; 
; 0C 
- D 0 - I - 0x029971 0A:9961: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029972 0A:9962: 6D        .byte con_A644_6D   ; 
; 0D 
- D 0 - I - 0x029973 0A:9963: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029974 0A:9964: A0        .byte con_A644_A0   ; 
; 0E 
- D 0 - I - 0x029975 0A:9965: 6B        .byte con_A03F_6B   ; 
- D 0 - I - 0x029976 0A:9966: 00        .byte con_A644_00   ; 
; 0F 
- D 0 - I - 0x029977 0A:9967: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029978 0A:9968: A1        .byte con_A644_A1   ; 
; 10 
- D 0 - I - 0x029979 0A:9969: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x02997A 0A:996A: A2        .byte con_A644_A2   ; 
; 11 
- D 0 - I - 0x02997B 0A:996B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02997C 0A:996C: 00        .byte con_A644_00   ; 
; 12 
- D 0 - I - 0x02997D 0A:996D: 6B        .byte con_A03F_6B   ; 
- D 0 - I - 0x02997E 0A:996E: A2        .byte con_A644_A2   ; 
; 13 
- D 0 - I - 0x02997F 0A:996F: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029980 0A:9970: 00        .byte con_A644_00   ; 
; 14 
- D 0 - I - 0x029981 0A:9971: 6B        .byte con_A03F_6B   ; 
- D 0 - I - 0x029982 0A:9972: 00        .byte con_A644_00   ; 
; 15 
- D 0 - I - 0x029983 0A:9973: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029984 0A:9974: 6D        .byte con_A644_6D   ; 
; 16 
- D 0 - I - 0x029985 0A:9975: 6B        .byte con_A03F_6B   ; 
- D 0 - I - 0x029986 0A:9976: A3        .byte con_A644_A3   ; 
; 17 
- D 0 - I - 0x029987 0A:9977: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029988 0A:9978: 92        .byte con_A644_92   ; 
; 18 
- D 0 - I - 0x029989 0A:9979: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02998A 0A:997A: 96        .byte con_A644_96   ; 
; 19 
- D 0 - I - 0x02998B 0A:997B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02998C 0A:997C: 00        .byte con_A644_00   ; 



off_997D_06_02_00:
; 00 
- D 0 - I - 0x02998D 0A:997D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02998E 0A:997E: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02998F 0A:997F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029990 0A:9980: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029991 0A:9981: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029992 0A:9982: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029993 0A:9983: 1E        .byte con_A03F_1E   ; 
- D 0 - I - 0x029994 0A:9984: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029995 0A:9985: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029996 0A:9986: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029997 0A:9987: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029998 0A:9988: 00        .byte con_A644_00   ; 



off_9989_06_02_01:
; 00 
- D 0 - I - 0x029999 0A:9989: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02999A 0A:998A: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x02999B 0A:998B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02999C 0A:998C: 97        .byte con_A644_97   ; 
; 02 
- D 0 - I - 0x02999D 0A:998D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02999E 0A:998E: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x02999F 0A:998F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299A0 0A:9990: 65        .byte con_A644_65   ; 
; 04 
- D 0 - I - 0x0299A1 0A:9991: C0        .byte con_A03F_C0   ; 
- D 0 - I - 0x0299A2 0A:9992: 6A        .byte con_A644_6A   ; 
; 05 
- D 0 - I - 0x0299A3 0A:9993: 6B        .byte con_A03F_6B   ; 
- D 0 - I - 0x0299A4 0A:9994: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x0299A5 0A:9995: 6B        .byte con_A03F_6B   ; 
- D 0 - I - 0x0299A6 0A:9996: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x0299A7 0A:9997: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299A8 0A:9998: 68        .byte con_A644_68   ; 
; 08 
- D 0 - I - 0x0299A9 0A:9999: 8B        .byte con_A03F_8B   ; 
- D 0 - I - 0x0299AA 0A:999A: 6D        .byte con_A644_6D   ; 
; 09 
- D 0 - I - 0x0299AB 0A:999B: 8B        .byte con_A03F_8B   ; 
- D 0 - I - 0x0299AC 0A:999C: 68        .byte con_A644_68   ; 
; 0A 
- D 0 - I - 0x0299AD 0A:999D: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x0299AE 0A:999E: 68        .byte con_A644_68   ; 
; 0B 
- D 0 - I - 0x0299AF 0A:999F: 8A        .byte con_A03F_8A   ; 
- D 0 - I - 0x0299B0 0A:99A0: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x0299B1 0A:99A1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299B2 0A:99A2: 61        .byte con_A644_61   ; 
; 0D 
- D 0 - I - 0x0299B3 0A:99A3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299B4 0A:99A4: 00        .byte con_A644_00   ; 



off_99A5_06_02_02:
; 00 
- D 0 - I - 0x0299B5 0A:99A5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299B6 0A:99A6: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0299B7 0A:99A7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299B8 0A:99A8: 59        .byte con_A644_59   ; 
; 02 
- D 0 - I - 0x0299B9 0A:99A9: 85        .byte con_A03F_85   ; 
- D 0 - I - 0x0299BA 0A:99AA: 66        .byte con_A644_66   ; 
; 03 
- D 0 - I - 0x0299BB 0A:99AB: 86        .byte con_A03F_86   ; 
- D 0 - I - 0x0299BC 0A:99AC: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x0299BD 0A:99AD: 68        .byte con_A03F_68   ; 
- D 0 - I - 0x0299BE 0A:99AE: A2        .byte con_A644_A2   ; 
; 05 
- D 0 - I - 0x0299BF 0A:99AF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299C0 0A:99B0: 9D        .byte con_A644_9D   ; 
; 06 
- D 0 - I - 0x0299C1 0A:99B1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299C2 0A:99B2: 94        .byte con_A644_94   ; 
; 07 
- D 0 - I - 0x0299C3 0A:99B3: 89        .byte con_A03F_89   ; 
- D 0 - I - 0x0299C4 0A:99B4: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x0299C5 0A:99B5: 57        .byte con_A03F_57   ; 
- D 0 - I - 0x0299C6 0A:99B6: 07        .byte con_A644_07   ; 
; 09 
- D 0 - I - 0x0299C7 0A:99B7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299C8 0A:99B8: 00        .byte con_A644_00   ; 



off_99B9_07_00_00:
; 00 
- D 0 - I - 0x0299C9 0A:99B9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299CA 0A:99BA: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0299CB 0A:99BB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299CC 0A:99BC: 90        .byte con_A644_90   ; 
; 02 
- D 0 - I - 0x0299CD 0A:99BD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299CE 0A:99BE: AB        .byte con_A644_AB   ; 
; 03 
- D 0 - I - 0x0299CF 0A:99BF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299D0 0A:99C0: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x0299D1 0A:99C1: D3        .byte con_A03F_D3   ; 
- D 0 - I - 0x0299D2 0A:99C2: 90        .byte con_A644_90   ; 
; 05 
- D 0 - I - 0x0299D3 0A:99C3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299D4 0A:99C4: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x0299D5 0A:99C5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299D6 0A:99C6: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x0299D7 0A:99C7: D3        .byte con_A03F_D3   ; 
- D 0 - I - 0x0299D8 0A:99C8: AA        .byte con_A644_AA   ; 
; 08 
- D 0 - I - 0x0299D9 0A:99C9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299DA 0A:99CA: 6C        .byte con_A644_6C   ; 
; 09 
- D 0 - I - 0x0299DB 0A:99CB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299DC 0A:99CC: 00        .byte con_A644_00   ; 



off_99CD_07_00_01:
; 00 
- D 0 - I - 0x0299DD 0A:99CD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299DE 0A:99CE: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x0299DF 0A:99CF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299E0 0A:99D0: 59        .byte con_A644_59   ; 
; 02 
- D 0 - I - 0x0299E1 0A:99D1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299E2 0A:99D2: 59        .byte con_A644_59   ; 
; 03 
- D 0 - I - 0x0299E3 0A:99D3: C1        .byte con_A03F_C1   ; 
- D 0 - I - 0x0299E4 0A:99D4: 5C        .byte con_A644_5C   ; 
; 04 
- D 0 - I - 0x0299E5 0A:99D5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299E6 0A:99D6: 59        .byte con_A644_59   ; 
; 05 
- D 0 - I - 0x0299E7 0A:99D7: C1        .byte con_A03F_C1   ; 
- D 0 - I - 0x0299E8 0A:99D8: A9        .byte con_A644_A9   ; 
; 06 
- D 0 - I - 0x0299E9 0A:99D9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299EA 0A:99DA: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x0299EB 0A:99DB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299EC 0A:99DC: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x0299ED 0A:99DD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299EE 0A:99DE: F6        .byte con_A644_F6   ; 
; 09 
- D 0 - I - 0x0299EF 0A:99DF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299F0 0A:99E0: A2        .byte con_A644_A2   ; 
; 0A 
- D 0 - I - 0x0299F1 0A:99E1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299F2 0A:99E2: 4C        .byte con_A644_4C   ; 
; 0B 
- D 0 - I - 0x0299F3 0A:99E3: 71        .byte con_A03F_71   ; 
- D 0 - I - 0x0299F4 0A:99E4: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x0299F5 0A:99E5: 72        .byte con_A03F_72   ; 
- D 0 - I - 0x0299F6 0A:99E6: 50        .byte con_A644_50   ; 
; 0D 
- D 0 - I - 0x0299F7 0A:99E7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299F8 0A:99E8: 53        .byte con_A644_53   ; 
; 0E 
- D 0 - I - 0x0299F9 0A:99E9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299FA 0A:99EA: 97        .byte con_A644_97   ; 
; 0F 
- D 0 - I - 0x0299FB 0A:99EB: 71        .byte con_A03F_71   ; 
- D 0 - I - 0x0299FC 0A:99EC: 68        .byte con_A644_68   ; 
; 10 
- D 0 - I - 0x0299FD 0A:99ED: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x0299FE 0A:99EE: 6D        .byte con_A644_6D   ; 
; 11 
- D 0 - I - 0x0299FF 0A:99EF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A00 0A:99F0: 00        .byte con_A644_00   ; 



off_99F1_07_01_00:
; 00 
- D 0 - I - 0x029A01 0A:99F1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A02 0A:99F2: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029A03 0A:99F3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A04 0A:99F4: F3        .byte con_A644_F3   ; 
; 02 
- D 0 - I - 0x029A05 0A:99F5: 8E        .byte con_A03F_8E   ; 
- D 0 - I - 0x029A06 0A:99F6: AC        .byte con_A644_AC   ; 
; 03 
- D 0 - I - 0x029A07 0A:99F7: 95        .byte con_A03F_95   ; 
- D 0 - I - 0x029A08 0A:99F8: AC        .byte con_A644_AC   ; 
; 04 
- D 0 - I - 0x029A09 0A:99F9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A0A 0A:99FA: 90        .byte con_A644_90   ; 
; 05 
- D 0 - I - 0x029A0B 0A:99FB: 95        .byte con_A03F_95   ; 
- D 0 - I - 0x029A0C 0A:99FC: 9A        .byte con_A644_9A   ; 
; 06 
- D 0 - I - 0x029A0D 0A:99FD: 8F        .byte con_A03F_8F   ; 
- D 0 - I - 0x029A0E 0A:99FE: AE        .byte con_A644_AE   ; 
; 07 
- D 0 - I - 0x029A0F 0A:99FF: 95        .byte con_A03F_95   ; 
- D 0 - I - 0x029A10 0A:9A00: AE        .byte con_A644_AE   ; 
; 08 
- D 0 - I - 0x029A11 0A:9A01: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A12 0A:9A02: 99        .byte con_A644_99   ; 
; 09 
- D 0 - I - 0x029A13 0A:9A03: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A14 0A:9A04: 00        .byte con_A644_00   ; 



off_9A05_07_02_00:
; 00 
- D 0 - I - 0x029A15 0A:9A05: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A16 0A:9A06: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029A17 0A:9A07: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A18 0A:9A08: AD        .byte con_A644_AD   ; 
; 02 
- D 0 - I - 0x029A19 0A:9A09: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A1A 0A:9A0A: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029A1B 0A:9A0B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A1C 0A:9A0C: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029A1D 0A:9A0D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A1E 0A:9A0E: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029A1F 0A:9A0F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A20 0A:9A10: 00        .byte con_A644_00   ; 



off_9A11_07_03_00:
; 00 
- D 0 - I - 0x029A21 0A:9A11: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A22 0A:9A12: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029A23 0A:9A13: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A24 0A:9A14: F3        .byte con_A644_F3   ; 
; 02 
- D 0 - I - 0x029A25 0A:9A15: 71        .byte con_A03F_71   ; 
- D 0 - I - 0x029A26 0A:9A16: 5C        .byte con_A644_5C   ; 
; 03 
- D 0 - I - 0x029A27 0A:9A17: C2        .byte con_A03F_C2   ; 
- D 0 - I - 0x029A28 0A:9A18: 3A        .byte con_A644_3A   ; 
; 04 
- D 0 - I - 0x029A29 0A:9A19: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A2A 0A:9A1A: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029A2B 0A:9A1B: C2        .byte con_A03F_C2   ; 
- D 0 - I - 0x029A2C 0A:9A1C: 72        .byte con_A644_72   ; 
; 06 
- D 0 - I - 0x029A2D 0A:9A1D: 8D        .byte con_A03F_8D   ; 
- D 0 - I - 0x029A2E 0A:9A1E: B0        .byte con_A644_B0   ; 
; 07 
- D 0 - I - 0x029A2F 0A:9A1F: C2        .byte con_A03F_C2   ; 
- D 0 - I - 0x029A30 0A:9A20: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029A31 0A:9A21: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A32 0A:9A22: 72        .byte con_A644_72   ; 
; 09 
- D 0 - I - 0x029A33 0A:9A23: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A34 0A:9A24: 00        .byte con_A644_00   ; 



off_9A25_07_04_00:
; 00 
- D 0 - I - 0x029A35 0A:9A25: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A36 0A:9A26: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029A37 0A:9A27: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A38 0A:9A28: 90        .byte con_A644_90   ; 
; 02 
- D 0 - I - 0x029A39 0A:9A29: C4        .byte con_A03F_C4   ; 
- D 0 - I - 0x029A3A 0A:9A2A: 77        .byte con_A644_77   ; 
; 03 
- D 0 - I - 0x029A3B 0A:9A2B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A3C 0A:9A2C: AC        .byte con_A644_AC   ; 
; 04 
- D 0 - I - 0x029A3D 0A:9A2D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A3E 0A:9A2E: AE        .byte con_A644_AE   ; 
; 05 
- D 0 - I - 0x029A3F 0A:9A2F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A40 0A:9A30: 9B        .byte con_A644_9B   ; 
; 06 
- D 0 - I - 0x029A41 0A:9A31: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A42 0A:9A32: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029A43 0A:9A33: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A44 0A:9A34: 77        .byte con_A644_77   ; 
; 08 
- D 0 - I - 0x029A45 0A:9A35: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A46 0A:9A36: 96        .byte con_A644_96   ; 
; 09 
- D 0 - I - 0x029A47 0A:9A37: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A48 0A:9A38: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029A49 0A:9A39: 4B        .byte con_A03F_4B   ; 
- D 0 - I - 0x029A4A 0A:9A3A: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x029A4B 0A:9A3B: 90        .byte con_A03F_90   ; 
- D 0 - I - 0x029A4C 0A:9A3C: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029A4D 0A:9A3D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A4E 0A:9A3E: 9B        .byte con_A644_9B   ; 
; 0D 
- D 0 - I - 0x029A4F 0A:9A3F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A50 0A:9A40: 00        .byte con_A644_00   ; 
; 0E 
- D 0 - I - 0x029A51 0A:9A41: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A52 0A:9A42: 6A        .byte con_A644_6A   ; 
; 0F 
- D 0 - I - 0x029A53 0A:9A43: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A54 0A:9A44: BC        .byte con_A644_BC   ; 
; 10 
- D 0 - I - 0x029A55 0A:9A45: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A56 0A:9A46: 00        .byte con_A644_00   ; 
; 11 
- D 0 - I - 0x029A57 0A:9A47: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A58 0A:9A48: 00        .byte con_A644_00   ; 



off_9A49_07_04_01:
; 00 
- D 0 - I - 0x029A59 0A:9A49: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A5A 0A:9A4A: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029A5B 0A:9A4B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A5C 0A:9A4C: AF        .byte con_A644_AF   ; 
; 02 
- D 0 - I - 0x029A5D 0A:9A4D: 13        .byte con_A03F_13   ; 
- D 0 - I - 0x029A5E 0A:9A4E: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029A5F 0A:9A4F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A60 0A:9A50: B0        .byte con_A644_B0   ; 
; 04 
- D 0 - I - 0x029A61 0A:9A51: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A62 0A:9A52: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029A63 0A:9A53: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A64 0A:9A54: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029A65 0A:9A55: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A66 0A:9A56: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029A67 0A:9A57: 1F        .byte con_A03F_1F   ; 
- D 0 - I - 0x029A68 0A:9A58: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029A69 0A:9A59: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A6A 0A:9A5A: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029A6B 0A:9A5B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A6C 0A:9A5C: 00        .byte con_A644_00   ; 



off_9A5D_07_05_00:
; 00 
- D 0 - I - 0x029A6D 0A:9A5D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A6E 0A:9A5E: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029A6F 0A:9A5F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A70 0A:9A60: 9D        .byte con_A644_9D   ; 
; 02 
- D 0 - I - 0x029A71 0A:9A61: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A72 0A:9A62: 96        .byte con_A644_96   ; 
; 03 
- D 0 - I - 0x029A73 0A:9A63: 1C        .byte con_A03F_1C   ; 
- D 0 - I - 0x029A74 0A:9A64: A1        .byte con_A644_A1   ; 
; 04 
- D 0 - I - 0x029A75 0A:9A65: 1C        .byte con_A03F_1C   ; 
- D 0 - I - 0x029A76 0A:9A66: 96        .byte con_A644_96   ; 
; 05 
- D 0 - I - 0x029A77 0A:9A67: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A78 0A:9A68: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029A79 0A:9A69: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A7A 0A:9A6A: AF        .byte con_A644_AF   ; 
; 07 
- D 0 - I - 0x029A7B 0A:9A6B: 92        .byte con_A03F_92   ; 
- D 0 - I - 0x029A7C 0A:9A6C: 92        .byte con_A644_92   ; 
; 08 
- D 0 - I - 0x029A7D 0A:9A6D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A7E 0A:9A6E: 59        .byte con_A644_59   ; 
; 09 
- D 0 - I - 0x029A7F 0A:9A6F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A80 0A:9A70: 6A        .byte con_A644_6A   ; 
; 0A 
- D 0 - I - 0x029A81 0A:9A71: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A82 0A:9A72: 96        .byte con_A644_96   ; 
; 0B 
- D 0 - I - 0x029A83 0A:9A73: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A84 0A:9A74: B1        .byte con_A644_B1   ; 
; 0C 
- D 0 - I - 0x029A85 0A:9A75: 93        .byte con_A03F_93   ; 
- D 0 - I - 0x029A86 0A:9A76: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029A87 0A:9A77: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A88 0A:9A78: 92        .byte con_A644_92   ; 
; 0E 
- D 0 - I - 0x029A89 0A:9A79: 92        .byte con_A03F_92   ; 
- D 0 - I - 0x029A8A 0A:9A7A: 3C        .byte con_A644_3C   ; 
; 0F 
- D 0 - I - 0x029A8B 0A:9A7B: 93        .byte con_A03F_93   ; 
- D 0 - I - 0x029A8C 0A:9A7C: 6C        .byte con_A644_6C   ; 
; 10 
- D 0 - I - 0x029A8D 0A:9A7D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A8E 0A:9A7E: AB        .byte con_A644_AB   ; 
; 11 
- D 0 - I - 0x029A8F 0A:9A7F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A90 0A:9A80: 00        .byte con_A644_00   ; 



off_9A81_07_05_01:
; 00 
- D 0 - I - 0x029A91 0A:9A81: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A92 0A:9A82: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029A93 0A:9A83: 8C        .byte con_A03F_8C   ; 
- D 0 - I - 0x029A94 0A:9A84: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029A95 0A:9A85: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A96 0A:9A86: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029A97 0A:9A87: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A98 0A:9A88: B5        .byte con_A644_B5   ; 
; 04 
- D 0 - I - 0x029A99 0A:9A89: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029A9A 0A:9A8A: B4        .byte con_A644_B4   ; 
; 05 
- D 0 - I - 0x029A9B 0A:9A8B: 6E        .byte con_A03F_6E   ; 
- D 0 - I - 0x029A9C 0A:9A8C: 9D        .byte con_A644_9D   ; 
; 06 
- D 0 - I - 0x029A9D 0A:9A8D: 94        .byte con_A03F_94   ; 
- D 0 - I - 0x029A9E 0A:9A8E: B2        .byte con_A644_B2   ; 
; 07 
- D 0 - I - 0x029A9F 0A:9A8F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AA0 0A:9A90: B3        .byte con_A644_B3   ; 
; 08 
- D 0 - I - 0x029AA1 0A:9A91: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AA2 0A:9A92: 63        .byte con_A644_63   ; 
; 09 
- D 0 - I - 0x029AA3 0A:9A93: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AA4 0A:9A94: 00        .byte con_A644_00   ; 



off_9A95_07_06_00:
; 00 
- D 0 - I - 0x029AA5 0A:9A95: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AA6 0A:9A96: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029AA7 0A:9A97: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AA8 0A:9A98: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029AA9 0A:9A99: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AAA 0A:9A9A: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029AAB 0A:9A9B: 03        .byte con_A03F_03   ; 
- D 0 - I - 0x029AAC 0A:9A9C: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029AAD 0A:9A9D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AAE 0A:9A9E: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029AAF 0A:9A9F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AB0 0A:9AA0: 74        .byte con_A644_74   ; 
; 06 
- D 0 - I - 0x029AB1 0A:9AA1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AB2 0A:9AA2: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029AB3 0A:9AA3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AB4 0A:9AA4: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029AB5 0A:9AA5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AB6 0A:9AA6: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029AB7 0A:9AA7: 14        .byte con_A03F_14   ; 
- D 0 - I - 0x029AB8 0A:9AA8: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029AB9 0A:9AA9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029ABA 0A:9AAA: 62        .byte con_A644_62   ; 
; 0B 
- D 0 - I - 0x029ABB 0A:9AAB: C5        .byte con_A03F_C5   ; 
- D 0 - I - 0x029ABC 0A:9AAC: 3F        .byte con_A644_3F   ; 
; 0C 
- D 0 - I - 0x029ABD 0A:9AAD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029ABE 0A:9AAE: B6        .byte con_A644_B6   ; 
; 0D 
- D 0 - I - 0x029ABF 0A:9AAF: A5        .byte con_A03F_A5   ; 
- D 0 - I - 0x029AC0 0A:9AB0: 78        .byte con_A644_78   ; 
; 0E 
- D 0 - I - 0x029AC1 0A:9AB1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AC2 0A:9AB2: 00        .byte con_A644_00   ; 
; 0F 
- D 0 - I - 0x029AC3 0A:9AB3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AC4 0A:9AB4: 00        .byte con_A644_00   ; 
; 10 
- D 0 - I - 0x029AC5 0A:9AB5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AC6 0A:9AB6: 00        .byte con_A644_00   ; 
; 11 
- D 0 - I - 0x029AC7 0A:9AB7: 14        .byte con_A03F_14   ; 
- D 0 - I - 0x029AC8 0A:9AB8: 3F        .byte con_A644_3F   ; 
; 12 
- D 0 - I - 0x029AC9 0A:9AB9: C3        .byte con_A03F_C3   ; 
- D 0 - I - 0x029ACA 0A:9ABA: 2F        .byte con_A644_2F   ; 
; 13 
- D 0 - I - 0x029ACB 0A:9ABB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029ACC 0A:9ABC: BE        .byte con_A644_BE   ; 
; 14 
- D 0 - I - 0x029ACD 0A:9ABD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029ACE 0A:9ABE: 00        .byte con_A644_00   ; 
; 15 
- D 0 - I - 0x029ACF 0A:9ABF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AD0 0A:9AC0: 00        .byte con_A644_00   ; 



off_9AC1_08_00_00:
; 00 
- D 0 - I - 0x029AD1 0A:9AC1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AD2 0A:9AC2: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029AD3 0A:9AC3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AD4 0A:9AC4: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029AD5 0A:9AC5: 70        .byte con_A03F_70   ; 
- D 0 - I - 0x029AD6 0A:9AC6: 61        .byte con_A644_61   ; 
; 03 
- D 0 - I - 0x029AD7 0A:9AC7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AD8 0A:9AC8: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029AD9 0A:9AC9: 70        .byte con_A03F_70   ; 
- D 0 - I - 0x029ADA 0A:9ACA: 65        .byte con_A644_65   ; 
; 05 
- D 0 - I - 0x029ADB 0A:9ACB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029ADC 0A:9ACC: 64        .byte con_A644_64   ; 
; 06 
- D 0 - I - 0x029ADD 0A:9ACD: 70        .byte con_A03F_70   ; 
- D 0 - I - 0x029ADE 0A:9ACE: 65        .byte con_A644_65   ; 
; 07 
- D 0 - I - 0x029ADF 0A:9ACF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AE0 0A:9AD0: 62        .byte con_A644_62   ; 
; 08 
- D 0 - I - 0x029AE1 0A:9AD1: 70        .byte con_A03F_70   ; 
- D 0 - I - 0x029AE2 0A:9AD2: 63        .byte con_A644_63   ; 
; 09 
- D 0 - I - 0x029AE3 0A:9AD3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AE4 0A:9AD4: 00        .byte con_A644_00   ; 



off_9AD5_08_00_01:
; 00 
- D 0 - I - 0x029AE5 0A:9AD5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AE6 0A:9AD6: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029AE7 0A:9AD7: 35        .byte con_A03F_35   ; 
- D 0 - I - 0x029AE8 0A:9AD8: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029AE9 0A:9AD9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AEA 0A:9ADA: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029AEB 0A:9ADB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AEC 0A:9ADC: 59        .byte con_A644_59   ; 
; 04 
- D 0 - I - 0x029AED 0A:9ADD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AEE 0A:9ADE: 59        .byte con_A644_59   ; 
; 05 
- D 0 - I - 0x029AEF 0A:9ADF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AF0 0A:9AE0: 67        .byte con_A644_67   ; 
; 06 
- D 0 - I - 0x029AF1 0A:9AE1: 39        .byte con_A03F_39   ; 
- D 0 - I - 0x029AF2 0A:9AE2: 50        .byte con_A644_50   ; 
; 07 
- D 0 - I - 0x029AF3 0A:9AE3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AF4 0A:9AE4: 59        .byte con_A644_59   ; 
; 08 
- D 0 - I - 0x029AF5 0A:9AE5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AF6 0A:9AE6: 59        .byte con_A644_59   ; 
; 09 
- D 0 - I - 0x029AF7 0A:9AE7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AF8 0A:9AE8: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029AF9 0A:9AE9: 56        .byte con_A03F_56   ; 
- D 0 - I - 0x029AFA 0A:9AEA: 5E        .byte con_A644_5E   ; 
; 0B 
- D 0 - I - 0x029AFB 0A:9AEB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AFC 0A:9AEC: 5F        .byte con_A644_5F   ; 
; 0C 
- D 0 - I - 0x029AFD 0A:9AED: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029AFE 0A:9AEE: 60        .byte con_A644_60   ; 
; 0D 
- D 0 - I - 0x029AFF 0A:9AEF: 56        .byte con_A03F_56   ; 
- D 0 - I - 0x029B00 0A:9AF0: 3A        .byte con_A644_3A   ; 
; 0E 
- D 0 - I - 0x029B01 0A:9AF1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B02 0A:9AF2: 00        .byte con_A644_00   ; 
; 0F 
- D 0 - I - 0x029B03 0A:9AF3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B04 0A:9AF4: EB        .byte con_A644_EB   ; 
; 10 
- D 0 - I - 0x029B05 0A:9AF5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B06 0A:9AF6: 59        .byte con_A644_59   ; 
; 11 
- D 0 - I - 0x029B07 0A:9AF7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B08 0A:9AF8: 4B        .byte con_A644_4B   ; 
; 12 
- D 0 - I - 0x029B09 0A:9AF9: 33        .byte con_A03F_33   ; 
- D 0 - I - 0x029B0A 0A:9AFA: 5C        .byte con_A644_5C   ; 
; 13 
- D 0 - I - 0x029B0B 0A:9AFB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B0C 0A:9AFC: 5B        .byte con_A644_5B   ; 
; 14 
- D 0 - I - 0x029B0D 0A:9AFD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B0E 0A:9AFE: 5A        .byte con_A644_5A   ; 
; 15 
- D 0 - I - 0x029B0F 0A:9AFF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B10 0A:9B00: 00        .byte con_A644_00   ; 



off_9B01_08_01_00:
; 00 
- D 0 - I - 0x029B11 0A:9B01: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B12 0A:9B02: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029B13 0A:9B03: 35        .byte con_A03F_35   ; 
- D 0 - I - 0x029B14 0A:9B04: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029B15 0A:9B05: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B16 0A:9B06: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029B17 0A:9B07: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B18 0A:9B08: 3A        .byte con_A644_3A   ; 
; 04 
- D 0 - I - 0x029B19 0A:9B09: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B1A 0A:9B0A: 3A        .byte con_A644_3A   ; 
; 05 
- D 0 - I - 0x029B1B 0A:9B0B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B1C 0A:9B0C: 3A        .byte con_A644_3A   ; 
; 06 
- D 0 - I - 0x029B1D 0A:9B0D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B1E 0A:9B0E: 59        .byte con_A644_59   ; 
; 07 
- D 0 - I - 0x029B1F 0A:9B0F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B20 0A:9B10: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029B21 0A:9B11: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B22 0A:9B12: 6C        .byte con_A644_6C   ; 
; 09 
- D 0 - I - 0x029B23 0A:9B13: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B24 0A:9B14: 6D        .byte con_A644_6D   ; 
; 0A 
- D 0 - I - 0x029B25 0A:9B15: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B26 0A:9B16: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x029B27 0A:9B17: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B28 0A:9B18: 5C        .byte con_A644_5C   ; 
; 0C 
- D 0 - I - 0x029B29 0A:9B19: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B2A 0A:9B1A: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029B2B 0A:9B1B: 54        .byte con_A03F_54   ; 
- D 0 - I - 0x029B2C 0A:9B1C: 6C        .byte con_A644_6C   ; 
; 0E 
- D 0 - I - 0x029B2D 0A:9B1D: 54        .byte con_A03F_54   ; 
- D 0 - I - 0x029B2E 0A:9B1E: 3A        .byte con_A644_3A   ; 
; 0F 
- D 0 - I - 0x029B2F 0A:9B1F: 54        .byte con_A03F_54   ; 
- D 0 - I - 0x029B30 0A:9B20: 59        .byte con_A644_59   ; 
; 10 
- D 0 - I - 0x029B31 0A:9B21: 55        .byte con_A03F_55   ; 
- D 0 - I - 0x029B32 0A:9B22: 66        .byte con_A644_66   ; 
; 11 
- D 0 - I - 0x029B33 0A:9B23: 55        .byte con_A03F_55   ; 
- D 0 - I - 0x029B34 0A:9B24: 00        .byte con_A644_00   ; 
; 12 
- D 0 - I - 0x029B35 0A:9B25: 55        .byte con_A03F_55   ; 
- D 0 - I - 0x029B36 0A:9B26: 68        .byte con_A644_68   ; 
; 13 
- D 0 - I - 0x029B37 0A:9B27: 54        .byte con_A03F_54   ; 
- D 0 - I - 0x029B38 0A:9B28: 68        .byte con_A644_68   ; 
; 14 
- D 0 - I - 0x029B39 0A:9B29: 54        .byte con_A03F_54   ; 
- D 0 - I - 0x029B3A 0A:9B2A: 00        .byte con_A644_00   ; 
; 15 
- D 0 - I - 0x029B3B 0A:9B2B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B3C 0A:9B2C: 00        .byte con_A644_00   ; 



off_9B2D_08_02_00:
; 00 
- D 0 - I - 0x029B3D 0A:9B2D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B3E 0A:9B2E: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029B3F 0A:9B2F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B40 0A:9B30: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029B41 0A:9B31: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B42 0A:9B32: 61        .byte con_A644_61   ; 
; 03 
- D 0 - I - 0x029B43 0A:9B33: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B44 0A:9B34: 5D        .byte con_A644_5D   ; 
; 04 
- D 0 - I - 0x029B45 0A:9B35: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B46 0A:9B36: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029B47 0A:9B37: 50        .byte con_A03F_50   ; 
- D 0 - I - 0x029B48 0A:9B38: 63        .byte con_A644_63   ; 
; 06 
- D 0 - I - 0x029B49 0A:9B39: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B4A 0A:9B3A: 6F        .byte con_A644_6F   ; 
; 07 
- D 0 - I - 0x029B4B 0A:9B3B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B4C 0A:9B3C: 6F        .byte con_A644_6F   ; 
; 08 
- D 0 - I - 0x029B4D 0A:9B3D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B4E 0A:9B3E: 6F        .byte con_A644_6F   ; 
; 09 
- D 0 - I - 0x029B4F 0A:9B3F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B50 0A:9B40: 6F        .byte con_A644_6F   ; 
; 0A 
- D 0 - I - 0x029B51 0A:9B41: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B52 0A:9B42: 6F        .byte con_A644_6F   ; 
; 0B 
- D 0 - I - 0x029B53 0A:9B43: 4F        .byte con_A03F_4F   ; 
- D 0 - I - 0x029B54 0A:9B44: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029B55 0A:9B45: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B56 0A:9B46: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029B57 0A:9B47: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B58 0A:9B48: 6A        .byte con_A644_6A   ; 
; 0E 
- D 0 - I - 0x029B59 0A:9B49: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B5A 0A:9B4A: 3A        .byte con_A644_3A   ; 
; 0F 
- D 0 - I - 0x029B5B 0A:9B4B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B5C 0A:9B4C: 6E        .byte con_A644_6E   ; 
; 10 
- D 0 - I - 0x029B5D 0A:9B4D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B5E 0A:9B4E: 00        .byte con_A644_00   ; 
; 11 
- D 0 - I - 0x029B5F 0A:9B4F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B60 0A:9B50: 00        .byte con_A644_00   ; 



off_9B51_08_02_01:
; 00 
- D 0 - I - 0x029B61 0A:9B51: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B62 0A:9B52: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029B63 0A:9B53: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B64 0A:9B54: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029B65 0A:9B55: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B66 0A:9B56: 72        .byte con_A644_72   ; 
; 03 
- D 0 - I - 0x029B67 0A:9B57: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B68 0A:9B58: 6D        .byte con_A644_6D   ; 
; 04 
- D 0 - I - 0x029B69 0A:9B59: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B6A 0A:9B5A: 71        .byte con_A644_71   ; 
; 05 
- D 0 - I - 0x029B6B 0A:9B5B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B6C 0A:9B5C: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029B6D 0A:9B5D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B6E 0A:9B5E: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029B6F 0A:9B5F: 53        .byte con_A03F_53   ; 
- D 0 - I - 0x029B70 0A:9B60: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029B71 0A:9B61: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B72 0A:9B62: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029B73 0A:9B63: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B74 0A:9B64: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029B75 0A:9B65: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B76 0A:9B66: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x029B77 0A:9B67: 20        .byte con_A03F_20   ; 
- D 0 - I - 0x029B78 0A:9B68: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029B79 0A:9B69: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B7A 0A:9B6A: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029B7B 0A:9B6B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B7C 0A:9B6C: 00        .byte con_A644_00   ; 



off_9B6D_08_03_00:
; 00 
- D 0 - I - 0x029B7D 0A:9B6D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B7E 0A:9B6E: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029B7F 0A:9B6F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B80 0A:9B70: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029B81 0A:9B71: DE        .byte con_A03F_DE   ; 
- D 0 - I - 0x029B82 0A:9B72: 9D        .byte con_A644_9D   ; 
; 03 
- D 0 - I - 0x029B83 0A:9B73: 55        .byte con_A03F_55   ; 
- D 0 - I - 0x029B84 0A:9B74: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029B85 0A:9B75: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B86 0A:9B76: 9A        .byte con_A644_9A   ; 
; 05 
- D 0 - I - 0x029B87 0A:9B77: BF        .byte con_A03F_BF   ; 
- D 0 - I - 0x029B88 0A:9B78: D2        .byte con_A644_D2   ; 
; 06 
- D 0 - I - 0x029B89 0A:9B79: 55        .byte con_A03F_55   ; 
- D 0 - I - 0x029B8A 0A:9B7A: 3A        .byte con_A644_3A   ; 
; 07 
- D 0 - I - 0x029B8B 0A:9B7B: DE        .byte con_A03F_DE   ; 
- D 0 - I - 0x029B8C 0A:9B7C: 90        .byte con_A644_90   ; 
; 08 
- D 0 - I - 0x029B8D 0A:9B7D: 55        .byte con_A03F_55   ; 
- D 0 - I - 0x029B8E 0A:9B7E: 9C        .byte con_A644_9C   ; 
; 09 
- D 0 - I - 0x029B8F 0A:9B7F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B90 0A:9B80: 93        .byte con_A644_93   ; 
; 0A 
- D 0 - I - 0x029B91 0A:9B81: BF        .byte con_A03F_BF   ; 
- D 0 - I - 0x029B92 0A:9B82: 90        .byte con_A644_90   ; 
; 0B 
- D 0 - I - 0x029B93 0A:9B83: 55        .byte con_A03F_55   ; 
- D 0 - I - 0x029B94 0A:9B84: B8        .byte con_A644_B8   ; 
; 0C 
- D 0 - I - 0x029B95 0A:9B85: DE        .byte con_A03F_DE   ; 
- D 0 - I - 0x029B96 0A:9B86: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029B97 0A:9B87: BF        .byte con_A03F_BF   ; 
- D 0 - I - 0x029B98 0A:9B88: 00        .byte con_A644_00   ; 
; 0E 
- D 0 - I - 0x029B99 0A:9B89: 55        .byte con_A03F_55   ; 
- D 0 - I - 0x029B9A 0A:9B8A: 3F        .byte con_A644_3F   ; 
; 0F 
- D 0 - I - 0x029B9B 0A:9B8B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B9C 0A:9B8C: A9        .byte con_A644_A9   ; 
; 10 
- D 0 - I - 0x029B9D 0A:9B8D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029B9E 0A:9B8E: 00        .byte con_A644_00   ; 
; 11 
- D 0 - I - 0x029B9F 0A:9B8F: DE        .byte con_A03F_DE   ; 
- D 0 - I - 0x029BA0 0A:9B90: C4        .byte con_A644_C4   ; 
; 12 
- D 0 - I - 0x029BA1 0A:9B91: BF        .byte con_A03F_BF   ; 
- D 0 - I - 0x029BA2 0A:9B92: 00        .byte con_A644_00   ; 
; 13 
- D 0 - I - 0x029BA3 0A:9B93: 55        .byte con_A03F_55   ; 
- D 0 - I - 0x029BA4 0A:9B94: C3        .byte con_A644_C3   ; 
; 14 
- D 0 - I - 0x029BA5 0A:9B95: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029BA6 0A:9B96: 00        .byte con_A644_00   ; 
; 15 
- D 0 - I - 0x029BA7 0A:9B97: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029BA8 0A:9B98: 00        .byte con_A644_00   ; 



off_9B99_08_04_00:
; 00 
- D 0 - I - 0x029BA9 0A:9B99: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029BAA 0A:9B9A: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029BAB 0A:9B9B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029BAC 0A:9B9C: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029BAD 0A:9B9D: 20        .byte con_A03F_20   ; 
- D 0 - I - 0x029BAE 0A:9B9E: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029BAF 0A:9B9F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029BB0 0A:9BA0: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029BB1 0A:9BA1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029BB2 0A:9BA2: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029BB3 0A:9BA3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029BB4 0A:9BA4: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029BB5 0A:9BA5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029BB6 0A:9BA6: 3A        .byte con_A644_3A   ; 
; 07 
- D 0 - I - 0x029BB7 0A:9BA7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029BB8 0A:9BA8: 6A        .byte con_A644_6A   ; 
; 08 
- D 0 - I - 0x029BB9 0A:9BA9: 55        .byte con_A03F_55   ; 
- D 0 - I - 0x029BBA 0A:9BAA: 3A        .byte con_A644_3A   ; 
; 09 
- D 0 - I - 0x029BBB 0A:9BAB: BF        .byte con_A03F_BF   ; 
- D 0 - I - 0x029BBC 0A:9BAC: D8        .byte con_A644_D8   ; 
; 0A 
- D 0 - I - 0x029BBD 0A:9BAD: DE        .byte con_A03F_DE   ; 
- D 0 - I - 0x029BBE 0A:9BAE: 3A        .byte con_A644_3A   ; 
; 0B 
- D 0 - I - 0x029BBF 0A:9BAF: 55        .byte con_A03F_55   ; 
- D 0 - I - 0x029BC0 0A:9BB0: 3A        .byte con_A644_3A   ; 
; 0C 
- D 0 - I - 0x029BC1 0A:9BB1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029BC2 0A:9BB2: 6A        .byte con_A644_6A   ; 
; 0D 
- D 0 - I - 0x029BC3 0A:9BB3: 55        .byte con_A03F_55   ; 
- D 0 - I - 0x029BC4 0A:9BB4: 00        .byte con_A644_00   ; 
; 0E 
- D 0 - I - 0x029BC5 0A:9BB5: BF        .byte con_A03F_BF   ; 
- D 0 - I - 0x029BC6 0A:9BB6: 33        .byte con_A644_33   ; 
; 0F 
- D 0 - I - 0x029BC7 0A:9BB7: DE        .byte con_A03F_DE   ; 
- D 0 - I - 0x029BC8 0A:9BB8: 90        .byte con_A644_90   ; 
; 10 
- D 0 - I - 0x029BC9 0A:9BB9: 55        .byte con_A03F_55   ; 
- D 0 - I - 0x029BCA 0A:9BBA: 68        .byte con_A644_68   ; 
; 11 
- D 0 - I - 0x029BCB 0A:9BBB: BF        .byte con_A03F_BF   ; 
- D 0 - I - 0x029BCC 0A:9BBC: 90        .byte con_A644_90   ; 
; 12 
- D 0 - I - 0x029BCD 0A:9BBD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029BCE 0A:9BBE: 3F        .byte con_A644_3F   ; 
; 13 
- D 0 - I - 0x029BCF 0A:9BBF: 55        .byte con_A03F_55   ; 
- D 0 - I - 0x029BD0 0A:9BC0: 3F        .byte con_A644_3F   ; 
; 14 
- D 0 - I - 0x029BD1 0A:9BC1: DE        .byte con_A03F_DE   ; 
- D 0 - I - 0x029BD2 0A:9BC2: 6C        .byte con_A644_6C   ; 
; 15 
- D 0 - I - 0x029BD3 0A:9BC3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029BD4 0A:9BC4: 00        .byte con_A644_00   ; 



_off032_9BC5_09:
- D 0 - I - 0x029BD5 0A:9BC5: F1 9B     .word _off049_9BF1_09_00
- D 0 - I - 0x029BD7 0A:9BC7: F5 9B     .word _off049_9BF5_09_01



_off032_9BC9_0A:
- D 0 - I - 0x029BD9 0A:9BC9: FB 9B     .word _off049_9BFB_0A_00
- D 0 - I - 0x029BDB 0A:9BCB: FF 9B     .word _off049_9BFF_0A_01
- D 0 - I - 0x029BDD 0A:9BCD: 01 9C     .word _off049_9C01_0A_02
- D 0 - I - 0x029BDF 0A:9BCF: 03 9C     .word _off049_9C03_0A_03
- D 0 - I - 0x029BE1 0A:9BD1: 07 9C     .word _off049_9C07_0A_04
- D 0 - I - 0x029BE3 0A:9BD3: 0D 9C     .word _off049_9C0D_0A_05
- D 0 - I - 0x029BE5 0A:9BD5: 11 9C     .word _off049_9C11_0A_06



_off032_9BD7_0B:
- D 0 - I - 0x029BE7 0A:9BD7: 17 9C     .word _off049_9C17_0B_00
- D 0 - I - 0x029BE9 0A:9BD9: 1B 9C     .word _off049_9C1B_0B_01
- D 0 - I - 0x029BEB 0A:9BDB: 1F 9C     .word _off049_9C1F_0B_02



_off032_9BDD_0C:
- D 0 - I - 0x029BED 0A:9BDD: 25 9C     .word _off049_9C25_0C_00
- D 0 - I - 0x029BEF 0A:9BDF: 29 9C     .word _off049_9C29_0C_01
- D 0 - I - 0x029BF1 0A:9BE1: 2D 9C     .word _off049_9C2D_0C_02



_off032_9BE3_0D:
- D 0 - I - 0x029BF3 0A:9BE3: 2F 9C     .word _off049_9C2F_0D_00
- D 0 - I - 0x029BF5 0A:9BE5: 35 9C     .word _off049_9C35_0D_01
- D 0 - I - 0x029BF7 0A:9BE7: 3B 9C     .word _off049_9C3B_0D_02
- D 0 - I - 0x029BF9 0A:9BE9: 41 9C     .word _off049_9C41_0D_03



_off032_9BEB_0E:
- D 0 - I - 0x029BFB 0A:9BEB: 45 9C     .word _off049_9C45_0E_00
- D 0 - I - 0x029BFD 0A:9BED: 4B 9C     .word _off049_9C4B_0E_01
- D 0 - I - 0x029BFF 0A:9BEF: 4F 9C     .word _off049_9C4F_0E_02



_off049_9BF1_09_00:
- D 0 - I - 0x029C01 0A:9BF1: 53 9C     .word off_9C53_09_00_00
- D 0 - I - 0x029C03 0A:9BF3: 6F 9C     .word off_9C6F_09_00_01



_off049_9BF5_09_01:
- D 0 - I - 0x029C05 0A:9BF5: 8B 9C     .word off_9C8B_09_01_00
- D 0 - I - 0x029C07 0A:9BF7: 9F 9C     .word off_9C9F_09_01_01
- D 0 - I - 0x029C09 0A:9BF9: C3 9C     .word off_9CC3_09_01_02



_off049_9BFB_0A_00:
- D 0 - I - 0x029C0B 0A:9BFB: D7 9C     .word off_9CD7_0A_00_00
- D 0 - I - 0x029C0D 0A:9BFD: E3 9C     .word off_9CE3_0A_00_01



_off049_9BFF_0A_01:
- D 0 - I - 0x029C0F 0A:9BFF: EF 9C     .word off_9CEF_0A_01_00



_off049_9C01_0A_02:
- D 0 - I - 0x029C11 0A:9C01: 03 9D     .word off_9D03_0A_02_00



_off049_9C03_0A_03:
- D 0 - I - 0x029C13 0A:9C03: 0F 9D     .word off_9D0F_0A_03_00
- D 0 - I - 0x029C15 0A:9C05: 2B 9D     .word off_9D2B_0A_03_01



_off049_9C07_0A_04:
- D 0 - I - 0x029C17 0A:9C07: 08 AF     .word off_AF08_0A_04_00 ; special
- D 0 - I - 0x029C19 0A:9C09: 47 9D     .word off_9D47_0A_04_01
- D 0 - I - 0x029C1B 0A:9C0B: 5B 9D     .word off_9D5B_0A_04_02



_off049_9C0D_0A_05:
- D 0 - I - 0x029C1D 0A:9C0D: 6F 9D     .word off_9D6F_0A_05_00
- D 0 - I - 0x029C1F 0A:9C0F: 8B 9D     .word off_9D8B_0A_05_01



_off049_9C11_0A_06:
- D 0 - I - 0x029C21 0A:9C11: A7 9D     .word off_9DA7_0A_06_00
- D 0 - I - 0x029C23 0A:9C13: 17 AF     .word off_AF17_0A_06_01 ; special
- D 0 - I - 0x029C25 0A:9C15: B3 9D     .word off_9DB3_0A_06_02



_off049_9C17_0B_00:
- D 0 - I - 0x029C27 0A:9C17: C7 9D     .word off_9DC7_0B_00_00
- D 0 - I - 0x029C29 0A:9C19: EB 9D     .word off_9DEB_0B_00_01



_off049_9C1B_0B_01:
- D 0 - I - 0x029C2B 0A:9C1B: FF 9D     .word off_9DFF_0B_01_00
- D 0 - I - 0x029C2D 0A:9C1D: 1B 9E     .word off_9E1B_0B_01_01



_off049_9C1F_0B_02:
- D 0 - I - 0x029C2F 0A:9C1F: 37 9E     .word off_9E37_0B_02_00
- D 0 - I - 0x029C31 0A:9C21: B2 AF     .word off_AFB2_0B_02_01 ; special
- D 0 - I - 0x029C33 0A:9C23: 4B 9E     .word off_9E4B_0B_02_02



_off049_9C25_0C_00:
- D 0 - I - 0x029C35 0A:9C25: 67 9E     .word off_9E67_0C_00_00
- D 0 - I - 0x029C37 0A:9C27: 8B 9E     .word off_9E8B_0C_00_01



_off049_9C29_0C_01:
- D 0 - I - 0x029C39 0A:9C29: 9F 9E     .word off_9E9F_0C_01_00
- D 0 - I - 0x029C3B 0A:9C2B: B3 9E     .word off_9EB3_0C_01_01



_off049_9C2D_0C_02:
- D 0 - I - 0x029C3D 0A:9C2D: C7 9E     .word off_9EC7_0C_02_00



_off049_9C2F_0D_00:
- D 0 - I - 0x029C3F 0A:9C2F: 03 9F     .word off_9F03_0D_00_00
- D 0 - I - 0x029C41 0A:9C31: 0F 9F     .word off_9F0F_0D_00_01
- D 0 - I - 0x029C43 0A:9C33: 3B 9F     .word off_9F3B_0D_00_02



_off049_9C35_0D_01:
- D 0 - I - 0x029C45 0A:9C35: 47 9F     .word off_9F47_0D_01_00
- D 0 - I - 0x029C47 0A:9C37: D6 AF     .word off_AFD6_0D_01_01 ; special
- D 0 - I - 0x029C49 0A:9C39: 5B 9F     .word off_9F5B_0D_01_02



_off049_9C3B_0D_02:
- D 0 - I - 0x029C4B 0A:9C3B: 67 9F     .word off_9F67_0D_02_00
- D 0 - I - 0x029C4D 0A:9C3D: 0F B0     .word off_B00F_0D_02_01 ; special
- D 0 - I - 0x029C4F 0A:9C3F: 73 9F     .word off_9F73_0D_02_02



_off049_9C41_0D_03:
- D 0 - I - 0x029C51 0A:9C41: 7F 9F     .word off_9F7F_0D_03_00
- D 0 - I - 0x029C53 0A:9C43: 9B 9F     .word off_9F9B_0D_03_01



_off049_9C45_0E_00:
- D 0 - I - 0x029C55 0A:9C45: B7 9F     .word off_9FB7_0E_00_00
- D 0 - I - 0x029C57 0A:9C47: B1 B0     .word off_B0B1_0E_00_01 ; special
- D 0 - I - 0x029C59 0A:9C49: CB 9F     .word off_9FCB_0E_00_02



_off049_9C4B_0E_01:
- D 0 - I - 0x029C5B 0A:9C4B: DF 9F     .word off_9FDF_0E_01_00
- D 0 - I - 0x029C5D 0A:9C4D: F3 9F     .word off_9FF3_0E_01_01



_off049_9C4F_0E_02:
- D 0 - I - 0x029C5F 0A:9C4F: 0F A0     .word off_A00F_0E_02_00
- D 0 - I - 0x029C61 0A:9C51: 23 A0     .word off_A023_0E_02_01



off_9C53_09_00_00:
; 00 
- D 0 - I - 0x029C63 0A:9C53: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C64 0A:9C54: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029C65 0A:9C55: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C66 0A:9C56: 9D        .byte con_A644_9D   ; 
; 02 
- D 0 - I - 0x029C67 0A:9C57: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029C68 0A:9C58: 6C        .byte con_A644_6C   ; 
; 03 
- D 0 - I - 0x029C69 0A:9C59: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C6A 0A:9C5A: 68        .byte con_A644_68   ; 
; 04 
- D 0 - I - 0x029C6B 0A:9C5B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C6C 0A:9C5C: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029C6D 0A:9C5D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C6E 0A:9C5E: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029C6F 0A:9C5F: B9        .byte con_A03F_B9   ; 
- D 0 - I - 0x029C70 0A:9C60: C3        .byte con_A644_C3   ; 
; 07 
- D 0 - I - 0x029C71 0A:9C61: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029C72 0A:9C62: EA        .byte con_A644_EA   ; 
; 08 
- D 0 - I - 0x029C73 0A:9C63: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C74 0A:9C64: AE        .byte con_A644_AE   ; 
; 09 
- D 0 - I - 0x029C75 0A:9C65: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C76 0A:9C66: E9        .byte con_A644_E9   ; 
; 0A 
- D 0 - I - 0x029C77 0A:9C67: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C78 0A:9C68: 42        .byte con_A644_42   ; 
; 0B 
- D 0 - I - 0x029C79 0A:9C69: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C7A 0A:9C6A: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029C7B 0A:9C6B: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029C7C 0A:9C6C: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029C7D 0A:9C6D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C7E 0A:9C6E: 00        .byte con_A644_00   ; 



off_9C6F_09_00_01:
; 00 
- D 0 - I - 0x029C7F 0A:9C6F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C80 0A:9C70: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029C81 0A:9C71: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C82 0A:9C72: 92        .byte con_A644_92   ; 
; 02 
- D 0 - I - 0x029C83 0A:9C73: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C84 0A:9C74: 9D        .byte con_A644_9D   ; 
; 03 
- D 0 - I - 0x029C85 0A:9C75: BC        .byte con_A03F_BC   ; 
- D 0 - I - 0x029C86 0A:9C76: 9D        .byte con_A644_9D   ; 
; 04 
- D 0 - I - 0x029C87 0A:9C77: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C88 0A:9C78: 9D        .byte con_A644_9D   ; 
; 05 
- D 0 - I - 0x029C89 0A:9C79: BC        .byte con_A03F_BC   ; 
- D 0 - I - 0x029C8A 0A:9C7A: 5C        .byte con_A644_5C   ; 
; 06 
- D 0 - I - 0x029C8B 0A:9C7B: B6        .byte con_A03F_B6   ; 
- D 0 - I - 0x029C8C 0A:9C7C: 4B        .byte con_A644_4B   ; 
; 07 
- D 0 - I - 0x029C8D 0A:9C7D: B6        .byte con_A03F_B6   ; 
- D 0 - I - 0x029C8E 0A:9C7E: 5C        .byte con_A644_5C   ; 
; 08 
- D 0 - I - 0x029C8F 0A:9C7F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C90 0A:9C80: 33        .byte con_A644_33   ; 
; 09 
- D 0 - I - 0x029C91 0A:9C81: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C92 0A:9C82: E4        .byte con_A644_E4   ; 
; 0A 
- D 0 - I - 0x029C93 0A:9C83: B5        .byte con_A03F_B5   ; 
- D 0 - I - 0x029C94 0A:9C84: 6C        .byte con_A644_6C   ; 
; 0B 
- D 0 - I - 0x029C95 0A:9C85: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C96 0A:9C86: 68        .byte con_A644_68   ; 
; 0C 
- D 0 - I - 0x029C97 0A:9C87: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C98 0A:9C88: EB        .byte con_A644_EB   ; 
; 0D 
- D 0 - I - 0x029C99 0A:9C89: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C9A 0A:9C8A: 00        .byte con_A644_00   ; 



off_9C8B_09_01_00:
; 00 
- D 0 - I - 0x029C9B 0A:9C8B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C9C 0A:9C8C: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029C9D 0A:9C8D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029C9E 0A:9C8E: 90        .byte con_A644_90   ; 
; 02 
- D 0 - I - 0x029C9F 0A:9C8F: 15        .byte con_A03F_15   ; 
- D 0 - I - 0x029CA0 0A:9C90: C0        .byte con_A644_C0   ; 
; 03 
- D 0 - I - 0x029CA1 0A:9C91: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CA2 0A:9C92: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029CA3 0A:9C93: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CA4 0A:9C94: 68        .byte con_A644_68   ; 
; 05 
- D 0 - I - 0x029CA5 0A:9C95: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CA6 0A:9C96: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029CA7 0A:9C97: 64        .byte con_A03F_64   ; 
- D 0 - I - 0x029CA8 0A:9C98: C6        .byte con_A644_C6   ; 
; 07 
- D 0 - I - 0x029CA9 0A:9C99: BE        .byte con_A03F_BE   ; 
- D 0 - I - 0x029CAA 0A:9C9A: 59        .byte con_A644_59   ; 
; 08 
- D 0 - I - 0x029CAB 0A:9C9B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CAC 0A:9C9C: 96        .byte con_A644_96   ; 
; 09 
- D 0 - I - 0x029CAD 0A:9C9D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CAE 0A:9C9E: 00        .byte con_A644_00   ; 



off_9C9F_09_01_01:
; 00 
- D 0 - I - 0x029CAF 0A:9C9F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CB0 0A:9CA0: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029CB1 0A:9CA1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CB2 0A:9CA2: 42        .byte con_A644_42   ; 
; 02 
- D 0 - I - 0x029CB3 0A:9CA3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CB4 0A:9CA4: 3B        .byte con_A644_3B   ; 
; 03 
- D 0 - I - 0x029CB5 0A:9CA5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CB6 0A:9CA6: 3B        .byte con_A644_3B   ; 
; 04 
- D 0 - I - 0x029CB7 0A:9CA7: 59        .byte con_A03F_59   ; 
- D 0 - I - 0x029CB8 0A:9CA8: 9D        .byte con_A644_9D   ; 
; 05 
- D 0 - I - 0x029CB9 0A:9CA9: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029CBA 0A:9CAA: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029CBB 0A:9CAB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CBC 0A:9CAC: 74        .byte con_A644_74   ; 
; 07 
- D 0 - I - 0x029CBD 0A:9CAD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CBE 0A:9CAE: 74        .byte con_A644_74   ; 
; 08 
- D 0 - I - 0x029CBF 0A:9CAF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CC0 0A:9CB0: C7        .byte con_A644_C7   ; 
; 09 
- D 0 - I - 0x029CC1 0A:9CB1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CC2 0A:9CB2: 9D        .byte con_A644_9D   ; 
; 0A 
- D 0 - I - 0x029CC3 0A:9CB3: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029CC4 0A:9CB4: 9D        .byte con_A644_9D   ; 
; 0B 
- D 0 - I - 0x029CC5 0A:9CB5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CC6 0A:9CB6: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029CC7 0A:9CB7: 58        .byte con_A03F_58   ; 
- D 0 - I - 0x029CC8 0A:9CB8: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029CC9 0A:9CB9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CCA 0A:9CBA: 00        .byte con_A644_00   ; 
; 0E 
- D 0 - I - 0x029CCB 0A:9CBB: 98        .byte con_A03F_98   ; 
- D 0 - I - 0x029CCC 0A:9CBC: 99        .byte con_A644_99   ; 
; 0F 
- D 0 - I - 0x029CCD 0A:9CBD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CCE 0A:9CBE: 68        .byte con_A644_68   ; 
; 10 
- D 0 - I - 0x029CCF 0A:9CBF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CD0 0A:9CC0: A2        .byte con_A644_A2   ; 
; 11 
- D 0 - I - 0x029CD1 0A:9CC1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CD2 0A:9CC2: 00        .byte con_A644_00   ; 



off_9CC3_09_01_02:
; 00 
- D 0 - I - 0x029CD3 0A:9CC3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CD4 0A:9CC4: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029CD5 0A:9CC5: 02        .byte con_A03F_02   ; 
- D 0 - I - 0x029CD6 0A:9CC6: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029CD7 0A:9CC7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CD8 0A:9CC8: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029CD9 0A:9CC9: BD        .byte con_A03F_BD   ; 
- D 0 - I - 0x029CDA 0A:9CCA: 95        .byte con_A644_95   ; 
; 04 
- D 0 - I - 0x029CDB 0A:9CCB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CDC 0A:9CCC: 68        .byte con_A644_68   ; 
; 05 
- D 0 - I - 0x029CDD 0A:9CCD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CDE 0A:9CCE: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029CDF 0A:9CCF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CE0 0A:9CD0: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029CE1 0A:9CD1: 24        .byte con_A03F_24   ; 
- D 0 - I - 0x029CE2 0A:9CD2: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029CE3 0A:9CD3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CE4 0A:9CD4: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029CE5 0A:9CD5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CE6 0A:9CD6: 00        .byte con_A644_00   ; 



off_9CD7_0A_00_00:
; 00 
- D 0 - I - 0x029CE7 0A:9CD7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CE8 0A:9CD8: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029CE9 0A:9CD9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CEA 0A:9CDA: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029CEB 0A:9CDB: 5D        .byte con_A03F_5D   ; 
- D 0 - I - 0x029CEC 0A:9CDC: D1        .byte con_A644_D1   ; 
; 03 
- D 0 - I - 0x029CED 0A:9CDD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CEE 0A:9CDE: 4D        .byte con_A644_4D   ; 
; 04 
- D 0 - I - 0x029CEF 0A:9CDF: 31        .byte con_A03F_31   ; 
- D 0 - I - 0x029CF0 0A:9CE0: 27        .byte con_A644_27   ; 
; 05 
- D 0 - I - 0x029CF1 0A:9CE1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CF2 0A:9CE2: 00        .byte con_A644_00   ; 



off_9CE3_0A_00_01:
; 00 
- D 0 - I - 0x029CF3 0A:9CE3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CF4 0A:9CE4: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029CF5 0A:9CE5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CF6 0A:9CE6: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029CF7 0A:9CE7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CF8 0A:9CE8: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029CF9 0A:9CE9: A2        .byte con_A03F_A2   ; 
- D 0 - I - 0x029CFA 0A:9CEA: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029CFB 0A:9CEB: 26        .byte con_A03F_26   ; 
- D 0 - I - 0x029CFC 0A:9CEC: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029CFD 0A:9CED: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029CFE 0A:9CEE: 00        .byte con_A644_00   ; 



off_9CEF_0A_01_00:
; 00 
- D 0 - I - 0x029CFF 0A:9CEF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D00 0A:9CF0: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029D01 0A:9CF1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D02 0A:9CF2: 90        .byte con_A644_90   ; 
; 02 
- D 0 - I - 0x029D03 0A:9CF3: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029D04 0A:9CF4: 50        .byte con_A644_50   ; 
; 03 
- D 0 - I - 0x029D05 0A:9CF5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D06 0A:9CF6: D2        .byte con_A644_D2   ; 
; 04 
- D 0 - I - 0x029D07 0A:9CF7: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029D08 0A:9CF8: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029D09 0A:9CF9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D0A 0A:9CFA: FC        .byte con_A644_FC   ; 
; 06 
- D 0 - I - 0x029D0B 0A:9CFB: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029D0C 0A:9CFC: D2        .byte con_A644_D2   ; 
; 07 
- D 0 - I - 0x029D0D 0A:9CFD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D0E 0A:9CFE: 65        .byte con_A644_65   ; 
; 08 
- D 0 - I - 0x029D0F 0A:9CFF: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029D10 0A:9D00: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029D11 0A:9D01: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D12 0A:9D02: 00        .byte con_A644_00   ; 



off_9D03_0A_02_00:
; 00 
- D 0 - I - 0x029D13 0A:9D03: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D14 0A:9D04: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029D15 0A:9D05: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D16 0A:9D06: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029D17 0A:9D07: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D18 0A:9D08: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029D19 0A:9D09: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D1A 0A:9D0A: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029D1B 0A:9D0B: A3        .byte con_A03F_A3   ; 
- D 0 - I - 0x029D1C 0A:9D0C: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029D1D 0A:9D0D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D1E 0A:9D0E: 00        .byte con_A644_00   ; 



off_9D0F_0A_03_00:
; 00 
- D 0 - I - 0x029D1F 0A:9D0F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D20 0A:9D10: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029D21 0A:9D11: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D22 0A:9D12: B3        .byte con_A644_B3   ; 
; 02 
- D 0 - I - 0x029D23 0A:9D13: 17        .byte con_A03F_17   ; 
- D 0 - I - 0x029D24 0A:9D14: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029D25 0A:9D15: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D26 0A:9D16: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029D27 0A:9D17: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D28 0A:9D18: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029D29 0A:9D19: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D2A 0A:9D1A: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029D2B 0A:9D1B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D2C 0A:9D1C: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029D2D 0A:9D1D: 17        .byte con_A03F_17   ; 
- D 0 - I - 0x029D2E 0A:9D1E: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029D2F 0A:9D1F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D30 0A:9D20: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029D31 0A:9D21: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D32 0A:9D22: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029D33 0A:9D23: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D34 0A:9D24: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x029D35 0A:9D25: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D36 0A:9D26: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029D37 0A:9D27: 17        .byte con_A03F_17   ; 
- D 0 - I - 0x029D38 0A:9D28: 65        .byte con_A644_65   ; 
; 0D 
- D 0 - I - 0x029D39 0A:9D29: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D3A 0A:9D2A: 00        .byte con_A644_00   ; 



off_9D2B_0A_03_01:
; 00 
- D 0 - I - 0x029D3B 0A:9D2B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D3C 0A:9D2C: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029D3D 0A:9D2D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D3E 0A:9D2E: 93        .byte con_A644_93   ; 
; 02 
- D 0 - I - 0x029D3F 0A:9D2F: 33        .byte con_A03F_33   ; 
- D 0 - I - 0x029D40 0A:9D30: 59        .byte con_A644_59   ; 
; 03 
- D 0 - I - 0x029D41 0A:9D31: 95        .byte con_A03F_95   ; 
- D 0 - I - 0x029D42 0A:9D32: 59        .byte con_A644_59   ; 
; 04 
- D 0 - I - 0x029D43 0A:9D33: 39        .byte con_A03F_39   ; 
- D 0 - I - 0x029D44 0A:9D34: C0        .byte con_A644_C0   ; 
; 05 
- D 0 - I - 0x029D45 0A:9D35: 95        .byte con_A03F_95   ; 
- D 0 - I - 0x029D46 0A:9D36: FB        .byte con_A644_FB   ; 
; 06 
- D 0 - I - 0x029D47 0A:9D37: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D48 0A:9D38: 58        .byte con_A644_58   ; 
; 07 
- D 0 - I - 0x029D49 0A:9D39: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D4A 0A:9D3A: D4        .byte con_A644_D4   ; 
; 08 
- D 0 - I - 0x029D4B 0A:9D3B: 33        .byte con_A03F_33   ; 
- D 0 - I - 0x029D4C 0A:9D3C: 68        .byte con_A644_68   ; 
; 09 
- D 0 - I - 0x029D4D 0A:9D3D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D4E 0A:9D3E: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029D4F 0A:9D3F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D50 0A:9D40: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x029D51 0A:9D41: 1E        .byte con_A03F_1E   ; 
- D 0 - I - 0x029D52 0A:9D42: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029D53 0A:9D43: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D54 0A:9D44: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029D55 0A:9D45: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D56 0A:9D46: 00        .byte con_A644_00   ; 



off_9D47_0A_04_01:
; 00 
- D 0 - I - 0x029D57 0A:9D47: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D58 0A:9D48: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029D59 0A:9D49: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D5A 0A:9D4A: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029D5B 0A:9D4B: 30        .byte con_A03F_30   ; 
- D 0 - I - 0x029D5C 0A:9D4C: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029D5D 0A:9D4D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D5E 0A:9D4E: 2F        .byte con_A644_2F   ; 
; 04 
- D 0 - I - 0x029D5F 0A:9D4F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D60 0A:9D50: DE        .byte con_A644_DE   ; 
; 05 
- D 0 - I - 0x029D61 0A:9D51: 30        .byte con_A03F_30   ; 
- D 0 - I - 0x029D62 0A:9D52: 6B        .byte con_A644_6B   ; 
; 06 
- D 0 - I - 0x029D63 0A:9D53: 64        .byte con_A03F_64   ; 
- D 0 - I - 0x029D64 0A:9D54: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029D65 0A:9D55: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D66 0A:9D56: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029D67 0A:9D57: 30        .byte con_A03F_30   ; 
- D 0 - I - 0x029D68 0A:9D58: C3        .byte con_A644_C3   ; 
; 09 
- D 0 - I - 0x029D69 0A:9D59: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D6A 0A:9D5A: 00        .byte con_A644_00   ; 



off_9D5B_0A_04_02:
; 00 
- D 0 - I - 0x029D6B 0A:9D5B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D6C 0A:9D5C: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029D6D 0A:9D5D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D6E 0A:9D5E: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029D6F 0A:9D5F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D70 0A:9D60: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029D71 0A:9D61: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D72 0A:9D62: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029D73 0A:9D63: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D74 0A:9D64: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029D75 0A:9D65: 88        .byte con_A03F_88   ; 
- D 0 - I - 0x029D76 0A:9D66: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029D77 0A:9D67: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D78 0A:9D68: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029D79 0A:9D69: 88        .byte con_A03F_88   ; 
- D 0 - I - 0x029D7A 0A:9D6A: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029D7B 0A:9D6B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D7C 0A:9D6C: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029D7D 0A:9D6D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D7E 0A:9D6E: 00        .byte con_A644_00   ; 



off_9D6F_0A_05_00:
; 00 
- D 0 - I - 0x029D7F 0A:9D6F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D80 0A:9D70: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029D81 0A:9D71: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D82 0A:9D72: D5        .byte con_A644_D5   ; 
; 02 
- D 0 - I - 0x029D83 0A:9D73: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029D84 0A:9D74: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029D85 0A:9D75: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D86 0A:9D76: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029D87 0A:9D77: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D88 0A:9D78: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029D89 0A:9D79: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029D8A 0A:9D7A: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029D8B 0A:9D7B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D8C 0A:9D7C: 65        .byte con_A644_65   ; 
; 07 
- D 0 - I - 0x029D8D 0A:9D7D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D8E 0A:9D7E: 65        .byte con_A644_65   ; 
; 08 
- D 0 - I - 0x029D8F 0A:9D7F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D90 0A:9D80: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029D91 0A:9D81: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D92 0A:9D82: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029D93 0A:9D83: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029D94 0A:9D84: B8        .byte con_A644_B8   ; 
; 0B 
- D 0 - I - 0x029D95 0A:9D85: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D96 0A:9D86: 96        .byte con_A644_96   ; 
; 0C 
- D 0 - I - 0x029D97 0A:9D87: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D98 0A:9D88: 50        .byte con_A644_50   ; 
; 0D 
- D 0 - I - 0x029D99 0A:9D89: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D9A 0A:9D8A: 00        .byte con_A644_00   ; 



off_9D8B_0A_05_01:
; 00 
- D 0 - I - 0x029D9B 0A:9D8B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D9C 0A:9D8C: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029D9D 0A:9D8D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029D9E 0A:9D8E: 94        .byte con_A644_94   ; 
; 02 
- D 0 - I - 0x029D9F 0A:9D8F: 09        .byte con_A03F_09   ; 
- D 0 - I - 0x029DA0 0A:9D90: 59        .byte con_A644_59   ; 
; 03 
- D 0 - I - 0x029DA1 0A:9D91: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DA2 0A:9D92: 90        .byte con_A644_90   ; 
; 04 
- D 0 - I - 0x029DA3 0A:9D93: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DA4 0A:9D94: 93        .byte con_A644_93   ; 
; 05 
- D 0 - I - 0x029DA5 0A:9D95: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DA6 0A:9D96: 39        .byte con_A644_39   ; 
; 06 
- D 0 - I - 0x029DA7 0A:9D97: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DA8 0A:9D98: 90        .byte con_A644_90   ; 
; 07 
- D 0 - I - 0x029DA9 0A:9D99: 09        .byte con_A03F_09   ; 
- D 0 - I - 0x029DAA 0A:9D9A: 63        .byte con_A644_63   ; 
; 08 
- D 0 - I - 0x029DAB 0A:9D9B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DAC 0A:9D9C: 90        .byte con_A644_90   ; 
; 09 
- D 0 - I - 0x029DAD 0A:9D9D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DAE 0A:9D9E: 9D        .byte con_A644_9D   ; 
; 0A 
- D 0 - I - 0x029DAF 0A:9D9F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DB0 0A:9DA0: 92        .byte con_A644_92   ; 
; 0B 
- D 0 - I - 0x029DB1 0A:9DA1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DB2 0A:9DA2: 94        .byte con_A644_94   ; 
; 0C 
- D 0 - I - 0x029DB3 0A:9DA3: 09        .byte con_A03F_09   ; 
- D 0 - I - 0x029DB4 0A:9DA4: 94        .byte con_A644_94   ; 
; 0D 
- D 0 - I - 0x029DB5 0A:9DA5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DB6 0A:9DA6: 00        .byte con_A644_00   ; 



off_9DA7_0A_06_00:
; 00 
- D 0 - I - 0x029DB7 0A:9DA7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DB8 0A:9DA8: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029DB9 0A:9DA9: 30        .byte con_A03F_30   ; 
- D 0 - I - 0x029DBA 0A:9DAA: 90        .byte con_A644_90   ; 
; 02 
- D 0 - I - 0x029DBB 0A:9DAB: 2F        .byte con_A03F_2F   ; 
- D 0 - I - 0x029DBC 0A:9DAC: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029DBD 0A:9DAD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DBE 0A:9DAE: 96        .byte con_A644_96   ; 
; 04 
- D 0 - I - 0x029DBF 0A:9DAF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DC0 0A:9DB0: 96        .byte con_A644_96   ; 
; 05 
- D 0 - I - 0x029DC1 0A:9DB1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DC2 0A:9DB2: 00        .byte con_A644_00   ; 



off_9DB3_0A_06_02:
; 00 
- D 0 - I - 0x029DC3 0A:9DB3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DC4 0A:9DB4: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029DC5 0A:9DB5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DC6 0A:9DB6: 9D        .byte con_A644_9D   ; 
; 02 
- D 0 - I - 0x029DC7 0A:9DB7: 34        .byte con_A03F_34   ; 
- D 0 - I - 0x029DC8 0A:9DB8: 90        .byte con_A644_90   ; 
; 03 
- D 0 - I - 0x029DC9 0A:9DB9: 94        .byte con_A03F_94   ; 
- D 0 - I - 0x029DCA 0A:9DBA: 4B        .byte con_A644_4B   ; 
; 04 
- D 0 - I - 0x029DCB 0A:9DBB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DCC 0A:9DBC: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029DCD 0A:9DBD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DCE 0A:9DBE: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029DCF 0A:9DBF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DD0 0A:9DC0: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029DD1 0A:9DC1: 2D        .byte con_A03F_2D   ; 
- D 0 - I - 0x029DD2 0A:9DC2: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029DD3 0A:9DC3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DD4 0A:9DC4: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029DD5 0A:9DC5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DD6 0A:9DC6: 00        .byte con_A644_00   ; 



off_9DC7_0B_00_00:
; 00 
- D 0 - I - 0x029DD7 0A:9DC7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DD8 0A:9DC8: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029DD9 0A:9DC9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DDA 0A:9DCA: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029DDB 0A:9DCB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DDC 0A:9DCC: 65        .byte con_A644_65   ; 
; 03 
- D 0 - I - 0x029DDD 0A:9DCD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DDE 0A:9DCE: 43        .byte con_A644_43   ; 
; 04 
- D 0 - I - 0x029DDF 0A:9DCF: 33        .byte con_A03F_33   ; 
- D 0 - I - 0x029DE0 0A:9DD0: 9D        .byte con_A644_9D   ; 
; 05 
- D 0 - I - 0x029DE1 0A:9DD1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DE2 0A:9DD2: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029DE3 0A:9DD3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DE4 0A:9DD4: D7        .byte con_A644_D7   ; 
; 07 
- D 0 - I - 0x029DE5 0A:9DD5: 8D        .byte con_A03F_8D   ; 
- D 0 - I - 0x029DE6 0A:9DD6: 9D        .byte con_A644_9D   ; 
; 08 
- D 0 - I - 0x029DE7 0A:9DD7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DE8 0A:9DD8: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029DE9 0A:9DD9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DEA 0A:9DDA: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029DEB 0A:9DDB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DEC 0A:9DDC: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x029DED 0A:9DDD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DEE 0A:9DDE: D8        .byte con_A644_D8   ; 
; 0C 
- D 0 - I - 0x029DEF 0A:9DDF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DF0 0A:9DE0: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029DF1 0A:9DE1: A7        .byte con_A03F_A7   ; 
- D 0 - I - 0x029DF2 0A:9DE2: 42        .byte con_A644_42   ; 
; 0E 
- D 0 - I - 0x029DF3 0A:9DE3: A6        .byte con_A03F_A6   ; 
- D 0 - I - 0x029DF4 0A:9DE4: 00        .byte con_A644_00   ; 
; 0F 
- D 0 - I - 0x029DF5 0A:9DE5: 69        .byte con_A03F_69   ; 
- D 0 - I - 0x029DF6 0A:9DE6: 93        .byte con_A644_93   ; 
; 10 
- D 0 - I - 0x029DF7 0A:9DE7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DF8 0A:9DE8: 00        .byte con_A644_00   ; 
; 11 
- D 0 - I - 0x029DF9 0A:9DE9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DFA 0A:9DEA: 00        .byte con_A644_00   ; 



off_9DEB_0B_00_01:
; 00 
- D 0 - I - 0x029DFB 0A:9DEB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DFC 0A:9DEC: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029DFD 0A:9DED: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029DFE 0A:9DEE: C9        .byte con_A644_C9   ; 
; 02 
- D 0 - I - 0x029DFF 0A:9DEF: 4E        .byte con_A03F_4E   ; 
- D 0 - I - 0x029E00 0A:9DF0: 98        .byte con_A644_98   ; 
; 03 
- D 0 - I - 0x029E01 0A:9DF1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E02 0A:9DF2: C8        .byte con_A644_C8   ; 
; 04 
- D 0 - I - 0x029E03 0A:9DF3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E04 0A:9DF4: C0        .byte con_A644_C0   ; 
; 05 
- D 0 - I - 0x029E05 0A:9DF5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E06 0A:9DF6: 48        .byte con_A644_48   ; 
; 06 
- D 0 - I - 0x029E07 0A:9DF7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E08 0A:9DF8: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029E09 0A:9DF9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E0A 0A:9DFA: CB        .byte con_A644_CB   ; 
; 08 
- D 0 - I - 0x029E0B 0A:9DFB: 4E        .byte con_A03F_4E   ; 
- D 0 - I - 0x029E0C 0A:9DFC: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029E0D 0A:9DFD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E0E 0A:9DFE: 00        .byte con_A644_00   ; 



off_9DFF_0B_01_00:
; 00 
- D 0 - I - 0x029E0F 0A:9DFF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E10 0A:9E00: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029E11 0A:9E01: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E12 0A:9E02: 78        .byte con_A644_78   ; 
; 02 
- D 0 - I - 0x029E13 0A:9E03: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E14 0A:9E04: CA        .byte con_A644_CA   ; 
; 03 
- D 0 - I - 0x029E15 0A:9E05: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E16 0A:9E06: 9D        .byte con_A644_9D   ; 
; 04 
- D 0 - I - 0x029E17 0A:9E07: AE        .byte con_A03F_AE   ; 
- D 0 - I - 0x029E18 0A:9E08: 65        .byte con_A644_65   ; 
; 05 
- D 0 - I - 0x029E19 0A:9E09: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E1A 0A:9E0A: CC        .byte con_A644_CC   ; 
; 06 
- D 0 - I - 0x029E1B 0A:9E0B: AF        .byte con_A03F_AF   ; 
- D 0 - I - 0x029E1C 0A:9E0C: 76        .byte con_A644_76   ; 
; 07 
- D 0 - I - 0x029E1D 0A:9E0D: B0        .byte con_A03F_B0   ; 
- D 0 - I - 0x029E1E 0A:9E0E: CC        .byte con_A644_CC   ; 
; 08 
- D 0 - I - 0x029E1F 0A:9E0F: AF        .byte con_A03F_AF   ; 
- D 0 - I - 0x029E20 0A:9E10: 76        .byte con_A644_76   ; 
; 09 
- D 0 - I - 0x029E21 0A:9E11: B0        .byte con_A03F_B0   ; 
- D 0 - I - 0x029E22 0A:9E12: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029E23 0A:9E13: AE        .byte con_A03F_AE   ; 
- D 0 - I - 0x029E24 0A:9E14: FD        .byte con_A644_FD   ; 
; 0B 
- D 0 - I - 0x029E25 0A:9E15: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E26 0A:9E16: CE        .byte con_A644_CE   ; 
; 0C 
- D 0 - I - 0x029E27 0A:9E17: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E28 0A:9E18: 74        .byte con_A644_74   ; 
; 0D 
- D 0 - I - 0x029E29 0A:9E19: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E2A 0A:9E1A: 00        .byte con_A644_00   ; 



off_9E1B_0B_01_01:
; 00 
- D 0 - I - 0x029E2B 0A:9E1B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E2C 0A:9E1C: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029E2D 0A:9E1D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E2E 0A:9E1E: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029E2F 0A:9E1F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E30 0A:9E20: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029E31 0A:9E21: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E32 0A:9E22: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029E33 0A:9E23: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E34 0A:9E24: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029E35 0A:9E25: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E36 0A:9E26: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029E37 0A:9E27: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E38 0A:9E28: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029E39 0A:9E29: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E3A 0A:9E2A: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029E3B 0A:9E2B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E3C 0A:9E2C: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029E3D 0A:9E2D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E3E 0A:9E2E: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029E3F 0A:9E2F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E40 0A:9E30: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x029E41 0A:9E31: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E42 0A:9E32: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029E43 0A:9E33: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E44 0A:9E34: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029E45 0A:9E35: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E46 0A:9E36: 00        .byte con_A644_00   ; 



off_9E37_0B_02_00:
; 00 
- D 0 - I - 0x029E47 0A:9E37: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E48 0A:9E38: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029E49 0A:9E39: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E4A 0A:9E3A: AC        .byte con_A644_AC   ; 
; 02 
- D 0 - I - 0x029E4B 0A:9E3B: 64        .byte con_A03F_64   ; 
- D 0 - I - 0x029E4C 0A:9E3C: 9D        .byte con_A644_9D   ; 
; 03 
- D 0 - I - 0x029E4D 0A:9E3D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E4E 0A:9E3E: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029E4F 0A:9E3F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E50 0A:9E40: 96        .byte con_A644_96   ; 
; 05 
- D 0 - I - 0x029E51 0A:9E41: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E52 0A:9E42: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029E53 0A:9E43: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E54 0A:9E44: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029E55 0A:9E45: 2D        .byte con_A03F_2D   ; 
- D 0 - I - 0x029E56 0A:9E46: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029E57 0A:9E47: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E58 0A:9E48: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029E59 0A:9E49: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E5A 0A:9E4A: 00        .byte con_A644_00   ; 



off_9E4B_0B_02_02:
; 00 
- D 0 - I - 0x029E5B 0A:9E4B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E5C 0A:9E4C: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029E5D 0A:9E4D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E5E 0A:9E4E: 90        .byte con_A644_90   ; 
; 02 
- D 0 - I - 0x029E5F 0A:9E4F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E60 0A:9E50: 65        .byte con_A644_65   ; 
; 03 
- D 0 - I - 0x029E61 0A:9E51: A5        .byte con_A03F_A5   ; 
- D 0 - I - 0x029E62 0A:9E52: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029E63 0A:9E53: 88        .byte con_A03F_88   ; 
- D 0 - I - 0x029E64 0A:9E54: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029E65 0A:9E55: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E66 0A:9E56: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029E67 0A:9E57: 9B        .byte con_A03F_9B   ; 
- D 0 - I - 0x029E68 0A:9E58: 90        .byte con_A644_90   ; 
; 07 
- D 0 - I - 0x029E69 0A:9E59: A5        .byte con_A03F_A5   ; 
- D 0 - I - 0x029E6A 0A:9E5A: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029E6B 0A:9E5B: 88        .byte con_A03F_88   ; 
- D 0 - I - 0x029E6C 0A:9E5C: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029E6D 0A:9E5D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E6E 0A:9E5E: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029E6F 0A:9E5F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E70 0A:9E60: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x029E71 0A:9E61: 9C        .byte con_A03F_9C   ; 
- D 0 - I - 0x029E72 0A:9E62: 6C        .byte con_A644_6C   ; 
; 0C 
- D 0 - I - 0x029E73 0A:9E63: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E74 0A:9E64: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029E75 0A:9E65: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E76 0A:9E66: 00        .byte con_A644_00   ; 



off_9E67_0C_00_00:
; 00 
- D 0 - I - 0x029E77 0A:9E67: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E78 0A:9E68: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029E79 0A:9E69: B1        .byte con_A03F_B1   ; 
- D 0 - I - 0x029E7A 0A:9E6A: AE        .byte con_A644_AE   ; 
; 02 
- D 0 - I - 0x029E7B 0A:9E6B: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029E7C 0A:9E6C: E3        .byte con_A644_E3   ; 
; 03 
- D 0 - I - 0x029E7D 0A:9E6D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E7E 0A:9E6E: AD        .byte con_A644_AD   ; 
; 04 
- D 0 - I - 0x029E7F 0A:9E6F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E80 0A:9E70: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029E81 0A:9E71: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E82 0A:9E72: AE        .byte con_A644_AE   ; 
; 06 
- D 0 - I - 0x029E83 0A:9E73: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E84 0A:9E74: AE        .byte con_A644_AE   ; 
; 07 
- D 0 - I - 0x029E85 0A:9E75: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029E86 0A:9E76: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029E87 0A:9E77: B1        .byte con_A03F_B1   ; 
- D 0 - I - 0x029E88 0A:9E78: AE        .byte con_A644_AE   ; 
; 09 
- D 0 - I - 0x029E89 0A:9E79: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E8A 0A:9E7A: AE        .byte con_A644_AE   ; 
; 0A 
- D 0 - I - 0x029E8B 0A:9E7B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E8C 0A:9E7C: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x029E8D 0A:9E7D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E8E 0A:9E7E: C0        .byte con_A644_C0   ; 
; 0C 
- D 0 - I - 0x029E8F 0A:9E7F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E90 0A:9E80: B8        .byte con_A644_B8   ; 
; 0D 
- D 0 - I - 0x029E91 0A:9E81: B0        .byte con_A03F_B0   ; 
- D 0 - I - 0x029E92 0A:9E82: A9        .byte con_A644_A9   ; 
; 0E 
- D 0 - I - 0x029E93 0A:9E83: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E94 0A:9E84: BF        .byte con_A644_BF   ; 
; 0F 
- D 0 - I - 0x029E95 0A:9E85: 98        .byte con_A03F_98   ; 
- D 0 - I - 0x029E96 0A:9E86: 9B        .byte con_A644_9B   ; 
; 10 
- D 0 - I - 0x029E97 0A:9E87: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E98 0A:9E88: BF        .byte con_A644_BF   ; 
; 11 
- D 0 - I - 0x029E99 0A:9E89: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E9A 0A:9E8A: 00        .byte con_A644_00   ; 



off_9E8B_0C_00_01:
; 00 
- D 0 - I - 0x029E9B 0A:9E8B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029E9C 0A:9E8C: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029E9D 0A:9E8D: 30        .byte con_A03F_30   ; 
- D 0 - I - 0x029E9E 0A:9E8E: 6F        .byte con_A644_6F   ; 
; 02 
- D 0 - I - 0x029E9F 0A:9E8F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EA0 0A:9E90: BB        .byte con_A644_BB   ; 
; 03 
- D 0 - I - 0x029EA1 0A:9E91: 75        .byte con_A03F_75   ; 
- D 0 - I - 0x029EA2 0A:9E92: BB        .byte con_A644_BB   ; 
; 04 
- D 0 - I - 0x029EA3 0A:9E93: 30        .byte con_A03F_30   ; 
- D 0 - I - 0x029EA4 0A:9E94: 42        .byte con_A644_42   ; 
; 05 
- D 0 - I - 0x029EA5 0A:9E95: 75        .byte con_A03F_75   ; 
- D 0 - I - 0x029EA6 0A:9E96: 42        .byte con_A644_42   ; 
; 06 
- D 0 - I - 0x029EA7 0A:9E97: 30        .byte con_A03F_30   ; 
- D 0 - I - 0x029EA8 0A:9E98: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029EA9 0A:9E99: 75        .byte con_A03F_75   ; 
- D 0 - I - 0x029EAA 0A:9E9A: C0        .byte con_A644_C0   ; 
; 08 
- D 0 - I - 0x029EAB 0A:9E9B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EAC 0A:9E9C: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029EAD 0A:9E9D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EAE 0A:9E9E: 00        .byte con_A644_00   ; 



off_9E9F_0C_01_00:
; 00 
- D 0 - I - 0x029EAF 0A:9E9F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EB0 0A:9EA0: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029EB1 0A:9EA1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EB2 0A:9EA2: 9B        .byte con_A644_9B   ; 
; 02 
- D 0 - I - 0x029EB3 0A:9EA3: 23        .byte con_A03F_23   ; 
- D 0 - I - 0x029EB4 0A:9EA4: 72        .byte con_A644_72   ; 
; 03 
- D 0 - I - 0x029EB5 0A:9EA5: 77        .byte con_A03F_77   ; 
- D 0 - I - 0x029EB6 0A:9EA6: E4        .byte con_A644_E4   ; 
; 04 
- D 0 - I - 0x029EB7 0A:9EA7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EB8 0A:9EA8: AB        .byte con_A644_AB   ; 
; 05 
- D 0 - I - 0x029EB9 0A:9EA9: 9A        .byte con_A03F_9A   ; 
- D 0 - I - 0x029EBA 0A:9EAA: 6C        .byte con_A644_6C   ; 
; 06 
- D 0 - I - 0x029EBB 0A:9EAB: 61        .byte con_A03F_61   ; 
- D 0 - I - 0x029EBC 0A:9EAC: 72        .byte con_A644_72   ; 
; 07 
- D 0 - I - 0x029EBD 0A:9EAD: A4        .byte con_A03F_A4   ; 
- D 0 - I - 0x029EBE 0A:9EAE: AB        .byte con_A644_AB   ; 
; 08 
- D 0 - I - 0x029EBF 0A:9EAF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EC0 0A:9EB0: C0        .byte con_A644_C0   ; 
; 09 
- D 0 - I - 0x029EC1 0A:9EB1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EC2 0A:9EB2: 00        .byte con_A644_00   ; 



off_9EB3_0C_01_01:
; 00 
- D 0 - I - 0x029EC3 0A:9EB3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EC4 0A:9EB4: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029EC5 0A:9EB5: 99        .byte con_A03F_99   ; 
- D 0 - I - 0x029EC6 0A:9EB6: 95        .byte con_A644_95   ; 
; 02 
- D 0 - I - 0x029EC7 0A:9EB7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EC8 0A:9EB8: BF        .byte con_A644_BF   ; 
; 03 
- D 0 - I - 0x029EC9 0A:9EB9: 98        .byte con_A03F_98   ; 
- D 0 - I - 0x029ECA 0A:9EBA: C1        .byte con_A644_C1   ; 
; 04 
- D 0 - I - 0x029ECB 0A:9EBB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029ECC 0A:9EBC: 95        .byte con_A644_95   ; 
; 05 
- D 0 - I - 0x029ECD 0A:9EBD: 9A        .byte con_A03F_9A   ; 
- D 0 - I - 0x029ECE 0A:9EBE: 6C        .byte con_A644_6C   ; 
; 06 
- D 0 - I - 0x029ECF 0A:9EBF: 9A        .byte con_A03F_9A   ; 
- D 0 - I - 0x029ED0 0A:9EC0: 6A        .byte con_A644_6A   ; 
; 07 
- D 0 - I - 0x029ED1 0A:9EC1: 98        .byte con_A03F_98   ; 
- D 0 - I - 0x029ED2 0A:9EC2: 6C        .byte con_A644_6C   ; 
; 08 
- D 0 - I - 0x029ED3 0A:9EC3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029ED4 0A:9EC4: 3F        .byte con_A644_3F   ; 
; 09 
- D 0 - I - 0x029ED5 0A:9EC5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029ED6 0A:9EC6: 00        .byte con_A644_00   ; 



off_9EC7_0C_02_00:
; 00 
- D 0 - I - 0x029ED7 0A:9EC7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029ED8 0A:9EC8: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029ED9 0A:9EC9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EDA 0A:9ECA: 42        .byte con_A644_42   ; 
; 02 
- D 0 - I - 0x029EDB 0A:9ECB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EDC 0A:9ECC: B7        .byte con_A644_B7   ; 
; 03 
- D 0 - I - 0x029EDD 0A:9ECD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EDE 0A:9ECE: 35        .byte con_A644_35   ; 
; 04 
- D 0 - I - 0x029EDF 0A:9ECF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EE0 0A:9ED0: C2        .byte con_A644_C2   ; 
; 05 
- D 0 - I - 0x029EE1 0A:9ED1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EE2 0A:9ED2: C3        .byte con_A644_C3   ; 
; 06 
- D 0 - I - 0x029EE3 0A:9ED3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EE4 0A:9ED4: 3E        .byte con_A644_3E   ; 
; 07 
- D 0 - I - 0x029EE5 0A:9ED5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EE6 0A:9ED6: C3        .byte con_A644_C3   ; 
; 08 
- D 0 - I - 0x029EE7 0A:9ED7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EE8 0A:9ED8: 3E        .byte con_A644_3E   ; 
; 09 
- D 0 - I - 0x029EE9 0A:9ED9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EEA 0A:9EDA: C3        .byte con_A644_C3   ; 
; 0A 
- D 0 - I - 0x029EEB 0A:9EDB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EEC 0A:9EDC: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x029EED 0A:9EDD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EEE 0A:9EDE: 43        .byte con_A644_43   ; 
; 0C 
- D 0 - I - 0x029EEF 0A:9EDF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EF0 0A:9EE0: 3E        .byte con_A644_3E   ; 
; 0D 
- D 0 - I - 0x029EF1 0A:9EE1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EF2 0A:9EE2: 9B        .byte con_A644_9B   ; 
; 0E 
- D 0 - I - 0x029EF3 0A:9EE3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EF4 0A:9EE4: EF        .byte con_A644_EF   ; 
; 0F 
- D 0 - I - 0x029EF5 0A:9EE5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EF6 0A:9EE6: 9B        .byte con_A644_9B   ; 
; 10 
- D 0 - I - 0x029EF7 0A:9EE7: 96        .byte con_A03F_96   ; 
- D 0 - I - 0x029EF8 0A:9EE8: C3        .byte con_A644_C3   ; 
; 11 
- D 0 - I - 0x029EF9 0A:9EE9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EFA 0A:9EEA: A7        .byte con_A644_A7   ; 
; 12 
- D 0 - I - 0x029EFB 0A:9EEB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EFC 0A:9EEC: C3        .byte con_A644_C3   ; 
; 13 
- D 0 - I - 0x029EFD 0A:9EED: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029EFE 0A:9EEE: 3D        .byte con_A644_3D   ; 
; 14 
- D 0 - I - 0x029EFF 0A:9EEF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F00 0A:9EF0: 00        .byte con_A644_00   ; 
; 15 
- D 0 - I - 0x029F01 0A:9EF1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F02 0A:9EF2: 00        .byte con_A644_00   ; 
; 16 
- D 0 - I - 0x029F03 0A:9EF3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F04 0A:9EF4: 00        .byte con_A644_00   ; 
; 17 
- D 0 - I - 0x029F05 0A:9EF5: 2B        .byte con_A03F_2B   ; 
- D 0 - I - 0x029F06 0A:9EF6: 00        .byte con_A644_00   ; 
; 18 
- D 0 - I - 0x029F07 0A:9EF7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F08 0A:9EF8: 00        .byte con_A644_00   ; 
; 19 
- D 0 - I - 0x029F09 0A:9EF9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F0A 0A:9EFA: 00        .byte con_A644_00   ; 
; 1A 
- - - - - - 0x029F0B 0A:9EFB: 00        .byte con_A03F_00   ; 
- - - - - - 0x029F0C 0A:9EFC: 00        .byte con_A644_00   ; 
; 1B 
- - - - - - 0x029F0D 0A:9EFD: 00        .byte con_A03F_00   ; 
- - - - - - 0x029F0E 0A:9EFE: 00        .byte con_A644_00   ; 
; 1C 
- - - - - - 0x029F0F 0A:9EFF: 2B        .byte con_A03F_2B   ; 
- - - - - - 0x029F10 0A:9F00: 00        .byte con_A644_00   ; 
; 1D 
- - - - - - 0x029F11 0A:9F01: 00        .byte con_A03F_00   ; 
- - - - - - 0x029F12 0A:9F02: 00        .byte con_A644_00   ; 



off_9F03_0D_00_00:
; 00 
- D 0 - I - 0x029F13 0A:9F03: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F14 0A:9F04: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029F15 0A:9F05: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F16 0A:9F06: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029F17 0A:9F07: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F18 0A:9F08: 9D        .byte con_A644_9D   ; 
; 03 
- D 0 - I - 0x029F19 0A:9F09: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F1A 0A:9F0A: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029F1B 0A:9F0B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F1C 0A:9F0C: 96        .byte con_A644_96   ; 
; 05 
- D 0 - I - 0x029F1D 0A:9F0D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F1E 0A:9F0E: 00        .byte con_A644_00   ; 



off_9F0F_0D_00_01:
; 00 
- D 0 - I - 0x029F1F 0A:9F0F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F20 0A:9F10: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029F21 0A:9F11: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F22 0A:9F12: 6E        .byte con_A644_6E   ; 
; 02 
- D 0 - I - 0x029F23 0A:9F13: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F24 0A:9F14: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029F25 0A:9F15: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F26 0A:9F16: DC        .byte con_A644_DC   ; 
; 04 
- D 0 - I - 0x029F27 0A:9F17: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F28 0A:9F18: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029F29 0A:9F19: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F2A 0A:9F1A: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029F2B 0A:9F1B: 4E        .byte con_A03F_4E   ; 
- D 0 - I - 0x029F2C 0A:9F1C: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029F2D 0A:9F1D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F2E 0A:9F1E: 00        .byte con_A644_00   ; 
; 08 
- D 0 - I - 0x029F2F 0A:9F1F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F30 0A:9F20: 2F        .byte con_A644_2F   ; 
; 09 
- D 0 - I - 0x029F31 0A:9F21: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F32 0A:9F22: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029F33 0A:9F23: 4E        .byte con_A03F_4E   ; 
- D 0 - I - 0x029F34 0A:9F24: 00        .byte con_A644_00   ; 
; 0B 
- D 0 - I - 0x029F35 0A:9F25: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F36 0A:9F26: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029F37 0A:9F27: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F38 0A:9F28: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029F39 0A:9F29: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F3A 0A:9F2A: 00        .byte con_A644_00   ; 
; 0E 
- D 0 - I - 0x029F3B 0A:9F2B: 4E        .byte con_A03F_4E   ; 
- D 0 - I - 0x029F3C 0A:9F2C: 00        .byte con_A644_00   ; 
; 0F 
- D 0 - I - 0x029F3D 0A:9F2D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F3E 0A:9F2E: 00        .byte con_A644_00   ; 
; 10 
- D 0 - I - 0x029F3F 0A:9F2F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F40 0A:9F30: 00        .byte con_A644_00   ; 
; 11 
- D 0 - I - 0x029F41 0A:9F31: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F42 0A:9F32: 00        .byte con_A644_00   ; 
; 12 
- D 0 - I - 0x029F43 0A:9F33: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F44 0A:9F34: 68        .byte con_A644_68   ; 
; 13 
- D 0 - I - 0x029F45 0A:9F35: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F46 0A:9F36: 68        .byte con_A644_68   ; 
; 14 
- D 0 - I - 0x029F47 0A:9F37: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F48 0A:9F38: 90        .byte con_A644_90   ; 
; 15 
- D 0 - I - 0x029F49 0A:9F39: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F4A 0A:9F3A: 00        .byte con_A644_00   ; 



off_9F3B_0D_00_02:
; 00 
- D 0 - I - 0x029F4B 0A:9F3B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F4C 0A:9F3C: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029F4D 0A:9F3D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F4E 0A:9F3E: DA        .byte con_A644_DA   ; 
; 02 
- D 0 - I - 0x029F4F 0A:9F3F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F50 0A:9F40: D9        .byte con_A644_D9   ; 
; 03 
- D 0 - I - 0x029F51 0A:9F41: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F52 0A:9F42: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029F53 0A:9F43: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F54 0A:9F44: D2        .byte con_A644_D2   ; 
; 05 
- D 0 - I - 0x029F55 0A:9F45: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F56 0A:9F46: 00        .byte con_A644_00   ; 



off_9F47_0D_01_00:
; 00 
- D 0 - I - 0x029F57 0A:9F47: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F58 0A:9F48: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029F59 0A:9F49: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F5A 0A:9F4A: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029F5B 0A:9F4B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F5C 0A:9F4C: 90        .byte con_A644_90   ; 
; 03 
- D 0 - I - 0x029F5D 0A:9F4D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F5E 0A:9F4E: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029F5F 0A:9F4F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F60 0A:9F50: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029F61 0A:9F51: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F62 0A:9F52: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029F63 0A:9F53: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F64 0A:9F54: 99        .byte con_A644_99   ; 
; 07 
- D 0 - I - 0x029F65 0A:9F55: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F66 0A:9F56: DB        .byte con_A644_DB   ; 
; 08 
- D 0 - I - 0x029F67 0A:9F57: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F68 0A:9F58: 68        .byte con_A644_68   ; 
; 09 
- D 0 - I - 0x029F69 0A:9F59: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F6A 0A:9F5A: 00        .byte con_A644_00   ; 



off_9F5B_0D_01_02:
; 00 
- D 0 - I - 0x029F6B 0A:9F5B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F6C 0A:9F5C: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029F6D 0A:9F5D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F6E 0A:9F5E: 9D        .byte con_A644_9D   ; 
; 02 
- D 0 - I - 0x029F6F 0A:9F5F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F70 0A:9F60: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029F71 0A:9F61: AA        .byte con_A03F_AA   ; 
- D 0 - I - 0x029F72 0A:9F62: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029F73 0A:9F63: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F74 0A:9F64: DD        .byte con_A644_DD   ; 
; 05 
- D 0 - I - 0x029F75 0A:9F65: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F76 0A:9F66: 00        .byte con_A644_00   ; 



off_9F67_0D_02_00:
; 00 
- D 0 - I - 0x029F77 0A:9F67: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F78 0A:9F68: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029F79 0A:9F69: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F7A 0A:9F6A: DE        .byte con_A644_DE   ; 
; 02 
- D 0 - I - 0x029F7B 0A:9F6B: 5A        .byte con_A03F_5A   ; 
- D 0 - I - 0x029F7C 0A:9F6C: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029F7D 0A:9F6D: C6        .byte con_A03F_C6   ; 
- D 0 - I - 0x029F7E 0A:9F6E: C4        .byte con_A644_C4   ; 
; 04 
- D 0 - I - 0x029F7F 0A:9F6F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F80 0A:9F70: C3        .byte con_A644_C3   ; 
; 05 
- D 0 - I - 0x029F81 0A:9F71: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F82 0A:9F72: 00        .byte con_A644_00   ; 



off_9F73_0D_02_02:
; 00 
- D 0 - I - 0x029F83 0A:9F73: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F84 0A:9F74: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029F85 0A:9F75: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F86 0A:9F76: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029F87 0A:9F77: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029F88 0A:9F78: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029F89 0A:9F79: D3        .byte con_A03F_D3   ; 
- D 0 - I - 0x029F8A 0A:9F7A: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029F8B 0A:9F7B: 34        .byte con_A03F_34   ; 
- D 0 - I - 0x029F8C 0A:9F7C: 95        .byte con_A644_95   ; 
; 05 
- D 0 - I - 0x029F8D 0A:9F7D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F8E 0A:9F7E: 00        .byte con_A644_00   ; 



off_9F7F_0D_03_00:
; 00 
- D 0 - I - 0x029F8F 0A:9F7F: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F90 0A:9F80: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029F91 0A:9F81: 80        .byte con_A03F_80   ; 
- D 0 - I - 0x029F92 0A:9F82: DF        .byte con_A644_DF   ; 
; 02 
- D 0 - I - 0x029F93 0A:9F83: 80        .byte con_A03F_80   ; 
- D 0 - I - 0x029F94 0A:9F84: E0        .byte con_A644_E0   ; 
; 03 
- D 0 - I - 0x029F95 0A:9F85: AC        .byte con_A03F_AC   ; 
- D 0 - I - 0x029F96 0A:9F86: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029F97 0A:9F87: A8        .byte con_A03F_A8   ; 
- D 0 - I - 0x029F98 0A:9F88: 95        .byte con_A644_95   ; 
; 05 
- D 0 - I - 0x029F99 0A:9F89: A9        .byte con_A03F_A9   ; 
- D 0 - I - 0x029F9A 0A:9F8A: 50        .byte con_A644_50   ; 
; 06 
- D 0 - I - 0x029F9B 0A:9F8B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029F9C 0A:9F8C: 4B        .byte con_A644_4B   ; 
; 07 
- D 0 - I - 0x029F9D 0A:9F8D: AB        .byte con_A03F_AB   ; 
- D 0 - I - 0x029F9E 0A:9F8E: 6B        .byte con_A644_6B   ; 
; 08 
- D 0 - I - 0x029F9F 0A:9F8F: 3E        .byte con_A03F_3E   ; 
- D 0 - I - 0x029FA0 0A:9F90: 4C        .byte con_A644_4C   ; 
; 09 
- D 0 - I - 0x029FA1 0A:9F91: AC        .byte con_A03F_AC   ; 
- D 0 - I - 0x029FA2 0A:9F92: 00        .byte con_A644_00   ; 
; 0A 
- D 0 - I - 0x029FA3 0A:9F93: 9B        .byte con_A03F_9B   ; 
- D 0 - I - 0x029FA4 0A:9F94: D5        .byte con_A644_D5   ; 
; 0B 
- D 0 - I - 0x029FA5 0A:9F95: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FA6 0A:9F96: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029FA7 0A:9F97: A8        .byte con_A03F_A8   ; 
- D 0 - I - 0x029FA8 0A:9F98: 3F        .byte con_A644_3F   ; 
; 0D 
- D 0 - I - 0x029FA9 0A:9F99: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FAA 0A:9F9A: 00        .byte con_A644_00   ; 



off_9F9B_0D_03_01:
; 00 
- D 0 - I - 0x029FAB 0A:9F9B: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FAC 0A:9F9C: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029FAD 0A:9F9D: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FAE 0A:9F9E: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x029FAF 0A:9F9F: 2C        .byte con_A03F_2C   ; 
- D 0 - I - 0x029FB0 0A:9FA0: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029FB1 0A:9FA1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FB2 0A:9FA2: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x029FB3 0A:9FA3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FB4 0A:9FA4: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x029FB5 0A:9FA5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FB6 0A:9FA6: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029FB7 0A:9FA7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FB8 0A:9FA8: 92        .byte con_A644_92   ; 
; 07 
- D 0 - I - 0x029FB9 0A:9FA9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FBA 0A:9FAA: 94        .byte con_A644_94   ; 
; 08 
- D 0 - I - 0x029FBB 0A:9FAB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FBC 0A:9FAC: 00        .byte con_A644_00   ; 
; 09 
- D 0 - I - 0x029FBD 0A:9FAD: 9D        .byte con_A03F_9D   ; 
- D 0 - I - 0x029FBE 0A:9FAE: E1        .byte con_A644_E1   ; 
; 0A 
- D 0 - I - 0x029FBF 0A:9FAF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FC0 0A:9FB0: 94        .byte con_A644_94   ; 
; 0B 
- D 0 - I - 0x029FC1 0A:9FB1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FC2 0A:9FB2: 00        .byte con_A644_00   ; 
; 0C 
- D 0 - I - 0x029FC3 0A:9FB3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FC4 0A:9FB4: 00        .byte con_A644_00   ; 
; 0D 
- D 0 - I - 0x029FC5 0A:9FB5: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FC6 0A:9FB6: 00        .byte con_A644_00   ; 



off_9FB7_0E_00_00:
; 00 
- D 0 - I - 0x029FC7 0A:9FB7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FC8 0A:9FB8: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029FC9 0A:9FB9: B3        .byte con_A03F_B3   ; 
- D 0 - I - 0x029FCA 0A:9FBA: C3        .byte con_A644_C3   ; 
; 02 
- D 0 - I - 0x029FCB 0A:9FBB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FCC 0A:9FBC: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x029FCD 0A:9FBD: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029FCE 0A:9FBE: 42        .byte con_A644_42   ; 
; 04 
- D 0 - I - 0x029FCF 0A:9FBF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FD0 0A:9FC0: F8        .byte con_A644_F8   ; 
; 05 
- D 0 - I - 0x029FD1 0A:9FC1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FD2 0A:9FC2: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x029FD3 0A:9FC3: B2        .byte con_A03F_B2   ; 
- D 0 - I - 0x029FD4 0A:9FC4: 3A        .byte con_A644_3A   ; 
; 07 
- D 0 - I - 0x029FD5 0A:9FC5: 0B        .byte con_A03F_0B   ; 
- D 0 - I - 0x029FD6 0A:9FC6: C3        .byte con_A644_C3   ; 
; 08 
- D 0 - I - 0x029FD7 0A:9FC7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FD8 0A:9FC8: 9B        .byte con_A644_9B   ; 
; 09 
- D 0 - I - 0x029FD9 0A:9FC9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FDA 0A:9FCA: 00        .byte con_A644_00   ; 



off_9FCB_0E_00_02:
; 00 
- D 0 - I - 0x029FDB 0A:9FCB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FDC 0A:9FCC: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029FDD 0A:9FCD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FDE 0A:9FCE: 3E        .byte con_A644_3E   ; 
; 02 
- D 0 - I - 0x029FDF 0A:9FCF: AD        .byte con_A03F_AD   ; 
- D 0 - I - 0x029FE0 0A:9FD0: BC        .byte con_A644_BC   ; 
; 03 
- D 0 - I - 0x029FE1 0A:9FD1: 80        .byte con_A03F_80   ; 
- D 0 - I - 0x029FE2 0A:9FD2: 42        .byte con_A644_42   ; 
; 04 
- D 0 - I - 0x029FE3 0A:9FD3: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FE4 0A:9FD4: AE        .byte con_A644_AE   ; 
; 05 
- D 0 - I - 0x029FE5 0A:9FD5: 80        .byte con_A03F_80   ; 
- D 0 - I - 0x029FE6 0A:9FD6: 96        .byte con_A644_96   ; 
; 06 
- D 0 - I - 0x029FE7 0A:9FD7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FE8 0A:9FD8: 00        .byte con_A644_00   ; 
; 07 
- D 0 - I - 0x029FE9 0A:9FD9: 22        .byte con_A03F_22   ; 
- D 0 - I - 0x029FEA 0A:9FDA: E2        .byte con_A644_E2   ; 
; 08 
- D 0 - I - 0x029FEB 0A:9FDB: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FEC 0A:9FDC: 96        .byte con_A644_96   ; 
; 09 
- D 0 - I - 0x029FED 0A:9FDD: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FEE 0A:9FDE: 00        .byte con_A644_00   ; 



off_9FDF_0E_01_00:
; 00 
- D 0 - I - 0x029FEF 0A:9FDF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FF0 0A:9FE0: 00        .byte con_A644_00   ; 
; 01 
- D 0 - I - 0x029FF1 0A:9FE1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FF2 0A:9FE2: 9D        .byte con_A644_9D   ; 
; 02 
- D 0 - I - 0x029FF3 0A:9FE3: 15        .byte con_A03F_15   ; 
- D 0 - I - 0x029FF4 0A:9FE4: 50        .byte con_A644_50   ; 
; 03 
- D 0 - I - 0x029FF5 0A:9FE5: 64        .byte con_A03F_64   ; 
- D 0 - I - 0x029FF6 0A:9FE6: 9D        .byte con_A644_9D   ; 
; 04 
- D 0 - I - 0x029FF7 0A:9FE7: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FF8 0A:9FE8: 25        .byte con_A644_25   ; 
; 05 
- D 0 - I - 0x029FF9 0A:9FE9: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x029FFA 0A:9FEA: 68        .byte con_A644_68   ; 
; 06 
- D 0 - I - 0x029FFB 0A:9FEB: 67        .byte con_A03F_67   ; 
- D 0 - I - 0x029FFC 0A:9FEC: 6D        .byte con_A644_6D   ; 
; 07 
- D 0 - I - 0x029FFD 0A:9FED: 30        .byte con_A03F_30   ; 
- D 0 - I - 0x029FFE 0A:9FEE: C3        .byte con_A644_C3   ; 
; 08 
- D 0 - I - 0x029FFF 0A:9FEF: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02A000 0A:9FF0: D0        .byte con_A644_D0   ; 
; 09 
- D 0 - I - 0x02A001 0A:9FF1: 00        .byte con_A03F_00   ; 
- D 0 - I - 0x02A002 0A:9FF2: 00        .byte con_A644_00   ; 



off_9FF3_0E_01_01:
; 00 
- D 0 - I - 0x02A003 0A:9FF3: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A004 0A:9FF4: 00        .byte con_A644_00   ; 
; 01 
- - - - - - 0x02A005 0A:9FF5: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A006 0A:9FF6: 00        .byte con_A644_00   ; 
; 02 
- D 0 - I - 0x02A007 0A:9FF7: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A008 0A:9FF8: 00        .byte con_A644_00   ; 
; 03 
- D 0 - I - 0x02A009 0A:9FF9: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A00A 0A:9FFA: 00        .byte con_A644_00   ; 
; 04 
- D 0 - I - 0x02A00B 0A:9FFB: 0B        .byte con_A03F_0B   ; 
- - - - - - 0x02A00C 0A:9FFC: 00        .byte con_A644_00   ; 
; 05 
- D 0 - I - 0x02A00D 0A:9FFD: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A00E 0A:9FFE: 00        .byte con_A644_00   ; 
; 06 
- D 0 - I - 0x02A00F 0A:9FFF: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A010 0A:A000: 00        .byte con_A644_00   ; 
; 07 
- D 1 - I - 0x02A011 0A:A001: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A012 0A:A002: 00        .byte con_A644_00   ; 
; 08 
- D 1 - I - 0x02A013 0A:A003: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A014 0A:A004: 00        .byte con_A644_00   ; 
; 09 
- D 1 - I - 0x02A015 0A:A005: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A016 0A:A006: 00        .byte con_A644_00   ; 
; 0A 
- D 1 - I - 0x02A017 0A:A007: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A018 0A:A008: 00        .byte con_A644_00   ; 
; 0B 
- D 1 - I - 0x02A019 0A:A009: 0B        .byte con_A03F_0B   ; 
- - - - - - 0x02A01A 0A:A00A: 00        .byte con_A644_00   ; 
; 0C 
- D 1 - I - 0x02A01B 0A:A00B: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A01C 0A:A00C: 00        .byte con_A644_00   ; 
; 0D 
- D 1 - I - 0x02A01D 0A:A00D: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A01E 0A:A00E: 00        .byte con_A644_00   ; 



off_A00F_0E_02_00:
; 00 
- - - - - - 0x02A01F 0A:A00F: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A020 0A:A010: 00        .byte con_A644_00   ; 
; 01 
- - - - - - 0x02A021 0A:A011: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A022 0A:A012: 00        .byte con_A644_00   ; 
; 02 
- - - - - - 0x02A023 0A:A013: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A024 0A:A014: 00        .byte con_A644_00   ; 
; 03 
- - - - - - 0x02A025 0A:A015: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A026 0A:A016: 00        .byte con_A644_00   ; 
; 04 
- D 1 - I - 0x02A027 0A:A017: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A028 0A:A018: 00        .byte con_A644_00   ; 
; 05 
- D 1 - I - 0x02A029 0A:A019: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A02A 0A:A01A: 00        .byte con_A644_00   ; 
; 06 
- D 1 - I - 0x02A02B 0A:A01B: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A02C 0A:A01C: 00        .byte con_A644_00   ; 
; 07 
- D 1 - I - 0x02A02D 0A:A01D: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A02E 0A:A01E: 3B        .byte con_A644_3B   ; 
; 08 
- D 1 - I - 0x02A02F 0A:A01F: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A030 0A:A020: 96        .byte con_A644_96   ; 
; 09 
- D 1 - I - 0x02A031 0A:A021: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A032 0A:A022: 00        .byte con_A644_00   ; 



off_A023_0E_02_01:
; 00 
- D 1 - I - 0x02A033 0A:A023: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A034 0A:A024: 00        .byte con_A644_00   ; 
; 01 
- D 1 - I - 0x02A035 0A:A025: 2E        .byte con_A03F_2E   ; 
- D 1 - I - 0x02A036 0A:A026: 00        .byte con_A644_00   ; 
; 02 
- D 1 - I - 0x02A037 0A:A027: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A038 0A:A028: 00        .byte con_A644_00   ; 
; 03 
- D 1 - I - 0x02A039 0A:A029: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A03A 0A:A02A: 00        .byte con_A644_00   ; 
; 04 
- D 1 - I - 0x02A03B 0A:A02B: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A03C 0A:A02C: 4B        .byte con_A644_4B   ; 
; 05 
- D 1 - I - 0x02A03D 0A:A02D: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A03E 0A:A02E: 69        .byte con_A644_69   ; 
; 06 
- D 1 - I - 0x02A03F 0A:A02F: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A040 0A:A030: 6D        .byte con_A644_6D   ; 
; 07 
- D 1 - I - 0x02A041 0A:A031: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A042 0A:A032: 96        .byte con_A644_96   ; 
; 08 
- D 1 - I - 0x02A043 0A:A033: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A044 0A:A034: 96        .byte con_A644_96   ; 
; 09 
- D 1 - I - 0x02A045 0A:A035: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A046 0A:A036: 00        .byte con_A644_00   ; 
; 0A 
- D 1 - I - 0x02A047 0A:A037: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A048 0A:A038: 00        .byte con_A644_00   ; 
; 0B 
- D 1 - I - 0x02A049 0A:A039: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A04A 0A:A03A: 00        .byte con_A644_00   ; 
; 0C 
- D 1 - I - 0x02A04B 0A:A03B: 00        .byte con_A03F_00   ; 
- D 1 - I - 0x02A04C 0A:A03C: 00        .byte con_A644_00   ; 
; 0D 
- - - - - - 0x02A04D 0A:A03D: 00        .byte con_A03F_00   ; 
- - - - - - 0x02A04E 0A:A03E: 00        .byte con_A644_00   ; 



tbl_A03F:
; see con_A03F
- D 1 - - - 0x02A04F 0A:A03F: 07 A2     .word _off028_A207_00
- D 1 - - - 0x02A051 0A:A041: 0C A2     .word _off028_A20C_01
- D 1 - - - 0x02A053 0A:A043: 11 A2     .word _off028_A211_02
- D 1 - - - 0x02A055 0A:A045: 16 A2     .word _off028_A216_03
- D 1 - - - 0x02A057 0A:A047: 1B A2     .word _off028_A21B_04
- D 1 - - - 0x02A059 0A:A049: 20 A2     .word _off028_A220_05
- D 1 - - - 0x02A05B 0A:A04B: 25 A2     .word _off028_A225_06
- D 1 - - - 0x02A05D 0A:A04D: 2A A2     .word _off028_A22A_07
- D 1 - - - 0x02A05F 0A:A04F: 2F A2     .word _off028_A22F_08
- D 1 - - - 0x02A061 0A:A051: 34 A2     .word _off028_A234_09
- D 1 - - - 0x02A063 0A:A053: 39 A2     .word _off028_A239_0A
- D 1 - - - 0x02A065 0A:A055: 3E A2     .word _off028_A23E_0B
- - - - - - 0x02A067 0A:A057: 43 A2     .word _off028_A243_0C   ; unused, index doesn't exist
- - - - - - 0x02A069 0A:A059: 48 A2     .word _off028_A248_0D   ; unused, index doesn't exist
- D 1 - - - 0x02A06B 0A:A05B: 4D A2     .word _off028_A24D_0E
- D 1 - - - 0x02A06D 0A:A05D: 52 A2     .word _off028_A252_0F
- D 1 - - - 0x02A06F 0A:A05F: 57 A2     .word _off028_A257_10
- D 1 - - - 0x02A071 0A:A061: 5C A2     .word _off028_A25C_11
- - - - - - 0x02A073 0A:A063: 61 A2     .word _off028_A261_12   ; unused, index doesn't exist
- D 1 - - - 0x02A075 0A:A065: 66 A2     .word _off028_A266_13
- D 1 - - - 0x02A077 0A:A067: 6B A2     .word _off028_A26B_14
- D 1 - - - 0x02A079 0A:A069: 70 A2     .word _off028_A270_15
- D 1 - - - 0x02A07B 0A:A06B: 75 A2     .word _off028_A275_16
- D 1 - - - 0x02A07D 0A:A06D: 7A A2     .word _off028_A27A_17
- - - - - - 0x02A07F 0A:A06F: 7F A2     .word _off028_A27F_18   ; unused, index doesn't exist
- - - - - - 0x02A081 0A:A071: 84 A2     .word _off028_A284_19   ; unused, index doesn't exist
- - - - - - 0x02A083 0A:A073: 89 A2     .word _off028_A289_1A   ; unused, index doesn't exist
- D 1 - - - 0x02A085 0A:A075: 8E A2     .word _off028_A28E_1B
- D 1 - - - 0x02A087 0A:A077: 93 A2     .word _off028_A293_1C
- D 1 - - - 0x02A089 0A:A079: 98 A2     .word _off028_A298_1D
- D 1 - - - 0x02A08B 0A:A07B: 9D A2     .word _off028_A29D_1E
- D 1 - - - 0x02A08D 0A:A07D: A2 A2     .word _off028_A2A2_1F
- D 1 - - - 0x02A08F 0A:A07F: A7 A2     .word _off028_A2A7_20
- D 1 - - - 0x02A091 0A:A081: AC A2     .word _off028_A2AC_21
- D 1 - - - 0x02A093 0A:A083: B1 A2     .word _off028_A2B1_22
- D 1 - - - 0x02A095 0A:A085: B6 A2     .word _off028_A2B6_23
- D 1 - - - 0x02A097 0A:A087: BB A2     .word _off028_A2BB_24
- - - - - - 0x02A099 0A:A089: C0 A2     .word _off028_A2C0_25   ; unused, index doesn't exist
- D 1 - - - 0x02A09B 0A:A08B: C5 A2     .word _off028_A2C5_26
- D 1 - - - 0x02A09D 0A:A08D: CA A2     .word _off028_A2CA_27
- - - - - - 0x02A09F 0A:A08F: CF A2     .word _off028_A2CF_28   ; unused, index doesn't exist
- D 1 - - - 0x02A0A1 0A:A091: D4 A2     .word _off028_A2D4_29
- - - - - - 0x02A0A3 0A:A093: D9 A2     .word _off028_A2D9_2A   ; unused, index doesn't exist
- D 1 - - - 0x02A0A5 0A:A095: DE A2     .word _off028_A2DE_2B
- D 1 - - - 0x02A0A7 0A:A097: E3 A2     .word _off028_A2E3_2C
- D 1 - - - 0x02A0A9 0A:A099: E8 A2     .word _off028_A2E8_2D
- D 1 - - - 0x02A0AB 0A:A09B: ED A2     .word _off028_A2ED_2E
- D 1 - - - 0x02A0AD 0A:A09D: F2 A2     .word _off028_A2F2_2F
- D 1 - - - 0x02A0AF 0A:A09F: F7 A2     .word _off028_A2F7_30
- D 1 - - - 0x02A0B1 0A:A0A1: FC A2     .word _off028_A2FC_31
- D 1 - - - 0x02A0B3 0A:A0A3: 01 A3     .word _off028_A301_32
- D 1 - - - 0x02A0B5 0A:A0A5: 06 A3     .word _off028_A306_33
- D 1 - - - 0x02A0B7 0A:A0A7: 0B A3     .word _off028_A30B_34
- D 1 - - - 0x02A0B9 0A:A0A9: 10 A3     .word _off028_A310_35
- D 1 - - - 0x02A0BB 0A:A0AB: 15 A3     .word _off028_A315_36
- D 1 - - - 0x02A0BD 0A:A0AD: 1A A3     .word _off028_A31A_37
- D 1 - - - 0x02A0BF 0A:A0AF: 1F A3     .word _off028_A31F_38
- D 1 - - - 0x02A0C1 0A:A0B1: 24 A3     .word _off028_A324_39
- D 1 - - - 0x02A0C3 0A:A0B3: 29 A3     .word _off028_A329_3A
- D 1 - - - 0x02A0C5 0A:A0B5: 2E A3     .word _off028_A32E_3B
- D 1 - - - 0x02A0C7 0A:A0B7: 33 A3     .word _off028_A333_3C
- D 1 - - - 0x02A0C9 0A:A0B9: 38 A3     .word _off028_A338_3D
- D 1 - - - 0x02A0CB 0A:A0BB: 3D A3     .word _off028_A33D_3E
- D 1 - - - 0x02A0CD 0A:A0BD: 42 A3     .word _off028_A342_3F
- D 1 - - - 0x02A0CF 0A:A0BF: 47 A3     .word _off028_A347_40
- D 1 - - - 0x02A0D1 0A:A0C1: 4C A3     .word _off028_A34C_41
- - - - - - 0x02A0D3 0A:A0C3: 51 A3     .word _off028_A351_42   ; unused, index doesn't exist
- - - - - - 0x02A0D5 0A:A0C5: 56 A3     .word _off028_A356_43   ; unused, index doesn't exist
- D 1 - - - 0x02A0D7 0A:A0C7: 5B A3     .word _off028_A35B_44
- D 1 - - - 0x02A0D9 0A:A0C9: 60 A3     .word _off028_A360_45
- D 1 - - - 0x02A0DB 0A:A0CB: 65 A3     .word _off028_A365_46
- D 1 - - - 0x02A0DD 0A:A0CD: 6A A3     .word _off028_A36A_47
- D 1 - - - 0x02A0DF 0A:A0CF: 6F A3     .word _off028_A36F_48
- - - - - - 0x02A0E1 0A:A0D1: 74 A3     .word _off028_A374_49   ; unused, index doesn't exist
- D 1 - - - 0x02A0E3 0A:A0D3: 79 A3     .word _off028_A379_4A
- D 1 - - - 0x02A0E5 0A:A0D5: 7E A3     .word _off028_A37E_4B
- - - - - - 0x02A0E7 0A:A0D7: 83 A3     .word _off028_A383_4C   ; unused, index doesn't exist
- - - - - - 0x02A0E9 0A:A0D9: 88 A3     .word _off028_A388_4D   ; unused, index doesn't exist
- D 1 - - - 0x02A0EB 0A:A0DB: 8D A3     .word _off028_A38D_4E
- D 1 - - - 0x02A0ED 0A:A0DD: 92 A3     .word _off028_A392_4F
- D 1 - - - 0x02A0EF 0A:A0DF: 97 A3     .word _off028_A397_50
- D 1 - - - 0x02A0F1 0A:A0E1: 9C A3     .word _off028_A39C_51
- - - - - - 0x02A0F3 0A:A0E3: A1 A3     .word _off028_A3A1_52   ; unused, index doesn't exist
- D 1 - - - 0x02A0F5 0A:A0E5: A6 A3     .word _off028_A3A6_53
- D 1 - - - 0x02A0F7 0A:A0E7: AB A3     .word _off028_A3AB_54
- D 1 - - - 0x02A0F9 0A:A0E9: B0 A3     .word _off028_A3B0_55
- D 1 - - - 0x02A0FB 0A:A0EB: B5 A3     .word _off028_A3B5_56
- D 1 - - - 0x02A0FD 0A:A0ED: BA A3     .word _off028_A3BA_57
- D 1 - - - 0x02A0FF 0A:A0EF: BF A3     .word _off028_A3BF_58
- D 1 - - - 0x02A101 0A:A0F1: C4 A3     .word _off028_A3C4_59
- D 1 - - - 0x02A103 0A:A0F3: C9 A3     .word _off028_A3C9_5A
- - - - - - 0x02A105 0A:A0F5: CE A3     .word _off028_A3CE_5B   ; unused, index doesn't exist
- D 1 - - - 0x02A107 0A:A0F7: CE A3     .word _off028_A3CE_5C
- D 1 - - - 0x02A109 0A:A0F9: D3 A3     .word _off028_A3D3_5D
- D 1 - - - 0x02A10B 0A:A0FB: D8 A3     .word _off028_A3D8_5E
- D 1 - - - 0x02A10D 0A:A0FD: DD A3     .word _off028_A3DD_5F
- D 1 - - - 0x02A10F 0A:A0FF: E2 A3     .word _off028_A3E2_60
- D 1 - - - 0x02A111 0A:A101: E7 A3     .word _off028_A3E7_61
- D 1 - - - 0x02A113 0A:A103: EC A3     .word _off028_A3EC_62
- D 1 - - - 0x02A115 0A:A105: F1 A3     .word _off028_A3F1_63
- D 1 - - - 0x02A117 0A:A107: F6 A3     .word _off028_A3F6_64
- D 1 - - - 0x02A119 0A:A109: FB A3     .word _off028_A3FB_65
- D 1 - - - 0x02A11B 0A:A10B: 00 A4     .word _off028_A400_66
- D 1 - - - 0x02A11D 0A:A10D: 05 A4     .word _off028_A405_67
- D 1 - - - 0x02A11F 0A:A10F: 0A A4     .word _off028_A40A_68
- D 1 - - - 0x02A121 0A:A111: 0F A4     .word _off028_A40F_69
- D 1 - - - 0x02A123 0A:A113: 14 A4     .word _off028_A414_6A
- D 1 - - - 0x02A125 0A:A115: 19 A4     .word _off028_A419_6B
- D 1 - - - 0x02A127 0A:A117: 1E A4     .word _off028_A41E_6C
- - - - - - 0x02A129 0A:A119: 23 A4     .word _off028_A423_6D   ; unused, index doesn't exist
- D 1 - - - 0x02A12B 0A:A11B: 28 A4     .word _off028_A428_6E
- D 1 - - - 0x02A12D 0A:A11D: 2D A4     .word _off028_A42D_6F
- D 1 - - - 0x02A12F 0A:A11F: 32 A4     .word _off028_A432_70
- D 1 - - - 0x02A131 0A:A121: 37 A4     .word _off028_A437_71
- D 1 - - - 0x02A133 0A:A123: 3C A4     .word _off028_A43C_72
- - - - - - 0x02A135 0A:A125: 41 A4     .word _off028_A441_73   ; unused, index doesn't exist
- D 1 - - - 0x02A137 0A:A127: 46 A4     .word _off028_A446_74
- D 1 - - - 0x02A139 0A:A129: 4B A4     .word _off028_A44B_75
- - - - - - 0x02A13B 0A:A12B: 50 A4     .word _off028_A450_76   ; unused, index doesn't exist
- D 1 - - - 0x02A13D 0A:A12D: 55 A4     .word _off028_A455_77
- D 1 - - - 0x02A13F 0A:A12F: 5A A4     .word _off028_A45A_78
- D 1 - - - 0x02A141 0A:A131: 5F A4     .word _off028_A45F_79
- D 1 - - - 0x02A143 0A:A133: 64 A4     .word _off028_A464_7A
- - - - - - 0x02A145 0A:A135: 69 A4     .word _off028_A469_7B   ; unused, index doesn't exist
- D 1 - - - 0x02A147 0A:A137: 6E A4     .word _off028_A46E_7C
- D 1 - - - 0x02A149 0A:A139: 73 A4     .word _off028_A473_7D
- D 1 - - - 0x02A14B 0A:A13B: 78 A4     .word _off028_A478_7E
- D 1 - - - 0x02A14D 0A:A13D: 7D A4     .word _off028_A47D_7F
- D 1 - - - 0x02A14F 0A:A13F: 82 A4     .word _off028_A482_80
- - - - - - 0x02A151 0A:A141: 87 A4     .word _off028_A487_81   ; unused, index doesn't exist
- D 1 - - - 0x02A153 0A:A143: 8C A4     .word _off028_A48C_82
- D 1 - - - 0x02A155 0A:A145: 91 A4     .word _off028_A491_83
- - - - - - 0x02A157 0A:A147: 96 A4     .word _off028_A496_84   ; unused, index doesn't exist
- D 1 - - - 0x02A159 0A:A149: 9B A4     .word _off028_A49B_85
- D 1 - - - 0x02A15B 0A:A14B: A0 A4     .word _off028_A4A0_86
- D 1 - - - 0x02A15D 0A:A14D: A5 A4     .word _off028_A4A5_87
- D 1 - - - 0x02A15F 0A:A14F: AA A4     .word _off028_A4AA_88
- D 1 - - - 0x02A161 0A:A151: AF A4     .word _off028_A4AF_89
- D 1 - - - 0x02A163 0A:A153: B4 A4     .word _off028_A4B4_8A
- D 1 - - - 0x02A165 0A:A155: B9 A4     .word _off028_A4B9_8B
- D 1 - - - 0x02A167 0A:A157: BE A4     .word _off028_A4BE_8C
- D 1 - - - 0x02A169 0A:A159: C3 A4     .word _off028_A4C3_8D
- D 1 - - - 0x02A16B 0A:A15B: C8 A4     .word _off028_A4C8_8E
- D 1 - - - 0x02A16D 0A:A15D: CD A4     .word _off028_A4CD_8F
- D 1 - - - 0x02A16F 0A:A15F: D2 A4     .word _off028_A4D2_90
- - - - - - 0x02A171 0A:A161: D7 A4     .word _off028_A4D7_91   ; unused, index doesn't exist
- D 1 - - - 0x02A173 0A:A163: DC A4     .word _off028_A4DC_92
- D 1 - - - 0x02A175 0A:A165: E1 A4     .word _off028_A4E1_93
- D 1 - - - 0x02A177 0A:A167: E6 A4     .word _off028_A4E6_94
- D 1 - - - 0x02A179 0A:A169: EB A4     .word _off028_A4EB_95
- D 1 - - - 0x02A17B 0A:A16B: F0 A4     .word _off028_A4F0_96
- - - - - - 0x02A17D 0A:A16D: F5 A4     .word _off028_A4F5_97   ; unused, index doesn't exist
- D 1 - - - 0x02A17F 0A:A16F: FA A4     .word _off028_A4FA_98
- D 1 - - - 0x02A181 0A:A171: FF A4     .word _off028_A4FF_99
- D 1 - - - 0x02A183 0A:A173: 04 A5     .word _off028_A504_9A
- D 1 - - - 0x02A185 0A:A175: 09 A5     .word _off028_A509_9B
- D 1 - - - 0x02A187 0A:A177: 0E A5     .word _off028_A50E_9C
- D 1 - - - 0x02A189 0A:A179: 13 A5     .word _off028_A513_9D
- - - - - - 0x02A18B 0A:A17B: 18 A5     .word _off028_A518_9E   ; unused, index doesn't exist
- D 1 - - - 0x02A18D 0A:A17D: 1D A5     .word _off028_A51D_9F
- D 1 - - - 0x02A18F 0A:A17F: 22 A5     .word _off028_A522_A0
- - - - - - 0x02A191 0A:A181: 27 A5     .word _off028_A527_A1   ; unused, index doesn't exist
- D 1 - - - 0x02A193 0A:A183: 2C A5     .word _off028_A52C_A2
- D 1 - - - 0x02A195 0A:A185: 31 A5     .word _off028_A531_A3
- D 1 - - - 0x02A197 0A:A187: 36 A5     .word _off028_A536_A4
- D 1 - - - 0x02A199 0A:A189: 3B A5     .word _off028_A53B_A5
- D 1 - - - 0x02A19B 0A:A18B: 40 A5     .word _off028_A540_A6
- D 1 - - - 0x02A19D 0A:A18D: 45 A5     .word _off028_A545_A7
- D 1 - - - 0x02A19F 0A:A18F: 4A A5     .word _off028_A54A_A8
- D 1 - - - 0x02A1A1 0A:A191: 4F A5     .word _off028_A54F_A9
- D 1 - - - 0x02A1A3 0A:A193: 54 A5     .word _off028_A554_AA
- D 1 - - - 0x02A1A5 0A:A195: 59 A5     .word _off028_A559_AB
- D 1 - - - 0x02A1A7 0A:A197: 5E A5     .word _off028_A55E_AC
- D 1 - - - 0x02A1A9 0A:A199: 63 A5     .word _off028_A563_AD
- D 1 - - - 0x02A1AB 0A:A19B: 68 A5     .word _off028_A568_AE
- D 1 - - - 0x02A1AD 0A:A19D: 6D A5     .word _off028_A56D_AF
- D 1 - - - 0x02A1AF 0A:A19F: 72 A5     .word _off028_A572_B0
- D 1 - - - 0x02A1B1 0A:A1A1: 77 A5     .word _off028_A577_B1
- D 1 - - - 0x02A1B3 0A:A1A3: 7C A5     .word _off028_A57C_B2
- D 1 - - - 0x02A1B5 0A:A1A5: 81 A5     .word _off028_A581_B3
- - - - - - 0x02A1B7 0A:A1A7: 86 A5     .word _off028_A586_B4   ; unused, index doesn't exist
- D 1 - - - 0x02A1B9 0A:A1A9: 8B A5     .word _off028_A58B_B5
- D 1 - - - 0x02A1BB 0A:A1AB: 90 A5     .word _off028_A590_B6
- - - - - - 0x02A1BD 0A:A1AD: 95 A5     .word _off028_A595_B7   ; unused, index doesn't exist
- - - - - - 0x02A1BF 0A:A1AF: 9A A5     .word _off028_A59A_B8   ; unused, index doesn't exist
- D 1 - - - 0x02A1C1 0A:A1B1: 9F A5     .word _off028_A59F_B9
- D 1 - - - 0x02A1C3 0A:A1B3: A4 A5     .word _off028_A5A4_BA
- D 1 - - - 0x02A1C5 0A:A1B5: A9 A5     .word _off028_A5A9_BB
- D 1 - - - 0x02A1C7 0A:A1B7: AE A5     .word _off028_A5AE_BC
- D 1 - - - 0x02A1C9 0A:A1B9: B3 A5     .word _off028_A5B3_BD
- D 1 - - - 0x02A1CB 0A:A1BB: B8 A5     .word _off028_A5B8_BE
- D 1 - - - 0x02A1CD 0A:A1BD: BD A5     .word _off028_A5BD_BF
- D 1 - - - 0x02A1CF 0A:A1BF: C2 A5     .word _off028_A5C2_C0
- D 1 - - - 0x02A1D1 0A:A1C1: C7 A5     .word _off028_A5C7_C1
- D 1 - - - 0x02A1D3 0A:A1C3: CC A5     .word _off028_A5CC_C2
- D 1 - - - 0x02A1D5 0A:A1C5: D1 A5     .word _off028_A5D1_C3
- D 1 - - - 0x02A1D7 0A:A1C7: D6 A5     .word _off028_A5D6_C4
- D 1 - - - 0x02A1D9 0A:A1C9: DB A5     .word _off028_A5DB_C5
- D 1 - - - 0x02A1DB 0A:A1CB: E0 A5     .word _off028_A5E0_C6
- - - - - - 0x02A1DD 0A:A1CD: E0 A5     .word _off028_A5E0_C7   ; unused, index doesn't exist
- - - - - - 0x02A1DF 0A:A1CF: E0 A5     .word _off028_A5E0_C8   ; unused, index doesn't exist
- - - - - - 0x02A1E1 0A:A1D1: E0 A5     .word _off028_A5E0_C9   ; unused, index doesn't exist
- - - - - - 0x02A1E3 0A:A1D3: E0 A5     .word _off028_A5E0_CA   ; unused, index doesn't exist
- - - - - - 0x02A1E5 0A:A1D5: E0 A5     .word _off028_A5E0_CB   ; unused, index doesn't exist
- - - - - - 0x02A1E7 0A:A1D7: E0 A5     .word _off028_A5E0_CC   ; unused, index doesn't exist
- - - - - - 0x02A1E9 0A:A1D9: E0 A5     .word _off028_A5E0_CD   ; unused, index doesn't exist
- - - - - - 0x02A1EB 0A:A1DB: E0 A5     .word _off028_A5E0_CE   ; unused, index doesn't exist
- - - - - - 0x02A1ED 0A:A1DD: E0 A5     .word _off028_A5E0_CF   ; unused, index doesn't exist
- D 1 - - - 0x02A1EF 0A:A1DF: E5 A5     .word _off028_A5E5_D0
- D 1 - - - 0x02A1F1 0A:A1E1: EA A5     .word _off028_A5EA_D1
- D 1 - - - 0x02A1F3 0A:A1E3: EF A5     .word _off028_A5EF_D2
- D 1 - - - 0x02A1F5 0A:A1E5: F4 A5     .word _off028_A5F4_D3
- D 1 - - - 0x02A1F7 0A:A1E7: F9 A5     .word _off028_A5F9_D4
- - - - - - 0x02A1F9 0A:A1E9: FE A5     .word _off028_A5FE_D5
- - - - - - 0x02A1FB 0A:A1EB: 03 A6     .word _off028_A603_D6
- - - - - - 0x02A1FD 0A:A1ED: 08 A6     .word _off028_A608_D7
- - - - - - 0x02A1FF 0A:A1EF: 0D A6     .word _off028_A60D_D8
- - - - - - 0x02A201 0A:A1F1: 12 A6     .word _off028_A612_D9
- - - - - - 0x02A203 0A:A1F3: 17 A6     .word _off028_A617_DA
- - - - - - 0x02A205 0A:A1F5: 1C A6     .word _off028_A61C_DB
- - - - - - 0x02A207 0A:A1F7: 21 A6     .word _off028_A621_DC
- - - - - - 0x02A209 0A:A1F9: 26 A6     .word _off028_A626_DD   ; unused, index doesn't exist
- D 1 - - - 0x02A20B 0A:A1FB: 2B A6     .word _off028_A62B_DE
- - - - - - 0x02A20D 0A:A1FD: 26 A6     .word _off028_A626_DF   ; unused, index doesn't exist
- - - - - - 0x02A20F 0A:A1FF: 30 A6     .word _off028_A630_E0
- - - - - - 0x02A211 0A:A201: 35 A6     .word _off028_A635_E1
- - - - - - 0x02A213 0A:A203: 3A A6     .word _off028_A63A_E2
- - - - - - 0x02A215 0A:A205: 3F A6     .word _off028_A63F_E3



_off028_A207_00:
- D 1 - I - 0x02A217 0A:A207: 00        .byte $00   ; 
- - - - - - 0x02A218 0A:A208: 00        .byte $00   ; 
- - - - - - 0x02A219 0A:A209: 00        .byte $00   ; 
- - - - - - 0x02A21A 0A:A20A: 00        .byte $00   ; 
- - - - - - 0x02A21B 0A:A20B: 00        .byte $00   ; 



_off028_A20C_01:
- D 1 - I - 0x02A21C 0A:A20C: 01        .byte $01   ; 
- D 1 - I - 0x02A21D 0A:A20D: 20        .byte $20   ; 
- D 1 - I - 0x02A21E 0A:A20E: C0        .byte $C0   ; 
- D 1 - I - 0x02A21F 0A:A20F: 00        .byte $00   ; 
- D 1 - I - 0x02A220 0A:A210: 00        .byte $00   ; 



_off028_A211_02:
- D 1 - I - 0x02A221 0A:A211: 16        .byte $16   ; 
- D 1 - I - 0x02A222 0A:A212: 20        .byte $20   ; 
- D 1 - I - 0x02A223 0A:A213: B0        .byte $B0   ; 
- D 1 - I - 0x02A224 0A:A214: 00        .byte $00   ; 
- D 1 - I - 0x02A225 0A:A215: 00        .byte $00   ; 



_off028_A216_03:
- D 1 - I - 0x02A226 0A:A216: 05        .byte $05   ; 
- D 1 - I - 0x02A227 0A:A217: 00        .byte $00   ; 
- D 1 - I - 0x02A228 0A:A218: A8        .byte $A8   ; 
- D 1 - I - 0x02A229 0A:A219: 00        .byte $00   ; 
- D 1 - I - 0x02A22A 0A:A21A: 00        .byte $00   ; 



_off028_A21B_04:
- D 1 - I - 0x02A22B 0A:A21B: 06        .byte $06   ; 
- D 1 - I - 0x02A22C 0A:A21C: 00        .byte $00   ; 
- D 1 - I - 0x02A22D 0A:A21D: B0        .byte $B0   ; 
- D 1 - I - 0x02A22E 0A:A21E: 00        .byte $00   ; 
- D 1 - I - 0x02A22F 0A:A21F: 00        .byte $00   ; 



_off028_A220_05:
- D 1 - I - 0x02A230 0A:A220: 07        .byte $07   ; 
- D 1 - I - 0x02A231 0A:A221: 30        .byte $30   ; 
- D 1 - I - 0x02A232 0A:A222: 70        .byte $70   ; 
- D 1 - I - 0x02A233 0A:A223: 00        .byte $00   ; 
- D 1 - I - 0x02A234 0A:A224: 00        .byte $00   ; 



_off028_A225_06:
- D 1 - I - 0x02A235 0A:A225: 08        .byte $08   ; 
- D 1 - I - 0x02A236 0A:A226: 20        .byte $20   ; 
- D 1 - I - 0x02A237 0A:A227: C0        .byte $C0   ; 
- D 1 - I - 0x02A238 0A:A228: 00        .byte $00   ; 
- D 1 - I - 0x02A239 0A:A229: 00        .byte $00   ; 



_off028_A22A_07:
- D 1 - I - 0x02A23A 0A:A22A: 09        .byte $09   ; 
- D 1 - I - 0x02A23B 0A:A22B: 20        .byte $20   ; 
- D 1 - I - 0x02A23C 0A:A22C: 40        .byte $40   ; 
- D 1 - I - 0x02A23D 0A:A22D: 00        .byte $00   ; 
- D 1 - I - 0x02A23E 0A:A22E: 00        .byte $00   ; 



_off028_A22F_08:
- D 1 - I - 0x02A23F 0A:A22F: 0A        .byte $0A   ; 
- D 1 - I - 0x02A240 0A:A230: 20        .byte $20   ; 
- D 1 - I - 0x02A241 0A:A231: 40        .byte $40   ; 
- D 1 - I - 0x02A242 0A:A232: 00        .byte $00   ; 
- D 1 - I - 0x02A243 0A:A233: 00        .byte $00   ; 



_off028_A234_09:
- D 1 - I - 0x02A244 0A:A234: 03        .byte $03   ; 
- D 1 - I - 0x02A245 0A:A235: 20        .byte $20   ; 
- D 1 - I - 0x02A246 0A:A236: C0        .byte $C0   ; 
- D 1 - I - 0x02A247 0A:A237: 00        .byte $00   ; 
- D 1 - I - 0x02A248 0A:A238: 00        .byte $00   ; 



_off028_A239_0A:
- D 1 - I - 0x02A249 0A:A239: 0B        .byte $0B   ; 
- D 1 - I - 0x02A24A 0A:A23A: 20        .byte $20   ; 
- D 1 - I - 0x02A24B 0A:A23B: 88        .byte $88   ; 
- D 1 - I - 0x02A24C 0A:A23C: 00        .byte $00   ; 
- D 1 - I - 0x02A24D 0A:A23D: 00        .byte $00   ; 



_off028_A23E_0B:
- D 1 - I - 0x02A24E 0A:A23E: 0C        .byte $0C   ; 
- D 1 - I - 0x02A24F 0A:A23F: 20        .byte $20   ; 
- D 1 - I - 0x02A250 0A:A240: 98        .byte $98   ; 
- D 1 - I - 0x02A251 0A:A241: 00        .byte $00   ; 
- D 1 - I - 0x02A252 0A:A242: 00        .byte $00   ; 



_off028_A243_0C:
; bzk garbage
- - - - - - 0x02A253 0A:A243: 0D        .byte $0D   ; 
- - - - - - 0x02A254 0A:A244: 08        .byte $08   ; 
- - - - - - 0x02A255 0A:A245: 98        .byte $98   ; 
- - - - - - 0x02A256 0A:A246: 00        .byte $00   ; 
- - - - - - 0x02A257 0A:A247: 00        .byte $00   ; 



_off028_A248_0D:
; bzk garbage
- - - - - - 0x02A258 0A:A248: 0E        .byte $0E   ; 
- - - - - - 0x02A259 0A:A249: 08        .byte $08   ; 
- - - - - - 0x02A25A 0A:A24A: 90        .byte $90   ; 
- - - - - - 0x02A25B 0A:A24B: 00        .byte $00   ; 
- - - - - - 0x02A25C 0A:A24C: 00        .byte $00   ; 



_off028_A24D_0E:
- D 1 - I - 0x02A25D 0A:A24D: 02        .byte $02   ; 
- D 1 - I - 0x02A25E 0A:A24E: 18        .byte $18   ; 
- D 1 - I - 0x02A25F 0A:A24F: 90        .byte $90   ; 
- D 1 - I - 0x02A260 0A:A250: 00        .byte $00   ; 
- D 1 - I - 0x02A261 0A:A251: 00        .byte $00   ; 



_off028_A252_0F:
- D 1 - I - 0x02A262 0A:A252: 0F        .byte $0F   ; 
- D 1 - I - 0x02A263 0A:A253: 20        .byte $20   ; 
- D 1 - I - 0x02A264 0A:A254: 70        .byte $70   ; 
- D 1 - I - 0x02A265 0A:A255: 00        .byte $00   ; 
- D 1 - I - 0x02A266 0A:A256: 00        .byte $00   ; 



_off028_A257_10:
- D 1 - I - 0x02A267 0A:A257: 0B        .byte $0B   ; 
- D 1 - I - 0x02A268 0A:A258: 20        .byte $20   ; 
- D 1 - I - 0x02A269 0A:A259: 78        .byte $78   ; 
- D 1 - I - 0x02A26A 0A:A25A: 00        .byte $00   ; 
- D 1 - I - 0x02A26B 0A:A25B: 00        .byte $00   ; 



_off028_A25C_11:
- D 1 - I - 0x02A26C 0A:A25C: 0E        .byte $0E   ; 
- D 1 - I - 0x02A26D 0A:A25D: 08        .byte $08   ; 
- D 1 - I - 0x02A26E 0A:A25E: B0        .byte $B0   ; 
- D 1 - I - 0x02A26F 0A:A25F: 00        .byte $00   ; 
- D 1 - I - 0x02A270 0A:A260: 01        .byte $01   ; 



_off028_A261_12:
; bzk garbage
- - - - - - 0x02A271 0A:A261: 10        .byte $10   ; 
- - - - - - 0x02A272 0A:A262: 20        .byte $20   ; 
- - - - - - 0x02A273 0A:A263: B0        .byte $B0   ; 
- - - - - - 0x02A274 0A:A264: 00        .byte $00   ; 
- - - - - - 0x02A275 0A:A265: 00        .byte $00   ; 



_off028_A266_13:
- D 1 - I - 0x02A276 0A:A266: 14        .byte $14   ; 
- D 1 - I - 0x02A277 0A:A267: 20        .byte $20   ; 
- D 1 - I - 0x02A278 0A:A268: 40        .byte $40   ; 
- D 1 - I - 0x02A279 0A:A269: 00        .byte $00   ; 
- D 1 - I - 0x02A27A 0A:A26A: 00        .byte $00   ; 



_off028_A26B_14:
- D 1 - I - 0x02A27B 0A:A26B: 18        .byte $18   ; 
- D 1 - I - 0x02A27C 0A:A26C: 20        .byte $20   ; 
- D 1 - I - 0x02A27D 0A:A26D: 40        .byte $40   ; 
- D 1 - I - 0x02A27E 0A:A26E: 40        .byte $40   ; 
- D 1 - I - 0x02A27F 0A:A26F: 40        .byte $40   ; 



_off028_A270_15:
- D 1 - I - 0x02A280 0A:A270: 16        .byte $16   ; 
- D 1 - I - 0x02A281 0A:A271: 20        .byte $20   ; 
- D 1 - I - 0x02A282 0A:A272: 50        .byte $50   ; 
- D 1 - I - 0x02A283 0A:A273: 00        .byte $00   ; 
- D 1 - I - 0x02A284 0A:A274: 00        .byte $00   ; 



_off028_A275_16:
- D 1 - I - 0x02A285 0A:A275: 19        .byte $19   ; 
- D 1 - I - 0x02A286 0A:A276: 20        .byte $20   ; 
- D 1 - I - 0x02A287 0A:A277: 90        .byte $90   ; 
- D 1 - I - 0x02A288 0A:A278: 00        .byte $00   ; 
- D 1 - I - 0x02A289 0A:A279: 00        .byte $00   ; 



_off028_A27A_17:
- D 1 - I - 0x02A28A 0A:A27A: 04        .byte $04   ; 
- D 1 - I - 0x02A28B 0A:A27B: 20        .byte $20   ; 
- D 1 - I - 0x02A28C 0A:A27C: 40        .byte $40   ; 
- D 1 - I - 0x02A28D 0A:A27D: 00        .byte $00   ; 
- D 1 - I - 0x02A28E 0A:A27E: 00        .byte $00   ; 



_off028_A27F_18:
; bzk garbage
- - - - - - 0x02A28F 0A:A27F: 17        .byte $17   ; 
- - - - - - 0x02A290 0A:A280: 20        .byte $20   ; 
- - - - - - 0x02A291 0A:A281: A0        .byte $A0   ; 
- - - - - - 0x02A292 0A:A282: 00        .byte $00   ; 
- - - - - - 0x02A293 0A:A283: 00        .byte $00   ; 



_off028_A284_19:
; bzk garbage
- - - - - - 0x02A294 0A:A284: 11        .byte $11   ; 
- - - - - - 0x02A295 0A:A285: 08        .byte $08   ; 
- - - - - - 0x02A296 0A:A286: 80        .byte $80   ; 
- - - - - - 0x02A297 0A:A287: 00        .byte $00   ; 
- - - - - - 0x02A298 0A:A288: 00        .byte $00   ; 



_off028_A289_1A:
; bzk garbage
- - - - - - 0x02A299 0A:A289: 1A        .byte $1A   ; 
- - - - - - 0x02A29A 0A:A28A: 08        .byte $08   ; 
- - - - - - 0x02A29B 0A:A28B: A0        .byte $A0   ; 
- - - - - - 0x02A29C 0A:A28C: 00        .byte $00   ; 
- - - - - - 0x02A29D 0A:A28D: 00        .byte $00   ; 



_off028_A28E_1B:
- D 1 - I - 0x02A29E 0A:A28E: 12        .byte $12   ; 
- D 1 - I - 0x02A29F 0A:A28F: 08        .byte $08   ; 
- D 1 - I - 0x02A2A0 0A:A290: F0        .byte $F0   ; 
- D 1 - I - 0x02A2A1 0A:A291: 00        .byte $00   ; 
- D 1 - I - 0x02A2A2 0A:A292: 00        .byte $00   ; 



_off028_A293_1C:
- D 1 - I - 0x02A2A3 0A:A293: 15        .byte $15   ; 
- D 1 - I - 0x02A2A4 0A:A294: 18        .byte $18   ; 
- D 1 - I - 0x02A2A5 0A:A295: 98        .byte $98   ; 
- D 1 - I - 0x02A2A6 0A:A296: 00        .byte $00   ; 
- D 1 - I - 0x02A2A7 0A:A297: 00        .byte $00   ; 



_off028_A298_1D:
- D 1 - I - 0x02A2A8 0A:A298: 16        .byte $16   ; 
- D 1 - I - 0x02A2A9 0A:A299: 20        .byte $20   ; 
- D 1 - I - 0x02A2AA 0A:A29A: A0        .byte $A0   ; 
- D 1 - I - 0x02A2AB 0A:A29B: 00        .byte $00   ; 
- D 1 - I - 0x02A2AC 0A:A29C: 00        .byte $00   ; 



_off028_A29D_1E:
- D 1 - I - 0x02A2AD 0A:A29D: 1B        .byte $1B   ; 
- D 1 - I - 0x02A2AE 0A:A29E: 08        .byte $08   ; 
- D 1 - I - 0x02A2AF 0A:A29F: 7C        .byte $7C   ; 
- D 1 - I - 0x02A2B0 0A:A2A0: 00        .byte $00   ; 
- D 1 - I - 0x02A2B1 0A:A2A1: 00        .byte $00   ; 



_off028_A2A2_1F:
- D 1 - I - 0x02A2B2 0A:A2A2: 1C        .byte $1C   ; 
- D 1 - I - 0x02A2B3 0A:A2A3: 00        .byte $00   ; 
- D 1 - I - 0x02A2B4 0A:A2A4: A0        .byte $A0   ; 
- D 1 - I - 0x02A2B5 0A:A2A5: 00        .byte $00   ; 
- D 1 - I - 0x02A2B6 0A:A2A6: 00        .byte $00   ; 



_off028_A2A7_20:
- D 1 - I - 0x02A2B7 0A:A2A7: 1D        .byte $1D   ; 
- D 1 - I - 0x02A2B8 0A:A2A8: 3C        .byte $3C   ; 
- D 1 - I - 0x02A2B9 0A:A2A9: 48        .byte $48   ; 
- D 1 - I - 0x02A2BA 0A:A2AA: 00        .byte $00   ; 
- D 1 - I - 0x02A2BB 0A:A2AB: 00        .byte $00   ; 



_off028_A2AC_21:
- D 1 - I - 0x02A2BC 0A:A2AC: 27        .byte $27   ; 
- D 1 - I - 0x02A2BD 0A:A2AD: 18        .byte $18   ; 
- D 1 - I - 0x02A2BE 0A:A2AE: 70        .byte $70   ; 
- D 1 - I - 0x02A2BF 0A:A2AF: 00        .byte $00   ; 
- D 1 - I - 0x02A2C0 0A:A2B0: 00        .byte $00   ; 



_off028_A2B1_22:
- D 1 - I - 0x02A2C1 0A:A2B1: 10        .byte $10   ; 
- D 1 - I - 0x02A2C2 0A:A2B2: 10        .byte $10   ; 
- D 1 - I - 0x02A2C3 0A:A2B3: 50        .byte $50   ; 
- D 1 - I - 0x02A2C4 0A:A2B4: 00        .byte $00   ; 
- D 1 - I - 0x02A2C5 0A:A2B5: 00        .byte $00   ; 



_off028_A2B6_23:
- D 1 - I - 0x02A2C6 0A:A2B6: 15        .byte $15   ; 
- D 1 - I - 0x02A2C7 0A:A2B7: 08        .byte $08   ; 
- D 1 - I - 0x02A2C8 0A:A2B8: 68        .byte $68   ; 
- D 1 - I - 0x02A2C9 0A:A2B9: 00        .byte $00   ; 
- D 1 - I - 0x02A2CA 0A:A2BA: 00        .byte $00   ; 



_off028_A2BB_24:
- D 1 - I - 0x02A2CB 0A:A2BB: 21        .byte $21   ; 
- D 1 - I - 0x02A2CC 0A:A2BC: 10        .byte $10   ; 
- D 1 - I - 0x02A2CD 0A:A2BD: A0        .byte $A0   ; 
- D 1 - I - 0x02A2CE 0A:A2BE: 00        .byte $00   ; 
- D 1 - I - 0x02A2CF 0A:A2BF: 00        .byte $00   ; 



_off028_A2C0_25:
; bzk garbage
- - - - - - 0x02A2D0 0A:A2C0: 0F        .byte $0F   ; 
- - - - - - 0x02A2D1 0A:A2C1: 20        .byte $20   ; 
- - - - - - 0x02A2D2 0A:A2C2: B0        .byte $B0   ; 
- - - - - - 0x02A2D3 0A:A2C3: 00        .byte $00   ; 
- - - - - - 0x02A2D4 0A:A2C4: 00        .byte $00   ; 



_off028_A2C5_26:
- D 1 - I - 0x02A2D5 0A:A2C5: 0B        .byte $0B   ; 
- D 1 - I - 0x02A2D6 0A:A2C6: 20        .byte $20   ; 
- D 1 - I - 0x02A2D7 0A:A2C7: B8        .byte $B8   ; 
- D 1 - I - 0x02A2D8 0A:A2C8: 00        .byte $00   ; 
- D 1 - I - 0x02A2D9 0A:A2C9: 00        .byte $00   ; 



_off028_A2CA_27:
- D 1 - I - 0x02A2DA 0A:A2CA: 1E        .byte $1E   ; 
- D 1 - I - 0x02A2DB 0A:A2CB: 00        .byte $00   ; 
- D 1 - I - 0x02A2DC 0A:A2CC: B8        .byte $B8   ; 
- D 1 - I - 0x02A2DD 0A:A2CD: 00        .byte $00   ; 
- D 1 - I - 0x02A2DE 0A:A2CE: 00        .byte $00   ; 



_off028_A2CF_28:
; bzk garbage
- - - - - - 0x02A2DF 0A:A2CF: 1F        .byte $1F   ; 
- - - - - - 0x02A2E0 0A:A2D0: 20        .byte $20   ; 
- - - - - - 0x02A2E1 0A:A2D1: A0        .byte $A0   ; 
- - - - - - 0x02A2E2 0A:A2D2: 00        .byte $00   ; 
- - - - - - 0x02A2E3 0A:A2D3: 00        .byte $00   ; 



_off028_A2D4_29:
- D 1 - I - 0x02A2E4 0A:A2D4: 20        .byte $20   ; 
- D 1 - I - 0x02A2E5 0A:A2D5: 00        .byte $00   ; 
- D 1 - I - 0x02A2E6 0A:A2D6: 90        .byte $90   ; 
- D 1 - I - 0x02A2E7 0A:A2D7: 00        .byte $00   ; 
- D 1 - I - 0x02A2E8 0A:A2D8: 00        .byte $00   ; 



_off028_A2D9_2A:
; bzk garbage
- - - - - - 0x02A2E9 0A:A2D9: 22        .byte $22   ; 
- - - - - - 0x02A2EA 0A:A2DA: 20        .byte $20   ; 
- - - - - - 0x02A2EB 0A:A2DB: A0        .byte $A0   ; 
- - - - - - 0x02A2EC 0A:A2DC: 00        .byte $00   ; 
- - - - - - 0x02A2ED 0A:A2DD: 00        .byte $00   ; 



_off028_A2DE_2B:
- D 1 - I - 0x02A2EE 0A:A2DE: 23        .byte $23   ; 
- D 1 - I - 0x02A2EF 0A:A2DF: 00        .byte $00   ; 
- D 1 - I - 0x02A2F0 0A:A2E0: 50        .byte $50   ; 
- D 1 - I - 0x02A2F1 0A:A2E1: 00        .byte $00   ; 
- D 1 - I - 0x02A2F2 0A:A2E2: 00        .byte $00   ; 



_off028_A2E3_2C:
- D 1 - I - 0x02A2F3 0A:A2E3: 24        .byte $24   ; 
- D 1 - I - 0x02A2F4 0A:A2E4: 20        .byte $20   ; 
- D 1 - I - 0x02A2F5 0A:A2E5: B0        .byte $B0   ; 
- D 1 - I - 0x02A2F6 0A:A2E6: 00        .byte $00   ; 
- D 1 - I - 0x02A2F7 0A:A2E7: 00        .byte $00   ; 



_off028_A2E8_2D:
- D 1 - I - 0x02A2F8 0A:A2E8: 25        .byte $25   ; 
- D 1 - I - 0x02A2F9 0A:A2E9: 00        .byte $00   ; 
- D 1 - I - 0x02A2FA 0A:A2EA: A0        .byte $A0   ; 
- D 1 - I - 0x02A2FB 0A:A2EB: 00        .byte $00   ; 
- D 1 - I - 0x02A2FC 0A:A2EC: 00        .byte $00   ; 



_off028_A2ED_2E:
- D 1 - I - 0x02A2FD 0A:A2ED: 26        .byte $26   ; 
- D 1 - I - 0x02A2FE 0A:A2EE: 40        .byte $40   ; 
- D 1 - I - 0x02A2FF 0A:A2EF: A0        .byte $A0   ; 
- D 1 - I - 0x02A300 0A:A2F0: 00        .byte $00   ; 
- D 1 - I - 0x02A301 0A:A2F1: 00        .byte $00   ; 



_off028_A2F2_2F:
- D 1 - I - 0x02A302 0A:A2F2: 28        .byte $28   ; 
- D 1 - I - 0x02A303 0A:A2F3: 20        .byte $20   ; 
- D 1 - I - 0x02A304 0A:A2F4: 90        .byte $90   ; 
- D 1 - I - 0x02A305 0A:A2F5: 00        .byte $00   ; 
- D 1 - I - 0x02A306 0A:A2F6: 00        .byte $00   ; 



_off028_A2F7_30:
- D 1 - I - 0x02A307 0A:A2F7: 29        .byte $29   ; 
- D 1 - I - 0x02A308 0A:A2F8: 20        .byte $20   ; 
- D 1 - I - 0x02A309 0A:A2F9: 30        .byte $30   ; 
- D 1 - I - 0x02A30A 0A:A2FA: 00        .byte $00   ; 
- D 1 - I - 0x02A30B 0A:A2FB: 00        .byte $00   ; 



_off028_A2FC_31:
- D 1 - I - 0x02A30C 0A:A2FC: 28        .byte $28   ; 
- D 1 - I - 0x02A30D 0A:A2FD: 18        .byte $18   ; 
- D 1 - I - 0x02A30E 0A:A2FE: 70        .byte $70   ; 
- D 1 - I - 0x02A30F 0A:A2FF: 00        .byte $00   ; 
- D 1 - I - 0x02A310 0A:A300: 00        .byte $00   ; 



_off028_A301_32:
- D 1 - I - 0x02A311 0A:A301: 52        .byte $52   ; 
- D 1 - I - 0x02A312 0A:A302: 20        .byte $20   ; 
- D 1 - I - 0x02A313 0A:A303: 40        .byte $40   ; 
- D 1 - I - 0x02A314 0A:A304: 00        .byte $00   ; 
- D 1 - I - 0x02A315 0A:A305: 00        .byte $00   ; 



_off028_A306_33:
- D 1 - I - 0x02A316 0A:A306: 11        .byte $11   ; 
- D 1 - I - 0x02A317 0A:A307: 08        .byte $08   ; 
- D 1 - I - 0x02A318 0A:A308: B0        .byte $B0   ; 
- D 1 - I - 0x02A319 0A:A309: 00        .byte $00   ; 
- D 1 - I - 0x02A31A 0A:A30A: 00        .byte $00   ; 



_off028_A30B_34:
- D 1 - I - 0x02A31B 0A:A30B: 0F        .byte $0F   ; 
- D 1 - I - 0x02A31C 0A:A30C: 20        .byte $20   ; 
- D 1 - I - 0x02A31D 0A:A30D: 50        .byte $50   ; 
- D 1 - I - 0x02A31E 0A:A30E: 00        .byte $00   ; 
- D 1 - I - 0x02A31F 0A:A30F: 00        .byte $00   ; 



_off028_A310_35:
- D 1 - I - 0x02A320 0A:A310: 43        .byte $43   ; 
- D 1 - I - 0x02A321 0A:A311: 20        .byte $20   ; 
- D 1 - I - 0x02A322 0A:A312: 60        .byte $60   ; 
- D 1 - I - 0x02A323 0A:A313: 00        .byte $00   ; 
- D 1 - I - 0x02A324 0A:A314: 00        .byte $00   ; 



_off028_A315_36:
- D 1 - I - 0x02A325 0A:A315: 0E        .byte $0E   ; 
- D 1 - I - 0x02A326 0A:A316: 08        .byte $08   ; 
- D 1 - I - 0x02A327 0A:A317: 90        .byte $90   ; 
- D 1 - I - 0x02A328 0A:A318: 00        .byte $00   ; 
- D 1 - I - 0x02A329 0A:A319: 00        .byte $00   ; 



_off028_A31A_37:
- D 1 - I - 0x02A32A 0A:A31A: 44        .byte $44   ; 
- D 1 - I - 0x02A32B 0A:A31B: 00        .byte $00   ; 
- D 1 - I - 0x02A32C 0A:A31C: 7C        .byte $7C   ; 
- D 1 - I - 0x02A32D 0A:A31D: 00        .byte $00   ; 
- D 1 - I - 0x02A32E 0A:A31E: 00        .byte $00   ; 



_off028_A31F_38:
- D 1 - I - 0x02A32F 0A:A31F: 44        .byte $44   ; 
- D 1 - I - 0x02A330 0A:A320: 08        .byte $08   ; 
- D 1 - I - 0x02A331 0A:A321: 8C        .byte $8C   ; 
- D 1 - I - 0x02A332 0A:A322: 00        .byte $00   ; 
- D 1 - I - 0x02A333 0A:A323: 00        .byte $00   ; 



_off028_A324_39:
- D 1 - I - 0x02A334 0A:A324: 11        .byte $11   ; 
- D 1 - I - 0x02A335 0A:A325: 08        .byte $08   ; 
- D 1 - I - 0x02A336 0A:A326: 70        .byte $70   ; 
- D 1 - I - 0x02A337 0A:A327: 00        .byte $00   ; 
- D 1 - I - 0x02A338 0A:A328: 00        .byte $00   ; 



_off028_A329_3A:
- D 1 - I - 0x02A339 0A:A329: 28        .byte $28   ; 
- D 1 - I - 0x02A33A 0A:A32A: 20        .byte $20   ; 
- D 1 - I - 0x02A33B 0A:A32B: 80        .byte $80   ; 
- D 1 - I - 0x02A33C 0A:A32C: 00        .byte $00   ; 
- D 1 - I - 0x02A33D 0A:A32D: 00        .byte $00   ; 



_off028_A32E_3B:
- D 1 - I - 0x02A33E 0A:A32E: 28        .byte $28   ; 
- D 1 - I - 0x02A33F 0A:A32F: 00        .byte $00   ; 
- D 1 - I - 0x02A340 0A:A330: B0        .byte $B0   ; 
- D 1 - I - 0x02A341 0A:A331: 00        .byte $00   ; 
- D 1 - I - 0x02A342 0A:A332: 00        .byte $00   ; 



_off028_A333_3C:
- D 1 - I - 0x02A343 0A:A333: 44        .byte $44   ; 
- D 1 - I - 0x02A344 0A:A334: 30        .byte $30   ; 
- D 1 - I - 0x02A345 0A:A335: 88        .byte $88   ; 
- D 1 - I - 0x02A346 0A:A336: 00        .byte $00   ; 
- D 1 - I - 0x02A347 0A:A337: 00        .byte $00   ; 



_off028_A338_3D:
- D 1 - I - 0x02A348 0A:A338: 27        .byte $27   ; 
- D 1 - I - 0x02A349 0A:A339: 18        .byte $18   ; 
- D 1 - I - 0x02A34A 0A:A33A: 40        .byte $40   ; 
- D 1 - I - 0x02A34B 0A:A33B: 00        .byte $00   ; 
- D 1 - I - 0x02A34C 0A:A33C: 00        .byte $00   ; 



_off028_A33D_3E:
- D 1 - I - 0x02A34D 0A:A33D: 10        .byte $10   ; 
- D 1 - I - 0x02A34E 0A:A33E: 18        .byte $18   ; 
- D 1 - I - 0x02A34F 0A:A33F: 30        .byte $30   ; 
- D 1 - I - 0x02A350 0A:A340: 00        .byte $00   ; 
- D 1 - I - 0x02A351 0A:A341: 00        .byte $00   ; 



_off028_A342_3F:
- D 1 - I - 0x02A352 0A:A342: 41        .byte $41   ; 
- D 1 - I - 0x02A353 0A:A343: 10        .byte $10   ; 
- D 1 - I - 0x02A354 0A:A344: 70        .byte $70   ; 
- D 1 - I - 0x02A355 0A:A345: 00        .byte $00   ; 
- D 1 - I - 0x02A356 0A:A346: 00        .byte $00   ; 



_off028_A347_40:
- D 1 - I - 0x02A357 0A:A347: 41        .byte $41   ; 
- D 1 - I - 0x02A358 0A:A348: 08        .byte $08   ; 
- D 1 - I - 0x02A359 0A:A349: 70        .byte $70   ; 
- D 1 - I - 0x02A35A 0A:A34A: 00        .byte $00   ; 
- D 1 - I - 0x02A35B 0A:A34B: 00        .byte $00   ; 



_off028_A34C_41:
- D 1 - I - 0x02A35C 0A:A34C: 0F        .byte $0F   ; 
- D 1 - I - 0x02A35D 0A:A34D: 20        .byte $20   ; 
- D 1 - I - 0x02A35E 0A:A34E: 90        .byte $90   ; 
- D 1 - I - 0x02A35F 0A:A34F: 00        .byte $00   ; 
- D 1 - I - 0x02A360 0A:A350: 00        .byte $00   ; 



_off028_A351_42:
; bzk garbage
- - - - - - 0x02A361 0A:A351: 11        .byte $11   ; 
- - - - - - 0x02A362 0A:A352: 08        .byte $08   ; 
- - - - - - 0x02A363 0A:A353: 50        .byte $50   ; 
- - - - - - 0x02A364 0A:A354: 00        .byte $00   ; 
- - - - - - 0x02A365 0A:A355: 00        .byte $00   ; 



_off028_A356_43:
; bzk garbage
- - - - - - 0x02A366 0A:A356: 0E        .byte $0E   ; 
- - - - - - 0x02A367 0A:A357: 20        .byte $20   ; 
- - - - - - 0x02A368 0A:A358: 70        .byte $70   ; 
- - - - - - 0x02A369 0A:A359: 00        .byte $00   ; 
- - - - - - 0x02A36A 0A:A35A: 00        .byte $00   ; 



_off028_A35B_44:
- D 1 - I - 0x02A36B 0A:A35B: 27        .byte $27   ; 
- D 1 - I - 0x02A36C 0A:A35C: 24        .byte $24   ; 
- D 1 - I - 0x02A36D 0A:A35D: 38        .byte $38   ; 
- D 1 - I - 0x02A36E 0A:A35E: 00        .byte $00   ; 
- D 1 - I - 0x02A36F 0A:A35F: 00        .byte $00   ; 



_off028_A360_45:
- D 1 - I - 0x02A370 0A:A360: 44        .byte $44   ; 
- D 1 - I - 0x02A371 0A:A361: 30        .byte $30   ; 
- D 1 - I - 0x02A372 0A:A362: 8C        .byte $8C   ; 
- D 1 - I - 0x02A373 0A:A363: 00        .byte $00   ; 
- D 1 - I - 0x02A374 0A:A364: 00        .byte $00   ; 



_off028_A365_46:
- D 1 - I - 0x02A375 0A:A365: 44        .byte $44   ; 
- D 1 - I - 0x02A376 0A:A366: 34        .byte $34   ; 
- D 1 - I - 0x02A377 0A:A367: 80        .byte $80   ; 
- D 1 - I - 0x02A378 0A:A368: 00        .byte $00   ; 
- D 1 - I - 0x02A379 0A:A369: 00        .byte $00   ; 



_off028_A36A_47:
- D 1 - I - 0x02A37A 0A:A36A: 44        .byte $44   ; 
- D 1 - I - 0x02A37B 0A:A36B: 38        .byte $38   ; 
- D 1 - I - 0x02A37C 0A:A36C: 70        .byte $70   ; 
- D 1 - I - 0x02A37D 0A:A36D: 00        .byte $00   ; 
- D 1 - I - 0x02A37E 0A:A36E: 00        .byte $00   ; 



_off028_A36F_48:
- D 1 - I - 0x02A37F 0A:A36F: 44        .byte $44   ; 
- D 1 - I - 0x02A380 0A:A370: 20        .byte $20   ; 
- D 1 - I - 0x02A381 0A:A371: 8C        .byte $8C   ; 
- D 1 - I - 0x02A382 0A:A372: 00        .byte $00   ; 
- D 1 - I - 0x02A383 0A:A373: 00        .byte $00   ; 



_off028_A374_49:
; bzk garbage
- - - - - - 0x02A384 0A:A374: 45        .byte $45   ; 
- - - - - - 0x02A385 0A:A375: 10        .byte $10   ; 
- - - - - - 0x02A386 0A:A376: 58        .byte $58   ; 
- - - - - - 0x02A387 0A:A377: 00        .byte $00   ; 
- - - - - - 0x02A388 0A:A378: 00        .byte $00   ; 



_off028_A379_4A:
- D 1 - I - 0x02A389 0A:A379: 45        .byte $45   ; 
- D 1 - I - 0x02A38A 0A:A37A: 30        .byte $30   ; 
- D 1 - I - 0x02A38B 0A:A37B: 58        .byte $58   ; 
- D 1 - I - 0x02A38C 0A:A37C: 02        .byte $02   ; 
- D 1 - I - 0x02A38D 0A:A37D: 00        .byte $00   ; 



_off028_A37E_4B:
- D 1 - I - 0x02A38E 0A:A37E: 45        .byte $45   ; 
- D 1 - I - 0x02A38F 0A:A37F: 10        .byte $10   ; 
- D 1 - I - 0x02A390 0A:A380: 78        .byte $78   ; 
- D 1 - I - 0x02A391 0A:A381: 03        .byte $03   ; 
- D 1 - I - 0x02A392 0A:A382: 00        .byte $00   ; 



_off028_A383_4C:
; bzk garbage
- - - - - - 0x02A393 0A:A383: 45        .byte $45   ; 
- - - - - - 0x02A394 0A:A384: 20        .byte $20   ; 
- - - - - - 0x02A395 0A:A385: B8        .byte $B8   ; 
- - - - - - 0x02A396 0A:A386: 03        .byte $03   ; 
- - - - - - 0x02A397 0A:A387: 00        .byte $00   ; 



_off028_A388_4D:
; bzk garbage
- - - - - - 0x02A398 0A:A388: 45        .byte $45   ; 
- - - - - - 0x02A399 0A:A389: 28        .byte $28   ; 
- - - - - - 0x02A39A 0A:A38A: 98        .byte $98   ; 
- - - - - - 0x02A39B 0A:A38B: 04        .byte $04   ; 
- - - - - - 0x02A39C 0A:A38C: 00        .byte $00   ; 



_off028_A38D_4E:
- D 1 - I - 0x02A39D 0A:A38D: 46        .byte $46   ; 
- D 1 - I - 0x02A39E 0A:A38E: 10        .byte $10   ; 
- D 1 - I - 0x02A39F 0A:A38F: 40        .byte $40   ; 
- D 1 - I - 0x02A3A0 0A:A390: 04        .byte $04   ; 
- D 1 - I - 0x02A3A1 0A:A391: 00        .byte $00   ; 



_off028_A392_4F:
- D 1 - I - 0x02A3A2 0A:A392: 43        .byte $43   ; 
- D 1 - I - 0x02A3A3 0A:A393: 00        .byte $00   ; 
- D 1 - I - 0x02A3A4 0A:A394: 90        .byte $90   ; 
- D 1 - I - 0x02A3A5 0A:A395: 00        .byte $00   ; 
- D 1 - I - 0x02A3A6 0A:A396: 00        .byte $00   ; 



_off028_A397_50:
- D 1 - I - 0x02A3A7 0A:A397: 43        .byte $43   ; 
- D 1 - I - 0x02A3A8 0A:A398: 00        .byte $00   ; 
- D 1 - I - 0x02A3A9 0A:A399: 60        .byte $60   ; 
- D 1 - I - 0x02A3AA 0A:A39A: 00        .byte $00   ; 
- D 1 - I - 0x02A3AB 0A:A39B: 00        .byte $00   ; 



_off028_A39C_51:
- D 1 - I - 0x02A3AC 0A:A39C: 36        .byte $36   ; 
- D 1 - I - 0x02A3AD 0A:A39D: 30        .byte $30   ; 
- D 1 - I - 0x02A3AE 0A:A39E: 58        .byte $58   ; 
- D 1 - I - 0x02A3AF 0A:A39F: 00        .byte $00   ; 
- D 1 - I - 0x02A3B0 0A:A3A0: 00        .byte $00   ; 



_off028_A3A1_52:
; bzk garbage
- - - - - - 0x02A3B1 0A:A3A1: 18        .byte $18   ; 
- - - - - - 0x02A3B2 0A:A3A2: 20        .byte $20   ; 
- - - - - - 0x02A3B3 0A:A3A3: A0        .byte $A0   ; 
- - - - - - 0x02A3B4 0A:A3A4: 40        .byte $40   ; 
- - - - - - 0x02A3B5 0A:A3A5: 40        .byte $40   ; 



_off028_A3A6_53:
- D 1 - I - 0x02A3B6 0A:A3A6: 43        .byte $43   ; 
- D 1 - I - 0x02A3B7 0A:A3A7: 20        .byte $20   ; 
- D 1 - I - 0x02A3B8 0A:A3A8: 90        .byte $90   ; 
- D 1 - I - 0x02A3B9 0A:A3A9: 01        .byte $01   ; 
- D 1 - I - 0x02A3BA 0A:A3AA: 00        .byte $00   ; 



_off028_A3AB_54:
- D 1 - I - 0x02A3BB 0A:A3AB: 3E        .byte $3E   ; 
- D 1 - I - 0x02A3BC 0A:A3AC: 20        .byte $20   ; 
- D 1 - I - 0x02A3BD 0A:A3AD: D0        .byte $D0   ; 
- D 1 - I - 0x02A3BE 0A:A3AE: 00        .byte $00   ; 
- D 1 - I - 0x02A3BF 0A:A3AF: 00        .byte $00   ; 



_off028_A3B0_55:
- D 1 - I - 0x02A3C0 0A:A3B0: 47        .byte $47   ; 
- D 1 - I - 0x02A3C1 0A:A3B1: 20        .byte $20   ; 
- D 1 - I - 0x02A3C2 0A:A3B2: 80        .byte $80   ; 
- D 1 - I - 0x02A3C3 0A:A3B3: 00        .byte $00   ; 
- D 1 - I - 0x02A3C4 0A:A3B4: 00        .byte $00   ; 



_off028_A3B5_56:
- D 1 - I - 0x02A3C5 0A:A3B5: 11        .byte $11   ; 
- D 1 - I - 0x02A3C6 0A:A3B6: 08        .byte $08   ; 
- D 1 - I - 0x02A3C7 0A:A3B7: A0        .byte $A0   ; 
- D 1 - I - 0x02A3C8 0A:A3B8: 00        .byte $00   ; 
- D 1 - I - 0x02A3C9 0A:A3B9: 00        .byte $00   ; 



_off028_A3BA_57:
- D 1 - I - 0x02A3CA 0A:A3BA: 18        .byte $18   ; 
- D 1 - I - 0x02A3CB 0A:A3BB: 20        .byte $20   ; 
- D 1 - I - 0x02A3CC 0A:A3BC: 68        .byte $68   ; 
- D 1 - I - 0x02A3CD 0A:A3BD: 40        .byte $40   ; 
- D 1 - I - 0x02A3CE 0A:A3BE: 40        .byte $40   ; 



_off028_A3BF_58:
- D 1 - I - 0x02A3CF 0A:A3BF: 40        .byte $40   ; 
- D 1 - I - 0x02A3D0 0A:A3C0: 20        .byte $20   ; 
- D 1 - I - 0x02A3D1 0A:A3C1: B0        .byte $B0   ; 
- D 1 - I - 0x02A3D2 0A:A3C2: 00        .byte $00   ; 
- D 1 - I - 0x02A3D3 0A:A3C3: 00        .byte $00   ; 



_off028_A3C4_59:
- D 1 - I - 0x02A3D4 0A:A3C4: 40        .byte $40   ; 
- D 1 - I - 0x02A3D5 0A:A3C5: 20        .byte $20   ; 
- D 1 - I - 0x02A3D6 0A:A3C6: 90        .byte $90   ; 
- D 1 - I - 0x02A3D7 0A:A3C7: 00        .byte $00   ; 
- D 1 - I - 0x02A3D8 0A:A3C8: 00        .byte $00   ; 



_off028_A3C9_5A:
- D 1 - I - 0x02A3D9 0A:A3C9: 40        .byte $40   ; 
- D 1 - I - 0x02A3DA 0A:A3CA: 30        .byte $30   ; 
- D 1 - I - 0x02A3DB 0A:A3CB: B0        .byte $B0   ; 
- D 1 - I - 0x02A3DC 0A:A3CC: 00        .byte $00   ; 
- D 1 - I - 0x02A3DD 0A:A3CD: 00        .byte $00   ; 



_off028_A3CE_5B:
_off028_A3CE_5C:
- D 1 - I - 0x02A3DE 0A:A3CE: 49        .byte $49   ; 
- D 1 - I - 0x02A3DF 0A:A3CF: 20        .byte $20   ; 
- D 1 - I - 0x02A3E0 0A:A3D0: 50        .byte $50   ; 
- D 1 - I - 0x02A3E1 0A:A3D1: 00        .byte $00   ; 
- D 1 - I - 0x02A3E2 0A:A3D2: 00        .byte $00   ; 



_off028_A3D3_5D:
- D 1 - I - 0x02A3E3 0A:A3D3: 28        .byte $28   ; 
- D 1 - I - 0x02A3E4 0A:A3D4: 20        .byte $20   ; 
- D 1 - I - 0x02A3E5 0A:A3D5: 50        .byte $50   ; 
- D 1 - I - 0x02A3E6 0A:A3D6: 00        .byte $00   ; 
- D 1 - I - 0x02A3E7 0A:A3D7: 00        .byte $00   ; 



_off028_A3D8_5E:
- D 1 - I - 0x02A3E8 0A:A3D8: 28        .byte $28   ; 
- D 1 - I - 0x02A3E9 0A:A3D9: 20        .byte $20   ; 
- D 1 - I - 0x02A3EA 0A:A3DA: 60        .byte $60   ; 
- D 1 - I - 0x02A3EB 0A:A3DB: 00        .byte $00   ; 
- D 1 - I - 0x02A3EC 0A:A3DC: 00        .byte $00   ; 



_off028_A3DD_5F:
- D 1 - I - 0x02A3ED 0A:A3DD: 2D        .byte $2D   ; 
- D 1 - I - 0x02A3EE 0A:A3DE: 20        .byte $20   ; 
- D 1 - I - 0x02A3EF 0A:A3DF: A0        .byte $A0   ; 
- D 1 - I - 0x02A3F0 0A:A3E0: 00        .byte $00   ; 
- D 1 - I - 0x02A3F1 0A:A3E1: 00        .byte $00   ; 



_off028_A3E2_60:
- D 1 - I - 0x02A3F2 0A:A3E2: 2E        .byte $2E   ; 
- D 1 - I - 0x02A3F3 0A:A3E3: 20        .byte $20   ; 
- D 1 - I - 0x02A3F4 0A:A3E4: B8        .byte $B8   ; 
- D 1 - I - 0x02A3F5 0A:A3E5: 00        .byte $00   ; 
- D 1 - I - 0x02A3F6 0A:A3E6: 00        .byte $00   ; 



_off028_A3E7_61:
- D 1 - I - 0x02A3F7 0A:A3E7: 19        .byte $19   ; 
- D 1 - I - 0x02A3F8 0A:A3E8: 20        .byte $20   ; 
- D 1 - I - 0x02A3F9 0A:A3E9: 60        .byte $60   ; 
- D 1 - I - 0x02A3FA 0A:A3EA: 00        .byte $00   ; 
- D 1 - I - 0x02A3FB 0A:A3EB: 00        .byte $00   ; 



_off028_A3EC_62:
- D 1 - I - 0x02A3FC 0A:A3EC: 1F        .byte $1F   ; 
- D 1 - I - 0x02A3FD 0A:A3ED: 00        .byte $00   ; 
- D 1 - I - 0x02A3FE 0A:A3EE: 00        .byte $00   ; 
- D 1 - I - 0x02A3FF 0A:A3EF: 00        .byte $00   ; 
- D 1 - I - 0x02A400 0A:A3F0: 00        .byte $00   ; 



_off028_A3F1_63:
- D 1 - I - 0x02A401 0A:A3F1: 39        .byte $39   ; 
- D 1 - I - 0x02A402 0A:A3F2: 30        .byte $30   ; 
- D 1 - I - 0x02A403 0A:A3F3: B8        .byte $B8   ; 
- D 1 - I - 0x02A404 0A:A3F4: 00        .byte $00   ; 
- D 1 - I - 0x02A405 0A:A3F5: 00        .byte $00   ; 



_off028_A3F6_64:
- D 1 - I - 0x02A406 0A:A3F6: 13        .byte $13   ; 
- D 1 - I - 0x02A407 0A:A3F7: 20        .byte $20   ; 
- D 1 - I - 0x02A408 0A:A3F8: B0        .byte $B0   ; 
- D 1 - I - 0x02A409 0A:A3F9: 00        .byte $00   ; 
- D 1 - I - 0x02A40A 0A:A3FA: 00        .byte $00   ; 



_off028_A3FB_65:
- D 1 - I - 0x02A40B 0A:A3FB: 16        .byte $16   ; 
- D 1 - I - 0x02A40C 0A:A3FC: 20        .byte $20   ; 
- D 1 - I - 0x02A40D 0A:A3FD: 70        .byte $70   ; 
- D 1 - I - 0x02A40E 0A:A3FE: 00        .byte $00   ; 
- D 1 - I - 0x02A40F 0A:A3FF: 00        .byte $00   ; 



_off028_A400_66:
- D 1 - I - 0x02A410 0A:A400: 3A        .byte $3A   ; 
- D 1 - I - 0x02A411 0A:A401: 20        .byte $20   ; 
- D 1 - I - 0x02A412 0A:A402: A0        .byte $A0   ; 
- D 1 - I - 0x02A413 0A:A403: 00        .byte $00   ; 
- D 1 - I - 0x02A414 0A:A404: 00        .byte $00   ; 



_off028_A405_67:
- D 1 - I - 0x02A415 0A:A405: 17        .byte $17   ; 
- D 1 - I - 0x02A416 0A:A406: 20        .byte $20   ; 
- D 1 - I - 0x02A417 0A:A407: B0        .byte $B0   ; 
- D 1 - I - 0x02A418 0A:A408: 00        .byte $00   ; 
- D 1 - I - 0x02A419 0A:A409: 00        .byte $00   ; 



_off028_A40A_68:
- D 1 - I - 0x02A41A 0A:A40A: 17        .byte $17   ; 
- D 1 - I - 0x02A41B 0A:A40B: 20        .byte $20   ; 
- D 1 - I - 0x02A41C 0A:A40C: 90        .byte $90   ; 
- D 1 - I - 0x02A41D 0A:A40D: 00        .byte $00   ; 
- D 1 - I - 0x02A41E 0A:A40E: 00        .byte $00   ; 



_off028_A40F_69:
- D 1 - I - 0x02A41F 0A:A40F: 0B        .byte $0B   ; 
- D 1 - I - 0x02A420 0A:A410: 20        .byte $20   ; 
- D 1 - I - 0x02A421 0A:A411: A8        .byte $A8   ; 
- D 1 - I - 0x02A422 0A:A412: 00        .byte $00   ; 
- D 1 - I - 0x02A423 0A:A413: 00        .byte $00   ; 



_off028_A414_6A:
- D 1 - I - 0x02A424 0A:A414: 0B        .byte $0B   ; 
- D 1 - I - 0x02A425 0A:A415: 20        .byte $20   ; 
- D 1 - I - 0x02A426 0A:A416: 98        .byte $98   ; 
- D 1 - I - 0x02A427 0A:A417: 00        .byte $00   ; 
- D 1 - I - 0x02A428 0A:A418: 00        .byte $00   ; 



_off028_A419_6B:
- D 1 - I - 0x02A429 0A:A419: 3B        .byte $3B   ; 
- D 1 - I - 0x02A42A 0A:A41A: 20        .byte $20   ; 
- D 1 - I - 0x02A42B 0A:A41B: A0        .byte $A0   ; 
- D 1 - I - 0x02A42C 0A:A41C: 00        .byte $00   ; 
- D 1 - I - 0x02A42D 0A:A41D: 00        .byte $00   ; 



_off028_A41E_6C:
- D 1 - I - 0x02A42E 0A:A41E: 3C        .byte $3C   ; 
- D 1 - I - 0x02A42F 0A:A41F: 14        .byte $14   ; 
- D 1 - I - 0x02A430 0A:A420: B0        .byte $B0   ; 
- D 1 - I - 0x02A431 0A:A421: 00        .byte $00   ; 
- D 1 - I - 0x02A432 0A:A422: 00        .byte $00   ; 



_off028_A423_6D:
; bzk garbage
- - - - - - 0x02A433 0A:A423: 27        .byte $27   ; 
- - - - - - 0x02A434 0A:A424: 18        .byte $18   ; 
- - - - - - 0x02A435 0A:A425: 50        .byte $50   ; 
- - - - - - 0x02A436 0A:A426: 00        .byte $00   ; 
- - - - - - 0x02A437 0A:A427: 00        .byte $00   ; 



_off028_A428_6E:
- D 1 - I - 0x02A438 0A:A428: 19        .byte $19   ; 
- D 1 - I - 0x02A439 0A:A429: 20        .byte $20   ; 
- D 1 - I - 0x02A43A 0A:A42A: 50        .byte $50   ; 
- D 1 - I - 0x02A43B 0A:A42B: 00        .byte $00   ; 
- D 1 - I - 0x02A43C 0A:A42C: 00        .byte $00   ; 



_off028_A42D_6F:
- D 1 - I - 0x02A43D 0A:A42D: 3D        .byte $3D   ; 
- D 1 - I - 0x02A43E 0A:A42E: 20        .byte $20   ; 
- D 1 - I - 0x02A43F 0A:A42F: 88        .byte $88   ; 
- D 1 - I - 0x02A440 0A:A430: 00        .byte $00   ; 
- D 1 - I - 0x02A441 0A:A431: 00        .byte $00   ; 



_off028_A432_70:
- D 1 - I - 0x02A442 0A:A432: 3E        .byte $3E   ; 
- D 1 - I - 0x02A443 0A:A433: 20        .byte $20   ; 
- D 1 - I - 0x02A444 0A:A434: B0        .byte $B0   ; 
- D 1 - I - 0x02A445 0A:A435: 00        .byte $00   ; 
- D 1 - I - 0x02A446 0A:A436: 00        .byte $00   ; 



_off028_A437_71:
- D 1 - I - 0x02A447 0A:A437: 3F        .byte $3F   ; 
- D 1 - I - 0x02A448 0A:A438: 20        .byte $20   ; 
- D 1 - I - 0x02A449 0A:A439: B0        .byte $B0   ; 
- D 1 - I - 0x02A44A 0A:A43A: 00        .byte $00   ; 
- D 1 - I - 0x02A44B 0A:A43B: 00        .byte $00   ; 



_off028_A43C_72:
- D 1 - I - 0x02A44C 0A:A43C: 1A        .byte $1A   ; 
- D 1 - I - 0x02A44D 0A:A43D: 30        .byte $30   ; 
- D 1 - I - 0x02A44E 0A:A43E: 70        .byte $70   ; 
- D 1 - I - 0x02A44F 0A:A43F: 00        .byte $00   ; 
- D 1 - I - 0x02A450 0A:A440: 00        .byte $00   ; 



_off028_A441_73:
; bzk garbage
- - - - - - 0x02A451 0A:A441: 41        .byte $41   ; 
- - - - - - 0x02A452 0A:A442: 10        .byte $10   ; 
- - - - - - 0x02A453 0A:A443: 70        .byte $70   ; 
- - - - - - 0x02A454 0A:A444: 00        .byte $00   ; 
- - - - - - 0x02A455 0A:A445: 01        .byte $01   ; 



_off028_A446_74:
- D 1 - I - 0x02A456 0A:A446: 42        .byte $42   ; 
- D 1 - I - 0x02A457 0A:A447: 00        .byte $00   ; 
- D 1 - I - 0x02A458 0A:A448: B0        .byte $B0   ; 
- D 1 - I - 0x02A459 0A:A449: 00        .byte $00   ; 
- D 1 - I - 0x02A45A 0A:A44A: 00        .byte $00   ; 



_off028_A44B_75:
- D 1 - I - 0x02A45B 0A:A44B: 28        .byte $28   ; 
- D 1 - I - 0x02A45C 0A:A44C: 20        .byte $20   ; 
- D 1 - I - 0x02A45D 0A:A44D: A0        .byte $A0   ; 
- D 1 - I - 0x02A45E 0A:A44E: 00        .byte $00   ; 
- D 1 - I - 0x02A45F 0A:A44F: 00        .byte $00   ; 



_off028_A450_76:
; bzk garbage
- - - - - - 0x02A460 0A:A450: 19        .byte $19   ; 
- - - - - - 0x02A461 0A:A451: 30        .byte $30   ; 
- - - - - - 0x02A462 0A:A452: B0        .byte $B0   ; 
- - - - - - 0x02A463 0A:A453: 00        .byte $00   ; 
- - - - - - 0x02A464 0A:A454: 00        .byte $00   ; 



_off028_A455_77:
- D 1 - I - 0x02A465 0A:A455: 16        .byte $16   ; 
- D 1 - I - 0x02A466 0A:A456: 20        .byte $20   ; 
- D 1 - I - 0x02A467 0A:A457: 60        .byte $60   ; 
- D 1 - I - 0x02A468 0A:A458: 00        .byte $00   ; 
- D 1 - I - 0x02A469 0A:A459: 00        .byte $00   ; 



_off028_A45A_78:
- D 1 - I - 0x02A46A 0A:A45A: 16        .byte $16   ; 
- D 1 - I - 0x02A46B 0A:A45B: 20        .byte $20   ; 
- D 1 - I - 0x02A46C 0A:A45C: 90        .byte $90   ; 
- D 1 - I - 0x02A46D 0A:A45D: 00        .byte $00   ; 
- D 1 - I - 0x02A46E 0A:A45E: 00        .byte $00   ; 



_off028_A45F_79:
- D 1 - I - 0x02A46F 0A:A45F: 18        .byte $18   ; 
- D 1 - I - 0x02A470 0A:A460: 20        .byte $20   ; 
- D 1 - I - 0x02A471 0A:A461: 80        .byte $80   ; 
- D 1 - I - 0x02A472 0A:A462: 40        .byte $40   ; 
- D 1 - I - 0x02A473 0A:A463: 40        .byte $40   ; 



_off028_A464_7A:
- D 1 - I - 0x02A474 0A:A464: 45        .byte $45   ; 
- D 1 - I - 0x02A475 0A:A465: 38        .byte $38   ; 
- D 1 - I - 0x02A476 0A:A466: C8        .byte $C8   ; 
- D 1 - I - 0x02A477 0A:A467: 04        .byte $04   ; 
- D 1 - I - 0x02A478 0A:A468: 00        .byte $00   ; 



_off028_A469_7B:
; bzk garbage
- - - - - - 0x02A479 0A:A469: 0F        .byte $0F   ; 
- - - - - - 0x02A47A 0A:A46A: 38        .byte $38   ; 
- - - - - - 0x02A47B 0A:A46B: 90        .byte $90   ; 
- - - - - - 0x02A47C 0A:A46C: 00        .byte $00   ; 
- - - - - - 0x02A47D 0A:A46D: 00        .byte $00   ; 



_off028_A46E_7C:
- D 1 - I - 0x02A47E 0A:A46E: 0E        .byte $0E   ; 
- D 1 - I - 0x02A47F 0A:A46F: 08        .byte $08   ; 
- D 1 - I - 0x02A480 0A:A470: 70        .byte $70   ; 
- D 1 - I - 0x02A481 0A:A471: 00        .byte $00   ; 
- D 1 - I - 0x02A482 0A:A472: 01        .byte $01   ; 



_off028_A473_7D:
- D 1 - I - 0x02A483 0A:A473: 0E        .byte $0E   ; 
- D 1 - I - 0x02A484 0A:A474: 28        .byte $28   ; 
- D 1 - I - 0x02A485 0A:A475: 90        .byte $90   ; 
- D 1 - I - 0x02A486 0A:A476: 00        .byte $00   ; 
- D 1 - I - 0x02A487 0A:A477: 01        .byte $01   ; 



_off028_A478_7E:
- D 1 - I - 0x02A488 0A:A478: 0E        .byte $0E   ; 
- D 1 - I - 0x02A489 0A:A479: 10        .byte $10   ; 
- D 1 - I - 0x02A48A 0A:A47A: 40        .byte $40   ; 
- D 1 - I - 0x02A48B 0A:A47B: 00        .byte $00   ; 
- D 1 - I - 0x02A48C 0A:A47C: 00        .byte $00   ; 



_off028_A47D_7F:
- D 1 - I - 0x02A48D 0A:A47D: 27        .byte $27   ; 
- D 1 - I - 0x02A48E 0A:A47E: 04        .byte $04   ; 
- D 1 - I - 0x02A48F 0A:A47F: 48        .byte $48   ; 
- D 1 - I - 0x02A490 0A:A480: 00        .byte $00   ; 
- D 1 - I - 0x02A491 0A:A481: 00        .byte $00   ; 



_off028_A482_80:
- D 1 - I - 0x02A492 0A:A482: 27        .byte $27   ; 
- D 1 - I - 0x02A493 0A:A483: 20        .byte $20   ; 
- D 1 - I - 0x02A494 0A:A484: 50        .byte $50   ; 
- D 1 - I - 0x02A495 0A:A485: 00        .byte $00   ; 
- D 1 - I - 0x02A496 0A:A486: 00        .byte $00   ; 



_off028_A487_81:
; bzk garbage
- - - - - - 0x02A497 0A:A487: 45        .byte $45   ; 
- - - - - - 0x02A498 0A:A488: 10        .byte $10   ; 
- - - - - - 0x02A499 0A:A489: 78        .byte $78   ; 
- - - - - - 0x02A49A 0A:A48A: 02        .byte $02   ; 
- - - - - - 0x02A49B 0A:A48B: 00        .byte $00   ; 



_off028_A48C_82:
- D 1 - I - 0x02A49C 0A:A48C: 0B        .byte $0B   ; 
- D 1 - I - 0x02A49D 0A:A48D: 30        .byte $30   ; 
- D 1 - I - 0x02A49E 0A:A48E: 58        .byte $58   ; 
- D 1 - I - 0x02A49F 0A:A48F: 00        .byte $00   ; 
- D 1 - I - 0x02A4A0 0A:A490: 00        .byte $00   ; 



_off028_A491_83:
- D 1 - I - 0x02A4A1 0A:A491: 0E        .byte $0E   ; 
- D 1 - I - 0x02A4A2 0A:A492: 08        .byte $08   ; 
- D 1 - I - 0x02A4A3 0A:A493: 90        .byte $90   ; 
- D 1 - I - 0x02A4A4 0A:A494: 00        .byte $00   ; 
- D 1 - I - 0x02A4A5 0A:A495: 01        .byte $01   ; 



_off028_A496_84:
; bzk garbage
- - - - - - 0x02A4A6 0A:A496: 10        .byte $10   ; 
- - - - - - 0x02A4A7 0A:A497: 30        .byte $30   ; 
- - - - - - 0x02A4A8 0A:A498: 70        .byte $70   ; 
- - - - - - 0x02A4A9 0A:A499: 02        .byte $02   ; 
- - - - - - 0x02A4AA 0A:A49A: 00        .byte $00   ; 



_off028_A49B_85:
- D 1 - I - 0x02A4AB 0A:A49B: 4B        .byte $4B   ; 
- D 1 - I - 0x02A4AC 0A:A49C: 30        .byte $30   ; 
- D 1 - I - 0x02A4AD 0A:A49D: 60        .byte $60   ; 
- D 1 - I - 0x02A4AE 0A:A49E: 00        .byte $00   ; 
- D 1 - I - 0x02A4AF 0A:A49F: 00        .byte $00   ; 



_off028_A4A0_86:
- D 1 - I - 0x02A4B0 0A:A4A0: 4B        .byte $4B   ; 
- D 1 - I - 0x02A4B1 0A:A4A1: 20        .byte $20   ; 
- D 1 - I - 0x02A4B2 0A:A4A2: 70        .byte $70   ; 
- D 1 - I - 0x02A4B3 0A:A4A3: 00        .byte $00   ; 
- D 1 - I - 0x02A4B4 0A:A4A4: 00        .byte $00   ; 



_off028_A4A5_87:
- D 1 - I - 0x02A4B5 0A:A4A5: 0E        .byte $0E   ; 
- D 1 - I - 0x02A4B6 0A:A4A6: 08        .byte $08   ; 
- D 1 - I - 0x02A4B7 0A:A4A7: 90        .byte $90   ; 
- D 1 - I - 0x02A4B8 0A:A4A8: 00        .byte $00   ; 
- D 1 - I - 0x02A4B9 0A:A4A9: 01        .byte $01   ; 



_off028_A4AA_88:
- D 1 - I - 0x02A4BA 0A:A4AA: 27        .byte $27   ; 
- D 1 - I - 0x02A4BB 0A:A4AB: 10        .byte $10   ; 
- D 1 - I - 0x02A4BC 0A:A4AC: 60        .byte $60   ; 
- D 1 - I - 0x02A4BD 0A:A4AD: 00        .byte $00   ; 
- D 1 - I - 0x02A4BE 0A:A4AE: 00        .byte $00   ; 



_off028_A4AF_89:
- D 1 - I - 0x02A4BF 0A:A4AF: 4B        .byte $4B   ; 
- D 1 - I - 0x02A4C0 0A:A4B0: 10        .byte $10   ; 
- D 1 - I - 0x02A4C1 0A:A4B1: 90        .byte $90   ; 
- D 1 - I - 0x02A4C2 0A:A4B2: 00        .byte $00   ; 
- D 1 - I - 0x02A4C3 0A:A4B3: 00        .byte $00   ; 



_off028_A4B4_8A:
- D 1 - I - 0x02A4C4 0A:A4B4: 0D        .byte $0D   ; 
- D 1 - I - 0x02A4C5 0A:A4B5: 08        .byte $08   ; 
- D 1 - I - 0x02A4C6 0A:A4B6: 88        .byte $88   ; 
- D 1 - I - 0x02A4C7 0A:A4B7: 00        .byte $00   ; 
- D 1 - I - 0x02A4C8 0A:A4B8: 00        .byte $00   ; 



_off028_A4B9_8B:
- D 1 - I - 0x02A4C9 0A:A4B9: 0D        .byte $0D   ; 
- D 1 - I - 0x02A4CA 0A:A4BA: 30        .byte $30   ; 
- D 1 - I - 0x02A4CB 0A:A4BB: 88        .byte $88   ; 
- D 1 - I - 0x02A4CC 0A:A4BC: 00        .byte $00   ; 
- D 1 - I - 0x02A4CD 0A:A4BD: 00        .byte $00   ; 



_off028_A4BE_8C:
- D 1 - I - 0x02A4CE 0A:A4BE: 4C        .byte $4C   ; 
- D 1 - I - 0x02A4CF 0A:A4BF: 20        .byte $20   ; 
- D 1 - I - 0x02A4D0 0A:A4C0: 80        .byte $80   ; 
- D 1 - I - 0x02A4D1 0A:A4C1: 00        .byte $00   ; 
- D 1 - I - 0x02A4D2 0A:A4C2: 00        .byte $00   ; 



_off028_A4C3_8D:
- D 1 - I - 0x02A4D3 0A:A4C3: 45        .byte $45   ; 
- D 1 - I - 0x02A4D4 0A:A4C4: 20        .byte $20   ; 
- D 1 - I - 0x02A4D5 0A:A4C5: B8        .byte $B8   ; 
- D 1 - I - 0x02A4D6 0A:A4C6: 02        .byte $02   ; 
- D 1 - I - 0x02A4D7 0A:A4C7: 00        .byte $00   ; 



_off028_A4C8_8E:
- D 1 - I - 0x02A4D8 0A:A4C8: 45        .byte $45   ; 
- D 1 - I - 0x02A4D9 0A:A4C9: 30        .byte $30   ; 
- D 1 - I - 0x02A4DA 0A:A4CA: B8        .byte $B8   ; 
- D 1 - I - 0x02A4DB 0A:A4CB: 02        .byte $02   ; 
- D 1 - I - 0x02A4DC 0A:A4CC: 00        .byte $00   ; 



_off028_A4CD_8F:
- D 1 - I - 0x02A4DD 0A:A4CD: 45        .byte $45   ; 
- D 1 - I - 0x02A4DE 0A:A4CE: 30        .byte $30   ; 
- D 1 - I - 0x02A4DF 0A:A4CF: B8        .byte $B8   ; 
- D 1 - I - 0x02A4E0 0A:A4D0: 00        .byte $00   ; 
- D 1 - I - 0x02A4E1 0A:A4D1: 00        .byte $00   ; 



_off028_A4D2_90:
- D 1 - I - 0x02A4E2 0A:A4D2: 45        .byte $45   ; 
- D 1 - I - 0x02A4E3 0A:A4D3: 20        .byte $20   ; 
- D 1 - I - 0x02A4E4 0A:A4D4: A8        .byte $A8   ; 
- D 1 - I - 0x02A4E5 0A:A4D5: 00        .byte $00   ; 
- D 1 - I - 0x02A4E6 0A:A4D6: 00        .byte $00   ; 



_off028_A4D7_91:
; bzk garbage
- - - - - - 0x02A4E7 0A:A4D7: 3F        .byte $3F   ; 
- - - - - - 0x02A4E8 0A:A4D8: 20        .byte $20   ; 
- - - - - - 0x02A4E9 0A:A4D9: 70        .byte $70   ; 
- - - - - - 0x02A4EA 0A:A4DA: 00        .byte $00   ; 
- - - - - - 0x02A4EB 0A:A4DB: 00        .byte $00   ; 



_off028_A4DC_92:
- D 1 - I - 0x02A4EC 0A:A4DC: 1A        .byte $1A   ; 
- D 1 - I - 0x02A4ED 0A:A4DD: 20        .byte $20   ; 
- D 1 - I - 0x02A4EE 0A:A4DE: 90        .byte $90   ; 
- D 1 - I - 0x02A4EF 0A:A4DF: 00        .byte $00   ; 
- D 1 - I - 0x02A4F0 0A:A4E0: 00        .byte $00   ; 



_off028_A4E1_93:
- D 1 - I - 0x02A4F1 0A:A4E1: 14        .byte $14   ; 
- D 1 - I - 0x02A4F2 0A:A4E2: 20        .byte $20   ; 
- D 1 - I - 0x02A4F3 0A:A4E3: 50        .byte $50   ; 
- D 1 - I - 0x02A4F4 0A:A4E4: 00        .byte $00   ; 
- D 1 - I - 0x02A4F5 0A:A4E5: 00        .byte $00   ; 



_off028_A4E6_94:
- D 1 - I - 0x02A4F6 0A:A4E6: 1A        .byte $1A   ; 
- D 1 - I - 0x02A4F7 0A:A4E7: 20        .byte $20   ; 
- D 1 - I - 0x02A4F8 0A:A4E8: B0        .byte $B0   ; 
- D 1 - I - 0x02A4F9 0A:A4E9: 00        .byte $00   ; 
- D 1 - I - 0x02A4FA 0A:A4EA: 00        .byte $00   ; 



_off028_A4EB_95:
- D 1 - I - 0x02A4FB 0A:A4EB: 15        .byte $15   ; 
- D 1 - I - 0x02A4FC 0A:A4EC: 28        .byte $28   ; 
- D 1 - I - 0x02A4FD 0A:A4ED: 78        .byte $78   ; 
- D 1 - I - 0x02A4FE 0A:A4EE: 00        .byte $00   ; 
- D 1 - I - 0x02A4FF 0A:A4EF: 00        .byte $00   ; 



_off028_A4F0_96:
- D 1 - I - 0x02A500 0A:A4F0: 40        .byte $40   ; 
- D 1 - I - 0x02A501 0A:A4F1: 20        .byte $20   ; 
- D 1 - I - 0x02A502 0A:A4F2: 80        .byte $80   ; 
- D 1 - I - 0x02A503 0A:A4F3: 00        .byte $00   ; 
- D 1 - I - 0x02A504 0A:A4F4: 00        .byte $00   ; 



_off028_A4F5_97:
; bzk garbage
- - - - - - 0x02A505 0A:A4F5: 0D        .byte $0D   ; 
- - - - - - 0x02A506 0A:A4F6: 20        .byte $20   ; 
- - - - - - 0x02A507 0A:A4F7: 60        .byte $60   ; 
- - - - - - 0x02A508 0A:A4F8: 00        .byte $00   ; 
- - - - - - 0x02A509 0A:A4F9: 00        .byte $00   ; 



_off028_A4FA_98:
- D 1 - I - 0x02A50A 0A:A4FA: 0F        .byte $0F   ; 
- D 1 - I - 0x02A50B 0A:A4FB: 20        .byte $20   ; 
- D 1 - I - 0x02A50C 0A:A4FC: 80        .byte $80   ; 
- D 1 - I - 0x02A50D 0A:A4FD: 00        .byte $00   ; 
- D 1 - I - 0x02A50E 0A:A4FE: 00        .byte $00   ; 



_off028_A4FF_99:
- D 1 - I - 0x02A50F 0A:A4FF: 15        .byte $15   ; 
- D 1 - I - 0x02A510 0A:A500: 30        .byte $30   ; 
- D 1 - I - 0x02A511 0A:A501: 68        .byte $68   ; 
- D 1 - I - 0x02A512 0A:A502: 00        .byte $00   ; 
- D 1 - I - 0x02A513 0A:A503: 00        .byte $00   ; 



_off028_A504_9A:
- D 1 - I - 0x02A514 0A:A504: 15        .byte $15   ; 
- D 1 - I - 0x02A515 0A:A505: 20        .byte $20   ; 
- D 1 - I - 0x02A516 0A:A506: C8        .byte $C8   ; 
- D 1 - I - 0x02A517 0A:A507: 00        .byte $00   ; 
- D 1 - I - 0x02A518 0A:A508: 00        .byte $00   ; 



_off028_A509_9B:
- D 1 - I - 0x02A519 0A:A509: 27        .byte $27   ; 
- D 1 - I - 0x02A51A 0A:A50A: 00        .byte $00   ; 
- D 1 - I - 0x02A51B 0A:A50B: 30        .byte $30   ; 
- D 1 - I - 0x02A51C 0A:A50C: 00        .byte $00   ; 
- D 1 - I - 0x02A51D 0A:A50D: 00        .byte $00   ; 



_off028_A50E_9C:
- D 1 - I - 0x02A51E 0A:A50E: 27        .byte $27   ; 
- D 1 - I - 0x02A51F 0A:A50F: 10        .byte $10   ; 
- D 1 - I - 0x02A520 0A:A510: 30        .byte $30   ; 
- D 1 - I - 0x02A521 0A:A511: 00        .byte $00   ; 
- D 1 - I - 0x02A522 0A:A512: 00        .byte $00   ; 



_off028_A513_9D:
- D 1 - I - 0x02A523 0A:A513: 4A        .byte $4A   ; 
- D 1 - I - 0x02A524 0A:A514: 20        .byte $20   ; 
- D 1 - I - 0x02A525 0A:A515: 60        .byte $60   ; 
- D 1 - I - 0x02A526 0A:A516: 00        .byte $00   ; 
- D 1 - I - 0x02A527 0A:A517: 00        .byte $00   ; 



_off028_A518_9E:
; bzk garbage
- - - - - - 0x02A528 0A:A518: 02        .byte $02   ; 
- - - - - - 0x02A529 0A:A519: 20        .byte $20   ; 
- - - - - - 0x02A52A 0A:A51A: C0        .byte $C0   ; 
- - - - - - 0x02A52B 0A:A51B: 00        .byte $00   ; 
- - - - - - 0x02A52C 0A:A51C: 00        .byte $00   ; 



_off028_A51D_9F:
- D 1 - I - 0x02A52D 0A:A51D: 32        .byte $32   ; 
- D 1 - I - 0x02A52E 0A:A51E: 00        .byte $00   ; 
- D 1 - I - 0x02A52F 0A:A51F: B0        .byte $B0   ; 
- D 1 - I - 0x02A530 0A:A520: 00        .byte $00   ; 
- D 1 - I - 0x02A531 0A:A521: 00        .byte $00   ; 



_off028_A522_A0:
- D 1 - I - 0x02A532 0A:A522: 32        .byte $32   ; 
- D 1 - I - 0x02A533 0A:A523: 20        .byte $20   ; 
- D 1 - I - 0x02A534 0A:A524: 50        .byte $50   ; 
- D 1 - I - 0x02A535 0A:A525: 00        .byte $00   ; 
- D 1 - I - 0x02A536 0A:A526: 00        .byte $00   ; 



_off028_A527_A1:
; bzk garbage
- - - - - - 0x02A537 0A:A527: 13        .byte $13   ; 
- - - - - - 0x02A538 0A:A528: 20        .byte $20   ; 
- - - - - - 0x02A539 0A:A529: C0        .byte $C0   ; 
- - - - - - 0x02A53A 0A:A52A: 00        .byte $00   ; 
- - - - - - 0x02A53B 0A:A52B: 00        .byte $00   ; 



_off028_A52C_A2:
- D 1 - I - 0x02A53C 0A:A52C: 0B        .byte $0B   ; 
- D 1 - I - 0x02A53D 0A:A52D: 38        .byte $38   ; 
- D 1 - I - 0x02A53E 0A:A52E: 78        .byte $78   ; 
- D 1 - I - 0x02A53F 0A:A52F: 00        .byte $00   ; 
- D 1 - I - 0x02A540 0A:A530: 00        .byte $00   ; 



_off028_A531_A3:
- D 1 - I - 0x02A541 0A:A531: 0B        .byte $0B   ; 
- D 1 - I - 0x02A542 0A:A532: 10        .byte $10   ; 
- D 1 - I - 0x02A543 0A:A533: B8        .byte $B8   ; 
- D 1 - I - 0x02A544 0A:A534: 00        .byte $00   ; 
- D 1 - I - 0x02A545 0A:A535: 00        .byte $00   ; 



_off028_A536_A4:
- D 1 - I - 0x02A546 0A:A536: 17        .byte $17   ; 
- D 1 - I - 0x02A547 0A:A537: 20        .byte $20   ; 
- D 1 - I - 0x02A548 0A:A538: C0        .byte $C0   ; 
- D 1 - I - 0x02A549 0A:A539: 00        .byte $00   ; 
- D 1 - I - 0x02A54A 0A:A53A: 00        .byte $00   ; 



_off028_A53B_A5:
- D 1 - I - 0x02A54B 0A:A53B: 13        .byte $13   ; 
- D 1 - I - 0x02A54C 0A:A53C: 20        .byte $20   ; 
- D 1 - I - 0x02A54D 0A:A53D: 70        .byte $70   ; 
- D 1 - I - 0x02A54E 0A:A53E: 00        .byte $00   ; 
- D 1 - I - 0x02A54F 0A:A53F: 00        .byte $00   ; 



_off028_A540_A6:
- D 1 - I - 0x02A550 0A:A540: 0E        .byte $0E   ; 
- D 1 - I - 0x02A551 0A:A541: 20        .byte $20   ; 
- D 1 - I - 0x02A552 0A:A542: A0        .byte $A0   ; 
- D 1 - I - 0x02A553 0A:A543: 00        .byte $00   ; 
- D 1 - I - 0x02A554 0A:A544: 01        .byte $01   ; 



_off028_A545_A7:
- D 1 - I - 0x02A555 0A:A545: 0E        .byte $0E   ; 
- D 1 - I - 0x02A556 0A:A546: 20        .byte $20   ; 
- D 1 - I - 0x02A557 0A:A547: 50        .byte $50   ; 
- D 1 - I - 0x02A558 0A:A548: 00        .byte $00   ; 
- D 1 - I - 0x02A559 0A:A549: 00        .byte $00   ; 



_off028_A54A_A8:
- D 1 - I - 0x02A55A 0A:A54A: 3D        .byte $3D   ; 
- D 1 - I - 0x02A55B 0A:A54B: 20        .byte $20   ; 
- D 1 - I - 0x02A55C 0A:A54C: B8        .byte $B8   ; 
- D 1 - I - 0x02A55D 0A:A54D: 00        .byte $00   ; 
- D 1 - I - 0x02A55E 0A:A54E: 00        .byte $00   ; 



_off028_A54F_A9:
- D 1 - I - 0x02A55F 0A:A54F: 3D        .byte $3D   ; 
- D 1 - I - 0x02A560 0A:A550: 20        .byte $20   ; 
- D 1 - I - 0x02A561 0A:A551: 68        .byte $68   ; 
- D 1 - I - 0x02A562 0A:A552: 00        .byte $00   ; 
- D 1 - I - 0x02A563 0A:A553: 00        .byte $00   ; 



_off028_A554_AA:
- D 1 - I - 0x02A564 0A:A554: 0F        .byte $0F   ; 
- D 1 - I - 0x02A565 0A:A555: 00        .byte $00   ; 
- D 1 - I - 0x02A566 0A:A556: 70        .byte $70   ; 
- D 1 - I - 0x02A567 0A:A557: 00        .byte $00   ; 
- D 1 - I - 0x02A568 0A:A558: 00        .byte $00   ; 



_off028_A559_AB:
- D 1 - I - 0x02A569 0A:A559: 4D        .byte $4D   ; 
- D 1 - I - 0x02A56A 0A:A55A: 00        .byte $00   ; 
- D 1 - I - 0x02A56B 0A:A55B: 48        .byte $48   ; 
- D 1 - I - 0x02A56C 0A:A55C: 00        .byte $00   ; 
- D 1 - I - 0x02A56D 0A:A55D: 00        .byte $00   ; 



_off028_A55E_AC:
- D 1 - I - 0x02A56E 0A:A55E: 4E        .byte $4E   ; 
- D 1 - I - 0x02A56F 0A:A55F: 30        .byte $30   ; 
- D 1 - I - 0x02A570 0A:A560: 98        .byte $98   ; 
- D 1 - I - 0x02A571 0A:A561: 00        .byte $00   ; 
- D 1 - I - 0x02A572 0A:A562: 00        .byte $00   ; 



_off028_A563_AD:
- D 1 - I - 0x02A573 0A:A563: 13        .byte $13   ; 
- D 1 - I - 0x02A574 0A:A564: 20        .byte $20   ; 
- D 1 - I - 0x02A575 0A:A565: 80        .byte $80   ; 
- D 1 - I - 0x02A576 0A:A566: 00        .byte $00   ; 
- D 1 - I - 0x02A577 0A:A567: 00        .byte $00   ; 



_off028_A568_AE:
- D 1 - I - 0x02A578 0A:A568: 0E        .byte $0E   ; 
- D 1 - I - 0x02A579 0A:A569: 20        .byte $20   ; 
- D 1 - I - 0x02A57A 0A:A56A: B0        .byte $B0   ; 
- D 1 - I - 0x02A57B 0A:A56B: 00        .byte $00   ; 
- D 1 - I - 0x02A57C 0A:A56C: 00        .byte $00   ; 



_off028_A56D_AF:
- D 1 - I - 0x02A57D 0A:A56D: 0E        .byte $0E   ; 
- D 1 - I - 0x02A57E 0A:A56E: 30        .byte $30   ; 
- D 1 - I - 0x02A57F 0A:A56F: B0        .byte $B0   ; 
- D 1 - I - 0x02A580 0A:A570: 00        .byte $00   ; 
- D 1 - I - 0x02A581 0A:A571: 00        .byte $00   ; 



_off028_A572_B0:
- D 1 - I - 0x02A582 0A:A572: 0F        .byte $0F   ; 
- D 1 - I - 0x02A583 0A:A573: 00        .byte $00   ; 
- D 1 - I - 0x02A584 0A:A574: 60        .byte $60   ; 
- D 1 - I - 0x02A585 0A:A575: 00        .byte $00   ; 
- D 1 - I - 0x02A586 0A:A576: 00        .byte $00   ; 



_off028_A577_B1:
- D 1 - I - 0x02A587 0A:A577: 4F        .byte $4F   ; 
- D 1 - I - 0x02A588 0A:A578: 14        .byte $14   ; 
- D 1 - I - 0x02A589 0A:A579: C0        .byte $C0   ; 
- D 1 - I - 0x02A58A 0A:A57A: 00        .byte $00   ; 
- D 1 - I - 0x02A58B 0A:A57B: 00        .byte $00   ; 



_off028_A57C_B2:
- D 1 - I - 0x02A58C 0A:A57C: 0E        .byte $0E   ; 
- D 1 - I - 0x02A58D 0A:A57D: 10        .byte $10   ; 
- D 1 - I - 0x02A58E 0A:A57E: 80        .byte $80   ; 
- D 1 - I - 0x02A58F 0A:A57F: 00        .byte $00   ; 
- D 1 - I - 0x02A590 0A:A580: 00        .byte $00   ; 



_off028_A581_B3:
- D 1 - I - 0x02A591 0A:A581: 0E        .byte $0E   ; 
- D 1 - I - 0x02A592 0A:A582: 30        .byte $30   ; 
- D 1 - I - 0x02A593 0A:A583: 80        .byte $80   ; 
- D 1 - I - 0x02A594 0A:A584: 00        .byte $00   ; 
- D 1 - I - 0x02A595 0A:A585: 01        .byte $01   ; 



_off028_A586_B4:
; bzk garbage
- - - - - - 0x02A596 0A:A586: 11        .byte $11   ; 
- - - - - - 0x02A597 0A:A587: 30        .byte $30   ; 
- - - - - - 0x02A598 0A:A588: 90        .byte $90   ; 
- - - - - - 0x02A599 0A:A589: 00        .byte $00   ; 
- - - - - - 0x02A59A 0A:A58A: 00        .byte $00   ; 



_off028_A58B_B5:
- D 1 - I - 0x02A59B 0A:A58B: 11        .byte $11   ; 
- D 1 - I - 0x02A59C 0A:A58C: 20        .byte $20   ; 
- D 1 - I - 0x02A59D 0A:A58D: 60        .byte $60   ; 
- D 1 - I - 0x02A59E 0A:A58E: 00        .byte $00   ; 
- D 1 - I - 0x02A59F 0A:A58F: 00        .byte $00   ; 



_off028_A590_B6:
- D 1 - I - 0x02A5A0 0A:A590: 15        .byte $15   ; 
- D 1 - I - 0x02A5A1 0A:A591: 20        .byte $20   ; 
- D 1 - I - 0x02A5A2 0A:A592: B8        .byte $B8   ; 
- D 1 - I - 0x02A5A3 0A:A593: 00        .byte $00   ; 
- D 1 - I - 0x02A5A4 0A:A594: 00        .byte $00   ; 



_off028_A595_B7:
; bzk garbage
- - - - - - 0x02A5A5 0A:A595: 43        .byte $43   ; 
- - - - - - 0x02A5A6 0A:A596: 38        .byte $38   ; 
- - - - - - 0x02A5A7 0A:A597: 60        .byte $60   ; 
- - - - - - 0x02A5A8 0A:A598: 01        .byte $01   ; 
- - - - - - 0x02A5A9 0A:A599: 00        .byte $00   ; 



_off028_A59A_B8:
; bzk garbage
- - - - - - 0x02A5AA 0A:A59A: 32        .byte $32   ; 
- - - - - - 0x02A5AB 0A:A59B: 00        .byte $00   ; 
- - - - - - 0x02A5AC 0A:A59C: 80        .byte $80   ; 
- - - - - - 0x02A5AD 0A:A59D: 00        .byte $00   ; 
- - - - - - 0x02A5AE 0A:A59E: 00        .byte $00   ; 



_off028_A59F_B9:
- D 1 - I - 0x02A5AF 0A:A59F: 3E        .byte $3E   ; 
- D 1 - I - 0x02A5B0 0A:A5A0: 20        .byte $20   ; 
- D 1 - I - 0x02A5B1 0A:A5A1: D8        .byte $D8   ; 
- D 1 - I - 0x02A5B2 0A:A5A2: 00        .byte $00   ; 
- D 1 - I - 0x02A5B3 0A:A5A3: 00        .byte $00   ; 



_off028_A5A4_BA:
- D 1 - I - 0x02A5B4 0A:A5A4: 32        .byte $32   ; 
- D 1 - I - 0x02A5B5 0A:A5A5: 08        .byte $08   ; 
- D 1 - I - 0x02A5B6 0A:A5A6: 70        .byte $70   ; 
- D 1 - I - 0x02A5B7 0A:A5A7: 00        .byte $00   ; 
- D 1 - I - 0x02A5B8 0A:A5A8: 00        .byte $00   ; 



_off028_A5A9_BB:
- D 1 - I - 0x02A5B9 0A:A5A9: 11        .byte $11   ; 
- D 1 - I - 0x02A5BA 0A:A5AA: 20        .byte $20   ; 
- D 1 - I - 0x02A5BB 0A:A5AB: 50        .byte $50   ; 
- D 1 - I - 0x02A5BC 0A:A5AC: 00        .byte $00   ; 
- D 1 - I - 0x02A5BD 0A:A5AD: 00        .byte $00   ; 



_off028_A5AE_BC:
- D 1 - I - 0x02A5BE 0A:A5AE: 50        .byte $50   ; 
- D 1 - I - 0x02A5BF 0A:A5AF: 20        .byte $20   ; 
- D 1 - I - 0x02A5C0 0A:A5B0: B0        .byte $B0   ; 
- D 1 - I - 0x02A5C1 0A:A5B1: 00        .byte $00   ; 
- D 1 - I - 0x02A5C2 0A:A5B2: 00        .byte $00   ; 



_off028_A5B3_BD:
- D 1 - I - 0x02A5C3 0A:A5B3: 0E        .byte $0E   ; 
- D 1 - I - 0x02A5C4 0A:A5B4: 30        .byte $30   ; 
- D 1 - I - 0x02A5C5 0A:A5B5: 60        .byte $60   ; 
- D 1 - I - 0x02A5C6 0A:A5B6: 00        .byte $00   ; 
- D 1 - I - 0x02A5C7 0A:A5B7: 00        .byte $00   ; 



_off028_A5B8_BE:
- D 1 - I - 0x02A5C8 0A:A5B8: 14        .byte $14   ; 
- D 1 - I - 0x02A5C9 0A:A5B9: 20        .byte $20   ; 
- D 1 - I - 0x02A5CA 0A:A5BA: 48        .byte $48   ; 
- D 1 - I - 0x02A5CB 0A:A5BB: 00        .byte $00   ; 
- D 1 - I - 0x02A5CC 0A:A5BC: 00        .byte $00   ; 



_off028_A5BD_BF:
- D 1 - I - 0x02A5CD 0A:A5BD: 51        .byte $51   ; 
- D 1 - I - 0x02A5CE 0A:A5BE: 20        .byte $20   ; 
- D 1 - I - 0x02A5CF 0A:A5BF: 40        .byte $40   ; 
- D 1 - I - 0x02A5D0 0A:A5C0: 00        .byte $00   ; 
- D 1 - I - 0x02A5D1 0A:A5C1: 00        .byte $00   ; 



_off028_A5C2_C0:
- D 1 - I - 0x02A5D2 0A:A5C2: 0D        .byte $0D   ; 
- D 1 - I - 0x02A5D3 0A:A5C3: 20        .byte $20   ; 
- D 1 - I - 0x02A5D4 0A:A5C4: 70        .byte $70   ; 
- D 1 - I - 0x02A5D5 0A:A5C5: 00        .byte $00   ; 
- D 1 - I - 0x02A5D6 0A:A5C6: 00        .byte $00   ; 



_off028_A5C7_C1:
- D 1 - I - 0x02A5D7 0A:A5C7: 14        .byte $14   ; 
- D 1 - I - 0x02A5D8 0A:A5C8: 20        .byte $20   ; 
- D 1 - I - 0x02A5D9 0A:A5C9: 60        .byte $60   ; 
- D 1 - I - 0x02A5DA 0A:A5CA: 00        .byte $00   ; 
- D 1 - I - 0x02A5DB 0A:A5CB: 00        .byte $00   ; 



_off028_A5CC_C2:
- D 1 - I - 0x02A5DC 0A:A5CC: 3F        .byte $3F   ; 
- D 1 - I - 0x02A5DD 0A:A5CD: 20        .byte $20   ; 
- D 1 - I - 0x02A5DE 0A:A5CE: 60        .byte $60   ; 
- D 1 - I - 0x02A5DF 0A:A5CF: 00        .byte $00   ; 
- D 1 - I - 0x02A5E0 0A:A5D0: 00        .byte $00   ; 



_off028_A5D1_C3:
- D 1 - I - 0x02A5E1 0A:A5D1: 45        .byte $45   ; 
- D 1 - I - 0x02A5E2 0A:A5D2: 10        .byte $10   ; 
- D 1 - I - 0x02A5E3 0A:A5D3: A8        .byte $A8   ; 
- D 1 - I - 0x02A5E4 0A:A5D4: 02        .byte $02   ; 
- D 1 - I - 0x02A5E5 0A:A5D5: 00        .byte $00   ; 



_off028_A5D6_C4:
- D 1 - I - 0x02A5E6 0A:A5D6: 3F        .byte $3F   ; 
- D 1 - I - 0x02A5E7 0A:A5D7: 20        .byte $20   ; 
- D 1 - I - 0x02A5E8 0A:A5D8: C0        .byte $C0   ; 
- D 1 - I - 0x02A5E9 0A:A5D9: 00        .byte $00   ; 
- D 1 - I - 0x02A5EA 0A:A5DA: 00        .byte $00   ; 



_off028_A5DB_C5:
- D 1 - I - 0x02A5EB 0A:A5DB: 19        .byte $19   ; 
- D 1 - I - 0x02A5EC 0A:A5DC: 20        .byte $20   ; 
- D 1 - I - 0x02A5ED 0A:A5DD: 80        .byte $80   ; 
- D 1 - I - 0x02A5EE 0A:A5DE: 00        .byte $00   ; 
- D 1 - I - 0x02A5EF 0A:A5DF: 00        .byte $00   ; 



_off028_A5E0_C6:
_off028_A5E0_C7:
_off028_A5E0_C8:
_off028_A5E0_C9:
_off028_A5E0_CA:
_off028_A5E0_CB:
_off028_A5E0_CC:
_off028_A5E0_CD:
_off028_A5E0_CE:
_off028_A5E0_CF:
- D 1 - I - 0x02A5F0 0A:A5E0: 40        .byte $40   ; 
- D 1 - I - 0x02A5F1 0A:A5E1: 30        .byte $30   ; 
- D 1 - I - 0x02A5F2 0A:A5E2: 60        .byte $60   ; 
- D 1 - I - 0x02A5F3 0A:A5E3: 00        .byte $00   ; 
- D 1 - I - 0x02A5F4 0A:A5E4: 00        .byte $00   ; 



_off028_A5E5_D0:
- D 1 - I - 0x02A5F5 0A:A5E5: 11        .byte $11   ; 
- D 1 - I - 0x02A5F6 0A:A5E6: 08        .byte $08   ; 
- D 1 - I - 0x02A5F7 0A:A5E7: 80        .byte $80   ; 
- D 1 - I - 0x02A5F8 0A:A5E8: 00        .byte $00   ; 
- D 1 - I - 0x02A5F9 0A:A5E9: 00        .byte $00   ; 



_off028_A5EA_D1:
- D 1 - I - 0x02A5FA 0A:A5EA: 02        .byte $02   ; 
- D 1 - I - 0x02A5FB 0A:A5EB: 20        .byte $20   ; 
- D 1 - I - 0x02A5FC 0A:A5EC: C0        .byte $C0   ; 
- D 1 - I - 0x02A5FD 0A:A5ED: 00        .byte $00   ; 
- D 1 - I - 0x02A5FE 0A:A5EE: 00        .byte $00   ; 



_off028_A5EF_D2:
- D 1 - I - 0x02A5FF 0A:A5EF: 48        .byte $48   ; 
- D 1 - I - 0x02A600 0A:A5F0: 20        .byte $20   ; 
- D 1 - I - 0x02A601 0A:A5F1: 60        .byte $60   ; 
- D 1 - I - 0x02A602 0A:A5F2: 00        .byte $00   ; 
- D 1 - I - 0x02A603 0A:A5F3: 00        .byte $00   ; 



_off028_A5F4_D3:
- D 1 - I - 0x02A604 0A:A5F4: 18        .byte $18   ; 
- D 1 - I - 0x02A605 0A:A5F5: 20        .byte $20   ; 
- D 1 - I - 0x02A606 0A:A5F6: 40        .byte $40   ; 
- D 1 - I - 0x02A607 0A:A5F7: 40        .byte $40   ; 
- D 1 - I - 0x02A608 0A:A5F8: 40        .byte $40   ; 



_off028_A5F9_D4:
- D 1 - I - 0x02A609 0A:A5F9: 0C        .byte $0C   ; 
- D 1 - I - 0x02A60A 0A:A5FA: 20        .byte $20   ; 
- D 1 - I - 0x02A60B 0A:A5FB: 98        .byte $98   ; 
- D 1 - I - 0x02A60C 0A:A5FC: 00        .byte $00   ; 
- D 1 - I - 0x02A60D 0A:A5FD: 00        .byte $00   ; 



_off028_A5FE_D5:
- - - - - - 0x02A60E 0A:A5FE: 10        .byte $10   ; 
- - - - - - 0x02A60F 0A:A5FF: 20        .byte $20   ; 
- - - - - - 0x02A610 0A:A600: 40        .byte $40   ; 
- - - - - - 0x02A611 0A:A601: 00        .byte $00   ; 
- - - - - - 0x02A612 0A:A602: 00        .byte $00   ; 



_off028_A603_D6:
- - - - - - 0x02A613 0A:A603: 1A        .byte $1A   ; 
- - - - - - 0x02A614 0A:A604: 20        .byte $20   ; 
- - - - - - 0x02A615 0A:A605: 50        .byte $50   ; 
- - - - - - 0x02A616 0A:A606: 00        .byte $00   ; 
- - - - - - 0x02A617 0A:A607: 00        .byte $00   ; 



_off028_A608_D7:
- - - - - - 0x02A618 0A:A608: 13        .byte $13   ; 
- - - - - - 0x02A619 0A:A609: 20        .byte $20   ; 
- - - - - - 0x02A61A 0A:A60A: A0        .byte $A0   ; 
- - - - - - 0x02A61B 0A:A60B: 00        .byte $00   ; 
- - - - - - 0x02A61C 0A:A60C: 00        .byte $00   ; 



_off028_A60D_D8:
- - - - - - 0x02A61D 0A:A60D: 3D        .byte $3D   ; 
- - - - - - 0x02A61E 0A:A60E: 20        .byte $20   ; 
- - - - - - 0x02A61F 0A:A60F: 88        .byte $88   ; 
- - - - - - 0x02A620 0A:A610: 00        .byte $00   ; 
- - - - - - 0x02A621 0A:A611: 00        .byte $00   ; 



_off028_A612_D9:
- - - - - - 0x02A622 0A:A612: 0F        .byte $0F   ; 
- - - - - - 0x02A623 0A:A613: 30        .byte $30   ; 
- - - - - - 0x02A624 0A:A614: A0        .byte $A0   ; 
- - - - - - 0x02A625 0A:A615: 00        .byte $00   ; 
- - - - - - 0x02A626 0A:A616: 00        .byte $00   ; 



_off028_A617_DA:
- - - - - - 0x02A627 0A:A617: 45        .byte $45   ; 
- - - - - - 0x02A628 0A:A618: 10        .byte $10   ; 
- - - - - - 0x02A629 0A:A619: 78        .byte $78   ; 
- - - - - - 0x02A62A 0A:A61A: 02        .byte $02   ; 
- - - - - - 0x02A62B 0A:A61B: 00        .byte $00   ; 



_off028_A61C_DB:
- - - - - - 0x02A62C 0A:A61C: 45        .byte $45   ; 
- - - - - - 0x02A62D 0A:A61D: 10        .byte $10   ; 
- - - - - - 0x02A62E 0A:A61E: 98        .byte $98   ; 
- - - - - - 0x02A62F 0A:A61F: 02        .byte $02   ; 
- - - - - - 0x02A630 0A:A620: 00        .byte $00   ; 



_off028_A621_DC:
- - - - - - 0x02A631 0A:A621: 0F        .byte $0F   ; 
- - - - - - 0x02A632 0A:A622: 00        .byte $00   ; 
- - - - - - 0x02A633 0A:A623: 90        .byte $90   ; 
- - - - - - 0x02A634 0A:A624: 00        .byte $00   ; 
- - - - - - 0x02A635 0A:A625: 00        .byte $00   ; 



_off028_A626_DD:
_off028_A626_DF:
; bzk garbage
- - - - - - 0x02A636 0A:A626: 13        .byte $13   ; 
- - - - - - 0x02A637 0A:A627: 20        .byte $20   ; 
- - - - - - 0x02A638 0A:A628: 70        .byte $70   ; 
- - - - - - 0x02A639 0A:A629: 00        .byte $00   ; 
- - - - - - 0x02A63A 0A:A62A: 00        .byte $00   ; 



_off028_A62B_DE:
- D 1 - I - 0x02A63B 0A:A62B: 47        .byte $47   ; 
- D 1 - I - 0x02A63C 0A:A62C: 20        .byte $20   ; 
- D 1 - I - 0x02A63D 0A:A62D: 80        .byte $80   ; 
- D 1 - I - 0x02A63E 0A:A62E: 00        .byte $00   ; 
- D 1 - I - 0x02A63F 0A:A62F: 00        .byte $00   ; 



_off028_A630_E0:
- - - - - - 0x02A640 0A:A630: 19        .byte $19   ; 
- - - - - - 0x02A641 0A:A631: 20        .byte $20   ; 
- - - - - - 0x02A642 0A:A632: 90        .byte $90   ; 
- - - - - - 0x02A643 0A:A633: 00        .byte $00   ; 
- - - - - - 0x02A644 0A:A634: 00        .byte $00   ; 



_off028_A635_E1:
- - - - - - 0x02A645 0A:A635: 2B        .byte $2B   ; 
- - - - - - 0x02A646 0A:A636: 08        .byte $08   ; 
- - - - - - 0x02A647 0A:A637: 88        .byte $88   ; 
- - - - - - 0x02A648 0A:A638: 00        .byte $00   ; 
- - - - - - 0x02A649 0A:A639: 00        .byte $00   ; 



_off028_A63A_E2:
- - - - - - 0x02A64A 0A:A63A: 16        .byte $16   ; 
- - - - - - 0x02A64B 0A:A63B: 20        .byte $20   ; 
- - - - - - 0x02A64C 0A:A63C: 70        .byte $70   ; 
- - - - - - 0x02A64D 0A:A63D: 00        .byte $00   ; 
- - - - - - 0x02A64E 0A:A63E: 00        .byte $00   ; 



_off028_A63F_E3:
- - - - - - 0x02A64F 0A:A63F: 2C        .byte $2C   ; 
- - - - - - 0x02A650 0A:A640: 10        .byte $10   ; 
- - - - - - 0x02A651 0A:A641: 78        .byte $78   ; 
- - - - - - 0x02A652 0A:A642: 03        .byte $03   ; 
- - - - - - 0x02A653 0A:A643: 00        .byte $00   ; 



tbl_A644:
; see con_A644
- - - - - - 0x02A654 0A:A644: 40 A8     .word _off030_A840_00   ; unused 0x02819D
- - - - - - 0x02A656 0A:A646: 44 A8     .word _off030_A844_01   ; unused, index doesn't exist
- D 1 - - - 0x02A658 0A:A648: 48 A8     .word _off030_A848_02
- - - - - - 0x02A65A 0A:A64A: 4C A8     .word _off030_A84C_03   ; unused, index doesn't exist
- - - - - - 0x02A65C 0A:A64C: 50 A8     .word _off030_A850_04   ; unused, index doesn't exist
- D 1 - - - 0x02A65E 0A:A64E: 54 A8     .word _off030_A854_05
- - - - - - 0x02A660 0A:A650: 58 A8     .word _off030_A858_06   ; unused, index doesn't exist
- D 1 - - - 0x02A662 0A:A652: 5C A8     .word _off030_A85C_07
- D 1 - - - 0x02A664 0A:A654: 60 A8     .word _off030_A860_08
- - - - - - 0x02A666 0A:A656: 64 A8     .word _off030_A864_09   ; unused, index doesn't exist
- D 1 - - - 0x02A668 0A:A658: 68 A8     .word _off030_A868_0A
- D 1 - - - 0x02A66A 0A:A65A: 6C A8     .word _off030_A86C_0B
- D 1 - - - 0x02A66C 0A:A65C: 70 A8     .word _off030_A870_0C
- D 1 - - - 0x02A66E 0A:A65E: 74 A8     .word _off030_A874_0D
- - - - - - 0x02A670 0A:A660: 78 A8     .word _off030_A878_0E   ; unused, index doesn't exist
- D 1 - - - 0x02A672 0A:A662: 7C A8     .word _off030_A87C_0F
- D 1 - - - 0x02A674 0A:A664: 80 A8     .word _off030_A880_10
- D 1 - - - 0x02A676 0A:A666: 84 A8     .word _off030_A884_11
- D 1 - - - 0x02A678 0A:A668: 88 A8     .word _off030_A888_12
- D 1 - - - 0x02A67A 0A:A66A: 8C A8     .word _off030_A88C_13
- - - - - - 0x02A67C 0A:A66C: 90 A8     .word _off030_A890_14   ; unused, index doesn't exist
- D 1 - - - 0x02A67E 0A:A66E: 94 A8     .word _off030_A894_15
- D 1 - - - 0x02A680 0A:A670: 98 A8     .word _off030_A898_16
- D 1 - - - 0x02A682 0A:A672: 9C A8     .word _off030_A89C_17
- - - - - - 0x02A684 0A:A674: A0 A8     .word _off030_A8A0_18   ; unused, index doesn't exist
- D 1 - - - 0x02A686 0A:A676: A4 A8     .word _off030_A8A4_19
- D 1 - - - 0x02A688 0A:A678: A8 A8     .word _off030_A8A8_1A
- D 1 - - - 0x02A68A 0A:A67A: AC A8     .word _off030_A8AC_1B
- D 1 - - - 0x02A68C 0A:A67C: B0 A8     .word _off030_A8B0_1C
- D 1 - - - 0x02A68E 0A:A67E: B4 A8     .word _off030_A8B4_1D
- D 1 - - - 0x02A690 0A:A680: B8 A8     .word _off030_A8B8_1E
- D 1 - - - 0x02A692 0A:A682: BC A8     .word _off030_A8BC_1F
- D 1 - - - 0x02A694 0A:A684: C0 A8     .word _off030_A8C0_20
- D 1 - - - 0x02A696 0A:A686: C4 A8     .word _off030_A8C4_21
- D 1 - - - 0x02A698 0A:A688: C8 A8     .word _off030_A8C8_22
- D 1 - - - 0x02A69A 0A:A68A: CC A8     .word _off030_A8CC_23
- D 1 - - - 0x02A69C 0A:A68C: D0 A8     .word _off030_A8D0_24
- D 1 - - - 0x02A69E 0A:A68E: D4 A8     .word _off030_A8D4_25
- D 1 - - - 0x02A6A0 0A:A690: D8 A8     .word _off030_A8D8_26
- D 1 - - - 0x02A6A2 0A:A692: DC A8     .word _off030_A8DC_27
- - - - - - 0x02A6A4 0A:A694: E0 A8     .word _off030_A8E0_28   ; unused, index doesn't exist
- D 1 - - - 0x02A6A6 0A:A696: E4 A8     .word _off030_A8E4_29
- - - - - - 0x02A6A8 0A:A698: E8 A8     .word _off030_A8E8_2A   ; unused, index doesn't exist
- - - - - - 0x02A6AA 0A:A69A: EC A8     .word _off030_A8EC_2B   ; unused, index doesn't exist
- D 1 - - - 0x02A6AC 0A:A69C: F0 A8     .word _off030_A8F0_2C
- D 1 - - - 0x02A6AE 0A:A69E: F4 A8     .word _off030_A8F4_2D
- D 1 - - - 0x02A6B0 0A:A6A0: F8 A8     .word _off030_A8F8_2E
- D 1 - - - 0x02A6B2 0A:A6A2: FC A8     .word _off030_A8FC_2F
- D 1 - - - 0x02A6B4 0A:A6A4: 00 A9     .word _off030_A900_30
- D 1 - - - 0x02A6B6 0A:A6A6: 04 A9     .word _off030_A904_31
- D 1 - - - 0x02A6B8 0A:A6A8: 08 A9     .word _off030_A908_32
- D 1 - - - 0x02A6BA 0A:A6AA: 0C A9     .word _off030_A90C_33
- D 1 - - - 0x02A6BC 0A:A6AC: 10 A9     .word _off030_A910_34
- D 1 - - - 0x02A6BE 0A:A6AE: 14 A9     .word _off030_A914_35
- - - - - - 0x02A6C0 0A:A6B0: 18 A9     .word _off030_A918_36   ; unused, index doesn't exist
- D 1 - - - 0x02A6C2 0A:A6B2: 1C A9     .word _off030_A91C_37
- D 1 - - - 0x02A6C4 0A:A6B4: 20 A9     .word _off030_A920_38
- D 1 - - - 0x02A6C6 0A:A6B6: 24 A9     .word _off030_A924_39
- D 1 - - - 0x02A6C8 0A:A6B8: 28 A9     .word _off030_A928_3A
- D 1 - - - 0x02A6CA 0A:A6BA: 2C A9     .word _off030_A92C_3B
- D 1 - - - 0x02A6CC 0A:A6BC: 30 A9     .word _off030_A930_3C
- D 1 - - - 0x02A6CE 0A:A6BE: 34 A9     .word _off030_A934_3D
- D 1 - - - 0x02A6D0 0A:A6C0: 38 A9     .word _off030_A938_3E
- D 1 - - - 0x02A6D2 0A:A6C2: 3C A9     .word _off030_A93C_3F
- - - - - - 0x02A6D4 0A:A6C4: 40 A9     .word _off030_A940_40   ; unused, index doesn't exist
- D 1 - - - 0x02A6D6 0A:A6C6: 44 A9     .word _off030_A944_41
- D 1 - - - 0x02A6D8 0A:A6C8: 48 A9     .word _off030_A948_42
- D 1 - - - 0x02A6DA 0A:A6CA: 4C A9     .word _off030_A94C_43
- - - - - - 0x02A6DC 0A:A6CC: 50 A9     .word _off030_A950_44   ; unused, index doesn't exist
- D 1 - - - 0x02A6DE 0A:A6CE: 54 A9     .word _off030_A954_45
- D 1 - - - 0x02A6E0 0A:A6D0: 58 A9     .word _off030_A958_46
- D 1 - - - 0x02A6E2 0A:A6D2: 5C A9     .word _off030_A95C_47
- D 1 - - - 0x02A6E4 0A:A6D4: 60 A9     .word _off030_A960_48
- D 1 - - - 0x02A6E6 0A:A6D6: 64 A9     .word _off030_A964_49
- - - - - - 0x02A6E8 0A:A6D8: 68 A9     .word _off030_A968_4A   ; unused, index doesn't exist
- D 1 - - - 0x02A6EA 0A:A6DA: 6C A9     .word _off030_A96C_4B
- D 1 - - - 0x02A6EC 0A:A6DC: 70 A9     .word _off030_A970_4C
- D 1 - - - 0x02A6EE 0A:A6DE: 74 A9     .word _off030_A974_4D
- - - - - - 0x02A6F0 0A:A6E0: 78 A9     .word _off030_A978_4E   ; unused, index doesn't exist
- D 1 - - - 0x02A6F2 0A:A6E2: 7C A9     .word _off030_A97C_4F
- D 1 - - - 0x02A6F4 0A:A6E4: 80 A9     .word _off030_A980_50
- D 1 - - - 0x02A6F6 0A:A6E6: 84 A9     .word _off030_A984_51
- - - - - - 0x02A6F8 0A:A6E8: 88 A9     .word _off030_A988_52   ; unused, index doesn't exist
- D 1 - - - 0x02A6FA 0A:A6EA: 8C A9     .word _off030_A98C_53
- D 1 - - - 0x02A6FC 0A:A6EC: 90 A9     .word _off030_A990_54
- - - - - - 0x02A6FE 0A:A6EE: 94 A9     .word _off030_A994_55   ; unused, index doesn't exist
- - - - - - 0x02A700 0A:A6F0: 98 A9     .word _off030_A998_56   ; unused, index doesn't exist
- D 1 - - - 0x02A702 0A:A6F2: 9C A9     .word _off030_A99C_57
- D 1 - - - 0x02A704 0A:A6F4: A0 A9     .word _off030_A9A0_58
- D 1 - - - 0x02A706 0A:A6F6: A4 A9     .word _off030_A9A4_59
- D 1 - - - 0x02A708 0A:A6F8: A8 A9     .word _off030_A9A8_5A
- D 1 - - - 0x02A70A 0A:A6FA: AC A9     .word _off030_A9AC_5B
- D 1 - - - 0x02A70C 0A:A6FC: B0 A9     .word _off030_A9B0_5C
- D 1 - - - 0x02A70E 0A:A6FE: B4 A9     .word _off030_A9B4_5D
- D 1 - - - 0x02A710 0A:A700: B8 A9     .word _off030_A9B8_5E
- D 1 - - - 0x02A712 0A:A702: BC A9     .word _off030_A9BC_5F
- D 1 - - - 0x02A714 0A:A704: C0 A9     .word _off030_A9C0_60
- D 1 - - - 0x02A716 0A:A706: A0 A9     .word _off030_A9A0_61
- D 1 - - - 0x02A718 0A:A708: C4 A9     .word _off030_A9C4_62
- D 1 - - - 0x02A71A 0A:A70A: C8 A9     .word _off030_A9C8_63
- D 1 - - - 0x02A71C 0A:A70C: CC A9     .word _off030_A9CC_64
- D 1 - - - 0x02A71E 0A:A70E: D0 A9     .word _off030_A9D0_65
- D 1 - - - 0x02A720 0A:A710: D4 A9     .word _off030_A9D4_66
- D 1 - - - 0x02A722 0A:A712: D8 A9     .word _off030_A9D8_67
- D 1 - - - 0x02A724 0A:A714: DC A9     .word _off030_A9DC_68
- D 1 - - - 0x02A726 0A:A716: E0 A9     .word _off030_A9E0_69
- D 1 - - - 0x02A728 0A:A718: E4 A9     .word _off030_A9E4_6A
- D 1 - - - 0x02A72A 0A:A71A: E8 A9     .word _off030_A9E8_6B
- D 1 - - - 0x02A72C 0A:A71C: EC A9     .word _off030_A9EC_6C
- D 1 - - - 0x02A72E 0A:A71E: F0 A9     .word _off030_A9F0_6D
- D 1 - - - 0x02A730 0A:A720: F4 A9     .word _off030_A9F4_6E
- D 1 - - - 0x02A732 0A:A722: F8 A9     .word _off030_A9F8_6F
- - - - - - 0x02A734 0A:A724: FC A9     .word _off030_A9FC_70   ; unused, index doesn't exist
- D 1 - - - 0x02A736 0A:A726: 00 AA     .word _off030_AA00_71
- D 1 - - - 0x02A738 0A:A728: 04 AA     .word _off030_AA04_72
- D 1 - - - 0x02A73A 0A:A72A: 08 AA     .word _off030_AA08_73
- D 1 - - - 0x02A73C 0A:A72C: 0C AA     .word _off030_AA0C_74
- D 1 - - - 0x02A73E 0A:A72E: 10 AA     .word _off030_AA10_75
- D 1 - - - 0x02A740 0A:A730: 14 AA     .word _off030_AA14_76
- D 1 - - - 0x02A742 0A:A732: 18 AA     .word _off030_AA18_77
- D 1 - - - 0x02A744 0A:A734: 1C AA     .word _off030_AA1C_78
- D 1 - - - 0x02A746 0A:A736: 20 AA     .word _off030_AA20_79
- D 1 - - - 0x02A748 0A:A738: 24 AA     .word _off030_AA24_7A
- D 1 - - - 0x02A74A 0A:A73A: 28 AA     .word _off030_AA28_7B
- D 1 - - - 0x02A74C 0A:A73C: 2C AA     .word _off030_AA2C_7C
- D 1 - - - 0x02A74E 0A:A73E: 30 AA     .word _off030_AA30_7D
- D 1 - - - 0x02A750 0A:A740: 34 AA     .word _off030_AA34_7E
- D 1 - - - 0x02A752 0A:A742: 38 AA     .word _off030_AA38_7F
- - - - - - 0x02A754 0A:A744: 3C AA     .word _off030_AA3C_80   ; unused, index doesn't exist
- D 1 - - - 0x02A756 0A:A746: 40 AA     .word _off030_AA40_81
- D 1 - - - 0x02A758 0A:A748: 44 AA     .word _off030_AA44_82
- - - - - - 0x02A75A 0A:A74A: 48 AA     .word _off030_AA48_83   ; unused, index doesn't exist
- D 1 - - - 0x02A75C 0A:A74C: 4C AA     .word _off030_AA4C_84
- - - - - - 0x02A75E 0A:A74E: 50 AA     .word _off030_AA50_85   ; unused, index doesn't exist
- D 1 - - - 0x02A760 0A:A750: 54 AA     .word _off030_AA54_86
- D 1 - - - 0x02A762 0A:A752: 58 AA     .word _off030_AA58_87
- D 1 - - - 0x02A764 0A:A754: 5C AA     .word _off030_AA5C_88
- D 1 - - - 0x02A766 0A:A756: 60 AA     .word _off030_AA60_89
- D 1 - - - 0x02A768 0A:A758: 64 AA     .word _off030_AA64_8A
- D 1 - - - 0x02A76A 0A:A75A: 68 AA     .word _off030_AA68_8B
- D 1 - - - 0x02A76C 0A:A75C: 6C AA     .word _off030_AA6C_8C
- - - - - - 0x02A76E 0A:A75E: 70 AA     .word _off030_AA70_8D   ; unused, index doesn't exist
- D 1 - - - 0x02A770 0A:A760: 74 AA     .word _off030_AA74_8E
- D 1 - - - 0x02A772 0A:A762: 78 AA     .word _off030_AA78_8F
- D 1 - - - 0x02A774 0A:A764: 7C AA     .word _off030_AA7C_90
- D 1 - - - 0x02A776 0A:A766: 80 AA     .word _off030_AA80_91
- D 1 - - - 0x02A778 0A:A768: 84 AA     .word _off030_AA84_92
- D 1 - - - 0x02A77A 0A:A76A: 88 AA     .word _off030_AA88_93
- D 1 - - - 0x02A77C 0A:A76C: 8C AA     .word _off030_AA8C_94
- D 1 - - - 0x02A77E 0A:A76E: 90 AA     .word _off030_AA90_95
- D 1 - - - 0x02A780 0A:A770: 94 AA     .word _off030_AA94_96
- D 1 - - - 0x02A782 0A:A772: 98 AA     .word _off030_AA98_97
- D 1 - - - 0x02A784 0A:A774: 9C AA     .word _off030_AA9C_98
- D 1 - - - 0x02A786 0A:A776: A0 AA     .word _off030_AAA0_99
- D 1 - - - 0x02A788 0A:A778: A4 AA     .word _off030_AAA4_9A
- D 1 - - - 0x02A78A 0A:A77A: A8 AA     .word _off030_AAA8_9B
- D 1 - - - 0x02A78C 0A:A77C: AC AA     .word _off030_AAAC_9C
- D 1 - - - 0x02A78E 0A:A77E: B0 AA     .word _off030_AAB0_9D
- D 1 - - - 0x02A790 0A:A780: B4 AA     .word _off030_AAB4_9E
- D 1 - - - 0x02A792 0A:A782: B8 AA     .word _off030_AAB8_9F
- D 1 - - - 0x02A794 0A:A784: BC AA     .word _off030_AABC_A0
- D 1 - - - 0x02A796 0A:A786: C0 AA     .word _off030_AAC0_A1
- D 1 - - - 0x02A798 0A:A788: C4 AA     .word _off030_AAC4_A2
- D 1 - - - 0x02A79A 0A:A78A: C8 AA     .word _off030_AAC8_A3
- - - - - - 0x02A79C 0A:A78C: CC AA     .word _off030_AACC_A4   ; unused, index doesn't exist
- D 1 - - - 0x02A79E 0A:A78E: D0 AA     .word _off030_AAD0_A5
- - - - - - 0x02A7A0 0A:A790: D4 AA     .word _off030_AAD4_A6   ; unused, index doesn't exist
- D 1 - - - 0x02A7A2 0A:A792: D8 AA     .word _off030_AAD8_A7
- D 1 - - - 0x02A7A4 0A:A794: DC AA     .word _off030_AADC_A8
- D 1 - - - 0x02A7A6 0A:A796: E0 AA     .word _off030_AAE0_A9
- D 1 - - - 0x02A7A8 0A:A798: E4 AA     .word _off030_AAE4_AA
- D 1 - - - 0x02A7AA 0A:A79A: E8 AA     .word _off030_AAE8_AB
- D 1 - - - 0x02A7AC 0A:A79C: EC AA     .word _off030_AAEC_AC
- D 1 - - - 0x02A7AE 0A:A79E: F0 AA     .word _off030_AAF0_AD
- D 1 - - - 0x02A7B0 0A:A7A0: F4 AA     .word _off030_AAF4_AE
- D 1 - - - 0x02A7B2 0A:A7A2: F8 AA     .word _off030_AAF8_AF
- D 1 - - - 0x02A7B4 0A:A7A4: FC AA     .word _off030_AAFC_B0
- D 1 - - - 0x02A7B6 0A:A7A6: 00 AB     .word _off030_AB00_B1
- D 1 - - - 0x02A7B8 0A:A7A8: 04 AB     .word _off030_AB04_B2
- D 1 - - - 0x02A7BA 0A:A7AA: 08 AB     .word _off030_AB08_B3
- D 1 - - - 0x02A7BC 0A:A7AC: 0C AB     .word _off030_AB0C_B4
- D 1 - - - 0x02A7BE 0A:A7AE: 10 AB     .word _off030_AB10_B5
- D 1 - - - 0x02A7C0 0A:A7B0: 14 AB     .word _off030_AB14_B6
- D 1 - - - 0x02A7C2 0A:A7B2: 18 AB     .word _off030_AB18_B7
- D 1 - - - 0x02A7C4 0A:A7B4: 1C AB     .word _off030_AB1C_B8
- - - - - - 0x02A7C6 0A:A7B6: 20 AB     .word _off030_AB20_B9   ; unused, index doesn't exist
- - - - - - 0x02A7C8 0A:A7B8: 24 AB     .word _off030_AB24_BA   ; unused, index doesn't exist
- D 1 - - - 0x02A7CA 0A:A7BA: 28 AB     .word _off030_AB28_BB
- D 1 - - - 0x02A7CC 0A:A7BC: 2C AB     .word _off030_AB2C_BC
- D 1 - - - 0x02A7CE 0A:A7BE: 30 AB     .word _off030_AB30_BD
- D 1 - - - 0x02A7D0 0A:A7C0: 34 AB     .word _off030_AB34_BE
- D 1 - - - 0x02A7D2 0A:A7C2: 38 AB     .word _off030_AB38_BF
- D 1 - - - 0x02A7D4 0A:A7C4: 3C AB     .word _off030_AB3C_C0
- D 1 - - - 0x02A7D6 0A:A7C6: 40 AB     .word _off030_AB40_C1
- D 1 - - - 0x02A7D8 0A:A7C8: 44 AB     .word _off030_AB44_C2
- D 1 - - - 0x02A7DA 0A:A7CA: 48 AB     .word _off030_AB48_C3
- D 1 - - - 0x02A7DC 0A:A7CC: 4C AB     .word _off030_AB4C_C4
- - - - - - 0x02A7DE 0A:A7CE: 50 AB     .word _off030_AB50_C5   ; unused, index doesn't exist
- D 1 - - - 0x02A7E0 0A:A7D0: 54 AB     .word _off030_AB54_C6
- D 1 - - - 0x02A7E2 0A:A7D2: 58 AB     .word _off030_AB58_C7
- D 1 - - - 0x02A7E4 0A:A7D4: 5C AB     .word _off030_AB5C_C8
- D 1 - - - 0x02A7E6 0A:A7D6: 60 AB     .word _off030_AB60_C9
- D 1 - - - 0x02A7E8 0A:A7D8: 64 AB     .word _off030_AB64_CA
- D 1 - - - 0x02A7EA 0A:A7DA: 68 AB     .word _off030_AB68_CB
- D 1 - - - 0x02A7EC 0A:A7DC: 6C AB     .word _off030_AB6C_CC
- D 1 - - - 0x02A7EE 0A:A7DE: 70 AB     .word _off030_AB70_CD
- D 1 - - - 0x02A7F0 0A:A7E0: 74 AB     .word _off030_AB74_CE
- - - - - - 0x02A7F2 0A:A7E2: 78 AB     .word _off030_AB78_CF   ; unused, index doesn't exist
- D 1 - - - 0x02A7F4 0A:A7E4: 7C AB     .word _off030_AB7C_D0
- D 1 - - - 0x02A7F6 0A:A7E6: 80 AB     .word _off030_AB80_D1
- D 1 - - - 0x02A7F8 0A:A7E8: 84 AB     .word _off030_AB84_D2
- - - - - - 0x02A7FA 0A:A7EA: 88 AB     .word _off030_AB88_D3   ; unused, index doesn't exist
- D 1 - - - 0x02A7FC 0A:A7EC: 8C AB     .word _off030_AB8C_D4
- D 1 - - - 0x02A7FE 0A:A7EE: 90 AB     .word _off030_AB90_D5
- - - - - - 0x02A800 0A:A7F0: 94 AB     .word _off030_AB94_D6   ; unused, index doesn't exist
- D 1 - - - 0x02A802 0A:A7F2: 98 AB     .word _off030_AB98_D7
- D 1 - - - 0x02A804 0A:A7F4: 9C AB     .word _off030_AB9C_D8
- D 1 - - - 0x02A806 0A:A7F6: A0 AB     .word _off030_ABA0_D9
- D 1 - - - 0x02A808 0A:A7F8: A4 AB     .word _off030_ABA4_DA
- D 1 - - - 0x02A80A 0A:A7FA: A8 AB     .word _off030_ABA8_DB
- D 1 - - - 0x02A80C 0A:A7FC: AC AB     .word _off030_ABAC_DC
- D 1 - - - 0x02A80E 0A:A7FE: B0 AB     .word _off030_ABB0_DD
- D 1 - - - 0x02A810 0A:A800: B4 AB     .word _off030_ABB4_DE
- D 1 - - - 0x02A812 0A:A802: B8 AB     .word _off030_ABB8_DF
- D 1 - - - 0x02A814 0A:A804: BC AB     .word _off030_ABBC_E0
- D 1 - - - 0x02A816 0A:A806: C0 AB     .word _off030_ABC0_E1
- D 1 - - - 0x02A818 0A:A808: C4 AB     .word _off030_ABC4_E2
- D 1 - - - 0x02A81A 0A:A80A: C8 AB     .word _off030_ABC8_E3
- D 1 - - - 0x02A81C 0A:A80C: CC AB     .word _off030_ABCC_E4
- - - - - - 0x02A81E 0A:A80E: D0 AB     .word _off030_ABD0_E5   ; unused, index doesn't exist
- D 1 - - - 0x02A820 0A:A810: D4 AB     .word _off030_ABD4_E6
- D 1 - - - 0x02A822 0A:A812: D8 AB     .word _off030_ABD8_E7
- D 1 - - - 0x02A824 0A:A814: DC AB     .word _off030_ABDC_E8
- D 1 - - - 0x02A826 0A:A816: E0 AB     .word _off030_ABE0_E9
- D 1 - - - 0x02A828 0A:A818: E4 AB     .word _off030_ABE4_EA
- D 1 - - - 0x02A82A 0A:A81A: E8 AB     .word _off030_ABE8_EB
- D 1 - - - 0x02A82C 0A:A81C: EC AB     .word _off030_ABEC_EC
- D 1 - - - 0x02A82E 0A:A81E: F0 AB     .word _off030_ABF0_ED
- D 1 - - - 0x02A830 0A:A820: F4 AB     .word _off030_ABF4_EE
- D 1 - - - 0x02A832 0A:A822: F8 AB     .word _off030_ABF8_EF
- - - - - - 0x02A834 0A:A824: FC AB     .word _off030_ABFC_F0   ; unused, index doesn't exist
- D 1 - - - 0x02A836 0A:A826: 00 AC     .word _off030_AC00_F1
- D 1 - - - 0x02A838 0A:A828: 04 AC     .word _off030_AC04_F2
- D 1 - - - 0x02A83A 0A:A82A: 08 AC     .word _off030_AC08_F3
- - - - - - 0x02A83C 0A:A82C: 0C AC     .word _off030_AC0C_F4   ; unused, index doesn't exist
- D 1 - - - 0x02A83E 0A:A82E: 10 AC     .word _off030_AC10_F5
- D 1 - - - 0x02A840 0A:A830: 14 AC     .word _off030_AC14_F6
- D 1 - - - 0x02A842 0A:A832: 18 AC     .word _off030_AC18_F7
- D 1 - - - 0x02A844 0A:A834: 1C AC     .word _off030_AC1C_F8
- D 1 - - - 0x02A846 0A:A836: 20 AC     .word _off030_AC20_F9
- D 1 - - - 0x02A848 0A:A838: 24 AC     .word _off030_AC24_FA
- D 1 - - - 0x02A84A 0A:A83A: 28 AC     .word _off030_AC28_FB
- D 1 - - - 0x02A84C 0A:A83C: 2C AC     .word _off030_AC2C_FC
- D 1 - - - 0x02A84E 0A:A83E: 30 AC     .word _off030_AC30_FD



_off030_A840_00:
; bzk garbage
- - - - - - 0x02A850 0A:A840: 00        .byte $00   ; 
- - - - - - 0x02A851 0A:A841: 00        .byte $00   ; 
- - - - - - 0x02A852 0A:A842: 00        .byte $00   ; 
- - - - - - 0x02A853 0A:A843: 00        .byte $00   ; 



_off030_A844_01:
; bzk garbage
- - - - - - 0x02A854 0A:A844: 90        .byte $90   ; 
- - - - - - 0x02A855 0A:A845: AE        .byte $AE   ; 
- - - - - - 0x02A856 0A:A846: 20        .byte $20   ; 
- - - - - - 0x02A857 0A:A847: A0        .byte $A0   ; 



_off030_A848_02:
- D 1 - I - 0x02A858 0A:A848: 90        .byte $90   ; 
- D 1 - I - 0x02A859 0A:A849: AD        .byte $AD   ; 
- D 1 - I - 0x02A85A 0A:A84A: 20        .byte $20   ; 
- D 1 - I - 0x02A85B 0A:A84B: 50        .byte $50   ; 



_off030_A84C_03:
; bzk garbage
- - - - - - 0x02A85C 0A:A84C: 90        .byte $90   ; 
- - - - - - 0x02A85D 0A:A84D: AE        .byte $AE   ; 
- - - - - - 0x02A85E 0A:A84E: 20        .byte $20   ; 
- - - - - - 0x02A85F 0A:A84F: 60        .byte $60   ; 



_off030_A850_04:
; bzk garbage
- - - - - - 0x02A860 0A:A850: 90        .byte $90   ; 
- - - - - - 0x02A861 0A:A851: 95        .byte $95   ; 
- - - - - - 0x02A862 0A:A852: 02        .byte $02   ; 
- - - - - - 0x02A863 0A:A853: 80        .byte $80   ; 



_off030_A854_05:
- D 1 - I - 0x02A864 0A:A854: 90        .byte $90   ; 
- D 1 - I - 0x02A865 0A:A855: A4        .byte $A4   ; 
- D 1 - I - 0x02A866 0A:A856: 02        .byte $02   ; 
- D 1 - I - 0x02A867 0A:A857: 40        .byte $40   ; 



_off030_A858_06:
; bzk garbage
- - - - - - 0x02A868 0A:A858: 90        .byte $90   ; 
- - - - - - 0x02A869 0A:A859: 93        .byte $93   ; 
- - - - - - 0x02A86A 0A:A85A: 24        .byte $24   ; 
- - - - - - 0x02A86B 0A:A85B: 88        .byte $88   ; 



_off030_A85C_07:
- D 1 - I - 0x02A86C 0A:A85C: 90        .byte $90   ; 
- D 1 - I - 0x02A86D 0A:A85D: AD        .byte $AD   ; 
- D 1 - I - 0x02A86E 0A:A85E: 02        .byte $02   ; 
- D 1 - I - 0x02A86F 0A:A85F: 80        .byte $80   ; 



_off030_A860_08:
- D 1 - I - 0x02A870 0A:A860: 90        .byte $90   ; 
- D 1 - I - 0x02A871 0A:A861: 97        .byte $97   ; 
- D 1 - I - 0x02A872 0A:A862: 02        .byte $02   ; 
- D 1 - I - 0x02A873 0A:A863: 80        .byte $80   ; 



_off030_A864_09:
; bzk garbage
- - - - - - 0x02A874 0A:A864: 90        .byte $90   ; 
- - - - - - 0x02A875 0A:A865: A1        .byte $A1   ; 
- - - - - - 0x02A876 0A:A866: 24        .byte $24   ; 
- - - - - - 0x02A877 0A:A867: 8C        .byte $8C   ; 



_off030_A868_0A:
- D 1 - I - 0x02A878 0A:A868: 90        .byte $90   ; 
- D 1 - I - 0x02A879 0A:A869: 95        .byte $95   ; 
- D 1 - I - 0x02A87A 0A:A86A: 24        .byte $24   ; 
- D 1 - I - 0x02A87B 0A:A86B: 6C        .byte $6C   ; 



_off030_A86C_0B:
- D 1 - I - 0x02A87C 0A:A86C: 91        .byte $91   ; 
- D 1 - I - 0x02A87D 0A:A86D: AE        .byte $AE   ; 
- D 1 - I - 0x02A87E 0A:A86E: 20        .byte $20   ; 
- D 1 - I - 0x02A87F 0A:A86F: C0        .byte $C0   ; 



_off030_A870_0C:
- D 1 - I - 0x02A880 0A:A870: 91        .byte $91   ; 
- D 1 - I - 0x02A881 0A:A871: AD        .byte $AD   ; 
- D 1 - I - 0x02A882 0A:A872: 00        .byte $00   ; 
- D 1 - I - 0x02A883 0A:A873: C0        .byte $C0   ; 



_off030_A874_0D:
- D 1 - I - 0x02A884 0A:A874: 90        .byte $90   ; 
- D 1 - I - 0x02A885 0A:A875: AE        .byte $AE   ; 
- D 1 - I - 0x02A886 0A:A876: 24        .byte $24   ; 
- D 1 - I - 0x02A887 0A:A877: 6C        .byte $6C   ; 



_off030_A878_0E:
; bzk garbage
- - - - - - 0x02A888 0A:A878: 90        .byte $90   ; 
- - - - - - 0x02A889 0A:A879: A4        .byte $A4   ; 
- - - - - - 0x02A88A 0A:A87A: 24        .byte $24   ; 
- - - - - - 0x02A88B 0A:A87B: 8C        .byte $8C   ; 



_off030_A87C_0F:
- D 1 - I - 0x02A88C 0A:A87C: 91        .byte $91   ; 
- D 1 - I - 0x02A88D 0A:A87D: AE        .byte $AE   ; 
- D 1 - I - 0x02A88E 0A:A87E: 20        .byte $20   ; 
- D 1 - I - 0x02A88F 0A:A87F: C0        .byte $C0   ; 



_off030_A880_10:
- D 1 - I - 0x02A890 0A:A880: 90        .byte $90   ; 
- D 1 - I - 0x02A891 0A:A881: AE        .byte $AE   ; 
- D 1 - I - 0x02A892 0A:A882: 0C        .byte $0C   ; 
- D 1 - I - 0x02A893 0A:A883: 6C        .byte $6C   ; 



_off030_A884_11:
- D 1 - I - 0x02A894 0A:A884: 92        .byte $92   ; 
- D 1 - I - 0x02A895 0A:A885: AE        .byte $AE   ; 
- D 1 - I - 0x02A896 0A:A886: 0C        .byte $0C   ; 
- D 1 - I - 0x02A897 0A:A887: 70        .byte $70   ; 



_off030_A888_12:
- D 1 - I - 0x02A898 0A:A888: 92        .byte $92   ; 
- D 1 - I - 0x02A899 0A:A889: AE        .byte $AE   ; 
- D 1 - I - 0x02A89A 0A:A88A: 0C        .byte $0C   ; 
- D 1 - I - 0x02A89B 0A:A88B: 80        .byte $80   ; 



_off030_A88C_13:
- D 1 - I - 0x02A89C 0A:A88C: 92        .byte $92   ; 
- D 1 - I - 0x02A89D 0A:A88D: AD        .byte $AD   ; 
- D 1 - I - 0x02A89E 0A:A88E: 28        .byte $28   ; 
- D 1 - I - 0x02A89F 0A:A88F: 88        .byte $88   ; 



_off030_A890_14:
; bzk garbage
- - - - - - 0x02A8A0 0A:A890: 92        .byte $92   ; 
- - - - - - 0x02A8A1 0A:A891: 94        .byte $94   ; 
- - - - - - 0x02A8A2 0A:A892: 18        .byte $18   ; 
- - - - - - 0x02A8A3 0A:A893: 80        .byte $80   ; 



_off030_A894_15:
- D 1 - I - 0x02A8A4 0A:A894: 92        .byte $92   ; 
- D 1 - I - 0x02A8A5 0A:A895: A1        .byte $A1   ; 
- D 1 - I - 0x02A8A6 0A:A896: 28        .byte $28   ; 
- D 1 - I - 0x02A8A7 0A:A897: 88        .byte $88   ; 



_off030_A898_16:
- D 1 - I - 0x02A8A8 0A:A898: 92        .byte $92   ; 
- D 1 - I - 0x02A8A9 0A:A899: AC        .byte $AC   ; 
- D 1 - I - 0x02A8AA 0A:A89A: 2D        .byte $2D   ; 
- D 1 - I - 0x02A8AB 0A:A89B: 88        .byte $88   ; 



_off030_A89C_17:
- D 1 - I - 0x02A8AC 0A:A89C: 92        .byte $92   ; 
- D 1 - I - 0x02A8AD 0A:A89D: AE        .byte $AE   ; 
- D 1 - I - 0x02A8AE 0A:A89E: 28        .byte $28   ; 
- D 1 - I - 0x02A8AF 0A:A89F: 48        .byte $48   ; 



_off030_A8A0_18:
; bzk garbage
- - - - - - 0x02A8B0 0A:A8A0: 92        .byte $92   ; 
- - - - - - 0x02A8B1 0A:A8A1: AE        .byte $AE   ; 
- - - - - - 0x02A8B2 0A:A8A2: 18        .byte $18   ; 
- - - - - - 0x02A8B3 0A:A8A3: 80        .byte $80   ; 



_off030_A8A4_19:
- D 1 - I - 0x02A8B4 0A:A8A4: 92        .byte $92   ; 
- D 1 - I - 0x02A8B5 0A:A8A5: AE        .byte $AE   ; 
- D 1 - I - 0x02A8B6 0A:A8A6: 18        .byte $18   ; 
- D 1 - I - 0x02A8B7 0A:A8A7: 78        .byte $78   ; 



_off030_A8A8_1A:
- D 1 - I - 0x02A8B8 0A:A8A8: 92        .byte $92   ; 
- D 1 - I - 0x02A8B9 0A:A8A9: 93        .byte $93   ; 
- D 1 - I - 0x02A8BA 0A:A8AA: 18        .byte $18   ; 
- D 1 - I - 0x02A8BB 0A:A8AB: 78        .byte $78   ; 



_off030_A8AC_1B:
- D 1 - I - 0x02A8BC 0A:A8AC: 92        .byte $92   ; 
- D 1 - I - 0x02A8BD 0A:A8AD: AE        .byte $AE   ; 
- D 1 - I - 0x02A8BE 0A:A8AE: 18        .byte $18   ; 
- D 1 - I - 0x02A8BF 0A:A8AF: 48        .byte $48   ; 



_off030_A8B0_1C:
- D 1 - I - 0x02A8C0 0A:A8B0: 92        .byte $92   ; 
- D 1 - I - 0x02A8C1 0A:A8B1: AE        .byte $AE   ; 
- D 1 - I - 0x02A8C2 0A:A8B2: 18        .byte $18   ; 
- D 1 - I - 0x02A8C3 0A:A8B3: 58        .byte $58   ; 



_off030_A8B4_1D:
- D 1 - I - 0x02A8C4 0A:A8B4: 92        .byte $92   ; 
- D 1 - I - 0x02A8C5 0A:A8B5: AE        .byte $AE   ; 
- D 1 - I - 0x02A8C6 0A:A8B6: 30        .byte $30   ; 
- D 1 - I - 0x02A8C7 0A:A8B7: 70        .byte $70   ; 



_off030_A8B8_1E:
- D 1 - I - 0x02A8C8 0A:A8B8: 92        .byte $92   ; 
- D 1 - I - 0x02A8C9 0A:A8B9: AE        .byte $AE   ; 
- D 1 - I - 0x02A8CA 0A:A8BA: 18        .byte $18   ; 
- D 1 - I - 0x02A8CB 0A:A8BB: 68        .byte $68   ; 



_off030_A8BC_1F:
- D 1 - I - 0x02A8CC 0A:A8BC: 92        .byte $92   ; 
- D 1 - I - 0x02A8CD 0A:A8BD: AE        .byte $AE   ; 
- D 1 - I - 0x02A8CE 0A:A8BE: 38        .byte $38   ; 
- D 1 - I - 0x02A8CF 0A:A8BF: 88        .byte $88   ; 



_off030_A8C0_20:
- D 1 - I - 0x02A8D0 0A:A8C0: 92        .byte $92   ; 
- D 1 - I - 0x02A8D1 0A:A8C1: AE        .byte $AE   ; 
- D 1 - I - 0x02A8D2 0A:A8C2: 00        .byte $00   ; 
- D 1 - I - 0x02A8D3 0A:A8C3: 38        .byte $38   ; 



_off030_A8C4_21:
- D 1 - I - 0x02A8D4 0A:A8C4: 90        .byte $90   ; 
- D 1 - I - 0x02A8D5 0A:A8C5: A4        .byte $A4   ; 
- D 1 - I - 0x02A8D6 0A:A8C6: 22        .byte $22   ; 
- D 1 - I - 0x02A8D7 0A:A8C7: 40        .byte $40   ; 



_off030_A8C8_22:
- D 1 - I - 0x02A8D8 0A:A8C8: 90        .byte $90   ; 
- D 1 - I - 0x02A8D9 0A:A8C9: A4        .byte $A4   ; 
- D 1 - I - 0x02A8DA 0A:A8CA: 0C        .byte $0C   ; 
- D 1 - I - 0x02A8DB 0A:A8CB: 50        .byte $50   ; 



_off030_A8CC_23:
- D 1 - I - 0x02A8DC 0A:A8CC: 90        .byte $90   ; 
- D 1 - I - 0x02A8DD 0A:A8CD: AE        .byte $AE   ; 
- D 1 - I - 0x02A8DE 0A:A8CE: 0C        .byte $0C   ; 
- D 1 - I - 0x02A8DF 0A:A8CF: 50        .byte $50   ; 



_off030_A8D0_24:
- D 1 - I - 0x02A8E0 0A:A8D0: 90        .byte $90   ; 
- D 1 - I - 0x02A8E1 0A:A8D1: AD        .byte $AD   ; 
- D 1 - I - 0x02A8E2 0A:A8D2: 2C        .byte $2C   ; 
- D 1 - I - 0x02A8E3 0A:A8D3: 50        .byte $50   ; 



_off030_A8D4_25:
- D 1 - I - 0x02A8E4 0A:A8D4: 90        .byte $90   ; 
- D 1 - I - 0x02A8E5 0A:A8D5: 93        .byte $93   ; 
- D 1 - I - 0x02A8E6 0A:A8D6: 10        .byte $10   ; 
- D 1 - I - 0x02A8E7 0A:A8D7: 48        .byte $48   ; 



_off030_A8D8_26:
- D 1 - I - 0x02A8E8 0A:A8D8: 91        .byte $91   ; 
- D 1 - I - 0x02A8E9 0A:A8D9: AE        .byte $AE   ; 
- D 1 - I - 0x02A8EA 0A:A8DA: 20        .byte $20   ; 
- D 1 - I - 0x02A8EB 0A:A8DB: A0        .byte $A0   ; 



_off030_A8DC_27:
- D 1 - I - 0x02A8EC 0A:A8DC: 91        .byte $91   ; 
- D 1 - I - 0x02A8ED 0A:A8DD: 93        .byte $93   ; 
- D 1 - I - 0x02A8EE 0A:A8DE: 20        .byte $20   ; 
- D 1 - I - 0x02A8EF 0A:A8DF: 70        .byte $70   ; 



_off030_A8E0_28:
; bzk garbage
- - - - - - 0x02A8F0 0A:A8E0: 91        .byte $91   ; 
- - - - - - 0x02A8F1 0A:A8E1: AE        .byte $AE   ; 
- - - - - - 0x02A8F2 0A:A8E2: 20        .byte $20   ; 
- - - - - - 0x02A8F3 0A:A8E3: 80        .byte $80   ; 



_off030_A8E4_29:
- D 1 - I - 0x02A8F4 0A:A8E4: 91        .byte $91   ; 
- D 1 - I - 0x02A8F5 0A:A8E5: AD        .byte $AD   ; 
- D 1 - I - 0x02A8F6 0A:A8E6: 20        .byte $20   ; 
- D 1 - I - 0x02A8F7 0A:A8E7: B0        .byte $B0   ; 



_off030_A8E8_2A:
; bzk garbage
- - - - - - 0x02A8F8 0A:A8E8: 91        .byte $91   ; 
- - - - - - 0x02A8F9 0A:A8E9: A4        .byte $A4   ; 
- - - - - - 0x02A8FA 0A:A8EA: 20        .byte $20   ; 
- - - - - - 0x02A8FB 0A:A8EB: 50        .byte $50   ; 



_off030_A8EC_2B:
; bzk garbage
- - - - - - 0x02A8FC 0A:A8EC: 91        .byte $91   ; 
- - - - - - 0x02A8FD 0A:A8ED: A4        .byte $A4   ; 
- - - - - - 0x02A8FE 0A:A8EE: 18        .byte $18   ; 
- - - - - - 0x02A8FF 0A:A8EF: C0        .byte $C0   ; 



_off030_A8F0_2C:
- D 1 - I - 0x02A900 0A:A8F0: 90        .byte $90   ; 
- D 1 - I - 0x02A901 0A:A8F1: 96        .byte $96   ; 
- D 1 - I - 0x02A902 0A:A8F2: 00        .byte $00   ; 
- D 1 - I - 0x02A903 0A:A8F3: 78        .byte $78   ; 



_off030_A8F4_2D:
- D 1 - I - 0x02A904 0A:A8F4: 90        .byte $90   ; 
- D 1 - I - 0x02A905 0A:A8F5: 95        .byte $95   ; 
- D 1 - I - 0x02A906 0A:A8F6: 30        .byte $30   ; 
- D 1 - I - 0x02A907 0A:A8F7: 80        .byte $80   ; 



_off030_A8F8_2E:
- D 1 - I - 0x02A908 0A:A8F8: 90        .byte $90   ; 
- D 1 - I - 0x02A909 0A:A8F9: AE        .byte $AE   ; 
- D 1 - I - 0x02A90A 0A:A8FA: 02        .byte $02   ; 
- D 1 - I - 0x02A90B 0A:A8FB: 88        .byte $88   ; 



_off030_A8FC_2F:
- D 1 - I - 0x02A90C 0A:A8FC: 90        .byte $90   ; 
- D 1 - I - 0x02A90D 0A:A8FD: AE        .byte $AE   ; 
- D 1 - I - 0x02A90E 0A:A8FE: 10        .byte $10   ; 
- D 1 - I - 0x02A90F 0A:A8FF: 90        .byte $90   ; 



_off030_A900_30:
- D 1 - I - 0x02A910 0A:A900: 90        .byte $90   ; 
- D 1 - I - 0x02A911 0A:A901: A4        .byte $A4   ; 
- D 1 - I - 0x02A912 0A:A902: 30        .byte $30   ; 
- D 1 - I - 0x02A913 0A:A903: 90        .byte $90   ; 



_off030_A904_31:
- D 1 - I - 0x02A914 0A:A904: 92        .byte $92   ; 
- D 1 - I - 0x02A915 0A:A905: AE        .byte $AE   ; 
- D 1 - I - 0x02A916 0A:A906: 08        .byte $08   ; 
- D 1 - I - 0x02A917 0A:A907: 98        .byte $98   ; 



_off030_A908_32:
- D 1 - I - 0x02A918 0A:A908: 92        .byte $92   ; 
- D 1 - I - 0x02A919 0A:A909: 93        .byte $93   ; 
- D 1 - I - 0x02A91A 0A:A90A: 28        .byte $28   ; 
- D 1 - I - 0x02A91B 0A:A90B: 58        .byte $58   ; 



_off030_A90C_33:
- D 1 - I - 0x02A91C 0A:A90C: 90        .byte $90   ; 
- D 1 - I - 0x02A91D 0A:A90D: AD        .byte $AD   ; 
- D 1 - I - 0x02A91E 0A:A90E: 00        .byte $00   ; 
- D 1 - I - 0x02A91F 0A:A90F: 50        .byte $50   ; 



_off030_A910_34:
- D 1 - I - 0x02A920 0A:A910: 90        .byte $90   ; 
- D 1 - I - 0x02A921 0A:A911: A2        .byte $A2   ; 
- D 1 - I - 0x02A922 0A:A912: 24        .byte $24   ; 
- D 1 - I - 0x02A923 0A:A913: 8C        .byte $8C   ; 



_off030_A914_35:
- D 1 - I - 0x02A924 0A:A914: 90        .byte $90   ; 
- D 1 - I - 0x02A925 0A:A915: AD        .byte $AD   ; 
- D 1 - I - 0x02A926 0A:A916: 08        .byte $08   ; 
- D 1 - I - 0x02A927 0A:A917: 78        .byte $78   ; 



_off030_A918_36:
; bzk garbage
- - - - - - 0x02A928 0A:A918: 90        .byte $90   ; 
- - - - - - 0x02A929 0A:A919: AE        .byte $AE   ; 
- - - - - - 0x02A92A 0A:A91A: 2A        .byte $2A   ; 
- - - - - - 0x02A92B 0A:A91B: 88        .byte $88   ; 



_off030_A91C_37:
- D 1 - I - 0x02A92C 0A:A91C: 90        .byte $90   ; 
- D 1 - I - 0x02A92D 0A:A91D: AE        .byte $AE   ; 
- D 1 - I - 0x02A92E 0A:A91E: 0C        .byte $0C   ; 
- D 1 - I - 0x02A92F 0A:A91F: 48        .byte $48   ; 



_off030_A920_38:
- D 1 - I - 0x02A930 0A:A920: 90        .byte $90   ; 
- D 1 - I - 0x02A931 0A:A921: AD        .byte $AD   ; 
- D 1 - I - 0x02A932 0A:A922: 0C        .byte $0C   ; 
- D 1 - I - 0x02A933 0A:A923: 70        .byte $70   ; 



_off030_A924_39:
- D 1 - I - 0x02A934 0A:A924: 90        .byte $90   ; 
- D 1 - I - 0x02A935 0A:A925: 94        .byte $94   ; 
- D 1 - I - 0x02A936 0A:A926: 10        .byte $10   ; 
- D 1 - I - 0x02A937 0A:A927: 48        .byte $48   ; 



_off030_A928_3A:
- D 1 - I - 0x02A938 0A:A928: 90        .byte $90   ; 
- D 1 - I - 0x02A939 0A:A929: AE        .byte $AE   ; 
- D 1 - I - 0x02A93A 0A:A92A: 20        .byte $20   ; 
- D 1 - I - 0x02A93B 0A:A92B: 58        .byte $58   ; 



_off030_A92C_3B:
- D 1 - I - 0x02A93C 0A:A92C: 90        .byte $90   ; 
- D 1 - I - 0x02A93D 0A:A92D: AD        .byte $AD   ; 
- D 1 - I - 0x02A93E 0A:A92E: 30        .byte $30   ; 
- D 1 - I - 0x02A93F 0A:A92F: 68        .byte $68   ; 



_off030_A930_3C:
- D 1 - I - 0x02A940 0A:A930: 90        .byte $90   ; 
- D 1 - I - 0x02A941 0A:A931: 95        .byte $95   ; 
- D 1 - I - 0x02A942 0A:A932: 20        .byte $20   ; 
- D 1 - I - 0x02A943 0A:A933: 68        .byte $68   ; 



_off030_A934_3D:
- D 1 - I - 0x02A944 0A:A934: 90        .byte $90   ; 
- D 1 - I - 0x02A945 0A:A935: 95        .byte $95   ; 
- D 1 - I - 0x02A946 0A:A936: 30        .byte $30   ; 
- D 1 - I - 0x02A947 0A:A937: 78        .byte $78   ; 



_off030_A938_3E:
- D 1 - I - 0x02A948 0A:A938: 90        .byte $90   ; 
- D 1 - I - 0x02A949 0A:A939: AD        .byte $AD   ; 
- D 1 - I - 0x02A94A 0A:A93A: 30        .byte $30   ; 
- D 1 - I - 0x02A94B 0A:A93B: 78        .byte $78   ; 



_off030_A93C_3F:
- D 1 - I - 0x02A94C 0A:A93C: 90        .byte $90   ; 
- D 1 - I - 0x02A94D 0A:A93D: AE        .byte $AE   ; 
- D 1 - I - 0x02A94E 0A:A93E: 10        .byte $10   ; 
- D 1 - I - 0x02A94F 0A:A93F: 78        .byte $78   ; 



_off030_A940_40:
; bzk garbage
- - - - - - 0x02A950 0A:A940: 90        .byte $90   ; 
- - - - - - 0x02A951 0A:A941: 94        .byte $94   ; 
- - - - - - 0x02A952 0A:A942: 0C        .byte $0C   ; 
- - - - - - 0x02A953 0A:A943: 48        .byte $48   ; 



_off030_A944_41:
- D 1 - I - 0x02A954 0A:A944: 90        .byte $90   ; 
- D 1 - I - 0x02A955 0A:A945: AE        .byte $AE   ; 
- D 1 - I - 0x02A956 0A:A946: 0C        .byte $0C   ; 
- D 1 - I - 0x02A957 0A:A947: 38        .byte $38   ; 



_off030_A948_42:
- D 1 - I - 0x02A958 0A:A948: 90        .byte $90   ; 
- D 1 - I - 0x02A959 0A:A949: AE        .byte $AE   ; 
- D 1 - I - 0x02A95A 0A:A94A: 30        .byte $30   ; 
- D 1 - I - 0x02A95B 0A:A94B: 78        .byte $78   ; 



_off030_A94C_43:
- D 1 - I - 0x02A95C 0A:A94C: 90        .byte $90   ; 
- D 1 - I - 0x02A95D 0A:A94D: 96        .byte $96   ; 
- D 1 - I - 0x02A95E 0A:A94E: 30        .byte $30   ; 
- D 1 - I - 0x02A95F 0A:A94F: 78        .byte $78   ; 



_off030_A950_44:
; bzk garbage
- - - - - - 0x02A960 0A:A950: 90        .byte $90   ; 
- - - - - - 0x02A961 0A:A951: AD        .byte $AD   ; 
- - - - - - 0x02A962 0A:A952: 10        .byte $10   ; 
- - - - - - 0x02A963 0A:A953: 70        .byte $70   ; 



_off030_A954_45:
- D 1 - I - 0x02A964 0A:A954: 90        .byte $90   ; 
- D 1 - I - 0x02A965 0A:A955: 95        .byte $95   ; 
- D 1 - I - 0x02A966 0A:A956: 30        .byte $30   ; 
- D 1 - I - 0x02A967 0A:A957: 50        .byte $50   ; 



_off030_A958_46:
- D 1 - I - 0x02A968 0A:A958: 90        .byte $90   ; 
- D 1 - I - 0x02A969 0A:A959: 95        .byte $95   ; 
- D 1 - I - 0x02A96A 0A:A95A: 20        .byte $20   ; 
- D 1 - I - 0x02A96B 0A:A95B: 98        .byte $98   ; 



_off030_A95C_47:
- D 1 - I - 0x02A96C 0A:A95C: 90        .byte $90   ; 
- D 1 - I - 0x02A96D 0A:A95D: A6        .byte $A6   ; 
- D 1 - I - 0x02A96E 0A:A95E: 08        .byte $08   ; 
- D 1 - I - 0x02A96F 0A:A95F: 88        .byte $88   ; 



_off030_A960_48:
- D 1 - I - 0x02A970 0A:A960: 90        .byte $90   ; 
- D 1 - I - 0x02A971 0A:A961: AE        .byte $AE   ; 
- D 1 - I - 0x02A972 0A:A962: 20        .byte $20   ; 
- D 1 - I - 0x02A973 0A:A963: 38        .byte $38   ; 



_off030_A964_49:
- D 1 - I - 0x02A974 0A:A964: 90        .byte $90   ; 
- D 1 - I - 0x02A975 0A:A965: AD        .byte $AD   ; 
- D 1 - I - 0x02A976 0A:A966: 20        .byte $20   ; 
- D 1 - I - 0x02A977 0A:A967: 48        .byte $48   ; 



_off030_A968_4A:
; bzk garbage
- - - - - - 0x02A978 0A:A968: 90        .byte $90   ; 
- - - - - - 0x02A979 0A:A969: 93        .byte $93   ; 
- - - - - - 0x02A97A 0A:A96A: 10        .byte $10   ; 
- - - - - - 0x02A97B 0A:A96B: 88        .byte $88   ; 



_off030_A96C_4B:
- D 1 - I - 0x02A97C 0A:A96C: 90        .byte $90   ; 
- D 1 - I - 0x02A97D 0A:A96D: AE        .byte $AE   ; 
- D 1 - I - 0x02A97E 0A:A96E: 20        .byte $20   ; 
- D 1 - I - 0x02A97F 0A:A96F: 88        .byte $88   ; 



_off030_A970_4C:
- D 1 - I - 0x02A980 0A:A970: 90        .byte $90   ; 
- D 1 - I - 0x02A981 0A:A971: A4        .byte $A4   ; 
- D 1 - I - 0x02A982 0A:A972: 20        .byte $20   ; 
- D 1 - I - 0x02A983 0A:A973: 48        .byte $48   ; 



_off030_A974_4D:
- D 1 - I - 0x02A984 0A:A974: 91        .byte $91   ; 
- D 1 - I - 0x02A985 0A:A975: AE        .byte $AE   ; 
- D 1 - I - 0x02A986 0A:A976: 20        .byte $20   ; 
- D 1 - I - 0x02A987 0A:A977: B0        .byte $B0   ; 



_off030_A978_4E:
; bzk garbage
- - - - - - 0x02A988 0A:A978: 91        .byte $91   ; 
- - - - - - 0x02A989 0A:A979: 96        .byte $96   ; 
- - - - - - 0x02A98A 0A:A97A: 20        .byte $20   ; 
- - - - - - 0x02A98B 0A:A97B: B0        .byte $B0   ; 



_off030_A97C_4F:
- D 1 - I - 0x02A98C 0A:A97C: 91        .byte $91   ; 
- D 1 - I - 0x02A98D 0A:A97D: 94        .byte $94   ; 
- D 1 - I - 0x02A98E 0A:A97E: 10        .byte $10   ; 
- D 1 - I - 0x02A98F 0A:A97F: B0        .byte $B0   ; 



_off030_A980_50:
- D 1 - I - 0x02A990 0A:A980: 90        .byte $90   ; 
- D 1 - I - 0x02A991 0A:A981: AE        .byte $AE   ; 
- D 1 - I - 0x02A992 0A:A982: 20        .byte $20   ; 
- D 1 - I - 0x02A993 0A:A983: 48        .byte $48   ; 



_off030_A984_51:
- D 1 - I - 0x02A994 0A:A984: 91        .byte $91   ; 
- D 1 - I - 0x02A995 0A:A985: AD        .byte $AD   ; 
- D 1 - I - 0x02A996 0A:A986: 10        .byte $10   ; 
- D 1 - I - 0x02A997 0A:A987: B0        .byte $B0   ; 



_off030_A988_52:
; bzk garbage
- - - - - - 0x02A998 0A:A988: 90        .byte $90   ; 
- - - - - - 0x02A999 0A:A989: 97        .byte $97   ; 
- - - - - - 0x02A99A 0A:A98A: 30        .byte $30   ; 
- - - - - - 0x02A99B 0A:A98B: 50        .byte $50   ; 



_off030_A98C_53:
- D 1 - I - 0x02A99C 0A:A98C: 90        .byte $90   ; 
- D 1 - I - 0x02A99D 0A:A98D: AE        .byte $AE   ; 
- D 1 - I - 0x02A99E 0A:A98E: 10        .byte $10   ; 
- D 1 - I - 0x02A99F 0A:A98F: A8        .byte $A8   ; 



_off030_A990_54:
- D 1 - I - 0x02A9A0 0A:A990: 90        .byte $90   ; 
- D 1 - I - 0x02A9A1 0A:A991: AD        .byte $AD   ; 
- D 1 - I - 0x02A9A2 0A:A992: 24        .byte $24   ; 
- D 1 - I - 0x02A9A3 0A:A993: 8C        .byte $8C   ; 



_off030_A994_55:
; bzk garbage
- - - - - - 0x02A9A4 0A:A994: 90        .byte $90   ; 
- - - - - - 0x02A9A5 0A:A995: A2        .byte $A2   ; 
- - - - - - 0x02A9A6 0A:A996: 00        .byte $00   ; 
- - - - - - 0x02A9A7 0A:A997: 98        .byte $98   ; 



_off030_A998_56:
; bzk garbage
- - - - - - 0x02A9A8 0A:A998: 90        .byte $90   ; 
- - - - - - 0x02A9A9 0A:A999: 95        .byte $95   ; 
- - - - - - 0x02A9AA 0A:A99A: 10        .byte $10   ; 
- - - - - - 0x02A9AB 0A:A99B: 78        .byte $78   ; 



_off030_A99C_57:
- D 1 - I - 0x02A9AC 0A:A99C: 90        .byte $90   ; 
- D 1 - I - 0x02A9AD 0A:A99D: AE        .byte $AE   ; 
- D 1 - I - 0x02A9AE 0A:A99E: 00        .byte $00   ; 
- D 1 - I - 0x02A9AF 0A:A99F: 98        .byte $98   ; 



_off030_A9A0_58:
_off030_A9A0_61:
- D 1 - I - 0x02A9B0 0A:A9A0: 90        .byte $90   ; 
- D 1 - I - 0x02A9B1 0A:A9A1: A4        .byte $A4   ; 
- D 1 - I - 0x02A9B2 0A:A9A2: 10        .byte $10   ; 
- D 1 - I - 0x02A9B3 0A:A9A3: 68        .byte $68   ; 



_off030_A9A4_59:
- D 1 - I - 0x02A9B4 0A:A9A4: 90        .byte $90   ; 
- D 1 - I - 0x02A9B5 0A:A9A5: AE        .byte $AE   ; 
- D 1 - I - 0x02A9B6 0A:A9A6: 20        .byte $20   ; 
- D 1 - I - 0x02A9B7 0A:A9A7: 68        .byte $68   ; 



_off030_A9A8_5A:
- D 1 - I - 0x02A9B8 0A:A9A8: 90        .byte $90   ; 
- D 1 - I - 0x02A9B9 0A:A9A9: AE        .byte $AE   ; 
- D 1 - I - 0x02A9BA 0A:A9AA: 00        .byte $00   ; 
- D 1 - I - 0x02A9BB 0A:A9AB: 70        .byte $70   ; 



_off030_A9AC_5B:
- D 1 - I - 0x02A9BC 0A:A9AC: 90        .byte $90   ; 
- D 1 - I - 0x02A9BD 0A:A9AD: 95        .byte $95   ; 
- D 1 - I - 0x02A9BE 0A:A9AE: 10        .byte $10   ; 
- D 1 - I - 0x02A9BF 0A:A9AF: 70        .byte $70   ; 



_off030_A9B0_5C:
- D 1 - I - 0x02A9C0 0A:A9B0: 90        .byte $90   ; 
- D 1 - I - 0x02A9C1 0A:A9B1: A4        .byte $A4   ; 
- D 1 - I - 0x02A9C2 0A:A9B2: 20        .byte $20   ; 
- D 1 - I - 0x02A9C3 0A:A9B3: 88        .byte $88   ; 



_off030_A9B4_5D:
- D 1 - I - 0x02A9C4 0A:A9B4: 90        .byte $90   ; 
- D 1 - I - 0x02A9C5 0A:A9B5: 97        .byte $97   ; 
- D 1 - I - 0x02A9C6 0A:A9B6: 00        .byte $00   ; 
- D 1 - I - 0x02A9C7 0A:A9B7: 68        .byte $68   ; 



_off030_A9B8_5E:
- D 1 - I - 0x02A9C8 0A:A9B8: 90        .byte $90   ; 
- D 1 - I - 0x02A9C9 0A:A9B9: AE        .byte $AE   ; 
- D 1 - I - 0x02A9CA 0A:A9BA: 08        .byte $08   ; 
- D 1 - I - 0x02A9CB 0A:A9BB: 98        .byte $98   ; 



_off030_A9BC_5F:
- D 1 - I - 0x02A9CC 0A:A9BC: 90        .byte $90   ; 
- D 1 - I - 0x02A9CD 0A:A9BD: AD        .byte $AD   ; 
- D 1 - I - 0x02A9CE 0A:A9BE: 2A        .byte $2A   ; 
- D 1 - I - 0x02A9CF 0A:A9BF: 48        .byte $48   ; 



_off030_A9C0_60:
- D 1 - I - 0x02A9D0 0A:A9C0: 90        .byte $90   ; 
- D 1 - I - 0x02A9D1 0A:A9C1: AE        .byte $AE   ; 
- D 1 - I - 0x02A9D2 0A:A9C2: 0C        .byte $0C   ; 
- D 1 - I - 0x02A9D3 0A:A9C3: 78        .byte $78   ; 



_off030_A9C4_62:
- D 1 - I - 0x02A9D4 0A:A9C4: 90        .byte $90   ; 
- D 1 - I - 0x02A9D5 0A:A9C5: AE        .byte $AE   ; 
- D 1 - I - 0x02A9D6 0A:A9C6: 08        .byte $08   ; 
- D 1 - I - 0x02A9D7 0A:A9C7: 68        .byte $68   ; 



_off030_A9C8_63:
- D 1 - I - 0x02A9D8 0A:A9C8: 90        .byte $90   ; 
- D 1 - I - 0x02A9D9 0A:A9C9: A5        .byte $A5   ; 
- D 1 - I - 0x02A9DA 0A:A9CA: 20        .byte $20   ; 
- D 1 - I - 0x02A9DB 0A:A9CB: 48        .byte $48   ; 



_off030_A9CC_64:
- D 1 - I - 0x02A9DC 0A:A9CC: 90        .byte $90   ; 
- D 1 - I - 0x02A9DD 0A:A9CD: AD        .byte $AD   ; 
- D 1 - I - 0x02A9DE 0A:A9CE: 08        .byte $08   ; 
- D 1 - I - 0x02A9DF 0A:A9CF: 48        .byte $48   ; 



_off030_A9D0_65:
- D 1 - I - 0x02A9E0 0A:A9D0: 90        .byte $90   ; 
- D 1 - I - 0x02A9E1 0A:A9D1: AE        .byte $AE   ; 
- D 1 - I - 0x02A9E2 0A:A9D2: 10        .byte $10   ; 
- D 1 - I - 0x02A9E3 0A:A9D3: 48        .byte $48   ; 



_off030_A9D4_66:
- D 1 - I - 0x02A9E4 0A:A9D4: 90        .byte $90   ; 
- D 1 - I - 0x02A9E5 0A:A9D5: 94        .byte $94   ; 
- D 1 - I - 0x02A9E6 0A:A9D6: 20        .byte $20   ; 
- D 1 - I - 0x02A9E7 0A:A9D7: 68        .byte $68   ; 



_off030_A9D8_67:
- D 1 - I - 0x02A9E8 0A:A9D8: 90        .byte $90   ; 
- D 1 - I - 0x02A9E9 0A:A9D9: 96        .byte $96   ; 
- D 1 - I - 0x02A9EA 0A:A9DA: 28        .byte $28   ; 
- D 1 - I - 0x02A9EB 0A:A9DB: 48        .byte $48   ; 



_off030_A9DC_68:
- D 1 - I - 0x02A9EC 0A:A9DC: 90        .byte $90   ; 
- D 1 - I - 0x02A9ED 0A:A9DD: AE        .byte $AE   ; 
- D 1 - I - 0x02A9EE 0A:A9DE: 10        .byte $10   ; 
- D 1 - I - 0x02A9EF 0A:A9DF: 88        .byte $88   ; 



_off030_A9E0_69:
- D 1 - I - 0x02A9F0 0A:A9E0: 90        .byte $90   ; 
- D 1 - I - 0x02A9F1 0A:A9E1: 95        .byte $95   ; 
- D 1 - I - 0x02A9F2 0A:A9E2: 10        .byte $10   ; 
- D 1 - I - 0x02A9F3 0A:A9E3: 88        .byte $88   ; 



_off030_A9E4_6A:
- D 1 - I - 0x02A9F4 0A:A9E4: 90        .byte $90   ; 
- D 1 - I - 0x02A9F5 0A:A9E5: A4        .byte $A4   ; 
- D 1 - I - 0x02A9F6 0A:A9E6: 20        .byte $20   ; 
- D 1 - I - 0x02A9F7 0A:A9E7: 58        .byte $58   ; 



_off030_A9E8_6B:
- D 1 - I - 0x02A9F8 0A:A9E8: 90        .byte $90   ; 
- D 1 - I - 0x02A9F9 0A:A9E9: AD        .byte $AD   ; 
- D 1 - I - 0x02A9FA 0A:A9EA: 20        .byte $20   ; 
- D 1 - I - 0x02A9FB 0A:A9EB: 88        .byte $88   ; 



_off030_A9EC_6C:
- D 1 - I - 0x02A9FC 0A:A9EC: 90        .byte $90   ; 
- D 1 - I - 0x02A9FD 0A:A9ED: AE        .byte $AE   ; 
- D 1 - I - 0x02A9FE 0A:A9EE: 10        .byte $10   ; 
- D 1 - I - 0x02A9FF 0A:A9EF: 58        .byte $58   ; 



_off030_A9F0_6D:
- D 1 - I - 0x02AA00 0A:A9F0: 90        .byte $90   ; 
- D 1 - I - 0x02AA01 0A:A9F1: AD        .byte $AD   ; 
- D 1 - I - 0x02AA02 0A:A9F2: 10        .byte $10   ; 
- D 1 - I - 0x02AA03 0A:A9F3: 88        .byte $88   ; 



_off030_A9F4_6E:
- D 1 - I - 0x02AA04 0A:A9F4: 90        .byte $90   ; 
- D 1 - I - 0x02AA05 0A:A9F5: 93        .byte $93   ; 
- D 1 - I - 0x02AA06 0A:A9F6: 30        .byte $30   ; 
- D 1 - I - 0x02AA07 0A:A9F7: 68        .byte $68   ; 



_off030_A9F8_6F:
- D 1 - I - 0x02AA08 0A:A9F8: 90        .byte $90   ; 
- D 1 - I - 0x02AA09 0A:A9F9: AE        .byte $AE   ; 
- D 1 - I - 0x02AA0A 0A:A9FA: 20        .byte $20   ; 
- D 1 - I - 0x02AA0B 0A:A9FB: 78        .byte $78   ; 



_off030_A9FC_70:
; bzk garbage
- - - - - - 0x02AA0C 0A:A9FC: 90        .byte $90   ; 
- - - - - - 0x02AA0D 0A:A9FD: 94        .byte $94   ; 
- - - - - - 0x02AA0E 0A:A9FE: 10        .byte $10   ; 
- - - - - - 0x02AA0F 0A:A9FF: 88        .byte $88   ; 



_off030_AA00_71:
- D 1 - I - 0x02AA10 0A:AA00: 90        .byte $90   ; 
- D 1 - I - 0x02AA11 0A:AA01: 95        .byte $95   ; 
- D 1 - I - 0x02AA12 0A:AA02: 10        .byte $10   ; 
- D 1 - I - 0x02AA13 0A:AA03: 38        .byte $38   ; 



_off030_AA04_72:
- D 1 - I - 0x02AA14 0A:AA04: 90        .byte $90   ; 
- D 1 - I - 0x02AA15 0A:AA05: AE        .byte $AE   ; 
- D 1 - I - 0x02AA16 0A:AA06: 10        .byte $10   ; 
- D 1 - I - 0x02AA17 0A:AA07: 98        .byte $98   ; 



_off030_AA08_73:
- D 1 - I - 0x02AA18 0A:AA08: 90        .byte $90   ; 
- D 1 - I - 0x02AA19 0A:AA09: 96        .byte $96   ; 
- D 1 - I - 0x02AA1A 0A:AA0A: 24        .byte $24   ; 
- D 1 - I - 0x02AA1B 0A:AA0B: 88        .byte $88   ; 



_off030_AA0C_74:
- D 1 - I - 0x02AA1C 0A:AA0C: 90        .byte $90   ; 
- D 1 - I - 0x02AA1D 0A:AA0D: AE        .byte $AE   ; 
- D 1 - I - 0x02AA1E 0A:AA0E: 08        .byte $08   ; 
- D 1 - I - 0x02AA1F 0A:AA0F: 88        .byte $88   ; 



_off030_AA10_75:
- D 1 - I - 0x02AA20 0A:AA10: 90        .byte $90   ; 
- D 1 - I - 0x02AA21 0A:AA11: AE        .byte $AE   ; 
- D 1 - I - 0x02AA22 0A:AA12: 08        .byte $08   ; 
- D 1 - I - 0x02AA23 0A:AA13: 38        .byte $38   ; 



_off030_AA14_76:
- D 1 - I - 0x02AA24 0A:AA14: 90        .byte $90   ; 
- D 1 - I - 0x02AA25 0A:AA15: AD        .byte $AD   ; 
- D 1 - I - 0x02AA26 0A:AA16: 08        .byte $08   ; 
- D 1 - I - 0x02AA27 0A:AA17: 38        .byte $38   ; 



_off030_AA18_77:
- D 1 - I - 0x02AA28 0A:AA18: 90        .byte $90   ; 
- D 1 - I - 0x02AA29 0A:AA19: AE        .byte $AE   ; 
- D 1 - I - 0x02AA2A 0A:AA1A: 20        .byte $20   ; 
- D 1 - I - 0x02AA2B 0A:AA1B: A8        .byte $A8   ; 



_off030_AA1C_78:
- D 1 - I - 0x02AA2C 0A:AA1C: 90        .byte $90   ; 
- D 1 - I - 0x02AA2D 0A:AA1D: AE        .byte $AE   ; 
- D 1 - I - 0x02AA2E 0A:AA1E: 38        .byte $38   ; 
- D 1 - I - 0x02AA2F 0A:AA1F: 48        .byte $48   ; 



_off030_AA20_79:
- D 1 - I - 0x02AA30 0A:AA20: 90        .byte $90   ; 
- D 1 - I - 0x02AA31 0A:AA21: AD        .byte $AD   ; 
- D 1 - I - 0x02AA32 0A:AA22: 28        .byte $28   ; 
- D 1 - I - 0x02AA33 0A:AA23: 88        .byte $88   ; 



_off030_AA24_7A:
- D 1 - I - 0x02AA34 0A:AA24: 90        .byte $90   ; 
- D 1 - I - 0x02AA35 0A:AA25: 95        .byte $95   ; 
- D 1 - I - 0x02AA36 0A:AA26: 30        .byte $30   ; 
- D 1 - I - 0x02AA37 0A:AA27: 88        .byte $88   ; 



_off030_AA28_7B:
- D 1 - I - 0x02AA38 0A:AA28: 90        .byte $90   ; 
- D 1 - I - 0x02AA39 0A:AA29: AD        .byte $AD   ; 
- D 1 - I - 0x02AA3A 0A:AA2A: 18        .byte $18   ; 
- D 1 - I - 0x02AA3B 0A:AA2B: 88        .byte $88   ; 



_off030_AA2C_7C:
- D 1 - I - 0x02AA3C 0A:AA2C: 92        .byte $92   ; 
- D 1 - I - 0x02AA3D 0A:AA2D: AE        .byte $AE   ; 
- D 1 - I - 0x02AA3E 0A:AA2E: 20        .byte $20   ; 
- D 1 - I - 0x02AA3F 0A:AA2F: 78        .byte $78   ; 



_off030_AA30_7D:
- D 1 - I - 0x02AA40 0A:AA30: 92        .byte $92   ; 
- D 1 - I - 0x02AA41 0A:AA31: A6        .byte $A6   ; 
- D 1 - I - 0x02AA42 0A:AA32: 30        .byte $30   ; 
- D 1 - I - 0x02AA43 0A:AA33: 48        .byte $48   ; 



_off030_AA34_7E:
- D 1 - I - 0x02AA44 0A:AA34: 92        .byte $92   ; 
- D 1 - I - 0x02AA45 0A:AA35: AD        .byte $AD   ; 
- D 1 - I - 0x02AA46 0A:AA36: 20        .byte $20   ; 
- D 1 - I - 0x02AA47 0A:AA37: 58        .byte $58   ; 



_off030_AA38_7F:
- D 1 - I - 0x02AA48 0A:AA38: 92        .byte $92   ; 
- D 1 - I - 0x02AA49 0A:AA39: 97        .byte $97   ; 
- D 1 - I - 0x02AA4A 0A:AA3A: 18        .byte $18   ; 
- D 1 - I - 0x02AA4B 0A:AA3B: 48        .byte $48   ; 



_off030_AA3C_80:
; bzk garbage
- - - - - - 0x02AA4C 0A:AA3C: 92        .byte $92   ; 
- - - - - - 0x02AA4D 0A:AA3D: 95        .byte $95   ; 
- - - - - - 0x02AA4E 0A:AA3E: 18        .byte $18   ; 
- - - - - - 0x02AA4F 0A:AA3F: 78        .byte $78   ; 



_off030_AA40_81:
- D 1 - I - 0x02AA50 0A:AA40: 92        .byte $92   ; 
- D 1 - I - 0x02AA51 0A:AA41: A4        .byte $A4   ; 
- D 1 - I - 0x02AA52 0A:AA42: 0C        .byte $0C   ; 
- D 1 - I - 0x02AA53 0A:AA43: 70        .byte $70   ; 



_off030_AA44_82:
- D 1 - I - 0x02AA54 0A:AA44: 92        .byte $92   ; 
- D 1 - I - 0x02AA55 0A:AA45: AD        .byte $AD   ; 
- D 1 - I - 0x02AA56 0A:AA46: 18        .byte $18   ; 
- D 1 - I - 0x02AA57 0A:AA47: 90        .byte $90   ; 



_off030_AA48_83:
; bzk garbage
- - - - - - 0x02AA58 0A:AA48: 92        .byte $92   ; 
- - - - - - 0x02AA59 0A:AA49: 94        .byte $94   ; 
- - - - - - 0x02AA5A 0A:AA4A: 18        .byte $18   ; 
- - - - - - 0x02AA5B 0A:AA4B: 48        .byte $48   ; 



_off030_AA4C_84:
- D 1 - I - 0x02AA5C 0A:AA4C: 92        .byte $92   ; 
- D 1 - I - 0x02AA5D 0A:AA4D: A5        .byte $A5   ; 
- D 1 - I - 0x02AA5E 0A:AA4E: 34        .byte $34   ; 
- D 1 - I - 0x02AA5F 0A:AA4F: 48        .byte $48   ; 



_off030_AA50_85:
; bzk garbage
- - - - - - 0x02AA60 0A:AA50: 92        .byte $92   ; 
- - - - - - 0x02AA61 0A:AA51: 96        .byte $96   ; 
- - - - - - 0x02AA62 0A:AA52: 10        .byte $10   ; 
- - - - - - 0x02AA63 0A:AA53: 78        .byte $78   ; 



_off030_AA54_86:
- D 1 - I - 0x02AA64 0A:AA54: 92        .byte $92   ; 
- D 1 - I - 0x02AA65 0A:AA55: A4        .byte $A4   ; 
- D 1 - I - 0x02AA66 0A:AA56: 18        .byte $18   ; 
- D 1 - I - 0x02AA67 0A:AA57: 68        .byte $68   ; 



_off030_AA58_87:
- D 1 - I - 0x02AA68 0A:AA58: 92        .byte $92   ; 
- D 1 - I - 0x02AA69 0A:AA59: AD        .byte $AD   ; 
- D 1 - I - 0x02AA6A 0A:AA5A: 08        .byte $08   ; 
- D 1 - I - 0x02AA6B 0A:AA5B: 40        .byte $40   ; 



_off030_AA5C_88:
- D 1 - I - 0x02AA6C 0A:AA5C: 92        .byte $92   ; 
- D 1 - I - 0x02AA6D 0A:AA5D: AD        .byte $AD   ; 
- D 1 - I - 0x02AA6E 0A:AA5E: 18        .byte $18   ; 
- D 1 - I - 0x02AA6F 0A:AA5F: 68        .byte $68   ; 



_off030_AA60_89:
- D 1 - I - 0x02AA70 0A:AA60: 92        .byte $92   ; 
- D 1 - I - 0x02AA71 0A:AA61: AE        .byte $AE   ; 
- D 1 - I - 0x02AA72 0A:AA62: 30        .byte $30   ; 
- D 1 - I - 0x02AA73 0A:AA63: 68        .byte $68   ; 



_off030_AA64_8A:
- D 1 - I - 0x02AA74 0A:AA64: 92        .byte $92   ; 
- D 1 - I - 0x02AA75 0A:AA65: AD        .byte $AD   ; 
- D 1 - I - 0x02AA76 0A:AA66: 30        .byte $30   ; 
- D 1 - I - 0x02AA77 0A:AA67: 68        .byte $68   ; 



_off030_AA68_8B:
- D 1 - I - 0x02AA78 0A:AA68: 92        .byte $92   ; 
- D 1 - I - 0x02AA79 0A:AA69: 95        .byte $95   ; 
- D 1 - I - 0x02AA7A 0A:AA6A: 08        .byte $08   ; 
- D 1 - I - 0x02AA7B 0A:AA6B: 98        .byte $98   ; 



_off030_AA6C_8C:
- D 1 - I - 0x02AA7C 0A:AA6C: 92        .byte $92   ; 
- D 1 - I - 0x02AA7D 0A:AA6D: A4        .byte $A4   ; 
- D 1 - I - 0x02AA7E 0A:AA6E: 18        .byte $18   ; 
- D 1 - I - 0x02AA7F 0A:AA6F: 60        .byte $60   ; 



_off030_AA70_8D:
; bzk garbage
- - - - - - 0x02AA80 0A:AA70: 92        .byte $92   ; 
- - - - - - 0x02AA81 0A:AA71: A1        .byte $A1   ; 
- - - - - - 0x02AA82 0A:AA72: 30        .byte $30   ; 
- - - - - - 0x02AA83 0A:AA73: 48        .byte $48   ; 



_off030_AA74_8E:
- D 1 - I - 0x02AA84 0A:AA74: 92        .byte $92   ; 
- D 1 - I - 0x02AA85 0A:AA75: AE        .byte $AE   ; 
- D 1 - I - 0x02AA86 0A:AA76: 30        .byte $30   ; 
- D 1 - I - 0x02AA87 0A:AA77: 58        .byte $58   ; 



_off030_AA78_8F:
- D 1 - I - 0x02AA88 0A:AA78: 92        .byte $92   ; 
- D 1 - I - 0x02AA89 0A:AA79: 95        .byte $95   ; 
- D 1 - I - 0x02AA8A 0A:AA7A: 28        .byte $28   ; 
- D 1 - I - 0x02AA8B 0A:AA7B: 48        .byte $48   ; 



_off030_AA7C_90:
- D 1 - I - 0x02AA8C 0A:AA7C: 90        .byte $90   ; 
- D 1 - I - 0x02AA8D 0A:AA7D: AE        .byte $AE   ; 
- D 1 - I - 0x02AA8E 0A:AA7E: 30        .byte $30   ; 
- D 1 - I - 0x02AA8F 0A:AA7F: 48        .byte $48   ; 



_off030_AA80_91:
- D 1 - I - 0x02AA90 0A:AA80: 90        .byte $90   ; 
- D 1 - I - 0x02AA91 0A:AA81: 93        .byte $93   ; 
- D 1 - I - 0x02AA92 0A:AA82: 30        .byte $30   ; 
- D 1 - I - 0x02AA93 0A:AA83: 48        .byte $48   ; 



_off030_AA84_92:
- D 1 - I - 0x02AA94 0A:AA84: 90        .byte $90   ; 
- D 1 - I - 0x02AA95 0A:AA85: A4        .byte $A4   ; 
- D 1 - I - 0x02AA96 0A:AA86: 30        .byte $30   ; 
- D 1 - I - 0x02AA97 0A:AA87: 68        .byte $68   ; 



_off030_AA88_93:
- D 1 - I - 0x02AA98 0A:AA88: 90        .byte $90   ; 
- D 1 - I - 0x02AA99 0A:AA89: AD        .byte $AD   ; 
- D 1 - I - 0x02AA9A 0A:AA8A: 30        .byte $30   ; 
- D 1 - I - 0x02AA9B 0A:AA8B: 48        .byte $48   ; 



_off030_AA8C_94:
- D 1 - I - 0x02AA9C 0A:AA8C: 90        .byte $90   ; 
- D 1 - I - 0x02AA9D 0A:AA8D: AE        .byte $AE   ; 
- D 1 - I - 0x02AA9E 0A:AA8E: 30        .byte $30   ; 
- D 1 - I - 0x02AA9F 0A:AA8F: 68        .byte $68   ; 



_off030_AA90_95:
- D 1 - I - 0x02AAA0 0A:AA90: 90        .byte $90   ; 
- D 1 - I - 0x02AAA1 0A:AA91: AD        .byte $AD   ; 
- D 1 - I - 0x02AAA2 0A:AA92: 10        .byte $10   ; 
- D 1 - I - 0x02AAA3 0A:AA93: 38        .byte $38   ; 



_off030_AA94_96:
- D 1 - I - 0x02AAA4 0A:AA94: 90        .byte $90   ; 
- D 1 - I - 0x02AAA5 0A:AA95: AE        .byte $AE   ; 
- D 1 - I - 0x02AAA6 0A:AA96: 10        .byte $10   ; 
- D 1 - I - 0x02AAA7 0A:AA97: 68        .byte $68   ; 



_off030_AA98_97:
- D 1 - I - 0x02AAA8 0A:AA98: 90        .byte $90   ; 
- D 1 - I - 0x02AAA9 0A:AA99: 97        .byte $97   ; 
- D 1 - I - 0x02AAAA 0A:AA9A: 30        .byte $30   ; 
- D 1 - I - 0x02AAAB 0A:AA9B: 48        .byte $48   ; 



_off030_AA9C_98:
- D 1 - I - 0x02AAAC 0A:AA9C: 90        .byte $90   ; 
- D 1 - I - 0x02AAAD 0A:AA9D: A5        .byte $A5   ; 
- D 1 - I - 0x02AAAE 0A:AA9E: 30        .byte $30   ; 
- D 1 - I - 0x02AAAF 0A:AA9F: A8        .byte $A8   ; 



_off030_AAA0_99:
- D 1 - I - 0x02AAB0 0A:AAA0: 90        .byte $90   ; 
- D 1 - I - 0x02AAB1 0A:AAA1: AD        .byte $AD   ; 
- D 1 - I - 0x02AAB2 0A:AAA2: 10        .byte $10   ; 
- D 1 - I - 0x02AAB3 0A:AAA3: 48        .byte $48   ; 



_off030_AAA4_9A:
- D 1 - I - 0x02AAB4 0A:AAA4: 90        .byte $90   ; 
- D 1 - I - 0x02AAB5 0A:AAA5: 95        .byte $95   ; 
- D 1 - I - 0x02AAB6 0A:AAA6: 10        .byte $10   ; 
- D 1 - I - 0x02AAB7 0A:AAA7: 68        .byte $68   ; 



_off030_AAA8_9B:
- D 1 - I - 0x02AAB8 0A:AAA8: 90        .byte $90   ; 
- D 1 - I - 0x02AAB9 0A:AAA9: AD        .byte $AD   ; 
- D 1 - I - 0x02AABA 0A:AAAA: 30        .byte $30   ; 
- D 1 - I - 0x02AABB 0A:AAAB: 58        .byte $58   ; 



_off030_AAAC_9C:
- D 1 - I - 0x02AABC 0A:AAAC: 90        .byte $90   ; 
- D 1 - I - 0x02AABD 0A:AAAD: 96        .byte $96   ; 
- D 1 - I - 0x02AABE 0A:AAAE: 30        .byte $30   ; 
- D 1 - I - 0x02AABF 0A:AAAF: 58        .byte $58   ; 



_off030_AAB0_9D:
- D 1 - I - 0x02AAC0 0A:AAB0: 90        .byte $90   ; 
- D 1 - I - 0x02AAC1 0A:AAB1: AE        .byte $AE   ; 
- D 1 - I - 0x02AAC2 0A:AAB2: 30        .byte $30   ; 
- D 1 - I - 0x02AAC3 0A:AAB3: 88        .byte $88   ; 



_off030_AAB4_9E:
- D 1 - I - 0x02AAC4 0A:AAB4: 91        .byte $91   ; 
- D 1 - I - 0x02AAC5 0A:AAB5: AE        .byte $AE   ; 
- D 1 - I - 0x02AAC6 0A:AAB6: 30        .byte $30   ; 
- D 1 - I - 0x02AAC7 0A:AAB7: 90        .byte $90   ; 



_off030_AAB8_9F:
- D 1 - I - 0x02AAC8 0A:AAB8: 91        .byte $91   ; 
- D 1 - I - 0x02AAC9 0A:AAB9: 95        .byte $95   ; 
- D 1 - I - 0x02AACA 0A:AABA: 20        .byte $20   ; 
- D 1 - I - 0x02AACB 0A:AABB: 90        .byte $90   ; 



_off030_AABC_A0:
- D 1 - I - 0x02AACC 0A:AABC: 90        .byte $90   ; 
- D 1 - I - 0x02AACD 0A:AABD: A2        .byte $A2   ; 
- D 1 - I - 0x02AACE 0A:AABE: 20        .byte $20   ; 
- D 1 - I - 0x02AACF 0A:AABF: 48        .byte $48   ; 



_off030_AAC0_A1:
- D 1 - I - 0x02AAD0 0A:AAC0: 90        .byte $90   ; 
- D 1 - I - 0x02AAD1 0A:AAC1: 96        .byte $96   ; 
- D 1 - I - 0x02AAD2 0A:AAC2: 20        .byte $20   ; 
- D 1 - I - 0x02AAD3 0A:AAC3: 68        .byte $68   ; 



_off030_AAC4_A2:
- D 1 - I - 0x02AAD4 0A:AAC4: 90        .byte $90   ; 
- D 1 - I - 0x02AAD5 0A:AAC5: AD        .byte $AD   ; 
- D 1 - I - 0x02AAD6 0A:AAC6: 20        .byte $20   ; 
- D 1 - I - 0x02AAD7 0A:AAC7: 68        .byte $68   ; 



_off030_AAC8_A3:
- D 1 - I - 0x02AAD8 0A:AAC8: 90        .byte $90   ; 
- D 1 - I - 0x02AAD9 0A:AAC9: A2        .byte $A2   ; 
- D 1 - I - 0x02AADA 0A:AACA: 20        .byte $20   ; 
- D 1 - I - 0x02AADB 0A:AACB: 68        .byte $68   ; 



_off030_AACC_A4:
; bzk garbage
- - - - - - 0x02AADC 0A:AACC: 90        .byte $90   ; 
- - - - - - 0x02AADD 0A:AACD: A1        .byte $A1   ; 
- - - - - - 0x02AADE 0A:AACE: 20        .byte $20   ; 
- - - - - - 0x02AADF 0A:AACF: 68        .byte $68   ; 



_off030_AAD0_A5:
- D 1 - I - 0x02AAE0 0A:AAD0: 91        .byte $91   ; 
- D 1 - I - 0x02AAE1 0A:AAD1: A4        .byte $A4   ; 
- D 1 - I - 0x02AAE2 0A:AAD2: 10        .byte $10   ; 
- D 1 - I - 0x02AAE3 0A:AAD3: C0        .byte $C0   ; 



_off030_AAD4_A6:
; bzk garbage
- - - - - - 0x02AAE4 0A:AAD4: 90        .byte $90   ; 
- - - - - - 0x02AAE5 0A:AAD5: A1        .byte $A1   ; 
- - - - - - 0x02AAE6 0A:AAD6: 00        .byte $00   ; 
- - - - - - 0x02AAE7 0A:AAD7: A8        .byte $A8   ; 



_off030_AAD8_A7:
- D 1 - I - 0x02AAE8 0A:AAD8: 90        .byte $90   ; 
- D 1 - I - 0x02AAE9 0A:AAD9: 97        .byte $97   ; 
- D 1 - I - 0x02AAEA 0A:AADA: 30        .byte $30   ; 
- D 1 - I - 0x02AAEB 0A:AADB: 78        .byte $78   ; 



_off030_AADC_A8:
- D 1 - I - 0x02AAEC 0A:AADC: 91        .byte $91   ; 
- D 1 - I - 0x02AAED 0A:AADD: 93        .byte $93   ; 
- D 1 - I - 0x02AAEE 0A:AADE: 30        .byte $30   ; 
- D 1 - I - 0x02AAEF 0A:AADF: 70        .byte $70   ; 



_off030_AAE0_A9:
- D 1 - I - 0x02AAF0 0A:AAE0: 90        .byte $90   ; 
- D 1 - I - 0x02AAF1 0A:AAE1: A6        .byte $A6   ; 
- D 1 - I - 0x02AAF2 0A:AAE2: 20        .byte $20   ; 
- D 1 - I - 0x02AAF3 0A:AAE3: 40        .byte $40   ; 



_off030_AAE4_AA:
- D 1 - I - 0x02AAF4 0A:AAE4: 90        .byte $90   ; 
- D 1 - I - 0x02AAF5 0A:AAE5: AC        .byte $AC   ; 
- D 1 - I - 0x02AAF6 0A:AAE6: 18        .byte $18   ; 
- D 1 - I - 0x02AAF7 0A:AAE7: A8        .byte $A8   ; 



_off030_AAE8_AB:
- D 1 - I - 0x02AAF8 0A:AAE8: 90        .byte $90   ; 
- D 1 - I - 0x02AAF9 0A:AAE9: AE        .byte $AE   ; 
- D 1 - I - 0x02AAFA 0A:AAEA: 10        .byte $10   ; 
- D 1 - I - 0x02AAFB 0A:AAEB: 38        .byte $38   ; 



_off030_AAEC_AC:
- D 1 - I - 0x02AAFC 0A:AAEC: 90        .byte $90   ; 
- D 1 - I - 0x02AAFD 0A:AAED: AD        .byte $AD   ; 
- D 1 - I - 0x02AAFE 0A:AAEE: 30        .byte $30   ; 
- D 1 - I - 0x02AAFF 0A:AAEF: A8        .byte $A8   ; 



_off030_AAF0_AD:
- D 1 - I - 0x02AB00 0A:AAF0: 90        .byte $90   ; 
- D 1 - I - 0x02AB01 0A:AAF1: 95        .byte $95   ; 
- D 1 - I - 0x02AB02 0A:AAF2: 30        .byte $30   ; 
- D 1 - I - 0x02AB03 0A:AAF3: 98        .byte $98   ; 



_off030_AAF4_AE:
- D 1 - I - 0x02AB04 0A:AAF4: 90        .byte $90   ; 
- D 1 - I - 0x02AB05 0A:AAF5: AE        .byte $AE   ; 
- D 1 - I - 0x02AB06 0A:AAF6: 30        .byte $30   ; 
- D 1 - I - 0x02AB07 0A:AAF7: 98        .byte $98   ; 



_off030_AAF8_AF:
- D 1 - I - 0x02AB08 0A:AAF8: 90        .byte $90   ; 
- D 1 - I - 0x02AB09 0A:AAF9: AD        .byte $AD   ; 
- D 1 - I - 0x02AB0A 0A:AAFA: 38        .byte $38   ; 
- D 1 - I - 0x02AB0B 0A:AAFB: 68        .byte $68   ; 



_off030_AAFC_B0:
- D 1 - I - 0x02AB0C 0A:AAFC: 90        .byte $90   ; 
- D 1 - I - 0x02AB0D 0A:AAFD: A6        .byte $A6   ; 
- D 1 - I - 0x02AB0E 0A:AAFE: 38        .byte $38   ; 
- D 1 - I - 0x02AB0F 0A:AAFF: 58        .byte $58   ; 



_off030_AB00_B1:
- D 1 - I - 0x02AB10 0A:AB00: 90        .byte $90   ; 
- D 1 - I - 0x02AB11 0A:AB01: 94        .byte $94   ; 
- D 1 - I - 0x02AB12 0A:AB02: 30        .byte $30   ; 
- D 1 - I - 0x02AB13 0A:AB03: 58        .byte $58   ; 



_off030_AB04_B2:
- D 1 - I - 0x02AB14 0A:AB04: 90        .byte $90   ; 
- D 1 - I - 0x02AB15 0A:AB05: A4        .byte $A4   ; 
- D 1 - I - 0x02AB16 0A:AB06: 28        .byte $28   ; 
- D 1 - I - 0x02AB17 0A:AB07: 48        .byte $48   ; 



_off030_AB08_B3:
- D 1 - I - 0x02AB18 0A:AB08: 90        .byte $90   ; 
- D 1 - I - 0x02AB19 0A:AB09: AE        .byte $AE   ; 
- D 1 - I - 0x02AB1A 0A:AB0A: 18        .byte $18   ; 
- D 1 - I - 0x02AB1B 0A:AB0B: 48        .byte $48   ; 



_off030_AB0C_B4:
- D 1 - I - 0x02AB1C 0A:AB0C: 90        .byte $90   ; 
- D 1 - I - 0x02AB1D 0A:AB0D: AC        .byte $AC   ; 
- D 1 - I - 0x02AB1E 0A:AB0E: 10        .byte $10   ; 
- D 1 - I - 0x02AB1F 0A:AB0F: 80        .byte $80   ; 



_off030_AB10_B5:
- D 1 - I - 0x02AB20 0A:AB10: 90        .byte $90   ; 
- D 1 - I - 0x02AB21 0A:AB11: AE        .byte $AE   ; 
- D 1 - I - 0x02AB22 0A:AB12: 00        .byte $00   ; 
- D 1 - I - 0x02AB23 0A:AB13: 60        .byte $60   ; 



_off030_AB14_B6:
- D 1 - I - 0x02AB24 0A:AB14: 90        .byte $90   ; 
- D 1 - I - 0x02AB25 0A:AB15: 95        .byte $95   ; 
- D 1 - I - 0x02AB26 0A:AB16: 30        .byte $30   ; 
- D 1 - I - 0x02AB27 0A:AB17: A8        .byte $A8   ; 



_off030_AB18_B7:
- D 1 - I - 0x02AB28 0A:AB18: 90        .byte $90   ; 
- D 1 - I - 0x02AB29 0A:AB19: AE        .byte $AE   ; 
- D 1 - I - 0x02AB2A 0A:AB1A: 30        .byte $30   ; 
- D 1 - I - 0x02AB2B 0A:AB1B: B8        .byte $B8   ; 



_off030_AB1C_B8:
- D 1 - I - 0x02AB2C 0A:AB1C: 90        .byte $90   ; 
- D 1 - I - 0x02AB2D 0A:AB1D: A5        .byte $A5   ; 
- D 1 - I - 0x02AB2E 0A:AB1E: 30        .byte $30   ; 
- D 1 - I - 0x02AB2F 0A:AB1F: 38        .byte $38   ; 



_off030_AB20_B9:
; bzk garbage
- - - - - - 0x02AB30 0A:AB20: 90        .byte $90   ; 
- - - - - - 0x02AB31 0A:AB21: AD        .byte $AD   ; 
- - - - - - 0x02AB32 0A:AB22: 10        .byte $10   ; 
- - - - - - 0x02AB33 0A:AB23: B8        .byte $B8   ; 



_off030_AB24_BA:
; bzk garbage
- - - - - - 0x02AB34 0A:AB24: 90        .byte $90   ; 
- - - - - - 0x02AB35 0A:AB25: 94        .byte $94   ; 
- - - - - - 0x02AB36 0A:AB26: 10        .byte $10   ; 
- - - - - - 0x02AB37 0A:AB27: 98        .byte $98   ; 



_off030_AB28_BB:
- D 1 - I - 0x02AB38 0A:AB28: 90        .byte $90   ; 
- D 1 - I - 0x02AB39 0A:AB29: A5        .byte $A5   ; 
- D 1 - I - 0x02AB3A 0A:AB2A: 30        .byte $30   ; 
- D 1 - I - 0x02AB3B 0A:AB2B: 98        .byte $98   ; 



_off030_AB2C_BC:
- D 1 - I - 0x02AB3C 0A:AB2C: 90        .byte $90   ; 
- D 1 - I - 0x02AB3D 0A:AB2D: 93        .byte $93   ; 
- D 1 - I - 0x02AB3E 0A:AB2E: 10        .byte $10   ; 
- D 1 - I - 0x02AB3F 0A:AB2F: 78        .byte $78   ; 



_off030_AB30_BD:
- D 1 - I - 0x02AB40 0A:AB30: 90        .byte $90   ; 
- D 1 - I - 0x02AB41 0A:AB31: AE        .byte $AE   ; 
- D 1 - I - 0x02AB42 0A:AB32: 38        .byte $38   ; 
- D 1 - I - 0x02AB43 0A:AB33: 98        .byte $98   ; 



_off030_AB34_BE:
- D 1 - I - 0x02AB44 0A:AB34: 90        .byte $90   ; 
- D 1 - I - 0x02AB45 0A:AB35: AE        .byte $AE   ; 
- D 1 - I - 0x02AB46 0A:AB36: 28        .byte $28   ; 
- D 1 - I - 0x02AB47 0A:AB37: 88        .byte $88   ; 



_off030_AB38_BF:
- D 1 - I - 0x02AB48 0A:AB38: 90        .byte $90   ; 
- D 1 - I - 0x02AB49 0A:AB39: AE        .byte $AE   ; 
- D 1 - I - 0x02AB4A 0A:AB3A: 10        .byte $10   ; 
- D 1 - I - 0x02AB4B 0A:AB3B: B8        .byte $B8   ; 



_off030_AB3C_C0:
- D 1 - I - 0x02AB4C 0A:AB3C: 90        .byte $90   ; 
- D 1 - I - 0x02AB4D 0A:AB3D: A6        .byte $A6   ; 
- D 1 - I - 0x02AB4E 0A:AB3E: 10        .byte $10   ; 
- D 1 - I - 0x02AB4F 0A:AB3F: 98        .byte $98   ; 



_off030_AB40_C1:
- D 1 - I - 0x02AB50 0A:AB40: 90        .byte $90   ; 
- D 1 - I - 0x02AB51 0A:AB41: 96        .byte $96   ; 
- D 1 - I - 0x02AB52 0A:AB42: 20        .byte $20   ; 
- D 1 - I - 0x02AB53 0A:AB43: 38        .byte $38   ; 



_off030_AB44_C2:
- D 1 - I - 0x02AB54 0A:AB44: 90        .byte $90   ; 
- D 1 - I - 0x02AB55 0A:AB45: 94        .byte $94   ; 
- D 1 - I - 0x02AB56 0A:AB46: 10        .byte $10   ; 
- D 1 - I - 0x02AB57 0A:AB47: 78        .byte $78   ; 



_off030_AB48_C3:
- D 1 - I - 0x02AB58 0A:AB48: 90        .byte $90   ; 
- D 1 - I - 0x02AB59 0A:AB49: AE        .byte $AE   ; 
- D 1 - I - 0x02AB5A 0A:AB4A: 30        .byte $30   ; 
- D 1 - I - 0x02AB5B 0A:AB4B: 58        .byte $58   ; 



_off030_AB4C_C4:
- D 1 - I - 0x02AB5C 0A:AB4C: 90        .byte $90   ; 
- D 1 - I - 0x02AB5D 0A:AB4D: A4        .byte $A4   ; 
- D 1 - I - 0x02AB5E 0A:AB4E: 30        .byte $30   ; 
- D 1 - I - 0x02AB5F 0A:AB4F: 58        .byte $58   ; 



_off030_AB50_C5:
; bzk garbage
- - - - - - 0x02AB60 0A:AB50: 90        .byte $90   ; 
- - - - - - 0x02AB61 0A:AB51: 95        .byte $95   ; 
- - - - - - 0x02AB62 0A:AB52: 10        .byte $10   ; 
- - - - - - 0x02AB63 0A:AB53: A8        .byte $A8   ; 



_off030_AB54_C6:
- D 1 - I - 0x02AB64 0A:AB54: 90        .byte $90   ; 
- D 1 - I - 0x02AB65 0A:AB55: 96        .byte $96   ; 
- D 1 - I - 0x02AB66 0A:AB56: 10        .byte $10   ; 
- D 1 - I - 0x02AB67 0A:AB57: 50        .byte $50   ; 



_off030_AB58_C7:
- D 1 - I - 0x02AB68 0A:AB58: 90        .byte $90   ; 
- D 1 - I - 0x02AB69 0A:AB59: 94        .byte $94   ; 
- D 1 - I - 0x02AB6A 0A:AB5A: 10        .byte $10   ; 
- D 1 - I - 0x02AB6B 0A:AB5B: 68        .byte $68   ; 



_off030_AB5C_C8:
- D 1 - I - 0x02AB6C 0A:AB5C: 90        .byte $90   ; 
- D 1 - I - 0x02AB6D 0A:AB5D: 93        .byte $93   ; 
- D 1 - I - 0x02AB6E 0A:AB5E: 20        .byte $20   ; 
- D 1 - I - 0x02AB6F 0A:AB5F: 98        .byte $98   ; 



_off030_AB60_C9:
- D 1 - I - 0x02AB70 0A:AB60: 90        .byte $90   ; 
- D 1 - I - 0x02AB71 0A:AB61: A4        .byte $A4   ; 
- D 1 - I - 0x02AB72 0A:AB62: 30        .byte $30   ; 
- D 1 - I - 0x02AB73 0A:AB63: 60        .byte $60   ; 



_off030_AB64_CA:
- D 1 - I - 0x02AB74 0A:AB64: 90        .byte $90   ; 
- D 1 - I - 0x02AB75 0A:AB65: AE        .byte $AE   ; 
- D 1 - I - 0x02AB76 0A:AB66: 08        .byte $08   ; 
- D 1 - I - 0x02AB77 0A:AB67: 70        .byte $70   ; 



_off030_AB68_CB:
- D 1 - I - 0x02AB78 0A:AB68: 90        .byte $90   ; 
- D 1 - I - 0x02AB79 0A:AB69: AD        .byte $AD   ; 
- D 1 - I - 0x02AB7A 0A:AB6A: 28        .byte $28   ; 
- D 1 - I - 0x02AB7B 0A:AB6B: 38        .byte $38   ; 



_off030_AB6C_CC:
- D 1 - I - 0x02AB7C 0A:AB6C: 90        .byte $90   ; 
- D 1 - I - 0x02AB7D 0A:AB6D: A6        .byte $A6   ; 
- D 1 - I - 0x02AB7E 0A:AB6E: 38        .byte $38   ; 
- D 1 - I - 0x02AB7F 0A:AB6F: 88        .byte $88   ; 



_off030_AB70_CD:
- D 1 - I - 0x02AB80 0A:AB70: 90        .byte $90   ; 
- D 1 - I - 0x02AB81 0A:AB71: AE        .byte $AE   ; 
- D 1 - I - 0x02AB82 0A:AB72: 18        .byte $18   ; 
- D 1 - I - 0x02AB83 0A:AB73: 88        .byte $88   ; 



_off030_AB74_CE:
- D 1 - I - 0x02AB84 0A:AB74: 90        .byte $90   ; 
- D 1 - I - 0x02AB85 0A:AB75: 95        .byte $95   ; 
- D 1 - I - 0x02AB86 0A:AB76: 38        .byte $38   ; 
- D 1 - I - 0x02AB87 0A:AB77: 38        .byte $38   ; 



_off030_AB78_CF:
; bzk garbage
- - - - - - 0x02AB88 0A:AB78: 90        .byte $90   ; 
- - - - - - 0x02AB89 0A:AB79: 94        .byte $94   ; 
- - - - - - 0x02AB8A 0A:AB7A: 28        .byte $28   ; 
- - - - - - 0x02AB8B 0A:AB7B: 38        .byte $38   ; 



_off030_AB7C_D0:
- D 1 - I - 0x02AB8C 0A:AB7C: 90        .byte $90   ; 
- D 1 - I - 0x02AB8D 0A:AB7D: 96        .byte $96   ; 
- D 1 - I - 0x02AB8E 0A:AB7E: 00        .byte $00   ; 
- D 1 - I - 0x02AB8F 0A:AB7F: A8        .byte $A8   ; 



_off030_AB80_D1:
- D 1 - I - 0x02AB90 0A:AB80: 91        .byte $91   ; 
- D 1 - I - 0x02AB91 0A:AB81: AE        .byte $AE   ; 
- D 1 - I - 0x02AB92 0A:AB82: 10        .byte $10   ; 
- D 1 - I - 0x02AB93 0A:AB83: 50        .byte $50   ; 



_off030_AB84_D2:
- D 1 - I - 0x02AB94 0A:AB84: 90        .byte $90   ; 
- D 1 - I - 0x02AB95 0A:AB85: AD        .byte $AD   ; 
- D 1 - I - 0x02AB96 0A:AB86: 10        .byte $10   ; 
- D 1 - I - 0x02AB97 0A:AB87: 58        .byte $58   ; 



_off030_AB88_D3:
; bzk garbage
- - - - - - 0x02AB98 0A:AB88: 90        .byte $90   ; 
- - - - - - 0x02AB99 0A:AB89: 96        .byte $96   ; 
- - - - - - 0x02AB9A 0A:AB8A: 20        .byte $20   ; 
- - - - - - 0x02AB9B 0A:AB8B: A0        .byte $A0   ; 



_off030_AB8C_D4:
- D 1 - I - 0x02AB9C 0A:AB8C: 90        .byte $90   ; 
- D 1 - I - 0x02AB9D 0A:AB8D: AD        .byte $AD   ; 
- D 1 - I - 0x02AB9E 0A:AB8E: 10        .byte $10   ; 
- D 1 - I - 0x02AB9F 0A:AB8F: 60        .byte $60   ; 



_off030_AB90_D5:
- D 1 - I - 0x02ABA0 0A:AB90: 90        .byte $90   ; 
- D 1 - I - 0x02ABA1 0A:AB91: 95        .byte $95   ; 
- D 1 - I - 0x02ABA2 0A:AB92: 30        .byte $30   ; 
- D 1 - I - 0x02ABA3 0A:AB93: 48        .byte $48   ; 



_off030_AB94_D6:
; bzk garbage
- - - - - - 0x02ABA4 0A:AB94: 90        .byte $90   ; 
- - - - - - 0x02ABA5 0A:AB95: 96        .byte $96   ; 
- - - - - - 0x02ABA6 0A:AB96: 30        .byte $30   ; 
- - - - - - 0x02ABA7 0A:AB97: A8        .byte $A8   ; 



_off030_AB98_D7:
- D 1 - I - 0x02ABA8 0A:AB98: 90        .byte $90   ; 
- D 1 - I - 0x02ABA9 0A:AB99: A7        .byte $A7   ; 
- D 1 - I - 0x02ABAA 0A:AB9A: 10        .byte $10   ; 
- D 1 - I - 0x02ABAB 0A:AB9B: 58        .byte $58   ; 



_off030_AB9C_D8:
- D 1 - I - 0x02ABAC 0A:AB9C: 90        .byte $90   ; 
- D 1 - I - 0x02ABAD 0A:AB9D: A6        .byte $A6   ; 
- D 1 - I - 0x02ABAE 0A:AB9E: 10        .byte $10   ; 
- D 1 - I - 0x02ABAF 0A:AB9F: 48        .byte $48   ; 



_off030_ABA0_D9:
- D 1 - I - 0x02ABB0 0A:ABA0: 90        .byte $90   ; 
- D 1 - I - 0x02ABB1 0A:ABA1: A7        .byte $A7   ; 
- D 1 - I - 0x02ABB2 0A:ABA2: 20        .byte $20   ; 
- D 1 - I - 0x02ABB3 0A:ABA3: 58        .byte $58   ; 



_off030_ABA4_DA:
- D 1 - I - 0x02ABB4 0A:ABA4: 90        .byte $90   ; 
- D 1 - I - 0x02ABB5 0A:ABA5: A7        .byte $A7   ; 
- D 1 - I - 0x02ABB6 0A:ABA6: 20        .byte $20   ; 
- D 1 - I - 0x02ABB7 0A:ABA7: 58        .byte $58   ; 



_off030_ABA8_DB:
- D 1 - I - 0x02ABB8 0A:ABA8: 90        .byte $90   ; 
- D 1 - I - 0x02ABB9 0A:ABA9: 93        .byte $93   ; 
- D 1 - I - 0x02ABBA 0A:ABAA: 20        .byte $20   ; 
- D 1 - I - 0x02ABBB 0A:ABAB: 48        .byte $48   ; 



_off030_ABAC_DC:
- D 1 - I - 0x02ABBC 0A:ABAC: 91        .byte $91   ; 
- D 1 - I - 0x02ABBD 0A:ABAD: AE        .byte $AE   ; 
- D 1 - I - 0x02ABBE 0A:ABAE: 30        .byte $30   ; 
- D 1 - I - 0x02ABBF 0A:ABAF: B0        .byte $B0   ; 



_off030_ABB0_DD:
- D 1 - I - 0x02ABC0 0A:ABB0: 90        .byte $90   ; 
- D 1 - I - 0x02ABC1 0A:ABB1: AD        .byte $AD   ; 
- D 1 - I - 0x02ABC2 0A:ABB2: 18        .byte $18   ; 
- D 1 - I - 0x02ABC3 0A:ABB3: 48        .byte $48   ; 



_off030_ABB4_DE:
- D 1 - I - 0x02ABC4 0A:ABB4: 90        .byte $90   ; 
- D 1 - I - 0x02ABC5 0A:ABB5: AE        .byte $AE   ; 
- D 1 - I - 0x02ABC6 0A:ABB6: 30        .byte $30   ; 
- D 1 - I - 0x02ABC7 0A:ABB7: 90        .byte $90   ; 



_off030_ABB8_DF:
- D 1 - I - 0x02ABC8 0A:ABB8: 90        .byte $90   ; 
- D 1 - I - 0x02ABC9 0A:ABB9: AE        .byte $AE   ; 
- D 1 - I - 0x02ABCA 0A:ABBA: 20        .byte $20   ; 
- D 1 - I - 0x02ABCB 0A:ABBB: 98        .byte $98   ; 



_off030_ABBC_E0:
- D 1 - I - 0x02ABCC 0A:ABBC: 90        .byte $90   ; 
- D 1 - I - 0x02ABCD 0A:ABBD: 94        .byte $94   ; 
- D 1 - I - 0x02ABCE 0A:ABBE: 10        .byte $10   ; 
- D 1 - I - 0x02ABCF 0A:ABBF: 38        .byte $38   ; 



_off030_ABC0_E1:
- D 1 - I - 0x02ABD0 0A:ABC0: 90        .byte $90   ; 
- D 1 - I - 0x02ABD1 0A:ABC1: A5        .byte $A5   ; 
- D 1 - I - 0x02ABD2 0A:ABC2: 20        .byte $20   ; 
- D 1 - I - 0x02ABD3 0A:ABC3: 68        .byte $68   ; 



_off030_ABC4_E2:
- D 1 - I - 0x02ABD4 0A:ABC4: 90        .byte $90   ; 
- D 1 - I - 0x02ABD5 0A:ABC5: AD        .byte $AD   ; 
- D 1 - I - 0x02ABD6 0A:ABC6: 10        .byte $10   ; 
- D 1 - I - 0x02ABD7 0A:ABC7: 68        .byte $68   ; 



_off030_ABC8_E3:
- D 1 - I - 0x02ABD8 0A:ABC8: 90        .byte $90   ; 
- D 1 - I - 0x02ABD9 0A:ABC9: A2        .byte $A2   ; 
- D 1 - I - 0x02ABDA 0A:ABCA: 30        .byte $30   ; 
- D 1 - I - 0x02ABDB 0A:ABCB: 98        .byte $98   ; 



_off030_ABCC_E4:
- D 1 - I - 0x02ABDC 0A:ABCC: 90        .byte $90   ; 
- D 1 - I - 0x02ABDD 0A:ABCD: 93        .byte $93   ; 
- D 1 - I - 0x02ABDE 0A:ABCE: 10        .byte $10   ; 
- D 1 - I - 0x02ABDF 0A:ABCF: 98        .byte $98   ; 



_off030_ABD0_E5:
; bzk garbage
- - - - - - 0x02ABE0 0A:ABD0: 90        .byte $90   ; 
- - - - - - 0x02ABE1 0A:ABD1: AD        .byte $AD   ; 
- - - - - - 0x02ABE2 0A:ABD2: 30        .byte $30   ; 
- - - - - - 0x02ABE3 0A:ABD3: B8        .byte $B8   ; 



_off030_ABD4_E6:
- D 1 - I - 0x02ABE4 0A:ABD4: 90        .byte $90   ; 
- D 1 - I - 0x02ABE5 0A:ABD5: AA        .byte $AA   ; 
- D 1 - I - 0x02ABE6 0A:ABD6: 30        .byte $30   ; 
- D 1 - I - 0x02ABE7 0A:ABD7: 50        .byte $50   ; 



_off030_ABD8_E7:
- D 1 - I - 0x02ABE8 0A:ABD8: 90        .byte $90   ; 
- D 1 - I - 0x02ABE9 0A:ABD9: AE        .byte $AE   ; 
- D 1 - I - 0x02ABEA 0A:ABDA: 38        .byte $38   ; 
- D 1 - I - 0x02ABEB 0A:ABDB: 68        .byte $68   ; 



_off030_ABDC_E8:
- D 1 - I - 0x02ABEC 0A:ABDC: 90        .byte $90   ; 
- D 1 - I - 0x02ABED 0A:ABDD: AE        .byte $AE   ; 
- D 1 - I - 0x02ABEE 0A:ABDE: 18        .byte $18   ; 
- D 1 - I - 0x02ABEF 0A:ABDF: 68        .byte $68   ; 



_off030_ABE0_E9:
- D 1 - I - 0x02ABF0 0A:ABE0: 90        .byte $90   ; 
- D 1 - I - 0x02ABF1 0A:ABE1: 97        .byte $97   ; 
- D 1 - I - 0x02ABF2 0A:ABE2: 20        .byte $20   ; 
- D 1 - I - 0x02ABF3 0A:ABE3: 98        .byte $98   ; 



_off030_ABE4_EA:
- D 1 - I - 0x02ABF4 0A:ABE4: 90        .byte $90   ; 
- D 1 - I - 0x02ABF5 0A:ABE5: AE        .byte $AE   ; 
- D 1 - I - 0x02ABF6 0A:ABE6: 30        .byte $30   ; 
- D 1 - I - 0x02ABF7 0A:ABE7: A0        .byte $A0   ; 



_off030_ABE8_EB:
- D 1 - I - 0x02ABF8 0A:ABE8: 90        .byte $90   ; 
- D 1 - I - 0x02ABF9 0A:ABE9: AE        .byte $AE   ; 
- D 1 - I - 0x02ABFA 0A:ABEA: 00        .byte $00   ; 
- D 1 - I - 0x02ABFB 0A:ABEB: 68        .byte $68   ; 



_off030_ABEC_EC:
- D 1 - I - 0x02ABFC 0A:ABEC: 90        .byte $90   ; 
- D 1 - I - 0x02ABFD 0A:ABED: 93        .byte $93   ; 
- D 1 - I - 0x02ABFE 0A:ABEE: 30        .byte $30   ; 
- D 1 - I - 0x02ABFF 0A:ABEF: 98        .byte $98   ; 



_off030_ABF0_ED:
- D 1 - I - 0x02AC00 0A:ABF0: 91        .byte $91   ; 
- D 1 - I - 0x02AC01 0A:ABF1: 95        .byte $95   ; 
- D 1 - I - 0x02AC02 0A:ABF2: 10        .byte $10   ; 
- D 1 - I - 0x02AC03 0A:ABF3: B0        .byte $B0   ; 



_off030_ABF4_EE:
- D 1 - I - 0x02AC04 0A:ABF4: 92        .byte $92   ; 
- D 1 - I - 0x02AC05 0A:ABF5: AA        .byte $AA   ; 
- D 1 - I - 0x02AC06 0A:ABF6: 18        .byte $18   ; 
- D 1 - I - 0x02AC07 0A:ABF7: 78        .byte $78   ; 



_off030_ABF8_EF:
- D 1 - I - 0x02AC08 0A:ABF8: 90        .byte $90   ; 
- D 1 - I - 0x02AC09 0A:ABF9: 93        .byte $93   ; 
- D 1 - I - 0x02AC0A 0A:ABFA: 30        .byte $30   ; 
- D 1 - I - 0x02AC0B 0A:ABFB: 58        .byte $58   ; 



_off030_ABFC_F0:
; bzk garbage
- - - - - - 0x02AC0C 0A:ABFC: 90        .byte $90   ; 
- - - - - - 0x02AC0D 0A:ABFD: 94        .byte $94   ; 
- - - - - - 0x02AC0E 0A:ABFE: 18        .byte $18   ; 
- - - - - - 0x02AC0F 0A:ABFF: 48        .byte $48   ; 



_off030_AC00_F1:
- D 1 - I - 0x02AC10 0A:AC00: 90        .byte $90   ; 
- D 1 - I - 0x02AC11 0A:AC01: A5        .byte $A5   ; 
- D 1 - I - 0x02AC12 0A:AC02: 10        .byte $10   ; 
- D 1 - I - 0x02AC13 0A:AC03: 74        .byte $74   ; 



_off030_AC04_F2:
- D 1 - I - 0x02AC14 0A:AC04: 92        .byte $92   ; 
- D 1 - I - 0x02AC15 0A:AC05: AD        .byte $AD   ; 
- D 1 - I - 0x02AC16 0A:AC06: 18        .byte $18   ; 
- D 1 - I - 0x02AC17 0A:AC07: 48        .byte $48   ; 



_off030_AC08_F3:
- D 1 - I - 0x02AC18 0A:AC08: 90        .byte $90   ; 
- D 1 - I - 0x02AC19 0A:AC09: AE        .byte $AE   ; 
- D 1 - I - 0x02AC1A 0A:AC0A: 3C        .byte $3C   ; 
- D 1 - I - 0x02AC1B 0A:AC0B: 58        .byte $58   ; 



_off030_AC0C_F4:
; bzk garbage
- - - - - - 0x02AC1C 0A:AC0C: 90        .byte $90   ; 
- - - - - - 0x02AC1D 0A:AC0D: 96        .byte $96   ; 
- - - - - - 0x02AC1E 0A:AC0E: 30        .byte $30   ; 
- - - - - - 0x02AC1F 0A:AC0F: 48        .byte $48   ; 



_off030_AC10_F5:
- D 1 - I - 0x02AC20 0A:AC10: 90        .byte $90   ; 
- D 1 - I - 0x02AC21 0A:AC11: 94        .byte $94   ; 
- D 1 - I - 0x02AC22 0A:AC12: 0C        .byte $0C   ; 
- D 1 - I - 0x02AC23 0A:AC13: 98        .byte $98   ; 



_off030_AC14_F6:
- D 1 - I - 0x02AC24 0A:AC14: 90        .byte $90   ; 
- D 1 - I - 0x02AC25 0A:AC15: 94        .byte $94   ; 
- D 1 - I - 0x02AC26 0A:AC16: 10        .byte $10   ; 
- D 1 - I - 0x02AC27 0A:AC17: B0        .byte $B0   ; 



_off030_AC18_F7:
- D 1 - I - 0x02AC28 0A:AC18: 90        .byte $90   ; 
- D 1 - I - 0x02AC29 0A:AC19: 95        .byte $95   ; 
- D 1 - I - 0x02AC2A 0A:AC1A: 10        .byte $10   ; 
- D 1 - I - 0x02AC2B 0A:AC1B: 48        .byte $48   ; 



_off030_AC1C_F8:
- D 1 - I - 0x02AC2C 0A:AC1C: 90        .byte $90   ; 
- D 1 - I - 0x02AC2D 0A:AC1D: AC        .byte $AC   ; 
- D 1 - I - 0x02AC2E 0A:AC1E: 28        .byte $28   ; 
- D 1 - I - 0x02AC2F 0A:AC1F: 38        .byte $38   ; 



_off030_AC20_F9:
- D 1 - I - 0x02AC30 0A:AC20: 92        .byte $92   ; 
- D 1 - I - 0x02AC31 0A:AC21: 95        .byte $95   ; 
- D 1 - I - 0x02AC32 0A:AC22: 10        .byte $10   ; 
- D 1 - I - 0x02AC33 0A:AC23: 78        .byte $78   ; 



_off030_AC24_FA:
- D 1 - I - 0x02AC34 0A:AC24: 90        .byte $90   ; 
- D 1 - I - 0x02AC35 0A:AC25: AE        .byte $AE   ; 
- D 1 - I - 0x02AC36 0A:AC26: 30        .byte $30   ; 
- D 1 - I - 0x02AC37 0A:AC27: 80        .byte $80   ; 



_off030_AC28_FB:
- D 1 - I - 0x02AC38 0A:AC28: 90        .byte $90   ; 
- D 1 - I - 0x02AC39 0A:AC29: 93        .byte $93   ; 
- D 1 - I - 0x02AC3A 0A:AC2A: 20        .byte $20   ; 
- D 1 - I - 0x02AC3B 0A:AC2B: A0        .byte $A0   ; 



_off030_AC2C_FC:
- D 1 - I - 0x02AC3C 0A:AC2C: 90        .byte $90   ; 
- D 1 - I - 0x02AC3D 0A:AC2D: 96        .byte $96   ; 
- D 1 - I - 0x02AC3E 0A:AC2E: 10        .byte $10   ; 
- D 1 - I - 0x02AC3F 0A:AC2F: 78        .byte $78   ; 



_off030_AC30_FD:
- D 1 - I - 0x02AC40 0A:AC30: 90        .byte $90   ; 
- D 1 - I - 0x02AC41 0A:AC31: AE        .byte $AE   ; 
- D 1 - I - 0x02AC42 0A:AC32: 18        .byte $18   ; 
- D 1 - I - 0x02AC43 0A:AC33: 98        .byte $98   ; 



off_AC34_00_01_01:
; 
- D 1 - I - 0x02AC44 0A:AC34: 01 80     .dbyt $0180 ; 
- D 1 - I - 0x02AC46 0A:AC36: 90        .byte $90   ; 
- D 1 - I - 0x02AC47 0A:AC37: 20        .byte $20   ; 
- D 1 - I - 0x02AC48 0A:AC38: A3        .byte $A3   ; 
- - - - - - 0x02AC49 0A:AC39: 00        .byte $00   ; 
- - - - - - 0x02AC4A 0A:AC3A: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AC4B 0A:AC3B: 01 52     .dbyt $0152 ; 
- D 1 - I - 0x02AC4D 0A:AC3D: 0D        .byte $0D   ; 
- D 1 - I - 0x02AC4E 0A:AC3E: D8        .byte $D8   ; 
- - - - - - 0x02AC4F 0A:AC3F: AD        .byte $AD   ; 
- D 1 - I - 0x02AC50 0A:AC40: 00        .byte $00   ; 
- D 1 - I - 0x02AC51 0A:AC41: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AC52 0A:AC42: 01 00     .dbyt $0100 ; 
- D 1 - I - 0x02AC54 0A:AC44: 90        .byte $90   ; 
- D 1 - I - 0x02AC55 0A:AC45: B8        .byte $B8   ; 
- D 1 - I - 0x02AC56 0A:AC46: AE        .byte $AE   ; 
- - - - - - 0x02AC57 0A:AC47: 00        .byte $00   ; 
- - - - - - 0x02AC58 0A:AC48: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AC59 0A:AC49: 00 E0     .dbyt $00E0 ; 
- D 1 - I - 0x02AC5B 0A:AC4B: 90        .byte $90   ; 
- D 1 - I - 0x02AC5C 0A:AC4C: 28        .byte $28   ; 
- D 1 - I - 0x02AC5D 0A:AC4D: AE        .byte $AE   ; 
- - - - - - 0x02AC5E 0A:AC4E: 00        .byte $00   ; 
- - - - - - 0x02AC5F 0A:AC4F: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AC60 0A:AC50: 00 B2     .dbyt $00B2 ; 
- D 1 - I - 0x02AC62 0A:AC52: 0D        .byte $0D   ; 
- D 1 - I - 0x02AC63 0A:AC53: D8        .byte $D8   ; 
- - - - - - 0x02AC64 0A:AC54: AD        .byte $AD   ; 
- D 1 - I - 0x02AC65 0A:AC55: 00        .byte $00   ; 
- D 1 - I - 0x02AC66 0A:AC56: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AC67 0A:AC57: 00 78     .dbyt $0078 ; 
- D 1 - I - 0x02AC69 0A:AC59: 0D        .byte $0D   ; 
- D 1 - I - 0x02AC6A 0A:AC5A: 28        .byte $28   ; 
- - - - - - 0x02AC6B 0A:AC5B: AD        .byte $AD   ; 
- D 1 - I - 0x02AC6C 0A:AC5C: 00        .byte $00   ; 
- D 1 - I - 0x02AC6D 0A:AC5D: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AC6E 0A:AC5E: 00 68     .dbyt $0068 ; 
- D 1 - I - 0x02AC70 0A:AC60: 90        .byte $90   ; 
- D 1 - I - 0x02AC71 0A:AC61: 58        .byte $58   ; 
- D 1 - I - 0x02AC72 0A:AC62: AE        .byte $AE   ; 
- - - - - - 0x02AC73 0A:AC63: 00        .byte $00   ; 
- - - - - - 0x02AC74 0A:AC64: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AC75 0A:AC65: 00 20     .dbyt $0020 ; 
- D 1 - I - 0x02AC77 0A:AC67: 90        .byte $90   ; 
- D 1 - I - 0x02AC78 0A:AC68: 40        .byte $40   ; 
- D 1 - I - 0x02AC79 0A:AC69: AD        .byte $AD   ; 
- - - - - - 0x02AC7A 0A:AC6A: 00        .byte $00   ; 
- - - - - - 0x02AC7B 0A:AC6B: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AC7C 0A:AC6C: 00 10     .dbyt $0010 ; 
- D 1 - I - 0x02AC7E 0A:AC6E: 90        .byte $90   ; 
- D 1 - I - 0x02AC7F 0A:AC6F: B8        .byte $B8   ; 
- D 1 - I - 0x02AC80 0A:AC70: 96        .byte $96   ; 
- - - - - - 0x02AC81 0A:AC71: 00        .byte $00   ; 
- - - - - - 0x02AC82 0A:AC72: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AC83 0A:AC73: FF        .byte $FF   ; end token



off_AC74_01_00_00:
; 
- D 1 - I - 0x02AC84 0A:AC74: 02 92     .dbyt $0292 ; 
- D 1 - I - 0x02AC86 0A:AC76: 90        .byte $90   ; 
- D 1 - I - 0x02AC87 0A:AC77: 9C        .byte $9C   ; 
- D 1 - I - 0x02AC88 0A:AC78: AE        .byte $AE   ; 
- - - - - - 0x02AC89 0A:AC79: 00        .byte $00   ; 
- - - - - - 0x02AC8A 0A:AC7A: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AC8B 0A:AC7B: 02 2C     .dbyt $022C ; 
- D 1 - I - 0x02AC8D 0A:AC7D: 32        .byte $32   ; 
- D 1 - I - 0x02AC8E 0A:AC7E: 40        .byte $40   ; 
- - - - - - 0x02AC8F 0A:AC7F: AD        .byte $AD   ; 
- D 1 - I - 0x02AC90 0A:AC80: 00        .byte $00   ; 
- D 1 - I - 0x02AC91 0A:AC81: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AC92 0A:AC82: 02 18     .dbyt $0218 ; 
- D 1 - I - 0x02AC94 0A:AC84: 90        .byte $90   ; 
- D 1 - I - 0x02AC95 0A:AC85: 90        .byte $90   ; 
- D 1 - I - 0x02AC96 0A:AC86: AE        .byte $AE   ; 
- - - - - - 0x02AC97 0A:AC87: 00        .byte $00   ; 
- - - - - - 0x02AC98 0A:AC88: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AC99 0A:AC89: 01 F0     .dbyt $01F0 ; 
- D 1 - I - 0x02AC9B 0A:AC8B: 90        .byte $90   ; 
- D 1 - I - 0x02AC9C 0A:AC8C: 40        .byte $40   ; 
- D 1 - I - 0x02AC9D 0A:AC8D: 97        .byte $97   ; 
- - - - - - 0x02AC9E 0A:AC8E: 00        .byte $00   ; 
- - - - - - 0x02AC9F 0A:AC8F: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ACA0 0A:AC90: 01 B8     .dbyt $01B8 ; 
- D 1 - I - 0x02ACA2 0A:AC92: 90        .byte $90   ; 
- D 1 - I - 0x02ACA3 0A:AC93: D0        .byte $D0   ; 
- D 1 - I - 0x02ACA4 0A:AC94: AE        .byte $AE   ; 
- - - - - - 0x02ACA5 0A:AC95: 00        .byte $00   ; 
- - - - - - 0x02ACA6 0A:AC96: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ACA7 0A:AC97: 01 AC     .dbyt $01AC ; 
- D 1 - I - 0x02ACA9 0A:AC99: 40        .byte $40   ; 
- D 1 - I - 0x02ACAA 0A:AC9A: 40        .byte $40   ; 
- - - - - - 0x02ACAB 0A:AC9B: AE        .byte $AE   ; 
- D 1 - I - 0x02ACAC 0A:AC9C: 00        .byte $00   ; 
- D 1 - I - 0x02ACAD 0A:AC9D: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ACAE 0A:AC9E: 01 84     .dbyt $0184 ; 
- D 1 - I - 0x02ACB0 0A:ACA0: 90        .byte $90   ; 
- D 1 - I - 0x02ACB1 0A:ACA1: 40        .byte $40   ; 
- D 1 - I - 0x02ACB2 0A:ACA2: AE        .byte $AE   ; 
- - - - - - 0x02ACB3 0A:ACA3: 00        .byte $00   ; 
- - - - - - 0x02ACB4 0A:ACA4: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ACB5 0A:ACA5: 01 44     .dbyt $0144 ; 
- D 1 - I - 0x02ACB7 0A:ACA7: 90        .byte $90   ; 
- D 1 - I - 0x02ACB8 0A:ACA8: D0        .byte $D0   ; 
- D 1 - I - 0x02ACB9 0A:ACA9: A5        .byte $A5   ; 
- - - - - - 0x02ACBA 0A:ACAA: 00        .byte $00   ; 
- - - - - - 0x02ACBB 0A:ACAB: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ACBC 0A:ACAC: 01 10     .dbyt $0110 ; 
- D 1 - I - 0x02ACBE 0A:ACAE: 90        .byte $90   ; 
- D 1 - I - 0x02ACBF 0A:ACAF: 88        .byte $88   ; 
- D 1 - I - 0x02ACC0 0A:ACB0: A3        .byte $A3   ; 
- - - - - - 0x02ACC1 0A:ACB1: 00        .byte $00   ; 
- - - - - - 0x02ACC2 0A:ACB2: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ACC3 0A:ACB3: 00 B0     .dbyt $00B0 ; 
- D 1 - I - 0x02ACC5 0A:ACB5: 90        .byte $90   ; 
- D 1 - I - 0x02ACC6 0A:ACB6: D8        .byte $D8   ; 
- D 1 - I - 0x02ACC7 0A:ACB7: AE        .byte $AE   ; 
- - - - - - 0x02ACC8 0A:ACB8: 00        .byte $00   ; 
- - - - - - 0x02ACC9 0A:ACB9: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ACCA 0A:ACBA: 00 50     .dbyt $0050 ; 
- D 1 - I - 0x02ACCC 0A:ACBC: 90        .byte $90   ; 
- D 1 - I - 0x02ACCD 0A:ACBD: 80        .byte $80   ; 
- D 1 - I - 0x02ACCE 0A:ACBE: AE        .byte $AE   ; 
- - - - - - 0x02ACCF 0A:ACBF: 00        .byte $00   ; 
- - - - - - 0x02ACD0 0A:ACC0: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ACD1 0A:ACC1: 00 20     .dbyt $0020 ; 
- D 1 - I - 0x02ACD3 0A:ACC3: 90        .byte $90   ; 
- D 1 - I - 0x02ACD4 0A:ACC4: 30        .byte $30   ; 
- D 1 - I - 0x02ACD5 0A:ACC5: A4        .byte $A4   ; 
- - - - - - 0x02ACD6 0A:ACC6: 00        .byte $00   ; 
- - - - - - 0x02ACD7 0A:ACC7: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ACD8 0A:ACC8: 00 10     .dbyt $0010 ; 
- D 1 - I - 0x02ACDA 0A:ACCA: 90        .byte $90   ; 
- D 1 - I - 0x02ACDB 0A:ACCB: 90        .byte $90   ; 
- D 1 - I - 0x02ACDC 0A:ACCC: AE        .byte $AE   ; 
- - - - - - 0x02ACDD 0A:ACCD: 00        .byte $00   ; 
- - - - - - 0x02ACDE 0A:ACCE: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ACDF 0A:ACCF: FF        .byte $FF   ; end token



off_ACD0_01_01_01:
; 
- D 1 - I - 0x02ACE0 0A:ACD0: 01 80     .dbyt $0180 ; 
- D 1 - I - 0x02ACE2 0A:ACD2: 90        .byte $90   ; 
- D 1 - I - 0x02ACE3 0A:ACD3: 18        .byte $18   ; 
- D 1 - I - 0x02ACE4 0A:ACD4: AE        .byte $AE   ; 
- - - - - - 0x02ACE5 0A:ACD5: 00        .byte $00   ; 
- - - - - - 0x02ACE6 0A:ACD6: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ACE7 0A:ACD7: 01 70     .dbyt $0170 ; 
- D 1 - I - 0x02ACE9 0A:ACD9: 4A        .byte $4A   ; 
- D 1 - I - 0x02ACEA 0A:ACDA: 20        .byte $20   ; 
- - - - - - 0x02ACEB 0A:ACDB: AE        .byte $AE   ; 
- D 1 - I - 0x02ACEC 0A:ACDC: 00        .byte $00   ; 
- D 1 - I - 0x02ACED 0A:ACDD: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ACEE 0A:ACDE: 01 68     .dbyt $0168 ; 
- D 1 - I - 0x02ACF0 0A:ACE0: 90        .byte $90   ; 
- D 1 - I - 0x02ACF1 0A:ACE1: 88        .byte $88   ; 
- D 1 - I - 0x02ACF2 0A:ACE2: AE        .byte $AE   ; 
- - - - - - 0x02ACF3 0A:ACE3: 00        .byte $00   ; 
- - - - - - 0x02ACF4 0A:ACE4: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ACF5 0A:ACE5: 01 50     .dbyt $0150 ; 
- D 1 - I - 0x02ACF7 0A:ACE7: 90        .byte $90   ; 
- D 1 - I - 0x02ACF8 0A:ACE8: E0        .byte $E0   ; 
- D 1 - I - 0x02ACF9 0A:ACE9: 93        .byte $93   ; 
- - - - - - 0x02ACFA 0A:ACEA: 00        .byte $00   ; 
- - - - - - 0x02ACFB 0A:ACEB: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ACFC 0A:ACEC: 00 60     .dbyt $0060 ; 
- D 1 - I - 0x02ACFE 0A:ACEE: 90        .byte $90   ; 
- D 1 - I - 0x02ACFF 0A:ACEF: E0        .byte $E0   ; 
- D 1 - I - 0x02AD00 0A:ACF0: A3        .byte $A3   ; 
- - - - - - 0x02AD01 0A:ACF1: 00        .byte $00   ; 
- - - - - - 0x02AD02 0A:ACF2: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD03 0A:ACF3: 00 40     .dbyt $0040 ; 
- D 1 - I - 0x02AD05 0A:ACF5: 4A        .byte $4A   ; 
- D 1 - I - 0x02AD06 0A:ACF6: 80        .byte $80   ; 
- - - - - - 0x02AD07 0A:ACF7: AE        .byte $AE   ; 
- D 1 - I - 0x02AD08 0A:ACF8: 00        .byte $00   ; 
- D 1 - I - 0x02AD09 0A:ACF9: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD0A 0A:ACFA: 00 10     .dbyt $0010 ; 
- D 1 - I - 0x02AD0C 0A:ACFC: 90        .byte $90   ; 
- D 1 - I - 0x02AD0D 0A:ACFD: 88        .byte $88   ; 
- D 1 - I - 0x02AD0E 0A:ACFE: AE        .byte $AE   ; 
- - - - - - 0x02AD0F 0A:ACFF: 00        .byte $00   ; 
- - - - - - 0x02AD10 0A:AD00: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD11 0A:AD01: FF        .byte $FF   ; end token



off_AD02_01_02_01:
; 
- D 1 - I - 0x02AD12 0A:AD02: 02 C0     .dbyt $02C0 ; 
- D 1 - I - 0x02AD14 0A:AD04: 48        .byte $48   ; 
- D 1 - I - 0x02AD15 0A:AD05: 80        .byte $80   ; 
- - - - - - 0x02AD16 0A:AD06: A3        .byte $A3   ; 
- D 1 - I - 0x02AD17 0A:AD07: F0        .byte $F0   ; 
- D 1 - I - 0x02AD18 0A:AD08: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD19 0A:AD09: 01 E0     .dbyt $01E0 ; 
- D 1 - I - 0x02AD1B 0A:AD0B: 48        .byte $48   ; 
- D 1 - I - 0x02AD1C 0A:AD0C: 80        .byte $80   ; 
- - - - - - 0x02AD1D 0A:AD0D: A3        .byte $A3   ; 
- D 1 - I - 0x02AD1E 0A:AD0E: F0        .byte $F0   ; 
- D 1 - I - 0x02AD1F 0A:AD0F: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD20 0A:AD10: 01 00     .dbyt $0100 ; 
- D 1 - I - 0x02AD22 0A:AD12: 48        .byte $48   ; 
- D 1 - I - 0x02AD23 0A:AD13: 80        .byte $80   ; 
- - - - - - 0x02AD24 0A:AD14: A3        .byte $A3   ; 
- D 1 - I - 0x02AD25 0A:AD15: F0        .byte $F0   ; 
- D 1 - I - 0x02AD26 0A:AD16: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD27 0A:AD17: 00 20     .dbyt $0020 ; 
- D 1 - I - 0x02AD29 0A:AD19: 48        .byte $48   ; 
- D 1 - I - 0x02AD2A 0A:AD1A: 80        .byte $80   ; 
- - - - - - 0x02AD2B 0A:AD1B: A3        .byte $A3   ; 
- D 1 - I - 0x02AD2C 0A:AD1C: F0        .byte $F0   ; 
- D 1 - I - 0x02AD2D 0A:AD1D: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD2E 0A:AD1E: FF        .byte $FF   ; end token



off_AD1F_01_03_01:
; 
- D 1 - I - 0x02AD2F 0A:AD1F: 00 40     .dbyt $0040 ; 
- D 1 - I - 0x02AD31 0A:AD21: 48        .byte $48   ; 
- D 1 - I - 0x02AD32 0A:AD22: 80        .byte $80   ; 
- - - - - - 0x02AD33 0A:AD23: A3        .byte $A3   ; 
- D 1 - I - 0x02AD34 0A:AD24: 0A        .byte $0A   ; 
- D 1 - I - 0x02AD35 0A:AD25: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD36 0A:AD26: 00 D0     .dbyt $00D0 ; 
- D 1 - I - 0x02AD38 0A:AD28: 48        .byte $48   ; 
- D 1 - I - 0x02AD39 0A:AD29: 80        .byte $80   ; 
- - - - - - 0x02AD3A 0A:AD2A: A3        .byte $A3   ; 
- D 1 - I - 0x02AD3B 0A:AD2B: 0A        .byte $0A   ; 
- D 1 - I - 0x02AD3C 0A:AD2C: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD3D 0A:AD2D: 01 40     .dbyt $0140 ; 
- D 1 - I - 0x02AD3F 0A:AD2F: 48        .byte $48   ; 
- D 1 - I - 0x02AD40 0A:AD30: 80        .byte $80   ; 
- - - - - - 0x02AD41 0A:AD31: A3        .byte $A3   ; 
- D 1 - I - 0x02AD42 0A:AD32: 0A        .byte $0A   ; 
- D 1 - I - 0x02AD43 0A:AD33: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD44 0A:AD34: 02 10     .dbyt $0210 ; 
- D 1 - I - 0x02AD46 0A:AD36: 48        .byte $48   ; 
- D 1 - I - 0x02AD47 0A:AD37: 80        .byte $80   ; 
- - - - - - 0x02AD48 0A:AD38: A3        .byte $A3   ; 
- D 1 - I - 0x02AD49 0A:AD39: 0A        .byte $0A   ; 
- D 1 - I - 0x02AD4A 0A:AD3A: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD4B 0A:AD3B: 02 C0     .dbyt $02C0 ; 
- D 1 - I - 0x02AD4D 0A:AD3D: 48        .byte $48   ; 
- D 1 - I - 0x02AD4E 0A:AD3E: 80        .byte $80   ; 
- - - - - - 0x02AD4F 0A:AD3F: A3        .byte $A3   ; 
- D 1 - I - 0x02AD50 0A:AD40: 0A        .byte $0A   ; 
- D 1 - I - 0x02AD51 0A:AD41: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD52 0A:AD42: FF        .byte $FF   ; end token



off_AD43_01_04_01:
; 
- D 1 - I - 0x02AD53 0A:AD43: 00 08     .dbyt $0008 ; 
- D 1 - I - 0x02AD55 0A:AD45: 90        .byte $90   ; 
- D 1 - I - 0x02AD56 0A:AD46: 88        .byte $88   ; 
- D 1 - I - 0x02AD57 0A:AD47: AE        .byte $AE   ; 
- - - - - - 0x02AD58 0A:AD48: 00        .byte $00   ; 
- - - - - - 0x02AD59 0A:AD49: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD5A 0A:AD4A: 00 40     .dbyt $0040 ; 
- D 1 - I - 0x02AD5C 0A:AD4C: 4A        .byte $4A   ; 
- D 1 - I - 0x02AD5D 0A:AD4D: 80        .byte $80   ; 
- - - - - - 0x02AD5E 0A:AD4E: AE        .byte $AE   ; 
- D 1 - I - 0x02AD5F 0A:AD4F: 00        .byte $00   ; 
- D 1 - I - 0x02AD60 0A:AD50: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD61 0A:AD51: 00 60     .dbyt $0060 ; 
- D 1 - I - 0x02AD63 0A:AD53: 90        .byte $90   ; 
- D 1 - I - 0x02AD64 0A:AD54: E0        .byte $E0   ; 
- D 1 - I - 0x02AD65 0A:AD55: A3        .byte $A3   ; 
- - - - - - 0x02AD66 0A:AD56: 00        .byte $00   ; 
- - - - - - 0x02AD67 0A:AD57: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD68 0A:AD58: 01 50     .dbyt $0150 ; 
- D 1 - I - 0x02AD6A 0A:AD5A: 90        .byte $90   ; 
- D 1 - I - 0x02AD6B 0A:AD5B: E0        .byte $E0   ; 
- D 1 - I - 0x02AD6C 0A:AD5C: AE        .byte $AE   ; 
- - - - - - 0x02AD6D 0A:AD5D: 00        .byte $00   ; 
- - - - - - 0x02AD6E 0A:AD5E: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD6F 0A:AD5F: 01 68     .dbyt $0168 ; 
- D 1 - I - 0x02AD71 0A:AD61: 90        .byte $90   ; 
- D 1 - I - 0x02AD72 0A:AD62: 88        .byte $88   ; 
- D 1 - I - 0x02AD73 0A:AD63: AE        .byte $AE   ; 
- - - - - - 0x02AD74 0A:AD64: 00        .byte $00   ; 
- - - - - - 0x02AD75 0A:AD65: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD76 0A:AD66: 01 70     .dbyt $0170 ; 
- D 1 - I - 0x02AD78 0A:AD68: 4A        .byte $4A   ; 
- D 1 - I - 0x02AD79 0A:AD69: 20        .byte $20   ; 
- - - - - - 0x02AD7A 0A:AD6A: AE        .byte $AE   ; 
- D 1 - I - 0x02AD7B 0A:AD6B: 00        .byte $00   ; 
- D 1 - I - 0x02AD7C 0A:AD6C: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD7D 0A:AD6D: 01 78     .dbyt $0178 ; 
- D 1 - I - 0x02AD7F 0A:AD6F: 90        .byte $90   ; 
- D 1 - I - 0x02AD80 0A:AD70: 20        .byte $20   ; 
- D 1 - I - 0x02AD81 0A:AD71: AE        .byte $AE   ; 
- - - - - - 0x02AD82 0A:AD72: 00        .byte $00   ; 
- - - - - - 0x02AD83 0A:AD73: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD84 0A:AD74: FF        .byte $FF   ; end token



off_AD75_01_05_00:
; 
- D 1 - I - 0x02AD85 0A:AD75: 00 10     .dbyt $0010 ; 
- D 1 - I - 0x02AD87 0A:AD77: 90        .byte $90   ; 
- D 1 - I - 0x02AD88 0A:AD78: 90        .byte $90   ; 
- D 1 - I - 0x02AD89 0A:AD79: AE        .byte $AE   ; 
- - - - - - 0x02AD8A 0A:AD7A: 00        .byte $00   ; 
- - - - - - 0x02AD8B 0A:AD7B: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD8C 0A:AD7C: 00 20     .dbyt $0020 ; 
- D 1 - I - 0x02AD8E 0A:AD7E: 90        .byte $90   ; 
- D 1 - I - 0x02AD8F 0A:AD7F: 30        .byte $30   ; 
- D 1 - I - 0x02AD90 0A:AD80: A4        .byte $A4   ; 
- - - - - - 0x02AD91 0A:AD81: 00        .byte $00   ; 
- - - - - - 0x02AD92 0A:AD82: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD93 0A:AD83: 00 50     .dbyt $0050 ; 
- D 1 - I - 0x02AD95 0A:AD85: 90        .byte $90   ; 
- D 1 - I - 0x02AD96 0A:AD86: 80        .byte $80   ; 
- D 1 - I - 0x02AD97 0A:AD87: AE        .byte $AE   ; 
- - - - - - 0x02AD98 0A:AD88: 00        .byte $00   ; 
- - - - - - 0x02AD99 0A:AD89: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AD9A 0A:AD8A: 00 80     .dbyt $0080 ; 
- D 1 - I - 0x02AD9C 0A:AD8C: 4A        .byte $4A   ; 
- D 1 - I - 0x02AD9D 0A:AD8D: 80        .byte $80   ; 
- - - - - - 0x02AD9E 0A:AD8E: AE        .byte $AE   ; 
- D 1 - I - 0x02AD9F 0A:AD8F: 00        .byte $00   ; 
- D 1 - I - 0x02ADA0 0A:AD90: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ADA1 0A:AD91: 00 B0     .dbyt $00B0 ; 
- D 1 - I - 0x02ADA3 0A:AD93: 90        .byte $90   ; 
- D 1 - I - 0x02ADA4 0A:AD94: D8        .byte $D8   ; 
- D 1 - I - 0x02ADA5 0A:AD95: AE        .byte $AE   ; 
- - - - - - 0x02ADA6 0A:AD96: 00        .byte $00   ; 
- - - - - - 0x02ADA7 0A:AD97: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ADA8 0A:AD98: 01 10     .dbyt $0110 ; 
- D 1 - I - 0x02ADAA 0A:AD9A: 90        .byte $90   ; 
- D 1 - I - 0x02ADAB 0A:AD9B: 88        .byte $88   ; 
- D 1 - I - 0x02ADAC 0A:AD9C: A3        .byte $A3   ; 
- - - - - - 0x02ADAD 0A:AD9D: 00        .byte $00   ; 
- - - - - - 0x02ADAE 0A:AD9E: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ADAF 0A:AD9F: 01 44     .dbyt $0144 ; 
- D 1 - I - 0x02ADB1 0A:ADA1: 90        .byte $90   ; 
- D 1 - I - 0x02ADB2 0A:ADA2: D0        .byte $D0   ; 
- D 1 - I - 0x02ADB3 0A:ADA3: A5        .byte $A5   ; 
- - - - - - 0x02ADB4 0A:ADA4: 00        .byte $00   ; 
- - - - - - 0x02ADB5 0A:ADA5: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ADB6 0A:ADA6: 01 60     .dbyt $0160 ; 
- D 1 - I - 0x02ADB8 0A:ADA8: 4A        .byte $4A   ; 
- D 1 - I - 0x02ADB9 0A:ADA9: 80        .byte $80   ; 
- - - - - - 0x02ADBA 0A:ADAA: AE        .byte $AE   ; 
- D 1 - I - 0x02ADBB 0A:ADAB: 00        .byte $00   ; 
- D 1 - I - 0x02ADBC 0A:ADAC: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ADBD 0A:ADAD: 01 84     .dbyt $0184 ; 
- D 1 - I - 0x02ADBF 0A:ADAF: 90        .byte $90   ; 
- D 1 - I - 0x02ADC0 0A:ADB0: 40        .byte $40   ; 
- D 1 - I - 0x02ADC1 0A:ADB1: AE        .byte $AE   ; 
- - - - - - 0x02ADC2 0A:ADB2: 00        .byte $00   ; 
- - - - - - 0x02ADC3 0A:ADB3: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ADC4 0A:ADB4: 01 A8     .dbyt $01A8 ; 
- D 1 - I - 0x02ADC6 0A:ADB6: 40        .byte $40   ; 
- D 1 - I - 0x02ADC7 0A:ADB7: 40        .byte $40   ; 
- - - - - - 0x02ADC8 0A:ADB8: AE        .byte $AE   ; 
- D 1 - I - 0x02ADC9 0A:ADB9: 00        .byte $00   ; 
- D 1 - I - 0x02ADCA 0A:ADBA: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ADCB 0A:ADBB: 01 B8     .dbyt $01B8 ; 
- D 1 - I - 0x02ADCD 0A:ADBD: 90        .byte $90   ; 
- D 1 - I - 0x02ADCE 0A:ADBE: D0        .byte $D0   ; 
- D 1 - I - 0x02ADCF 0A:ADBF: AE        .byte $AE   ; 
- - - - - - 0x02ADD0 0A:ADC0: 00        .byte $00   ; 
- - - - - - 0x02ADD1 0A:ADC1: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ADD2 0A:ADC2: 01 D0     .dbyt $01D0 ; 
- D 1 - I - 0x02ADD4 0A:ADC4: 4A        .byte $4A   ; 
- D 1 - I - 0x02ADD5 0A:ADC5: 80        .byte $80   ; 
- - - - - - 0x02ADD6 0A:ADC6: AE        .byte $AE   ; 
- D 1 - I - 0x02ADD7 0A:ADC7: 00        .byte $00   ; 
- D 1 - I - 0x02ADD8 0A:ADC8: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ADD9 0A:ADC9: 01 F0     .dbyt $01F0 ; 
- D 1 - I - 0x02ADDB 0A:ADCB: 90        .byte $90   ; 
- D 1 - I - 0x02ADDC 0A:ADCC: 40        .byte $40   ; 
- D 1 - I - 0x02ADDD 0A:ADCD: A4        .byte $A4   ; 
- - - - - - 0x02ADDE 0A:ADCE: 00        .byte $00   ; 
- - - - - - 0x02ADDF 0A:ADCF: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ADE0 0A:ADD0: 02 18     .dbyt $0218 ; 
- D 1 - I - 0x02ADE2 0A:ADD2: 90        .byte $90   ; 
- D 1 - I - 0x02ADE3 0A:ADD3: 90        .byte $90   ; 
- D 1 - I - 0x02ADE4 0A:ADD4: 97        .byte $97   ; 
- - - - - - 0x02ADE5 0A:ADD5: 00        .byte $00   ; 
- - - - - - 0x02ADE6 0A:ADD6: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ADE7 0A:ADD7: 02 28     .dbyt $0228 ; 
- D 1 - I - 0x02ADE9 0A:ADD9: 32        .byte $32   ; 
- D 1 - I - 0x02ADEA 0A:ADDA: 40        .byte $40   ; 
- - - - - - 0x02ADEB 0A:ADDB: AD        .byte $AD   ; 
- D 1 - I - 0x02ADEC 0A:ADDC: 00        .byte $00   ; 
- D 1 - I - 0x02ADED 0A:ADDD: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ADEE 0A:ADDE: 02 92     .dbyt $0292 ; 
- D 1 - I - 0x02ADF0 0A:ADE0: 90        .byte $90   ; 
- D 1 - I - 0x02ADF1 0A:ADE1: 9C        .byte $9C   ; 
- D 1 - I - 0x02ADF2 0A:ADE2: AE        .byte $AE   ; 
- - - - - - 0x02ADF3 0A:ADE3: 00        .byte $00   ; 
- - - - - - 0x02ADF4 0A:ADE4: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ADF5 0A:ADE5: 02 A8     .dbyt $02A8 ; 
- D 1 - I - 0x02ADF7 0A:ADE7: 90        .byte $90   ; 
- D 1 - I - 0x02ADF8 0A:ADE8: 30        .byte $30   ; 
- D 1 - I - 0x02ADF9 0A:ADE9: AD        .byte $AD   ; 
- - - - - - 0x02ADFA 0A:ADEA: 00        .byte $00   ; 
- - - - - - 0x02ADFB 0A:ADEB: 00        .byte $00   ; 
; 
- D 1 - I - 0x02ADFC 0A:ADEC: 02 B0     .dbyt $02B0 ; 
- D 1 - I - 0x02ADFE 0A:ADEE: 4C        .byte $4C   ; 
- D 1 - I - 0x02ADFF 0A:ADEF: 40        .byte $40   ; 
- - - - - - 0x02AE00 0A:ADF0: AD        .byte $AD   ; 
- D 1 - I - 0x02AE01 0A:ADF1: 00        .byte $00   ; 
- D 1 - I - 0x02AE02 0A:ADF2: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE03 0A:ADF3: FF        .byte $FF   ; end token



off_ADF4_04_00_01:
; 
- D 1 - I - 0x02AE04 0A:ADF4: 02 80     .dbyt $0280 ; 
- D 1 - I - 0x02AE06 0A:ADF6: 90        .byte $90   ; 
- D 1 - I - 0x02AE07 0A:ADF7: 78        .byte $78   ; 
- D 1 - I - 0x02AE08 0A:ADF8: AE        .byte $AE   ; 
- - - - - - 0x02AE09 0A:ADF9: 00        .byte $00   ; 
- - - - - - 0x02AE0A 0A:ADFA: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE0B 0A:ADFB: 02 60     .dbyt $0260 ; 
- D 1 - I - 0x02AE0D 0A:ADFD: 90        .byte $90   ; 
- D 1 - I - 0x02AE0E 0A:ADFE: 50        .byte $50   ; 
- D 1 - I - 0x02AE0F 0A:ADFF: A4        .byte $A4   ; 
- - - - - - 0x02AE10 0A:AE00: 00        .byte $00   ; 
- - - - - - 0x02AE11 0A:AE01: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE12 0A:AE02: 02 40     .dbyt $0240 ; 
- D 1 - I - 0x02AE14 0A:AE04: 04        .byte $04   ; 
- D 1 - I - 0x02AE15 0A:AE05: 10        .byte $10   ; 
- - - - - - 0x02AE16 0A:AE06: AE        .byte $AE   ; 
- D 1 - I - 0x02AE17 0A:AE07: 00        .byte $00   ; 
- D 1 - I - 0x02AE18 0A:AE08: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE19 0A:AE09: 02 20     .dbyt $0220 ; 
- D 1 - I - 0x02AE1B 0A:AE0B: 90        .byte $90   ; 
- D 1 - I - 0x02AE1C 0A:AE0C: D0        .byte $D0   ; 
- D 1 - I - 0x02AE1D 0A:AE0D: AD        .byte $AD   ; 
- - - - - - 0x02AE1E 0A:AE0E: 00        .byte $00   ; 
- - - - - - 0x02AE1F 0A:AE0F: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE20 0A:AE10: 01 E6     .dbyt $01E6 ; 
- D 1 - I - 0x02AE22 0A:AE12: 90        .byte $90   ; 
- D 1 - I - 0x02AE23 0A:AE13: 30        .byte $30   ; 
- D 1 - I - 0x02AE24 0A:AE14: AE        .byte $AE   ; 
- - - - - - 0x02AE25 0A:AE15: 00        .byte $00   ; 
- - - - - - 0x02AE26 0A:AE16: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE27 0A:AE17: 01 D0     .dbyt $01D0 ; 
- D 1 - I - 0x02AE29 0A:AE19: 04        .byte $04   ; 
- D 1 - I - 0x02AE2A 0A:AE1A: 10        .byte $10   ; 
- - - - - - 0x02AE2B 0A:AE1B: AE        .byte $AE   ; 
- D 1 - I - 0x02AE2C 0A:AE1C: 00        .byte $00   ; 
- D 1 - I - 0x02AE2D 0A:AE1D: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE2E 0A:AE1E: 01 68     .dbyt $0168 ; 
- D 1 - I - 0x02AE30 0A:AE20: 90        .byte $90   ; 
- D 1 - I - 0x02AE31 0A:AE21: D0        .byte $D0   ; 
- D 1 - I - 0x02AE32 0A:AE22: AE        .byte $AE   ; 
- - - - - - 0x02AE33 0A:AE23: 00        .byte $00   ; 
- - - - - - 0x02AE34 0A:AE24: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE35 0A:AE25: 00 B6     .dbyt $00B6 ; 
- D 1 - I - 0x02AE37 0A:AE27: 90        .byte $90   ; 
- D 1 - I - 0x02AE38 0A:AE28: 70        .byte $70   ; 
- D 1 - I - 0x02AE39 0A:AE29: AD        .byte $AD   ; 
- - - - - - 0x02AE3A 0A:AE2A: 00        .byte $00   ; 
- - - - - - 0x02AE3B 0A:AE2B: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE3C 0A:AE2C: 00 A0     .dbyt $00A0 ; 
- D 1 - I - 0x02AE3E 0A:AE2E: 90        .byte $90   ; 
- D 1 - I - 0x02AE3F 0A:AE2F: 28        .byte $28   ; 
- D 1 - I - 0x02AE40 0A:AE30: 95        .byte $95   ; 
- - - - - - 0x02AE41 0A:AE31: 00        .byte $00   ; 
- - - - - - 0x02AE42 0A:AE32: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE43 0A:AE33: 00 A0     .dbyt $00A0 ; 
- D 1 - I - 0x02AE45 0A:AE35: 04        .byte $04   ; 
- D 1 - I - 0x02AE46 0A:AE36: 80        .byte $80   ; 
- - - - - - 0x02AE47 0A:AE37: AE        .byte $AE   ; 
- D 1 - I - 0x02AE48 0A:AE38: 00        .byte $00   ; 
- D 1 - I - 0x02AE49 0A:AE39: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE4A 0A:AE3A: 00 40     .dbyt $0040 ; 
- D 1 - I - 0x02AE4C 0A:AE3C: 90        .byte $90   ; 
- D 1 - I - 0x02AE4D 0A:AE3D: D0        .byte $D0   ; 
- D 1 - I - 0x02AE4E 0A:AE3E: AE        .byte $AE   ; 
- - - - - - 0x02AE4F 0A:AE3F: 00        .byte $00   ; 
- - - - - - 0x02AE50 0A:AE40: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE51 0A:AE41: 00 30     .dbyt $0030 ; 
- D 1 - I - 0x02AE53 0A:AE43: 04        .byte $04   ; 
- D 1 - I - 0x02AE54 0A:AE44: 80        .byte $80   ; 
- - - - - - 0x02AE55 0A:AE45: AE        .byte $AE   ; 
- D 1 - I - 0x02AE56 0A:AE46: 00        .byte $00   ; 
- D 1 - I - 0x02AE57 0A:AE47: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE58 0A:AE48: 00 10     .dbyt $0010 ; 
- D 1 - I - 0x02AE5A 0A:AE4A: 90        .byte $90   ; 
- D 1 - I - 0x02AE5B 0A:AE4B: 20        .byte $20   ; 
- D 1 - I - 0x02AE5C 0A:AE4C: AE        .byte $AE   ; 
- - - - - - 0x02AE5D 0A:AE4D: 00        .byte $00   ; 
- - - - - - 0x02AE5E 0A:AE4E: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE5F 0A:AE4F: FF        .byte $FF   ; end token



off_AE50_04_01_01:
; 
- D 1 - I - 0x02AE60 0A:AE50: 02 8A     .dbyt $028A ; 
- D 1 - I - 0x02AE62 0A:AE52: 40        .byte $40   ; 
- D 1 - I - 0x02AE63 0A:AE53: 80        .byte $80   ; 
- - - - - - 0x02AE64 0A:AE54: A4        .byte $A4   ; 
- D 1 - I - 0x02AE65 0A:AE55: 00        .byte $00   ; 
- D 1 - I - 0x02AE66 0A:AE56: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE67 0A:AE57: 02 5C     .dbyt $025C ; 
- D 1 - I - 0x02AE69 0A:AE59: 40        .byte $40   ; 
- D 1 - I - 0x02AE6A 0A:AE5A: 60        .byte $60   ; 
- - - - - - 0x02AE6B 0A:AE5B: AE        .byte $AE   ; 
- D 1 - I - 0x02AE6C 0A:AE5C: 00        .byte $00   ; 
- D 1 - I - 0x02AE6D 0A:AE5D: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE6E 0A:AE5E: 02 55     .dbyt $0255 ; 
- D 1 - I - 0x02AE70 0A:AE60: 90        .byte $90   ; 
- D 1 - I - 0x02AE71 0A:AE61: 50        .byte $50   ; 
- D 1 - I - 0x02AE72 0A:AE62: AE        .byte $AE   ; 
- - - - - - 0x02AE73 0A:AE63: 00        .byte $00   ; 
- - - - - - 0x02AE74 0A:AE64: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE75 0A:AE65: 02 10     .dbyt $0210 ; 
- D 1 - I - 0x02AE77 0A:AE67: 40        .byte $40   ; 
- D 1 - I - 0x02AE78 0A:AE68: 50        .byte $50   ; 
- - - - - - 0x02AE79 0A:AE69: A3        .byte $A3   ; 
- D 1 - I - 0x02AE7A 0A:AE6A: 00        .byte $00   ; 
- D 1 - I - 0x02AE7B 0A:AE6B: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE7C 0A:AE6C: 01 C0     .dbyt $01C0 ; 
- D 1 - I - 0x02AE7E 0A:AE6E: 90        .byte $90   ; 
- D 1 - I - 0x02AE7F 0A:AE6F: 28        .byte $28   ; 
- D 1 - I - 0x02AE80 0A:AE70: AD        .byte $AD   ; 
- - - - - - 0x02AE81 0A:AE71: 00        .byte $00   ; 
- - - - - - 0x02AE82 0A:AE72: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE83 0A:AE73: 01 9E     .dbyt $019E ; 
- D 1 - I - 0x02AE85 0A:AE75: 40        .byte $40   ; 
- D 1 - I - 0x02AE86 0A:AE76: C0        .byte $C0   ; 
- - - - - - 0x02AE87 0A:AE77: AE        .byte $AE   ; 
- D 1 - I - 0x02AE88 0A:AE78: 00        .byte $00   ; 
- D 1 - I - 0x02AE89 0A:AE79: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE8A 0A:AE7A: 01 5B     .dbyt $015B ; 
- D 1 - I - 0x02AE8C 0A:AE7C: 40        .byte $40   ; 
- D 1 - I - 0x02AE8D 0A:AE7D: C0        .byte $C0   ; 
- - - - - - 0x02AE8E 0A:AE7E: AE        .byte $AE   ; 
- D 1 - I - 0x02AE8F 0A:AE7F: 00        .byte $00   ; 
- D 1 - I - 0x02AE90 0A:AE80: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE91 0A:AE81: 01 4A     .dbyt $014A ; 
- D 1 - I - 0x02AE93 0A:AE83: 90        .byte $90   ; 
- D 1 - I - 0x02AE94 0A:AE84: 70        .byte $70   ; 
- D 1 - I - 0x02AE95 0A:AE85: A4        .byte $A4   ; 
- - - - - - 0x02AE96 0A:AE86: 00        .byte $00   ; 
- - - - - - 0x02AE97 0A:AE87: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE98 0A:AE88: 01 1E     .dbyt $011E ; 
- D 1 - I - 0x02AE9A 0A:AE8A: 40        .byte $40   ; 
- D 1 - I - 0x02AE9B 0A:AE8B: 40        .byte $40   ; 
- - - - - - 0x02AE9C 0A:AE8C: AD        .byte $AD   ; 
- D 1 - I - 0x02AE9D 0A:AE8D: 00        .byte $00   ; 
- D 1 - I - 0x02AE9E 0A:AE8E: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AE9F 0A:AE8F: 00 F0     .dbyt $00F0 ; 
- D 1 - I - 0x02AEA1 0A:AE91: 90        .byte $90   ; 
- D 1 - I - 0x02AEA2 0A:AE92: B8        .byte $B8   ; 
- D 1 - I - 0x02AEA3 0A:AE93: AE        .byte $AE   ; 
- - - - - - 0x02AEA4 0A:AE94: 00        .byte $00   ; 
- - - - - - 0x02AEA5 0A:AE95: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AEA6 0A:AE96: 00 C0     .dbyt $00C0 ; 
- D 1 - I - 0x02AEA8 0A:AE98: 90        .byte $90   ; 
- D 1 - I - 0x02AEA9 0A:AE99: 30        .byte $30   ; 
- D 1 - I - 0x02AEAA 0A:AE9A: A5        .byte $A5   ; 
- - - - - - 0x02AEAB 0A:AE9B: 00        .byte $00   ; 
- - - - - - 0x02AEAC 0A:AE9C: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AEAD 0A:AE9D: 00 8E     .dbyt $008E ; 
- D 1 - I - 0x02AEAF 0A:AE9F: 40        .byte $40   ; 
- D 1 - I - 0x02AEB0 0A:AEA0: C0        .byte $C0   ; 
- - - - - - 0x02AEB1 0A:AEA1: AD        .byte $AD   ; 
- D 1 - I - 0x02AEB2 0A:AEA2: 00        .byte $00   ; 
- D 1 - I - 0x02AEB3 0A:AEA3: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AEB4 0A:AEA4: 00 70     .dbyt $0070 ; 
- D 1 - I - 0x02AEB6 0A:AEA6: 90        .byte $90   ; 
- D 1 - I - 0x02AEB7 0A:AEA7: 90        .byte $90   ; 
- D 1 - I - 0x02AEB8 0A:AEA8: AE        .byte $AE   ; 
- - - - - - 0x02AEB9 0A:AEA9: 00        .byte $00   ; 
- - - - - - 0x02AEBA 0A:AEAA: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AEBB 0A:AEAB: 00 64     .dbyt $0064 ; 
- D 1 - I - 0x02AEBD 0A:AEAD: 40        .byte $40   ; 
- D 1 - I - 0x02AEBE 0A:AEAE: 40        .byte $40   ; 
- - - - - - 0x02AEBF 0A:AEAF: AD        .byte $AD   ; 
- D 1 - I - 0x02AEC0 0A:AEB0: 00        .byte $00   ; 
- D 1 - I - 0x02AEC1 0A:AEB1: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AEC2 0A:AEB2: 00 30     .dbyt $0030 ; 
- D 1 - I - 0x02AEC4 0A:AEB4: 90        .byte $90   ; 
- D 1 - I - 0x02AEC5 0A:AEB5: B0        .byte $B0   ; 
- D 1 - I - 0x02AEC6 0A:AEB6: AE        .byte $AE   ; 
- - - - - - 0x02AEC7 0A:AEB7: 00        .byte $00   ; 
- - - - - - 0x02AEC8 0A:AEB8: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AEC9 0A:AEB9: 00 10     .dbyt $0010 ; 
- D 1 - I - 0x02AECB 0A:AEBB: 90        .byte $90   ; 
- D 1 - I - 0x02AECC 0A:AEBC: 40        .byte $40   ; 
- D 1 - I - 0x02AECD 0A:AEBD: AD        .byte $AD   ; 
- - - - - - 0x02AECE 0A:AEBE: 00        .byte $00   ; 
- - - - - - 0x02AECF 0A:AEBF: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AED0 0A:AEC0: FF        .byte $FF   ; end token



off_AEC1_04_02_01:
; 
- D 1 - I - 0x02AED1 0A:AEC1: 01 AA     .dbyt $01AA ; 
- D 1 - I - 0x02AED3 0A:AEC3: 2A        .byte $2A   ; 
- D 1 - I - 0x02AED4 0A:AEC4: EC        .byte $EC   ; 
- - - - - - 0x02AED5 0A:AEC5: 00        .byte $00   ; 
- D 1 - I - 0x02AED6 0A:AEC6: 00        .byte $00   ; 
- D 1 - I - 0x02AED7 0A:AEC7: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AED8 0A:AEC8: 01 8A     .dbyt $018A ; 
- D 1 - I - 0x02AEDA 0A:AECA: 2A        .byte $2A   ; 
- D 1 - I - 0x02AEDB 0A:AECB: EC        .byte $EC   ; 
- - - - - - 0x02AEDC 0A:AECC: 00        .byte $00   ; 
- D 1 - I - 0x02AEDD 0A:AECD: 00        .byte $00   ; 
- D 1 - I - 0x02AEDE 0A:AECE: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AEDF 0A:AECF: 01 6A     .dbyt $016A ; 
- D 1 - I - 0x02AEE1 0A:AED1: 2A        .byte $2A   ; 
- D 1 - I - 0x02AEE2 0A:AED2: 0C        .byte $0C   ; 
- - - - - - 0x02AEE3 0A:AED3: 00        .byte $00   ; 
- D 1 - I - 0x02AEE4 0A:AED4: 00        .byte $00   ; 
- D 1 - I - 0x02AEE5 0A:AED5: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AEE6 0A:AED6: 01 4A     .dbyt $014A ; 
- D 1 - I - 0x02AEE8 0A:AED8: 2A        .byte $2A   ; 
- D 1 - I - 0x02AEE9 0A:AED9: 0C        .byte $0C   ; 
- - - - - - 0x02AEEA 0A:AEDA: 00        .byte $00   ; 
- D 1 - I - 0x02AEEB 0A:AEDB: 00        .byte $00   ; 
- D 1 - I - 0x02AEEC 0A:AEDC: 01        .byte $01   ; 
; 
- D 1 - I - 0x02AEED 0A:AEDD: 00 CA     .dbyt $00CA ; 
- D 1 - I - 0x02AEEF 0A:AEDF: 2A        .byte $2A   ; 
- D 1 - I - 0x02AEF0 0A:AEE0: EC        .byte $EC   ; 
- - - - - - 0x02AEF1 0A:AEE1: 00        .byte $00   ; 
- D 1 - I - 0x02AEF2 0A:AEE2: 00        .byte $00   ; 
- D 1 - I - 0x02AEF3 0A:AEE3: 01        .byte $01   ; 
; 
- D 1 - I - 0x02AEF4 0A:AEE4: 00 8C     .dbyt $008C ; 
- D 1 - I - 0x02AEF6 0A:AEE6: 2A        .byte $2A   ; 
- D 1 - I - 0x02AEF7 0A:AEE7: 0C        .byte $0C   ; 
- - - - - - 0x02AEF8 0A:AEE8: 00        .byte $00   ; 
- D 1 - I - 0x02AEF9 0A:AEE9: 00        .byte $00   ; 
- D 1 - I - 0x02AEFA 0A:AEEA: 01        .byte $01   ; 
; 
- D 1 - I - 0x02AEFB 0A:AEEB: 00 6A     .dbyt $006A ; 
- D 1 - I - 0x02AEFD 0A:AEED: 2A        .byte $2A   ; 
- D 1 - I - 0x02AEFE 0A:AEEE: EC        .byte $EC   ; 
- - - - - - 0x02AEFF 0A:AEEF: 00        .byte $00   ; 
- D 1 - I - 0x02AF00 0A:AEF0: 00        .byte $00   ; 
- D 1 - I - 0x02AF01 0A:AEF1: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF02 0A:AEF2: 00 4A     .dbyt $004A ; 
- D 1 - I - 0x02AF04 0A:AEF4: 2A        .byte $2A   ; 
- D 1 - I - 0x02AF05 0A:AEF5: 0C        .byte $0C   ; 
- - - - - - 0x02AF06 0A:AEF6: 00        .byte $00   ; 
- D 1 - I - 0x02AF07 0A:AEF7: 00        .byte $00   ; 
- D 1 - I - 0x02AF08 0A:AEF8: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF09 0A:AEF9: 00 2A     .dbyt $002A ; 
- D 1 - I - 0x02AF0B 0A:AEFB: 2A        .byte $2A   ; 
- D 1 - I - 0x02AF0C 0A:AEFC: EC        .byte $EC   ; 
- - - - - - 0x02AF0D 0A:AEFD: 00        .byte $00   ; 
- D 1 - I - 0x02AF0E 0A:AEFE: 00        .byte $00   ; 
- D 1 - I - 0x02AF0F 0A:AEFF: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF10 0A:AF00: 00 0C     .dbyt $000C ; 
- - - - - - 0x02AF12 0A:AF02: 2A        .byte $2A   ; 
- - - - - - 0x02AF13 0A:AF03: 0C        .byte $0C   ; 
- - - - - - 0x02AF14 0A:AF04: 00        .byte $00   ; 
- - - - - - 0x02AF15 0A:AF05: 00        .byte $00   ; 
- - - - - - 0x02AF16 0A:AF06: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF17 0A:AF07: FF        .byte $FF   ; end token



off_AF08_0A_04_00:
; 
- D 1 - I - 0x02AF18 0A:AF08: 00 6C     .dbyt $006C ; 
- D 1 - I - 0x02AF1A 0A:AF0A: 91        .byte $91   ; 
- D 1 - I - 0x02AF1B 0A:AF0B: 30        .byte $30   ; 
- D 1 - I - 0x02AF1C 0A:AF0C: AE        .byte $AE   ; 
- - - - - - 0x02AF1D 0A:AF0D: 00        .byte $00   ; 
- - - - - - 0x02AF1E 0A:AF0E: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF1F 0A:AF0F: 00 2C     .dbyt $002C ; 
- D 1 - I - 0x02AF21 0A:AF11: 91        .byte $91   ; 
- D 1 - I - 0x02AF22 0A:AF12: 18        .byte $18   ; 
- D 1 - I - 0x02AF23 0A:AF13: 93        .byte $93   ; 
- - - - - - 0x02AF24 0A:AF14: 00        .byte $00   ; 
- - - - - - 0x02AF25 0A:AF15: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF26 0A:AF16: FF        .byte $FF   ; end token



off_AF17_0A_06_01:
; 
- D 1 - I - 0x02AF27 0A:AF17: 03 90     .dbyt $0390 ; 
- D 1 - I - 0x02AF29 0A:AF19: 90        .byte $90   ; 
- D 1 - I - 0x02AF2A 0A:AF1A: E8        .byte $E8   ; 
- D 1 - I - 0x02AF2B 0A:AF1B: AE        .byte $AE   ; 
- - - - - - 0x02AF2C 0A:AF1C: 00        .byte $00   ; 
- - - - - - 0x02AF2D 0A:AF1D: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF2E 0A:AF1E: 03 88     .dbyt $0388 ; 
- D 1 - I - 0x02AF30 0A:AF20: 40        .byte $40   ; 
- D 1 - I - 0x02AF31 0A:AF21: 80        .byte $80   ; 
- - - - - - 0x02AF32 0A:AF22: AE        .byte $AE   ; 
- D 1 - I - 0x02AF33 0A:AF23: 00        .byte $00   ; 
- D 1 - I - 0x02AF34 0A:AF24: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF35 0A:AF25: 03 70     .dbyt $0370 ; 
- D 1 - I - 0x02AF37 0A:AF27: 90        .byte $90   ; 
- D 1 - I - 0x02AF38 0A:AF28: 70        .byte $70   ; 
- D 1 - I - 0x02AF39 0A:AF29: 93        .byte $93   ; 
- - - - - - 0x02AF3A 0A:AF2A: 00        .byte $00   ; 
- - - - - - 0x02AF3B 0A:AF2B: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF3C 0A:AF2C: 03 68     .dbyt $0368 ; 
- D 1 - I - 0x02AF3E 0A:AF2E: 90        .byte $90   ; 
- D 1 - I - 0x02AF3F 0A:AF2F: 28        .byte $28   ; 
- D 1 - I - 0x02AF40 0A:AF30: AE        .byte $AE   ; 
- - - - - - 0x02AF41 0A:AF31: 00        .byte $00   ; 
- - - - - - 0x02AF42 0A:AF32: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF43 0A:AF33: 03 28     .dbyt $0328 ; 
- D 1 - I - 0x02AF45 0A:AF35: 90        .byte $90   ; 
- D 1 - I - 0x02AF46 0A:AF36: 70        .byte $70   ; 
- D 1 - I - 0x02AF47 0A:AF37: AE        .byte $AE   ; 
- - - - - - 0x02AF48 0A:AF38: 00        .byte $00   ; 
- - - - - - 0x02AF49 0A:AF39: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF4A 0A:AF3A: 02 D8     .dbyt $02D8 ; 
- D 1 - I - 0x02AF4C 0A:AF3C: 11        .byte $11   ; 
- D 1 - I - 0x02AF4D 0A:AF3D: E0        .byte $E0   ; 
- - - - - - 0x02AF4E 0A:AF3E: AE        .byte $AE   ; 
- D 1 - I - 0x02AF4F 0A:AF3F: 00        .byte $00   ; 
- D 1 - I - 0x02AF50 0A:AF40: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF51 0A:AF41: 02 B8     .dbyt $02B8 ; 
- D 1 - I - 0x02AF53 0A:AF43: 90        .byte $90   ; 
- D 1 - I - 0x02AF54 0A:AF44: D0        .byte $D0   ; 
- D 1 - I - 0x02AF55 0A:AF45: AE        .byte $AE   ; 
- - - - - - 0x02AF56 0A:AF46: 00        .byte $00   ; 
- - - - - - 0x02AF57 0A:AF47: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF58 0A:AF48: 02 A0     .dbyt $02A0 ; 
- D 1 - I - 0x02AF5A 0A:AF4A: 90        .byte $90   ; 
- D 1 - I - 0x02AF5B 0A:AF4B: 88        .byte $88   ; 
- D 1 - I - 0x02AF5C 0A:AF4C: AE        .byte $AE   ; 
- - - - - - 0x02AF5D 0A:AF4D: 00        .byte $00   ; 
- - - - - - 0x02AF5E 0A:AF4E: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF5F 0A:AF4F: 02 68     .dbyt $0268 ; 
- D 1 - I - 0x02AF61 0A:AF51: 11        .byte $11   ; 
- D 1 - I - 0x02AF62 0A:AF52: A0        .byte $A0   ; 
- - - - - - 0x02AF63 0A:AF53: AE        .byte $AE   ; 
- D 1 - I - 0x02AF64 0A:AF54: 00        .byte $00   ; 
- D 1 - I - 0x02AF65 0A:AF55: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF66 0A:AF56: 02 50     .dbyt $0250 ; 
- D 1 - I - 0x02AF68 0A:AF58: 90        .byte $90   ; 
- D 1 - I - 0x02AF69 0A:AF59: 40        .byte $40   ; 
- D 1 - I - 0x02AF6A 0A:AF5A: AE        .byte $AE   ; 
- - - - - - 0x02AF6B 0A:AF5B: 00        .byte $00   ; 
- - - - - - 0x02AF6C 0A:AF5C: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF6D 0A:AF5D: 02 10     .dbyt $0210 ; 
- D 1 - I - 0x02AF6F 0A:AF5F: 90        .byte $90   ; 
- D 1 - I - 0x02AF70 0A:AF60: D0        .byte $D0   ; 
- D 1 - I - 0x02AF71 0A:AF61: AE        .byte $AE   ; 
- - - - - - 0x02AF72 0A:AF62: 00        .byte $00   ; 
- - - - - - 0x02AF73 0A:AF63: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF74 0A:AF64: 01 E0     .dbyt $01E0 ; 
- D 1 - I - 0x02AF76 0A:AF66: 04        .byte $04   ; 
- D 1 - I - 0x02AF77 0A:AF67: F0        .byte $F0   ; 
- - - - - - 0x02AF78 0A:AF68: AE        .byte $AE   ; 
- D 1 - I - 0x02AF79 0A:AF69: 00        .byte $00   ; 
- D 1 - I - 0x02AF7A 0A:AF6A: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF7B 0A:AF6B: 01 D0     .dbyt $01D0 ; 
- D 1 - I - 0x02AF7D 0A:AF6D: 40        .byte $40   ; 
- D 1 - I - 0x02AF7E 0A:AF6E: 60        .byte $60   ; 
- - - - - - 0x02AF7F 0A:AF6F: AE        .byte $AE   ; 
- D 1 - I - 0x02AF80 0A:AF70: 00        .byte $00   ; 
- D 1 - I - 0x02AF81 0A:AF71: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF82 0A:AF72: 01 A8     .dbyt $01A8 ; 
- D 1 - I - 0x02AF84 0A:AF74: 11        .byte $11   ; 
- D 1 - I - 0x02AF85 0A:AF75: 60        .byte $60   ; 
- - - - - - 0x02AF86 0A:AF76: AE        .byte $AE   ; 
- D 1 - I - 0x02AF87 0A:AF77: 00        .byte $00   ; 
- D 1 - I - 0x02AF88 0A:AF78: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF89 0A:AF79: 01 90     .dbyt $0190 ; 
- D 1 - I - 0x02AF8B 0A:AF7B: 04        .byte $04   ; 
- D 1 - I - 0x02AF8C 0A:AF7C: F0        .byte $F0   ; 
- - - - - - 0x02AF8D 0A:AF7D: AE        .byte $AE   ; 
- D 1 - I - 0x02AF8E 0A:AF7E: 00        .byte $00   ; 
- D 1 - I - 0x02AF8F 0A:AF7F: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF90 0A:AF80: 01 80     .dbyt $0180 ; 
- D 1 - I - 0x02AF92 0A:AF82: 90        .byte $90   ; 
- D 1 - I - 0x02AF93 0A:AF83: B0        .byte $B0   ; 
- D 1 - I - 0x02AF94 0A:AF84: A2        .byte $A2   ; 
- - - - - - 0x02AF95 0A:AF85: 00        .byte $00   ; 
- - - - - - 0x02AF96 0A:AF86: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF97 0A:AF87: 01 40     .dbyt $0140 ; 
- D 1 - I - 0x02AF99 0A:AF89: 90        .byte $90   ; 
- D 1 - I - 0x02AF9A 0A:AF8A: 70        .byte $70   ; 
- D 1 - I - 0x02AF9B 0A:AF8B: A4        .byte $A4   ; 
- - - - - - 0x02AF9C 0A:AF8C: 00        .byte $00   ; 
- - - - - - 0x02AF9D 0A:AF8D: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AF9E 0A:AF8E: 01 20     .dbyt $0120 ; 
- D 1 - I - 0x02AFA0 0A:AF90: 90        .byte $90   ; 
- D 1 - I - 0x02AFA1 0A:AF91: B0        .byte $B0   ; 
- D 1 - I - 0x02AFA2 0A:AF92: 93        .byte $93   ; 
- - - - - - 0x02AFA3 0A:AF93: 00        .byte $00   ; 
- - - - - - 0x02AFA4 0A:AF94: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AFA5 0A:AF95: 01 0C     .dbyt $010C ; 
- D 1 - I - 0x02AFA7 0A:AF97: 40        .byte $40   ; 
- D 1 - I - 0x02AFA8 0A:AF98: D0        .byte $D0   ; 
- - - - - - 0x02AFA9 0A:AF99: 93        .byte $93   ; 
- D 1 - I - 0x02AFAA 0A:AF9A: 00        .byte $00   ; 
- D 1 - I - 0x02AFAB 0A:AF9B: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AFAC 0A:AF9C: 00 A8     .dbyt $00A8 ; 
- D 1 - I - 0x02AFAE 0A:AF9E: 11        .byte $11   ; 
- D 1 - I - 0x02AFAF 0A:AF9F: 50        .byte $50   ; 
- - - - - - 0x02AFB0 0A:AFA0: AE        .byte $AE   ; 
- D 1 - I - 0x02AFB1 0A:AFA1: 00        .byte $00   ; 
- D 1 - I - 0x02AFB2 0A:AFA2: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AFB3 0A:AFA3: 00 80     .dbyt $0080 ; 
- D 1 - I - 0x02AFB5 0A:AFA5: 04        .byte $04   ; 
- D 1 - I - 0x02AFB6 0A:AFA6: F0        .byte $F0   ; 
- - - - - - 0x02AFB7 0A:AFA7: AE        .byte $AE   ; 
- D 1 - I - 0x02AFB8 0A:AFA8: 00        .byte $00   ; 
- D 1 - I - 0x02AFB9 0A:AFA9: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AFBA 0A:AFAA: 00 30     .dbyt $0030 ; 
- D 1 - I - 0x02AFBC 0A:AFAC: 04        .byte $04   ; 
- D 1 - I - 0x02AFBD 0A:AFAD: F0        .byte $F0   ; 
- - - - - - 0x02AFBE 0A:AFAE: AE        .byte $AE   ; 
- D 1 - I - 0x02AFBF 0A:AFAF: 00        .byte $00   ; 
- D 1 - I - 0x02AFC0 0A:AFB0: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AFC1 0A:AFB1: FF        .byte $FF   ; end token



off_AFB2_0B_02_01:
; 
- D 1 - I - 0x02AFC2 0A:AFB2: 00 50     .dbyt $0050 ; 
- D 1 - I - 0x02AFC4 0A:AFB4: 90        .byte $90   ; 
- D 1 - I - 0x02AFC5 0A:AFB5: 10        .byte $10   ; 
- D 1 - I - 0x02AFC6 0A:AFB6: A6        .byte $A6   ; 
- - - - - - 0x02AFC7 0A:AFB7: 00        .byte $00   ; 
- - - - - - 0x02AFC8 0A:AFB8: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AFC9 0A:AFB9: 00 68     .dbyt $0068 ; 
- D 1 - I - 0x02AFCB 0A:AFBB: 90        .byte $90   ; 
- D 1 - I - 0x02AFCC 0A:AFBC: 50        .byte $50   ; 
- D 1 - I - 0x02AFCD 0A:AFBD: AE        .byte $AE   ; 
- - - - - - 0x02AFCE 0A:AFBE: 00        .byte $00   ; 
- - - - - - 0x02AFCF 0A:AFBF: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AFD0 0A:AFC0: 00 B0     .dbyt $00B0 ; 
- D 1 - I - 0x02AFD2 0A:AFC2: 90        .byte $90   ; 
- D 1 - I - 0x02AFD3 0A:AFC3: D0        .byte $D0   ; 
- D 1 - I - 0x02AFD4 0A:AFC4: 94        .byte $94   ; 
- - - - - - 0x02AFD5 0A:AFC5: 00        .byte $00   ; 
- - - - - - 0x02AFD6 0A:AFC6: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AFD7 0A:AFC7: 01 10     .dbyt $0110 ; 
- D 1 - I - 0x02AFD9 0A:AFC9: 90        .byte $90   ; 
- D 1 - I - 0x02AFDA 0A:AFCA: 30        .byte $30   ; 
- D 1 - I - 0x02AFDB 0A:AFCB: AE        .byte $AE   ; 
- - - - - - 0x02AFDC 0A:AFCC: 00        .byte $00   ; 
- - - - - - 0x02AFDD 0A:AFCD: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AFDE 0A:AFCE: 01 30     .dbyt $0130 ; 
- D 1 - I - 0x02AFE0 0A:AFD0: 90        .byte $90   ; 
- D 1 - I - 0x02AFE1 0A:AFD1: 70        .byte $70   ; 
- D 1 - I - 0x02AFE2 0A:AFD2: AE        .byte $AE   ; 
- - - - - - 0x02AFE3 0A:AFD3: 00        .byte $00   ; 
- - - - - - 0x02AFE4 0A:AFD4: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AFE5 0A:AFD5: FF        .byte $FF   ; end token



off_AFD6_0D_01_01:
; 
- D 1 - I - 0x02AFE6 0A:AFD6: 01 94     .dbyt $0194 ; 
- D 1 - I - 0x02AFE8 0A:AFD8: 2A        .byte $2A   ; 
- D 1 - I - 0x02AFE9 0A:AFD9: EC        .byte $EC   ; 
- - - - - - 0x02AFEA 0A:AFDA: 00        .byte $00   ; 
- D 1 - I - 0x02AFEB 0A:AFDB: 00        .byte $00   ; 
- D 1 - I - 0x02AFEC 0A:AFDC: 01        .byte $01   ; 
; 
- D 1 - I - 0x02AFED 0A:AFDD: 01 40     .dbyt $0140 ; 
- D 1 - I - 0x02AFEF 0A:AFDF: 04        .byte $04   ; 
- D 1 - I - 0x02AFF0 0A:AFE0: F0        .byte $F0   ; 
- - - - - - 0x02AFF1 0A:AFE1: AE        .byte $AE   ; 
- D 1 - I - 0x02AFF2 0A:AFE2: 00        .byte $00   ; 
- D 1 - I - 0x02AFF3 0A:AFE3: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AFF4 0A:AFE4: 01 34     .dbyt $0134 ; 
- D 1 - I - 0x02AFF6 0A:AFE6: 2A        .byte $2A   ; 
- D 1 - I - 0x02AFF7 0A:AFE7: 14        .byte $14   ; 
- - - - - - 0x02AFF8 0A:AFE8: 00        .byte $00   ; 
- D 1 - I - 0x02AFF9 0A:AFE9: 00        .byte $00   ; 
- D 1 - I - 0x02AFFA 0A:AFEA: 00        .byte $00   ; 
; 
- D 1 - I - 0x02AFFB 0A:AFEB: 01 14     .dbyt $0114 ; 
- D 1 - I - 0x02AFFD 0A:AFED: 2A        .byte $2A   ; 
- D 1 - I - 0x02AFFE 0A:AFEE: EC        .byte $EC   ; 
- - - - - - 0x02AFFF 0A:AFEF: 00        .byte $00   ; 
- D 1 - I - 0x02B000 0A:AFF0: 00        .byte $00   ; 
- D 1 - I - 0x02B001 0A:AFF1: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B002 0A:AFF2: 00 D4     .dbyt $00D4 ; 
- D 1 - I - 0x02B004 0A:AFF4: 2A        .byte $2A   ; 
- D 1 - I - 0x02B005 0A:AFF5: EC        .byte $EC   ; 
- - - - - - 0x02B006 0A:AFF6: 00        .byte $00   ; 
- D 1 - I - 0x02B007 0A:AFF7: 00        .byte $00   ; 
- D 1 - I - 0x02B008 0A:AFF8: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B009 0A:AFF9: 00 60     .dbyt $0060 ; 
- D 1 - I - 0x02B00B 0A:AFFB: 04        .byte $04   ; 
- D 1 - I - 0x02B00C 0A:AFFC: F0        .byte $F0   ; 
- - - - - - 0x02B00D 0A:AFFD: AE        .byte $AE   ; 
- D 1 - I - 0x02B00E 0A:AFFE: 00        .byte $00   ; 
- D 1 - I - 0x02B00F 0A:AFFF: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B010 0A:B000: 00 54     .dbyt $0054 ; 
- D 1 - I - 0x02B012 0A:B002: 2A        .byte $2A   ; 
- D 1 - I - 0x02B013 0A:B003: EC        .byte $EC   ; 
- - - - - - 0x02B014 0A:B004: 00        .byte $00   ; 
- D 1 - I - 0x02B015 0A:B005: 00        .byte $00   ; 
- D 1 - I - 0x02B016 0A:B006: 01        .byte $01   ; 
; 
- D 1 - I - 0x02B017 0A:B007: 00 36     .dbyt $0036 ; 
- D 1 - I - 0x02B019 0A:B009: 2A        .byte $2A   ; 
- D 1 - I - 0x02B01A 0A:B00A: 14        .byte $14   ; 
- - - - - - 0x02B01B 0A:B00B: 00        .byte $00   ; 
- D 1 - I - 0x02B01C 0A:B00C: 00        .byte $00   ; 
- D 1 - I - 0x02B01D 0A:B00D: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B01E 0A:B00E: FF        .byte $FF   ; end token



off_B00F_0D_02_01:
; 
- D 1 - I - 0x02B01F 0A:B00F: 03 90     .dbyt $0390 ; 
- D 1 - I - 0x02B021 0A:B011: 90        .byte $90   ; 
- D 1 - I - 0x02B022 0A:B012: 30        .byte $30   ; 
- D 1 - I - 0x02B023 0A:B013: AE        .byte $AE   ; 
- - - - - - 0x02B024 0A:B014: 00        .byte $00   ; 
- - - - - - 0x02B025 0A:B015: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B026 0A:B016: 03 94     .dbyt $0394 ; 
- D 1 - I - 0x02B028 0A:B018: 45        .byte $45   ; 
- D 1 - I - 0x02B029 0A:B019: 80        .byte $80   ; 
- - - - - - 0x02B02A 0A:B01A: 00        .byte $00   ; 
- D 1 - I - 0x02B02B 0A:B01B: 00        .byte $00   ; 
- D 1 - I - 0x02B02C 0A:B01C: 04        .byte $04   ; 
; 
- D 1 - I - 0x02B02D 0A:B01D: 03 5B     .dbyt $035B ; 
- D 1 - I - 0x02B02F 0A:B01F: 11        .byte $11   ; 
- D 1 - I - 0x02B030 0A:B020: 30        .byte $30   ; 
- - - - - - 0x02B031 0A:B021: 00        .byte $00   ; 
- D 1 - I - 0x02B032 0A:B022: 00        .byte $00   ; 
- D 1 - I - 0x02B033 0A:B023: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B034 0A:B024: 03 48     .dbyt $0348 ; 
- D 1 - I - 0x02B036 0A:B026: 90        .byte $90   ; 
- D 1 - I - 0x02B037 0A:B027: 70        .byte $70   ; 
- D 1 - I - 0x02B038 0A:B028: AE        .byte $AE   ; 
- - - - - - 0x02B039 0A:B029: 00        .byte $00   ; 
- - - - - - 0x02B03A 0A:B02A: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B03B 0A:B02B: 03 14     .dbyt $0314 ; 
- D 1 - I - 0x02B03D 0A:B02D: 11        .byte $11   ; 
- D 1 - I - 0x02B03E 0A:B02E: 50        .byte $50   ; 
- - - - - - 0x02B03F 0A:B02F: 00        .byte $00   ; 
- D 1 - I - 0x02B040 0A:B030: 00        .byte $00   ; 
- D 1 - I - 0x02B041 0A:B031: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B042 0A:B032: 03 00     .dbyt $0300 ; 
- D 1 - I - 0x02B044 0A:B034: 90        .byte $90   ; 
- D 1 - I - 0x02B045 0A:B035: B0        .byte $B0   ; 
- D 1 - I - 0x02B046 0A:B036: AE        .byte $AE   ; 
- - - - - - 0x02B047 0A:B037: 00        .byte $00   ; 
- - - - - - 0x02B048 0A:B038: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B049 0A:B039: 02 B8     .dbyt $02B8 ; 
- D 1 - I - 0x02B04B 0A:B03B: 90        .byte $90   ; 
- D 1 - I - 0x02B04C 0A:B03C: F0        .byte $F0   ; 
- D 1 - I - 0x02B04D 0A:B03D: 96        .byte $96   ; 
- - - - - - 0x02B04E 0A:B03E: 00        .byte $00   ; 
- - - - - - 0x02B04F 0A:B03F: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B050 0A:B040: 02 94     .dbyt $0294 ; 
- D 1 - I - 0x02B052 0A:B042: 45        .byte $45   ; 
- D 1 - I - 0x02B053 0A:B043: 60        .byte $60   ; 
- - - - - - 0x02B054 0A:B044: 00        .byte $00   ; 
- D 1 - I - 0x02B055 0A:B045: 00        .byte $00   ; 
- D 1 - I - 0x02B056 0A:B046: 04        .byte $04   ; 
; 
- D 1 - I - 0x02B057 0A:B047: 02 88     .dbyt $0288 ; 
- D 1 - I - 0x02B059 0A:B049: 90        .byte $90   ; 
- D 1 - I - 0x02B05A 0A:B04A: 10        .byte $10   ; 
- D 1 - I - 0x02B05B 0A:B04B: AE        .byte $AE   ; 
- - - - - - 0x02B05C 0A:B04C: 00        .byte $00   ; 
- - - - - - 0x02B05D 0A:B04D: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B05E 0A:B04E: 02 68     .dbyt $0268 ; 
- D 1 - I - 0x02B060 0A:B050: 90        .byte $90   ; 
- D 1 - I - 0x02B061 0A:B051: D0        .byte $D0   ; 
- D 1 - I - 0x02B062 0A:B052: AE        .byte $AE   ; 
- - - - - - 0x02B063 0A:B053: 00        .byte $00   ; 
- - - - - - 0x02B064 0A:B054: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B065 0A:B055: 02 1C     .dbyt $021C ; 
- D 1 - I - 0x02B067 0A:B057: 11        .byte $11   ; 
- D 1 - I - 0x02B068 0A:B058: 80        .byte $80   ; 
- - - - - - 0x02B069 0A:B059: 00        .byte $00   ; 
- D 1 - I - 0x02B06A 0A:B05A: 00        .byte $00   ; 
- D 1 - I - 0x02B06B 0A:B05B: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B06C 0A:B05C: 01 B4     .dbyt $01B4 ; 
- D 1 - I - 0x02B06E 0A:B05E: 45        .byte $45   ; 
- D 1 - I - 0x02B06F 0A:B05F: 80        .byte $80   ; 
- - - - - - 0x02B070 0A:B060: A4        .byte $A4   ; 
- D 1 - I - 0x02B071 0A:B061: 00        .byte $00   ; 
- D 1 - I - 0x02B072 0A:B062: 04        .byte $04   ; 
; 
- D 1 - I - 0x02B073 0A:B063: 01 6C     .dbyt $016C ; 
- D 1 - I - 0x02B075 0A:B065: 11        .byte $11   ; 
- D 1 - I - 0x02B076 0A:B066: 70        .byte $70   ; 
- - - - - - 0x02B077 0A:B067: 00        .byte $00   ; 
- D 1 - I - 0x02B078 0A:B068: 00        .byte $00   ; 
- D 1 - I - 0x02B079 0A:B069: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B07A 0A:B06A: 01 68     .dbyt $0168 ; 
- D 1 - I - 0x02B07C 0A:B06C: 90        .byte $90   ; 
- D 1 - I - 0x02B07D 0A:B06D: 50        .byte $50   ; 
- D 1 - I - 0x02B07E 0A:B06E: AD        .byte $AD   ; 
- - - - - - 0x02B07F 0A:B06F: 00        .byte $00   ; 
- - - - - - 0x02B080 0A:B070: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B081 0A:B071: 01 40     .dbyt $0140 ; 
- D 1 - I - 0x02B083 0A:B073: 11        .byte $11   ; 
- D 1 - I - 0x02B084 0A:B074: 60        .byte $60   ; 
- - - - - - 0x02B085 0A:B075: 00        .byte $00   ; 
- D 1 - I - 0x02B086 0A:B076: 00        .byte $00   ; 
- D 1 - I - 0x02B087 0A:B077: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B088 0A:B078: 01 28     .dbyt $0128 ; 
- D 1 - I - 0x02B08A 0A:B07A: 90        .byte $90   ; 
- D 1 - I - 0x02B08B 0A:B07B: 50        .byte $50   ; 
- D 1 - I - 0x02B08C 0A:B07C: AE        .byte $AE   ; 
- - - - - - 0x02B08D 0A:B07D: 00        .byte $00   ; 
- - - - - - 0x02B08E 0A:B07E: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B08F 0A:B07F: 01 08     .dbyt $0108 ; 
- D 1 - I - 0x02B091 0A:B081: 45        .byte $45   ; 
- D 1 - I - 0x02B092 0A:B082: 50        .byte $50   ; 
- - - - - - 0x02B093 0A:B083: A4        .byte $A4   ; 
- D 1 - I - 0x02B094 0A:B084: 00        .byte $00   ; 
- D 1 - I - 0x02B095 0A:B085: 04        .byte $04   ; 
; 
- D 1 - I - 0x02B096 0A:B086: 00 D8     .dbyt $00D8 ; 
- D 1 - I - 0x02B098 0A:B088: 45        .byte $45   ; 
- D 1 - I - 0x02B099 0A:B089: 80        .byte $80   ; 
- - - - - - 0x02B09A 0A:B08A: A4        .byte $A4   ; 
- D 1 - I - 0x02B09B 0A:B08B: 00        .byte $00   ; 
- D 1 - I - 0x02B09C 0A:B08C: 04        .byte $04   ; 
; 
- D 1 - I - 0x02B09D 0A:B08D: 00 C0     .dbyt $00C0 ; 
- D 1 - I - 0x02B09F 0A:B08F: 90        .byte $90   ; 
- D 1 - I - 0x02B0A0 0A:B090: 10        .byte $10   ; 
- D 1 - I - 0x02B0A1 0A:B091: AD        .byte $AD   ; 
- - - - - - 0x02B0A2 0A:B092: 00        .byte $00   ; 
- - - - - - 0x02B0A3 0A:B093: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B0A4 0A:B094: 00 60     .dbyt $0060 ; 
- D 1 - I - 0x02B0A6 0A:B096: 45        .byte $45   ; 
- D 1 - I - 0x02B0A7 0A:B097: C0        .byte $C0   ; 
- - - - - - 0x02B0A8 0A:B098: A4        .byte $A4   ; 
- D 1 - I - 0x02B0A9 0A:B099: 00        .byte $00   ; 
- D 1 - I - 0x02B0AA 0A:B09A: 04        .byte $04   ; 
; 
- D 1 - I - 0x02B0AB 0A:B09B: 00 40     .dbyt $0040 ; 
- D 1 - I - 0x02B0AD 0A:B09D: 45        .byte $45   ; 
- D 1 - I - 0x02B0AE 0A:B09E: 80        .byte $80   ; 
- - - - - - 0x02B0AF 0A:B09F: A4        .byte $A4   ; 
- D 1 - I - 0x02B0B0 0A:B0A0: 00        .byte $00   ; 
- D 1 - I - 0x02B0B1 0A:B0A1: 04        .byte $04   ; 
; 
- D 1 - I - 0x02B0B2 0A:B0A2: 00 30     .dbyt $0030 ; 
- D 1 - I - 0x02B0B4 0A:B0A4: 90        .byte $90   ; 
- D 1 - I - 0x02B0B5 0A:B0A5: 90        .byte $90   ; 
- D 1 - I - 0x02B0B6 0A:B0A6: AE        .byte $AE   ; 
- - - - - - 0x02B0B7 0A:B0A7: 00        .byte $00   ; 
- - - - - - 0x02B0B8 0A:B0A8: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B0B9 0A:B0A9: 00 20     .dbyt $0020 ; 
- D 1 - I - 0x02B0BB 0A:B0AB: 90        .byte $90   ; 
- D 1 - I - 0x02B0BC 0A:B0AC: 30        .byte $30   ; 
- D 1 - I - 0x02B0BD 0A:B0AD: AE        .byte $AE   ; 
- - - - - - 0x02B0BE 0A:B0AE: 00        .byte $00   ; 
- - - - - - 0x02B0BF 0A:B0AF: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B0C0 0A:B0B0: FF        .byte $FF   ; end token



off_B0B1_0E_00_01:
; 
- D 1 - I - 0x02B0C1 0A:B0B1: 00 D0     .dbyt $00D0 ; 
- D 1 - I - 0x02B0C3 0A:B0B3: 48        .byte $48   ; 
- D 1 - I - 0x02B0C4 0A:B0B4: 80        .byte $80   ; 
- - - - - - 0x02B0C5 0A:B0B5: A3        .byte $A3   ; 
- D 1 - I - 0x02B0C6 0A:B0B6: F0        .byte $F0   ; 
- D 1 - I - 0x02B0C7 0A:B0B7: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B0C8 0A:B0B8: 01 10     .dbyt $0110 ; 
- D 1 - I - 0x02B0CA 0A:B0BA: 48        .byte $48   ; 
- D 1 - I - 0x02B0CB 0A:B0BB: 80        .byte $80   ; 
- - - - - - 0x02B0CC 0A:B0BC: A3        .byte $A3   ; 
- D 1 - I - 0x02B0CD 0A:B0BD: F0        .byte $F0   ; 
- D 1 - I - 0x02B0CE 0A:B0BE: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B0CF 0A:B0BF: 01 40     .dbyt $0140 ; 
- D 1 - I - 0x02B0D1 0A:B0C1: 90        .byte $90   ; 
- D 1 - I - 0x02B0D2 0A:B0C2: D0        .byte $D0   ; 
- D 1 - I - 0x02B0D3 0A:B0C3: 97        .byte $97   ; 
- - - - - - 0x02B0D4 0A:B0C4: 00        .byte $00   ; 
- - - - - - 0x02B0D5 0A:B0C5: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B0D6 0A:B0C6: 01 50     .dbyt $0150 ; 
- D 1 - I - 0x02B0D8 0A:B0C8: 48        .byte $48   ; 
- D 1 - I - 0x02B0D9 0A:B0C9: 80        .byte $80   ; 
- - - - - - 0x02B0DA 0A:B0CA: A3        .byte $A3   ; 
- D 1 - I - 0x02B0DB 0A:B0CB: F0        .byte $F0   ; 
- D 1 - I - 0x02B0DC 0A:B0CC: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B0DD 0A:B0CD: 01 60     .dbyt $0160 ; 
- D 1 - I - 0x02B0DF 0A:B0CF: 90        .byte $90   ; 
- D 1 - I - 0x02B0E0 0A:B0D0: 8C        .byte $8C   ; 
- D 1 - I - 0x02B0E1 0A:B0D1: AE        .byte $AE   ; 
- - - - - - 0x02B0E2 0A:B0D2: 00        .byte $00   ; 
- - - - - - 0x02B0E3 0A:B0D3: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B0E4 0A:B0D4: 01 80     .dbyt $0180 ; 
- D 1 - I - 0x02B0E6 0A:B0D6: 48        .byte $48   ; 
- D 1 - I - 0x02B0E7 0A:B0D7: 80        .byte $80   ; 
- - - - - - 0x02B0E8 0A:B0D8: A3        .byte $A3   ; 
- D 1 - I - 0x02B0E9 0A:B0D9: F0        .byte $F0   ; 
- D 1 - I - 0x02B0EA 0A:B0DA: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B0EB 0A:B0DB: 01 C0     .dbyt $01C0 ; 
- D 1 - I - 0x02B0ED 0A:B0DD: 90        .byte $90   ; 
- D 1 - I - 0x02B0EE 0A:B0DE: 8C        .byte $8C   ; 
- D 1 - I - 0x02B0EF 0A:B0DF: AE        .byte $AE   ; 
- - - - - - 0x02B0F0 0A:B0E0: 00        .byte $00   ; 
- - - - - - 0x02B0F1 0A:B0E1: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B0F2 0A:B0E2: 02 18     .dbyt $0218 ; 
- D 1 - I - 0x02B0F4 0A:B0E4: 90        .byte $90   ; 
- D 1 - I - 0x02B0F5 0A:B0E5: D0        .byte $D0   ; 
- D 1 - I - 0x02B0F6 0A:B0E6: AE        .byte $AE   ; 
- - - - - - 0x02B0F7 0A:B0E7: 00        .byte $00   ; 
- - - - - - 0x02B0F8 0A:B0E8: 00        .byte $00   ; 
; 
- D 1 - I - 0x02B0F9 0A:B0E9: FF        .byte $FF   ; end token



loc_0x02B0FA:
C D 1 - - - 0x02B0FA 0A:B0EA: A5 19     LDA ram_0019_subscript
C - - - - - 0x02B0FC 0A:B0EC: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x02B0FF 0A:B0EF: 19 B1     .word ofs_016_B119_00
- D 1 - I - 0x02B101 0A:B0F1: 35 B1     .word ofs_016_B135_01
- D 1 - I - 0x02B103 0A:B0F3: 57 B1     .word ofs_016_B157_02
- D 1 - I - 0x02B105 0A:B0F5: 60 B1     .word ofs_016_B160_03
- D 1 - I - 0x02B107 0A:B0F7: BD B1     .word ofs_016_B1BD_04
- D 1 - I - 0x02B109 0A:B0F9: EF B1     .word ofs_016_B1EF_05
- D 1 - I - 0x02B10B 0A:B0FB: 1D B2     .word ofs_016_B21D_06
- D 1 - I - 0x02B10D 0A:B0FD: 6C B2     .word ofs_016_B26C_07
- D 1 - I - 0x02B10F 0A:B0FF: D9 B4     .word ofs_016_B4D9_08
- D 1 - I - 0x02B111 0A:B101: E3 B4     .word ofs_016_B4E3_09
- D 1 - I - 0x02B113 0A:B103: 1B B3     .word ofs_016_B31B_0A
- D 1 - I - 0x02B115 0A:B105: 78 B3     .word ofs_016_B378_0B
- D 1 - I - 0x02B117 0A:B107: D5 B3     .word ofs_016_B3D5_0C
- D 1 - I - 0x02B119 0A:B109: ED B3     .word ofs_016_B3ED_0D
- D 1 - I - 0x02B11B 0A:B10B: F5 B3     .word ofs_016_B3F5_0E
- D 1 - I - 0x02B11D 0A:B10D: 2D B4     .word ofs_016_B42D_0F
- D 1 - I - 0x02B11F 0A:B10F: 57 B4     .word ofs_016_B457_10
- D 1 - I - 0x02B121 0A:B111: 66 B4     .word ofs_016_B466_11
- D 1 - I - 0x02B123 0A:B113: A4 B4     .word ofs_016_B4A4_12
- D 1 - I - 0x02B125 0A:B115: AC B4     .word ofs_016_B4AC_13
- D 1 - I - 0x02B127 0A:B117: CA B4     .word ofs_016_B4CA_14



ofs_016_B119_00:
C - - J - - 0x02B129 0A:B119: 20 F7 E7  JSR sub_0x03E807_clear_all_objects_data
C - - - - - 0x02B12C 0A:B11C: 20 DA E2  JSR sub_0x03E2EA_prg_bankswitch_dpcm_2
C - - - - - 0x02B12F 0A:B11F: A9 00     LDA #$00
C - - - - - 0x02B131 0A:B121: 8D 18 04  STA ram_obj_anim_id + $18
C - - - - - 0x02B134 0A:B124: 8D 19 04  STA ram_obj_anim_id + $19
C - - - - - 0x02B137 0A:B127: 8D 1A 04  STA ram_obj_anim_id + $1A
C - - - - - 0x02B13A 0A:B12A: 8D 1B 04  STA ram_obj_anim_id + $1B
C - - - - - 0x02B13D 0A:B12D: A9 01     LDA #$01
C - - - - - 0x02B13F 0A:B12F: 8D 89 07  STA ram_0789
C - - - - - 0x02B142 0A:B132: 4C D9 B4  JMP loc_B4D9



ofs_016_B135_01:
C - - J - - 0x02B145 0A:B135: 20 F3 B5  JSR sub_B5F3
C - - - - - 0x02B148 0A:B138: A5 B4     LDA ram_00B4
C - - - - - 0x02B14A 0A:B13A: C9 FF     CMP #$FF
C - - - - - 0x02B14C 0A:B13C: F0 12     BEQ bra_B150_FF
C - - - - - 0x02B14E 0A:B13E: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x02B150 0A:B140: 48        PHA
C - - - - - 0x02B151 0A:B141: A9 62     LDA #con_98E4_62_bg_pal
C - - - - - 0x02B153 0A:B143: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B156 0A:B146: 20 16 E7  JSR sub_0x03E726_write_partner_sprite_palette
C - - - - - 0x02B159 0A:B149: 68        PLA
C - - - - - 0x02B15A 0A:B14A: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x02B15C 0A:B14C: 20 AF FB  JSR sub_0x03FBBF_decrease_brightness
C - - - - - 0x02B15F 0A:B14F: 60        RTS
bra_B150_FF:
C - - - - - 0x02B160 0A:B150: A9 02     LDA #$02
C - - - - - 0x02B162 0A:B152: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x02B164 0A:B154: 4C 1A B2  JMP loc_B21A_next_subscript



ofs_016_B157_02:
C - - J - - 0x02B167 0A:B157: 20 F3 B5  JSR sub_B5F3
C - - - - - 0x02B16A 0A:B15A: 20 66 E6  JSR sub_0x03E676
C - - - - - 0x02B16D 0A:B15D: 4C 1A B2  JMP loc_B21A_next_subscript



ofs_016_B160_03:
C - - J - - 0x02B170 0A:B160: 20 F3 B5  JSR sub_B5F3
C - - - - - 0x02B173 0A:B163: 20 F7 E7  JSR sub_0x03E807_clear_all_objects_data
C - - - - - 0x02B176 0A:B166: 20 52 B4  JSR sub_B452
C - - - - - 0x02B179 0A:B169: 20 9B B1  JSR sub_B19B_set_scroll_00
C - - - - - 0x02B17C 0A:B16C: A9 38     LDA #con__chr_bank + $38
C - - - - - 0x02B17E 0A:B16E: 85 46     STA ram_chr_bank_5120
C - - - - - 0x02B180 0A:B170: A9 39     LDA #con__chr_bank + $39
C - - - - - 0x02B182 0A:B172: 85 47     STA ram_chr_bank_5121
C - - - - - 0x02B184 0A:B174: A9 3D     LDA #con__chr_bank + $3D
C - - - - - 0x02B186 0A:B176: 85 48     STA ram_chr_bank_5122
C - - - - - 0x02B188 0A:B178: A9 3B     LDA #con__chr_bank + $3B
C - - - - - 0x02B18A 0A:B17A: 85 49     STA ram_chr_bank_5123
C - - - - - 0x02B18C 0A:B17C: A9 41     LDA #con__chr_bank + $41
C - - - - - 0x02B18E 0A:B17E: 85 4A     STA ram_chr_bank_5124_5128
C - - - - - 0x02B190 0A:B180: A9 3A     LDA #con__chr_bank + $3A
C - - - - - 0x02B192 0A:B182: 85 4B     STA ram_chr_bank______5129
C - - - - - 0x02B194 0A:B184: A9 47     LDA #con__chr_bank + $47
C - - - - - 0x02B196 0A:B186: 85 4C     STA ram_chr_bank_5126_512A
C - - - - - 0x02B198 0A:B188: A9 6F     LDA #con__chr_bank + $6F
C - - - - - 0x02B19A 0A:B18A: 85 4D     STA ram_chr_bank_5127_512B
C - - - - - 0x02B19C 0A:B18C: E6 19     INC ram_0019_subscript
C - - - - - 0x02B19E 0A:B18E: A9 2A     LDA #con_98E4_2A_bg_pal
C - - - - - 0x02B1A0 0A:B190: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B1A3 0A:B193: 20 A4 B1  JSR sub_B1A4
C - - - - - 0x02B1A6 0A:B196: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x02B1A8 0A:B198: 4C E9 EC  JMP loc_0x03ECF9_write_data_to_ppu_buffer



sub_B19B_set_scroll_00:
C - - - - - 0x02B1AB 0A:B19B: A9 00     LDA #$00
C - - - - - 0x02B1AD 0A:B19D: 85 72     STA ram_0072_chr_banks_config
C - - - - - 0x02B1AF 0A:B19F: 85 FC     STA ram_scroll_Y
C - - - - - 0x02B1B1 0A:B1A1: 85 FD     STA ram_scroll_X
C - - - - - 0x02B1B3 0A:B1A3: 60        RTS



sub_B1A4:
loc_B1A4:
C D 1 - - - 0x02B1B4 0A:B1A4: 20 AA B1  JSR sub_B1AA_select_partner_palette
C - - - - - 0x02B1B7 0A:B1A7: 4C E9 EC  JMP loc_0x03ECF9_write_data_to_ppu_buffer



sub_B1AA_select_partner_palette:
C - - - - - 0x02B1BA 0A:B1AA: A4 3A     LDY ram_partner
C - - - - - 0x02B1BC 0A:B1AC: C0 FF     CPY #con_player_off
C - - - - - 0x02B1BE 0A:B1AE: D0 02     BNE bra_B1B2_you_have_partner
C - - - - - 0x02B1C0 0A:B1B0: A0 00     LDY #$00
bra_B1B2_you_have_partner:
C - - - - - 0x02B1C2 0A:B1B2: 8C 82 07  STY ram_copy_partner_0782
C - - - - - 0x02B1C5 0A:B1B5: B9 B9 B1  LDA tbl_B1B9_sprite_palette,Y
C - - - - - 0x02B1C8 0A:B1B8: 60        RTS



tbl_B1B9_sprite_palette:
- D 1 - - - 0x02B1C9 0A:B1B9: 2B        .byte con_98E4_2B_spr_pal   ; 00 Trevor
- D 1 - - - 0x02B1CA 0A:B1BA: 2B        .byte con_98E4_2B_spr_pal   ; 01 Sypha
- D 1 - - - 0x02B1CB 0A:B1BB: 2C        .byte con_98E4_2C_spr_pal   ; 02 Grant
- D 1 - - - 0x02B1CC 0A:B1BC: 2D        .byte con_98E4_2D_spr_pal   ; 03 Alucard



ofs_016_B1BD_04:
C - - J - - 0x02B1CD 0A:B1BD: 20 F3 B5  JSR sub_B5F3
C - - - - - 0x02B1D0 0A:B1C0: A2 20     LDX #con_EC77_20
C - - - - - 0x02B1D2 0A:B1C2: 20 04 EC  JSR sub_0x03EC14_draw_screen
C - - - - - 0x02B1D5 0A:B1C5: A9 00     LDA #$00
C - - - - - 0x02B1D7 0A:B1C7: A2 03     LDX #$03
C - - - - - 0x02B1D9 0A:B1C9: 20 5F B5  JSR sub_B55F
C - - - - - 0x02B1DC 0A:B1CC: A9 01     LDA #$01
C - - - - - 0x02B1DE 0A:B1CE: A2 02     LDX #$02
C - - - - - 0x02B1E0 0A:B1D0: 20 5F B5  JSR sub_B55F
C - - - - - 0x02B1E3 0A:B1D3: E6 19     INC ram_0019_subscript
C - - - - - 0x02B1E5 0A:B1D5: A9 00     LDA #$00
C - - - - - 0x02B1E7 0A:B1D7: 8D 83 07  STA ram_0783
C - - - - - 0x02B1EA 0A:B1DA: 20 4A B5  JSR sub_B54A
C - - - - - 0x02B1ED 0A:B1DD: A9 44     LDA #$44    ; vertical nametable mapping
C - - - - - 0x02B1EF 0A:B1DF: 85 25     STA ram_for_5105
C - - - - - 0x02B1F1 0A:B1E1: A9 23     LDA #con_irq_23
C - - - - - 0x02B1F3 0A:B1E3: A2 70     LDX #$70
C - - - - - 0x02B1F5 0A:B1E5: 20 C1 E5  JSR sub_0x03E5D1
C - - - - - 0x02B1F8 0A:B1E8: A0 00     LDY #> $0080
C - - - - - 0x02B1FA 0A:B1EA: A9 80     LDA #< $0080
C - - - - - 0x02B1FC 0A:B1EC: 4C 8E E5  JMP loc_0x03E59E_set_screen_timer



ofs_016_B1EF_05:
C - - J - - 0x02B1FF 0A:B1EF: 20 F3 B5  JSR sub_B5F3
C - - - - - 0x02B202 0A:B1F2: 20 79 E5  JSR sub_0x03E589_decrease_screen_timer
C - - - - - 0x02B205 0A:B1F5: D0 25     BNE bra_B21C_RTS
C - - - - - 0x02B207 0A:B1F7: A9 F0     LDA #$F0
C - - - - - 0x02B209 0A:B1F9: 8D 8A 07  STA ram_078A
C - - - - - 0x02B20C 0A:B1FC: A2 03     LDX #$03
C - - - - - 0x02B20E 0A:B1FE: A9 00     LDA #$00
C - - - - - 0x02B210 0A:B200: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02B213 0A:B203: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02B216 0A:B206: A9 40     LDA #$40
C - - - - - 0x02B218 0A:B208: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02B21B 0A:B20B: A9 01     LDA #$01
C - - - - - 0x02B21D 0A:B20D: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x02B220 0A:B210: A9 01     LDA #$01
C - - - - - 0x02B222 0A:B212: 8D 84 07  STA ram_0784
C - - - - - 0x02B225 0A:B215: A9 07     LDA #con_sound_07
C - - - - - 0x02B227 0A:B217: 20 5F E2  JSR sub_0x03E26F_play_sound
loc_B21A_next_subscript:
sub_B21A_next_subscript:
; bzk optimize, write INC + RTS instead of JMP and JSR to here
C D 1 - - - 0x02B22A 0A:B21A: E6 19     INC ram_0019_subscript
bra_B21C_RTS:
C - - - - - 0x02B22C 0A:B21C: 60        RTS



ofs_016_B21D_06:
C - - J - - 0x02B22D 0A:B21D: 20 F3 B5  JSR sub_B5F3
C - - - - - 0x02B230 0A:B220: CE 8A 07  DEC ram_078A
C - - - - - 0x02B233 0A:B223: F0 32     BEQ bra_B257
C - - - - - 0x02B235 0A:B225: A2 03     LDX #$03
C - - - - - 0x02B237 0A:B227: 18        CLC
C - - - - - 0x02B238 0A:B228: BD DB 04  LDA ram_obj_pos_Y_lo,X
C - - - - - 0x02B23B 0A:B22B: 7D 37 05  ADC ram_obj_spd_Y_lo,X
C - - - - - 0x02B23E 0A:B22E: 9D DB 04  STA ram_obj_pos_Y_lo,X
C - - - - - 0x02B241 0A:B231: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02B244 0A:B234: 7D 20 05  ADC ram_obj_spd_Y_hi,X
C - - - - - 0x02B247 0A:B237: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02B24A 0A:B23A: 18        CLC
C - - - - - 0x02B24B 0A:B23B: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02B24E 0A:B23E: 7D F2 04  ADC ram_obj_spd_X_hi,X
C - - - - - 0x02B251 0A:B241: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02B254 0A:B244: CE 84 07  DEC ram_0784
C - - - - - 0x02B257 0A:B247: D0 0D     BNE bra_B256_RTS
C - - - - - 0x02B259 0A:B249: A9 02     LDA #$02
C - - - - - 0x02B25B 0A:B24B: 8D 84 07  STA ram_0784
C - - - - - 0x02B25E 0A:B24E: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x02B261 0A:B251: 49 FE     EOR #$FE
C - - - - - 0x02B263 0A:B253: 9D F2 04  STA ram_obj_spd_X_hi,X
bra_B256_RTS:
C - - - - - 0x02B266 0A:B256: 60        RTS
bra_B257:
C - - - - - 0x02B267 0A:B257: A9 00     LDA #$00
C - - - - - 0x02B269 0A:B259: 8D 03 04  STA ram_obj_anim_id + $03
C - - - - - 0x02B26C 0A:B25C: AC 82 07  LDY ram_copy_partner_0782
C - - - - - 0x02B26F 0A:B25F: B9 68 B2  LDA tbl_B268,Y
C - - - - - 0x02B272 0A:B262: 8D 83 07  STA ram_0783
C - - - - - 0x02B275 0A:B265: 4C 1A B2  JMP loc_B21A_next_subscript



tbl_B268:
- D 1 - - - 0x02B278 0A:B268: 00        .byte $00   ; 00 con_player_Trevor
- D 1 - - - 0x02B279 0A:B269: 03        .byte $03   ; 01 con_player_Sypha
- D 1 - - - 0x02B27A 0A:B26A: 10        .byte $10   ; 02 con_player_Grant
- D 1 - - - 0x02B27B 0A:B26B: 13        .byte $13   ; 03 con_player_Alucard



ofs_016_B26C_07:
C - - J - - 0x02B27C 0A:B26C: AD 83 07  LDA ram_0783
C - - - - - 0x02B27F 0A:B26F: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x02B282 0A:B272: 9E B2     .word ofs_015_B29E_00
- D 1 - I - 0x02B284 0A:B274: AF B2     .word ofs_015_B2AF_01
- D 1 - I - 0x02B286 0A:B276: 18 B3     .word ofs_015_B318_02_next_subscript
- D 1 - I - 0x02B288 0A:B278: C1 B2     .word ofs_015_B2C1_03
- D 1 - I - 0x02B28A 0A:B27A: B3 B2     .word ofs_015_B2B3_04
- D 1 - I - 0x02B28C 0A:B27C: CD B2     .word ofs_015_B2CD_05
- D 1 - I - 0x02B28E 0A:B27E: B8 B2     .word ofs_015_B2B8_06
- D 1 - I - 0x02B290 0A:B280: D2 B2     .word ofs_015_B2D2_07
- D 1 - I - 0x02B292 0A:B282: B3 B2     .word ofs_015_B2B3_08
- D 1 - I - 0x02B294 0A:B284: DE B2     .word ofs_015_B2DE_09
- D 1 - I - 0x02B296 0A:B286: B8 B2     .word ofs_015_B2B8_0A
- D 1 - I - 0x02B298 0A:B288: E3 B2     .word ofs_015_B2E3_0B
- D 1 - I - 0x02B29A 0A:B28A: B8 B2     .word ofs_015_B2B8_0C
- D 1 - I - 0x02B29C 0A:B28C: F4 B2     .word ofs_015_B2F4_0D
- D 1 - I - 0x02B29E 0A:B28E: B8 B2     .word ofs_015_B2B8_0E
- D 1 - I - 0x02B2A0 0A:B290: 18 B3     .word ofs_015_B318_0F_next_subscript
- D 1 - I - 0x02B2A2 0A:B292: 00 B3     .word ofs_015_B300_10
- D 1 - I - 0x02B2A4 0A:B294: B3 B2     .word ofs_015_B2B3_11
- D 1 - I - 0x02B2A6 0A:B296: 18 B3     .word ofs_015_B318_12_next_subscript
- D 1 - I - 0x02B2A8 0A:B298: 0C B3     .word ofs_015_B30C_13
- D 1 - I - 0x02B2AA 0A:B29A: B3 B2     .word ofs_015_B2B3_14
- D 1 - I - 0x02B2AC 0A:B29C: 18 B3     .word ofs_015_B318_15_next_subscript



ofs_015_B29E_00:
C - - J - - 0x02B2AE 0A:B29E: A2 00     LDX #$00
C - - - - - 0x02B2B0 0A:B2A0: A0 00     LDY #$00
C - - - - - 0x02B2B2 0A:B2A2: 20 21 B5  JSR sub_B521
C - - - - - 0x02B2B5 0A:B2A5: A9 80     LDA #$80
loc_B2A7:
C D 1 - - - 0x02B2B7 0A:B2A7: EE 83 07  INC ram_0783
C - - - - - 0x02B2BA 0A:B2AA: A0 00     LDY #$00
C - - - - - 0x02B2BC 0A:B2AC: 4C 8E E5  JMP loc_0x03E59E_set_screen_timer



ofs_015_B2AF_01:
C - - J - - 0x02B2BF 0A:B2AF: A2 00     LDX #$00
C - - - - - 0x02B2C1 0A:B2B1: F0 02     BEQ bra_B2B5    ; jmp



ofs_015_B2B3_04:
ofs_015_B2B3_08:
ofs_015_B2B3_11:
ofs_015_B2B3_14:
C - - J - - 0x02B2C3 0A:B2B3: A2 01     LDX #$01
bra_B2B5:
C - - - - - 0x02B2C5 0A:B2B5: 20 75 EF  JSR sub_0x03EF85
ofs_015_B2B8_06:
ofs_015_B2B8_0A:
ofs_015_B2B8_0C:
ofs_015_B2B8_0E:
C - - - - - 0x02B2C8 0A:B2B8: 20 79 E5  JSR sub_0x03E589_decrease_screen_timer
C - - - - - 0x02B2CB 0A:B2BB: D0 03     BNE bra_B2C0_RTS
C - - - - - 0x02B2CD 0A:B2BD: EE 83 07  INC ram_0783
bra_B2C0_RTS:
C - - - - - 0x02B2D0 0A:B2C0: 60        RTS



ofs_015_B2C1_03:
C - - J - - 0x02B2D1 0A:B2C1: A2 01     LDX #$01
C - - - - - 0x02B2D3 0A:B2C3: A0 03     LDY #$03
C - - - - - 0x02B2D5 0A:B2C5: 20 21 B5  JSR sub_B521
C - - - - - 0x02B2D8 0A:B2C8: A9 18     LDA #$18    ; screen timer lo
C - - - - - 0x02B2DA 0A:B2CA: 4C A7 B2  JMP loc_B2A7



ofs_015_B2CD_05:
C - - J - - 0x02B2DD 0A:B2CD: A9 40     LDA #$40    ; screen timer lo
C - - - - - 0x02B2DF 0A:B2CF: 4C A7 B2  JMP loc_B2A7



ofs_015_B2D2_07:
C - - J - - 0x02B2E2 0A:B2D2: A2 01     LDX #$01
C - - - - - 0x02B2E4 0A:B2D4: A0 04     LDY #$04
C - - - - - 0x02B2E6 0A:B2D6: 20 21 B5  JSR sub_B521
C - - - - - 0x02B2E9 0A:B2D9: A9 30     LDA #$30    ; screen timer lo
C - - - - - 0x02B2EB 0A:B2DB: 4C A7 B2  JMP loc_B2A7



ofs_015_B2DE_09:
C - - J - - 0x02B2EE 0A:B2DE: A9 40     LDA #$40    ; screen timer lo
C - - - - - 0x02B2F0 0A:B2E0: 4C A7 B2  JMP loc_B2A7



ofs_015_B2E3_0B:
C - - J - - 0x02B2F3 0A:B2E3: A9 00     LDA #$00
C - - - - - 0x02B2F5 0A:B2E5: 8D 00 04  STA ram_plr_anim_id
C - - - - - 0x02B2F8 0A:B2E8: A2 01     LDX #$01
C - - - - - 0x02B2FA 0A:B2EA: A9 3E     LDA #$3E
C - - - - - 0x02B2FC 0A:B2EC: 20 18 B5  JSR sub_B518
C - - - - - 0x02B2FF 0A:B2EF: A9 20     LDA #$20    ; screen timer lo
C - - - - - 0x02B301 0A:B2F1: 4C A7 B2  JMP loc_B2A7



ofs_015_B2F4_0D:
C - - J - - 0x02B304 0A:B2F4: A2 01     LDX #$01
C - - - - - 0x02B306 0A:B2F6: A9 40     LDA #$40
C - - - - - 0x02B308 0A:B2F8: 20 18 B5  JSR sub_B518
C - - - - - 0x02B30B 0A:B2FB: A9 80     LDA #$80    ; screen timer lo
C - - - - - 0x02B30D 0A:B2FD: 4C A7 B2  JMP loc_B2A7



ofs_015_B300_10:
C - - J - - 0x02B310 0A:B300: A2 01     LDX #$01
C - - - - - 0x02B312 0A:B302: A0 01     LDY #$01
C - - - - - 0x02B314 0A:B304: 20 21 B5  JSR sub_B521
C - - - - - 0x02B317 0A:B307: A9 20     LDA #$20    ; screen timer lo
C - - - - - 0x02B319 0A:B309: 4C A7 B2  JMP loc_B2A7



ofs_015_B30C_13:
C - - J - - 0x02B31C 0A:B30C: A2 01     LDX #$01
C - - - - - 0x02B31E 0A:B30E: A0 02     LDY #$02
C - - - - - 0x02B320 0A:B310: 20 21 B5  JSR sub_B521
C - - - - - 0x02B323 0A:B313: A9 80     LDA #$80    ; screen timer lo
C - - - - - 0x02B325 0A:B315: 4C A7 B2  JMP loc_B2A7



ofs_015_B318_02_next_subscript:
ofs_015_B318_0F_next_subscript:
ofs_015_B318_12_next_subscript:
ofs_015_B318_15_next_subscript:
; I guees it's like "wait for 1 frame" ?
C - - J - - 0x02B328 0A:B318: E6 19     INC ram_0019_subscript
C - - - - - 0x02B32A 0A:B31A: 60        RTS



ofs_016_B31B_0A:
C - - J - - 0x02B32B 0A:B31B: AC 82 07  LDY ram_copy_partner_0782
C - - - - - 0x02B32E 0A:B31E: B9 74 B3  LDA tbl_B374,Y
C - - - - - 0x02B331 0A:B321: 8D 90 07  STA ram_0790
C - - - - - 0x02B334 0A:B324: A9 28     LDA #$28
C - - - - - 0x02B336 0A:B326: 8D 91 07  STA ram_0791
C - - - - - 0x02B339 0A:B329: A9 68     LDA #con_music_68
C - - - - - 0x02B33B 0A:B32B: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02B33E 0A:B32E: 20 FD EB  JSR sub_0x03EC0D_clear_nametables
C - - - - - 0x02B341 0A:B331: 20 66 E6  JSR sub_0x03E676
C - - - - - 0x02B344 0A:B334: A9 50     LDA #$50    ; horisontal nametable mapping
C - - - - - 0x02B346 0A:B336: 85 25     STA ram_for_5105
C - - - - - 0x02B348 0A:B338: AC 82 07  LDY ram_copy_partner_0782
C - - - - - 0x02B34B 0A:B33B: B9 A5 B5  LDA tbl_B5A5_offset,Y
C - - - - - 0x02B34E 0A:B33E: 8D 85 07  STA ram_0785
C - - - - - 0x02B351 0A:B341: A8        TAY
C - - - - - 0x02B352 0A:B342: B9 A9 B5  LDA tbl_B5A9_final_cutscene_text,Y
C - - - - - 0x02B355 0A:B345: 20 EE B5  JSR sub_B5EE
C - - - - - 0x02B358 0A:B348: EE 85 07  INC ram_0785
C - - - - - 0x02B35B 0A:B34B: 20 9B B1  JSR sub_B19B_set_scroll_00
C - - - - - 0x02B35E 0A:B34E: A9 41     LDA #con__chr_bank + $41
C - - - - - 0x02B360 0A:B350: 85 4A     STA ram_chr_bank_5124_5128
C - - - - - 0x02B362 0A:B352: A9 41     LDA #con__chr_bank + $41
C - - - - - 0x02B364 0A:B354: 85 4B     STA ram_chr_bank______5129
C - - - - - 0x02B366 0A:B356: A9 36     LDA #con__chr_bank + $36
C - - - - - 0x02B368 0A:B358: 85 4C     STA ram_chr_bank_5126_512A
C - - - - - 0x02B36A 0A:B35A: A9 6F     LDA #con__chr_bank + $6F
C - - - - - 0x02B36C 0A:B35C: 85 4D     STA ram_chr_bank_5127_512B
C - - - - - 0x02B36E 0A:B35E: A9 00     LDA #$00
C - - - - - 0x02B370 0A:B360: 8D 88 07  STA ram_0788
C - - - - - 0x02B373 0A:B363: 20 1A B2  JSR sub_B21A_next_subscript
sub_B366:
C - - - - - 0x02B376 0A:B366: AC 82 07  LDY ram_copy_partner_0782
C - - - - - 0x02B379 0A:B369: B9 70 B3  LDA tbl_B370,Y
C - - - - - 0x02B37C 0A:B36C: 8D 8A 07  STA ram_078A
C - - - - - 0x02B37F 0A:B36F: 60        RTS



tbl_B370:
- D 1 - - - 0x02B380 0A:B370: D0        .byte $D0   ; 00 con_player_Trevor
- D 1 - - - 0x02B381 0A:B371: C0        .byte $C0   ; 01 con_player_Sypha
- D 1 - - - 0x02B382 0A:B372: C0        .byte $C0   ; 02 con_player_Grant
- D 1 - - - 0x02B383 0A:B373: C0        .byte $C0   ; 03 con_player_Alucard



tbl_B374:
- D 1 - - - 0x02B384 0A:B374: 4D        .byte $4D   ; 00 con_player_Trevor
- D 1 - - - 0x02B385 0A:B375: 4D        .byte $4D   ; 01 con_player_Sypha
- D 1 - - - 0x02B386 0A:B376: 2D        .byte $2D   ; 02 con_player_Grant
- D 1 - - - 0x02B387 0A:B377: AD        .byte $AD   ; 03 con_player_Alucard



ofs_016_B378_0B:
C - - J - - 0x02B388 0A:B378: CE 8A 07  DEC ram_078A
C - - - - - 0x02B38B 0A:B37B: D0 13     BNE bra_B390
C - - - - - 0x02B38D 0A:B37D: 20 66 B3  JSR sub_B366
C - - - - - 0x02B390 0A:B380: AC 85 07  LDY ram_0785
C - - - - - 0x02B393 0A:B383: B9 A9 B5  LDA tbl_B5A9_final_cutscene_text,Y
C - - - - - 0x02B396 0A:B386: C9 FF     CMP #$FF
C - - - - - 0x02B398 0A:B388: F0 2C     BEQ bra_B3B6_FF
C - - - - - 0x02B39A 0A:B38A: 20 EE B5  JSR sub_B5EE
C - - - - - 0x02B39D 0A:B38D: EE 85 07  INC ram_0785
bra_B390:
sub_B390:
C - - - - - 0x02B3A0 0A:B390: AC 82 07  LDY ram_copy_partner_0782
C - - - - - 0x02B3A3 0A:B393: EE 88 07  INC ram_0788
C - - - - - 0x02B3A6 0A:B396: AD 88 07  LDA ram_0788
C - - - - - 0x02B3A9 0A:B399: D9 D1 B3  CMP tbl_B3D1,Y
C - - - - - 0x02B3AC 0A:B39C: D0 17     BNE bra_B3B5_RTS
C - - - - - 0x02B3AE 0A:B39E: A9 00     LDA #$00
C - - - - - 0x02B3B0 0A:B3A0: 8D 88 07  STA ram_0788
C - - - - - 0x02B3B3 0A:B3A3: E6 FC     INC ram_scroll_Y
C - - - - - 0x02B3B5 0A:B3A5: A5 FC     LDA ram_scroll_Y
C - - - - - 0x02B3B7 0A:B3A7: C9 F0     CMP #$F0
C - - - - - 0x02B3B9 0A:B3A9: D0 0A     BNE bra_B3B5_RTS
C - - - - - 0x02B3BB 0A:B3AB: A9 00     LDA #$00
C - - - - - 0x02B3BD 0A:B3AD: 85 FC     STA ram_scroll_Y
C - - - - - 0x02B3BF 0A:B3AF: A5 FF     LDA ram_for_2000
C - - - - - 0x02B3C1 0A:B3B1: 49 02     EOR #$02
C - - - - - 0x02B3C3 0A:B3B3: 85 FF     STA ram_for_2000
bra_B3B5_RTS:
C - - - - - 0x02B3C5 0A:B3B5: 60        RTS
bra_B3B6_FF:
C - - - - - 0x02B3C6 0A:B3B6: AC 82 07  LDY ram_copy_partner_0782
C - - - - - 0x02B3C9 0A:B3B9: B9 C9 B3  LDA tbl_B3C9_screen_timer_hi,Y
C - - - - - 0x02B3CC 0A:B3BC: 85 00     STA ram_0000_temp
C - - - - - 0x02B3CE 0A:B3BE: B9 CD B3  LDA tbl_B3CD_screen_timer_lo,Y
C - - - - - 0x02B3D1 0A:B3C1: A4 00     LDY ram_0000_temp
C - - - - - 0x02B3D3 0A:B3C3: 20 8E E5  JSR sub_0x03E59E_set_screen_timer
C - - - - - 0x02B3D6 0A:B3C6: 4C 1A B2  JMP loc_B21A_next_subscript



tbl_B3C9_screen_timer_hi:
- D 1 - - - 0x02B3D9 0A:B3C9: 01        .byte > $0160   ; 00 con_player_Trevor
- D 1 - - - 0x02B3DA 0A:B3CA: 02        .byte > $0200   ; 01 con_player_Sypha
- D 1 - - - 0x02B3DB 0A:B3CB: 02        .byte > $0240   ; 02 con_player_Grant
- D 1 - - - 0x02B3DC 0A:B3CC: 01        .byte > $0190   ; 03 con_player_Alucard



tbl_B3CD_screen_timer_lo:
- D 1 - - - 0x02B3DD 0A:B3CD: 60        .byte < $0160   ; 00 con_player_Trevor
- D 1 - - - 0x02B3DE 0A:B3CE: 00        .byte < $0200   ; 01 con_player_Sypha
- D 1 - - - 0x02B3DF 0A:B3CF: 40        .byte < $0240   ; 02 con_player_Grant
- D 1 - - - 0x02B3E0 0A:B3D0: 90        .byte < $0190   ; 03 con_player_Alucard



tbl_B3D1:
- D 1 - - - 0x02B3E1 0A:B3D1: 06        .byte $06   ; 00 con_player_Trevor
- D 1 - - - 0x02B3E2 0A:B3D2: 06        .byte $06   ; 01 con_player_Sypha
- D 1 - - - 0x02B3E3 0A:B3D3: 06        .byte $06   ; 02 con_player_Grant
- D 1 - - - 0x02B3E4 0A:B3D4: 05        .byte $05   ; 03 con_player_Alucard



ofs_016_B3D5_0C:
C - - J - - 0x02B3E5 0A:B3D5: 20 90 B3  JSR sub_B390
C - - - - - 0x02B3E8 0A:B3D8: 20 79 E5  JSR sub_0x03E589_decrease_screen_timer
C - - - - - 0x02B3EB 0A:B3DB: D0 0B     BNE bra_B3E8_RTS
C - - - - - 0x02B3ED 0A:B3DD: E6 19     INC ram_0019_subscript
C - - - - - 0x02B3EF 0A:B3DF: AC 82 07  LDY ram_copy_partner_0782
C - - - - - 0x02B3F2 0A:B3E2: B9 E9 B3  LDA tbl_B3E9,Y
C - - - - - 0x02B3F5 0A:B3E5: 8D 8A 07  STA ram_078A
bra_B3E8_RTS:
C - - - - - 0x02B3F8 0A:B3E8: 60        RTS



tbl_B3E9:
- D 1 - - - 0x02B3F9 0A:B3E9: 01        .byte $01   ; 00 con_player_Trevor
- D 1 - - - 0x02B3FA 0A:B3EA: 01        .byte $01   ; 01 con_player_Sypha
- D 1 - - - 0x02B3FB 0A:B3EB: 01        .byte $01   ; 02 con_player_Grant
- D 1 - - - 0x02B3FC 0A:B3EC: 50        .byte $50   ; 03 con_player_Alucard



ofs_016_B3ED_0D:
C - - J - - 0x02B3FD 0A:B3ED: CE 8A 07  DEC ram_078A
C - - - - - 0x02B400 0A:B3F0: D0 F6     BNE bra_B3E8_RTS
C - - - - - 0x02B402 0A:B3F2: 4C D9 B4  JMP loc_B4D9



ofs_016_B3F5_0E:
C - - J - - 0x02B405 0A:B3F5: A5 B4     LDA ram_00B4
C - - - - - 0x02B407 0A:B3F7: C9 FF     CMP #$FF
C - - - - - 0x02B409 0A:B3F9: F0 1C     BEQ bra_B417_FF
C - - - - - 0x02B40B 0A:B3FB: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x02B40D 0A:B3FD: 48        PHA
C - - - - - 0x02B40E 0A:B3FE: A9 5E     LDA #con_98E4_5E_bg_pal
C - - - - - 0x02B410 0A:B400: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B413 0A:B403: 20 AA B1  JSR sub_B1AA_select_partner_palette
C - - - - - 0x02B416 0A:B406: 18        CLC
C - - - - - 0x02B417 0A:B407: 69 04     ADC #$04
; con_98E4_2F_spr_pal
; con_98E4_30_spr_pal
; con_98E4_31_spr_pal
C - - - - - 0x02B419 0A:B409: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B41C 0A:B40C: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x02B41E 0A:B40E: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B421 0A:B411: 68        PLA
C - - - - - 0x02B422 0A:B412: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x02B424 0A:B414: 4C AF FB  JMP loc_0x03FBBF_decrease_brightness
bra_B417_FF:
C - - - - - 0x02B427 0A:B417: A2 00     LDX #$00
bra_B419_loop:
C - - - - - 0x02B429 0A:B419: A9 00     LDA #$00
C - - - - - 0x02B42B 0A:B41B: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02B42E 0A:B41E: E8        INX
C - - - - - 0x02B42F 0A:B41F: E0 04     CPX #$04
C - - - - - 0x02B431 0A:B421: 90 F6     BCC bra_B419_loop
C - - - - - 0x02B433 0A:B423: A0 00     LDY #> $0040
C - - - - - 0x02B435 0A:B425: A9 40     LDA #< $0040
C - - - - - 0x02B437 0A:B427: 20 8E E5  JSR sub_0x03E59E_set_screen_timer
C - - - - - 0x02B43A 0A:B42A: 4C 1A B2  JMP loc_B21A_next_subscript



ofs_016_B42D_0F:
C - - J - - 0x02B43D 0A:B42D: 20 79 E5  JSR sub_0x03E589_decrease_screen_timer
C - - - - - 0x02B440 0A:B430: F0 01     BEQ bra_B433
C - - - - - 0x02B442 0A:B432: 60        RTS
bra_B433:
C - - - - - 0x02B443 0A:B433: 20 9B B1  JSR sub_B19B_set_scroll_00
C - - - - - 0x02B446 0A:B436: A9 41     LDA #con__chr_bank + $41
C - - - - - 0x02B448 0A:B438: 85 4A     STA ram_chr_bank_5124_5128
C - - - - - 0x02B44A 0A:B43A: A0 70     LDY #con__chr_bank + $70
C - - - - - 0x02B44C 0A:B43C: 84 4B     STY ram_chr_bank______5129
C - - - - - 0x02B44E 0A:B43E: C8        INY ; con__chr_bank + $71
C - - - - - 0x02B44F 0A:B43F: 84 4C     STY ram_chr_bank_5126_512A
C - - - - - 0x02B451 0A:B441: C8        INY ; con__chr_bank + $72
C - - - - - 0x02B452 0A:B442: 84 4D     STY ram_chr_bank_5127_512B
C - - - - - 0x02B454 0A:B444: A9 B2     LDA #$B2
C - - - - - 0x02B456 0A:B446: 85 FF     STA ram_for_2000
C - - - - - 0x02B458 0A:B448: A2 22     LDX #con_EC77_22_credits_logo
C - - - - - 0x02B45A 0A:B44A: A9 84     LDA #con_prg_bank + $84
C - - - - - 0x02B45C 0A:B44C: 20 D5 EB  JSR sub_0x03EBE5
C - - - - - 0x02B45F 0A:B44F: 4C 1A B2  JMP loc_B21A_next_subscript



sub_B452:
C - - - - - 0x02B462 0A:B452: A9 B0     LDA #$B0
C - - - - - 0x02B464 0A:B454: 85 FF     STA ram_for_2000
C - - - - - 0x02B466 0A:B456: 60        RTS



ofs_016_B457_10:
C - - J - - 0x02B467 0A:B457: A2 24     LDX #con_EC77_24
C - - - - - 0x02B469 0A:B459: 20 04 EC  JSR sub_0x03EC14_draw_screen
C - - - - - 0x02B46C 0A:B45C: A0 00     LDY #> $0078
C - - - - - 0x02B46E 0A:B45E: A9 78     LDA #< $0078
C - - - - - 0x02B470 0A:B460: 20 8E E5  JSR sub_0x03E59E_set_screen_timer
C - - - - - 0x02B473 0A:B463: 4C D9 B4  JMP loc_B4D9



ofs_016_B466_11:
C - - J - - 0x02B476 0A:B466: 20 79 E5  JSR sub_0x03E589_decrease_screen_timer
C - - - - - 0x02B479 0A:B469: D0 0A     BNE bra_B475
C - - - - - 0x02B47B 0A:B46B: A0 01     LDY #> $0100
C - - - - - 0x02B47D 0A:B46D: A9 00     LDA #< $0100
C - - - - - 0x02B47F 0A:B46F: 20 8E E5  JSR sub_0x03E59E_set_screen_timer
bra_B472_FF:
C - - - - - 0x02B482 0A:B472: E6 19     INC ram_0019_subscript
bra_B474_RTS:
C - - - - - 0x02B484 0A:B474: 60        RTS
bra_B475:
C - - - - - 0x02B485 0A:B475: A5 B4     LDA ram_00B4
C - - - - - 0x02B487 0A:B477: C9 FF     CMP #$FF
C - - - - - 0x02B489 0A:B479: F0 F9     BEQ bra_B474_RTS
C - - - - - 0x02B48B 0A:B47B: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x02B48D 0A:B47D: 48        PHA
C - - - - - 0x02B48E 0A:B47E: 20 91 B4  JSR sub_B491
C - - - - - 0x02B491 0A:B481: 68        PLA
C - - - - - 0x02B492 0A:B482: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x02B494 0A:B484: 20 A4 FB  JSR sub_0x03FBB4_increase_brightness
C - - - - - 0x02B497 0A:B487: A5 B4     LDA ram_00B4
C - - - - - 0x02B499 0A:B489: C9 FF     CMP #$FF
C - - - - - 0x02B49B 0A:B48B: D0 E7     BNE bra_B474_RTS
C - - - - - 0x02B49D 0A:B48D: A5 15     LDA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x02B49F 0A:B48F: 85 1D     STA ram_index_ppu_buffer
sub_B491:
C - - - - - 0x02B4A1 0A:B491: A9 5E     LDA #con_98E4_5E_bg_pal
C - - - - - 0x02B4A3 0A:B493: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B4A6 0A:B496: 20 AA B1  JSR sub_B1AA_select_partner_palette
C - - - - - 0x02B4A9 0A:B499: 18        CLC
C - - - - - 0x02B4AA 0A:B49A: 69 04     ADC #$04
; con_98E4_2F_spr_pal
; con_98E4_30_spr_pal
; con_98E4_31_spr_pal
C - - - - - 0x02B4AC 0A:B49C: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B4AF 0A:B49F: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x02B4B1 0A:B4A1: 4C E9 EC  JMP loc_0x03ECF9_write_data_to_ppu_buffer



ofs_016_B4A4_12:
C - - J - - 0x02B4B4 0A:B4A4: 20 79 E5  JSR sub_0x03E589_decrease_screen_timer
C - - - - - 0x02B4B7 0A:B4A7: D0 2F     BNE bra_B4D8_RTS
C - - - - - 0x02B4B9 0A:B4A9: 4C D9 B4  JMP loc_B4D9



ofs_016_B4AC_13:
C - - J - - 0x02B4BC 0A:B4AC: A5 B4     LDA ram_00B4
C - - - - - 0x02B4BE 0A:B4AE: C9 FF     CMP #$FF
C - - - - - 0x02B4C0 0A:B4B0: F0 C0     BEQ bra_B472_FF
C - - - - - 0x02B4C2 0A:B4B2: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x02B4C4 0A:B4B4: 48        PHA
C - - - - - 0x02B4C5 0A:B4B5: A9 5E     LDA #con_98E4_5E_bg_pal
C - - - - - 0x02B4C7 0A:B4B7: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B4CA 0A:B4BA: A9 0A     LDA #con_98E4_Trevor_spr_pal
C - - - - - 0x02B4CC 0A:B4BC: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B4CF 0A:B4BF: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x02B4D1 0A:B4C1: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B4D4 0A:B4C4: 68        PLA
C - - - - - 0x02B4D5 0A:B4C5: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x02B4D7 0A:B4C7: 4C AF FB  JMP loc_0x03FBBF_decrease_brightness



ofs_016_B4CA_14:
C - - J - - 0x02B4DA 0A:B4CA: AD 89 07  LDA ram_0789
C - - - - - 0x02B4DD 0A:B4CD: 8D 81 07  STA ram_0781
C - - - - - 0x02B4E0 0A:B4D0: A9 0D     LDA #con_0018_0D
C - - - - - 0x02B4E2 0A:B4D2: 85 18     STA ram_main_script
C - - - - - 0x02B4E4 0A:B4D4: A9 00     LDA #$00
C - - - - - 0x02B4E6 0A:B4D6: 85 19     STA ram_0019_subscript
bra_B4D8_RTS:
C - - - - - 0x02B4E8 0A:B4D8: 60        RTS



loc_B4D9:
ofs_016_B4D9_08:
C D 1 - - - 0x02B4E9 0A:B4D9: A0 00     LDY #$00
C - - - - - 0x02B4EB 0A:B4DB: 84 B4     STY ram_00B4
C - - - - - 0x02B4ED 0A:B4DD: C8        INY ; 01
C - - - - - 0x02B4EE 0A:B4DE: 84 B5     STY ram_00B5
loc_B4E0:
C D 1 - - - 0x02B4F0 0A:B4E0: 4C 1A B2  JMP loc_B21A_next_subscript



ofs_016_B4E3_09:
C - - J - - 0x02B4F3 0A:B4E3: A5 B4     LDA ram_00B4
C - - - - - 0x02B4F5 0A:B4E5: C9 FF     CMP #$FF
C - - - - - 0x02B4F7 0A:B4E7: F0 1E     BEQ bra_B507_FF
C - - - - - 0x02B4F9 0A:B4E9: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x02B4FB 0A:B4EB: 48        PHA
C - - - - - 0x02B4FC 0A:B4EC: A9 2A     LDA #con_98E4_2A_bg_pal
C - - - - - 0x02B4FE 0A:B4EE: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B501 0A:B4F1: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x02B503 0A:B4F3: 8D 87 07  STA ram_0787
C - - - - - 0x02B506 0A:B4F6: 20 A4 B1  JSR sub_B1A4
C - - - - - 0x02B509 0A:B4F9: 68        PLA
C - - - - - 0x02B50A 0A:B4FA: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x02B50C 0A:B4FC: 20 AF FB  JSR sub_0x03FBBF_decrease_brightness
C - - - - - 0x02B50F 0A:B4FF: AD 87 07  LDA ram_0787
C - - - - - 0x02B512 0A:B502: 85 1D     STA ram_index_ppu_buffer
C - - - - - 0x02B514 0A:B504: 4C A4 B1  JMP loc_B1A4
bra_B507_FF:
C - - - - - 0x02B517 0A:B507: A9 2E     LDA #con_98E4_2E_bg_pal
C - - - - - 0x02B519 0A:B509: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B51C 0A:B50C: 20 AA B1  JSR sub_B1AA_select_partner_palette
C - - - - - 0x02B51F 0A:B50F: 18        CLC
C - - - - - 0x02B520 0A:B510: 69 04     ADC #$04
; con_98E4_2F_spr_pal
; con_98E4_30_spr_pal
; con_98E4_31_spr_pal
C - - - - - 0x02B522 0A:B512: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B525 0A:B515: 4C E0 B4  JMP loc_B4E0



sub_B518:
C - - - - - 0x02B528 0A:B518: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02B52B 0A:B51B: A9 14     LDA #con_obj_type_14
C - - - - - 0x02B52D 0A:B51D: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x02B530 0A:B520: 60        RTS



sub_B521:
C - - - - - 0x02B531 0A:B521: A9 14     LDA #con_obj_type_14
C - - - - - 0x02B533 0A:B523: 20 5C EF  JSR sub_0x03EF6C
C - - - - - 0x02B536 0A:B526: 4C 75 EF  JMP loc_0x03EF85


; bzk garbage
- - - - - - 0x02B539 0A:B529: BD 70 04  LDA ram_obj_flags,X
- - - - - - 0x02B53C 0A:B52C: 09 20     ORA #con_obj_flag_20
- - - - - - 0x02B53E 0A:B52E: 9D 70 04  STA ram_obj_flags,X
bra_B531_RTS:
- - - - - - 0x02B541 0A:B531: 60        RTS


; bzk garbage
- - - - - - 0x02B542 0A:B532: BD 70 04  LDA ram_obj_flags,X
- - - - - - 0x02B545 0A:B535: 29 DF     AND #con_obj_flag_20 ^ $FF
- - - - - - 0x02B547 0A:B537: 9D 70 04  STA ram_obj_flags,X
bra_B53A_RTS:
- - - - - - 0x02B54A 0A:B53A: 60        RTS


; bzk garbage
- - - - - - 0x02B54B 0A:B53B: BD 00 04  LDA ram_obj_anim_id,X
- - - - - - 0x02B54E 0A:B53E: F0 FA     BEQ bra_B53A_RTS
- - - - - - 0x02B550 0A:B540: BD 70 04  LDA ram_obj_flags,X
- - - - - - 0x02B553 0A:B543: 29 20     AND #con_obj_flag_20
- - - - - - 0x02B555 0A:B545: D0 EA     BNE bra_B531_RTS
- - - - - - 0x02B557 0A:B547: 4C 75 EF  JMP loc_0x03EF85



sub_B54A:
C - - - - - 0x02B55A 0A:B54A: AD 82 07  LDA ram_copy_partner_0782
C - - - - - 0x02B55D 0A:B54D: 0A        ASL
C - - - - - 0x02B55E 0A:B54E: A8        TAY
C - - - - - 0x02B55F 0A:B54F: 48        PHA
C - - - - - 0x02B560 0A:B550: 20 56 B5  JSR sub_B556
C - - - - - 0x02B563 0A:B553: 68        PLA
C - - - - - 0x02B564 0A:B554: A8        TAY
C - - - - - 0x02B565 0A:B555: C8        INY
sub_B556:
C - - - - - 0x02B566 0A:B556: B9 95 B5  LDA tbl_B595_index_for_tables,Y
C - - - - - 0x02B569 0A:B559: 48        PHA
C - - - - - 0x02B56A 0A:B55A: B9 9D B5  LDA tbl_B59D_index_for_addresses,Y
C - - - - - 0x02B56D 0A:B55D: AA        TAX
C - - - - - 0x02B56E 0A:B55E: 68        PLA
sub_B55F:
C - - - - - 0x02B56F 0A:B55F: A8        TAY
C - - - - - 0x02B570 0A:B560: B9 7D B5  LDA tbl_B57D_animation,Y
C - - - - - 0x02B573 0A:B563: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02B576 0A:B566: B9 85 B5  LDA tbl_B585_pos_X_hi,Y
C - - - - - 0x02B579 0A:B569: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02B57C 0A:B56C: B9 8D B5  LDA tbl_B58D_pos_Y_hi,Y
C - - - - - 0x02B57F 0A:B56F: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02B582 0A:B572: A9 01     LDA #$01    ; facing left
C - - - - - 0x02B584 0A:B574: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x02B587 0A:B577: A9 14     LDA #con_obj_type_14
C - - - - - 0x02B589 0A:B579: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x02B58C 0A:B57C: 60        RTS



tbl_B57D_animation:
- D 1 - - - 0x02B58D 0A:B57D: 16        .byte $16   ; 00 
- D 1 - - - 0x02B58E 0A:B57E: 18        .byte $18   ; 01 
- D 1 - - - 0x02B58F 0A:B57F: 1C        .byte $1C   ; 02 
- D 1 - - - 0x02B590 0A:B580: 1A        .byte $1A   ; 03 
- D 1 - - - 0x02B591 0A:B581: 1A        .byte $1A   ; 04 
- D 1 - - - 0x02B592 0A:B582: 2E        .byte $2E   ; 05 
- D 1 - - - 0x02B593 0A:B583: 22        .byte $22   ; 06 
- D 1 - - - 0x02B594 0A:B584: 28        .byte $28   ; 07 



tbl_B585_pos_X_hi:
- D 1 - - - 0x02B595 0A:B585: B8        .byte $B8   ; 00 
- D 1 - - - 0x02B596 0A:B586: 30        .byte $30   ; 01 
- D 1 - - - 0x02B597 0A:B587: 40        .byte $40   ; 02 
- D 1 - - - 0x02B598 0A:B588: 30        .byte $30   ; 03 
- D 1 - - - 0x02B599 0A:B589: 28        .byte $28   ; 04 
- D 1 - - - 0x02B59A 0A:B58A: 40        .byte $40   ; 05 
- D 1 - - - 0x02B59B 0A:B58B: 40        .byte $40   ; 06 
- D 1 - - - 0x02B59C 0A:B58C: 40        .byte $40   ; 07 



tbl_B58D_pos_Y_hi:
- D 1 - - - 0x02B59D 0A:B58D: 60        .byte $60   ; 00 
- D 1 - - - 0x02B59E 0A:B58E: B0        .byte $B0   ; 01 
- D 1 - - - 0x02B59F 0A:B58F: 90        .byte $90   ; 02 
- D 1 - - - 0x02B5A0 0A:B590: 90        .byte $90   ; 03 
- D 1 - - - 0x02B5A1 0A:B591: 90        .byte $90   ; 04 
- D 1 - - - 0x02B5A2 0A:B592: 90        .byte $90   ; 05 
- D 1 - - - 0x02B5A3 0A:B593: 90        .byte $90   ; 06 
- D 1 - - - 0x02B5A4 0A:B594: 90        .byte $90   ; 07 



tbl_B595_index_for_tables:
; 00 con_player_Trevor
- D 1 - - - 0x02B5A5 0A:B595: 02        .byte $02   ; 00 
- D 1 - - - 0x02B5A6 0A:B596: 02        .byte $02   ; 01 
; 01 con_player_Sypha
- D 1 - - - 0x02B5A7 0A:B597: 03        .byte $03   ; 00 
- D 1 - - - 0x02B5A8 0A:B598: 05        .byte $05   ; 01 
; 02 con_player_Grant
- D 1 - - - 0x02B5A9 0A:B599: 04        .byte $04   ; 00 
- D 1 - - - 0x02B5AA 0A:B59A: 06        .byte $06   ; 01 
; 03 con_player_Alucard
- D 1 - - - 0x02B5AB 0A:B59B: 04        .byte $04   ; 00 
- D 1 - - - 0x02B5AC 0A:B59C: 07        .byte $07   ; 01 



tbl_B59D_index_for_addresses:
; 00 con_player_Trevor
- D 1 - - - 0x02B5AD 0A:B59D: 00        .byte $00   ; 
- D 1 - - - 0x02B5AE 0A:B59E: 00        .byte $00   ; 
; 01 con_player_Sypha
- D 1 - - - 0x02B5AF 0A:B59F: 00        .byte $00   ; 
- D 1 - - - 0x02B5B0 0A:B5A0: 01        .byte $01   ; 
; 02 con_player_Grant
- D 1 - - - 0x02B5B1 0A:B5A1: 00        .byte $00   ; 
- D 1 - - - 0x02B5B2 0A:B5A2: 01        .byte $01   ; 
; 03 con_player_Alucard
- D 1 - - - 0x02B5B3 0A:B5A3: 00        .byte $00   ; 
- D 1 - - - 0x02B5B4 0A:B5A4: 01        .byte $01   ; 



tbl_B5A5_offset:
- D 1 - - - 0x02B5B5 0A:B5A5: 00        .byte off_B5A9_00_Trevor - tbl__B5A9   ; 00 con_player_Trevor
- D 1 - - - 0x02B5B6 0A:B5A6: 11        .byte off_B5BA_01_Sypha - tbl__B5A9   ; 01 con_player_Sypha
- D 1 - - - 0x02B5B7 0A:B5A7: 22        .byte off_B5CB_02_Grant - tbl__B5A9   ; 02 con_player_Grant
- D 1 - - - 0x02B5B8 0A:B5A8: 33        .byte off_B5DC_03_Alucard - tbl__B5A9   ; 03 con_player_Alucard



tbl_B5A9_final_cutscene_text:
tbl__B5A9:
off_B5A9_00_Trevor:
- D 1 - - - 0x02B5B9 0A:B5A9: 39        .byte con_98E4_39   ; 00 
- D 1 - - - 0x02B5BA 0A:B5AA: 3A        .byte con_98E4_3A   ; 01 
- D 1 - - - 0x02B5BB 0A:B5AB: 3B        .byte con_98E4_3B   ; 02 
- D 1 - - - 0x02B5BC 0A:B5AC: 3E        .byte con_98E4_3E   ; 03 
- D 1 - - - 0x02B5BD 0A:B5AD: 3F        .byte con_98E4_3F   ; 04 
- D 1 - - - 0x02B5BE 0A:B5AE: 40        .byte con_98E4_40   ; 05 
- D 1 - - - 0x02B5BF 0A:B5AF: 41        .byte con_98E4_41   ; 06 
- D 1 - - - 0x02B5C0 0A:B5B0: 42        .byte con_98E4_42   ; 07 
- D 1 - - - 0x02B5C1 0A:B5B1: 3C        .byte con_98E4_3C   ; 08 
- D 1 - - - 0x02B5C2 0A:B5B2: 3D        .byte con_98E4_3D   ; 09 
- D 1 - - - 0x02B5C3 0A:B5B3: 54        .byte con_98E4_54   ; 0A 
- D 1 - - - 0x02B5C4 0A:B5B4: 54        .byte con_98E4_54   ; 0B 
- D 1 - - - 0x02B5C5 0A:B5B5: 54        .byte con_98E4_54   ; 0C 
- D 1 - - - 0x02B5C6 0A:B5B6: 54        .byte con_98E4_54   ; 0D 
- D 1 - - - 0x02B5C7 0A:B5B7: 54        .byte con_98E4_54   ; 0E 
- D 1 - - - 0x02B5C8 0A:B5B8: 54        .byte con_98E4_54   ; 0F 
- D 1 - - - 0x02B5C9 0A:B5B9: FF        .byte $FF   ; end token

off_B5BA_01_Sypha:
- D 1 - - - 0x02B5CA 0A:B5BA: 39        .byte con_98E4_39   ; 00 
- D 1 - - - 0x02B5CB 0A:B5BB: 3A        .byte con_98E4_3A   ; 01 
- D 1 - - - 0x02B5CC 0A:B5BC: 3B        .byte con_98E4_3B   ; 02 
- D 1 - - - 0x02B5CD 0A:B5BD: 43        .byte con_98E4_43   ; 03 
- D 1 - - - 0x02B5CE 0A:B5BE: 44        .byte con_98E4_44   ; 04 
- D 1 - - - 0x02B5CF 0A:B5BF: 45        .byte con_98E4_45   ; 05 
- D 1 - - - 0x02B5D0 0A:B5C0: 46        .byte con_98E4_46   ; 06 
- D 1 - - - 0x02B5D1 0A:B5C1: 4D        .byte con_98E4_4D   ; 07 
- D 1 - - - 0x02B5D2 0A:B5C2: 3C        .byte con_98E4_3C   ; 08 
- D 1 - - - 0x02B5D3 0A:B5C3: 3D        .byte con_98E4_3D   ; 09 
- D 1 - - - 0x02B5D4 0A:B5C4: 54        .byte con_98E4_54   ; 0A 
- D 1 - - - 0x02B5D5 0A:B5C5: 54        .byte con_98E4_54   ; 0B 
- D 1 - - - 0x02B5D6 0A:B5C6: 54        .byte con_98E4_54   ; 0C 
- D 1 - - - 0x02B5D7 0A:B5C7: 54        .byte con_98E4_54   ; 0D 
- D 1 - - - 0x02B5D8 0A:B5C8: 54        .byte con_98E4_54   ; 0E 
- D 1 - - - 0x02B5D9 0A:B5C9: 54        .byte con_98E4_54   ; 0F 
- D 1 - - - 0x02B5DA 0A:B5CA: FF        .byte $FF   ; end token

off_B5CB_02_Grant:
- D 1 - - - 0x02B5DB 0A:B5CB: 39        .byte con_98E4_39   ; 00 
- D 1 - - - 0x02B5DC 0A:B5CC: 3A        .byte con_98E4_3A   ; 01 
- D 1 - - - 0x02B5DD 0A:B5CD: 3B        .byte con_98E4_3B   ; 02 
- D 1 - - - 0x02B5DE 0A:B5CE: 4F        .byte con_98E4_4F   ; 03 
- D 1 - - - 0x02B5DF 0A:B5CF: 50        .byte con_98E4_50   ; 04 
- D 1 - - - 0x02B5E0 0A:B5D0: 51        .byte con_98E4_51   ; 05 
- D 1 - - - 0x02B5E1 0A:B5D1: 52        .byte con_98E4_52   ; 06 
- D 1 - - - 0x02B5E2 0A:B5D2: 53        .byte con_98E4_53   ; 07 
- D 1 - - - 0x02B5E3 0A:B5D3: 3C        .byte con_98E4_3C   ; 08 
- D 1 - - - 0x02B5E4 0A:B5D4: 3D        .byte con_98E4_3D   ; 09 
- D 1 - - - 0x02B5E5 0A:B5D5: 54        .byte con_98E4_54   ; 0A 
- D 1 - - - 0x02B5E6 0A:B5D6: 54        .byte con_98E4_54   ; 0B 
- D 1 - - - 0x02B5E7 0A:B5D7: 54        .byte con_98E4_54   ; 0C 
- D 1 - - - 0x02B5E8 0A:B5D8: 54        .byte con_98E4_54   ; 0D 
- D 1 - - - 0x02B5E9 0A:B5D9: 54        .byte con_98E4_54   ; 0E 
- D 1 - - - 0x02B5EA 0A:B5DA: 54        .byte con_98E4_54   ; 0F 
- D 1 - - - 0x02B5EB 0A:B5DB: FF        .byte $FF   ; end token

off_B5DC_03_Alucard:
- D 1 - - - 0x02B5EC 0A:B5DC: 39        .byte con_98E4_39   ; 00 
- D 1 - - - 0x02B5ED 0A:B5DD: 3A        .byte con_98E4_3A   ; 01 
- D 1 - - - 0x02B5EE 0A:B5DE: 3B        .byte con_98E4_3B   ; 02 
- D 1 - - - 0x02B5EF 0A:B5DF: 55        .byte con_98E4_55   ; 03 
- D 1 - - - 0x02B5F0 0A:B5E0: 56        .byte con_98E4_56   ; 04 
- D 1 - - - 0x02B5F1 0A:B5E1: 57        .byte con_98E4_57   ; 05 
- D 1 - - - 0x02B5F2 0A:B5E2: 58        .byte con_98E4_58   ; 06 
- D 1 - - - 0x02B5F3 0A:B5E3: 59        .byte con_98E4_59   ; 07 
- D 1 - - - 0x02B5F4 0A:B5E4: 5A        .byte con_98E4_5A   ; 08 
- D 1 - - - 0x02B5F5 0A:B5E5: 60        .byte con_98E4_60   ; 09 
- D 1 - - - 0x02B5F6 0A:B5E6: 61        .byte con_98E4_61   ; 0A 
- D 1 - - - 0x02B5F7 0A:B5E7: 54        .byte con_98E4_54   ; 0B 
- D 1 - - - 0x02B5F8 0A:B5E8: 54        .byte con_98E4_54   ; 0C 
- D 1 - - - 0x02B5F9 0A:B5E9: 54        .byte con_98E4_54   ; 0D 
- D 1 - - - 0x02B5FA 0A:B5EA: 54        .byte con_98E4_54   ; 0E 
- D 1 - - - 0x02B5FB 0A:B5EB: 54        .byte con_98E4_54   ; 0F 
- D 1 - - - 0x02B5FC 0A:B5EC: 54        .byte con_98E4_54   ; 10 
- D 1 - - - 0x02B5FD 0A:B5ED: FF        .byte $FF   ; end token



sub_B5EE:
C - - - - - 0x02B5FE 0A:B5EE: A2 94     LDX #con_prg_bank + $94
C - - - - - 0x02B600 0A:B5F0: 4C F6 EC  JMP loc_0x03ED06



sub_B5F3:
C - - - - - 0x02B603 0A:B5F3: A5 28     LDA ram_btn_hold
C - - - - - 0x02B605 0A:B5F5: 29 20     AND #con_btn_Select
C - - - - - 0x02B607 0A:B5F7: D0 05     BNE bra_B5FE_RTS
C - - - - - 0x02B609 0A:B5F9: A9 00     LDA #$00
C - - - - - 0x02B60B 0A:B5FB: 8D 89 07  STA ram_0789
bra_B5FE_RTS:
C - - - - - 0x02B60E 0A:B5FE: 60        RTS



sub_B5FF_execute_script:
loc_B5FF_execute_script:
; in
    ; A = con_B616
C D 1 - - - 0x02B60F 0A:B5FF: 85 00     STA ram_0000_t04D
; * 03
; bzk optimize, value is too low, no need for CLC after ASL
C - - - - - 0x02B611 0A:B601: 0A        ASL
C - - - - - 0x02B612 0A:B602: 18        CLC
C - - - - - 0x02B613 0A:B603: 65 00     ADC ram_0000_t04D
C - - - - - 0x02B615 0A:B605: A8        TAY
C - - - - - 0x02B616 0A:B606: B9 16 B6  LDA tbl_B616,Y
C - - - - - 0x02B619 0A:B609: 85 16     STA ram_0016_temp
C - - - - - 0x02B61B 0A:B60B: B9 17 B6  LDA tbl_B616 + $01,Y
C - - - - - 0x02B61E 0A:B60E: 85 17     STA ram_0017_temp
; bzk optimize, it's either bank 80 or last bank
C - - - - - 0x02B620 0A:B610: B9 18 B6  LDA tbl_B616 + $02,Y
C - - - - - 0x02B623 0A:B613: 4C BA FB  JMP loc_0x03FBCA_execute_script



tbl_B616:
; see con_B616
; 00 
- D 1 - - - 0x02B626 0A:B616: 2C 85     .word ofs_041_0x00053C_00_update_background_and_sprite_palette
- D 1 - - - 0x02B628 0A:B618: 80        .byte con_prg_bank + $80   ; 
; 01 
- D 1 - - - 0x02B629 0A:B619: 01 80     .word ofs_041_0x000011_01
- D 1 - - - 0x02B62B 0A:B61B: 80        .byte con_prg_bank + $80   ; 
; 02 
- D 1 - - - 0x02B62C 0A:B61C: 13 80     .word ofs_041_0x000023_02
- D 1 - - - 0x02B62E 0A:B61E: 80        .byte con_prg_bank + $80   ; 
; 03 
- D 1 - - - 0x02B62F 0A:B61F: 67 D0     .word ofs_041_0x03D077_03
- D 1 - - - 0x02B631 0A:B621: 00        .byte con_prg_bank + $00   ; bzk bug? why RAM? better make it 80?
; 04 
- D 1 - - - 0x02B632 0A:B622: F8 D0     .word ofs_041_0x03D108_04
- D 1 - - - 0x02B634 0A:B624: 00        .byte con_prg_bank + $00   ; bzk bug? why RAM? better make it 80?
; 05 
- D 1 - - - 0x02B635 0A:B625: B8 CD     .word ofs_041_0x03CDC8_05
- D 1 - - - 0x02B637 0A:B627: 00        .byte con_prg_bank + $00   ; bzk bug? why RAM? better make it 80?
; 06 
- D 1 - - - 0x02B638 0A:B628: CD 90     .word ofs_041_0x0010DD_06_set_chr_banks
- D 1 - - - 0x02B63A 0A:B62A: 80        .byte con_prg_bank + $80   ; 
; 07 
- D 1 - - - 0x02B63B 0A:B62B: A4 FB     .word ofs_041_0x03FBB4_07_increase_brightness
- D 1 - - - 0x02B63D 0A:B62D: 80        .byte con_prg_bank + $80   ; 
; 08 
- D 1 - - - 0x02B63E 0A:B62E: AF FB     .word ofs_041_0x03FBB4_08_decrease_brightness
- D 1 - - - 0x02B640 0A:B630: 80        .byte con_prg_bank + $80   ; 



loc_0x02B641:
C D 1 - - - 0x02B641 0A:B631: A5 19     LDA ram_0019_subscript
C - - - - - 0x02B643 0A:B633: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x02B646 0A:B636: D5 B6     .word ofs_014_B6D5_00
- D 1 - I - 0x02B648 0A:B638: F1 B6     .word ofs_014_B6F1_01
- D 1 - I - 0x02B64A 0A:B63A: FC B6     .word ofs_014_B6FC_02
- D 1 - I - 0x02B64C 0A:B63C: 08 B7     .word ofs_014_B708_03
- D 1 - I - 0x02B64E 0A:B63E: 31 B7     .word ofs_014_B731_04
- D 1 - I - 0x02B650 0A:B640: 3F B7     .word ofs_014_B73F_05
- D 1 - I - 0x02B652 0A:B642: 79 B7     .word ofs_014_B779_06
- D 1 - I - 0x02B654 0A:B644: 87 B7     .word ofs_014_B787_07
- D 1 - I - 0x02B656 0A:B646: B3 B7     .word ofs_014_B7B3_08
- D 1 - I - 0x02B658 0A:B648: 31 B7     .word ofs_014_B731_09
- D 1 - I - 0x02B65A 0A:B64A: 3F B7     .word ofs_014_B73F_0A
- D 1 - I - 0x02B65C 0A:B64C: C7 B7     .word ofs_014_B7C7_0B_press_start_to_begin_2nd_quest



sub_B64E:
C - - - - - 0x02B65E 0A:B64E: A9 00     LDA #$00
C - - - - - 0x02B660 0A:B650: 85 6B     STA ram_006B_subscript
C - - - - - 0x02B662 0A:B652: 60        RTS



sub_B653:
C - - - - - 0x02B663 0A:B653: A9 08     LDA #$08
C - - - - - 0x02B665 0A:B655: 85 64     STA ram_0064_timer
C - - - - - 0x02B667 0A:B657: A5 59     LDA ram_section_behind
C - - - - - 0x02B669 0A:B659: 18        CLC
C - - - - - 0x02B66A 0A:B65A: 69 02     ADC #$02
C - - - - - 0x02B66C 0A:B65C: 85 5A     STA ram_section_ahead
C - - - - - 0x02B66E 0A:B65E: 60        RTS



sub_B65F:
C - - - - - 0x02B66F 0A:B65F: A0 00     LDY #$00
C - - - - - 0x02B671 0A:B661: 84 B4     STY ram_00B4
C - - - - - 0x02B673 0A:B663: C8        INY ; 01
C - - - - - 0x02B674 0A:B664: 84 B5     STY ram_00B5
C - - - - - 0x02B676 0A:B666: 60        RTS



sub_B667:
C - - - - - 0x02B677 0A:B667: AD A1 07  LDA ram_07A1
C - - - - - 0x02B67A 0A:B66A: F0 0D     BEQ bra_B679
C - - - - - 0x02B67C 0A:B66C: A9 FF     LDA #$FF
C - - - - - 0x02B67E 0A:B66E: 85 12     STA ram_0012_temp
C - - - - - 0x02B680 0A:B670: A9 FF     LDA #$FF
C - - - - - 0x02B682 0A:B672: 85 11     STA ram_0011_temp
C - - - - - 0x02B684 0A:B674: A9 00     LDA #$00
C - - - - - 0x02B686 0A:B676: 85 10     STA ram_0010_temp
C - - - - - 0x02B688 0A:B678: 60        RTS
bra_B679:
C - - - - - 0x02B689 0A:B679: A9 00     LDA #$00
C - - - - - 0x02B68B 0A:B67B: 85 12     STA ram_0012_temp
C - - - - - 0x02B68D 0A:B67D: A9 01     LDA #$01
C - - - - - 0x02B68F 0A:B67F: 85 11     STA ram_0011_temp
C - - - - - 0x02B691 0A:B681: A9 00     LDA #$00
C - - - - - 0x02B693 0A:B683: 85 10     STA ram_0010_temp
C - - - - - 0x02B695 0A:B685: 60        RTS



sub_B686:
C - - - - - 0x02B696 0A:B686: AD A2 07  LDA ram_07A2
C - - - - - 0x02B699 0A:B689: 18        CLC
C - - - - - 0x02B69A 0A:B68A: 65 10     ADC ram_0010_temp
C - - - - - 0x02B69C 0A:B68C: 8D A2 07  STA ram_07A2
C - - - - - 0x02B69F 0A:B68F: AD A3 07  LDA ram_07A3
C - - - - - 0x02B6A2 0A:B692: 65 11     ADC ram_0011_temp
C - - - - - 0x02B6A4 0A:B694: 8D A3 07  STA ram_07A3
C - - - - - 0x02B6A7 0A:B697: AD A4 07  LDA ram_07A4
C - - - - - 0x02B6AA 0A:B69A: 65 12     ADC ram_0012_temp
C - - - - - 0x02B6AC 0A:B69C: 8D A4 07  STA ram_07A4
C - - - - - 0x02B6AF 0A:B69F: 60        RTS



sub_B6A0:
C - - - - - 0x02B6B0 0A:B6A0: A2 01     LDX #$01
bra_B6A2_loop:
C - - - - - 0x02B6B2 0A:B6A2: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02B6B5 0A:B6A5: D0 06     BNE bra_B6AD
bra_B6A7_loop:
loc_B6A7_loop:
C D 1 - - - 0x02B6B7 0A:B6A7: E8        INX
C - - - - - 0x02B6B8 0A:B6A8: E0 17     CPX #$17
C - - - - - 0x02B6BA 0A:B6AA: 90 F6     BCC bra_B6A2_loop
C - - - - - 0x02B6BC 0A:B6AC: 60        RTS
bra_B6AD:
C - - - - - 0x02B6BD 0A:B6AD: 38        SEC
C - - - - - 0x02B6BE 0A:B6AE: BD C4 04  LDA ram_obj_pos_X_lo,X
C - - - - - 0x02B6C1 0A:B6B1: E5 10     SBC ram_0010_temp
C - - - - - 0x02B6C3 0A:B6B3: 9D C4 04  STA ram_obj_pos_X_lo,X
C - - - - - 0x02B6C6 0A:B6B6: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02B6C9 0A:B6B9: E5 11     SBC ram_0011_temp
C - - - - - 0x02B6CB 0A:B6BB: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02B6CE 0A:B6BE: B0 06     BCS bra_B6C6
C - - - - - 0x02B6D0 0A:B6C0: A5 12     LDA ram_0012_temp
C - - - - - 0x02B6D2 0A:B6C2: 30 E3     BMI bra_B6A7_loop
C - - - - - 0x02B6D4 0A:B6C4: 10 04     BPL bra_B6CA    ; jmp
bra_B6C6:
C - - - - - 0x02B6D6 0A:B6C6: A5 12     LDA ram_0012_temp
C - - - - - 0x02B6D8 0A:B6C8: 10 DD     BPL bra_B6A7_loop
bra_B6CA:
C - - - - - 0x02B6DA 0A:B6CA: A9 00     LDA #$00
C - - - - - 0x02B6DC 0A:B6CC: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02B6DF 0A:B6CF: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02B6E2 0A:B6D2: 4C A7 B6  JMP loc_B6A7_loop



ofs_014_B6D5_00:
C - - J - - 0x02B6E5 0A:B6D5: 20 DA E2  JSR sub_0x03E2EA_prg_bankswitch_dpcm_2
C - - - - - 0x02B6E8 0A:B6D8: 20 66 E6  JSR sub_0x03E676
C - - - - - 0x02B6EB 0A:B6DB: A5 25     LDA ram_for_5105
C - - - - - 0x02B6ED 0A:B6DD: 8D 05 51  STA $5105
C - - - - - 0x02B6F0 0A:B6E0: AD 81 07  LDA ram_0781
C - - - - - 0x02B6F3 0A:B6E3: 48        PHA
C - - - - - 0x02B6F4 0A:B6E4: 20 28 E8  JSR sub_0x03E838_clear_memory
C - - - - - 0x02B6F7 0A:B6E7: 68        PLA
C - - - - - 0x02B6F8 0A:B6E8: 8D 81 07  STA ram_0781
C - - - - - 0x02B6FB 0A:B6EB: 20 FD EB  JSR sub_0x03EC0D_clear_nametables
C - - - - - 0x02B6FE 0A:B6EE: E6 19     INC ram_0019_subscript
C - - - - - 0x02B700 0A:B6F0: 60        RTS



ofs_014_B6F1_01:
C - - J - - 0x02B701 0A:B6F1: A9 69     LDA #con_music_69
C - - - - - 0x02B703 0A:B6F3: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02B706 0A:B6F6: 20 4E B6  JSR sub_B64E
C - - - - - 0x02B709 0A:B6F9: E6 19     INC ram_0019_subscript
C - - - - - 0x02B70B 0A:B6FB: 60        RTS



ofs_014_B6FC_02:
C - - J - - 0x02B70C 0A:B6FC: 20 EE B7  JSR sub_B7EE
C - - - - - 0x02B70F 0A:B6FF: A5 6B     LDA ram_006B_subscript
C - - - - - 0x02B711 0A:B701: C9 FF     CMP #$FF
C - - - - - 0x02B713 0A:B703: D0 02     BNE bra_B707_RTS
C - - - - - 0x02B715 0A:B705: E6 19     INC ram_0019_subscript
bra_B707_RTS:
C - - - - - 0x02B717 0A:B707: 60        RTS



ofs_014_B708_03:
C - - J - - 0x02B718 0A:B708: A9 02     LDA #$02
C - - - - - 0x02B71A 0A:B70A: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x02B71C 0A:B70C: 20 D8 B9  JSR sub_B9D8_clear_ppu_area
C - - - - - 0x02B71F 0A:B70F: B0 01     BCS bra_B712
C - - - - - 0x02B721 0A:B711: 60        RTS
bra_B712:
C - - - - - 0x02B722 0A:B712: 20 F7 E7  JSR sub_0x03E807_clear_all_objects_data
C - - - - - 0x02B725 0A:B715: A9 6E     LDA #con__chr_bank + $6E
C - - - - - 0x02B727 0A:B717: 85 4C     STA ram_chr_bank_5126_512A
C - - - - - 0x02B729 0A:B719: A9 30     LDA #$30
C - - - - - 0x02B72B 0A:B71B: 85 30     STA ram_screen_timer_lo
C - - - - - 0x02B72D 0A:B71D: A9 00     LDA #$00
C - - - - - 0x02B72F 0A:B71F: 85 FC     STA ram_scroll_Y
C - - - - - 0x02B731 0A:B721: 85 FD     STA ram_scroll_X
C - - - - - 0x02B733 0A:B723: A9 B1     LDA #$B1
C - - - - - 0x02B735 0A:B725: 85 FF     STA ram_for_2000
C - - - - - 0x02B737 0A:B727: A2 90     LDX #con_prg_bank + $90
C - - - - - 0x02B739 0A:B729: A9 5B     LDA #con_98E4_5B_credits
C - - - - - 0x02B73B 0A:B72B: 20 DC EC  JSR sub_0x03ECEC_write_data_to_ppu_buffer
C - - - - - 0x02B73E 0A:B72E: E6 19     INC ram_0019_subscript
bra_B730_RTS:
C - - - - - 0x02B740 0A:B730: 60        RTS



ofs_014_B731_04:
ofs_014_B731_09:
C - - J - - 0x02B741 0A:B731: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x02B743 0A:B733: D0 FB     BNE bra_B730_RTS
C - - - - - 0x02B745 0A:B735: 20 5F B6  JSR sub_B65F
C - - - - - 0x02B748 0A:B738: A9 78     LDA #$78
C - - - - - 0x02B74A 0A:B73A: 85 30     STA ram_screen_timer_lo
C - - - - - 0x02B74C 0A:B73C: E6 19     INC ram_0019_subscript
C - - - - - 0x02B74E 0A:B73E: 60        RTS



ofs_014_B73F_05:
ofs_014_B73F_0A:
C - - J - - 0x02B74F 0A:B73F: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x02B751 0A:B741: D0 07     BNE bra_B74A
C - - - - - 0x02B753 0A:B743: A9 78     LDA #$78
C - - - - - 0x02B755 0A:B745: 85 30     STA ram_screen_timer_lo
C - - - - - 0x02B757 0A:B747: E6 19     INC ram_0019_subscript
bra_B749_RTS:
C - - - - - 0x02B759 0A:B749: 60        RTS
bra_B74A:
C - - - - - 0x02B75A 0A:B74A: A5 B4     LDA ram_00B4
C - - - - - 0x02B75C 0A:B74C: C9 FF     CMP #$FF
C - - - - - 0x02B75E 0A:B74E: F0 F9     BEQ bra_B749_RTS
C - - - - - 0x02B760 0A:B750: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x02B762 0A:B752: 48        PHA
C - - - - - 0x02B763 0A:B753: A9 5D     LDA #con_98E4_5D_bg_pal
C - - - - - 0x02B765 0A:B755: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B768 0A:B758: A9 0A     LDA #con_98E4_Trevor_spr_pal
C - - - - - 0x02B76A 0A:B75A: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B76D 0A:B75D: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x02B76F 0A:B75F: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B772 0A:B762: 68        PLA
C - - - - - 0x02B773 0A:B763: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x02B775 0A:B765: A9 07     LDA #con_B616_increase_brightness
C - - - - - 0x02B777 0A:B767: 20 FF B5  JSR sub_B5FF_execute_script
C - - - - - 0x02B77A 0A:B76A: A5 B4     LDA ram_00B4
C - - - - - 0x02B77C 0A:B76C: C9 FF     CMP #$FF
C - - - - - 0x02B77E 0A:B76E: D0 D9     BNE bra_B749_RTS
C - - - - - 0x02B780 0A:B770: A5 15     LDA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x02B782 0A:B772: 85 1D     STA ram_index_ppu_buffer
C - - - - - 0x02B784 0A:B774: A9 5D     LDA #con_98E4_5D_bg_pal
C - - - - - 0x02B786 0A:B776: 4C E9 EC  JMP loc_0x03ECF9_write_data_to_ppu_buffer



ofs_014_B779_06:
C - - J - - 0x02B789 0A:B779: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x02B78B 0A:B77B: D0 09     BNE bra_B786_RTS
C - - - - - 0x02B78D 0A:B77D: 20 5F B6  JSR sub_B65F
C - - - - - 0x02B790 0A:B780: A9 78     LDA #$78
C - - - - - 0x02B792 0A:B782: 85 30     STA ram_screen_timer_lo
C - - - - - 0x02B794 0A:B784: E6 19     INC ram_0019_subscript
bra_B786_RTS:
C - - - - - 0x02B796 0A:B786: 60        RTS



ofs_014_B787_07:
C - - J - - 0x02B797 0A:B787: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x02B799 0A:B789: D0 08     BNE bra_B793
C - - - - - 0x02B79B 0A:B78B: A9 00     LDA #$00
C - - - - - 0x02B79D 0A:B78D: 8D A6 07  STA ram_07A6
C - - - - - 0x02B7A0 0A:B790: E6 19     INC ram_0019_subscript
bra_B792_RTS:
C - - - - - 0x02B7A2 0A:B792: 60        RTS
bra_B793:
C - - - - - 0x02B7A3 0A:B793: A5 B4     LDA ram_00B4
C - - - - - 0x02B7A5 0A:B795: C9 FF     CMP #$FF
C - - - - - 0x02B7A7 0A:B797: F0 F9     BEQ bra_B792_RTS
C - - - - - 0x02B7A9 0A:B799: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x02B7AB 0A:B79B: 48        PHA
C - - - - - 0x02B7AC 0A:B79C: A9 5D     LDA #con_98E4_5D_bg_pal
C - - - - - 0x02B7AE 0A:B79E: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B7B1 0A:B7A1: A9 0A     LDA #con_98E4_Trevor_spr_pal
C - - - - - 0x02B7B3 0A:B7A3: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B7B6 0A:B7A6: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x02B7B8 0A:B7A8: 20 E9 EC  JSR sub_0x03ECF9_write_data_to_ppu_buffer
C - - - - - 0x02B7BB 0A:B7AB: 68        PLA
C - - - - - 0x02B7BC 0A:B7AC: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x02B7BE 0A:B7AE: A9 08     LDA #con_B616_decrease_brightness
C - - - - - 0x02B7C0 0A:B7B0: 4C FF B5  JMP loc_B5FF_execute_script



ofs_014_B7B3_08:
C - - J - - 0x02B7C3 0A:B7B3: 20 D8 B9  JSR sub_B9D8_clear_ppu_area
C - - - - - 0x02B7C6 0A:B7B6: B0 01     BCS bra_B7B9
C - - - - - 0x02B7C8 0A:B7B8: 60        RTS
bra_B7B9:
C - - - - - 0x02B7C9 0A:B7B9: A9 08     LDA #$08
C - - - - - 0x02B7CB 0A:B7BB: 85 30     STA ram_screen_timer_lo
C - - - - - 0x02B7CD 0A:B7BD: A2 90     LDX #con_prg_bank + $90
C - - - - - 0x02B7CF 0A:B7BF: A9 5C     LDA #con_98E4_5C_credits
C - - - - - 0x02B7D1 0A:B7C1: 20 DC EC  JSR sub_0x03ECEC_write_data_to_ppu_buffer
C - - - - - 0x02B7D4 0A:B7C4: E6 19     INC ram_0019_subscript
C - - - - - 0x02B7D6 0A:B7C6: 60        RTS



ofs_014_B7C7_0B_press_start_to_begin_2nd_quest:
; after credits at "presented by konami" screen
C - - J - - 0x02B7D7 0A:B7C7: A5 26     LDA ram_btn_press
C - - - - - 0x02B7D9 0A:B7C9: 29 10     AND #con_btn_Start
C - - - - - 0x02B7DB 0A:B7CB: D0 01     BNE bra_B7CE
C - - - - - 0x02B7DD 0A:B7CD: 60        RTS
bra_B7CE:
C - - - - - 0x02B7DE 0A:B7CE: A9 01     LDA #$01    ; 2nd quest
C - - - - - 0x02B7E0 0A:B7D0: 8D F6 07  STA ram_quest
C - - - - - 0x02B7E3 0A:B7D3: A9 00     LDA #$00
C - - - - - 0x02B7E5 0A:B7D5: 85 32     STA ram_blk_hi
C - - - - - 0x02B7E7 0A:B7D7: 85 33     STA ram_blk_lo
C - - - - - 0x02B7E9 0A:B7D9: 85 34     STA ram_blk_fr
C - - - - - 0x02B7EB 0A:B7DB: 85 2F     STA ram_002F_flag
C - - - - - 0x02B7ED 0A:B7DD: A4 3B     LDY ram_player
C - - - - - 0x02B7EF 0A:B7DF: B9 39 00  LDA ram_0039,Y
C - - - - - 0x02B7F2 0A:B7E2: 8D 4E 05  STA ram_plr_id
C - - - - - 0x02B7F5 0A:B7E5: A9 04     LDA #con_0018_gameplay
C - - - - - 0x02B7F7 0A:B7E7: 85 18     STA ram_main_script
C - - - - - 0x02B7F9 0A:B7E9: A9 1F     LDA #con_002A_1F
C - - - - - 0x02B7FB 0A:B7EB: 85 2A     STA ram_002A_script
C - - - - - 0x02B7FD 0A:B7ED: 60        RTS



sub_B7EE:
C - - - - - 0x02B7FE 0A:B7EE: A5 6B     LDA ram_006B_subscript
C - - - - - 0x02B800 0A:B7F0: 20 6D E8  JSR sub_0x03E87D_jump_to_pointers_after_JSR_A
- D 1 - I - 0x02B803 0A:B7F3: 09 B8     .word ofs_013_B809_00
- D 1 - I - 0x02B805 0A:B7F5: 4D B8     .word ofs_013_B84D_01
- D 1 - I - 0x02B807 0A:B7F7: 63 B8     .word ofs_013_B863_02
- D 1 - I - 0x02B809 0A:B7F9: 93 B8     .word ofs_013_B893_03
- D 1 - I - 0x02B80B 0A:B7FB: A0 B8     .word ofs_013_B8A0_04
- D 1 - I - 0x02B80D 0A:B7FD: EB B8     .word ofs_013_B8EB_05
- D 1 - I - 0x02B80F 0A:B7FF: 10 B9     .word ofs_013_B910_06
- D 1 - I - 0x02B811 0A:B801: 17 B9     .word ofs_013_B917_07
- D 1 - I - 0x02B813 0A:B803: 26 B9     .word ofs_013_B926_08
- D 1 - I - 0x02B815 0A:B805: 43 B9     .word ofs_013_B943_09_next_credits
- - - - - - 0x02B817 0A:B807: 5B B9     .word ofs_013_B95B_0A_RTS



ofs_013_B809_00:
C - - J - - 0x02B819 0A:B809: A9 02     LDA #$02
C - - - - - 0x02B81B 0A:B80B: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x02B81D 0A:B80D: 20 D8 B9  JSR sub_B9D8_clear_ppu_area
; bzk optimize, delete following RTS, BCC to RTS at 0x02B85C
C - - - - - 0x02B820 0A:B810: B0 01     BCS bra_B813
C - - - - - 0x02B822 0A:B812: 60        RTS
bra_B813:
C - - - - - 0x02B823 0A:B813: 20 F7 E7  JSR sub_0x03E807_clear_all_objects_data
C - - - - - 0x02B826 0A:B816: 20 5C B9  JSR sub_B95C_credit_screen_data
C - - - - - 0x02B829 0A:B819: A9 B0     LDA #$B0
C - - - - - 0x02B82B 0A:B81B: 85 FF     STA ram_for_2000
C - - - - - 0x02B82D 0A:B81D: A9 00     LDA #$00
C - - - - - 0x02B82F 0A:B81F: 85 FD     STA ram_scroll_X
C - - - - - 0x02B831 0A:B821: A9 10     LDA #$10
C - - - - - 0x02B833 0A:B823: 85 FC     STA ram_scroll_Y
C - - - - - 0x02B835 0A:B825: A9 00     LDA #con_B616_update_bg_spr_palette
C - - - - - 0x02B837 0A:B827: 20 FF B5  JSR sub_B5FF_execute_script
C - - - - - 0x02B83A 0A:B82A: A9 01     LDA #con_B616_01
C - - - - - 0x02B83C 0A:B82C: 20 FF B5  JSR sub_B5FF_execute_script
C - - - - - 0x02B83F 0A:B82F: A9 02     LDA #con_B616_02
C - - - - - 0x02B841 0A:B831: 20 FF B5  JSR sub_B5FF_execute_script
C - - - - - 0x02B844 0A:B834: A9 06     LDA #con_B616_set_chr_banks
C - - - - - 0x02B846 0A:B836: 20 FF B5  JSR sub_B5FF_execute_script
C - - - - - 0x02B849 0A:B839: A9 37     LDA #con__chr_bank + $37
C - - - - - 0x02B84B 0A:B83B: 85 4D     STA ram_chr_bank_5127_512B
C - - - - - 0x02B84D 0A:B83D: A9 03     LDA #con_B616_03
C - - - - - 0x02B84F 0A:B83F: 20 FF B5  JSR sub_B5FF_execute_script
C - - - - - 0x02B852 0A:B842: A9 04     LDA #con_B616_04
C - - - - - 0x02B854 0A:B844: 20 FF B5  JSR sub_B5FF_execute_script
C - - - - - 0x02B857 0A:B847: 20 53 B6  JSR sub_B653
C - - - - - 0x02B85A 0A:B84A: E6 6B     INC ram_006B_subscript
C - - - - - 0x02B85C 0A:B84C: 60        RTS



ofs_013_B84D_01:
C - - J - - 0x02B85D 0A:B84D: A9 02     LDA #$02
C - - - - - 0x02B85F 0A:B84F: 85 1C     STA ram_disable_rendering_timer
C - - - - - 0x02B861 0A:B851: A9 05     LDA #con_B616_05
C - - - - - 0x02B863 0A:B853: 20 FF B5  JSR sub_B5FF_execute_script
; bzk optimize, delete following RTS, BCC to RTS at 0x02B872
C - - - - - 0x02B866 0A:B856: B0 01     BCS bra_B859
C - - - - - 0x02B868 0A:B858: 60        RTS
bra_B859:
C - - - - - 0x02B869 0A:B859: 20 5F B6  JSR sub_B65F
C - - - - - 0x02B86C 0A:B85C: A9 78     LDA #$78
C - - - - - 0x02B86E 0A:B85E: 85 30     STA ram_screen_timer_lo
C - - - - - 0x02B870 0A:B860: E6 6B     INC ram_006B_subscript
C - - - - - 0x02B872 0A:B862: 60        RTS



ofs_013_B863_02:
C - - J - - 0x02B873 0A:B863: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x02B875 0A:B865: D0 07     BNE bra_B86E
C - - - - - 0x02B877 0A:B867: A9 78     LDA #$78
C - - - - - 0x02B879 0A:B869: 85 30     STA ram_screen_timer_lo
C - - - - - 0x02B87B 0A:B86B: E6 6B     INC ram_006B_subscript
bra_B86D_RTS:
C - - - - - 0x02B87D 0A:B86D: 60        RTS
bra_B86E:
C - - - - - 0x02B87E 0A:B86E: A5 B4     LDA ram_00B4
C - - - - - 0x02B880 0A:B870: C9 FF     CMP #$FF
C - - - - - 0x02B882 0A:B872: F0 F9     BEQ bra_B86D_RTS
C - - - - - 0x02B884 0A:B874: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x02B886 0A:B876: 48        PHA
C - - - - - 0x02B887 0A:B877: A9 00     LDA #con_B616_update_bg_spr_palette
C - - - - - 0x02B889 0A:B879: 20 FF B5  JSR sub_B5FF_execute_script
C - - - - - 0x02B88C 0A:B87C: 68        PLA
C - - - - - 0x02B88D 0A:B87D: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x02B88F 0A:B87F: A9 07     LDA #con_B616_increase_brightness
C - - - - - 0x02B891 0A:B881: 20 FF B5  JSR sub_B5FF_execute_script
C - - - - - 0x02B894 0A:B884: A5 B4     LDA ram_00B4
C - - - - - 0x02B896 0A:B886: C9 FF     CMP #$FF
C - - - - - 0x02B898 0A:B888: D0 E3     BNE bra_B86D_RTS
C - - - - - 0x02B89A 0A:B88A: A5 15     LDA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x02B89C 0A:B88C: 85 1D     STA ram_index_ppu_buffer
C - - - - - 0x02B89E 0A:B88E: A9 00     LDA #con_B616_update_bg_spr_palette
C - - - - - 0x02B8A0 0A:B890: 4C FF B5  JMP loc_B5FF_execute_script



ofs_013_B893_03:
C - - J - - 0x02B8A3 0A:B893: C6 30     DEC ram_screen_timer_lo
; bzk optimize, delete following RTS, BNE to RTS at 0x02B8AF
C - - - - - 0x02B8A5 0A:B895: F0 01     BEQ bra_B898
C - - - - - 0x02B8A7 0A:B897: 60        RTS
bra_B898:
C - - - - - 0x02B8A8 0A:B898: A9 00     LDA #$00
C - - - - - 0x02B8AA 0A:B89A: 8D A5 07  STA ram_07A5
C - - - - - 0x02B8AD 0A:B89D: E6 6B     INC ram_006B_subscript
C - - - - - 0x02B8AF 0A:B89F: 60        RTS



ofs_013_B8A0_04:
C - - J - - 0x02B8B0 0A:B8A0: 20 31 BA  JSR sub_BA31
; bzk optimize, delete following RTS, BCC to RTS at 0x02B8D1
C - - - - - 0x02B8B3 0A:B8A3: B0 01     BCS bra_B8A6
C - - - - - 0x02B8B5 0A:B8A5: 60        RTS
bra_B8A6:
C - - - - - 0x02B8B6 0A:B8A6: AD A0 07  LDA ram_pal_buffer
C - - - - - 0x02B8B9 0A:B8A9: C9 04     CMP #$04
C - - - - - 0x02B8BB 0A:B8AB: D0 03     BNE bra_B8B0
C - - - - - 0x02B8BD 0A:B8AD: 20 C2 B8  JSR sub_B8C2
bra_B8B0:
C - - - - - 0x02B8C0 0A:B8B0: A9 00     LDA #$00
C - - - - - 0x02B8C2 0A:B8B2: 8D A2 07  STA ram_07A2
C - - - - - 0x02B8C5 0A:B8B5: 8D A3 07  STA ram_07A3
C - - - - - 0x02B8C8 0A:B8B8: 8D A4 07  STA ram_07A4
C - - - - - 0x02B8CB 0A:B8BB: A9 80     LDA #$80
C - - - - - 0x02B8CD 0A:B8BD: 85 30     STA ram_screen_timer_lo
C - - - - - 0x02B8CF 0A:B8BF: E6 6B     INC ram_006B_subscript
C - - - - - 0x02B8D1 0A:B8C1: 60        RTS



sub_B8C2:
C - - - - - 0x02B8D2 0A:B8C2: A9 A2     LDA #< $26A2
C - - - - - 0x02B8D4 0A:B8C4: 85 61     STA ram_ppu_lo
C - - - - - 0x02B8D6 0A:B8C6: A9 26     LDA #> $26A2
C - - - - - 0x02B8D8 0A:B8C8: 85 62     STA ram_ppu_hi
C - - - - - 0x02B8DA 0A:B8CA: 20 B5 E8  JSR sub_0x03E8C5_set_buffer_mode_01
C - - - - - 0x02B8DD 0A:B8CD: A0 00     LDY #$00
bra_B8CF_loop:
C - - - - - 0x02B8DF 0A:B8CF: B9 F8 07  LDA ram_name,Y
C - - - - - 0x02B8E2 0A:B8D2: F0 07     BEQ bra_B8DB
C - - - - - 0x02B8E4 0A:B8D4: C9 4B     CMP #$4B
C - - - - - 0x02B8E6 0A:B8D6: F0 0F     BEQ bra_B8E7
C - - - - - 0x02B8E8 0A:B8D8: 18        CLC
C - - - - - 0x02B8E9 0A:B8D9: 69 70     ADC #$70
bra_B8DB:
C - - - - - 0x02B8EB 0A:B8DB: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x02B8EE 0A:B8DE: E8        INX
C - - - - - 0x02B8EF 0A:B8DF: C8        INY
C - - - - - 0x02B8F0 0A:B8E0: C0 08     CPY #$08
C - - - - - 0x02B8F2 0A:B8E2: 90 EB     BCC bra_B8CF_loop
C - - - - - 0x02B8F4 0A:B8E4: 4C DE E8  JMP loc_0x03E8EE_store_index_and_close_buffer
bra_B8E7:
- - - - - - 0x02B8F7 0A:B8E7: A9 F9     LDA #$F9
- - - - - - 0x02B8F9 0A:B8E9: D0 F0     BNE bra_B8DB    ; jmp



ofs_013_B8EB_05:
C - - J - - 0x02B8FB 0A:B8EB: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x02B8FD 0A:B8ED: D0 03     BNE bra_B8F2
C - - - - - 0x02B8FF 0A:B8EF: E6 6B     INC ram_006B_subscript
C - - - - - 0x02B901 0A:B8F1: 60        RTS
bra_B8F2:
C - - - - - 0x02B902 0A:B8F2: 20 67 B6  JSR sub_B667
C - - - - - 0x02B905 0A:B8F5: 20 86 B6  JSR sub_B686
C - - - - - 0x02B908 0A:B8F8: 20 A0 B6  JSR sub_B6A0
C - - - - - 0x02B90B 0A:B8FB: AD A3 07  LDA ram_07A3
C - - - - - 0x02B90E 0A:B8FE: 85 FD     STA ram_scroll_X
C - - - - - 0x02B910 0A:B900: AD A4 07  LDA ram_07A4
C - - - - - 0x02B913 0A:B903: 29 01     AND #$01
C - - - - - 0x02B915 0A:B905: 85 00     STA ram_0000_temp
C - - - - - 0x02B917 0A:B907: A5 FF     LDA ram_for_2000
C - - - - - 0x02B919 0A:B909: 29 FE     AND #$FE
C - - - - - 0x02B91B 0A:B90B: 05 00     ORA ram_0000_temp
C - - - - - 0x02B91D 0A:B90D: 85 FF     STA ram_for_2000
C - - - - - 0x02B91F 0A:B90F: 60        RTS



ofs_013_B910_06:
C - - J - - 0x02B920 0A:B910: A9 E0     LDA #$E0
C - - - - - 0x02B922 0A:B912: 85 30     STA ram_screen_timer_lo
C - - - - - 0x02B924 0A:B914: E6 6B     INC ram_006B_subscript
C - - - - - 0x02B926 0A:B916: 60        RTS



ofs_013_B917_07:
C - - J - - 0x02B927 0A:B917: C6 30     DEC ram_screen_timer_lo
; bzk optimize, delete following RTS, BNE to RTS at 0x02B935
C - - - - - 0x02B929 0A:B919: F0 01     BEQ bra_B91C
C - - - - - 0x02B92B 0A:B91B: 60        RTS
bra_B91C:
C - - - - - 0x02B92C 0A:B91C: 20 5F B6  JSR sub_B65F
C - - - - - 0x02B92F 0A:B91F: A9 78     LDA #$78
C - - - - - 0x02B931 0A:B921: 85 30     STA ram_screen_timer_lo
C - - - - - 0x02B933 0A:B923: E6 6B     INC ram_006B_subscript
C - - - - - 0x02B935 0A:B925: 60        RTS



ofs_013_B926_08:
C - - J - - 0x02B936 0A:B926: C6 30     DEC ram_screen_timer_lo
C - - - - - 0x02B938 0A:B928: D0 03     BNE bra_B92D
C - - - - - 0x02B93A 0A:B92A: E6 6B     INC ram_006B_subscript
bra_B92C_RTS:
C - - - - - 0x02B93C 0A:B92C: 60        RTS
bra_B92D:
C - - - - - 0x02B93D 0A:B92D: A5 B4     LDA ram_00B4
C - - - - - 0x02B93F 0A:B92F: C9 FF     CMP #$FF
C - - - - - 0x02B941 0A:B931: F0 F9     BEQ bra_B92C_RTS
C - - - - - 0x02B943 0A:B933: A5 1D     LDA ram_index_ppu_buffer
C - - - - - 0x02B945 0A:B935: 48        PHA
C - - - - - 0x02B946 0A:B936: A9 00     LDA #con_B616_update_bg_spr_palette
C - - - - - 0x02B948 0A:B938: 20 FF B5  JSR sub_B5FF_execute_script
C - - - - - 0x02B94B 0A:B93B: 68        PLA
C - - - - - 0x02B94C 0A:B93C: 85 15     STA ram_0015_t001_copy_index_ppu_buffer
C - - - - - 0x02B94E 0A:B93E: A9 08     LDA #con_B616_decrease_brightness
C - - - - - 0x02B950 0A:B940: 4C FF B5  JMP loc_B5FF_execute_script



ofs_013_B943_09_next_credits:
C - - J - - 0x02B953 0A:B943: A9 00     LDA #$00
C - - - - - 0x02B955 0A:B945: 8D A6 07  STA ram_07A6
C - - - - - 0x02B958 0A:B948: EE A0 07  INC ram_07A0    ; credits counter
C - - - - - 0x02B95B 0A:B94B: AD A0 07  LDA ram_07A0
C - - - - - 0x02B95E 0A:B94E: C9 05     CMP #$05
C - - - - - 0x02B960 0A:B950: D0 04     BNE bra_B956_still_more_credit_screens
C - - - - - 0x02B962 0A:B952: A9 FF     LDA #$FF
C - - - - - 0x02B964 0A:B954: D0 02     BNE bra_B958    ; jmp
bra_B956_still_more_credit_screens:
C - - - - - 0x02B966 0A:B956: A9 00     LDA #$00
bra_B958:
C - - - - - 0x02B968 0A:B958: 85 6B     STA ram_006B_subscript
C - - - - - 0x02B96A 0A:B95A: 60        RTS



ofs_013_B95B_0A_RTS:
; bzk optimize
- - - - - - 0x02B96B 0A:B95B: 60        RTS



sub_B95C_credit_screen_data:
C - - - - - 0x02B96C 0A:B95C: AD A0 07  LDA ram_07A0    ; credit screen counter
C - - - - - 0x02B96F 0A:B95F: 0A        ASL
C - - - - - 0x02B970 0A:B960: A8        TAY
C - - - - - 0x02B971 0A:B961: B9 27 BA  LDA tbl_BA27_credit_screen_data,Y
C - - - - - 0x02B974 0A:B964: 85 08     STA ram_0008_t02E_credit_screen_data
C - - - - - 0x02B976 0A:B966: B9 28 BA  LDA tbl_BA27_credit_screen_data + $01,Y
C - - - - - 0x02B979 0A:B969: 85 09     STA ram_0008_t02E_credit_screen_data + $01
C - - - - - 0x02B97B 0A:B96B: A0 00     LDY #$00
C - - - - - 0x02B97D 0A:B96D: 20 95 FB  JSR sub_0x03FBA5
; bzk optimize, PHA + PLA instead of JSR at 0x02B986
; / 10
C - - - - - 0x02B980 0A:B970: 4A        LSR
C - - - - - 0x02B981 0A:B971: 4A        LSR
C - - - - - 0x02B982 0A:B972: 4A        LSR
C - - - - - 0x02B983 0A:B973: 4A        LSR
C - - - - - 0x02B984 0A:B974: 85 32     STA ram_blk_hi
C - - - - - 0x02B986 0A:B976: 20 95 FB  JSR sub_0x03FBA5
C - - - - - 0x02B989 0A:B979: 29 0F     AND #$0F
C - - - - - 0x02B98B 0A:B97B: 85 33     STA ram_blk_lo
C - - - - - 0x02B98D 0A:B97D: C8        INY ; 01
C - - - - - 0x02B98E 0A:B97E: 20 95 FB  JSR sub_0x03FBA5
; bzk optimize, PHA + PLA instead of JSR at 0x02B997
; / 10
C - - - - - 0x02B991 0A:B981: 4A        LSR
C - - - - - 0x02B992 0A:B982: 4A        LSR
C - - - - - 0x02B993 0A:B983: 4A        LSR
C - - - - - 0x02B994 0A:B984: 4A        LSR
C - - - - - 0x02B995 0A:B985: 85 34     STA ram_blk_fr
C - - - - - 0x02B997 0A:B987: 20 95 FB  JSR sub_0x03FBA5
C - - - - - 0x02B99A 0A:B98A: 29 0F     AND #$0F
C - - - - - 0x02B99C 0A:B98C: 85 57     STA ram_cam_pos_hi
C - - - - - 0x02B99E 0A:B98E: 29 01     AND #$01
C - - - - - 0x02B9A0 0A:B990: 85 75     STA ram_0075
C - - - - - 0x02B9A2 0A:B992: A9 00     LDA #$00
C - - - - - 0x02B9A4 0A:B994: 85 56     STA ram_cam_pos_lo
C - - - - - 0x02B9A6 0A:B996: C8        INY ; 02
C - - - - - 0x02B9A7 0A:B997: 20 95 FB  JSR sub_0x03FBA5
C - - - - - 0x02B9AA 0A:B99A: 8D A1 07  STA ram_07A1
C - - - - - 0x02B9AD 0A:B99D: C8        INY ; 03
C - - - - - 0x02B9AE 0A:B99E: 20 95 FB  JSR sub_0x03FBA5
C - - - - - 0x02B9B1 0A:B9A1: 8D 4E 05  STA ram_plr_id
C - - - - - 0x02B9B4 0A:B9A4: C8        INY ; 04
C - - - - - 0x02B9B5 0A:B9A5: A2 01     LDX #$01
loc_B9A7_loop:
C D 1 - - - 0x02B9B7 0A:B9A7: 20 95 FB  JSR sub_0x03FBA5
C - - - - - 0x02B9BA 0A:B9AA: C9 FF     CMP #$FF
C - - - - - 0x02B9BC 0A:B9AC: F0 29     BEQ bra_B9D7_RTS
C - - - - - 0x02B9BE 0A:B9AE: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x02B9C1 0A:B9B1: C8        INY
C - - - - - 0x02B9C2 0A:B9B2: 20 95 FB  JSR sub_0x03FBA5
C - - - - - 0x02B9C5 0A:B9B5: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02B9C8 0A:B9B8: C8        INY
C - - - - - 0x02B9C9 0A:B9B9: 20 95 FB  JSR sub_0x03FBA5
C - - - - - 0x02B9CC 0A:B9BC: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02B9CF 0A:B9BF: C8        INY
C - - - - - 0x02B9D0 0A:B9C0: 20 95 FB  JSR sub_0x03FBA5
C - - - - - 0x02B9D3 0A:B9C3: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02B9D6 0A:B9C6: C8        INY
C - - - - - 0x02B9D7 0A:B9C7: 20 95 FB  JSR sub_0x03FBA5
C - - - - - 0x02B9DA 0A:B9CA: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x02B9DD 0A:B9CD: C8        INY
C - - - - - 0x02B9DE 0A:B9CE: A9 01     LDA #$01
C - - - - - 0x02B9E0 0A:B9D0: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02B9E3 0A:B9D3: E8        INX
C - - - - - 0x02B9E4 0A:B9D4: 4C A7 B9  JMP loc_B9A7_loop
bra_B9D7_RTS:
C - - - - - 0x02B9E7 0A:B9D7: 60        RTS



sub_B9D8_clear_ppu_area:
; out
    ; C
        ; 0 = still going
        ; 1 = stop
C - - - - - 0x02B9E8 0A:B9D8: AD A6 07  LDA ram_07A6
; * 03
C - - - - - 0x02B9EB 0A:B9DB: 0A        ASL
C - - - - - 0x02B9EC 0A:B9DC: 18        CLC
C - - - - - 0x02B9ED 0A:B9DD: 6D A6 07  ADC ram_07A6
C - - - - - 0x02B9F0 0A:B9E0: A8        TAY
C - - - - - 0x02B9F1 0A:B9E1: B9 0B BA  LDA tbl_BA0B,Y
C - - - - - 0x02B9F4 0A:B9E4: C9 FF     CMP #$FF
C - - - - - 0x02B9F6 0A:B9E6: F0 21     BEQ bra_BA09_FF
C - - - - - 0x02B9F8 0A:B9E8: 85 62     STA ram_ppu_hi
C - - - - - 0x02B9FA 0A:B9EA: B9 0C BA  LDA tbl_BA0B + $01,Y
C - - - - - 0x02B9FD 0A:B9ED: 85 61     STA ram_ppu_lo
C - - - - - 0x02B9FF 0A:B9EF: B9 0D BA  LDA tbl_BA0B + $02,Y
C - - - - - 0x02BA02 0A:B9F2: 85 10     STA ram_0010_temp
C - - - - - 0x02BA04 0A:B9F4: 20 B5 E8  JSR sub_0x03E8C5_set_buffer_mode_01
C - - - - - 0x02BA07 0A:B9F7: A9 00     LDA #$00
bra_B9F9_loop:
C - - - - - 0x02BA09 0A:B9F9: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x02BA0C 0A:B9FC: E8        INX
C - - - - - 0x02BA0D 0A:B9FD: C6 10     DEC ram_0010_temp
C - - - - - 0x02BA0F 0A:B9FF: D0 F8     BNE bra_B9F9_loop
C - - - - - 0x02BA11 0A:BA01: 20 DE E8  JSR sub_0x03E8EE_store_index_and_close_buffer
C - - - - - 0x02BA14 0A:BA04: EE A6 07  INC ram_07A6
C - - - - - 0x02BA17 0A:BA07: 18        CLC
C - - - - - 0x02BA18 0A:BA08: 60        RTS
bra_BA09_FF:
C - - - - - 0x02BA19 0A:BA09: 38        SEC
C - - - - - 0x02BA1A 0A:BA0A: 60        RTS



tbl_BA0B:
; bzk optimize, counter is always 40
; 00 
- D 1 - - - 0x02BA1B 0A:BA0B: 24 C0     .dbyt $24C0 ; ppu address
- D 1 - - - 0x02BA1D 0A:BA0D: 40        .byte $40   ; counter
; 01 
- D 1 - - - 0x02BA1E 0A:BA0E: 25 00     .dbyt $2500 ; ppu address
- D 1 - - - 0x02BA20 0A:BA10: 40        .byte $40   ; counter
; 02 
- D 1 - - - 0x02BA21 0A:BA11: 25 40     .dbyt $2540 ; ppu address
- D 1 - - - 0x02BA23 0A:BA13: 40        .byte $40   ; counter
; 03 
- D 1 - - - 0x02BA24 0A:BA14: 25 80     .dbyt $2580 ; ppu address
- D 1 - - - 0x02BA26 0A:BA16: 40        .byte $40   ; counter
; 04 
- D 1 - - - 0x02BA27 0A:BA17: 25 C0     .dbyt $25C0 ; ppu address
- D 1 - - - 0x02BA29 0A:BA19: 40        .byte $40   ; counter
; 05 
- D 1 - - - 0x02BA2A 0A:BA1A: 26 00     .dbyt $2600 ; ppu address
- D 1 - - - 0x02BA2C 0A:BA1C: 40        .byte $40   ; counter
; 06 
- D 1 - - - 0x02BA2D 0A:BA1D: 26 40     .dbyt $2640 ; ppu address
- D 1 - - - 0x02BA2F 0A:BA1F: 40        .byte $40   ; counter
; 07 
- D 1 - - - 0x02BA30 0A:BA20: 26 80     .dbyt $2680 ; ppu address
- D 1 - - - 0x02BA32 0A:BA22: 40        .byte $40   ; counter
; 08 
- D 1 - - - 0x02BA33 0A:BA23: 26 C0     .dbyt $26C0 ; ppu address
- D 1 - - - 0x02BA35 0A:BA25: 40        .byte $40   ; counter
; 09 
- D 1 - - - 0x02BA36 0A:BA26: FF        .byte $FF   ; end token



tbl_BA27_credit_screen_data:
- D 1 - - - 0x02BA37 0A:BA27: 16 BF     .word _off038_0x03BF26_00_Sypha
- D 1 - - - 0x02BA39 0A:BA29: 4D BF     .word _off038_0x03BF5D_01_Grant
- D 1 - - - 0x02BA3B 0A:BA2B: 75 BF     .word _off038_0x03BF85_02_Alucard
- D 1 - - - 0x02BA3D 0A:BA2D: FD BE     .word _off038_0x03BF0D_03_Konami
- D 1 - - - 0x02BA3F 0A:BA2F: 8E BF     .word _off038_0x03BF9E_04_Trevor



sub_BA31:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x02BA41 0A:BA31: AD F6 07  LDA ram_quest
C - - - - - 0x02BA44 0A:BA34: D0 09     BNE bra_BA3F    ; if 2nd quest
C - - - - - 0x02BA46 0A:BA36: AD 81 07  LDA ram_0781
C - - - - - 0x02BA49 0A:BA39: D0 04     BNE bra_BA3F
C - - - - - 0x02BA4B 0A:BA3B: A0 00     LDY #$00
C - - - - - 0x02BA4D 0A:BA3D: F0 02     BEQ bra_BA41    ; jmp
bra_BA3F:
C - - - - - 0x02BA4F 0A:BA3F: A0 02     LDY #$02
bra_BA41:
C - - - - - 0x02BA51 0A:BA41: B9 6E BA  LDA tbl_BA6E_credits_text,Y
C - - - - - 0x02BA54 0A:BA44: 85 08     STA ram_0008_t012_data
C - - - - - 0x02BA56 0A:BA46: B9 6F BA  LDA tbl_BA6E_credits_text + $01,Y
C - - - - - 0x02BA59 0A:BA49: 85 09     STA ram_0008_t012_data + $01
C - - - - - 0x02BA5B 0A:BA4B: AD A0 07  LDA ram_pal_buffer
C - - - - - 0x02BA5E 0A:BA4E: 0A        ASL
C - - - - - 0x02BA5F 0A:BA4F: A8        TAY
C - - - - - 0x02BA60 0A:BA50: B1 08     LDA (ram_0008_t012_data),Y
C - - - - - 0x02BA62 0A:BA52: 85 0A     STA ram_000A_t00A_data
C - - - - - 0x02BA64 0A:BA54: C8        INY
C - - - - - 0x02BA65 0A:BA55: B1 08     LDA (ram_0008_t012_data),Y
C - - - - - 0x02BA67 0A:BA57: 85 0B     STA ram_000A_t00A_data + $01
C - - - - - 0x02BA69 0A:BA59: AC A5 07  LDY ram_07A5
C - - - - - 0x02BA6C 0A:BA5C: B1 0A     LDA (ram_000A_t00A_data),Y
C - - - - - 0x02BA6E 0A:BA5E: C9 FF     CMP #$FF
C - - - - - 0x02BA70 0A:BA60: F0 0A     BEQ bra_BA6C_FF
C - - - - - 0x02BA72 0A:BA62: A2 90     LDX #con_prg_bank + $90
C - - - - - 0x02BA74 0A:BA64: 20 DC EC  JSR sub_0x03ECEC_write_data_to_ppu_buffer
C - - - - - 0x02BA77 0A:BA67: EE A5 07  INC ram_07A5
C - - - - - 0x02BA7A 0A:BA6A: 18        CLC
C - - - - - 0x02BA7B 0A:BA6B: 60        RTS
bra_BA6C_FF:
C - - - - - 0x02BA7C 0A:BA6C: 38        SEC
C - - - - - 0x02BA7D 0A:BA6D: 60        RTS



tbl_BA6E_credits_text:
- D 1 - - - 0x02BA7E 0A:BA6E: 72 BA     .word _off_BA72_00
- D 1 - - - 0x02BA80 0A:BA70: 7C BA     .word _off_BA7C_01



_off_BA72_00:
- D 1 - I - 0x02BA82 0A:BA72: 86 BA     .word off_BA86_00_00
- D 1 - I - 0x02BA84 0A:BA74: 88 BA     .word off_BA88_00_01
- D 1 - I - 0x02BA86 0A:BA76: 8A BA     .word off_BA8A_00_02
- D 1 - I - 0x02BA88 0A:BA78: 8C BA     .word off_BA8C_00_03
- D 1 - I - 0x02BA8A 0A:BA7A: 8E BA     .word off_BA8E_00_04



_off_BA7C_01:
- D 1 - I - 0x02BA8C 0A:BA7C: 90 BA     .word off_BA90_01_00
- D 1 - I - 0x02BA8E 0A:BA7E: 92 BA     .word off_BA92_01_01
- D 1 - I - 0x02BA90 0A:BA80: 94 BA     .word off_BA94_01_02
- D 1 - I - 0x02BA92 0A:BA82: 96 BA     .word off_BA96_01_03
- D 1 - I - 0x02BA94 0A:BA84: 98 BA     .word off_BA98_01_04

; bzk optimize, 2nd bytes are always FF

off_BA86_00_00:
- D 1 - I - 0x02BA96 0A:BA86: 32        .byte con_98E4_32_credits   ; 00 
- D 1 - I - 0x02BA97 0A:BA87: FF        .byte $FF   ; 01 



off_BA88_00_01:
- D 1 - I - 0x02BA98 0A:BA88: 33        .byte con_98E4_33_credits   ; 00 
- D 1 - I - 0x02BA99 0A:BA89: FF        .byte $FF   ; 01 



off_BA8A_00_02:
- D 1 - I - 0x02BA9A 0A:BA8A: 34        .byte con_98E4_34_credits   ; 00 
- D 1 - I - 0x02BA9B 0A:BA8B: FF        .byte $FF   ; 01 



off_BA8C_00_03:
- D 1 - I - 0x02BA9C 0A:BA8C: 35        .byte con_98E4_35_credits   ; 00 
- D 1 - I - 0x02BA9D 0A:BA8D: FF        .byte $FF   ; 01 



off_BA8E_00_04:
- D 1 - I - 0x02BA9E 0A:BA8E: 36        .byte con_98E4_36_credits   ; 00 
- D 1 - I - 0x02BA9F 0A:BA8F: FF        .byte $FF   ; 01 



off_BA90_01_00:
- D 1 - I - 0x02BAA0 0A:BA90: 37        .byte con_98E4_37_credits   ; 00 
- D 1 - I - 0x02BAA1 0A:BA91: FF        .byte $FF   ; 01 



off_BA92_01_01:
- D 1 - I - 0x02BAA2 0A:BA92: 38        .byte con_98E4_38_credits   ; 00 
- D 1 - I - 0x02BAA3 0A:BA93: FF        .byte $FF   ; 01 



off_BA94_01_02:
- D 1 - I - 0x02BAA4 0A:BA94: 65        .byte con_98E4_65_credits   ; 00 
- D 1 - I - 0x02BAA5 0A:BA95: FF        .byte $FF   ; 01 



off_BA96_01_03:
- D 1 - I - 0x02BAA6 0A:BA96: 66        .byte con_98E4_66_credits   ; 00 
- D 1 - I - 0x02BAA7 0A:BA97: FF        .byte $FF   ; 01 



off_BA98_01_04:
- D 1 - I - 0x02BAA8 0A:BA98: 36        .byte con_98E4_36_credits   ; 00 
- D 1 - I - 0x02BAA9 0A:BA99: FF        .byte $FF   ; 01 



_off005_0x02BAAA_24:
- D 1 - I - 0x02BAAA 0A:BA9A: C0 2B     .word $2BC0 ; ppu address

- D 1 - I - 0x02BAAC 0A:BA9C: 0A        .byte $0A   ; write 0A times tile FF
- D 1 - I - 0x02BAAD 0A:BA9D: FF        .byte $FF   ; 

- D 1 - I - 0x02BAAE 0A:BA9E: 82        .byte $02 + $80   ; write these tiles 02 length
- D 1 - I - 0x02BAAF 0A:BA9F: 3F        .byte $3F, $CF   ; 

- D 1 - I - 0x02BAB1 0A:BAA1: 06        .byte $06   ; 
- D 1 - I - 0x02BAB2 0A:BAA2: FF        .byte $FF   ; 

- D 1 - I - 0x02BAB3 0A:BAA3: 84        .byte $04 + $80   ; 
- D 1 - I - 0x02BAB4 0A:BAA4: 13        .byte $13, $44, $99, $AA   ; 

- D 1 - I - 0x02BAB8 0A:BAA8: 04        .byte $04   ; 
- D 1 - I - 0x02BAB9 0A:BAA9: FF        .byte $FF   ; 

- D 1 - I - 0x02BABA 0A:BAAA: 84        .byte $04 + $80   ; 
- D 1 - I - 0x02BABB 0A:BAAB: 55        .byte $55, $22, $88, $55   ; 

- D 1 - I - 0x02BABF 0A:BAAF: 04        .byte $04   ; 
- D 1 - I - 0x02BAC0 0A:BAB0: FF        .byte $FF   ; 

- D 1 - I - 0x02BAC1 0A:BAB1: 84        .byte $04 + $80   ; 
- D 1 - I - 0x02BAC2 0A:BAB2: 55        .byte $55, $22, $88, $55   ; 

- D 1 - I - 0x02BAC6 0A:BAB6: 04        .byte $04   ; 
- D 1 - I - 0x02BAC7 0A:BAB7: FF        .byte $FF   ; 

- D 1 - I - 0x02BAC8 0A:BAB8: 82        .byte $02 + $80   ; 
- D 1 - I - 0x02BAC9 0A:BAB9: F5        .byte $F5, $F5   ; 

- D 1 - I - 0x02BACB 0A:BABB: 0C        .byte $0C   ; 
- D 1 - I - 0x02BACC 0A:BABC: FF        .byte $FF   ; 

- D 1 - I - 0x02BACD 0A:BABD: 08        .byte $08   ; 
- D 1 - I - 0x02BACE 0A:BABE: 0F        .byte $0F   ; 

- D 1 - I - 0x02BACF 0A:BABF: FF        .byte $FF   ; end token



_off003_0x02BAD0_39:
; "Trevor made many"
- D 1 - I - 0x02BAD0 0A:BAC0: D3        .byte $D3, $F1, $E4, $F5, $EE, $F1, $00, $EC, $E0, $E3, $E4, $00, $EC, $E0, $ED, $F8   ; 

- D 1 - I - 0x02BAE0 0A:BAD0: FE        .byte $FE   ; continue
; "sacrifices. The"
- D 1 - I - 0x02BAE1 0A:BAD1: F2        .byte $F2, $E0, $E2, $F1, $E8, $E5, $E8, $E2, $E4, $F2, $DB, $00, $D3, $E7, $E4   ; 

- D 1 - I - 0x02BAF0 0A:BAE0: FE        .byte $FE   ; continue
; "long fight is"
- D 1 - I - 0x02BAF1 0A:BAE1: EB        .byte $EB, $EE, $ED, $E6, $00, $E5, $E8, $E6, $E7, $F3, $00, $E8, $F2   ; 

- D 1 - I - 0x02BAFE 0A:BAEE: FF        .byte $FF   ; end token



_off003_0x02BAFF_3A:
; "over. Dracula is"
- D 1 - I - 0x02BAFF 0A:BAEF: EE        .byte $EE, $F5, $E4, $F1, $DB, $00, $C3, $F1, $E0, $E2, $F4, $EB, $E0, $00, $E8, $F2   ; 

- D 1 - I - 0x02BB0F 0A:BAFF: FE        .byte $FE   ; continue
; "dead and all"
- D 1 - I - 0x02BB10 0A:BB00: E3        .byte $E3, $E4, $E0, $E3, $00, $E0, $ED, $E3, $00, $E0, $EB, $EB   ; 

- D 1 - I - 0x02BB1C 0A:BB0C: FF        .byte $FF   ; end token



_off003_0x02BB1D_3B:
; "other spirits"
- D 1 - I - 0x02BB1D 0A:BB0D: EE        .byte $EE, $F3, $E7, $E4, $F1, $00, $F2, $EF, $E8, $F1, $E8, $F3, $F2   ; 

- D 1 - I - 0x02BB2A 0A:BB1A: FE        .byte $FE   ; continue
; "are asleep."
- D 1 - I - 0x02BB2B 0A:BB1B: E0        .byte $E0, $F1, $E4, $00, $E0, $F2, $EB, $E4, $E4, $EF, $DB   ; 

- D 1 - I - 0x02BB36 0A:BB26: FE        .byte $FE   ; continue

- D 1 - I - 0x02BB37 0A:BB27: 00        .byte $00   ; 

- D 1 - I - 0x02BB38 0A:BB28: FF        .byte $FF   ; end token



_off003_0x02BB39_3C:
_off003_0x02BB39_60:
; "After this fight"
- D 1 - I - 0x02BB39 0A:BB29: C0        .byte $C0, $E5, $F3, $E4, $F1, $00, $F3, $E7, $E8, $F2, $00, $E5, $E8, $E6, $E7, $F3   ; 

- D 1 - I - 0x02BB49 0A:BB39: FE        .byte $FE   ; continue
; "the Belmont name"
- D 1 - I - 0x02BB4A 0A:BB3A: F3        .byte $F3, $E7, $E4, $00, $C1, $E4, $EB, $EC, $EE, $ED, $F3, $00, $ED, $E0, $EC, $E4   ; 

- D 1 - I - 0x02BB5A 0A:BB4A: FF        .byte $FF   ; end token



_off003_0x02BB5B_3D:
_off003_0x02BB5B_61:
; "shall be honored"
- D 1 - I - 0x02BB5B 0A:BB4B: F2        .byte $F2, $E7, $E0, $EB, $EB, $00, $E1, $E4, $00, $E7, $EE, $ED, $EE, $F1, $E4, $E3   ; 

- D 1 - I - 0x02BB6B 0A:BB5B: FE        .byte $FE   ; continue
; "by all people."
- D 1 - I - 0x02BB6C 0A:BB5C: E1        .byte $E1, $F8, $00, $E0, $EB, $EB, $00, $EF, $E4, $EE, $EF, $EB, $E4, $DB   ; 

- D 1 - I - 0x02BB7A 0A:BB6A: FF        .byte $FF   ; end token



_off003_0x02BB7B_3E:
; "In the shadows,"
- D 1 - I - 0x02BB7B 0A:BB6B: C8        .byte $C8, $ED, $00, $F3, $E7, $E4, $00, $F2, $E7, $E0, $E3, $EE, $F6, $F2, $DC   ; 

- D 1 - I - 0x02BB8A 0A:BB7A: FE        .byte $FE   ; continue
; "a person watches"
- D 1 - I - 0x02BB8B 0A:BB7B: E0        .byte $E0, $00, $EF, $E4, $F1, $F2, $EE, $ED, $00, $F6, $E0, $F3, $E2, $E7, $E4, $F2   ; 

- D 1 - I - 0x02BB9B 0A:BB8B: FF        .byte $FF   ; end token



_off003_0x02BB9C_3F:
; "the castle fall."
- D 1 - I - 0x02BB9C 0A:BB8C: F3        .byte $F3, $E7, $E4, $00, $E2, $E0, $F2, $F3, $EB, $E4, $00, $E5, $E0, $EB, $EB, $DB   ; 

- D 1 - I - 0x02BBAC 0A:BB9C: FE        .byte $FE   ; continue

- D 1 - I - 0x02BBAD 0A:BB9D: 00        .byte $00   ; 

- D 1 - I - 0x02BBAE 0A:BB9E: FE        .byte $FE   ; continue
; "Trevor must go"
- D 1 - I - 0x02BBAF 0A:BB9F: D3        .byte $D3, $F1, $E4, $F5, $EE, $F1, $00, $EC, $F4, $F2, $F3, $00, $E6, $EE   ; 

- D 1 - I - 0x02BBBD 0A:BBAD: FF        .byte $FF   ; end token



_off003_0x02BBBE_40:
; "for now but he"
- D 1 - I - 0x02BBBE 0A:BBAE: E5        .byte $E5, $EE, $F1, $00, $ED, $EE, $F6, $00, $E1, $F4, $F3, $00, $E7, $E4   ; 

- D 1 - I - 0x02BBCC 0A:BBBC: FE        .byte $FE   ; continue
; "hopes someday he"
- D 1 - I - 0x02BBCD 0A:BBBD: E7        .byte $E7, $EE, $EF, $E4, $F2, $00, $F2, $EE, $EC, $E4, $E3, $E0, $F8, $00, $E7, $E4   ; 

- D 1 - I - 0x02BBDD 0A:BBCD: FF        .byte $FF   ; end token



_off003_0x02BBDE_41:
; "will get the"
- D 1 - I - 0x02BBDE 0A:BBCE: F6        .byte $F6, $E8, $EB, $EB, $00, $E6, $E4, $F3, $00, $F3, $E7, $E4   ; 

- D 1 - I - 0x02BBEA 0A:BBDA: FE        .byte $FE   ; continue
; "respect that"
- D 1 - I - 0x02BBEB 0A:BBDB: F1        .byte $F1, $E4, $F2, $EF, $E4, $E2, $F3, $00, $F3, $E7, $E0, $F3   ; 

- D 1 - I - 0x02BBF7 0A:BBE7: FF        .byte $FF   ; end token



_off003_0x02BBF8_42:
; "he deserves."
- D 1 - I - 0x02BBF8 0A:BBE8: E7        .byte $E7, $E4, $00, $E3, $E4, $F2, $E4, $F1, $F5, $E4, $F2, $DB   ; 

- D 1 - I - 0x02BC04 0A:BBF4: FE        .byte $FE   ; continue

- D 1 - I - 0x02BC05 0A:BBF5: 00        .byte $00   ; 

- D 1 - I - 0x02BC06 0A:BBF6: FF        .byte $FF   ; end token



_off003_0x02BC07_43:
; "Syfa, the"
- D 1 - I - 0x02BC07 0A:BBF7: D2        .byte $D2, $F8, $E5, $E0, $DC, $00, $F3, $E7, $E4   ; 

- D 1 - I - 0x02BC10 0A:BC00: FE        .byte $FE   ; continue
; "Vampire Killer"
- D 1 - I - 0x02BC11 0A:BC01: D5        .byte $D5, $E0, $EC, $EF, $E8, $F1, $E4, $00, $CA, $E8, $EB, $EB, $E4, $F1   ; 

- D 1 - I - 0x02BC1F 0A:BC0F: FF        .byte $FF   ; end token



_off003_0x02BC20_44:
; "has had a bad"
- D 1 - I - 0x02BC20 0A:BC10: E7        .byte $E7, $E0, $F2, $00, $E7, $E0, $E3, $00, $E0, $00, $E1, $E0, $E3   ; 

- D 1 - I - 0x02BC2D 0A:BC1D: FE        .byte $FE   ; continue
; "life, but since"
- D 1 - I - 0x02BC2E 0A:BC1E: EB        .byte $EB, $E8, $E5, $E4, $DC, $00, $E1, $F4, $F3, $00, $F2, $E8, $ED, $E2, $E4   ; 

- D 1 - I - 0x02BC3D 0A:BC2D: FF        .byte $FF   ; end token



_off003_0x02BC3E_45:
; "she met Trevor"
- D 1 - I - 0x02BC3E 0A:BC2E: F2        .byte $F2, $E7, $E4, $00, $EC, $E4, $F3, $00, $D3, $F1, $E4, $F5, $EE, $F1   ; 

- D 1 - I - 0x02BC4C 0A:BC3C: FE        .byte $FE   ; continue
; "she is beginning"
- D 1 - I - 0x02BC4D 0A:BC3D: F2        .byte $F2, $E7, $E4, $00, $E8, $F2, $00, $E1, $E4, $E6, $E8, $ED, $ED, $E8, $ED, $E6   ; 

- D 1 - I - 0x02BC5D 0A:BC4D: FF        .byte $FF   ; end token



_off003_0x02BC5E_46:
; "to feel more"
- D 1 - I - 0x02BC5E 0A:BC4E: F3        .byte $F3, $EE, $00, $E5, $E4, $E4, $EB, $00, $EC, $EE, $F1, $E4   ; 

- D 1 - I - 0x02BC6A 0A:BC5A: FE        .byte $FE   ; continue
; "comfortable with"
- D 1 - I - 0x02BC6B 0A:BC5B: E2        .byte $E2, $EE, $EC, $E5, $EE, $F1, $F3, $E0, $E1, $EB, $E4, $00, $F6, $E8, $F3, $E7   ; 

- D 1 - I - 0x02BC7B 0A:BC6B: FF        .byte $FF   ; end token



_off003_0x02BC7C_4D:
_off003_0x02BC7C_4E:
; "herself."
- D 1 - I - 0x02BC7C 0A:BC6C: E7        .byte $E7, $E4, $F1, $F2, $E4, $EB, $E5, $DB   ; 

- D 1 - I - 0x02BC84 0A:BC74: FE        .byte $FE   ; continue

- D 1 - I - 0x02BC85 0A:BC75: 00        .byte $00   ; 

- D 1 - I - 0x02BC86 0A:BC76: FF        .byte $FF   ; end token



_off003_0x02BC87_4F:
; "Both feel their"
- D 1 - I - 0x02BC87 0A:BC77: C1        .byte $C1, $EE, $F3, $E7, $00, $E5, $E4, $E4, $EB, $00, $F3, $E7, $E4, $E8, $F1   ; 

- D 1 - I - 0x02BC96 0A:BC86: FE        .byte $FE   ; continue
; "friendship is"
- D 1 - I - 0x02BC97 0A:BC87: E5        .byte $E5, $F1, $E8, $E4, $ED, $E3, $F2, $E7, $E8, $EF, $00, $E8, $F2   ; 

- D 1 - I - 0x02BCA4 0A:BC94: FF        .byte $FF   ; end token



_off003_0x02BCA5_50:
; "stronger since"
- D 1 - I - 0x02BCA5 0A:BC95: F2        .byte $F2, $F3, $F1, $EE, $ED, $E6, $E4, $F1, $00, $F2, $E8, $ED, $E2, $E4   ; 

- D 1 - I - 0x02BCB3 0A:BCA3: FE        .byte $FE   ; continue
; "they worked"
- D 1 - I - 0x02BCB4 0A:BCA4: F3        .byte $F3, $E7, $E4, $F8, $00, $F6, $EE, $F1, $EA, $E4, $E3   ; 

- D 1 - I - 0x02BCBF 0A:BCAF: FF        .byte $FF   ; end token



_off003_0x02BCC0_51:
; "together to rid"
- D 1 - I - 0x02BCC0 0A:BCB0: F3        .byte $F3, $EE, $E6, $E4, $F3, $E7, $E4, $F1, $00, $F3, $EE, $00, $F1, $E8, $E3   ; 

- D 1 - I - 0x02BCCF 0A:BCBF: FE        .byte $FE   ; continue
; "Wallachia city"
- D 1 - I - 0x02BCD0 0A:BCC0: D6        .byte $D6, $E0, $EB, $EB, $E0, $E2, $E7, $E8, $E0, $00, $E2, $E8, $F3, $F8   ; 

- D 1 - I - 0x02BCDE 0A:BCCE: FF        .byte $FF   ; end token



_off003_0x02BCDF_52:
; "of evil. Grant"
- D 1 - I - 0x02BCDF 0A:BCCF: EE        .byte $EE, $E5, $00, $E4, $F5, $E8, $EB, $DB, $00, $C6, $F1, $E0, $ED, $F3   ; 

- D 1 - I - 0x02BCED 0A:BCDD: FE        .byte $FE   ; continue
; "will start to"
- D 1 - I - 0x02BCEE 0A:BCDE: F6        .byte $F6, $E8, $EB, $EB, $00, $F2, $F3, $E0, $F1, $F3, $00, $F3, $EE   ; 

- D 1 - I - 0x02BCFB 0A:BCEB: FF        .byte $FF   ; end token



_off003_0x02BCFC_53:
; "rebuild the"
- D 1 - I - 0x02BCFC 0A:BCEC: F1        .byte $F1, $E4, $E1, $F4, $E8, $EB, $E3, $00, $F3, $E7, $E4   ; 

- D 1 - I - 0x02BD07 0A:BCF7: FE        .byte $FE   ; continue
; "destroyed areas"
- D 1 - I - 0x02BD08 0A:BCF8: E3        .byte $E3, $E4, $F2, $F3, $F1, $EE, $F8, $E4, $E3, $00, $E0, $F1, $E4, $E0, $F2   ; 

- D 1 - I - 0x02BD17 0A:BD07: FE        .byte $FE   ; continue
; "of the city."
- D 1 - I - 0x02BD18 0A:BD08: EE        .byte $EE, $E5, $00, $F3, $E7, $E4, $00, $E2, $E8, $F3, $F8, $DB   ; 

- D 1 - I - 0x02BD24 0A:BD14: FE        .byte $FE   ; continue

- D 1 - I - 0x02BD25 0A:BD15: 00        .byte $00   ; 

- D 1 - I - 0x02BD26 0A:BD16: FF        .byte $FF   ; end token



_off003_0x02BD27_55:
; "The battle was"
- D 1 - I - 0x02BD27 0A:BD17: D3        .byte $D3, $E7, $E4, $00, $E1, $E0, $F3, $F3, $EB, $E4, $00, $F6, $E0, $F2   ; 

- D 1 - I - 0x02BD35 0A:BD25: FE        .byte $FE   ; continue
; "won by Trevor and"
- D 1 - I - 0x02BD36 0A:BD26: F6        .byte $F6, $EE, $ED, $00, $E1, $F8, $00, $D3, $F1, $E4, $F5, $EE, $F1, $00, $E0, $ED   ; 
- D 1 - I - 0x02BD46 0A:BD36: E3        .byte $E3   ; 

- D 1 - I - 0x02BD47 0A:BD37: FF        .byte $FF   ; end token



_off003_0x02BD48_56:
; "Alucard but"
- D 1 - I - 0x02BD48 0A:BD38: C0        .byte $C0, $EB, $F4, $E2, $E0, $F1, $E3, $00, $E1, $F4, $F3   ; 

- D 1 - I - 0x02BD53 0A:BD43: FE        .byte $FE   ; continue
; "Alucard feels"
- D 1 - I - 0x02BD54 0A:BD44: C0        .byte $C0, $EB, $F4, $E2, $E0, $F1, $E3, $00, $E5, $E4, $E4, $EB, $F2   ; 

- D 1 - I - 0x02BD61 0A:BD51: FF        .byte $FF   ; end token



_off003_0x02BD62_57:
; "quilty because"
- D 1 - I - 0x02BD62 0A:BD52: F0        .byte $F0, $F4, $E8, $EB, $F3, $F8, $00, $E1, $E4, $E2, $E0, $F4, $F2, $E4   ; 

- D 1 - I - 0x02BD70 0A:BD60: FE        .byte $FE   ; continue
; "he killed his"
- D 1 - I - 0x02BD71 0A:BD61: E7        .byte $E7, $E4, $00, $EA, $E8, $EB, $EB, $E4, $E3, $00, $E7, $E8, $F2   ; 

- D 1 - I - 0x02BD7E 0A:BD6E: FF        .byte $FF   ; end token



_off003_0x02BD7F_58:
; "real father."
- D 1 - I - 0x02BD7F 0A:BD6F: F1        .byte $F1, $E4, $E0, $EB, $00, $E5, $E0, $F3, $E7, $E4, $F1, $DB   ; 

- D 1 - I - 0x02BD8B 0A:BD7B: FE        .byte $FE   ; continue

- D 1 - I - 0x02BD8C 0A:BD7C: 00        .byte $00   ; 

- D 1 - I - 0x02BD8D 0A:BD7D: FE        .byte $FE   ; continue
; "Trevor realizes"
- D 1 - I - 0x02BD8E 0A:BD7E: D3        .byte $D3, $F1, $E4, $F5, $EE, $F1, $00, $F1, $E4, $E0, $EB, $E8, $F9, $E4, $F2   ; 

- D 1 - I - 0x02BD9D 0A:BD8D: FF        .byte $FF   ; end token



_off003_0x02BD9E_59:
; "this as he"
- D 1 - I - 0x02BD9E 0A:BD8E: F3        .byte $F3, $E7, $E8, $F2, $00, $E0, $F2, $00, $E7, $E4   ; 

- D 1 - I - 0x02BDA8 0A:BD98: FE        .byte $FE   ; continue
; "stands there"
- D 1 - I - 0x02BDA9 0A:BD99: F2        .byte $F2, $F3, $E0, $ED, $E3, $F2, $00, $F3, $E7, $E4, $F1, $E4   ; 

- D 1 - I - 0x02BDB5 0A:BDA5: FF        .byte $FF   ; end token



_off003_0x02BDB6_5A:
; "thinking about"
- D 1 - I - 0x02BDB6 0A:BDA6: F3        .byte $F3, $E7, $E8, $ED, $EA, $E8, $ED, $E6, $00, $E0, $E1, $EE, $F4, $F3   ; 

- D 1 - I - 0x02BDC4 0A:BDB4: FE        .byte $FE   ; continue
; "Alucard."
- D 1 - I - 0x02BDC5 0A:BDB5: C0        .byte $C0, $EB, $F4, $E2, $E0, $F1, $E3, $DB   ; 

- D 1 - I - 0x02BDCD 0A:BDBD: FE        .byte $FE   ; continue

- D 1 - I - 0x02BDCE 0A:BDBE: 00        .byte $00   ; 

- D 1 - I - 0x02BDCF 0A:BDBF: FF        .byte $FF   ; end token



_off003_0x02BDD0_54:
- D 1 - I - 0x02BDD0 0A:BDC0: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x02BDE0 0A:BDD0: 00        .byte $00, $00   ; 

- D 1 - I - 0x02BDE2 0A:BDD2: FE        .byte $FE   ; continue

- D 1 - I - 0x02BDE3 0A:BDD3: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x02BDF3 0A:BDE3: 00        .byte $00, $00   ; 

- D 1 - I - 0x02BDF5 0A:BDE5: FE        .byte $FE   ; continue

- D 1 - I - 0x02BDF6 0A:BDE6: 00        .byte $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00   ; 
- D 1 - I - 0x02BE06 0A:BDF6: 00        .byte $00, $00   ; 

- D 1 - I - 0x02BE08 0A:BDF8: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x02BE09 0A:BDF9: 60        RTS



_off005_0x02BE0A_20:
- D 1 - I - 0x02BE0A 0A:BDFA: 00 20     .word $2000 ; ppu address

- D 1 - I - 0x02BE0C 0A:BDFC: 7E        .byte $7E   ; write 7E times tile 7D
- D 1 - I - 0x02BE0D 0A:BDFD: 7D        .byte $7D   ; 

- D 1 - I - 0x02BE0E 0A:BDFE: 82        .byte $02 + $80   ; write these tiles 02 length
- D 1 - I - 0x02BE0F 0A:BDFF: 7D        .byte $7D, $7D   ; 

- D 1 - I - 0x02BE11 0A:BE01: 10        .byte $10   ; 
- D 1 - I - 0x02BE12 0A:BE02: 7F        .byte $7F   ; 

- D 1 - I - 0x02BE13 0A:BE03: 84        .byte $04 + $80   ; 
- D 1 - I - 0x02BE14 0A:BE04: 64        .byte $64, $66, $67, $67   ; 

- D 1 - I - 0x02BE18 0A:BE08: 06        .byte $06   ; 
- D 1 - I - 0x02BE19 0A:BE09: 7E        .byte $7E   ; 

- D 1 - I - 0x02BE1A 0A:BE0A: 83        .byte $03 + $80   ; 
- D 1 - I - 0x02BE1B 0A:BE0B: 67        .byte $67, $66, $66   ; 

- D 1 - I - 0x02BE1E 0A:BE0E: 05        .byte $05   ; 
- D 1 - I - 0x02BE1F 0A:BE0F: 7F        .byte $7F   ; 

- D 1 - I - 0x02BE20 0A:BE10: 03        .byte $03   ; 
- D 1 - I - 0x02BE21 0A:BE11: 65        .byte $65   ; 

- D 1 - I - 0x02BE22 0A:BE12: 0A        .byte $0A   ; 
- D 1 - I - 0x02BE23 0A:BE13: 7F        .byte $7F   ; 

- D 1 - I - 0x02BE24 0A:BE14: 92        .byte $12 + $80   ; 
- D 1 - I - 0x02BE25 0A:BE15: 65        .byte $65, $67, $7E, $67, $7E, $7E, $77, $74, $75, $77, $77, $76, $7E, $7E, $67, $67   ; 
- D 1 - I - 0x02BE35 0A:BE25: 65        .byte $65, $64   ; 

- D 1 - I - 0x02BE37 0A:BE27: 04        .byte $04   ; 
- D 1 - I - 0x02BE38 0A:BE28: 67        .byte $67   ; 

- D 1 - I - 0x02BE39 0A:BE29: 9B        .byte $1B + $80   ; 
- D 1 - I - 0x02BE3A 0A:BE2A: 66        .byte $66, $65, $64, $65, $67, $66, $7F, $7F, $7F, $65, $65, $67, $7E, $7E, $7E, $74   ; 
- D 1 - I - 0x02BE4A 0A:BE3A: 00        .byte $00, $77, $00, $00, $00, $76, $7E, $67, $7E, $7E, $67   ; 

- D 1 - I - 0x02BE55 0A:BE45: 06        .byte $06   ; 
- D 1 - I - 0x02BE56 0A:BE46: 7E        .byte $7E   ; 

- D 1 - I - 0x02BE57 0A:BE47: 89        .byte $09 + $80   ; 
- D 1 - I - 0x02BE58 0A:BE48: 67        .byte $67, $7E, $7E, $7E, $67, $66, $65, $67   ; 
- D 1 - I - 0x02BE60 0A:BE50: 67        .byte $67   ; 

- D 1 - I - 0x02BE61 0A:BE51: 04        .byte $04   ; 
- D 1 - I - 0x02BE62 0A:BE52: 7E        .byte $7E   ; 

- D 1 - I - 0x02BE63 0A:BE53: 81        .byte $01 + $80   ; 
- D 1 - I - 0x02BE64 0A:BE54: 77        .byte $77   ; 

- D 1 - I - 0x02BE65 0A:BE55: 07        .byte $07   ; 
- D 1 - I - 0x02BE66 0A:BE56: 00        .byte $00   ; 

- D 1 - I - 0x02BE67 0A:BE57: 93        .byte $13 + $80   ; 
- D 1 - I - 0x02BE68 0A:BE58: 76        .byte $76, $75, $75, $7E, $7E, $7E, $74, $75, $75, $76, $7E, $77, $76, $7E, $75, $7E   ; 
- D 1 - I - 0x02BE78 0A:BE68: 7E        .byte $7E, $67, $67   ; 

- D 1 - I - 0x02BE7B 0A:BE6B: 04        .byte $04   ; 
- D 1 - I - 0x02BE7C 0A:BE6C: 7E        .byte $7E   ; 

- D 1 - I - 0x02BE7D 0A:BE6D: 82        .byte $02 + $80   ; 
- D 1 - I - 0x02BE7E 0A:BE6E: 75        .byte $75, $77   ; 

- D 1 - I - 0x02BE80 0A:BE70: 07        .byte $07   ; 
- D 1 - I - 0x02BE81 0A:BE71: 00        .byte $00   ; 

- D 1 - I - 0x02BE82 0A:BE72: 03        .byte $03   ; 
- D 1 - I - 0x02BE83 0A:BE73: 77        .byte $77   ; 

- D 1 - I - 0x02BE84 0A:BE74: 86        .byte $06 + $80   ; 
- D 1 - I - 0x02BE85 0A:BE75: 76        .byte $76, $75, $77, $77, $77, $00   ; 

- D 1 - I - 0x02BE8B 0A:BE7B: 06        .byte $06   ; 
- D 1 - I - 0x02BE8C 0A:BE7C: 77        .byte $77   ; 

- D 1 - I - 0x02BE8D 0A:BE7D: 88        .byte $08 + $80   ; 
- D 1 - I - 0x02BE8E 0A:BE7E: 75        .byte $75, $7E, $7E, $74, $76, $7E, $7E, $74   ; 

- D 1 - I - 0x02BE96 0A:BE86: 0C        .byte $0C   ; 
- D 1 - I - 0x02BE97 0A:BE87: 00        .byte $00   ; 

- D 1 - I - 0x02BE98 0A:BE88: 84        .byte $04 + $80   ; 
- D 1 - I - 0x02BE99 0A:BE89: 77        .byte $77, $77, $41, $42   ; 

- D 1 - I - 0x02BE9D 0A:BE8D: 08        .byte $08   ; 
- D 1 - I - 0x02BE9E 0A:BE8E: 00        .byte $00   ; 

- D 1 - I - 0x02BE9F 0A:BE8F: 87        .byte $07 + $80   ; 
- D 1 - I - 0x02BEA0 0A:BE90: 77        .byte $77, $76, $75, $75, $77, $75, $75   ; 

- D 1 - I - 0x02BEA7 0A:BE97: 0F        .byte $0F   ; 
- D 1 - I - 0x02BEA8 0A:BE98: 00        .byte $00   ; 

- D 1 - I - 0x02BEA9 0A:BE99: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x02BEAA 0A:BE9A: 51        .byte $51, $52, $42, $56, $57, $41, $42, $00, $41, $42, $00, $77   ; 

- D 1 - I - 0x02BEB6 0A:BEA6: 08        .byte $08   ; 
- D 1 - I - 0x02BEB7 0A:BEA7: 00        .byte $00   ; 

- D 1 - I - 0x02BEB8 0A:BEA8: 81        .byte $01 + $80   ; 
- D 1 - I - 0x02BEB9 0A:BEA9: 40        .byte $40   ; 

- D 1 - I - 0x02BEBA 0A:BEAA: 09        .byte $09   ; 
- D 1 - I - 0x02BEBB 0A:BEAB: 00        .byte $00   ; 

- D 1 - I - 0x02BEBC 0A:BEAC: D8        .byte $58 + $80   ; 
- D 1 - I - 0x02BEBD 0A:BEAD: 41        .byte $41, $42, $60, $62, $63, $54, $46, $51, $52, $42, $51, $52, $42, $00, $41, $42   ; 
- D 1 - I - 0x02BECD 0A:BEBD: 00        .byte $00, $00, $00, $41, $42, $00, $43, $78, $4F, $00, $7A, $5F, $00, $56, $57, $50   ; 
- D 1 - I - 0x02BEDD 0A:BECD: 51        .byte $51, $52, $7D, $46, $71, $46, $51, $52, $52, $7D, $47, $73, $7D, $53, $51, $52   ; 
- D 1 - I - 0x02BEED 0A:BEDD: 57        .byte $57, $00, $41, $51, $52, $42, $43, $7D, $7D, $4F, $79, $7D, $4F, $7D, $63, $44   ; 
- D 1 - I - 0x02BEFD 0A:BEED: 45        .byte $45, $7D, $55, $52, $63, $51, $60, $45, $62, $7D, $7D, $7D, $55, $44, $45, $72   ; 
- D 1 - I - 0x02BF0D 0A:BEFD: 73        .byte $73, $53, $51, $54, $7D, $4C, $4D, $4E   ; 

- D 1 - I - 0x02BF15 0A:BF05: 0B        .byte $0B   ; 
- D 1 - I - 0x02BF16 0A:BF06: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF17 0A:BF07: 95        .byte $15 + $80   ; 
- D 1 - I - 0x02BF18 0A:BF08: 55        .byte $55, $44, $60, $7D, $61, $7D, $7D, $7D, $63, $44, $62, $7D, $62, $63, $60, $62   ; 
- D 1 - I - 0x02BF28 0A:BF18: 72        .byte $72, $7D, $5C, $7D, $5E   ; 

- D 1 - I - 0x02BF2D 0A:BF1D: 13        .byte $13   ; 
- D 1 - I - 0x02BF2E 0A:BF1E: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF2F 0A:BF1F: 83        .byte $03 + $80   ; 
- D 1 - I - 0x02BF30 0A:BF20: 60        .byte $60, $61, $62   ; 

- D 1 - I - 0x02BF33 0A:BF23: 06        .byte $06   ; 
- D 1 - I - 0x02BF34 0A:BF24: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF35 0A:BF25: 85        .byte $05 + $80   ; 
- D 1 - I - 0x02BF36 0A:BF26: 6B        .byte $6B, $6C, $6B, $5D, $4E   ; 

- D 1 - I - 0x02BF3B 0A:BF2B: 1A        .byte $1A   ; 
- D 1 - I - 0x02BF3C 0A:BF2C: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF3D 0A:BF2D: 86        .byte $06 + $80   ; 
- D 1 - I - 0x02BF3E 0A:BF2E: 4E        .byte $4E, $7B, $7C, $7B, $7D, $5E   ; 

- D 1 - I - 0x02BF44 0A:BF34: 1A        .byte $1A   ; 
- D 1 - I - 0x02BF45 0A:BF35: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF46 0A:BF36: 84        .byte $04 + $80   ; 
- D 1 - I - 0x02BF47 0A:BF37: 5E        .byte $5E, $6C, $6E, $6F   ; 

- D 1 - I - 0x02BF4B 0A:BF3B: 0D        .byte $0D   ; 
- D 1 - I - 0x02BF4C 0A:BF3C: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF4D 0A:BF3D: 81        .byte $01 + $80   ; 
- D 1 - I - 0x02BF4E 0A:BF3E: 5B        .byte $5B   ; 

- D 1 - I - 0x02BF4F 0A:BF3F: 06        .byte $06   ; 
- D 1 - I - 0x02BF50 0A:BF40: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF51 0A:BF41: 85        .byte $05 + $80   ; 
- D 1 - I - 0x02BF52 0A:BF42: 5B        .byte $5B, $7D, $7D, $7D, $5B   ; 

- D 1 - I - 0x02BF57 0A:BF47: 04        .byte $04   ; 
- D 1 - I - 0x02BF58 0A:BF48: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF59 0A:BF49: 82        .byte $02 + $80   ; 
- D 1 - I - 0x02BF5A 0A:BF4A: 6F        .byte $6F, $5A   ; 

- D 1 - I - 0x02BF5C 0A:BF4C: 09        .byte $09   ; 
- D 1 - I - 0x02BF5D 0A:BF4D: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF5E 0A:BF4E: 03        .byte $03   ; 
- D 1 - I - 0x02BF5F 0A:BF4F: 68        .byte $68   ; 

- D 1 - I - 0x02BF60 0A:BF50: 0C        .byte $0C   ; 
- D 1 - I - 0x02BF61 0A:BF51: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF62 0A:BF52: 84        .byte $04 + $80   ; 
- D 1 - I - 0x02BF63 0A:BF53: 4A        .byte $4A, $48, $48, $68   ; 

- D 1 - I - 0x02BF67 0A:BF57: 09        .byte $09   ; 
- D 1 - I - 0x02BF68 0A:BF58: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF69 0A:BF59: 87        .byte $07 + $80   ; 
- D 1 - I - 0x02BF6A 0A:BF5A: 5B        .byte $5B, $7D, $7D, $68, $48, $68, $68   ; 

- D 1 - I - 0x02BF71 0A:BF61: 09        .byte $09   ; 
- D 1 - I - 0x02BF72 0A:BF62: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF73 0A:BF63: 88        .byte $08 + $80   ; 
- D 1 - I - 0x02BF74 0A:BF64: 49        .byte $49, $48, $4A, $7E, $58, $58, $7E, $49   ; 

- D 1 - I - 0x02BF7C 0A:BF6C: 0C        .byte $0C   ; 
- D 1 - I - 0x02BF7D 0A:BF6D: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF7E 0A:BF6E: 83        .byte $03 + $80   ; 
- D 1 - I - 0x02BF7F 0A:BF6F: 68        .byte $68, $48, $4A   ; 

- D 1 - I - 0x02BF82 0A:BF72: 09        .byte $09   ; 
- D 1 - I - 0x02BF83 0A:BF73: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF84 0A:BF74: 04        .byte $04   ; 
- D 1 - I - 0x02BF85 0A:BF75: 7E        .byte $7E   ; 

- D 1 - I - 0x02BF86 0A:BF76: 04        .byte $04   ; 
- D 1 - I - 0x02BF87 0A:BF77: 58        .byte $58   ; 

- D 1 - I - 0x02BF88 0A:BF78: 81        .byte $01 + $80   ; 
- D 1 - I - 0x02BF89 0A:BF79: 48        .byte $48   ; 

- D 1 - I - 0x02BF8A 0A:BF7A: 0B        .byte $0B   ; 
- D 1 - I - 0x02BF8B 0A:BF7B: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF8C 0A:BF7C: 83        .byte $03 + $80   ; 
- D 1 - I - 0x02BF8D 0A:BF7D: 68        .byte $68, $4A, $69   ; 

- D 1 - I - 0x02BF90 0A:BF80: 09        .byte $09   ; 
- D 1 - I - 0x02BF91 0A:BF81: 7D        .byte $7D   ; 

- D 1 - I - 0x02BF92 0A:BF82: 8C        .byte $0C + $80   ; 
- D 1 - I - 0x02BF93 0A:BF83: 58        .byte $58, $7E, $7E, $6A, $7E, $58, $7E, $58, $58, $48, $48, $49   ; 

- D 1 - I - 0x02BF9F 0A:BF8F: 04        .byte $04   ; 
- D 1 - I - 0x02BFA0 0A:BF90: 7D        .byte $7D   ; 

- D 1 - I - 0x02BFA1 0A:BF91: 87        .byte $07 + $80   ; 
- D 1 - I - 0x02BFA2 0A:BF92: 68        .byte $68, $5B, $5B, $48, $48, $48, $4A   ; 

- D 1 - I - 0x02BFA9 0A:BF99: 08        .byte $08   ; 
- D 1 - I - 0x02BFAA 0A:BF9A: 7D        .byte $7D   ; 

- D 1 - I - 0x02BFAB 0A:BF9B: 98        .byte $18 + $80   ; 
- D 1 - I - 0x02BFAC 0A:BF9C: 4B        .byte $4B, $4B, $58, $4B, $4B, $69, $69, $4B, $4B, $7E, $4B, $6A, $7E, $49, $48, $68   ; 
- D 1 - I - 0x02BFBC 0A:BFAC: 7D        .byte $7D, $4A, $48, $4A, $58, $69, $6A, $7E   ; 

- D 1 - I - 0x02BFC4 0A:BFB4: 08        .byte $08   ; 
- D 1 - I - 0x02BFC5 0A:BFB5: 7D        .byte $7D   ; 

- D 1 - I - 0x02BFC6 0A:BFB6: 98        .byte $18 + $80   ; 
- D 1 - I - 0x02BFC7 0A:BFB7: 4B        .byte $4B, $58, $7E, $58, $7E, $58, $7E, $7E, $7E, $6A, $4B, $7E, $6A, $7E, $7E, $49   ; 
- D 1 - I - 0x02BFD7 0A:BFC7: 4A        .byte $4A, $49, $4A, $7E, $4B, $7E, $4B, $58   ; 

- D 1 - I - 0x02BFDF 0A:BFCF: 7E        .byte $7E   ; 
- D 1 - I - 0x02BFE0 0A:BFD0: 7D        .byte $7D   ; 

- D 1 - I - 0x02BFE1 0A:BFD1: 82        .byte $02 + $80   ; 
- D 1 - I - 0x02BFE2 0A:BFD2: 7D        .byte $7D, $7D   ; 

- D 1 - I - 0x02BFE4 0A:BFD4: 08        .byte $08   ; 
- D 1 - I - 0x02BFE5 0A:BFD5: AA        .byte $AA   ; 

- D 1 - I - 0x02BFE6 0A:BFD6: 08        .byte $08   ; 
- D 1 - I - 0x02BFE7 0A:BFD7: 00        .byte $00   ; 

- D 1 - I - 0x02BFE8 0A:BFD8: 96        .byte $16 + $80   ; 
- D 1 - I - 0x02BFE9 0A:BFD9: E0        .byte $E0, $F0, $20, $00, $00, $EF, $F3, $E0, $FF, $FF, $FE, $FF, $7F, $9A, $AA, $AF   ; 
- D 1 - I - 0x02BFF9 0A:BFE9: AA        .byte $AA, $AA, $AF, $AA, $55, $95   ; 

- D 1 - I - 0x02BFFF 0A:BFEF: 12        .byte $12   ; 
- D 1 - I - 0x02C000 0A:BFF0: AA        .byte $AA   ; 

- D 1 - I - 0x02C001 0A:BFF1: 08        .byte $08   ; 
- D 1 - I - 0x02C002 0A:BFF2: 0A        .byte $0A   ; 

- D 1 - I - 0x02C003 0A:BFF3: FF        .byte $FF   ; end token


; bzk garbage
- - - - - - 0x02C004 0A:BFF4: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 94: 0x%04X [%d]", ($C000 - *), ($C000 - *))



