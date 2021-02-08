.segment "BANK_05"
.include "bank_ram.inc"
.include "bank_val.inc"
; 0x014010-0x01800F



.export loc_0x014010
.export sub_0x0142B8
.export sub_0x01442E
.export sub_0x014531
.export ofs_0x014610_08
.export ofs_0x01462A_0D
.export ofs_0x014638_10
.export ofs_0x01478B_04
.export sub_0x0147D6
.export sub_0x014939
.export sub_0x014A23
.export ofs_0x014A3F_11_death
.export sub_0x014ABD
.export loc_0x014B04
.export loc_0x014B9B
.export sub_0x014BB8
.export sub_0x014BCC
.export loc_0x014C8D
.export sub_0x014EE7
.export sub_0x014F8B
.export sub_0x015034
.export ofs_0x015090_0B
.export ofs_0x0150A7_0C
.export ofs_0x01511A_09
.export sub_0x01518C
.export sub_0x015338
.export _off006_0x015BE8_00
.export _off006_0x015C1D_01
.export _off006_0x015C4E_02
.export _off006_0x015C90_03
.export _off006_0x015CD4_04
.export _off006_0x015D06_05
.export _off006_0x015D42_06
.export _off006_0x015D7D_07
.export _off006_0x015DB8_08
.export _off006_0x015DF6_09
.export _off006_0x015E37_0A
.export _off006_0x015E7C_0B
.export _off006_0x015EB9_0C
.export _off006_0x015EEF_0D
.export _off006_0x015F31_0E
.export _off006_0x015F65_0F
.export sub_0x016406
.export sub_0x016603
.export ofs_0x016843_12_triforce_collected
.export loc_0x016868
.export sub_0x0168EE
.export sub_0x016BD4
.export sub_0x016C17
.export ofs_0x017010_02
.export ofs_0x017019_03
.export ofs_0x017020_04
.export ofs_0x017026_05
.export ofs_0x01702D_06
.export ofs_0x01703A_07
.export ofs_0x017046_08
.export sub_0x01706E
.export ofs_0x01708A_06
.export sub_0x0170C6
.export ofs_0x01710C_0A
.export sub_0x0171F6
.export sub_0x0172AA
.export sub_0x017404
.export sub_0x0174BC
.export sub_0x0174F8
.export ofs_0x017527_01
.export ofs_0x017527_08
.export ofs_0x017532_00
.export ofs_0x017532_02
.export ofs_0x017532_03
.export ofs_0x017532_04
.export ofs_0x017532_05
.export ofs_0x017532_06
.export ofs_0x017532_07
.export sub_0x017569
.export sub_0x0175FB
.export sub_0x0177D8
.export sub_0x01782C
.export loc_0x01782C
.export sub_0x01784A



loc_0x014010:
C D 0 - - - 0x014010 05:8000: 20 06 80  JSR sub_8006
C - - - - - 0x014013 05:8003: 4C 89 ED  JMP loc_0x01ED99



sub_8006:
C - - - - - 0x014016 05:8006: A5 E1     LDA ram_00E1
C - - - - - 0x014018 05:8008: A4 10     LDY ram_0010
C - - - - - 0x01401A 05:800A: F0 15     BEQ bra_8021
C - - - - - 0x01401C 05:800C: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- - - - - - 0x01401F 05:800F: 56 80     .word ofs_8056_00_RTS
- D 0 - I - 0x014021 05:8011: 38 80     .word ofs_8038_01
- D 0 - I - 0x014023 05:8013: 57 80     .word ofs_8057_02
- D 0 - I - 0x014025 05:8015: 5E 80     .word ofs_805E_03
- D 0 - I - 0x014027 05:8017: 62 80     .word ofs_8062_04
- D 0 - I - 0x014029 05:8019: 66 80     .word ofs_8066_05
- D 0 - I - 0x01402B 05:801B: 76 80     .word ofs_8076_06
- D 0 - I - 0x01402D 05:801D: D4 80     .word ofs_80D4_07
- D 0 - I - 0x01402F 05:801F: 0F 81     .word ofs_810F_08

bra_8021:
C - - - - - 0x014031 05:8021: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- - - - - - 0x014034 05:8024: 56 80     .word ofs_8056_00_RTS
- D 0 - I - 0x014036 05:8026: 9A 81     .word ofs_819A_01
- D 0 - I - 0x014038 05:8028: 38 80     .word ofs_8038_02
- D 0 - I - 0x01403A 05:802A: 57 80     .word ofs_8057_03
- D 0 - I - 0x01403C 05:802C: 5E 80     .word ofs_805E_04
- D 0 - I - 0x01403E 05:802E: 62 80     .word ofs_8062_05
- D 0 - I - 0x014040 05:8030: 6C 80     .word ofs_806C_06
- D 0 - I - 0x014042 05:8032: 70 80     .word ofs_8070_07
- D 0 - I - 0x014044 05:8034: D4 80     .word ofs_80D4_08
- D 0 - I - 0x014046 05:8036: 0F 81     .word ofs_810F_09



ofs_8038_01:
ofs_8038_02:
C - - J - - 0x014048 05:8038: 20 F7 E5  JSR sub_0x01E607_hide_all_sprites
C - - - - - 0x01404B 05:803B: 20 DE 71  JSR sub_bat_71DE
C - - - - - 0x01404E 05:803E: 20 79 E6  JSR sub_0x01E689
C - - - - - 0x014051 05:8041: A9 EF     LDA #$EF
C - - - - - 0x014053 05:8043: 85 FC     STA ram_00FC
C - - - - - 0x014055 05:8045: 85 5C     STA ram_005C
C - - - - - 0x014057 05:8047: A9 01     LDA #$01
C - - - - - 0x014059 05:8049: 20 30 81  JSR sub_8130
C - - - - - 0x01405C 05:804C: E6 E1     INC ram_00E1
C - - - - - 0x01405E 05:804E: A9 2B     LDA #$2B
C - - - - - 0x014060 05:8050: 85 5E     STA ram_005E
C - - - - - 0x014062 05:8052: A9 7F     LDA #$7F
C - - - - - 0x014064 05:8054: 85 5D     STA ram_005D
ofs_8056_00_RTS:
C - - - - - 0x014066 05:8056: 60        RTS



ofs_8057_02:
ofs_8057_03:
C - - J - - 0x014067 05:8057: A9 48     LDA #$48
bra_8059:
C - - - - - 0x014069 05:8059: 85 14     STA ram_0014
loc_805B:
C D 0 - - - 0x01406B 05:805B: E6 E1     INC ram_00E1
C - - - - - 0x01406D 05:805D: 60        RTS



ofs_805E_03:
ofs_805E_04:
C - - J - - 0x01406E 05:805E: A9 4A     LDA #$4A
C - - - - - 0x014070 05:8060: D0 F7     BNE bra_8059

ofs_8062_04:
ofs_8062_05:
C - - J - - 0x014072 05:8062: A9 4C     LDA #$4C
C - - - - - 0x014074 05:8064: D0 F3     BNE bra_8059

ofs_8066_05:
C - - J - - 0x014076 05:8066: 20 3A B2  JSR sub_B23A
C - - - - - 0x014079 05:8069: 4C 5B 80  JMP loc_805B



ofs_806C_06:
C - - J - - 0x01407C 05:806C: A9 5C     LDA #$5C
C - - - - - 0x01407E 05:806E: D0 E9     BNE bra_8059



ofs_8070_07:
C - - J - - 0x014080 05:8070: 20 82 B2  JSR sub_B282
C - - - - - 0x014083 05:8073: 4C 79 80  JMP loc_8079



ofs_8076_06:
C - - J - - 0x014086 05:8076: 20 3A B2  JSR sub_B23A
loc_8079:
C D 0 - - - 0x014089 05:8079: A9 03     LDA #$03
C - - - - - 0x01408B 05:807B: 20 30 81  JSR sub_8130
C - - - - - 0x01408E 05:807E: A5 FC     LDA ram_00FC
C - - - - - 0x014090 05:8080: 38        SEC
C - - - - - 0x014091 05:8081: E9 03     SBC #$03
C - - - - - 0x014093 05:8083: 85 FC     STA ram_00FC
C - - - - - 0x014095 05:8085: C9 41     CMP #$41
C - - - - - 0x014097 05:8087: D0 4A     BNE bra_80D3_RTS
C - - - - - 0x014099 05:8089: E6 E1     INC ram_00E1
C - - - - - 0x01409B 05:808B: A5 10     LDA ram_0010
C - - - - - 0x01409D 05:808D: F0 44     BEQ bra_80D3_RTS
C - - - - - 0x01409F 05:808F: A5 12     LDA ram_game_mode_main
C - - - - - 0x0140A1 05:8091: C9 09     CMP #con_GM_09
C - - - - - 0x0140A3 05:8093: F0 3E     BEQ bra_80D3_RTS
C - - - - - 0x0140A5 05:8095: A5 EB     LDA ram_map_location
C - - - - - 0x0140A7 05:8097: 29 0F     AND #$0F
C - - - - - 0x0140A9 05:8099: 0A        ASL
C - - - - - 0x0140AA 05:809A: 0A        ASL
C - - - - - 0x0140AB 05:809B: 0A        ASL
C - - - - - 0x0140AC 05:809C: 85 00     STA ram_0000
C - - - - - 0x0140AE 05:809E: AD AB 6B  LDA ram_6BAB
C - - - - - 0x0140B1 05:80A1: C9 08     CMP #$08
C - - - - - 0x0140B3 05:80A3: 90 0E     BCC bra_80B3
C - - - - - 0x0140B5 05:80A5: A9 10     LDA #$10
C - - - - - 0x0140B7 05:80A7: ED AB 6B  SBC ram_6BAB
C - - - - - 0x0140BA 05:80AA: 0A        ASL
C - - - - - 0x0140BB 05:80AB: 0A        ASL
C - - - - - 0x0140BC 05:80AC: 0A        ASL
C - - - - - 0x0140BD 05:80AD: 20 21 70  JSR sub_bat_7021
C - - - - - 0x0140C0 05:80B0: 4C B6 80  JMP loc_80B6
bra_80B3:
C - - - - - 0x0140C3 05:80B3: 0A        ASL
C - - - - - 0x0140C4 05:80B4: 0A        ASL
C - - - - - 0x0140C5 05:80B5: 0A        ASL
loc_80B6:
C D 0 - - - 0x0140C6 05:80B6: 18        CLC
C - - - - - 0x0140C7 05:80B7: 65 00     ADC ram_0000
C - - - - - 0x0140C9 05:80B9: 18        CLC
C - - - - - 0x0140CA 05:80BA: 69 62     ADC #$62
C - - - - - 0x0140CC 05:80BC: 8D 53 02  STA ram_spr_X + $50
C - - - - - 0x0140CF 05:80BF: A5 EB     LDA ram_map_location
C - - - - - 0x0140D1 05:80C1: 29 F0     AND #$F0
C - - - - - 0x0140D3 05:80C3: 4A        LSR
C - - - - - 0x0140D4 05:80C4: 69 69     ADC #$69
C - - - - - 0x0140D6 05:80C6: 8D 50 02  STA ram_spr_Y + $50
C - - - - - 0x0140D9 05:80C9: A9 3E     LDA #$3E
C - - - - - 0x0140DB 05:80CB: 8D 51 02  STA ram_spr_T + $50
C - - - - - 0x0140DE 05:80CE: A9 00     LDA #$00
C - - - - - 0x0140E0 05:80D0: 8D 52 02  STA ram_spr_A + $50
bra_80D3_RTS:
C - - - - - 0x0140E3 05:80D3: 60        RTS



ofs_80D4_07:
ofs_80D4_08:
; triggers when inventory is loaded
C - - J - - 0x0140E4 05:80D4: 20 A7 B6  JSR sub_B6A7
C - - - - - 0x0140E7 05:80D7: 20 26 B7  JSR sub_B726
C - - - - - 0x0140EA 05:80DA: A5 FB     LDA ram_btn_hold + 1
C - - - - - 0x0140EC 05:80DC: 29 88     AND #con_btn_A + con_btn_Up
C - - - - - 0x0140EE 05:80DE: C9 88     CMP #con_btn_A + con_btn_Up
C - - - - - 0x0140F0 05:80E0: D0 11     BNE bra_80F3    ; don't show save menu if not held
C - - - - - 0x0140F2 05:80E2: 20 A3 EB  JSR sub_0x01EBB3
C - - - - - 0x0140F5 05:80E5: 85 E1     STA ram_00E1
C - - - - - 0x0140F7 05:80E7: A9 08     LDA #con_GM_08
C - - - - - 0x0140F9 05:80E9: 85 12     STA ram_game_mode_main
C - - - - - 0x0140FB 05:80EB: A9 00     LDA #$00
C - - - - - 0x0140FD 05:80ED: 8D 19 06  STA ram_0619
C - - - - - 0x014100 05:80F0: 4C 8E 8A  JMP loc_8A8E
bra_80F3:
C - - - - - 0x014103 05:80F3: A5 F8     LDA ram_btn_press
C - - - - - 0x014105 05:80F5: 29 10     AND #con_btn_Start
C - - - - - 0x014107 05:80F7: F0 58     BEQ bra_8151_RTS
C - - - - - 0x014109 05:80F9: AD 54 02  LDA ram_spr_Y + $54
C - - - - - 0x01410C 05:80FC: 48        PHA
C - - - - - 0x01410D 05:80FD: AD 58 02  LDA ram_spr_Y + $58
C - - - - - 0x014110 05:8100: 48        PHA
C - - - - - 0x014111 05:8101: 20 F7 E5  JSR sub_0x01E607_hide_all_sprites
C - - - - - 0x014114 05:8104: 68        PLA
C - - - - - 0x014115 05:8105: 8D 58 02  STA ram_spr_Y + $58
C - - - - - 0x014118 05:8108: 68        PLA
C - - - - - 0x014119 05:8109: 8D 54 02  STA ram_spr_Y + $54
C - - - - - 0x01411C 05:810C: E6 E1     INC ram_00E1
C - - - - - 0x01411E 05:810E: 60        RTS



ofs_810F_08:
ofs_810F_09:
C - - J - - 0x01411F 05:810F: A9 FD     LDA #$FD
C - - - - - 0x014121 05:8111: 20 30 81  JSR sub_8130
C - - - - - 0x014124 05:8114: A5 FC     LDA ram_00FC
C - - - - - 0x014126 05:8116: 18        CLC
C - - - - - 0x014127 05:8117: 69 03     ADC #$03
C - - - - - 0x014129 05:8119: 85 FC     STA ram_00FC
C - - - - - 0x01412B 05:811B: C9 F0     CMP #$F0
C - - - - - 0x01412D 05:811D: 90 32     BCC bra_8151_RTS
C - - - - - 0x01412F 05:811F: 85 5C     STA ram_005C
C - - - - - 0x014131 05:8121: A5 10     LDA ram_0010
C - - - - - 0x014133 05:8123: F0 03     BEQ bra_8128
C - - - - - 0x014135 05:8125: 20 12 75  JSR sub_bat_7512
bra_8128:
C - - - - - 0x014138 05:8128: A9 00     LDA #$00
C - - - - - 0x01413A 05:812A: 85 FC     STA ram_00FC
C - - - - - 0x01413C 05:812C: 85 E1     STA ram_00E1
C - - - - - 0x01413E 05:812E: A9 02     LDA #$02
sub_8130:
C - - - - - 0x014140 05:8130: 85 00     STA ram_0000
C - - - - - 0x014142 05:8132: AD 54 02  LDA ram_spr_Y + $54
C - - - - - 0x014145 05:8135: C9 F8     CMP #$F8
C - - - - - 0x014147 05:8137: F0 06     BEQ bra_813F
C - - - - - 0x014149 05:8139: 18        CLC
C - - - - - 0x01414A 05:813A: 65 00     ADC ram_0000
C - - - - - 0x01414C 05:813C: 8D 54 02  STA ram_spr_Y + $54
bra_813F:
C - - - - - 0x01414F 05:813F: A5 10     LDA ram_0010
C - - - - - 0x014151 05:8141: F0 0E     BEQ bra_8151_RTS
C - - - - - 0x014153 05:8143: 20 EB B5  JSR sub_B5EB
C - - - - - 0x014156 05:8146: F0 09     BEQ bra_8151_RTS
C - - - - - 0x014158 05:8148: AD 58 02  LDA ram_spr_Y + $58
C - - - - - 0x01415B 05:814B: 18        CLC
C - - - - - 0x01415C 05:814C: 65 00     ADC ram_0000
C - - - - - 0x01415E 05:814E: 8D 58 02  STA ram_spr_Y + $58
bra_8151_RTS:
C - - - - - 0x014161 05:8151: 60        RTS



tbl_8152:
- D 0 - - - 0x014162 05:8152: 00        .byte $00   ; ram_684B
- D 0 - - - 0x014163 05:8153: 08        .byte $08   ; ram_6853
- D 0 - - - 0x014164 05:8154: 09        .byte $09   ; ram_6854
- D 0 - - - 0x014165 05:8155: 01        .byte $01   ; ram_684C
- D 0 - - - 0x014166 05:8156: 0A        .byte $0A   ; ram_6855
- D 0 - - - 0x014167 05:8157: 0B        .byte $0B   ; ram_6856
- D 0 - - - 0x014168 05:8158: 12        .byte $12   ; ram_685D
- D 0 - - - 0x014169 05:8159: 1E        .byte $1E   ; ram_6869
- D 0 - - - 0x01416A 05:815A: 1F        .byte $1F   ; ram_686A
- D 0 - - - 0x01416B 05:815B: 17        .byte $17   ; ram_6862
- D 0 - - - 0x01416C 05:815C: 24        .byte $24   ; ram_686F
- D 0 - - - 0x01416D 05:815D: 25        .byte $25   ; ram_6870
- D 0 - - - 0x01416E 05:815E: 13        .byte $13   ; ram_685E
- D 0 - - - 0x01416F 05:815F: 14        .byte $14   ; ram_685F
- D 0 - - - 0x014170 05:8160: 21        .byte $21   ; ram_686C
- D 0 - - - 0x014171 05:8161: 13        .byte $13   ; ram_685E
- D 0 - - - 0x014172 05:8162: 20        .byte $20   ; ram_686B
- D 0 - - - 0x014173 05:8163: 21        .byte $21   ; ram_686C
- D 0 - - - 0x014174 05:8164: 15        .byte $15   ; ram_6860
- D 0 - - - 0x014175 05:8165: 16        .byte $16   ; ram_6861
- D 0 - - - 0x014176 05:8166: 22        .byte $22   ; ram_686D
- D 0 - - - 0x014177 05:8167: 16        .byte $16   ; ram_6861
- D 0 - - - 0x014178 05:8168: 22        .byte $22   ; ram_686D
- D 0 - - - 0x014179 05:8169: 23        .byte $23   ; ram_686E



tbl_816A:
- D 0 - - - 0x01417A 05:816A: E7        .byte $E7   ; 684B
- D 0 - - - 0x01417B 05:816B: E7        .byte $E7   ; 6853
- D 0 - - - 0x01417C 05:816C: F5        .byte $F5   ; 6854
- D 0 - - - 0x01417D 05:816D: E8        .byte $E8   ; 684C
- D 0 - - - 0x01417E 05:816E: F5        .byte $F5   ; 6855
- D 0 - - - 0x01417F 05:816F: E8        .byte $E8   ; 6856
- D 0 - - - 0x014180 05:8170: E7        .byte $E7   ; 685D
- D 0 - - - 0x014181 05:8171: E7        .byte $E7   ; 6869
- D 0 - - - 0x014182 05:8172: F5        .byte $F5   ; 686A
- D 0 - - - 0x014183 05:8173: E8        .byte $E8   ; 6862
- D 0 - - - 0x014184 05:8174: F5        .byte $F5   ; 686F
- D 0 - - - 0x014185 05:8175: E8        .byte $E8   ; 6870
- D 0 - - - 0x014186 05:8176: E5        .byte $E5   ; 685E
- D 0 - - - 0x014187 05:8177: F5        .byte $F5   ; 685F
- D 0 - - - 0x014188 05:8178: E5        .byte $E5   ; 686C
- D 0 - - - 0x014189 05:8179: E8        .byte $E8   ; 685E
- D 0 - - - 0x01418A 05:817A: F5        .byte $F5   ; 686B
- D 0 - - - 0x01418B 05:817B: E8        .byte $E8   ; 686C
- D 0 - - - 0x01418C 05:817C: F5        .byte $F5   ; 6860
- D 0 - - - 0x01418D 05:817D: E6        .byte $E6   ; 6861
- D 0 - - - 0x01418E 05:817E: E6        .byte $E6   ; 686D
- D 0 - - - 0x01418F 05:817F: E7        .byte $E7   ; 6861
- D 0 - - - 0x014190 05:8180: E7        .byte $E7   ; 686D
- D 0 - - - 0x014191 05:8181: F5        .byte $F5   ; 686E



tbl_8182:
- D 0 - - - 0x014192 05:8182: E9        .byte $E9   ; 684B
- D 0 - - - 0x014193 05:8183: E9        .byte $E9   ; 6853
- D 0 - - - 0x014194 05:8184: 24        .byte $24   ; 6854
- D 0 - - - 0x014195 05:8185: EA        .byte $EA   ; 684C
- D 0 - - - 0x014196 05:8186: 24        .byte $24   ; 6855
- D 0 - - - 0x014197 05:8187: EA        .byte $EA   ; 6856
- D 0 - - - 0x014198 05:8188: E9        .byte $E9   ; 685D
- D 0 - - - 0x014199 05:8189: E9        .byte $E9   ; 6869
- D 0 - - - 0x01419A 05:818A: 24        .byte $24   ; 686A
- D 0 - - - 0x01419B 05:818B: EA        .byte $EA   ; 6862
- D 0 - - - 0x01419C 05:818C: 24        .byte $24   ; 686F
- D 0 - - - 0x01419D 05:818D: EA        .byte $EA   ; 6870
- D 0 - - - 0x01419E 05:818E: 24        .byte $24   ; 685E
- D 0 - - - 0x01419F 05:818F: 24        .byte $24   ; 685F
- D 0 - - - 0x0141A0 05:8190: 24        .byte $24   ; 686C
- D 0 - - - 0x0141A1 05:8191: 24        .byte $24   ; 685E
- D 0 - - - 0x0141A2 05:8192: 24        .byte $24   ; 686B
- D 0 - - - 0x0141A3 05:8193: 24        .byte $24   ; 686C
- D 0 - - - 0x0141A4 05:8194: 24        .byte $24   ; 6860
- D 0 - - - 0x0141A5 05:8195: 24        .byte $24   ; 6861
- D 0 - - - 0x0141A6 05:8196: 24        .byte $24   ; 686D
- D 0 - - - 0x0141A7 05:8197: 24        .byte $24   ; 6861
- D 0 - - - 0x0141A8 05:8198: 24        .byte $24   ; 686D
- D 0 - - - 0x0141A9 05:8199: 24        .byte $24   ; 686E



ofs_819A_01:
C - - J - - 0x0141AA 05:819A: A0 17     LDY #$17
bra_819C_loop:
C - - - - - 0x0141AC 05:819C: BE 52 81  LDX tbl_8152,Y
C - - - - - 0x0141AF 05:819F: B9 82 81  LDA tbl_8182,Y
C - - - - - 0x0141B2 05:81A2: 9D 4B 68  STA ram_684B,X
C - - - - - 0x0141B5 05:81A5: 88        DEY
C - - - - - 0x0141B6 05:81A6: 10 F4     BPL bra_819C_loop
C - - - - - 0x0141B8 05:81A8: C8        INY
C - - - - - 0x0141B9 05:81A9: A9 01     LDA #$01
C - - - - - 0x0141BB 05:81AB: 85 06     STA ram_0006
bra_81AD:
C - - - - - 0x0141BD 05:81AD: A9 03     LDA #$03
C - - - - - 0x0141BF 05:81AF: 85 07     STA ram_0007
bra_81B1:
C - - - - - 0x0141C1 05:81B1: BE 52 81  LDX tbl_8152,Y
C - - - - - 0x0141C4 05:81B4: A5 06     LDA ram_0006
C - - - - - 0x0141C6 05:81B6: 2C 71 06  BIT ram_0671
C - - - - - 0x0141C9 05:81B9: F0 16     BEQ bra_81D1
C - - - - - 0x0141CB 05:81BB: BD 4B 68  LDA ram_684B,X
C - - - - - 0x0141CE 05:81BE: C9 E5     CMP #$E5
C - - - - - 0x0141D0 05:81C0: F0 0A     BEQ bra_81CC
C - - - - - 0x0141D2 05:81C2: C9 E6     CMP #$E6
C - - - - - 0x0141D4 05:81C4: F0 06     BEQ bra_81CC
C - - - - - 0x0141D6 05:81C6: B9 6A 81  LDA tbl_816A,Y
C - - - - - 0x0141D9 05:81C9: 4C CE 81  JMP loc_81CE
bra_81CC:
C - - - - - 0x0141DC 05:81CC: A9 F5     LDA #$F5
loc_81CE:
C D 0 - - - 0x0141DE 05:81CE: 9D 4B 68  STA ram_684B,X
bra_81D1:
C - - - - - 0x0141E1 05:81D1: C8        INY
C - - - - - 0x0141E2 05:81D2: C6 07     DEC ram_0007
C - - - - - 0x0141E4 05:81D4: D0 DB     BNE bra_81B1
C - - - - - 0x0141E6 05:81D6: 06 06     ASL ram_0006
C - - - - - 0x0141E8 05:81D8: D0 D3     BNE bra_81AD
C - - - - - 0x0141EA 05:81DA: E6 E1     INC ram_00E1
C - - - - - 0x0141EC 05:81DC: 60        RTS



sub_81DD:
C - - - - - 0x0141ED 05:81DD: A5 15     LDA ram_frame_cnt
C - - - - - 0x0141EF 05:81DF: 29 03     AND #$03
C - - - - - 0x0141F1 05:81E1: A4 10     LDY ram_0010
C - - - - - 0x0141F3 05:81E3: D0 02     BNE bra_81E7
C - - - - - 0x0141F5 05:81E5: 29 01     AND #$01
bra_81E7:
C - - - - - 0x0141F7 05:81E7: C5 E6     CMP ram_00E6
C - - - - - 0x0141F9 05:81E9: D0 6A     BNE bra_8255
C - - - - - 0x0141FB 05:81EB: A9 08     LDA #con_dir_Up
C - - - - - 0x0141FD 05:81ED: 24 98     BIT ram_direction
C - - - - - 0x0141FF 05:81EF: F0 37     BEQ bra_8228
C - - - - - 0x014201 05:81F1: C6 E9     DEC ram_00E9
C - - - - - 0x014203 05:81F3: A5 84     LDA ram_pos_Y
C - - - - - 0x014205 05:81F5: C9 DD     CMP #$DD
C - - - - - 0x014207 05:81F7: B0 04     BCS bra_81FD
C - - - - - 0x014209 05:81F9: 69 08     ADC #$08
C - - - - - 0x01420B 05:81FB: 85 84     STA ram_pos_Y
bra_81FD:
C - - - - - 0x01420D 05:81FD: A5 E2     LDA ram_00E2
C - - - - - 0x01420F 05:81FF: 38        SEC
C - - - - - 0x014210 05:8200: E9 20     SBC #$20
C - - - - - 0x014212 05:8202: 85 E2     STA ram_00E2
C - - - - - 0x014214 05:8204: B0 02     BCS bra_8208
C - - - - - 0x014216 05:8206: C6 58     DEC ram_0058
bra_8208:
C - - - - - 0x014218 05:8208: C9 E0     CMP #$E0
C - - - - - 0x01421A 05:820A: D0 12     BNE bra_821E_RTS
C - - - - - 0x01421C 05:820C: A5 58     LDA ram_0058
C - - - - - 0x01421E 05:820E: C9 20     CMP #$20
C - - - - - 0x014220 05:8210: F0 0D     BEQ bra_821F
C - - - - - 0x014222 05:8212: C9 27     CMP #$27
C - - - - - 0x014224 05:8214: D0 08     BNE bra_821E_RTS
C - - - - - 0x014226 05:8216: A9 23     LDA #$23
C - - - - - 0x014228 05:8218: 85 58     STA ram_0058
C - - - - - 0x01422A 05:821A: A9 A0     LDA #$A0
C - - - - - 0x01422C 05:821C: 85 E2     STA ram_00E2
bra_821E_RTS:
C - - - - - 0x01422E 05:821E: 60        RTS
bra_821F:
C - - - - - 0x01422F 05:821F: E6 58     INC ram_0058
loc_8221:
C D 0 - - - 0x014231 05:8221: A9 00     LDA #$00
C - - - - - 0x014233 05:8223: 85 E2     STA ram_00E2
bra_8225:
loc_8225:
C D 0 - - - 0x014235 05:8225: E6 13     INC ram_game_mode_sub
C - - - - - 0x014237 05:8227: 60        RTS
bra_8228:
C - - - - - 0x014238 05:8228: 4A        LSR ; con_dir_Down
C - - - - - 0x014239 05:8229: 24 98     BIT ram_direction
C - - - - - 0x01423B 05:822B: F0 28     BEQ bra_8255
C - - - - - 0x01423D 05:822D: E6 E9     INC ram_00E9
C - - - - - 0x01423F 05:822F: A5 84     LDA ram_pos_Y
C - - - - - 0x014241 05:8231: C9 3E     CMP #$3E
C - - - - - 0x014243 05:8233: 90 04     BCC bra_8239
C - - - - - 0x014245 05:8235: E9 08     SBC #$08
C - - - - - 0x014247 05:8237: 85 84     STA ram_pos_Y
bra_8239:
C - - - - - 0x014249 05:8239: A5 E2     LDA ram_00E2
C - - - - - 0x01424B 05:823B: 18        CLC
C - - - - - 0x01424C 05:823C: 69 20     ADC #$20
C - - - - - 0x01424E 05:823E: 85 E2     STA ram_00E2
C - - - - - 0x014250 05:8240: 90 02     BCC bra_8244
C - - - - - 0x014252 05:8242: E6 58     INC ram_0058
bra_8244:
C - - - - - 0x014254 05:8244: C9 C0     CMP #$C0
C - - - - - 0x014256 05:8246: D0 3F     BNE bra_8287_RTS
C - - - - - 0x014258 05:8248: A5 58     LDA ram_0058
C - - - - - 0x01425A 05:824A: C9 23     CMP #$23
C - - - - - 0x01425C 05:824C: D0 39     BNE bra_8287_RTS
C - - - - - 0x01425E 05:824E: A9 28     LDA #$28
C - - - - - 0x014260 05:8250: 85 58     STA ram_0058
C - - - - - 0x014262 05:8252: 4C 21 82  JMP loc_8221
bra_8255:
C - - - - - 0x014265 05:8255: A9 02     LDA #$02
C - - - - - 0x014267 05:8257: A2 FE     LDX #$FE
C - - - - - 0x014269 05:8259: A4 10     LDY ram_0010
C - - - - - 0x01426B 05:825B: D0 03     BNE bra_8260
C - - - - - 0x01426D 05:825D: 0A        ASL
C - - - - - 0x01426E 05:825E: A2 FC     LDX #$FC
bra_8260:
C - - - - - 0x014270 05:8260: 85 00     STA ram_0000
C - - - - - 0x014272 05:8262: 86 01     STX ram_0001
C - - - - - 0x014274 05:8264: A9 02     LDA #con_dir_Left
C - - - - - 0x014276 05:8266: 24 98     BIT ram_direction
C - - - - - 0x014278 05:8268: F0 1E     BEQ bra_8288
C - - - - - 0x01427A 05:826A: C6 E8     DEC ram_00E8
C - - - - - 0x01427C 05:826C: A5 70     LDA ram_pos_X
C - - - - - 0x01427E 05:826E: C9 F0     CMP #$F0
C - - - - - 0x014280 05:8270: B0 04     BCS bra_8276
C - - - - - 0x014282 05:8272: 65 00     ADC ram_0000
C - - - - - 0x014284 05:8274: 85 70     STA ram_pos_X
bra_8276:
C - - - - - 0x014286 05:8276: A5 FD     LDA ram_00FD
C - - - - - 0x014288 05:8278: 38        SEC
C - - - - - 0x014289 05:8279: E5 00     SBC ram_0000
C - - - - - 0x01428B 05:827B: 85 FD     STA ram_00FD
C - - - - - 0x01428D 05:827D: F0 A6     BEQ bra_8225
C - - - - - 0x01428F 05:827F: C5 01     CMP ram_0001
C - - - - - 0x014291 05:8281: D0 04     BNE bra_8287_RTS
sub_8283:
C - - - - - 0x014293 05:8283: A9 01     LDA #$01
C - - - - - 0x014295 05:8285: 85 5F     STA ram_005F
bra_8287_RTS:
C - - - - - 0x014297 05:8287: 60        RTS
bra_8288:
C - - - - - 0x014298 05:8288: 4A        LSR ; con_dir_Right
C - - - - - 0x014299 05:8289: 24 98     BIT ram_direction
C - - - - - 0x01429B 05:828B: F0 FA     BEQ bra_8287_RTS
C - - - - - 0x01429D 05:828D: E6 E8     INC ram_00E8
C - - - - - 0x01429F 05:828F: A5 70     LDA ram_pos_X
C - - - - - 0x0142A1 05:8291: C9 01     CMP #$01
C - - - - - 0x0142A3 05:8293: 90 04     BCC bra_8299
C - - - - - 0x0142A5 05:8295: E5 00     SBC ram_0000
C - - - - - 0x0142A7 05:8297: 85 70     STA ram_pos_X
bra_8299:
C - - - - - 0x0142A9 05:8299: A5 FD     LDA ram_00FD
C - - - - - 0x0142AB 05:829B: 18        CLC
C - - - - - 0x0142AC 05:829C: 65 00     ADC ram_0000
C - - - - - 0x0142AE 05:829E: 85 FD     STA ram_00FD
C - - - - - 0x0142B0 05:82A0: D0 E5     BNE bra_8287_RTS
C - - - - - 0x0142B2 05:82A2: 20 83 82  JSR sub_8283
C - - - - - 0x0142B5 05:82A5: 4C 25 82  JMP loc_8225



sub_0x0142B8:
C - - - - - 0x0142B8 05:82A8: A5 13     LDA ram_game_mode_sub
C - - - - - 0x0142BA 05:82AA: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 0 - I - 0x0142BD 05:82AD: 0E 83     .word ofs_830E_00
- D 0 - I - 0x0142BF 05:82AF: BB 82     .word ofs_82BB_01
- D 0 - I - 0x0142C1 05:82B1: 1F 83     .word ofs_831F_02
- D 0 - I - 0x0142C3 05:82B3: 3D 83     .word ofs_833D_03
- D 0 - I - 0x0142C5 05:82B5: 3D 83     .word ofs_833D_04
- D 0 - I - 0x0142C7 05:82B7: 5C 83     .word ofs_835C_05
- D 0 - I - 0x0142C9 05:82B9: 9E 83     .word ofs_839E_06



ofs_82BB_01:
C - - J - - 0x0142CB 05:82BB: 20 3D EA  JSR sub_0x01EA4D
C - - - - - 0x0142CE 05:82BE: 20 38 F2  JSR sub_0x01F248
C - - - - - 0x0142D1 05:82C1: A5 EE     LDA ram_00EE
C - - - - - 0x0142D3 05:82C3: 8D 21 05  STA ram_0521
C - - - - - 0x0142D6 05:82C6: 20 C2 83  JSR sub_83C2
C - - - - - 0x0142D9 05:82C9: C6 ED     DEC ram_00ED
C - - - - - 0x0142DB 05:82CB: E6 13     INC ram_game_mode_sub
C - - - - - 0x0142DD 05:82CD: 20 8F E6  JSR sub_0x01E69F
C - - - - - 0x0142E0 05:82D0: A5 EC     LDA ram_00EC
C - - - - - 0x0142E2 05:82D2: 30 20     BMI bra_82F4_RTS
C - - - - - 0x0142E4 05:82D4: A5 EB     LDA ram_map_location
C - - - - - 0x0142E6 05:82D6: 48        PHA
C - - - - - 0x0142E7 05:82D7: A4 98     LDY ram_direction
C - - - - - 0x0142E9 05:82D9: C0 08     CPY #con_dir_Up
C - - - - - 0x0142EB 05:82DB: F0 04     BEQ bra_82E1
C - - - - - 0x0142ED 05:82DD: A5 EC     LDA ram_00EC
C - - - - - 0x0142EF 05:82DF: 85 EB     STA ram_map_location
bra_82E1:
C - - - - - 0x0142F1 05:82E1: 20 D7 83  JSR sub_83D7
C - - - - - 0x0142F4 05:82E4: A9 15     LDA #$15
C - - - - - 0x0142F6 05:82E6: 85 E9     STA ram_00E9
C - - - - - 0x0142F8 05:82E8: A4 98     LDY ram_direction
C - - - - - 0x0142FA 05:82EA: C0 08     CPY #con_dir_Up
C - - - - - 0x0142FC 05:82EC: F0 07     BEQ bra_82F5
C - - - - - 0x0142FE 05:82EE: 20 C4 A8  JSR sub_A8C4
loc_82F1:
C D 0 - - - 0x014301 05:82F1: 68        PLA
C - - - - - 0x014302 05:82F2: 85 EB     STA ram_map_location
bra_82F4_RTS:
C - - - - - 0x014304 05:82F4: 60        RTS
bra_82F5:
C - - - - - 0x014305 05:82F5: 20 FB 82  JSR sub_82FB
C - - - - - 0x014308 05:82F8: 4C F1 82  JMP loc_82F1



sub_82FB:
C - - - - - 0x01430B 05:82FB: A5 10     LDA ram_0010
C - - - - - 0x01430D 05:82FD: F0 0E     BEQ bra_830D_RTS
C - - - - - 0x01430F 05:82FF: A5 EE     LDA ram_00EE
C - - - - - 0x014311 05:8301: 48        PHA
C - - - - - 0x014312 05:8302: AD 21 05  LDA ram_0521
C - - - - - 0x014315 05:8305: 85 EE     STA ram_00EE
C - - - - - 0x014317 05:8307: 20 F6 A4  JSR sub_A4F6
C - - - - - 0x01431A 05:830A: 68        PLA
C - - - - - 0x01431B 05:830B: 85 EE     STA ram_00EE
bra_830D_RTS:
C - - - - - 0x01431D 05:830D: 60        RTS



ofs_830E_00:
C - - J - - 0x01431E 05:830E: AD 22 05  LDA ram_0522
C - - - - - 0x014321 05:8311: F0 04     BEQ bra_8317
C - - - - - 0x014323 05:8313: A5 EA     LDA ram_00EA
C - - - - - 0x014325 05:8315: 85 EB     STA ram_map_location
bra_8317:
C - - - - - 0x014327 05:8317: AD 1A 05  LDA ram_051A
C - - - - - 0x01432A 05:831A: F0 1E     BEQ bra_833A
- - - - - - 0x01432C 05:831C: 4C 34 FF  JMP loc_0x01FF44



ofs_831F_02:
C - - J - - 0x01432F 05:831F: 20 24 A9  JSR sub_A924
C - - - - - 0x014332 05:8322: AD 02 03  LDA ram_0302
C - - - - - 0x014335 05:8325: 29 0F     AND #$0F
C - - - - - 0x014337 05:8327: 18        CLC
C - - - - - 0x014338 05:8328: 69 27     ADC #$27
C - - - - - 0x01433A 05:832A: 8D 02 03  STA ram_0302
C - - - - - 0x01433D 05:832D: A5 98     LDA ram_direction
C - - - - - 0x01433F 05:832F: C9 04     CMP #$04
C - - - - - 0x014341 05:8331: B0 03     BCS bra_8336    ; con_dir_Down or con_dir_Up ?
C - - - - - 0x014343 05:8333: EE 02 03  INC ram_0302
bra_8336:
C - - - - - 0x014346 05:8336: C6 E9     DEC ram_00E9
C - - - - - 0x014348 05:8338: 10 02     BPL bra_833C_RTS
bra_833A:
C - - - - - 0x01434A 05:833A: E6 13     INC ram_game_mode_sub
bra_833C_RTS:
C - - - - - 0x01434C 05:833C: 60        RTS



ofs_833D_03:
ofs_833D_04:
C - - J - - 0x01434D 05:833D: A9 08     LDA #con_dir_Up
C - - - - - 0x01434F 05:833F: 24 98     BIT ram_direction
C - - - - - 0x014351 05:8341: D0 05     BNE bra_8348
C - - - - - 0x014353 05:8343: 4A        LSR ; con_dir_Down
C - - - - - 0x014354 05:8344: 24 98     BIT ram_direction
C - - - - - 0x014356 05:8346: F0 10     BEQ bra_8358
bra_8348:
C - - - - - 0x014358 05:8348: A9 C0     LDA #$C0
bra_834A:
C - - - - - 0x01435A 05:834A: A0 17     LDY #$17
C - - - - - 0x01435C 05:834C: A6 13     LDX ram_game_mode_sub
C - - - - - 0x01435E 05:834E: E0 03     CPX #$03
C - - - - - 0x014360 05:8350: F0 03     BEQ bra_8355
C - - - - - 0x014362 05:8352: 20 8C 84  JSR sub_848C
bra_8355:
C - - - - - 0x014365 05:8355: 4C A4 8C  JMP loc_8CA4
bra_8358:
C - - - - - 0x014368 05:8358: A9 D0     LDA #$D0
C - - - - - 0x01436A 05:835A: D0 EE     BNE bra_834A



ofs_835C_05:
C - - J - - 0x01436C 05:835C: A9 00     LDA #$00
C - - - - - 0x01436E 05:835E: 8D 1C 05  STA ram_051C
C - - - - - 0x014371 05:8361: A5 98     LDA ram_direction
C - - - - - 0x014373 05:8363: C9 04     CMP #$04
C - - - - - 0x014375 05:8365: B0 04     BCS bra_836B    ; con_dir_Down or con_dir_Up ?
C - - - - - 0x014377 05:8367: A0 4E     LDY #$4E
C - - - - - 0x014379 05:8369: 84 14     STY ram_0014
bra_836B:
C - - - - - 0x01437B 05:836B: C9 08     CMP #con_dir_Up
C - - - - - 0x01437D 05:836D: D0 0D     BNE bra_837C
C - - - - - 0x01437F 05:836F: A5 EB     LDA ram_map_location
C - - - - - 0x014381 05:8371: 48        PHA
C - - - - - 0x014382 05:8372: A5 EC     LDA ram_00EC
C - - - - - 0x014384 05:8374: 85 EB     STA ram_map_location
C - - - - - 0x014386 05:8376: 20 C4 A8  JSR sub_A8C4
C - - - - - 0x014389 05:8379: 68        PLA
C - - - - - 0x01438A 05:837A: 85 EB     STA ram_map_location
bra_837C:
C - - - - - 0x01438C 05:837C: A4 EC     LDY ram_00EC
C - - - - - 0x01438E 05:837E: 20 8D B6  JSR sub_B68D
C - - - - - 0x014391 05:8381: F0 20     BEQ bra_83A3
C - - - - - 0x014393 05:8383: A4 EB     LDY ram_map_location
C - - - - - 0x014395 05:8385: 20 8D B6  JSR sub_B68D
C - - - - - 0x014398 05:8388: D0 0D     BNE bra_8397
bra_838A:
C - - - - - 0x01439A 05:838A: A9 00     LDA #$00
C - - - - - 0x01439C 05:838C: 8D 1F 05  STA ram_051F
C - - - - - 0x01439F 05:838F: A9 40     LDA #$40
C - - - - - 0x0143A1 05:8391: 8D 1C 05  STA ram_051C
C - - - - - 0x0143A4 05:8394: E6 13     INC ram_game_mode_sub
C - - - - - 0x0143A6 05:8396: 60        RTS
bra_8397:
C - - - - - 0x0143A7 05:8397: AD 1F 05  LDA ram_051F
C - - - - - 0x0143AA 05:839A: D0 EE     BNE bra_838A
C - - - - - 0x0143AC 05:839C: F0 05     BEQ bra_83A3



ofs_839E_06:
C - - J - - 0x0143AE 05:839E: 20 B7 74  JSR sub_bat_74B7
C - - - - - 0x0143B1 05:83A1: D0 0A     BNE bra_83AD_RTS
bra_83A3:
C - - - - - 0x0143B3 05:83A3: A5 EC     LDA ram_00EC
C - - - - - 0x0143B5 05:83A5: 85 EB     STA ram_map_location
C - - - - - 0x0143B7 05:83A7: 20 B2 83  JSR sub_83B2
C - - - - - 0x0143BA 05:83AA: 20 90 6C  JSR sub_bat_6C90
bra_83AD_RTS:
C - - - - - 0x0143BD 05:83AD: 60        RTS



tbl_83AE_spr_data:
- D 0 - - - 0x0143BE 05:83AE: 27        .byte $27   ; spr_Y
- D 0 - - - 0x0143BF 05:83AF: 61        .byte $61   ; spr_T
- D 0 - - - 0x0143C0 05:83B0: 20        .byte $20   ; spr_A
- D 0 - - - 0x0143C1 05:83B1: 58        .byte $58   ; spr_X



sub_83B2:
loc_83B2:
C D 0 - - - 0x0143C2 05:83B2: A9 01     LDA #$01
C - - - - - 0x0143C4 05:83B4: 85 E3     STA ram_00E3
C - - - - - 0x0143C6 05:83B6: A0 03     LDY #$03
bra_83B8_loop:
C - - - - - 0x0143C8 05:83B8: B9 AE 83  LDA tbl_83AE_spr_data,Y
C - - - - - 0x0143CB 05:83BB: 99 00 02  STA ram_oam,Y
C - - - - - 0x0143CE 05:83BE: 88        DEY
C - - - - - 0x0143CF 05:83BF: 10 F7     BPL bra_83B8_loop
C - - - - - 0x0143D1 05:83C1: 60        RTS



sub_83C2:
C - - - - - 0x0143D2 05:83C2: A5 98     LDA ram_direction
C - - - - - 0x0143D4 05:83C4: 4A        LSR
C - - - - - 0x0143D5 05:83C5: 29 05     AND #$05    ; con_dir_Left    con_dir_Up
C - - - - - 0x0143D7 05:83C7: 85 00     STA ram_0000
C - - - - - 0x0143D9 05:83C9: A5 98     LDA ram_direction
C - - - - - 0x0143DB 05:83CB: 0A        ASL
C - - - - - 0x0143DC 05:83CC: 29 0A     AND #$0A    ; con_dir_Right    con_dir_Down
C - - - - - 0x0143DE 05:83CE: 05 00     ORA ram_0000
C - - - - - 0x0143E0 05:83D0: 85 EE     STA ram_00EE
C - - - - - 0x0143E2 05:83D2: 60        RTS



tbl_83D3:
- D 0 - - - 0x0143E3 05:83D3: 00        .byte $00   ; 
- D 0 - - - 0x0143E4 05:83D4: 55        .byte $55   ; 
- D 0 - - - 0x0143E5 05:83D5: AA        .byte $AA   ; 
- D 0 - - - 0x0143E6 05:83D6: FF        .byte $FF   ; 



sub_83D7:
C - - - - - 0x0143E7 05:83D7: A8        TAY
C - - - - - 0x0143E8 05:83D8: B9 7E 68  LDA ram_687E,Y
C - - - - - 0x0143EB 05:83DB: 29 03     AND #$03
C - - - - - 0x0143ED 05:83DD: AA        TAX
C - - - - - 0x0143EE 05:83DE: BD D3 83  LDA tbl_83D3,X
C - - - - - 0x0143F1 05:83E1: A2 2F     LDX #$2F
bra_83E3_loop:
C - - - - - 0x0143F3 05:83E3: 9D 30 05  STA ram_0530,X
C - - - - - 0x0143F6 05:83E6: CA        DEX
C - - - - - 0x0143F7 05:83E7: 10 FA     BPL bra_83E3_loop
C - - - - - 0x0143F9 05:83E9: B9 FE 68  LDA ram_68FE,Y
C - - - - - 0x0143FC 05:83EC: 29 03     AND #$03
C - - - - - 0x0143FE 05:83EE: AA        TAX
C - - - - - 0x0143FF 05:83EF: A0 09     LDY #$09
bra_83F1_loop:
C - - - - - 0x014401 05:83F1: 98        TYA
C - - - - - 0x014402 05:83F2: 29 07     AND #$07
C - - - - - 0x014404 05:83F4: F0 0E     BEQ bra_8404
C - - - - - 0x014406 05:83F6: C9 07     CMP #$07
C - - - - - 0x014408 05:83F8: F0 0A     BEQ bra_8404
C - - - - - 0x01440A 05:83FA: C0 21     CPY #$21
C - - - - - 0x01440C 05:83FC: B0 0C     BCS bra_840A
C - - - - - 0x01440E 05:83FE: BD D3 83  LDA tbl_83D3,X
C - - - - - 0x014411 05:8401: 99 30 05  STA ram_0530,Y
bra_8404:
loc_8404_loop:
C D 0 - - - 0x014414 05:8404: C8        INY
C - - - - - 0x014415 05:8405: C0 27     CPY #$27
C - - - - - 0x014417 05:8407: 90 E8     BCC bra_83F1_loop
C - - - - - 0x014419 05:8409: 60        RTS
bra_840A:
C - - - - - 0x01441A 05:840A: BD D3 83  LDA tbl_83D3,X
C - - - - - 0x01441D 05:840D: 29 0F     AND #$0F
C - - - - - 0x01441F 05:840F: 85 00     STA ram_0000
C - - - - - 0x014421 05:8411: B9 30 05  LDA ram_0530,Y
C - - - - - 0x014424 05:8414: 29 F0     AND #$F0
C - - - - - 0x014426 05:8416: 05 00     ORA ram_0000
C - - - - - 0x014428 05:8418: 99 30 05  STA ram_0530,Y
C - - - - - 0x01442B 05:841B: 4C 04 84  JMP loc_8404_loop



sub_0x01442E:
C - - - - - 0x01442E 05:841E: 20 24 84  JSR sub_8424
C - - - - - 0x014431 05:8421: 4C 38 F2  JMP loc_0x01F248
sub_8424:
C - - - - - 0x014434 05:8424: A5 13     LDA ram_game_mode_sub
C - - - - - 0x014436 05:8426: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 0 - I - 0x014439 05:8429: 39 84     .word ofs_8439_00
- D 0 - I - 0x01443B 05:842B: 7E 84     .word ofs_847E_01
- D 0 - I - 0x01443D 05:842D: 92 84     .word ofs_8492_02
- D 0 - I - 0x01443F 05:842F: A4 84     .word ofs_84A4_03
- D 0 - I - 0x014441 05:8431: DF 84     .word ofs_84DF_04
- D 0 - I - 0x014443 05:8433: E8 84     .word ofs_84E8_05
- D 0 - I - 0x014445 05:8435: BA 84     .word ofs_84BA_06
- D 0 - I - 0x014447 05:8437: CC 84     .word ofs_84CC_07



ofs_8439_00:
C - - J - - 0x014449 05:8439: A9 00     LDA #$00
C - - - - - 0x01444B 05:843B: 85 E2     STA ram_00E2
C - - - - - 0x01444D 05:843D: 85 FD     STA ram_00FD
C - - - - - 0x01444F 05:843F: A9 08     LDA #con_dir_Up
C - - - - - 0x014451 05:8441: 24 98     BIT ram_direction
C - - - - - 0x014453 05:8443: D0 2C     BNE bra_8471
C - - - - - 0x014455 05:8445: 4A        LSR ; con_dir_Down
C - - - - - 0x014456 05:8446: 24 98     BIT ram_direction
C - - - - - 0x014458 05:8448: F0 0D     BEQ bra_8457
C - - - - - 0x01445A 05:844A: A9 21     LDA #$21
C - - - - - 0x01445C 05:844C: 85 58     STA ram_0058
C - - - - - 0x01445E 05:844E: A9 FF     LDA #$FF
C - - - - - 0x014460 05:8450: 85 E9     STA ram_00E9
loc_8452:
C D 0 - - - 0x014462 05:8452: E6 13     INC ram_game_mode_sub
C - - - - - 0x014464 05:8454: E6 13     INC ram_game_mode_sub
C - - - - - 0x014466 05:8456: 60        RTS
bra_8457:
C - - - - - 0x014467 05:8457: A0 A0     LDY #$A0
C - - - - - 0x014469 05:8459: A6 10     LDX ram_0010
C - - - - - 0x01446B 05:845B: D0 02     BNE bra_845F
C - - - - - 0x01446D 05:845D: A0 E0     LDY #$E0
bra_845F:
C - - - - - 0x01446F 05:845F: 4A        LSR
C - - - - - 0x014470 05:8460: 24 98     BIT ram_direction
C - - - - - 0x014472 05:8462: F0 08     BEQ bra_846C
C - - - - - 0x014474 05:8464: A0 81     LDY #$81
C - - - - - 0x014476 05:8466: A6 10     LDX ram_0010
C - - - - - 0x014478 05:8468: D0 02     BNE bra_846C
C - - - - - 0x01447A 05:846A: A0 41     LDY #$41
bra_846C:
C - - - - - 0x01447C 05:846C: 84 E8     STY ram_00E8
C - - - - - 0x01447E 05:846E: 4C 52 84  JMP loc_8452
bra_8471:
C - - - - - 0x014481 05:8471: A9 28     LDA #$28
C - - - - - 0x014483 05:8473: 85 58     STA ram_0058
C - - - - - 0x014485 05:8475: A9 16     LDA #$16
C - - - - - 0x014487 05:8477: 85 E9     STA ram_00E9
C - - - - - 0x014489 05:8479: A5 EB     LDA ram_map_location
C - - - - - 0x01448B 05:847B: 20 D7 83  JSR sub_83D7
ofs_847E_01:
C - - - - - 0x01448E 05:847E: 20 84 84  JSR sub_8484
C - - - - - 0x014491 05:8481: 4C 01 85  JMP loc_8501



sub_8484:
C - - - - - 0x014494 05:8484: A9 D0     LDA #$D0
C - - - - - 0x014496 05:8486: A0 17     LDY #$17
C - - - - - 0x014498 05:8488: A6 13     LDX ram_game_mode_sub
C - - - - - 0x01449A 05:848A: F0 05     BEQ bra_8491_RTS
sub_848C:
C - - - - - 0x01449C 05:848C: A0 2F     LDY #$2F
C - - - - - 0x01449E 05:848E: 18        CLC
C - - - - - 0x01449F 05:848F: 69 18     ADC #$18
bra_8491_RTS:
C - - - - - 0x0144A1 05:8491: 60        RTS



ofs_8492_02:
C - - J - - 0x0144A2 05:8492: E6 13     INC ram_game_mode_sub
C - - - - - 0x0144A4 05:8494: A5 15     LDA ram_frame_cnt
C - - - - - 0x0144A6 05:8496: 18        CLC
C - - - - - 0x0144A7 05:8497: 69 01     ADC #$01
C - - - - - 0x0144A9 05:8499: 29 03     AND #$03
C - - - - - 0x0144AB 05:849B: A4 10     LDY ram_0010
C - - - - - 0x0144AD 05:849D: D0 02     BNE bra_84A1
C - - - - - 0x0144AF 05:849F: 29 01     AND #$01
bra_84A1:
C - - - - - 0x0144B1 05:84A1: 85 E6     STA ram_00E6
C - - - - - 0x0144B3 05:84A3: 60        RTS



ofs_84A4_03:
C - - J - - 0x0144B4 05:84A4: 20 DD 81  JSR sub_81DD
C - - - - - 0x0144B7 05:84A7: 20 06 85  JSR sub_8506
C - - - - - 0x0144BA 05:84AA: A5 13     LDA ram_game_mode_sub
C - - - - - 0x0144BC 05:84AC: C9 03     CMP #$03
C - - - - - 0x0144BE 05:84AE: F0 09     BEQ bra_84B9_RTS
C - - - - - 0x0144C0 05:84B0: A0 FF     LDY #$FF
C - - - - - 0x0144C2 05:84B2: 84 E9     STY ram_00E9
C - - - - - 0x0144C4 05:84B4: 84 ED     STY ram_00ED
C - - - - - 0x0144C6 05:84B6: C8        INY
C - - - - - 0x0144C7 05:84B7: 84 E8     STY ram_00E8
bra_84B9_RTS:
C - - - - - 0x0144C9 05:84B9: 60        RTS



ofs_84BA_06:
C - - J - - 0x0144CA 05:84BA: A5 10     LDA ram_0010
C - - - - - 0x0144CC 05:84BC: F0 0E     BEQ bra_84CC
C - - - - - 0x0144CE 05:84BE: A4 EB     LDY ram_map_location
C - - - - - 0x0144D0 05:84C0: 20 8D B6  JSR sub_B68D
C - - - - - 0x0144D3 05:84C3: F0 07     BEQ bra_84CC
C - - - - - 0x0144D5 05:84C5: A9 00     LDA #$00
C - - - - - 0x0144D7 05:84C7: 85 E9     STA ram_00E9
C - - - - - 0x0144D9 05:84C9: E6 13     INC ram_game_mode_sub
C - - - - - 0x0144DB 05:84CB: 60        RTS
bra_84CC:
ofs_84CC_07:
C - - - - - 0x0144DC 05:84CC: A9 01     LDA #$01
C - - - - - 0x0144DE 05:84CE: 85 13     STA ram_game_mode_sub
C - - - - - 0x0144E0 05:84D0: 4A        LSR
C - - - - - 0x0144E1 05:84D1: 85 11     STA ram_0011
C - - - - - 0x0144E3 05:84D3: 8D 0C 01  STA ram_010C
C - - - - - 0x0144E6 05:84D6: 85 E7     STA ram_00E7
C - - - - - 0x0144E8 05:84D8: 85 E3     STA ram_00E3
C - - - - - 0x0144EA 05:84DA: A9 04     LDA #con_GM_04
C - - - - - 0x0144EC 05:84DC: 85 12     STA ram_game_mode_main
C - - - - - 0x0144EE 05:84DE: 60        RTS



ofs_84DF_04:
C - - J - - 0x0144EF 05:84DF: A9 08     LDA #con_dir_Up
C - - - - - 0x0144F1 05:84E1: 24 98     BIT ram_direction
C - - - - - 0x0144F3 05:84E3: F0 03     BEQ bra_84E8
C - - - - - 0x0144F5 05:84E5: 4C 52 84  JMP loc_8452
bra_84E8:
ofs_84E8_05:
C - - - - - 0x0144F8 05:84E8: A9 D0     LDA #$D0
C - - - - - 0x0144FA 05:84EA: A0 17     LDY #$17
C - - - - - 0x0144FC 05:84EC: A6 13     LDX ram_game_mode_sub
C - - - - - 0x0144FE 05:84EE: E0 04     CPX #$04
C - - - - - 0x014500 05:84F0: F0 0F     BEQ bra_8501
C - - - - - 0x014502 05:84F2: 48        PHA
C - - - - - 0x014503 05:84F3: A5 98     LDA ram_direction
C - - - - - 0x014505 05:84F5: C9 04     CMP #$04
C - - - - - 0x014507 05:84F7: B0 04     BCS bra_84FD    ; con_dir_Down or con_dir_Up ?
C - - - - - 0x014509 05:84F9: A9 00     LDA #$00
C - - - - - 0x01450B 05:84FB: 85 5F     STA ram_005F
bra_84FD:
C - - - - - 0x01450D 05:84FD: 68        PLA
C - - - - - 0x01450E 05:84FE: 20 8C 84  JSR sub_848C
bra_8501:
loc_8501:
C D 0 - - - 0x014511 05:8501: A2 23     LDX #$23
C - - - - - 0x014513 05:8503: 4C A6 8C  JMP loc_8CA6



sub_8506:
C - - - - - 0x014516 05:8506: A5 E9     LDA ram_00E9
C - - - - - 0x014518 05:8508: C9 16     CMP #$16
C - - - - - 0x01451A 05:850A: B0 09     BCS bra_8515
C - - - - - 0x01451C 05:850C: C5 ED     CMP ram_00ED
C - - - - - 0x01451E 05:850E: F0 10     BEQ bra_8520_RTS
C - - - - - 0x014520 05:8510: 85 ED     STA ram_00ED
C - - - - - 0x014522 05:8512: 4C 24 A9  JMP loc_A924
bra_8515:
C - - - - - 0x014525 05:8515: A5 E8     LDA ram_00E8
C - - - - - 0x014527 05:8517: F0 07     BEQ bra_8520_RTS
C - - - - - 0x014529 05:8519: C9 21     CMP #$21
C - - - - - 0x01452B 05:851B: B0 03     BCS bra_8520_RTS
C - - - - - 0x01452D 05:851D: 4C DE A8  JMP loc_A8DE
bra_8520_RTS:
C - - - - - 0x014530 05:8520: 60        RTS



sub_0x014531:
bra_8521_loop:
C - - - - - 0x014531 05:8521: AD 02 20  LDA $2002
C - - - - - 0x014534 05:8524: 29 40     AND #$40    ; bzk optimize, BIT + BVC
C - - - - - 0x014536 05:8526: F0 F9     BEQ bra_8521_loop
C - - - - - 0x014538 05:8528: AD 02 20  LDA $2002
C - - - - - 0x01453B 05:852B: A0 03     LDY #$03
bra_852D_garbage_loop:
C - - - - - 0x01453D 05:852D: A2 30     LDX #$30
bra_852F_garbage_loop:
C - - - - - 0x01453F 05:852F: CA        DEX
C - - - - - 0x014540 05:8530: 10 FD     BPL bra_852F_garbage_loop
C - - - - - 0x014542 05:8532: 88        DEY
C - - - - - 0x014543 05:8533: 10 F8     BPL bra_852D_garbage_loop
C - - - - - 0x014545 05:8535: EA        NOP
C - - - - - 0x014546 05:8536: EA        NOP
C - - - - - 0x014547 05:8537: EA        NOP
C - - - - - 0x014548 05:8538: EA        NOP
C - - - - - 0x014549 05:8539: EA        NOP
C - - - - - 0x01454A 05:853A: EA        NOP
C - - - - - 0x01454B 05:853B: EA        NOP
C - - - - - 0x01454C 05:853C: EA        NOP
C - - - - - 0x01454D 05:853D: EA        NOP
C - - - - - 0x01454E 05:853E: A5 12     LDA ram_game_mode_main
C - - - - - 0x014550 05:8540: C9 08     CMP #$08
C - - - - - 0x014552 05:8542: B0 48     BCS bra_858C
C - - - - - 0x014554 05:8544: A5 13     LDA ram_game_mode_sub
C - - - - - 0x014556 05:8546: F0 43     BEQ bra_858B_RTS
C - - - - - 0x014558 05:8548: A5 98     LDA ram_direction
C - - - - - 0x01455A 05:854A: C9 04     CMP #$04    ; check for either con_dir_Right or con_dir_Left
C - - - - - 0x01455C 05:854C: 90 1F     BCC bra_856D
C - - - - - 0x01455E 05:854E: A0 5E     LDY #$5E
bra_8550_garbage_loop:
C - - - - - 0x014560 05:8550: EA        NOP
C - - - - - 0x014561 05:8551: 88        DEY
C - - - - - 0x014562 05:8552: 10 FC     BPL bra_8550_garbage_loop
C - - - - - 0x014564 05:8554: EA        NOP
C - - - - - 0x014565 05:8555: EA        NOP
C - - - - - 0x014566 05:8556: EA        NOP
C - - - - - 0x014567 05:8557: EA        NOP
C - - - - - 0x014568 05:8558: EA        NOP
C - - - - - 0x014569 05:8559: AD 02 20  LDA $2002
C - - - - - 0x01456C 05:855C: A5 58     LDA ram_0058
C - - - - - 0x01456E 05:855E: A4 E2     LDY ram_00E2
C - - - - - 0x014570 05:8560: 8D 06 20  STA $2006
C - - - - - 0x014573 05:8563: 8C 06 20  STY $2006
C - - - - - 0x014576 05:8566: AD 07 20  LDA $2007
C - - - - - 0x014579 05:8569: AD 07 20  LDA $2007
C - - - - - 0x01457C 05:856C: 60        RTS
bra_856D:
C - - - - - 0x01457D 05:856D: A0 5E     LDY #$5E
bra_856F_garbage_loop:
C - - - - - 0x01457F 05:856F: EA        NOP
C - - - - - 0x014580 05:8570: 88        DEY
C - - - - - 0x014581 05:8571: 10 FC     BPL bra_856F_garbage_loop
C - - - - - 0x014583 05:8573: EA        NOP
C - - - - - 0x014584 05:8574: EA        NOP
C - - - - - 0x014585 05:8575: EA        NOP
C - - - - - 0x014586 05:8576: A5 FF     LDA ram_00FF
C - - - - - 0x014588 05:8578: 29 FE     AND #$FE
C - - - - - 0x01458A 05:857A: 05 5F     ORA ram_005F
C - - - - - 0x01458C 05:857C: 85 FF     STA ram_00FF
C - - - - - 0x01458E 05:857E: 8D 00 20  STA $2000
C - - - - - 0x014591 05:8581: A5 FD     LDA ram_00FD
C - - - - - 0x014593 05:8583: 8D 05 20  STA $2005
C - - - - - 0x014596 05:8586: A9 00     LDA #$00
C - - - - - 0x014598 05:8588: 8D 05 20  STA $2005
bra_858B_RTS:
C - - - - - 0x01459B 05:858B: 60        RTS
bra_858C:
C - - - - - 0x01459C 05:858C: C9 11     CMP #$11
C - - - - - 0x01459E 05:858E: B0 03     BCS bra_8593
C - - - - - 0x0145A0 05:8590: 4C 25 E6  JMP loc_0x01E635_disable_rendering
bra_8593:
C - - - - - 0x0145A3 05:8593: A5 FF     LDA ram_00FF
C - - - - - 0x0145A5 05:8595: 09 01     ORA #$01
C - - - - - 0x0145A7 05:8597: 85 FF     STA ram_00FF
C - - - - - 0x0145A9 05:8599: 8D 00 20  STA $2000
C - - - - - 0x0145AC 05:859C: 60        RTS


; bzk garbage
- - - - - - 0x0145AD 05:859D: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0145B5 05:85A5: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0145BD 05:85AD: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0145C5 05:85B5: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0145CD 05:85BD: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0145D5 05:85C5: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0145DD 05:85CD: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0145E5 05:85D5: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0145ED 05:85DD: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0145F5 05:85E5: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0145FD 05:85ED: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x014605 05:85F5: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01460D 05:85FD: FF        .byte $FF, $FF, $FF   ; 



ofs_0x014610_08:
C - - J - - 0x014610 05:8600: 20 25 E6  JSR sub_0x01E635_disable_rendering
C - - - - - 0x014613 05:8603: A5 13     LDA ram_game_mode_sub
C - - - - - 0x014615 05:8605: D0 0C     BNE bra_8613
C - - - - - 0x014617 05:8607: 8D 5A 00  STA a: ram_005A
C - - - - - 0x01461A 05:860A: 20 6D E4  JSR sub_0x01E47D
C - - - - - 0x01461D 05:860D: 20 2B EA  JSR sub_0x01EA3B
C - - - - - 0x014620 05:8610: 4C 00 EA  JMP loc_0x01EA10
bra_8613:
C - - - - - 0x014623 05:8613: A9 04     LDA #$04
C - - - - - 0x014625 05:8615: 85 14     STA ram_0014
C - - - - - 0x014627 05:8617: 4C 90 6C  JMP loc_bat_6C90



ofs_0x01462A_0D:
C - - J - - 0x01462A 05:861A: 20 6D E4  JSR sub_0x01E47D
C - - - - - 0x01462D 05:861D: 20 AC B4  JSR sub_B4AC
C - - - - - 0x014630 05:8620: B0 03     BCS bra_8625
C - - - - - 0x014632 05:8622: 4C 90 6C  JMP loc_bat_6C90
bra_8625:
- - - - - - 0x014635 05:8625: 4C 50 FF  JMP loc_0x01FF60_RESET_vector



ofs_0x014638_10:
C - - J - - 0x014638 05:8628: A2 00     LDX #$00
C - - - - - 0x01463A 05:862A: 20 F4 ED  JSR sub_0x01EE04
C - - - - - 0x01463D 05:862D: C9 24     CMP #$24
C - - - - - 0x01463F 05:862F: D0 12     BNE bra_8643
C - - - - - 0x014641 05:8631: A9 00     LDA #$00
C - - - - - 0x014643 05:8633: 8D 19 06  STA ram_0619
C - - - - - 0x014646 05:8636: A9 08     LDA #con_sfx_3_walking
C - - - - - 0x014648 05:8638: 8D 03 06  STA ram_sfx_3
C - - - - - 0x01464B 05:863B: A5 84     LDA ram_pos_Y
C - - - - - 0x01464D 05:863D: 18        CLC
C - - - - - 0x01464E 05:863E: 69 10     ADC #$10
C - - - - - 0x014650 05:8640: 8D 12 04  STA ram_0412
bra_8643:
C - - - - - 0x014653 05:8643: E6 11     INC ram_0011
C - - - - - 0x014655 05:8645: 60        RTS



tbl_8646:
- D 0 - - - 0x014656 05:8646: 4E        .byte < off_864E_00   ; 
- D 0 - - - 0x014657 05:8647: 57        .byte < off_8657_01   ; 
- D 0 - - - 0x014658 05:8648: 60        .byte < off_8660_02   ; 
- D 0 - - - 0x014659 05:8649: 69        .byte < off_8669_03   ; 

tbl_864A:
- D 0 - - - 0x01465A 05:864A: 86        .byte > off_864E_00   ; 
- D 0 - - - 0x01465B 05:864B: 86        .byte > off_8657_01   ; 
- D 0 - - - 0x01465C 05:864C: 86        .byte > off_8660_02   ; 
- D 0 - - - 0x01465D 05:864D: 86        .byte > off_8669_03   ; 



off_864E_00:
- D 0 - I - 0x01465E 05:864E: 55        .byte $55   ; 
- D 0 - I - 0x01465F 05:864F: B5        .byte $B5   ; 
- D 0 - I - 0x014660 05:8650: 78        .byte $78   ; 
- D 0 - I - 0x014661 05:8651: 98        .byte $98   ; 
- D 0 - I - 0x014662 05:8652: 7A        .byte $7A   ; 
- D 0 - I - 0x014663 05:8653: 9A        .byte $9A   ; 
- D 0 - I - 0x014664 05:8654: 6C        .byte $6C   ; 
- D 0 - I - 0x014665 05:8655: AC        .byte $AC   ; 
- D 0 - I - 0x014666 05:8656: 8D        .byte $8D   ; 



off_8657_01:
- D 0 - I - 0x014667 05:8657: 82        .byte $82   ; 
- D 0 - I - 0x014668 05:8658: 63        .byte $63   ; 
- D 0 - I - 0x014669 05:8659: A3        .byte $A3   ; 
- D 0 - I - 0x01466A 05:865A: 75        .byte $75   ; 
- D 0 - I - 0x01466B 05:865B: 95        .byte $95   ; 
- D 0 - I - 0x01466C 05:865C: 77        .byte $77   ; 
- D 0 - I - 0x01466D 05:865D: 97        .byte $97   ; 
- D 0 - I - 0x01466E 05:865E: 5A        .byte $5A   ; 
- D 0 - I - 0x01466F 05:865F: BA        .byte $BA   ; 



off_8660_02:
- D 0 - I - 0x014670 05:8660: A3        .byte $A3   ; 
- D 0 - I - 0x014671 05:8661: 75        .byte $75   ; 
- D 0 - I - 0x014672 05:8662: B5        .byte $B5   ; 
- D 0 - I - 0x014673 05:8663: 96        .byte $96   ; 
- D 0 - I - 0x014674 05:8664: 87        .byte $87   ; 
- D 0 - I - 0x014675 05:8665: 99        .byte $99   ; 
- D 0 - I - 0x014676 05:8666: 7A        .byte $7A   ; 
- D 0 - I - 0x014677 05:8667: BA        .byte $BA   ; 
- D 0 - I - 0x014678 05:8668: AC        .byte $AC   ; 



off_8669_03:
- D 0 - I - 0x014679 05:8669: 63        .byte $63   ; 
- D 0 - I - 0x01467A 05:866A: 55        .byte $55   ; 
- D 0 - I - 0x01467B 05:866B: 95        .byte $95   ; 
- D 0 - I - 0x01467C 05:866C: 76        .byte $76   ; 
- D 0 - I - 0x01467D 05:866D: 88        .byte $88   ; 
- D 0 - I - 0x01467E 05:866E: 79        .byte $79   ; 
- D 0 - I - 0x01467F 05:866F: 5A        .byte $5A   ; 
- D 0 - I - 0x014680 05:8670: 9A        .byte $9A   ; 
- D 0 - I - 0x014681 05:8671: 6C        .byte $6C   ; 



tbl_8672:
- D 0 - - - 0x014682 05:8672: 18        .byte $18   ; 
- D 0 - - - 0x014683 05:8673: E8        .byte $E8   ; 
- D 0 - - - 0x014684 05:8674: 28        .byte $28   ; 
- D 0 - - - 0x014685 05:8675: D8        .byte $D8   ; 



_off007_8676_00:
- D 0 - I - 0x014686 05:8676: 03        .byte $03   ; 
- D 0 - I - 0x014687 05:8677: 03        .byte $03   ; 
- D 0 - I - 0x014688 05:8678: 04        .byte $04   ; 
- D 0 - I - 0x014689 05:8679: 03        .byte $03   ; 
- D 0 - I - 0x01468A 05:867A: 04        .byte $04   ; 



_off007_867B_01:
- D 0 - I - 0x01468B 05:867B: 03        .byte $03   ; 
- D 0 - I - 0x01468C 05:867C: 04        .byte $04   ; 
- D 0 - I - 0x01468D 05:867D: 03        .byte $03   ; 
- D 0 - I - 0x01468E 05:867E: 04        .byte $04   ; 



_off007_867F_02:
- D 0 - I - 0x01468F 05:867F: 1A        .byte $1A   ; 
- D 0 - I - 0x014690 05:8680: 1A        .byte $1A   ; 
- D 0 - I - 0x014691 05:8681: 02        .byte $02   ; 
- D 0 - I - 0x014692 05:8682: 01        .byte $01   ; 
- D 0 - I - 0x014693 05:8683: 02        .byte $02   ; 
- D 0 - I - 0x014694 05:8684: 01        .byte $01   ; 



_off007_8685_03:
- D 0 - I - 0x014695 05:8685: 01        .byte $01   ; 
- D 0 - I - 0x014696 05:8686: 02        .byte $02   ; 
- D 0 - I - 0x014697 05:8687: 01        .byte $01   ; 
- D 0 - I - 0x014698 05:8688: 02        .byte $02   ; 



_off007_8689_04:
- D 0 - I - 0x014699 05:8689: 01        .byte $01   ; 
- D 0 - I - 0x01469A 05:868A: 0F        .byte $0F   ; 
- D 0 - I - 0x01469B 05:868B: 02        .byte $02   ; 
- D 0 - I - 0x01469C 05:868C: 01        .byte $01   ; 
- D 0 - I - 0x01469D 05:868D: 10        .byte $10   ; 
- D 0 - I - 0x01469E 05:868E: 02        .byte $02   ; 



_off007_868F_05:
- D 0 - I - 0x01469F 05:868F: 0F        .byte $0F   ; 
- D 0 - I - 0x0146A0 05:8690: 1A        .byte $1A   ; 
- D 0 - I - 0x0146A1 05:8691: 10        .byte $10   ; 
- D 0 - I - 0x0146A2 05:8692: 1A        .byte $1A   ; 
- D 0 - I - 0x0146A3 05:8693: 0F        .byte $0F   ; 
- D 0 - I - 0x0146A4 05:8694: 1A        .byte $1A   ; 



_off007_8695_06:
- D 0 - I - 0x0146A5 05:8695: 09        .byte $09   ; 
- D 0 - I - 0x0146A6 05:8696: 08        .byte $08   ; 
- D 0 - I - 0x0146A7 05:8697: 08        .byte $08   ; 
- D 0 - I - 0x0146A8 05:8698: 08        .byte $08   ; 
- D 0 - I - 0x0146A9 05:8699: 08        .byte $08   ; 



_off007_869A_07:
- D 0 - I - 0x0146AA 05:869A: 08        .byte $08   ; 
- D 0 - I - 0x0146AB 05:869B: 07        .byte $07   ; 
- D 0 - I - 0x0146AC 05:869C: 08        .byte $08   ; 
- D 0 - I - 0x0146AD 05:869D: 07        .byte $07   ; 



_off007_869E_08:
- D 0 - I - 0x0146AE 05:869E: 08        .byte $08   ; 
- D 0 - I - 0x0146AF 05:869F: 09        .byte $09   ; 
- D 0 - I - 0x0146B0 05:86A0: 08        .byte $08   ; 
- D 0 - I - 0x0146B1 05:86A1: 09        .byte $09   ; 
- D 0 - I - 0x0146B2 05:86A2: 08        .byte $08   ; 



_off007_86A3_09:
- D 0 - I - 0x0146B3 05:86A3: 0A        .byte $0A   ; 
- D 0 - I - 0x0146B4 05:86A4: 07        .byte $07   ; 
- D 0 - I - 0x0146B5 05:86A5: 0A        .byte $0A   ; 
- D 0 - I - 0x0146B6 05:86A6: 07        .byte $07   ; 
- D 0 - I - 0x0146B7 05:86A7: 07        .byte $07   ; 



_off007_86A8_0A:
- D 0 - I - 0x0146B8 05:86A8: 03        .byte $03   ; 
- D 0 - I - 0x0146B9 05:86A9: 0A        .byte $0A   ; 
- D 0 - I - 0x0146BA 05:86AA: 04        .byte $04   ; 
- D 0 - I - 0x0146BB 05:86AB: 0A        .byte $0A   ; 
- D 0 - I - 0x0146BC 05:86AC: 04        .byte $04   ; 
- D 0 - I - 0x0146BD 05:86AD: 04        .byte $04   ; 



_off007_86AE_0B:
- D 0 - I - 0x0146BE 05:86AE: 4A        .byte $4A   ; 
- D 0 - I - 0x0146BF 05:86AF: 00        .byte $00   ; 
- D 0 - I - 0x0146C0 05:86B0: 00        .byte $00   ; 
- D 0 - I - 0x0146C1 05:86B1: 00        .byte $00   ; 
- D 0 - I - 0x0146C2 05:86B2: 13        .byte $13   ; 
- D 0 - I - 0x0146C3 05:86B3: 13        .byte $13   ; 
; bzk garbage?
- - - - - - 0x0146C4 05:86B4: 00        .byte $00   ; 
- - - - - - 0x0146C5 05:86B5: 13        .byte $13   ; 



_off007_86B6_0C:
- D 0 - I - 0x0146C6 05:86B6: 4A        .byte $4A   ; 
- D 0 - I - 0x0146C7 05:86B7: 00        .byte $00   ; 
- D 0 - I - 0x0146C8 05:86B8: 00        .byte $00   ; 
- D 0 - I - 0x0146C9 05:86B9: 00        .byte $00   ; 
- D 0 - I - 0x0146CA 05:86BA: 1B        .byte $1B   ; 
- D 0 - I - 0x0146CB 05:86BB: 1B        .byte $1B   ; 
- D 0 - I - 0x0146CC 05:86BC: 1B        .byte $1B   ; 
- D 0 - I - 0x0146CD 05:86BD: 1B        .byte $1B   ; 



_off007_86BE_0D:
- D 0 - I - 0x0146CE 05:86BE: 2B        .byte $2B   ; 
- D 0 - I - 0x0146CF 05:86BF: 2B        .byte $2B   ; 
- D 0 - I - 0x0146D0 05:86C0: 2B        .byte $2B   ; 
- D 0 - I - 0x0146D1 05:86C1: 13        .byte $13   ; 
- D 0 - I - 0x0146D2 05:86C2: 13        .byte $13   ; 
- D 0 - I - 0x0146D3 05:86C3: 1B        .byte $1B   ; 
- D 0 - I - 0x0146D4 05:86C4: 1B        .byte $1B   ; 
- D 0 - I - 0x0146D5 05:86C5: 1B        .byte $1B   ; 



_off007_86C6_0E:
- D 0 - I - 0x0146D6 05:86C6: 16        .byte $16   ; 
- D 0 - I - 0x0146D7 05:86C7: 30        .byte $30   ; 
- D 0 - I - 0x0146D8 05:86C8: 30        .byte $30   ; 
- D 0 - I - 0x0146D9 05:86C9: 1B        .byte $1B   ; 
- D 0 - I - 0x0146DA 05:86CA: 1B        .byte $1B   ; 
- D 0 - I - 0x0146DB 05:86CB: 16        .byte $16   ; 
; bzk garbage?
- - - - - - 0x0146DC 05:86CC: 00        .byte $00   ; 
- - - - - - 0x0146DD 05:86CD: 00        .byte $00   ; 



_off007_86CE_0F:
- D 0 - I - 0x0146DE 05:86CE: 2B        .byte $2B   ; 
- D 0 - I - 0x0146DF 05:86CF: 2B        .byte $2B   ; 
- D 0 - I - 0x0146E0 05:86D0: 2B        .byte $2B   ; 
- D 0 - I - 0x0146E1 05:86D1: 23        .byte $23   ; 
- D 0 - I - 0x0146E2 05:86D2: 23        .byte $23   ; 
- D 0 - I - 0x0146E3 05:86D3: 24        .byte $24   ; 
- D 0 - I - 0x0146E4 05:86D4: 23        .byte $23   ; 
- D 0 - I - 0x0146E5 05:86D5: 24        .byte $24   ; 



_off007_86D6_10:
- D 0 - I - 0x0146E6 05:86D6: 2B        .byte $2B   ; 
- D 0 - I - 0x0146E7 05:86D7: 2B        .byte $2B   ; 
- D 0 - I - 0x0146E8 05:86D8: 12        .byte $12   ; 
- D 0 - I - 0x0146E9 05:86D9: 12        .byte $12   ; 
- D 0 - I - 0x0146EA 05:86DA: 12        .byte $12   ; 
; bzk garbage?
- - - - - - 0x0146EB 05:86DB: 00        .byte $00   ; 
- - - - - - 0x0146EC 05:86DC: 00        .byte $00   ; 
- - - - - - 0x0146ED 05:86DD: 00        .byte $00   ; 



_off007_86DE_11:
- D 0 - I - 0x0146EE 05:86DE: 2B        .byte $2B   ; 
- D 0 - I - 0x0146EF 05:86DF: 2B        .byte $2B   ; 
- D 0 - I - 0x0146F0 05:86E0: 13        .byte $13   ; 
- D 0 - I - 0x0146F1 05:86E1: 13        .byte $13   ; 
- D 0 - I - 0x0146F2 05:86E2: 17        .byte $17   ; 
- D 0 - I - 0x0146F3 05:86E3: 17        .byte $17   ; 



_off007_86E4_12:
- D 0 - I - 0x0146F4 05:86E4: 2B        .byte $2B   ; 
- D 0 - I - 0x0146F5 05:86E5: 2B        .byte $2B   ; 
- D 0 - I - 0x0146F6 05:86E6: 0C        .byte $0C   ; 
- D 0 - I - 0x0146F7 05:86E7: 0B        .byte $0B   ; 
- D 0 - I - 0x0146F8 05:86E8: 0B        .byte $0B   ; 
- D 0 - I - 0x0146F9 05:86E9: 30        .byte $30   ; 
- D 0 - I - 0x0146FA 05:86EA: 30        .byte $30   ; 
- D 0 - I - 0x0146FB 05:86EB: 30        .byte $30   ; 



_off007_86EC_13:
- D 0 - I - 0x0146FC 05:86EC: 2B        .byte $2B   ; 
- D 0 - I - 0x0146FD 05:86ED: 2B        .byte $2B   ; 
- D 0 - I - 0x0146FE 05:86EE: 05        .byte $05   ; 
- D 0 - I - 0x0146FF 05:86EF: 05        .byte $05   ; 
- D 0 - I - 0x014700 05:86F0: 05        .byte $05   ; 
- D 0 - I - 0x014701 05:86F1: 1B        .byte $1B   ; 
- D 0 - I - 0x014702 05:86F2: 1B        .byte $1B   ; 
- D 0 - I - 0x014703 05:86F3: 1B        .byte $1B   ; 



_off007_86F4_14:
- D 0 - I - 0x014704 05:86F4: 4A        .byte $4A   ; 
- D 0 - I - 0x014705 05:86F5: 00        .byte $00   ; 
- D 0 - I - 0x014706 05:86F6: 00        .byte $00   ; 
- D 0 - I - 0x014707 05:86F7: 00        .byte $00   ; 
- D 0 - I - 0x014708 05:86F8: 17        .byte $17   ; 
- D 0 - I - 0x014709 05:86F9: 17        .byte $17   ; 
- D 0 - I - 0x01470A 05:86FA: 17        .byte $17   ; 
- D 0 - I - 0x01470B 05:86FB: 17        .byte $17   ; 



_off007_86FC_15:
- D 0 - I - 0x01470C 05:86FC: 4A        .byte $4A   ; 
- D 0 - I - 0x01470D 05:86FD: 00        .byte $00   ; 
- D 0 - I - 0x01470E 05:86FE: 00        .byte $00   ; 
- D 0 - I - 0x01470F 05:86FF: 00        .byte $00   ; 
- D 0 - I - 0x014710 05:8700: 23        .byte $23   ; 
- D 0 - I - 0x014711 05:8701: 24        .byte $24   ; 
- D 0 - I - 0x014712 05:8702: 23        .byte $23   ; 
- D 0 - I - 0x014713 05:8703: 24        .byte $24   ; 



_off007_8704_16:
- D 0 - I - 0x014714 05:8704: 16        .byte $16   ; 
- D 0 - I - 0x014715 05:8705: 0C        .byte $0C   ; 
- D 0 - I - 0x014716 05:8706: 0B        .byte $0B   ; 
- D 0 - I - 0x014717 05:8707: 0C        .byte $0C   ; 
- D 0 - I - 0x014718 05:8708: 0B        .byte $0B   ; 
- D 0 - I - 0x014719 05:8709: 16        .byte $16   ; 



_off007_870A_17:
- D 0 - I - 0x01471A 05:870A: 2B        .byte $2B   ; 
- D 0 - I - 0x01471B 05:870B: 2B        .byte $2B   ; 
- D 0 - I - 0x01471C 05:870C: 2B        .byte $2B   ; 
- D 0 - I - 0x01471D 05:870D: 27        .byte $27   ; 
- D 0 - I - 0x01471E 05:870E: 27        .byte $27   ; 
- D 0 - I - 0x01471F 05:870F: 27        .byte $27   ; 
- D 0 - I - 0x014720 05:8710: 27        .byte $27   ; 
- D 0 - I - 0x014721 05:8711: 27        .byte $27   ; 



_off007_8712_18:
- D 0 - I - 0x014722 05:8712: 05        .byte $05   ; 
- D 0 - I - 0x014723 05:8713: 06        .byte $06   ; 
- D 0 - I - 0x014724 05:8714: 06        .byte $06   ; 
- D 0 - I - 0x014725 05:8715: 05        .byte $05   ; 
- D 0 - I - 0x014726 05:8716: 06        .byte $06   ; 
- D 0 - I - 0x014727 05:8717: 05        .byte $05   ; 
; bzk garbage?
- - - - - - 0x014728 05:8718: 00        .byte $00   ; 
- - - - - - 0x014729 05:8719: 00        .byte $00   ; 



_off007_871A_19:
- D 0 - I - 0x01472A 05:871A: 23        .byte $23   ; 
- D 0 - I - 0x01472B 05:871B: 23        .byte $23   ; 
- D 0 - I - 0x01472C 05:871C: 24        .byte $24   ; 
- D 0 - I - 0x01472D 05:871D: 23        .byte $23   ; 
- D 0 - I - 0x01472E 05:871E: 24        .byte $24   ; 



_off007_871F_1A:
- D 0 - I - 0x01472F 05:871F: 2B        .byte $2B   ; 
- D 0 - I - 0x014730 05:8720: 17        .byte $17   ; 
- D 0 - I - 0x014731 05:8721: 23        .byte $23   ; 
- D 0 - I - 0x014732 05:8722: 23        .byte $23   ; 
- D 0 - I - 0x014733 05:8723: 17        .byte $17   ; 
- D 0 - I - 0x014734 05:8724: 24        .byte $24   ; 
- D 0 - I - 0x014735 05:8725: 17        .byte $17   ; 
- D 0 - I - 0x014736 05:8726: 24        .byte $24   ; 



_off007_8727_1B:
- D 0 - I - 0x014737 05:8727: 2D        .byte $2D   ; 
- D 0 - I - 0x014738 05:8728: 2D        .byte $2D   ; 
- D 0 - I - 0x014739 05:8729: 2D        .byte $2D   ; 
- D 0 - I - 0x01473A 05:872A: 2C        .byte $2C   ; 
- D 0 - I - 0x01473B 05:872B: 23        .byte $23   ; 
- D 0 - I - 0x01473C 05:872C: 24        .byte $24   ; 
- D 0 - I - 0x01473D 05:872D: 23        .byte $23   ; 
- D 0 - I - 0x01473E 05:872E: 24        .byte $24   ; 



_off007_872F_1C:
- D 0 - I - 0x01473F 05:872F: 2D        .byte $2D   ; 
- D 0 - I - 0x014740 05:8730: 2D        .byte $2D   ; 
- D 0 - I - 0x014741 05:8731: 2D        .byte $2D   ; 
- D 0 - I - 0x014742 05:8732: 2C        .byte $2C   ; 
- D 0 - I - 0x014743 05:8733: 0C        .byte $0C   ; 
- D 0 - I - 0x014744 05:8734: 0B        .byte $0B   ; 
- D 0 - I - 0x014745 05:8735: 0C        .byte $0C   ; 
- D 0 - I - 0x014746 05:8736: 0B        .byte $0B   ; 



_off007_8737_1D:
- - - - - - 0x014747 05:8737: 2D        .byte $2D   ; 
- - - - - - 0x014748 05:8738: 2D        .byte $2D   ; 
- - - - - - 0x014749 05:8739: 2D        .byte $2D   ; 
- - - - - - 0x01474A 05:873A: 2C        .byte $2C   ; 
- - - - - - 0x01474B 05:873B: 27        .byte $27   ; 
- - - - - - 0x01474C 05:873C: 27        .byte $27   ; 
- - - - - - 0x01474D 05:873D: 27        .byte $27   ; 
- - - - - - 0x01474E 05:873E: 27        .byte $27   ; 



tbl_873F:
- D 0 - - - 0x01474F 05:873F: 76 86     .word _off007_8676_00
- D 0 - - - 0x014751 05:8741: 7B 86     .word _off007_867B_01
- D 0 - - - 0x014753 05:8743: 7F 86     .word _off007_867F_02
- D 0 - - - 0x014755 05:8745: 85 86     .word _off007_8685_03
- D 0 - - - 0x014757 05:8747: 89 86     .word _off007_8689_04
- D 0 - - - 0x014759 05:8749: 8F 86     .word _off007_868F_05
- D 0 - - - 0x01475B 05:874B: 95 86     .word _off007_8695_06
- D 0 - - - 0x01475D 05:874D: 9A 86     .word _off007_869A_07
- D 0 - - - 0x01475F 05:874F: 9E 86     .word _off007_869E_08
- D 0 - - - 0x014761 05:8751: A3 86     .word _off007_86A3_09
- D 0 - - - 0x014763 05:8753: A8 86     .word _off007_86A8_0A
- D 0 - - - 0x014765 05:8755: AE 86     .word _off007_86AE_0B
- D 0 - - - 0x014767 05:8757: B6 86     .word _off007_86B6_0C
- D 0 - - - 0x014769 05:8759: BE 86     .word _off007_86BE_0D
- D 0 - - - 0x01476B 05:875B: C6 86     .word _off007_86C6_0E
- D 0 - - - 0x01476D 05:875D: CE 86     .word _off007_86CE_0F
- D 0 - - - 0x01476F 05:875F: D6 86     .word _off007_86D6_10
- D 0 - - - 0x014771 05:8761: DE 86     .word _off007_86DE_11
- D 0 - - - 0x014773 05:8763: E4 86     .word _off007_86E4_12
- D 0 - - - 0x014775 05:8765: EC 86     .word _off007_86EC_13
- D 0 - - - 0x014777 05:8767: F4 86     .word _off007_86F4_14
- D 0 - - - 0x014779 05:8769: FC 86     .word _off007_86FC_15
- D 0 - - - 0x01477B 05:876B: 04 87     .word _off007_8704_16
- D 0 - - - 0x01477D 05:876D: 0A 87     .word _off007_870A_17
- D 0 - - - 0x01477F 05:876F: 12 87     .word _off007_8712_18
- D 0 - - - 0x014781 05:8771: 1A 87     .word _off007_871A_19
- D 0 - - - 0x014783 05:8773: 1F 87     .word _off007_871F_1A
- D 0 - - - 0x014785 05:8775: 27 87     .word _off007_8727_1B
- D 0 - - - 0x014787 05:8777: 2F 87     .word _off007_872F_1C
- - - - - - 0x014789 05:8779: 37 87     .word _off007_8737_1D



ofs_0x01478B_04:
C - - J - - 0x01478B 05:877B: A6 13     LDX ram_game_mode_sub
C - - - - - 0x01478D 05:877D: F0 47     BEQ bra_87C6
C - - - - - 0x01478F 05:877F: CA        DEX
C - - - - - 0x014790 05:8780: D0 0C     BNE bra_878E
C - - - - - 0x014792 05:8782: A5 E9     LDA ram_00E9
C - - - - - 0x014794 05:8784: 30 05     BMI bra_878B
C - - - - - 0x014796 05:8786: 20 16 AC  JSR sub_AC16
C - - - - - 0x014799 05:8789: 90 02     BCC bra_878D_RTS
bra_878B:
C - - - - - 0x01479B 05:878B: E6 13     INC ram_game_mode_sub
bra_878D_RTS:
C - - - - - 0x01479D 05:878D: 60        RTS
bra_878E:
C - - - - - 0x01479E 05:878E: CA        DEX
C - - - - - 0x01479F 05:878F: D0 28     BNE bra_87B9
C - - - - - 0x0147A1 05:8791: A4 EB     LDY ram_map_location
C - - - - - 0x0147A3 05:8793: 20 8D B6  JSR sub_B68D
C - - - - - 0x0147A6 05:8796: D0 26     BNE bra_87BE
C - - - - - 0x0147A8 05:8798: A5 98     LDA ram_direction
C - - - - - 0x0147AA 05:879A: 20 60 B5  JSR sub_B560
C - - - - - 0x0147AD 05:879D: 38        SEC
C - - - - - 0x0147AE 05:879E: E5 EB     SBC ram_map_location
C - - - - - 0x0147B0 05:87A0: 20 21 70  JSR sub_bat_7021
C - - - - - 0x0147B3 05:87A3: 18        CLC
C - - - - - 0x0147B4 05:87A4: 65 EB     ADC ram_map_location
C - - - - - 0x0147B6 05:87A6: A8        TAY
C - - - - - 0x0147B7 05:87A7: 20 8D B6  JSR sub_B68D
C - - - - - 0x0147BA 05:87AA: F0 12     BEQ bra_87BE
C - - - - - 0x0147BC 05:87AC: AD 1F 05  LDA ram_051F
C - - - - - 0x0147BF 05:87AF: D0 0D     BNE bra_87BE
C - - - - - 0x0147C1 05:87B1: A9 C0     LDA #$C0
sub_87B3:
C - - - - - 0x0147C3 05:87B3: 8D 1C 05  STA ram_051C
C - - - - - 0x0147C6 05:87B6: E6 13     INC ram_game_mode_sub
bra_87B8_RTS:
C - - - - - 0x0147C8 05:87B8: 60        RTS
bra_87B9:
C - - - - - 0x0147C9 05:87B9: 20 B7 74  JSR sub_bat_74B7
C - - - - - 0x0147CC 05:87BC: D0 FA     BNE bra_87B8_RTS
bra_87BE:
C - - - - - 0x0147CE 05:87BE: A9 00     LDA #$00
C - - - - - 0x0147D0 05:87C0: 85 13     STA ram_game_mode_sub
C - - - - - 0x0147D2 05:87C2: 8D 1F 05  STA ram_051F
C - - - - - 0x0147D5 05:87C5: 60        RTS



bra_87C6:   ; bzk
sub_87C6:
sub_0x0147D6:
C - - - - - 0x0147D6 05:87C6: 20 3D EA  JSR sub_0x01EA4D
C - - - - - 0x0147D9 05:87C9: 20 51 EA  JSR sub_0x01EA61
C - - - - - 0x0147DC 05:87CC: A9 05     LDA #$05
C - - - - - 0x0147DE 05:87CE: A0 1F     LDY #$1F
C - - - - - 0x0147E0 05:87D0: 20 08 E6  JSR sub_0x01E618
C - - - - - 0x0147E3 05:87D3: A9 00     LDA #$00
C - - - - - 0x0147E5 05:87D5: 85 54     STA ram_0054
C - - - - - 0x0147E7 05:87D7: 85 55     STA ram_0055
C - - - - - 0x0147E9 05:87D9: A4 EB     LDY ram_map_location
C - - - - - 0x0147EB 05:87DB: B9 FE 6A  LDA ram_6AFE,Y
C - - - - - 0x0147EE 05:87DE: 8D CD 04  STA ram_04CD
C - - - - - 0x0147F1 05:87E1: 20 B6 B0  JSR sub_B0B6
C - - - - - 0x0147F4 05:87E4: A5 5A     LDA ram_005A
C - - - - - 0x0147F6 05:87E6: F0 38     BEQ bra_8820
C - - - - - 0x0147F8 05:87E8: A5 10     LDA ram_0010
C - - - - - 0x0147FA 05:87EA: D0 29     BNE bra_8815
C - - - - - 0x0147FC 05:87EC: A4 EB     LDY ram_map_location
C - - - - - 0x0147FE 05:87EE: B9 7E 68  LDA ram_687E,Y
C - - - - - 0x014801 05:87F1: 29 F0     AND #$F0
C - - - - - 0x014803 05:87F3: 85 70     STA ram_pos_X
C - - - - - 0x014805 05:87F5: B9 FE 6A  LDA ram_6AFE,Y
C - - - - - 0x014808 05:87F8: 29 07     AND #$07
C - - - - - 0x01480A 05:87FA: 0A        ASL
C - - - - - 0x01480B 05:87FB: 0A        ASL
C - - - - - 0x01480C 05:87FC: 0A        ASL
C - - - - - 0x01480D 05:87FD: 0A        ASL
C - - - - - 0x01480E 05:87FE: 69 4D     ADC #$4D
C - - - - - 0x014810 05:8800: 85 84     STA ram_pos_Y
C - - - - - 0x014812 05:8802: A4 65     LDY ram_0065
C - - - - - 0x014814 05:8804: C0 24     CPY #$24
C - - - - - 0x014816 05:8806: D0 0D     BNE bra_8815
C - - - - - 0x014818 05:8808: 8D 12 04  STA ram_0412
C - - - - - 0x01481B 05:880B: 18        CLC
C - - - - - 0x01481C 05:880C: 69 10     ADC #$10
C - - - - - 0x01481E 05:880E: 85 84     STA ram_pos_Y
C - - - - - 0x014820 05:8810: A9 08     LDA #con_sfx_3_walking
C - - - - - 0x014822 05:8812: 8D 03 06  STA ram_sfx_3
bra_8815:
C - - - - - 0x014825 05:8815: A9 04     LDA #con_dir_Down
C - - - - - 0x014827 05:8817: 85 98     STA ram_direction
C - - - - - 0x014829 05:8819: A9 00     LDA #$00
C - - - - - 0x01482B 05:881B: 85 53     STA ram_0053
C - - - - - 0x01482D 05:881D: 4C 59 88  JMP loc_8859
bra_8820:
C - - - - - 0x014830 05:8820: A5 98     LDA ram_direction
C - - - - - 0x014832 05:8822: 85 53     STA ram_0053
C - - - - - 0x014834 05:8824: 20 13 70  JSR sub_bat_7013
C - - - - - 0x014837 05:8827: 25 EE     AND ram_00EE
C - - - - - 0x014839 05:8829: 85 55     STA ram_0055
C - - - - - 0x01483B 05:882B: F0 04     BEQ bra_8831
C - - - - - 0x01483D 05:882D: A9 02     LDA #$02
C - - - - - 0x01483F 05:882F: 85 54     STA ram_0054
bra_8831:
C - - - - - 0x014841 05:8831: A5 10     LDA ram_0010
C - - - - - 0x014843 05:8833: F0 24     BEQ bra_8859
C - - - - - 0x014845 05:8835: A0 00     LDY #$00
C - - - - - 0x014847 05:8837: A5 98     LDA ram_direction
C - - - - - 0x014849 05:8839: 29 03     AND #con_dir__LR
C - - - - - 0x01484B 05:883B: F0 08     BEQ bra_8845
C - - - - - 0x01484D 05:883D: 29 01     AND #con_dir_Right
C - - - - - 0x01484F 05:883F: D0 02     BNE bra_8843
C - - - - - 0x014851 05:8841: A0 F0     LDY #$F0
bra_8843:
C - - - - - 0x014853 05:8843: 84 70     STY ram_pos_X
bra_8845:
C - - - - - 0x014855 05:8845: 20 C3 B0  JSR sub_B0C3
C - - - - - 0x014858 05:8848: 29 07     AND #$07
C - - - - - 0x01485A 05:884A: F0 0A     BEQ bra_8856
C - - - - - 0x01485C 05:884C: C9 05     CMP #$05
C - - - - - 0x01485E 05:884E: F0 06     BEQ bra_8856
C - - - - - 0x014860 05:8850: C9 06     CMP #$06
C - - - - - 0x014862 05:8852: F0 02     BEQ bra_8856
C - - - - - 0x014864 05:8854: C8        INY
C - - - - - 0x014865 05:8855: C8        INY
bra_8856:
C - - - - - 0x014866 05:8856: B9 72 86  LDA tbl_8672,Y
bra_8859:
loc_8859:
C D 0 - - - 0x014869 05:8859: 8D 94 03  STA ram_0394
C - - - - - 0x01486C 05:885C: 20 5E B0  JSR sub_B05E
C - - - - - 0x01486F 05:885F: A2 0B     LDX #$0B
C - - - - - 0x014871 05:8861: 8E 40 03  STX ram_0340
bra_8864:
C - - - - - 0x014874 05:8864: DE 92 04  DEC ram_0492,X
C - - - - - 0x014877 05:8867: 20 E4 EE  JSR sub_0x01EEF4
C - - - - - 0x01487A 05:886A: 95 AC     STA ram_drop_id,X
C - - - - - 0x01487C 05:886C: 95 98     STA ram_direction,X
C - - - - - 0x01487E 05:886E: 95 3D     STA ram_003D,X
C - - - - - 0x014880 05:8870: FE D0 03  INC ram_03D0,X
C - - - - - 0x014883 05:8873: FE 05 04  INC ram_0405,X
C - - - - - 0x014886 05:8876: A9 20     LDA #$20
C - - - - - 0x014888 05:8878: 9D BC 03  STA ram_03BC,X
C - - - - - 0x01488B 05:887B: CA        DEX
C - - - - - 0x01488C 05:887C: D0 E6     BNE bra_8864
C - - - - - 0x01488E 05:887E: A4 EB     LDY ram_map_location
C - - - - - 0x014890 05:8880: B9 7E 69  LDA ram_697E,Y
C - - - - - 0x014893 05:8883: 48        PHA
C - - - - - 0x014894 05:8884: 29 3F     AND #$3F
C - - - - - 0x014896 05:8886: 85 02     STA ram_0002
C - - - - - 0x014898 05:8888: B9 FE 69  LDA ram_69FE,Y
C - - - - - 0x01489B 05:888B: 0A        ASL
C - - - - - 0x01489C 05:888C: 90 07     BCC bra_8895
C - - - - - 0x01489E 05:888E: A5 02     LDA ram_0002
C - - - - - 0x0148A0 05:8890: 18        CLC
C - - - - - 0x0148A1 05:8891: 69 40     ADC #$40
C - - - - - 0x0148A3 05:8893: 85 02     STA ram_0002
bra_8895:
C - - - - - 0x0148A5 05:8895: 68        PLA
C - - - - - 0x0148A6 05:8896: 29 C0     AND #$C0
C - - - - - 0x0148A8 05:8898: 18        CLC
C - - - - - 0x0148A9 05:8899: 2A        ROL
C - - - - - 0x0148AA 05:889A: 2A        ROL
C - - - - - 0x0148AB 05:889B: 2A        ROL
C - - - - - 0x0148AC 05:889C: A8        TAY
C - - - - - 0x0148AD 05:889D: B9 A2 6B  LDA ram_6BA2,Y
C - - - - - 0x0148B0 05:88A0: A4 02     LDY ram_0002
C - - - - - 0x0148B2 05:88A2: C0 62     CPY #$62
C - - - - - 0x0148B4 05:88A4: B0 06     BCS bra_88AC
C - - - - - 0x0148B6 05:88A6: C0 32     CPY #$32
C - - - - - 0x0148B8 05:88A8: 90 02     BCC bra_88AC
C - - - - - 0x0148BA 05:88AA: A9 01     LDA #$01
bra_88AC:
C - - - - - 0x0148BC 05:88AC: 85 03     STA ram_0003
C - - - - - 0x0148BE 05:88AE: A5 10     LDA ram_0010
C - - - - - 0x0148C0 05:88B0: D0 06     BNE bra_88B8
C - - - - - 0x0148C2 05:88B2: 20 AE 90  JSR sub_90AE
C - - - - - 0x0148C5 05:88B5: 4C C7 88  JMP loc_88C7
bra_88B8:
C - - - - - 0x0148C8 05:88B8: 20 93 92  JSR sub_9293
C - - - - - 0x0148CB 05:88BB: A5 12     LDA ram_game_mode_main
C - - - - - 0x0148CD 05:88BD: C9 09     CMP #con_GM_09
C - - - - - 0x0148CF 05:88BF: D0 06     BNE bra_88C7
C - - - - - 0x0148D1 05:88C1: A9 00     LDA #$00
C - - - - - 0x0148D3 05:88C3: 85 02     STA ram_0002
C - - - - - 0x0148D5 05:88C5: 85 03     STA ram_0003
bra_88C7:
loc_88C7:
C D 0 - - - 0x0148D7 05:88C7: A5 03     LDA ram_0003
C - - - - - 0x0148D9 05:88C9: 8D 4E 03  STA ram_034E
C - - - - - 0x0148DC 05:88CC: F0 3B     BEQ bra_8909
C - - - - - 0x0148DE 05:88CE: A5 02     LDA ram_0002
C - - - - - 0x0148E0 05:88D0: F0 37     BEQ bra_8909
C - - - - - 0x0148E2 05:88D2: C9 62     CMP #$62
C - - - - - 0x0148E4 05:88D4: B0 0F     BCS bra_88E5
C - - - - - 0x0148E6 05:88D6: A2 00     LDX #$00
bra_88D8:
C - - - - - 0x0148E8 05:88D8: A5 02     LDA ram_0002
C - - - - - 0x0148EA 05:88DA: 9D 50 03  STA ram_0350,X
C - - - - - 0x0148ED 05:88DD: E8        INX
C - - - - - 0x0148EE 05:88DE: C6 03     DEC ram_0003
C - - - - - 0x0148F0 05:88E0: D0 F6     BNE bra_88D8
C - - - - - 0x0148F2 05:88E2: 4C 03 89  JMP loc_8903
bra_88E5:
C - - - - - 0x0148F5 05:88E5: A5 02     LDA ram_0002
C - - - - - 0x0148F7 05:88E7: 38        SEC
C - - - - - 0x0148F8 05:88E8: E9 62     SBC #$62
C - - - - - 0x0148FA 05:88EA: 0A        ASL
C - - - - - 0x0148FB 05:88EB: A8        TAY
C - - - - - 0x0148FC 05:88EC: B9 3F 87  LDA tbl_873F,Y
C - - - - - 0x0148FF 05:88EF: 85 04     STA ram_0004
C - - - - - 0x014901 05:88F1: C8        INY
C - - - - - 0x014902 05:88F2: B9 3F 87  LDA tbl_873F,Y
C - - - - - 0x014905 05:88F5: 85 05     STA ram_0005
C - - - - - 0x014907 05:88F7: A0 00     LDY #$00
bra_88F9_loop:
C - - - - - 0x014909 05:88F9: B1 04     LDA (ram_0004),Y
C - - - - - 0x01490B 05:88FB: 99 50 03  STA ram_0350,Y
C - - - - - 0x01490E 05:88FE: C8        INY
C - - - - - 0x01490F 05:88FF: C4 03     CPY ram_0003
C - - - - - 0x014911 05:8901: D0 F6     BNE bra_88F9_loop
loc_8903:
C D 0 - - - 0x014913 05:8903: AD 50 03  LDA ram_0350
C - - - - - 0x014916 05:8906: 8D 5F 03  STA ram_035F
bra_8909:
C - - - - - 0x014919 05:8909: 20 6E 89  JSR sub_896E
C - - - - - 0x01491C 05:890C: A5 10     LDA ram_0010
C - - - - - 0x01491E 05:890E: D0 03     BNE bra_8913
C - - - - - 0x014920 05:8910: 20 41 89  JSR sub_8941
bra_8913:
C - - - - - 0x014923 05:8913: 20 DE 71  JSR sub_bat_71DE
C - - - - - 0x014926 05:8916: A9 00     LDA #$00
C - - - - - 0x014928 05:8918: 85 3D     STA ram_003D
C - - - - - 0x01492A 05:891A: 85 C0     STA ram_00C0
C - - - - - 0x01492C 05:891C: 85 D3     STA ram_00D3
C - - - - - 0x01492E 05:891E: A9 04     LDA #$04
C - - - - - 0x014930 05:8920: 8D D0 03  STA ram_03D0
C - - - - - 0x014933 05:8923: 20 66 B3  JSR sub_B366
C - - - - - 0x014936 05:8926: 20 D3 EA  JSR sub_0x01EAE3
sub_8929:
sub_0x014939:
C - - - - - 0x014939 05:8929: 20 40 6E  JSR sub_bat_6E40
C - - - - - 0x01493C 05:892C: A5 12     LDA ram_game_mode_main
C - - - - - 0x01493E 05:892E: C9 0B     CMP #con_GM_0B
C - - - - - 0x014940 05:8930: F0 07     BEQ bra_8939
C - - - - - 0x014942 05:8932: C9 0C     CMP #con_GM_0C
C - - - - - 0x014944 05:8934: F0 03     BEQ bra_8939
C - - - - - 0x014946 05:8936: 20 38 F2  JSR sub_0x01F248
bra_8939:
C - - - - - 0x014949 05:8939: A5 5A     LDA ram_005A
C - - - - - 0x01494B 05:893B: F0 03     BEQ bra_8940_RTS
C - - - - - 0x01494D 05:893D: 20 AB 8B  JSR sub_8BAB
bra_8940_RTS:
C - - - - - 0x014950 05:8940: 60        RTS



sub_8941:
C - - - - - 0x014951 05:8941: A5 EB     LDA ram_map_location
C - - - - - 0x014953 05:8943: C9 3F     CMP #$3F
C - - - - - 0x014955 05:8945: F0 04     BEQ bra_894B
C - - - - - 0x014957 05:8947: C9 55     CMP #$55
C - - - - - 0x014959 05:8949: D0 05     BNE bra_8950
bra_894B:
C - - - - - 0x01495B 05:894B: A9 61     LDA #$61
C - - - - - 0x01495D 05:894D: 4C 5D 89  JMP loc_895D
bra_8950:
C - - - - - 0x014960 05:8950: AD 2C 05  LDA ram_052C
C - - - - - 0x014963 05:8953: 85 7B     STA ram_007B
C - - - - - 0x014965 05:8955: AD 2D 05  LDA ram_052D
C - - - - - 0x014968 05:8958: 85 8F     STA ram_008F
C - - - - - 0x01496A 05:895A: AD 2B 05  LDA ram_052B
loc_895D:
C D 0 - - - 0x01496D 05:895D: 8D 5A 03  STA ram_035A
C - - - - - 0x014970 05:8960: 20 B7 6D  JSR sub_bat_6DB7
C - - - - - 0x014973 05:8963: 85 B7     STA ram_00B7
C - - - - - 0x014975 05:8965: 60        RTS



tbl_8966_pos_X:
- D 0 - - - 0x014976 05:8966: 20        .byte $20   ; 00
- D 0 - - - 0x014977 05:8967: 60        .byte $60   ; 01
- D 0 - - - 0x014978 05:8968: 90        .byte $90   ; 02
- D 0 - - - 0x014979 05:8969: D0        .byte $D0   ; 03



tbl_896A_pos_Y:
- D 0 - - - 0x01497A 05:896A: 9D        .byte $9D   ; 00
- - - - - - 0x01497B 05:896B: 5D        .byte $5D   ; 01
- - - - - - 0x01497C 05:896C: 7D        .byte $7D   ; 02
- - - - - - 0x01497D 05:896D: 9D        .byte $9D   ; 03



sub_896E:
C - - - - - 0x01497E 05:896E: AC 4E 03  LDY ram_034E
C - - - - - 0x014981 05:8971: A5 02     LDA ram_0002
C - - - - - 0x014983 05:8973: F0 4F     BEQ bra_89C4
C - - - - - 0x014985 05:8975: C9 37     CMP #$37
C - - - - - 0x014987 05:8977: F0 4B     BEQ bra_89C4
C - - - - - 0x014989 05:8979: A5 10     LDA ram_0010
C - - - - - 0x01498B 05:897B: D0 07     BNE bra_8984
C - - - - - 0x01498D 05:897D: AD CD 04  LDA ram_04CD
C - - - - - 0x014990 05:8980: 29 08     AND #$08
C - - - - - 0x014992 05:8982: D0 40     BNE bra_89C4
bra_8984:
C - - - - - 0x014994 05:8984: AD 4E 03  LDA ram_034E
C - - - - - 0x014997 05:8987: F0 3B     BEQ bra_89C4
C - - - - - 0x014999 05:8989: A5 98     LDA ram_direction
C - - - - - 0x01499B 05:898B: A0 FF     LDY #$FF
bra_898D_loop:
C - - - - - 0x01499D 05:898D: C8        INY
C - - - - - 0x01499E 05:898E: 4A        LSR
C - - - - - 0x01499F 05:898F: 90 FC     BCC bra_898D_loop
C - - - - - 0x0149A1 05:8991: B9 46 86  LDA tbl_8646,Y
C - - - - - 0x0149A4 05:8994: 85 06     STA ram_0006
C - - - - - 0x0149A6 05:8996: B9 4A 86  LDA tbl_864A,Y
C - - - - - 0x0149A9 05:8999: 85 07     STA ram_0007
C - - - - - 0x0149AB 05:899B: AC 24 05  LDY ram_0524
C - - - - - 0x0149AE 05:899E: A2 01     LDX #$01
bra_89A0_loop:
C - - - - - 0x0149B0 05:89A0: B1 06     LDA (ram_0006),Y
C - - - - - 0x0149B2 05:89A2: 48        PHA
C - - - - - 0x0149B3 05:89A3: 0A        ASL
C - - - - - 0x0149B4 05:89A4: 0A        ASL
C - - - - - 0x0149B5 05:89A5: 0A        ASL
C - - - - - 0x0149B6 05:89A6: 0A        ASL
C - - - - - 0x0149B7 05:89A7: 95 70     STA ram_pos_X,X
C - - - - - 0x0149B9 05:89A9: 68        PLA
C - - - - - 0x0149BA 05:89AA: 29 F0     AND #$F0
C - - - - - 0x0149BC 05:89AC: 09 0D     ORA #$0D
C - - - - - 0x0149BE 05:89AE: 95 84     STA ram_pos_Y,X
C - - - - - 0x0149C0 05:89B0: 20 04 8A  JSR sub_8A04
C - - - - - 0x0149C3 05:89B3: B0 01     BCS bra_89B6
C - - - - - 0x0149C5 05:89B5: E8        INX
bra_89B6:
C - - - - - 0x0149C6 05:89B6: C8        INY
C - - - - - 0x0149C7 05:89B7: C0 09     CPY #$09
C - - - - - 0x0149C9 05:89B9: 90 02     BCC bra_89BD
C - - - - - 0x0149CB 05:89BB: A0 00     LDY #$00
bra_89BD:
C - - - - - 0x0149CD 05:89BD: E0 0A     CPX #$0A
C - - - - - 0x0149CF 05:89BF: 90 DF     BCC bra_89A0_loop
C - - - - - 0x0149D1 05:89C1: 8C 24 05  STY ram_0524
bra_89C4:
C - - - - - 0x0149D4 05:89C4: A5 12     LDA ram_game_mode_main
C - - - - - 0x0149D6 05:89C6: C9 09     CMP #con_GM_09
C - - - - - 0x0149D8 05:89C8: D0 15     BNE bra_89DF
C - - - - - 0x0149DA 05:89CA: A2 03     LDX #$03
bra_89CC_loop:
C - - - - - 0x0149DC 05:89CC: A9 1B     LDA #$1B
C - - - - - 0x0149DE 05:89CE: 9D 50 03  STA ram_0350,X
C - - - - - 0x0149E1 05:89D1: BD 66 89  LDA tbl_8966_pos_X,X
C - - - - - 0x0149E4 05:89D4: 95 71     STA ram_pos_X + 1,X
C - - - - - 0x0149E6 05:89D6: B9 6A 89  LDA tbl_896A_pos_Y,Y
C - - - - - 0x0149E9 05:89D9: 95 85     STA ram_pos_Y + 1,X
C - - - - - 0x0149EB 05:89DB: CA        DEX
C - - - - - 0x0149EC 05:89DC: 10 EE     BPL bra_89CC_loop
C - - - - - 0x0149EE 05:89DE: 60        RTS
bra_89DF:
C - - - - - 0x0149EF 05:89DF: C9 0B     CMP #con_GM_0B
C - - - - - 0x0149F1 05:89E1: F0 04     BEQ bra_89E7
C - - - - - 0x0149F3 05:89E3: C9 0C     CMP #con_GM_0C
C - - - - - 0x0149F5 05:89E5: D0 1C     BNE bra_8A03_RTS
bra_89E7:
C - - - - - 0x0149F7 05:89E7: A2 07     LDX #$07
C - - - - - 0x0149F9 05:89E9: A9 00     LDA #$00
bra_89EB:
C - - - - - 0x0149FB 05:89EB: 9D 50 03  STA ram_0350,X
C - - - - - 0x0149FE 05:89EE: CA        DEX
C - - - - - 0x0149FF 05:89EF: 10 FA     BPL bra_89EB
C - - - - - 0x014A01 05:89F1: A4 EB     LDY ram_map_location
C - - - - - 0x014A03 05:89F3: B9 FE 68  LDA ram_68FE,Y
C - - - - - 0x014A06 05:89F6: 29 FC     AND #$FC
C - - - - - 0x014A08 05:89F8: 38        SEC
C - - - - - 0x014A09 05:89F9: E9 40     SBC #$40
C - - - - - 0x014A0B 05:89FB: 4A        LSR
C - - - - - 0x014A0C 05:89FC: 4A        LSR
C - - - - - 0x014A0D 05:89FD: 18        CLC
C - - - - - 0x014A0E 05:89FE: 69 6A     ADC #$6A
C - - - - - 0x014A10 05:8A00: 8D 50 03  STA ram_0350
bra_8A03_RTS:
C - - - - - 0x014A13 05:8A03: 60        RTS



sub_8A04:
C - - - - - 0x014A14 05:8A04: 98        TYA
C - - - - - 0x014A15 05:8A05: 48        PHA
C - - - - - 0x014A16 05:8A06: 20 F4 ED  JSR sub_0x01EE04
C - - - - - 0x014A19 05:8A09: 68        PLA
C - - - - - 0x014A1A 05:8A0A: A8        TAY
C - - - - - 0x014A1B 05:8A0B: BD 9E 04  LDA ram_049E,X
C - - - - - 0x014A1E 05:8A0E: CD 4A 03  CMP ram_034A
C - - - - - 0x014A21 05:8A11: B0 1A     BCS bra_8A2D
sub_0x014A23:
C - - - - - 0x014A23 05:8A13: A5 70     LDA ram_pos_X
C - - - - - 0x014A25 05:8A15: 38        SEC
C - - - - - 0x014A26 05:8A16: F5 70     SBC ram_pos_X,X
C - - - - - 0x014A28 05:8A18: 20 1F 70  JSR sub_bat_701F
C - - - - - 0x014A2B 05:8A1B: C9 22     CMP #$22
C - - - - - 0x014A2D 05:8A1D: B0 0C     BCS bra_8A2B
C - - - - - 0x014A2F 05:8A1F: A5 84     LDA ram_pos_Y
C - - - - - 0x014A31 05:8A21: 38        SEC
C - - - - - 0x014A32 05:8A22: F5 84     SBC ram_pos_Y,X
C - - - - - 0x014A34 05:8A24: 20 1F 70  JSR sub_bat_701F
C - - - - - 0x014A37 05:8A27: C9 22     CMP #$22
C - - - - - 0x014A39 05:8A29: 90 02     BCC bra_8A2D
bra_8A2B:
C - - - - - 0x014A3B 05:8A2B: 18        CLC
C - - - - - 0x014A3C 05:8A2C: 60        RTS
bra_8A2D:
C - - - - - 0x014A3D 05:8A2D: 38        SEC
C - - - - - 0x014A3E 05:8A2E: 60        RTS



ofs_0x014A3F_11_death:
C - - J - - 0x014A3F 05:8A2F: A2 00     LDX #$00
C - - - - - 0x014A41 05:8A31: 20 98 FE  JSR sub_0x01FEA8
C - - - - - 0x014A44 05:8A34: 20 3C F2  JSR sub_0x01F24C
C - - - - - 0x014A47 05:8A37: A5 13     LDA ram_game_mode_sub
C - - - - - 0x014A49 05:8A39: D0 25     BNE bra_8A60
C - - - - - 0x014A4B 05:8A3B: 20 F7 E5  JSR sub_0x01E607_hide_all_sprites
C - - - - - 0x014A4E 05:8A3E: 20 79 E6  JSR sub_0x01E689
C - - - - - 0x014A51 05:8A41: 20 29 89  JSR sub_8929
C - - - - - 0x014A54 05:8A44: 20 8A E7  JSR sub_0x01E79A
C - - - - - 0x014A57 05:8A47: 20 59 B5  JSR sub_B559
C - - - - - 0x014A5A 05:8A4A: A9 00     LDA #$00
C - - - - - 0x014A5C 05:8A4C: 85 E0     STA ram_pause_flag
C - - - - - 0x014A5E 05:8A4E: 8D 70 06  STA ram_0670
C - - - - - 0x014A61 05:8A51: 20 00 6D  JSR sub_bat_6D00_update_hud_info
C - - - - - 0x014A64 05:8A54: E6 13     INC ram_game_mode_sub
C - - - - - 0x014A66 05:8A56: A9 10     LDA #$10
C - - - - - 0x014A68 05:8A58: 8D F0 04  STA ram_04F0
C - - - - - 0x014A6B 05:8A5B: A9 21     LDA #$21
C - - - - - 0x014A6D 05:8A5D: 85 28     STA ram_0028
C - - - - - 0x014A6F 05:8A5F: 60        RTS
bra_8A60:
C - - - - - 0x014A70 05:8A60: A5 28     LDA ram_0028
C - - - - - 0x014A72 05:8A62: D0 32     BNE bra_8A96_RTS
C - - - - - 0x014A74 05:8A64: 20 5A E8  JSR sub_0x01E86A
C - - - - - 0x014A77 05:8A67: 29 3E     AND #$3E
C - - - - - 0x014A79 05:8A69: C9 3E     CMP #$3E
C - - - - - 0x014A7B 05:8A6B: F0 08     BEQ bra_8A75
C - - - - - 0x014A7D 05:8A6D: A5 EE     LDA ram_00EE
C - - - - - 0x014A7F 05:8A6F: 8D 21 05  STA ram_0521
C - - - - - 0x014A82 05:8A72: 20 FB 82  JSR sub_82FB
bra_8A75:
C - - - - - 0x014A85 05:8A75: A9 60     LDA #$60
C - - - - - 0x014A87 05:8A77: 8D 1C 05  STA ram_051C
C - - - - - 0x014A8A 05:8A7A: A9 02     LDA #$02
C - - - - - 0x014A8C 05:8A7C: 85 32     STA ram_0032
C - - - - - 0x014A8E 05:8A7E: A9 00     LDA #$00
C - - - - - 0x014A90 05:8A80: 85 13     STA ram_game_mode_sub
C - - - - - 0x014A92 05:8A82: 85 E9     STA ram_00E9
C - - - - - 0x014A94 05:8A84: 85 AC     STA ram_drop_id
C - - - - - 0x014A96 05:8A86: A9 04     LDA #$04    ; con_dir_Down
C - - - - - 0x014A98 05:8A88: 85 E5     STA ram_00E5
C - - - - - 0x014A9A 05:8A8A: 85 98     STA ram_direction
C - - - - - 0x014A9C 05:8A8C: E6 11     INC ram_0011
loc_8A8E:
C D 0 - - - 0x014A9E 05:8A8E: A9 80     LDA #$80    ; con_sfx_4_80  con_sfx_3_80
C - - - - - 0x014AA0 05:8A90: 8D 04 06  STA ram_sfx_4
C - - - - - 0x014AA3 05:8A93: 8D 03 06  STA ram_sfx_3
bra_8A96_RTS:
C - - - - - 0x014AA6 05:8A96: 60        RTS



sub_8A97:
C - - - - - 0x014AA7 05:8A97: 20 CE E6  JSR sub_0x01E6DE
C - - - - - 0x014AAA 05:8A9A: 1D BE E6  ORA tbl_0x01E6CE,X
C - - - - - 0x014AAD 05:8A9D: 91 00     STA (ram_0000),Y
C - - - - - 0x014AAF 05:8A9F: 60        RTS



sub_8AA0:
C - - - - - 0x014AB0 05:8AA0: 20 CE E6  JSR sub_0x01E6DE
C - - - - - 0x014AB3 05:8AA3: BD BE E6  LDA tbl_0x01E6CE,X
C - - - - - 0x014AB6 05:8AA6: 49 FF     EOR #$FF
C - - - - - 0x014AB8 05:8AA8: 31 00     AND (ram_0000),Y
C - - - - - 0x014ABA 05:8AAA: 91 00     STA (ram_0000),Y
C - - - - - 0x014ABC 05:8AAC: 60        RTS



sub_0x014ABD:
C - - - - - 0x014ABD 05:8AAD: AD CE 04  LDA ram_04CE
C - - - - - 0x014AC0 05:8AB0: F0 10     BEQ bra_8AC2
C - - - - - 0x014AC2 05:8AB2: A9 08     LDA #$08
C - - - - - 0x014AC4 05:8AB4: 85 0E     STA ram_000E
bra_8AB6:
C - - - - - 0x014AC6 05:8AB6: A5 0E     LDA ram_000E
C - - - - - 0x014AC8 05:8AB8: 25 EE     AND ram_00EE
C - - - - - 0x014ACA 05:8ABA: F0 0C     BEQ bra_8AC8
bra_8ABC:
C - - - - - 0x014ACC 05:8ABC: 46 0E     LSR ram_000E
C - - - - - 0x014ACE 05:8ABE: A5 0E     LDA ram_000E
C - - - - - 0x014AD0 05:8AC0: D0 F4     BNE bra_8AB6
bra_8AC2:
C - - - - - 0x014AD2 05:8AC2: A9 00     LDA #$00
C - - - - - 0x014AD4 05:8AC4: 8D CE 04  STA ram_04CE
C - - - - - 0x014AD7 05:8AC7: 60        RTS
bra_8AC8:
C - - - - - 0x014AD8 05:8AC8: A5 0E     LDA ram_000E
C - - - - - 0x014ADA 05:8ACA: 85 02     STA ram_0002
C - - - - - 0x014ADC 05:8ACC: 20 F6 A3  JSR sub_A3F6
C - - - - - 0x014ADF 05:8ACF: C9 07     CMP #$07
C - - - - - 0x014AE1 05:8AD1: D0 E9     BNE bra_8ABC
C - - - - - 0x014AE3 05:8AD3: AD 54 00  LDA a: ram_0054
C - - - - - 0x014AE6 05:8AD6: D0 0A     BNE bra_8AE2_RTS
C - - - - - 0x014AE8 05:8AD8: A5 02     LDA ram_0002
sub_8ADA:
C - - - - - 0x014AEA 05:8ADA: 8D 55 00  STA a: ram_0055
C - - - - - 0x014AED 05:8ADD: A9 06     LDA #$06
C - - - - - 0x014AEF 05:8ADF: 8D 54 00  STA a: ram_0054
bra_8AE2_RTS:
C - - - - - 0x014AF2 05:8AE2: 60        RTS



tbl_8AE3_spr_data:
- D 0 - - - 0x014AF3 05:8AE3: F3        .byte $F3   ; spr_T
- D 0 - - - 0x014AF4 05:8AE4: 02        .byte $02   ; spr_A
- D 0 - - - 0x014AF5 05:8AE5: 40        .byte $40   ; spr_X



tbl_8AE6_spr_Y:
- D 0 - - - 0x014AF6 05:8AE6: 4F        .byte $4F   ; 
- D 0 - - - 0x014AF7 05:8AE7: 67        .byte $67   ; 
- D 0 - - - 0x014AF8 05:8AE8: 7F        .byte $7F   ; 



tbl_8AE9:
- D 0 - - - 0x014AF9 05:8AE9: 03        .byte con_GM_03   ; 00
- D 0 - - - 0x014AFA 05:8AEA: 0D        .byte con_GM_0D   ; 01
- D 0 - - - 0x014AFB 05:8AEB: 00        .byte con_GM_title_screen   ; 02



tbl_8AEC:
- D 0 - - - 0x014AFC 05:8AEC: 23        .byte $23   ; 00
- D 0 - - - 0x014AFD 05:8AED: D2        .byte $D2   ; 01
- D 0 - - - 0x014AFE 05:8AEE: 43        .byte $43   ; 02
- D 0 - - - 0x014AFF 05:8AEF: 00        .byte $00   ; 03
- D 0 - - - 0x014B00 05:8AF0: FF        .byte $FF   ; 04



tbl_8AF1:
- D 0 - - - 0x014B01 05:8AF1: D2        .byte $D2   ; 00
- D 0 - - - 0x014B02 05:8AF2: DA        .byte $DA   ; 01
- D 0 - - - 0x014B03 05:8AF3: E2        .byte $E2   ; 02



loc_0x014B04:
C D 0 - - - 0x014B04 05:8AF4: A5 13     LDA ram_game_mode_sub
C - - - - - 0x014B06 05:8AF6: 0A        ASL
C - - - - - 0x014B07 05:8AF7: B0 3C     BCS bra_8B35
C - - - - - 0x014B09 05:8AF9: A5 F8     LDA ram_btn_press
C - - - - - 0x014B0B 05:8AFB: 29 10     AND #con_btn_Start
C - - - - - 0x014B0D 05:8AFD: D0 2B     BNE bra_8B2A
C - - - - - 0x014B0F 05:8AFF: A5 F8     LDA ram_btn_press
C - - - - - 0x014B11 05:8B01: 29 20     AND #con_btn_Select
C - - - - - 0x014B13 05:8B03: F0 11     BEQ bra_8B16
C - - - - - 0x014B15 05:8B05: A9 01     LDA #con_sfx_4_shield_block
C - - - - - 0x014B17 05:8B07: 8D 04 06  STA ram_sfx_4
C - - - - - 0x014B1A 05:8B0A: E6 13     INC ram_game_mode_sub
C - - - - - 0x014B1C 05:8B0C: A5 13     LDA ram_game_mode_sub
C - - - - - 0x014B1E 05:8B0E: C9 03     CMP #$03
C - - - - - 0x014B20 05:8B10: D0 04     BNE bra_8B16
C - - - - - 0x014B22 05:8B12: A9 00     LDA #$00
C - - - - - 0x014B24 05:8B14: 85 13     STA ram_game_mode_sub
bra_8B16:
C - - - - - 0x014B26 05:8B16: A0 02     LDY #$02
bra_8B18_loop:
C - - - - - 0x014B28 05:8B18: B9 E3 8A  LDA tbl_8AE3_spr_data,Y
C - - - - - 0x014B2B 05:8B1B: 99 01 02  STA ram_spr_T,Y
C - - - - - 0x014B2E 05:8B1E: 88        DEY
C - - - - - 0x014B2F 05:8B1F: 10 F7     BPL bra_8B18_loop
C - - - - - 0x014B31 05:8B21: A4 13     LDY ram_game_mode_sub
C - - - - - 0x014B33 05:8B23: B9 E6 8A  LDA tbl_8AE6_spr_Y,Y
C - - - - - 0x014B36 05:8B26: 8D 00 02  STA ram_spr_Y
C - - - - - 0x014B39 05:8B29: 60        RTS
bra_8B2A:
C - - - - - 0x014B3A 05:8B2A: A5 13     LDA ram_game_mode_sub
C - - - - - 0x014B3C 05:8B2C: 09 80     ORA #$80
C - - - - - 0x014B3E 05:8B2E: 85 13     STA ram_game_mode_sub
C - - - - - 0x014B40 05:8B30: A9 40     LDA #$40
C - - - - - 0x014B42 05:8B32: 85 29     STA ram_0029
C - - - - - 0x014B44 05:8B34: 60        RTS
bra_8B35:
C - - - - - 0x014B45 05:8B35: A5 29     LDA ram_0029
C - - - - - 0x014B47 05:8B37: F0 24     BEQ bra_8B5D
C - - - - - 0x014B49 05:8B39: A0 04     LDY #$04
bra_8B3B_loop:
C - - - - - 0x014B4B 05:8B3B: B9 EC 8A  LDA tbl_8AEC,Y
C - - - - - 0x014B4E 05:8B3E: 99 02 03  STA ram_0302,Y
C - - - - - 0x014B51 05:8B41: 88        DEY
C - - - - - 0x014B52 05:8B42: 10 F7     BPL bra_8B3B_loop
C - - - - - 0x014B54 05:8B44: A5 13     LDA ram_game_mode_sub
C - - - - - 0x014B56 05:8B46: 29 03     AND #$03
C - - - - - 0x014B58 05:8B48: A8        TAY
C - - - - - 0x014B59 05:8B49: B9 F1 8A  LDA tbl_8AF1,Y
C - - - - - 0x014B5C 05:8B4C: 8D 03 03  STA ram_0303
C - - - - - 0x014B5F 05:8B4F: A0 00     LDY #$00
C - - - - - 0x014B61 05:8B51: A5 29     LDA ram_0029
C - - - - - 0x014B63 05:8B53: 29 04     AND #$04
C - - - - - 0x014B65 05:8B55: F0 02     BEQ bra_8B59
C - - - - - 0x014B67 05:8B57: A0 55     LDY #$55
bra_8B59:
C - - - - - 0x014B69 05:8B59: 8C 05 03  STY ram_0305
C - - - - - 0x014B6C 05:8B5C: 60        RTS
bra_8B5D:
C - - - - - 0x014B6D 05:8B5D: A5 13     LDA ram_game_mode_sub
C - - - - - 0x014B6F 05:8B5F: 29 03     AND #$03
C - - - - - 0x014B71 05:8B61: 85 13     STA ram_game_mode_sub
C - - - - - 0x014B73 05:8B63: 20 51 EA  JSR sub_0x01EA61
C - - - - - 0x014B76 05:8B66: A4 13     LDY ram_game_mode_sub
C - - - - - 0x014B78 05:8B68: B9 E9 8A  LDA tbl_8AE9,Y
C - - - - - 0x014B7B 05:8B6B: 85 12     STA ram_game_mode_main
C - - - - - 0x014B7D 05:8B6D: AD 6F 06  LDA ram_066F
C - - - - - 0x014B80 05:8B70: 29 F0     AND #$F0
C - - - - - 0x014B82 05:8B72: 09 02     ORA #$02
C - - - - - 0x014B84 05:8B74: 8D 6F 06  STA ram_066F
C - - - - - 0x014B87 05:8B77: A9 FF     LDA #$FF
C - - - - - 0x014B89 05:8B79: 8D 70 06  STA ram_0670
C - - - - - 0x014B8C 05:8B7C: 20 A3 EB  JSR sub_0x01EBB3
C - - - - - 0x014B8F 05:8B7F: C0 02     CPY #$02
C - - - - - 0x014B91 05:8B81: D0 05     BNE bra_8B88
C - - - - - 0x014B93 05:8B83: 88        DEY
C - - - - - 0x014B94 05:8B84: 84 13     STY ram_game_mode_sub
C - - - - - 0x014B96 05:8B86: E6 11     INC ram_0011
bra_8B88:
C - - - - - 0x014B98 05:8B88: 4C E9 6E  JMP loc_bat_6EE9



loc_0x014B9B:
C D 0 - - - 0x014B9B 05:8B8B: AD 9E 04  LDA ram_049E
C - - - - - 0x014B9E 05:8B8E: C9 24     CMP #$24
C - - - - - 0x014BA0 05:8B90: D0 0F     BNE bra_8BA1
C - - - - - 0x014BA2 05:8B92: A5 15     LDA ram_frame_cnt
C - - - - - 0x014BA4 05:8B94: 29 03     AND #$03
C - - - - - 0x014BA6 05:8B96: D0 10     BNE bra_8BA8
C - - - - - 0x014BA8 05:8B98: E6 84     INC ram_pos_Y
C - - - - - 0x014BAA 05:8B9A: A5 84     LDA ram_pos_Y
C - - - - - 0x014BAC 05:8B9C: CD 12 04  CMP ram_0412
C - - - - - 0x014BAF 05:8B9F: D0 07     BNE bra_8BA8
bra_8BA1:
C - - - - - 0x014BB1 05:8BA1: A5 5B     LDA ram_005B
C - - - - - 0x014BB3 05:8BA3: 85 12     STA ram_game_mode_main
C - - - - - 0x014BB5 05:8BA5: 20 A3 EB  JSR sub_0x01EBB3
bra_8BA8:
sub_0x014BB8:
C - - - - - 0x014BB8 05:8BA8: 20 3C F2  JSR sub_0x01F24C
sub_8BAB:
C - - - - - 0x014BBB 05:8BAB: AD 4A 02  LDA ram_spr_A + $48
C - - - - - 0x014BBE 05:8BAE: 09 20     ORA #$20
C - - - - - 0x014BC0 05:8BB0: 8D 4A 02  STA ram_spr_A + $48
C - - - - - 0x014BC3 05:8BB3: AD 4E 02  LDA ram_spr_A + $4C
C - - - - - 0x014BC6 05:8BB6: 09 20     ORA #$20
C - - - - - 0x014BC8 05:8BB8: 8D 4E 02  STA ram_spr_A + $4C
C - - - - - 0x014BCB 05:8BBB: 60        RTS



sub_0x014BCC:
C - - - - - 0x014BCC 05:8BBC: 20 FA 8B  JSR sub_8BFA
C - - - - - 0x014BCF 05:8BBF: AD CD 04  LDA ram_04CD
C - - - - - 0x014BD2 05:8BC2: 29 07     AND #$07
C - - - - - 0x014BD4 05:8BC4: F0 20     BEQ bra_8BE6_RTS
C - - - - - 0x014BD6 05:8BC6: 20 E7 8B  JSR sub_8BE7
C - - - - - 0x014BD9 05:8BC9: 90 1B     BCC bra_8BE6_RTS
C - - - - - 0x014BDB 05:8BCB: AD CD 04  LDA ram_04CD
C - - - - - 0x014BDE 05:8BCE: 29 07     AND #$07
C - - - - - 0x014BE0 05:8BD0: C9 07     CMP #$07
C - - - - - 0x014BE2 05:8BD2: D0 12     BNE bra_8BE6_RTS
C - - - - - 0x014BE4 05:8BD4: A5 BF     LDA ram_00BF
C - - - - - 0x014BE6 05:8BD6: F0 0E     BEQ bra_8BE6_RTS
C - - - - - 0x014BE8 05:8BD8: 20 14 73  JSR sub_bat_7314
C - - - - - 0x014BEB 05:8BDB: D0 09     BNE bra_8BE6_RTS
C - - - - - 0x014BED 05:8BDD: A9 00     LDA #$00
C - - - - - 0x014BEF 05:8BDF: 85 BF     STA ram_00BF
C - - - - - 0x014BF1 05:8BE1: A9 02     LDA #con_sfx_2_02
C - - - - - 0x014BF3 05:8BE3: 8D 02 06  STA ram_sfx_2
bra_8BE6_RTS:
ofs_8BE6_00_RTS:
C - - - - - 0x014BF6 05:8BE6: 60        RTS



sub_8BE7:
C - - - - - 0x014BF7 05:8BE7: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- - - - - - 0x014BFA 05:8BEA: E6 8B     .word ofs_8BE6_00_RTS   ; unused 0x014BD4
- D 0 - I - 0x014BFC 05:8BEC: 1A 8C     .word ofs_8C1A_01
- D 0 - I - 0x014BFE 05:8BEE: 28 8C     .word ofs_8C28_02
- D 0 - I - 0x014C00 05:8BF0: 6F 8C     .word ofs_8C6F_03
- D 0 - I - 0x014C02 05:8BF2: 4C 8C     .word ofs_8C4C_04
- D 0 - I - 0x014C04 05:8BF4: 53 8C     .word ofs_8C53_05
- D 0 - I - 0x014C06 05:8BF6: 76 8C     .word ofs_8C76_06
- D 0 - I - 0x014C08 05:8BF8: 1A 8C     .word ofs_8C1A_07



sub_8BFA:
C - - - - - 0x014C0A 05:8BFA: AC 40 03  LDY ram_0340
bra_8BFD_loop:
C - - - - - 0x014C0D 05:8BFD: B9 50 03  LDA ram_0350,Y
C - - - - - 0x014C10 05:8C00: F0 0C     BEQ bra_8C0E
C - - - - - 0x014C12 05:8C02: C9 2B     CMP #$2B
C - - - - - 0x014C14 05:8C04: 90 13     BCC bra_8C19_RTS
C - - - - - 0x014C16 05:8C06: C9 2E     CMP #$2E
C - - - - - 0x014C18 05:8C08: 90 04     BCC bra_8C0E
C - - - - - 0x014C1A 05:8C0A: C9 49     CMP #$49
C - - - - - 0x014C1C 05:8C0C: 90 0B     BCC bra_8C19_RTS
bra_8C0E:
C - - - - - 0x014C1E 05:8C0E: 88        DEY
C - - - - - 0x014C1F 05:8C0F: 10 EC     BPL bra_8BFD_loop
C - - - - - 0x014C21 05:8C11: A9 00     LDA #$00
C - - - - - 0x014C23 05:8C13: 8D 12 05  STA ram_0512
C - - - - - 0x014C26 05:8C16: EE 4D 03  INC ram_034D
bra_8C19_RTS:
C - - - - - 0x014C29 05:8C19: 60        RTS



ofs_8C1A_01:
ofs_8C1A_07:
C - - J - - 0x014C2A 05:8C1A: AD 4D 03  LDA ram_034D
C - - - - - 0x014C2D 05:8C1D: F0 07     BEQ bra_8C26
bra_8C1F:
C - - - - - 0x014C2F 05:8C1F: A9 01     LDA #$01
C - - - - - 0x014C31 05:8C21: 8D CE 04  STA ram_04CE
C - - - - - 0x014C34 05:8C24: 38        SEC
C - - - - - 0x014C35 05:8C25: 60        RTS
bra_8C26:
C - - - - - 0x014C36 05:8C26: 18        CLC
C - - - - - 0x014C37 05:8C27: 60        RTS



ofs_8C28_02:
C - - J - - 0x014C38 05:8C28: AD 50 03  LDA ram_0350
C - - - - - 0x014C3B 05:8C2B: F0 04     BEQ bra_8C31
C - - - - - 0x014C3D 05:8C2D: C9 53     CMP #$53
C - - - - - 0x014C3F 05:8C2F: 90 F5     BCC bra_8C26
bra_8C31:
C - - - - - 0x014C41 05:8C31: AC 40 03  LDY ram_0340
bra_8C34:
C - - - - - 0x014C44 05:8C34: B9 50 03  LDA ram_0350,Y
C - - - - - 0x014C47 05:8C37: F0 0E     BEQ bra_8C47
C - - - - - 0x014C49 05:8C39: C9 53     CMP #$53
C - - - - - 0x014C4B 05:8C3B: B0 0A     BCS bra_8C47
C - - - - - 0x014C4D 05:8C3D: B9 06 04  LDA ram_0406,Y
C - - - - - 0x014C50 05:8C40: D0 05     BNE bra_8C47
C - - - - - 0x014C52 05:8C42: A9 10     LDA #$10
C - - - - - 0x014C54 05:8C44: 99 06 04  STA ram_0406,Y
bra_8C47:
C - - - - - 0x014C57 05:8C47: 88        DEY
C - - - - - 0x014C58 05:8C48: 10 EA     BPL bra_8C34
C - - - - - 0x014C5A 05:8C4A: 38        SEC
C - - - - - 0x014C5B 05:8C4B: 60        RTS



ofs_8C4C_04:
C - - J - - 0x014C5C 05:8C4C: AD CF 04  LDA ram_04CF
C - - - - - 0x014C5F 05:8C4F: F0 D5     BEQ bra_8C26
C - - - - - 0x014C61 05:8C51: D0 CC     BNE bra_8C1F



ofs_8C53_05:
C - - J - - 0x014C63 05:8C53: AD CF 04  LDA ram_04CF
C - - - - - 0x014C66 05:8C56: F0 CE     BEQ bra_8C26
C - - - - - 0x014C68 05:8C58: 4A        LSR
C - - - - - 0x014C69 05:8C59: 90 CB     BCC bra_8C26
C - - - - - 0x014C6B 05:8C5B: EE CF 04  INC ram_04CF
C - - - - - 0x014C6E 05:8C5E: A2 0B     LDX #$0B
C - - - - - 0x014C70 05:8C60: A9 D0     LDA #$D0
C - - - - - 0x014C72 05:8C62: 95 70     STA ram_pos_X,X
C - - - - - 0x014C74 05:8C64: A9 60     LDA #$60
C - - - - - 0x014C76 05:8C66: 95 84     STA ram_pos_Y,X
C - - - - - 0x014C78 05:8C68: A9 70     LDA #$70
C - - - - - 0x014C7A 05:8C6A: 20 62 E8  JSR sub_0x01E872
C - - - - - 0x014C7D 05:8C6D: 38        SEC
C - - - - - 0x014C7E 05:8C6E: 60        RTS



ofs_8C6F_03:
C - - J - - 0x014C7F 05:8C6F: AD 72 06  LDA ram_0672
C - - - - - 0x014C82 05:8C72: D0 AB     BNE bra_8C1F
C - - - - - 0x014C84 05:8C74: 18        CLC
C - - - - - 0x014C85 05:8C75: 60        RTS



ofs_8C76_06:
C - - J - - 0x014C86 05:8C76: AD 50 03  LDA ram_0350
C - - - - - 0x014C89 05:8C79: F0 A4     BEQ bra_8C1F
C - - - - - 0x014C8B 05:8C7B: 18        CLC
C - - - - - 0x014C8C 05:8C7C: 60        RTS



loc_0x014C8D:
C D 0 - - - 0x014C8D 05:8C7D: A5 13     LDA ram_game_mode_sub
C - - - - - 0x014C8F 05:8C7F: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 0 - I - 0x014C92 05:8C82: A1 8C     .word ofs_8CA1_00
- D 0 - I - 0x014C94 05:8C84: 9C 8C     .word ofs_8C9C_01
- D 0 - I - 0x014C96 05:8C86: AC 8C     .word ofs_8CAC_02
- D 0 - I - 0x014C98 05:8C88: BE 8C     .word ofs_8CBE_03
- D 0 - I - 0x014C9A 05:8C8A: C3 8C     .word ofs_8CC3_04
- D 0 - I - 0x014C9C 05:8C8C: C8 8C     .word ofs_8CC8_05
- D 0 - I - 0x014C9E 05:8C8E: D1 8C     .word ofs_8CD1_06
- D 0 - I - 0x014CA0 05:8C90: DA 8C     .word ofs_8CDA_07
- D 0 - I - 0x014CA2 05:8C92: FB 8C     .word ofs_8CFB_08
- D 0 - I - 0x014CA4 05:8C94: 01 8D     .word ofs_8D01_09
- D 0 - I - 0x014CA6 05:8C96: 0D 8D     .word ofs_8D0D_0A
- D 0 - I - 0x014CA8 05:8C98: 56 8D     .word ofs_8D56_0B
- D 0 - I - 0x014CAA 05:8C9A: 63 8D     .word ofs_8D63_0C



ofs_8C9C_01:
C - - J - - 0x014CAC 05:8C9C: A9 80     LDA #con_sfx_2_death
C - - - - - 0x014CAE 05:8C9E: 8D 02 06  STA ram_sfx_2
ofs_8CA1_00:
C - - J - - 0x014CB1 05:8CA1: 20 84 84  JSR sub_8484
loc_8CA4:
C D 0 - - - 0x014CB4 05:8CA4: A2 2B     LDX #$2B
loc_8CA6:
C D 0 - - - 0x014CB6 05:8CA6: 20 E1 B0  JSR sub_B0E1
C - - - - - 0x014CB9 05:8CA9: E6 13     INC ram_game_mode_sub
C - - - - - 0x014CBB 05:8CAB: 60        RTS



ofs_8CAC_02:
C - - J - - 0x014CBC 05:8CAC: 20 10 AC  JSR sub_AC10
C - - - - - 0x014CBF 05:8CAF: 90 03     BCC bra_8CB4
C - - - - - 0x014CC1 05:8CB1: 20 B2 83  JSR sub_83B2
bra_8CB4:
C - - - - - 0x014CC4 05:8CB4: AD 02 03  LDA ram_0302
C - - - - - 0x014CC7 05:8CB7: 18        CLC
C - - - - - 0x014CC8 05:8CB8: 69 08     ADC #$08
C - - - - - 0x014CCA 05:8CBA: 8D 02 03  STA ram_0302
C - - - - - 0x014CCD 05:8CBD: 60        RTS



ofs_8CBE_03:
C - - J - - 0x014CCE 05:8CBE: A9 60     LDA #$60
loc_8CC0:   ; bzk optimize, JMP into JMP
C D 0 - - - 0x014CD0 05:8CC0: 4C 2E B1  JMP loc_B12E



ofs_8CC3_04:
C - - J - - 0x014CD3 05:8CC3: A9 62     LDA #$62
C - - - - - 0x014CD5 05:8CC5: 4C C0 8C  JMP loc_8CC0



ofs_8CC8_05:
C - - J - - 0x014CD8 05:8CC8: A9 00     LDA #$00
C - - - - - 0x014CDA 05:8CCA: 85 E3     STA ram_00E3
C - - - - - 0x014CDC 05:8CCC: A9 5E     LDA #$5E
C - - - - - 0x014CDE 05:8CCE: 4C C0 8C  JMP loc_8CC0



ofs_8CD1_06:
C - - J - - 0x014CE1 05:8CD1: A5 FF     LDA ram_00FF
C - - - - - 0x014CE3 05:8CD3: 29 FE     AND #$FE
C - - - - - 0x014CE5 05:8CD5: 85 FF     STA ram_00FF
bra_8CD7:   ; bzk
C - - - - - 0x014CE7 05:8CD7: E6 13     INC ram_game_mode_sub
C - - - - - 0x014CE9 05:8CD9: 60        RTS



ofs_8CDA_07:
C - - J - - 0x014CEA 05:8CDA: A5 E5     LDA ram_00E5
C - - - - - 0x014CEC 05:8CDC: F0 F9     BEQ bra_8CD7
C - - - - - 0x014CEE 05:8CDE: A5 33     LDA ram_0033
C - - - - - 0x014CF0 05:8CE0: D0 10     BNE bra_8CF2
C - - - - - 0x014CF2 05:8CE2: A9 05     LDA #$05
C - - - - - 0x014CF4 05:8CE4: 85 33     STA ram_0033
C - - - - - 0x014CF6 05:8CE6: A5 98     LDA ram_direction
C - - - - - 0x014CF8 05:8CE8: 4A        LSR
C - - - - - 0x014CF9 05:8CE9: 4A        LSR
C - - - - - 0x014CFA 05:8CEA: 90 09     BCC bra_8CF5
C - - - - - 0x014CFC 05:8CEC: C6 E5     DEC ram_00E5
C - - - - - 0x014CFE 05:8CEE: A9 04     LDA #con_dir_Down
bra_8CF0:
C - - - - - 0x014D00 05:8CF0: 85 98     STA ram_direction
bra_8CF2:
C - - - - - 0x014D02 05:8CF2: 4C 3C F2  JMP loc_0x01F24C
bra_8CF5:
C - - - - - 0x014D05 05:8CF5: D0 F9     BNE bra_8CF0
C - - - - - 0x014D07 05:8CF7: A9 08     LDA #con_dir_Up
C - - - - - 0x014D09 05:8CF9: D0 F5     BNE bra_8CF0
loc_8CFB:
ofs_8CFB_08:
C D 0 - - - 0x014D0B 05:8CFB: 20 B7 74  JSR sub_bat_74B7
C - - - - - 0x014D0E 05:8CFE: F0 D7     BEQ bra_8CD7
C - - - - - 0x014D10 05:8D00: 60        RTS



ofs_8D01_09:
C - - J - - 0x014D11 05:8D01: A9 2C     LDA #$2C
C - - - - - 0x014D13 05:8D03: 85 14     STA ram_0014
C - - - - - 0x014D15 05:8D05: A9 0F     LDA #$0F
C - - - - - 0x014D17 05:8D07: 85 E5     STA ram_00E5
C - - - - - 0x014D19 05:8D09: A9 18     LDA #$18
C - - - - - 0x014D1B 05:8D0B: D0 44     BNE bra_8D51



ofs_8D0D_0A:
C - - J - - 0x014D1D 05:8D0D: A5 33     LDA ram_0033
C - - - - - 0x014D1F 05:8D0F: D0 44     BNE bra_8D55_RTS
C - - - - - 0x014D21 05:8D11: A2 62     LDX #$62
C - - - - - 0x014D23 05:8D13: A5 E5     LDA ram_00E5
C - - - - - 0x014D25 05:8D15: C9 06     CMP #$06
C - - - - - 0x014D27 05:8D17: B0 02     BCS bra_8D1B
C - - - - - 0x014D29 05:8D19: A2 64     LDX #$64
bra_8D1B:
C - - - - - 0x014D2B 05:8D1B: A5 84     LDA ram_pos_Y
C - - - - - 0x014D2D 05:8D1D: 8D 48 02  STA ram_spr_Y + $48
C - - - - - 0x014D30 05:8D20: 8D 4C 02  STA ram_spr_Y + $4C
C - - - - - 0x014D33 05:8D23: 8E 49 02  STX ram_spr_T + $48
C - - - - - 0x014D36 05:8D26: 8E 4D 02  STX ram_spr_T + $4C
C - - - - - 0x014D39 05:8D29: A9 01     LDA #$01
C - - - - - 0x014D3B 05:8D2B: 8D 4A 02  STA ram_spr_A + $48
C - - - - - 0x014D3E 05:8D2E: A9 41     LDA #$41
C - - - - - 0x014D40 05:8D30: 8D 4E 02  STA ram_spr_A + $4C
C - - - - - 0x014D43 05:8D33: A5 70     LDA ram_pos_X
C - - - - - 0x014D45 05:8D35: 8D 4B 02  STA ram_spr_X + $48
C - - - - - 0x014D48 05:8D38: 18        CLC
C - - - - - 0x014D49 05:8D39: 69 08     ADC #$08
C - - - - - 0x014D4B 05:8D3B: 8D 4F 02  STA ram_spr_X + $4C
C - - - - - 0x014D4E 05:8D3E: C6 E5     DEC ram_00E5
C - - - - - 0x014D50 05:8D40: D0 13     BNE bra_8D55_RTS
C - - - - - 0x014D52 05:8D42: A9 10     LDA #con_sfx_4_rupee
C - - - - - 0x014D54 05:8D44: 8D 04 06  STA ram_sfx_4
C - - - - - 0x014D57 05:8D47: A9 F8     LDA #$F8
C - - - - - 0x014D59 05:8D49: 8D 48 02  STA ram_spr_Y + $48
C - - - - - 0x014D5C 05:8D4C: 8D 4C 02  STA ram_spr_Y + $4C
C - - - - - 0x014D5F 05:8D4F: A9 2E     LDA #$2E
bra_8D51:
C - - - - - 0x014D61 05:8D51: 85 33     STA ram_0033
C - - - - - 0x014D63 05:8D53: E6 13     INC ram_game_mode_sub
bra_8D55_RTS:
C - - - - - 0x014D65 05:8D55: 60        RTS



ofs_8D56_0B:
C - - J - - 0x014D66 05:8D56: A5 33     LDA ram_0033
C - - - - - 0x014D68 05:8D58: D0 FB     BNE bra_8D55_RTS
C - - - - - 0x014D6A 05:8D5A: A9 60     LDA #$60
C - - - - - 0x014D6C 05:8D5C: 85 33     STA ram_0033
C - - - - - 0x014D6E 05:8D5E: A9 46     LDA #$46
C - - - - - 0x014D70 05:8D60: 4C C0 8C  JMP loc_8CC0



ofs_8D63_0C:
C - - J - - 0x014D73 05:8D63: A5 33     LDA ram_0033
C - - - - - 0x014D75 05:8D65: D0 18     BNE bra_8D7F_RTS
C - - - - - 0x014D77 05:8D67: 20 A3 EB  JSR sub_0x01EBB3
C - - - - - 0x014D7A 05:8D6A: A9 08     LDA #con_GM_08
C - - - - - 0x014D7C 05:8D6C: 85 12     STA ram_game_mode_main
C - - - - - 0x014D7E 05:8D6E: A9 40     LDA #con_sfx_2_40
C - - - - - 0x014D80 05:8D70: 8D 02 06  STA ram_sfx_2
C - - - - - 0x014D83 05:8D73: A6 16     LDX ram_cur_save_slot
C - - - - - 0x014D85 05:8D75: BD 30 06  LDA ram_death_cnt,X
C - - - - - 0x014D88 05:8D78: C9 FF     CMP #$FF
C - - - - - 0x014D8A 05:8D7A: F0 03     BEQ bra_8D7F_RTS
C - - - - - 0x014D8C 05:8D7C: FE 30 06  INC ram_death_cnt,X
bra_8D7F_RTS:
C - - - - - 0x014D8F 05:8D7F: 60        RTS



tbl_8D80:
- D 0 - - - 0x014D90 05:8D80: D6        .byte $D6   ; 00
- D 0 - - - 0x014D91 05:8D81: 45        .byte $45   ; 01
- D 0 - - - 0x014D92 05:8D82: E9        .byte $E9   ; 02
- D 0 - - - 0x014D93 05:8D83: 07        .byte $07   ; 03
- D 0 - - - 0x014D94 05:8D84: C6        .byte $C6   ; 04
- D 0 - - - 0x014D95 05:8D85: 55        .byte $55   ; 05
- D 0 - - - 0x014D96 05:8D86: D9        .byte $D9   ; 06
- D 0 - - - 0x014D97 05:8D87: 17        .byte $17   ; 07
- D 0 - - - 0x014D98 05:8D88: BE        .byte $BE   ; 08
- D 0 - - - 0x014D99 05:8D89: 54        .byte $54   ; 09
- D 0 - - - 0x014D9A 05:8D8A: D1        .byte $D1   ; 0A
- D 0 - - - 0x014D9B 05:8D8B: 1F        .byte $1F   ; 0B



sub_8D8C:
C - - - - - 0x014D9C 05:8D8C: A5 98     LDA ram_direction
C - - - - - 0x014D9E 05:8D8E: 20 13 70  JSR sub_bat_7013
C - - - - - 0x014DA1 05:8D91: 85 00     STA ram_0000
C - - - - - 0x014DA3 05:8D93: 20 13 70  JSR sub_bat_7013
C - - - - - 0x014DA6 05:8D96: A5 70     LDA ram_pos_X
C - - - - - 0x014DA8 05:8D98: C0 02     CPY #$02
C - - - - - 0x014DAA 05:8D9A: B0 02     BCS bra_8D9E
C - - - - - 0x014DAC 05:8D9C: A5 84     LDA ram_pos_Y
bra_8D9E:
C - - - - - 0x014DAE 05:8D9E: 85 02     STA ram_0002
C - - - - - 0x014DB0 05:8DA0: 98        TYA
C - - - - - 0x014DB1 05:8DA1: 48        PHA
C - - - - - 0x014DB2 05:8DA2: 18        CLC
C - - - - - 0x014DB3 05:8DA3: 69 08     ADC #$08
C - - - - - 0x014DB5 05:8DA5: A8        TAY
C - - - - - 0x014DB6 05:8DA6: A9 80     LDA #$80
C - - - - - 0x014DB8 05:8DA8: 20 C5 8D  JSR sub_8DC5
C - - - - - 0x014DBB 05:8DAB: 68        PLA
C - - - - - 0x014DBC 05:8DAC: A8        TAY
C - - - - - 0x014DBD 05:8DAD: A5 01     LDA ram_0001
C - - - - - 0x014DBF 05:8DAF: C9 FF     CMP #$FF
C - - - - - 0x014DC1 05:8DB1: D0 07     BNE bra_8DBA
C - - - - - 0x014DC3 05:8DB3: A5 98     LDA ram_direction
C - - - - - 0x014DC5 05:8DB5: 85 00     STA ram_0000
C - - - - - 0x014DC7 05:8DB7: 20 13 70  JSR sub_bat_7013
bra_8DBA:
C - - - - - 0x014DCA 05:8DBA: A5 10     LDA ram_0010
C - - - - - 0x014DCC 05:8DBC: F0 05     BEQ bra_8DC3
C - - - - - 0x014DCE 05:8DBE: 98        TYA
C - - - - - 0x014DCF 05:8DBF: 18        CLC
C - - - - - 0x014DD0 05:8DC0: 69 04     ADC #$04
C - - - - - 0x014DD2 05:8DC2: A8        TAY
bra_8DC3:
C - - - - - 0x014DD3 05:8DC3: A9 00     LDA #$00
sub_8DC5:
C - - - - - 0x014DD5 05:8DC5: 85 01     STA ram_0001
C - - - - - 0x014DD7 05:8DC7: A5 00     LDA ram_0000
C - - - - - 0x014DD9 05:8DC9: 29 0A     AND #$0A
C - - - - - 0x014DDB 05:8DCB: F0 27     BEQ bra_8DF4
C - - - - - 0x014DDD 05:8DCD: A5 02     LDA ram_0002
C - - - - - 0x014DDF 05:8DCF: D9 80 8D  CMP tbl_8D80,Y
C - - - - - 0x014DE2 05:8DD2: 90 27     BCC bra_8DFB
bra_8DD4:
C - - - - - 0x014DE4 05:8DD4: A5 F8     LDA ram_btn_press
C - - - - - 0x014DE6 05:8DD6: 25 01     AND ram_0001
C - - - - - 0x014DE8 05:8DD8: 85 F8     STA ram_btn_press
C - - - - - 0x014DEA 05:8DDA: A5 10     LDA ram_0010
C - - - - - 0x014DEC 05:8DDC: F0 15     BEQ bra_8DF3_RTS
C - - - - - 0x014DEE 05:8DDE: A5 01     LDA ram_0001
C - - - - - 0x014DF0 05:8DE0: D0 11     BNE bra_8DF3_RTS
C - - - - - 0x014DF2 05:8DE2: A0 0C     LDY #$0C
C - - - - - 0x014DF4 05:8DE4: A5 98     LDA ram_direction
C - - - - - 0x014DF6 05:8DE6: 29 0C     AND #con_dir__UD
C - - - - - 0x014DF8 05:8DE8: D0 02     BNE bra_8DEC
C - - - - - 0x014DFA 05:8DEA: A0 03     LDY #$03
bra_8DEC:
C - - - - - 0x014DFC 05:8DEC: 98        TYA
C - - - - - 0x014DFD 05:8DED: 2D F8 03  AND ram_03F8
C - - - - - 0x014E00 05:8DF0: 8D F8 03  STA ram_03F8
bra_8DF3_RTS:
C - - - - - 0x014E03 05:8DF3: 60        RTS
bra_8DF4:
C - - - - - 0x014E04 05:8DF4: A5 02     LDA ram_0002
C - - - - - 0x014E06 05:8DF6: D9 80 8D  CMP tbl_8D80,Y
C - - - - - 0x014E09 05:8DF9: 90 D9     BCC bra_8DD4
bra_8DFB:
C - - - - - 0x014E0B 05:8DFB: A9 FF     LDA #$FF
C - - - - - 0x014E0D 05:8DFD: 85 01     STA ram_0001
bra_8DFF_RTS:
C - - - - - 0x014E0F 05:8DFF: 60        RTS



sub_8E00:
C - - - - - 0x014E10 05:8E00: AD 57 06  LDA ram_0657
C - - - - - 0x014E13 05:8E03: F0 FA     BEQ bra_8DFF_RTS
C - - - - - 0x014E15 05:8E05: A2 0D     LDX #$0D
C - - - - - 0x014E17 05:8E07: B5 AC     LDA ram_drop_id,X
C - - - - - 0x014E19 05:8E09: D0 F4     BNE bra_8DFF_RTS
C - - - - - 0x014E1B 05:8E0B: A9 05     LDA #$05
C - - - - - 0x014E1D 05:8E0D: 9D D0 03  STA ram_03D0,X
C - - - - - 0x014E20 05:8E10: A9 01     LDA #$01
C - - - - - 0x014E22 05:8E12: 20 8F 8E  JSR sub_8E8F
C - - - - - 0x014E25 05:8E15: A9 01     LDA #con_sfx_3_sword_swing
C - - - - - 0x014E27 05:8E17: 4C 80 6D  JMP loc_bat_6D80



tbl_8E1A:
- - - - - - 0x014E2A 05:8E1A: 31        .byte $31   ; 00
- D 0 - - - 0x014E2B 05:8E1B: FF        .byte $FF   ; 01



sub_8E1C:
C - - - - - 0x014E2C 05:8E1C: AD 56 06  LDA ram_0656
C - - - - - 0x014E2F 05:8E1F: C9 0F     CMP #$0F
C - - - - - 0x014E31 05:8E21: F0 4E     BEQ bra_8E71_RTS
C - - - - - 0x014E33 05:8E23: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 0 - I - 0x014E36 05:8E26: 38 8E     .word ofs_8E38_00
- D 0 - I - 0x014E38 05:8E28: DD 70     .word ofs_bat_70DD_01
- D 0 - I - 0x014E3A 05:8E2A: 72 8E     .word ofs_8E72_02
- - - - - - 0x014E3C 05:8E2C: A6 8E     .word ofs_8EA6_03_RTS
- D 0 - I - 0x014E3E 05:8E2E: 4F 71     .word ofs_bat_714F_04
- D 0 - I - 0x014E40 05:8E30: 71 EF     .word ofs_0x01EF81_05
- D 0 - I - 0x014E42 05:8E32: A7 8E     .word ofs_8EA7_06
- - - - - - 0x014E44 05:8E34: B6 8E     .word ofs_8EB6_07
- D 0 - I - 0x014E46 05:8E36: C7 8E     .word ofs_8EC7_08



ofs_8E38_00:
C - - J - - 0x014E48 05:8E38: AD 74 06  LDA ram_0674
C - - - - - 0x014E4B 05:8E3B: 0D 75 06  ORA ram_0675
C - - - - - 0x014E4E 05:8E3E: F0 31     BEQ bra_8E71_RTS
C - - - - - 0x014E50 05:8E40: A2 0F     LDX #$0F
C - - - - - 0x014E52 05:8E42: B5 AC     LDA ram_drop_id,X
C - - - - - 0x014E54 05:8E44: F0 03     BEQ bra_8E49
- - - - - - 0x014E56 05:8E46: 0A        ASL
- - - - - - 0x014E57 05:8E47: 90 28     BCC bra_8E71_RTS
bra_8E49:
C - - - - - 0x014E59 05:8E49: A9 10     LDA #$10
C - - - - - 0x014E5B 05:8E4B: 95 AC     STA ram_drop_id,X
C - - - - - 0x014E5D 05:8E4D: AC 75 06  LDY ram_0675
C - - - - - 0x014E60 05:8E50: B9 1A 8E  LDA tbl_8E1A,Y
C - - - - - 0x014E63 05:8E53: 9D 80 03  STA ram_0380,X
C - - - - - 0x014E66 05:8E56: 20 1B 71  JSR sub_bat_711B
C - - - - - 0x014E69 05:8E59: A9 C0     LDA #$C0
C - - - - - 0x014E6B 05:8E5B: 9D BC 03  STA ram_03BC,X
C - - - - - 0x014E6E 05:8E5E: A9 03     LDA #$03
C - - - - - 0x014E70 05:8E60: 9D D0 03  STA ram_03D0,X
C - - - - - 0x014E73 05:8E63: A9 01     LDA #$01
C - - - - - 0x014E75 05:8E65: 8D D0 03  STA ram_03D0
C - - - - - 0x014E78 05:8E68: AD F8 03  LDA ram_03F8
C - - - - - 0x014E7B 05:8E6B: D0 02     BNE bra_8E6F
- - - - - - 0x014E7D 05:8E6D: A5 98     LDA ram_direction
bra_8E6F:
C - - - - - 0x014E7F 05:8E6F: 95 98     STA ram_direction,X
bra_8E71_RTS:
C - - - - - 0x014E81 05:8E71: 60        RTS



ofs_8E72_02:
C - - J - - 0x014E82 05:8E72: AD 5A 06  LDA ram_065A
C - - - - - 0x014E85 05:8E75: F0 2F     BEQ bra_8EA6_RTS
C - - - - - 0x014E87 05:8E77: A2 12     LDX #$12
C - - - - - 0x014E89 05:8E79: B5 AC     LDA ram_drop_id,X
C - - - - - 0x014E8B 05:8E7B: F0 03     BEQ bra_8E80
C - - - - - 0x014E8D 05:8E7D: 0A        ASL
C - - - - - 0x014E8E 05:8E7E: 90 26     BCC bra_8EA6_RTS
bra_8E80:
C - - - - - 0x014E90 05:8E80: AD 6D 06  LDA ram_rupees_cnt
C - - - - - 0x014E93 05:8E83: F0 21     BEQ bra_8EA6_RTS
C - - - - - 0x014E95 05:8E85: A9 02     LDA #con_sfx_3_arrow_shoot
C - - - - - 0x014E97 05:8E87: 20 80 6D  JSR sub_bat_6D80
C - - - - - 0x014E9A 05:8E8A: EE 7E 06  INC ram_rupees_sbc
C - - - - - 0x014E9D 05:8E8D: A9 10     LDA #$10
sub_8E8F:
loc_8E8F:
C D 0 - - - 0x014E9F 05:8E8F: 95 AC     STA ram_drop_id,X
C - - - - - 0x014EA1 05:8E91: A9 C0     LDA #$C0
C - - - - - 0x014EA3 05:8E93: 9D BC 03  STA ram_03BC,X
C - - - - - 0x014EA6 05:8E96: 20 16 71  JSR sub_bat_7116
C - - - - - 0x014EA9 05:8E99: B5 98     LDA ram_direction,X
C - - - - - 0x014EAB 05:8E9B: 29 0C     AND #con_dir__UD
C - - - - - 0x014EAD 05:8E9D: F0 07     BEQ bra_8EA6_RTS
C - - - - - 0x014EAF 05:8E9F: B5 70     LDA ram_pos_X,X
C - - - - - 0x014EB1 05:8EA1: 18        CLC
C - - - - - 0x014EB2 05:8EA2: 69 03     ADC #$03
C - - - - - 0x014EB4 05:8EA4: 95 70     STA ram_pos_X,X
bra_8EA6_RTS:
ofs_8EA6_03_RTS:
C - - - - - 0x014EB6 05:8EA6: 60        RTS



ofs_8EA7_06:
C - - J - - 0x014EB7 05:8EA7: A2 0F     LDX #$0F
C - - - - - 0x014EB9 05:8EA9: B5 AC     LDA ram_drop_id,X
C - - - - - 0x014EBB 05:8EAB: D0 19     BNE bra_8EC6_RTS
C - - - - - 0x014EBD 05:8EAD: A9 FF     LDA #$FF
C - - - - - 0x014EBF 05:8EAF: 95 28     STA ram_0028,X
C - - - - - 0x014EC1 05:8EB1: A9 80     LDA #$80
C - - - - - 0x014EC3 05:8EB3: 4C 14 71  JMP loc_bat_7114



ofs_8EB6_07:
- - - - - - 0x014EC6 05:8EB6: AD 5E 06  LDA ram_065E
- - - - - - 0x014EC9 05:8EB9: F0 0B     BEQ bra_8EC6_RTS
- - - - - - 0x014ECB 05:8EBB: CE 5E 06  DEC ram_065E
- - - - - - 0x014ECE 05:8EBE: A9 01     LDA #$01
- - - - - - 0x014ED0 05:8EC0: 85 63     STA ram_0063
- - - - - - 0x014ED2 05:8EC2: A9 02     LDA #$02
- - - - - - 0x014ED4 05:8EC4: 85 E0     STA ram_pause_flag
bra_8EC6_RTS:
C - - - - - 0x014ED6 05:8EC6: 60        RTS



ofs_8EC7_08:
C - - J - - 0x014ED7 05:8EC7: A2 12     LDX #$12
C - - - - - 0x014ED9 05:8EC9: B5 AC     LDA ram_drop_id,X
C - - - - - 0x014EDB 05:8ECB: D0 F9     BNE bra_8EC6_RTS
C - - - - - 0x014EDD 05:8ECD: A9 05     LDA #$05
C - - - - - 0x014EDF 05:8ECF: 9D D0 03  STA ram_03D0,X
C - - - - - 0x014EE2 05:8ED2: A9 31     LDA #$31
C - - - - - 0x014EE4 05:8ED4: 4C 8F 8E  JMP loc_8E8F



sub_0x014EE7:
C - - - - - 0x014EE7 05:8ED7: A5 12     LDA ram_game_mode_main
C - - - - - 0x014EE9 05:8ED9: C9 09     CMP #con_GM_09
C - - - - - 0x014EEB 05:8EDB: D0 3F     BNE bra_8F1C
C - - - - - 0x014EED 05:8EDD: A5 84     LDA ram_pos_Y
C - - - - - 0x014EEF 05:8EDF: C9 40     CMP #$40
C - - - - - 0x014EF1 05:8EE1: B0 E3     BCS bra_8EC6_RTS
C - - - - - 0x014EF3 05:8EE3: AD F8 03  LDA ram_03F8
C - - - - - 0x014EF6 05:8EE6: 29 08     AND #$08
C - - - - - 0x014EF8 05:8EE8: F0 DC     BEQ bra_8EC6_RTS
C - - - - - 0x014EFA 05:8EEA: A0 06     LDY #$06
C - - - - - 0x014EFC 05:8EEC: A5 EB     LDA ram_map_location
C - - - - - 0x014EFE 05:8EEE: 48        PHA
bra_8EEF:
C - - - - - 0x014EFF 05:8EEF: 88        DEY
C - - - - - 0x014F00 05:8EF0: D9 B2 6B  CMP ram_6BB2,Y
C - - - - - 0x014F03 05:8EF3: D0 FA     BNE bra_8EEF
C - - - - - 0x014F05 05:8EF5: A8        TAY
C - - - - - 0x014F06 05:8EF6: A5 70     LDA ram_pos_X
C - - - - - 0x014F08 05:8EF8: C9 80     CMP #$80
C - - - - - 0x014F0A 05:8EFA: B0 06     BCS bra_8F02
C - - - - - 0x014F0C 05:8EFC: B9 7E 68  LDA ram_687E,Y
C - - - - - 0x014F0F 05:8EFF: 4C 05 8F  JMP loc_8F05
bra_8F02:
C - - - - - 0x014F12 05:8F02: B9 FE 68  LDA ram_68FE,Y
loc_8F05:
C D 0 - - - 0x014F15 05:8F05: 20 58 8F  JSR sub_8F58
C - - - - - 0x014F18 05:8F08: 68        PLA
C - - - - - 0x014F19 05:8F09: A8        TAY
C - - - - - 0x014F1A 05:8F0A: B9 7E 69  LDA ram_697E,Y
C - - - - - 0x014F1D 05:8F0D: 48        PHA
C - - - - - 0x014F1E 05:8F0E: 29 F0     AND #$F0
C - - - - - 0x014F20 05:8F10: 85 70     STA ram_pos_X
C - - - - - 0x014F22 05:8F12: 68        PLA
C - - - - - 0x014F23 05:8F13: 0A        ASL
C - - - - - 0x014F24 05:8F14: 0A        ASL
C - - - - - 0x014F25 05:8F15: 0A        ASL
C - - - - - 0x014F26 05:8F16: 0A        ASL
C - - - - - 0x014F27 05:8F17: 09 0D     ORA #$0D
C - - - - - 0x014F29 05:8F19: 85 84     STA ram_pos_Y
C - - - - - 0x014F2B 05:8F1B: 60        RTS
bra_8F1C:
C - - - - - 0x014F2C 05:8F1C: 48        PHA
C - - - - - 0x014F2D 05:8F1D: 20 46 6E  JSR sub_bat_6E46
C - - - - - 0x014F30 05:8F20: 68        PLA
C - - - - - 0x014F31 05:8F21: C9 0C     CMP #con_GM_0C
C - - - - - 0x014F33 05:8F23: D0 4E     BNE bra_8F73
C - - - - - 0x014F35 05:8F25: AD 94 03  LDA ram_0394
C - - - - - 0x014F38 05:8F28: D0 48     BNE bra_8F72_RTS
C - - - - - 0x014F3A 05:8F2A: A5 84     LDA ram_pos_Y
C - - - - - 0x014F3C 05:8F2C: C9 9D     CMP #$9D
C - - - - - 0x014F3E 05:8F2E: D0 43     BNE bra_8F73
C - - - - - 0x014F40 05:8F30: A0 01     LDY #$01
C - - - - - 0x014F42 05:8F32: A5 70     LDA ram_pos_X
C - - - - - 0x014F44 05:8F34: C9 50     CMP #$50
C - - - - - 0x014F46 05:8F36: F0 0A     BEQ bra_8F42
C - - - - - 0x014F48 05:8F38: C8        INY
C - - - - - 0x014F49 05:8F39: C9 80     CMP #$80
C - - - - - 0x014F4B 05:8F3B: F0 05     BEQ bra_8F42
C - - - - - 0x014F4D 05:8F3D: C8        INY
C - - - - - 0x014F4E 05:8F3E: C9 B0     CMP #$B0
C - - - - - 0x014F50 05:8F40: D0 30     BNE bra_8F72_RTS
bra_8F42:
C - - - - - 0x014F52 05:8F42: 84 00     STY ram_0000
C - - - - - 0x014F54 05:8F44: A0 FF     LDY #$FF
C - - - - - 0x014F56 05:8F46: A5 EB     LDA ram_map_location
bra_8F48:
C - - - - - 0x014F58 05:8F48: C8        INY
C - - - - - 0x014F59 05:8F49: D9 B2 6B  CMP ram_6BB2,Y
C - - - - - 0x014F5C 05:8F4C: D0 FA     BNE bra_8F48
C - - - - - 0x014F5E 05:8F4E: 98        TYA
C - - - - - 0x014F5F 05:8F4F: 18        CLC
C - - - - - 0x014F60 05:8F50: 65 00     ADC ram_0000
C - - - - - 0x014F62 05:8F52: 29 03     AND #$03
C - - - - - 0x014F64 05:8F54: A8        TAY
C - - - - - 0x014F65 05:8F55: B9 B2 6B  LDA ram_6BB2,Y
sub_8F58:
C - - - - - 0x014F68 05:8F58: 85 EB     STA ram_map_location
C - - - - - 0x014F6A 05:8F5A: 20 C6 E6  JSR sub_0x01E6D6
bra_8F5D:
C - - - - - 0x014F6D 05:8F5D: A9 0A     LDA #con_GM_0A
C - - - - - 0x014F6F 05:8F5F: 85 12     STA ram_game_mode_main
loc_8F61:
C D 0 - - - 0x014F71 05:8F61: A9 00     LDA #$00
C - - - - - 0x014F73 05:8F63: 85 13     STA ram_game_mode_sub
C - - - - - 0x014F75 05:8F65: 85 11     STA ram_0011
C - - - - - 0x014F77 05:8F67: 85 0F     STA ram_000F
C - - - - - 0x014F79 05:8F69: 85 AC     STA ram_drop_id
C - - - - - 0x014F7B 05:8F6B: 85 C0     STA ram_00C0
C - - - - - 0x014F7D 05:8F6D: 85 D3     STA ram_00D3
C - - - - - 0x014F7F 05:8F6F: 8D F0 04  STA ram_04F0
bra_8F72_RTS:
C - - - - - 0x014F82 05:8F72: 60        RTS
bra_8F73:
C - - - - - 0x014F83 05:8F73: 20 61 F1  JSR sub_0x01F171
C - - - - - 0x014F86 05:8F76: A5 11     LDA ram_0011
C - - - - - 0x014F88 05:8F78: F0 E3     BEQ bra_8F5D
C - - - - - 0x014F8A 05:8F7A: 60        RTS



sub_0x014F8B:
C - - - - - 0x014F8B 05:8F7B: A6 64     LDX ram_0064
C - - - - - 0x014F8D 05:8F7D: F0 49     BEQ bra_8FC8_RTS
C - - - - - 0x014F8F 05:8F7F: B5 AC     LDA ram_drop_id,X
C - - - - - 0x014F91 05:8F81: F0 3E     BEQ bra_8FC1
C - - - - - 0x014F93 05:8F83: B5 98     LDA ram_direction,X
C - - - - - 0x014F95 05:8F85: 29 0C     AND #con_dir__UD
C - - - - - 0x014F97 05:8F87: F0 11     BEQ bra_8F9A
C - - - - - 0x014F99 05:8F89: A5 70     LDA ram_pos_X
C - - - - - 0x014F9B 05:8F8B: D5 70     CMP ram_pos_X,X
C - - - - - 0x014F9D 05:8F8D: D0 32     BNE bra_8FC1
C - - - - - 0x014F9F 05:8F8F: A5 84     LDA ram_pos_Y
C - - - - - 0x014FA1 05:8F91: 18        CLC
C - - - - - 0x014FA2 05:8F92: 69 03     ADC #$03
C - - - - - 0x014FA4 05:8F94: 38        SEC
C - - - - - 0x014FA5 05:8F95: F5 84     SBC ram_pos_Y,X
C - - - - - 0x014FA7 05:8F97: 4C A8 8F  JMP loc_8FA8
bra_8F9A:
C - - - - - 0x014FAA 05:8F9A: A5 84     LDA ram_pos_Y
C - - - - - 0x014FAC 05:8F9C: 18        CLC
C - - - - - 0x014FAD 05:8F9D: 69 03     ADC #$03
C - - - - - 0x014FAF 05:8F9F: D5 84     CMP ram_pos_Y,X
C - - - - - 0x014FB1 05:8FA1: D0 1E     BNE bra_8FC1
C - - - - - 0x014FB3 05:8FA3: A5 70     LDA ram_pos_X
C - - - - - 0x014FB5 05:8FA5: 38        SEC
C - - - - - 0x014FB6 05:8FA6: F5 70     SBC ram_pos_X,X
loc_8FA8:
C D 0 - - - 0x014FB8 05:8FA8: 20 1F 70  JSR sub_bat_701F
C - - - - - 0x014FBB 05:8FAB: 85 00     STA ram_0000
C - - - - - 0x014FBD 05:8FAD: C9 10     CMP #$10
C - - - - - 0x014FBF 05:8FAF: 90 18     BCC bra_8FC9
C - - - - - 0x014FC1 05:8FB1: C9 10     CMP #$10
C - - - - - 0x014FC3 05:8FB3: D0 0C     BNE bra_8FC1
C - - - - - 0x014FC5 05:8FB5: A5 98     LDA ram_direction
C - - - - - 0x014FC7 05:8FB7: D5 98     CMP ram_direction,X
C - - - - - 0x014FC9 05:8FB9: D0 06     BNE bra_8FC1
C - - - - - 0x014FCB 05:8FBB: B5 AC     LDA ram_drop_id,X
C - - - - - 0x014FCD 05:8FBD: C9 01     CMP #$01
C - - - - - 0x014FCF 05:8FBF: F0 0C     BEQ bra_8FCD
bra_8FC1:
C - - - - - 0x014FD1 05:8FC1: A9 00     LDA #$00
C - - - - - 0x014FD3 05:8FC3: 85 64     STA ram_0064
C - - - - - 0x014FD5 05:8FC5: 20 B1 FE  JSR sub_0x01FEC1
bra_8FC8_RTS:
C - - - - - 0x014FD8 05:8FC8: 60        RTS
bra_8FC9:
C - - - - - 0x014FD9 05:8FC9: A9 02     LDA #$02
C - - - - - 0x014FDB 05:8FCB: 95 AC     STA ram_drop_id,X
bra_8FCD:
C - - - - - 0x014FDD 05:8FCD: AD F8 03  LDA ram_03F8
C - - - - - 0x014FE0 05:8FD0: F0 3F     BEQ bra_9011
C - - - - - 0x014FE2 05:8FD2: A5 98     LDA ram_direction
C - - - - - 0x014FE4 05:8FD4: A4 00     LDY ram_0000
C - - - - - 0x014FE6 05:8FD6: F0 04     BEQ bra_8FDC
C - - - - - 0x014FE8 05:8FD8: D5 98     CMP ram_direction,X
C - - - - - 0x014FEA 05:8FDA: F0 35     BEQ bra_9011
bra_8FDC:
C - - - - - 0x014FEC 05:8FDC: B5 98     LDA ram_direction,X
C - - - - - 0x014FEE 05:8FDE: C5 0F     CMP ram_000F
C - - - - - 0x014FF0 05:8FE0: F0 2F     BEQ bra_9011
C - - - - - 0x014FF2 05:8FE2: 20 13 70  JSR sub_bat_7013
C - - - - - 0x014FF5 05:8FE5: C5 98     CMP ram_direction
C - - - - - 0x014FF7 05:8FE7: F0 28     BEQ bra_9011
C - - - - - 0x014FF9 05:8FE9: C9 04     CMP #con_dir_Down
C - - - - - 0x014FFB 05:8FEB: D0 22     BNE bra_900F
C - - - - - 0x014FFD 05:8FED: AD F8 03  LDA ram_03F8
C - - - - - 0x015000 05:8FF0: C9 08     CMP #$08
C - - - - - 0x015002 05:8FF2: D0 1B     BNE bra_900F
C - - - - - 0x015004 05:8FF4: 20 1F 90  JSR sub_901F
C - - - - - 0x015007 05:8FF7: A5 84     LDA ram_pos_Y
C - - - - - 0x015009 05:8FF9: 48        PHA
C - - - - - 0x01500A 05:8FFA: 38        SEC
C - - - - - 0x01500B 05:8FFB: E9 08     SBC #$08
C - - - - - 0x01500D 05:8FFD: 85 84     STA ram_pos_Y
C - - - - - 0x01500F 05:8FFF: 20 FA ED  JSR sub_0x01EE0A
C - - - - - 0x015012 05:9002: 68        PLA
C - - - - - 0x015013 05:9003: 85 84     STA ram_pos_Y
C - - - - - 0x015015 05:9005: A5 0F     LDA ram_000F
C - - - - - 0x015017 05:9007: AC 9E 04  LDY ram_049E
C - - - - - 0x01501A 05:900A: CC 4A 03  CPY ram_034A
C - - - - - 0x01501D 05:900D: 90 BE     BCC bra_8FCD
bra_900F:
C - - - - - 0x01501F 05:900F: A9 00     LDA #$00
bra_9011:
C - - - - - 0x015021 05:9011: 48        PHA
C - - - - - 0x015022 05:9012: A6 64     LDX ram_0064
C - - - - - 0x015024 05:9014: 20 93 FA  JSR sub_0x01FAA3
C - - - - - 0x015027 05:9017: A0 0C     LDY #$0C
C - - - - - 0x015029 05:9019: A9 00     LDA #$00
C - - - - - 0x01502B 05:901B: 20 0C 79  JSR sub_bat_790C
C - - - - - 0x01502E 05:901E: 68        PLA
sub_901F:
C - - - - - 0x01502F 05:901F: 85 0F     STA ram_000F
C - - - - - 0x015031 05:9021: A2 00     LDX #$00
C - - - - - 0x015033 05:9023: 60        RTS



sub_0x015034:
C - - - - - 0x015034 05:9024: AD 25 05  LDA ram_0525
C - - - - - 0x015037 05:9027: 85 0A     STA ram_000A
bra_9029:
C - - - - - 0x015039 05:9029: A0 10     LDY #$10
C - - - - - 0x01503B 05:902B: A5 0A     LDA ram_000A
C - - - - - 0x01503D 05:902D: 29 0F     AND #$0F
C - - - - - 0x01503F 05:902F: F0 06     BEQ bra_9037
C - - - - - 0x015041 05:9031: A0 F0     LDY #$F0
C - - - - - 0x015043 05:9033: C9 0F     CMP #$0F
C - - - - - 0x015045 05:9035: D0 06     BNE bra_903D
bra_9037:
C - - - - - 0x015047 05:9037: 98        TYA
C - - - - - 0x015048 05:9038: 18        CLC
C - - - - - 0x015049 05:9039: 65 0A     ADC ram_000A
C - - - - - 0x01504B 05:903B: 85 0A     STA ram_000A
bra_903D:
C - - - - - 0x01504D 05:903D: A5 0A     LDA ram_000A
C - - - - - 0x01504F 05:903F: 29 F0     AND #$F0
C - - - - - 0x015051 05:9041: C9 E0     CMP #$E0
C - - - - - 0x015053 05:9043: D0 05     BNE bra_904A
C - - - - - 0x015055 05:9045: E6 0A     INC ram_000A
C - - - - - 0x015057 05:9047: 4C 50 90  JMP loc_9050
bra_904A:
C - - - - - 0x01505A 05:904A: C9 40     CMP #$40
C - - - - - 0x01505C 05:904C: D0 02     BNE bra_9050
C - - - - - 0x01505E 05:904E: C6 0A     DEC ram_000A
bra_9050:
loc_9050:
C D 0 - - - 0x015060 05:9050: 20 07 AC  JSR sub_AC07
C - - - - - 0x015063 05:9053: A5 0A     LDA ram_000A
C - - - - - 0x015065 05:9055: 29 0F     AND #$0F
C - - - - - 0x015067 05:9057: A8        TAY
C - - - - - 0x015068 05:9058: F0 08     BEQ bra_9062
bra_905A:
C - - - - - 0x01506A 05:905A: A9 2C     LDA #$2C
C - - - - - 0x01506C 05:905C: 20 76 72  JSR sub_bat_7276
C - - - - - 0x01506F 05:905F: 88        DEY
C - - - - - 0x015070 05:9060: D0 F8     BNE bra_905A
bra_9062:
C - - - - - 0x015072 05:9062: A5 0A     LDA ram_000A
C - - - - - 0x015074 05:9064: 29 F0     AND #$F0
C - - - - - 0x015076 05:9066: 38        SEC
C - - - - - 0x015077 05:9067: E9 40     SBC #$40
C - - - - - 0x015079 05:9069: 4A        LSR
C - - - - - 0x01507A 05:906A: 4A        LSR
C - - - - - 0x01507B 05:906B: 4A        LSR
C - - - - - 0x01507C 05:906C: A8        TAY
C - - - - - 0x01507D 05:906D: B1 00     LDA (ram_0000),Y
C - - - - - 0x01507F 05:906F: C9 84     CMP #$84
C - - - - - 0x015081 05:9071: 90 07     BCC bra_907A
C - - - - - 0x015083 05:9073: A5 0A     LDA ram_000A
C - - - - - 0x015085 05:9075: CD 25 05  CMP ram_0525
C - - - - - 0x015088 05:9078: D0 AF     BNE bra_9029
bra_907A:
C - - - - - 0x01508A 05:907A: A5 0A     LDA ram_000A
C - - - - - 0x01508C 05:907C: 8D 25 05  STA ram_0525
C - - - - - 0x01508F 05:907F: 60        RTS



ofs_0x015090_0B:
C - - J - - 0x015090 05:9080: A5 13     LDA ram_game_mode_sub
C - - - - - 0x015092 05:9082: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 0 - I - 0x015095 05:9085: 17 B1     .word ofs_B117_00
- D 0 - I - 0x015097 05:9087: 4F B1     .word ofs_B14F_01
- D 0 - I - 0x015099 05:9089: 30 B1     .word ofs_B130_02
- D 0 - I - 0x01509B 05:908B: 4D AB     .word ofs_AB4D_03
- D 0 - I - 0x01509D 05:908D: 10 AC     .word ofs_AC10_04
- D 0 - I - 0x01509F 05:908F: 6B B1     .word ofs_B16B_05
- D 0 - I - 0x0150A1 05:9091: 73 B1     .word ofs_B173_06
- D 0 - I - 0x0150A3 05:9093: 89 6D     .word ofs_bat_6D89_07
- D 0 - I - 0x0150A5 05:9095: 80 B1     .word ofs_B180_08



ofs_0x0150A7_0C:
C - - J - - 0x0150A7 05:9097: A5 13     LDA ram_game_mode_sub
C - - - - - 0x0150A9 05:9099: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 0 - I - 0x0150AC 05:909C: 17 B1     .word ofs_B117_00
- D 0 - I - 0x0150AE 05:909E: 4F B1     .word ofs_B14F_01
- D 0 - I - 0x0150B0 05:90A0: 30 B1     .word ofs_B130_02
- D 0 - I - 0x0150B2 05:90A2: 5E AB     .word ofs_AB5E_03
- D 0 - I - 0x0150B4 05:90A4: 10 AC     .word ofs_AC10_04
- D 0 - I - 0x0150B6 05:90A6: 6B B1     .word ofs_B16B_05
- D 0 - I - 0x0150B8 05:90A8: 73 B1     .word ofs_B173_06
- D 0 - I - 0x0150BA 05:90AA: 89 6D     .word ofs_bat_6D89_07
- D 0 - I - 0x0150BC 05:90AC: 80 B1     .word ofs_B180_08



sub_90AE:
C - - - - - 0x0150BE 05:90AE: A0 05     LDY #$05
C - - - - - 0x0150C0 05:90B0: A5 EB     LDA ram_map_location
bra_90B2_loop:
C - - - - - 0x0150C2 05:90B2: D9 21 06  CMP ram_0621,Y
C - - - - - 0x0150C5 05:90B5: F0 13     BEQ bra_90CA
C - - - - - 0x0150C7 05:90B7: 88        DEY
C - - - - - 0x0150C8 05:90B8: 10 F8     BPL bra_90B2_loop
C - - - - - 0x0150CA 05:90BA: 20 CE E6  JSR sub_0x01E6DE
C - - - - - 0x0150CD 05:90BD: 29 07     AND #$07
C - - - - - 0x0150CF 05:90BF: C9 07     CMP #$07
C - - - - - 0x0150D1 05:90C1: D0 07     BNE bra_90CA
C - - - - - 0x0150D3 05:90C3: B1 00     LDA (ram_0000),Y
C - - - - - 0x0150D5 05:90C5: 29 F8     AND #$F8
C - - - - - 0x0150D7 05:90C7: 91 00     STA (ram_0000),Y
bra_90C9_RTS:
C - - - - - 0x0150D9 05:90C9: 60        RTS
bra_90CA:
C - - - - - 0x0150DA 05:90CA: 20 CE E6  JSR sub_0x01E6DE
C - - - - - 0x0150DD 05:90CD: 29 07     AND #$07
C - - - - - 0x0150DF 05:90CF: F0 F8     BEQ bra_90C9_RTS
C - - - - - 0x0150E1 05:90D1: C9 07     CMP #$07
C - - - - - 0x0150E3 05:90D3: F0 09     BEQ bra_90DE
C - - - - - 0x0150E5 05:90D5: 85 04     STA ram_0004
C - - - - - 0x0150E7 05:90D7: A5 03     LDA ram_0003
C - - - - - 0x0150E9 05:90D9: 38        SEC
C - - - - - 0x0150EA 05:90DA: E5 04     SBC ram_0004
C - - - - - 0x0150EC 05:90DC: 10 04     BPL bra_90E2
bra_90DE:
C - - - - - 0x0150EE 05:90DE: A9 00     LDA #$00
C - - - - - 0x0150F0 05:90E0: 85 02     STA ram_0002
bra_90E2:
C - - - - - 0x0150F2 05:90E2: 85 03     STA ram_0003
C - - - - - 0x0150F4 05:90E4: 60        RTS



loc_90E5:
C D 0 - - - 0x0150F5 05:90E5: 20 CE E6  JSR sub_0x01E6DE
C - - - - - 0x0150F8 05:90E8: 29 07     AND #$07
C - - - - - 0x0150FA 05:90EA: 85 02     STA ram_0002
C - - - - - 0x0150FC 05:90EC: B1 00     LDA (ram_0000),Y
C - - - - - 0x0150FE 05:90EE: 29 F8     AND #$F8
C - - - - - 0x015100 05:90F0: 91 00     STA (ram_0000),Y
C - - - - - 0x015102 05:90F2: AD 4F 03  LDA ram_034F
C - - - - - 0x015105 05:90F5: CD 4E 03  CMP ram_034E
C - - - - - 0x015108 05:90F8: B0 09     BCS bra_9103
C - - - - - 0x01510A 05:90FA: 29 07     AND #$07
C - - - - - 0x01510C 05:90FC: 18        CLC
C - - - - - 0x01510D 05:90FD: 65 02     ADC ram_0002
C - - - - - 0x01510F 05:90FF: C9 07     CMP #$07
C - - - - - 0x015111 05:9101: 90 02     BCC bra_9105
bra_9103:
C - - - - - 0x015113 05:9103: A9 07     LDA #$07
bra_9105:
C - - - - - 0x015115 05:9105: 11 00     ORA (ram_0000),Y
C - - - - - 0x015117 05:9107: 91 00     STA (ram_0000),Y
C - - - - - 0x015119 05:9109: 60        RTS



ofs_0x01511A_09:
C - - J - - 0x01511A 05:910A: A5 13     LDA ram_game_mode_sub
C - - - - - 0x01511C 05:910C: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 0 - I - 0x01511F 05:910F: 17 B1     .word ofs_B117_00
- D 0 - I - 0x015121 05:9111: 33 B1     .word ofs_B133_01
- D 0 - I - 0x015123 05:9113: 3C B1     .word ofs_B13C_02
- D 0 - I - 0x015125 05:9115: 62 AB     .word ofs_AB62_03
- D 0 - I - 0x015127 05:9117: 10 AC     .word ofs_AC10_04
- D 0 - I - 0x015129 05:9119: 2C B1     .word ofs_B12C_05
- D 0 - I - 0x01512B 05:911B: 43 B1     .word ofs_B143_06
- D 0 - I - 0x01512D 05:911D: 3C B1     .word ofs_B13C_07
- D 0 - I - 0x01512F 05:911F: 99 B1     .word ofs_B199_08
- D 0 - I - 0x015131 05:9121: CD B1     .word ofs_B1CD_09


; bzk garbage
- - - - - - 0x015133 05:9123: A0 00     LDY #$00
- - - - - - 0x015135 05:9125: F0 02     BEQ bra_9129
- - - - - - 0x015137 05:9127: A0 01     LDY #$01
bra_9129:
- - - - - - 0x015139 05:9129: 84 0C     STY ram_000C
- - - - - - 0x01513B 05:912B: BC 4F 03  LDY ram_034F,X
- - - - - - 0x01513E 05:912E: C8        INY
- - - - - - 0x01513F 05:912F: 85 0D     STA ram_000D
- - - - - - 0x015141 05:9131: 84 0E     STY ram_000E
- - - - - - 0x015143 05:9133: 86 08     STX ram_0008
- - - - - - 0x015145 05:9135: A9 40     LDA #$40
- - - - - - 0x015147 05:9137: 8D 43 03  STA ram_0343
- - - - - - 0x01514A 05:913A: A9 44     LDA #$44
- - - - - - 0x01514C 05:913C: 4C 04 78  JMP loc_bat_7804



sub_913F:
C - - - - - 0x01514F 05:913F: A5 53     LDA ram_0053
C - - - - - 0x015151 05:9141: F0 1B     BEQ bra_915E_RTS
C - - - - - 0x015153 05:9143: AC F8 03  LDY ram_03F8
C - - - - - 0x015156 05:9146: F0 16     BEQ bra_915E_RTS
C - - - - - 0x015158 05:9148: A5 98     LDA ram_direction
C - - - - - 0x01515A 05:914A: 2D F8 03  AND ram_03F8
C - - - - - 0x01515D 05:914D: D0 0C     BNE bra_915B
C - - - - - 0x01515F 05:914F: A5 98     LDA ram_direction
C - - - - - 0x015161 05:9151: 20 13 70  JSR sub_bat_7013
C - - - - - 0x015164 05:9154: 2D F8 03  AND ram_03F8
C - - - - - 0x015167 05:9157: D0 02     BNE bra_915B
C - - - - - 0x015169 05:9159: A5 98     LDA ram_direction
bra_915B:
C - - - - - 0x01516B 05:915B: 8D F8 03  STA ram_03F8
bra_915E_RTS:
C - - - - - 0x01516E 05:915E: 60        RTS
- - - - - - 0x01516F 05:915F: A9 F8     LDA #$F8
- - - - - - 0x015171 05:9161: 8D 40 02  STA ram_spr_Y + $40
- - - - - - 0x015174 05:9164: 8D 44 02  STA ram_spr_Y + $44
- - - - - - 0x015177 05:9167: 60        RTS



tbl_9168:
- D 0 - - - 0x015178 05:9168: 78        .byte $78   ; 00
- D 0 - - - 0x015179 05:9169: 78        .byte $78   ; 01
- D 0 - - - 0x01517A 05:916A: 8D        .byte $8D   ; 02
- D 0 - - - 0x01517B 05:916B: 8D        .byte $8D   ; 03

tbl_916C:
- D 0 - - - 0x01517C 05:916C: 3D        .byte $3D   ; 00
- D 0 - - - 0x01517D 05:916D: BD        .byte $BD   ; 01
- D 0 - - - 0x01517E 05:916E: 00        .byte $00   ; 02
- D 0 - - - 0x01517F 05:916F: CF        .byte $CF   ; 03

tbl_9170:
- D 0 - - - 0x015180 05:9170: 5E        .byte $5E   ; 00
- D 0 - - - 0x015181 05:9171: DE        .byte $DE   ; 01
- D 0 - - - 0x015182 05:9172: 21        .byte $21   ; 02
- D 0 - - - 0x015183 05:9173: F1        .byte $F1   ; 03

tbl_9174:
- D 0 - - - 0x015184 05:9174: 3D        .byte $3D   ; 00
- D 0 - - - 0x015185 05:9175: BF        .byte $BF   ; 01
- D 0 - - - 0x015186 05:9176: 00        .byte $00   ; 02
- D 0 - - - 0x015187 05:9177: D2        .byte $D2   ; 03

tbl_9178:
- D 0 - - - 0x015188 05:9178: 5C        .byte $5C   ; 00
- D 0 - - - 0x015189 05:9179: DE        .byte $DE   ; 01
- D 0 - - - 0x01518A 05:917A: 1F        .byte $1F   ; 02
- D 0 - - - 0x01518B 05:917B: F1        .byte $F1   ; 03



sub_0x01518C:
C - - - - - 0x01518C 05:917C: A5 53     LDA ram_0053
C - - - - - 0x01518E 05:917E: D0 22     BNE bra_91A2
bra_9180_loop:
C - - - - - 0x015190 05:9180: A5 98     LDA ram_direction
C - - - - - 0x015192 05:9182: 20 0F 92  JSR sub_920F
C - - - - - 0x015195 05:9185: A0 03     LDY #$03
bra_9187_loop:
C - - - - - 0x015197 05:9187: A5 00     LDA ram_0000
C - - - - - 0x015199 05:9189: D9 68 91  CMP tbl_9168,Y
C - - - - - 0x01519C 05:918C: D0 0C     BNE bra_919A
C - - - - - 0x01519E 05:918E: A5 01     LDA ram_0001
C - - - - - 0x0151A0 05:9190: D9 6C 91  CMP tbl_916C,Y
C - - - - - 0x0151A3 05:9193: 90 05     BCC bra_919A
C - - - - - 0x0151A5 05:9195: D9 70 91  CMP tbl_9170,Y
C - - - - - 0x0151A8 05:9198: 90 3C     BCC bra_91D6
bra_919A:
C - - - - - 0x0151AA 05:919A: 88        DEY
C - - - - - 0x0151AB 05:919B: 10 EA     BPL bra_9187_loop
bra_919D:
C - - - - - 0x0151AD 05:919D: A9 00     LDA #$00
C - - - - - 0x0151AF 05:919F: 85 53     STA ram_0053
C - - - - - 0x0151B1 05:91A1: 60        RTS
bra_91A2:
C - - - - - 0x0151B2 05:91A2: 48        PHA
C - - - - - 0x0151B3 05:91A3: 20 0F 92  JSR sub_920F
C - - - - - 0x0151B6 05:91A6: 68        PLA
C - - - - - 0x0151B7 05:91A7: 20 13 70  JSR sub_bat_7013
C - - - - - 0x0151BA 05:91AA: A5 01     LDA ram_0001
C - - - - - 0x0151BC 05:91AC: D9 6C 91  CMP tbl_916C,Y
C - - - - - 0x0151BF 05:91AF: 90 0B     BCC bra_91BC
C - - - - - 0x0151C1 05:91B1: D9 70 91  CMP tbl_9170,Y
C - - - - - 0x0151C4 05:91B4: B0 06     BCS bra_91BC
C - - - - - 0x0151C6 05:91B6: A5 53     LDA ram_0053
C - - - - - 0x0151C8 05:91B8: C5 98     CMP ram_direction
C - - - - - 0x0151CA 05:91BA: F0 C4     BEQ bra_9180_loop
bra_91BC:
C - - - - - 0x0151CC 05:91BC: A0 03     LDY #$03
bra_91BE:
C - - - - - 0x0151CE 05:91BE: A5 00     LDA ram_0000
C - - - - - 0x0151D0 05:91C0: D9 68 91  CMP tbl_9168,Y
C - - - - - 0x0151D3 05:91C3: D0 0C     BNE bra_91D1
C - - - - - 0x0151D5 05:91C5: A5 01     LDA ram_0001
C - - - - - 0x0151D7 05:91C7: D9 74 91  CMP tbl_9174,Y
C - - - - - 0x0151DA 05:91CA: 90 05     BCC bra_91D1
C - - - - - 0x0151DC 05:91CC: D9 78 91  CMP tbl_9178,Y
C - - - - - 0x0151DF 05:91CF: 90 05     BCC bra_91D6
bra_91D1:
C - - - - - 0x0151E1 05:91D1: 88        DEY
C - - - - - 0x0151E2 05:91D2: 10 EA     BPL bra_91BE
C - - - - - 0x0151E4 05:91D4: 30 C7     BMI bra_919D
bra_91D6:
C - - - - - 0x0151E6 05:91D6: 84 0E     STY ram_000E
C - - - - - 0x0151E8 05:91D8: AD F8 03  LDA ram_03F8
C - - - - - 0x0151EB 05:91DB: 29 0F     AND #$0F
C - - - - - 0x0151ED 05:91DD: 85 02     STA ram_0002
C - - - - - 0x0151EF 05:91DF: 85 0C     STA ram_000C
C - - - - - 0x0151F1 05:91E1: D9 C3 6D  CMP tbl_bat_6DC3_direction,Y
C - - - - - 0x0151F4 05:91E4: D0 25     BNE bra_920B_RTS
C - - - - - 0x0151F6 05:91E6: 20 F6 A3  JSR sub_A3F6
C - - - - - 0x0151F9 05:91E9: 85 0D     STA ram_000D
C - - - - - 0x0151FB 05:91EB: 20 20 92  JSR sub_9220
C - - - - - 0x0151FE 05:91EE: A4 0E     LDY ram_000E
C - - - - - 0x015200 05:91F0: 30 19     BMI bra_920B_RTS
C - - - - - 0x015202 05:91F2: B9 C3 6D  LDA tbl_bat_6DC3_direction,Y
C - - - - - 0x015205 05:91F5: 85 98     STA ram_direction
C - - - - - 0x015207 05:91F7: 85 0F     STA ram_000F
C - - - - - 0x015209 05:91F9: 85 53     STA ram_0053
C - - - - - 0x01520B 05:91FB: A5 0D     LDA ram_000D
C - - - - - 0x01520D 05:91FD: 29 07     AND #$07
C - - - - - 0x01520F 05:91FF: C9 02     CMP #$02
C - - - - - 0x015211 05:9201: F0 09     BEQ bra_920C
C - - - - - 0x015213 05:9203: C9 03     CMP #$03
C - - - - - 0x015215 05:9205: F0 05     BEQ bra_920C
C - - - - - 0x015217 05:9207: C9 04     CMP #$04
C - - - - - 0x015219 05:9209: F0 01     BEQ bra_920C
bra_920B_RTS:
C - - - - - 0x01521B 05:920B: 60        RTS
bra_920C:
C - - - - - 0x01521C 05:920C: 4C 82 F1  JMP loc_0x01F192



sub_920F:
C - - - - - 0x01521F 05:920F: A6 70     LDX ram_pos_X
C - - - - - 0x015221 05:9211: A4 84     LDY ram_pos_Y
C - - - - - 0x015223 05:9213: 29 03     AND #$03
C - - - - - 0x015225 05:9215: F0 04     BEQ bra_921B
C - - - - - 0x015227 05:9217: A4 70     LDY ram_pos_X
C - - - - - 0x015229 05:9219: A6 84     LDX ram_pos_Y
bra_921B:
C - - - - - 0x01522B 05:921B: 86 00     STX ram_0000
C - - - - - 0x01522D 05:921D: 84 01     STY ram_0001
C - - - - - 0x01522F 05:921F: 60        RTS



sub_9220:
C - - - - - 0x015230 05:9220: 29 07     AND #$07
C - - - - - 0x015232 05:9222: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 0 - I - 0x015235 05:9225: 39 92     .word ofs_9239_00_RTS
- D 0 - I - 0x015237 05:9227: 35 92     .word ofs_9235_01
- D 0 - I - 0x015239 05:9229: 3A 92     .word ofs_923A_02
- - - - - - 0x01523B 05:922B: 3A 92     .word ofs_923A_03
- D 0 - I - 0x01523D 05:922D: 4A 92     .word ofs_924A_04
- D 0 - I - 0x01523F 05:922F: 6B 92     .word ofs_926B_05
- - - - - - 0x015241 05:9231: 6B 92     .word ofs_926B_06
- D 0 - I - 0x015243 05:9233: 51 92     .word ofs_9251_07



bra_9235:   ; bzk
loc_9235:
ofs_9235_01:
C D 0 - - - 0x015245 05:9235: A0 FF     LDY #$FF
C - - - - - 0x015247 05:9237: 84 0E     STY ram_000E
ofs_9239_00_RTS:
C - - J - - 0x015249 05:9239: 60        RTS



ofs_923A_02:
ofs_923A_03:
C - - J - - 0x01524A 05:923A: A5 28     LDA ram_0028
C - - - - - 0x01524C 05:923C: F0 05     BEQ bra_9243
C - - - - - 0x01524E 05:923E: C9 01     CMP #$01
C - - - - - 0x015250 05:9240: D0 05     BNE bra_9247
C - - - - - 0x015252 05:9242: 60        RTS
bra_9243:
C - - - - - 0x015253 05:9243: A9 18     LDA #$18
C - - - - - 0x015255 05:9245: 85 28     STA ram_0028
bra_9247:
C - - - - - 0x015257 05:9247: 4C 35 92  JMP loc_9235



ofs_924A_04:
C - - J - - 0x01525A 05:924A: A5 0C     LDA ram_000C
C - - - - - 0x01525C 05:924C: 25 EE     AND ram_00EE
C - - - - - 0x01525E 05:924E: F0 E5     BEQ bra_9235
C - - - - - 0x015260 05:9250: 60        RTS



ofs_9251_07:
C - - J - - 0x015261 05:9251: A5 54     LDA ram_0054
C - - - - - 0x015263 05:9253: D0 E0     BNE bra_9235
C - - - - - 0x015265 05:9255: A5 0C     LDA ram_000C
C - - - - - 0x015267 05:9257: 25 EE     AND ram_00EE
C - - - - - 0x015269 05:9259: F0 DA     BEQ bra_9235
C - - - - - 0x01526B 05:925B: 2D 19 05  AND ram_0519
C - - - - - 0x01526E 05:925E: F0 02     BEQ bra_9262
C - - - - - 0x015270 05:9260: D0 2C     BNE bra_928E
bra_9262:
C - - - - - 0x015272 05:9262: AD 19 05  LDA ram_0519
C - - - - - 0x015275 05:9265: 05 0C     ORA ram_000C
C - - - - - 0x015277 05:9267: 8D 19 05  STA ram_0519
C - - - - - 0x01527A 05:926A: 60        RTS



ofs_926B_05:
ofs_926B_06:
C - - J - - 0x01527B 05:926B: A5 0C     LDA ram_000C
C - - - - - 0x01527D 05:926D: 25 EE     AND ram_00EE
C - - - - - 0x01527F 05:926F: D0 21     BNE bra_9292_RTS
C - - - - - 0x015281 05:9271: A5 54     LDA ram_0054
C - - - - - 0x015283 05:9273: D0 19     BNE bra_928E
C - - - - - 0x015285 05:9275: AD 64 06  LDA ram_0664
C - - - - - 0x015288 05:9278: D0 08     BNE bra_9282
C - - - - - 0x01528A 05:927A: AD 6E 06  LDA ram_keys_cnt
C - - - - - 0x01528D 05:927D: F0 0C     BEQ bra_928B
C - - - - - 0x01528F 05:927F: CE 6E 06  DEC ram_keys_cnt
bra_9282:
C - - - - - 0x015292 05:9282: A5 0C     LDA ram_000C
C - - - - - 0x015294 05:9284: 20 DA 8A  JSR sub_8ADA
C - - - - - 0x015297 05:9287: A9 20     LDA #$20
C - - - - - 0x015299 05:9289: 85 28     STA ram_0028
bra_928B:
C - - - - - 0x01529B 05:928B: 4C 35 92  JMP loc_9235
bra_928E:
C - - - - - 0x01529E 05:928E: A5 28     LDA ram_0028
C - - - - - 0x0152A0 05:9290: D0 F9     BNE bra_928B
bra_9292_RTS:
C - - - - - 0x0152A2 05:9292: 60        RTS



sub_9293:
C - - - - - 0x0152A3 05:9293: A0 05     LDY #$05
C - - - - - 0x0152A5 05:9295: A5 EB     LDA ram_map_location
bra_9297:
C - - - - - 0x0152A7 05:9297: D9 21 06  CMP ram_0621,Y
C - - - - - 0x0152AA 05:929A: F0 2A     BEQ bra_92C6
C - - - - - 0x0152AC 05:929C: 88        DEY
C - - - - - 0x0152AD 05:929D: 10 F8     BPL bra_9297
C - - - - - 0x0152AF 05:929F: 20 CE E6  JSR sub_0x01E6DE
C - - - - - 0x0152B2 05:92A2: 29 C0     AND #$C0
C - - - - - 0x0152B4 05:92A4: C9 C0     CMP #$C0
C - - - - - 0x0152B6 05:92A6: D0 1E     BNE bra_92C6
C - - - - - 0x0152B8 05:92A8: A5 02     LDA ram_0002
C - - - - - 0x0152BA 05:92AA: C9 32     CMP #$32
C - - - - - 0x0152BC 05:92AC: 90 0C     BCC bra_92BA
- - - - - - 0x0152BE 05:92AE: C9 3A     CMP #$3A
- - - - - - 0x0152C0 05:92B0: F0 08     BEQ bra_92BA
- - - - - - 0x0152C2 05:92B2: C9 3B     CMP #$3B
- - - - - - 0x0152C4 05:92B4: F0 04     BEQ bra_92BA
- - - - - - 0x0152C6 05:92B6: C9 49     CMP #$49
- - - - - - 0x0152C8 05:92B8: 90 16     BCC bra_92D0
bra_92BA:
C - - - - - 0x0152CA 05:92BA: B1 00     LDA (ram_0000),Y
C - - - - - 0x0152CC 05:92BC: 29 3F     AND #$3F
C - - - - - 0x0152CE 05:92BE: 91 00     STA (ram_0000),Y
C - - - - - 0x0152D0 05:92C0: A9 00     LDA #$00
C - - - - - 0x0152D2 05:92C2: 99 60 05  STA ram_0560,Y
C - - - - - 0x0152D5 05:92C5: 60        RTS
bra_92C6:
C - - - - - 0x0152D6 05:92C6: A4 EB     LDY ram_map_location
C - - - - - 0x0152D8 05:92C8: A5 03     LDA ram_0003
C - - - - - 0x0152DA 05:92CA: 38        SEC
C - - - - - 0x0152DB 05:92CB: F9 60 05  SBC ram_0560,Y
C - - - - - 0x0152DE 05:92CE: 10 04     BPL bra_92D4
bra_92D0:
C - - - - - 0x0152E0 05:92D0: A9 00     LDA #$00
C - - - - - 0x0152E2 05:92D2: 85 02     STA ram_0002
bra_92D4:
C - - - - - 0x0152E4 05:92D4: 85 03     STA ram_0003
C - - - - - 0x0152E6 05:92D6: 60        RTS



sub_92D7:
C - - - - - 0x0152E7 05:92D7: 20 CE E6  JSR sub_0x01E6DE
C - - - - - 0x0152EA 05:92DA: 29 3F     AND #$3F
C - - - - - 0x0152EC 05:92DC: 91 00     STA (ram_0000),Y
C - - - - - 0x0152EE 05:92DE: AD 4E 03  LDA ram_034E
C - - - - - 0x0152F1 05:92E1: F0 33     BEQ bra_9316
C - - - - - 0x0152F3 05:92E3: AD 4F 03  LDA ram_034F
C - - - - - 0x0152F6 05:92E6: F0 13     BEQ bra_92FB
C - - - - - 0x0152F8 05:92E8: AC 5F 03  LDY ram_035F
C - - - - - 0x0152FB 05:92EB: C0 32     CPY #$32
C - - - - - 0x0152FD 05:92ED: 90 0C     BCC bra_92FB
C - - - - - 0x0152FF 05:92EF: C0 3A     CPY #$3A
C - - - - - 0x015301 05:92F1: F0 08     BEQ bra_92FB
C - - - - - 0x015303 05:92F3: C0 3B     CPY #$3B
C - - - - - 0x015305 05:92F5: F0 04     BEQ bra_92FB
C - - - - - 0x015307 05:92F7: C0 49     CPY #$49
C - - - - - 0x015309 05:92F9: 90 1B     BCC bra_9316
bra_92FB:
C - - - - - 0x01530B 05:92FB: CD 4E 03  CMP ram_034E
C - - - - - 0x01530E 05:92FE: B0 16     BCS bra_9316
C - - - - - 0x015310 05:9300: A4 EB     LDY ram_map_location
C - - - - - 0x015312 05:9302: 18        CLC
C - - - - - 0x015313 05:9303: 79 60 05  ADC ram_0560,Y
C - - - - - 0x015316 05:9306: 99 60 05  STA ram_0560,Y
C - - - - - 0x015319 05:9309: C9 03     CMP #$03
C - - - - - 0x01531B 05:930B: 90 02     BCC bra_930F
C - - - - - 0x01531D 05:930D: A9 02     LDA #$02
bra_930F:
C - - - - - 0x01531F 05:930F: 18        CLC
C - - - - - 0x015320 05:9310: 6A        ROR
C - - - - - 0x015321 05:9311: 6A        ROR
C - - - - - 0x015322 05:9312: 6A        ROR
C - - - - - 0x015323 05:9313: 4C 1F 93  JMP loc_931F
bra_9316:
C - - - - - 0x015326 05:9316: A4 EB     LDY ram_map_location
C - - - - - 0x015328 05:9318: A9 0F     LDA #$0F
C - - - - - 0x01532A 05:931A: 99 60 05  STA ram_0560,Y
C - - - - - 0x01532D 05:931D: A9 C0     LDA #$C0
loc_931F:
C D 0 - - - 0x01532F 05:931F: 11 00     ORA (ram_0000),Y
C - - - - - 0x015331 05:9321: 91 00     STA (ram_0000),Y
C - - - - - 0x015333 05:9323: 60        RTS



tbl_9324:
- D 0 - - - 0x015334 05:9324: 00        .byte $00   ; 00
- D 0 - - - 0x015335 05:9325: 10        .byte $10   ; 01
- D 0 - - - 0x015336 05:9326: 20        .byte $20   ; 02
- D 0 - - - 0x015337 05:9327: 40        .byte $40   ; 03



sub_0x015338:
C - - - - - 0x015338 05:9328: 20 CE E6  JSR sub_0x01E6DE
C - - - - - 0x01533B 05:932B: AC BC 6B  LDY ram_6BBC
C - - - - - 0x01533E 05:932E: B1 00     LDA (ram_0000),Y
C - - - - - 0x015340 05:9330: 29 C0     AND #$C0
C - - - - - 0x015342 05:9332: C9 C0     CMP #$C0
C - - - - - 0x015344 05:9334: F0 17     BEQ bra_934D
C - - - - - 0x015346 05:9336: A4 EB     LDY ram_map_location
C - - - - - 0x015348 05:9338: B9 7E 6A  LDA ram_6A7E,Y
C - - - - - 0x01534B 05:933B: 29 60     AND #$60
C - - - - - 0x01534D 05:933D: 0A        ASL
C - - - - - 0x01534E 05:933E: 2A        ROL
C - - - - - 0x01534F 05:933F: 2A        ROL
C - - - - - 0x015350 05:9340: 2A        ROL
C - - - - - 0x015351 05:9341: AA        TAX
C - - - - - 0x015352 05:9342: BD 24 93  LDA tbl_9324,X
C - - - - - 0x015355 05:9345: F0 06     BEQ bra_934D
C - - - - - 0x015357 05:9347: 09 80     ORA #con_sfx_1_80
C - - - - - 0x015359 05:9349: 8D 01 06  STA ram_sfx_1
C - - - - - 0x01535C 05:934C: 60        RTS
bra_934D:
C - - - - - 0x01535D 05:934D: A9 80     LDA #con_sfx_3_80
C - - - - - 0x01535F 05:934F: 4C 80 6D  JMP loc_bat_6D80


; bzk garbage
- - - - - - 0x015362 05:9352: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01536A 05:935A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x015372 05:9362: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01537A 05:936A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x015382 05:9372: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01538A 05:937A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x015392 05:9382: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01539A 05:938A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0153A2 05:9392: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0153AA 05:939A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0153B2 05:93A2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0153BA 05:93AA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0153C2 05:93B2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0153CA 05:93BA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0153D2 05:93C2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0153DA 05:93CA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0153E2 05:93D2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0153EA 05:93DA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0153F2 05:93E2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0153FA 05:93EA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x015402 05:93F2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01540A 05:93FA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF   ; 



sub_9400:
C - - - - - 0x015410 05:9400: A4 09     LDY ram_0009
C - - - - - 0x015412 05:9402: B9 E3 A5  LDA tbl_A5E3,Y
C - - - - - 0x015415 05:9405: 18        CLC
C - - - - - 0x015416 05:9406: 65 07     ADC ram_0007
C - - - - - 0x015418 05:9408: A8        TAY
C - - - - - 0x015419 05:9409: B9 D5 A5  LDA tbl_A5D5,Y
C - - - - - 0x01541C 05:940C: A8        TAY
C - - - - - 0x01541D 05:940D: B1 02     LDA (ram_0002),Y
C - - - - - 0x01541F 05:940F: 9D 02 03  STA ram_0302,X
C - - - - - 0x015422 05:9412: E8        INX
C - - - - - 0x015423 05:9413: E6 07     INC ram_0007
C - - - - - 0x015425 05:9415: C6 04     DEC ram_0004
C - - - - - 0x015427 05:9417: 60        RTS



off_9418:
- D 0 - I - 0x015428 05:9418: 00        .byte $00   ; 
- D 0 - I - 0x015429 05:9419: 00        .byte $00   ; 
- D 0 - I - 0x01542A 05:941A: 00        .byte $00   ; 
- D 0 - I - 0x01542B 05:941B: 00        .byte $00   ; 
- D 0 - I - 0x01542C 05:941C: 00        .byte $00   ; 
- D 0 - I - 0x01542D 05:941D: 00        .byte $00   ; 
- D 0 - I - 0x01542E 05:941E: 00        .byte $00   ; 
- D 0 - I - 0x01542F 05:941F: 50        .byte $50   ; 
- D 0 - I - 0x015430 05:9420: 01        .byte $01   ; 
- D 0 - I - 0x015431 05:9421: 01        .byte $01   ; 
- D 0 - I - 0x015432 05:9422: 81        .byte $81   ; 
- D 0 - I - 0x015433 05:9423: 01        .byte $01   ; 
- D 0 - I - 0x015434 05:9424: 01        .byte $01   ; 
- D 0 - I - 0x015435 05:9425: 01        .byte $01   ; 
- D 0 - I - 0x015436 05:9426: 01        .byte $01   ; 
- D 0 - I - 0x015437 05:9427: 01        .byte $01   ; 
- D 0 - I - 0x015438 05:9428: 01        .byte $01   ; 
- D 0 - I - 0x015439 05:9429: F1        .byte $F1   ; 
- D 0 - I - 0x01543A 05:942A: C8        .byte $C8   ; 
- D 0 - I - 0x01543B 05:942B: A0        .byte $A0   ; 
- D 0 - I - 0x01543C 05:942C: A1        .byte $A1   ; 
- D 0 - I - 0x01543D 05:942D: A0        .byte $A0   ; 
- D 0 - I - 0x01543E 05:942E: 06        .byte $06   ; 
- D 0 - I - 0x01543F 05:942F: 38        .byte $38   ; 
- D 0 - I - 0x015440 05:9430: A1        .byte $A1   ; 
- D 0 - I - 0x015441 05:9431: D2        .byte $D2   ; 
- D 0 - I - 0x015442 05:9432: A5        .byte $A5   ; 
- D 0 - I - 0x015443 05:9433: A4        .byte $A4   ; 
- D 0 - I - 0x015444 05:9434: A2        .byte $A2   ; 
- D 0 - I - 0x015445 05:9435: A3        .byte $A3   ; 
- D 0 - I - 0x015446 05:9436: F0        .byte $F0   ; 
- D 0 - I - 0x015447 05:9437: A6        .byte $A6   ; 
- - - - - - 0x015448 05:9438: 01        .byte $01   ; 
- - - - - - 0x015449 05:9439: 01        .byte $01   ; 
- - - - - - 0x01544A 05:943A: 01        .byte $01   ; 
- - - - - - 0x01544B 05:943B: 50        .byte $50   ; 
- - - - - - 0x01544C 05:943C: 01        .byte $01   ; 
- - - - - - 0x01544D 05:943D: 01        .byte $01   ; 
- - - - - - 0x01544E 05:943E: 81        .byte $81   ; 
- - - - - - 0x01544F 05:943F: 01        .byte $01   ; 
- - - - - - 0x015450 05:9440: 01        .byte $01   ; 
- - - - - - 0x015451 05:9441: A7        .byte $A7   ; 
- - - - - - 0x015452 05:9442: A9        .byte $A9   ; 
- - - - - - 0x015453 05:9443: C8        .byte $C8   ; 
- - - - - - 0x015454 05:9444: C7        .byte $C7   ; 
- - - - - - 0x015455 05:9445: A0        .byte $A0   ; 
- - - - - - 0x015456 05:9446: 06        .byte $06   ; 
- - - - - - 0x015457 05:9447: 06        .byte $06   ; 
- - - - - - 0x015458 05:9448: A1        .byte $A1   ; 
- - - - - - 0x015459 05:9449: A5        .byte $A5   ; 
- - - - - - 0x01545A 05:944A: A4        .byte $A4   ; 
- - - - - - 0x01545B 05:944B: A8        .byte $A8   ; 
- - - - - - 0x01545C 05:944C: F0        .byte $F0   ; 
- - - - - - 0x01545D 05:944D: A6        .byte $A6   ; 
- - - - - - 0x01545E 05:944E: 01        .byte $01   ; 
- - - - - - 0x01545F 05:944F: 81        .byte $81   ; 
- - - - - - 0x015460 05:9450: 01        .byte $01   ; 
- - - - - - 0x015461 05:9451: 01        .byte $01   ; 
- - - - - - 0x015462 05:9452: 50        .byte $50   ; 
- - - - - - 0x015463 05:9453: 00        .byte $00   ; 
- - - - - - 0x015464 05:9454: 00        .byte $00   ; 
- - - - - - 0x015465 05:9455: 00        .byte $00   ; 
- - - - - - 0x015466 05:9456: 00        .byte $00   ; 
- - - - - - 0x015467 05:9457: 00        .byte $00   ; 
- - - - - - 0x015468 05:9458: 00        .byte $00   ; 
- - - - - - 0x015469 05:9459: E6        .byte $E6   ; 
- - - - - - 0x01546A 05:945A: 06        .byte $06   ; 
- - - - - - 0x01546B 05:945B: 06        .byte $06   ; 
- - - - - - 0x01546C 05:945C: A1        .byte $A1   ; 
- - - - - - 0x01546D 05:945D: A0        .byte $A0   ; 
- - - - - - 0x01546E 05:945E: E7        .byte $E7   ; 
- - - - - - 0x01546F 05:945F: E6        .byte $E6   ; 
- - - - - - 0x015470 05:9460: A1        .byte $A1   ; 
- - - - - - 0x015471 05:9461: 84        .byte $84   ; 
- - - - - - 0x015472 05:9462: 90        .byte $90   ; 
- - - - - - 0x015473 05:9463: 02        .byte $02   ; 
- - - - - - 0x015474 05:9464: 10        .byte $10   ; 
- - - - - - 0x015475 05:9465: 02        .byte $02   ; 
- - - - - - 0x015476 05:9466: 02        .byte $02   ; 
- - - - - - 0x015477 05:9467: A8        .byte $A8   ; 
- D 0 - I - 0x015478 05:9468: A9        .byte $A9   ; 
- D 0 - I - 0x015479 05:9469: A8        .byte $A8   ; 
- D 0 - I - 0x01547A 05:946A: A9        .byte $A9   ; 
- D 0 - I - 0x01547B 05:946B: 03        .byte $03   ; 
- D 0 - I - 0x01547C 05:946C: 05        .byte $05   ; 
- D 0 - I - 0x01547D 05:946D: E4        .byte $E4   ; 
- D 0 - I - 0x01547E 05:946E: 24        .byte $24   ; 
- D 0 - I - 0x01547F 05:946F: 02        .byte $02   ; 
- D 0 - I - 0x015480 05:9470: 02        .byte $02   ; 
- D 0 - I - 0x015481 05:9471: 03        .byte $03   ; 
- D 0 - I - 0x015482 05:9472: 05        .byte $05   ; 
- D 0 - I - 0x015483 05:9473: 22        .byte $22   ; 
- D 0 - I - 0x015484 05:9474: 24        .byte $24   ; 
- D 0 - I - 0x015485 05:9475: 02        .byte $02   ; 
- D 0 - I - 0x015486 05:9476: A8        .byte $A8   ; 
- D 0 - I - 0x015487 05:9477: A6        .byte $A6   ; 
- D 0 - I - 0x015488 05:9478: A7        .byte $A7   ; 
- D 0 - I - 0x015489 05:9479: A6        .byte $A6   ; 
- D 0 - I - 0x01548A 05:947A: A7        .byte $A7   ; 
- D 0 - I - 0x01548B 05:947B: F1        .byte $F1   ; 
- D 0 - I - 0x01548C 05:947C: A9        .byte $A9   ; 
- D 0 - I - 0x01548D 05:947D: A8        .byte $A8   ; 
- D 0 - I - 0x01548E 05:947E: A9        .byte $A9   ; 
- D 0 - I - 0x01548F 05:947F: A2        .byte $A2   ; 
- D 0 - I - 0x015490 05:9480: A3        .byte $A3   ; 
- D 0 - I - 0x015491 05:9481: A8        .byte $A8   ; 
- D 0 - I - 0x015492 05:9482: A6        .byte $A6   ; 
- D 0 - I - 0x015493 05:9483: A7        .byte $A7   ; 
- D 0 - I - 0x015494 05:9484: A6        .byte $A6   ; 
- D 0 - I - 0x015495 05:9485: A7        .byte $A7   ; 
- D 0 - I - 0x015496 05:9486: A6        .byte $A6   ; 
- D 0 - I - 0x015497 05:9487: 01        .byte $01   ; 
- D 0 - I - 0x015498 05:9488: 01        .byte $01   ; 
- D 0 - I - 0x015499 05:9489: 01        .byte $01   ; 
- D 0 - I - 0x01549A 05:948A: 01        .byte $01   ; 
- D 0 - I - 0x01549B 05:948B: 01        .byte $01   ; 
- D 0 - I - 0x01549C 05:948C: 50        .byte $50   ; 
- D 0 - I - 0x01549D 05:948D: 01        .byte $01   ; 
- D 0 - I - 0x01549E 05:948E: A7        .byte $A7   ; 
- D 0 - I - 0x01549F 05:948F: F1        .byte $F1   ; 
- D 0 - I - 0x0154A0 05:9490: F0        .byte $F0   ; 
- D 0 - I - 0x0154A1 05:9491: A6        .byte $A6   ; 
- D 0 - I - 0x0154A2 05:9492: 81        .byte $81   ; 
- D 0 - I - 0x0154A3 05:9493: 01        .byte $01   ; 
- D 0 - I - 0x0154A4 05:9494: A7        .byte $A7   ; 
- D 0 - I - 0x0154A5 05:9495: A6        .byte $A6   ; 
- D 0 - I - 0x0154A6 05:9496: 01        .byte $01   ; 
- D 0 - I - 0x0154A7 05:9497: 01        .byte $01   ; 
- - - - - - 0x0154A8 05:9498: A7        .byte $A7   ; 
- - - - - - 0x0154A9 05:9499: A9        .byte $A9   ; 
- - - - - - 0x0154AA 05:949A: A8        .byte $A8   ; 
- - - - - - 0x0154AB 05:949B: A9        .byte $A9   ; 
- - - - - - 0x0154AC 05:949C: 71        .byte $71   ; 
- - - - - - 0x0154AD 05:949D: 32        .byte $32   ; 
- - - - - - 0x0154AE 05:949E: 33        .byte $33   ; 
- - - - - - 0x0154AF 05:949F: 02        .byte $02   ; 
- - - - - - 0x0154B0 05:94A0: 34        .byte $34   ; 
- - - - - - 0x0154B1 05:94A1: 02        .byte $02   ; 
- - - - - - 0x0154B2 05:94A2: 34        .byte $34   ; 
- - - - - - 0x0154B3 05:94A3: 02        .byte $02   ; 
- - - - - - 0x0154B4 05:94A4: 34        .byte $34   ; 
- - - - - - 0x0154B5 05:94A5: A8        .byte $A8   ; 
- - - - - - 0x0154B6 05:94A6: F0        .byte $F0   ; 
- - - - - - 0x0154B7 05:94A7: 00        .byte $00   ; 
- D 0 - I - 0x0154B8 05:94A8: 00        .byte $00   ; 
- D 0 - I - 0x0154B9 05:94A9: A9        .byte $A9   ; 
- D 0 - I - 0x0154BA 05:94AA: 10        .byte $10   ; 
- D 0 - I - 0x0154BB 05:94AB: 53        .byte $53   ; 
- D 0 - I - 0x0154BC 05:94AC: 54        .byte $54   ; 
- D 0 - I - 0x0154BD 05:94AD: B1        .byte $B1   ; 
- D 0 - I - 0x0154BE 05:94AE: 55        .byte $55   ; 
- D 0 - I - 0x0154BF 05:94AF: B2        .byte $B2   ; 
- D 0 - I - 0x0154C0 05:94B0: 54        .byte $54   ; 
- D 0 - I - 0x0154C1 05:94B1: 54        .byte $54   ; 
- D 0 - I - 0x0154C2 05:94B2: 54        .byte $54   ; 
- D 0 - I - 0x0154C3 05:94B3: 56        .byte $56   ; 
- D 0 - I - 0x0154C4 05:94B4: 02        .byte $02   ; 
- D 0 - I - 0x0154C5 05:94B5: B5        .byte $B5   ; 
- D 0 - I - 0x0154C6 05:94B6: A8        .byte $A8   ; 
- D 0 - I - 0x0154C7 05:94B7: 00        .byte $00   ; 
- D 0 - I - 0x0154C8 05:94B8: 00        .byte $00   ; 
- D 0 - I - 0x0154C9 05:94B9: F1        .byte $F1   ; 
- D 0 - I - 0x0154CA 05:94BA: A9        .byte $A9   ; 
- D 0 - I - 0x0154CB 05:94BB: B7        .byte $B7   ; 
- D 0 - I - 0x0154CC 05:94BC: 02        .byte $02   ; 
- D 0 - I - 0x0154CD 05:94BD: B7        .byte $B7   ; 
- D 0 - I - 0x0154CE 05:94BE: 67        .byte $67   ; 
- D 0 - I - 0x0154CF 05:94BF: 68        .byte $68   ; 
- D 0 - I - 0x0154D0 05:94C0: 70        .byte $70   ; 
- D 0 - I - 0x0154D1 05:94C1: B7        .byte $B7   ; 
- D 0 - I - 0x0154D2 05:94C2: 02        .byte $02   ; 
- D 0 - I - 0x0154D3 05:94C3: B7        .byte $B7   ; 
- D 0 - I - 0x0154D4 05:94C4: A5        .byte $A5   ; 
- D 0 - I - 0x0154D5 05:94C5: A4        .byte $A4   ; 
- D 0 - I - 0x0154D6 05:94C6: A8        .byte $A8   ; 
- D 0 - I - 0x0154D7 05:94C7: 00        .byte $00   ; 
- D 0 - I - 0x0154D8 05:94C8: 00        .byte $00   ; 
- D 0 - I - 0x0154D9 05:94C9: 00        .byte $00   ; 
- D 0 - I - 0x0154DA 05:94CA: 00        .byte $00   ; 
- D 0 - I - 0x0154DB 05:94CB: 00        .byte $00   ; 
- D 0 - I - 0x0154DC 05:94CC: 00        .byte $00   ; 
- D 0 - I - 0x0154DD 05:94CD: 50        .byte $50   ; 
- D 0 - I - 0x0154DE 05:94CE: A7        .byte $A7   ; 
- D 0 - I - 0x0154DF 05:94CF: A9        .byte $A9   ; 
- D 0 - I - 0x0154E0 05:94D0: 10        .byte $10   ; 
- D 0 - I - 0x0154E1 05:94D1: 02        .byte $02   ; 
- D 0 - I - 0x0154E2 05:94D2: A2        .byte $A2   ; 
- D 0 - I - 0x0154E3 05:94D3: A3        .byte $A3   ; 
- D 0 - I - 0x0154E4 05:94D4: F0        .byte $F0   ; 
- D 0 - I - 0x0154E5 05:94D5: F1        .byte $F1   ; 
- D 0 - I - 0x0154E6 05:94D6: A9        .byte $A9   ; 
- D 0 - I - 0x0154E7 05:94D7: 02        .byte $02   ; 
- D 0 - I - 0x0154E8 05:94D8: 02        .byte $02   ; 
- D 0 - I - 0x0154E9 05:94D9: 02        .byte $02   ; 
- D 0 - I - 0x0154EA 05:94DA: A8        .byte $A8   ; 
- D 0 - I - 0x0154EB 05:94DB: F0        .byte $F0   ; 
- D 0 - I - 0x0154EC 05:94DC: F1        .byte $F1   ; 
- D 0 - I - 0x0154ED 05:94DD: A9        .byte $A9   ; 
- D 0 - I - 0x0154EE 05:94DE: A5        .byte $A5   ; 
- D 0 - I - 0x0154EF 05:94DF: A4        .byte $A4   ; 
- D 0 - I - 0x0154F0 05:94E0: 02        .byte $02   ; 
- D 0 - I - 0x0154F1 05:94E1: D2        .byte $D2   ; 
- D 0 - I - 0x0154F2 05:94E2: C8        .byte $C8   ; 
- D 0 - I - 0x0154F3 05:94E3: C7        .byte $C7   ; 
- D 0 - I - 0x0154F4 05:94E4: A0        .byte $A0   ; 
- D 0 - I - 0x0154F5 05:94E5: 38        .byte $38   ; 
- D 0 - I - 0x0154F6 05:94E6: E7        .byte $E7   ; 
- D 0 - I - 0x0154F7 05:94E7: 00        .byte $00   ; 
- D 0 - I - 0x0154F8 05:94E8: 80        .byte $80   ; 
- D 0 - I - 0x0154F9 05:94E9: 80        .byte $80   ; 
- D 0 - I - 0x0154FA 05:94EA: 80        .byte $80   ; 
- D 0 - I - 0x0154FB 05:94EB: 80        .byte $80   ; 
- D 0 - I - 0x0154FC 05:94EC: 80        .byte $80   ; 
- D 0 - I - 0x0154FD 05:94ED: 96        .byte $96   ; 
- D 0 - I - 0x0154FE 05:94EE: 80        .byte $80   ; 
- D 0 - I - 0x0154FF 05:94EF: 80        .byte $80   ; 
- D 0 - I - 0x015500 05:94F0: 80        .byte $80   ; 
- D 0 - I - 0x015501 05:94F1: 80        .byte $80   ; 
- D 0 - I - 0x015502 05:94F2: 13        .byte $13   ; 
- D 0 - I - 0x015503 05:94F3: 13        .byte $13   ; 
- D 0 - I - 0x015504 05:94F4: 13        .byte $13   ; 
- D 0 - I - 0x015505 05:94F5: 13        .byte $13   ; 
- D 0 - I - 0x015506 05:94F6: 13        .byte $13   ; 
- D 0 - I - 0x015507 05:94F7: 13        .byte $13   ; 
- D 0 - I - 0x015508 05:94F8: 13        .byte $13   ; 
- D 0 - I - 0x015509 05:94F9: 00        .byte $00   ; 
- D 0 - I - 0x01550A 05:94FA: 02        .byte $02   ; 
- D 0 - I - 0x01550B 05:94FB: 02        .byte $02   ; 
- D 0 - I - 0x01550C 05:94FC: 67        .byte $67   ; 
- D 0 - I - 0x01550D 05:94FD: 70        .byte $70   ; 
- D 0 - I - 0x01550E 05:94FE: 02        .byte $02   ; 
- D 0 - I - 0x01550F 05:94FF: 67        .byte $67   ; 
- D 0 - I - 0x015510 05:9500: D7        .byte $D7   ; 
- D 0 - I - 0x015511 05:9501: 70        .byte $70   ; 
- D 0 - I - 0x015512 05:9502: 02        .byte $02   ; 
- D 0 - I - 0x015513 05:9503: 67        .byte $67   ; 
- D 0 - I - 0x015514 05:9504: 70        .byte $70   ; 
- D 0 - I - 0x015515 05:9505: 02        .byte $02   ; 
- D 0 - I - 0x015516 05:9506: 00        .byte $00   ; 
- D 0 - I - 0x015517 05:9507: 13        .byte $13   ; 
- - - - - - 0x015518 05:9508: 00        .byte $00   ; 
- - - - - - 0x015519 05:9509: F1        .byte $F1   ; 
- - - - - - 0x01551A 05:950A: A9        .byte $A9   ; 
- - - - - - 0x01551B 05:950B: 02        .byte $02   ; 
- - - - - - 0x01551C 05:950C: 33        .byte $33   ; 
- - - - - - 0x01551D 05:950D: 02        .byte $02   ; 
- - - - - - 0x01551E 05:950E: 32        .byte $32   ; 
- - - - - - 0x01551F 05:950F: B6        .byte $B6   ; 
- - - - - - 0x015520 05:9510: 34        .byte $34   ; 
- - - - - - 0x015521 05:9511: D2        .byte $D2   ; 
- - - - - - 0x015522 05:9512: 02        .byte $02   ; 
- - - - - - 0x015523 05:9513: 64        .byte $64   ; 
- - - - - - 0x015524 05:9514: F2        .byte $F2   ; 
- - - - - - 0x015525 05:9515: F3        .byte $F3   ; 
- - - - - - 0x015526 05:9516: 02        .byte $02   ; 
- - - - - - 0x015527 05:9517: 64        .byte $64   ; 
- D 0 - I - 0x015528 05:9518: 66        .byte $66   ; 
- D 0 - I - 0x015529 05:9519: 02        .byte $02   ; 
- D 0 - I - 0x01552A 05:951A: E5        .byte $E5   ; 
- D 0 - I - 0x01552B 05:951B: D8        .byte $D8   ; 
- D 0 - I - 0x01552C 05:951C: 66        .byte $66   ; 
- D 0 - I - 0x01552D 05:951D: 02        .byte $02   ; 
- D 0 - I - 0x01552E 05:951E: 02        .byte $02   ; 
- D 0 - I - 0x01552F 05:951F: B6        .byte $B6   ; 
- D 0 - I - 0x015530 05:9520: 71        .byte $71   ; 
- D 0 - I - 0x015531 05:9521: 02        .byte $02   ; 
- D 0 - I - 0x015532 05:9522: 32        .byte $32   ; 
- D 0 - I - 0x015533 05:9523: 02        .byte $02   ; 
- D 0 - I - 0x015534 05:9524: 33        .byte $33   ; 
- D 0 - I - 0x015535 05:9525: 02        .byte $02   ; 
- D 0 - I - 0x015536 05:9526: A8        .byte $A8   ; 
- D 0 - I - 0x015537 05:9527: 00        .byte $00   ; 
- D 0 - I - 0x015538 05:9528: 00        .byte $00   ; 
- D 0 - I - 0x015539 05:9529: E6        .byte $E6   ; 
- D 0 - I - 0x01553A 05:952A: 06        .byte $06   ; 
- D 0 - I - 0x01553B 05:952B: 83        .byte $83   ; 
- D 0 - I - 0x01553C 05:952C: 06        .byte $06   ; 
- D 0 - I - 0x01553D 05:952D: A1        .byte $A1   ; 
- D 0 - I - 0x01553E 05:952E: 84        .byte $84   ; 
- D 0 - I - 0x01553F 05:952F: 90        .byte $90   ; 
- D 0 - I - 0x015540 05:9530: D2        .byte $D2   ; 
- D 0 - I - 0x015541 05:9531: 64        .byte $64   ; 
- D 0 - I - 0x015542 05:9532: F2        .byte $F2   ; 
- D 0 - I - 0x015543 05:9533: F3        .byte $F3   ; 
- D 0 - I - 0x015544 05:9534: 64        .byte $64   ; 
- D 0 - I - 0x015545 05:9535: F2        .byte $F2   ; 
- D 0 - I - 0x015546 05:9536: F3        .byte $F3   ; 
- D 0 - I - 0x015547 05:9537: 64        .byte $64   ; 
- D 0 - I - 0x015548 05:9538: 66        .byte $66   ; 
- D 0 - I - 0x015549 05:9539: 02        .byte $02   ; 
- D 0 - I - 0x01554A 05:953A: D2        .byte $D2   ; 
- D 0 - I - 0x01554B 05:953B: C8        .byte $C8   ; 
- D 0 - I - 0x01554C 05:953C: C7        .byte $C7   ; 
- D 0 - I - 0x01554D 05:953D: A0        .byte $A0   ; 
- D 0 - I - 0x01554E 05:953E: 06        .byte $06   ; 
- D 0 - I - 0x01554F 05:953F: 06        .byte $06   ; 
- D 0 - I - 0x015550 05:9540: 06        .byte $06   ; 
- D 0 - I - 0x015551 05:9541: 06        .byte $06   ; 
- D 0 - I - 0x015552 05:9542: 83        .byte $83   ; 
- D 0 - I - 0x015553 05:9543: 06        .byte $06   ; 
- D 0 - I - 0x015554 05:9544: A1        .byte $A1   ; 
- D 0 - I - 0x015555 05:9545: 84        .byte $84   ; 
- D 0 - I - 0x015556 05:9546: 90        .byte $90   ; 
- D 0 - I - 0x015557 05:9547: 02        .byte $02   ; 
- D 0 - I - 0x015558 05:9548: 02        .byte $02   ; 
- D 0 - I - 0x015559 05:9549: A2        .byte $A2   ; 
- D 0 - I - 0x01555A 05:954A: A3        .byte $A3   ; 
- D 0 - I - 0x01555B 05:954B: B7        .byte $B7   ; 
- D 0 - I - 0x01555C 05:954C: 02        .byte $02   ; 
- D 0 - I - 0x01555D 05:954D: 02        .byte $02   ; 
- D 0 - I - 0x01555E 05:954E: B7        .byte $B7   ; 
- D 0 - I - 0x01555F 05:954F: 02        .byte $02   ; 
- D 0 - I - 0x015560 05:9550: 02        .byte $02   ; 
- D 0 - I - 0x015561 05:9551: B7        .byte $B7   ; 
- D 0 - I - 0x015562 05:9552: B5        .byte $B5   ; 
- D 0 - I - 0x015563 05:9553: 02        .byte $02   ; 
- D 0 - I - 0x015564 05:9554: D2        .byte $D2   ; 
- D 0 - I - 0x015565 05:9555: B7        .byte $B7   ; 
- D 0 - I - 0x015566 05:9556: C8        .byte $C8   ; 
- D 0 - I - 0x015567 05:9557: A0        .byte $A0   ; 
- D 0 - I - 0x015568 05:9558: 06        .byte $06   ; 
- D 0 - I - 0x015569 05:9559: E7        .byte $E7   ; 
- D 0 - I - 0x01556A 05:955A: E6        .byte $E6   ; 
- D 0 - I - 0x01556B 05:955B: 38        .byte $38   ; 
- D 0 - I - 0x01556C 05:955C: 06        .byte $06   ; 
- D 0 - I - 0x01556D 05:955D: E7        .byte $E7   ; 
- D 0 - I - 0x01556E 05:955E: E6        .byte $E6   ; 
- D 0 - I - 0x01556F 05:955F: A1        .byte $A1   ; 
- D 0 - I - 0x015570 05:9560: A2        .byte $A2   ; 
- D 0 - I - 0x015571 05:9561: A3        .byte $A3   ; 
- D 0 - I - 0x015572 05:9562: A8        .byte $A8   ; 
- D 0 - I - 0x015573 05:9563: A9        .byte $A9   ; 
- D 0 - I - 0x015574 05:9564: D2        .byte $D2   ; 
- D 0 - I - 0x015575 05:9565: B5        .byte $B5   ; 
- D 0 - I - 0x015576 05:9566: A8        .byte $A8   ; 
- D 0 - I - 0x015577 05:9567: A9        .byte $A9   ; 
- D 0 - I - 0x015578 05:9568: A8        .byte $A8   ; 
- D 0 - I - 0x015579 05:9569: A9        .byte $A9   ; 
- D 0 - I - 0x01557A 05:956A: A2        .byte $A2   ; 
- D 0 - I - 0x01557B 05:956B: A3        .byte $A3   ; 
- D 0 - I - 0x01557C 05:956C: A8        .byte $A8   ; 
- D 0 - I - 0x01557D 05:956D: A9        .byte $A9   ; 
- D 0 - I - 0x01557E 05:956E: D2        .byte $D2   ; 
- D 0 - I - 0x01557F 05:956F: 02        .byte $02   ; 
- D 0 - I - 0x015580 05:9570: A0        .byte $A0   ; 
- D 0 - I - 0x015581 05:9571: 06        .byte $06   ; 
- D 0 - I - 0x015582 05:9572: A1        .byte $A1   ; 
- D 0 - I - 0x015583 05:9573: A6        .byte $A6   ; 
- D 0 - I - 0x015584 05:9574: A7        .byte $A7   ; 
- D 0 - I - 0x015585 05:9575: F1        .byte $F1   ; 
- D 0 - I - 0x015586 05:9576: A9        .byte $A9   ; 
- D 0 - I - 0x015587 05:9577: 02        .byte $02   ; 
- D 0 - I - 0x015588 05:9578: A5        .byte $A5   ; 
- D 0 - I - 0x015589 05:9579: A4        .byte $A4   ; 
- D 0 - I - 0x01558A 05:957A: C8        .byte $C8   ; 
- D 0 - I - 0x01558B 05:957B: A0        .byte $A0   ; 
- D 0 - I - 0x01558C 05:957C: 83        .byte $83   ; 
- D 0 - I - 0x01558D 05:957D: 06        .byte $06   ; 
- D 0 - I - 0x01558E 05:957E: B4        .byte $B4   ; 
- D 0 - I - 0x01558F 05:957F: B0        .byte $B0   ; 
- D 0 - I - 0x015590 05:9580: B0        .byte $B0   ; 
- D 0 - I - 0x015591 05:9581: B0        .byte $B0   ; 
- D 0 - I - 0x015592 05:9582: B0        .byte $B0   ; 
- D 0 - I - 0x015593 05:9583: 73        .byte $73   ; 
- D 0 - I - 0x015594 05:9584: 73        .byte $73   ; 
- D 0 - I - 0x015595 05:9585: 73        .byte $73   ; 
- D 0 - I - 0x015596 05:9586: 73        .byte $73   ; 
- D 0 - I - 0x015597 05:9587: 73        .byte $73   ; 
- D 0 - I - 0x015598 05:9588: 73        .byte $73   ; 
- D 0 - I - 0x015599 05:9589: 73        .byte $73   ; 
- D 0 - I - 0x01559A 05:958A: 73        .byte $73   ; 
- D 0 - I - 0x01559B 05:958B: 73        .byte $73   ; 
- D 0 - I - 0x01559C 05:958C: 73        .byte $73   ; 
- D 0 - I - 0x01559D 05:958D: 73        .byte $73   ; 
- D 0 - I - 0x01559E 05:958E: 73        .byte $73   ; 
- D 0 - I - 0x01559F 05:958F: 73        .byte $73   ; 
- D 0 - I - 0x0155A0 05:9590: 72        .byte $72   ; 
- D 0 - I - 0x0155A1 05:9591: 72        .byte $72   ; 
- D 0 - I - 0x0155A2 05:9592: 72        .byte $72   ; 
- D 0 - I - 0x0155A3 05:9593: 72        .byte $72   ; 
- D 0 - I - 0x0155A4 05:9594: D4        .byte $D4   ; 
- D 0 - I - 0x0155A5 05:9595: 72        .byte $72   ; 
- D 0 - I - 0x0155A6 05:9596: 72        .byte $72   ; 
- D 0 - I - 0x0155A7 05:9597: 72        .byte $72   ; 
- D 0 - I - 0x0155A8 05:9598: 72        .byte $72   ; 
- D 0 - I - 0x0155A9 05:9599: 72        .byte $72   ; 
- D 0 - I - 0x0155AA 05:959A: 72        .byte $72   ; 
- D 0 - I - 0x0155AB 05:959B: 72        .byte $72   ; 
- D 0 - I - 0x0155AC 05:959C: D4        .byte $D4   ; 
- D 0 - I - 0x0155AD 05:959D: 72        .byte $72   ; 
- D 0 - I - 0x0155AE 05:959E: 72        .byte $72   ; 
- D 0 - I - 0x0155AF 05:959F: 72        .byte $72   ; 
- D 0 - I - 0x0155B0 05:95A0: 72        .byte $72   ; 
- D 0 - I - 0x0155B1 05:95A1: 72        .byte $72   ; 
- D 0 - I - 0x0155B2 05:95A2: 72        .byte $72   ; 
- D 0 - I - 0x0155B3 05:95A3: 72        .byte $72   ; 
- D 0 - I - 0x0155B4 05:95A4: 72        .byte $72   ; 
- D 0 - I - 0x0155B5 05:95A5: 72        .byte $72   ; 
- D 0 - I - 0x0155B6 05:95A6: 72        .byte $72   ; 
- D 0 - I - 0x0155B7 05:95A7: 72        .byte $72   ; 
- D 0 - I - 0x0155B8 05:95A8: 72        .byte $72   ; 
- D 0 - I - 0x0155B9 05:95A9: 72        .byte $72   ; 
- D 0 - I - 0x0155BA 05:95AA: 72        .byte $72   ; 
- D 0 - I - 0x0155BB 05:95AB: 72        .byte $72   ; 
- D 0 - I - 0x0155BC 05:95AC: 72        .byte $72   ; 
- D 0 - I - 0x0155BD 05:95AD: 72        .byte $72   ; 
- D 0 - I - 0x0155BE 05:95AE: C1        .byte $C1   ; 
- D 0 - I - 0x0155BF 05:95AF: 06        .byte $06   ; 
- D 0 - I - 0x0155C0 05:95B0: 06        .byte $06   ; 
- D 0 - I - 0x0155C1 05:95B1: 06        .byte $06   ; 
- D 0 - I - 0x0155C2 05:95B2: 06        .byte $06   ; 
- D 0 - I - 0x0155C3 05:95B3: 06        .byte $06   ; 
- D 0 - I - 0x0155C4 05:95B4: 06        .byte $06   ; 
- D 0 - I - 0x0155C5 05:95B5: 83        .byte $83   ; 
- D 0 - I - 0x0155C6 05:95B6: 06        .byte $06   ; 
- D 0 - I - 0x0155C7 05:95B7: 01        .byte $01   ; 
- D 0 - I - 0x0155C8 05:95B8: 01        .byte $01   ; 
- D 0 - I - 0x0155C9 05:95B9: A7        .byte $A7   ; 
- D 0 - I - 0x0155CA 05:95BA: A9        .byte $A9   ; 
- D 0 - I - 0x0155CB 05:95BB: 32        .byte $32   ; 
- D 0 - I - 0x0155CC 05:95BC: 02        .byte $02   ; 
- D 0 - I - 0x0155CD 05:95BD: 33        .byte $33   ; 
- D 0 - I - 0x0155CE 05:95BE: 02        .byte $02   ; 
- D 0 - I - 0x0155CF 05:95BF: 11        .byte $11   ; 
- D 0 - I - 0x0155D0 05:95C0: 32        .byte $32   ; 
- D 0 - I - 0x0155D1 05:95C1: 02        .byte $02   ; 
- D 0 - I - 0x0155D2 05:95C2: 32        .byte $32   ; 
- D 0 - I - 0x0155D3 05:95C3: 02        .byte $02   ; 
- D 0 - I - 0x0155D4 05:95C4: 71        .byte $71   ; 
- D 0 - I - 0x0155D5 05:95C5: A8        .byte $A8   ; 
- D 0 - I - 0x0155D6 05:95C6: A6        .byte $A6   ; 
- D 0 - I - 0x0155D7 05:95C7: 01        .byte $01   ; 
- D 0 - I - 0x0155D8 05:95C8: A7        .byte $A7   ; 
- D 0 - I - 0x0155D9 05:95C9: A9        .byte $A9   ; 
- D 0 - I - 0x0155DA 05:95CA: 02        .byte $02   ; 
- D 0 - I - 0x0155DB 05:95CB: B5        .byte $B5   ; 
- D 0 - I - 0x0155DC 05:95CC: 02        .byte $02   ; 
- D 0 - I - 0x0155DD 05:95CD: B6        .byte $B6   ; 
- D 0 - I - 0x0155DE 05:95CE: 02        .byte $02   ; 
- D 0 - I - 0x0155DF 05:95CF: B7        .byte $B7   ; 
- D 0 - I - 0x0155E0 05:95D0: 02        .byte $02   ; 
- D 0 - I - 0x0155E1 05:95D1: B7        .byte $B7   ; 
- D 0 - I - 0x0155E2 05:95D2: 02        .byte $02   ; 
- D 0 - I - 0x0155E3 05:95D3: B7        .byte $B7   ; 
- D 0 - I - 0x0155E4 05:95D4: 02        .byte $02   ; 
- D 0 - I - 0x0155E5 05:95D5: B7        .byte $B7   ; 
- D 0 - I - 0x0155E6 05:95D6: 02        .byte $02   ; 
- D 0 - I - 0x0155E7 05:95D7: 02        .byte $02   ; 
- D 0 - I - 0x0155E8 05:95D8: 02        .byte $02   ; 
- D 0 - I - 0x0155E9 05:95D9: 02        .byte $02   ; 
- D 0 - I - 0x0155EA 05:95DA: B5        .byte $B5   ; 
- D 0 - I - 0x0155EB 05:95DB: 71        .byte $71   ; 
- D 0 - I - 0x0155EC 05:95DC: A8        .byte $A8   ; 
- D 0 - I - 0x0155ED 05:95DD: 00        .byte $00   ; 
- D 0 - I - 0x0155EE 05:95DE: E6        .byte $E6   ; 
- D 0 - I - 0x0155EF 05:95DF: 04        .byte $04   ; 
- D 0 - I - 0x0155F0 05:95E0: 04        .byte $04   ; 
- D 0 - I - 0x0155F1 05:95E1: D6        .byte $D6   ; 
- D 0 - I - 0x0155F2 05:95E2: 97        .byte $97   ; 
- D 0 - I - 0x0155F3 05:95E3: 91        .byte $91   ; 
- D 0 - I - 0x0155F4 05:95E4: 51        .byte $51   ; 
- D 0 - I - 0x0155F5 05:95E5: B8        .byte $B8   ; 
- D 0 - I - 0x0155F6 05:95E6: 51        .byte $51   ; 
- D 0 - I - 0x0155F7 05:95E7: 51        .byte $51   ; 
- D 0 - I - 0x0155F8 05:95E8: 51        .byte $51   ; 
- D 0 - I - 0x0155F9 05:95E9: 51        .byte $51   ; 
- D 0 - I - 0x0155FA 05:95EA: 51        .byte $51   ; 
- D 0 - I - 0x0155FB 05:95EB: 51        .byte $51   ; 
- D 0 - I - 0x0155FC 05:95EC: 51        .byte $51   ; 
- D 0 - I - 0x0155FD 05:95ED: B8        .byte $B8   ; 
- D 0 - I - 0x0155FE 05:95EE: 51        .byte $51   ; 
- D 0 - I - 0x0155FF 05:95EF: 01        .byte $01   ; 
- D 0 - I - 0x015600 05:95F0: 01        .byte $01   ; 
- D 0 - I - 0x015601 05:95F1: 90        .byte $90   ; 
- D 0 - I - 0x015602 05:95F2: 02        .byte $02   ; 
- D 0 - I - 0x015603 05:95F3: 02        .byte $02   ; 
- D 0 - I - 0x015604 05:95F4: D2        .byte $D2   ; 
- D 0 - I - 0x015605 05:95F5: 02        .byte $02   ; 
- D 0 - I - 0x015606 05:95F6: 02        .byte $02   ; 
- D 0 - I - 0x015607 05:95F7: 02        .byte $02   ; 
- D 0 - I - 0x015608 05:95F8: 02        .byte $02   ; 
- D 0 - I - 0x015609 05:95F9: 02        .byte $02   ; 
- D 0 - I - 0x01560A 05:95FA: 64        .byte $64   ; 
- D 0 - I - 0x01560B 05:95FB: 66        .byte $66   ; 
- D 0 - I - 0x01560C 05:95FC: E5        .byte $E5   ; 
- D 0 - I - 0x01560D 05:95FD: D8        .byte $D8   ; 
- D 0 - I - 0x01560E 05:95FE: 65        .byte $65   ; 
- D 0 - I - 0x01560F 05:95FF: 66        .byte $66   ; 
- D 0 - I - 0x015610 05:9600: E5        .byte $E5   ; 
- D 0 - I - 0x015611 05:9601: F3        .byte $F3   ; 
- D 0 - I - 0x015612 05:9602: 64        .byte $64   ; 
- D 0 - I - 0x015613 05:9603: F2        .byte $F2   ; 
- D 0 - I - 0x015614 05:9604: F3        .byte $F3   ; 
- D 0 - I - 0x015615 05:9605: 02        .byte $02   ; 
- D 0 - I - 0x015616 05:9606: 00        .byte $00   ; 
- D 0 - I - 0x015617 05:9607: 13        .byte $13   ; 
- - - - - - 0x015618 05:9608: 00        .byte $00   ; 
- - - - - - 0x015619 05:9609: 00        .byte $00   ; 
- - - - - - 0x01561A 05:960A: E2        .byte $E2   ; 
- - - - - - 0x01561B 05:960B: 82        .byte $82   ; 
- - - - - - 0x01561C 05:960C: 07        .byte $07   ; 
- - - - - - 0x01561D 05:960D: 07        .byte $07   ; 
- - - - - - 0x01561E 05:960E: 88        .byte $88   ; 
- - - - - - 0x01561F 05:960F: 07        .byte $07   ; 
- - - - - - 0x015620 05:9610: 07        .byte $07   ; 
- - - - - - 0x015621 05:9611: 82        .byte $82   ; 
- - - - - - 0x015622 05:9612: 07        .byte $07   ; 
- - - - - - 0x015623 05:9613: 07        .byte $07   ; 
- - - - - - 0x015624 05:9614: 82        .byte $82   ; 
- - - - - - 0x015625 05:9615: 07        .byte $07   ; 
- - - - - - 0x015626 05:9616: 02        .byte $02   ; 
- - - - - - 0x015627 05:9617: 02        .byte $02   ; 
- D 0 - I - 0x015628 05:9618: 02        .byte $02   ; 
- D 0 - I - 0x015629 05:9619: 02        .byte $02   ; 
- D 0 - I - 0x01562A 05:961A: 07        .byte $07   ; 
- D 0 - I - 0x01562B 05:961B: 82        .byte $82   ; 
- D 0 - I - 0x01562C 05:961C: 07        .byte $07   ; 
- D 0 - I - 0x01562D 05:961D: 07        .byte $07   ; 
- D 0 - I - 0x01562E 05:961E: 82        .byte $82   ; 
- D 0 - I - 0x01562F 05:961F: 07        .byte $07   ; 
- D 0 - I - 0x015630 05:9620: 07        .byte $07   ; 
- D 0 - I - 0x015631 05:9621: 88        .byte $88   ; 
- D 0 - I - 0x015632 05:9622: 07        .byte $07   ; 
- D 0 - I - 0x015633 05:9623: 07        .byte $07   ; 
- D 0 - I - 0x015634 05:9624: 82        .byte $82   ; 
- D 0 - I - 0x015635 05:9625: 07        .byte $07   ; 
- D 0 - I - 0x015636 05:9626: 15        .byte $15   ; 
- D 0 - I - 0x015637 05:9627: 15        .byte $15   ; 
- D 0 - I - 0x015638 05:9628: 00        .byte $00   ; 
- D 0 - I - 0x015639 05:9629: 00        .byte $00   ; 
- D 0 - I - 0x01563A 05:962A: 02        .byte $02   ; 
- D 0 - I - 0x01563B 05:962B: B7        .byte $B7   ; 
- D 0 - I - 0x01563C 05:962C: B7        .byte $B7   ; 
- D 0 - I - 0x01563D 05:962D: B7        .byte $B7   ; 
- D 0 - I - 0x01563E 05:962E: 67        .byte $67   ; 
- D 0 - I - 0x01563F 05:962F: D7        .byte $D7   ; 
- D 0 - I - 0x015640 05:9630: F5        .byte $F5   ; 
- D 0 - I - 0x015641 05:9631: 70        .byte $70   ; 
- D 0 - I - 0x015642 05:9632: B7        .byte $B7   ; 
- D 0 - I - 0x015643 05:9633: B7        .byte $B7   ; 
- D 0 - I - 0x015644 05:9634: B7        .byte $B7   ; 
- D 0 - I - 0x015645 05:9635: 02        .byte $02   ; 
- D 0 - I - 0x015646 05:9636: 00        .byte $00   ; 
- D 0 - I - 0x015647 05:9637: 00        .byte $00   ; 
- D 0 - I - 0x015648 05:9638: 00        .byte $00   ; 
- D 0 - I - 0x015649 05:9639: A9        .byte $A9   ; 
- D 0 - I - 0x01564A 05:963A: 02        .byte $02   ; 
- D 0 - I - 0x01564B 05:963B: 71        .byte $71   ; 
- D 0 - I - 0x01564C 05:963C: 32        .byte $32   ; 
- D 0 - I - 0x01564D 05:963D: 34        .byte $34   ; 
- D 0 - I - 0x01564E 05:963E: B5        .byte $B5   ; 
- D 0 - I - 0x01564F 05:963F: A8        .byte $A8   ; 
- D 0 - I - 0x015650 05:9640: 00        .byte $00   ; 
- D 0 - I - 0x015651 05:9641: 00        .byte $00   ; 
- D 0 - I - 0x015652 05:9642: A9        .byte $A9   ; 
- D 0 - I - 0x015653 05:9643: 02        .byte $02   ; 
- D 0 - I - 0x015654 05:9644: 02        .byte $02   ; 
- D 0 - I - 0x015655 05:9645: B5        .byte $B5   ; 
- D 0 - I - 0x015656 05:9646: 02        .byte $02   ; 
- D 0 - I - 0x015657 05:9647: 02        .byte $02   ; 
- D 0 - I - 0x015658 05:9648: 02        .byte $02   ; 
- D 0 - I - 0x015659 05:9649: 02        .byte $02   ; 
- D 0 - I - 0x01565A 05:964A: B7        .byte $B7   ; 
- D 0 - I - 0x01565B 05:964B: A8        .byte $A8   ; 
- D 0 - I - 0x01565C 05:964C: A9        .byte $A9   ; 
- D 0 - I - 0x01565D 05:964D: B7        .byte $B7   ; 
- D 0 - I - 0x01565E 05:964E: A2        .byte $A2   ; 
- D 0 - I - 0x01565F 05:964F: A3        .byte $A3   ; 
- D 0 - I - 0x015660 05:9650: B7        .byte $B7   ; 
- D 0 - I - 0x015661 05:9651: 02        .byte $02   ; 
- D 0 - I - 0x015662 05:9652: B6        .byte $B6   ; 
- D 0 - I - 0x015663 05:9653: B7        .byte $B7   ; 
- D 0 - I - 0x015664 05:9654: A2        .byte $A2   ; 
- D 0 - I - 0x015665 05:9655: A3        .byte $A3   ; 
- D 0 - I - 0x015666 05:9656: B7        .byte $B7   ; 
- D 0 - I - 0x015667 05:9657: 02        .byte $02   ; 
- D 0 - I - 0x015668 05:9658: 02        .byte $02   ; 
- D 0 - I - 0x015669 05:9659: 02        .byte $02   ; 
- D 0 - I - 0x01566A 05:965A: B7        .byte $B7   ; 
- D 0 - I - 0x01566B 05:965B: B6        .byte $B6   ; 
- D 0 - I - 0x01566C 05:965C: B5        .byte $B5   ; 
- D 0 - I - 0x01566D 05:965D: B7        .byte $B7   ; 
- D 0 - I - 0x01566E 05:965E: A2        .byte $A2   ; 
- D 0 - I - 0x01566F 05:965F: A3        .byte $A3   ; 
- D 0 - I - 0x015670 05:9660: B7        .byte $B7   ; 
- D 0 - I - 0x015671 05:9661: 02        .byte $02   ; 
- D 0 - I - 0x015672 05:9662: 10        .byte $10   ; 
- D 0 - I - 0x015673 05:9663: B7        .byte $B7   ; 
- D 0 - I - 0x015674 05:9664: 02        .byte $02   ; 
- D 0 - I - 0x015675 05:9665: B6        .byte $B6   ; 
- D 0 - I - 0x015676 05:9666: A8        .byte $A8   ; 
- D 0 - I - 0x015677 05:9667: 00        .byte $00   ; 
- D 0 - I - 0x015678 05:9668: 00        .byte $00   ; 
- D 0 - I - 0x015679 05:9669: A9        .byte $A9   ; 
- D 0 - I - 0x01567A 05:966A: 07        .byte $07   ; 
- D 0 - I - 0x01567B 05:966B: D3        .byte $D3   ; 
- D 0 - I - 0x01567C 05:966C: 02        .byte $02   ; 
- D 0 - I - 0x01567D 05:966D: A8        .byte $A8   ; 
- D 0 - I - 0x01567E 05:966E: F0        .byte $F0   ; 
- D 0 - I - 0x01567F 05:966F: F1        .byte $F1   ; 
- D 0 - I - 0x015680 05:9670: A9        .byte $A9   ; 
- D 0 - I - 0x015681 05:9671: 39        .byte $39   ; 
- D 0 - I - 0x015682 05:9672: 91        .byte $91   ; 
- D 0 - I - 0x015683 05:9673: 51        .byte $51   ; 
- D 0 - I - 0x015684 05:9674: 97        .byte $97   ; 
- D 0 - I - 0x015685 05:9675: 91        .byte $91   ; 
- D 0 - I - 0x015686 05:9676: 51        .byte $51   ; 
- D 0 - I - 0x015687 05:9677: 97        .byte $97   ; 
- D 0 - I - 0x015688 05:9678: 91        .byte $91   ; 
- D 0 - I - 0x015689 05:9679: 51        .byte $51   ; 
- D 0 - I - 0x01568A 05:967A: 97        .byte $97   ; 
- D 0 - I - 0x01568B 05:967B: 91        .byte $91   ; 
- D 0 - I - 0x01568C 05:967C: 51        .byte $51   ; 
- D 0 - I - 0x01568D 05:967D: 97        .byte $97   ; 
- D 0 - I - 0x01568E 05:967E: 13        .byte $13   ; 
- D 0 - I - 0x01568F 05:967F: C3        .byte $C3   ; 
- D 0 - I - 0x015690 05:9680: 58        .byte $58   ; 
- D 0 - I - 0x015691 05:9681: 58        .byte $58   ; 
- D 0 - I - 0x015692 05:9682: 58        .byte $58   ; 
- D 0 - I - 0x015693 05:9683: 91        .byte $91   ; 
- D 0 - I - 0x015694 05:9684: 51        .byte $51   ; 
- D 0 - I - 0x015695 05:9685: 97        .byte $97   ; 
- D 0 - I - 0x015696 05:9686: 85        .byte $85   ; 
- D 0 - I - 0x015697 05:9687: 47        .byte $47   ; 
- D 0 - I - 0x015698 05:9688: 61        .byte $61   ; 
- D 0 - I - 0x015699 05:9689: 61        .byte $61   ; 
- D 0 - I - 0x01569A 05:968A: 61        .byte $61   ; 
- D 0 - I - 0x01569B 05:968B: 61        .byte $61   ; 
- D 0 - I - 0x01569C 05:968C: 61        .byte $61   ; 
- D 0 - I - 0x01569D 05:968D: 61        .byte $61   ; 
- D 0 - I - 0x01569E 05:968E: 60        .byte $60   ; 
- D 0 - I - 0x01569F 05:968F: 76        .byte $76   ; 
- D 0 - I - 0x0156A0 05:9690: 76        .byte $76   ; 
- D 0 - I - 0x0156A1 05:9691: 17        .byte $17   ; 
- D 0 - I - 0x0156A2 05:9692: 17        .byte $17   ; 
- D 0 - I - 0x0156A3 05:9693: 26        .byte $26   ; 
- D 0 - I - 0x0156A4 05:9694: 17        .byte $17   ; 
- D 0 - I - 0x0156A5 05:9695: 31        .byte $31   ; 
- D 0 - I - 0x0156A6 05:9696: 28        .byte $28   ; 
- D 0 - I - 0x0156A7 05:9697: 17        .byte $17   ; 
- D 0 - I - 0x0156A8 05:9698: F9        .byte $F9   ; 
- D 0 - I - 0x0156A9 05:9699: F9        .byte $F9   ; 
- D 0 - I - 0x0156AA 05:969A: F9        .byte $F9   ; 
- D 0 - I - 0x0156AB 05:969B: F9        .byte $F9   ; 
- D 0 - I - 0x0156AC 05:969C: F9        .byte $F9   ; 
- D 0 - I - 0x0156AD 05:969D: F9        .byte $F9   ; 
- D 0 - I - 0x0156AE 05:969E: F9        .byte $F9   ; 
- D 0 - I - 0x0156AF 05:969F: F9        .byte $F9   ; 
- D 0 - I - 0x0156B0 05:96A0: F9        .byte $F9   ; 
- D 0 - I - 0x0156B1 05:96A1: F9        .byte $F9   ; 
- D 0 - I - 0x0156B2 05:96A2: F9        .byte $F9   ; 
- D 0 - I - 0x0156B3 05:96A3: F9        .byte $F9   ; 
- D 0 - I - 0x0156B4 05:96A4: F9        .byte $F9   ; 
- D 0 - I - 0x0156B5 05:96A5: F9        .byte $F9   ; 
- D 0 - I - 0x0156B6 05:96A6: F9        .byte $F9   ; 
- D 0 - I - 0x0156B7 05:96A7: F9        .byte $F9   ; 
- D 0 - I - 0x0156B8 05:96A8: F9        .byte $F9   ; 
- D 0 - I - 0x0156B9 05:96A9: F9        .byte $F9   ; 
- D 0 - I - 0x0156BA 05:96AA: C4        .byte $C4   ; 
- D 0 - I - 0x0156BB 05:96AB: C4        .byte $C4   ; 
- D 0 - I - 0x0156BC 05:96AC: C4        .byte $C4   ; 
- D 0 - I - 0x0156BD 05:96AD: C4        .byte $C4   ; 
- D 0 - I - 0x0156BE 05:96AE: C4        .byte $C4   ; 
- D 0 - I - 0x0156BF 05:96AF: C4        .byte $C4   ; 
- D 0 - I - 0x0156C0 05:96B0: C4        .byte $C4   ; 
- D 0 - I - 0x0156C1 05:96B1: C4        .byte $C4   ; 
- D 0 - I - 0x0156C2 05:96B2: C4        .byte $C4   ; 
- D 0 - I - 0x0156C3 05:96B3: C4        .byte $C4   ; 
- D 0 - I - 0x0156C4 05:96B4: C4        .byte $C4   ; 
- D 0 - I - 0x0156C5 05:96B5: C4        .byte $C4   ; 
- D 0 - I - 0x0156C6 05:96B6: C4        .byte $C4   ; 
- D 0 - I - 0x0156C7 05:96B7: F9        .byte $F9   ; 
- D 0 - I - 0x0156C8 05:96B8: F9        .byte $F9   ; 
- D 0 - I - 0x0156C9 05:96B9: C4        .byte $C4   ; 
- D 0 - I - 0x0156CA 05:96BA: C4        .byte $C4   ; 
- D 0 - I - 0x0156CB 05:96BB: C4        .byte $C4   ; 
- D 0 - I - 0x0156CC 05:96BC: C4        .byte $C4   ; 
- D 0 - I - 0x0156CD 05:96BD: C4        .byte $C4   ; 
- D 0 - I - 0x0156CE 05:96BE: C4        .byte $C4   ; 
- D 0 - I - 0x0156CF 05:96BF: C4        .byte $C4   ; 
- D 0 - I - 0x0156D0 05:96C0: C4        .byte $C4   ; 
- D 0 - I - 0x0156D1 05:96C1: C4        .byte $C4   ; 
- D 0 - I - 0x0156D2 05:96C2: C4        .byte $C4   ; 
- D 0 - I - 0x0156D3 05:96C3: C4        .byte $C4   ; 
- D 0 - I - 0x0156D4 05:96C4: C4        .byte $C4   ; 
- D 0 - I - 0x0156D5 05:96C5: C4        .byte $C4   ; 
- D 0 - I - 0x0156D6 05:96C6: F9        .byte $F9   ; 
- D 0 - I - 0x0156D7 05:96C7: F9        .byte $F9   ; 
- D 0 - I - 0x0156D8 05:96C8: 02        .byte $02   ; 
- D 0 - I - 0x0156D9 05:96C9: 02        .byte $02   ; 
- D 0 - I - 0x0156DA 05:96CA: 02        .byte $02   ; 
- D 0 - I - 0x0156DB 05:96CB: B6        .byte $B6   ; 
- D 0 - I - 0x0156DC 05:96CC: 02        .byte $02   ; 
- D 0 - I - 0x0156DD 05:96CD: 03        .byte $03   ; 
- D 0 - I - 0x0156DE 05:96CE: 05        .byte $05   ; 
- D 0 - I - 0x0156DF 05:96CF: 21        .byte $21   ; 
- D 0 - I - 0x0156E0 05:96D0: 21        .byte $21   ; 
- D 0 - I - 0x0156E1 05:96D1: E4        .byte $E4   ; 
- D 0 - I - 0x0156E2 05:96D2: 24        .byte $24   ; 
- D 0 - I - 0x0156E3 05:96D3: 02        .byte $02   ; 
- D 0 - I - 0x0156E4 05:96D4: A0        .byte $A0   ; 
- D 0 - I - 0x0156E5 05:96D5: 06        .byte $06   ; 
- D 0 - I - 0x0156E6 05:96D6: 06        .byte $06   ; 
- D 0 - I - 0x0156E7 05:96D7: 06        .byte $06   ; 
- D 0 - I - 0x0156E8 05:96D8: 06        .byte $06   ; 
- D 0 - I - 0x0156E9 05:96D9: 06        .byte $06   ; 
- D 0 - I - 0x0156EA 05:96DA: 83        .byte $83   ; 
- D 0 - I - 0x0156EB 05:96DB: A1        .byte $A1   ; 
- D 0 - I - 0x0156EC 05:96DC: 02        .byte $02   ; 
- D 0 - I - 0x0156ED 05:96DD: D2        .byte $D2   ; 
- D 0 - I - 0x0156EE 05:96DE: A2        .byte $A2   ; 
- D 0 - I - 0x0156EF 05:96DF: 18        .byte $18   ; 
- D 0 - I - 0x0156F0 05:96E0: 18        .byte $18   ; 
- D 0 - I - 0x0156F1 05:96E1: 35        .byte $35   ; 
- D 0 - I - 0x0156F2 05:96E2: 36        .byte $36   ; 
- D 0 - I - 0x0156F3 05:96E3: 36        .byte $36   ; 
- D 0 - I - 0x0156F4 05:96E4: 36        .byte $36   ; 
- D 0 - I - 0x0156F5 05:96E5: 36        .byte $36   ; 
- D 0 - I - 0x0156F6 05:96E6: 36        .byte $36   ; 
- D 0 - I - 0x0156F7 05:96E7: 36        .byte $36   ; 
- - - - - - 0x0156F8 05:96E8: 36        .byte $36   ; 
- - - - - - 0x0156F9 05:96E9: 36        .byte $36   ; 
- - - - - - 0x0156FA 05:96EA: 52        .byte $52   ; 
- - - - - - 0x0156FB 05:96EB: 52        .byte $52   ; 
- - - - - - 0x0156FC 05:96EC: 52        .byte $52   ; 
- - - - - - 0x0156FD 05:96ED: 52        .byte $52   ; 
- - - - - - 0x0156FE 05:96EE: 52        .byte $52   ; 
- - - - - - 0x0156FF 05:96EF: 52        .byte $52   ; 
- - - - - - 0x015700 05:96F0: 86        .byte $86   ; 
- - - - - - 0x015701 05:96F1: E1        .byte $E1   ; 
- - - - - - 0x015702 05:96F2: 13        .byte $13   ; 
- - - - - - 0x015703 05:96F3: 13        .byte $13   ; 
- - - - - - 0x015704 05:96F4: 13        .byte $13   ; 
- - - - - - 0x015705 05:96F5: 13        .byte $13   ; 
- - - - - - 0x015706 05:96F6: 13        .byte $13   ; 
- - - - - - 0x015707 05:96F7: 13        .byte $13   ; 
- D 0 - I - 0x015708 05:96F8: 00        .byte $00   ; 
- D 0 - I - 0x015709 05:96F9: 02        .byte $02   ; 
- D 0 - I - 0x01570A 05:96FA: 67        .byte $67   ; 
- D 0 - I - 0x01570B 05:96FB: 70        .byte $70   ; 
- D 0 - I - 0x01570C 05:96FC: 02        .byte $02   ; 
- D 0 - I - 0x01570D 05:96FD: 67        .byte $67   ; 
- D 0 - I - 0x01570E 05:96FE: 87        .byte $87   ; 
- D 0 - I - 0x01570F 05:96FF: 70        .byte $70   ; 
- D 0 - I - 0x015710 05:9700: 02        .byte $02   ; 
- D 0 - I - 0x015711 05:9701: 67        .byte $67   ; 
- D 0 - I - 0x015712 05:9702: 70        .byte $70   ; 
- D 0 - I - 0x015713 05:9703: 02        .byte $02   ; 
- D 0 - I - 0x015714 05:9704: 02        .byte $02   ; 
- D 0 - I - 0x015715 05:9705: 00        .byte $00   ; 
- D 0 - I - 0x015716 05:9706: 00        .byte $00   ; 
- D 0 - I - 0x015717 05:9707: 00        .byte $00   ; 
- D 0 - I - 0x015718 05:9708: 00        .byte $00   ; 
- D 0 - I - 0x015719 05:9709: 00        .byte $00   ; 
- D 0 - I - 0x01571A 05:970A: 18        .byte $18   ; 
- D 0 - I - 0x01571B 05:970B: 94        .byte $94   ; 
- D 0 - I - 0x01571C 05:970C: 18        .byte $18   ; 
- D 0 - I - 0x01571D 05:970D: 18        .byte $18   ; 
- D 0 - I - 0x01571E 05:970E: 94        .byte $94   ; 
- D 0 - I - 0x01571F 05:970F: 18        .byte $18   ; 
- D 0 - I - 0x015720 05:9710: 18        .byte $18   ; 
- D 0 - I - 0x015721 05:9711: 94        .byte $94   ; 
- D 0 - I - 0x015722 05:9712: 18        .byte $18   ; 
- D 0 - I - 0x015723 05:9713: 18        .byte $18   ; 
- D 0 - I - 0x015724 05:9714: 94        .byte $94   ; 
- D 0 - I - 0x015725 05:9715: 18        .byte $18   ; 
- D 0 - I - 0x015726 05:9716: A3        .byte $A3   ; 
- D 0 - I - 0x015727 05:9717: 02        .byte $02   ; 
- D 0 - I - 0x015728 05:9718: 02        .byte $02   ; 
- D 0 - I - 0x015729 05:9719: A2        .byte $A2   ; 
- D 0 - I - 0x01572A 05:971A: 18        .byte $18   ; 
- D 0 - I - 0x01572B 05:971B: 94        .byte $94   ; 
- D 0 - I - 0x01572C 05:971C: 18        .byte $18   ; 
- D 0 - I - 0x01572D 05:971D: 18        .byte $18   ; 
- D 0 - I - 0x01572E 05:971E: 94        .byte $94   ; 
- D 0 - I - 0x01572F 05:971F: 18        .byte $18   ; 
- D 0 - I - 0x015730 05:9720: 18        .byte $18   ; 
- D 0 - I - 0x015731 05:9721: 94        .byte $94   ; 
- D 0 - I - 0x015732 05:9722: 18        .byte $18   ; 
- D 0 - I - 0x015733 05:9723: 18        .byte $18   ; 
- D 0 - I - 0x015734 05:9724: 94        .byte $94   ; 
- D 0 - I - 0x015735 05:9725: 18        .byte $18   ; 
- D 0 - I - 0x015736 05:9726: 16        .byte $16   ; 
- D 0 - I - 0x015737 05:9727: 16        .byte $16   ; 
- D 0 - I - 0x015738 05:9728: F0        .byte $F0   ; 
- D 0 - I - 0x015739 05:9729: F1        .byte $F1   ; 
- D 0 - I - 0x01573A 05:972A: A9        .byte $A9   ; 
- D 0 - I - 0x01573B 05:972B: C8        .byte $C8   ; 
- D 0 - I - 0x01573C 05:972C: C7        .byte $C7   ; 
- D 0 - I - 0x01573D 05:972D: A0        .byte $A0   ; 
- D 0 - I - 0x01573E 05:972E: 06        .byte $06   ; 
- D 0 - I - 0x01573F 05:972F: 83        .byte $83   ; 
- D 0 - I - 0x015740 05:9730: A1        .byte $A1   ; 
- D 0 - I - 0x015741 05:9731: A5        .byte $A5   ; 
- D 0 - I - 0x015742 05:9732: A4        .byte $A4   ; 
- D 0 - I - 0x015743 05:9733: C8        .byte $C8   ; 
- D 0 - I - 0x015744 05:9734: C7        .byte $C7   ; 
- D 0 - I - 0x015745 05:9735: A6        .byte $A6   ; 
- D 0 - I - 0x015746 05:9736: 01        .byte $01   ; 
- D 0 - I - 0x015747 05:9737: 01        .byte $01   ; 
- D 0 - I - 0x015748 05:9738: 01        .byte $01   ; 
- D 0 - I - 0x015749 05:9739: A7        .byte $A7   ; 
- D 0 - I - 0x01574A 05:973A: 02        .byte $02   ; 
- D 0 - I - 0x01574B 05:973B: B7        .byte $B7   ; 
- D 0 - I - 0x01574C 05:973C: 02        .byte $02   ; 
- D 0 - I - 0x01574D 05:973D: B7        .byte $B7   ; 
- D 0 - I - 0x01574E 05:973E: B6        .byte $B6   ; 
- D 0 - I - 0x01574F 05:973F: B7        .byte $B7   ; 
- D 0 - I - 0x015750 05:9740: 02        .byte $02   ; 
- D 0 - I - 0x015751 05:9741: B7        .byte $B7   ; 
- D 0 - I - 0x015752 05:9742: D2        .byte $D2   ; 
- D 0 - I - 0x015753 05:9743: B7        .byte $B7   ; 
- D 0 - I - 0x015754 05:9744: 02        .byte $02   ; 
- D 0 - I - 0x015755 05:9745: B6        .byte $B6   ; 
- D 0 - I - 0x015756 05:9746: 00        .byte $00   ; 
- D 0 - I - 0x015757 05:9747: 00        .byte $00   ; 
- D 0 - I - 0x015758 05:9748: 00        .byte $00   ; 
- D 0 - I - 0x015759 05:9749: A9        .byte $A9   ; 
- D 0 - I - 0x01575A 05:974A: B7        .byte $B7   ; 
- D 0 - I - 0x01575B 05:974B: 02        .byte $02   ; 
- D 0 - I - 0x01575C 05:974C: B7        .byte $B7   ; 
- D 0 - I - 0x01575D 05:974D: 02        .byte $02   ; 
- D 0 - I - 0x01575E 05:974E: B7        .byte $B7   ; 
- D 0 - I - 0x01575F 05:974F: 02        .byte $02   ; 
- D 0 - I - 0x015760 05:9750: 07        .byte $07   ; 
- D 0 - I - 0x015761 05:9751: 39        .byte $39   ; 
- D 0 - I - 0x015762 05:9752: 47        .byte $47   ; 
- D 0 - I - 0x015763 05:9753: 47        .byte $47   ; 
- D 0 - I - 0x015764 05:9754: 47        .byte $47   ; 
- D 0 - I - 0x015765 05:9755: 47        .byte $47   ; 
- D 0 - I - 0x015766 05:9756: 91        .byte $91   ; 
- D 0 - I - 0x015767 05:9757: 78        .byte $78   ; 
- D 0 - I - 0x015768 05:9758: 78        .byte $78   ; 
- D 0 - I - 0x015769 05:9759: 78        .byte $78   ; 
- D 0 - I - 0x01576A 05:975A: 78        .byte $78   ; 
- D 0 - I - 0x01576B 05:975B: 78        .byte $78   ; 
- D 0 - I - 0x01576C 05:975C: B8        .byte $B8   ; 
- D 0 - I - 0x01576D 05:975D: 51        .byte $51   ; 
- D 0 - I - 0x01576E 05:975E: 97        .byte $97   ; 
- D 0 - I - 0x01576F 05:975F: 91        .byte $91   ; 
- D 0 - I - 0x015770 05:9760: 51        .byte $51   ; 
- D 0 - I - 0x015771 05:9761: 51        .byte $51   ; 
- D 0 - I - 0x015772 05:9762: 51        .byte $51   ; 
- D 0 - I - 0x015773 05:9763: 97        .byte $97   ; 
- D 0 - I - 0x015774 05:9764: 91        .byte $91   ; 
- D 0 - I - 0x015775 05:9765: 51        .byte $51   ; 
- D 0 - I - 0x015776 05:9766: 51        .byte $51   ; 
- D 0 - I - 0x015777 05:9767: 97        .byte $97   ; 
- D 0 - I - 0x015778 05:9768: 91        .byte $91   ; 
- D 0 - I - 0x015779 05:9769: 97        .byte $97   ; 
- D 0 - I - 0x01577A 05:976A: 58        .byte $58   ; 
- D 0 - I - 0x01577B 05:976B: 58        .byte $58   ; 
- D 0 - I - 0x01577C 05:976C: 91        .byte $91   ; 
- D 0 - I - 0x01577D 05:976D: 51        .byte $51   ; 
- D 0 - I - 0x01577E 05:976E: 97        .byte $97   ; 
- D 0 - I - 0x01577F 05:976F: 91        .byte $91   ; 
- D 0 - I - 0x015780 05:9770: 97        .byte $97   ; 
- D 0 - I - 0x015781 05:9771: 13        .byte $13   ; 
- D 0 - I - 0x015782 05:9772: 13        .byte $13   ; 
- D 0 - I - 0x015783 05:9773: 13        .byte $13   ; 
- D 0 - I - 0x015784 05:9774: 13        .byte $13   ; 
- D 0 - I - 0x015785 05:9775: 13        .byte $13   ; 
- D 0 - I - 0x015786 05:9776: 13        .byte $13   ; 
- D 0 - I - 0x015787 05:9777: 13        .byte $13   ; 
- D 0 - I - 0x015788 05:9778: 13        .byte $13   ; 
- D 0 - I - 0x015789 05:9779: 00        .byte $00   ; 
- D 0 - I - 0x01578A 05:977A: 02        .byte $02   ; 
- D 0 - I - 0x01578B 05:977B: 64        .byte $64   ; 
- D 0 - I - 0x01578C 05:977C: F2        .byte $F2   ; 
- D 0 - I - 0x01578D 05:977D: F3        .byte $F3   ; 
- D 0 - I - 0x01578E 05:977E: 64        .byte $64   ; 
- D 0 - I - 0x01578F 05:977F: 65        .byte $65   ; 
- D 0 - I - 0x015790 05:9780: 66        .byte $66   ; 
- D 0 - I - 0x015791 05:9781: E5        .byte $E5   ; 
- D 0 - I - 0x015792 05:9782: D8        .byte $D8   ; 
- D 0 - I - 0x015793 05:9783: 66        .byte $66   ; 
- D 0 - I - 0x015794 05:9784: 02        .byte $02   ; 
- D 0 - I - 0x015795 05:9785: 02        .byte $02   ; 
- D 0 - I - 0x015796 05:9786: 01        .byte $01   ; 
- D 0 - I - 0x015797 05:9787: 12        .byte $12   ; 
- D 0 - I - 0x015798 05:9788: 12        .byte $12   ; 
- D 0 - I - 0x015799 05:9789: 12        .byte $12   ; 
- D 0 - I - 0x01579A 05:978A: 12        .byte $12   ; 
- D 0 - I - 0x01579B 05:978B: 12        .byte $12   ; 
- D 0 - I - 0x01579C 05:978C: 12        .byte $12   ; 
- D 0 - I - 0x01579D 05:978D: 12        .byte $12   ; 
- D 0 - I - 0x01579E 05:978E: 44        .byte $44   ; 
- D 0 - I - 0x01579F 05:978F: 18        .byte $18   ; 
- D 0 - I - 0x0157A0 05:9790: 18        .byte $18   ; 
- D 0 - I - 0x0157A1 05:9791: 17        .byte $17   ; 
- D 0 - I - 0x0157A2 05:9792: 28        .byte $28   ; 
- D 0 - I - 0x0157A3 05:9793: 17        .byte $17   ; 
- D 0 - I - 0x0157A4 05:9794: 25        .byte $25   ; 
- D 0 - I - 0x0157A5 05:9795: 17        .byte $17   ; 
- D 0 - I - 0x0157A6 05:9796: 17        .byte $17   ; 
- D 0 - I - 0x0157A7 05:9797: 15        .byte $15   ; 
- D 0 - I - 0x0157A8 05:9798: 00        .byte $00   ; 
- D 0 - I - 0x0157A9 05:9799: A9        .byte $A9   ; 
- D 0 - I - 0x0157AA 05:979A: 02        .byte $02   ; 
- D 0 - I - 0x0157AB 05:979B: 77        .byte $77   ; 
- D 0 - I - 0x0157AC 05:979C: 02        .byte $02   ; 
- D 0 - I - 0x0157AD 05:979D: 53        .byte $53   ; 
- D 0 - I - 0x0157AE 05:979E: 54        .byte $54   ; 
- D 0 - I - 0x0157AF 05:979F: D1        .byte $D1   ; 
- D 0 - I - 0x0157B0 05:97A0: D1        .byte $D1   ; 
- D 0 - I - 0x0157B1 05:97A1: 54        .byte $54   ; 
- D 0 - I - 0x0157B2 05:97A2: 56        .byte $56   ; 
- D 0 - I - 0x0157B3 05:97A3: 02        .byte $02   ; 
- D 0 - I - 0x0157B4 05:97A4: 77        .byte $77   ; 
- D 0 - I - 0x0157B5 05:97A5: 02        .byte $02   ; 
- D 0 - I - 0x0157B6 05:97A6: A8        .byte $A8   ; 
- D 0 - I - 0x0157B7 05:97A7: 00        .byte $00   ; 
- - - - - - 0x0157B8 05:97A8: 00        .byte $00   ; 
- - - - - - 0x0157B9 05:97A9: 00        .byte $00   ; 
- - - - - - 0x0157BA 05:97AA: C6        .byte $C6   ; 
- - - - - - 0x0157BB 05:97AB: C6        .byte $C6   ; 
- - - - - - 0x0157BC 05:97AC: C6        .byte $C6   ; 
- - - - - - 0x0157BD 05:97AD: C6        .byte $C6   ; 
- - - - - - 0x0157BE 05:97AE: C6        .byte $C6   ; 
- - - - - - 0x0157BF 05:97AF: C5        .byte $C5   ; 
- - - - - - 0x0157C0 05:97B0: C5        .byte $C5   ; 
- - - - - - 0x0157C1 05:97B1: C6        .byte $C6   ; 
- - - - - - 0x0157C2 05:97B2: C6        .byte $C6   ; 
- - - - - - 0x0157C3 05:97B3: C6        .byte $C6   ; 
- - - - - - 0x0157C4 05:97B4: C6        .byte $C6   ; 
- - - - - - 0x0157C5 05:97B5: C6        .byte $C6   ; 
- - - - - - 0x0157C6 05:97B6: C6        .byte $C6   ; 
- - - - - - 0x0157C7 05:97B7: F9        .byte $F9   ; 
- - - - - - 0x0157C8 05:97B8: F9        .byte $F9   ; 
- - - - - - 0x0157C9 05:97B9: C6        .byte $C6   ; 
- - - - - - 0x0157CA 05:97BA: C6        .byte $C6   ; 
- - - - - - 0x0157CB 05:97BB: C6        .byte $C6   ; 
- - - - - - 0x0157CC 05:97BC: C6        .byte $C6   ; 
- - - - - - 0x0157CD 05:97BD: C6        .byte $C6   ; 
- - - - - - 0x0157CE 05:97BE: C6        .byte $C6   ; 
- - - - - - 0x0157CF 05:97BF: C6        .byte $C6   ; 
- - - - - - 0x0157D0 05:97C0: C6        .byte $C6   ; 
- - - - - - 0x0157D1 05:97C1: C6        .byte $C6   ; 
- - - - - - 0x0157D2 05:97C2: C6        .byte $C6   ; 
- - - - - - 0x0157D3 05:97C3: C6        .byte $C6   ; 
- - - - - - 0x0157D4 05:97C4: C5        .byte $C5   ; 
- - - - - - 0x0157D5 05:97C5: C5        .byte $C5   ; 
- - - - - - 0x0157D6 05:97C6: 00        .byte $00   ; 
- - - - - - 0x0157D7 05:97C7: 00        .byte $00   ; 
- D 0 - I - 0x0157D8 05:97C8: 15        .byte $15   ; 
- D 0 - I - 0x0157D9 05:97C9: 76        .byte $76   ; 
- D 0 - I - 0x0157DA 05:97CA: 26        .byte $26   ; 
- D 0 - I - 0x0157DB 05:97CB: 76        .byte $76   ; 
- D 0 - I - 0x0157DC 05:97CC: 26        .byte $26   ; 
- D 0 - I - 0x0157DD 05:97CD: 76        .byte $76   ; 
- D 0 - I - 0x0157DE 05:97CE: 49        .byte $49   ; 
- D 0 - I - 0x0157DF 05:97CF: 18        .byte $18   ; 
- D 0 - I - 0x0157E0 05:97D0: 18        .byte $18   ; 
- D 0 - I - 0x0157E1 05:97D1: 49        .byte $49   ; 
- D 0 - I - 0x0157E2 05:97D2: 76        .byte $76   ; 
- D 0 - I - 0x0157E3 05:97D3: 26        .byte $26   ; 
- D 0 - I - 0x0157E4 05:97D4: 76        .byte $76   ; 
- D 0 - I - 0x0157E5 05:97D5: 25        .byte $25   ; 
- D 0 - I - 0x0157E6 05:97D6: 76        .byte $76   ; 
- D 0 - I - 0x0157E7 05:97D7: 15        .byte $15   ; 
- - - - - - 0x0157E8 05:97D8: 00        .byte $00   ; 
- - - - - - 0x0157E9 05:97D9: 00        .byte $00   ; 
- - - - - - 0x0157EA 05:97DA: D5        .byte $D5   ; 
- - - - - - 0x0157EB 05:97DB: 08        .byte $08   ; 
- - - - - - 0x0157EC 05:97DC: 08        .byte $08   ; 
- - - - - - 0x0157ED 05:97DD: 08        .byte $08   ; 
- - - - - - 0x0157EE 05:97DE: 08        .byte $08   ; 
- - - - - - 0x0157EF 05:97DF: 08        .byte $08   ; 
- - - - - - 0x0157F0 05:97E0: 08        .byte $08   ; 
- - - - - - 0x0157F1 05:97E1: 35        .byte $35   ; 
- - - - - - 0x0157F2 05:97E2: 36        .byte $36   ; 
- - - - - - 0x0157F3 05:97E3: 36        .byte $36   ; 
- - - - - - 0x0157F4 05:97E4: 36        .byte $36   ; 
- - - - - - 0x0157F5 05:97E5: 36        .byte $36   ; 
- - - - - - 0x0157F6 05:97E6: 36        .byte $36   ; 
- - - - - - 0x0157F7 05:97E7: 36        .byte $36   ; 
- D 0 - I - 0x0157F8 05:97E8: 36        .byte $36   ; 
- D 0 - I - 0x0157F9 05:97E9: 36        .byte $36   ; 
- D 0 - I - 0x0157FA 05:97EA: 36        .byte $36   ; 
- D 0 - I - 0x0157FB 05:97EB: 36        .byte $36   ; 
- D 0 - I - 0x0157FC 05:97EC: 36        .byte $36   ; 
- D 0 - I - 0x0157FD 05:97ED: 52        .byte $52   ; 
- D 0 - I - 0x0157FE 05:97EE: D0        .byte $D0   ; 
- D 0 - I - 0x0157FF 05:97EF: 52        .byte $52   ; 
- D 0 - I - 0x015800 05:97F0: 86        .byte $86   ; 
- D 0 - I - 0x015801 05:97F1: E1        .byte $E1   ; 
- D 0 - I - 0x015802 05:97F2: 13        .byte $13   ; 
- D 0 - I - 0x015803 05:97F3: 13        .byte $13   ; 
- D 0 - I - 0x015804 05:97F4: 13        .byte $13   ; 
- D 0 - I - 0x015805 05:97F5: 13        .byte $13   ; 
- D 0 - I - 0x015806 05:97F6: 13        .byte $13   ; 
- D 0 - I - 0x015807 05:97F7: 13        .byte $13   ; 
- D 0 - I - 0x015808 05:97F8: 00        .byte $00   ; 
- D 0 - I - 0x015809 05:97F9: 00        .byte $00   ; 
- D 0 - I - 0x01580A 05:97FA: D5        .byte $D5   ; 
- D 0 - I - 0x01580B 05:97FB: 93        .byte $93   ; 
- D 0 - I - 0x01580C 05:97FC: 08        .byte $08   ; 
- D 0 - I - 0x01580D 05:97FD: 08        .byte $08   ; 
- D 0 - I - 0x01580E 05:97FE: 93        .byte $93   ; 
- D 0 - I - 0x01580F 05:97FF: 08        .byte $08   ; 
- D 0 - I - 0x015810 05:9800: 08        .byte $08   ; 
- D 0 - I - 0x015811 05:9801: 93        .byte $93   ; 
- D 0 - I - 0x015812 05:9802: 08        .byte $08   ; 
- D 0 - I - 0x015813 05:9803: 08        .byte $08   ; 
- D 0 - I - 0x015814 05:9804: 93        .byte $93   ; 
- D 0 - I - 0x015815 05:9805: 08        .byte $08   ; 
- D 0 - I - 0x015816 05:9806: B5        .byte $B5   ; 
- D 0 - I - 0x015817 05:9807: 02        .byte $02   ; 
- D 0 - I - 0x015818 05:9808: 02        .byte $02   ; 
- D 0 - I - 0x015819 05:9809: 02        .byte $02   ; 
- D 0 - I - 0x01581A 05:980A: 08        .byte $08   ; 
- D 0 - I - 0x01581B 05:980B: 93        .byte $93   ; 
- D 0 - I - 0x01581C 05:980C: 08        .byte $08   ; 
- D 0 - I - 0x01581D 05:980D: 08        .byte $08   ; 
- D 0 - I - 0x01581E 05:980E: 93        .byte $93   ; 
- D 0 - I - 0x01581F 05:980F: 08        .byte $08   ; 
- D 0 - I - 0x015820 05:9810: 08        .byte $08   ; 
- D 0 - I - 0x015821 05:9811: 93        .byte $93   ; 
- D 0 - I - 0x015822 05:9812: 08        .byte $08   ; 
- D 0 - I - 0x015823 05:9813: 08        .byte $08   ; 
- D 0 - I - 0x015824 05:9814: 93        .byte $93   ; 
- D 0 - I - 0x015825 05:9815: 08        .byte $08   ; 
- D 0 - I - 0x015826 05:9816: 15        .byte $15   ; 
- D 0 - I - 0x015827 05:9817: 15        .byte $15   ; 
- D 0 - I - 0x015828 05:9818: 00        .byte $00   ; 
- D 0 - I - 0x015829 05:9819: A9        .byte $A9   ; 
- D 0 - I - 0x01582A 05:981A: 02        .byte $02   ; 
- D 0 - I - 0x01582B 05:981B: 77        .byte $77   ; 
- D 0 - I - 0x01582C 05:981C: 10        .byte $10   ; 
- D 0 - I - 0x01582D 05:981D: 77        .byte $77   ; 
- D 0 - I - 0x01582E 05:981E: 02        .byte $02   ; 
- D 0 - I - 0x01582F 05:981F: 07        .byte $07   ; 
- D 0 - I - 0x015830 05:9820: 18        .byte $18   ; 
- D 0 - I - 0x015831 05:9821: 45        .byte $45   ; 
- D 0 - I - 0x015832 05:9822: 13        .byte $13   ; 
- D 0 - I - 0x015833 05:9823: 13        .byte $13   ; 
- D 0 - I - 0x015834 05:9824: 13        .byte $13   ; 
- D 0 - I - 0x015835 05:9825: 13        .byte $13   ; 
- D 0 - I - 0x015836 05:9826: 13        .byte $13   ; 
- D 0 - I - 0x015837 05:9827: 13        .byte $13   ; 
- D 0 - I - 0x015838 05:9828: 13        .byte $13   ; 
- D 0 - I - 0x015839 05:9829: 00        .byte $00   ; 
- D 0 - I - 0x01583A 05:982A: 02        .byte $02   ; 
- D 0 - I - 0x01583B 05:982B: 02        .byte $02   ; 
- D 0 - I - 0x01583C 05:982C: 67        .byte $67   ; 
- D 0 - I - 0x01583D 05:982D: 70        .byte $70   ; 
- D 0 - I - 0x01583E 05:982E: 02        .byte $02   ; 
- D 0 - I - 0x01583F 05:982F: 67        .byte $67   ; 
- D 0 - I - 0x015840 05:9830: D7        .byte $D7   ; 
- D 0 - I - 0x015841 05:9831: 70        .byte $70   ; 
- D 0 - I - 0x015842 05:9832: 02        .byte $02   ; 
- D 0 - I - 0x015843 05:9833: 67        .byte $67   ; 
- D 0 - I - 0x015844 05:9834: 70        .byte $70   ; 
- D 0 - I - 0x015845 05:9835: 02        .byte $02   ; 
- D 0 - I - 0x015846 05:9836: 00        .byte $00   ; 
- D 0 - I - 0x015847 05:9837: 13        .byte $13   ; 
- D 0 - I - 0x015848 05:9838: 13        .byte $13   ; 
- D 0 - I - 0x015849 05:9839: 13        .byte $13   ; 
- D 0 - I - 0x01584A 05:983A: 13        .byte $13   ; 
- D 0 - I - 0x01584B 05:983B: 13        .byte $13   ; 
- D 0 - I - 0x01584C 05:983C: 13        .byte $13   ; 
- D 0 - I - 0x01584D 05:983D: 13        .byte $13   ; 
- D 0 - I - 0x01584E 05:983E: 43        .byte $43   ; 
- D 0 - I - 0x01584F 05:983F: 92        .byte $92   ; 
- D 0 - I - 0x015850 05:9840: 52        .byte $52   ; 
- D 0 - I - 0x015851 05:9841: F7        .byte $F7   ; 
- D 0 - I - 0x015852 05:9842: 62        .byte $62   ; 
- D 0 - I - 0x015853 05:9843: 62        .byte $62   ; 
- D 0 - I - 0x015854 05:9844: 62        .byte $62   ; 
- D 0 - I - 0x015855 05:9845: 62        .byte $62   ; 
- D 0 - I - 0x015856 05:9846: 62        .byte $62   ; 
- D 0 - I - 0x015857 05:9847: 62        .byte $62   ; 
- D 0 - I - 0x015858 05:9848: 62        .byte $62   ; 
- D 0 - I - 0x015859 05:9849: 62        .byte $62   ; 
- D 0 - I - 0x01585A 05:984A: 62        .byte $62   ; 
- D 0 - I - 0x01585B 05:984B: 62        .byte $62   ; 
- D 0 - I - 0x01585C 05:984C: 62        .byte $62   ; 
- D 0 - I - 0x01585D 05:984D: 62        .byte $62   ; 
- D 0 - I - 0x01585E 05:984E: 62        .byte $62   ; 
- D 0 - I - 0x01585F 05:984F: 62        .byte $62   ; 
- D 0 - I - 0x015860 05:9850: 62        .byte $62   ; 
- D 0 - I - 0x015861 05:9851: 62        .byte $62   ; 
- D 0 - I - 0x015862 05:9852: 62        .byte $62   ; 
- D 0 - I - 0x015863 05:9853: F7        .byte $F7   ; 
- D 0 - I - 0x015864 05:9854: 62        .byte $62   ; 
- D 0 - I - 0x015865 05:9855: 62        .byte $62   ; 
- D 0 - I - 0x015866 05:9856: 62        .byte $62   ; 
- D 0 - I - 0x015867 05:9857: 62        .byte $62   ; 
- D 0 - I - 0x015868 05:9858: 62        .byte $62   ; 
- D 0 - I - 0x015869 05:9859: 62        .byte $62   ; 
- D 0 - I - 0x01586A 05:985A: 62        .byte $62   ; 
- D 0 - I - 0x01586B 05:985B: 48        .byte $48   ; 
- D 0 - I - 0x01586C 05:985C: 48        .byte $48   ; 
- D 0 - I - 0x01586D 05:985D: 48        .byte $48   ; 
- D 0 - I - 0x01586E 05:985E: 41        .byte $41   ; 
- D 0 - I - 0x01586F 05:985F: 18        .byte $18   ; 
- D 0 - I - 0x015870 05:9860: 18        .byte $18   ; 
- D 0 - I - 0x015871 05:9861: 17        .byte $17   ; 
- D 0 - I - 0x015872 05:9862: 17        .byte $17   ; 
- D 0 - I - 0x015873 05:9863: 17        .byte $17   ; 
- D 0 - I - 0x015874 05:9864: 17        .byte $17   ; 
- D 0 - I - 0x015875 05:9865: 14        .byte $14   ; 
- D 0 - I - 0x015876 05:9866: 15        .byte $15   ; 
- D 0 - I - 0x015877 05:9867: 15        .byte $15   ; 
- - - - - - 0x015878 05:9868: 15        .byte $15   ; 
- - - - - - 0x015879 05:9869: 15        .byte $15   ; 
- - - - - - 0x01587A 05:986A: 17        .byte $17   ; 
- - - - - - 0x01587B 05:986B: 75        .byte $75   ; 
- - - - - - 0x01587C 05:986C: 17        .byte $17   ; 
- - - - - - 0x01587D 05:986D: 16        .byte $16   ; 
- - - - - - 0x01587E 05:986E: 16        .byte $16   ; 
- - - - - - 0x01587F 05:986F: 18        .byte $18   ; 
- - - - - - 0x015880 05:9870: 18        .byte $18   ; 
- - - - - - 0x015881 05:9871: 16        .byte $16   ; 
- - - - - - 0x015882 05:9872: 16        .byte $16   ; 
- - - - - - 0x015883 05:9873: 16        .byte $16   ; 
- - - - - - 0x015884 05:9874: 16        .byte $16   ; 
- - - - - - 0x015885 05:9875: 16        .byte $16   ; 
- - - - - - 0x015886 05:9876: 16        .byte $16   ; 
- - - - - - 0x015887 05:9877: 16        .byte $16   ; 
- - - - - - 0x015888 05:9878: F0        .byte $F0   ; 
- - - - - - 0x015889 05:9879: F1        .byte $F1   ; 
- - - - - - 0x01588A 05:987A: A9        .byte $A9   ; 
- - - - - - 0x01588B 05:987B: A2        .byte $A2   ; 
- - - - - - 0x01588C 05:987C: A3        .byte $A3   ; 
- - - - - - 0x01588D 05:987D: 77        .byte $77   ; 
- - - - - - 0x01588E 05:987E: 02        .byte $02   ; 
- - - - - - 0x01588F 05:987F: 08        .byte $08   ; 
- - - - - - 0x015890 05:9880: 08        .byte $08   ; 
- - - - - - 0x015891 05:9881: 02        .byte $02   ; 
- - - - - - 0x015892 05:9882: 77        .byte $77   ; 
- - - - - - 0x015893 05:9883: 10        .byte $10   ; 
- - - - - - 0x015894 05:9884: 02        .byte $02   ; 
- - - - - - 0x015895 05:9885: A8        .byte $A8   ; 
- - - - - - 0x015896 05:9886: F0        .byte $F0   ; 
- - - - - - 0x015897 05:9887: F1        .byte $F1   ; 
- - - - - - 0x015898 05:9888: 16        .byte $16   ; 
- - - - - - 0x015899 05:9889: 76        .byte $76   ; 
- - - - - - 0x01589A 05:988A: 27        .byte $27   ; 
- - - - - - 0x01589B 05:988B: 76        .byte $76   ; 
- - - - - - 0x01589C 05:988C: 76        .byte $76   ; 
- - - - - - 0x01589D 05:988D: 76        .byte $76   ; 
- - - - - - 0x01589E 05:988E: 26        .byte $26   ; 
- - - - - - 0x01589F 05:988F: 76        .byte $76   ; 
- - - - - - 0x0158A0 05:9890: 25        .byte $25   ; 
- - - - - - 0x0158A1 05:9891: 76        .byte $76   ; 
- - - - - - 0x0158A2 05:9892: 15        .byte $15   ; 
- - - - - - 0x0158A3 05:9893: 14        .byte $14   ; 
- - - - - - 0x0158A4 05:9894: 18        .byte $18   ; 
- - - - - - 0x0158A5 05:9895: 18        .byte $18   ; 
- - - - - - 0x0158A6 05:9896: 15        .byte $15   ; 
- - - - - - 0x0158A7 05:9897: 15        .byte $15   ; 
- D 0 - I - 0x0158A8 05:9898: 00        .byte $00   ; 
- D 0 - I - 0x0158A9 05:9899: F1        .byte $F1   ; 
- D 0 - I - 0x0158AA 05:989A: A2        .byte $A2   ; 
- D 0 - I - 0x0158AB 05:989B: A3        .byte $A3   ; 
- D 0 - I - 0x0158AC 05:989C: A2        .byte $A2   ; 
- D 0 - I - 0x0158AD 05:989D: A3        .byte $A3   ; 
- D 0 - I - 0x0158AE 05:989E: A0        .byte $A0   ; 
- D 0 - I - 0x0158AF 05:989F: 83        .byte $83   ; 
- D 0 - I - 0x0158B0 05:98A0: 06        .byte $06   ; 
- D 0 - I - 0x0158B1 05:98A1: 06        .byte $06   ; 
- D 0 - I - 0x0158B2 05:98A2: A1        .byte $A1   ; 
- D 0 - I - 0x0158B3 05:98A3: A2        .byte $A2   ; 
- D 0 - I - 0x0158B4 05:98A4: A3        .byte $A3   ; 
- D 0 - I - 0x0158B5 05:98A5: A6        .byte $A6   ; 
- D 0 - I - 0x0158B6 05:98A6: 01        .byte $01   ; 
- D 0 - I - 0x0158B7 05:98A7: A7        .byte $A7   ; 
- D 0 - I - 0x0158B8 05:98A8: 16        .byte $16   ; 
- D 0 - I - 0x0158B9 05:98A9: 23        .byte $23   ; 
- D 0 - I - 0x0158BA 05:98AA: 25        .byte $25   ; 
- D 0 - I - 0x0158BB 05:98AB: 18        .byte $18   ; 
- D 0 - I - 0x0158BC 05:98AC: 25        .byte $25   ; 
- D 0 - I - 0x0158BD 05:98AD: 23        .byte $23   ; 
- D 0 - I - 0x0158BE 05:98AE: 26        .byte $26   ; 
- D 0 - I - 0x0158BF 05:98AF: 23        .byte $23   ; 
- D 0 - I - 0x0158C0 05:98B0: 23        .byte $23   ; 
- D 0 - I - 0x0158C1 05:98B1: 25        .byte $25   ; 
- D 0 - I - 0x0158C2 05:98B2: 23        .byte $23   ; 
- D 0 - I - 0x0158C3 05:98B3: 26        .byte $26   ; 
- D 0 - I - 0x0158C4 05:98B4: 18        .byte $18   ; 
- D 0 - I - 0x0158C5 05:98B5: 31        .byte $31   ; 
- D 0 - I - 0x0158C6 05:98B6: 23        .byte $23   ; 
- D 0 - I - 0x0158C7 05:98B7: 16        .byte $16   ; 
- - - - - - 0x0158C8 05:98B8: 16        .byte $16   ; 
- - - - - - 0x0158C9 05:98B9: 28        .byte $28   ; 
- - - - - - 0x0158CA 05:98BA: 17        .byte $17   ; 
- - - - - - 0x0158CB 05:98BB: 17        .byte $17   ; 
- - - - - - 0x0158CC 05:98BC: 17        .byte $17   ; 
- - - - - - 0x0158CD 05:98BD: 49        .byte $49   ; 
- - - - - - 0x0158CE 05:98BE: 17        .byte $17   ; 
- - - - - - 0x0158CF 05:98BF: 17        .byte $17   ; 
- - - - - - 0x0158D0 05:98C0: 17        .byte $17   ; 
- - - - - - 0x0158D1 05:98C1: 17        .byte $17   ; 
- - - - - - 0x0158D2 05:98C2: 49        .byte $49   ; 
- - - - - - 0x0158D3 05:98C3: 17        .byte $17   ; 
- - - - - - 0x0158D4 05:98C4: 17        .byte $17   ; 
- - - - - - 0x0158D5 05:98C5: 17        .byte $17   ; 
- - - - - - 0x0158D6 05:98C6: 28        .byte $28   ; 
- - - - - - 0x0158D7 05:98C7: 15        .byte $15   ; 
- D 0 - I - 0x0158D8 05:98C8: 00        .byte $00   ; 
- D 0 - I - 0x0158D9 05:98C9: 00        .byte $00   ; 
- D 0 - I - 0x0158DA 05:98CA: E6        .byte $E6   ; 
- D 0 - I - 0x0158DB 05:98CB: A1        .byte $A1   ; 
- D 0 - I - 0x0158DC 05:98CC: A2        .byte $A2   ; 
- D 0 - I - 0x0158DD 05:98CD: 18        .byte $18   ; 
- D 0 - I - 0x0158DE 05:98CE: 18        .byte $18   ; 
- D 0 - I - 0x0158DF 05:98CF: 18        .byte $18   ; 
- D 0 - I - 0x0158E0 05:98D0: 18        .byte $18   ; 
- D 0 - I - 0x0158E1 05:98D1: 45        .byte $45   ; 
- D 0 - I - 0x0158E2 05:98D2: 12        .byte $12   ; 
- D 0 - I - 0x0158E3 05:98D3: 13        .byte $13   ; 
- D 0 - I - 0x0158E4 05:98D4: 12        .byte $12   ; 
- D 0 - I - 0x0158E5 05:98D5: 13        .byte $13   ; 
- D 0 - I - 0x0158E6 05:98D6: 13        .byte $13   ; 
- D 0 - I - 0x0158E7 05:98D7: 13        .byte $13   ; 
- D 0 - I - 0x0158E8 05:98D8: 00        .byte $00   ; 
- D 0 - I - 0x0158E9 05:98D9: 00        .byte $00   ; 
- D 0 - I - 0x0158EA 05:98DA: 04        .byte $04   ; 
- D 0 - I - 0x0158EB 05:98DB: 04        .byte $04   ; 
- D 0 - I - 0x0158EC 05:98DC: 04        .byte $04   ; 
- D 0 - I - 0x0158ED 05:98DD: 04        .byte $04   ; 
- D 0 - I - 0x0158EE 05:98DE: 04        .byte $04   ; 
- D 0 - I - 0x0158EF 05:98DF: 04        .byte $04   ; 
- D 0 - I - 0x0158F0 05:98E0: 04        .byte $04   ; 
- D 0 - I - 0x0158F1 05:98E1: 04        .byte $04   ; 
- D 0 - I - 0x0158F2 05:98E2: 04        .byte $04   ; 
- D 0 - I - 0x0158F3 05:98E3: 04        .byte $04   ; 
- D 0 - I - 0x0158F4 05:98E4: 04        .byte $04   ; 
- D 0 - I - 0x0158F5 05:98E5: 04        .byte $04   ; 
- D 0 - I - 0x0158F6 05:98E6: 83        .byte $83   ; 
- D 0 - I - 0x0158F7 05:98E7: 00        .byte $00   ; 
- D 0 - I - 0x0158F8 05:98E8: 15        .byte $15   ; 
- D 0 - I - 0x0158F9 05:98E9: 28        .byte $28   ; 
- D 0 - I - 0x0158FA 05:98EA: 17        .byte $17   ; 
- D 0 - I - 0x0158FB 05:98EB: 25        .byte $25   ; 
- D 0 - I - 0x0158FC 05:98EC: 17        .byte $17   ; 
- D 0 - I - 0x0158FD 05:98ED: 25        .byte $25   ; 
- D 0 - I - 0x0158FE 05:98EE: 17        .byte $17   ; 
- D 0 - I - 0x0158FF 05:98EF: 25        .byte $25   ; 
- D 0 - I - 0x015900 05:98F0: 17        .byte $17   ; 
- D 0 - I - 0x015901 05:98F1: 31        .byte $31   ; 
- D 0 - I - 0x015902 05:98F2: 76        .byte $76   ; 
- D 0 - I - 0x015903 05:98F3: 76        .byte $76   ; 
- D 0 - I - 0x015904 05:98F4: 16        .byte $16   ; 
- D 0 - I - 0x015905 05:98F5: 16        .byte $16   ; 
- D 0 - I - 0x015906 05:98F6: 16        .byte $16   ; 
- D 0 - I - 0x015907 05:98F7: 16        .byte $16   ; 
- D 0 - I - 0x015908 05:98F8: 16        .byte $16   ; 
- D 0 - I - 0x015909 05:98F9: 16        .byte $16   ; 
- D 0 - I - 0x01590A 05:98FA: 17        .byte $17   ; 
- D 0 - I - 0x01590B 05:98FB: 17        .byte $17   ; 
- D 0 - I - 0x01590C 05:98FC: 30        .byte $30   ; 
- D 0 - I - 0x01590D 05:98FD: 57        .byte $57   ; 
- D 0 - I - 0x01590E 05:98FE: 57        .byte $57   ; 
- D 0 - I - 0x01590F 05:98FF: 74        .byte $74   ; 
- D 0 - I - 0x015910 05:9900: 74        .byte $74   ; 
- D 0 - I - 0x015911 05:9901: 57        .byte $57   ; 
- D 0 - I - 0x015912 05:9902: 57        .byte $57   ; 
- D 0 - I - 0x015913 05:9903: 57        .byte $57   ; 
- D 0 - I - 0x015914 05:9904: 57        .byte $57   ; 
- D 0 - I - 0x015915 05:9905: 57        .byte $57   ; 
- D 0 - I - 0x015916 05:9906: 30        .byte $30   ; 
- D 0 - I - 0x015917 05:9907: 30        .byte $30   ; 
- D 0 - I - 0x015918 05:9908: 30        .byte $30   ; 
- D 0 - I - 0x015919 05:9909: 30        .byte $30   ; 
- D 0 - I - 0x01591A 05:990A: 17        .byte $17   ; 
- D 0 - I - 0x01591B 05:990B: 17        .byte $17   ; 
- D 0 - I - 0x01591C 05:990C: 76        .byte $76   ; 
- D 0 - I - 0x01591D 05:990D: 76        .byte $76   ; 
- D 0 - I - 0x01591E 05:990E: 31        .byte $31   ; 
- D 0 - I - 0x01591F 05:990F: 18        .byte $18   ; 
- D 0 - I - 0x015920 05:9910: 18        .byte $18   ; 
- D 0 - I - 0x015921 05:9911: 76        .byte $76   ; 
- D 0 - I - 0x015922 05:9912: 27        .byte $27   ; 
- D 0 - I - 0x015923 05:9913: 76        .byte $76   ; 
- D 0 - I - 0x015924 05:9914: 17        .byte $17   ; 
- D 0 - I - 0x015925 05:9915: 76        .byte $76   ; 
- D 0 - I - 0x015926 05:9916: 28        .byte $28   ; 
- D 0 - I - 0x015927 05:9917: 16        .byte $16   ; 
- D 0 - I - 0x015928 05:9918: 16        .byte $16   ; 
- D 0 - I - 0x015929 05:9919: 16        .byte $16   ; 
- D 0 - I - 0x01592A 05:991A: 17        .byte $17   ; 
- D 0 - I - 0x01592B 05:991B: 76        .byte $76   ; 
- D 0 - I - 0x01592C 05:991C: 76        .byte $76   ; 
- D 0 - I - 0x01592D 05:991D: 26        .byte $26   ; 
- D 0 - I - 0x01592E 05:991E: 17        .byte $17   ; 
- D 0 - I - 0x01592F 05:991F: 23        .byte $23   ; 
- D 0 - I - 0x015930 05:9920: 23        .byte $23   ; 
- D 0 - I - 0x015931 05:9921: 46        .byte $46   ; 
- D 0 - I - 0x015932 05:9922: 52        .byte $52   ; 
- D 0 - I - 0x015933 05:9923: 48        .byte $48   ; 
- D 0 - I - 0x015934 05:9924: 48        .byte $48   ; 
- D 0 - I - 0x015935 05:9925: 52        .byte $52   ; 
- D 0 - I - 0x015936 05:9926: 37        .byte $37   ; 
- D 0 - I - 0x015937 05:9927: 37        .byte $37   ; 
- D 0 - I - 0x015938 05:9928: 37        .byte $37   ; 
- D 0 - I - 0x015939 05:9929: 37        .byte $37   ; 
- D 0 - I - 0x01593A 05:992A: 52        .byte $52   ; 
- D 0 - I - 0x01593B 05:992B: 52        .byte $52   ; 
- D 0 - I - 0x01593C 05:992C: 86        .byte $86   ; 
- D 0 - I - 0x01593D 05:992D: 13        .byte $13   ; 
- D 0 - I - 0x01593E 05:992E: 13        .byte $13   ; 
- D 0 - I - 0x01593F 05:992F: 92        .byte $92   ; 
- D 0 - I - 0x015940 05:9930: D0        .byte $D0   ; 
- D 0 - I - 0x015941 05:9931: 52        .byte $52   ; 
- D 0 - I - 0x015942 05:9932: 36        .byte $36   ; 
- D 0 - I - 0x015943 05:9933: 52        .byte $52   ; 
- D 0 - I - 0x015944 05:9934: 36        .byte $36   ; 
- D 0 - I - 0x015945 05:9935: 52        .byte $52   ; 
- D 0 - I - 0x015946 05:9936: 37        .byte $37   ; 
- D 0 - I - 0x015947 05:9937: 37        .byte $37   ; 
- D 0 - I - 0x015948 05:9938: 37        .byte $37   ; 
- D 0 - I - 0x015949 05:9939: 37        .byte $37   ; 
- D 0 - I - 0x01594A 05:993A: 37        .byte $37   ; 
- D 0 - I - 0x01594B 05:993B: 48        .byte $48   ; 
- D 0 - I - 0x01594C 05:993C: 48        .byte $48   ; 
- D 0 - I - 0x01594D 05:993D: 48        .byte $48   ; 
- D 0 - I - 0x01594E 05:993E: 41        .byte $41   ; 
- D 0 - I - 0x01594F 05:993F: 23        .byte $23   ; 
- D 0 - I - 0x015950 05:9940: 23        .byte $23   ; 
- D 0 - I - 0x015951 05:9941: 17        .byte $17   ; 
- D 0 - I - 0x015952 05:9942: 31        .byte $31   ; 
- D 0 - I - 0x015953 05:9943: 17        .byte $17   ; 
- D 0 - I - 0x015954 05:9944: 25        .byte $25   ; 
- D 0 - I - 0x015955 05:9945: 25        .byte $25   ; 
- D 0 - I - 0x015956 05:9946: 17        .byte $17   ; 
- D 0 - I - 0x015957 05:9947: 17        .byte $17   ; 
- D 0 - I - 0x015958 05:9948: 17        .byte $17   ; 
- D 0 - I - 0x015959 05:9949: 17        .byte $17   ; 
- D 0 - I - 0x01595A 05:994A: 17        .byte $17   ; 
- D 0 - I - 0x01595B 05:994B: 27        .byte $27   ; 
- D 0 - I - 0x01595C 05:994C: 17        .byte $17   ; 
- D 0 - I - 0x01595D 05:994D: 27        .byte $27   ; 
- D 0 - I - 0x01595E 05:994E: 17        .byte $17   ; 
- D 0 - I - 0x01595F 05:994F: 26        .byte $26   ; 
- D 0 - I - 0x015960 05:9950: 17        .byte $17   ; 
- D 0 - I - 0x015961 05:9951: 26        .byte $26   ; 
- D 0 - I - 0x015962 05:9952: 17        .byte $17   ; 
- D 0 - I - 0x015963 05:9953: 27        .byte $27   ; 
- D 0 - I - 0x015964 05:9954: 17        .byte $17   ; 
- D 0 - I - 0x015965 05:9955: 26        .byte $26   ; 
- D 0 - I - 0x015966 05:9956: 17        .byte $17   ; 
- D 0 - I - 0x015967 05:9957: 26        .byte $26   ; 
- D 0 - I - 0x015968 05:9958: 26        .byte $26   ; 
- D 0 - I - 0x015969 05:9959: 17        .byte $17   ; 
- D 0 - I - 0x01596A 05:995A: 26        .byte $26   ; 
- D 0 - I - 0x01596B 05:995B: 76        .byte $76   ; 
- D 0 - I - 0x01596C 05:995C: 27        .byte $27   ; 
- D 0 - I - 0x01596D 05:995D: 76        .byte $76   ; 
- D 0 - I - 0x01596E 05:995E: 26        .byte $26   ; 
- D 0 - I - 0x01596F 05:995F: 18        .byte $18   ; 
- D 0 - I - 0x015970 05:9960: 18        .byte $18   ; 
- D 0 - I - 0x015971 05:9961: 26        .byte $26   ; 
- D 0 - I - 0x015972 05:9962: 76        .byte $76   ; 
- D 0 - I - 0x015973 05:9963: 26        .byte $26   ; 
- D 0 - I - 0x015974 05:9964: 76        .byte $76   ; 
- D 0 - I - 0x015975 05:9965: 27        .byte $27   ; 
- D 0 - I - 0x015976 05:9966: 76        .byte $76   ; 
- D 0 - I - 0x015977 05:9967: 16        .byte $16   ; 
- - - - - - 0x015978 05:9968: 16        .byte $16   ; 
- - - - - - 0x015979 05:9969: 16        .byte $16   ; 
- - - - - - 0x01597A 05:996A: 16        .byte $16   ; 
- - - - - - 0x01597B 05:996B: 16        .byte $16   ; 
- - - - - - 0x01597C 05:996C: 16        .byte $16   ; 
- - - - - - 0x01597D 05:996D: 16        .byte $16   ; 
- - - - - - 0x01597E 05:996E: 16        .byte $16   ; 
- - - - - - 0x01597F 05:996F: 18        .byte $18   ; 
- - - - - - 0x015980 05:9970: 18        .byte $18   ; 
- - - - - - 0x015981 05:9971: 63        .byte $63   ; 
- - - - - - 0x015982 05:9972: 42        .byte $42   ; 
- - - - - - 0x015983 05:9973: 42        .byte $42   ; 
- - - - - - 0x015984 05:9974: 42        .byte $42   ; 
- - - - - - 0x015985 05:9975: 42        .byte $42   ; 
- - - - - - 0x015986 05:9976: 42        .byte $42   ; 
- - - - - - 0x015987 05:9977: 42        .byte $42   ; 
- - - - - - 0x015988 05:9978: 42        .byte $42   ; 
- - - - - - 0x015989 05:9979: 42        .byte $42   ; 
- - - - - - 0x01598A 05:997A: 42        .byte $42   ; 
- - - - - - 0x01598B 05:997B: 61        .byte $61   ; 
- - - - - - 0x01598C 05:997C: 61        .byte $61   ; 
- - - - - - 0x01598D 05:997D: 61        .byte $61   ; 
- - - - - - 0x01598E 05:997E: 60        .byte $60   ; 
- - - - - - 0x01598F 05:997F: 76        .byte $76   ; 
- - - - - - 0x015990 05:9980: 76        .byte $76   ; 
- - - - - - 0x015991 05:9981: 76        .byte $76   ; 
- - - - - - 0x015992 05:9982: 76        .byte $76   ; 
- - - - - - 0x015993 05:9983: 17        .byte $17   ; 
- - - - - - 0x015994 05:9984: 17        .byte $17   ; 
- - - - - - 0x015995 05:9985: 25        .byte $25   ; 
- - - - - - 0x015996 05:9986: 76        .byte $76   ; 
- - - - - - 0x015997 05:9987: 17        .byte $17   ; 
- D 0 - I - 0x015998 05:9988: 17        .byte $17   ; 
- D 0 - I - 0x015999 05:9989: 18        .byte $18   ; 
- D 0 - I - 0x01599A 05:998A: 31        .byte $31   ; 
- D 0 - I - 0x01599B 05:998B: 18        .byte $18   ; 
- D 0 - I - 0x01599C 05:998C: 18        .byte $18   ; 
- D 0 - I - 0x01599D 05:998D: 18        .byte $18   ; 
- D 0 - I - 0x01599E 05:998E: 25        .byte $25   ; 
- D 0 - I - 0x01599F 05:998F: 18        .byte $18   ; 
- D 0 - I - 0x0159A0 05:9990: 25        .byte $25   ; 
- D 0 - I - 0x0159A1 05:9991: 18        .byte $18   ; 
- D 0 - I - 0x0159A2 05:9992: 26        .byte $26   ; 
- D 0 - I - 0x0159A3 05:9993: 17        .byte $17   ; 
- D 0 - I - 0x0159A4 05:9994: 18        .byte $18   ; 
- D 0 - I - 0x0159A5 05:9995: 23        .byte $23   ; 
- D 0 - I - 0x0159A6 05:9996: 17        .byte $17   ; 
- D 0 - I - 0x0159A7 05:9997: 30        .byte $30   ; 
- D 0 - I - 0x0159A8 05:9998: 30        .byte $30   ; 
- D 0 - I - 0x0159A9 05:9999: 30        .byte $30   ; 
- D 0 - I - 0x0159AA 05:999A: 30        .byte $30   ; 
- D 0 - I - 0x0159AB 05:999B: 30        .byte $30   ; 
- D 0 - I - 0x0159AC 05:999C: 57        .byte $57   ; 
- D 0 - I - 0x0159AD 05:999D: 29        .byte $29   ; 
- D 0 - I - 0x0159AE 05:999E: 29        .byte $29   ; 
- D 0 - I - 0x0159AF 05:999F: 29        .byte $29   ; 
- D 0 - I - 0x0159B0 05:99A0: 29        .byte $29   ; 
- D 0 - I - 0x0159B1 05:99A1: 29        .byte $29   ; 
- D 0 - I - 0x0159B2 05:99A2: 29        .byte $29   ; 
- D 0 - I - 0x0159B3 05:99A3: 29        .byte $29   ; 
- D 0 - I - 0x0159B4 05:99A4: 76        .byte $76   ; 
- D 0 - I - 0x0159B5 05:99A5: 16        .byte $16   ; 
- D 0 - I - 0x0159B6 05:99A6: 16        .byte $16   ; 
- D 0 - I - 0x0159B7 05:99A7: 16        .byte $16   ; 
- D 0 - I - 0x0159B8 05:99A8: 16        .byte $16   ; 
- D 0 - I - 0x0159B9 05:99A9: 16        .byte $16   ; 
- D 0 - I - 0x0159BA 05:99AA: 16        .byte $16   ; 
- D 0 - I - 0x0159BB 05:99AB: 18        .byte $18   ; 
- D 0 - I - 0x0159BC 05:99AC: 16        .byte $16   ; 
- D 0 - I - 0x0159BD 05:99AD: 16        .byte $16   ; 
- D 0 - I - 0x0159BE 05:99AE: 16        .byte $16   ; 
- D 0 - I - 0x0159BF 05:99AF: 16        .byte $16   ; 
- D 0 - I - 0x0159C0 05:99B0: 16        .byte $16   ; 
- D 0 - I - 0x0159C1 05:99B1: 16        .byte $16   ; 
- D 0 - I - 0x0159C2 05:99B2: 16        .byte $16   ; 
- D 0 - I - 0x0159C3 05:99B3: 16        .byte $16   ; 
- D 0 - I - 0x0159C4 05:99B4: 18        .byte $18   ; 
- D 0 - I - 0x0159C5 05:99B5: 16        .byte $16   ; 
- D 0 - I - 0x0159C6 05:99B6: 16        .byte $16   ; 
- D 0 - I - 0x0159C7 05:99B7: 16        .byte $16   ; 
- - - - - - 0x0159C8 05:99B8: F1        .byte $F1   ; 
- - - - - - 0x0159C9 05:99B9: A9        .byte $A9   ; 
- - - - - - 0x0159CA 05:99BA: 02        .byte $02   ; 
- - - - - - 0x0159CB 05:99BB: 02        .byte $02   ; 
- - - - - - 0x0159CC 05:99BC: 77        .byte $77   ; 
- - - - - - 0x0159CD 05:99BD: A2        .byte $A2   ; 
- - - - - - 0x0159CE 05:99BE: A3        .byte $A3   ; 
- - - - - - 0x0159CF 05:99BF: 10        .byte $10   ; 
- - - - - - 0x0159D0 05:99C0: A8        .byte $A8   ; 
- - - - - - 0x0159D1 05:99C1: F0        .byte $F0   ; 
- - - - - - 0x0159D2 05:99C2: F1        .byte $F1   ; 
- - - - - - 0x0159D3 05:99C3: A9        .byte $A9   ; 
- - - - - - 0x0159D4 05:99C4: 77        .byte $77   ; 
- - - - - - 0x0159D5 05:99C5: 02        .byte $02   ; 
- - - - - - 0x0159D6 05:99C6: A8        .byte $A8   ; 
- - - - - - 0x0159D7 05:99C7: 00        .byte $00   ; 
- - - - - - 0x0159D8 05:99C8: 15        .byte $15   ; 
- - - - - - 0x0159D9 05:99C9: 15        .byte $15   ; 
- - - - - - 0x0159DA 05:99CA: 23        .byte $23   ; 
- - - - - - 0x0159DB 05:99CB: 23        .byte $23   ; 
- - - - - - 0x0159DC 05:99CC: 23        .byte $23   ; 
- - - - - - 0x0159DD 05:99CD: 23        .byte $23   ; 
- - - - - - 0x0159DE 05:99CE: 23        .byte $23   ; 
- - - - - - 0x0159DF 05:99CF: 23        .byte $23   ; 
- - - - - - 0x0159E0 05:99D0: 23        .byte $23   ; 
- - - - - - 0x0159E1 05:99D1: 23        .byte $23   ; 
- - - - - - 0x0159E2 05:99D2: 23        .byte $23   ; 
- - - - - - 0x0159E3 05:99D3: 23        .byte $23   ; 
- - - - - - 0x0159E4 05:99D4: 23        .byte $23   ; 
- - - - - - 0x0159E5 05:99D5: 23        .byte $23   ; 
- - - - - - 0x0159E6 05:99D6: 28        .byte $28   ; 
- - - - - - 0x0159E7 05:99D7: 16        .byte $16   ; 
- - - - - - 0x0159E8 05:99D8: 16        .byte $16   ; 
- - - - - - 0x0159E9 05:99D9: 16        .byte $16   ; 
- - - - - - 0x0159EA 05:99DA: 16        .byte $16   ; 
- - - - - - 0x0159EB 05:99DB: 16        .byte $16   ; 
- - - - - - 0x0159EC 05:99DC: 16        .byte $16   ; 
- - - - - - 0x0159ED 05:99DD: 16        .byte $16   ; 
- - - - - - 0x0159EE 05:99DE: 16        .byte $16   ; 
- - - - - - 0x0159EF 05:99DF: 16        .byte $16   ; 
- - - - - - 0x0159F0 05:99E0: 16        .byte $16   ; 
- - - - - - 0x0159F1 05:99E1: 16        .byte $16   ; 
- - - - - - 0x0159F2 05:99E2: 18        .byte $18   ; 
- - - - - - 0x0159F3 05:99E3: 18        .byte $18   ; 
- - - - - - 0x0159F4 05:99E4: 16        .byte $16   ; 
- - - - - - 0x0159F5 05:99E5: 16        .byte $16   ; 
- - - - - - 0x0159F6 05:99E6: 16        .byte $16   ; 
- - - - - - 0x0159F7 05:99E7: 16        .byte $16   ; 
- D 0 - I - 0x0159F8 05:99E8: 16        .byte $16   ; 
- D 0 - I - 0x0159F9 05:99E9: 16        .byte $16   ; 
- D 0 - I - 0x0159FA 05:99EA: 16        .byte $16   ; 
- D 0 - I - 0x0159FB 05:99EB: 16        .byte $16   ; 
- D 0 - I - 0x0159FC 05:99EC: 16        .byte $16   ; 
- D 0 - I - 0x0159FD 05:99ED: 19        .byte $19   ; 
- D 0 - I - 0x0159FE 05:99EE: 18        .byte $18   ; 
- D 0 - I - 0x0159FF 05:99EF: 76        .byte $76   ; 
- D 0 - I - 0x015A00 05:99F0: 14        .byte $14   ; 
- D 0 - I - 0x015A01 05:99F1: 19        .byte $19   ; 
- D 0 - I - 0x015A02 05:99F2: 19        .byte $19   ; 
- D 0 - I - 0x015A03 05:99F3: 19        .byte $19   ; 
- D 0 - I - 0x015A04 05:99F4: 19        .byte $19   ; 
- D 0 - I - 0x015A05 05:99F5: 19        .byte $19   ; 
- D 0 - I - 0x015A06 05:99F6: 28        .byte $28   ; 
- D 0 - I - 0x015A07 05:99F7: 28        .byte $28   ; 
- D 0 - I - 0x015A08 05:99F8: 28        .byte $28   ; 
- D 0 - I - 0x015A09 05:99F9: 28        .byte $28   ; 
- D 0 - I - 0x015A0A 05:99FA: 17        .byte $17   ; 
- D 0 - I - 0x015A0B 05:99FB: 26        .byte $26   ; 
- D 0 - I - 0x015A0C 05:99FC: 23        .byte $23   ; 
- D 0 - I - 0x015A0D 05:99FD: 23        .byte $23   ; 
- D 0 - I - 0x015A0E 05:99FE: 31        .byte $31   ; 
- D 0 - I - 0x015A0F 05:99FF: 18        .byte $18   ; 
- D 0 - I - 0x015A10 05:9A00: 18        .byte $18   ; 
- D 0 - I - 0x015A11 05:9A01: 18        .byte $18   ; 
- D 0 - I - 0x015A12 05:9A02: 26        .byte $26   ; 
- D 0 - I - 0x015A13 05:9A03: 18        .byte $18   ; 
- D 0 - I - 0x015A14 05:9A04: 27        .byte $27   ; 
- D 0 - I - 0x015A15 05:9A05: 18        .byte $18   ; 
- D 0 - I - 0x015A16 05:9A06: 28        .byte $28   ; 
- D 0 - I - 0x015A17 05:9A07: 16        .byte $16   ; 
- D 0 - I - 0x015A18 05:9A08: F0        .byte $F0   ; 
- D 0 - I - 0x015A19 05:9A09: F1        .byte $F1   ; 
- D 0 - I - 0x015A1A 05:9A0A: A9        .byte $A9   ; 
- D 0 - I - 0x015A1B 05:9A0B: 08        .byte $08   ; 
- D 0 - I - 0x015A1C 05:9A0C: 08        .byte $08   ; 
- D 0 - I - 0x015A1D 05:9A0D: A4        .byte $A4   ; 
- D 0 - I - 0x015A1E 05:9A0E: 77        .byte $77   ; 
- D 0 - I - 0x015A1F 05:9A0F: 10        .byte $10   ; 
- D 0 - I - 0x015A20 05:9A10: A5        .byte $A5   ; 
- D 0 - I - 0x015A21 05:9A11: 08        .byte $08   ; 
- D 0 - I - 0x015A22 05:9A12: 08        .byte $08   ; 
- D 0 - I - 0x015A23 05:9A13: A4        .byte $A4   ; 
- D 0 - I - 0x015A24 05:9A14: A5        .byte $A5   ; 
- D 0 - I - 0x015A25 05:9A15: 08        .byte $08   ; 
- D 0 - I - 0x015A26 05:9A16: A4        .byte $A4   ; 
- D 0 - I - 0x015A27 05:9A17: 02        .byte $02   ; 
- D 0 - I - 0x015A28 05:9A18: 02        .byte $02   ; 
- D 0 - I - 0x015A29 05:9A19: A5        .byte $A5   ; 
- D 0 - I - 0x015A2A 05:9A1A: 08        .byte $08   ; 
- D 0 - I - 0x015A2B 05:9A1B: E3        .byte $E3   ; 
- D 0 - I - 0x015A2C 05:9A1C: 18        .byte $18   ; 
- D 0 - I - 0x015A2D 05:9A1D: 12        .byte $12   ; 
- D 0 - I - 0x015A2E 05:9A1E: 12        .byte $12   ; 
- D 0 - I - 0x015A2F 05:9A1F: 08        .byte $08   ; 
- D 0 - I - 0x015A30 05:9A20: 08        .byte $08   ; 
- D 0 - I - 0x015A31 05:9A21: 08        .byte $08   ; 
- D 0 - I - 0x015A32 05:9A22: 33        .byte $33   ; 
- D 0 - I - 0x015A33 05:9A23: 08        .byte $08   ; 
- D 0 - I - 0x015A34 05:9A24: 32        .byte $32   ; 
- D 0 - I - 0x015A35 05:9A25: 08        .byte $08   ; 
- D 0 - I - 0x015A36 05:9A26: A4        .byte $A4   ; 
- D 0 - I - 0x015A37 05:9A27: 02        .byte $02   ; 
- D 0 - I - 0x015A38 05:9A28: 02        .byte $02   ; 
- D 0 - I - 0x015A39 05:9A29: 02        .byte $02   ; 
- D 0 - I - 0x015A3A 05:9A2A: 02        .byte $02   ; 
- D 0 - I - 0x015A3B 05:9A2B: 33        .byte $33   ; 
- D 0 - I - 0x015A3C 05:9A2C: 33        .byte $33   ; 
- D 0 - I - 0x015A3D 05:9A2D: 33        .byte $33   ; 
- D 0 - I - 0x015A3E 05:9A2E: 33        .byte $33   ; 
- D 0 - I - 0x015A3F 05:9A2F: 10        .byte $10   ; 
- D 0 - I - 0x015A40 05:9A30: 32        .byte $32   ; 
- D 0 - I - 0x015A41 05:9A31: 32        .byte $32   ; 
- D 0 - I - 0x015A42 05:9A32: 32        .byte $32   ; 
- D 0 - I - 0x015A43 05:9A33: E8        .byte $E8   ; 
- D 0 - I - 0x015A44 05:9A34: 07        .byte $07   ; 
- D 0 - I - 0x015A45 05:9A35: 07        .byte $07   ; 
- D 0 - I - 0x015A46 05:9A36: A8        .byte $A8   ; 
- D 0 - I - 0x015A47 05:9A37: F0        .byte $F0   ; 
- D 0 - I - 0x015A48 05:9A38: F1        .byte $F1   ; 
- D 0 - I - 0x015A49 05:9A39: A9        .byte $A9   ; 
- D 0 - I - 0x015A4A 05:9A3A: 02        .byte $02   ; 
- D 0 - I - 0x015A4B 05:9A3B: 33        .byte $33   ; 
- D 0 - I - 0x015A4C 05:9A3C: 02        .byte $02   ; 
- D 0 - I - 0x015A4D 05:9A3D: 33        .byte $33   ; 
- D 0 - I - 0x015A4E 05:9A3E: 02        .byte $02   ; 
- D 0 - I - 0x015A4F 05:9A3F: D3        .byte $D3   ; 
- D 0 - I - 0x015A50 05:9A40: 07        .byte $07   ; 
- D 0 - I - 0x015A51 05:9A41: A8        .byte $A8   ; 
- D 0 - I - 0x015A52 05:9A42: A9        .byte $A9   ; 
- D 0 - I - 0x015A53 05:9A43: 02        .byte $02   ; 
- D 0 - I - 0x015A54 05:9A44: 33        .byte $33   ; 
- D 0 - I - 0x015A55 05:9A45: 02        .byte $02   ; 
- D 0 - I - 0x015A56 05:9A46: A8        .byte $A8   ; 
- D 0 - I - 0x015A57 05:9A47: F0        .byte $F0   ; 
- D 0 - I - 0x015A58 05:9A48: F1        .byte $F1   ; 
- D 0 - I - 0x015A59 05:9A49: A9        .byte $A9   ; 
- D 0 - I - 0x015A5A 05:9A4A: 31        .byte $31   ; 
- D 0 - I - 0x015A5B 05:9A4B: 18        .byte $18   ; 
- D 0 - I - 0x015A5C 05:9A4C: 26        .byte $26   ; 
- D 0 - I - 0x015A5D 05:9A4D: 18        .byte $18   ; 
- D 0 - I - 0x015A5E 05:9A4E: 27        .byte $27   ; 
- D 0 - I - 0x015A5F 05:9A4F: 18        .byte $18   ; 
- D 0 - I - 0x015A60 05:9A50: 18        .byte $18   ; 
- D 0 - I - 0x015A61 05:9A51: 26        .byte $26   ; 
- D 0 - I - 0x015A62 05:9A52: 18        .byte $18   ; 
- D 0 - I - 0x015A63 05:9A53: 27        .byte $27   ; 
- D 0 - I - 0x015A64 05:9A54: 18        .byte $18   ; 
- D 0 - I - 0x015A65 05:9A55: 26        .byte $26   ; 
- D 0 - I - 0x015A66 05:9A56: 18        .byte $18   ; 
- D 0 - I - 0x015A67 05:9A57: 16        .byte $16   ; 
- D 0 - I - 0x015A68 05:9A58: 16        .byte $16   ; 
- D 0 - I - 0x015A69 05:9A59: 28        .byte $28   ; 
- D 0 - I - 0x015A6A 05:9A5A: 25        .byte $25   ; 
- D 0 - I - 0x015A6B 05:9A5B: 17        .byte $17   ; 
- D 0 - I - 0x015A6C 05:9A5C: 17        .byte $17   ; 
- D 0 - I - 0x015A6D 05:9A5D: 26        .byte $26   ; 
- D 0 - I - 0x015A6E 05:9A5E: 17        .byte $17   ; 
- D 0 - I - 0x015A6F 05:9A5F: 23        .byte $23   ; 
- D 0 - I - 0x015A70 05:9A60: 23        .byte $23   ; 
- D 0 - I - 0x015A71 05:9A61: 40        .byte $40   ; 
- D 0 - I - 0x015A72 05:9A62: 48        .byte $48   ; 
- D 0 - I - 0x015A73 05:9A63: 48        .byte $48   ; 
- D 0 - I - 0x015A74 05:9A64: 48        .byte $48   ; 
- D 0 - I - 0x015A75 05:9A65: 48        .byte $48   ; 
- D 0 - I - 0x015A76 05:9A66: 48        .byte $48   ; 
- D 0 - I - 0x015A77 05:9A67: 48        .byte $48   ; 
- D 0 - I - 0x015A78 05:9A68: 48        .byte $48   ; 
- D 0 - I - 0x015A79 05:9A69: 48        .byte $48   ; 
- D 0 - I - 0x015A7A 05:9A6A: 48        .byte $48   ; 
- D 0 - I - 0x015A7B 05:9A6B: 48        .byte $48   ; 
- D 0 - I - 0x015A7C 05:9A6C: 48        .byte $48   ; 
- D 0 - I - 0x015A7D 05:9A6D: 48        .byte $48   ; 
- D 0 - I - 0x015A7E 05:9A6E: 41        .byte $41   ; 
- D 0 - I - 0x015A7F 05:9A6F: 23        .byte $23   ; 
- D 0 - I - 0x015A80 05:9A70: 23        .byte $23   ; 
- D 0 - I - 0x015A81 05:9A71: 23        .byte $23   ; 
- D 0 - I - 0x015A82 05:9A72: 23        .byte $23   ; 
- D 0 - I - 0x015A83 05:9A73: 17        .byte $17   ; 
- D 0 - I - 0x015A84 05:9A74: 31        .byte $31   ; 
- D 0 - I - 0x015A85 05:9A75: 17        .byte $17   ; 
- D 0 - I - 0x015A86 05:9A76: 23        .byte $23   ; 
- D 0 - I - 0x015A87 05:9A77: 17        .byte $17   ; 
- D 0 - I - 0x015A88 05:9A78: 17        .byte $17   ; 
- D 0 - I - 0x015A89 05:9A79: 23        .byte $23   ; 
- D 0 - I - 0x015A8A 05:9A7A: 25        .byte $25   ; 
- D 0 - I - 0x015A8B 05:9A7B: 23        .byte $23   ; 
- D 0 - I - 0x015A8C 05:9A7C: 23        .byte $23   ; 
- D 0 - I - 0x015A8D 05:9A7D: 23        .byte $23   ; 
- D 0 - I - 0x015A8E 05:9A7E: 25        .byte $25   ; 
- D 0 - I - 0x015A8F 05:9A7F: 23        .byte $23   ; 
- D 0 - I - 0x015A90 05:9A80: 31        .byte $31   ; 
- D 0 - I - 0x015A91 05:9A81: 23        .byte $23   ; 
- D 0 - I - 0x015A92 05:9A82: 26        .byte $26   ; 
- D 0 - I - 0x015A93 05:9A83: 76        .byte $76   ; 
- D 0 - I - 0x015A94 05:9A84: 18        .byte $18   ; 
- D 0 - I - 0x015A95 05:9A85: 76        .byte $76   ; 
- D 0 - I - 0x015A96 05:9A86: 28        .byte $28   ; 
- D 0 - I - 0x015A97 05:9A87: 16        .byte $16   ; 
- D 0 - I - 0x015A98 05:9A88: 16        .byte $16   ; 
- D 0 - I - 0x015A99 05:9A89: 16        .byte $16   ; 
- D 0 - I - 0x015A9A 05:9A8A: 16        .byte $16   ; 
- D 0 - I - 0x015A9B 05:9A8B: 16        .byte $16   ; 
- D 0 - I - 0x015A9C 05:9A8C: 19        .byte $19   ; 
- D 0 - I - 0x015A9D 05:9A8D: 14        .byte $14   ; 
- D 0 - I - 0x015A9E 05:9A8E: 28        .byte $28   ; 
- D 0 - I - 0x015A9F 05:9A8F: 17        .byte $17   ; 
- D 0 - I - 0x015AA0 05:9A90: 17        .byte $17   ; 
- D 0 - I - 0x015AA1 05:9A91: 17        .byte $17   ; 
- D 0 - I - 0x015AA2 05:9A92: 17        .byte $17   ; 
- D 0 - I - 0x015AA3 05:9A93: 17        .byte $17   ; 
- D 0 - I - 0x015AA4 05:9A94: 23        .byte $23   ; 
- D 0 - I - 0x015AA5 05:9A95: 30        .byte $30   ; 
- D 0 - I - 0x015AA6 05:9A96: 30        .byte $30   ; 
- D 0 - I - 0x015AA7 05:9A97: 30        .byte $30   ; 
- D 0 - I - 0x015AA8 05:9A98: 30        .byte $30   ; 
- D 0 - I - 0x015AA9 05:9A99: 30        .byte $30   ; 
- D 0 - I - 0x015AAA 05:9A9A: 17        .byte $17   ; 
- D 0 - I - 0x015AAB 05:9A9B: 23        .byte $23   ; 
- D 0 - I - 0x015AAC 05:9A9C: 29        .byte $29   ; 
- D 0 - I - 0x015AAD 05:9A9D: 29        .byte $29   ; 
- D 0 - I - 0x015AAE 05:9A9E: 29        .byte $29   ; 
- D 0 - I - 0x015AAF 05:9A9F: 29        .byte $29   ; 
- D 0 - I - 0x015AB0 05:9AA0: 29        .byte $29   ; 
- D 0 - I - 0x015AB1 05:9AA1: 29        .byte $29   ; 
- D 0 - I - 0x015AB2 05:9AA2: 14        .byte $14   ; 
- D 0 - I - 0x015AB3 05:9AA3: 29        .byte $29   ; 
- D 0 - I - 0x015AB4 05:9AA4: 19        .byte $19   ; 
- D 0 - I - 0x015AB5 05:9AA5: 16        .byte $16   ; 
- D 0 - I - 0x015AB6 05:9AA6: 16        .byte $16   ; 
- D 0 - I - 0x015AB7 05:9AA7: 16        .byte $16   ; 
- D 0 - I - 0x015AB8 05:9AA8: 16        .byte $16   ; 
- D 0 - I - 0x015AB9 05:9AA9: 28        .byte $28   ; 
- D 0 - I - 0x015ABA 05:9AAA: 17        .byte $17   ; 
- D 0 - I - 0x015ABB 05:9AAB: 26        .byte $26   ; 
- D 0 - I - 0x015ABC 05:9AAC: 26        .byte $26   ; 
- D 0 - I - 0x015ABD 05:9AAD: 26        .byte $26   ; 
- D 0 - I - 0x015ABE 05:9AAE: 17        .byte $17   ; 
- D 0 - I - 0x015ABF 05:9AAF: 27        .byte $27   ; 
- D 0 - I - 0x015AC0 05:9AB0: 27        .byte $27   ; 
- D 0 - I - 0x015AC1 05:9AB1: 17        .byte $17   ; 
- D 0 - I - 0x015AC2 05:9AB2: 25        .byte $25   ; 
- D 0 - I - 0x015AC3 05:9AB3: 25        .byte $25   ; 
- D 0 - I - 0x015AC4 05:9AB4: 25        .byte $25   ; 
- D 0 - I - 0x015AC5 05:9AB5: 25        .byte $25   ; 
- D 0 - I - 0x015AC6 05:9AB6: 17        .byte $17   ; 
- D 0 - I - 0x015AC7 05:9AB7: 17        .byte $17   ; 
- D 0 - I - 0x015AC8 05:9AB8: A3        .byte $A3   ; 
- D 0 - I - 0x015AC9 05:9AB9: 02        .byte $02   ; 
- D 0 - I - 0x015ACA 05:9ABA: 02        .byte $02   ; 
- D 0 - I - 0x015ACB 05:9ABB: 10        .byte $10   ; 
- D 0 - I - 0x015ACC 05:9ABC: A2        .byte $A2   ; 
- D 0 - I - 0x015ACD 05:9ABD: 18        .byte $18   ; 
- D 0 - I - 0x015ACE 05:9ABE: 18        .byte $18   ; 
- D 0 - I - 0x015ACF 05:9ABF: 18        .byte $18   ; 
- D 0 - I - 0x015AD0 05:9AC0: 18        .byte $18   ; 
- D 0 - I - 0x015AD1 05:9AC1: 45        .byte $45   ; 
- D 0 - I - 0x015AD2 05:9AC2: 13        .byte $13   ; 
- D 0 - I - 0x015AD3 05:9AC3: 13        .byte $13   ; 
- D 0 - I - 0x015AD4 05:9AC4: 13        .byte $13   ; 
- D 0 - I - 0x015AD5 05:9AC5: 13        .byte $13   ; 
- D 0 - I - 0x015AD6 05:9AC6: 13        .byte $13   ; 
- D 0 - I - 0x015AD7 05:9AC7: 13        .byte $13   ; 
- - - - - - 0x015AD8 05:9AC8: 00        .byte $00   ; 
- - - - - - 0x015AD9 05:9AC9: A7        .byte $A7   ; 
- - - - - - 0x015ADA 05:9ACA: F1        .byte $F1   ; 
- - - - - - 0x015ADB 05:9ACB: A9        .byte $A9   ; 
- - - - - - 0x015ADC 05:9ACC: 02        .byte $02   ; 
- - - - - - 0x015ADD 05:9ACD: 64        .byte $64   ; 
- - - - - - 0x015ADE 05:9ACE: F2        .byte $F2   ; 
- - - - - - 0x015ADF 05:9ACF: F3        .byte $F3   ; 
- - - - - - 0x015AE0 05:9AD0: 64        .byte $64   ; 
- - - - - - 0x015AE1 05:9AD1: F2        .byte $F2   ; 
- - - - - - 0x015AE2 05:9AD2: F3        .byte $F3   ; 
- - - - - - 0x015AE3 05:9AD3: 10        .byte $10   ; 
- - - - - - 0x015AE4 05:9AD4: 02        .byte $02   ; 
- - - - - - 0x015AE5 05:9AD5: 02        .byte $02   ; 
- - - - - - 0x015AE6 05:9AD6: 02        .byte $02   ; 
- - - - - - 0x015AE7 05:9AD7: 02        .byte $02   ; 
- - - - - - 0x015AE8 05:9AD8: 02        .byte $02   ; 
- - - - - - 0x015AE9 05:9AD9: 02        .byte $02   ; 
- - - - - - 0x015AEA 05:9ADA: 02        .byte $02   ; 
- - - - - - 0x015AEB 05:9ADB: A5        .byte $A5   ; 
- - - - - - 0x015AEC 05:9ADC: A4        .byte $A4   ; 
- - - - - - 0x015AED 05:9ADD: D2        .byte $D2   ; 
- - - - - - 0x015AEE 05:9ADE: 02        .byte $02   ; 
- - - - - - 0x015AEF 05:9ADF: 02        .byte $02   ; 
- - - - - - 0x015AF0 05:9AE0: 02        .byte $02   ; 
- - - - - - 0x015AF1 05:9AE1: A5        .byte $A5   ; 
- - - - - - 0x015AF2 05:9AE2: 08        .byte $08   ; 
- - - - - - 0x015AF3 05:9AE3: 08        .byte $08   ; 
- - - - - - 0x015AF4 05:9AE4: A4        .byte $A4   ; 
- - - - - - 0x015AF5 05:9AE5: A8        .byte $A8   ; 
- - - - - - 0x015AF6 05:9AE6: F0        .byte $F0   ; 
- - - - - - 0x015AF7 05:9AE7: F1        .byte $F1   ; 
- - - - - - 0x015AF8 05:9AE8: 16        .byte $16   ; 
- - - - - - 0x015AF9 05:9AE9: 16        .byte $16   ; 
- - - - - - 0x015AFA 05:9AEA: F4        .byte $F4   ; 
- - - - - - 0x015AFB 05:9AEB: F4        .byte $F4   ; 
- - - - - - 0x015AFC 05:9AEC: F4        .byte $F4   ; 
- - - - - - 0x015AFD 05:9AED: F4        .byte $F4   ; 
- - - - - - 0x015AFE 05:9AEE: 74        .byte $74   ; 
- - - - - - 0x015AFF 05:9AEF: 74        .byte $74   ; 
- - - - - - 0x015B00 05:9AF0: 30        .byte $30   ; 
- - - - - - 0x015B01 05:9AF1: 30        .byte $30   ; 
- - - - - - 0x015B02 05:9AF2: 30        .byte $30   ; 
- - - - - - 0x015B03 05:9AF3: 30        .byte $30   ; 
- - - - - - 0x015B04 05:9AF4: 30        .byte $30   ; 
- - - - - - 0x015B05 05:9AF5: 30        .byte $30   ; 
- - - - - - 0x015B06 05:9AF6: 30        .byte $30   ; 
- - - - - - 0x015B07 05:9AF7: 30        .byte $30   ; 
- D 0 - I - 0x015B08 05:9AF8: 30        .byte $30   ; 
- D 0 - I - 0x015B09 05:9AF9: 30        .byte $30   ; 
- D 0 - I - 0x015B0A 05:9AFA: 30        .byte $30   ; 
- D 0 - I - 0x015B0B 05:9AFB: 30        .byte $30   ; 
- D 0 - I - 0x015B0C 05:9AFC: 30        .byte $30   ; 
- D 0 - I - 0x015B0D 05:9AFD: 30        .byte $30   ; 
- D 0 - I - 0x015B0E 05:9AFE: 30        .byte $30   ; 
- D 0 - I - 0x015B0F 05:9AFF: 23        .byte $23   ; 
- D 0 - I - 0x015B10 05:9B00: 23        .byte $23   ; 
- D 0 - I - 0x015B11 05:9B01: 23        .byte $23   ; 
- D 0 - I - 0x015B12 05:9B02: 27        .byte $27   ; 
- D 0 - I - 0x015B13 05:9B03: 23        .byte $23   ; 
- D 0 - I - 0x015B14 05:9B04: 17        .byte $17   ; 
- D 0 - I - 0x015B15 05:9B05: 23        .byte $23   ; 
- D 0 - I - 0x015B16 05:9B06: 28        .byte $28   ; 
- D 0 - I - 0x015B17 05:9B07: 16        .byte $16   ; 
- D 0 - I - 0x015B18 05:9B08: F1        .byte $F1   ; 
- D 0 - I - 0x015B19 05:9B09: A9        .byte $A9   ; 
- D 0 - I - 0x015B1A 05:9B0A: 02        .byte $02   ; 
- D 0 - I - 0x015B1B 05:9B0B: 02        .byte $02   ; 
- D 0 - I - 0x015B1C 05:9B0C: B7        .byte $B7   ; 
- D 0 - I - 0x015B1D 05:9B0D: 02        .byte $02   ; 
- D 0 - I - 0x015B1E 05:9B0E: B7        .byte $B7   ; 
- D 0 - I - 0x015B1F 05:9B0F: 67        .byte $67   ; 
- D 0 - I - 0x015B20 05:9B10: F5        .byte $F5   ; 
- D 0 - I - 0x015B21 05:9B11: 70        .byte $70   ; 
- D 0 - I - 0x015B22 05:9B12: B7        .byte $B7   ; 
- D 0 - I - 0x015B23 05:9B13: 02        .byte $02   ; 
- D 0 - I - 0x015B24 05:9B14: B7        .byte $B7   ; 
- D 0 - I - 0x015B25 05:9B15: 02        .byte $02   ; 
- D 0 - I - 0x015B26 05:9B16: A8        .byte $A8   ; 
- D 0 - I - 0x015B27 05:9B17: 00        .byte $00   ; 
- D 0 - I - 0x015B28 05:9B18: 00        .byte $00   ; 
- D 0 - I - 0x015B29 05:9B19: A9        .byte $A9   ; 
- D 0 - I - 0x015B2A 05:9B1A: 10        .byte $10   ; 
- D 0 - I - 0x015B2B 05:9B1B: C0        .byte $C0   ; 
- D 0 - I - 0x015B2C 05:9B1C: E3        .byte $E3   ; 
- D 0 - I - 0x015B2D 05:9B1D: 13        .byte $13   ; 
- D 0 - I - 0x015B2E 05:9B1E: 13        .byte $13   ; 
- D 0 - I - 0x015B2F 05:9B1F: A3        .byte $A3   ; 
- D 0 - I - 0x015B30 05:9B20: 33        .byte $33   ; 
- D 0 - I - 0x015B31 05:9B21: 02        .byte $02   ; 
- D 0 - I - 0x015B32 05:9B22: 32        .byte $32   ; 
- D 0 - I - 0x015B33 05:9B23: 02        .byte $02   ; 
- D 0 - I - 0x015B34 05:9B24: 33        .byte $33   ; 
- D 0 - I - 0x015B35 05:9B25: 02        .byte $02   ; 
- D 0 - I - 0x015B36 05:9B26: 02        .byte $02   ; 
- D 0 - I - 0x015B37 05:9B27: 02        .byte $02   ; 
- D 0 - I - 0x015B38 05:9B28: 02        .byte $02   ; 
- D 0 - I - 0x015B39 05:9B29: 02        .byte $02   ; 
- D 0 - I - 0x015B3A 05:9B2A: 34        .byte $34   ; 
- D 0 - I - 0x015B3B 05:9B2B: 02        .byte $02   ; 
- D 0 - I - 0x015B3C 05:9B2C: 02        .byte $02   ; 
- D 0 - I - 0x015B3D 05:9B2D: 34        .byte $34   ; 
- D 0 - I - 0x015B3E 05:9B2E: D2        .byte $D2   ; 
- D 0 - I - 0x015B3F 05:9B2F: 02        .byte $02   ; 
- D 0 - I - 0x015B40 05:9B30: 33        .byte $33   ; 
- D 0 - I - 0x015B41 05:9B31: 02        .byte $02   ; 
- D 0 - I - 0x015B42 05:9B32: 32        .byte $32   ; 
- D 0 - I - 0x015B43 05:9B33: A5        .byte $A5   ; 
- D 0 - I - 0x015B44 05:9B34: 08        .byte $08   ; 
- D 0 - I - 0x015B45 05:9B35: 08        .byte $08   ; 
- D 0 - I - 0x015B46 05:9B36: F0        .byte $F0   ; 
- D 0 - I - 0x015B47 05:9B37: A6        .byte $A6   ; 
- D 0 - I - 0x015B48 05:9B38: 01        .byte $01   ; 
- D 0 - I - 0x015B49 05:9B39: A7        .byte $A7   ; 
- D 0 - I - 0x015B4A 05:9B3A: 84        .byte $84   ; 
- D 0 - I - 0x015B4B 05:9B3B: 90        .byte $90   ; 
- D 0 - I - 0x015B4C 05:9B3C: 10        .byte $10   ; 
- D 0 - I - 0x015B4D 05:9B3D: 02        .byte $02   ; 
- D 0 - I - 0x015B4E 05:9B3E: A5        .byte $A5   ; 
- D 0 - I - 0x015B4F 05:9B3F: 08        .byte $08   ; 
- D 0 - I - 0x015B50 05:9B40: 08        .byte $08   ; 
- D 0 - I - 0x015B51 05:9B41: A0        .byte $A0   ; 
- D 0 - I - 0x015B52 05:9B42: 06        .byte $06   ; 
- D 0 - I - 0x015B53 05:9B43: 06        .byte $06   ; 
- D 0 - I - 0x015B54 05:9B44: 06        .byte $06   ; 
- D 0 - I - 0x015B55 05:9B45: 06        .byte $06   ; 
- D 0 - I - 0x015B56 05:9B46: 01        .byte $01   ; 
- D 0 - I - 0x015B57 05:9B47: 01        .byte $01   ; 
- D 0 - I - 0x015B58 05:9B48: A7        .byte $A7   ; 
- D 0 - I - 0x015B59 05:9B49: F1        .byte $F1   ; 
- D 0 - I - 0x015B5A 05:9B4A: 25        .byte $25   ; 
- D 0 - I - 0x015B5B 05:9B4B: 23        .byte $23   ; 
- D 0 - I - 0x015B5C 05:9B4C: 31        .byte $31   ; 
- D 0 - I - 0x015B5D 05:9B4D: 23        .byte $23   ; 
- D 0 - I - 0x015B5E 05:9B4E: 26        .byte $26   ; 
- D 0 - I - 0x015B5F 05:9B4F: 23        .byte $23   ; 
- D 0 - I - 0x015B60 05:9B50: 23        .byte $23   ; 
- D 0 - I - 0x015B61 05:9B51: 26        .byte $26   ; 
- D 0 - I - 0x015B62 05:9B52: 23        .byte $23   ; 
- D 0 - I - 0x015B63 05:9B53: 26        .byte $26   ; 
- D 0 - I - 0x015B64 05:9B54: 23        .byte $23   ; 
- D 0 - I - 0x015B65 05:9B55: 26        .byte $26   ; 
- D 0 - I - 0x015B66 05:9B56: 23        .byte $23   ; 
- D 0 - I - 0x015B67 05:9B57: 17        .byte $17   ; 
- D 0 - I - 0x015B68 05:9B58: A3        .byte $A3   ; 
- D 0 - I - 0x015B69 05:9B59: C8        .byte $C8   ; 
- D 0 - I - 0x015B6A 05:9B5A: C7        .byte $C7   ; 
- D 0 - I - 0x015B6B 05:9B5B: A0        .byte $A0   ; 
- D 0 - I - 0x015B6C 05:9B5C: E7        .byte $E7   ; 
- D 0 - I - 0x015B6D 05:9B5D: E6        .byte $E6   ; 
- D 0 - I - 0x015B6E 05:9B5E: A2        .byte $A2   ; 
- D 0 - I - 0x015B6F 05:9B5F: A3        .byte $A3   ; 
- D 0 - I - 0x015B70 05:9B60: 71        .byte $71   ; 
- D 0 - I - 0x015B71 05:9B61: 32        .byte $32   ; 
- D 0 - I - 0x015B72 05:9B62: 34        .byte $34   ; 
- D 0 - I - 0x015B73 05:9B63: 02        .byte $02   ; 
- D 0 - I - 0x015B74 05:9B64: A8        .byte $A8   ; 
- D 0 - I - 0x015B75 05:9B65: A6        .byte $A6   ; 
- D 0 - I - 0x015B76 05:9B66: 01        .byte $01   ; 
- D 0 - I - 0x015B77 05:9B67: 01        .byte $01   ; 
- D 0 - I - 0x015B78 05:9B68: 01        .byte $01   ; 
- D 0 - I - 0x015B79 05:9B69: A7        .byte $A7   ; 
- D 0 - I - 0x015B7A 05:9B6A: A6        .byte $A6   ; 
- D 0 - I - 0x015B7B 05:9B6B: 01        .byte $01   ; 
- D 0 - I - 0x015B7C 05:9B6C: A7        .byte $A7   ; 
- D 0 - I - 0x015B7D 05:9B6D: F1        .byte $F1   ; 
- D 0 - I - 0x015B7E 05:9B6E: A9        .byte $A9   ; 
- D 0 - I - 0x015B7F 05:9B6F: 39        .byte $39   ; 
- D 0 - I - 0x015B80 05:9B70: 47        .byte $47   ; 
- D 0 - I - 0x015B81 05:9B71: 85        .byte $85   ; 
- D 0 - I - 0x015B82 05:9B72: 47        .byte $47   ; 
- D 0 - I - 0x015B83 05:9B73: 58        .byte $58   ; 
- D 0 - I - 0x015B84 05:9B74: 58        .byte $58   ; 
- D 0 - I - 0x015B85 05:9B75: 58        .byte $58   ; 
- D 0 - I - 0x015B86 05:9B76: 47        .byte $47   ; 
- D 0 - I - 0x015B87 05:9B77: 47        .byte $47   ; 
- - - - - - 0x015B88 05:9B78: 47        .byte $47   ; 
- - - - - - 0x015B89 05:9B79: 47        .byte $47   ; 
- - - - - - 0x015B8A 05:9B7A: 47        .byte $47   ; 
- - - - - - 0x015B8B 05:9B7B: 47        .byte $47   ; 
- - - - - - 0x015B8C 05:9B7C: 47        .byte $47   ; 
- - - - - - 0x015B8D 05:9B7D: 47        .byte $47   ; 
- - - - - - 0x015B8E 05:9B7E: 85        .byte $85   ; 
- - - - - - 0x015B8F 05:9B7F: 47        .byte $47   ; 
- - - - - - 0x015B90 05:9B80: 47        .byte $47   ; 
- - - - - - 0x015B91 05:9B81: 47        .byte $47   ; 
- - - - - - 0x015B92 05:9B82: 47        .byte $47   ; 
- - - - - - 0x015B93 05:9B83: 47        .byte $47   ; 
- - - - - - 0x015B94 05:9B84: 47        .byte $47   ; 
- - - - - - 0x015B95 05:9B85: 47        .byte $47   ; 
- - - - - - 0x015B96 05:9B86: 47        .byte $47   ; 
- - - - - - 0x015B97 05:9B87: 47        .byte $47   ; 
- - - - - - 0x015B98 05:9B88: 47        .byte $47   ; 
- - - - - - 0x015B99 05:9B89: 47        .byte $47   ; 
- - - - - - 0x015B9A 05:9B8A: 91        .byte $91   ; 
- - - - - - 0x015B9B 05:9B8B: 51        .byte $51   ; 
- - - - - - 0x015B9C 05:9B8C: 97        .byte $97   ; 
- - - - - - 0x015B9D 05:9B8D: 91        .byte $91   ; 
- - - - - - 0x015B9E 05:9B8E: 51        .byte $51   ; 
- - - - - - 0x015B9F 05:9B8F: 51        .byte $51   ; 
- - - - - - 0x015BA0 05:9B90: 51        .byte $51   ; 
- - - - - - 0x015BA1 05:9B91: 97        .byte $97   ; 
- - - - - - 0x015BA2 05:9B92: 91        .byte $91   ; 
- - - - - - 0x015BA3 05:9B93: 51        .byte $51   ; 
- - - - - - 0x015BA4 05:9B94: 97        .byte $97   ; 
- - - - - - 0x015BA5 05:9B95: 91        .byte $91   ; 
- - - - - - 0x015BA6 05:9B96: 97        .byte $97   ; 
- - - - - - 0x015BA7 05:9B97: 91        .byte $91   ; 
- - - - - - 0x015BA8 05:9B98: 97        .byte $97   ; 
- - - - - - 0x015BA9 05:9B99: 91        .byte $91   ; 
- - - - - - 0x015BAA 05:9B9A: 51        .byte $51   ; 
- - - - - - 0x015BAB 05:9B9B: 51        .byte $51   ; 
- - - - - - 0x015BAC 05:9B9C: 97        .byte $97   ; 
- - - - - - 0x015BAD 05:9B9D: 58        .byte $58   ; 
- - - - - - 0x015BAE 05:9B9E: 58        .byte $58   ; 
- - - - - - 0x015BAF 05:9B9F: 58        .byte $58   ; 
- - - - - - 0x015BB0 05:9BA0: F6        .byte $F6   ; 
- - - - - - 0x015BB1 05:9BA1: E0        .byte $E0   ; 
- - - - - - 0x015BB2 05:9BA2: 13        .byte $13   ; 
- - - - - - 0x015BB3 05:9BA3: 13        .byte $13   ; 
- - - - - - 0x015BB4 05:9BA4: 13        .byte $13   ; 
- - - - - - 0x015BB5 05:9BA5: 13        .byte $13   ; 
- - - - - - 0x015BB6 05:9BA6: 13        .byte $13   ; 
- - - - - - 0x015BB7 05:9BA7: 13        .byte $13   ; 



off_9BA8_00:
- D 0 - I - 0x015BB8 05:9BA8: 00        .byte $00   ; 
- D 0 - I - 0x015BB9 05:9BA9: 00        .byte $00   ; 
- D 0 - I - 0x015BBA 05:9BAA: 95        .byte $95   ; 
- D 0 - I - 0x015BBB 05:9BAB: 95        .byte $95   ; 
- D 0 - I - 0x015BBC 05:9BAC: 95        .byte $95   ; 
- D 0 - I - 0x015BBD 05:9BAD: 95        .byte $95   ; 
- D 0 - I - 0x015BBE 05:9BAE: 95        .byte $95   ; 
- D 0 - I - 0x015BBF 05:9BAF: C2        .byte $C2   ; 
- D 0 - I - 0x015BC0 05:9BB0: C2        .byte $C2   ; 
- D 0 - I - 0x015BC1 05:9BB1: 95        .byte $95   ; 
- D 0 - I - 0x015BC2 05:9BB2: 95        .byte $95   ; 
- D 0 - I - 0x015BC3 05:9BB3: 95        .byte $95   ; 
- D 0 - I - 0x015BC4 05:9BB4: 95        .byte $95   ; 
- D 0 - I - 0x015BC5 05:9BB5: 95        .byte $95   ; 
- D 0 - I - 0x015BC6 05:9BB6: 00        .byte $00   ; 
- D 0 - I - 0x015BC7 05:9BB7: 00        .byte $00   ; 



off_9BB8_01:
- D 0 - I - 0x015BC8 05:9BB8: 00        .byte $00   ; 
- D 0 - I - 0x015BC9 05:9BB9: 00        .byte $00   ; 
- D 0 - I - 0x015BCA 05:9BBA: 95        .byte $95   ; 
- D 0 - I - 0x015BCB 05:9BBB: 95        .byte $95   ; 
- D 0 - I - 0x015BCC 05:9BBC: 95        .byte $95   ; 
- D 0 - I - 0x015BCD 05:9BBD: F8        .byte $F8   ; 
- D 0 - I - 0x015BCE 05:9BBE: 95        .byte $95   ; 
- D 0 - I - 0x015BCF 05:9BBF: C2        .byte $C2   ; 
- D 0 - I - 0x015BD0 05:9BC0: F8        .byte $F8   ; 
- D 0 - I - 0x015BD1 05:9BC1: 95        .byte $95   ; 
- D 0 - I - 0x015BD2 05:9BC2: 95        .byte $95   ; 
- D 0 - I - 0x015BD3 05:9BC3: F8        .byte $F8   ; 
- D 0 - I - 0x015BD4 05:9BC4: 95        .byte $95   ; 
- D 0 - I - 0x015BD5 05:9BC5: 95        .byte $95   ; 
- D 0 - I - 0x015BD6 05:9BC6: 00        .byte $00   ; 
- D 0 - I - 0x015BD7 05:9BC7: 00        .byte $00   ; 
- D 0 - I - 0x015BD8 05:9BC8: 00        .byte $00   ; 
- D 0 - I - 0x015BD9 05:9BC9: A9        .byte $A9   ; 
- D 0 - I - 0x015BDA 05:9BCA: 64        .byte $64   ; 
- D 0 - I - 0x015BDB 05:9BCB: 66        .byte $66   ; 
- D 0 - I - 0x015BDC 05:9BCC: 02        .byte $02   ; 
- D 0 - I - 0x015BDD 05:9BCD: 53        .byte $53   ; 
- D 0 - I - 0x015BDE 05:9BCE: 54        .byte $54   ; 
- D 0 - I - 0x015BDF 05:9BCF: D1        .byte $D1   ; 
- D 0 - I - 0x015BE0 05:9BD0: 54        .byte $54   ; 
- D 0 - I - 0x015BE1 05:9BD1: 54        .byte $54   ; 
- D 0 - I - 0x015BE2 05:9BD2: 56        .byte $56   ; 
- D 0 - I - 0x015BE3 05:9BD3: 02        .byte $02   ; 
- D 0 - I - 0x015BE4 05:9BD4: 64        .byte $64   ; 
- D 0 - I - 0x015BE5 05:9BD5: 66        .byte $66   ; 
- D 0 - I - 0x015BE6 05:9BD6: A8        .byte $A8   ; 
- D 0 - I - 0x015BE7 05:9BD7: 00        .byte $00   ; 



off_9BD8:
_off006_0x015BE8_00:
- D 0 - I - 0x015BE8 05:9BD8: DB        .byte $DB   ; 
- D 0 - I - 0x015BE9 05:9BD9: 5B        .byte $5B   ; 
- D 0 - I - 0x015BEA 05:9BDA: 5B        .byte $5B   ; 
- D 0 - I - 0x015BEB 05:9BDB: DB        .byte $DB   ; 
- D 0 - I - 0x015BEC 05:9BDC: 5B        .byte $5B   ; 
- D 0 - I - 0x015BED 05:9BDD: 1B        .byte $1B   ; 
- D 0 - I - 0x015BEE 05:9BDE: 0E        .byte $0E   ; 
- D 0 - I - 0x015BEF 05:9BDF: 1A        .byte $1A   ; 
- D 0 - I - 0x015BF0 05:9BE0: 5B        .byte $5B   ; 
- D 0 - I - 0x015BF1 05:9BE1: DB        .byte $DB   ; 
- D 0 - I - 0x015BF2 05:9BE2: 4E        .byte $4E   ; 
- D 0 - I - 0x015BF3 05:9BE3: 4E        .byte $4E   ; 
- D 0 - I - 0x015BF4 05:9BE4: 4E        .byte $4E   ; 
- D 0 - I - 0x015BF5 05:9BE5: 0E        .byte $0E   ; 
- D 0 - I - 0x015BF6 05:9BE6: 1A        .byte $1A   ; 
- D 0 - I - 0x015BF7 05:9BE7: 1B        .byte $1B   ; 
- D 0 - I - 0x015BF8 05:9BE8: DB        .byte $DB   ; 
- D 0 - I - 0x015BF9 05:9BE9: 4E        .byte $4E   ; 
- D 0 - I - 0x015BFA 05:9BEA: 32        .byte $32   ; 
- D 0 - I - 0x015BFB 05:9BEB: 1B        .byte $1B   ; 
- D 0 - I - 0x015BFC 05:9BEC: 34        .byte $34   ; 
- D 0 - I - 0x015BFD 05:9BED: 4E        .byte $4E   ; 
- D 0 - I - 0x015BFE 05:9BEE: 1A        .byte $1A   ; 
- D 0 - I - 0x015BFF 05:9BEF: 1B        .byte $1B   ; 
- D 0 - I - 0x015C00 05:9BF0: DB        .byte $DB   ; 
- D 0 - I - 0x015C01 05:9BF1: 5B        .byte $5B   ; 
- D 0 - I - 0x015C02 05:9BF2: 1B        .byte $1B   ; 
- D 0 - I - 0x015C03 05:9BF3: 4E        .byte $4E   ; 
- D 0 - I - 0x015C04 05:9BF4: 4E        .byte $4E   ; 
- D 0 - I - 0x015C05 05:9BF5: 4E        .byte $4E   ; 
- D 0 - I - 0x015C06 05:9BF6: DB        .byte $DB   ; 
- D 0 - I - 0x015C07 05:9BF7: 0E        .byte $0E   ; 
- D 0 - I - 0x015C08 05:9BF8: 32        .byte $32   ; 
- D 0 - I - 0x015C09 05:9BF9: 5B        .byte $5B   ; 
- D 0 - I - 0x015C0A 05:9BFA: 1B        .byte $1B   ; 
- D 0 - I - 0x015C0B 05:9BFB: 4E        .byte $4E   ; 
- D 0 - I - 0x015C0C 05:9BFC: 1A        .byte $1A   ; 
- D 0 - I - 0x015C0D 05:9BFD: 1B        .byte $1B   ; 
- D 0 - I - 0x015C0E 05:9BFE: DB        .byte $DB   ; 
- D 0 - I - 0x015C0F 05:9BFF: 5B        .byte $5B   ; 
- D 0 - I - 0x015C10 05:9C00: 1B        .byte $1B   ; 
- D 0 - I - 0x015C11 05:9C01: 4E        .byte $4E   ; 
- D 0 - I - 0x015C12 05:9C02: 4E        .byte $4E   ; 
- D 0 - I - 0x015C13 05:9C03: 1A        .byte $1A   ; 
- D 0 - I - 0x015C14 05:9C04: 1B        .byte $1B   ; 
- D 0 - I - 0x015C15 05:9C05: DB        .byte $DB   ; 
- D 0 - I - 0x015C16 05:9C06: CE        .byte $CE   ; 
- D 0 - I - 0x015C17 05:9C07: 4E        .byte $4E   ; 
- D 0 - I - 0x015C18 05:9C08: 4E        .byte $4E   ; 
- D 0 - I - 0x015C19 05:9C09: 4E        .byte $4E   ; 
- D 0 - I - 0x015C1A 05:9C0A: 0E        .byte $0E   ; 
- D 0 - I - 0x015C1B 05:9C0B: 1A        .byte $1A   ; 
- D 0 - I - 0x015C1C 05:9C0C: 1B        .byte $1B   ; 



_off006_0x015C1D_01:
- D 0 - I - 0x015C1D 05:9C0D: 9B        .byte $9B   ; 
- D 0 - I - 0x015C1E 05:9C0E: 0C        .byte $0C   ; 
- D 0 - I - 0x015C1F 05:9C0F: 4E        .byte $4E   ; 
- D 0 - I - 0x015C20 05:9C10: 4E        .byte $4E   ; 
- D 0 - I - 0x015C21 05:9C11: 4E        .byte $4E   ; 
- D 0 - I - 0x015C22 05:9C12: 0E        .byte $0E   ; 
- D 0 - I - 0x015C23 05:9C13: 1A        .byte $1A   ; 
- D 0 - I - 0x015C24 05:9C14: 1B        .byte $1B   ; 
- D 0 - I - 0x015C25 05:9C15: CA        .byte $CA   ; 
- D 0 - I - 0x015C26 05:9C16: 4E        .byte $4E   ; 
- D 0 - I - 0x015C27 05:9C17: 0E        .byte $0E   ; 
- D 0 - I - 0x015C28 05:9C18: 4E        .byte $4E   ; 
- D 0 - I - 0x015C29 05:9C19: 4E        .byte $4E   ; 
- D 0 - I - 0x015C2A 05:9C1A: 4A        .byte $4A   ; 
- D 0 - I - 0x015C2B 05:9C1B: C5        .byte $C5   ; 
- D 0 - I - 0x015C2C 05:9C1C: 45        .byte $45   ; 
- D 0 - I - 0x015C2D 05:9C1D: 05        .byte $05   ; 
- D 0 - I - 0x015C2E 05:9C1E: 0B        .byte $0B   ; 
- D 0 - I - 0x015C2F 05:9C1F: C5        .byte $C5   ; 
- D 0 - I - 0x015C30 05:9C20: 45        .byte $45   ; 
- D 0 - I - 0x015C31 05:9C21: 05        .byte $05   ; 
- D 0 - I - 0x015C32 05:9C22: 45        .byte $45   ; 
- D 0 - I - 0x015C33 05:9C23: 45        .byte $45   ; 
- D 0 - I - 0x015C34 05:9C24: 45        .byte $45   ; 
- D 0 - I - 0x015C35 05:9C25: D9        .byte $D9   ; 
- D 0 - I - 0x015C36 05:9C26: 28        .byte $28   ; 
- D 0 - I - 0x015C37 05:9C27: 59        .byte $59   ; 
- D 0 - I - 0x015C38 05:9C28: D9        .byte $D9   ; 
- D 0 - I - 0x015C39 05:9C29: 59        .byte $59   ; 
- D 0 - I - 0x015C3A 05:9C2A: 59        .byte $59   ; 
- D 0 - I - 0x015C3B 05:9C2B: 19        .byte $19   ; 
- D 0 - I - 0x015C3C 05:9C2C: D9        .byte $D9   ; 
- D 0 - I - 0x015C3D 05:9C2D: 59        .byte $59   ; 
- D 0 - I - 0x015C3E 05:9C2E: 4E        .byte $4E   ; 
- D 0 - I - 0x015C3F 05:9C2F: 0E        .byte $0E   ; 
- D 0 - I - 0x015C40 05:9C30: 59        .byte $59   ; 
- D 0 - I - 0x015C41 05:9C31: D9        .byte $D9   ; 
- D 0 - I - 0x015C42 05:9C32: 4E        .byte $4E   ; 
- D 0 - I - 0x015C43 05:9C33: 4E        .byte $4E   ; 
- D 0 - I - 0x015C44 05:9C34: 4E        .byte $4E   ; 
- D 0 - I - 0x015C45 05:9C35: 0E        .byte $0E   ; 
- D 0 - I - 0x015C46 05:9C36: 59        .byte $59   ; 
- D 0 - I - 0x015C47 05:9C37: 8E        .byte $8E   ; 
- D 0 - I - 0x015C48 05:9C38: 4E        .byte $4E   ; 
- D 0 - I - 0x015C49 05:9C39: 4E        .byte $4E   ; 
- D 0 - I - 0x015C4A 05:9C3A: CE        .byte $CE   ; 
- D 0 - I - 0x015C4B 05:9C3B: 4E        .byte $4E   ; 
- D 0 - I - 0x015C4C 05:9C3C: 4E        .byte $4E   ; 
- D 0 - I - 0x015C4D 05:9C3D: 0E        .byte $0E   ; 



_off006_0x015C4E_02:
- D 0 - I - 0x015C4E 05:9C3E: D9        .byte $D9   ; 
- D 0 - I - 0x015C4F 05:9C3F: 59        .byte $59   ; 
- D 0 - I - 0x015C50 05:9C40: 0E        .byte $0E   ; 
- D 0 - I - 0x015C51 05:9C41: 4E        .byte $4E   ; 
- D 0 - I - 0x015C52 05:9C42: 4E        .byte $4E   ; 
- D 0 - I - 0x015C53 05:9C43: 4E        .byte $4E   ; 
- D 0 - I - 0x015C54 05:9C44: DB        .byte $DB   ; 
- D 0 - I - 0x015C55 05:9C45: 0E        .byte $0E   ; 
- D 0 - I - 0x015C56 05:9C46: 5B        .byte $5B   ; 
- D 0 - I - 0x015C57 05:9C47: 5B        .byte $5B   ; 
- D 0 - I - 0x015C58 05:9C48: 4E        .byte $4E   ; 
- D 0 - I - 0x015C59 05:9C49: 1A        .byte $1A   ; 
- D 0 - I - 0x015C5A 05:9C4A: 1B        .byte $1B   ; 
- D 0 - I - 0x015C5B 05:9C4B: DB        .byte $DB   ; 
- D 0 - I - 0x015C5C 05:9C4C: 0E        .byte $0E   ; 
- D 0 - I - 0x015C5D 05:9C4D: 33        .byte $33   ; 
- D 0 - I - 0x015C5E 05:9C4E: 5B        .byte $5B   ; 
- D 0 - I - 0x015C5F 05:9C4F: 1B        .byte $1B   ; 
- D 0 - I - 0x015C60 05:9C50: 4E        .byte $4E   ; 
- D 0 - I - 0x015C61 05:9C51: 1A        .byte $1A   ; 
- D 0 - I - 0x015C62 05:9C52: 1B        .byte $1B   ; 
- D 0 - I - 0x015C63 05:9C53: CE        .byte $CE   ; 
- D 0 - I - 0x015C64 05:9C54: 4E        .byte $4E   ; 
- D 0 - I - 0x015C65 05:9C55: 4E        .byte $4E   ; 
- D 0 - I - 0x015C66 05:9C56: 4E        .byte $4E   ; 
- D 0 - I - 0x015C67 05:9C57: 0E        .byte $0E   ; 
- D 0 - I - 0x015C68 05:9C58: 59        .byte $59   ; 
- D 0 - I - 0x015C69 05:9C59: DB        .byte $DB   ; 
- D 0 - I - 0x015C6A 05:9C5A: 4E        .byte $4E   ; 
- D 0 - I - 0x015C6B 05:9C5B: 33        .byte $33   ; 
- D 0 - I - 0x015C6C 05:9C5C: 1B        .byte $1B   ; 
- D 0 - I - 0x015C6D 05:9C5D: 35        .byte $35   ; 
- D 0 - I - 0x015C6E 05:9C5E: 4E        .byte $4E   ; 
- D 0 - I - 0x015C6F 05:9C5F: 1A        .byte $1A   ; 
- D 0 - I - 0x015C70 05:9C60: 1B        .byte $1B   ; 
- D 0 - I - 0x015C71 05:9C61: D9        .byte $D9   ; 
- D 0 - I - 0x015C72 05:9C62: 4E        .byte $4E   ; 
- D 0 - I - 0x015C73 05:9C63: 19        .byte $19   ; 
- D 0 - I - 0x015C74 05:9C64: 0E        .byte $0E   ; 
- D 0 - I - 0x015C75 05:9C65: 19        .byte $19   ; 
- D 0 - I - 0x015C76 05:9C66: 4E        .byte $4E   ; 
- D 0 - I - 0x015C77 05:9C67: D9        .byte $D9   ; 
- D 0 - I - 0x015C78 05:9C68: 0E        .byte $0E   ; 
- D 0 - I - 0x015C79 05:9C69: 19        .byte $19   ; 
- D 0 - I - 0x015C7A 05:9C6A: 0E        .byte $0E   ; 
- D 0 - I - 0x015C7B 05:9C6B: 19        .byte $19   ; 
- D 0 - I - 0x015C7C 05:9C6C: 0E        .byte $0E   ; 
- D 0 - I - 0x015C7D 05:9C6D: 19        .byte $19   ; 
- D 0 - I - 0x015C7E 05:9C6E: 0E        .byte $0E   ; 
- D 0 - I - 0x015C7F 05:9C6F: D9        .byte $D9   ; 
- D 0 - I - 0x015C80 05:9C70: 4E        .byte $4E   ; 
- D 0 - I - 0x015C81 05:9C71: 0E        .byte $0E   ; 
- D 0 - I - 0x015C82 05:9C72: 19        .byte $19   ; 
- D 0 - I - 0x015C83 05:9C73: 0E        .byte $0E   ; 
- D 0 - I - 0x015C84 05:9C74: 4E        .byte $4E   ; 
- D 0 - I - 0x015C85 05:9C75: D9        .byte $D9   ; 
- D 0 - I - 0x015C86 05:9C76: 19        .byte $19   ; 
- D 0 - I - 0x015C87 05:9C77: 4E        .byte $4E   ; 
- D 0 - I - 0x015C88 05:9C78: 4E        .byte $4E   ; 
- D 0 - I - 0x015C89 05:9C79: 0E        .byte $0E   ; 
- D 0 - I - 0x015C8A 05:9C7A: 19        .byte $19   ; 
- D 0 - I - 0x015C8B 05:9C7B: D9        .byte $D9   ; 
- D 0 - I - 0x015C8C 05:9C7C: 0E        .byte $0E   ; 
- D 0 - I - 0x015C8D 05:9C7D: 59        .byte $59   ; 
- D 0 - I - 0x015C8E 05:9C7E: 59        .byte $59   ; 
- D 0 - I - 0x015C8F 05:9C7F: 59        .byte $59   ; 



_off006_0x015C90_03:
- D 0 - I - 0x015C90 05:9C80: D9        .byte $D9   ; 
- D 0 - I - 0x015C91 05:9C81: 0E        .byte $0E   ; 
- D 0 - I - 0x015C92 05:9C82: 59        .byte $59   ; 
- D 0 - I - 0x015C93 05:9C83: 59        .byte $59   ; 
- D 0 - I - 0x015C94 05:9C84: 19        .byte $19   ; 
- D 0 - I - 0x015C95 05:9C85: 0E        .byte $0E   ; 
- D 0 - I - 0x015C96 05:9C86: D9        .byte $D9   ; 
- D 0 - I - 0x015C97 05:9C87: 4E        .byte $4E   ; 
- D 0 - I - 0x015C98 05:9C88: 19        .byte $19   ; 
- D 0 - I - 0x015C99 05:9C89: 0E        .byte $0E   ; 
- D 0 - I - 0x015C9A 05:9C8A: 28        .byte $28   ; 
- D 0 - I - 0x015C9B 05:9C8B: 4E        .byte $4E   ; 
- D 0 - I - 0x015C9C 05:9C8C: 59        .byte $59   ; 
- D 0 - I - 0x015C9D 05:9C8D: DB        .byte $DB   ; 
- D 0 - I - 0x015C9E 05:9C8E: 4E        .byte $4E   ; 
- D 0 - I - 0x015C9F 05:9C8F: 13        .byte $13   ; 
- D 0 - I - 0x015CA0 05:9C90: 0E        .byte $0E   ; 
- D 0 - I - 0x015CA1 05:9C91: 13        .byte $13   ; 
- D 0 - I - 0x015CA2 05:9C92: 4E        .byte $4E   ; 
- D 0 - I - 0x015CA3 05:9C93: 1A        .byte $1A   ; 
- D 0 - I - 0x015CA4 05:9C94: 1B        .byte $1B   ; 
- D 0 - I - 0x015CA5 05:9C95: DB        .byte $DB   ; 
- D 0 - I - 0x015CA6 05:9C96: 0E        .byte $0E   ; 
- D 0 - I - 0x015CA7 05:9C97: 13        .byte $13   ; 
- D 0 - I - 0x015CA8 05:9C98: 0E        .byte $0E   ; 
- D 0 - I - 0x015CA9 05:9C99: 13        .byte $13   ; 
- D 0 - I - 0x015CAA 05:9C9A: 0E        .byte $0E   ; 
- D 0 - I - 0x015CAB 05:9C9B: 13        .byte $13   ; 
- D 0 - I - 0x015CAC 05:9C9C: 0E        .byte $0E   ; 
- D 0 - I - 0x015CAD 05:9C9D: 1A        .byte $1A   ; 
- D 0 - I - 0x015CAE 05:9C9E: 1B        .byte $1B   ; 
- D 0 - I - 0x015CAF 05:9C9F: DB        .byte $DB   ; 
- D 0 - I - 0x015CB0 05:9CA0: 4E        .byte $4E   ; 
- D 0 - I - 0x015CB1 05:9CA1: 0E        .byte $0E   ; 
- D 0 - I - 0x015CB2 05:9CA2: 13        .byte $13   ; 
- D 0 - I - 0x015CB3 05:9CA3: 4E        .byte $4E   ; 
- D 0 - I - 0x015CB4 05:9CA4: 0E        .byte $0E   ; 
- D 0 - I - 0x015CB5 05:9CA5: 1A        .byte $1A   ; 
- D 0 - I - 0x015CB6 05:9CA6: 1B        .byte $1B   ; 
- D 0 - I - 0x015CB7 05:9CA7: C8        .byte $C8   ; 
- D 0 - I - 0x015CB8 05:9CA8: 48        .byte $48   ; 
- D 0 - I - 0x015CB9 05:9CA9: 17        .byte $17   ; 
- D 0 - I - 0x015CBA 05:9CAA: 4E        .byte $4E   ; 
- D 0 - I - 0x015CBB 05:9CAB: 4E        .byte $4E   ; 
- D 0 - I - 0x015CBC 05:9CAC: 1A        .byte $1A   ; 
- D 0 - I - 0x015CBD 05:9CAD: 1B        .byte $1B   ; 
- D 0 - I - 0x015CBE 05:9CAE: C5        .byte $C5   ; 
- D 0 - I - 0x015CBF 05:9CAF: 45        .byte $45   ; 
- D 0 - I - 0x015CC0 05:9CB0: 07        .byte $07   ; 
- D 0 - I - 0x015CC1 05:9CB1: 4E        .byte $4E   ; 
- D 0 - I - 0x015CC2 05:9CB2: 4E        .byte $4E   ; 
- D 0 - I - 0x015CC3 05:9CB3: 1A        .byte $1A   ; 
- D 0 - I - 0x015CC4 05:9CB4: 1B        .byte $1B   ; 
- D 0 - I - 0x015CC5 05:9CB5: C5        .byte $C5   ; 
- D 0 - I - 0x015CC6 05:9CB6: 45        .byte $45   ; 
- D 0 - I - 0x015CC7 05:9CB7: 07        .byte $07   ; 
- D 0 - I - 0x015CC8 05:9CB8: 0E        .byte $0E   ; 
- D 0 - I - 0x015CC9 05:9CB9: 1A        .byte $1A   ; 
- D 0 - I - 0x015CCA 05:9CBA: DB        .byte $DB   ; 
- D 0 - I - 0x015CCB 05:9CBB: 5B        .byte $5B   ; 
- D 0 - I - 0x015CCC 05:9CBC: 1B        .byte $1B   ; 
- D 0 - I - 0x015CCD 05:9CBD: 4E        .byte $4E   ; 
- D 0 - I - 0x015CCE 05:9CBE: 4E        .byte $4E   ; 
- D 0 - I - 0x015CCF 05:9CBF: 4A        .byte $4A   ; 
- D 0 - I - 0x015CD0 05:9CC0: DB        .byte $DB   ; 
- D 0 - I - 0x015CD1 05:9CC1: 4E        .byte $4E   ; 
- D 0 - I - 0x015CD2 05:9CC2: 4E        .byte $4E   ; 
- D 0 - I - 0x015CD3 05:9CC3: 15        .byte $15   ; 



_off006_0x015CD4_04:
- D 0 - I - 0x015CD4 05:9CC4: C8        .byte $C8   ; 
- D 0 - I - 0x015CD5 05:9CC5: 48        .byte $48   ; 
- D 0 - I - 0x015CD6 05:9CC6: 17        .byte $17   ; 
- D 0 - I - 0x015CD7 05:9CC7: 4E        .byte $4E   ; 
- D 0 - I - 0x015CD8 05:9CC8: 4E        .byte $4E   ; 
- D 0 - I - 0x015CD9 05:9CC9: 59        .byte $59   ; 
- D 0 - I - 0x015CDA 05:9CCA: C9        .byte $C9   ; 
- D 0 - I - 0x015CDB 05:9CCB: 49        .byte $49   ; 
- D 0 - I - 0x015CDC 05:9CCC: 18        .byte $18   ; 
- D 0 - I - 0x015CDD 05:9CCD: 4E        .byte $4E   ; 
- D 0 - I - 0x015CDE 05:9CCE: 4E        .byte $4E   ; 
- D 0 - I - 0x015CDF 05:9CCF: D9        .byte $D9   ; 
- D 0 - I - 0x015CE0 05:9CD0: 59        .byte $59   ; 
- D 0 - I - 0x015CE1 05:9CD1: 4E        .byte $4E   ; 
- D 0 - I - 0x015CE2 05:9CD2: 06        .byte $06   ; 
- D 0 - I - 0x015CE3 05:9CD3: C5        .byte $C5   ; 
- D 0 - I - 0x015CE4 05:9CD4: 45        .byte $45   ; 
- D 0 - I - 0x015CE5 05:9CD5: 45        .byte $45   ; 
- D 0 - I - 0x015CE6 05:9CD6: C9        .byte $C9   ; 
- D 0 - I - 0x015CE7 05:9CD7: 49        .byte $49   ; 
- D 0 - I - 0x015CE8 05:9CD8: 09        .byte $09   ; 
- D 0 - I - 0x015CE9 05:9CD9: 0B        .byte $0B   ; 
- D 0 - I - 0x015CEA 05:9CDA: 49        .byte $49   ; 
- D 0 - I - 0x015CEB 05:9CDB: 49        .byte $49   ; 
- D 0 - I - 0x015CEC 05:9CDC: 09        .byte $09   ; 
- D 0 - I - 0x015CED 05:9CDD: C8        .byte $C8   ; 
- D 0 - I - 0x015CEE 05:9CDE: 48        .byte $48   ; 
- D 0 - I - 0x015CEF 05:9CDF: 08        .byte $08   ; 
- D 0 - I - 0x015CF0 05:9CE0: 48        .byte $48   ; 
- D 0 - I - 0x015CF1 05:9CE1: C8        .byte $C8   ; 
- D 0 - I - 0x015CF2 05:9CE2: 48        .byte $48   ; 
- D 0 - I - 0x015CF3 05:9CE3: 17        .byte $17   ; 
- D 0 - I - 0x015CF4 05:9CE4: 4E        .byte $4E   ; 
- D 0 - I - 0x015CF5 05:9CE5: 4E        .byte $4E   ; 
- D 0 - I - 0x015CF6 05:9CE6: 4E        .byte $4E   ; 
- D 0 - I - 0x015CF7 05:9CE7: DB        .byte $DB   ; 
- D 0 - I - 0x015CF8 05:9CE8: 4E        .byte $4E   ; 
- D 0 - I - 0x015CF9 05:9CE9: 4E        .byte $4E   ; 
- D 0 - I - 0x015CFA 05:9CEA: 06        .byte $06   ; 
- D 0 - I - 0x015CFB 05:9CEB: C5        .byte $C5   ; 
- D 0 - I - 0x015CFC 05:9CEC: 45        .byte $45   ; 
- D 0 - I - 0x015CFD 05:9CED: 07        .byte $07   ; 
- D 0 - I - 0x015CFE 05:9CEE: 4E        .byte $4E   ; 
- D 0 - I - 0x015CFF 05:9CEF: 4E        .byte $4E   ; 
- D 0 - I - 0x015D00 05:9CF0: D9        .byte $D9   ; 
- D 0 - I - 0x015D01 05:9CF1: 4E        .byte $4E   ; 
- D 0 - I - 0x015D02 05:9CF2: 2C        .byte $2C   ; 
- D 0 - I - 0x015D03 05:9CF3: 4E        .byte $4E   ; 
- D 0 - I - 0x015D04 05:9CF4: 4E        .byte $4E   ; 
- D 0 - I - 0x015D05 05:9CF5: 59        .byte $59   ; 



_off006_0x015D06_05:
- D 0 - I - 0x015D06 05:9CF6: DB        .byte $DB   ; 
- D 0 - I - 0x015D07 05:9CF7: 5B        .byte $5B   ; 
- D 0 - I - 0x015D08 05:9CF8: 1B        .byte $1B   ; 
- D 0 - I - 0x015D09 05:9CF9: 0E        .byte $0E   ; 
- D 0 - I - 0x015D0A 05:9CFA: 4A        .byte $4A   ; 
- D 0 - I - 0x015D0B 05:9CFB: 4A        .byte $4A   ; 
- D 0 - I - 0x015D0C 05:9CFC: 0A        .byte $0A   ; 
- D 0 - I - 0x015D0D 05:9CFD: DB        .byte $DB   ; 
- D 0 - I - 0x015D0E 05:9CFE: 5B        .byte $5B   ; 
- D 0 - I - 0x015D0F 05:9CFF: 4E        .byte $4E   ; 
- D 0 - I - 0x015D10 05:9D00: 06        .byte $06   ; 
- D 0 - I - 0x015D11 05:9D01: C5        .byte $C5   ; 
- D 0 - I - 0x015D12 05:9D02: 45        .byte $45   ; 
- D 0 - I - 0x015D13 05:9D03: 07        .byte $07   ; 
- D 0 - I - 0x015D14 05:9D04: 4E        .byte $4E   ; 
- D 0 - I - 0x015D15 05:9D05: 4E        .byte $4E   ; 
- D 0 - I - 0x015D16 05:9D06: 4E        .byte $4E   ; 
- D 0 - I - 0x015D17 05:9D07: DB        .byte $DB   ; 
- D 0 - I - 0x015D18 05:9D08: 0E        .byte $0E   ; 
- D 0 - I - 0x015D19 05:9D09: 15        .byte $15   ; 
- D 0 - I - 0x015D1A 05:9D0A: 48        .byte $48   ; 
- D 0 - I - 0x015D1B 05:9D0B: 17        .byte $17   ; 
- D 0 - I - 0x015D1C 05:9D0C: 4E        .byte $4E   ; 
- D 0 - I - 0x015D1D 05:9D0D: 1A        .byte $1A   ; 
- D 0 - I - 0x015D1E 05:9D0E: 1B        .byte $1B   ; 
- D 0 - I - 0x015D1F 05:9D0F: DB        .byte $DB   ; 
- D 0 - I - 0x015D20 05:9D10: 0E        .byte $0E   ; 
- D 0 - I - 0x015D21 05:9D11: 06        .byte $06   ; 
- D 0 - I - 0x015D22 05:9D12: 45        .byte $45   ; 
- D 0 - I - 0x015D23 05:9D13: 07        .byte $07   ; 
- D 0 - I - 0x015D24 05:9D14: 4E        .byte $4E   ; 
- D 0 - I - 0x015D25 05:9D15: 1A        .byte $1A   ; 
- D 0 - I - 0x015D26 05:9D16: 1B        .byte $1B   ; 
- D 0 - I - 0x015D27 05:9D17: DB        .byte $DB   ; 
- D 0 - I - 0x015D28 05:9D18: 0E        .byte $0E   ; 
- D 0 - I - 0x015D29 05:9D19: 06        .byte $06   ; 
- D 0 - I - 0x015D2A 05:9D1A: 05        .byte $05   ; 
- D 0 - I - 0x015D2B 05:9D1B: 45        .byte $45   ; 
- D 0 - I - 0x015D2C 05:9D1C: 45        .byte $45   ; 
- D 0 - I - 0x015D2D 05:9D1D: 45        .byte $45   ; 
- D 0 - I - 0x015D2E 05:9D1E: DB        .byte $DB   ; 
- D 0 - I - 0x015D2F 05:9D1F: 0E        .byte $0E   ; 
- D 0 - I - 0x015D30 05:9D20: 16        .byte $16   ; 
- D 0 - I - 0x015D31 05:9D21: 49        .byte $49   ; 
- D 0 - I - 0x015D32 05:9D22: 18        .byte $18   ; 
- D 0 - I - 0x015D33 05:9D23: 4E        .byte $4E   ; 
- D 0 - I - 0x015D34 05:9D24: 1A        .byte $1A   ; 
- D 0 - I - 0x015D35 05:9D25: 1B        .byte $1B   ; 
- D 0 - I - 0x015D36 05:9D26: D9        .byte $D9   ; 
- D 0 - I - 0x015D37 05:9D27: 0E        .byte $0E   ; 
- D 0 - I - 0x015D38 05:9D28: 59        .byte $59   ; 
- D 0 - I - 0x015D39 05:9D29: 59        .byte $59   ; 
- D 0 - I - 0x015D3A 05:9D2A: 19        .byte $19   ; 
- D 0 - I - 0x015D3B 05:9D2B: 0E        .byte $0E   ; 
- D 0 - I - 0x015D3C 05:9D2C: CE        .byte $CE   ; 
- D 0 - I - 0x015D3D 05:9D2D: 4E        .byte $4E   ; 
- D 0 - I - 0x015D3E 05:9D2E: 4E        .byte $4E   ; 
- D 0 - I - 0x015D3F 05:9D2F: 06        .byte $06   ; 
- D 0 - I - 0x015D40 05:9D30: 45        .byte $45   ; 
- D 0 - I - 0x015D41 05:9D31: 45        .byte $45   ; 



_off006_0x015D42_06:
- D 0 - I - 0x015D42 05:9D32: D9        .byte $D9   ; 
- D 0 - I - 0x015D43 05:9D33: 4E        .byte $4E   ; 
- D 0 - I - 0x015D44 05:9D34: 4E        .byte $4E   ; 
- D 0 - I - 0x015D45 05:9D35: 16        .byte $16   ; 
- D 0 - I - 0x015D46 05:9D36: 49        .byte $49   ; 
- D 0 - I - 0x015D47 05:9D37: 49        .byte $49   ; 
- D 0 - I - 0x015D48 05:9D38: D9        .byte $D9   ; 
- D 0 - I - 0x015D49 05:9D39: 4E        .byte $4E   ; 
- D 0 - I - 0x015D4A 05:9D3A: 4E        .byte $4E   ; 
- D 0 - I - 0x015D4B 05:9D3B: 06        .byte $06   ; 
- D 0 - I - 0x015D4C 05:9D3C: C5        .byte $C5   ; 
- D 0 - I - 0x015D4D 05:9D3D: 45        .byte $45   ; 
- D 0 - I - 0x015D4E 05:9D3E: 07        .byte $07   ; 
- D 0 - I - 0x015D4F 05:9D3F: 4E        .byte $4E   ; 
- D 0 - I - 0x015D50 05:9D40: D9        .byte $D9   ; 
- D 0 - I - 0x015D51 05:9D41: 59        .byte $59   ; 
- D 0 - I - 0x015D52 05:9D42: 4E        .byte $4E   ; 
- D 0 - I - 0x015D53 05:9D43: 15        .byte $15   ; 
- D 0 - I - 0x015D54 05:9D44: 48        .byte $48   ; 
- D 0 - I - 0x015D55 05:9D45: 48        .byte $48   ; 
- D 0 - I - 0x015D56 05:9D46: DB        .byte $DB   ; 
- D 0 - I - 0x015D57 05:9D47: 0E        .byte $0E   ; 
- D 0 - I - 0x015D58 05:9D48: 1C        .byte $1C   ; 
- D 0 - I - 0x015D59 05:9D49: 1F        .byte $1F   ; 
- D 0 - I - 0x015D5A 05:9D4A: 4E        .byte $4E   ; 
- D 0 - I - 0x015D5B 05:9D4B: 4E        .byte $4E   ; 
- D 0 - I - 0x015D5C 05:9D4C: 1A        .byte $1A   ; 
- D 0 - I - 0x015D5D 05:9D4D: 1B        .byte $1B   ; 
- D 0 - I - 0x015D5E 05:9D4E: DB        .byte $DB   ; 
- D 0 - I - 0x015D5F 05:9D4F: 0E        .byte $0E   ; 
- D 0 - I - 0x015D60 05:9D50: 1D        .byte $1D   ; 
- D 0 - I - 0x015D61 05:9D51: 0C        .byte $0C   ; 
- D 0 - I - 0x015D62 05:9D52: 4E        .byte $4E   ; 
- D 0 - I - 0x015D63 05:9D53: 4E        .byte $4E   ; 
- D 0 - I - 0x015D64 05:9D54: 1A        .byte $1A   ; 
- D 0 - I - 0x015D65 05:9D55: 1B        .byte $1B   ; 
- D 0 - I - 0x015D66 05:9D56: DB        .byte $DB   ; 
- D 0 - I - 0x015D67 05:9D57: 0E        .byte $0E   ; 
- D 0 - I - 0x015D68 05:9D58: 1E        .byte $1E   ; 
- D 0 - I - 0x015D69 05:9D59: 20        .byte $20   ; 
- D 0 - I - 0x015D6A 05:9D5A: 4E        .byte $4E   ; 
- D 0 - I - 0x015D6B 05:9D5B: 4E        .byte $4E   ; 
- D 0 - I - 0x015D6C 05:9D5C: 1A        .byte $1A   ; 
- D 0 - I - 0x015D6D 05:9D5D: 1B        .byte $1B   ; 
- D 0 - I - 0x015D6E 05:9D5E: DB        .byte $DB   ; 
- D 0 - I - 0x015D6F 05:9D5F: 0E        .byte $0E   ; 
- D 0 - I - 0x015D70 05:9D60: 21        .byte $21   ; 
- D 0 - I - 0x015D71 05:9D61: 24        .byte $24   ; 
- D 0 - I - 0x015D72 05:9D62: 4E        .byte $4E   ; 
- D 0 - I - 0x015D73 05:9D63: 4E        .byte $4E   ; 
- D 0 - I - 0x015D74 05:9D64: 1A        .byte $1A   ; 
- D 0 - I - 0x015D75 05:9D65: 1B        .byte $1B   ; 
- D 0 - I - 0x015D76 05:9D66: DB        .byte $DB   ; 
- D 0 - I - 0x015D77 05:9D67: 0E        .byte $0E   ; 
- D 0 - I - 0x015D78 05:9D68: 22        .byte $22   ; 
- D 0 - I - 0x015D79 05:9D69: 0C        .byte $0C   ; 
- D 0 - I - 0x015D7A 05:9D6A: 4E        .byte $4E   ; 
- D 0 - I - 0x015D7B 05:9D6B: 4E        .byte $4E   ; 
- D 0 - I - 0x015D7C 05:9D6C: 4A        .byte $4A   ; 



_off006_0x015D7D_07:
- D 0 - I - 0x015D7D 05:9D6D: DB        .byte $DB   ; 
- D 0 - I - 0x015D7E 05:9D6E: 0E        .byte $0E   ; 
- D 0 - I - 0x015D7F 05:9D6F: 23        .byte $23   ; 
- D 0 - I - 0x015D80 05:9D70: 25        .byte $25   ; 
- D 0 - I - 0x015D81 05:9D71: 4E        .byte $4E   ; 
- D 0 - I - 0x015D82 05:9D72: 4E        .byte $4E   ; 
- D 0 - I - 0x015D83 05:9D73: 1A        .byte $1A   ; 
- D 0 - I - 0x015D84 05:9D74: 1B        .byte $1B   ; 
- D 0 - I - 0x015D85 05:9D75: DB        .byte $DB   ; 
- D 0 - I - 0x015D86 05:9D76: 4E        .byte $4E   ; 
- D 0 - I - 0x015D87 05:9D77: 0E        .byte $0E   ; 
- D 0 - I - 0x015D88 05:9D78: 26        .byte $26   ; 
- D 0 - I - 0x015D89 05:9D79: 4E        .byte $4E   ; 
- D 0 - I - 0x015D8A 05:9D7A: 0E        .byte $0E   ; 
- D 0 - I - 0x015D8B 05:9D7B: 1A        .byte $1A   ; 
- D 0 - I - 0x015D8C 05:9D7C: 1B        .byte $1B   ; 
- D 0 - I - 0x015D8D 05:9D7D: DB        .byte $DB   ; 
- D 0 - I - 0x015D8E 05:9D7E: 5B        .byte $5B   ; 
- D 0 - I - 0x015D8F 05:9D7F: 07        .byte $07   ; 
- D 0 - I - 0x015D90 05:9D80: 4E        .byte $4E   ; 
- D 0 - I - 0x015D91 05:9D81: 1A        .byte $1A   ; 
- D 0 - I - 0x015D92 05:9D82: 1B        .byte $1B   ; 
- D 0 - I - 0x015D93 05:9D83: DB        .byte $DB   ; 
- D 0 - I - 0x015D94 05:9D84: 5B        .byte $5B   ; 
- D 0 - I - 0x015D95 05:9D85: 07        .byte $07   ; 
- D 0 - I - 0x015D96 05:9D86: 4E        .byte $4E   ; 
- D 0 - I - 0x015D97 05:9D87: 4E        .byte $4E   ; 
- D 0 - I - 0x015D98 05:9D88: 1A        .byte $1A   ; 
- D 0 - I - 0x015D99 05:9D89: 1B        .byte $1B   ; 
- D 0 - I - 0x015D9A 05:9D8A: CE        .byte $CE   ; 
- D 0 - I - 0x015D9B 05:9D8B: 0E        .byte $0E   ; 
- D 0 - I - 0x015D9C 05:9D8C: 59        .byte $59   ; 
- D 0 - I - 0x015D9D 05:9D8D: 59        .byte $59   ; 
- D 0 - I - 0x015D9E 05:9D8E: 19        .byte $19   ; 
- D 0 - I - 0x015D9F 05:9D8F: 0E        .byte $0E   ; 
- D 0 - I - 0x015DA0 05:9D90: D9        .byte $D9   ; 
- D 0 - I - 0x015DA1 05:9D91: 4E        .byte $4E   ; 
- D 0 - I - 0x015DA2 05:9D92: 0E        .byte $0E   ; 
- D 0 - I - 0x015DA3 05:9D93: 26        .byte $26   ; 
- D 0 - I - 0x015DA4 05:9D94: 4E        .byte $4E   ; 
- D 0 - I - 0x015DA5 05:9D95: 0E        .byte $0E   ; 
- D 0 - I - 0x015DA6 05:9D96: D9        .byte $D9   ; 
- D 0 - I - 0x015DA7 05:9D97: 4E        .byte $4E   ; 
- D 0 - I - 0x015DA8 05:9D98: 4E        .byte $4E   ; 
- D 0 - I - 0x015DA9 05:9D99: 4E        .byte $4E   ; 
- D 0 - I - 0x015DAA 05:9D9A: 4E        .byte $4E   ; 
- D 0 - I - 0x015DAB 05:9D9B: 0E        .byte $0E   ; 
- D 0 - I - 0x015DAC 05:9D9C: DB        .byte $DB   ; 
- D 0 - I - 0x015DAD 05:9D9D: 4E        .byte $4E   ; 
- D 0 - I - 0x015DAE 05:9D9E: 19        .byte $19   ; 
- D 0 - I - 0x015DAF 05:9D9F: 0E        .byte $0E   ; 
- D 0 - I - 0x015DB0 05:9DA0: 19        .byte $19   ; 
- D 0 - I - 0x015DB1 05:9DA1: 4E        .byte $4E   ; 
- D 0 - I - 0x015DB2 05:9DA2: 1A        .byte $1A   ; 
- D 0 - I - 0x015DB3 05:9DA3: 1B        .byte $1B   ; 
- D 0 - I - 0x015DB4 05:9DA4: DB        .byte $DB   ; 
- D 0 - I - 0x015DB5 05:9DA5: 5B        .byte $5B   ; 
- D 0 - I - 0x015DB6 05:9DA6: 5B        .byte $5B   ; 
- D 0 - I - 0x015DB7 05:9DA7: 45        .byte $45   ; 



_off006_0x015DB8_08:
- D 0 - I - 0x015DB8 05:9DA8: C5        .byte $C5   ; 
- D 0 - I - 0x015DB9 05:9DA9: 05        .byte $05   ; 
- D 0 - I - 0x015DBA 05:9DAA: 5B        .byte $5B   ; 
- D 0 - I - 0x015DBB 05:9DAB: 5B        .byte $5B   ; 
- D 0 - I - 0x015DBC 05:9DAC: DB        .byte $DB   ; 
- D 0 - I - 0x015DBD 05:9DAD: 5B        .byte $5B   ; 
- D 0 - I - 0x015DBE 05:9DAE: 27        .byte $27   ; 
- D 0 - I - 0x015DBF 05:9DAF: 0E        .byte $0E   ; 
- D 0 - I - 0x015DC0 05:9DB0: 1A        .byte $1A   ; 
- D 0 - I - 0x015DC1 05:9DB1: 5B        .byte $5B   ; 
- D 0 - I - 0x015DC2 05:9DB2: DB        .byte $DB   ; 
- D 0 - I - 0x015DC3 05:9DB3: 0E        .byte $0E   ; 
- D 0 - I - 0x015DC4 05:9DB4: 14        .byte $14   ; 
- D 0 - I - 0x015DC5 05:9DB5: 0E        .byte $0E   ; 
- D 0 - I - 0x015DC6 05:9DB6: 14        .byte $14   ; 
- D 0 - I - 0x015DC7 05:9DB7: 0E        .byte $0E   ; 
- D 0 - I - 0x015DC8 05:9DB8: 14        .byte $14   ; 
- D 0 - I - 0x015DC9 05:9DB9: 4E        .byte $4E   ; 
- D 0 - I - 0x015DCA 05:9DBA: 0E        .byte $0E   ; 
- D 0 - I - 0x015DCB 05:9DBB: CA        .byte $CA   ; 
- D 0 - I - 0x015DCC 05:9DBC: 4A        .byte $4A   ; 
- D 0 - I - 0x015DCD 05:9DBD: 0A        .byte $0A   ; 
- D 0 - I - 0x015DCE 05:9DBE: 4E        .byte $4E   ; 
- D 0 - I - 0x015DCF 05:9DBF: 4E        .byte $4E   ; 
- D 0 - I - 0x015DD0 05:9DC0: 1A        .byte $1A   ; 
- D 0 - I - 0x015DD1 05:9DC1: 1B        .byte $1B   ; 
- D 0 - I - 0x015DD2 05:9DC2: DB        .byte $DB   ; 
- D 0 - I - 0x015DD3 05:9DC3: 1B        .byte $1B   ; 
- D 0 - I - 0x015DD4 05:9DC4: 35        .byte $35   ; 
- D 0 - I - 0x015DD5 05:9DC5: 4E        .byte $4E   ; 
- D 0 - I - 0x015DD6 05:9DC6: 4E        .byte $4E   ; 
- D 0 - I - 0x015DD7 05:9DC7: 0E        .byte $0E   ; 
- D 0 - I - 0x015DD8 05:9DC8: 1A        .byte $1A   ; 
- D 0 - I - 0x015DD9 05:9DC9: 1B        .byte $1B   ; 
- D 0 - I - 0x015DDA 05:9DCA: 9B        .byte $9B   ; 
- D 0 - I - 0x015DDB 05:9DCB: 27        .byte $27   ; 
- D 0 - I - 0x015DDC 05:9DCC: 4E        .byte $4E   ; 
- D 0 - I - 0x015DDD 05:9DCD: 4E        .byte $4E   ; 
- D 0 - I - 0x015DDE 05:9DCE: 06        .byte $06   ; 
- D 0 - I - 0x015DDF 05:9DCF: C5        .byte $C5   ; 
- D 0 - I - 0x015DE0 05:9DD0: 45        .byte $45   ; 
- D 0 - I - 0x015DE1 05:9DD1: 05        .byte $05   ; 
- D 0 - I - 0x015DE2 05:9DD2: 2F        .byte $2F   ; 
- D 0 - I - 0x015DE3 05:9DD3: 4E        .byte $4E   ; 
- D 0 - I - 0x015DE4 05:9DD4: 4E        .byte $4E   ; 
- D 0 - I - 0x015DE5 05:9DD5: 0E        .byte $0E   ; 
- D 0 - I - 0x015DE6 05:9DD6: DB        .byte $DB   ; 
- D 0 - I - 0x015DE7 05:9DD7: 0E        .byte $0E   ; 
- D 0 - I - 0x015DE8 05:9DD8: 22        .byte $22   ; 
- D 0 - I - 0x015DE9 05:9DD9: 0C        .byte $0C   ; 
- D 0 - I - 0x015DEA 05:9DDA: 4E        .byte $4E   ; 
- D 0 - I - 0x015DEB 05:9DDB: 4E        .byte $4E   ; 
- D 0 - I - 0x015DEC 05:9DDC: 4A        .byte $4A   ; 
- D 0 - I - 0x015DED 05:9DDD: DB        .byte $DB   ; 
- D 0 - I - 0x015DEE 05:9DDE: 0E        .byte $0E   ; 
- D 0 - I - 0x015DEF 05:9DDF: 14        .byte $14   ; 
- D 0 - I - 0x015DF0 05:9DE0: 0E        .byte $0E   ; 
- D 0 - I - 0x015DF1 05:9DE1: 29        .byte $29   ; 
- D 0 - I - 0x015DF2 05:9DE2: 0E        .byte $0E   ; 
- D 0 - I - 0x015DF3 05:9DE3: 14        .byte $14   ; 
- D 0 - I - 0x015DF4 05:9DE4: 4E        .byte $4E   ; 
- D 0 - I - 0x015DF5 05:9DE5: 0E        .byte $0E   ; 



_off006_0x015DF6_09:
- D 0 - I - 0x015DF6 05:9DE6: DB        .byte $DB   ; 
- D 0 - I - 0x015DF7 05:9DE7: 35        .byte $35   ; 
- D 0 - I - 0x015DF8 05:9DE8: 4E        .byte $4E   ; 
- D 0 - I - 0x015DF9 05:9DE9: 4E        .byte $4E   ; 
- D 0 - I - 0x015DFA 05:9DEA: 4E        .byte $4E   ; 
- D 0 - I - 0x015DFB 05:9DEB: 1A        .byte $1A   ; 
- D 0 - I - 0x015DFC 05:9DEC: 1B        .byte $1B   ; 
- D 0 - I - 0x015DFD 05:9DED: DB        .byte $DB   ; 
- D 0 - I - 0x015DFE 05:9DEE: 1B        .byte $1B   ; 
- D 0 - I - 0x015DFF 05:9DEF: 34        .byte $34   ; 
- D 0 - I - 0x015E00 05:9DF0: 4E        .byte $4E   ; 
- D 0 - I - 0x015E01 05:9DF1: 06        .byte $06   ; 
- D 0 - I - 0x015E02 05:9DF2: C5        .byte $C5   ; 
- D 0 - I - 0x015E03 05:9DF3: 45        .byte $45   ; 
- D 0 - I - 0x015E04 05:9DF4: 05        .byte $05   ; 
- D 0 - I - 0x015E05 05:9DF5: 2E        .byte $2E   ; 
- D 0 - I - 0x015E06 05:9DF6: 4E        .byte $4E   ; 
- D 0 - I - 0x015E07 05:9DF7: 4E        .byte $4E   ; 
- D 0 - I - 0x015E08 05:9DF8: 0E        .byte $0E   ; 
- D 0 - I - 0x015E09 05:9DF9: CE        .byte $CE   ; 
- D 0 - I - 0x015E0A 05:9DFA: 0E        .byte $0E   ; 
- D 0 - I - 0x015E0B 05:9DFB: 14        .byte $14   ; 
- D 0 - I - 0x015E0C 05:9DFC: 0E        .byte $0E   ; 
- D 0 - I - 0x015E0D 05:9DFD: 14        .byte $14   ; 
- D 0 - I - 0x015E0E 05:9DFE: 0E        .byte $0E   ; 
- D 0 - I - 0x015E0F 05:9DFF: 14        .byte $14   ; 
- D 0 - I - 0x015E10 05:9E00: 0E        .byte $0E   ; 
- D 0 - I - 0x015E11 05:9E01: 1A        .byte $1A   ; 
- D 0 - I - 0x015E12 05:9E02: 1B        .byte $1B   ; 
- D 0 - I - 0x015E13 05:9E03: CE        .byte $CE   ; 
- D 0 - I - 0x015E14 05:9E04: 0E        .byte $0E   ; 
- D 0 - I - 0x015E15 05:9E05: 14        .byte $14   ; 
- D 0 - I - 0x015E16 05:9E06: 0E        .byte $0E   ; 
- D 0 - I - 0x015E17 05:9E07: 14        .byte $14   ; 
- D 0 - I - 0x015E18 05:9E08: 0E        .byte $0E   ; 
- D 0 - I - 0x015E19 05:9E09: 14        .byte $14   ; 
- D 0 - I - 0x015E1A 05:9E0A: 4E        .byte $4E   ; 
- D 0 - I - 0x015E1B 05:9E0B: 0E        .byte $0E   ; 
- D 0 - I - 0x015E1C 05:9E0C: DB        .byte $DB   ; 
- D 0 - I - 0x015E1D 05:9E0D: 4D        .byte $4D   ; 
- D 0 - I - 0x015E1E 05:9E0E: 4D        .byte $4D   ; 
- D 0 - I - 0x015E1F 05:9E0F: 4D        .byte $4D   ; 
- D 0 - I - 0x015E20 05:9E10: 0D        .byte $0D   ; 
- D 0 - I - 0x015E21 05:9E11: 1A        .byte $1A   ; 
- D 0 - I - 0x015E22 05:9E12: 1B        .byte $1B   ; 
- D 0 - I - 0x015E23 05:9E13: C5        .byte $C5   ; 
- D 0 - I - 0x015E24 05:9E14: 05        .byte $05   ; 
- D 0 - I - 0x015E25 05:9E15: 1B        .byte $1B   ; 
- D 0 - I - 0x015E26 05:9E16: 0C        .byte $0C   ; 
- D 0 - I - 0x015E27 05:9E17: 4E        .byte $4E   ; 
- D 0 - I - 0x015E28 05:9E18: 0E        .byte $0E   ; 
- D 0 - I - 0x015E29 05:9E19: 4A        .byte $4A   ; 
- D 0 - I - 0x015E2A 05:9E1A: 0A        .byte $0A   ; 
- D 0 - I - 0x015E2B 05:9E1B: DB        .byte $DB   ; 
- D 0 - I - 0x015E2C 05:9E1C: 1B        .byte $1B   ; 
- D 0 - I - 0x015E2D 05:9E1D: 35        .byte $35   ; 
- D 0 - I - 0x015E2E 05:9E1E: 4E        .byte $4E   ; 
- D 0 - I - 0x015E2F 05:9E1F: 06        .byte $06   ; 
- D 0 - I - 0x015E30 05:9E20: 45        .byte $45   ; 
- D 0 - I - 0x015E31 05:9E21: C5        .byte $C5   ; 
- - - - - - 0x015E32 05:9E22: 4E        .byte $4E   ; 
- - - - - - 0x015E33 05:9E23: 4E        .byte $4E   ; 
- - - - - - 0x015E34 05:9E24: 4E        .byte $4E   ; 
- - - - - - 0x015E35 05:9E25: 0E        .byte $0E   ; 
- - - - - - 0x015E36 05:9E26: 45        .byte $45   ; 



_off006_0x015E37_0A:
- D 0 - I - 0x015E37 05:9E27: DB        .byte $DB   ; 
- D 0 - I - 0x015E38 05:9E28: 5B        .byte $5B   ; 
- D 0 - I - 0x015E39 05:9E29: 34        .byte $34   ; 
- D 0 - I - 0x015E3A 05:9E2A: 4E        .byte $4E   ; 
- D 0 - I - 0x015E3B 05:9E2B: 4E        .byte $4E   ; 
- D 0 - I - 0x015E3C 05:9E2C: 1A        .byte $1A   ; 
- D 0 - I - 0x015E3D 05:9E2D: 1B        .byte $1B   ; 
- D 0 - I - 0x015E3E 05:9E2E: DB        .byte $DB   ; 
- D 0 - I - 0x015E3F 05:9E2F: 5B        .byte $5B   ; 
- D 0 - I - 0x015E40 05:9E30: 35        .byte $35   ; 
- D 0 - I - 0x015E41 05:9E31: 4E        .byte $4E   ; 
- D 0 - I - 0x015E42 05:9E32: 4E        .byte $4E   ; 
- D 0 - I - 0x015E43 05:9E33: 1A        .byte $1A   ; 
- D 0 - I - 0x015E44 05:9E34: 1B        .byte $1B   ; 
- D 0 - I - 0x015E45 05:9E35: 9B        .byte $9B   ; 
- D 0 - I - 0x015E46 05:9E36: 35        .byte $35   ; 
- D 0 - I - 0x015E47 05:9E37: 4E        .byte $4E   ; 
- D 0 - I - 0x015E48 05:9E38: 4E        .byte $4E   ; 
- D 0 - I - 0x015E49 05:9E39: 4E        .byte $4E   ; 
- D 0 - I - 0x015E4A 05:9E3A: 0E        .byte $0E   ; 
- D 0 - I - 0x015E4B 05:9E3B: 33        .byte $33   ; 
- D 0 - I - 0x015E4C 05:9E3C: 1B        .byte $1B   ; 
- D 0 - I - 0x015E4D 05:9E3D: 9B        .byte $9B   ; 
- D 0 - I - 0x015E4E 05:9E3E: 34        .byte $34   ; 
- D 0 - I - 0x015E4F 05:9E3F: 4E        .byte $4E   ; 
- D 0 - I - 0x015E50 05:9E40: 4E        .byte $4E   ; 
- D 0 - I - 0x015E51 05:9E41: 4E        .byte $4E   ; 
- D 0 - I - 0x015E52 05:9E42: 0E        .byte $0E   ; 
- D 0 - I - 0x015E53 05:9E43: 32        .byte $32   ; 
- D 0 - I - 0x015E54 05:9E44: 1B        .byte $1B   ; 
- D 0 - I - 0x015E55 05:9E45: 9B        .byte $9B   ; 
- D 0 - I - 0x015E56 05:9E46: 34        .byte $34   ; 
- D 0 - I - 0x015E57 05:9E47: 4E        .byte $4E   ; 
- D 0 - I - 0x015E58 05:9E48: 4E        .byte $4E   ; 
- D 0 - I - 0x015E59 05:9E49: 4E        .byte $4E   ; 
- D 0 - I - 0x015E5A 05:9E4A: 0E        .byte $0E   ; 
- D 0 - I - 0x015E5B 05:9E4B: 1A        .byte $1A   ; 
- D 0 - I - 0x015E5C 05:9E4C: 1B        .byte $1B   ; 
- D 0 - I - 0x015E5D 05:9E4D: 9B        .byte $9B   ; 
- D 0 - I - 0x015E5E 05:9E4E: 35        .byte $35   ; 
- D 0 - I - 0x015E5F 05:9E4F: 4E        .byte $4E   ; 
- D 0 - I - 0x015E60 05:9E50: 4E        .byte $4E   ; 
- D 0 - I - 0x015E61 05:9E51: 4E        .byte $4E   ; 
- D 0 - I - 0x015E62 05:9E52: 0E        .byte $0E   ; 
- D 0 - I - 0x015E63 05:9E53: 1A        .byte $1A   ; 
- D 0 - I - 0x015E64 05:9E54: 1B        .byte $1B   ; 
- D 0 - I - 0x015E65 05:9E55: DB        .byte $DB   ; 
- D 0 - I - 0x015E66 05:9E56: 5B        .byte $5B   ; 
- D 0 - I - 0x015E67 05:9E57: 34        .byte $34   ; 
- D 0 - I - 0x015E68 05:9E58: 0E        .byte $0E   ; 
- D 0 - I - 0x015E69 05:9E59: 32        .byte $32   ; 
- D 0 - I - 0x015E6A 05:9E5A: DB        .byte $DB   ; 
- D 0 - I - 0x015E6B 05:9E5B: 5B        .byte $5B   ; 
- D 0 - I - 0x015E6C 05:9E5C: 35        .byte $35   ; 
- D 0 - I - 0x015E6D 05:9E5D: 0E        .byte $0E   ; 
- D 0 - I - 0x015E6E 05:9E5E: 33        .byte $33   ; 
- D 0 - I - 0x015E6F 05:9E5F: 5B        .byte $5B   ; 
- D 0 - I - 0x015E70 05:9E60: DB        .byte $DB   ; 
- D 0 - I - 0x015E71 05:9E61: 34        .byte $34   ; 
- D 0 - I - 0x015E72 05:9E62: 4E        .byte $4E   ; 
- D 0 - I - 0x015E73 05:9E63: 4E        .byte $4E   ; 
- D 0 - I - 0x015E74 05:9E64: 0E        .byte $0E   ; 
- D 0 - I - 0x015E75 05:9E65: 32        .byte $32   ; 
- D 0 - I - 0x015E76 05:9E66: DB        .byte $DB   ; 
- D 0 - I - 0x015E77 05:9E67: 35        .byte $35   ; 
- D 0 - I - 0x015E78 05:9E68: 4E        .byte $4E   ; 
- D 0 - I - 0x015E79 05:9E69: 4E        .byte $4E   ; 
- D 0 - I - 0x015E7A 05:9E6A: 0E        .byte $0E   ; 
- D 0 - I - 0x015E7B 05:9E6B: 33        .byte $33   ; 



_off006_0x015E7C_0B:
- D 0 - I - 0x015E7C 05:9E6C: DB        .byte $DB   ; 
- D 0 - I - 0x015E7D 05:9E6D: 5B        .byte $5B   ; 
- D 0 - I - 0x015E7E 05:9E6E: 07        .byte $07   ; 
- D 0 - I - 0x015E7F 05:9E6F: 4E        .byte $4E   ; 
- D 0 - I - 0x015E80 05:9E70: 4E        .byte $4E   ; 
- D 0 - I - 0x015E81 05:9E71: 4E        .byte $4E   ; 
- D 0 - I - 0x015E82 05:9E72: DB        .byte $DB   ; 
- D 0 - I - 0x015E83 05:9E73: 0E        .byte $0E   ; 
- D 0 - I - 0x015E84 05:9E74: 06        .byte $06   ; 
- D 0 - I - 0x015E85 05:9E75: 05        .byte $05   ; 
- D 0 - I - 0x015E86 05:9E76: 45        .byte $45   ; 
- D 0 - I - 0x015E87 05:9E77: 2F        .byte $2F   ; 
- D 0 - I - 0x015E88 05:9E78: 0E        .byte $0E   ; 
- D 0 - I - 0x015E89 05:9E79: 1A        .byte $1A   ; 
- D 0 - I - 0x015E8A 05:9E7A: 1B        .byte $1B   ; 
- D 0 - I - 0x015E8B 05:9E7B: DB        .byte $DB   ; 
- D 0 - I - 0x015E8C 05:9E7C: 0E        .byte $0E   ; 
- D 0 - I - 0x015E8D 05:9E7D: 06        .byte $06   ; 
- D 0 - I - 0x015E8E 05:9E7E: 05        .byte $05   ; 
- D 0 - I - 0x015E8F 05:9E7F: 45        .byte $45   ; 
- D 0 - I - 0x015E90 05:9E80: 2E        .byte $2E   ; 
- D 0 - I - 0x015E91 05:9E81: 0E        .byte $0E   ; 
- D 0 - I - 0x015E92 05:9E82: 1A        .byte $1A   ; 
- D 0 - I - 0x015E93 05:9E83: 1B        .byte $1B   ; 
- D 0 - I - 0x015E94 05:9E84: CA        .byte $CA   ; 
- D 0 - I - 0x015E95 05:9E85: 4A        .byte $4A   ; 
- D 0 - I - 0x015E96 05:9E86: 0A        .byte $0A   ; 
- D 0 - I - 0x015E97 05:9E87: 0E        .byte $0E   ; 
- D 0 - I - 0x015E98 05:9E88: 1A        .byte $1A   ; 
- D 0 - I - 0x015E99 05:9E89: DB        .byte $DB   ; 
- D 0 - I - 0x015E9A 05:9E8A: 5B        .byte $5B   ; 
- D 0 - I - 0x015E9B 05:9E8B: 15        .byte $15   ; 
- D 0 - I - 0x015E9C 05:9E8C: 45        .byte $45   ; 
- D 0 - I - 0x015E9D 05:9E8D: 45        .byte $45   ; 
- D 0 - I - 0x015E9E 05:9E8E: 45        .byte $45   ; 
- D 0 - I - 0x015E9F 05:9E8F: DB        .byte $DB   ; 
- D 0 - I - 0x015EA0 05:9E90: 4E        .byte $4E   ; 
- D 0 - I - 0x015EA1 05:9E91: 4E        .byte $4E   ; 
- D 0 - I - 0x015EA2 05:9E92: 4E        .byte $4E   ; 
- D 0 - I - 0x015EA3 05:9E93: 0E        .byte $0E   ; 
- D 0 - I - 0x015EA4 05:9E94: CA        .byte $CA   ; 
- D 0 - I - 0x015EA5 05:9E95: 4E        .byte $4E   ; 
- D 0 - I - 0x015EA6 05:9E96: 4E        .byte $4E   ; 
- D 0 - I - 0x015EA7 05:9E97: 4E        .byte $4E   ; 
- D 0 - I - 0x015EA8 05:9E98: 0E        .byte $0E   ; 
- D 0 - I - 0x015EA9 05:9E99: 1A        .byte $1A   ; 
- D 0 - I - 0x015EAA 05:9E9A: 1B        .byte $1B   ; 
- D 0 - I - 0x015EAB 05:9E9B: DB        .byte $DB   ; 
- D 0 - I - 0x015EAC 05:9E9C: 4E        .byte $4E   ; 
- D 0 - I - 0x015EAD 05:9E9D: 2C        .byte $2C   ; 
- D 0 - I - 0x015EAE 05:9E9E: 0E        .byte $0E   ; 
- D 0 - I - 0x015EAF 05:9E9F: 2C        .byte $2C   ; 
- D 0 - I - 0x015EB0 05:9EA0: 4E        .byte $4E   ; 
- D 0 - I - 0x015EB1 05:9EA1: 1A        .byte $1A   ; 
- D 0 - I - 0x015EB2 05:9EA2: 1B        .byte $1B   ; 
- D 0 - I - 0x015EB3 05:9EA3: CA        .byte $CA   ; 
- D 0 - I - 0x015EB4 05:9EA4: 4A        .byte $4A   ; 
- D 0 - I - 0x015EB5 05:9EA5: 4E        .byte $4E   ; 
- D 0 - I - 0x015EB6 05:9EA6: 06        .byte $06   ; 
- D 0 - I - 0x015EB7 05:9EA7: 45        .byte $45   ; 
- D 0 - I - 0x015EB8 05:9EA8: 45        .byte $45   ; 



_off006_0x015EB9_0C:
- D 0 - I - 0x015EB9 05:9EA9: 9B        .byte $9B   ; 
- D 0 - I - 0x015EBA 05:9EAA: 35        .byte $35   ; 
- D 0 - I - 0x015EBB 05:9EAB: 4E        .byte $4E   ; 
- D 0 - I - 0x015EBC 05:9EAC: 0E        .byte $0E   ; 
- D 0 - I - 0x015EBD 05:9EAD: 13        .byte $13   ; 
- D 0 - I - 0x015EBE 05:9EAE: 4E        .byte $4E   ; 
- D 0 - I - 0x015EBF 05:9EAF: 0E        .byte $0E   ; 
- D 0 - I - 0x015EC0 05:9EB0: 1A        .byte $1A   ; 
- D 0 - I - 0x015EC1 05:9EB1: 1B        .byte $1B   ; 
- D 0 - I - 0x015EC2 05:9EB2: F6        .byte $F6   ; 
- D 0 - I - 0x015EC3 05:9EB3: 76        .byte $76   ; 
- D 0 - I - 0x015EC4 05:9EB4: 0F        .byte $0F   ; 
- D 0 - I - 0x015EC5 05:9EB5: 4E        .byte $4E   ; 
- D 0 - I - 0x015EC6 05:9EB6: 1A        .byte $1A   ; 
- D 0 - I - 0x015EC7 05:9EB7: 1B        .byte $1B   ; 
- D 0 - I - 0x015EC8 05:9EB8: 5B        .byte $5B   ; 
- D 0 - I - 0x015EC9 05:9EB9: DB        .byte $DB   ; 
- D 0 - I - 0x015ECA 05:9EBA: 4D        .byte $4D   ; 
- D 0 - I - 0x015ECB 05:9EBB: 4D        .byte $4D   ; 
- D 0 - I - 0x015ECC 05:9EBC: 4D        .byte $4D   ; 
- D 0 - I - 0x015ECD 05:9EBD: 4D        .byte $4D   ; 
- D 0 - I - 0x015ECE 05:9EBE: 0D        .byte $0D   ; 
- D 0 - I - 0x015ECF 05:9EBF: CE        .byte $CE   ; 
- D 0 - I - 0x015ED0 05:9EC0: 4E        .byte $4E   ; 
- D 0 - I - 0x015ED1 05:9EC1: 0E        .byte $0E   ; 
- D 0 - I - 0x015ED2 05:9EC2: 30        .byte $30   ; 
- D 0 - I - 0x015ED3 05:9EC3: 45        .byte $45   ; 
- D 0 - I - 0x015ED4 05:9EC4: 45        .byte $45   ; 
- D 0 - I - 0x015ED5 05:9EC5: 05        .byte $05   ; 
- D 0 - I - 0x015ED6 05:9EC6: DB        .byte $DB   ; 
- D 0 - I - 0x015ED7 05:9EC7: F7        .byte $F7   ; 
- D 0 - I - 0x015ED8 05:9EC8: F7        .byte $F7   ; 
- D 0 - I - 0x015ED9 05:9EC9: 77        .byte $77   ; 
- D 0 - I - 0x015EDA 05:9ECA: 77        .byte $77   ; 
- D 0 - I - 0x015EDB 05:9ECB: 37        .byte $37   ; 
- D 0 - I - 0x015EDC 05:9ECC: 77        .byte $77   ; 
- D 0 - I - 0x015EDD 05:9ECD: 1A        .byte $1A   ; 
- D 0 - I - 0x015EDE 05:9ECE: 1B        .byte $1B   ; 
- D 0 - I - 0x015EDF 05:9ECF: DB        .byte $DB   ; 
- D 0 - I - 0x015EE0 05:9ED0: 1B        .byte $1B   ; 
- D 0 - I - 0x015EE1 05:9ED1: 34        .byte $34   ; 
- D 0 - I - 0x015EE2 05:9ED2: 4E        .byte $4E   ; 
- D 0 - I - 0x015EE3 05:9ED3: 4E        .byte $4E   ; 
- D 0 - I - 0x015EE4 05:9ED4: 0E        .byte $0E   ; 
- D 0 - I - 0x015EE5 05:9ED5: 1A        .byte $1A   ; 
- D 0 - I - 0x015EE6 05:9ED6: 1B        .byte $1B   ; 
- D 0 - I - 0x015EE7 05:9ED7: DB        .byte $DB   ; 
- D 0 - I - 0x015EE8 05:9ED8: 34        .byte $34   ; 
- D 0 - I - 0x015EE9 05:9ED9: 0E        .byte $0E   ; 
- D 0 - I - 0x015EEA 05:9EDA: 4E        .byte $4E   ; 
- D 0 - I - 0x015EEB 05:9EDB: 4E        .byte $4E   ; 
- D 0 - I - 0x015EEC 05:9EDC: 0E        .byte $0E   ; 
- D 0 - I - 0x015EED 05:9EDD: 1A        .byte $1A   ; 
- D 0 - I - 0x015EEE 05:9EDE: 1B        .byte $1B   ; 



_off006_0x015EEF_0D:
- D 0 - I - 0x015EEF 05:9EDF: C5        .byte $C5   ; 
- D 0 - I - 0x015EF0 05:9EE0: 45        .byte $45   ; 
- D 0 - I - 0x015EF1 05:9EE1: 0B        .byte $0B   ; 
- D 0 - I - 0x015EF2 05:9EE2: 4E        .byte $4E   ; 
- D 0 - I - 0x015EF3 05:9EE3: 4E        .byte $4E   ; 
- D 0 - I - 0x015EF4 05:9EE4: 4E        .byte $4E   ; 
- D 0 - I - 0x015EF5 05:9EE5: DB        .byte $DB   ; 
- D 0 - I - 0x015EF6 05:9EE6: 0E        .byte $0E   ; 
- D 0 - I - 0x015EF7 05:9EE7: 06        .byte $06   ; 
- D 0 - I - 0x015EF8 05:9EE8: 45        .byte $45   ; 
- D 0 - I - 0x015EF9 05:9EE9: 07        .byte $07   ; 
- D 0 - I - 0x015EFA 05:9EEA: 4E        .byte $4E   ; 
- D 0 - I - 0x015EFB 05:9EEB: 4E        .byte $4E   ; 
- D 0 - I - 0x015EFC 05:9EEC: 9B        .byte $9B   ; 
- D 0 - I - 0x015EFD 05:9EED: 27        .byte $27   ; 
- D 0 - I - 0x015EFE 05:9EEE: 4E        .byte $4E   ; 
- D 0 - I - 0x015EFF 05:9EEF: 4E        .byte $4E   ; 
- D 0 - I - 0x015F00 05:9EF0: 4E        .byte $4E   ; 
- D 0 - I - 0x015F01 05:9EF1: 0E        .byte $0E   ; 
- D 0 - I - 0x015F02 05:9EF2: 1A        .byte $1A   ; 
- D 0 - I - 0x015F03 05:9EF3: 1B        .byte $1B   ; 
- D 0 - I - 0x015F04 05:9EF4: 9B        .byte $9B   ; 
- D 0 - I - 0x015F05 05:9EF5: 27        .byte $27   ; 
- D 0 - I - 0x015F06 05:9EF6: 4E        .byte $4E   ; 
- D 0 - I - 0x015F07 05:9EF7: 4E        .byte $4E   ; 
- D 0 - I - 0x015F08 05:9EF8: 4E        .byte $4E   ; 
- D 0 - I - 0x015F09 05:9EF9: 4E        .byte $4E   ; 
- D 0 - I - 0x015F0A 05:9EFA: 0E        .byte $0E   ; 
- D 0 - I - 0x015F0B 05:9EFB: DB        .byte $DB   ; 
- D 0 - I - 0x015F0C 05:9EFC: 1B        .byte $1B   ; 
- D 0 - I - 0x015F0D 05:9EFD: 27        .byte $27   ; 
- D 0 - I - 0x015F0E 05:9EFE: 07        .byte $07   ; 
- D 0 - I - 0x015F0F 05:9EFF: 4E        .byte $4E   ; 
- D 0 - I - 0x015F10 05:9F00: 1A        .byte $1A   ; 
- D 0 - I - 0x015F11 05:9F01: 5B        .byte $5B   ; 
- D 0 - I - 0x015F12 05:9F02: 1B        .byte $1B   ; 
- D 0 - I - 0x015F13 05:9F03: CE        .byte $CE   ; 
- D 0 - I - 0x015F14 05:9F04: 4E        .byte $4E   ; 
- D 0 - I - 0x015F15 05:9F05: 4E        .byte $4E   ; 
- D 0 - I - 0x015F16 05:9F06: 4E        .byte $4E   ; 
- D 0 - I - 0x015F17 05:9F07: 33        .byte $33   ; 
- D 0 - I - 0x015F18 05:9F08: 5B        .byte $5B   ; 
- D 0 - I - 0x015F19 05:9F09: DB        .byte $DB   ; 
- D 0 - I - 0x015F1A 05:9F0A: 5B        .byte $5B   ; 
- D 0 - I - 0x015F1B 05:9F0B: 1B        .byte $1B   ; 
- D 0 - I - 0x015F1C 05:9F0C: 0E        .byte $0E   ; 
- D 0 - I - 0x015F1D 05:9F0D: 15        .byte $15   ; 
- D 0 - I - 0x015F1E 05:9F0E: 48        .byte $48   ; 
- D 0 - I - 0x015F1F 05:9F0F: 48        .byte $48   ; 
- D 0 - I - 0x015F20 05:9F10: DB        .byte $DB   ; 
- D 0 - I - 0x015F21 05:9F11: 0E        .byte $0E   ; 
- D 0 - I - 0x015F22 05:9F12: 2D        .byte $2D   ; 
- D 0 - I - 0x015F23 05:9F13: 0C        .byte $0C   ; 
- D 0 - I - 0x015F24 05:9F14: 4E        .byte $4E   ; 
- D 0 - I - 0x015F25 05:9F15: 4E        .byte $4E   ; 
- D 0 - I - 0x015F26 05:9F16: 4A        .byte $4A   ; 
- D 0 - I - 0x015F27 05:9F17: DB        .byte $DB   ; 
- D 0 - I - 0x015F28 05:9F18: 0E        .byte $0E   ; 
- D 0 - I - 0x015F29 05:9F19: 1C        .byte $1C   ; 
- D 0 - I - 0x015F2A 05:9F1A: 1F        .byte $1F   ; 
- D 0 - I - 0x015F2B 05:9F1B: 0E        .byte $0E   ; 
- D 0 - I - 0x015F2C 05:9F1C: 1E        .byte $1E   ; 
- D 0 - I - 0x015F2D 05:9F1D: 20        .byte $20   ; 
- D 0 - I - 0x015F2E 05:9F1E: 0E        .byte $0E   ; 
- D 0 - I - 0x015F2F 05:9F1F: 1A        .byte $1A   ; 
- D 0 - I - 0x015F30 05:9F20: 1B        .byte $1B   ; 



_off006_0x015F31_0E:
- D 0 - I - 0x015F31 05:9F21: C8        .byte $C8   ; 
- D 0 - I - 0x015F32 05:9F22: 48        .byte $48   ; 
- D 0 - I - 0x015F33 05:9F23: 08        .byte $08   ; 
- D 0 - I - 0x015F34 05:9F24: C5        .byte $C5   ; 
- D 0 - I - 0x015F35 05:9F25: 45        .byte $45   ; 
- D 0 - I - 0x015F36 05:9F26: 45        .byte $45   ; 
- D 0 - I - 0x015F37 05:9F27: 08        .byte $08   ; 
- D 0 - I - 0x015F38 05:9F28: 48        .byte $48   ; 
- D 0 - I - 0x015F39 05:9F29: 48        .byte $48   ; 
- D 0 - I - 0x015F3A 05:9F2A: DB        .byte $DB   ; 
- D 0 - I - 0x015F3B 05:9F2B: 35        .byte $35   ; 
- D 0 - I - 0x015F3C 05:9F2C: CE        .byte $CE   ; 
- D 0 - I - 0x015F3D 05:9F2D: 4E        .byte $4E   ; 
- D 0 - I - 0x015F3E 05:9F2E: 4E        .byte $4E   ; 
- D 0 - I - 0x015F3F 05:9F2F: 4E        .byte $4E   ; 
- D 0 - I - 0x015F40 05:9F30: 0E        .byte $0E   ; 
- D 0 - I - 0x015F41 05:9F31: 33        .byte $33   ; 
- D 0 - I - 0x015F42 05:9F32: 1B        .byte $1B   ; 
- D 0 - I - 0x015F43 05:9F33: DB        .byte $DB   ; 
- D 0 - I - 0x015F44 05:9F34: 0E        .byte $0E   ; 
- D 0 - I - 0x015F45 05:9F35: 33        .byte $33   ; 
- D 0 - I - 0x015F46 05:9F36: 5B        .byte $5B   ; 
- D 0 - I - 0x015F47 05:9F37: 27        .byte $27   ; 
- D 0 - I - 0x015F48 05:9F38: 4E        .byte $4E   ; 
- D 0 - I - 0x015F49 05:9F39: 1A        .byte $1A   ; 
- D 0 - I - 0x015F4A 05:9F3A: 1B        .byte $1B   ; 
- D 0 - I - 0x015F4B 05:9F3B: DB        .byte $DB   ; 
- D 0 - I - 0x015F4C 05:9F3C: 4E        .byte $4E   ; 
- D 0 - I - 0x015F4D 05:9F3D: 4E        .byte $4E   ; 
- D 0 - I - 0x015F4E 05:9F3E: 1C        .byte $1C   ; 
- D 0 - I - 0x015F4F 05:9F3F: 1F        .byte $1F   ; 
- D 0 - I - 0x015F50 05:9F40: 0E        .byte $0E   ; 
- D 0 - I - 0x015F51 05:9F41: 1A        .byte $1A   ; 
- D 0 - I - 0x015F52 05:9F42: 1B        .byte $1B   ; 
- D 0 - I - 0x015F53 05:9F43: DB        .byte $DB   ; 
- D 0 - I - 0x015F54 05:9F44: 5B        .byte $5B   ; 
- D 0 - I - 0x015F55 05:9F45: 1B        .byte $1B   ; 
- D 0 - I - 0x015F56 05:9F46: 35        .byte $35   ; 
- D 0 - I - 0x015F57 05:9F47: 4E        .byte $4E   ; 
- D 0 - I - 0x015F58 05:9F48: 33        .byte $33   ; 
- D 0 - I - 0x015F59 05:9F49: DB        .byte $DB   ; 
- D 0 - I - 0x015F5A 05:9F4A: 5B        .byte $5B   ; 
- D 0 - I - 0x015F5B 05:9F4B: 1B        .byte $1B   ; 
- D 0 - I - 0x015F5C 05:9F4C: 34        .byte $34   ; 
- D 0 - I - 0x015F5D 05:9F4D: 4E        .byte $4E   ; 
- D 0 - I - 0x015F5E 05:9F4E: 32        .byte $32   ; 
- D 0 - I - 0x015F5F 05:9F4F: DB        .byte $DB   ; 
- D 0 - I - 0x015F60 05:9F50: 4E        .byte $4E   ; 
- D 0 - I - 0x015F61 05:9F51: 4E        .byte $4E   ; 
- D 0 - I - 0x015F62 05:9F52: 4E        .byte $4E   ; 
- D 0 - I - 0x015F63 05:9F53: 0E        .byte $0E   ; 
- D 0 - I - 0x015F64 05:9F54: 33        .byte $33   ; 



_off006_0x015F65_0F:
- D 0 - I - 0x015F65 05:9F55: 9B        .byte $9B   ; 
- D 0 - I - 0x015F66 05:9F56: 5B        .byte $5B   ; 
- D 0 - I - 0x015F67 05:9F57: 34        .byte $34   ; 
- D 0 - I - 0x015F68 05:9F58: 4E        .byte $4E   ; 
- D 0 - I - 0x015F69 05:9F59: 0E        .byte $0E   ; 
- D 0 - I - 0x015F6A 05:9F5A: 32        .byte $32   ; 
- D 0 - I - 0x015F6B 05:9F5B: DB        .byte $DB   ; 
- D 0 - I - 0x015F6C 05:9F5C: 1B        .byte $1B   ; 
- D 0 - I - 0x015F6D 05:9F5D: 35        .byte $35   ; 
- D 0 - I - 0x015F6E 05:9F5E: 4E        .byte $4E   ; 
- D 0 - I - 0x015F6F 05:9F5F: 0E        .byte $0E   ; 
- D 0 - I - 0x015F70 05:9F60: 33        .byte $33   ; 
- D 0 - I - 0x015F71 05:9F61: 1B        .byte $1B   ; 
- D 0 - I - 0x015F72 05:9F62: DB        .byte $DB   ; 
- D 0 - I - 0x015F73 05:9F63: 0E        .byte $0E   ; 
- D 0 - I - 0x015F74 05:9F64: 1E        .byte $1E   ; 
- D 0 - I - 0x015F75 05:9F65: 20        .byte $20   ; 
- D 0 - I - 0x015F76 05:9F66: 0E        .byte $0E   ; 
- D 0 - I - 0x015F77 05:9F67: 1C        .byte $1C   ; 
- D 0 - I - 0x015F78 05:9F68: 1F        .byte $1F   ; 
- D 0 - I - 0x015F79 05:9F69: 0E        .byte $0E   ; 
- D 0 - I - 0x015F7A 05:9F6A: 1A        .byte $1A   ; 
- D 0 - I - 0x015F7B 05:9F6B: 1B        .byte $1B   ; 
- D 0 - I - 0x015F7C 05:9F6C: DB        .byte $DB   ; 
- D 0 - I - 0x015F7D 05:9F6D: 4E        .byte $4E   ; 
- D 0 - I - 0x015F7E 05:9F6E: 4E        .byte $4E   ; 
- D 0 - I - 0x015F7F 05:9F6F: 1E        .byte $1E   ; 
- D 0 - I - 0x015F80 05:9F70: 20        .byte $20   ; 
- D 0 - I - 0x015F81 05:9F71: 0E        .byte $0E   ; 
- D 0 - I - 0x015F82 05:9F72: 1A        .byte $1A   ; 
- D 0 - I - 0x015F83 05:9F73: 1B        .byte $1B   ; 
- D 0 - I - 0x015F84 05:9F74: D9        .byte $D9   ; 
- D 0 - I - 0x015F85 05:9F75: 59        .byte $59   ; 
- D 0 - I - 0x015F86 05:9F76: 19        .byte $19   ; 
- D 0 - I - 0x015F87 05:9F77: 4E        .byte $4E   ; 
- D 0 - I - 0x015F88 05:9F78: 4E        .byte $4E   ; 
- D 0 - I - 0x015F89 05:9F79: 59        .byte $59   ; 
- D 0 - I - 0x015F8A 05:9F7A: DB        .byte $DB   ; 
- D 0 - I - 0x015F8B 05:9F7B: 0E        .byte $0E   ; 
- D 0 - I - 0x015F8C 05:9F7C: 2D        .byte $2D   ; 
- D 0 - I - 0x015F8D 05:9F7D: 0C        .byte $0C   ; 
- D 0 - I - 0x015F8E 05:9F7E: 4E        .byte $4E   ; 
- D 0 - I - 0x015F8F 05:9F7F: 4E        .byte $4E   ; 
- D 0 - I - 0x015F90 05:9F80: 1A        .byte $1A   ; 
- D 0 - I - 0x015F91 05:9F81: 1B        .byte $1B   ; 
- D 0 - I - 0x015F92 05:9F82: CE        .byte $CE   ; 
- D 0 - I - 0x015F93 05:9F83: 4E        .byte $4E   ; 
- D 0 - I - 0x015F94 05:9F84: 0E        .byte $0E   ; 
- D 0 - I - 0x015F95 05:9F85: 31        .byte $31   ; 
- D 0 - I - 0x015F96 05:9F86: 05        .byte $05   ; 
- D 0 - I - 0x015F97 05:9F87: C5        .byte $C5   ; 
- D 0 - I - 0x015F98 05:9F88: 45        .byte $45   ; 
- D 0 - I - 0x015F99 05:9F89: 07        .byte $07   ; 
- D 0 - I - 0x015F9A 05:9F8A: 4E        .byte $4E   ; 
- D 0 - I - 0x015F9B 05:9F8B: 28        .byte $28   ; 
- D 0 - I - 0x015F9C 05:9F8C: 59        .byte $59   ; 
- D 0 - I - 0x015F9D 05:9F8D: 19        .byte $19   ; 
- D 0 - I - 0x015F9E 05:9F8E: DB        .byte $DB   ; 
- D 0 - I - 0x015F9F 05:9F8F: 4D        .byte $4D   ; 
- D 0 - I - 0x015FA0 05:9F90: 4D        .byte $4D   ; 
- D 0 - I - 0x015FA1 05:9F91: 12        .byte $12   ; 
- D 0 - I - 0x015FA2 05:9F92: 4D        .byte $4D   ; 
- D 0 - I - 0x015FA3 05:9F93: 1A        .byte $1A   ; 
- D 0 - I - 0x015FA4 05:9F94: 1B        .byte $1B   ; 
- D 0 - I - 0x015FA5 05:9F95: DB        .byte $DB   ; 
- D 0 - I - 0x015FA6 05:9F96: 77        .byte $77   ; 
- D 0 - I - 0x015FA7 05:9F97: 77        .byte $77   ; 
- D 0 - I - 0x015FA8 05:9F98: 77        .byte $77   ; 
- D 0 - I - 0x015FA9 05:9F99: 37        .byte $37   ; 
- D 0 - I - 0x015FAA 05:9F9A: 1A        .byte $1A   ; 
- D 0 - I - 0x015FAB 05:9F9B: 1B        .byte $1B   ; 



tbl_9F9C:
- D 0 - - - 0x015FAC 05:9F9C: 18 94     .word off_9418



tbl_9F9E:
- D 0 - - - 0x015FAE 05:9F9E: D8 9B     .word off_9BD8



tbl_9FA0_tiles_id:      ; 78 (4Eh) bytes
; bzk if you change size of this table, make changes to 0x0164A1 as well
- D 0 - I - 0x015FB0 05:9FA0: E0        .byte $E0   ; 
- D 0 - I - 0x015FB1 05:9FA1: F5        .byte $F5   ; 
- D 0 - I - 0x015FB2 05:9FA2: F5        .byte $F5   ; 
- D 0 - I - 0x015FB3 05:9FA3: F5        .byte $F5   ; 
- D 0 - I - 0x015FB4 05:9FA4: F5        .byte $F5   ; 
- D 0 - I - 0x015FB5 05:9FA5: B8        .byte $B8   ; 
- D 0 - I - 0x015FB6 05:9FA6: F5        .byte $F5   ; 
- D 0 - I - 0x015FB7 05:9FA7: D4        .byte $D4   ; 
- D 0 - I - 0x015FB8 05:9FA8: F5        .byte $F5   ; 
- D 0 - I - 0x015FB9 05:9FA9: F5        .byte $F5   ; 
- D 0 - I - 0x015FBA 05:9FAA: F5        .byte $F5   ; 
- D 0 - I - 0x015FBB 05:9FAB: C4        .byte $C4   ; 
- D 0 - I - 0x015FBC 05:9FAC: DE        .byte $DE   ; 
- D 0 - I - 0x015FBD 05:9FAD: DE        .byte $DE   ; 
- D 0 - I - 0x015FBE 05:9FAE: BC        .byte $BC   ; 
- D 0 - I - 0x015FBF 05:9FAF: C8        .byte $C8   ; 
- D 0 - I - 0x015FC0 05:9FB0: DE        .byte $DE   ; 
- D 0 - I - 0x015FC1 05:9FB1: BC        .byte $BC   ; 
- D 0 - I - 0x015FC2 05:9FB2: DE        .byte $DE   ; 
- D 0 - I - 0x015FC3 05:9FB3: DE        .byte $DE   ; 
- D 0 - I - 0x015FC4 05:9FB4: F5        .byte $F5   ; 
- D 0 - I - 0x015FC5 05:9FB5: DC        .byte $DC   ; 
- D 0 - I - 0x015FC6 05:9FB6: C4        .byte $C4   ; 
- D 0 - I - 0x015FC7 05:9FB7: DE        .byte $DE   ; 
- D 0 - I - 0x015FC8 05:9FB8: C8        .byte $C8   ; 
- D 0 - I - 0x015FC9 05:9FB9: DE        .byte $DE   ; 
- D 0 - I - 0x015FCA 05:9FBA: BC        .byte $BC   ; 
- D 0 - I - 0x015FCB 05:9FBB: C8        .byte $C8   ; 
- D 0 - I - 0x015FCC 05:9FBC: DE        .byte $DE   ; 
- D 0 - I - 0x015FCD 05:9FBD: DE        .byte $DE   ; 
- D 0 - I - 0x015FCE 05:9FBE: F5        .byte $F5   ; 
- D 0 - I - 0x015FCF 05:9FBF: DC        .byte $DC   ; 
- D 0 - I - 0x015FD0 05:9FC0: DC        .byte $DC   ; 
- D 0 - I - 0x015FD1 05:9FC1: 00        .byte $00   ; 
- D 0 - I - 0x015FD2 05:9FC2: C0        .byte $C0   ; 
- D 0 - I - 0x015FD3 05:9FC3: D0        .byte $D0   ; 
- D 0 - I - 0x015FD4 05:9FC4: DC        .byte $DC   ; 
- D 0 - I - 0x015FD5 05:9FC5: 00        .byte $00   ; 
- D 0 - I - 0x015FD6 05:9FC6: F5        .byte $F5   ; 
- D 0 - I - 0x015FD7 05:9FC7: DC        .byte $DC   ; 
- D 0 - I - 0x015FD8 05:9FC8: CC        .byte $CC   ; 
- D 0 - I - 0x015FD9 05:9FC9: 00        .byte $00   ; 
- D 0 - I - 0x015FDA 05:9FCA: F5        .byte $F5   ; 
- D 0 - I - 0x015FDB 05:9FCB: DC        .byte $DC   ; 
- D 0 - I - 0x015FDC 05:9FCC: DC        .byte $DC   ; 
- D 0 - I - 0x015FDD 05:9FCD: 00        .byte $00   ; 
- D 0 - I - 0x015FDE 05:9FCE: F5        .byte $F5   ; 
- D 0 - I - 0x015FDF 05:9FCF: CC        .byte $CC   ; 
- D 0 - I - 0x015FE0 05:9FD0: D0        .byte $D0   ; 
- D 0 - I - 0x015FE1 05:9FD1: 00        .byte $00   ; 
- D 0 - I - 0x015FE2 05:9FD2: F5        .byte $F5   ; 
- D 0 - I - 0x015FE3 05:9FD3: DC        .byte $DC   ; 
- D 0 - I - 0x015FE4 05:9FD4: DC        .byte $DC   ; 
- D 0 - I - 0x015FE5 05:9FD5: 00        .byte $00   ; 
- D 0 - I - 0x015FE6 05:9FD6: C0        .byte $C0   ; 
- D 0 - I - 0x015FE7 05:9FD7: D0        .byte $D0   ; 
- D 0 - I - 0x015FE8 05:9FD8: DC        .byte $DC   ; 
- D 0 - I - 0x015FE9 05:9FD9: 00        .byte $00   ; 
- D 0 - I - 0x015FEA 05:9FDA: F5        .byte $F5   ; 
- D 0 - I - 0x015FEB 05:9FDB: DC        .byte $DC   ; 
- D 0 - I - 0x015FEC 05:9FDC: CC        .byte $CC   ; 
- D 0 - I - 0x015FED 05:9FDD: 00        .byte $00   ; 
- D 0 - I - 0x015FEE 05:9FDE: F5        .byte $F5   ; 
- D 0 - I - 0x015FEF 05:9FDF: DC        .byte $DC   ; 
- D 0 - I - 0x015FF0 05:9FE0: DC        .byte $DC   ; 
- D 0 - I - 0x015FF1 05:9FE1: 00        .byte $00   ; 
- D 0 - I - 0x015FF2 05:9FE2: D8        .byte $D8   ; 
- D 0 - I - 0x015FF3 05:9FE3: CC        .byte $CC   ; 
- D 0 - I - 0x015FF4 05:9FE4: D0        .byte $D0   ; 
- D 0 - I - 0x015FF5 05:9FE5: 00        .byte $00   ; 
- D 0 - I - 0x015FF6 05:9FE6: F5        .byte $F5   ; 
- D 0 - I - 0x015FF7 05:9FE7: DC        .byte $DC   ; 
- D 0 - I - 0x015FF8 05:9FE8: DC        .byte $DC   ; 
- D 0 - I - 0x015FF9 05:9FE9: 00        .byte $00   ; 
- D 0 - I - 0x015FFA 05:9FEA: F5        .byte $F5   ; 
- D 0 - I - 0x015FFB 05:9FEB: DC        .byte $DC   ; 
- D 0 - I - 0x015FFC 05:9FEC: DC        .byte $DC   ; 
- D 0 - I - 0x015FFD 05:9FED: 00        .byte $00   ; 



off_9FEE_00:
- D 0 - I - 0x015FFE 05:9FEE: 88        .byte $88   ; 
- D 0 - I - 0x015FFF 05:9FEF: 74        .byte $74   ; 
- D 0 - I - 0x016000 05:9FF0: 8A        .byte $8A   ; 
- D 0 - I - 0x016001 05:9FF1: 24        .byte $24   ; 
- D 0 - I - 0x016002 05:9FF2: 87        .byte $87   ; 
- D 0 - I - 0x016003 05:9FF3: 87        .byte $87   ; 
- D 0 - I - 0x016004 05:9FF4: 75        .byte $75   ; 
- D 0 - I - 0x016005 05:9FF5: 89        .byte $89   ; 
- D 0 - I - 0x016006 05:9FF6: 24        .byte $24   ; 
- D 0 - I - 0x016007 05:9FF7: 8B        .byte $8B   ; 
- D 0 - I - 0x016008 05:9FF8: 87        .byte $87   ; 
- D 0 - I - 0x016009 05:9FF9: 87        .byte $87   ; 
- D 0 - I - 0x01600A 05:9FFA: 88        .byte $88   ; 
- D 0 - I - 0x01600B 05:9FFB: A4        .byte $A4   ; 
- D 0 - I - 0x01600C 05:9FFC: 8A        .byte $8A   ; 
- D 0 - I - 0x01600D 05:9FFD: A6        .byte $A6   ; 
- D 0 - I - 0x01600E 05:9FFE: 87        .byte $87   ; 
- D 0 - I - 0x01600F 05:9FFF: 87        .byte $87   ; 
- D 1 - I - 0x016010 05:A000: A5        .byte $A5   ; 
- D 1 - I - 0x016011 05:A001: 89        .byte $89   ; 
- D 1 - I - 0x016012 05:A002: A7        .byte $A7   ; 
- D 1 - I - 0x016013 05:A003: 8B        .byte $8B   ; 
- D 1 - I - 0x016014 05:A004: 87        .byte $87   ; 
- D 1 - I - 0x016015 05:A005: 87        .byte $87   ; 
- D 1 - I - 0x016016 05:A006: 88        .byte $88   ; 
- D 1 - I - 0x016017 05:A007: AC        .byte $AC   ; 
- D 1 - I - 0x016018 05:A008: 8A        .byte $8A   ; 
- D 1 - I - 0x016019 05:A009: AE        .byte $AE   ; 
- D 1 - I - 0x01601A 05:A00A: 87        .byte $87   ; 
- D 1 - I - 0x01601B 05:A00B: 87        .byte $87   ; 
- D 1 - I - 0x01601C 05:A00C: AD        .byte $AD   ; 
- D 1 - I - 0x01601D 05:A00D: 89        .byte $89   ; 
- D 1 - I - 0x01601E 05:A00E: AF        .byte $AF   ; 
- D 1 - I - 0x01601F 05:A00F: 8B        .byte $8B   ; 
- D 1 - I - 0x016020 05:A010: 87        .byte $87   ; 
- D 1 - I - 0x016021 05:A011: 87        .byte $87   ; 
- D 1 - I - 0x016022 05:A012: DF        .byte $DF   ; 
- D 1 - I - 0x016023 05:A013: DF        .byte $DF   ; 
- D 1 - I - 0x016024 05:A014: DF        .byte $DF   ; 
- D 1 - I - 0x016025 05:A015: DF        .byte $DF   ; 
- D 1 - I - 0x016026 05:A016: F5        .byte $F5   ; 
- D 1 - I - 0x016027 05:A017: F5        .byte $F5   ; 
- D 1 - I - 0x016028 05:A018: DF        .byte $DF   ; 
- D 1 - I - 0x016029 05:A019: DF        .byte $DF   ; 
- D 1 - I - 0x01602A 05:A01A: DF        .byte $DF   ; 
- D 1 - I - 0x01602B 05:A01B: DF        .byte $DF   ; 
- D 1 - I - 0x01602C 05:A01C: F5        .byte $F5   ; 
- D 1 - I - 0x01602D 05:A01D: F5        .byte $F5   ; 
- D 1 - I - 0x01602E 05:A01E: DF        .byte $DF   ; 
- D 1 - I - 0x01602F 05:A01F: 24        .byte $24   ; 
- D 1 - I - 0x016030 05:A020: DF        .byte $DF   ; 
- D 1 - I - 0x016031 05:A021: 92        .byte $92   ; 
- D 1 - I - 0x016032 05:A022: F5        .byte $F5   ; 
- D 1 - I - 0x016033 05:A023: F5        .byte $F5   ; 
- D 1 - I - 0x016034 05:A024: 24        .byte $24   ; 
- D 1 - I - 0x016035 05:A025: DF        .byte $DF   ; 
- D 1 - I - 0x016036 05:A026: 93        .byte $93   ; 
- D 1 - I - 0x016037 05:A027: DF        .byte $DF   ; 
- D 1 - I - 0x016038 05:A028: F5        .byte $F5   ; 
- D 1 - I - 0x016039 05:A029: F5        .byte $F5   ; 



off_A02A_01:
- D 1 - I - 0x01603A 05:A02A: 82        .byte $82   ; 
- D 1 - I - 0x01603B 05:A02B: 82        .byte $82   ; 
- D 1 - I - 0x01603C 05:A02C: 83        .byte $83   ; 
- D 1 - I - 0x01603D 05:A02D: 24        .byte $24   ; 
- D 1 - I - 0x01603E 05:A02E: 85        .byte $85   ; 
- D 1 - I - 0x01603F 05:A02F: 76        .byte $76   ; 
- D 1 - I - 0x016040 05:A030: 82        .byte $82   ; 
- D 1 - I - 0x016041 05:A031: 82        .byte $82   ; 
- D 1 - I - 0x016042 05:A032: 24        .byte $24   ; 
- D 1 - I - 0x016043 05:A033: 84        .byte $84   ; 
- D 1 - I - 0x016044 05:A034: 77        .byte $77   ; 
- D 1 - I - 0x016045 05:A035: 86        .byte $86   ; 
- D 1 - I - 0x016046 05:A036: 82        .byte $82   ; 
- D 1 - I - 0x016047 05:A037: 82        .byte $82   ; 
- D 1 - I - 0x016048 05:A038: 83        .byte $83   ; 
- D 1 - I - 0x016049 05:A039: A0        .byte $A0   ; 
- D 1 - I - 0x01604A 05:A03A: 85        .byte $85   ; 
- D 1 - I - 0x01604B 05:A03B: A2        .byte $A2   ; 
- D 1 - I - 0x01604C 05:A03C: 82        .byte $82   ; 
- D 1 - I - 0x01604D 05:A03D: 82        .byte $82   ; 
- D 1 - I - 0x01604E 05:A03E: A1        .byte $A1   ; 
- D 1 - I - 0x01604F 05:A03F: 84        .byte $84   ; 
- D 1 - I - 0x016050 05:A040: A3        .byte $A3   ; 
- D 1 - I - 0x016051 05:A041: 86        .byte $86   ; 
- D 1 - I - 0x016052 05:A042: 82        .byte $82   ; 
- D 1 - I - 0x016053 05:A043: 82        .byte $82   ; 
- D 1 - I - 0x016054 05:A044: 83        .byte $83   ; 
- D 1 - I - 0x016055 05:A045: AC        .byte $AC   ; 
- D 1 - I - 0x016056 05:A046: 85        .byte $85   ; 
- D 1 - I - 0x016057 05:A047: AE        .byte $AE   ; 
- D 1 - I - 0x016058 05:A048: 82        .byte $82   ; 
- D 1 - I - 0x016059 05:A049: 82        .byte $82   ; 
- D 1 - I - 0x01605A 05:A04A: AD        .byte $AD   ; 
- D 1 - I - 0x01605B 05:A04B: 84        .byte $84   ; 
- D 1 - I - 0x01605C 05:A04C: AF        .byte $AF   ; 
- D 1 - I - 0x01605D 05:A04D: 86        .byte $86   ; 
- D 1 - I - 0x01605E 05:A04E: F5        .byte $F5   ; 
- D 1 - I - 0x01605F 05:A04F: F5        .byte $F5   ; 
- D 1 - I - 0x016060 05:A050: DE        .byte $DE   ; 
- D 1 - I - 0x016061 05:A051: DE        .byte $DE   ; 
- D 1 - I - 0x016062 05:A052: DE        .byte $DE   ; 
- D 1 - I - 0x016063 05:A053: DE        .byte $DE   ; 
- D 1 - I - 0x016064 05:A054: F5        .byte $F5   ; 
- D 1 - I - 0x016065 05:A055: F5        .byte $F5   ; 
- D 1 - I - 0x016066 05:A056: DE        .byte $DE   ; 
- D 1 - I - 0x016067 05:A057: DE        .byte $DE   ; 
- D 1 - I - 0x016068 05:A058: DE        .byte $DE   ; 
- D 1 - I - 0x016069 05:A059: DE        .byte $DE   ; 
- D 1 - I - 0x01606A 05:A05A: F5        .byte $F5   ; 
- D 1 - I - 0x01606B 05:A05B: F5        .byte $F5   ; 
- D 1 - I - 0x01606C 05:A05C: DE        .byte $DE   ; 
- D 1 - I - 0x01606D 05:A05D: 90        .byte $90   ; 
- D 1 - I - 0x01606E 05:A05E: DE        .byte $DE   ; 
- D 1 - I - 0x01606F 05:A05F: 24        .byte $24   ; 
- D 1 - I - 0x016070 05:A060: F5        .byte $F5   ; 
- D 1 - I - 0x016071 05:A061: F5        .byte $F5   ; 
- D 1 - I - 0x016072 05:A062: 91        .byte $91   ; 
- D 1 - I - 0x016073 05:A063: DE        .byte $DE   ; 
- D 1 - I - 0x016074 05:A064: 24        .byte $24   ; 
- D 1 - I - 0x016075 05:A065: DE        .byte $DE   ; 



off_A066_02:
- D 1 - I - 0x016076 05:A066: 7E        .byte $7E   ; 
- D 1 - I - 0x016077 05:A067: 7F        .byte $7F   ; 
- D 1 - I - 0x016078 05:A068: 7D        .byte $7D   ; 
- D 1 - I - 0x016079 05:A069: 76        .byte $76   ; 
- D 1 - I - 0x01607A 05:A06A: 24        .byte $24   ; 
- D 1 - I - 0x01607B 05:A06B: 7D        .byte $7D   ; 
- D 1 - I - 0x01607C 05:A06C: 74        .byte $74   ; 
- D 1 - I - 0x01607D 05:A06D: 24        .byte $24   ; 
- D 1 - I - 0x01607E 05:A06E: 7D        .byte $7D   ; 
- D 1 - I - 0x01607F 05:A06F: 80        .byte $80   ; 
- D 1 - I - 0x016080 05:A070: 81        .byte $81   ; 
- D 1 - I - 0x016081 05:A071: 7D        .byte $7D   ; 
- D 1 - I - 0x016082 05:A072: 7E        .byte $7E   ; 
- D 1 - I - 0x016083 05:A073: 7F        .byte $7F   ; 
- D 1 - I - 0x016084 05:A074: 7D        .byte $7D   ; 
- D 1 - I - 0x016085 05:A075: 9C        .byte $9C   ; 
- D 1 - I - 0x016086 05:A076: 9D        .byte $9D   ; 
- D 1 - I - 0x016087 05:A077: 7D        .byte $7D   ; 
- D 1 - I - 0x016088 05:A078: 9E        .byte $9E   ; 
- D 1 - I - 0x016089 05:A079: 9F        .byte $9F   ; 
- D 1 - I - 0x01608A 05:A07A: 7D        .byte $7D   ; 
- D 1 - I - 0x01608B 05:A07B: 80        .byte $80   ; 
- D 1 - I - 0x01608C 05:A07C: 81        .byte $81   ; 
- D 1 - I - 0x01608D 05:A07D: 7D        .byte $7D   ; 
- D 1 - I - 0x01608E 05:A07E: 7E        .byte $7E   ; 
- D 1 - I - 0x01608F 05:A07F: 7F        .byte $7F   ; 
- D 1 - I - 0x016090 05:A080: 7D        .byte $7D   ; 
- D 1 - I - 0x016091 05:A081: A8        .byte $A8   ; 
- D 1 - I - 0x016092 05:A082: A9        .byte $A9   ; 
- D 1 - I - 0x016093 05:A083: 7D        .byte $7D   ; 
- D 1 - I - 0x016094 05:A084: AA        .byte $AA   ; 
- D 1 - I - 0x016095 05:A085: AB        .byte $AB   ; 
- D 1 - I - 0x016096 05:A086: 7D        .byte $7D   ; 
- D 1 - I - 0x016097 05:A087: 80        .byte $80   ; 
- D 1 - I - 0x016098 05:A088: 81        .byte $81   ; 
- D 1 - I - 0x016099 05:A089: 7D        .byte $7D   ; 
- D 1 - I - 0x01609A 05:A08A: DD        .byte $DD   ; 
- D 1 - I - 0x01609B 05:A08B: DD        .byte $DD   ; 
- D 1 - I - 0x01609C 05:A08C: F5        .byte $F5   ; 
- D 1 - I - 0x01609D 05:A08D: DD        .byte $DD   ; 
- D 1 - I - 0x01609E 05:A08E: DD        .byte $DD   ; 
- D 1 - I - 0x01609F 05:A08F: F5        .byte $F5   ; 
- D 1 - I - 0x0160A0 05:A090: DD        .byte $DD   ; 
- D 1 - I - 0x0160A1 05:A091: DD        .byte $DD   ; 
- D 1 - I - 0x0160A2 05:A092: F5        .byte $F5   ; 
- D 1 - I - 0x0160A3 05:A093: DD        .byte $DD   ; 
- D 1 - I - 0x0160A4 05:A094: DD        .byte $DD   ; 
- D 1 - I - 0x0160A5 05:A095: F5        .byte $F5   ; 
- D 1 - I - 0x0160A6 05:A096: DD        .byte $DD   ; 
- D 1 - I - 0x0160A7 05:A097: DD        .byte $DD   ; 
- D 1 - I - 0x0160A8 05:A098: F5        .byte $F5   ; 
- D 1 - I - 0x0160A9 05:A099: 24        .byte $24   ; 
- D 1 - I - 0x0160AA 05:A09A: 8E        .byte $8E   ; 
- D 1 - I - 0x0160AB 05:A09B: F5        .byte $F5   ; 
- D 1 - I - 0x0160AC 05:A09C: 24        .byte $24   ; 
- D 1 - I - 0x0160AD 05:A09D: 8F        .byte $8F   ; 
- D 1 - I - 0x0160AE 05:A09E: F5        .byte $F5   ; 
- D 1 - I - 0x0160AF 05:A09F: DD        .byte $DD   ; 
- D 1 - I - 0x0160B0 05:A0A0: DD        .byte $DD   ; 
- D 1 - I - 0x0160B1 05:A0A1: F5        .byte $F5   ; 



off_A0A2_03:
- D 1 - I - 0x0160B2 05:A0A2: 78        .byte $78   ; 
- D 1 - I - 0x0160B3 05:A0A3: 79        .byte $79   ; 
- D 1 - I - 0x0160B4 05:A0A4: 7A        .byte $7A   ; 
- D 1 - I - 0x0160B5 05:A0A5: 78        .byte $78   ; 
- D 1 - I - 0x0160B6 05:A0A6: 24        .byte $24   ; 
- D 1 - I - 0x0160B7 05:A0A7: 77        .byte $77   ; 
- D 1 - I - 0x0160B8 05:A0A8: 78        .byte $78   ; 
- D 1 - I - 0x0160B9 05:A0A9: 24        .byte $24   ; 
- D 1 - I - 0x0160BA 05:A0AA: 75        .byte $75   ; 
- D 1 - I - 0x0160BB 05:A0AB: 78        .byte $78   ; 
- D 1 - I - 0x0160BC 05:A0AC: 7B        .byte $7B   ; 
- D 1 - I - 0x0160BD 05:A0AD: 7C        .byte $7C   ; 
- D 1 - I - 0x0160BE 05:A0AE: 78        .byte $78   ; 
- D 1 - I - 0x0160BF 05:A0AF: 79        .byte $79   ; 
- D 1 - I - 0x0160C0 05:A0B0: 7A        .byte $7A   ; 
- D 1 - I - 0x0160C1 05:A0B1: 78        .byte $78   ; 
- D 1 - I - 0x0160C2 05:A0B2: 98        .byte $98   ; 
- D 1 - I - 0x0160C3 05:A0B3: 99        .byte $99   ; 
- D 1 - I - 0x0160C4 05:A0B4: 78        .byte $78   ; 
- D 1 - I - 0x0160C5 05:A0B5: 9A        .byte $9A   ; 
- D 1 - I - 0x0160C6 05:A0B6: 9B        .byte $9B   ; 
- D 1 - I - 0x0160C7 05:A0B7: 78        .byte $78   ; 
- D 1 - I - 0x0160C8 05:A0B8: 7B        .byte $7B   ; 
- D 1 - I - 0x0160C9 05:A0B9: 7C        .byte $7C   ; 
- D 1 - I - 0x0160CA 05:A0BA: 78        .byte $78   ; 
- D 1 - I - 0x0160CB 05:A0BB: 79        .byte $79   ; 
- D 1 - I - 0x0160CC 05:A0BC: 7A        .byte $7A   ; 
- D 1 - I - 0x0160CD 05:A0BD: 78        .byte $78   ; 
- D 1 - I - 0x0160CE 05:A0BE: A8        .byte $A8   ; 
- D 1 - I - 0x0160CF 05:A0BF: A9        .byte $A9   ; 
- D 1 - I - 0x0160D0 05:A0C0: 78        .byte $78   ; 
- D 1 - I - 0x0160D1 05:A0C1: AA        .byte $AA   ; 
- D 1 - I - 0x0160D2 05:A0C2: AB        .byte $AB   ; 
- D 1 - I - 0x0160D3 05:A0C3: 78        .byte $78   ; 
- D 1 - I - 0x0160D4 05:A0C4: 7B        .byte $7B   ; 
- D 1 - I - 0x0160D5 05:A0C5: 7C        .byte $7C   ; 
- D 1 - I - 0x0160D6 05:A0C6: F5        .byte $F5   ; 
- D 1 - I - 0x0160D7 05:A0C7: DC        .byte $DC   ; 
- D 1 - I - 0x0160D8 05:A0C8: DC        .byte $DC   ; 
- D 1 - I - 0x0160D9 05:A0C9: F5        .byte $F5   ; 
- D 1 - I - 0x0160DA 05:A0CA: DC        .byte $DC   ; 
- D 1 - I - 0x0160DB 05:A0CB: DC        .byte $DC   ; 
- D 1 - I - 0x0160DC 05:A0CC: F5        .byte $F5   ; 
- D 1 - I - 0x0160DD 05:A0CD: DC        .byte $DC   ; 
- D 1 - I - 0x0160DE 05:A0CE: DC        .byte $DC   ; 
- D 1 - I - 0x0160DF 05:A0CF: F5        .byte $F5   ; 
- D 1 - I - 0x0160E0 05:A0D0: DC        .byte $DC   ; 
- D 1 - I - 0x0160E1 05:A0D1: DC        .byte $DC   ; 
- D 1 - I - 0x0160E2 05:A0D2: F5        .byte $F5   ; 
- D 1 - I - 0x0160E3 05:A0D3: DC        .byte $DC   ; 
- D 1 - I - 0x0160E4 05:A0D4: DC        .byte $DC   ; 
- D 1 - I - 0x0160E5 05:A0D5: F5        .byte $F5   ; 
- D 1 - I - 0x0160E6 05:A0D6: 8C        .byte $8C   ; 
- D 1 - I - 0x0160E7 05:A0D7: 24        .byte $24   ; 
- D 1 - I - 0x0160E8 05:A0D8: F5        .byte $F5   ; 
- D 1 - I - 0x0160E9 05:A0D9: 8D        .byte $8D   ; 
- D 1 - I - 0x0160EA 05:A0DA: 24        .byte $24   ; 
- D 1 - I - 0x0160EB 05:A0DB: F5        .byte $F5   ; 
- D 1 - I - 0x0160EC 05:A0DC: DC        .byte $DC   ; 
- D 1 - I - 0x0160ED 05:A0DD: DC        .byte $DC   ; 



tbl_A0DE:
- D 1 - I - 0x0160EE 05:A0DE: 00        .byte $00   ; 
- D 1 - I - 0x0160EF 05:A0DF: 00        .byte $00   ; 
- D 1 - I - 0x0160F0 05:A0E0: 00        .byte $00   ; 
- D 1 - I - 0x0160F1 05:A0E1: 00        .byte $00   ; 
- D 1 - I - 0x0160F2 05:A0E2: 00        .byte $00   ; 
- D 1 - I - 0x0160F3 05:A0E3: 00        .byte $00   ; 
- D 1 - I - 0x0160F4 05:A0E4: 00        .byte $00   ; 
- D 1 - I - 0x0160F5 05:A0E5: 00        .byte $00   ; 
- D 1 - I - 0x0160F6 05:A0E6: 00        .byte $00   ; 
- D 1 - I - 0x0160F7 05:A0E7: 00        .byte $00   ; 
- D 1 - I - 0x0160F8 05:A0E8: 00        .byte $00   ; 
- D 1 - I - 0x0160F9 05:A0E9: 00        .byte $00   ; 
- D 1 - I - 0x0160FA 05:A0EA: 00        .byte $00   ; 
- D 1 - I - 0x0160FB 05:A0EB: 31        .byte $31   ; 
- D 1 - I - 0x0160FC 05:A0EC: 23        .byte $23   ; 
- D 1 - I - 0x0160FD 05:A0ED: 00        .byte $00   ; 
- D 1 - I - 0x0160FE 05:A0EE: 00        .byte $00   ; 
- D 1 - I - 0x0160FF 05:A0EF: 00        .byte $00   ; 
- D 1 - I - 0x016100 05:A0F0: 00        .byte $00   ; 
- D 1 - I - 0x016101 05:A0F1: 00        .byte $00   ; 
- D 1 - I - 0x016102 05:A0F2: 00        .byte $00   ; 
- D 1 - I - 0x016103 05:A0F3: 23        .byte $23   ; 
- D 1 - I - 0x016104 05:A0F4: 31        .byte $31   ; 
- D 1 - I - 0x016105 05:A0F5: 00        .byte $00   ; 
- D 1 - I - 0x016106 05:A0F6: 00        .byte $00   ; 
- D 1 - I - 0x016107 05:A0F7: 00        .byte $00   ; 
- D 1 - I - 0x016108 05:A0F8: 23        .byte $23   ; 
- D 1 - I - 0x016109 05:A0F9: 00        .byte $00   ; 
- D 1 - I - 0x01610A 05:A0FA: 00        .byte $00   ; 
- D 1 - I - 0x01610B 05:A0FB: 00        .byte $00   ; 
- D 1 - I - 0x01610C 05:A0FC: 00        .byte $00   ; 
- D 1 - I - 0x01610D 05:A0FD: 00        .byte $00   ; 
- D 1 - I - 0x01610E 05:A0FE: 00        .byte $00   ; 
- D 1 - I - 0x01610F 05:A0FF: 23        .byte $23   ; 
- D 1 - I - 0x016110 05:A100: 00        .byte $00   ; 
- D 1 - I - 0x016111 05:A101: 00        .byte $00   ; 
- D 1 - I - 0x016112 05:A102: 00        .byte $00   ; 
- D 1 - I - 0x016113 05:A103: 00        .byte $00   ; 
- D 1 - I - 0x016114 05:A104: 12        .byte $12   ; 
- D 1 - I - 0x016115 05:A105: 00        .byte $00   ; 
- D 1 - I - 0x016116 05:A106: 00        .byte $00   ; 
- D 1 - I - 0x016117 05:A107: 00        .byte $00   ; 
- D 1 - I - 0x016118 05:A108: 00        .byte $00   ; 
- D 1 - I - 0x016119 05:A109: 00        .byte $00   ; 
- D 1 - I - 0x01611A 05:A10A: 00        .byte $00   ; 
- D 1 - I - 0x01611B 05:A10B: 12        .byte $12   ; 
- D 1 - I - 0x01611C 05:A10C: 00        .byte $00   ; 
- D 1 - I - 0x01611D 05:A10D: 00        .byte $00   ; 
- D 1 - I - 0x01611E 05:A10E: 00        .byte $00   ; 
- D 1 - I - 0x01611F 05:A10F: 00        .byte $00   ; 
- D 1 - I - 0x016120 05:A110: 00        .byte $00   ; 
- D 1 - I - 0x016121 05:A111: 00        .byte $00   ; 
- D 1 - I - 0x016122 05:A112: 00        .byte $00   ; 
- D 1 - I - 0x016123 05:A113: 00        .byte $00   ; 
- D 1 - I - 0x016124 05:A114: 00        .byte $00   ; 
- D 1 - I - 0x016125 05:A115: 01        .byte $01   ; 
- D 1 - I - 0x016126 05:A116: 01        .byte $01   ; 
- D 1 - I - 0x016127 05:A117: 06        .byte $06   ; 
- D 1 - I - 0x016128 05:A118: 04        .byte $04   ; 
- D 1 - I - 0x016129 05:A119: 04        .byte $04   ; 
- D 1 - I - 0x01612A 05:A11A: 05        .byte $05   ; 
- D 1 - I - 0x01612B 05:A11B: 05        .byte $05   ; 
- D 1 - I - 0x01612C 05:A11C: 07        .byte $07   ; 
- D 1 - I - 0x01612D 05:A11D: 16        .byte $16   ; 
- D 1 - I - 0x01612E 05:A11E: 17        .byte $17   ; 
- D 1 - I - 0x01612F 05:A11F: 00        .byte $00   ; 
- D 1 - I - 0x016130 05:A120: 00        .byte $00   ; 
- D 1 - I - 0x016131 05:A121: 17        .byte $17   ; 
- D 1 - I - 0x016132 05:A122: 16        .byte $16   ; 
- D 1 - I - 0x016133 05:A123: 07        .byte $07   ; 
- D 1 - I - 0x016134 05:A124: 05        .byte $05   ; 
- D 1 - I - 0x016135 05:A125: 05        .byte $05   ; 
- D 1 - I - 0x016136 05:A126: 72        .byte $72   ; 
- D 1 - I - 0x016137 05:A127: 31        .byte $31   ; 
- D 1 - I - 0x016138 05:A128: 00        .byte $00   ; 
- D 1 - I - 0x016139 05:A129: 02        .byte $02   ; 
- D 1 - I - 0x01613A 05:A12A: 00        .byte $00   ; 
- D 1 - I - 0x01613B 05:A12B: 00        .byte $00   ; 
- D 1 - I - 0x01613C 05:A12C: 00        .byte $00   ; 
- D 1 - I - 0x01613D 05:A12D: 00        .byte $00   ; 
- D 1 - I - 0x01613E 05:A12E: 02        .byte $02   ; 
- D 1 - I - 0x01613F 05:A12F: 00        .byte $00   ; 
- D 1 - I - 0x016140 05:A130: 31        .byte $31   ; 
- D 1 - I - 0x016141 05:A131: 53        .byte $53   ; 
- D 1 - I - 0x016142 05:A132: 00        .byte $00   ; 
- D 1 - I - 0x016143 05:A133: 11        .byte $11   ; 
- D 1 - I - 0x016144 05:A134: 11        .byte $11   ; 
- D 1 - I - 0x016145 05:A135: 11        .byte $11   ; 
- D 1 - I - 0x016146 05:A136: 11        .byte $11   ; 
- D 1 - I - 0x016147 05:A137: 11        .byte $11   ; 
- D 1 - I - 0x016148 05:A138: 11        .byte $11   ; 
- D 1 - I - 0x016149 05:A139: 11        .byte $11   ; 
- D 1 - I - 0x01614A 05:A13A: 11        .byte $11   ; 
- D 1 - I - 0x01614B 05:A13B: 11        .byte $11   ; 
- D 1 - I - 0x01614C 05:A13C: 11        .byte $11   ; 
- D 1 - I - 0x01614D 05:A13D: 00        .byte $00   ; 
- D 1 - I - 0x01614E 05:A13E: 00        .byte $00   ; 
- D 1 - I - 0x01614F 05:A13F: 12        .byte $12   ; 
- D 1 - I - 0x016150 05:A140: 12        .byte $12   ; 
- D 1 - I - 0x016151 05:A141: 12        .byte $12   ; 
- D 1 - I - 0x016152 05:A142: 12        .byte $12   ; 
- D 1 - I - 0x016153 05:A143: 12        .byte $12   ; 
- D 1 - I - 0x016154 05:A144: 12        .byte $12   ; 
- D 1 - I - 0x016155 05:A145: 12        .byte $12   ; 
- D 1 - I - 0x016156 05:A146: 12        .byte $12   ; 
- D 1 - I - 0x016157 05:A147: 12        .byte $12   ; 
- D 1 - I - 0x016158 05:A148: 13        .byte $13   ; 
- D 1 - I - 0x016159 05:A149: 00        .byte $00   ; 
- D 1 - I - 0x01615A 05:A14A: 00        .byte $00   ; 
- D 1 - I - 0x01615B 05:A14B: 00        .byte $00   ; 
- D 1 - I - 0x01615C 05:A14C: 13        .byte $13   ; 
- D 1 - I - 0x01615D 05:A14D: 12        .byte $12   ; 
- D 1 - I - 0x01615E 05:A14E: 12        .byte $12   ; 
- D 1 - I - 0x01615F 05:A14F: 12        .byte $12   ; 
- D 1 - I - 0x016160 05:A150: 12        .byte $12   ; 
- D 1 - I - 0x016161 05:A151: 12        .byte $12   ; 
- D 1 - I - 0x016162 05:A152: 12        .byte $12   ; 
- D 1 - I - 0x016163 05:A153: 13        .byte $13   ; 
- D 1 - I - 0x016164 05:A154: 00        .byte $00   ; 
- D 1 - I - 0x016165 05:A155: 00        .byte $00   ; 
- D 1 - I - 0x016166 05:A156: 00        .byte $00   ; 
- D 1 - I - 0x016167 05:A157: 00        .byte $00   ; 
- D 1 - I - 0x016168 05:A158: 00        .byte $00   ; 
- D 1 - I - 0x016169 05:A159: 00        .byte $00   ; 
- D 1 - I - 0x01616A 05:A15A: 31        .byte $31   ; 
- D 1 - I - 0x01616B 05:A15B: 00        .byte $00   ; 
- D 1 - I - 0x01616C 05:A15C: 00        .byte $00   ; 
- D 1 - I - 0x01616D 05:A15D: 31        .byte $31   ; 
- D 1 - I - 0x01616E 05:A15E: 00        .byte $00   ; 
- D 1 - I - 0x01616F 05:A15F: 00        .byte $00   ; 
- D 1 - I - 0x016170 05:A160: 00        .byte $00   ; 
- D 1 - I - 0x016171 05:A161: 00        .byte $00   ; 
- D 1 - I - 0x016172 05:A162: 00        .byte $00   ; 
- D 1 - I - 0x016173 05:A163: 61        .byte $61   ; 
- D 1 - I - 0x016174 05:A164: 73        .byte $73   ; 
- D 1 - I - 0x016175 05:A165: 41        .byte $41   ; 
- D 1 - I - 0x016176 05:A166: 41        .byte $41   ; 
- D 1 - I - 0x016177 05:A167: 41        .byte $41   ; 
- D 1 - I - 0x016178 05:A168: 41        .byte $41   ; 
- D 1 - I - 0x016179 05:A169: 41        .byte $41   ; 
- D 1 - I - 0x01617A 05:A16A: 41        .byte $41   ; 
- D 1 - I - 0x01617B 05:A16B: 74        .byte $74   ; 
- D 1 - I - 0x01617C 05:A16C: 74        .byte $74   ; 
- D 1 - I - 0x01617D 05:A16D: 00        .byte $00   ; 
- D 1 - I - 0x01617E 05:A16E: 00        .byte $00   ; 
- D 1 - I - 0x01617F 05:A16F: 57        .byte $57   ; 
- D 1 - I - 0x016180 05:A170: 34        .byte $34   ; 
- D 1 - I - 0x016181 05:A171: 54        .byte $54   ; 
- D 1 - I - 0x016182 05:A172: 25        .byte $25   ; 
- D 1 - I - 0x016183 05:A173: 13        .byte $13   ; 
- D 1 - I - 0x016184 05:A174: 00        .byte $00   ; 
- D 1 - I - 0x016185 05:A175: 35        .byte $35   ; 
- D 1 - I - 0x016186 05:A176: 25        .byte $25   ; 
- D 1 - I - 0x016187 05:A177: 13        .byte $13   ; 
- D 1 - I - 0x016188 05:A178: 33        .byte $33   ; 
- D 1 - I - 0x016189 05:A179: 55        .byte $55   ; 
- D 1 - I - 0x01618A 05:A17A: 00        .byte $00   ; 
- D 1 - I - 0x01618B 05:A17B: 11        .byte $11   ; 
- D 1 - I - 0x01618C 05:A17C: 00        .byte $00   ; 
- D 1 - I - 0x01618D 05:A17D: 11        .byte $11   ; 
- D 1 - I - 0x01618E 05:A17E: 00        .byte $00   ; 
- D 1 - I - 0x01618F 05:A17F: 11        .byte $11   ; 
- D 1 - I - 0x016190 05:A180: 11        .byte $11   ; 
- D 1 - I - 0x016191 05:A181: 00        .byte $00   ; 
- D 1 - I - 0x016192 05:A182: 11        .byte $11   ; 
- D 1 - I - 0x016193 05:A183: 00        .byte $00   ; 
- D 1 - I - 0x016194 05:A184: 11        .byte $11   ; 
- D 1 - I - 0x016195 05:A185: 00        .byte $00   ; 
- D 1 - I - 0x016196 05:A186: 00        .byte $00   ; 
- D 1 - I - 0x016197 05:A187: 00        .byte $00   ; 
- D 1 - I - 0x016198 05:A188: 00        .byte $00   ; 
- D 1 - I - 0x016199 05:A189: 00        .byte $00   ; 
- D 1 - I - 0x01619A 05:A18A: 60        .byte $60   ; 
- D 1 - I - 0x01619B 05:A18B: 00        .byte $00   ; 
- D 1 - I - 0x01619C 05:A18C: 00        .byte $00   ; 
- D 1 - I - 0x01619D 05:A18D: 60        .byte $60   ; 
- D 1 - I - 0x01619E 05:A18E: 00        .byte $00   ; 
- D 1 - I - 0x01619F 05:A18F: 00        .byte $00   ; 
- D 1 - I - 0x0161A0 05:A190: 00        .byte $00   ; 
- D 1 - I - 0x0161A1 05:A191: 00        .byte $00   ; 
- D 1 - I - 0x0161A2 05:A192: 23        .byte $23   ; 
- D 1 - I - 0x0161A3 05:A193: 23        .byte $23   ; 
- D 1 - I - 0x0161A4 05:A194: 23        .byte $23   ; 
- D 1 - I - 0x0161A5 05:A195: 23        .byte $23   ; 
- D 1 - I - 0x0161A6 05:A196: 23        .byte $23   ; 
- D 1 - I - 0x0161A7 05:A197: 23        .byte $23   ; 
- D 1 - I - 0x0161A8 05:A198: 23        .byte $23   ; 
- D 1 - I - 0x0161A9 05:A199: 23        .byte $23   ; 
- D 1 - I - 0x0161AA 05:A19A: 23        .byte $23   ; 
- D 1 - I - 0x0161AB 05:A19B: 23        .byte $23   ; 
- D 1 - I - 0x0161AC 05:A19C: 23        .byte $23   ; 
- D 1 - I - 0x0161AD 05:A19D: 23        .byte $23   ; 
- D 1 - I - 0x0161AE 05:A19E: 00        .byte $00   ; 
- D 1 - I - 0x0161AF 05:A19F: 13        .byte $13   ; 
- D 1 - I - 0x0161B0 05:A1A0: 00        .byte $00   ; 
- D 1 - I - 0x0161B1 05:A1A1: 13        .byte $13   ; 
- D 1 - I - 0x0161B2 05:A1A2: 00        .byte $00   ; 
- D 1 - I - 0x0161B3 05:A1A3: 13        .byte $13   ; 
- D 1 - I - 0x0161B4 05:A1A4: 13        .byte $13   ; 
- D 1 - I - 0x0161B5 05:A1A5: 00        .byte $00   ; 
- D 1 - I - 0x0161B6 05:A1A6: 13        .byte $13   ; 
- D 1 - I - 0x0161B7 05:A1A7: 00        .byte $00   ; 
- D 1 - I - 0x0161B8 05:A1A8: 13        .byte $13   ; 
- D 1 - I - 0x0161B9 05:A1A9: 00        .byte $00   ; 
- D 1 - I - 0x0161BA 05:A1AA: 20        .byte $20   ; 
- D 1 - I - 0x0161BB 05:A1AB: 12        .byte $12   ; 
- D 1 - I - 0x0161BC 05:A1AC: 21        .byte $21   ; 
- D 1 - I - 0x0161BD 05:A1AD: 31        .byte $31   ; 
- D 1 - I - 0x0161BE 05:A1AE: 33        .byte $33   ; 
- D 1 - I - 0x0161BF 05:A1AF: 25        .byte $25   ; 
- D 1 - I - 0x0161C0 05:A1B0: 02        .byte $02   ; 
- D 1 - I - 0x0161C1 05:A1B1: 26        .byte $26   ; 
- D 1 - I - 0x0161C2 05:A1B2: 31        .byte $31   ; 
- D 1 - I - 0x0161C3 05:A1B3: 30        .byte $30   ; 
- D 1 - I - 0x0161C4 05:A1B4: 12        .byte $12   ; 
- D 1 - I - 0x0161C5 05:A1B5: 17        .byte $17   ; 
- D 1 - I - 0x0161C6 05:A1B6: 00        .byte $00   ; 
- D 1 - I - 0x0161C7 05:A1B7: 74        .byte $74   ; 
- D 1 - I - 0x0161C8 05:A1B8: 74        .byte $74   ; 
- D 1 - I - 0x0161C9 05:A1B9: 75        .byte $75   ; 
- D 1 - I - 0x0161CA 05:A1BA: 75        .byte $75   ; 
- D 1 - I - 0x0161CB 05:A1BB: 41        .byte $41   ; 
- D 1 - I - 0x0161CC 05:A1BC: 41        .byte $41   ; 
- D 1 - I - 0x0161CD 05:A1BD: 75        .byte $75   ; 
- D 1 - I - 0x0161CE 05:A1BE: 75        .byte $75   ; 
- D 1 - I - 0x0161CF 05:A1BF: 74        .byte $74   ; 
- D 1 - I - 0x0161D0 05:A1C0: 74        .byte $74   ; 
- D 1 - I - 0x0161D1 05:A1C1: 00        .byte $00   ; 
- D 1 - I - 0x0161D2 05:A1C2: 00        .byte $00   ; 
- D 1 - I - 0x0161D3 05:A1C3: 00        .byte $00   ; 
- D 1 - I - 0x0161D4 05:A1C4: 00        .byte $00   ; 
- D 1 - I - 0x0161D5 05:A1C5: 00        .byte $00   ; 
- D 1 - I - 0x0161D6 05:A1C6: 00        .byte $00   ; 
- D 1 - I - 0x0161D7 05:A1C7: 00        .byte $00   ; 
- D 1 - I - 0x0161D8 05:A1C8: 00        .byte $00   ; 
- D 1 - I - 0x0161D9 05:A1C9: 00        .byte $00   ; 
- D 1 - I - 0x0161DA 05:A1CA: 61        .byte $61   ; 
- D 1 - I - 0x0161DB 05:A1CB: 00        .byte $00   ; 
- D 1 - I - 0x0161DC 05:A1CC: 00        .byte $00   ; 
- D 1 - I - 0x0161DD 05:A1CD: 00        .byte $00   ; 
- D 1 - I - 0x0161DE 05:A1CE: 00        .byte $00   ; 
- D 1 - I - 0x0161DF 05:A1CF: 62        .byte $62   ; 
- D 1 - I - 0x0161E0 05:A1D0: 66        .byte $66   ; 
- D 1 - I - 0x0161E1 05:A1D1: 66        .byte $66   ; 
- D 1 - I - 0x0161E2 05:A1D2: 66        .byte $66   ; 
- D 1 - I - 0x0161E3 05:A1D3: 66        .byte $66   ; 
- D 1 - I - 0x0161E4 05:A1D4: 66        .byte $66   ; 
- D 1 - I - 0x0161E5 05:A1D5: 66        .byte $66   ; 
- D 1 - I - 0x0161E6 05:A1D6: 66        .byte $66   ; 
- D 1 - I - 0x0161E7 05:A1D7: 66        .byte $66   ; 
- D 1 - I - 0x0161E8 05:A1D8: 62        .byte $62   ; 
- D 1 - I - 0x0161E9 05:A1D9: 00        .byte $00   ; 
- D 1 - I - 0x0161EA 05:A1DA: 00        .byte $00   ; 
- D 1 - I - 0x0161EB 05:A1DB: 62        .byte $62   ; 
- D 1 - I - 0x0161EC 05:A1DC: 66        .byte $66   ; 
- D 1 - I - 0x0161ED 05:A1DD: 64        .byte $64   ; 
- D 1 - I - 0x0161EE 05:A1DE: 82        .byte $82   ; 
- D 1 - I - 0x0161EF 05:A1DF: 82        .byte $82   ; 
- D 1 - I - 0x0161F0 05:A1E0: 82        .byte $82   ; 
- D 1 - I - 0x0161F1 05:A1E1: 82        .byte $82   ; 
- D 1 - I - 0x0161F2 05:A1E2: 64        .byte $64   ; 
- D 1 - I - 0x0161F3 05:A1E3: 66        .byte $66   ; 
- D 1 - I - 0x0161F4 05:A1E4: 62        .byte $62   ; 
- D 1 - I - 0x0161F5 05:A1E5: 00        .byte $00   ; 
- D 1 - I - 0x0161F6 05:A1E6: 73        .byte $73   ; 
- D 1 - I - 0x0161F7 05:A1E7: 70        .byte $70   ; 
- D 1 - I - 0x0161F8 05:A1E8: 67        .byte $67   ; 
- D 1 - I - 0x0161F9 05:A1E9: 65        .byte $65   ; 
- D 1 - I - 0x0161FA 05:A1EA: 73        .byte $73   ; 
- D 1 - I - 0x0161FB 05:A1EB: 66        .byte $66   ; 
- D 1 - I - 0x0161FC 05:A1EC: 66        .byte $66   ; 
- D 1 - I - 0x0161FD 05:A1ED: 73        .byte $73   ; 
- D 1 - I - 0x0161FE 05:A1EE: 65        .byte $65   ; 
- D 1 - I - 0x0161FF 05:A1EF: 67        .byte $67   ; 
- D 1 - I - 0x016200 05:A1F0: 70        .byte $70   ; 
- D 1 - I - 0x016201 05:A1F1: 73        .byte $73   ; 
- D 1 - I - 0x016202 05:A1F2: 73        .byte $73   ; 
- D 1 - I - 0x016203 05:A1F3: 70        .byte $70   ; 
- D 1 - I - 0x016204 05:A1F4: 71        .byte $71   ; 
- D 1 - I - 0x016205 05:A1F5: 70        .byte $70   ; 
- D 1 - I - 0x016206 05:A1F6: 63        .byte $63   ; 
- D 1 - I - 0x016207 05:A1F7: 32        .byte $32   ; 
- D 1 - I - 0x016208 05:A1F8: 43        .byte $43   ; 
- D 1 - I - 0x016209 05:A1F9: 71        .byte $71   ; 
- D 1 - I - 0x01620A 05:A1FA: 70        .byte $70   ; 
- D 1 - I - 0x01620B 05:A1FB: 63        .byte $63   ; 
- D 1 - I - 0x01620C 05:A1FC: 70        .byte $70   ; 
- D 1 - I - 0x01620D 05:A1FD: 73        .byte $73   ; 
- D 1 - I - 0x01620E 05:A1FE: 43        .byte $43   ; 
- D 1 - I - 0x01620F 05:A1FF: 43        .byte $43   ; 
- D 1 - I - 0x016210 05:A200: 43        .byte $43   ; 
- D 1 - I - 0x016211 05:A201: 43        .byte $43   ; 
- D 1 - I - 0x016212 05:A202: 43        .byte $43   ; 
- D 1 - I - 0x016213 05:A203: 43        .byte $43   ; 
- D 1 - I - 0x016214 05:A204: 43        .byte $43   ; 
- D 1 - I - 0x016215 05:A205: 43        .byte $43   ; 
- D 1 - I - 0x016216 05:A206: 43        .byte $43   ; 
- D 1 - I - 0x016217 05:A207: 43        .byte $43   ; 
- D 1 - I - 0x016218 05:A208: 43        .byte $43   ; 
- D 1 - I - 0x016219 05:A209: 43        .byte $43   ; 
- D 1 - I - 0x01621A 05:A20A: 66        .byte $66   ; 
- D 1 - I - 0x01621B 05:A20B: 66        .byte $66   ; 
- D 1 - I - 0x01621C 05:A20C: 66        .byte $66   ; 
- D 1 - I - 0x01621D 05:A20D: 66        .byte $66   ; 
- D 1 - I - 0x01621E 05:A20E: 66        .byte $66   ; 
- D 1 - I - 0x01621F 05:A20F: 66        .byte $66   ; 
- D 1 - I - 0x016220 05:A210: 66        .byte $66   ; 
- D 1 - I - 0x016221 05:A211: 66        .byte $66   ; 
- D 1 - I - 0x016222 05:A212: 66        .byte $66   ; 
- D 1 - I - 0x016223 05:A213: 66        .byte $66   ; 
- D 1 - I - 0x016224 05:A214: 66        .byte $66   ; 
- D 1 - I - 0x016225 05:A215: 66        .byte $66   ; 
- D 1 - I - 0x016226 05:A216: 00        .byte $00   ; 
- D 1 - I - 0x016227 05:A217: 00        .byte $00   ; 
- D 1 - I - 0x016228 05:A218: 00        .byte $00   ; 
- D 1 - I - 0x016229 05:A219: 00        .byte $00   ; 
- D 1 - I - 0x01622A 05:A21A: 31        .byte $31   ; 
- D 1 - I - 0x01622B 05:A21B: 23        .byte $23   ; 
- D 1 - I - 0x01622C 05:A21C: 10        .byte $10   ; 
- D 1 - I - 0x01622D 05:A21D: 23        .byte $23   ; 
- D 1 - I - 0x01622E 05:A21E: 31        .byte $31   ; 
- D 1 - I - 0x01622F 05:A21F: 00        .byte $00   ; 
- D 1 - I - 0x016230 05:A220: 00        .byte $00   ; 
- D 1 - I - 0x016231 05:A221: 00        .byte $00   ; 
- D 1 - I - 0x016232 05:A222: 00        .byte $00   ; 
- D 1 - I - 0x016233 05:A223: 00        .byte $00   ; 
- D 1 - I - 0x016234 05:A224: 00        .byte $00   ; 
- D 1 - I - 0x016235 05:A225: 00        .byte $00   ; 
- D 1 - I - 0x016236 05:A226: 00        .byte $00   ; 
- D 1 - I - 0x016237 05:A227: 00        .byte $00   ; 
- D 1 - I - 0x016238 05:A228: 00        .byte $00   ; 
- D 1 - I - 0x016239 05:A229: 00        .byte $00   ; 
- D 1 - I - 0x01623A 05:A22A: 06        .byte $06   ; 
- D 1 - I - 0x01623B 05:A22B: 04        .byte $04   ; 
- D 1 - I - 0x01623C 05:A22C: 04        .byte $04   ; 
- D 1 - I - 0x01623D 05:A22D: 03        .byte $03   ; 
- D 1 - I - 0x01623E 05:A22E: 00        .byte $00   ; 
- D 1 - I - 0x01623F 05:A22F: 13        .byte $13   ; 
- D 1 - I - 0x016240 05:A230: 12        .byte $12   ; 
- D 1 - I - 0x016241 05:A231: 12        .byte $12   ; 
- D 1 - I - 0x016242 05:A232: 12        .byte $12   ; 
- D 1 - I - 0x016243 05:A233: 11        .byte $11   ; 
- D 1 - I - 0x016244 05:A234: 11        .byte $11   ; 
- D 1 - I - 0x016245 05:A235: 15        .byte $15   ; 
- D 1 - I - 0x016246 05:A236: 14        .byte $14   ; 
- D 1 - I - 0x016247 05:A237: 02        .byte $02   ; 
- D 1 - I - 0x016248 05:A238: 24        .byte $24   ; 
- D 1 - I - 0x016249 05:A239: 00        .byte $00   ; 
- D 1 - I - 0x01624A 05:A23A: 00        .byte $00   ; 
- D 1 - I - 0x01624B 05:A23B: 00        .byte $00   ; 
- D 1 - I - 0x01624C 05:A23C: 22        .byte $22   ; 
- D 1 - I - 0x01624D 05:A23D: 22        .byte $22   ; 
- D 1 - I - 0x01624E 05:A23E: 00        .byte $00   ; 
- D 1 - I - 0x01624F 05:A23F: 00        .byte $00   ; 
- D 1 - I - 0x016250 05:A240: 00        .byte $00   ; 
- D 1 - I - 0x016251 05:A241: 00        .byte $00   ; 
- D 1 - I - 0x016252 05:A242: 22        .byte $22   ; 
- D 1 - I - 0x016253 05:A243: 22        .byte $22   ; 
- D 1 - I - 0x016254 05:A244: 00        .byte $00   ; 
- D 1 - I - 0x016255 05:A245: 00        .byte $00   ; 
- D 1 - I - 0x016256 05:A246: 00        .byte $00   ; 
- D 1 - I - 0x016257 05:A247: 00        .byte $00   ; 
- D 1 - I - 0x016258 05:A248: 00        .byte $00   ; 
- D 1 - I - 0x016259 05:A249: 00        .byte $00   ; 
- D 1 - I - 0x01625A 05:A24A: 00        .byte $00   ; 
- D 1 - I - 0x01625B 05:A24B: 22        .byte $22   ; 
- D 1 - I - 0x01625C 05:A24C: 22        .byte $22   ; 
- D 1 - I - 0x01625D 05:A24D: 00        .byte $00   ; 
- D 1 - I - 0x01625E 05:A24E: 00        .byte $00   ; 
- D 1 - I - 0x01625F 05:A24F: 00        .byte $00   ; 
- D 1 - I - 0x016260 05:A250: 00        .byte $00   ; 
- D 1 - I - 0x016261 05:A251: 00        .byte $00   ; 
- D 1 - I - 0x016262 05:A252: 00        .byte $00   ; 
- D 1 - I - 0x016263 05:A253: 12        .byte $12   ; 
- D 1 - I - 0x016264 05:A254: 12        .byte $12   ; 
- D 1 - I - 0x016265 05:A255: 00        .byte $00   ; 
- D 1 - I - 0x016266 05:A256: 00        .byte $00   ; 
- D 1 - I - 0x016267 05:A257: 31        .byte $31   ; 
- D 1 - I - 0x016268 05:A258: 31        .byte $31   ; 
- D 1 - I - 0x016269 05:A259: 00        .byte $00   ; 
- D 1 - I - 0x01626A 05:A25A: 00        .byte $00   ; 
- D 1 - I - 0x01626B 05:A25B: 12        .byte $12   ; 
- D 1 - I - 0x01626C 05:A25C: 12        .byte $12   ; 
- D 1 - I - 0x01626D 05:A25D: 00        .byte $00   ; 
- D 1 - I - 0x01626E 05:A25E: 04        .byte $04   ; 
- D 1 - I - 0x01626F 05:A25F: 04        .byte $04   ; 
- D 1 - I - 0x016270 05:A260: 04        .byte $04   ; 
- D 1 - I - 0x016271 05:A261: 04        .byte $04   ; 
- D 1 - I - 0x016272 05:A262: 04        .byte $04   ; 
- D 1 - I - 0x016273 05:A263: 80        .byte $80   ; 
- D 1 - I - 0x016274 05:A264: 31        .byte $31   ; 
- D 1 - I - 0x016275 05:A265: 04        .byte $04   ; 
- D 1 - I - 0x016276 05:A266: 04        .byte $04   ; 
- D 1 - I - 0x016277 05:A267: 04        .byte $04   ; 
- D 1 - I - 0x016278 05:A268: 04        .byte $04   ; 
- D 1 - I - 0x016279 05:A269: 04        .byte $04   ; 
- D 1 - I - 0x01627A 05:A26A: 00        .byte $00   ; 
- D 1 - I - 0x01627B 05:A26B: 93        .byte $93   ; 
- D 1 - I - 0x01627C 05:A26C: 00        .byte $00   ; 
- D 1 - I - 0x01627D 05:A26D: 95        .byte $95   ; 
- D 1 - I - 0x01627E 05:A26E: 94        .byte $94   ; 
- D 1 - I - 0x01627F 05:A26F: 96        .byte $96   ; 
- D 1 - I - 0x016280 05:A270: 96        .byte $96   ; 
- D 1 - I - 0x016281 05:A271: 98        .byte $98   ; 
- D 1 - I - 0x016282 05:A272: 95        .byte $95   ; 
- D 1 - I - 0x016283 05:A273: 00        .byte $00   ; 
- D 1 - I - 0x016284 05:A274: 97        .byte $97   ; 
- D 1 - I - 0x016285 05:A275: 00        .byte $00   ; 
- D 1 - I - 0x016286 05:A276: 00        .byte $00   ; 
- D 1 - I - 0x016287 05:A277: 00        .byte $00   ; 
- D 1 - I - 0x016288 05:A278: 00        .byte $00   ; 
- D 1 - I - 0x016289 05:A279: 00        .byte $00   ; 
- D 1 - I - 0x01628A 05:A27A: 00        .byte $00   ; 
- D 1 - I - 0x01628B 05:A27B: 31        .byte $31   ; 
- D 1 - I - 0x01628C 05:A27C: 00        .byte $00   ; 
- D 1 - I - 0x01628D 05:A27D: 00        .byte $00   ; 
- D 1 - I - 0x01628E 05:A27E: 00        .byte $00   ; 
- D 1 - I - 0x01628F 05:A27F: 00        .byte $00   ; 
- D 1 - I - 0x016290 05:A280: 00        .byte $00   ; 
- D 1 - I - 0x016291 05:A281: 00        .byte $00   ; 
- D 1 - I - 0x016292 05:A282: 00        .byte $00   ; 
- D 1 - I - 0x016293 05:A283: 00        .byte $00   ; 
- D 1 - I - 0x016294 05:A284: 00        .byte $00   ; 
- D 1 - I - 0x016295 05:A285: 00        .byte $00   ; 
- D 1 - I - 0x016296 05:A286: 87        .byte $87   ; 
- D 1 - I - 0x016297 05:A287: 00        .byte $00   ; 
- D 1 - I - 0x016298 05:A288: 00        .byte $00   ; 
- D 1 - I - 0x016299 05:A289: 88        .byte $88   ; 
- D 1 - I - 0x01629A 05:A28A: 00        .byte $00   ; 
- D 1 - I - 0x01629B 05:A28B: 00        .byte $00   ; 
- D 1 - I - 0x01629C 05:A28C: 00        .byte $00   ; 
- D 1 - I - 0x01629D 05:A28D: 00        .byte $00   ; 
- D 1 - I - 0x01629E 05:A28E: 85        .byte $85   ; 
- D 1 - I - 0x01629F 05:A28F: 00        .byte $00   ; 
- D 1 - I - 0x0162A0 05:A290: 00        .byte $00   ; 
- D 1 - I - 0x0162A1 05:A291: 00        .byte $00   ; 
- D 1 - I - 0x0162A2 05:A292: 00        .byte $00   ; 
- D 1 - I - 0x0162A3 05:A293: 00        .byte $00   ; 
- D 1 - I - 0x0162A4 05:A294: 00        .byte $00   ; 
- D 1 - I - 0x0162A5 05:A295: 00        .byte $00   ; 
- D 1 - I - 0x0162A6 05:A296: 00        .byte $00   ; 
- D 1 - I - 0x0162A7 05:A297: 00        .byte $00   ; 
- D 1 - I - 0x0162A8 05:A298: 00        .byte $00   ; 
- D 1 - I - 0x0162A9 05:A299: 52        .byte $52   ; 
- D 1 - I - 0x0162AA 05:A29A: 77        .byte $77   ; 
- D 1 - I - 0x0162AB 05:A29B: 77        .byte $77   ; 
- D 1 - I - 0x0162AC 05:A29C: 77        .byte $77   ; 
- D 1 - I - 0x0162AD 05:A29D: 77        .byte $77   ; 
- D 1 - I - 0x0162AE 05:A29E: 77        .byte $77   ; 
- D 1 - I - 0x0162AF 05:A29F: 77        .byte $77   ; 
- D 1 - I - 0x0162B0 05:A2A0: 77        .byte $77   ; 
- D 1 - I - 0x0162B1 05:A2A1: 77        .byte $77   ; 
- D 1 - I - 0x0162B2 05:A2A2: 77        .byte $77   ; 
- D 1 - I - 0x0162B3 05:A2A3: 77        .byte $77   ; 
- D 1 - I - 0x0162B4 05:A2A4: 77        .byte $77   ; 
- D 1 - I - 0x0162B5 05:A2A5: 77        .byte $77   ; 
- D 1 - I - 0x0162B6 05:A2A6: 76        .byte $76   ; 
- D 1 - I - 0x0162B7 05:A2A7: 76        .byte $76   ; 
- D 1 - I - 0x0162B8 05:A2A8: 76        .byte $76   ; 
- D 1 - I - 0x0162B9 05:A2A9: 76        .byte $76   ; 
- D 1 - I - 0x0162BA 05:A2AA: 76        .byte $76   ; 
- D 1 - I - 0x0162BB 05:A2AB: 76        .byte $76   ; 
- D 1 - I - 0x0162BC 05:A2AC: 76        .byte $76   ; 
- D 1 - I - 0x0162BD 05:A2AD: 76        .byte $76   ; 
- D 1 - I - 0x0162BE 05:A2AE: 76        .byte $76   ; 
- D 1 - I - 0x0162BF 05:A2AF: 76        .byte $76   ; 
- D 1 - I - 0x0162C0 05:A2B0: 76        .byte $76   ; 
- D 1 - I - 0x0162C1 05:A2B1: 76        .byte $76   ; 
- D 1 - I - 0x0162C2 05:A2B2: 60        .byte $60   ; 
- D 1 - I - 0x0162C3 05:A2B3: 17        .byte $17   ; 
- D 1 - I - 0x0162C4 05:A2B4: 83        .byte $83   ; 
- D 1 - I - 0x0162C5 05:A2B5: 86        .byte $86   ; 
- D 1 - I - 0x0162C6 05:A2B6: 36        .byte $36   ; 
- D 1 - I - 0x0162C7 05:A2B7: 90        .byte $90   ; 
- D 1 - I - 0x0162C8 05:A2B8: 90        .byte $90   ; 
- D 1 - I - 0x0162C9 05:A2B9: 56        .byte $56   ; 
- D 1 - I - 0x0162CA 05:A2BA: 86        .byte $86   ; 
- D 1 - I - 0x0162CB 05:A2BB: 50        .byte $50   ; 
- D 1 - I - 0x0162CC 05:A2BC: 17        .byte $17   ; 
- D 1 - I - 0x0162CD 05:A2BD: 60        .byte $60   ; 
- D 1 - I - 0x0162CE 05:A2BE: 84        .byte $84   ; 
- D 1 - I - 0x0162CF 05:A2BF: 76        .byte $76   ; 
- D 1 - I - 0x0162D0 05:A2C0: 44        .byte $44   ; 
- D 1 - I - 0x0162D1 05:A2C1: 40        .byte $40   ; 
- D 1 - I - 0x0162D2 05:A2C2: 81        .byte $81   ; 
- D 1 - I - 0x0162D3 05:A2C3: 42        .byte $42   ; 
- D 1 - I - 0x0162D4 05:A2C4: 42        .byte $42   ; 
- D 1 - I - 0x0162D5 05:A2C5: 81        .byte $81   ; 
- D 1 - I - 0x0162D6 05:A2C6: 40        .byte $40   ; 
- D 1 - I - 0x0162D7 05:A2C7: 44        .byte $44   ; 
- D 1 - I - 0x0162D8 05:A2C8: 76        .byte $76   ; 
- D 1 - I - 0x0162D9 05:A2C9: 51        .byte $51   ; 
- D 1 - I - 0x0162DA 05:A2CA: 00        .byte $00   ; 
- D 1 - I - 0x0162DB 05:A2CB: 13        .byte $13   ; 
- D 1 - I - 0x0162DC 05:A2CC: 12        .byte $12   ; 
- D 1 - I - 0x0162DD 05:A2CD: 46        .byte $46   ; 
- D 1 - I - 0x0162DE 05:A2CE: 91        .byte $91   ; 
- D 1 - I - 0x0162DF 05:A2CF: 25        .byte $25   ; 
- D 1 - I - 0x0162E0 05:A2D0: 25        .byte $25   ; 
- D 1 - I - 0x0162E1 05:A2D1: 92        .byte $92   ; 
- D 1 - I - 0x0162E2 05:A2D2: 45        .byte $45   ; 
- D 1 - I - 0x0162E3 05:A2D3: 12        .byte $12   ; 
- D 1 - I - 0x0162E4 05:A2D4: 13        .byte $13   ; 
- D 1 - I - 0x0162E5 05:A2D5: 00        .byte $00   ; 



_off008_A2D6_00:
- D 1 - I - 0x0162E6 05:A2D6: E1        .byte $E1   ; 
- D 1 - I - 0x0162E7 05:A2D7: 80        .byte $80   ; 
- D 1 - I - 0x0162E8 05:A2D8: C1        .byte $C1   ; 
- D 1 - I - 0x0162E9 05:A2D9: 00        .byte $00   ; 
- D 1 - I - 0x0162EA 05:A2DA: 01        .byte $01   ; 
- D 1 - I - 0x0162EB 05:A2DB: A0        .byte $A0   ; 
- D 1 - I - 0x0162EC 05:A2DC: 04        .byte $04   ; 
- D 1 - I - 0x0162ED 05:A2DD: A0        .byte $A0   ; 
- D 1 - I - 0x0162EE 05:A2DE: 01        .byte $01   ; 
- D 1 - I - 0x0162EF 05:A2DF: A0        .byte $A0   ; 
- D 1 - I - 0x0162F0 05:A2E0: 31        .byte $31   ; 
- D 1 - I - 0x0162F1 05:A2E1: 90        .byte $90   ; 
- D 1 - I - 0x0162F2 05:A2E2: 21        .byte $21   ; 
- D 1 - I - 0x0162F3 05:A2E3: 90        .byte $90   ; 
- D 1 - I - 0x0162F4 05:A2E4: 21        .byte $21   ; 
- D 1 - I - 0x0162F5 05:A2E5: 00        .byte $00   ; 



_off008_A2E6_01:
- D 1 - I - 0x0162F6 05:A2E6: 81        .byte $81   ; 
- D 1 - I - 0x0162F7 05:A2E7: 00        .byte $00   ; 
- D 1 - I - 0x0162F8 05:A2E8: 01        .byte $01   ; 
- D 1 - I - 0x0162F9 05:A2E9: 04        .byte $04   ; 
- D 1 - I - 0x0162FA 05:A2EA: 81        .byte $81   ; 
- D 1 - I - 0x0162FB 05:A2EB: 00        .byte $00   ; 
- D 1 - I - 0x0162FC 05:A2EC: 01        .byte $01   ; 
- D 1 - I - 0x0162FD 05:A2ED: 00        .byte $00   ; 
- D 1 - I - 0x0162FE 05:A2EE: 01        .byte $01   ; 
- D 1 - I - 0x0162FF 05:A2EF: 00        .byte $00   ; 
- D 1 - I - 0x016300 05:A2F0: 81        .byte $81   ; 
- D 1 - I - 0x016301 05:A2F1: 00        .byte $00   ; 
- D 1 - I - 0x016302 05:A2F2: 21        .byte $21   ; 
- D 1 - I - 0x016303 05:A2F3: 00        .byte $00   ; 
- D 1 - I - 0x016304 05:A2F4: 81        .byte $81   ; 
- D 1 - I - 0x016305 05:A2F5: 40        .byte $40   ; 
- D 1 - I - 0x016306 05:A2F6: 81        .byte $81   ; 
- D 1 - I - 0x016307 05:A2F7: 20        .byte $20   ; 
- D 1 - I - 0x016308 05:A2F8: 01        .byte $01   ; 
- D 1 - I - 0x016309 05:A2F9: 00        .byte $00   ; 
- D 1 - I - 0x01630A 05:A2FA: 81        .byte $81   ; 
- D 1 - I - 0x01630B 05:A2FB: 00        .byte $00   ; 
- D 1 - I - 0x01630C 05:A2FC: 04        .byte $04   ; 
- D 1 - I - 0x01630D 05:A2FD: 00        .byte $00   ; 
- D 1 - I - 0x01630E 05:A2FE: 01        .byte $01   ; 
- D 1 - I - 0x01630F 05:A2FF: 00        .byte $00   ; 
- D 1 - I - 0x016310 05:A300: 01        .byte $01   ; 
- D 1 - I - 0x016311 05:A301: 90        .byte $90   ; 
- D 1 - I - 0x016312 05:A302: 41        .byte $41   ; 
- D 1 - I - 0x016313 05:A303: 80        .byte $80   ; 



_off008_A304_02:
- D 1 - I - 0x016314 05:A304: D1        .byte $D1   ; 
- D 1 - I - 0x016315 05:A305: 80        .byte $80   ; 
- D 1 - I - 0x016316 05:A306: 21        .byte $21   ; 
- D 1 - I - 0x016317 05:A307: 00        .byte $00   ; 
- D 1 - I - 0x016318 05:A308: 91        .byte $91   ; 
- D 1 - I - 0x016319 05:A309: 20        .byte $20   ; 
- D 1 - I - 0x01631A 05:A30A: 91        .byte $91   ; 
- D 1 - I - 0x01631B 05:A30B: 00        .byte $00   ; 
- D 1 - I - 0x01631C 05:A30C: 01        .byte $01   ; 
- D 1 - I - 0x01631D 05:A30D: 00        .byte $00   ; 
- D 1 - I - 0x01631E 05:A30E: 11        .byte $11   ; 
- D 1 - I - 0x01631F 05:A30F: D0        .byte $D0   ; 
- D 1 - I - 0x016320 05:A310: 81        .byte $81   ; 
- D 1 - I - 0x016321 05:A311: 00        .byte $00   ; 
- D 1 - I - 0x016322 05:A312: 41        .byte $41   ; 
- D 1 - I - 0x016323 05:A313: B1        .byte $B1   ; 
- D 1 - I - 0x016324 05:A314: 00        .byte $00   ; 



_off008_A315_03:
- D 1 - I - 0x016325 05:A315: 91        .byte $91   ; 
- D 1 - I - 0x016326 05:A316: 00        .byte $00   ; 
- D 1 - I - 0x016327 05:A317: A1        .byte $A1   ; 
- D 1 - I - 0x016328 05:A318: 00        .byte $00   ; 
- D 1 - I - 0x016329 05:A319: 21        .byte $21   ; 
- D 1 - I - 0x01632A 05:A31A: B1        .byte $B1   ; 
- D 1 - I - 0x01632B 05:A31B: 06        .byte $06   ; 
- D 1 - I - 0x01632C 05:A31C: 91        .byte $91   ; 
- D 1 - I - 0x01632D 05:A31D: 00        .byte $00   ; 
- D 1 - I - 0x01632E 05:A31E: B1        .byte $B1   ; 
- D 1 - I - 0x01632F 05:A31F: 00        .byte $00   ; 
- D 1 - I - 0x016330 05:A320: 81        .byte $81   ; 
- D 1 - I - 0x016331 05:A321: 00        .byte $00   ; 
- D 1 - I - 0x016332 05:A322: 21        .byte $21   ; 
- D 1 - I - 0x016333 05:A323: 90        .byte $90   ; 
- D 1 - I - 0x016334 05:A324: 17        .byte $17   ; 
- D 1 - I - 0x016335 05:A325: 02        .byte $02   ; 



_off008_A326_04:
- D 1 - I - 0x016336 05:A326: 91        .byte $91   ; 
- D 1 - I - 0x016337 05:A327: 17        .byte $17   ; 
- D 1 - I - 0x016338 05:A328: 01        .byte $01   ; 
- D 1 - I - 0x016339 05:A329: 17        .byte $17   ; 
- D 1 - I - 0x01633A 05:A32A: 81        .byte $81   ; 
- D 1 - I - 0x01633B 05:A32B: 16        .byte $16   ; 
- D 1 - I - 0x01633C 05:A32C: B1        .byte $B1   ; 
- D 1 - I - 0x01633D 05:A32D: 07        .byte $07   ; 
- D 1 - I - 0x01633E 05:A32E: 91        .byte $91   ; 
- D 1 - I - 0x01633F 05:A32F: 06        .byte $06   ; 
- D 1 - I - 0x016340 05:A330: 31        .byte $31   ; 
- D 1 - I - 0x016341 05:A331: 87        .byte $87   ; 
- D 1 - I - 0x016342 05:A332: 31        .byte $31   ; 
- D 1 - I - 0x016343 05:A333: 17        .byte $17   ; 
- D 1 - I - 0x016344 05:A334: 81        .byte $81   ; 
- D 1 - I - 0x016345 05:A335: 00        .byte $00   ; 
- D 1 - I - 0x016346 05:A336: 01        .byte $01   ; 
- D 1 - I - 0x016347 05:A337: 03        .byte $03   ; 
- D 1 - I - 0x016348 05:A338: 81        .byte $81   ; 
- D 1 - I - 0x016349 05:A339: 00        .byte $00   ; 
- D 1 - I - 0x01634A 05:A33A: 01        .byte $01   ; 
- D 1 - I - 0x01634B 05:A33B: 02        .byte $02   ; 
- D 1 - I - 0x01634C 05:A33C: 01        .byte $01   ; 



_off008_A33D_05:
- D 1 - I - 0x01634D 05:A33D: 80        .byte $80   ; 
- D 1 - I - 0x01634E 05:A33E: 01        .byte $01   ; 
- D 1 - I - 0x01634F 05:A33F: 10        .byte $10   ; 
- D 1 - I - 0x016350 05:A340: 11        .byte $11   ; 
- D 1 - I - 0x016351 05:A341: 83        .byte $83   ; 
- D 1 - I - 0x016352 05:A342: 47        .byte $47   ; 
- D 1 - I - 0x016353 05:A343: 83        .byte $83   ; 
- D 1 - I - 0x016354 05:A344: 41        .byte $41   ; 
- D 1 - I - 0x016355 05:A345: 03        .byte $03   ; 
- D 1 - I - 0x016356 05:A346: D1        .byte $D1   ; 
- D 1 - I - 0x016357 05:A347: 03        .byte $03   ; 
- D 1 - I - 0x016358 05:A348: 90        .byte $90   ; 
- D 1 - I - 0x016359 05:A349: 01        .byte $01   ; 
- D 1 - I - 0x01635A 05:A34A: 10        .byte $10   ; 
- D 1 - I - 0x01635B 05:A34B: 91        .byte $91   ; 
- D 1 - I - 0x01635C 05:A34C: 00        .byte $00   ; 
- D 1 - I - 0x01635D 05:A34D: 11        .byte $11   ; 
- D 1 - I - 0x01635E 05:A34E: 90        .byte $90   ; 
- D 1 - I - 0x01635F 05:A34F: 17        .byte $17   ; 
- D 1 - I - 0x016360 05:A350: 03        .byte $03   ; 
- D 1 - I - 0x016361 05:A351: 11        .byte $11   ; 
- D 1 - I - 0x016362 05:A352: C0        .byte $C0   ; 
- D 1 - I - 0x016363 05:A353: 11        .byte $11   ; 



_off008_A354_06:
- D 1 - I - 0x016364 05:A354: E0        .byte $E0   ; 
- D 1 - I - 0x016365 05:A355: E6        .byte $E6   ; 
- D 1 - I - 0x016366 05:A356: 81        .byte $81   ; 
- D 1 - I - 0x016367 05:A357: C6        .byte $C6   ; 
- D 1 - I - 0x016368 05:A358: 81        .byte $81   ; 
- D 1 - I - 0x016369 05:A359: 86        .byte $86   ; 
- D 1 - I - 0x01636A 05:A35A: 01        .byte $01   ; 
- D 1 - I - 0x01636B 05:A35B: 06        .byte $06   ; 
- D 1 - I - 0x01636C 05:A35C: 01        .byte $01   ; 
- D 1 - I - 0x01636D 05:A35D: 06        .byte $06   ; 
- D 1 - I - 0x01636E 05:A35E: 81        .byte $81   ; 
- D 1 - I - 0x01636F 05:A35F: 06        .byte $06   ; 
- D 1 - I - 0x016370 05:A360: 21        .byte $21   ; 
- D 1 - I - 0x016371 05:A361: 86        .byte $86   ; 
- D 1 - I - 0x016372 05:A362: 01        .byte $01   ; 
- D 1 - I - 0x016373 05:A363: 26        .byte $26   ; 
- D 1 - I - 0x016374 05:A364: 01        .byte $01   ; 



_off008_A365_07:
- D 1 - I - 0x016375 05:A365: 86        .byte $86   ; 
- D 1 - I - 0x016376 05:A366: 41        .byte $41   ; 
- D 1 - I - 0x016377 05:A367: 86        .byte $86   ; 
- D 1 - I - 0x016378 05:A368: 01        .byte $01   ; 
- D 1 - I - 0x016379 05:A369: 46        .byte $46   ; 
- D 1 - I - 0x01637A 05:A36A: D1        .byte $D1   ; 
- D 1 - I - 0x01637B 05:A36B: 02        .byte $02   ; 
- D 1 - I - 0x01637C 05:A36C: A6        .byte $A6   ; 
- D 1 - I - 0x01637D 05:A36D: 01        .byte $01   ; 
- D 1 - I - 0x01637E 05:A36E: 26        .byte $26   ; 
- D 1 - I - 0x01637F 05:A36F: 81        .byte $81   ; 
- D 1 - I - 0x016380 05:A370: 56        .byte $56   ; 
- D 1 - I - 0x016381 05:A371: 81        .byte $81   ; 
- D 1 - I - 0x016382 05:A372: 16        .byte $16   ; 
- D 1 - I - 0x016383 05:A373: 11        .byte $11   ; 
- D 1 - I - 0x016384 05:A374: 16        .byte $16   ; 
- D 1 - I - 0x016385 05:A375: E7        .byte $E7   ; 
- D 1 - I - 0x016386 05:A376: E5        .byte $E5   ; 



_off008_A377_08:
- D 1 - I - 0x016387 05:A377: 81        .byte $81   ; 
- D 1 - I - 0x016388 05:A378: 10        .byte $10   ; 
- D 1 - I - 0x016389 05:A379: 01        .byte $01   ; 
- D 1 - I - 0x01638A 05:A37A: 10        .byte $10   ; 
- D 1 - I - 0x01638B 05:A37B: 81        .byte $81   ; 
- D 1 - I - 0x01638C 05:A37C: 27        .byte $27   ; 
- D 1 - I - 0x01638D 05:A37D: A1        .byte $A1   ; 
- D 1 - I - 0x01638E 05:A37E: 06        .byte $06   ; 
- D 1 - I - 0x01638F 05:A37F: 21        .byte $21   ; 
- D 1 - I - 0x016390 05:A380: 80        .byte $80   ; 
- D 1 - I - 0x016391 05:A381: 01        .byte $01   ; 
- D 1 - I - 0x016392 05:A382: 10        .byte $10   ; 
- D 1 - I - 0x016393 05:A383: 11        .byte $11   ; 
- D 1 - I - 0x016394 05:A384: 82        .byte $82   ; 
- D 1 - I - 0x016395 05:A385: 47        .byte $47   ; 
- D 1 - I - 0x016396 05:A386: 82        .byte $82   ; 
- D 1 - I - 0x016397 05:A387: 41        .byte $41   ; 
- D 1 - I - 0x016398 05:A388: 02        .byte $02   ; 
- D 1 - I - 0x016399 05:A389: 80        .byte $80   ; 
- D 1 - I - 0x01639A 05:A38A: 01        .byte $01   ; 
- D 1 - I - 0x01639B 05:A38B: 10        .byte $10   ; 
- D 1 - I - 0x01639C 05:A38C: A1        .byte $A1   ; 
- D 1 - I - 0x01639D 05:A38D: 02        .byte $02   ; 
- D 1 - I - 0x01639E 05:A38E: A1        .byte $A1   ; 
- D 1 - I - 0x01639F 05:A38F: 03        .byte $03   ; 
- D 1 - I - 0x0163A0 05:A390: 21        .byte $21   ; 



_off008_A391_09:
- D 1 - I - 0x0163A1 05:A391: 80        .byte $80   ; 
- D 1 - I - 0x0163A2 05:A392: 27        .byte $27   ; 
- D 1 - I - 0x0163A3 05:A393: 21        .byte $21   ; 
- D 1 - I - 0x0163A4 05:A394: 81        .byte $81   ; 
- D 1 - I - 0x0163A5 05:A395: 00        .byte $00   ; 
- D 1 - I - 0x0163A6 05:A396: 02        .byte $02   ; 
- D 1 - I - 0x0163A7 05:A397: 11        .byte $11   ; 
- D 1 - I - 0x0163A8 05:A398: 00        .byte $00   ; 
- D 1 - I - 0x0163A9 05:A399: 81        .byte $81   ; 
- D 1 - I - 0x0163AA 05:A39A: 00        .byte $00   ; 
- D 1 - I - 0x0163AB 05:A39B: 03        .byte $03   ; 
- D 1 - I - 0x0163AC 05:A39C: 11        .byte $11   ; 
- D 1 - I - 0x0163AD 05:A39D: 00        .byte $00   ; 
- D 1 - I - 0x0163AE 05:A39E: 81        .byte $81   ; 
- D 1 - I - 0x0163AF 05:A39F: 02        .byte $02   ; 
- D 1 - I - 0x0163B0 05:A3A0: 81        .byte $81   ; 
- D 1 - I - 0x0163B1 05:A3A1: 02        .byte $02   ; 
- D 1 - I - 0x0163B2 05:A3A2: 01        .byte $01   ; 
- D 1 - I - 0x0163B3 05:A3A3: 02        .byte $02   ; 
- D 1 - I - 0x0163B4 05:A3A4: 01        .byte $01   ; 
- D 1 - I - 0x0163B5 05:A3A5: 02        .byte $02   ; 
- D 1 - I - 0x0163B6 05:A3A6: 05        .byte $05   ; 
- D 1 - I - 0x0163B7 05:A3A7: C1        .byte $C1   ; 
- D 1 - I - 0x0163B8 05:A3A8: 15        .byte $15   ; 
- D 1 - I - 0x0163B9 05:A3A9: B1        .byte $B1   ; 
- D 1 - I - 0x0163BA 05:A3AA: 25        .byte $25   ; 
- D 1 - I - 0x0163BB 05:A3AB: 81        .byte $81   ; 
- D 1 - I - 0x0163BC 05:A3AC: 03        .byte $03   ; 
- D 1 - I - 0x0163BD 05:A3AD: 81        .byte $81   ; 
- D 1 - I - 0x0163BE 05:A3AE: 03        .byte $03   ; 
- D 1 - I - 0x0163BF 05:A3AF: 01        .byte $01   ; 
- D 1 - I - 0x0163C0 05:A3B0: 03        .byte $03   ; 
- D 1 - I - 0x0163C1 05:A3B1: 01        .byte $01   ; 
- D 1 - I - 0x0163C2 05:A3B2: 03        .byte $03   ; 
- D 1 - I - 0x0163C3 05:A3B3: 05        .byte $05   ; 



off_A3B4_02:
- D 1 - I - 0x0163C4 05:A3B4: 04        .byte $04   ; 
- D 1 - I - 0x0163C5 05:A3B5: 04        .byte $04   ; 
- D 1 - I - 0x0163C6 05:A3B6: 00        .byte $00   ; 
- D 1 - I - 0x0163C7 05:A3B7: 01        .byte $01   ; 
- D 1 - I - 0x0163C8 05:A3B8: 00        .byte $00   ; 
- D 1 - I - 0x0163C9 05:A3B9: 00        .byte $00   ; 
- D 1 - I - 0x0163CA 05:A3BA: 00        .byte $00   ; 
- D 1 - I - 0x0163CB 05:A3BB: 00        .byte $00   ; 
- D 1 - I - 0x0163CC 05:A3BC: 00        .byte $00   ; 
- D 1 - I - 0x0163CD 05:A3BD: 00        .byte $00   ; 
- D 1 - I - 0x0163CE 05:A3BE: 00        .byte $00   ; 
- D 1 - I - 0x0163CF 05:A3BF: 00        .byte $00   ; 
- D 1 - I - 0x0163D0 05:A3C0: 01        .byte $01   ; 
- D 1 - I - 0x0163D1 05:A3C1: 00        .byte $00   ; 
- D 1 - I - 0x0163D2 05:A3C2: 04        .byte $04   ; 
- D 1 - I - 0x0163D3 05:A3C3: 04        .byte $04   ; 



off_A3C4_03:
- D 1 - I - 0x0163D4 05:A3C4: 04        .byte $04   ; 
- D 1 - I - 0x0163D5 05:A3C5: 04        .byte $04   ; 
- D 1 - I - 0x0163D6 05:A3C6: 00        .byte $00   ; 
- D 1 - I - 0x0163D7 05:A3C7: 01        .byte $01   ; 
- D 1 - I - 0x0163D8 05:A3C8: 00        .byte $00   ; 
- D 1 - I - 0x0163D9 05:A3C9: 00        .byte $00   ; 
- D 1 - I - 0x0163DA 05:A3CA: 00        .byte $00   ; 
- D 1 - I - 0x0163DB 05:A3CB: 03        .byte $03   ; 
- D 1 - I - 0x0163DC 05:A3CC: 03        .byte $03   ; 
- D 1 - I - 0x0163DD 05:A3CD: 03        .byte $03   ; 
- D 1 - I - 0x0163DE 05:A3CE: 03        .byte $03   ; 
- D 1 - I - 0x0163DF 05:A3CF: 02        .byte $02   ; 
- D 1 - I - 0x0163E0 05:A3D0: 03        .byte $03   ; 
- D 1 - I - 0x0163E1 05:A3D1: 03        .byte $03   ; 
- D 1 - I - 0x0163E2 05:A3D2: 04        .byte $04   ; 
- D 1 - I - 0x0163E3 05:A3D3: 04        .byte $04   ; 



off_A3D4:
- D 1 - I - 0x0163E4 05:A3D4: 82        .byte $82   ; 
- D 1 - I - 0x0163E5 05:A3D5: 43        .byte $43   ; 
- D 1 - I - 0x0163E6 05:A3D6: 43        .byte $43   ; 
- D 1 - I - 0x0163E7 05:A3D7: 43        .byte $43   ; 
- D 1 - I - 0x0163E8 05:A3D8: 02        .byte $02   ; 
- D 1 - I - 0x0163E9 05:A3D9: 0C        .byte $0C   ; 
- D 1 - I - 0x0163EA 05:A3DA: 43        .byte $43   ; 
- D 1 - I - 0x0163EB 05:A3DB: 80        .byte $80   ; 
- D 1 - I - 0x0163EC 05:A3DC: 41        .byte $41   ; 
- D 1 - I - 0x0163ED 05:A3DD: 41        .byte $41   ; 
- D 1 - I - 0x0163EE 05:A3DE: 41        .byte $41   ; 
- D 1 - I - 0x0163EF 05:A3DF: 41        .byte $41   ; 
- D 1 - I - 0x0163F0 05:A3E0: 43        .byte $43   ; 
- D 1 - I - 0x0163F1 05:A3E1: 82        .byte $82   ; 
- D 1 - I - 0x0163F2 05:A3E2: 43        .byte $43   ; 
- D 1 - I - 0x0163F3 05:A3E3: 42        .byte $42   ; 
- D 1 - I - 0x0163F4 05:A3E4: 0C        .byte $0C   ; 
- D 1 - I - 0x0163F5 05:A3E5: 01        .byte $01   ; 
- D 1 - I - 0x0163F6 05:A3E6: 41        .byte $41   ; 
- D 1 - I - 0x0163F7 05:A3E7: 43        .byte $43   ; 
- D 1 - I - 0x0163F8 05:A3E8: 82        .byte $82   ; 
- D 1 - I - 0x0163F9 05:A3E9: 43        .byte $43   ; 
- D 1 - I - 0x0163FA 05:A3EA: 42        .byte $42   ; 
- D 1 - I - 0x0163FB 05:A3EB: 0C        .byte $0C   ; 
- D 1 - I - 0x0163FC 05:A3EC: 03        .byte $03   ; 
- D 1 - I - 0x0163FD 05:A3ED: 02        .byte $02   ; 
- D 1 - I - 0x0163FE 05:A3EE: 0C        .byte $0C   ; 
- D 1 - I - 0x0163FF 05:A3EF: 43        .byte $43   ; 
- D 1 - I - 0x016400 05:A3F0: 82        .byte $82   ; 
- D 1 - I - 0x016401 05:A3F1: 43        .byte $43   ; 
- D 1 - I - 0x016402 05:A3F2: 43        .byte $43   ; 
- D 1 - I - 0x016403 05:A3F3: 43        .byte $43   ; 
- D 1 - I - 0x016404 05:A3F4: 43        .byte $43   ; 
- D 1 - I - 0x016405 05:A3F5: 43        .byte $43   ; 



sub_A3F6:
sub_0x016406:
C - - - - - 0x016406 05:A3F6: A9 01     LDA #$01
C - - - - - 0x016408 05:A3F8: 85 01     STA ram_0001
C - - - - - 0x01640A 05:A3FA: A9 03     LDA #$03
C - - - - - 0x01640C 05:A3FC: 85 03     STA ram_0003
bra_A3FE:
C - - - - - 0x01640E 05:A3FE: A4 EB     LDY ram_map_location
C - - - - - 0x016410 05:A400: B9 7E 68  LDA ram_687E,Y
C - - - - - 0x016413 05:A403: A4 03     LDY ram_0003
C - - - - - 0x016415 05:A405: C0 02     CPY #$02
C - - - - - 0x016417 05:A407: 90 05     BCC bra_A40E
C - - - - - 0x016419 05:A409: A4 EB     LDY ram_map_location
C - - - - - 0x01641B 05:A40B: B9 FE 68  LDA ram_68FE,Y
bra_A40E:
C - - - - - 0x01641E 05:A40E: 85 00     STA ram_0000
C - - - - - 0x016420 05:A410: A5 03     LDA ram_0003
C - - - - - 0x016422 05:A412: 29 01     AND #$01
C - - - - - 0x016424 05:A414: D0 06     BNE bra_A41C
C - - - - - 0x016426 05:A416: 46 00     LSR ram_0000
C - - - - - 0x016428 05:A418: 46 00     LSR ram_0000
C - - - - - 0x01642A 05:A41A: 46 00     LSR ram_0000
bra_A41C:
C - - - - - 0x01642C 05:A41C: 46 00     LSR ram_0000
C - - - - - 0x01642E 05:A41E: 46 00     LSR ram_0000
C - - - - - 0x016430 05:A420: A5 02     LDA ram_0002
C - - - - - 0x016432 05:A422: 24 01     BIT ram_0001
C - - - - - 0x016434 05:A424: D0 09     BNE bra_A42F
C - - - - - 0x016436 05:A426: 06 01     ASL ram_0001
C - - - - - 0x016438 05:A428: C6 03     DEC ram_0003
C - - - - - 0x01643A 05:A42A: 10 D2     BPL bra_A3FE
- - - - - - 0x01643C 05:A42C: A9 08     LDA #$08
- - - - - - 0x01643E 05:A42E: 60        RTS
bra_A42F:
C - - - - - 0x01643F 05:A42F: A5 00     LDA ram_0000
C - - - - - 0x016441 05:A431: 29 07     AND #$07
C - - - - - 0x016443 05:A433: 60        RTS
bra_A434:
C - - - - - 0x016444 05:A434: A9 13     LDA #$13
C - - - - - 0x016446 05:A436: 85 06     STA ram_0006
C - - - - - 0x016448 05:A438: A2 19     LDX #$19
C - - - - - 0x01644A 05:A43A: D0 48     BNE bra_A484
bra_A43C:
C - - - - - 0x01644C 05:A43C: 20 98 72  JSR sub_bat_7298
C - - - - - 0x01644F 05:A43F: 4C 8E A4  JMP loc_A48E



sub_A442:
C - - - - - 0x016452 05:A442: A9 A0     LDA #< tbl_9FA0_tiles_id
C - - - - - 0x016454 05:A444: 85 00     STA ram_0000
C - - - - - 0x016456 05:A446: A9 9F     LDA #> tbl_9FA0_tiles_id
C - - - - - 0x016458 05:A448: 85 01     STA ram_0001
C - - - - - 0x01645A 05:A44A: A9 47     LDA #< ram_6547
C - - - - - 0x01645C 05:A44C: 85 02     STA ram_0002
C - - - - - 0x01645E 05:A44E: A9 65     LDA #> ram_6547
C - - - - - 0x016460 05:A450: 85 03     STA ram_0003
C - - - - - 0x016462 05:A452: A9 5A     LDA #< ram_655A
C - - - - - 0x016464 05:A454: 85 04     STA ram_0004
C - - - - - 0x016466 05:A456: A9 65     LDA #> ram_655A
C - - - - - 0x016468 05:A458: 85 05     STA ram_0005
C - - - - - 0x01646A 05:A45A: A9 0A     LDA #$0A
C - - - - - 0x01646C 05:A45C: 85 06     STA ram_0006
C - - - - - 0x01646E 05:A45E: A0 00     LDY #$00
bra_A460_loop:
C - - - - - 0x016470 05:A460: B1 00     LDA (ram_0000),Y
C - - - - - 0x016472 05:A462: F0 D0     BEQ bra_A434
C - - - - - 0x016474 05:A464: 91 02     STA (ram_0002),Y
C - - - - - 0x016476 05:A466: 91 04     STA (ram_0004),Y
C - - - - - 0x016478 05:A468: C9 DE     CMP #$DE
C - - - - - 0x01647A 05:A46A: F0 08     BEQ bra_A474
C - - - - - 0x01647C 05:A46C: C9 E2     CMP #$E2
C - - - - - 0x01647E 05:A46E: B0 04     BCS bra_A474
C - - - - - 0x016480 05:A470: 69 01     ADC #$01
C - - - - - 0x016482 05:A472: 91 04     STA (ram_0004),Y
bra_A474:
C - - - - - 0x016484 05:A474: A9 01     LDA #$01
C - - - - - 0x016486 05:A476: A2 01     LDX #$01
C - - - - - 0x016488 05:A478: C6 06     DEC ram_0006
C - - - - - 0x01648A 05:A47A: D0 08     BNE bra_A484
C - - - - - 0x01648C 05:A47C: A9 0A     LDA #$0A
C - - - - - 0x01648E 05:A47E: 85 06     STA ram_0006
C - - - - - 0x016490 05:A480: A9 0D     LDA #$0D
C - - - - - 0x016492 05:A482: A2 1F     LDX #$1F
bra_A484:
C - - - - - 0x016494 05:A484: 20 82 72  JSR sub_bat_7282
C - - - - - 0x016497 05:A487: 8A        TXA
C - - - - - 0x016498 05:A488: CA        DEX
C - - - - - 0x016499 05:A489: F0 B1     BEQ bra_A43C
C - - - - - 0x01649B 05:A48B: 20 8E 72  JSR sub_bat_728E
loc_A48E:
C D 1 - - - 0x01649E 05:A48E: 20 74 72  JSR sub_bat_7274
; bzk dangerous loop exit condition implementation by developers (4E = current table size)
C - - - - - 0x0164A1 05:A491: C9 EE     CMP #< (tbl_9FA0_tiles_id + $4E)
C - - - - - 0x0164A3 05:A493: D0 CB     BNE bra_A460_loop
C - - - - - 0x0164A5 05:A495: A9 30     LDA #< ram_6530
C - - - - - 0x0164A7 05:A497: 85 02     STA ram_0002
C - - - - - 0x0164A9 05:A499: A9 65     LDA #> ram_6530
C - - - - - 0x0164AB 05:A49B: 85 03     STA ram_0003
C - - - - - 0x0164AD 05:A49D: A9 EF     LDA #< ram_67EF
C - - - - - 0x0164AF 05:A49F: 85 04     STA ram_0004
C - - - - - 0x0164B1 05:A4A1: A9 67     LDA #> ram_67EF
C - - - - - 0x0164B3 05:A4A3: 85 05     STA ram_0005
bra_A4A5_loop:
C - - - - - 0x0164B5 05:A4A5: B1 02     LDA (ram_0002),Y
C - - - - - 0x0164B7 05:A4A7: 91 04     STA (ram_0004),Y
C - - - - - 0x0164B9 05:A4A9: C9 DD     CMP #$DD
C - - - - - 0x0164BB 05:A4AB: F0 22     BEQ bra_A4CF
C - - - - - 0x0164BD 05:A4AD: C9 E0     CMP #$E0
C - - - - - 0x0164BF 05:A4AF: B0 0D     BCS bra_A4BE
C - - - - - 0x0164C1 05:A4B1: C9 DC     CMP #$DC
C - - - - - 0x0164C3 05:A4B3: B0 04     BCS bra_A4B9
C - - - - - 0x0164C5 05:A4B5: 69 01     ADC #$01
C - - - - - 0x0164C7 05:A4B7: 91 04     STA (ram_0004),Y
bra_A4B9:
C - - - - - 0x0164C9 05:A4B9: 18        CLC
C - - - - - 0x0164CA 05:A4BA: 69 01     ADC #$01
bra_A4BC_loop:
C - - - - - 0x0164CC 05:A4BC: 91 04     STA (ram_0004),Y
bra_A4BE:
C - - - - - 0x0164CE 05:A4BE: 20 98 72  JSR sub_bat_7298
C - - - - - 0x0164D1 05:A4C1: 20 80 72  JSR sub_bat_7280
C - - - - - 0x0164D4 05:A4C4: C9 90     CMP #$90
C - - - - - 0x0164D6 05:A4C6: D0 DD     BNE bra_A4A5_loop
C - - - - - 0x0164D8 05:A4C8: A5 03     LDA ram_0003
C - - - - - 0x0164DA 05:A4CA: C9 66     CMP #$66
C - - - - - 0x0164DC 05:A4CC: D0 D7     BNE bra_A4A5_loop
C - - - - - 0x0164DE 05:A4CE: 60        RTS
bra_A4CF:
C - - - - - 0x0164DF 05:A4CF: A9 DC     LDA #$DC
C - - - - - 0x0164E1 05:A4D1: D0 E9     BNE bra_A4BC_loop



tbl_A4D3:
- D 1 - - - 0x0164E3 05:A4D3: 01        .byte $01   ; 00
- D 1 - - - 0x0164E4 05:A4D4: 02        .byte $02   ; 01
- D 1 - - - 0x0164E5 05:A4D5: 04        .byte $04   ; 02
- D 1 - - - 0x0164E6 05:A4D6: 08        .byte $08   ; 03



tbl_A4D7:
- D 1 - - - 0x0164E7 05:A4D7: EE        .byte < off_9FEE_00   ; 00
- D 1 - - - 0x0164E8 05:A4D8: 2A        .byte < off_A02A_01   ; 01
- D 1 - - - 0x0164E9 05:A4D9: 66        .byte < off_A066_02   ; 02
- D 1 - - - 0x0164EA 05:A4DA: A2        .byte < off_A0A2_03   ; 03

tbl_A4DB:
- D 1 - - - 0x0164EB 05:A4DB: 9F        .byte > off_9FEE_00   ; 00
- D 1 - - - 0x0164EC 05:A4DC: A0        .byte > off_A02A_01   ; 01
- D 1 - - - 0x0164ED 05:A4DD: A0        .byte > off_A066_02   ; 02
- D 1 - - - 0x0164EE 05:A4DE: A0        .byte > off_A0A2_03   ; 03

tbl_A4DF:
- D 1 - - - 0x0164EF 05:A4DF: A1        .byte < ram_67A1   ; 00
- D 1 - - - 0x0164F0 05:A4E0: 4F        .byte < ram_654F   ; 01
- D 1 - - - 0x0164F1 05:A4E1: 76        .byte < ram_6676   ; 02
- D 1 - - - 0x0164F2 05:A4E2: 65        .byte < ram_6665   ; 03

tbl_A4E3:
- D 1 - - - 0x0164F3 05:A4E3: 67        .byte > ram_67A1   ; 00
- D 1 - - - 0x0164F4 05:A4E4: 65        .byte > ram_654F   ; 01
- D 1 - - - 0x0164F5 05:A4E5: 66        .byte > ram_6676   ; 02
- D 1 - - - 0x0164F6 05:A4E6: 66        .byte > ram_6665   ; 03



tbl_A4E7:
- D 1 - - - 0x0164F7 05:A4E7: 14        .byte $14   ; 00
- D 1 - - - 0x0164F8 05:A4E8: 01        .byte $01   ; 01
- D 1 - - - 0x0164F9 05:A4E9: 01        .byte $01   ; 02



tbl_A4EA:
- D 1 - - - 0x0164FA 05:A4EA: 02        .byte $02   ; 00
- D 1 - - - 0x0164FB 05:A4EB: 02        .byte $02   ; 01
- D 1 - - - 0x0164FC 05:A4EC: 2C        .byte $2C   ; 02
- D 1 - - - 0x0164FD 05:A4ED: 2C        .byte $2C   ; 03



tbl_A4EE:
- D 1 - - - 0x0164FE 05:A4EE: 03        .byte $03   ; 00
- D 1 - - - 0x0164FF 05:A4EF: 03        .byte $03   ; 01
- D 1 - - - 0x016500 05:A4F0: 02        .byte $02   ; 02
- D 1 - - - 0x016501 05:A4F1: 02        .byte $02   ; 03



tbl_A4F2:   ; loop counter
- D 1 - - - 0x016502 05:A4F2: 01        .byte $01   ; 00
- D 1 - - - 0x016503 05:A4F3: 01        .byte $01   ; 01
- D 1 - - - 0x016504 05:A4F4: 02        .byte $02   ; 02
- D 1 - - - 0x016505 05:A4F5: 02        .byte $02   ; 03



sub_A4F6:
loc_A4F6:
C D 1 - - - 0x016506 05:A4F6: A2 03     LDX #$03
loc_A4F8:
C D 1 - - - 0x016508 05:A4F8: A9 01     LDA #$01
C - - - - - 0x01650A 05:A4FA: 85 06     STA ram_0006
loc_A4FC:
C D 1 - - - 0x01650C 05:A4FC: 8A        TXA
C - - - - - 0x01650D 05:A4FD: 48        PHA
C - - - - - 0x01650E 05:A4FE: 85 0B     STA ram_000B
C - - - - - 0x016510 05:A500: BD D3 A4  LDA tbl_A4D3,X
C - - - - - 0x016513 05:A503: 85 02     STA ram_0002
C - - - - - 0x016515 05:A505: 20 F6 A3  JSR sub_A3F6
C - - - - - 0x016518 05:A508: C9 05     CMP #$05
C - - - - - 0x01651A 05:A50A: B0 1C     BCS bra_A528
C - - - - - 0x01651C 05:A50C: C9 04     CMP #$04
C - - - - - 0x01651E 05:A50E: D0 08     BNE bra_A518
C - - - - - 0x016520 05:A510: A9 08     LDA #$08
C - - - - - 0x016522 05:A512: D0 14     BNE bra_A528
bra_A514:
C - - - - - 0x016524 05:A514: A9 09     LDA #$09
C - - - - - 0x016526 05:A516: D0 2F     BNE bra_A547
bra_A518:
C - - - - - 0x016528 05:A518: 48        PHA
C - - - - - 0x016529 05:A519: A5 02     LDA ram_0002
C - - - - - 0x01652B 05:A51B: 49 FF     EOR #$FF
C - - - - - 0x01652D 05:A51D: 25 EE     AND ram_00EE
C - - - - - 0x01652F 05:A51F: 85 EE     STA ram_00EE
C - - - - - 0x016531 05:A521: 68        PLA
C - - - - - 0x016532 05:A522: C9 01     CMP #$01
C - - - - - 0x016534 05:A524: B0 02     BCS bra_A528
C - - - - - 0x016536 05:A526: A9 04     LDA #$04
bra_A528:
C - - - - - 0x016538 05:A528: 48        PHA
C - - - - - 0x016539 05:A529: A5 EE     LDA ram_00EE
C - - - - - 0x01653B 05:A52B: 25 02     AND ram_0002
C - - - - - 0x01653D 05:A52D: AA        TAX
C - - - - - 0x01653E 05:A52E: 68        PLA
C - - - - - 0x01653F 05:A52F: E4 02     CPX ram_0002
C - - - - - 0x016541 05:A531: D0 14     BNE bra_A547
C - - - - - 0x016543 05:A533: A8        TAY
C - - - - - 0x016544 05:A534: 68        PLA
C - - - - - 0x016545 05:A535: 48        PHA
C - - - - - 0x016546 05:A536: AA        TAX
C - - - - - 0x016547 05:A537: 98        TYA
C - - - - - 0x016548 05:A538: C9 07     CMP #$07
C - - - - - 0x01654A 05:A53A: F0 09     BEQ bra_A545
C - - - - - 0x01654C 05:A53C: 48        PHA
C - - - - - 0x01654D 05:A53D: 20 97 8A  JSR sub_8A97
C - - - - - 0x016550 05:A540: 68        PLA
C - - - - - 0x016551 05:A541: C9 08     CMP #$08
C - - - - - 0x016553 05:A543: F0 CF     BEQ bra_A514
bra_A545:
C - - - - - 0x016555 05:A545: A9 04     LDA #$04
bra_A547:
C - - - - - 0x016557 05:A547: A6 06     LDX ram_0006
C - - - - - 0x016559 05:A549: F0 0A     BEQ bra_A555
C - - - - - 0x01655B 05:A54B: A6 0B     LDX ram_000B
C - - - - - 0x01655D 05:A54D: 48        PHA
C - - - - - 0x01655E 05:A54E: 20 F6 A3  JSR sub_A3F6
C - - - - - 0x016561 05:A551: 20 41 B6  JSR sub_B641
C - - - - - 0x016564 05:A554: 68        PLA
bra_A555:
C - - - - - 0x016565 05:A555: C9 04     CMP #$04
C - - - - - 0x016567 05:A557: 90 4C     BCC bra_A5A5
C - - - - - 0x016569 05:A559: 38        SEC
C - - - - - 0x01656A 05:A55A: E9 03     SBC #$03
C - - - - - 0x01656C 05:A55C: A8        TAY
C - - - - - 0x01656D 05:A55D: C0 03     CPY #$03
C - - - - - 0x01656F 05:A55F: 90 01     BCC bra_A562
C - - - - - 0x016571 05:A561: 88        DEY
bra_A562:
C - - - - - 0x016572 05:A562: 68        PLA
C - - - - - 0x016573 05:A563: 48        PHA
C - - - - - 0x016574 05:A564: 20 B4 A5  JSR sub_A5B4
C - - - - - 0x016577 05:A567: A5 06     LDA ram_0006
C - - - - - 0x016579 05:A569: D0 0B     BNE bra_A576
C - - - - - 0x01657B 05:A56B: BD EA A4  LDA tbl_A4EA,X
C - - - - - 0x01657E 05:A56E: 20 76 72  JSR sub_bat_7276
C - - - - - 0x016581 05:A571: A9 06     LDA #$06
C - - - - - 0x016583 05:A573: 20 82 72  JSR sub_bat_7282
bra_A576:
C - - - - - 0x016586 05:A576: A0 00     LDY #$00
C - - - - - 0x016588 05:A578: BD EE A4  LDA tbl_A4EE,X
C - - - - - 0x01658B 05:A57B: 85 05     STA ram_0005
bra_A57D:
C - - - - - 0x01658D 05:A57D: 68        PLA
C - - - - - 0x01658E 05:A57E: 48        PHA
C - - - - - 0x01658F 05:A57F: AA        TAX
C - - - - - 0x016590 05:A580: BD F2 A4  LDA tbl_A4F2,X
C - - - - - 0x016593 05:A583: AA        TAX
bra_A584_loop:
C - - - - - 0x016594 05:A584: B1 02     LDA (ram_0002),Y
C - - - - - 0x016596 05:A586: 91 00     STA (ram_0000),Y
C - - - - - 0x016598 05:A588: 20 80 72  JSR sub_bat_7280
C - - - - - 0x01659B 05:A58B: BD E7 A4  LDA tbl_A4E7,X
C - - - - - 0x01659E 05:A58E: 20 76 72  JSR sub_bat_7276
C - - - - - 0x0165A1 05:A591: E0 00     CPX #$00
C - - - - - 0x0165A3 05:A593: D0 09     BNE bra_A59E
C - - - - - 0x0165A5 05:A595: 68        PLA
C - - - - - 0x0165A6 05:A596: 48        PHA
C - - - - - 0x0165A7 05:A597: C9 02     CMP #$02
C - - - - - 0x0165A9 05:A599: B0 03     BCS bra_A59E
C - - - - - 0x0165AB 05:A59B: 20 74 72  JSR sub_bat_7274
bra_A59E:
C - - - - - 0x0165AE 05:A59E: CA        DEX
C - - - - - 0x0165AF 05:A59F: 10 E3     BPL bra_A584_loop
C - - - - - 0x0165B1 05:A5A1: C6 05     DEC ram_0005
C - - - - - 0x0165B3 05:A5A3: D0 D8     BNE bra_A57D
bra_A5A5:
C - - - - - 0x0165B5 05:A5A5: 68        PLA
C - - - - - 0x0165B6 05:A5A6: AA        TAX
C - - - - - 0x0165B7 05:A5A7: C6 06     DEC ram_0006
C - - - - - 0x0165B9 05:A5A9: 30 03     BMI bra_A5AE
C - - - - - 0x0165BB 05:A5AB: 4C FC A4  JMP loc_A4FC
bra_A5AE:
C - - - - - 0x0165BE 05:A5AE: CA        DEX
C - - - - - 0x0165BF 05:A5AF: 30 23     BMI bra_A5D4_RTS
C - - - - - 0x0165C1 05:A5B1: 4C F8 A4  JMP loc_A4F8



sub_A5B4:
C - - - - - 0x0165C4 05:A5B4: AA        TAX
C - - - - - 0x0165C5 05:A5B5: BD D7 A4  LDA tbl_A4D7,X
C - - - - - 0x0165C8 05:A5B8: 85 02     STA ram_0002
C - - - - - 0x0165CA 05:A5BA: BD DB A4  LDA tbl_A4DB,X
C - - - - - 0x0165CD 05:A5BD: 85 03     STA ram_0003
C - - - - - 0x0165CF 05:A5BF: BD DF A4  LDA tbl_A4DF,X
C - - - - - 0x0165D2 05:A5C2: 85 00     STA ram_0000
C - - - - - 0x0165D4 05:A5C4: BD E3 A4  LDA tbl_A4E3,X
C - - - - - 0x0165D7 05:A5C7: 85 01     STA ram_0001
loc_A5C9:
C D 1 - - - 0x0165D9 05:A5C9: 88        DEY
C - - - - - 0x0165DA 05:A5CA: F0 08     BEQ bra_A5D4_RTS
C - - - - - 0x0165DC 05:A5CC: A9 0C     LDA #$0C
C - - - - - 0x0165DE 05:A5CE: 20 82 72  JSR sub_bat_7282
C - - - - - 0x0165E1 05:A5D1: 4C C9 A5  JMP loc_A5C9
bra_A5D4_RTS:
C - - - - - 0x0165E4 05:A5D4: 60        RTS



tbl_A5D5:
; offset via 0x0165F3
; 00
- D 1 - - - 0x0165E5 05:A5D5: 01        .byte $01   ; 
- D 1 - - - 0x0165E6 05:A5D6: 03        .byte $03   ; 
- D 1 - - - 0x0165E7 05:A5D7: 06        .byte $06   ; 
- D 1 - - - 0x0165E8 05:A5D8: 08        .byte $08   ; 
; 04
- D 1 - - - 0x0165E9 05:A5D9: 03        .byte $03   ; 
- D 1 - - - 0x0165EA 05:A5DA: 05        .byte $05   ; 
- D 1 - - - 0x0165EB 05:A5DB: 08        .byte $08   ; 
- D 1 - - - 0x0165EC 05:A5DC: 0A        .byte $0A   ; 
; 08
- D 1 - - - 0x0165ED 05:A5DD: 03        .byte $03   ; 
- D 1 - - - 0x0165EE 05:A5DE: 06        .byte $06   ; 
; 0A
- D 1 - - - 0x0165EF 05:A5DF: 04        .byte $04   ; 
- D 1 - - - 0x0165F0 05:A5E0: 07        .byte $07   ; 
- D 1 - - - 0x0165F1 05:A5E1: 05        .byte $05   ; 
- D 1 - - - 0x0165F2 05:A5E2: 08        .byte $08   ; 



tbl_A5E3:
- D 1 - - - 0x0165F3 05:A5E3: 00        .byte $00   ; 00
- D 1 - - - 0x0165F4 05:A5E4: 04        .byte $04   ; 01
- D 1 - - - 0x0165F5 05:A5E5: 08        .byte $08   ; 02
- D 1 - - - 0x0165F6 05:A5E6: 0A        .byte $0A   ; 03



tbl_A5E7_lo:
- D 1 - - - 0x0165F7 05:A5E7: 22        .byte $22   ; 00
- D 1 - - - 0x0165F8 05:A5E8: 22        .byte $22   ; 01
- D 1 - - - 0x0165F9 05:A5E9: 23        .byte $23   ; 02
- D 1 - - - 0x0165FA 05:A5EA: 21        .byte $21   ; 03

tbl_A5EB_hi:
- D 1 - - - 0x0165FB 05:A5EB: 5C        .byte $5C   ; 00
- D 1 - - - 0x0165FC 05:A5EC: 42        .byte $42   ; 01
- D 1 - - - 0x0165FD 05:A5ED: 4F        .byte $4F   ; 02
- D 1 - - - 0x0165FE 05:A5EE: 4F        .byte $4F   ; 03



tbl_A5EF:
- D 1 - - - 0x0165FF 05:A5EF: 01        .byte $01   ; 00
- D 1 - - - 0x016600 05:A5F0: FF        .byte $FF   ; 01
- D 1 - - - 0x016601 05:A5F1: 10        .byte $10   ; 02
- D 1 - - - 0x016602 05:A5F2: F0        .byte $F0   ; 03



sub_0x016603:
C - - - - - 0x016603 05:A5F3: A5 12     LDA ram_game_mode_main
C - - - - - 0x016605 05:A5F5: C9 12     CMP #con_GM_triforce_collected
C - - - - - 0x016607 05:A5F7: F0 DB     BEQ bra_A5D4_RTS
C - - - - - 0x016609 05:A5F9: A5 27     LDA ram_0027
C - - - - - 0x01660B 05:A5FB: D0 D7     BNE bra_A5D4_RTS
C - - - - - 0x01660D 05:A5FD: A5 54     LDA ram_0054
C - - - - - 0x01660F 05:A5FF: F0 D3     BEQ bra_A5D4_RTS
C - - - - - 0x016611 05:A601: 29 07     AND #$07
C - - - - - 0x016613 05:A603: A0 01     LDY #$01
C - - - - - 0x016615 05:A605: 84 02     STY ram_0002
C - - - - - 0x016617 05:A607: 24 02     BIT ram_0002
C - - - - - 0x016619 05:A609: F0 01     BEQ bra_A60C
C - - - - - 0x01661B 05:A60B: 4A        LSR
bra_A60C:
C - - - - - 0x01661C 05:A60C: C9 02     CMP #$02
C - - - - - 0x01661E 05:A60E: D0 04     BNE bra_A614
C - - - - - 0x016620 05:A610: A0 30     LDY #$30
C - - - - - 0x016622 05:A612: 84 28     STY ram_0028
bra_A614:
C - - - - - 0x016624 05:A614: 29 03     AND #$03
C - - - - - 0x016626 05:A616: 38        SEC
C - - - - - 0x016627 05:A617: E9 01     SBC #$01
C - - - - - 0x016629 05:A619: 29 02     AND #$02
C - - - - - 0x01662B 05:A61B: 85 08     STA ram_0008
C - - - - - 0x01662D 05:A61D: A5 54     LDA ram_0054
C - - - - - 0x01662F 05:A61F: C9 05     CMP #$05
C - - - - - 0x016631 05:A621: B0 0E     BCS bra_A631
C - - - - - 0x016633 05:A623: A5 55     LDA ram_0055
C - - - - - 0x016635 05:A625: 85 02     STA ram_0002
C - - - - - 0x016637 05:A627: 20 F6 A3  JSR sub_A3F6
C - - - - - 0x01663A 05:A62A: C9 07     CMP #$07
C - - - - - 0x01663C 05:A62C: F0 03     BEQ bra_A631
C - - - - - 0x01663E 05:A62E: 4C 82 A6  JMP loc_A682
bra_A631:
C - - - - - 0x016641 05:A631: 20 B1 A6  JSR sub_A6B1
bra_A634:
C - - - - - 0x016644 05:A634: A5 06     LDA ram_0006
C - - - - - 0x016646 05:A636: 85 04     STA ram_0004
C - - - - - 0x016648 05:A638: A5 00     LDA ram_0000
C - - - - - 0x01664A 05:A63A: 9D 02 03  STA ram_0302,X
C - - - - - 0x01664D 05:A63D: E8        INX
C - - - - - 0x01664E 05:A63E: A5 01     LDA ram_0001
C - - - - - 0x016650 05:A640: 9D 02 03  STA ram_0302,X
C - - - - - 0x016653 05:A643: E8        INX
C - - - - - 0x016654 05:A644: A5 06     LDA ram_0006
C - - - - - 0x016656 05:A646: 9D 02 03  STA ram_0302,X
C - - - - - 0x016659 05:A649: E8        INX
bra_A64A:
C - - - - - 0x01665A 05:A64A: 20 00 94  JSR sub_9400
C - - - - - 0x01665D 05:A64D: D0 FB     BNE bra_A64A
C - - - - - 0x01665F 05:A64F: A9 20     LDA #$20
C - - - - - 0x016661 05:A651: 05 01     ORA ram_0001
C - - - - - 0x016663 05:A653: 85 01     STA ram_0001
C - - - - - 0x016665 05:A655: C6 05     DEC ram_0005
C - - - - - 0x016667 05:A657: D0 DB     BNE bra_A634
C - - - - - 0x016669 05:A659: A9 FF     LDA #$FF
C - - - - - 0x01666B 05:A65B: 9D 02 03  STA ram_0302,X
C - - - - - 0x01666E 05:A65E: 8A        TXA
C - - - - - 0x01666F 05:A65F: 8D 01 03  STA ram_0301
C - - - - - 0x016672 05:A662: E6 54     INC ram_0054
C - - - - - 0x016674 05:A664: A5 54     LDA ram_0054
C - - - - - 0x016676 05:A666: 29 03     AND #$03
C - - - - - 0x016678 05:A668: F0 05     BEQ bra_A66F
C - - - - - 0x01667A 05:A66A: A9 08     LDA #$08
C - - - - - 0x01667C 05:A66C: 85 27     STA ram_0027
C - - - - - 0x01667E 05:A66E: 60        RTS
bra_A66F:
C - - - - - 0x01667F 05:A66F: A5 54     LDA ram_0054
C - - - - - 0x016681 05:A671: C9 04     CMP #$04
C - - - - - 0x016683 05:A673: D0 14     BNE bra_A689
C - - - - - 0x016685 05:A675: A6 09     LDX ram_0009
C - - - - - 0x016687 05:A677: 20 A0 8A  JSR sub_8AA0
C - - - - - 0x01668A 05:A67A: A5 55     LDA ram_0055
C - - - - - 0x01668C 05:A67C: 49 0F     EOR #$0F
C - - - - - 0x01668E 05:A67E: 25 EE     AND ram_00EE
loc_A680:
C D 1 - - - 0x016690 05:A680: 85 EE     STA ram_00EE
loc_A682:
C D 1 - - - 0x016692 05:A682: A9 00     LDA #$00
C - - - - - 0x016694 05:A684: 85 54     STA ram_0054
C - - - - - 0x016696 05:A686: 4C F6 A4  JMP loc_A4F6
bra_A689:
C - - - - - 0x016699 05:A689: A5 55     LDA ram_0055
C - - - - - 0x01669B 05:A68B: 85 02     STA ram_0002
C - - - - - 0x01669D 05:A68D: 20 F6 A3  JSR sub_A3F6
C - - - - - 0x0166A0 05:A690: C9 07     CMP #$07
C - - - - - 0x0166A2 05:A692: F0 16     BEQ bra_A6AA
C - - - - - 0x0166A4 05:A694: A6 09     LDX ram_0009
C - - - - - 0x0166A6 05:A696: 20 97 8A  JSR sub_8A97
C - - - - - 0x0166A9 05:A699: 98        TYA
C - - - - - 0x0166AA 05:A69A: 18        CLC
C - - - - - 0x0166AB 05:A69B: 7D EF A5  ADC tbl_A5EF,X
C - - - - - 0x0166AE 05:A69E: A8        TAY
C - - - - - 0x0166AF 05:A69F: 8A        TXA
C - - - - - 0x0166B0 05:A6A0: 49 01     EOR #$01
C - - - - - 0x0166B2 05:A6A2: AA        TAX
C - - - - - 0x0166B3 05:A6A3: B1 00     LDA (ram_0000),Y
C - - - - - 0x0166B5 05:A6A5: 1D BE E6  ORA tbl_0x01E6CE,X
C - - - - - 0x0166B8 05:A6A8: 91 00     STA (ram_0000),Y
bra_A6AA:
C - - - - - 0x0166BA 05:A6AA: A5 55     LDA ram_0055
C - - - - - 0x0166BC 05:A6AC: 05 EE     ORA ram_00EE
C - - - - - 0x0166BE 05:A6AE: 4C 80 A6  JMP loc_A680



sub_A6B1:
C - - - - - 0x0166C1 05:A6B1: A5 55     LDA ram_0055
C - - - - - 0x0166C3 05:A6B3: 85 02     STA ram_0002
C - - - - - 0x0166C5 05:A6B5: 20 F6 A3  JSR sub_A3F6
C - - - - - 0x0166C8 05:A6B8: C9 05     CMP #$05
C - - - - - 0x0166CA 05:A6BA: 90 07     BCC bra_A6C3
C - - - - - 0x0166CC 05:A6BC: 48        PHA
C - - - - - 0x0166CD 05:A6BD: A9 04     LDA #con_sfx_1_door
C - - - - - 0x0166CF 05:A6BF: 20 7C 6D  JSR sub_bat_6D7C
C - - - - - 0x0166D2 05:A6C2: 68        PLA
bra_A6C3:
C - - - - - 0x0166D3 05:A6C3: C9 04     CMP #$04
C - - - - - 0x0166D5 05:A6C5: D0 02     BNE bra_A6C9
C - - - - - 0x0166D7 05:A6C7: A9 08     LDA #$08
bra_A6C9:
C - - - - - 0x0166D9 05:A6C9: C9 01     CMP #$01
C - - - - - 0x0166DB 05:A6CB: D0 02     BNE bra_A6CF
- - - - - - 0x0166DD 05:A6CD: A9 04     LDA #$04
bra_A6CF:
C - - - - - 0x0166DF 05:A6CF: 38        SEC
C - - - - - 0x0166E0 05:A6D0: E9 03     SBC #$03
C - - - - - 0x0166E2 05:A6D2: A8        TAY
C - - - - - 0x0166E3 05:A6D3: A5 08     LDA ram_0008
C - - - - - 0x0166E5 05:A6D5: F0 06     BEQ bra_A6DD
C - - - - - 0x0166E7 05:A6D7: C0 05     CPY #$05
C - - - - - 0x0166E9 05:A6D9: F0 07     BEQ bra_A6E2
C - - - - - 0x0166EB 05:A6DB: A0 01     LDY #$01
bra_A6DD:
C - - - - - 0x0166ED 05:A6DD: C0 03     CPY #$03
C - - - - - 0x0166EF 05:A6DF: 90 01     BCC bra_A6E2
C - - - - - 0x0166F1 05:A6E1: 88        DEY
bra_A6E2:
C - - - - - 0x0166F2 05:A6E2: A9 03     LDA #$03
C - - - - - 0x0166F4 05:A6E4: 38        SEC
C - - - - - 0x0166F5 05:A6E5: E5 03     SBC ram_0003
C - - - - - 0x0166F7 05:A6E7: 20 B4 A5  JSR sub_A5B4
C - - - - - 0x0166FA 05:A6EA: BD E7 A5  LDA tbl_A5E7_lo,X
C - - - - - 0x0166FD 05:A6ED: 85 00     STA ram_0000
C - - - - - 0x0166FF 05:A6EF: BD EB A5  LDA tbl_A5EB_hi,X
C - - - - - 0x016702 05:A6F2: 85 01     STA ram_0001
C - - - - - 0x016704 05:A6F4: 86 09     STX ram_0009
C - - - - - 0x016706 05:A6F6: AE 01 03  LDX ram_0301
C - - - - - 0x016709 05:A6F9: A9 00     LDA #$00
C - - - - - 0x01670B 05:A6FB: 85 07     STA ram_0007
C - - - - - 0x01670D 05:A6FD: A9 02     LDA #$02
C - - - - - 0x01670F 05:A6FF: 85 06     STA ram_0006
C - - - - - 0x016711 05:A701: 85 05     STA ram_0005
C - - - - - 0x016713 05:A703: 60        RTS



tbl_A704:
- D 1 - - - 0x016714 05:A704: D6 A2     .word _off008_A2D6_00
- D 1 - - - 0x016716 05:A706: E6 A2     .word _off008_A2E6_01
- D 1 - - - 0x016718 05:A708: 04 A3     .word _off008_A304_02
- D 1 - - - 0x01671A 05:A70A: 15 A3     .word _off008_A315_03
- D 1 - - - 0x01671C 05:A70C: 26 A3     .word _off008_A326_04
- D 1 - - - 0x01671E 05:A70E: 3D A3     .word _off008_A33D_05
- D 1 - - - 0x016720 05:A710: 54 A3     .word _off008_A354_06
- D 1 - - - 0x016722 05:A712: 65 A3     .word _off008_A365_07
- D 1 - - - 0x016724 05:A714: 77 A3     .word _off008_A377_08
- D 1 - - - 0x016726 05:A716: 91 A3     .word _off008_A391_09



tbl_A718:
- D 1 - - - 0x016728 05:A718: B0        .byte $B0   ; 00
- D 1 - - - 0x016729 05:A719: 74        .byte $74   ; 01
- D 1 - - - 0x01672A 05:A71A: 94        .byte $94   ; 02
- D 1 - - - 0x01672B 05:A71B: B4        .byte $B4   ; 03
- D 1 - - - 0x01672C 05:A71C: 70        .byte $70   ; 04
- D 1 - - - 0x01672D 05:A71D: 68        .byte $68   ; 05
- D 1 - - - 0x01672E 05:A71E: F4        .byte $F4   ; 06
- D 1 - - - 0x01672F 05:A71F: 24        .byte $24   ; 07



loc_A720:
C D 1 - - - 0x016730 05:A720: 20 5A E8  JSR sub_0x01E86A
C - - - - - 0x016733 05:A723: 48        PHA
C - - - - - 0x016734 05:A724: A9 DE     LDA #< tbl_A0DE
C - - - - - 0x016736 05:A726: 85 02     STA ram_0002
C - - - - - 0x016738 05:A728: A9 A0     LDA #> tbl_A0DE
C - - - - - 0x01673A 05:A72A: 85 03     STA ram_0003
C - - - - - 0x01673C 05:A72C: 68        PLA
C - - - - - 0x01673D 05:A72D: 0A        ASL
C - - - - - 0x01673E 05:A72E: 0A        ASL
C - - - - - 0x01673F 05:A72F: 85 00     STA ram_0000
C - - - - - 0x016741 05:A731: 20 82 72  JSR sub_bat_7282
C - - - - - 0x016744 05:A734: A5 00     LDA ram_0000
C - - - - - 0x016746 05:A736: 20 82 72  JSR sub_bat_7282
C - - - - - 0x016749 05:A739: A5 00     LDA ram_0000
C - - - - - 0x01674B 05:A73B: 20 82 72  JSR sub_bat_7282
C - - - - - 0x01674E 05:A73E: A9 8C     LDA #< ram_658C
C - - - - - 0x016750 05:A740: 85 00     STA ram_0000
C - - - - - 0x016752 05:A742: A9 65     LDA #> ram_658C
C - - - - - 0x016754 05:A744: 85 01     STA ram_0001
C - - - - - 0x016756 05:A746: A0 00     LDY #$00
C - - - - - 0x016758 05:A748: 84 06     STY ram_0006
loc_A74A:
C D 1 - - - 0x01675A 05:A74A: A4 06     LDY ram_0006
C - - - - - 0x01675C 05:A74C: B1 02     LDA (ram_0002),Y
C - - - - - 0x01675E 05:A74E: 29 F0     AND #$F0
C - - - - - 0x016760 05:A750: 4A        LSR
C - - - - - 0x016761 05:A751: 4A        LSR
C - - - - - 0x016762 05:A752: 4A        LSR
C - - - - - 0x016763 05:A753: AA        TAX
C - - - - - 0x016764 05:A754: BD 04 A7  LDA tbl_A704,X
C - - - - - 0x016767 05:A757: 85 04     STA ram_0004
C - - - - - 0x016769 05:A759: BD 05 A7  LDA tbl_A704 + 1,X
C - - - - - 0x01676C 05:A75C: 85 05     STA ram_0005
C - - - - - 0x01676E 05:A75E: B1 02     LDA (ram_0002),Y
C - - - - - 0x016770 05:A760: 29 0F     AND #$0F
C - - - - - 0x016772 05:A762: AA        TAX
C - - - - - 0x016773 05:A763: A0 00     LDY #$00
loc_A765:
C D 1 - - - 0x016775 05:A765: B1 04     LDA (ram_0004),Y
C - - - - - 0x016777 05:A767: 10 03     BPL bra_A76C
C - - - - - 0x016779 05:A769: CA        DEX
C - - - - - 0x01677A 05:A76A: 30 04     BMI bra_A770
bra_A76C:
C - - - - - 0x01677C 05:A76C: C8        INY
C - - - - - 0x01677D 05:A76D: 4C 65 A7  JMP loc_A765
bra_A770:
C - - - - - 0x016780 05:A770: 98        TYA
C - - - - - 0x016781 05:A771: 20 8E 72  JSR sub_bat_728E
C - - - - - 0x016784 05:A774: A9 00     LDA #$00
C - - - - - 0x016786 05:A776: 85 07     STA ram_0007
C - - - - - 0x016788 05:A778: 85 08     STA ram_0008
bra_A77A:
C - - - - - 0x01678A 05:A77A: A0 00     LDY #$00
C - - - - - 0x01678C 05:A77C: B1 04     LDA (ram_0004),Y
C - - - - - 0x01678E 05:A77E: 29 07     AND #$07
C - - - - - 0x016790 05:A780: AA        TAX
C - - - - - 0x016791 05:A781: BD 18 A7  LDA tbl_A718,X
C - - - - - 0x016794 05:A784: A0 00     LDY #$00
C - - - - - 0x016796 05:A786: 20 C1 A7  JSR sub_A7C1
C - - - - - 0x016799 05:A789: A9 02     LDA #$02
C - - - - - 0x01679B 05:A78B: 20 76 72  JSR sub_bat_7276
C - - - - - 0x01679E 05:A78E: A0 00     LDY #$00
C - - - - - 0x0167A0 05:A790: B1 04     LDA (ram_0004),Y
C - - - - - 0x0167A2 05:A792: 29 70     AND #$70
C - - - - - 0x0167A4 05:A794: 4A        LSR
C - - - - - 0x0167A5 05:A795: 4A        LSR
C - - - - - 0x0167A6 05:A796: 4A        LSR
C - - - - - 0x0167A7 05:A797: 4A        LSR
C - - - - - 0x0167A8 05:A798: C5 08     CMP ram_0008
C - - - - - 0x0167AA 05:A79A: F0 05     BEQ bra_A7A1
C - - - - - 0x0167AC 05:A79C: E6 08     INC ram_0008
C - - - - - 0x0167AE 05:A79E: 4C A8 A7  JMP loc_A7A8
bra_A7A1:
C - - - - - 0x0167B1 05:A7A1: A9 00     LDA #$00
C - - - - - 0x0167B3 05:A7A3: 85 08     STA ram_0008
C - - - - - 0x0167B5 05:A7A5: 20 8C 72  JSR sub_bat_728C
loc_A7A8:
C D 1 - - - 0x0167B8 05:A7A8: E6 07     INC ram_0007
C - - - - - 0x0167BA 05:A7AA: A5 07     LDA ram_0007
C - - - - - 0x0167BC 05:A7AC: C9 07     CMP #$07
C - - - - - 0x0167BE 05:A7AE: 90 CA     BCC bra_A77A
C - - - - - 0x0167C0 05:A7B0: A9 1E     LDA #$1E
C - - - - - 0x0167C2 05:A7B2: 20 76 72  JSR sub_bat_7276
C - - - - - 0x0167C5 05:A7B5: E6 06     INC ram_0006
C - - - - - 0x0167C7 05:A7B7: A5 06     LDA ram_0006
C - - - - - 0x0167C9 05:A7B9: C9 0C     CMP #$0C
C - - - - - 0x0167CB 05:A7BB: B0 03     BCS bra_A7C0_RTS
C - - - - - 0x0167CD 05:A7BD: 4C 4A A7  JMP loc_A74A
bra_A7C0_RTS:
C - - - - - 0x0167D0 05:A7C0: 60        RTS



sub_A7C1:
C - - - - - 0x0167D1 05:A7C1: C9 70     CMP #$70
C - - - - - 0x0167D3 05:A7C3: 90 1B     BCC bra_A7E0
C - - - - - 0x0167D5 05:A7C5: C9 F3     CMP #$F3
C - - - - - 0x0167D7 05:A7C7: B0 17     BCS bra_A7E0
C - - - - - 0x0167D9 05:A7C9: AA        TAX
C - - - - - 0x0167DA 05:A7CA: 91 00     STA (ram_0000),Y
C - - - - - 0x0167DC 05:A7CC: C8        INY
C - - - - - 0x0167DD 05:A7CD: E8        INX
C - - - - - 0x0167DE 05:A7CE: 8A        TXA
C - - - - - 0x0167DF 05:A7CF: 91 00     STA (ram_0000),Y
C - - - - - 0x0167E1 05:A7D1: 98        TYA
C - - - - - 0x0167E2 05:A7D2: 18        CLC
C - - - - - 0x0167E3 05:A7D3: 69 15     ADC #$15
C - - - - - 0x0167E5 05:A7D5: A8        TAY
C - - - - - 0x0167E6 05:A7D6: E8        INX
C - - - - - 0x0167E7 05:A7D7: 8A        TXA
C - - - - - 0x0167E8 05:A7D8: 91 00     STA (ram_0000),Y
C - - - - - 0x0167EA 05:A7DA: E8        INX
C - - - - - 0x0167EB 05:A7DB: 8A        TXA
loc_A7DC:
C D 1 - - - 0x0167EC 05:A7DC: C8        INY
C - - - - - 0x0167ED 05:A7DD: 91 00     STA (ram_0000),Y
C - - - - - 0x0167EF 05:A7DF: 60        RTS
bra_A7E0:
C - - - - - 0x0167F0 05:A7E0: 91 00     STA (ram_0000),Y
C - - - - - 0x0167F2 05:A7E2: C8        INY
C - - - - - 0x0167F3 05:A7E3: 91 00     STA (ram_0000),Y
C - - - - - 0x0167F5 05:A7E5: 48        PHA
C - - - - - 0x0167F6 05:A7E6: 98        TYA
C - - - - - 0x0167F7 05:A7E7: 18        CLC
C - - - - - 0x0167F8 05:A7E8: 69 15     ADC #$15
C - - - - - 0x0167FA 05:A7EA: A8        TAY
C - - - - - 0x0167FB 05:A7EB: 68        PLA
C - - - - - 0x0167FC 05:A7EC: 91 00     STA (ram_0000),Y
C - - - - - 0x0167FE 05:A7EE: 4C DC A7  JMP loc_A7DC



sub_A7F1:
C - - - - - 0x016801 05:A7F1: A9 00     LDA #$00
C - - - - - 0x016803 05:A7F3: 85 B7     STA ram_00B7
C - - - - - 0x016805 05:A7F5: 85 A3     STA ram_00A3
C - - - - - 0x016807 05:A7F7: 20 5A E8  JSR sub_0x01E86A
C - - - - - 0x01680A 05:A7FA: C9 21     CMP #$21
C - - - - - 0x01680C 05:A7FC: D0 0A     BNE bra_A808
- - - - - - 0x01680E 05:A7FE: A9 40     LDA #$40
- - - - - - 0x016810 05:A800: 85 7B     STA ram_007B
- - - - - - 0x016812 05:A802: 0A        ASL
- - - - - - 0x016813 05:A803: 85 8F     STA ram_008F
- - - - - - 0x016815 05:A805: 4C 2D A8  JMP loc_A82D
bra_A808:
C - - - - - 0x016818 05:A808: A2 08     LDX #$08
C - - - - - 0x01681A 05:A80A: A0 0A     LDY #$0A
bra_A80C:
C - - - - - 0x01681C 05:A80C: BD 00 E4  LDA tbl_0x01E410,X
C - - - - - 0x01681F 05:A80F: 85 00     STA ram_0000
C - - - - - 0x016821 05:A811: BD 01 E4  LDA tbl_0x01E410 + 1,X
C - - - - - 0x016824 05:A814: 85 01     STA ram_0001
C - - - - - 0x016826 05:A816: B1 00     LDA (ram_0000),Y
C - - - - - 0x016828 05:A818: C9 B0     CMP #$B0
C - - - - - 0x01682A 05:A81A: F0 08     BEQ bra_A824
C - - - - - 0x01682C 05:A81C: E8        INX
C - - - - - 0x01682D 05:A81D: E8        INX
C - - - - - 0x01682E 05:A81E: E8        INX
C - - - - - 0x01682F 05:A81F: E8        INX
C - - - - - 0x016830 05:A820: E0 34     CPX #$34
C - - - - - 0x016832 05:A822: D0 E8     BNE bra_A80C
bra_A824:
C - - - - - 0x016834 05:A824: 8A        TXA
C - - - - - 0x016835 05:A825: 0A        ASL
C - - - - - 0x016836 05:A826: 0A        ASL
C - - - - - 0x016837 05:A827: 85 7B     STA ram_007B
C - - - - - 0x016839 05:A829: A9 90     LDA #$90
C - - - - - 0x01683B 05:A82B: 85 8F     STA ram_008F
loc_A82D:
C - - - - - 0x01683D 05:A82D: A9 68     LDA #$68
C - - - - - 0x01683F 05:A82F: 8D 5A 03  STA ram_035A
C - - - - - 0x016842 05:A832: 60        RTS



ofs_0x016843_12_triforce_collected:
C - - J - - 0x016843 05:A833: A9 04     LDA #con_music_triforce
C - - - - - 0x016845 05:A835: 8D 00 06  STA ram_music
C - - - - - 0x016848 05:A838: A9 20     LDA #$20
C - - - - - 0x01684A 05:A83A: 85 7C     STA ram_007C
C - - - - - 0x01684C 05:A83C: A9 01     LDA #$01
C - - - - - 0x01684E 05:A83E: 85 7D     STA ram_007D
C - - - - - 0x016850 05:A840: A9 30     LDA #$30
C - - - - - 0x016852 05:A842: 85 28     STA ram_0028
C - - - - - 0x016854 05:A844: A9 24     LDA #$24
C - - - - - 0x016856 05:A846: 85 0A     STA ram_000A
C - - - - - 0x016858 05:A848: 20 D8 E8  JSR sub_0x01E8E8
C - - - - - 0x01685B 05:A84B: E6 11     INC ram_0011
C - - - - - 0x01685D 05:A84D: 20 1D 6E  JSR sub_bat_6E1D
C - - - - - 0x016860 05:A850: A9 1B     LDA #$1B
C - - - - - 0x016862 05:A852: 8D 05 05  STA ram_0505
C - - - - - 0x016865 05:A855: 4C 0C E8  JMP loc_0x01E81C



loc_0x016868:
C D 1 - - - 0x016868 05:A858: 20 1D 6E  JSR sub_bat_6E1D
C - - - - - 0x01686B 05:A85B: 20 17 E8  JSR sub_0x01E827
C - - - - - 0x01686E 05:A85E: A5 13     LDA ram_game_mode_sub
C - - - - - 0x016870 05:A860: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 1 - I - 0x016873 05:A863: 6D A8     .word ofs_A86D_00
- D 1 - I - 0x016875 05:A865: 77 A8     .word ofs_A877_01
- D 1 - I - 0x016877 05:A867: 8F A8     .word ofs_A88F_02
- D 1 - I - 0x016879 05:A869: 97 A8     .word ofs_A897_03
- D 1 - I - 0x01687B 05:A86B: AB A8     .word ofs_A8AB_04



ofs_A86D_00:
C - - J - - 0x01687D 05:A86D: A5 28     LDA ram_0028
C - - - - - 0x01687F 05:A86F: D0 16     BNE bra_A887_RTS
C - - - - - 0x016881 05:A871: A9 30     LDA #$30
C - - - - - 0x016883 05:A873: 85 28     STA ram_0028
C - - - - - 0x016885 05:A875: D0 15     BNE bra_A88C
ofs_A877_01:
C - - J - - 0x016887 05:A877: A0 18     LDY #$18
C - - - - - 0x016889 05:A879: A5 28     LDA ram_0028
C - - - - - 0x01688B 05:A87B: F0 0B     BEQ bra_A888
C - - - - - 0x01688D 05:A87D: 29 07     AND #$07
C - - - - - 0x01688F 05:A87F: C9 04     CMP #$04
C - - - - - 0x016891 05:A881: 90 02     BCC bra_A885
C - - - - - 0x016893 05:A883: A0 78     LDY #$78
bra_A885:
C - - - - - 0x016895 05:A885: 84 14     STY ram_0014
bra_A887_RTS:
C - - - - - 0x016897 05:A887: 60        RTS
bra_A888:
C - - - - - 0x016898 05:A888: A9 02     LDA #$02
C - - - - - 0x01689A 05:A88A: 85 63     STA ram_0063
bra_A88C:
C - - - - - 0x01689C 05:A88C: E6 13     INC ram_game_mode_sub
C - - - - - 0x01689E 05:A88E: 60        RTS



ofs_A88F_02:
C - - J - - 0x01689F 05:A88F: 20 89 ED  JSR sub_0x01ED99
C - - - - - 0x0168A2 05:A892: A5 63     LDA ram_0063
C - - - - - 0x0168A4 05:A894: F0 0E     BEQ bra_A8A4
C - - - - - 0x0168A6 05:A896: 60        RTS



ofs_A897_03:
C - - J - - 0x0168A7 05:A897: A5 28     LDA ram_0028
C - - - - - 0x0168A9 05:A899: D0 0F     BNE bra_A8AA_RTS
C - - - - - 0x0168AB 05:A89B: 20 48 72  JSR sub_bat_7248
C - - - - - 0x0168AE 05:A89E: A5 7C     LDA ram_007C
C - - - - - 0x0168B0 05:A8A0: C9 11     CMP #$11
C - - - - - 0x0168B2 05:A8A2: B0 06     BCS bra_A8AA_RTS
bra_A8A4:
C - - - - - 0x0168B4 05:A8A4: A9 80     LDA #$80
C - - - - - 0x0168B6 05:A8A6: 85 28     STA ram_0028
C - - - - - 0x0168B8 05:A8A8: E6 13     INC ram_game_mode_sub
bra_A8AA_RTS:
C - - - - - 0x0168BA 05:A8AA: 60        RTS



ofs_A8AB_04:
C - - J - - 0x0168BB 05:A8AB: A5 28     LDA ram_0028
C - - - - - 0x0168BD 05:A8AD: D0 FB     BNE bra_A8AA_RTS
C - - - - - 0x0168BF 05:A8AF: 20 F7 E5  JSR sub_0x01E607_hide_all_sprites
C - - - - - 0x0168C2 05:A8B2: A5 FF     LDA ram_00FF
C - - - - - 0x0168C4 05:A8B4: 29 FB     AND #$FB
C - - - - - 0x0168C6 05:A8B6: 85 FF     STA ram_00FF
C - - - - - 0x0168C8 05:A8B8: 8D 00 20  STA $2000
C - - - - - 0x0168CB 05:A8BB: 4C 47 B5  JMP loc_B547
bra_A8BE:
C - - - - - 0x0168CE 05:A8BE: 20 F4 A9  JSR sub_A9F4
C - - - - - 0x0168D1 05:A8C1: 4C 73 AB  JMP loc_AB73



sub_A8C4:
C - - - - - 0x0168D4 05:A8C4: 20 30 AB  JSR sub_AB30
C - - - - - 0x0168D7 05:A8C7: A5 10     LDA ram_0010
C - - - - - 0x0168D9 05:A8C9: F0 F3     BEQ bra_A8BE
C - - - - - 0x0168DB 05:A8CB: A9 F6     LDA #$F6
C - - - - - 0x0168DD 05:A8CD: 85 0A     STA ram_000A
C - - - - - 0x0168DF 05:A8CF: 20 D8 E8  JSR sub_0x01E8E8
C - - - - - 0x0168E2 05:A8D2: 20 6C B6  JSR sub_B66C
C - - - - - 0x0168E5 05:A8D5: 20 42 A4  JSR sub_A442
C - - - - - 0x0168E8 05:A8D8: 20 F6 A4  JSR sub_A4F6
C - - - - - 0x0168EB 05:A8DB: 4C 20 A7  JMP loc_A720



loc_A8DE:
sub_0x0168EE:
C D 1 - - - 0x0168EE 05:A8DE: A9 1A     LDA #< ram_651A
C - - - - - 0x0168F0 05:A8E0: 85 00     STA ram_0000
C - - - - - 0x0168F2 05:A8E2: A9 65     LDA #> ram_651A
C - - - - - 0x0168F4 05:A8E4: 85 01     STA ram_0001
C - - - - - 0x0168F6 05:A8E6: A6 E8     LDX ram_00E8
C - - - - - 0x0168F8 05:A8E8: CA        DEX
C - - - - - 0x0168F9 05:A8E9: 8A        TXA
C - - - - - 0x0168FA 05:A8EA: AC 01 03  LDY ram_0301
C - - - - - 0x0168FD 05:A8ED: 99 03 03  STA ram_0303,Y
C - - - - - 0x016900 05:A8F0: A9 21     LDA #$21
C - - - - - 0x016902 05:A8F2: 99 02 03  STA ram_0302,Y
bra_A8F5_loop:
C - - - - - 0x016905 05:A8F5: A9 16     LDA #$16
C - - - - - 0x016907 05:A8F7: 20 76 72  JSR sub_bat_7276
C - - - - - 0x01690A 05:A8FA: CA        DEX
C - - - - - 0x01690B 05:A8FB: 10 F8     BPL bra_A8F5_loop
C - - - - - 0x01690D 05:A8FD: A9 96     LDA #$96
C - - - - - 0x01690F 05:A8FF: 99 04 03  STA ram_0304,Y
C - - - - - 0x016912 05:A902: 8A        TXA
C - - - - - 0x016913 05:A903: 99 1B 03  STA ram_031B,Y
C - - - - - 0x016916 05:A906: 98        TYA
C - - - - - 0x016917 05:A907: AA        TAX
C - - - - - 0x016918 05:A908: A0 00     LDY #$00
C - - - - - 0x01691A 05:A90A: 84 06     STY ram_0006
bra_A90C_loop:
C - - - - - 0x01691C 05:A90C: B1 00     LDA (ram_0000),Y
C - - - - - 0x01691E 05:A90E: 9D 05 03  STA ram_0305,X
C - - - - - 0x016921 05:A911: 20 74 72  JSR sub_bat_7274
C - - - - - 0x016924 05:A914: E8        INX
C - - - - - 0x016925 05:A915: E6 06     INC ram_0006
C - - - - - 0x016927 05:A917: A5 06     LDA ram_0006
C - - - - - 0x016929 05:A919: C9 16     CMP #$16
C - - - - - 0x01692B 05:A91B: 90 EF     BCC bra_A90C_loop
C - - - - - 0x01692D 05:A91D: E8        INX
C - - - - - 0x01692E 05:A91E: E8        INX
C - - - - - 0x01692F 05:A91F: E8        INX
C - - - - - 0x016930 05:A920: 8E 01 03  STX ram_0301
C - - - - - 0x016933 05:A923: 60        RTS



sub_A924:
loc_A924:
C D 1 - - - 0x016934 05:A924: A9 65     LDA #> ram_6530
C - - - - - 0x016936 05:A926: 85 01     STA ram_0001
C - - - - - 0x016938 05:A928: A5 E9     LDA ram_00E9
C - - - - - 0x01693A 05:A92A: AA        TAX
C - - - - - 0x01693B 05:A92B: 18        CLC
C - - - - - 0x01693C 05:A92C: 69 30     ADC #< ram_6530
C - - - - - 0x01693E 05:A92E: 85 00     STA ram_0000
C - - - - - 0x016940 05:A930: 90 02     BCC bra_A934
- - - - - - 0x016942 05:A932: E6 01     INC ram_0001
bra_A934:
C - - - - - 0x016944 05:A934: A9 20     LDA #$20
C - - - - - 0x016946 05:A936: 8D 02 03  STA ram_0302
C - - - - - 0x016949 05:A939: A9 E0     LDA #$E0
C - - - - - 0x01694B 05:A93B: 8D 03 03  STA ram_0303
bra_A93E:
C - - - - - 0x01694E 05:A93E: AD 03 03  LDA ram_0303
C - - - - - 0x016951 05:A941: 18        CLC
C - - - - - 0x016952 05:A942: 69 20     ADC #$20
C - - - - - 0x016954 05:A944: 8D 03 03  STA ram_0303
C - - - - - 0x016957 05:A947: 90 03     BCC bra_A94C
C - - - - - 0x016959 05:A949: EE 02 03  INC ram_0302
bra_A94C:
C - - - - - 0x01695C 05:A94C: CA        DEX
C - - - - - 0x01695D 05:A94D: 10 EF     BPL bra_A93E
C - - - - - 0x01695F 05:A94F: A9 20     LDA #$20
C - - - - - 0x016961 05:A951: 8D 04 03  STA ram_0304
C - - - - - 0x016964 05:A954: 8E 25 03  STX ram_0325
C - - - - - 0x016967 05:A957: A2 00     LDX #$00
C - - - - - 0x016969 05:A959: A0 00     LDY #$00
bra_A95B:
C - - - - - 0x01696B 05:A95B: B1 00     LDA (ram_0000),Y
C - - - - - 0x01696D 05:A95D: 9D 05 03  STA ram_0305,X
C - - - - - 0x016970 05:A960: A9 16     LDA #$16
C - - - - - 0x016972 05:A962: 20 76 72  JSR sub_bat_7276
C - - - - - 0x016975 05:A965: E8        INX
C - - - - - 0x016976 05:A966: E0 20     CPX #$20
C - - - - - 0x016978 05:A968: 90 F1     BCC bra_A95B
C - - - - - 0x01697A 05:A96A: A9 23     LDA #$23
C - - - - - 0x01697C 05:A96C: 8D 01 03  STA ram_0301
C - - - - - 0x01697F 05:A96F: 60        RTS



tbl_A970:
- D 1 - - - 0x016980 05:A970: 62        .byte $62   ; 00
- D 1 - - - 0x016981 05:A971: 63        .byte $63   ; 01
- D 1 - - - 0x016982 05:A972: 64        .byte $64   ; 02
- D 1 - - - 0x016983 05:A973: 65        .byte $65   ; 03
- - - - - - 0x016984 05:A974: 66        .byte $66   ; 04
- - - - - - 0x016985 05:A975: 67        .byte $67   ; 05

tbl_A976:
- D 1 - - - 0x016986 05:A976: C8        .byte $C8   ; 00
- D 1 - - - 0x016987 05:A977: D8        .byte $D8   ; 01
- D 1 - - - 0x016988 05:A978: C4        .byte $C4   ; 02
- D 1 - - - 0x016989 05:A979: BC        .byte $BC   ; 03
- - - - - - 0x01698A 05:A97A: C0        .byte $C0   ; 04
- - - - - - 0x01698B 05:A97B: C0        .byte $C0   ; 05



tbl_A97C:
- D 1 - - - 0x01698C 05:A97C: 24        .byte $24   ; 
- D 1 - - - 0x01698D 05:A97D: 6F        .byte $6F   ; 
- D 1 - - - 0x01698E 05:A97E: F3        .byte $F3   ; 
- D 1 - - - 0x01698F 05:A97F: FA        .byte $FA   ; 
- - - - - - 0x016990 05:A980: 98        .byte $98   ; 
- D 1 - - - 0x016991 05:A981: 90        .byte $90   ; 
- D 1 - - - 0x016992 05:A982: 8F        .byte $8F   ; 
- D 1 - - - 0x016993 05:A983: 95        .byte $95   ; 
- D 1 - - - 0x016994 05:A984: 8E        .byte $8E   ; 
- D 1 - - - 0x016995 05:A985: 90        .byte $90   ; 
- D 1 - - - 0x016996 05:A986: 74        .byte $74   ; 
- D 1 - - - 0x016997 05:A987: 76        .byte $76   ; 
- D 1 - - - 0x016998 05:A988: F3        .byte $F3   ; 
- D 1 - - - 0x016999 05:A989: 24        .byte $24   ; 
- D 1 - - - 0x01699A 05:A98A: 26        .byte $26   ; 
- D 1 - - - 0x01699B 05:A98B: 89        .byte $89   ; 
- - - - - - 0x01699C 05:A98C: 03        .byte $03   ; 
- - - - - - 0x01699D 05:A98D: 04        .byte $04   ; 
- D 1 - - - 0x01699E 05:A98E: 70        .byte $70   ; 
- D 1 - - - 0x01699F 05:A98F: C8        .byte $C8   ; 
- D 1 - - - 0x0169A0 05:A990: BC        .byte $BC   ; 
- D 1 - - - 0x0169A1 05:A991: 8D        .byte $8D   ; 
- D 1 - - - 0x0169A2 05:A992: 8F        .byte $8F   ; 
- D 1 - - - 0x0169A3 05:A993: 93        .byte $93   ; 
- D 1 - - - 0x0169A4 05:A994: 95        .byte $95   ; 
- D 1 - - - 0x0169A5 05:A995: C4        .byte $C4   ; 
- D 1 - - - 0x0169A6 05:A996: CE        .byte $CE   ; 
- D 1 - - - 0x0169A7 05:A997: D8        .byte $D8   ; 
- D 1 - - - 0x0169A8 05:A998: B0        .byte $B0   ; 
- D 1 - - - 0x0169A9 05:A999: B4        .byte $B4   ; 
- D 1 - - - 0x0169AA 05:A99A: AA        .byte $AA   ; 
- D 1 - - - 0x0169AB 05:A99B: AC        .byte $AC   ; 
- D 1 - - - 0x0169AC 05:A99C: B8        .byte $B8   ; 
- D 1 - - - 0x0169AD 05:A99D: 9C        .byte $9C   ; 
- D 1 - - - 0x0169AE 05:A99E: A6        .byte $A6   ; 
- D 1 - - - 0x0169AF 05:A99F: 9A        .byte $9A   ; 
- D 1 - - - 0x0169B0 05:A9A0: A2        .byte $A2   ; 
- D 1 - - - 0x0169B1 05:A9A1: A0        .byte $A0   ; 
- D 1 - - - 0x0169B2 05:A9A2: E5        .byte $E5   ; 
- D 1 - - - 0x0169B3 05:A9A3: E6        .byte $E6   ; 
- D 1 - - - 0x0169B4 05:A9A4: E7        .byte $E7   ; 
- D 1 - - - 0x0169B5 05:A9A5: E8        .byte $E8   ; 
- - - - - - 0x0169B6 05:A9A6: E9        .byte $E9   ; 
- - - - - - 0x0169B7 05:A9A7: EA        .byte $EA   ; 
- D 1 - - - 0x0169B8 05:A9A8: C0        .byte $C0   ; 
- D 1 - - - 0x0169B9 05:A9A9: E0        .byte $E0   ; 
- D 1 - - - 0x0169BA 05:A9AA: 78        .byte $78   ; 
- D 1 - - - 0x0169BB 05:A9AB: 7A        .byte $7A   ; 
- D 1 - - - 0x0169BC 05:A9AC: 7E        .byte $7E   ; 
- - - - - - 0x0169BD 05:A9AD: 80        .byte $80   ; 
- D 1 - - - 0x0169BE 05:A9AE: CC        .byte $CC   ; 
- D 1 - - - 0x0169BF 05:A9AF: D0        .byte $D0   ; 
- D 1 - - - 0x0169C0 05:A9B0: D4        .byte $D4   ; 
- D 1 - - - 0x0169C1 05:A9B1: DC        .byte $DC   ; 
- D 1 - - - 0x0169C2 05:A9B2: 89        .byte $89   ; 
- D 1 - - - 0x0169C3 05:A9B3: 84        .byte $84   ; 



tbl_A9B4:
- D 1 - - - 0x0169C4 05:A9B4: 24        .byte $24   ; 
- D 1 - - - 0x0169C5 05:A9B5: 24        .byte $24   ; 
- D 1 - - - 0x0169C6 05:A9B6: 24        .byte $24   ; 
- D 1 - - - 0x0169C7 05:A9B7: 24        .byte $24   ; 

- D 1 - - - 0x0169C8 05:A9B8: 6F        .byte $6F   ; 
- D 1 - - - 0x0169C9 05:A9B9: 6F        .byte $6F   ; 
- D 1 - - - 0x0169CA 05:A9BA: 6F        .byte $6F   ; 
- D 1 - - - 0x0169CB 05:A9BB: 6F        .byte $6F   ; 

- D 1 - - - 0x0169CC 05:A9BC: F3        .byte $F3   ; 
- D 1 - - - 0x0169CD 05:A9BD: F3        .byte $F3   ; 
- D 1 - - - 0x0169CE 05:A9BE: F3        .byte $F3   ; 
- D 1 - - - 0x0169CF 05:A9BF: F3        .byte $F3   ; 

- D 1 - - - 0x0169D0 05:A9C0: FA        .byte $FA   ; 
- D 1 - - - 0x0169D1 05:A9C1: FA        .byte $FA   ; 
- D 1 - - - 0x0169D2 05:A9C2: FA        .byte $FA   ; 
- D 1 - - - 0x0169D3 05:A9C3: FA        .byte $FA   ; 

- - - - - - 0x0169D4 05:A9C4: 98        .byte $98   ; 
- - - - - - 0x0169D5 05:A9C5: 95        .byte $95   ; 
- - - - - - 0x0169D6 05:A9C6: 26        .byte $26   ; 
- - - - - - 0x0169D7 05:A9C7: 26        .byte $26   ; 

- D 1 - - - 0x0169D8 05:A9C8: 90        .byte $90   ; 
- D 1 - - - 0x0169D9 05:A9C9: 95        .byte $95   ; 
- D 1 - - - 0x0169DA 05:A9CA: 90        .byte $90   ; 
- D 1 - - - 0x0169DB 05:A9CB: 95        .byte $95   ; 

- D 1 - - - 0x0169DC 05:A9CC: 8F        .byte $8F   ; 
- D 1 - - - 0x0169DD 05:A9CD: 90        .byte $90   ; 
- D 1 - - - 0x0169DE 05:A9CE: 8F        .byte $8F   ; 
- D 1 - - - 0x0169DF 05:A9CF: 90        .byte $90   ; 

- D 1 - - - 0x0169E0 05:A9D0: 95        .byte $95   ; 
- D 1 - - - 0x0169E1 05:A9D1: 96        .byte $96   ; 
- D 1 - - - 0x0169E2 05:A9D2: 95        .byte $95   ; 
- D 1 - - - 0x0169E3 05:A9D3: 96        .byte $96   ; 

- D 1 - - - 0x0169E4 05:A9D4: 8E        .byte $8E   ; 
- D 1 - - - 0x0169E5 05:A9D5: 93        .byte $93   ; 
- D 1 - - - 0x0169E6 05:A9D6: 90        .byte $90   ; 
- D 1 - - - 0x0169E7 05:A9D7: 95        .byte $95   ; 

- D 1 - - - 0x0169E8 05:A9D8: 90        .byte $90   ; 
- D 1 - - - 0x0169E9 05:A9D9: 95        .byte $95   ; 
- D 1 - - - 0x0169EA 05:A9DA: 92        .byte $92   ; 
- D 1 - - - 0x0169EB 05:A9DB: 97        .byte $97   ; 

- D 1 - - - 0x0169EC 05:A9DC: 74        .byte $74   ; 
- D 1 - - - 0x0169ED 05:A9DD: 74        .byte $74   ; 
- D 1 - - - 0x0169EE 05:A9DE: 75        .byte $75   ; 
- D 1 - - - 0x0169EF 05:A9DF: 75        .byte $75   ; 

- D 1 - - - 0x0169F0 05:A9E0: 76        .byte $76   ; 
- D 1 - - - 0x0169F1 05:A9E1: 77        .byte $77   ; 
- D 1 - - - 0x0169F2 05:A9E2: 76        .byte $76   ; 
- D 1 - - - 0x0169F3 05:A9E3: 77        .byte $77   ; 

- D 1 - - - 0x0169F4 05:A9E4: F3        .byte $F3   ; 
- D 1 - - - 0x0169F5 05:A9E5: 24        .byte $24   ; 
- D 1 - - - 0x0169F6 05:A9E6: F3        .byte $F3   ; 
- D 1 - - - 0x0169F7 05:A9E7: 24        .byte $24   ; 

- D 1 - - - 0x0169F8 05:A9E8: 24        .byte $24   ; 
- D 1 - - - 0x0169F9 05:A9E9: 24        .byte $24   ; 
- D 1 - - - 0x0169FA 05:A9EA: 24        .byte $24   ; 
- D 1 - - - 0x0169FB 05:A9EB: 24        .byte $24   ; 

- D 1 - - - 0x0169FC 05:A9EC: 26        .byte $26   ; 
- D 1 - - - 0x0169FD 05:A9ED: 26        .byte $26   ; 
- D 1 - - - 0x0169FE 05:A9EE: 26        .byte $26   ; 
- D 1 - - - 0x0169FF 05:A9EF: 26        .byte $26   ; 

- D 1 - - - 0x016A00 05:A9F0: 89        .byte $89   ; 
- D 1 - - - 0x016A01 05:A9F1: 88        .byte $88   ; 
- D 1 - - - 0x016A02 05:A9F2: 8B        .byte $8B   ; 
- D 1 - - - 0x016A03 05:A9F3: 88        .byte $88   ; 



sub_A9F4:
C - - - - - 0x016A04 05:A9F4: AD 9C 9F  LDA tbl_9F9C
C - - - - - 0x016A07 05:A9F7: 85 02     STA ram_0002
C - - - - - 0x016A09 05:A9F9: AD 9D 9F  LDA tbl_9F9C + 1
C - - - - - 0x016A0C 05:A9FC: 85 03     STA ram_0003
C - - - - - 0x016A0E 05:A9FE: A9 00     LDA #$00
C - - - - - 0x016A10 05:AA00: 85 06     STA ram_0006
C - - - - - 0x016A12 05:AA02: A6 EB     LDX ram_map_location
C - - - - - 0x016A14 05:AA04: BD FE 69  LDA ram_69FE,X
C - - - - - 0x016A17 05:AA07: 0A        ASL
C - - - - - 0x016A18 05:AA08: 0A        ASL
C - - - - - 0x016A19 05:AA09: 26 06     ROL ram_0006
C - - - - - 0x016A1B 05:AA0B: 0A        ASL
C - - - - - 0x016A1C 05:AA0C: 26 06     ROL ram_0006
C - - - - - 0x016A1E 05:AA0E: 0A        ASL
C - - - - - 0x016A1F 05:AA0F: 26 06     ROL ram_0006
C - - - - - 0x016A21 05:AA11: 65 02     ADC ram_0002
C - - - - - 0x016A23 05:AA13: 85 02     STA ram_0002
C - - - - - 0x016A25 05:AA15: A5 06     LDA ram_0006
C - - - - - 0x016A27 05:AA17: 65 03     ADC ram_0003
C - - - - - 0x016A29 05:AA19: 85 03     STA ram_0003
loc_AA1B:
C D 1 - - - 0x016A2B 05:AA1B: AD AF 6B  LDA ram_6BAF
C - - - - - 0x016A2E 05:AA1E: 85 08     STA ram_0008
C - - - - - 0x016A30 05:AA20: AD B0 6B  LDA ram_6BB0
C - - - - - 0x016A33 05:AA23: 85 09     STA ram_0009
C - - - - - 0x016A35 05:AA25: 20 07 AC  JSR sub_AC07
C - - - - - 0x016A38 05:AA28: A9 00     LDA #$00
C - - - - - 0x016A3A 05:AA2A: 85 0C     STA ram_000C
C - - - - - 0x016A3C 05:AA2C: 85 06     STA ram_0006
loc_AA2E:
C D 1 - - - 0x016A3E 05:AA2E: A4 06     LDY ram_0006
C - - - - - 0x016A40 05:AA30: B1 02     LDA (ram_0002),Y
C - - - - - 0x016A42 05:AA32: 29 F0     AND #$F0
C - - - - - 0x016A44 05:AA34: 4A        LSR
C - - - - - 0x016A45 05:AA35: 4A        LSR
C - - - - - 0x016A46 05:AA36: 4A        LSR
C - - - - - 0x016A47 05:AA37: AA        TAX
C - - - - - 0x016A48 05:AA38: BD 27 68  LDA tbl_bat_6827,X
C - - - - - 0x016A4B 05:AA3B: 85 04     STA ram_0004
C - - - - - 0x016A4D 05:AA3D: BD 28 68  LDA tbl_bat_6827 + 1,X
C - - - - - 0x016A50 05:AA40: 85 05     STA ram_0005
C - - - - - 0x016A52 05:AA42: B1 02     LDA (ram_0002),Y
C - - - - - 0x016A54 05:AA44: 29 0F     AND #$0F
C - - - - - 0x016A56 05:AA46: AA        TAX
C - - - - - 0x016A57 05:AA47: A0 FF     LDY #$FF
bra_AA49_loop:
C - - - - - 0x016A59 05:AA49: C8        INY
C - - - - - 0x016A5A 05:AA4A: B1 04     LDA (ram_0004),Y
C - - - - - 0x016A5C 05:AA4C: 10 FB     BPL bra_AA49_loop
C - - - - - 0x016A5E 05:AA4E: CA        DEX
C - - - - - 0x016A5F 05:AA4F: 10 F8     BPL bra_AA49_loop
C - - - - - 0x016A61 05:AA51: 98        TYA
C - - - - - 0x016A62 05:AA52: 20 8E 72  JSR sub_bat_728E
C - - - - - 0x016A65 05:AA55: A9 00     LDA #$00
C - - - - - 0x016A67 05:AA57: 85 07     STA ram_0007
bra_AA59:
C - - - - - 0x016A69 05:AA59: A0 00     LDY #$00
C - - - - - 0x016A6B 05:AA5B: B1 04     LDA (ram_0004),Y
C - - - - - 0x016A6D 05:AA5D: 29 3F     AND #$3F
C - - - - - 0x016A6F 05:AA5F: 85 0D     STA ram_000D
C - - - - - 0x016A71 05:AA61: AA        TAX
C - - - - - 0x016A72 05:AA62: BD 7C A9  LDA tbl_A97C,X
C - - - - - 0x016A75 05:AA65: 48        PHA
C - - - - - 0x016A76 05:AA66: A4 EB     LDY ram_map_location
C - - - - - 0x016A78 05:AA68: B1 08     LDA (ram_0008),Y
C - - - - - 0x016A7A 05:AA6A: 29 80     AND #$80
C - - - - - 0x016A7C 05:AA6C: F0 1A     BEQ bra_AA88
C - - - - - 0x016A7E 05:AA6E: 68        PLA
C - - - - - 0x016A7F 05:AA6F: C9 E7     CMP #$E7
C - - - - - 0x016A81 05:AA71: F0 08     BEQ bra_AA7B
C - - - - - 0x016A83 05:AA73: C9 E6     CMP #$E6
C - - - - - 0x016A85 05:AA75: F0 0C     BEQ bra_AA83
C - - - - - 0x016A87 05:AA77: C9 EA     CMP #$EA
C - - - - - 0x016A89 05:AA79: D0 0C     BNE bra_AA87
bra_AA7B:
C - - - - - 0x016A8B 05:AA7B: A9 10     LDA #$10
C - - - - - 0x016A8D 05:AA7D: 85 0D     STA ram_000D
C - - - - - 0x016A8F 05:AA7F: A9 70     LDA #$70
C - - - - - 0x016A91 05:AA81: D0 04     BNE bra_AA87
bra_AA83:
C - - - - - 0x016A93 05:AA83: A9 0C     LDA #$0C
C - - - - - 0x016A95 05:AA85: 85 0D     STA ram_000D
bra_AA87:
C - - - - - 0x016A97 05:AA87: 48        PHA
bra_AA88:
C - - - - - 0x016A98 05:AA88: 68        PLA
C - - - - - 0x016A99 05:AA89: 20 BF AA  JSR sub_AABF
C - - - - - 0x016A9C 05:AA8C: A0 00     LDY #$00
C - - - - - 0x016A9E 05:AA8E: 20 F1 AA  JSR sub_AAF1
C - - - - - 0x016AA1 05:AA91: A9 02     LDA #$02
C - - - - - 0x016AA3 05:AA93: 20 76 72  JSR sub_bat_7276
C - - - - - 0x016AA6 05:AA96: A0 00     LDY #$00
C - - - - - 0x016AA8 05:AA98: B1 04     LDA (ram_0004),Y
C - - - - - 0x016AAA 05:AA9A: 29 40     AND #$40
C - - - - - 0x016AAC 05:AA9C: F0 06     BEQ bra_AAA4
C - - - - - 0x016AAE 05:AA9E: 45 0C     EOR ram_000C
C - - - - - 0x016AB0 05:AAA0: 85 0C     STA ram_000C
C - - - - - 0x016AB2 05:AAA2: D0 03     BNE bra_AAA7
bra_AAA4:
C - - - - - 0x016AB4 05:AAA4: 20 8C 72  JSR sub_bat_728C
bra_AAA7:
C - - - - - 0x016AB7 05:AAA7: E6 07     INC ram_0007
C - - - - - 0x016AB9 05:AAA9: A5 07     LDA ram_0007
C - - - - - 0x016ABB 05:AAAB: C9 0B     CMP #$0B
C - - - - - 0x016ABD 05:AAAD: D0 AA     BNE bra_AA59
C - - - - - 0x016ABF 05:AAAF: A9 16     LDA #$16
C - - - - - 0x016AC1 05:AAB1: 20 76 72  JSR sub_bat_7276
C - - - - - 0x016AC4 05:AAB4: E6 06     INC ram_0006
C - - - - - 0x016AC6 05:AAB6: A5 06     LDA ram_0006
C - - - - - 0x016AC8 05:AAB8: C9 10     CMP #$10
C - - - - - 0x016ACA 05:AABA: B0 34     BCS bra_AAF0_RTS
C - - - - - 0x016ACC 05:AABC: 4C 2E AA  JMP loc_AA2E



sub_AABF:
C - - - - - 0x016ACF 05:AABF: A2 EA     LDX #$EA
C - - - - - 0x016AD1 05:AAC1: 86 0A     STX ram_000A
C - - - - - 0x016AD3 05:AAC3: A2 05     LDX #$05
bra_AAC5_loop:
C - - - - - 0x016AD5 05:AAC5: C5 0A     CMP ram_000A
C - - - - - 0x016AD7 05:AAC7: F0 07     BEQ bra_AAD0
C - - - - - 0x016AD9 05:AAC9: C6 0A     DEC ram_000A
C - - - - - 0x016ADB 05:AACB: CA        DEX
C - - - - - 0x016ADC 05:AACC: 10 F7     BPL bra_AAC5_loop
C - - - - - 0x016ADE 05:AACE: 30 20     BMI bra_AAF0_RTS
bra_AAD0:
C - - - - - 0x016AE0 05:AAD0: BD 76 A9  LDA tbl_A976,X
C - - - - - 0x016AE3 05:AAD3: 48        PHA
C - - - - - 0x016AE4 05:AAD4: BD 70 A9  LDA tbl_A970,X
C - - - - - 0x016AE7 05:AAD7: 8D 2B 05  STA ram_052B
C - - - - - 0x016AEA 05:AADA: A5 06     LDA ram_0006
C - - - - - 0x016AEC 05:AADC: 0A        ASL
C - - - - - 0x016AED 05:AADD: 0A        ASL
C - - - - - 0x016AEE 05:AADE: 0A        ASL
C - - - - - 0x016AEF 05:AADF: 0A        ASL
C - - - - - 0x016AF0 05:AAE0: 8D 2C 05  STA ram_052C
C - - - - - 0x016AF3 05:AAE3: A5 07     LDA ram_0007
C - - - - - 0x016AF5 05:AAE5: 0A        ASL
C - - - - - 0x016AF6 05:AAE6: 0A        ASL
C - - - - - 0x016AF7 05:AAE7: 0A        ASL
C - - - - - 0x016AF8 05:AAE8: 0A        ASL
C - - - - - 0x016AF9 05:AAE9: 18        CLC
C - - - - - 0x016AFA 05:AAEA: 69 40     ADC #$40
C - - - - - 0x016AFC 05:AAEC: 8D 2D 05  STA ram_052D
C - - - - - 0x016AFF 05:AAEF: 68        PLA
bra_AAF0_RTS:
C - - - - - 0x016B00 05:AAF0: 60        RTS



sub_AAF1:
C - - - - - 0x016B01 05:AAF1: A6 0D     LDX ram_000D
C - - - - - 0x016B03 05:AAF3: E0 10     CPX #$10
C - - - - - 0x016B05 05:AAF5: 90 17     BCC bra_AB0E
C - - - - - 0x016B07 05:AAF7: AA        TAX
C - - - - - 0x016B08 05:AAF8: 91 00     STA (ram_0000),Y
C - - - - - 0x016B0A 05:AAFA: C8        INY
C - - - - - 0x016B0B 05:AAFB: E8        INX
C - - - - - 0x016B0C 05:AAFC: 8A        TXA
C - - - - - 0x016B0D 05:AAFD: 91 00     STA (ram_0000),Y
C - - - - - 0x016B0F 05:AAFF: 98        TYA
C - - - - - 0x016B10 05:AB00: 18        CLC
C - - - - - 0x016B11 05:AB01: 69 15     ADC #$15
C - - - - - 0x016B13 05:AB03: A8        TAY
C - - - - - 0x016B14 05:AB04: E8        INX
C - - - - - 0x016B15 05:AB05: 8A        TXA
C - - - - - 0x016B16 05:AB06: 91 00     STA (ram_0000),Y
C - - - - - 0x016B18 05:AB08: E8        INX
C - - - - - 0x016B19 05:AB09: 8A        TXA
loc_AB0A:
C D 1 - - - 0x016B1A 05:AB0A: C8        INY
C - - - - - 0x016B1B 05:AB0B: 91 00     STA (ram_0000),Y
C - - - - - 0x016B1D 05:AB0D: 60        RTS
bra_AB0E:
C - - - - - 0x016B1E 05:AB0E: 8A        TXA
C - - - - - 0x016B1F 05:AB0F: 0A        ASL
C - - - - - 0x016B20 05:AB10: 0A        ASL
C - - - - - 0x016B21 05:AB11: AA        TAX
C - - - - - 0x016B22 05:AB12: BD B4 A9  LDA tbl_A9B4,X
C - - - - - 0x016B25 05:AB15: 91 00     STA (ram_0000),Y
C - - - - - 0x016B27 05:AB17: C8        INY
C - - - - - 0x016B28 05:AB18: E8        INX
C - - - - - 0x016B29 05:AB19: BD B4 A9  LDA tbl_A9B4,X
C - - - - - 0x016B2C 05:AB1C: 91 00     STA (ram_0000),Y
C - - - - - 0x016B2E 05:AB1E: 98        TYA
C - - - - - 0x016B2F 05:AB1F: 18        CLC
C - - - - - 0x016B30 05:AB20: 69 15     ADC #$15
C - - - - - 0x016B32 05:AB22: A8        TAY
C - - - - - 0x016B33 05:AB23: E8        INX
C - - - - - 0x016B34 05:AB24: BD B4 A9  LDA tbl_A9B4,X
C - - - - - 0x016B37 05:AB27: 91 00     STA (ram_0000),Y
C - - - - - 0x016B39 05:AB29: E8        INX
C - - - - - 0x016B3A 05:AB2A: BD B4 A9  LDA tbl_A9B4,X
C - - - - - 0x016B3D 05:AB2D: 4C 0A AB  JMP loc_AB0A



sub_AB30:
C - - - - - 0x016B40 05:AB30: AD 9E 9F  LDA tbl_9F9E
C - - - - - 0x016B43 05:AB33: AE 9F 9F  LDX tbl_9F9E + 1
C - - - - - 0x016B46 05:AB36: A4 10     LDY ram_0010
C - - - - - 0x016B48 05:AB38: F0 04     BEQ bra_AB3E
C - - - - - 0x016B4A 05:AB3A: A9 D4     LDA #< off_A3D4
C - - - - - 0x016B4C 05:AB3C: A2 A3     LDX #> off_A3D4
bra_AB3E:
C - - - - - 0x016B4E 05:AB3E: 8D 27 68  STA ram_6827
C - - - - - 0x016B51 05:AB41: 8E 28 68  STX ram_6828
C - - - - - 0x016B54 05:AB44: 60        RTS



tbl_AB45:
- D 1 - - - 0x016B55 05:AB45: A8 9B     .word off_9BA8_00
- D 1 - - - 0x016B57 05:AB47: B8 9B     .word off_9BB8_01
- D 1 - - - 0x016B59 05:AB49: B4 A3     .word off_A3B4_02
- D 1 - - - 0x016B5B 05:AB4B: C4 A3     .word off_A3C4_03



ofs_AB4D_03:
C - - J - - 0x016B5D 05:AB4D: A2 00     LDX #$00
bra_AB4F:
C - - - - - 0x016B5F 05:AB4F: BD 45 AB  LDA tbl_AB45,X
C - - - - - 0x016B62 05:AB52: 85 02     STA ram_0002
C - - - - - 0x016B64 05:AB54: BD 46 AB  LDA tbl_AB45 + 1,X
C - - - - - 0x016B67 05:AB57: 85 03     STA ram_0003
C - - - - - 0x016B69 05:AB59: E6 13     INC ram_game_mode_sub
C - - - - - 0x016B6B 05:AB5B: 4C 1B AA  JMP loc_AA1B



ofs_AB5E_03:
C - - J - - 0x016B6E 05:AB5E: A2 02     LDX #$02
C - - - - - 0x016B70 05:AB60: D0 ED     BNE bra_AB4F



ofs_AB62_03:
C - - J - - 0x016B72 05:AB62: A9 00     LDA #$00
C - - - - - 0x016B74 05:AB64: 85 E9     STA ram_00E9
C - - - - - 0x016B76 05:AB66: A2 04     LDX #$04
C - - - - - 0x016B78 05:AB68: 20 5A E8  JSR sub_0x01E86A
C - - - - - 0x016B7B 05:AB6B: 29 01     AND #$01
C - - - - - 0x016B7D 05:AB6D: F0 E0     BEQ bra_AB4F
C - - - - - 0x016B7F 05:AB6F: A2 06     LDX #$06
C - - - - - 0x016B81 05:AB71: D0 DC     BNE bra_AB4F



loc_AB73:
C D 1 - - - 0x016B83 05:AB73: 20 CE E6  JSR sub_0x01E6DE
C - - - - - 0x016B86 05:AB76: 0A        ASL
C - - - - - 0x016B87 05:AB77: B0 42     BCS bra_ABBB_RTS
C - - - - - 0x016B89 05:AB79: B1 00     LDA (ram_0000),Y
C - - - - - 0x016B8B 05:AB7B: 29 20     AND #$20
C - - - - - 0x016B8D 05:AB7D: F0 3C     BEQ bra_ABBB_RTS
C - - - - - 0x016B8F 05:AB7F: 20 07 AC  JSR sub_AC07
C - - - - - 0x016B92 05:AB82: 20 8A 71  JSR sub_bat_718A
C - - - - - 0x016B95 05:AB85: 4A        LSR
C - - - - - 0x016B96 05:AB86: 4A        LSR
C - - - - - 0x016B97 05:AB87: AA        TAX
C - - - - - 0x016B98 05:AB88: BD 00 E4  LDA tbl_0x01E410,X
C - - - - - 0x016B9B 05:AB8B: 85 00     STA ram_0000
C - - - - - 0x016B9D 05:AB8D: BD 01 E4  LDA tbl_0x01E410 + 1,X
C - - - - - 0x016BA0 05:AB90: 85 01     STA ram_0001
C - - - - - 0x016BA2 05:AB92: 98        TYA
C - - - - - 0x016BA3 05:AB93: 38        SEC
C - - - - - 0x016BA4 05:AB94: E9 40     SBC #$40
C - - - - - 0x016BA6 05:AB96: 4A        LSR
C - - - - - 0x016BA7 05:AB97: 4A        LSR
C - - - - - 0x016BA8 05:AB98: 4A        LSR
C - - - - - 0x016BA9 05:AB99: A8        TAY
C - - - - - 0x016BAA 05:AB9A: B1 00     LDA (ram_0000),Y
C - - - - - 0x016BAC 05:AB9C: C9 C4     CMP #$C4
C - - - - - 0x016BAE 05:AB9E: F0 1C     BEQ bra_ABBC
C - - - - - 0x016BB0 05:ABA0: C9 BC     CMP #$BC
C - - - - - 0x016BB2 05:ABA2: F0 17     BEQ bra_ABBB_RTS
C - - - - - 0x016BB4 05:ABA4: C9 D8     CMP #$D8
C - - - - - 0x016BB6 05:ABA6: D0 14     BNE bra_ABBC
C - - - - - 0x016BB8 05:ABA8: AD 2B 05  LDA ram_052B
C - - - - - 0x016BBB 05:ABAB: C9 62     CMP #$62
C - - - - - 0x016BBD 05:ABAD: F0 0D     BEQ bra_ABBC
- - - - - - 0x016BBF 05:ABAF: A9 00     LDA #$00
- - - - - - 0x016BC1 05:ABB1: 8D 2B 05  STA ram_052B
- - - - - - 0x016BC4 05:ABB4: A9 0C     LDA #$0C
- - - - - - 0x016BC6 05:ABB6: 85 0D     STA ram_000D
bra_ABB8:
C - - - - - 0x016BC8 05:ABB8: 20 F1 AA  JSR sub_AAF1
bra_ABBB_RTS:
C - - - - - 0x016BCB 05:ABBB: 60        RTS
bra_ABBC:
C - - - - - 0x016BCC 05:ABBC: A9 10     LDA #$10
C - - - - - 0x016BCE 05:ABBE: 85 0D     STA ram_000D
C - - - - - 0x016BD0 05:ABC0: A9 70     LDA #$70
C - - - - - 0x016BD2 05:ABC2: D0 F4     BNE bra_ABB8



sub_0x016BD4:
C - - - - - 0x016BD4 05:ABC4: 8A        TXA
C - - - - - 0x016BD5 05:ABC5: 48        PHA
C - - - - - 0x016BD6 05:ABC6: B5 70     LDA ram_pos_X,X
C - - - - - 0x016BD8 05:ABC8: 29 F0     AND #$F0
C - - - - - 0x016BDA 05:ABCA: 4A        LSR
C - - - - - 0x016BDB 05:ABCB: 4A        LSR
C - - - - - 0x016BDC 05:ABCC: AA        TAX
C - - - - - 0x016BDD 05:ABCD: BD 00 E4  LDA tbl_0x01E410,X
C - - - - - 0x016BE0 05:ABD0: 85 00     STA ram_0000
C - - - - - 0x016BE2 05:ABD2: BD 01 E4  LDA tbl_0x01E410 + 1,X
C - - - - - 0x016BE5 05:ABD5: 85 01     STA ram_0001
C - - - - - 0x016BE7 05:ABD7: 68        PLA
C - - - - - 0x016BE8 05:ABD8: 48        PHA
C - - - - - 0x016BE9 05:ABD9: AA        TAX
C - - - - - 0x016BEA 05:ABDA: B5 84     LDA ram_pos_Y,X
C - - - - - 0x016BEC 05:ABDC: 29 F0     AND #$F0
C - - - - - 0x016BEE 05:ABDE: 38        SEC
C - - - - - 0x016BEF 05:ABDF: E9 40     SBC #$40
C - - - - - 0x016BF1 05:ABE1: 4A        LSR
C - - - - - 0x016BF2 05:ABE2: 4A        LSR
C - - - - - 0x016BF3 05:ABE3: 4A        LSR
C - - - - - 0x016BF4 05:ABE4: 20 76 72  JSR sub_bat_7276
C - - - - - 0x016BF7 05:ABE7: A0 00     LDY #$00
C - - - - - 0x016BF9 05:ABE9: A2 10     LDX #$10
C - - - - - 0x016BFB 05:ABEB: A5 05     LDA ram_0005
C - - - - - 0x016BFD 05:ABED: C9 27     CMP #$27
C - - - - - 0x016BFF 05:ABEF: 90 04     BCC bra_ABF5
C - - - - - 0x016C01 05:ABF1: C9 F3     CMP #$F3
C - - - - - 0x016C03 05:ABF3: 90 0A     BCC bra_ABFF
bra_ABF5:
C - - - - - 0x016C05 05:ABF5: A2 0E     LDX #$0E
bra_ABF7_loop:
C - - - - - 0x016C07 05:ABF7: DD 7C A9  CMP tbl_A97C,X
C - - - - - 0x016C0A 05:ABFA: F0 03     BEQ bra_ABFF
C - - - - - 0x016C0C 05:ABFC: CA        DEX
C - - - - - 0x016C0D 05:ABFD: D0 F8     BNE bra_ABF7_loop
bra_ABFF:
C - - - - - 0x016C0F 05:ABFF: 86 0D     STX ram_000D
C - - - - - 0x016C11 05:AC01: 20 F1 AA  JSR sub_AAF1
C - - - - - 0x016C14 05:AC04: 68        PLA
C - - - - - 0x016C15 05:AC05: AA        TAX
C - - - - - 0x016C16 05:AC06: 60        RTS



sub_AC07:
sub_0x016C17:
C - - - - - 0x016C17 05:AC07: A9 30     LDA #< ram_6530
C - - - - - 0x016C19 05:AC09: 85 00     STA ram_0000
C - - - - - 0x016C1B 05:AC0B: A9 65     LDA #> ram_6530
C - - - - - 0x016C1D 05:AC0D: 85 01     STA ram_0001
C - - - - - 0x016C1F 05:AC0F: 60        RTS



sub_AC10:
ofs_AC10_04:
ofs_AC10_05:
C - - J - - 0x016C20 05:AC10: 20 16 AC  JSR sub_AC16
C - - - - - 0x016C23 05:AC13: B0 12     BCS bra_AC27
C - - - - - 0x016C25 05:AC15: 60        RTS



sub_AC16:
C - - - - - 0x016C26 05:AC16: 20 24 A9  JSR sub_A924
C - - - - - 0x016C29 05:AC19: E6 E9     INC ram_00E9
C - - - - - 0x016C2B 05:AC1B: A5 E9     LDA ram_00E9
C - - - - - 0x016C2D 05:AC1D: C9 16     CMP #$16
C - - - - - 0x016C2F 05:AC1F: 60        RTS



ofs_AC20_04:
C - - J - - 0x016C30 05:AC20: 20 C4 A8  JSR sub_A8C4
C - - - - - 0x016C33 05:AC23: A9 00     LDA #$00
C - - - - - 0x016C35 05:AC25: 85 E9     STA ram_00E9
bra_AC27:
C - - - - - 0x016C37 05:AC27: E6 13     INC ram_game_mode_sub
C - - - - - 0x016C39 05:AC29: 60        RTS


; bzk garbage
- - - - - - 0x016C3A 05:AC2A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C42 05:AC32: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C4A 05:AC3A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C52 05:AC42: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C5A 05:AC4A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C62 05:AC52: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C6A 05:AC5A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C72 05:AC62: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C7A 05:AC6A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C82 05:AC72: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C8A 05:AC7A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C92 05:AC82: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016C9A 05:AC8A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CA2 05:AC92: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CAA 05:AC9A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CB2 05:ACA2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CBA 05:ACAA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CC2 05:ACB2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CCA 05:ACBA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CD2 05:ACC2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CDA 05:ACCA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CE2 05:ACD2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CEA 05:ACDA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CF2 05:ACE2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016CFA 05:ACEA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D02 05:ACF2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D0A 05:ACFA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D12 05:AD02: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D1A 05:AD0A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D22 05:AD12: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D2A 05:AD1A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D32 05:AD22: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D3A 05:AD2A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D42 05:AD32: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D4A 05:AD3A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D52 05:AD42: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D5A 05:AD4A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D62 05:AD52: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D6A 05:AD5A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D72 05:AD62: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D7A 05:AD6A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D82 05:AD72: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D8A 05:AD7A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D92 05:AD82: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016D9A 05:AD8A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016DA2 05:AD92: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016DAA 05:AD9A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016DB2 05:ADA2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016DBA 05:ADAA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016DC2 05:ADB2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016DCA 05:ADBA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016DD2 05:ADC2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016DDA 05:ADCA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016DE2 05:ADD2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016DEA 05:ADDA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016DF2 05:ADE2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016DFA 05:ADEA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E02 05:ADF2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E0A 05:ADFA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E12 05:AE02: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E1A 05:AE0A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E22 05:AE12: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E2A 05:AE1A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E32 05:AE22: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E3A 05:AE2A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E42 05:AE32: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E4A 05:AE3A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E52 05:AE42: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E5A 05:AE4A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E62 05:AE52: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E6A 05:AE5A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E72 05:AE62: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E7A 05:AE6A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E82 05:AE72: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E8A 05:AE7A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E92 05:AE82: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016E9A 05:AE8A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016EA2 05:AE92: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016EAA 05:AE9A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016EB2 05:AEA2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016EBA 05:AEAA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016EC2 05:AEB2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016ECA 05:AEBA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016ED2 05:AEC2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016EDA 05:AECA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016EE2 05:AED2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016EEA 05:AEDA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016EF2 05:AEE2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016EFA 05:AEEA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F02 05:AEF2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F0A 05:AEFA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F12 05:AF02: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F1A 05:AF0A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F22 05:AF12: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F2A 05:AF1A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F32 05:AF22: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F3A 05:AF2A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F42 05:AF32: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F4A 05:AF3A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F52 05:AF42: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F5A 05:AF4A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F62 05:AF52: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F6A 05:AF5A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F72 05:AF62: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F7A 05:AF6A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F82 05:AF72: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F8A 05:AF7A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F92 05:AF82: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016F9A 05:AF8A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016FA2 05:AF92: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016FAA 05:AF9A: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016FB2 05:AFA2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016FBA 05:AFAA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016FC2 05:AFB2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016FCA 05:AFBA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016FD2 05:AFC2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016FDA 05:AFCA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016FE2 05:AFD2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016FEA 05:AFDA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016FF2 05:AFE2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x016FFA 05:AFEA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017002 05:AFF2: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x01700A 05:AFFA: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF   ; 



ofs_0x017010_02:
C - - J - - 0x017010 05:B000: A5 EB     LDA ram_map_location
C - - - - - 0x017012 05:B002: 20 D7 83  JSR sub_83D7
C - - - - - 0x017015 05:B005: A9 18     LDA #$18
C - - - - - 0x017017 05:B007: D0 0F     BNE bra_B018



loc_B009:
ofs_0x017019_03:
C D 1 J - - 0x017019 05:B009: A9 D0     LDA #$D0
C - - - - - 0x01701B 05:B00B: A0 17     LDY #$17
bra_B00D:
C - - - - - 0x01701D 05:B00D: 4C 01 85  JMP loc_8501



sub_B010:
ofs_0x017020_04:
C - - J - - 0x017020 05:B010: A9 E8     LDA #$E8
C - - - - - 0x017022 05:B012: A0 2F     LDY #$2F
C - - - - - 0x017024 05:B014: D0 F7     BNE bra_B00D



ofs_0x017026_05:
C - - J - - 0x017026 05:B016: A9 0E     LDA #$0E
bra_B018:
C - - - - - 0x017028 05:B018: 85 14     STA ram_0014
bra_B01A:
C - - - - - 0x01702A 05:B01A: E6 13     INC ram_game_mode_sub
C - - - - - 0x01702C 05:B01C: 60        RTS



ofs_0x01702D_06:
C - - J - - 0x01702D 05:B01D: A5 10     LDA ram_0010
C - - - - - 0x01702F 05:B01F: F0 05     BEQ bra_B026
C - - - - - 0x017031 05:B021: 20 EF B5  JSR sub_B5EF
C - - - - - 0x017034 05:B024: F0 F4     BEQ bra_B01A
bra_B026:
C - - - - - 0x017036 05:B026: A9 44     LDA #$44
C - - - - - 0x017038 05:B028: D0 EE     BNE bra_B018



ofs_0x01703A_07:
C - - J - - 0x01703A 05:B02A: AD B1 6B  LDA ram_6BB1
C - - - - - 0x01703D 05:B02D: F0 EB     BEQ bra_B01A
C - - - - - 0x01703F 05:B02F: 8D 25 68  STA ram_6825
C - - - - - 0x017042 05:B032: A9 0C     LDA #$0C
C - - - - - 0x017044 05:B034: D0 E2     BNE bra_B018



ofs_0x017046_08:
C - - J - - 0x017046 05:B036: 20 C4 A8  JSR sub_A8C4
C - - - - - 0x017049 05:B039: A0 10     LDY #$10
C - - - - - 0x01704B 05:B03B: 84 7C     STY ram_007C
C - - - - - 0x01704D 05:B03D: C8        INY
C - - - - - 0x01704E 05:B03E: 84 7D     STY ram_007D
C - - - - - 0x017050 05:B040: A9 00     LDA #$00
C - - - - - 0x017052 05:B042: 85 17     STA ram_0017
C - - - - - 0x017054 05:B044: A9 08     LDA #con_dir_Up
C - - - - - 0x017056 05:B046: 85 98     STA ram_direction
C - - - - - 0x017058 05:B048: A9 78     LDA #$78
C - - - - - 0x01705A 05:B04A: 85 70     STA ram_pos_X
C - - - - - 0x01705C 05:B04C: AD A6 6B  LDA ram_6BA6
C - - - - - 0x01705F 05:B04F: 85 84     STA ram_pos_Y
C - - - - - 0x017061 05:B051: 4C 90 6C  JMP loc_bat_6C90



tbl_B054:
; Y = 00
- D 1 - - - 0x017064 05:B054: 11        .byte $11   ; 00
- D 1 - - - 0x017065 05:B055: E0        .byte $E0   ; 01
- D 1 - - - 0x017066 05:B056: 4E        .byte $4E   ; 02
- D 1 - - - 0x017067 05:B057: CD        .byte $CD   ; 03
- D 1 - - - 0x017068 05:B058: 89        .byte $89   ; 04
; Y = 05
- D 1 - - - 0x017069 05:B059: 21        .byte $21   ; 00
- D 1 - - - 0x01706A 05:B05A: D0        .byte $D0   ; 01
- D 1 - - - 0x01706B 05:B05B: 5E        .byte $5E   ; 02
- D 1 - - - 0x01706C 05:B05C: BD        .byte $BD   ; 03
- D 1 - - - 0x01706D 05:B05D: 78        .byte $78   ; 04



sub_B05E:
sub_0x01706E:
C - - - - - 0x01706E 05:B05E: A0 05     LDY #$05
C - - - - - 0x017070 05:B060: A5 10     LDA ram_0010
C - - - - - 0x017072 05:B062: D0 04     BNE bra_B068
C - - - - - 0x017074 05:B064: A0 00     LDY #$00
C - - - - - 0x017076 05:B066: 84 53     STY ram_0053
bra_B068:
C - - - - - 0x017078 05:B068: A2 00     LDX #$00
bra_B06A_loop:
C - - - - - 0x01707A 05:B06A: B9 54 B0  LDA tbl_B054,Y
C - - - - - 0x01707D 05:B06D: 9D 46 03  STA ram_0346,X
C - - - - - 0x017080 05:B070: C8        INY
C - - - - - 0x017081 05:B071: E8        INX
C - - - - - 0x017082 05:B072: E0 05     CPX #$05
C - - - - - 0x017084 05:B074: D0 F4     BNE bra_B06A_loop
C - - - - - 0x017086 05:B076: 60        RTS



tbl_B077:
- D 1 - - - 0x017087 05:B077: 28        .byte $28   ; 00
- D 1 - - - 0x017088 05:B078: D8        .byte $D8   ; 01
- D 1 - - - 0x017089 05:B079: 00        .byte $00   ; 02



ofs_0x01708A_06:
C - - J - - 0x01708A 05:B07A: 20 51 EA  JSR sub_0x01EA61
C - - - - - 0x01708D 05:B07D: 20 3D EA  JSR sub_0x01EA4D
C - - - - - 0x017090 05:B080: A5 10     LDA ram_0010
C - - - - - 0x017092 05:B082: F0 03     BEQ bra_B087
C - - - - - 0x017094 05:B084: 20 12 75  JSR sub_bat_7512
bra_B087:
C - - - - - 0x017097 05:B087: 20 38 F2  JSR sub_0x01F248
C - - - - - 0x01709A 05:B08A: 20 64 B4  JSR sub_B464
C - - - - - 0x01709D 05:B08D: A5 10     LDA ram_0010
C - - - - - 0x01709F 05:B08F: F0 1A     BEQ bra_B0AB
C - - - - - 0x0170A1 05:B091: 20 C3 B0  JSR sub_B0C3
C - - - - - 0x0170A4 05:B094: 48        PHA
C - - - - - 0x0170A5 05:B095: 29 07     AND #$07
C - - - - - 0x0170A7 05:B097: C9 02     CMP #$02
C - - - - - 0x0170A9 05:B099: D0 05     BNE bra_B0A0
C - - - - - 0x0170AB 05:B09B: A9 04     LDA #con_sfx_2_secret_found
C - - - - - 0x0170AD 05:B09D: 8D 02 06  STA ram_sfx_2
bra_B0A0:
C - - - - - 0x0170B0 05:B0A0: 68        PLA
C - - - - - 0x0170B1 05:B0A1: 29 07     AND #$07
C - - - - - 0x0170B3 05:B0A3: C9 02     CMP #$02
C - - - - - 0x0170B5 05:B0A5: 90 04     BCC bra_B0AB
C - - - - - 0x0170B7 05:B0A7: C9 05     CMP #$05
C - - - - - 0x0170B9 05:B0A9: 90 02     BCC bra_B0AD
bra_B0AB:
C - - - - - 0x0170BB 05:B0AB: A0 02     LDY #$02
bra_B0AD:
C - - - - - 0x0170BD 05:B0AD: B9 77 B0  LDA tbl_B077,Y
C - - - - - 0x0170C0 05:B0B0: 8D 94 03  STA ram_0394
C - - - - - 0x0170C3 05:B0B3: 20 DD EA  JSR sub_0x01EAED
sub_B0B6:
sub_0x0170C6:
C - - - - - 0x0170C6 05:B0B6: A9 00     LDA #$00
C - - - - - 0x0170C8 05:B0B8: 85 64     STA ram_0064
C - - - - - 0x0170CA 05:B0BA: A0 05     LDY #$05
bra_B0BC_loop:
C - - - - - 0x0170CC 05:B0BC: 99 B9 00  STA ram_00B9,Y
C - - - - - 0x0170CF 05:B0BF: 88        DEY
C - - - - - 0x0170D0 05:B0C0: 10 FA     BPL bra_B0BC_loop
C - - - - - 0x0170D2 05:B0C2: 60        RTS



sub_B0C3:
C - - - - - 0x0170D3 05:B0C3: A0 00     LDY #$00
C - - - - - 0x0170D5 05:B0C5: A5 98     LDA ram_direction
C - - - - - 0x0170D7 05:B0C7: 29 05     AND #con_dir_05
C - - - - - 0x0170D9 05:B0C9: F0 01     BEQ bra_B0CC
C - - - - - 0x0170DB 05:B0CB: C8        INY
bra_B0CC:
C - - - - - 0x0170DC 05:B0CC: 84 0F     STY ram_000F
C - - - - - 0x0170DE 05:B0CE: A5 98     LDA ram_direction
C - - - - - 0x0170E0 05:B0D0: A4 12     LDY ram_game_mode_main
C - - - - - 0x0170E2 05:B0D2: C0 06     CPY #con_GM_06
C - - - - - 0x0170E4 05:B0D4: F0 03     BEQ bra_B0D9
C - - - - - 0x0170E6 05:B0D6: 20 13 70  JSR sub_bat_7013
bra_B0D9:
C - - - - - 0x0170E9 05:B0D9: 85 02     STA ram_0002
C - - - - - 0x0170EB 05:B0DB: 20 F6 A3  JSR sub_A3F6
C - - - - - 0x0170EE 05:B0DE: A4 0F     LDY ram_000F
C - - - - - 0x0170F0 05:B0E0: 60        RTS



sub_B0E1:
C - - - - - 0x0170F1 05:B0E1: 8E 02 03  STX ram_0302
C - - - - - 0x0170F4 05:B0E4: 8D 03 03  STA ram_0303
C - - - - - 0x0170F7 05:B0E7: A2 18     LDX #$18
C - - - - - 0x0170F9 05:B0E9: 8E 04 03  STX ram_0304
C - - - - - 0x0170FC 05:B0EC: A9 FF     LDA #$FF
C - - - - - 0x0170FE 05:B0EE: 9D 05 03  STA ram_0305,X
bra_B0F1_loop:
C - - - - - 0x017101 05:B0F1: B9 30 05  LDA ram_0530,Y
C - - - - - 0x017104 05:B0F4: 9D 04 03  STA ram_0304,X
C - - - - - 0x017107 05:B0F7: 88        DEY
C - - - - - 0x017108 05:B0F8: CA        DEX
C - - - - - 0x017109 05:B0F9: D0 F6     BNE bra_B0F1_loop
C - - - - - 0x01710B 05:B0FB: 60        RTS



ofs_0x01710C_0A:
C - - J - - 0x01710C 05:B0FC: A5 13     LDA ram_game_mode_sub
C - - - - - 0x01710E 05:B0FE: 20 E2 E5  JSR sub_0x01E5F2_jump_to_pointers_after_JSR
- D 1 - I - 0x017111 05:B101: 17 B1     .word ofs_B117_00
- D 1 - I - 0x017113 05:B103: 53 B1     .word ofs_B153_01
- D 1 - I - 0x017115 05:B105: 47 B1     .word ofs_B147_02
- D 1 - I - 0x017117 05:B107: 3C B1     .word ofs_B13C_03
- D 1 - I - 0x017119 05:B109: 20 AC     .word ofs_AC20_04
- D 1 - I - 0x01711B 05:B10B: 10 AC     .word ofs_AC10_05
- D 1 - I - 0x01711D 05:B10D: 66 B1     .word ofs_B166_06
- D 1 - I - 0x01711F 05:B10F: 73 B1     .word ofs_B173_07
- D 1 - I - 0x017121 05:B111: 4B B1     .word ofs_B14B_08
- D 1 - I - 0x017123 05:B113: 3C B1     .word ofs_B13C_09
- D 1 - I - 0x017125 05:B115: 5A B1     .word ofs_B15A_0A



ofs_B117_00:
C - - J - - 0x017127 05:B117: A9 00     LDA #$00
C - - - - - 0x017129 05:B119: 85 E9     STA ram_00E9
C - - - - - 0x01712B 05:B11B: 85 EE     STA ram_00EE
C - - - - - 0x01712D 05:B11D: A5 10     LDA ram_0010
C - - - - - 0x01712F 05:B11F: D0 06     BNE bra_B127
C - - - - - 0x017131 05:B121: 20 27 B1  JSR sub_B127
C - - - - - 0x017134 05:B124: 4C B2 83  JMP loc_83B2
bra_B127:
sub_B127:
C - - - - - 0x017137 05:B127: E6 13     INC ram_game_mode_sub
C - - - - - 0x017139 05:B129: 4C 3D EA  JMP loc_0x01EA4D



ofs_B12C_05:
C - - J - - 0x01713C 05:B12C: A9 26     LDA #$26
bra_B12E:
loc_B12E:
C D 1 - - - 0x01713E 05:B12E: 85 14     STA ram_0014
bra_B130:
ofs_B130_02:
C - - - - - 0x017140 05:B130: E6 13     INC ram_game_mode_sub
C - - - - - 0x017142 05:B132: 60        RTS



ofs_B133_01:
C - - J - - 0x017143 05:B133: A9 00     LDA #$00
bra_B135:
C - - - - - 0x017145 05:B135: A4 10     LDY ram_0010
C - - - - - 0x017147 05:B137: F0 F7     BEQ bra_B130
C - - - - - 0x017149 05:B139: 20 B3 87  JSR sub_87B3
ofs_B13C_02:
ofs_B13C_07:
ofs_B13C_03:
ofs_B13C_09:
C - - J - - 0x01714C 05:B13C: A4 10     LDY ram_0010
C - - - - - 0x01714E 05:B13E: F0 F0     BEQ bra_B130
C - - - - - 0x017150 05:B140: 4C FB 8C  JMP loc_8CFB



ofs_B143_06:
C - - J - - 0x017153 05:B143: A9 A0     LDA #$A0
C - - - - - 0x017155 05:B145: D0 EE     BNE bra_B135



ofs_B147_02:
C - - J - - 0x017157 05:B147: A9 20     LDA #$20
C - - - - - 0x017159 05:B149: D0 EA     BNE bra_B135



ofs_B14B_08:
C - - J - - 0x01715B 05:B14B: A9 80     LDA #$80
C - - - - - 0x01715D 05:B14D: D0 E6     BNE bra_B135



ofs_B14F_01:
C - - J - - 0x01715F 05:B14F: A9 3E     LDA #$3E
C - - - - - 0x017161 05:B151: D0 DB     BNE bra_B12E



ofs_B153_01:
C - - J - - 0x017163 05:B153: A5 10     LDA ram_0010
C - - - - - 0x017165 05:B155: D0 D9     BNE bra_B130
C - - - - - 0x017167 05:B157: 4C 2B EA  JMP loc_0x01EA3B



ofs_B15A_0A:
C - - J - - 0x01716A 05:B15A: 20 B6 B0  JSR sub_B0B6
C - - - - - 0x01716D 05:B15D: A9 00     LDA #$00
C - - - - - 0x01716F 05:B15F: 85 13     STA ram_game_mode_sub
C - - - - - 0x017171 05:B161: A9 04     LDA #con_GM_04
C - - - - - 0x017173 05:B163: 85 12     STA ram_game_mode_main
C - - - - - 0x017175 05:B165: 60        RTS



ofs_B166_06:
C - - J - - 0x017176 05:B166: A5 EB     LDA ram_map_location
C - - - - - 0x017178 05:B168: 4C 6D B1  JMP loc_B16D



ofs_B16B_05:
C - - J - - 0x01717B 05:B16B: A9 44     LDA #$44
loc_B16D:
C D 1 - - - 0x01717D 05:B16D: 20 D7 83  JSR sub_83D7
C - - - - - 0x017180 05:B170: 4C 09 B0  JMP loc_B009



ofs_B173_06:
ofs_B173_07:
C - - J - - 0x017183 05:B173: 20 10 B0  JSR sub_B010
C - - - - - 0x017186 05:B176: 4C 7B B1  JMP loc_B17B
- - - - - - 0x017189 05:B179: E6 13     INC ram_game_mode_sub
loc_B17B:
C D 1 - - - 0x01718B 05:B17B: A9 00     LDA #$00
C - - - - - 0x01718D 05:B17D: 85 E3     STA ram_00E3
C - - - - - 0x01718F 05:B17F: 60        RTS



ofs_B180_08:
C - - J - - 0x017190 05:B180: AD 94 03  LDA ram_0394
C - - - - - 0x017193 05:B183: F0 0F     BEQ bra_B194
C - - - - - 0x017195 05:B185: A5 98     LDA ram_direction
C - - - - - 0x017197 05:B187: 8D F8 03  STA ram_03F8
C - - - - - 0x01719A 05:B18A: 85 0F     STA ram_000F
C - - - - - 0x01719C 05:B18C: A2 00     LDX #$00
C - - - - - 0x01719E 05:B18E: 20 8D F0  JSR sub_0x01F09D
C - - - - - 0x0171A1 05:B191: 4C C5 ED  JMP loc_0x01EDD5
bra_B194:
C - - - - - 0x0171A4 05:B194: 4C DD EA  JMP loc_0x01EAED



tbl_B197:
- D 1 - - - 0x0171A7 05:B197: 30        .byte $30   ; 00
- D 1 - - - 0x0171A8 05:B198: C0        .byte $C0   ; 01



ofs_B199_08:
C - - J - - 0x0171A9 05:B199: A5 13     LDA ram_game_mode_sub
C - - - - - 0x0171AB 05:B19B: 48        PHA
C - - - - - 0x0171AC 05:B19C: 20 C6 87  JSR sub_87C6
C - - - - - 0x0171AF 05:B19F: 20 B6 B0  JSR sub_B0B6
C - - - - - 0x0171B2 05:B1A2: 68        PLA
C - - - - - 0x0171B3 05:B1A3: 85 13     STA ram_game_mode_sub
C - - - - - 0x0171B5 05:B1A5: A4 EB     LDY ram_map_location
C - - - - - 0x0171B7 05:B1A7: A2 00     LDX #$00
C - - - - - 0x0171B9 05:B1A9: AD 27 05  LDA ram_0527
C - - - - - 0x0171BC 05:B1AC: D9 7E 68  CMP ram_687E,Y
C - - - - - 0x0171BF 05:B1AF: F0 01     BEQ bra_B1B2
C - - - - - 0x0171C1 05:B1B1: E8        INX
bra_B1B2:
C - - - - - 0x0171C2 05:B1B2: BD 97 B1  LDA tbl_B197,X
C - - - - - 0x0171C5 05:B1B5: 85 70     STA ram_pos_X
C - - - - - 0x0171C7 05:B1B7: A9 41     LDA #$41
C - - - - - 0x0171C9 05:B1B9: 85 84     STA ram_pos_Y
C - - - - - 0x0171CB 05:B1BB: A9 04     LDA #con_dir_Down
C - - - - - 0x0171CD 05:B1BD: 85 98     STA ram_direction
C - - - - - 0x0171CF 05:B1BF: A9 E4     LDA #$E4
C - - - - - 0x0171D1 05:B1C1: 8D 94 03  STA ram_0394
C - - - - - 0x0171D4 05:B1C4: A9 00     LDA #$00
C - - - - - 0x0171D6 05:B1C6: 85 11     STA ram_0011
C - - - - - 0x0171D8 05:B1C8: 85 53     STA ram_0053
C - - - - - 0x0171DA 05:B1CA: E6 13     INC ram_game_mode_sub
C - - - - - 0x0171DC 05:B1CC: 60        RTS



ofs_B1CD_09:
C - - J - - 0x0171DD 05:B1CD: A5 98     LDA ram_direction
C - - - - - 0x0171DF 05:B1CF: 8D F8 03  STA ram_03F8
C - - - - - 0x0171E2 05:B1D2: 20 A0 ED  JSR sub_0x01EDB0
C - - - - - 0x0171E5 05:B1D5: A5 84     LDA ram_pos_Y
C - - - - - 0x0171E7 05:B1D7: C9 5D     CMP #$5D
C - - - - - 0x0171E9 05:B1D9: D0 0A     BNE bra_B1E5_RTS
C - - - - - 0x0171EB 05:B1DB: A9 00     LDA #$00
C - - - - - 0x0171ED 05:B1DD: 85 AC     STA ram_drop_id
C - - - - - 0x0171EF 05:B1DF: A9 01     LDA #$01
C - - - - - 0x0171F1 05:B1E1: 85 5A     STA ram_005A
C - - - - - 0x0171F3 05:B1E3: 85 11     STA ram_0011
bra_B1E5_RTS:
C - - - - - 0x0171F5 05:B1E5: 60        RTS



sub_0x0171F6:
C - - - - - 0x0171F6 05:B1E6: A5 63     LDA ram_0063
C - - - - - 0x0171F8 05:B1E8: F0 29     BEQ bra_B213_RTS
C - - - - - 0x0171FA 05:B1EA: A9 10     LDA #con_sfx_4_rupee
C - - - - - 0x0171FC 05:B1EC: 8D 04 06  STA ram_sfx_4
C - - - - - 0x0171FF 05:B1EF: AD 70 06  LDA ram_0670
C - - - - - 0x017202 05:B1F2: C9 F8     CMP #$F8
C - - - - - 0x017204 05:B1F4: B0 07     BCS bra_B1FD
C - - - - - 0x017206 05:B1F6: 18        CLC
C - - - - - 0x017207 05:B1F7: 69 06     ADC #$06
C - - - - - 0x017209 05:B1F9: 8D 70 06  STA ram_0670
C - - - - - 0x01720C 05:B1FC: 60        RTS
bra_B1FD:
C - - - - - 0x01720D 05:B1FD: A9 00     LDA #$00
C - - - - - 0x01720F 05:B1FF: 8D 70 06  STA ram_0670
C - - - - - 0x017212 05:B202: 20 6C 74  JSR sub_bat_746C
C - - - - - 0x017215 05:B205: D0 0D     BNE bra_B214
C - - - - - 0x017217 05:B207: CE 70 06  DEC ram_0670
C - - - - - 0x01721A 05:B20A: A9 00     LDA #$00
C - - - - - 0x01721C 05:B20C: 8D 2E 05  STA ram_052E
C - - - - - 0x01721F 05:B20F: 85 63     STA ram_0063
C - - - - - 0x017221 05:B211: 85 E0     STA ram_pause_flag
bra_B213_RTS:
C - - - - - 0x017223 05:B213: 60        RTS
bra_B214:
C - - - - - 0x017224 05:B214: EE 6F 06  INC ram_066F
C - - - - - 0x017227 05:B217: 60        RTS



tbl_B218:
- D 1 - - - 0x017228 05:B218: 00        .byte $00   ; 
- D 1 - - - 0x017229 05:B219: 00        .byte $00   ; 
- D 1 - - - 0x01722A 05:B21A: 00        .byte $00   ; 
- D 1 - - - 0x01722B 05:B21B: 30        .byte $30   ; 
- D 1 - - - 0x01722C 05:B21C: 32        .byte $32   ; 
- D 1 - - - 0x01722D 05:B21D: 34        .byte $34   ; 
- D 1 - - - 0x01722E 05:B21E: 38        .byte $38   ; 
- D 1 - - - 0x01722F 05:B21F: 3A        .byte $3A   ; 
- D 1 - - - 0x017230 05:B220: 3C        .byte $3C   ; 
- D 1 - - - 0x017231 05:B221: 00        .byte $00   ; 
- D 1 - - - 0x017232 05:B222: 00        .byte $00   ; 
- D 1 - - - 0x017233 05:B223: 00        .byte $00   ; 
- D 1 - - - 0x017234 05:B224: 40        .byte $40   ; 



tbl_B225:
- D 1 - - - 0x017235 05:B225: 00        .byte $00   ; 
- D 1 - - - 0x017236 05:B226: 00        .byte $00   ; 
- D 1 - - - 0x017237 05:B227: 00        .byte $00   ; 
- D 1 - - - 0x017238 05:B228: 30        .byte $30   ; 
- D 1 - - - 0x017239 05:B229: 32        .byte $32   ; 
- D 1 - - - 0x01723A 05:B22A: 34        .byte $34   ; 
- D 1 - - - 0x01723B 05:B22B: 38        .byte $38   ; 
- D 1 - - - 0x01723C 05:B22C: 3A        .byte $3A   ; 
- D 1 - - - 0x01723D 05:B22D: 3C        .byte $3C   ; 
- D 1 - - - 0x01723E 05:B22E: 00        .byte $00   ; 
- D 1 - - - 0x01723F 05:B22F: 00        .byte $00   ; 
- D 1 - - - 0x017240 05:B230: 00        .byte $00   ; 
- D 1 - - - 0x017241 05:B231: 00        .byte $00   ; 
- D 1 - - - 0x017242 05:B232: 00        .byte $00   ; 
- D 1 - - - 0x017243 05:B233: 00        .byte $00   ; 
- D 1 - - - 0x017244 05:B234: 50        .byte $50   ; 
- D 1 - - - 0x017245 05:B235: 52        .byte $52   ; 
- D 1 - - - 0x017246 05:B236: 54        .byte $54   ; 
- D 1 - - - 0x017247 05:B237: 56        .byte $56   ; 
- D 1 - - - 0x017248 05:B238: 58        .byte $58   ; 
- D 1 - - - 0x017249 05:B239: 5A        .byte $5A   ; 



sub_B23A:
C - - - - - 0x01724A 05:B23A: A5 5E     LDA ram_005E
C - - - - - 0x01724C 05:B23C: 30 1C     BMI bra_B25A_RTS
C - - - - - 0x01724E 05:B23E: 4A        LSR
C - - - - - 0x01724F 05:B23F: A8        TAY
C - - - - - 0x017250 05:B240: B0 19     BCS bra_B25B
C - - - - - 0x017252 05:B242: C9 0D     CMP #$0D
C - - - - - 0x017254 05:B244: B0 06     BCS bra_B24C
C - - - - - 0x017256 05:B246: B9 18 B2  LDA tbl_B218,Y
loc_B249:
C D 1 - - - 0x017259 05:B249: 4C 91 B2  JMP loc_B291
bra_B24C:
C - - - - - 0x01725C 05:B24C: C9 15     CMP #$15
C - - - - - 0x01725E 05:B24E: D0 05     BNE bra_B255
C - - - - - 0x017260 05:B250: A9 42     LDA #$42
C - - - - - 0x017262 05:B252: 4C 49 B2  JMP loc_B249   ; bzk optimize, BNE
bra_B255:
C - - - - - 0x017265 05:B255: 20 7F B5  JSR sub_B57F
loc_B258:
C D 1 - - - 0x017268 05:B258: C6 5E     DEC ram_005E
bra_B25A_RTS:
C - - - - - 0x01726A 05:B25A: 60        RTS
bra_B25B:
C - - - - - 0x01726B 05:B25B: A9 28     LDA #$28
C - - - - - 0x01726D 05:B25D: 8D 02 03  STA ram_0302
C - - - - - 0x017270 05:B260: A9 C0     LDA #$C0
bra_B262:
C - - - - - 0x017272 05:B262: 18        CLC
C - - - - - 0x017273 05:B263: 69 20     ADC #$20
C - - - - - 0x017275 05:B265: 90 03     BCC bra_B26A
C - - - - - 0x017277 05:B267: EE 02 03  INC ram_0302
bra_B26A:
C - - - - - 0x01727A 05:B26A: 88        DEY
C - - - - - 0x01727B 05:B26B: 10 F5     BPL bra_B262
C - - - - - 0x01727D 05:B26D: 8D 03 03  STA ram_0303
C - - - - - 0x017280 05:B270: A9 60     LDA #$60
C - - - - - 0x017282 05:B272: 8D 04 03  STA ram_0304
C - - - - - 0x017285 05:B275: A9 24     LDA #$24
C - - - - - 0x017287 05:B277: 8D 05 03  STA ram_0305
C - - - - - 0x01728A 05:B27A: A9 FF     LDA #$FF
C - - - - - 0x01728C 05:B27C: 8D 06 03  STA ram_0306
C - - - - - 0x01728F 05:B27F: 4C 58 B2  JMP loc_B258



sub_B282:
C - - - - - 0x017292 05:B282: A5 5E     LDA ram_005E
C - - - - - 0x017294 05:B284: 30 0F     BMI bra_B295_RTS
C - - - - - 0x017296 05:B286: 4A        LSR
C - - - - - 0x017297 05:B287: A8        TAY
C - - - - - 0x017298 05:B288: B0 D1     BCS bra_B25B    ; bzk
C - - - - - 0x01729A 05:B28A: C9 15     CMP #$15
C - - - - - 0x01729C 05:B28C: B0 05     BCS bra_B293
C - - - - - 0x01729E 05:B28E: B9 25 B2  LDA tbl_B225,Y
loc_B291:
C D 1 - - - 0x0172A1 05:B291: 85 14     STA ram_0014
bra_B293:
C - - - - - 0x0172A3 05:B293: C6 5E     DEC ram_005E
bra_B295_RTS:
C - - - - - 0x0172A5 05:B295: 60        RTS



tbl_B296:
- D 1 - - - 0x0172A6 05:B296: 0C        .byte $0C   ; 00
- D 1 - - - 0x0172A7 05:B297: 0C        .byte $0C   ; 01
- D 1 - - - 0x0172A8 05:B298: 03        .byte $03   ; 02
- D 1 - - - 0x0172A9 05:B299: 03        .byte $03   ; 03



sub_0x0172AA:
C - - - - - 0x0172AA 05:B29A: A5 AC     LDA ram_drop_id
C - - - - - 0x0172AC 05:B29C: D0 1C     BNE bra_B2BA
C - - - - - 0x0172AE 05:B29E: 20 8C 8D  JSR sub_8D8C
C - - - - - 0x0172B1 05:B2A1: A5 4C     LDA ram_004C
C - - - - - 0x0172B3 05:B2A3: 0D 2E 05  ORA ram_052E
C - - - - - 0x0172B6 05:B2A6: D0 09     BNE bra_B2B1
C - - - - - 0x0172B8 05:B2A8: A5 F8     LDA ram_btn_press
C - - - - - 0x0172BA 05:B2AA: 29 80     AND #con_btn_A
C - - - - - 0x0172BC 05:B2AC: F0 03     BEQ bra_B2B1
C - - - - - 0x0172BE 05:B2AE: 20 00 8E  JSR sub_8E00
bra_B2B1:
C - - - - - 0x0172C1 05:B2B1: A5 F8     LDA ram_btn_press
C - - - - - 0x0172C3 05:B2B3: 29 40     AND #con_btn_B
C - - - - - 0x0172C5 05:B2B5: F0 03     BEQ bra_B2BA
C - - - - - 0x0172C7 05:B2B7: 20 1C 8E  JSR sub_8E1C
bra_B2BA:
C - - - - - 0x0172CA 05:B2BA: A2 00     LDX #$00
C - - - - - 0x0172CC 05:B2BC: A5 C0     LDA ram_00C0
C - - - - - 0x0172CE 05:B2BE: D0 3C     BNE bra_B2FC_RTS
C - - - - - 0x0172D0 05:B2C0: A5 10     LDA ram_0010
C - - - - - 0x0172D2 05:B2C2: F0 03     BEQ bra_B2C7
C - - - - - 0x0172D4 05:B2C4: 20 3F 91  JSR sub_913F
bra_B2C7:
C - - - - - 0x0172D7 05:B2C7: AD 94 03  LDA ram_0394
C - - - - - 0x0172DA 05:B2CA: F0 03     BEQ bra_B2CF
C - - - - - 0x0172DC 05:B2CC: 4C 8D B3  JMP loc_B38D
bra_B2CF:
C - - - - - 0x0172DF 05:B2CF: 85 0B     STA ram_000B
C - - - - - 0x0172E1 05:B2D1: 85 0C     STA ram_000C
C - - - - - 0x0172E3 05:B2D3: 85 57     STA ram_0057
C - - - - - 0x0172E5 05:B2D5: A0 03     LDY #$03
bra_B2D7:
C - - - - - 0x0172E7 05:B2D7: AD F8 03  LDA ram_03F8
C - - - - - 0x0172EA 05:B2DA: 39 C3 6D  AND tbl_bat_6DC3_direction,Y
C - - - - - 0x0172ED 05:B2DD: F0 16     BEQ bra_B2F5
C - - - - - 0x0172EF 05:B2DF: 85 0F     STA ram_000F
C - - - - - 0x0172F1 05:B2E1: 98        TYA
C - - - - - 0x0172F2 05:B2E2: 48        PHA
C - - - - - 0x0172F3 05:B2E3: E6 0B     INC ram_000B
C - - - - - 0x0172F5 05:B2E5: 20 FA ED  JSR sub_0x01EE0A
C - - - - - 0x0172F8 05:B2E8: CD 4A 03  CMP ram_034A
C - - - - - 0x0172FB 05:B2EB: B0 06     BCS bra_B2F3
C - - - - - 0x0172FD 05:B2ED: A5 0F     LDA ram_000F
C - - - - - 0x0172FF 05:B2EF: 85 0D     STA ram_000D
C - - - - - 0x017301 05:B2F1: E6 0C     INC ram_000C
bra_B2F3:
C - - - - - 0x017303 05:B2F3: 68        PLA
C - - - - - 0x017304 05:B2F4: A8        TAY
bra_B2F5:
C - - - - - 0x017305 05:B2F5: 88        DEY
C - - - - - 0x017306 05:B2F6: 10 DF     BPL bra_B2D7
C - - - - - 0x017308 05:B2F8: A4 0B     LDY ram_000B
C - - - - - 0x01730A 05:B2FA: D0 01     BNE bra_B2FD
bra_B2FC_RTS:
C - - - - - 0x01730C 05:B2FC: 60        RTS
bra_B2FD:
C - - - - - 0x01730D 05:B2FD: A5 0F     LDA ram_000F
C - - - - - 0x01730F 05:B2FF: C0 01     CPY #$01
C - - - - - 0x017311 05:B301: F0 5C     BEQ bra_B35F
C - - - - - 0x017313 05:B303: A5 0C     LDA ram_000C
C - - - - - 0x017315 05:B305: D0 03     BNE bra_B30A
- - - - - - 0x017317 05:B307: 4C AB B3  JMP loc_B3AB
bra_B30A:
C - - - - - 0x01731A 05:B30A: A8        TAY
C - - - - - 0x01731B 05:B30B: E6 57     INC ram_0057
C - - - - - 0x01731D 05:B30D: A2 00     LDX #$00
C - - - - - 0x01731F 05:B30F: A5 0D     LDA ram_000D
C - - - - - 0x017321 05:B311: C0 01     CPY #$01
C - - - - - 0x017323 05:B313: F0 4A     BEQ bra_B35F
C - - - - - 0x017325 05:B315: A4 10     LDY ram_0010
C - - - - - 0x017327 05:B317: F0 46     BEQ bra_B35F
C - - - - - 0x017329 05:B319: A4 70     LDY ram_pos_X
C - - - - - 0x01732B 05:B31B: C0 20     CPY #$20
C - - - - - 0x01732D 05:B31D: F0 04     BEQ bra_B323
C - - - - - 0x01732F 05:B31F: C0 D0     CPY #$D0
C - - - - - 0x017331 05:B321: D0 10     BNE bra_B333
bra_B323:
C - - - - - 0x017333 05:B323: A4 84     LDY ram_pos_Y
C - - - - - 0x017335 05:B325: C0 85     CPY #$85
C - - - - - 0x017337 05:B327: D0 24     BNE bra_B34D
- - - - - - 0x017339 05:B329: A5 98     LDA ram_direction
- - - - - - 0x01733B 05:B32B: 29 04     AND #con_dir_Down
- - - - - - 0x01733D 05:B32D: F0 1E     BEQ bra_B34D
bra_B32F:
- - - - - - 0x01733F 05:B32F: A5 98     LDA ram_direction
- - - - - - 0x017341 05:B331: D0 2C     BNE bra_B35F
bra_B333:
C - - - - - 0x017343 05:B333: A5 98     LDA ram_direction
C - - - - - 0x017345 05:B335: A6 56     LDX ram_0056
C - - - - - 0x017347 05:B337: F0 14     BEQ bra_B34D
C - - - - - 0x017349 05:B339: A4 10     LDY ram_0010
C - - - - - 0x01734B 05:B33B: F0 22     BEQ bra_B35F
C - - - - - 0x01734D 05:B33D: A4 70     LDY ram_pos_X
C - - - - - 0x01734F 05:B33F: C0 78     CPY #$78
C - - - - - 0x017351 05:B341: D0 1C     BNE bra_B35F
- - - - - - 0x017353 05:B343: A4 84     LDY ram_pos_Y
- - - - - - 0x017355 05:B345: C0 5D     CPY #$5D
- - - - - - 0x017357 05:B347: D0 16     BNE bra_B35F
- - - - - - 0x017359 05:B349: 29 03     AND #$03
- - - - - - 0x01735B 05:B34B: F0 E2     BEQ bra_B32F
bra_B34D:
C - - - - - 0x01735D 05:B34D: A5 98     LDA ram_direction
C - - - - - 0x01735F 05:B34F: E8        INX
C - - - - - 0x017360 05:B350: 20 13 70  JSR sub_bat_7013
C - - - - - 0x017363 05:B353: AD F8 03  LDA ram_03F8
C - - - - - 0x017366 05:B356: 48        PHA
C - - - - - 0x017367 05:B357: 39 96 B2  AND tbl_B296,Y
C - - - - - 0x01736A 05:B35A: 85 0C     STA ram_000C
C - - - - - 0x01736C 05:B35C: 68        PLA
C - - - - - 0x01736D 05:B35D: 45 0C     EOR ram_000C
bra_B35F:
C - - - - - 0x01736F 05:B35F: 86 56     STX ram_0056
C - - - - - 0x017371 05:B361: 20 A9 B3  JSR sub_B3A9
C - - - - - 0x017374 05:B364: A2 00     LDX #$00
sub_B366:
bra_B366:
C - - - - - 0x017376 05:B366: A9 60     LDA #$60
C - - - - - 0x017378 05:B368: 85 00     STA ram_0000
C - - - - - 0x01737A 05:B36A: A5 10     LDA ram_0010
C - - - - - 0x01737C 05:B36C: D0 19     BNE bra_B387
C - - - - - 0x01737E 05:B36E: AD 9E 04  LDA ram_049E
C - - - - - 0x017381 05:B371: C9 74     CMP #$74
C - - - - - 0x017383 05:B373: F0 04     BEQ bra_B379
C - - - - - 0x017385 05:B375: C9 75     CMP #$75
C - - - - - 0x017387 05:B377: D0 0E     BNE bra_B387
bra_B379:
C - - - - - 0x017389 05:B379: A9 30     LDA #$30
C - - - - - 0x01738B 05:B37B: 85 00     STA ram_0000
C - - - - - 0x01738D 05:B37D: CD BC 03  CMP ram_03BC
C - - - - - 0x017390 05:B380: F0 05     BEQ bra_B387
C - - - - - 0x017392 05:B382: A9 00     LDA #$00
C - - - - - 0x017394 05:B384: 8D A8 03  STA ram_03A8
bra_B387:
C - - - - - 0x017397 05:B387: A5 00     LDA ram_0000
C - - - - - 0x017399 05:B389: 8D BC 03  STA ram_03BC
bra_B38C_RTS:
C - - - - - 0x01739C 05:B38C: 60        RTS



loc_B38D:
C D 1 - - - 0x01739D 05:B38D: AD F8 03  LDA ram_03F8
C - - - - - 0x0173A0 05:B390: F0 FA     BEQ bra_B38C_RTS
C - - - - - 0x0173A2 05:B392: 20 13 70  JSR sub_bat_7013
C - - - - - 0x0173A5 05:B395: B9 C3 6D  LDA tbl_bat_6DC3_direction,Y
C - - - - - 0x0173A8 05:B398: C5 98     CMP ram_direction
C - - - - - 0x0173AA 05:B39A: F0 CA     BEQ bra_B366
C - - - - - 0x0173AC 05:B39C: 05 98     ORA ram_direction
C - - - - - 0x0173AE 05:B39E: C9 03     CMP #con_dir__LR
C - - - - - 0x0173B0 05:B3A0: F0 04     BEQ bra_B3A6
C - - - - - 0x0173B2 05:B3A2: C9 0C     CMP #con_dir__UD
C - - - - - 0x0173B4 05:B3A4: D0 09     BNE bra_B3AF
bra_B3A6:
C - - - - - 0x0173B6 05:B3A6: B9 C3 6D  LDA tbl_bat_6DC3_direction,Y
sub_B3A9:
C - - - - - 0x0173B9 05:B3A9: 85 98     STA ram_direction
loc_B3AB:
C - - - - - 0x0173BB 05:B3AB: 8D F8 03  STA ram_03F8
C - - - - - 0x0173BE 05:B3AE: 60        RTS
bra_B3AF:
C - - - - - 0x0173BF 05:B3AF: A5 57     LDA ram_0057
C - - - - - 0x0173C1 05:B3B1: D0 B3     BNE bra_B366
C - - - - - 0x0173C3 05:B3B3: AD 94 03  LDA ram_0394
C - - - - - 0x0173C6 05:B3B6: 20 1F 70  JSR sub_bat_701F
C - - - - - 0x0173C9 05:B3B9: 48        PHA
C - - - - - 0x0173CA 05:B3BA: A5 98     LDA ram_direction
C - - - - - 0x0173CC 05:B3BC: 20 13 70  JSR sub_bat_7013
C - - - - - 0x0173CF 05:B3BF: 85 01     STA ram_0001
C - - - - - 0x0173D1 05:B3C1: 68        PLA
C - - - - - 0x0173D2 05:B3C2: C9 04     CMP #$04
C - - - - - 0x0173D4 05:B3C4: B0 2D     BCS bra_B3F3_RTS
C - - - - - 0x0173D6 05:B3C6: A5 98     LDA ram_direction
C - - - - - 0x0173D8 05:B3C8: 29 0A     AND #con_dir_0A
C - - - - - 0x0173DA 05:B3CA: F0 07     BEQ bra_B3D3
C - - - - - 0x0173DC 05:B3CC: AD 94 03  LDA ram_0394
C - - - - - 0x0173DF 05:B3CF: 10 22     BPL bra_B3F3_RTS
C - - - - - 0x0173E1 05:B3D1: 30 05     BMI bra_B3D8
bra_B3D3:
C - - - - - 0x0173E3 05:B3D3: AD 94 03  LDA ram_0394
C - - - - - 0x0173E6 05:B3D6: 30 1B     BMI bra_B3F3_RTS
bra_B3D8:
C - - - - - 0x0173E8 05:B3D8: A5 01     LDA ram_0001
C - - - - - 0x0173EA 05:B3DA: 85 98     STA ram_direction
C - - - - - 0x0173EC 05:B3DC: A9 08     LDA #$08
C - - - - - 0x0173EE 05:B3DE: AC 94 03  LDY ram_0394
C - - - - - 0x0173F1 05:B3E1: 30 02     BMI bra_B3E5
C - - - - - 0x0173F3 05:B3E3: A9 F8     LDA #$F8
bra_B3E5:
C - - - - - 0x0173F5 05:B3E5: 48        PHA
C - - - - - 0x0173F6 05:B3E6: 98        TYA
C - - - - - 0x0173F7 05:B3E7: 20 21 70  JSR sub_bat_7021
C - - - - - 0x0173FA 05:B3EA: 85 01     STA ram_0001
C - - - - - 0x0173FC 05:B3EC: 68        PLA
C - - - - - 0x0173FD 05:B3ED: 38        SEC
C - - - - - 0x0173FE 05:B3EE: E5 01     SBC ram_0001
C - - - - - 0x017400 05:B3F0: 8D 94 03  STA ram_0394
bra_B3F3_RTS:
C - - - - - 0x017403 05:B3F3: 60        RTS



sub_0x017404:
C - - - - - 0x017404 05:B3F4: A5 5A     LDA ram_005A
C - - - - - 0x017406 05:B3F6: 0D 94 03  ORA ram_0394
C - - - - - 0x017409 05:B3F9: D0 73     BNE bra_B46E_RTS
C - - - - - 0x01740B 05:B3FB: A5 10     LDA ram_0010
C - - - - - 0x01740D 05:B3FD: D0 0E     BNE bra_B40D
C - - - - - 0x01740F 05:B3FF: A5 EB     LDA ram_map_location
C - - - - - 0x017411 05:B401: C9 22     CMP #$22
C - - - - - 0x017413 05:B403: D0 08     BNE bra_B40D
C - - - - - 0x017415 05:B405: A5 70     LDA ram_pos_X
C - - - - - 0x017417 05:B407: 29 07     AND #$07
C - - - - - 0x017419 05:B409: D0 63     BNE bra_B46E_RTS
C - - - - - 0x01741B 05:B40B: F0 06     BEQ bra_B413
bra_B40D:
C - - - - - 0x01741D 05:B40D: A5 70     LDA ram_pos_X
C - - - - - 0x01741F 05:B40F: 29 0F     AND #$0F
C - - - - - 0x017421 05:B411: D0 5B     BNE bra_B46E_RTS
bra_B413:
C - - - - - 0x017423 05:B413: A5 84     LDA ram_pos_Y
C - - - - - 0x017425 05:B415: 29 0F     AND #$0F
C - - - - - 0x017427 05:B417: C9 0D     CMP #$0D
C - - - - - 0x017429 05:B419: D0 53     BNE bra_B46E_RTS
C - - - - - 0x01742B 05:B41B: 20 F4 ED  JSR sub_0x01EE04
C - - - - - 0x01742E 05:B41E: AD 9E 04  LDA ram_049E
C - - - - - 0x017431 05:B421: A4 10     LDY ram_0010
C - - - - - 0x017433 05:B423: F0 4A     BEQ bra_B46F
C - - - - - 0x017435 05:B425: C9 70     CMP #$70
C - - - - - 0x017437 05:B427: 90 45     BCC bra_B46E_RTS
C - - - - - 0x017439 05:B429: C9 74     CMP #$74
C - - - - - 0x01743B 05:B42B: B0 41     BCS bra_B46E_RTS
C - - - - - 0x01743D 05:B42D: 20 64 B4  JSR sub_B464
C - - - - - 0x017440 05:B430: A5 EB     LDA ram_map_location
C - - - - - 0x017442 05:B432: 8D 27 05  STA ram_0527
C - - - - - 0x017445 05:B435: A2 FF     LDX #$FF
bra_B437_loop:
C - - - - - 0x017447 05:B437: E8        INX
C - - - - - 0x017448 05:B438: BD B2 6B  LDA ram_6BB2,X
C - - - - - 0x01744B 05:B43B: A8        TAY
C - - - - - 0x01744C 05:B43C: A5 EB     LDA ram_map_location
C - - - - - 0x01744E 05:B43E: D9 7E 68  CMP ram_687E,Y
C - - - - - 0x017451 05:B441: F0 05     BEQ bra_B448
C - - - - - 0x017453 05:B443: D9 FE 68  CMP ram_68FE,Y
C - - - - - 0x017456 05:B446: D0 EF     BNE bra_B437_loop
bra_B448:
C - - - - - 0x017458 05:B448: 84 EB     STY ram_map_location
C - - - - - 0x01745A 05:B44A: A9 09     LDA #$09
loc_B44C:
bra_B44C:   ; A = 02 bzk
C D 1 - - - 0x01745C 05:B44C: 85 5B     STA ram_005B
C - - - - - 0x01745E 05:B44E: C9 09     CMP #$09
C - - - - - 0x017460 05:B450: F0 08     BEQ bra_B45A
C - - - - - 0x017462 05:B452: 20 E9 6E  JSR sub_bat_6EE9
C - - - - - 0x017465 05:B455: 8D 02 06  STA ram_sfx_2   ; con_sfx_2_00
C - - - - - 0x017468 05:B458: 85 3C     STA ram_003C
bra_B45A:
C - - - - - 0x01746A 05:B45A: A9 10     LDA #con_GM_10
C - - - - - 0x01746C 05:B45C: 85 12     STA ram_game_mode_main
C - - - - - 0x01746E 05:B45E: 20 59 B5  JSR sub_B559
C - - - - - 0x017471 05:B461: 4C 61 8F  JMP loc_8F61



sub_B464:
C - - - - - 0x017474 05:B464: A5 10     LDA ram_0010
C - - - - - 0x017476 05:B466: D0 03     BNE bra_B46B
C - - - - - 0x017478 05:B468: 4C E5 90  JMP loc_90E5
bra_B46B:
C - - - - - 0x01747B 05:B46B: 20 D7 92  JSR sub_92D7
bra_B46E_RTS:
C - - - - - 0x01747E 05:B46E: 60        RTS
bra_B46F:
C - - - - - 0x01747F 05:B46F: 85 65     STA ram_0065
C - - - - - 0x017481 05:B471: C9 24     CMP #$24
C - - - - - 0x017483 05:B473: F0 11     BEQ bra_B486
C - - - - - 0x017485 05:B475: C9 88     CMP #$88
C - - - - - 0x017487 05:B477: F0 0D     BEQ bra_B486
C - - - - - 0x017489 05:B479: C9 70     CMP #$70
C - - - - - 0x01748B 05:B47B: 90 F1     BCC bra_B46E_RTS
C - - - - - 0x01748D 05:B47D: C9 74     CMP #$74
C - - - - - 0x01748F 05:B47F: B0 ED     BCS bra_B46E_RTS
C - - - - - 0x017491 05:B481: A9 70     LDA #$70
C - - - - - 0x017493 05:B483: 8D 9E 04  STA ram_049E
bra_B486:
C - - - - - 0x017496 05:B486: 20 64 B4  JSR sub_B464
C - - - - - 0x017499 05:B489: A4 EB     LDY ram_map_location
C - - - - - 0x01749B 05:B48B: B9 FE 68  LDA ram_68FE,Y
C - - - - - 0x01749E 05:B48E: 29 FC     AND #$FC
C - - - - - 0x0174A0 05:B490: C9 40     CMP #$40
C - - - - - 0x0174A2 05:B492: 90 0B     BCC bra_B49F
C - - - - - 0x0174A4 05:B494: A0 0B     LDY #$0B
C - - - - - 0x0174A6 05:B496: C9 50     CMP #$50
C - - - - - 0x0174A8 05:B498: D0 01     BNE bra_B49B
C - - - - - 0x0174AA 05:B49A: C8        INY
bra_B49B:
C - - - - - 0x0174AB 05:B49B: 98        TYA
C - - - - - 0x0174AC 05:B49C: 4C 4C B4  JMP loc_B44C
bra_B49F:
C - - - - - 0x0174AF 05:B49F: 4A        LSR
C - - - - - 0x0174B0 05:B4A0: 4A        LSR
C - - - - - 0x0174B1 05:B4A1: 85 10     STA ram_0010
C - - - - - 0x0174B3 05:B4A3: A5 EB     LDA ram_map_location
C - - - - - 0x0174B5 05:B4A5: 8D 26 05  STA ram_0526
C - - - - - 0x0174B8 05:B4A8: A9 02     LDA #$02
C - - - - - 0x0174BA 05:B4AA: D0 A0     BNE bra_B44C



sub_B4AC:
sub_0x0174BC:
C - - - - - 0x0174BC 05:B4AC: AD 01 60  LDA ram_battery_check_1
C - - - - - 0x0174BF 05:B4AF: C9 5A     CMP #$5A
C - - - - - 0x0174C1 05:B4B1: D0 07     BNE bra_B4BA
C - - - - - 0x0174C3 05:B4B3: AD FF 7F  LDA ram_battery_check_2
C - - - - - 0x0174C6 05:B4B6: C9 A5     CMP #$A5
C - - - - - 0x0174C8 05:B4B8: F0 2C     BEQ bra_B4E6
bra_B4BA:
C - - - - - 0x0174CA 05:B4BA: A9 FF     LDA #$FF
C - - - - - 0x0174CC 05:B4BC: 8D 2A 65  STA ram_slot_something
C - - - - - 0x0174CF 05:B4BF: 8D 2B 65  STA ram_slot_something + 1
C - - - - - 0x0174D2 05:B4C2: 8D 2C 65  STA ram_slot_something + 2
C - - - - - 0x0174D5 05:B4C5: A9 65     LDA #> ram_6530
C - - - - - 0x0174D7 05:B4C7: 85 01     STA ram_0001
C - - - - - 0x0174D9 05:B4C9: A9 30     LDA #< ram_6530
C - - - - - 0x0174DB 05:B4CB: 85 00     STA ram_0000
C - - - - - 0x0174DD 05:B4CD: A0 00     LDY #$00
bra_B4CF_loop:
C - - - - - 0x0174DF 05:B4CF: A9 00     LDA #$00
C - - - - - 0x0174E1 05:B4D1: 91 00     STA (ram_0000),Y
C - - - - - 0x0174E3 05:B4D3: A5 00     LDA ram_0000
C - - - - - 0x0174E5 05:B4D5: 18        CLC
C - - - - - 0x0174E6 05:B4D6: 69 01     ADC #$01
C - - - - - 0x0174E8 05:B4D8: 85 00     STA ram_0000
C - - - - - 0x0174EA 05:B4DA: A5 01     LDA ram_0001
C - - - - - 0x0174EC 05:B4DC: 69 00     ADC #$00
C - - - - - 0x0174EE 05:B4DE: 85 01     STA ram_0001
C - - - - - 0x0174F0 05:B4E0: C9 80     CMP #$80
C - - - - - 0x0174F2 05:B4E2: D0 EB     BNE bra_B4CF_loop
C - - - - - 0x0174F4 05:B4E4: 38        SEC
C - - - - - 0x0174F5 05:B4E5: 60        RTS
bra_B4E6:
C - - - - - 0x0174F6 05:B4E6: 18        CLC
C - - - - - 0x0174F7 05:B4E7: 60        RTS



sub_0x0174F8:
C - - - - - 0x0174F8 05:B4E8: A9 07     LDA #$07
C - - - - - 0x0174FA 05:B4EA: A0 FE     LDY #$FE
C - - - - - 0x0174FC 05:B4EC: 20 08 E6  JSR sub_0x01E618
C - - - - - 0x0174FF 05:B4EF: A9 00     LDA #$00
C - - - - - 0x017501 05:B4F1: 85 F7     STA ram_00F7
C - - - - - 0x017503 05:B4F3: 85 F5     STA ram_00F5
C - - - - - 0x017505 05:B4F5: 85 F6     STA ram_00F6
C - - - - - 0x017507 05:B4F7: 85 F3     STA ram_00F3
C - - - - - 0x017509 05:B4F9: A0 EF     LDY #$EF    ; 0000-00EF
bra_B4FB_loop:
C - - - - - 0x01750B 05:B4FB: 99 00 00  STA ram_0000,Y
C - - - - - 0x01750E 05:B4FE: 88        DEY
C - - - - - 0x01750F 05:B4FF: C0 FF     CPY #$FF    ; bzk optimize, BPL
C - - - - - 0x017511 05:B501: D0 F8     BNE bra_B4FB_loop
C - - - - - 0x017513 05:B503: A9 40     LDA #$40
C - - - - - 0x017515 05:B505: 8D 25 05  STA ram_0525
C - - - - - 0x017518 05:B508: 85 18     STA ram_indiv_random
C - - - - - 0x01751A 05:B50A: A9 01     LDA #$01
C - - - - - 0x01751C 05:B50C: 8D 36 06  STA ram_slot_active_flag + 3
C - - - - - 0x01751F 05:B50F: 8D 37 06  STA ram_slot_active_flag + 4
C - - - - - 0x017522 05:B512: 60        RTS



tbl_B513:
- D 1 - - - 0x017523 05:B513: F0        .byte $F0   ; 00
- D 1 - - - 0x017524 05:B514: 10        .byte $10   ; 01
- D 1 - - - 0x017525 05:B515: FF        .byte $FF   ; 02
- D 1 - - - 0x017526 05:B516: 01        .byte $01   ; 03



ofs_0x017527_01:
ofs_0x017527_08:
- - - - - - 0x017527 05:B517: A9 00     LDA #$00
- - - - - - 0x017529 05:B519: 85 E7     STA ram_00E7
- - - - - - 0x01752B 05:B51B: 60        RTS



bra_B51C:   ; bzk
C - - - - - 0x01752C 05:B51C: 06 00     ASL ram_0000
C - - - - - 0x01752E 05:B51E: CA        DEX
C - - - - - 0x01752F 05:B51F: 4C 28 B5  JMP loc_B528



ofs_0x017532_00:
ofs_0x017532_02:
ofs_0x017532_03:
ofs_0x017532_04:
ofs_0x017532_05:
ofs_0x017532_06:
ofs_0x017532_07:
C - - J - - 0x017532 05:B522: A9 01     LDA #$01
C - - - - - 0x017534 05:B524: 85 00     STA ram_0000
C - - - - - 0x017536 05:B526: A2 03     LDX #$03
loc_B528:
C D 1 - - - 0x017538 05:B528: A5 E7     LDA ram_00E7
C - - - - - 0x01753A 05:B52A: 24 00     BIT ram_0000
C - - - - - 0x01753C 05:B52C: F0 EE     BEQ bra_B51C
C - - - - - 0x01753E 05:B52E: 20 5A E8  JSR sub_0x01E86A
C - - - - - 0x017541 05:B531: 8D E4 04  STA ram_04E4
C - - - - - 0x017544 05:B534: BD 13 B5  LDA tbl_B513,X
C - - - - - 0x017547 05:B537: 18        CLC
C - - - - - 0x017548 05:B538: 65 EB     ADC ram_map_location
C - - - - - 0x01754A 05:B53A: 85 EC     STA ram_00EC
C - - - - - 0x01754C 05:B53C: A5 10     LDA ram_0010
C - - - - - 0x01754E 05:B53E: D0 03     BNE bra_B543
C - - - - - 0x017550 05:B540: 20 2F 75  JSR sub_bat_752F
bra_B543:
C - - - - - 0x017553 05:B543: A5 EC     LDA ram_00EC
C - - - - - 0x017555 05:B545: 10 12     BPL bra_B559
loc_B547:
C D 1 - - - 0x017557 05:B547: 20 A3 EB  JSR sub_0x01EBB3
C - - - - - 0x01755A 05:B54A: 85 E7     STA ram_00E7
C - - - - - 0x01755C 05:B54C: 85 10     STA ram_0010
C - - - - - 0x01755E 05:B54E: A9 02     LDA #$02    ; con_GM_02
C - - - - - 0x017560 05:B550: 85 12     STA ram_game_mode_main
C - - - - - 0x017562 05:B552: 85 5A     STA ram_005A
C - - - - - 0x017564 05:B554: A9 80     LDA #con_sfx_4_80
C - - - - - 0x017566 05:B556: 8D 04 06  STA ram_sfx_4
bra_B559:
sub_B559:
sub_0x017569:
C - - - - - 0x017569 05:B559: A5 FE     LDA ram_00FE
C - - - - - 0x01756B 05:B55B: 29 FE     AND #$FE
C - - - - - 0x01756D 05:B55D: 85 FE     STA ram_00FE
C - - - - - 0x01756F 05:B55F: 60        RTS



sub_B560:
C - - - - - 0x017570 05:B560: A2 01     LDX #$01
C - - - - - 0x017572 05:B562: 86 00     STX ram_0000
C - - - - - 0x017574 05:B564: A2 03     LDX #$03
loc_B566:
C D 1 - - - 0x017576 05:B566: 24 00     BIT ram_0000
C - - - - - 0x017578 05:B568: D0 06     BNE bra_B570
C - - - - - 0x01757A 05:B56A: 06 00     ASL ram_0000
C - - - - - 0x01757C 05:B56C: CA        DEX
C - - - - - 0x01757D 05:B56D: 4C 66 B5  JMP loc_B566
bra_B570:
C - - - - - 0x017580 05:B570: BD 13 B5  LDA tbl_B513,X
C - - - - - 0x017583 05:B573: 18        CLC
C - - - - - 0x017584 05:B574: 65 EB     ADC ram_map_location
C - - - - - 0x017586 05:B576: 60        RTS



tbl_B577:
- D 1 - - - 0x017587 05:B577: 80        .byte $80   ; 00
- D 1 - - - 0x017588 05:B578: 40        .byte $40   ; 01
- D 1 - - - 0x017589 05:B579: 20        .byte $20   ; 02
- D 1 - - - 0x01758A 05:B57A: 10        .byte $10   ; 03
- D 1 - - - 0x01758B 05:B57B: 08        .byte $08   ; 04
- D 1 - - - 0x01758C 05:B57C: 04        .byte $04   ; 05
- D 1 - - - 0x01758D 05:B57D: 02        .byte $02   ; 06
- D 1 - - - 0x01758E 05:B57E: 01        .byte $01   ; 07



sub_B57F:
C - - - - - 0x01758F 05:B57F: A0 10     LDY #$10
C - - - - - 0x017591 05:B581: A5 5E     LDA ram_005E
C - - - - - 0x017593 05:B583: 4A        LSR
C - - - - - 0x017594 05:B584: AA        TAX
C - - - - - 0x017595 05:B585: A9 FF     LDA #$FF
C - - - - - 0x017597 05:B587: 99 05 03  STA ram_0305,Y
C - - - - - 0x01759A 05:B58A: A9 10     LDA #$10
C - - - - - 0x01759C 05:B58C: 8D 04 03  STA ram_0304
C - - - - - 0x01759F 05:B58F: A9 28     LDA #$28
C - - - - - 0x0175A1 05:B591: 8D 02 03  STA ram_0302
C - - - - - 0x0175A4 05:B594: A9 EC     LDA #$EC
bra_B596_loop:
C - - - - - 0x0175A6 05:B596: 18        CLC
C - - - - - 0x0175A7 05:B597: 69 20     ADC #$20
C - - - - - 0x0175A9 05:B599: 90 03     BCC bra_B59E
C - - - - - 0x0175AB 05:B59B: EE 02 03  INC ram_0302
bra_B59E:
C - - - - - 0x0175AE 05:B59E: CA        DEX
C - - - - - 0x0175AF 05:B59F: 10 F5     BPL bra_B596_loop
C - - - - - 0x0175B1 05:B5A1: 8D 03 03  STA ram_0303
C - - - - - 0x0175B4 05:B5A4: A5 5D     LDA ram_005D
C - - - - - 0x0175B6 05:B5A6: 48        PHA
bra_B5A7_loop:
C - - - - - 0x0175B7 05:B5A7: 20 08 B6  JSR sub_B608
C - - - - - 0x0175BA 05:B5AA: C6 5D     DEC ram_005D
C - - - - - 0x0175BC 05:B5AC: 88        DEY
C - - - - - 0x0175BD 05:B5AD: D0 F8     BNE bra_B5A7_loop
C - - - - - 0x0175BF 05:B5AF: 68        PLA
C - - - - - 0x0175C0 05:B5B0: 38        SEC
C - - - - - 0x0175C1 05:B5B1: E9 10     SBC #$10
C - - - - - 0x0175C3 05:B5B3: 85 5D     STA ram_005D
C - - - - - 0x0175C5 05:B5B5: AE AB 6B  LDX ram_6BAB
loc_B5B8:
C D 1 - - - 0x0175C8 05:B5B8: F0 17     BEQ bra_B5D1
C - - - - - 0x0175CA 05:B5BA: AD 14 03  LDA ram_0314
C - - - - - 0x0175CD 05:B5BD: 48        PHA
C - - - - - 0x0175CE 05:B5BE: A0 0E     LDY #$0E
bra_B5C0_loop:
C - - - - - 0x0175D0 05:B5C0: B9 05 03  LDA ram_0305,Y
C - - - - - 0x0175D3 05:B5C3: 99 06 03  STA ram_0306,Y
C - - - - - 0x0175D6 05:B5C6: 88        DEY
C - - - - - 0x0175D7 05:B5C7: 10 F7     BPL bra_B5C0_loop
C - - - - - 0x0175D9 05:B5C9: 68        PLA
C - - - - - 0x0175DA 05:B5CA: 8D 05 03  STA ram_0305
C - - - - - 0x0175DD 05:B5CD: CA        DEX
C - - - - - 0x0175DE 05:B5CE: 4C B8 B5  JMP loc_B5B8
bra_B5D1:
C - - - - - 0x0175E1 05:B5D1: A5 5E     LDA ram_005E
C - - - - - 0x0175E3 05:B5D3: 38        SEC
C - - - - - 0x0175E4 05:B5D4: E9 1A     SBC #$1A
C - - - - - 0x0175E6 05:B5D6: 4A        LSR
C - - - - - 0x0175E7 05:B5D7: AA        TAX
C - - - - - 0x0175E8 05:B5D8: A0 0F     LDY #$0F
bra_B5DA_loop:
C - - - - - 0x0175EA 05:B5DA: B9 BD 6B  LDA ram_6BBD,Y
C - - - - - 0x0175ED 05:B5DD: 3D 77 B5  AND tbl_B577,X
C - - - - - 0x0175F0 05:B5E0: D0 05     BNE bra_B5E7
C - - - - - 0x0175F2 05:B5E2: A9 F5     LDA #$F5
C - - - - - 0x0175F4 05:B5E4: 99 05 03  STA ram_0305,Y
bra_B5E7:
C - - - - - 0x0175F7 05:B5E7: 88        DEY
C - - - - - 0x0175F8 05:B5E8: 10 F0     BPL bra_B5DA_loop
C - - - - - 0x0175FA 05:B5EA: 60        RTS



sub_B5EB:
sub_0x0175FB:
C - - - - - 0x0175FB 05:B5EB: A2 10     LDX #$10
C - - - - - 0x0175FD 05:B5ED: D0 02     BNE bra_B5F1

sub_B5EF:
C - - - - - 0x0175FF 05:B5EF: A2 11     LDX #$11
bra_B5F1:
C - - - - - 0x017601 05:B5F1: A5 10     LDA ram_0010
C - - - - - 0x017603 05:B5F3: F0 12     BEQ bra_B607_RTS
C - - - - - 0x017605 05:B5F5: 38        SEC
C - - - - - 0x017606 05:B5F6: E9 01     SBC #$01
C - - - - - 0x017608 05:B5F8: C9 08     CMP #$08
C - - - - - 0x01760A 05:B5FA: 90 02     BCC bra_B5FE
C - - - - - 0x01760C 05:B5FC: E8        INX
C - - - - - 0x01760D 05:B5FD: E8        INX
bra_B5FE:
C - - - - - 0x01760E 05:B5FE: 29 07     AND #$07
C - - - - - 0x017610 05:B600: A8        TAY
C - - - - - 0x017611 05:B601: BD 57 06  LDA ram_0657,X
C - - - - - 0x017614 05:B604: 39 BE E6  AND tbl_0x01E6CE,Y
bra_B607_RTS:
C - - - - - 0x017617 05:B607: 60        RTS



sub_B608:
C - - - - - 0x017618 05:B608: 98        TYA
C - - - - - 0x017619 05:B609: 48        PHA
C - - - - - 0x01761A 05:B60A: 20 CE E6  JSR sub_0x01E6DE
C - - - - - 0x01761D 05:B60D: A5 EB     LDA ram_map_location
C - - - - - 0x01761F 05:B60F: 48        PHA
C - - - - - 0x017620 05:B610: A5 5D     LDA ram_005D
C - - - - - 0x017622 05:B612: 85 EB     STA ram_map_location
C - - - - - 0x017624 05:B614: A9 13     LDA #$13
C - - - - - 0x017626 05:B616: 8D 3F 03  STA ram_033F
C - - - - - 0x017629 05:B619: A4 EB     LDY ram_map_location
C - - - - - 0x01762B 05:B61B: B1 00     LDA (ram_0000),Y
C - - - - - 0x01762D 05:B61D: 29 20     AND #$20
C - - - - - 0x01762F 05:B61F: F0 11     BEQ bra_B632
C - - - - - 0x017631 05:B621: A9 08     LDA #$08
C - - - - - 0x017633 05:B623: 85 02     STA ram_0002
C - - - - - 0x017635 05:B625: A2 03     LDX #$03
bra_B627:
C - - - - - 0x017637 05:B627: 20 F6 A3  JSR sub_A3F6
C - - - - - 0x01763A 05:B62A: 20 41 B6  JSR sub_B641
C - - - - - 0x01763D 05:B62D: CA        DEX
C - - - - - 0x01763E 05:B62E: 46 02     LSR ram_0002
C - - - - - 0x017640 05:B630: D0 F5     BNE bra_B627
bra_B632:
C - - - - - 0x017642 05:B632: 68        PLA
C - - - - - 0x017643 05:B633: 85 EB     STA ram_map_location
C - - - - - 0x017645 05:B635: 68        PLA
C - - - - - 0x017646 05:B636: A8        TAY
C - - - - - 0x017647 05:B637: AD 3F 03  LDA ram_033F
C - - - - - 0x01764A 05:B63A: 18        CLC
C - - - - - 0x01764B 05:B63B: 69 E2     ADC #$E2
C - - - - - 0x01764D 05:B63D: 99 04 03  STA ram_0304,Y
C - - - - - 0x017650 05:B640: 60        RTS



sub_B641:
C - - - - - 0x017651 05:B641: A0 00     LDY #$00
C - - - - - 0x017653 05:B643: 48        PHA
C - - - - - 0x017654 05:B644: C9 04     CMP #$04
C - - - - - 0x017656 05:B646: 90 1D     BCC bra_B665
C - - - - - 0x017658 05:B648: 8A        TXA
C - - - - - 0x017659 05:B649: 48        PHA
C - - - - - 0x01765A 05:B64A: 98        TYA
C - - - - - 0x01765B 05:B64B: 48        PHA
C - - - - - 0x01765C 05:B64C: 20 CE E6  JSR sub_0x01E6DE
C - - - - - 0x01765F 05:B64F: 18        CLC
C - - - - - 0x017660 05:B650: 3D BE E6  AND tbl_0x01E6CE,X
C - - - - - 0x017663 05:B653: F0 01     BEQ bra_B656
C - - - - - 0x017665 05:B655: 38        SEC
bra_B656:
C - - - - - 0x017666 05:B656: 68        PLA
C - - - - - 0x017667 05:B657: A8        TAY
C - - - - - 0x017668 05:B658: 68        PLA
C - - - - - 0x017669 05:B659: AA        TAX
bra_B65A:
C - - - - - 0x01766A 05:B65A: B9 3F 03  LDA ram_033F,Y
C - - - - - 0x01766D 05:B65D: 2A        ROL
C - - - - - 0x01766E 05:B65E: 29 0F     AND #$0F
C - - - - - 0x017670 05:B660: 99 3F 03  STA ram_033F,Y
C - - - - - 0x017673 05:B663: 68        PLA
C - - - - - 0x017674 05:B664: 60        RTS
bra_B665:
C - - - - - 0x017675 05:B665: C9 00     CMP #$00
C - - - - - 0x017677 05:B667: F0 F1     BEQ bra_B65A
C - - - - - 0x017679 05:B669: 18        CLC
C - - - - - 0x01767A 05:B66A: 90 EE     BCC bra_B65A



sub_B66C:
C - - - - - 0x01767C 05:B66C: 20 CE E6  JSR sub_0x01E6DE
C - - - - - 0x01767F 05:B66F: A2 03     LDX #$03
bra_B671:
C - - - - - 0x017681 05:B671: B1 00     LDA (ram_0000),Y
C - - - - - 0x017683 05:B673: 3D BE E6  AND tbl_0x01E6CE,X
C - - - - - 0x017686 05:B676: F0 04     BEQ bra_B67C
C - - - - - 0x017688 05:B678: 05 EE     ORA ram_00EE
C - - - - - 0x01768A 05:B67A: 85 EE     STA ram_00EE
bra_B67C:
C - - - - - 0x01768C 05:B67C: CA        DEX
C - - - - - 0x01768D 05:B67D: 10 F2     BPL bra_B671
C - - - - - 0x01768F 05:B67F: 60        RTS


; bzk garbage
- - - - - - 0x017690 05:B680: A5 EB     LDA ram_map_location
- - - - - - 0x017692 05:B682: 48        PHA
- - - - - - 0x017693 05:B683: 29 0F     AND #$0F
- - - - - - 0x017695 05:B685: A8        TAY
- - - - - - 0x017696 05:B686: 68        PLA
- - - - - - 0x017697 05:B687: 4A        LSR
- - - - - - 0x017698 05:B688: 4A        LSR
- - - - - - 0x017699 05:B689: 4A        LSR
- - - - - - 0x01769A 05:B68A: 4A        LSR
- - - - - - 0x01769B 05:B68B: AA        TAX
- - - - - - 0x01769C 05:B68C: 60        RTS



sub_B68D:
C - - - - - 0x01769D 05:B68D: A5 10     LDA ram_0010
C - - - - - 0x01769F 05:B68F: F0 05     BEQ bra_B696_RTS
C - - - - - 0x0176A1 05:B691: B9 7E 6A  LDA ram_6A7E,Y
C - - - - - 0x0176A4 05:B694: 29 80     AND #$80
bra_B696_RTS:
C - - - - - 0x0176A6 05:B696: 60        RTS



tbl_B697:
- - - - - - 0x0176A7 05:B697: 80        .byte $80   ; 00
- D 1 - - - 0x0176A8 05:B698: 98        .byte $98   ; 01
- D 1 - - - 0x0176A9 05:B699: AC        .byte $AC   ; 02
- D 1 - - - 0x0176AA 05:B69A: B4        .byte $B4   ; 03
- D 1 - - - 0x0176AB 05:B69B: C8        .byte $C8   ; 04
- D 1 - - - 0x0176AC 05:B69C: 80        .byte $80   ; 05
- D 1 - - - 0x0176AD 05:B69D: 98        .byte $98   ; 06
- D 1 - - - 0x0176AE 05:B69E: B0        .byte $B0   ; 07
- D 1 - - - 0x0176AF 05:B69F: C8        .byte $C8   ; 08
- D 1 - - - 0x0176B0 05:B6A0: 80        .byte $80   ; 09
- D 1 - - - 0x0176B1 05:B6A1: 94        .byte $94   ; 0A
- D 1 - - - 0x0176B2 05:B6A2: A0        .byte $A0   ; 0B
- D 1 - - - 0x0176B3 05:B6A3: B0        .byte $B0   ; 0C
- D 1 - - - 0x0176B4 05:B6A4: C0        .byte $C0   ; 0D
- D 1 - - - 0x0176B5 05:B6A5: CC        .byte $CC   ; 0E
- D 1 - - - 0x0176B6 05:B6A6: B0        .byte $B0   ; 0F



sub_B6A7:
C D 1 - - - 0x0176B7 05:B6A7: A2 1E     LDX #$1E
bra_B6A9:
C - - - - - 0x0176B9 05:B6A9: BD 57 06  LDA ram_0657,X
C - - - - - 0x0176BC 05:B6AC: D0 07     BNE bra_B6B5
C - - - - - 0x0176BE 05:B6AE: CA        DEX
C - - - - - 0x0176BF 05:B6AF: E0 1C     CPX #$1C
C - - - - - 0x0176C1 05:B6B1: D0 F6     BNE bra_B6A9
C - - - - - 0x0176C3 05:B6B3: F0 0D     BEQ bra_B6C2
bra_B6B5:
C - - - - - 0x0176C5 05:B6B5: A9 36     LDA #$36
C - - - - - 0x0176C7 05:B6B7: 85 01     STA ram_0001
C - - - - - 0x0176C9 05:B6B9: A9 80     LDA #$80
C - - - - - 0x0176CB 05:B6BB: 85 00     STA ram_0000
C - - - - - 0x0176CD 05:B6BD: 8A        TXA
C - - - - - 0x0176CE 05:B6BE: A8        TAY
C - - - - - 0x0176CF 05:B6BF: 20 35 E7  JSR sub_0x01E745
bra_B6C2:
C - - - - - 0x0176D2 05:B6C2: A2 01     LDX #$01
bra_B6C4_loop:
C - - - - - 0x0176D4 05:B6C4: BD 57 06  LDA ram_0657,X
C - - - - - 0x0176D7 05:B6C7: E0 10     CPX #$10
C - - - - - 0x0176D9 05:B6C9: D0 05     BNE bra_B6D0
C - - - - - 0x0176DB 05:B6CB: 20 EB B5  JSR sub_B5EB
C - - - - - 0x0176DE 05:B6CE: A2 10     LDX #$10
bra_B6D0:
C - - - - - 0x0176E0 05:B6D0: E0 11     CPX #$11
C - - - - - 0x0176E2 05:B6D2: D0 05     BNE bra_B6D9
C - - - - - 0x0176E4 05:B6D4: 20 EF B5  JSR sub_B5EF
C - - - - - 0x0176E7 05:B6D7: A2 11     LDX #$11
bra_B6D9:
C - - - - - 0x0176E9 05:B6D9: C9 00     CMP #$00
C - - - - - 0x0176EB 05:B6DB: F0 3A     BEQ bra_B717
C - - - - - 0x0176ED 05:B6DD: E0 0F     CPX #$0F
C - - - - - 0x0176EF 05:B6DF: D0 05     BNE bra_B6E6
C - - - - - 0x0176F1 05:B6E1: AD 5E 06  LDA ram_065E
C - - - - - 0x0176F4 05:B6E4: D0 31     BNE bra_B717
bra_B6E6:
C - - - - - 0x0176F6 05:B6E6: 8A        TXA
C - - - - - 0x0176F7 05:B6E7: 48        PHA
C - - - - - 0x0176F8 05:B6E8: A8        TAY
C - - - - - 0x0176F9 05:B6E9: BD 97 B6  LDA tbl_B697,X
C - - - - - 0x0176FC 05:B6EC: 85 00     STA ram_0000
C - - - - - 0x0176FE 05:B6EE: A9 36     LDA #$36
C - - - - - 0x017700 05:B6F0: E0 05     CPX #$05
C - - - - - 0x017702 05:B6F2: 90 1C     BCC bra_B710
C - - - - - 0x017704 05:B6F4: A9 46     LDA #$46
C - - - - - 0x017706 05:B6F6: E0 0F     CPX #$0F
C - - - - - 0x017708 05:B6F8: F0 16     BEQ bra_B710
C - - - - - 0x01770A 05:B6FA: E0 09     CPX #$09
C - - - - - 0x01770C 05:B6FC: 90 12     BCC bra_B710
C - - - - - 0x01770E 05:B6FE: A9 1E     LDA #$1E
C - - - - - 0x017710 05:B700: E0 10     CPX #$10
C - - - - - 0x017712 05:B702: 90 0C     BCC bra_B710
C - - - - - 0x017714 05:B704: A9 2C     LDA #$2C
C - - - - - 0x017716 05:B706: 85 00     STA ram_0000
C - - - - - 0x017718 05:B708: A9 9E     LDA #$9E
C - - - - - 0x01771A 05:B70A: E0 11     CPX #$11
C - - - - - 0x01771C 05:B70C: 90 02     BCC bra_B710
C - - - - - 0x01771E 05:B70E: A9 76     LDA #$76
bra_B710:
C - - - - - 0x017720 05:B710: 85 01     STA ram_0001
C - - - - - 0x017722 05:B712: 20 1C B8  JSR sub_B81C
C - - - - - 0x017725 05:B715: 68        PLA
C - - - - - 0x017726 05:B716: AA        TAX
bra_B717:
C - - - - - 0x017727 05:B717: E8        INX
C - - - - - 0x017728 05:B718: E0 12     CPX #$12
C - - - - - 0x01772A 05:B71A: 90 A8     BCC bra_B6C4_loop
C - - - - - 0x01772C 05:B71C: 60        RTS



tbl_B71D_spr_X:
- D 1 - - - 0x01772D 05:B71D: 80        .byte $80   ; 
- D 1 - - - 0x01772E 05:B71E: 98        .byte $98   ; 
- D 1 - - - 0x01772F 05:B71F: B0        .byte $B0   ; 
- - - - - - 0x017730 05:B720: B0        .byte $B0   ; 
- D 1 - - - 0x017731 05:B721: C8        .byte $C8   ; 
- D 1 - - - 0x017732 05:B722: 80        .byte $80   ; 
- D 1 - - - 0x017733 05:B723: 98        .byte $98   ; 
- D 1 - - - 0x017734 05:B724: B0        .byte $B0   ; 
- D 1 - - - 0x017735 05:B725: C8        .byte $C8   ; 



sub_B726:
C - - - - - 0x017736 05:B726: AE 56 06  LDX ram_0656
C - - - - - 0x017739 05:B729: D0 0E     BNE bra_B739
C - - - - - 0x01773B 05:B72B: A2 1E     LDX #$1E
bra_B72D:
C - - - - - 0x01773D 05:B72D: BD 57 06  LDA ram_0657,X
C - - - - - 0x017740 05:B730: D0 07     BNE bra_B739
C - - - - - 0x017742 05:B732: CA        DEX
C - - - - - 0x017743 05:B733: E0 1C     CPX #$1C
C - - - - - 0x017745 05:B735: D0 F6     BNE bra_B72D
C - - - - - 0x017747 05:B737: F0 1D     BEQ bra_B756
bra_B739:
C - - - - - 0x017749 05:B739: BD 57 06  LDA ram_0657,X
C - - - - - 0x01774C 05:B73C: F0 18     BEQ bra_B756
C - - - - - 0x01774E 05:B73E: E0 0F     CPX #$0F
C - - - - - 0x017750 05:B740: D0 07     BNE bra_B749
C - - - - - 0x017752 05:B742: AD 5E 06  LDA ram_065E
C - - - - - 0x017755 05:B745: D0 0F     BNE bra_B756
C - - - - - 0x017757 05:B747: A9 01     LDA #$01
bra_B749:
C - - - - - 0x017759 05:B749: 85 04     STA ram_0004
C - - - - - 0x01775B 05:B74B: A9 36     LDA #$36
C - - - - - 0x01775D 05:B74D: 85 01     STA ram_0001
C - - - - - 0x01775F 05:B74F: A9 40     LDA #$40
C - - - - - 0x017761 05:B751: 85 00     STA ram_0000
C - - - - - 0x017763 05:B753: 20 1C B8  JSR sub_B81C
bra_B756:
C - - - - - 0x017766 05:B756: AC 56 06  LDY ram_0656
C - - - - - 0x017769 05:B759: C0 0F     CPY #$0F
C - - - - - 0x01776B 05:B75B: D0 0A     BNE bra_B767
C - - - - - 0x01776D 05:B75D: A0 07     LDY #$07
C - - - - - 0x01776F 05:B75F: B9 57 06  LDA ram_0657,Y
C - - - - - 0x017772 05:B762: F0 03     BEQ bra_B767
- - - - - - 0x017774 05:B764: 8C 56 06  STY ram_0656
bra_B767:
C - - - - - 0x017777 05:B767: B9 1D B7  LDA tbl_B71D_spr_X,Y
C - - - - - 0x01777A 05:B76A: 8D 1F 02  STA ram_spr_X + $1C
C - - - - - 0x01777D 05:B76D: 18        CLC
C - - - - - 0x01777E 05:B76E: 69 08     ADC #$08
C - - - - - 0x017780 05:B770: 8D 23 02  STA ram_spr_X + $20
C - - - - - 0x017783 05:B773: A9 36     LDA #$36
C - - - - - 0x017785 05:B775: C0 05     CPY #$05
C - - - - - 0x017787 05:B777: 90 02     BCC bra_B77B
C - - - - - 0x017789 05:B779: A9 46     LDA #$46
bra_B77B:
C - - - - - 0x01778B 05:B77B: 8D 1C 02  STA ram_spr_Y + $1C
C - - - - - 0x01778E 05:B77E: 8D 20 02  STA ram_spr_Y + $20
C - - - - - 0x017791 05:B781: A9 1E     LDA #$1E
C - - - - - 0x017793 05:B783: 8D 1D 02  STA ram_spr_T + $1C
C - - - - - 0x017796 05:B786: 8D 21 02  STA ram_spr_T + $20
C - - - - - 0x017799 05:B789: A5 15     LDA ram_frame_cnt
C - - - - - 0x01779B 05:B78B: 29 08     AND #$08
C - - - - - 0x01779D 05:B78D: 4A        LSR
C - - - - - 0x01779E 05:B78E: 4A        LSR
C - - - - - 0x01779F 05:B78F: 4A        LSR
C - - - - - 0x0177A0 05:B790: 69 01     ADC #$01
C - - - - - 0x0177A2 05:B792: 8D 1E 02  STA ram_spr_A + $1C
C - - - - - 0x0177A5 05:B795: 09 40     ORA #$40
C - - - - - 0x0177A7 05:B797: 8D 22 02  STA ram_spr_A + $20
C - - - - - 0x0177AA 05:B79A: AD F8 03  LDA ram_03F8
C - - - - - 0x0177AD 05:B79D: C5 EF     CMP ram_00EF
C - - - - - 0x0177AF 05:B79F: F0 50     BEQ bra_B7F1_RTS
C - - - - - 0x0177B1 05:B7A1: AA        TAX
C - - - - - 0x0177B2 05:B7A2: F0 24     BEQ bra_B7C8
C - - - - - 0x0177B4 05:B7A4: E0 04     CPX #$04
C - - - - - 0x0177B6 05:B7A6: B0 20     BCS bra_B7C8
C - - - - - 0x0177B8 05:B7A8: A2 01     LDX #con_sfx_2_cursor_select
C - - - - - 0x0177BA 05:B7AA: 8E 02 06  STX ram_sfx_2
C - - - - - 0x0177BD 05:B7AD: AA        TAX
C - - - - - 0x0177BE 05:B7AE: AD 56 06  LDA ram_0656
C - - - - - 0x0177C1 05:B7B1: 48        PHA
C - - - - - 0x0177C2 05:B7B2: 8A        TXA
C - - - - - 0x0177C3 05:B7B3: 20 C8 B7  JSR sub_B7C8
C - - - - - 0x0177C6 05:B7B6: 68        PLA
C - - - - - 0x0177C7 05:B7B7: CD 56 06  CMP ram_0656
C - - - - - 0x0177CA 05:B7BA: F0 08     BEQ bra_B7C4
C - - - - - 0x0177CC 05:B7BC: AC 56 06  LDY ram_0656
C - - - - - 0x0177CF 05:B7BF: B9 57 06  LDA ram_0657,Y
C - - - - - 0x0177D2 05:B7C2: D0 03     BNE bra_B7C7_RTS
bra_B7C4:
C - - - - - 0x0177D4 05:B7C4: 4E 02 06  LSR ram_sfx_2   ; con_sfx_2_00 ???
bra_B7C7_RTS:
C - - - - - 0x0177D7 05:B7C7: 60        RTS
bra_B7C8:
sub_B7C8:
sub_0x0177D8:   ; A = 02
C - - - - - 0x0177D8 05:B7C8: 85 EF     STA ram_00EF
C - - - - - 0x0177DA 05:B7CA: A2 09     LDX #$09
bra_B7CC_loop:
C - - - - - 0x0177DC 05:B7CC: 20 21 B8  JSR sub_B821
C - - - - - 0x0177DF 05:B7CF: C0 00     CPY #$00
C - - - - - 0x0177E1 05:B7D1: F0 1F     BEQ bra_B7F2
C - - - - - 0x0177E3 05:B7D3: C0 03     CPY #$03
C - - - - - 0x0177E5 05:B7D5: F0 09     BEQ bra_B7E0
C - - - - - 0x0177E7 05:B7D7: B9 57 06  LDA ram_0657,Y
C - - - - - 0x0177EA 05:B7DA: D0 09     BNE bra_B7E5
C - - - - - 0x0177EC 05:B7DC: C0 07     CPY #$07
C - - - - - 0x0177EE 05:B7DE: F0 28     BEQ bra_B808
bra_B7E0:
loc_B7E0:
C D 1 - - - 0x0177F0 05:B7E0: CA        DEX
C - - - - - 0x0177F1 05:B7E1: 10 E9     BPL bra_B7CC_loop
C - - - - - 0x0177F3 05:B7E3: A0 00     LDY #$00
bra_B7E5:
loc_B7E5:
C D 1 - - - 0x0177F5 05:B7E5: C0 02     CPY #$02
C - - - - - 0x0177F7 05:B7E7: D0 05     BNE bra_B7EE
C - - - - - 0x0177F9 05:B7E9: AD 5A 06  LDA ram_065A
C - - - - - 0x0177FC 05:B7EC: F0 DE     BEQ bra_B7CC_loop
bra_B7EE:
C - - - - - 0x0177FE 05:B7EE: 8C 56 06  STY ram_0656
bra_B7F1_RTS:
C - - - - - 0x017801 05:B7F1: 60        RTS
bra_B7F2:
C - - - - - 0x017802 05:B7F2: A0 1E     LDY #$1E
bra_B7F4:
C - - - - - 0x017804 05:B7F4: B9 57 06  LDA ram_0657,Y
C - - - - - 0x017807 05:B7F7: D0 0A     BNE bra_B803
C - - - - - 0x017809 05:B7F9: 88        DEY
C - - - - - 0x01780A 05:B7FA: C0 1C     CPY #$1C
C - - - - - 0x01780C 05:B7FC: D0 F6     BNE bra_B7F4
C - - - - - 0x01780E 05:B7FE: A0 00     LDY #$00
C - - - - - 0x017810 05:B800: 4C E0 B7  JMP loc_B7E0
bra_B803:
C - - - - - 0x017813 05:B803: A0 00     LDY #$00
C - - - - - 0x017815 05:B805: 4C E5 B7  JMP loc_B7E5
bra_B808:
C - - - - - 0x017818 05:B808: A0 0F     LDY #$0F
C - - - - - 0x01781A 05:B80A: B9 57 06  LDA ram_0657,Y
C - - - - - 0x01781D 05:B80D: D0 04     BNE bra_B813
C - - - - - 0x01781F 05:B80F: A0 07     LDY #$07
C - - - - - 0x017821 05:B811: D0 CD     BNE bra_B7E0
bra_B813:
C - - - - - 0x017823 05:B813: AD 5E 06  LDA ram_065E
C - - - - - 0x017826 05:B816: F0 D6     BEQ bra_B7EE
- - - - - - 0x017828 05:B818: A0 07     LDY #$07
- - - - - - 0x01782A 05:B81A: D0 D2     BNE bra_B7EE



sub_B81C:
sub_0x01782C:   ; bzk optimize, delete exports, too many cycles to swap bank and go here for a couple of instructions
loc_0x01782C:
C D 1 - - - 0x01782C 05:B81C: 8A        TXA
C - - - - - 0x01782D 05:B81D: A8        TAY
C - - - - - 0x01782E 05:B81E: 4C 35 E7  JMP loc_0x01E745



sub_B821:
C - - - - - 0x017831 05:B821: A5 EF     LDA ram_00EF
C - - - - - 0x017833 05:B823: 29 03     AND #$03
C - - - - - 0x017835 05:B825: F0 12     BEQ bra_B839_RTS
C - - - - - 0x017837 05:B827: C8        INY
C - - - - - 0x017838 05:B828: 4A        LSR
C - - - - - 0x017839 05:B829: B0 02     BCS bra_B82D
C - - - - - 0x01783B 05:B82B: 88        DEY
C - - - - - 0x01783C 05:B82C: 88        DEY
bra_B82D:
C - - - - - 0x01783D 05:B82D: C0 FF     CPY #$FF
C - - - - - 0x01783F 05:B82F: D0 02     BNE bra_B833
C - - - - - 0x017841 05:B831: A0 08     LDY #$08
bra_B833:
C - - - - - 0x017843 05:B833: C0 09     CPY #$09
C - - - - - 0x017845 05:B835: D0 02     BNE bra_B839_RTS
C - - - - - 0x017847 05:B837: A0 00     LDY #$00
bra_B839_RTS:
C - - - - - 0x017849 05:B839: 60        RTS



sub_0x01784A:
C - - - - - 0x01784A 05:B83A: A9 00     LDA #$00
C - - - - - 0x01784C 05:B83C: 85 BF     STA ram_00BF
C - - - - - 0x01784E 05:B83E: A5 10     LDA ram_0010
C - - - - - 0x017850 05:B840: F0 47     BEQ bra_B889
C - - - - - 0x017852 05:B842: 20 14 73  JSR sub_bat_7314
C - - - - - 0x017855 05:B845: D0 1C     BNE bra_B863
C - - - - - 0x017857 05:B847: A4 EB     LDY ram_map_location
C - - - - - 0x017859 05:B849: B9 7E 6A  LDA ram_6A7E,Y
C - - - - - 0x01785C 05:B84C: 29 1F     AND #$1F
C - - - - - 0x01785E 05:B84E: C9 03     CMP #$03
C - - - - - 0x017860 05:B850: D0 02     BNE bra_B854
C - - - - - 0x017862 05:B852: C6 BF     DEC ram_00BF
bra_B854:
C - - - - - 0x017864 05:B854: 85 AB     STA ram_00AB
C - - - - - 0x017866 05:B856: B9 FE 6A  LDA ram_6AFE,Y
C - - - - - 0x017869 05:B859: 29 07     AND #$07
C - - - - - 0x01786B 05:B85B: C9 03     CMP #$03
C - - - - - 0x01786D 05:B85D: F0 04     BEQ bra_B863
C - - - - - 0x01786F 05:B85F: C9 07     CMP #$07
C - - - - - 0x017871 05:B861: D0 02     BNE bra_B865
bra_B863:
C - - - - - 0x017873 05:B863: C6 BF     DEC ram_00BF
bra_B865:
C - - - - - 0x017875 05:B865: B9 FE 69  LDA ram_69FE,Y
C - - - - - 0x017878 05:B868: 29 40     AND #$40
C - - - - - 0x01787A 05:B86A: F0 03     BEQ bra_B86F
C - - - - - 0x01787C 05:B86C: 20 F1 A7  JSR sub_A7F1
bra_B86F:
C - - - - - 0x01787F 05:B86F: 20 8A 71  JSR sub_bat_718A
bra_B872:
C - - - - - 0x017882 05:B872: 85 83     STA ram_0083
C - - - - - 0x017884 05:B874: 84 97     STY ram_0097
C - - - - - 0x017886 05:B876: A4 EB     LDY ram_map_location
C - - - - - 0x017888 05:B878: B9 7E 6A  LDA ram_6A7E,Y
C - - - - - 0x01788B 05:B87B: 29 1F     AND #$1F
C - - - - - 0x01788D 05:B87D: C9 1B     CMP #$1B
C - - - - - 0x01788F 05:B87F: D0 07     BNE bra_B888_RTS
C - - - - - 0x017891 05:B881: A5 83     LDA ram_0083
C - - - - - 0x017893 05:B883: 38        SEC
C - - - - - 0x017894 05:B884: E9 08     SBC #$08
C - - - - - 0x017896 05:B886: 85 83     STA ram_0083
bra_B888_RTS:
C - - - - - 0x017898 05:B888: 60        RTS
bra_B889:
C - - - - - 0x017899 05:B889: A9 1A     LDA #$1A
C - - - - - 0x01789B 05:B88B: 85 AB     STA ram_00AB
C - - - - - 0x01789D 05:B88D: A9 C0     LDA #$C0
C - - - - - 0x01789F 05:B88F: A0 90     LDY #$90
C - - - - - 0x0178A1 05:B891: A6 12     LDX ram_game_mode_main
C - - - - - 0x0178A3 05:B893: E0 05     CPX #con_GM_05
C - - - - - 0x0178A5 05:B895: D0 06     BNE bra_B89D
C - - - - - 0x0178A7 05:B897: A6 EB     LDX ram_map_location
C - - - - - 0x0178A9 05:B899: E0 5F     CPX #$5F
C - - - - - 0x0178AB 05:B89B: F0 D5     BEQ bra_B872
bra_B89D:
C - - - - - 0x0178AD 05:B89D: C6 BF     DEC ram_00BF
C - - - - - 0x0178AF 05:B89F: 60        RTS


; bzk garbage
- - - - - - 0x0178B0 05:B8A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0178B8 05:B8A8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0178C0 05:B8B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0178C8 05:B8B8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0178D0 05:B8C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0178D8 05:B8C8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0178E0 05:B8D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0178E8 05:B8D8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0178F0 05:B8E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0178F8 05:B8E8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017900 05:B8F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017908 05:B8F8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017910 05:B900: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017918 05:B908: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017920 05:B910: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017928 05:B918: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017930 05:B920: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017938 05:B928: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017940 05:B930: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017948 05:B938: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017950 05:B940: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017958 05:B948: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017960 05:B950: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017968 05:B958: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017970 05:B960: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017978 05:B968: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017980 05:B970: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017988 05:B978: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017990 05:B980: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017998 05:B988: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0179A0 05:B990: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0179A8 05:B998: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0179B0 05:B9A0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0179B8 05:B9A8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0179C0 05:B9B0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0179C8 05:B9B8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0179D0 05:B9C0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0179D8 05:B9C8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0179E0 05:B9D0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0179E8 05:B9D8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0179F0 05:B9E0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x0179F8 05:B9E8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A00 05:B9F0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A08 05:B9F8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A10 05:BA00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A18 05:BA08: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A20 05:BA10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A28 05:BA18: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A30 05:BA20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A38 05:BA28: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A40 05:BA30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A48 05:BA38: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A50 05:BA40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A58 05:BA48: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A60 05:BA50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A68 05:BA58: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A70 05:BA60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A78 05:BA68: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A80 05:BA70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A88 05:BA78: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A90 05:BA80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017A98 05:BA88: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017AA0 05:BA90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017AA8 05:BA98: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017AB0 05:BAA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017AB8 05:BAA8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017AC0 05:BAB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017AC8 05:BAB8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017AD0 05:BAC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017AD8 05:BAC8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017AE0 05:BAD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017AE8 05:BAD8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017AF0 05:BAE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017AF8 05:BAE8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B00 05:BAF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B08 05:BAF8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B10 05:BB00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B18 05:BB08: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B20 05:BB10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B28 05:BB18: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B30 05:BB20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B38 05:BB28: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B40 05:BB30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B48 05:BB38: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B50 05:BB40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B58 05:BB48: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B60 05:BB50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B68 05:BB58: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B70 05:BB60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B78 05:BB68: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B80 05:BB70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B88 05:BB78: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B90 05:BB80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017B98 05:BB88: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017BA0 05:BB90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017BA8 05:BB98: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017BB0 05:BBA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017BB8 05:BBA8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017BC0 05:BBB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017BC8 05:BBB8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017BD0 05:BBC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017BD8 05:BBC8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017BE0 05:BBD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017BE8 05:BBD8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017BF0 05:BBE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017BF8 05:BBE8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C00 05:BBF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C08 05:BBF8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C10 05:BC00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C18 05:BC08: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C20 05:BC10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C28 05:BC18: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C30 05:BC20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C38 05:BC28: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C40 05:BC30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C48 05:BC38: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C50 05:BC40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C58 05:BC48: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C60 05:BC50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C68 05:BC58: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C70 05:BC60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C78 05:BC68: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C80 05:BC70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C88 05:BC78: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C90 05:BC80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017C98 05:BC88: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017CA0 05:BC90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017CA8 05:BC98: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017CB0 05:BCA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017CB8 05:BCA8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017CC0 05:BCB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017CC8 05:BCB8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017CD0 05:BCC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017CD8 05:BCC8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017CE0 05:BCD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017CE8 05:BCD8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017CF0 05:BCE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017CF8 05:BCE8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D00 05:BCF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D08 05:BCF8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D10 05:BD00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D18 05:BD08: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D20 05:BD10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D28 05:BD18: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D30 05:BD20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D38 05:BD28: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D40 05:BD30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D48 05:BD38: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D50 05:BD40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D58 05:BD48: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D60 05:BD50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D68 05:BD58: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D70 05:BD60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D78 05:BD68: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D80 05:BD70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D88 05:BD78: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D90 05:BD80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017D98 05:BD88: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DA0 05:BD90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DA8 05:BD98: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DB0 05:BDA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DB8 05:BDA8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DC0 05:BDB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DC8 05:BDB8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DD0 05:BDC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DD8 05:BDC8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DE0 05:BDD0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DE8 05:BDD8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DF0 05:BDE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017DF8 05:BDE8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E00 05:BDF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E08 05:BDF8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E10 05:BE00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E18 05:BE08: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E20 05:BE10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E28 05:BE18: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E30 05:BE20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E38 05:BE28: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E40 05:BE30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E48 05:BE38: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E50 05:BE40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E58 05:BE48: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E60 05:BE50: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E68 05:BE58: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E70 05:BE60: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E78 05:BE68: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E80 05:BE70: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E88 05:BE78: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E90 05:BE80: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017E98 05:BE88: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017EA0 05:BE90: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017EA8 05:BE98: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017EB0 05:BEA0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017EB8 05:BEA8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017EC0 05:BEB0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017EC8 05:BEB8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017ED0 05:BEC0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017ED8 05:BEC8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017EE0 05:BED0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017EE8 05:BED8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017EF0 05:BEE0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017EF8 05:BEE8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F00 05:BEF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F08 05:BEF8: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F10 05:BF00: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F18 05:BF08: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F20 05:BF10: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F28 05:BF18: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F30 05:BF20: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F38 05:BF28: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F40 05:BF30: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F48 05:BF38: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F50 05:BF40: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 
- - - - - - 0x017F58 05:BF48: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.segment "BANK_05i"
.include "copy_bank___BF50_BFFF.asm"
