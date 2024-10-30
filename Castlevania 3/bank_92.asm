.segment "BANK_92"
.include "copy_bank_ram.inc"
.include "copy_bank_val.inc"
.org $8000  ; for listing file
; 0x024010-0x02800F



.export sub_0x024011
.export ofs_044_0x024241_14
.export ofs_044_0x024618_16
.export ofs_044_0x02465F_02
.export ofs_044_0x024671_12_add_points_to_score
.export ofs_0x02474A_clear_object_data
.export ofs_044_0x02474A_04_clear_object_data
.export ofs_044_0x024776_0C
.export ofs_044_0x0247D5_0E
.export ofs_0x024804
.export ofs_044_0x024804_06
.export ofs_036_0x0248EF_08
.export ofs_044_0x0248F0_08
.export ofs_044_0x024915_0A
.export sub_0x02597D
.export ofs_044_0x02614B_00_generate_random_number
.export ofs_044_0x026510_10
.export sub_0x026BA8
.export ofs_044_0x027572_18



; bzk bank id, must be located at 8000 in each bank
- D 0 - - - 0x024010 09:8000: 92        .byte con_prg_bank + $92   ; 



sub_0x024011:
C - - - - - 0x024011 09:8001: 20 40 82  JSR sub_8240
C - - - - - 0x024014 09:8004: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x024017 09:8007: C0 2D     CPY #$2D
C - - - - - 0x024019 09:8009: F0 04     BEQ bra_800F
C - - - - - 0x02401B 09:800B: C0 10     CPY #$10
C - - - - - 0x02401D 09:800D: B0 0B     BCS bra_801A
bra_800F:
C - - - - - 0x02401F 09:800F: 20 78 84  JSR sub_8478
C - - - - - 0x024022 09:8012: F0 0C     BEQ bra_8020
C - - - - - 0x024024 09:8014: 20 6D 82  JSR sub_826D
C - - - - - 0x024027 09:8017: 90 07     BCC bra_8020
C - - - - - 0x024029 09:8019: 60        RTS
bra_801A:
C - - - - - 0x02402A 09:801A: 20 52 82  JSR sub_8252
C - - - - - 0x02402D 09:801D: 90 01     BCC bra_8020
C - - - - - 0x02402F 09:801F: 60        RTS
bra_8020:
ofs_042_8020_26:    ; bzk unused label
C - - - - - 0x024030 09:8020: 20 4F 83  JSR sub_834F
C - - - - - 0x024033 09:8023: 90 01     BCC bra_8026
C - - - - - 0x024035 09:8025: 60        RTS
bra_8026:
C - - - - - 0x024036 09:8026: AD F3 07  LDA ram_07F3
C - - - - - 0x024039 09:8029: 29 7F     AND #$7F
C - - - - - 0x02403B 09:802B: C9 02     CMP #$02
C - - - - - 0x02403D 09:802D: 90 0C     BCC bra_803B
C - - - - - 0x02403F 09:802F: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x024042 09:8032: C9 16     CMP #$16
C - - - - - 0x024044 09:8034: F0 05     BEQ bra_803B
C - - - - - 0x024046 09:8036: C9 1A     CMP #$1A
C - - - - - 0x024048 09:8038: F0 01     BEQ bra_803B
C - - - - - 0x02404A 09:803A: 60        RTS
bra_803B:
C - - - - - 0x02404B 09:803B: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x02404E 09:803E: C9 10     CMP #$10
C - - - - - 0x024050 09:8040: 90 12     BCC bra_8054
C - - - - - 0x024052 09:8042: C9 2D     CMP #$2D
C - - - - - 0x024054 09:8044: F0 0E     BEQ bra_8054
C - - - - - 0x024056 09:8046: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x024059 09:8049: 30 03     BMI bra_804E
C - - - - - 0x02405B 09:804B: 20 04 E6  JSR sub_0x03E614
bra_804E:
C - - - - - 0x02405E 09:804E: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x024061 09:8051: D0 01     BNE bra_8054
- - - - - - 0x024063 09:8053: 60        RTS
bra_8054:
C - - - - - 0x024064 09:8054: A5 78     LDA ram_0078_flag
C - - - - - 0x024066 09:8056: D0 22     BNE bra_807A
C - - - - - 0x024068 09:8058: 20 BF 84  JSR sub_84BF
C - - - - - 0x02406B 09:805B: B0 1D     BCS bra_807A
C - - - - - 0x02406D 09:805D: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x02406F 09:805F: D0 19     BNE bra_807A
C - - - - - 0x024071 09:8061: A9 01     LDA #$01
C - - - - - 0x024073 09:8063: 85 78     STA ram_0078_flag
C - - - - - 0x024075 09:8065: 20 D6 E2  JSR sub_0x03E2E6_prg_bankswitch_dpcm_1
C - - - - - 0x024078 09:8068: 20 BA FF  JSR sub_0x03FFCA
C - - - - - 0x02407B 09:806B: A9 00     LDA #$00
C - - - - - 0x02407D 09:806D: 85 6E     STA ram_006E_cam_speed
C - - - - - 0x02407F 09:806F: A5 32     LDA ram_blk_hi
C - - - - - 0x024081 09:8071: C9 0E     CMP #$0E
C - - - - - 0x024083 09:8073: F0 05     BEQ bra_807A
C - - - - - 0x024085 09:8075: A9 5F     LDA #con_music_5F
C - - - - - 0x024087 09:8077: 20 5F E2  JSR sub_0x03E26F_play_sound
bra_807A:
C - - - - - 0x02408A 09:807A: AD F3 07  LDA ram_07F3
C - - - - - 0x02408D 09:807D: 29 80     AND #$80
C - - - - - 0x02408F 09:807F: F0 2D     BEQ bra_80AE
C - - - - - 0x024091 09:8081: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x024094 09:8084: C9 26     CMP #$26
C - - - - - 0x024096 09:8086: F0 26     BEQ bra_80AE
C - - - - - 0x024098 09:8088: 0A        ASL
C - - - - - 0x024099 09:8089: A8        TAY
C - - - - - 0x02409A 09:808A: B9 78 81  LDA tbl_8178,Y
C - - - - - 0x02409D 09:808D: 85 00     STA ram_0000_t025_jmp
C - - - - - 0x02409F 09:808F: B9 79 81  LDA tbl_8178 + $01,Y
C - - - - - 0x0240A2 09:8092: 85 01     STA ram_0000_t025_jmp + $01
C - - - - - 0x0240A4 09:8094: 20 3D 81  JSR sub_813D_indirect_jump_here_or_into_another_bank
C - - - - - 0x0240A7 09:8097: A9 00     LDA #$00
C - - - - - 0x0240A9 09:8099: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0240AC 09:809C: AD F3 07  LDA ram_07F3
C - - - - - 0x0240AF 09:809F: 29 BF     AND #$BF
C - - - - - 0x0240B1 09:80A1: D0 22     BNE bra_80C5
C - - - - - 0x0240B3 09:80A3: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x0240B6 09:80A6: 29 EF     AND #con_obj_flag_10 ^ $FF
C - - - - - 0x0240B8 09:80A8: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0240BB 09:80AB: 4C D4 80  JMP loc_80D4
bra_80AE:
C - - - - - 0x0240BE 09:80AE: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x0240C0 09:80B0: F0 01     BEQ bra_80B3
bra_80B2_RTS:
C - - - - - 0x0240C2 09:80B2: 60        RTS
bra_80B3:
C - - - - - 0x0240C3 09:80B3: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0240C6 09:80B6: 0A        ASL
C - - - - - 0x0240C7 09:80B7: A8        TAY
C - - - - - 0x0240C8 09:80B8: B9 D4 81  LDA tbl_81D4,Y
C - - - - - 0x0240CB 09:80BB: 85 00     STA ram_0000_t025_jmp
C - - - - - 0x0240CD 09:80BD: B9 D5 81  LDA tbl_81D4 + $01,Y
C - - - - - 0x0240D0 09:80C0: 85 01     STA ram_0000_t025_jmp + $01
C - - - - - 0x0240D2 09:80C2: 20 3D 81  JSR sub_813D_indirect_jump_here_or_into_another_bank
bra_80C5:
C - - - - - 0x0240D5 09:80C5: AD F3 07  LDA ram_07F3
C - - - - - 0x0240D8 09:80C8: 29 BF     AND #$BF
C - - - - - 0x0240DA 09:80CA: F0 08     BEQ bra_80D4
C - - - - - 0x0240DC 09:80CC: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x0240DF 09:80CF: 09 10     ORA #con_obj_flag_10
C - - - - - 0x0240E1 09:80D1: 9D 70 04  STA ram_obj_flags,X
loc_80D4:
bra_80D4:
C D 0 - - - 0x0240E4 09:80D4: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x0240E7 09:80D7: C0 2D     CPY #$2D
C - - - - - 0x0240E9 09:80D9: F0 04     BEQ bra_80DF
C - - - - - 0x0240EB 09:80DB: C0 10     CPY #$10
C - - - - - 0x0240ED 09:80DD: B0 06     BCS bra_80E5
bra_80DF:
C - - - - - 0x0240EF 09:80DF: 20 52 82  JSR sub_8252
C - - - - - 0x0240F2 09:80E2: 20 37 84  JSR sub_8437
bra_80E5:
C - - - - - 0x0240F5 09:80E5: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x0240F8 09:80E8: 0A        ASL
C - - - - - 0x0240F9 09:80E9: F0 C7     BEQ bra_80B2_RTS
C - - - - - 0x0240FB 09:80EB: A8        TAY
C - - - - - 0x0240FC 09:80EC: B9 EF 89  LDA tbl_89EF,Y
C - - - - - 0x0240FF 09:80EF: 85 04     STA ram_0004_t001_data
C - - - - - 0x024101 09:80F1: B9 F0 89  LDA tbl_89EF + $01,Y
C - - - - - 0x024104 09:80F4: 85 05     STA ram_0004_t001_data + $01
C - - - - - 0x024106 09:80F6: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x024109 09:80F9: 0A        ASL
C - - - - - 0x02410A 09:80FA: A8        TAY
C - - - - - 0x02410B 09:80FB: B1 04     LDA (ram_0004_t001_data),Y
C - - - - - 0x02410D 09:80FD: 85 12     STA ram_0012_t000_config
C - - - - - 0x02410F 09:80FF: C8        INY
C - - - - - 0x024110 09:8100: B1 04     LDA (ram_0004_t001_data),Y
C - - - - - 0x024112 09:8102: A8        TAY
C - - - - - 0x024113 09:8103: 0A        ASL
C - - - - - 0x024114 09:8104: 18        CLC
C - - - - - 0x024115 09:8105: 6D 38 81  ADC tbl_8138
C - - - - - 0x024118 09:8108: 85 00     STA ram_0000_t011_data
C - - - - - 0x02411A 09:810A: AD 39 81  LDA tbl_8138 + $01
C - - - - - 0x02411D 09:810D: 69 00     ADC #$00
C - - - - - 0x02411F 09:810F: 85 01     STA ram_0000_t011_data + $01
C - - - - - 0x024121 09:8111: B1 00     LDA (ram_0000_t011_data),Y
C - - - - - 0x024123 09:8113: 85 13     STA ram_0012_t000_config + $01
C - - - - - 0x024125 09:8115: C8        INY
C - - - - - 0x024126 09:8116: B1 00     LDA (ram_0000_t011_data),Y
C - - - - - 0x024128 09:8118: 85 14     STA ram_0012_t000_config + $02
C - - - - - 0x02412A 09:811A: C8        INY
C - - - - - 0x02412B 09:811B: B1 00     LDA (ram_0000_t011_data),Y
C - - - - - 0x02412D 09:811D: 85 15     STA ram_0012_t000_config + $03
C - - - - - 0x02412F 09:811F: A9 12     LDA #< ram_0012_t000_config
C - - - - - 0x024131 09:8121: 85 02     STA ram_0002_t001_data
C - - - - - 0x024133 09:8123: A9 00     LDA #> ram_0012_t000_config
C - - - - - 0x024135 09:8125: 85 03     STA ram_0002_t001_data + $01
C - - - - - 0x024137 09:8127: A5 12     LDA ram_0012_t000_config
C - - - - - 0x024139 09:8129: 0A        ASL
C - - - - - 0x02413A 09:812A: A8        TAY
C - - - - - 0x02413B 09:812B: B9 71 86  LDA tbl_8671,Y
C - - - - - 0x02413E 09:812E: 85 00     STA ram_0000_t025_jmp
C - - - - - 0x024140 09:8130: B9 72 86  LDA tbl_8671 + $01,Y
C - - - - - 0x024143 09:8133: 85 01     STA ram_0000_t025_jmp + $01
C - - - - - 0x024145 09:8135: 4C 3A 81  JMP loc_813A_indirect_jump



tbl_8138:
; bzk optimize
- D 0 - - - 0x024148 09:8138: A7 90     .word tbl_90A7



loc_813A_indirect_jump:
bra_813A_indirect_jump_in_this_bank:
C D 0 - - - 0x02414A 09:813A: 6C 00 00  JMP (ram_0000_t025_jmp)



sub_813D_indirect_jump_here_or_into_another_bank:
C - - - - - 0x02414D 09:813D: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x024150 09:8140: B9 48 81  LDA tbl_8148_prg_bank,Y
C - - - - - 0x024153 09:8143: F0 F5     BEQ bra_813A_indirect_jump_in_this_bank
C - - - - - 0x024155 09:8145: 4C 2F E6  JMP loc_0x03E63F_indirect_jump_custom_bank



tbl_8148_prg_bank:
- D 0 - - - 0x024158 09:8148: 00        .byte $00   ; 00 
- D 0 - - - 0x024159 09:8149: 00        .byte $00   ; 01 
- D 0 - - - 0x02415A 09:814A: 00        .byte $00   ; 02 
- D 0 - - - 0x02415B 09:814B: 86        .byte con_prg_bank + $86   ; 03 
- D 0 - - - 0x02415C 09:814C: 00        .byte $00   ; 04 
- D 0 - - - 0x02415D 09:814D: 00        .byte $00   ; 05 
- D 0 - - - 0x02415E 09:814E: 00        .byte $00   ; 06 
- D 0 - - - 0x02415F 09:814F: 86        .byte con_prg_bank + $86   ; 07 
- D 0 - - - 0x024160 09:8150: 86        .byte con_prg_bank + $86   ; 08 
- D 0 - - - 0x024161 09:8151: 86        .byte con_prg_bank + $86   ; 09 
- D 0 - - - 0x024162 09:8152: 86        .byte con_prg_bank + $86   ; 0A 
- D 0 - - - 0x024163 09:8153: 98        .byte con_prg_bank + $98   ; 0B 
- D 0 - - - 0x024164 09:8154: 86        .byte con_prg_bank + $86   ; 0C 
- D 0 - - - 0x024165 09:8155: 00        .byte $00   ; 0D 
- D 0 - - - 0x024166 09:8156: 86        .byte con_prg_bank + $86   ; 0E 
- D 0 - - - 0x024167 09:8157: 98        .byte con_prg_bank + $98   ; 0F 
- - - - - - 0x024168 09:8158: 00        .byte $00   ; 10 
- D 0 - - - 0x024169 09:8159: 00        .byte $00   ; 11 
- D 0 - - - 0x02416A 09:815A: 00        .byte $00   ; 12 
- D 0 - - - 0x02416B 09:815B: 00        .byte $00   ; 13 
- D 0 - - - 0x02416C 09:815C: 86        .byte con_prg_bank + $86   ; 14 
- D 0 - - - 0x02416D 09:815D: 86        .byte con_prg_bank + $86   ; 15 
- D 0 - - - 0x02416E 09:815E: 90        .byte con_prg_bank + $90   ; 16 
- D 0 - - - 0x02416F 09:815F: 00        .byte $00   ; 17 
- D 0 - - - 0x024170 09:8160: 86        .byte con_prg_bank + $86   ; 18 
- D 0 - - - 0x024171 09:8161: 86        .byte con_prg_bank + $86   ; 19 
- D 0 - - - 0x024172 09:8162: 00        .byte $00   ; 1A 
- D 0 - - - 0x024173 09:8163: 86        .byte con_prg_bank + $86   ; 1B 
- D 0 - - - 0x024174 09:8164: 86        .byte con_prg_bank + $86   ; 1C 
- D 0 - - - 0x024175 09:8165: 86        .byte con_prg_bank + $86   ; 1D 
- D 0 - - - 0x024176 09:8166: 86        .byte con_prg_bank + $86   ; 1E 
- D 0 - - - 0x024177 09:8167: 00        .byte $00   ; 1F 
- D 0 - - - 0x024178 09:8168: 00        .byte $00   ; 20 
- D 0 - - - 0x024179 09:8169: 00        .byte $00   ; 21 
- D 0 - - - 0x02417A 09:816A: 00        .byte $00   ; 22 
- D 0 - - - 0x02417B 09:816B: 86        .byte con_prg_bank + $86   ; 23 
- D 0 - - - 0x02417C 09:816C: 00        .byte $00   ; 24 
- D 0 - - - 0x02417D 09:816D: 00        .byte $00   ; 25 
- D 0 - - - 0x02417E 09:816E: 00        .byte $00   ; 26 
- D 0 - - - 0x02417F 09:816F: 86        .byte con_prg_bank + $86   ; 27 
- D 0 - - - 0x024180 09:8170: 00        .byte $00   ; 28 
- D 0 - - - 0x024181 09:8171: 00        .byte $00   ; 29 
- - - - - - 0x024182 09:8172: 86        .byte con_prg_bank + $86   ; 2A 
- D 0 - - - 0x024183 09:8173: 86        .byte con_prg_bank + $86   ; 2B 
- D 0 - - - 0x024184 09:8174: 8A        .byte con_prg_bank + $8A   ; 2C 
- D 0 - - - 0x024185 09:8175: 00        .byte $00   ; 2D 


; bzk garbage
- - - - - - 0x024186 09:8176: 00        .byte $00   ; 2E 
- - - - - - 0x024187 09:8177: 00        .byte $00   ; 2F 



tbl_8178:
; prg banks are selected via 0x024158 table
; bzk optimize, replace unused exports with $FFFF, delete labels
- D 0 - - - 0x024188 09:8178: 30 82     .word ofs_042_8230_00_RTS
- D 0 - - - 0x02418A 09:817A: 4F A1     .word ofs_042_A14F_01
- D 0 - - - 0x02418C 09:817C: C9 A4     .word ofs_042_A4C9_02
- D 0 - - - 0x02418E 09:817E: D7 8D     .word ofs_042_0x00CDE7_03
- D 0 - - - 0x024190 09:8180: 31 A9     .word ofs_042_A931_04
- D 0 - - - 0x024192 09:8182: AF AB     .word ofs_042_ABAF_05
- D 0 - - - 0x024194 09:8184: E9 AE     .word ofs_042_AEE9_06
- D 0 - - - 0x024196 09:8186: 1B 93     .word ofs_042_0x00D32B_07
- D 0 - - - 0x024198 09:8188: 04 80     .word ofs_042_0x00C014_08
- D 0 - - - 0x02419A 09:818A: 1A 85     .word ofs_042_0x00C52A_09
- D 0 - - - 0x02419C 09:818C: 0F 95     .word ofs_042_0x00D51F_0A
- D 0 - - - 0x02419E 09:818E: 9B A5     .word ofs_042_0x0325AB_0B
- D 0 - - - 0x0241A0 09:8190: BE 99     .word ofs_042_0x00D9CE_0C
- D 0 - - - 0x0241A2 09:8192: EF B4     .word ofs_042_B4EF_0D
- - - - - - 0x0241A4 09:8194: 20 80     .word ofs_042_0x00C030_0E_RTS
- - - - - - 0x0241A6 09:8196: 30 82     .word $8230   ; 8230
- - - - - - 0x0241A8 09:8198: 30 82     .word ofs_042_8230_10_RTS   ; 8230
- - - - - - 0x0241AA 09:819A: 30 82     .word ofs_042_8230_11_RTS   ; 8230
- D 0 - - - 0x0241AC 09:819C: 30 82     .word ofs_042_8230_12_RTS   ; 8230
- D 0 - - - 0x0241AE 09:819E: 30 82     .word ofs_042_8230_13_RTS   ; 8230
- - - - - - 0x0241B0 09:81A0: 20 80     .word ofs_042_0x00C030_14_RTS
- - - - - - 0x0241B2 09:81A2: 20 80     .word ofs_042_0x00C030_15_RTS
- - - - - - 0x0241B4 09:81A4: 30 82     .word $8230 ; 16 bzk incorrect pointer into bank 90, most likely unused
- - - - - - 0x0241B6 09:81A6: 30 82     .word ofs_042_8230_17_RTS   ; 8230
- - - - - - 0x0241B8 09:81A8: 30 82     .word ofs_042_0x00C240_18   ; 8230
- - - - - - 0x0241BA 09:81AA: 30 82     .word ofs_042_0x00C240_19   ; 8230
- D 0 - - - 0x0241BC 09:81AC: B3 89     .word ofs_042_89B3_1A
- - - - - - 0x0241BE 09:81AE: 30 82     .word ofs_042_0x00C240_1B   ; 8230
- - - - - - 0x0241C0 09:81B0: 30 82     .word ofs_042_0x00C240_1C   ; 8230
- - - - - - 0x0241C2 09:81B2: 20 80     .word ofs_042_0x00C030_1D_RTS
- - - - - - 0x0241C4 09:81B4: 20 80     .word ofs_042_0x00C030_1E_RTS
- - - - - - 0x0241C6 09:81B6: 30 82     .word ofs_042_8230_1F_RTS   ; 8230
- - - - - - 0x0241C8 09:81B8: 30 82     .word ofs_042_8230_20_RTS   ; 8230
- - - - - - 0x0241CA 09:81BA: 30 82     .word ofs_042_8230_21_RTS   ; 8230
- - - - - - 0x0241CC 09:81BC: 30 82     .word ofs_042_8230_22_RTS   ; 8230
- - - - - - 0x0241CE 09:81BE: 20 80     .word ofs_042_0x00C030_23_RTS
- - - - - - 0x0241D0 09:81C0: 30 82     .word ofs_042_8230_24_RTS   ; 8230
- D 0 - - - 0x0241D2 09:81C2: 30 82     .word ofs_042_8230_25_RTS   ; 8230
- - - - - - 0x0241D4 09:81C4: 20 80     .word ofs_042_8020_26   ; unused 0x024096
- - - - - - 0x0241D6 09:81C6: 20 80     .word ofs_042_0x00C030_27_RTS
- D 0 - - - 0x0241D8 09:81C8: 8B 89     .word ofs_042_898B_28
- - - - - - 0x0241DA 09:81CA: B8 BC     .word ofs_042_BCB8_29
- - - - - - 0x0241DC 09:81CC: 20 80     .word ofs_042_0x00C030_2A_RTS
- - - - - - 0x0241DE 09:81CE: F6 9C     .word ofs_042_0x00DD06_2B
- - - - - - 0x0241E0 09:81D0: 75 BC     .word ofs_042_0x017C85_2C
- D 0 - - - 0x0241E2 09:81D2: E9 AE     .word ofs_042_AEE9_2D



tbl_81D4:
; prg banks are selected via 0x024158 table
; bzk optimize, replace unused exports with $FFFF, delete labels
- - - - - - 0x0241E4 09:81D4: 30 82     .word ofs_042_8230_00_RTS
- D 0 - - - 0x0241E6 09:81D6: F5 A1     .word ofs_042_A1F5_01
- D 0 - - - 0x0241E8 09:81D8: DF A5     .word ofs_042_A5DF_02
- D 0 - - - 0x0241EA 09:81DA: 12 8E     .word ofs_042_0x00CE22_03
- D 0 - - - 0x0241EC 09:81DC: 92 A9     .word ofs_042_A992_04
- D 0 - - - 0x0241EE 09:81DE: 3D AC     .word ofs_042_AC3D_05
- D 0 - - - 0x0241F0 09:81E0: 86 AF     .word ofs_042_AF86_06
- D 0 - - - 0x0241F2 09:81E2: 7C 93     .word ofs_042_0x00D38C_07
- D 0 - - - 0x0241F4 09:81E4: 21 80     .word ofs_042_0x00C031_08
- D 0 - - - 0x0241F6 09:81E6: 34 8A     .word ofs_042_0x00CA44_09
- D 0 - - - 0x0241F8 09:81E8: 8F 96     .word ofs_042_0x00D69F_0A
- D 0 - - - 0x0241FA 09:81EA: 10 A6     .word ofs_042_0x032620_0B
- D 0 - - - 0x0241FC 09:81EC: 14 9A     .word ofs_042_0x00DA24_0C
- D 0 - - - 0x0241FE 09:81EE: AC B5     .word ofs_042_B5AC_0D
- D 0 - - - 0x024200 09:81F0: 3F 8A     .word ofs_042_0x00CA4F_0E
- D 0 - - - 0x024202 09:81F2: 64 A4     .word ofs_042_0x032474_0F
- - - - - - 0x024204 09:81F4: 9A A4     .word $A49A ; 10, bzk incorrect pointer into this bank, most likely unused
- D 0 - - - 0x024206 09:81F6: 4B A4     .word ofs_042_A44B_11
- D 0 - - - 0x024208 09:81F8: 03 A8     .word ofs_042_A803_12
- D 0 - - - 0x02420A 09:81FA: 7F A8     .word ofs_042_A87F_13
- D 0 - - - 0x02420C 09:81FC: 75 92     .word ofs_042_0x00D285_14
- D 0 - - - 0x02420E 09:81FE: B9 92     .word ofs_042_0x00D2C9_15
- D 0 - - - 0x024210 09:8200: D9 BE     .word ofs_042_0x023EE9_16
- D 0 - - - 0x024212 09:8202: BB AE     .word ofs_042_AEBB_17
- D 0 - - - 0x024214 09:8204: BB 94     .word ofs_042_0x00D4CB_18
- D 0 - - - 0x024216 09:8206: D4 94     .word ofs_042_0x00D4E4_19
- D 0 - - - 0x024218 09:8208: B3 89     .word ofs_042_89B3_1A
- D 0 - - - 0x02421A 09:820A: 16 84     .word ofs_042_0x00C426_1B_dragon_breathes_fire
- D 0 - - - 0x02421C 09:820C: CA 84     .word ofs_042_0x00C4DA_1C
- D 0 - - - 0x02421E 09:820E: 6A 98     .word ofs_042_0x00D87A_1D
- D 0 - - - 0x024220 09:8210: EA 98     .word ofs_042_0x00D8FA_1E
- D 0 - - - 0x024222 09:8212: 30 A5     .word ofs_042_A530_1F
- D 0 - - - 0x024224 09:8214: 84 A5     .word ofs_042_A584_20
- D 0 - - - 0x024226 09:8216: 01 AC     .word ofs_042_AC01_21
- D 0 - - - 0x024228 09:8218: 93 A1     .word ofs_042_A193_22
- D 0 - - - 0x02422A 09:821A: A2 8D     .word ofs_042_0x00CDB2_23
- D 0 - - - 0x02422C 09:821C: A9 B8     .word ofs_042_B8A9_24
- D 0 - - - 0x02422E 09:821E: 6E B5     .word ofs_042_B56E_25
- D 0 - - - 0x024230 09:8220: 9F B4     .word ofs_042_B49F_26
- D 0 - - - 0x024232 09:8222: 02 8C     .word ofs_042_0x00CC12_27
- D 0 - - - 0x024234 09:8224: 8B 89     .word ofs_042_898B_28
- D 0 - - - 0x024236 09:8226: B8 BC     .word ofs_042_BCB8_29
- - - - - - 0x024238 09:8228: 20 80     .word ofs_042_0x00C030_2A_RTS
- D 0 - - - 0x02423A 09:822A: F6 9C     .word ofs_042_0x00DD06_2B
- D 0 - - - 0x02423C 09:822C: 75 BC     .word ofs_042_0x017C85_2C
- D 0 - - - 0x02423E 09:822E: 46 B0     .word ofs_042_B046_2D



ofs_042_8230_00_RTS:
ofs_042_8230_10_RTS:
ofs_042_8230_11_RTS:
ofs_042_8230_12_RTS:
ofs_042_8230_13_RTS:
ofs_042_8230_17_RTS:
ofs_042_8230_1F_RTS:
ofs_042_8230_20_RTS:
ofs_042_8230_21_RTS:
ofs_042_8230_22_RTS:
ofs_042_8230_24_RTS:
ofs_042_8230_25_RTS:
bra_8230_RTS:
C - - J - - 0x024240 09:8230: 60        RTS



sub_8231:
ofs_044_0x024241_14:
C - - - - - 0x024241 09:8231: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x024244 09:8234: F0 FA     BEQ bra_8230_RTS
C - - - - - 0x024246 09:8236: A9 00     LDA #$00
C - - - - - 0x024248 09:8238: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x02424B 09:823B: A9 28     LDA #con_sound_28
C - - - - - 0x02424D 09:823D: 4C 5F E2  JMP loc_0x03E26F_play_sound



sub_8240:
C - - - - - 0x024250 09:8240: A5 78     LDA ram_0078_flag
C - - - - - 0x024252 09:8242: F0 0D     BEQ bra_8251_RTS
C - - - - - 0x024254 09:8244: A5 AB     LDA ram_stopwatch_flag
C - - - - - 0x024256 09:8246: F0 09     BEQ bra_8251_RTS
C - - - - - 0x024258 09:8248: A4 AC     LDY ram_stopwatch_timer
C - - - - - 0x02425A 09:824A: 88        DEY
C - - - - - 0x02425B 09:824B: F0 04     BEQ bra_8251_RTS
C - - - - - 0x02425D 09:824D: A9 01     LDA #$01
C - - - - - 0x02425F 09:824F: 85 AC     STA ram_stopwatch_timer
bra_8251_RTS:
C - - - - - 0x024261 09:8251: 60        RTS



sub_8252:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x024262 09:8252: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x024265 09:8255: B9 17 83  LDA tbl_8317,Y
C - - - - - 0x024268 09:8258: 85 02     STA ram_0002_temp
C - - - - - 0x02426A 09:825A: F0 6C     BEQ bra_82C8
C - - - - - 0x02426C 09:825C: 20 78 84  JSR sub_8478
C - - - - - 0x02426F 09:825F: D0 0C     BNE bra_826D
C - - - - - 0x024271 09:8261: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x024274 09:8264: 29 0F     AND #$0F
C - - - - - 0x024276 09:8266: C9 02     CMP #$02
C - - - - - 0x024278 09:8268: D0 5E     BNE bra_82C8
C - - - - - 0x02427A 09:826A: 4C C5 83  JMP loc_83C5
bra_826D:
sub_826D:
C - - - - - 0x02427D 09:826D: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x024280 09:8270: 29 F0     AND #$F0
C - - - - - 0x024282 09:8272: D0 56     BNE bra_82CA
loc_8274:
C - - - - - 0x024284 09:8274: DE 90 07  DEC ram_0790,X
C - - - - - 0x024287 09:8277: D0 3C     BNE bra_82B5
loc_8279:
C - - - - - 0x024289 09:8279: BD 54 04  LDA ram_0454_obj,X
C - - - - - 0x02428C 09:827C: 29 F3     AND #$F3
C - - - - - 0x02428E 09:827E: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x024291 09:8281: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x024294 09:8284: C9 23     CMP #$23
C - - - - - 0x024296 09:8286: F0 08     BEQ bra_8290
C - - - - - 0x024298 09:8288: C9 06     CMP #$06
C - - - - - 0x02429A 09:828A: F0 04     BEQ bra_8290
C - - - - - 0x02429C 09:828C: C9 2D     CMP #$2D
C - - - - - 0x02429E 09:828E: D0 04     BNE bra_8294
bra_8290:
- - - - - - 0x0242A0 09:8290: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
- - - - - - 0x0242A2 09:8292: D0 07     BNE bra_829B    ; jmp
bra_8294:
C - - - - - 0x0242A4 09:8294: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x0242A7 09:8297: 29 DF     AND #con_obj_flag_20 ^ $FF
C - - - - - 0x0242A9 09:8299: 09 40     ORA #con_obj_flag_40
bra_829B:
C - - - - - 0x0242AB 09:829B: 9D 70 04  STA ram_obj_flags,X
loc_829E:
C - - - - - 0x0242AE 09:829E: 20 8A 84  JSR sub_848A
C - - - - - 0x0242B1 09:82A1: A4 00     LDY ram_0000_temp
C - - - - - 0x0242B3 09:82A3: A9 FF     LDA #$FF
C - - - - - 0x0242B5 09:82A5: 38        SEC
C - - - - - 0x0242B6 09:82A6: E5 01     SBC ram_0001_temp
C - - - - - 0x0242B8 09:82A8: 39 C4 00  AND ram_00C4,Y
C - - - - - 0x0242BB 09:82AB: 99 C4 00  STA ram_00C4,Y
C - - - - - 0x0242BE 09:82AE: A9 00     LDA #$00
C - - - - - 0x0242C0 09:82B0: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x0242C3 09:82B3: 38        SEC
C - - - - - 0x0242C4 09:82B4: 60        RTS
bra_82B5:
C - - - - - 0x0242C5 09:82B5: BC 90 07  LDY ram_0790,X
C - - - - - 0x0242C8 09:82B8: C0 0E     CPY #$0E
C - - - - - 0x0242CA 09:82BA: D0 0A     BNE bra_82C6
C - - - - - 0x0242CC 09:82BC: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0242CF 09:82BF: C9 06     CMP #$06
C - - - - - 0x0242D1 09:82C1: D0 03     BNE bra_82C6
- - - - - - 0x0242D3 09:82C3: 20 AD 83  JSR sub_83AD
bra_82C6:
C - - - - - 0x0242D6 09:82C6: 38        SEC
C - - - - - 0x0242D7 09:82C7: 60        RTS
bra_82C8:
C - - - - - 0x0242D8 09:82C8: 18        CLC
C - - - - - 0x0242D9 09:82C9: 60        RTS
bra_82CA:
- - - - - - 0x0242DA 09:82CA: BD 4E 05  LDA ram_obj_id,X
- - - - - - 0x0242DD 09:82CD: C9 06     CMP #$06
- - - - - - 0x0242DF 09:82CF: F0 3E     BEQ bra_830F
- - - - - - 0x0242E1 09:82D1: C9 10     CMP #$10
- - - - - - 0x0242E3 09:82D3: 90 1B     BCC bra_82F0
- - - - - - 0x0242E5 09:82D5: C9 2D     CMP #$2D
- - - - - - 0x0242E7 09:82D7: F0 36     BEQ bra_830F
- - - - - - 0x0242E9 09:82D9: AD BD 84  LDA tbl_84BD
- - - - - - 0x0242EC 09:82DC: 85 00     STA ram_0000_t025_jmp
- - - - - - 0x0242EE 09:82DE: AD BE 84  LDA tbl_84BD + $01
- - - - - - 0x0242F1 09:82E1: 85 01     STA ram_0000_t025_jmp + $01
- - - - - - 0x0242F3 09:82E3: A9 8A     LDA #con_prg_bank + $8A
- - - - - - 0x0242F5 09:82E5: 20 2F E6  JSR sub_0x03E63F_indirect_jump_custom_bank
- - - - - - 0x0242F8 09:82E8: A6 6C     LDX ram_006C_object_index
- - - - - - 0x0242FA 09:82EA: 20 3A 87  JSR sub_873A_clear_object_data
- - - - - - 0x0242FD 09:82ED: 4C 9E 82  JMP loc_829E
bra_82F0:
- - - - - - 0x024300 09:82F0: C9 0C     CMP #$0C
- - - - - - 0x024302 09:82F2: F0 1B     BEQ bra_830F
- - - - - - 0x024304 09:82F4: C9 08     CMP #$08
- - - - - - 0x024306 09:82F6: D0 05     BNE bra_82FD
- - - - - - 0x024308 09:82F8: BD 06 06  LDA ram_obj_config,X
- - - - - - 0x02430B 09:82FB: 30 12     BMI bra_830F
bra_82FD:
- - - - - - 0x02430D 09:82FD: A9 01     LDA #$01
- - - - - - 0x02430F 09:82FF: 20 05 89  JSR sub_8905
- - - - - - 0x024312 09:8302: BD 7B 06  LDA ram_obj_hp,X
- - - - - - 0x024315 09:8305: D0 08     BNE bra_830F
- - - - - - 0x024317 09:8307: A9 00     LDA #$00
- - - - - - 0x024319 09:8309: 9D 90 07  STA ram_0790,X
- - - - - - 0x02431C 09:830C: 4C 79 82  JMP loc_8279
bra_830F:
- - - - - - 0x02431F 09:830F: A9 00     LDA #$00
- - - - - - 0x024321 09:8311: 9D 69 06  STA ram_obj_066A,X
- - - - - - 0x024324 09:8314: 4C 74 82  JMP loc_8274



tbl_8317:
- D 0 - - - 0x024327 09:8317: 00        .byte $00   ; 00 
- D 0 - - - 0x024328 09:8318: 20        .byte $20   ; 01 
- D 0 - - - 0x024329 09:8319: 20        .byte $20   ; 02 
- D 0 - - - 0x02432A 09:831A: 20        .byte $20   ; 03 
- D 0 - - - 0x02432B 09:831B: 10        .byte $10   ; 04 
- D 0 - - - 0x02432C 09:831C: 20        .byte $20   ; 05 
- D 0 - - - 0x02432D 09:831D: 10        .byte $10   ; 06 
- D 0 - - - 0x02432E 09:831E: 20        .byte $20   ; 07 
- D 0 - - - 0x02432F 09:831F: 20        .byte $20   ; 08 
- D 0 - - - 0x024330 09:8320: 20        .byte $20   ; 09 
- D 0 - - - 0x024331 09:8321: 20        .byte $20   ; 0A 
- D 0 - - - 0x024332 09:8322: 20        .byte $20   ; 0B 
- D 0 - - - 0x024333 09:8323: 3C        .byte $3C   ; 0C 
- D 0 - - - 0x024334 09:8324: 20        .byte $20   ; 0D 
- D 0 - - - 0x024335 09:8325: 20        .byte $20   ; 0E 
- D 0 - - - 0x024336 09:8326: 00        .byte $00   ; 0F 
- - - - - - 0x024337 09:8327: 00        .byte $00   ; 10 
- D 0 - - - 0x024338 09:8328: 40        .byte $40   ; 11 
- D 0 - - - 0x024339 09:8329: 00        .byte $00   ; 12 
- D 0 - - - 0x02433A 09:832A: 00        .byte $00   ; 13 
- D 0 - - - 0x02433B 09:832B: 40        .byte $40   ; 14 
- D 0 - - - 0x02433C 09:832C: 40        .byte $40   ; 15 
- D 0 - - - 0x02433D 09:832D: 00        .byte $00   ; 16 
- D 0 - - - 0x02433E 09:832E: 40        .byte $40   ; 17 
- D 0 - - - 0x02433F 09:832F: 40        .byte $40   ; 18 
- D 0 - - - 0x024340 09:8330: 40        .byte $40   ; 19 
- D 0 - - - 0x024341 09:8331: 00        .byte $00   ; 1A 
- D 0 - - - 0x024342 09:8332: 00        .byte $00   ; 1B 
- D 0 - - - 0x024343 09:8333: 00        .byte $00   ; 1C 
- D 0 - - - 0x024344 09:8334: 40        .byte $40   ; 1D 
- D 0 - - - 0x024345 09:8335: 00        .byte $00   ; 1E 
- D 0 - - - 0x024346 09:8336: 00        .byte $00   ; 1F 
- D 0 - - - 0x024347 09:8337: 00        .byte $00   ; 20 
- D 0 - - - 0x024348 09:8338: 00        .byte $00   ; 21 
- D 0 - - - 0x024349 09:8339: 00        .byte $00   ; 22 
- D 0 - - - 0x02434A 09:833A: 40        .byte $40   ; 23 
- D 0 - - - 0x02434B 09:833B: 00        .byte $00   ; 24 
- D 0 - - - 0x02434C 09:833C: 00        .byte $00   ; 25 
- D 0 - - - 0x02434D 09:833D: 00        .byte $00   ; 26 
- D 0 - - - 0x02434E 09:833E: 20        .byte $20   ; 27 
- D 0 - - - 0x02434F 09:833F: 00        .byte $00   ; 28 
- D 0 - - - 0x024350 09:8340: 00        .byte $00   ; 29 
- - - - - - 0x024351 09:8341: 00        .byte $00   ; 2A 
- D 0 - - - 0x024352 09:8342: 40        .byte $40   ; 2B 
- D 0 - - - 0x024353 09:8343: 00        .byte $00   ; 2C 
- D 0 - - - 0x024354 09:8344: 10        .byte $10   ; 2D 
; bzk garbage?
- - - - - - 0x024355 09:8345: 00        .byte $00   ; 2E 
- - - - - - 0x024356 09:8346: 00        .byte $00   ; 2F 



tbl_8347:
- D 0 - - - 0x024357 09:8347: 01        .byte $01   ; 00 
- D 0 - - - 0x024358 09:8348: 02        .byte $02   ; 01 
- D 0 - - - 0x024359 09:8349: 04        .byte $04   ; 02 
- D 0 - - - 0x02435A 09:834A: 08        .byte $08   ; 03 
- D 0 - - - 0x02435B 09:834B: 10        .byte $10   ; 04 
- D 0 - - - 0x02435C 09:834C: 20        .byte $20   ; 05 
- D 0 - - - 0x02435D 09:834D: 40        .byte $40   ; 06 
- D 0 - - - 0x02435E 09:834E: 80        .byte $80   ; 07 



sub_834F:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x02435F 09:834F: 20 81 84  JSR sub_8481
C - - - - - 0x024362 09:8352: F0 53     BEQ bra_83A7
C - - - - - 0x024364 09:8354: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x024367 09:8357: 09 20     ORA #con_obj_flag_20
C - - - - - 0x024369 09:8359: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02436C 09:835C: DE 90 07  DEC ram_0790,X
C - - - - - 0x02436F 09:835F: D0 1D     BNE bra_837E
C - - - - - 0x024371 09:8361: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x024374 09:8364: 29 DF     AND #con_obj_flag_20 ^ $FF
C - - - - - 0x024376 09:8366: 09 40     ORA #con_obj_flag_40
C - - - - - 0x024378 09:8368: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02437B 09:836B: 20 8A 84  JSR sub_848A
C - - - - - 0x02437E 09:836E: A4 00     LDY ram_0000_temp
C - - - - - 0x024380 09:8370: A9 FF     LDA #$FF
C - - - - - 0x024382 09:8372: 38        SEC
C - - - - - 0x024383 09:8373: E5 01     SBC ram_0001_temp
C - - - - - 0x024385 09:8375: 39 CC 00  AND ram_00CC,Y
C - - - - - 0x024388 09:8378: 99 CC 00  STA ram_00CC,Y
C - - - - - 0x02438B 09:837B: 4C A5 83  JMP loc_83A5
bra_837E:
C - - - - - 0x02438E 09:837E: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x024391 09:8381: B9 9D 84  LDA tbl_849D,Y
C - - - - - 0x024394 09:8384: F0 1F     BEQ bra_83A5
C - - - - - 0x024396 09:8386: BD 90 07  LDA ram_0790,X
C - - - - - 0x024399 09:8389: 29 03     AND #$03
C - - - - - 0x02439B 09:838B: D0 18     BNE bra_83A5
C - - - - - 0x02439D 09:838D: A9 02     LDA #$02
C - - - - - 0x02439F 09:838F: 85 00     STA ram_0000_temp
C - - - - - 0x0243A1 09:8391: BD 90 07  LDA ram_0790,X
C - - - - - 0x0243A4 09:8394: 29 04     AND #$04
C - - - - - 0x0243A6 09:8396: F0 04     BEQ bra_839C
C - - - - - 0x0243A8 09:8398: A9 FE     LDA #$FE
C - - - - - 0x0243AA 09:839A: 85 00     STA ram_0000_temp
bra_839C:
C - - - - - 0x0243AC 09:839C: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0243AF 09:839F: 18        CLC
C - - - - - 0x0243B0 09:83A0: 65 00     ADC ram_0000_temp
C - - - - - 0x0243B2 09:83A2: 9D 38 04  STA ram_obj_pos_X_hi,X
loc_83A5:
bra_83A5:
C D 0 - - - 0x0243B5 09:83A5: 38        SEC
C - - - - - 0x0243B6 09:83A6: 60        RTS
bra_83A7:
C - - - - - 0x0243B7 09:83A7: 18        CLC
C - - - - - 0x0243B8 09:83A8: 60        RTS



sub_83A9:
- - - - - - 0x0243B9 09:83A9: A9 11     LDA #$11
- - - - - - 0x0243BB 09:83AB: D0 02     BNE bra_83AF    ; jmp



sub_83AD:
- - - - - - 0x0243BD 09:83AD: A9 10     LDA #$10
bra_83AF:
- - - - - - 0x0243BF 09:83AF: 85 02     STA ram_0002_temp
- - - - - - 0x0243C1 09:83B1: A2 02     LDX #$02
bra_83B3_loop:
- - - - - - 0x0243C3 09:83B3: BD 4E 05  LDA ram_obj_id,X
- - - - - - 0x0243C6 09:83B6: C9 2D     CMP #$2D
- - - - - - 0x0243C8 09:83B8: D0 08     BNE bra_83C2
- - - - - - 0x0243CA 09:83BA: 20 0D 84  JSR sub_840D
- - - - - - 0x0243CD 09:83BD: E8        INX
- - - - - - 0x0243CE 09:83BE: E0 0D     CPX #$0D
- - - - - - 0x0243D0 09:83C0: D0 F1     BNE bra_83B3_loop
bra_83C2:
- - - - - - 0x0243D2 09:83C2: A6 6C     LDX ram_006C_object_index
- - - - - - 0x0243D4 09:83C4: 60        RTS



loc_83C5:
; out
    ; C
        ; 0 = 
        ; 1 = 
C D 0 - - - 0x0243D5 09:83C5: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0243D8 09:83C8: C9 08     CMP #$08
C - - - - - 0x0243DA 09:83CA: F0 0D     BEQ bra_83D9
C - - - - - 0x0243DC 09:83CC: C9 06     CMP #$06
C - - - - - 0x0243DE 09:83CE: F0 28     BEQ bra_83F8
C - - - - - 0x0243E0 09:83D0: C9 2D     CMP #$2D
C - - - - - 0x0243E2 09:83D2: F0 29     BEQ bra_83FD
C - - - - - 0x0243E4 09:83D4: 20 12 84  JSR sub_8412
C - - - - - 0x0243E7 09:83D7: 38        SEC
C - - - - - 0x0243E8 09:83D8: 60        RTS
bra_83D9:
- - - - - - 0x0243E9 09:83D9: BD 45 06  LDA ram_obj_0646,X
- - - - - - 0x0243EC 09:83DC: 85 0E     STA ram_000E_temp
- - - - - - 0x0243EE 09:83DE: A2 01     LDX #$01
bra_83E0_loop:
- - - - - - 0x0243F0 09:83E0: BD 4E 05  LDA ram_obj_id,X
- - - - - - 0x0243F3 09:83E3: C9 08     CMP #$08
- - - - - - 0x0243F5 09:83E5: D0 0A     BNE bra_83F1
- - - - - - 0x0243F7 09:83E7: BD 45 06  LDA ram_obj_0646,X
- - - - - - 0x0243FA 09:83EA: C5 0E     CMP ram_000E_temp
- - - - - - 0x0243FC 09:83EC: D0 03     BNE bra_83F1
- - - - - - 0x0243FE 09:83EE: 20 0D 84  JSR sub_840D
bra_83F1:
- - - - - - 0x024401 09:83F1: E8        INX
- - - - - - 0x024402 09:83F2: E0 0D     CPX #$0D
- - - - - - 0x024404 09:83F4: 90 EA     BCC bra_83E0_loop
- - - - - - 0x024406 09:83F6: B0 11     BCS bra_8409    ; jmp
bra_83F8:
- - - - - - 0x024408 09:83F8: 20 A9 83  JSR sub_83A9
- - - - - - 0x02440B 09:83FB: C6 02     DEC ram_0002_temp
bra_83FD:
- - - - - - 0x02440D 09:83FD: A2 01     LDX #$01
- - - - - - 0x02440F 09:83FF: BD 4E 05  LDA ram_obj_id,X
- - - - - - 0x024412 09:8402: C9 06     CMP #$06
- - - - - - 0x024414 09:8404: D0 03     BNE bra_8409
- - - - - - 0x024416 09:8406: 20 0D 84  JSR sub_840D
bra_8409:
- - - - - - 0x024419 09:8409: A6 6C     LDX ram_006C_object_index
- - - - - - 0x02441B 09:840B: 38        SEC
bra_840C_RTS:
- - - - - - 0x02441C 09:840C: 60        RTS



sub_840D:
- - - - - - 0x02441D 09:840D: 20 78 84  JSR sub_8478
- - - - - - 0x024420 09:8410: D0 FA     BNE bra_840C_RTS
sub_8412:
C - - - - - 0x024422 09:8412: A5 01     LDA ram_0001_temp
C - - - - - 0x024424 09:8414: 19 C4 00  ORA ram_00C4,Y
C - - - - - 0x024427 09:8417: 99 C4 00  STA ram_00C4,Y
C - - - - - 0x02442A 09:841A: A5 02     LDA ram_0002_temp
C - - - - - 0x02442C 09:841C: 9D 90 07  STA ram_0790,X
C - - - - - 0x02442F 09:841F: BD 54 04  LDA ram_0454_obj,X
C - - - - - 0x024432 09:8422: 09 04     ORA #$04
C - - - - - 0x024434 09:8424: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x024437 09:8427: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02443A 09:842A: 29 BF     AND #con_obj_flag_40 ^ $FF
C - - - - - 0x02443C 09:842C: 09 20     ORA #con_obj_flag_20
C - - - - - 0x02443E 09:842E: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x024441 09:8431: A9 00     LDA #$00
C - - - - - 0x024443 09:8433: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x024446 09:8436: 60        RTS



sub_8437:
C - - - - - 0x024447 09:8437: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x02444A 09:843A: C0 2D     CPY #$2D
C - - - - - 0x02444C 09:843C: F0 04     BEQ bra_8442
C - - - - - 0x02444E 09:843E: C0 10     CPY #$10
C - - - - - 0x024450 09:8440: B0 30     BCS bra_8472
bra_8442:
C - - - - - 0x024452 09:8442: B9 AD 84  LDA tbl_84AD,Y
C - - - - - 0x024455 09:8445: 85 02     STA ram_0002_temp
C - - - - - 0x024457 09:8447: F0 29     BEQ bra_8472
C - - - - - 0x024459 09:8449: 20 78 84  JSR sub_8478
C - - - - - 0x02445C 09:844C: D0 24     BNE bra_8472
C - - - - - 0x02445E 09:844E: 20 81 84  JSR sub_8481
C - - - - - 0x024461 09:8451: D0 1F     BNE bra_8472
C - - - - - 0x024463 09:8453: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x024466 09:8456: 29 F0     AND #$F0
C - - - - - 0x024468 09:8458: F0 18     BEQ bra_8472
C - - - - - 0x02446A 09:845A: 20 8A 84  JSR sub_848A
C - - - - - 0x02446D 09:845D: A4 00     LDY ram_0000_temp
C - - - - - 0x02446F 09:845F: 19 CC 00  ORA ram_00CC,Y
C - - - - - 0x024472 09:8462: 99 CC 00  STA ram_00CC,Y
C - - - - - 0x024475 09:8465: A5 02     LDA ram_0002_temp
C - - - - - 0x024477 09:8467: 9D 90 07  STA ram_0790,X
C - - - - - 0x02447A 09:846A: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x02447D 09:846D: 29 BF     AND #con_obj_flag_40 ^ $FF
C - - - - - 0x02447F 09:846F: 9D 70 04  STA ram_obj_flags,X
bra_8472:
C - - - - - 0x024482 09:8472: A9 00     LDA #$00
C - - - - - 0x024484 09:8474: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x024487 09:8477: 60        RTS



sub_8478:
C - - - - - 0x024488 09:8478: 20 8A 84  JSR sub_848A
C - - - - - 0x02448B 09:847B: A4 00     LDY ram_0000_temp
C - - - - - 0x02448D 09:847D: 39 C4 00  AND ram_00C4,Y
C - - - - - 0x024490 09:8480: 60        RTS



sub_8481:
C - - - - - 0x024491 09:8481: 20 8A 84  JSR sub_848A
C - - - - - 0x024494 09:8484: A4 00     LDY ram_0000_temp
C - - - - - 0x024496 09:8486: 39 CC 00  AND ram_00CC,Y
C - - - - - 0x024499 09:8489: 60        RTS



sub_848A:
C - - - - - 0x02449A 09:848A: A0 00     LDY #$00
C - - - - - 0x02449C 09:848C: E0 08     CPX #$08
C - - - - - 0x02449E 09:848E: 90 01     BCC bra_8491
C - - - - - 0x0244A0 09:8490: C8        INY ; 01
bra_8491:
C - - - - - 0x0244A1 09:8491: 84 00     STY ram_0000_temp
C - - - - - 0x0244A3 09:8493: 8A        TXA
C - - - - - 0x0244A4 09:8494: 29 07     AND #$07
C - - - - - 0x0244A6 09:8496: A8        TAY
C - - - - - 0x0244A7 09:8497: B9 47 83  LDA tbl_8347,Y
C - - - - - 0x0244AA 09:849A: 85 01     STA ram_0001_temp
C - - - - - 0x0244AC 09:849C: 60        RTS



tbl_849D:
- - - - - - 0x0244AD 09:849D: 00        .byte $00   ; 00 
- D 0 - - - 0x0244AE 09:849E: 01        .byte $01   ; 01 
- - - - - - 0x0244AF 09:849F: 01        .byte $01   ; 02 
- D 0 - - - 0x0244B0 09:84A0: 01        .byte $01   ; 03 
- - - - - - 0x0244B1 09:84A1: 00        .byte $00   ; 04 
- - - - - - 0x0244B2 09:84A2: 00        .byte $00   ; 05 
- - - - - - 0x0244B3 09:84A3: 00        .byte $00   ; 06 
- D 0 - - - 0x0244B4 09:84A4: 01        .byte $01   ; 07 
- - - - - - 0x0244B5 09:84A5: 00        .byte $00   ; 08 
- D 0 - - - 0x0244B6 09:84A6: 01        .byte $01   ; 09 
- D 0 - - - 0x0244B7 09:84A7: 01        .byte $01   ; 0A 
- - - - - - 0x0244B8 09:84A8: 00        .byte $00   ; 0B 
- D 0 - - - 0x0244B9 09:84A9: 00        .byte $00   ; 0C 
- - - - - - 0x0244BA 09:84AA: 00        .byte $00   ; 0D 
- D 0 - - - 0x0244BB 09:84AB: 00        .byte $00   ; 0E 
- - - - - - 0x0244BC 09:84AC: 00        .byte $00   ; 0F 



tbl_84AD:
- D 0 - - - 0x0244BD 09:84AD: 00        .byte $00   ; 00 
- D 0 - - - 0x0244BE 09:84AE: 08        .byte $08   ; 01 
- D 0 - - - 0x0244BF 09:84AF: 08        .byte $08   ; 02 
- D 0 - - - 0x0244C0 09:84B0: 08        .byte $08   ; 03 
- D 0 - - - 0x0244C1 09:84B1: 00        .byte $00   ; 04 
- D 0 - - - 0x0244C2 09:84B2: 00        .byte $00   ; 05 
- D 0 - - - 0x0244C3 09:84B3: 00        .byte $00   ; 06 
- D 0 - - - 0x0244C4 09:84B4: 08        .byte $08   ; 07 
- D 0 - - - 0x0244C5 09:84B5: 00        .byte $00   ; 08 
- D 0 - - - 0x0244C6 09:84B6: 04        .byte $04   ; 09 
- D 0 - - - 0x0244C7 09:84B7: 08        .byte $08   ; 0A 
- D 0 - - - 0x0244C8 09:84B8: 00        .byte $00   ; 0B 
- D 0 - - - 0x0244C9 09:84B9: 0C        .byte $0C   ; 0C 
- D 0 - - - 0x0244CA 09:84BA: 00        .byte $00   ; 0D 
- D 0 - - - 0x0244CB 09:84BB: 08        .byte $08   ; 0E 
- D 0 - - - 0x0244CC 09:84BC: 00        .byte $00   ; 0F 



tbl_84BD:
; bzk optimize
- - - - - - 0x0244CD 09:84BD: C1 BB     .word ofs_0x017BD1



sub_84BF:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0244CF 09:84BF: BC 4E 05  LDY ram_obj_id,X
C - - - - - 0x0244D2 09:84C2: C0 2D     CPY #$2D
C - - - - - 0x0244D4 09:84C4: D0 04     BNE bra_84CA
C - - - - - 0x0244D6 09:84C6: A0 06     LDY #$06
C - - - - - 0x0244D8 09:84C8: D0 06     BNE bra_84D0    ; jmp
bra_84CA:
C D 0 - - - 0x0244DA 09:84CA: C0 10     CPY #$10
C - - - - - 0x0244DC 09:84CC: 90 02     BCC bra_84D0
- - - - - - 0x0244DE 09:84CE: 18        CLC
- - - - - - 0x0244DF 09:84CF: 60        RTS
bra_84D0:
C - - - - - 0x0244E0 09:84D0: B9 9A 85  LDA tbl_859A,Y
C - - - - - 0x0244E3 09:84D3: F0 03     BEQ bra_84D8
C - - - - - 0x0244E5 09:84D5: 4C 55 85  JMP loc_8555
bra_84D8:
C - - - - - 0x0244E8 09:84D8: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x0244EB 09:84DB: 29 01     AND #con_obj_flag_01
C - - - - - 0x0244ED 09:84DD: F0 74     BEQ bra_8553
C - - - - - 0x0244EF 09:84DF: A8        TAY ; 01
; bzk optimize, Y is always 01
C - - - - - 0x0244F0 09:84E0: B9 AE 85  LDA tbl_85AE,Y
C - - - - - 0x0244F3 09:84E3: F0 6E     BEQ bra_8553
C - - - - - 0x0244F5 09:84E5: A5 32     LDA ram_blk_hi
C - - - - - 0x0244F7 09:84E7: D9 CE 85  CMP tbl_85CE,Y
C - - - - - 0x0244FA 09:84EA: F0 06     BEQ bra_84F2
C - - - - - 0x0244FC 09:84EC: B9 DE 85  LDA tbl_85DE,Y
C - - - - - 0x0244FF 09:84EF: 4C F5 84  JMP loc_84F5
bra_84F2:
- - - - - - 0x024502 09:84F2: B9 BE 85  LDA tbl_85BE,Y
loc_84F5:
C D 0 - - - 0x024505 09:84F5: F0 0E     BEQ bra_8505
C - - - - - 0x024507 09:84F7: C9 FF     CMP #$FF
C - - - - - 0x024509 09:84F9: F0 58     BEQ bra_8553
C - - - - - 0x02450B 09:84FB: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02450E 09:84FE: C9 20     CMP #$20
C - - - - - 0x024510 09:8500: 90 51     BCC bra_8553
C - - - - - 0x024512 09:8502: 4C 0C 85  JMP loc_850C
bra_8505:
- - - - - - 0x024515 09:8505: BD 38 04  LDA ram_obj_pos_X_hi,X
- - - - - - 0x024518 09:8508: C9 E0     CMP #$E0
- - - - - - 0x02451A 09:850A: B0 47     BCS bra_8553
loc_850C:
C D 0 - - - 0x02451C 09:850C: A4 C3     LDY ram_00C3
C - - - - - 0x02451E 09:850E: B9 C2 07  LDA ram_07C2,Y
C - - - - - 0x024521 09:8511: C9 05     CMP #$05
C - - - - - 0x024523 09:8513: 90 11     BCC bra_8526
C - - - - - 0x024525 09:8515: C9 0B     CMP #$0B
C - - - - - 0x024527 09:8517: 90 08     BCC bra_8521
C - - - - - 0x024529 09:8519: C9 1B     CMP #$1B
C - - - - - 0x02452B 09:851B: 90 09     BCC bra_8526
C - - - - - 0x02452D 09:851D: C9 27     CMP #$27
C - - - - - 0x02452F 09:851F: B0 05     BCS bra_8526
bra_8521:
C - - - - - 0x024531 09:8521: A9 00     LDA #$00
C - - - - - 0x024533 09:8523: 99 C8 07  STA ram_07C8,Y
bra_8526:
C - - - - - 0x024536 09:8526: A9 00     LDA #$00
C - - - - - 0x024538 09:8528: 85 C1     STA ram_00C1
C - - - - - 0x02453A 09:852A: A0 02     LDY #$02
C - - - - - 0x02453C 09:852C: 20 7F 85  JSR sub_857F_prepare_subroutine_pointers
C - - - - - 0x02453F 09:852F: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x024541 09:8531: 20 2F E6  JSR sub_0x03E63F_indirect_jump_custom_bank
C - - - - - 0x024544 09:8534: A0 00     LDY #$00
C - - - - - 0x024546 09:8536: 20 7F 85  JSR sub_857F_prepare_subroutine_pointers
C - - - - - 0x024549 09:8539: A9 80     LDA #con_prg_bank + $80
C - - - - - 0x02454B 09:853B: 20 2F E6  JSR sub_0x03E63F_indirect_jump_custom_bank
C - - - - - 0x02454E 09:853E: A2 01     LDX #$01
bra_8540_loop:
C - - - - - 0x024550 09:8540: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x024553 09:8543: C9 40     CMP #$40
C - - - - - 0x024555 09:8545: B0 03     BCS bra_854A
C - - - - - 0x024557 09:8547: 20 3A 87  JSR sub_873A_clear_object_data
bra_854A:
C - - - - - 0x02455A 09:854A: E8        INX
C - - - - - 0x02455B 09:854B: E0 0D     CPX #$0D
C - - - - - 0x02455D 09:854D: D0 F1     BNE bra_8540_loop
C - - - - - 0x02455F 09:854F: A6 6C     LDX ram_006C_object_index
C - - - - - 0x024561 09:8551: 38        SEC
C - - - - - 0x024562 09:8552: 60        RTS
bra_8553:
C - - - - - 0x024563 09:8553: 18        CLC
C - - - - - 0x024564 09:8554: 60        RTS



loc_8555:
C D 0 - - - 0x024565 09:8555: A5 56     LDA ram_cam_pos_lo
C - - - - - 0x024567 09:8557: D0 FA     BNE bra_8553
C - - - - - 0x024569 09:8559: C0 06     CPY #$06
C - - - - - 0x02456B 09:855B: D0 0A     BNE bra_8567
C - - - - - 0x02456D 09:855D: A5 33     LDA ram_blk_lo
C - - - - - 0x02456F 09:855F: C9 02     CMP #$02
C - - - - - 0x024571 09:8561: F0 12     BEQ bra_8575
C - - - - - 0x024573 09:8563: A9 00     LDA #$00
C - - - - - 0x024575 09:8565: F0 11     BEQ bra_8578    ; jmp
bra_8567:
C - - - - - 0x024577 09:8567: C0 07     CPY #$07
C - - - - - 0x024579 09:8569: D0 0A     BNE bra_8575
C - - - - - 0x02457B 09:856B: A5 32     LDA ram_blk_hi
C - - - - - 0x02457D 09:856D: C9 04     CMP #$04
C - - - - - 0x02457F 09:856F: F0 04     BEQ bra_8575
C - - - - - 0x024581 09:8571: A9 01     LDA #$01
C - - - - - 0x024583 09:8573: D0 03     BNE bra_8578    ; jmp
bra_8575:
C - - - - - 0x024585 09:8575: B9 8A 85  LDA tbl_858A,Y
bra_8578:
C - - - - - 0x024588 09:8578: C5 57     CMP ram_cam_pos_hi
C - - - - - 0x02458A 09:857A: F0 D7     BEQ bra_8553
- - - - - - 0x02458C 09:857C: 4C 0C 85  JMP loc_850C



sub_857F_prepare_subroutine_pointers:
C - - - - - 0x02458F 09:857F: B9 AA 85  LDA tbl_85AA,Y
C - - - - - 0x024592 09:8582: 85 00     STA ram_0000_t025_jmp
C - - - - - 0x024594 09:8584: B9 AB 85  LDA tbl_85AA + $01,Y
C - - - - - 0x024597 09:8587: 85 01     STA ram_0000_t025_jmp + $01
C - - - - - 0x024599 09:8589: 60        RTS



tbl_858A:
- - - - - - 0x02459A 09:858A: 00        .byte $00   ; 00 
- - - - - - 0x02459B 09:858B: 00        .byte $00   ; 01 
- - - - - - 0x02459C 09:858C: 00        .byte $00   ; 02 
- - - - - - 0x02459D 09:858D: 00        .byte $00   ; 03 
- - - - - - 0x02459E 09:858E: 00        .byte $00   ; 04 
- D 0 - - - 0x02459F 09:858F: 01        .byte $01   ; 05 
- D 0 - - - 0x0245A0 09:8590: 02        .byte $02   ; 06 
- D 0 - - - 0x0245A1 09:8591: 02        .byte $02   ; 07 
- D 0 - - - 0x0245A2 09:8592: 01        .byte $01   ; 08 
- - - - - - 0x0245A3 09:8593: 00        .byte $00   ; 09 
- D 0 - - - 0x0245A4 09:8594: 01        .byte $01   ; 0A 
- - - - - - 0x0245A5 09:8595: 00        .byte $00   ; 0B 
- - - - - - 0x0245A6 09:8596: 00        .byte $00   ; 0C 
- - - - - - 0x0245A7 09:8597: 00        .byte $00   ; 0D 
- - - - - - 0x0245A8 09:8598: 00        .byte $00   ; 0E 
- - - - - - 0x0245A9 09:8599: 00        .byte $00   ; 0F 



tbl_859A:
- - - - - - 0x0245AA 09:859A: 00        .byte $00   ; 00 
- D 0 - - - 0x0245AB 09:859B: 00        .byte $00   ; 01 
- D 0 - - - 0x0245AC 09:859C: 00        .byte $00   ; 02 
- D 0 - - - 0x0245AD 09:859D: 00        .byte $00   ; 03 
- D 0 - - - 0x0245AE 09:859E: 00        .byte $00   ; 04 
- D 0 - - - 0x0245AF 09:859F: 01        .byte $01   ; 05 
- D 0 - - - 0x0245B0 09:85A0: 01        .byte $01   ; 06 
- D 0 - - - 0x0245B1 09:85A1: 01        .byte $01   ; 07 
- D 0 - - - 0x0245B2 09:85A2: 01        .byte $01   ; 08 
- D 0 - - - 0x0245B3 09:85A3: 00        .byte $00   ; 09 
- D 0 - - - 0x0245B4 09:85A4: 01        .byte $01   ; 0A 
- D 0 - - - 0x0245B5 09:85A5: 00        .byte $00   ; 0B 
- D 0 - - - 0x0245B6 09:85A6: 00        .byte $00   ; 0C 
- D 0 - - - 0x0245B7 09:85A7: 00        .byte $00   ; 0D 
- - - - - - 0x0245B8 09:85A8: 00        .byte $00   ; 0E 
- - - - - - 0x0245B9 09:85A9: 00        .byte $00   ; 0F 



tbl_85AA:
- D 0 - - - 0x0245BA 09:85AA: 13 80     .word ofs_0x000023_00
- D 0 - - - 0x0245BC 09:85AC: 9E 85     .word ofs_0x0005AE_02_update_3_colors_for_sprites



tbl_85AE:
- - - - - - 0x0245BE 09:85AE: 00        .byte $00   ; 00 placeholder
- D 0 - - - 0x0245BF 09:85AF: 02        .byte $02   ; 01 


; bzk garbage 0x0244F0
- - - - - - 0x0245C0 09:85B0: 01        .byte $01   ; 02 
- - - - - - 0x0245C1 09:85B1: 01        .byte $01   ; 03 
- - - - - - 0x0245C2 09:85B2: 02        .byte $02   ; 04 
- - - - - - 0x0245C3 09:85B3: 01        .byte $01   ; 05 
- - - - - - 0x0245C4 09:85B4: 01        .byte $01   ; 06 
- - - - - - 0x0245C5 09:85B5: 02        .byte $02   ; 07 
- - - - - - 0x0245C6 09:85B6: 01        .byte $01   ; 08 
- - - - - - 0x0245C7 09:85B7: 01        .byte $01   ; 09 
- - - - - - 0x0245C8 09:85B8: 01        .byte $01   ; 0A 
- - - - - - 0x0245C9 09:85B9: 01        .byte $01   ; 0B 
- - - - - - 0x0245CA 09:85BA: 01        .byte $01   ; 0C 
- - - - - - 0x0245CB 09:85BB: 01        .byte $01   ; 0D 
- - - - - - 0x0245CC 09:85BC: 00        .byte $00   ; 0E 
- - - - - - 0x0245CD 09:85BD: 00        .byte $00   ; 0F 



tbl_85BE:
- - - - - - 0x0245CE 09:85BE: 00        .byte $00   ; 00 placeholder
- - - - - - 0x0245CF 09:85BF: 00        .byte $00   ; 01 


; bzk garbage 0x0244F0
- - - - - - 0x0245D0 09:85C0: 00        .byte $00   ; 02 
- - - - - - 0x0245D1 09:85C1: 01        .byte $01   ; 03 
- - - - - - 0x0245D2 09:85C2: FF        .byte $FF   ; 04 
- - - - - - 0x0245D3 09:85C3: 00        .byte $00   ; 05 
- - - - - - 0x0245D4 09:85C4: 00        .byte $00   ; 06 
- - - - - - 0x0245D5 09:85C5: 00        .byte $00   ; 07 
- - - - - - 0x0245D6 09:85C6: 00        .byte $00   ; 08 
- - - - - - 0x0245D7 09:85C7: 00        .byte $00   ; 09 
- - - - - - 0x0245D8 09:85C8: 00        .byte $00   ; 0A 
- - - - - - 0x0245D9 09:85C9: 01        .byte $01   ; 0B 
- - - - - - 0x0245DA 09:85CA: 00        .byte $00   ; 0C 
- - - - - - 0x0245DB 09:85CB: 01        .byte $01   ; 0D 
- - - - - - 0x0245DC 09:85CC: 00        .byte $00   ; 0E 
- - - - - - 0x0245DD 09:85CD: 00        .byte $00   ; 0F 



tbl_85CE:
- - - - - - 0x0245DE 09:85CE: 00        .byte $00   ; 00 placeholder
- D 0 - - - 0x0245DF 09:85CF: 00        .byte $00   ; 01 


; bzk garbage 0x0244F0
- - - - - - 0x0245E0 09:85D0: 00        .byte $00   ; 02 
- - - - - - 0x0245E1 09:85D1: 00        .byte $00   ; 03 
- - - - - - 0x0245E2 09:85D2: 06        .byte $06   ; 04 
- - - - - - 0x0245E3 09:85D3: 00        .byte $00   ; 05 
- - - - - - 0x0245E4 09:85D4: 00        .byte $00   ; 06 
- - - - - - 0x0245E5 09:85D5: 04        .byte $04   ; 07 
- - - - - - 0x0245E6 09:85D6: 00        .byte $00   ; 08 
- - - - - - 0x0245E7 09:85D7: 00        .byte $00   ; 09 
- - - - - - 0x0245E8 09:85D8: 00        .byte $00   ; 0A 
- - - - - - 0x0245E9 09:85D9: 00        .byte $00   ; 0B 
- - - - - - 0x0245EA 09:85DA: 00        .byte $00   ; 0C 
- - - - - - 0x0245EB 09:85DB: 00        .byte $00   ; 0D 
- - - - - - 0x0245EC 09:85DC: 00        .byte $00   ; 0E 
- - - - - - 0x0245ED 09:85DD: 00        .byte $00   ; 0F 



tbl_85DE:
- - - - - - 0x0245EE 09:85DE: 00        .byte $00   ; 00 placeholder
- D 0 - - - 0x0245EF 09:85DF: 01        .byte $01   ; 01 


; bzk garbage 0x0244F0
- - - - - - 0x0245F0 09:85E0: 00        .byte $00   ; 02 
- - - - - - 0x0245F1 09:85E1: 00        .byte $00   ; 03 
- - - - - - 0x0245F2 09:85E2: 00        .byte $00   ; 04 
- - - - - - 0x0245F3 09:85E3: 00        .byte $00   ; 05 
- - - - - - 0x0245F4 09:85E4: 00        .byte $00   ; 06 
- - - - - - 0x0245F5 09:85E5: 00        .byte $00   ; 07 
- - - - - - 0x0245F6 09:85E6: 00        .byte $00   ; 08 
- - - - - - 0x0245F7 09:85E7: 00        .byte $00   ; 09 
- - - - - - 0x0245F8 09:85E8: 00        .byte $00   ; 0A 
- - - - - - 0x0245F9 09:85E9: 00        .byte $00   ; 0B 
- - - - - - 0x0245FA 09:85EA: 00        .byte $00   ; 0C 
- - - - - - 0x0245FB 09:85EB: 00        .byte $00   ; 0D 
- - - - - - 0x0245FC 09:85EC: 00        .byte $00   ; 0E 
- - - - - - 0x0245FD 09:85ED: 00        .byte $00   ; 0F 



sub_85EE:
C - - - - - 0x0245FE 09:85EE: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x024601 09:85F1: 29 01     AND #con_obj_flag_01
C - - - - - 0x024603 09:85F3: D0 0A     BNE bra_85FF
C - - - - - 0x024605 09:85F5: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x024608 09:85F8: 29 77     AND #(con_obj_flag_08 + con_obj_flag_not_visible) ^ $FF
C - - - - - 0x02460A 09:85FA: 09 40     ORA #con_obj_flag_40
C - - - - - 0x02460C 09:85FC: 4C 04 86  JMP loc_8604
bra_85FF:
C - - - - - 0x02460F 09:85FF: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x024612 09:8602: 09 88     ORA #con_obj_flag_08 + con_obj_flag_not_visible
loc_8604:
C D 0 - - - 0x024614 09:8604: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x024617 09:8607: 60        RTS



sub_8608:
ofs_044_0x024618_16:
C - - - - - 0x024618 09:8608: A9 00     LDA #$00
C - - - - - 0x02461A 09:860A: 85 17     STA ram_0017_temp
C - - - - - 0x02461C 09:860C: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x02461F 09:860F: 38        SEC
C - - - - - 0x024620 09:8610: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x024623 09:8613: 85 00     STA ram_0000_temp
C - - - - - 0x024625 09:8615: B0 0D     BCS bra_8624
C - - - - - 0x024627 09:8617: A9 01     LDA #$01
C - - - - - 0x024629 09:8619: 85 17     STA ram_0017_temp
C - - - - - 0x02462B 09:861B: A5 00     LDA ram_0000_temp
C - - - - - 0x02462D 09:861D: 49 FF     EOR #$FF
C - - - - - 0x02462F 09:861F: 18        CLC
C - - - - - 0x024630 09:8620: 69 01     ADC #$01
C - - - - - 0x024632 09:8622: 85 00     STA ram_0000_temp
bra_8624:
C - - - - - 0x024634 09:8624: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x024637 09:8627: 38        SEC
C - - - - - 0x024638 09:8628: FD 1C 04  SBC ram_obj_pos_Y_hi,X
C - - - - - 0x02463B 09:862B: B0 05     BCS bra_8632
C - - - - - 0x02463D 09:862D: 49 FF     EOR #$FF
C - - - - - 0x02463F 09:862F: 18        CLC
C - - - - - 0x024640 09:8630: 69 01     ADC #$01
bra_8632:
C - - - - - 0x024642 09:8632: C9 28     CMP #$28
C - - - - - 0x024644 09:8634: 90 0C     BCC bra_8642_RTS
C - - - - - 0x024646 09:8636: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x024649 09:8639: C9 01     CMP #$01
C - - - - - 0x02464B 09:863B: D0 05     BNE bra_8642_RTS
C - - - - - 0x02464D 09:863D: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x024650 09:8640: 85 17     STA ram_0017_temp
bra_8642_RTS:
C - - - - - 0x024652 09:8642: 60        RTS



sub_8643:
C - - - - - 0x024653 09:8643: A5 17     LDA ram_0017_temp
C - - - - - 0x024655 09:8645: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x024658 09:8648: A8        TAY
C - - - - - 0x024659 09:8649: B9 4D 86  LDA tbl_864D,Y
C - - - - - 0x02465C 09:864C: 60        RTS



tbl_864D:
- D 0 - - - 0x02465D 09:864D: 04        .byte $04   ; 00 facing right
- D 0 - - - 0x02465E 09:864E: 0C        .byte $0C   ; 01 facilg left



loc_864F:
sub_864F:
ofs_044_0x02465F_02:
; in
    ; A = ram_000E_t005_subroutine_argument_A
C D 0 - - - 0x02465F 09:864F: 85 00     STA ram_0000_temp
C - - - - - 0x024661 09:8651: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x024664 09:8654: 29 80     AND #$80
C - - - - - 0x024666 09:8656: 05 00     ORA ram_0000_temp
C - - - - - 0x024668 09:8658: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02466B 09:865B: A9 00     LDA #$00
C - - - - - 0x02466D 09:865D: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x024670 09:8660: 60        RTS



sub_8661_add_points_to_score:
loc_8661_add_points_to_score:
ofs_044_0x024671_12_add_points_to_score:
; in
    ; A = 00xx00 points (hundreds and thousands
        ; for ofs_044 case it's ram_000E_t005_subroutine_argument_A
C D 0 - - - 0x024671 09:8661: 85 02     STA ram_0000_t046_add_score + $02
C - - - - - 0x024673 09:8663: 8A        TXA
C - - - - - 0x024674 09:8664: 48        PHA
C - - - - - 0x024675 09:8665: A9 00     LDA #$00
C - - - - - 0x024677 09:8667: 85 01     STA ram_0000_t046_add_score + $01
C - - - - - 0x024679 09:8669: 85 03     STA ram_0000_t046_add_score + $03
C - - - - - 0x02467B 09:866B: 20 77 E7  JSR sub_0x03E787_add_points
C - - - - - 0x02467E 09:866E: 68        PLA
C - - - - - 0x02467F 09:866F: AA        TAX
C - - - - - 0x024680 09:8670: 60        RTS



tbl_8671:
; see con_8671
- D 0 - - - 0x024681 09:8671: 84 95     .word ofs_043_9584_00
- D 0 - - - 0x024683 09:8673: 19 96     .word ofs_043_9619_01
- D 0 - - - 0x024685 09:8675: 53 96     .word ofs_043_9653_02
- D 0 - - - 0x024687 09:8677: 71 95     .word ofs_043_9571_03
- D 0 - - - 0x024689 09:8679: 60 95     .word ofs_043_9560_04
- D 0 - - - 0x02468B 09:867B: 07 97     .word ofs_043_9707_05
- - - - - - 0x02468D 09:867D: 10 97     .word ofs_043_9710_06
- D 0 - - - 0x02468F 09:867F: 79 97     .word ofs_043_9779_07
- D 0 - - - 0x024691 09:8681: 31 98     .word ofs_043_9831_08
- - - - - - 0x024693 09:8683: 4A 97     .word ofs_043_974A_09
- - - - - - 0x024695 09:8685: 2B 97     .word ofs_043_972B_0A   ; unused, index doesn't exist
- D 0 - - - 0x024697 09:8687: 52 95     .word ofs_043_9552_0B
- D 0 - - - 0x024699 09:8689: 17 95     .word ofs_043_9517_0C
- D 0 - - - 0x02469B 09:868B: 55 95     .word ofs_043_9555_0D
- D 0 - - - 0x02469D 09:868D: E0 95     .word ofs_043_95E0_0E
- D 0 - - - 0x02469F 09:868F: 77 95     .word ofs_043_9577_0F
- - - - - - 0x0246A1 09:8691: F4 94     .word ofs_043_94F4_10   ; unused, index doesn't exist
- D 0 - - - 0x0246A3 09:8693: 73 94     .word ofs_043_9473_11
- D 0 - - - 0x0246A5 09:8695: 9D 94     .word ofs_043_949D_12
- - - - - - 0x0246A7 09:8697: 5B 94     .word ofs_043_945B_13   ; unused, index doesn't exist
- D 0 - - - 0x0246A9 09:8699: 41 94     .word ofs_043_9441_14
- D 0 - - - 0x0246AB 09:869B: 4C 94     .word ofs_043_944C_15
- D 0 - - - 0x0246AD 09:869D: BA 93     .word ofs_043_93BA_16
- D 0 - - - 0x0246AF 09:869F: 01 94     .word ofs_043_9401_17
- D 0 - - - 0x0246B1 09:86A1: 53 96     .word ofs_043_9653_18
- D 0 - - - 0x0246B3 09:86A3: 00 9B     .word ofs_043_9B00_19
- D 0 - - - 0x0246B5 09:86A5: E4 9B     .word ofs_043_9BE4_1A
- - - - - - 0x0246B7 09:86A7: 1F 97     .word ofs_043_971F_1B   ; unused, index doesn't exist
- D 0 - - - 0x0246B9 09:86A9: 69 95     .word ofs_043_9569_1C
- D 0 - - - 0x0246BB 09:86AB: 0C 92     .word ofs_043_920C_1D
- D 0 - - - 0x0246BD 09:86AD: 4C 93     .word ofs_043_934C_1E
- D 0 - - - 0x0246BF 09:86AF: 69 93     .word ofs_043_9369_1F
- D 0 - - - 0x0246C1 09:86B1: 48 9E     .word ofs_043_9E48_20
- D 0 - - - 0x0246C3 09:86B3: 0A 87     .word ofs_043_870A_21_RTS
- D 0 - - - 0x0246C5 09:86B5: 5A 99     .word ofs_043_995A_22
- D 0 - - - 0x0246C7 09:86B7: 21 99     .word ofs_043_9921_23
- D 0 - - - 0x0246C9 09:86B9: 21 99     .word ofs_043_9921_24
- D 0 - - - 0x0246CB 09:86BB: 00 9F     .word ofs_043_9F00_25
- D 0 - - - 0x0246CD 09:86BD: 76 9F     .word ofs_043_9F76_26
- D 0 - - - 0x0246CF 09:86BF: C4 9F     .word ofs_043_9FC4_27
- D 0 - - - 0x0246D1 09:86C1: F7 9F     .word ofs_043_9FF7_28
- D 0 - - - 0x0246D3 09:86C3: 09 A0     .word ofs_043_A009_29_clear_object_data
- D 0 - - - 0x0246D5 09:86C5: 07 87     .word ofs_043_8707_2A
- D 0 - - - 0x0246D7 09:86C7: 40 9E     .word ofs_043_9E40_2B
- D 0 - - - 0x0246D9 09:86C9: 0C A0     .word ofs_043_A00C_2C
- D 0 - - - 0x0246DB 09:86CB: 82 A0     .word ofs_043_A082_2D
- D 0 - - - 0x0246DD 09:86CD: EB A0     .word ofs_043_A0EB_2E
- D 0 - - - 0x0246DF 09:86CF: F5 A0     .word ofs_043_A0F5_2F
- D 0 - - - 0x0246E1 09:86D1: 01 A1     .word ofs_043_A101_30
- D 0 - - - 0x0246E3 09:86D3: 26 A1     .word ofs_043_A126_31
- - - - - - 0x0246E5 09:86D5: EF 9D     .word ofs_043_9DEF_32
- D 0 - - - 0x0246E7 09:86D7: D7 9D     .word ofs_043_9DD7_33_move_object
- D 0 - - - 0x0246E9 09:86D9: B9 9D     .word ofs_043_9DB9_34
- D 0 - - - 0x0246EB 09:86DB: A3 9D     .word ofs_043_9DA3_35
- D 0 - - - 0x0246ED 09:86DD: AE 9D     .word ofs_043_9DAE_36
- - - - - - 0x0246EF 09:86DF: 96 9D     .word ofs_043_9D96_37   ; unused, index doesn't exist
- D 0 - - - 0x0246F1 09:86E1: 6A 9D     .word ofs_043_9D6A_38
- D 0 - - - 0x0246F3 09:86E3: 5E 9D     .word ofs_043_9D5E_39
- D 0 - - - 0x0246F5 09:86E5: 54 9D     .word ofs_043_9D54_3A_play_sound
- D 0 - - - 0x0246F7 09:86E7: 2C 9D     .word ofs_043_9D2C_3B
- D 0 - - - 0x0246F9 09:86E9: 36 9D     .word ofs_043_9D36_3C
- D 0 - - - 0x0246FB 09:86EB: 40 9D     .word ofs_043_9D40_3D
- D 0 - - - 0x0246FD 09:86ED: 21 9D     .word ofs_043_9D21_3E
- D 0 - - - 0x0246FF 09:86EF: C4 9C     .word ofs_043_9CC4_3F
- D 0 - - - 0x024701 09:86F1: 45 9D     .word ofs_043_9D45_40
- D 0 - - - 0x024703 09:86F3: 5E 9C     .word ofs_043_9C5E_41
- D 0 - - - 0x024705 09:86F5: 61 99     .word ofs_043_9961_42
- D 0 - - - 0x024707 09:86F7: F6 9A     .word ofs_043_9AF6_43
- D 0 - - - 0x024709 09:86F9: 53 96     .word ofs_043_9653_44
- - - - - - 0x02470B 09:86FB: 78 9D     .word ofs_043_9D78_45   ; unused, index doesn't exist
- D 0 - - - 0x02470D 09:86FD: 2C 9C     .word ofs_043_9C2C_46
- D 0 - - - 0x02470F 09:86FF: 45 9D     .word ofs_043_9D45_47
- D 0 - - - 0x024711 09:8701: 27 A0     .word ofs_043_A027_48
- D 0 - - - 0x024713 09:8703: 04 9C     .word ofs_043_9C04_49_increase_speed_Y
- D 0 - - - 0x024715 09:8705: 18 9C     .word ofs_043_9C18_4A



ofs_043_8707_2A:
C - - J - - 0x024717 09:8707: FE C1 05  INC ram_05C1_obj,X
ofs_043_870A_21_RTS:
C - - J - - 0x02471A 09:870A: 60        RTS



sub_870B:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x02471B 09:870B: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02471E 09:870E: C9 02     CMP #$02
C - - - - - 0x024720 09:8710: 90 02     BCC bra_8714
C - - - - - 0x024722 09:8712: 18        CLC
C - - - - - 0x024723 09:8713: 60        RTS
bra_8714:
C - - - - - 0x024724 09:8714: 86 10     STX ram_0010_temp
C - - - - - 0x024726 09:8716: 20 B9 FE  JSR sub_0x03FEC9
C - - - - - 0x024729 09:8719: D0 1B     BNE bra_8736
C - - - - - 0x02472B 09:871B: A9 00     LDA #$00
C - - - - - 0x02472D 09:871D: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x024730 09:8720: A9 11     LDA #$11
C - - - - - 0x024732 09:8722: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x024735 09:8725: 20 79 87  JSR sub_8779
C - - - - - 0x024738 09:8728: A9 04     LDA #$04
C - - - - - 0x02473A 09:872A: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x02473D 09:872D: 8A        TXA
C - - - - - 0x02473E 09:872E: A8        TAY
C - - - - - 0x02473F 09:872F: A6 10     LDX ram_0010_temp
C - - - - - 0x024741 09:8731: FE 06 06  INC ram_obj_config,X
C - - - - - 0x024744 09:8734: 38        SEC
C - - - - - 0x024745 09:8735: 60        RTS
bra_8736:
- - - - - - 0x024746 09:8736: A6 10     LDX ram_0010_temp
- - - - - - 0x024748 09:8738: 18        CLC
- - - - - - 0x024749 09:8739: 60        RTS



sub_873A_clear_object_data:
loc_873A_clear_object_data:
ofs_0x02474A_clear_object_data:
ofs_044_0x02474A_04_clear_object_data:
C D 0 - - - 0x02474A 09:873A: A9 00     LDA #$00
C - - - - - 0x02474C 09:873C: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x02474F 09:873F: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x024752 09:8742: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
sub_8745_clear_object_data:
C - - - - - 0x024755 09:8745: A9 00     LDA #$00
C - - - - - 0x024757 09:8747: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x02475A 09:874A: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02475D 09:874D: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x024760 09:8750: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x024763 09:8753: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x024766 09:8756: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x024769 09:8759: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x02476C 09:875C: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x02476F 09:875F: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x024772 09:8762: 9D 8D 06  STA ram_obj_068E,X
C - - - - - 0x024775 09:8765: 60        RTS



sub_8766:
ofs_044_0x024776_0C:
; in
    ; A = 
        ; for ofs_044 case it's ram_000E_t005_subroutine_argument_A
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x024776 09:8766: 85 11     STA ram_0011_temp
C - - - - - 0x024778 09:8768: 86 10     STX ram_0010_t008_object_index
C - - - - - 0x02477A 09:876A: 20 B9 FE  JSR sub_0x03FEC9
C - - - - - 0x02477D 09:876D: D0 06     BNE bra_8775
C - - - - - 0x02477F 09:876F: 20 79 87  JSR sub_8779
C - - - - - 0x024782 09:8772: 4C D1 87  JMP loc_87D1
bra_8775:
C - - - - - 0x024785 09:8775: A6 10     LDX ram_0010_t008_object_index
C - - - - - 0x024787 09:8777: 18        CLC
C - - - - - 0x024788 09:8778: 60        RTS



sub_8779:
C - - - - - 0x024789 09:8779: 20 45 87  JSR sub_8745_clear_object_data
C - - - - - 0x02478C 09:877C: A4 10     LDY ram_0010_t008_object_index
C - - - - - 0x02478E 09:877E: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x024791 09:8781: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x024794 09:8784: A5 11     LDA ram_0011_temp
C - - - - - 0x024796 09:8786: C9 29     CMP #$29
C - - - - - 0x024798 09:8788: F0 13     BEQ bra_879D
C - - - - - 0x02479A 09:878A: C9 18     CMP #$18
C - - - - - 0x02479C 09:878C: F0 23     BEQ bra_87B1
C - - - - - 0x02479E 09:878E: C9 1A     CMP #$1A
C - - - - - 0x0247A0 09:8790: F0 29     BEQ bra_87BB
C - - - - - 0x0247A2 09:8792: C9 1B     CMP #$1B
C - - - - - 0x0247A4 09:8794: F0 11     BEQ bra_87A7
bra_8796:
C - - - - - 0x0247A6 09:8796: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x0247A9 09:8799: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0247AC 09:879C: 60        RTS
bra_879D:
C - - - - - 0x0247AD 09:879D: 18        CLC
C - - - - - 0x0247AE 09:879E: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x0247B1 09:87A1: 69 18     ADC #$18
C - - - - - 0x0247B3 09:87A3: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0247B6 09:87A6: 60        RTS
bra_87A7:
C - - - - - 0x0247B7 09:87A7: 18        CLC
C - - - - - 0x0247B8 09:87A8: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x0247BB 09:87AB: 69 08     ADC #$08
C - - - - - 0x0247BD 09:87AD: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0247C0 09:87B0: 60        RTS
bra_87B1:
C - - - - - 0x0247C1 09:87B1: 18        CLC
C - - - - - 0x0247C2 09:87B2: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x0247C5 09:87B5: 69 10     ADC #$10
C - - - - - 0x0247C7 09:87B7: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0247CA 09:87BA: 60        RTS
bra_87BB:
C - - - - - 0x0247CB 09:87BB: A5 32     LDA ram_blk_hi
C - - - - - 0x0247CD 09:87BD: F0 E8     BEQ bra_87A7
C - - - - - 0x0247CF 09:87BF: C9 07     CMP #$07
C - - - - - 0x0247D1 09:87C1: F0 E4     BEQ bra_87A7
C - - - - - 0x0247D3 09:87C3: D0 D1     BNE bra_8796    ; jmp



sub_87C5:
ofs_044_0x0247D5_0E:
; in
    ; A = 
        ; for ofs_044 case it's ram_000E_t005_subroutine_argument_A
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - J - - 0x0247D5 09:87C5: 85 11     STA ram_0011_temp
C - - - - - 0x0247D7 09:87C7: 86 10     STX ram_0010_t008_object_index
C - - - - - 0x0247D9 09:87C9: 20 E5 87  JSR sub_87E5
C - - - - - 0x0247DC 09:87CC: D0 13     BNE bra_87E1
C - - - - - 0x0247DE 09:87CE: 20 79 87  JSR sub_8779
loc_87D1:
C D 0 - - - 0x0247E1 09:87D1: A9 00     LDA #$00
C - - - - - 0x0247E3 09:87D3: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x0247E6 09:87D6: 8A        TXA
C - - - - - 0x0247E7 09:87D7: A8        TAY
C - - - - - 0x0247E8 09:87D8: A5 11     LDA ram_0011_temp
C - - - - - 0x0247EA 09:87DA: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0247ED 09:87DD: A6 10     LDX ram_0010_t008_object_index
C - - - - - 0x0247EF 09:87DF: 38        SEC
C - - - - - 0x0247F0 09:87E0: 60        RTS
bra_87E1:
- - - - - - 0x0247F1 09:87E1: A6 10     LDX ram_0010_t008_object_index
- - - - - - 0x0247F3 09:87E3: 18        CLC
- - - - - - 0x0247F4 09:87E4: 60        RTS



sub_87E5:
; out
    ; Z
        ; 0 = 
        ; 1 = 
C - - - - - 0x0247F5 09:87E5: A2 01     LDX #$01
bra_87E7_loop:
C - - - - - 0x0247F7 09:87E7: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0247FA 09:87EA: F0 07     BEQ bra_87F3_RTS
C - - - - - 0x0247FC 09:87EC: E8        INX
C - - - - - 0x0247FD 09:87ED: E0 13     CPX #$13
C - - - - - 0x0247FF 09:87EF: D0 F6     BNE bra_87E7_loop
- - - - - - 0x024801 09:87F1: A9 01     LDA #$01
bra_87F3_RTS:
C - - - - - 0x024803 09:87F3: 60        RTS



loc_87F4:
sub_87F4:
ofs_0x024804:
ofs_044_0x024804_06:
; in
    ; A = 
        ; for ofs_044 case it's ram_000E_t005_subroutine_argument_A 
; out
    ; C
        ; 0 = 
        ; 1 = 
C D 0 - - - 0x024804 09:87F4: 85 08     STA ram_0008_temp
C - - - - - 0x024806 09:87F6: AD F3 07  LDA ram_07F3
C - - - - - 0x024809 09:87F9: D0 2E     BNE bra_8829
C - - - - - 0x02480B 09:87FB: BD 7B 06  LDA ram_obj_hp,X
C - - - - - 0x02480E 09:87FE: F0 03     BEQ bra_8803
C - - - - - 0x024810 09:8800: 4C CB 88  JMP loc_88CB_CLC
bra_8803:
C - - - - - 0x024813 09:8803: A5 32     LDA ram_blk_hi
C - - - - - 0x024815 09:8805: C9 0E     CMP #$0E
C - - - - - 0x024817 09:8807: D0 0B     BNE bra_8814
C - - - - - 0x024819 09:8809: AD EC 07  LDA ram_07EC
C - - - - - 0x02481C 09:880C: C9 02     CMP #$02
C - - - - - 0x02481E 09:880E: D0 04     BNE bra_8814
C - - - - - 0x024820 09:8810: A9 7C     LDA #con_dmc_7C
C - - - - - 0x024822 09:8812: D0 02     BNE bra_8816    ; jmp
bra_8814:
C - - - - - 0x024824 09:8814: A9 7B     LDA #con_dmc_boss_death
bra_8816:
C - - - - - 0x024826 09:8816: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x024829 09:8819: A9 01     LDA #$01
C - - - - - 0x02482B 09:881B: 8D F3 07  STA ram_07F3
C - - - - - 0x02482E 09:881E: A9 00     LDA #$00
C - - - - - 0x024830 09:8820: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x024833 09:8823: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x024836 09:8826: 4C C8 FE  JMP loc_0x03FED8_clear_speed
bra_8829:
C - - - - - 0x024839 09:8829: AD F3 07  LDA ram_07F3
C - - - - - 0x02483C 09:882C: C9 02     CMP #$02
C - - - - - 0x02483E 09:882E: F0 03     BEQ bra_8833
C - - - - - 0x024840 09:8830: 4C C9 88  JMP loc_88C9_SEC
bra_8833:
C - - - - - 0x024843 09:8833: A5 32     LDA ram_blk_hi
C - - - - - 0x024845 09:8835: C9 0A     CMP #$0A
C - - - - - 0x024847 09:8837: D0 09     BNE bra_8842
C - - - - - 0x024849 09:8839: A5 33     LDA ram_blk_lo
C - - - - - 0x02484B 09:883B: C9 03     CMP #$03
C - - - - - 0x02484D 09:883D: D0 03     BNE bra_8842
C - - - - - 0x02484F 09:883F: 4C CD 88  JMP loc_88CD
bra_8842:
C - - - - - 0x024852 09:8842: A5 32     LDA ram_blk_hi
C - - - - - 0x024854 09:8844: C9 03     CMP #$03
C - - - - - 0x024856 09:8846: D0 2F     BNE bra_8877
C - - - - - 0x024858 09:8848: A5 33     LDA ram_blk_lo
C - - - - - 0x02485A 09:884A: C9 02     CMP #$02
C - - - - - 0x02485C 09:884C: D0 29     BNE bra_8877
C - - - - - 0x02485E 09:884E: A9 74     LDA #$74
C - - - - - 0x024860 09:8850: 20 66 87  JSR sub_8766
C - - - - - 0x024863 09:8853: A9 B0     LDA #$B0
C - - - - - 0x024865 09:8855: 99 38 04  STA ram_obj_pos_X_hi,Y
C - - - - - 0x024868 09:8858: 99 1C 04  STA ram_obj_pos_Y_hi,Y
loc_885B:
C D 0 - - - 0x02486B 09:885B: A9 A8     LDA #con_obj_flag_08 + con_obj_flag_20 + con_obj_flag_not_visible
C - - - - - 0x02486D 09:885D: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x024870 09:8860: A9 00     LDA #$00
C - - - - - 0x024872 09:8862: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x024875 09:8865: A9 02     LDA #$02
C - - - - - 0x024877 09:8867: 99 00 04  STA ram_obj_anim_id,Y
C - - - - - 0x02487A 09:886A: A9 0E     LDA #$0E
C - - - - - 0x02487C 09:886C: 99 57 06  STA ram_obj_0658,Y
C - - - - - 0x02487F 09:886F: A9 03     LDA #$03
C - - - - - 0x024881 09:8871: 8D F3 07  STA ram_07F3
C - - - - - 0x024884 09:8874: 4C F4 87  JMP loc_87F4
bra_8877:
C - - - - - 0x024887 09:8877: A9 16     LDA #$16
C - - - - - 0x024889 09:8879: 20 66 87  JSR sub_8766
C - - - - - 0x02488C 09:887C: 90 4D     BCC bra_88CB
C - - - - - 0x02488E 09:887E: A9 03     LDA #$03
C - - - - - 0x024890 09:8880: 8D F3 07  STA ram_07F3
C - - - - - 0x024893 09:8883: A9 63     LDA #$63
C - - - - - 0x024895 09:8885: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x024898 09:8888: A9 80     LDA #$80
C - - - - - 0x02489A 09:888A: 99 38 04  STA ram_obj_pos_X_hi,Y
C - - - - - 0x02489D 09:888D: 99 1C 04  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x0248A0 09:8890: A5 32     LDA ram_blk_hi
C - - - - - 0x0248A2 09:8892: C9 08     CMP #$08
C - - - - - 0x0248A4 09:8894: D0 10     BNE bra_88A6
C - - - - - 0x0248A6 09:8896: A5 33     LDA ram_blk_lo
C - - - - - 0x0248A8 09:8898: C9 02     CMP #$02
C - - - - - 0x0248AA 09:889A: F0 0A     BEQ bra_88A6
C - - - - - 0x0248AC 09:889C: A9 60     LDA #$60
C - - - - - 0x0248AE 09:889E: 99 1C 04  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x0248B1 09:88A1: A9 90     LDA #$90
C - - - - - 0x0248B3 09:88A3: 99 38 04  STA ram_obj_pos_X_hi,Y
bra_88A6:
C - - - - - 0x0248B6 09:88A6: A9 48     LDA #con_sound_orb
C - - - - - 0x0248B8 09:88A8: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x0248BB 09:88AB: 20 CE E5  JSR sub_0x03E5DE
C - - - - - 0x0248BE 09:88AE: A9 00     LDA #$00
C - - - - - 0x0248C0 09:88B0: 99 C1 05  STA ram_05C1_obj,Y
C - - - - - 0x0248C3 09:88B3: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x0248C6 09:88B6: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x0248C9 09:88B9: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0248CC 09:88BC: A5 08     LDA ram_0008_temp
C - - - - - 0x0248CE 09:88BE: D0 09     BNE bra_88C9
; A = 00
C - - - - - 0x0248D0 09:88C0: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0248D3 09:88C3: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x0248D6 09:88C6: 9D 00 04  STA ram_obj_anim_id,X
loc_88C9_SEC:   ; bzk optimize
bra_88C9:
C D 0 - - - 0x0248D9 09:88C9: 38        SEC
C - - - - - 0x0248DA 09:88CA: 60        RTS
loc_88CB_CLC:   ; bzk optimize
bra_88CB:
C D 0 - - - 0x0248DB 09:88CB: 18        CLC
C - - - - - 0x0248DC 09:88CC: 60        RTS



loc_88CD:
; bzk optimize, single JMP to here
C D 0 - - - 0x0248DD 09:88CD: A9 73     LDA #$73
C - - - - - 0x0248DF 09:88CF: 20 66 87  JSR sub_8766
C - - - - - 0x0248E2 09:88D2: A9 D0     LDA #$D0
C - - - - - 0x0248E4 09:88D4: 99 38 04  STA ram_obj_pos_X_hi,Y
C - - - - - 0x0248E7 09:88D7: A9 B0     LDA #$B0
C - - - - - 0x0248E9 09:88D9: 99 1C 04  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x0248EC 09:88DC: 4C 5B 88  JMP loc_885B



ofs_036_0x0248EF_08:
C - - J - - 0x0248EF 09:88DF: 98        TYA
sub_88E0:
ofs_044_0x0248F0_08:
; in
    ; A = 
        ; for ofs_044 case it's ram_000E_t005_subroutine_argument_A
C - - - - - 0x0248F0 09:88E0: 85 00     STA ram_0000_temp
C - - - - - 0x0248F2 09:88E2: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x0248F5 09:88E5: 29 F0     AND #$F0
C - - - - - 0x0248F7 09:88E7: F0 1B     BEQ bra_8904_RTS
C - - - - - 0x0248F9 09:88E9: A5 32     LDA ram_blk_hi
C - - - - - 0x0248FB 09:88EB: C9 0E     CMP #$0E
C - - - - - 0x0248FD 09:88ED: D0 0B     BNE bra_88FA
C - - - - - 0x0248FF 09:88EF: AD EC 07  LDA ram_07EC
C - - - - - 0x024902 09:88F2: C9 02     CMP #$02
C - - - - - 0x024904 09:88F4: D0 04     BNE bra_88FA
C - - - - - 0x024906 09:88F6: A9 47     LDA #con_sound_47
C - - - - - 0x024908 09:88F8: D0 02     BNE bra_88FC    ; jmp
bra_88FA:
C - - - - - 0x02490A 09:88FA: A9 2B     LDA #con_sound_2B
bra_88FC:
C - - - - - 0x02490C 09:88FC: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02490F 09:88FF: 20 22 89  JSR sub_8922
C - - - - - 0x024912 09:8902: 85 3D     STA ram_hp_boss
bra_8904_RTS:
C - - - - - 0x024914 09:8904: 60        RTS



sub_8905:
ofs_044_0x024915_0A:
; in
    ; A = 
        ; for ofs_044 case it's ram_000E_t005_subroutine_argument_A
C - - J - - 0x024915 09:8905: 85 00     STA ram_0000_temp
C - - - - - 0x024917 09:8907: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x02491A 09:890A: 29 F0     AND #$F0
C - - - - - 0x02491C 09:890C: F0 13     BEQ bra_8921_RTS
C - - - - - 0x02491E 09:890E: A9 2B     LDA #con_sound_2B
C - - - - - 0x024920 09:8910: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x024923 09:8913: 20 22 89  JSR sub_8922
C - - - - - 0x024926 09:8916: A5 3D     LDA ram_hp_boss
C - - - - - 0x024928 09:8918: 38        SEC
C - - - - - 0x024929 09:8919: E5 00     SBC ram_0000_temp
C - - - - - 0x02492B 09:891B: B0 02     BCS bra_891F_not_underflow
C - - - - - 0x02492D 09:891D: A9 00     LDA #$00
bra_891F_not_underflow:
C - - - - - 0x02492F 09:891F: 85 3D     STA ram_hp_boss
bra_8921_RTS:
C - - - - - 0x024931 09:8921: 60        RTS



sub_8922:
C - - - - - 0x024932 09:8922: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x024935 09:8925: 18        CLC
C - - - - - 0x024936 09:8926: 69 10     ADC #$10
C - - - - - 0x024938 09:8928: 4A        LSR
C - - - - - 0x024939 09:8929: 4A        LSR
C - - - - - 0x02493A 09:892A: 29 F8     AND #$F8
C - - - - - 0x02493C 09:892C: 18        CLC
C - - - - - 0x02493D 09:892D: 65 00     ADC ram_0000_temp
C - - - - - 0x02493F 09:892F: A8        TAY
C - - - - - 0x024940 09:8930: B9 53 89  LDA tbl_8953,Y
C - - - - - 0x024943 09:8933: 85 00     STA ram_0000_temp
C - - - - - 0x024945 09:8935: BD 7B 06  LDA ram_obj_hp,X
C - - - - - 0x024948 09:8938: 38        SEC
C - - - - - 0x024949 09:8939: E5 00     SBC ram_0000_temp
C - - - - - 0x02494B 09:893B: B0 12     BCS bra_894F
C - - - - - 0x02494D 09:893D: 18        CLC
C - - - - - 0x02494E 09:893E: 65 00     ADC ram_0000_temp
C - - - - - 0x024950 09:8940: 85 00     STA ram_0000_temp
C - - - - - 0x024952 09:8942: BD 7B 06  LDA ram_obj_hp,X
C - - - - - 0x024955 09:8945: D0 06     BNE bra_894D
C - - - - - 0x024957 09:8947: A9 00     LDA #$00
C - - - - - 0x024959 09:8949: 85 00     STA ram_0000_temp
C - - - - - 0x02495B 09:894B: F0 02     BEQ bra_894F    ; jmp
bra_894D:
C - - - - - 0x02495D 09:894D: A9 00     LDA #$00
bra_894F:
C - - - - - 0x02495F 09:894F: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x024962 09:8952: 60        RTS



tbl_8953:
; 00 
- - - - - - 0x024963 09:8953: 00        .byte $00   ; 00 
- - - - - - 0x024964 09:8954: 00        .byte $00   ; 01 
- - - - - - 0x024965 09:8955: 00        .byte $00   ; 02 
- - - - - - 0x024966 09:8956: 00        .byte $00   ; 03 
- - - - - - 0x024967 09:8957: 00        .byte $00   ; 04 
- - - - - - 0x024968 09:8958: 00        .byte $00   ; 05 
- - - - - - 0x024969 09:8959: 00        .byte $00   ; 06 
- - - - - - 0x02496A 09:895A: 00        .byte $00   ; 07 
; 08 
- - - - - - 0x02496B 09:895B: 04        .byte $04   ; 00 
- D 0 - - - 0x02496C 09:895C: 03        .byte $03   ; 01 
- - - - - - 0x02496D 09:895D: 03        .byte $03   ; 02 
- D 0 - - - 0x02496E 09:895E: 02        .byte $02   ; 03 
- D 0 - - - 0x02496F 09:895F: 01        .byte $01   ; 04 
- D 0 - - - 0x024970 09:8960: 01        .byte $01   ; 05 
- - - - - - 0x024971 09:8961: 00        .byte $00   ; 06 
- - - - - - 0x024972 09:8962: 00        .byte $00   ; 07 
; 10 
- - - - - - 0x024973 09:8963: 06        .byte $06   ; 00 
- D 0 - - - 0x024974 09:8964: 05        .byte $05   ; 01 
- D 0 - - - 0x024975 09:8965: 04        .byte $04   ; 02 
- D 0 - - - 0x024976 09:8966: 03        .byte $03   ; 03 
- D 0 - - - 0x024977 09:8967: 02        .byte $02   ; 04 
- D 0 - - - 0x024978 09:8968: 01        .byte $01   ; 05 
- - - - - - 0x024979 09:8969: 00        .byte $00   ; 06 
- - - - - - 0x02497A 09:896A: 00        .byte $00   ; 07 
; 18 
- - - - - - 0x02497B 09:896B: 08        .byte $08   ; 00 
- D 0 - - - 0x02497C 09:896C: 07        .byte $07   ; 01 
- D 0 - - - 0x02497D 09:896D: 06        .byte $06   ; 02 
- D 0 - - - 0x02497E 09:896E: 04        .byte $04   ; 03 
- D 0 - - - 0x02497F 09:896F: 03        .byte $03   ; 04 
- D 0 - - - 0x024980 09:8970: 02        .byte $02   ; 05 
- - - - - - 0x024981 09:8971: 00        .byte $00   ; 06 
- - - - - - 0x024982 09:8972: 00        .byte $00   ; 07 
; 20 
- - - - - - 0x024983 09:8973: 0A        .byte $0A   ; 00 
- - - - - - 0x024984 09:8974: 09        .byte $09   ; 01 
- - - - - - 0x024985 09:8975: 08        .byte $08   ; 02 
- - - - - - 0x024986 09:8976: 05        .byte $05   ; 03 
- - - - - - 0x024987 09:8977: 04        .byte $04   ; 04 
- - - - - - 0x024988 09:8978: 02        .byte $02   ; 05 
- - - - - - 0x024989 09:8979: 00        .byte $00   ; 06 
- - - - - - 0x02498A 09:897A: 00        .byte $00   ; 07 
; 28 
- - - - - - 0x02498B 09:897B: 0C        .byte $0C   ; 00 
- - - - - - 0x02498C 09:897C: 0B        .byte $0B   ; 01 
- - - - - - 0x02498D 09:897D: 0A        .byte $0A   ; 02 
- - - - - - 0x02498E 09:897E: 06        .byte $06   ; 03 
- - - - - - 0x02498F 09:897F: 05        .byte $05   ; 04 
- D 0 - - - 0x024990 09:8980: 03        .byte $03   ; 05 
- - - - - - 0x024991 09:8981: 00        .byte $00   ; 06 
- - - - - - 0x024992 09:8982: 00        .byte $00   ; 07 
; 30 
- - - - - - 0x024993 09:8983: 0E        .byte $0E   ; 00 
- D 0 - - - 0x024994 09:8984: 0D        .byte $0D   ; 01 
- D 0 - - - 0x024995 09:8985: 0C        .byte $0C   ; 02 
- D 0 - - - 0x024996 09:8986: 08        .byte $08   ; 03 
- D 0 - - - 0x024997 09:8987: 06        .byte $06   ; 04 
- D 0 - - - 0x024998 09:8988: 04        .byte $04   ; 05 
- - - - - - 0x024999 09:8989: 00        .byte $00   ; 06 
- - - - - - 0x02499A 09:898A: 00        .byte $00   ; 07 



ofs_042_898B_28:
C - - J - - 0x02499B 09:898B: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x02499E 09:898E: 29 7F     AND #$7F
C - - - - - 0x0249A0 09:8990: C9 5C     CMP #$5C
C - - - - - 0x0249A2 09:8992: F0 34     BEQ bra_89C8
C - - - - - 0x0249A4 09:8994: A9 00     LDA #$00
C - - - - - 0x0249A6 09:8996: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x0249A9 09:8999: A9 40     LDA #con_obj_flag_40
C - - - - - 0x0249AB 09:899B: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0249AE 09:899E: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0249B1 09:89A1: 18        CLC
C - - - - - 0x0249B2 09:89A2: 69 10     ADC #$10
C - - - - - 0x0249B4 09:89A4: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0249B7 09:89A7: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x0249B9 09:89A9: A0 08     LDY #$08
C - - - - - 0x0249BB 09:89AB: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x0249BE 09:89AE: A9 DC     LDA #$DC
C - - - - - 0x0249C0 09:89B0: 4C 4F 86  JMP loc_864F



ofs_042_89B3_1A:
C - - J - - 0x0249C3 09:89B3: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x0249C6 09:89B6: 29 7F     AND #$7F
C - - - - - 0x0249C8 09:89B8: C9 30     CMP #$30
C - - - - - 0x0249CA 09:89BA: F0 0C     BEQ bra_89C8
C - - - - - 0x0249CC 09:89BC: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x0249CE 09:89BE: A0 08     LDY #$08
C - - - - - 0x0249D0 09:89C0: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x0249D3 09:89C3: A9 30     LDA #$30
C - - - - - 0x0249D5 09:89C5: 4C 4F 86  JMP loc_864F
bra_89C8:
C - - - - - 0x0249D8 09:89C8: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x0249DB 09:89CB: C9 0D     CMP #$0D
C - - - - - 0x0249DD 09:89CD: D0 1F     BNE bra_89EE_RTS
C - - - - - 0x0249DF 09:89CF: A5 32     LDA ram_blk_hi
C - - - - - 0x0249E1 09:89D1: C9 0A     CMP #$0A
C - - - - - 0x0249E3 09:89D3: F0 0E     BEQ bra_89E3
C - - - - - 0x0249E5 09:89D5: C9 0B     CMP #$0B
C - - - - - 0x0249E7 09:89D7: F0 0A     BEQ bra_89E3
C - - - - - 0x0249E9 09:89D9: C9 03     CMP #$03
C - - - - - 0x0249EB 09:89DB: D0 11     BNE bra_89EE_RTS
C - - - - - 0x0249ED 09:89DD: A5 33     LDA ram_blk_lo
C - - - - - 0x0249EF 09:89DF: C9 04     CMP #$04
C - - - - - 0x0249F1 09:89E1: D0 0B     BNE bra_89EE_RTS
bra_89E3:
C - - - - - 0x0249F3 09:89E3: 4C 3A 87  JMP loc_873A_clear_object_data
- - - - - - 0x0249F6 09:89E6: BD EF 05  LDA ram_05EF_obj,X
- - - - - - 0x0249F9 09:89E9: 29 80     AND #$80
- - - - - - 0x0249FB 09:89EB: 9D EF 05  STA ram_05EF_obj,X
bra_89EE_RTS:
C - - - - - 0x0249FE 09:89EE: 60        RTS



tbl_89EF:
- - - - - - 0x0249FF 09:89EF: BB 8A     .word _off026_8ABB_00   ; never used 0x0240F9
- D 0 - - - 0x024A01 09:89F1: BD 8A     .word _off026_8ABD_01
- D 0 - - - 0x024A03 09:89F3: D5 8A     .word _off026_8AD5_02
- - - - - - 0x024A05 09:89F5: E1 8A     .word _off026_8AE1_03
- - - - - - 0x024A07 09:89F7: EB 8A     .word _off026_8AEB_04
- - - - - - 0x024A09 09:89F9: F3 8A     .word _off026_8AF3_05
- - - - - - 0x024A0B 09:89FB: FD 8A     .word _off026_8AFD_06
- D 0 - - - 0x024A0D 09:89FD: 03 8B     .word _off026_8B03_07
- - - - - - 0x024A0F 09:89FF: 0B 8B     .word _off026_8B0B_08
- D 0 - - - 0x024A11 09:8A01: 11 8B     .word _off026_8B11_09
- D 0 - - - 0x024A13 09:8A03: 17 8B     .word _off026_8B17_0A
- D 0 - - - 0x024A15 09:8A05: 2B 8B     .word _off026_8B2B_0B
- D 0 - - - 0x024A17 09:8A07: 31 8B     .word _off026_8B31_0C
- D 0 - - - 0x024A19 09:8A09: 37 8B     .word _off026_8B37_0D
- D 0 - - - 0x024A1B 09:8A0B: 3D 8B     .word _off026_8B3D_0E
- D 0 - - - 0x024A1D 09:8A0D: 7B 8B     .word _off026_8B7B_0F
- D 0 - - - 0x024A1F 09:8A0F: 71 8B     .word _off026_8B71_10
- D 0 - - - 0x024A21 09:8A11: 4B 8B     .word _off026_8B4B_11
- D 0 - - - 0x024A23 09:8A13: 8D 8B     .word _off026_8B8D_12
- D 0 - - - 0x024A25 09:8A15: AD 8B     .word _off026_8BAD_13
- D 0 - - - 0x024A27 09:8A17: 9B 8B     .word _off026_8B9B_14
- D 0 - - - 0x024A29 09:8A19: A7 8B     .word _off026_8BA7_15
- D 0 - - - 0x024A2B 09:8A1B: AF 8B     .word _off026_8BAF_16
- D 0 - - - 0x024A2D 09:8A1D: B9 8B     .word _off026_8BB9_17
- D 0 - - - 0x024A2F 09:8A1F: BF 8B     .word _off026_8BBF_18
- D 0 - - - 0x024A31 09:8A21: CD 8B     .word _off026_8BCD_19
- D 0 - - - 0x024A33 09:8A23: DB 8B     .word _off026_8BDB_1A
- D 0 - - - 0x024A35 09:8A25: E5 8B     .word _off026_8BE5_1B
- D 0 - - - 0x024A37 09:8A27: ED 8B     .word _off026_8BED_1C
- D 0 - - - 0x024A39 09:8A29: 05 8C     .word _off026_8C05_1D
- D 0 - - - 0x024A3B 09:8A2B: 0B 8C     .word _off026_8C0B_1E
- D 0 - - - 0x024A3D 09:8A2D: 15 8C     .word _off026_8C15_1F
- D 0 - - - 0x024A3F 09:8A2F: 1F 8C     .word _off026_8C1F_20
- D 0 - - - 0x024A41 09:8A31: 33 8C     .word _off026_8C33_21
- D 0 - - - 0x024A43 09:8A33: 39 8C     .word _off026_8C39_22
- D 0 - - - 0x024A45 09:8A35: 3B 8C     .word _off026_8C3B_23
- D 0 - - - 0x024A47 09:8A37: 4D 8C     .word _off026_8C4D_24
- D 0 - - - 0x024A49 09:8A39: 69 8C     .word _off026_8C69_25
- D 0 - - - 0x024A4B 09:8A3B: 5B 8C     .word _off026_8C5B_26
- D 0 - - - 0x024A4D 09:8A3D: 89 8C     .word _off026_8C89_27
- D 0 - - - 0x024A4F 09:8A3F: 97 8C     .word _off026_8C97_28
- D 0 - - - 0x024A51 09:8A41: B5 8C     .word _off026_8CB5_29
- D 0 - - - 0x024A53 09:8A43: CD 8C     .word _off026_8CCD_2A
- D 0 - - - 0x024A55 09:8A45: E5 8C     .word _off026_8CE5_2B
- D 0 - - - 0x024A57 09:8A47: EB 8C     .word _off026_8CEB_2C
- D 0 - - - 0x024A59 09:8A49: 03 8D     .word _off026_8D03_2D
- - - - - - 0x024A5B 09:8A4B: 1B 8D     .word _off026_8D1B_2E
- D 0 - - - 0x024A5D 09:8A4D: 21 8D     .word _off026_8D21_2F
- D 0 - - - 0x024A5F 09:8A4F: 69 8D     .word _off026_8D69_30
- D 0 - - - 0x024A61 09:8A51: 85 8D     .word _off026_8D85_31
- D 0 - - - 0x024A63 09:8A53: A1 8D     .word _off026_8DA1_32
- - - - - - 0x024A65 09:8A55: AD 8D     .word _off026_8DAD_33
- D 0 - - - 0x024A67 09:8A57: B5 8D     .word _off026_8DB5_34
- D 0 - - - 0x024A69 09:8A59: BB 8D     .word _off026_8DBB_35
- D 0 - - - 0x024A6B 09:8A5B: C1 8D     .word _off026_8DC1_36
- D 0 - - - 0x024A6D 09:8A5D: C7 8D     .word _off026_8DC7_37
- D 0 - - - 0x024A6F 09:8A5F: EB 8D     .word _off026_8DEB_38
- D 0 - - - 0x024A71 09:8A61: 09 8E     .word _off026_8E09_39
- D 0 - - - 0x024A73 09:8A63: 0F 8E     .word _off026_8E0F_3A
- D 0 - - - 0x024A75 09:8A65: 21 8E     .word _off026_8E21_3B
- D 0 - - - 0x024A77 09:8A67: 2B 8E     .word _off026_8E2B_3C
- D 0 - - - 0x024A79 09:8A69: 33 8E     .word _off026_8E33_3D
- D 0 - - - 0x024A7B 09:8A6B: 49 8E     .word _off026_8E49_3E
- D 0 - - - 0x024A7D 09:8A6D: 57 8E     .word _off026_8E57_3F
- D 0 - - - 0x024A7F 09:8A6F: 5D 8E     .word _off026_8E5D_40
- D 0 - - - 0x024A81 09:8A71: 63 8E     .word _off026_8E63_41
- D 0 - - - 0x024A83 09:8A73: 77 8E     .word _off026_8E77_42
- - - - - - 0x024A85 09:8A75: 89 8E     .word _off026_8E89_43
- D 0 - - - 0x024A87 09:8A77: 8F 8E     .word _off026_8E8F_44
- D 0 - - - 0x024A89 09:8A79: A1 8E     .word _off026_8EA1_45
- D 0 - - - 0x024A8B 09:8A7B: AB 8E     .word _off026_8EAB_46
- D 0 - - - 0x024A8D 09:8A7D: B1 8E     .word _off026_8EB1_47
- D 0 - - - 0x024A8F 09:8A7F: B7 8E     .word _off026_8EB7_48
- D 0 - - - 0x024A91 09:8A81: BD 8E     .word _off026_8EBD_49
- D 0 - - - 0x024A93 09:8A83: D7 8E     .word _off026_8ED7_4A
- D 0 - - - 0x024A95 09:8A85: F5 8E     .word _off026_8EF5_4B
- D 0 - - - 0x024A97 09:8A87: FB 8E     .word _off026_8EFB_4C
- D 0 - - - 0x024A99 09:8A89: 27 8F     .word _off026_8F27_4D
- D 0 - - - 0x024A9B 09:8A8B: F5 8E     .word _off026_8EF5_4E
- D 0 - - - 0x024A9D 09:8A8D: 4F 8F     .word _off026_8F4F_4F
- D 0 - - - 0x024A9F 09:8A8F: 53 8F     .word _off026_8F53_50
- D 0 - - - 0x024AA1 09:8A91: 57 8F     .word _off026_8F57_51
- D 0 - - - 0x024AA3 09:8A93: 67 8F     .word _off026_8F67_52
- D 0 - - - 0x024AA5 09:8A95: 83 8F     .word _off026_8F83_53
- D 0 - - - 0x024AA7 09:8A97: D3 8F     .word _off026_8FD3_54
- D 0 - - - 0x024AA9 09:8A99: 11 90     .word _off026_9011_55
- D 0 - - - 0x024AAB 09:8A9B: B7 8B     .word _off026_8BB7_56
- D 0 - - - 0x024AAD 09:8A9D: 15 90     .word _off026_9015_57
- D 0 - - - 0x024AAF 09:8A9F: 2D 90     .word _off026_902D_58
- D 0 - - - 0x024AB1 09:8AA1: 31 90     .word _off026_9031_59
- D 0 - - - 0x024AB3 09:8AA3: 49 90     .word _off026_9049_5A
- D 0 - - - 0x024AB5 09:8AA5: 37 8D     .word _off026_8D37_5B
- D 0 - - - 0x024AB7 09:8AA7: 4D 8D     .word _off026_8D4D_5C
- D 0 - - - 0x024AB9 09:8AA9: 4D 90     .word _off026_904D_5D
- D 0 - - - 0x024ABB 09:8AAB: 5B 90     .word _off026_905B_5E
- D 0 - - - 0x024ABD 09:8AAD: 5F 90     .word _off026_905F_5F
- D 0 - - - 0x024ABF 09:8AAF: 7B 90     .word _off026_907B_60
- - - - - - 0x024AC1 09:8AB1: 95 90     .word _off026_9095_61
- D 0 - - - 0x024AC3 09:8AB3: 95 90     .word _off026_9095_62
- D 0 - - - 0x024AC5 09:8AB5: A1 90     .word _off026_90A1_63
- D 0 - - - 0x024AC7 09:8AB7: 53 8E     .word _off026_8E53_64
- D 0 - - - 0x024AC9 09:8AB9: BB 8A     .word _off026_8ABB_65



_off026_8ABB_00:
_off026_8ABB_65:
; 00 
- D 0 - I - 0x024ACB 09:8ABB: 4A        .byte con_8671_4A   ; 
- D 0 - I - 0x024ACC 09:8ABC: 01        .byte con_90A7_01   ; 



_off026_8ABD_01:
; 00 
- D 0 - I - 0x024ACD 09:8ABD: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024ACE 09:8ABE: 0F        .byte con_90A7_0F   ; 
; 01 
- D 0 - I - 0x024ACF 09:8ABF: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024AD0 09:8AC0: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024AD1 09:8AC1: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024AD2 09:8AC2: 02        .byte con_90A7_02   ; 
; 03 
- D 0 - I - 0x024AD3 09:8AC3: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024AD4 09:8AC4: 0F        .byte con_90A7_0F   ; 
; 04 
- D 0 - I - 0x024AD5 09:8AC5: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024AD6 09:8AC6: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024AD7 09:8AC7: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024AD8 09:8AC8: 02        .byte con_90A7_02   ; 
; 06 
- D 0 - I - 0x024AD9 09:8AC9: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024ADA 09:8ACA: 0F        .byte con_90A7_0F   ; 
; 07 
- D 0 - I - 0x024ADB 09:8ACB: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024ADC 09:8ACC: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024ADD 09:8ACD: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024ADE 09:8ACE: 02        .byte con_90A7_02   ; 
; 09 
- D 0 - I - 0x024ADF 09:8ACF: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024AE0 09:8AD0: 0F        .byte con_90A7_0F   ; 
; 0A 
- D 0 - I - 0x024AE1 09:8AD1: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024AE2 09:8AD2: 01        .byte con_90A7_01   ; 
; 0B 
- D 0 - I - 0x024AE3 09:8AD3: 1C        .byte con_8671_1C   ; 
- D 0 - I - 0x024AE4 09:8AD4: 01        .byte con_90A7_01   ; 



_off026_8AD5_02:
; 00 
- D 0 - I - 0x024AE5 09:8AD5: 01        .byte con_8671_01   ; 
- D 0 - I - 0x024AE6 09:8AD6: 03        .byte con_90A7_03   ; 
; 01 
- D 0 - I - 0x024AE7 09:8AD7: 02        .byte con_8671_02   ; 
- D 0 - I - 0x024AE8 09:8AD8: 03        .byte con_90A7_03   ; 
; 02 
- D 0 - I - 0x024AE9 09:8AD9: 28        .byte con_8671_28   ; 
- D 0 - I - 0x024AEA 09:8ADA: 67        .byte con_90A7_67   ; 
; 03 
- D 0 - I - 0x024AEB 09:8ADB: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024AEC 09:8ADC: 0F        .byte con_90A7_0F   ; 
; 04 
- D 0 - I - 0x024AED 09:8ADD: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024AEE 09:8ADE: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024AEF 09:8ADF: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024AF0 09:8AE0: 01        .byte con_90A7_01   ; 



_off026_8AE1_03:
; 00 
- - - - - - 0x024AF1 09:8AE1: 00        .byte con_8671_00   ; 
- - - - - - 0x024AF2 09:8AE2: 04        .byte con_90A7_04   ; 
; 01 
- - - - - - 0x024AF3 09:8AE3: 05        .byte con_8671_05   ; 
- - - - - - 0x024AF4 09:8AE4: 01        .byte con_90A7_01   ; 
; 02 
- - - - - - 0x024AF5 09:8AE5: 06        .byte con_8671_06   ; 
- - - - - - 0x024AF6 09:8AE6: 01        .byte con_90A7_01   ; 
; 03 
- - - - - - 0x024AF7 09:8AE7: 00        .byte con_8671_00   ; 
- - - - - - 0x024AF8 09:8AE8: 04        .byte con_90A7_04   ; 
; 04 
- - - - - - 0x024AF9 09:8AE9: 07        .byte con_8671_07   ; 
- - - - - - 0x024AFA 09:8AEA: 05        .byte con_90A7_05   ; 



_off026_8AEB_04:
; 00 
- - - - - - 0x024AFB 09:8AEB: 08        .byte con_8671_08   ; 
- - - - - - 0x024AFC 09:8AEC: 06        .byte con_90A7_06   ; 
; 01 
- - - - - - 0x024AFD 09:8AED: 05        .byte con_8671_05   ; 
- - - - - - 0x024AFE 09:8AEE: 01        .byte con_90A7_01   ; 
; 02 
- - - - - - 0x024AFF 09:8AEF: 06        .byte con_8671_06   ; 
- - - - - - 0x024B00 09:8AF0: 01        .byte con_90A7_01   ; 
; 03 
- - - - - - 0x024B01 09:8AF1: 03        .byte con_8671_03   ; 
- - - - - - 0x024B02 09:8AF2: 01        .byte con_90A7_01   ; 



_off026_8AF3_05:
; 00 
- - - - - - 0x024B03 09:8AF3: 00        .byte con_8671_00   ; 
- - - - - - 0x024B04 09:8AF4: 04        .byte con_90A7_04   ; 
; 01 
- - - - - - 0x024B05 09:8AF5: 05        .byte con_8671_05   ; 
- - - - - - 0x024B06 09:8AF6: 01        .byte con_90A7_01   ; 
; 02 
- - - - - - 0x024B07 09:8AF7: 06        .byte con_8671_06   ; 
- - - - - - 0x024B08 09:8AF8: 01        .byte con_90A7_01   ; 
; 03 
- - - - - - 0x024B09 09:8AF9: 00        .byte con_8671_00   ; 
- - - - - - 0x024B0A 09:8AFA: 04        .byte con_90A7_04   ; 
; 04 
- - - - - - 0x024B0B 09:8AFB: 09        .byte con_8671_09   ; 
- - - - - - 0x024B0C 09:8AFC: 07        .byte con_90A7_07   ; 



_off026_8AFD_06:
; 00 
- - - - - - 0x024B0D 09:8AFD: 08        .byte con_8671_08   ; 
- - - - - - 0x024B0E 09:8AFE: 08        .byte con_90A7_08   ; 
; 01 
- - - - - - 0x024B0F 09:8AFF: 05        .byte con_8671_05   ; 
- - - - - - 0x024B10 09:8B00: 01        .byte con_90A7_01   ; 
; 02 
- - - - - - 0x024B11 09:8B01: 04        .byte con_8671_04   ; 
- - - - - - 0x024B12 09:8B02: 01        .byte con_90A7_01   ; 



_off026_8B03_07:
; 00 
- D 0 - I - 0x024B13 09:8B03: 41        .byte con_8671_41   ; 
- D 0 - I - 0x024B14 09:8B04: 09        .byte con_90A7_09   ; 
; 01 
- D 0 - I - 0x024B15 09:8B05: 42        .byte con_8671_42   ; 
- D 0 - I - 0x024B16 09:8B06: 22        .byte con_90A7_22   ; 
; 02 
- D 0 - I - 0x024B17 09:8B07: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B18 09:8B08: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024B19 09:8B09: 03        .byte con_8671_03   ; 
- D 0 - I - 0x024B1A 09:8B0A: 01        .byte con_90A7_01   ; 



_off026_8B0B_08:
; 00 
- - - - - - 0x024B1B 09:8B0B: 0E        .byte con_8671_0E   ; 
- - - - - - 0x024B1C 09:8B0C: 01        .byte con_90A7_01   ; 
; 01 
- - - - - - 0x024B1D 09:8B0D: 02        .byte con_8671_02   ; 
- - - - - - 0x024B1E 09:8B0E: 0A        .byte con_90A7_0A   ; 
; 02 
- - - - - - 0x024B1F 09:8B0F: 04        .byte con_8671_04   ; 
- - - - - - 0x024B20 09:8B10: 01        .byte con_90A7_01   ; 



_off026_8B11_09:
; 00 
- D 0 - I - 0x024B21 09:8B11: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024B22 09:8B12: 0B        .byte con_90A7_0B   ; 
; 01 
- D 0 - I - 0x024B23 09:8B13: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B24 09:8B14: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024B25 09:8B15: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024B26 09:8B16: 01        .byte con_90A7_01   ; 



_off026_8B17_0A:
; 00 
- D 0 - I - 0x024B27 09:8B17: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024B28 09:8B18: 0D        .byte con_90A7_0D   ; 
; 01 
- D 0 - I - 0x024B29 09:8B19: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B2A 09:8B1A: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024B2B 09:8B1B: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024B2C 09:8B1C: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024B2D 09:8B1D: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024B2E 09:8B1E: 00        .byte con_90A7_00   ; 
; 04 
- D 0 - I - 0x024B2F 09:8B1F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B30 09:8B20: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024B31 09:8B21: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024B32 09:8B22: 0B        .byte con_90A7_0B   ; 
; 06 
- D 0 - I - 0x024B33 09:8B23: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024B34 09:8B24: 0E        .byte con_90A7_0E   ; 
; 07 
- D 0 - I - 0x024B35 09:8B25: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B36 09:8B26: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024B37 09:8B27: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024B38 09:8B28: 6D        .byte con_90A7_6D   ; 
; 09 
- D 0 - I - 0x024B39 09:8B29: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024B3A 09:8B2A: 01        .byte con_90A7_01   ; 



_off026_8B2B_0B:
; 00 
- D 0 - I - 0x024B3B 09:8B2B: 01        .byte con_8671_01   ; 
- D 0 - I - 0x024B3C 09:8B2C: 04        .byte con_90A7_04   ; 
; 01 
- D 0 - I - 0x024B3D 09:8B2D: 02        .byte con_8671_02   ; 
- D 0 - I - 0x024B3E 09:8B2E: 04        .byte con_90A7_04   ; 
; 02 
- D 0 - I - 0x024B3F 09:8B2F: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024B40 09:8B30: 01        .byte con_90A7_01   ; 



_off026_8B31_0C:
; 00 
- D 0 - I - 0x024B41 09:8B31: 0F        .byte con_8671_0F   ; 
- D 0 - I - 0x024B42 09:8B32: 10        .byte con_90A7_10   ; 
; 01 
- D 0 - I - 0x024B43 09:8B33: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B44 09:8B34: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024B45 09:8B35: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024B46 09:8B36: 01        .byte con_90A7_01   ; 



_off026_8B37_0D:
; 00 
- D 0 - I - 0x024B47 09:8B37: 00        .byte con_8671_00   ; 
- D 0 - I - 0x024B48 09:8B38: 11        .byte con_90A7_11   ; 
; 01 
- D 0 - I - 0x024B49 09:8B39: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B4A 09:8B3A: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024B4B 09:8B3B: 03        .byte con_8671_03   ; 
- D 0 - I - 0x024B4C 09:8B3C: 01        .byte con_90A7_01   ; 



_off026_8B3D_0E:
; 00 
- D 0 - I - 0x024B4D 09:8B3D: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024B4E 09:8B3E: 76        .byte con_90A7_76   ; 
; 01 
- D 0 - I - 0x024B4F 09:8B3F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B50 09:8B40: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024B51 09:8B41: 3A        .byte con_8671_play_sound   ; 
- D 0 - I - 0x024B52 09:8B42: 13        .byte con_90A7_13   ; 
; 03 
- D 0 - I - 0x024B53 09:8B43: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024B54 09:8B44: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024B55 09:8B45: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024B56 09:8B46: 14        .byte con_90A7_14   ; 
; 05 
- D 0 - I - 0x024B57 09:8B47: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B58 09:8B48: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024B59 09:8B49: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024B5A 09:8B4A: 01        .byte con_90A7_01   ; 



_off026_8B4B_11:
; 00 
- - - - - - 0x024B5B 09:8B4B: 0B        .byte con_8671_0B   ; 
- - - - - - 0x024B5C 09:8B4C: 15        .byte con_90A7_15   ; 
; 01 
- D 0 - I - 0x024B5D 09:8B4D: 3F        .byte con_8671_3F   ; 
- D 0 - I - 0x024B5E 09:8B4E: 16        .byte con_90A7_16   ; 
; 02 
- D 0 - I - 0x024B5F 09:8B4F: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024B60 09:8B50: 15        .byte con_90A7_15   ; 
; 03 
- D 0 - I - 0x024B61 09:8B51: 39        .byte con_8671_39   ; 
- D 0 - I - 0x024B62 09:8B52: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024B63 09:8B53: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B64 09:8B54: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024B65 09:8B55: 3E        .byte con_8671_3E   ; 
- D 0 - I - 0x024B66 09:8B56: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024B67 09:8B57: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024B68 09:8B58: 17        .byte con_90A7_17   ; 
; 07 
- D 0 - I - 0x024B69 09:8B59: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B6A 09:8B5A: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024B6B 09:8B5B: 3C        .byte con_8671_3C   ; 
- D 0 - I - 0x024B6C 09:8B5C: 15        .byte con_90A7_15   ; 
; 09 
- D 0 - I - 0x024B6D 09:8B5D: 39        .byte con_8671_39   ; 
- D 0 - I - 0x024B6E 09:8B5E: 01        .byte con_90A7_01   ; 
; 0A 
- D 0 - I - 0x024B6F 09:8B5F: 3B        .byte con_8671_3B   ; 
- D 0 - I - 0x024B70 09:8B60: 15        .byte con_90A7_15   ; 
; 0B 
- D 0 - I - 0x024B71 09:8B61: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024B72 09:8B62: 0D        .byte con_90A7_0D   ; 
; 0C 
- D 0 - I - 0x024B73 09:8B63: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B74 09:8B64: 01        .byte con_90A7_01   ; 
; 0D 
- D 0 - I - 0x024B75 09:8B65: 3E        .byte con_8671_3E   ; 
- D 0 - I - 0x024B76 09:8B66: 01        .byte con_90A7_01   ; 
; 0E 
- D 0 - I - 0x024B77 09:8B67: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024B78 09:8B68: 15        .byte con_90A7_15   ; 
; 0F 
- D 0 - I - 0x024B79 09:8B69: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B7A 09:8B6A: 01        .byte con_90A7_01   ; 
; 10 
- D 0 - I - 0x024B7B 09:8B6B: 3D        .byte con_8671_3D   ; 
- D 0 - I - 0x024B7C 09:8B6C: 18        .byte con_90A7_18   ; 
; 11 
- D 0 - I - 0x024B7D 09:8B6D: 3B        .byte con_8671_3B   ; 
- D 0 - I - 0x024B7E 09:8B6E: 01        .byte con_90A7_01   ; 
; 12 
- D 0 - I - 0x024B7F 09:8B6F: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024B80 09:8B70: 01        .byte con_90A7_01   ; 



_off026_8B71_10:
; 00 
- D 0 - I - 0x024B81 09:8B71: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024B82 09:8B72: 19        .byte con_90A7_19   ; 
; 01 
- D 0 - I - 0x024B83 09:8B73: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B84 09:8B74: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024B85 09:8B75: 00        .byte con_8671_00   ; 
- D 0 - I - 0x024B86 09:8B76: 1A        .byte con_90A7_1A   ; 
; 03 
- D 0 - I - 0x024B87 09:8B77: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B88 09:8B78: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024B89 09:8B79: 40        .byte con_8671_40   ; 
- D 0 - I - 0x024B8A 09:8B7A: 1B        .byte con_90A7_1B   ; 



_off026_8B7B_0F:
; 00 
- D 0 - I - 0x024B8B 09:8B7B: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024B8C 09:8B7C: 19        .byte con_90A7_19   ; 
; 01 
- D 0 - I - 0x024B8D 09:8B7D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024B8E 09:8B7E: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024B8F 09:8B7F: 3F        .byte con_8671_3F   ; 
- D 0 - I - 0x024B90 09:8B80: 1C        .byte con_90A7_1C   ; 
; 03 
- D 0 - I - 0x024B91 09:8B81: 11        .byte con_8671_11   ; 
- D 0 - I - 0x024B92 09:8B82: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024B93 09:8B83: 12        .byte con_8671_12   ; 
- D 0 - I - 0x024B94 09:8B84: 15        .byte con_90A7_15   ; 
; 05 
- - - - - - 0x024B95 09:8B85: 3F        .byte con_8671_3F   ; 
- - - - - - 0x024B96 09:8B86: 16        .byte con_90A7_16   ; 
; 06 
- - - - - - 0x024B97 09:8B87: 0B        .byte con_8671_0B   ; 
- - - - - - 0x024B98 09:8B88: 0D        .byte con_90A7_0D   ; 
; 07 
- - - - - - 0x024B99 09:8B89: 05        .byte con_8671_05   ; 
- - - - - - 0x024B9A 09:8B8A: 01        .byte con_90A7_01   ; 
; 08 
- - - - - - 0x024B9B 09:8B8B: 04        .byte con_8671_04   ; 
- - - - - - 0x024B9C 09:8B8C: 01        .byte con_90A7_01   ; 



_off026_8B8D_12:
; 00 
- D 0 - I - 0x024B9D 09:8B8D: 17        .byte con_8671_17   ; 
- D 0 - I - 0x024B9E 09:8B8E: 1D        .byte con_90A7_1D   ; 
; 01 
- D 0 - I - 0x024B9F 09:8B8F: 16        .byte con_8671_16   ; 
- D 0 - I - 0x024BA0 09:8B90: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024BA1 09:8B91: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024BA2 09:8B92: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024BA3 09:8B93: 17        .byte con_8671_17   ; 
- D 0 - I - 0x024BA4 09:8B94: 1E        .byte con_90A7_1E   ; 
; 04 
- D 0 - I - 0x024BA5 09:8B95: 16        .byte con_8671_16   ; 
- D 0 - I - 0x024BA6 09:8B96: 0B        .byte con_90A7_0B   ; 
; 05 
- D 0 - I - 0x024BA7 09:8B97: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024BA8 09:8B98: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024BA9 09:8B99: 03        .byte con_8671_03   ; 
- D 0 - I - 0x024BAA 09:8B9A: 01        .byte con_90A7_01   ; 



_off026_8B9B_14:
; 00 
- D 0 - I - 0x024BAB 09:8B9B: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024BAC 09:8B9C: 0F        .byte con_90A7_0F   ; 
; 01 
- D 0 - I - 0x024BAD 09:8B9D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024BAE 09:8B9E: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024BAF 09:8B9F: 14        .byte con_8671_14   ; 
- D 0 - I - 0x024BB0 09:8BA0: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024BB1 09:8BA1: 01        .byte con_8671_01   ; 
- D 0 - I - 0x024BB2 09:8BA2: 1F        .byte con_90A7_1F   ; 
; 04 
- D 0 - I - 0x024BB3 09:8BA3: 02        .byte con_8671_02   ; 
- D 0 - I - 0x024BB4 09:8BA4: 1F        .byte con_90A7_1F   ; 
; 05 
- D 0 - I - 0x024BB5 09:8BA5: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024BB6 09:8BA6: 01        .byte con_90A7_01   ; 



_off026_8BA7_15:
; 00 
- D 0 - I - 0x024BB7 09:8BA7: 0E        .byte con_8671_0E   ; 
- D 0 - I - 0x024BB8 09:8BA8: 01        .byte con_90A7_01   ; 
; 01 
- D 0 - I - 0x024BB9 09:8BA9: 02        .byte con_8671_02   ; 
- D 0 - I - 0x024BBA 09:8BAA: 0A        .byte con_90A7_0A   ; 
; 02 
- D 0 - I - 0x024BBB 09:8BAB: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024BBC 09:8BAC: 01        .byte con_90A7_01   ; 



_off026_8BAD_13:
; 00 
- D 0 - I - 0x024BBD 09:8BAD: 15        .byte con_8671_15   ; 
- D 0 - I - 0x024BBE 09:8BAE: 20        .byte con_90A7_20   ; 



_off026_8BAF_16:
; 00 
- D 0 - I - 0x024BBF 09:8BAF: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024BC0 09:8BB0: 0B        .byte con_90A7_0B   ; 
; 01 
- D 0 - I - 0x024BC1 09:8BB1: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024BC2 09:8BB2: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024BC3 09:8BB3: 00        .byte con_8671_00   ; 
- D 0 - I - 0x024BC4 09:8BB4: 21        .byte con_90A7_21   ; 
; 03 
- D 0 - I - 0x024BC5 09:8BB5: 21        .byte con_8671_21   ; 
- D 0 - I - 0x024BC6 09:8BB6: 01        .byte con_90A7_01   ; 



_off026_8BB7_56:
; 00 
- D 0 - I - 0x024BC7 09:8BB7: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024BC8 09:8BB8: 01        .byte con_90A7_01   ; 



_off026_8BB9_17:
; 00 
- D 0 - I - 0x024BC9 09:8BB9: 0E        .byte con_8671_0E   ; 
- D 0 - I - 0x024BCA 09:8BBA: 01        .byte con_90A7_01   ; 
; 01 
- D 0 - I - 0x024BCB 09:8BBB: 18        .byte con_8671_18   ; 
- D 0 - I - 0x024BCC 09:8BBC: 03        .byte con_90A7_03   ; 
; 02 
- - - - - - 0x024BCD 09:8BBD: 21        .byte con_8671_21   ; 
- - - - - - 0x024BCE 09:8BBE: 01        .byte con_90A7_01   ; 



_off026_8BBF_18:
; 00 
- D 0 - I - 0x024BCF 09:8BBF: 19        .byte con_8671_19   ; 
- D 0 - I - 0x024BD0 09:8BC0: 17        .byte con_90A7_17   ; 
; 01 
- D 0 - I - 0x024BD1 09:8BC1: 08        .byte con_8671_08   ; 
- D 0 - I - 0x024BD2 09:8BC2: 22        .byte con_90A7_22   ; 
; 02 
- D 0 - I - 0x024BD3 09:8BC3: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024BD4 09:8BC4: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024BD5 09:8BC5: 03        .byte con_8671_03   ; 
- D 0 - I - 0x024BD6 09:8BC6: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024BD7 09:8BC7: 08        .byte con_8671_08   ; 
- D 0 - I - 0x024BD8 09:8BC8: 22        .byte con_90A7_22   ; 
; 05 
- D 0 - I - 0x024BD9 09:8BC9: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024BDA 09:8BCA: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024BDB 09:8BCB: 1C        .byte con_8671_1C   ; 
- D 0 - I - 0x024BDC 09:8BCC: 01        .byte con_90A7_01   ; 



_off026_8BCD_19:
; 00 
- D 0 - I - 0x024BDD 09:8BCD: 1A        .byte con_8671_1A   ; 
- D 0 - I - 0x024BDE 09:8BCE: 17        .byte con_90A7_17   ; 
; 01 
- D 0 - I - 0x024BDF 09:8BCF: 08        .byte con_8671_08   ; 
- D 0 - I - 0x024BE0 09:8BD0: 22        .byte con_90A7_22   ; 
; 02 
- D 0 - I - 0x024BE1 09:8BD1: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024BE2 09:8BD2: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024BE3 09:8BD3: 03        .byte con_8671_03   ; 
- D 0 - I - 0x024BE4 09:8BD4: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024BE5 09:8BD5: 08        .byte con_8671_08   ; 
- D 0 - I - 0x024BE6 09:8BD6: 23        .byte con_90A7_23   ; 
; 05 
- D 0 - I - 0x024BE7 09:8BD7: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024BE8 09:8BD8: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024BE9 09:8BD9: 1C        .byte con_8671_1C   ; 
- D 0 - I - 0x024BEA 09:8BDA: 01        .byte con_90A7_01   ; 



_off026_8BDB_1A:
; 00 
- D 0 - I - 0x024BEB 09:8BDB: 1D        .byte con_8671_1D   ; 
- D 0 - I - 0x024BEC 09:8BDC: 17        .byte con_90A7_17   ; 
; 01 
- D 0 - I - 0x024BED 09:8BDD: 08        .byte con_8671_08   ; 
- D 0 - I - 0x024BEE 09:8BDE: 22        .byte con_90A7_22   ; 
; 02 
- D 0 - I - 0x024BEF 09:8BDF: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024BF0 09:8BE0: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024BF1 09:8BE1: 03        .byte con_8671_03   ; 
- D 0 - I - 0x024BF2 09:8BE2: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024BF3 09:8BE3: 1E        .byte con_8671_1E   ; 
- D 0 - I - 0x024BF4 09:8BE4: 24        .byte con_90A7_24   ; 



_off026_8BE5_1B:
; 00 
- D 0 - I - 0x024BF5 09:8BE5: 1F        .byte con_8671_1F   ; 
- D 0 - I - 0x024BF6 09:8BE6: 17        .byte con_90A7_17   ; 
; 01 
- D 0 - I - 0x024BF7 09:8BE7: 08        .byte con_8671_08   ; 
- D 0 - I - 0x024BF8 09:8BE8: 22        .byte con_90A7_22   ; 
; 02 
- D 0 - I - 0x024BF9 09:8BE9: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024BFA 09:8BEA: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024BFB 09:8BEB: 03        .byte con_8671_03   ; 
- D 0 - I - 0x024BFC 09:8BEC: 01        .byte con_90A7_01   ; 



_off026_8BED_1C:
; 00 
- D 0 - I - 0x024BFD 09:8BED: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024BFE 09:8BEE: 0F        .byte con_90A7_0F   ; 
; 01 
- D 0 - I - 0x024BFF 09:8BEF: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C00 09:8BF0: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024C01 09:8BF1: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024C02 09:8BF2: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024C03 09:8BF3: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024C04 09:8BF4: 0F        .byte con_90A7_0F   ; 
; 04 
- D 0 - I - 0x024C05 09:8BF5: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C06 09:8BF6: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024C07 09:8BF7: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024C08 09:8BF8: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024C09 09:8BF9: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024C0A 09:8BFA: 0E        .byte con_90A7_0E   ; 
; 07 
- D 0 - I - 0x024C0B 09:8BFB: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C0C 09:8BFC: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024C0D 09:8BFD: 20        .byte con_8671_20   ; 
- D 0 - I - 0x024C0E 09:8BFE: 25        .byte con_90A7_25   ; 
; 09 
- D 0 - I - 0x024C0F 09:8BFF: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024C10 09:8C00: 0E        .byte con_90A7_0E   ; 
; 0A 
- D 0 - I - 0x024C11 09:8C01: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C12 09:8C02: 01        .byte con_90A7_01   ; 
; 0B 
- D 0 - I - 0x024C13 09:8C03: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024C14 09:8C04: 01        .byte con_90A7_01   ; 



_off026_8C05_1D:
; 00 
- D 0 - I - 0x024C15 09:8C05: 08        .byte con_8671_08   ; 
- D 0 - I - 0x024C16 09:8C06: 6E        .byte con_90A7_6E   ; 
; 01 
- - - - - - 0x024C17 09:8C07: 05        .byte con_8671_05   ; 
- - - - - - 0x024C18 09:8C08: 01        .byte con_90A7_01   ; 
; 02 
- - - - - - 0x024C19 09:8C09: 03        .byte con_8671_03   ; 
- - - - - - 0x024C1A 09:8C0A: 01        .byte con_90A7_01   ; 



_off026_8C0B_1E:
; 00 
- D 0 - I - 0x024C1B 09:8C0B: 1D        .byte con_8671_1D   ; 
- D 0 - I - 0x024C1C 09:8C0C: 26        .byte con_90A7_26   ; 
; 01 
- D 0 - I - 0x024C1D 09:8C0D: 08        .byte con_8671_08   ; 
- D 0 - I - 0x024C1E 09:8C0E: 22        .byte con_90A7_22   ; 
; 02 
- D 0 - I - 0x024C1F 09:8C0F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C20 09:8C10: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024C21 09:8C11: 03        .byte con_8671_03   ; 
- D 0 - I - 0x024C22 09:8C12: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024C23 09:8C13: 1E        .byte con_8671_1E   ; 
- D 0 - I - 0x024C24 09:8C14: 24        .byte con_90A7_24   ; 



_off026_8C15_1F:
; 00 
- D 0 - I - 0x024C25 09:8C15: 1D        .byte con_8671_1D   ; 
- D 0 - I - 0x024C26 09:8C16: 26        .byte con_90A7_26   ; 
; 01 
- D 0 - I - 0x024C27 09:8C17: 08        .byte con_8671_08   ; 
- D 0 - I - 0x024C28 09:8C18: 22        .byte con_90A7_22   ; 
; 02 
- D 0 - I - 0x024C29 09:8C19: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C2A 09:8C1A: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024C2B 09:8C1B: 03        .byte con_8671_03   ; 
- D 0 - I - 0x024C2C 09:8C1C: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024C2D 09:8C1D: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024C2E 09:8C1E: 01        .byte con_90A7_01   ; 



_off026_8C1F_20:
; 00 
- D 0 - I - 0x024C2F 09:8C1F: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024C30 09:8C20: 17        .byte con_90A7_17   ; 
; 01 
- D 0 - I - 0x024C31 09:8C21: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C32 09:8C22: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024C33 09:8C23: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024C34 09:8C24: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024C35 09:8C25: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024C36 09:8C26: 17        .byte con_90A7_17   ; 
; 04 
- D 0 - I - 0x024C37 09:8C27: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C38 09:8C28: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024C39 09:8C29: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024C3A 09:8C2A: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024C3B 09:8C2B: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024C3C 09:8C2C: 27        .byte con_90A7_27   ; 
; 07 
- D 0 - I - 0x024C3D 09:8C2D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C3E 09:8C2E: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024C3F 09:8C2F: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024C40 09:8C30: 01        .byte con_90A7_01   ; 
; 09 
- D 0 - I - 0x024C41 09:8C31: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024C42 09:8C32: 01        .byte con_90A7_01   ; 



_off026_8C33_21:
; 00 
- D 0 - I - 0x024C43 09:8C33: 0E        .byte con_8671_0E   ; 
- D 0 - I - 0x024C44 09:8C34: 01        .byte con_90A7_01   ; 
; 01 
- D 0 - I - 0x024C45 09:8C35: 18        .byte con_8671_18   ; 
- D 0 - I - 0x024C46 09:8C36: 0A        .byte con_90A7_0A   ; 
; 02 
- D 0 - I - 0x024C47 09:8C37: 15        .byte con_8671_15   ; 
- D 0 - I - 0x024C48 09:8C38: 28        .byte con_90A7_28   ; 



_off026_8C39_22:
; 00 
- D 0 - I - 0x024C49 09:8C39: 21        .byte con_8671_21   ; 
- D 0 - I - 0x024C4A 09:8C3A: 01        .byte con_90A7_01   ; 



_off026_8C3B_23:
; 00 
- D 0 - I - 0x024C4B 09:8C3B: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024C4C 09:8C3C: 0F        .byte con_90A7_0F   ; 
; 01 
- D 0 - I - 0x024C4D 09:8C3D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C4E 09:8C3E: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024C4F 09:8C3F: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024C50 09:8C40: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024C51 09:8C41: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024C52 09:8C42: 0F        .byte con_90A7_0F   ; 
; 04 
- D 0 - I - 0x024C53 09:8C43: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C54 09:8C44: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024C55 09:8C45: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024C56 09:8C46: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024C57 09:8C47: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024C58 09:8C48: 0F        .byte con_90A7_0F   ; 
; 07 
- D 0 - I - 0x024C59 09:8C49: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C5A 09:8C4A: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024C5B 09:8C4B: 15        .byte con_8671_15   ; 
- D 0 - I - 0x024C5C 09:8C4C: 28        .byte con_90A7_28   ; 



_off026_8C4D_24:
; 00 
- D 0 - I - 0x024C5D 09:8C4D: 1A        .byte con_8671_1A   ; 
- D 0 - I - 0x024C5E 09:8C4E: 29        .byte con_90A7_29   ; 
; 01 
- D 0 - I - 0x024C5F 09:8C4F: 23        .byte con_8671_23   ; 
- D 0 - I - 0x024C60 09:8C50: 2A        .byte con_90A7_2A   ; 
; 02 
- D 0 - I - 0x024C61 09:8C51: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C62 09:8C52: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024C63 09:8C53: 03        .byte con_8671_03   ; 
- D 0 - I - 0x024C64 09:8C54: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024C65 09:8C55: 24        .byte con_8671_24   ; 
- D 0 - I - 0x024C66 09:8C56: 2A        .byte con_90A7_2A   ; 
; 05 
- D 0 - I - 0x024C67 09:8C57: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C68 09:8C58: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024C69 09:8C59: 1C        .byte con_8671_1C   ; 
- D 0 - I - 0x024C6A 09:8C5A: 01        .byte con_90A7_01   ; 



_off026_8C5B_26:
; 00 
- D 0 - I - 0x024C6B 09:8C5B: 19        .byte con_8671_19   ; 
- D 0 - I - 0x024C6C 09:8C5C: 29        .byte con_90A7_29   ; 
; 01 
- D 0 - I - 0x024C6D 09:8C5D: 23        .byte con_8671_23   ; 
- D 0 - I - 0x024C6E 09:8C5E: 22        .byte con_90A7_22   ; 
; 02 
- D 0 - I - 0x024C6F 09:8C5F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C70 09:8C60: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024C71 09:8C61: 03        .byte con_8671_03   ; 
- D 0 - I - 0x024C72 09:8C62: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024C73 09:8C63: 23        .byte con_8671_23   ; 
- D 0 - I - 0x024C74 09:8C64: 22        .byte con_90A7_22   ; 
; 05 
- D 0 - I - 0x024C75 09:8C65: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C76 09:8C66: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024C77 09:8C67: 1C        .byte con_8671_1C   ; 
- D 0 - I - 0x024C78 09:8C68: 01        .byte con_90A7_01   ; 



_off026_8C69_25:
; 00 
- D 0 - I - 0x024C79 09:8C69: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024C7A 09:8C6A: 2B        .byte con_90A7_2B   ; 
; 01 
- D 0 - I - 0x024C7B 09:8C6B: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C7C 09:8C6C: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024C7D 09:8C6D: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024C7E 09:8C6E: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024C7F 09:8C6F: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024C80 09:8C70: 2B        .byte con_90A7_2B   ; 
; 04 
- D 0 - I - 0x024C81 09:8C71: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C82 09:8C72: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024C83 09:8C73: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024C84 09:8C74: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024C85 09:8C75: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024C86 09:8C76: 2B        .byte con_90A7_2B   ; 
; 07 
- D 0 - I - 0x024C87 09:8C77: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C88 09:8C78: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024C89 09:8C79: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024C8A 09:8C7A: 01        .byte con_90A7_01   ; 
; 09 
- D 0 - I - 0x024C8B 09:8C7B: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024C8C 09:8C7C: 2B        .byte con_90A7_2B   ; 
; 0A 
- D 0 - I - 0x024C8D 09:8C7D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C8E 09:8C7E: 01        .byte con_90A7_01   ; 
; 0B 
- D 0 - I - 0x024C8F 09:8C7F: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024C90 09:8C80: 01        .byte con_90A7_01   ; 
; 0C 
- D 0 - I - 0x024C91 09:8C81: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024C92 09:8C82: 2B        .byte con_90A7_2B   ; 
; 0D 
- D 0 - I - 0x024C93 09:8C83: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C94 09:8C84: 01        .byte con_90A7_01   ; 
; 0E 
- D 0 - I - 0x024C95 09:8C85: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024C96 09:8C86: 01        .byte con_90A7_01   ; 
; 0F 
- D 0 - I - 0x024C97 09:8C87: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024C98 09:8C88: 01        .byte con_90A7_01   ; 



_off026_8C89_27:
; 00 
- D 0 - I - 0x024C99 09:8C89: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024C9A 09:8C8A: 2C        .byte con_90A7_2C   ; 
; 01 
- D 0 - I - 0x024C9B 09:8C8B: 25        .byte con_8671_25   ; 
- D 0 - I - 0x024C9C 09:8C8C: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024C9D 09:8C8D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024C9E 09:8C8E: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024C9F 09:8C8F: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024CA0 09:8C90: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024CA1 09:8C91: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024CA2 09:8C92: 0F        .byte con_90A7_0F   ; 
; 05 
- D 0 - I - 0x024CA3 09:8C93: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024CA4 09:8C94: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024CA5 09:8C95: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024CA6 09:8C96: 01        .byte con_90A7_01   ; 



_off026_8C97_28:
; 00 
- D 0 - I - 0x024CA7 09:8C97: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024CA8 09:8C98: 0F        .byte con_90A7_0F   ; 
; 01 
- D 0 - I - 0x024CA9 09:8C99: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024CAA 09:8C9A: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024CAB 09:8C9B: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024CAC 09:8C9C: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024CAD 09:8C9D: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024CAE 09:8C9E: 0F        .byte con_90A7_0F   ; 
; 04 
- D 0 - I - 0x024CAF 09:8C9F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024CB0 09:8CA0: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024CB1 09:8CA1: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024CB2 09:8CA2: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024CB3 09:8CA3: 3A        .byte con_8671_play_sound   ; 
- D 0 - I - 0x024CB4 09:8CA4: 2D        .byte con_90A7_2D   ; 
; 07 
- D 0 - I - 0x024CB5 09:8CA5: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024CB6 09:8CA6: 0F        .byte con_90A7_0F   ; 
; 08 
- D 0 - I - 0x024CB7 09:8CA7: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024CB8 09:8CA8: 01        .byte con_90A7_01   ; 
; 09 
- D 0 - I - 0x024CB9 09:8CA9: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024CBA 09:8CAA: 12        .byte con_90A7_12   ; 
; 0A 
- D 0 - I - 0x024CBB 09:8CAB: 26        .byte con_8671_26   ; 
- D 0 - I - 0x024CBC 09:8CAC: 01        .byte con_90A7_01   ; 
; 0B 
- D 0 - I - 0x024CBD 09:8CAD: 20        .byte con_8671_20   ; 
- D 0 - I - 0x024CBE 09:8CAE: 2E        .byte con_90A7_2E   ; 
; 0C 
- D 0 - I - 0x024CBF 09:8CAF: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024CC0 09:8CB0: 12        .byte con_90A7_12   ; 
; 0D 
- D 0 - I - 0x024CC1 09:8CB1: 26        .byte con_8671_26   ; 
- D 0 - I - 0x024CC2 09:8CB2: 01        .byte con_90A7_01   ; 
; 0E 
- D 0 - I - 0x024CC3 09:8CB3: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024CC4 09:8CB4: 01        .byte con_90A7_01   ; 



_off026_8CB5_29:
; 00 
- D 0 - I - 0x024CC5 09:8CB5: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024CC6 09:8CB6: 0B        .byte con_90A7_0B   ; 
; 01 
- D 0 - I - 0x024CC7 09:8CB7: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024CC8 09:8CB8: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024CC9 09:8CB9: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024CCA 09:8CBA: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024CCB 09:8CBB: 3A        .byte con_8671_play_sound   ; 
- D 0 - I - 0x024CCC 09:8CBC: 2D        .byte con_90A7_2D   ; 
; 04 
- D 0 - I - 0x024CCD 09:8CBD: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024CCE 09:8CBE: 2B        .byte con_90A7_2B   ; 
; 05 
- D 0 - I - 0x024CCF 09:8CBF: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024CD0 09:8CC0: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024CD1 09:8CC1: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024CD2 09:8CC2: 12        .byte con_90A7_12   ; 
; 07 
- D 0 - I - 0x024CD3 09:8CC3: 26        .byte con_8671_26   ; 
- D 0 - I - 0x024CD4 09:8CC4: 0D        .byte con_90A7_0D   ; 
; 08 
- D 0 - I - 0x024CD5 09:8CC5: 20        .byte con_8671_20   ; 
- D 0 - I - 0x024CD6 09:8CC6: 2F        .byte con_90A7_2F   ; 
; 09 
- D 0 - I - 0x024CD7 09:8CC7: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024CD8 09:8CC8: 12        .byte con_90A7_12   ; 
; 0A 
- D 0 - I - 0x024CD9 09:8CC9: 26        .byte con_8671_26   ; 
- D 0 - I - 0x024CDA 09:8CCA: 0D        .byte con_90A7_0D   ; 
; 0B 
- D 0 - I - 0x024CDB 09:8CCB: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024CDC 09:8CCC: 01        .byte con_90A7_01   ; 



_off026_8CCD_2A:
; 00 
- D 0 - I - 0x024CDD 09:8CCD: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024CDE 09:8CCE: 0B        .byte con_90A7_0B   ; 
; 01 
- D 0 - I - 0x024CDF 09:8CCF: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024CE0 09:8CD0: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024CE1 09:8CD1: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024CE2 09:8CD2: 0F        .byte con_90A7_0F   ; 
; 03 
- D 0 - I - 0x024CE3 09:8CD3: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024CE4 09:8CD4: 0B        .byte con_90A7_0B   ; 
; 04 
- D 0 - I - 0x024CE5 09:8CD5: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024CE6 09:8CD6: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024CE7 09:8CD7: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024CE8 09:8CD8: 0F        .byte con_90A7_0F   ; 
; 06 
- D 0 - I - 0x024CE9 09:8CD9: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024CEA 09:8CDA: 0B        .byte con_90A7_0B   ; 
; 07 
- D 0 - I - 0x024CEB 09:8CDB: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024CEC 09:8CDC: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024CED 09:8CDD: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024CEE 09:8CDE: 0F        .byte con_90A7_0F   ; 
; 09 
- D 0 - I - 0x024CEF 09:8CDF: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024CF0 09:8CE0: 0B        .byte con_90A7_0B   ; 
; 0A 
- D 0 - I - 0x024CF1 09:8CE1: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024CF2 09:8CE2: 01        .byte con_90A7_01   ; 
; 0B 
- D 0 - I - 0x024CF3 09:8CE3: 1C        .byte con_8671_1C   ; 
- D 0 - I - 0x024CF4 09:8CE4: 01        .byte con_90A7_01   ; 



_off026_8CE5_2B:
; 00 
- D 0 - I - 0x024CF5 09:8CE5: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024CF6 09:8CE6: 0B        .byte con_90A7_0B   ; 
; 01 
- D 0 - I - 0x024CF7 09:8CE7: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024CF8 09:8CE8: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024CF9 09:8CE9: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024CFA 09:8CEA: 01        .byte con_90A7_01   ; 



_off026_8CEB_2C:
; 00 
- D 0 - I - 0x024CFB 09:8CEB: 2A        .byte con_8671_2A   ; 
- D 0 - I - 0x024CFC 09:8CEC: 0D        .byte con_90A7_0D   ; 
; 01 
- D 0 - I - 0x024CFD 09:8CED: 2A        .byte con_8671_2A   ; 
- D 0 - I - 0x024CFE 09:8CEE: 0D        .byte con_90A7_0D   ; 
; 02 
- D 0 - I - 0x024CFF 09:8CEF: 2A        .byte con_8671_2A   ; 
- D 0 - I - 0x024D00 09:8CF0: 0D        .byte con_90A7_0D   ; 
; 03 
- D 0 - I - 0x024D01 09:8CF1: 0E        .byte con_8671_0E   ; 
- D 0 - I - 0x024D02 09:8CF2: 30        .byte con_90A7_30   ; 
; 04 
- D 0 - I - 0x024D03 09:8CF3: 18        .byte con_8671_18   ; 
- D 0 - I - 0x024D04 09:8CF4: 0A        .byte con_90A7_0A   ; 
; 05 
- D 0 - I - 0x024D05 09:8CF5: 28        .byte con_8671_28   ; 
- D 0 - I - 0x024D06 09:8CF6: 31        .byte con_90A7_31   ; 
; 06 
- D 0 - I - 0x024D07 09:8CF7: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024D08 09:8CF8: 0F        .byte con_90A7_0F   ; 
; 07 
- D 0 - I - 0x024D09 09:8CF9: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D0A 09:8CFA: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024D0B 09:8CFB: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024D0C 09:8CFC: 01        .byte con_90A7_01   ; 
; 09 
- D 0 - I - 0x024D0D 09:8CFD: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024D0E 09:8CFE: 0F        .byte con_90A7_0F   ; 
; 0A 
- D 0 - I - 0x024D0F 09:8CFF: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D10 09:8D00: 01        .byte con_90A7_01   ; 
; 0B 
- D 0 - I - 0x024D11 09:8D01: 29        .byte con_8671_29_clear_object_data   ; 
- D 0 - I - 0x024D12 09:8D02: 01        .byte con_90A7_01   ; 



_off026_8D03_2D:
; 00 
- D 0 - I - 0x024D13 09:8D03: 27        .byte con_8671_27   ; 
- D 0 - I - 0x024D14 09:8D04: 01        .byte con_90A7_01   ; 
; 01 
- D 0 - I - 0x024D15 09:8D05: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D16 09:8D06: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024D17 09:8D07: 2B        .byte con_8671_2B   ; 
- D 0 - I - 0x024D18 09:8D08: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024D19 09:8D09: 0E        .byte con_8671_0E   ; 
- D 0 - I - 0x024D1A 09:8D0A: 32        .byte con_90A7_32   ; 
; 04 
- D 0 - I - 0x024D1B 09:8D0B: 18        .byte con_8671_18   ; 
- D 0 - I - 0x024D1C 09:8D0C: 0A        .byte con_90A7_0A   ; 
; 05 
- D 0 - I - 0x024D1D 09:8D0D: 28        .byte con_8671_28   ; 
- D 0 - I - 0x024D1E 09:8D0E: 31        .byte con_90A7_31   ; 
; 06 
- D 0 - I - 0x024D1F 09:8D0F: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024D20 09:8D10: 0F        .byte con_90A7_0F   ; 
; 07 
- D 0 - I - 0x024D21 09:8D11: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D22 09:8D12: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024D23 09:8D13: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024D24 09:8D14: 01        .byte con_90A7_01   ; 
; 09 
- D 0 - I - 0x024D25 09:8D15: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024D26 09:8D16: 0F        .byte con_90A7_0F   ; 
; 0A 
- D 0 - I - 0x024D27 09:8D17: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D28 09:8D18: 01        .byte con_90A7_01   ; 
; 0B 
- D 0 - I - 0x024D29 09:8D19: 29        .byte con_8671_29_clear_object_data   ; 
- D 0 - I - 0x024D2A 09:8D1A: 01        .byte con_90A7_01   ; 



_off026_8D1B_2E:
; 00 
- - - - - - 0x024D2B 09:8D1B: 0B        .byte con_8671_0B   ; 
- - - - - - 0x024D2C 09:8D1C: 19        .byte con_90A7_19   ; 
; 01 
- - - - - - 0x024D2D 09:8D1D: 05        .byte con_8671_05   ; 
- - - - - - 0x024D2E 09:8D1E: 01        .byte con_90A7_01   ; 
; 02 
- - - - - - 0x024D2F 09:8D1F: 04        .byte con_8671_04   ; 
- - - - - - 0x024D30 09:8D20: 01        .byte con_90A7_01   ; 



_off026_8D21_2F:
; 00 
- D 0 - I - 0x024D31 09:8D21: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024D32 09:8D22: 14        .byte con_90A7_14   ; 
; 01 
- D 0 - I - 0x024D33 09:8D23: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D34 09:8D24: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024D35 09:8D25: 20        .byte con_8671_20   ; 
- D 0 - I - 0x024D36 09:8D26: 33        .byte con_90A7_33   ; 
; 03 
- D 0 - I - 0x024D37 09:8D27: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024D38 09:8D28: 14        .byte con_90A7_14   ; 
; 04 
- D 0 - I - 0x024D39 09:8D29: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D3A 09:8D2A: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024D3B 09:8D2B: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024D3C 09:8D2C: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024D3D 09:8D2D: 2E        .byte con_8671_2E   ; 
- D 0 - I - 0x024D3E 09:8D2E: 0F        .byte con_90A7_0F   ; 
; 07 
- D 0 - I - 0x024D3F 09:8D2F: 00        .byte con_8671_00   ; 
- D 0 - I - 0x024D40 09:8D30: 34        .byte con_90A7_34   ; 
; 08 
- D 0 - I - 0x024D41 09:8D31: 2C        .byte con_8671_2C   ; 
- D 0 - I - 0x024D42 09:8D32: 01        .byte con_90A7_01   ; 
; 09 
- D 0 - I - 0x024D43 09:8D33: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D44 09:8D34: 01        .byte con_90A7_01   ; 
; 0A 
- - - - - - 0x024D45 09:8D35: 29        .byte con_8671_29_clear_object_data   ; 
- - - - - - 0x024D46 09:8D36: 01        .byte con_90A7_01   ; 



_off026_8D37_5B:
; 00 
- D 0 - I - 0x024D47 09:8D37: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024D48 09:8D38: 14        .byte con_90A7_14   ; 
; 01 
- D 0 - I - 0x024D49 09:8D39: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D4A 09:8D3A: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024D4B 09:8D3B: 20        .byte con_8671_20   ; 
- D 0 - I - 0x024D4C 09:8D3C: 35        .byte con_90A7_35   ; 
; 03 
- D 0 - I - 0x024D4D 09:8D3D: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024D4E 09:8D3E: 14        .byte con_90A7_14   ; 
; 04 
- D 0 - I - 0x024D4F 09:8D3F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D50 09:8D40: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024D51 09:8D41: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024D52 09:8D42: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024D53 09:8D43: 2E        .byte con_8671_2E   ; 
- D 0 - I - 0x024D54 09:8D44: 0F        .byte con_90A7_0F   ; 
; 07 
- D 0 - I - 0x024D55 09:8D45: 00        .byte con_8671_00   ; 
- D 0 - I - 0x024D56 09:8D46: 34        .byte con_90A7_34   ; 
; 08 
- D 0 - I - 0x024D57 09:8D47: 2C        .byte con_8671_2C   ; 
- D 0 - I - 0x024D58 09:8D48: 01        .byte con_90A7_01   ; 
; 09 
- - - - - - 0x024D59 09:8D49: 05        .byte con_8671_05   ; 
- - - - - - 0x024D5A 09:8D4A: 01        .byte con_90A7_01   ; 
; 0A 
- - - - - - 0x024D5B 09:8D4B: 29        .byte con_8671_29_clear_object_data   ; 
- - - - - - 0x024D5C 09:8D4C: 01        .byte con_90A7_01   ; 



_off026_8D4D_5C:
; 00 
- D 0 - I - 0x024D5D 09:8D4D: 48        .byte con_8671_48   ; 
- D 0 - I - 0x024D5E 09:8D4E: 36        .byte con_90A7_36   ; 
; 01 
- D 0 - I - 0x024D5F 09:8D4F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D60 09:8D50: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024D61 09:8D51: 48        .byte con_8671_48   ; 
- D 0 - I - 0x024D62 09:8D52: 37        .byte con_90A7_37   ; 
; 03 
- D 0 - I - 0x024D63 09:8D53: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D64 09:8D54: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024D65 09:8D55: 48        .byte con_8671_48   ; 
- D 0 - I - 0x024D66 09:8D56: 38        .byte con_90A7_38   ; 
; 05 
- D 0 - I - 0x024D67 09:8D57: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D68 09:8D58: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024D69 09:8D59: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024D6A 09:8D5A: 39        .byte con_90A7_39   ; 
; 07 
- D 0 - I - 0x024D6B 09:8D5B: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D6C 09:8D5C: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024D6D 09:8D5D: 2F        .byte con_8671_2F   ; 
- D 0 - I - 0x024D6E 09:8D5E: 01        .byte con_90A7_01   ; 
; 09 
- D 0 - I - 0x024D6F 09:8D5F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D70 09:8D60: 01        .byte con_90A7_01   ; 
; 0A 
- D 0 - I - 0x024D71 09:8D61: 30        .byte con_8671_30   ; 
- D 0 - I - 0x024D72 09:8D62: 01        .byte con_90A7_01   ; 
; 0B 
- - - - - - 0x024D73 09:8D63: 0D        .byte con_8671_0D   ; 
- - - - - - 0x024D74 09:8D64: 0B        .byte con_90A7_0B   ; 
; 0C 
- - - - - - 0x024D75 09:8D65: 05        .byte con_8671_05   ; 
- - - - - - 0x024D76 09:8D66: 01        .byte con_90A7_01   ; 
; 0D 
- - - - - - 0x024D77 09:8D67: 31        .byte con_8671_31   ; 
- - - - - - 0x024D78 09:8D68: 01        .byte con_90A7_01   ; 



_off026_8D69_30:
; 00 
- D 0 - I - 0x024D79 09:8D69: 2D        .byte con_8671_2D   ; 
- D 0 - I - 0x024D7A 09:8D6A: 36        .byte con_90A7_36   ; 
; 01 
- D 0 - I - 0x024D7B 09:8D6B: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D7C 09:8D6C: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024D7D 09:8D6D: 2D        .byte con_8671_2D   ; 
- D 0 - I - 0x024D7E 09:8D6E: 37        .byte con_90A7_37   ; 
; 03 
- D 0 - I - 0x024D7F 09:8D6F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D80 09:8D70: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024D81 09:8D71: 2D        .byte con_8671_2D   ; 
- D 0 - I - 0x024D82 09:8D72: 38        .byte con_90A7_38   ; 
; 05 
- D 0 - I - 0x024D83 09:8D73: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D84 09:8D74: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024D85 09:8D75: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024D86 09:8D76: 39        .byte con_90A7_39   ; 
; 07 
- D 0 - I - 0x024D87 09:8D77: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D88 09:8D78: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024D89 09:8D79: 2F        .byte con_8671_2F   ; 
- D 0 - I - 0x024D8A 09:8D7A: 01        .byte con_90A7_01   ; 
; 09 
- D 0 - I - 0x024D8B 09:8D7B: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D8C 09:8D7C: 01        .byte con_90A7_01   ; 
; 0A 
- D 0 - I - 0x024D8D 09:8D7D: 30        .byte con_8671_30   ; 
- D 0 - I - 0x024D8E 09:8D7E: 01        .byte con_90A7_01   ; 
; 0B 
- D 0 - I - 0x024D8F 09:8D7F: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024D90 09:8D80: 0B        .byte con_90A7_0B   ; 
; 0C 
- D 0 - I - 0x024D91 09:8D81: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D92 09:8D82: 01        .byte con_90A7_01   ; 
; 0D 
- D 0 - I - 0x024D93 09:8D83: 31        .byte con_8671_31   ; 
- D 0 - I - 0x024D94 09:8D84: 01        .byte con_90A7_01   ; 



_off026_8D85_31:
; 00 
- D 0 - I - 0x024D95 09:8D85: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024D96 09:8D86: 0F        .byte con_90A7_0F   ; 
; 01 
- D 0 - I - 0x024D97 09:8D87: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D98 09:8D88: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024D99 09:8D89: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024D9A 09:8D8A: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024D9B 09:8D8B: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024D9C 09:8D8C: 0F        .byte con_90A7_0F   ; 
; 04 
- D 0 - I - 0x024D9D 09:8D8D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024D9E 09:8D8E: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024D9F 09:8D8F: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024DA0 09:8D90: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024DA1 09:8D91: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024DA2 09:8D92: 12        .byte con_90A7_12   ; 
; 07 
- D 0 - I - 0x024DA3 09:8D93: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024DA4 09:8D94: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024DA5 09:8D95: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024DA6 09:8D96: 14        .byte con_90A7_14   ; 
; 09 
- D 0 - I - 0x024DA7 09:8D97: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024DA8 09:8D98: 01        .byte con_90A7_01   ; 
; 0A 
- D 0 - I - 0x024DA9 09:8D99: 20        .byte con_8671_20   ; 
- D 0 - I - 0x024DAA 09:8D9A: 33        .byte con_90A7_33   ; 
; 0B 
- D 0 - I - 0x024DAB 09:8D9B: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024DAC 09:8D9C: 0B        .byte con_90A7_0B   ; 
; 0C 
- D 0 - I - 0x024DAD 09:8D9D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024DAE 09:8D9E: 01        .byte con_90A7_01   ; 
; 0D 
- D 0 - I - 0x024DAF 09:8D9F: 29        .byte con_8671_29_clear_object_data   ; 
- D 0 - I - 0x024DB0 09:8DA0: 01        .byte con_90A7_01   ; 



_off026_8DA1_32:
; 00 
- D 0 - I - 0x024DB1 09:8DA1: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024DB2 09:8DA2: 0F        .byte con_90A7_0F   ; 
; 01 
- D 0 - I - 0x024DB3 09:8DA3: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024DB4 09:8DA4: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024DB5 09:8DA5: 28        .byte con_8671_28   ; 
- D 0 - I - 0x024DB6 09:8DA6: 3A        .byte con_90A7_3A   ; 
; 03 
- D 0 - I - 0x024DB7 09:8DA7: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024DB8 09:8DA8: 14        .byte con_90A7_14   ; 
; 04 
- D 0 - I - 0x024DB9 09:8DA9: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024DBA 09:8DAA: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024DBB 09:8DAB: 29        .byte con_8671_29_clear_object_data   ; 
- D 0 - I - 0x024DBC 09:8DAC: 01        .byte con_90A7_01   ; 



_off026_8DAD_33:
; 00 
- - - - - - 0x024DBD 09:8DAD: 32        .byte con_8671_32   ; 
- - - - - - 0x024DBE 09:8DAE: 01        .byte con_90A7_01   ; 
; 01 
- - - - - - 0x024DBF 09:8DAF: 22        .byte con_8671_22   ; 
- - - - - - 0x024DC0 09:8DB0: 3B        .byte con_90A7_3B   ; 
; 02 
- - - - - - 0x024DC1 09:8DB1: 05        .byte con_8671_05   ; 
- - - - - - 0x024DC2 09:8DB2: 01        .byte con_90A7_01   ; 
; 03 
- - - - - - 0x024DC3 09:8DB3: 29        .byte con_8671_29_clear_object_data   ; 
- - - - - - 0x024DC4 09:8DB4: 01        .byte con_90A7_01   ; 



_off026_8DB5_34:
; 00 
- D 0 - I - 0x024DC5 09:8DB5: 0E        .byte con_8671_0E   ; 
- D 0 - I - 0x024DC6 09:8DB6: 32        .byte con_90A7_32   ; 
; 01 
- D 0 - I - 0x024DC7 09:8DB7: 18        .byte con_8671_18   ; 
- D 0 - I - 0x024DC8 09:8DB8: 0A        .byte con_90A7_0A   ; 
; 02 
- D 0 - I - 0x024DC9 09:8DB9: 29        .byte con_8671_29_clear_object_data   ; 
- D 0 - I - 0x024DCA 09:8DBA: 01        .byte con_90A7_01   ; 



_off026_8DBB_35:
; 00 
- D 0 - I - 0x024DCB 09:8DBB: 0E        .byte con_8671_0E   ; 
- D 0 - I - 0x024DCC 09:8DBC: 32        .byte con_90A7_32   ; 
; 01 
- D 0 - I - 0x024DCD 09:8DBD: 18        .byte con_8671_18   ; 
- D 0 - I - 0x024DCE 09:8DBE: 0A        .byte con_90A7_0A   ; 
; 02 
- D 0 - I - 0x024DCF 09:8DBF: 15        .byte con_8671_15   ; 
- D 0 - I - 0x024DD0 09:8DC0: 3C        .byte con_90A7_3C   ; 



_off026_8DC1_36:
; 00 
- D 0 - I - 0x024DD1 09:8DC1: 0E        .byte con_8671_0E   ; 
- D 0 - I - 0x024DD2 09:8DC2: 32        .byte con_90A7_32   ; 
; 01 
- D 0 - I - 0x024DD3 09:8DC3: 18        .byte con_8671_18   ; 
- D 0 - I - 0x024DD4 09:8DC4: 0A        .byte con_90A7_0A   ; 
; 02 
- D 0 - I - 0x024DD5 09:8DC5: 15        .byte con_8671_15   ; 
- D 0 - I - 0x024DD6 09:8DC6: 3C        .byte con_90A7_3C   ; 



_off026_8DC7_37:
; 00 
- D 0 - I - 0x024DD7 09:8DC7: 33        .byte con_8671_33_move_object   ; 
- D 0 - I - 0x024DD8 09:8DC8: 3D        .byte con_90A7_3D   ; 
; 01 
- D 0 - I - 0x024DD9 09:8DC9: 28        .byte con_8671_28   ; 
- D 0 - I - 0x024DDA 09:8DCA: 3E        .byte con_90A7_3E   ; 
; 02 
- D 0 - I - 0x024DDB 09:8DCB: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024DDC 09:8DCC: 2B        .byte con_90A7_2B   ; 
; 03 
- D 0 - I - 0x024DDD 09:8DCD: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024DDE 09:8DCE: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024DDF 09:8DCF: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024DE0 09:8DD0: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024DE1 09:8DD1: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024DE2 09:8DD2: 2B        .byte con_90A7_2B   ; 
; 06 
- D 0 - I - 0x024DE3 09:8DD3: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024DE4 09:8DD4: 01        .byte con_90A7_01   ; 
; 07 
- D 0 - I - 0x024DE5 09:8DD5: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024DE6 09:8DD6: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024DE7 09:8DD7: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024DE8 09:8DD8: 2B        .byte con_90A7_2B   ; 
; 09 
- D 0 - I - 0x024DE9 09:8DD9: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024DEA 09:8DDA: 01        .byte con_90A7_01   ; 
; 0A 
- D 0 - I - 0x024DEB 09:8DDB: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024DEC 09:8DDC: 01        .byte con_90A7_01   ; 
; 0B 
- D 0 - I - 0x024DED 09:8DDD: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024DEE 09:8DDE: 2B        .byte con_90A7_2B   ; 
; 0C 
- D 0 - I - 0x024DEF 09:8DDF: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024DF0 09:8DE0: 01        .byte con_90A7_01   ; 
; 0D 
- D 0 - I - 0x024DF1 09:8DE1: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024DF2 09:8DE2: 01        .byte con_90A7_01   ; 
; 0E 
- D 0 - I - 0x024DF3 09:8DE3: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024DF4 09:8DE4: 2B        .byte con_90A7_2B   ; 
; 0F 
- D 0 - I - 0x024DF5 09:8DE5: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024DF6 09:8DE6: 01        .byte con_90A7_01   ; 
; 10 
- D 0 - I - 0x024DF7 09:8DE7: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024DF8 09:8DE8: 01        .byte con_90A7_01   ; 
; 11 
- D 0 - I - 0x024DF9 09:8DE9: 21        .byte con_8671_21   ; 
- D 0 - I - 0x024DFA 09:8DEA: 01        .byte con_90A7_01   ; 



_off026_8DEB_38:
; 00 
- D 0 - I - 0x024DFB 09:8DEB: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024DFC 09:8DEC: 12        .byte con_90A7_12   ; 
; 01 
- D 0 - I - 0x024DFD 09:8DED: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024DFE 09:8DEE: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024DFF 09:8DEF: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024E00 09:8DF0: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024E01 09:8DF1: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024E02 09:8DF2: 00        .byte con_90A7_00   ; 
; 04 
- D 0 - I - 0x024E03 09:8DF3: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E04 09:8DF4: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024E05 09:8DF5: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024E06 09:8DF6: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024E07 09:8DF7: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024E08 09:8DF8: 00        .byte con_90A7_00   ; 
; 07 
- D 0 - I - 0x024E09 09:8DF9: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E0A 09:8DFA: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024E0B 09:8DFB: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024E0C 09:8DFC: 01        .byte con_90A7_01   ; 
; 09 
- D 0 - I - 0x024E0D 09:8DFD: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024E0E 09:8DFE: 00        .byte con_90A7_00   ; 
; 0A 
- D 0 - I - 0x024E0F 09:8DFF: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E10 09:8E00: 01        .byte con_90A7_01   ; 
; 0B 
- D 0 - I - 0x024E11 09:8E01: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024E12 09:8E02: 3F        .byte con_90A7_3F   ; 
; 0C 
- D 0 - I - 0x024E13 09:8E03: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024E14 09:8E04: 17        .byte con_90A7_17   ; 
; 0D 
- D 0 - I - 0x024E15 09:8E05: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E16 09:8E06: 01        .byte con_90A7_01   ; 
; 0E 
- D 0 - I - 0x024E17 09:8E07: 21        .byte con_8671_21   ; 
- D 0 - I - 0x024E18 09:8E08: 01        .byte con_90A7_01   ; 



_off026_8E09_39:
; 00 
- D 0 - I - 0x024E19 09:8E09: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024E1A 09:8E0A: 14        .byte con_90A7_14   ; 
; 01 
- D 0 - I - 0x024E1B 09:8E0B: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E1C 09:8E0C: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024E1D 09:8E0D: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024E1E 09:8E0E: 01        .byte con_90A7_01   ; 



_off026_8E0F_3A:
; 00 
- D 0 - I - 0x024E1F 09:8E0F: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024E20 09:8E10: 0B        .byte con_90A7_0B   ; 
; 01 
- D 0 - I - 0x024E21 09:8E11: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E22 09:8E12: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024E23 09:8E13: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024E24 09:8E14: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024E25 09:8E15: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024E26 09:8E16: 0F        .byte con_90A7_0F   ; 
; 04 
- D 0 - I - 0x024E27 09:8E17: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E28 09:8E18: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024E29 09:8E19: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024E2A 09:8E1A: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024E2B 09:8E1B: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024E2C 09:8E1C: 0B        .byte con_90A7_0B   ; 
; 07 
- D 0 - I - 0x024E2D 09:8E1D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E2E 09:8E1E: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024E2F 09:8E1F: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024E30 09:8E20: 01        .byte con_90A7_01   ; 



_off026_8E21_3B:
; 00 
- D 0 - I - 0x024E31 09:8E21: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024E32 09:8E22: 12        .byte con_90A7_12   ; 
; 01 
- D 0 - I - 0x024E33 09:8E23: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E34 09:8E24: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024E35 09:8E25: 00        .byte con_8671_00   ; 
- D 0 - I - 0x024E36 09:8E26: 40        .byte con_90A7_40   ; 
; 03 
- D 0 - I - 0x024E37 09:8E27: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E38 09:8E28: 01        .byte con_90A7_01   ; 
; 04 
- - - - - - 0x024E39 09:8E29: 04        .byte con_8671_04   ; 
- - - - - - 0x024E3A 09:8E2A: 01        .byte con_90A7_01   ; 



_off026_8E2B_3C:
; 00 
- D 0 - I - 0x024E3B 09:8E2B: 00        .byte con_8671_00   ; 
- D 0 - I - 0x024E3C 09:8E2C: 41        .byte con_90A7_41   ; 
; 01 
- D 0 - I - 0x024E3D 09:8E2D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E3E 09:8E2E: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024E3F 09:8E2F: 38        .byte con_8671_38   ; 
- D 0 - I - 0x024E40 09:8E30: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024E41 09:8E31: 03        .byte con_8671_03   ; 
- D 0 - I - 0x024E42 09:8E32: 01        .byte con_90A7_01   ; 



_off026_8E33_3D:
; 00 
- D 0 - I - 0x024E43 09:8E33: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E44 09:8E34: 01        .byte con_90A7_01   ; 
; 01 
- D 0 - I - 0x024E45 09:8E35: 22        .byte con_8671_22   ; 
- D 0 - I - 0x024E46 09:8E36: 72        .byte con_90A7_72   ; 
; 02 
- D 0 - I - 0x024E47 09:8E37: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024E48 09:8E38: 0B        .byte con_90A7_0B   ; 
; 03 
- D 0 - I - 0x024E49 09:8E39: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E4A 09:8E3A: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024E4B 09:8E3B: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024E4C 09:8E3C: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024E4D 09:8E3D: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024E4E 09:8E3E: 0B        .byte con_90A7_0B   ; 
; 06 
- D 0 - I - 0x024E4F 09:8E3F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E50 09:8E40: 01        .byte con_90A7_01   ; 
; 07 
- D 0 - I - 0x024E51 09:8E41: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024E52 09:8E42: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024E53 09:8E43: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024E54 09:8E44: 0F        .byte con_90A7_0F   ; 
; 09 
- D 0 - I - 0x024E55 09:8E45: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E56 09:8E46: 01        .byte con_90A7_01   ; 
; 0A 
- D 0 - I - 0x024E57 09:8E47: 21        .byte con_8671_21   ; 
- D 0 - I - 0x024E58 09:8E48: 01        .byte con_90A7_01   ; 



_off026_8E49_3E:
; 00 
- D 0 - I - 0x024E59 09:8E49: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024E5A 09:8E4A: 42        .byte con_90A7_42   ; 
; 01 
- D 0 - I - 0x024E5B 09:8E4B: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E5C 09:8E4C: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024E5D 09:8E4D: 3A        .byte con_8671_play_sound   ; 
- D 0 - I - 0x024E5E 09:8E4E: 43        .byte con_90A7_43   ; 
; 03 
- D 0 - I - 0x024E5F 09:8E4F: 22        .byte con_8671_22   ; 
- D 0 - I - 0x024E60 09:8E50: 6F        .byte con_90A7_6F   ; 
; 04 
- D 0 - I - 0x024E61 09:8E51: 21        .byte con_8671_21   ; 
- D 0 - I - 0x024E62 09:8E52: 01        .byte con_90A7_01   ; 



_off026_8E53_64:
; 00 
- D 0 - I - 0x024E63 09:8E53: 22        .byte con_8671_22   ; 
- D 0 - I - 0x024E64 09:8E54: 23        .byte con_90A7_23   ; 
; 01 
- D 0 - I - 0x024E65 09:8E55: 49        .byte con_8671_49_increase_speed_Y   ; 
- D 0 - I - 0x024E66 09:8E56: 0B        .byte con_90A7_0B   ; 



_off026_8E57_3F:
; 00 
- D 0 - I - 0x024E67 09:8E57: 00        .byte con_8671_00   ; 
- D 0 - I - 0x024E68 09:8E58: 44        .byte con_90A7_44   ; 
; 01 
- D 0 - I - 0x024E69 09:8E59: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E6A 09:8E5A: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024E6B 09:8E5B: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024E6C 09:8E5C: 01        .byte con_90A7_01   ; 



_off026_8E5D_40:
; 00 
- D 0 - I - 0x024E6D 09:8E5D: 00        .byte con_8671_00   ; 
- D 0 - I - 0x024E6E 09:8E5E: 45        .byte con_90A7_45   ; 
; 01 
- - - - - - 0x024E6F 09:8E5F: 05        .byte con_8671_05   ; 
- - - - - - 0x024E70 09:8E60: 01        .byte con_90A7_01   ; 
; 02 
- - - - - - 0x024E71 09:8E61: 04        .byte con_8671_04   ; 
- - - - - - 0x024E72 09:8E62: 01        .byte con_90A7_01   ; 



_off026_8E63_41:
; 00 
- D 0 - I - 0x024E73 09:8E63: 35        .byte con_8671_35   ; 
- D 0 - I - 0x024E74 09:8E64: 01        .byte con_90A7_01   ; 
; 01 
- D 0 - I - 0x024E75 09:8E65: 34        .byte con_8671_34   ; 
- D 0 - I - 0x024E76 09:8E66: 0E        .byte con_90A7_0E   ; 
; 02 
- D 0 - I - 0x024E77 09:8E67: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024E78 09:8E68: 0B        .byte con_90A7_0B   ; 
; 03 
- D 0 - I - 0x024E79 09:8E69: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E7A 09:8E6A: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024E7B 09:8E6B: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024E7C 09:8E6C: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024E7D 09:8E6D: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024E7E 09:8E6E: 0F        .byte con_90A7_0F   ; 
; 06 
- D 0 - I - 0x024E7F 09:8E6F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E80 09:8E70: 01        .byte con_90A7_01   ; 
; 07 
- D 0 - I - 0x024E81 09:8E71: 36        .byte con_8671_36   ; 
- D 0 - I - 0x024E82 09:8E72: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024E83 09:8E73: 28        .byte con_8671_28   ; 
- D 0 - I - 0x024E84 09:8E74: 46        .byte con_90A7_46   ; 
; 09 
- D 0 - I - 0x024E85 09:8E75: 15        .byte con_8671_15   ; 
- D 0 - I - 0x024E86 09:8E76: 14        .byte con_90A7_14   ; 



_off026_8E77_42:
; 00 
- D 0 - I - 0x024E87 09:8E77: 35        .byte con_8671_35   ; 
- D 0 - I - 0x024E88 09:8E78: 01        .byte con_90A7_01   ; 
; 01 
- D 0 - I - 0x024E89 09:8E79: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024E8A 09:8E7A: 12        .byte con_90A7_12   ; 
; 02 
- D 0 - I - 0x024E8B 09:8E7B: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E8C 09:8E7C: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024E8D 09:8E7D: 34        .byte con_8671_34   ; 
- D 0 - I - 0x024E8E 09:8E7E: 47        .byte con_90A7_47   ; 
; 04 
- D 0 - I - 0x024E8F 09:8E7F: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024E90 09:8E80: 0F        .byte con_90A7_0F   ; 
; 05 
- D 0 - I - 0x024E91 09:8E81: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024E92 09:8E82: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024E93 09:8E83: 36        .byte con_8671_36   ; 
- D 0 - I - 0x024E94 09:8E84: 01        .byte con_90A7_01   ; 
; 07 
- D 0 - I - 0x024E95 09:8E85: 28        .byte con_8671_28   ; 
- D 0 - I - 0x024E96 09:8E86: 48        .byte con_90A7_48   ; 
; 08 
- D 0 - I - 0x024E97 09:8E87: 15        .byte con_8671_15   ; 
- D 0 - I - 0x024E98 09:8E88: 20        .byte con_90A7_20   ; 



_off026_8E89_43:
; 00 
- - - - - - 0x024E99 09:8E89: 0E        .byte con_8671_0E   ; 
- - - - - - 0x024E9A 09:8E8A: 49        .byte con_90A7_49   ; 
; 01 
- - - - - - 0x024E9B 09:8E8B: 02        .byte con_8671_02   ; 
- - - - - - 0x024E9C 09:8E8C: 0A        .byte con_90A7_0A   ; 
; 02 
- - - - - - 0x024E9D 09:8E8D: 04        .byte con_8671_04   ; 
- - - - - - 0x024E9E 09:8E8E: 01        .byte con_90A7_01   ; 



_off026_8E8F_44:
; 00 
- D 0 - I - 0x024E9F 09:8E8F: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024EA0 09:8E90: 14        .byte con_90A7_14   ; 
; 01 
- D 0 - I - 0x024EA1 09:8E91: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024EA2 09:8E92: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024EA3 09:8E93: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024EA4 09:8E94: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024EA5 09:8E95: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024EA6 09:8E96: 0F        .byte con_90A7_0F   ; 
; 04 
- D 0 - I - 0x024EA7 09:8E97: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024EA8 09:8E98: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024EA9 09:8E99: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024EAA 09:8E9A: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024EAB 09:8E9B: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024EAC 09:8E9C: 0F        .byte con_90A7_0F   ; 
; 07 
- D 0 - I - 0x024EAD 09:8E9D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024EAE 09:8E9E: 01        .byte con_90A7_01   ; 
; 08 
- - - - - - 0x024EAF 09:8E9F: 21        .byte con_8671_21   ; 
- - - - - - 0x024EB0 09:8EA0: 01        .byte con_90A7_01   ; 



_off026_8EA1_45:
; 00 
- D 0 - I - 0x024EB1 09:8EA1: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024EB2 09:8EA2: 01        .byte con_90A7_01   ; 
; 01 
- D 0 - I - 0x024EB3 09:8EA3: 39        .byte con_8671_39   ; 
- D 0 - I - 0x024EB4 09:8EA4: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024EB5 09:8EA5: 08        .byte con_8671_08   ; 
- D 0 - I - 0x024EB6 09:8EA6: 4A        .byte con_90A7_4A   ; 
; 03 
- D 0 - I - 0x024EB7 09:8EA7: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024EB8 09:8EA8: 01        .byte con_90A7_01   ; 
; 04 
- - - - - - 0x024EB9 09:8EA9: 21        .byte con_8671_21   ; 
- - - - - - 0x024EBA 09:8EAA: 01        .byte con_90A7_01   ; 



_off026_8EAB_46:
; 00 
- D 0 - I - 0x024EBB 09:8EAB: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024EBC 09:8EAC: 0C        .byte con_90A7_0C   ; 
; 01 
- D 0 - I - 0x024EBD 09:8EAD: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024EBE 09:8EAE: 01        .byte con_90A7_01   ; 
; 02 
- - - - - - 0x024EBF 09:8EAF: 21        .byte con_8671_21   ; 
- - - - - - 0x024EC0 09:8EB0: 01        .byte con_90A7_01   ; 



_off026_8EB1_47:
; 00 
- D 0 - I - 0x024EC1 09:8EB1: 22        .byte con_8671_22   ; 
- D 0 - I - 0x024EC2 09:8EB2: 2A        .byte con_90A7_2A   ; 
; 01 
- D 0 - I - 0x024EC3 09:8EB3: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024EC4 09:8EB4: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024EC5 09:8EB5: 21        .byte con_8671_21   ; 
- D 0 - I - 0x024EC6 09:8EB6: 01        .byte con_90A7_01   ; 



_off026_8EB7_48:
; 00 
- D 0 - I - 0x024EC7 09:8EB7: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024EC8 09:8EB8: 12        .byte con_90A7_12   ; 
; 01 
- - - - - - 0x024EC9 09:8EB9: 05        .byte con_8671_05   ; 
- - - - - - 0x024ECA 09:8EBA: 01        .byte con_90A7_01   ; 
; 02 
- - - - - - 0x024ECB 09:8EBB: 21        .byte con_8671_21   ; 
- - - - - - 0x024ECC 09:8EBC: 01        .byte con_90A7_01   ; 



_off026_8EBD_49:
; 00 
- D 0 - I - 0x024ECD 09:8EBD: 43        .byte con_8671_43   ; 
- D 0 - I - 0x024ECE 09:8EBE: 4B        .byte con_90A7_4B   ; 
; 01 
- D 0 - I - 0x024ECF 09:8EBF: 23        .byte con_8671_23   ; 
- D 0 - I - 0x024ED0 09:8EC0: 22        .byte con_90A7_22   ; 
; 02 
- D 0 - I - 0x024ED1 09:8EC1: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024ED2 09:8EC2: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024ED3 09:8EC3: 03        .byte con_8671_03   ; 
- D 0 - I - 0x024ED4 09:8EC4: 01        .byte con_90A7_01   ; 
; 04 
- D 0 - I - 0x024ED5 09:8EC5: 23        .byte con_8671_23   ; 
- D 0 - I - 0x024ED6 09:8EC6: 4A        .byte con_90A7_4A   ; 
; 05 
- D 0 - I - 0x024ED7 09:8EC7: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024ED8 09:8EC8: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024ED9 09:8EC9: 43        .byte con_8671_43   ; 
- D 0 - I - 0x024EDA 09:8ECA: 4C        .byte con_90A7_4C   ; 
; 07 
- D 0 - I - 0x024EDB 09:8ECB: 23        .byte con_8671_23   ; 
- D 0 - I - 0x024EDC 09:8ECC: 22        .byte con_90A7_22   ; 
; 08 
- D 0 - I - 0x024EDD 09:8ECD: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024EDE 09:8ECE: 01        .byte con_90A7_01   ; 
; 09 
- D 0 - I - 0x024EDF 09:8ECF: 47        .byte con_8671_47   ; 
- D 0 - I - 0x024EE0 09:8ED0: 4D        .byte con_90A7_4D   ; 
; 0A 
- D 0 - I - 0x024EE1 09:8ED1: 23        .byte con_8671_23   ; 
- D 0 - I - 0x024EE2 09:8ED2: 22        .byte con_90A7_22   ; 
; 0B 
- D 0 - I - 0x024EE3 09:8ED3: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024EE4 09:8ED4: 01        .byte con_90A7_01   ; 
; 0C 
- D 0 - I - 0x024EE5 09:8ED5: 47        .byte con_8671_47   ; 
- D 0 - I - 0x024EE6 09:8ED6: 4E        .byte con_90A7_4E   ; 



_off026_8ED7_4A:
; 00 
- D 0 - I - 0x024EE7 09:8ED7: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024EE8 09:8ED8: 0F        .byte con_90A7_0F   ; 
; 01 
- D 0 - I - 0x024EE9 09:8ED9: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024EEA 09:8EDA: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024EEB 09:8EDB: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024EEC 09:8EDC: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024EED 09:8EDD: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024EEE 09:8EDE: 0F        .byte con_90A7_0F   ; 
; 04 
- D 0 - I - 0x024EEF 09:8EDF: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024EF0 09:8EE0: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024EF1 09:8EE1: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024EF2 09:8EE2: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024EF3 09:8EE3: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024EF4 09:8EE4: 0F        .byte con_90A7_0F   ; 
; 07 
- D 0 - I - 0x024EF5 09:8EE5: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024EF6 09:8EE6: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024EF7 09:8EE7: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024EF8 09:8EE8: 01        .byte con_90A7_01   ; 
; 09 
- D 0 - I - 0x024EF9 09:8EE9: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024EFA 09:8EEA: 0F        .byte con_90A7_0F   ; 
; 0A 
- D 0 - I - 0x024EFB 09:8EEB: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024EFC 09:8EEC: 01        .byte con_90A7_01   ; 
; 0B 
- D 0 - I - 0x024EFD 09:8EED: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024EFE 09:8EEE: 01        .byte con_90A7_01   ; 
; 0C 
- D 0 - I - 0x024EFF 09:8EEF: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024F00 09:8EF0: 0F        .byte con_90A7_0F   ; 
; 0D 
- D 0 - I - 0x024F01 09:8EF1: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F02 09:8EF2: 01        .byte con_90A7_01   ; 
; 0E 
- D 0 - I - 0x024F03 09:8EF3: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024F04 09:8EF4: 01        .byte con_90A7_01   ; 



_off026_8EF5_4B:
_off026_8EF5_4E:
; 00 
- D 0 - I - 0x024F05 09:8EF5: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024F06 09:8EF6: 12        .byte con_90A7_12   ; 
; 01 
- D 0 - I - 0x024F07 09:8EF7: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F08 09:8EF8: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024F09 09:8EF9: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024F0A 09:8EFA: 01        .byte con_90A7_01   ; 



_off026_8EFB_4C:
; 00 
- D 0 - I - 0x024F0B 09:8EFB: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024F0C 09:8EFC: 0F        .byte con_90A7_0F   ; 
; 01 
- D 0 - I - 0x024F0D 09:8EFD: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F0E 09:8EFE: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024F0F 09:8EFF: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024F10 09:8F00: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024F11 09:8F01: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024F12 09:8F02: 0F        .byte con_90A7_0F   ; 
; 04 
- D 0 - I - 0x024F13 09:8F03: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F14 09:8F04: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024F15 09:8F05: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024F16 09:8F06: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024F17 09:8F07: 01        .byte con_8671_01   ; 
- D 0 - I - 0x024F18 09:8F08: 4F        .byte con_90A7_4F   ; 
; 07 
- D 0 - I - 0x024F19 09:8F09: 44        .byte con_8671_44   ; 
- D 0 - I - 0x024F1A 09:8F0A: 4F        .byte con_90A7_4F   ; 
; 08 
- D 0 - I - 0x024F1B 09:8F0B: 28        .byte con_8671_28   ; 
- D 0 - I - 0x024F1C 09:8F0C: 50        .byte con_90A7_50   ; 
; 09 
- D 0 - I - 0x024F1D 09:8F0D: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024F1E 09:8F0E: 15        .byte con_90A7_15   ; 
; 0A 
- D 0 - I - 0x024F1F 09:8F0F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F20 09:8F10: 01        .byte con_90A7_01   ; 
; 0B 
- D 0 - I - 0x024F21 09:8F11: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024F22 09:8F12: 01        .byte con_90A7_01   ; 
; 0C 
- D 0 - I - 0x024F23 09:8F13: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024F24 09:8F14: 15        .byte con_90A7_15   ; 
; 0D 
- D 0 - I - 0x024F25 09:8F15: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F26 09:8F16: 01        .byte con_90A7_01   ; 
; 0E 
- D 0 - I - 0x024F27 09:8F17: 28        .byte con_8671_28   ; 
- D 0 - I - 0x024F28 09:8F18: 51        .byte con_90A7_51   ; 
; 0F 
- D 0 - I - 0x024F29 09:8F19: 0E        .byte con_8671_0E   ; 
- D 0 - I - 0x024F2A 09:8F1A: 27        .byte con_90A7_27   ; 
; 10 
- D 0 - I - 0x024F2B 09:8F1B: 18        .byte con_8671_18   ; 
- D 0 - I - 0x024F2C 09:8F1C: 4F        .byte con_90A7_4F   ; 
; 11 
- D 0 - I - 0x024F2D 09:8F1D: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024F2E 09:8F1E: 01        .byte con_90A7_01   ; 
; 12 
- D 0 - I - 0x024F2F 09:8F1F: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024F30 09:8F20: 12        .byte con_90A7_12   ; 
; 13 
- D 0 - I - 0x024F31 09:8F21: 26        .byte con_8671_26   ; 
- D 0 - I - 0x024F32 09:8F22: 01        .byte con_90A7_01   ; 
; 14 
- D 0 - I - 0x024F33 09:8F23: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024F34 09:8F24: 01        .byte con_90A7_01   ; 
; 15 
- D 0 - I - 0x024F35 09:8F25: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024F36 09:8F26: 01        .byte con_90A7_01   ; 



_off026_8F27_4D:
; 00 
- D 0 - I - 0x024F37 09:8F27: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024F38 09:8F28: 0F        .byte con_90A7_0F   ; 
; 01 
- D 0 - I - 0x024F39 09:8F29: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F3A 09:8F2A: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x024F3B 09:8F2B: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024F3C 09:8F2C: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024F3D 09:8F2D: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024F3E 09:8F2E: 0F        .byte con_90A7_0F   ; 
; 04 
- D 0 - I - 0x024F3F 09:8F2F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F40 09:8F30: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x024F41 09:8F31: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024F42 09:8F32: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024F43 09:8F33: 01        .byte con_8671_01   ; 
- D 0 - I - 0x024F44 09:8F34: 4F        .byte con_90A7_4F   ; 
; 07 
- D 0 - I - 0x024F45 09:8F35: 44        .byte con_8671_44   ; 
- D 0 - I - 0x024F46 09:8F36: 4F        .byte con_90A7_4F   ; 
; 08 
- D 0 - I - 0x024F47 09:8F37: 28        .byte con_8671_28   ; 
- D 0 - I - 0x024F48 09:8F38: 52        .byte con_90A7_52   ; 
; 09 
- D 0 - I - 0x024F49 09:8F39: 00        .byte con_8671_00   ; 
- D 0 - I - 0x024F4A 09:8F3A: 53        .byte con_90A7_53   ; 
; 0A 
- D 0 - I - 0x024F4B 09:8F3B: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024F4C 09:8F3C: 19        .byte con_90A7_19   ; 
; 0B 
- D 0 - I - 0x024F4D 09:8F3D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F4E 09:8F3E: 01        .byte con_90A7_01   ; 
; 0C 
- D 0 - I - 0x024F4F 09:8F3F: 28        .byte con_8671_28   ; 
- D 0 - I - 0x024F50 09:8F40: 51        .byte con_90A7_51   ; 
; 0D 
- D 0 - I - 0x024F51 09:8F41: 0E        .byte con_8671_0E   ; 
- D 0 - I - 0x024F52 09:8F42: 27        .byte con_90A7_27   ; 
; 0E 
- D 0 - I - 0x024F53 09:8F43: 18        .byte con_8671_18   ; 
- D 0 - I - 0x024F54 09:8F44: 4F        .byte con_90A7_4F   ; 
; 0F 
- D 0 - I - 0x024F55 09:8F45: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024F56 09:8F46: 01        .byte con_90A7_01   ; 
; 10 
- D 0 - I - 0x024F57 09:8F47: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024F58 09:8F48: 12        .byte con_90A7_12   ; 
; 11 
- D 0 - I - 0x024F59 09:8F49: 26        .byte con_8671_26   ; 
- D 0 - I - 0x024F5A 09:8F4A: 01        .byte con_90A7_01   ; 
; 12 
- D 0 - I - 0x024F5B 09:8F4B: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x024F5C 09:8F4C: 01        .byte con_90A7_01   ; 
; 13 
- D 0 - I - 0x024F5D 09:8F4D: 04        .byte con_8671_04   ; 
- D 0 - I - 0x024F5E 09:8F4E: 01        .byte con_90A7_01   ; 



_off026_8F4F_4F:
; 00 
- D 0 - I - 0x024F5F 09:8F4F: 08        .byte con_8671_08   ; 
- D 0 - I - 0x024F60 09:8F50: 70        .byte con_90A7_70   ; 
; 01 
- D 0 - I - 0x024F61 09:8F51: 21        .byte con_8671_21   ; 
- D 0 - I - 0x024F62 09:8F52: 01        .byte con_90A7_01   ; 



_off026_8F53_50:
; 00 
- D 0 - I - 0x024F63 09:8F53: 07        .byte con_8671_07   ; 
- D 0 - I - 0x024F64 09:8F54: 54        .byte con_90A7_54   ; 
; 01 
- - - - - - 0x024F65 09:8F55: 03        .byte con_8671_03   ; 
- - - - - - 0x024F66 09:8F56: 01        .byte con_90A7_01   ; 



_off026_8F57_51:
; 00 
- D 0 - I - 0x024F67 09:8F57: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024F68 09:8F58: 55        .byte con_90A7_55   ; 
; 01 
- D 0 - I - 0x024F69 09:8F59: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024F6A 09:8F5A: 75        .byte con_90A7_75   ; 
; 02 
- D 0 - I - 0x024F6B 09:8F5B: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F6C 09:8F5C: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024F6D 09:8F5D: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024F6E 09:8F5E: 5C        .byte con_90A7_5C   ; 
; 04 
- D 0 - I - 0x024F6F 09:8F5F: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024F70 09:8F60: 75        .byte con_90A7_75   ; 
; 05 
- D 0 - I - 0x024F71 09:8F61: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F72 09:8F62: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024F73 09:8F63: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024F74 09:8F64: 5C        .byte con_90A7_5C   ; 
; 07 
- - - - - - 0x024F75 09:8F65: 21        .byte con_8671_21   ; 
- - - - - - 0x024F76 09:8F66: 01        .byte con_90A7_01   ; 



_off026_8F67_52:
; 00 
- D 0 - I - 0x024F77 09:8F67: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024F78 09:8F68: 57        .byte con_90A7_57   ; 
; 01 
- D 0 - I - 0x024F79 09:8F69: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024F7A 09:8F6A: 15        .byte con_90A7_15   ; 
; 02 
- D 0 - I - 0x024F7B 09:8F6B: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F7C 09:8F6C: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024F7D 09:8F6D: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024F7E 09:8F6E: 58        .byte con_90A7_58   ; 
; 04 
- D 0 - I - 0x024F7F 09:8F6F: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024F80 09:8F70: 15        .byte con_90A7_15   ; 
; 05 
- D 0 - I - 0x024F81 09:8F71: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F82 09:8F72: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x024F83 09:8F73: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024F84 09:8F74: 58        .byte con_90A7_58   ; 
; 07 
- D 0 - I - 0x024F85 09:8F75: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024F86 09:8F76: 12        .byte con_90A7_12   ; 
; 08 
- D 0 - I - 0x024F87 09:8F77: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F88 09:8F78: 01        .byte con_90A7_01   ; 
; 09 
- D 0 - I - 0x024F89 09:8F79: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024F8A 09:8F7A: 59        .byte con_90A7_59   ; 
; 0A 
- D 0 - I - 0x024F8B 09:8F7B: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024F8C 09:8F7C: 15        .byte con_90A7_15   ; 
; 0B 
- D 0 - I - 0x024F8D 09:8F7D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F8E 09:8F7E: 01        .byte con_90A7_01   ; 
; 0C 
- D 0 - I - 0x024F8F 09:8F7F: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024F90 09:8F80: 59        .byte con_90A7_59   ; 
; 0D 
- - - - - - 0x024F91 09:8F81: 21        .byte con_8671_21   ; 
- - - - - - 0x024F92 09:8F82: 01        .byte con_90A7_01   ; 



_off026_8F83_53:
; 00 
- D 0 - I - 0x024F93 09:8F83: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024F94 09:8F84: 5A        .byte con_90A7_5A   ; 
; 01 
- D 0 - I - 0x024F95 09:8F85: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x024F96 09:8F86: 73        .byte con_90A7_73   ; 
; 02 
- D 0 - I - 0x024F97 09:8F87: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024F98 09:8F88: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024F99 09:8F89: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024F9A 09:8F8A: 56        .byte con_90A7_56   ; 
; 04 
- D 0 - I - 0x024F9B 09:8F8B: 33        .byte con_8671_33_move_object   ; 
- D 0 - I - 0x024F9C 09:8F8C: 5B        .byte con_90A7_5B   ; 
; 05 
- D 0 - I - 0x024F9D 09:8F8D: 3A        .byte con_8671_play_sound   ; 
- D 0 - I - 0x024F9E 09:8F8E: 68        .byte con_90A7_68   ; 
; 06 
- D 0 - I - 0x024F9F 09:8F8F: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024FA0 09:8F90: 74        .byte con_90A7_74   ; 
; 07 
- D 0 - I - 0x024FA1 09:8F91: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024FA2 09:8F92: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x024FA3 09:8F93: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024FA4 09:8F94: 56        .byte con_90A7_56   ; 
; 09 
- D 0 - I - 0x024FA5 09:8F95: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024FA6 09:8F96: 74        .byte con_90A7_74   ; 
; 0A 
- D 0 - I - 0x024FA7 09:8F97: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024FA8 09:8F98: 01        .byte con_90A7_01   ; 
; 0B 
- D 0 - I - 0x024FA9 09:8F99: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024FAA 09:8F9A: 5C        .byte con_90A7_5C   ; 
; 0C 
- D 0 - I - 0x024FAB 09:8F9B: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024FAC 09:8F9C: 74        .byte con_90A7_74   ; 
; 0D 
- D 0 - I - 0x024FAD 09:8F9D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024FAE 09:8F9E: 01        .byte con_90A7_01   ; 
; 0E 
- D 0 - I - 0x024FAF 09:8F9F: 33        .byte con_8671_33_move_object   ; 
- D 0 - I - 0x024FB0 09:8FA0: 6B        .byte con_90A7_6B   ; 
; 0F 
- D 0 - I - 0x024FB1 09:8FA1: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024FB2 09:8FA2: 56        .byte con_90A7_56   ; 
; 10 
- D 0 - I - 0x024FB3 09:8FA3: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024FB4 09:8FA4: 74        .byte con_90A7_74   ; 
; 11 
- D 0 - I - 0x024FB5 09:8FA5: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024FB6 09:8FA6: 01        .byte con_90A7_01   ; 
; 12 
- D 0 - I - 0x024FB7 09:8FA7: 3C        .byte con_8671_3C   ; 
- D 0 - I - 0x024FB8 09:8FA8: 0B        .byte con_90A7_0B   ; 
; 13 
- D 0 - I - 0x024FB9 09:8FA9: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024FBA 09:8FAA: 5D        .byte con_90A7_5D   ; 
; 14 
- D 0 - I - 0x024FBB 09:8FAB: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024FBC 09:8FAC: 74        .byte con_90A7_74   ; 
; 15 
- D 0 - I - 0x024FBD 09:8FAD: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024FBE 09:8FAE: 01        .byte con_90A7_01   ; 
; 16 
- D 0 - I - 0x024FBF 09:8FAF: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024FC0 09:8FB0: 5E        .byte con_90A7_5E   ; 
; 17 
- D 0 - I - 0x024FC1 09:8FB1: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024FC2 09:8FB2: 74        .byte con_90A7_74   ; 
; 18 
- D 0 - I - 0x024FC3 09:8FB3: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024FC4 09:8FB4: 01        .byte con_90A7_01   ; 
; 19 
- D 0 - I - 0x024FC5 09:8FB5: 3D        .byte con_8671_3D   ; 
- D 0 - I - 0x024FC6 09:8FB6: 4E        .byte con_90A7_4E   ; 
; 1A 
- D 0 - I - 0x024FC7 09:8FB7: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024FC8 09:8FB8: 5F        .byte con_90A7_5F   ; 
; 1B 
- D 0 - I - 0x024FC9 09:8FB9: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024FCA 09:8FBA: 17        .byte con_90A7_17   ; 
; 1C 
- D 0 - I - 0x024FCB 09:8FBB: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024FCC 09:8FBC: 01        .byte con_90A7_01   ; 
; 1D 
- D 0 - I - 0x024FCD 09:8FBD: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024FCE 09:8FBE: 60        .byte con_90A7_60   ; 
; 1E 
- D 0 - I - 0x024FCF 09:8FBF: 33        .byte con_8671_33_move_object   ; 
- D 0 - I - 0x024FD0 09:8FC0: 6C        .byte con_90A7_6C   ; 
; 1F 
- D 0 - I - 0x024FD1 09:8FC1: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024FD2 09:8FC2: 17        .byte con_90A7_17   ; 
; 20 
- D 0 - I - 0x024FD3 09:8FC3: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024FD4 09:8FC4: 01        .byte con_90A7_01   ; 
; 21 
- D 0 - I - 0x024FD5 09:8FC5: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024FD6 09:8FC6: 5F        .byte con_90A7_5F   ; 
; 22 
- D 0 - I - 0x024FD7 09:8FC7: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024FD8 09:8FC8: 17        .byte con_90A7_17   ; 
; 23 
- D 0 - I - 0x024FD9 09:8FC9: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024FDA 09:8FCA: 01        .byte con_90A7_01   ; 
; 24 
- D 0 - I - 0x024FDB 09:8FCB: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024FDC 09:8FCC: 60        .byte con_90A7_60   ; 
; 25 
- D 0 - I - 0x024FDD 09:8FCD: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024FDE 09:8FCE: 17        .byte con_90A7_17   ; 
; 26 
- D 0 - I - 0x024FDF 09:8FCF: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024FE0 09:8FD0: 01        .byte con_90A7_01   ; 
; 27 
- D 0 - I - 0x024FE1 09:8FD1: 29        .byte con_8671_29_clear_object_data   ; 
- D 0 - I - 0x024FE2 09:8FD2: 01        .byte con_90A7_01   ; 



_off026_8FD3_54:
; 00 
- D 0 - I - 0x024FE3 09:8FD3: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024FE4 09:8FD4: 5A        .byte con_90A7_5A   ; 
; 01 
- D 0 - I - 0x024FE5 09:8FD5: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024FE6 09:8FD6: 73        .byte con_90A7_73   ; 
; 02 
- D 0 - I - 0x024FE7 09:8FD7: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024FE8 09:8FD8: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x024FE9 09:8FD9: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024FEA 09:8FDA: 61        .byte con_90A7_61   ; 
; 04 
- D 0 - I - 0x024FEB 09:8FDB: 33        .byte con_8671_33_move_object   ; 
- D 0 - I - 0x024FEC 09:8FDC: 5B        .byte con_90A7_5B   ; 
; 05 
- D 0 - I - 0x024FED 09:8FDD: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024FEE 09:8FDE: 74        .byte con_90A7_74   ; 
; 06 
- D 0 - I - 0x024FEF 09:8FDF: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024FF0 09:8FE0: 01        .byte con_90A7_01   ; 
; 07 
- D 0 - I - 0x024FF1 09:8FE1: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024FF2 09:8FE2: 56        .byte con_90A7_56   ; 
; 08 
- D 0 - I - 0x024FF3 09:8FE3: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024FF4 09:8FE4: 74        .byte con_90A7_74   ; 
; 09 
- D 0 - I - 0x024FF5 09:8FE5: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024FF6 09:8FE6: 01        .byte con_90A7_01   ; 
; 0A 
- D 0 - I - 0x024FF7 09:8FE7: 46        .byte con_8671_46   ; 
- D 0 - I - 0x024FF8 09:8FE8: 56        .byte con_90A7_56   ; 
; 0B 
- D 0 - I - 0x024FF9 09:8FE9: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x024FFA 09:8FEA: 74        .byte con_90A7_74   ; 
; 0C 
- D 0 - I - 0x024FFB 09:8FEB: 05        .byte con_8671_05   ; 
- D 0 - I - 0x024FFC 09:8FEC: 01        .byte con_90A7_01   ; 
; 0D 
- D 0 - I - 0x024FFD 09:8FED: 3C        .byte con_8671_3C   ; 
- D 0 - I - 0x024FFE 09:8FEE: 0B        .byte con_90A7_0B   ; 
; 0E 
- D 0 - I - 0x024FFF 09:8FEF: 46        .byte con_8671_46   ; 
- D 0 - I - 0x025000 09:8FF0: 62        .byte con_90A7_62   ; 
; 0F 
- D 0 - I - 0x025001 09:8FF1: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x025002 09:8FF2: 17        .byte con_90A7_17   ; 
; 10 
- D 0 - I - 0x025003 09:8FF3: 05        .byte con_8671_05   ; 
- D 0 - I - 0x025004 09:8FF4: 01        .byte con_90A7_01   ; 
; 11 
- D 0 - I - 0x025005 09:8FF5: 46        .byte con_8671_46   ; 
- D 0 - I - 0x025006 09:8FF6: 63        .byte con_90A7_63   ; 
; 12 
- D 0 - I - 0x025007 09:8FF7: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x025008 09:8FF8: 17        .byte con_90A7_17   ; 
; 13 
- D 0 - I - 0x025009 09:8FF9: 05        .byte con_8671_05   ; 
- D 0 - I - 0x02500A 09:8FFA: 01        .byte con_90A7_01   ; 
; 14 
- D 0 - I - 0x02500B 09:8FFB: 3D        .byte con_8671_3D   ; 
- D 0 - I - 0x02500C 09:8FFC: 4E        .byte con_90A7_4E   ; 
; 15 
- D 0 - I - 0x02500D 09:8FFD: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x02500E 09:8FFE: 17        .byte con_90A7_17   ; 
; 16 
- D 0 - I - 0x02500F 09:8FFF: 05        .byte con_8671_05   ; 
- D 0 - I - 0x025010 09:9000: 01        .byte con_90A7_01   ; 
; 17 
- D 0 - I - 0x025011 09:9001: 46        .byte con_8671_46   ; 
- D 0 - I - 0x025012 09:9002: 60        .byte con_90A7_60   ; 
; 18 
- D 0 - I - 0x025013 09:9003: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x025014 09:9004: 17        .byte con_90A7_17   ; 
; 19 
- D 0 - I - 0x025015 09:9005: 05        .byte con_8671_05   ; 
- D 0 - I - 0x025016 09:9006: 01        .byte con_90A7_01   ; 
; 1A 
- D 0 - I - 0x025017 09:9007: 46        .byte con_8671_46   ; 
- D 0 - I - 0x025018 09:9008: 60        .byte con_90A7_60   ; 
; 1B 
- D 0 - I - 0x025019 09:9009: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x02501A 09:900A: 17        .byte con_90A7_17   ; 
; 1C 
- D 0 - I - 0x02501B 09:900B: 05        .byte con_8671_05   ; 
- D 0 - I - 0x02501C 09:900C: 01        .byte con_90A7_01   ; 
; 1D 
- D 0 - I - 0x02501D 09:900D: 46        .byte con_8671_46   ; 
- D 0 - I - 0x02501E 09:900E: 60        .byte con_90A7_60   ; 
; 1E 
- D 0 - I - 0x02501F 09:900F: 29        .byte con_8671_29_clear_object_data   ; 
- D 0 - I - 0x025020 09:9010: 01        .byte con_90A7_01   ; 



_off026_9011_55:
; 00 
- D 0 - I - 0x025021 09:9011: 18        .byte con_8671_18   ; 
- D 0 - I - 0x025022 09:9012: 0A        .byte con_90A7_0A   ; 
; 01 
- - - - - - 0x025023 09:9013: 29        .byte con_8671_29_clear_object_data   ; 
- - - - - - 0x025024 09:9014: 01        .byte con_90A7_01   ; 



_off026_9015_57:
; 00 
- D 0 - I - 0x025025 09:9015: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x025026 09:9016: 0F        .byte con_90A7_0F   ; 
; 01 
- D 0 - I - 0x025027 09:9017: 05        .byte con_8671_05   ; 
- D 0 - I - 0x025028 09:9018: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x025029 09:9019: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x02502A 09:901A: 02        .byte con_90A7_02   ; 
; 03 
- D 0 - I - 0x02502B 09:901B: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x02502C 09:901C: 0F        .byte con_90A7_0F   ; 
; 04 
- D 0 - I - 0x02502D 09:901D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x02502E 09:901E: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x02502F 09:901F: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x025030 09:9020: 02        .byte con_90A7_02   ; 
; 06 
- D 0 - I - 0x025031 09:9021: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x025032 09:9022: 0F        .byte con_90A7_0F   ; 
; 07 
- D 0 - I - 0x025033 09:9023: 05        .byte con_8671_05   ; 
- D 0 - I - 0x025034 09:9024: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x025035 09:9025: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x025036 09:9026: 02        .byte con_90A7_02   ; 
; 09 
- D 0 - I - 0x025037 09:9027: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x025038 09:9028: 0F        .byte con_90A7_0F   ; 
; 0A 
- D 0 - I - 0x025039 09:9029: 05        .byte con_8671_05   ; 
- D 0 - I - 0x02503A 09:902A: 01        .byte con_90A7_01   ; 
; 0B 
- D 0 - I - 0x02503B 09:902B: 1C        .byte con_8671_1C   ; 
- D 0 - I - 0x02503C 09:902C: 01        .byte con_90A7_01   ; 



_off026_902D_58:
; 00 
- D 0 - I - 0x02503D 09:902D: 00        .byte con_8671_00   ; 
- D 0 - I - 0x02503E 09:902E: 1A        .byte con_90A7_1A   ; 
; 01 
- D 0 - I - 0x02503F 09:902F: 07        .byte con_8671_07   ; 
- D 0 - I - 0x025040 09:9030: 71        .byte con_90A7_71   ; 



_off026_9031_59:
; 00 
- D 0 - I - 0x025041 09:9031: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x025042 09:9032: 17        .byte con_90A7_17   ; 
; 01 
- D 0 - I - 0x025043 09:9033: 05        .byte con_8671_05   ; 
- D 0 - I - 0x025044 09:9034: 01        .byte con_90A7_01   ; 
; 02 
- D 0 - I - 0x025045 09:9035: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x025046 09:9036: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x025047 09:9037: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x025048 09:9038: 17        .byte con_90A7_17   ; 
; 04 
- D 0 - I - 0x025049 09:9039: 05        .byte con_8671_05   ; 
- D 0 - I - 0x02504A 09:903A: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x02504B 09:903B: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x02504C 09:903C: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x02504D 09:903D: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x02504E 09:903E: 17        .byte con_90A7_17   ; 
; 07 
- D 0 - I - 0x02504F 09:903F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x025050 09:9040: 01        .byte con_90A7_01   ; 
; 08 
- D 0 - I - 0x025051 09:9041: 0C        .byte con_8671_0C   ; 
- D 0 - I - 0x025052 09:9042: 01        .byte con_90A7_01   ; 
; 09 
- D 0 - I - 0x025053 09:9043: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x025054 09:9044: 17        .byte con_90A7_17   ; 
; 0A 
- D 0 - I - 0x025055 09:9045: 05        .byte con_8671_05   ; 
- D 0 - I - 0x025056 09:9046: 01        .byte con_90A7_01   ; 
; 0B 
- - - - - - 0x025057 09:9047: 21        .byte con_8671_21   ; 
- - - - - - 0x025058 09:9048: 01        .byte con_90A7_01   ; 



_off026_9049_5A:
; 00 
- D 0 - I - 0x025059 09:9049: 22        .byte con_8671_22   ; 
- D 0 - I - 0x02505A 09:904A: 22        .byte con_90A7_22   ; 
; 01 
- D 0 - I - 0x02505B 09:904B: 21        .byte con_8671_21   ; 
- D 0 - I - 0x02505C 09:904C: 01        .byte con_90A7_01   ; 



_off026_904D_5D:
; 00 
- D 0 - I - 0x02505D 09:904D: 18        .byte con_8671_18   ; 
- D 0 - I - 0x02505E 09:904E: 0A        .byte con_90A7_0A   ; 
; 01 
- D 0 - I - 0x02505F 09:904F: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x025060 09:9050: 0F        .byte con_90A7_0F   ; 
; 02 
- D 0 - I - 0x025061 09:9051: 05        .byte con_8671_05   ; 
- D 0 - I - 0x025062 09:9052: 01        .byte con_90A7_01   ; 
; 03 
- D 0 - I - 0x025063 09:9053: 28        .byte con_8671_28   ; 
- D 0 - I - 0x025064 09:9054: 6A        .byte con_90A7_6A   ; 
; 04 
- D 0 - I - 0x025065 09:9055: 0D        .byte con_8671_0D   ; 
- D 0 - I - 0x025066 09:9056: 14        .byte con_90A7_14   ; 
; 05 
- D 0 - I - 0x025067 09:9057: 05        .byte con_8671_05   ; 
- D 0 - I - 0x025068 09:9058: 01        .byte con_90A7_01   ; 
; 06 
- D 0 - I - 0x025069 09:9059: 21        .byte con_8671_21   ; 
- D 0 - I - 0x02506A 09:905A: 01        .byte con_90A7_01   ; 



_off026_905B_5E:
; 00 
- D 0 - I - 0x02506B 09:905B: 22        .byte con_8671_22   ; 
- D 0 - I - 0x02506C 09:905C: 64        .byte con_90A7_64   ; 
; 01 
- D 0 - I - 0x02506D 09:905D: 21        .byte con_8671_21   ; 
- D 0 - I - 0x02506E 09:905E: 01        .byte con_90A7_01   ; 



_off026_905F_5F:
; 00 
- D 0 - I - 0x02506F 09:905F: 46        .byte con_8671_46   ; 
- D 0 - I - 0x025070 09:9060: 65        .byte con_90A7_65   ; 
; 01 
- D 0 - I - 0x025071 09:9061: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x025072 09:9062: 0F        .byte con_90A7_0F   ; 
; 02 
- D 0 - I - 0x025073 09:9063: 05        .byte con_8671_05   ; 
- D 0 - I - 0x025074 09:9064: 00        .byte con_90A7_00   ; 
; 03 
- D 0 - I - 0x025075 09:9065: 46        .byte con_8671_46   ; 
- D 0 - I - 0x025076 09:9066: 56        .byte con_90A7_56   ; 
; 04 
- D 0 - I - 0x025077 09:9067: 0E        .byte con_8671_0E   ; 
- D 0 - I - 0x025078 09:9068: 32        .byte con_90A7_32   ; 
; 05 
- D 0 - I - 0x025079 09:9069: 18        .byte con_8671_18   ; 
- D 0 - I - 0x02507A 09:906A: 0A        .byte con_90A7_0A   ; 
; 06 
- D 0 - I - 0x02507B 09:906B: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x02507C 09:906C: 0F        .byte con_90A7_0F   ; 
; 07 
- D 0 - I - 0x02507D 09:906D: 46        .byte con_8671_46   ; 
- D 0 - I - 0x02507E 09:906E: 56        .byte con_90A7_56   ; 
; 08 
- D 0 - I - 0x02507F 09:906F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x025080 09:9070: 00        .byte con_90A7_00   ; 
; 09 
- D 0 - I - 0x025081 09:9071: 46        .byte con_8671_46   ; 
- D 0 - I - 0x025082 09:9072: 56        .byte con_90A7_56   ; 
; 0A 
- D 0 - I - 0x025083 09:9073: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x025084 09:9074: 0F        .byte con_90A7_0F   ; 
; 0B 
- D 0 - I - 0x025085 09:9075: 05        .byte con_8671_05   ; 
- D 0 - I - 0x025086 09:9076: 00        .byte con_90A7_00   ; 
; 0C 
- D 0 - I - 0x025087 09:9077: 46        .byte con_8671_46   ; 
- D 0 - I - 0x025088 09:9078: 56        .byte con_90A7_56   ; 
; 0D 
- D 0 - I - 0x025089 09:9079: 29        .byte con_8671_29_clear_object_data   ; 
- D 0 - I - 0x02508A 09:907A: 01        .byte con_90A7_01   ; 



_off026_907B_60:
; 00 
- D 0 - I - 0x02508B 09:907B: 39        .byte con_8671_39   ; 
- D 0 - I - 0x02508C 09:907C: 01        .byte con_90A7_01   ; 
; 01 
- D 0 - I - 0x02508D 09:907D: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x02508E 09:907E: 0F        .byte con_90A7_0F   ; 
; 02 
- D 0 - I - 0x02508F 09:907F: 05        .byte con_8671_05   ; 
- D 0 - I - 0x025090 09:9080: 00        .byte con_90A7_00   ; 
; 03 
- D 0 - I - 0x025091 09:9081: 46        .byte con_8671_46   ; 
- D 0 - I - 0x025092 09:9082: 58        .byte con_90A7_58   ; 
; 04 
- D 0 - I - 0x025093 09:9083: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x025094 09:9084: 0F        .byte con_90A7_0F   ; 
; 05 
- D 0 - I - 0x025095 09:9085: 05        .byte con_8671_05   ; 
- D 0 - I - 0x025096 09:9086: 00        .byte con_90A7_00   ; 
; 06 
- D 0 - I - 0x025097 09:9087: 46        .byte con_8671_46   ; 
- D 0 - I - 0x025098 09:9088: 59        .byte con_90A7_59   ; 
; 07 
- D 0 - I - 0x025099 09:9089: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x02509A 09:908A: 0F        .byte con_90A7_0F   ; 
; 08 
- D 0 - I - 0x02509B 09:908B: 05        .byte con_8671_05   ; 
- D 0 - I - 0x02509C 09:908C: 00        .byte con_90A7_00   ; 
; 09 
- D 0 - I - 0x02509D 09:908D: 46        .byte con_8671_46   ; 
- D 0 - I - 0x02509E 09:908E: 58        .byte con_90A7_58   ; 
; 0A 
- D 0 - I - 0x02509F 09:908F: 20        .byte con_8671_20   ; 
- D 0 - I - 0x0250A0 09:9090: 66        .byte con_90A7_66   ; 
; 0B 
- D 0 - I - 0x0250A1 09:9091: 3E        .byte con_8671_3E   ; 
- D 0 - I - 0x0250A2 09:9092: 01        .byte con_90A7_01   ; 
; 0C 
- D 0 - I - 0x0250A3 09:9093: 1C        .byte con_8671_1C   ; 
- D 0 - I - 0x0250A4 09:9094: 01        .byte con_90A7_01   ; 



_off026_9095_61:
_off026_9095_62:
; 00 
- D 0 - I - 0x0250A5 09:9095: 0E        .byte con_8671_0E   ; 
- D 0 - I - 0x0250A6 09:9096: 01        .byte con_90A7_01   ; 
; 01 
- D 0 - I - 0x0250A7 09:9097: 02        .byte con_8671_02   ; 
- D 0 - I - 0x0250A8 09:9098: 0A        .byte con_90A7_0A   ; 
; 02 
- D 0 - I - 0x0250A9 09:9099: 28        .byte con_8671_28   ; 
- D 0 - I - 0x0250AA 09:909A: 67        .byte con_90A7_67   ; 
; 03 
- D 0 - I - 0x0250AB 09:909B: 0B        .byte con_8671_0B   ; 
- D 0 - I - 0x0250AC 09:909C: 0F        .byte con_90A7_0F   ; 
; 04 
- D 0 - I - 0x0250AD 09:909D: 05        .byte con_8671_05   ; 
- D 0 - I - 0x0250AE 09:909E: 01        .byte con_90A7_01   ; 
; 05 
- D 0 - I - 0x0250AF 09:909F: 04        .byte con_8671_04   ; 
- D 0 - I - 0x0250B0 09:90A0: 01        .byte con_90A7_01   ; 



_off026_90A1_63:
; 00 
- D 0 - I - 0x0250B1 09:90A1: 0E        .byte con_8671_0E   ; 
- D 0 - I - 0x0250B2 09:90A2: 01        .byte con_90A7_01   ; 
; 01 
- D 0 - I - 0x0250B3 09:90A3: 18        .byte con_8671_18   ; 
- D 0 - I - 0x0250B4 09:90A4: 0A        .byte con_90A7_0A   ; 
; 02 
- D 0 - I - 0x0250B5 09:90A5: 04        .byte con_8671_04   ; 
- D 0 - I - 0x0250B6 09:90A6: 01        .byte con_90A7_01   ; 



tbl_90A7:
; see con_90A7
; 00 
- D 0 - I - 0x0250B7 09:90A7: 0C        .byte $0C   ; 
- D 0 - I - 0x0250B8 09:90A8: 00        .byte $00   ; 
- D 0 - I - 0x0250B9 09:90A9: 00        .byte $00   ; 
; 01 
- D 0 - I - 0x0250BA 09:90AA: 00        .byte $00   ; 
- D 0 - I - 0x0250BB 09:90AB: 00        .byte $00   ; 
- D 0 - I - 0x0250BC 09:90AC: 00        .byte $00   ; 
; 02 
- D 0 - I - 0x0250BD 09:90AD: 06        .byte $06   ; 
- D 0 - I - 0x0250BE 09:90AE: 00        .byte $00   ; 
- D 0 - I - 0x0250BF 09:90AF: 00        .byte $00   ; 
; 03 
- D 0 - I - 0x0250C0 09:90B0: 00        .byte $00   ; 
- D 0 - I - 0x0250C1 09:90B1: 00        .byte $00   ; 
- D 0 - I - 0x0250C2 09:90B2: 30        .byte $30   ; 
; 04 
- D 0 - I - 0x0250C3 09:90B3: 01        .byte $01   ; 
- D 0 - I - 0x0250C4 09:90B4: 00        .byte $00   ; 
- D 0 - I - 0x0250C5 09:90B5: 20        .byte $20   ; 
; 05 
- - - - - - 0x0250C6 09:90B6: 04        .byte $04   ; 
- - - - - - 0x0250C7 09:90B7: 04        .byte $04   ; 
- - - - - - 0x0250C8 09:90B8: 00        .byte $00   ; 
; 06 
- - - - - - 0x0250C9 09:90B9: 05        .byte $05   ; 
- - - - - - 0x0250CA 09:90BA: 20        .byte $20   ; 
- - - - - - 0x0250CB 09:90BB: 00        .byte $00   ; 
; 07 
- - - - - - 0x0250CC 09:90BC: 04        .byte $04   ; 
- - - - - - 0x0250CD 09:90BD: 03        .byte $03   ; 
- - - - - - 0x0250CE 09:90BE: 00        .byte $00   ; 
; 08 
- - - - - - 0x0250CF 09:90BF: 05        .byte $05   ; 
- - - - - - 0x0250D0 09:90C0: FF        .byte $FF   ; 
- - - - - - 0x0250D1 09:90C1: 00        .byte $00   ; 
; 09 
- D 0 - I - 0x0250D2 09:90C2: 01        .byte $01   ; 
- D 0 - I - 0x0250D3 09:90C3: 38        .byte $38   ; 
- D 0 - I - 0x0250D4 09:90C4: 00        .byte $00   ; 
; 0A 
- D 0 - I - 0x0250D5 09:90C5: 00        .byte $00   ; 
- D 0 - I - 0x0250D6 09:90C6: 00        .byte $00   ; 
- D 0 - I - 0x0250D7 09:90C7: 20        .byte $20   ; 
; 0B 
- D 0 - I - 0x0250D8 09:90C8: 10        .byte $10   ; 
- D 0 - I - 0x0250D9 09:90C9: 00        .byte $00   ; 
- D 0 - I - 0x0250DA 09:90CA: 00        .byte $00   ; 
; 0C 
- D 0 - I - 0x0250DB 09:90CB: 18        .byte $18   ; 
- D 0 - I - 0x0250DC 09:90CC: 00        .byte $00   ; 
- D 0 - I - 0x0250DD 09:90CD: 00        .byte $00   ; 
; 0D 
- D 0 - I - 0x0250DE 09:90CE: 01        .byte $01   ; 
- D 0 - I - 0x0250DF 09:90CF: 00        .byte $00   ; 
- D 0 - I - 0x0250E0 09:90D0: 00        .byte $00   ; 
; 0E 
- D 0 - I - 0x0250E1 09:90D1: 14        .byte $14   ; 
- D 0 - I - 0x0250E2 09:90D2: 00        .byte $00   ; 
- D 0 - I - 0x0250E3 09:90D3: 00        .byte $00   ; 
; 0F 
- D 0 - I - 0x0250E4 09:90D4: 08        .byte $08   ; 
- D 0 - I - 0x0250E5 09:90D5: 00        .byte $00   ; 
- D 0 - I - 0x0250E6 09:90D6: 00        .byte $00   ; 
; 10 
- D 0 - I - 0x0250E7 09:90D7: 00        .byte $00   ; 
- D 0 - I - 0x0250E8 09:90D8: 80        .byte $80   ; 
- D 0 - I - 0x0250E9 09:90D9: 08        .byte $08   ; 
; 11 
- D 0 - I - 0x0250EA 09:90DA: 00        .byte $00   ; 
- D 0 - I - 0x0250EB 09:90DB: C0        .byte $C0   ; 
- D 0 - I - 0x0250EC 09:90DC: 20        .byte $20   ; 
; 12 
- D 0 - I - 0x0250ED 09:90DD: 3C        .byte $3C   ; 
- D 0 - I - 0x0250EE 09:90DE: 00        .byte $00   ; 
- D 0 - I - 0x0250EF 09:90DF: 00        .byte $00   ; 
; 13 
- D 0 - I - 0x0250F0 09:90E0: 2A        .byte con_sound_2A   ; 
- D 0 - I - 0x0250F1 09:90E1: 00        .byte $00   ; 
- D 0 - I - 0x0250F2 09:90E2: 00        .byte $00   ; 
; 14 
- D 0 - I - 0x0250F3 09:90E3: 40        .byte $40   ; 
- D 0 - I - 0x0250F4 09:90E4: 00        .byte $00   ; 
- D 0 - I - 0x0250F5 09:90E5: 00        .byte $00   ; 
; 15 
- D 0 - I - 0x0250F6 09:90E6: 0C        .byte $0C   ; 
- D 0 - I - 0x0250F7 09:90E7: 00        .byte $00   ; 
- D 0 - I - 0x0250F8 09:90E8: 00        .byte $00   ; 
; 16 
- D 0 - I - 0x0250F9 09:90E9: 03        .byte $03   ; 
- D 0 - I - 0x0250FA 09:90EA: 01        .byte $01   ; 
- D 0 - I - 0x0250FB 09:90EB: 02        .byte $02   ; 
; 17 
- D 0 - I - 0x0250FC 09:90EC: 04        .byte $04   ; 
- D 0 - I - 0x0250FD 09:90ED: 00        .byte $00   ; 
- D 0 - I - 0x0250FE 09:90EE: 00        .byte $00   ; 
; 18 
- D 0 - I - 0x0250FF 09:90EF: F9        .byte $F9   ; 
- D 0 - I - 0x025100 09:90F0: 00        .byte $00   ; 
- D 0 - I - 0x025101 09:90F1: 00        .byte $00   ; 
; 19 
- D 0 - I - 0x025102 09:90F2: 30        .byte $30   ; 
- D 0 - I - 0x025103 09:90F3: 00        .byte $00   ; 
- D 0 - I - 0x025104 09:90F4: 00        .byte $00   ; 
; 1A 
- D 0 - I - 0x025105 09:90F5: 01        .byte $01   ; 
- D 0 - I - 0x025106 09:90F6: 80        .byte $80   ; 
- D 0 - I - 0x025107 09:90F7: 20        .byte $20   ; 
; 1B 
- D 0 - I - 0x025108 09:90F8: FE        .byte $FE   ; 
- D 0 - I - 0x025109 09:90F9: 00        .byte $00   ; 
- D 0 - I - 0x02510A 09:90FA: 00        .byte $00   ; 
; 1C 
- D 0 - I - 0x02510B 09:90FB: 03        .byte $03   ; 
- D 0 - I - 0x02510C 09:90FC: 01        .byte $01   ; 
- D 0 - I - 0x02510D 09:90FD: 20        .byte $20   ; 
; 1D 
- D 0 - I - 0x02510E 09:90FE: 00        .byte $00   ; 
- D 0 - I - 0x02510F 09:90FF: 14        .byte $14   ; 
- D 0 - I - 0x025110 09:9100: 00        .byte $00   ; 
; 1E 
- D 0 - I - 0x025111 09:9101: 01        .byte $01   ; 
- D 0 - I - 0x025112 09:9102: 06        .byte $06   ; 
- D 0 - I - 0x025113 09:9103: 00        .byte $00   ; 
; 1F 
- D 0 - I - 0x025114 09:9104: 02        .byte $02   ; 
- D 0 - I - 0x025115 09:9105: 02        .byte $02   ; 
- D 0 - I - 0x025116 09:9106: 20        .byte $20   ; 
; 20 
- D 0 - I - 0x025117 09:9107: 12        .byte $12   ; 
- D 0 - I - 0x025118 09:9108: 00        .byte $00   ; 
- D 0 - I - 0x025119 09:9109: 00        .byte $00   ; 
; 21 
- D 0 - I - 0x02511A 09:910A: 03        .byte $03   ; 
- D 0 - I - 0x02511B 09:910B: 00        .byte $00   ; 
- D 0 - I - 0x02511C 09:910C: 10        .byte $10   ; 
; 22 
- D 0 - I - 0x02511D 09:910D: 07        .byte $07   ; 
- D 0 - I - 0x02511E 09:910E: 08        .byte $08   ; 
- D 0 - I - 0x02511F 09:910F: 00        .byte $00   ; 
; 23 
- D 0 - I - 0x025120 09:9110: 07        .byte $07   ; 
- D 0 - I - 0x025121 09:9111: 20        .byte $20   ; 
- D 0 - I - 0x025122 09:9112: 00        .byte $00   ; 
; 24 
- D 0 - I - 0x025123 09:9113: 19        .byte $19   ; 
- D 0 - I - 0x025124 09:9114: 1B        .byte $1B   ; 
- D 0 - I - 0x025125 09:9115: 00        .byte $00   ; 
; 25 
- D 0 - I - 0x025126 09:9116: 17        .byte $17   ; 
- D 0 - I - 0x025127 09:9117: 03        .byte $03   ; 
- D 0 - I - 0x025128 09:9118: 00        .byte $00   ; 
; 26 
- D 0 - I - 0x025129 09:9119: 04        .byte $04   ; 
- D 0 - I - 0x02512A 09:911A: 01        .byte $01   ; 
- D 0 - I - 0x02512B 09:911B: 01        .byte $01   ; 
; 27 
- D 0 - I - 0x02512C 09:911C: 03        .byte $03   ; 
- D 0 - I - 0x02512D 09:911D: 00        .byte $00   ; 
- D 0 - I - 0x02512E 09:911E: 00        .byte $00   ; 
; 28 
- D 0 - I - 0x02512F 09:911F: 22        .byte $22   ; 
- D 0 - I - 0x025130 09:9120: 00        .byte $00   ; 
- D 0 - I - 0x025131 09:9121: 00        .byte $00   ; 
; 29 
- D 0 - I - 0x025132 09:9122: 04        .byte $04   ; 
- D 0 - I - 0x025133 09:9123: 01        .byte $01   ; 
- D 0 - I - 0x025134 09:9124: 00        .byte $00   ; 
; 2A 
- D 0 - I - 0x025135 09:9125: 04        .byte $04   ; 
- D 0 - I - 0x025136 09:9126: 08        .byte $08   ; 
- D 0 - I - 0x025137 09:9127: 00        .byte $00   ; 
; 2B 
- D 0 - I - 0x025138 09:9128: 05        .byte $05   ; 
- D 0 - I - 0x025139 09:9129: 00        .byte $00   ; 
- D 0 - I - 0x02513A 09:912A: 00        .byte $00   ; 
; 2C 
- D 0 - I - 0x02513B 09:912B: 0A        .byte $0A   ; 
- D 0 - I - 0x02513C 09:912C: 00        .byte $00   ; 
- D 0 - I - 0x02513D 09:912D: 00        .byte $00   ; 
; 2D 
- D 0 - I - 0x02513E 09:912E: 39        .byte con_sound_39   ; 
- D 0 - I - 0x02513F 09:912F: 00        .byte $00   ; 
- D 0 - I - 0x025140 09:9130: 00        .byte $00   ; 
; 2E 
- D 0 - I - 0x025141 09:9131: 19        .byte $19   ; 
- D 0 - I - 0x025142 09:9132: 08        .byte $08   ; 
- D 0 - I - 0x025143 09:9133: 01        .byte $01   ; 
; 2F 
- D 0 - I - 0x025144 09:9134: 19        .byte $19   ; 
- D 0 - I - 0x025145 09:9135: 04        .byte $04   ; 
- D 0 - I - 0x025146 09:9136: 01        .byte $01   ; 
; 30 
- D 0 - I - 0x025147 09:9137: 00        .byte $00   ; 
- D 0 - I - 0x025148 09:9138: FD        .byte $FD   ; 
- D 0 - I - 0x025149 09:9139: FF        .byte $FF   ; 
; 31 
- D 0 - I - 0x02514A 09:913A: 0E        .byte con_obj_type_0E   ; 
- D 0 - I - 0x02514B 09:913B: 06        .byte $06   ; 
- D 0 - I - 0x02514C 09:913C: 00        .byte $00   ; 
; 32 
- D 0 - I - 0x02514D 09:913D: 00        .byte $00   ; 
- D 0 - I - 0x02514E 09:913E: 00        .byte $00   ; 
- D 0 - I - 0x02514F 09:913F: 03        .byte $03   ; 
; 33 
- D 0 - I - 0x025150 09:9140: 1A        .byte $1A   ; 
- D 0 - I - 0x025151 09:9141: 08        .byte $08   ; 
- D 0 - I - 0x025152 09:9142: 02        .byte $02   ; 
; 34 
- D 0 - I - 0x025153 09:9143: 01        .byte $01   ; 
- D 0 - I - 0x025154 09:9144: 00        .byte $00   ; 
- D 0 - I - 0x025155 09:9145: 40        .byte $40   ; 
; 35 
- D 0 - I - 0x025156 09:9146: 28        .byte $28   ; 
- D 0 - I - 0x025157 09:9147: 08        .byte $08   ; 
- D 0 - I - 0x025158 09:9148: 02        .byte $02   ; 
; 36 
- D 0 - I - 0x025159 09:9149: 00        .byte $00   ; 
- D 0 - I - 0x02515A 09:914A: 08        .byte $08   ; 
- D 0 - I - 0x02515B 09:914B: 00        .byte $00   ; 
; 37 
- D 0 - I - 0x02515C 09:914C: 01        .byte $01   ; 
- D 0 - I - 0x02515D 09:914D: 08        .byte $08   ; 
- D 0 - I - 0x02515E 09:914E: 00        .byte $00   ; 
; 38 
- D 0 - I - 0x02515F 09:914F: 02        .byte $02   ; 
- D 0 - I - 0x025160 09:9150: 08        .byte $08   ; 
- D 0 - I - 0x025161 09:9151: 00        .byte $00   ; 
; 39 
- D 0 - I - 0x025162 09:9152: A8        .byte $A8   ; 
- D 0 - I - 0x025163 09:9153: 00        .byte $00   ; 
- D 0 - I - 0x025164 09:9154: 00        .byte $00   ; 
; 3A 
- D 0 - I - 0x025165 09:9155: 0E        .byte con_obj_type_0E   ; 
- D 0 - I - 0x025166 09:9156: 04        .byte $04   ; 
- D 0 - I - 0x025167 09:9157: 00        .byte $00   ; 
; 3B 
- - - - - - 0x025168 09:9158: 04        .byte $04   ; 
- - - - - - 0x025169 09:9159: 60        .byte $60   ; 
- - - - - - 0x02516A 09:915A: 00        .byte $00   ; 
; 3C 
- D 0 - I - 0x02516B 09:915B: 37        .byte $37   ; 
- D 0 - I - 0x02516C 09:915C: 00        .byte $00   ; 
- D 0 - I - 0x02516D 09:915D: 00        .byte $00   ; 
; 3D 
- D 0 - I - 0x02516E 09:915E: 00        .byte $00   ; 
- D 0 - I - 0x02516F 09:915F: F0        .byte $F0   ; 
- D 0 - I - 0x025170 09:9160: 00        .byte $00   ; 
; 3E 
- D 0 - I - 0x025171 09:9161: 0A        .byte con_obj_type_0A   ; 
- D 0 - I - 0x025172 09:9162: 43        .byte $43   ; 
- D 0 - I - 0x025173 09:9163: 00        .byte $00   ; 
; 3F 
- D 0 - I - 0x025174 09:9164: F8        .byte $F8   ; 
- D 0 - I - 0x025175 09:9165: F0        .byte $F0   ; 
- D 0 - I - 0x025176 09:9166: 00        .byte $00   ; 
; 40 
- D 0 - I - 0x025177 09:9167: 00        .byte $00   ; 
- D 0 - I - 0x025178 09:9168: E0        .byte $E0   ; 
- D 0 - I - 0x025179 09:9169: 50        .byte $50   ; 
; 41 
- D 0 - I - 0x02517A 09:916A: 00        .byte $00   ; 
- D 0 - I - 0x02517B 09:916B: A0        .byte $A0   ; 
- D 0 - I - 0x02517C 09:916C: 10        .byte $10   ; 
; 42 
- D 0 - I - 0x02517D 09:916D: 18        .byte $18   ; 
- D 0 - I - 0x02517E 09:916E: 00        .byte $00   ; 
- D 0 - I - 0x02517F 09:916F: 00        .byte $00   ; 
; 43 
- D 0 - I - 0x025180 09:9170: 06        .byte con_sound_06   ; 
- D 0 - I - 0x025181 09:9171: 00        .byte $00   ; 
- D 0 - I - 0x025182 09:9172: 00        .byte $00   ; 
; 44 
- D 0 - I - 0x025183 09:9173: 00        .byte $00   ; 
- D 0 - I - 0x025184 09:9174: A0        .byte $A0   ; 
- D 0 - I - 0x025185 09:9175: 20        .byte $20   ; 
; 45 
- D 0 - I - 0x025186 09:9176: 00        .byte $00   ; 
- D 0 - I - 0x025187 09:9177: 80        .byte $80   ; 
- D 0 - I - 0x025188 09:9178: 10        .byte $10   ; 
; 46 
- D 0 - I - 0x025189 09:9179: 0A        .byte con_obj_type_0A   ; 
- D 0 - I - 0x02518A 09:917A: 12        .byte $12   ; 
- D 0 - I - 0x02518B 09:917B: 00        .byte $00   ; 
; 47 
- D 0 - I - 0x02518C 09:917C: 15        .byte $15   ; 
- D 0 - I - 0x02518D 09:917D: 00        .byte $00   ; 
- D 0 - I - 0x02518E 09:917E: 00        .byte $00   ; 
; 48 
- D 0 - I - 0x02518F 09:917F: 0A        .byte con_obj_type_0A   ; 
- D 0 - I - 0x025190 09:9180: 15        .byte $15   ; 
- D 0 - I - 0x025191 09:9181: 00        .byte $00   ; 
; 49 
- - - - - - 0x025192 09:9182: 00        .byte $00   ; 
- - - - - - 0x025193 09:9183: 03        .byte $03   ; 
- - - - - - 0x025194 09:9184: 00        .byte $00   ; 
; 4A 
- D 0 - I - 0x025195 09:9185: 07        .byte $07   ; 
- D 0 - I - 0x025196 09:9186: 40        .byte $40   ; 
- D 0 - I - 0x025197 09:9187: 00        .byte $00   ; 
; 4B 
- D 0 - I - 0x025198 09:9188: 04        .byte $04   ; 
- D 0 - I - 0x025199 09:9189: 01        .byte $01   ; 
- D 0 - I - 0x02519A 09:918A: 08        .byte $08   ; 
; 4C 
- D 0 - I - 0x02519B 09:918B: 04        .byte $04   ; 
- D 0 - I - 0x02519C 09:918C: 01        .byte $01   ; 
- D 0 - I - 0x02519D 09:918D: 09        .byte $09   ; 
; 4D 
- D 0 - I - 0x02519E 09:918E: FD        .byte $FD   ; 
- D 0 - I - 0x02519F 09:918F: 00        .byte $00   ; 
- D 0 - I - 0x0251A0 09:9190: 00        .byte $00   ; 
; 4E 
- D 0 - I - 0x0251A1 09:9191: FA        .byte $FA   ; 
- D 0 - I - 0x0251A2 09:9192: 00        .byte $00   ; 
- D 0 - I - 0x0251A3 09:9193: 00        .byte $00   ; 
; 4F 
- D 0 - I - 0x0251A4 09:9194: 03        .byte $03   ; 
- D 0 - I - 0x0251A5 09:9195: 00        .byte $00   ; 
- D 0 - I - 0x0251A6 09:9196: 70        .byte $70   ; 
; 50 
- D 0 - I - 0x0251A7 09:9197: 10        .byte con_obj_type_10   ; 
- D 0 - I - 0x0251A8 09:9198: 34        .byte $34   ; 
- D 0 - I - 0x0251A9 09:9199: 00        .byte $00   ; 
; 51 
- D 0 - I - 0x0251AA 09:919A: 10        .byte con_obj_type_10   ; 
- D 0 - I - 0x0251AB 09:919B: 36        .byte $36   ; 
- D 0 - I - 0x0251AC 09:919C: 00        .byte $00   ; 
; 52 
- D 0 - I - 0x0251AD 09:919D: 10        .byte con_obj_type_10   ; 
- D 0 - I - 0x0251AE 09:919E: 30        .byte $30   ; 
- D 0 - I - 0x0251AF 09:919F: 00        .byte $00   ; 
; 53 
- D 0 - I - 0x0251B0 09:91A0: 00        .byte $00   ; 
- D 0 - I - 0x0251B1 09:91A1: 80        .byte $80   ; 
- D 0 - I - 0x0251B2 09:91A2: 00        .byte $00   ; 
; 54 
- D 0 - I - 0x0251B3 09:91A3: 08        .byte $08   ; 
- D 0 - I - 0x0251B4 09:91A4: 05        .byte $05   ; 
- D 0 - I - 0x0251B5 09:91A5: 00        .byte $00   ; 
; 55 
- D 0 - I - 0x0251B6 09:91A6: 10        .byte con_obj_type_10   ; 
- D 0 - I - 0x0251B7 09:91A7: 8C        .byte $8C   ; 
- D 0 - I - 0x0251B8 09:91A8: 01        .byte $01   ; 
; 56 
- D 0 - I - 0x0251B9 09:91A9: FF        .byte $FF   ; 
- D 0 - I - 0x0251BA 09:91AA: 00        .byte $00   ; 
- D 0 - I - 0x0251BB 09:91AB: 00        .byte $00   ; 
; 57 
- D 0 - I - 0x0251BC 09:91AC: 10        .byte con_obj_type_10   ; 
- D 0 - I - 0x0251BD 09:91AD: 90        .byte $90   ; 
- D 0 - I - 0x0251BE 09:91AE: FF        .byte $FF   ; 
; 58 
- D 0 - I - 0x0251BF 09:91AF: FF        .byte $FF   ; 
- D 0 - I - 0x0251C0 09:91B0: 00        .byte $00   ; 
- D 0 - I - 0x0251C1 09:91B1: FF        .byte $FF   ; 
; 59 
- D 0 - I - 0x0251C2 09:91B2: FE        .byte $FE   ; 
- D 0 - I - 0x0251C3 09:91B3: 00        .byte $00   ; 
- D 0 - I - 0x0251C4 09:91B4: FF        .byte $FF   ; 
; 5A 
- D 0 - I - 0x0251C5 09:91B5: 10        .byte con_obj_type_10   ; 
- D 0 - I - 0x0251C6 09:91B6: 96        .byte $96   ; 
- D 0 - I - 0x0251C7 09:91B7: 00        .byte $00   ; 
; 5B 
- D 0 - I - 0x0251C8 09:91B8: 00        .byte $00   ; 
- D 0 - I - 0x0251C9 09:91B9: F8        .byte $F8   ; 
- D 0 - I - 0x0251CA 09:91BA: 00        .byte $00   ; 
; 5C 
- D 0 - I - 0x0251CB 09:91BB: FF        .byte $FF   ; 
- D 0 - I - 0x0251CC 09:91BC: 00        .byte $00   ; 
- D 0 - I - 0x0251CD 09:91BD: 01        .byte $01   ; 
; 5D 
- D 0 - I - 0x0251CE 09:91BE: 10        .byte con_obj_type_10   ; 
- D 0 - I - 0x0251CF 09:91BF: A0        .byte $A0   ; 
- D 0 - I - 0x0251D0 09:91C0: 01        .byte $01   ; 
; 5E 
- D 0 - I - 0x0251D1 09:91C1: 10        .byte con_obj_type_10   ; 
- D 0 - I - 0x0251D2 09:91C2: A0        .byte $A0   ; 
- D 0 - I - 0x0251D3 09:91C3: 00        .byte $00   ; 
; 5F 
- D 0 - I - 0x0251D4 09:91C4: FE        .byte $FE   ; 
- D 0 - I - 0x0251D5 09:91C5: 00        .byte $00   ; 
- D 0 - I - 0x0251D6 09:91C6: 01        .byte $01   ; 
; 60 
- D 0 - I - 0x0251D7 09:91C7: FE        .byte $FE   ; 
- D 0 - I - 0x0251D8 09:91C8: 00        .byte $00   ; 
- D 0 - I - 0x0251D9 09:91C9: 00        .byte $00   ; 
; 61 
- D 0 - I - 0x0251DA 09:91CA: 10        .byte con_obj_type_10   ; 
- D 0 - I - 0x0251DB 09:91CB: A2        .byte $A2   ; 
- D 0 - I - 0x0251DC 09:91CC: 00        .byte $00   ; 
; 62 
- D 0 - I - 0x0251DD 09:91CD: 10        .byte con_obj_type_10   ; 
- D 0 - I - 0x0251DE 09:91CE: A8        .byte $A8   ; 
- D 0 - I - 0x0251DF 09:91CF: 00        .byte $00   ; 
; 63 
- D 0 - I - 0x0251E0 09:91D0: 10        .byte con_obj_type_10   ; 
- D 0 - I - 0x0251E1 09:91D1: A8        .byte $A8   ; 
- D 0 - I - 0x0251E2 09:91D2: 01        .byte $01   ; 
; 64 
- D 0 - I - 0x0251E3 09:91D3: 08        .byte $08   ; 
- D 0 - I - 0x0251E4 09:91D4: 08        .byte $08   ; 
- D 0 - I - 0x0251E5 09:91D5: 00        .byte $00   ; 
; 65 
- D 0 - I - 0x0251E6 09:91D6: 10        .byte con_obj_type_10   ; 
- D 0 - I - 0x0251E7 09:91D7: D6        .byte $D6   ; 
- D 0 - I - 0x0251E8 09:91D8: 00        .byte $00   ; 
; 66 
- D 0 - I - 0x0251E9 09:91D9: 2C        .byte $2C   ; 
- D 0 - I - 0x0251EA 09:91DA: 01        .byte $01   ; 
- D 0 - I - 0x0251EB 09:91DB: 04        .byte $04   ; 
; 67 
- D 0 - I - 0x0251EC 09:91DC: 10        .byte con_obj_type_10   ; 
- D 0 - I - 0x0251ED 09:91DD: 4C        .byte $4C   ; 
- D 0 - I - 0x0251EE 09:91DE: 00        .byte $00   ; 
; 68 
- D 0 - I - 0x0251EF 09:91DF: 42        .byte con_sound_42   ; 
- D 0 - I - 0x0251F0 09:91E0: 00        .byte $00   ; 
- D 0 - I - 0x0251F1 09:91E1: 00        .byte $00   ; 
; 69 unused, index doesn't exist
- - - - - - 0x0251F2 09:91E2: 44        .byte $44   ; 
- - - - - - 0x0251F3 09:91E3: 00        .byte $00   ; 
- - - - - - 0x0251F4 09:91E4: 00        .byte $00   ; 
; 6A 
- D 0 - I - 0x0251F5 09:91E5: 0E        .byte con_obj_type_0E   ; 
- D 0 - I - 0x0251F6 09:91E6: 08        .byte $08   ; 
- D 0 - I - 0x0251F7 09:91E7: 00        .byte $00   ; 
; 6B 
- D 0 - I - 0x0251F8 09:91E8: 00        .byte $00   ; 
- D 0 - I - 0x0251F9 09:91E9: D0        .byte $D0   ; 
- D 0 - I - 0x0251FA 09:91EA: 00        .byte $00   ; 
; 6C 
- D 0 - I - 0x0251FB 09:91EB: 00        .byte $00   ; 
- D 0 - I - 0x0251FC 09:91EC: 30        .byte $30   ; 
- D 0 - I - 0x0251FD 09:91ED: 00        .byte $00   ; 
; 6D 
- D 0 - I - 0x0251FE 09:91EE: F0        .byte $F0   ; 
- D 0 - I - 0x0251FF 09:91EF: 00        .byte $00   ; 
- D 0 - I - 0x025200 09:91F0: 00        .byte $00   ; 
; 6E 
- D 0 - I - 0x025201 09:91F1: 08        .byte $08   ; 
- D 0 - I - 0x025202 09:91F2: 20        .byte $20   ; 
- D 0 - I - 0x025203 09:91F3: 00        .byte $00   ; 
; 6F 
- D 0 - I - 0x025204 09:91F4: 0A        .byte $0A   ; 
- D 0 - I - 0x025205 09:91F5: 20        .byte $20   ; 
- D 0 - I - 0x025206 09:91F6: 00        .byte $00   ; 
; 70 
- D 0 - I - 0x025207 09:91F7: 09        .byte $09   ; 
- D 0 - I - 0x025208 09:91F8: 08        .byte $08   ; 
- D 0 - I - 0x025209 09:91F9: 00        .byte $00   ; 
; 71 
- D 0 - I - 0x02520A 09:91FA: 04        .byte $04   ; 
- D 0 - I - 0x02520B 09:91FB: 04        .byte $04   ; 
- D 0 - I - 0x02520C 09:91FC: 00        .byte $00   ; 
; 72 
- D 0 - I - 0x02520D 09:91FD: 09        .byte $09   ; 
- D 0 - I - 0x02520E 09:91FE: 20        .byte $20   ; 
- D 0 - I - 0x02520F 09:91FF: 00        .byte $00   ; 
; 73 
- D 0 - I - 0x025210 09:9200: 10        .byte $10   ; 
- D 0 - I - 0x025211 09:9201: 00        .byte $00   ; 
- D 0 - I - 0x025212 09:9202: 00        .byte $00   ; 
; 74 
- D 0 - I - 0x025213 09:9203: 02        .byte $02   ; 
- D 0 - I - 0x025214 09:9204: 00        .byte $00   ; 
- D 0 - I - 0x025215 09:9205: 00        .byte $00   ; 
; 75 
- D 0 - I - 0x025216 09:9206: 0C        .byte $0C   ; 
- D 0 - I - 0x025217 09:9207: 00        .byte $00   ; 
- D 0 - I - 0x025218 09:9208: 00        .byte $00   ; 
; 76 
- D 0 - I - 0x025219 09:9209: 14        .byte $14   ; 
- D 0 - I - 0x02521A 09:920A: 00        .byte $00   ; 
- D 0 - I - 0x02521B 09:920B: 00        .byte $00   ; 



ofs_043_920C_1D:
C - - J - - 0x02521C 09:920C: AD EC 07  LDA ram_07EC
C - - - - - 0x02521F 09:920F: D0 03     BNE bra_9214
C - - - - - 0x025221 09:9211: 20 FF 92  JSR sub_92FF
bra_9214:
C - - - - - 0x025224 09:9214: 8A        TXA
C - - - - - 0x025225 09:9215: CD EC 07  CMP ram_07EC
C - - - - - 0x025228 09:9218: F0 02     BEQ bra_921C
C - - - - - 0x02522A 09:921A: B0 2E     BCS bra_924A
bra_921C:
C - - - - - 0x02522C 09:921C: 8D EC 07  STA ram_07EC
C - - - - - 0x02522F 09:921F: A0 00     LDY #$00
C - - - - - 0x025231 09:9221: 8C ED 07  STY ram_07ED
C - - - - - 0x025234 09:9224: C8        INY ; 01
C - - - - - 0x025235 09:9225: 8C F1 07  STY ram_07F1
C - - - - - 0x025238 09:9228: AC EC 07  LDY ram_07EC
bra_922B_loop:
C - - - - - 0x02523B 09:922B: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x02523E 09:922E: F0 14     BEQ bra_9244
C - - - - - 0x025240 09:9230: B9 EF 05  LDA ram_05EF_obj,Y
C - - - - - 0x025243 09:9233: 29 7F     AND #$7F
C - - - - - 0x025245 09:9235: C9 1F     CMP #$1F
C - - - - - 0x025247 09:9237: F0 08     BEQ bra_9241
C - - - - - 0x025249 09:9239: C9 1E     CMP #$1E
C - - - - - 0x02524B 09:923B: F0 04     BEQ bra_9241
C - - - - - 0x02524D 09:923D: C9 1A     CMP #$1A
C - - - - - 0x02524F 09:923F: D0 03     BNE bra_9244
bra_9241:
C - - - - - 0x025251 09:9241: EE ED 07  INC ram_07ED
bra_9244:
C - - - - - 0x025254 09:9244: C8        INY
C - - - - - 0x025255 09:9245: C0 0D     CPY #$0D
C - - - - - 0x025257 09:9247: D0 E2     BNE bra_922B_loop
C - - - - - 0x025259 09:9249: 8A        TXA
bra_924A:
C - - - - - 0x02525A 09:924A: 38        SEC
C - - - - - 0x02525B 09:924B: E9 01     SBC #$01
C - - - - - 0x02525D 09:924D: 0A        ASL
C - - - - - 0x02525E 09:924E: 85 04     STA ram_0004_temp
C - - - - - 0x025260 09:9250: A0 02     LDY #$02
C - - - - - 0x025262 09:9252: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025264 09:9254: 0A        ASL
C - - - - - 0x025265 09:9255: A8        TAY
C - - - - - 0x025266 09:9256: B9 18 93  LDA tbl_9318,Y
C - - - - - 0x025269 09:9259: 85 00     STA ram_0000_t010_data
C - - - - - 0x02526B 09:925B: B9 19 93  LDA tbl_9318 + $01,Y
C - - - - - 0x02526E 09:925E: 85 01     STA ram_0000_t010_data + $01
C - - - - - 0x025270 09:9260: A4 04     LDY ram_0004_temp
C - - - - - 0x025272 09:9262: B1 00     LDA (ram_0000_t010_data),Y
C - - - - - 0x025274 09:9264: 85 04     STA ram_0004_temp
C - - - - - 0x025276 09:9266: C8        INY
C - - - - - 0x025277 09:9267: B1 00     LDA (ram_0000_t010_data),Y
C - - - - - 0x025279 09:9269: 85 05     STA ram_0005_temp
C - - - - - 0x02527B 09:926B: A0 03     LDY #$03
C - - - - - 0x02527D 09:926D: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x02527F 09:926F: F0 12     BEQ bra_9283
C - - - - - 0x025281 09:9271: AC EC 07  LDY ram_07EC
C - - - - - 0x025284 09:9274: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x025287 09:9277: 18        CLC
C - - - - - 0x025288 09:9278: 65 04     ADC ram_0004_temp
C - - - - - 0x02528A 09:927A: 85 04     STA ram_0004_temp
C - - - - - 0x02528C 09:927C: A9 B0     LDA #$B0
C - - - - - 0x02528E 09:927E: 18        CLC
C - - - - - 0x02528F 09:927F: 65 05     ADC ram_0005_temp
C - - - - - 0x025291 09:9281: 85 05     STA ram_0005_temp
bra_9283:
C - - - - - 0x025293 09:9283: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x025296 09:9286: 38        SEC
C - - - - - 0x025297 09:9287: E5 04     SBC ram_0004_temp
C - - - - - 0x025299 09:9289: B0 05     BCS bra_9290
C - - - - - 0x02529B 09:928B: 49 FF     EOR #$FF
C - - - - - 0x02529D 09:928D: 18        CLC
C - - - - - 0x02529E 09:928E: 69 01     ADC #$01
bra_9290:
C - - - - - 0x0252A0 09:9290: C9 08     CMP #$08
C - - - - - 0x0252A2 09:9292: B0 2D     BCS bra_92C1
C - - - - - 0x0252A4 09:9294: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0252A7 09:9297: 38        SEC
C - - - - - 0x0252A8 09:9298: E5 05     SBC ram_0005_temp
C - - - - - 0x0252AA 09:929A: B0 05     BCS bra_92A1
C - - - - - 0x0252AC 09:929C: 49 FF     EOR #$FF
C - - - - - 0x0252AE 09:929E: 18        CLC
C - - - - - 0x0252AF 09:929F: 69 01     ADC #$01
bra_92A1:
C - - - - - 0x0252B1 09:92A1: C9 08     CMP #$08
C - - - - - 0x0252B3 09:92A3: B0 1C     BCS bra_92C1
C - - - - - 0x0252B5 09:92A5: A5 05     LDA ram_0005_temp
C - - - - - 0x0252B7 09:92A7: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0252BA 09:92AA: EC EC 07  CPX ram_07EC
C - - - - - 0x0252BD 09:92AD: F0 05     BEQ bra_92B4
C - - - - - 0x0252BF 09:92AF: AD F1 07  LDA ram_07F1
C - - - - - 0x0252C2 09:92B2: D0 0A     BNE bra_92BE
bra_92B4:
C - - - - - 0x0252C4 09:92B4: CE ED 07  DEC ram_07ED
C - - - - - 0x0252C7 09:92B7: F0 17     BEQ bra_92D0
C - - - - - 0x0252C9 09:92B9: A9 00     LDA #$00
C - - - - - 0x0252CB 09:92BB: 8D F1 07  STA ram_07F1
bra_92BE:
C - - - - - 0x0252CE 09:92BE: 4C C8 FE  JMP loc_0x03FED8_clear_speed
bra_92C1:
C - - - - - 0x0252D1 09:92C1: 20 30 FF  JSR sub_0x03FF40
C - - - - - 0x0252D4 09:92C4: A5 00     LDA ram_0000_temp
C - - - - - 0x0252D6 09:92C6: 4A        LSR
C - - - - - 0x0252D7 09:92C7: 29 0F     AND #$0F
C - - - - - 0x0252D9 09:92C9: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x0252DC 09:92CC: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x0252DF 09:92CF: 60        RTS
bra_92D0:
C - - - - - 0x0252E0 09:92D0: A0 01     LDY #$01
C - - - - - 0x0252E2 09:92D2: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x0252E4 09:92D4: 85 00     STA ram_0000_temp
C - - - - - 0x0252E6 09:92D6: AC EC 07  LDY ram_07EC
bra_92D9_loop:
C - - - - - 0x0252E9 09:92D9: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x0252EC 09:92DC: F0 16     BEQ bra_92F4
C - - - - - 0x0252EE 09:92DE: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x0252F1 09:92E1: 29 7F     AND #$7F
C - - - - - 0x0252F3 09:92E3: C9 1F     CMP #$1F
C - - - - - 0x0252F5 09:92E5: F0 08     BEQ bra_92EF
C - - - - - 0x0252F7 09:92E7: C9 1E     CMP #$1E
C - - - - - 0x0252F9 09:92E9: F0 04     BEQ bra_92EF
C - - - - - 0x0252FB 09:92EB: C9 1A     CMP #$1A
C - - - - - 0x0252FD 09:92ED: D0 05     BNE bra_92F4
bra_92EF:
C - - - - - 0x0252FF 09:92EF: A5 00     LDA ram_0000_temp
C - - - - - 0x025301 09:92F1: 99 C1 05  STA ram_05C1_obj,Y
bra_92F4:
C - - - - - 0x025304 09:92F4: C8        INY
C - - - - - 0x025305 09:92F5: C0 0D     CPY #$0D
C - - - - - 0x025307 09:92F7: D0 E0     BNE bra_92D9_loop
C - - - - - 0x025309 09:92F9: A9 02     LDA #$02
C - - - - - 0x02530B 09:92FB: 8D EE 07  STA ram_07EE
C - - - - - 0x02530E 09:92FE: 60        RTS



sub_92FF:
C - - - - - 0x02530F 09:92FF: A0 01     LDY #$01
bra_9301_loop:
C - - - - - 0x025311 09:9301: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x025314 09:9304: F0 09     BEQ bra_930F
C - - - - - 0x025316 09:9306: B9 EF 05  LDA ram_05EF_obj,Y
C - - - - - 0x025319 09:9309: 29 7F     AND #$7F
C - - - - - 0x02531B 09:930B: C9 48     CMP #$48
C - - - - - 0x02531D 09:930D: D0 05     BNE bra_9314
bra_930F:
C - - - - - 0x02531F 09:930F: C8        INY
C - - - - - 0x025320 09:9310: C0 0D     CPY #$0D
C - - - - - 0x025322 09:9312: D0 ED     BNE bra_9301_loop
bra_9314:
C - - - - - 0x025324 09:9314: 8C EC 07  STY ram_07EC
C - - - - - 0x025327 09:9317: 60        RTS



tbl_9318:
- D 0 - - - 0x025328 09:9318: 1C 93     .word off_931C_00
- D 0 - - - 0x02532A 09:931A: 34 93     .word off_9334_01



off_931C_00:
- D 0 - I - 0x02532C 09:931C: 60 50     .word $5060 ; 01 
- D 0 - I - 0x02532E 09:931E: 70 60     .word $6070 ; 02 
- D 0 - I - 0x025330 09:9320: 70 50     .word $5070 ; 03 
- D 0 - I - 0x025332 09:9322: 70 40     .word $4070 ; 04 
- - - - - - 0x025334 09:9324: 80 80     .word $8080 ; 05 
- - - - - - 0x025336 09:9326: 80 60     .word $6080 ; 06 
- D 0 - I - 0x025338 09:9328: 80 50     .word $5080 ; 07 
- D 0 - I - 0x02533A 09:932A: 80 40     .word $4080 ; 08 
- - - - - - 0x02533C 09:932C: 80 30     .word $3080 ; 09 
- - - - - - 0x02533E 09:932E: 00 00     .word $0000 ; 0A 
- - - - - - 0x025340 09:9330: 00 00     .word $0000 ; 0B 
- - - - - - 0x025342 09:9332: 00 00     .word $0000 ; 0C 



off_9334_01:
- D 0 - I - 0x025344 09:9334: 00 00     .word $0000 ; 01 
- D 0 - I - 0x025346 09:9336: 00 00     .word $0000 ; 02 
- D 0 - I - 0x025348 09:9338: 00 00     .word $0000 ; 03 
- D 0 - I - 0x02534A 09:933A: 00 00     .word $0000 ; 04 
- D 0 - I - 0x02534C 09:933C: 00 E0     .word $E000 ; 05 
- D 0 - I - 0x02534E 09:933E: 00 F0     .word $F000 ; 06 
- D 0 - I - 0x025350 09:9340: 00 E0     .word $E000 ; 07 
- D 0 - I - 0x025352 09:9342: 00 F0     .word $F000 ; 08 
- D 0 - I - 0x025354 09:9344: 00 E0     .word $E000 ; 09 
- D 0 - I - 0x025356 09:9346: 00 F0     .word $F000 ; 0A 
- - - - - - 0x025358 09:9348: 00 E0     .word $E000 ; 0B 
- - - - - - 0x02535A 09:934A: 00 F0     .word $F000 ; 0C 



ofs_043_934C_1E:
C - - J - - 0x02535C 09:934C: A0 03     LDY #$03
C - - - - - 0x02535E 09:934E: 8C EE 07  STY ram_07EE
C - - - - - 0x025361 09:9351: 88        DEY ; 02
C - - - - - 0x025362 09:9352: 8A        TXA
C - - - - - 0x025363 09:9353: CD EC 07  CMP ram_07EC
C - - - - - 0x025366 09:9356: D0 01     BNE bra_9359
C - - - - - 0x025368 09:9358: 88        DEY ; 01
bra_9359:
C - - - - - 0x025369 09:9359: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x02536C 09:935C: 29 80     AND #$80
C - - - - - 0x02536E 09:935E: 11 02     ORA (ram_0002_t001_data),Y
C - - - - - 0x025370 09:9360: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x025373 09:9363: A9 00     LDA #$00
C - - - - - 0x025375 09:9365: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x025378 09:9368: 60        RTS



ofs_043_9369_1F:
C - - J - - 0x025379 09:9369: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02537C 09:936C: AC EC 07  LDY ram_07EC
C - - - - - 0x02537F 09:936F: F0 46     BEQ bra_93B7
C - - - - - 0x025381 09:9371: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x025384 09:9374: D0 05     BNE bra_937B
- - - - - - 0x025386 09:9376: A9 03     LDA #$03
- - - - - - 0x025388 09:9378: 8D EE 07  STA ram_07EE
bra_937B:
C - - - - - 0x02538B 09:937B: AD EE 07  LDA ram_07EE
C - - - - - 0x02538E 09:937E: F0 34     BEQ bra_93B4
bra_9380_loop:
C - - - - - 0x025390 09:9380: C8        INY
C - - - - - 0x025391 09:9381: B9 EF 05  LDA ram_05EF_obj,Y
C - - - - - 0x025394 09:9384: 29 7F     AND #$7F
C - - - - - 0x025396 09:9386: C9 1B     CMP #$1B
C - - - - - 0x025398 09:9388: D0 F6     BNE bra_9380_loop
C - - - - - 0x02539A 09:938A: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x02539D 09:938D: F0 F1     BEQ bra_9380_loop
C - - - - - 0x02539F 09:938F: 86 00     STX ram_0000_temp
C - - - - - 0x0253A1 09:9391: 98        TYA
C - - - - - 0x0253A2 09:9392: C5 00     CMP ram_0000_temp
C - - - - - 0x0253A4 09:9394: D0 0D     BNE bra_93A3
C - - - - - 0x0253A6 09:9396: AC EC 07  LDY ram_07EC
C - - - - - 0x0253A9 09:9399: B9 65 05  LDA ram_obj_state,Y
C - - - - - 0x0253AC 09:939C: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x0253AF 09:939F: 8D ED 07  STA ram_07ED
C - - - - - 0x0253B2 09:93A2: 60        RTS
bra_93A3:
C - - - - - 0x0253B3 09:93A3: AD ED 07  LDA ram_07ED
C - - - - - 0x0253B6 09:93A6: 85 00     STA ram_0000_temp
C - - - - - 0x0253B8 09:93A8: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x0253BB 09:93AB: 8D ED 07  STA ram_07ED
C - - - - - 0x0253BE 09:93AE: A5 00     LDA ram_0000_temp
C - - - - - 0x0253C0 09:93B0: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x0253C3 09:93B3: 60        RTS
bra_93B4:
- - - - - - 0x0253C4 09:93B4: 4C 69 95  JMP loc_9569
bra_93B7:
C - - - - - 0x0253C7 09:93B7: 4C 60 95  JMP loc_9560



ofs_043_93BA_16:
C - - J - - 0x0253CA 09:93BA: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x0253CD 09:93BD: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x0253D0 09:93C0: A0 01     LDY #$01
C - - - - - 0x0253D2 09:93C2: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x0253D4 09:93C4: 85 00     STA ram_0000_temp
C - - - - - 0x0253D6 09:93C6: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x0253D9 09:93C9: 29 04     AND #$04
C - - - - - 0x0253DB 09:93CB: F0 1A     BEQ bra_93E7
C - - - - - 0x0253DD 09:93CD: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x0253E0 09:93D0: 29 08     AND #$08
C - - - - - 0x0253E2 09:93D2: F0 09     BEQ bra_93DD
- - - - - - 0x0253E4 09:93D4: A5 00     LDA ram_0000_temp
- - - - - - 0x0253E6 09:93D6: 49 FF     EOR #$FF
- - - - - - 0x0253E8 09:93D8: 18        CLC
- - - - - - 0x0253E9 09:93D9: 69 01     ADC #$01
- - - - - - 0x0253EB 09:93DB: 85 00     STA ram_0000_temp
bra_93DD:
C - - - - - 0x0253ED 09:93DD: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0253F0 09:93E0: 18        CLC
C - - - - - 0x0253F1 09:93E1: 65 00     ADC ram_0000_temp
C - - - - - 0x0253F3 09:93E3: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0253F6 09:93E6: 60        RTS
bra_93E7:
C - - - - - 0x0253F7 09:93E7: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x0253FA 09:93EA: 29 08     AND #$08
C - - - - - 0x0253FC 09:93EC: D0 09     BNE bra_93F7
C - - - - - 0x0253FE 09:93EE: A5 00     LDA ram_0000_temp
C - - - - - 0x025400 09:93F0: 49 FF     EOR #$FF
C - - - - - 0x025402 09:93F2: 18        CLC
C - - - - - 0x025403 09:93F3: 69 01     ADC #$01
C - - - - - 0x025405 09:93F5: 85 00     STA ram_0000_temp
bra_93F7:
C - - - - - 0x025407 09:93F7: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02540A 09:93FA: 18        CLC
C - - - - - 0x02540B 09:93FB: 65 00     ADC ram_0000_temp
C - - - - - 0x02540D 09:93FD: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x025410 09:9400: 60        RTS



ofs_043_9401_17:
C - - J - - 0x025411 09:9401: A0 0A     LDY #con_obj_type_0A
; bzk optimize, Y is always 0A
C - - - - - 0x025413 09:9403: B9 B4 EF  LDA tbl_0x03EFC4,Y
C - - - - - 0x025416 09:9406: 85 00     STA ram_0000_t009_data
C - - - - - 0x025418 09:9408: B9 B5 EF  LDA tbl_0x03EFC4 + $01,Y
C - - - - - 0x02541B 09:940B: 85 01     STA ram_0000_t009_data + $01
C - - - - - 0x02541D 09:940D: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x025420 09:9410: 0A        ASL
C - - - - - 0x025421 09:9411: 18        CLC
C - - - - - 0x025422 09:9412: 7D 33 06  ADC ram_obj_0634,X
C - - - - - 0x025425 09:9415: 18        CLC
C - - - - - 0x025426 09:9416: 65 00     ADC ram_0000_t009_data
C - - - - - 0x025428 09:9418: 85 00     STA ram_0000_t009_data
C - - - - - 0x02542A 09:941A: A5 01     LDA ram_0000_t009_data + $01
C - - - - - 0x02542C 09:941C: 69 00     ADC #$00
C - - - - - 0x02542E 09:941E: 85 01     STA ram_0000_t009_data + $01
C - - - - - 0x025430 09:9420: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x025433 09:9423: A0 01     LDY #$01
C - - - - - 0x025435 09:9425: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025437 09:9427: 88        DEY ; 00
C - - - - - 0x025438 09:9428: 0A        ASL
C - - - - - 0x025439 09:9429: 18        CLC
C - - - - - 0x02543A 09:942A: 71 00     ADC (ram_0000_t009_data),Y
C - - - - - 0x02543C 09:942C: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02543F 09:942F: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x025442 09:9432: 29 40     AND #con_obj_flag_40
C - - - - - 0x025444 09:9434: 09 20     ORA #con_obj_flag_20
C - - - - - 0x025446 09:9436: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x025449 09:9439: A0 02     LDY #$02
C - - - - - 0x02544B 09:943B: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x02544D 09:943D: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x025450 09:9440: 60        RTS



ofs_043_9441_14:
C - - J - - 0x025451 09:9441: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x025454 09:9444: BC 45 06  LDY ram_obj_0646,X
C - - - - - 0x025457 09:9447: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x025459 09:9449: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation



ofs_043_944C_15:
C - - J - - 0x02545C 09:944C: A0 01     LDY #$01
C - - - - - 0x02545E 09:944E: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025460 09:9450: 09 80     ORA #$80
C - - - - - 0x025462 09:9452: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x025465 09:9455: A9 00     LDA #$00
C - - - - - 0x025467 09:9457: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02546A 09:945A: 60        RTS



ofs_043_945B_13:
; bzk garbage
- - - - - - 0x02546B 09:945B: FE C1 05  INC ram_05C1_obj,X
- - - - - - 0x02546E 09:945E: BD 65 05  LDA ram_obj_state,X
- - - - - - 0x025471 09:9461: 18        CLC
- - - - - - 0x025472 09:9462: 69 08     ADC #$08
- - - - - - 0x025474 09:9464: 29 0F     AND #$0F
- - - - - - 0x025476 09:9466: 9D 65 05  STA ram_obj_state,X
- - - - - - 0x025479 09:9469: 29 08     AND #$08
- - - - - - 0x02547B 09:946B: F0 02     BEQ bra_946F
- - - - - - 0x02547D 09:946D: A9 01     LDA #$01    ; facing left
bra_946F:   ; A = 00 (facing right)
- - - - - - 0x02547F 09:946F: 9D A8 04  STA ram_obj_facing,X
- - - - - - 0x025482 09:9472: 60        RTS



ofs_043_9473_11:
C - - J - - 0x025483 09:9473: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x025486 09:9476: 20 DE 94  JSR sub_94DE
C - - - - - 0x025489 09:9479: 90 06     BCC bra_9481
- - - - - - 0x02548B 09:947B: B9 4C 04  LDA ram_obj_pos_X_hi + $14,Y
- - - - - - 0x02548E 09:947E: 4C 84 94  JMP loc_9484
bra_9481:
C - - - - - 0x025491 09:9481: AD 38 04  LDA ram_plr_pos_X_hi
loc_9484:
C - - - - - 0x025494 09:9484: 85 00     STA ram_0000_temp
C - - - - - 0x025496 09:9486: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x025499 09:9489: F0 04     BEQ bra_948F_facing_right
- - - - - - 0x02549B 09:948B: A9 FC     LDA #$FC
- - - - - - 0x02549D 09:948D: D0 02     BNE bra_9491
bra_948F_facing_right:
C - - - - - 0x02549F 09:948F: A9 04     LDA #$04
bra_9491:
C - - - - - 0x0254A1 09:9491: 18        CLC
C - - - - - 0x0254A2 09:9492: 65 00     ADC ram_0000_temp
C - - - - - 0x0254A4 09:9494: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0254A7 09:9497: A9 30     LDA #$30
C - - - - - 0x0254A9 09:9499: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0254AC 09:949C: 60        RTS



ofs_043_949D_12:
C - - J - - 0x0254AD 09:949D: 20 DE 94  JSR sub_94DE
C - - - - - 0x0254B0 09:94A0: 90 1E     BCC bra_94C0
- - - - - - 0x0254B2 09:94A2: A9 70     LDA #$70
- - - - - - 0x0254B4 09:94A4: 9D 1C 04  STA ram_obj_pos_Y_hi,X
- - - - - - 0x0254B7 09:94A7: FE C1 05  INC ram_05C1_obj,X
- - - - - - 0x0254BA 09:94AA: A0 01     LDY #$01
- - - - - - 0x0254BC 09:94AC: B1 02     LDA (ram_0002_t001_data),Y
- - - - - - 0x0254BE 09:94AE: 9D D8 05  STA ram_05D8_obj,X
- - - - - - 0x0254C1 09:94B1: BD 70 04  LDA ram_obj_flags,X
- - - - - - 0x0254C4 09:94B4: 29 77     AND #(con_obj_flag_08 + con_obj_flag_not_visible) ^ $FF
- - - - - - 0x0254C6 09:94B6: 9D 70 04  STA ram_obj_flags,X
- - - - - - 0x0254C9 09:94B9: A9 0A     LDA #con_obj_type_0A
- - - - - - 0x0254CB 09:94BB: A0 0C     LDY #$0C
- - - - - - 0x0254CD 09:94BD: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation
bra_94C0:
C - - - - - 0x0254D0 09:94C0: A9 01     LDA #$01
C - - - - - 0x0254D2 09:94C2: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x0254D5 09:94C5: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x0254D8 09:94C8: 29 77     AND #(con_obj_flag_08 + con_obj_flag_not_visible) ^ $FF
C - - - - - 0x0254DA 09:94CA: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0254DD 09:94CD: A9 10     LDA #$10
C - - - - - 0x0254DF 09:94CF: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x0254E2 09:94D2: A9 91     LDA #$91
C - - - - - 0x0254E4 09:94D4: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x0254E7 09:94D7: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x0254E9 09:94D9: A0 0B     LDY #$0B
C - - - - - 0x0254EB 09:94DB: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation



sub_94DE:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x0254EE 09:94DE: A0 02     LDY #$02
bra_94E0_loop:
C - - - - - 0x0254F0 09:94E0: B9 62 05  LDA ram_obj_id + $14,Y
C - - - - - 0x0254F3 09:94E3: C9 03     CMP #$03
C - - - - - 0x0254F5 09:94E5: F0 0B     BEQ bra_94F2
C - - - - - 0x0254F7 09:94E7: C9 08     CMP #$08
C - - - - - 0x0254F9 09:94E9: F0 07     BEQ bra_94F2
C - - - - - 0x0254FB 09:94EB: 88        DEY
C - - - - - 0x0254FC 09:94EC: C0 FF     CPY #$FF
C - - - - - 0x0254FE 09:94EE: D0 F0     BNE bra_94E0_loop
C - - - - - 0x025500 09:94F0: 18        CLC
C - - - - - 0x025501 09:94F1: 60        RTS
bra_94F2:
- - - - - - 0x025502 09:94F2: 38        SEC
- - - - - - 0x025503 09:94F3: 60        RTS



ofs_043_94F4_10:
; bzk garbage
- - - - - - 0x025504 09:94F4: A9 FF     LDA #$FF
- - - - - - 0x025506 09:94F6: 38        SEC
- - - - - - 0x025507 09:94F7: FD 38 04  SBC ram_obj_pos_X_hi,X
- - - - - - 0x02550A 09:94FA: 85 01     STA ram_0001_temp
- - - - - - 0x02550C 09:94FC: A9 00     LDA #$00
- - - - - - 0x02550E 09:94FE: 06 01     ASL ram_0001_temp
- - - - - - 0x025510 09:9500: 2A        ROL
- - - - - - 0x025511 09:9501: 9D F2 04  STA ram_obj_spd_X_hi,X
- - - - - - 0x025514 09:9504: A5 01     LDA ram_0001_temp
- - - - - - 0x025516 09:9506: 9D 09 05  STA ram_obj_spd_X_lo,X
- - - - - - 0x025519 09:9509: FE C1 05  INC ram_05C1_obj,X
- - - - - - 0x02551C 09:950C: A9 00     LDA #$00    ; facing right
- - - - - - 0x02551E 09:950E: 9D A8 04  STA ram_obj_facing,X
- - - - - - 0x025521 09:9511: A9 04     LDA #$04
- - - - - - 0x025523 09:9513: 9D 65 05  STA ram_obj_state,X
- - - - - - 0x025526 09:9516: 60        RTS



ofs_043_9517_0C:
C - - J - - 0x025527 09:9517: BD 8C 04  LDA ram_obj_type,X
C - - - - - 0x02552A 09:951A: BC AA 05  LDY ram_05AA_obj,X
C - - - - - 0x02552D 09:951D: C8        INY
C - - - - - 0x02552E 09:951E: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x025531 09:9521: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x025534 09:9524: A0 01     LDY #$01
C - - - - - 0x025536 09:9526: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025538 09:9528: 85 00     STA ram_0000_temp
C - - - - - 0x02553A 09:952A: F0 0E     BEQ bra_953A
C - - - - - 0x02553C 09:952C: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02553F 09:952F: F0 0C     BEQ bra_953D_facing_right
C - - - - - 0x025541 09:9531: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x025544 09:9534: 38        SEC
C - - - - - 0x025545 09:9535: E5 00     SBC ram_0000_temp
C - - - - - 0x025547 09:9537: 9D 38 04  STA ram_obj_pos_X_hi,X
bra_953A:
C - - - - - 0x02554A 09:953A: 4C 46 95  JMP loc_9546
bra_953D_facing_right:
C - - - - - 0x02554D 09:953D: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x025550 09:9540: 18        CLC
C - - - - - 0x025551 09:9541: 65 00     ADC ram_0000_temp
C - - - - - 0x025553 09:9543: 9D 38 04  STA ram_obj_pos_X_hi,X
loc_9546:
C D 0 - - - 0x025556 09:9546: A0 02     LDY #$02
C - - - - - 0x025558 09:9548: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x02555A 09:954A: 18        CLC
C - - - - - 0x02555B 09:954B: 7D 1C 04  ADC ram_obj_pos_Y_hi,X
C - - - - - 0x02555E 09:954E: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x025561 09:9551: 60        RTS



ofs_043_9552_0B:
C - - J - - 0x025562 09:9552: 20 C8 FE  JSR sub_0x03FED8_clear_speed
ofs_043_9555_0D:
C - - - - - 0x025565 09:9555: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x025568 09:9558: A0 01     LDY #$01
C - - - - - 0x02556A 09:955A: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x02556C 09:955C: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x02556F 09:955F: 60        RTS



loc_9560:
ofs_043_9560_04:
C D 0 J - - 0x025570 09:9560: A9 00     LDA #$00
C - - - - - 0x025572 09:9562: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x025575 09:9565: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x025578 09:9568: 60        RTS



loc_9569:
ofs_043_9569_1C:
C - - J - - 0x025579 09:9569: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x02557C 09:956C: 29 80     AND #$80
C - - - - - 0x02557E 09:956E: 9D EF 05  STA ram_05EF_obj,X
ofs_043_9571_03:
C - - - - - 0x025581 09:9571: A9 00     LDA #$00
C - - - - - 0x025583 09:9573: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x025586 09:9576: 60        RTS



ofs_043_9577_0F:
C - - J - - 0x025587 09:9577: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x02558A 09:957A: 18        CLC
C - - - - - 0x02558B 09:957B: 69 08     ADC #$08
C - - - - - 0x02558D 09:957D: 29 0F     AND #$0F
C - - - - - 0x02558F 09:957F: 85 05     STA ram_0005_temp
C - - - - - 0x025591 09:9581: 4C 89 95  JMP loc_9589



ofs_043_9584_00:
C - - J - - 0x025594 09:9584: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x025597 09:9587: 85 05     STA ram_0005_temp
loc_9589:
C D 0 - - - 0x025599 09:9589: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02559C 09:958C: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02559F 09:958F: A0 01     LDY #$01
C - - - - - 0x0255A1 09:9591: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x0255A3 09:9593: 85 00     STA ram_0000_temp
C - - - - - 0x0255A5 09:9595: C8        INY ; 02
C - - - - - 0x0255A6 09:9596: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x0255A8 09:9598: 85 01     STA ram_0001_temp
C - - - - - 0x0255AA 09:959A: C8        INY ; 03
C - - - - - 0x0255AB 09:959B: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x0255AD 09:959D: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x0255B0 09:95A0: A5 05     LDA ram_0005_temp
C - - - - - 0x0255B2 09:95A2: 29 07     AND #$07
C - - - - - 0x0255B4 09:95A4: F0 14     BEQ bra_95BA
C - - - - - 0x0255B6 09:95A6: A5 05     LDA ram_0005_temp
C - - - - - 0x0255B8 09:95A8: 29 08     AND #$08
C - - - - - 0x0255BA 09:95AA: F0 03     BEQ bra_95AF
C - - - - - 0x0255BC 09:95AC: 20 CE 95  JSR sub_95CE_EOR_16bit
bra_95AF:
C - - - - - 0x0255BF 09:95AF: A5 00     LDA ram_0000_temp
C - - - - - 0x0255C1 09:95B1: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x0255C4 09:95B4: A5 01     LDA ram_0001_temp
C - - - - - 0x0255C6 09:95B6: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x0255C9 09:95B9: 60        RTS
bra_95BA:
C - - - - - 0x0255CA 09:95BA: A5 05     LDA ram_0005_temp
C - - - - - 0x0255CC 09:95BC: 29 08     AND #$08
C - - - - - 0x0255CE 09:95BE: D0 03     BNE bra_95C3
- - - - - - 0x0255D0 09:95C0: 20 CE 95  JSR sub_95CE_EOR_16bit
bra_95C3:
C - - - - - 0x0255D3 09:95C3: A5 00     LDA ram_0000_temp
C - - - - - 0x0255D5 09:95C5: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x0255D8 09:95C8: A5 01     LDA ram_0001_temp
C - - - - - 0x0255DA 09:95CA: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0255DD 09:95CD: 60        RTS



sub_95CE_EOR_16bit:
C - - - - - 0x0255DE 09:95CE: A5 01     LDA ram_0001_temp
C - - - - - 0x0255E0 09:95D0: 49 FF     EOR #$FF
C - - - - - 0x0255E2 09:95D2: 18        CLC
C - - - - - 0x0255E3 09:95D3: 69 01     ADC #< $0001
C - - - - - 0x0255E5 09:95D5: 85 01     STA ram_0001_temp
C - - - - - 0x0255E7 09:95D7: A5 00     LDA ram_0000_temp
C - - - - - 0x0255E9 09:95D9: 49 FF     EOR #$FF
C - - - - - 0x0255EB 09:95DB: 69 00     ADC #> $0001
C - - - - - 0x0255ED 09:95DD: 85 00     STA ram_0000_temp
C - - - - - 0x0255EF 09:95DF: 60        RTS



ofs_043_95E0_0E:
C - - J - - 0x0255F0 09:95E0: A0 03     LDY #$03
C - - - - - 0x0255F2 09:95E2: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x0255F4 09:95E4: C9 FF     CMP #$FF
C - - - - - 0x0255F6 09:95E6: F0 20     BEQ bra_9608_FF
C - - - - - 0x0255F8 09:95E8: 0A        ASL
C - - - - - 0x0255F9 09:95E9: A8        TAY
C - - - - - 0x0255FA 09:95EA: B9 DB 96  LDA tbl_96DB_spd_X,Y
C - - - - - 0x0255FD 09:95ED: 85 00     STA ram_0000_temp
C - - - - - 0x0255FF 09:95EF: B9 DC 96  LDA tbl_96DB_spd_X + $01,Y
C - - - - - 0x025602 09:95F2: 85 01     STA ram_0001_temp
C - - - - - 0x025604 09:95F4: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x025607 09:95F7: 29 08     AND #$08
C - - - - - 0x025609 09:95F9: F0 03     BEQ bra_95FE
C - - - - - 0x02560B 09:95FB: 20 CE 95  JSR sub_95CE_EOR_16bit
bra_95FE:
C - - - - - 0x02560E 09:95FE: A5 00     LDA ram_0000_temp
C - - - - - 0x025610 09:9600: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x025613 09:9603: A5 01     LDA ram_0001_temp
C - - - - - 0x025615 09:9605: 9D 09 05  STA ram_obj_spd_X_lo,X
bra_9608_FF:
C - - - - - 0x025618 09:9608: A0 01     LDY #$01
C - - - - - 0x02561A 09:960A: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x02561C 09:960C: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02561F 09:960F: C8        INY ; 02
C - - - - - 0x025620 09:9610: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025622 09:9612: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x025625 09:9615: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x025628 09:9618: 60        RTS



ofs_043_9619_01:
C - - J - - 0x025629 09:9619: A0 02     LDY #$02
C - - - - - 0x02562B 09:961B: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x02562D 09:961D: 0A        ASL
C - - - - - 0x02562E 09:961E: A8        TAY
C - - - - - 0x02562F 09:961F: B9 DB 96  LDA tbl_96DB_spd_X,Y
C - - - - - 0x025632 09:9622: 85 00     STA ram_0000_temp
C - - - - - 0x025634 09:9624: B9 DC 96  LDA tbl_96DB_spd_X + $01,Y
C - - - - - 0x025637 09:9627: 85 01     STA ram_0001_temp
C - - - - - 0x025639 09:9629: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x02563C 09:962C: 29 08     AND #$08
C - - - - - 0x02563E 09:962E: F0 03     BEQ bra_9633
C - - - - - 0x025640 09:9630: 20 CE 95  JSR sub_95CE_EOR_16bit
bra_9633:
C - - - - - 0x025643 09:9633: A5 00     LDA ram_0000_temp
C - - - - - 0x025645 09:9635: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x025648 09:9638: A5 01     LDA ram_0001_temp
C - - - - - 0x02564A 09:963A: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02564D 09:963D: A0 01     LDY #$01
C - - - - - 0x02564F 09:963F: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025651 09:9641: 0A        ASL
C - - - - - 0x025652 09:9642: A8        TAY
C - - - - - 0x025653 09:9643: B9 D3 96  LDA tbl_96D3_spd_Y,Y
C - - - - - 0x025656 09:9646: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x025659 09:9649: B9 D4 96  LDA tbl_96D3_spd_Y + $01,Y
C - - - - - 0x02565C 09:964C: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02565F 09:964F: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x025662 09:9652: 60        RTS



ofs_043_9653_02:
ofs_043_9653_18:
ofs_043_9653_44:
C - - J - - 0x025663 09:9653: A0 03     LDY #$03
C - - - - - 0x025665 09:9655: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025667 09:9657: 85 00     STA ram_0000_temp
C - - - - - 0x025669 09:9659: BD 37 05  LDA ram_obj_spd_Y_lo,X
C - - - - - 0x02566C 09:965C: 18        CLC
C - - - - - 0x02566D 09:965D: 65 00     ADC ram_0000_temp
C - - - - - 0x02566F 09:965F: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x025672 09:9662: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x025675 09:9665: 69 00     ADC #$00
C - - - - - 0x025677 09:9667: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x02567A 09:966A: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x02567D 09:966D: 30 63     BMI bra_96D2_RTS
C - - - - - 0x02567F 09:966F: A0 00     LDY #$00
C - - - - - 0x025681 09:9671: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025683 09:9673: C9 44     CMP #$44
C - - - - - 0x025685 09:9675: F0 22     BEQ bra_9699
C - - - - - 0x025687 09:9677: C9 02     CMP #$02
C - - - - - 0x025689 09:9679: D0 2A     BNE bra_96A5
C - - - - - 0x02568B 09:967B: A0 10     LDY #$10
C - - - - - 0x02568D 09:967D: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x025690 09:9680: C9 01     CMP #$01
C - - - - - 0x025692 09:9682: D0 02     BNE bra_9686
C - - - - - 0x025694 09:9684: A0 18     LDY #$18
bra_9686:
C - - - - - 0x025696 09:9686: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x025699 09:9689: F0 04     BEQ bra_968F_facing_right
C - - - - - 0x02569B 09:968B: A9 FC     LDA #$FC
C - - - - - 0x02569D 09:968D: D0 02     BNE bra_9691    ; jmp
bra_968F_facing_right:
C - - - - - 0x02569F 09:968F: A9 04     LDA #$04
bra_9691:
C - - - - - 0x0256A1 09:9691: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x0256A4 09:9694: F0 0F     BEQ bra_96A5
C - - - - - 0x0256A6 09:9696: 4C E3 96  JMP loc_96E3
bra_9699:
C - - - - - 0x0256A9 09:9699: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x0256AC 09:969C: A9 00     LDA #$00
C - - - - - 0x0256AE 09:969E: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x0256B1 09:96A1: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0256B4 09:96A4: 60        RTS
bra_96A5:
C - - - - - 0x0256B5 09:96A5: A0 01     LDY #$01
C - - - - - 0x0256B7 09:96A7: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x0256B9 09:96A9: 0A        ASL
C - - - - - 0x0256BA 09:96AA: A8        TAY
C - - - - - 0x0256BB 09:96AB: B9 D3 96  LDA tbl_96D3_spd_Y,Y
C - - - - - 0x0256BE 09:96AE: 85 01     STA ram_0001_temp
C - - - - - 0x0256C0 09:96B0: B9 D4 96  LDA tbl_96D3_spd_Y + $01,Y
C - - - - - 0x0256C3 09:96B3: 85 00     STA ram_0000_temp
C - - - - - 0x0256C5 09:96B5: 20 CE 95  JSR sub_95CE_EOR_16bit
C - - - - - 0x0256C8 09:96B8: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x0256CB 09:96BB: C5 00     CMP ram_0000_temp
C - - - - - 0x0256CD 09:96BD: B0 09     BCS bra_96C8
C - - - - - 0x0256CF 09:96BF: D0 11     BNE bra_96D2_RTS
- - - - - - 0x0256D1 09:96C1: BD 37 05  LDA ram_obj_spd_Y_lo,X
- - - - - - 0x0256D4 09:96C4: C5 01     CMP ram_0001_temp
- - - - - - 0x0256D6 09:96C6: B0 0A     BCS bra_96D2_RTS
bra_96C8:
C - - - - - 0x0256D8 09:96C8: A5 00     LDA ram_0000_temp
C - - - - - 0x0256DA 09:96CA: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x0256DD 09:96CD: A5 01     LDA ram_0001_temp
C - - - - - 0x0256DF 09:96CF: 9D 37 05  STA ram_obj_spd_Y_lo,X
bra_96D2_RTS:
C - - - - - 0x0256E2 09:96D2: 60        RTS



tbl_96D3_spd_Y:
- D 0 - - - 0x0256E3 09:96D3: 00 FC     .word $FC00 ; 00 
- D 0 - - - 0x0256E5 09:96D5: 00 FE     .word $FE00 ; 01 
- D 0 - - - 0x0256E7 09:96D7: 00 FD     .word $FD00 ; 02 
- D 0 - - - 0x0256E9 09:96D9: 00 F8     .word $F800 ; 03 



tbl_96DB_spd_X:
- D 0 - - - 0x0256EB 09:96DB: 00 80     .dbyt $0080 ; 00 
- D 0 - - - 0x0256ED 09:96DD: 00 40     .dbyt $0040 ; 01 
- D 0 - - - 0x0256EF 09:96DF: 00 E0     .dbyt $00E0 ; 02 
- D 0 - - - 0x0256F1 09:96E1: 00 00     .dbyt $0000 ; 03 


; bzk bug, table overflow
; 0x0256B7 reading a lot of code as data from here
; movie walkthrough 1, frame around 30346, boss 1-04
loc_96E3:
C D 0 - - - 0x0256F3 09:96E3: FE C1 05  INC ram_05C1_obj,X
C D 0 - - - 0x0256F6 09:96E6: A9 00     LDA #$00
C D 0 - - - 0x0256F8 09:96E8: 9D 20 05  STA ram_obj_spd_Y_hi,X
C D 0 - - - 0x0256FB 09:96EB: 9D 37 05  STA ram_obj_spd_Y_lo,X
C D 0 - - - 0x0256FE 09:96EE: BD 4E 05  LDA ram_obj_id,X
C D 0 - - - 0x025701 09:96F1: C9 01     CMP #$01
C D 0 - - - 0x025703 09:96F3: F0 09     BEQ bra_96FE
C D 0 - - - 0x025705 09:96F5: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C D 0 - - - 0x025708 09:96F8: 29 F0     AND #$F0
C D 0 - - - 0x02570A 09:96FA: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C D 0 - - - 0x02570D 09:96FD: 60        RTS
bra_96FE:
C D 0 - - - 0x02570E 09:96FE: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C D 0 - - - 0x025711 09:9701: 29 F8     AND #$F8
C D 0 - - - 0x025713 09:9703: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C D 0 - - - 0x025716 09:9706: 60        RTS



ofs_043_9707_05:
C D 0 J - - 0x025717 09:9707: DE D8 05  DEC ram_05D8_obj,X
C D 0 - - - 0x02571A 09:970A: D0 03     BNE bra_970F_RTS
C D 0 - - - 0x02571C 09:970C: FE C1 05  INC ram_05C1_obj,X
bra_970F_RTS:
C D 0 - - - 0x02571F 09:970F: 60        RTS



ofs_043_9710_06:
- D 0 - - - 0x025720 09:9710: BD 65 05  LDA ram_obj_state,X
- D 0 - - - 0x025723 09:9713: 18        CLC
- D 0 - - - 0x025724 09:9714: 69 04     ADC #$04
- D 0 - - - 0x025726 09:9716: 29 0F     AND #$0F
- D 0 - - - 0x025728 09:9718: 9D 65 05  STA ram_obj_state,X
- D 0 - - - 0x02572B 09:971B: FE C1 05  INC ram_05C1_obj,X
- D 0 - - - 0x02572E 09:971E: 60        RTS



ofs_043_971F_1B:
; bzk garbage
- D 0 - - - 0x02572F 09:971F: DE D8 05  DEC ram_05D8_obj,X
- D 0 - - - 0x025732 09:9722: F0 03     BEQ bra_9727
- D 0 - - - 0x025734 09:9724: 4C 79 97  JMP loc_9779
bra_9727:
- D 0 - - - 0x025737 09:9727: FE C1 05  INC ram_05C1_obj,X
- D 0 - - - 0x02573A 09:972A: 60        RTS



ofs_043_972B_0A:
; bzk garbage
- D 0 - - - 0x02573B 09:972B: BD 45 06  LDA ram_obj_0646,X
- D 0 - - - 0x02573E 09:972E: C9 10     CMP #$10
- D 0 - - - 0x025740 09:9730: 90 42     BCC bra_9774
- D 0 - - - 0x025742 09:9732: 20 53 97  JSR sub_9753
- D 0 - - - 0x025745 09:9735: BD 45 06  LDA ram_obj_0646,X
- D 0 - - - 0x025748 09:9738: C9 10     CMP #$10
- D 0 - - - 0x02574A 09:973A: B0 0D     BCS bra_9749_RTS
- D 0 - - - 0x02574C 09:973C: BD F2 04  LDA ram_obj_spd_X_hi,X
- D 0 - - - 0x02574F 09:973F: 30 08     BMI bra_9749_RTS
- D 0 - - - 0x025751 09:9741: FE C1 05  INC ram_05C1_obj,X
- D 0 - - - 0x025754 09:9744: A9 00     LDA #$00
- D 0 - - - 0x025756 09:9746: 9D 45 06  STA ram_obj_0646,X
bra_9749_RTS:
- D 0 - - - 0x025759 09:9749: 60        RTS



ofs_043_974A_09:
- D 0 - - - 0x02575A 09:974A: BD 45 06  LDA ram_obj_0646,X
- D 0 - - - 0x02575D 09:974D: 29 7F     AND #$7F
- D 0 - - - 0x02575F 09:974F: C9 10     CMP #$10
- D 0 - - - 0x025761 09:9751: 90 21     BCC bra_9774
sub_9753:
- D 0 - - - 0x025763 09:9753: BD 33 06  LDA ram_obj_0634,X
- D 0 - - - 0x025766 09:9756: D0 21     BNE bra_9779
- D 0 - - - 0x025768 09:9758: BD 09 05  LDA ram_obj_spd_X_lo,X
- D 0 - - - 0x02576B 09:975B: 49 FF     EOR #$FF
- D 0 - - - 0x02576D 09:975D: 18        CLC
- D 0 - - - 0x02576E 09:975E: 69 01     ADC #< $0001
- D 0 - - - 0x025770 09:9760: 9D 09 05  STA ram_obj_spd_X_lo,X
- D 0 - - - 0x025773 09:9763: BD F2 04  LDA ram_obj_spd_X_hi,X
- D 0 - - - 0x025776 09:9766: 49 FF     EOR #$FF
- D 0 - - - 0x025778 09:9768: 69 00     ADC #> $0001
- D 0 - - - 0x02577A 09:976A: 9D F2 04  STA ram_obj_spd_X_hi,X
- D 0 - - - 0x02577D 09:976D: A9 01     LDA #$01
- D 0 - - - 0x02577F 09:976F: 9D 33 06  STA ram_obj_0634,X
- D 0 - - - 0x025782 09:9772: D0 05     BNE bra_9779
bra_9774:
- D 0 - - - 0x025784 09:9774: A9 00     LDA #$00
- D 0 - - - 0x025786 09:9776: 9D 33 06  STA ram_obj_0634,X
bra_9779:
loc_9779:
ofs_043_9779_07:
C D 0 J - - 0x025789 09:9779: A9 00     LDA #$00
C D 0 - - - 0x02578B 09:977B: 85 00     STA ram_0000_temp
C D 0 - - - 0x02578D 09:977D: 20 D6 97  JSR sub_97D6
C D 0 - - - 0x025790 09:9780: 85 01     STA ram_0001_temp
C D 0 - - - 0x025792 09:9782: A0 01     LDY #$01
C D 0 - - - 0x025794 09:9784: B1 02     LDA (ram_0002_t001_data),Y
C D 0 - - - 0x025796 09:9786: 18        CLC
C D 0 - - - 0x025797 09:9787: 7D 45 06  ADC ram_obj_0646,X
C D 0 - - - 0x02579A 09:978A: 9D 45 06  STA ram_obj_0646,X
C D 0 - - - 0x02579D 09:978D: 20 D6 97  JSR sub_97D6
C D 0 - - - 0x0257A0 09:9790: 38        SEC
C D 0 - - - 0x0257A1 09:9791: E5 01     SBC ram_0001_temp
C D 0 - - - 0x0257A3 09:9793: 85 01     STA ram_0001_temp
C D 0 - - - 0x0257A5 09:9795: B0 0D     BCS bra_97A4
C D 0 - - - 0x0257A7 09:9797: A5 01     LDA ram_0001_temp
C D 0 - - - 0x0257A9 09:9799: 49 FF     EOR #$FF
C D 0 - - - 0x0257AB 09:979B: 18        CLC
C D 0 - - - 0x0257AC 09:979C: 69 01     ADC #$01
C D 0 - - - 0x0257AE 09:979E: 85 01     STA ram_0001_temp
C D 0 - - - 0x0257B0 09:97A0: A9 FF     LDA #$FF
C D 0 - - - 0x0257B2 09:97A2: 85 00     STA ram_0000_temp
bra_97A4:
C D 0 - - - 0x0257B4 09:97A4: A0 02     LDY #$02
C D 0 - - - 0x0257B6 09:97A6: B1 02     LDA (ram_0002_t001_data),Y
C D 0 - - - 0x0257B8 09:97A8: 85 02     STA ram_0002_temp
C D 0 - - - 0x0257BA 09:97AA: F0 06     BEQ bra_97B2
bra_97AC:
C D 0 - - - 0x0257BC 09:97AC: 46 01     LSR ram_0001_temp
C D 0 - - - 0x0257BE 09:97AE: C6 02     DEC ram_0002_temp
C D 0 - - - 0x0257C0 09:97B0: D0 FA     BNE bra_97AC
bra_97B2:
C D 0 - - - 0x0257C2 09:97B2: BD 45 06  LDA ram_obj_0646,X
C D 0 - - - 0x0257C5 09:97B5: 29 80     AND #$80
C D 0 - - - 0x0257C7 09:97B7: F0 06     BEQ bra_97BF
C D 0 - - - 0x0257C9 09:97B9: A5 00     LDA ram_0000_temp
C D 0 - - - 0x0257CB 09:97BB: 49 FF     EOR #$FF
C D 0 - - - 0x0257CD 09:97BD: 85 00     STA ram_0000_temp
bra_97BF:
C D 0 - - - 0x0257CF 09:97BF: A5 00     LDA ram_0000_temp
C D 0 - - - 0x0257D1 09:97C1: F0 09     BEQ bra_97CC
C D 0 - - - 0x0257D3 09:97C3: A5 01     LDA ram_0001_temp
C D 0 - - - 0x0257D5 09:97C5: 49 FF     EOR #$FF
C D 0 - - - 0x0257D7 09:97C7: 18        CLC
C D 0 - - - 0x0257D8 09:97C8: 69 01     ADC #$01
C D 0 - - - 0x0257DA 09:97CA: 85 01     STA ram_0001_temp
bra_97CC:
C D 0 - - - 0x0257DC 09:97CC: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C D 0 - - - 0x0257DF 09:97CF: 18        CLC
C D 0 - - - 0x0257E0 09:97D0: 65 01     ADC ram_0001_temp
C D 0 - - - 0x0257E2 09:97D2: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0257E5 09:97D5: 60        RTS



sub_97D6:
C - - - - - 0x0257E6 09:97D6: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x0257E9 09:97D9: 29 3F     AND #$3F
C - - - - - 0x0257EB 09:97DB: 85 08     STA ram_0008_temp
C - - - - - 0x0257ED 09:97DD: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x0257F0 09:97E0: 29 40     AND #$40
C - - - - - 0x0257F2 09:97E2: F0 07     BEQ bra_97EB
C - - - - - 0x0257F4 09:97E4: A9 3F     LDA #$3F
C - - - - - 0x0257F6 09:97E6: 38        SEC
C - - - - - 0x0257F7 09:97E7: E5 08     SBC ram_0008_temp
C - - - - - 0x0257F9 09:97E9: 85 08     STA ram_0008_temp
bra_97EB:
C - - - - - 0x0257FB 09:97EB: A4 08     LDY ram_0008_temp
C - - - - - 0x0257FD 09:97ED: B9 F1 97  LDA tbl_97F1,Y
C - - - - - 0x025800 09:97F0: 60        RTS



tbl_97F1:
- D 0 - - - 0x025801 09:97F1: 00        .byte $00   ; 00 
- - - - - - 0x025802 09:97F2: 06        .byte $06   ; 01 
- - - - - - 0x025803 09:97F3: 0D        .byte $0D   ; 02 
- D 0 - - - 0x025804 09:97F4: 13        .byte $13   ; 03 
- D 0 - - - 0x025805 09:97F5: 19        .byte $19   ; 04 
- - - - - - 0x025806 09:97F6: 1F        .byte $1F   ; 05 
- - - - - - 0x025807 09:97F7: 25        .byte $25   ; 06 
- D 0 - - - 0x025808 09:97F8: 2C        .byte $2C   ; 07 
- D 0 - - - 0x025809 09:97F9: 32        .byte $32   ; 08 
- - - - - - 0x02580A 09:97FA: 38        .byte $38   ; 09 
- - - - - - 0x02580B 09:97FB: 3E        .byte $3E   ; 0A 
- D 0 - - - 0x02580C 09:97FC: 44        .byte $44   ; 0B 
- D 0 - - - 0x02580D 09:97FD: 4A        .byte $4A   ; 0C 
- - - - - - 0x02580E 09:97FE: 50        .byte $50   ; 0D 
- - - - - - 0x02580F 09:97FF: 56        .byte $56   ; 0E 
- D 0 - - - 0x025810 09:9800: 5C        .byte $5C   ; 0F 
- D 0 - - - 0x025811 09:9801: 62        .byte $62   ; 10 
- - - - - - 0x025812 09:9802: 67        .byte $67   ; 11 
- - - - - - 0x025813 09:9803: 6D        .byte $6D   ; 12 
- D 0 - - - 0x025814 09:9804: 73        .byte $73   ; 13 
- D 0 - - - 0x025815 09:9805: 78        .byte $78   ; 14 
- - - - - - 0x025816 09:9806: 7E        .byte $7E   ; 15 
- - - - - - 0x025817 09:9807: 83        .byte $83   ; 16 
- D 0 - - - 0x025818 09:9808: 88        .byte $88   ; 17 
- D 0 - - - 0x025819 09:9809: 8E        .byte $8E   ; 18 
- - - - - - 0x02581A 09:980A: 93        .byte $93   ; 19 
- - - - - - 0x02581B 09:980B: 98        .byte $98   ; 1A 
- D 0 - - - 0x02581C 09:980C: 9D        .byte $9D   ; 1B 
- D 0 - - - 0x02581D 09:980D: A2        .byte $A2   ; 1C 
- - - - - - 0x02581E 09:980E: A7        .byte $A7   ; 1D 
- - - - - - 0x02581F 09:980F: AB        .byte $AB   ; 1E 
- D 0 - - - 0x025820 09:9810: B0        .byte $B0   ; 1F 
- D 0 - - - 0x025821 09:9811: B4        .byte $B4   ; 20 
- - - - - - 0x025822 09:9812: B9        .byte $B9   ; 21 
- - - - - - 0x025823 09:9813: BD        .byte $BD   ; 22 
- D 0 - - - 0x025824 09:9814: C1        .byte $C1   ; 23 
- D 0 - - - 0x025825 09:9815: C5        .byte $C5   ; 24 
- - - - - - 0x025826 09:9816: C9        .byte $C9   ; 25 
- - - - - - 0x025827 09:9817: CD        .byte $CD   ; 26 
- D 0 - - - 0x025828 09:9818: D0        .byte $D0   ; 27 
- D 0 - - - 0x025829 09:9819: D4        .byte $D4   ; 28 
- - - - - - 0x02582A 09:981A: D7        .byte $D7   ; 29 
- - - - - - 0x02582B 09:981B: DB        .byte $DB   ; 2A 
- D 0 - - - 0x02582C 09:981C: DE        .byte $DE   ; 2B 
- D 0 - - - 0x02582D 09:981D: E1        .byte $E1   ; 2C 
- - - - - - 0x02582E 09:981E: E4        .byte $E4   ; 2D 
- - - - - - 0x02582F 09:981F: E7        .byte $E7   ; 2E 
- D 0 - - - 0x025830 09:9820: E9        .byte $E9   ; 2F 
- D 0 - - - 0x025831 09:9821: EC        .byte $EC   ; 30 
- - - - - - 0x025832 09:9822: EE        .byte $EE   ; 31 
- - - - - - 0x025833 09:9823: F0        .byte $F0   ; 32 
- D 0 - - - 0x025834 09:9824: F2        .byte $F2   ; 33 
- D 0 - - - 0x025835 09:9825: F4        .byte $F4   ; 34 
- - - - - - 0x025836 09:9826: F6        .byte $F6   ; 35 
- - - - - - 0x025837 09:9827: F7        .byte $F7   ; 36 
- D 0 - - - 0x025838 09:9828: F9        .byte $F9   ; 37 
- D 0 - - - 0x025839 09:9829: FA        .byte $FA   ; 38 
- - - - - - 0x02583A 09:982A: FB        .byte $FB   ; 39 
- - - - - - 0x02583B 09:982B: FC        .byte $FC   ; 3A 
- D 0 - - - 0x02583C 09:982C: FD        .byte $FD   ; 3B 
- D 0 - - - 0x02583D 09:982D: FE        .byte $FE   ; 3C 
- - - - - - 0x02583E 09:982E: FE        .byte $FE   ; 3D 
- - - - - - 0x02583F 09:982F: FF        .byte $FF   ; 3E 
- D 0 - - - 0x025840 09:9830: FF        .byte $FF   ; 3F 



ofs_043_9831_08:
C - - J - - 0x025841 09:9831: A0 02     LDY #$02
C - - - - - 0x025843 09:9833: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025845 09:9835: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x025848 09:9838: 88        DEY ; 01
C - - - - - 0x025849 09:9839: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x02584B 09:983B: 0A        ASL
C - - - - - 0x02584C 09:983C: 0A        ASL
C - - - - - 0x02584D 09:983D: 85 08     STA ram_0008_temp
C - - - - - 0x02584F 09:983F: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x025852 09:9842: BC 65 05  LDY ram_obj_state,X
C - - - - - 0x025855 09:9845: 98        TYA
C - - - - - 0x025856 09:9846: 48        PHA
C - - - - - 0x025857 09:9847: B9 93 98  LDA tbl_9893,Y
C - - - - - 0x02585A 09:984A: 48        PHA
C - - - - - 0x02585B 09:984B: 0A        ASL
C - - - - - 0x02585C 09:984C: A8        TAY
C - - - - - 0x02585D 09:984D: B9 A3 98  LDA tbl_98A3_speed,Y
C - - - - - 0x025860 09:9850: 85 00     STA ram_0000_t01D_data
C - - - - - 0x025862 09:9852: B9 A4 98  LDA tbl_98A3_speed + $01,Y
C - - - - - 0x025865 09:9855: 85 01     STA ram_0000_t01D_data + $01
C - - - - - 0x025867 09:9857: A4 08     LDY ram_0008_temp
C - - - - - 0x025869 09:9859: 20 66 98  JSR sub_9866_load_speed_data
C - - - - - 0x02586C 09:985C: 68        PLA
C - - - - - 0x02586D 09:985D: 10 03     BPL bra_9862
C - - - - - 0x02586F 09:985F: 20 7A 98  JSR sub_987A_swap_speed_data
bra_9862:
C - - - - - 0x025872 09:9862: 68        PLA
C - - - - - 0x025873 09:9863: 4C 91 99  JMP loc_9991



sub_9866_load_speed_data:
C - - - - - 0x025876 09:9866: B1 00     LDA (ram_0000_t01D_data),Y
C - - - - - 0x025878 09:9868: 85 08     STA ram_0008_temp
C - - - - - 0x02587A 09:986A: C8        INY
C - - - - - 0x02587B 09:986B: B1 00     LDA (ram_0000_t01D_data),Y
C - - - - - 0x02587D 09:986D: 85 09     STA ram_0009_temp
C - - - - - 0x02587F 09:986F: C8        INY
C - - - - - 0x025880 09:9870: B1 00     LDA (ram_0000_t01D_data),Y
C - - - - - 0x025882 09:9872: 85 0A     STA ram_000A_temp
C - - - - - 0x025884 09:9874: C8        INY
C - - - - - 0x025885 09:9875: B1 00     LDA (ram_0000_t01D_data),Y
C - - - - - 0x025887 09:9877: 85 0B     STA ram_000B_temp
C - - - - - 0x025889 09:9879: 60        RTS



sub_987A_swap_speed_data:
; swap speed_X with speed_Y
C - - - - - 0x02588A 09:987A: A5 08     LDA ram_0008_temp
C - - - - - 0x02588C 09:987C: A4 0A     LDY ram_000A_temp
C - - - - - 0x02588E 09:987E: 84 08     STY ram_0008_temp
C - - - - - 0x025890 09:9880: 85 0A     STA ram_000A_temp
C - - - - - 0x025892 09:9882: A5 09     LDA ram_0009_temp
C - - - - - 0x025894 09:9884: A4 0B     LDY ram_000B_temp
C - - - - - 0x025896 09:9886: 84 09     STY ram_0009_temp
C - - - - - 0x025898 09:9888: 85 0B     STA ram_000B_temp
C - - - - - 0x02589A 09:988A: 60        RTS



tbl_988B:
- D 0 - - - 0x02589B 09:988B: 01        .byte $01   ; 00 
- D 0 - - - 0x02589C 09:988C: 00        .byte $00   ; 01 
- D 0 - - - 0x02589D 09:988D: 00        .byte $00   ; 02 
- D 0 - - - 0x02589E 09:988E: 01        .byte $01   ; 03 



tbl_988F:
- D 0 - - - 0x02589F 09:988F: 00        .byte $00   ; 00 
- D 0 - - - 0x0258A0 09:9890: 00        .byte $00   ; 01 
- D 0 - - - 0x0258A1 09:9891: 01        .byte $01   ; 02 
- D 0 - - - 0x0258A2 09:9892: 01        .byte $01   ; 03 



tbl_9893:
- D 0 - - - 0x0258A3 09:9893: 00        .byte $00   ; 00 
- D 0 - - - 0x0258A4 09:9894: 01        .byte $01   ; 01 
- D 0 - - - 0x0258A5 09:9895: 02        .byte $02   ; 02 
- D 0 - - - 0x0258A6 09:9896: 81        .byte $81   ; 03 
- D 0 - - - 0x0258A7 09:9897: 80        .byte $80   ; 04 
- D 0 - - - 0x0258A8 09:9898: 81        .byte $81   ; 05 
- D 0 - - - 0x0258A9 09:9899: 02        .byte $02   ; 06 
- D 0 - - - 0x0258AA 09:989A: 01        .byte $01   ; 07 
- D 0 - - - 0x0258AB 09:989B: 00        .byte $00   ; 08 
- D 0 - - - 0x0258AC 09:989C: 01        .byte $01   ; 09 
- D 0 - - - 0x0258AD 09:989D: 02        .byte $02   ; 0A 
- D 0 - - - 0x0258AE 09:989E: 81        .byte $81   ; 0B 
- D 0 - - - 0x0258AF 09:989F: 80        .byte $80   ; 0C 
- D 0 - - - 0x0258B0 09:98A0: 81        .byte $81   ; 0D 
- D 0 - - - 0x0258B1 09:98A1: 02        .byte $02   ; 0E 
- D 0 - - - 0x0258B2 09:98A2: 01        .byte $01   ; 0F 



tbl_98A3_speed:
- D 0 - - - 0x0258B3 09:98A3: A9 98     .word off_98A9_00
- D 0 - - - 0x0258B5 09:98A5: D1 98     .word off_98D1_01
- D 0 - - - 0x0258B7 09:98A7: F9 98     .word off_98F9_02



off_98A9_00:
; 00 
- - - - - - 0x0258B9 09:98A9: 00 00     .dbyt $0000 ; 
- - - - - - 0x0258BB 09:98AB: 00 00     .dbyt $0000 ; 
; 01 
- - - - - - 0x0258BD 09:98AD: 00 00     .dbyt $0000 ; 
- - - - - - 0x0258BF 09:98AF: 00 20     .dbyt $0020 ; 
; 02 
- - - - - - 0x0258C1 09:98B1: 00 00     .dbyt $0000 ; 
- - - - - - 0x0258C3 09:98B3: 00 40     .dbyt $0040 ; 
; 03 
- - - - - - 0x0258C5 09:98B5: 00 00     .dbyt $0000 ; 
- - - - - - 0x0258C7 09:98B7: 00 60     .dbyt $0060 ; 
; 04 
- - - - - - 0x0258C9 09:98B9: 00 00     .dbyt $0000 ; 
- - - - - - 0x0258CB 09:98BB: 00 80     .dbyt $0080 ; 
; 05 
- - - - - - 0x0258CD 09:98BD: 00 00     .dbyt $0000 ; 
- - - - - - 0x0258CF 09:98BF: 00 A0     .dbyt $00A0 ; 
; 06 
- - - - - - 0x0258D1 09:98C1: 00 00     .dbyt $0000 ; 
- - - - - - 0x0258D3 09:98C3: 00 C0     .dbyt $00C0 ; 
; 07 
- D 0 - I - 0x0258D5 09:98C5: 00 00     .dbyt $0000 ; 
- D 0 - I - 0x0258D7 09:98C7: 00 E0     .dbyt $00E0 ; 
; 08 
- D 0 - I - 0x0258D9 09:98C9: 00 00     .dbyt $0000 ; 
- D 0 - I - 0x0258DB 09:98CB: 01 80     .dbyt $0180 ; 
; 09 
- D 0 - I - 0x0258DD 09:98CD: 00 00     .dbyt $0000 ; 
- D 0 - I - 0x0258DF 09:98CF: 02 00     .dbyt $0200 ; 



off_98D1_01:
; 00 
- - - - - - 0x0258E1 09:98D1: 00 00     .dbyt $0000 ; 
- - - - - - 0x0258E3 09:98D3: 00 00     .dbyt $0000 ; 
; 01 
- - - - - - 0x0258E5 09:98D5: 00 0C     .dbyt $000C ; 
- - - - - - 0x0258E7 09:98D7: 00 1E     .dbyt $001E ; 
; 02 
- - - - - - 0x0258E9 09:98D9: 00 18     .dbyt $0018 ; 
- - - - - - 0x0258EB 09:98DB: 00 3B     .dbyt $003B ; 
; 03 
- - - - - - 0x0258ED 09:98DD: 00 25     .dbyt $0025 ; 
- - - - - - 0x0258EF 09:98DF: 00 59     .dbyt $0059 ; 
; 04 
- - - - - - 0x0258F1 09:98E1: 00 31     .dbyt $0031 ; 
- - - - - - 0x0258F3 09:98E3: 00 76     .dbyt $0076 ; 
; 05 
- - - - - - 0x0258F5 09:98E5: 00 3D     .dbyt $003D ; 
- - - - - - 0x0258F7 09:98E7: 00 94     .dbyt $0094 ; 
; 06 
- - - - - - 0x0258F9 09:98E9: 00 49     .dbyt $0049 ; 
- - - - - - 0x0258FB 09:98EB: 00 B1     .dbyt $00B1 ; 
; 07 
- D 0 - I - 0x0258FD 09:98ED: 00 56     .dbyt $0056 ; 
- D 0 - I - 0x0258FF 09:98EF: 00 CF     .dbyt $00CF ; 
; 08 
- D 0 - I - 0x025901 09:98F1: 00 93     .dbyt $0093 ; 
- D 0 - I - 0x025903 09:98F3: 01 63     .dbyt $0163 ; 
; 09 
- D 0 - I - 0x025905 09:98F5: 00 C3     .dbyt $00C3 ; 
- D 0 - I - 0x025907 09:98F7: 01 D9     .dbyt $01D9 ; 



off_98F9_02:
; 00 
- - - - - - 0x025909 09:98F9: 00 00     .dbyt $0000 ; 
- - - - - - 0x02590B 09:98FB: 00 00     .dbyt $0000 ; 
; 01 
- - - - - - 0x02590D 09:98FD: 00 17     .dbyt $0017 ; 
- - - - - - 0x02590F 09:98FF: 00 17     .dbyt $0017 ; 
; 02 
- - - - - - 0x025911 09:9901: 00 2D     .dbyt $002D ; 
- - - - - - 0x025913 09:9903: 00 2D     .dbyt $002D ; 
; 03 
- - - - - - 0x025915 09:9905: 00 44     .dbyt $0044 ; 
- - - - - - 0x025917 09:9907: 00 44     .dbyt $0044 ; 
; 04 
- - - - - - 0x025919 09:9909: 00 5B     .dbyt $005B ; 
- - - - - - 0x02591B 09:990B: 00 5B     .dbyt $005B ; 
; 05 
- - - - - - 0x02591D 09:990D: 00 71     .dbyt $0071 ; 
- - - - - - 0x02591F 09:990F: 00 71     .dbyt $0071 ; 
; 06 
- - - - - - 0x025921 09:9911: 00 88     .dbyt $0088 ; 
- - - - - - 0x025923 09:9913: 00 88     .dbyt $0088 ; 
; 07 
- D 0 - I - 0x025925 09:9915: 00 9E     .dbyt $009E ; 
- D 0 - I - 0x025927 09:9917: 00 9E     .dbyt $009E ; 
; 08 
- D 0 - I - 0x025929 09:9919: 01 10     .dbyt $0110 ; 
- D 0 - I - 0x02592B 09:991B: 01 10     .dbyt $0110 ; 
; 09 
- - - - - - 0x02592D 09:991D: 01 6A     .dbyt $016A ; 
- - - - - - 0x02592F 09:991F: 01 6A     .dbyt $016A ; 



ofs_043_9921_23:
ofs_043_9921_24:
C - - J - - 0x025931 09:9921: A9 00     LDA #$00
C - - - - - 0x025933 09:9923: 85 00     STA ram_0000_temp
C - - - - - 0x025935 09:9925: AC 1E 06  LDY ram_061D_obj + $01
C - - - - - 0x025938 09:9928: B9 40 99  LDA tbl_9940,Y
C - - - - - 0x02593B 09:992B: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x02593E 09:992E: B9 4D 99  LDA tbl_994D,Y
C - - - - - 0x025941 09:9931: 85 05     STA ram_0005_temp
C - - - - - 0x025943 09:9933: A5 00     LDA ram_0000_temp
C - - - - - 0x025945 09:9935: F0 30     BEQ bra_9967
- - - - - - 0x025947 09:9937: 1E D8 05  ASL ram_05D8_obj,X
- - - - - - 0x02594A 09:993A: 1E D8 05  ASL ram_05D8_obj,X
- - - - - - 0x02594D 09:993D: 4C 67 99  JMP loc_9967



tbl_9940:
- - - - - - 0x025950 09:9940: 05        .byte $05   ; 00 
- - - - - - 0x025951 09:9941: 05        .byte $05   ; 01 
- D 0 - - - 0x025952 09:9942: 05        .byte $05   ; 02 
- D 0 - - - 0x025953 09:9943: 05        .byte $05   ; 03 
- D 0 - - - 0x025954 09:9944: 06        .byte $06   ; 04 
- D 0 - - - 0x025955 09:9945: 06        .byte $06   ; 05 
- D 0 - - - 0x025956 09:9946: 06        .byte $06   ; 06 
- D 0 - - - 0x025957 09:9947: 07        .byte $07   ; 07 
- D 0 - - - 0x025958 09:9948: 07        .byte $07   ; 08 
- D 0 - - - 0x025959 09:9949: 07        .byte $07   ; 09 
- D 0 - - - 0x02595A 09:994A: 08        .byte $08   ; 0A 
- D 0 - - - 0x02595B 09:994B: 08        .byte $08   ; 0B 
- D 0 - - - 0x02595C 09:994C: 08        .byte $08   ; 0C 



tbl_994D:
- - - - - - 0x02595D 09:994D: 07        .byte $07   ; 00 
- - - - - - 0x02595E 09:994E: 07        .byte $07   ; 01 
- D 0 - - - 0x02595F 09:994F: 07        .byte $07   ; 02 
- D 0 - - - 0x025960 09:9950: 07        .byte $07   ; 03 
- D 0 - - - 0x025961 09:9951: 06        .byte $06   ; 04 
- D 0 - - - 0x025962 09:9952: 06        .byte $06   ; 05 
- D 0 - - - 0x025963 09:9953: 06        .byte $06   ; 06 
- D 0 - - - 0x025964 09:9954: 05        .byte $05   ; 07 
- D 0 - - - 0x025965 09:9955: 05        .byte $05   ; 08 
- D 0 - - - 0x025966 09:9956: 05        .byte $05   ; 09 
- D 0 - - - 0x025967 09:9957: 04        .byte $04   ; 0A 
- D 0 - - - 0x025968 09:9958: 04        .byte $04   ; 0B 
- D 0 - - - 0x025969 09:9959: 04        .byte $04   ; 0C 



ofs_043_995A_22:
C - - J - - 0x02596A 09:995A: A0 02     LDY #$02
C - - - - - 0x02596C 09:995C: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x02596E 09:995E: 9D D8 05  STA ram_05D8_obj,X
ofs_043_9961_42:
C - - - - - 0x025971 09:9961: A0 01     LDY #$01
C - - - - - 0x025973 09:9963: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025975 09:9965: 85 05     STA ram_0005_temp
bra_9967:
loc_9967:
C - - - - - 0x025977 09:9967: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02597A 09:996A: BC 65 05  LDY ram_obj_state,X
sub_0x02597D:
C - - - - - 0x02597D 09:996D: 98        TYA
C - - - - - 0x02597E 09:996E: 48        PHA
C - - - - - 0x02597F 09:996F: B9 CD 99  LDA tbl_99CD,Y
C - - - - - 0x025982 09:9972: 85 04     STA ram_0004_temp
C - - - - - 0x025984 09:9974: 0A        ASL
C - - - - - 0x025985 09:9975: A8        TAY
C - - - - - 0x025986 09:9976: B9 ED 99  LDA tbl_99ED_speed,Y
C - - - - - 0x025989 09:9979: 85 00     STA ram_0000_t01D_data
C - - - - - 0x02598B 09:997B: B9 EE 99  LDA tbl_99ED_speed + $01,Y
C - - - - - 0x02598E 09:997E: 85 01     STA ram_0000_t01D_data + $01
C - - - - - 0x025990 09:9980: A5 05     LDA ram_0005_temp
C - - - - - 0x025992 09:9982: 0A        ASL
C - - - - - 0x025993 09:9983: 0A        ASL
C - - - - - 0x025994 09:9984: A8        TAY
C - - - - - 0x025995 09:9985: 20 66 98  JSR sub_9866_load_speed_data
C - - - - - 0x025998 09:9988: A5 04     LDA ram_0004_temp
C - - - - - 0x02599A 09:998A: 10 03     BPL bra_998F
C - - - - - 0x02599C 09:998C: 20 7A 98  JSR sub_987A_swap_speed_data
bra_998F:
C - - - - - 0x02599F 09:998F: 68        PLA
C - - - - - 0x0259A0 09:9990: 4A        LSR
loc_9991:
C D 0 - - - 0x0259A1 09:9991: 4A        LSR
C - - - - - 0x0259A2 09:9992: 4A        LSR
C - - - - - 0x0259A3 09:9993: A8        TAY
C - - - - - 0x0259A4 09:9994: B9 8B 98  LDA tbl_988B,Y
C - - - - - 0x0259A7 09:9997: F0 0D     BEQ bra_99A6
C - - - - - 0x0259A9 09:9999: 38        SEC
; invert speed Y
C - - - - - 0x0259AA 09:999A: A9 00     LDA #$00
C - - - - - 0x0259AC 09:999C: E5 0B     SBC ram_000B_temp
C - - - - - 0x0259AE 09:999E: 85 0B     STA ram_000B_temp
C - - - - - 0x0259B0 09:99A0: A9 00     LDA #$00
C - - - - - 0x0259B2 09:99A2: E5 0A     SBC ram_000A_temp
C - - - - - 0x0259B4 09:99A4: 85 0A     STA ram_000A_temp
bra_99A6:
C - - - - - 0x0259B6 09:99A6: B9 8F 98  LDA tbl_988F,Y
C - - - - - 0x0259B9 09:99A9: F0 0D     BEQ bra_99B8
C - - - - - 0x0259BB 09:99AB: 38        SEC
; invert speed X
C - - - - - 0x0259BC 09:99AC: A9 00     LDA #$00
C - - - - - 0x0259BE 09:99AE: E5 09     SBC ram_0009_temp
C - - - - - 0x0259C0 09:99B0: 85 09     STA ram_0009_temp
C - - - - - 0x0259C2 09:99B2: A9 00     LDA #$00
C - - - - - 0x0259C4 09:99B4: E5 08     SBC ram_0008_temp
C - - - - - 0x0259C6 09:99B6: 85 08     STA ram_0008_temp
bra_99B8:
C - - - - - 0x0259C8 09:99B8: A5 08     LDA ram_0008_temp
C - - - - - 0x0259CA 09:99BA: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x0259CD 09:99BD: A5 09     LDA ram_0009_temp
C - - - - - 0x0259CF 09:99BF: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x0259D2 09:99C2: A5 0A     LDA ram_000A_temp
C - - - - - 0x0259D4 09:99C4: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x0259D7 09:99C7: A5 0B     LDA ram_000B_temp
C - - - - - 0x0259D9 09:99C9: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0259DC 09:99CC: 60        RTS



tbl_99CD:
;                                              +----------- 00/80 swap speed flag
;                                              |     +----- index for 0x0259FD
;                                              |     |
- D 0 - - - 0x0259DD 09:99CD: 00        .byte $00 + $00   ; 00 
- D 0 - - - 0x0259DE 09:99CE: 01        .byte $00 + $01   ; 01 
- D 0 - - - 0x0259DF 09:99CF: 02        .byte $00 + $02   ; 02 
- D 0 - - - 0x0259E0 09:99D0: 03        .byte $00 + $03   ; 03 
- D 0 - - - 0x0259E1 09:99D1: 04        .byte $00 + $04   ; 04 
- D 0 - - - 0x0259E2 09:99D2: 83        .byte $80 + $03   ; 05 
- D 0 - - - 0x0259E3 09:99D3: 82        .byte $80 + $02   ; 06 
- D 0 - - - 0x0259E4 09:99D4: 81        .byte $80 + $01   ; 07 
- D 0 - - - 0x0259E5 09:99D5: 80        .byte $80 + $00   ; 08 
- D 0 - - - 0x0259E6 09:99D6: 81        .byte $80 + $01   ; 09 
- D 0 - - - 0x0259E7 09:99D7: 82        .byte $80 + $02   ; 0A 
- D 0 - - - 0x0259E8 09:99D8: 83        .byte $80 + $03   ; 0B 
- D 0 - - - 0x0259E9 09:99D9: 04        .byte $00 + $04   ; 0C 
- D 0 - - - 0x0259EA 09:99DA: 03        .byte $00 + $03   ; 0D 
- D 0 - - - 0x0259EB 09:99DB: 02        .byte $00 + $02   ; 0E 
- D 0 - - - 0x0259EC 09:99DC: 01        .byte $00 + $01   ; 0F 
- D 0 - - - 0x0259ED 09:99DD: 00        .byte $00 + $00   ; 10 
- D 0 - - - 0x0259EE 09:99DE: 01        .byte $00 + $01   ; 11 
- D 0 - - - 0x0259EF 09:99DF: 02        .byte $00 + $02   ; 12 
- D 0 - - - 0x0259F0 09:99E0: 03        .byte $00 + $03   ; 13 
- D 0 - - - 0x0259F1 09:99E1: 04        .byte $00 + $04   ; 14 
- D 0 - - - 0x0259F2 09:99E2: 83        .byte $80 + $03   ; 15 
- D 0 - - - 0x0259F3 09:99E3: 82        .byte $80 + $02   ; 16 
- D 0 - - - 0x0259F4 09:99E4: 81        .byte $80 + $01   ; 17 
- D 0 - - - 0x0259F5 09:99E5: 80        .byte $80 + $00   ; 18 
- D 0 - - - 0x0259F6 09:99E6: 81        .byte $80 + $01   ; 19 
- D 0 - - - 0x0259F7 09:99E7: 82        .byte $80 + $02   ; 1A 
- D 0 - - - 0x0259F8 09:99E8: 83        .byte $80 + $03   ; 1B 
- D 0 - - - 0x0259F9 09:99E9: 04        .byte $00 + $04   ; 1C 
- D 0 - - - 0x0259FA 09:99EA: 03        .byte $00 + $03   ; 1D 
- D 0 - - - 0x0259FB 09:99EB: 02        .byte $00 + $02   ; 1E 
- D 0 - - - 0x0259FC 09:99EC: 01        .byte $00 + $01   ; 1F 



tbl_99ED_speed:
- D 0 - - - 0x0259FD 09:99ED: F7 99     .word off_99F7_00
- D 0 - - - 0x0259FF 09:99EF: 27 9A     .word off_9A27_01
- D 0 - - - 0x025A01 09:99F1: 57 9A     .word off_9A57_02
- D 0 - - - 0x025A03 09:99F3: 87 9A     .word off_9A87_03
- D 0 - - - 0x025A05 09:99F5: B7 9A     .word off_9AB7_04



off_99F7_00:
; 00 
- - - - - - 0x025A07 09:99F7: 00 00     .dbyt $0000 ; 
- - - - - - 0x025A09 09:99F9: 00 00     .dbyt $0000 ; 
; 01 
- - - - - - 0x025A0B 09:99FB: 00 00     .dbyt $0000 ; 
- - - - - - 0x025A0D 09:99FD: 00 40     .dbyt $0040 ; 
; 02 
- - - - - - 0x025A0F 09:99FF: 00 00     .dbyt $0000 ; 
- - - - - - 0x025A11 09:9A01: 00 80     .dbyt $0080 ; 
; 03 
- - - - - - 0x025A13 09:9A03: 00 00     .dbyt $0000 ; 
- - - - - - 0x025A15 09:9A05: 00 C0     .dbyt $00C0 ; 
; 04 
- D 0 - I - 0x025A17 09:9A07: 00 00     .dbyt $0000 ; 
- D 0 - I - 0x025A19 09:9A09: 01 00     .dbyt $0100 ; 
; 05 
- D 0 - I - 0x025A1B 09:9A0B: 00 00     .dbyt $0000 ; 
- D 0 - I - 0x025A1D 09:9A0D: 01 40     .dbyt $0140 ; 
; 06 
- D 0 - I - 0x025A1F 09:9A0F: 00 00     .dbyt $0000 ; 
- D 0 - I - 0x025A21 09:9A11: 01 80     .dbyt $0180 ; 
; 07 
- D 0 - I - 0x025A23 09:9A13: 00 00     .dbyt $0000 ; 
- D 0 - I - 0x025A25 09:9A15: 01 C0     .dbyt $01C0 ; 
; 08 
- D 0 - I - 0x025A27 09:9A17: 00 00     .dbyt $0000 ; 
- D 0 - I - 0x025A29 09:9A19: 04 00     .dbyt $0400 ; 
; 09 
- D 0 - I - 0x025A2B 09:9A1B: 00 00     .dbyt $0000 ; 
- D 0 - I - 0x025A2D 09:9A1D: 02 00     .dbyt $0200 ; 
; 0A 
- D 0 - I - 0x025A2F 09:9A1F: 00 00     .dbyt $0000 ; 
- D 0 - I - 0x025A31 09:9A21: 02 80     .dbyt $0280 ; 
; 0B 
- - - - - - 0x025A33 09:9A23: 00 00     .dbyt $0000 ; 
- - - - - - 0x025A35 09:9A25: 03 00     .dbyt $0300 ; 



off_9A27_01:
; 00 
- - - - - - 0x025A37 09:9A27: 00 00     .dbyt $0000 ; 
- - - - - - 0x025A39 09:9A29: 00 00     .dbyt $0000 ; 
; 01 
- - - - - - 0x025A3B 09:9A2B: 00 0C     .dbyt $000C ; 
- - - - - - 0x025A3D 09:9A2D: 00 3F     .dbyt $003F ; 
; 02 
- - - - - - 0x025A3F 09:9A2F: 00 19     .dbyt $0019 ; 
- - - - - - 0x025A41 09:9A31: 00 7E     .dbyt $007E ; 
; 03 
- - - - - - 0x025A43 09:9A33: 00 25     .dbyt $0025 ; 
- - - - - - 0x025A45 09:9A35: 00 BC     .dbyt $00BC ; 
; 04 
- D 0 - I - 0x025A47 09:9A37: 00 32     .dbyt $0032 ; 
- D 0 - I - 0x025A49 09:9A39: 00 FB     .dbyt $00FB ; 
; 05 
- D 0 - I - 0x025A4B 09:9A3B: 00 3E     .dbyt $003E ; 
- D 0 - I - 0x025A4D 09:9A3D: 01 3A     .dbyt $013A ; 
; 06 
- D 0 - I - 0x025A4F 09:9A3F: 00 4B     .dbyt $004B ; 
- D 0 - I - 0x025A51 09:9A41: 01 79     .dbyt $0179 ; 
; 07 
- D 0 - I - 0x025A53 09:9A43: 00 57     .dbyt $0057 ; 
- D 0 - I - 0x025A55 09:9A45: 01 B7     .dbyt $01B7 ; 
; 08 
- - - - - - 0x025A57 09:9A47: 00 C7     .dbyt $00C7 ; 
- - - - - - 0x025A59 09:9A49: 03 EC     .dbyt $03EC ; 
; 09 
- - - - - - 0x025A5B 09:9A4B: 00 63     .dbyt $0063 ; 
- - - - - - 0x025A5D 09:9A4D: 01 F6     .dbyt $01F6 ; 
; 0A 
- D 0 - I - 0x025A5F 09:9A4F: 00 7C     .dbyt $007C ; 
- D 0 - I - 0x025A61 09:9A51: 02 73     .dbyt $0273 ; 
; 0B 
- - - - - - 0x025A63 09:9A53: 00 95     .dbyt $0095 ; 
- - - - - - 0x025A65 09:9A55: 02 F1     .dbyt $02F1 ; 



off_9A57_02:
; 00 
- - - - - - 0x025A67 09:9A57: 00 00     .dbyt $0000 ; 
- - - - - - 0x025A69 09:9A59: 00 00     .dbyt $0000 ; 
; 01 
- - - - - - 0x025A6B 09:9A5B: 00 18     .dbyt $0018 ; 
- - - - - - 0x025A6D 09:9A5D: 00 3B     .dbyt $003B ; 
; 02 
- - - - - - 0x025A6F 09:9A5F: 00 31     .dbyt $0031 ; 
- - - - - - 0x025A71 09:9A61: 00 76     .dbyt $0076 ; 
; 03 
- - - - - - 0x025A73 09:9A63: 00 49     .dbyt $0049 ; 
- - - - - - 0x025A75 09:9A65: 00 B1     .dbyt $00B1 ; 
; 04 
- D 0 - I - 0x025A77 09:9A67: 00 62     .dbyt $0062 ; 
- D 0 - I - 0x025A79 09:9A69: 00 ED     .dbyt $00ED ; 
; 05 
- D 0 - I - 0x025A7B 09:9A6B: 00 7A     .dbyt $007A ; 
- D 0 - I - 0x025A7D 09:9A6D: 01 28     .dbyt $0128 ; 
; 06 
- D 0 - I - 0x025A7F 09:9A6F: 00 93     .dbyt $0093 ; 
- D 0 - I - 0x025A81 09:9A71: 01 63     .dbyt $0163 ; 
; 07 
- D 0 - I - 0x025A83 09:9A73: 00 AB     .dbyt $00AB ; 
- D 0 - I - 0x025A85 09:9A75: 01 9E     .dbyt $019E ; 
; 08 
- - - - - - 0x025A87 09:9A77: 01 87     .dbyt $0187 ; 
- - - - - - 0x025A89 09:9A79: 03 B2     .dbyt $03B2 ; 
; 09 
- - - - - - 0x025A8B 09:9A7B: 00 C3     .dbyt $00C3 ; 
- - - - - - 0x025A8D 09:9A7D: 01 D9     .dbyt $01D9 ; 
; 0A 
- D 0 - I - 0x025A8F 09:9A7F: 00 F4     .dbyt $00F4 ; 
- D 0 - I - 0x025A91 09:9A81: 02 4F     .dbyt $024F ; 
; 0B 
- - - - - - 0x025A93 09:9A83: 01 25     .dbyt $0125 ; 
- - - - - - 0x025A95 09:9A85: 02 C5     .dbyt $02C5 ; 



off_9A87_03:
; 00 
- - - - - - 0x025A97 09:9A87: 00 00     .dbyt $0000 ; 
- - - - - - 0x025A99 09:9A89: 00 00     .dbyt $0000 ; 
; 01 
- - - - - - 0x025A9B 09:9A8B: 00 24     .dbyt $0024 ; 
- - - - - - 0x025A9D 09:9A8D: 00 35     .dbyt $0035 ; 
; 02 
- - - - - - 0x025A9F 09:9A8F: 00 47     .dbyt $0047 ; 
- - - - - - 0x025AA1 09:9A91: 00 6A     .dbyt $006A ; 
; 03 
- - - - - - 0x025AA3 09:9A93: 00 6B     .dbyt $006B ; 
- - - - - - 0x025AA5 09:9A95: 00 A0     .dbyt $00A0 ; 
; 04 
- D 0 - I - 0x025AA7 09:9A97: 00 8E     .dbyt $008E ; 
- D 0 - I - 0x025AA9 09:9A99: 00 D5     .dbyt $00D5 ; 
; 05 
- D 0 - I - 0x025AAB 09:9A9B: 00 B2     .dbyt $00B2 ; 
- D 0 - I - 0x025AAD 09:9A9D: 01 0A     .dbyt $010A ; 
; 06 
- D 0 - I - 0x025AAF 09:9A9F: 00 D5     .dbyt $00D5 ; 
- D 0 - I - 0x025AB1 09:9AA1: 01 3F     .dbyt $013F ; 
; 07 
- D 0 - I - 0x025AB3 09:9AA3: 00 F9     .dbyt $00F9 ; 
- D 0 - I - 0x025AB5 09:9AA5: 01 74     .dbyt $0174 ; 
; 08 
- - - - - - 0x025AB7 09:9AA7: 02 38     .dbyt $0238 ; 
- - - - - - 0x025AB9 09:9AA9: 03 53     .dbyt $0353 ; 
; 09 
- - - - - - 0x025ABB 09:9AAB: 01 1C     .dbyt $011C ; 
- - - - - - 0x025ABD 09:9AAD: 01 A9     .dbyt $01A9 ; 
; 0A 
- - - - - - 0x025ABF 09:9AAF: 01 63     .dbyt $0163 ; 
- - - - - - 0x025AC1 09:9AB1: 02 14     .dbyt $0214 ; 
; 0B 
- - - - - - 0x025AC3 09:9AB3: 01 AA     .dbyt $01AA ; 
- - - - - - 0x025AC5 09:9AB5: 02 7E     .dbyt $027E ; 



off_9AB7_04:
; 00 
- - - - - - 0x025AC7 09:9AB7: 00 00     .dbyt $0000 ; 
- - - - - - 0x025AC9 09:9AB9: 00 00     .dbyt $0000 ; 
; 01 
- - - - - - 0x025ACB 09:9ABB: 00 2D     .dbyt $002D ; 
- - - - - - 0x025ACD 09:9ABD: 00 2D     .dbyt $002D ; 
; 02 
- - - - - - 0x025ACF 09:9ABF: 00 5B     .dbyt $005B ; 
- - - - - - 0x025AD1 09:9AC1: 00 5B     .dbyt $005B ; 
; 03 
- - - - - - 0x025AD3 09:9AC3: 00 88     .dbyt $0088 ; 
- - - - - - 0x025AD5 09:9AC5: 00 88     .dbyt $0088 ; 
; 04 
- D 0 - I - 0x025AD7 09:9AC7: 00 B5     .dbyt $00B5 ; 
- D 0 - I - 0x025AD9 09:9AC9: 00 B5     .dbyt $00B5 ; 
; 05 
- D 0 - I - 0x025ADB 09:9ACB: 00 E2     .dbyt $00E2 ; 
- D 0 - I - 0x025ADD 09:9ACD: 00 E2     .dbyt $00E2 ; 
; 06 
- D 0 - I - 0x025ADF 09:9ACF: 01 10     .dbyt $0110 ; 
- D 0 - I - 0x025AE1 09:9AD1: 01 10     .dbyt $0110 ; 
; 07 
- D 0 - I - 0x025AE3 09:9AD3: 01 3D     .dbyt $013D ; 
- D 0 - I - 0x025AE5 09:9AD5: 01 3D     .dbyt $013D ; 
; 08 
- D 0 - I - 0x025AE7 09:9AD7: 02 D4     .dbyt $02D4 ; 
- D 0 - I - 0x025AE9 09:9AD9: 02 D4     .dbyt $02D4 ; 
; 09 
- - - - - - 0x025AEB 09:9ADB: 01 6A     .dbyt $016A ; 
- - - - - - 0x025AED 09:9ADD: 01 6A     .dbyt $016A ; 
; 0A 
- D 0 - I - 0x025AEF 09:9ADF: 01 C4     .dbyt $01C4 ; 
- D 0 - I - 0x025AF1 09:9AE1: 01 C4     .dbyt $01C4 ; 
; 0B 
- - - - - - 0x025AF3 09:9AE3: 02 1F     .dbyt $021F ; 
- - - - - - 0x025AF5 09:9AE5: 02 1F     .dbyt $021F ; 


; bzk garbage
- - - - - - 0x025AF7 09:9AE7: A5 00     LDA ram_0000_temp
- - - - - - 0x025AF9 09:9AE9: 38        SEC
- - - - - - 0x025AFA 09:9AEA: E5 01     SBC ram_0001_temp
- - - - - - 0x025AFC 09:9AEC: 10 04     BPL bra_9AF2
- - - - - - 0x025AFE 09:9AEE: FE 65 05  INC ram_obj_state,X
- - - - - - 0x025B01 09:9AF1: 60        RTS
bra_9AF2:
- - - - - - 0x025B02 09:9AF2: DE 65 05  DEC ram_obj_state,X
- - - - - - 0x025B05 09:9AF5: 60        RTS



ofs_043_9AF6_43:
C - - J - - 0x025B06 09:9AF6: A0 02     LDY #$02
C - - - - - 0x025B08 09:9AF8: 84 17     STY ram_0017_temp
C - - - - - 0x025B0A 09:9AFA: C8        INY ; 03
C - - - - - 0x025B0B 09:9AFB: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025B0D 09:9AFD: 4C 08 9B  JMP loc_9B08



ofs_043_9B00_19:
C - - J - - 0x025B10 09:9B00: A9 01     LDA #$01
C - - - - - 0x025B12 09:9B02: 85 17     STA ram_0017_temp
C - - - - - 0x025B14 09:9B04: A5 1F     LDA ram_random
C - - - - - 0x025B16 09:9B06: 29 07     AND #$07
loc_9B08:
C D 0 - - - 0x025B18 09:9B08: 85 00     STA ram_0000_temp
C - - - - - 0x025B1A 09:9B0A: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x025B1D 09:9B0D: 29 80     AND #$80
C - - - - - 0x025B1F 09:9B0F: F0 03     BEQ bra_9B14
C - - - - - 0x025B21 09:9B11: 4C C7 9B  JMP loc_9BC7
bra_9B14:
C - - - - - 0x025B24 09:9B14: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x025B27 09:9B17: 09 80     ORA #$80
C - - - - - 0x025B29 09:9B19: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x025B2C 09:9B1C: A5 00     LDA ram_0000_temp
C - - - - - 0x025B2E 09:9B1E: 0A        ASL
C - - - - - 0x025B2F 09:9B1F: A8        TAY
C - - - - - 0x025B30 09:9B20: B9 D0 9B  LDA tbl_9BD0_position_hi,Y
C - - - - - 0x025B33 09:9B23: 85 04     STA ram_0004_temp
C - - - - - 0x025B35 09:9B25: B9 D1 9B  LDA tbl_9BD0_position_hi + $01,Y
C - - - - - 0x025B38 09:9B28: 85 05     STA ram_0005_temp
loc_9B2A:
C D 0 - - - 0x025B3A 09:9B2A: 20 30 FF  JSR sub_0x03FF40
C - - - - - 0x025B3D 09:9B2D: A0 02     LDY #$02
C - - - - - 0x025B3F 09:9B2F: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025B41 09:9B31: D0 03     BNE bra_9B36
C - - - - - 0x025B43 09:9B33: 4C 7B 9B  JMP loc_9B7B
bra_9B36:
C - - - - - 0x025B46 09:9B36: A5 00     LDA ram_0000_temp
C - - - - - 0x025B48 09:9B38: 29 1F     AND #$1F
C - - - - - 0x025B4A 09:9B3A: 09 80     ORA #$80
C - - - - - 0x025B4C 09:9B3C: 9D 33 06  STA ram_obj_0634,X
loc_9B3F:
C D 0 - - - 0x025B4F 09:9B3F: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x025B52 09:9B42: 29 7F     AND #$7F
C - - - - - 0x025B54 09:9B44: 38        SEC
C - - - - - 0x025B55 09:9B45: FD 65 05  SBC ram_obj_state,X
C - - - - - 0x025B58 09:9B48: F0 69     BEQ bra_9BB3
C - - - - - 0x025B5A 09:9B4A: 10 1C     BPL bra_9B68
C - - - - - 0x025B5C 09:9B4C: 49 FF     EOR #$FF
C - - - - - 0x025B5E 09:9B4E: 18        CLC
C - - - - - 0x025B5F 09:9B4F: 69 01     ADC #$01
C - - - - - 0x025B61 09:9B51: C9 03     CMP #$03
C - - - - - 0x025B63 09:9B53: 90 5E     BCC bra_9BB3
C - - - - - 0x025B65 09:9B55: C9 10     CMP #$10
C - - - - - 0x025B67 09:9B57: B0 17     BCS bra_9B70
bra_9B59:
C - - - - - 0x025B69 09:9B59: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x025B6C 09:9B5C: 38        SEC
C - - - - - 0x025B6D 09:9B5D: E5 17     SBC ram_0017_temp
C - - - - - 0x025B6F 09:9B5F: 29 1F     AND #$1F
loc_9B61:
C D 0 - - - 0x025B71 09:9B61: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x025B74 09:9B64: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x025B77 09:9B67: 60        RTS
bra_9B68:
C - - - - - 0x025B78 09:9B68: C9 03     CMP #$03
C - - - - - 0x025B7A 09:9B6A: 90 47     BCC bra_9BB3
C - - - - - 0x025B7C 09:9B6C: C9 10     CMP #$10
C - - - - - 0x025B7E 09:9B6E: B0 E9     BCS bra_9B59
bra_9B70:
C - - - - - 0x025B80 09:9B70: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x025B83 09:9B73: 18        CLC
C - - - - - 0x025B84 09:9B74: 65 17     ADC ram_0017_temp
C - - - - - 0x025B86 09:9B76: 29 1F     AND #$1F
C - - - - - 0x025B88 09:9B78: 4C 61 9B  JMP loc_9B61



loc_9B7B:
C D 0 - - - 0x025B8B 09:9B7B: A5 00     LDA ram_0000_temp
C - - - - - 0x025B8D 09:9B7D: 4A        LSR
C - - - - - 0x025B8E 09:9B7E: 29 0F     AND #$0F
C - - - - - 0x025B90 09:9B80: 09 80     ORA #$80
C - - - - - 0x025B92 09:9B82: 9D 33 06  STA ram_obj_0634,X
bra_9B85:
C - - - - - 0x025B95 09:9B85: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x025B98 09:9B88: 29 7F     AND #$7F
C - - - - - 0x025B9A 09:9B8A: 38        SEC
C - - - - - 0x025B9B 09:9B8B: FD 65 05  SBC ram_obj_state,X
C - - - - - 0x025B9E 09:9B8E: F0 23     BEQ bra_9BB3
C - - - - - 0x025BA0 09:9B90: 10 13     BPL bra_9BA5
C - - - - - 0x025BA2 09:9B92: 49 FF     EOR #$FF
C - - - - - 0x025BA4 09:9B94: 18        CLC
C - - - - - 0x025BA5 09:9B95: 69 01     ADC #$01
C - - - - - 0x025BA7 09:9B97: C9 08     CMP #$08
C - - - - - 0x025BA9 09:9B99: B0 0E     BCS bra_9BA9
bra_9B9B:
C - - - - - 0x025BAB 09:9B9B: BC 65 05  LDY ram_obj_state,X
C - - - - - 0x025BAE 09:9B9E: 88        DEY
C - - - - - 0x025BAF 09:9B9F: 98        TYA
C - - - - - 0x025BB0 09:9BA0: 29 0F     AND #$0F
C - - - - - 0x025BB2 09:9BA2: 4C 61 9B  JMP loc_9B61
bra_9BA5:
C - - - - - 0x025BB5 09:9BA5: C9 08     CMP #$08
C - - - - - 0x025BB7 09:9BA7: B0 F2     BCS bra_9B9B
bra_9BA9:
C - - - - - 0x025BB9 09:9BA9: BC 65 05  LDY ram_obj_state,X
C - - - - - 0x025BBC 09:9BAC: C8        INY
C - - - - - 0x025BBD 09:9BAD: 98        TYA
C - - - - - 0x025BBE 09:9BAE: 29 0F     AND #$0F
C - - - - - 0x025BC0 09:9BB0: 4C 61 9B  JMP loc_9B61
bra_9BB3:
C - - - - - 0x025BC3 09:9BB3: A0 01     LDY #$01
C - - - - - 0x025BC5 09:9BB5: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025BC7 09:9BB7: 18        CLC
C - - - - - 0x025BC8 09:9BB8: 7D C1 05  ADC ram_05C1_obj,X
C - - - - - 0x025BCB 09:9BBB: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x025BCE 09:9BBE: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x025BD1 09:9BC1: 29 7F     AND #$7F
C - - - - - 0x025BD3 09:9BC3: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x025BD6 09:9BC6: 60        RTS



loc_9BC7:
bra_9BC7:
C D 0 - - - 0x025BD7 09:9BC7: A0 02     LDY #$02
C - - - - - 0x025BD9 09:9BC9: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025BDB 09:9BCB: F0 B8     BEQ bra_9B85
C - - - - - 0x025BDD 09:9BCD: 4C 3F 9B  JMP loc_9B3F



tbl_9BD0_position_hi:
;                                              +---------- pos_X_hi
;                                              |    +----- pos_Y_hi
;                                              |    |
- D 0 - - - 0x025BE0 09:9BD0: 40        .byte $40, $50   ; 00 
- D 0 - - - 0x025BE2 09:9BD2: 70        .byte $70, $50   ; 01 
- D 0 - - - 0x025BE4 09:9BD4: A0        .byte $A0, $50   ; 02 
- D 0 - - - 0x025BE6 09:9BD6: D0        .byte $D0, $50   ; 03 
- D 0 - - - 0x025BE8 09:9BD8: 40        .byte $40, $70   ; 04 
- D 0 - - - 0x025BEA 09:9BDA: 70        .byte $70, $70   ; 05 
- D 0 - - - 0x025BEC 09:9BDC: A0        .byte $A0, $70   ; 06 
- D 0 - - - 0x025BEE 09:9BDE: D0        .byte $D0, $70   ; 07 
- D 0 - - - 0x025BF0 09:9BE0: 80        .byte $80, $A0   ; 08 
- D 0 - - - 0x025BF2 09:9BE2: 80        .byte $80, $50   ; 09 



ofs_043_9BE4_1A:
C - - J - - 0x025BF4 09:9BE4: A9 02     LDA #$02
C - - - - - 0x025BF6 09:9BE6: 85 17     STA ram_0017_temp
C - - - - - 0x025BF8 09:9BE8: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x025BFB 09:9BEB: 29 80     AND #$80
C - - - - - 0x025BFD 09:9BED: D0 D8     BNE bra_9BC7
C - - - - - 0x025BFF 09:9BEF: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x025C02 09:9BF2: 09 80     ORA #$80
C - - - - - 0x025C04 09:9BF4: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x025C07 09:9BF7: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x025C0A 09:9BFA: 85 04     STA ram_0004_temp
C - - - - - 0x025C0C 09:9BFC: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x025C0F 09:9BFF: 85 05     STA ram_0005_temp
C - - - - - 0x025C11 09:9C01: 4C 2A 9B  JMP loc_9B2A



ofs_043_9C04_49_increase_speed_Y:
C - - J - - 0x025C14 09:9C04: A0 01     LDY #$01
C - - - - - 0x025C16 09:9C06: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025C18 09:9C08: 18        CLC
C - - - - - 0x025C19 09:9C09: 7D 37 05  ADC ram_obj_spd_Y_lo,X
C - - - - - 0x025C1C 09:9C0C: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x025C1F 09:9C0F: A9 00     LDA #$00
C - - - - - 0x025C21 09:9C11: 7D 20 05  ADC ram_obj_spd_Y_hi,X
C - - - - - 0x025C24 09:9C14: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x025C27 09:9C17: 60        RTS



ofs_043_9C18_4A:
C - - J - - 0x025C28 09:9C18: A9 18     LDA #$18
C - - - - - 0x025C2A 09:9C1A: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x025C2D 09:9C1D: A9 00     LDA #$00
C - - - - - 0x025C2F 09:9C1F: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x025C32 09:9C22: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x025C35 09:9C25: 9D 70 04  STA ram_obj_flags,X ; con_obj_flag_00
C - - - - - 0x025C38 09:9C28: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x025C3B 09:9C2B: 60        RTS



ofs_043_9C2C_46:
C - - J - - 0x025C3C 09:9C2C: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x025C3F 09:9C2F: A0 03     LDY #$03
C - - - - - 0x025C41 09:9C31: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025C43 09:9C33: C9 FF     CMP #$FF
C - - - - - 0x025C45 09:9C35: F0 03     BEQ bra_9C3A_FF
C - - - - - 0x025C47 09:9C37: 9D A8 04  STA ram_obj_facing,X
bra_9C3A_FF:
C - - - - - 0x025C4A 09:9C3A: A0 01     LDY #$01
C - - - - - 0x025C4C 09:9C3C: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025C4E 09:9C3E: C9 FF     CMP #$FF
C - - - - - 0x025C50 09:9C40: F0 15     BEQ bra_9C57_FF
C - - - - - 0x025C52 09:9C42: C9 FE     CMP #$FE
C - - - - - 0x025C54 09:9C44: F0 0A     BEQ bra_9C50_FE
C - - - - - 0x025C56 09:9C46: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x025C59 09:9C49: C8        INY ; 02
C - - - - - 0x025C5A 09:9C4A: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025C5C 09:9C4C: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x025C5F 09:9C4F: 60        RTS
bra_9C50_FE:
C - - - - - 0x025C60 09:9C50: DE 00 04  DEC ram_obj_anim_id,X
C - - - - - 0x025C63 09:9C53: DE 00 04  DEC ram_obj_anim_id,X
C - - - - - 0x025C66 09:9C56: 60        RTS
bra_9C57_FF:
C - - - - - 0x025C67 09:9C57: FE 00 04  INC ram_obj_anim_id,X
C - - - - - 0x025C6A 09:9C5A: FE 00 04  INC ram_obj_anim_id,X
C - - - - - 0x025C6D 09:9C5D: 60        RTS



ofs_043_9C5E_41:
C - - J - - 0x025C6E 09:9C5E: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x025C71 09:9C61: D0 19     BNE bra_9C7C
C - - - - - 0x025C73 09:9C63: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x025C76 09:9C66: 85 04     STA ram_0004_temp
C - - - - - 0x025C78 09:9C68: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x025C7B 09:9C6B: 85 05     STA ram_0005_temp
C - - - - - 0x025C7D 09:9C6D: 20 30 FF  JSR sub_0x03FF40
C - - - - - 0x025C80 09:9C70: A5 00     LDA ram_0000_temp
C - - - - - 0x025C82 09:9C72: 29 1E     AND #$1E
C - - - - - 0x025C84 09:9C74: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x025C87 09:9C77: A9 01     LDA #$01
C - - - - - 0x025C89 09:9C79: 9D 33 06  STA ram_obj_0634,X
bra_9C7C:
C - - - - - 0x025C8C 09:9C7C: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x025C8F 09:9C7F: DD 65 05  CMP ram_obj_state,X
C - - - - - 0x025C92 09:9C82: F0 26     BEQ bra_9CAA
C - - - - - 0x025C94 09:9C84: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x025C97 09:9C87: F0 09     BEQ bra_9C92
C - - - - - 0x025C99 09:9C89: FE 65 05  INC ram_obj_state,X
C - - - - - 0x025C9C 09:9C8C: FE 65 05  INC ram_obj_state,X
C - - - - - 0x025C9F 09:9C8F: 4C 98 9C  JMP loc_9C98
bra_9C92:
C - - - - - 0x025CA2 09:9C92: DE 65 05  DEC ram_obj_state,X
C - - - - - 0x025CA5 09:9C95: DE 65 05  DEC ram_obj_state,X
loc_9C98:
C D 0 - - - 0x025CA8 09:9C98: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x025CAB 09:9C9B: 29 1E     AND #$1E
C - - - - - 0x025CAD 09:9C9D: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x025CB0 09:9CA0: A0 01     LDY #$01
C - - - - - 0x025CB2 09:9CA2: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025CB4 09:9CA4: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x025CB7 09:9CA7: 4C 66 9D  JMP loc_9D66
bra_9CAA:
C - - - - - 0x025CBA 09:9CAA: FE 1D 06  INC ram_061D_obj,X
C - - - - - 0x025CBD 09:9CAD: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x025CC0 09:9CB0: 29 01     AND #$01
C - - - - - 0x025CC2 09:9CB2: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x025CC5 09:9CB5: A9 00     LDA #$00
C - - - - - 0x025CC7 09:9CB7: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x025CCA 09:9CBA: A0 02     LDY #$02
C - - - - - 0x025CCC 09:9CBC: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025CCE 09:9CBE: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x025CD1 09:9CC1: 4C 66 9D  JMP loc_9D66



ofs_043_9CC4_3F:
C - - J - - 0x025CD4 09:9CC4: 86 10     STX ram_0010_temp
C - - - - - 0x025CD6 09:9CC6: A0 01     LDY #$01
C - - - - - 0x025CD8 09:9CC8: B1 02     LDA (ram_0002_t001_data),Y
; * 04
C - - - - - 0x025CDA 09:9CCA: 0A        ASL
C - - - - - 0x025CDB 09:9CCB: 0A        ASL
C - - - - - 0x025CDC 09:9CCC: C8        INY ; 02
C - - - - - 0x025CDD 09:9CCD: 18        CLC
C - - - - - 0x025CDE 09:9CCE: 71 02     ADC (ram_0002_t001_data),Y
C - - - - - 0x025CE0 09:9CD0: 18        CLC
C - - - - - 0x025CE1 09:9CD1: 69 03     ADC #$03
C - - - - - 0x025CE3 09:9CD3: 18        CLC
C - - - - - 0x025CE4 09:9CD4: 65 1D     ADC ram_index_ppu_buffer
C - - - - - 0x025CE6 09:9CD6: 85 16     STA ram_0016_temp
C - - - - - 0x025CE8 09:9CD8: C8        INY ; 03
C - - - - - 0x025CE9 09:9CD9: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025CEB 09:9CDB: 85 15     STA ram_0015_temp
C - - - - - 0x025CED 09:9CDD: 20 04 9D  JSR sub_9D04
C - - - - - 0x025CF0 09:9CE0: A6 16     LDX ram_0016_temp
C - - - - - 0x025CF2 09:9CE2: A5 15     LDA ram_0015_temp
C - - - - - 0x025CF4 09:9CE4: 20 EC 9C  JSR sub_9CEC_write_to_buffer_and_INX
C - - - - - 0x025CF7 09:9CE7: A6 10     LDX ram_0010_temp
C - - - - - 0x025CF9 09:9CE9: 4C 66 9D  JMP loc_9D66



sub_9CEC_write_to_buffer_and_INX:
C - - - - - 0x025CFC 09:9CEC: 9D 00 03  STA ram_ppu_buffer,X
C - - - - - 0x025CFF 09:9CEF: E8        INX
C - - - - - 0x025D00 09:9CF0: 60        RTS



tbl_9CF1_palette:
- D 0 - - - 0x025D01 09:9CF1: 00 3F     .word $3F00 ; ppu address

- D 0 - - - 0x025D03 09:9CF3: 0F        .byte $0F, $16, $26, $20   ; 
- D 0 - - - 0x025D07 09:9CF7: 0F        .byte $0F, $0B, $1C, $2A   ; 
- D 0 - - - 0x025D0B 09:9CFB: 0F        .byte $0F, $02, $09, $08   ; 
- D 0 - - - 0x025D0F 09:9CFF: 0F        .byte $0F, $02, $31, $12   ; 

- D 0 - - - 0x025D13 09:9D03: FF        .byte $FF   ; end token



sub_9D04:
C - - - - - 0x025D14 09:9D04: A6 1D     LDX ram_index_ppu_buffer
C - - - - - 0x025D16 09:9D06: A9 01     LDA #$01
C - - - - - 0x025D18 09:9D08: 20 EC 9C  JSR sub_9CEC_write_to_buffer_and_INX
C - - - - - 0x025D1B 09:9D0B: A0 00     LDY #$00
bra_9D0D:
C - - - - - 0x025D1D 09:9D0D: B9 F1 9C  LDA tbl_9CF1_palette,Y
C - - - - - 0x025D20 09:9D10: 20 EC 9C  JSR sub_9CEC_write_to_buffer_and_INX
C - - - - - 0x025D23 09:9D13: C9 FF     CMP #$FF
C - - - - - 0x025D25 09:9D15: F0 03     BEQ bra_9D1A_FF
C - - - - - 0x025D27 09:9D17: C8        INY
C - - - - - 0x025D28 09:9D18: D0 F3     BNE bra_9D0D    ; jmp
bra_9D1A_FF:
C - - - - - 0x025D2A 09:9D1A: 86 1D     STX ram_index_ppu_buffer
C - - - - - 0x025D2C 09:9D1C: A9 04     LDA #con_98E4_3F00_0000
C - - - - - 0x025D2E 09:9D1E: 4C E9 EC  JMP loc_0x03ECF9_write_data_to_ppu_buffer



ofs_043_9D21_3E:
C - - J - - 0x025D31 09:9D21: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x025D34 09:9D24: 09 88     ORA #con_obj_flag_08 + con_obj_flag_not_visible
C - - - - - 0x025D36 09:9D26: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x025D39 09:9D29: 4C 66 9D  JMP loc_9D66



ofs_043_9D2C_3B:
C - - J - - 0x025D3C 09:9D2C: A0 01     LDY #$01
C - - - - - 0x025D3E 09:9D2E: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025D40 09:9D30: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x025D43 09:9D33: 4C 66 9D  JMP loc_9D66



ofs_043_9D36_3C:
C - - J - - 0x025D46 09:9D36: A0 01     LDY #$01
C - - - - - 0x025D48 09:9D38: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025D4A 09:9D3A: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x025D4D 09:9D3D: 4C 66 9D  JMP loc_9D66



ofs_043_9D40_3D:
C - - J - - 0x025D50 09:9D40: DE 33 06  DEC ram_obj_0634,X
C - - - - - 0x025D53 09:9D43: F0 0C     BEQ bra_9D51
ofs_043_9D45_40:
ofs_043_9D45_47:
C - - J - - 0x025D55 09:9D45: A0 01     LDY #$01
C - - - - - 0x025D57 09:9D47: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025D59 09:9D49: 18        CLC
C - - - - - 0x025D5A 09:9D4A: 7D C1 05  ADC ram_05C1_obj,X
C - - - - - 0x025D5D 09:9D4D: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x025D60 09:9D50: 60        RTS
bra_9D51:
C - - - - - 0x025D61 09:9D51: 4C 66 9D  JMP loc_9D66



ofs_043_9D54_3A_play_sound:
C - - J - - 0x025D64 09:9D54: A0 01     LDY #$01
C - - - - - 0x025D66 09:9D56: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025D68 09:9D58: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x025D6B 09:9D5B: 4C 66 9D  JMP loc_9D66



ofs_043_9D5E_39:
C - - J - - 0x025D6E 09:9D5E: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x025D71 09:9D61: 29 77     AND #(con_obj_flag_08 + con_obj_flag_not_visible) ^ $FF
C - - - - - 0x025D73 09:9D63: 9D 70 04  STA ram_obj_flags,X
loc_9D66:
C D 0 - - - 0x025D76 09:9D66: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x025D79 09:9D69: 60        RTS



ofs_043_9D6A_38:
C - - J - - 0x025D7A 09:9D6A: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x025D7D 09:9D6D: 18        CLC
C - - - - - 0x025D7E 09:9D6E: 69 08     ADC #$08
C - - - - - 0x025D80 09:9D70: 29 0F     AND #$0F
C - - - - - 0x025D82 09:9D72: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x025D85 09:9D75: 4C 66 9D  JMP loc_9D66



ofs_043_9D78_45:
; bzk garbage
- - - - - - 0x025D88 09:9D78: BD EF 05  LDA ram_05EF_obj,X
- - - - - - 0x025D8B 09:9D7B: 9D 45 06  STA ram_obj_0646,X
- - - - - - 0x025D8E 09:9D7E: FE C1 05  INC ram_05C1_obj,X
- - - - - - 0x025D91 09:9D81: BD C1 05  LDA ram_05C1_obj,X
- - - - - - 0x025D94 09:9D84: 9D 33 06  STA ram_obj_0634,X
- - - - - - 0x025D97 09:9D87: A9 00     LDA #$00
- - - - - - 0x025D99 09:9D89: 9D C1 05  STA ram_05C1_obj,X
- - - - - - 0x025D9C 09:9D8C: A0 01     LDY #$01
- - - - - - 0x025D9E 09:9D8E: B1 02     LDA (ram_0002_t001_data),Y
- - - - - - 0x025DA0 09:9D90: 29 80     AND #$80
- - - - - - 0x025DA2 09:9D92: 9D EF 05  STA ram_05EF_obj,X
- - - - - - 0x025DA5 09:9D95: 60        RTS



ofs_043_9D96_37:
; bzk garbage
- - - - - - 0x025DA6 09:9D96: BD 45 06  LDA ram_obj_0646,X
- - - - - - 0x025DA9 09:9D99: 9D EF 05  STA ram_05EF_obj,X
- - - - - - 0x025DAC 09:9D9C: BD 33 06  LDA ram_obj_0634,X
- - - - - - 0x025DAF 09:9D9F: 9D C1 05  STA ram_05C1_obj,X
- - - - - - 0x025DB2 09:9DA2: 60        RTS



ofs_043_9DA3_35:
C - - J - - 0x025DB3 09:9DA3: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x025DB6 09:9DA6: 29 BF     AND #con_obj_flag_40 ^ $FF
C - - - - - 0x025DB8 09:9DA8: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x025DBB 09:9DAB: 4C 66 9D  JMP loc_9D66



ofs_043_9DAE_36:
C - - J - - 0x025DBE 09:9DAE: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x025DC1 09:9DB1: 09 40     ORA #con_obj_flag_40
C - - - - - 0x025DC3 09:9DB3: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x025DC6 09:9DB6: 4C 66 9D  JMP loc_9D66



ofs_043_9DB9_34:
C - - J - - 0x025DC9 09:9DB9: A0 01     LDY #$01
C - - - - - 0x025DCB 09:9DBB: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025DCD 09:9DBD: 20 66 87  JSR sub_8766
C - - - - - 0x025DD0 09:9DC0: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x025DD3 09:9DC3: 99 A8 04  STA ram_obj_facing,Y
C - - - - - 0x025DD6 09:9DC6: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x025DD9 09:9DC9: 99 65 05  STA ram_obj_state,Y
C - - - - - 0x025DDC 09:9DCC: A9 00     LDA #$00
C - - - - - 0x025DDE 09:9DCE: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x025DE1 09:9DD1: 99 C1 05  STA ram_05C1_obj,Y
C - - - - - 0x025DE4 09:9DD4: 4C 66 9D  JMP loc_9D66



ofs_043_9DD7_33_move_object:
C - - J - - 0x025DE7 09:9DD7: A0 01     LDY #$01
C - - - - - 0x025DE9 09:9DD9: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025DEB 09:9DDB: 18        CLC
C - - - - - 0x025DEC 09:9DDC: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x025DEF 09:9DDF: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x025DF2 09:9DE2: C8        INY ; 02
C - - - - - 0x025DF3 09:9DE3: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025DF5 09:9DE5: 18        CLC
C - - - - - 0x025DF6 09:9DE6: 7D 1C 04  ADC ram_obj_pos_Y_hi,X
C - - - - - 0x025DF9 09:9DE9: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x025DFC 09:9DEC: 4C 66 9D  JMP loc_9D66



ofs_043_9DEF_32:
- - - - - - 0x025DFF 09:9DEF: AD 38 04  LDA ram_plr_pos_X_hi
- - - - - - 0x025E02 09:9DF2: 85 04     STA ram_0004_temp
- - - - - - 0x025E04 09:9DF4: AD 1C 04  LDA ram_plr_pos_Y_hi
- - - - - - 0x025E07 09:9DF7: 85 05     STA ram_0005_temp
- - - - - - 0x025E09 09:9DF9: 20 30 FF  JSR sub_0x03FF40
- - - - - - 0x025E0C 09:9DFC: A5 00     LDA ram_0000_temp
- - - - - - 0x025E0E 09:9DFE: 29 10     AND #$10
- - - - - - 0x025E10 09:9E00: F0 02     BEQ bra_9E04
- - - - - - 0x025E12 09:9E02: A9 01     LDA #$01    ; facing left
bra_9E04:   ; A = 00 (facing right)
- - - - - - 0x025E14 09:9E04: DD A8 04  CMP ram_obj_facing,X
- - - - - - 0x025E17 09:9E07: F0 09     BEQ bra_9E12
- - - - - - 0x025E19 09:9E09: A5 00     LDA ram_0000_temp
- - - - - - 0x025E1B 09:9E0B: 18        CLC
- - - - - - 0x025E1C 09:9E0C: 69 10     ADC #$10
- - - - - - 0x025E1E 09:9E0E: 29 1F     AND #$1F
- - - - - - 0x025E20 09:9E10: 85 00     STA ram_0000_temp
bra_9E12:
- - - - - - 0x025E22 09:9E12: A5 00     LDA ram_0000_temp
- - - - - - 0x025E24 09:9E14: 29 10     AND #$10
- - - - - - 0x025E26 09:9E16: F0 12     BEQ bra_9E2A
- - - - - - 0x025E28 09:9E18: A5 00     LDA ram_0000_temp
- - - - - - 0x025E2A 09:9E1A: C9 15     CMP #$15
- - - - - - 0x025E2C 09:9E1C: B0 04     BCS bra_9E22
- - - - - - 0x025E2E 09:9E1E: A9 15     LDA #$15
- - - - - - 0x025E30 09:9E20: D0 18     BNE bra_9E3A    ; jmp
bra_9E22:
- - - - - - 0x025E32 09:9E22: C9 1C     CMP #$1C
- - - - - - 0x025E34 09:9E24: 90 14     BCC bra_9E3A
- - - - - - 0x025E36 09:9E26: A9 1B     LDA #$1B
- - - - - - 0x025E38 09:9E28: D0 10     BNE bra_9E3A    ; jmp
bra_9E2A:
- - - - - - 0x025E3A 09:9E2A: A5 00     LDA ram_0000_temp
- - - - - - 0x025E3C 09:9E2C: C9 05     CMP #$05
- - - - - - 0x025E3E 09:9E2E: B0 04     BCS bra_9E34
- - - - - - 0x025E40 09:9E30: A9 05     LDA #$05
- - - - - - 0x025E42 09:9E32: D0 06     BNE bra_9E3A    ; jmp
bra_9E34:
- - - - - - 0x025E44 09:9E34: C9 0C     CMP #$0C
- - - - - - 0x025E46 09:9E36: 90 02     BCC bra_9E3A
- - - - - - 0x025E48 09:9E38: A9 0B     LDA #$0B
bra_9E3A:
- - - - - - 0x025E4A 09:9E3A: 9D 65 05  STA ram_obj_state,X
- - - - - - 0x025E4D 09:9E3D: 4C 66 9D  JMP loc_9D66



ofs_043_9E40_2B:
C - - J - - 0x025E50 09:9E40: A9 40     LDA #con_obj_flag_40
C - - - - - 0x025E52 09:9E42: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x025E55 09:9E45: 4C 66 9D  JMP loc_9D66



ofs_043_9E48_20:
C - - J - - 0x025E58 09:9E48: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x025E5B 09:9E4B: 85 05     STA ram_0005_temp
C - - - - - 0x025E5D 09:9E4D: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x025E60 09:9E50: 85 04     STA ram_0004_temp
C - - - - - 0x025E62 09:9E52: 20 30 FF  JSR sub_0x03FF40
C - - - - - 0x025E65 09:9E55: A5 00     LDA ram_0000_temp
C - - - - - 0x025E67 09:9E57: 85 06     STA ram_0006_t00A
C - - - - - 0x025E69 09:9E59: 4A        LSR
C - - - - - 0x025E6A 09:9E5A: 29 0F     AND #$0F
C - - - - - 0x025E6C 09:9E5C: 85 05     STA ram_0005_temp
C - - - - - 0x025E6E 09:9E5E: A0 01     LDY #$01
C - - - - - 0x025E70 09:9E60: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025E72 09:9E62: 85 00     STA ram_0000_temp
C - - - - - 0x025E74 09:9E64: C8        INY ; 02
C - - - - - 0x025E75 09:9E65: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025E77 09:9E67: 85 01     STA ram_0001_temp
C - - - - - 0x025E79 09:9E69: C8        INY ; 03
C - - - - - 0x025E7A 09:9E6A: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025E7C 09:9E6C: 85 02     STA ram_0002_temp
loc_9E6E:
C D 0 - - - 0x025E7E 09:9E6E: A5 00     LDA ram_0000_temp
C - - - - - 0x025E80 09:9E70: 20 66 87  JSR sub_8766
C - - - - - 0x025E83 09:9E73: B0 03     BCS bra_9E78
C - - - - - 0x025E85 09:9E75: 4C EA 9E  JMP loc_9EEA
bra_9E78:
C - - - - - 0x025E88 09:9E78: 84 04     STY ram_0004_temp
C - - - - - 0x025E8A 09:9E7A: A5 02     LDA ram_0002_temp
C - - - - - 0x025E8C 09:9E7C: F0 32     BEQ bra_9EB0
C - - - - - 0x025E8E 09:9E7E: C9 01     CMP #$01
C - - - - - 0x025E90 09:9E80: D0 03     BNE bra_9E85
C - - - - - 0x025E92 09:9E82: 4C E3 9E  JMP loc_9EE3
bra_9E85:
C - - - - - 0x025E95 09:9E85: C9 04     CMP #$04
C - - - - - 0x025E97 09:9E87: F0 43     BEQ bra_9ECC
C - - - - - 0x025E99 09:9E89: A9 00     LDA #$00
C - - - - - 0x025E9B 09:9E8B: 99 F2 04  STA ram_obj_spd_X_hi,Y
C - - - - - 0x025E9E 09:9E8E: 99 09 05  STA ram_obj_spd_X_lo,Y
C - - - - - 0x025EA1 09:9E91: 99 20 05  STA ram_obj_spd_Y_hi,Y
C - - - - - 0x025EA4 09:9E94: 99 37 05  STA ram_obj_spd_Y_lo,Y
C - - - - - 0x025EA7 09:9E97: A5 01     LDA ram_0001_temp
C - - - - - 0x025EA9 09:9E99: 38        SEC
C - - - - - 0x025EAA 09:9E9A: E9 01     SBC #$01
C - - - - - 0x025EAC 09:9E9C: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x025EAF 09:9E9F: A5 02     LDA ram_0002_temp
C - - - - - 0x025EB1 09:9EA1: C9 03     CMP #$03
C - - - - - 0x025EB3 09:9EA3: F0 03     BEQ bra_9EA8
C - - - - - 0x025EB5 09:9EA5: 4C E3 9E  JMP loc_9EE3
bra_9EA8:
- - - - - - 0x025EB8 09:9EA8: A5 05     LDA ram_0005_temp
- - - - - - 0x025EBA 09:9EAA: 99 65 05  STA ram_obj_state,Y
- - - - - - 0x025EBD 09:9EAD: 4C E3 9E  JMP loc_9EE3
bra_9EB0:
C - - - - - 0x025EC0 09:9EB0: A4 01     LDY ram_0001_temp
C - - - - - 0x025EC2 09:9EB2: 88        DEY
C - - - - - 0x025EC3 09:9EB3: B9 ED 9E  LDA tbl_9EED,Y
C - - - - - 0x025EC6 09:9EB6: 18        CLC
C - - - - - 0x025EC7 09:9EB7: 65 05     ADC ram_0005_temp
C - - - - - 0x025EC9 09:9EB9: 29 0F     AND #$0F
C - - - - - 0x025ECB 09:9EBB: A4 04     LDY ram_0004_temp
C - - - - - 0x025ECD 09:9EBD: 99 65 05  STA ram_obj_state,Y
C - - - - - 0x025ED0 09:9EC0: 29 08     AND #$08
C - - - - - 0x025ED2 09:9EC2: F0 02     BEQ bra_9EC6
C - - - - - 0x025ED4 09:9EC4: A9 01     LDA #$01    ; facing left
bra_9EC6:   ; A = 00 (facing right)
C - - - - - 0x025ED6 09:9EC6: 99 A8 04  STA ram_obj_facing,Y
C - - - - - 0x025ED9 09:9EC9: 4C E3 9E  JMP loc_9EE3
bra_9ECC:
C - - - - - 0x025EDC 09:9ECC: A4 04     LDY ram_0004_temp
C - - - - - 0x025EDE 09:9ECE: A9 00     LDA #$00
C - - - - - 0x025EE0 09:9ED0: 99 C1 05  STA ram_05C1_obj,Y
C - - - - - 0x025EE3 09:9ED3: 99 00 04  STA ram_obj_anim_id,Y
C - - - - - 0x025EE6 09:9ED6: 99 70 04  STA ram_obj_flags,Y ; con_obj_flag_00
C - - - - - 0x025EE9 09:9ED9: A5 06     LDA ram_0006_t00A
C - - - - - 0x025EEB 09:9EDB: 99 65 05  STA ram_obj_state,Y
C - - - - - 0x025EEE 09:9EDE: A9 80     LDA #$80
C - - - - - 0x025EF0 09:9EE0: 99 EF 05  STA ram_05EF_obj,Y
loc_9EE3:
C D 0 - - - 0x025EF3 09:9EE3: C6 01     DEC ram_0001_temp
C - - - - - 0x025EF5 09:9EE5: F0 03     BEQ bra_9EEA
C - - - - - 0x025EF7 09:9EE7: 4C 6E 9E  JMP loc_9E6E
loc_9EEA:
bra_9EEA:
C D 0 - - - 0x025EFA 09:9EEA: 4C 66 9D  JMP loc_9D66



tbl_9EED:
- D 0 - - - 0x025EFD 09:9EED: FF        .byte $FF   ; 01 
- D 0 - - - 0x025EFE 09:9EEE: 00        .byte $00   ; 02 
- D 0 - - - 0x025EFF 09:9EEF: 01        .byte $01   ; 03 
- - - - - - 0x025F00 09:9EF0: 03        .byte $03   ; 04 
- - - - - - 0x025F01 09:9EF1: 03        .byte $03   ; 05 
- - - - - - 0x025F02 09:9EF2: 03        .byte $03   ; 06 
- - - - - - 0x025F03 09:9EF3: 03        .byte $03   ; 07 
- - - - - - 0x025F04 09:9EF4: 04        .byte $04   ; 08 
- - - - - - 0x025F05 09:9EF5: 04        .byte $04   ; 09 
- - - - - - 0x025F06 09:9EF6: 04        .byte $04   ; 0A 
- - - - - - 0x025F07 09:9EF7: 04        .byte $04   ; 0B 
- - - - - - 0x025F08 09:9EF8: 0C        .byte $0C   ; 0C 
- - - - - - 0x025F09 09:9EF9: 0C        .byte $0C   ; 0D 
- - - - - - 0x025F0A 09:9EFA: 0C        .byte $0C   ; 0E 
- - - - - - 0x025F0B 09:9EFB: 0C        .byte $0C   ; 0F 
- - - - - - 0x025F0C 09:9EFC: 0D        .byte $0D   ; 10 
- - - - - - 0x025F0D 09:9EFD: 0D        .byte $0D   ; 11 
- - - - - - 0x025F0E 09:9EFE: 0D        .byte $0D   ; 12 
- - - - - - 0x025F0F 09:9EFF: 0D        .byte $0D   ; 13 



ofs_043_9F00_25:
C - - J - - 0x025F10 09:9F00: A9 18     LDA #$18
C - - - - - 0x025F12 09:9F02: 20 66 87  JSR sub_8766
C - - - - - 0x025F15 09:9F05: 90 4E     BCC bra_9F55_RTS
C - - - - - 0x025F17 09:9F07: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x025F1A 09:9F0A: 38        SEC
C - - - - - 0x025F1B 09:9F0B: E9 20     SBC #$20
C - - - - - 0x025F1D 09:9F0D: 99 1C 04  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x025F20 09:9F10: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x025F23 09:9F13: 38        SEC
C - - - - - 0x025F24 09:9F14: F9 38 04  SBC ram_obj_pos_X_hi,Y
C - - - - - 0x025F27 09:9F17: B0 05     BCS bra_9F1E
- - - - - - 0x025F29 09:9F19: 49 FF     EOR #$FF
- - - - - - 0x025F2B 09:9F1B: 18        CLC
- - - - - - 0x025F2C 09:9F1C: 69 01     ADC #$01
bra_9F1E:
C - - - - - 0x025F2E 09:9F1E: 29 F0     AND #$F0
; / 08
C - - - - - 0x025F30 09:9F20: 4A        LSR
C - - - - - 0x025F31 09:9F21: 4A        LSR
C - - - - - 0x025F32 09:9F22: 4A        LSR
C - - - - - 0x025F33 09:9F23: 84 05     STY ram_0005_temp
C - - - - - 0x025F35 09:9F25: A8        TAY
C - - - - - 0x025F36 09:9F26: B9 56 9F  LDA tbl_9F56_spd_X,Y
C - - - - - 0x025F39 09:9F29: 85 00     STA ram_0000_temp
C - - - - - 0x025F3B 09:9F2B: B9 57 9F  LDA tbl_9F56_spd_X + $01,Y
C - - - - - 0x025F3E 09:9F2E: 85 01     STA ram_0001_temp
C - - - - - 0x025F40 09:9F30: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x025F43 09:9F33: F0 11     BEQ bra_9F46_facing_right
- - - - - - 0x025F45 09:9F35: A5 00     LDA ram_0000_temp
- - - - - - 0x025F47 09:9F37: 49 FF     EOR #$FF
- - - - - - 0x025F49 09:9F39: 18        CLC
- - - - - - 0x025F4A 09:9F3A: 69 01     ADC #< $0001
- - - - - - 0x025F4C 09:9F3C: 85 00     STA ram_0000_temp
- - - - - - 0x025F4E 09:9F3E: A5 01     LDA ram_0001_temp
- - - - - - 0x025F50 09:9F40: 49 FF     EOR #$FF
- - - - - - 0x025F52 09:9F42: 69 00     ADC #> $0001
- - - - - - 0x025F54 09:9F44: 85 01     STA ram_0001_temp
bra_9F46_facing_right:
C - - - - - 0x025F56 09:9F46: A4 05     LDY ram_0005_temp
C - - - - - 0x025F58 09:9F48: A5 00     LDA ram_0000_temp
C - - - - - 0x025F5A 09:9F4A: 99 09 05  STA ram_obj_spd_X_lo,Y
C - - - - - 0x025F5D 09:9F4D: A5 01     LDA ram_0001_temp
C - - - - - 0x025F5F 09:9F4F: 99 F2 04  STA ram_obj_spd_X_hi,Y
C - - - - - 0x025F62 09:9F52: FE C1 05  INC ram_05C1_obj,X
bra_9F55_RTS:
C - - - - - 0x025F65 09:9F55: 60        RTS



tbl_9F56_spd_X:
- - - - - - 0x025F66 09:9F56: 40 00     .word $0040 ; 00 
- D 0 - - - 0x025F68 09:9F58: 50 00     .word $0050 ; 01 
- D 0 - - - 0x025F6A 09:9F5A: A0 00     .word $00A0 ; 02 
- D 0 - - - 0x025F6C 09:9F5C: F0 00     .word $00F0 ; 03 
- D 0 - - - 0x025F6E 09:9F5E: 40 01     .word $0140 ; 04 
- D 0 - - - 0x025F70 09:9F60: 90 01     .word $0190 ; 05 
- - - - - - 0x025F72 09:9F62: E0 01     .word $01E0 ; 06 
- D 0 - - - 0x025F74 09:9F64: 30 02     .word $0230 ; 07 
- D 0 - - - 0x025F76 09:9F66: 80 02     .word $0280 ; 08 
- - - - - - 0x025F78 09:9F68: D0 02     .word $02D0 ; 09 
- - - - - - 0x025F7A 09:9F6A: 20 03     .word $0320 ; 0A 
- - - - - - 0x025F7C 09:9F6C: 70 03     .word $0370 ; 0B 
- - - - - - 0x025F7E 09:9F6E: C0 03     .word $03C0 ; 0C 
- - - - - - 0x025F80 09:9F70: 10 04     .word $0410 ; 0D 
- - - - - - 0x025F82 09:9F72: 60 04     .word $0460 ; 0E 
- - - - - - 0x025F84 09:9F74: B0 04     .word $04B0 ; 0F 



ofs_043_9F76_26:
C - - J - - 0x025F86 09:9F76: A9 16     LDA #con_irq_16
C - - - - - 0x025F88 09:9F78: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x025F8A 09:9F7A: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x025F8D 09:9F7D: D0 08     BNE bra_9F87
C - - - - - 0x025F8F 09:9F7F: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x025F92 09:9F82: A9 01     LDA #con_irq_01
C - - - - - 0x025F94 09:9F84: 85 3F     STA ram_003F_copy_irq_handler
C - - - - - 0x025F96 09:9F86: 60        RTS
bra_9F87:
C - - - - - 0x025F97 09:9F87: A0 01     LDY #$01
C - - - - - 0x025F99 09:9F89: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x025F9B 09:9F8B: D0 0F     BNE bra_9F9C
C - - - - - 0x025F9D 09:9F8D: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x025FA0 09:9F90: 29 0F     AND #$0F
C - - - - - 0x025FA2 09:9F92: A8        TAY
C - - - - - 0x025FA3 09:9F93: B9 AC 9F  LDA tbl_9FAC,Y
C - - - - - 0x025FA6 09:9F96: 8D ED 07  STA ram_07ED
C - - - - - 0x025FA9 09:9F99: 4C A8 9F  JMP loc_9FA8
bra_9F9C:
C - - - - - 0x025FAC 09:9F9C: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x025FAF 09:9F9F: 29 07     AND #$07
C - - - - - 0x025FB1 09:9FA1: A8        TAY
C - - - - - 0x025FB2 09:9FA2: B9 BC 9F  LDA tbl_9FBC,Y
C - - - - - 0x025FB5 09:9FA5: 8D ED 07  STA ram_07ED
loc_9FA8:
C D 0 - - - 0x025FB8 09:9FA8: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x025FBB 09:9FAB: 60        RTS



tbl_9FAC:
- D 0 - - - 0x025FBC 09:9FAC: 02        .byte $02   ; 00 
- D 0 - - - 0x025FBD 09:9FAD: 03        .byte $03   ; 01 
- D 0 - - - 0x025FBE 09:9FAE: 01        .byte $01   ; 02 
- D 0 - - - 0x025FBF 09:9FAF: 07        .byte $07   ; 03 
- D 0 - - - 0x025FC0 09:9FB0: 03        .byte $03   ; 04 
- D 0 - - - 0x025FC1 09:9FB1: 06        .byte $06   ; 05 
- D 0 - - - 0x025FC2 09:9FB2: 01        .byte $01   ; 06 
- D 0 - - - 0x025FC3 09:9FB3: 09        .byte $09   ; 07 
- D 0 - - - 0x025FC4 09:9FB4: 00        .byte $00   ; 08 
- D 0 - - - 0x025FC5 09:9FB5: 05        .byte $05   ; 09 
- D 0 - - - 0x025FC6 09:9FB6: 04        .byte $04   ; 0A 
- D 0 - - - 0x025FC7 09:9FB7: 01        .byte $01   ; 0B 
- D 0 - - - 0x025FC8 09:9FB8: 08        .byte $08   ; 0C 
- D 0 - - - 0x025FC9 09:9FB9: 02        .byte $02   ; 0D 
- D 0 - - - 0x025FCA 09:9FBA: 06        .byte $06   ; 0E 
- D 0 - - - 0x025FCB 09:9FBB: 00        .byte $00   ; 0F 



tbl_9FBC:
- D 0 - - - 0x025FCC 09:9FBC: 00        .byte $00   ; 00 
- D 0 - - - 0x025FCD 09:9FBD: 03        .byte $03   ; 01 
- D 0 - - - 0x025FCE 09:9FBE: 01        .byte $01   ; 02 
- D 0 - - - 0x025FCF 09:9FBF: 02        .byte $02   ; 03 
- D 0 - - - 0x025FD0 09:9FC0: 02        .byte $02   ; 04 
- D 0 - - - 0x025FD1 09:9FC1: 01        .byte $01   ; 05 
- D 0 - - - 0x025FD2 09:9FC2: 03        .byte $03   ; 06 
- D 0 - - - 0x025FD3 09:9FC3: 00        .byte $00   ; 07 



ofs_043_9FC4_27:
C - - J - - 0x025FD4 09:9FC4: 20 3B A1  JSR sub_A13B_generate_random_number
C - - - - - 0x025FD7 09:9FC7: A5 1F     LDA ram_random
; * 10
C - - - - - 0x025FD9 09:9FC9: 0A        ASL
C - - - - - 0x025FDA 09:9FCA: 0A        ASL
C - - - - - 0x025FDB 09:9FCB: 0A        ASL
C - - - - - 0x025FDC 09:9FCC: 0A        ASL
C - - - - - 0x025FDD 09:9FCD: C9 D0     CMP #$D0
C - - - - - 0x025FDF 09:9FCF: 90 03     BCC bra_9FD4
; chance 3 in 16 
C - - - - - 0x025FE1 09:9FD1: 18        CLC
C - - - - - 0x025FE2 09:9FD2: 69 80     ADC #$80
bra_9FD4:
C - - - - - 0x025FE4 09:9FD4: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x025FE7 09:9FD7: A9 40     LDA #$40
C - - - - - 0x025FE9 09:9FD9: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x025FEC 09:9FDC: A9 00     LDA #$00
C - - - - - 0x025FEE 09:9FDE: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x025FF1 09:9FE1: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x025FF4 09:9FE4: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x025FF7 09:9FE7: 20 3B A1  JSR sub_A13B_generate_random_number
C - - - - - 0x025FFA 09:9FEA: D0 02     BNE bra_9FEE
C - - - - - 0x025FFC 09:9FEC: A9 01     LDA #$01
bra_9FEE:
C - - - - - 0x025FFE 09:9FEE: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x026001 09:9FF1: A9 88     LDA #con_obj_flag_08 + con_obj_flag_not_visible
C - - - - - 0x026003 09:9FF3: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x026006 09:9FF6: 60        RTS



ofs_043_9FF7_28:
C - - J - - 0x026007 09:9FF7: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x02600A 09:9FFA: A0 01     LDY #$01
C - - - - - 0x02600C 09:9FFC: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x02600E 09:9FFE: 85 00     STA ram_0000_temp
C - - - - - 0x026010 09:A000: C8        INY ; 02
C - - - - - 0x026011 09:A001: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x026013 09:A003: A8        TAY
C - - - - - 0x026014 09:A004: A5 00     LDA ram_0000_temp
C - - - - - 0x026016 09:A006: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation



ofs_043_A009_29_clear_object_data:
; bzk optimize
C - - J - - 0x026019 09:A009: 4C 3A 87  JMP loc_873A_clear_object_data



ofs_043_A00C_2C:
C - - J - - 0x02601C 09:A00C: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x02601F 09:A00F: F0 12     BEQ bra_A023
C - - - - - 0x026021 09:A011: A9 50     LDA #con_obj_flag_10 + con_obj_flag_40
C - - - - - 0x026023 09:A013: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x026026 09:A016: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x026029 09:A019: 29 03     AND #$03
C - - - - - 0x02602B 09:A01B: F0 09     BEQ bra_A026_RTS
C - - - - - 0x02602D 09:A01D: A9 98     LDA #con_obj_flag_08 + con_obj_flag_10 + con_obj_flag_not_visible
C - - - - - 0x02602F 09:A01F: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x026032 09:A022: 60        RTS
bra_A023:
C - - - - - 0x026033 09:A023: FE C1 05  INC ram_05C1_obj,X
bra_A026_RTS:
C - - - - - 0x026036 09:A026: 60        RTS



ofs_043_A027_48:
C - - J - - 0x026037 09:A027: A0 01     LDY #$01
C - - - - - 0x026039 09:A029: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x02603B 09:A02B: 0A        ASL
C - - - - - 0x02603C 09:A02C: A8        TAY
C - - - - - 0x02603D 09:A02D: B9 3A A0  LDA tbl_A03A_position,Y
C - - - - - 0x026040 09:A030: 85 00     STA ram_0000_temp
C - - - - - 0x026042 09:A032: B9 3B A0  LDA tbl_A03A_position + $01,Y
C - - - - - 0x026045 09:A035: 85 01     STA ram_0001_temp
C - - - - - 0x026047 09:A037: 4C 92 A0  JMP loc_A092



tbl_A03A_position:
- D 1 - - - 0x02604A 09:A03A: 40 A0     .word off_A040_00
- D 1 - - - 0x02604C 09:A03C: 56 A0     .word off_A056_01
- D 1 - - - 0x02604E 09:A03E: 6C A0     .word off_A06C_02



off_A040_00:
;                                              +---------- pos_X_hi
;                                              |    +----- pos_Y_hi
;                                              |    |
- D 1 - I - 0x026050 09:A040: 04        .byte $04, $00   ; 00 
- D 1 - I - 0x026052 09:A042: FC        .byte $FC, $00   ; 01 
- D 1 - I - 0x026054 09:A044: FA        .byte $FA, $00   ; 02 
- D 1 - I - 0x026056 09:A046: 06        .byte $06, $00   ; 03 
- D 1 - I - 0x026058 09:A048: 00        .byte $00, $00   ; 04 
- D 1 - I - 0x02605A 09:A04A: F6        .byte $F6, $00   ; 05 
- D 1 - I - 0x02605C 09:A04C: 0A        .byte $0A, $00   ; 06 
- D 1 - I - 0x02605E 09:A04E: F8        .byte $F8, $00   ; 07 
; bzk garbage? 0x0260D9
- - - - - - 0x026060 09:A050: FE        .byte $FE, $00   ; 08 
- - - - - - 0x026062 09:A052: 02        .byte $02, $00   ; 09 
- - - - - - 0x026064 09:A054: 08        .byte $08, $00   ; 0A 



off_A056_01:
;                                              +---------- pos_X_hi
;                                              |    +----- pos_Y_hi
;                                              |    |
- D 1 - I - 0x026066 09:A056: 00        .byte $00, $00   ; 00 
- D 1 - I - 0x026068 09:A058: 00        .byte $00, $00   ; 01 
- D 1 - I - 0x02606A 09:A05A: FE        .byte $FE, $F8   ; 02 
- D 1 - I - 0x02606C 09:A05C: 02        .byte $02, $F9   ; 03 
- D 1 - I - 0x02606E 09:A05E: 00        .byte $00, $F7   ; 04 
- D 1 - I - 0x026070 09:A060: 00        .byte $00, $F8   ; 05 
- D 1 - I - 0x026072 09:A062: 00        .byte $00, $F9   ; 06 
- D 1 - I - 0x026074 09:A064: 00        .byte $00, $F8   ; 07 
; bzk garbage? 0x0260E9
- - - - - - 0x026076 09:A066: 00        .byte $00, $F7   ; 08 
- - - - - - 0x026078 09:A068: 00        .byte $00, $F8   ; 09 
- - - - - - 0x02607A 09:A06A: 00        .byte $00, $F9   ; 0A 



off_A06C_02:
;                                              +---------- pos_X_hi
;                                              |    +----- pos_Y_hi
;                                              |    |
- D 1 - I - 0x02607C 09:A06C: 00        .byte $00, $00   ; 00 
- D 1 - I - 0x02607E 09:A06E: 00        .byte $00, $00   ; 01 
- D 1 - I - 0x026080 09:A070: 00        .byte $00, $00   ; 02 
- D 1 - I - 0x026082 09:A072: 00        .byte $00, $00   ; 03 
- D 1 - I - 0x026084 09:A074: 00        .byte $00, $00   ; 04 
- D 1 - I - 0x026086 09:A076: 00        .byte $00, $F0   ; 05 
- D 1 - I - 0x026088 09:A078: 00        .byte $00, $F9   ; 06 
- D 1 - I - 0x02608A 09:A07A: 00        .byte $00, $F9   ; 07 
; bzk garbage? 0x0260F9
- - - - - - 0x02608C 09:A07C: 00        .byte $00, $F9   ; 08 
- - - - - - 0x02608E 09:A07E: 00        .byte $00, $F0   ; 09 
- - - - - - 0x026090 09:A080: 00        .byte $00, $F9   ; 0A 



ofs_043_A082_2D:
C - - J - - 0x026092 09:A082: A0 01     LDY #$01
C - - - - - 0x026094 09:A084: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x026096 09:A086: 0A        ASL
C - - - - - 0x026097 09:A087: A8        TAY
C - - - - - 0x026098 09:A088: B9 B5 A0  LDA tbl_A0B5_position,Y
C - - - - - 0x02609B 09:A08B: 85 00     STA ram_0000_t008_data
C - - - - - 0x02609D 09:A08D: B9 B6 A0  LDA tbl_A0B5_position + $01,Y
C - - - - - 0x0260A0 09:A090: 85 01     STA ram_0000_t008_data + $01
loc_A092:
C D 1 - - - 0x0260A2 09:A092: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x0260A5 09:A095: 0A        ASL
C - - - - - 0x0260A6 09:A096: A8        TAY
C - - - - - 0x0260A7 09:A097: B1 00     LDA (ram_0000_t008_data),Y
C - - - - - 0x0260A9 09:A099: 18        CLC
C - - - - - 0x0260AA 09:A09A: 7D 38 04  ADC ram_obj_pos_X_hi,X
C - - - - - 0x0260AD 09:A09D: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0260B0 09:A0A0: C8        INY
C - - - - - 0x0260B1 09:A0A1: B1 00     LDA (ram_0000_t008_data),Y
C - - - - - 0x0260B3 09:A0A3: 18        CLC
C - - - - - 0x0260B4 09:A0A4: 7D 1C 04  ADC ram_obj_pos_Y_hi,X
C - - - - - 0x0260B7 09:A0A7: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0260BA 09:A0AA: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x0260BD 09:A0AD: A0 02     LDY #$02
C - - - - - 0x0260BF 09:A0AF: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x0260C1 09:A0B1: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x0260C4 09:A0B4: 60        RTS



tbl_A0B5_position:
- D 1 - - - 0x0260C5 09:A0B5: BB A0     .word off_A0BB_00
- D 1 - - - 0x0260C7 09:A0B7: CB A0     .word off_A0CB_01
- D 1 - - - 0x0260C9 09:A0B9: DB A0     .word off_A0DB_02



off_A0BB_00:
;                                              +---------- pos_X_hi
;                                              |    +----- pos_Y_hi
;                                              |    |
- D 1 - I - 0x0260CB 09:A0BB: 04        .byte $04, $00   ; 00 
- D 1 - I - 0x0260CD 09:A0BD: FC        .byte $FC, $00   ; 01 
- D 1 - I - 0x0260CF 09:A0BF: FA        .byte $FA, $00   ; 02 
- D 1 - I - 0x0260D1 09:A0C1: 06        .byte $06, $00   ; 03 
- D 1 - I - 0x0260D3 09:A0C3: 00        .byte $00, $00   ; 04 
- D 1 - I - 0x0260D5 09:A0C5: FC        .byte $FC, $00   ; 05 
- D 1 - I - 0x0260D7 09:A0C7: 06        .byte $06, $00   ; 06 
- D 1 - I - 0x0260D9 09:A0C9: FA        .byte $FA, $00   ; 07 



off_A0CB_01:
;                                              +---------- pos_X_hi
;                                              |    +----- pos_Y_hi
;                                              |    |
- D 1 - I - 0x0260DB 09:A0CB: 00        .byte $00, $00   ; 00 
- D 1 - I - 0x0260DD 09:A0CD: 00        .byte $00, $00   ; 01 
- D 1 - I - 0x0260DF 09:A0CF: FE        .byte $FE, $F8   ; 02 
- D 1 - I - 0x0260E1 09:A0D1: 02        .byte $02, $F9   ; 03 
- D 1 - I - 0x0260E3 09:A0D3: 00        .byte $00, $F7   ; 04 
- D 1 - I - 0x0260E5 09:A0D5: 00        .byte $00, $F8   ; 05 
- D 1 - I - 0x0260E7 09:A0D7: 00        .byte $00, $F9   ; 06 
- D 1 - I - 0x0260E9 09:A0D9: 00        .byte $00, $F8   ; 07 



off_A0DB_02:
;                                              +---------- pos_X_hi
;                                              |    +----- pos_Y_hi
;                                              |    |
- D 1 - I - 0x0260EB 09:A0DB: 00        .byte $00, $00   ; 00 
- D 1 - I - 0x0260ED 09:A0DD: 00        .byte $00, $00   ; 01 
- D 1 - I - 0x0260EF 09:A0DF: 00        .byte $00, $00   ; 02 
- D 1 - I - 0x0260F1 09:A0E1: 00        .byte $00, $00   ; 03 
- D 1 - I - 0x0260F3 09:A0E3: 00        .byte $00, $00   ; 04 
- D 1 - I - 0x0260F5 09:A0E5: 00        .byte $00, $F0   ; 05 
- D 1 - I - 0x0260F7 09:A0E7: 00        .byte $00, $F9   ; 06 
- D 1 - I - 0x0260F9 09:A0E9: 00        .byte $00, $F9   ; 07 



ofs_043_A0EB_2E:
C - - J - - 0x0260FB 09:A0EB: A0 01     LDY #$01
C - - - - - 0x0260FD 09:A0ED: B1 02     LDA (ram_0002_t001_data),Y
C - - - - - 0x0260FF 09:A0EF: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x026102 09:A0F2: 4C FE A0  JMP loc_A0FE



ofs_043_A0F5_2F:
C - - J - - 0x026105 09:A0F5: 20 3B A1  JSR sub_A13B_generate_random_number
C - - - - - 0x026108 09:A0F8: 18        CLC
C - - - - - 0x026109 09:A0F9: 69 01     ADC #$01
C - - - - - 0x02610B 09:A0FB: 9D D8 05  STA ram_05D8_obj,X
loc_A0FE:   ; bzk optimize
C D 1 - - - 0x02610E 09:A0FE: 4C 66 9D  JMP loc_9D66



ofs_043_A101_30:
C - - J - - 0x026111 09:A101: A9 00     LDA #$00
C - - - - - 0x026113 09:A103: 85 00     STA ram_0000_temp
C - - - - - 0x026115 09:A105: A0 01     LDY #$01
bra_A107_loop:
C - - - - - 0x026117 09:A107: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x02611A 09:A10A: C9 1A     CMP #$1A
C - - - - - 0x02611C 09:A10C: D0 02     BNE bra_A110
C - - - - - 0x02611E 09:A10E: E6 00     INC ram_0000_temp
bra_A110:
C - - - - - 0x026120 09:A110: C8        INY
C - - - - - 0x026121 09:A111: C0 0D     CPY #$0D
C - - - - - 0x026123 09:A113: D0 F2     BNE bra_A107_loop
C - - - - - 0x026125 09:A115: A4 00     LDY ram_0000_temp
C - - - - - 0x026127 09:A117: 88        DEY
C - - - - - 0x026128 09:A118: D0 09     BNE bra_A123
C - - - - - 0x02612A 09:A11A: A9 88     LDA #con_obj_flag_08 + con_obj_flag_not_visible
C - - - - - 0x02612C 09:A11C: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02612F 09:A11F: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x026132 09:A122: 60        RTS
bra_A123:
C - - - - - 0x026133 09:A123: 4C 3A 87  JMP loc_873A_clear_object_data



ofs_043_A126_31:
C - - J - - 0x026136 09:A126: A9 02     LDA #$02
C - - - - - 0x026138 09:A128: 8D F3 07  STA ram_07F3
C - - - - - 0x02613B 09:A12B: A9 00     LDA #$00
C - - - - - 0x02613D 09:A12D: 20 F4 87  JSR sub_87F4
C - - - - - 0x026140 09:A130: 90 03     BCC bra_A135
C - - - - - 0x026142 09:A132: 4C 3A 87  JMP loc_873A_clear_object_data
bra_A135:
- - - - - - 0x026145 09:A135: A9 01     LDA #$01
- - - - - - 0x026147 09:A137: 8D F3 07  STA ram_07F3
- - - - - - 0x02614A 09:A13A: 60        RTS



sub_A13B_generate_random_number:
ofs_044_0x02614B_00_generate_random_number:
; bzk optimize, same code as 0x009AFC, move to bank FF
C - - - - - 0x02614B 09:A13B: A5 1F     LDA ram_random
C - - - - - 0x02614D 09:A13D: D0 02     BNE bra_A141
C - - - - - 0x02614F 09:A13F: A9 65     LDA #$65
bra_A141:
C - - - - - 0x026151 09:A141: 0A        ASL
C - - - - - 0x026152 09:A142: 85 00     STA ram_0000_temp
C - - - - - 0x026154 09:A144: A5 1F     LDA ram_random
C - - - - - 0x026156 09:A146: 4A        LSR
C - - - - - 0x026157 09:A147: 18        CLC
C - - - - - 0x026158 09:A148: 65 00     ADC ram_0000_temp
C - - - - - 0x02615A 09:A14A: 85 1F     STA ram_random
C - - - - - 0x02615C 09:A14C: 29 0F     AND #$0F
C - - - - - 0x02615E 09:A14E: 60        RTS



ofs_042_A14F_01:
; first boss shield on the ground?
C - - J - - 0x02615F 09:A14F: A9 00     LDA #$00
C - - - - - 0x026161 09:A151: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x026164 09:A154: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026167 09:A157: D0 1F     BNE bra_A178
C - - - - - 0x026169 09:A159: A9 40     LDA #con_obj_flag_40
C - - - - - 0x02616B 09:A15B: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02616E 09:A15E: A9 01     LDA #$01    ; facing left
C - - - - - 0x026170 09:A160: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x026173 09:A163: A9 0C     LDA #$0C
C - - - - - 0x026175 09:A165: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x026178 09:A168: A9 10     LDA #con_obj_type_10
C - - - - - 0x02617A 09:A16A: A0 26     LDY #$26
C - - - - - 0x02617C 09:A16C: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x02617F 09:A16F: A5 78     LDA ram_0078_flag
C - - - - - 0x026181 09:A171: F0 1F     BEQ bra_A192_RTS
C - - - - - 0x026183 09:A173: A9 44     LDA #$44
C - - - - - 0x026185 09:A175: 4C 4F 86  JMP loc_864F
bra_A178:
C - - - - - 0x026188 09:A178: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x02618B 09:A17B: C9 08     CMP #$08
C - - - - - 0x02618D 09:A17D: D0 13     BNE bra_A192_RTS
C - - - - - 0x02618F 09:A17F: A9 00     LDA #$00
C - - - - - 0x026191 09:A181: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x026194 09:A184: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x026197 09:A187: 9D C1 05  STA ram_05C1_obj,X
loc_A18A:
sub_A18A:
C D 1 - - - 0x02619A 09:A18A: AD F3 07  LDA ram_07F3
C - - - - - 0x02619D 09:A18D: 29 7F     AND #$7F
C - - - - - 0x02619F 09:A18F: 8D F3 07  STA ram_07F3
bra_A192_RTS:
C - - - - - 0x0261A2 09:A192: 60        RTS



ofs_042_A193_22:
C - - J - - 0x0261A3 09:A193: A9 00     LDA #$00
C - - - - - 0x0261A5 09:A195: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x0261A8 09:A198: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0261AB 09:A19B: A9 C8     LDA #con_obj_flag_08 + con_obj_flag_40 + con_obj_flag_not_visible
C - - - - - 0x0261AD 09:A19D: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0261B0 09:A1A0: BC 1D 06  LDY ram_061D_obj,X
C - - - - - 0x0261B3 09:A1A3: B9 EF 05  LDA ram_05EF_obj,Y
C - - - - - 0x0261B6 09:A1A6: 29 7F     AND #$7F
C - - - - - 0x0261B8 09:A1A8: C9 0A     CMP #$0A
C - - - - - 0x0261BA 09:A1AA: D0 2F     BNE bra_A1DB
C - - - - - 0x0261BC 09:A1AC: B9 C1 05  LDA ram_05C1_obj,Y
C - - - - - 0x0261BF 09:A1AF: C9 06     CMP #$06
C - - - - - 0x0261C1 09:A1B1: D0 1F     BNE bra_A1D2
C - - - - - 0x0261C3 09:A1B3: A9 1C     LDA #$1C
C - - - - - 0x0261C5 09:A1B5: 85 00     STA ram_0000_temp
C - - - - - 0x0261C7 09:A1B7: B9 A8 04  LDA ram_obj_facing,Y
C - - - - - 0x0261CA 09:A1BA: F0 04     BEQ bra_A1C0_facing_right
C - - - - - 0x0261CC 09:A1BC: A9 E4     LDA #$E4
C - - - - - 0x0261CE 09:A1BE: 85 00     STA ram_0000_temp
bra_A1C0_facing_right:
C - - - - - 0x0261D0 09:A1C0: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x0261D3 09:A1C3: 18        CLC
C - - - - - 0x0261D4 09:A1C4: 65 00     ADC ram_0000_temp
C - - - - - 0x0261D6 09:A1C6: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0261D9 09:A1C9: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x0261DC 09:A1CC: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0261DF 09:A1CF: 4C DE A1  JMP loc_A1DE
bra_A1D2:
C - - - - - 0x0261E2 09:A1D2: A9 20     LDA #$20
C - - - - - 0x0261E4 09:A1D4: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0261E7 09:A1D7: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0261EA 09:A1DA: 60        RTS
bra_A1DB:
C - - - - - 0x0261EB 09:A1DB: 4C 3A 87  JMP loc_873A_clear_object_data



loc_A1DE:
sub_A1DE:
C D 1 - - - 0x0261EE 09:A1DE: AD F6 07  LDA ram_quest
C - - - - - 0x0261F1 09:A1E1: D0 0E     BNE bra_A1F1_2nd_quest
C - - - - - 0x0261F3 09:A1E3: A5 32     LDA ram_blk_hi
C - - - - - 0x0261F5 09:A1E5: F0 04     BEQ bra_A1EB
C - - - - - 0x0261F7 09:A1E7: A9 20     LDA #$20
C - - - - - 0x0261F9 09:A1E9: D0 02     BNE bra_A1ED    ; jmp
bra_A1EB:
C - - - - - 0x0261FB 09:A1EB: A9 10     LDA #$10
bra_A1ED:
C - - - - - 0x0261FD 09:A1ED: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x026200 09:A1F0: 60        RTS
bra_A1F1_2nd_quest:
C - - - - - 0x026201 09:A1F1: A9 30     LDA #$30
C - - - - - 0x026203 09:A1F3: D0 F8     BNE bra_A1ED    ; jmp



ofs_042_A1F5_01:
C - - J - - 0x026205 09:A1F5: 20 DE A1  JSR sub_A1DE
C - - - - - 0x026208 09:A1F8: AC F3 07  LDY ram_07F3
C - - - - - 0x02620B 09:A1FB: 88        DEY
C - - - - - 0x02620C 09:A1FC: D0 21     BNE bra_A21F
C - - - - - 0x02620E 09:A1FE: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026211 09:A201: C9 31     CMP #$31
C - - - - - 0x026213 09:A203: F0 14     BEQ bra_A219
C - - - - - 0x026215 09:A205: A9 10     LDA #$10    ; 1000
C - - - - - 0x026217 09:A207: 20 61 86  JSR sub_8661_add_points_to_score
C - - - - - 0x02621A 09:A20A: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02621D 09:A20D: A9 10     LDA #con_obj_type_10
C - - - - - 0x02621F 09:A20F: A0 03     LDY #$03
C - - - - - 0x026221 09:A211: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x026224 09:A214: A9 31     LDA #$31
C - - - - - 0x026226 09:A216: 4C 4F 86  JMP loc_864F
bra_A219:
C - - - - - 0x026229 09:A219: A9 00     LDA #$00
C - - - - - 0x02622B 09:A21B: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x02622E 09:A21E: 60        RTS
bra_A21F:
C - - - - - 0x02622F 09:A21F: A9 00     LDA #$00
C - - - - - 0x026231 09:A221: 20 F4 87  JSR sub_87F4
C - - - - - 0x026234 09:A224: A5 32     LDA ram_blk_hi
C - - - - - 0x026236 09:A226: F0 1E     BEQ bra_A246
C - - - - - 0x026238 09:A228: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x02623B 09:A22B: F0 19     BEQ bra_A246
C - - - - - 0x02623D 09:A22D: 20 0B 87  JSR sub_870B
C - - - - - 0x026240 09:A230: 90 14     BCC bra_A246
C - - - - - 0x026242 09:A232: 8A        TXA
C - - - - - 0x026243 09:A233: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x026246 09:A236: BD 8D 06  LDA ram_obj_068E,X
C - - - - - 0x026249 09:A239: 99 8D 06  STA ram_obj_068E,Y
C - - - - - 0x02624C 09:A23C: A9 80     LDA #$80
C - - - - - 0x02624E 09:A23E: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x026251 09:A241: A9 88     LDA #con_obj_flag_08 + con_obj_flag_not_visible
C - - - - - 0x026253 09:A243: 99 70 04  STA ram_obj_flags,Y
bra_A246:
C - - - - - 0x026256 09:A246: A5 32     LDA ram_blk_hi
C - - - - - 0x026258 09:A248: F0 02     BEQ bra_A24C
C - - - - - 0x02625A 09:A24A: A9 03     LDA #$03
bra_A24C:
C - - - - - 0x02625C 09:A24C: 85 00     STA ram_0000_temp
C - - - - - 0x02625E 09:A24E: BD 57 06  LDA ram_obj_0658,X
C - - - - - 0x026261 09:A251: 29 03     AND #$03
C - - - - - 0x026263 09:A253: D0 05     BNE bra_A25A
C - - - - - 0x026265 09:A255: A5 00     LDA ram_0000_temp
C - - - - - 0x026267 09:A257: 18        CLC
C - - - - - 0x026268 09:A258: 69 01     ADC #$01
bra_A25A:
C - - - - - 0x02626A 09:A25A: 20 E0 88  JSR sub_88E0
C - - - - - 0x02626D 09:A25D: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x026270 09:A260: 29 0F     AND #$0F
C - - - - - 0x026272 09:A262: C9 02     CMP #$02
C - - - - - 0x026274 09:A264: F0 0C     BEQ bra_A272
C - - - - - 0x026276 09:A266: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026279 09:A269: C9 0A     CMP #$0A
C - - - - - 0x02627B 09:A26B: D0 05     BNE bra_A272
C - - - - - 0x02627D 09:A26D: A9 00     LDA #$00
C - - - - - 0x02627F 09:A26F: 9D 69 06  STA ram_obj_066A,X
bra_A272:
C - - - - - 0x026282 09:A272: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x026285 09:A275: 10 0E     BPL bra_A285
C - - - - - 0x026287 09:A277: C9 FB     CMP #$FB
C - - - - - 0x026289 09:A279: 90 13     BCC bra_A28E
C - - - - - 0x02628B 09:A27B: 20 FD A2  JSR sub_A2FD
C - - - - - 0x02628E 09:A27E: A9 FA     LDA #$FA
C - - - - - 0x026290 09:A280: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x026293 09:A283: D0 09     BNE bra_A28E    ; jmp
bra_A285:
C - - - - - 0x026295 09:A285: C9 02     CMP #$02
C - - - - - 0x026297 09:A287: B0 05     BCS bra_A28E
- - - - - - 0x026299 09:A289: A9 02     LDA #$02
- - - - - - 0x02629B 09:A28B: 9D 38 04  STA ram_obj_pos_X_hi,X
bra_A28E:
C - - - - - 0x02629E 09:A28E: 20 08 86  JSR sub_8608
C - - - - - 0x0262A1 09:A291: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x0262A4 09:A294: D0 03     BNE bra_A299
C - - - - - 0x0262A6 09:A296: 4C 29 A3  JMP loc_A329
bra_A299:
C - - - - - 0x0262A9 09:A299: C9 01     CMP #$01
C - - - - - 0x0262AB 09:A29B: D0 49     BNE bra_A2E6
C - - - - - 0x0262AD 09:A29D: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0262B0 09:A2A0: C9 A8     CMP #$A8
C - - - - - 0x0262B2 09:A2A2: B0 14     BCS bra_A2B8
C - - - - - 0x0262B4 09:A2A4: A5 17     LDA ram_0017_temp
C - - - - - 0x0262B6 09:A2A6: F0 04     BEQ bra_A2AC
C - - - - - 0x0262B8 09:A2A8: A9 FC     LDA #$FC
C - - - - - 0x0262BA 09:A2AA: D0 02     BNE bra_A2AE    ; jmp
bra_A2AC:
C - - - - - 0x0262BC 09:A2AC: A9 04     LDA #$04
bra_A2AE:
C - - - - - 0x0262BE 09:A2AE: A0 1C     LDY #$1C
C - - - - - 0x0262C0 09:A2B0: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x0262C3 09:A2B3: D0 03     BNE bra_A2B8
C - - - - - 0x0262C5 09:A2B5: 4C 2A A4  JMP loc_A42A
bra_A2B8:
C - - - - - 0x0262C8 09:A2B8: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x0262CB 09:A2BB: F0 04     BEQ bra_A2C1_facing_right
C - - - - - 0x0262CD 09:A2BD: A9 F4     LDA #$F4
C - - - - - 0x0262CF 09:A2BF: D0 02     BNE bra_A2C3    ; jmp
bra_A2C1_facing_right:
C - - - - - 0x0262D1 09:A2C1: A9 0C     LDA #$0C
bra_A2C3:
C - - - - - 0x0262D3 09:A2C3: 85 00     STA ram_0000_temp
C - - - - - 0x0262D5 09:A2C5: A0 10     LDY #$10
C - - - - - 0x0262D7 09:A2C7: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x0262DA 09:A2CA: F0 09     BEQ bra_A2D5
C - - - - - 0x0262DC 09:A2CC: 20 F0 A2  JSR sub_A2F0
C - - - - - 0x0262DF 09:A2CF: 90 01     BCC bra_A2D2
C - - - - - 0x0262E1 09:A2D1: 60        RTS
bra_A2D2:
C - - - - - 0x0262E2 09:A2D2: 4C 35 A4  JMP loc_A435
bra_A2D5:
C - - - - - 0x0262E5 09:A2D5: A5 00     LDA ram_0000_temp
C - - - - - 0x0262E7 09:A2D7: A0 04     LDY #$04
C - - - - - 0x0262E9 09:A2D9: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x0262EC 09:A2DC: F0 11     BEQ bra_A2EF_RTS
C - - - - - 0x0262EE 09:A2DE: 20 F0 A2  JSR sub_A2F0
C - - - - - 0x0262F1 09:A2E1: B0 0C     BCS bra_A2EF_RTS
C - - - - - 0x0262F3 09:A2E3: 4C 3C A4  JMP loc_A43C
bra_A2E6:
C - - - - - 0x0262F6 09:A2E6: C9 0A     CMP #$0A
C - - - - - 0x0262F8 09:A2E8: F0 05     BEQ bra_A2EF_RTS
C - - - - - 0x0262FA 09:A2EA: A9 00     LDA #$00
C - - - - - 0x0262FC 09:A2EC: 9D 33 06  STA ram_obj_0634,X
bra_A2EF_RTS:
C - - - - - 0x0262FF 09:A2EF: 60        RTS



sub_A2F0:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x026300 09:A2F0: A5 32     LDA ram_blk_hi
C - - - - - 0x026302 09:A2F2: C9 07     CMP #$07
C - - - - - 0x026304 09:A2F4: D0 31     BNE bra_A327
C - - - - - 0x026306 09:A2F6: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x026309 09:A2F9: C9 30     CMP #$30
C - - - - - 0x02630B 09:A2FB: B0 2A     BCS bra_A327
sub_A2FD:
C - - - - - 0x02630D 09:A2FD: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x026310 09:A300: 49 01     EOR #$01
C - - - - - 0x026312 09:A302: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x026315 09:A305: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x026318 09:A308: 18        CLC
C - - - - - 0x026319 09:A309: 69 08     ADC #$08
C - - - - - 0x02631B 09:A30B: 29 0F     AND #$0F
C - - - - - 0x02631D 09:A30D: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x026320 09:A310: BD 09 05  LDA ram_obj_spd_X_lo,X
C - - - - - 0x026323 09:A313: 49 FF     EOR #$FF
C - - - - - 0x026325 09:A315: 18        CLC
C - - - - - 0x026326 09:A316: 69 01     ADC #< $0001
C - - - - - 0x026328 09:A318: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02632B 09:A31B: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x02632E 09:A31E: 49 FF     EOR #$FF
C - - - - - 0x026330 09:A320: 69 00     ADC #> $0001
C - - - - - 0x026332 09:A322: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x026335 09:A325: 38        SEC
C - - - - - 0x026336 09:A326: 60        RTS
bra_A327:
C - - - - - 0x026337 09:A327: 18        CLC
C - - - - - 0x026338 09:A328: 60        RTS



loc_A329:
C D 1 - - - 0x026339 09:A329: A5 17     LDA ram_0017_temp
C - - - - - 0x02633B 09:A32B: DD A8 04  CMP ram_obj_facing,X
C - - - - - 0x02633E 09:A32E: F0 03     BEQ bra_A333
C - - - - - 0x026340 09:A330: 4C C5 A3  JMP loc_A3C5
bra_A333:
C - - - - - 0x026343 09:A333: A5 00     LDA ram_0000_temp
C - - - - - 0x026345 09:A335: C9 50     CMP #$50
C - - - - - 0x026347 09:A337: 90 03     BCC bra_A33C
C - - - - - 0x026349 09:A339: 4C C5 A3  JMP loc_A3C5
bra_A33C:
C - - - - - 0x02634C 09:A33C: C9 30     CMP #$30
C - - - - - 0x02634E 09:A33E: 90 4A     BCC bra_A38A
C - - - - - 0x026350 09:A340: 38        SEC
C - - - - - 0x026351 09:A341: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x026354 09:A344: E9 08     SBC #$08
C - - - - - 0x026356 09:A346: FD 1C 04  SBC ram_obj_pos_Y_hi,X
C - - - - - 0x026359 09:A349: B0 05     BCS bra_A350
C - - - - - 0x02635B 09:A34B: 49 FF     EOR #$FF
C - - - - - 0x02635D 09:A34D: 18        CLC
C - - - - - 0x02635E 09:A34E: 69 01     ADC #$01
bra_A350:
C - - - - - 0x026360 09:A350: C9 08     CMP #$08
C - - - - - 0x026362 09:A352: 90 02     BCC bra_A356
C - - - - - 0x026364 09:A354: B0 6F     BCS bra_A3C5    ; jmp
bra_A356:
C - - - - - 0x026366 09:A356: A5 28     LDA ram_btn_hold
C - - - - - 0x026368 09:A358: 29 40     AND #con_btn_B
C - - - - - 0x02636A 09:A35A: D0 54     BNE bra_A3B0
C - - - - - 0x02636C 09:A35C: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02636F 09:A35F: D0 64     BNE bra_A3C5
C - - - - - 0x026371 09:A361: A9 22     LDA #$22
C - - - - - 0x026373 09:A363: 20 66 87  JSR sub_8766
C - - - - - 0x026376 09:A366: 90 09     BCC bra_A371
C - - - - - 0x026378 09:A368: 8A        TXA
C - - - - - 0x026379 09:A369: 99 1D 06  STA ram_061D_obj,Y
C - - - - - 0x02637C 09:A36C: A9 C8     LDA #con_obj_flag_08 + con_obj_flag_40 + con_obj_flag_not_visible
C - - - - - 0x02637E 09:A36E: 99 70 04  STA ram_obj_flags,Y
bra_A371:
C - - - - - 0x026381 09:A371: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x026384 09:A374: 29 7F     AND #$7F
C - - - - - 0x026386 09:A376: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x026389 09:A379: A9 01     LDA #$01
C - - - - - 0x02638B 09:A37B: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x02638E 09:A37E: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026390 09:A380: A0 01     LDY #$01
C - - - - - 0x026392 09:A382: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x026395 09:A385: A9 0A     LDA #$0A
C - - - - - 0x026397 09:A387: 4C 4F 86  JMP loc_864F
bra_A38A:
C - - - - - 0x02639A 09:A38A: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02639D 09:A38D: 29 80     AND #$80
C - - - - - 0x02639F 09:A38F: D0 34     BNE bra_A3C5
C - - - - - 0x0263A1 09:A391: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x0263A4 09:A394: 09 80     ORA #$80
C - - - - - 0x0263A6 09:A396: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x0263A9 09:A399: A5 17     LDA ram_0017_temp
C - - - - - 0x0263AB 09:A39B: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x0263AE 09:A39E: 20 43 86  JSR sub_8643
C - - - - - 0x0263B1 09:A3A1: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x0263B4 09:A3A4: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x0263B6 09:A3A6: A0 00     LDY #$00
C - - - - - 0x0263B8 09:A3A8: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x0263BB 09:A3AB: A9 0C     LDA #$0C
C - - - - - 0x0263BD 09:A3AD: 4C 4F 86  JMP loc_864F
bra_A3B0:
C - - - - - 0x0263C0 09:A3B0: A5 32     LDA ram_blk_hi
C - - - - - 0x0263C2 09:A3B2: F0 05     BEQ bra_A3B9
C - - - - - 0x0263C4 09:A3B4: A9 13     LDA #$13
C - - - - - 0x0263C6 09:A3B6: 9D 57 06  STA ram_obj_0658,X
bra_A3B9:
C - - - - - 0x0263C9 09:A3B9: A9 10     LDA #con_obj_type_10
C - - - - - 0x0263CB 09:A3BB: A0 4B     LDY #$4B
C - - - - - 0x0263CD 09:A3BD: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x0263D0 09:A3C0: A9 09     LDA #$09
C - - - - - 0x0263D2 09:A3C2: 4C 4F 86  JMP loc_864F
bra_A3C5:
loc_A3C5:
C D 1 - - - 0x0263D5 09:A3C5: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x0263D8 09:A3C8: 29 1F     AND #$1F
C - - - - - 0x0263DA 09:A3CA: C9 01     CMP #$01
C - - - - - 0x0263DC 09:A3CC: D0 3A     BNE bra_A408
C - - - - - 0x0263DE 09:A3CE: A5 32     LDA ram_blk_hi
C - - - - - 0x0263E0 09:A3D0: D0 1B     BNE bra_A3ED
C - - - - - 0x0263E2 09:A3D2: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0263E5 09:A3D5: C9 18     CMP #$18
C - - - - - 0x0263E7 09:A3D7: B0 2F     BCS bra_A408
C - - - - - 0x0263E9 09:A3D9: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0263EC 09:A3DC: C9 8C     CMP #$8C
C - - - - - 0x0263EE 09:A3DE: B0 2E     BCS bra_A40E
C - - - - - 0x0263F0 09:A3E0: A9 04     LDA #$04
C - - - - - 0x0263F2 09:A3E2: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x0263F5 09:A3E5: A9 00     LDA #$00    ; facing right
C - - - - - 0x0263F7 09:A3E7: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x0263FA 09:A3EA: 4C 3C A4  JMP loc_A43C
bra_A3ED:
C - - - - - 0x0263FD 09:A3ED: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x026400 09:A3F0: C9 E8     CMP #$E8
C - - - - - 0x026402 09:A3F2: 90 14     BCC bra_A408
C - - - - - 0x026404 09:A3F4: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x026407 09:A3F7: C9 8C     CMP #$8C
C - - - - - 0x026409 09:A3F9: B0 13     BCS bra_A40E
C - - - - - 0x02640B 09:A3FB: A9 0C     LDA #$0C
C - - - - - 0x02640D 09:A3FD: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x026410 09:A400: A9 01     LDA #$01    ; facing left
C - - - - - 0x026412 09:A402: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x026415 09:A405: 4C 3C A4  JMP loc_A43C
bra_A408:
C - - - - - 0x026418 09:A408: A5 1F     LDA ram_random
C - - - - - 0x02641A 09:A40A: C9 80     CMP #$80
C - - - - - 0x02641C 09:A40C: 90 11     BCC bra_A41F
bra_A40E:
C - - - - - 0x02641E 09:A40E: A5 00     LDA ram_0000_temp
C - - - - - 0x026420 09:A410: C9 08     CMP #$08
C - - - - - 0x026422 09:A412: 90 0B     BCC bra_A41F
C - - - - - 0x026424 09:A414: A5 17     LDA ram_0017_temp
C - - - - - 0x026426 09:A416: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x026429 09:A419: 20 43 86  JSR sub_8643
C - - - - - 0x02642C 09:A41C: 9D 65 05  STA ram_obj_state,X
bra_A41F:
C - - - - - 0x02642F 09:A41F: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026431 09:A421: A0 0D     LDY #$0D
C - - - - - 0x026433 09:A423: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x026436 09:A426: A9 01     LDA #$01
C - - - - - 0x026438 09:A428: D0 17     BNE bra_A441    ; jmp



loc_A42A:
C D 1 - - - 0x02643A 09:A42A: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x02643C 09:A42C: A0 04     LDY #$04
C - - - - - 0x02643E 09:A42E: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x026441 09:A431: A9 62     LDA #$62
C - - - - - 0x026443 09:A433: D0 0C     BNE bra_A441    ; jmp



loc_A435:
C D 1 - - - 0x026445 09:A435: 20 44 A4  JSR sub_A444
C - - - - - 0x026448 09:A438: A9 0B     LDA #$0B
C - - - - - 0x02644A 09:A43A: D0 05     BNE bra_A441    ; jmp



loc_A43C:
C D 1 - - - 0x02644C 09:A43C: 20 44 A4  JSR sub_A444
C - - - - - 0x02644F 09:A43F: A9 02     LDA #$02
bra_A441:
C - - - - - 0x026451 09:A441: 4C 4F 86  JMP loc_864F



sub_A444:
C - - - - - 0x026454 09:A444: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026456 09:A446: A0 04     LDY #$04
C - - - - - 0x026458 09:A448: 4C 6E EF  JMP loc_0x03EF7E



ofs_042_A44B_11:
C - - J - - 0x02645B 09:A44B: 20 B6 A4  JSR sub_A4B6
C - - - - - 0x02645E 09:A44E: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x026461 09:A451: D0 40     BNE bra_A493
C - - - - - 0x026463 09:A453: AD F3 07  LDA ram_07F3
C - - - - - 0x026466 09:A456: D0 3B     BNE bra_A493
C - - - - - 0x026468 09:A458: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x02646B 09:A45B: D0 11     BNE bra_A46E
C - - - - - 0x02646D 09:A45D: A9 87     LDA #$87
C - - - - - 0x02646F 09:A45F: 20 4F 86  JSR sub_864F
C - - - - - 0x026472 09:A462: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026474 09:A464: A0 05     LDY #$05
C - - - - - 0x026476 09:A466: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x026479 09:A469: A9 40     LDA #con_obj_flag_40
C - - - - - 0x02647B 09:A46B: 9D 70 04  STA ram_obj_flags,X
bra_A46E:
C - - - - - 0x02647E 09:A46E: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x026481 09:A471: C9 FC     CMP #$FC
C - - - - - 0x026483 09:A473: 90 02     BCC bra_A477_not_overflow
C - - - - - 0x026485 09:A475: A9 FB     LDA #$FB
bra_A477_not_overflow:
C - - - - - 0x026487 09:A477: C9 04     CMP #$04
C - - - - - 0x026489 09:A479: B0 02     BCS bra_A47D_not_underflow
C - - - - - 0x02648B 09:A47B: A9 04     LDA #$04
bra_A47D_not_underflow:
C - - - - - 0x02648D 09:A47D: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x026490 09:A480: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x026493 09:A483: C9 F8     CMP #$F8
C - - - - - 0x026495 09:A485: 90 02     BCC bra_A489_not_overflow
- - - - - - 0x026497 09:A487: A9 F7     LDA #$F7
bra_A489_not_overflow:
C - - - - - 0x026499 09:A489: C9 40     CMP #$40
C - - - - - 0x02649B 09:A48B: B0 02     BCS bra_A48F_not_underflow
- - - - - - 0x02649D 09:A48D: A9 40     LDA #$40
bra_A48F_not_underflow:
C - - - - - 0x02649F 09:A48F: 9D 1C 04  STA ram_obj_pos_Y_hi,X
bra_A492_RTS:
C - - - - - 0x0264A2 09:A492: 60        RTS
bra_A493:
C - - - - - 0x0264A3 09:A493: A9 00     LDA #$00
C - - - - - 0x0264A5 09:A495: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0264A8 09:A498: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x0264AB 09:A49B: B9 06 06  LDA ram_obj_config,Y
C - - - - - 0x0264AE 09:A49E: F0 0A     BEQ bra_A4AA
C - - - - - 0x0264B0 09:A4A0: 38        SEC
C - - - - - 0x0264B1 09:A4A1: E9 01     SBC #$01
C - - - - - 0x0264B3 09:A4A3: B0 02     BCS bra_A4A7_not_underflow
- - - - - - 0x0264B5 09:A4A5: A9 00     LDA #$00
bra_A4A7_not_underflow:
C - - - - - 0x0264B7 09:A4A7: 99 06 06  STA ram_obj_config,Y
bra_A4AA:
C - - - - - 0x0264BA 09:A4AA: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x0264BD 09:A4AD: C9 32     CMP #$32
C - - - - - 0x0264BF 09:A4AF: F0 E1     BEQ bra_A492_RTS
C - - - - - 0x0264C1 09:A4B1: A9 32     LDA #$32
C - - - - - 0x0264C3 09:A4B3: 4C 4F 86  JMP loc_864F



sub_A4B6:
C - - - - - 0x0264C6 09:A4B6: A9 20     LDA #$20
C - - - - - 0x0264C8 09:A4B8: AC F6 07  LDY ram_quest
C - - - - - 0x0264CB 09:A4BB: F0 02     BEQ bra_A4BF_1st_quest
- - - - - - 0x0264CD 09:A4BD: A9 30     LDA #$30
bra_A4BF_1st_quest:
C - - - - - 0x0264CF 09:A4BF: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0264D2 09:A4C2: 60        RTS



sub_A4C3:
C - - - - - 0x0264D3 09:A4C3: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x0264D6 09:A4C6: 29 7F     AND #$7F
C - - - - - 0x0264D8 09:A4C8: 60        RTS



ofs_042_A4C9_02:
C - - J - - 0x0264D9 09:A4C9: A5 78     LDA ram_0078_flag
C - - - - - 0x0264DB 09:A4CB: F0 0D     BEQ bra_A4DA
C - - - - - 0x0264DD 09:A4CD: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x0264E0 09:A4D0: C9 80     CMP #$80
C - - - - - 0x0264E2 09:A4D2: B0 1E     BCS bra_A4F2
C - - - - - 0x0264E4 09:A4D4: FE D8 05  INC ram_05D8_obj,X
C - - - - - 0x0264E7 09:A4D7: 4C E7 A4  JMP loc_A4E7
bra_A4DA:
C - - - - - 0x0264EA 09:A4DA: 20 EE 85  JSR sub_85EE
C - - - - - 0x0264ED 09:A4DD: 20 E7 A4  JSR sub_A4E7
C - - - - - 0x0264F0 09:A4E0: A9 10     LDA #con_obj_type_10
C - - - - - 0x0264F2 09:A4E2: A0 06     LDY #$06
C - - - - - 0x0264F4 09:A4E4: 4C 6E EF  JMP loc_0x03EF7E



loc_A4E7:
sub_A4E7:
C D 1 - - - 0x0264F7 09:A4E7: A9 01     LDA #$01    ; facing left
C - - - - - 0x0264F9 09:A4E9: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x0264FC 09:A4EC: A9 0C     LDA #$0C
C - - - - - 0x0264FE 09:A4EE: 9D 65 05  STA ram_obj_state,X
bra_A4F1_RTS:
C - - - - - 0x026501 09:A4F1: 60        RTS



bra_A4F2:
C - - - - - 0x026502 09:A4F2: 20 00 A5  JSR sub_A500
C - - - - - 0x026505 09:A4F5: A9 00     LDA #$00
C - - - - - 0x026507 09:A4F7: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x02650A 09:A4FA: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x02650D 09:A4FD: 4C 8A A1  JMP loc_A18A



sub_A500:
ofs_044_0x026510_10:
C - - - - - 0x026510 09:A500: A9 02     LDA #$02
C - - - - - 0x026512 09:A502: 85 12     STA ram_0012_temp
C - - - - - 0x026514 09:A504: A9 1F     LDA #$1F
C - - - - - 0x026516 09:A506: 85 13     STA ram_0013_temp
bra_A508_loop:
C - - - - - 0x026518 09:A508: A5 13     LDA ram_0013_temp
C - - - - - 0x02651A 09:A50A: 20 66 87  JSR sub_8766
C - - - - - 0x02651D 09:A50D: 90 E2     BCC bra_A4F1_RTS
C - - - - - 0x02651F 09:A50F: A5 12     LDA ram_0012_temp
C - - - - - 0x026521 09:A511: 99 1D 06  STA ram_061D_obj,Y
C - - - - - 0x026524 09:A514: A9 C8     LDA #con_obj_flag_08 + con_obj_flag_40 + con_obj_flag_not_visible
C - - - - - 0x026526 09:A516: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x026529 09:A519: 8A        TXA
C - - - - - 0x02652A 09:A51A: 99 33 06  STA ram_obj_0634,Y
C - - - - - 0x02652D 09:A51D: A9 40     LDA #$40
C - - - - - 0x02652F 09:A51F: 99 7B 06  STA ram_obj_hp,Y
C - - - - - 0x026532 09:A522: E6 13     INC ram_0013_temp
C - - - - - 0x026534 09:A524: C6 12     DEC ram_0012_temp
C - - - - - 0x026536 09:A526: D0 E0     BNE bra_A508_loop
C - - - - - 0x026538 09:A528: A5 12     LDA ram_0012_temp
C - - - - - 0x02653A 09:A52A: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02653D 09:A52D: 4C E7 A4  JMP loc_A4E7



ofs_042_A530_1F:
C - - J - - 0x026540 09:A530: AD F3 07  LDA ram_07F3
C - - - - - 0x026543 09:A533: F0 03     BEQ bra_A538
C - - - - - 0x026545 09:A535: 4C DC A5  JMP loc_A5DC
bra_A538:
C - - - - - 0x026548 09:A538: A9 00     LDA #$00
C - - - - - 0x02654A 09:A53A: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x02654D 09:A53D: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x026550 09:A540: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x026553 09:A543: B9 EF 05  LDA ram_05EF_obj,Y
C - - - - - 0x026556 09:A546: 29 7F     AND #$7F
C - - - - - 0x026558 09:A548: C9 0E     CMP #$0E
C - - - - - 0x02655A 09:A54A: D0 2F     BNE bra_A57B
C - - - - - 0x02655C 09:A54C: B9 C1 05  LDA ram_05C1_obj,Y
C - - - - - 0x02655F 09:A54F: C9 05     CMP #$05
C - - - - - 0x026561 09:A551: 90 28     BCC bra_A57B
C - - - - - 0x026563 09:A553: A9 30     LDA #$30
C - - - - - 0x026565 09:A555: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x026568 09:A558: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x02656B 09:A55B: A9 10     LDA #$10
C - - - - - 0x02656D 09:A55D: 85 00     STA ram_0000_temp
C - - - - - 0x02656F 09:A55F: B9 A8 04  LDA ram_obj_facing,Y
C - - - - - 0x026572 09:A562: F0 04     BEQ bra_A568_facing_right
C - - - - - 0x026574 09:A564: A9 F0     LDA #$F0
C - - - - - 0x026576 09:A566: 85 00     STA ram_0000_temp
bra_A568_facing_right:
C - - - - - 0x026578 09:A568: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x02657B 09:A56B: 18        CLC
C - - - - - 0x02657C 09:A56C: 65 00     ADC ram_0000_temp
C - - - - - 0x02657E 09:A56E: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x026581 09:A571: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x026584 09:A574: 18        CLC
C - - - - - 0x026585 09:A575: 69 10     ADC #$10
C - - - - - 0x026587 09:A577: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02658A 09:A57A: 60        RTS
bra_A57B:
C - - - - - 0x02658B 09:A57B: A9 00     LDA #$00
C - - - - - 0x02658D 09:A57D: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x026590 09:A580: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x026593 09:A583: 60        RTS



ofs_042_A584_20:
C - - J - - 0x026594 09:A584: AD F3 07  LDA ram_07F3
C - - - - - 0x026597 09:A587: D0 53     BNE bra_A5DC
C - - - - - 0x026599 09:A589: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x02659C 09:A58C: B9 EF 05  LDA ram_05EF_obj,Y
C - - - - - 0x02659F 09:A58F: 29 7F     AND #$7F
C - - - - - 0x0265A1 09:A591: C9 2F     CMP #$2F
C - - - - - 0x0265A3 09:A593: F0 46     BEQ bra_A5DB_RTS
C - - - - - 0x0265A5 09:A595: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x0265A8 09:A598: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0265AB 09:A59B: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x0265AE 09:A59E: 38        SEC
C - - - - - 0x0265AF 09:A59F: E9 18     SBC #$18
C - - - - - 0x0265B1 09:A5A1: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0265B4 09:A5A4: 20 DE A1  JSR sub_A1DE
C - - - - - 0x0265B7 09:A5A7: A5 3D     LDA ram_hp_boss
C - - - - - 0x0265B9 09:A5A9: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x0265BC 09:A5AC: A9 02     LDA #$02
C - - - - - 0x0265BE 09:A5AE: 20 E0 88  JSR sub_88E0
C - - - - - 0x0265C1 09:A5B1: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x0265C4 09:A5B4: BD 7B 06  LDA ram_obj_hp,X
C - - - - - 0x0265C7 09:A5B7: 99 7B 06  STA ram_obj_hp,Y
C - - - - - 0x0265CA 09:A5BA: A9 00     LDA #$00
C - - - - - 0x0265CC 09:A5BC: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x0265CF 09:A5BF: B9 69 06  LDA ram_obj_066A,Y
C - - - - - 0x0265D2 09:A5C2: 29 0F     AND #$0F
C - - - - - 0x0265D4 09:A5C4: C9 02     CMP #$02
C - - - - - 0x0265D6 09:A5C6: F0 0E     BEQ bra_A5D6
C - - - - - 0x0265D8 09:A5C8: B9 EF 05  LDA ram_05EF_obj,Y
C - - - - - 0x0265DB 09:A5CB: 29 7F     AND #$7F
C - - - - - 0x0265DD 09:A5CD: C9 0D     CMP #$0D
C - - - - - 0x0265DF 09:A5CF: D0 05     BNE bra_A5D6
C - - - - - 0x0265E1 09:A5D1: A9 00     LDA #$00
C - - - - - 0x0265E3 09:A5D3: 9D 69 06  STA ram_obj_066A,X
bra_A5D6:
C - - - - - 0x0265E6 09:A5D6: A9 C8     LDA #con_obj_flag_08 + con_obj_flag_40 + con_obj_flag_not_visible
C - - - - - 0x0265E8 09:A5D8: 9D 70 04  STA ram_obj_flags,X
bra_A5DB_RTS:
C - - - - - 0x0265EB 09:A5DB: 60        RTS
bra_A5DC:
loc_A5DC:   ; bzk optimize
C D 1 - - - 0x0265EC 09:A5DC: 4C 3A 87  JMP loc_873A_clear_object_data



ofs_042_A5DF_02:
C - - J - - 0x0265EF 09:A5DF: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x0265F2 09:A5E2: C9 2F     CMP #$2F
C - - - - - 0x0265F4 09:A5E4: F0 7F     BEQ bra_A665
C - - - - - 0x0265F6 09:A5E6: A9 00     LDA #$00
C - - - - - 0x0265F8 09:A5E8: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x0265FB 09:A5EB: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x0265FE 09:A5EE: F0 46     BEQ bra_A636
- - - - - - 0x026600 09:A5F0: A9 20     LDA #con_obj_flag_20
- - - - - - 0x026602 09:A5F2: 9D 70 04  STA ram_obj_flags,X
- - - - - - 0x026605 09:A5F5: BD 06 06  LDA ram_obj_config,X
- - - - - - 0x026608 09:A5F8: 29 04     AND #$04
- - - - - - 0x02660A 09:A5FA: F0 04     BEQ bra_A600
- - - - - - 0x02660C 09:A5FC: A9 00     LDA #$00
- - - - - - 0x02660E 09:A5FE: F0 02     BEQ bra_A602    ; jmp
bra_A600:
- - - - - - 0x026610 09:A600: A9 02     LDA #$02
bra_A602:
- - - - - - 0x026612 09:A602: 9D 54 04  STA ram_0454_obj,X
- - - - - - 0x026615 09:A605: DE 06 06  DEC ram_obj_config,X
- - - - - - 0x026618 09:A608: D0 2B     BNE bra_A635_RTS
- - - - - - 0x02661A 09:A60A: BD 7B 06  LDA ram_obj_hp,X
- - - - - - 0x02661D 09:A60D: 38        SEC
- - - - - - 0x02661E 09:A60E: E9 10     SBC #$10
- - - - - - 0x026620 09:A610: B0 02     BCS bra_A614_not_underflow
- - - - - - 0x026622 09:A612: A9 00     LDA #$00
bra_A614_not_underflow:
- - - - - - 0x026624 09:A614: 9D 7B 06  STA ram_obj_hp,X
- - - - - - 0x026627 09:A617: 85 3D     STA ram_hp_boss
- - - - - - 0x026629 09:A619: A0 0D     LDY #$0D
bra_A61B_loop:
- - - - - - 0x02662B 09:A61B: B9 4E 05  LDA ram_obj_id,Y
- - - - - - 0x02662E 09:A61E: C9 02     CMP #$02
- - - - - - 0x026630 09:A620: D0 10     BNE bra_A632
- - - - - - 0x026632 09:A622: BD 1D 06  LDA ram_061D_obj,X
- - - - - - 0x026635 09:A625: C9 01     CMP #$01
- - - - - - 0x026637 09:A627: D0 09     BNE bra_A632
- - - - - - 0x026639 09:A629: BD 7B 06  LDA ram_obj_hp,X
- - - - - - 0x02663C 09:A62C: 99 7B 06  STA ram_obj_hp,Y
- - - - - - 0x02663F 09:A62F: 4C 36 A6  JMP loc_A636
bra_A632:
- - - - - - 0x026642 09:A632: 88        DEY
- - - - - - 0x026643 09:A633: D0 E6     BNE bra_A61B_loop
bra_A635_RTS:
- - - - - - 0x026645 09:A635: 60        RTS
bra_A636:
loc_A636:
C - - - - - 0x026646 09:A636: A9 40     LDA #con_obj_flag_40
C - - - - - 0x026648 09:A638: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02664B 09:A63B: AD EC 07  LDA ram_07EC
C - - - - - 0x02664E 09:A63E: F0 25     BEQ bra_A665
C - - - - - 0x026650 09:A640: AD F6 05  LDA ram_05EF_obj + $07
C - - - - - 0x026653 09:A643: C9 91     CMP #$91
C - - - - - 0x026655 09:A645: F0 1E     BEQ bra_A665
C - - - - - 0x026657 09:A647: AD C8 05  LDA ram_05C1_obj + $07
C - - - - - 0x02665A 09:A64A: C9 05     CMP #$05
C - - - - - 0x02665C 09:A64C: 90 17     BCC bra_A665
- - - - - - 0x02665E 09:A64E: AD 3F 04  LDA ram_obj_pos_X_hi + $07
- - - - - - 0x026661 09:A651: 38        SEC
- - - - - - 0x026662 09:A652: FD 38 04  SBC ram_obj_pos_X_hi,X
- - - - - - 0x026665 09:A655: B0 05     BCS bra_A65C
- - - - - - 0x026667 09:A657: 49 FF     EOR #$FF
- - - - - - 0x026669 09:A659: 18        CLC
- - - - - - 0x02666A 09:A65A: 69 01     ADC #$01
bra_A65C:
- - - - - - 0x02666C 09:A65C: C9 10     CMP #$10
- - - - - - 0x02666E 09:A65E: B0 05     BCS bra_A665
- - - - - - 0x026670 09:A660: A9 40     LDA #$40
- - - - - - 0x026672 09:A662: 9D 06 06  STA ram_obj_config,X
bra_A665:
C - - - - - 0x026675 09:A665: AD F3 07  LDA ram_07F3
C - - - - - 0x026678 09:A668: C9 01     CMP #$01
C - - - - - 0x02667A 09:A66A: F0 08     BEQ bra_A674
C - - - - - 0x02667C 09:A66C: A9 30     LDA #$30
C - - - - - 0x02667E 09:A66E: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x026681 09:A671: 4C FD A6  JMP loc_A6FD
bra_A674:
C - - - - - 0x026684 09:A674: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026687 09:A677: C9 2F     CMP #$2F
C - - - - - 0x026689 09:A679: F0 4A     BEQ bra_A6C5
C - - - - - 0x02668B 09:A67B: A5 32     LDA ram_blk_hi
C - - - - - 0x02668D 09:A67D: C9 02     CMP #$02
C - - - - - 0x02668F 09:A67F: F0 29     BEQ bra_A6AA
C - - - - - 0x026691 09:A681: A0 01     LDY #$01
C - - - - - 0x026693 09:A683: 86 00     STX ram_0000_temp
bra_A685_loop:
C - - - - - 0x026695 09:A685: C4 00     CPY ram_0000_temp
C - - - - - 0x026697 09:A687: F0 1A     BEQ bra_A6A3
C - - - - - 0x026699 09:A689: A9 00     LDA #$00
C - - - - - 0x02669B 09:A68B: 99 4E 05  STA ram_obj_id,Y
C - - - - - 0x02669E 09:A68E: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x0266A1 09:A691: 99 00 04  STA ram_obj_anim_id,Y
C - - - - - 0x0266A4 09:A694: 99 8C 04  STA ram_obj_type,Y  ; con_obj_type_00
C - - - - - 0x0266A7 09:A697: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x0266AA 09:A69A: 99 1D 06  STA ram_061D_obj,Y
C - - - - - 0x0266AD 09:A69D: 99 33 06  STA ram_obj_0634,Y
C - - - - - 0x0266B0 09:A6A0: 99 45 06  STA ram_obj_0646,Y
bra_A6A3:
C - - - - - 0x0266B3 09:A6A3: C8        INY
C - - - - - 0x0266B4 09:A6A4: C0 0D     CPY #$0D
C - - - - - 0x0266B6 09:A6A6: D0 DD     BNE bra_A685_loop
C - - - - - 0x0266B8 09:A6A8: F0 07     BEQ bra_A6B1    ; jmp
bra_A6AA:
C - - - - - 0x0266BA 09:A6AA: 8A        TXA
C - - - - - 0x0266BB 09:A6AB: 48        PHA
C - - - - - 0x0266BC 09:A6AC: 20 04 9D  JSR sub_9D04
C - - - - - 0x0266BF 09:A6AF: 68        PLA
C - - - - - 0x0266C0 09:A6B0: AA        TAX
bra_A6B1:
C - - - - - 0x0266C1 09:A6B1: A9 30     LDA #$30    ; 3000
C - - - - - 0x0266C3 09:A6B3: 20 61 86  JSR sub_8661_add_points_to_score
C - - - - - 0x0266C6 09:A6B6: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x0266C9 09:A6B9: A9 10     LDA #con_obj_type_10
C - - - - - 0x0266CB 09:A6BB: A0 06     LDY #$06
C - - - - - 0x0266CD 09:A6BD: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x0266D0 09:A6C0: A9 2F     LDA #$2F
C - - - - - 0x0266D2 09:A6C2: 4C 4F 86  JMP loc_864F
bra_A6C5:
C - - - - - 0x0266D5 09:A6C5: A5 32     LDA ram_blk_hi
C - - - - - 0x0266D7 09:A6C7: C9 02     CMP #$02
C - - - - - 0x0266D9 09:A6C9: F0 31     BEQ bra_A6FC_RTS
C - - - - - 0x0266DB 09:A6CB: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x0266DE 09:A6CE: C9 09     CMP #$09
C - - - - - 0x0266E0 09:A6D0: D0 2A     BNE bra_A6FC_RTS
C - - - - - 0x0266E2 09:A6D2: EE EE 07  INC ram_07EE
C - - - - - 0x0266E5 09:A6D5: AD F3 07  LDA ram_07F3
C - - - - - 0x0266E8 09:A6D8: 09 81     ORA #$81
C - - - - - 0x0266EA 09:A6DA: 8D F3 07  STA ram_07F3
C - - - - - 0x0266ED 09:A6DD: A9 00     LDA #$00
C - - - - - 0x0266EF 09:A6DF: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x0266F2 09:A6E2: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x0266F5 09:A6E5: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x0266F8 09:A6E8: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x0266FB 09:A6EB: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x0266FE 09:A6EE: A9 09     LDA #$09
C - - - - - 0x026700 09:A6F0: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x026703 09:A6F3: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x026706 09:A6F6: 38        SEC
C - - - - - 0x026707 09:A6F7: E9 10     SBC #$10
C - - - - - 0x026709 09:A6F9: 9D 1C 04  STA ram_obj_pos_Y_hi,X
bra_A6FC_RTS:
C - - - - - 0x02670C 09:A6FC: 60        RTS



loc_A6FD:
C D 1 - - - 0x02670D 09:A6FD: A9 00     LDA #$00
C - - - - - 0x02670F 09:A6FF: 20 F4 87  JSR sub_87F4
C - - - - - 0x026712 09:A702: AD F3 07  LDA ram_07F3
C - - - - - 0x026715 09:A705: 29 40     AND #$40
C - - - - - 0x026717 09:A707: F0 07     BEQ bra_A710
- - - - - - 0x026719 09:A709: A9 20     LDA #con_obj_flag_20
- - - - - - 0x02671B 09:A70B: 9D 70 04  STA ram_obj_flags,X
- - - - - - 0x02671E 09:A70E: D0 05     BNE bra_A715    ; jmp
bra_A710:
C - - - - - 0x026720 09:A710: A9 40     LDA #con_obj_flag_40
C - - - - - 0x026722 09:A712: 9D 70 04  STA ram_obj_flags,X
bra_A715:
C - - - - - 0x026725 09:A715: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x026728 09:A718: 29 0F     AND #$0F
C - - - - - 0x02672A 09:A71A: C9 02     CMP #$02
C - - - - - 0x02672C 09:A71C: F0 03     BEQ bra_A721
C - - - - - 0x02672E 09:A71E: 20 31 82  JSR sub_8231
bra_A721:
C - - - - - 0x026731 09:A721: 20 08 86  JSR sub_8608
C - - - - - 0x026734 09:A724: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026737 09:A727: C9 0E     CMP #$0E
C - - - - - 0x026739 09:A729: F0 27     BEQ bra_A752_RTS
C - - - - - 0x02673B 09:A72B: C9 10     CMP #$10
C - - - - - 0x02673D 09:A72D: F0 24     BEQ bra_A753
C - - - - - 0x02673F 09:A72F: A5 00     LDA ram_0000_temp
C - - - - - 0x026741 09:A731: C9 1A     CMP #$1A
C - - - - - 0x026743 09:A733: B0 1E     BCS bra_A753
C - - - - - 0x026745 09:A735: 20 F2 A7  JSR sub_A7F2
C - - - - - 0x026748 09:A738: C9 10     CMP #$10
C - - - - - 0x02674A 09:A73A: B0 17     BCS bra_A753
C - - - - - 0x02674C 09:A73C: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02674F 09:A73F: C5 17     CMP ram_0017_temp
C - - - - - 0x026751 09:A741: F0 03     BEQ bra_A746
C - - - - - 0x026753 09:A743: 20 E0 A7  JSR sub_A7E0
bra_A746:
C - - - - - 0x026756 09:A746: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026758 09:A748: A0 08     LDY #$08
C - - - - - 0x02675A 09:A74A: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x02675D 09:A74D: A9 0E     LDA #$0E
C - - - - - 0x02675F 09:A74F: 4C 4F 86  JMP loc_864F
bra_A752_RTS:
C - - - - - 0x026762 09:A752: 60        RTS
bra_A753:
C - - - - - 0x026763 09:A753: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026766 09:A756: F0 21     BEQ bra_A779
C - - - - - 0x026768 09:A758: BC 38 04  LDY ram_obj_pos_X_hi,X
C - - - - - 0x02676B 09:A75B: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x02676E 09:A75E: F0 06     BEQ bra_A766_facing_right
C - - - - - 0x026770 09:A760: C0 10     CPY #$10
C - - - - - 0x026772 09:A762: 90 06     BCC bra_A76A
C - - - - - 0x026774 09:A764: B0 13     BCS bra_A779    ; jmp
bra_A766_facing_right:
C - - - - - 0x026776 09:A766: C0 F0     CPY #$F0
C - - - - - 0x026778 09:A768: 90 0F     BCC bra_A779
bra_A76A:
C - - - - - 0x02677A 09:A76A: 20 E0 A7  JSR sub_A7E0
loc_A76D:
C D 1 - - - 0x02677D 09:A76D: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x02677F 09:A76F: A0 06     LDY #$06
C - - - - - 0x026781 09:A771: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x026784 09:A774: A9 0D     LDA #$0D
C - - - - - 0x026786 09:A776: 4C 4F 86  JMP loc_864F
bra_A779:
C - - - - - 0x026789 09:A779: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x02678C 09:A77C: C9 10     CMP #$10
C - - - - - 0x02678E 09:A77E: D0 01     BNE bra_A781
C - - - - - 0x026790 09:A780: 60        RTS
bra_A781:
C - - - - - 0x026791 09:A781: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x026794 09:A784: D0 19     BNE bra_A79F
C - - - - - 0x026796 09:A786: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x026799 09:A789: C9 18     CMP #$18
C - - - - - 0x02679B 09:A78B: 90 15     BCC bra_A7A2
C - - - - - 0x02679D 09:A78D: C9 E8     CMP #$E8
C - - - - - 0x02679F 09:A78F: B0 11     BCS bra_A7A2
C - - - - - 0x0267A1 09:A791: A9 48     LDA #$48
C - - - - - 0x0267A3 09:A793: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x0267A6 09:A796: 20 3B A1  JSR sub_A13B_generate_random_number
C - - - - - 0x0267A9 09:A799: C9 0A     CMP #$0A
C - - - - - 0x0267AB 09:A79B: B0 02     BCS bra_A79F
C - - - - - 0x0267AD 09:A79D: 90 28     BCC bra_A7C7    ; jmp
bra_A79F:
C - - - - - 0x0267AF 09:A79F: DE 33 06  DEC ram_obj_0634,X
bra_A7A2:
C - - - - - 0x0267B2 09:A7A2: A5 17     LDA ram_0017_temp
C - - - - - 0x0267B4 09:A7A4: DD A8 04  CMP ram_obj_facing,X
C - - - - - 0x0267B7 09:A7A7: F0 11     BEQ bra_A7BA
C - - - - - 0x0267B9 09:A7A9: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x0267BC 09:A7AC: D0 07     BNE bra_A7B5
C - - - - - 0x0267BE 09:A7AE: A5 1F     LDA ram_random
; * 04
C - - - - - 0x0267C0 09:A7B0: 0A        ASL
C - - - - - 0x0267C1 09:A7B1: 0A        ASL
C - - - - - 0x0267C2 09:A7B2: 9D 45 06  STA ram_obj_0646,X
bra_A7B5:
C - - - - - 0x0267C5 09:A7B5: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x0267C8 09:A7B8: F0 B0     BEQ bra_A76A
bra_A7BA:
C - - - - - 0x0267CA 09:A7BA: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x0267CD 09:A7BD: F0 04     BEQ bra_A7C3
C - - - - - 0x0267CF 09:A7BF: C9 0D     CMP #$0D
C - - - - - 0x0267D1 09:A7C1: F0 03     BEQ bra_A7C6_RTS
bra_A7C3:
C - - - - - 0x0267D3 09:A7C3: 4C 6D A7  JMP loc_A76D
bra_A7C6_RTS:
C - - - - - 0x0267D6 09:A7C6: 60        RTS
bra_A7C7:
C - - - - - 0x0267D7 09:A7C7: 20 F2 A7  JSR sub_A7F2
C - - - - - 0x0267DA 09:A7CA: C9 08     CMP #$08
C - - - - - 0x0267DC 09:A7CC: B0 D4     BCS bra_A7A2
C - - - - - 0x0267DE 09:A7CE: 20 43 86  JSR sub_8643
C - - - - - 0x0267E1 09:A7D1: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x0267E4 09:A7D4: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x0267E6 09:A7D6: A0 07     LDY #$07
C - - - - - 0x0267E8 09:A7D8: 20 6E EF  JSR sub_0x03EF7E
C - - - - - 0x0267EB 09:A7DB: A9 10     LDA #$10
C - - - - - 0x0267ED 09:A7DD: 4C 4F 86  JMP loc_864F



sub_A7E0:
C - - - - - 0x0267F0 09:A7E0: BD A8 04  LDA ram_obj_facing,X
C - - - - - 0x0267F3 09:A7E3: 49 01     EOR #$01
C - - - - - 0x0267F5 09:A7E5: 29 01     AND #$01
C - - - - - 0x0267F7 09:A7E7: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x0267FA 09:A7EA: A8        TAY
C - - - - - 0x0267FB 09:A7EB: B9 01 A8  LDA tbl_A801,Y
C - - - - - 0x0267FE 09:A7EE: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x026801 09:A7F1: 60        RTS



sub_A7F2:
C - - - - - 0x026802 09:A7F2: AD 1C 04  LDA ram_plr_pos_Y_hi
C - - - - - 0x026805 09:A7F5: 38        SEC
C - - - - - 0x026806 09:A7F6: FD 1C 04  SBC ram_obj_pos_Y_hi,X
C - - - - - 0x026809 09:A7F9: B0 05     BCS bra_A800_RTS
C - - - - - 0x02680B 09:A7FB: 49 FF     EOR #$FF
C - - - - - 0x02680D 09:A7FD: 18        CLC
C - - - - - 0x02680E 09:A7FE: 69 01     ADC #$01
bra_A800_RTS:
C - - - - - 0x026810 09:A800: 60        RTS



tbl_A801:
- D 1 - - - 0x026811 09:A801: 04        .byte $04   ; 00 facing right
- D 1 - - - 0x026812 09:A802: 0C        .byte $0C   ; 01 facing left



ofs_042_A803_12:
C - - J - - 0x026813 09:A803: AD F3 07  LDA ram_07F3
C - - - - - 0x026816 09:A806: 10 03     BPL bra_A80B
- - - - - - 0x026818 09:A808: 4C 3A 87  JMP loc_873A_clear_object_data
bra_A80B:
C - - - - - 0x02681B 09:A80B: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x02681E 09:A80E: A9 80     LDA #$80
C - - - - - 0x026820 09:A810: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x026823 09:A813: AD EC 07  LDA ram_07EC
C - - - - - 0x026826 09:A816: F0 10     BEQ bra_A828
C - - - - - 0x026828 09:A818: C9 02     CMP #$02
C - - - - - 0x02682A 09:A81A: 90 06     BCC bra_A822
C - - - - - 0x02682C 09:A81C: A9 58     LDA #con_obj_flag_08 + con_obj_flag_10 + con_obj_flag_40
C - - - - - 0x02682E 09:A81E: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x026831 09:A821: 60        RTS
bra_A822:
C - - - - - 0x026832 09:A822: A9 50     LDA #con_obj_flag_10 + con_obj_flag_40
C - - - - - 0x026834 09:A824: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x026837 09:A827: 60        RTS
bra_A828:
C - - - - - 0x026838 09:A828: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x02683B 09:A82B: 29 80     AND #$80
C - - - - - 0x02683D 09:A82D: D0 1C     BNE bra_A84B
C - - - - - 0x02683F 09:A82F: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x026842 09:A832: D0 13     BNE bra_A847
C - - - - - 0x026844 09:A834: A9 08     LDA #$08
C - - - - - 0x026846 09:A836: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x026849 09:A839: A9 50     LDA #con_obj_flag_10 + con_obj_flag_40
C - - - - - 0x02684B 09:A83B: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02684E 09:A83E: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x026851 09:A841: 09 80     ORA #$80
C - - - - - 0x026853 09:A843: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x026856 09:A846: 60        RTS
bra_A847:
C - - - - - 0x026857 09:A847: DE 33 06  DEC ram_obj_0634,X
C - - - - - 0x02685A 09:A84A: 60        RTS
bra_A84B:
C - - - - - 0x02685B 09:A84B: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x02685E 09:A84E: D0 F7     BNE bra_A847
C - - - - - 0x026860 09:A850: A9 58     LDA #con_obj_flag_08 + con_obj_flag_10 + con_obj_flag_40
C - - - - - 0x026862 09:A852: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x026865 09:A855: FE 45 06  INC ram_obj_0646,X
C - - - - - 0x026868 09:A858: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x02686B 09:A85B: 29 7F     AND #$7F
C - - - - - 0x02686D 09:A85D: A8        TAY
C - - - - - 0x02686E 09:A85E: C0 10     CPY #$10
C - - - - - 0x026870 09:A860: D0 02     BNE bra_A864
C - - - - - 0x026872 09:A862: A0 00     LDY #$00
bra_A864:
C - - - - - 0x026874 09:A864: 98        TYA
C - - - - - 0x026875 09:A865: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x026878 09:A868: B9 6F A8  LDA tbl_A86F,Y
C - - - - - 0x02687B 09:A86B: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x02687E 09:A86E: 60        RTS



tbl_A86F:
- D 1 - - - 0x02687F 09:A86F: 40        .byte $40   ; 00 
- D 1 - - - 0x026880 09:A870: 20        .byte $20   ; 01 
- D 1 - - - 0x026881 09:A871: 80        .byte $80   ; 02 
- D 1 - - - 0x026882 09:A872: 10        .byte $10   ; 03 
- D 1 - - - 0x026883 09:A873: 60        .byte $60   ; 04 
- D 1 - - - 0x026884 09:A874: 90        .byte $90   ; 05 
- D 1 - - - 0x026885 09:A875: 30        .byte $30   ; 06 
- D 1 - - - 0x026886 09:A876: C0        .byte $C0   ; 07 
- D 1 - - - 0x026887 09:A877: 08        .byte $08   ; 08 
- D 1 - - - 0x026888 09:A878: 70        .byte $70   ; 09 
- D 1 - - - 0x026889 09:A879: F0        .byte $F0   ; 0A 
- D 1 - - - 0x02688A 09:A87A: 50        .byte $50   ; 0B 
- D 1 - - - 0x02688B 09:A87B: D0        .byte $D0   ; 0C 
- D 1 - - - 0x02688C 09:A87C: A0        .byte $A0   ; 0D 
- D 1 - - - 0x02688D 09:A87D: E0        .byte $E0   ; 0E 
- D 1 - - - 0x02688E 09:A87E: B0        .byte $B0   ; 0F 



ofs_042_A87F_13:
C - - J - - 0x02688F 09:A87F: 20 DE A1  JSR sub_A1DE
C - - - - - 0x026892 09:A882: AD F3 07  LDA ram_07F3
C - - - - - 0x026895 09:A885: F0 03     BEQ bra_A88A
C - - - - - 0x026897 09:A887: 4C 3A 87  JMP loc_873A_clear_object_data
bra_A88A:
C - - - - - 0x02689A 09:A88A: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x02689D 09:A88D: C9 0F     CMP #$0F
C - - - - - 0x02689F 09:A88F: D0 01     BNE bra_A892
C - - - - - 0x0268A1 09:A891: 60        RTS
bra_A892:
C - - - - - 0x0268A2 09:A892: AD EC 07  LDA ram_07EC
C - - - - - 0x0268A5 09:A895: D0 3A     BNE bra_A8D1
C - - - - - 0x0268A7 09:A897: 20 1D A9  JSR sub_A91D
C - - - - - 0x0268AA 09:A89A: D0 21     BNE bra_A8BD
C - - - - - 0x0268AC 09:A89C: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x0268AF 09:A89F: 09 98     ORA #con_obj_flag_08 + con_obj_flag_10 + con_obj_flag_not_visible
C - - - - - 0x0268B1 09:A8A1: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0268B4 09:A8A4: A9 00     LDA #$00
C - - - - - 0x0268B6 09:A8A6: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x0268B9 09:A8A9: A9 80     LDA #$80
C - - - - - 0x0268BB 09:A8AB: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x0268BE 09:A8AE: A9 01     LDA #$01
C - - - - - 0x0268C0 09:A8B0: 8D EC 07  STA ram_07EC
C - - - - - 0x0268C3 09:A8B3: A9 D8     LDA #con_obj_flag_08 + con_obj_flag_10 + con_obj_flag_40 + con_obj_flag_not_visible
C - - - - - 0x0268C5 09:A8B5: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0268C8 09:A8B8: A9 0F     LDA #$0F
C - - - - - 0x0268CA 09:A8BA: 4C 4F 86  JMP loc_864F
bra_A8BD:
C - - - - - 0x0268CD 09:A8BD: DE 45 06  DEC ram_obj_0646,X
C - - - - - 0x0268D0 09:A8C0: 10 0E     BPL bra_A8D0_RTS
C - - - - - 0x0268D2 09:A8C2: BC 45 06  LDY ram_obj_0646,X
C - - - - - 0x0268D5 09:A8C5: C8        INY
C - - - - - 0x0268D6 09:A8C6: D0 08     BNE bra_A8D0_RTS
C - - - - - 0x0268D8 09:A8C8: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x0268DB 09:A8CB: F0 03     BEQ bra_A8D0_RTS
C - - - - - 0x0268DD 09:A8CD: DE D8 05  DEC ram_05D8_obj,X
bra_A8D0_RTS:
C - - - - - 0x0268E0 09:A8D0: 60        RTS
bra_A8D1:
C - - - - - 0x0268E1 09:A8D1: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x0268E4 09:A8D4: 8D EC 07  STA ram_07EC
C - - - - - 0x0268E7 09:A8D7: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x0268EA 09:A8DA: D0 1D     BNE bra_A8F9
C - - - - - 0x0268EC 09:A8DC: A9 00     LDA #$00
C - - - - - 0x0268EE 09:A8DE: 8D EC 07  STA ram_07EC
C - - - - - 0x0268F1 09:A8E1: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x0268F4 09:A8E4: A9 01     LDA #$01
C - - - - - 0x0268F6 09:A8E6: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x0268F9 09:A8E9: A9 D8     LDA #con_obj_flag_08 + con_obj_flag_10 + con_obj_flag_40 + con_obj_flag_not_visible
C - - - - - 0x0268FB 09:A8EB: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0268FE 09:A8EE: A9 48     LDA #$48
C - - - - - 0x026900 09:A8F0: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x026903 09:A8F3: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x026906 09:A8F6: 20 26 A9  JSR sub_A926
bra_A8F9:
C - - - - - 0x026909 09:A8F9: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x02690C 09:A8FC: C9 0F     CMP #$0F
C - - - - - 0x02690E 09:A8FE: D0 14     BNE bra_A914
- - - - - - 0x026910 09:A900: BD C1 05  LDA ram_05C1_obj,X
- - - - - - 0x026913 09:A903: C9 05     CMP #$05
- - - - - - 0x026915 09:A905: 90 0D     BCC bra_A914
- - - - - - 0x026917 09:A907: C9 08     CMP #$08
- - - - - - 0x026919 09:A909: B0 09     BCS bra_A914
- - - - - - 0x02691B 09:A90B: BD 70 04  LDA ram_obj_flags,X
- - - - - - 0x02691E 09:A90E: 29 EF     AND #con_obj_flag_10 ^ $FF
- - - - - - 0x026920 09:A910: 9D 70 04  STA ram_obj_flags,X
- - - - - - 0x026923 09:A913: 60        RTS
bra_A914:
C - - - - - 0x026924 09:A914: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x026927 09:A917: 09 10     ORA #con_obj_flag_10
C - - - - - 0x026929 09:A919: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02692C 09:A91C: 60        RTS



sub_A91D:
C - - - - - 0x02692D 09:A91D: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x026930 09:A920: D0 03     BNE bra_A925_RTS
C - - - - - 0x026932 09:A922: BD D8 05  LDA ram_05D8_obj,X
bra_A925_RTS:
C - - - - - 0x026935 09:A925: 60        RTS



sub_A926:
C - - - - - 0x026936 09:A926: A9 03     LDA #$03
C - - - - - 0x026938 09:A928: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x02693B 09:A92B: A9 80     LDA #$80
C - - - - - 0x02693D 09:A92D: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x026940 09:A930: 60        RTS



ofs_042_A931_04:
C - - J - - 0x026941 09:A931: A5 78     LDA ram_0078_flag
C - - - - - 0x026943 09:A933: F0 1E     BEQ bra_A953
C - - - - - 0x026945 09:A935: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026948 09:A938: D0 11     BNE bra_A94B
C - - - - - 0x02694A 09:A93A: DE D8 05  DEC ram_05D8_obj,X
C - - - - - 0x02694D 09:A93D: D0 1C     BNE bra_A95B
C - - - - - 0x02694F 09:A93F: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026951 09:A941: A0 20     LDY #$20
C - - - - - 0x026953 09:A943: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x026956 09:A946: A9 46     LDA #$46
C - - - - - 0x026958 09:A948: 4C 4F 86  JMP loc_864F
bra_A94B:
C - - - - - 0x02695B 09:A94B: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x02695E 09:A94E: C9 02     CMP #$02
C - - - - - 0x026960 09:A950: F0 1A     BEQ bra_A96C
C - - - - - 0x026962 09:A952: 60        RTS
bra_A953:
C - - - - - 0x026963 09:A953: 20 EE 85  JSR sub_85EE
C - - - - - 0x026966 09:A956: A9 80     LDA #$80
C - - - - - 0x026968 09:A958: 9D D8 05  STA ram_05D8_obj,X
bra_A95B:
C - - - - - 0x02696B 09:A95B: A9 00     LDA #$00    ; facing right
C - - - - - 0x02696D 09:A95D: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x026970 09:A960: A9 04     LDA #$04
C - - - - - 0x026972 09:A962: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x026975 09:A965: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026977 09:A967: A0 1F     LDY #$1F
C - - - - - 0x026979 09:A969: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation
bra_A96C:
C - - - - - 0x02697C 09:A96C: A9 40     LDA #con_obj_flag_40
C - - - - - 0x02697E 09:A96E: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x026981 09:A971: 20 8A A1  JSR sub_A18A
C - - - - - 0x026984 09:A974: A9 00     LDA #$00
C - - - - - 0x026986 09:A976: 9D D8 05  STA ram_05D8_obj,X
bra_A979:
C - - - - - 0x026989 09:A979: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02698C 09:A97C: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02698F 09:A97F: 60        RTS



sub_A980:
C - - - - - 0x026990 09:A980: A9 00     LDA #$00
C - - - - - 0x026992 09:A982: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x026995 09:A985: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x026998 09:A988: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
C - - - - - 0x02699B 09:A98B: F0 EC     BEQ bra_A979    ; jmp


; bzk garbage
; probably was supposed to be another copy
; of the same routine, like in 82 and 84 banks
- - - - - - 0x02699D 09:A98D: 9D 00 03  STA ram_ppu_buffer,X
- - - - - - 0x0269A0 09:A990: E8        INX
- - - - - - 0x0269A1 09:A991: 60        RTS



ofs_042_A992_04:
C - - J - - 0x0269A2 09:A992: A5 3D     LDA ram_hp_boss
C - - - - - 0x0269A4 09:A994: D0 03     BNE bra_A999
C - - - - - 0x0269A6 09:A996: 4C A5 E6  JMP loc_0x03E6B5
bra_A999:
C - - - - - 0x0269A9 09:A999: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x0269AC 09:A99C: C9 48     CMP #$48
C - - - - - 0x0269AE 09:A99E: D0 07     BNE bra_A9A7
C - - - - - 0x0269B0 09:A9A0: A9 00     LDA #$00
C - - - - - 0x0269B2 09:A9A2: 85 BA     STA ram_00BA
C - - - - - 0x0269B4 09:A9A4: 4C 56 AB  JMP loc_AB56
bra_A9A7:
C - - - - - 0x0269B7 09:A9A7: A9 FF     LDA #$FF
C - - - - - 0x0269B9 09:A9A9: 85 BA     STA ram_00BA
C - - - - - 0x0269BB 09:A9AB: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x0269BE 09:A9AE: D0 06     BNE bra_A9B6
C - - - - - 0x0269C0 09:A9B0: 8D EC 07  STA ram_07EC
C - - - - - 0x0269C3 09:A9B3: 8D EE 07  STA ram_07EE
bra_A9B6:
C - - - - - 0x0269C6 09:A9B6: A0 02     LDY #$02
C - - - - - 0x0269C8 09:A9B8: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x0269CB 09:A9BB: F0 09     BEQ bra_A9C6
C - - - - - 0x0269CD 09:A9BD: 29 08     AND #$08
C - - - - - 0x0269CF 09:A9BF: D0 01     BNE bra_A9C2
C - - - - - 0x0269D1 09:A9C1: 88        DEY ; 01
bra_A9C2:
C - - - - - 0x0269D2 09:A9C2: 98        TYA
C - - - - - 0x0269D3 09:A9C3: 9D 54 04  STA ram_0454_obj,X
bra_A9C6:
C - - - - - 0x0269D6 09:A9C6: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0269D9 09:A9C9: C9 04     CMP #$04
C - - - - - 0x0269DB 09:A9CB: B0 02     BCS bra_A9CF_not_underflow
- - - - - - 0x0269DD 09:A9CD: A9 04     LDA #$04
bra_A9CF_not_underflow:
C - - - - - 0x0269DF 09:A9CF: C9 FC     CMP #$FC
C - - - - - 0x0269E1 09:A9D1: 90 02     BCC bra_A9D5_not_overflow
C - - - - - 0x0269E3 09:A9D3: A9 FB     LDA #$FB
bra_A9D5_not_overflow:
C - - - - - 0x0269E5 09:A9D5: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0269E8 09:A9D8: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0269EB 09:A9DB: C9 40     CMP #$40
C - - - - - 0x0269ED 09:A9DD: B0 02     BCS bra_A9E1_not_underflow
C - - - - - 0x0269EF 09:A9DF: A9 40     LDA #$40
bra_A9E1_not_underflow:
C - - - - - 0x0269F1 09:A9E1: C9 A0     CMP #$A0
C - - - - - 0x0269F3 09:A9E3: 90 02     BCC bra_A9E7_not_overflow
C - - - - - 0x0269F5 09:A9E5: A9 9F     LDA #$9F
bra_A9E7_not_overflow:
C - - - - - 0x0269F7 09:A9E7: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0269FA 09:A9EA: BC 1D 06  LDY ram_061D_obj,X
C - - - - - 0x0269FD 09:A9ED: F0 0D     BEQ bra_A9FC_00
C - - - - - 0x0269FF 09:A9EF: 88        DEY
C - - - - - 0x026A00 09:A9F0: F0 76     BEQ bra_AA68_01
; 02
C - - - - - 0x026A02 09:A9F2: 98        TYA
C - - - - - 0x026A03 09:A9F3: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x026A06 09:A9F6: A9 0F     LDA #$0F
C - - - - - 0x026A08 09:A9F8: 9D 8D 06  STA ram_obj_068E,X
C - - - - - 0x026A0B 09:A9FB: 60        RTS
bra_A9FC_00:
C - - - - - 0x026A0C 09:A9FC: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x026A0F 09:A9FF: 29 08     AND #$08
C - - - - - 0x026A11 09:AA01: F0 02     BEQ bra_AA05
C - - - - - 0x026A13 09:AA03: A9 01     LDA #$01    ; facing left
bra_AA05:   ; A = 00 (facing right)
C - - - - - 0x026A15 09:AA05: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x026A18 09:AA08: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x026A1B 09:AA0B: 29 F0     AND #$F0
C - - - - - 0x026A1D 09:AA0D: D0 03     BNE bra_AA12
C - - - - - 0x026A1F 09:AA0F: 4C A0 AA  JMP loc_AAA0
bra_AA12:
C - - - - - 0x026A22 09:AA12: A9 2B     LDA #con_sound_2B
C - - - - - 0x026A24 09:AA14: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x026A27 09:AA17: A9 00     LDA #$00
C - - - - - 0x026A29 09:AA19: 8D EE 07  STA ram_07EE
C - - - - - 0x026A2C 09:AA1C: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x026A2F 09:AA1F: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x026A32 09:AA22: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x026A35 09:AA25: 29 80     AND #$80
C - - - - - 0x026A37 09:AA27: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x026A3A 09:AA2A: A0 04     LDY #$04
C - - - - - 0x026A3C 09:AA2C: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x026A3F 09:AA2F: D0 02     BNE bra_AA33
C - - - - - 0x026A41 09:AA31: A0 08     LDY #$08
bra_AA33:
C - - - - - 0x026A43 09:AA33: 84 00     STY ram_0000_temp
C - - - - - 0x026A45 09:AA35: A5 3D     LDA ram_hp_boss
C - - - - - 0x026A47 09:AA37: 38        SEC
C - - - - - 0x026A48 09:AA38: E5 00     SBC ram_0000_temp
C - - - - - 0x026A4A 09:AA3A: B0 02     BCS bra_AA3E_not_underflow
- - - - - - 0x026A4C 09:AA3C: A9 00     LDA #$00
bra_AA3E_not_underflow:
C - - - - - 0x026A4E 09:AA3E: 85 3D     STA ram_hp_boss
C - - - - - 0x026A50 09:AA40: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x026A53 09:AA43: C9 03     CMP #$03
C - - - - - 0x026A55 09:AA45: D0 16     BNE bra_AA5D
C - - - - - 0x026A57 09:AA47: EC EC 07  CPX ram_07EC
C - - - - - 0x026A5A 09:AA4A: D0 05     BNE bra_AA51
C - - - - - 0x026A5C 09:AA4C: A9 00     LDA #$00
C - - - - - 0x026A5E 09:AA4E: 8D EC 07  STA ram_07EC
bra_AA51:
C - - - - - 0x026A61 09:AA51: A0 04     LDY #con_obj_type_04
C - - - - - 0x026A63 09:AA53: A9 0E     LDA #$0E
C - - - - - 0x026A65 09:AA55: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x026A68 09:AA58: A9 C8     LDA #$C8
C - - - - - 0x026A6A 09:AA5A: 4C 4F 86  JMP loc_864F
bra_AA5D:
C - - - - - 0x026A6D 09:AA5D: A9 40     LDA #$40
C - - - - - 0x026A6F 09:AA5F: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x026A72 09:AA62: A9 0F     LDA #$0F
C - - - - - 0x026A74 09:AA64: 9D 8D 06  STA ram_obj_068E,X
C - - - - - 0x026A77 09:AA67: 60        RTS
bra_AA68_01:
C - - - - - 0x026A78 09:AA68: A9 04     LDA #$04
C - - - - - 0x026A7A 09:AA6A: 20 66 87  JSR sub_8766
C - - - - - 0x026A7D 09:AA6D: FE 06 06  INC ram_obj_config,X
C - - - - - 0x026A80 09:AA70: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x026A83 09:AA73: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x026A86 09:AA76: A9 40     LDA #con_obj_flag_40
C - - - - - 0x026A88 09:AA78: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x026A8B 09:AA7B: A9 00     LDA #$00
C - - - - - 0x026A8D 09:AA7D: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x026A90 09:AA80: 99 1D 06  STA ram_061D_obj,Y
C - - - - - 0x026A93 09:AA83: 9D 54 04  STA ram_0454_obj,X
C - - - - - 0x026A96 09:AA86: 99 54 04  STA ram_0454_obj,Y
C - - - - - 0x026A99 09:AA89: BD 8D 06  LDA ram_obj_068E,X
C - - - - - 0x026A9C 09:AA8C: 29 F0     AND #$F0
C - - - - - 0x026A9E 09:AA8E: 9D 8D 06  STA ram_obj_068E,X
C - - - - - 0x026AA1 09:AA91: 99 8D 06  STA ram_obj_068E,Y
C - - - - - 0x026AA4 09:AA94: 86 17     STX ram_0017_temp
C - - - - - 0x026AA6 09:AA96: 98        TYA
C - - - - - 0x026AA7 09:AA97: AA        TAX
C - - - - - 0x026AA8 09:AA98: 20 29 AB  JSR sub_AB29
C - - - - - 0x026AAB 09:AA9B: A6 17     LDX ram_0017_temp
C - - - - - 0x026AAD 09:AA9D: 4C 29 AB  JMP loc_AB29



loc_AAA0:
C D 1 - - - 0x026AB0 09:AAA0: 20 DE A1  JSR sub_A1DE
C - - - - - 0x026AB3 09:AAA3: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x026AB6 09:AAA6: 0A        ASL
C - - - - - 0x026AB7 09:AAA7: A8        TAY
C - - - - - 0x026AB8 09:AAA8: B9 86 AB  LDA tbl_AB86_position_hi,Y
C - - - - - 0x026ABB 09:AAAB: 85 00     STA ram_0000_temp
C - - - - - 0x026ABD 09:AAAD: B9 87 AB  LDA tbl_AB86_position_hi + $01,Y
C - - - - - 0x026AC0 09:AAB0: A4 00     LDY ram_0000_temp
C - - - - - 0x026AC2 09:AAB2: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x026AC5 09:AAB5: 85 00     STA ram_0000_temp
C - - - - - 0x026AC7 09:AAB7: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x026ACA 09:AABA: D0 1B     BNE bra_AAD7
C - - - - - 0x026ACC 09:AABC: A5 00     LDA ram_0000_temp
C - - - - - 0x026ACE 09:AABE: F0 17     BEQ bra_AAD7
C - - - - - 0x026AD0 09:AAC0: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026AD3 09:AAC3: D0 12     BNE bra_AAD7
C - - - - - 0x026AD5 09:AAC5: A5 1F     LDA ram_random
C - - - - - 0x026AD7 09:AAC7: 29 01     AND #$01
C - - - - - 0x026AD9 09:AAC9: F0 0C     BEQ bra_AAD7
C - - - - - 0x026ADB 09:AACB: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026ADD 09:AACD: A0 1F     LDY #$1F
C - - - - - 0x026ADF 09:AACF: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x026AE2 09:AAD2: A9 09     LDA #$09
C - - - - - 0x026AE4 09:AAD4: 4C 4F 86  JMP loc_864F
bra_AAD7:
C - - - - - 0x026AE7 09:AAD7: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026AEA 09:AADA: D0 54     BNE bra_AB30_RTS
C - - - - - 0x026AEC 09:AADC: A0 01     LDY #$01
bra_AADE_loop:
C - - - - - 0x026AEE 09:AADE: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x026AF1 09:AAE1: D0 05     BNE bra_AAE8
C - - - - - 0x026AF3 09:AAE3: C8        INY
C - - - - - 0x026AF4 09:AAE4: C0 0D     CPY #$0D
C - - - - - 0x026AF6 09:AAE6: D0 F6     BNE bra_AADE_loop
bra_AAE8:
C - - - - - 0x026AF8 09:AAE8: 84 00     STY ram_0000_temp
C - - - - - 0x026AFA 09:AAEA: E4 00     CPX ram_0000_temp
C - - - - - 0x026AFC 09:AAEC: D0 28     BNE bra_AB16
C - - - - - 0x026AFE 09:AAEE: AD EE 07  LDA ram_07EE
C - - - - - 0x026B01 09:AAF1: F0 05     BEQ bra_AAF8
C - - - - - 0x026B03 09:AAF3: C9 03     CMP #$03
C - - - - - 0x026B05 09:AAF5: F0 1F     BEQ bra_AB16
- - - - - - 0x026B07 09:AAF7: 60        RTS
bra_AAF8:
C - - - - - 0x026B08 09:AAF8: A5 1F     LDA ram_random
C - - - - - 0x026B0A 09:AAFA: C9 20     CMP #$20
C - - - - - 0x026B0C 09:AAFC: B0 18     BCS bra_AB16
; chance 1 in 8
C - - - - - 0x026B0E 09:AAFE: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x026B11 09:AB01: F0 13     BEQ bra_AB16
C - - - - - 0x026B13 09:AB03: A9 01     LDA #$01
C - - - - - 0x026B15 09:AB05: 8D EE 07  STA ram_07EE
C - - - - - 0x026B18 09:AB08: 20 3D AB  JSR sub_AB3D
C - - - - - 0x026B1B 09:AB0B: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026B1E 09:AB0E: C9 1A     CMP #$1A
C - - - - - 0x026B20 09:AB10: F0 1E     BEQ bra_AB30_RTS
- - - - - - 0x026B22 09:AB12: A9 1A     LDA #$1A
- - - - - - 0x026B24 09:AB14: D0 10     BNE bra_AB26
bra_AB16:
C - - - - - 0x026B26 09:AB16: A9 00     LDA #$00
C - - - - - 0x026B28 09:AB18: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x026B2B 09:AB1B: A5 1F     LDA ram_random
C - - - - - 0x026B2D 09:AB1D: 29 01     AND #$01
C - - - - - 0x026B2F 09:AB1F: F0 08     BEQ bra_AB29
C - - - - - 0x026B31 09:AB21: 20 31 AB  JSR sub_AB31
C - - - - - 0x026B34 09:AB24: A9 19     LDA #$19
bra_AB26:
C - - - - - 0x026B36 09:AB26: 4C 4F 86  JMP loc_864F
bra_AB29:
sub_AB29:
loc_AB29:
C D 1 - - - 0x026B39 09:AB29: 20 31 AB  JSR sub_AB31
C - - - - - 0x026B3C 09:AB2C: A9 18     LDA #$18
; bzk optimize, JMP
C - - - - - 0x026B3E 09:AB2E: D0 F6     BNE bra_AB26    ; jmp
bra_AB30_RTS:
C - - - - - 0x026B40 09:AB30: 60        RTS



sub_AB31:
C - - - - - 0x026B41 09:AB31: A9 1B     LDA #$1B
C - - - - - 0x026B43 09:AB33: 18        CLC
C - - - - - 0x026B44 09:AB34: 7D 06 06  ADC ram_obj_config,X
C - - - - - 0x026B47 09:AB37: A8        TAY
C - - - - - 0x026B48 09:AB38: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026B4A 09:AB3A: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation



sub_AB3D:
C - - - - - 0x026B4D 09:AB3D: A0 01     LDY #$01
bra_AB3F_loop:
C - - - - - 0x026B4F 09:AB3F: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x026B52 09:AB42: C9 04     CMP #$04
C - - - - - 0x026B54 09:AB44: D0 0A     BNE bra_AB50
C - - - - - 0x026B56 09:AB46: A9 9A     LDA #$9A
C - - - - - 0x026B58 09:AB48: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x026B5B 09:AB4B: A9 00     LDA #$00
C - - - - - 0x026B5D 09:AB4D: 99 C1 05  STA ram_05C1_obj,Y
bra_AB50:
C - - - - - 0x026B60 09:AB50: C8        INY
C - - - - - 0x026B61 09:AB51: C0 0D     CPY #$0D
C - - - - - 0x026B63 09:AB53: D0 EA     BNE bra_AB3F_loop
bra_AB55_RTS:
C - - - - - 0x026B65 09:AB55: 60        RTS



loc_AB56:
C D 1 - - - 0x026B66 09:AB56: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x026B69 09:AB59: C9 02     CMP #$02
C - - - - - 0x026B6B 09:AB5B: F0 F8     BEQ bra_AB55_RTS
C - - - - - 0x026B6D 09:AB5D: A9 00     LDA #$00
C - - - - - 0x026B6F 09:AB5F: 85 10     STA ram_0010_temp
C - - - - - 0x026B71 09:AB61: A0 01     LDY #$01
bra_AB63_loop:
C - - - - - 0x026B73 09:AB63: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x026B76 09:AB66: C9 04     CMP #$04
C - - - - - 0x026B78 09:AB68: D0 02     BNE bra_AB6C
C - - - - - 0x026B7A 09:AB6A: E6 10     INC ram_0010_temp
bra_AB6C:
C - - - - - 0x026B7C 09:AB6C: C8        INY
C - - - - - 0x026B7D 09:AB6D: C0 0D     CPY #$0D
C - - - - - 0x026B7F 09:AB6F: D0 F2     BNE bra_AB63_loop
C - - - - - 0x026B81 09:AB71: C6 10     DEC ram_0010_temp
C - - - - - 0x026B83 09:AB73: D0 03     BNE bra_AB78
- - - - - - 0x026B85 09:AB75: 20 98 AB  JSR sub_AB98
bra_AB78:
C - - - - - 0x026B88 09:AB78: 20 80 A9  JSR sub_A980
C - - - - - 0x026B8B 09:AB7B: A9 68     LDA #$68
C - - - - - 0x026B8D 09:AB7D: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x026B90 09:AB80: A9 65     LDA #$65
C - - - - - 0x026B92 09:AB82: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x026B95 09:AB85: 60        RTS



tbl_AB86_position_hi:
;                                              +---------- pos_X_hi
;                                              |    +----- pos_Y_hi
;                                              |    |
- D 1 - - - 0x026B96 09:AB86: F0        .byte $F0, $08   ; 00 
- D 1 - - - 0x026B98 09:AB88: F8        .byte $F8, $08   ; 01 
- D 1 - - - 0x026B9A 09:AB8A: F8        .byte $F8, $04   ; 02 
- D 1 - - - 0x026B9C 09:AB8C: FC        .byte $FC, $04   ; 03 
- - - - - - 0x026B9E 09:AB8E: 0F        .byte $0F, $0F   ; 04 
- - - - - - 0x026BA0 09:AB90: 23        .byte $23, $1B   ; 05 
- - - - - - 0x026BA2 09:AB92: FF        .byte $FF, $0F   ; 06 
- - - - - - 0x026BA4 09:AB94: 31        .byte $31, $23   ; 07 
- - - - - - 0x026BA6 09:AB96: 13        .byte $13, $FF   ; 08 



sub_AB98:
sub_0x026BA8:
C - - - - - 0x026BA8 09:AB98: A9 50     LDA #$50    ; 5000
C - - - - - 0x026BAA 09:AB9A: 20 61 86  JSR sub_8661_add_points_to_score
C - - - - - 0x026BAD 09:AB9D: A9 02     LDA #$02
C - - - - - 0x026BAF 09:AB9F: 8D F3 07  STA ram_07F3
C - - - - - 0x026BB2 09:ABA2: 20 CE E5  JSR sub_0x03E5DE
C - - - - - 0x026BB5 09:ABA5: A9 01     LDA #$01
C - - - - - 0x026BB7 09:ABA7: 20 F4 87  JSR sub_87F4
C - - - - - 0x026BBA 09:ABAA: A9 7B     LDA #con_dmc_boss_death
C - - - - - 0x026BBC 09:ABAC: 4C 5F E2  JMP loc_0x03E26F_play_sound



ofs_042_ABAF_05:
C - - J - - 0x026BBF 09:ABAF: A5 78     LDA ram_0078_flag
C - - - - - 0x026BC1 09:ABB1: F0 08     BEQ bra_ABBB
C - - - - - 0x026BC3 09:ABB3: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x026BC6 09:ABB6: C9 04     CMP #$04
C - - - - - 0x026BC8 09:ABB8: F0 1A     BEQ bra_ABD4
C - - - - - 0x026BCA 09:ABBA: 60        RTS
bra_ABBB:
C - - - - - 0x026BCB 09:ABBB: A9 CC     LDA #con_obj_flag_04 + con_obj_flag_08 + con_obj_flag_40 + con_obj_flag_not_visible
C - - - - - 0x026BCD 09:ABBD: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x026BD0 09:ABC0: A9 00     LDA #$00    ; facing right
C - - - - - 0x026BD2 09:ABC2: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x026BD5 09:ABC5: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x026BD8 09:ABC8: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026BDA 09:ABCA: A0 24     LDY #$24
C - - - - - 0x026BDC 09:ABCC: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x026BDF 09:ABCF: A9 45     LDA #$45
C - - - - - 0x026BE1 09:ABD1: 4C 4F 86  JMP loc_864F
bra_ABD4:
C - - - - - 0x026BE4 09:ABD4: 8A        TXA
C - - - - - 0x026BE5 09:ABD5: C9 06     CMP #$06
C - - - - - 0x026BE7 09:ABD7: D0 15     BNE bra_ABEE
C - - - - - 0x026BE9 09:ABD9: 20 8A A1  JSR sub_A18A
C - - - - - 0x026BEC 09:ABDC: A0 00     LDY #$00
C - - - - - 0x026BEE 09:ABDE: 8C EE 07  STY ram_07EE
C - - - - - 0x026BF1 09:ABE1: C8        INY ; 01
C - - - - - 0x026BF2 09:ABE2: 8C EC 07  STY ram_07EC
C - - - - - 0x026BF5 09:ABE5: C8        INY ; 02
C - - - - - 0x026BF6 09:ABE6: 8C EF 07  STY ram_07EF
C - - - - - 0x026BF9 09:ABE9: A9 06     LDA #$06
C - - - - - 0x026BFB 09:ABEB: 8D F0 07  STA ram_07F0
bra_ABEE:
C - - - - - 0x026BFE 09:ABEE: A9 00     LDA #$00
C - - - - - 0x026C00 09:ABF0: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x026C03 09:ABF3: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x026C06 09:ABF6: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x026C09 09:ABF9: A9 40     LDA #con_obj_flag_40
C - - - - - 0x026C0B 09:ABFB: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x026C0E 09:ABFE: 4C AF AD  JMP loc_ADAF



ofs_042_AC01_21:
C - - J - - 0x026C11 09:AC01: AC EF 07  LDY ram_07EF
C - - - - - 0x026C14 09:AC04: 88        DEY
C - - - - - 0x026C15 09:AC05: F0 33     BEQ bra_AC3A_01
; 00
C - - - - - 0x026C17 09:AC07: A9 01     LDA #$01
C - - - - - 0x026C19 09:AC09: 20 E0 88  JSR sub_88E0
C - - - - - 0x026C1C 09:AC0C: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x026C1F 09:AC0F: A9 04     LDA #$04
C - - - - - 0x026C21 09:AC11: 85 00     STA ram_0000_temp
C - - - - - 0x026C23 09:AC13: B9 A8 04  LDA ram_obj_facing,Y
C - - - - - 0x026C26 09:AC16: D0 04     BNE bra_AC1C_facing_left
C - - - - - 0x026C28 09:AC18: A9 FC     LDA #$FC
C - - - - - 0x026C2A 09:AC1A: 85 00     STA ram_0000_temp
bra_AC1C_facing_left:
C - - - - - 0x026C2C 09:AC1C: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x026C2F 09:AC1F: 18        CLC
C - - - - - 0x026C30 09:AC20: 65 00     ADC ram_0000_temp
C - - - - - 0x026C32 09:AC22: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x026C35 09:AC25: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x026C38 09:AC28: 38        SEC
C - - - - - 0x026C39 09:AC29: E9 20     SBC #$20
C - - - - - 0x026C3B 09:AC2B: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x026C3E 09:AC2E: BD 7B 06  LDA ram_obj_hp,X
C - - - - - 0x026C41 09:AC31: 99 7B 06  STA ram_obj_hp,Y
C - - - - - 0x026C44 09:AC34: A9 00     LDA #$00
C - - - - - 0x026C46 09:AC36: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x026C49 09:AC39: 60        RTS
bra_AC3A_01:
C - - - - - 0x026C4A 09:AC3A: 4C 3A 87  JMP loc_873A_clear_object_data



ofs_042_AC3D_05:
C - - J - - 0x026C4D 09:AC3D: 20 DE A1  JSR sub_A1DE
C - - - - - 0x026C50 09:AC40: A9 50     LDA #con_obj_flag_10 + con_obj_flag_40
C - - - - - 0x026C52 09:AC42: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x026C55 09:AC45: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026C58 09:AC48: C9 1E     CMP #$1E
C - - - - - 0x026C5A 09:AC4A: F0 24     BEQ bra_AC70
C - - - - - 0x026C5C 09:AC4C: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x026C5F 09:AC4F: C9 10     CMP #$10
C - - - - - 0x026C61 09:AC51: B0 02     BCS bra_AC55_not_underflow
C - - - - - 0x026C63 09:AC53: A9 10     LDA #$10
bra_AC55_not_underflow:
C - - - - - 0x026C65 09:AC55: C9 F0     CMP #$F0
C - - - - - 0x026C67 09:AC57: 90 02     BCC bra_AC5B_not_overflow
C - - - - - 0x026C69 09:AC59: A9 EF     LDA #$EF
bra_AC5B_not_overflow:
C - - - - - 0x026C6B 09:AC5B: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x026C6E 09:AC5E: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x026C71 09:AC61: C9 40     CMP #$40
C - - - - - 0x026C73 09:AC63: B0 02     BCS bra_AC67_not_underflow
C - - - - - 0x026C75 09:AC65: A9 40     LDA #$40
bra_AC67_not_underflow:
C - - - - - 0x026C77 09:AC67: C9 F0     CMP #$F0
C - - - - - 0x026C79 09:AC69: 90 02     BCC bra_AC6D_not_overflow
C - - - - - 0x026C7B 09:AC6B: A9 EF     LDA #$EF
bra_AC6D_not_overflow:
C - - - - - 0x026C7D 09:AC6D: 9D 1C 04  STA ram_obj_pos_Y_hi,X
bra_AC70:
C - - - - - 0x026C80 09:AC70: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x026C83 09:AC73: 85 00     STA ram_0000_temp
C - - - - - 0x026C85 09:AC75: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x026C88 09:AC78: 29 02     AND #$02
C - - - - - 0x026C8A 09:AC7A: D0 12     BNE bra_AC8E
C - - - - - 0x026C8C 09:AC7C: AD EF 07  LDA ram_07EF
C - - - - - 0x026C8F 09:AC7F: D0 08     BNE bra_AC89
C - - - - - 0x026C91 09:AC81: 20 31 82  JSR sub_8231
C - - - - - 0x026C94 09:AC84: A9 40     LDA #con_obj_flag_40
C - - - - - 0x026C96 09:AC86: 9D 70 04  STA ram_obj_flags,X
bra_AC89:
C - - - - - 0x026C99 09:AC89: A9 00     LDA #$00
C - - - - - 0x026C9B 09:AC8B: 9D 69 06  STA ram_obj_066A,X
bra_AC8E:
C - - - - - 0x026C9E 09:AC8E: AC EF 07  LDY ram_07EF
C - - - - - 0x026CA1 09:AC91: D0 69     BNE bra_ACFC
; 00
C - - - - - 0x026CA3 09:AC93: AC F3 07  LDY ram_07F3
C - - - - - 0x026CA6 09:AC96: 88        DEY
C - - - - - 0x026CA7 09:AC97: D0 08     BNE bra_ACA1
; 00
C - - - - - 0x026CA9 09:AC99: A9 00     LDA #$00
C - - - - - 0x026CAB 09:AC9B: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x026CAE 09:AC9E: 4C 64 AE  JMP loc_AE64
bra_ACA1:
; 01
C - - - - - 0x026CB1 09:ACA1: A9 01     LDA #$01
C - - - - - 0x026CB3 09:ACA3: 20 F4 87  JSR sub_87F4
C - - - - - 0x026CB6 09:ACA6: AD F3 07  LDA ram_07F3
C - - - - - 0x026CB9 09:ACA9: D0 0F     BNE bra_ACBA_RTS
C - - - - - 0x026CBB 09:ACAB: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x026CBE 09:ACAE: F0 0B     BEQ bra_ACBB
C - - - - - 0x026CC0 09:ACB0: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026CC3 09:ACB3: D0 05     BNE bra_ACBA_RTS
C - - - - - 0x026CC5 09:ACB5: A9 01     LDA #$01
C - - - - - 0x026CC7 09:ACB7: 8D EF 07  STA ram_07EF
bra_ACBA_RTS:
C - - - - - 0x026CCA 09:ACBA: 60        RTS
bra_ACBB:
C - - - - - 0x026CCB 09:ACBB: A9 21     LDA #$21
C - - - - - 0x026CCD 09:ACBD: 20 66 87  JSR sub_8766
C - - - - - 0x026CD0 09:ACC0: A5 3D     LDA ram_hp_boss
C - - - - - 0x026CD2 09:ACC2: 99 7B 06  STA ram_obj_hp,Y
C - - - - - 0x026CD5 09:ACC5: A9 C8     LDA #con_obj_flag_08 + con_obj_flag_40 + con_obj_flag_not_visible
C - - - - - 0x026CD7 09:ACC7: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x026CDA 09:ACCA: 8A        TXA
C - - - - - 0x026CDB 09:ACCB: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x026CDE 09:ACCE: 8D EC 07  STA ram_07EC
C - - - - - 0x026CE1 09:ACD1: A9 01     LDA #$01
C - - - - - 0x026CE3 09:ACD3: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x026CE6 09:ACD6: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x026CE9 09:ACD9: DD 38 04  CMP ram_obj_pos_X_hi,X
C - - - - - 0x026CEC 09:ACDC: B0 04     BCS bra_ACE2
C - - - - - 0x026CEE 09:ACDE: A9 0C     LDA #$0C
C - - - - - 0x026CF0 09:ACE0: D0 02     BNE bra_ACE4    ; jmp
bra_ACE2:
C - - - - - 0x026CF2 09:ACE2: A9 04     LDA #$04
bra_ACE4:
C - - - - - 0x026CF4 09:ACE4: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x026CF7 09:ACE7: 29 08     AND #$08
C - - - - - 0x026CF9 09:ACE9: F0 02     BEQ bra_ACED
C - - - - - 0x026CFB 09:ACEB: A9 01     LDA #$01    ; facing left
bra_ACED:   ; A = 00 (facing right)
C - - - - - 0x026CFD 09:ACED: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x026D00 09:ACF0: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026D02 09:ACF2: A0 21     LDY #$21
C - - - - - 0x026D04 09:ACF4: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x026D07 09:ACF7: A9 1C     LDA #$1C
C - - - - - 0x026D09 09:ACF9: 4C 4F 86  JMP loc_864F
bra_ACFC:
C - - - - - 0x026D0C 09:ACFC: 88        DEY
C - - - - - 0x026D0D 09:ACFD: D0 70     BNE bra_AD6F
; 01
C - - - - - 0x026D0F 09:ACFF: EC EC 07  CPX ram_07EC
C - - - - - 0x026D12 09:AD02: D0 54     BNE bra_AD58_RTS
C - - - - - 0x026D14 09:AD04: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x026D17 09:AD07: C9 01     CMP #$01
C - - - - - 0x026D19 09:AD09: F0 4E     BEQ bra_AD59
C - - - - - 0x026D1B 09:AD0B: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026D1E 09:AD0E: D0 48     BNE bra_AD58_RTS
bra_AD10_loop:
C - - - - - 0x026D20 09:AD10: A9 05     LDA #$05
C - - - - - 0x026D22 09:AD12: 20 66 87  JSR sub_8766
C - - - - - 0x026D25 09:AD15: 90 26     BCC bra_AD3D
C - - - - - 0x026D27 09:AD17: A9 00     LDA #$00
C - - - - - 0x026D29 09:AD19: 99 69 06  STA ram_obj_066A,Y
C - - - - - 0x026D2C 09:AD1C: A9 02     LDA #$02
C - - - - - 0x026D2E 09:AD1E: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x026D31 09:AD21: A9 40     LDA #con_obj_flag_40
C - - - - - 0x026D33 09:AD23: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x026D36 09:AD26: A9 80     LDA #$80
C - - - - - 0x026D38 09:AD28: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x026D3B 09:AD2B: 86 00     STX ram_0000_temp
C - - - - - 0x026D3D 09:AD2D: 98        TYA
C - - - - - 0x026D3E 09:AD2E: AA        TAX
C - - - - - 0x026D3F 09:AD2F: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026D41 09:AD31: A0 24     LDY #$24
C - - - - - 0x026D43 09:AD33: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x026D46 09:AD36: A6 00     LDX ram_0000_temp
C - - - - - 0x026D48 09:AD38: CE F0 07  DEC ram_07F0
C - - - - - 0x026D4B 09:AD3B: D0 D3     BNE bra_AD10_loop
bra_AD3D:
C - - - - - 0x026D4D 09:AD3D: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026D4F 09:AD3F: A0 24     LDY #$24
C - - - - - 0x026D51 09:AD41: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x026D54 09:AD44: A9 02     LDA #$02
C - - - - - 0x026D56 09:AD46: 8D EF 07  STA ram_07EF
C - - - - - 0x026D59 09:AD49: A9 00     LDA #$00
C - - - - - 0x026D5B 09:AD4B: 8D EE 07  STA ram_07EE
C - - - - - 0x026D5E 09:AD4E: A9 80     LDA #$80
C - - - - - 0x026D60 09:AD50: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x026D63 09:AD53: A9 C0     LDA #$C0
C - - - - - 0x026D65 09:AD55: 9D 1D 06  STA ram_061D_obj,X
bra_AD58_RTS:
C - - - - - 0x026D68 09:AD58: 60        RTS
bra_AD59:
C - - - - - 0x026D69 09:AD59: A9 02     LDA #$02
C - - - - - 0x026D6B 09:AD5B: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x026D6E 09:AD5E: A9 06     LDA #$06
C - - - - - 0x026D70 09:AD60: 8D F0 07  STA ram_07F0
C - - - - - 0x026D73 09:AD63: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026D75 09:AD65: A0 28     LDY #$28
C - - - - - 0x026D77 09:AD67: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x026D7A 09:AD6A: A9 20     LDA #$20
C - - - - - 0x026D7C 09:AD6C: 4C 4F 86  JMP loc_864F
bra_AD6F:
C - - - - - 0x026D7F 09:AD6F: A9 00     LDA #$00
C - - - - - 0x026D81 09:AD71: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x026D84 09:AD74: 88        DEY
C - - - - - 0x026D85 09:AD75: D0 76     BNE bra_ADED
; 02
C - - - - - 0x026D87 09:AD77: AD EE 07  LDA ram_07EE
C - - - - - 0x026D8A 09:AD7A: C9 02     CMP #$02
C - - - - - 0x026D8C 09:AD7C: 90 0C     BCC bra_AD8A
C - - - - - 0x026D8E 09:AD7E: AD 1E 06  LDA ram_061D_obj + $01
C - - - - - 0x026D91 09:AD81: F0 43     BEQ bra_ADC6
C - - - - - 0x026D93 09:AD83: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x026D96 09:AD86: A5 00     LDA ram_0000_temp
C - - - - - 0x026D98 09:AD88: D0 3C     BNE bra_ADC6
bra_AD8A:
C - - - - - 0x026D9A 09:AD8A: 8A        TXA
C - - - - - 0x026D9B 09:AD8B: CD EC 07  CMP ram_07EC
C - - - - - 0x026D9E 09:AD8E: D0 0D     BNE bra_AD9D
C - - - - - 0x026DA0 09:AD90: AD EE 07  LDA ram_07EE
C - - - - - 0x026DA3 09:AD93: D0 1A     BNE bra_ADAF
C - - - - - 0x026DA5 09:AD95: A9 01     LDA #$01
C - - - - - 0x026DA7 09:AD97: 8D EE 07  STA ram_07EE
C - - - - - 0x026DAA 09:AD9A: 20 4B AE  JSR sub_AE4B
bra_AD9D:
C - - - - - 0x026DAD 09:AD9D: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026DB0 09:ADA0: C9 1E     CMP #$1E
C - - - - - 0x026DB2 09:ADA2: F0 1C     BEQ bra_ADC0
C - - - - - 0x026DB4 09:ADA4: C9 1B     CMP #$1B
C - - - - - 0x026DB6 09:ADA6: F0 18     BEQ bra_ADC0
C - - - - - 0x026DB8 09:ADA8: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026DBA 09:ADAA: A0 24     LDY #$24
C - - - - - 0x026DBC 09:ADAC: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation
bra_ADAF:
loc_ADAF:
C D 1 - - - 0x026DBF 09:ADAF: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026DC2 09:ADB2: D0 0C     BNE bra_ADC0
C - - - - - 0x026DC4 09:ADB4: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026DC6 09:ADB6: A0 24     LDY #$24
C - - - - - 0x026DC8 09:ADB8: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x026DCB 09:ADBB: A9 19     LDA #$19
C - - - - - 0x026DCD 09:ADBD: 4C 4F 86  JMP loc_864F
bra_ADC0:
C - - - - - 0x026DD0 09:ADC0: A9 03     LDA #$03
C - - - - - 0x026DD2 09:ADC2: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x026DD5 09:ADC5: 60        RTS
bra_ADC6:
C - - - - - 0x026DD6 09:ADC6: A9 03     LDA #$03
C - - - - - 0x026DD8 09:ADC8: 8D EF 07  STA ram_07EF
C - - - - - 0x026DDB 09:ADCB: AC EC 07  LDY ram_07EC
bra_ADCE_loop:
C - - - - - 0x026DDE 09:ADCE: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x026DE1 09:ADD1: C9 05     CMP #$05
C - - - - - 0x026DE3 09:ADD3: D0 0A     BNE bra_ADDF
C - - - - - 0x026DE5 09:ADD5: A9 9F     LDA #$9F
C - - - - - 0x026DE7 09:ADD7: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x026DEA 09:ADDA: A9 00     LDA #$00
C - - - - - 0x026DEC 09:ADDC: 99 C1 05  STA ram_05C1_obj,Y
bra_ADDF:
C - - - - - 0x026DEF 09:ADDF: C8        INY
C - - - - - 0x026DF0 09:ADE0: C0 0D     CPY #$0D
C - - - - - 0x026DF2 09:ADE2: D0 EA     BNE bra_ADCE_loop
C - - - - - 0x026DF4 09:ADE4: A9 00     LDA #$00
C - - - - - 0x026DF6 09:ADE6: 8D ED 07  STA ram_07ED
C - - - - - 0x026DF9 09:ADE9: 8D EE 07  STA ram_07EE
C - - - - - 0x026DFC 09:ADEC: 60        RTS
bra_ADED:
C - - - - - 0x026DFD 09:ADED: 88        DEY
C - - - - - 0x026DFE 09:ADEE: D0 10     BNE bra_AE00
; 03
C - - - - - 0x026E00 09:ADF0: AD EE 07  LDA ram_07EE
C - - - - - 0x026E03 09:ADF3: F0 0A     BEQ bra_ADFF_RTS
C - - - - - 0x026E05 09:ADF5: EC EC 07  CPX ram_07EC
C - - - - - 0x026E08 09:ADF8: D0 05     BNE bra_ADFF_RTS
C - - - - - 0x026E0A 09:ADFA: A9 04     LDA #$04
C - - - - - 0x026E0C 09:ADFC: 8D EF 07  STA ram_07EF
bra_ADFF_RTS:
C - - - - - 0x026E0F 09:ADFF: 60        RTS
bra_AE00:
; 04
C - - - - - 0x026E10 09:AE00: EC EC 07  CPX ram_07EC
C - - - - - 0x026E13 09:AE03: F0 12     BEQ bra_AE17
C - - - - - 0x026E15 09:AE05: A9 00     LDA #$00
C - - - - - 0x026E17 09:AE07: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x026E1A 09:AE0A: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x026E1D 09:AE0D: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
C - - - - - 0x026E20 09:AE10: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x026E23 09:AE13: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x026E26 09:AE16: 60        RTS
bra_AE17:
C - - - - - 0x026E27 09:AE17: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x026E2A 09:AE1A: C9 03     CMP #$03
C - - - - - 0x026E2C 09:AE1C: F0 17     BEQ bra_AE35
C - - - - - 0x026E2E 09:AE1E: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026E31 09:AE21: D0 11     BNE bra_AE34_RTS
C - - - - - 0x026E33 09:AE23: A9 00     LDA #$00
C - - - - - 0x026E35 09:AE25: 8D EC 07  STA ram_07EC
C - - - - - 0x026E38 09:AE28: 8D ED 07  STA ram_07ED
C - - - - - 0x026E3B 09:AE2B: 8D EE 07  STA ram_07EE
C - - - - - 0x026E3E 09:AE2E: 8D EF 07  STA ram_07EF
C - - - - - 0x026E41 09:AE31: 9D 06 06  STA ram_obj_config,X
bra_AE34_RTS:
C - - - - - 0x026E44 09:AE34: 60        RTS
bra_AE35:
C - - - - - 0x026E45 09:AE35: A9 04     LDA #$04
C - - - - - 0x026E47 09:AE37: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x026E4A 09:AE3A: A9 06     LDA #$06
C - - - - - 0x026E4C 09:AE3C: 8D F0 07  STA ram_07F0
C - - - - - 0x026E4F 09:AE3F: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026E51 09:AE41: A0 2C     LDY #$2C
C - - - - - 0x026E53 09:AE43: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x026E56 09:AE46: A9 20     LDA #$20
C - - - - - 0x026E58 09:AE48: 4C 4F 86  JMP loc_864F



sub_AE4B:
C - - - - - 0x026E5B 09:AE4B: A0 01     LDY #$01
bra_AE4D_loop:
C - - - - - 0x026E5D 09:AE4D: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x026E60 09:AE50: C9 05     CMP #$05
C - - - - - 0x026E62 09:AE52: D0 0A     BNE bra_AE5E
C - - - - - 0x026E64 09:AE54: A9 9E     LDA #$9E
C - - - - - 0x026E66 09:AE56: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x026E69 09:AE59: A9 00     LDA #$00
C - - - - - 0x026E6B 09:AE5B: 99 C1 05  STA ram_05C1_obj,Y
bra_AE5E:
C - - - - - 0x026E6E 09:AE5E: C8        INY
C - - - - - 0x026E6F 09:AE5F: C0 0D     CPY #$0D
C - - - - - 0x026E71 09:AE61: D0 EA     BNE bra_AE4D_loop
bra_AE63_RTS:
C - - - - - 0x026E73 09:AE63: 60        RTS



loc_AE64:
C D 1 - - - 0x026E74 09:AE64: 20 C3 A4  JSR sub_A4C3
C - - - - - 0x026E77 09:AE67: C9 22     CMP #$22
C - - - - - 0x026E79 09:AE69: F0 15     BEQ bra_AE80
C - - - - - 0x026E7B 09:AE6B: C9 23     CMP #$23
C - - - - - 0x026E7D 09:AE6D: F0 F4     BEQ bra_AE63_RTS
C - - - - - 0x026E7F 09:AE6F: A9 50     LDA #$50    ; 5000
C - - - - - 0x026E81 09:AE71: 20 61 86  JSR sub_8661_add_points_to_score
C - - - - - 0x026E84 09:AE74: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026E86 09:AE76: A0 30     LDY #$30
C - - - - - 0x026E88 09:AE78: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x026E8B 09:AE7B: A9 23     LDA #$23
C - - - - - 0x026E8D 09:AE7D: 4C 4F 86  JMP loc_864F
bra_AE80:
C - - - - - 0x026E90 09:AE80: A9 06     LDA #con__chr_bank + $06
C - - - - - 0x026E92 09:AE82: 85 48     STA ram_chr_bank_5122
C - - - - - 0x026E94 09:AE84: A9 1F     LDA #con__chr_bank + $1F
C - - - - - 0x026E96 09:AE86: 85 49     STA ram_chr_bank_5123
C - - - - - 0x026E98 09:AE88: 20 3C E3  JSR sub_0x03E34C
C - - - - - 0x026E9B 09:AE8B: 20 96 AE  JSR sub_AE96
C - - - - - 0x026E9E 09:AE8E: EE F3 07  INC ram_07F3
C - - - - - 0x026EA1 09:AE91: A9 01     LDA #$01
C - - - - - 0x026EA3 09:AE93: 4C F4 87  JMP loc_87F4



sub_AE96:
C - - - - - 0x026EA6 09:AE96: A0 01     LDY #$01
bra_AE98_loop:
C - - - - - 0x026EA8 09:AE98: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x026EAB 09:AE9B: F0 18     BEQ bra_AEB5
C - - - - - 0x026EAD 09:AE9D: C9 05     CMP #$05
C - - - - - 0x026EAF 09:AE9F: F0 14     BEQ bra_AEB5
C - - - - - 0x026EB1 09:AEA1: A9 00     LDA #$00
C - - - - - 0x026EB3 09:AEA3: 99 4E 05  STA ram_obj_id,Y
C - - - - - 0x026EB6 09:AEA6: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x026EB9 09:AEA9: 99 00 04  STA ram_obj_anim_id,Y
C - - - - - 0x026EBC 09:AEAC: 99 8C 04  STA ram_obj_type,Y  ; con_obj_type_00
C - - - - - 0x026EBF 09:AEAF: 99 38 04  STA ram_obj_pos_X_hi,Y
C - - - - - 0x026EC2 09:AEB2: 99 1C 04  STA ram_obj_pos_Y_hi,Y
bra_AEB5:
C - - - - - 0x026EC5 09:AEB5: C8        INY
C - - - - - 0x026EC6 09:AEB6: C0 0D     CPY #$0D
C - - - - - 0x026EC8 09:AEB8: D0 DE     BNE bra_AE98_loop
C - - - - - 0x026ECA 09:AEBA: 60        RTS



ofs_042_AEBB_17:
C - - J - - 0x026ECB 09:AEBB: 20 DE A1  JSR sub_A1DE
C - - - - - 0x026ECE 09:AEBE: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x026ED1 09:AEC1: F0 08     BEQ bra_AECB
C - - - - - 0x026ED3 09:AEC3: A9 33     LDA #con_sound_destroy_candle
C - - - - - 0x026ED5 09:AEC5: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x026ED8 09:AEC8: 4C 3A 87  JMP loc_873A_clear_object_data
bra_AECB:
C - - - - - 0x026EDB 09:AECB: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x026EDE 09:AECE: C9 08     CMP #$08
C - - - - - 0x026EE0 09:AED0: 90 14     BCC bra_AEE6
C - - - - - 0x026EE2 09:AED2: C9 F8     CMP #$F8
C - - - - - 0x026EE4 09:AED4: B0 10     BCS bra_AEE6
C - - - - - 0x026EE6 09:AED6: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x026EE9 09:AED9: C9 40     CMP #$40
C - - - - - 0x026EEB 09:AEDB: 90 09     BCC bra_AEE6
C - - - - - 0x026EED 09:AEDD: C9 F0     CMP #$F0
C - - - - - 0x026EEF 09:AEDF: B0 05     BCS bra_AEE6
C - - - - - 0x026EF1 09:AEE1: A9 1D     LDA #$1D
C - - - - - 0x026EF3 09:AEE3: 4C 4F 86  JMP loc_864F
bra_AEE6:
C - - - - - 0x026EF6 09:AEE6: 4C 3A 87  JMP loc_873A_clear_object_data



ofs_042_AEE9_06:
ofs_042_AEE9_2D:
C - - J - - 0x026EF9 09:AEE9: A5 78     LDA ram_0078_flag
C - - - - - 0x026EFB 09:AEEB: F0 33     BEQ bra_AF20
C - - - - - 0x026EFD 09:AEED: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x026F00 09:AEF0: F0 06     BEQ bra_AEF8
C - - - - - 0x026F02 09:AEF2: 20 62 AF  JSR sub_AF62
C - - - - - 0x026F05 09:AEF5: 4C 4E B0  JMP loc_B04E
bra_AEF8:
C - - - - - 0x026F08 09:AEF8: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x026F0B 09:AEFB: 29 7F     AND #$7F
C - - - - - 0x026F0D 09:AEFD: D0 16     BNE bra_AF15
C - - - - - 0x026F0F 09:AEFF: A5 33     LDA ram_blk_lo
C - - - - - 0x026F11 09:AF01: C9 02     CMP #$02
C - - - - - 0x026F13 09:AF03: F0 0B     BEQ bra_AF10
C - - - - - 0x026F15 09:AF05: A9 06     LDA #$06
C - - - - - 0x026F17 09:AF07: 85 17     STA ram_0017_temp
bra_AF09_loop:
C - - - - - 0x026F19 09:AF09: 20 54 B4  JSR sub_B454
C - - - - - 0x026F1C 09:AF0C: C6 17     DEC ram_0017_temp
C - - - - - 0x026F1E 09:AF0E: D0 F9     BNE bra_AF09_loop
bra_AF10:
C - - - - - 0x026F20 09:AF10: A9 47     LDA #$47
C - - - - - 0x026F22 09:AF12: 4C 4F 86  JMP loc_864F
bra_AF15:
C - - - - - 0x026F25 09:AF15: 20 62 AF  JSR sub_AF62
C - - - - - 0x026F28 09:AF18: B0 01     BCS bra_AF1B
C - - - - - 0x026F2A 09:AF1A: 60        RTS
bra_AF1B:
C - - - - - 0x026F2B 09:AF1B: C9 80     CMP #$80
C - - - - - 0x026F2D 09:AF1D: F0 23     BEQ bra_AF42
C - - - - - 0x026F2F 09:AF1F: 60        RTS
bra_AF20:
C - - - - - 0x026F30 09:AF20: A9 E9     LDA #con_obj_flag_01 + con_obj_flag_08 + con_obj_flag_20 + con_obj_flag_40 + con_obj_flag_not_visible
C - - - - - 0x026F32 09:AF22: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x026F35 09:AF25: A9 00     LDA #$00    ; facing right
C - - - - - 0x026F37 09:AF27: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x026F3A 09:AF2A: A9 08     LDA #$08
C - - - - - 0x026F3C 09:AF2C: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x026F3F 09:AF2F: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x026F42 09:AF32: F0 03     BEQ bra_AF37
C - - - - - 0x026F44 09:AF34: 4C 3F B0  JMP loc_B03F
bra_AF37:
C - - - - - 0x026F47 09:AF37: A9 9E     LDA #$9E
C - - - - - 0x026F49 09:AF39: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x026F4C 09:AF3C: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x026F4E 09:AF3E: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x026F51 09:AF41: 60        RTS
bra_AF42:
C - - - - - 0x026F52 09:AF42: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x026F55 09:AF45: 29 01     AND #con_obj_flag_01
C - - - - - 0x026F57 09:AF47: D0 18     BNE bra_AF61_RTS
C - - - - - 0x026F59 09:AF49: A9 00     LDA #$00
C - - - - - 0x026F5B 09:AF4B: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x026F5E 09:AF4E: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x026F61 09:AF51: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x026F64 09:AF54: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x026F66 09:AF56: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x026F69 09:AF59: AD F3 07  LDA ram_07F3
C - - - - - 0x026F6C 09:AF5C: 29 7F     AND #$7F
C - - - - - 0x026F6E 09:AF5E: 8D F3 07  STA ram_07F3
bra_AF61_RTS:
C - - - - - 0x026F71 09:AF61: 60        RTS



sub_AF62:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x026F72 09:AF62: A5 33     LDA ram_blk_lo
C - - - - - 0x026F74 09:AF64: C9 02     CMP #$02
C - - - - - 0x026F76 09:AF66: F0 0B     BEQ bra_AF73
C - - - - - 0x026F78 09:AF68: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x026F7B 09:AF6B: 29 F0     AND #$F0
C - - - - - 0x026F7D 09:AF6D: C9 20     CMP #$20
C - - - - - 0x026F7F 09:AF6F: F0 09     BEQ bra_AF7A
C - - - - - 0x026F81 09:AF71: D0 11     BNE bra_AF84    ; jmp
bra_AF73:
C - - - - - 0x026F83 09:AF73: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x026F86 09:AF76: 29 F0     AND #$F0
C - - - - - 0x026F88 09:AF78: D0 0A     BNE bra_AF84
bra_AF7A:
C - - - - - 0x026F8A 09:AF7A: BD 70 04  LDA ram_obj_flags,X
C - - - - - 0x026F8D 09:AF7D: 29 76     AND #(con_obj_flag_01 + con_obj_flag_08 + con_obj_flag_not_visible) ^ $FF
C - - - - - 0x026F8F 09:AF7F: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x026F92 09:AF82: 18        CLC
C - - - - - 0x026F93 09:AF83: 60        RTS
bra_AF84:
C - - - - - 0x026F94 09:AF84: 38        SEC
C - - - - - 0x026F95 09:AF85: 60        RTS



ofs_042_AF86_06:
C - - J - - 0x026F96 09:AF86: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x026F98 09:AF88: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x026F9B 09:AF8B: 20 DE A1  JSR sub_A1DE
C - - - - - 0x026F9E 09:AF8E: A5 33     LDA ram_blk_lo
C - - - - - 0x026FA0 09:AF90: C9 02     CMP #$02
C - - - - - 0x026FA2 09:AF92: D0 22     BNE bra_AFB6
C - - - - - 0x026FA4 09:AF94: A5 3D     LDA ram_hp_boss
C - - - - - 0x026FA6 09:AF96: C9 18     CMP #$18
C - - - - - 0x026FA8 09:AF98: B0 1C     BCS bra_AFB6
C - - - - - 0x026FAA 09:AF9A: A9 17     LDA #$17
C - - - - - 0x026FAC 09:AF9C: 85 3D     STA ram_hp_boss
C - - - - - 0x026FAE 09:AF9E: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x026FB1 09:AFA1: 20 1C B0  JSR sub_B01C
C - - - - - 0x026FB4 09:AFA4: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x026FB7 09:AFA7: 29 7F     AND #$7F
C - - - - - 0x026FB9 09:AFA9: D0 05     BNE bra_AFB0
C - - - - - 0x026FBB 09:AFAB: A9 49     LDA #$49
C - - - - - 0x026FBD 09:AFAD: 4C 4F 86  JMP loc_864F
bra_AFB0:
C - - - - - 0x026FC0 09:AFB0: 20 16 B4  JSR sub_B416
C - - - - - 0x026FC3 09:AFB3: 4C DB B2  JMP loc_B2DB
bra_AFB6:
C - - - - - 0x026FC6 09:AFB6: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x026FC9 09:AFB9: C9 FF     CMP #$FF
C - - - - - 0x026FCB 09:AFBB: D0 1A     BNE bra_AFD7
C - - - - - 0x026FCD 09:AFBD: 20 7D B0  JSR sub_B07D
C - - - - - 0x026FD0 09:AFC0: 90 14     BCC bra_AFD6_RTS
C - - - - - 0x026FD2 09:AFC2: A9 30     LDA #$30    ; 3000
C - - - - - 0x026FD4 09:AFC4: 20 61 86  JSR sub_8661_add_points_to_score
C - - - - - 0x026FD7 09:AFC7: A9 06     LDA #$06
C - - - - - 0x026FD9 09:AFC9: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x026FDC 09:AFCC: A9 02     LDA #$02
C - - - - - 0x026FDE 09:AFCE: 8D F3 07  STA ram_07F3
C - - - - - 0x026FE1 09:AFD1: A9 00     LDA #$00
C - - - - - 0x026FE3 09:AFD3: 20 F4 87  JSR sub_87F4
bra_AFD6_RTS:
C - - - - - 0x026FE6 09:AFD6: 60        RTS
bra_AFD7:
C - - - - - 0x026FE7 09:AFD7: AD F3 07  LDA ram_07F3
C - - - - - 0x026FEA 09:AFDA: C9 01     CMP #$01
C - - - - - 0x026FEC 09:AFDC: D0 01     BNE bra_AFDF
bra_AFDE_RTS:
C - - - - - 0x026FEE 09:AFDE: 60        RTS
bra_AFDF:
C - - - - - 0x026FEF 09:AFDF: A9 00     LDA #$00
C - - - - - 0x026FF1 09:AFE1: 20 F4 87  JSR sub_87F4
C - - - - - 0x026FF4 09:AFE4: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x026FF7 09:AFE7: 29 F0     AND #$F0
C - - - - - 0x026FF9 09:AFE9: F0 08     BEQ bra_AFF3
C - - - - - 0x026FFB 09:AFEB: A9 01     LDA #$01
C - - - - - 0x026FFD 09:AFED: 20 E0 88  JSR sub_88E0
C - - - - - 0x027000 09:AFF0: 20 64 B3  JSR sub_B364
bra_AFF3:
C - - - - - 0x027003 09:AFF3: A5 3D     LDA ram_hp_boss
C - - - - - 0x027005 09:AFF5: D0 08     BNE bra_AFFF
C - - - - - 0x027007 09:AFF7: A9 7B     LDA #con_dmc_boss_death
C - - - - - 0x027009 09:AFF9: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02700C 09:AFFC: 4C C2 B3  JMP loc_B3C2
bra_AFFF:
C - - - - - 0x02700F 09:AFFF: 20 16 B4  JSR sub_B416
C - - - - - 0x027012 09:B002: 20 1C B0  JSR sub_B01C
C - - - - - 0x027015 09:B005: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x027018 09:B008: 29 7F     AND #$7F
C - - - - - 0x02701A 09:B00A: D0 D2     BNE bra_AFDE_RTS
C - - - - - 0x02701C 09:B00C: A5 1F     LDA ram_random
C - - - - - 0x02701E 09:B00E: C9 A0     CMP #$A0
C - - - - - 0x027020 09:B010: B0 05     BCS bra_B017
C - - - - - 0x027022 09:B012: A9 24     LDA #$24
C - - - - - 0x027024 09:B014: 4C 4F 86  JMP loc_864F
bra_B017:
C - - - - - 0x027027 09:B017: A9 26     LDA #$26
C - - - - - 0x027029 09:B019: 4C 4F 86  JMP loc_864F



sub_B01C:
C - - - - - 0x02702C 09:B01C: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x02702F 09:B01F: 29 10     AND #$10
C - - - - - 0x027031 09:B021: F0 02     BEQ bra_B025
C - - - - - 0x027033 09:B023: A9 01     LDA #$01    ; facing left
bra_B025:   ; A = 00 (facing right)
C - - - - - 0x027035 09:B025: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x027038 09:B028: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x02703B 09:B02B: C9 12     CMP #$12
C - - - - - 0x02703D 09:B02D: 90 06     BCC bra_B035
C - - - - - 0x02703F 09:B02F: A9 1F     LDA #$1F
C - - - - - 0x027041 09:B031: 38        SEC
C - - - - - 0x027042 09:B032: FD 65 05  SBC ram_obj_state,X
bra_B035:
C - - - - - 0x027045 09:B035: 4A        LSR
C - - - - - 0x027046 09:B036: 29 FE     AND #$FE
C - - - - - 0x027048 09:B038: 18        CLC
C - - - - - 0x027049 09:B039: 69 9A     ADC #$9A
C - - - - - 0x02704B 09:B03B: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x02704E 09:B03E: 60        RTS



loc_B03F:
C D 1 - - - 0x02704F 09:B03F: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x027051 09:B041: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x027054 09:B044: D0 08     BNE bra_B04E    ; jmp



ofs_042_B046_2D:
C - - J - - 0x027056 09:B046: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x027058 09:B048: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02705B 09:B04B: 20 DE A1  JSR sub_A1DE
bra_B04E:
loc_B04E:
C D 1 - - - 0x02705E 09:B04E: A5 33     LDA ram_blk_lo
C - - - - - 0x027060 09:B050: C9 02     CMP #$02
C - - - - - 0x027062 09:B052: D0 1E     BNE bra_B072
C - - - - - 0x027064 09:B054: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x027067 09:B057: C9 FF     CMP #$FF
C - - - - - 0x027069 09:B059: F0 22     BEQ bra_B07D_FF
C - - - - - 0x02706B 09:B05B: A5 3D     LDA ram_hp_boss
C - - - - - 0x02706D 09:B05D: C9 18     CMP #$18
C - - - - - 0x02706F 09:B05F: B0 11     BCS bra_B072
; dragon snake boss flies away
C - - - - - 0x027071 09:B061: 20 BD B2  JSR sub_B2BD
C - - - - - 0x027074 09:B064: BD 4E 05  LDA ram_obj_id,X
C - - - - - 0x027077 09:B067: D0 01     BNE bra_B06A
C - - - - - 0x027079 09:B069: 60        RTS
bra_B06A:
C - - - - - 0x02707A 09:B06A: A9 00     LDA #$00
C - - - - - 0x02707C 09:B06C: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x02707F 09:B06F: 4C 05 B1  JMP loc_B105
bra_B072:
C - - - - - 0x027082 09:B072: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x027085 09:B075: C9 80     CMP #$80
C - - - - - 0x027087 09:B077: 90 7B     BCC bra_B0F4
C - - - - - 0x027089 09:B079: C9 FE     CMP #$FE
C - - - - - 0x02708B 09:B07B: F0 5F     BEQ bra_B0DC_FE
bra_B07D_FF:
sub_B07D:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x02708D 09:B07D: A9 00     LDA #$00
C - - - - - 0x02708F 09:B07F: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x027092 09:B082: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x027095 09:B085: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x027098 09:B088: A5 33     LDA ram_blk_lo
C - - - - - 0x02709A 09:B08A: C9 02     CMP #$02
C - - - - - 0x02709C 09:B08C: D0 0C     BNE bra_B09A
C - - - - - 0x02709E 09:B08E: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0270A1 09:B091: C9 F8     CMP #$F8
C - - - - - 0x0270A3 09:B093: 90 45     BCC bra_B0DA
C - - - - - 0x0270A5 09:B095: 20 3A 87  JSR sub_873A_clear_object_data
C - - - - - 0x0270A8 09:B098: 38        SEC
C - - - - - 0x0270A9 09:B099: 60        RTS
bra_B09A:
C - - - - - 0x0270AA 09:B09A: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x0270AD 09:B09D: 29 7F     AND #$7F
C - - - - - 0x0270AF 09:B09F: C9 56     CMP #$56
C - - - - - 0x0270B1 09:B0A1: D0 08     BNE bra_B0AB
C - - - - - 0x0270B3 09:B0A3: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x0270B6 09:B0A6: C9 02     CMP #$02
C - - - - - 0x0270B8 09:B0A8: F0 01     BEQ bra_B0AB
C - - - - - 0x0270BA 09:B0AA: 60        RTS
bra_B0AB:
C - - - - - 0x0270BB 09:B0AB: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0270BE 09:B0AE: C5 CA     CMP ram_00CA
C - - - - - 0x0270C0 09:B0B0: 90 28     BCC bra_B0DA
C - - - - - 0x0270C2 09:B0B2: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x0270C5 09:B0B5: 29 7F     AND #$7F
C - - - - - 0x0270C7 09:B0B7: C9 25     CMP #$25
C - - - - - 0x0270C9 09:B0B9: D0 09     BNE bra_B0C4
C - - - - - 0x0270CB 09:B0BB: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x0270CE 09:B0BE: C9 0F     CMP #$0F
C - - - - - 0x0270D0 09:B0C0: D0 18     BNE bra_B0DA
C - - - - - 0x0270D2 09:B0C2: 38        SEC
C - - - - - 0x0270D3 09:B0C3: 60        RTS
bra_B0C4:
C - - - - - 0x0270D4 09:B0C4: 8A        TXA
C - - - - - 0x0270D5 09:B0C5: C9 01     CMP #$01
C - - - - - 0x0270D7 09:B0C7: F0 05     BEQ bra_B0CE
C - - - - - 0x0270D9 09:B0C9: A9 FE     LDA #$FE
C - - - - - 0x0270DB 09:B0CB: 9D 06 06  STA ram_obj_config,X
bra_B0CE:
C - - - - - 0x0270DE 09:B0CE: A9 0A     LDA #con_obj_type_0A
C - - - - - 0x0270E0 09:B0D0: A0 43     LDY #$43
C - - - - - 0x0270E2 09:B0D2: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x0270E5 09:B0D5: A9 25     LDA #$25
C - - - - - 0x0270E7 09:B0D7: 20 4F 86  JSR sub_864F
bra_B0DA:
C - - - - - 0x0270EA 09:B0DA: 18        CLC
C - - - - - 0x0270EB 09:B0DB: 60        RTS
bra_B0DC_FE:
C - - - - - 0x0270EC 09:B0DC: A9 00     LDA #$00
C - - - - - 0x0270EE 09:B0DE: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0270F1 09:B0E1: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x0270F4 09:B0E4: 29 7F     AND #$7F
C - - - - - 0x0270F6 09:B0E6: D0 0B     BNE bra_B0F3_RTS
C - - - - - 0x0270F8 09:B0E8: A9 00     LDA #$00
C - - - - - 0x0270FA 09:B0EA: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x0270FD 09:B0ED: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x027100 09:B0F0: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
bra_B0F3_RTS:
C - - - - - 0x027103 09:B0F3: 60        RTS
bra_B0F4:
C - - - - - 0x027104 09:B0F4: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x027107 09:B0F7: 29 F0     AND #$F0
C - - - - - 0x027109 09:B0F9: F0 0A     BEQ bra_B105
C - - - - - 0x02710B 09:B0FB: A9 28     LDA #con_sound_28
C - - - - - 0x02710D 09:B0FD: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x027110 09:B100: A9 00     LDA #$00
C - - - - - 0x027112 09:B102: 9D 69 06  STA ram_obj_066A,X
bra_B105:
loc_B105:
C D 1 - - - 0x027115 09:B105: AD F3 07  LDA ram_07F3
C - - - - - 0x027118 09:B108: 29 80     AND #$80
C - - - - - 0x02711A 09:B10A: D0 03     BNE bra_B10F
C - - - - - 0x02711C 09:B10C: 20 16 B4  JSR sub_B416
bra_B10F:
C - - - - - 0x02711F 09:B10F: BD F2 04  LDA ram_obj_spd_X_hi,X
C - - - - - 0x027122 09:B112: 1D 09 05  ORA ram_obj_spd_X_lo,X
C - - - - - 0x027125 09:B115: 1D 20 05  ORA ram_obj_spd_Y_hi,X
C - - - - - 0x027128 09:B118: 1D 37 05  ORA ram_obj_spd_Y_lo,X
C - - - - - 0x02712B 09:B11B: D0 6B     BNE bra_B188
; if not moving
C - - - - - 0x02712D 09:B11D: AD F3 04  LDA ram_obj_spd_X_hi + $01
C - - - - - 0x027130 09:B120: 0D 0A 05  ORA ram_obj_spd_X_lo + $01
C - - - - - 0x027133 09:B123: 0D 21 05  ORA ram_obj_spd_Y_hi + $01
C - - - - - 0x027136 09:B126: 0D 38 05  ORA ram_obj_spd_Y_lo + $01
C - - - - - 0x027139 09:B129: F0 24     BEQ bra_B14F
; if moving
C - - - - - 0x02713B 09:B12B: AD F3 04  LDA ram_obj_spd_X_hi + $01
C - - - - - 0x02713E 09:B12E: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x027141 09:B131: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x027144 09:B134: AD 0A 05  LDA ram_obj_spd_X_lo + $01
C - - - - - 0x027147 09:B137: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x02714A 09:B13A: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x02714D 09:B13D: AD 21 05  LDA ram_obj_spd_Y_hi + $01
C - - - - - 0x027150 09:B140: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x027153 09:B143: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x027156 09:B146: AD 38 05  LDA ram_obj_spd_Y_lo + $01
C - - - - - 0x027159 09:B149: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x02715C 09:B14C: 9D 45 06  STA ram_obj_0646,X
bra_B14F:
C - - - - - 0x02715F 09:B14F: AD 66 05  LDA ram_obj_state + $01
C - - - - - 0x027162 09:B152: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x027165 09:B155: 20 3B B4  JSR sub_B43B
sub_B158:
C - - - - - 0x027168 09:B158: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x02716B 09:B15B: 18        CLC
C - - - - - 0x02716C 09:B15C: 69 10     ADC #$10
C - - - - - 0x02716E 09:B15E: 29 1F     AND #$1F
C - - - - - 0x027170 09:B160: 0A        ASL
C - - - - - 0x027171 09:B161: E0 02     CPX #$02
C - - - - - 0x027173 09:B163: D0 03     BNE bra_B168
C - - - - - 0x027175 09:B165: 18        CLC
C - - - - - 0x027176 09:B166: 69 40     ADC #$40
bra_B168:
C - - - - - 0x027178 09:B168: A8        TAY
C - - - - - 0x027179 09:B169: B9 23 B2  LDA tbl_B223_positions_hi,Y
C - - - - - 0x02717C 09:B16C: 85 08     STA ram_0008_temp
C - - - - - 0x02717E 09:B16E: B9 24 B2  LDA tbl_B223_positions_hi + $01,Y
C - - - - - 0x027181 09:B171: 85 09     STA ram_0009_temp
C - - - - - 0x027183 09:B173: A4 00     LDY ram_0000_temp
C - - - - - 0x027185 09:B175: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x027188 09:B178: 18        CLC
C - - - - - 0x027189 09:B179: 65 08     ADC ram_0008_temp
C - - - - - 0x02718B 09:B17B: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02718E 09:B17E: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x027191 09:B181: 18        CLC
C - - - - - 0x027192 09:B182: 65 09     ADC ram_0009_temp
C - - - - - 0x027194 09:B184: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x027197 09:B187: 60        RTS
bra_B188:
C - - - - - 0x027198 09:B188: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x02719B 09:B18B: C9 0B     CMP #$0B
C - - - - - 0x02719D 09:B18D: D0 16     BNE bra_B1A5
C - - - - - 0x02719F 09:B18F: A9 40     LDA #con_obj_flag_40
C - - - - - 0x0271A1 09:B191: 1D 70 04  ORA ram_obj_flags,X
C - - - - - 0x0271A4 09:B194: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0271A7 09:B197: 20 B7 B2  JSR sub_B2B7
C - - - - - 0x0271AA 09:B19A: 20 58 B1  JSR sub_B158
C - - - - - 0x0271AD 09:B19D: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x0271B0 09:B1A0: D0 03     BNE bra_B1A5
- - - - - - 0x0271B2 09:B1A2: 20 3D B3  JSR sub_B33D
bra_B1A5:
C - - - - - 0x0271B5 09:B1A5: 20 B7 B2  JSR sub_B2B7
C - - - - - 0x0271B8 09:B1A8: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x0271BB 09:B1AB: D0 3F     BNE bra_B1EC
C - - - - - 0x0271BD 09:B1AD: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x0271C0 09:B1B0: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x0271C3 09:B1B3: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x0271C6 09:B1B6: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x0271C9 09:B1B9: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x0271CC 09:B1BC: 9D 20 05  STA ram_obj_spd_Y_hi,X
C - - - - - 0x0271CF 09:B1BF: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x0271D2 09:B1C2: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x0271D5 09:B1C5: B9 F2 04  LDA ram_obj_spd_X_hi,Y
C - - - - - 0x0271D8 09:B1C8: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x0271DB 09:B1CB: B9 09 05  LDA ram_obj_spd_X_lo,Y
C - - - - - 0x0271DE 09:B1CE: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x0271E1 09:B1D1: B9 20 05  LDA ram_obj_spd_Y_hi,Y
C - - - - - 0x0271E4 09:B1D4: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x0271E7 09:B1D7: B9 37 05  LDA ram_obj_spd_Y_lo,Y
C - - - - - 0x0271EA 09:B1DA: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x0271ED 09:B1DD: 20 3B B4  JSR sub_B43B
C - - - - - 0x0271F0 09:B1E0: AC 1E 06  LDY ram_061D_obj + $01
C - - - - - 0x0271F3 09:B1E3: B9 40 99  LDA tbl_9940,Y
C - - - - - 0x0271F6 09:B1E6: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x0271F9 09:B1E9: 4C F3 B1  JMP loc_B1F3
bra_B1EC:
C - - - - - 0x0271FC 09:B1EC: 20 4A B4  JSR sub_B44A
C - - - - - 0x0271FF 09:B1EF: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x027202 09:B1F2: 60        RTS



loc_B1F3:
C D 1 - - - 0x027203 09:B1F3: A0 A4     LDY #$A4
C - - - - - 0x027205 09:B1F5: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x027208 09:B1F8: C9 0B     CMP #$0B
C - - - - - 0x02720A 09:B1FA: D0 02     BNE bra_B1FE
C - - - - - 0x02720C 09:B1FC: A0 AE     LDY #$AE
bra_B1FE:
C - - - - - 0x02720E 09:B1FE: 84 02     STY ram_0002_temp
C - - - - - 0x027210 09:B200: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x027213 09:B203: 29 10     AND #$10
C - - - - - 0x027215 09:B205: F0 02     BEQ bra_B209
C - - - - - 0x027217 09:B207: A9 01     LDA #$01    ; facing left
bra_B209:   ; A = 00 (facing right)
C - - - - - 0x027219 09:B209: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x02721C 09:B20C: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x02721F 09:B20F: C9 12     CMP #$12
C - - - - - 0x027221 09:B211: 90 06     BCC bra_B219
C - - - - - 0x027223 09:B213: A9 1F     LDA #$1F
C - - - - - 0x027225 09:B215: 38        SEC
C - - - - - 0x027226 09:B216: FD 65 05  SBC ram_obj_state,X
bra_B219:
C - - - - - 0x027229 09:B219: 4A        LSR
C - - - - - 0x02722A 09:B21A: 29 FE     AND #$FE
C - - - - - 0x02722C 09:B21C: 18        CLC
C - - - - - 0x02722D 09:B21D: 65 02     ADC ram_0002_temp
C - - - - - 0x02722F 09:B21F: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x027232 09:B222: 60        RTS



tbl_B223_positions_hi:
;                                              +---------- pos_X_hi
;                                              |    +----- pos_Y_hi
;                                              |    |
- D 1 - - - 0x027233 09:B223: 00        .byte $00, $F6   ; 00 
- D 1 - - - 0x027235 09:B225: 02        .byte $02, $F6   ; 01 
- D 1 - - - 0x027237 09:B227: 04        .byte $04, $F7   ; 02 
- D 1 - - - 0x027239 09:B229: 06        .byte $06, $F8   ; 03 
- D 1 - - - 0x02723B 09:B22B: 07        .byte $07, $F9   ; 04 
- D 1 - - - 0x02723D 09:B22D: 08        .byte $08, $FA   ; 05 
- D 1 - - - 0x02723F 09:B22F: 09        .byte $09, $FC   ; 06 
- D 1 - - - 0x027241 09:B231: 0A        .byte $0A, $FE   ; 07 
- D 1 - - - 0x027243 09:B233: 0A        .byte $0A, $00   ; 08 
- D 1 - - - 0x027245 09:B235: 0A        .byte $0A, $02   ; 09 
- D 1 - - - 0x027247 09:B237: 09        .byte $09, $04   ; 0A 
- D 1 - - - 0x027249 09:B239: 08        .byte $08, $06   ; 0B 
- D 1 - - - 0x02724B 09:B23B: 07        .byte $07, $07   ; 0C 
- D 1 - - - 0x02724D 09:B23D: 06        .byte $06, $08   ; 0D 
- D 1 - - - 0x02724F 09:B23F: 04        .byte $04, $09   ; 0E 
- D 1 - - - 0x027251 09:B241: 02        .byte $02, $0A   ; 0F 
- D 1 - - - 0x027253 09:B243: 00        .byte $00, $0A   ; 10 
- D 1 - - - 0x027255 09:B245: FE        .byte $FE, $0A   ; 11 
- D 1 - - - 0x027257 09:B247: FC        .byte $FC, $09   ; 12 
- D 1 - - - 0x027259 09:B249: FA        .byte $FA, $08   ; 13 
- D 1 - - - 0x02725B 09:B24B: F9        .byte $F9, $07   ; 14 
- D 1 - - - 0x02725D 09:B24D: F8        .byte $F8, $06   ; 15 
- D 1 - - - 0x02725F 09:B24F: F7        .byte $F7, $04   ; 16 
- D 1 - - - 0x027261 09:B251: F6        .byte $F6, $02   ; 17 
- D 1 - - - 0x027263 09:B253: F6        .byte $F6, $00   ; 18 
- - - - - - 0x027265 09:B255: F6        .byte $F6, $FE   ; 19 
- - - - - - 0x027267 09:B257: F7        .byte $F7, $FC   ; 1A 
- - - - - - 0x027269 09:B259: F8        .byte $F8, $FA   ; 1B 
- D 1 - - - 0x02726B 09:B25B: F9        .byte $F9, $F9   ; 1C 
- - - - - - 0x02726D 09:B25D: FA        .byte $FA, $F8   ; 1D 
- D 1 - - - 0x02726F 09:B25F: FC        .byte $FC, $F7   ; 1E 
- D 1 - - - 0x027271 09:B261: FE        .byte $FE, $F6   ; 1F 
- - - - - - 0x027273 09:B263: 00        .byte $00, $F2   ; 20 
- - - - - - 0x027275 09:B265: 03        .byte $03, $F2   ; 21 
- - - - - - 0x027277 09:B267: 06        .byte $06, $F3   ; 22 
- - - - - - 0x027279 09:B269: 08        .byte $08, $F5   ; 23 
- - - - - - 0x02727B 09:B26B: 0A        .byte $0A, $F6   ; 24 
- - - - - - 0x02727D 09:B26D: 0B        .byte $0B, $F8   ; 25 
- - - - - - 0x02727F 09:B26F: 0D        .byte $0D, $FA   ; 26 
- - - - - - 0x027281 09:B271: 0E        .byte $0E, $FD   ; 27 
- - - - - - 0x027283 09:B273: 0E        .byte $0E, $00   ; 28 
- - - - - - 0x027285 09:B275: 0E        .byte $0E, $03   ; 29 
- - - - - - 0x027287 09:B277: 0D        .byte $0D, $06   ; 2A 
- - - - - - 0x027289 09:B279: 0B        .byte $0B, $08   ; 2B 
- - - - - - 0x02728B 09:B27B: 0A        .byte $0A, $0A   ; 2C 
- - - - - - 0x02728D 09:B27D: 08        .byte $08, $0B   ; 2D 
- - - - - - 0x02728F 09:B27F: 06        .byte $06, $0D   ; 2E 
- - - - - - 0x027291 09:B281: 03        .byte $03, $0E   ; 2F 
- - - - - - 0x027293 09:B283: 00        .byte $00, $0E   ; 30 
- - - - - - 0x027295 09:B285: FD        .byte $FD, $0E   ; 31 
- - - - - - 0x027297 09:B287: FA        .byte $FA, $0D   ; 32 
- - - - - - 0x027299 09:B289: F8        .byte $F8, $0B   ; 33 
- - - - - - 0x02729B 09:B28B: F6        .byte $F6, $0A   ; 34 
- - - - - - 0x02729D 09:B28D: F5        .byte $F5, $08   ; 35 
- - - - - - 0x02729F 09:B28F: F3        .byte $F3, $06   ; 36 
- - - - - - 0x0272A1 09:B291: F2        .byte $F2, $03   ; 37 
- D 1 - - - 0x0272A3 09:B293: F2        .byte $F2, $00   ; 38 
- - - - - - 0x0272A5 09:B295: F2        .byte $F2, $FD   ; 39 
- - - - - - 0x0272A7 09:B297: F3        .byte $F3, $FA   ; 3A 
- - - - - - 0x0272A9 09:B299: F2        .byte $F2, $FD   ; 3B 
- - - - - - 0x0272AB 09:B29B: F6        .byte $F6, $F6   ; 3C 
- - - - - - 0x0272AD 09:B29D: F8        .byte $F8, $F5   ; 3D 
- - - - - - 0x0272AF 09:B29F: FA        .byte $FA, $F3   ; 3E 
- - - - - - 0x0272B1 09:B2A1: FD        .byte $FD, $F2   ; 3F 
- - - - - - 0x0272B3 09:B2A3: 08        .byte $08, $08   ; 40 
- - - - - - 0x0272B5 09:B2A5: 08        .byte $08, $08   ; 41 
- - - - - - 0x0272B7 09:B2A7: 08        .byte $08, $08   ; 42 
- - - - - - 0x0272B9 09:B2A9: 08        .byte $08, $08   ; 43 
- - - - - - 0x0272BB 09:B2AB: 08        .byte $08, $08   ; 44 
- - - - - - 0x0272BD 09:B2AD: 08        .byte $08, $08   ; 45 
- - - - - - 0x0272BF 09:B2AF: 08        .byte $08, $08   ; 46 
- - - - - - 0x0272C1 09:B2B1: 08        .byte $08, $08   ; 47 
- - - - - - 0x0272C3 09:B2B3: 08        .byte $08, $08   ; 48 
- - - - - - 0x0272C5 09:B2B5: 08        .byte $08, $08   ; 49 



sub_B2B7:
C - - - - - 0x0272C7 09:B2B7: 8A        TXA
C - - - - - 0x0272C8 09:B2B8: A8        TAY
C - - - - - 0x0272C9 09:B2B9: 88        DEY
C - - - - - 0x0272CA 09:B2BA: 84 00     STY ram_0000_temp
C - - - - - 0x0272CC 09:B2BC: 60        RTS



sub_B2BD:
C - - - - - 0x0272CD 09:B2BD: AD 4F 05  LDA ram_obj_id + $01
C - - - - - 0x0272D0 09:B2C0: D0 18     BNE bra_B2DA_RTS
C - - - - - 0x0272D2 09:B2C2: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0272D5 09:B2C5: 85 00     STA ram_0000_temp
C - - - - - 0x0272D7 09:B2C7: A5 D1     LDA ram_00D1
C - - - - - 0x0272D9 09:B2C9: 29 80     AND #$80
C - - - - - 0x0272DB 09:B2CB: F0 05     BEQ bra_B2D2
C - - - - - 0x0272DD 09:B2CD: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0272E0 09:B2D0: 85 00     STA ram_0000_temp
bra_B2D2:
C - - - - - 0x0272E2 09:B2D2: A5 D1     LDA ram_00D1
C - - - - - 0x0272E4 09:B2D4: 0A        ASL
C - - - - - 0x0272E5 09:B2D5: 85 01     STA ram_0001_temp
C - - - - - 0x0272E7 09:B2D7: 4C 07 B3  JMP loc_B307
bra_B2DA_RTS:
C - - - - - 0x0272EA 09:B2DA: 60        RTS



loc_B2DB:
C D 1 - - - 0x0272EB 09:B2DB: AD F0 05  LDA ram_05EF_obj + $01
C - - - - - 0x0272EE 09:B2DE: 29 7F     AND #$7F
C - - - - - 0x0272F0 09:B2E0: C9 49     CMP #$49
C - - - - - 0x0272F2 09:B2E2: D0 07     BNE bra_B2EB_RTS
C - - - - - 0x0272F4 09:B2E4: AD C2 05  LDA ram_05C1_obj + $01
C - - - - - 0x0272F7 09:B2E7: C9 06     CMP #$06
C - - - - - 0x0272F9 09:B2E9: B0 01     BCS bra_B2EC
bra_B2EB_RTS:
C - - - - - 0x0272FB 09:B2EB: 60        RTS
bra_B2EC:
C - - - - - 0x0272FC 09:B2EC: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0272FF 09:B2EF: 85 00     STA ram_0000_temp
C - - - - - 0x027301 09:B2F1: A9 80     LDA #$80
C - - - - - 0x027303 09:B2F3: 85 01     STA ram_0001_temp
C - - - - - 0x027305 09:B2F5: A9 38     LDA #$38
C - - - - - 0x027307 09:B2F7: 85 02     STA ram_0002_temp
C - - - - - 0x027309 09:B2F9: 20 55 B3  JSR sub_B355
C - - - - - 0x02730C 09:B2FC: B0 56     BCS bra_B354_RTS
C - - - - - 0x02730E 09:B2FE: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x027311 09:B301: 85 00     STA ram_0000_temp
C - - - - - 0x027313 09:B303: A9 40     LDA #$40
C - - - - - 0x027315 09:B305: 85 01     STA ram_0001_temp
loc_B307:
C D 1 - - - 0x027317 09:B307: A9 04     LDA #$04
C - - - - - 0x027319 09:B309: 85 02     STA ram_0002_temp
C - - - - - 0x02731B 09:B30B: 20 55 B3  JSR sub_B355
C - - - - - 0x02731E 09:B30E: B0 44     BCS bra_B354_RTS
C - - - - - 0x027320 09:B310: E0 01     CPX #$01
C - - - - - 0x027322 09:B312: D0 29     BNE bra_B33D
C - - - - - 0x027324 09:B314: BD 20 05  LDA ram_obj_spd_Y_hi,X
C - - - - - 0x027327 09:B317: F0 0D     BEQ bra_B326
C - - - - - 0x027329 09:B319: C9 FF     CMP #$FF
C - - - - - 0x02732B 09:B31B: D0 10     BNE bra_B32D
- - - - - - 0x02732D 09:B31D: BD 37 05  LDA ram_obj_spd_Y_lo,X
- - - - - - 0x027330 09:B320: C9 C0     CMP #$C0
- - - - - - 0x027332 09:B322: B0 13     BCS bra_B337
- - - - - - 0x027334 09:B324: 90 07     BCC bra_B32D    ; jmp
bra_B326:
- - - - - - 0x027336 09:B326: BD 37 05  LDA ram_obj_spd_Y_lo,X
- - - - - - 0x027339 09:B329: C9 40     CMP #$40
- - - - - - 0x02733B 09:B32B: 90 0A     BCC bra_B337
bra_B32D:
C - - - - - 0x02733D 09:B32D: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x027340 09:B330: 4A        LSR
C - - - - - 0x027341 09:B331: 09 80     ORA #$80
C - - - - - 0x027343 09:B333: 85 D1     STA ram_00D1
C - - - - - 0x027345 09:B335: D0 06     BNE bra_B33D    ; jmp
bra_B337:
- - - - - - 0x027347 09:B337: BD 38 04  LDA ram_obj_pos_X_hi,X
- - - - - - 0x02734A 09:B33A: 4A        LSR
- - - - - - 0x02734B 09:B33B: 85 D1     STA ram_00D1
bra_B33D:
sub_B33D:
C - - - - - 0x02734D 09:B33D: A9 00     LDA #$00
C - - - - - 0x02734F 09:B33F: 9D 4E 05  STA ram_obj_id,X
C - - - - - 0x027352 09:B342: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x027355 09:B345: 9D AA 05  STA ram_05AA_obj,X
C - - - - - 0x027358 09:B348: 9D 8C 04  STA ram_obj_type,X  ; con_obj_type_00
C - - - - - 0x02735B 09:B34B: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02735E 09:B34E: 9D C1 05  STA ram_05C1_obj,X
; bzk optimize, JMP
C - - - - - 0x027361 09:B351: 20 9E B3  JSR sub_B39E
bra_B354_RTS:
C - - - - - 0x027364 09:B354: 60        RTS



sub_B355:
; out
    ; C
        ; 0 = 
        ; 1 = 
C - - - - - 0x027365 09:B355: A5 00     LDA ram_0000_temp
C - - - - - 0x027367 09:B357: 38        SEC
C - - - - - 0x027368 09:B358: E5 01     SBC ram_0001_temp
C - - - - - 0x02736A 09:B35A: B0 05     BCS bra_B361
C - - - - - 0x02736C 09:B35C: 49 FF     EOR #$FF
C - - - - - 0x02736E 09:B35E: 18        CLC
C - - - - - 0x02736F 09:B35F: 69 01     ADC #$01
bra_B361:
C - - - - - 0x027371 09:B361: C5 02     CMP ram_0002_temp
bra_B363_RTS:
C - - - - - 0x027373 09:B363: 60        RTS



sub_B364:
C - - - - - 0x027374 09:B364: BC 1D 06  LDY ram_061D_obj,X
C - - - - - 0x027377 09:B367: 88        DEY
C - - - - - 0x027378 09:B368: F0 F9     BEQ bra_B363_RTS
; bzk optimize, DEC,X
C - - - - - 0x02737A 09:B36A: 98        TYA
C - - - - - 0x02737B 09:B36B: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02737E 09:B36E: A0 02     LDY #$02
bra_B370_loop:
C - - - - - 0x027380 09:B370: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x027383 09:B373: C9 2D     CMP #$2D
C - - - - - 0x027385 09:B375: D0 17     BNE bra_B38E
C - - - - - 0x027387 09:B377: B9 06 06  LDA ram_obj_config,Y
C - - - - - 0x02738A 09:B37A: C9 80     CMP #$80
C - - - - - 0x02738C 09:B37C: B0 10     BCS bra_B38E
C - - - - - 0x02738E 09:B37E: A9 00     LDA #$00
C - - - - - 0x027390 09:B380: 99 69 06  STA ram_obj_066A,Y
C - - - - - 0x027393 09:B383: BD 8D 06  LDA ram_obj_068E,X
C - - - - - 0x027396 09:B386: 99 8D 06  STA ram_obj_068E,Y
C - - - - - 0x027399 09:B389: C8        INY
C - - - - - 0x02739A 09:B38A: C0 0E     CPY #$0E
C - - - - - 0x02739C 09:B38C: D0 E2     BNE bra_B370_loop
bra_B38E:
C - - - - - 0x02739E 09:B38E: 88        DEY
C - - - - - 0x02739F 09:B38F: A9 FF     LDA #$FF
C - - - - - 0x0273A1 09:B391: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x0273A4 09:B394: 98        TYA
C - - - - - 0x0273A5 09:B395: AA        TAX
C - - - - - 0x0273A6 09:B396: A9 17     LDA #$17
C - - - - - 0x0273A8 09:B398: 20 4F 86  JSR sub_864F
C - - - - - 0x0273AB 09:B39B: A6 6C     LDX ram_006C_object_index
C - - - - - 0x0273AD 09:B39D: 60        RTS



sub_B39E:
C - - - - - 0x0273AE 09:B39E: A9 00     LDA #$00
C - - - - - 0x0273B0 09:B3A0: 85 00     STA ram_0000_temp    ; counter
C - - - - - 0x0273B2 09:B3A2: A0 01     LDY #$01
bra_B3A4_loop:
C - - - - - 0x0273B4 09:B3A4: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x0273B7 09:B3A7: F0 02     BEQ bra_B3AB
C - - - - - 0x0273B9 09:B3A9: E6 00     INC ram_0000_temp    ; counter
bra_B3AB:
C - - - - - 0x0273BB 09:B3AB: C8        INY
C - - - - - 0x0273BC 09:B3AC: C0 0D     CPY #$0D
C - - - - - 0x0273BE 09:B3AE: D0 F4     BNE bra_B3A4_loop
C - - - - - 0x0273C0 09:B3B0: A5 00     LDA ram_0000_temp    ; counter
C - - - - - 0x0273C2 09:B3B2: D0 0D     BNE bra_B3C1_RTS
; if all object slots are free?
; if that's the case, then
; bzk optimize, branch from the loop above to the RTS
; as soon as non-empty slot is found,
; unless 0000 counter is used outside
C - - - - - 0x0273C4 09:B3B4: AD 1E 06  LDA ram_061D_obj + $01
C - - - - - 0x0273C7 09:B3B7: 85 BE     STA ram_00BE
C - - - - - 0x0273C9 09:B3B9: A9 1C     LDA #con_002A_1C
C - - - - - 0x0273CB 09:B3BB: 85 2A     STA ram_002A_script
C - - - - - 0x0273CD 09:B3BD: A5 3D     LDA ram_hp_boss
C - - - - - 0x0273CF 09:B3BF: 85 BD     STA ram_copy_hp_boss
bra_B3C1_RTS:
C - - - - - 0x0273D1 09:B3C1: 60        RTS



loc_B3C2:
C D 1 - - - 0x0273D2 09:B3C2: A0 01     LDY #$01
bra_B3C4_loop:
C - - - - - 0x0273D4 09:B3C4: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x0273D7 09:B3C7: C9 06     CMP #$06
C - - - - - 0x0273D9 09:B3C9: F0 04     BEQ bra_B3CF
C - - - - - 0x0273DB 09:B3CB: C9 2D     CMP #$2D
C - - - - - 0x0273DD 09:B3CD: D0 31     BNE bra_B400
bra_B3CF:
C - - - - - 0x0273DF 09:B3CF: A9 00     LDA #$00
C - - - - - 0x0273E1 09:B3D1: 99 69 06  STA ram_obj_066A,Y
C - - - - - 0x0273E4 09:B3D4: C0 01     CPY #$01
C - - - - - 0x0273E6 09:B3D6: D0 07     BNE bra_B3DF
C - - - - - 0x0273E8 09:B3D8: A9 FF     LDA #$FF
C - - - - - 0x0273EA 09:B3DA: 99 1D 06  STA ram_061D_obj,Y
C - - - - - 0x0273ED 09:B3DD: D0 05     BNE bra_B3E4    ; jmp
bra_B3DF:
C - - - - - 0x0273EF 09:B3DF: A9 FF     LDA #$FF
C - - - - - 0x0273F1 09:B3E1: 99 06 06  STA ram_obj_config,Y
bra_B3E4:
C - - - - - 0x0273F4 09:B3E4: B9 06 B4  LDA tbl_B406,Y
C - - - - - 0x0273F7 09:B3E7: 99 D8 05  STA ram_05D8_obj,Y
C - - - - - 0x0273FA 09:B3EA: A9 D6     LDA #$D6
C - - - - - 0x0273FC 09:B3EC: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x0273FF 09:B3EF: A9 00     LDA #$00
C - - - - - 0x027401 09:B3F1: 99 C1 05  STA ram_05C1_obj,Y
C - - - - - 0x027404 09:B3F4: 99 F2 04  STA ram_obj_spd_X_hi,Y
C - - - - - 0x027407 09:B3F7: 99 09 05  STA ram_obj_spd_X_lo,Y
C - - - - - 0x02740A 09:B3FA: 99 20 05  STA ram_obj_spd_Y_hi,Y
C - - - - - 0x02740D 09:B3FD: 99 37 05  STA ram_obj_spd_Y_lo,Y
bra_B400:
C - - - - - 0x027410 09:B400: C8        INY
C - - - - - 0x027411 09:B401: C0 0E     CPY #$0E
C - - - - - 0x027413 09:B403: D0 BF     BNE bra_B3C4_loop
C - - - - - 0x027415 09:B405: 60        RTS



tbl_B406:
- - - - - - 0x027416 09:B406: C0        .byte $C0   ; 00 placeholder
- D 1 - - - 0x027417 09:B407: B0        .byte $B0   ; 01 
- D 1 - - - 0x027418 09:B408: A0        .byte $A0   ; 02 
- D 1 - - - 0x027419 09:B409: 90        .byte $90   ; 03 
- - - - - - 0x02741A 09:B40A: 80        .byte $80   ; 04 
- - - - - - 0x02741B 09:B40B: 70        .byte $70   ; 05 
- - - - - - 0x02741C 09:B40C: 60        .byte $60   ; 06 
- - - - - - 0x02741D 09:B40D: 50        .byte $50   ; 07 
- - - - - - 0x02741E 09:B40E: 40        .byte $40   ; 08 
- - - - - - 0x02741F 09:B40F: 30        .byte $30   ; 09 
- - - - - - 0x027420 09:B410: 20        .byte $20   ; 0A 
- - - - - - 0x027421 09:B411: 10        .byte $10   ; 0B 
- - - - - - 0x027422 09:B412: 10        .byte $10   ; 0C 
- - - - - - 0x027423 09:B413: 10        .byte $10   ; 0D 


; bzk garbage 0x027411
- - - - - - 0x027424 09:B414: 10        .byte $10   ; 0E 
- - - - - - 0x027425 09:B415: 10        .byte $10   ; 0F 



sub_B416:
C - - - - - 0x027426 09:B416: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x027429 09:B419: C9 04     CMP #$04
C - - - - - 0x02742B 09:B41B: B0 02     BCS bra_B41F_not_underflow
C - - - - - 0x02742D 09:B41D: A9 04     LDA #$04
bra_B41F_not_underflow:
C - - - - - 0x02742F 09:B41F: C9 FC     CMP #$FC
C - - - - - 0x027431 09:B421: 90 02     BCC bra_B425_not_overflow
C - - - - - 0x027433 09:B423: A9 FB     LDA #$FB
bra_B425_not_overflow:
C - - - - - 0x027435 09:B425: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x027438 09:B428: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02743B 09:B42B: C9 30     CMP #$30
C - - - - - 0x02743D 09:B42D: B0 02     BCS bra_B431_not_underflow
C - - - - - 0x02743F 09:B42F: A9 30     LDA #$30
bra_B431_not_underflow:
C - - - - - 0x027441 09:B431: C9 F0     CMP #$F0
C - - - - - 0x027443 09:B433: 90 02     BCC bra_B437_not_overflow
- - - - - - 0x027445 09:B435: A9 EF     LDA #$EF
bra_B437_not_overflow:
C - - - - - 0x027447 09:B437: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02744A 09:B43A: 60        RTS



sub_B43B:
C - - - - - 0x02744B 09:B43B: 8A        TXA
C - - - - - 0x02744C 09:B43C: A8        TAY
C - - - - - 0x02744D 09:B43D: 88        DEY
C - - - - - 0x02744E 09:B43E: 84 00     STY ram_0000_temp
C - - - - - 0x027450 09:B440: B9 65 05  LDA ram_obj_state,Y
C - - - - - 0x027453 09:B443: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x027456 09:B446: 99 82 07  STA ram_0782,Y
C - - - - - 0x027459 09:B449: 60        RTS



sub_B44A:
C - - - - - 0x02745A 09:B44A: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x02745D 09:B44D: B9 82 07  LDA ram_0782,Y
C - - - - - 0x027460 09:B450: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x027463 09:B453: 60        RTS



sub_B454:
C - - - - - 0x027464 09:B454: A9 26     LDA #$26
C - - - - - 0x027466 09:B456: 20 C5 87  JSR sub_87C5
C - - - - - 0x027469 09:B459: A9 88     LDA #con_obj_flag_08 + con_obj_flag_not_visible
C - - - - - 0x02746B 09:B45B: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x02746E 09:B45E: A9 48     LDA #$48
C - - - - - 0x027470 09:B460: 99 1C 04  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x027473 09:B463: A9 20     LDA #$20
C - - - - - 0x027475 09:B465: 99 38 04  STA ram_obj_pos_X_hi,Y
C - - - - - 0x027478 09:B468: 84 16     STY ram_0016_temp
C - - - - - 0x02747A 09:B46A: A5 17     LDA ram_0017_temp
C - - - - - 0x02747C 09:B46C: 29 07     AND #$07
C - - - - - 0x02747E 09:B46E: 0A        ASL
; bzk optimize, 0000-0003 probably are not needed outside,
; use X for reading tables (PHA beforehand) and set directly to speed
C - - - - - 0x02747F 09:B46F: A8        TAY
C - - - - - 0x027480 09:B470: B9 D3 B4  LDA tbl_B4D3_spd_X,Y
C - - - - - 0x027483 09:B473: 85 00     STA ram_0000_temp
C - - - - - 0x027485 09:B475: B9 D4 B4  LDA tbl_B4D3_spd_X + $01,Y
C - - - - - 0x027488 09:B478: 85 01     STA ram_0001_temp
C - - - - - 0x02748A 09:B47A: B9 E1 B4  LDA tbl_B4E1_spd_Y,Y
C - - - - - 0x02748D 09:B47D: 85 02     STA ram_0002_temp
C - - - - - 0x02748F 09:B47F: B9 E2 B4  LDA tbl_B4E1_spd_Y + $01,Y
C - - - - - 0x027492 09:B482: 85 03     STA ram_0003_temp
C - - - - - 0x027494 09:B484: A4 16     LDY ram_0016_temp
C - - - - - 0x027496 09:B486: A5 00     LDA ram_0000_temp
C - - - - - 0x027498 09:B488: 99 09 05  STA ram_obj_spd_X_lo,Y
C - - - - - 0x02749B 09:B48B: A5 01     LDA ram_0001_temp
C - - - - - 0x02749D 09:B48D: 99 F2 04  STA ram_obj_spd_X_hi,Y
C - - - - - 0x0274A0 09:B490: A5 02     LDA ram_0002_temp
C - - - - - 0x0274A2 09:B492: 99 37 05  STA ram_obj_spd_Y_lo,Y
C - - - - - 0x0274A5 09:B495: A5 03     LDA ram_0003_temp
C - - - - - 0x0274A7 09:B497: 99 20 05  STA ram_obj_spd_Y_hi,Y
C - - - - - 0x0274AA 09:B49A: 8A        TXA
C - - - - - 0x0274AB 09:B49B: 99 06 06  STA ram_obj_config,Y
bra_B49E_RTS:
C - - - - - 0x0274AE 09:B49E: 60        RTS



ofs_042_B49F_26:
C - - J - - 0x0274AF 09:B49F: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x0274B2 09:B4A2: B9 70 04  LDA ram_obj_flags,Y
C - - - - - 0x0274B5 09:B4A5: 29 88     AND #con_obj_flag_08 + con_obj_flag_not_visible
C - - - - - 0x0274B7 09:B4A7: D0 F5     BNE bra_B49E_RTS
C - - - - - 0x0274B9 09:B4A9: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x0274BC 09:B4AC: 29 7F     AND #$7F
C - - - - - 0x0274BE 09:B4AE: D0 19     BNE bra_B4C9
C - - - - - 0x0274C0 09:B4B0: A9 34     LDA #con_sound_destroy_block
C - - - - - 0x0274C2 09:B4B2: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x0274C5 09:B4B5: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x0274C7 09:B4B7: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x0274CA 09:B4BA: A9 18     LDA #$18
C - - - - - 0x0274CC 09:B4BC: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x0274CF 09:B4BF: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x0274D1 09:B4C1: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0274D4 09:B4C4: A9 55     LDA #$55
C - - - - - 0x0274D6 09:B4C6: 4C 4F 86  JMP loc_864F
bra_B4C9:
C - - - - - 0x0274D9 09:B4C9: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x0274DC 09:B4CC: C9 F8     CMP #$F8
C - - - - - 0x0274DE 09:B4CE: 90 CE     BCC bra_B49E_RTS
C - - - - - 0x0274E0 09:B4D0: 4C 3A 87  JMP loc_873A_clear_object_data



tbl_B4D3_spd_X:
- - - - - - 0x0274E3 09:B4D3: 10 00     .word $0010 ; 00 
- D 1 - - - 0x0274E5 09:B4D5: 20 00     .word $0020 ; 01 
- D 1 - - - 0x0274E7 09:B4D7: 30 00     .word $0030 ; 02 
- D 1 - - - 0x0274E9 09:B4D9: 40 00     .word $0040 ; 03 
- D 1 - - - 0x0274EB 09:B4DB: 50 00     .word $0050 ; 04 
- D 1 - - - 0x0274ED 09:B4DD: 60 00     .word $0060 ; 05 
- D 1 - - - 0x0274EF 09:B4DF: 70 00     .word $0070 ; 06 



tbl_B4E1_spd_Y:
- - - - - - 0x0274F1 09:B4E1: 00 FF     .word $FF00 ; 00 
- D 1 - - - 0x0274F3 09:B4E3: E0 FF     .word $FFE0 ; 01 
- D 1 - - - 0x0274F5 09:B4E5: D0 FE     .word $FED0 ; 02 
- D 1 - - - 0x0274F7 09:B4E7: C0 FF     .word $FFC0 ; 03 
- D 1 - - - 0x0274F9 09:B4E9: B0 FE     .word $FEB0 ; 04 
- D 1 - - - 0x0274FB 09:B4EB: A0 FF     .word $FFA0 ; 05 
- D 1 - - - 0x0274FD 09:B4ED: 90 FD     .word $FD90 ; 06 



ofs_042_B4EF_0D:
C - - J - - 0x0274FF 09:B4EF: AD EC 07  LDA ram_07EC
C - - - - - 0x027502 09:B4F2: F0 03     BEQ bra_B4F7
C - - - - - 0x027504 09:B4F4: 4C B7 B5  JMP loc_B5B7
bra_B4F7:
C - - - - - 0x027507 09:B4F7: A5 78     LDA ram_0078_flag
C - - - - - 0x027509 09:B4F9: D0 1A     BNE bra_B515
C - - - - - 0x02750B 09:B4FB: A9 3C     LDA #$3C
C - - - - - 0x02750D 09:B4FD: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x027510 09:B500: A9 01     LDA #$01    ; facing left
C - - - - - 0x027512 09:B502: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x027515 09:B505: A9 A8     LDA #$A8
C - - - - - 0x027517 09:B507: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02751A 09:B50A: A9 10     LDA #con_obj_type_10
C - - - - - 0x02751C 09:B50C: A0 44     LDY #$44
C - - - - - 0x02751E 09:B50E: 4C 5C EF  JMP loc_0x03EF6C_prepare_animation
bra_B511:
C - - - - - 0x027521 09:B511: DE 06 06  DEC ram_obj_config,X
C - - - - - 0x027524 09:B514: 60        RTS
bra_B515:
C - - - - - 0x027525 09:B515: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x027528 09:B518: D0 F7     BNE bra_B511
C - - - - - 0x02752A 09:B51A: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x02752C 09:B51C: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x02752F 09:B51F: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x027532 09:B522: 29 7F     AND #$7F
C - - - - - 0x027534 09:B524: D0 25     BNE bra_B54B
C - - - - - 0x027536 09:B526: A9 25     LDA #$25
C - - - - - 0x027538 09:B528: 20 66 87  JSR sub_8766
C - - - - - 0x02753B 09:B52B: A9 80     LDA #$80
C - - - - - 0x02753D 09:B52D: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x027540 09:B530: A9 E8     LDA #con_obj_flag_08 + con_obj_flag_20 + con_obj_flag_40 + con_obj_flag_not_visible
C - - - - - 0x027542 09:B532: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x027545 09:B535: 8A        TXA
C - - - - - 0x027546 09:B536: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x027549 09:B539: A9 02     LDA #$02
C - - - - - 0x02754B 09:B53B: 99 00 04  STA ram_obj_anim_id,Y
C - - - - - 0x02754E 09:B53E: A9 40     LDA #$40
C - - - - - 0x027550 09:B540: 99 7B 06  STA ram_obj_hp,Y
C - - - - - 0x027553 09:B543: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x027556 09:B546: A9 D1     LDA #$D1
C - - - - - 0x027558 09:B548: 4C 4F 86  JMP loc_864F
bra_B54B:
C - - - - - 0x02755B 09:B54B: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x02755E 09:B54E: C9 07     CMP #$07
; bzk optimize, BNE to RTS at 0x027571, delete RTS at 0x027562
C - - - - - 0x027560 09:B550: F0 01     BEQ bra_B553
C - - - - - 0x027562 09:B552: 60        RTS
bra_B553:
C - - - - - 0x027563 09:B553: AD F3 07  LDA ram_07F3
C - - - - - 0x027566 09:B556: 29 7F     AND #$7F
C - - - - - 0x027568 09:B558: 8D F3 07  STA ram_07F3
C - - - - - 0x02756B 09:B55B: 20 62 B5  JSR sub_B562
C - - - - - 0x02756E 09:B55E: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x027571 09:B561: 60        RTS



sub_B562:
ofs_044_0x027572_18:
; bzk optimize, so much trouble to go to here via ofs_044 case,
; just to execute a couple of instructions.
; copy this code to bank 86, or move it to bank FF
C - - J - - 0x027572 09:B562: A9 00     LDA #$00
C - - - - - 0x027574 09:B564: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x027577 09:B567: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02757A 09:B56A: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x02757D 09:B56D: 60        RTS



ofs_042_B56E_25:
C - - J - - 0x02757E 09:B56E: A9 E8     LDA #con_obj_flag_08 + con_obj_flag_20 + con_obj_flag_40 + con_obj_flag_not_visible
C - - - - - 0x027580 09:B570: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x027583 09:B573: A9 02     LDA #$02
C - - - - - 0x027585 09:B575: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x027588 09:B578: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x02758B 09:B57B: B9 06 06  LDA ram_obj_config,Y
C - - - - - 0x02758E 09:B57E: C9 03     CMP #$03
C - - - - - 0x027590 09:B580: B0 09     BCS bra_B58B
C - - - - - 0x027592 09:B582: A9 01     LDA #$01
C - - - - - 0x027594 09:B584: 20 E0 88  JSR sub_88E0
C - - - - - 0x027597 09:B587: A5 3D     LDA ram_hp_boss
C - - - - - 0x027599 09:B589: F0 1E     BEQ bra_B5A9
bra_B58B:
C - - - - - 0x02759B 09:B58B: A9 00     LDA #$00
C - - - - - 0x02759D 09:B58D: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x0275A0 09:B590: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x0275A3 09:B593: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x0275A6 09:B596: 38        SEC
C - - - - - 0x0275A7 09:B597: E9 10     SBC #$10
C - - - - - 0x0275A9 09:B599: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x0275AC 09:B59C: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x0275AF 09:B59F: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0275B2 09:B5A2: B9 57 06  LDA ram_obj_0658,Y
C - - - - - 0x0275B5 09:B5A5: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0275B8 09:B5A8: 60        RTS
bra_B5A9:
C - - - - - 0x0275B9 09:B5A9: 4C 3A 87  JMP loc_873A_clear_object_data



ofs_042_B5AC_0D:
C - - J - - 0x0275BC 09:B5AC: A9 00     LDA #$00
C - - - - - 0x0275BE 09:B5AE: 85 BB     STA ram_00BB
C - - - - - 0x0275C0 09:B5B0: 85 BA     STA ram_00BA
C - - - - - 0x0275C2 09:B5B2: AD EC 07  LDA ram_07EC
C - - - - - 0x0275C5 09:B5B5: F0 16     BEQ bra_B5CD
loc_B5B7:
C D 1 - - - 0x0275C7 09:B5B7: A9 03     LDA #$03
C - - - - - 0x0275C9 09:B5B9: 85 BA     STA ram_00BA
C - - - - - 0x0275CB 09:B5BB: AC EC 07  LDY ram_07EC
C - - - - - 0x0275CE 09:B5BE: 88        DEY
C - - - - - 0x0275CF 09:B5BF: 84 BC     STY ram_00BC
C - - - - - 0x0275D1 09:B5C1: AC EC 07  LDY ram_07EC
C - - - - - 0x0275D4 09:B5C4: 88        DEY
C - - - - - 0x0275D5 09:B5C5: D0 03     BNE bra_B5CA
C - - - - - 0x0275D7 09:B5C7: 4C 63 B9  JMP loc_B963
bra_B5CA:
C - - - - - 0x0275DA 09:B5CA: 4C 5F BD  JMP loc_BD5F
bra_B5CD:
C - - - - - 0x0275DD 09:B5CD: 20 31 82  JSR sub_8231
C - - - - - 0x0275E0 09:B5D0: A5 3D     LDA ram_hp_boss
C - - - - - 0x0275E2 09:B5D2: F0 03     BEQ bra_B5D7
C - - - - - 0x0275E4 09:B5D4: 4C A1 B6  JMP loc_B6A1
bra_B5D7:
C - - - - - 0x0275E7 09:B5D7: AD ED 07  LDA ram_07ED
C - - - - - 0x0275EA 09:B5DA: D0 78     BNE bra_B654
C - - - - - 0x0275EC 09:B5DC: A9 00     LDA #$00
C - - - - - 0x0275EE 09:B5DE: 8D EE 07  STA ram_07EE
C - - - - - 0x0275F1 09:B5E1: A9 06     LDA #$06
C - - - - - 0x0275F3 09:B5E3: 85 17     STA ram_0017_temp
bra_B5E5_loop:
C - - - - - 0x0275F5 09:B5E5: A9 0D     LDA #$0D
C - - - - - 0x0275F7 09:B5E7: 20 66 87  JSR sub_8766
C - - - - - 0x0275FA 09:B5EA: A5 17     LDA ram_0017_temp
C - - - - - 0x0275FC 09:B5EC: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x0275FF 09:B5EF: A9 DE     LDA #$DE
C - - - - - 0x027601 09:B5F1: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x027604 09:B5F4: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x027606 09:B5F6: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x027609 09:B5F9: A9 10     LDA #con_obj_type_10
C - - - - - 0x02760B 09:B5FB: 99 8C 04  STA ram_obj_type,Y
C - - - - - 0x02760E 09:B5FE: A9 00     LDA #$00
C - - - - - 0x027610 09:B600: 99 C1 05  STA ram_05C1_obj,Y
C - - - - - 0x027613 09:B603: 84 16     STY ram_0016_temp
C - - - - - 0x027615 09:B605: A4 17     LDY ram_0017_temp
C - - - - - 0x027617 09:B607: 88        DEY
C - - - - - 0x027618 09:B608: B9 95 B8  LDA tbl_B895_animation,Y
; bzk optimize, use PHA + PLA instead of 0015
C - - - - - 0x02761B 09:B60B: 85 15     STA ram_0015_temp
C - - - - - 0x02761D 09:B60D: B9 9B B8  LDA tbl_B89B,Y
C - - - - - 0x027620 09:B610: A4 16     LDY ram_0016_temp
C - - - - - 0x027622 09:B612: 99 65 05  STA ram_obj_state,Y
C - - - - - 0x027625 09:B615: A5 15     LDA ram_0015_temp
C - - - - - 0x027627 09:B617: 99 00 04  STA ram_obj_anim_id,Y
C - - - - - 0x02762A 09:B61A: EE EE 07  INC ram_07EE
C - - - - - 0x02762D 09:B61D: C6 17     DEC ram_0017_temp
C - - - - - 0x02762F 09:B61F: D0 C4     BNE bra_B5E5_loop
C - - - - - 0x027631 09:B621: A5 17     LDA ram_0017_temp    ; bzk optimize, LDA 00
C - - - - - 0x027633 09:B623: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x027636 09:B626: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x027639 09:B629: 38        SEC
C - - - - - 0x02763A 09:B62A: E9 10     SBC #$10
C - - - - - 0x02763C 09:B62C: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x02763F 09:B62F: A9 80     LDA #$80
C - - - - - 0x027641 09:B631: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x027644 09:B634: A9 F0     LDA #$F0
C - - - - - 0x027646 09:B636: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x027649 09:B639: A9 10     LDA #con_obj_type_10
C - - - - - 0x02764B 09:B63B: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x02764E 09:B63E: A9 20     LDA #con_obj_flag_20
C - - - - - 0x027650 09:B640: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x027653 09:B643: EE ED 07  INC ram_07ED
C - - - - - 0x027656 09:B646: A9 7B     LDA #con_dmc_boss_death
C - - - - - 0x027658 09:B648: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x02765B 09:B64B: A9 43     LDA #con_sound_43
C - - - - - 0x02765D 09:B64D: 4C 5F E2  JMP loc_0x03E26F_play_sound
bra_B650:
C - - - - - 0x027660 09:B650: 9D 1C 04  STA ram_obj_pos_Y_hi,X
bra_B653_RTS:
C - - - - - 0x027663 09:B653: 60        RTS
bra_B654:
C - - - - - 0x027664 09:B654: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x027667 09:B657: D0 2B     BNE bra_B684
C - - - - - 0x027669 09:B659: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x02766C 09:B65C: 38        SEC
C - - - - - 0x02766D 09:B65D: E9 01     SBC #$01
C - - - - - 0x02766F 09:B65F: C9 80     CMP #$80
C - - - - - 0x027671 09:B661: B0 ED     BCS bra_B650
C - - - - - 0x027673 09:B663: AD EE 07  LDA ram_07EE
C - - - - - 0x027676 09:B666: D0 EB     BNE bra_B653_RTS
C - - - - - 0x027678 09:B668: EE EC 07  INC ram_07EC
C - - - - - 0x02767B 09:B66B: A9 80     LDA #$80
C - - - - - 0x02767D 09:B66D: 8D F3 07  STA ram_07F3
C - - - - - 0x027680 09:B670: A9 40     LDA #$40
C - - - - - 0x027682 09:B672: 85 3D     STA ram_hp_boss
C - - - - - 0x027684 09:B674: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x027687 09:B677: A9 00     LDA #$00
C - - - - - 0x027689 09:B679: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x02768C 09:B67C: 20 62 B5  JSR sub_B562
C - - - - - 0x02768F 09:B67F: A9 30     LDA #$30    ; 3000
C - - - - - 0x027691 09:B681: 4C 61 86  JMP loc_8661_add_points_to_score
bra_B684:
C - - - - - 0x027694 09:B684: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x027697 09:B687: 29 F8     AND #$F8
C - - - - - 0x027699 09:B689: F0 10     BEQ bra_B69B
C - - - - - 0x02769B 09:B68B: C9 F8     CMP #$F8
C - - - - - 0x02769D 09:B68D: F0 0C     BEQ bra_B69B
C - - - - - 0x02769F 09:B68F: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0276A2 09:B692: 29 F8     AND #$F8
C - - - - - 0x0276A4 09:B694: F0 05     BEQ bra_B69B
C - - - - - 0x0276A6 09:B696: C9 F8     CMP #$F8
C - - - - - 0x0276A8 09:B698: F0 01     BEQ bra_B69B
C - - - - - 0x0276AA 09:B69A: 60        RTS
bra_B69B:
C - - - - - 0x0276AB 09:B69B: CE EE 07  DEC ram_07EE
C - - - - - 0x0276AE 09:B69E: 4C 3A 87  JMP loc_873A_clear_object_data



loc_B6A1:
C D 1 - - - 0x0276B1 09:B6A1: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x0276B3 09:B6A3: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0276B6 09:B6A6: A9 30     LDA #$30
C - - - - - 0x0276B8 09:B6A8: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0276BB 09:B6AB: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x0276BE 09:B6AE: D0 50     BNE bra_B700
; 00
C - - - - - 0x0276C0 09:B6B0: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x0276C3 09:B6B3: 29 7F     AND #$7F
C - - - - - 0x0276C5 09:B6B5: D0 08     BNE bra_B6BF
C - - - - - 0x0276C7 09:B6B7: 20 85 B8  JSR sub_B885
C - - - - - 0x0276CA 09:B6BA: A9 D2     LDA #$D2
C - - - - - 0x0276CC 09:B6BC: 4C 4F 86  JMP loc_864F
bra_B6BF:
C - - - - - 0x0276CF 09:B6BF: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x0276D2 09:B6C2: C9 07     CMP #$07
C - - - - - 0x0276D4 09:B6C4: F0 05     BEQ bra_B6CB
C - - - - - 0x0276D6 09:B6C6: C9 0D     CMP #$0D
C - - - - - 0x0276D8 09:B6C8: F0 28     BEQ bra_B6F2
C - - - - - 0x0276DA 09:B6CA: 60        RTS
bra_B6CB:
C - - - - - 0x0276DB 09:B6CB: A9 01     LDA #$01
C - - - - - 0x0276DD 09:B6CD: 85 17     STA ram_0017_temp
bra_B6CF_loop:
C - - - - - 0x0276DF 09:B6CF: A9 24     LDA #$24
C - - - - - 0x0276E1 09:B6D1: 20 66 87  JSR sub_8766
C - - - - - 0x0276E4 09:B6D4: A9 00     LDA #$00
C - - - - - 0x0276E6 09:B6D6: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x0276E9 09:B6D9: A5 17     LDA ram_0017_temp
C - - - - - 0x0276EB 09:B6DB: 99 1D 06  STA ram_061D_obj,Y
C - - - - - 0x0276EE 09:B6DE: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x0276F0 09:B6E0: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x0276F3 09:B6E3: A9 80     LDA #$80
C - - - - - 0x0276F5 09:B6E5: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x0276F8 09:B6E8: A9 C0     LDA #$C0
C - - - - - 0x0276FA 09:B6EA: 99 1C 04  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x0276FD 09:B6ED: C6 17     DEC ram_0017_temp
C - - - - - 0x0276FF 09:B6EF: 10 DE     BPL bra_B6CF_loop
C - - - - - 0x027701 09:B6F1: 60        RTS
bra_B6F2:
C - - - - - 0x027702 09:B6F2: FE 06 06  INC ram_obj_config,X
C - - - - - 0x027705 09:B6F5: A9 30     LDA #$30
C - - - - - 0x027707 09:B6F7: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02770A 09:B6FA: A9 80     LDA #$80
C - - - - - 0x02770C 09:B6FC: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02770F 09:B6FF: 60        RTS
bra_B700:
C - - - - - 0x027710 09:B700: 88        DEY
C - - - - - 0x027711 09:B701: D0 51     BNE bra_B754
; 01
C - - - - - 0x027713 09:B703: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x027716 09:B706: D0 48     BNE bra_B750
C - - - - - 0x027718 09:B708: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x02771B 09:B70B: 29 7F     AND #$7F
C - - - - - 0x02771D 09:B70D: D0 08     BNE bra_B717
C - - - - - 0x02771F 09:B70F: 20 85 B8  JSR sub_B885
C - - - - - 0x027722 09:B712: A9 D2     LDA #$D2
C - - - - - 0x027724 09:B714: 4C 4F 86  JMP loc_864F
bra_B717:
C - - - - - 0x027727 09:B717: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x02772A 09:B71A: C9 07     CMP #$07
C - - - - - 0x02772C 09:B71C: F0 05     BEQ bra_B723
C - - - - - 0x02772E 09:B71E: C9 0D     CMP #$0D
C - - - - - 0x027730 09:B720: F0 20     BEQ bra_B742
C - - - - - 0x027732 09:B722: 60        RTS
bra_B723:
C - - - - - 0x027733 09:B723: A9 24     LDA #$24
C - - - - - 0x027735 09:B725: 20 66 87  JSR sub_8766
C - - - - - 0x027738 09:B728: A9 01     LDA #$01
C - - - - - 0x02773A 09:B72A: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x02773D 09:B72D: A9 00     LDA #$00
C - - - - - 0x02773F 09:B72F: 99 1D 06  STA ram_061D_obj,Y
C - - - - - 0x027742 09:B732: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x027744 09:B734: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x027747 09:B737: A9 80     LDA #$80
C - - - - - 0x027749 09:B739: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x02774C 09:B73C: A9 C0     LDA #$C0
C - - - - - 0x02774E 09:B73E: 99 1C 04  STA ram_obj_pos_Y_hi,Y
C - - - - - 0x027751 09:B741: 60        RTS
bra_B742:
C - - - - - 0x027752 09:B742: FE 06 06  INC ram_obj_config,X
C - - - - - 0x027755 09:B745: A9 20     LDA #$20
C - - - - - 0x027757 09:B747: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x02775A 09:B74A: A9 80     LDA #$80
C - - - - - 0x02775C 09:B74C: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x02775F 09:B74F: 60        RTS
bra_B750:
C - - - - - 0x027760 09:B750: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x027763 09:B753: 60        RTS
bra_B754:
C - - - - - 0x027764 09:B754: 88        DEY
C - - - - - 0x027765 09:B755: D0 2A     BNE bra_B781
; 02
C - - - - - 0x027767 09:B757: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02776A 09:B75A: D0 F4     BNE bra_B750
C - - - - - 0x02776C 09:B75C: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02776F 09:B75F: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x027772 09:B762: 29 F0     AND #$F0
C - - - - - 0x027774 09:B764: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x027777 09:B767: A9 00     LDA #$00
C - - - - - 0x027779 09:B769: 9D 65 05  STA ram_obj_state,X
C - - - - - 0x02777C 09:B76C: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x02777F 09:B76F: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x027782 09:B772: B9 A1 B8  LDA tbl_B8A1,Y
C - - - - - 0x027785 09:B775: DD 1D 06  CMP ram_061D_obj,X
C - - - - - 0x027788 09:B778: B0 03     BCS bra_B77D
C - - - - - 0x02778A 09:B77A: FE 65 05  INC ram_obj_state,X
bra_B77D:
C - - - - - 0x02778D 09:B77D: FE 06 06  INC ram_obj_config,X
C - - - - - 0x027790 09:B780: 60        RTS
bra_B781:
C - - - - - 0x027791 09:B781: A9 00     LDA #$00
C - - - - - 0x027793 09:B783: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x027796 09:B786: 88        DEY
C - - - - - 0x027797 09:B787: D0 7C     BNE bra_B805
; 03
C - - - - - 0x027799 09:B789: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x02779C 09:B78C: D0 73     BNE bra_B801
C - - - - - 0x02779E 09:B78E: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x0277A1 09:B791: F0 16     BEQ bra_B7A9
C - - - - - 0x0277A3 09:B793: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0277A6 09:B796: 38        SEC
C - - - - - 0x0277A7 09:B797: E9 10     SBC #$10
C - - - - - 0x0277A9 09:B799: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0277AC 09:B79C: 29 F0     AND #$F0
C - - - - - 0x0277AE 09:B79E: DD 45 06  CMP ram_obj_0646,X
C - - - - - 0x0277B1 09:B7A1: F0 58     BEQ bra_B7FB
C - - - - - 0x0277B3 09:B7A3: 90 1A     BCC bra_B7BF
C - - - - - 0x0277B5 09:B7A5: A9 00     LDA #$00
C - - - - - 0x0277B7 09:B7A7: F0 54     BEQ bra_B7FD    ; jmp
bra_B7A9:
C - - - - - 0x0277B9 09:B7A9: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x0277BC 09:B7AC: 18        CLC
C - - - - - 0x0277BD 09:B7AD: 69 10     ADC #$10
C - - - - - 0x0277BF 09:B7AF: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0277C2 09:B7B2: 29 F0     AND #$F0
C - - - - - 0x0277C4 09:B7B4: DD 45 06  CMP ram_obj_0646,X
C - - - - - 0x0277C7 09:B7B7: F0 42     BEQ bra_B7FB
C - - - - - 0x0277C9 09:B7B9: B0 04     BCS bra_B7BF
C - - - - - 0x0277CB 09:B7BB: A9 00     LDA #$00
C - - - - - 0x0277CD 09:B7BD: F0 3E     BEQ bra_B7FD    ; jmp
bra_B7BF:
C - - - - - 0x0277CF 09:B7BF: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x0277D2 09:B7C2: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0277D5 09:B7C5: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x0277D8 09:B7C8: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x0277DB 09:B7CB: C9 04     CMP #$04
C - - - - - 0x0277DD 09:B7CD: D0 2C     BNE bra_B7FB
C - - - - - 0x0277DF 09:B7CF: A9 00     LDA #$00
C - - - - - 0x0277E1 09:B7D1: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x0277E4 09:B7D4: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x0277E7 09:B7D7: B9 A1 B8  LDA tbl_B8A1,Y
C - - - - - 0x0277EA 09:B7DA: DD 45 06  CMP ram_obj_0646,X
C - - - - - 0x0277ED 09:B7DD: D0 04     BNE bra_B7E3
C - - - - - 0x0277EF 09:B7DF: FE 06 06  INC ram_obj_config,X
C - - - - - 0x0277F2 09:B7E2: 60        RTS
bra_B7E3:
C - - - - - 0x0277F3 09:B7E3: A9 10     LDA #$10
C - - - - - 0x0277F5 09:B7E5: 85 00     STA ram_0000_temp
C - - - - - 0x0277F7 09:B7E7: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x0277FA 09:B7EA: F0 04     BEQ bra_B7F0
C - - - - - 0x0277FC 09:B7EC: A9 F0     LDA #$F0
C - - - - - 0x0277FE 09:B7EE: 85 00     STA ram_0000_temp
bra_B7F0:
C - - - - - 0x027800 09:B7F0: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x027803 09:B7F3: 18        CLC
C - - - - - 0x027804 09:B7F4: 65 00     ADC ram_0000_temp
C - - - - - 0x027806 09:B7F6: 29 F0     AND #$F0
C - - - - - 0x027808 09:B7F8: 9D 45 06  STA ram_obj_0646,X
bra_B7FB:
C - - - - - 0x02780B 09:B7FB: A9 00     LDA #$00
bra_B7FD:
C - - - - - 0x02780D 09:B7FD: 9D D8 05  STA ram_05D8_obj,X
C - - - - - 0x027810 09:B800: 60        RTS
bra_B801:
- - - - - - 0x027811 09:B801: DE D8 05  DEC ram_05D8_obj,X
- - - - - - 0x027814 09:B804: 60        RTS
bra_B805:
; 04
C - - - - - 0x027815 09:B805: 20 85 B8  JSR sub_B885
C - - - - - 0x027818 09:B808: BD D8 05  LDA ram_05D8_obj,X
C - - - - - 0x02781B 09:B80B: D0 F4     BNE bra_B801
C - - - - - 0x02781D 09:B80D: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x027820 09:B810: F0 16     BEQ bra_B828
C - - - - - 0x027822 09:B812: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x027825 09:B815: 38        SEC
C - - - - - 0x027826 09:B816: E9 10     SBC #$10
C - - - - - 0x027828 09:B818: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x02782B 09:B81B: 29 F0     AND #$F0
C - - - - - 0x02782D 09:B81D: DD 45 06  CMP ram_obj_0646,X
C - - - - - 0x027830 09:B820: F0 D9     BEQ bra_B7FB
C - - - - - 0x027832 09:B822: 90 1A     BCC bra_B83E
C - - - - - 0x027834 09:B824: A9 00     LDA #$00
C - - - - - 0x027836 09:B826: F0 D5     BEQ bra_B7FD    ; jmp
bra_B828:
C - - - - - 0x027838 09:B828: BD 38 04  LDA ram_obj_pos_X_hi,X
C - - - - - 0x02783B 09:B82B: 18        CLC
C - - - - - 0x02783C 09:B82C: 69 10     ADC #$10
C - - - - - 0x02783E 09:B82E: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x027841 09:B831: 29 F0     AND #$F0
C - - - - - 0x027843 09:B833: DD 45 06  CMP ram_obj_0646,X
C - - - - - 0x027846 09:B836: F0 C3     BEQ bra_B7FB
C - - - - - 0x027848 09:B838: B0 04     BCS bra_B83E
C - - - - - 0x02784A 09:B83A: A9 00     LDA #$00
C - - - - - 0x02784C 09:B83C: F0 BF     BEQ bra_B7FD    ; jmp
bra_B83E:
C - - - - - 0x02784E 09:B83E: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x027851 09:B841: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x027854 09:B844: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x027857 09:B847: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x02785A 09:B84A: C9 04     CMP #$04
C - - - - - 0x02785C 09:B84C: D0 AD     BNE bra_B7FB
C - - - - - 0x02785E 09:B84E: A9 00     LDA #$00
C - - - - - 0x027860 09:B850: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x027863 09:B853: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x027866 09:B856: 29 F0     AND #$F0
C - - - - - 0x027868 09:B858: DD 45 06  CMP ram_obj_0646,X
C - - - - - 0x02786B 09:B85B: D0 11     BNE bra_B86E
C - - - - - 0x02786D 09:B85D: A9 00     LDA #$00
C - - - - - 0x02786F 09:B85F: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x027872 09:B862: FE 33 06  INC ram_obj_0634,X
C - - - - - 0x027875 09:B865: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x027878 09:B868: 29 07     AND #$07
C - - - - - 0x02787A 09:B86A: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x02787D 09:B86D: 60        RTS
bra_B86E:
C - - - - - 0x02787E 09:B86E: A9 10     LDA #$10
C - - - - - 0x027880 09:B870: 85 00     STA ram_0000_temp
C - - - - - 0x027882 09:B872: BD 65 05  LDA ram_obj_state,X
C - - - - - 0x027885 09:B875: F0 04     BEQ bra_B87B
C - - - - - 0x027887 09:B877: A9 F0     LDA #$F0
C - - - - - 0x027889 09:B879: 85 00     STA ram_0000_temp
bra_B87B:
C - - - - - 0x02788B 09:B87B: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x02788E 09:B87E: 18        CLC
C - - - - - 0x02788F 09:B87F: 65 00     ADC ram_0000_temp
C - - - - - 0x027891 09:B881: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x027894 09:B884: 60        RTS



sub_B885:
C - - - - - 0x027895 09:B885: A0 00     LDY #$00    ; facing right
C - - - - - 0x027897 09:B887: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x02789A 09:B88A: DD 38 04  CMP ram_obj_pos_X_hi,X
C - - - - - 0x02789D 09:B88D: B0 01     BCS bra_B890
C - - - - - 0x02789F 09:B88F: C8        INY ; 01 facing left
bra_B890:
C - - - - - 0x0278A0 09:B890: 98        TYA
C - - - - - 0x0278A1 09:B891: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x0278A4 09:B894: 60        RTS



tbl_B895_animation:
- D 1 - - - 0x0278A5 09:B895: F4        .byte $F4   ; 01 
- D 1 - - - 0x0278A6 09:B896: F6        .byte $F6   ; 02 
- D 1 - - - 0x0278A7 09:B897: F8        .byte $F8   ; 03 
- D 1 - - - 0x0278A8 09:B898: FA        .byte $FA   ; 04 
- D 1 - - - 0x0278A9 09:B899: FC        .byte $FC   ; 05 
- D 1 - - - 0x0278AA 09:B89A: FE        .byte $FE   ; 06 



tbl_B89B:
- D 1 - - - 0x0278AB 09:B89B: 04        .byte $04   ; 01 
- D 1 - - - 0x0278AC 09:B89C: 08        .byte $08   ; 02 
- D 1 - - - 0x0278AD 09:B89D: 0C        .byte $0C   ; 03 
- D 1 - - - 0x0278AE 09:B89E: 14        .byte $14   ; 04 
- D 1 - - - 0x0278AF 09:B89F: 18        .byte $18   ; 05 
- D 1 - - - 0x0278B0 09:B8A0: 1C        .byte $1C   ; 06 



tbl_B8A1:
- D 1 - - - 0x0278B1 09:B8A1: 80        .byte $80   ; 00 
- D 1 - - - 0x0278B2 09:B8A2: 30        .byte $30   ; 01 
- D 1 - - - 0x0278B3 09:B8A3: 80        .byte $80   ; 02 
- D 1 - - - 0x0278B4 09:B8A4: D0        .byte $D0   ; 03 
- D 1 - - - 0x0278B5 09:B8A5: A0        .byte $A0   ; 04 
- D 1 - - - 0x0278B6 09:B8A6: 50        .byte $50   ; 05 
- D 1 - - - 0x0278B7 09:B8A7: A0        .byte $A0   ; 06 
- - - - - - 0x0278B8 09:B8A8: D0        .byte $D0   ; 07 



ofs_042_B8A9_24:
C - - J - - 0x0278B9 09:B8A9: A5 3D     LDA ram_hp_boss
C - - - - - 0x0278BB 09:B8AB: D0 03     BNE bra_B8B0
C - - - - - 0x0278BD 09:B8AD: 4C 3A 87  JMP loc_873A_clear_object_data
bra_B8B0:
C - - - - - 0x0278C0 09:B8B0: A9 00     LDA #$00
C - - - - - 0x0278C2 09:B8B2: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x0278C5 09:B8B5: 20 C8 FE  JSR sub_0x03FED8_clear_speed
C - - - - - 0x0278C8 09:B8B8: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x0278CB 09:B8BB: 29 7F     AND #$7F
C - - - - - 0x0278CD 09:B8BD: D0 49     BNE bra_B908
C - - - - - 0x0278CF 09:B8BF: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x0278D2 09:B8C2: F0 0B     BEQ bra_B8CF
C - - - - - 0x0278D4 09:B8C4: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x0278D7 09:B8C7: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x0278DA 09:B8CA: A9 D3     LDA #$D3
C - - - - - 0x0278DC 09:B8CC: 4C 4F 86  JMP loc_864F
bra_B8CF:
C - - - - - 0x0278DF 09:B8CF: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x0278E2 09:B8D2: 38        SEC
C - - - - - 0x0278E3 09:B8D3: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x0278E6 09:B8D6: B0 16     BCS bra_B8EE
C - - - - - 0x0278E8 09:B8D8: 49 FF     EOR #$FF
C - - - - - 0x0278EA 09:B8DA: 18        CLC
C - - - - - 0x0278EB 09:B8DB: 69 01     ADC #$01
C - - - - - 0x0278ED 09:B8DD: 4A        LSR
C - - - - - 0x0278EE 09:B8DE: 85 00     STA ram_0000_temp
C - - - - - 0x0278F0 09:B8E0: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x0278F3 09:B8E3: D0 11     BNE bra_B8F6
bra_B8E5:
C - - - - - 0x0278F5 09:B8E5: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x0278F8 09:B8E8: 38        SEC
C - - - - - 0x0278F9 09:B8E9: E5 00     SBC ram_0000_temp
C - - - - - 0x0278FB 09:B8EB: 4C FC B8  JMP loc_B8FC
bra_B8EE:
C - - - - - 0x0278FE 09:B8EE: 4A        LSR
C - - - - - 0x0278FF 09:B8EF: 85 00     STA ram_0000_temp
C - - - - - 0x027901 09:B8F1: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x027904 09:B8F4: D0 EF     BNE bra_B8E5
bra_B8F6:
C - - - - - 0x027906 09:B8F6: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x027909 09:B8F9: 18        CLC
C - - - - - 0x02790A 09:B8FA: 65 00     ADC ram_0000_temp
loc_B8FC:
C D 1 - - - 0x02790C 09:B8FC: 29 F0     AND #$F0
C - - - - - 0x02790E 09:B8FE: 09 08     ORA #$08
C - - - - - 0x027910 09:B900: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x027913 09:B903: A9 D4     LDA #$D4
C - - - - - 0x027915 09:B905: 4C 4F 86  JMP loc_864F
bra_B908:
C - - - - - 0x027918 09:B908: A5 80     LDA ram_invinc_timer
C - - - - - 0x02791A 09:B90A: D0 4D     BNE bra_B959_RTS
C - - - - - 0x02791C 09:B90C: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x02791F 09:B90F: C9 04     CMP #$04
C - - - - - 0x027921 09:B911: 90 46     BCC bra_B959_RTS
C - - - - - 0x027923 09:B913: AD 38 04  LDA ram_plr_pos_X_hi
C - - - - - 0x027926 09:B916: 38        SEC
C - - - - - 0x027927 09:B917: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x02792A 09:B91A: B0 05     BCS bra_B921
C - - - - - 0x02792C 09:B91C: 49 FF     EOR #$FF
C - - - - - 0x02792E 09:B91E: 18        CLC
C - - - - - 0x02792F 09:B91F: 69 01     ADC #$01
bra_B921:
C - - - - - 0x027931 09:B921: 85 00     STA ram_0000_temp
C - - - - - 0x027933 09:B923: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x027936 09:B926: F0 08     BEQ bra_B930
C - - - - - 0x027938 09:B928: A5 00     LDA ram_0000_temp
C - - - - - 0x02793A 09:B92A: C9 10     CMP #$10
C - - - - - 0x02793C 09:B92C: B0 2B     BCS bra_B959_RTS
C - - - - - 0x02793E 09:B92E: 90 06     BCC bra_B936    ; jmp
bra_B930:
C - - - - - 0x027940 09:B930: A5 00     LDA ram_0000_temp
C - - - - - 0x027942 09:B932: C9 08     CMP #$08
C - - - - - 0x027944 09:B934: B0 23     BCS bra_B959_RTS
bra_B936:
C - - - - - 0x027946 09:B936: BD 00 04  LDA ram_obj_anim_id,X
C - - - - - 0x027949 09:B939: 38        SEC
C - - - - - 0x02794A 09:B93A: E9 98     SBC #$98
C - - - - - 0x02794C 09:B93C: 4A        LSR
C - - - - - 0x02794D 09:B93D: A8        TAY
C - - - - - 0x02794E 09:B93E: B9 5A B9  LDA tbl_B95A_hitbox_Y,Y
C - - - - - 0x027951 09:B941: 85 00     STA ram_0000_temp
C - - - - - 0x027953 09:B943: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x027956 09:B946: 38        SEC
C - - - - - 0x027957 09:B947: ED 1C 04  SBC ram_plr_pos_Y_hi
C - - - - - 0x02795A 09:B94A: B0 05     BCS bra_B951
- - - - - - 0x02795C 09:B94C: 49 FF     EOR #$FF
- - - - - - 0x02795E 09:B94E: 18        CLC
- - - - - - 0x02795F 09:B94F: 69 01     ADC #$01
bra_B951:
C - - - - - 0x027961 09:B951: C5 00     CMP ram_0000_temp
C - - - - - 0x027963 09:B953: B0 04     BCS bra_B959_RTS
C - - - - - 0x027965 09:B955: A9 30     LDA #$30
C - - - - - 0x027967 09:B957: 85 81     STA ram_0081
bra_B959_RTS:
C - - - - - 0x027969 09:B959: 60        RTS



tbl_B95A_hitbox_Y:
- D 1 - - - 0x02796A 09:B95A: 08        .byte $08   ; 98 
- D 1 - - - 0x02796B 09:B95B: 18        .byte $18   ; 9A 
- D 1 - - - 0x02796C 09:B95C: 38        .byte $38   ; 9C 
- - - - - - 0x02796D 09:B95D: 58        .byte $58   ; 9E 
- - - - - - 0x02796E 09:B95E: 90        .byte $90   ; A0 
- D 1 - - - 0x02796F 09:B95F: 08        .byte $08   ; A2 
- D 1 - - - 0x027970 09:B960: 10        .byte $10   ; A4 
- D 1 - - - 0x027971 09:B961: 28        .byte $28   ; A6 
- D 1 - - - 0x027972 09:B962: 2E        .byte $2E   ; A8 



loc_B963:
C D 1 - - - 0x027973 09:B963: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x027976 09:B966: F0 03     BEQ bra_B96B
C - - - - - 0x027978 09:B968: 4C BE BA  JMP loc_BABE
bra_B96B:
C - - - - - 0x02797B 09:B96B: AD F3 07  LDA ram_07F3
C - - - - - 0x02797E 09:B96E: 29 80     AND #$80
C - - - - - 0x027980 09:B970: D0 03     BNE bra_B975
C - - - - - 0x027982 09:B972: 4C 13 BA  JMP loc_BA13
bra_B975:
C - - - - - 0x027985 09:B975: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x027988 09:B978: D0 70     BNE bra_B9EA
C - - - - - 0x02798A 09:B97A: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x02798D 09:B97D: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x027990 09:B980: A0 32     LDY #con__chr_bank + $32
C - - - - - 0x027992 09:B982: 84 4B     STY ram_chr_bank______5129
C - - - - - 0x027994 09:B984: C8        INY ; con__chr_bank + $33
C - - - - - 0x027995 09:B985: 84 4C     STY ram_chr_bank_5126_512A
C - - - - - 0x027997 09:B987: C8        INY ; con__chr_bank + $34
C - - - - - 0x027998 09:B988: 84 48     STY ram_chr_bank_5122
C - - - - - 0x02799A 09:B98A: C8        INY ; con__chr_bank + $35
C - - - - - 0x02799B 09:B98B: 84 49     STY ram_chr_bank_5123
C - - - - - 0x02799D 09:B98D: 20 3C E3  JSR sub_0x03E34C
C - - - - - 0x0279A0 09:B990: 20 5D E3  JSR sub_0x03E36D
C - - - - - 0x0279A3 09:B993: A9 F0     LDA #$F0
C - - - - - 0x0279A5 09:B995: 20 CB BB  JSR sub_BBCB
C - - - - - 0x0279A8 09:B998: A9 05     LDA #$05
C - - - - - 0x0279AA 09:B99A: 85 17     STA ram_0017_temp
bra_B99C_loop:
C - - - - - 0x0279AC 09:B99C: A9 0D     LDA #$0D
C - - - - - 0x0279AE 09:B99E: 20 66 87  JSR sub_8766
C - - - - - 0x0279B1 09:B9A1: 8A        TXA
C - - - - - 0x0279B2 09:B9A2: 99 D8 05  STA ram_05D8_obj,Y
C - - - - - 0x0279B5 09:B9A5: A5 17     LDA ram_0017_temp
C - - - - - 0x0279B7 09:B9A7: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x0279BA 09:B9AA: A9 F0     LDA #$F0
C - - - - - 0x0279BC 09:B9AC: 20 D4 BB  JSR sub_BBD4
C - - - - - 0x0279BF 09:B9AF: A9 80     LDA #$80
C - - - - - 0x0279C1 09:B9B1: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x0279C4 09:B9B4: A5 17     LDA ram_0017_temp
C - - - - - 0x0279C6 09:B9B6: 99 33 06  STA ram_obj_0634,Y
C - - - - - 0x0279C9 09:B9B9: A9 01     LDA #$01
C - - - - - 0x0279CB 09:B9BB: 99 1D 06  STA ram_061D_obj,Y
C - - - - - 0x0279CE 09:B9BE: A9 20     LDA #con_obj_flag_20
C - - - - - 0x0279D0 09:B9C0: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x0279D3 09:B9C3: A9 0D     LDA #$0D
C - - - - - 0x0279D5 09:B9C5: 99 7B 06  STA ram_obj_hp,Y
C - - - - - 0x0279D8 09:B9C8: C6 17     DEC ram_0017_temp
C - - - - - 0x0279DA 09:B9CA: D0 D0     BNE bra_B99C_loop
C - - - - - 0x0279DC 09:B9CC: A9 00     LDA #$00
C - - - - - 0x0279DE 09:B9CE: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x0279E1 09:B9D1: A9 01     LDA #$01
C - - - - - 0x0279E3 09:B9D3: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x0279E6 09:B9D6: FE 45 06  INC ram_obj_0646,X
C - - - - - 0x0279E9 09:B9D9: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x0279EB 09:B9DB: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x0279EE 09:B9DE: A9 40     LDA #$40
C - - - - - 0x0279F0 09:B9E0: 85 3D     STA ram_hp_boss
C - - - - - 0x0279F2 09:B9E2: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x0279F5 09:B9E5: A9 60     LDA #con_music_60
C - - - - - 0x0279F7 09:B9E7: 4C 5F E2  JMP loc_0x03E26F_play_sound
bra_B9EA:
C - - - - - 0x0279FA 09:B9EA: A0 D2     LDY #$D2
C - - - - - 0x0279FC 09:B9EC: 20 DD BB  JSR sub_BBDD
C - - - - - 0x0279FF 09:B9EF: 20 ED BB  JSR sub_BBED
C - - - - - 0x027A02 09:B9F2: D0 1E     BNE bra_BA12_RTS
C - - - - - 0x027A04 09:B9F4: A9 D2     LDA #$D2
C - - - - - 0x027A06 09:B9F6: 20 CB BB  JSR sub_BBCB
C - - - - - 0x027A09 09:B9F9: AD F3 07  LDA ram_07F3
C - - - - - 0x027A0C 09:B9FC: 29 7F     AND #$7F
C - - - - - 0x027A0E 09:B9FE: 8D F3 07  STA ram_07F3
C - - - - - 0x027A11 09:BA01: A9 30     LDA #$30
C - - - - - 0x027A13 09:BA03: 9D 58 06  STA ram_obj_0658 + $01,X
C - - - - - 0x027A16 09:BA06: 9D 59 06  STA ram_obj_0658 + $02,X
C - - - - - 0x027A19 09:BA09: 9D 5A 06  STA ram_obj_0658 + $03,X
C - - - - - 0x027A1C 09:BA0C: 9D 5B 06  STA ram_obj_0658 + $04,X
C - - - - - 0x027A1F 09:BA0F: 9D 5C 06  STA ram_obj_0658 + $05,X
bra_BA12_RTS:
C - - - - - 0x027A22 09:BA12: 60        RTS



loc_BA13:
C D 1 - - - 0x027A23 09:BA13: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x027A25 09:BA15: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x027A28 09:BA18: A4 3D     LDY ram_hp_boss
C - - - - - 0x027A2A 09:BA1A: D0 1D     BNE bra_BA39_not_dead
C - - - - - 0x027A2C 09:BA1C: C8        INY
C - - - - - 0x027A2D 09:BA1D: 8C F3 07  STY ram_07F3
C - - - - - 0x027A30 09:BA20: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x027A33 09:BA23: 29 7F     AND #$7F
C - - - - - 0x027A35 09:BA25: C9 5D     CMP #$5D
C - - - - - 0x027A37 09:BA27: F0 0D     BEQ bra_BA36
C - - - - - 0x027A39 09:BA29: A9 40     LDA #$40    ; 4000
C - - - - - 0x027A3B 09:BA2B: 20 61 86  JSR sub_8661_add_points_to_score
C - - - - - 0x027A3E 09:BA2E: A9 7B     LDA #con_dmc_boss_death
C - - - - - 0x027A40 09:BA30: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x027A43 09:BA33: 4C 04 BC  JMP loc_BC04
bra_BA36:
C - - - - - 0x027A46 09:BA36: 4C 2C BC  JMP loc_BC2C
bra_BA39_not_dead:
C - - - - - 0x027A49 09:BA39: A9 00     LDA #$00
C - - - - - 0x027A4B 09:BA3B: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x027A4E 09:BA3E: A9 60     LDA #$60
C - - - - - 0x027A50 09:BA40: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x027A53 09:BA43: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x027A56 09:BA46: 29 0F     AND #$0F
C - - - - - 0x027A58 09:BA48: A8        TAY
C - - - - - 0x027A59 09:BA49: B9 1B BD  LDA tbl_BD1B_pos_X_hi,Y
C - - - - - 0x027A5C 09:BA4C: C9 FF     CMP #$FF
C - - - - - 0x027A5E 09:BA4E: D0 03     BNE bra_BA53
; FF
C - - - - - 0x027A60 09:BA50: AD 38 04  LDA ram_plr_pos_X_hi
bra_BA53:
C - - - - - 0x027A63 09:BA53: 38        SEC
C - - - - - 0x027A64 09:BA54: FD 38 04  SBC ram_obj_pos_X_hi,X
C - - - - - 0x027A67 09:BA57: 85 00     STA ram_0000_temp
C - - - - - 0x027A69 09:BA59: B0 11     BCS bra_BA6C
C - - - - - 0x027A6B 09:BA5B: 49 FF     EOR #$FF
C - - - - - 0x027A6D 09:BA5D: 18        CLC
C - - - - - 0x027A6E 09:BA5E: 69 01     ADC #$01
C - - - - - 0x027A70 09:BA60: 85 00     STA ram_0000_temp
C - - - - - 0x027A72 09:BA62: A9 FF     LDA #$FF
C - - - - - 0x027A74 09:BA64: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x027A77 09:BA67: A9 A0     LDA #$A0
C - - - - - 0x027A79 09:BA69: 9D 09 05  STA ram_obj_spd_X_lo,X
bra_BA6C:
C - - - - - 0x027A7C 09:BA6C: A5 00     LDA ram_0000_temp
C - - - - - 0x027A7E 09:BA6E: C9 04     CMP #$04
C - - - - - 0x027A80 09:BA70: B0 0B     BCS bra_BA7D
C - - - - - 0x027A82 09:BA72: FE 45 06  INC ram_obj_0646,X
C - - - - - 0x027A85 09:BA75: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x027A88 09:BA78: 29 F3     AND #$F3
C - - - - - 0x027A8A 09:BA7A: 9D 45 06  STA ram_obj_0646,X
bra_BA7D:
C - - - - - 0x027A8D 09:BA7D: 20 ED BB  JSR sub_BBED
C - - - - - 0x027A90 09:BA80: D0 29     BNE bra_BAAB
C - - - - - 0x027A92 09:BA82: BD 45 06  LDA ram_obj_0646,X
C - - - - - 0x027A95 09:BA85: 18        CLC
C - - - - - 0x027A96 09:BA86: 69 10     ADC #$10
C - - - - - 0x027A98 09:BA88: 29 3F     AND #$3F
C - - - - - 0x027A9A 09:BA8A: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x027A9D 09:BA8D: 29 F0     AND #$F0
; / 08
C - - - - - 0x027A9F 09:BA8F: 4A        LSR
C - - - - - 0x027AA0 09:BA90: 4A        LSR
C - - - - - 0x027AA1 09:BA91: 4A        LSR
C - - - - - 0x027AA2 09:BA92: A8        TAY
C - - - - - 0x027AA3 09:BA93: B9 1F BD  LDA tbl_BD1F,Y
C - - - - - 0x027AA6 09:BA96: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x027AA9 09:BA99: B9 20 BD  LDA tbl_BD1F + $01,Y
C - - - - - 0x027AAC 09:BA9C: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x027AAF 09:BA9F: B9 27 BD  LDA tbl_BD27_spd_Y,Y
C - - - - - 0x027AB2 09:BAA2: 9D 37 05  STA ram_obj_spd_Y_lo,X
C - - - - - 0x027AB5 09:BAA5: B9 28 BD  LDA tbl_BD27_spd_Y + $01,Y
C - - - - - 0x027AB8 09:BAA8: 9D 20 05  STA ram_obj_spd_Y_hi,X
bra_BAAB:
C - - - - - 0x027ABB 09:BAAB: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x027ABE 09:BAAE: C9 30     CMP #$30
C - - - - - 0x027AC0 09:BAB0: B0 02     BCS bra_BAB4_not_underflow
- - - - - - 0x027AC2 09:BAB2: A9 30     LDA #$30
bra_BAB4_not_underflow:
C - - - - - 0x027AC4 09:BAB4: C9 80     CMP #$80
C - - - - - 0x027AC6 09:BAB6: 90 02     BCC bra_BABA_not_overflow
C - - - - - 0x027AC8 09:BAB8: A9 7F     LDA #$7F
bra_BABA_not_overflow:
C - - - - - 0x027ACA 09:BABA: 9D 1C 04  STA ram_obj_pos_Y_hi,X
bra_BABD_RTS:
C - - - - - 0x027ACD 09:BABD: 60        RTS



loc_BABE:
C D 1 - - - 0x027ACE 09:BABE: AD F3 07  LDA ram_07F3
C - - - - - 0x027AD1 09:BAC1: 29 80     AND #$80
C - - - - - 0x027AD3 09:BAC3: F0 12     BEQ bra_BAD7
C - - - - - 0x027AD5 09:BAC5: A9 00     LDA #$00
C - - - - - 0x027AD7 09:BAC7: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x027ADA 09:BACA: 20 86 BC  JSR sub_BC86
C - - - - - 0x027ADD 09:BACD: 20 ED BB  JSR sub_BBED
C - - - - - 0x027AE0 09:BAD0: 20 AB BC  JSR sub_BCAB
C - - - - - 0x027AE3 09:BAD3: A8        TAY
C - - - - - 0x027AE4 09:BAD4: 4C DD BB  JMP loc_BBDD
bra_BAD7:
C - - - - - 0x027AE7 09:BAD7: A9 20     LDA #con_obj_flag_20
C - - - - - 0x027AE9 09:BAD9: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x027AEC 09:BADC: AC F3 07  LDY ram_07F3
C - - - - - 0x027AEF 09:BADF: 88        DEY
C - - - - - 0x027AF0 09:BAE0: D0 2C     BNE bra_BB0E
C - - - - - 0x027AF2 09:BAE2: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x027AF4 09:BAE4: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x027AF7 09:BAE7: BD EF 05  LDA ram_05EF_obj,X
C - - - - - 0x027AFA 09:BAEA: 29 7F     AND #$7F
C - - - - - 0x027AFC 09:BAEC: C9 5D     CMP #$5D
C - - - - - 0x027AFE 09:BAEE: F0 03     BEQ bra_BAF3
C - - - - - 0x027B00 09:BAF0: 4C 09 BC  JMP loc_BC09
bra_BAF3:
C - - - - - 0x027B03 09:BAF3: 20 2C BC  JSR sub_BC2C
C - - - - - 0x027B06 09:BAF6: 90 C5     BCC bra_BABD_RTS
C - - - - - 0x027B08 09:BAF8: 4C 3A 87  JMP loc_873A_clear_object_data
bra_BAFB:
C - - - - - 0x027B0B 09:BAFB: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x027B0E 09:BAFE: 29 F0     AND #$F0
C - - - - - 0x027B10 09:BB00: F0 21     BEQ bra_BB23
C - - - - - 0x027B12 09:BB02: A9 28     LDA #con_sound_28
bra_BB04:
C - - - - - 0x027B14 09:BB04: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x027B17 09:BB07: 4C 23 BB  JMP loc_BB23
bra_BB0A:
C - - - - - 0x027B1A 09:BB0A: A9 7A     LDA #con_dmc_7A
C - - - - - 0x027B1C 09:BB0C: D0 F6     BNE bra_BB04    ; jmp
bra_BB0E:
C - - - - - 0x027B1E 09:BB0E: 20 86 BC  JSR sub_BC86
C - - - - - 0x027B21 09:BB11: BD 7B 06  LDA ram_obj_hp,X
C - - - - - 0x027B24 09:BB14: F0 E5     BEQ bra_BAFB
C - - - - - 0x027B26 09:BB16: A9 04     LDA #$04
C - - - - - 0x027B28 09:BB18: 20 05 89  JSR sub_8905
C - - - - - 0x027B2B 09:BB1B: BD 7B 06  LDA ram_obj_hp,X
C - - - - - 0x027B2E 09:BB1E: F0 EA     BEQ bra_BB0A
C - - - - - 0x027B30 09:BB20: 20 AC BB  JSR sub_BBAC
bra_BB23:
loc_BB23:
C D 1 - - - 0x027B33 09:BB23: A9 00     LDA #$00
C - - - - - 0x027B35 09:BB25: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x027B38 09:BB28: BD 7B 06  LDA ram_obj_hp,X
C - - - - - 0x027B3B 09:BB2B: D0 0A     BNE bra_BB37
C - - - - - 0x027B3D 09:BB2D: 20 AB BC  JSR sub_BCAB
C - - - - - 0x027B40 09:BB30: 18        CLC
C - - - - - 0x027B41 09:BB31: 69 04     ADC #$04
C - - - - - 0x027B43 09:BB33: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x027B46 09:BB36: 60        RTS
bra_BB37:
C - - - - - 0x027B47 09:BB37: BC 45 06  LDY ram_obj_0646,X
C - - - - - 0x027B4A 09:BB3A: D0 0C     BNE bra_BB48
C - - - - - 0x027B4C 09:BB3C: 20 AB BC  JSR sub_BCAB
C - - - - - 0x027B4F 09:BB3F: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x027B52 09:BB42: FE 45 06  INC ram_obj_0646,X
C - - - - - 0x027B55 09:BB45: 4C 98 BB  JMP loc_BB98
bra_BB48:
C - - - - - 0x027B58 09:BB48: 88        DEY
C - - - - - 0x027B59 09:BB49: D0 17     BNE bra_BB62
C - - - - - 0x027B5B 09:BB4B: 20 ED BB  JSR sub_BBED
C - - - - - 0x027B5E 09:BB4E: D0 11     BNE bra_BB61_RTS
C - - - - - 0x027B60 09:BB50: A9 08     LDA #$08
C - - - - - 0x027B62 09:BB52: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x027B65 09:BB55: 20 AB BC  JSR sub_BCAB
C - - - - - 0x027B68 09:BB58: 18        CLC
C - - - - - 0x027B69 09:BB59: 69 02     ADC #$02
C - - - - - 0x027B6B 09:BB5B: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x027B6E 09:BB5E: FE 45 06  INC ram_obj_0646,X
bra_BB61_RTS:
C - - - - - 0x027B71 09:BB61: 60        RTS
bra_BB62:
C - - - - - 0x027B72 09:BB62: 88        DEY
C - - - - - 0x027B73 09:BB63: D0 22     BNE bra_BB87
C - - - - - 0x027B75 09:BB65: DE 33 06  DEC ram_obj_0634,X
C - - - - - 0x027B78 09:BB68: D0 F7     BNE bra_BB61_RTS
C - - - - - 0x027B7A 09:BB6A: A9 40     LDA #$40
C - - - - - 0x027B7C 09:BB6C: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x027B7F 09:BB6F: A9 29     LDA #$29
C - - - - - 0x027B81 09:BB71: 20 66 87  JSR sub_8766
C - - - - - 0x027B84 09:BB74: A9 DF     LDA #$DF
C - - - - - 0x027B86 09:BB76: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x027B89 09:BB79: A9 00     LDA #$00
C - - - - - 0x027B8B 09:BB7B: 99 C1 05  STA ram_05C1_obj,Y
C - - - - - 0x027B8E 09:BB7E: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x027B90 09:BB80: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x027B93 09:BB83: FE 45 06  INC ram_obj_0646,X
C - - - - - 0x027B96 09:BB86: 60        RTS
bra_BB87:
C - - - - - 0x027B97 09:BB87: DE 33 06  DEC ram_obj_0634,X
C - - - - - 0x027B9A 09:BB8A: D0 D5     BNE bra_BB61_RTS
C - - - - - 0x027B9C 09:BB8C: A9 00     LDA #$00
C - - - - - 0x027B9E 09:BB8E: 9D 45 06  STA ram_obj_0646,X
C - - - - - 0x027BA1 09:BB91: 20 AB BC  JSR sub_BCAB
C - - - - - 0x027BA4 09:BB94: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x027BA7 09:BB97: 60        RTS



loc_BB98:
C D 1 - - - 0x027BA8 09:BB98: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x027BAB 09:BB9B: 29 03     AND #$03
C - - - - - 0x027BAD 09:BB9D: 0A        ASL
C - - - - - 0x027BAE 09:BB9E: A8        TAY
C - - - - - 0x027BAF 09:BB9F: B9 53 BD  LDA tbl_BD53,Y
C - - - - - 0x027BB2 09:BBA2: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x027BB5 09:BBA5: B9 54 BD  LDA tbl_BD53 + $01,Y
C - - - - - 0x027BB8 09:BBA8: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x027BBB 09:BBAB: 60        RTS



sub_BBAC:
C - - - - - 0x027BBC 09:BBAC: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x027BBF 09:BBAF: F0 19     BEQ bra_BBCA_RTS
C - - - - - 0x027BC1 09:BBB1: A0 01     LDY #$01
bra_BBB3_loop:
C - - - - - 0x027BC3 09:BBB3: B9 4E 05  LDA ram_obj_id,Y
C - - - - - 0x027BC6 09:BBB6: C9 0D     CMP #$0D
C - - - - - 0x027BC8 09:BBB8: D0 0B     BNE bra_BBC5
C - - - - - 0x027BCA 09:BBBA: A9 00     LDA #$00
C - - - - - 0x027BCC 09:BBBC: 99 69 06  STA ram_obj_066A,Y
C - - - - - 0x027BCF 09:BBBF: BD 8D 06  LDA ram_obj_068E,X
C - - - - - 0x027BD2 09:BBC2: 99 8D 06  STA ram_obj_068E,Y
bra_BBC5:
C - - - - - 0x027BD5 09:BBC5: C8        INY
C - - - - - 0x027BD6 09:BBC6: C0 0D     CPY #$0D
C - - - - - 0x027BD8 09:BBC8: D0 E9     BNE bra_BBB3_loop
bra_BBCA_RTS:
C - - - - - 0x027BDA 09:BBCA: 60        RTS



sub_BBCB:
C - - - - - 0x027BDB 09:BBCB: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x027BDE 09:BBCE: A9 10     LDA #con_obj_type_10
C - - - - - 0x027BE0 09:BBD0: 9D 8C 04  STA ram_obj_type,X
C - - - - - 0x027BE3 09:BBD3: 60        RTS



sub_BBD4:
C - - - - - 0x027BE4 09:BBD4: 99 00 04  STA ram_obj_anim_id,Y
C - - - - - 0x027BE7 09:BBD7: A9 10     LDA #con_obj_type_10
C - - - - - 0x027BE9 09:BBD9: 99 8C 04  STA ram_obj_type,Y
C - - - - - 0x027BEC 09:BBDC: 60        RTS



sub_BBDD:
loc_BBDD:
C D 1 - - - 0x027BED 09:BBDD: BD 33 06  LDA ram_obj_0634,X
C - - - - - 0x027BF0 09:BBE0: 29 03     AND #$03
C - - - - - 0x027BF2 09:BBE2: D0 03     BNE bra_BBE7
C - - - - - 0x027BF4 09:BBE4: 98        TYA
C - - - - - 0x027BF5 09:BBE5: D0 02     BNE bra_BBE9
bra_BBE7:
C - - - - - 0x027BF7 09:BBE7: A9 F0     LDA #$F0
bra_BBE9:
C - - - - - 0x027BF9 09:BBE9: 9D 00 04  STA ram_obj_anim_id,X
C - - - - - 0x027BFC 09:BBEC: 60        RTS



sub_BBED:
C - - - - - 0x027BFD 09:BBED: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x027C00 09:BBF0: 1D 33 06  ORA ram_obj_0634,X
C - - - - - 0x027C03 09:BBF3: F0 0E     BEQ bra_BC03_RTS
C - - - - - 0x027C05 09:BBF5: DE 33 06  DEC ram_obj_0634,X
C - - - - - 0x027C08 09:BBF8: BC 33 06  LDY ram_obj_0634,X
C - - - - - 0x027C0B 09:BBFB: C8        INY
C - - - - - 0x027C0C 09:BBFC: D0 03     BNE bra_BC01
C - - - - - 0x027C0E 09:BBFE: DE 1D 06  DEC ram_061D_obj,X
bra_BC01:
C - - - - - 0x027C11 09:BC01: A9 01     LDA #$01
bra_BC03_RTS:
C - - - - - 0x027C13 09:BC03: 60        RTS



loc_BC04:
C D 1 - - - 0x027C14 09:BC04: A9 3F     LDA #$3F
C - - - - - 0x027C16 09:BC06: 8D ED 07  STA ram_07ED
loc_BC09:
C D 1 - - - 0x027C19 09:BC09: A9 00     LDA #$00
C - - - - - 0x027C1B 09:BC0B: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x027C1E 09:BC0E: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x027C21 09:BC11: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x027C23 09:BC13: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x027C26 09:BC16: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x027C29 09:BC19: 0A        ASL
C - - - - - 0x027C2A 09:BC1A: A8        TAY
C - - - - - 0x027C2B 09:BC1B: B9 2F BD  LDA tbl_BD2F_spd_X,Y
C - - - - - 0x027C2E 09:BC1E: 9D 09 05  STA ram_obj_spd_X_lo,X
C - - - - - 0x027C31 09:BC21: B9 30 BD  LDA tbl_BD2F_spd_X + $01,Y
C - - - - - 0x027C34 09:BC24: 9D F2 04  STA ram_obj_spd_X_hi,X
C - - - - - 0x027C37 09:BC27: A9 DD     LDA #$DD
C - - - - - 0x027C39 09:BC29: 4C 4F 86  JMP loc_864F



loc_BC2C:
sub_BC2C:
C D 1 - - - 0x027C3C 09:BC2C: A9 00     LDA #$00
C - - - - - 0x027C3E 09:BC2E: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x027C41 09:BC31: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x027C44 09:BC34: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x027C47 09:BC37: C9 00     CMP #$00
C - - - - - 0x027C49 09:BC39: D0 18     BNE bra_BC53
C - - - - - 0x027C4B 09:BC3B: A9 00     LDA #$00
C - - - - - 0x027C4D 09:BC3D: A0 08     LDY #$08
C - - - - - 0x027C4F 09:BC3F: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x027C52 09:BC42: F0 0F     BEQ bra_BC53
C - - - - - 0x027C54 09:BC44: FE C1 05  INC ram_05C1_obj,X
C - - - - - 0x027C57 09:BC47: A9 0E     LDA #con_obj_type_0E
C - - - - - 0x027C59 09:BC49: A0 08     LDY #$08
C - - - - - 0x027C5B 09:BC4B: 20 5C EF  JSR sub_0x03EF6C_prepare_animation
C - - - - - 0x027C5E 09:BC4E: A9 40     LDA #con_obj_flag_40
C - - - - - 0x027C60 09:BC50: 9D 70 04  STA ram_obj_flags,X
bra_BC53:
C - - - - - 0x027C63 09:BC53: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x027C66 09:BC56: C9 06     CMP #$06
C - - - - - 0x027C68 09:BC58: D0 2A     BNE bra_BC84
C - - - - - 0x027C6A 09:BC5A: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x027C6D 09:BC5D: B9 13 BD  LDA tbl_BD13,Y
C - - - - - 0x027C70 09:BC60: 49 FF     EOR #$FF
C - - - - - 0x027C72 09:BC62: 2D ED 07  AND ram_07ED
C - - - - - 0x027C75 09:BC65: 8D ED 07  STA ram_07ED
C - - - - - 0x027C78 09:BC68: D0 18     BNE bra_BC82
C - - - - - 0x027C7A 09:BC6A: A9 61     LDA #con_music_61
C - - - - - 0x027C7C 09:BC6C: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x027C7F 09:BC6F: EE EC 07  INC ram_07EC
C - - - - - 0x027C82 09:BC72: A9 80     LDA #$80
C - - - - - 0x027C84 09:BC74: 8D F3 07  STA ram_07F3
C - - - - - 0x027C87 09:BC77: A9 00     LDA #$00
C - - - - - 0x027C89 09:BC79: 8D EE 07  STA ram_07EE
C - - - - - 0x027C8C 09:BC7C: 8D EF 07  STA ram_07EF
C - - - - - 0x027C8F 09:BC7F: 20 6B BF  JSR sub_BF6B_bg_and_spr_palette
bra_BC82:
C - - - - - 0x027C92 09:BC82: 38        SEC
C - - - - - 0x027C93 09:BC83: 60        RTS
bra_BC84:
C - - - - - 0x027C94 09:BC84: 18        CLC
C - - - - - 0x027C95 09:BC85: 60        RTS



sub_BC86:
; bzk optimize, use stack instead of temp 0000 and 0001
C - - - - - 0x027C96 09:BC86: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x027C99 09:BC89: 0A        ASL
C - - - - - 0x027C9A 09:BC8A: A8        TAY
C - - - - - 0x027C9B 09:BC8B: B9 3B BD  LDA tbl_BD3B_position_hi,Y
C - - - - - 0x027C9E 09:BC8E: 85 00     STA ram_0000_temp
C - - - - - 0x027CA0 09:BC90: B9 3C BD  LDA tbl_BD3B_position_hi + $01,Y
C - - - - - 0x027CA3 09:BC93: 85 01     STA ram_0001_temp
C - - - - - 0x027CA5 09:BC95: BC D8 05  LDY ram_05D8_obj,X
C - - - - - 0x027CA8 09:BC98: B9 38 04  LDA ram_obj_pos_X_hi,Y
C - - - - - 0x027CAB 09:BC9B: 18        CLC
C - - - - - 0x027CAC 09:BC9C: 65 00     ADC ram_0000_temp
C - - - - - 0x027CAE 09:BC9E: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x027CB1 09:BCA1: B9 1C 04  LDA ram_obj_pos_Y_hi,Y
C - - - - - 0x027CB4 09:BCA4: 18        CLC
C - - - - - 0x027CB5 09:BCA5: 65 01     ADC ram_0001_temp
C - - - - - 0x027CB7 09:BCA7: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x027CBA 09:BCAA: 60        RTS



sub_BCAB:
C - - - - - 0x027CBB 09:BCAB: BC 06 06  LDY ram_obj_config,X
C - - - - - 0x027CBE 09:BCAE: B9 4D BD  LDA tbl_BD4D_facing,Y
C - - - - - 0x027CC1 09:BCB1: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x027CC4 09:BCB4: B9 47 BD  LDA tbl_BD47_animation,Y
C - - - - - 0x027CC7 09:BCB7: 60        RTS



ofs_042_BCB8_29:
C - - J - - 0x027CC8 09:BCB8: AC F3 07  LDY ram_07F3
C - - - - - 0x027CCB 09:BCBB: 88        DEY
C - - - - - 0x027CCC 09:BCBC: D0 07     BNE bra_BCC5
- - - - - - 0x027CCE 09:BCBE: AD EC 07  LDA ram_07EC
- - - - - - 0x027CD1 09:BCC1: C9 02     CMP #$02
- - - - - - 0x027CD3 09:BCC3: F0 28     BEQ bra_BCED
bra_BCC5:
C - - - - - 0x027CD5 09:BCC5: A9 30     LDA #$30
C - - - - - 0x027CD7 09:BCC7: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x027CDA 09:BCCA: AC EC 07  LDY ram_07EC
C - - - - - 0x027CDD 09:BCCD: 88        DEY
C - - - - - 0x027CDE 09:BCCE: F0 20     BEQ bra_BCF0
- - - - - - 0x027CE0 09:BCD0: BD 1C 04  LDA ram_obj_pos_Y_hi,X
- - - - - - 0x027CE3 09:BCD3: 20 E1 BC  JSR sub_BCE1
- - - - - - 0x027CE6 09:BCD6: B0 15     BCS bra_BCED
- - - - - - 0x027CE8 09:BCD8: BD 38 04  LDA ram_obj_pos_X_hi,X
- - - - - - 0x027CEB 09:BCDB: 20 E1 BC  JSR sub_BCE1
- - - - - - 0x027CEE 09:BCDE: B0 0D     BCS bra_BCED
- - - - - - 0x027CF0 09:BCE0: 60        RTS
sub_BCE1:
- - - - - - 0x027CF1 09:BCE1: 29 F8     AND #$F8
- - - - - - 0x027CF3 09:BCE3: F0 06     BEQ bra_BCEB
- - - - - - 0x027CF5 09:BCE5: C9 F8     CMP #$F8
- - - - - - 0x027CF7 09:BCE7: F0 02     BEQ bra_BCEB
- - - - - - 0x027CF9 09:BCE9: 18        CLC
- - - - - - 0x027CFA 09:BCEA: 60        RTS
bra_BCEB:
- - - - - - 0x027CFB 09:BCEB: 38        SEC
- - - - - - 0x027CFC 09:BCEC: 60        RTS
bra_BCED:
- - - - - - 0x027CFD 09:BCED: 4C 3A 87  JMP loc_873A_clear_object_data
bra_BCF0:
C - - - - - 0x027D00 09:BCF0: BD C1 05  LDA ram_05C1_obj,X
C - - - - - 0x027D03 09:BCF3: C9 05     CMP #$05
C - - - - - 0x027D05 09:BCF5: D0 1B     BNE bra_BD12_RTS
C - - - - - 0x027D07 09:BCF7: A9 00     LDA #$00
C - - - - - 0x027D09 09:BCF9: A0 08     LDY #$08
C - - - - - 0x027D0B 09:BCFB: 20 1E FC  JSR sub_0x03FC2E
C - - - - - 0x027D0E 09:BCFE: F0 12     BEQ bra_BD12_RTS
C - - - - - 0x027D10 09:BD00: A9 0A     LDA #con_sound_0A
C - - - - - 0x027D12 09:BD02: 20 5F E2  JSR sub_0x03E26F_play_sound
C - - - - - 0x027D15 09:BD05: BD 1C 04  LDA ram_obj_pos_Y_hi,X
C - - - - - 0x027D18 09:BD08: 29 F0     AND #$F0
C - - - - - 0x027D1A 09:BD0A: 09 08     ORA #$08
C - - - - - 0x027D1C 09:BD0C: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x027D1F 09:BD0F: FE C1 05  INC ram_05C1_obj,X
bra_BD12_RTS:
C - - - - - 0x027D22 09:BD12: 60        RTS



tbl_BD13:
- D 1 - - - 0x027D23 09:BD13: 01        .byte $01   ; 00 
- D 1 - - - 0x027D24 09:BD14: 02        .byte $02   ; 01 
- D 1 - - - 0x027D25 09:BD15: 04        .byte $04   ; 02 
- D 1 - - - 0x027D26 09:BD16: 08        .byte $08   ; 03 
- D 1 - - - 0x027D27 09:BD17: 10        .byte $10   ; 04 
- D 1 - - - 0x027D28 09:BD18: 20        .byte $20   ; 05 
- - - - - - 0x027D29 09:BD19: 40        .byte $40   ; 06 
- - - - - - 0x027D2A 09:BD1A: 80        .byte $80   ; 07 



tbl_BD1B_pos_X_hi:
- D 1 - - - 0x027D2B 09:BD1B: 80        .byte $80   ; 00 
- D 1 - - - 0x027D2C 09:BD1C: D0        .byte $D0   ; 01 
- D 1 - - - 0x027D2D 09:BD1D: 30        .byte $30   ; 02 
- D 1 - - - 0x027D2E 09:BD1E: FF        .byte $FF   ; 03 



tbl_BD1F:
;                                              +---------- 
;                                              |    +----- 
;                                              |    |
- D 1 - - - 0x027D2F 09:BD1F: 80        .byte $80, $00   ; 00 
- D 1 - - - 0x027D31 09:BD21: 00        .byte $00, $01   ; 10 
- D 1 - - - 0x027D33 09:BD23: 00        .byte $00, $01   ; 20 
- D 1 - - - 0x027D35 09:BD25: C0        .byte $C0, $00   ; 30 



tbl_BD27_spd_Y:
- D 1 - - - 0x027D37 09:BD27: E0 FF     .word $FFE0 ; 00 
- D 1 - - - 0x027D39 09:BD29: 20 00     .word $0020 ; 01 
- D 1 - - - 0x027D3B 09:BD2B: C0 FF     .word $FFC0 ; 02 
- D 1 - - - 0x027D3D 09:BD2D: 40 00     .word $0040 ; 03 



tbl_BD2F_spd_X:
- D 1 - - - 0x027D3F 09:BD2F: 00 FF     .word $FF00 ; 00 
- D 1 - - - 0x027D41 09:BD31: 80 00     .word $0080 ; 01 
- D 1 - - - 0x027D43 09:BD33: 80 FF     .word $FF80 ; 02 
- D 1 - - - 0x027D45 09:BD35: 00 FF     .word $FF00 ; 03 
- D 1 - - - 0x027D47 09:BD37: 20 01     .word $0120 ; 04 
- D 1 - - - 0x027D49 09:BD39: E0 FE     .word $FEE0 ; 05 



tbl_BD3B_position_hi:
;                                              +---------- pos_X_hi
;                                              |    +----- pos_Y_hi
;                                              |    |
- - - - - - 0x027D4B 09:BD3B: 00        .byte $00, $00   ; 00 
- D 1 - - - 0x027D4D 09:BD3D: F0        .byte $F0, $08   ; 01 
- D 1 - - - 0x027D4F 09:BD3F: F8        .byte $F8, $28   ; 02 
- D 1 - - - 0x027D51 09:BD41: 00        .byte $00, $18   ; 03 
- D 1 - - - 0x027D53 09:BD43: 10        .byte $10, $08   ; 04 
- D 1 - - - 0x027D55 09:BD45: 08        .byte $08, $28   ; 05 



tbl_BD47_animation:
- - - - - - 0x027D57 09:BD47: D2        .byte $D2   ; 00 
- D 1 - - - 0x027D58 09:BD48: C0        .byte $C0   ; 01 
- D 1 - - - 0x027D59 09:BD49: C6        .byte $C6   ; 02 
- D 1 - - - 0x027D5A 09:BD4A: CC        .byte $CC   ; 03 
- D 1 - - - 0x027D5B 09:BD4B: C0        .byte $C0   ; 04 
- D 1 - - - 0x027D5C 09:BD4C: C6        .byte $C6   ; 05 



tbl_BD4D_facing:
; 00 = facing right
; 01 = facing left
- - - - - - 0x027D5D 09:BD4D: 00        .byte $00   ; 00 
- D 1 - - - 0x027D5E 09:BD4E: 01        .byte $01   ; 01 
- D 1 - - - 0x027D5F 09:BD4F: 01        .byte $01   ; 02 
- D 1 - - - 0x027D60 09:BD50: 00        .byte $00   ; 03 
- D 1 - - - 0x027D61 09:BD51: 00        .byte $00   ; 04 
- D 1 - - - 0x027D62 09:BD52: 00        .byte $00   ; 05 



tbl_BD53:
;                                              +---------- ram_obj_0634
;                                              |    +----- ram_061D_plr
;                                              |    |
- D 1 - - - 0x027D63 09:BD53: 60        .byte $60, $00   ; 00 
- D 1 - - - 0x027D65 09:BD55: 20        .byte $20, $00   ; 01 
- D 1 - - - 0x027D67 09:BD57: 40        .byte $40, $00   ; 02 
- D 1 - - - 0x027D69 09:BD59: 70        .byte $70, $00   ; 03 


; bzk garbage 0x027BAB
- - - - - - 0x027D6B 09:BD5B: 80        .byte $80, $00   ; 04 
- - - - - - 0x027D6D 09:BD5D: 30        .byte $30, $00   ; 05 



loc_BD5F:
C D 1 - - - 0x027D6F 09:BD5F: AD F3 07  LDA ram_07F3
C - - - - - 0x027D72 09:BD62: 29 80     AND #$80
C - - - - - 0x027D74 09:BD64: D0 03     BNE bra_BD69
C - - - - - 0x027D76 09:BD66: 4C 67 BE  JMP loc_BE67
bra_BD69:
C - - - - - 0x027D79 09:BD69: A9 88     LDA #con_obj_flag_08 + con_obj_flag_not_visible
C - - - - - 0x027D7B 09:BD6B: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x027D7E 09:BD6E: AD ED 07  LDA ram_07ED
C - - - - - 0x027D81 09:BD71: C9 0E     CMP #$0E
C - - - - - 0x027D83 09:BD73: B0 69     BCS bra_BDDE
C - - - - - 0x027D85 09:BD75: A9 02     LDA #$02
C - - - - - 0x027D87 09:BD77: 85 04     STA ram_0004_temp
C - - - - - 0x027D89 09:BD79: 86 16     STX ram_0016_temp
bra_BD7B_loop:
C - - - - - 0x027D8B 09:BD7B: A9 00     LDA #$00
C - - - - - 0x027D8D 09:BD7D: 85 00     STA ram_0000_temp
C - - - - - 0x027D8F 09:BD7F: 85 62     STA ram_ppu_address_hi
C - - - - - 0x027D91 09:BD81: AD ED 07  LDA ram_07ED
C - - - - - 0x027D94 09:BD84: A0 05     LDY #$05
bra_BD86_loop:
C - - - - - 0x027D96 09:BD86: 0A        ASL
C - - - - - 0x027D97 09:BD87: 26 62     ROL ram_ppu_address_hi
C - - - - - 0x027D99 09:BD89: 88        DEY
C - - - - - 0x027D9A 09:BD8A: D0 FA     BNE bra_BD86_loop
C - - - - - 0x027D9C 09:BD8C: 18        CLC
C - - - - - 0x027D9D 09:BD8D: 69 4A     ADC #< $214A
C - - - - - 0x027D9F 09:BD8F: 85 61     STA ram_ppu_address_lo
C - - - - - 0x027DA1 09:BD91: A5 62     LDA ram_ppu_address_hi
C - - - - - 0x027DA3 09:BD93: 69 21     ADC #> $214A
C - - - - - 0x027DA5 09:BD95: 85 62     STA ram_ppu_address_hi
C - - - - - 0x027DA7 09:BD97: 20 B5 E8  JSR sub_0x03E8C5_set_buffer_mode_01
C - - - - - 0x027DAA 09:BD9A: AC EE 07  LDY ram_07EE
bra_BD9D_loop:
C - - - - - 0x027DAD 09:BD9D: B9 6E BF  LDA tbl_BF6E,Y
C - - - - - 0x027DB0 09:BDA0: C9 C0     CMP #$C0
C - - - - - 0x027DB2 09:BDA2: 90 0F     BCC bra_BDB3
C - - - - - 0x027DB4 09:BDA4: 29 0F     AND #$0F
; A = 02-04
C - - - - - 0x027DB6 09:BDA6: 85 03     STA ram_0003_temp
C - - - - - 0x027DB8 09:BDA8: A9 00     LDA #$00
bra_BDAA_loop:
C - - - - - 0x027DBA 09:BDAA: 20 66 BF  JSR sub_BF66
C - - - - - 0x027DBD 09:BDAD: C6 03     DEC ram_0003_temp
C - - - - - 0x027DBF 09:BDAF: D0 F9     BNE bra_BDAA_loop
C - - - - - 0x027DC1 09:BDB1: F0 03     BEQ bra_BDB6    ; jmp
bra_BDB3:
C - - - - - 0x027DC3 09:BDB3: 20 66 BF  JSR sub_BF66
bra_BDB6:
C - - - - - 0x027DC6 09:BDB6: C8        INY
C - - - - - 0x027DC7 09:BDB7: A5 00     LDA ram_0000_temp
C - - - - - 0x027DC9 09:BDB9: C9 0C     CMP #$0C
C - - - - - 0x027DCB 09:BDBB: D0 E0     BNE bra_BD9D_loop
C - - - - - 0x027DCD 09:BDBD: 8C EE 07  STY ram_07EE
C - - - - - 0x027DD0 09:BDC0: EE ED 07  INC ram_07ED
C - - - - - 0x027DD3 09:BDC3: 20 12 ED  JSR sub_0x03ED22_close_buffer
C - - - - - 0x027DD6 09:BDC6: C6 04     DEC ram_0004_temp
C - - - - - 0x027DD8 09:BDC8: D0 B1     BNE bra_BD7B_loop
C - - - - - 0x027DDA 09:BDCA: AD ED 07  LDA ram_07ED
C - - - - - 0x027DDD 09:BDCD: C9 0E     CMP #$0E
C - - - - - 0x027DDF 09:BDCF: 90 0A     BCC bra_BDDB
C - - - - - 0x027DE1 09:BDD1: A9 00     LDA #$00
C - - - - - 0x027DE3 09:BDD3: 8D EE 07  STA ram_07EE
C - - - - - 0x027DE6 09:BDD6: A9 08     LDA #$08
C - - - - - 0x027DE8 09:BDD8: 8D EF 07  STA ram_07EF
bra_BDDB:
C - - - - - 0x027DEB 09:BDDB: A6 16     LDX ram_0016_temp
C - - - - - 0x027DED 09:BDDD: 60        RTS
bra_BDDE:
C - - - - - 0x027DEE 09:BDDE: CE EF 07  DEC ram_07EF
C - - - - - 0x027DF1 09:BDE1: D0 18     BNE bra_BDFB_RTS
C - - - - - 0x027DF3 09:BDE3: AD EE 07  LDA ram_07EE
C - - - - - 0x027DF6 09:BDE6: 20 6B BF  JSR sub_BF6B_bg_and_spr_palette
C - - - - - 0x027DF9 09:BDE9: AD EE 07  LDA ram_07EE
C - - - - - 0x027DFC 09:BDEC: 18        CLC
C - - - - - 0x027DFD 09:BDED: 69 08     ADC #$08
C - - - - - 0x027DFF 09:BDEF: C9 20     CMP #$20
C - - - - - 0x027E01 09:BDF1: B0 09     BCS bra_BDFC
C - - - - - 0x027E03 09:BDF3: 8D EE 07  STA ram_07EE
C - - - - - 0x027E06 09:BDF6: A9 08     LDA #$08
C - - - - - 0x027E08 09:BDF8: 8D EF 07  STA ram_07EF
bra_BDFB_RTS:
C - - - - - 0x027E0B 09:BDFB: 60        RTS
bra_BDFC:
C - - - - - 0x027E0C 09:BDFC: A9 31     LDA #con__chr_bank + $31
C - - - - - 0x027E0E 09:BDFE: 85 49     STA ram_chr_bank_5123
C - - - - - 0x027E10 09:BE00: 20 3C E3  JSR sub_0x03E34C
C - - - - - 0x027E13 09:BE03: A9 00     LDA #$00
C - - - - - 0x027E15 09:BE05: 8D F3 07  STA ram_07F3
C - - - - - 0x027E18 09:BE08: 8D F1 07  STA ram_07F1
C - - - - - 0x027E1B 09:BE0B: 8D F0 07  STA ram_07F0
C - - - - - 0x027E1E 09:BE0E: 8D EE 07  STA ram_07EE
C - - - - - 0x027E21 09:BE11: 8D ED 07  STA ram_07ED
C - - - - - 0x027E24 09:BE14: 9D 06 06  STA ram_obj_config,X
C - - - - - 0x027E27 09:BE17: A9 88     LDA #con_obj_flag_08 + con_obj_flag_not_visible
C - - - - - 0x027E29 09:BE19: 9D 70 04  STA ram_obj_flags,X
C - - - - - 0x027E2C 09:BE1C: A9 80     LDA #$80
C - - - - - 0x027E2E 09:BE1E: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x027E31 09:BE21: A9 60     LDA #$60
C - - - - - 0x027E33 09:BE23: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x027E36 09:BE26: A9 40     LDA #$40
C - - - - - 0x027E38 09:BE28: 85 3D     STA ram_hp_boss
C - - - - - 0x027E3A 09:BE2A: 9D 7B 06  STA ram_obj_hp,X
C - - - - - 0x027E3D 09:BE2D: A9 0D     LDA #$0D
C - - - - - 0x027E3F 09:BE2F: 20 66 87  JSR sub_8766
C - - - - - 0x027E42 09:BE32: A9 01     LDA #$01
C - - - - - 0x027E44 09:BE34: 99 06 06  STA ram_obj_config,Y
C - - - - - 0x027E47 09:BE37: 85 17     STA ram_0017_temp
C - - - - - 0x027E49 09:BE39: A9 88     LDA #con_obj_flag_08 + con_obj_flag_not_visible
C - - - - - 0x027E4B 09:BE3B: 99 70 04  STA ram_obj_flags,Y
bra_BE3E_loop:
C - - - - - 0x027E4E 09:BE3E: A9 8A     LDA #$8A
C - - - - - 0x027E50 09:BE40: 20 66 87  JSR sub_8766
C - - - - - 0x027E53 09:BE43: A9 80     LDA #$80
C - - - - - 0x027E55 09:BE45: 99 EF 05  STA ram_05EF_obj,Y
C - - - - - 0x027E58 09:BE48: A9 00     LDA #$00
C - - - - - 0x027E5A 09:BE4A: 99 C1 05  STA ram_05C1_obj,Y
C - - - - - 0x027E5D 09:BE4D: 99 45 06  STA ram_obj_0646,Y
C - - - - - 0x027E60 09:BE50: A5 17     LDA ram_0017_temp
C - - - - - 0x027E62 09:BE52: F0 02     BEQ bra_BE56
C - - - - - 0x027E64 09:BE54: A9 04     LDA #$04
bra_BE56:
C - - - - - 0x027E66 09:BE56: 99 33 06  STA ram_obj_0634,Y
C - - - - - 0x027E69 09:BE59: A9 60     LDA #con_obj_flag_20 + con_obj_flag_40
C - - - - - 0x027E6B 09:BE5B: 99 70 04  STA ram_obj_flags,Y
C - - - - - 0x027E6E 09:BE5E: C6 17     DEC ram_0017_temp
C - - - - - 0x027E70 09:BE60: 10 DC     BPL bra_BE3E_loop
C - - - - - 0x027E72 09:BE62: 60        RTS


; bzk garbage
- - - - - - 0x027E73 09:BE63: CE EF 07  DEC ram_07EF
- - - - - - 0x027E76 09:BE66: 60        RTS



loc_BE67:
C D 1 - - - 0x027E77 09:BE67: BD 06 06  LDA ram_obj_config,X
C - - - - - 0x027E7A 09:BE6A: F0 69     BEQ bra_BED5
C - - - - - 0x027E7C 09:BE6C: A9 00     LDA #$00
C - - - - - 0x027E7E 09:BE6E: 9D 57 06  STA ram_obj_0658,X
C - - - - - 0x027E81 09:BE71: AD F3 07  LDA ram_07F3
C - - - - - 0x027E84 09:BE74: D0 56     BNE bra_BECC
C - - - - - 0x027E86 09:BE76: 20 ED BB  JSR sub_BBED
C - - - - - 0x027E89 09:BE79: D0 51     BNE bra_BECC
C - - - - - 0x027E8B 09:BE7B: A9 00     LDA #$00    ; facing right
C - - - - - 0x027E8D 09:BE7D: 9D A8 04  STA ram_obj_facing,X
C - - - - - 0x027E90 09:BE80: AC F1 07  LDY ram_07F1
C - - - - - 0x027E93 09:BE83: B9 55 BF  LDA tbl_BF55,Y
C - - - - - 0x027E96 09:BE86: C9 01     CMP #$01
C - - - - - 0x027E98 09:BE88: D0 03     BNE bra_BE8D
; A = 01 (facing left)
C - - - - - 0x027E9A 09:BE8A: 9D A8 04  STA ram_obj_facing,X
bra_BE8D:
C - - - - - 0x027E9D 09:BE8D: A8        TAY
C - - - - - 0x027E9E 09:BE8E: B9 5D BF  LDA tbl_BF5D_pos_X_hi,Y
C - - - - - 0x027EA1 09:BE91: 85 10     STA ram_0010_temp
C - - - - - 0x027EA3 09:BE93: B9 60 BF  LDA tbl_BF60_pos_Y_hi,Y
C - - - - - 0x027EA6 09:BE96: 85 11     STA ram_0011_temp
C - - - - - 0x027EA8 09:BE98: B9 63 BF  LDA tbl_BF63,Y
C - - - - - 0x027EAB 09:BE9B: 20 CB BB  JSR sub_BBCB
C - - - - - 0x027EAE 09:BE9E: A9 E0     LDA #$E0
C - - - - - 0x027EB0 09:BEA0: 9D EF 05  STA ram_05EF_obj,X
C - - - - - 0x027EB3 09:BEA3: A9 00     LDA #$00
C - - - - - 0x027EB5 09:BEA5: 9D C1 05  STA ram_05C1_obj,X
C - - - - - 0x027EB8 09:BEA8: A5 10     LDA ram_0010_temp
C - - - - - 0x027EBA 09:BEAA: 9D 38 04  STA ram_obj_pos_X_hi,X
C - - - - - 0x027EBD 09:BEAD: A5 11     LDA ram_0011_temp
C - - - - - 0x027EBF 09:BEAF: 9D 1C 04  STA ram_obj_pos_Y_hi,X
C - - - - - 0x027EC2 09:BEB2: EE F1 07  INC ram_07F1
C - - - - - 0x027EC5 09:BEB5: AD F1 07  LDA ram_07F1
C - - - - - 0x027EC8 09:BEB8: 29 07     AND #$07
C - - - - - 0x027ECA 09:BEBA: 8D F1 07  STA ram_07F1
C - - - - - 0x027ECD 09:BEBD: A9 C0     LDA #$C0
C - - - - - 0x027ECF 09:BEBF: 9D 33 06  STA ram_obj_0634,X
C - - - - - 0x027ED2 09:BEC2: A9 00     LDA #$00
C - - - - - 0x027ED4 09:BEC4: 9D 1D 06  STA ram_061D_obj,X
C - - - - - 0x027ED7 09:BEC7: A9 20     LDA #con_obj_flag_20
C - - - - - 0x027ED9 09:BEC9: 9D 70 04  STA ram_obj_flags,X
bra_BECC:
C - - - - - 0x027EDC 09:BECC: AC F3 07  LDY ram_07F3
C - - - - - 0x027EDF 09:BECF: 88        DEY
C - - - - - 0x027EE0 09:BED0: D0 24     BNE bra_BEF6_RTS
C - - - - - 0x027EE2 09:BED2: 4C 3A 87  JMP loc_873A_clear_object_data
bra_BED5:
C - - - - - 0x027EE5 09:BED5: AC F3 07  LDY ram_07F3
C - - - - - 0x027EE8 09:BED8: 88        DEY
C - - - - - 0x027EE9 09:BED9: D0 32     BNE bra_BF0D
C - - - - - 0x027EEB 09:BEDB: CE EF 07  DEC ram_07EF
C - - - - - 0x027EEE 09:BEDE: D0 16     BNE bra_BEF6_RTS
C - - - - - 0x027EF0 09:BEE0: AD EE 07  LDA ram_07EE
; A = 00 08 10 18
C - - - - - 0x027EF3 09:BEE3: 20 6B BF  JSR sub_BF6B_bg_and_spr_palette
C - - - - - 0x027EF6 09:BEE6: AD EE 07  LDA ram_07EE
C - - - - - 0x027EF9 09:BEE9: 38        SEC
C - - - - - 0x027EFA 09:BEEA: E9 08     SBC #$08
C - - - - - 0x027EFC 09:BEEC: 90 09     BCC bra_BEF7
C - - - - - 0x027EFE 09:BEEE: 8D EE 07  STA ram_07EE
C - - - - - 0x027F01 09:BEF1: A9 08     LDA #$08
C - - - - - 0x027F03 09:BEF3: 8D EF 07  STA ram_07EF
bra_BEF6_RTS:
C - - - - - 0x027F06 09:BEF6: 60        RTS
bra_BEF7:
C - - - - - 0x027F07 09:BEF7: AD F0 07  LDA ram_07F0
C - - - - - 0x027F0A 09:BEFA: C9 02     CMP #$02
C - - - - - 0x027F0C 09:BEFC: D0 56     BNE bra_BF54_RTS
C - - - - - 0x027F0E 09:BEFE: A9 80     LDA #$80    ; 8000
C - - - - - 0x027F10 09:BF00: 20 61 86  JSR sub_8661_add_points_to_score
C - - - - - 0x027F13 09:BF03: A9 02     LDA #$02
C - - - - - 0x027F15 09:BF05: 8D F3 07  STA ram_07F3
C - - - - - 0x027F18 09:BF08: A9 00     LDA #$00
C - - - - - 0x027F1A 09:BF0A: 4C F4 87  JMP loc_87F4
bra_BF0D:
C - - - - - 0x027F1D 09:BF0D: BD 1D 06  LDA ram_061D_obj,X
C - - - - - 0x027F20 09:BF10: F0 17     BEQ bra_BF29
C - - - - - 0x027F22 09:BF12: 29 04     AND #$04
C - - - - - 0x027F24 09:BF14: F0 04     BEQ bra_BF1A
C - - - - - 0x027F26 09:BF16: A9 28     LDA #$28
C - - - - - 0x027F28 09:BF18: D0 02     BNE bra_BF1C    ; jmp
bra_BF1A:
C - - - - - 0x027F2A 09:BF1A: A9 20     LDA #$20
bra_BF1C:
C - - - - - 0x027F2C 09:BF1C: DE 1D 06  DEC ram_061D_obj,X
C - - - - - 0x027F2F 09:BF1F: D0 02     BNE bra_BF23
C - - - - - 0x027F31 09:BF21: A9 18     LDA #$18
bra_BF23:
C - - - - - 0x027F33 09:BF23: 20 6B BF  JSR sub_BF6B_bg_and_spr_palette
C - - - - - 0x027F36 09:BF26: 4C 4C BF  JMP loc_BF4C
bra_BF29:
C - - - - - 0x027F39 09:BF29: A9 03     LDA #$03
C - - - - - 0x027F3B 09:BF2B: 20 E0 88  JSR sub_88E0
C - - - - - 0x027F3E 09:BF2E: A9 00     LDA #$00
C - - - - - 0x027F40 09:BF30: 20 F4 87  JSR sub_87F4
C - - - - - 0x027F43 09:BF33: AD F3 07  LDA ram_07F3
C - - - - - 0x027F46 09:BF36: F0 0A     BEQ bra_BF42
C - - - - - 0x027F48 09:BF38: A9 18     LDA #$18
C - - - - - 0x027F4A 09:BF3A: 8D EE 07  STA ram_07EE
C - - - - - 0x027F4D 09:BF3D: A9 01     LDA #$01
C - - - - - 0x027F4F 09:BF3F: 8D EF 07  STA ram_07EF
bra_BF42:
C - - - - - 0x027F52 09:BF42: BD 69 06  LDA ram_obj_066A,X
C - - - - - 0x027F55 09:BF45: F0 05     BEQ bra_BF4C
C - - - - - 0x027F57 09:BF47: A9 20     LDA #$20
C - - - - - 0x027F59 09:BF49: 9D 1D 06  STA ram_061D_obj,X
bra_BF4C:
loc_BF4C:
C D 1 - - - 0x027F5C 09:BF4C: A9 00     LDA #$00
C - - - - - 0x027F5E 09:BF4E: 9D 69 06  STA ram_obj_066A,X
C - - - - - 0x027F61 09:BF51: 9D 57 06  STA ram_obj_0658,X
bra_BF54_RTS:
C - - - - - 0x027F64 09:BF54: 60        RTS



tbl_BF55:
- D 1 - - - 0x027F65 09:BF55: 00        .byte $00   ; 00 
- D 1 - - - 0x027F66 09:BF56: 01        .byte $01   ; 01 
- D 1 - - - 0x027F67 09:BF57: 02        .byte $02   ; 02 
- D 1 - - - 0x027F68 09:BF58: 01        .byte $01   ; 03 
- D 1 - - - 0x027F69 09:BF59: 00        .byte $00   ; 04 
- D 1 - - - 0x027F6A 09:BF5A: 02        .byte $02   ; 05 
- D 1 - - - 0x027F6B 09:BF5B: 01        .byte $01   ; 06 
- D 1 - - - 0x027F6C 09:BF5C: 02        .byte $02   ; 07 



tbl_BF5D_pos_X_hi:
- D 1 - - - 0x027F6D 09:BF5D: 80        .byte $80   ; 00 
- D 1 - - - 0x027F6E 09:BF5E: 60        .byte $60   ; 01 
- D 1 - - - 0x027F6F 09:BF5F: A0        .byte $A0   ; 02 



tbl_BF60_pos_Y_hi:
- D 1 - - - 0x027F70 09:BF60: 60        .byte $60   ; 00 
- D 1 - - - 0x027F71 09:BF61: 8C        .byte $8C   ; 01 
- D 1 - - - 0x027F72 09:BF62: 8C        .byte $8C   ; 02 



tbl_BF63:
- D 1 - - - 0x027F73 09:BF63: E4        .byte $E4   ; 00 
- D 1 - - - 0x027F74 09:BF64: E0        .byte $E0   ; 01 
- D 1 - - - 0x027F75 09:BF65: E0        .byte $E0   ; 02 



sub_BF66:
C - - - - - 0x027F76 09:BF66: E6 00     INC ram_0000_temp
C - - - - - 0x027F78 09:BF68: 4C 16 ED  JMP loc_0x03ED26_write_byte_to_buffer_X



sub_BF6B_bg_and_spr_palette:
; bzk optimize
C - - - - - 0x027F7B 09:BF6B: 4C A0 E5  JMP loc_0x03E5B0_bg_and_spr_palette



tbl_BF6E:
;                                              +----------- 00/C0 flag
;                                              |     +----- ??? / 02-04 if C0 is set
;                                              |     |
- D 1 - - - 0x027F7E 09:BF6E: 40        .byte $00 + $40   ; 00 
- D 1 - - - 0x027F7F 09:BF6F: 53        .byte $00 + $53   ; 01 
- D 1 - - - 0x027F80 09:BF70: C3        .byte $C0 + $03   ; 02 
- D 1 - - - 0x027F81 09:BF71: 41        .byte $00 + $41   ; 03 
- D 1 - - - 0x027F82 09:BF72: 42        .byte $00 + $42   ; 04 
- D 1 - - - 0x027F83 09:BF73: C3        .byte $C0 + $03   ; 05 
- D 1 - - - 0x027F84 09:BF74: 8E        .byte $00 + $8E   ; 06 
- D 1 - - - 0x027F85 09:BF75: 7A        .byte $00 + $7A   ; 07 
- D 1 - - - 0x027F86 09:BF76: 50        .byte $00 + $50   ; 08 
- D 1 - - - 0x027F87 09:BF77: 4A        .byte $00 + $4A   ; 09 
- D 1 - - - 0x027F88 09:BF78: 6C        .byte $00 + $6C   ; 0A 
- D 1 - - - 0x027F89 09:BF79: C2        .byte $C0 + $02   ; 0B 
- D 1 - - - 0x027F8A 09:BF7A: 51        .byte $00 + $51   ; 0C 
- D 1 - - - 0x027F8B 09:BF7B: 52        .byte $00 + $52   ; 0D 
- D 1 - - - 0x027F8C 09:BF7C: C2        .byte $C0 + $02   ; 0E 
- D 1 - - - 0x027F8D 09:BF7D: 80        .byte $00 + $80   ; 0F 
- D 1 - - - 0x027F8E 09:BF7E: 9E        .byte $00 + $9E   ; 10 
- D 1 - - - 0x027F8F 09:BF7F: 89        .byte $00 + $89   ; 11 
- D 1 - - - 0x027F90 09:BF80: 43        .byte $00 + $43   ; 12 
- D 1 - - - 0x027F91 09:BF81: 4D        .byte $00 + $4D   ; 13 
- D 1 - - - 0x027F92 09:BF82: 7C        .byte $00 + $7C   ; 14 
- D 1 - - - 0x027F93 09:BF83: 6F        .byte $00 + $6F   ; 15 
- D 1 - - - 0x027F94 09:BF84: 60        .byte $00 + $60   ; 16 
- D 1 - - - 0x027F95 09:BF85: 61        .byte $00 + $61   ; 17 
- D 1 - - - 0x027F96 09:BF86: 62        .byte $00 + $62   ; 18 
- D 1 - - - 0x027F97 09:BF87: 63        .byte $00 + $63   ; 19 
- D 1 - - - 0x027F98 09:BF88: 75        .byte $00 + $75   ; 1A 
- D 1 - - - 0x027F99 09:BF89: 98        .byte $00 + $98   ; 1B 
- D 1 - - - 0x027F9A 09:BF8A: 9E        .byte $00 + $9E   ; 1C 
- D 1 - - - 0x027F9B 09:BF8B: 88        .byte $00 + $88   ; 1D 
- D 1 - - - 0x027F9C 09:BF8C: 00        .byte $00 + $00   ; 1E 
- D 1 - - - 0x027F9D 09:BF8D: 5C        .byte $00 + $5C   ; 1F 
- D 1 - - - 0x027F9E 09:BF8E: 5F        .byte $00 + $5F   ; 20 
- D 1 - - - 0x027F9F 09:BF8F: 7F        .byte $00 + $7F   ; 21 
- D 1 - - - 0x027FA0 09:BF90: 70        .byte $00 + $70   ; 22 
- D 1 - - - 0x027FA1 09:BF91: 71        .byte $00 + $71   ; 23 
- D 1 - - - 0x027FA2 09:BF92: 72        .byte $00 + $72   ; 24 
- D 1 - - - 0x027FA3 09:BF93: 73        .byte $00 + $73   ; 25 
- D 1 - - - 0x027FA4 09:BF94: 83        .byte $00 + $83   ; 26 
- D 1 - - - 0x027FA5 09:BF95: 84        .byte $00 + $84   ; 27 
- D 1 - - - 0x027FA6 09:BF96: 96        .byte $00 + $96   ; 28 
- D 1 - - - 0x027FA7 09:BF97: 00        .byte $00 + $00   ; 29 
- D 1 - - - 0x027FA8 09:BF98: 00        .byte $00 + $00   ; 2A 
- D 1 - - - 0x027FA9 09:BF99: 43        .byte $00 + $43   ; 2B 
- D 1 - - - 0x027FAA 09:BF9A: 44        .byte $00 + $44   ; 2C 
- D 1 - - - 0x027FAB 09:BF9B: 45        .byte $00 + $45   ; 2D 
- D 1 - - - 0x027FAC 09:BF9C: 46        .byte $00 + $46   ; 2E 
- D 1 - - - 0x027FAD 09:BF9D: 47        .byte $00 + $47   ; 2F 
- D 1 - - - 0x027FAE 09:BF9E: 48        .byte $00 + $48   ; 30 
- D 1 - - - 0x027FAF 09:BF9F: 49        .byte $00 + $49   ; 31 
- D 1 - - - 0x027FB0 09:BFA0: 00        .byte $00 + $00   ; 32 
- D 1 - - - 0x027FB1 09:BFA1: 4B        .byte $00 + $4B   ; 33 
- D 1 - - - 0x027FB2 09:BFA2: C2        .byte $C0 + $02   ; 34 
- D 1 - - - 0x027FB3 09:BFA3: C2        .byte $C0 + $02   ; 35 
- D 1 - - - 0x027FB4 09:BFA4: 54        .byte $00 + $54   ; 36 
- D 1 - - - 0x027FB5 09:BFA5: 55        .byte $00 + $55   ; 37 
- D 1 - - - 0x027FB6 09:BFA6: 56        .byte $00 + $56   ; 38 
- D 1 - - - 0x027FB7 09:BFA7: 57        .byte $00 + $57   ; 39 
- D 1 - - - 0x027FB8 09:BFA8: 58        .byte $00 + $58   ; 3A 
- D 1 - - - 0x027FB9 09:BFA9: 59        .byte $00 + $59   ; 3B 
- D 1 - - - 0x027FBA 09:BFAA: 5A        .byte $00 + $5A   ; 3C 
- D 1 - - - 0x027FBB 09:BFAB: 5B        .byte $00 + $5B   ; 3D 
- D 1 - - - 0x027FBC 09:BFAC: C2        .byte $C0 + $02   ; 3E 
- D 1 - - - 0x027FBD 09:BFAD: 8A        .byte $00 + $8A   ; 3F 
- D 1 - - - 0x027FBE 09:BFAE: 8B        .byte $00 + $8B   ; 40 
- D 1 - - - 0x027FBF 09:BFAF: 64        .byte $00 + $64   ; 41 
- D 1 - - - 0x027FC0 09:BFB0: 65        .byte $00 + $65   ; 42 
- D 1 - - - 0x027FC1 09:BFB1: 66        .byte $00 + $66   ; 43 
- D 1 - - - 0x027FC2 09:BFB2: 67        .byte $00 + $67   ; 44 
- D 1 - - - 0x027FC3 09:BFB3: 68        .byte $00 + $68   ; 45 
- D 1 - - - 0x027FC4 09:BFB4: 69        .byte $00 + $69   ; 46 
- D 1 - - - 0x027FC5 09:BFB5: 6A        .byte $00 + $6A   ; 47 
- D 1 - - - 0x027FC6 09:BFB6: 6B        .byte $00 + $6B   ; 48 
- D 1 - - - 0x027FC7 09:BFB7: 8C        .byte $00 + $8C   ; 49 
- D 1 - - - 0x027FC8 09:BFB8: 8D        .byte $00 + $8D   ; 4A 
- D 1 - - - 0x027FC9 09:BFB9: 9A        .byte $00 + $9A   ; 4B 
- D 1 - - - 0x027FCA 09:BFBA: 9B        .byte $00 + $9B   ; 4C 
- D 1 - - - 0x027FCB 09:BFBB: 74        .byte $00 + $74   ; 4D 
- D 1 - - - 0x027FCC 09:BFBC: 00        .byte $00 + $00   ; 4E 
- D 1 - - - 0x027FCD 09:BFBD: 76        .byte $00 + $76   ; 4F 
- D 1 - - - 0x027FCE 09:BFBE: 77        .byte $00 + $77   ; 50 
- D 1 - - - 0x027FCF 09:BFBF: 78        .byte $00 + $78   ; 51 
- D 1 - - - 0x027FD0 09:BFC0: 79        .byte $00 + $79   ; 52 
- D 1 - - - 0x027FD1 09:BFC1: 00        .byte $00 + $00   ; 53 
- D 1 - - - 0x027FD2 09:BFC2: 7B        .byte $00 + $7B   ; 54 
- D 1 - - - 0x027FD3 09:BFC3: 9C        .byte $00 + $9C   ; 55 
- D 1 - - - 0x027FD4 09:BFC4: 9D        .byte $00 + $9D   ; 56 
- D 1 - - - 0x027FD5 09:BFC5: C4        .byte $C0 + $04   ; 57 
- D 1 - - - 0x027FD6 09:BFC6: 4E        .byte $00 + $4E   ; 58 
- D 1 - - - 0x027FD7 09:BFC7: 4F        .byte $00 + $4F   ; 59 
- D 1 - - - 0x027FD8 09:BFC8: 88        .byte $00 + $88   ; 5A 
- D 1 - - - 0x027FD9 09:BFC9: 89        .byte $00 + $89   ; 5B 
- D 1 - - - 0x027FDA 09:BFCA: C4        .byte $C0 + $04   ; 5C 
- D 1 - - - 0x027FDB 09:BFCB: C3        .byte $C0 + $03   ; 5D 
- D 1 - - - 0x027FDC 09:BFCC: 5D        .byte $00 + $5D   ; 5E 
- D 1 - - - 0x027FDD 09:BFCD: 5E        .byte $00 + $5E   ; 5F 
- D 1 - - - 0x027FDE 09:BFCE: 4F        .byte $00 + $4F   ; 60 
- D 1 - - - 0x027FDF 09:BFCF: 00        .byte $00 + $00   ; 61 
- D 1 - - - 0x027FE0 09:BFD0: 99        .byte $00 + $99   ; 62 
- D 1 - - - 0x027FE1 09:BFD1: C4        .byte $C0 + $04   ; 63 
- D 1 - - - 0x027FE2 09:BFD2: C3        .byte $C0 + $03   ; 64 
- D 1 - - - 0x027FE3 09:BFD3: 6D        .byte $00 + $6D   ; 65 
- D 1 - - - 0x027FE4 09:BFD4: 6E        .byte $00 + $6E   ; 66 
- D 1 - - - 0x027FE5 09:BFD5: C2        .byte $C0 + $02   ; 67 
- D 1 - - - 0x027FE6 09:BFD6: 87        .byte $00 + $87   ; 68 
- D 1 - - - 0x027FE7 09:BFD7: C4        .byte $C0 + $04   ; 69 
- D 1 - - - 0x027FE8 09:BFD8: C3        .byte $C0 + $03   ; 6A 
- D 1 - - - 0x027FE9 09:BFD9: 7D        .byte $00 + $7D   ; 6B 
- D 1 - - - 0x027FEA 09:BFDA: 7E        .byte $00 + $7E   ; 6C 
- D 1 - - - 0x027FEB 09:BFDB: C2        .byte $C0 + $02   ; 6D 
- D 1 - - - 0x027FEC 09:BFDC: 97        .byte $00 + $97   ; 6E 
- D 1 - - - 0x027FED 09:BFDD: C4        .byte $C0 + $04   ; 6F 
- D 1 - - - 0x027FEE 09:BFDE: C3        .byte $C0 + $03   ; 70 
- D 1 - - - 0x027FEF 09:BFDF: 81        .byte $00 + $81   ; 71 
- D 1 - - - 0x027FF0 09:BFE0: 82        .byte $00 + $82   ; 72 
- D 1 - - - 0x027FF1 09:BFE1: C2        .byte $C0 + $02   ; 73 
- D 1 - - - 0x027FF2 09:BFE2: 85        .byte $00 + $85   ; 74 
- D 1 - - - 0x027FF3 09:BFE3: C4        .byte $C0 + $04   ; 75 
- D 1 - - - 0x027FF4 09:BFE4: C2        .byte $C0 + $02   ; 76 
- D 1 - - - 0x027FF5 09:BFE5: 90        .byte $00 + $90   ; 77 
- D 1 - - - 0x027FF6 09:BFE6: 91        .byte $00 + $91   ; 78 
- D 1 - - - 0x027FF7 09:BFE7: 92        .byte $00 + $92   ; 79 
- D 1 - - - 0x027FF8 09:BFE8: 00        .byte $00 + $00   ; 7A 
- D 1 - - - 0x027FF9 09:BFE9: 94        .byte $00 + $94   ; 7B 
- D 1 - - - 0x027FFA 09:BFEA: 95        .byte $00 + $95   ; 7C 
- D 1 - - - 0x027FFB 09:BFEB: C4        .byte $C0 + $04   ; 7D 


; bzk garbage
- - - - - - 0x027FFC 09:BFEC: FF        .byte $FF, $FF, $FF, $FF   ; 
- - - - - - 0x028000 09:BFF0: FF        .byte $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF   ; 



.out .sprintf("Free bytes in bank 92: 0x%04X [%d]", ($C000 - *), ($C000 - *))



